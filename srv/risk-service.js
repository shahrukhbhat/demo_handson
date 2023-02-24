
const cds = require('@sap/cds')
const axios = require('axios').default
const { retrieveJwt } = require("@sap-cloud-sdk/core");

function getJWT(req) {
    if (typeof req._ !== "undefined") {
        return retrieveJwt(req._.req);
    } else {
        return "";
    }
}

/**
 * Implementation for Risk Management service defined in ./risk-service.cds
 */
module.exports = cds.service.impl(async function () {

    // Using CDS API      
    const ZGWDEMO = await cds.connect.to('ZGWDEMO');

    this.on('READ', 'Suppliers', async req => {

        // var jwt = getJWT(req);

        // const { BusinessPartnerCollection } = ZGWDEMO.entities;

        // const count = await ZGWDEMO.get(`${req._.req.path}/$count`)
        // if (req.query.SELECT.count && !('$count' in result)) {
        //     result.$count = result.length;
        // }
        // const suppliers = await ZGWDEMO.run(SELECT.from('RiskService.Suppliers').columns('ID','fullName').orderBy('ID'));

        // return suppliers;

        return ZGWDEMO.run(req.query);


        // let result = {}
        // // if (req.query.cqn.count) {
        // //     delete req.query.count
        // //     delete req.query.cqn.count
        // //     const queryObject = cqnToQuery(req.query, {
        // //         kind: "odata"
        // //     })
        // //     const count = await ZGWDEMO.tx(req).get("/Suppliers/$count")
        // //     result = await ZGWDEMO.tx(req).get(queryObject.path + "&$inlinecount=allpages")
        // //     req.query.count = true
        // //     req.query.cqn.count = true
        // //     result.$count = count
        // // }
        // // else {
        // result = await ZGWDEMO.tx(req).run(req.query)
        // // }

        // result.map(entity => convertDatesv2Tov4(req, entity))
        // return result;
    });

    this.after('READ', 'Risks', risksData => {
        const risks = Array.isArray(risksData) ? risksData : [risksData];
        risks.forEach(risk => {
            if (risk.impact >= 100000) {
                risk.criticality = 1;
            } else {
                risk.criticality = 2;
            }
        });
    });

    //Risks?$expand=supplier
    this.on("READ", 'Risks', async (req, next) => {
        if (!req.query.SELECT.columns) return next();
        const expandIndex = req.query.SELECT.columns.findIndex(
            ({ expand, ref }) => expand && ref[0] === "supplier"
        );
        if (expandIndex < 0) return next();

        // Remove expand from query
        req.query.SELECT.columns.splice(expandIndex, 1);

        // Make sure supplier_ID will be returned
        if (!req.query.SELECT.columns.indexOf('*') >= 0 &&
            !req.query.SELECT.columns.find(
                column => column.ref && column.ref.find((ref) => ref == "supplier_ID"))
        ) {
            req.query.SELECT.columns.push({ ref: ["supplier_ID"] });
        }

        const risks = await next();

        const asArray = x => Array.isArray(x) ? x : [x];

        // Request all associated suppliers
        const supplierIds = asArray(risks).map(risk => risk.supplier_ID);
        const suppliers = await ZGWDEMO.run(SELECT.from('RiskService.Suppliers').where({ ID: supplierIds }));

        // Convert in a map for easier lookup
        const suppliersMap = {};
        for (const supplier of suppliers)
            suppliersMap[supplier.ID] = supplier;

        // Add suppliers to result
        for (const note of asArray(risks)) {
            note.supplier = suppliersMap[note.supplier_ID];
        }

        return risks;
    });
});
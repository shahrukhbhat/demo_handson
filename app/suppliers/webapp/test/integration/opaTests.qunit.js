sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/suppliers/test/integration/FirstJourney',
		'ns/suppliers/test/integration/pages/SuppliersList',
		'ns/suppliers/test/integration/pages/SuppliersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SuppliersList, SuppliersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/suppliers') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSuppliersList: SuppliersList,
					onTheSuppliersObjectPage: SuppliersObjectPage
                }
            },
            opaJourney.run
        );
    }
);
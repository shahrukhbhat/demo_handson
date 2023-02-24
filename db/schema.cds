namespace sap.ui.riskmanagement;

using {managed} from '@sap/cds/common';
using {ZGWDEMO as bupa} from '../srv/external/ZGWDEMO';

entity Risks : managed {
  key ID          : UUID @(Core.Computed : true);
      title       : String(100);
      prio        : String(5);
      descr       : String;
      miti        : Association to Mitigations;
      impact      : Integer;
      criticality : Integer;
      supplier: Association to Suppliers;
}

entity Mitigations : managed {
  key ID          : UUID @(Core.Computed : true);
      description : String;
      owner       : String;
      timeline    : String;
      risks       : Association to many Risks
                      on risks.miti = $self;
}

entity Suppliers as projection on bupa.BusinessPartnerCollection {
  key BusinessPartnerID as ID,       
      Company as fullName,
}

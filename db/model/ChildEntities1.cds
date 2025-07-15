namespace sap.fs;

using {
    sap.fs.RootEntities,
    sap.fs.GrandChildEntities
} from '../schema';

using {cuid} from '@sap/cds/common';

using {sap.common.Criticality, } from '../shared/common';

entity ChildEntities1 : cuid {
    parent           : Association to one RootEntities;
    field            : String;
    fieldWithPerCent : Decimal(5, 2);
    booleanProperty  : Boolean default false;
    criticalityValue : Association to one Criticality;
    grandChildren    : Composition of many GrandChildEntities
                           on grandChildren.parent = $self;
}

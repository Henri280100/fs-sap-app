namespace sap.fs;

using {sap.fs.RootBasis as rootBasis} from './RootBasis';

using {
    sap.fs.ChildEntities1,
    sap.fs.ChildEntities2,
    sap.fs.ChildEntities3,
    sap.fs.ChartDataEntities,
    sap.fs.AssignedRegions,
} from '../schema';

using {
    cuid,
    managed
} from '@sap/cds/common';

entity RootEntities : cuid, managed, rootBasis { //
    childEntities1  : Composition of many ChildEntities1
                          on childEntities1.parent = $self;
    association2one : Association to one ChildEntities2;
    childEntities3  : Composition of many ChildEntities3
                          on childEntities3.parent = $self;
    chartEntities   : Composition of many ChartDataEntities
                          on chartEntities.parent = $self;
    regions         : Composition of many AssignedRegions
                          on regions.root = $self;
};

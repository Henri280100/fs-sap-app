namespace sap.fs;

using {sap.fs.RootEntities} from '../schema';

using {cuid} from '@sap/cds/common';

using {
    sap.common.Criticality,
    sap.common.UnitOfMeasure
} from '../shared/common';

entity ChartDataEntities : cuid {
    parent                            : Association to one RootEntities;
    criticality                       : Association to one Criticality;
    integerValue                      : Integer;
    integerValueWithUoM               : Integer;
    uom                               : UnitOfMeasure;
    forecastValue                     : Integer;
    targetValue                       : Integer default 30;
    dimensions                        : Integer;

    areaChartToleranceUpperBoundValue : Integer default 90;
    areaChartToleranceLowerBoundValue : Integer default 80;
    areaChartDeviationUpperBoundValue : Integer default 50;
    areaChartDeviationLowerBoundValue : Integer default 0;
}

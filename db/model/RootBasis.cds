namespace sap.fs;

using {sap.fs.Contacts} from '../schema';

using {
    Country,
    Currency,
} from '@sap/cds/common';

using {
    sap.common.Criticality,
    sap.common.UnitOfMeasure,
    sap.common.Region
} from '../shared/common';

aspect RootBasis : {
    imageUrl                  : String;
    stringProperty            : String;
    integerValue              : Integer;
    forecastValue             : Integer;
    targetValue               : Integer default 30;
    dimensions                : Integer;

    starsValue                : Decimal;

    contact                   : Association to one Contacts;
    criticality_code          : Integer;
    criticality               : Association to one Criticality
                                    on criticality.code = criticality_code;

    fieldWithUoM              : Decimal(15, 3);
    uom                       : UnitOfMeasure;

    fieldWithPrice            : Decimal(12, 3);
    isoCurrency               : Currency;

    fieldWithCriticality      : String;

    deletePossible            : Boolean;
    updateHidden              : Boolean;
    fieldWithURL              : String;
    fieldWithURLtext          : String;

    email                     : String;
    telephone                 : String;

    country                   : Country;
    region                    : Region;

    validFrom                 : Date; //Search-Term: #TimeAndDate
    validTo                   : DateTime;
    time                      : Time;
    timeStamp                 : Timestamp;

    description               : String(1000);
    description_customGrowing : String(1000);
};

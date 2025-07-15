namespace sap.fs;


using {
    Country,
    cuid
} from '@sap/cds/common';

entity ChildEntities2 : cuid {
    stringProperty              : String;
    integerProperty             : Integer;
    decimalProperty             : Decimal(5, 3);
    country                     : Country;
}

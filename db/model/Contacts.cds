namespace sap.fs;
using {

    Country,
    cuid
} from '@sap/cds/common';

entity Contacts : cuid {
    name         : String;
    phone        : String;
    building     : String;
    country      : Country;
    street       : String;
    city         : String;
    postCode     : String;
    addressLabel : String;
    photoUrl     : String;
}

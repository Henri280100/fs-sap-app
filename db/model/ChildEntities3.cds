namespace sap.fs;

using {sap.fs.RootEntities} from '../schema';

using {cuid} from '@sap/cds/common';

entity ChildEntities3 : cuid {
    parent : Association to one RootEntities;
    field  : String;
}

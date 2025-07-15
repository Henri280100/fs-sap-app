namespace sap.fs;

using {sap.fs.ChildEntities1} from '../schema';

using {cuid} from '@sap/cds/common';

entity GrandChildEntities : cuid {
    parent : Association to one ChildEntities1;
    field  : String;
}

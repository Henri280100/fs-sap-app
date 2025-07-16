namespace sap.fs;

using {sap.fs.RootEntities} from '../schema';
using {sap.common.Region} from '../shared/common';

using {cuid} from '@sap/cds/common';

@cds.persistence.skips
entity AssignedRegions : cuid {
    root   : Association to one RootEntities;
    region : Region;
}

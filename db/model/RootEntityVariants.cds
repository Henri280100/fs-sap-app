namespace sap.fs;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {sap.fs.RootBasis} from '../schema';

//Entity only used to demonstrate Multiple Views on List Report with multiple entities
entity RootEntityVariants : cuid, managed, RootBasis {};

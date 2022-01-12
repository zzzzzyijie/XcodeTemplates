//___FILEHEADER___

#import "JZViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ___FILEBASENAMEASIDENTIFIER___ : JZViewModel

- (instancetype)initWithBaseVc:(JZBaseViewController *)baseVc;

/** req */
- (AnyPromise *)promiseReq;

/** seciton count */
@property (nonatomic,assign) NSInteger sectionCount;

/** items in section */
- (NSInteger)itemsInSection:(NSInteger)section;

/*
- (AdHomeListItem *)itemForIndex:(NSIndexPath *)indexPath;
*/

@end

NS_ASSUME_NONNULL_END

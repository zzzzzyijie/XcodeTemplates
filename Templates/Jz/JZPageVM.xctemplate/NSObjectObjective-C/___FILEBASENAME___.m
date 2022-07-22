//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()
/** baseVc */
@property (nonatomic,weak) JZBaseViewController *baseVc;
@end


@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithBaseVc:(JZBaseViewController *)baseVc {
    self = [super init];
    if (self) {
        self.baseVc = baseVc;
    }
    return self;
}

/** req */
/*
- (AnyPromise *)promiseReq {
    return [AnyPromise promiseWithAdapterBlock:^(PMKAdapter  _Nonnull adapter) {
        NSMutableDictionary *param = [NSMutableDictionary dictionary];
        param[@"page"] = @(self.page);
        [<#api#> schoolHomelistWithParam:param success:^(id  _Nonnull responseObject) {
            adapter(responseObject,nil);
        } failure:^(NSError * _Nonnull error) {
            adapter(nil,error);
        }];
    }];
}
 */

// section Count
- (NSInteger)sectionCount {
    if (self.baseVc.reqStatue == ReqSuccess) {
        return 0;
    }else {
        return 0;
    }
}

/** items in section */
- (NSInteger)itemsInSection:(NSInteger)section {
    return 0;
}

/*
- (AdHomeListItem *)itemForIndex:(NSIndexPath *)indexPath {
    return [self.listResp.list objectAt:index];
}
 */

@end

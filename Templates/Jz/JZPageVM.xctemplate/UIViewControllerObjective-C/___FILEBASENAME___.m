//___FILEHEADER___

#import "___FILEBASENAME___.h"
// Controller
// View
// Model
// ViewModel
// Lib

@interface ___FILEBASENAMEASIDENTIFIER___ ()
<
UITableViewDataSource,
UITableViewDelegate
>

@property (nonatomic,strong) UITableView *containerTableView;

//@property (nonatomic,strong) JZAdHomeViewModel *viewModcel;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - =================== Life Cycle ===================
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupInit];
    
    [self setupUI];
    
    [self loadRequest];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.containerTableView.frame = self.view.bounds;
}

#pragma mark - =================== Init Method ==================
- (void)setupInit {
    [self jz_setupNavTitle:@""];
}

- (void)setupUI {
    [self.view addSubview:self.containerTableView];
}

- (void)loadRequest {
    /*
    if (self.reqStatue == None) {
        [self startLoading];
    }
    @weakify(self);
    [self homeListReq].catch(^(NSError *error){
        @strongify(self);
        if (!self) { return; }
        self.reqStatue = ReqError;
        [self handleRequestError:error refreshSuccessBlock:nil];
    }).then(^(NSDictionary *resp){
        self.reqStatue = ReqSuccess;
        //self.viewModcel = [[JZAdHomeViewModel alloc] initWithResp:resp];
    }).ensure(^{
        @strongify(self);
        if (!self) { return; }
        [self stopLoading];
        [self.containerTableView reloadData];
    });
     */
}

#pragma mark - ================== Private Method =================
/*
- (AnyPromise *)homeListReq {
    return [AnyPromise promiseWithAdapterBlock:^(PMKAdapter  _Nonnull adapter) {
        NSMutableDictionary *param = [NSMutableDictionary dictionary];
        param[@"page"] = @(self.page);
        [AcademyHomeApi schoolHomelistWithParam:param success:^(id  _Nonnull responseObject) {
            adapter(responseObject,nil);
        } failure:^(NSError * _Nonnull error) {
            adapter(nil,error);
        }];
    }];
}
 */

#pragma mark - ===================== Delegate ====================
#pragma mark - UITableViewDataSource & Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView  {
    return 0;
//    return self.viewModcel.sectionCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
//    return [self.viewModcel itemsInSection:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    JZAdHomeBannerCell *cell = [tableView dequeueReusableCellWithIdentifier:JZAdHomeBannerCell.currentClassName forIndexPath:indexPath];
//    cell.itemModel = [self.viewModcel itemForIndex:indexPath.row];
//    return cell;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.backgroundColor = JZRandomColor;
    }
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *header = [[UIView alloc] initWithFrame:CGRectZero];
    return header;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footer = [[UIView alloc] initWithFrame:CGRectZero];
    return footer;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.1f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.1f;
}

/*
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

#pragma mark - =================== Event Method ==================


#pragma mark - ==================== Lazy Method ==================
- (UITableView *)containerTableView {
    if (!_containerTableView) {
        UITableView *tableView = [JZUIHelper createTableViewWithStyle:UITableViewStyleGrouped];
        tableView.separatorStyle = UITableViewCellSelectionStyleNone;
        tableView.backgroundColor = AppBackgroundColor;
        tableView.dataSource = self;
        tableView.delegate = self;
//        [tableView jz_registerClass:[JZAdHomeBannerCell class]];
//        [tableView jz_registerClass:[JZAdHomeListItemCell class]];
        [self setEmptyDataWithScrollView:tableView title:nil buttonTitle:nil emptyBlock:^{
            
        } errorBlock:^{
            
        }];
        tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectZero];
        tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        _containerTableView = tableView;
    }
    return _containerTableView;
}



@end

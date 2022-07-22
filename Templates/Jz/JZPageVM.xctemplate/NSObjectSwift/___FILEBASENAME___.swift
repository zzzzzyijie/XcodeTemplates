//___FILEHEADER___

import UIKit

// <#page#>'s ViewModel
class ___FILEBASENAMEASIDENTIFIER___: BasePageViewModel {
    let item: <#model#>
    var pageResp: <#resp#>
    init(item: <#model#>) {
        self.item = item
        super.init()
    }
    
    // --------------------------------------------------------------------------
    /// 设置数据
    /// - Parameter resp: resp
    func configWith(resp: <#resp#>?) {
        self.pageResp = resp
    }
}

// --------------------------------------------------------------------------
// PageAction if need
/*
 
 let context = PageViewModelContext<<#page#>Action>()
 enum <#page#>Action: PageViewModelAction {
     case one         // 1
     case two       // 2
 }
 
 */


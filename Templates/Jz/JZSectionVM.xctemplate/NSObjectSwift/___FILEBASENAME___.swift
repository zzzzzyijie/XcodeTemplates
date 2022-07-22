//___FILEHEADER___

import UIKit
import IGListKit

// Section ViewModel
class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {
    /// 模型数据
    let item: <#model#>
    init(item: <#model#>) {
        self.item = item
        super.init()
    }
    
    // --------------------------------------------------------------------------
}

// --------------------------------------------------------------------------
extension ___FILEBASENAMEASIDENTIFIER___: ListSectionProtocol {

    var numberOfItems: Int {
        return 1
    }

    func sizeForItem(AtIndex: Int, containerSize: CGSize) -> CGSize {
        return .zero
    }
    
    func supportedElementKinds() -> [String] {
        return [UICollectionView.elementKindSectionHeader,UICollectionView.elementKindSectionFooter]
    }

    func sizeForHeader(AtIndex: Int, containerSize: CGSize) -> CGSize {
        return .zero
    }

    func sizeForFooter(AtIndex: Int, containerSize: CGSize) -> CGSize {
        return .zero
    }
    
    /// 边距
    var sectionInset: UIEdgeInsets { .zero }

    /// cell左右之间的间距
    var minimumLineSpacing: CGFloat { 0 }
    
    /// cell上下之间的间距
    var minimumInteritemSpacing: CGFloat { 0 }
    
    // diff
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if self === object { return true }
        guard object is ___FILEBASENAMEASIDENTIFIER___ else { return false }
        return true
    }
}

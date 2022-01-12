//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {
    
    // MARK: - Lazy UI ----------------------------
    private lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    // MARK: - Life Cycle ----------------------------
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    // MARK: - Init Method ----------------------------
    func setupUI() {
        addSubview(contentView)
        contentView.fillToSuperview()
    }
    
    // MARK: - Private Method ----------------------------
     
    
    // MARK: - Touch Event ----------------------------
    
}

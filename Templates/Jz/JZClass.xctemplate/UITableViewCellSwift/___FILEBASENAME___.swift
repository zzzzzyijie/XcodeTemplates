//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {

    // MARK: - Lazy UI ----------------------------
    
    // MARK: - Life Cycle ----------------------------
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        // xib ->  super.init(coder: aDecoder)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    // MARK: - Private Method ----------------------------
    func setupUI() {
        
    }
    
     
    // MARK: - Touch Event ----------------------------
}

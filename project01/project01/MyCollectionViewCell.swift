//
//  MyCollectionViewCell.swift
//  project01
//
//  Created by Angrej veer Singh on 2022-06-25.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
//    @IBOutlet var label: UILabel!
    
   
    
    private let label:UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.clipsToBounds = true
        return label
    }()
    
    let keyboards = ["Q","W","E","R","T","Y","U","I","O","P","A","S","D","F","G","H","J","K","L","Z","X","C","V","B","N","M"]
    
//    let keyboard = "last"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        

        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = keyboards[ViewController.i]

        ViewController.i += 1
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = ""
    }

//    let keyboard = "Hello"
//    override func awakeFromNib() {
//        super.awakeFromNib()
//       
//    }
//    
//    public func configure(){
//        
//        for keyboard in keyboards {
//            label.text = keyboard
//        }
//        
//    }
//    
//    static func nib() -> UINib{
//        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
//    }

}

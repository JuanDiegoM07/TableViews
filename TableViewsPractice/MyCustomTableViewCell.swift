//
//  MyCustomTableViewCell.swift
//  TableViewsPractice
//
//  Created by Juan Diego Marin on 5/09/22.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    //MARK: - IBOulets

    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    //MARK - Lice cycle view controller
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
        mySecondLabel.numberOfLines = 0
        
        backgroundColor = .gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print(myFirstLabel.text ?? "")

    }
    
}

//
//  DoctorTableViewCell.swift
//  Doctorian
//
//  Created by Paul on 13/01/2024.
//

import UIKit

class DoctorTableViewCell: UITableViewCell {
    @IBOutlet weak var docImage: UIImageView!
    @IBOutlet weak var docName: UILabel!
    @IBOutlet weak var docSpecialization: UILabel!
    @IBOutlet weak var separatorView: UIView!
    @IBOutlet weak var dateImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var detailsButton: UIButton!
    @IBOutlet weak var viewTableContainer: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewTableContainer.layer.shadowColor = UIColor.black.cgColor
        viewTableContainer.layer.shadowOpacity = 0.04
        viewTableContainer.layer.shadowOffset = CGSize(width: 2, height: 2)
        viewTableContainer.layer.shadowRadius = 10
        
        docImage.layer.cornerRadius = docImage.frame.size.width / 2
        docImage.clipsToBounds = true
    }

    func updateData(with data: DoctorTableData){
        docImage.image = UIImage(named: data.docImage)
        docName.text = data.docName
        docSpecialization.text = data.docSpecialization
        dateImage.image = UIImage(named: data.dateImage)
        dateLabel.text = data.date
        timeImage.image = UIImage(named: data.timeImage)
        timeLabel.text = data.time
    }
    
}

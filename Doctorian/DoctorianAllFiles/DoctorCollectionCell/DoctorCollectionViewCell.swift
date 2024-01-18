//
//  DoctorCollectionViewCell.swift
//  Doctorian
//
//  Created by Paul on 13/01/2024.
//

import UIKit

class DoctorCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewCollectionContainer: UIView!
    @IBOutlet weak var labelCollection: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        viewCollectionContainer.layer.cornerRadius = viewCollectionContainer.frame.height / 2
        viewCollectionContainer.clipsToBounds = true

        
    }
    
    func updateData(with data: DoctorCollectionData){
        labelCollection.text = data.schedule
    }

}

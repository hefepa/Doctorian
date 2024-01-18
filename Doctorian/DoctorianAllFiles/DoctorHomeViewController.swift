//
//  DoctorHomeViewViewController.swift
//  Doctorian
//
//  Created by Paul on 13/01/2024.
//

import UIKit

class DoctorHomeViewController: UIViewController {

    var getDoctorCollection: [DoctorCollectionData] = DoctorCollectionModel().populateData()
    var getDoctorTable: [DoctorTableData] = DoctorTableModel().populateData()

    @IBOutlet weak var myTabBar: UITabBar!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.separatorStyle = .none
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
                
        myTableView.showsVerticalScrollIndicator = false
        myCollectionView.showsHorizontalScrollIndicator = false

        
        myTableView.register(UINib(nibName: "DoctorTableViewCell", bundle: nil), forCellReuseIdentifier: "DoctorTableViewCell")
        myCollectionView.register(UINib(nibName: "DoctorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DoctorCollectionViewCell")
    }
}

extension DoctorHomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        getDoctorTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "DoctorTableViewCell", for: indexPath) as! DoctorTableViewCell
        let doctorTableViewCell = getDoctorTable[indexPath.item]
        cell.updateData(with: doctorTableViewCell)
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        230
    }
}



extension DoctorHomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        getDoctorCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "DoctorCollectionViewCell", for: indexPath) as! DoctorCollectionViewCell
        let doctorCollectionViewCell = getDoctorCollection[indexPath.item]
        cell.updateData(with: doctorCollectionViewCell)
        return cell
    }
}


extension DoctorHomeViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widthOfTheScreen: CGFloat = 270
        //let width = collectionView.bounds.width
        let heightOfTheScreen = collectionView.bounds.height
        return CGSize(width: widthOfTheScreen, height: heightOfTheScreen)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(top: 5, left: 10, bottom: 5, right: 10)
    }
}


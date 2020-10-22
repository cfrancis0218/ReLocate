//
//  HotelList.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-19.
//

import UIKit

class HotelList: UIViewController {
    
    var hotelData = [
        HotelData(title: "Hotel Bora Bora", image: #imageLiteral(resourceName: "hugues-de-buyer-mimeure-oDcbtrD3Rrc-unsplash")),
        HotelData(title: "Resort", image: #imageLiteral(resourceName: "nathana-reboucas-e2-4YzZAWtc-unsplash")),
        HotelData(title: "", image: #imageLiteral(resourceName: "paulina-cadoret-5neWWiMk_w4-unsplash")),
        HotelData(title: "", image: #imageLiteral(resourceName: "artak-petrosyan-OH6PkGB4JCU-unsplash"))
    ]
    
    var screenColor = UIColor.white
    
    fileprivate let hotelCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let hotelInit = UICollectionView(frame: .zero, collectionViewLayout: layout)
        hotelInit.translatesAutoresizingMaskIntoConstraints = false
        hotelInit.register(HotelCell.self, forCellWithReuseIdentifier: "cell")
        return hotelInit
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        hotelCollection.delegate = self
        hotelCollection.dataSource = self
        collectionSetup()
        collectionConstraints()
        self.view.backgroundColor = screenColor
    }
    func collectionSetup() {
        hotelCollection.backgroundColor = .white
        hotelCollection.indicatorStyle = .white
    }
    
    func collectionConstraints() {
        self.view.addSubview(hotelCollection)
        hotelCollection.translatesAutoresizingMaskIntoConstraints = false
        hotelCollection.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        hotelCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        hotelCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        hotelCollection.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        hotelCollection.heightAnchor.constraint(equalTo: hotelCollection.heightAnchor, constant: 100).isActive = true
    }
}

extension HotelList: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: hotelCollection.frame.width/1, height: hotelCollection.frame.width/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hotelData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = hotelCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HotelCell
        cell.hotelData = self.hotelData[indexPath.row]
        return cell
    }
}


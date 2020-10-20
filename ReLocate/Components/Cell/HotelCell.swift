//
//  HotelCell.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-19.
//

import UIKit

class HotelCell: UICollectionViewCell {
    
    // MARK: Fetch Image Data
    // Set Image Data From HotelData
    var hotelData: HotelData? {
        didSet {
            guard let hotelData = hotelData else { return }
            hotelImageView.image = hotelData.image
        }
    }
    
    // MARK: Create UIImageView (Kept in file)
    fileprivate let hotelImageView: UIImageView = {
        // Created UIImageView
        let hotelImage = UIImageView()
        // Auto Layout
        hotelImage.translatesAutoresizingMaskIntoConstraints = false
        // Image Scale
        hotelImage.contentMode = .scaleAspectFill
        // Clips to bounds
        hotelImage.clipsToBounds = true
        // Corner Radius
        hotelImage.layer.cornerRadius = 25
        // Return Image
        return hotelImage
    }()
    
    // MARK: Create UILabel (Kept in file)
    fileprivate let hotelName: UILabel = {
        // Created Label
        var hotelLabel = UILabel(frame: CGRect(x:100, y: 30, width: 100 , height: 40))
        // Label Alignment
        hotelLabel.textAlignment = .center
        // Label Text
        hotelLabel.text = "Hotel/Resort"
        // Label Text Color
        hotelLabel.textColor = .white
        // Label Weight/ Size
        hotelLabel.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        //MARK: Text Shadow
        hotelLabel.layer.shadowColor = UIColor.black.cgColor
        hotelLabel.layer.shadowOpacity = 0.5
        hotelLabel.layer.shadowOffset = .zero
        // Return Label
        return hotelLabel
    }()
    
    // MARK: Create UIStackView (Kept in file)
    fileprivate let starStack: UIStackView = {
        // Set Number of Stars to display
        var intStars = 5
        
        // MARK: Created StackView
        let starsStack = UIStackView()
        // Stack Layout
        starsStack.axis = .horizontal
        // Stack Separation
        starsStack.distribution = .equalSpacing
        // Stack Alignment
        starsStack.alignment = .fill
        // Stack Spacing
        starsStack.spacing = 15
        // Stack Reference Tag
        starsStack.tag = 5
        
        // MARK: Create List of UIImageViews
        var arrayImage = [UIImageView]()
        // Created Image for Image Array
        var arrayImageView = UIImageView()
        
        // MARK: Iteration through stars
        for i in 0..<intStars{
            arrayImageView = UIImageView()
            if (i == 0) {
                arrayImageView.tag = 10
            }
            // MARK: Stars Setup
            arrayImageView.image = UIImage(systemName: "star.fill")
            // Setting Tint Color
            arrayImageView.tintColor = .black
            // Adding images to Stack
            starsStack.addArrangedSubview(arrayImageView)
            // Appended to list
            arrayImage.append(arrayImageView)
        }
        // Return Stack
        return starsStack
    }()

    // MARK: init(frame)
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add UIImage to View
        contentView.addSubview(hotelImageView)
        
        // MARK: Placement --> Constraints for Image
        hotelImageView.translatesAutoresizingMaskIntoConstraints = false
        hotelImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        hotelImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        hotelImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        hotelImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        // Add UILabel to View
        contentView.addSubview(hotelName)
        
        // MARK: Placement --> Constraints for Label
        hotelName.translatesAutoresizingMaskIntoConstraints = false
        hotelName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        hotelName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        
        // Add Stack to View
        contentView.addSubview(starStack)
        
        // MARK: Placement --> Constraints for Stack
        starStack.translatesAutoresizingMaskIntoConstraints = false
        starStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40).isActive = true
        starStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

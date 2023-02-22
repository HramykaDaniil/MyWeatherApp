import UIKit
import SnapKit

class DailyWeatherCell: UITableViewCell {

    static let id = "DailyWeatherCell"
    
    private let dayLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "Monday"
        
        return label
    }()
    
    private let weatherIconImageView: UIImageView = {
        let image = UIImage(named: "forest_sunny")
        let imageView = UIImageView(image: image)
            
        return imageView
    }()
    
    private let temperatureLabel: UILabel = {
       let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "+10"
        
        return label
    }()

}

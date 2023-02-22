import UIKit
import SnapKit

class WeatherScreenView: UIView {
    
    let weatherImage: UIImageView = {
        let image = UIImage(named: "forest_sunny")
        let imageView = UIImageView(image: image)
        
        return imageView
    }()
    
    let currentCityLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        label.text = "Hrodna"
        
        return label
    }()
    
    let currentTemperatureLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 50)
        label.text = "15°"
        
        return label
    }()
    
    let currentTemperatureStatusLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "SUNNY"
        
        return label
    }()
    
    let feelsLikeTemperatureLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    let findCityButton: UIButton = {
        let button = UIButton()
        
        
        return button
    }()
    
    let dailyWatherTableView: UITableView = {
        let tabel = UITableView()
        
        tabel.register(DailyWeatherCell.self, forCellReuseIdentifier: "DailyWeatherCell")
        
        tabel.backgroundColor = .systemRed

        return tabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = UIColor(named: "clear_green")
        setup()
        updateConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        
        addSubview(weatherImage)
        addSubview(currentCityLabel)
        addSubview(currentTemperatureStatusLabel)
        addSubview(currentTemperatureLabel)
        addSubview(dailyWatherTableView)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        weatherImage.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(2.5)
            make.top.left.right.equalToSuperview()
        }
        
        currentCityLabel.snp.makeConstraints { make in
            make.centerX.equalTo(weatherImage)
            make.bottom.equalTo(currentTemperatureLabel.snp_topMargin)
        }
        
        currentTemperatureLabel.snp.makeConstraints { make in
            make.centerX.equalTo(weatherImage)
            make.bottom.equalTo(currentTemperatureStatusLabel.snp_topMargin)
        }
        currentTemperatureStatusLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(weatherImage)
        }
        
        dailyWatherTableView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(weatherImage.snp_bottomMargin)
        }
        
        
        
    }
    
}

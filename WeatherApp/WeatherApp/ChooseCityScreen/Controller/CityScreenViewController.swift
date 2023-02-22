//
//  CityScreenViewController.swift
//  WeatherApp
//
//  Created by Daniil on 1.02.23.
//

import UIKit

class CityScreenViewController: UIViewController {
    
    private var rootView: CityScreenView {
           self.view as! CityScreenView
       }
    
    override func loadView() {
          super.loadView()

          self.view = CityScreenView()
      }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}

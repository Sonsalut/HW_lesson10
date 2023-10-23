//
//  ViewController.swift
//  HW_lesson10
//
//  Created by Le Thanh Son on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {

    //gray background
    @IBOutlet weak var backView: UIView!
    
    //top view
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var userImageView: UIImageView!
    
    //bottom
    
    @IBOutlet weak var customView1: CustomView!
    
    @IBOutlet weak var customView2: CustomView!
    
    @IBOutlet weak var customView3: CustomView!
    
    @IBOutlet weak var customView4: CustomView!
    
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var bottomLabel: UILabel!
    //body
    @IBOutlet weak var upperBodyView: UIView!
    @IBOutlet weak var bottomBodyView: UIView!
    @IBOutlet weak var tapBottomView: UIView!
    
//    @IBOutlet weak var tapBottomView: UIView!
    
    //bottom tap
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserImageView()
        setupTitleLabel()
        setupNameLabel()
        setupBottomText()
        setupTapBottomView()
        setupCustomView()
        
        
    }
    func setupTapBottomView() {
        tapBottomView.layer.cornerRadius = 15
    }
    private func setupCustomView() {
        customView1.contenLabel.text = "test this one"
        customView2.contenLabel.text = "second one"
    }
    func setupUserImageView() {
        userImageView.image = UIImage(named: "user")
        userImageView.layer.cornerRadius = 10
    }
    
    func setupTitleLabel() {
        titleLabel.text = "iOS Developer"
    }
    func setupNameLabel() {
        nameLabel.text = "Le Thanh Son"
    }
    func setupBottomText() {
        bottomLabel.text = "Feel Free to Ask, We're Ready to Help"
    }
    

}


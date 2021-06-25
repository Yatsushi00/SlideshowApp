//
//  ViewController.swift
//  テスト
//
//  Created by USER on 2021/06/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var nowIndex:Int = 0
    var timer: Timer!
    
    var imageArray:[UIImage] = [
    UIImage(named: "風景1")!,
    UIImage(named: "風景2")!,
    UIImage(named: "風景3")!
    ]
    
        override func viewDidLoad() {
            super.viewDidLoad()
            imageView.image = imageArray[nowIndex]
        }
    
    @IBAction func slideShowButton(_ sender: Any) {
        if (timer == nil){
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            startButton.setTitle("停止", for: .normal)
        }else{
            timer.invalidate()
            timer = nil
            startButton.setTitle("再生", for: .normal)
        }
    }
        
    @objc func changeImage(){
            nowIndex += 1
            if (nowIndex == imageArray.count){
                nowIndex = 0
            }
        imageView.image = imageArray[nowIndex]
        }
    
    @IBAction func nextButton(_ sender: Any) {
        if self.timer == nil{
            if nowIndex == 2{
                nowIndex = 0
            }else{
                nowIndex += 1
            }
            imageView.image = imageArray[nowIndex]
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        if self.timer == nil{
            if nowIndex == 0{
                nowIndex = imageArray.count
                nowIndex -= 1
            }
            else{
            nowIndex -= 1
            }
            imageView.image = imageArray[nowIndex]
        }
    }
    
    @IBAction func tapAction(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.nowIndex = nowIndex
            
        }
    
    
    
    @IBAction func backwind(_ segue: UIStoryboardSegue) {
    }
    
}


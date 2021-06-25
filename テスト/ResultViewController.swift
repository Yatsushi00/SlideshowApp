//
//  ResultViewController.swift
//  テスト
//
//  Created by USER on 2021/06/24.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        largeImage.image = imageArray[nowIndex]
        // Do any additional setup after loading the view.
    }
    
    var nowIndex:Int = 0
    var imageArray:[UIImage] = [
    UIImage(named: "風景1")!,
    UIImage(named: "風景2")!,
    UIImage(named: "風景3")!
    ]
    
    @IBOutlet weak var largeImage: UIImageView!
 
    
    @IBAction func TopButton(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

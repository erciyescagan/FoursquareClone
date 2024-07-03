//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Mert Erciyes Çağan on 6/7/24.
//

import UIKit
import ParseCore



class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
       /* let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Apple"
        parseObject["calories"] = 150
        parseObject.saveInBackground(block: { success, error in
            if error != nil {
                print(error?.localizedDescription as Any)
            } else {
                print("uploaded")
            }
        }) */
    
        super.viewDidLoad()
        
        //getData()
        
        //signup()
        
        //login()
        
        //let image = generateQRCode(from: "https://erciyes.me")
        
        //imageView.image = image
        

        
    }
    
    func getData(){
        let query = PFQuery(className: "Fruits")
        query.whereKey("name", contains: "Apple")
        query.findObjectsInBackground { objects, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print(objects)
            }
        }
    }
    
    func signup(){
        let user = PFUser()
        user.username = "erciyescagan"
        user.password = "Sim2waycil?!"
        user.email = "erciyescagan@gmail.com"
        user["phone"] = "+31647059636"
        
        user.signUpInBackground { success, error in
            if error != nil {
                print(error!.localizedDescription)
            } else {
                print("Sign Up Succeeded!")
            }
        }
    }
    
    func login(){
        PFUser.logInWithUsername(inBackground: "erciyescagan", password: "Sim2waycil?!") { user, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print(user)
            }
        }
    }
    
    
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)

            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }

        return nil
    }
    
    



}


//
//  ViewController.swift
//  UyariMesajlari
//
//  Created by İbrahim Halid Bayrak on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if emailTextField.text == "" {
            //emailini girilmedi
            
            let uyariMesaji = UIAlertController(title: "Hata Mesajı!", message: "Email Yanlış Verildi!", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // Ok Butonuna tıklanınca olacaklar
                print("Ok butonuna tıklandı!")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
            
        } else if passwordTextField.text == "" {
            //parola girilmedi
            
            let uyariMesaji = UIAlertController(title: "Hata Mesajı!", message: "Parola girilmedi!", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // Ok Butonuna tıklanınca olacaklar
                print("Ok butonuna tıklandı!")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
            
        } else if passwordTextField.text != password2TextField.text {
            //Parolalar uyuşmuyor
            
            let uyariMesaji = UIAlertController(title: "Hata Mesajı!", message: "Parolalar uyuşmuyor!", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // Ok Butonuna tıklanınca olacaklar
                print("Ok butonuna tıklandı!")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
            
        } else {
            //Kayıt başarılı
            let uyariMesaji = UIAlertController(title: "Başarılı!", message: "Kayıt Başarılı!", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                // Ok Butonuna tıklanınca olacaklar
                print("Ok butonuna tıklandı!")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
        }
        
        
        let uyariMesaji = UIAlertController(title: "Hata Mesajı!", message: "Email Yanlış Verildi!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            // Ok Butonuna tıklanınca olacaklar
            print("Ok butonuna tıklandı!")
        }
        
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
        
        
    }
    


}


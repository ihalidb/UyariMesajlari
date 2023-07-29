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
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Email Eksik")
        } else if passwordTextField.text == "" {
            //parola girilmedi
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parola Eksik!")
        } else if passwordTextField.text != password2TextField.text {
            //Parolalar uyuşmuyor
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parolalar Uyuşmuyor!")
        } else {
            //Kayıt başarılı
            alertOlustur(titleGirdisi: "Tebrikler!", messageGirdisi: "Kullanıcı Oluşturuldu!")
        }
        
    }
    
    func alertOlustur(titleGirdisi: String, messageGirdisi: String){
        
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            // Ok Butonuna tıklanınca olacaklar
            print("Ok butonuna tıklandı!")
        }
        
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
        
    }
    


}


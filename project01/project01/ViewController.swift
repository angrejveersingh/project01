//
//  ViewController.swift
//  project01
//
//  Created by Angrej veer Singh on 2022-06-24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var label13: UILabel!
    @IBOutlet weak var label14: UILabel!
    @IBOutlet weak var label15: UILabel!
//    @IBOutlet weak var label16: UILabel!
    @IBOutlet weak var label17: UILabel!
    @IBOutlet weak var label18: UILabel!
    @IBOutlet weak var label19: UILabel!
    @IBOutlet weak var label20: UILabel!
    
    @IBOutlet weak var label16: UILabel!
    
    
    
    
    
    
    //    var labels = [label1, label2]
   
    static var i = 0
    var location = 0
    var checkLoop = 0
    var checkPost = 0
    
    
    var checkWord = ""
    var nextLine = 0
    
    
    var c:Int?
    var labelValue = 1
    var checkMatched = 0
    var value:String = ""
    
    var matchWord = [["G","R","E","A","T"],["D","R","I","N","K"],["S","T","O","R","E"],["T","A","B","L","E"],["A","C","T","O","R"]].randomElement()!
    
   
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "MyCollectionViewCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
//        collectionView.L
        submitButton.isEnabled = false
        print(matchWord)
        
      
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
            return 26
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("selected \(indexPath.row)")
        
        
      
        
        switch indexPath.row{
        case 0:
            value = "Q"
        case 1:
            value = "W"
        case 2:
            value = "E"
        case 3:
            value = "R"
        case 4:
            value = "T"
        case 5:
            value = "Y"
        case 6:
            value = "U"
        case 7:
            value = "I"
        case 8:
            value = "O"
        case 9:
            value = "P"
        case 10:
            value = "A"
        case 11:
            value = "S"
        case 12:
            value = "D"
        case 13:
            value = "F"
        case 14:
            value = "G"
        case 15:
            value = "H"
        case 16:
            value = "J"
        case 17:
            value = "K"
        case 18:
            value = "L"
        case 19:
            value = "Z"
        case 20:
            value = "X"
        case 21:
            value = "C"
        case 22:
            value = "V"
        case 23:
            value = "B"
        case 24:
            value = "N"
        case 25:
            value = "M"
        default:
            value = ""
        }
        
        if checkLoop >= 0 && checkLoop < 5 && nextLine == 0{
        checkLoop += 1
        

        
        if label1.text == "" {
            label1.text = value
            label1.backgroundColor = UIColor.darkGray
            label1.textColor = UIColor.white
        }
        
        if label1.text != "" && checkLoop == 2 {
            label2.text = value
            label2.backgroundColor = UIColor.darkGray
            label2.textColor = UIColor.white
        }
        
        if label2.text != "" && checkLoop == 3 {
            label3.text = value
            label3.backgroundColor = UIColor.darkGray
            label3.textColor = UIColor.white
        }
        
        if label3.text != "" && checkLoop == 4 {
            label4.text = value
            label4.backgroundColor = UIColor.darkGray
            label4.textColor = UIColor.white
        }
        
        if label4.text != "" && checkLoop == 5 {
            label5.text = value
            label5.backgroundColor = UIColor.darkGray
            label5.textColor = UIColor.white
            
        }
        
        if checkLoop == 5 {
            submitButton.isEnabled = true
        }
    }
        
        if checkLoop >= 5 && checkLoop < 10 && nextLine == 1{
            
            checkLoop += 1
            
            if label6.text == "" {
                label6.text = value
                label6.backgroundColor = UIColor.darkGray
                label6.textColor = UIColor.white
                submitButton.isEnabled = false
            }
            
            if label6.text != "" && checkLoop == 7 {
                label7.text = value
                label7.backgroundColor = UIColor.darkGray
                label7.textColor = UIColor.white
            }
            
            if label7.text != "" && checkLoop == 8 {
                label8.text = value
                label8.backgroundColor = UIColor.darkGray
                label8.textColor = UIColor.white
            }
            
            if label8.text != "" && checkLoop == 9 {
                label9.text = value
                label9.backgroundColor = UIColor.darkGray
                label9.textColor = UIColor.white
            }
            
            if label9.text != "" && checkLoop == 10 {
                label10.text = value
                label10.backgroundColor = UIColor.darkGray
                label10.textColor = UIColor.white
                
            }
            
            if checkLoop == 10 {
                submitButton.isEnabled = true
            }
        }
        
        if checkLoop >= 10 && checkLoop <= 15 && nextLine == 2{
            
            checkLoop += 1
            
            if label11.text == "" {
                label11.text = value
                label11.backgroundColor = UIColor.darkGray
                label11.textColor = UIColor.white
                submitButton.isEnabled = false
            }
            
            if label11.text != "" && checkLoop == 12 {
                label12.text = value
                label12.backgroundColor = UIColor.darkGray
                label12.textColor = UIColor.white
            }
            
            if label12.text != "" && checkLoop == 13 {
                label13.text = value
                label13.backgroundColor = UIColor.darkGray
                label13.textColor = UIColor.white
            }
            
            if label13.text != "" && checkLoop == 14 {
                label14.text = value
                label14.backgroundColor = UIColor.darkGray
                label14.textColor = UIColor.white
            }
            
            if label4.text != "" && checkLoop == 15 {
                label15.text = value
                label15.backgroundColor = UIColor.darkGray
                label15.textColor = UIColor.white
                
            }
            
            if checkLoop == 15 {
                submitButton.isEnabled = true
            }
        }
        
        if checkLoop >= 15 && checkLoop < 20 && nextLine == 3{
            
            checkLoop += 1
            
            if label16.text == "" {
                label16.text = value
                label16.backgroundColor = UIColor.darkGray
                label16.textColor = UIColor.white
                submitButton.isEnabled = false
            }
            
            if label16.text != "" && checkLoop == 17 {
                label17.text = value
                label17.backgroundColor = UIColor.darkGray
                label17.textColor = UIColor.white
            }
            
            if label17.text != "" && checkLoop == 18 {
                label18.text = value
                label18.backgroundColor = UIColor.darkGray
                label18.textColor = UIColor.white
            }
            
            if label18.text != "" && checkLoop == 19 {
                label19.text = value
                label19.backgroundColor = UIColor.darkGray
                label19.textColor = UIColor.white
            }
            
            if label9.text != "" && checkLoop == 20 {
                label20.text = value
                label20.backgroundColor = UIColor.darkGray
                label20.textColor = UIColor.white
                
            }
            
            if checkLoop == 20 {
                submitButton.isEnabled = true
            }
        }
            
        
        
        
//        func changeKeyboard(){
//            if location <= 4 {
//                for num in 1...5 {
//                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath)
//                    if indexPath.row == index[num]{
//                    cell.layer.backgroundColor = UIColor.systemBlue.cgColor
//                    }
//
//                }
//            }
//
//
//        }
        
//        func changeKeyboardOrange(){
//
//
//            cell.layer.backgroundColor = UIColor.orange.cgColor
//        }
//
//        func changeKeyboardGray(){
//
//
//            cell.layer.backgroundColor = UIColor.darkGray.cgColor
//        }
        
//      check.text = value
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath)
        
        cell.layer.borderColor = UIColor.black.cgColor
            cell.layer.borderWidth = 1
        cell.layer.backgroundColor = UIColor.lightGray.cgColor
        
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 5.0
        
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    
    @IBAction func onSubmitClick(_ sender: UIButton) {
        
        
        nextLine += 1
        let matchCheck = matchWord.joined()
        
        checkPost += 1
        
        
        
        
        
        if checkLoop == 5{
            
            
            checkWord = "\(label1.text!)\(label2.text!)\(label3.text!)\(label4.text!)\(label5.text!)"
            for word in matchWord {
                if word == label1.text!{
                    if label1.text == matchWord[0] {
                        label1.backgroundColor = UIColor.systemBlue
                      
                        
                    }else{
                    label1.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label2.text! && label2.text! != label1.text!{
                    if label2.text == matchWord[1] {
                        label2.backgroundColor = UIColor.systemBlue
                       
                    }else{
                    label2.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label3.text! && label3.text! != label2.text!{
                    if label3.text == matchWord[2] {
                        label3.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label3.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label4.text! && label4.text! != label3.text!{
                    if label4.text == matchWord[3] {
                        label4.backgroundColor = UIColor.systemBlue
                       
                    }else{
                    label4.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label5.text! && label5.text! != label4.text!{
                    if label5.text == matchWord[4] {
                        label5.backgroundColor = UIColor.systemBlue
                      
                    }else{
                    label5.backgroundColor = UIColor.orange
                    }
                    
                }
            }
            if checkWord == matchCheck {
                let alert = UIAlertController(title: "HURRAY", message: "Winner", preferredStyle: .alert)
//                let button = UIAlertAction(title: "OK", style: .default) { _ in
//                    }
//                alert.addAction(button)
                self.show(alert, sender: nil)
            }
            
        }
        
        if checkLoop == 10 {
            checkWord = "\(label6.text!)\(label7.text!)\(label8.text!)\(label9.text!)\(label10.text!)"
            for word in matchWord {
                if word == label6.text! {
                    if label6.text == matchWord[0] {
                        label6.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                      
                    }else{
                    label6.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label7.text! {
                    if label7.text == matchWord[1] {
                        label7.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label7.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label8.text! {
                    if label8.text == matchWord[2] {
                        label8.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label8.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label9.text! {
                    if label9.text == matchWord[3] {
                        label9.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label9.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label10.text! {
                    if label10.text == matchWord[4] {
                        label10.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label10.backgroundColor = UIColor.orange
                    }
                    
                }
            }
            if checkWord == matchCheck {
                let alert = UIAlertController(title: "HURRAY", message: "Winner", preferredStyle: .alert)
               
                self.show(alert, sender: nil)
                
            }
          
        }
        
        if checkLoop == 15 {
            checkWord = "\(label11.text!)\(label12.text!)\(label13.text!)\(label14.text!)\(label15.text!)"
            for word in matchWord {
                if word == label11.text! {
                    if label11.text == matchWord[0] {
                        label11.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label11.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label12.text! {
                    if label12.text == matchWord[1] {
                        label12.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label12.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label13.text! {
                    if label13.text == matchWord[2] {
                        label13.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label13.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label14.text! {
                    if label14.text == matchWord[3] {
                        label14.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label14.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label15.text! {
                    if label15.text == matchWord[4] {
                        label15.backgroundColor = UIColor.systemBlue
                        checkMatched += 1
                    }else{
                    label15.backgroundColor = UIColor.orange
                    }
                    
                }
            }
            if checkWord == matchCheck {
                let alert = UIAlertController(title: "HURRAY", message: "Winner", preferredStyle: .alert)
                
                self.show(alert, sender: nil)
            }
        }
        
        if checkLoop == 20 {
            checkWord = "\(label16.text!)\(label17.text!)\(label18.text!)\(label19.text!)\(label20.text!)"
            for word in matchWord {
                if word == label16.text! {
                    if label16.text == matchWord[0] {
                        label16.backgroundColor = UIColor.systemBlue
                       
                    }else{
                    label16.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label17.text! {
                    if label17.text == matchWord[1] {
                        label17.backgroundColor = UIColor.systemBlue
                       
                    }else{
                    label17.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label18.text! {
                    if label18.text == matchWord[2] {
                        label18.backgroundColor = UIColor.systemBlue
                      
                    }else{
                    label18.backgroundColor = UIColor.orange
                    }
                    
                }
                
                if word == label19.text! {
                    if label19.text == matchWord[3] {
                        label19.backgroundColor = UIColor.systemBlue
                       
                    }else{
                    label19.backgroundColor = UIColor.orange
                    }
                    
                }
               if word == label20.text! {
                    if label20.text == matchWord[4] {
                        label20.backgroundColor = UIColor.systemBlue
                       
                    }else{
                    label20.backgroundColor = UIColor.orange
                    }
                    
                }
            }
            
            if checkWord == matchCheck {
                let alert = UIAlertController(title: "HURRAY", message: "Winner", preferredStyle: .alert)
               
                self.show(alert, sender: nil)
            }else {
                let alert = UIAlertController(title: "ALAS", message: "Better Luck Next Time!! Word was \(matchCheck)", preferredStyle: .alert)
               
                self.show(alert, sender: nil)
            }
         
        }
        
        
        
    }
    
    
    @IBAction func onDeleteClick(_ sender: UIButton) {
        
        if checkLoop<=5 && checkPost == 0{
            
  
        
        switch checkLoop {
        case 5:
            label5.text = ""
            checkLoop -= 1
            label5.backgroundColor = UIColor.white
            submitButton.isEnabled = false
            
        
        case 4:
            label4.text = ""
            checkLoop -= 1
            label4.backgroundColor = UIColor.white
            
        case 3:
            label3.text = ""
            checkLoop -= 1
            label3.backgroundColor = UIColor.white
            
        case 2:
            label2.text = ""
            checkLoop -= 1
            label2.backgroundColor = UIColor.white
            
        case 1:
            label1.text = ""
            checkLoop -= 1
            label1.backgroundColor = UIColor.white
            
        default:
            print("donr now")
        }
            
        }
        
        if checkLoop >= 6 && checkPost <= 1{
            
  
        
        switch checkLoop {
        case 10:
            label10.text = ""
            checkLoop -= 1
            label10.backgroundColor = UIColor.white
            submitButton.isEnabled = false
        
        case 9:
            label9.text = ""
            checkLoop -= 1
            label9.backgroundColor = UIColor.white
            
        case 8:
            label8.text = ""
            checkLoop -= 1
            label8.backgroundColor = UIColor.white
            
        case 7:
            label7.text = ""
            checkLoop -= 1
            label7.backgroundColor = UIColor.white
            
        case 6:
            label6.text = ""
            checkLoop -= 1
            label6.backgroundColor = UIColor.white
            submitButton.isEnabled = true
            
        default:
            print("donr now")
        }
            
        }
        
        if checkLoop >= 10 && checkPost <= 2{
            
  
        
        switch checkLoop {
        case 15:
            label15.text = ""
            checkLoop -= 1
            label15.backgroundColor = UIColor.white
            submitButton.isEnabled = false
        
        case 14:
            label14.text = ""
            checkLoop -= 1
            label14.backgroundColor = UIColor.white
            
        case 13:
            label13.text = ""
            checkLoop -= 1
            label13.backgroundColor = UIColor.white
            
        case 12:
            label12.text = ""
            checkLoop -= 1
            label12.backgroundColor = UIColor.white
            
        case 11:
            label11.text = ""
            checkLoop -= 1
            label11.backgroundColor = UIColor.white
            submitButton.isEnabled = true
            
        default:
            print("donr now")
        }
            
        }
        
        if checkLoop >= 15 && checkPost <= 3{
            
  
        
        switch checkLoop {
        case 20:
            label20.text = ""
            checkLoop -= 1
            label20.backgroundColor = UIColor.white
            submitButton.isEnabled = false
        
        case 19:
            label19.text = ""
            checkLoop -= 1
            label19.backgroundColor = UIColor.white
            
        case 18:
            label18.text = ""
            checkLoop -= 1
            label18.backgroundColor = UIColor.white
            
        case 17:
            label17.text = ""
            checkLoop -= 1
            label17.backgroundColor = UIColor.white
            
        case 16:
            label16.text = ""
            checkLoop -= 1
            label16.backgroundColor = UIColor.white
            submitButton.isEnabled = true
            
        default:
            print("Error")
        }
            
        }
        
//        if checkLoop == 4 && label5.text == ""{
//            label4.text = ""
//            checkLoop -= 1
//            label4.backgroundColor = UIColor.white
//
//        }
//
//        if checkLoop == 3 {
//            label3.text = ""
//            checkLoop -= 1
//            label3.backgroundColor = UIColor.white
//
//        }
//
//        if checkLoop == 2 {
//
//
//        }
//        if checkLoop == 1 {
//            label1.text = ""
//            checkLoop -= 1
//            label1.backgroundColor = UIColor.white
//
//        }
        
    }
    


}

//extension ViewController: UICollectionViewDelegate{
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//    }
//}
//
//extension ViewController: UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        return 25
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
//
//        for keyboard in keyboards {
//            cell.label.text=keyboard
//        }
//
//
//        return cell
//    }
//}

//extension ViewController: UICollectionViewDelegateFlowLayout{}


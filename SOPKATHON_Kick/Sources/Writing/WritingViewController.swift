//
//  WritingViewController.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/22.
//

import UIKit

class WritingViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var contentTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

        
                self.contentTextView.delegate = self
                contentTextView.text = "눌러서 내용을 입력해주세요."
                contentTextView.textColor = UIColor.init(red: 196/255, green: 196/255, blue: 196/255, alpha: 1)

            }
            
            
            func textViewDidBeginEditing(_ textView: UITextView) {
                if textView.textColor == UIColor.init(red: 196/255, green: 196/255, blue: 196/255, alpha: 1) {
                    textView.text = nil
                    textView.textColor = UIColor.black
                }
                
            }
            // TextView Place Holder
            func textViewDidEndEditing(_ textView: UITextView) {
                if textView.text.isEmpty {
                    textView.text = "제가 바로 PlaceHolder입니다."
                    textView.textColor = UIColor.lightGray
                }
            }

    
    



}



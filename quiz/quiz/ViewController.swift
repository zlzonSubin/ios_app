//
//  ViewController.swift
//  quiz
//
//  Created by 강수빈 on 07/08/2019.
//  Copyright © 2019 SubinKang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    
    var quizs = ["가는 날이" , "번갯불에" , "구더기 무서워" , "가재는" , "갈수록" , "칼로" , "종로에서 뺨 맞고" , "식은" , "새발의" , "도둑이" , "다 된 죽에" , "내 코가" , "그림의" , "늦게 배운 도둑이" , "울며" , "핑계 없는" , "한 술 밥에" , "호랑이도"]
    
    var indexNum = 0
    var quiz = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        quiz = quizs[indexNum]
        
        quizLabel.text = quiz
        
    }
    @IBAction func nextIndex(_ sender: Any) {
        if (indexNum != 18){
            indexNum += 1
        
            viewDidLoad()
        }
    }
    
    @IBAction func previousIndex(_ sender: Any) {
        if(indexNum == 0) {
            indexNum = 0
        } else {
            indexNum -= 1
        }
        
        viewDidLoad()
    }
    
}


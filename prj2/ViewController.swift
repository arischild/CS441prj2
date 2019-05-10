//
//  ViewController.swift
//  prj2
//
//  Created by Ari Schild on 5/1/19.
//  Copyright © 2019 Ari Schild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var a0: UILabel!
    @IBOutlet weak var a1: UILabel!
    @IBOutlet weak var a2: UILabel!
    @IBOutlet weak var a3: UILabel!
    @IBOutlet weak var b0: UILabel!
    @IBOutlet weak var b1: UILabel!
    @IBOutlet weak var b2: UILabel!
    @IBOutlet weak var b3: UILabel!
    @IBOutlet weak var c0: UILabel!
    @IBOutlet weak var c1: UILabel!
    @IBOutlet weak var c2: UILabel!
    @IBOutlet weak var c3: UILabel!
    @IBOutlet weak var d0: UILabel!
    @IBOutlet weak var d1: UILabel!
    @IBOutlet weak var d2: UILabel!
    @IBOutlet weak var d3: UILabel!
    @IBOutlet weak var header: UILabel!
    
    
    
    var colA = [UILabel]()
    var colB = [UILabel]()
    var colC = [UILabel]()
    var colD = [UILabel]()
    
    var row0 = [UILabel]()
    var row1 = [UILabel]()
    var row2 = [UILabel]()
    var row3 = [UILabel]()
    
    var cols = [[UILabel]]()
    var rows = [[UILabel]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colA = [a0, a1, a2, a3]
        colB = [b0, b1, b2, b3]
        colC = [c0, c1, c2, c3]
        colD = [d0, d1, d2 ,d3]
        
        row0 = [a0, b0, c0, d0]
        row1 = [a1, b1, c1, d1]
        row2 = [a2, b2, c2, d2]
        row3 = [a3, b3, c3, d3]
        
        cols = [colA, colB, colC, colD]
        rows = [row0, row1, row2, row3]
        
        for col in cols {
            for label in col {
                //add formatting and figure out how to expand labels
            }
        }
        
    }

    
    

    @IBAction func Up(_ sender: Any) {
        for col in cols {
            var i = 0
            var j = 1
            while i < 3 {
                let tempi = Int(col[i].text!)
                if tempi == 0 {
                    while j <= 3 {
                        let tempj = Int(col[j].text!)
                        if tempj! > 0 {
                            col[i].text = String("\(tempj!)")
                            col[j].text = String("\(0)")
                            j = 4
                        } else {
                            j = j + 1
                        }
                    }
                    j = i + 1
                }
                if tempi! > 0 {
                    while j <= 3 {
                        let tempj = Int(col[j].text!)
                        if tempj! > 0 {
                            if tempi! == tempj! {
                                col[i].text = String("\(tempi! + tempi!)")
                                if col[i].text == "2048" {
                                    header.text = "Congratulations! You have reached 2048"
                                }
                                col[j].text = String("\(0)")
                            }
                            j = 4
                        } else {
                            j = j + 1
                        }
                    }
                    
                    j = i + 1
                }
                i = i + 1
                j = i + 1
            }
        }
        d3.text = "\(2)"
    }
    
    @IBAction func Down(_ sender: Any) {
        for col in cols {
            var i = 3
            var j = 2
            while i > 0 {
                let tempi = Int(col[i].text!)
                if tempi! == 0 {
                    while j >= 0 {
                        let tempj = Int(col[j].text!)
                        if tempj! > 0 {
                            col[i].text = String("\(tempj!)")
                            col[j].text = String("\(0)")
                            j = -1
                        } else {
                            j = j - 1
                        }
                    }
                    j = i - 1
                }
                if tempi! > 0 {
                    while j >= 0 {
                        let tempj = Int(col[j].text!)
                        if tempj! > 0 {
                            if tempi! == tempj! {
                                col[i].text = String("\(tempi! +   tempi!)")
                                if col[i].text == "2048" {
                                    header.text = "Congratulations! You have reached 2048"
                                }
                                col[j].text = String("\(0)")
                            }
                            j = -1
                        } else {
                            j = j - 1
                        }
                    }
                    j = i - 1
                }
                i = i - 1
                j = i - 1
            }
        }
        a0.text = "\(2)"
    }
    
    @IBAction func Left(_ sender: Any) {
        for row in rows {
            var i = 0
            var j = 1
            while i < 3 {
                let tempi = Int(row[i].text!)
                if tempi == 0 {
                    while j <= 3 {
                        let tempj = Int(row[j].text!)
                        if tempj! > 0 {
                            row[i].text = String("\(tempj!)")
                            row[j].text = String("\(0)")
                            j = 4
                        } else {
                            j = j + 1
                        }
                    }
                    j = i + 1
                }
                if tempi! > 0 {
                    while j <= 3 {
                        let tempj = Int(row[j].text!)
                        if tempj! > 0 {
                            if tempi! == tempj! {
                                row[i].text = String("\(tempi! + tempi!)")
                                if row[i].text == "2048" {
                                    header.text = "Congratulations! You have reached 2048"
                                }
                                row[j].text = String("\(0)")
                            }
                            j = 4
                        } else {
                            j = j + 1
                        }
                    }
                    
                    j = i + 1
                }
                i = i + 1
                j = i + 1
            }
        }
        d3.text = "\(2)"
    }
    
    @IBAction func Right(_ sender: Any) {
        for row in rows {
            var i = 3
            var j = 2
            while i > 0 {
                let tempi = Int(row[i].text!)
                if tempi == 0 {
                    while j >= 0 {
                        let tempj = Int(row[j].text!)
                        if tempj! > 0 {
                            row[i].text = String("\(tempj!)")
                            row[j].text = String("\(0)")
                            j = -1
                        } else {
                            j = j - 1
                        }
                    }
                    j = i - 1
                }
                if tempi! > 0 {
                    while j >= 0 {
                        let tempj = Int(row[j].text!)
                        if tempj! > 0 {
                            if tempi! == tempj! {
                                row[i].text = String("\(tempi! +   tempi!)")
                                if row[i].text == "2048" {
                                    header.text = "Congratulations! You have reached 2048"
                                }
                                row[j].text = String("\(0)")
                            }
                            j = -1
                        } else {
                            j = j - 1
                        }
                    }

                    j = i - 1
                }
                i = i - 1
                j = i - 1
            }
        }
        a0.text = "\(2)"
    }
    
    
}


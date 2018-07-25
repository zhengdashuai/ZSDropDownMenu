//
//  ViewController.swift
//  ZSDropDownMenu
//
//  Created by 郑大帅 on 07/24/2018.
//  Copyright (c) 2018 郑大帅. All rights reserved.
//

import UIKit
import ZSDropDownMenu

class ViewController: UIViewController {
    
    var columnOneArray = ["A-1","A-2","A-3","A-4","A-5"]
    var columnTwoArray = ["B-1","B-2"]
    
    var columnthreeArray = ["C-1","C-2","C-3","C-4"]
    var columnFoureArray = ["D-1","D-2"]
    
    var TopTitleArr = ["科室","级别","病种","专题"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let menu = ZSDropDownMenu(origin: CGPoint(x: 0, y: 64), height: 40, width: self.view.frame.size.width)
        
        // Customize if required
        menu.textColor = UIColor.init(red: 102/255, green: 102/255, blue: 102/255, alpha: 1)
        //  menu.cellBgColor = UIColor.green
        //  menu.arrowColor = UIColor.black
        menu.cellSelectionColor = UIColor.white
        //  menu.textFont = UIFont.boldSystemFont(ofSize: 16.0)
        menu.updateColumnTitleOnSelection = false
        //   menu.arrowPostion = .Left
       // menu.showSeparatorLine = true
        menu.datasource = self
        menu.delegate = self
        self.view.addSubview(menu)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController : ZSDropDownMenuDelegate,ZSDropDownMenuDataSource {
    func TopTitle(column: Int, menu: ZSDropDownMenu) -> String {
        return TopTitleArr[column]
    }
    
    func numberOfColumns(in menu: ZSDropDownMenu) -> NSInteger {
        return 4
    }
    
    /* Override this method if you want to provide custom column title other than the first object of column array
     func titleFor(column: Int, menu: JNDropDownMenu) -> String {
     return "Column \(column)"
     }*/
    
    func numberOfRows(in column: NSInteger, for forMenu: ZSDropDownMenu) -> Int {
        switch column {
        case 0:
            return columnOneArray.count
        case 1:
            return columnTwoArray.count
        case 2:
            return columnthreeArray.count
        case 3:
            return columnFoureArray.count
        default:
            return 0
        }
    }
    
    func titleForRow(at indexPath: ZSIndexPath, for forMenu: ZSDropDownMenu) -> String {
        switch indexPath.column {
        case 0:
            return columnOneArray[indexPath.row ]
        case 1:
            return columnTwoArray[indexPath.row ]
        case 2:
            return columnthreeArray[indexPath.row ]
        case 3:
            return columnFoureArray[indexPath.row ]
            
        default:
            return ""
        }
    }
    
    func didSelectRow(at indexPath: ZSIndexPath, for forMenu: ZSDropDownMenu) {
        var str = ""
        switch indexPath.column {
        case 0:
            str = columnOneArray[indexPath.row]
            break
        case 1:
            str = columnTwoArray[indexPath.row]
        case 2:
           str =  columnthreeArray[indexPath.row ]
        case 3:
            str = columnFoureArray[indexPath.row ]
            break
        default:
            str = ""
        }
        print(str)
    }
}




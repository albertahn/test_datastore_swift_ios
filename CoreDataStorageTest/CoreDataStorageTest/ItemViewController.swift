//
//  ItemViewController.swift
//  CoreDataStorageTest
//
//  Created by albert on 7/18/15.
//  Copyright (c) 2015 albert. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var textFieldInfo: UITextField!
    @IBOutlet weak var textFieldQuant: UITextField!
    @IBOutlet weak var textFieldItem: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveTapped(sender: AnyObject) {
        
        //Refference to our app delegate
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        
        //reference moc
        
        let contxt: NSManagedObjectContext = appDel.managedObjectContext
        
        let en = NSEntityDescription.entityForName("List", inManagedObjectContext: contxt)
        
        
        //create instance of pur data model and initialize
        
        var newItem = Model(entity: en, insertIntoManagedObjectContext: contxt)
        
        //map our properties
        
        newItem.item = textFieldItem.text
        newItem.quant = textFieldQuant.text
        newItem.info = textFieldInfo.text
        
        //save to our context
        
        contxt.save(nil)
        
        println(newItem)
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
        
        //navigate back to root view controller
        
        
        
        
    }//savetapp
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}

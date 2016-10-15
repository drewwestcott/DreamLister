//
//  ItemDetailsVC.swift
//  dreamLister2
//
//  Created by Drew Westcott on 15/10/2016.
//  Copyright © 2016 Drew Westcott. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!

    var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        storePicker.dataSource = self
        storePicker.delegate = self

//        let store = Store(context: context)
//        store.name = "Apple"
//        let store2 = Store(context: context)
//        store2.name = "John Lewis"
//        let store3 = Store(context: context)
//        store3.name = "Amazon UK"
//        let store4 = Store(context: context)
//        store4.name = "PC World"
//        let store5 = Store(context: context)
//        store5.name = "eBay"
//        let store6 = Store(context: context)
//        store6.name = "Apple"
//        
//        ad.saveContext()
//
        getStores()
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let store = stores[row]
        return store.name
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return stores.count
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        
    }
    
    func getStores() {
        
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        
        do {
            
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
            
        } catch {
            
            let error = error as NSError
            
        }
    }
}

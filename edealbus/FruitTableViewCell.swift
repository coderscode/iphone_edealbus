//

//  FruitsTableViewController.swift

//  TableExample

//

//  Created by Ralf Ebert on 27.11.17.

//  Copyright © 2017 Example. All rights reserved.

//



import UIKit



//class FruitTableViewCell: UITableViewCell {

//    //@IBOutlet weak var label: UILabel!

//   // @IBOutlet weak var fruitImageView: UIImageView!

//

//    @IBOutlet weak var label: UILabel!

//

//    @IBOutlet weak var fruitImageView: UIImageView!

//

//}



class FruitsTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    
    
    @IBOutlet weak var messageTableView: UITableView!
    
    //@IBOutlet weak var messageTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //set yourself as the delegate and datasource here:
        messageTableView.delegate=self
        messageTableView.dataSource=self
        
        //set yourself as the delegate of the text field here:
        
        //set the tapgesture here:
        
        //register your messagecell.xib file here:
        messageTableView.register(UINib(nibName:"MessageCell",bundle:nil), forCellReuseIdentifier:"customMessageCell")
        configureTableView()
        
        
        
    }
    
    //TODO: Declare numeberOfRowsInSection here:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
    }
    
    
    //TODO: declare cellForRowAtIndexPath here:
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell",for:indexPath) as! CustomMessageCell
        let messageArray = ["1st msg","2nd msg","3rd msg"]
        cell.messageBody.text =  messageArray[indexPath.row]
        return cell
    }
    
    
    
    
    //TODO: Declare configureTableView here:
    func configureTableView()
    {
        messageTableView.rowHeight = UITableViewAutomaticDimension
        messageTableView.estimatedRowHeight = 120.0
    }
    
    
    
    
    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry", "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit", "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango", "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach", "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    
    
    // MARK: - Table view data source
    
    
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    
    //        return 1
    
    //    }
    
    //
    
    //    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    //        return fruits.count
    
    //    }
    
    
    
    //    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    //        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! FruitTableViewCell
    
    //
    
    //        let fruitName = fruits[indexPath.row]
    
    //        cell.label?.text = fruitName
    
    //        //cell.fruitImageView?.image = UIImage(named: fruitName)
    
    //        return cell
    
    //    }
    
    
    
}

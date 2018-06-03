//
//  TableViewControllerPersons.swift
//  Werkstuk1_DennisVanMalder
//
//  Created by student on 01/06/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class TableViewControllerPersons: UITableViewController {
    

    
    //get persons
    var personlist = personSingleton.instance.getPersons()

        //load
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        //warning
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        //sections
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //returns size of the array - used for knowing how many times it has to display something
            return personlist.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            //name
            cell.textLabel?.text = personlist[indexPath.row].firstName + " " + personlist[indexPath.row].lastName
            //image
            cell.imageView?.image = UIImage(named: personlist[indexPath.row].foto)
            return cell
        }
    //link to persondetails page https://stackoverflow.com/questions/28430663/send-data-from-tableview-to-detailview-swift?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
    
    // https://stackoverflow.com/questions/28315133/swift-pass-uitableviewcell-label-to-new-viewcontroller
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toDetails"
            {
                // initialize new view controller and cast it as your view controller
                let vc =  segue.destination as! personViewController2
                let indexPath = self.tableView.indexPathForSelectedRow
                // your new view controller should have property that will store passed value
                vc.p = personlist[(indexPath?.row)!]
            }
        }
*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "yourSegueIdentifer") {
            // initialize new view controller and cast it as your view controller
            // var to let
            let viewController = segue.destination as! personViewController2
            // your new view controller should have property that will store passed value
            let indexPath = self.tableView.indexPathForSelectedRow
            //indexpath not known ^ aanmaken
            viewController.p = personlist[(indexPath?.row)!]
        }
        
    }
}

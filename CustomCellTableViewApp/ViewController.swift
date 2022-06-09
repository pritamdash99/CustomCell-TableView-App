//
//  ViewController.swift
//  CustomCellTableViewApp
//
//  Created by Pritam Dash on 09/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var chatListTableView: UITableView!
    
    //adding data of users
    var chatUsers = Array<ChatUser>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //filldata in user array
        let u1 = ChatUser(userName: "Wolverine", statusText: "So... this is what it feels like.", lastTextTime: "01:59", imageOfUser: "WolverineImageSet")
        let u2 = ChatUser(userName: "Spider Man", statusText: "Remember, with great power comes great responsibility.", lastTextTime: "02:05", imageOfUser: "SpiderManImageSet")
        let u3 = ChatUser(userName: "Iron Man", statusText: "I AM IRONMAN", lastTextTime: "03:00", imageOfUser: "IronManImageSet")
        let u4 = ChatUser(userName: "Thanos", statusText: "I am inevitable.", lastTextTime: "00:00", imageOfUser: "ThanosImageSet")
        let u5 = ChatUser(userName: "Beast", statusText: "They only fight because they fear us. Because they don't yet understand", lastTextTime: "05:05", imageOfUser: "BeastImageSet")
        let u6 = ChatUser(userName: "Doctor Strange", statusText: "We never lose our demons, Mordo. We only learn to live above them.", lastTextTime: "09:54", imageOfUser: "DocterStrangeImageSet")
        let u7 = ChatUser(userName: "Silver Surfer", statusText: "My destiny still lies before me! And where it beckons — there shall soar the Silver Surfer!", lastTextTime: "12:01", imageOfUser: "SilverSurferImageSet")
        let u8 = ChatUser(userName: "Captain America", statusText: "I can do this all day.", lastTextTime: "01:59", imageOfUser: "CaptainAmericaImageSet")
        
        chatUsers = [u1,u2,u3,u4,u5,u6,u7,u8]
        
        //Add our cell design of chatList class i.e ChatListCell.xib to TableView
        //UINib class helps to hold the design of xib file.
        //We pass bundle = nil as our chatlistcell is in the main bundle not any other seperate bundle.
        let cellNib = UINib(nibName: "ChatListCell", bundle: nil )
        
        //attatching the cell to tableview
        chatListTableView.register(cellNib, forCellReuseIdentifier: "ChatListCell")
        
        //we need to tell the tableView that we have implemented the data source.
        chatListTableView.dataSource = self
        
        //we need to tell the tableView that we have implemented the delegate protocol.
        chatListTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //in whatsapp, there is just 1 section
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // displaying the UI of cell in row.
        //dequeueReusableCell method helps to loan the cell design
        //this method executes for each row of the tableView
        let cell = chatListTableView.dequeueReusableCell(withIdentifier: "ChatListCell", for: indexPath) as! ChatListCell
        //indexPath in the above specifies the row in which the cell gets generated.
        //as the return type is UITableViewCell we need to add as! ChatListCell for the "cell" object to recognise the properties of ChatListCell
        
        //get data of user from corresponding object of array and set it to the tableViewCell properties.
        let user = chatUsers[indexPath.row]
        cell.chatImageView.image = UIImage(named: user.imageOfUser)
        cell.statusUserLabel.text = user.statusText
        cell.statusUserLabel.numberOfLines = 0
        cell.userNameLabel.text = user.userName
        cell.lastTextTimingLabel.text = user.lastTextTime
        
        return cell
    }
    
    //handle list row selection
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //When user selects a row, this method will execute.
        let pos = indexPath.row
        let selectedUser = chatUsers[pos]
        print("Selected user is : ",selectedUser.userName)
    }


}


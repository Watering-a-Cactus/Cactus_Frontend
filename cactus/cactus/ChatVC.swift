//
//  ChatVC.swift
//  cactus
//
//  Created by 김영광 on 7/22/24.
//

import UIKit

class ChatVC: UIViewController, UITableViewDelegate {

    @IBOutlet weak var chatTalbeView: UITableView!
    
    var messages: [Message] = [
        Message(sender: "Me", body: "Hello"),
        Message(sender: "Me", body: "I love y")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTalbeView.dataSource = self
        chatTalbeView.delegate = self
        chatTalbeView.register(UINib(nibName: "myCell", bundle: nil), forCellReuseIdentifier: "ChatCell")
    
    }


}

extension ChatVC: UITableViewDataSource{
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath)
        
        return cell
    }
    
    
}

//
//  PostViewController.swift
//  Snapchat
//
//  Created by mbtec22 on 5/26/21.
//

import UIKit

class PostViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cellId"
    var posts : [Post] = [Post]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPostArray()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let currectLastItem = posts[indexPath.row]
        cell.textLabel?.text = "hola"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func createPostArray() {
        posts.append(Post(postName: "Post 1", postImage: #imageLiteral(resourceName: "post"), postDesc: "This is about Post 1"))
        posts.append(Post(postName: "Post 2", postImage: #imageLiteral(resourceName: "post"),postDesc: "This is about Post 2"))
        posts.append(Post(postName: "Post 3", postImage: #imageLiteral(resourceName: "post"),postDesc: "This is about Post 1"))
    }

}

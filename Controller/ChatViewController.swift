//
//  ChatViewController.swift
//  TalkApp
//
//  Created by AndyLin on 2022/9/14.
//

import UIKit

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    
    @IBOutlet weak var chatTableView: UITableView!
    
    let lyricsData = lyrics
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTableView()
        // Do any additional setup after loading the view.
    }
    
    func setTableView(){
        chatTableView.delegate = self
        chatTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lyricsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let singer = lyrics[indexPath.row]
        if singer.name == "Boy" {

        let cell = tableView.dequeueReusableCell(withIdentifier:
        "\(singer.name)TableViewCell", for: indexPath) as! BoyTableViewCell
            cell.boyImageView.image = UIImage(named: "\(singer.name)")
            cell.boyTextView.text = singer.content
        return cell
        } else {
        let cell = tableView.dequeueReusableCell(withIdentifier:"\(singer.name)TableViewCell", for: indexPath) as! GirlTableViewCell
            cell.girlImageView.image = UIImage(named: "\(singer.name)")
            cell.girlTextView.text = singer.content
        return cell
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

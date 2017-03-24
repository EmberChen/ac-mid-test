//
//  MovieViewController.swift
//  MovieApp
//
//  Created by Ember on 2017/3/24.
//  Copyright © 2017年 Ember. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var mainTableView: UITableView!
    
    @IBOutlet weak var mTitle: UILabel!
    @IBOutlet weak var mDetail: UILabel!
    
    let movieArray = ["我的少女時代", "美女與野獸"]
    let timeArray = ["上映日期: 2015-08-13","上映日期: 2017-03-25"]
    let imageArray = [UIImage(named: "ourtimes"),UIImage(named: "beauty")]
    let movieInfo = ["由優質偶像劇《命中注定我愛你》、《蘭陵王》等王牌電視劇製作人陳玉珊首執導演筒，集結影壇新星《等一個人咖啡》宋芸樺、《相愛的七種設計》王大陸、搖滾小王子李玉璽與社群網人氣美女簡廷芮(Dewi)主演。","《美女與野獸》（英語：Beauty and the Beast）是一部於2017年上映的美國浪漫奇幻歌舞電影，由比爾·坎登執導，並與埃文·斯皮里奧托普洛斯和史蒂芬·切波斯基共同撰寫劇本[1]。華特迪士尼影業及曼德維爾影業聯合製作[1]，該片為1991年同名動畫電影的真人翻拍版，以及改編自珍妮-瑪麗·勒普蘭斯·德博蒙所創作的1740年童話故事。電影主演包括艾瑪·華森、丹·史蒂文斯、路克·伊凡斯、凱文·克萊、喬許·蓋德、伊旺·麥奎格、史丹利·圖奇、伊恩·麥克連和艾瑪·湯普遜。電影講述貝兒被一個可怕的野獸俘虜於牠的魔法城堡中，她學會了不將目光侷限於牠的外表，並同時躲避想將自己奪回的自戀獵人。"]
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTime: UILabel!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = UIColor.orange
        tableView.separatorInset = UIEdgeInsetsMake(20, 20, 20, 20)
        return movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTableViewCell
        cell.cellTitle.text = movieArray[indexPath.row]
        cell.cellTime.text = timeArray[indexPath.row]
        cell.cellImage.image = imageArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "gotoDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoDetail"{
            if let indexPath = self.mainTableView.indexPathForSelectedRow{
                let dvc = segue.destination as! MovieDetailViewController
                dvc.infoFromMovie = movieInfo[indexPath.row]
                dvc.picFromMovie = imageArray[indexPath.row]
                dvc.navigationItem.title = movieArray[indexPath.row]
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}

//
//  ViewController.swift
//  CollectionViewBasicsSwift1
//
//  Created by Eshan Verma on 29/09/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var emojiDataObj = [EmojiData]()
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        fillData()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return emojiDataObj.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.myImage.image = UIImage(named: emojiDataObj[indexPath.row].image)
        cell.myLabel.text = emojiDataObj[indexPath.row].label
        return cell
    }
    
    private func fillData()  {
        let em1 = EmojiData(image: "angry", label: "Angry")
        emojiDataObj.append(em1)
        let em2 = EmojiData(image: "confused", label: "Confused")
        emojiDataObj.append(em2)
        let em3 = EmojiData(image: "confusing", label: "Confusing")
        emojiDataObj.append(em3)
        let em4 = EmojiData(image: "cool", label: "Cool")
        emojiDataObj.append(em4)
        let em5 = EmojiData(image: "grinning", label: "Grinning")
        emojiDataObj.append(em5)
        let em6 = EmojiData(image: "happy", label: "Happy")
        emojiDataObj.append(em6)
        let em7 = EmojiData(image: "laugh", label: "Laugh")
        emojiDataObj.append(em7)
        let em8 = EmojiData(image: "love", label: "Love")
        emojiDataObj.append(em8)
        let em9 = EmojiData(image: "sad", label: "Sad")
        emojiDataObj.append(em9)
        let em10 = EmojiData(image: "scare", label: "Scare")
        emojiDataObj.append(em10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 175)
    }
    
    func  collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16.0, bottom: 0, right: 16.0)
    }
    
}
    



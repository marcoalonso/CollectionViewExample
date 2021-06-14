//
//  ViewController.swift
//  CollectionViewPM2
//
//  Created by marco rodriguez on 14/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CollectionViewVideos: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionViewVideos.delegate = self
        CollectionViewVideos.dataSource = self
        CollectionViewVideos.collectionViewLayout = UICollectionViewFlowLayout()
    }


}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = CollectionViewVideos.dequeueReusableCell(withReuseIdentifier: "VideoCollectionViewCell", for: indexPath) as! VideoCollectionViewCell
        celda.configurar(video: videos[indexPath.row])
        return celda
    }
    
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(videos[indexPath.row].titulo)
        
    }
}


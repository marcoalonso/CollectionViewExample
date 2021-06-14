//
//  VideoCollectionViewCell.swift
//  CollectionViewPM2
//
//  Created by marco rodriguez on 14/06/21.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    
    func configurar(video: Video) {
        videoImageView.image = video.imagen
        tituloLabel.text = video.titulo
    }
}

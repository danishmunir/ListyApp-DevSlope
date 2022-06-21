//
//  ParallexTVCell.swift
//  ListyApp
//
//  Created by Danish Munir on 17/06/2022.
//

import UIKit

class ParallexTVCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpParallex()
    }

    func configureCell(with image: UIImage, andDescription desc: String)
    {
        imgView.image = image
        lbl.text = desc
    }
    func setUpParallex()
    {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.maximumRelativeValue = max
        yMotion.minimumRelativeValue = min
        
        let motionGroup = UIMotionEffectGroup()
        motionGroup.motionEffects = [xMotion, yMotion]
        
        imgView.addMotionEffect(motionGroup)
    }

}

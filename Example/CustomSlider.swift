//
//  SliderView.swift
//  CustomSlider
//
//  Created by TechexactlyMacMini2 on 30/11/23.
//

import Foundation
import UIKit

protocol SliderDelegate {
    func sliderValueChanged(value: Float)
}

public class CustomSlider: UIView {
    
    private var slider: CustomSliderView?
     var delegate: SliderDelegate?
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            setupView()
        }

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            setupView()
        }

        private func setupView() {
            // Customize your view here
//            backgroundColor = UIColor.green
            // Add a slider
            slider = CustomSliderView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
                   slider?.minimumValue = 0
                   slider?.maximumValue = 1
                   slider?.value = 0.5
                   slider?.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
                   addSubview(slider!)

            // Add any subviews or configure additional properties as needed
        }
    
    @objc private func sliderValueChanged(_ sender: UISlider) {
            // Handle slider value changes here
//            print("Slider value: \(sender.value)")
        delegate?.sliderValueChanged(value: sender.value)
        }
    
    func configureSlider(
        trackHeight: CGFloat,
        thumbRadius: CGFloat,
        borderWidth: CGFloat,
        thumbColor: UIColor,
        thumbBorderColor: UIColor,
        trackColor: UIColor){
            self.slider?.configureSlider(trackHeight: trackHeight, thumbRadius: thumbRadius, borderWidth: borderWidth, thumbColor: thumbColor, thumbBorderColor: thumbBorderColor, trackColor: trackColor)
        }
    

}


class CustomSliderView: UISlider {
    
     var trackHeight: CGFloat = 3
    
     var thumbRadius: CGFloat = 10
    
    var borderWidth: CGFloat = 1
    
    var thumbColor: UIColor = .white
    
    var thumbBorderColor: UIColor = .white
    
    // Custom thumb view which will be converted to UIImage
    // and set as thumb. You can customize it's colors, border, etc.
    
    private lazy var thumbView: UIView = {
        let thumb = UIView()
        thumb.backgroundColor = thumbColor
        thumb.layer.borderWidth = self.borderWidth
        thumb.layer.borderColor = self.thumbBorderColor.cgColor
        return thumb
        
    }()
    
    func configureSlider(
        trackHeight: CGFloat,
        thumbRadius: CGFloat,
        borderWidth: CGFloat,
        thumbColor: UIColor,
        thumbBorderColor: UIColor,
        trackColor: UIColor){
            self.trackHeight = trackHeight
            self.thumbRadius = thumbRadius
            self.borderWidth = borderWidth
            self.thumbBorderColor = thumbBorderColor
            self.thumbColor = thumbColor
            let thumb = thumbImage(radius: thumbRadius)
            setThumbImage(thumb, for: .normal)
            setThumbImage(thumb, for: .highlighted)
            self.tintColor = trackColor
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    private func thumbImage(radius: CGFloat) -> UIImage {
        
        thumbView.frame = CGRect(x: 0, y: radius / 2, width: radius, height: radius)
        thumbView.layer.cornerRadius = radius / 2
        
        let renderer = UIGraphicsImageRenderer(bounds: thumbView.bounds)
        return renderer.image { rendererContext in
            thumbView.layer.render(in: rendererContext.cgContext)
        }
    }
    
    override func trackRect(forBounds bounds: CGRect) -> CGRect {

        var newRect = super.trackRect(forBounds: bounds)
        newRect.size.height = trackHeight
        return newRect
    }
    
}

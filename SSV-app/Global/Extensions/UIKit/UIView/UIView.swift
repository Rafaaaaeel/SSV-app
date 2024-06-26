import UIKit

public extension UIView {
    
    var isVisible: Bool {
        get {
            layer.opacity >= 0
        } set {
            layer.opacity = newValue ? 1 : 0
        }
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
    }
    
    func addShadow(color: UIColor = .black,
                   opacity: Float = 0.4,
                   offset: CGSize = CGSize(width: 3, height: 6),
                   radius: CGFloat = 4) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }
    
}

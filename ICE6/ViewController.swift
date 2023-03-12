import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = .secondarySystemBackground
    }

    
    @IBAction func open_photos() {
        PhotoManager.shared.showActionSheet(vc: self)
        
        
        PhotoManager.shared.imagePickerBlock = {[weak self] image in
            guard let self = self else{
                return
            }
            self.imageView.image = image
        }
        
    }
    
}

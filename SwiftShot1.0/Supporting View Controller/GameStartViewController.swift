
import UIKit

class GameStartViewController: UIViewController {

    @IBOutlet weak var hostButton: UIButton!
    
    @IBOutlet weak var joinButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //两个按钮圆角处理
        hostButton.clipsToBounds = true
        hostButton.layer.cornerRadius = 30.0
        
        joinButton.clipsToBounds = true
        joinButton.layer.cornerRadius = 30.0
        
        
    }
    


}

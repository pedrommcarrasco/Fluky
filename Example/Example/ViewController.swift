import UIKit
import Fluky

class ViewController: UIViewController {


    override func loadView() {

        view = Fluky.view(with: .linear,
                          images: [UIImage(), UIImage(), UIImage(), UIImage()],
                          backgroundColor: .white)
    }
}

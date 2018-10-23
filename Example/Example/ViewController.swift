import UIKit
import Fluky

class ViewController: UIViewController {


    override func loadView() {

        let flukyView = Fluky.view(with: .single,
                       images: [UIImage(), UIImage(), UIImage(), UIImage()],
                       backgroundColor: .white)

        view = flukyView

        flukyView.start()


    }
}

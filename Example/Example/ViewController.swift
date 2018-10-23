import UIKit
import Fluky

class ViewController: UIViewController {

    let images = [UIImage(named: "icon1")!,
                  UIImage(named: "icon2")!,
                  UIImage(named: "icon3")!,
                  UIImage(named: "icon4")!]


    override func viewDidLoad() {
        super.viewDidLoad()

        let single = Fluky.view(with: .single, images: images, backgroundColor: .white)
        view.addSubview(single)
        single.translatesAutoresizingMaskIntoConstraints = false

        single.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        single.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        single.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        single.heightAnchor.constraint(equalToConstant: 60.0).isActive = true

        single.start()

        let linear = Fluky.view(with: .linear, images: images, backgroundColor: .white)
        view.addSubview(linear)
        linear.translatesAutoresizingMaskIntoConstraints = false

        linear.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        linear.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        linear.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        linear.heightAnchor.constraint(equalToConstant: 60.0).isActive = true

        linear.start()

        let box = Fluky.view(with: .box, images: images, backgroundColor: .white)
        view.addSubview(box)
        box.translatesAutoresizingMaskIntoConstraints = false

        box.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        box.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        box.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        box.heightAnchor.constraint(equalToConstant: 80.0).isActive = true

        box.start()
    }
}

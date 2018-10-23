import UIKit
import Fluky

class ViewController: UIViewController {

    let images = [UIImage(named: "icon1")!, UIImage(named: "icon2")!, UIImage(named: "icon3")!, UIImage(named: "icon4")!]

    override func viewDidLoad() {
        super.viewDidLoad()

        let single = Fluky.view(with: .single, images: images, backgroundColor: .white)
        let linear = Fluky.view(with: .linear, images: images, backgroundColor: .white)
        let box = Fluky.view(with: .box, images: images, backgroundColor: .white)

        let flukyViews = [single, linear, box]

        flukyViews.forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }

        NSLayoutConstraint.activate(
            [
                single.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                single.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                single.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                single.heightAnchor.constraint(equalToConstant: 60.0),

                linear.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                linear.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                linear.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                linear.heightAnchor.constraint(equalToConstant: 60.0),

                box.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                box.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                box.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                box.heightAnchor.constraint(equalToConstant: 80.0)
            ]
        )

        flukyViews.forEach { $0.start() }

        DispatchQueue.main.asyncAfter(deadline: .now() + 10,
                                      execute: { flukyViews.forEach { $0.stop() } })
    }
}

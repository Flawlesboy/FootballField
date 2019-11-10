//
//  TransitionHandler.swift
//  TheMovieList
//
//  Created by omar on 02/08/2019.
//  Copyright © 2019 zagid. All rights reserved.
//

import UIKit

protocol TransitionHandler: class {
    func openModule(_ viewController: UIViewController)
    func dismissView()
}

extension UIViewController: TransitionHandler {
    func openModule(_ viewController: UIViewController) {
        present(viewController, animated: true, completion: nil)
    }
    
    func dismissView() {
        dismiss(animated: true, completion: nil)
    }
}

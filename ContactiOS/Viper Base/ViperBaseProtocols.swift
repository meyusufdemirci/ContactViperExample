//
//  ViperBaseProtocols.swift
//  ContactiOS
//
//  Created by Yusuf Demirci on 24.02.2019.
//  Copyright © 2019 Yusuf Demirci. All rights reserved.
//

import UIKit

// MARK: Wireframe
protocol ViperBaseWireframeProtocol: class {}

// MARK: Presenter
protocol ViperBasePresenterProtocol: class {
    var interactor: ViperBaseInteractorInputProtocol! { get set }
    
    func showView(controller: UIViewController)
}

// MARK: Interactor
protocol ViperBaseInteractorOutputProtocol: class {
    func gotViewData(tableModel: TableModel)
}

protocol ViperBaseInteractorInputProtocol: class {
    var presenter: ViperBaseInteractorOutputProtocol!  { get set }
    
    func prepareViewData(controller: UIViewController, data: Any?)
}

// MARK: View
protocol ViperBaseViewProtocol: class {
    var presenter: ViperBasePresenterProtocol!  { get set }
    
    func reloadTable(tableModel: TableModel)
}

//
//  LifecycleUIViewController.swift
//  TraineeApp
//
//  Created by aternetas on 23.09.2024.
//

import UIKit
import OSLog

class LifecycleUIViewController: UIViewController {
    
    private let logger = Logger()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        logger.info("\(self.description) \(#function)")
    }
    
    /**
     View doesn't exist
     */
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        logger.info("\(self.description) \(#function)")
    }
    
    /**
     View exists. Its frame and bounds are equal,  e.g. for iPhone 15
     view.frame = (CGRect) (origin = (x = 0, y = 0), size = (width = 393, height = 852))
     view.bounds = (CGRect) (origin = (x = 0, y = 0), size = (width = 393, height = 852))
     View hierarchy (VH next) doesn't contain this view yet.
     
     Note: don't override this func if you use Interface Builder (IB next).
     */
    override func loadView() {
        super.loadView()
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        
        logger.info("\(self.description) \(#function)")
    }
    
    /**
     view.isOpaque = true
     view.isHidden = false
     view.isFocused = false
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logger.info("\(self.description) \(#function)")
    }
    
    /**
     Before animations are configurated for showing the view.
     view.isOpaque = true
     view.isHidden = false
     view.isFocused = false
     view.canBecomeFocused = false
     
     You can change device's orientation, status bar's style and add style for view.
     
     After this func view's existing check occurs - loadViewIfNeeded()
     */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        logger.info("\(self.description) \(#function)")
    }
    
    /**
     view.isOpaque = true
     view.isHidden = false
     view.isFocused = false
     view.canBecomeFocused = false
     
     view.superview is existed.
     
     */
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        logger.info("\(self.description) \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        logger.info("\(self.description) \(#function)")
    }
    
    deinit {
        logger.info("\(self.description) \(#function)")
    }
}

extension LifecycleUIViewController {
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocus(in: context, with: coordinator)
        
        logger.debug("\(self.description) \(#function)")
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        
        logger.debug("\(self.description) \(#function)")
    }
    
    override func viewLayoutMarginsDidChange() {
        super.viewLayoutMarginsDidChange()
        
        logger.debug("\(self.description) \(#function)")
    }
    
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        
        logger.debug("\(self.description) \(#function)")
    }
    
    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        
        logger.debug("\(self.description) \(#function)")
    }
}

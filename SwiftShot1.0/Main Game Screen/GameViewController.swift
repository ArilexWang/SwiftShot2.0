//
//  GameViewController.swift
//  SwiftShot1.0
//
//  Created by Ricardo on 2018/11/14.
//  Copyright © 2018 Ricardo. All rights reserved.
//

import UIKit
import ARKit
import SceneKit
import AVFoundation

class GameViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneView.delegate = self
        sceneView.session.delegate = self
        configureaARSession()
    }
    
    func configureaARSession() {
        let configuration = ARWorldTrackingConfiguration()
        configuration.isAutoFocusEnabled = true
        let options: ARSession.RunOptions
        configuration.planeDetection = [.horizontal]
        options = [.resetTracking, .removeExistingAnchors]
        sceneView.session.run(configuration, options: options)
    }
   

}

extension GameViewController: ARSessionDelegate {
    func session(_ session: ARSession, didUpdate frame: ARFrame) {
        //print(frame)
    }
}

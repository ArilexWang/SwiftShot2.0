

import ARKit

extension GameViewController: ARSCNViewDelegate{
    
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        print(anchor)
        return nil
    }
    
    
    func session(_ session: ARSession, cameraDidChangeTrackingState camera: ARCamera) {
        print(camera.trackingState)
        switch camera.trackingState {
        case .normal:
            print("normal")
        case .limited:
            print("limit")
        default:
            break
        }
    }
}

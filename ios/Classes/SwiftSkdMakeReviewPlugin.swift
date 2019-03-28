import Flutter
import UIKit

public class SwiftSkdMakeReviewPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "skd_make_review", binaryMessenger: registrar.messenger())
    let instance = SwiftSkdMakeReviewPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    let flutterMethod = call.method
    
    /*if flutterMethod == "makeReview" {
        // App Store URL.
         let applicationId =  (call.arguments as! Dictionary<String, Any>)["ios_app_id"] as! String
        
        let appStoreLink = "https://itunes.apple.com/us/app/apple-store/id\(applicationId)?mt=8"
        
        /* First create a URL, then check whether there is an installed app that can
         open it on the device. */
        if let url = URL(string: appStoreLink), UIApplication.shared.canOpenURL(url) {
            // Attempt to open the URL.
            UIApplication.shared.openURL(url) //(url, options: [:], completionHandler: {(success: Bool) in
        }
        
        result(true)
        }
    */

      result(true)

   // result(applicationId)
    }
}

//
//  TestJsonApp.swift
//  TestJson
//
//  Created by Alexey Govorovsky on 15.04.2024.
//

import SwiftUI

@main
struct TestJsonApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    @State var text: String?
    
    var body: some Scene {
        WindowGroup {
            ContentView(text: text)
                .onOpenURL { (incomingURL) in
                        // Handle url here
                    print(incomingURL.absoluteString)
                    handleIncomingURL(incomingURL)
                }
        }
    }
    
    private func handleIncomingURL(_ url: URL) {
        guard url.scheme == "file" else {
            return
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        
        guard let str = String(data: data, encoding: .utf8) else {
            return
        }
        
        print("opened content: \(str)")
        text = str
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication,
                     didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool
    {
        return true
    }
    
}

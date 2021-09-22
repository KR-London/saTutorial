//
//  SceneDelegate.swift
//  seanAllenTutorial
//
//  Created by Kate Roberts on 22/09/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
     //   let searchNavigationController = UINavigationController(rootViewController: SearchVC())
     //   SearchVC.tabB
     //   let favouritesNavigationController = UINavigationController(rootViewController: FavouritesVC())
        
        let tabVC = UITabBarController()
        tabVC.viewControllers = [createSearchNC(), createFaveNC()]
        tabVC.tabBar.tintColor = .blue
        tabVC.tabBar.backgroundColor = .gray
        tabVC.tabBar.alpha = 0.5
      
        
        
        self.window?.rootViewController = tabVC
        
        
        
      // self.window?.rootViewController = FeedPageViewController(frame: windowScene.coordinateSpace.bounds)
        
        self.window?.makeKeyAndVisible()
    }
    
    func createSearchNC() -> UINavigationController{
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFaveNC() -> UINavigationController{
        let faveVC = FavouritesVC()
        faveVC.title = "Favourites"
        faveVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        return UINavigationController(rootViewController: faveVC)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}


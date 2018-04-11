//
//  LoginViewController.swift
//  Password Keeper
//
//  Created by David Fisher on 4/11/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit
import Material

struct ButtonLayout {
  struct Raised {
    static let width: CGFloat = 150
    static let height: CGFloat = 44
    static let offsetY: CGFloat = -75
  }
}

class LoginViewController: UIViewController {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var emailPasswordCard: Card!
  @IBOutlet weak var emailPasswordCardContent: UIView!

  @IBOutlet weak var emailTextField: TextField!
  @IBOutlet weak var passwordTextField: TextField!

  @IBOutlet weak var emailPasswordLoginButton: RaisedButton!
  @IBOutlet weak var rosefireLoginButton: RaisedButton!
  @IBOutlet weak var googleLoginButton: UIView!
  //  @IBOutlet weak var googleLoginButton: GIDSignInButton!


  override func viewDidLoad() {
    super.viewDidLoad()
    prepareView()
  }

  func prepareView() {
    self.view.backgroundColor = Color.indigo.base
    titleLabel.font = RobotoFont.thin(with: 36)

    // Email / Password
    prepareEmailPasswordCard()

    // Rosefire
    rosefireLoginButton.title = "Rosefire Login"
    rosefireLoginButton.titleColor = .white
    rosefireLoginButton.titleLabel!.font = RobotoFont.medium(with: 18)
    rosefireLoginButton.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0, alpha: 0.9)
    rosefireLoginButton.pulseColor = .white
    view.layout(rosefireLoginButton)
      .width(ButtonLayout.Raised.width)
      .height(ButtonLayout.Raised.height)


    // Google OAuth

  }

  func prepareEmailPasswordCard() {
    emailPasswordCard.contentView = emailPasswordCardContent

    emailTextField.placeholder = "Email"
    emailTextField.isClearIconButtonEnabled = true
    emailTextField.placeholderActiveColor = Color.grey.darken2

    passwordTextField.placeholder = "Password"
    passwordTextField.clearButtonMode = .whileEditing
    passwordTextField.isVisibilityIconButtonEnabled = true
    passwordTextField.placeholderActiveColor = Color.grey.darken2

    let bottomBar = Bar()
    let signUpBtn: FlatButton = FlatButton()
    signUpBtn.pulseColor = Color.blue.lighten1
    signUpBtn.setTitle("Sign up", for: .normal)
    signUpBtn.setTitleColor(Color.blue.darken1, for: .normal)
    signUpBtn.addTarget(self,
                        action: #selector(handleEmailPasswordSignUp),
                        for: .touchUpInside)
    bottomBar.leftViews = [signUpBtn]

    let loginBtn: FlatButton = FlatButton()
    loginBtn.pulseColor = Color.blue.lighten1
    loginBtn.setTitle("Login", for: .normal)
    loginBtn.setTitleColor(Color.blue.darken1, for: .normal)
    loginBtn.addTarget(self,
                       action: #selector(handleEmailPasswordLogin),
                       for: .touchUpInside)
    bottomBar.rightViews = [loginBtn]
    emailPasswordCard.bottomBar = bottomBar

    emailPasswordCard.toolbarEdgeInsetsPreset = .square3
    emailPasswordCard.toolbarEdgeInsets.bottom = 0
    emailPasswordCard.toolbarEdgeInsets.right = 8
    emailPasswordCard.contentViewEdgeInsetsPreset = .wideRectangle3
    emailPasswordCard.bottomBarEdgeInsetsPreset = .wideRectangle2
  }

  // MARK: - Login Methods

  @objc func handleEmailPasswordSignUp() {
    print("TODO: Implement Email / Password Sign up")
  }


  @objc func handleEmailPasswordLogin() {
    print("TODO: Implement Email / Password Login")
  }


  @IBAction func rosefireLogin(_ sender: Any) {
    print("TODO: Implement Rosefire login")
  }

}

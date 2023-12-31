//
//  StartViewController.swift
//  Authorize
//
//  Created by Роман Зобнин on 04.07.2023.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    
    let loginTextField = CustomTextField(placeholder: "Введите имя", insets: UIEdgeInsets(top: DefaultEdgeInsets.top, left: DefaultEdgeInsets.left, bottom: DefaultEdgeInsets.bottom, right: DefaultEdgeInsets.right), password: false)
    let passwordTextField = CustomTextField(placeholder: "Введите пароль", insets: UIEdgeInsets(top: DefaultEdgeInsets.top, left: DefaultEdgeInsets.left, bottom: DefaultEdgeInsets.bottom, right: DefaultEdgeInsets.right), password: true)
    let repasswordTextField = CustomTextField(placeholder: "Повторите пароль", insets: UIEdgeInsets(top: DefaultEdgeInsets.top, left: DefaultEdgeInsets.left, bottom: DefaultEdgeInsets.bottom, right: DefaultEdgeInsets.right), password: true)
    let buttomLogin = UIButton(type: UIButton.ButtonType.system)

    
    enum UIConstant {
        static let TFWigth: Int = 300
        static let TFindent: Int = 15
    }
    
    enum DefaultEdgeInsets {
        static let top: CGFloat = 8.0
        static let left: CGFloat = 8.0
        static let bottom: CGFloat = 8.0
        static let right: CGFloat = 8.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        inicializate()
    }
}

private extension StartViewController {
    //MARK: - Inicializate VC
    func inicializate(){
        createPasswordTF()
        createLoginTF()
        createRepasswordTF()
        createBottomLogin()
    }
    //MARK: - create elements
    func createPasswordTF() {
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(UIConstant.TFWigth)
        }
    }
    
    func createLoginTF() {
        view.addSubview(loginTextField)
        loginTextField.snp.makeConstraints { make in
            make.centerX.equalTo(passwordTextField)
            make.bottom.equalTo(passwordTextField.snp.top).offset(-UIConstant.TFindent)
            make.width.equalTo(UIConstant.TFWigth)
        }
    }
    func createRepasswordTF() {
        view.addSubview(repasswordTextField)
        repasswordTextField.snp.makeConstraints { make in
            make.centerX.equalTo(loginTextField)
            make.top.equalTo(passwordTextField.snp.bottom).offset(UIConstant.TFindent)
            make.width.equalTo(UIConstant.TFWigth)
        }
    }
    
    func createBottomLogin() {
        buttomLogin.backgroundColor = .blue
        buttomLogin.setTitle("Login", for: .normal)
        buttomLogin.layer.cornerRadius = 10
        buttomLogin.setTitleColor(UIColor.white, for: UIControl.State.normal)
        view.addSubview(buttomLogin)
        
        buttomLogin.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(80)
            make.top.equalTo(repasswordTextField.snp.bottom).offset(UIConstant.TFindent)
        }
    }
}

//
//  EditProfileViewController.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/21.
//

import UIKit
import SnapKit
import CoreData

class EditProfileViewController: UIViewController {
    
    var viewModel: EditProfileViewModel!
    
    let userImage: UIImageView = {
        $0.image = UIImage(named: "르탄이")
        return $0
    }(UIImageView())
    
    let nameTextField: UITextField = {
        $0.placeholder = "이름을 입력해 주세요."
        $0.textAlignment = .center
        $0.layer.borderColor = UIColor.lightGray.cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 8
        return $0
    }(UITextField())
    
    let ageTextField: UITextField = {
        $0.placeholder = "나이를 입력해 주세요."
        $0.textAlignment = .center
        $0.layer.borderColor = UIColor.lightGray.cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 8
        return $0
    }(UITextField())
    
    let completeButton: UIButton = {
        $0.setTitle("수정", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.tintColor = .systemBlue
        $0.layer.borderColor = UIColor.systemBlue.cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 8
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        self.viewModel = EditProfileViewModel(context: context)
        
        setUI()
        setConstraint()
        setAddTarget()
        populateUserData()
    }
    
    func setUI() {
        view.backgroundColor = .white
        
        view.addSubview(userImage)
        view.addSubview(nameTextField)
        view.addSubview(ageTextField)
        view.addSubview(completeButton)
    }
    
    func setConstraint() {
        userImage.snp.makeConstraints {
            $0.width.equalTo(88)
            $0.height.equalTo(88)
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(120)
            $0.centerX.equalToSuperview()
        }
        
        nameTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(userImage.snp.bottom).offset(28)
            $0.width.equalTo(160)
            $0.height.equalTo(32)
        }
        
        ageTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(nameTextField.snp.bottom).offset(20)
            $0.width.equalTo(160)
            $0.height.equalTo(32)
        }
        
        completeButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(ageTextField.snp.bottom).offset(20)
            $0.width.equalTo(80)
            $0.height.equalTo(32)
        }
    }
    
    func setAddTarget() {
        completeButton.addTarget(self, action: #selector(completeButtonTapped), for: .touchUpInside)
    }
    
    @objc func completeButtonTapped() {
        let name = nameTextField.text
        let age = Int64(ageTextField.text ?? "") ?? 0
        viewModel.saveUserData(name: name, age: age)
        dismiss(animated: true)
    }
    
    func populateUserData() {
        let (name, age) = viewModel.fetchUserData()
        nameTextField.text = name
        if let age = age {
            ageTextField.text = "\(age)"
        } else {
            ageTextField.text = ""
        }
    }
    
}

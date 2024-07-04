//
//  NikeProductCardViewController.swift
//  MultipleProject
//
//  Created by Devank on 04/05/24.
//

import UIKit
//
//class NikeProductCardViewController: UIViewController {
//
//    let cardView: UIView = {
//            let view = UIView()
//            view.backgroundColor = UIColor(red: 0.6, green: 0.8, blue: 1.0, alpha: 1.0)
//            view.layer.cornerRadius = 10
//            view.clipsToBounds = true
//            return view
//        }()
//
//        let imageView: UIImageView = {
//            let imageView = UIImageView(image: UIImage(named: "nikle"))
//            imageView.contentMode = .scaleAspectFit
//            imageView.translatesAutoresizingMaskIntoConstraints = false
//            return imageView
//        }()
//
//        let nameLabel: UILabel = {
//            let label = UILabel()
//            label.text = "Nike Shoes"
//            label.font = UIFont.boldSystemFont(ofSize: 16)
//            label.translatesAutoresizingMaskIntoConstraints = false
//            return label
//        }()
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            view.backgroundColor = .white
//
//            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
//            view.addGestureRecognizer(tapGestureRecognizer)
//
//            view.addSubview(cardView)
//            cardView.addSubview(imageView)
//            cardView.addSubview(nameLabel)
//
//            cardView.translatesAutoresizingMaskIntoConstraints = false
//            NSLayoutConstraint.activate([
//                cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//                cardView.widthAnchor.constraint(equalToConstant: 200),
//                cardView.heightAnchor.constraint(equalToConstant: 200),
//
//                imageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
//                imageView.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
//                imageView.widthAnchor.constraint(equalToConstant: 100),
//                imageView.heightAnchor.constraint(equalToConstant: 100),
//
//                nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
//                nameLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor)
//            ])
//        }
//
//        @objc func handleTap() {
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
//                self.cardView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//            }) { _ in
//                UIView.animate(withDuration: 0.5, delay: 2.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
//                    self.cardView.transform = .identity
//                })
//            }
//        }
//   }






class NikeProductCardViewController: UIViewController {
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    private let nikeShoesImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "nikle")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let nikeShoesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nike Shoes"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 32)
        return label
    }()
    
    private let sizeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Size : "
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let sizeScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = false
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    private let sizeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let colorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Colors : "
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let colorScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = false
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    private let colorStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let buyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Buy Now", for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(buyButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private var sizeLabels: [UILabel] = []
    private var colorViews: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        setupContainerView()
        setupNikeShoesImageView()
        setupNikeShoesLabel()
        setupSizeLabel()
        setupSizeScrollView()
        setupSizeStackView()
        setupColorLabel()
        setupColorScrollView()
        setupColorStackView()
        setupBuyButton()
        
        addSizes()
        addColors()
        
        setupConstraints()
    }
    
    private func setupContainerView() {
        view.addSubview(containerView)
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    private func setupNikeShoesImageView() {
        containerView.addSubview(nikeShoesImageView)
        nikeShoesImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        nikeShoesImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        nikeShoesImageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        nikeShoesImageView.heightAnchor.constraint(equalToConstant: 270).isActive = true
    }
    
    private func setupNikeShoesLabel() {
        containerView.addSubview(nikeShoesLabel)
        nikeShoesLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30).isActive = true
        nikeShoesLabel.topAnchor.constraint(equalTo: nikeShoesImageView.bottomAnchor, constant: 80).isActive = true
    }
    
    private func setupSizeLabel() {
        containerView.addSubview(sizeLabel)
        sizeLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30).isActive = true
        sizeLabel.topAnchor.constraint(equalTo: nikeShoesLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    private func setupSizeScrollView() {
        containerView.addSubview(sizeScrollView)
        sizeScrollView.leadingAnchor.constraint(equalTo: sizeLabel.leadingAnchor).isActive = true
        sizeScrollView.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 10).isActive = true
        sizeScrollView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        sizeScrollView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupSizeStackView() {
        sizeScrollView.addSubview(sizeStackView)
        sizeStackView.leadingAnchor.constraint(equalTo: sizeScrollView.leadingAnchor).isActive = true
        sizeStackView.topAnchor.constraint(equalTo: sizeScrollView.topAnchor).isActive = true
        sizeStackView.trailingAnchor.constraint(equalTo: sizeScrollView.trailingAnchor).isActive = true
        sizeStackView.bottomAnchor.constraint(equalTo: sizeScrollView.bottomAnchor).isActive = true
    }
    
    private func setupColorLabel() {
        containerView.addSubview(colorLabel)
        colorLabel.leadingAnchor.constraint(equalTo: sizeLabel.leadingAnchor).isActive = true
        colorLabel.topAnchor.constraint(equalTo: sizeScrollView.bottomAnchor, constant: 10).isActive = true
    }
    
    private func setupColorScrollView() {
        containerView.addSubview(colorScrollView)
        colorScrollView.leadingAnchor.constraint(equalTo: colorLabel.leadingAnchor).isActive = true
        colorScrollView.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 10).isActive = true
        colorScrollView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        colorScrollView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupColorStackView() {
        colorScrollView.addSubview(colorStackView)
        colorStackView.leadingAnchor.constraint(equalTo: colorScrollView.leadingAnchor).isActive = true
        colorStackView.topAnchor.constraint(equalTo: colorScrollView.topAnchor).isActive = true
        colorStackView.trailingAnchor.constraint(equalTo: colorScrollView.trailingAnchor).isActive = true
        colorStackView.bottomAnchor.constraint(equalTo: colorScrollView.bottomAnchor).isActive = true
    }
    
    private func setupBuyButton(){
        containerView.addSubview(buyButton)
        buyButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30).isActive = true
        buyButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30).isActive = true
        buyButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12).isActive = true
        buyButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func addSizes() {
        let sizeNames = ["7", "8", "9", "10"]
        for sizeName in sizeNames {
            let sizeLabel = UILabel()
            sizeLabel.translatesAutoresizingMaskIntoConstraints = false
            sizeLabel.text = sizeName
            sizeLabel.textColor = .white
            sizeLabel.font = UIFont.systemFont(ofSize: 16)
            sizeLabel.layer.cornerRadius = 6
            sizeLabel.layer.borderWidth = 1
            sizeLabel.layer.borderColor = UIColor.white.cgColor
            sizeLabel.clipsToBounds = true
            sizeStackView.addArrangedSubview(sizeLabel)
            self.sizeLabels.append(sizeLabel)
        }
    }
    
    private func addColors() {
        let colorNames = ["Green", "Red", "Yellow"]
        for colorName in colorNames {
            let colorView = UIView()
            colorView.translatesAutoresizingMaskIntoConstraints = false
            colorView.backgroundColor = UIColor(named: colorName)
            colorView.layer.cornerRadius = 10
            colorStackView.addArrangedSubview(colorView)
            self.colorViews.append(colorView)
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nikeShoesImageView.widthAnchor.constraint(equalToConstant: 293),
            nikeShoesLabel.leadingAnchor.constraint(equalTo: nikeShoesImageView.trailingAnchor, constant: 30),
            sizeLabel.leadingAnchor.constraint(equalTo: nikeShoesLabel.leadingAnchor),
            sizeScrollView.leadingAnchor.constraint(equalTo: sizeLabel.leadingAnchor),
            colorLabel.leadingAnchor.constraint(equalTo: sizeLabel.leadingAnchor),
            colorScrollView.leadingAnchor.constraint(equalTo: colorLabel.leadingAnchor),
        ])
    }
    
    @objc private func buyButtonTapped() {
        print("Buy button tapped!")
    }
}

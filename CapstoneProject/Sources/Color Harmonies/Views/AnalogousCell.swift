//
//  AnalogousCell.swift
//  ColorHarmonies
//
//  Created by Jairo Eli de Leon on 10/12/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class AnalogousCell: UICollectionViewCell {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  var updatedAnalogous: AnalogousHarmony? {
    didSet {

      // Current Color
      if let currentColor = updatedAnalogous?.currentColorBackground {
        analogousBackgroundColor.backgroundColor = currentColor
      }

      if let currentColorLabel = updatedAnalogous?.hexLabel {
        analogousLabel.text = currentColorLabel
      }

      if let labelColor = updatedAnalogous?.hexLabelColor {
        analogousLabel.textColor = labelColor
      }

      // Analogous #1
      if let analogous1 = updatedAnalogous?.analogousColor {
        analogousBackgroundColor1.backgroundColor = analogous1
      }

      if let analoLabel = updatedAnalogous?.analogousLabel {
        analogousLabel2.text = analoLabel
      }

      if let analoLabelColor = updatedAnalogous?.analogousLabelColor {
        analogousLabel2.textColor = analoLabelColor
      }

      // Analogous #2
      if let analogous2 = updatedAnalogous?.analogousColor2 {
        analogousBackgroundColor2.backgroundColor = analogous2
      }

      if let analoLabel2 = updatedAnalogous?.analogousLabel2 {
        analogousLabel3.text = analoLabel2
      }

      if let anloLabelColor2 = updatedAnalogous?.analogousLabelColor2 {
        analogousLabel3.textColor = anloLabelColor2
      }

    }
  }

  // MARK: Properties

  let clearBackground = UIView {
    $0.backgroundColor = .clear
  }

  let analogousBackgroundColor = UIView {
    $0.backgroundColor = DynamicColor(hex: 0xF44336)
  }

  let analogousBackgroundColor1 = UIView {
    $0.backgroundColor = DynamicColor(hex: 0xF4A236) // F44336
  }

  let analogousBackgroundColor2 = UIView {
    $0.backgroundColor = DynamicColor(hex: 0xE7F436)
  }

  let analogousLabel = UILabel {
    $0.text = "#F44336"
    $0.textColor = .white
    $0.font = FontBook.Medium.of(size: 38)
  }

  let analogousLabel2 = UILabel {
    $0.text = "#F4A236"
    $0.textColor = Eden.Independence.color
    $0.font = FontBook.Medium.of(size: 38)
  }

  let analogousLabel3 = UILabel {
    $0.text = "#E7F436"
    $0.textColor = Eden.Independence.color
    $0.font = FontBook.Medium.of(size: 38)
  }

  // MARK: Setup

  func setupViews() {
    addSubview(clearBackground)
    addSubview(analogousBackgroundColor)
    addSubview(analogousBackgroundColor1)
    addSubview(analogousBackgroundColor2)
    addSubview(analogousLabel)
    addSubview(analogousLabel2)
    addSubview(analogousLabel3)

    self.clearBackground.snp.makeConstraints { make in
      make.top.left.right.equalToSuperview()
      make.height.equalTo(200)
    }

    self.analogousBackgroundColor.snp.makeConstraints { make in
      make.top.equalTo(self.clearBackground.snp.bottom)
      make.left.right.equalToSuperview()
      make.height.equalTo((frame.height - 200) / 3)
    }

    self.analogousLabel.snp.makeConstraints { make in
      make.top.equalTo(self.analogousBackgroundColor.snp.centerY).offset(-20)
      make.centerX.equalToSuperview()
    }

    self.analogousBackgroundColor1.snp.makeConstraints { make in
      make.top.equalTo(self.analogousBackgroundColor.snp.bottom)
      make.left.right.equalToSuperview()
      make.height.equalTo((frame.height - 200) / 3)
    }

    self.analogousLabel2.snp.makeConstraints { make in
      make.top.equalTo(self.analogousBackgroundColor1.snp.centerY).offset(-20)
      make.centerX.equalToSuperview()
    }

    self.analogousBackgroundColor2.snp.makeConstraints { make in
      make.top.equalTo(self.analogousBackgroundColor1.snp.bottom)
      make.left.right.equalToSuperview()
      make.height.equalTo((frame.height - 200) / 3)
    }

    self.analogousLabel3.snp.makeConstraints { make in
      make.top.equalTo(self.analogousBackgroundColor2.snp.centerY).offset(-20)
      make.centerX.equalToSuperview()
    }

  }

}

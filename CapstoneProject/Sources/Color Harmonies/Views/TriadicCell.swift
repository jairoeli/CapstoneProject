//
//  TriadicCell.swift
//  ColorHarmonies
//
//  Created by Jairo Eli de Leon on 10/12/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class TriadicCell: UICollectionViewCell {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  var updatedTriadic: TradicHarmony? {
    didSet {

      // Current Color
      if let currentColor = updatedTriadic?.currentColorBackground {
        triadicBackgroundColor.backgroundColor = currentColor
      }

      if let currentColorLabel = updatedTriadic?.hexLabel {
        triadicLabel.text = currentColorLabel
      }

      if let labelColor = updatedTriadic?.hexLabelColor {
        triadicLabel.textColor = labelColor
      }

      // Tradic #1
      if let triadic1 = updatedTriadic?.tridadicColor {
        triadicBackgroundColor2.backgroundColor = triadic1
      }

      if let triLabel = updatedTriadic?.tridadicLabel {
        triadicLabel2.text = triLabel
      }

      if let triLabelColor = updatedTriadic?.tridadicLabelColor {
        triadicLabel2.textColor = triLabelColor
      }

      // Tradic #2
      if let triadic2 = updatedTriadic?.tridadicColor2 {
        triadicBackgroundColor3.backgroundColor = triadic2
      }

      if let triLabel2 = updatedTriadic?.tridadicLabel2 {
        triadicLabel3.text = triLabel2
      }

      if let triLabelColor2 = updatedTriadic?.tridadicLabelColor2 {
        triadicLabel3.textColor = triLabelColor2
      }

    }
  }

  // MARK: Properties

  let clearBackground = UIView {
    $0.backgroundColor = .clear
  }

  let triadicBackgroundColor = UIView {
    $0.backgroundColor = DynamicColor(hex: 0xF44336)
  }

  let triadicBackgroundColor2 = UIView {
    $0.backgroundColor = DynamicColor(hex: 0x36F443)
  }

  let triadicBackgroundColor3 = UIView {
    $0.backgroundColor = DynamicColor(hex: 0x4336F4)
  }

  let triadicLabel = UILabel {
    $0.text = "#F44336"
    $0.textColor = .white
    $0.font = FontBook.Medium.of(size: 38)
  }

  let triadicLabel2 = UILabel {
    $0.text = "#36F443"
    $0.textColor = Eden.Independence.color
    $0.font = FontBook.Medium.of(size: 38)
  }

  let triadicLabel3 = UILabel {
    $0.text = "#4336F4"
    $0.textColor = .white
    $0.font = FontBook.Medium.of(size: 38)
  }

  // MARK: Setup

  func setupViews() {
    addSubview(clearBackground)
    addSubview(triadicBackgroundColor)
    addSubview(triadicBackgroundColor2)
    addSubview(triadicBackgroundColor3)
    addSubview(triadicLabel)
    addSubview(triadicLabel2)
    addSubview(triadicLabel3)

    self.clearBackground.snp.makeConstraints { make in
      make.top.left.right.equalToSuperview()
      make.height.equalTo(200)
    }

    self.triadicBackgroundColor.snp.makeConstraints { make in
      make.top.equalTo(self.clearBackground.snp.bottom)
      make.left.right.equalToSuperview()
      make.height.equalTo((frame.height - 200) / 3)
    }

    self.triadicLabel.snp.makeConstraints { make in
      make.top.equalTo(self.triadicBackgroundColor.snp.centerY).offset(-20)
      make.centerX.equalToSuperview()
    }

    self.triadicBackgroundColor2.snp.makeConstraints { make in
      make.top.equalTo(self.triadicBackgroundColor.snp.bottom)
      make.left.right.equalToSuperview()
      make.height.equalTo((frame.height - 200) / 3)
    }

    self.triadicLabel2.snp.makeConstraints { make in
      make.top.equalTo(self.triadicBackgroundColor2.snp.centerY).offset(-20)
      make.centerX.equalToSuperview()
    }

    self.triadicBackgroundColor3.snp.makeConstraints { make in
      make.top.equalTo(self.triadicBackgroundColor2.snp.bottom)
      make.left.right.equalToSuperview()
      make.height.equalTo((frame.height - 200) / 3)
    }

    self.triadicLabel3.snp.makeConstraints { make in
      make.top.equalTo(self.triadicBackgroundColor3.snp.centerY).offset(-20)
      make.centerX.equalToSuperview()
    }

  }

}

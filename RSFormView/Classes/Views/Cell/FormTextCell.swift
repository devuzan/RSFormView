//
//  FormTextCell.swift
//  RSFormView
//
//  Created by Germán Stábile on 3/12/19.
//  Copyright © 2019 Rootstrap. All rights reserved.
//

import Foundation
import UIKit

class FormTextCell: FormTableViewCell {
  
  static let reuseIdentifier = "FormTextCellIdentifier"
  @IBOutlet weak var formTextLabel: UILabel!
  @IBOutlet weak var headerLabelTopMarginConstraint: NSLayoutConstraint!
  @IBOutlet weak var headerLabelBottomMarginConstraint: NSLayoutConstraint!
  
  override func update(with formItem: FormItem, and formConfigurator: FormConfigurator) {
    headerLabelTopMarginConstraint.constant = formItem.contraintsConfigurator.headerLabelTopMargin
    headerLabelBottomMarginConstraint.constant = formItem.contraintsConfigurator.headerLabelBottomMargin
    formTextLabel.attributedText = formItem.attributedText
  }
}

//
//  ViewController.swift
//  ASDKBaselineIssueDemo
//
//  Created by Adlai Holler on 4/27/16.
//  Copyright © 2016 Adlai Holler. All rights reserved.
//

import UIKit
import AsyncDisplayKit

final class ViewController: ASViewController {
	init() {
		super.init(node: TestNode())
		node.backgroundColor = UIColor.whiteColor()
	}

	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
	override func prefersStatusBarHidden() -> Bool {
		return true
	}
}

final class TestNode: ASDisplayNode {
	let textA = ASTextNode()
	let textB = ASTextNode()
	
	override init() {
		super.init()
		usesImplicitHierarchyManagement = true
		textA.attributedString = NSAttributedString(string: "Hello")
		textB.attributedString = NSAttributedString(string: "world!")
	}
	
	override func layoutSpecThatFits(constrainedSize: ASSizeRange) -> ASLayoutSpec {
		return ASStackLayoutSpec(
			direction: .Horizontal,
			spacing: 0,
			justifyContent: .SpaceBetween,
			alignItems: .BaselineFirst,
			children: [
				textA,
				textB
			])
	}
}

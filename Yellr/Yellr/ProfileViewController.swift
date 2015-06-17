//
//  ProfileViewController.swift
//  Yellr
//
//  Created by Debjit Saha on 6/15/15.
//  Copyright (c) 2015 wxxi. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var resetCuidButton: UIBarButtonItem!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var cuidValue: UILabel!
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var verified: UILabel!
    @IBOutlet weak var userLogo: UILabel!
    
    @IBOutlet weak var postsLogo: UILabel!
    @IBOutlet weak var postsViewedLogo: UILabel!
    @IBOutlet weak var postsUsedLogo: UILabel!
    @IBOutlet weak var postsLabel: UILabel!
    @IBOutlet weak var postsViewedLabel: UILabel!
    @IBOutlet weak var postsUsedLabel: UILabel!
    @IBOutlet weak var postsCount: UILabel!
    @IBOutlet weak var postsViewedCount: UILabel!
    @IBOutlet weak var postsUsedCount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = NSLocalizedString(YellrConstants.Profile.Title, comment: "Profile Screen title")
        self.cancelButton.title =  NSLocalizedString(YellrConstants.Common.BackButton, comment: "Profile Screen back button")
        self.resetCuidButton.title = NSLocalizedString(YellrConstants.Profile.ResetCUIDButton, comment: "Profile Screen Reset CUID button")
        
        self.cuidValue.text = "CUID: " + getCUID()
        
        self.postsLogo.font = UIFont.fontAwesome(size: 13)
        self.postsLogo.text =  "\(String.fontAwesome(unicode: 0xf086)) "
        self.postsViewedLogo.font = UIFont.fontAwesome(size: 13)
        self.postsViewedLogo.text =  "\(String.fontAwesome(unicode: 0xf086)) "
        self.postsUsedLogo.font = UIFont.fontAwesome(size: 13)
        self.postsUsedLogo.text =  "\(String.fontAwesome(unicode: 0xf086)) "
        
        self.userLogo.backgroundColor = UIColorFromRGB(YellrConstants.Colors.dark_yellow)
        
        self.postsLabel.text = NSLocalizedString(YellrConstants.Profile.PostsLabel, comment: "Profile Screen Posts")
        self.postsViewedLabel.text = NSLocalizedString(YellrConstants.Profile.PostsViewedLabel, comment: "Profile Screen Posts Viewed")
        self.postsUsedLabel.text = NSLocalizedString(YellrConstants.Profile.PostsUsedLabel, comment: "Profile Screen Posts Used")
        
    }
    
    //dismiss the profilemodal on pressing cancel
    @IBAction func cancelPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil);
    }

    @IBAction func resetCUIDPressed(sender: UIBarButtonItem) {
    }
}
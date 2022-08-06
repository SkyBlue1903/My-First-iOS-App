//
//  ViewController.swift
//  My First App
//
//  Created by Erlangga Anugrah Arifin on 06/08/22.
//

import UIKit

class ProfileViewController: UIViewController {

    // deklarasi tampilan
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var followedButton: UIButton! // tombol ikuti
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
    }
    
    private var angka = 1
    private var isFollow = false
    @IBAction func setFollowed(_ sender: UIButton) { // aksi ketika user menekan tombol
//        if let url = NSURL(string: "https://instagram.com/anugrahangga"){
//            UIApplication.shared.openURL(url as URL)
//        }
//        followedButton.setTitle( "Following", for: .normal) // Mengganti teks dalam button.
        isFollow = !isFollow
          followedButton.setTitle(isFollow ? "Mengikuti" : "Ikuti", for: .normal)
    }
    
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 0 // Menentukan lebar dari border/garis batas.
        profileImageView.layer.masksToBounds = false // Menentukan apakah perlu melakukan masking atau tidak.
        profileImageView.layer.borderColor = UIColor.black.cgColor // Menentukan warna border.
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2 // Menentukan apakah sudutnya akan membulat (rounded) atau tidak.
        profileImageView.clipsToBounds = true // Menentukan apakah subview terbatas pada batas tampilan atau tidak.
      }

}


//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Philip on 2/24/19.
//  Copyright © 2019 Philip. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player :Player!
    
    @IBOutlet weak var nextBtm: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomansTaooed(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtm.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }

}

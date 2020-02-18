//
//  ViewController.swift
//  WorkoutPass
//
//  Created by B on 2/17/20.
//

import UIKit

class ViewController: UIViewController {
    
    var workouts: [Workout] = []
    // TODO: Connect a tableview and collection view to this controller

    override func viewDidLoad() {
        super.viewDidLoad()
        //
        loadInClasses()
        //TODO: Setup the tableview and collection view delegates
    }
    
    func loadInClasses (){
        // TODO: Load the data from the CSV into the Workout object
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    //TODO: Complete the functions below
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //TODO: Complete the functions below
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

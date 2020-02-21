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
    
    @IBOutlet weak var workoutCollectionView: UICollectionView!
    
    @IBOutlet weak var workoutTableView: UITableView!
    
    @IBOutlet weak var toggleButton: UIBarButtonItem!
    
    var isGrid = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        loadInClasses()
        //TODO: Setup the tableview and collection view delegates
        workoutTableView.dataSource = self
        workoutTableView.delegate = self
        
        workoutCollectionView.delegate = self
        workoutCollectionView.dataSource = self
        
        workoutCollectionView.isHidden = true
        
    }
    
   
    func loadInClasses (){
        // TODO: Load the data from the CSV into the Workout object
        let class1 = Workout.init(studioName: "Super Yoga", instructor: "Jenny", price: 20.00, seatsRemaining: 20, category: "yoga")
        let class2 = Workout.init(studioName: "Lee's Karate Studio", instructor: "Lee", price: 30.00, seatsRemaining: 12, category: "martial arts")
        let class3 = Workout.init(studioName: "Kenny's Cycling", instructor: "Kenny", price: 20.00, seatsRemaining: 25, category: "cycling")
        let class4 = Workout.init(studioName: "Soccer Camp USA", instructor: "Rick", price: 10.00, seatsRemaining: 5, category: "sports")
        let class5 = Workout.init(studioName: "Yoga R US", instructor: "Rebecca", price: 40.00, seatsRemaining: 30, category: "yoga")
        let class6 = Workout.init(studioName: "Barry's Bootcamp", instructor: "Barry", price: 45.00, seatsRemaining: 5, category: "cycling")
        let class7 = Workout.init(studioName: "A Boxing Club", instructor: "Anthony", price: 55.00, seatsRemaining: 10, category: "martial arts")
        let class8 = Workout.init(studioName: "Gerard's Ball Club", instructor: "Gerard", price: 30.00, seatsRemaining: 3, category: "sports")
        let class9 = Workout.init(studioName: "Blue Planet Muay Thai", instructor: "Ben", price: 33.00, seatsRemaining: 22, category: "martial arts")
        let class10 = Workout.init(studioName: "Rise Studio", instructor: "Kerry", price: 10.00, seatsRemaining: 30, category: "martial arts")
        let class11 = Workout.init(studioName: "NY Dance Studio", instructor: "Tia", price: 20.00, seatsRemaining: 30, category: "dance")
        let class12 = Workout.init(studioName: "Physical 33", instructor: "Erica", price: 35.00, seatsRemaining: 25, category: "dance")
        
        
        workouts.append(class1)
        workouts.append(class2)
        workouts.append(class3)
        workouts.append(class4)
        workouts.append(class5)
        workouts.append(class6)
        workouts.append(class7)
        workouts.append(class8)
        workouts.append(class9)
        workouts.append(class10)
        workouts.append(class11)
        workouts.append(class12)
        
    }
    
    @IBAction func toggleViewPressed(_ sender: Any) {
        isGrid = !isGrid
        
        if (!isGrid) {
            workoutCollectionView.isHidden = true
            workoutTableView.isHidden = false
            workoutTableView.reloadData()
        } else {
            workoutCollectionView.isHidden = false
            workoutTableView.isHidden = true
            workoutCollectionView.reloadData()
        }
        
       }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    //TODO: Complete the functions below
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = workoutTableView.dequeueReusableCell(withIdentifier: "workoutTableCell", for: indexPath) as! WorkoutTableViewCell
        
        cell.titleLabel.text = workouts[indexPath.row].studioName
        cell.instructorLabel.text = "Instructor: \(workouts[indexPath.row].instructor)"
        cell.priceLabel.text = "Price: $\(String(workouts[indexPath.row].price))"
        cell.seatsLabel.text = "Seats left: \(String(workouts[indexPath.row].seatsRemaining))"
        
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //TODO: Complete the functions below
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = workoutCollectionView.dequeueReusableCell(withReuseIdentifier: "workoutCollectionCell", for: indexPath) as! WorkoutCollectionViewCell
        
        cell.titleCollectionLabel.text = workouts[indexPath.row].studioName
//        cell.titleCollectionLabel.sizeToFit()
        cell.instructorCollectionLabel.text = "Instructor: \(workouts[indexPath.row].instructor)"
        cell.priceCollectionLabel.text = "Price: $\(String(workouts[indexPath.row].price))"
        cell.seatsCollectionLabel.text = "Seats left: \(String(workouts[indexPath.row].seatsRemaining))"
        
        cell.contentView.layer.borderWidth = 1
        cell.contentView.layer.borderColor = UIColor(red: 0.00, green: 0.45, blue: 0.74, alpha: 1.0).cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: (view.frame.width/2), height: 200)
    }
    
}

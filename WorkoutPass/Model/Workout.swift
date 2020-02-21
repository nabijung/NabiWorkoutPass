//
//  Workout.swift
//  WorkoutPass
//
//  Created by B on 2/17/20.
//

import Foundation

class Workout: NSObject {
    //TODO: Complete the studio class.
    /*
     A workout class should have the following properties:
     Studio name
     Instructor
     Price
     Seats remaining
     Category
     
     QUESTIONS:
     It seems like there are a lot of redundancies, why do we need to state all these things twice?
     
     So workouts is an array of Workout objects, is Workout technically a dictionary, no it's not?
     
     I feel like this code is very fragile because Workout has so many required properties and the list relies in the index numbers of the table, how common is it to rely on the table indexes to call data?
     
     Where do you put the code that makes things pretty?
     
     How would the model change if Workout was a struct?
     
     How do I make it so the label has some sizing felxibilty?
     
     Why is it so complicated to do something so simple? Doesn't this seem like a lot of work for what you get in the end?
     */
    
    var studioName: String
    var instructor: String
    var price: Double
    var seatsRemaining: Int
    var category: String
    
    init(studioName: String, instructor: String, price: Double, seatsRemaining: Int, category: String) {
        self.studioName = studioName
        self.instructor = instructor
        self.price = price
        self.seatsRemaining = seatsRemaining
        self.category = category
    }
}

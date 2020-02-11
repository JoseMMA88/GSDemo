//
//  DJIAircraftAnnotation.swift
//  GSDemo
//
//  Created by Jose Manuel Malagón Alba on 10/02/2020.
//  Copyright © 2020 Jose Manuel Malagón Alba. All rights reserved.
//

import MapKit


class DJIAircraftAnnotation: NSObject, MKAnnotation{
    
    //MARK: Vars
    var coordinate: CLLocationCoordinate2D
    var annotationView: DJIAircraftAnnotationView?
    
    //MARK: Custom Functions
    init(coordinate: CLLocationCoordinate2D){
        self.coordinate = coordinate
        super.init()
    }
    
    //set new coordinate
    func setCoordinate(_ newCoordinate: CLLocationCoordinate2D){
        coordinate = newCoordinate
    }
    
    //update heading of aircraft
    func updateHeading(heading: Float){
        if (self.annotationView != nil){
            self.annotationView?.updateHeading(heading)
        }
    }
}
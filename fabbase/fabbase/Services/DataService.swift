//
//  DataService.swift
//  fab-base
//
//  Created by Wilman Garcia De Leon on 9/5/20.
//  Copyright © 2020 wilidgadev. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let movies = [
        Movie(movieTitle: "Man Of Fire"),
        Movie(movieTitle: "Avatar"),
        Movie(movieTitle: "Vikings"),
        Movie(movieTitle: "Braking Bad")
    ]
    
    private let man = [
        Actor(name: "Dendez Washinton", imageName: "denzel.jpeg", details: "Denzel Hayes Washington, Jr. es un actor y director de cine estadounidense, ganador de tres Globos de Oro, un Premio del Sindicato de Actores, un premio Tony y dos premios Óscar; estos por las cintas Glory como mejor actor de reparto en 1989, y por Día de entrenamiento como mejor actor principal en 2001."),
        Actor(name: "Dakota Fanning", imageName: "dakota.jpeg", details: "Hannah Dakota Fanning es una actriz y modelo estadounidense conocida por sus trabajos como actriz infantil en cine y televisión. Fanning se sitúa en el puesto número diez en la lista de VH1 de las 100 mejores estrellas infantiles de todos los tiempos .​Es la hermana mayor de la también actriz Elle Fanning."),
        Actor(name: "Christopher Walken", imageName: "Christoper.jpeg", details: "Christopher Walken es un actor de cine y teatro estadounidense.​Ha trabajado en más de cien películas y programas de televisión, entre ellos Annie Hall, The Deer Hunter, Sleepy Hollow, Brainstorm, The"),
        Actor(name: "Mark Anthony", imageName: "Mark Anthony.jpeg", details: "Details"),
        Actor(name: "Radha Mitchell", imageName: "radha.jpeg", details: "Details")
    ]
    private let avatar = [
              Actor(name: "San Worthing", imageName: "SanWorthing.jpeg", details: "Details"),
            Actor(name: "Sigourney Weaver", imageName: "SigourneyWeaver.jpeg", details: "Details"),
        Actor(name: "Stephen Lang", imageName: "StephenLang.jpeg", details: "Details"),
        Actor(name: "Zoe Saldana", imageName: "ZoeSaldana.jpeg", details: "Details")
      ]
    private let vikins = [
              Actor(name: "Alexander Ludwin", imageName: "AlexanderLudwin.jpeg", details: "Details"),
              Actor(name: "Gustaf Skarsgard", imageName: "GustafSkarsgard.jpeg", details: "Details"),
        Actor(name: "Katheryn Winnick", imageName: "KatherynWinnick.jpeg", details: "Katheryn Winnick ​ es una actriz y directoracanadiense, más conocida por su rol de Lagertha en la serie Vikings"),
        Actor(name: "Travis Fimmel", imageName: "TravisFimmel.jpeg", details: "Details")

    ]
    private let braking = [

              Actor(name: "Aaron Paul", imageName: "AaronPaul.jpeg", details: "Details"),
              Actor(name: "Anna Gunn", imageName: "AnnaGunn.jpeg", details: "Details"),
              Actor(name: "Brayan Cranston", imageName: "BrayanCranston.jpeg", details: "Details"),
              Actor(name: "Dean Norris", imageName: "DeanNorris.jpeg", details: "Details")
              
    ]
    
    func getMovies () -> [Movie] {
        return movies
    }
    func getActors(item: Int) -> [Actor] {
        switch item {
        case 0:
            return man
        case 1:
            return avatar
        case 2:
            return vikins
        case 3:
            return braking
        default:
            return man
        }
    }
    
    
    
}

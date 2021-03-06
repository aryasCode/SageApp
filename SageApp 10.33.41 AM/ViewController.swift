//
//  ViewController.swift
//  SageApp
//
//  Created by Gabby Banaag on 7/15/20.
//  Copyright © 2020 Gabbyy, Arya, and Elise. All rights reserved.
//

import UIKit
import UserNotifications

struct Student {
   static var flag: Bool=false
}

class database : UIViewController{
    static var flag1: Bool=true
    //var num1 = 0
}

let myDatabase = database()


class ViewController: UIViewController {
    @IBAction func theOffice(_ sender: UIButton) {
        print("Hello World")
        //Student.flag = true
    var theOfficeQuotes = [
           "”I am Beyoncé, always.” – Michael Scott",
           " “‘You miss 100% of the shots you don’t take.’” – Wayne Gretsky’ – Michael Scott",
           " “There’s a lot of beauty in ordinary things. Isn’t that kind of the point?” – Pam Beesly",
           "“I wish there was a way to know you’re in the good old days, before you’ve actually left them.” – Andy Bernard",
           "“And I knew exactly what to do. But in a much more real sense, I had no idea what to do.” - Michael Scott"
       ]
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) {
            (granted, error) in
        }
        let content = UNMutableNotificationContent()
        content.title = "Here's your quote of the day ☀️"
        content.body = theOfficeQuotes[1]
        let date = Date().addingTimeInterval(15)
        var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

        dateComponents.hour = 22
        dateComponents.minute = 34
    
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // Create request
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Register request
        center.add(request) { (error) in
        }
    }
    
    
   
    
    @IBAction func greysButton(_ sender: UIButton) {
        var greysQuotes = [
                 " “Don't let what he wants eclipse what you need. He's very dreamy, but he's not the sun. You are.“ —Cristina Ya season 10, episode 24",
                 "”Walk tall. All you can do is be brave enough to get out there. You fought. You loved. You lost. Walk tall.“ —Mark Sloan, season 5, episode 12",
                 "”Choose me. Love me.“ —Meredith Grey, season 2, episode 5",
                 "”Be unstoppable. Be a force of nature. --- You’re on your own. Be on your own.” —Cristina Yang, season 4, episode 15",
                 "”It's good to be scared. It means you still have something to lose.” —Richard Weber, season 4, episode 10"
              ]
        let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound]) {
                (granted, error) in
            }
            let content = UNMutableNotificationContent()
            content.title = "Here's your quote of the day ☀️"
            content.body = greysQuotes[1]
            let date = Date().addingTimeInterval(15)
            var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

            dateComponents.hour = 22
            dateComponents.minute = 34
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            
            // Create request
            let uuidString = UUID().uuidString
            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
            
            // Register request
            center.add(request) { (error) in
            }
        
    }
    
    
    
    @IBAction func friendsButton(_ sender: UIButton) {
        var friendsQuotes = [
               "”What if I don't want to be a shoe? What if I want to be a purse, you know? Or, a hat?” -Rachel",
               "”You can’t just give up! Is that what a dinosaur would do?” - Joey",
               "”How you doin’?” - Joey",
               "”Sure, I have my bad days, but then I remember what a cute smile I have.” - Chandler",
               "”It's like a cow’s opinion. It just doesn’t matter. It’s moo.” -Joey"
           ]
        let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound]) {
                (granted, error) in
            }
            let content = UNMutableNotificationContent()
            content.title = "Here's your quote of the day ☀️"
            content.body = friendsQuotes[1]
            let date = Date().addingTimeInterval(15)
            var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

            dateComponents.hour = 22
            dateComponents.minute = 34
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            
            // Create request
            let uuidString = UUID().uuidString
            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
            
            // Register request
            center.add(request) { (error) in
            }
    }
    
    
    
    @IBAction func avatarButton(_ sender: UIButton) {
        var avatarQuotes = [
               "”In the darkest of times, hope is something you give yourself.” - Zuko",
               "”Sometimes the best way to solve a problem is to help others.” - Iroh",
               "”Life happens wherever you are, whether you make it or not.” - Iroh",
               "“Sometimes life is like this tunnel. You can’t always see the light at the end of the tunnel, but if you keep moving, you will come to a better place.” - Iroh",
               "“You can’t knock me down!” - Katara",
               "“”Life happens wherever you are, whether you make it or not.“ -Iroh"
           ]
        let center = UNUserNotificationCenter.current()
                 center.requestAuthorization(options: [.alert, .sound]) {
                     (granted, error) in
                 }
                 let content = UNMutableNotificationContent()
                 content.title = "Here's your quote of the day ☀️"
                 content.body = avatarQuotes[1]
                 let date = Date().addingTimeInterval(15)
                 var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

                 dateComponents.hour = 22
                 dateComponents.minute = 34
             
             let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                 
                 // Create request
                 let uuidString = UUID().uuidString
                 let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
                 
                 // Register request
                 center.add(request) { (error) in
                 }
        
    }
    
    
    
    @IBAction func theGoodPlaceButton(_ sender: UIButton) {
        var goodPlaceQuotes = [
               "“What matters isn’t if people are good or bad. What matters is, if they’re trying to be better today than they were yesterday.“ -Michael",
               "”Enlightenment comes from within. The Dalai Llama texted me that.“ – Tahani Al-Jamil",
               "”Ya basic. And that’s okay.” – Eleanor Shellstrop",
               "”In case you were wondering, I am, by definition, the best version of myself.” – Janet",
               "”Pobody’s nerfect.” – Eleanor Shellstrop"
           ]
        let center = UNUserNotificationCenter.current()
                        center.requestAuthorization(options: [.alert, .sound]) {
                            (granted, error) in
                        }
                        let content = UNMutableNotificationContent()
                        content.title = "Here's your quote of the day ☀️"
                        content.body = goodPlaceQuotes[1]
                        let date = Date().addingTimeInterval(15)
                        var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

                        dateComponents.hour = 22
                        dateComponents.minute = 34
                    
                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                        
                        // Create request
                        let uuidString = UUID().uuidString
                        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
                        
                        // Register request
                        center.add(request) { (error) in
                        }
    }
    
    
    
    @IBAction func theFlashButton(_ sender: UIButton) {
        var flashQuotes = [
               "Felicity Smoak: Boom. Drop the mic. It's metaphorical, of course, because we don't have a real mic.",
               "Cisco Ramon: He's a bad guy; I'm calling it a lair.",
               "Cisco Ramon: It's a work in progress, Elsa.",
               "Dr. Harrison Wells: Acceptance is a powerful thing.",
               "Cisco Ramon: In your dreams, Sister Cold. You know I could call The Flash. He'd be here in like two seconds - probably one."
           ]
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) {
            (granted, error) in
        }
        
        // Create notification content
          let content = UNMutableNotificationContent()
          content.title = "Here's your quote of the day ☀️"
          content.body =  flashQuotes[1]
        
        // Notif trigger
        let date = Date().addingTimeInterval(15)
        var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

        dateComponents.hour = 14
        dateComponents.minute = 14
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // Create request
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Register request
        center.add(request) { (error) in
        }
        
    }
    
    
    @IBAction func euphoriaButton(_ sender: UIButton) {
        var euphoriaQuotes = [
            "Plenty Of Great, Intelligent, Funny, Interesting, And Creative People Have Struggled With The Same Things You Struggle With.",
            "That it's about balance, stability. The need to organize her feelings and thoughts, so she can breathe easier.",
            "“I definitely haven't reached my full power.” - Jules Vaughn",
            "”I wasn't going to stop until I got the truth.“ - Rue",
            "“Suddenly, the whole world goes dark and nothing else matters except the person standing in front of you.” - Rue Bennett"
        ]
        let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound]) {
                (granted, error) in
            }
            
            // Create notification content
              let content = UNMutableNotificationContent()
              content.title = "Here's your quote of the day ☀️"
              content.body = euphoriaQuotes[1]
            
            // Notif trigger
            let date = Date().addingTimeInterval(15)
            var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

            dateComponents.hour = 14
            dateComponents.minute = 14
            
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            
            // Create request
            let uuidString = UUID().uuidString
            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
            
            // Register request
            center.add(request) { (error) in
            }
        

    }
    
    
    
    @IBAction func criminalMindsButton(_ sender: UIButton) {
        var criminalQuotes = [
            "”The best and most beautful things can not be seen or even touched.” - Helen Keller",
            "”Love is giving someone the ability to destroy you, but trusting them not to”",
            "”Nothing is so common as the wish to be remarkable.” - Shakespeare",
            "”In the end, Its not the years in your life that counts. Its the life in your years.” - Abraham Lincoln",
            "”I remained to inside my head and ended up loosing my mind” - Edgar Allen Poe"
        ]
        let center = UNUserNotificationCenter.current()
                   center.requestAuthorization(options: [.alert, .sound]) {
                       (granted, error) in
                   }
                   
                   // Create notification content
                     let content = UNMutableNotificationContent()
                     content.title = "Here's your quote of the day ☀️"
                     content.body = criminalQuotes[1]
                   
                   // Notif trigger
                   let date = Date().addingTimeInterval(15)
                   var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

                   dateComponents.hour = 14
                   dateComponents.minute = 14
                   
                   let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                   
                   // Create request
                   let uuidString = UUID().uuidString
                   let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
                   
                   // Register request
                   center.add(request) { (error) in
                   }
        
    }
    
    
   
    @IBAction func umbrellaButton(_ sender: UIButton) {
        var umbrellaQuotes = [
            "“I love you! Even if you can’t love yourself!“ -Klaus",
            "“Life is short. Future doesn’t come with any guarantees. You want something in life, you gotta go for it.“",
            "“If you believe in yourself for once, just once, great things are gonna happen for you.“ -Leonard",
            "The ties that bind you together make you stronger than you are alone. They will make you impervious to the pain and hardship the world will thrust upon you.",
            "“What’s meant to be is meant to be. That’s our raison d’être.“ -Number 5"
        ]
        let center = UNUserNotificationCenter.current()
                   center.requestAuthorization(options: [.alert, .sound]) {
                       (granted, error) in
                   }
                   
                   // Create notification content
                     let content = UNMutableNotificationContent()
                     content.title = "Here's your quote of the day ☀️"
                     content.body = umbrellaQuotes[1]
                   
                   // Notif trigger
                   let date = Date().addingTimeInterval(15)
                   var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

                   dateComponents.hour = 23
                   dateComponents.minute = 19
                   
                   let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                   
                   // Create request
                   let uuidString = UUID().uuidString
                   let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
                   
                   // Register request
                   center.add(request) { (error) in
                   }

    }
    
    @IBAction func strangerButton(_ sender: UIButton) {
        var strangerQuotes = [
              "”Friends don't lie.” — Eleven",
              "”You shouldn't like things because people tell you you're supposed to.” — Jonathan",
              "”You can't spell America without Erica.” — Erica",
              "”If we’re both going crazy, then we’ll go crazy together, right?” — Mike",
              "”If you believe in this story... Finish it.” — Mrs Wheeler"
          ]
        let center = UNUserNotificationCenter.current()
                   center.requestAuthorization(options: [.alert, .sound]) {
                       (granted, error) in
                   }
                   
                   // Create notification content
                     let content = UNMutableNotificationContent()
                     content.title = "Here's your quote of the day ☀️"
                     content.body = strangerQuotes[1]
                   
                   // Notif trigger
                   let date = Date().addingTimeInterval(15)
                   var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

                   dateComponents.hour = 14
                   dateComponents.minute = 14
                   
                   let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                   
                   // Create request
                   let uuidString = UUID().uuidString
                   let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
                   
                   // Register request
                   center.add(request) { (error) in
                   }
        
        
    }
    
    
    
    
   
    
  
    
    
    
    
    


    

  

}


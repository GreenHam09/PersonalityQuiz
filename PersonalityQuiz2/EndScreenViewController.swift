//
//  EndScreenViewController.swift
//  PersonalityQuiz2
//
//  Created by Elijah Bigham (student HH) on 2/7/20.
//  Copyright © 2020 Bigham, Elijah. All rights reserved.
//

import UIKit

class EndScreenViewController: UIViewController {
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var identityLabel: UILabel!
    
    @IBOutlet var outcomeImage: UIImageView!
    
    var identity = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        identityLabel.text = "\(identity)"
        chooseDescription()
    }
    
    func chooseDescription(){
        switch identity {
            
        //FOOD QUIZ STUFF-------------------------------------------------------------------------------
            
        case "Pear":
            DescriptionLabel.text = "You are one to spend time inside a lot, yet you are always down for interactions with your friends from time to time"
            self.outcomeImage.image = UIImage(named: "Pear")
        case "Grape":
            DescriptionLabel.text = "Very volatile, occasional bursts of emotion. you are either really nice or really terrible"
            self.outcomeImage.image = UIImage(named: "Grape")
        case "Pumpkin":
            DescriptionLabel.text = "Somewhat guarded, but despite your thoughts, provide very useful feedback"
            self.outcomeImage.image = UIImage(named: "Pumpkin")
        case "Watermelon":
            DescriptionLabel.text = "You look very intimidating, but turn out to be a real softie on the inside"
            self.outcomeImage.image = UIImage(named: "Watermelon")
        case "Apple":
            DescriptionLabel.text = "You are basic, but you have variety. Somewhat fickle, yet people still like you"
            self.outcomeImage.image = UIImage(named: "Apple")
        case "Hamburger":
            DescriptionLabel.text = "You are firm in desicion making and never second guess yourself, even when you might be wrong."
            self.outcomeImage.image = UIImage(named: "Hamburger")
        case "Lemon":
            DescriptionLabel.text = "Very direct in speech and doesn't consider feelings until they matter."
            self.outcomeImage.image = UIImage(named: "Lemon")
        case "Rice":
            DescriptionLabel.text = "Your friends would describe you as the base for most projects and ideas. Strong leader who includes everyone"
            self.outcomeImage.image = UIImage(named: "Rice")
        case "Yogurt":
            DescriptionLabel.text = "You save the day at the very last second, and people can't help but love you."
            self.outcomeImage.image = UIImage(named: "Yogurt")
        case "Pie":
            DescriptionLabel.text = "You are a nice person, but still find courage to let people know how you feel. May seem harsh, but never means it"
            self.outcomeImage.image = UIImage(named: "Pie")
        case "Cake":
            DescriptionLabel.text = "You are upbeat and happy 24/7. You prioritize having fun more than anything else."
            self.outcomeImage.image = UIImage(named: "Cake")
        case "Green Eggs and Ham":
            DescriptionLabel.text = "You appreciate the silly in life, and take notes of everything you learn"
            self.outcomeImage.image = UIImage(named: "GreenEggsAndHam")
        case "Churro":
            DescriptionLabel.text = "Nobody knew you existed and were sad they never met you before. A hidden delight of a person."
            self.outcomeImage.image = UIImage(named: "Churro")
        case "Sushi":
            DescriptionLabel.text = "You enjoy color and decoration on a small scale. Minor OCD, but bearable nonetheless"
            self.outcomeImage.image = UIImage(named: "Sushi")
        case "Chocolate":
            DescriptionLabel.text = "You like doing anything with anyone, anytime. You love trying new things as long as they share a certan aspect"
            self.outcomeImage.image = UIImage(named: "Chocolate")
        case "Oregano":
            DescriptionLabel.text = "You enjoy making other people's lives better instead of your own, but not to an extreme extent. Mostly seems happy."
            self.outcomeImage.image = UIImage(named: "Oregano")
        case "Noodles":
            DescriptionLabel.text = "You try your best at everything, but sometimes things don't go so well."
            self.outcomeImage.image = UIImage(named: "Noodles")
        case "Waffle":
            DescriptionLabel.text = "You find pride in doing things right, even when things are laid out for you."
            self.outcomeImage.image = UIImage(named: "Waffle")
        case "Triple Bacon Cheeseburger with a side of Fries":
            DescriptionLabel.text = "Mostly grumpy in character, but still don't want people to be hurt."
            self.outcomeImage.image = UIImage(named: "America")
        case "Pizza":
            DescriptionLabel.text = "You appreciate consistancy and minimalist change. Starts projects, and has many ideas on how to finish"
            self.outcomeImage.image = UIImage(named: "Pizza")
        case "Coconut":
            DescriptionLabel.text = "You are very conserved. Expressing feelings has never been your thing, and you prefer to hide from the world."
            self.outcomeImage.image = UIImage(named: "Coconut")
            
        //PHQUIZ STUFF-------------------------------------------------------------------------------
        case "0":
            DescriptionLabel.text = "You are very different from almost anyone. You're interests include very obscure thigns that almost no one knows about, yet you find really enjoyable."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "1":
            DescriptionLabel.text = "You are very different from almost anyone. You're interests include very obscure thigns that almost no one knows about, yet you find really enjoyable."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "2":
            DescriptionLabel.text = "You find yourself to like very particular things, most of which are things most people don't know about or find interesting."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "3":
            DescriptionLabel.text = "You find yourself to like very particular things, some of which are things most people don't know about or find interesting."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "4":
            DescriptionLabel.text = "You find yourself to like your own things, not really into into mainstream things."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "5":
            DescriptionLabel.text = "You like to keep up with certain trends, hoping to fit in, however it may not always turn out that way, so you stick with what you like."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "6":
            DescriptionLabel.text = "You enjoy some of the mainstream things, but are more confortable with what you like, which isn't always that mainstream."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "7":
            DescriptionLabel.text = "You are the most average person, you have a healthy mix of trendy, mainstream things, yet enjoy your own things from time-to-time."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "8":
            DescriptionLabel.text = "You like to keep up with current events, having some online social life, just not as much as others."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "9":
            DescriptionLabel.text = "You spend a lot of your time online and on social media, and you have a decent sized following."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "10":
            DescriptionLabel.text = "You spend more time on social media than the average person, keeping up with today's trends to fit in and keep your status."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "11":
            DescriptionLabel.text = "You follow almost any trend that exists, well known at your school and online. Has lots of followers and friends at school."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "12":
            DescriptionLabel.text = "You are the definition of a trendsetter, people know you so well and are very popular."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "13":
            DescriptionLabel.text = "You are a popular figure online, backed by some sort of community, practically make money off of it."
            self.outcomeImage.image = UIImage(named: "PhScale")
        case "14":
            DescriptionLabel.text = "You have reached supreme status as an online figure, people know you so well. You follow all the trends, the ones you make and others. Has at least 1 million+ followers easily."
            self.outcomeImage.image = UIImage(named: "PhScale")
            
        //CONSOLE QUIZ STUFF-------------------------------------------------------------------------------------------------------------------------------
        
        case "PlayStation":
            DescriptionLabel.text = "You are a follower by nature and try to be surrounded by friends at all times. You believe in strength in numbers and work very well in teams. You can also be a bit stubborn."
            self.outcomeImage.image = UIImage(named: "PlayStation")
        case "Nintendo Switch":
            DescriptionLabel.text = "You are a jack of all trades, but a master of none. Your best quality is your ability to adapt to any situation. You are a role model to your peers, and always attract a crowd."
            self.outcomeImage.image = UIImage(named: "NintendoSwitch")
        case "GameBoy":
            DescriptionLabel.text = "You appreciate the simple things in life. Your approach to solving problems is to avoid them alltogether. You tend to spend more time alone than with friends."
            self.outcomeImage.image = UIImage(named: "GameBoy")
        case "Wii":
            DescriptionLabel.text = "You are a very active person. You often find it difficult to take a break, but this makes you very productive. Occasionally, you lose your grip and are forced to step back and take a break."
            self.outcomeImage.image = UIImage(named: "Wii")
        case "Mobile":
            DescriptionLabel.text = "You are a jack of all trades, but a master of none. You focus on improving yourself, and spend most of your time with friends."
            self.outcomeImage.image = UIImage(named: "Mobile")
        case "Nintendo 3DS":
            DescriptionLabel.text = "You are able to always see the good in things, and go out of your way to make other people feel welcome. You can find a reason to like almost anything."
            self.outcomeImage.image = UIImage(named: "3DS")
        case "Xbox":
            DescriptionLabel.text = "You are a follower by nature and try to be surrounded by friends at all times. You believe in strength in numbers and work very well in teams, though you find it hard to admit when you are wrong."
            self.outcomeImage.image = UIImage(named: "Xbox")
        case "HTC Vive":
            DescriptionLabel.text = "You are always looking for new experience and are not afraid to try new things. Your approach to a problem is to rush in head first rather than make a plan. This works out about half the time."
            self.outcomeImage.image = UIImage(named: "Vive")
        case "Oculus Rift":
            DescriptionLabel.text = "You are always looking for new experience and are not afraid to try new things. Your approach to a problem is to rush in head first rather than make a plan. This works out about half the time."
            self.outcomeImage.image = UIImage(named: "Oculus")
        case "PC":
            DescriptionLabel.text = "You are a cultured person who appreciates the complexity of things. You like to know exactly how something works, and how to make the most out of any situation. This mindset makes you an intelligent person, yet your know-how may confuse your peers."
            self.outcomeImage.image = UIImage(named: "PC")
        case "Atari":
            DescriptionLabel.text = "You think games are a waste of time, and prefer to focus your energy on other things. Perhaps you tried video games once and were bad at them, or maybe you just don't have the time."
            self.outcomeImage.image = UIImage(named: "Atari")
        case "GameCube":
            DescriptionLabel.text = "You are the definition of a casual gamer. You enjoy a bit of electronics here and there, but by no means would you consider it a hobby."
            self.outcomeImage.image = UIImage(named: "GameCube")
        case "Nintendo N64":
            DescriptionLabel.text = "You appreciate the simple things in life. Your approach to solving problems is to avoid them alltogether. You tend to spend more time alone than with friends."
            self.outcomeImage.image = UIImage(named: "N64")
            
        default:
            DescriptionLabel.text = "A man has fallen into the river in Lego City. Start the new rescue helicopter. Hey! Build the helicopter And off to the rescue. Prepare the lifeline. Lower the stretcher And make the rescue. The new emergency collection from Lego City"
            self.outcomeImage.image = UIImage(named: "FallenIntoRiver")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

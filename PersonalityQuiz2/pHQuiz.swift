import Foundation

class pHQuiz : Quiz{
    enum pHOutcomes : QuizOutcomes{ // enum of every possible outcome; change for new quiz
        case zero
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case eleven
        case twelve
        case thirteen
        case fourteen
        
        func getName() -> String{
            switch self{
            case .zero: return "0"
            case .one: return "1"
            case .two: return "2"
            case .three: return "3"
            case .four: return "4"
            case .five: return "5"
            case .six: return "6"
            case .seven: return "7"
            case .eight: return "8"
            case .nine: return "9"
            case .ten: return "10"
            case .eleven: return "11"
            case .twelve: return "12"
            case .thirteen: return "13"
            case .fourteen: return "14"
            }
        }
    }
    //FoodQuiz uses the FoodOutcomes enum; change for new quiz
    typealias outcomeType = pHOutcomes
    
    //Arrays of all the stuff; DO NOT change for new quiz
    var questions : [Question<outcomeType>] = []
    var outcomes : [outcomeType: Int] = [:]
    
    //change what's in here as needed for new quiz
    required init(){
        print("What is your Ph Value?")
        
        outcomes = Dictionary(uniqueKeysWithValues: pHOutcomes.allCases.map{($0, 0)})
        
        questions = [Question(text: "Which of these do you like the most?",
                              ans: [Answer(text: "Lemon",
                                           values: q01ans.mapValues{$0[0]}),
                                    Answer(text: "Tomato",
                                           values: q01ans.mapValues{$0[1]}),
                                    Answer(text: "Grape",
                                           values: q01ans.mapValues{$0[2]}),
                                    Answer(text: "Asparagus",
                                           values: q01ans.mapValues{$0[3]}),
                                    Answer(text: "Yams",
                                           values: q01ans.mapValues{$0[4]}),
                                    Answer(text: "Shellfish",
                                           values: q01ans.mapValues{$0[5]})]),
                     Question(text: "Which of these sounds the coolest?",
                              ans: [Answer(text: "Magnesia",
                                           values: q02ans.mapValues{$0[0]}),
                                    Answer(text: "Lye",
                                           values: q02ans.mapValues{$0[1]}),
                                    Answer(text: "Hydrochloric",
                                           values: q02ans.mapValues{$0[2]}),
                                    Answer(text: "Hydroxide",
                                           values: q02ans.mapValues{$0[3]}),
                                    Answer(text: "Carbonate",
                                           values: q02ans.mapValues{$0[4]}),
                                    Answer(text: "Dioxide",
                                           values: q02ans.mapValues{$0[5]})]),
                     Question(text: "Which of these are you most likely to drink?",
                              ans: [Answer(text: "Stomach Acid",
                                           values: q03ans.mapValues{$0[0]}),
                                    Answer(text: "Battery Acid",
                                           values: q03ans.mapValues{$0[1]}),
                                    Answer(text: "Hydrogen Peroxide",
                                           values: q03ans.mapValues{$0[2]}),
                                    Answer(text: "Chlorine",
                                           values: q03ans.mapValues{$0[3]}),
                                    Answer(text: "Drain Cleaner",
                                           values: q03ans.mapValues{$0[4]}),
                                    Answer(text: "Ammonia",
                                           values: q03ans.mapValues{$0[5]})]),
                     Question(text: "What kind of movies are your favorite?",
                              ans: [Answer(text: "Action",
                                           values: q04ans.mapValues{$0[0]}),
                                    Answer(text: "Romance",
                                           values: q04ans.mapValues{$0[1]}),
                                    Answer(text: "Comedy",
                                           values: q04ans.mapValues{$0[2]}),
                                    Answer(text: "Horror",
                                           values: q04ans.mapValues{$0[3]}),
                                    Answer(text: "Drama",
                                           values: q04ans.mapValues{$0[4]}),
                                    Answer(text: "Sci-Fi",
                                           values: q04ans.mapValues{$0[5]})]),
                     Question(text: "How many friends do you have?",
                              ans: [Answer(text: "0",
                                           values: q05ans.mapValues{$0[0]}),
                                    Answer(text: "<50",
                                           values: q05ans.mapValues{$0[1]}),
                                    Answer(text: "<100",
                                           values: q05ans.mapValues{$0[2]}),
                                    Answer(text: "<150",
                                           values: q05ans.mapValues{$0[3]}),
                                    Answer(text: "<200",
                                           values: q05ans.mapValues{$0[4]}),
                                    Answer(text: "Everyone is my friend",
                                           values: q05ans.mapValues{$0[5]})]),
                     Question(text: "Which kind of music is your favorite?",
                              ans: [Answer(text: "Classical",
                                           values: q06ans.mapValues{$0[0]}),
                                    Answer(text: "Pop",
                                           values: q06ans.mapValues{$0[1]}),
                                    Answer(text: "Rock",
                                           values: q06ans.mapValues{$0[2]}),
                                    Answer(text: "Rap",
                                           values: q06ans.mapValues{$0[3]}),
                                    Answer(text: "Country",
                                           values: q06ans.mapValues{$0[4]}),
                                    Answer(text: "EDM",
                                           values: q06ans.mapValues{$0[5]})]),
                     Question(text: "Where do you like to go the most?",
                              ans: [Answer(text: "Starbucks",
                                           values: q07ans.mapValues{$0[0]}),
                                    Answer(text: "Sports Games",
                                           values: q07ans.mapValues{$0[1]}),
                                    Answer(text: "Parties",
                                           values: q07ans.mapValues{$0[2]}),
                                    Answer(text: "School",
                                           values: q07ans.mapValues{$0[3]}),
                                    Answer(text: "Work",
                                           values: q07ans.mapValues{$0[4]}),
                                    Answer(text: "Nowhere",
                                           values: q07ans.mapValues{$0[5]})]),
                    Question(text: "Which of these products do you use the most?",
                                ans: [Answer(text: "Soap",
                                             values: q08ans.mapValues{$0[0]}),
                                      Answer(text: "Lotion",
                                             values: q08ans.mapValues{$0[1]}),
                                      Answer(text: "Makeup",
                                             values: q08ans.mapValues{$0[2]}),
                                      Answer(text: "Face Cleanser",
                                             values: q08ans.mapValues{$0[3]}),
                                      Answer(text: "Hair Products",
                                             values: q08ans.mapValues{$0[4]}),
                                      Answer(text: "Perfume",
                                             values: q08ans.mapValues{$0[5]})])
                    ]
    }
    
    //Tables of answers
    let q01ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [1, -1, -1, -1, -1, -1],
                                         pHOutcomes.one:      [3, -1, 0, -1, -1, -1],
                                         pHOutcomes.two:      [5, -1, 1, -1, 0, -1],
                                         pHOutcomes.three:    [3, 0, 3, 0, 1, -1],
                                         pHOutcomes.four:     [1, 1, 5, 1, 3, -1],
                                         pHOutcomes.five:     [0, 3, 3, 3, 5, 0],
                                         pHOutcomes.six:      [-1, 5, 1, 5, 3, 1],
                                         pHOutcomes.seven:    [-1, 5, 0, 3, 1, 3],
                                         pHOutcomes.eight:    [-1, 3, -1, 1, 0, 5],
                                         pHOutcomes.nine:     [-1, 1, -1, -1, -1, 3],
                                         pHOutcomes.ten:      [-1, 0, -1, 0, -1, 1],
                                         pHOutcomes.eleven:   [-1, -1, -1, -1, -1, 0],
                                         pHOutcomes.twelve:   [-1, -1, -1, -1, -1, -1],
                                         pHOutcomes.thirteen: [-1, -1, -1, -1, -1, -1],
                                         pHOutcomes.fourteen: [-1, -1, -1, -1, -1, -1]]
    
    let q02ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [-1, -1, 5, -1, -1, -1],
                                         pHOutcomes.one:      [-1, -1, 5, -1, -1, -1],
                                         pHOutcomes.two:      [-1, -1, 3, -1, -1, -1],
                                         pHOutcomes.three:    [-1, -1, 1, -1, -1, 0],
                                         pHOutcomes.four:     [-1, -1, 0, -1, -1, 1],
                                         pHOutcomes.five:     [-1, -1, -1, -1, -1, 3],
                                         pHOutcomes.six:      [-1, -1, -1, -1, 0, 5],
                                         pHOutcomes.seven:    [0, -1, -1, -1, 1, 3],
                                         pHOutcomes.eight:    [1, 0, -1, -1, 3, 1],
                                         pHOutcomes.nine:     [3, 1, -1, -1, 5, 0],
                                         pHOutcomes.ten:      [5, 3, -1, -1, 3, -1],
                                         pHOutcomes.eleven:   [3, 5, -1, 0, 1, -1],
                                         pHOutcomes.twelve:   [1, 3, -1, 1, 0, -1],
                                         pHOutcomes.thirteen: [0, 1, -1, 3, -1, -1],
                                         pHOutcomes.fourteen: [-1, 0, -1, 5, -1, -1]]
    
    let q03ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [1, 5, -1, -1, -1, -1],
                                         pHOutcomes.one:      [3, 5, 0, -1, -1, -1],
                                         pHOutcomes.two:      [5, 3, 1, -1, -1, -1],
                                         pHOutcomes.three:    [3, 1, 3, -1, -1, -1],
                                         pHOutcomes.four:     [1, 0, 5, 0, -1, -1],
                                         pHOutcomes.five:     [0, -1, 5, 1, -1, -1],
                                         pHOutcomes.six:      [-1, -1, 3, 3, -1, -1],
                                         pHOutcomes.seven:    [-1, -1, 1, 5, -1, -1],
                                         pHOutcomes.eight:    [-1, -1, 0, 5, -1, -1],
                                         pHOutcomes.nine:     [-1, -1, -1, 3, -1, 0],
                                         pHOutcomes.ten:      [-1, -1, -1, 1, -1, 1],
                                         pHOutcomes.eleven:   [-1, -1, -1, 0, 0, 3],
                                         pHOutcomes.twelve:   [-1, -1, -1, -1, 1, 5],
                                         pHOutcomes.thirteen: [-1, -1, -1, -1, 3, 3],
                                         pHOutcomes.fourteen: [-1, -1, -1, -1, 5, 1]]
    
    let q04ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [-1, -1, 0, -1, -1, 3],
                                         pHOutcomes.one:      [-1, -1, 1, -1, -1, 5],
                                         pHOutcomes.two:      [-1, -1, 3, -1, -1, 3],
                                         pHOutcomes.three:    [-1, -1, 5, -1, -1, 1],
                                         pHOutcomes.four:     [-1, -1, 3, 0, -1, 0],
                                         pHOutcomes.five:     [-1, 0, 1, 1, -1, -1],
                                         pHOutcomes.six:      [-1, 1, 0, 3, -1, -1],
                                         pHOutcomes.seven:    [0, 3, -1, 5, -1, -1],
                                         pHOutcomes.eight:    [1, 5, -1, 3, -1, -1],
                                         pHOutcomes.nine:     [3, 3, -1, 1, -1, -1],
                                         pHOutcomes.ten:      [5, 1, -1, 0, 0, -1],
                                         pHOutcomes.eleven:   [3, 0, -1, -1, 1, -1],
                                         pHOutcomes.twelve:   [1, -1, -1, -1, 3, -1],
                                         pHOutcomes.thirteen: [0, -1, -1, -1, 5, -1],
                                         pHOutcomes.fourteen: [-1, -1, -1, -1, 3, -1]]
    
    let q05ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [5, 1, -1, -1, -1, -1],
                                         pHOutcomes.one:      [3, 3, -1, -1, -1, -1],
                                         pHOutcomes.two:      [1, 5, 0, -1, -1, -1],
                                         pHOutcomes.three:    [0, 3, 1, -1, -1, -1],
                                         pHOutcomes.four:     [-1, 1, 3, -1, -1, -1],
                                         pHOutcomes.five:     [-1, 0, 5, 0, -1, -1],
                                         pHOutcomes.six:      [-1, -1, 3, 1, -1, -1],
                                         pHOutcomes.seven:    [-1, -1, 1, 3, -1, -1],
                                         pHOutcomes.eight:    [-1, -1, 0, 5, 0, -1],
                                         pHOutcomes.nine:     [-1, -1, -1, 3, 1, -1],
                                         pHOutcomes.ten:      [-1, -1, -1, 1, 3, -1],
                                         pHOutcomes.eleven:   [-1, -1, -1, 0, 5, 0],
                                         pHOutcomes.twelve:   [-1, -1, -1, -1, 3, 1],
                                         pHOutcomes.thirteen: [-1, -1, -1, -1, 1, 3],
                                         pHOutcomes.fourteen: [-1, -1, -1, -1, 0, 5]]
    
    let q06ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [-1, -1, -1, -1, 0, -1],
                                         pHOutcomes.one:      [-1, -1, 0, -1, 1, -1],
                                         pHOutcomes.two:      [-1, -1, 1, 0, 3, -1],
                                         pHOutcomes.three:    [-1, -1, 3, 1, 5, -1],
                                         pHOutcomes.four:     [-1, 0, 5, 3, 3, -1],
                                         pHOutcomes.five:     [-1, 1, 3, 5, 1, 0],
                                         pHOutcomes.six:      [-1, 3, 1, 5, 0, 1],
                                         pHOutcomes.seven:    [-1, 5, 0, 3, -1, 3],
                                         pHOutcomes.eight:    [-1, 3, -1, 1, -1, 5],
                                         pHOutcomes.nine:     [0, 1, -1, 0, -1, 5],
                                         pHOutcomes.ten:      [1, 0, -1, -1, -1, 3],
                                         pHOutcomes.eleven:   [3, -1, -1, -1, -1, 1],
                                         pHOutcomes.twelve:   [5, -1, -1, -1, -1, 0],
                                         pHOutcomes.thirteen: [3, -1, -1, -1, -1, -1],
                                         pHOutcomes.fourteen: [1, -1, -1, -1, -1, -1]]
    
    let q07ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [-1, -1, -1, -1, -1, -1],
                                         pHOutcomes.one:      [-1, -1, -1, -1, -1, 0],
                                         pHOutcomes.two:      [-1, 0, -1, -1, -1, 1],
                                         pHOutcomes.three:    [-1, 1, -1, -1, -1, 3],
                                         pHOutcomes.four:     [-1, 3, 0, -1, -1, 5],
                                         pHOutcomes.five:     [-1, 5, 1, -1, 0, 3],
                                         pHOutcomes.six:      [-1, 3, 3, -1, 1, 1],
                                         pHOutcomes.seven:    [-1, 1, 5, -1, 3, 0],
                                         pHOutcomes.eight:    [-1, 0, 3, 0, 5, -1],
                                         pHOutcomes.nine:     [-1, -1, 1, 1, 3, -1],
                                         pHOutcomes.ten:      [-1, -1, 0, 3, 1, -1],
                                         pHOutcomes.eleven:   [0, -1, -1, 5, 0, -1],
                                         pHOutcomes.twelve:   [1, -1, -1, 3, -1, -1],
                                         pHOutcomes.thirteen: [3, -1, -1, 1, -1, -1],
                                         pHOutcomes.fourteen: [5, -1, -1, 0, -1, -1]]
    
    let q08ans : [outcomeType: [Int]] = [pHOutcomes.zero:     [-1, -1, -1, -1, -1, -1],
                                         pHOutcomes.one:      [-1, -1, -1, 0, -1, -1],
                                         pHOutcomes.two:      [-1, -1, 0, 1, -1, -1],
                                         pHOutcomes.three:    [-1, -1, 1, 3, -1, -1],
                                         pHOutcomes.four:     [-1, -1, 3, 5, -1, 0],
                                         pHOutcomes.five:     [-1, 0, 5, 3, -1, 1],
                                         pHOutcomes.six:      [-1, 1, 3, 1, 0, 3],
                                         pHOutcomes.seven:    [0, 3, 1, 0, 1, 5],
                                         pHOutcomes.eight:    [1, 5, 0, -1, 3, 3],
                                         pHOutcomes.nine:     [3, 3, -1, -1, 5, 1],
                                         pHOutcomes.ten:      [5, 1, -1, -1, 3, 0],
                                         pHOutcomes.eleven:   [3, 0, -1, -1, 1, -1],
                                         pHOutcomes.twelve:   [1, -1, -1, -1, 0, -1],
                                         pHOutcomes.thirteen: [0, -1, -1, -1, -1, -1],
                                         pHOutcomes.fourteen: [-1, -1, -1, -1, -1, -1]]
}

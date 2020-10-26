
import SwiftUI



struct QuizMenuView: View {
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                NavigationLink(
                    destination: Text("Destination"),
                    //inserire view QuizIntroduction
                    label: {
                        QuizTopic(imageQuizTopic: "universityMenu", nameQuizTopic: "University")
                    }
                )
                 
                NavigationLink(
                    destination: Text("Destination"),
                    //inserire view QuizIntroduction
                    label: {
                        QuizTopic(imageQuizTopic: "dressCodeMenu", nameQuizTopic: "Dress Code")
                    }
                )
                NavigationLink(
                    destination: Text("Destination"),
                    //inserire view QuizIntroduction
                    label: {
                        QuizTopic(imageQuizTopic: "covidMenu", nameQuizTopic: "COVID-19", doneQuizTopic: true)
                    }
                )
                NavigationLink(
                    destination: Text("Destination"),
                    //inserire view QuizIntroduction
                    label: {
                        QuizTopic(imageQuizTopic: "tableMannersMenu", nameQuizTopic: "Table Manners")
                    }
                )
            }
            .navigationBarTitle("Quiz", displayMode: .inline)
        }
    }
    
    struct QuizMenuView_Previews: PreviewProvider {
        
        static var previews: some View {
            
            QuizMenuView()
            
        }
        
    }
    
    struct QuizTopic: View {
        var imageQuizTopic : String
        var nameQuizTopic : String
        var doneQuizTopic : Bool = false
        var body: some View {
            
            ZStack(alignment: .bottomTrailing)
                {
                Image(imageQuizTopic)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 13))
                
                    HStack{
                        if doneQuizTopic==true{
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.white)
                            .shadow(radius: 3, y:5)
                        }
                    Text(nameQuizTopic)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(5.0)
                        .shadow(radius: 3, y:5)
                }
            }
                .frame(height: 200.0)
                .padding(.horizontal, 30.0)
                .padding(.vertical, -15.0)
        }
        
    }
    
}


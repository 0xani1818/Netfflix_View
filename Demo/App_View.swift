
import SwiftUI

struct App_View: View {
    var body: some View {
            ZStack{
                Color.black
                    .ignoresSafeArea()
                Group {
                    Text("熱播新片")
                        .font(.system(.title, design:.rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                        .position(x:64,y:30)
                    Text(" 🍿️ 即將上線  ")
                        .fontWeight(.medium)
                        .padding(9)
                        .background(.white)
                        .cornerRadius(50)
                        .font(.system(size: 14))
                        .position(x: 68, y: 68)
                    Text("🔥")
                        .cornerRadius(50)
                        .font(.system(size: 14))
                        .position(x: 151, y: 68)
                    Text("大家都在看")
                        .fontWeight(.bold)
                        .padding(11)
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .position(x: 200, y: 68)
                    Image("top_10")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .position(x: 275, y: 68)
                    Text("Top 10 節目")
                        .fontWeight(.bold)
                        .padding(11)
                        .foregroundColor(.white)
                        .font(.system(size: 14 ,design:.rounded))
                        .position(x: 327, y: 68)
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                        .position(x:325,y:30)
                    Image(systemName:"display.2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                        .position(x:274,y:30)
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .position(x:370,y:30)
                  
                }
             
            VStack{
                HStack{
                    Date()
                    Spy_family()
                }
                HStack(){
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 72, height: 70)
                Spacer()
                        .frame(width: 165)
                    Check()
                    Spacer()
                        .frame(width: 23)
                    Info()
                }
                .position(x: 200, y: -40)
            }
            Group {
                Text("新集數即將在星期六上線")
                        .foregroundColor(.white)
                        .font(.system(size: 13 ,design:.rounded))
                        .position(x:122,y:390)
                Text("SPY x FAMILY")
                        .fontWeight(.heavy)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .position(x:97,y:417)
                Text("間諜、殺手、擁有讀心術能力的人。這三人基於各自的\n理由，假裝成一家人，還相互隱瞞自己的真正身分。")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                        .position(x:195,y:440)
                        .padding([.top, .leading, .trailing], 13.0)
            }
            Summary()
            Date2()
                ZStack(alignment:.topTrailing){
                    Image("movie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 105, height: 135)
                        //.position(x: 214, y: 590)
                    Text("16+")
                        .font(.system(size:13,design:.rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .background(Color(hue: 0.985, saturation: 0.903, brightness: 0.029, opacity: 0.824))
                        .cornerRadius(3)
                        .offset(x:112,y:-18)
                }
                .position(x: 215, y: 590)
                Caption()
                HStack(spacing:250){
                    VStack(spacing:9){
                        Image(systemName: "house")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                        Text("首頁")
                            .foregroundColor(.gray)
                            .font(.system(size:10))
                    }
                    VStack{
                        Image(systemName: "arrow.down.circle")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(.gray)
                            .frame(width: 20, height: 20)
                        Text("下載內容")
                            .foregroundColor(.gray)
                            .font(.system(size:10))
                    }
                }
                .position(x: 200, y: 740)
                VStack(spacing:2){
                    Image("play")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 34, height: 34)
                    Text("熱播影片")
                        .foregroundColor(.gray)
                        .font(.system(size:10))
                }
                .position(x: 200, y: 750)
                
        }//zstack
        
    }
}

struct App_View_Previews: PreviewProvider {
    static var previews: some View {
        App_View()
    }
}


struct Spy_family: View {
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image("spy_family")
                .resizable()
                .scaledToFill()
                .frame(width: 330, height: 200)
                .cornerRadius(10)
            
            Text("13+")
                .font(.system(size:13,design:.rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(Color(hue: 0.985, saturation: 0.903, brightness: 0.029, opacity: 0.824))
                .cornerRadius(3)
                .offset(x:-9,y:9)
        }
        .position(x:17,y:199)
    }
}

struct Date: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("10月")
                .foregroundColor(.gray)
                .font(.system(size:15,design:.rounded))
            Text("01")
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .font(.system(size:25))
        }
        .padding(.vertical, 2.979)
        .position(x:25,y:126)
    }
}

struct Check: View {
    var body: some View {
        VStack(spacing:10){
            Image(systemName:"checkmark")
                .resizable()
                .scaledToFill()
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
            Text("已設定提醒")
                .foregroundColor(.gray)
                .font(.system(size:10))
        }
    }
}

struct Info: View {
    var body: some View {
        VStack(spacing:10){
            Image(systemName: "exclamationmark.circle")
                .resizable()
                .scaledToFill()
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
            Text("資訊")
                .foregroundColor(.gray)
                .font(.system(size:10))
        }
    }
}

struct Summary: View {
    var body: some View {
        HStack(spacing:3){
            Group {
                Text("敘事順暢")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                Text("·")
                    .foregroundColor(.red)
                Text("不落俗套")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                Text("·")
                    .foregroundColor(.red)
                Text("動畫喜劇")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                Text("·")
                    .foregroundColor(.red)
                Text("群戲")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                Text("·")
                    .foregroundColor(.red)
                Text("間諜")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
            }
            Text("·")
                .foregroundColor(.red)
            Text("日本")
                .font(.system(size: 10))
                .foregroundColor(.white)
            Text("·")
                .foregroundColor(.red)
            Text("漫畫改編")
                .font(.system(size: 10))
                .foregroundColor(.white)
        }
        .position(x:195,y:485)
    }
}

struct Date2: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("9月")
                .foregroundColor(.gray)
                .font(.system(size:15,design:.rounded))
            Text("29")
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .font(.system(size:25))
        }
        .padding(.vertical, 2.979)
        .position(x:25,y:530)
    }
}

struct Caption: View {
    var body: some View {
        HStack(spacing:110){
            Text("你小心一點")
                .foregroundColor(.white)
                .font(.system(size: 15))
                .padding(3)
                .background(Color(hue: 1.0, saturation: 0.924, brightness: 0.005, opacity: 0.539))
                .cornerRadius(3)
            Image(systemName: "speaker.wave.2")
                .foregroundColor(.white)
                .font(.system(size: 14))
                .padding(3)
                .background(Color(hue: 1.0, saturation: 0.924, brightness: 0.005, opacity: 0.539))
                .cornerRadius(100)
        }
        .position(x:270,y:660)
    }
}

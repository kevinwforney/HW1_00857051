//
//  ContentView.swift
//  HW1_00857051
//
//  Created by User23 on 2022/10/2.
//

import SwiftUI

struct PanelView: View {
    let icon: String
    let genre: String
    let title: String
    let likes: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(icon)
                .resizable()
                .frame(width: 106, height: 106)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            Text(genre)
                .font(.caption2)
                .foregroundColor(.gray)
            Text(title)
                .foregroundColor(.white)
            HStack(spacing: 3) {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 10, height: 8)
                    .foregroundColor(.green)
                Text(likes)
                    .font(.caption)
                    .foregroundColor(.green)
            }
            .offset(y: 11)
            Spacer()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack() {
            Color.black
                .ignoresSafeArea()
            VStack() {
                HStack() {
                    Text("今日漫畫")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading)
                    Text("|")
                        .font(.caption2)
                        .foregroundColor(Color.gray)
                    Text("作品分類")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                    Spacer()
                    Image(systemName: "star")
                        .foregroundColor(.white)
                        .padding(.trailing)
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .padding(.trailing)
                }
                Divider()
                    .background(Color.gray)
                HStack(spacing: 17) {
                    Text("週二")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Text("週三")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Text("週四")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Text("週五")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    ZStack() {
                        Text("週六")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Rectangle()
                            .frame(width: 50, height: 2)
                            .offset(y: 22)
                            .foregroundColor(.white)
                    }
                    Text("週日")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Text("每日追漫區")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                Divider()
                    .background(Color.gray)
                HStack() {
                    Text("60部作品")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("依我的最愛排序")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                    Image(systemName: "arrowtriangle.down.fill")
                        .resizable()
                        .offset(x: -3, y: -1)
                        .frame(width: 8, height: 4)
                        .foregroundColor(.gray)
                }
                .padding(.top, 10)
                .frame(width:UIScreen.main.bounds.width-30)
                HStack() {
                    PanelView(icon: "panel1", genre: "奇幻冒險", title: "戰爭之傷", likes: "196,235")
                    PanelView(icon: "panel2", genre: "驚悚／恐怖", title: "麻煩", likes: "37,477")
                    ZStack() {
                        PanelView(icon: "panel3", genre: "愛情", title: "暗影任務", likes: "116,002")
                        Text("更新")
                            .font(Font.system(size: 10))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 25, height: 25)
                            .background(Color.green)
                            .clipShape(Circle())
                            .offset(x: -35, y: -90)
                    }
                }
                .padding([.top, .leading, .trailing])
                .frame(width:UIScreen.main.bounds.width-30)
                HStack() {
                    ZStack() {
                        PanelView(icon: "panel4", genre: "武俠", title: "破刃的懺悔", likes: "10,335")
                        Text("新")
                            .font(Font.system(size: 13))
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                            .frame(width: 25, height: 25)
                            .background(Color.black)
                            .clipShape(Circle())
                            .offset(x: -36, y: -98)
                    }
                    ZStack() {
                        PanelView(icon: "panel5", genre: "台灣原創作品", title: "意外的火花", likes: "204.2萬")
                        Text("暫停")
                            .font(Font.system(size: 10))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 25, height: 25)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .offset(x: -36, y: -98)
                    }
                    PanelView(icon: "panel6", genre: "懸疑推理", title: "帶著槍的男人", likes: "481,334")
                }
                .frame(width:UIScreen.main.bounds.width-30)
                //.offset(y: -50)
                .padding(.horizontal)
                Image("advertisement")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -15)
                HStack(spacing: 25) {
                    VStack(spacing: 8) {
                        Image(systemName: "heart.circle")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                        Text("熱門推薦")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    VStack(spacing: 8) {
                        Image(systemName: "book")
                            .resizable()
                            .frame(width: 25, height: 22)
                            .foregroundColor(.green)
                        Text("今日漫畫")
                            .font(.caption2)
                            .foregroundColor(.green)
                            .offset(y: 2)
                    }
                    VStack(spacing: 8) {
                        Image(systemName: "scribble.variable")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                        Text("投稿新星專區")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    VStack(spacing: 8) {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                        Text("我的漫畫")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    VStack(spacing: 8) {
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 33, height: 7)
                            .foregroundColor(.gray)
                        Text("其他")
                            .font(.caption2)
                            .foregroundColor(.gray)
                            .offset(y: 9)
                    }
                }
                .padding(.top)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

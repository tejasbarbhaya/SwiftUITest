//
//  ListView.swift
//  SwiftUITest
//
//  Created by Tejash Barbhaya on 01/06/23.
//

import SwiftUI

struct ListView: View {
    var listModels:[ListModel]
    var body: some View {
        List(listModels) { model in
            listRow(eachList: model)
        }
        .listStyle(.plain)
    }
}

struct listRow : View {
    var eachList:ListModel
    let gridItems: [GridItem] = [GridItem(),GridItem(),GridItem(),GridItem()]
    var body : some View {
        VStack {
            HStack(alignment: .top, content: {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading, content: {
                        HStack {
                            Text(eachList.name)
                                .padding(.leading,0)
                                .font(.system(size: 14.0))
                        }
                        
                        HStack {
                            Text(eachList.lenght)
                                .foregroundColor(Color.gray)
                                .font(.system(size: 10.0))
                            Text(eachList.weight)
                                .foregroundColor(Color.gray)
                                .font(.system(size: 10.0))
                        }
                })
                VStack {
                    HStack {
                        Image("check_small")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 20)
                            .background(Color.init(red: 1/255, green: 185.0/255, blue: 159.0/255))
                            .clipShape(Circle())
                        Text(eachList.statusValue)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 10.0))
                    }
                    
                }
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width:70, height: 30)
                        .clipShape(Capsule())
                    VStack(alignment: .center) {
                        Text(eachList.tagValue)
                            .foregroundColor(Color(.white))
                            .font(.system(size: 12.0))
                    }
                }
                .padding(.vertical,10)
                .padding(.trailing,10)
            })
            
            HStack {
                Text(eachList.shortDescription)
                    .font(.system(size: 14.0))
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.init(top: 0, leading: 0, bottom: 0.1, trailing: 0))
            
            
            HStack {
                Text(eachList.longDescription)
                    .font(.system(size: 13.0))
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            
            .foregroundColor(Color.gray)
            

            LazyVGrid(columns: gridItems,spacing: 5) {
                ForEach(eachList.arrayCapsuleValues, id: \.self) { number in
                    HStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width:70, height: 30)
                                .clipShape(Capsule())
                            VStack(alignment: .center) {
                                Text(number)
                                    .foregroundColor(Color(.white))
                            }
                        }
                    }
                }
            }
            .padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0 ))
        }
        
        .frame(maxWidth: .infinity,alignment: .leading)
        .listRowInsets(.init(top: 10,leading: 15,bottom: 0,trailing: 15))
    }
}

var listValues = [
    ListModel(id: 1, name: "안녕 나 응애", lenght: "165 cm", weight: "53kg", statusValue: "1일전", tagValue: "팔로우", shortDescription: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?", longDescription: "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? \n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아??? \n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!", numberOfHearts: "5", numberofComments: "5",arrayCapsuleValues: ["#2023","#MON","#TOP","#POPS!","#WOW","#ROW"]),
    ListModel(id: 1, name: "안녕 나 응애", lenght: "165 cm", weight: "53kg", statusValue: "1일전", tagValue: "팔로우", shortDescription: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?", longDescription: "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? \n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아??? \n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!", numberOfHearts: "5", numberofComments: "5",arrayCapsuleValues: ["#2023","#MON","#TOP","#POPS!","#WOW","#ROW"])
]

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(listModels: listValues)
    }
}

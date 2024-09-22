//
//  ProgramContentsRepository.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import Foundation
public class ProgramContentsRepository {
    var situationContents: [ProgramDataSet] = [
        ProgramDataSet(id: "s1", title: "カフェで注文しよう", description: "あなたが訪れたのはニューヨークの人気カフェ、飲み物や食べ物の注文をしてみましょう！", imageName: "cafe", difficulty: 1, talkPromptData: TalkPromptDataModel(prompt: "You are a barista and I am a customer ordering drinks and snacks at the New York Cafe, which has its own on-site bakery.", firstMessage: "Welcome, would you like to order?")),
        ProgramDataSet(id: "s2", title: "ホテルでチェックインしよう", description: "あなたが訪れたのはニューヨークの高級ホテル、チェックインをして宿泊の準備をしましょう！", imageName: "hotel", difficulty: 2, talkPromptData: TalkPromptDataModel(prompt: "You are a hotel receptionist and I am a hotel guest checking in to a single room at the Seoul Hotel in Seoul for three nights.", firstMessage: "Welcome. Would you like to check in?")),
        ProgramDataSet(id: "s3", title: "はじめまして！", description: "あなたはパーティーで誰かと出会ったばかり。自己紹介をして、相手のことをもっとよく知りましょう！", imageName: "party", difficulty: 2, talkPromptData: TalkPromptDataModel(prompt: "You and I are guests at a party. We meet and introduce ourselves to one another. Ask me basic introductory questions about my name, profession, and hobbies. Your name is Soa", firstMessage: "Nice to meet you, my name is Tommy. And you are?")),
        ProgramDataSet(id: "s4", title: "レストランで注文を取る", description: "あなたはレストランのウェイター、お客様の注文を取りましょう！", imageName: "restaurant", difficulty: 2, talkPromptData: TalkPromptDataModel(prompt: "You are a waiter and I am a customer ordering food at a fancy Italian restaurant.", firstMessage: "Good evening, are you ready to order?")),
        ProgramDataSet(id: "s5", title: "映画の感想を話す", description: "あなたは友人と映画を観た後、その感想を話し合います。", imageName: "movie", difficulty: 3, talkPromptData: TalkPromptDataModel(prompt: "You and I are friends who just watched a movie. We discuss our thoughts and opinions about the movie.", firstMessage: "That was a great movie, don't you think?")),
        ProgramDataSet(id: "s6", title: "旅行の計画を立てる", description: "あなたと友人は週末の旅行を計画しています。", imageName: "travel", difficulty: 2, talkPromptData: TalkPromptDataModel(prompt: "You and I are planning a weekend trip together. We discuss where to go, what to do, and what to pack.", firstMessage: "So, where should we go this weekend?")),
        ProgramDataSet(id: "s7", title: "面接を受ける", description: "あなたは求人に応募し、面接を受けています。", imageName: "interview", difficulty: 4, talkPromptData: TalkPromptDataModel(prompt: "You are a job applicant and I am the interviewer. We conduct a job interview.", firstMessage: "Hello, nice to meet you. Can you tell me a bit about yourself?")),
        ProgramDataSet(id: "s8", title: "新しいアイデアを提案する", description: "あなたはチームミーティングで新しいアイデアを提案します。", imageName: "proposal", difficulty: 3, talkPromptData: TalkPromptDataModel(prompt: "You are a team member and I am your boss. You propose a new idea in a team meeting.", firstMessage: "Let's start the meeting. Do you have anything to propose?")),
        ProgramDataSet(id: "s9", title: "病院で診察を受ける", description: "あなたは病院で診察を受けています。", imageName: "hospital", difficulty: 3, talkPromptData: TalkPromptDataModel(prompt: "You are a patient and I am a doctor. You receive a medical examination.", firstMessage: "Hello, what seems to be the problem?")),
        ProgramDataSet(id: "s10", title: "お店で買い物をする", description: "あなたはお店で買い物をしています。", imageName: "shopping", difficulty: 2, talkPromptData: TalkPromptDataModel(prompt: "You are a customer and I am a store clerk. You shop at a store.", firstMessage: "Hello, can I help you find something?")),
        ProgramDataSet(id: "s11", title: "友人とランチをする", description: "あなたは友人とランチに出かけます。", imageName: "restaurant", difficulty: 2, talkPromptData: TalkPromptDataModel(prompt: "You and I are friends having lunch together. We chat about various topics.", firstMessage: "It's nice to catch up with you. How have you been?")),
        ProgramDataSet(id: "s12", title: "家族と電話をする", description: "あなたは遠くに住む家族と電話をしています。", imageName: "cafe", difficulty: 2, talkPromptData: TalkPromptDataModel(prompt: "You and I are family members talking on the phone. We catch up on each other's lives.", firstMessage: "Hello, it's been a while. How are you?"))
    ]
}


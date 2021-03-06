package app42chatbot

import grails.converters.JSON
class ChatBotController {
    def maService
    def chatBotService
    def index = { 
        session["user"] = "neha.tiwari@shephertz.com"
        def user = session["user"]
        [userId:user]
    
    }
    
    def getServicesByLoginChatbot = {
        def user = session["user"]
        if(!user){
            render """{failure:true, message:"Client is not authorized "}"""
            return;
        }

        def response  = chatBotService.getServicesByLoginChatbot(params, user)
        render response
    }

    
    def getChatBotStatistics = {
        def result  = chatBotService.getChatBotStatistics(params)
        render result as JSON
    }
    
    def getMostCommanPhrases = {
        def result  = chatBotService.getMostCommanPhrases(params)
        render result as JSON
    }
    
    def getMessage_in_vs_out = {
        def result  = chatBotService.getMessage_in_vs_out(params)
        render result as JSON
    }
    
    def getMostActiveHours = {
        def result  = chatBotService.getMostActiveHours(params)
        render result as JSON
    }
    
    def getAllUsers = {
        def result  = chatBotService.getAllUsers(params)
        render result as JSON
    } 
    
    def getUserDetails = {
        def result  = chatBotService.getUserDetails(params)
        render result as JSON
    } 
    
    def getUserConversation = {
        def result  = chatBotService.getUserConversation(params)
        render result as JSON
    }
    
    def openConversation = {
        def result  = chatBotService.openConversation(params)
        render result as JSON
    }
    
    def saveIntent = {
        def result  = chatBotService.saveIntent(params)
        render result as JSON
    }
    
    def getAllIntent = {
        def result  = chatBotService.getAllIntent(params)
        render result as JSON
    } 
     
    def saveOrUpdateUser = {
        def result  = chatBotService.saveOrUpdateUser(params)
        render result as JSON
    }
    def tagEvent = {
        println params
        def result  = chatBotService.tagEvent(params)
        println result as JSON
        render result as JSON
    }

    def updateIntent = {
        def result  = chatBotService.updateIntent(params)
        render result as JSON
    } 
    
    def getIntentDetails = {
        def result  = chatBotService.getIntentDetails(params)
        render result as JSON
    } 
} 

/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 * Shephertz Technologies
 * @author Jatin Chauhan
 * @date 12 Mar 2015
 * @version 1.0
 */

// App Manager Service

chatBot.factory('dashboardService', function($rootScope,$http) {
    var appDataObj = []
    var service = {
        
        getApps: function() {
            var promise = $http({
                method: 'GET', 
                url: '../service/getServicesByLoginNew?methodType=GET'
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getAppsForDropdown: function() {
            $.ajax({
                type: "GET",
                async: false,
                url: '../chatBot/getServicesByLoginChatbot',
                complete: function (data) {
                    var responseData = data.responseJSON
                    appDataObj = responseData.rows
                }
            });
            return appDataObj;
        },
        getChatBotStatistics: function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getChatBotStatistics',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getMostCommanPhrases: function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getMostCommanPhrases',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getMostActiveHours: function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getMostActiveHours',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getMessage_in_vs_out : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getMessage_in_vs_out',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getAllUsers : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getAllUsers',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getUserDetails : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getUserDetails',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getUserConversation : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getUserConversation',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        openConversation : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/openConversation',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        saveIntent : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/saveIntent',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        saveEntity : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/saveEntity',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getAllIntent : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getAllIntent',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getAllEntities : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getAllEntities',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        updateIntent : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/updateIntent',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getIntentDetails : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getIntentDetails',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        deleteIntent : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/deleteIntent',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        updateEntity : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/updateEntity',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getEntityDetails : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getEntityDetails',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        
        getTotalEventsForApp: function(id) {
            var promise = $http({
                method: 'GET', 
                url: '../event/getTotalEvents?id='+id+'&methodType=GET'
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        startTraining : function() {
            //            var promise = $http({
            //                method: 'POST', 
            //                url: 'url of learn'
            //            }).success(function(data, status, headers, config) {
            //                return data;
            //            })
            //            return promise;
            return true;
        },
        getUnknownIntent: function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getUnknownIntent',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        updatePhrase: function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/updatePhrase',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getDialog : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getDialog',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        matchItToIntent : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/matchItToIntent',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getSentiments : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getSentiments',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getAllAlgorithms : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getAllAlgorithms',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        }
        ,
        getAllLanguagesSupported : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getAllLanguagesSupported',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        }
        ,
        getAllThresholds : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getAllThresholds',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        getMessages : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/getMessages',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        },
        updateAppSetings : function(params) {
            var promise = $http({
                method: 'POST', 
                url: '../chatBot/updateAppSetings',
                params:params
            }).success(function(data, status, headers, config) {
                return data;
            })
            return promise;
        }
    }
    return service
});
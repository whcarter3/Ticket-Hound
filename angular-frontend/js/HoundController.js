(function() {
    angular
        .module('app')
        .controller('HoundController', HoundControllerFunc);

        HoundControllerFunc.$inject = ['$resource', '$http'];

        function HoundControllerFunc($resource, $http){
            var self = this;

            var User = $resource('http://localhost:3000/api/users/:id', {id: '@id'}, {'update': {method: "PUT"}});

            self.Users = getUsers();
            // self.addUser = addUser();
            self.results = tixRequest;
            // self.results = ticketMaster();
            // self.performerName = performerName;
            // var performerName = self.performerName;
            // self.performerName = "";


            function getUsers(){
                return User.get();
            }

            // function addUser(){
            //     newUser = new User();
            //     newUser.username = self.text;
            //     newUser.email = self.text;
            //     newUser.password = self.text;
            //     newUser.password_confirm = self.text;
            //     newUser.$save();
            // }


            function tixRequest(){
                // var performerName = self.performerName;
                var performerName = self.performerName;
                
                var url = 'http://jsonpify.heroku.com?q="' + performerName + '"&lat=34.02&long=-118.49&radius=100&apikey=1u3s6SztBBko48JPpTCASNtS0irCgBAI&callback=JSON_CALLBACK&resource=https://app.ticketmaster.com/v1/events';
                $http.jsonp(url)
                    .success(function(data, status, headers, config) {
                    self.results = data;
                    })
                    .error(function(data, status, headers, config) {  
                    console.log(data);
                    self.results = data;
                    });
                self.performerName = "";
            }
        }


    
})();
(function() {
    angular
        .module('app')
        .controller('HoundController', HoundControllerFunc);

        HoundControllerFunc.$inject = ['$resource', '$http'];

        function HoundControllerFunc($resource, $http){
            var self = this;

            var User = $resource('http://localhost:3000/api/users/:id', {id: '@id'});
            // var req = {
            //      method: 'GET',
            //      url: 'https://app.ticketmaster.com/v1/events?q="gaga"&lat=34.02&long=-118.49&radius=25&apikey=1u3s6SztBBko48JPpTCASNtS0irCgBAI',
            //      headers: {
            //        'Content-Type': 'application/json'
            //      }
            //      // data: {response: 'response'}
            //     }

            self.Users = getUsers();
            self.results;


            function getUsers(){
                return User.get();
            }

            // function getResults(req) {
            //     $http(req)
            //         .success(function(data){return data})
            //         .error(function(){return "you done fucked up son"});
            // };

            // function jsonp_callback(data){
            //     console.log("Data found");
            // }

            $http.jsonp("https://app.ticketmaster.com/v1/events?q=gaga&apikey=1u3s6SztBBko48JPpTCASNtS0irCgBAI")
            .success(function(response) {
                self.results = response;
            })
            .error(function(){
                self.results = "You done fucked up son"
            });
        }

})();
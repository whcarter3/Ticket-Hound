(function() {
    angular
        .module('app')
        .controller('HoundController', HoundControllerFunc);

        HoundControllerFunc.$inject = ['$resource'];

        function HoundControllerFunc($resource){
            var self = this;

            var User = $resource('http://localhost:3000/api/users/:id', {id: '@id'});

            self.Users = getUsers();

            function getUsers(){
                return User.get();
            }

    };
})();
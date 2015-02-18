(function() {
    angular
        .module('app')
        .controller('HoundController', HoundControllerFunc);

        HoundControllerFunc.$inject = ['$resource'];

        function HoundControllerFunc($resource){
            var self = this;

            var User = $resource('http://localhost:3000/api/users/:id', {id: '@id'}, {'update': {method: "PUT"}});

            self.Users = getUsers();
            self.addUser = addUser();

            function getUsers(){
                return User.get();
            }

            function addUser(){
                newUser = new User();
                newUser.username = self.text;
                newUser.email = self.text;
                newUser.password = self.text;
                newUser.password_confirm = self.text;
                newUser.$save();
            }


    };
})();
(function() {
    angular
        .module('app')
        .factory('UserFactory', UserFactoryFunc);

        function UserFactoryFunc($resource){
            return $resource('localhost:3000/api/users/:id', {'@id'})
        }

})();
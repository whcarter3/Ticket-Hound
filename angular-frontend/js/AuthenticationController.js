angular
    .module("app")
    .controller("AuthenticationController", AuthenticationController);

    AuthenticationController.$inject = ["$http"];

    function AuthenticationController($http){
        var self = this;
    }
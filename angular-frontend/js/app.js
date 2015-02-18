angular
    .module('app', ['ngResource', 'ui.router']);
    .config(MainRouter);

    function MainRouter($stateProvider, $urlRouterProvider){

        $stateProvider
            .state("main", {
                url: "/",
                templateUrl: "main.html"
            })
            .state("home", {
                url: "/home",
                templateUrl: "home.html"
            })
            .state("signup", {
                url: "/signup",
                templateUrl: "signup.html"
            })
            .state("login", {
                url: "/login",
                templateUrl: "login.html"
            });

        $urlRouterProvider.otherwise("/");
    }

    //     function MainRouter($stateProvider, $urlRouterProvider){

    //     $stateProvider
    //         .state("title", {
    //             url: "/",
    //             templateUrl: "title.html"
    //         })
    //         .state("home", {
    //             // needs to have url attribute
    //             url: "/home",
    //             // and a template url
    //             templateUrl: "home.html"
    //         })
    //         .state("archive", {
    //             url: "/archive",
    //             templateUrl: "archive.html"
    //         });

    //     // like "else" in if/else statement, so it goes back home
    //     $urlRouterProvider.otherwise("/");

    // }
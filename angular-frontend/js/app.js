angular
    .module('app', ['ngResource', 'ui.router']);
    // commented out temporarily due to bug
    // .config(MainRouter)

    // function MainRouter($stateProvider, $urlRouterProvider){

    //     $stateProvider
    //         .state("main", {
    //             url: "/",
    //             templateUrl: "main.html"
    //         })
    //         .state("home", {
    //             url: "/home",
    //             templateUrl: "home.html"
    //         })
    //         .state("signup", {
    //             url: "/signup",
    //             templateUrl: "signup.html"
    //         })
    //         .state("login", {
    //             url: "/login",
    //             templateUrl: "login.html"
    //         });

    //     $urlRouterProvider.otherwise("/");
    // }


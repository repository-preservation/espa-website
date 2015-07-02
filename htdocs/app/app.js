
    var espaApp = angular.module('espaApp', ['ngRoute']);

    // configure our routes
    espaApp.config(function($routeProvider) {
        $routeProvider

            // route for the home page
            .when('/', {
                templateUrl : 'app/views/main.html',
                controller  : 'MainController'
            })

            .when('/new_order', {
                templateUrl : 'app/views/new_order.html',
                controller : 'NewOrderController'
            })

            .when('/view_orders', {
                templateUrl : 'app/views/view_orders.html',
                controller: 'ViewOrdersController'
            })
            .when('/order_fulfillment', {
                templateUrl : 'app/views/order_fulfillment.html',
                controller: 'OrderFulFillmentController'
            });
    });


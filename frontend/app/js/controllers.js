'use strict';

/* Controllers */

var phonecatApp = angular.module('familyApp', []);

phonecatApp.controller('FamilyCardsCtrl', function($scope) {
	$scope.users = [
		{'firstName': 'Aamir',
     	 'lastName': 'Rasheed',
     	 'snippet': 'Fast just got faster with Nexus.'}
   	];
	$scope.parents = [
	    {'firstName': 'Dora',
	     'lastName': 'Li',
	     'snippet': 'Fast just got faster with Nexus.'},
	    {'firstName': 'Bryan',
	     'lastName':'Yan',
	     'snippet': 'The Next, Next Generation tablet.'},
	     
	];
	$scope.children = [
	    {'firstName': 'Vaishnavi',
	     'lastName': 'Raman',
	     'snippet': 'Fast just got faster with Nexus.'},
	    {'firstName': 'Jason',
	     'lastName':'Wu',
	     'snippet': 'The Next, Next Generation tablet.'},
	     {'firstName': 'Frederick',
	     'lastName':'Lee',
	     'snippet': 'The Next, Next Generation tablet.'},
	];
	$scope.spouses = [
	    {'firstName': 'Youngjin',
	     'lastName': 'Yun',
	     'snippet': 'Fast just got faster with Nexus.'},
	];

});

angular.module('12307App')
	.factory 'Verify' , ()->

		patterns = {

			email : new RegExp(/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/),
			date  : new	RegExp(/^\d{4}-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2]\d|3[0-1])$/),
			id15: new  RegExp(/(^\d{15}$)|(^\d{17}(\d|x|X)$)/i),
			id18: new RegExp(/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/),
			phone: new RegExp(/^(13[0-9]|15[0|3|6|7|8|9]|18[8|9])\d{8}$/),
			password: new RegExp(/^[a-zA-Z]\w{5,17}$/),

			verify :(str,type)->
				patterns[type].test(str)

		}


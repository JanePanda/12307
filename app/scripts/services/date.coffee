angular.module('12307App').factory 'Date',($filter)->
  
   getDateListItems:()->
     dateListItems = []
     for offset in [1..9]
        now = new Date()
        now.setTime now.getTime() + offset*24*60*60*1000
        dateListItems.push  $filter('date')  now, 'MM-dd' 
      	return dateListItems
		
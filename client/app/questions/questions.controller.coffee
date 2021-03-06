'use strict'

window.QUESTION_MODEL = [
  id: 1
  user:
    avatarUrl: 'https://randomuser.me/api/portraits/med/women/89.jpg'
    displayName: 'brooklyn.miles63'
  createdAt: 'Thu, 19 Mar 2015 00:45:05 -0700'
  subject: 'How do I deduct my grandmother?'
  details: 'Sed vitae urna a sapien maximus dignissim a at lorem. Sed a dui vitae velit tristique viverra. Fusce sit amet quam tortor. Sed interdum lacus purus. In sollicitudin luctus ipsum. Suspendisse potenti. Phasellus feugiat quam mi, eget interdum urna iaculis vel. Nam vel fringilla nibh. Morbi a justo dui. Pellentesque dui velit, rhoncus in tempus eu, tristique sed enim. Morbi elit est, gravida vitae diam sit amet, tincidunt sagittis erat.'
,
  id: 2
  user:
    avatarUrl: 'https://randomuser.me/api/portraits/med/men/92.jpg'
    displayName: 'austin.chambers76'
  createdAt: 'Thu, 19 Mar 2015 00:45:05 -0700'
  subject: 'Where is my refund? How long does it take?'
  details: ''
,
  id: 3
  user:
    avatarUrl: 'https://randomuser.me/api/portraits/med/women/7.jpg'
    displayName: 'deann.ford17'
  createdAt: 'Thu, 19 Mar 2015 00:45:05 -0700'
  subject: 'Do you want to grab a coffee?'
  details: 'Quisque sit amet hendrerit dui. Praesent accumsan, libero vitae luctus efficitur, erat elit blandit nunc, eu dignissim nulla tellus eu magna. Fusce dictum leo auctor dolor aliquam faucibus. Nulla euismod eget felis ac ultrices. Pellentesque nec interdum magna. Etiam sem elit, pellentesque ut arcu eu, molestie ultrices tellus. Duis vel magna vitae leo congue pretium. Integer lacus libero, porttitor in risus in, varius lobortis odio. Duis in finibus ligula, bibendum cursus eros. Pellentesque vel eros enim. Morbi vestibulum at arcu sed tincidunt. Vivamus blandit erat id tempor cursus.'
]

angular.module 'taxPartyOnlineApp'
.controller 'QuestionsCtrl', ($scope, $routeParams, Pusher) ->
  if $routeParams.id
    $scope.question = _.find QUESTION_MODEL, (question) ->
      question.id == parseInt($routeParams.id)

var io = require('socket.io');
var express = require('express');
var app = express.createServer()
  , io = io.listen(app);

app.configure(function () {
  app.use(express.static(__dirname + '/web'));

  function compile (str, path) {
    return stylus(str)
      .set('filename', path)
      .use(nib());
  };
});

app.get('/', function (req, res) {
  res.render('index', { layout: false });
});

app.listen(8081, function () {
  var addr = app.address();
  console.log('   app listening on http://' + addr.address + ':' + addr.port);
});


io.sockets.on('connection', function (socket) {

	socket.on('disconnect', function(){
  	console.log('user disconnect');
  });

	  io.on('connection', function(socket){
	  socket.on('chat message', function(msg){
	    console.log('message: ' + msg);
	  });
	});

  	socket.on('removeAction', function(data){
			console.log('REMOVER');
			io.sockets.emit('removeScreen', data);
		});

    socket.on('uploadDataGraphic', function(data){
      console.log('uploadDataGraphic');
      io.sockets.emit('uploadDataGraphic', data);
    });

});

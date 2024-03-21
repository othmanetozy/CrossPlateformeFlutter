const app = require('express')();
const {Server} = require('socket.io');


async function server() {
    const http = require('http').createServer(app);
    const io = new Server(http,{transports: ['websocket.io']});
    const roomName = "test";


    io.on("connection",(socket)=>{
        socket.on("join",() =>{
            socket.join(roomName);
            socket.to(roomName).emit("joindre la reunion")
        });


        socket.on("offer",(offer) =>{
            socket.to(roomName).emit("offer",offer);
        });
        
        socket.on("answer",(answer)=>{
            socket.to(roomName).emit("answer",answer);
        });
        
        socket.on("ice",(ice)=>{
            socket.to(roomName).emit("ice",ice);
        });
    });

    http.listen(3001,()=>console.log('server is runnig'));
}


server();
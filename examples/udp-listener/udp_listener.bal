import ballerina/io;
import ballerina/udp;
import ballerina/log;
import ballerina/lang.'string;

// Bind the service to the port.
// Optionally, you can provide the `remoteHost` and `remotePort` to
// configure the listener as a connected listener, which only
// reads and writes to the configured remote host.
// udp:Listener(48829, remoteHost = "www.remote-clinet.com", remotePort = 8080)
service on new udp:Listener(48829) {

    // This remote method is invoked once the content is received from the client.
    // You may replace the `onBytes` method with `onDatagram`, which reads the data as
    // readonly & udp:Datagram.
    remote function onBytes(readonly & byte[] data, udp:Caller caller) 
            returns (readonly & byte[])|udp:Error? {
        io:println("Received by listener: ", 'string:fromBytes(data));
        // Echo back the data to the same client.
        // This is similar to calling `caller->sendBytes(data);`.
        return data;
    }

    // This remote method is invoked in an error situation
    // if it happens during the `onBytes` and `onDatagram` methods.
    remote function onError(readonly & udp:Error err) {
        log:printError(msg = err.message());
    }
}


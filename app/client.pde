void clientActions(){
  if (send == true){
    
    // server-client comm stuff
    
    myClient.write("snap");
    println("Data successfully sent. Waiting for response");
    
    if (picCounter == 0){
      data = "100";
    }
    else{
      data = myClient.readStringUntil('p');
      data = data.substring(0, data.length() - 1);
    }
    
    xLocation = int(data);
    println(xLocation);
    picCounter = picCounter + 1; 
     
    // update slider code 
    
    location.setValue(xLocation);
    
    // your mom
    
    send = false;
  } 
}


void confirmActions(){
  
  if (sendToHardware  == true){
    
    newLocation = str(xLocation) + "p";
    
    myClient.write("move");
    
    delay(100);
    
    myClient.write(xLocation);
    println("command successfully sent");
    
    sendToHardware = false;
  }
  
}

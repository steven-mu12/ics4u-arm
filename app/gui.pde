/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void camButtonClicked(GButton source, GEvent event) { //_CODE_:camButton:599539:
  send = true;
} //_CODE_:camButton:599539:

public void confirmButtonClicked(GButton source, GEvent event) { //_CODE_:confirmButton:217314:
  sendToHardware = true;
} //_CODE_:confirmButton:217314:

public void LocSliMoved(GSlider source, GEvent event) { //_CODE_:LocationSlider:479904:
  xLocation = LocationSlider.getValueI();
} //_CODE_:LocationSlider:479904:

public void SettingsClicked(GButton source, GEvent event) { //_CODE_:Settings:686750:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:Settings:686750:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:321259:
  appc.background(230);
} //_CODE_:window1:321259:

public void ConfigureIPClicked(GButton source, GEvent event) { //_CODE_:ConfigureIP:607197:
  println("ConfigureIP - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:ConfigureIP:607197:

public void CSDLopened(GDropList source, GEvent event) { //_CODE_:ColourScheme:900914:
  println("ColourSchemeDL - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:ColourScheme:900914:

public void button1_click1(GButton source, GEvent event) { //_CODE_:backButton:350746:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:backButton:350746:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  camButton = new GButton(this, 26, 110, 196, 37);
  camButton.setText("Take Snapshot");
  camButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  camButton.addEventHandler(this, "camButtonClicked");
  confirmButton = new GButton(this, 26, 230, 196, 37);
  confirmButton.setText("Confirm Move");
  confirmButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  confirmButton.addEventHandler(this, "confirmButtonClicked");
  label1 = new GLabel(this, 18, 15, 212, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("StrongArm Command Centre");
  label1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label1.setOpaque(false);
  LocationSlider = new GSlider(this, 26, 170, 196, 37, 10.0);
  LocationSlider.setShowValue(true);
  LocationSlider.setShowLimits(true);
  LocationSlider.setLimits(0.0, 0.0, 2000.0);
  LocationSlider.setShowTicks(true);
  LocationSlider.setNumberFormat(G4P.DECIMAL, 2);
  LocationSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  LocationSlider.setOpaque(false);
  LocationSlider.addEventHandler(this, "LocSliMoved");
  Settings = new GButton(this, 25, 50, 196, 37);
  Settings.setText("Settings");
  Settings.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Settings.addEventHandler(this, "SettingsClicked");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 248, 220, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  label2 = new GLabel(window1, 16, 15, 212, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("StrongArm Command Centre");
  label2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label2.setOpaque(false);
  ConfigureIP = new GButton(window1, 26, 50, 196, 37);
  ConfigureIP.setText("Configure IP");
  ConfigureIP.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  ConfigureIP.addEventHandler(this, "ConfigureIPClicked");
  ColourScheme = new GDropList(window1, 26, 110, 196, 180, 8, 10);
  ColourScheme.setItems(loadStrings("list_900914"), 0);
  ColourScheme.addEventHandler(this, "CSDLopened");
  backButton = new GButton(window1, 26, 155, 98, 37);
  backButton.setText("Back");
  backButton.addEventHandler(this, "button1_click1");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GButton camButton; 
GButton confirmButton; 
GLabel label1; 
GSlider LocationSlider; 
GButton Settings; 
GWindow window1;
GLabel label2; 
GButton ConfigureIP; 
GDropList ColourScheme; 
GButton backButton; 

//Sample Code: Viewport

import 'package:rikulo_ui/view.dart';
import 'Viewport.dart';

void createToolbar(Viewport parent) {
  View toolbar = new View();
  toolbar.layout.type = "linear";
  toolbar.profile.width = "content";
  toolbar.profile.height = "content";
  for (final String src in ["search.png", "received.png", "sent.png"]) {
    toolbar.addChild(new Image("res/$src"));
  }
  parent.toolbar = toolbar;
}

void createChildViews(View parent) {
  //first hlayout
  View hlayout = new View();
  hlayout.layout.type = "linear";
  hlayout.profile.height = "content";
  hlayout.profile.width = "flex";
  parent.addChild(hlayout);

  View view = new View();
  view.style.backgroundColor = "blue";
  view.profile.width = "flex";
  view.profile.height = "50";
  hlayout.addChild(view);
  view = new View();
  view.style.backgroundColor = "orange";
  view.profile.width = "flex 2";
  view.profile.height = "40";
  hlayout.addChild(view);
  view = new View();
  view.style.backgroundColor = "yellow";
  view.profile.width = "flex 3";
  view.profile.height = "30";
  hlayout.addChild(view);

  //second horizontal layout
  hlayout = new View();
  hlayout.layout.type = "linear";
  hlayout.layout.align = "end";
  hlayout.profile.height = "flex";
  hlayout.profile.width = "flex";
  parent.addChild(hlayout);

  view = new View();
  view.style.backgroundColor = "yellow";
  view.profile.width = "flex 3";
  view.profile.height = "flex";
  hlayout.addChild(view);
  view = new View();
  view.style.backgroundColor = "orange";
  view.profile.width = "flex 2";
  view.profile.height = "50%";
  hlayout.addChild(view);
  view = new View();
  view.style.backgroundColor = "blue";
  view.profile.width = "flex 1";
  view.profile.height = "25%";
  hlayout.addChild(view);
}

void main() {
  Viewport viewport = new Viewport("Demo of Viewport");
  viewport.layout.type = "linear";
  viewport.layout.orient = "vertical";
  viewport.profile.width = viewport.profile.height = "flex";
  
  final View mainView = new View()..addToDocument();
  mainView.addChild(viewport);

  createToolbar(viewport);
  createChildViews(viewport);
}

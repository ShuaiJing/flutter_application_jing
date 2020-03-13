import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jing/notifies/provider_demo_notifier.dart';
import 'package:provider/provider.dart';

class ProviderDemoScreen extends StatefulWidget {
  static const String routeName = 'test://providerdemo';
  @override
  State<StatefulWidget> createState() {
    return ProviderDemoScreenState();
  }
}

class ProviderDemoScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderDemoNotifier>(
        create: (_) => ProviderDemoNotifier(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('provider demo'),
          ),
          body: Consumer(builder: (BuildContext context, ProviderDemoNotifier notifier, Widget child) =>
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(notifier.index.toString()),
                  SizedBox(height: 10,width: double.infinity,),
                  RaisedButton(onPressed: (){
                    notifier.index++;
                  }, child: Text('加1'),)
                ],
              ),
          )
        ));
  }
}

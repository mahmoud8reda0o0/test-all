import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tesssssst/ui/Provider/data1.dart';
import 'package:tesssssst/ui/Provider/provider_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>Provider_data(),
        child: MaterialApp(
          home: Date1(),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:tesssssst/ui/inherited_github/form_page.dart';
// import 'package:tesssssst/ui/inherited_github/state_container.dart';
//
// void main() {
//   var user;
//   runApp(new StateContainer(user: user,
//   child: new TodoApp()));
// }
//
// class TodoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Some Todos',
//       home: new HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   @override
//   HomeScreenState createState() => new HomeScreenState();
// }
//
// class HomeScreenState extends State<HomeScreen> {
//   late User user;
//
//   Widget get _userInfo {
//     return new Center(
//       child: new Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           new Text("${user.firstName} ${user.lastName}",
//               style: new TextStyle(fontSize: 24.0)),
//           new Text(user.email, style: new TextStyle(fontSize: 24.0)),
//         ],
//       ),
//     );
//   }
//
//   Widget get _logInPrompt {
//     return new Center(
//       child: new Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           new Text('Please add user information'),
//         ],
//       ),
//     );
//   }
//
//   void _updateUser(BuildContext context) {
//     Navigator.push(
//       context,
//       new MaterialPageRoute(
//         fullscreenDialog: true,
//         builder: (context) {
//           return new UpdateUserScreen(user: user,);
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final container = StateContainer.of(context);
//     user = container.user;
//     var body = user != null ? _userInfo : _logInPrompt;
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Inherited Widget Test'),
//       ),
//       body: body,
//       floatingActionButton: new FloatingActionButton(
//         onPressed: () => _updateUser(context),
//         child: new Icon(Icons.edit),
//       ),
//     );
//   }
// }
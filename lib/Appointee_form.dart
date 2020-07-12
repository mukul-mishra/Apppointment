import 'package:flutter/material.dart';

class AuthFormAppointee extends StatefulWidget {
  @override
  _AuthFormAppointeeState createState() => _AuthFormAppointeeState();
}

class _AuthFormAppointeeState extends State<AuthFormAppointee> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Form(
                key: _formKey,
                child: ListView(
                  reverse: true,
                  children: <Widget>[
                    TextFormField(
                      key: ValueKey('userData'),
                      validator: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Address',
                      ),
                      /*onSaved: (value) {
                                    _userEmail = value;
                                  }*/
                    ),
                    TextFormField(
                      key: ValueKey('user'),
                      validator: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Add',
                      ),
                      /*onSaved: (value) {
                                    _userEmail = value;
                                  }*/
                    ),
                    TextFormField(
                      key: ValueKey('email'),
                      validator: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                      ),
                      /*onSaved: (value) {
                                    _userEmail = value;
                                  }*/
                    ),
                    //if (!_isLogin)
                    TextFormField(
                      key: ValueKey('username'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter a valid username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: 'UserName'),
                      /*onSaved: (value) {
                                        _userName = value;
                                      }*/
                    ),
                    TextFormField(
                      key: ValueKey('password'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 8) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'PassWord',
                      ),
                      obscureText: true,
                      /*onSaved: (value) {
                                      _userPassWord = value;
                                    }*/
                    ),
                    TextFormField(
                      key: ValueKey('userSpecialisation'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter a valid username';
                        }
                        return null;
                      },
                      decoration:
                          InputDecoration(labelText: 'UserSpecialisation'),
                      /*onSaved: (value) {
                                        _userName = value;
                                      }*/
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    // if (widget.isLoading) CircularProgressIndicator(),
                    //if (!widget.isLoading)
                    RaisedButton(
                      child: Text('Signup'),
                      onPressed: () {},
                      //if (!widget.isLoading)
                    ),
                  ].reversed.toList(),
                ))),
      ),
    ));
  }
}

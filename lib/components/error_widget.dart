import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  final Function refreshCallBack;
  final bool isConnection;

  MyErrorWidget({@required this.refreshCallBack, this.isConnection = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '😔',
            style: TextStyle(
              fontSize: 60.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: Text(
              getErrorText(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textTheme.headline6.color,
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: refreshCallBack,
              color: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                'ESSAYEZ ENCORE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  getErrorText() {
    if (isConnection) {
      return 'Il y a un problème avec votre connexion Internet. '
          '\nVeuillez réessayer.';
    } else {
      return 'Impossible de charger cette page. \nS\'il vous plaît, essayez à nouveau.';
    }
  }
}

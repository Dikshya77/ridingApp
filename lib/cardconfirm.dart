import 'package:flutter/material.dart';


class CrdCfrm extends StatefulWidget {
  const CrdCfrm({Key key}) : super(key: key);

  @override
  _CrdCfrmState createState() => _CrdCfrmState();
}

class _CrdCfrmState extends State<CrdCfrm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(bottom: 2.0),
              child: ClipPath(
                clipper: ClippingClass(),
                child: Container(
                  color: Colors.green,
                  height: 320.0,
                  width: MediaQuery.of(context).size.width,



                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}

class ClippingClass  extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();

    return path;
  }

  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) =>false;
    // TODO: implement shouldReclip


}

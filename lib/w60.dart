import 'package:flutter/cupertino.dart';

//! CupertinoPopupSurface

class Widget060 extends StatelessWidget {
  const Widget060({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoPopupSurface'),
      ),
      child: Center(
        child: CupertinoButton.filled(
          child: const Text("Click Me"),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return CupertinoPopupSurface(
                  isSurfacePainted: true,
                  child: Container(
                    color: CupertinoColors.white,
                    width: double.infinity,
                    height: 400,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Este es un popup estilo iOS',
                          style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.black,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CupertinoButton(
                          color: CupertinoColors.systemRed,
                          child: const Text('Cerrar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

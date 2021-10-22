import 'package:flutter/material.dart';
import 'package:flutter_login/app/components/custom_appbar_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isModalOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.expand_less_outlined,
        ),
        onPressed: () {
          setState(() {
            isModalOpen = true;
          });

          showModalBottomSheet(
            barrierColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Container(
                height: size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: const Text('asdas'),
              );
            },
          ).then(
            (value) {
              setState(() {
                isModalOpen = false;
              });
            },
          );
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFDEBEC),
        flexibleSpace: const CustomAppBarComponent(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isModalOpen ? const Text('ABERTO') : const Text('FECHADO'),
              Image.asset(
                'assets/images/calendar.png',
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 32.0,
                ),
                child: Text(
                  'Seja produtivo! Organize sua rotina.',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 40.0,
                    color: Color(0xFF08456A),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

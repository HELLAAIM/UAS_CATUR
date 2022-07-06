part of 'main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 100),
          children: [
            SizedBox(
                height: 100,
              ),
            Image.asset('images/11.png',
                height: 150,
                width: 150,
                ),
            SizedBox(
              height: 13,
            ),
            Image.asset('images/22.png',
                height: 40,
                width: 194,
                ),
            SizedBox(
              height: 29,
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                    return LoginPage();
                  })));}
                ),
                child: Text('Login',
                  style:TextStyle(color: whitecolor,
                    fontSize:15,
                    fontWeight: FontWeight.w700,),),
                style: ElevatedButton.styleFrom(
                    primary: colorPrimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    )),
              ),
            ),
            SizedBox(
              height:15,
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                onPressed:(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                    return RegisterPage();
                  })));}
                ),
                child: Text('Register',
                  style:TextStyle(color: colorPrimary,
                    fontSize:15,
                    fontWeight: FontWeight.w700,
                  ),

                ),
                style: ElevatedButton.styleFrom(
                    primary: graycolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    )
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Continue as a guest',
                textAlign: TextAlign.center,
                style: TextStyle(color: colorPrimary)
            )

          ],
        ),
      ),
    );

  }
}
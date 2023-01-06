import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/free-photo/merry-christmas-red-background_1361-3542.jpg?w=2000'),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Stack(
                children: const [
                  Image(
                    image: NetworkImage(
                      'https://etimg.etb2bimg.com/thumb/msid-63580630,width-1200,resizemode-4/.jpg',
                    ),
                    height: 300,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                ),
                width: 300,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.white,
                  onSaved: (email) {},
                  decoration: const InputDecoration(
                    hintText: "Employee ID",
                    hintStyle: TextStyle(color: Colors.black),
                    icon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                color: Colors.white,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.black),
                    suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.remove_red_eye,
                        ),
                        onPressed: () {}),
                    icon: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.lock),
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                color: Colors.white,
                child: Stack(children: [
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login".toUpperCase(),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                width: 300,
                child: Stack(
                  children: [

                      TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget Password?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.redAccent,
                width: 600,
                child: Column(
                  children: [
                    const Text(
                      'Powered by',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://lh3.googleusercontent.com/p/AF1QipO5w1q1PWz4SIVuu6XO4z_ArWipslqu5K2mSe1_=w768-h768-n-o-v1',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          "multiplier",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

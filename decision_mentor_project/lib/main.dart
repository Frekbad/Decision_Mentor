import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      
      home:  Loginpage(),
    );
  }
}

class Loginpage extends StatelessWidget{
  
  
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  bool isLoginButton = true;  
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left:30, right: 30),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              const SizedBox(width: 10.97, height: 30.0,),
              
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 
                 child: Row(
                  
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    
                     Padding(
                       padding: const EdgeInsets.only(right: 10.0),
                       child: Image.asset("image/DMlogo.jpg",),
                     ),
                     inputText('Decision Mentor', Color(hexColors('#333333')), 20.0, FontWeight.w600),
                   ],
                 ),
               ),

              
              const SizedBox(height: 30.0),
              // Padding(padding: EdgeInsets.only(left))
              Center(
                child: inputText('Log in to Decision Mentor ', Color(hexColors('#333333')), 24.0, FontWeight.w700),

              ),

              const SizedBox(height: 30.0),



              container(true, "image/vector.png",'Login with Apple'),

              const SizedBox(height:20),
              
              container(true, "image/google.jpg", 'Login With Google'),
              const SizedBox(height: 2,),

              //container(false, '', ''),

              SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 3),
          child: Row(
            children: [
               Flexible(
                flex: 1,
                child: Divider(
                  color: Color(hexColors('#D9D9D9')),
                  thickness: 2,
                  height: 50,
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  
                  child: const Text(
                    'or',
                    maxLines: 3,
                    style: TextStyle(
                      
                      fontWeight: FontWeight.w500,
                      
                    ),
                  ),
                ),
              ),
               Flexible(
                flex: 1,
                child: Divider(
                  color:Color(hexColors('#D9D9D9')),
                  thickness: 2,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),


              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Expanded(
              //       child: Divider(
              //         height: 2,
              //         thickness: 2,
              //         color: Color(hexColors('#333333')),
              //       ),
              //     )
              //   ],
              // ),

              const SizedBox(height: 40.0,),

              
              inputText('Email Address', Color(hexColors('#333333')), 17.57, FontWeight.w400),
              const SizedBox(height: 10.0,),

              Container(
                height: 43,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  decoration:  InputDecoration(
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(hexColors('#333333'),)
                    
                      )

                    ), 
                    hintText: 'Sagun.psd@gmail.com' ,
                    hintStyle: TextStyle(
                      color: Color(hexColors('#333333'),),
                    
                    ),
                    ),
                ),
              ),
              
                const SizedBox(height: 25.0,),
                
                inputText('Password', Color(hexColors('#333333')), 17.57, FontWeight.w400),
                const SizedBox(height: 10.0,),

              Container(
                height:43,
                child: TextFormField(
                 obscureText: true,
                 
                 textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left:20, top:8),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                   border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(hexColors('#333333')))
                    ) ,
                  
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),
               inputTex('Forget Password?', Color(hexColors('#333333')), 14.71371, FontWeight.w400,TextDecoration.underline),
              
              const SizedBox(height:20 ),
              Ink(
                child: InkWell(
                  splashColor: Color(hexColors('#4A67FF')),
                  onTap: (){
              
                  },
                  child: Container(
                    width: double.infinity,
                    height: 53.18,
                    
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(11),
                      color: Color(hexColors('#4A67FF')),
                    ),
                    child: Center(
                      child: Text('Login',style: TextStyle(
                        color: Color(hexColors('#FFFFFF')
                        ),
                        fontWeight: FontWeight.w700,
                        fontSize: 17.1659,

                      ),
                      ),
                      ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account ?",
                  style: TextStyle(
                    fontSize: 17.1659,
                    fontWeight: FontWeight.w400,
                    color: Color(hexColors('#333333'))
                  ),),
                  Text("Sign up",
                  style: TextStyle(
                    fontSize: 17.1659,
                    fontWeight: FontWeight.w400,
                    color: Color(hexColors('##4A67FF'))
                  ),
                  )
                ],
              ),
                ],

          ),
        ),

      ),
    );
  }
Widget container (bool isLoginButton, String image,String text){
  return Container(
    height: 55,
    child: isLoginButton ? Row(
      children:  [
         
        Image.asset(image,width:50),
        inputText(text, Color(hexColors('#333333')), 16, FontWeight.w400),


        

        
      ],
    ): Center(),
    
    decoration: BoxDecoration(
      
      border: isLoginButton ?Border.all(
        color:  Colors.black 
      ) : Border.all(
        color: Colors.white
      ),
      borderRadius: BorderRadius.circular(10),
      
    ),
  );
}







 inputText(
  String name,
   Color colors,
    double size,
     FontWeight fontweight,
     
     
     
     ){
  

  return Text(name, style: TextStyle(
    color: colors,
    fontSize: size,
    fontWeight: fontweight,
    
    
    
  ),
  );

}
inputTex(
  String name,
   Color colors,
    double size,
     FontWeight fontweight,
     TextDecoration decoration,
     
     
     
     ){
  

  return Text(name, style: TextStyle(
    color: colors,
    fontSize: size,
    fontWeight: fontweight,
    decoration:decoration,
    
    
    
  ),
  );

}

int hexColors(String str){
  String scolor = '0xff$str';
  scolor = scolor.replaceAll("#", '');
  int va = int.parse(scolor);
  return va;
}
}



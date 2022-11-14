import 'package:flutter/material.dart';
import '../ListDataModel.dart';
import '../Details.dart';


class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  static List<String> languages=['Dart', 'Flutter', 'Swift', 'Kitura', 'Kotlin', 'Ktor',  'JavaScript', 'Angular', 'React', 'Vue.js', 
  'TypeScript', 'Nest.js', 'PHP', 'Laravel', 'C#', '.NET', 'Python', 'Django','Java', 'Spring Boot' ];
  static List<String> url=[
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWoxiRajTWnNdhHO1ZF2oxaJevJJZJ00AXxZxBzxEPBZGijOFEgKgYGAUtshf7jhoOEtQ&usqp=CAU', 
  'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png', 
  'https://developer.apple.com/swift/images/swift-og.png',
  'https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/Kitura_logo.svg/1200px-Kitura_logo.svg.png',
  'https://download.logo.wine/logo/Kotlin_(programming_language)/Kotlin_(programming_language)-Logo.wine.png',
  'https://pbs.twimg.com/profile_images/1305803851832975360/CAZ9uIaH_400x400.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Angular_full_color_logo.svg/1200px-Angular_full_color_logo.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1200px-Vue.js_Logo_2.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Typescript_logo_2020.svg/1200px-Typescript_logo_2020.svg.png',
  'https://seeklogo.com/images/N/nestjs-logo-09342F76C0-seeklogo.com.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/2560px-PHP-logo.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/1200px-Laravel.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/C_Sharp_wordmark.svg/1200px-C_Sharp_wordmark.svg.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Microsoft_.NET_logo.svg/1200px-Microsoft_.NET_logo.svg.png',
  'https://s3.dualstack.us-east-2.amazonaws.com/pythondotorg-assets/media/community/logos/python-logo-only.png',
  'https://assets.localizecdn.com/uploads/1592249050965.png',
  'https://cdn-icons-png.flaticon.com/512/226/226777.png',
  'https://4.bp.blogspot.com/-ou-a_Aa1t7A/W6IhNc3Q0gI/AAAAAAAAD6Y/pwh44arKiuM_NBqB1H7Pz4-7QhUxAgZkACLcBGAs/s1600/spring-boot-logo.png'
  ];
  static List<String> description=[
    'Programming Language', 'Framework', 'Programming Language', 'Framework', 'Programming Language', 'Framework', 'Programming Language',
    'Framework','Framework','Framework', 'Programming Language', 'Framework', 'Programming Language', 'Framework', 'Programming Language', 'Framework',
    'Programming Language', 'Framework', 'Programming Language', 'Framework'
  ];
  static List<String> infos=[
    'Dart is a programming language designed for client development,such as for the web and mobile apps. \n It is developed by Google and can also be used to build server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax. It can compile to either machine code or JavaScript, and supports interfaces, mixins, abstract classes, reified generics and type inference.',
    'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. \nFirst described in 2015, Flutter was released in May 2017.',
    "Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community. \nFirst released in 2014, Swift was developed as a replacement for Apple's earlier programming language Objective-C, as Objective-C had been largely unchanged since the early 1980s and lacked modern language features.",
    'Kitura is a free and open-source web framework written in Swift, developed by IBM and licensed under Apache License 2.0. It’s an HTTP server and web framework for writing Swift server applications. \nIn December 2019, IBM announced it had no further plans to develop the Kitura framework.',
    "Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of Kotlin's standard library depends on the Java Class Library, but type inference allows its syntax to be more concise. \nKotlin mainly targets the JVM, but also compiles to JavaScript or native code via LLVM. Language development costs are borne by JetBrains, while the Kotlin Foundation protects the Kotlin trademark.",
    'Ktor is a framework to easily build connected applications – web applications, HTTP services, mobile and browser applications.',
    "JavaScript, often abbreviated as JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. As of 2022, 98% of websites use JavaScript on the client side for webpage behavior, often incorporating third-party libraries. All major web browsers have a dedicated JavaScript engine to execute the code on users' devices.",
    'Angular (also referred to as "Angular 2+") is a TypeScript-based free and open-source web application framework led by the Angular Team at Google and by a community of individuals and corporations. Angular is a complete rewrite from the same team that built AngularJS.',
    'React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library for building user interfaces based on UI components. It is maintained by Meta and a community of individual developers and companies. \nReact can be used as a base in the development of single-page, mobile, or server-rendered applications with frameworks like Next.js.',
    'Vue.js (commonly referred to as Vue; pronounced "view") is an open-source model–view–viewmodel front end JavaScript framework for building user interfaces and single-page applications. It was created by Evan You, and is maintained by him and the rest of the active core team members.',
    'TypeScript is a free and open source programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language. \nIt is designed for the development of large applications and transpiles to JavaScript. As it is a superset of JavaScript, existing JavaScript programs are also valid TypeScript program',
    "Next.js is a React framework that enables several extra features, including server-side rendering and generating static websites. React is a JavaScript library that is traditionally used to build web applications rendered in the client's browser with JavaScript.",
    'PHP is a general-purpose scripting language geared toward web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by The PHP Group. \nPHP originally stood for Personal Home Page, but it now stands for the recursive initialism PHP: Hypertext Preprocessor',
    'Laravel is a free and open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller (MVC) architectural pattern and based on Symfony.',
    'C# (pronounced see sharp)is a general-purpose, high-level multi-paradigm programming language. C# encompasses static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines. ',
    '.NET (pronounced dot net) is a framework that provides a programming guidelines that can be used to develop a wide range of applications–––from web to mobile to Windows-based applications. The .NET framework can work with several programming languages such as C#, VB.NET, C++ and F#.',
    'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. \nPython is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly procedural), object-oriented and functional programming. It is often described as a "batteries included" language due to its comprehensive standard library.',
    "Django is a free and open-source, Python-based web framework that follows the model–template–views (MTV) architectural pattern. \nDjango's primary goal is to ease the creation of complex, database-driven websites. The framework emphasizes reusability and 'pluggability' of components, less code, low coupling, rapid development, and the principle of don't repeat yourself.",
    'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA), meaning that compiled Java code can run on all platforms that support Java without the need to recompile.',
    'Spring Boot is an open source Java-based framework used to create a micro Service. It is developed by Pivotal Team and is used to build stand-alone and production ready spring applications.'
  ];
  static List<String> links=[
   'https://dart.dev', 'https://www.googleadservices.com/pagead/aclk?sa=L&ai=C0zrAh2xyY9ykJOKEjuwP2vCo6AnaorH9Yv6TgYzPD66UlgYIABABILlUKAJgjfLSA6ABj-mg_ALIAQHIA9ggqgRbT9AhUG5PYmvP44zNF_k1AMENr-hILqhT3GZC4Dpbs4xpQlOlZ40m7RfGuqAy2We39YC4HAx4oq5kRxxryv7KdNgiSbr0aiwq7QtT5Amv_L7G3t06nggyaLfuacAE-4KEzNEDgAWQTogF76WlxzCgBmaAB9mW34MBiAcBkAcBqAemvhuoB7masQKoB_PRG6gH7tIbqAf_nLECqAfK3BuoB7uksQKoB9imsQKoB5GqsQKoB9uqsQKoB9CqsQKgCO2-PbAIAdIIGhACIIQBMgSDwIAOOgqAgICAgICAqAECQgEEmgkUaHR0cHM6Ly9mbHV0dGVyLmRldi-xCXQlvJyD9pCfuQm5TPfEWRinffgJAeALAaoMAggBuAwB6AwGqg0CR0WCFAsIAxIHZmx1dHRlcsgUytvF0vye5uAy0BUB-BYBgBcBkhcJEgcIARADGPcB4BcC&ved=2ahUKEwi7oJfEi677AhWrgP0HHfnUCkEQ0Qx6BAgKEAE&nis=8&cid=CAASFeRoD4wKBWr11l4zgNdAtRmI3f-Z0Q&dblrd=1&sival=AF15MEC5tKKDhJtbQNn9SRz7EvpsUpVQVqkKTMYRw2QFKVLzaY8AJ7OazHZM-3fp6bqsBFuNCGjujdsRIn20UV4q_PrJe2C3S-jf7bm3ATlV5VhvSpTy3wN0aa_-yCBQLeSWtsFWeaISvGSYzPDVLPj2J4gsGZNL6LoGcaiZnfJ8p_f5nMT0nIlLFBFjFaU6pj8NOLH8Qq_w&sig=AOD64_1sT_w7DiufgPaFnzmdtQARInMhWA&adurl=https://clickserve.dartsearch.net/link/click%3Flid%3D43700063583712901%26ds_s_kwgid%3D58700007063957229%26ds_a_cid%3D276776345%26ds_a_caid%3D13034410735%26ds_a_agid%3D124981936507%26ds_a_fiid%3D%26ds_a_lid%3Dkwd-12945966%26ds_a_extid%3D%26%26ds_e_adid%3D586442817546%26ds_e_matchtype%3Dsearch%26ds_e_device%3Dc%26ds_e_network%3Dg%26%26ds_url_v%3D2%26ds_dest_url%3Dhttps://flutter.dev/%3Fgclsrc%3Daw.ds%26', 
   'https://developer.apple.com/swift/','https://www.kitura.dev', 'https://kotlinlang.org', 'https://ktor.io', 'https://www.javascript.com', 'https://angular.io','https://reactjs.org', 'https://vuejs.org', 'https://www.typescriptlang.org',
   'https://nestjs.com', 'https://www.php.net', 'https://laravel.com', 'https://learn.microsoft.com/en-us/dotnet/csharp/', 'https://dotnet.microsoft.com/en-us/', 'https://www.python.org','https://www.djangoproject.com',
   'https://www.java.com/en/', 'https://spring.io/projects/spring-boot'
  ];
  final List<ListDataModel> ListData = List.generate(languages.length, (index) => ListDataModel('${languages[index]}', '${url[index]}','${infos[index]}', '${description[index]}','${links[index]}'));


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Programming Languages \nand Frameworks',style: TextStyle(fontSize: 20), textAlign: TextAlign.center),),
      body:ListView.builder(
        itemCount: ListData.length,
        itemBuilder: (context, index){
          return Card(
            
              child: ListTile(
              // title: Text(ListData[index].name),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.network(ListData[index].ImageUrl),
              ),
              title:  Column(children: [                
                Text(ListData[index].name,style: TextStyle(fontWeight:FontWeight.bold)),
                GestureDetector(
                  child: (
                    Text(ListData[index].description, style: TextStyle(fontSize:12, color: Colors.grey.shade600))
                    ),
                )
              ],),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Details(index: index,listDataModel: ListData, )));
              },
             ),
          );
           
        }
      )
      
    );
  }
}
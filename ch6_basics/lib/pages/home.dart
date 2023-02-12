import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: PopupMenuButtonWidget(),
        // bottom: PreferredSize(
        //   child: Container(
        //     color: Colors.lightGreen.shade100,
        //     height: 75.0,
        //     width: double.infinity,
        //     child: Center(
        //       child: Text('Bottom'),
        //     ),
        //   ),
        // preferredSize: Size.fromHeight(75.0),
        // ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const ContainerWithBoxDecorationWidget(),
                const ContainerWithBoxDecorationAndRichTextWidget(),
                const ContainerWithColumnAndRowWidget(),
                const ContainerWithRowAndButtonWidget(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // floatingActionButton: FloatingActionButton.(
      //   onPressed: () {},
      //   child: Icon(Icons.play_arrow),
      //   backgroundColor: Colors.lightGreen.shade100,
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.play_arrow),
        label: Text('Play'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreen.shade500,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Flutter World For Mobile',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepPurpleAccent,
                decorationStyle: TextDecorationStyle.dotted,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }
}

class ContainerWithBoxDecorationAndRichTextWidget extends StatelessWidget {
  const ContainerWithBoxDecorationAndRichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreen.shade500,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Center(
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: 'Flutter World',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.deepPurple,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.deepPurpleAccent,
                    decorationStyle: TextDecorationStyle.dotted,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' for',
                    ),
                    TextSpan(
                      text: ' Mobile',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ContainerWithColumnAndRowWidget extends StatelessWidget {
  const ContainerWithColumnAndRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreen.shade500,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Center(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('Column 1'),
                  Divider(),
                  Text('Column 2'),
                  Divider(),
                  Text('Column 3'),
                ],
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Row 1'),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Text('Row 2'),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Text('Row 3'),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              'Columns and Row Nesting 1',
            ),
            Text(
              'Columns and Row Nesting 2',
            ),
            Text(
              'Columns and Row Nesting 3',
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Row Nesting 1'),
                Text('Row Nesting 2'),
                Text('Row Nesting 3'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ContainerWithRowAndButtonWidget extends StatelessWidget {
  const ContainerWithRowAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.grey[300],
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Looks like a RaisedButton'),
                ),

                // Default - left button
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.flight),
                ),

                // Customize - right button
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.flight),
                  iconSize: 42.0,
                  color: Colors.blueGrey,
                  tooltip: 'Flight',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TodoMenuItem {
  final String title;
  final Icon icon;

  TodoMenuItem({required this.title, required this.icon});
}

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  PopupMenuButtonWidget({super.key});

  // Create a List of Menu Item for PopupMenuButton
  List<TodoMenuItem> foodMenuList = [
    TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
    TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
    TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
    TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          icon: Icon(Icons.view_list),
          onSelected: ((valueSelected) {
            print('valueSelected: ${valueSelected.title}');
          }),
          itemBuilder: (BuildContext context) {
            return foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                value: todoMenuItem,
                child: Row(
                  children: <Widget>[
                    Icon(todoMenuItem.icon.icon),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Text(todoMenuItem.title),
                  ],
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  // Implement preferedSize
  Size get preferredSize => Size.fromHeight(75.0);
}

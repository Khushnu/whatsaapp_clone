import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 4, child: Scaffold(
     appBar: AppBar(
      title: const Text('WhatsaApp'),
      backgroundColor: Colors.teal,
      bottom: const TabBar(tabs: [
        Tab(
          child: Icon(Icons.camera_alt), 
        ),
        Tab(child: Text('Chats'),),
        Tab(child: Text('Status'),),
        Tab(child: Text('Calls'),)
      ]),
      actions: [
        IconButton(onPressed: () => print
        ("search pressd"), icon: const Icon(Icons.search)),
        PopupMenuButton(
          icon:  const Icon(Icons.more_vert_outlined),
          itemBuilder: (context) => const [
            PopupMenuItem(child: Text('New Contact')),
            PopupMenuItem(child: Text('Settings')),
            PopupMenuItem(child: Text('Log Out'))
          ])
      ],
     ),
     body:  TabBarView(children:  [
       const Center(child: Text('Give permission to Camera')),
        ListView.builder(itemCount: 16,
          itemBuilder: (context, index) {
          return  ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(index/2 ==0 ? "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699&q=80": "https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2486&q=80"),
            ),
            title: Text(index/2 == 0 ? 'Jhon Wich' : 'Sasha'),
            subtitle: Text(index/2 == 0 ? "Where is my Dog" : "Meet me at pub"),
            trailing: Text(index/2 == 0 ? " 6:30 AM" : " 21:12 PM"),
          );
        }),
        Text('3'),
        ListView.builder(itemCount: 16,
          itemBuilder: (context, index) {
          return  ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(index/2 ==0 ? "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699&q=80": "https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2486&q=80"),
            ),
            title: Text(index/2 == 0 ? 'Jhon Wich' : 'Sasha'),
            subtitle: Text(index/2 == 0 ? "Missed your Call " : "Missed video Call"),
            trailing: Icon(index/2 == 0 ? Icons.call_end : Icons.missed_video_call ),
          );
        }),
     ]),
    ));
  }
}
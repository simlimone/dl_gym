import 'package:dl_gym/widgets/account_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            collapsedHeight: 80,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [StretchMode.zoomBackground],
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/images/ripped-men.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                  ),
                ),
              ),
              title: Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Image(
                  image: AssetImage("assets/images/dlgym.png"),
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                ),
              ),
              centerTitle: true,
            ),
            backgroundColor: Colors.black87,
            elevation: 0,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 5,
                  ),
                  child: Text(
                    "Profile",
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                AccountTextField(
                  controller: usernameController,
                  label: "Username: @simonecascioli",
                  enabled: false,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 5,
                  ),
                  child: ListTile(
                    title: Text(
                      "Assistenza",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                    leading: const Icon(
                      Icons.support_agent_outlined,
                      color: Colors.white,
                    ),
                    tileColor: Colors.white.withOpacity(.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 5,
                  ),
                  child: ListTile(
                    title: Text(
                      "Demo",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                    leading: const Icon(
                      Icons.developer_board_outlined,
                      color: Colors.white,
                    ),
                    tileColor: Colors.white.withOpacity(.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 5,
                  ),
                  child: ListTile(
                    title: Text(
                      "Servizi DL Gym",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                    leading: const Icon(
                      Icons.miscellaneous_services_outlined,
                      color: Colors.white,
                    ),
                    tileColor: Colors.white.withOpacity(.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

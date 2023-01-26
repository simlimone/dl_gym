import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
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
            _buildWorkout(context),
            _buildFood(context),
          ],
        )),
      ],
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }

  _buildWorkout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "Workouts",
            style: GoogleFonts.lato(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: index == 0
                    ? const EdgeInsets.only(left: 15, right: 7.5)
                    : const EdgeInsets.symmetric(horizontal: 7.5),
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  image: DecorationImage(
                    image: const AssetImage("assets/images/military-press.jpg"),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.8), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Military Press",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  _buildFood(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "Piano Alimentare",
            style: GoogleFonts.lato(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: index == 0
                    ? const EdgeInsets.only(left: 15, right: 7.5)
                    : const EdgeInsets.symmetric(horizontal: 7.5),
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  image: DecorationImage(
                    image: const AssetImage("assets/images/food.jpg"),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Dieta Mediterranea",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}

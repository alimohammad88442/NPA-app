import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba_app/constens.dart';
import 'package:nba_app/cubits/all_teams_and_players_cubit/teams_and_players_cubit.dart';
import 'package:nba_app/custom_widgets/select_category_button.dart';
import 'package:nba_app/custom_widgets/text_form_field_widget.dart';
import 'package:nba_app/pages/all_players_page.dart';
import 'package:nba_app/pages/all_teams_page.dart';

class HomepageBody extends StatefulWidget {
  const HomepageBody({super.key});

  @override
  State<HomepageBody> createState() => _HomepageBodyState();
}

class _HomepageBodyState extends State<HomepageBody> {
  GlobalKey<FormState> formkay = GlobalKey();
  String? teamSearch, playerSearch;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formkay,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SelectCategoryButton(
              ontap: () {
                BlocProvider.of<TeamsAndPlayersCubit>(context).getAllTeams();
                Navigator.pushNamed(context, TeamsPage.id);
              },
              categoryName: kTeams,
              categoryColor: Colors.blueGrey,
            ),
            AppTextField(
              onChanged: (value) => teamSearch = value,
              text: 'search for a team',
              sicon: IconButton(
                  onPressed: () {
                    if (formkay.currentState!.validate()) {}
                  },
                  icon: const Icon(Icons.search)),
            ),
            SelectCategoryButton(
              ontap: () {
                Navigator.pushNamed(context, PlayersPage.id);
                BlocProvider.of<TeamsAndPlayersCubit>(context).getAllPlayers();
              },
              categoryName: kPlayers,
              categoryColor: Colors.red,
            ),
            AppTextField(
              text: 'search for a players',
              onChanged: (value) => playerSearch = value,
              sicon: IconButton(
                  onPressed: () {
                    if (formkay.currentState!.validate()) {}
                  },
                  icon: const Icon(Icons.search)),
            ),
          ],
        ),
      ),
    );
  }
}

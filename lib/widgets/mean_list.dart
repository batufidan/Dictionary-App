import 'package:dictionary_app/vievmodels/meaning_view_model.dart';
import 'package:dictionary_app/widgets/sign_language.dart';
import 'package:flutter/material.dart';

class MeanList extends StatelessWidget {
  final MeaningViewModel meaningViewModel;
  final SignLanguage signLanguage;
  const MeanList(
      {super.key, required this.meaningViewModel, required this.signLanguage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          meaningViewModel.word[0],
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: meaningViewModel.meanings.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Text(
                  '${index + 1}. ${meaningViewModel.meanings[index]} ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ),
        SignLanguage(
          word: '',
        )
      ],
    );
  }
}

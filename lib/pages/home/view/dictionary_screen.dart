import 'package:dictii2/core/theme/app_colors.dart';
import 'package:dictii2/core/theme/app_typography.dart';
import 'package:dictii2/pages/home/controller/dictionary_controller.dart';
import 'package:dictii2/pages/home/widgets/search_textfield.dart';
import 'package:flutter/material.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  final DictionaryController _controller = DictionaryController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/bg.png',
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: SafeArea(
                    bottom: false,
                    child: SearchTextField(
                      label: 'Enter a word',
                      controller: _controller.controller,
                      onSearch: () =>
                          _controller.searchWord(() => setState(() {})),
                      onChanged: (text) =>
                          _controller.onTextChanged(() => setState(() {})),
                    ),
                  ),
                ),
                if (_controller.word != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      _controller.word!.word,
                      style: context.at.semiBold
                          .copyWith(fontSize: 30), 
                    ),
                  ),
                if (_controller.word != null)
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Text(
                        _controller.word!.phonetic ?? 'No pronunciation found',
                        style: context.at.regular.copyWith(
                            color: AppColors
                                .greyDarkText),
                      ),
                      if (_controller.word!.phonetics != null &&
                          _controller.word!.phonetics != "")
                        IconButton(
                          icon: const Icon(Icons.volume_up_outlined,
                              color: AppColors.purple), 
                          onPressed: () => _controller
                              .playAudio(_controller.word!.phonetics![0].audio),
                        ),
                    ],
                  ),
                const SizedBox(height: 12),
                Expanded(
                  child: (_controller.word != null)
                      ? Scrollbar(
                          thumbVisibility: true,
                          thickness: 4,
                          radius: const Radius.circular(2),
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (_controller.word!.meanings != null)
                                  ..._controller.word!.meanings!.map((def) =>
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              style: context.at.regular.copyWith(
                                                  color: AppColors
                                                      .black),
                                              children: [
                                                if (def.partOfSpeech != null)
                                                  TextSpan(
                                                    text:
                                                        '[${def.partOfSpeech}] ',
                                                    style: context.at.semiBold
                                                        .copyWith(
                                                            color: AppColors
                                                                .purple), 
                                                  ),
                                                if (def.definitions != null)
                                                  TextSpan(
                                                      text:
                                                          '${def.definitions![0].definition}' ??
                                                              ''),
                                              ],
                                            ),
                                          ),
                                          if (def.example != null)
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 12),
                                                Text(
                                                  'Example:',
                                                  style: context.at.semiBold
                                                      .copyWith(
                                                          color: AppColors
                                                              .purple), 
                                                ),
                                                Text(
                                                  '${def.example}',
                                                  style: context.at.regular
                                                      .copyWith(),
                                                ),
                                              ],
                                            ),
                                          if (def.synonyms != null &&
                                              def.synonyms!.isNotEmpty)
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 12),
                                                Text(
                                                  'Synonyms: ',
                                                  style: context.at.semiBold
                                                      .copyWith(
                                                          color: AppColors
                                                              .purple),
                                                ),
                                                Text(
                                                  def.synonyms!.join(', '),
                                                  style: context.at.regular,
                                                ),
                                              ],
                                            ),
                                          if (def.antonyms != null &&
                                              def.antonyms!.isNotEmpty)
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 12),
                                                Text(
                                                  'Antonyms: ',
                                                  style: context.at.semiBold
                                                      .copyWith(
                                                          color: AppColors
                                                              .purple),
                                                ),
                                                Text(
                                                  def.antonyms!.join(', '),
                                                  style: context.at.regular,
                                                ),
                                              ],
                                            ),
                                          const SizedBox(height: 12),
                                          const Divider(),
                                          const SizedBox(height: 12),
                                        ],
                                      )),
                              ],
                            ),
                          ),
                        )
                      : SafeArea(
                          top: false,
                          child: Center(
                            child: (_controller.controller.text != "")
                                ? const Text('Word not found')
                                : Text(
                                    'Dictii',
                                    style: context.at.semiBold.copyWith(
                                        fontSize: 50), // Use AppTypography
                                  ),
                          ),
                        ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

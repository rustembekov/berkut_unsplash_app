import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:berkut_unsplash_app/core/di/injection.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/bloc/photo_search/photo_search_cubit.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/widgets/photo_grid_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PhotoSearchCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Поиск изображений'),
        ),
        body: Column(
          children: [
            const _SearchField(),
            Expanded(
              child: BlocBuilder<PhotoSearchCubit, PhotoSearchState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(child: Text('Введите запрос для начала поиска.')),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (photos) {
                      if (photos.isEmpty) {
                        return const Center(child: Text('Ничего не найдено.'));
                      }
                      return GridView.builder(
                        padding: const EdgeInsets.all(8),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: photos.length,
                        itemBuilder: (context, index) {
                          return PhotoGridItem(photo: photos[index]);
                        },
                      );
                    },
                    error: (message) => Center(child: Text(message)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchField extends StatefulWidget {
  const _SearchField();

  @override
  State<_SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<_SearchField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearch() {
    if (_controller.text.trim().isNotEmpty) {
      context.read<PhotoSearchCubit>().search(_controller.text.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: 'Поиск...',
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: _onSearch,
          ),
        ),
        onSubmitted: (_) => _onSearch(),
      ),
    );
  }
}
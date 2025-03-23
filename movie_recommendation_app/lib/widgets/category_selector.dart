import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final Function(String) onCategorySelected;

  const CategorySelector({
    Key? key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category == selectedCategory;
          
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => onCategorySelected(category),
                  borderRadius: BorderRadius.circular(24),
                  splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                  highlightColor: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).brightness == Brightness.dark
                              ? Colors.grey[850]
                              : Colors.grey[200],
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: isSelected
                          ? [
                              BoxShadow(
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              )
                            ]
                          : null,
                      border: isSelected
                          ? Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2,
                            )
                          : Theme.of(context).brightness == Brightness.dark
                              ? Border.all(color: Colors.grey[800]!, width: 1)
                              : Border.all(color: Colors.grey[300]!, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _getCategoryIcon(category, isSelected ? Colors.white : _getTextColor(context)),
                        const SizedBox(width: 8),
                        Text(
                          _formatCategoryName(category),
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : _getTextColor(context),
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                            fontSize: 14,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getTextColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Colors.white.withOpacity(0.9)
        : Colors.black87;
  }

  Widget _getCategoryIcon(String category, Color color) {
    IconData iconData;
    switch (category) {
      case 'all':
        iconData = Icons.movie_outlined;
        break;
      case 'bollywood':
        iconData = Icons.music_note;
        break;
      case 'hollywood':
        iconData = Icons.theater_comedy;
        break;
      case 'tollywood':
        iconData = Icons.local_movies;
        break;
      case 'kdrama':
        iconData = Icons.favorite;
        break;
      default:
        iconData = Icons.category;
    }

    return Icon(
      iconData,
      size: 18,
      color: color,
    );
  }

  String _formatCategoryName(String category) {
    if (category == 'all') {
      return 'All';
    }
    if (category == 'kdrama') {
      return 'K-Drama';
    }
    // Capitalize first letter
    return category[0].toUpperCase() + category.substring(1);
  }
} 
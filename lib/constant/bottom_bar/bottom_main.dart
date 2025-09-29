import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_unapps/constant/bottom_bar/bottom_nav_clipper.dart';
import 'package:mobile_unapps/constant/theme/color_constant.dart';
import 'package:mobile_unapps/presentation/home/home_page.dart';



class BottomMain extends StatefulWidget {
  const BottomMain({super.key});

  @override
  State<BottomMain> createState() => _BottomMainState();
}

class _BottomMainState extends State<BottomMain> {
  int _selectedIndex = 0;
  int? roles;

  List<Widget> get _screen {
    return [
      const HomePage(),
      Text("Activity Page"),
      Text("Room Page"),
      Text("Profile Page"),
    ];
  }

  void _onTapSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen.elementAt(_selectedIndex),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 80,
            child: ClipPath(
              clipper: BottomNavClipper(),
              child: Container(
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavItem(
                      index: 0,
                      icon: Icons.home_filled,
                      label: 'Home',
                      isSelected: _selectedIndex == 0,
                    ),
                    _buildNavItem(
                      index: 1,
                      icon: Icons.directions_walk,
                      label: 'Activity',
                      isSelected: _selectedIndex == 1,
                    ),
                    const SizedBox(width: 60),
                    _buildNavItem(
                      index: 2,
                      icon: Icons.room_preferences,
                      label: 'Room',
                      isSelected: _selectedIndex == 2,
                    ),
                    _buildNavItem(
                      index: 3,
                      icon: Icons.person_rounded,
                      label: 'Profile',
                      isSelected: _selectedIndex == 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -20,
            left: MediaQuery.of(context).size.width / 2 - 33,
            child: GestureDetector(
              onTap: () {
                context.push("/shift");
              },
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: ColorConstant.elevatedButtonColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 4),
                ),
                child: ClipOval(
                  child: Icon(Icons.swap_horiz, color: Colors.white, size: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => _onTapSelected(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: isSelected
                  ? BoxDecoration(
                      color: ColorConstant.elevatedButtonColor,
                      borderRadius: BorderRadius.circular(16),
                    )
                  : BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                    ),
              child: Icon(
                icon,
                color: isSelected ? Colors.white : const Color(0xFF9CA3AF),
                size: 24,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected
                    ? ColorConstant.primaryBlue
                    : const Color(0xFF9CA3AF),
                letterSpacing: 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class VerdeHomeScreen extends StatelessWidget {
  const VerdeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. User Header Row + Notification Bell Stack
              Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Color(0xFFA3E635),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Magandang araw!',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          '@maria_verde',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A2213),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Stack #1: Notification Bell with Red Dot Badge
                  Stack(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.notifications_none_rounded,
                          color: Color(0xFF1A2213),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 11,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // 2. Category Tabs (Wallet, Savings, Credits, Loans)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTabChip('Wallet', isActive: true),
                  _buildTabChip('Savings'),
                  _buildTabChip('Credits'),
                  _buildTabChip('Loans'),
                ],
              ),
              const SizedBox(height: 16),

              // 3. Available Balance Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'AVAILABLE BALANCE',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(Icons.visibility_outlined,
                            size: 18, color: Colors.grey),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          '₱12,450',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF1A2213),
                          ),
                        ),
                        Text(
                          '.85',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A2213),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Verified Account • PHP',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Divider(height: 1, color: Color(0xFFF0F0F0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.south_west,
                                size: 14, color: Color(0xFF16A34A)),
                            SizedBox(width: 4),
                            Text(
                              '₱4,200.00 IN',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF16A34A),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.north_east,
                                size: 14, color: Colors.redAccent),
                            SizedBox(width: 4),
                            Text(
                              '₱1,850.50 OUT',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // 4. Primary Action Buttons (Cash In & Send Money)
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFF68CE2A),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add, color: Color(0xFF1A2213), size: 20),
                          SizedBox(width: 6),
                          Text(
                            'Cash In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1A2213),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A2213),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.north_east,
                              color: Color(0xFF68CE2A), size: 18),
                          SizedBox(width: 6),
                          Text(
                            'Send Money',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),

              // 5. Pay & Transfer 2x4 Service Grid
              const Text(
                'Pay & Transfer',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A2213),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildServiceItem(Icons.receipt_long_outlined, 'Bills'),
                  _buildServiceItem(Icons.smartphone_outlined, 'Load'),
                  _buildServiceItem(Icons.account_balance_outlined, 'Bank Transfer'),
                  _buildServiceItem(Icons.qr_code_2_outlined, 'Pay QR'),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildServiceItem(Icons.trending_up, 'Invest'),
                  _buildServiceItem(Icons.shield_outlined, 'Insurance'),
                  _buildServiceItem(Icons.card_giftcard_outlined, 'Rewards'),
                  _buildServiceItem(Icons.support_agent_outlined, 'Support'),
                ],
              ),
              const SizedBox(height: 22),

              // 6. Stack #2: Verde Rewards Promo Banner + Floating QR Button
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 110,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF23301A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: const Color(0xFF68CE2A),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'VERDE REWARDS',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF1A2213),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Get up to 5% Cashback',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'On your next bills payment this week!',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 12,
                    top: -12,
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: const Color(0xFF68CE2A),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.qr_code_scanner,
                        color: Color(0xFF1A2213),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // 7. Bottom Navigation Bar Mockup
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFECECEC))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home_filled, 'Home', isActive: true),
            _buildNavItem(Icons.qr_code_2, 'QR Pay'),
            _buildNavItem(Icons.grid_view_rounded, 'Services'),
            _buildNavItem(Icons.help_outline, 'FAQs'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabChip(String label, {bool isActive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFE4F4D7) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 13,
          fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
          color: isActive ? const Color(0xFF1A2213) : Colors.grey,
        ),
      ),
    );
  }

  Widget _buildServiceItem(IconData icon, String label) {
    return SizedBox(
      width: 74,
      child: Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xFF1A2213), size: 22),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Color(0xFF1A2213),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, {bool isActive = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFFE4F4D7) : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            icon,
            size: 22,
            color: isActive ? const Color(0xFF1A2213) : Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            color: isActive ? const Color(0xFF1A2213) : Colors.grey,
          ),
        ),
      ],
    );
  }
}
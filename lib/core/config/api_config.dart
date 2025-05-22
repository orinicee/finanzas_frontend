class ApiConfig {
  static const String baseUrl = 'http://localhost:8080';
  static const String apiVersion = '/api/v1';
  static const Duration timeout = Duration(seconds: 30);
  
  // Endpoints sin versión
  static const String health = '/health';

  // Endpoints con versión
  static String getVersionedEndpoint(String endpoint) => '$apiVersion$endpoint';

  // Auth endpoints
  static const String register = '/auth/register';
  static const String login = '/auth/login';
  static const String socialAuth = '/auth/social';
  static const String refreshToken = '/auth/refresh';
  static const String logout = '/auth/logout';

  // User endpoints
  static const String createUser = '/users'; // POST
  static const String currentUser = '/users/me'; // GET, PUT, DELETE

  // Report endpoints
  static const String monthlySummary = '/reports/monthly-summary';
  static const String spendingByCategory = '/reports/spending-by-category';
  static const String balanceSummary = '/reports/balance-summary';
  static const String taxReport = '/reports/tax-report';

  // Transaction endpoints
  static const String createTransaction = '/transactions'; // POST
  static const String getTransactions = '/transactions'; // GET all by user
  static const String getTransactionsByDateRange = '/transactions/date-range';
  static const String getTransactionsByCategory = '/transactions/category/:category';
  static const String getTransactionsByType = '/transactions/type/:type';
  static const String getRecurringTransactions = '/transactions/recurring';
  static const String getTaxDeductibleTransactions = '/transactions/tax-deductible';
  
  // Specific transaction by ID routes (replace :id in your code)
  static const String transactionById = '/transactions/:id'; // GET, PUT, DELETE
} 
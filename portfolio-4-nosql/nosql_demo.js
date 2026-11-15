// BrightBank | MongoDB shell / mongosh demonstration
// Use fictional data only.

use brightbank_demo;

db.customerProfiles.insertOne({
  _id: "CUST-0001",
  firstName: "Amina",
  lastName: "Yusuf",
  profileStatus: "active",
  accounts: [
    { accountNumber: "1000000001", accountType: "Savings", currency: "NGN" },
    { accountNumber: "1000000002", accountType: "Current", currency: "NGN" }
  ],
  preferences: { statementChannel: "email", language: "en" }
});

db.customerProfiles.find({ profileStatus: "active" });

db.customerProfiles.createIndex({ profileStatus: 1 });

db.customerProfiles.find(
  { "accounts.accountType": "Savings" },
  { firstName: 1, lastName: 1, accounts: 1 }
);

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Disaster_Alleviation_Foundation
{
    public class Custom
    {
        public const string DonatedAmountExceedsBalanceMessage = "Donated amount exceeds balance";
        public const string DonatedAmountLessThanZeroMessage = "Donated amount is less than zero";
        private readonly string m_customerName;
        private double m_balance;

        private Custom() { }

        public Custom(string customerName, double balance)
        {
            m_customerName = customerName;
            m_balance = balance;
        }

        public string CustomerName
        {
            get { return m_customerName; }
        }

        public double Balance
        {
            get { return m_balance; }
        }

        public void Debit(double amount)
        {
            if (amount > m_balance)
            {
                throw new System.ArgumentOutOfRangeException("amount", amount, DonatedAmountExceedsBalanceMessage);
            }

            if (amount < 0)
            {
                throw new System.ArgumentOutOfRangeException("amount", amount, DonatedAmountExceedsBalanceMessage);
            }

            m_balance -= amount; 
        }

        public void Credit(double amount)
        {
            if (amount < 0)
            {
                throw new ArgumentOutOfRangeException("amount");
            }

            m_balance += amount;
        }

        public static void Main()
        {
            Custom ba = new Custom("Mr. Bryan Walton", 11.99);

            ba.Credit(5.77);
            ba.Debit(11.22);
            Console.WriteLine("Current balance is ${0}", ba.Balance);
        }

    }
}
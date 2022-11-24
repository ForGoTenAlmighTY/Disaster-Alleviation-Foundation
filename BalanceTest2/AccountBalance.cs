using Microsoft.VisualStudio.TestTools.UnitTesting;
using Disaster_Alleviation_Foundation;

namespace BalanceTest2
{
    [TestClass]
    public class AccountBalance
    {
        
        [TestMethod]
        public void Donated_WhenAmountIsLessThanZero_ShouldThrowArgumentOutOfRange()
        {
            // Arrange
            double beginningBalance = 50000;
            double DonatedAmount = -10000.00;
            Custom account = new Custom("Red Cross", beginningBalance);

            try
            {
                account.Debit(DonatedAmount);
            }
            catch (System.ArgumentOutOfRangeException e)
            {
                // Assert
                StringAssert.Contains(e.Message, Custom.DonatedAmountExceedsBalanceMessage);
                return;
            }

            Assert.Fail("The expected exception was not thrown.");
        }
    }
}

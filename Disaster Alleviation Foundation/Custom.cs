using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Disaster_Alleviation_Foundation
{
    public class Custom
    {
        private int sessionID=0;

        public int getSessionID()
        {
            return sessionID;
        }

        public void setSessionID(int value)
        {
            sessionID = value;
        }
    }
}
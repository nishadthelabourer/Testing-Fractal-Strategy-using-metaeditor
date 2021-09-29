//+------------------------------------------------------------------+
//|                                       testingfractalstrategy.mq4 |
//|    Copyright 24-10-2020, Bools AND Strings software Corporation. |
//|                                                      www.B&S.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 24-10-2020, Bools AND Strings software Corporation."
#property link      "www.B&S.com"
#property version   "1.00"
#property strict
#include <customfunction.mqh>
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
      
      if(Low[0]<Low[1] && Low[1]<Low[2])
      {
         if(!CheckIfOpenOrdersByMagicNB(2000))
         {
            double stoploss = Bid+250;
            double takeprofit = Bid-400;
            int OrderID = OrderSend(NULL,OP_SELLLIMIT,0.10,Bid,0,stoploss,takeprofit,NULL,2000);
            Alert("Order Placed");
            Alert("Takeprofit:" + takeprofit);
            Alert("Stoploss:" + stoploss);
            
         }
      } 
          
  }
//+------------------------------------------------------------------+

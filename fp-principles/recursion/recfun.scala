/* Copyright 2017- LARA, EPFL, Lausanne.
   Author: Dragana Milovancevic. */
package recfun

import stainless.lang._
import stainless.collection._

object Main {
  // Exercise 1
  def pascal(c: Int, r: Int): BigInt = {
    require(c>=0 && r>=0 && c<=r)
    if(c==0) 1
    else if(r==c) 1
    else pascal(c-1, r-1)+pascal(c, r-1)    
  } 
  
  def checkPascal(c: Int): Boolean =
   (c<0||pascal(c, c)==1).holds

  def checkPascal2(c: Int, r: Int): Boolean = {
    require(c>=0 && r>=0 && c<=r)
    (pascal(c,r)==1 || pascal(c,r)==pascal(c-1,r-1)+pascal(c,r-1) ).holds
  }

  // Exercise 2
  def balance(chars: List[Char]): Boolean = {
     def recbalance(chars: List[Char], n: Int) : Boolean = {
       if(n<0) false
       else if (chars.isEmpty){ 
        if( n==0 ) true
        else false
       }
       else if(chars.head=='(') recbalance(chars.tail, n+1)
       else if( chars.head==')')recbalance(chars.tail, n-1)
       else recbalance(chars.tail, n)
     }
     recbalance(chars, 0) 
  }
  
  def checkBalance(chars: List[Char]) : Boolean =
      (!balance(')'::chars)).holds

  // Exercise 3
  def countChange(money: Int, coins: List[Int]): Int = {
    require(money>=0)
    
    def recCountChange(money:Int, coins: List[Int]): Int = {
      if(coins.isEmpty) 0
      else if(money-coins.head>0) recCountChange(money-coins.head, coins) + recCountChange(money, coins.tail)
      else if(money-coins.head==0)  1+recCountChange(money, coins.tail)
      else recCountChange(money, coins.tail)
    }

    if(money==0) 0
    else if(coins.isEmpty) 0
    else recCountChange(money, coins)
  } ensuring(countChange(money, coins)>=0)

}

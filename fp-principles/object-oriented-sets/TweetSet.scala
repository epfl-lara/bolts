/* Copyright 2017- LARA, EPFL, Lausanne.
   Author: Dragana Milovancevic. */
   // TODO: check for style, verify properties
package objsets

import stainless.collection._
import stainless.lang._
import stainless.annotation._

//import TweetReader._

// A class to represent tweets.
case class Tweet(val user: String, val text: Int, val retweets: Int) 

/**
 * This represents a set of objects of type `Tweet` in the form of a binary search
 * tree. Every branch in the tree has two children (two `TweetSet`s). There is an
 * invariant which always holds: for every branch `b`, all elements in the left
 * subtree are smaller than the tweet at `b`. The elements in the right subtree are
 * larger.
 *
 */
sealed abstract class TweetSet {
  // The subset of elements in this set for which predicate `p` is true
  def filter(p: Tweet => Boolean): TweetSet
  
  // Helper method for `filter` that propagates accumulated tweets
  def filterAcc(p: Tweet => Boolean, acc: TweetSet): TweetSet

  // A new `TweetSet` that is the union of `this` and `that`
  def union(that: TweetSet): TweetSet 
  
  // Tweet from `this` set with greatest retweet count
  def mostRetweeted: Tweet    

  // Auxiliary function for `mostRetweeted`
  def mostRetweetedAcc(acc: Tweet): Tweet
  
  /**
   * A list containing all tweets of this set, sorted by retweet count
   * in descending order. The head of the resulting list should
   * have the highest retweet count.
   */
  def descendingByRetweet: TweetList 


    /**
    * Returns a new `TweetSet` which contains all elements of this set, and the
    * the new element `tweet` in case it does not already exist in this set.
    *
    * If `this.contains(tweet)`, the current set is returned.
    */
    def incl(tweet: Tweet): TweetSet

    /**
    * Returns a new `TweetSet` which excludes `tweet`.
    */
    def remove(tweet: Tweet): TweetSet

    /**
    * Tests if `tweet` exists in this `TweetSet`.
    */
    def contains(tweet: Tweet): Boolean

    /**
    * This method takes a function and applies it to every element in the set.
    */
    def foreach(f: Tweet => Unit): Unit
}

case class Empty() extends TweetSet {
  
    def filter(p: Tweet => Boolean): TweetSet = new Empty
    def filterAcc(p: Tweet => Boolean, acc: TweetSet): TweetSet = acc

    def contains(tweet: Tweet): Boolean = false

    def incl(tweet: Tweet): TweetSet = new NonEmpty(tweet, new Empty, new Empty)

    def remove(tweet: Tweet): TweetSet = this

    def foreach(f: Tweet => Unit): Unit = ()

    def union(that: TweetSet): TweetSet = that

    def mostRetweeted(): Tweet = new Tweet("empty", -1,-1)

    def mostRetweetedAcc(max: Tweet): Tweet = max;

    def descendingByRetweet: TweetList = Nil()
}

case class NonEmpty(elem: Tweet, left: TweetSet, right: TweetSet) extends TweetSet {

    def descendingByRetweet: TweetList = {
      val elem = mostRetweeted;
      Cons(elem, remove(elem).descendingByRetweet)
    }

    def filter(p: Tweet => Boolean): TweetSet = {
      filterAcc(p, new Empty)
    }

    def filterAcc(p: Tweet => Boolean, acc: TweetSet): TweetSet = {
      if(p(elem)) remove(elem).filterAcc(p, acc incl elem)
      else remove(elem).filterAcc(p, acc)
    }

    def mostRetweetedAcc(max: Tweet): Tweet = {
      def maxRetweets(t1: Tweet, t2:Tweet) = {
        if(t1.retweets>t2.retweets) t1
        else t2    
      }
      if(elem.retweets>max.retweets)
        maxRetweets(left.mostRetweetedAcc(elem), right.mostRetweetedAcc(elem))
      else
        maxRetweets(left.mostRetweetedAcc(max), right.mostRetweetedAcc(max))
    }

    def mostRetweeted(): Tweet = {
      mostRetweetedAcc(elem)
    }

    def contains(x: Tweet): Boolean = {
      if (x.text < elem.text) left.contains(x)
      else if (elem.text < x.text) right.contains(x)
      else true
    }

    def incl(x: Tweet): TweetSet = {
      if (x.text < elem.text) new NonEmpty(elem, left.incl(x), right)
      else if (elem.text < x.text) new NonEmpty(elem, left, right.incl(x))
      else this
    }ensuring(res => (res contains x))

    def remove(tw: Tweet): TweetSet = {
      if (tw.text < elem.text) new NonEmpty(elem, left.remove(tw), right)
      else if (elem.text < tw.text) new NonEmpty(elem, left, right.remove(tw))
      else left.union(right)
    }

    def foreach(f: Tweet => Unit): Unit = {
      f(elem)
      left.foreach(f)
      right.foreach(f)
    }

    def union(that: TweetSet): TweetSet = {
      left union (right union (that incl elem))
    }

}

sealed trait TweetList {
  def head: Tweet
  def tail: TweetList
  def isEmpty: Boolean
  def foreach(f: Tweet => Unit): Unit =
    if (!isEmpty) {
      f(head)
      tail.foreach(f)
    }
}

case class Nil() extends TweetList {
  def head = new Tweet("empty", -1,-1)
  def tail = Nil()
  def isEmpty = true
}

case class Cons(val head: Tweet, val tail: TweetList) extends TweetList {
  def isEmpty = false
}


object GoogleVsApple {

  val allTweets: TweetSet = Empty()



  lazy val googleTweets: TweetSet = {
    allTweets.filter(t => (t.text==1))
  }

  lazy val appleTweets: TweetSet = {
    allTweets.filter(t => (t.text==2))
  }
  
  /**
   * A list of all tweets mentioning a keyword from either apple or google,
   * sorted by the number of retweets.
   */
     lazy val trending: TweetList = {
        (appleTweets union googleTweets).descendingByRetweet
     }

}



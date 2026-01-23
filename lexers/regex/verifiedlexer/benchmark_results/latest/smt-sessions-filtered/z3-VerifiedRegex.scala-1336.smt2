; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71222 () Bool)

(assert start!71222)

(declare-fun b!767894 () Bool)

(declare-fun b_free!24025 () Bool)

(declare-fun b_next!24089 () Bool)

(assert (=> b!767894 (= b_free!24025 (not b_next!24089))))

(declare-fun tp!249881 () Bool)

(declare-fun b_and!71505 () Bool)

(assert (=> b!767894 (= tp!249881 b_and!71505)))

(declare-fun b!767909 () Bool)

(declare-fun b_free!24027 () Bool)

(declare-fun b_next!24091 () Bool)

(assert (=> b!767909 (= b_free!24027 (not b_next!24091))))

(declare-fun tp!249878 () Bool)

(declare-fun b_and!71507 () Bool)

(assert (=> b!767909 (= tp!249878 b_and!71507)))

(declare-fun b_free!24029 () Bool)

(declare-fun b_next!24093 () Bool)

(assert (=> b!767909 (= b_free!24029 (not b_next!24093))))

(declare-fun tp!249895 () Bool)

(declare-fun b_and!71509 () Bool)

(assert (=> b!767909 (= tp!249895 b_and!71509)))

(declare-fun b!767895 () Bool)

(declare-fun b_free!24031 () Bool)

(declare-fun b_next!24095 () Bool)

(assert (=> b!767895 (= b_free!24031 (not b_next!24095))))

(declare-fun tp!249904 () Bool)

(declare-fun b_and!71511 () Bool)

(assert (=> b!767895 (= tp!249904 b_and!71511)))

(declare-fun b!767901 () Bool)

(declare-fun b_free!24033 () Bool)

(declare-fun b_next!24097 () Bool)

(assert (=> b!767901 (= b_free!24033 (not b_next!24097))))

(declare-fun tp!249890 () Bool)

(declare-fun b_and!71513 () Bool)

(assert (=> b!767901 (= tp!249890 b_and!71513)))

(declare-fun b!767929 () Bool)

(declare-fun b_free!24035 () Bool)

(declare-fun b_next!24099 () Bool)

(assert (=> b!767929 (= b_free!24035 (not b_next!24099))))

(declare-fun tp!249888 () Bool)

(declare-fun b_and!71515 () Bool)

(assert (=> b!767929 (= tp!249888 b_and!71515)))

(declare-fun b!767930 () Bool)

(declare-fun b_free!24037 () Bool)

(declare-fun b_next!24101 () Bool)

(assert (=> b!767930 (= b_free!24037 (not b_next!24101))))

(declare-fun tp!249894 () Bool)

(declare-fun b_and!71517 () Bool)

(assert (=> b!767930 (= tp!249894 b_and!71517)))

(declare-fun b!767887 () Bool)

(declare-fun b_free!24039 () Bool)

(declare-fun b_next!24103 () Bool)

(assert (=> b!767887 (= b_free!24039 (not b_next!24103))))

(declare-fun tp!249886 () Bool)

(declare-fun b_and!71519 () Bool)

(assert (=> b!767887 (= tp!249886 b_and!71519)))

(declare-fun b!767884 () Bool)

(declare-fun e!493984 () Bool)

(declare-fun e!493995 () Bool)

(assert (=> b!767884 (= e!493984 e!493995)))

(declare-fun res!337264 () Bool)

(declare-fun e!493979 () Bool)

(assert (=> start!71222 (=> (not res!337264) (not e!493979))))

(declare-datatypes ((LexerInterface!1422 0))(
  ( (LexerInterfaceExt!1419 (__x!6688 Int)) (Lexer!1420) )
))
(declare-fun thiss!12529 () LexerInterface!1422)

(get-info :version)

(assert (=> start!71222 (= res!337264 ((_ is Lexer!1420) thiss!12529))))

(assert (=> start!71222 e!493979))

(declare-datatypes ((List!8467 0))(
  ( (Nil!8453) (Cons!8453 (h!13854 (_ BitVec 16)) (t!91749 List!8467)) )
))
(declare-datatypes ((TokenValue!1664 0))(
  ( (FloatLiteralValue!3328 (text!12093 List!8467)) (TokenValueExt!1663 (__x!6689 Int)) (Broken!8320 (value!51820 List!8467)) (Object!1677) (End!1664) (Def!1664) (Underscore!1664) (Match!1664) (Else!1664) (Error!1664) (Case!1664) (If!1664) (Extends!1664) (Abstract!1664) (Class!1664) (Val!1664) (DelimiterValue!3328 (del!1724 List!8467)) (KeywordValue!1670 (value!51821 List!8467)) (CommentValue!3328 (value!51822 List!8467)) (WhitespaceValue!3328 (value!51823 List!8467)) (IndentationValue!1664 (value!51824 List!8467)) (String!10061) (Int32!1664) (Broken!8321 (value!51825 List!8467)) (Boolean!1665) (Unit!13072) (OperatorValue!1667 (op!1724 List!8467)) (IdentifierValue!3328 (value!51826 List!8467)) (IdentifierValue!3329 (value!51827 List!8467)) (WhitespaceValue!3329 (value!51828 List!8467)) (True!3328) (False!3328) (Broken!8322 (value!51829 List!8467)) (Broken!8323 (value!51830 List!8467)) (True!3329) (RightBrace!1664) (RightBracket!1664) (Colon!1664) (Null!1664) (Comma!1664) (LeftBracket!1664) (False!3329) (LeftBrace!1664) (ImaginaryLiteralValue!1664 (text!12094 List!8467)) (StringLiteralValue!4992 (value!51831 List!8467)) (EOFValue!1664 (value!51832 List!8467)) (IdentValue!1664 (value!51833 List!8467)) (DelimiterValue!3329 (value!51834 List!8467)) (DedentValue!1664 (value!51835 List!8467)) (NewLineValue!1664 (value!51836 List!8467)) (IntegerValue!4992 (value!51837 (_ BitVec 32)) (text!12095 List!8467)) (IntegerValue!4993 (value!51838 Int) (text!12096 List!8467)) (Times!1664) (Or!1664) (Equal!1664) (Minus!1664) (Broken!8324 (value!51839 List!8467)) (And!1664) (Div!1664) (LessEqual!1664) (Mod!1664) (Concat!3631) (Not!1664) (Plus!1664) (SpaceValue!1664 (value!51840 List!8467)) (IntegerValue!4994 (value!51841 Int) (text!12097 List!8467)) (StringLiteralValue!4993 (text!12098 List!8467)) (FloatLiteralValue!3329 (text!12099 List!8467)) (BytesLiteralValue!1664 (value!51842 List!8467)) (CommentValue!3329 (value!51843 List!8467)) (StringLiteralValue!4994 (value!51844 List!8467)) (ErrorTokenValue!1664 (msg!1725 List!8467)) )
))
(declare-datatypes ((C!4536 0))(
  ( (C!4537 (val!2498 Int)) )
))
(declare-datatypes ((Regex!1967 0))(
  ( (ElementMatch!1967 (c!130166 C!4536)) (Concat!3632 (regOne!4446 Regex!1967) (regTwo!4446 Regex!1967)) (EmptyExpr!1967) (Star!1967 (reg!2296 Regex!1967)) (EmptyLang!1967) (Union!1967 (regOne!4447 Regex!1967) (regTwo!4447 Regex!1967)) )
))
(declare-datatypes ((List!8468 0))(
  ( (Nil!8454) (Cons!8454 (h!13855 C!4536) (t!91750 List!8468)) )
))
(declare-datatypes ((IArray!5731 0))(
  ( (IArray!5732 (innerList!2923 List!8468)) )
))
(declare-datatypes ((Conc!2865 0))(
  ( (Node!2865 (left!6355 Conc!2865) (right!6685 Conc!2865) (csize!5960 Int) (cheight!3076 Int)) (Leaf!4202 (xs!5552 IArray!5731) (csize!5961 Int)) (Empty!2865) )
))
(declare-datatypes ((BalanceConc!5742 0))(
  ( (BalanceConc!5743 (c!130167 Conc!2865)) )
))
(declare-datatypes ((String!10062 0))(
  ( (String!10063 (value!51845 String)) )
))
(declare-datatypes ((TokenValueInjection!3064 0))(
  ( (TokenValueInjection!3065 (toValue!2612 Int) (toChars!2471 Int)) )
))
(declare-datatypes ((Rule!3040 0))(
  ( (Rule!3041 (regex!1620 Regex!1967) (tag!1882 String!10062) (isSeparator!1620 Bool) (transformation!1620 TokenValueInjection!3064)) )
))
(declare-datatypes ((Token!2938 0))(
  ( (Token!2939 (value!51846 TokenValue!1664) (rule!2755 Rule!3040) (size!6889 Int) (originalCharacters!1894 List!8468)) )
))
(declare-datatypes ((List!8469 0))(
  ( (Nil!8455) (Cons!8455 (h!13856 Token!2938) (t!91751 List!8469)) )
))
(declare-datatypes ((IArray!5733 0))(
  ( (IArray!5734 (innerList!2924 List!8469)) )
))
(declare-datatypes ((Conc!2866 0))(
  ( (Node!2866 (left!6356 Conc!2866) (right!6686 Conc!2866) (csize!5962 Int) (cheight!3077 Int)) (Leaf!4203 (xs!5553 IArray!5733) (csize!5963 Int)) (Empty!2866) )
))
(declare-datatypes ((BalanceConc!5744 0))(
  ( (BalanceConc!5745 (c!130168 Conc!2866)) )
))
(declare-fun acc!372 () BalanceConc!5744)

(declare-fun e!493994 () Bool)

(declare-fun inv!10766 (BalanceConc!5744) Bool)

(assert (=> start!71222 (and (inv!10766 acc!372) e!493994)))

(declare-fun treated!50 () BalanceConc!5742)

(declare-fun e!493987 () Bool)

(declare-fun inv!10767 (BalanceConc!5742) Bool)

(assert (=> start!71222 (and (inv!10767 treated!50) e!493987)))

(declare-fun totalInput!378 () BalanceConc!5742)

(declare-fun e!493981 () Bool)

(assert (=> start!71222 (and (inv!10767 totalInput!378) e!493981)))

(declare-fun input!870 () BalanceConc!5742)

(declare-fun e!493964 () Bool)

(assert (=> start!71222 (and (inv!10767 input!870) e!493964)))

(declare-fun e!493983 () Bool)

(assert (=> start!71222 e!493983))

(assert (=> start!71222 true))

(declare-datatypes ((array!3993 0))(
  ( (array!3994 (arr!1782 (Array (_ BitVec 32) (_ BitVec 64))) (size!6890 (_ BitVec 32))) )
))
(declare-datatypes ((List!8470 0))(
  ( (Nil!8456) (Cons!8456 (h!13857 Regex!1967) (t!91752 List!8470)) )
))
(declare-datatypes ((Context!738 0))(
  ( (Context!739 (exprs!869 List!8470)) )
))
(declare-datatypes ((tuple2!9804 0))(
  ( (tuple2!9805 (_1!5644 Context!738) (_2!5644 C!4536)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9806 0))(
  ( (tuple2!9807 (_1!5645 tuple2!9804) (_2!5645 (InoxSet Context!738))) )
))
(declare-datatypes ((List!8471 0))(
  ( (Nil!8457) (Cons!8457 (h!13858 tuple2!9806) (t!91753 List!8471)) )
))
(declare-datatypes ((array!3995 0))(
  ( (array!3996 (arr!1783 (Array (_ BitVec 32) List!8471)) (size!6891 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2250 0))(
  ( (LongMapFixedSize!2251 (defaultEntry!1481 Int) (mask!2993 (_ BitVec 32)) (extraKeys!1372 (_ BitVec 32)) (zeroValue!1382 List!8471) (minValue!1382 List!8471) (_size!2359 (_ BitVec 32)) (_keys!1419 array!3993) (_values!1404 array!3995) (_vacant!1186 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4441 0))(
  ( (Cell!4442 (v!18598 LongMapFixedSize!2250)) )
))
(declare-datatypes ((MutLongMap!1125 0))(
  ( (LongMap!1125 (underlying!2433 Cell!4441)) (MutLongMapExt!1124 (__x!6690 Int)) )
))
(declare-datatypes ((Hashable!1097 0))(
  ( (HashableExt!1096 (__x!6691 Int)) )
))
(declare-datatypes ((Cell!4443 0))(
  ( (Cell!4444 (v!18599 MutLongMap!1125)) )
))
(declare-datatypes ((MutableMap!1097 0))(
  ( (MutableMapExt!1096 (__x!6692 Int)) (HashMap!1097 (underlying!2434 Cell!4443) (hashF!3005 Hashable!1097) (_size!2360 (_ BitVec 32)) (defaultValue!1248 Int)) )
))
(declare-datatypes ((CacheUp!614 0))(
  ( (CacheUp!615 (cache!1484 MutableMap!1097)) )
))
(declare-fun cacheUp!502 () CacheUp!614)

(declare-fun e!493961 () Bool)

(declare-fun inv!10768 (CacheUp!614) Bool)

(assert (=> start!71222 (and (inv!10768 cacheUp!502) e!493961)))

(declare-datatypes ((tuple3!950 0))(
  ( (tuple3!951 (_1!5646 Regex!1967) (_2!5646 Context!738) (_3!742 C!4536)) )
))
(declare-datatypes ((tuple2!9808 0))(
  ( (tuple2!9809 (_1!5647 tuple3!950) (_2!5647 (InoxSet Context!738))) )
))
(declare-datatypes ((List!8472 0))(
  ( (Nil!8458) (Cons!8458 (h!13859 tuple2!9808) (t!91754 List!8472)) )
))
(declare-datatypes ((array!3997 0))(
  ( (array!3998 (arr!1784 (Array (_ BitVec 32) List!8472)) (size!6892 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2252 0))(
  ( (LongMapFixedSize!2253 (defaultEntry!1482 Int) (mask!2994 (_ BitVec 32)) (extraKeys!1373 (_ BitVec 32)) (zeroValue!1383 List!8472) (minValue!1383 List!8472) (_size!2361 (_ BitVec 32)) (_keys!1420 array!3993) (_values!1405 array!3997) (_vacant!1187 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4445 0))(
  ( (Cell!4446 (v!18600 LongMapFixedSize!2252)) )
))
(declare-datatypes ((MutLongMap!1126 0))(
  ( (LongMap!1126 (underlying!2435 Cell!4445)) (MutLongMapExt!1125 (__x!6693 Int)) )
))
(declare-datatypes ((Cell!4447 0))(
  ( (Cell!4448 (v!18601 MutLongMap!1126)) )
))
(declare-datatypes ((Hashable!1098 0))(
  ( (HashableExt!1097 (__x!6694 Int)) )
))
(declare-datatypes ((MutableMap!1098 0))(
  ( (MutableMapExt!1097 (__x!6695 Int)) (HashMap!1098 (underlying!2436 Cell!4447) (hashF!3006 Hashable!1098) (_size!2362 (_ BitVec 32)) (defaultValue!1249 Int)) )
))
(declare-datatypes ((CacheDown!622 0))(
  ( (CacheDown!623 (cache!1485 MutableMap!1098)) )
))
(declare-fun cacheDown!515 () CacheDown!622)

(declare-fun e!493980 () Bool)

(declare-fun inv!10769 (CacheDown!622) Bool)

(assert (=> start!71222 (and (inv!10769 cacheDown!515) e!493980)))

(declare-datatypes ((Hashable!1099 0))(
  ( (HashableExt!1098 (__x!6696 Int)) )
))
(declare-datatypes ((tuple2!9810 0))(
  ( (tuple2!9811 (_1!5648 (InoxSet Context!738)) (_2!5648 Int)) )
))
(declare-datatypes ((tuple2!9812 0))(
  ( (tuple2!9813 (_1!5649 tuple2!9810) (_2!5649 Int)) )
))
(declare-datatypes ((List!8473 0))(
  ( (Nil!8459) (Cons!8459 (h!13860 tuple2!9812) (t!91755 List!8473)) )
))
(declare-datatypes ((array!3999 0))(
  ( (array!4000 (arr!1785 (Array (_ BitVec 32) List!8473)) (size!6893 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2254 0))(
  ( (LongMapFixedSize!2255 (defaultEntry!1483 Int) (mask!2995 (_ BitVec 32)) (extraKeys!1374 (_ BitVec 32)) (zeroValue!1384 List!8473) (minValue!1384 List!8473) (_size!2363 (_ BitVec 32)) (_keys!1421 array!3993) (_values!1406 array!3999) (_vacant!1188 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4449 0))(
  ( (Cell!4450 (v!18602 LongMapFixedSize!2254)) )
))
(declare-datatypes ((MutLongMap!1127 0))(
  ( (LongMap!1127 (underlying!2437 Cell!4449)) (MutLongMapExt!1126 (__x!6697 Int)) )
))
(declare-datatypes ((Cell!4451 0))(
  ( (Cell!4452 (v!18603 MutLongMap!1127)) )
))
(declare-datatypes ((MutableMap!1099 0))(
  ( (MutableMapExt!1098 (__x!6698 Int)) (HashMap!1099 (underlying!2438 Cell!4451) (hashF!3007 Hashable!1099) (_size!2364 (_ BitVec 32)) (defaultValue!1250 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!284 0))(
  ( (CacheFindLongestMatch!285 (cache!1486 MutableMap!1099) (totalInput!2099 BalanceConc!5742)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!284)

(declare-fun e!493982 () Bool)

(declare-fun inv!10770 (CacheFindLongestMatch!284) Bool)

(assert (=> start!71222 (and (inv!10770 cacheFindLongestMatch!74) e!493982)))

(declare-fun b!767885 () Bool)

(declare-datatypes ((List!8474 0))(
  ( (Nil!8460) (Cons!8460 (h!13861 Rule!3040) (t!91756 List!8474)) )
))
(declare-fun rules!1486 () List!8474)

(declare-fun e!493960 () Bool)

(declare-fun tp!249906 () Bool)

(declare-fun e!493956 () Bool)

(declare-fun inv!10759 (String!10062) Bool)

(declare-fun inv!10771 (TokenValueInjection!3064) Bool)

(assert (=> b!767885 (= e!493960 (and tp!249906 (inv!10759 (tag!1882 (h!13861 rules!1486))) (inv!10771 (transformation!1620 (h!13861 rules!1486))) e!493956))))

(declare-fun b!767886 () Bool)

(declare-fun e!493959 () Bool)

(declare-fun e!493991 () Bool)

(declare-fun lt!313145 () MutLongMap!1126)

(assert (=> b!767886 (= e!493959 (and e!493991 ((_ is LongMap!1126) lt!313145)))))

(assert (=> b!767886 (= lt!313145 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))

(declare-fun e!493974 () Bool)

(declare-fun e!493970 () Bool)

(assert (=> b!767887 (= e!493974 (and e!493970 tp!249886))))

(declare-fun b!767888 () Bool)

(declare-fun e!493968 () Bool)

(declare-fun e!493966 () Bool)

(assert (=> b!767888 (= e!493968 e!493966)))

(declare-fun b!767889 () Bool)

(declare-fun e!493972 () Bool)

(declare-fun e!493977 () Bool)

(assert (=> b!767889 (= e!493982 (and e!493977 (inv!10767 (totalInput!2099 cacheFindLongestMatch!74)) e!493972))))

(declare-fun b!767890 () Bool)

(declare-fun e!493985 () Bool)

(declare-fun tp!249901 () Bool)

(declare-fun mapRes!5557 () Bool)

(assert (=> b!767890 (= e!493985 (and tp!249901 mapRes!5557))))

(declare-fun condMapEmpty!5555 () Bool)

(declare-fun mapDefault!5556 () List!8471)

(assert (=> b!767890 (= condMapEmpty!5555 (= (arr!1783 (_values!1404 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!8471)) mapDefault!5556)))))

(declare-fun b!767891 () Bool)

(declare-fun lt!313142 () MutLongMap!1125)

(assert (=> b!767891 (= e!493970 (and e!493984 ((_ is LongMap!1125) lt!313142)))))

(assert (=> b!767891 (= lt!313142 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))

(declare-fun b!767892 () Bool)

(declare-fun tp!249885 () Bool)

(declare-fun inv!10772 (Conc!2866) Bool)

(assert (=> b!767892 (= e!493994 (and (inv!10772 (c!130168 acc!372)) tp!249885))))

(declare-fun b!767893 () Bool)

(declare-fun res!337250 () Bool)

(assert (=> b!767893 (=> (not res!337250) (not e!493979))))

(declare-fun rulesInvariant!1327 (LexerInterface!1422 List!8474) Bool)

(assert (=> b!767893 (= res!337250 (rulesInvariant!1327 thiss!12529 rules!1486))))

(declare-fun e!493989 () Bool)

(declare-fun tp!249887 () Bool)

(declare-fun e!493962 () Bool)

(declare-fun tp!249897 () Bool)

(declare-fun array_inv!1295 (array!3993) Bool)

(declare-fun array_inv!1296 (array!3997) Bool)

(assert (=> b!767894 (= e!493989 (and tp!249881 tp!249897 tp!249887 (array_inv!1295 (_keys!1420 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) (array_inv!1296 (_values!1405 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) e!493962))))

(declare-fun mapIsEmpty!5555 () Bool)

(declare-fun mapRes!5555 () Bool)

(assert (=> mapIsEmpty!5555 mapRes!5555))

(declare-fun tp!249893 () Bool)

(declare-fun e!493988 () Bool)

(declare-fun e!493963 () Bool)

(declare-fun tp!249905 () Bool)

(declare-fun array_inv!1297 (array!3999) Bool)

(assert (=> b!767895 (= e!493963 (and tp!249904 tp!249893 tp!249905 (array_inv!1295 (_keys!1421 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) (array_inv!1297 (_values!1406 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) e!493988))))

(declare-fun mapNonEmpty!5555 () Bool)

(declare-fun tp!249892 () Bool)

(declare-fun tp!249882 () Bool)

(assert (=> mapNonEmpty!5555 (= mapRes!5557 (and tp!249892 tp!249882))))

(declare-fun mapValue!5555 () List!8471)

(declare-fun mapKey!5555 () (_ BitVec 32))

(declare-fun mapRest!5555 () (Array (_ BitVec 32) List!8471))

(assert (=> mapNonEmpty!5555 (= (arr!1783 (_values!1404 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) (store mapRest!5555 mapKey!5555 mapValue!5555))))

(declare-fun b!767896 () Bool)

(declare-fun tp!249880 () Bool)

(declare-fun inv!10773 (Conc!2865) Bool)

(assert (=> b!767896 (= e!493981 (and (inv!10773 (c!130167 totalInput!378)) tp!249880))))

(declare-fun mapIsEmpty!5556 () Bool)

(assert (=> mapIsEmpty!5556 mapRes!5557))

(declare-fun b!767897 () Bool)

(declare-fun res!337260 () Bool)

(declare-fun e!493976 () Bool)

(assert (=> b!767897 (=> (not res!337260) (not e!493976))))

(assert (=> b!767897 (= res!337260 (= (totalInput!2099 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!767898 () Bool)

(declare-fun e!493990 () Bool)

(assert (=> b!767898 (= e!493990 e!493976)))

(declare-fun res!337249 () Bool)

(assert (=> b!767898 (=> (not res!337249) (not e!493976))))

(declare-datatypes ((tuple2!9814 0))(
  ( (tuple2!9815 (_1!5650 BalanceConc!5744) (_2!5650 BalanceConc!5742)) )
))
(declare-fun lt!313149 () tuple2!9814)

(declare-fun lt!313147 () tuple2!9814)

(declare-fun list!3418 (BalanceConc!5744) List!8469)

(declare-fun ++!2227 (BalanceConc!5744 BalanceConc!5744) BalanceConc!5744)

(assert (=> b!767898 (= res!337249 (= (list!3418 (_1!5650 lt!313149)) (list!3418 (++!2227 acc!372 (_1!5650 lt!313147)))))))

(declare-fun lexRec!249 (LexerInterface!1422 List!8474 BalanceConc!5742) tuple2!9814)

(assert (=> b!767898 (= lt!313147 (lexRec!249 thiss!12529 rules!1486 input!870))))

(assert (=> b!767898 (= lt!313149 (lexRec!249 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!767899 () Bool)

(declare-fun e!493958 () Bool)

(assert (=> b!767899 (= e!493980 e!493958)))

(declare-fun b!767900 () Bool)

(assert (=> b!767900 (= e!493966 e!493963)))

(declare-fun e!493971 () Bool)

(assert (=> b!767901 (= e!493977 (and e!493971 tp!249890))))

(declare-fun b!767902 () Bool)

(declare-fun res!337252 () Bool)

(declare-fun e!493967 () Bool)

(assert (=> b!767902 (=> (not res!337252) (not e!493967))))

(declare-datatypes ((tuple2!9816 0))(
  ( (tuple2!9817 (_1!5651 Token!2938) (_2!5651 BalanceConc!5742)) )
))
(declare-datatypes ((Option!1868 0))(
  ( (None!1867) (Some!1867 (v!18604 tuple2!9816)) )
))
(declare-datatypes ((tuple4!534 0))(
  ( (tuple4!535 (_1!5652 Option!1868) (_2!5652 CacheUp!614) (_3!743 CacheDown!622) (_4!267 CacheFindLongestMatch!284)) )
))
(declare-fun lt!313151 () tuple4!534)

(declare-fun valid!920 (CacheDown!622) Bool)

(assert (=> b!767902 (= res!337252 (valid!920 (_3!743 lt!313151)))))

(declare-fun mapIsEmpty!5557 () Bool)

(declare-fun mapRes!5556 () Bool)

(assert (=> mapIsEmpty!5557 mapRes!5556))

(declare-fun b!767903 () Bool)

(declare-fun tp!249896 () Bool)

(assert (=> b!767903 (= e!493987 (and (inv!10773 (c!130167 treated!50)) tp!249896))))

(declare-fun mapNonEmpty!5556 () Bool)

(declare-fun tp!249879 () Bool)

(declare-fun tp!249891 () Bool)

(assert (=> mapNonEmpty!5556 (= mapRes!5555 (and tp!249879 tp!249891))))

(declare-fun mapValue!5556 () List!8472)

(declare-fun mapRest!5557 () (Array (_ BitVec 32) List!8472))

(declare-fun mapKey!5557 () (_ BitVec 32))

(assert (=> mapNonEmpty!5556 (= (arr!1784 (_values!1405 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) (store mapRest!5557 mapKey!5557 mapValue!5556))))

(declare-fun b!767904 () Bool)

(declare-fun e!493957 () Bool)

(assert (=> b!767904 (= e!493957 e!493989)))

(declare-fun b!767905 () Bool)

(declare-fun e!493973 () Bool)

(assert (=> b!767905 (= e!493979 e!493973)))

(declare-fun res!337253 () Bool)

(assert (=> b!767905 (=> (not res!337253) (not e!493973))))

(declare-fun lt!313153 () List!8468)

(declare-fun lt!313148 () List!8468)

(assert (=> b!767905 (= res!337253 (= lt!313153 lt!313148))))

(declare-fun lt!313143 () List!8468)

(declare-fun lt!313150 () List!8468)

(declare-fun ++!2228 (List!8468 List!8468) List!8468)

(assert (=> b!767905 (= lt!313148 (++!2228 lt!313143 lt!313150))))

(declare-fun list!3419 (BalanceConc!5742) List!8468)

(assert (=> b!767905 (= lt!313153 (list!3419 totalInput!378))))

(assert (=> b!767905 (= lt!313150 (list!3419 input!870))))

(assert (=> b!767905 (= lt!313143 (list!3419 treated!50))))

(declare-fun b!767906 () Bool)

(declare-fun res!337258 () Bool)

(assert (=> b!767906 (=> (not res!337258) (not e!493967))))

(declare-fun valid!921 (CacheUp!614) Bool)

(assert (=> b!767906 (= res!337258 (valid!921 (_2!5652 lt!313151)))))

(declare-fun b!767907 () Bool)

(declare-fun res!337265 () Bool)

(assert (=> b!767907 (=> (not res!337265) (not e!493990))))

(declare-fun lt!313146 () tuple2!9814)

(declare-fun isEmpty!5197 (List!8468) Bool)

(assert (=> b!767907 (= res!337265 (isEmpty!5197 (list!3419 (_2!5650 lt!313146))))))

(declare-fun b!767908 () Bool)

(declare-fun res!337263 () Bool)

(assert (=> b!767908 (=> (not res!337263) (not e!493976))))

(declare-fun valid!922 (CacheFindLongestMatch!284) Bool)

(assert (=> b!767908 (= res!337263 (valid!922 cacheFindLongestMatch!74))))

(assert (=> b!767909 (= e!493956 (and tp!249878 tp!249895))))

(declare-fun mapNonEmpty!5557 () Bool)

(declare-fun tp!249899 () Bool)

(declare-fun tp!249884 () Bool)

(assert (=> mapNonEmpty!5557 (= mapRes!5556 (and tp!249899 tp!249884))))

(declare-fun mapRest!5556 () (Array (_ BitVec 32) List!8473))

(declare-fun mapKey!5556 () (_ BitVec 32))

(declare-fun mapValue!5557 () List!8473)

(assert (=> mapNonEmpty!5557 (= (arr!1785 (_values!1406 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) (store mapRest!5556 mapKey!5556 mapValue!5557))))

(declare-fun b!767910 () Bool)

(assert (=> b!767910 (= e!493961 e!493974)))

(declare-fun b!767911 () Bool)

(declare-fun tp!249907 () Bool)

(assert (=> b!767911 (= e!493988 (and tp!249907 mapRes!5556))))

(declare-fun condMapEmpty!5557 () Bool)

(declare-fun mapDefault!5555 () List!8473)

(assert (=> b!767911 (= condMapEmpty!5557 (= (arr!1785 (_values!1406 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!8473)) mapDefault!5555)))))

(declare-fun b!767912 () Bool)

(declare-fun res!337251 () Bool)

(assert (=> b!767912 (=> (not res!337251) (not e!493976))))

(assert (=> b!767912 (= res!337251 (valid!921 cacheUp!502))))

(declare-fun b!767913 () Bool)

(declare-fun res!337256 () Bool)

(assert (=> b!767913 (=> (not res!337256) (not e!493976))))

(assert (=> b!767913 (= res!337256 (valid!920 cacheDown!515))))

(declare-fun b!767914 () Bool)

(declare-fun lt!313152 () MutLongMap!1127)

(assert (=> b!767914 (= e!493971 (and e!493968 ((_ is LongMap!1127) lt!313152)))))

(assert (=> b!767914 (= lt!313152 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))

(declare-fun b!767915 () Bool)

(declare-fun res!337261 () Bool)

(assert (=> b!767915 (=> (not res!337261) (not e!493967))))

(assert (=> b!767915 (= res!337261 (valid!922 (_4!267 lt!313151)))))

(declare-fun b!767916 () Bool)

(declare-fun res!337262 () Bool)

(assert (=> b!767916 (=> (not res!337262) (not e!493979))))

(declare-fun isEmpty!5198 (List!8474) Bool)

(assert (=> b!767916 (= res!337262 (not (isEmpty!5198 rules!1486)))))

(declare-fun b!767917 () Bool)

(declare-fun tp!249903 () Bool)

(assert (=> b!767917 (= e!493972 (and (inv!10773 (c!130167 (totalInput!2099 cacheFindLongestMatch!74))) tp!249903))))

(declare-fun b!767918 () Bool)

(declare-fun tp!249898 () Bool)

(assert (=> b!767918 (= e!493962 (and tp!249898 mapRes!5555))))

(declare-fun condMapEmpty!5556 () Bool)

(declare-fun mapDefault!5557 () List!8472)

(assert (=> b!767918 (= condMapEmpty!5556 (= (arr!1784 (_values!1405 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!8472)) mapDefault!5557)))))

(declare-fun b!767919 () Bool)

(assert (=> b!767919 (= e!493991 e!493957)))

(declare-fun b!767920 () Bool)

(declare-fun e!493992 () Bool)

(assert (=> b!767920 (= e!493976 (not e!493992))))

(declare-fun res!337248 () Bool)

(assert (=> b!767920 (=> res!337248 e!493992)))

(declare-fun isSuffix!205 (List!8468 List!8468) Bool)

(assert (=> b!767920 (= res!337248 (not (isSuffix!205 lt!313150 lt!313153)))))

(assert (=> b!767920 (isSuffix!205 lt!313150 lt!313148)))

(declare-datatypes ((Unit!13073 0))(
  ( (Unit!13074) )
))
(declare-fun lt!313144 () Unit!13073)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!205 (List!8468 List!8468) Unit!13073)

(assert (=> b!767920 (= lt!313144 (lemmaConcatTwoListThenFSndIsSuffix!205 lt!313143 lt!313150))))

(declare-fun b!767921 () Bool)

(declare-fun e!493969 () Bool)

(assert (=> b!767921 (= e!493969 e!493967)))

(declare-fun res!337259 () Bool)

(assert (=> b!767921 (=> (not res!337259) (not e!493967))))

(declare-fun lexTailRecV2!283 (LexerInterface!1422 List!8474 BalanceConc!5742 BalanceConc!5742 BalanceConc!5742 BalanceConc!5744) tuple2!9814)

(assert (=> b!767921 (= res!337259 (= (tuple2!9815 acc!372 input!870) (lexTailRecV2!283 thiss!12529 rules!1486 totalInput!378 treated!50 input!870 acc!372)))))

(declare-fun b!767922 () Bool)

(declare-fun tp!249902 () Bool)

(assert (=> b!767922 (= e!493983 (and e!493960 tp!249902))))

(declare-fun b!767923 () Bool)

(assert (=> b!767923 (= e!493992 e!493969)))

(declare-fun res!337257 () Bool)

(assert (=> b!767923 (=> res!337257 e!493969)))

(assert (=> b!767923 (= res!337257 ((_ is Some!1867) (_1!5652 lt!313151)))))

(declare-fun maxPrefixZipperSequenceV2Mem!80 (LexerInterface!1422 List!8474 BalanceConc!5742 BalanceConc!5742 CacheUp!614 CacheDown!622 CacheFindLongestMatch!284) tuple4!534)

(assert (=> b!767923 (= lt!313151 (maxPrefixZipperSequenceV2Mem!80 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!767924 () Bool)

(declare-fun e!493978 () Bool)

(assert (=> b!767924 (= e!493995 e!493978)))

(declare-fun b!767925 () Bool)

(declare-fun res!337254 () Bool)

(assert (=> b!767925 (=> (not res!337254) (not e!493976))))

(assert (=> b!767925 (= res!337254 (= (list!3419 (_2!5650 lt!313149)) (list!3419 (_2!5650 lt!313147))))))

(declare-fun b!767926 () Bool)

(declare-fun tp!249889 () Bool)

(assert (=> b!767926 (= e!493964 (and (inv!10773 (c!130167 input!870)) tp!249889))))

(declare-fun b!767927 () Bool)

(assert (=> b!767927 (= e!493973 e!493990)))

(declare-fun res!337255 () Bool)

(assert (=> b!767927 (=> (not res!337255) (not e!493990))))

(assert (=> b!767927 (= res!337255 (= (list!3418 (_1!5650 lt!313146)) (list!3418 acc!372)))))

(assert (=> b!767927 (= lt!313146 (lexRec!249 thiss!12529 rules!1486 treated!50))))

(declare-fun b!767928 () Bool)

(assert (=> b!767928 (= e!493967 (= (totalInput!2099 (_4!267 lt!313151)) totalInput!378))))

(declare-fun tp!249900 () Bool)

(declare-fun tp!249883 () Bool)

(declare-fun array_inv!1298 (array!3995) Bool)

(assert (=> b!767929 (= e!493978 (and tp!249888 tp!249883 tp!249900 (array_inv!1295 (_keys!1419 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) (array_inv!1298 (_values!1404 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) e!493985))))

(assert (=> b!767930 (= e!493958 (and e!493959 tp!249894))))

(assert (= (and start!71222 res!337264) b!767916))

(assert (= (and b!767916 res!337262) b!767893))

(assert (= (and b!767893 res!337250) b!767905))

(assert (= (and b!767905 res!337253) b!767927))

(assert (= (and b!767927 res!337255) b!767907))

(assert (= (and b!767907 res!337265) b!767898))

(assert (= (and b!767898 res!337249) b!767925))

(assert (= (and b!767925 res!337254) b!767912))

(assert (= (and b!767912 res!337251) b!767913))

(assert (= (and b!767913 res!337256) b!767908))

(assert (= (and b!767908 res!337263) b!767897))

(assert (= (and b!767897 res!337260) b!767920))

(assert (= (and b!767920 (not res!337248)) b!767923))

(assert (= (and b!767923 (not res!337257)) b!767921))

(assert (= (and b!767921 res!337259) b!767915))

(assert (= (and b!767915 res!337261) b!767906))

(assert (= (and b!767906 res!337258) b!767902))

(assert (= (and b!767902 res!337252) b!767928))

(assert (= start!71222 b!767892))

(assert (= start!71222 b!767903))

(assert (= start!71222 b!767896))

(assert (= start!71222 b!767926))

(assert (= b!767885 b!767909))

(assert (= b!767922 b!767885))

(assert (= (and start!71222 ((_ is Cons!8460) rules!1486)) b!767922))

(assert (= (and b!767890 condMapEmpty!5555) mapIsEmpty!5556))

(assert (= (and b!767890 (not condMapEmpty!5555)) mapNonEmpty!5555))

(assert (= b!767929 b!767890))

(assert (= b!767924 b!767929))

(assert (= b!767884 b!767924))

(assert (= (and b!767891 ((_ is LongMap!1125) (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))) b!767884))

(assert (= b!767887 b!767891))

(assert (= (and b!767910 ((_ is HashMap!1097) (cache!1484 cacheUp!502))) b!767887))

(assert (= start!71222 b!767910))

(assert (= (and b!767918 condMapEmpty!5556) mapIsEmpty!5555))

(assert (= (and b!767918 (not condMapEmpty!5556)) mapNonEmpty!5556))

(assert (= b!767894 b!767918))

(assert (= b!767904 b!767894))

(assert (= b!767919 b!767904))

(assert (= (and b!767886 ((_ is LongMap!1126) (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))) b!767919))

(assert (= b!767930 b!767886))

(assert (= (and b!767899 ((_ is HashMap!1098) (cache!1485 cacheDown!515))) b!767930))

(assert (= start!71222 b!767899))

(assert (= (and b!767911 condMapEmpty!5557) mapIsEmpty!5557))

(assert (= (and b!767911 (not condMapEmpty!5557)) mapNonEmpty!5557))

(assert (= b!767895 b!767911))

(assert (= b!767900 b!767895))

(assert (= b!767888 b!767900))

(assert (= (and b!767914 ((_ is LongMap!1127) (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))) b!767888))

(assert (= b!767901 b!767914))

(assert (= (and b!767889 ((_ is HashMap!1099) (cache!1486 cacheFindLongestMatch!74))) b!767901))

(assert (= b!767889 b!767917))

(assert (= start!71222 b!767889))

(declare-fun m!1037547 () Bool)

(assert (=> mapNonEmpty!5557 m!1037547))

(declare-fun m!1037549 () Bool)

(assert (=> b!767921 m!1037549))

(declare-fun m!1037551 () Bool)

(assert (=> b!767916 m!1037551))

(declare-fun m!1037553 () Bool)

(assert (=> b!767894 m!1037553))

(declare-fun m!1037555 () Bool)

(assert (=> b!767894 m!1037555))

(declare-fun m!1037557 () Bool)

(assert (=> b!767907 m!1037557))

(assert (=> b!767907 m!1037557))

(declare-fun m!1037559 () Bool)

(assert (=> b!767907 m!1037559))

(declare-fun m!1037561 () Bool)

(assert (=> b!767898 m!1037561))

(declare-fun m!1037563 () Bool)

(assert (=> b!767898 m!1037563))

(declare-fun m!1037565 () Bool)

(assert (=> b!767898 m!1037565))

(assert (=> b!767898 m!1037565))

(declare-fun m!1037567 () Bool)

(assert (=> b!767898 m!1037567))

(declare-fun m!1037569 () Bool)

(assert (=> b!767898 m!1037569))

(declare-fun m!1037571 () Bool)

(assert (=> b!767906 m!1037571))

(declare-fun m!1037573 () Bool)

(assert (=> mapNonEmpty!5555 m!1037573))

(declare-fun m!1037575 () Bool)

(assert (=> b!767913 m!1037575))

(declare-fun m!1037577 () Bool)

(assert (=> b!767923 m!1037577))

(declare-fun m!1037579 () Bool)

(assert (=> start!71222 m!1037579))

(declare-fun m!1037581 () Bool)

(assert (=> start!71222 m!1037581))

(declare-fun m!1037583 () Bool)

(assert (=> start!71222 m!1037583))

(declare-fun m!1037585 () Bool)

(assert (=> start!71222 m!1037585))

(declare-fun m!1037587 () Bool)

(assert (=> start!71222 m!1037587))

(declare-fun m!1037589 () Bool)

(assert (=> start!71222 m!1037589))

(declare-fun m!1037591 () Bool)

(assert (=> start!71222 m!1037591))

(declare-fun m!1037593 () Bool)

(assert (=> b!767903 m!1037593))

(declare-fun m!1037595 () Bool)

(assert (=> b!767889 m!1037595))

(declare-fun m!1037597 () Bool)

(assert (=> b!767917 m!1037597))

(declare-fun m!1037599 () Bool)

(assert (=> b!767915 m!1037599))

(declare-fun m!1037601 () Bool)

(assert (=> b!767902 m!1037601))

(declare-fun m!1037603 () Bool)

(assert (=> b!767892 m!1037603))

(declare-fun m!1037605 () Bool)

(assert (=> b!767926 m!1037605))

(declare-fun m!1037607 () Bool)

(assert (=> b!767912 m!1037607))

(declare-fun m!1037609 () Bool)

(assert (=> b!767925 m!1037609))

(declare-fun m!1037611 () Bool)

(assert (=> b!767925 m!1037611))

(declare-fun m!1037613 () Bool)

(assert (=> b!767929 m!1037613))

(declare-fun m!1037615 () Bool)

(assert (=> b!767929 m!1037615))

(declare-fun m!1037617 () Bool)

(assert (=> b!767920 m!1037617))

(declare-fun m!1037619 () Bool)

(assert (=> b!767920 m!1037619))

(declare-fun m!1037621 () Bool)

(assert (=> b!767920 m!1037621))

(declare-fun m!1037623 () Bool)

(assert (=> b!767896 m!1037623))

(declare-fun m!1037625 () Bool)

(assert (=> b!767885 m!1037625))

(declare-fun m!1037627 () Bool)

(assert (=> b!767885 m!1037627))

(declare-fun m!1037629 () Bool)

(assert (=> b!767895 m!1037629))

(declare-fun m!1037631 () Bool)

(assert (=> b!767895 m!1037631))

(declare-fun m!1037633 () Bool)

(assert (=> b!767893 m!1037633))

(declare-fun m!1037635 () Bool)

(assert (=> mapNonEmpty!5556 m!1037635))

(declare-fun m!1037637 () Bool)

(assert (=> b!767905 m!1037637))

(declare-fun m!1037639 () Bool)

(assert (=> b!767905 m!1037639))

(declare-fun m!1037641 () Bool)

(assert (=> b!767905 m!1037641))

(declare-fun m!1037643 () Bool)

(assert (=> b!767905 m!1037643))

(declare-fun m!1037645 () Bool)

(assert (=> b!767908 m!1037645))

(declare-fun m!1037647 () Bool)

(assert (=> b!767927 m!1037647))

(declare-fun m!1037649 () Bool)

(assert (=> b!767927 m!1037649))

(declare-fun m!1037651 () Bool)

(assert (=> b!767927 m!1037651))

(check-sat (not b!767895) (not b!767896) (not b_next!24097) b_and!71515 (not b_next!24093) (not b!767892) (not b!767913) (not b!767894) (not mapNonEmpty!5556) (not start!71222) (not b_next!24095) (not b!767903) (not b!767923) (not b_next!24089) (not b_next!24103) (not b!767915) (not b_next!24091) (not b!767906) (not b!767893) (not b!767918) (not b_next!24099) b_and!71507 b_and!71505 (not mapNonEmpty!5557) (not b!767890) (not b!767929) (not b!767920) (not b!767925) b_and!71511 (not b!767907) b_and!71509 (not b!767922) (not b!767905) (not b!767889) (not b!767927) (not b!767908) (not b!767917) (not b!767885) (not b!767916) b_and!71517 (not b_next!24101) (not b!767902) (not b!767921) b_and!71513 (not b!767898) b_and!71519 (not b!767912) (not b!767926) (not b!767911) (not mapNonEmpty!5555))
(check-sat (not b_next!24095) (not b_next!24097) (not b_next!24091) b_and!71515 (not b_next!24099) (not b_next!24093) b_and!71511 b_and!71509 (not b_next!24089) (not b_next!24103) b_and!71507 b_and!71505 b_and!71517 (not b_next!24101) b_and!71513 b_and!71519)
(get-model)

(declare-fun b!767943 () Bool)

(declare-fun e!494001 () Bool)

(declare-fun lt!313172 () tuple4!534)

(assert (=> b!767943 (= e!494001 (= (totalInput!2099 (_4!267 lt!313172)) totalInput!378))))

(declare-fun b!767944 () Bool)

(declare-fun res!337275 () Bool)

(assert (=> b!767944 (=> (not res!337275) (not e!494001))))

(assert (=> b!767944 (= res!337275 (valid!922 (_4!267 lt!313172)))))

(declare-fun b!767945 () Bool)

(declare-fun res!337277 () Bool)

(assert (=> b!767945 (=> (not res!337277) (not e!494001))))

(assert (=> b!767945 (= res!337277 (valid!921 (_2!5652 lt!313172)))))

(declare-fun b!767946 () Bool)

(declare-datatypes ((tuple4!536 0))(
  ( (tuple4!537 (_1!5653 Option!1868) (_2!5653 CacheUp!614) (_3!744 CacheFindLongestMatch!284) (_4!268 CacheDown!622)) )
))
(declare-fun e!494000 () tuple4!536)

(declare-fun lt!313176 () tuple4!534)

(declare-fun lt!313179 () tuple4!534)

(assert (=> b!767946 (= e!494000 (tuple4!537 (ite (and ((_ is None!1867) (_1!5652 lt!313176)) ((_ is None!1867) (_1!5652 lt!313179))) None!1867 (ite ((_ is None!1867) (_1!5652 lt!313179)) (_1!5652 lt!313176) (ite ((_ is None!1867) (_1!5652 lt!313176)) (_1!5652 lt!313179) (ite (>= (size!6889 (_1!5651 (v!18604 (_1!5652 lt!313176)))) (size!6889 (_1!5651 (v!18604 (_1!5652 lt!313179))))) (_1!5652 lt!313176) (_1!5652 lt!313179))))) (_2!5652 lt!313179) (_4!267 lt!313179) (_3!743 lt!313179)))))

(declare-fun call!46833 () tuple4!534)

(assert (=> b!767946 (= lt!313176 call!46833)))

(assert (=> b!767946 (= lt!313179 (maxPrefixZipperSequenceV2Mem!80 thiss!12529 (t!91756 rules!1486) input!870 totalInput!378 (_2!5652 lt!313176) (_3!743 lt!313176) (_4!267 lt!313176)))))

(declare-fun d!251305 () Bool)

(assert (=> d!251305 e!494001))

(declare-fun res!337276 () Bool)

(assert (=> d!251305 (=> (not res!337276) (not e!494001))))

(declare-fun maxPrefixZipperSequenceV2!193 (LexerInterface!1422 List!8474 BalanceConc!5742 BalanceConc!5742) Option!1868)

(assert (=> d!251305 (= res!337276 (= (_1!5652 lt!313172) (maxPrefixZipperSequenceV2!193 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!313175 () tuple4!536)

(assert (=> d!251305 (= lt!313172 (tuple4!535 (_1!5653 lt!313175) (_2!5653 lt!313175) (_4!268 lt!313175) (_3!744 lt!313175)))))

(assert (=> d!251305 (= lt!313175 e!494000)))

(declare-fun c!130171 () Bool)

(assert (=> d!251305 (= c!130171 (and ((_ is Cons!8460) rules!1486) ((_ is Nil!8460) (t!91756 rules!1486))))))

(declare-fun lt!313180 () Unit!13073)

(declare-fun lt!313174 () Unit!13073)

(assert (=> d!251305 (= lt!313180 lt!313174)))

(declare-fun lt!313173 () List!8468)

(declare-fun lt!313177 () List!8468)

(declare-fun isPrefix!980 (List!8468 List!8468) Bool)

(assert (=> d!251305 (isPrefix!980 lt!313173 lt!313177)))

(declare-fun lemmaIsPrefixRefl!691 (List!8468 List!8468) Unit!13073)

(assert (=> d!251305 (= lt!313174 (lemmaIsPrefixRefl!691 lt!313173 lt!313177))))

(assert (=> d!251305 (= lt!313177 (list!3419 input!870))))

(assert (=> d!251305 (= lt!313173 (list!3419 input!870))))

(declare-fun rulesValidInductive!569 (LexerInterface!1422 List!8474) Bool)

(assert (=> d!251305 (rulesValidInductive!569 thiss!12529 rules!1486)))

(assert (=> d!251305 (= (maxPrefixZipperSequenceV2Mem!80 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74) lt!313172)))

(declare-fun bm!46828 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!61 (LexerInterface!1422 Rule!3040 BalanceConc!5742 BalanceConc!5742 CacheUp!614 CacheDown!622 CacheFindLongestMatch!284) tuple4!534)

(assert (=> bm!46828 (= call!46833 (maxPrefixOneRuleZipperSequenceV2Mem!61 thiss!12529 (h!13861 rules!1486) input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!767947 () Bool)

(declare-fun res!337274 () Bool)

(assert (=> b!767947 (=> (not res!337274) (not e!494001))))

(assert (=> b!767947 (= res!337274 (valid!920 (_3!743 lt!313172)))))

(declare-fun b!767948 () Bool)

(declare-fun lt!313178 () tuple4!534)

(assert (=> b!767948 (= e!494000 (tuple4!537 (_1!5652 lt!313178) (_2!5652 lt!313178) (_4!267 lt!313178) (_3!743 lt!313178)))))

(assert (=> b!767948 (= lt!313178 call!46833)))

(assert (= (and d!251305 c!130171) b!767948))

(assert (= (and d!251305 (not c!130171)) b!767946))

(assert (= (or b!767948 b!767946) bm!46828))

(assert (= (and d!251305 res!337276) b!767945))

(assert (= (and b!767945 res!337277) b!767947))

(assert (= (and b!767947 res!337274) b!767944))

(assert (= (and b!767944 res!337275) b!767943))

(declare-fun m!1037653 () Bool)

(assert (=> b!767944 m!1037653))

(declare-fun m!1037655 () Bool)

(assert (=> b!767947 m!1037655))

(declare-fun m!1037657 () Bool)

(assert (=> b!767945 m!1037657))

(declare-fun m!1037659 () Bool)

(assert (=> b!767946 m!1037659))

(declare-fun m!1037661 () Bool)

(assert (=> bm!46828 m!1037661))

(declare-fun m!1037663 () Bool)

(assert (=> d!251305 m!1037663))

(declare-fun m!1037665 () Bool)

(assert (=> d!251305 m!1037665))

(assert (=> d!251305 m!1037641))

(declare-fun m!1037667 () Bool)

(assert (=> d!251305 m!1037667))

(declare-fun m!1037669 () Bool)

(assert (=> d!251305 m!1037669))

(assert (=> b!767923 d!251305))

(declare-fun d!251307 () Bool)

(declare-fun e!494007 () Bool)

(assert (=> d!251307 e!494007))

(declare-fun res!337282 () Bool)

(assert (=> d!251307 (=> (not res!337282) (not e!494007))))

(declare-fun lt!313183 () List!8468)

(declare-fun content!1262 (List!8468) (InoxSet C!4536))

(assert (=> d!251307 (= res!337282 (= (content!1262 lt!313183) ((_ map or) (content!1262 lt!313143) (content!1262 lt!313150))))))

(declare-fun e!494006 () List!8468)

(assert (=> d!251307 (= lt!313183 e!494006)))

(declare-fun c!130174 () Bool)

(assert (=> d!251307 (= c!130174 ((_ is Nil!8454) lt!313143))))

(assert (=> d!251307 (= (++!2228 lt!313143 lt!313150) lt!313183)))

(declare-fun b!767960 () Bool)

(assert (=> b!767960 (= e!494007 (or (not (= lt!313150 Nil!8454)) (= lt!313183 lt!313143)))))

(declare-fun b!767958 () Bool)

(assert (=> b!767958 (= e!494006 (Cons!8454 (h!13855 lt!313143) (++!2228 (t!91750 lt!313143) lt!313150)))))

(declare-fun b!767957 () Bool)

(assert (=> b!767957 (= e!494006 lt!313150)))

(declare-fun b!767959 () Bool)

(declare-fun res!337283 () Bool)

(assert (=> b!767959 (=> (not res!337283) (not e!494007))))

(declare-fun size!6894 (List!8468) Int)

(assert (=> b!767959 (= res!337283 (= (size!6894 lt!313183) (+ (size!6894 lt!313143) (size!6894 lt!313150))))))

(assert (= (and d!251307 c!130174) b!767957))

(assert (= (and d!251307 (not c!130174)) b!767958))

(assert (= (and d!251307 res!337282) b!767959))

(assert (= (and b!767959 res!337283) b!767960))

(declare-fun m!1037671 () Bool)

(assert (=> d!251307 m!1037671))

(declare-fun m!1037673 () Bool)

(assert (=> d!251307 m!1037673))

(declare-fun m!1037675 () Bool)

(assert (=> d!251307 m!1037675))

(declare-fun m!1037677 () Bool)

(assert (=> b!767958 m!1037677))

(declare-fun m!1037679 () Bool)

(assert (=> b!767959 m!1037679))

(declare-fun m!1037681 () Bool)

(assert (=> b!767959 m!1037681))

(declare-fun m!1037683 () Bool)

(assert (=> b!767959 m!1037683))

(assert (=> b!767905 d!251307))

(declare-fun d!251309 () Bool)

(declare-fun list!3420 (Conc!2865) List!8468)

(assert (=> d!251309 (= (list!3419 totalInput!378) (list!3420 (c!130167 totalInput!378)))))

(declare-fun bs!165881 () Bool)

(assert (= bs!165881 d!251309))

(declare-fun m!1037685 () Bool)

(assert (=> bs!165881 m!1037685))

(assert (=> b!767905 d!251309))

(declare-fun d!251311 () Bool)

(assert (=> d!251311 (= (list!3419 input!870) (list!3420 (c!130167 input!870)))))

(declare-fun bs!165882 () Bool)

(assert (= bs!165882 d!251311))

(declare-fun m!1037687 () Bool)

(assert (=> bs!165882 m!1037687))

(assert (=> b!767905 d!251311))

(declare-fun d!251313 () Bool)

(assert (=> d!251313 (= (list!3419 treated!50) (list!3420 (c!130167 treated!50)))))

(declare-fun bs!165883 () Bool)

(assert (= bs!165883 d!251313))

(declare-fun m!1037689 () Bool)

(assert (=> bs!165883 m!1037689))

(assert (=> b!767905 d!251313))

(declare-fun d!251315 () Bool)

(assert (=> d!251315 (= (list!3419 (_2!5650 lt!313149)) (list!3420 (c!130167 (_2!5650 lt!313149))))))

(declare-fun bs!165884 () Bool)

(assert (= bs!165884 d!251315))

(declare-fun m!1037691 () Bool)

(assert (=> bs!165884 m!1037691))

(assert (=> b!767925 d!251315))

(declare-fun d!251317 () Bool)

(assert (=> d!251317 (= (list!3419 (_2!5650 lt!313147)) (list!3420 (c!130167 (_2!5650 lt!313147))))))

(declare-fun bs!165885 () Bool)

(assert (= bs!165885 d!251317))

(declare-fun m!1037693 () Bool)

(assert (=> bs!165885 m!1037693))

(assert (=> b!767925 d!251317))

(declare-fun d!251319 () Bool)

(declare-fun validCacheMapUp!98 (MutableMap!1097) Bool)

(assert (=> d!251319 (= (valid!921 (_2!5652 lt!313151)) (validCacheMapUp!98 (cache!1484 (_2!5652 lt!313151))))))

(declare-fun bs!165886 () Bool)

(assert (= bs!165886 d!251319))

(declare-fun m!1037695 () Bool)

(assert (=> bs!165886 m!1037695))

(assert (=> b!767906 d!251319))

(declare-fun d!251321 () Bool)

(declare-fun c!130177 () Bool)

(assert (=> d!251321 (= c!130177 ((_ is Node!2865) (c!130167 input!870)))))

(declare-fun e!494012 () Bool)

(assert (=> d!251321 (= (inv!10773 (c!130167 input!870)) e!494012)))

(declare-fun b!767967 () Bool)

(declare-fun inv!10774 (Conc!2865) Bool)

(assert (=> b!767967 (= e!494012 (inv!10774 (c!130167 input!870)))))

(declare-fun b!767968 () Bool)

(declare-fun e!494013 () Bool)

(assert (=> b!767968 (= e!494012 e!494013)))

(declare-fun res!337286 () Bool)

(assert (=> b!767968 (= res!337286 (not ((_ is Leaf!4202) (c!130167 input!870))))))

(assert (=> b!767968 (=> res!337286 e!494013)))

(declare-fun b!767969 () Bool)

(declare-fun inv!10775 (Conc!2865) Bool)

(assert (=> b!767969 (= e!494013 (inv!10775 (c!130167 input!870)))))

(assert (= (and d!251321 c!130177) b!767967))

(assert (= (and d!251321 (not c!130177)) b!767968))

(assert (= (and b!767968 (not res!337286)) b!767969))

(declare-fun m!1037697 () Bool)

(assert (=> b!767967 m!1037697))

(declare-fun m!1037699 () Bool)

(assert (=> b!767969 m!1037699))

(assert (=> b!767926 d!251321))

(declare-fun d!251323 () Bool)

(declare-fun isBalanced!770 (Conc!2865) Bool)

(assert (=> d!251323 (= (inv!10767 (totalInput!2099 cacheFindLongestMatch!74)) (isBalanced!770 (c!130167 (totalInput!2099 cacheFindLongestMatch!74))))))

(declare-fun bs!165887 () Bool)

(assert (= bs!165887 d!251323))

(declare-fun m!1037701 () Bool)

(assert (=> bs!165887 m!1037701))

(assert (=> b!767889 d!251323))

(declare-fun d!251325 () Bool)

(assert (=> d!251325 (= (isEmpty!5197 (list!3419 (_2!5650 lt!313146))) ((_ is Nil!8454) (list!3419 (_2!5650 lt!313146))))))

(assert (=> b!767907 d!251325))

(declare-fun d!251327 () Bool)

(assert (=> d!251327 (= (list!3419 (_2!5650 lt!313146)) (list!3420 (c!130167 (_2!5650 lt!313146))))))

(declare-fun bs!165888 () Bool)

(assert (= bs!165888 d!251327))

(declare-fun m!1037703 () Bool)

(assert (=> bs!165888 m!1037703))

(assert (=> b!767907 d!251327))

(declare-fun d!251329 () Bool)

(declare-fun list!3421 (Conc!2866) List!8469)

(assert (=> d!251329 (= (list!3418 (_1!5650 lt!313146)) (list!3421 (c!130168 (_1!5650 lt!313146))))))

(declare-fun bs!165889 () Bool)

(assert (= bs!165889 d!251329))

(declare-fun m!1037705 () Bool)

(assert (=> bs!165889 m!1037705))

(assert (=> b!767927 d!251329))

(declare-fun d!251331 () Bool)

(assert (=> d!251331 (= (list!3418 acc!372) (list!3421 (c!130168 acc!372)))))

(declare-fun bs!165890 () Bool)

(assert (= bs!165890 d!251331))

(declare-fun m!1037707 () Bool)

(assert (=> bs!165890 m!1037707))

(assert (=> b!767927 d!251331))

(declare-fun e!494023 () Bool)

(declare-fun b!767984 () Bool)

(declare-fun lt!313190 () tuple2!9814)

(declare-datatypes ((tuple2!9818 0))(
  ( (tuple2!9819 (_1!5654 List!8469) (_2!5654 List!8468)) )
))
(declare-fun lexList!376 (LexerInterface!1422 List!8474 List!8468) tuple2!9818)

(assert (=> b!767984 (= e!494023 (= (list!3419 (_2!5650 lt!313190)) (_2!5654 (lexList!376 thiss!12529 rules!1486 (list!3419 treated!50)))))))

(declare-fun b!767985 () Bool)

(declare-fun res!337295 () Bool)

(assert (=> b!767985 (=> (not res!337295) (not e!494023))))

(assert (=> b!767985 (= res!337295 (= (list!3418 (_1!5650 lt!313190)) (_1!5654 (lexList!376 thiss!12529 rules!1486 (list!3419 treated!50)))))))

(declare-fun b!767986 () Bool)

(declare-fun e!494025 () tuple2!9814)

(assert (=> b!767986 (= e!494025 (tuple2!9815 (BalanceConc!5745 Empty!2866) treated!50))))

(declare-fun b!767987 () Bool)

(declare-fun e!494022 () Bool)

(assert (=> b!767987 (= e!494022 (= (list!3419 (_2!5650 lt!313190)) (list!3419 treated!50)))))

(declare-fun b!767988 () Bool)

(declare-fun e!494024 () Bool)

(assert (=> b!767988 (= e!494022 e!494024)))

(declare-fun res!337293 () Bool)

(declare-fun size!6895 (BalanceConc!5742) Int)

(assert (=> b!767988 (= res!337293 (< (size!6895 (_2!5650 lt!313190)) (size!6895 treated!50)))))

(assert (=> b!767988 (=> (not res!337293) (not e!494024))))

(declare-fun b!767989 () Bool)

(declare-fun isEmpty!5199 (BalanceConc!5744) Bool)

(assert (=> b!767989 (= e!494024 (not (isEmpty!5199 (_1!5650 lt!313190))))))

(declare-fun b!767990 () Bool)

(declare-fun lt!313191 () tuple2!9814)

(declare-fun lt!313192 () Option!1868)

(declare-fun prepend!332 (BalanceConc!5744 Token!2938) BalanceConc!5744)

(assert (=> b!767990 (= e!494025 (tuple2!9815 (prepend!332 (_1!5650 lt!313191) (_1!5651 (v!18604 lt!313192))) (_2!5650 lt!313191)))))

(assert (=> b!767990 (= lt!313191 (lexRec!249 thiss!12529 rules!1486 (_2!5651 (v!18604 lt!313192))))))

(declare-fun d!251333 () Bool)

(assert (=> d!251333 e!494023))

(declare-fun res!337294 () Bool)

(assert (=> d!251333 (=> (not res!337294) (not e!494023))))

(assert (=> d!251333 (= res!337294 e!494022)))

(declare-fun c!130184 () Bool)

(declare-fun size!6896 (BalanceConc!5744) Int)

(assert (=> d!251333 (= c!130184 (> (size!6896 (_1!5650 lt!313190)) 0))))

(assert (=> d!251333 (= lt!313190 e!494025)))

(declare-fun c!130183 () Bool)

(assert (=> d!251333 (= c!130183 ((_ is Some!1867) lt!313192))))

(declare-fun maxPrefixZipperSequence!522 (LexerInterface!1422 List!8474 BalanceConc!5742) Option!1868)

(assert (=> d!251333 (= lt!313192 (maxPrefixZipperSequence!522 thiss!12529 rules!1486 treated!50))))

(assert (=> d!251333 (= (lexRec!249 thiss!12529 rules!1486 treated!50) lt!313190)))

(assert (= (and d!251333 c!130183) b!767990))

(assert (= (and d!251333 (not c!130183)) b!767986))

(assert (= (and d!251333 c!130184) b!767988))

(assert (= (and d!251333 (not c!130184)) b!767987))

(assert (= (and b!767988 res!337293) b!767989))

(assert (= (and d!251333 res!337294) b!767985))

(assert (= (and b!767985 res!337295) b!767984))

(declare-fun m!1037709 () Bool)

(assert (=> b!767989 m!1037709))

(declare-fun m!1037711 () Bool)

(assert (=> b!767988 m!1037711))

(declare-fun m!1037713 () Bool)

(assert (=> b!767988 m!1037713))

(declare-fun m!1037715 () Bool)

(assert (=> b!767987 m!1037715))

(assert (=> b!767987 m!1037643))

(declare-fun m!1037717 () Bool)

(assert (=> b!767985 m!1037717))

(assert (=> b!767985 m!1037643))

(assert (=> b!767985 m!1037643))

(declare-fun m!1037719 () Bool)

(assert (=> b!767985 m!1037719))

(assert (=> b!767984 m!1037715))

(assert (=> b!767984 m!1037643))

(assert (=> b!767984 m!1037643))

(assert (=> b!767984 m!1037719))

(declare-fun m!1037721 () Bool)

(assert (=> b!767990 m!1037721))

(declare-fun m!1037723 () Bool)

(assert (=> b!767990 m!1037723))

(declare-fun m!1037725 () Bool)

(assert (=> d!251333 m!1037725))

(declare-fun m!1037727 () Bool)

(assert (=> d!251333 m!1037727))

(assert (=> b!767927 d!251333))

(declare-fun d!251335 () Bool)

(declare-fun e!494028 () Bool)

(assert (=> d!251335 e!494028))

(declare-fun res!337298 () Bool)

(assert (=> d!251335 (=> res!337298 e!494028)))

(declare-fun lt!313195 () Bool)

(assert (=> d!251335 (= res!337298 (not lt!313195))))

(declare-fun drop!391 (List!8468 Int) List!8468)

(assert (=> d!251335 (= lt!313195 (= lt!313150 (drop!391 lt!313153 (- (size!6894 lt!313153) (size!6894 lt!313150)))))))

(assert (=> d!251335 (= (isSuffix!205 lt!313150 lt!313153) lt!313195)))

(declare-fun b!767993 () Bool)

(assert (=> b!767993 (= e!494028 (>= (size!6894 lt!313153) (size!6894 lt!313150)))))

(assert (= (and d!251335 (not res!337298)) b!767993))

(declare-fun m!1037729 () Bool)

(assert (=> d!251335 m!1037729))

(assert (=> d!251335 m!1037683))

(declare-fun m!1037731 () Bool)

(assert (=> d!251335 m!1037731))

(assert (=> b!767993 m!1037729))

(assert (=> b!767993 m!1037683))

(assert (=> b!767920 d!251335))

(declare-fun d!251337 () Bool)

(declare-fun e!494029 () Bool)

(assert (=> d!251337 e!494029))

(declare-fun res!337299 () Bool)

(assert (=> d!251337 (=> res!337299 e!494029)))

(declare-fun lt!313196 () Bool)

(assert (=> d!251337 (= res!337299 (not lt!313196))))

(assert (=> d!251337 (= lt!313196 (= lt!313150 (drop!391 lt!313148 (- (size!6894 lt!313148) (size!6894 lt!313150)))))))

(assert (=> d!251337 (= (isSuffix!205 lt!313150 lt!313148) lt!313196)))

(declare-fun b!767994 () Bool)

(assert (=> b!767994 (= e!494029 (>= (size!6894 lt!313148) (size!6894 lt!313150)))))

(assert (= (and d!251337 (not res!337299)) b!767994))

(declare-fun m!1037733 () Bool)

(assert (=> d!251337 m!1037733))

(assert (=> d!251337 m!1037683))

(declare-fun m!1037735 () Bool)

(assert (=> d!251337 m!1037735))

(assert (=> b!767994 m!1037733))

(assert (=> b!767994 m!1037683))

(assert (=> b!767920 d!251337))

(declare-fun d!251339 () Bool)

(assert (=> d!251339 (isSuffix!205 lt!313150 (++!2228 lt!313143 lt!313150))))

(declare-fun lt!313199 () Unit!13073)

(declare-fun choose!4872 (List!8468 List!8468) Unit!13073)

(assert (=> d!251339 (= lt!313199 (choose!4872 lt!313143 lt!313150))))

(assert (=> d!251339 (= (lemmaConcatTwoListThenFSndIsSuffix!205 lt!313143 lt!313150) lt!313199)))

(declare-fun bs!165891 () Bool)

(assert (= bs!165891 d!251339))

(assert (=> bs!165891 m!1037637))

(assert (=> bs!165891 m!1037637))

(declare-fun m!1037737 () Bool)

(assert (=> bs!165891 m!1037737))

(declare-fun m!1037739 () Bool)

(assert (=> bs!165891 m!1037739))

(assert (=> b!767920 d!251339))

(declare-fun d!251341 () Bool)

(declare-fun e!494038 () Bool)

(assert (=> d!251341 e!494038))

(declare-fun res!337302 () Bool)

(assert (=> d!251341 (=> (not res!337302) (not e!494038))))

(declare-fun lt!313290 () tuple2!9814)

(assert (=> d!251341 (= res!337302 (= (list!3418 (_1!5650 lt!313290)) (list!3418 (_1!5650 (lexRec!249 thiss!12529 rules!1486 totalInput!378)))))))

(declare-fun e!494041 () tuple2!9814)

(assert (=> d!251341 (= lt!313290 e!494041)))

(declare-fun c!130191 () Bool)

(declare-fun lt!313270 () Option!1868)

(assert (=> d!251341 (= c!130191 ((_ is Some!1867) lt!313270))))

(assert (=> d!251341 (= lt!313270 (maxPrefixZipperSequenceV2!193 thiss!12529 rules!1486 input!870 totalInput!378))))

(declare-fun lt!313283 () Unit!13073)

(declare-fun lt!313288 () Unit!13073)

(assert (=> d!251341 (= lt!313283 lt!313288)))

(declare-fun lt!313272 () List!8468)

(declare-fun lt!313274 () List!8468)

(assert (=> d!251341 (isSuffix!205 lt!313272 (++!2228 lt!313274 lt!313272))))

(assert (=> d!251341 (= lt!313288 (lemmaConcatTwoListThenFSndIsSuffix!205 lt!313274 lt!313272))))

(assert (=> d!251341 (= lt!313272 (list!3419 input!870))))

(assert (=> d!251341 (= lt!313274 (list!3419 treated!50))))

(assert (=> d!251341 (= (lexTailRecV2!283 thiss!12529 rules!1486 totalInput!378 treated!50 input!870 acc!372) lt!313290)))

(declare-fun lt!313271 () tuple2!9814)

(declare-fun b!768009 () Bool)

(declare-fun lt!313297 () Option!1868)

(assert (=> b!768009 (= lt!313271 (lexRec!249 thiss!12529 rules!1486 (_2!5651 (v!18604 lt!313297))))))

(declare-fun e!494039 () tuple2!9814)

(assert (=> b!768009 (= e!494039 (tuple2!9815 (prepend!332 (_1!5650 lt!313271) (_1!5651 (v!18604 lt!313297))) (_2!5650 lt!313271)))))

(declare-fun b!768010 () Bool)

(declare-fun lt!313294 () BalanceConc!5742)

(declare-fun append!328 (BalanceConc!5744 Token!2938) BalanceConc!5744)

(assert (=> b!768010 (= e!494041 (lexTailRecV2!283 thiss!12529 rules!1486 totalInput!378 lt!313294 (_2!5651 (v!18604 lt!313270)) (append!328 acc!372 (_1!5651 (v!18604 lt!313270)))))))

(declare-fun lt!313295 () tuple2!9814)

(assert (=> b!768010 (= lt!313295 (lexRec!249 thiss!12529 rules!1486 (_2!5651 (v!18604 lt!313270))))))

(declare-fun lt!313301 () List!8468)

(assert (=> b!768010 (= lt!313301 (list!3419 treated!50))))

(declare-fun lt!313298 () List!8468)

(declare-fun charsOf!959 (Token!2938) BalanceConc!5742)

(assert (=> b!768010 (= lt!313298 (list!3419 (charsOf!959 (_1!5651 (v!18604 lt!313270)))))))

(declare-fun lt!313282 () List!8468)

(assert (=> b!768010 (= lt!313282 (list!3419 (_2!5651 (v!18604 lt!313270))))))

(declare-fun lt!313293 () Unit!13073)

(declare-fun lemmaConcatAssociativity!709 (List!8468 List!8468 List!8468) Unit!13073)

(assert (=> b!768010 (= lt!313293 (lemmaConcatAssociativity!709 lt!313301 lt!313298 lt!313282))))

(assert (=> b!768010 (= (++!2228 (++!2228 lt!313301 lt!313298) lt!313282) (++!2228 lt!313301 (++!2228 lt!313298 lt!313282)))))

(declare-fun lt!313286 () Unit!13073)

(assert (=> b!768010 (= lt!313286 lt!313293)))

(declare-fun lt!313277 () Option!1868)

(assert (=> b!768010 (= lt!313277 (maxPrefixZipperSequence!522 thiss!12529 rules!1486 input!870))))

(declare-fun c!130192 () Bool)

(assert (=> b!768010 (= c!130192 ((_ is Some!1867) lt!313277))))

(declare-fun e!494040 () tuple2!9814)

(assert (=> b!768010 (= (lexRec!249 thiss!12529 rules!1486 input!870) e!494040)))

(declare-fun lt!313275 () Unit!13073)

(declare-fun Unit!13075 () Unit!13073)

(assert (=> b!768010 (= lt!313275 Unit!13075)))

(declare-fun lt!313273 () List!8469)

(assert (=> b!768010 (= lt!313273 (list!3418 acc!372))))

(declare-fun lt!313296 () List!8469)

(assert (=> b!768010 (= lt!313296 (Cons!8455 (_1!5651 (v!18604 lt!313270)) Nil!8455))))

(declare-fun lt!313299 () List!8469)

(assert (=> b!768010 (= lt!313299 (list!3418 (_1!5650 lt!313295)))))

(declare-fun lt!313280 () Unit!13073)

(declare-fun lemmaConcatAssociativity!710 (List!8469 List!8469 List!8469) Unit!13073)

(assert (=> b!768010 (= lt!313280 (lemmaConcatAssociativity!710 lt!313273 lt!313296 lt!313299))))

(declare-fun ++!2229 (List!8469 List!8469) List!8469)

(assert (=> b!768010 (= (++!2229 (++!2229 lt!313273 lt!313296) lt!313299) (++!2229 lt!313273 (++!2229 lt!313296 lt!313299)))))

(declare-fun lt!313300 () Unit!13073)

(assert (=> b!768010 (= lt!313300 lt!313280)))

(declare-fun lt!313276 () List!8468)

(assert (=> b!768010 (= lt!313276 (++!2228 (list!3419 treated!50) (list!3419 (charsOf!959 (_1!5651 (v!18604 lt!313270))))))))

(declare-fun lt!313269 () List!8468)

(assert (=> b!768010 (= lt!313269 (list!3419 (_2!5651 (v!18604 lt!313270))))))

(declare-fun lt!313284 () List!8469)

(assert (=> b!768010 (= lt!313284 (list!3418 (append!328 acc!372 (_1!5651 (v!18604 lt!313270)))))))

(declare-fun lt!313292 () Unit!13073)

(declare-fun lemmaLexThenLexPrefix!150 (LexerInterface!1422 List!8474 List!8468 List!8468 List!8469 List!8469 List!8468) Unit!13073)

(assert (=> b!768010 (= lt!313292 (lemmaLexThenLexPrefix!150 thiss!12529 rules!1486 lt!313276 lt!313269 lt!313284 (list!3418 (_1!5650 lt!313295)) (list!3419 (_2!5650 lt!313295))))))

(assert (=> b!768010 (= (lexList!376 thiss!12529 rules!1486 lt!313276) (tuple2!9819 lt!313284 Nil!8454))))

(declare-fun lt!313291 () Unit!13073)

(assert (=> b!768010 (= lt!313291 lt!313292)))

(declare-fun lt!313285 () BalanceConc!5742)

(declare-fun ++!2230 (BalanceConc!5742 BalanceConc!5742) BalanceConc!5742)

(assert (=> b!768010 (= lt!313285 (++!2230 treated!50 (charsOf!959 (_1!5651 (v!18604 lt!313270)))))))

(assert (=> b!768010 (= lt!313297 (maxPrefixZipperSequence!522 thiss!12529 rules!1486 lt!313285))))

(declare-fun c!130193 () Bool)

(assert (=> b!768010 (= c!130193 ((_ is Some!1867) lt!313297))))

(assert (=> b!768010 (= (lexRec!249 thiss!12529 rules!1486 (++!2230 treated!50 (charsOf!959 (_1!5651 (v!18604 lt!313270))))) e!494039)))

(declare-fun lt!313281 () Unit!13073)

(declare-fun Unit!13076 () Unit!13073)

(assert (=> b!768010 (= lt!313281 Unit!13076)))

(assert (=> b!768010 (= lt!313294 (++!2230 treated!50 (charsOf!959 (_1!5651 (v!18604 lt!313270)))))))

(declare-fun lt!313268 () List!8468)

(assert (=> b!768010 (= lt!313268 (list!3419 lt!313294))))

(declare-fun lt!313287 () List!8468)

(assert (=> b!768010 (= lt!313287 (list!3419 (_2!5651 (v!18604 lt!313270))))))

(declare-fun lt!313289 () Unit!13073)

(assert (=> b!768010 (= lt!313289 (lemmaConcatTwoListThenFSndIsSuffix!205 lt!313268 lt!313287))))

(assert (=> b!768010 (isSuffix!205 lt!313287 (++!2228 lt!313268 lt!313287))))

(declare-fun lt!313279 () Unit!13073)

(assert (=> b!768010 (= lt!313279 lt!313289)))

(declare-fun b!768011 () Bool)

(assert (=> b!768011 (= e!494038 (= (list!3419 (_2!5650 lt!313290)) (list!3419 (_2!5650 (lexRec!249 thiss!12529 rules!1486 totalInput!378)))))))

(declare-fun b!768012 () Bool)

(assert (=> b!768012 (= e!494040 (tuple2!9815 (BalanceConc!5745 Empty!2866) input!870))))

(declare-fun b!768013 () Bool)

(assert (=> b!768013 (= e!494041 (tuple2!9815 acc!372 input!870))))

(declare-fun b!768014 () Bool)

(assert (=> b!768014 (= e!494039 (tuple2!9815 (BalanceConc!5745 Empty!2866) lt!313285))))

(declare-fun lt!313278 () tuple2!9814)

(declare-fun b!768015 () Bool)

(assert (=> b!768015 (= lt!313278 (lexRec!249 thiss!12529 rules!1486 (_2!5651 (v!18604 lt!313277))))))

(assert (=> b!768015 (= e!494040 (tuple2!9815 (prepend!332 (_1!5650 lt!313278) (_1!5651 (v!18604 lt!313277))) (_2!5650 lt!313278)))))

(assert (= (and d!251341 c!130191) b!768010))

(assert (= (and d!251341 (not c!130191)) b!768013))

(assert (= (and b!768010 c!130192) b!768015))

(assert (= (and b!768010 (not c!130192)) b!768012))

(assert (= (and b!768010 c!130193) b!768009))

(assert (= (and b!768010 (not c!130193)) b!768014))

(assert (= (and d!251341 res!337302) b!768011))

(declare-fun m!1037741 () Bool)

(assert (=> b!768015 m!1037741))

(declare-fun m!1037743 () Bool)

(assert (=> b!768015 m!1037743))

(declare-fun m!1037745 () Bool)

(assert (=> b!768011 m!1037745))

(assert (=> b!768011 m!1037569))

(declare-fun m!1037747 () Bool)

(assert (=> b!768011 m!1037747))

(declare-fun m!1037749 () Bool)

(assert (=> b!768009 m!1037749))

(declare-fun m!1037751 () Bool)

(assert (=> b!768009 m!1037751))

(assert (=> b!768010 m!1037643))

(declare-fun m!1037753 () Bool)

(assert (=> b!768010 m!1037753))

(declare-fun m!1037755 () Bool)

(assert (=> b!768010 m!1037755))

(declare-fun m!1037757 () Bool)

(assert (=> b!768010 m!1037757))

(declare-fun m!1037759 () Bool)

(assert (=> b!768010 m!1037759))

(assert (=> b!768010 m!1037759))

(assert (=> b!768010 m!1037753))

(declare-fun m!1037761 () Bool)

(assert (=> b!768010 m!1037761))

(assert (=> b!768010 m!1037643))

(declare-fun m!1037763 () Bool)

(assert (=> b!768010 m!1037763))

(declare-fun m!1037765 () Bool)

(assert (=> b!768010 m!1037765))

(declare-fun m!1037767 () Bool)

(assert (=> b!768010 m!1037767))

(declare-fun m!1037769 () Bool)

(assert (=> b!768010 m!1037769))

(declare-fun m!1037771 () Bool)

(assert (=> b!768010 m!1037771))

(declare-fun m!1037773 () Bool)

(assert (=> b!768010 m!1037773))

(assert (=> b!768010 m!1037763))

(declare-fun m!1037775 () Bool)

(assert (=> b!768010 m!1037775))

(assert (=> b!768010 m!1037563))

(assert (=> b!768010 m!1037649))

(declare-fun m!1037777 () Bool)

(assert (=> b!768010 m!1037777))

(declare-fun m!1037779 () Bool)

(assert (=> b!768010 m!1037779))

(declare-fun m!1037781 () Bool)

(assert (=> b!768010 m!1037781))

(assert (=> b!768010 m!1037759))

(declare-fun m!1037783 () Bool)

(assert (=> b!768010 m!1037783))

(declare-fun m!1037785 () Bool)

(assert (=> b!768010 m!1037785))

(assert (=> b!768010 m!1037769))

(declare-fun m!1037787 () Bool)

(assert (=> b!768010 m!1037787))

(declare-fun m!1037789 () Bool)

(assert (=> b!768010 m!1037789))

(declare-fun m!1037791 () Bool)

(assert (=> b!768010 m!1037791))

(declare-fun m!1037793 () Bool)

(assert (=> b!768010 m!1037793))

(declare-fun m!1037795 () Bool)

(assert (=> b!768010 m!1037795))

(declare-fun m!1037797 () Bool)

(assert (=> b!768010 m!1037797))

(declare-fun m!1037799 () Bool)

(assert (=> b!768010 m!1037799))

(assert (=> b!768010 m!1037797))

(assert (=> b!768010 m!1037771))

(declare-fun m!1037801 () Bool)

(assert (=> b!768010 m!1037801))

(assert (=> b!768010 m!1037801))

(declare-fun m!1037803 () Bool)

(assert (=> b!768010 m!1037803))

(assert (=> b!768010 m!1037791))

(assert (=> b!768010 m!1037757))

(declare-fun m!1037805 () Bool)

(assert (=> b!768010 m!1037805))

(assert (=> b!768010 m!1037783))

(declare-fun m!1037807 () Bool)

(assert (=> b!768010 m!1037807))

(assert (=> b!768010 m!1037791))

(declare-fun m!1037809 () Bool)

(assert (=> b!768010 m!1037809))

(declare-fun m!1037811 () Bool)

(assert (=> b!768010 m!1037811))

(assert (=> b!768010 m!1037787))

(declare-fun m!1037813 () Bool)

(assert (=> d!251341 m!1037813))

(declare-fun m!1037815 () Bool)

(assert (=> d!251341 m!1037815))

(declare-fun m!1037817 () Bool)

(assert (=> d!251341 m!1037817))

(assert (=> d!251341 m!1037643))

(assert (=> d!251341 m!1037667))

(declare-fun m!1037819 () Bool)

(assert (=> d!251341 m!1037819))

(declare-fun m!1037821 () Bool)

(assert (=> d!251341 m!1037821))

(assert (=> d!251341 m!1037641))

(assert (=> d!251341 m!1037569))

(assert (=> d!251341 m!1037813))

(assert (=> b!767921 d!251341))

(declare-fun d!251343 () Bool)

(declare-fun validCacheMapDown!98 (MutableMap!1098) Bool)

(assert (=> d!251343 (= (valid!920 (_3!743 lt!313151)) (validCacheMapDown!98 (cache!1485 (_3!743 lt!313151))))))

(declare-fun bs!165892 () Bool)

(assert (= bs!165892 d!251343))

(declare-fun m!1037823 () Bool)

(assert (=> bs!165892 m!1037823))

(assert (=> b!767902 d!251343))

(declare-fun d!251345 () Bool)

(declare-fun c!130194 () Bool)

(assert (=> d!251345 (= c!130194 ((_ is Node!2865) (c!130167 treated!50)))))

(declare-fun e!494042 () Bool)

(assert (=> d!251345 (= (inv!10773 (c!130167 treated!50)) e!494042)))

(declare-fun b!768016 () Bool)

(assert (=> b!768016 (= e!494042 (inv!10774 (c!130167 treated!50)))))

(declare-fun b!768017 () Bool)

(declare-fun e!494043 () Bool)

(assert (=> b!768017 (= e!494042 e!494043)))

(declare-fun res!337303 () Bool)

(assert (=> b!768017 (= res!337303 (not ((_ is Leaf!4202) (c!130167 treated!50))))))

(assert (=> b!768017 (=> res!337303 e!494043)))

(declare-fun b!768018 () Bool)

(assert (=> b!768018 (= e!494043 (inv!10775 (c!130167 treated!50)))))

(assert (= (and d!251345 c!130194) b!768016))

(assert (= (and d!251345 (not c!130194)) b!768017))

(assert (= (and b!768017 (not res!337303)) b!768018))

(declare-fun m!1037825 () Bool)

(assert (=> b!768016 m!1037825))

(declare-fun m!1037827 () Bool)

(assert (=> b!768018 m!1037827))

(assert (=> b!767903 d!251345))

(declare-fun d!251347 () Bool)

(assert (=> d!251347 (= (inv!10759 (tag!1882 (h!13861 rules!1486))) (= (mod (str.len (value!51845 (tag!1882 (h!13861 rules!1486)))) 2) 0))))

(assert (=> b!767885 d!251347))

(declare-fun d!251349 () Bool)

(declare-fun res!337306 () Bool)

(declare-fun e!494046 () Bool)

(assert (=> d!251349 (=> (not res!337306) (not e!494046))))

(declare-fun semiInverseModEq!608 (Int Int) Bool)

(assert (=> d!251349 (= res!337306 (semiInverseModEq!608 (toChars!2471 (transformation!1620 (h!13861 rules!1486))) (toValue!2612 (transformation!1620 (h!13861 rules!1486)))))))

(assert (=> d!251349 (= (inv!10771 (transformation!1620 (h!13861 rules!1486))) e!494046)))

(declare-fun b!768021 () Bool)

(declare-fun equivClasses!583 (Int Int) Bool)

(assert (=> b!768021 (= e!494046 (equivClasses!583 (toChars!2471 (transformation!1620 (h!13861 rules!1486))) (toValue!2612 (transformation!1620 (h!13861 rules!1486)))))))

(assert (= (and d!251349 res!337306) b!768021))

(declare-fun m!1037829 () Bool)

(assert (=> d!251349 m!1037829))

(declare-fun m!1037831 () Bool)

(assert (=> b!768021 m!1037831))

(assert (=> b!767885 d!251349))

(declare-fun d!251351 () Bool)

(declare-fun c!130195 () Bool)

(assert (=> d!251351 (= c!130195 ((_ is Node!2865) (c!130167 totalInput!378)))))

(declare-fun e!494047 () Bool)

(assert (=> d!251351 (= (inv!10773 (c!130167 totalInput!378)) e!494047)))

(declare-fun b!768022 () Bool)

(assert (=> b!768022 (= e!494047 (inv!10774 (c!130167 totalInput!378)))))

(declare-fun b!768023 () Bool)

(declare-fun e!494048 () Bool)

(assert (=> b!768023 (= e!494047 e!494048)))

(declare-fun res!337307 () Bool)

(assert (=> b!768023 (= res!337307 (not ((_ is Leaf!4202) (c!130167 totalInput!378))))))

(assert (=> b!768023 (=> res!337307 e!494048)))

(declare-fun b!768024 () Bool)

(assert (=> b!768024 (= e!494048 (inv!10775 (c!130167 totalInput!378)))))

(assert (= (and d!251351 c!130195) b!768022))

(assert (= (and d!251351 (not c!130195)) b!768023))

(assert (= (and b!768023 (not res!337307)) b!768024))

(declare-fun m!1037833 () Bool)

(assert (=> b!768022 m!1037833))

(declare-fun m!1037835 () Bool)

(assert (=> b!768024 m!1037835))

(assert (=> b!767896 d!251351))

(declare-fun d!251353 () Bool)

(assert (=> d!251353 (= (valid!920 cacheDown!515) (validCacheMapDown!98 (cache!1485 cacheDown!515)))))

(declare-fun bs!165893 () Bool)

(assert (= bs!165893 d!251353))

(declare-fun m!1037837 () Bool)

(assert (=> bs!165893 m!1037837))

(assert (=> b!767913 d!251353))

(declare-fun d!251355 () Bool)

(assert (=> d!251355 (= (isEmpty!5198 rules!1486) ((_ is Nil!8460) rules!1486))))

(assert (=> b!767916 d!251355))

(declare-fun d!251357 () Bool)

(declare-fun validCacheMapFindLongestMatch!44 (MutableMap!1099 BalanceConc!5742) Bool)

(assert (=> d!251357 (= (valid!922 (_4!267 lt!313151)) (validCacheMapFindLongestMatch!44 (cache!1486 (_4!267 lt!313151)) (totalInput!2099 (_4!267 lt!313151))))))

(declare-fun bs!165894 () Bool)

(assert (= bs!165894 d!251357))

(declare-fun m!1037839 () Bool)

(assert (=> bs!165894 m!1037839))

(assert (=> b!767915 d!251357))

(declare-fun d!251359 () Bool)

(declare-fun c!130196 () Bool)

(assert (=> d!251359 (= c!130196 ((_ is Node!2865) (c!130167 (totalInput!2099 cacheFindLongestMatch!74))))))

(declare-fun e!494049 () Bool)

(assert (=> d!251359 (= (inv!10773 (c!130167 (totalInput!2099 cacheFindLongestMatch!74))) e!494049)))

(declare-fun b!768025 () Bool)

(assert (=> b!768025 (= e!494049 (inv!10774 (c!130167 (totalInput!2099 cacheFindLongestMatch!74))))))

(declare-fun b!768026 () Bool)

(declare-fun e!494050 () Bool)

(assert (=> b!768026 (= e!494049 e!494050)))

(declare-fun res!337308 () Bool)

(assert (=> b!768026 (= res!337308 (not ((_ is Leaf!4202) (c!130167 (totalInput!2099 cacheFindLongestMatch!74)))))))

(assert (=> b!768026 (=> res!337308 e!494050)))

(declare-fun b!768027 () Bool)

(assert (=> b!768027 (= e!494050 (inv!10775 (c!130167 (totalInput!2099 cacheFindLongestMatch!74))))))

(assert (= (and d!251359 c!130196) b!768025))

(assert (= (and d!251359 (not c!130196)) b!768026))

(assert (= (and b!768026 (not res!337308)) b!768027))

(declare-fun m!1037841 () Bool)

(assert (=> b!768025 m!1037841))

(declare-fun m!1037843 () Bool)

(assert (=> b!768027 m!1037843))

(assert (=> b!767917 d!251359))

(declare-fun d!251361 () Bool)

(assert (=> d!251361 (= (list!3418 (++!2227 acc!372 (_1!5650 lt!313147))) (list!3421 (c!130168 (++!2227 acc!372 (_1!5650 lt!313147)))))))

(declare-fun bs!165895 () Bool)

(assert (= bs!165895 d!251361))

(declare-fun m!1037845 () Bool)

(assert (=> bs!165895 m!1037845))

(assert (=> b!767898 d!251361))

(declare-fun lt!313302 () tuple2!9814)

(declare-fun e!494052 () Bool)

(declare-fun b!768028 () Bool)

(assert (=> b!768028 (= e!494052 (= (list!3419 (_2!5650 lt!313302)) (_2!5654 (lexList!376 thiss!12529 rules!1486 (list!3419 input!870)))))))

(declare-fun b!768029 () Bool)

(declare-fun res!337311 () Bool)

(assert (=> b!768029 (=> (not res!337311) (not e!494052))))

(assert (=> b!768029 (= res!337311 (= (list!3418 (_1!5650 lt!313302)) (_1!5654 (lexList!376 thiss!12529 rules!1486 (list!3419 input!870)))))))

(declare-fun b!768030 () Bool)

(declare-fun e!494054 () tuple2!9814)

(assert (=> b!768030 (= e!494054 (tuple2!9815 (BalanceConc!5745 Empty!2866) input!870))))

(declare-fun b!768031 () Bool)

(declare-fun e!494051 () Bool)

(assert (=> b!768031 (= e!494051 (= (list!3419 (_2!5650 lt!313302)) (list!3419 input!870)))))

(declare-fun b!768032 () Bool)

(declare-fun e!494053 () Bool)

(assert (=> b!768032 (= e!494051 e!494053)))

(declare-fun res!337309 () Bool)

(assert (=> b!768032 (= res!337309 (< (size!6895 (_2!5650 lt!313302)) (size!6895 input!870)))))

(assert (=> b!768032 (=> (not res!337309) (not e!494053))))

(declare-fun b!768033 () Bool)

(assert (=> b!768033 (= e!494053 (not (isEmpty!5199 (_1!5650 lt!313302))))))

(declare-fun b!768034 () Bool)

(declare-fun lt!313303 () tuple2!9814)

(declare-fun lt!313304 () Option!1868)

(assert (=> b!768034 (= e!494054 (tuple2!9815 (prepend!332 (_1!5650 lt!313303) (_1!5651 (v!18604 lt!313304))) (_2!5650 lt!313303)))))

(assert (=> b!768034 (= lt!313303 (lexRec!249 thiss!12529 rules!1486 (_2!5651 (v!18604 lt!313304))))))

(declare-fun d!251363 () Bool)

(assert (=> d!251363 e!494052))

(declare-fun res!337310 () Bool)

(assert (=> d!251363 (=> (not res!337310) (not e!494052))))

(assert (=> d!251363 (= res!337310 e!494051)))

(declare-fun c!130198 () Bool)

(assert (=> d!251363 (= c!130198 (> (size!6896 (_1!5650 lt!313302)) 0))))

(assert (=> d!251363 (= lt!313302 e!494054)))

(declare-fun c!130197 () Bool)

(assert (=> d!251363 (= c!130197 ((_ is Some!1867) lt!313304))))

(assert (=> d!251363 (= lt!313304 (maxPrefixZipperSequence!522 thiss!12529 rules!1486 input!870))))

(assert (=> d!251363 (= (lexRec!249 thiss!12529 rules!1486 input!870) lt!313302)))

(assert (= (and d!251363 c!130197) b!768034))

(assert (= (and d!251363 (not c!130197)) b!768030))

(assert (= (and d!251363 c!130198) b!768032))

(assert (= (and d!251363 (not c!130198)) b!768031))

(assert (= (and b!768032 res!337309) b!768033))

(assert (= (and d!251363 res!337310) b!768029))

(assert (= (and b!768029 res!337311) b!768028))

(declare-fun m!1037847 () Bool)

(assert (=> b!768033 m!1037847))

(declare-fun m!1037849 () Bool)

(assert (=> b!768032 m!1037849))

(declare-fun m!1037851 () Bool)

(assert (=> b!768032 m!1037851))

(declare-fun m!1037853 () Bool)

(assert (=> b!768031 m!1037853))

(assert (=> b!768031 m!1037641))

(declare-fun m!1037855 () Bool)

(assert (=> b!768029 m!1037855))

(assert (=> b!768029 m!1037641))

(assert (=> b!768029 m!1037641))

(declare-fun m!1037857 () Bool)

(assert (=> b!768029 m!1037857))

(assert (=> b!768028 m!1037853))

(assert (=> b!768028 m!1037641))

(assert (=> b!768028 m!1037641))

(assert (=> b!768028 m!1037857))

(declare-fun m!1037859 () Bool)

(assert (=> b!768034 m!1037859))

(declare-fun m!1037861 () Bool)

(assert (=> b!768034 m!1037861))

(declare-fun m!1037863 () Bool)

(assert (=> d!251363 m!1037863))

(assert (=> d!251363 m!1037811))

(assert (=> b!767898 d!251363))

(declare-fun lt!313305 () tuple2!9814)

(declare-fun b!768035 () Bool)

(declare-fun e!494056 () Bool)

(assert (=> b!768035 (= e!494056 (= (list!3419 (_2!5650 lt!313305)) (_2!5654 (lexList!376 thiss!12529 rules!1486 (list!3419 totalInput!378)))))))

(declare-fun b!768036 () Bool)

(declare-fun res!337314 () Bool)

(assert (=> b!768036 (=> (not res!337314) (not e!494056))))

(assert (=> b!768036 (= res!337314 (= (list!3418 (_1!5650 lt!313305)) (_1!5654 (lexList!376 thiss!12529 rules!1486 (list!3419 totalInput!378)))))))

(declare-fun b!768037 () Bool)

(declare-fun e!494058 () tuple2!9814)

(assert (=> b!768037 (= e!494058 (tuple2!9815 (BalanceConc!5745 Empty!2866) totalInput!378))))

(declare-fun b!768038 () Bool)

(declare-fun e!494055 () Bool)

(assert (=> b!768038 (= e!494055 (= (list!3419 (_2!5650 lt!313305)) (list!3419 totalInput!378)))))

(declare-fun b!768039 () Bool)

(declare-fun e!494057 () Bool)

(assert (=> b!768039 (= e!494055 e!494057)))

(declare-fun res!337312 () Bool)

(assert (=> b!768039 (= res!337312 (< (size!6895 (_2!5650 lt!313305)) (size!6895 totalInput!378)))))

(assert (=> b!768039 (=> (not res!337312) (not e!494057))))

(declare-fun b!768040 () Bool)

(assert (=> b!768040 (= e!494057 (not (isEmpty!5199 (_1!5650 lt!313305))))))

(declare-fun b!768041 () Bool)

(declare-fun lt!313306 () tuple2!9814)

(declare-fun lt!313307 () Option!1868)

(assert (=> b!768041 (= e!494058 (tuple2!9815 (prepend!332 (_1!5650 lt!313306) (_1!5651 (v!18604 lt!313307))) (_2!5650 lt!313306)))))

(assert (=> b!768041 (= lt!313306 (lexRec!249 thiss!12529 rules!1486 (_2!5651 (v!18604 lt!313307))))))

(declare-fun d!251365 () Bool)

(assert (=> d!251365 e!494056))

(declare-fun res!337313 () Bool)

(assert (=> d!251365 (=> (not res!337313) (not e!494056))))

(assert (=> d!251365 (= res!337313 e!494055)))

(declare-fun c!130200 () Bool)

(assert (=> d!251365 (= c!130200 (> (size!6896 (_1!5650 lt!313305)) 0))))

(assert (=> d!251365 (= lt!313305 e!494058)))

(declare-fun c!130199 () Bool)

(assert (=> d!251365 (= c!130199 ((_ is Some!1867) lt!313307))))

(assert (=> d!251365 (= lt!313307 (maxPrefixZipperSequence!522 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!251365 (= (lexRec!249 thiss!12529 rules!1486 totalInput!378) lt!313305)))

(assert (= (and d!251365 c!130199) b!768041))

(assert (= (and d!251365 (not c!130199)) b!768037))

(assert (= (and d!251365 c!130200) b!768039))

(assert (= (and d!251365 (not c!130200)) b!768038))

(assert (= (and b!768039 res!337312) b!768040))

(assert (= (and d!251365 res!337313) b!768036))

(assert (= (and b!768036 res!337314) b!768035))

(declare-fun m!1037865 () Bool)

(assert (=> b!768040 m!1037865))

(declare-fun m!1037867 () Bool)

(assert (=> b!768039 m!1037867))

(declare-fun m!1037869 () Bool)

(assert (=> b!768039 m!1037869))

(declare-fun m!1037871 () Bool)

(assert (=> b!768038 m!1037871))

(assert (=> b!768038 m!1037639))

(declare-fun m!1037873 () Bool)

(assert (=> b!768036 m!1037873))

(assert (=> b!768036 m!1037639))

(assert (=> b!768036 m!1037639))

(declare-fun m!1037875 () Bool)

(assert (=> b!768036 m!1037875))

(assert (=> b!768035 m!1037871))

(assert (=> b!768035 m!1037639))

(assert (=> b!768035 m!1037639))

(assert (=> b!768035 m!1037875))

(declare-fun m!1037877 () Bool)

(assert (=> b!768041 m!1037877))

(declare-fun m!1037879 () Bool)

(assert (=> b!768041 m!1037879))

(declare-fun m!1037881 () Bool)

(assert (=> d!251365 m!1037881))

(declare-fun m!1037883 () Bool)

(assert (=> d!251365 m!1037883))

(assert (=> b!767898 d!251365))

(declare-fun d!251367 () Bool)

(assert (=> d!251367 (= (list!3418 (_1!5650 lt!313149)) (list!3421 (c!130168 (_1!5650 lt!313149))))))

(declare-fun bs!165896 () Bool)

(assert (= bs!165896 d!251367))

(declare-fun m!1037885 () Bool)

(assert (=> bs!165896 m!1037885))

(assert (=> b!767898 d!251367))

(declare-fun b!768052 () Bool)

(declare-fun res!337325 () Bool)

(declare-fun e!494061 () Bool)

(assert (=> b!768052 (=> (not res!337325) (not e!494061))))

(declare-fun height!379 (Conc!2866) Int)

(declare-fun ++!2231 (Conc!2866 Conc!2866) Conc!2866)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!768052 (= res!337325 (>= (height!379 (++!2231 (c!130168 acc!372) (c!130168 (_1!5650 lt!313147)))) (max!0 (height!379 (c!130168 acc!372)) (height!379 (c!130168 (_1!5650 lt!313147))))))))

(declare-fun d!251369 () Bool)

(assert (=> d!251369 e!494061))

(declare-fun res!337326 () Bool)

(assert (=> d!251369 (=> (not res!337326) (not e!494061))))

(declare-fun appendAssocInst!182 (Conc!2866 Conc!2866) Bool)

(assert (=> d!251369 (= res!337326 (appendAssocInst!182 (c!130168 acc!372) (c!130168 (_1!5650 lt!313147))))))

(declare-fun lt!313310 () BalanceConc!5744)

(assert (=> d!251369 (= lt!313310 (BalanceConc!5745 (++!2231 (c!130168 acc!372) (c!130168 (_1!5650 lt!313147)))))))

(assert (=> d!251369 (= (++!2227 acc!372 (_1!5650 lt!313147)) lt!313310)))

(declare-fun b!768053 () Bool)

(assert (=> b!768053 (= e!494061 (= (list!3418 lt!313310) (++!2229 (list!3418 acc!372) (list!3418 (_1!5650 lt!313147)))))))

(declare-fun b!768051 () Bool)

(declare-fun res!337323 () Bool)

(assert (=> b!768051 (=> (not res!337323) (not e!494061))))

(assert (=> b!768051 (= res!337323 (<= (height!379 (++!2231 (c!130168 acc!372) (c!130168 (_1!5650 lt!313147)))) (+ (max!0 (height!379 (c!130168 acc!372)) (height!379 (c!130168 (_1!5650 lt!313147)))) 1)))))

(declare-fun b!768050 () Bool)

(declare-fun res!337324 () Bool)

(assert (=> b!768050 (=> (not res!337324) (not e!494061))))

(declare-fun isBalanced!771 (Conc!2866) Bool)

(assert (=> b!768050 (= res!337324 (isBalanced!771 (++!2231 (c!130168 acc!372) (c!130168 (_1!5650 lt!313147)))))))

(assert (= (and d!251369 res!337326) b!768050))

(assert (= (and b!768050 res!337324) b!768051))

(assert (= (and b!768051 res!337323) b!768052))

(assert (= (and b!768052 res!337325) b!768053))

(declare-fun m!1037887 () Bool)

(assert (=> d!251369 m!1037887))

(declare-fun m!1037889 () Bool)

(assert (=> d!251369 m!1037889))

(declare-fun m!1037891 () Bool)

(assert (=> b!768053 m!1037891))

(assert (=> b!768053 m!1037649))

(declare-fun m!1037893 () Bool)

(assert (=> b!768053 m!1037893))

(assert (=> b!768053 m!1037649))

(assert (=> b!768053 m!1037893))

(declare-fun m!1037895 () Bool)

(assert (=> b!768053 m!1037895))

(assert (=> b!768050 m!1037889))

(assert (=> b!768050 m!1037889))

(declare-fun m!1037897 () Bool)

(assert (=> b!768050 m!1037897))

(assert (=> b!768051 m!1037889))

(declare-fun m!1037899 () Bool)

(assert (=> b!768051 m!1037899))

(declare-fun m!1037901 () Bool)

(assert (=> b!768051 m!1037901))

(declare-fun m!1037903 () Bool)

(assert (=> b!768051 m!1037903))

(assert (=> b!768051 m!1037899))

(assert (=> b!768051 m!1037901))

(assert (=> b!768051 m!1037889))

(declare-fun m!1037905 () Bool)

(assert (=> b!768051 m!1037905))

(assert (=> b!768052 m!1037889))

(assert (=> b!768052 m!1037899))

(assert (=> b!768052 m!1037901))

(assert (=> b!768052 m!1037903))

(assert (=> b!768052 m!1037899))

(assert (=> b!768052 m!1037901))

(assert (=> b!768052 m!1037889))

(assert (=> b!768052 m!1037905))

(assert (=> b!767898 d!251369))

(declare-fun d!251371 () Bool)

(assert (=> d!251371 (= (array_inv!1295 (_keys!1419 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) (bvsge (size!6890 (_keys!1419 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!767929 d!251371))

(declare-fun d!251373 () Bool)

(assert (=> d!251373 (= (array_inv!1298 (_values!1404 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) (bvsge (size!6891 (_values!1404 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!767929 d!251373))

(declare-fun d!251375 () Bool)

(declare-fun c!130206 () Bool)

(assert (=> d!251375 (= c!130206 ((_ is Node!2866) (c!130168 acc!372)))))

(declare-fun e!494066 () Bool)

(assert (=> d!251375 (= (inv!10772 (c!130168 acc!372)) e!494066)))

(declare-fun b!768060 () Bool)

(declare-fun inv!10776 (Conc!2866) Bool)

(assert (=> b!768060 (= e!494066 (inv!10776 (c!130168 acc!372)))))

(declare-fun b!768061 () Bool)

(declare-fun e!494067 () Bool)

(assert (=> b!768061 (= e!494066 e!494067)))

(declare-fun res!337329 () Bool)

(assert (=> b!768061 (= res!337329 (not ((_ is Leaf!4203) (c!130168 acc!372))))))

(assert (=> b!768061 (=> res!337329 e!494067)))

(declare-fun b!768062 () Bool)

(declare-fun inv!10777 (Conc!2866) Bool)

(assert (=> b!768062 (= e!494067 (inv!10777 (c!130168 acc!372)))))

(assert (= (and d!251375 c!130206) b!768060))

(assert (= (and d!251375 (not c!130206)) b!768061))

(assert (= (and b!768061 (not res!337329)) b!768062))

(declare-fun m!1037907 () Bool)

(assert (=> b!768060 m!1037907))

(declare-fun m!1037909 () Bool)

(assert (=> b!768062 m!1037909))

(assert (=> b!767892 d!251375))

(declare-fun d!251377 () Bool)

(assert (=> d!251377 (= (valid!922 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!44 (cache!1486 cacheFindLongestMatch!74) (totalInput!2099 cacheFindLongestMatch!74)))))

(declare-fun bs!165897 () Bool)

(assert (= bs!165897 d!251377))

(declare-fun m!1037911 () Bool)

(assert (=> bs!165897 m!1037911))

(assert (=> b!767908 d!251377))

(declare-fun d!251379 () Bool)

(assert (=> d!251379 (= (array_inv!1295 (_keys!1420 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) (bvsge (size!6890 (_keys!1420 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!767894 d!251379))

(declare-fun d!251381 () Bool)

(assert (=> d!251381 (= (array_inv!1296 (_values!1405 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) (bvsge (size!6892 (_values!1405 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!767894 d!251381))

(declare-fun d!251383 () Bool)

(declare-fun res!337332 () Bool)

(declare-fun e!494070 () Bool)

(assert (=> d!251383 (=> (not res!337332) (not e!494070))))

(assert (=> d!251383 (= res!337332 ((_ is HashMap!1099) (cache!1486 cacheFindLongestMatch!74)))))

(assert (=> d!251383 (= (inv!10770 cacheFindLongestMatch!74) e!494070)))

(declare-fun b!768065 () Bool)

(assert (=> b!768065 (= e!494070 (validCacheMapFindLongestMatch!44 (cache!1486 cacheFindLongestMatch!74) (totalInput!2099 cacheFindLongestMatch!74)))))

(assert (= (and d!251383 res!337332) b!768065))

(assert (=> b!768065 m!1037911))

(assert (=> start!71222 d!251383))

(declare-fun d!251385 () Bool)

(assert (=> d!251385 (= (inv!10766 acc!372) (isBalanced!771 (c!130168 acc!372)))))

(declare-fun bs!165898 () Bool)

(assert (= bs!165898 d!251385))

(declare-fun m!1037913 () Bool)

(assert (=> bs!165898 m!1037913))

(assert (=> start!71222 d!251385))

(declare-fun d!251387 () Bool)

(assert (=> d!251387 (= (inv!10767 input!870) (isBalanced!770 (c!130167 input!870)))))

(declare-fun bs!165899 () Bool)

(assert (= bs!165899 d!251387))

(declare-fun m!1037915 () Bool)

(assert (=> bs!165899 m!1037915))

(assert (=> start!71222 d!251387))

(declare-fun d!251389 () Bool)

(declare-fun res!337335 () Bool)

(declare-fun e!494073 () Bool)

(assert (=> d!251389 (=> (not res!337335) (not e!494073))))

(assert (=> d!251389 (= res!337335 ((_ is HashMap!1098) (cache!1485 cacheDown!515)))))

(assert (=> d!251389 (= (inv!10769 cacheDown!515) e!494073)))

(declare-fun b!768068 () Bool)

(assert (=> b!768068 (= e!494073 (validCacheMapDown!98 (cache!1485 cacheDown!515)))))

(assert (= (and d!251389 res!337335) b!768068))

(assert (=> b!768068 m!1037837))

(assert (=> start!71222 d!251389))

(declare-fun d!251391 () Bool)

(assert (=> d!251391 (= (inv!10767 treated!50) (isBalanced!770 (c!130167 treated!50)))))

(declare-fun bs!165900 () Bool)

(assert (= bs!165900 d!251391))

(declare-fun m!1037917 () Bool)

(assert (=> bs!165900 m!1037917))

(assert (=> start!71222 d!251391))

(declare-fun d!251393 () Bool)

(declare-fun res!337338 () Bool)

(declare-fun e!494076 () Bool)

(assert (=> d!251393 (=> (not res!337338) (not e!494076))))

(assert (=> d!251393 (= res!337338 ((_ is HashMap!1097) (cache!1484 cacheUp!502)))))

(assert (=> d!251393 (= (inv!10768 cacheUp!502) e!494076)))

(declare-fun b!768071 () Bool)

(assert (=> b!768071 (= e!494076 (validCacheMapUp!98 (cache!1484 cacheUp!502)))))

(assert (= (and d!251393 res!337338) b!768071))

(declare-fun m!1037919 () Bool)

(assert (=> b!768071 m!1037919))

(assert (=> start!71222 d!251393))

(declare-fun d!251395 () Bool)

(assert (=> d!251395 (= (inv!10767 totalInput!378) (isBalanced!770 (c!130167 totalInput!378)))))

(declare-fun bs!165901 () Bool)

(assert (= bs!165901 d!251395))

(declare-fun m!1037921 () Bool)

(assert (=> bs!165901 m!1037921))

(assert (=> start!71222 d!251395))

(declare-fun d!251397 () Bool)

(declare-fun res!337341 () Bool)

(declare-fun e!494079 () Bool)

(assert (=> d!251397 (=> (not res!337341) (not e!494079))))

(declare-fun rulesValid!565 (LexerInterface!1422 List!8474) Bool)

(assert (=> d!251397 (= res!337341 (rulesValid!565 thiss!12529 rules!1486))))

(assert (=> d!251397 (= (rulesInvariant!1327 thiss!12529 rules!1486) e!494079)))

(declare-fun b!768074 () Bool)

(declare-datatypes ((List!8475 0))(
  ( (Nil!8461) (Cons!8461 (h!13862 String!10062) (t!91757 List!8475)) )
))
(declare-fun noDuplicateTag!565 (LexerInterface!1422 List!8474 List!8475) Bool)

(assert (=> b!768074 (= e!494079 (noDuplicateTag!565 thiss!12529 rules!1486 Nil!8461))))

(assert (= (and d!251397 res!337341) b!768074))

(declare-fun m!1037923 () Bool)

(assert (=> d!251397 m!1037923))

(declare-fun m!1037925 () Bool)

(assert (=> b!768074 m!1037925))

(assert (=> b!767893 d!251397))

(declare-fun d!251399 () Bool)

(assert (=> d!251399 (= (valid!921 cacheUp!502) (validCacheMapUp!98 (cache!1484 cacheUp!502)))))

(declare-fun bs!165902 () Bool)

(assert (= bs!165902 d!251399))

(assert (=> bs!165902 m!1037919))

(assert (=> b!767912 d!251399))

(declare-fun d!251401 () Bool)

(assert (=> d!251401 (= (array_inv!1295 (_keys!1421 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) (bvsge (size!6890 (_keys!1421 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!767895 d!251401))

(declare-fun d!251403 () Bool)

(assert (=> d!251403 (= (array_inv!1297 (_values!1406 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) (bvsge (size!6893 (_values!1406 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!767895 d!251403))

(declare-fun e!494084 () Bool)

(declare-fun tp!249914 () Bool)

(declare-fun b!768083 () Bool)

(declare-fun tp!249916 () Bool)

(assert (=> b!768083 (= e!494084 (and (inv!10773 (left!6355 (c!130167 totalInput!378))) tp!249916 (inv!10773 (right!6685 (c!130167 totalInput!378))) tp!249914))))

(declare-fun b!768085 () Bool)

(declare-fun e!494085 () Bool)

(declare-fun tp!249915 () Bool)

(assert (=> b!768085 (= e!494085 tp!249915)))

(declare-fun b!768084 () Bool)

(declare-fun inv!10778 (IArray!5731) Bool)

(assert (=> b!768084 (= e!494084 (and (inv!10778 (xs!5552 (c!130167 totalInput!378))) e!494085))))

(assert (=> b!767896 (= tp!249880 (and (inv!10773 (c!130167 totalInput!378)) e!494084))))

(assert (= (and b!767896 ((_ is Node!2865) (c!130167 totalInput!378))) b!768083))

(assert (= b!768084 b!768085))

(assert (= (and b!767896 ((_ is Leaf!4202) (c!130167 totalInput!378))) b!768084))

(declare-fun m!1037927 () Bool)

(assert (=> b!768083 m!1037927))

(declare-fun m!1037929 () Bool)

(assert (=> b!768083 m!1037929))

(declare-fun m!1037931 () Bool)

(assert (=> b!768084 m!1037931))

(assert (=> b!767896 m!1037623))

(declare-fun mapNonEmpty!5560 () Bool)

(declare-fun mapRes!5560 () Bool)

(declare-fun tp!249948 () Bool)

(declare-fun e!494102 () Bool)

(assert (=> mapNonEmpty!5560 (= mapRes!5560 (and tp!249948 e!494102))))

(declare-fun mapRest!5560 () (Array (_ BitVec 32) List!8472))

(declare-fun mapValue!5560 () List!8472)

(declare-fun mapKey!5560 () (_ BitVec 32))

(assert (=> mapNonEmpty!5560 (= mapRest!5557 (store mapRest!5560 mapKey!5560 mapValue!5560))))

(declare-fun b!768100 () Bool)

(declare-fun e!494099 () Bool)

(declare-fun tp!249947 () Bool)

(assert (=> b!768100 (= e!494099 tp!249947)))

(declare-fun condMapEmpty!5560 () Bool)

(declare-fun mapDefault!5560 () List!8472)

(assert (=> mapNonEmpty!5556 (= condMapEmpty!5560 (= mapRest!5557 ((as const (Array (_ BitVec 32) List!8472)) mapDefault!5560)))))

(declare-fun e!494098 () Bool)

(assert (=> mapNonEmpty!5556 (= tp!249879 (and e!494098 mapRes!5560))))

(declare-fun tp!249940 () Bool)

(declare-fun b!768101 () Bool)

(declare-fun setRes!6870 () Bool)

(declare-fun tp!249939 () Bool)

(declare-fun tp_is_empty!3721 () Bool)

(declare-fun inv!10779 (Context!738) Bool)

(assert (=> b!768101 (= e!494102 (and tp!249939 (inv!10779 (_2!5646 (_1!5647 (h!13859 mapValue!5560)))) e!494099 tp_is_empty!3721 setRes!6870 tp!249940))))

(declare-fun condSetEmpty!6870 () Bool)

(assert (=> b!768101 (= condSetEmpty!6870 (= (_2!5647 (h!13859 mapValue!5560)) ((as const (Array Context!738 Bool)) false)))))

(declare-fun setElem!6869 () Context!738)

(declare-fun setNonEmpty!6869 () Bool)

(declare-fun e!494103 () Bool)

(declare-fun tp!249943 () Bool)

(assert (=> setNonEmpty!6869 (= setRes!6870 (and tp!249943 (inv!10779 setElem!6869) e!494103))))

(declare-fun setRest!6869 () (InoxSet Context!738))

(assert (=> setNonEmpty!6869 (= (_2!5647 (h!13859 mapValue!5560)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6869 true) setRest!6869))))

(declare-fun b!768102 () Bool)

(declare-fun tp!249944 () Bool)

(assert (=> b!768102 (= e!494103 tp!249944)))

(declare-fun e!494100 () Bool)

(declare-fun setRes!6869 () Bool)

(declare-fun setNonEmpty!6870 () Bool)

(declare-fun setElem!6870 () Context!738)

(declare-fun tp!249945 () Bool)

(assert (=> setNonEmpty!6870 (= setRes!6869 (and tp!249945 (inv!10779 setElem!6870) e!494100))))

(declare-fun setRest!6870 () (InoxSet Context!738))

(assert (=> setNonEmpty!6870 (= (_2!5647 (h!13859 mapDefault!5560)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6870 true) setRest!6870))))

(declare-fun mapIsEmpty!5560 () Bool)

(assert (=> mapIsEmpty!5560 mapRes!5560))

(declare-fun setIsEmpty!6869 () Bool)

(assert (=> setIsEmpty!6869 setRes!6870))

(declare-fun tp!249941 () Bool)

(declare-fun tp!249949 () Bool)

(declare-fun b!768103 () Bool)

(declare-fun e!494101 () Bool)

(assert (=> b!768103 (= e!494098 (and tp!249949 (inv!10779 (_2!5646 (_1!5647 (h!13859 mapDefault!5560)))) e!494101 tp_is_empty!3721 setRes!6869 tp!249941))))

(declare-fun condSetEmpty!6869 () Bool)

(assert (=> b!768103 (= condSetEmpty!6869 (= (_2!5647 (h!13859 mapDefault!5560)) ((as const (Array Context!738 Bool)) false)))))

(declare-fun b!768104 () Bool)

(declare-fun tp!249942 () Bool)

(assert (=> b!768104 (= e!494100 tp!249942)))

(declare-fun setIsEmpty!6870 () Bool)

(assert (=> setIsEmpty!6870 setRes!6869))

(declare-fun b!768105 () Bool)

(declare-fun tp!249946 () Bool)

(assert (=> b!768105 (= e!494101 tp!249946)))

(assert (= (and mapNonEmpty!5556 condMapEmpty!5560) mapIsEmpty!5560))

(assert (= (and mapNonEmpty!5556 (not condMapEmpty!5560)) mapNonEmpty!5560))

(assert (= b!768101 b!768100))

(assert (= (and b!768101 condSetEmpty!6870) setIsEmpty!6869))

(assert (= (and b!768101 (not condSetEmpty!6870)) setNonEmpty!6869))

(assert (= setNonEmpty!6869 b!768102))

(assert (= (and mapNonEmpty!5560 ((_ is Cons!8458) mapValue!5560)) b!768101))

(assert (= b!768103 b!768105))

(assert (= (and b!768103 condSetEmpty!6869) setIsEmpty!6870))

(assert (= (and b!768103 (not condSetEmpty!6869)) setNonEmpty!6870))

(assert (= setNonEmpty!6870 b!768104))

(assert (= (and mapNonEmpty!5556 ((_ is Cons!8458) mapDefault!5560)) b!768103))

(declare-fun m!1037933 () Bool)

(assert (=> mapNonEmpty!5560 m!1037933))

(declare-fun m!1037935 () Bool)

(assert (=> b!768101 m!1037935))

(declare-fun m!1037937 () Bool)

(assert (=> setNonEmpty!6870 m!1037937))

(declare-fun m!1037939 () Bool)

(assert (=> setNonEmpty!6869 m!1037939))

(declare-fun m!1037941 () Bool)

(assert (=> b!768103 m!1037941))

(declare-fun setRes!6873 () Bool)

(declare-fun e!494112 () Bool)

(declare-fun e!494111 () Bool)

(declare-fun tp!249962 () Bool)

(declare-fun tp!249961 () Bool)

(declare-fun b!768114 () Bool)

(assert (=> b!768114 (= e!494112 (and tp!249961 (inv!10779 (_2!5646 (_1!5647 (h!13859 mapValue!5556)))) e!494111 tp_is_empty!3721 setRes!6873 tp!249962))))

(declare-fun condSetEmpty!6873 () Bool)

(assert (=> b!768114 (= condSetEmpty!6873 (= (_2!5647 (h!13859 mapValue!5556)) ((as const (Array Context!738 Bool)) false)))))

(assert (=> mapNonEmpty!5556 (= tp!249891 e!494112)))

(declare-fun b!768115 () Bool)

(declare-fun e!494110 () Bool)

(declare-fun tp!249960 () Bool)

(assert (=> b!768115 (= e!494110 tp!249960)))

(declare-fun setIsEmpty!6873 () Bool)

(assert (=> setIsEmpty!6873 setRes!6873))

(declare-fun setElem!6873 () Context!738)

(declare-fun setNonEmpty!6873 () Bool)

(declare-fun tp!249964 () Bool)

(assert (=> setNonEmpty!6873 (= setRes!6873 (and tp!249964 (inv!10779 setElem!6873) e!494110))))

(declare-fun setRest!6873 () (InoxSet Context!738))

(assert (=> setNonEmpty!6873 (= (_2!5647 (h!13859 mapValue!5556)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6873 true) setRest!6873))))

(declare-fun b!768116 () Bool)

(declare-fun tp!249963 () Bool)

(assert (=> b!768116 (= e!494111 tp!249963)))

(assert (= b!768114 b!768116))

(assert (= (and b!768114 condSetEmpty!6873) setIsEmpty!6873))

(assert (= (and b!768114 (not condSetEmpty!6873)) setNonEmpty!6873))

(assert (= setNonEmpty!6873 b!768115))

(assert (= (and mapNonEmpty!5556 ((_ is Cons!8458) mapValue!5556)) b!768114))

(declare-fun m!1037943 () Bool)

(assert (=> b!768114 m!1037943))

(declare-fun m!1037945 () Bool)

(assert (=> setNonEmpty!6873 m!1037945))

(declare-fun b!768131 () Bool)

(declare-fun e!494130 () Bool)

(declare-fun tp!249990 () Bool)

(declare-fun setRes!6879 () Bool)

(declare-fun e!494126 () Bool)

(declare-fun mapValue!5563 () List!8471)

(assert (=> b!768131 (= e!494126 (and (inv!10779 (_1!5644 (_1!5645 (h!13858 mapValue!5563)))) e!494130 tp_is_empty!3721 setRes!6879 tp!249990))))

(declare-fun condSetEmpty!6879 () Bool)

(assert (=> b!768131 (= condSetEmpty!6879 (= (_2!5645 (h!13858 mapValue!5563)) ((as const (Array Context!738 Bool)) false)))))

(declare-fun mapNonEmpty!5563 () Bool)

(declare-fun mapRes!5563 () Bool)

(declare-fun tp!249987 () Bool)

(assert (=> mapNonEmpty!5563 (= mapRes!5563 (and tp!249987 e!494126))))

(declare-fun mapKey!5563 () (_ BitVec 32))

(declare-fun mapRest!5563 () (Array (_ BitVec 32) List!8471))

(assert (=> mapNonEmpty!5563 (= mapRest!5555 (store mapRest!5563 mapKey!5563 mapValue!5563))))

(declare-fun b!768132 () Bool)

(declare-fun mapDefault!5563 () List!8471)

(declare-fun e!494127 () Bool)

(declare-fun setRes!6878 () Bool)

(declare-fun e!494129 () Bool)

(declare-fun tp!249986 () Bool)

(assert (=> b!768132 (= e!494129 (and (inv!10779 (_1!5644 (_1!5645 (h!13858 mapDefault!5563)))) e!494127 tp_is_empty!3721 setRes!6878 tp!249986))))

(declare-fun condSetEmpty!6878 () Bool)

(assert (=> b!768132 (= condSetEmpty!6878 (= (_2!5645 (h!13858 mapDefault!5563)) ((as const (Array Context!738 Bool)) false)))))

(declare-fun b!768133 () Bool)

(declare-fun tp!249984 () Bool)

(assert (=> b!768133 (= e!494130 tp!249984)))

(declare-fun setIsEmpty!6878 () Bool)

(assert (=> setIsEmpty!6878 setRes!6879))

(declare-fun setIsEmpty!6879 () Bool)

(assert (=> setIsEmpty!6879 setRes!6878))

(declare-fun b!768135 () Bool)

(declare-fun tp!249989 () Bool)

(assert (=> b!768135 (= e!494127 tp!249989)))

(declare-fun setElem!6878 () Context!738)

(declare-fun e!494125 () Bool)

(declare-fun tp!249988 () Bool)

(declare-fun setNonEmpty!6878 () Bool)

(assert (=> setNonEmpty!6878 (= setRes!6878 (and tp!249988 (inv!10779 setElem!6878) e!494125))))

(declare-fun setRest!6878 () (InoxSet Context!738))

(assert (=> setNonEmpty!6878 (= (_2!5645 (h!13858 mapDefault!5563)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6878 true) setRest!6878))))

(declare-fun mapIsEmpty!5563 () Bool)

(assert (=> mapIsEmpty!5563 mapRes!5563))

(declare-fun tp!249983 () Bool)

(declare-fun e!494128 () Bool)

(declare-fun setElem!6879 () Context!738)

(declare-fun setNonEmpty!6879 () Bool)

(assert (=> setNonEmpty!6879 (= setRes!6879 (and tp!249983 (inv!10779 setElem!6879) e!494128))))

(declare-fun setRest!6879 () (InoxSet Context!738))

(assert (=> setNonEmpty!6879 (= (_2!5645 (h!13858 mapValue!5563)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6879 true) setRest!6879))))

(declare-fun b!768136 () Bool)

(declare-fun tp!249985 () Bool)

(assert (=> b!768136 (= e!494128 tp!249985)))

(declare-fun condMapEmpty!5563 () Bool)

(assert (=> mapNonEmpty!5555 (= condMapEmpty!5563 (= mapRest!5555 ((as const (Array (_ BitVec 32) List!8471)) mapDefault!5563)))))

(assert (=> mapNonEmpty!5555 (= tp!249892 (and e!494129 mapRes!5563))))

(declare-fun b!768134 () Bool)

(declare-fun tp!249991 () Bool)

(assert (=> b!768134 (= e!494125 tp!249991)))

(assert (= (and mapNonEmpty!5555 condMapEmpty!5563) mapIsEmpty!5563))

(assert (= (and mapNonEmpty!5555 (not condMapEmpty!5563)) mapNonEmpty!5563))

(assert (= b!768131 b!768133))

(assert (= (and b!768131 condSetEmpty!6879) setIsEmpty!6878))

(assert (= (and b!768131 (not condSetEmpty!6879)) setNonEmpty!6879))

(assert (= setNonEmpty!6879 b!768136))

(assert (= (and mapNonEmpty!5563 ((_ is Cons!8457) mapValue!5563)) b!768131))

(assert (= b!768132 b!768135))

(assert (= (and b!768132 condSetEmpty!6878) setIsEmpty!6879))

(assert (= (and b!768132 (not condSetEmpty!6878)) setNonEmpty!6878))

(assert (= setNonEmpty!6878 b!768134))

(assert (= (and mapNonEmpty!5555 ((_ is Cons!8457) mapDefault!5563)) b!768132))

(declare-fun m!1037947 () Bool)

(assert (=> setNonEmpty!6879 m!1037947))

(declare-fun m!1037949 () Bool)

(assert (=> mapNonEmpty!5563 m!1037949))

(declare-fun m!1037951 () Bool)

(assert (=> setNonEmpty!6878 m!1037951))

(declare-fun m!1037953 () Bool)

(assert (=> b!768131 m!1037953))

(declare-fun m!1037955 () Bool)

(assert (=> b!768132 m!1037955))

(declare-fun b!768145 () Bool)

(declare-fun e!494137 () Bool)

(declare-fun tp!250003 () Bool)

(assert (=> b!768145 (= e!494137 tp!250003)))

(declare-fun setRes!6882 () Bool)

(declare-fun e!494139 () Bool)

(declare-fun b!768146 () Bool)

(declare-fun tp!250001 () Bool)

(assert (=> b!768146 (= e!494139 (and (inv!10779 (_1!5644 (_1!5645 (h!13858 mapValue!5555)))) e!494137 tp_is_empty!3721 setRes!6882 tp!250001))))

(declare-fun condSetEmpty!6882 () Bool)

(assert (=> b!768146 (= condSetEmpty!6882 (= (_2!5645 (h!13858 mapValue!5555)) ((as const (Array Context!738 Bool)) false)))))

(declare-fun setIsEmpty!6882 () Bool)

(assert (=> setIsEmpty!6882 setRes!6882))

(assert (=> mapNonEmpty!5555 (= tp!249882 e!494139)))

(declare-fun setNonEmpty!6882 () Bool)

(declare-fun tp!250002 () Bool)

(declare-fun setElem!6882 () Context!738)

(declare-fun e!494138 () Bool)

(assert (=> setNonEmpty!6882 (= setRes!6882 (and tp!250002 (inv!10779 setElem!6882) e!494138))))

(declare-fun setRest!6882 () (InoxSet Context!738))

(assert (=> setNonEmpty!6882 (= (_2!5645 (h!13858 mapValue!5555)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6882 true) setRest!6882))))

(declare-fun b!768147 () Bool)

(declare-fun tp!250000 () Bool)

(assert (=> b!768147 (= e!494138 tp!250000)))

(assert (= b!768146 b!768145))

(assert (= (and b!768146 condSetEmpty!6882) setIsEmpty!6882))

(assert (= (and b!768146 (not condSetEmpty!6882)) setNonEmpty!6882))

(assert (= setNonEmpty!6882 b!768147))

(assert (= (and mapNonEmpty!5555 ((_ is Cons!8457) mapValue!5555)) b!768146))

(declare-fun m!1037957 () Bool)

(assert (=> b!768146 m!1037957))

(declare-fun m!1037959 () Bool)

(assert (=> setNonEmpty!6882 m!1037959))

(declare-fun b!768148 () Bool)

(declare-fun e!494140 () Bool)

(declare-fun tp!250007 () Bool)

(assert (=> b!768148 (= e!494140 tp!250007)))

(declare-fun b!768149 () Bool)

(declare-fun e!494142 () Bool)

(declare-fun setRes!6883 () Bool)

(declare-fun tp!250005 () Bool)

(assert (=> b!768149 (= e!494142 (and (inv!10779 (_1!5644 (_1!5645 (h!13858 mapDefault!5556)))) e!494140 tp_is_empty!3721 setRes!6883 tp!250005))))

(declare-fun condSetEmpty!6883 () Bool)

(assert (=> b!768149 (= condSetEmpty!6883 (= (_2!5645 (h!13858 mapDefault!5556)) ((as const (Array Context!738 Bool)) false)))))

(declare-fun setIsEmpty!6883 () Bool)

(assert (=> setIsEmpty!6883 setRes!6883))

(assert (=> b!767890 (= tp!249901 e!494142)))

(declare-fun tp!250006 () Bool)

(declare-fun setElem!6883 () Context!738)

(declare-fun setNonEmpty!6883 () Bool)

(declare-fun e!494141 () Bool)

(assert (=> setNonEmpty!6883 (= setRes!6883 (and tp!250006 (inv!10779 setElem!6883) e!494141))))

(declare-fun setRest!6883 () (InoxSet Context!738))

(assert (=> setNonEmpty!6883 (= (_2!5645 (h!13858 mapDefault!5556)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6883 true) setRest!6883))))

(declare-fun b!768150 () Bool)

(declare-fun tp!250004 () Bool)

(assert (=> b!768150 (= e!494141 tp!250004)))

(assert (= b!768149 b!768148))

(assert (= (and b!768149 condSetEmpty!6883) setIsEmpty!6883))

(assert (= (and b!768149 (not condSetEmpty!6883)) setNonEmpty!6883))

(assert (= setNonEmpty!6883 b!768150))

(assert (= (and b!767890 ((_ is Cons!8457) mapDefault!5556)) b!768149))

(declare-fun m!1037961 () Bool)

(assert (=> b!768149 m!1037961))

(declare-fun m!1037963 () Bool)

(assert (=> setNonEmpty!6883 m!1037963))

(declare-fun tp!250008 () Bool)

(declare-fun b!768151 () Bool)

(declare-fun tp!250010 () Bool)

(declare-fun e!494143 () Bool)

(assert (=> b!768151 (= e!494143 (and (inv!10773 (left!6355 (c!130167 input!870))) tp!250010 (inv!10773 (right!6685 (c!130167 input!870))) tp!250008))))

(declare-fun b!768153 () Bool)

(declare-fun e!494144 () Bool)

(declare-fun tp!250009 () Bool)

(assert (=> b!768153 (= e!494144 tp!250009)))

(declare-fun b!768152 () Bool)

(assert (=> b!768152 (= e!494143 (and (inv!10778 (xs!5552 (c!130167 input!870))) e!494144))))

(assert (=> b!767926 (= tp!249889 (and (inv!10773 (c!130167 input!870)) e!494143))))

(assert (= (and b!767926 ((_ is Node!2865) (c!130167 input!870))) b!768151))

(assert (= b!768152 b!768153))

(assert (= (and b!767926 ((_ is Leaf!4202) (c!130167 input!870))) b!768152))

(declare-fun m!1037965 () Bool)

(assert (=> b!768151 m!1037965))

(declare-fun m!1037967 () Bool)

(assert (=> b!768151 m!1037967))

(declare-fun m!1037969 () Bool)

(assert (=> b!768152 m!1037969))

(assert (=> b!767926 m!1037605))

(declare-fun e!494145 () Bool)

(declare-fun tp!250011 () Bool)

(declare-fun b!768154 () Bool)

(declare-fun tp!250013 () Bool)

(assert (=> b!768154 (= e!494145 (and (inv!10773 (left!6355 (c!130167 (totalInput!2099 cacheFindLongestMatch!74)))) tp!250013 (inv!10773 (right!6685 (c!130167 (totalInput!2099 cacheFindLongestMatch!74)))) tp!250011))))

(declare-fun b!768156 () Bool)

(declare-fun e!494146 () Bool)

(declare-fun tp!250012 () Bool)

(assert (=> b!768156 (= e!494146 tp!250012)))

(declare-fun b!768155 () Bool)

(assert (=> b!768155 (= e!494145 (and (inv!10778 (xs!5552 (c!130167 (totalInput!2099 cacheFindLongestMatch!74)))) e!494146))))

(assert (=> b!767917 (= tp!249903 (and (inv!10773 (c!130167 (totalInput!2099 cacheFindLongestMatch!74))) e!494145))))

(assert (= (and b!767917 ((_ is Node!2865) (c!130167 (totalInput!2099 cacheFindLongestMatch!74)))) b!768154))

(assert (= b!768155 b!768156))

(assert (= (and b!767917 ((_ is Leaf!4202) (c!130167 (totalInput!2099 cacheFindLongestMatch!74)))) b!768155))

(declare-fun m!1037971 () Bool)

(assert (=> b!768154 m!1037971))

(declare-fun m!1037973 () Bool)

(assert (=> b!768154 m!1037973))

(declare-fun m!1037975 () Bool)

(assert (=> b!768155 m!1037975))

(assert (=> b!767917 m!1037597))

(declare-fun b!768157 () Bool)

(declare-fun e!494147 () Bool)

(declare-fun tp!250017 () Bool)

(assert (=> b!768157 (= e!494147 tp!250017)))

(declare-fun tp!250015 () Bool)

(declare-fun setRes!6884 () Bool)

(declare-fun b!768158 () Bool)

(declare-fun e!494149 () Bool)

(assert (=> b!768158 (= e!494149 (and (inv!10779 (_1!5644 (_1!5645 (h!13858 (zeroValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))))) e!494147 tp_is_empty!3721 setRes!6884 tp!250015))))

(declare-fun condSetEmpty!6884 () Bool)

(assert (=> b!768158 (= condSetEmpty!6884 (= (_2!5645 (h!13858 (zeroValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))) ((as const (Array Context!738 Bool)) false)))))

(declare-fun setIsEmpty!6884 () Bool)

(assert (=> setIsEmpty!6884 setRes!6884))

(assert (=> b!767929 (= tp!249883 e!494149)))

(declare-fun setNonEmpty!6884 () Bool)

(declare-fun e!494148 () Bool)

(declare-fun setElem!6884 () Context!738)

(declare-fun tp!250016 () Bool)

(assert (=> setNonEmpty!6884 (= setRes!6884 (and tp!250016 (inv!10779 setElem!6884) e!494148))))

(declare-fun setRest!6884 () (InoxSet Context!738))

(assert (=> setNonEmpty!6884 (= (_2!5645 (h!13858 (zeroValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6884 true) setRest!6884))))

(declare-fun b!768159 () Bool)

(declare-fun tp!250014 () Bool)

(assert (=> b!768159 (= e!494148 tp!250014)))

(assert (= b!768158 b!768157))

(assert (= (and b!768158 condSetEmpty!6884) setIsEmpty!6884))

(assert (= (and b!768158 (not condSetEmpty!6884)) setNonEmpty!6884))

(assert (= setNonEmpty!6884 b!768159))

(assert (= (and b!767929 ((_ is Cons!8457) (zeroValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))) b!768158))

(declare-fun m!1037977 () Bool)

(assert (=> b!768158 m!1037977))

(declare-fun m!1037979 () Bool)

(assert (=> setNonEmpty!6884 m!1037979))

(declare-fun b!768160 () Bool)

(declare-fun e!494150 () Bool)

(declare-fun tp!250021 () Bool)

(assert (=> b!768160 (= e!494150 tp!250021)))

(declare-fun tp!250019 () Bool)

(declare-fun setRes!6885 () Bool)

(declare-fun e!494152 () Bool)

(declare-fun b!768161 () Bool)

(assert (=> b!768161 (= e!494152 (and (inv!10779 (_1!5644 (_1!5645 (h!13858 (minValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))))) e!494150 tp_is_empty!3721 setRes!6885 tp!250019))))

(declare-fun condSetEmpty!6885 () Bool)

(assert (=> b!768161 (= condSetEmpty!6885 (= (_2!5645 (h!13858 (minValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))) ((as const (Array Context!738 Bool)) false)))))

(declare-fun setIsEmpty!6885 () Bool)

(assert (=> setIsEmpty!6885 setRes!6885))

(assert (=> b!767929 (= tp!249900 e!494152)))

(declare-fun tp!250020 () Bool)

(declare-fun setNonEmpty!6885 () Bool)

(declare-fun e!494151 () Bool)

(declare-fun setElem!6885 () Context!738)

(assert (=> setNonEmpty!6885 (= setRes!6885 (and tp!250020 (inv!10779 setElem!6885) e!494151))))

(declare-fun setRest!6885 () (InoxSet Context!738))

(assert (=> setNonEmpty!6885 (= (_2!5645 (h!13858 (minValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6885 true) setRest!6885))))

(declare-fun b!768162 () Bool)

(declare-fun tp!250018 () Bool)

(assert (=> b!768162 (= e!494151 tp!250018)))

(assert (= b!768161 b!768160))

(assert (= (and b!768161 condSetEmpty!6885) setIsEmpty!6885))

(assert (= (and b!768161 (not condSetEmpty!6885)) setNonEmpty!6885))

(assert (= setNonEmpty!6885 b!768162))

(assert (= (and b!767929 ((_ is Cons!8457) (minValue!1382 (v!18598 (underlying!2433 (v!18599 (underlying!2434 (cache!1484 cacheUp!502)))))))) b!768161))

(declare-fun m!1037981 () Bool)

(assert (=> b!768161 m!1037981))

(declare-fun m!1037983 () Bool)

(assert (=> setNonEmpty!6885 m!1037983))

(declare-fun e!494154 () Bool)

(declare-fun b!768163 () Bool)

(declare-fun tp!250023 () Bool)

(declare-fun e!494155 () Bool)

(declare-fun tp!250024 () Bool)

(declare-fun setRes!6886 () Bool)

(assert (=> b!768163 (= e!494155 (and tp!250023 (inv!10779 (_2!5646 (_1!5647 (h!13859 mapDefault!5557)))) e!494154 tp_is_empty!3721 setRes!6886 tp!250024))))

(declare-fun condSetEmpty!6886 () Bool)

(assert (=> b!768163 (= condSetEmpty!6886 (= (_2!5647 (h!13859 mapDefault!5557)) ((as const (Array Context!738 Bool)) false)))))

(assert (=> b!767918 (= tp!249898 e!494155)))

(declare-fun b!768164 () Bool)

(declare-fun e!494153 () Bool)

(declare-fun tp!250022 () Bool)

(assert (=> b!768164 (= e!494153 tp!250022)))

(declare-fun setIsEmpty!6886 () Bool)

(assert (=> setIsEmpty!6886 setRes!6886))

(declare-fun tp!250026 () Bool)

(declare-fun setElem!6886 () Context!738)

(declare-fun setNonEmpty!6886 () Bool)

(assert (=> setNonEmpty!6886 (= setRes!6886 (and tp!250026 (inv!10779 setElem!6886) e!494153))))

(declare-fun setRest!6886 () (InoxSet Context!738))

(assert (=> setNonEmpty!6886 (= (_2!5647 (h!13859 mapDefault!5557)) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6886 true) setRest!6886))))

(declare-fun b!768165 () Bool)

(declare-fun tp!250025 () Bool)

(assert (=> b!768165 (= e!494154 tp!250025)))

(assert (= b!768163 b!768165))

(assert (= (and b!768163 condSetEmpty!6886) setIsEmpty!6886))

(assert (= (and b!768163 (not condSetEmpty!6886)) setNonEmpty!6886))

(assert (= setNonEmpty!6886 b!768164))

(assert (= (and b!767918 ((_ is Cons!8458) mapDefault!5557)) b!768163))

(declare-fun m!1037985 () Bool)

(assert (=> b!768163 m!1037985))

(declare-fun m!1037987 () Bool)

(assert (=> setNonEmpty!6886 m!1037987))

(declare-fun e!494161 () Bool)

(declare-fun tp!250035 () Bool)

(declare-fun tp!250033 () Bool)

(declare-fun b!768174 () Bool)

(assert (=> b!768174 (= e!494161 (and (inv!10772 (left!6356 (c!130168 acc!372))) tp!250033 (inv!10772 (right!6686 (c!130168 acc!372))) tp!250035))))

(declare-fun b!768176 () Bool)

(declare-fun e!494160 () Bool)

(declare-fun tp!250034 () Bool)

(assert (=> b!768176 (= e!494160 tp!250034)))

(declare-fun b!768175 () Bool)

(declare-fun inv!10780 (IArray!5733) Bool)

(assert (=> b!768175 (= e!494161 (and (inv!10780 (xs!5553 (c!130168 acc!372))) e!494160))))

(assert (=> b!767892 (= tp!249885 (and (inv!10772 (c!130168 acc!372)) e!494161))))

(assert (= (and b!767892 ((_ is Node!2866) (c!130168 acc!372))) b!768174))

(assert (= b!768175 b!768176))

(assert (= (and b!767892 ((_ is Leaf!4203) (c!130168 acc!372))) b!768175))

(declare-fun m!1037989 () Bool)

(assert (=> b!768174 m!1037989))

(declare-fun m!1037991 () Bool)

(assert (=> b!768174 m!1037991))

(declare-fun m!1037993 () Bool)

(assert (=> b!768175 m!1037993))

(assert (=> b!767892 m!1037603))

(declare-fun setRes!6887 () Bool)

(declare-fun e!494164 () Bool)

(declare-fun b!768177 () Bool)

(declare-fun tp!250038 () Bool)

(declare-fun e!494163 () Bool)

(declare-fun tp!250037 () Bool)

(assert (=> b!768177 (= e!494164 (and tp!250037 (inv!10779 (_2!5646 (_1!5647 (h!13859 (zeroValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))))) e!494163 tp_is_empty!3721 setRes!6887 tp!250038))))

(declare-fun condSetEmpty!6887 () Bool)

(assert (=> b!768177 (= condSetEmpty!6887 (= (_2!5647 (h!13859 (zeroValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))) ((as const (Array Context!738 Bool)) false)))))

(assert (=> b!767894 (= tp!249897 e!494164)))

(declare-fun b!768178 () Bool)

(declare-fun e!494162 () Bool)

(declare-fun tp!250036 () Bool)

(assert (=> b!768178 (= e!494162 tp!250036)))

(declare-fun setIsEmpty!6887 () Bool)

(assert (=> setIsEmpty!6887 setRes!6887))

(declare-fun setNonEmpty!6887 () Bool)

(declare-fun setElem!6887 () Context!738)

(declare-fun tp!250040 () Bool)

(assert (=> setNonEmpty!6887 (= setRes!6887 (and tp!250040 (inv!10779 setElem!6887) e!494162))))

(declare-fun setRest!6887 () (InoxSet Context!738))

(assert (=> setNonEmpty!6887 (= (_2!5647 (h!13859 (zeroValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6887 true) setRest!6887))))

(declare-fun b!768179 () Bool)

(declare-fun tp!250039 () Bool)

(assert (=> b!768179 (= e!494163 tp!250039)))

(assert (= b!768177 b!768179))

(assert (= (and b!768177 condSetEmpty!6887) setIsEmpty!6887))

(assert (= (and b!768177 (not condSetEmpty!6887)) setNonEmpty!6887))

(assert (= setNonEmpty!6887 b!768178))

(assert (= (and b!767894 ((_ is Cons!8458) (zeroValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))) b!768177))

(declare-fun m!1037995 () Bool)

(assert (=> b!768177 m!1037995))

(declare-fun m!1037997 () Bool)

(assert (=> setNonEmpty!6887 m!1037997))

(declare-fun tp!250042 () Bool)

(declare-fun setRes!6888 () Bool)

(declare-fun e!494167 () Bool)

(declare-fun b!768180 () Bool)

(declare-fun tp!250043 () Bool)

(declare-fun e!494166 () Bool)

(assert (=> b!768180 (= e!494167 (and tp!250042 (inv!10779 (_2!5646 (_1!5647 (h!13859 (minValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))))) e!494166 tp_is_empty!3721 setRes!6888 tp!250043))))

(declare-fun condSetEmpty!6888 () Bool)

(assert (=> b!768180 (= condSetEmpty!6888 (= (_2!5647 (h!13859 (minValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))) ((as const (Array Context!738 Bool)) false)))))

(assert (=> b!767894 (= tp!249887 e!494167)))

(declare-fun b!768181 () Bool)

(declare-fun e!494165 () Bool)

(declare-fun tp!250041 () Bool)

(assert (=> b!768181 (= e!494165 tp!250041)))

(declare-fun setIsEmpty!6888 () Bool)

(assert (=> setIsEmpty!6888 setRes!6888))

(declare-fun tp!250045 () Bool)

(declare-fun setElem!6888 () Context!738)

(declare-fun setNonEmpty!6888 () Bool)

(assert (=> setNonEmpty!6888 (= setRes!6888 (and tp!250045 (inv!10779 setElem!6888) e!494165))))

(declare-fun setRest!6888 () (InoxSet Context!738))

(assert (=> setNonEmpty!6888 (= (_2!5647 (h!13859 (minValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6888 true) setRest!6888))))

(declare-fun b!768182 () Bool)

(declare-fun tp!250044 () Bool)

(assert (=> b!768182 (= e!494166 tp!250044)))

(assert (= b!768180 b!768182))

(assert (= (and b!768180 condSetEmpty!6888) setIsEmpty!6888))

(assert (= (and b!768180 (not condSetEmpty!6888)) setNonEmpty!6888))

(assert (= setNonEmpty!6888 b!768181))

(assert (= (and b!767894 ((_ is Cons!8458) (minValue!1383 (v!18600 (underlying!2435 (v!18601 (underlying!2436 (cache!1485 cacheDown!515)))))))) b!768180))

(declare-fun m!1037999 () Bool)

(assert (=> b!768180 m!1037999))

(declare-fun m!1038001 () Bool)

(assert (=> setNonEmpty!6888 m!1038001))

(declare-fun mapNonEmpty!5566 () Bool)

(declare-fun mapRes!5566 () Bool)

(declare-fun tp!250061 () Bool)

(declare-fun e!494178 () Bool)

(assert (=> mapNonEmpty!5566 (= mapRes!5566 (and tp!250061 e!494178))))

(declare-fun mapKey!5566 () (_ BitVec 32))

(declare-fun mapValue!5566 () List!8473)

(declare-fun mapRest!5566 () (Array (_ BitVec 32) List!8473))

(assert (=> mapNonEmpty!5566 (= mapRest!5556 (store mapRest!5566 mapKey!5566 mapValue!5566))))

(declare-fun mapIsEmpty!5566 () Bool)

(assert (=> mapIsEmpty!5566 mapRes!5566))

(declare-fun condMapEmpty!5566 () Bool)

(declare-fun mapDefault!5566 () List!8473)

(assert (=> mapNonEmpty!5557 (= condMapEmpty!5566 (= mapRest!5556 ((as const (Array (_ BitVec 32) List!8473)) mapDefault!5566)))))

(declare-fun e!494177 () Bool)

(assert (=> mapNonEmpty!5557 (= tp!249899 (and e!494177 mapRes!5566))))

(declare-fun b!768193 () Bool)

(declare-fun setRes!6894 () Bool)

(declare-fun tp!250062 () Bool)

(assert (=> b!768193 (= e!494177 (and setRes!6894 tp!250062))))

(declare-fun condSetEmpty!6894 () Bool)

(assert (=> b!768193 (= condSetEmpty!6894 (= (_1!5648 (_1!5649 (h!13860 mapDefault!5566))) ((as const (Array Context!738 Bool)) false)))))

(declare-fun setRes!6893 () Bool)

(declare-fun setNonEmpty!6893 () Bool)

(declare-fun setElem!6893 () Context!738)

(declare-fun tp!250063 () Bool)

(declare-fun e!494179 () Bool)

(assert (=> setNonEmpty!6893 (= setRes!6893 (and tp!250063 (inv!10779 setElem!6893) e!494179))))

(declare-fun setRest!6893 () (InoxSet Context!738))

(assert (=> setNonEmpty!6893 (= (_1!5648 (_1!5649 (h!13860 mapValue!5566))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6893 true) setRest!6893))))

(declare-fun setIsEmpty!6893 () Bool)

(assert (=> setIsEmpty!6893 setRes!6893))

(declare-fun b!768194 () Bool)

(declare-fun e!494176 () Bool)

(declare-fun tp!250060 () Bool)

(assert (=> b!768194 (= e!494176 tp!250060)))

(declare-fun b!768195 () Bool)

(declare-fun tp!250066 () Bool)

(assert (=> b!768195 (= e!494178 (and setRes!6893 tp!250066))))

(declare-fun condSetEmpty!6893 () Bool)

(assert (=> b!768195 (= condSetEmpty!6893 (= (_1!5648 (_1!5649 (h!13860 mapValue!5566))) ((as const (Array Context!738 Bool)) false)))))

(declare-fun tp!250065 () Bool)

(declare-fun setElem!6894 () Context!738)

(declare-fun setNonEmpty!6894 () Bool)

(assert (=> setNonEmpty!6894 (= setRes!6894 (and tp!250065 (inv!10779 setElem!6894) e!494176))))

(declare-fun setRest!6894 () (InoxSet Context!738))

(assert (=> setNonEmpty!6894 (= (_1!5648 (_1!5649 (h!13860 mapDefault!5566))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6894 true) setRest!6894))))

(declare-fun setIsEmpty!6894 () Bool)

(assert (=> setIsEmpty!6894 setRes!6894))

(declare-fun b!768196 () Bool)

(declare-fun tp!250064 () Bool)

(assert (=> b!768196 (= e!494179 tp!250064)))

(assert (= (and mapNonEmpty!5557 condMapEmpty!5566) mapIsEmpty!5566))

(assert (= (and mapNonEmpty!5557 (not condMapEmpty!5566)) mapNonEmpty!5566))

(assert (= (and b!768195 condSetEmpty!6893) setIsEmpty!6893))

(assert (= (and b!768195 (not condSetEmpty!6893)) setNonEmpty!6893))

(assert (= setNonEmpty!6893 b!768196))

(assert (= (and mapNonEmpty!5566 ((_ is Cons!8459) mapValue!5566)) b!768195))

(assert (= (and b!768193 condSetEmpty!6894) setIsEmpty!6894))

(assert (= (and b!768193 (not condSetEmpty!6894)) setNonEmpty!6894))

(assert (= setNonEmpty!6894 b!768194))

(assert (= (and mapNonEmpty!5557 ((_ is Cons!8459) mapDefault!5566)) b!768193))

(declare-fun m!1038003 () Bool)

(assert (=> mapNonEmpty!5566 m!1038003))

(declare-fun m!1038005 () Bool)

(assert (=> setNonEmpty!6893 m!1038005))

(declare-fun m!1038007 () Bool)

(assert (=> setNonEmpty!6894 m!1038007))

(declare-fun e!494185 () Bool)

(declare-fun setElem!6897 () Context!738)

(declare-fun setRes!6897 () Bool)

(declare-fun setNonEmpty!6897 () Bool)

(declare-fun tp!250073 () Bool)

(assert (=> setNonEmpty!6897 (= setRes!6897 (and tp!250073 (inv!10779 setElem!6897) e!494185))))

(declare-fun setRest!6897 () (InoxSet Context!738))

(assert (=> setNonEmpty!6897 (= (_1!5648 (_1!5649 (h!13860 mapValue!5557))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6897 true) setRest!6897))))

(declare-fun setIsEmpty!6897 () Bool)

(assert (=> setIsEmpty!6897 setRes!6897))

(declare-fun e!494184 () Bool)

(assert (=> mapNonEmpty!5557 (= tp!249884 e!494184)))

(declare-fun b!768204 () Bool)

(declare-fun tp!250074 () Bool)

(assert (=> b!768204 (= e!494185 tp!250074)))

(declare-fun b!768203 () Bool)

(declare-fun tp!250075 () Bool)

(assert (=> b!768203 (= e!494184 (and setRes!6897 tp!250075))))

(declare-fun condSetEmpty!6897 () Bool)

(assert (=> b!768203 (= condSetEmpty!6897 (= (_1!5648 (_1!5649 (h!13860 mapValue!5557))) ((as const (Array Context!738 Bool)) false)))))

(assert (= (and b!768203 condSetEmpty!6897) setIsEmpty!6897))

(assert (= (and b!768203 (not condSetEmpty!6897)) setNonEmpty!6897))

(assert (= setNonEmpty!6897 b!768204))

(assert (= (and mapNonEmpty!5557 ((_ is Cons!8459) mapValue!5557)) b!768203))

(declare-fun m!1038009 () Bool)

(assert (=> setNonEmpty!6897 m!1038009))

(declare-fun tp!250076 () Bool)

(declare-fun e!494186 () Bool)

(declare-fun b!768205 () Bool)

(declare-fun tp!250078 () Bool)

(assert (=> b!768205 (= e!494186 (and (inv!10773 (left!6355 (c!130167 treated!50))) tp!250078 (inv!10773 (right!6685 (c!130167 treated!50))) tp!250076))))

(declare-fun b!768207 () Bool)

(declare-fun e!494187 () Bool)

(declare-fun tp!250077 () Bool)

(assert (=> b!768207 (= e!494187 tp!250077)))

(declare-fun b!768206 () Bool)

(assert (=> b!768206 (= e!494186 (and (inv!10778 (xs!5552 (c!130167 treated!50))) e!494187))))

(assert (=> b!767903 (= tp!249896 (and (inv!10773 (c!130167 treated!50)) e!494186))))

(assert (= (and b!767903 ((_ is Node!2865) (c!130167 treated!50))) b!768205))

(assert (= b!768206 b!768207))

(assert (= (and b!767903 ((_ is Leaf!4202) (c!130167 treated!50))) b!768206))

(declare-fun m!1038011 () Bool)

(assert (=> b!768205 m!1038011))

(declare-fun m!1038013 () Bool)

(assert (=> b!768205 m!1038013))

(declare-fun m!1038015 () Bool)

(assert (=> b!768206 m!1038015))

(assert (=> b!767903 m!1037593))

(declare-fun b!768218 () Bool)

(declare-fun b_free!24041 () Bool)

(declare-fun b_next!24105 () Bool)

(assert (=> b!768218 (= b_free!24041 (not b_next!24105))))

(declare-fun tp!250090 () Bool)

(declare-fun b_and!71521 () Bool)

(assert (=> b!768218 (= tp!250090 b_and!71521)))

(declare-fun b_free!24043 () Bool)

(declare-fun b_next!24107 () Bool)

(assert (=> b!768218 (= b_free!24043 (not b_next!24107))))

(declare-fun tp!250088 () Bool)

(declare-fun b_and!71523 () Bool)

(assert (=> b!768218 (= tp!250088 b_and!71523)))

(declare-fun e!494196 () Bool)

(assert (=> b!768218 (= e!494196 (and tp!250090 tp!250088))))

(declare-fun b!768217 () Bool)

(declare-fun tp!250089 () Bool)

(declare-fun e!494198 () Bool)

(assert (=> b!768217 (= e!494198 (and tp!250089 (inv!10759 (tag!1882 (h!13861 (t!91756 rules!1486)))) (inv!10771 (transformation!1620 (h!13861 (t!91756 rules!1486)))) e!494196))))

(declare-fun b!768216 () Bool)

(declare-fun e!494197 () Bool)

(declare-fun tp!250087 () Bool)

(assert (=> b!768216 (= e!494197 (and e!494198 tp!250087))))

(assert (=> b!767922 (= tp!249902 e!494197)))

(assert (= b!768217 b!768218))

(assert (= b!768216 b!768217))

(assert (= (and b!767922 ((_ is Cons!8460) (t!91756 rules!1486))) b!768216))

(declare-fun m!1038017 () Bool)

(assert (=> b!768217 m!1038017))

(declare-fun m!1038019 () Bool)

(assert (=> b!768217 m!1038019))

(declare-fun tp!250091 () Bool)

(declare-fun e!494201 () Bool)

(declare-fun setRes!6898 () Bool)

(declare-fun setElem!6898 () Context!738)

(declare-fun setNonEmpty!6898 () Bool)

(assert (=> setNonEmpty!6898 (= setRes!6898 (and tp!250091 (inv!10779 setElem!6898) e!494201))))

(declare-fun setRest!6898 () (InoxSet Context!738))

(assert (=> setNonEmpty!6898 (= (_1!5648 (_1!5649 (h!13860 (zeroValue!1384 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6898 true) setRest!6898))))

(declare-fun setIsEmpty!6898 () Bool)

(assert (=> setIsEmpty!6898 setRes!6898))

(declare-fun e!494200 () Bool)

(assert (=> b!767895 (= tp!249893 e!494200)))

(declare-fun b!768220 () Bool)

(declare-fun tp!250092 () Bool)

(assert (=> b!768220 (= e!494201 tp!250092)))

(declare-fun b!768219 () Bool)

(declare-fun tp!250093 () Bool)

(assert (=> b!768219 (= e!494200 (and setRes!6898 tp!250093))))

(declare-fun condSetEmpty!6898 () Bool)

(assert (=> b!768219 (= condSetEmpty!6898 (= (_1!5648 (_1!5649 (h!13860 (zeroValue!1384 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))))) ((as const (Array Context!738 Bool)) false)))))

(assert (= (and b!768219 condSetEmpty!6898) setIsEmpty!6898))

(assert (= (and b!768219 (not condSetEmpty!6898)) setNonEmpty!6898))

(assert (= setNonEmpty!6898 b!768220))

(assert (= (and b!767895 ((_ is Cons!8459) (zeroValue!1384 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74)))))))) b!768219))

(declare-fun m!1038021 () Bool)

(assert (=> setNonEmpty!6898 m!1038021))

(declare-fun setElem!6899 () Context!738)

(declare-fun tp!250094 () Bool)

(declare-fun setRes!6899 () Bool)

(declare-fun setNonEmpty!6899 () Bool)

(declare-fun e!494203 () Bool)

(assert (=> setNonEmpty!6899 (= setRes!6899 (and tp!250094 (inv!10779 setElem!6899) e!494203))))

(declare-fun setRest!6899 () (InoxSet Context!738))

(assert (=> setNonEmpty!6899 (= (_1!5648 (_1!5649 (h!13860 (minValue!1384 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6899 true) setRest!6899))))

(declare-fun setIsEmpty!6899 () Bool)

(assert (=> setIsEmpty!6899 setRes!6899))

(declare-fun e!494202 () Bool)

(assert (=> b!767895 (= tp!249905 e!494202)))

(declare-fun b!768222 () Bool)

(declare-fun tp!250095 () Bool)

(assert (=> b!768222 (= e!494203 tp!250095)))

(declare-fun b!768221 () Bool)

(declare-fun tp!250096 () Bool)

(assert (=> b!768221 (= e!494202 (and setRes!6899 tp!250096))))

(declare-fun condSetEmpty!6899 () Bool)

(assert (=> b!768221 (= condSetEmpty!6899 (= (_1!5648 (_1!5649 (h!13860 (minValue!1384 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74))))))))) ((as const (Array Context!738 Bool)) false)))))

(assert (= (and b!768221 condSetEmpty!6899) setIsEmpty!6899))

(assert (= (and b!768221 (not condSetEmpty!6899)) setNonEmpty!6899))

(assert (= setNonEmpty!6899 b!768222))

(assert (= (and b!767895 ((_ is Cons!8459) (minValue!1384 (v!18602 (underlying!2437 (v!18603 (underlying!2438 (cache!1486 cacheFindLongestMatch!74)))))))) b!768221))

(declare-fun m!1038023 () Bool)

(assert (=> setNonEmpty!6899 m!1038023))

(declare-fun setNonEmpty!6900 () Bool)

(declare-fun setRes!6900 () Bool)

(declare-fun setElem!6900 () Context!738)

(declare-fun e!494205 () Bool)

(declare-fun tp!250097 () Bool)

(assert (=> setNonEmpty!6900 (= setRes!6900 (and tp!250097 (inv!10779 setElem!6900) e!494205))))

(declare-fun setRest!6900 () (InoxSet Context!738))

(assert (=> setNonEmpty!6900 (= (_1!5648 (_1!5649 (h!13860 mapDefault!5555))) ((_ map or) (store ((as const (Array Context!738 Bool)) false) setElem!6900 true) setRest!6900))))

(declare-fun setIsEmpty!6900 () Bool)

(assert (=> setIsEmpty!6900 setRes!6900))

(declare-fun e!494204 () Bool)

(assert (=> b!767911 (= tp!249907 e!494204)))

(declare-fun b!768224 () Bool)

(declare-fun tp!250098 () Bool)

(assert (=> b!768224 (= e!494205 tp!250098)))

(declare-fun b!768223 () Bool)

(declare-fun tp!250099 () Bool)

(assert (=> b!768223 (= e!494204 (and setRes!6900 tp!250099))))

(declare-fun condSetEmpty!6900 () Bool)

(assert (=> b!768223 (= condSetEmpty!6900 (= (_1!5648 (_1!5649 (h!13860 mapDefault!5555))) ((as const (Array Context!738 Bool)) false)))))

(assert (= (and b!768223 condSetEmpty!6900) setIsEmpty!6900))

(assert (= (and b!768223 (not condSetEmpty!6900)) setNonEmpty!6900))

(assert (= setNonEmpty!6900 b!768224))

(assert (= (and b!767911 ((_ is Cons!8459) mapDefault!5555)) b!768223))

(declare-fun m!1038025 () Bool)

(assert (=> setNonEmpty!6900 m!1038025))

(declare-fun b!768238 () Bool)

(declare-fun e!494208 () Bool)

(declare-fun tp!250112 () Bool)

(declare-fun tp!250110 () Bool)

(assert (=> b!768238 (= e!494208 (and tp!250112 tp!250110))))

(declare-fun b!768236 () Bool)

(declare-fun tp!250111 () Bool)

(declare-fun tp!250113 () Bool)

(assert (=> b!768236 (= e!494208 (and tp!250111 tp!250113))))

(declare-fun b!768235 () Bool)

(assert (=> b!768235 (= e!494208 tp_is_empty!3721)))

(declare-fun b!768237 () Bool)

(declare-fun tp!250114 () Bool)

(assert (=> b!768237 (= e!494208 tp!250114)))

(assert (=> b!767885 (= tp!249906 e!494208)))

(assert (= (and b!767885 ((_ is ElementMatch!1967) (regex!1620 (h!13861 rules!1486)))) b!768235))

(assert (= (and b!767885 ((_ is Concat!3632) (regex!1620 (h!13861 rules!1486)))) b!768236))

(assert (= (and b!767885 ((_ is Star!1967) (regex!1620 (h!13861 rules!1486)))) b!768237))

(assert (= (and b!767885 ((_ is Union!1967) (regex!1620 (h!13861 rules!1486)))) b!768238))

(check-sat (not d!251317) (not b!768039) (not b!768175) (not b!768163) (not b!768155) (not b!768179) (not b!767944) (not b!768100) (not d!251399) (not b!768029) (not b!768085) (not mapNonEmpty!5563) (not b!768177) (not b!768101) (not b!768236) (not d!251339) (not b_next!24095) (not b!767896) (not d!251397) (not b!768164) (not b!768060) (not b!768149) (not b!767967) (not b_next!24097) (not b!768216) (not b!768083) (not d!251391) (not b!768025) (not b!768024) (not d!251349) (not b!767903) (not d!251329) (not b_next!24089) (not d!251307) (not b!768223) (not b!768027) (not b!768028) (not b_next!24103) (not b!768038) (not d!251395) (not b!768237) (not b!768238) (not b!768204) (not setNonEmpty!6879) (not setNonEmpty!6888) (not setNonEmpty!6886) (not b!768160) (not setNonEmpty!6893) (not b!768065) (not b!768074) (not b_next!24091) (not b!768217) (not b!768220) (not b!768051) (not setNonEmpty!6894) (not b!768016) b_and!71515 (not d!251309) (not b!768116) (not b_next!24099) (not b!768035) (not setNonEmpty!6884) (not b!768152) (not b!767984) (not b!768018) (not b!768062) (not b_next!24093) (not d!251341) (not b!768165) (not d!251343) (not b!768159) (not d!251333) (not b!767892) (not b!768053) (not d!251385) (not b!767969) b_and!71507 (not b!768115) (not b!768154) (not d!251323) (not b!767990) (not b!768033) (not b!768050) (not d!251313) b_and!71505 b_and!71521 (not setNonEmpty!6883) (not b!767985) (not b_next!24105) (not d!251311) (not b!768031) (not b!768084) (not b!767989) (not b!768222) (not b!768161) (not b!768153) (not b!768148) (not setNonEmpty!6899) (not b!768162) (not mapNonEmpty!5566) (not setNonEmpty!6885) (not d!251377) (not b!768134) (not d!251305) tp_is_empty!3721 (not setNonEmpty!6887) (not b!768224) (not setNonEmpty!6869) (not b!767994) (not d!251363) (not setNonEmpty!6900) (not b!768178) (not b!767945) (not bm!46828) b_and!71511 (not d!251327) b_and!71509 (not b!768206) (not setNonEmpty!6878) (not d!251337) (not b!768103) (not b!768196) (not mapNonEmpty!5560) (not b!768034) (not b!768040) (not b!768010) (not b!768032) (not b!768157) (not b!768133) (not b!768131) (not setNonEmpty!6898) (not b!768156) (not b!768205) (not b!767988) (not b!768052) (not b!767917) (not b!768203) (not b!768132) (not d!251387) (not b!768022) (not b!768102) (not b!768146) (not b!768158) (not b!768041) b_and!71517 (not b!768036) (not b_next!24101) (not b!768194) (not b!767947) (not b!768145) (not d!251335) (not b!768176) (not setNonEmpty!6897) (not b!768181) (not b!768195) (not b!768071) (not b!768015) (not b!768174) (not d!251319) (not b!768068) b_and!71523 (not b!768221) (not b!768104) (not b!768021) (not b!768180) (not d!251369) (not d!251315) (not b!768147) (not b!767987) (not b!768151) b_and!71513 (not b!768105) (not b!768009) b_and!71519 (not b!768182) (not b!767958) (not b!768136) (not b!768193) (not d!251357) (not d!251367) (not b!768150) (not b!767959) (not b!767993) (not d!251331) (not b!768219) (not setNonEmpty!6882) (not b!767946) (not b!768207) (not d!251361) (not d!251365) (not b!768114) (not setNonEmpty!6870) (not b_next!24107) (not b!768135) (not b!767926) (not d!251353) (not setNonEmpty!6873) (not b!768011))
(check-sat (not b_next!24095) (not b_next!24097) (not b_next!24091) b_and!71515 (not b_next!24099) (not b_next!24093) b_and!71511 b_and!71509 b_and!71523 (not b_next!24107) (not b_next!24089) (not b_next!24103) b_and!71507 b_and!71505 b_and!71521 (not b_next!24105) b_and!71517 (not b_next!24101) b_and!71513 b_and!71519)

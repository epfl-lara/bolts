; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71394 () Bool)

(assert start!71394)

(declare-fun b!770321 () Bool)

(declare-fun b_free!24293 () Bool)

(declare-fun b_next!24357 () Bool)

(assert (=> b!770321 (= b_free!24293 (not b_next!24357))))

(declare-fun tp!251842 () Bool)

(declare-fun b_and!71773 () Bool)

(assert (=> b!770321 (= tp!251842 b_and!71773)))

(declare-fun b!770336 () Bool)

(declare-fun b_free!24295 () Bool)

(declare-fun b_next!24359 () Bool)

(assert (=> b!770336 (= b_free!24295 (not b_next!24359))))

(declare-fun tp!251826 () Bool)

(declare-fun b_and!71775 () Bool)

(assert (=> b!770336 (= tp!251826 b_and!71775)))

(declare-fun b!770352 () Bool)

(declare-fun b_free!24297 () Bool)

(declare-fun b_next!24361 () Bool)

(assert (=> b!770352 (= b_free!24297 (not b_next!24361))))

(declare-fun tp!251830 () Bool)

(declare-fun b_and!71777 () Bool)

(assert (=> b!770352 (= tp!251830 b_and!71777)))

(declare-fun b!770339 () Bool)

(declare-fun b_free!24299 () Bool)

(declare-fun b_next!24363 () Bool)

(assert (=> b!770339 (= b_free!24299 (not b_next!24363))))

(declare-fun tp!251831 () Bool)

(declare-fun b_and!71779 () Bool)

(assert (=> b!770339 (= tp!251831 b_and!71779)))

(declare-fun b!770350 () Bool)

(declare-fun b_free!24301 () Bool)

(declare-fun b_next!24365 () Bool)

(assert (=> b!770350 (= b_free!24301 (not b_next!24365))))

(declare-fun tp!251844 () Bool)

(declare-fun b_and!71781 () Bool)

(assert (=> b!770350 (= tp!251844 b_and!71781)))

(declare-fun b!770319 () Bool)

(declare-fun b_free!24303 () Bool)

(declare-fun b_next!24367 () Bool)

(assert (=> b!770319 (= b_free!24303 (not b_next!24367))))

(declare-fun tp!251848 () Bool)

(declare-fun b_and!71783 () Bool)

(assert (=> b!770319 (= tp!251848 b_and!71783)))

(declare-fun b_free!24305 () Bool)

(declare-fun b_next!24369 () Bool)

(assert (=> b!770319 (= b_free!24305 (not b_next!24369))))

(declare-fun tp!251825 () Bool)

(declare-fun b_and!71785 () Bool)

(assert (=> b!770319 (= tp!251825 b_and!71785)))

(declare-fun b!770335 () Bool)

(declare-fun b_free!24307 () Bool)

(declare-fun b_next!24371 () Bool)

(assert (=> b!770335 (= b_free!24307 (not b_next!24371))))

(declare-fun tp!251835 () Bool)

(declare-fun b_and!71787 () Bool)

(assert (=> b!770335 (= tp!251835 b_and!71787)))

(declare-fun e!496126 () Bool)

(assert (=> b!770319 (= e!496126 (and tp!251848 tp!251825))))

(declare-fun b!770320 () Bool)

(declare-fun e!496147 () Bool)

(declare-datatypes ((C!4568 0))(
  ( (C!4569 (val!2514 Int)) )
))
(declare-datatypes ((List!8570 0))(
  ( (Nil!8556) (Cons!8556 (h!13957 C!4568) (t!91852 List!8570)) )
))
(declare-datatypes ((IArray!5763 0))(
  ( (IArray!5764 (innerList!2939 List!8570)) )
))
(declare-datatypes ((Conc!2881 0))(
  ( (Node!2881 (left!6383 Conc!2881) (right!6713 Conc!2881) (csize!5992 Int) (cheight!3092 Int)) (Leaf!4226 (xs!5568 IArray!5763) (csize!5993 Int)) (Empty!2881) )
))
(declare-datatypes ((BalanceConc!5774 0))(
  ( (BalanceConc!5775 (c!130246 Conc!2881)) )
))
(declare-fun totalInput!472 () BalanceConc!5774)

(declare-fun tp!251822 () Bool)

(declare-fun inv!10881 (Conc!2881) Bool)

(assert (=> b!770320 (= e!496147 (and (inv!10881 (c!130246 totalInput!472)) tp!251822))))

(declare-datatypes ((Regex!1983 0))(
  ( (ElementMatch!1983 (c!130247 C!4568)) (Concat!3660 (regOne!4478 Regex!1983) (regTwo!4478 Regex!1983)) (EmptyExpr!1983) (Star!1983 (reg!2312 Regex!1983)) (EmptyLang!1983) (Union!1983 (regOne!4479 Regex!1983) (regTwo!4479 Regex!1983)) )
))
(declare-datatypes ((List!8571 0))(
  ( (Nil!8557) (Cons!8557 (h!13958 Regex!1983) (t!91853 List!8571)) )
))
(declare-datatypes ((Context!770 0))(
  ( (Context!771 (exprs!885 List!8571)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9960 0))(
  ( (tuple2!9961 (_1!5739 (InoxSet Context!770)) (_2!5739 Int)) )
))
(declare-datatypes ((tuple2!9962 0))(
  ( (tuple2!9963 (_1!5740 tuple2!9960) (_2!5740 Int)) )
))
(declare-datatypes ((List!8572 0))(
  ( (Nil!8558) (Cons!8558 (h!13959 tuple2!9962) (t!91854 List!8572)) )
))
(declare-datatypes ((array!4125 0))(
  ( (array!4126 (arr!1842 (Array (_ BitVec 32) List!8572)) (size!6956 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1141 0))(
  ( (HashableExt!1140 (__x!6846 Int)) )
))
(declare-datatypes ((array!4127 0))(
  ( (array!4128 (arr!1843 (Array (_ BitVec 32) (_ BitVec 64))) (size!6957 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2338 0))(
  ( (LongMapFixedSize!2339 (defaultEntry!1525 Int) (mask!3045 (_ BitVec 32)) (extraKeys!1416 (_ BitVec 32)) (zeroValue!1426 List!8572) (minValue!1426 List!8572) (_size!2447 (_ BitVec 32)) (_keys!1463 array!4127) (_values!1448 array!4125) (_vacant!1230 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4617 0))(
  ( (Cell!4618 (v!18688 LongMapFixedSize!2338)) )
))
(declare-datatypes ((MutLongMap!1169 0))(
  ( (LongMap!1169 (underlying!2521 Cell!4617)) (MutLongMapExt!1168 (__x!6847 Int)) )
))
(declare-datatypes ((Cell!4619 0))(
  ( (Cell!4620 (v!18689 MutLongMap!1169)) )
))
(declare-datatypes ((MutableMap!1141 0))(
  ( (MutableMapExt!1140 (__x!6848 Int)) (HashMap!1141 (underlying!2522 Cell!4619) (hashF!3049 Hashable!1141) (_size!2448 (_ BitVec 32)) (defaultValue!1292 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!314 0))(
  ( (CacheFindLongestMatch!315 (cache!1528 MutableMap!1141) (totalInput!2116 BalanceConc!5774)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!314)

(declare-fun tp!251824 () Bool)

(declare-fun tp!251828 () Bool)

(declare-fun e!496137 () Bool)

(declare-fun e!496143 () Bool)

(declare-fun array_inv!1338 (array!4127) Bool)

(declare-fun array_inv!1339 (array!4125) Bool)

(assert (=> b!770321 (= e!496143 (and tp!251842 tp!251828 tp!251824 (array_inv!1338 (_keys!1463 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) (array_inv!1339 (_values!1448 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) e!496137))))

(declare-fun b!770322 () Bool)

(declare-fun e!496136 () Bool)

(declare-fun e!496129 () Bool)

(assert (=> b!770322 (= e!496136 e!496129)))

(declare-fun b!770323 () Bool)

(declare-fun e!496148 () Bool)

(declare-fun input!1432 () BalanceConc!5774)

(declare-fun tp!251834 () Bool)

(assert (=> b!770323 (= e!496148 (and (inv!10881 (c!130246 input!1432)) tp!251834))))

(declare-fun b!770324 () Bool)

(declare-fun e!496117 () Bool)

(declare-fun e!496141 () Bool)

(assert (=> b!770324 (= e!496117 (not e!496141))))

(declare-fun res!337843 () Bool)

(assert (=> b!770324 (=> res!337843 e!496141)))

(declare-datatypes ((List!8573 0))(
  ( (Nil!8559) (Cons!8559 (h!13960 (_ BitVec 16)) (t!91855 List!8573)) )
))
(declare-datatypes ((TokenValue!1677 0))(
  ( (FloatLiteralValue!3354 (text!12184 List!8573)) (TokenValueExt!1676 (__x!6849 Int)) (Broken!8385 (value!52184 List!8573)) (Object!1690) (End!1677) (Def!1677) (Underscore!1677) (Match!1677) (Else!1677) (Error!1677) (Case!1677) (If!1677) (Extends!1677) (Abstract!1677) (Class!1677) (Val!1677) (DelimiterValue!3354 (del!1737 List!8573)) (KeywordValue!1683 (value!52185 List!8573)) (CommentValue!3354 (value!52186 List!8573)) (WhitespaceValue!3354 (value!52187 List!8573)) (IndentationValue!1677 (value!52188 List!8573)) (String!10132) (Int32!1677) (Broken!8386 (value!52189 List!8573)) (Boolean!1678) (Unit!13105) (OperatorValue!1680 (op!1737 List!8573)) (IdentifierValue!3354 (value!52190 List!8573)) (IdentifierValue!3355 (value!52191 List!8573)) (WhitespaceValue!3355 (value!52192 List!8573)) (True!3354) (False!3354) (Broken!8387 (value!52193 List!8573)) (Broken!8388 (value!52194 List!8573)) (True!3355) (RightBrace!1677) (RightBracket!1677) (Colon!1677) (Null!1677) (Comma!1677) (LeftBracket!1677) (False!3355) (LeftBrace!1677) (ImaginaryLiteralValue!1677 (text!12185 List!8573)) (StringLiteralValue!5031 (value!52195 List!8573)) (EOFValue!1677 (value!52196 List!8573)) (IdentValue!1677 (value!52197 List!8573)) (DelimiterValue!3355 (value!52198 List!8573)) (DedentValue!1677 (value!52199 List!8573)) (NewLineValue!1677 (value!52200 List!8573)) (IntegerValue!5031 (value!52201 (_ BitVec 32)) (text!12186 List!8573)) (IntegerValue!5032 (value!52202 Int) (text!12187 List!8573)) (Times!1677) (Or!1677) (Equal!1677) (Minus!1677) (Broken!8389 (value!52203 List!8573)) (And!1677) (Div!1677) (LessEqual!1677) (Mod!1677) (Concat!3661) (Not!1677) (Plus!1677) (SpaceValue!1677 (value!52204 List!8573)) (IntegerValue!5033 (value!52205 Int) (text!12188 List!8573)) (StringLiteralValue!5032 (text!12189 List!8573)) (FloatLiteralValue!3355 (text!12190 List!8573)) (BytesLiteralValue!1677 (value!52206 List!8573)) (CommentValue!3355 (value!52207 List!8573)) (StringLiteralValue!5033 (value!52208 List!8573)) (ErrorTokenValue!1677 (msg!1738 List!8573)) )
))
(declare-datatypes ((TokenValueInjection!3090 0))(
  ( (TokenValueInjection!3091 (toValue!2625 Int) (toChars!2484 Int)) )
))
(declare-datatypes ((String!10133 0))(
  ( (String!10134 (value!52209 String)) )
))
(declare-datatypes ((Rule!3066 0))(
  ( (Rule!3067 (regex!1633 Regex!1983) (tag!1895 String!10133) (isSeparator!1633 Bool) (transformation!1633 TokenValueInjection!3090)) )
))
(declare-datatypes ((List!8574 0))(
  ( (Nil!8560) (Cons!8560 (h!13961 Rule!3066) (t!91856 List!8574)) )
))
(declare-fun rulesArg!343 () List!8574)

(get-info :version)

(assert (=> b!770324 (= res!337843 (or (and ((_ is Cons!8560) rulesArg!343) ((_ is Nil!8560) (t!91856 rulesArg!343))) (not ((_ is Cons!8560) rulesArg!343))))))

(declare-fun lt!313588 () List!8570)

(declare-fun isPrefix!989 (List!8570 List!8570) Bool)

(assert (=> b!770324 (isPrefix!989 lt!313588 lt!313588)))

(declare-datatypes ((Unit!13106 0))(
  ( (Unit!13107) )
))
(declare-fun lt!313590 () Unit!13106)

(declare-fun lemmaIsPrefixRefl!700 (List!8570 List!8570) Unit!13106)

(assert (=> b!770324 (= lt!313590 (lemmaIsPrefixRefl!700 lt!313588 lt!313588))))

(declare-fun res!337836 () Bool)

(declare-fun e!496125 () Bool)

(assert (=> start!71394 (=> (not res!337836) (not e!496125))))

(declare-datatypes ((LexerInterface!1435 0))(
  ( (LexerInterfaceExt!1432 (__x!6850 Int)) (Lexer!1433) )
))
(declare-fun thiss!15653 () LexerInterface!1435)

(assert (=> start!71394 (= res!337836 ((_ is Lexer!1433) thiss!15653))))

(assert (=> start!71394 e!496125))

(declare-fun e!496144 () Bool)

(assert (=> start!71394 e!496144))

(declare-fun inv!10882 (BalanceConc!5774) Bool)

(assert (=> start!71394 (and (inv!10882 input!1432) e!496148)))

(declare-fun e!496120 () Bool)

(declare-fun inv!10883 (CacheFindLongestMatch!314) Bool)

(assert (=> start!71394 (and (inv!10883 cacheFindLongestMatch!134) e!496120)))

(assert (=> start!71394 true))

(declare-datatypes ((tuple2!9964 0))(
  ( (tuple2!9965 (_1!5741 Context!770) (_2!5741 C!4568)) )
))
(declare-datatypes ((tuple2!9966 0))(
  ( (tuple2!9967 (_1!5742 tuple2!9964) (_2!5742 (InoxSet Context!770))) )
))
(declare-datatypes ((List!8575 0))(
  ( (Nil!8561) (Cons!8561 (h!13962 tuple2!9966) (t!91857 List!8575)) )
))
(declare-datatypes ((array!4129 0))(
  ( (array!4130 (arr!1844 (Array (_ BitVec 32) List!8575)) (size!6958 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2340 0))(
  ( (LongMapFixedSize!2341 (defaultEntry!1526 Int) (mask!3046 (_ BitVec 32)) (extraKeys!1417 (_ BitVec 32)) (zeroValue!1427 List!8575) (minValue!1427 List!8575) (_size!2449 (_ BitVec 32)) (_keys!1464 array!4127) (_values!1449 array!4129) (_vacant!1231 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4621 0))(
  ( (Cell!4622 (v!18690 LongMapFixedSize!2340)) )
))
(declare-datatypes ((MutLongMap!1170 0))(
  ( (LongMap!1170 (underlying!2523 Cell!4621)) (MutLongMapExt!1169 (__x!6851 Int)) )
))
(declare-datatypes ((Cell!4623 0))(
  ( (Cell!4624 (v!18691 MutLongMap!1170)) )
))
(declare-datatypes ((Hashable!1142 0))(
  ( (HashableExt!1141 (__x!6852 Int)) )
))
(declare-datatypes ((MutableMap!1142 0))(
  ( (MutableMapExt!1141 (__x!6853 Int)) (HashMap!1142 (underlying!2524 Cell!4623) (hashF!3050 Hashable!1142) (_size!2450 (_ BitVec 32)) (defaultValue!1293 Int)) )
))
(declare-datatypes ((CacheUp!644 0))(
  ( (CacheUp!645 (cache!1529 MutableMap!1142)) )
))
(declare-fun cacheUp!653 () CacheUp!644)

(declare-fun inv!10884 (CacheUp!644) Bool)

(assert (=> start!71394 (and (inv!10884 cacheUp!653) e!496136)))

(assert (=> start!71394 (and (inv!10882 totalInput!472) e!496147)))

(declare-datatypes ((tuple3!978 0))(
  ( (tuple3!979 (_1!5743 Regex!1983) (_2!5743 Context!770) (_3!759 C!4568)) )
))
(declare-datatypes ((tuple2!9968 0))(
  ( (tuple2!9969 (_1!5744 tuple3!978) (_2!5744 (InoxSet Context!770))) )
))
(declare-datatypes ((List!8576 0))(
  ( (Nil!8562) (Cons!8562 (h!13963 tuple2!9968) (t!91858 List!8576)) )
))
(declare-datatypes ((array!4131 0))(
  ( (array!4132 (arr!1845 (Array (_ BitVec 32) List!8576)) (size!6959 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2342 0))(
  ( (LongMapFixedSize!2343 (defaultEntry!1527 Int) (mask!3047 (_ BitVec 32)) (extraKeys!1418 (_ BitVec 32)) (zeroValue!1428 List!8576) (minValue!1428 List!8576) (_size!2451 (_ BitVec 32)) (_keys!1465 array!4127) (_values!1450 array!4131) (_vacant!1232 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4625 0))(
  ( (Cell!4626 (v!18692 LongMapFixedSize!2342)) )
))
(declare-datatypes ((MutLongMap!1171 0))(
  ( (LongMap!1171 (underlying!2525 Cell!4625)) (MutLongMapExt!1170 (__x!6854 Int)) )
))
(declare-datatypes ((Cell!4627 0))(
  ( (Cell!4628 (v!18693 MutLongMap!1171)) )
))
(declare-datatypes ((Hashable!1143 0))(
  ( (HashableExt!1142 (__x!6855 Int)) )
))
(declare-datatypes ((MutableMap!1143 0))(
  ( (MutableMapExt!1142 (__x!6856 Int)) (HashMap!1143 (underlying!2526 Cell!4627) (hashF!3051 Hashable!1143) (_size!2452 (_ BitVec 32)) (defaultValue!1294 Int)) )
))
(declare-datatypes ((CacheDown!650 0))(
  ( (CacheDown!651 (cache!1530 MutableMap!1143)) )
))
(declare-fun cacheDown!666 () CacheDown!650)

(declare-fun e!496140 () Bool)

(declare-fun inv!10885 (CacheDown!650) Bool)

(assert (=> start!71394 (and (inv!10885 cacheDown!666) e!496140)))

(declare-fun b!770325 () Bool)

(declare-fun tp!251821 () Bool)

(declare-fun mapRes!5727 () Bool)

(assert (=> b!770325 (= e!496137 (and tp!251821 mapRes!5727))))

(declare-fun condMapEmpty!5726 () Bool)

(declare-fun mapDefault!5728 () List!8572)

(assert (=> b!770325 (= condMapEmpty!5726 (= (arr!1842 (_values!1448 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8572)) mapDefault!5728)))))

(declare-fun b!770326 () Bool)

(declare-fun e!496146 () Bool)

(declare-fun e!496124 () Bool)

(declare-fun lt!313587 () MutLongMap!1170)

(assert (=> b!770326 (= e!496146 (and e!496124 ((_ is LongMap!1170) lt!313587)))))

(assert (=> b!770326 (= lt!313587 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))

(declare-fun mapIsEmpty!5726 () Bool)

(assert (=> mapIsEmpty!5726 mapRes!5727))

(declare-fun e!496142 () Bool)

(declare-fun e!496131 () Bool)

(declare-fun b!770327 () Bool)

(assert (=> b!770327 (= e!496120 (and e!496131 (inv!10882 (totalInput!2116 cacheFindLongestMatch!134)) e!496142))))

(declare-fun b!770328 () Bool)

(declare-fun e!496123 () Bool)

(assert (=> b!770328 (= e!496123 e!496143)))

(declare-fun b!770329 () Bool)

(declare-fun tp!251823 () Bool)

(assert (=> b!770329 (= e!496142 (and (inv!10881 (c!130246 (totalInput!2116 cacheFindLongestMatch!134))) tp!251823))))

(declare-fun e!496130 () Bool)

(declare-fun b!770330 () Bool)

(declare-fun tp!251832 () Bool)

(declare-fun inv!10877 (String!10133) Bool)

(declare-fun inv!10886 (TokenValueInjection!3090) Bool)

(assert (=> b!770330 (= e!496130 (and tp!251832 (inv!10877 (tag!1895 (h!13961 rulesArg!343))) (inv!10886 (transformation!1633 (h!13961 rulesArg!343))) e!496126))))

(declare-fun b!770331 () Bool)

(assert (=> b!770331 (= e!496125 e!496117)))

(declare-fun res!337840 () Bool)

(assert (=> b!770331 (=> (not res!337840) (not e!496117))))

(declare-fun isSuffix!214 (List!8570 List!8570) Bool)

(declare-fun list!3432 (BalanceConc!5774) List!8570)

(assert (=> b!770331 (= res!337840 (isSuffix!214 lt!313588 (list!3432 totalInput!472)))))

(assert (=> b!770331 (= lt!313588 (list!3432 input!1432))))

(declare-fun b!770332 () Bool)

(declare-fun res!337835 () Bool)

(assert (=> b!770332 (=> (not res!337835) (not e!496125))))

(declare-fun rulesValidInductive!579 (LexerInterface!1435 List!8574) Bool)

(assert (=> b!770332 (= res!337835 (rulesValidInductive!579 thiss!15653 rulesArg!343))))

(declare-fun b!770333 () Bool)

(declare-fun tp!251839 () Bool)

(assert (=> b!770333 (= e!496144 (and e!496130 tp!251839))))

(declare-fun b!770334 () Bool)

(declare-fun e!496135 () Bool)

(declare-fun tp!251845 () Bool)

(declare-fun mapRes!5728 () Bool)

(assert (=> b!770334 (= e!496135 (and tp!251845 mapRes!5728))))

(declare-fun condMapEmpty!5727 () Bool)

(declare-fun mapDefault!5726 () List!8576)

(assert (=> b!770334 (= condMapEmpty!5727 (= (arr!1845 (_values!1450 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8576)) mapDefault!5726)))))

(declare-fun e!496150 () Bool)

(declare-fun e!496139 () Bool)

(assert (=> b!770335 (= e!496150 (and e!496139 tp!251835))))

(assert (=> b!770336 (= e!496129 (and e!496146 tp!251826))))

(declare-fun b!770337 () Bool)

(declare-fun res!337841 () Bool)

(assert (=> b!770337 (=> (not res!337841) (not e!496117))))

(declare-fun valid!949 (CacheUp!644) Bool)

(assert (=> b!770337 (= res!337841 (valid!949 cacheUp!653))))

(declare-fun b!770338 () Bool)

(declare-fun e!496122 () Bool)

(assert (=> b!770338 (= e!496122 e!496123)))

(declare-fun tp!251833 () Bool)

(declare-fun tp!251843 () Bool)

(declare-fun e!496128 () Bool)

(declare-fun e!496145 () Bool)

(declare-fun array_inv!1340 (array!4129) Bool)

(assert (=> b!770339 (= e!496128 (and tp!251831 tp!251833 tp!251843 (array_inv!1338 (_keys!1464 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) (array_inv!1340 (_values!1449 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) e!496145))))

(declare-fun b!770340 () Bool)

(assert (=> b!770340 (= e!496141 (rulesValidInductive!579 thiss!15653 (t!91856 rulesArg!343)))))

(declare-datatypes ((Token!2942 0))(
  ( (Token!2943 (value!52210 TokenValue!1677) (rule!2757 Rule!3066) (size!6960 Int) (originalCharacters!1896 List!8570)) )
))
(declare-datatypes ((tuple2!9970 0))(
  ( (tuple2!9971 (_1!5745 Token!2942) (_2!5745 BalanceConc!5774)) )
))
(declare-datatypes ((Option!1870 0))(
  ( (None!1869) (Some!1869 (v!18694 tuple2!9970)) )
))
(declare-datatypes ((tuple4!540 0))(
  ( (tuple4!541 (_1!5746 Option!1870) (_2!5746 CacheUp!644) (_3!760 CacheDown!650) (_4!270 CacheFindLongestMatch!314)) )
))
(declare-fun lt!313591 () tuple4!540)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!63 (LexerInterface!1435 Rule!3066 BalanceConc!5774 BalanceConc!5774 CacheUp!644 CacheDown!650 CacheFindLongestMatch!314) tuple4!540)

(assert (=> b!770340 (= lt!313591 (maxPrefixOneRuleZipperSequenceV2Mem!63 thiss!15653 (h!13961 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!770341 () Bool)

(declare-fun res!337842 () Bool)

(assert (=> b!770341 (=> (not res!337842) (not e!496125))))

(declare-fun isEmpty!5210 (List!8574) Bool)

(assert (=> b!770341 (= res!337842 (not (isEmpty!5210 rulesArg!343)))))

(declare-fun b!770342 () Bool)

(declare-fun res!337839 () Bool)

(assert (=> b!770342 (=> (not res!337839) (not e!496117))))

(declare-fun valid!950 (CacheFindLongestMatch!314) Bool)

(assert (=> b!770342 (= res!337839 (valid!950 cacheFindLongestMatch!134))))

(declare-fun b!770343 () Bool)

(declare-fun e!496149 () Bool)

(assert (=> b!770343 (= e!496149 e!496128)))

(declare-fun b!770344 () Bool)

(assert (=> b!770344 (= e!496124 e!496149)))

(declare-fun b!770345 () Bool)

(declare-fun e!496121 () Bool)

(declare-fun e!496118 () Bool)

(assert (=> b!770345 (= e!496121 e!496118)))

(declare-fun mapIsEmpty!5727 () Bool)

(declare-fun mapRes!5726 () Bool)

(assert (=> mapIsEmpty!5727 mapRes!5726))

(declare-fun mapNonEmpty!5726 () Bool)

(declare-fun tp!251846 () Bool)

(declare-fun tp!251837 () Bool)

(assert (=> mapNonEmpty!5726 (= mapRes!5727 (and tp!251846 tp!251837))))

(declare-fun mapValue!5728 () List!8572)

(declare-fun mapRest!5728 () (Array (_ BitVec 32) List!8572))

(declare-fun mapKey!5728 () (_ BitVec 32))

(assert (=> mapNonEmpty!5726 (= (arr!1842 (_values!1448 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) (store mapRest!5728 mapKey!5728 mapValue!5728))))

(declare-fun b!770346 () Bool)

(declare-fun e!496134 () Bool)

(declare-fun lt!313589 () MutLongMap!1169)

(assert (=> b!770346 (= e!496134 (and e!496122 ((_ is LongMap!1169) lt!313589)))))

(assert (=> b!770346 (= lt!313589 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))

(declare-fun b!770347 () Bool)

(assert (=> b!770347 (= e!496140 e!496150)))

(declare-fun b!770348 () Bool)

(declare-fun res!337837 () Bool)

(assert (=> b!770348 (=> (not res!337837) (not e!496117))))

(assert (=> b!770348 (= res!337837 (= (totalInput!2116 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun b!770349 () Bool)

(declare-fun lt!313592 () MutLongMap!1171)

(assert (=> b!770349 (= e!496139 (and e!496121 ((_ is LongMap!1171) lt!313592)))))

(assert (=> b!770349 (= lt!313592 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))

(declare-fun tp!251847 () Bool)

(declare-fun e!496132 () Bool)

(declare-fun tp!251829 () Bool)

(declare-fun array_inv!1341 (array!4131) Bool)

(assert (=> b!770350 (= e!496132 (and tp!251844 tp!251847 tp!251829 (array_inv!1338 (_keys!1465 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) (array_inv!1341 (_values!1450 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) e!496135))))

(declare-fun b!770351 () Bool)

(declare-fun res!337838 () Bool)

(assert (=> b!770351 (=> (not res!337838) (not e!496117))))

(declare-fun valid!951 (CacheDown!650) Bool)

(assert (=> b!770351 (= res!337838 (valid!951 cacheDown!666))))

(assert (=> b!770352 (= e!496131 (and e!496134 tp!251830))))

(declare-fun mapIsEmpty!5728 () Bool)

(assert (=> mapIsEmpty!5728 mapRes!5728))

(declare-fun b!770353 () Bool)

(assert (=> b!770353 (= e!496118 e!496132)))

(declare-fun mapNonEmpty!5727 () Bool)

(declare-fun tp!251840 () Bool)

(declare-fun tp!251827 () Bool)

(assert (=> mapNonEmpty!5727 (= mapRes!5726 (and tp!251840 tp!251827))))

(declare-fun mapKey!5727 () (_ BitVec 32))

(declare-fun mapValue!5726 () List!8575)

(declare-fun mapRest!5727 () (Array (_ BitVec 32) List!8575))

(assert (=> mapNonEmpty!5727 (= (arr!1844 (_values!1449 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) (store mapRest!5727 mapKey!5727 mapValue!5726))))

(declare-fun mapNonEmpty!5728 () Bool)

(declare-fun tp!251836 () Bool)

(declare-fun tp!251841 () Bool)

(assert (=> mapNonEmpty!5728 (= mapRes!5728 (and tp!251836 tp!251841))))

(declare-fun mapRest!5726 () (Array (_ BitVec 32) List!8576))

(declare-fun mapKey!5726 () (_ BitVec 32))

(declare-fun mapValue!5727 () List!8576)

(assert (=> mapNonEmpty!5728 (= (arr!1845 (_values!1450 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) (store mapRest!5726 mapKey!5726 mapValue!5727))))

(declare-fun b!770354 () Bool)

(declare-fun tp!251838 () Bool)

(assert (=> b!770354 (= e!496145 (and tp!251838 mapRes!5726))))

(declare-fun condMapEmpty!5728 () Bool)

(declare-fun mapDefault!5727 () List!8575)

(assert (=> b!770354 (= condMapEmpty!5728 (= (arr!1844 (_values!1449 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8575)) mapDefault!5727)))))

(assert (= (and start!71394 res!337836) b!770332))

(assert (= (and b!770332 res!337835) b!770341))

(assert (= (and b!770341 res!337842) b!770331))

(assert (= (and b!770331 res!337840) b!770337))

(assert (= (and b!770337 res!337841) b!770351))

(assert (= (and b!770351 res!337838) b!770342))

(assert (= (and b!770342 res!337839) b!770348))

(assert (= (and b!770348 res!337837) b!770324))

(assert (= (and b!770324 (not res!337843)) b!770340))

(assert (= b!770330 b!770319))

(assert (= b!770333 b!770330))

(assert (= (and start!71394 ((_ is Cons!8560) rulesArg!343)) b!770333))

(assert (= start!71394 b!770323))

(assert (= (and b!770325 condMapEmpty!5726) mapIsEmpty!5726))

(assert (= (and b!770325 (not condMapEmpty!5726)) mapNonEmpty!5726))

(assert (= b!770321 b!770325))

(assert (= b!770328 b!770321))

(assert (= b!770338 b!770328))

(assert (= (and b!770346 ((_ is LongMap!1169) (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))) b!770338))

(assert (= b!770352 b!770346))

(assert (= (and b!770327 ((_ is HashMap!1141) (cache!1528 cacheFindLongestMatch!134))) b!770352))

(assert (= b!770327 b!770329))

(assert (= start!71394 b!770327))

(assert (= (and b!770354 condMapEmpty!5728) mapIsEmpty!5727))

(assert (= (and b!770354 (not condMapEmpty!5728)) mapNonEmpty!5727))

(assert (= b!770339 b!770354))

(assert (= b!770343 b!770339))

(assert (= b!770344 b!770343))

(assert (= (and b!770326 ((_ is LongMap!1170) (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))) b!770344))

(assert (= b!770336 b!770326))

(assert (= (and b!770322 ((_ is HashMap!1142) (cache!1529 cacheUp!653))) b!770336))

(assert (= start!71394 b!770322))

(assert (= start!71394 b!770320))

(assert (= (and b!770334 condMapEmpty!5727) mapIsEmpty!5728))

(assert (= (and b!770334 (not condMapEmpty!5727)) mapNonEmpty!5728))

(assert (= b!770350 b!770334))

(assert (= b!770353 b!770350))

(assert (= b!770345 b!770353))

(assert (= (and b!770349 ((_ is LongMap!1171) (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))) b!770345))

(assert (= b!770335 b!770349))

(assert (= (and b!770347 ((_ is HashMap!1143) (cache!1530 cacheDown!666))) b!770335))

(assert (= start!71394 b!770347))

(declare-fun m!1039227 () Bool)

(assert (=> b!770339 m!1039227))

(declare-fun m!1039229 () Bool)

(assert (=> b!770339 m!1039229))

(declare-fun m!1039231 () Bool)

(assert (=> b!770350 m!1039231))

(declare-fun m!1039233 () Bool)

(assert (=> b!770350 m!1039233))

(declare-fun m!1039235 () Bool)

(assert (=> b!770323 m!1039235))

(declare-fun m!1039237 () Bool)

(assert (=> b!770332 m!1039237))

(declare-fun m!1039239 () Bool)

(assert (=> b!770320 m!1039239))

(declare-fun m!1039241 () Bool)

(assert (=> start!71394 m!1039241))

(declare-fun m!1039243 () Bool)

(assert (=> start!71394 m!1039243))

(declare-fun m!1039245 () Bool)

(assert (=> start!71394 m!1039245))

(declare-fun m!1039247 () Bool)

(assert (=> start!71394 m!1039247))

(declare-fun m!1039249 () Bool)

(assert (=> start!71394 m!1039249))

(declare-fun m!1039251 () Bool)

(assert (=> mapNonEmpty!5727 m!1039251))

(declare-fun m!1039253 () Bool)

(assert (=> b!770329 m!1039253))

(declare-fun m!1039255 () Bool)

(assert (=> b!770342 m!1039255))

(declare-fun m!1039257 () Bool)

(assert (=> b!770321 m!1039257))

(declare-fun m!1039259 () Bool)

(assert (=> b!770321 m!1039259))

(declare-fun m!1039261 () Bool)

(assert (=> mapNonEmpty!5726 m!1039261))

(declare-fun m!1039263 () Bool)

(assert (=> b!770340 m!1039263))

(declare-fun m!1039265 () Bool)

(assert (=> b!770340 m!1039265))

(declare-fun m!1039267 () Bool)

(assert (=> b!770351 m!1039267))

(declare-fun m!1039269 () Bool)

(assert (=> b!770341 m!1039269))

(declare-fun m!1039271 () Bool)

(assert (=> b!770330 m!1039271))

(declare-fun m!1039273 () Bool)

(assert (=> b!770330 m!1039273))

(declare-fun m!1039275 () Bool)

(assert (=> b!770337 m!1039275))

(declare-fun m!1039277 () Bool)

(assert (=> b!770331 m!1039277))

(assert (=> b!770331 m!1039277))

(declare-fun m!1039279 () Bool)

(assert (=> b!770331 m!1039279))

(declare-fun m!1039281 () Bool)

(assert (=> b!770331 m!1039281))

(declare-fun m!1039283 () Bool)

(assert (=> mapNonEmpty!5728 m!1039283))

(declare-fun m!1039285 () Bool)

(assert (=> b!770327 m!1039285))

(declare-fun m!1039287 () Bool)

(assert (=> b!770324 m!1039287))

(declare-fun m!1039289 () Bool)

(assert (=> b!770324 m!1039289))

(check-sat (not b_next!24371) b_and!71781 (not mapNonEmpty!5726) (not b!770354) (not b!770327) (not b!770340) (not b!770331) b_and!71779 (not b_next!24363) (not b!770329) b_and!71785 b_and!71773 b_and!71783 (not b_next!24361) (not b!770339) (not b!770333) b_and!71787 b_and!71775 b_and!71777 (not b_next!24369) (not b!770320) (not b_next!24359) (not b!770334) (not mapNonEmpty!5728) (not b!770337) (not start!71394) (not b!770323) (not b!770332) (not b!770321) (not b_next!24357) (not b!770342) (not b_next!24367) (not b_next!24365) (not b!770350) (not mapNonEmpty!5727) (not b!770324) (not b!770325) (not b!770351) (not b!770341) (not b!770330))
(check-sat (not b_next!24371) b_and!71781 b_and!71779 (not b_next!24365) (not b_next!24363) b_and!71785 b_and!71773 b_and!71783 (not b_next!24361) b_and!71787 b_and!71775 b_and!71777 (not b_next!24369) (not b_next!24359) (not b_next!24357) (not b_next!24367))
(get-model)

(declare-fun d!251525 () Bool)

(assert (=> d!251525 (= (isEmpty!5210 rulesArg!343) ((_ is Nil!8560) rulesArg!343))))

(assert (=> b!770341 d!251525))

(declare-fun d!251527 () Bool)

(assert (=> d!251527 (= (array_inv!1338 (_keys!1465 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) (bvsge (size!6957 (_keys!1465 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!770350 d!251527))

(declare-fun d!251529 () Bool)

(assert (=> d!251529 (= (array_inv!1341 (_values!1450 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) (bvsge (size!6959 (_values!1450 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!770350 d!251529))

(declare-fun d!251531 () Bool)

(assert (=> d!251531 (= (array_inv!1338 (_keys!1463 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) (bvsge (size!6957 (_keys!1463 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!770321 d!251531))

(declare-fun d!251533 () Bool)

(assert (=> d!251533 (= (array_inv!1339 (_values!1448 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) (bvsge (size!6956 (_values!1448 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!770321 d!251533))

(declare-fun d!251535 () Bool)

(declare-fun c!130250 () Bool)

(assert (=> d!251535 (= c!130250 ((_ is Node!2881) (c!130246 totalInput!472)))))

(declare-fun e!496155 () Bool)

(assert (=> d!251535 (= (inv!10881 (c!130246 totalInput!472)) e!496155)))

(declare-fun b!770361 () Bool)

(declare-fun inv!10887 (Conc!2881) Bool)

(assert (=> b!770361 (= e!496155 (inv!10887 (c!130246 totalInput!472)))))

(declare-fun b!770362 () Bool)

(declare-fun e!496156 () Bool)

(assert (=> b!770362 (= e!496155 e!496156)))

(declare-fun res!337850 () Bool)

(assert (=> b!770362 (= res!337850 (not ((_ is Leaf!4226) (c!130246 totalInput!472))))))

(assert (=> b!770362 (=> res!337850 e!496156)))

(declare-fun b!770363 () Bool)

(declare-fun inv!10888 (Conc!2881) Bool)

(assert (=> b!770363 (= e!496156 (inv!10888 (c!130246 totalInput!472)))))

(assert (= (and d!251535 c!130250) b!770361))

(assert (= (and d!251535 (not c!130250)) b!770362))

(assert (= (and b!770362 (not res!337850)) b!770363))

(declare-fun m!1039291 () Bool)

(assert (=> b!770361 m!1039291))

(declare-fun m!1039293 () Bool)

(assert (=> b!770363 m!1039293))

(assert (=> b!770320 d!251535))

(declare-fun d!251537 () Bool)

(assert (=> d!251537 (= (inv!10877 (tag!1895 (h!13961 rulesArg!343))) (= (mod (str.len (value!52209 (tag!1895 (h!13961 rulesArg!343)))) 2) 0))))

(assert (=> b!770330 d!251537))

(declare-fun d!251539 () Bool)

(declare-fun res!337853 () Bool)

(declare-fun e!496159 () Bool)

(assert (=> d!251539 (=> (not res!337853) (not e!496159))))

(declare-fun semiInverseModEq!611 (Int Int) Bool)

(assert (=> d!251539 (= res!337853 (semiInverseModEq!611 (toChars!2484 (transformation!1633 (h!13961 rulesArg!343))) (toValue!2625 (transformation!1633 (h!13961 rulesArg!343)))))))

(assert (=> d!251539 (= (inv!10886 (transformation!1633 (h!13961 rulesArg!343))) e!496159)))

(declare-fun b!770366 () Bool)

(declare-fun equivClasses!586 (Int Int) Bool)

(assert (=> b!770366 (= e!496159 (equivClasses!586 (toChars!2484 (transformation!1633 (h!13961 rulesArg!343))) (toValue!2625 (transformation!1633 (h!13961 rulesArg!343)))))))

(assert (= (and d!251539 res!337853) b!770366))

(declare-fun m!1039295 () Bool)

(assert (=> d!251539 m!1039295))

(declare-fun m!1039297 () Bool)

(assert (=> b!770366 m!1039297))

(assert (=> b!770330 d!251539))

(declare-fun d!251541 () Bool)

(declare-fun validCacheMapDown!101 (MutableMap!1143) Bool)

(assert (=> d!251541 (= (valid!951 cacheDown!666) (validCacheMapDown!101 (cache!1530 cacheDown!666)))))

(declare-fun bs!165937 () Bool)

(assert (= bs!165937 d!251541))

(declare-fun m!1039299 () Bool)

(assert (=> bs!165937 m!1039299))

(assert (=> b!770351 d!251541))

(declare-fun d!251543 () Bool)

(assert (=> d!251543 true))

(declare-fun lt!313595 () Bool)

(declare-fun lambda!23285 () Int)

(declare-fun forall!2044 (List!8574 Int) Bool)

(assert (=> d!251543 (= lt!313595 (forall!2044 rulesArg!343 lambda!23285))))

(declare-fun e!496165 () Bool)

(assert (=> d!251543 (= lt!313595 e!496165)))

(declare-fun res!337858 () Bool)

(assert (=> d!251543 (=> res!337858 e!496165)))

(assert (=> d!251543 (= res!337858 (not ((_ is Cons!8560) rulesArg!343)))))

(assert (=> d!251543 (= (rulesValidInductive!579 thiss!15653 rulesArg!343) lt!313595)))

(declare-fun b!770371 () Bool)

(declare-fun e!496164 () Bool)

(assert (=> b!770371 (= e!496165 e!496164)))

(declare-fun res!337859 () Bool)

(assert (=> b!770371 (=> (not res!337859) (not e!496164))))

(declare-fun ruleValid!502 (LexerInterface!1435 Rule!3066) Bool)

(assert (=> b!770371 (= res!337859 (ruleValid!502 thiss!15653 (h!13961 rulesArg!343)))))

(declare-fun b!770372 () Bool)

(assert (=> b!770372 (= e!496164 (rulesValidInductive!579 thiss!15653 (t!91856 rulesArg!343)))))

(assert (= (and d!251543 (not res!337858)) b!770371))

(assert (= (and b!770371 res!337859) b!770372))

(declare-fun m!1039301 () Bool)

(assert (=> d!251543 m!1039301))

(declare-fun m!1039303 () Bool)

(assert (=> b!770371 m!1039303))

(assert (=> b!770372 m!1039263))

(assert (=> b!770332 d!251543))

(declare-fun d!251545 () Bool)

(declare-fun res!337862 () Bool)

(declare-fun e!496168 () Bool)

(assert (=> d!251545 (=> (not res!337862) (not e!496168))))

(assert (=> d!251545 (= res!337862 ((_ is HashMap!1143) (cache!1530 cacheDown!666)))))

(assert (=> d!251545 (= (inv!10885 cacheDown!666) e!496168)))

(declare-fun b!770377 () Bool)

(assert (=> b!770377 (= e!496168 (validCacheMapDown!101 (cache!1530 cacheDown!666)))))

(assert (= (and d!251545 res!337862) b!770377))

(assert (=> b!770377 m!1039299))

(assert (=> start!71394 d!251545))

(declare-fun d!251547 () Bool)

(declare-fun isBalanced!774 (Conc!2881) Bool)

(assert (=> d!251547 (= (inv!10882 totalInput!472) (isBalanced!774 (c!130246 totalInput!472)))))

(declare-fun bs!165938 () Bool)

(assert (= bs!165938 d!251547))

(declare-fun m!1039305 () Bool)

(assert (=> bs!165938 m!1039305))

(assert (=> start!71394 d!251547))

(declare-fun d!251549 () Bool)

(assert (=> d!251549 (= (inv!10882 input!1432) (isBalanced!774 (c!130246 input!1432)))))

(declare-fun bs!165939 () Bool)

(assert (= bs!165939 d!251549))

(declare-fun m!1039307 () Bool)

(assert (=> bs!165939 m!1039307))

(assert (=> start!71394 d!251549))

(declare-fun d!251551 () Bool)

(declare-fun res!337865 () Bool)

(declare-fun e!496171 () Bool)

(assert (=> d!251551 (=> (not res!337865) (not e!496171))))

(assert (=> d!251551 (= res!337865 ((_ is HashMap!1142) (cache!1529 cacheUp!653)))))

(assert (=> d!251551 (= (inv!10884 cacheUp!653) e!496171)))

(declare-fun b!770380 () Bool)

(declare-fun validCacheMapUp!101 (MutableMap!1142) Bool)

(assert (=> b!770380 (= e!496171 (validCacheMapUp!101 (cache!1529 cacheUp!653)))))

(assert (= (and d!251551 res!337865) b!770380))

(declare-fun m!1039309 () Bool)

(assert (=> b!770380 m!1039309))

(assert (=> start!71394 d!251551))

(declare-fun d!251553 () Bool)

(declare-fun res!337868 () Bool)

(declare-fun e!496174 () Bool)

(assert (=> d!251553 (=> (not res!337868) (not e!496174))))

(assert (=> d!251553 (= res!337868 ((_ is HashMap!1141) (cache!1528 cacheFindLongestMatch!134)))))

(assert (=> d!251553 (= (inv!10883 cacheFindLongestMatch!134) e!496174)))

(declare-fun b!770383 () Bool)

(declare-fun validCacheMapFindLongestMatch!47 (MutableMap!1141 BalanceConc!5774) Bool)

(assert (=> b!770383 (= e!496174 (validCacheMapFindLongestMatch!47 (cache!1528 cacheFindLongestMatch!134) (totalInput!2116 cacheFindLongestMatch!134)))))

(assert (= (and d!251553 res!337868) b!770383))

(declare-fun m!1039311 () Bool)

(assert (=> b!770383 m!1039311))

(assert (=> start!71394 d!251553))

(declare-fun d!251555 () Bool)

(declare-fun e!496177 () Bool)

(assert (=> d!251555 e!496177))

(declare-fun res!337871 () Bool)

(assert (=> d!251555 (=> res!337871 e!496177)))

(declare-fun lt!313598 () Bool)

(assert (=> d!251555 (= res!337871 (not lt!313598))))

(declare-fun drop!394 (List!8570 Int) List!8570)

(declare-fun size!6961 (List!8570) Int)

(assert (=> d!251555 (= lt!313598 (= lt!313588 (drop!394 (list!3432 totalInput!472) (- (size!6961 (list!3432 totalInput!472)) (size!6961 lt!313588)))))))

(assert (=> d!251555 (= (isSuffix!214 lt!313588 (list!3432 totalInput!472)) lt!313598)))

(declare-fun b!770386 () Bool)

(assert (=> b!770386 (= e!496177 (>= (size!6961 (list!3432 totalInput!472)) (size!6961 lt!313588)))))

(assert (= (and d!251555 (not res!337871)) b!770386))

(assert (=> d!251555 m!1039277))

(declare-fun m!1039313 () Bool)

(assert (=> d!251555 m!1039313))

(declare-fun m!1039315 () Bool)

(assert (=> d!251555 m!1039315))

(assert (=> d!251555 m!1039277))

(declare-fun m!1039317 () Bool)

(assert (=> d!251555 m!1039317))

(assert (=> b!770386 m!1039277))

(assert (=> b!770386 m!1039313))

(assert (=> b!770386 m!1039315))

(assert (=> b!770331 d!251555))

(declare-fun d!251557 () Bool)

(declare-fun list!3433 (Conc!2881) List!8570)

(assert (=> d!251557 (= (list!3432 totalInput!472) (list!3433 (c!130246 totalInput!472)))))

(declare-fun bs!165940 () Bool)

(assert (= bs!165940 d!251557))

(declare-fun m!1039319 () Bool)

(assert (=> bs!165940 m!1039319))

(assert (=> b!770331 d!251557))

(declare-fun d!251559 () Bool)

(assert (=> d!251559 (= (list!3432 input!1432) (list!3433 (c!130246 input!1432)))))

(declare-fun bs!165941 () Bool)

(assert (= bs!165941 d!251559))

(declare-fun m!1039321 () Bool)

(assert (=> bs!165941 m!1039321))

(assert (=> b!770331 d!251559))

(declare-fun d!251561 () Bool)

(assert (=> d!251561 (= (valid!950 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!47 (cache!1528 cacheFindLongestMatch!134) (totalInput!2116 cacheFindLongestMatch!134)))))

(declare-fun bs!165942 () Bool)

(assert (= bs!165942 d!251561))

(assert (=> bs!165942 m!1039311))

(assert (=> b!770342 d!251561))

(declare-fun d!251563 () Bool)

(declare-fun c!130251 () Bool)

(assert (=> d!251563 (= c!130251 ((_ is Node!2881) (c!130246 input!1432)))))

(declare-fun e!496178 () Bool)

(assert (=> d!251563 (= (inv!10881 (c!130246 input!1432)) e!496178)))

(declare-fun b!770387 () Bool)

(assert (=> b!770387 (= e!496178 (inv!10887 (c!130246 input!1432)))))

(declare-fun b!770388 () Bool)

(declare-fun e!496179 () Bool)

(assert (=> b!770388 (= e!496178 e!496179)))

(declare-fun res!337872 () Bool)

(assert (=> b!770388 (= res!337872 (not ((_ is Leaf!4226) (c!130246 input!1432))))))

(assert (=> b!770388 (=> res!337872 e!496179)))

(declare-fun b!770389 () Bool)

(assert (=> b!770389 (= e!496179 (inv!10888 (c!130246 input!1432)))))

(assert (= (and d!251563 c!130251) b!770387))

(assert (= (and d!251563 (not c!130251)) b!770388))

(assert (= (and b!770388 (not res!337872)) b!770389))

(declare-fun m!1039323 () Bool)

(assert (=> b!770387 m!1039323))

(declare-fun m!1039325 () Bool)

(assert (=> b!770389 m!1039325))

(assert (=> b!770323 d!251563))

(declare-fun b!770400 () Bool)

(declare-fun e!496186 () Bool)

(declare-fun tail!976 (List!8570) List!8570)

(assert (=> b!770400 (= e!496186 (isPrefix!989 (tail!976 lt!313588) (tail!976 lt!313588)))))

(declare-fun d!251565 () Bool)

(declare-fun e!496187 () Bool)

(assert (=> d!251565 e!496187))

(declare-fun res!337881 () Bool)

(assert (=> d!251565 (=> res!337881 e!496187)))

(declare-fun lt!313601 () Bool)

(assert (=> d!251565 (= res!337881 (not lt!313601))))

(declare-fun e!496188 () Bool)

(assert (=> d!251565 (= lt!313601 e!496188)))

(declare-fun res!337882 () Bool)

(assert (=> d!251565 (=> res!337882 e!496188)))

(assert (=> d!251565 (= res!337882 ((_ is Nil!8556) lt!313588))))

(assert (=> d!251565 (= (isPrefix!989 lt!313588 lt!313588) lt!313601)))

(declare-fun b!770398 () Bool)

(assert (=> b!770398 (= e!496188 e!496186)))

(declare-fun res!337883 () Bool)

(assert (=> b!770398 (=> (not res!337883) (not e!496186))))

(assert (=> b!770398 (= res!337883 (not ((_ is Nil!8556) lt!313588)))))

(declare-fun b!770399 () Bool)

(declare-fun res!337884 () Bool)

(assert (=> b!770399 (=> (not res!337884) (not e!496186))))

(declare-fun head!1418 (List!8570) C!4568)

(assert (=> b!770399 (= res!337884 (= (head!1418 lt!313588) (head!1418 lt!313588)))))

(declare-fun b!770401 () Bool)

(assert (=> b!770401 (= e!496187 (>= (size!6961 lt!313588) (size!6961 lt!313588)))))

(assert (= (and d!251565 (not res!337882)) b!770398))

(assert (= (and b!770398 res!337883) b!770399))

(assert (= (and b!770399 res!337884) b!770400))

(assert (= (and d!251565 (not res!337881)) b!770401))

(declare-fun m!1039327 () Bool)

(assert (=> b!770400 m!1039327))

(assert (=> b!770400 m!1039327))

(assert (=> b!770400 m!1039327))

(assert (=> b!770400 m!1039327))

(declare-fun m!1039329 () Bool)

(assert (=> b!770400 m!1039329))

(declare-fun m!1039331 () Bool)

(assert (=> b!770399 m!1039331))

(assert (=> b!770399 m!1039331))

(assert (=> b!770401 m!1039315))

(assert (=> b!770401 m!1039315))

(assert (=> b!770324 d!251565))

(declare-fun d!251567 () Bool)

(assert (=> d!251567 (isPrefix!989 lt!313588 lt!313588)))

(declare-fun lt!313604 () Unit!13106)

(declare-fun choose!4875 (List!8570 List!8570) Unit!13106)

(assert (=> d!251567 (= lt!313604 (choose!4875 lt!313588 lt!313588))))

(assert (=> d!251567 (= (lemmaIsPrefixRefl!700 lt!313588 lt!313588) lt!313604)))

(declare-fun bs!165943 () Bool)

(assert (= bs!165943 d!251567))

(assert (=> bs!165943 m!1039287))

(declare-fun m!1039333 () Bool)

(assert (=> bs!165943 m!1039333))

(assert (=> b!770324 d!251567))

(declare-fun d!251569 () Bool)

(assert (=> d!251569 (= (valid!949 cacheUp!653) (validCacheMapUp!101 (cache!1529 cacheUp!653)))))

(declare-fun bs!165944 () Bool)

(assert (= bs!165944 d!251569))

(assert (=> bs!165944 m!1039309))

(assert (=> b!770337 d!251569))

(declare-fun d!251571 () Bool)

(assert (=> d!251571 (= (inv!10882 (totalInput!2116 cacheFindLongestMatch!134)) (isBalanced!774 (c!130246 (totalInput!2116 cacheFindLongestMatch!134))))))

(declare-fun bs!165945 () Bool)

(assert (= bs!165945 d!251571))

(declare-fun m!1039335 () Bool)

(assert (=> bs!165945 m!1039335))

(assert (=> b!770327 d!251571))

(declare-fun d!251573 () Bool)

(declare-fun c!130252 () Bool)

(assert (=> d!251573 (= c!130252 ((_ is Node!2881) (c!130246 (totalInput!2116 cacheFindLongestMatch!134))))))

(declare-fun e!496189 () Bool)

(assert (=> d!251573 (= (inv!10881 (c!130246 (totalInput!2116 cacheFindLongestMatch!134))) e!496189)))

(declare-fun b!770402 () Bool)

(assert (=> b!770402 (= e!496189 (inv!10887 (c!130246 (totalInput!2116 cacheFindLongestMatch!134))))))

(declare-fun b!770403 () Bool)

(declare-fun e!496190 () Bool)

(assert (=> b!770403 (= e!496189 e!496190)))

(declare-fun res!337885 () Bool)

(assert (=> b!770403 (= res!337885 (not ((_ is Leaf!4226) (c!130246 (totalInput!2116 cacheFindLongestMatch!134)))))))

(assert (=> b!770403 (=> res!337885 e!496190)))

(declare-fun b!770404 () Bool)

(assert (=> b!770404 (= e!496190 (inv!10888 (c!130246 (totalInput!2116 cacheFindLongestMatch!134))))))

(assert (= (and d!251573 c!130252) b!770402))

(assert (= (and d!251573 (not c!130252)) b!770403))

(assert (= (and b!770403 (not res!337885)) b!770404))

(declare-fun m!1039337 () Bool)

(assert (=> b!770402 m!1039337))

(declare-fun m!1039339 () Bool)

(assert (=> b!770404 m!1039339))

(assert (=> b!770329 d!251573))

(declare-fun bs!165946 () Bool)

(declare-fun d!251575 () Bool)

(assert (= bs!165946 (and d!251575 d!251543)))

(declare-fun lambda!23286 () Int)

(assert (=> bs!165946 (= lambda!23286 lambda!23285)))

(assert (=> d!251575 true))

(declare-fun lt!313605 () Bool)

(assert (=> d!251575 (= lt!313605 (forall!2044 (t!91856 rulesArg!343) lambda!23286))))

(declare-fun e!496192 () Bool)

(assert (=> d!251575 (= lt!313605 e!496192)))

(declare-fun res!337886 () Bool)

(assert (=> d!251575 (=> res!337886 e!496192)))

(assert (=> d!251575 (= res!337886 (not ((_ is Cons!8560) (t!91856 rulesArg!343))))))

(assert (=> d!251575 (= (rulesValidInductive!579 thiss!15653 (t!91856 rulesArg!343)) lt!313605)))

(declare-fun b!770405 () Bool)

(declare-fun e!496191 () Bool)

(assert (=> b!770405 (= e!496192 e!496191)))

(declare-fun res!337887 () Bool)

(assert (=> b!770405 (=> (not res!337887) (not e!496191))))

(assert (=> b!770405 (= res!337887 (ruleValid!502 thiss!15653 (h!13961 (t!91856 rulesArg!343))))))

(declare-fun b!770406 () Bool)

(assert (=> b!770406 (= e!496191 (rulesValidInductive!579 thiss!15653 (t!91856 (t!91856 rulesArg!343))))))

(assert (= (and d!251575 (not res!337886)) b!770405))

(assert (= (and b!770405 res!337887) b!770406))

(declare-fun m!1039341 () Bool)

(assert (=> d!251575 m!1039341))

(declare-fun m!1039343 () Bool)

(assert (=> b!770405 m!1039343))

(declare-fun m!1039345 () Bool)

(assert (=> b!770406 m!1039345))

(assert (=> b!770340 d!251575))

(declare-fun b!770421 () Bool)

(declare-fun e!496200 () Bool)

(declare-fun lt!313618 () List!8570)

(declare-fun matchR!730 (Regex!1983 List!8570) Bool)

(declare-datatypes ((tuple2!9972 0))(
  ( (tuple2!9973 (_1!5747 List!8570) (_2!5747 List!8570)) )
))
(declare-fun findLongestMatchInner!251 (Regex!1983 List!8570 Int List!8570 List!8570 Int) tuple2!9972)

(assert (=> b!770421 (= e!496200 (matchR!730 (regex!1633 (h!13961 rulesArg!343)) (_1!5747 (findLongestMatchInner!251 (regex!1633 (h!13961 rulesArg!343)) Nil!8556 (size!6961 Nil!8556) lt!313618 lt!313618 (size!6961 lt!313618)))))))

(declare-fun d!251577 () Bool)

(declare-fun e!496201 () Bool)

(assert (=> d!251577 e!496201))

(declare-fun res!337898 () Bool)

(assert (=> d!251577 (=> (not res!337898) (not e!496201))))

(declare-fun lt!313623 () tuple4!540)

(declare-fun maxPrefixOneRuleZipperSequenceV2!78 (LexerInterface!1435 Rule!3066 BalanceConc!5774 BalanceConc!5774) Option!1870)

(assert (=> d!251577 (= res!337898 (= (_1!5746 lt!313623) (maxPrefixOneRuleZipperSequenceV2!78 thiss!15653 (h!13961 rulesArg!343) input!1432 totalInput!472)))))

(declare-fun e!496199 () Option!1870)

(declare-datatypes ((tuple2!9974 0))(
  ( (tuple2!9975 (_1!5748 BalanceConc!5774) (_2!5748 BalanceConc!5774)) )
))
(declare-datatypes ((tuple4!542 0))(
  ( (tuple4!543 (_1!5749 tuple2!9974) (_2!5749 CacheUp!644) (_3!761 CacheDown!650) (_4!271 CacheFindLongestMatch!314)) )
))
(declare-fun lt!313620 () tuple4!542)

(assert (=> d!251577 (= lt!313623 (tuple4!541 e!496199 (_2!5749 lt!313620) (_3!761 lt!313620) (_4!271 lt!313620)))))

(declare-fun c!130255 () Bool)

(declare-fun isEmpty!5211 (BalanceConc!5774) Bool)

(assert (=> d!251577 (= c!130255 (isEmpty!5211 (_1!5748 (_1!5749 lt!313620))))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!30 (Regex!1983 BalanceConc!5774 BalanceConc!5774 CacheUp!644 CacheDown!650 CacheFindLongestMatch!314) tuple4!542)

(assert (=> d!251577 (= lt!313620 (findLongestMatchWithZipperSequenceV2Mem!30 (regex!1633 (h!13961 rulesArg!343)) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(assert (=> d!251577 (ruleValid!502 thiss!15653 (h!13961 rulesArg!343))))

(assert (=> d!251577 (= (maxPrefixOneRuleZipperSequenceV2Mem!63 thiss!15653 (h!13961 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134) lt!313623)))

(declare-fun b!770422 () Bool)

(declare-fun apply!1778 (TokenValueInjection!3090 BalanceConc!5774) TokenValue!1677)

(declare-fun size!6962 (BalanceConc!5774) Int)

(assert (=> b!770422 (= e!496199 (Some!1869 (tuple2!9971 (Token!2943 (apply!1778 (transformation!1633 (h!13961 rulesArg!343)) (_1!5748 (_1!5749 lt!313620))) (h!13961 rulesArg!343) (size!6962 (_1!5748 (_1!5749 lt!313620))) (list!3432 (_1!5748 (_1!5749 lt!313620)))) (_2!5748 (_1!5749 lt!313620)))))))

(assert (=> b!770422 (= lt!313618 (list!3432 input!1432))))

(declare-fun lt!313622 () Unit!13106)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!235 (Regex!1983 List!8570) Unit!13106)

(assert (=> b!770422 (= lt!313622 (longestMatchIsAcceptedByMatchOrIsEmpty!235 (regex!1633 (h!13961 rulesArg!343)) lt!313618))))

(declare-fun res!337902 () Bool)

(declare-fun isEmpty!5212 (List!8570) Bool)

(assert (=> b!770422 (= res!337902 (isEmpty!5212 (_1!5747 (findLongestMatchInner!251 (regex!1633 (h!13961 rulesArg!343)) Nil!8556 (size!6961 Nil!8556) lt!313618 lt!313618 (size!6961 lt!313618)))))))

(assert (=> b!770422 (=> res!337902 e!496200)))

(assert (=> b!770422 e!496200))

(declare-fun lt!313619 () Unit!13106)

(assert (=> b!770422 (= lt!313619 lt!313622)))

(declare-fun lt!313621 () Unit!13106)

(declare-fun lemmaSemiInverse!305 (TokenValueInjection!3090 BalanceConc!5774) Unit!13106)

(assert (=> b!770422 (= lt!313621 (lemmaSemiInverse!305 (transformation!1633 (h!13961 rulesArg!343)) (_1!5748 (_1!5749 lt!313620))))))

(declare-fun b!770423 () Bool)

(declare-fun res!337899 () Bool)

(assert (=> b!770423 (=> (not res!337899) (not e!496201))))

(assert (=> b!770423 (= res!337899 (valid!950 (_4!270 lt!313623)))))

(declare-fun b!770424 () Bool)

(assert (=> b!770424 (= e!496201 (= (totalInput!2116 (_4!270 lt!313623)) totalInput!472))))

(declare-fun b!770425 () Bool)

(declare-fun res!337901 () Bool)

(assert (=> b!770425 (=> (not res!337901) (not e!496201))))

(assert (=> b!770425 (= res!337901 (valid!951 (_3!760 lt!313623)))))

(declare-fun b!770426 () Bool)

(assert (=> b!770426 (= e!496199 None!1869)))

(declare-fun b!770427 () Bool)

(declare-fun res!337900 () Bool)

(assert (=> b!770427 (=> (not res!337900) (not e!496201))))

(assert (=> b!770427 (= res!337900 (valid!949 (_2!5746 lt!313623)))))

(assert (= (and d!251577 c!130255) b!770426))

(assert (= (and d!251577 (not c!130255)) b!770422))

(assert (= (and b!770422 (not res!337902)) b!770421))

(assert (= (and d!251577 res!337898) b!770427))

(assert (= (and b!770427 res!337900) b!770425))

(assert (= (and b!770425 res!337901) b!770423))

(assert (= (and b!770423 res!337899) b!770424))

(declare-fun m!1039347 () Bool)

(assert (=> b!770427 m!1039347))

(declare-fun m!1039349 () Bool)

(assert (=> b!770422 m!1039349))

(declare-fun m!1039351 () Bool)

(assert (=> b!770422 m!1039351))

(declare-fun m!1039353 () Bool)

(assert (=> b!770422 m!1039353))

(assert (=> b!770422 m!1039351))

(assert (=> b!770422 m!1039349))

(declare-fun m!1039355 () Bool)

(assert (=> b!770422 m!1039355))

(declare-fun m!1039357 () Bool)

(assert (=> b!770422 m!1039357))

(declare-fun m!1039359 () Bool)

(assert (=> b!770422 m!1039359))

(assert (=> b!770422 m!1039281))

(declare-fun m!1039361 () Bool)

(assert (=> b!770422 m!1039361))

(declare-fun m!1039363 () Bool)

(assert (=> b!770422 m!1039363))

(declare-fun m!1039365 () Bool)

(assert (=> b!770422 m!1039365))

(declare-fun m!1039367 () Bool)

(assert (=> b!770425 m!1039367))

(declare-fun m!1039369 () Bool)

(assert (=> d!251577 m!1039369))

(declare-fun m!1039371 () Bool)

(assert (=> d!251577 m!1039371))

(declare-fun m!1039373 () Bool)

(assert (=> d!251577 m!1039373))

(assert (=> d!251577 m!1039303))

(declare-fun m!1039375 () Bool)

(assert (=> b!770423 m!1039375))

(assert (=> b!770421 m!1039351))

(assert (=> b!770421 m!1039349))

(assert (=> b!770421 m!1039351))

(assert (=> b!770421 m!1039349))

(assert (=> b!770421 m!1039355))

(declare-fun m!1039377 () Bool)

(assert (=> b!770421 m!1039377))

(assert (=> b!770340 d!251577))

(declare-fun d!251579 () Bool)

(assert (=> d!251579 (= (array_inv!1338 (_keys!1464 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) (bvsge (size!6957 (_keys!1464 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!770339 d!251579))

(declare-fun d!251581 () Bool)

(assert (=> d!251581 (= (array_inv!1340 (_values!1449 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) (bvsge (size!6958 (_values!1449 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!770339 d!251581))

(declare-fun b!770436 () Bool)

(declare-fun e!496210 () Bool)

(declare-fun tp!251862 () Bool)

(assert (=> b!770436 (= e!496210 tp!251862)))

(declare-fun e!496209 () Bool)

(assert (=> b!770350 (= tp!251847 e!496209)))

(declare-fun setElem!6975 () Context!770)

(declare-fun tp!251863 () Bool)

(declare-fun setNonEmpty!6975 () Bool)

(declare-fun setRes!6975 () Bool)

(declare-fun e!496208 () Bool)

(declare-fun inv!10889 (Context!770) Bool)

(assert (=> setNonEmpty!6975 (= setRes!6975 (and tp!251863 (inv!10889 setElem!6975) e!496208))))

(declare-fun setRest!6975 () (InoxSet Context!770))

(assert (=> setNonEmpty!6975 (= (_2!5744 (h!13963 (zeroValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6975 true) setRest!6975))))

(declare-fun tp!251859 () Bool)

(declare-fun tp!251861 () Bool)

(declare-fun tp_is_empty!3727 () Bool)

(declare-fun b!770437 () Bool)

(assert (=> b!770437 (= e!496209 (and tp!251861 (inv!10889 (_2!5743 (_1!5744 (h!13963 (zeroValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))))) e!496210 tp_is_empty!3727 setRes!6975 tp!251859))))

(declare-fun condSetEmpty!6975 () Bool)

(assert (=> b!770437 (= condSetEmpty!6975 (= (_2!5744 (h!13963 (zeroValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))) ((as const (Array Context!770 Bool)) false)))))

(declare-fun b!770438 () Bool)

(declare-fun tp!251860 () Bool)

(assert (=> b!770438 (= e!496208 tp!251860)))

(declare-fun setIsEmpty!6975 () Bool)

(assert (=> setIsEmpty!6975 setRes!6975))

(assert (= b!770437 b!770436))

(assert (= (and b!770437 condSetEmpty!6975) setIsEmpty!6975))

(assert (= (and b!770437 (not condSetEmpty!6975)) setNonEmpty!6975))

(assert (= setNonEmpty!6975 b!770438))

(assert (= (and b!770350 ((_ is Cons!8562) (zeroValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))) b!770437))

(declare-fun m!1039379 () Bool)

(assert (=> setNonEmpty!6975 m!1039379))

(declare-fun m!1039381 () Bool)

(assert (=> b!770437 m!1039381))

(declare-fun b!770439 () Bool)

(declare-fun e!496213 () Bool)

(declare-fun tp!251867 () Bool)

(assert (=> b!770439 (= e!496213 tp!251867)))

(declare-fun e!496212 () Bool)

(assert (=> b!770350 (= tp!251829 e!496212)))

(declare-fun setRes!6976 () Bool)

(declare-fun tp!251868 () Bool)

(declare-fun setNonEmpty!6976 () Bool)

(declare-fun setElem!6976 () Context!770)

(declare-fun e!496211 () Bool)

(assert (=> setNonEmpty!6976 (= setRes!6976 (and tp!251868 (inv!10889 setElem!6976) e!496211))))

(declare-fun setRest!6976 () (InoxSet Context!770))

(assert (=> setNonEmpty!6976 (= (_2!5744 (h!13963 (minValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6976 true) setRest!6976))))

(declare-fun tp!251866 () Bool)

(declare-fun tp!251864 () Bool)

(declare-fun b!770440 () Bool)

(assert (=> b!770440 (= e!496212 (and tp!251866 (inv!10889 (_2!5743 (_1!5744 (h!13963 (minValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))))) e!496213 tp_is_empty!3727 setRes!6976 tp!251864))))

(declare-fun condSetEmpty!6976 () Bool)

(assert (=> b!770440 (= condSetEmpty!6976 (= (_2!5744 (h!13963 (minValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))) ((as const (Array Context!770 Bool)) false)))))

(declare-fun b!770441 () Bool)

(declare-fun tp!251865 () Bool)

(assert (=> b!770441 (= e!496211 tp!251865)))

(declare-fun setIsEmpty!6976 () Bool)

(assert (=> setIsEmpty!6976 setRes!6976))

(assert (= b!770440 b!770439))

(assert (= (and b!770440 condSetEmpty!6976) setIsEmpty!6976))

(assert (= (and b!770440 (not condSetEmpty!6976)) setNonEmpty!6976))

(assert (= setNonEmpty!6976 b!770441))

(assert (= (and b!770350 ((_ is Cons!8562) (minValue!1428 (v!18692 (underlying!2525 (v!18693 (underlying!2526 (cache!1530 cacheDown!666)))))))) b!770440))

(declare-fun m!1039383 () Bool)

(assert (=> setNonEmpty!6976 m!1039383))

(declare-fun m!1039385 () Bool)

(assert (=> b!770440 m!1039385))

(declare-fun tp!251877 () Bool)

(declare-fun setNonEmpty!6979 () Bool)

(declare-fun setRes!6979 () Bool)

(declare-fun e!496218 () Bool)

(declare-fun setElem!6979 () Context!770)

(assert (=> setNonEmpty!6979 (= setRes!6979 (and tp!251877 (inv!10889 setElem!6979) e!496218))))

(declare-fun setRest!6979 () (InoxSet Context!770))

(assert (=> setNonEmpty!6979 (= (_1!5739 (_1!5740 (h!13959 (zeroValue!1426 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6979 true) setRest!6979))))

(declare-fun setIsEmpty!6979 () Bool)

(assert (=> setIsEmpty!6979 setRes!6979))

(declare-fun b!770449 () Bool)

(declare-fun tp!251875 () Bool)

(assert (=> b!770449 (= e!496218 tp!251875)))

(declare-fun b!770448 () Bool)

(declare-fun e!496219 () Bool)

(declare-fun tp!251876 () Bool)

(assert (=> b!770448 (= e!496219 (and setRes!6979 tp!251876))))

(declare-fun condSetEmpty!6979 () Bool)

(assert (=> b!770448 (= condSetEmpty!6979 (= (_1!5739 (_1!5740 (h!13959 (zeroValue!1426 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))))) ((as const (Array Context!770 Bool)) false)))))

(assert (=> b!770321 (= tp!251828 e!496219)))

(assert (= (and b!770448 condSetEmpty!6979) setIsEmpty!6979))

(assert (= (and b!770448 (not condSetEmpty!6979)) setNonEmpty!6979))

(assert (= setNonEmpty!6979 b!770449))

(assert (= (and b!770321 ((_ is Cons!8558) (zeroValue!1426 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134)))))))) b!770448))

(declare-fun m!1039387 () Bool)

(assert (=> setNonEmpty!6979 m!1039387))

(declare-fun setElem!6980 () Context!770)

(declare-fun setRes!6980 () Bool)

(declare-fun tp!251880 () Bool)

(declare-fun e!496220 () Bool)

(declare-fun setNonEmpty!6980 () Bool)

(assert (=> setNonEmpty!6980 (= setRes!6980 (and tp!251880 (inv!10889 setElem!6980) e!496220))))

(declare-fun setRest!6980 () (InoxSet Context!770))

(assert (=> setNonEmpty!6980 (= (_1!5739 (_1!5740 (h!13959 (minValue!1426 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6980 true) setRest!6980))))

(declare-fun setIsEmpty!6980 () Bool)

(assert (=> setIsEmpty!6980 setRes!6980))

(declare-fun b!770451 () Bool)

(declare-fun tp!251878 () Bool)

(assert (=> b!770451 (= e!496220 tp!251878)))

(declare-fun b!770450 () Bool)

(declare-fun e!496221 () Bool)

(declare-fun tp!251879 () Bool)

(assert (=> b!770450 (= e!496221 (and setRes!6980 tp!251879))))

(declare-fun condSetEmpty!6980 () Bool)

(assert (=> b!770450 (= condSetEmpty!6980 (= (_1!5739 (_1!5740 (h!13959 (minValue!1426 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134))))))))) ((as const (Array Context!770 Bool)) false)))))

(assert (=> b!770321 (= tp!251824 e!496221)))

(assert (= (and b!770450 condSetEmpty!6980) setIsEmpty!6980))

(assert (= (and b!770450 (not condSetEmpty!6980)) setNonEmpty!6980))

(assert (= setNonEmpty!6980 b!770451))

(assert (= (and b!770321 ((_ is Cons!8558) (minValue!1426 (v!18688 (underlying!2521 (v!18689 (underlying!2522 (cache!1528 cacheFindLongestMatch!134)))))))) b!770450))

(declare-fun m!1039389 () Bool)

(assert (=> setNonEmpty!6980 m!1039389))

(declare-fun b!770460 () Bool)

(declare-fun tp!251887 () Bool)

(declare-fun tp!251888 () Bool)

(declare-fun e!496226 () Bool)

(assert (=> b!770460 (= e!496226 (and (inv!10881 (left!6383 (c!130246 totalInput!472))) tp!251888 (inv!10881 (right!6713 (c!130246 totalInput!472))) tp!251887))))

(declare-fun b!770462 () Bool)

(declare-fun e!496227 () Bool)

(declare-fun tp!251889 () Bool)

(assert (=> b!770462 (= e!496227 tp!251889)))

(declare-fun b!770461 () Bool)

(declare-fun inv!10890 (IArray!5763) Bool)

(assert (=> b!770461 (= e!496226 (and (inv!10890 (xs!5568 (c!130246 totalInput!472))) e!496227))))

(assert (=> b!770320 (= tp!251822 (and (inv!10881 (c!130246 totalInput!472)) e!496226))))

(assert (= (and b!770320 ((_ is Node!2881) (c!130246 totalInput!472))) b!770460))

(assert (= b!770461 b!770462))

(assert (= (and b!770320 ((_ is Leaf!4226) (c!130246 totalInput!472))) b!770461))

(declare-fun m!1039391 () Bool)

(assert (=> b!770460 m!1039391))

(declare-fun m!1039393 () Bool)

(assert (=> b!770460 m!1039393))

(declare-fun m!1039395 () Bool)

(assert (=> b!770461 m!1039395))

(assert (=> b!770320 m!1039239))

(declare-fun b!770475 () Bool)

(declare-fun e!496230 () Bool)

(declare-fun tp!251901 () Bool)

(assert (=> b!770475 (= e!496230 tp!251901)))

(declare-fun b!770474 () Bool)

(declare-fun tp!251904 () Bool)

(declare-fun tp!251903 () Bool)

(assert (=> b!770474 (= e!496230 (and tp!251904 tp!251903))))

(assert (=> b!770330 (= tp!251832 e!496230)))

(declare-fun b!770473 () Bool)

(assert (=> b!770473 (= e!496230 tp_is_empty!3727)))

(declare-fun b!770476 () Bool)

(declare-fun tp!251902 () Bool)

(declare-fun tp!251900 () Bool)

(assert (=> b!770476 (= e!496230 (and tp!251902 tp!251900))))

(assert (= (and b!770330 ((_ is ElementMatch!1983) (regex!1633 (h!13961 rulesArg!343)))) b!770473))

(assert (= (and b!770330 ((_ is Concat!3660) (regex!1633 (h!13961 rulesArg!343)))) b!770474))

(assert (= (and b!770330 ((_ is Star!1983) (regex!1633 (h!13961 rulesArg!343)))) b!770475))

(assert (= (and b!770330 ((_ is Union!1983) (regex!1633 (h!13961 rulesArg!343)))) b!770476))

(declare-fun b!770487 () Bool)

(declare-fun b_free!24309 () Bool)

(declare-fun b_next!24373 () Bool)

(assert (=> b!770487 (= b_free!24309 (not b_next!24373))))

(declare-fun tp!251914 () Bool)

(declare-fun b_and!71789 () Bool)

(assert (=> b!770487 (= tp!251914 b_and!71789)))

(declare-fun b_free!24311 () Bool)

(declare-fun b_next!24375 () Bool)

(assert (=> b!770487 (= b_free!24311 (not b_next!24375))))

(declare-fun tp!251915 () Bool)

(declare-fun b_and!71791 () Bool)

(assert (=> b!770487 (= tp!251915 b_and!71791)))

(declare-fun e!496241 () Bool)

(assert (=> b!770487 (= e!496241 (and tp!251914 tp!251915))))

(declare-fun b!770486 () Bool)

(declare-fun tp!251916 () Bool)

(declare-fun e!496240 () Bool)

(assert (=> b!770486 (= e!496240 (and tp!251916 (inv!10877 (tag!1895 (h!13961 (t!91856 rulesArg!343)))) (inv!10886 (transformation!1633 (h!13961 (t!91856 rulesArg!343)))) e!496241))))

(declare-fun b!770485 () Bool)

(declare-fun e!496242 () Bool)

(declare-fun tp!251913 () Bool)

(assert (=> b!770485 (= e!496242 (and e!496240 tp!251913))))

(assert (=> b!770333 (= tp!251839 e!496242)))

(assert (= b!770486 b!770487))

(assert (= b!770485 b!770486))

(assert (= (and b!770333 ((_ is Cons!8560) (t!91856 rulesArg!343))) b!770485))

(declare-fun m!1039397 () Bool)

(assert (=> b!770486 m!1039397))

(declare-fun m!1039399 () Bool)

(assert (=> b!770486 m!1039399))

(declare-fun b!770488 () Bool)

(declare-fun tp!251917 () Bool)

(declare-fun tp!251918 () Bool)

(declare-fun e!496243 () Bool)

(assert (=> b!770488 (= e!496243 (and (inv!10881 (left!6383 (c!130246 input!1432))) tp!251918 (inv!10881 (right!6713 (c!130246 input!1432))) tp!251917))))

(declare-fun b!770490 () Bool)

(declare-fun e!496244 () Bool)

(declare-fun tp!251919 () Bool)

(assert (=> b!770490 (= e!496244 tp!251919)))

(declare-fun b!770489 () Bool)

(assert (=> b!770489 (= e!496243 (and (inv!10890 (xs!5568 (c!130246 input!1432))) e!496244))))

(assert (=> b!770323 (= tp!251834 (and (inv!10881 (c!130246 input!1432)) e!496243))))

(assert (= (and b!770323 ((_ is Node!2881) (c!130246 input!1432))) b!770488))

(assert (= b!770489 b!770490))

(assert (= (and b!770323 ((_ is Leaf!4226) (c!130246 input!1432))) b!770489))

(declare-fun m!1039401 () Bool)

(assert (=> b!770488 m!1039401))

(declare-fun m!1039403 () Bool)

(assert (=> b!770488 m!1039403))

(declare-fun m!1039405 () Bool)

(assert (=> b!770489 m!1039405))

(assert (=> b!770323 m!1039235))

(declare-fun tp!251922 () Bool)

(declare-fun setRes!6981 () Bool)

(declare-fun setElem!6981 () Context!770)

(declare-fun setNonEmpty!6981 () Bool)

(declare-fun e!496245 () Bool)

(assert (=> setNonEmpty!6981 (= setRes!6981 (and tp!251922 (inv!10889 setElem!6981) e!496245))))

(declare-fun setRest!6981 () (InoxSet Context!770))

(assert (=> setNonEmpty!6981 (= (_1!5739 (_1!5740 (h!13959 mapDefault!5728))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6981 true) setRest!6981))))

(declare-fun setIsEmpty!6981 () Bool)

(assert (=> setIsEmpty!6981 setRes!6981))

(declare-fun b!770492 () Bool)

(declare-fun tp!251920 () Bool)

(assert (=> b!770492 (= e!496245 tp!251920)))

(declare-fun b!770491 () Bool)

(declare-fun e!496246 () Bool)

(declare-fun tp!251921 () Bool)

(assert (=> b!770491 (= e!496246 (and setRes!6981 tp!251921))))

(declare-fun condSetEmpty!6981 () Bool)

(assert (=> b!770491 (= condSetEmpty!6981 (= (_1!5739 (_1!5740 (h!13959 mapDefault!5728))) ((as const (Array Context!770 Bool)) false)))))

(assert (=> b!770325 (= tp!251821 e!496246)))

(assert (= (and b!770491 condSetEmpty!6981) setIsEmpty!6981))

(assert (= (and b!770491 (not condSetEmpty!6981)) setNonEmpty!6981))

(assert (= setNonEmpty!6981 b!770492))

(assert (= (and b!770325 ((_ is Cons!8558) mapDefault!5728)) b!770491))

(declare-fun m!1039407 () Bool)

(assert (=> setNonEmpty!6981 m!1039407))

(declare-fun b!770493 () Bool)

(declare-fun e!496249 () Bool)

(declare-fun tp!251926 () Bool)

(assert (=> b!770493 (= e!496249 tp!251926)))

(declare-fun e!496248 () Bool)

(assert (=> b!770334 (= tp!251845 e!496248)))

(declare-fun setElem!6982 () Context!770)

(declare-fun e!496247 () Bool)

(declare-fun setRes!6982 () Bool)

(declare-fun tp!251927 () Bool)

(declare-fun setNonEmpty!6982 () Bool)

(assert (=> setNonEmpty!6982 (= setRes!6982 (and tp!251927 (inv!10889 setElem!6982) e!496247))))

(declare-fun setRest!6982 () (InoxSet Context!770))

(assert (=> setNonEmpty!6982 (= (_2!5744 (h!13963 mapDefault!5726)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6982 true) setRest!6982))))

(declare-fun tp!251923 () Bool)

(declare-fun tp!251925 () Bool)

(declare-fun b!770494 () Bool)

(assert (=> b!770494 (= e!496248 (and tp!251925 (inv!10889 (_2!5743 (_1!5744 (h!13963 mapDefault!5726)))) e!496249 tp_is_empty!3727 setRes!6982 tp!251923))))

(declare-fun condSetEmpty!6982 () Bool)

(assert (=> b!770494 (= condSetEmpty!6982 (= (_2!5744 (h!13963 mapDefault!5726)) ((as const (Array Context!770 Bool)) false)))))

(declare-fun b!770495 () Bool)

(declare-fun tp!251924 () Bool)

(assert (=> b!770495 (= e!496247 tp!251924)))

(declare-fun setIsEmpty!6982 () Bool)

(assert (=> setIsEmpty!6982 setRes!6982))

(assert (= b!770494 b!770493))

(assert (= (and b!770494 condSetEmpty!6982) setIsEmpty!6982))

(assert (= (and b!770494 (not condSetEmpty!6982)) setNonEmpty!6982))

(assert (= setNonEmpty!6982 b!770495))

(assert (= (and b!770334 ((_ is Cons!8562) mapDefault!5726)) b!770494))

(declare-fun m!1039409 () Bool)

(assert (=> setNonEmpty!6982 m!1039409))

(declare-fun m!1039411 () Bool)

(assert (=> b!770494 m!1039411))

(declare-fun tp!251946 () Bool)

(declare-fun e!496264 () Bool)

(declare-fun e!496263 () Bool)

(declare-fun setRes!6988 () Bool)

(declare-fun mapValue!5731 () List!8575)

(declare-fun b!770510 () Bool)

(assert (=> b!770510 (= e!496263 (and (inv!10889 (_1!5741 (_1!5742 (h!13962 mapValue!5731)))) e!496264 tp_is_empty!3727 setRes!6988 tp!251946))))

(declare-fun condSetEmpty!6987 () Bool)

(assert (=> b!770510 (= condSetEmpty!6987 (= (_2!5742 (h!13962 mapValue!5731)) ((as const (Array Context!770 Bool)) false)))))

(declare-fun b!770511 () Bool)

(declare-fun e!496265 () Bool)

(declare-fun tp!251949 () Bool)

(assert (=> b!770511 (= e!496265 tp!251949)))

(declare-fun condMapEmpty!5731 () Bool)

(declare-fun mapDefault!5731 () List!8575)

(assert (=> mapNonEmpty!5727 (= condMapEmpty!5731 (= mapRest!5727 ((as const (Array (_ BitVec 32) List!8575)) mapDefault!5731)))))

(declare-fun e!496266 () Bool)

(declare-fun mapRes!5731 () Bool)

(assert (=> mapNonEmpty!5727 (= tp!251840 (and e!496266 mapRes!5731))))

(declare-fun mapNonEmpty!5731 () Bool)

(declare-fun tp!251948 () Bool)

(assert (=> mapNonEmpty!5731 (= mapRes!5731 (and tp!251948 e!496263))))

(declare-fun mapKey!5731 () (_ BitVec 32))

(declare-fun mapRest!5731 () (Array (_ BitVec 32) List!8575))

(assert (=> mapNonEmpty!5731 (= mapRest!5727 (store mapRest!5731 mapKey!5731 mapValue!5731))))

(declare-fun tp!251953 () Bool)

(declare-fun setNonEmpty!6987 () Bool)

(declare-fun setElem!6987 () Context!770)

(declare-fun e!496262 () Bool)

(assert (=> setNonEmpty!6987 (= setRes!6988 (and tp!251953 (inv!10889 setElem!6987) e!496262))))

(declare-fun setRest!6987 () (InoxSet Context!770))

(assert (=> setNonEmpty!6987 (= (_2!5742 (h!13962 mapValue!5731)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6987 true) setRest!6987))))

(declare-fun b!770512 () Bool)

(declare-fun tp!251954 () Bool)

(assert (=> b!770512 (= e!496262 tp!251954)))

(declare-fun b!770513 () Bool)

(declare-fun tp!251950 () Bool)

(assert (=> b!770513 (= e!496264 tp!251950)))

(declare-fun setIsEmpty!6987 () Bool)

(declare-fun setRes!6987 () Bool)

(assert (=> setIsEmpty!6987 setRes!6987))

(declare-fun mapIsEmpty!5731 () Bool)

(assert (=> mapIsEmpty!5731 mapRes!5731))

(declare-fun setIsEmpty!6988 () Bool)

(assert (=> setIsEmpty!6988 setRes!6988))

(declare-fun b!770514 () Bool)

(declare-fun tp!251951 () Bool)

(assert (=> b!770514 (= e!496266 (and (inv!10889 (_1!5741 (_1!5742 (h!13962 mapDefault!5731)))) e!496265 tp_is_empty!3727 setRes!6987 tp!251951))))

(declare-fun condSetEmpty!6988 () Bool)

(assert (=> b!770514 (= condSetEmpty!6988 (= (_2!5742 (h!13962 mapDefault!5731)) ((as const (Array Context!770 Bool)) false)))))

(declare-fun tp!251947 () Bool)

(declare-fun setElem!6988 () Context!770)

(declare-fun e!496267 () Bool)

(declare-fun setNonEmpty!6988 () Bool)

(assert (=> setNonEmpty!6988 (= setRes!6987 (and tp!251947 (inv!10889 setElem!6988) e!496267))))

(declare-fun setRest!6988 () (InoxSet Context!770))

(assert (=> setNonEmpty!6988 (= (_2!5742 (h!13962 mapDefault!5731)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6988 true) setRest!6988))))

(declare-fun b!770515 () Bool)

(declare-fun tp!251952 () Bool)

(assert (=> b!770515 (= e!496267 tp!251952)))

(assert (= (and mapNonEmpty!5727 condMapEmpty!5731) mapIsEmpty!5731))

(assert (= (and mapNonEmpty!5727 (not condMapEmpty!5731)) mapNonEmpty!5731))

(assert (= b!770510 b!770513))

(assert (= (and b!770510 condSetEmpty!6987) setIsEmpty!6988))

(assert (= (and b!770510 (not condSetEmpty!6987)) setNonEmpty!6987))

(assert (= setNonEmpty!6987 b!770512))

(assert (= (and mapNonEmpty!5731 ((_ is Cons!8561) mapValue!5731)) b!770510))

(assert (= b!770514 b!770511))

(assert (= (and b!770514 condSetEmpty!6988) setIsEmpty!6987))

(assert (= (and b!770514 (not condSetEmpty!6988)) setNonEmpty!6988))

(assert (= setNonEmpty!6988 b!770515))

(assert (= (and mapNonEmpty!5727 ((_ is Cons!8561) mapDefault!5731)) b!770514))

(declare-fun m!1039413 () Bool)

(assert (=> setNonEmpty!6987 m!1039413))

(declare-fun m!1039415 () Bool)

(assert (=> b!770510 m!1039415))

(declare-fun m!1039417 () Bool)

(assert (=> mapNonEmpty!5731 m!1039417))

(declare-fun m!1039419 () Bool)

(assert (=> b!770514 m!1039419))

(declare-fun m!1039421 () Bool)

(assert (=> setNonEmpty!6988 m!1039421))

(declare-fun b!770524 () Bool)

(declare-fun e!496274 () Bool)

(declare-fun tp!251963 () Bool)

(assert (=> b!770524 (= e!496274 tp!251963)))

(declare-fun setElem!6991 () Context!770)

(declare-fun setNonEmpty!6991 () Bool)

(declare-fun tp!251966 () Bool)

(declare-fun setRes!6991 () Bool)

(declare-fun e!496276 () Bool)

(assert (=> setNonEmpty!6991 (= setRes!6991 (and tp!251966 (inv!10889 setElem!6991) e!496276))))

(declare-fun setRest!6991 () (InoxSet Context!770))

(assert (=> setNonEmpty!6991 (= (_2!5742 (h!13962 mapValue!5726)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6991 true) setRest!6991))))

(declare-fun b!770525 () Bool)

(declare-fun tp!251965 () Bool)

(assert (=> b!770525 (= e!496276 tp!251965)))

(declare-fun e!496275 () Bool)

(declare-fun tp!251964 () Bool)

(declare-fun b!770526 () Bool)

(assert (=> b!770526 (= e!496275 (and (inv!10889 (_1!5741 (_1!5742 (h!13962 mapValue!5726)))) e!496274 tp_is_empty!3727 setRes!6991 tp!251964))))

(declare-fun condSetEmpty!6991 () Bool)

(assert (=> b!770526 (= condSetEmpty!6991 (= (_2!5742 (h!13962 mapValue!5726)) ((as const (Array Context!770 Bool)) false)))))

(assert (=> mapNonEmpty!5727 (= tp!251827 e!496275)))

(declare-fun setIsEmpty!6991 () Bool)

(assert (=> setIsEmpty!6991 setRes!6991))

(assert (= b!770526 b!770524))

(assert (= (and b!770526 condSetEmpty!6991) setIsEmpty!6991))

(assert (= (and b!770526 (not condSetEmpty!6991)) setNonEmpty!6991))

(assert (= setNonEmpty!6991 b!770525))

(assert (= (and mapNonEmpty!5727 ((_ is Cons!8561) mapValue!5726)) b!770526))

(declare-fun m!1039423 () Bool)

(assert (=> setNonEmpty!6991 m!1039423))

(declare-fun m!1039425 () Bool)

(assert (=> b!770526 m!1039425))

(declare-fun tp!251981 () Bool)

(declare-fun e!496288 () Bool)

(declare-fun setElem!6997 () Context!770)

(declare-fun setNonEmpty!6996 () Bool)

(declare-fun setRes!6996 () Bool)

(assert (=> setNonEmpty!6996 (= setRes!6996 (and tp!251981 (inv!10889 setElem!6997) e!496288))))

(declare-fun mapValue!5734 () List!8572)

(declare-fun setRest!6996 () (InoxSet Context!770))

(assert (=> setNonEmpty!6996 (= (_1!5739 (_1!5740 (h!13959 mapValue!5734))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6997 true) setRest!6996))))

(declare-fun mapIsEmpty!5734 () Bool)

(declare-fun mapRes!5734 () Bool)

(assert (=> mapIsEmpty!5734 mapRes!5734))

(declare-fun b!770537 () Bool)

(declare-fun e!496285 () Bool)

(declare-fun tp!251986 () Bool)

(assert (=> b!770537 (= e!496285 tp!251986)))

(declare-fun setIsEmpty!6996 () Bool)

(declare-fun setRes!6997 () Bool)

(assert (=> setIsEmpty!6996 setRes!6997))

(declare-fun b!770538 () Bool)

(declare-fun tp!251982 () Bool)

(assert (=> b!770538 (= e!496288 tp!251982)))

(declare-fun mapNonEmpty!5734 () Bool)

(declare-fun tp!251985 () Bool)

(declare-fun e!496287 () Bool)

(assert (=> mapNonEmpty!5734 (= mapRes!5734 (and tp!251985 e!496287))))

(declare-fun mapRest!5734 () (Array (_ BitVec 32) List!8572))

(declare-fun mapKey!5734 () (_ BitVec 32))

(assert (=> mapNonEmpty!5734 (= mapRest!5728 (store mapRest!5734 mapKey!5734 mapValue!5734))))

(declare-fun tp!251983 () Bool)

(declare-fun setNonEmpty!6997 () Bool)

(declare-fun setElem!6996 () Context!770)

(assert (=> setNonEmpty!6997 (= setRes!6997 (and tp!251983 (inv!10889 setElem!6996) e!496285))))

(declare-fun mapDefault!5734 () List!8572)

(declare-fun setRest!6997 () (InoxSet Context!770))

(assert (=> setNonEmpty!6997 (= (_1!5739 (_1!5740 (h!13959 mapDefault!5734))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6996 true) setRest!6997))))

(declare-fun condMapEmpty!5734 () Bool)

(assert (=> mapNonEmpty!5726 (= condMapEmpty!5734 (= mapRest!5728 ((as const (Array (_ BitVec 32) List!8572)) mapDefault!5734)))))

(declare-fun e!496286 () Bool)

(assert (=> mapNonEmpty!5726 (= tp!251846 (and e!496286 mapRes!5734))))

(declare-fun setIsEmpty!6997 () Bool)

(assert (=> setIsEmpty!6997 setRes!6996))

(declare-fun b!770539 () Bool)

(declare-fun tp!251987 () Bool)

(assert (=> b!770539 (= e!496286 (and setRes!6997 tp!251987))))

(declare-fun condSetEmpty!6997 () Bool)

(assert (=> b!770539 (= condSetEmpty!6997 (= (_1!5739 (_1!5740 (h!13959 mapDefault!5734))) ((as const (Array Context!770 Bool)) false)))))

(declare-fun b!770540 () Bool)

(declare-fun tp!251984 () Bool)

(assert (=> b!770540 (= e!496287 (and setRes!6996 tp!251984))))

(declare-fun condSetEmpty!6996 () Bool)

(assert (=> b!770540 (= condSetEmpty!6996 (= (_1!5739 (_1!5740 (h!13959 mapValue!5734))) ((as const (Array Context!770 Bool)) false)))))

(assert (= (and mapNonEmpty!5726 condMapEmpty!5734) mapIsEmpty!5734))

(assert (= (and mapNonEmpty!5726 (not condMapEmpty!5734)) mapNonEmpty!5734))

(assert (= (and b!770540 condSetEmpty!6996) setIsEmpty!6997))

(assert (= (and b!770540 (not condSetEmpty!6996)) setNonEmpty!6996))

(assert (= setNonEmpty!6996 b!770538))

(assert (= (and mapNonEmpty!5734 ((_ is Cons!8558) mapValue!5734)) b!770540))

(assert (= (and b!770539 condSetEmpty!6997) setIsEmpty!6996))

(assert (= (and b!770539 (not condSetEmpty!6997)) setNonEmpty!6997))

(assert (= setNonEmpty!6997 b!770537))

(assert (= (and mapNonEmpty!5726 ((_ is Cons!8558) mapDefault!5734)) b!770539))

(declare-fun m!1039427 () Bool)

(assert (=> setNonEmpty!6996 m!1039427))

(declare-fun m!1039429 () Bool)

(assert (=> mapNonEmpty!5734 m!1039429))

(declare-fun m!1039431 () Bool)

(assert (=> setNonEmpty!6997 m!1039431))

(declare-fun tp!251990 () Bool)

(declare-fun setRes!6998 () Bool)

(declare-fun e!496289 () Bool)

(declare-fun setElem!6998 () Context!770)

(declare-fun setNonEmpty!6998 () Bool)

(assert (=> setNonEmpty!6998 (= setRes!6998 (and tp!251990 (inv!10889 setElem!6998) e!496289))))

(declare-fun setRest!6998 () (InoxSet Context!770))

(assert (=> setNonEmpty!6998 (= (_1!5739 (_1!5740 (h!13959 mapValue!5728))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!6998 true) setRest!6998))))

(declare-fun setIsEmpty!6998 () Bool)

(assert (=> setIsEmpty!6998 setRes!6998))

(declare-fun b!770542 () Bool)

(declare-fun tp!251988 () Bool)

(assert (=> b!770542 (= e!496289 tp!251988)))

(declare-fun b!770541 () Bool)

(declare-fun e!496290 () Bool)

(declare-fun tp!251989 () Bool)

(assert (=> b!770541 (= e!496290 (and setRes!6998 tp!251989))))

(declare-fun condSetEmpty!6998 () Bool)

(assert (=> b!770541 (= condSetEmpty!6998 (= (_1!5739 (_1!5740 (h!13959 mapValue!5728))) ((as const (Array Context!770 Bool)) false)))))

(assert (=> mapNonEmpty!5726 (= tp!251837 e!496290)))

(assert (= (and b!770541 condSetEmpty!6998) setIsEmpty!6998))

(assert (= (and b!770541 (not condSetEmpty!6998)) setNonEmpty!6998))

(assert (= setNonEmpty!6998 b!770542))

(assert (= (and mapNonEmpty!5726 ((_ is Cons!8558) mapValue!5728)) b!770541))

(declare-fun m!1039433 () Bool)

(assert (=> setNonEmpty!6998 m!1039433))

(declare-fun b!770557 () Bool)

(declare-fun e!496304 () Bool)

(declare-fun tp!252022 () Bool)

(assert (=> b!770557 (= e!496304 tp!252022)))

(declare-fun b!770558 () Bool)

(declare-fun e!496305 () Bool)

(declare-fun tp!252019 () Bool)

(assert (=> b!770558 (= e!496305 tp!252019)))

(declare-fun mapIsEmpty!5737 () Bool)

(declare-fun mapRes!5737 () Bool)

(assert (=> mapIsEmpty!5737 mapRes!5737))

(declare-fun setIsEmpty!7003 () Bool)

(declare-fun setRes!7003 () Bool)

(assert (=> setIsEmpty!7003 setRes!7003))

(declare-fun b!770559 () Bool)

(declare-fun e!496303 () Bool)

(declare-fun tp!252013 () Bool)

(assert (=> b!770559 (= e!496303 tp!252013)))

(declare-fun setRes!7004 () Bool)

(declare-fun mapDefault!5737 () List!8576)

(declare-fun tp!252014 () Bool)

(declare-fun b!770561 () Bool)

(declare-fun e!496306 () Bool)

(declare-fun tp!252016 () Bool)

(assert (=> b!770561 (= e!496306 (and tp!252014 (inv!10889 (_2!5743 (_1!5744 (h!13963 mapDefault!5737)))) e!496304 tp_is_empty!3727 setRes!7004 tp!252016))))

(declare-fun condSetEmpty!7003 () Bool)

(assert (=> b!770561 (= condSetEmpty!7003 (= (_2!5744 (h!13963 mapDefault!5737)) ((as const (Array Context!770 Bool)) false)))))

(declare-fun tp!252018 () Bool)

(declare-fun b!770562 () Bool)

(declare-fun tp!252015 () Bool)

(declare-fun mapValue!5737 () List!8576)

(declare-fun e!496308 () Bool)

(assert (=> b!770562 (= e!496308 (and tp!252018 (inv!10889 (_2!5743 (_1!5744 (h!13963 mapValue!5737)))) e!496303 tp_is_empty!3727 setRes!7003 tp!252015))))

(declare-fun condSetEmpty!7004 () Bool)

(assert (=> b!770562 (= condSetEmpty!7004 (= (_2!5744 (h!13963 mapValue!5737)) ((as const (Array Context!770 Bool)) false)))))

(declare-fun setIsEmpty!7004 () Bool)

(assert (=> setIsEmpty!7004 setRes!7004))

(declare-fun mapNonEmpty!5737 () Bool)

(declare-fun tp!252021 () Bool)

(assert (=> mapNonEmpty!5737 (= mapRes!5737 (and tp!252021 e!496308))))

(declare-fun mapKey!5737 () (_ BitVec 32))

(declare-fun mapRest!5737 () (Array (_ BitVec 32) List!8576))

(assert (=> mapNonEmpty!5737 (= mapRest!5726 (store mapRest!5737 mapKey!5737 mapValue!5737))))

(declare-fun setNonEmpty!7003 () Bool)

(declare-fun setElem!7003 () Context!770)

(declare-fun tp!252023 () Bool)

(assert (=> setNonEmpty!7003 (= setRes!7004 (and tp!252023 (inv!10889 setElem!7003) e!496305))))

(declare-fun setRest!7004 () (InoxSet Context!770))

(assert (=> setNonEmpty!7003 (= (_2!5744 (h!13963 mapDefault!5737)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!7003 true) setRest!7004))))

(declare-fun setElem!7004 () Context!770)

(declare-fun tp!252017 () Bool)

(declare-fun e!496307 () Bool)

(declare-fun setNonEmpty!7004 () Bool)

(assert (=> setNonEmpty!7004 (= setRes!7003 (and tp!252017 (inv!10889 setElem!7004) e!496307))))

(declare-fun setRest!7003 () (InoxSet Context!770))

(assert (=> setNonEmpty!7004 (= (_2!5744 (h!13963 mapValue!5737)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!7004 true) setRest!7003))))

(declare-fun condMapEmpty!5737 () Bool)

(assert (=> mapNonEmpty!5728 (= condMapEmpty!5737 (= mapRest!5726 ((as const (Array (_ BitVec 32) List!8576)) mapDefault!5737)))))

(assert (=> mapNonEmpty!5728 (= tp!251836 (and e!496306 mapRes!5737))))

(declare-fun b!770560 () Bool)

(declare-fun tp!252020 () Bool)

(assert (=> b!770560 (= e!496307 tp!252020)))

(assert (= (and mapNonEmpty!5728 condMapEmpty!5737) mapIsEmpty!5737))

(assert (= (and mapNonEmpty!5728 (not condMapEmpty!5737)) mapNonEmpty!5737))

(assert (= b!770562 b!770559))

(assert (= (and b!770562 condSetEmpty!7004) setIsEmpty!7003))

(assert (= (and b!770562 (not condSetEmpty!7004)) setNonEmpty!7004))

(assert (= setNonEmpty!7004 b!770560))

(assert (= (and mapNonEmpty!5737 ((_ is Cons!8562) mapValue!5737)) b!770562))

(assert (= b!770561 b!770557))

(assert (= (and b!770561 condSetEmpty!7003) setIsEmpty!7004))

(assert (= (and b!770561 (not condSetEmpty!7003)) setNonEmpty!7003))

(assert (= setNonEmpty!7003 b!770558))

(assert (= (and mapNonEmpty!5728 ((_ is Cons!8562) mapDefault!5737)) b!770561))

(declare-fun m!1039435 () Bool)

(assert (=> b!770562 m!1039435))

(declare-fun m!1039437 () Bool)

(assert (=> setNonEmpty!7004 m!1039437))

(declare-fun m!1039439 () Bool)

(assert (=> mapNonEmpty!5737 m!1039439))

(declare-fun m!1039441 () Bool)

(assert (=> b!770561 m!1039441))

(declare-fun m!1039443 () Bool)

(assert (=> setNonEmpty!7003 m!1039443))

(declare-fun b!770563 () Bool)

(declare-fun e!496311 () Bool)

(declare-fun tp!252027 () Bool)

(assert (=> b!770563 (= e!496311 tp!252027)))

(declare-fun e!496310 () Bool)

(assert (=> mapNonEmpty!5728 (= tp!251841 e!496310)))

(declare-fun setRes!7005 () Bool)

(declare-fun setNonEmpty!7005 () Bool)

(declare-fun tp!252028 () Bool)

(declare-fun e!496309 () Bool)

(declare-fun setElem!7005 () Context!770)

(assert (=> setNonEmpty!7005 (= setRes!7005 (and tp!252028 (inv!10889 setElem!7005) e!496309))))

(declare-fun setRest!7005 () (InoxSet Context!770))

(assert (=> setNonEmpty!7005 (= (_2!5744 (h!13963 mapValue!5727)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!7005 true) setRest!7005))))

(declare-fun tp!252024 () Bool)

(declare-fun b!770564 () Bool)

(declare-fun tp!252026 () Bool)

(assert (=> b!770564 (= e!496310 (and tp!252026 (inv!10889 (_2!5743 (_1!5744 (h!13963 mapValue!5727)))) e!496311 tp_is_empty!3727 setRes!7005 tp!252024))))

(declare-fun condSetEmpty!7005 () Bool)

(assert (=> b!770564 (= condSetEmpty!7005 (= (_2!5744 (h!13963 mapValue!5727)) ((as const (Array Context!770 Bool)) false)))))

(declare-fun b!770565 () Bool)

(declare-fun tp!252025 () Bool)

(assert (=> b!770565 (= e!496309 tp!252025)))

(declare-fun setIsEmpty!7005 () Bool)

(assert (=> setIsEmpty!7005 setRes!7005))

(assert (= b!770564 b!770563))

(assert (= (and b!770564 condSetEmpty!7005) setIsEmpty!7005))

(assert (= (and b!770564 (not condSetEmpty!7005)) setNonEmpty!7005))

(assert (= setNonEmpty!7005 b!770565))

(assert (= (and mapNonEmpty!5728 ((_ is Cons!8562) mapValue!5727)) b!770564))

(declare-fun m!1039445 () Bool)

(assert (=> setNonEmpty!7005 m!1039445))

(declare-fun m!1039447 () Bool)

(assert (=> b!770564 m!1039447))

(declare-fun b!770566 () Bool)

(declare-fun e!496312 () Bool)

(declare-fun tp!252029 () Bool)

(assert (=> b!770566 (= e!496312 tp!252029)))

(declare-fun setRes!7006 () Bool)

(declare-fun setElem!7006 () Context!770)

(declare-fun e!496314 () Bool)

(declare-fun setNonEmpty!7006 () Bool)

(declare-fun tp!252032 () Bool)

(assert (=> setNonEmpty!7006 (= setRes!7006 (and tp!252032 (inv!10889 setElem!7006) e!496314))))

(declare-fun setRest!7006 () (InoxSet Context!770))

(assert (=> setNonEmpty!7006 (= (_2!5742 (h!13962 mapDefault!5727)) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!7006 true) setRest!7006))))

(declare-fun b!770567 () Bool)

(declare-fun tp!252031 () Bool)

(assert (=> b!770567 (= e!496314 tp!252031)))

(declare-fun e!496313 () Bool)

(declare-fun tp!252030 () Bool)

(declare-fun b!770568 () Bool)

(assert (=> b!770568 (= e!496313 (and (inv!10889 (_1!5741 (_1!5742 (h!13962 mapDefault!5727)))) e!496312 tp_is_empty!3727 setRes!7006 tp!252030))))

(declare-fun condSetEmpty!7006 () Bool)

(assert (=> b!770568 (= condSetEmpty!7006 (= (_2!5742 (h!13962 mapDefault!5727)) ((as const (Array Context!770 Bool)) false)))))

(assert (=> b!770354 (= tp!251838 e!496313)))

(declare-fun setIsEmpty!7006 () Bool)

(assert (=> setIsEmpty!7006 setRes!7006))

(assert (= b!770568 b!770566))

(assert (= (and b!770568 condSetEmpty!7006) setIsEmpty!7006))

(assert (= (and b!770568 (not condSetEmpty!7006)) setNonEmpty!7006))

(assert (= setNonEmpty!7006 b!770567))

(assert (= (and b!770354 ((_ is Cons!8561) mapDefault!5727)) b!770568))

(declare-fun m!1039449 () Bool)

(assert (=> setNonEmpty!7006 m!1039449))

(declare-fun m!1039451 () Bool)

(assert (=> b!770568 m!1039451))

(declare-fun b!770569 () Bool)

(declare-fun tp!252033 () Bool)

(declare-fun tp!252034 () Bool)

(declare-fun e!496315 () Bool)

(assert (=> b!770569 (= e!496315 (and (inv!10881 (left!6383 (c!130246 (totalInput!2116 cacheFindLongestMatch!134)))) tp!252034 (inv!10881 (right!6713 (c!130246 (totalInput!2116 cacheFindLongestMatch!134)))) tp!252033))))

(declare-fun b!770571 () Bool)

(declare-fun e!496316 () Bool)

(declare-fun tp!252035 () Bool)

(assert (=> b!770571 (= e!496316 tp!252035)))

(declare-fun b!770570 () Bool)

(assert (=> b!770570 (= e!496315 (and (inv!10890 (xs!5568 (c!130246 (totalInput!2116 cacheFindLongestMatch!134)))) e!496316))))

(assert (=> b!770329 (= tp!251823 (and (inv!10881 (c!130246 (totalInput!2116 cacheFindLongestMatch!134))) e!496315))))

(assert (= (and b!770329 ((_ is Node!2881) (c!130246 (totalInput!2116 cacheFindLongestMatch!134)))) b!770569))

(assert (= b!770570 b!770571))

(assert (= (and b!770329 ((_ is Leaf!4226) (c!130246 (totalInput!2116 cacheFindLongestMatch!134)))) b!770570))

(declare-fun m!1039453 () Bool)

(assert (=> b!770569 m!1039453))

(declare-fun m!1039455 () Bool)

(assert (=> b!770569 m!1039455))

(declare-fun m!1039457 () Bool)

(assert (=> b!770570 m!1039457))

(assert (=> b!770329 m!1039253))

(declare-fun b!770572 () Bool)

(declare-fun e!496317 () Bool)

(declare-fun tp!252036 () Bool)

(assert (=> b!770572 (= e!496317 tp!252036)))

(declare-fun e!496319 () Bool)

(declare-fun setRes!7007 () Bool)

(declare-fun tp!252039 () Bool)

(declare-fun setElem!7007 () Context!770)

(declare-fun setNonEmpty!7007 () Bool)

(assert (=> setNonEmpty!7007 (= setRes!7007 (and tp!252039 (inv!10889 setElem!7007) e!496319))))

(declare-fun setRest!7007 () (InoxSet Context!770))

(assert (=> setNonEmpty!7007 (= (_2!5742 (h!13962 (zeroValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!7007 true) setRest!7007))))

(declare-fun b!770573 () Bool)

(declare-fun tp!252038 () Bool)

(assert (=> b!770573 (= e!496319 tp!252038)))

(declare-fun tp!252037 () Bool)

(declare-fun e!496318 () Bool)

(declare-fun b!770574 () Bool)

(assert (=> b!770574 (= e!496318 (and (inv!10889 (_1!5741 (_1!5742 (h!13962 (zeroValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))))) e!496317 tp_is_empty!3727 setRes!7007 tp!252037))))

(declare-fun condSetEmpty!7007 () Bool)

(assert (=> b!770574 (= condSetEmpty!7007 (= (_2!5742 (h!13962 (zeroValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))) ((as const (Array Context!770 Bool)) false)))))

(assert (=> b!770339 (= tp!251833 e!496318)))

(declare-fun setIsEmpty!7007 () Bool)

(assert (=> setIsEmpty!7007 setRes!7007))

(assert (= b!770574 b!770572))

(assert (= (and b!770574 condSetEmpty!7007) setIsEmpty!7007))

(assert (= (and b!770574 (not condSetEmpty!7007)) setNonEmpty!7007))

(assert (= setNonEmpty!7007 b!770573))

(assert (= (and b!770339 ((_ is Cons!8561) (zeroValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))) b!770574))

(declare-fun m!1039459 () Bool)

(assert (=> setNonEmpty!7007 m!1039459))

(declare-fun m!1039461 () Bool)

(assert (=> b!770574 m!1039461))

(declare-fun b!770575 () Bool)

(declare-fun e!496320 () Bool)

(declare-fun tp!252040 () Bool)

(assert (=> b!770575 (= e!496320 tp!252040)))

(declare-fun setNonEmpty!7008 () Bool)

(declare-fun e!496322 () Bool)

(declare-fun setRes!7008 () Bool)

(declare-fun tp!252043 () Bool)

(declare-fun setElem!7008 () Context!770)

(assert (=> setNonEmpty!7008 (= setRes!7008 (and tp!252043 (inv!10889 setElem!7008) e!496322))))

(declare-fun setRest!7008 () (InoxSet Context!770))

(assert (=> setNonEmpty!7008 (= (_2!5742 (h!13962 (minValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!770 Bool)) false) setElem!7008 true) setRest!7008))))

(declare-fun b!770576 () Bool)

(declare-fun tp!252042 () Bool)

(assert (=> b!770576 (= e!496322 tp!252042)))

(declare-fun tp!252041 () Bool)

(declare-fun b!770577 () Bool)

(declare-fun e!496321 () Bool)

(assert (=> b!770577 (= e!496321 (and (inv!10889 (_1!5741 (_1!5742 (h!13962 (minValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))))) e!496320 tp_is_empty!3727 setRes!7008 tp!252041))))

(declare-fun condSetEmpty!7008 () Bool)

(assert (=> b!770577 (= condSetEmpty!7008 (= (_2!5742 (h!13962 (minValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))) ((as const (Array Context!770 Bool)) false)))))

(assert (=> b!770339 (= tp!251843 e!496321)))

(declare-fun setIsEmpty!7008 () Bool)

(assert (=> setIsEmpty!7008 setRes!7008))

(assert (= b!770577 b!770575))

(assert (= (and b!770577 condSetEmpty!7008) setIsEmpty!7008))

(assert (= (and b!770577 (not condSetEmpty!7008)) setNonEmpty!7008))

(assert (= setNonEmpty!7008 b!770576))

(assert (= (and b!770339 ((_ is Cons!8561) (minValue!1427 (v!18690 (underlying!2523 (v!18691 (underlying!2524 (cache!1529 cacheUp!653)))))))) b!770577))

(declare-fun m!1039463 () Bool)

(assert (=> setNonEmpty!7008 m!1039463))

(declare-fun m!1039465 () Bool)

(assert (=> b!770577 m!1039465))

(check-sat (not b!770437) (not b!770366) b_and!71785 (not b!770563) b_and!71789 (not b!770494) b_and!71773 (not b!770329) (not setNonEmpty!6997) b_and!71791 (not d!251567) (not b!770512) (not b!770371) (not b!770460) (not b_next!24371) (not b!770475) b_and!71781 (not b!770372) (not b!770567) (not b!770573) (not d!251549) (not setNonEmpty!6991) b_and!71783 (not b_next!24361) (not b!770542) (not b!770377) (not setNonEmpty!6988) (not b!770448) (not b!770557) (not b!770386) (not setNonEmpty!7006) (not b!770574) (not b!770400) (not b!770565) (not b!770422) (not b!770489) (not b!770570) (not b!770474) (not d!251561) b_and!71787 b_and!71775 (not b!770486) b_and!71777 (not b!770440) (not d!251555) (not b!770566) (not b_next!24369) (not b!770405) (not b!770320) (not b_next!24359) (not b!770539) (not b!770439) (not setNonEmpty!6975) (not setNonEmpty!6981) (not b!770540) (not b!770380) (not setNonEmpty!6996) (not b!770576) (not setNonEmpty!7007) (not b!770561) (not b!770401) (not d!251539) (not b!770441) (not b!770525) (not b!770541) (not setNonEmpty!7004) (not b!770423) (not b!770421) (not d!251559) (not b!770577) (not b!770493) (not d!251577) (not b_next!24373) (not b!770323) (not d!251541) (not setNonEmpty!6998) (not b!770476) (not b!770524) (not b!770427) (not b!770560) (not b!770568) (not b_next!24375) (not mapNonEmpty!5731) tp_is_empty!3727 (not d!251557) (not b!770451) (not setNonEmpty!6987) (not b_next!24367) (not b!770510) (not b!770438) (not b_next!24357) (not b!770450) (not b!770449) (not b!770495) (not setNonEmpty!7003) (not b!770526) (not setNonEmpty!6980) (not b!770406) (not b!770404) (not d!251543) (not d!251575) (not b!770569) (not b!770558) (not b!770538) (not b!770511) (not b!770575) b_and!71779 (not b!770436) (not b!770402) (not b!770363) (not b!770425) (not setNonEmpty!7005) (not b!770399) (not b!770571) (not setNonEmpty!6976) (not mapNonEmpty!5734) (not b_next!24365) (not b!770490) (not b!770387) (not b!770462) (not b!770461) (not b!770537) (not d!251569) (not b!770492) (not mapNonEmpty!5737) (not d!251571) (not b_next!24363) (not b!770485) (not b!770491) (not b!770389) (not b!770515) (not b!770572) (not b!770562) (not b!770383) (not b!770514) (not b!770361) (not b!770488) (not setNonEmpty!6979) (not b!770513) (not b!770564) (not setNonEmpty!7008) (not setNonEmpty!6982) (not d!251547) (not b!770559))
(check-sat b_and!71791 (not b_next!24371) b_and!71781 (not b_next!24373) (not b_next!24375) b_and!71779 (not b_next!24365) (not b_next!24363) b_and!71785 b_and!71789 b_and!71773 b_and!71783 (not b_next!24361) b_and!71787 b_and!71775 b_and!71777 (not b_next!24369) (not b_next!24359) (not b_next!24357) (not b_next!24367))

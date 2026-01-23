; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71286 () Bool)

(assert start!71286)

(declare-fun b!768638 () Bool)

(declare-fun b_free!24093 () Bool)

(declare-fun b_next!24157 () Bool)

(assert (=> b!768638 (= b_free!24093 (not b_next!24157))))

(declare-fun tp!250443 () Bool)

(declare-fun b_and!71573 () Bool)

(assert (=> b!768638 (= tp!250443 b_and!71573)))

(declare-fun b!768640 () Bool)

(declare-fun b_free!24095 () Bool)

(declare-fun b_next!24159 () Bool)

(assert (=> b!768640 (= b_free!24095 (not b_next!24159))))

(declare-fun tp!250428 () Bool)

(declare-fun b_and!71575 () Bool)

(assert (=> b!768640 (= tp!250428 b_and!71575)))

(declare-fun b!768631 () Bool)

(declare-fun b_free!24097 () Bool)

(declare-fun b_next!24161 () Bool)

(assert (=> b!768631 (= b_free!24097 (not b_next!24161))))

(declare-fun tp!250447 () Bool)

(declare-fun b_and!71577 () Bool)

(assert (=> b!768631 (= tp!250447 b_and!71577)))

(declare-fun b!768644 () Bool)

(declare-fun b_free!24099 () Bool)

(declare-fun b_next!24163 () Bool)

(assert (=> b!768644 (= b_free!24099 (not b_next!24163))))

(declare-fun tp!250431 () Bool)

(declare-fun b_and!71579 () Bool)

(assert (=> b!768644 (= tp!250431 b_and!71579)))

(declare-fun b_free!24101 () Bool)

(declare-fun b_next!24165 () Bool)

(assert (=> b!768644 (= b_free!24101 (not b_next!24165))))

(declare-fun tp!250444 () Bool)

(declare-fun b_and!71581 () Bool)

(assert (=> b!768644 (= tp!250444 b_and!71581)))

(declare-fun b!768612 () Bool)

(declare-fun b_free!24103 () Bool)

(declare-fun b_next!24167 () Bool)

(assert (=> b!768612 (= b_free!24103 (not b_next!24167))))

(declare-fun tp!250424 () Bool)

(declare-fun b_and!71583 () Bool)

(assert (=> b!768612 (= tp!250424 b_and!71583)))

(declare-fun b!768641 () Bool)

(declare-fun b_free!24105 () Bool)

(declare-fun b_next!24169 () Bool)

(assert (=> b!768641 (= b_free!24105 (not b_next!24169))))

(declare-fun tp!250439 () Bool)

(declare-fun b_and!71585 () Bool)

(assert (=> b!768641 (= tp!250439 b_and!71585)))

(declare-fun b!768616 () Bool)

(declare-fun b_free!24107 () Bool)

(declare-fun b_next!24171 () Bool)

(assert (=> b!768616 (= b_free!24107 (not b_next!24171))))

(declare-fun tp!250434 () Bool)

(declare-fun b_and!71587 () Bool)

(assert (=> b!768616 (= tp!250434 b_and!71587)))

(declare-fun e!494566 () Bool)

(declare-fun e!494588 () Bool)

(assert (=> b!768612 (= e!494566 (and e!494588 tp!250424))))

(declare-fun mapIsEmpty!5600 () Bool)

(declare-fun mapRes!5602 () Bool)

(assert (=> mapIsEmpty!5600 mapRes!5602))

(declare-fun mapNonEmpty!5600 () Bool)

(declare-fun tp!250429 () Bool)

(declare-fun tp!250441 () Bool)

(assert (=> mapNonEmpty!5600 (= mapRes!5602 (and tp!250429 tp!250441))))

(declare-datatypes ((C!4544 0))(
  ( (C!4545 (val!2502 Int)) )
))
(declare-datatypes ((Regex!1971 0))(
  ( (ElementMatch!1971 (c!130213 C!4544)) (Concat!3637 (regOne!4454 Regex!1971) (regTwo!4454 Regex!1971)) (EmptyExpr!1971) (Star!1971 (reg!2300 Regex!1971)) (EmptyLang!1971) (Union!1971 (regOne!4455 Regex!1971) (regTwo!4455 Regex!1971)) )
))
(declare-datatypes ((List!8491 0))(
  ( (Nil!8477) (Cons!8477 (h!13878 Regex!1971) (t!91773 List!8491)) )
))
(declare-datatypes ((Context!746 0))(
  ( (Context!747 (exprs!873 List!8491)) )
))
(declare-datatypes ((tuple2!9846 0))(
  ( (tuple2!9847 (_1!5669 Context!746) (_2!5669 C!4544)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9848 0))(
  ( (tuple2!9849 (_1!5670 tuple2!9846) (_2!5670 (InoxSet Context!746))) )
))
(declare-datatypes ((List!8492 0))(
  ( (Nil!8478) (Cons!8478 (h!13879 tuple2!9848) (t!91774 List!8492)) )
))
(declare-fun mapValue!5600 () List!8492)

(declare-datatypes ((array!4025 0))(
  ( (array!4026 (arr!1796 (Array (_ BitVec 32) (_ BitVec 64))) (size!6907 (_ BitVec 32))) )
))
(declare-datatypes ((array!4027 0))(
  ( (array!4028 (arr!1797 (Array (_ BitVec 32) List!8492)) (size!6908 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2270 0))(
  ( (LongMapFixedSize!2271 (defaultEntry!1491 Int) (mask!3005 (_ BitVec 32)) (extraKeys!1382 (_ BitVec 32)) (zeroValue!1392 List!8492) (minValue!1392 List!8492) (_size!2379 (_ BitVec 32)) (_keys!1429 array!4025) (_values!1414 array!4027) (_vacant!1196 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4481 0))(
  ( (Cell!4482 (v!18619 LongMapFixedSize!2270)) )
))
(declare-datatypes ((MutLongMap!1135 0))(
  ( (LongMap!1135 (underlying!2453 Cell!4481)) (MutLongMapExt!1134 (__x!6722 Int)) )
))
(declare-datatypes ((Cell!4483 0))(
  ( (Cell!4484 (v!18620 MutLongMap!1135)) )
))
(declare-datatypes ((Hashable!1107 0))(
  ( (HashableExt!1106 (__x!6723 Int)) )
))
(declare-datatypes ((MutableMap!1107 0))(
  ( (MutableMapExt!1106 (__x!6724 Int)) (HashMap!1107 (underlying!2454 Cell!4483) (hashF!3015 Hashable!1107) (_size!2380 (_ BitVec 32)) (defaultValue!1258 Int)) )
))
(declare-datatypes ((CacheUp!622 0))(
  ( (CacheUp!623 (cache!1494 MutableMap!1107)) )
))
(declare-fun cacheUp!653 () CacheUp!622)

(declare-fun mapRest!5601 () (Array (_ BitVec 32) List!8492))

(declare-fun mapKey!5600 () (_ BitVec 32))

(assert (=> mapNonEmpty!5600 (= (arr!1797 (_values!1414 (v!18619 (underlying!2453 (v!18620 (underlying!2454 (cache!1494 cacheUp!653))))))) (store mapRest!5601 mapKey!5600 mapValue!5600))))

(declare-fun b!768613 () Bool)

(declare-fun e!494583 () Bool)

(declare-fun tp!250423 () Bool)

(declare-fun e!494568 () Bool)

(declare-datatypes ((List!8493 0))(
  ( (Nil!8479) (Cons!8479 (h!13880 (_ BitVec 16)) (t!91775 List!8493)) )
))
(declare-datatypes ((TokenValue!1666 0))(
  ( (FloatLiteralValue!3332 (text!12107 List!8493)) (TokenValueExt!1665 (__x!6725 Int)) (Broken!8330 (value!51879 List!8493)) (Object!1679) (End!1666) (Def!1666) (Underscore!1666) (Match!1666) (Else!1666) (Error!1666) (Case!1666) (If!1666) (Extends!1666) (Abstract!1666) (Class!1666) (Val!1666) (DelimiterValue!3332 (del!1726 List!8493)) (KeywordValue!1672 (value!51880 List!8493)) (CommentValue!3332 (value!51881 List!8493)) (WhitespaceValue!3332 (value!51882 List!8493)) (IndentationValue!1666 (value!51883 List!8493)) (String!10075) (Int32!1666) (Broken!8331 (value!51884 List!8493)) (Boolean!1667) (Unit!13078) (OperatorValue!1669 (op!1726 List!8493)) (IdentifierValue!3332 (value!51885 List!8493)) (IdentifierValue!3333 (value!51886 List!8493)) (WhitespaceValue!3333 (value!51887 List!8493)) (True!3332) (False!3332) (Broken!8332 (value!51888 List!8493)) (Broken!8333 (value!51889 List!8493)) (True!3333) (RightBrace!1666) (RightBracket!1666) (Colon!1666) (Null!1666) (Comma!1666) (LeftBracket!1666) (False!3333) (LeftBrace!1666) (ImaginaryLiteralValue!1666 (text!12108 List!8493)) (StringLiteralValue!4998 (value!51890 List!8493)) (EOFValue!1666 (value!51891 List!8493)) (IdentValue!1666 (value!51892 List!8493)) (DelimiterValue!3333 (value!51893 List!8493)) (DedentValue!1666 (value!51894 List!8493)) (NewLineValue!1666 (value!51895 List!8493)) (IntegerValue!4998 (value!51896 (_ BitVec 32)) (text!12109 List!8493)) (IntegerValue!4999 (value!51897 Int) (text!12110 List!8493)) (Times!1666) (Or!1666) (Equal!1666) (Minus!1666) (Broken!8334 (value!51898 List!8493)) (And!1666) (Div!1666) (LessEqual!1666) (Mod!1666) (Concat!3638) (Not!1666) (Plus!1666) (SpaceValue!1666 (value!51899 List!8493)) (IntegerValue!5000 (value!51900 Int) (text!12111 List!8493)) (StringLiteralValue!4999 (text!12112 List!8493)) (FloatLiteralValue!3333 (text!12113 List!8493)) (BytesLiteralValue!1666 (value!51901 List!8493)) (CommentValue!3333 (value!51902 List!8493)) (StringLiteralValue!5000 (value!51903 List!8493)) (ErrorTokenValue!1666 (msg!1727 List!8493)) )
))
(declare-datatypes ((List!8494 0))(
  ( (Nil!8480) (Cons!8480 (h!13881 C!4544) (t!91776 List!8494)) )
))
(declare-datatypes ((IArray!5741 0))(
  ( (IArray!5742 (innerList!2928 List!8494)) )
))
(declare-datatypes ((Conc!2870 0))(
  ( (Node!2870 (left!6362 Conc!2870) (right!6692 Conc!2870) (csize!5970 Int) (cheight!3081 Int)) (Leaf!4209 (xs!5557 IArray!5741) (csize!5971 Int)) (Empty!2870) )
))
(declare-datatypes ((BalanceConc!5752 0))(
  ( (BalanceConc!5753 (c!130214 Conc!2870)) )
))
(declare-datatypes ((TokenValueInjection!3068 0))(
  ( (TokenValueInjection!3069 (toValue!2614 Int) (toChars!2473 Int)) )
))
(declare-datatypes ((String!10076 0))(
  ( (String!10077 (value!51904 String)) )
))
(declare-datatypes ((Rule!3044 0))(
  ( (Rule!3045 (regex!1622 Regex!1971) (tag!1884 String!10076) (isSeparator!1622 Bool) (transformation!1622 TokenValueInjection!3068)) )
))
(declare-datatypes ((List!8495 0))(
  ( (Nil!8481) (Cons!8481 (h!13882 Rule!3044) (t!91777 List!8495)) )
))
(declare-fun rulesArg!343 () List!8495)

(declare-fun inv!10793 (String!10076) Bool)

(declare-fun inv!10795 (TokenValueInjection!3068) Bool)

(assert (=> b!768613 (= e!494568 (and tp!250423 (inv!10793 (tag!1884 (h!13882 rulesArg!343))) (inv!10795 (transformation!1622 (h!13882 rulesArg!343))) e!494583))))

(declare-fun b!768614 () Bool)

(declare-fun e!494567 () Bool)

(declare-fun e!494584 () Bool)

(assert (=> b!768614 (= e!494567 e!494584)))

(declare-fun b!768615 () Bool)

(declare-fun e!494580 () Bool)

(declare-fun e!494574 () Bool)

(declare-fun lt!313363 () MutLongMap!1135)

(get-info :version)

(assert (=> b!768615 (= e!494580 (and e!494574 ((_ is LongMap!1135) lt!313363)))))

(assert (=> b!768615 (= lt!313363 (v!18620 (underlying!2454 (cache!1494 cacheUp!653))))))

(declare-fun e!494575 () Bool)

(declare-fun e!494596 () Bool)

(assert (=> b!768616 (= e!494575 (and e!494596 tp!250434))))

(declare-fun b!768617 () Bool)

(declare-fun e!494578 () Bool)

(assert (=> b!768617 (= e!494574 e!494578)))

(declare-fun b!768618 () Bool)

(declare-fun res!337421 () Bool)

(declare-fun e!494590 () Bool)

(assert (=> b!768618 (=> (not res!337421) (not e!494590))))

(declare-datatypes ((LexerInterface!1424 0))(
  ( (LexerInterfaceExt!1421 (__x!6726 Int)) (Lexer!1422) )
))
(declare-fun thiss!15653 () LexerInterface!1424)

(declare-fun rulesValidInductive!571 (LexerInterface!1424 List!8495) Bool)

(assert (=> b!768618 (= res!337421 (rulesValidInductive!571 thiss!15653 rulesArg!343))))

(declare-fun b!768619 () Bool)

(declare-fun res!337420 () Bool)

(declare-fun e!494579 () Bool)

(assert (=> b!768619 (=> (not res!337420) (not e!494579))))

(declare-datatypes ((tuple2!9850 0))(
  ( (tuple2!9851 (_1!5671 (InoxSet Context!746)) (_2!5671 Int)) )
))
(declare-datatypes ((tuple2!9852 0))(
  ( (tuple2!9853 (_1!5672 tuple2!9850) (_2!5672 Int)) )
))
(declare-datatypes ((List!8496 0))(
  ( (Nil!8482) (Cons!8482 (h!13883 tuple2!9852) (t!91778 List!8496)) )
))
(declare-datatypes ((array!4029 0))(
  ( (array!4030 (arr!1798 (Array (_ BitVec 32) List!8496)) (size!6909 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1108 0))(
  ( (HashableExt!1107 (__x!6727 Int)) )
))
(declare-datatypes ((LongMapFixedSize!2272 0))(
  ( (LongMapFixedSize!2273 (defaultEntry!1492 Int) (mask!3006 (_ BitVec 32)) (extraKeys!1383 (_ BitVec 32)) (zeroValue!1393 List!8496) (minValue!1393 List!8496) (_size!2381 (_ BitVec 32)) (_keys!1430 array!4025) (_values!1415 array!4029) (_vacant!1197 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4485 0))(
  ( (Cell!4486 (v!18621 LongMapFixedSize!2272)) )
))
(declare-datatypes ((MutLongMap!1136 0))(
  ( (LongMap!1136 (underlying!2455 Cell!4485)) (MutLongMapExt!1135 (__x!6728 Int)) )
))
(declare-datatypes ((Cell!4487 0))(
  ( (Cell!4488 (v!18622 MutLongMap!1136)) )
))
(declare-datatypes ((MutableMap!1108 0))(
  ( (MutableMapExt!1107 (__x!6729 Int)) (HashMap!1108 (underlying!2456 Cell!4487) (hashF!3016 Hashable!1108) (_size!2382 (_ BitVec 32)) (defaultValue!1259 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!292 0))(
  ( (CacheFindLongestMatch!293 (cache!1495 MutableMap!1108) (totalInput!2105 BalanceConc!5752)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!292)

(declare-fun valid!926 (CacheFindLongestMatch!292) Bool)

(assert (=> b!768619 (= res!337420 (valid!926 cacheFindLongestMatch!134))))

(declare-fun b!768620 () Bool)

(declare-fun e!494593 () Bool)

(assert (=> b!768620 (= e!494584 e!494593)))

(declare-fun b!768621 () Bool)

(declare-fun res!337422 () Bool)

(assert (=> b!768621 (=> (not res!337422) (not e!494579))))

(declare-datatypes ((tuple3!954 0))(
  ( (tuple3!955 (_1!5673 Regex!1971) (_2!5673 Context!746) (_3!746 C!4544)) )
))
(declare-datatypes ((tuple2!9854 0))(
  ( (tuple2!9855 (_1!5674 tuple3!954) (_2!5674 (InoxSet Context!746))) )
))
(declare-datatypes ((List!8497 0))(
  ( (Nil!8483) (Cons!8483 (h!13884 tuple2!9854) (t!91779 List!8497)) )
))
(declare-datatypes ((array!4031 0))(
  ( (array!4032 (arr!1799 (Array (_ BitVec 32) List!8497)) (size!6910 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2274 0))(
  ( (LongMapFixedSize!2275 (defaultEntry!1493 Int) (mask!3007 (_ BitVec 32)) (extraKeys!1384 (_ BitVec 32)) (zeroValue!1394 List!8497) (minValue!1394 List!8497) (_size!2383 (_ BitVec 32)) (_keys!1431 array!4025) (_values!1416 array!4031) (_vacant!1198 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4489 0))(
  ( (Cell!4490 (v!18623 LongMapFixedSize!2274)) )
))
(declare-datatypes ((MutLongMap!1137 0))(
  ( (LongMap!1137 (underlying!2457 Cell!4489)) (MutLongMapExt!1136 (__x!6730 Int)) )
))
(declare-datatypes ((Cell!4491 0))(
  ( (Cell!4492 (v!18624 MutLongMap!1137)) )
))
(declare-datatypes ((Hashable!1109 0))(
  ( (HashableExt!1108 (__x!6731 Int)) )
))
(declare-datatypes ((MutableMap!1109 0))(
  ( (MutableMapExt!1108 (__x!6732 Int)) (HashMap!1109 (underlying!2458 Cell!4491) (hashF!3017 Hashable!1109) (_size!2384 (_ BitVec 32)) (defaultValue!1260 Int)) )
))
(declare-datatypes ((CacheDown!626 0))(
  ( (CacheDown!627 (cache!1496 MutableMap!1109)) )
))
(declare-fun cacheDown!666 () CacheDown!626)

(declare-fun valid!927 (CacheDown!626) Bool)

(assert (=> b!768621 (= res!337422 (valid!927 cacheDown!666))))

(declare-fun b!768622 () Bool)

(declare-fun e!494570 () Bool)

(assert (=> b!768622 (= e!494570 e!494566)))

(declare-fun b!768623 () Bool)

(assert (=> b!768623 (= e!494590 e!494579)))

(declare-fun res!337424 () Bool)

(assert (=> b!768623 (=> (not res!337424) (not e!494579))))

(declare-fun lt!313362 () List!8494)

(declare-fun totalInput!472 () BalanceConc!5752)

(declare-fun isSuffix!207 (List!8494 List!8494) Bool)

(declare-fun list!3423 (BalanceConc!5752) List!8494)

(assert (=> b!768623 (= res!337424 (isSuffix!207 lt!313362 (list!3423 totalInput!472)))))

(declare-fun input!1432 () BalanceConc!5752)

(assert (=> b!768623 (= lt!313362 (list!3423 input!1432))))

(declare-fun res!337419 () Bool)

(assert (=> start!71286 (=> (not res!337419) (not e!494590))))

(assert (=> start!71286 (= res!337419 ((_ is Lexer!1422) thiss!15653))))

(assert (=> start!71286 e!494590))

(declare-fun e!494581 () Bool)

(assert (=> start!71286 e!494581))

(declare-fun e!494587 () Bool)

(declare-fun inv!10796 (BalanceConc!5752) Bool)

(assert (=> start!71286 (and (inv!10796 input!1432) e!494587)))

(declare-fun e!494597 () Bool)

(declare-fun inv!10797 (CacheFindLongestMatch!292) Bool)

(assert (=> start!71286 (and (inv!10797 cacheFindLongestMatch!134) e!494597)))

(assert (=> start!71286 true))

(declare-fun e!494573 () Bool)

(declare-fun inv!10798 (CacheUp!622) Bool)

(assert (=> start!71286 (and (inv!10798 cacheUp!653) e!494573)))

(declare-fun e!494598 () Bool)

(assert (=> start!71286 (and (inv!10796 totalInput!472) e!494598)))

(declare-fun inv!10799 (CacheDown!626) Bool)

(assert (=> start!71286 (and (inv!10799 cacheDown!666) e!494570)))

(declare-fun b!768624 () Bool)

(declare-fun e!494569 () Bool)

(declare-fun tp!250425 () Bool)

(assert (=> b!768624 (= e!494569 (and tp!250425 mapRes!5602))))

(declare-fun condMapEmpty!5602 () Bool)

(declare-fun mapDefault!5600 () List!8492)

(assert (=> b!768624 (= condMapEmpty!5602 (= (arr!1797 (_values!1414 (v!18619 (underlying!2453 (v!18620 (underlying!2454 (cache!1494 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8492)) mapDefault!5600)))))

(declare-fun b!768625 () Bool)

(declare-fun lt!313364 () MutLongMap!1137)

(assert (=> b!768625 (= e!494588 (and e!494567 ((_ is LongMap!1137) lt!313364)))))

(assert (=> b!768625 (= lt!313364 (v!18624 (underlying!2458 (cache!1496 cacheDown!666))))))

(declare-fun b!768626 () Bool)

(declare-fun res!337425 () Bool)

(assert (=> b!768626 (=> (not res!337425) (not e!494579))))

(declare-fun valid!928 (CacheUp!622) Bool)

(assert (=> b!768626 (= res!337425 (valid!928 cacheUp!653))))

(declare-fun b!768627 () Bool)

(declare-fun e!494576 () Bool)

(declare-fun tp!250426 () Bool)

(declare-fun mapRes!5601 () Bool)

(assert (=> b!768627 (= e!494576 (and tp!250426 mapRes!5601))))

(declare-fun condMapEmpty!5600 () Bool)

(declare-fun mapDefault!5601 () List!8496)

(assert (=> b!768627 (= condMapEmpty!5600 (= (arr!1798 (_values!1415 (v!18621 (underlying!2455 (v!18622 (underlying!2456 (cache!1495 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8496)) mapDefault!5601)))))

(declare-fun b!768628 () Bool)

(declare-fun e!494591 () Bool)

(declare-fun tp!250437 () Bool)

(declare-fun inv!10800 (Conc!2870) Bool)

(assert (=> b!768628 (= e!494591 (and (inv!10800 (c!130214 (totalInput!2105 cacheFindLongestMatch!134))) tp!250437))))

(declare-fun b!768629 () Bool)

(declare-fun e!494595 () Bool)

(declare-fun lt!313360 () MutLongMap!1136)

(assert (=> b!768629 (= e!494596 (and e!494595 ((_ is LongMap!1136) lt!313360)))))

(assert (=> b!768629 (= lt!313360 (v!18622 (underlying!2456 (cache!1495 cacheFindLongestMatch!134))))))

(declare-fun b!768630 () Bool)

(declare-fun res!337418 () Bool)

(assert (=> b!768630 (=> (not res!337418) (not e!494579))))

(assert (=> b!768630 (= res!337418 (= (totalInput!2105 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun e!494592 () Bool)

(declare-fun tp!250427 () Bool)

(declare-fun tp!250435 () Bool)

(declare-fun array_inv!1303 (array!4025) Bool)

(declare-fun array_inv!1304 (array!4027) Bool)

(assert (=> b!768631 (= e!494592 (and tp!250447 tp!250435 tp!250427 (array_inv!1303 (_keys!1429 (v!18619 (underlying!2453 (v!18620 (underlying!2454 (cache!1494 cacheUp!653))))))) (array_inv!1304 (_values!1414 (v!18619 (underlying!2453 (v!18620 (underlying!2454 (cache!1494 cacheUp!653))))))) e!494569))))

(declare-fun b!768632 () Bool)

(declare-fun e!494585 () Bool)

(declare-fun e!494582 () Bool)

(assert (=> b!768632 (= e!494585 e!494582)))

(declare-fun b!768633 () Bool)

(assert (=> b!768633 (= e!494579 (not true))))

(declare-fun isPrefix!981 (List!8494 List!8494) Bool)

(assert (=> b!768633 (isPrefix!981 lt!313362 lt!313362)))

(declare-datatypes ((Unit!13079 0))(
  ( (Unit!13080) )
))
(declare-fun lt!313361 () Unit!13079)

(declare-fun lemmaIsPrefixRefl!692 (List!8494 List!8494) Unit!13079)

(assert (=> b!768633 (= lt!313361 (lemmaIsPrefixRefl!692 lt!313362 lt!313362))))

(declare-fun b!768634 () Bool)

(declare-fun tp!250449 () Bool)

(assert (=> b!768634 (= e!494598 (and (inv!10800 (c!130214 totalInput!472)) tp!250449))))

(declare-fun mapIsEmpty!5601 () Bool)

(assert (=> mapIsEmpty!5601 mapRes!5601))

(declare-fun b!768635 () Bool)

(declare-fun e!494589 () Bool)

(assert (=> b!768635 (= e!494573 e!494589)))

(declare-fun b!768636 () Bool)

(declare-fun res!337423 () Bool)

(assert (=> b!768636 (=> (not res!337423) (not e!494590))))

(declare-fun isEmpty!5201 (List!8495) Bool)

(assert (=> b!768636 (= res!337423 (not (isEmpty!5201 rulesArg!343)))))

(declare-fun b!768637 () Bool)

(declare-fun e!494571 () Bool)

(declare-fun tp!250440 () Bool)

(declare-fun mapRes!5600 () Bool)

(assert (=> b!768637 (= e!494571 (and tp!250440 mapRes!5600))))

(declare-fun condMapEmpty!5601 () Bool)

(declare-fun mapDefault!5602 () List!8497)

(assert (=> b!768637 (= condMapEmpty!5601 (= (arr!1799 (_values!1416 (v!18623 (underlying!2457 (v!18624 (underlying!2458 (cache!1496 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8497)) mapDefault!5602)))))

(declare-fun tp!250432 () Bool)

(declare-fun tp!250450 () Bool)

(declare-fun array_inv!1305 (array!4031) Bool)

(assert (=> b!768638 (= e!494593 (and tp!250443 tp!250450 tp!250432 (array_inv!1303 (_keys!1431 (v!18623 (underlying!2457 (v!18624 (underlying!2458 (cache!1496 cacheDown!666))))))) (array_inv!1305 (_values!1416 (v!18623 (underlying!2457 (v!18624 (underlying!2458 (cache!1496 cacheDown!666))))))) e!494571))))

(declare-fun b!768639 () Bool)

(assert (=> b!768639 (= e!494578 e!494592)))

(declare-fun tp!250448 () Bool)

(declare-fun tp!250442 () Bool)

(declare-fun array_inv!1306 (array!4029) Bool)

(assert (=> b!768640 (= e!494582 (and tp!250428 tp!250442 tp!250448 (array_inv!1303 (_keys!1430 (v!18621 (underlying!2455 (v!18622 (underlying!2456 (cache!1495 cacheFindLongestMatch!134))))))) (array_inv!1306 (_values!1415 (v!18621 (underlying!2455 (v!18622 (underlying!2456 (cache!1495 cacheFindLongestMatch!134))))))) e!494576))))

(assert (=> b!768641 (= e!494589 (and e!494580 tp!250439))))

(declare-fun b!768642 () Bool)

(declare-fun tp!250445 () Bool)

(assert (=> b!768642 (= e!494581 (and e!494568 tp!250445))))

(declare-fun b!768643 () Bool)

(assert (=> b!768643 (= e!494597 (and e!494575 (inv!10796 (totalInput!2105 cacheFindLongestMatch!134)) e!494591))))

(assert (=> b!768644 (= e!494583 (and tp!250431 tp!250444))))

(declare-fun b!768645 () Bool)

(assert (=> b!768645 (= e!494595 e!494585)))

(declare-fun mapIsEmpty!5602 () Bool)

(assert (=> mapIsEmpty!5602 mapRes!5600))

(declare-fun mapNonEmpty!5601 () Bool)

(declare-fun tp!250446 () Bool)

(declare-fun tp!250430 () Bool)

(assert (=> mapNonEmpty!5601 (= mapRes!5601 (and tp!250446 tp!250430))))

(declare-fun mapValue!5601 () List!8496)

(declare-fun mapRest!5602 () (Array (_ BitVec 32) List!8496))

(declare-fun mapKey!5601 () (_ BitVec 32))

(assert (=> mapNonEmpty!5601 (= (arr!1798 (_values!1415 (v!18621 (underlying!2455 (v!18622 (underlying!2456 (cache!1495 cacheFindLongestMatch!134))))))) (store mapRest!5602 mapKey!5601 mapValue!5601))))

(declare-fun b!768646 () Bool)

(declare-fun tp!250438 () Bool)

(assert (=> b!768646 (= e!494587 (and (inv!10800 (c!130214 input!1432)) tp!250438))))

(declare-fun mapNonEmpty!5602 () Bool)

(declare-fun tp!250436 () Bool)

(declare-fun tp!250433 () Bool)

(assert (=> mapNonEmpty!5602 (= mapRes!5600 (and tp!250436 tp!250433))))

(declare-fun mapRest!5600 () (Array (_ BitVec 32) List!8497))

(declare-fun mapValue!5602 () List!8497)

(declare-fun mapKey!5602 () (_ BitVec 32))

(assert (=> mapNonEmpty!5602 (= (arr!1799 (_values!1416 (v!18623 (underlying!2457 (v!18624 (underlying!2458 (cache!1496 cacheDown!666))))))) (store mapRest!5600 mapKey!5602 mapValue!5602))))

(assert (= (and start!71286 res!337419) b!768618))

(assert (= (and b!768618 res!337421) b!768636))

(assert (= (and b!768636 res!337423) b!768623))

(assert (= (and b!768623 res!337424) b!768626))

(assert (= (and b!768626 res!337425) b!768621))

(assert (= (and b!768621 res!337422) b!768619))

(assert (= (and b!768619 res!337420) b!768630))

(assert (= (and b!768630 res!337418) b!768633))

(assert (= b!768613 b!768644))

(assert (= b!768642 b!768613))

(assert (= (and start!71286 ((_ is Cons!8481) rulesArg!343)) b!768642))

(assert (= start!71286 b!768646))

(assert (= (and b!768627 condMapEmpty!5600) mapIsEmpty!5601))

(assert (= (and b!768627 (not condMapEmpty!5600)) mapNonEmpty!5601))

(assert (= b!768640 b!768627))

(assert (= b!768632 b!768640))

(assert (= b!768645 b!768632))

(assert (= (and b!768629 ((_ is LongMap!1136) (v!18622 (underlying!2456 (cache!1495 cacheFindLongestMatch!134))))) b!768645))

(assert (= b!768616 b!768629))

(assert (= (and b!768643 ((_ is HashMap!1108) (cache!1495 cacheFindLongestMatch!134))) b!768616))

(assert (= b!768643 b!768628))

(assert (= start!71286 b!768643))

(assert (= (and b!768624 condMapEmpty!5602) mapIsEmpty!5600))

(assert (= (and b!768624 (not condMapEmpty!5602)) mapNonEmpty!5600))

(assert (= b!768631 b!768624))

(assert (= b!768639 b!768631))

(assert (= b!768617 b!768639))

(assert (= (and b!768615 ((_ is LongMap!1135) (v!18620 (underlying!2454 (cache!1494 cacheUp!653))))) b!768617))

(assert (= b!768641 b!768615))

(assert (= (and b!768635 ((_ is HashMap!1107) (cache!1494 cacheUp!653))) b!768641))

(assert (= start!71286 b!768635))

(assert (= start!71286 b!768634))

(assert (= (and b!768637 condMapEmpty!5601) mapIsEmpty!5602))

(assert (= (and b!768637 (not condMapEmpty!5601)) mapNonEmpty!5602))

(assert (= b!768638 b!768637))

(assert (= b!768620 b!768638))

(assert (= b!768614 b!768620))

(assert (= (and b!768625 ((_ is LongMap!1137) (v!18624 (underlying!2458 (cache!1496 cacheDown!666))))) b!768614))

(assert (= b!768612 b!768625))

(assert (= (and b!768622 ((_ is HashMap!1109) (cache!1496 cacheDown!666))) b!768612))

(assert (= start!71286 b!768622))

(declare-fun m!1038199 () Bool)

(assert (=> b!768626 m!1038199))

(declare-fun m!1038201 () Bool)

(assert (=> b!768619 m!1038201))

(declare-fun m!1038203 () Bool)

(assert (=> b!768638 m!1038203))

(declare-fun m!1038205 () Bool)

(assert (=> b!768638 m!1038205))

(declare-fun m!1038207 () Bool)

(assert (=> b!768633 m!1038207))

(declare-fun m!1038209 () Bool)

(assert (=> b!768633 m!1038209))

(declare-fun m!1038211 () Bool)

(assert (=> b!768613 m!1038211))

(declare-fun m!1038213 () Bool)

(assert (=> b!768613 m!1038213))

(declare-fun m!1038215 () Bool)

(assert (=> b!768636 m!1038215))

(declare-fun m!1038217 () Bool)

(assert (=> b!768634 m!1038217))

(declare-fun m!1038219 () Bool)

(assert (=> b!768618 m!1038219))

(declare-fun m!1038221 () Bool)

(assert (=> mapNonEmpty!5601 m!1038221))

(declare-fun m!1038223 () Bool)

(assert (=> b!768621 m!1038223))

(declare-fun m!1038225 () Bool)

(assert (=> b!768646 m!1038225))

(declare-fun m!1038227 () Bool)

(assert (=> b!768628 m!1038227))

(declare-fun m!1038229 () Bool)

(assert (=> mapNonEmpty!5602 m!1038229))

(declare-fun m!1038231 () Bool)

(assert (=> mapNonEmpty!5600 m!1038231))

(declare-fun m!1038233 () Bool)

(assert (=> start!71286 m!1038233))

(declare-fun m!1038235 () Bool)

(assert (=> start!71286 m!1038235))

(declare-fun m!1038237 () Bool)

(assert (=> start!71286 m!1038237))

(declare-fun m!1038239 () Bool)

(assert (=> start!71286 m!1038239))

(declare-fun m!1038241 () Bool)

(assert (=> start!71286 m!1038241))

(declare-fun m!1038243 () Bool)

(assert (=> b!768640 m!1038243))

(declare-fun m!1038245 () Bool)

(assert (=> b!768640 m!1038245))

(declare-fun m!1038247 () Bool)

(assert (=> b!768623 m!1038247))

(assert (=> b!768623 m!1038247))

(declare-fun m!1038249 () Bool)

(assert (=> b!768623 m!1038249))

(declare-fun m!1038251 () Bool)

(assert (=> b!768623 m!1038251))

(declare-fun m!1038253 () Bool)

(assert (=> b!768643 m!1038253))

(declare-fun m!1038255 () Bool)

(assert (=> b!768631 m!1038255))

(declare-fun m!1038257 () Bool)

(assert (=> b!768631 m!1038257))

(check-sat b_and!71575 (not b!768638) (not b!768631) (not b!768643) (not b_next!24167) (not b!768640) b_and!71583 (not b!768613) (not b_next!24163) (not b!768633) (not b!768626) (not b!768637) b_and!71579 b_and!71585 (not b!768634) (not b!768636) (not mapNonEmpty!5600) b_and!71581 (not b!768618) b_and!71587 (not b!768624) (not b!768642) (not mapNonEmpty!5602) b_and!71577 (not b!768627) (not b!768628) (not b!768646) (not b_next!24159) (not b!768621) b_and!71573 (not b_next!24171) (not b_next!24157) (not b!768619) (not start!71286) (not b_next!24161) (not mapNonEmpty!5601) (not b!768623) (not b_next!24169) (not b_next!24165))
(check-sat b_and!71575 (not b_next!24163) b_and!71581 b_and!71587 b_and!71577 (not b_next!24167) (not b_next!24161) b_and!71583 b_and!71579 b_and!71585 (not b_next!24159) b_and!71573 (not b_next!24171) (not b_next!24157) (not b_next!24169) (not b_next!24165))

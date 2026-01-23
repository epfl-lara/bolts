; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71582 () Bool)

(assert start!71582)

(declare-fun b!772387 () Bool)

(declare-fun b_free!24469 () Bool)

(declare-fun b_next!24533 () Bool)

(assert (=> b!772387 (= b_free!24469 (not b_next!24533))))

(declare-fun tp!253457 () Bool)

(declare-fun b_and!71949 () Bool)

(assert (=> b!772387 (= tp!253457 b_and!71949)))

(declare-fun b_free!24471 () Bool)

(declare-fun b_next!24535 () Bool)

(assert (=> b!772387 (= b_free!24471 (not b_next!24535))))

(declare-fun tp!253453 () Bool)

(declare-fun b_and!71951 () Bool)

(assert (=> b!772387 (= tp!253453 b_and!71951)))

(declare-fun b!772366 () Bool)

(declare-fun b_free!24473 () Bool)

(declare-fun b_next!24537 () Bool)

(assert (=> b!772366 (= b_free!24473 (not b_next!24537))))

(declare-fun tp!253443 () Bool)

(declare-fun b_and!71953 () Bool)

(assert (=> b!772366 (= tp!253443 b_and!71953)))

(declare-fun b!772379 () Bool)

(declare-fun b_free!24475 () Bool)

(declare-fun b_next!24539 () Bool)

(assert (=> b!772379 (= b_free!24475 (not b_next!24539))))

(declare-fun tp!253446 () Bool)

(declare-fun b_and!71955 () Bool)

(assert (=> b!772379 (= tp!253446 b_and!71955)))

(declare-fun b!772385 () Bool)

(declare-fun b_free!24477 () Bool)

(declare-fun b_next!24541 () Bool)

(assert (=> b!772385 (= b_free!24477 (not b_next!24541))))

(declare-fun tp!253461 () Bool)

(declare-fun b_and!71957 () Bool)

(assert (=> b!772385 (= tp!253461 b_and!71957)))

(declare-fun b!772392 () Bool)

(declare-fun b_free!24479 () Bool)

(declare-fun b_next!24543 () Bool)

(assert (=> b!772392 (= b_free!24479 (not b_next!24543))))

(declare-fun tp!253465 () Bool)

(declare-fun b_and!71959 () Bool)

(assert (=> b!772392 (= tp!253465 b_and!71959)))

(declare-fun b!772361 () Bool)

(declare-fun b_free!24481 () Bool)

(declare-fun b_next!24545 () Bool)

(assert (=> b!772361 (= b_free!24481 (not b_next!24545))))

(declare-fun tp!253441 () Bool)

(declare-fun b_and!71961 () Bool)

(assert (=> b!772361 (= tp!253441 b_and!71961)))

(declare-fun b!772384 () Bool)

(declare-fun b_free!24483 () Bool)

(declare-fun b_next!24547 () Bool)

(assert (=> b!772384 (= b_free!24483 (not b_next!24547))))

(declare-fun tp!253456 () Bool)

(declare-fun b_and!71963 () Bool)

(assert (=> b!772384 (= tp!253456 b_and!71963)))

(declare-fun b!772356 () Bool)

(declare-fun res!338396 () Bool)

(declare-fun e!497876 () Bool)

(assert (=> b!772356 (=> (not res!338396) (not e!497876))))

(declare-datatypes ((C!4588 0))(
  ( (C!4589 (val!2524 Int)) )
))
(declare-datatypes ((Regex!1993 0))(
  ( (ElementMatch!1993 (c!130303 C!4588)) (Concat!3678 (regOne!4498 Regex!1993) (regTwo!4498 Regex!1993)) (EmptyExpr!1993) (Star!1993 (reg!2322 Regex!1993)) (EmptyLang!1993) (Union!1993 (regOne!4499 Regex!1993) (regTwo!4499 Regex!1993)) )
))
(declare-datatypes ((List!8634 0))(
  ( (Nil!8620) (Cons!8620 (h!14021 Regex!1993) (t!91916 List!8634)) )
))
(declare-datatypes ((Context!790 0))(
  ( (Context!791 (exprs!895 List!8634)) )
))
(declare-datatypes ((tuple2!10086 0))(
  ( (tuple2!10087 (_1!5823 Context!790) (_2!5823 C!4588)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10088 0))(
  ( (tuple2!10089 (_1!5824 tuple2!10086) (_2!5824 (InoxSet Context!790))) )
))
(declare-datatypes ((List!8635 0))(
  ( (Nil!8621) (Cons!8621 (h!14022 tuple2!10088) (t!91917 List!8635)) )
))
(declare-datatypes ((array!4219 0))(
  ( (array!4220 (arr!1881 (Array (_ BitVec 32) (_ BitVec 64))) (size!7010 (_ BitVec 32))) )
))
(declare-datatypes ((array!4221 0))(
  ( (array!4222 (arr!1882 (Array (_ BitVec 32) List!8635)) (size!7011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2396 0))(
  ( (LongMapFixedSize!2397 (defaultEntry!1554 Int) (mask!3079 (_ BitVec 32)) (extraKeys!1445 (_ BitVec 32)) (zeroValue!1455 List!8635) (minValue!1455 List!8635) (_size!2505 (_ BitVec 32)) (_keys!1492 array!4219) (_values!1477 array!4221) (_vacant!1259 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4733 0))(
  ( (Cell!4734 (v!18753 LongMapFixedSize!2396)) )
))
(declare-datatypes ((MutLongMap!1198 0))(
  ( (LongMap!1198 (underlying!2579 Cell!4733)) (MutLongMapExt!1197 (__x!6949 Int)) )
))
(declare-datatypes ((Cell!4735 0))(
  ( (Cell!4736 (v!18754 MutLongMap!1198)) )
))
(declare-datatypes ((Hashable!1170 0))(
  ( (HashableExt!1169 (__x!6950 Int)) )
))
(declare-datatypes ((MutableMap!1170 0))(
  ( (MutableMapExt!1169 (__x!6951 Int)) (HashMap!1170 (underlying!2580 Cell!4735) (hashF!3078 Hashable!1170) (_size!2506 (_ BitVec 32)) (defaultValue!1321 Int)) )
))
(declare-datatypes ((CacheUp!664 0))(
  ( (CacheUp!665 (cache!1557 MutableMap!1170)) )
))
(declare-fun cacheUp!653 () CacheUp!664)

(declare-fun valid!970 (CacheUp!664) Bool)

(assert (=> b!772356 (= res!338396 (valid!970 cacheUp!653))))

(declare-fun b!772357 () Bool)

(declare-fun e!497855 () Bool)

(declare-fun e!497852 () Bool)

(assert (=> b!772357 (= e!497855 e!497852)))

(declare-fun b!772358 () Bool)

(declare-datatypes ((tuple2!10090 0))(
  ( (tuple2!10091 (_1!5825 (InoxSet Context!790)) (_2!5825 Int)) )
))
(declare-datatypes ((tuple2!10092 0))(
  ( (tuple2!10093 (_1!5826 tuple2!10090) (_2!5826 Int)) )
))
(declare-datatypes ((List!8636 0))(
  ( (Nil!8622) (Cons!8622 (h!14023 tuple2!10092) (t!91918 List!8636)) )
))
(declare-datatypes ((Hashable!1171 0))(
  ( (HashableExt!1170 (__x!6952 Int)) )
))
(declare-datatypes ((List!8637 0))(
  ( (Nil!8623) (Cons!8623 (h!14024 C!4588) (t!91919 List!8637)) )
))
(declare-datatypes ((IArray!5781 0))(
  ( (IArray!5782 (innerList!2948 List!8637)) )
))
(declare-datatypes ((Conc!2890 0))(
  ( (Node!2890 (left!6405 Conc!2890) (right!6735 Conc!2890) (csize!6010 Int) (cheight!3101 Int)) (Leaf!4240 (xs!5577 IArray!5781) (csize!6011 Int)) (Empty!2890) )
))
(declare-datatypes ((tuple3!998 0))(
  ( (tuple3!999 (_1!5827 Regex!1993) (_2!5827 Context!790) (_3!780 C!4588)) )
))
(declare-datatypes ((tuple2!10094 0))(
  ( (tuple2!10095 (_1!5828 tuple3!998) (_2!5828 (InoxSet Context!790))) )
))
(declare-datatypes ((List!8638 0))(
  ( (Nil!8624) (Cons!8624 (h!14025 tuple2!10094) (t!91920 List!8638)) )
))
(declare-datatypes ((array!4223 0))(
  ( (array!4224 (arr!1883 (Array (_ BitVec 32) List!8638)) (size!7012 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2398 0))(
  ( (LongMapFixedSize!2399 (defaultEntry!1555 Int) (mask!3080 (_ BitVec 32)) (extraKeys!1446 (_ BitVec 32)) (zeroValue!1456 List!8638) (minValue!1456 List!8638) (_size!2507 (_ BitVec 32)) (_keys!1493 array!4219) (_values!1478 array!4223) (_vacant!1260 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4737 0))(
  ( (Cell!4738 (v!18755 LongMapFixedSize!2398)) )
))
(declare-datatypes ((MutLongMap!1199 0))(
  ( (LongMap!1199 (underlying!2581 Cell!4737)) (MutLongMapExt!1198 (__x!6953 Int)) )
))
(declare-datatypes ((array!4225 0))(
  ( (array!4226 (arr!1884 (Array (_ BitVec 32) List!8636)) (size!7013 (_ BitVec 32))) )
))
(declare-datatypes ((List!8639 0))(
  ( (Nil!8625) (Cons!8625 (h!14026 (_ BitVec 16)) (t!91921 List!8639)) )
))
(declare-datatypes ((TokenValue!1685 0))(
  ( (FloatLiteralValue!3370 (text!12240 List!8639)) (TokenValueExt!1684 (__x!6954 Int)) (Broken!8425 (value!52414 List!8639)) (Object!1698) (End!1685) (Def!1685) (Underscore!1685) (Match!1685) (Else!1685) (Error!1685) (Case!1685) (If!1685) (Extends!1685) (Abstract!1685) (Class!1685) (Val!1685) (DelimiterValue!3370 (del!1745 List!8639)) (KeywordValue!1691 (value!52415 List!8639)) (CommentValue!3370 (value!52416 List!8639)) (WhitespaceValue!3370 (value!52417 List!8639)) (IndentationValue!1685 (value!52418 List!8639)) (String!10176) (Int32!1685) (Broken!8426 (value!52419 List!8639)) (Boolean!1686) (Unit!13127) (OperatorValue!1688 (op!1745 List!8639)) (IdentifierValue!3370 (value!52420 List!8639)) (IdentifierValue!3371 (value!52421 List!8639)) (WhitespaceValue!3371 (value!52422 List!8639)) (True!3370) (False!3370) (Broken!8427 (value!52423 List!8639)) (Broken!8428 (value!52424 List!8639)) (True!3371) (RightBrace!1685) (RightBracket!1685) (Colon!1685) (Null!1685) (Comma!1685) (LeftBracket!1685) (False!3371) (LeftBrace!1685) (ImaginaryLiteralValue!1685 (text!12241 List!8639)) (StringLiteralValue!5055 (value!52425 List!8639)) (EOFValue!1685 (value!52426 List!8639)) (IdentValue!1685 (value!52427 List!8639)) (DelimiterValue!3371 (value!52428 List!8639)) (DedentValue!1685 (value!52429 List!8639)) (NewLineValue!1685 (value!52430 List!8639)) (IntegerValue!5055 (value!52431 (_ BitVec 32)) (text!12242 List!8639)) (IntegerValue!5056 (value!52432 Int) (text!12243 List!8639)) (Times!1685) (Or!1685) (Equal!1685) (Minus!1685) (Broken!8429 (value!52433 List!8639)) (And!1685) (Div!1685) (LessEqual!1685) (Mod!1685) (Concat!3679) (Not!1685) (Plus!1685) (SpaceValue!1685 (value!52434 List!8639)) (IntegerValue!5057 (value!52435 Int) (text!12244 List!8639)) (StringLiteralValue!5056 (text!12245 List!8639)) (FloatLiteralValue!3371 (text!12246 List!8639)) (BytesLiteralValue!1685 (value!52436 List!8639)) (CommentValue!3371 (value!52437 List!8639)) (StringLiteralValue!5057 (value!52438 List!8639)) (ErrorTokenValue!1685 (msg!1746 List!8639)) )
))
(declare-datatypes ((LongMapFixedSize!2400 0))(
  ( (LongMapFixedSize!2401 (defaultEntry!1556 Int) (mask!3081 (_ BitVec 32)) (extraKeys!1447 (_ BitVec 32)) (zeroValue!1457 List!8636) (minValue!1457 List!8636) (_size!2508 (_ BitVec 32)) (_keys!1494 array!4219) (_values!1479 array!4225) (_vacant!1261 (_ BitVec 32))) )
))
(declare-datatypes ((String!10177 0))(
  ( (String!10178 (value!52439 String)) )
))
(declare-datatypes ((BalanceConc!5792 0))(
  ( (BalanceConc!5793 (c!130304 Conc!2890)) )
))
(declare-datatypes ((TokenValueInjection!3106 0))(
  ( (TokenValueInjection!3107 (toValue!2633 Int) (toChars!2492 Int)) )
))
(declare-datatypes ((Rule!3082 0))(
  ( (Rule!3083 (regex!1641 Regex!1993) (tag!1903 String!10177) (isSeparator!1641 Bool) (transformation!1641 TokenValueInjection!3106)) )
))
(declare-datatypes ((Token!2956 0))(
  ( (Token!2957 (value!52440 TokenValue!1685) (rule!2768 Rule!3082) (size!7014 Int) (originalCharacters!1903 List!8637)) )
))
(declare-datatypes ((tuple2!10096 0))(
  ( (tuple2!10097 (_1!5829 Token!2956) (_2!5829 BalanceConc!5792)) )
))
(declare-datatypes ((Option!1877 0))(
  ( (None!1876) (Some!1876 (v!18756 tuple2!10096)) )
))
(declare-datatypes ((Cell!4739 0))(
  ( (Cell!4740 (v!18757 LongMapFixedSize!2400)) )
))
(declare-datatypes ((MutLongMap!1200 0))(
  ( (LongMap!1200 (underlying!2582 Cell!4739)) (MutLongMapExt!1199 (__x!6955 Int)) )
))
(declare-datatypes ((Cell!4741 0))(
  ( (Cell!4742 (v!18758 MutLongMap!1200)) )
))
(declare-datatypes ((MutableMap!1171 0))(
  ( (MutableMapExt!1170 (__x!6956 Int)) (HashMap!1171 (underlying!2583 Cell!4741) (hashF!3079 Hashable!1171) (_size!2509 (_ BitVec 32)) (defaultValue!1322 Int)) )
))
(declare-datatypes ((Hashable!1172 0))(
  ( (HashableExt!1171 (__x!6957 Int)) )
))
(declare-datatypes ((Cell!4743 0))(
  ( (Cell!4744 (v!18759 MutLongMap!1199)) )
))
(declare-datatypes ((MutableMap!1172 0))(
  ( (MutableMapExt!1171 (__x!6958 Int)) (HashMap!1172 (underlying!2584 Cell!4743) (hashF!3080 Hashable!1172) (_size!2510 (_ BitVec 32)) (defaultValue!1323 Int)) )
))
(declare-datatypes ((CacheDown!670 0))(
  ( (CacheDown!671 (cache!1558 MutableMap!1172)) )
))
(declare-datatypes ((CacheFindLongestMatch!332 0))(
  ( (CacheFindLongestMatch!333 (cache!1559 MutableMap!1171) (totalInput!2129 BalanceConc!5792)) )
))
(declare-datatypes ((tuple4!562 0))(
  ( (tuple4!563 (_1!5830 Option!1877) (_2!5830 CacheUp!664) (_3!781 CacheFindLongestMatch!332) (_4!281 CacheDown!670)) )
))
(declare-fun e!497867 () tuple4!562)

(declare-datatypes ((tuple2!10098 0))(
  ( (tuple2!10099 (_1!5831 Option!1877) (_2!5831 Option!1877)) )
))
(declare-fun lt!313918 () tuple2!10098)

(declare-datatypes ((tuple4!564 0))(
  ( (tuple4!565 (_1!5832 Option!1877) (_2!5832 CacheUp!664) (_3!782 CacheDown!670) (_4!282 CacheFindLongestMatch!332)) )
))
(declare-fun lt!313923 () tuple4!564)

(get-info :version)

(assert (=> b!772358 (= e!497867 (tuple4!563 (ite (and ((_ is None!1876) (_1!5831 lt!313918)) ((_ is None!1876) (_2!5831 lt!313918))) None!1876 (ite ((_ is None!1876) (_2!5831 lt!313918)) (_1!5831 lt!313918) (ite ((_ is None!1876) (_1!5831 lt!313918)) (_2!5831 lt!313918) (ite (>= (size!7014 (_1!5829 (v!18756 (_1!5831 lt!313918)))) (size!7014 (_1!5829 (v!18756 (_2!5831 lt!313918))))) (_1!5831 lt!313918) (_2!5831 lt!313918))))) (_2!5832 lt!313923) (_4!282 lt!313923) (_3!782 lt!313923)))))

(declare-fun lt!313917 () tuple4!564)

(declare-fun call!46839 () tuple4!564)

(assert (=> b!772358 (= lt!313917 call!46839)))

(declare-fun input!1432 () BalanceConc!5792)

(declare-datatypes ((LexerInterface!1443 0))(
  ( (LexerInterfaceExt!1440 (__x!6959 Int)) (Lexer!1441) )
))
(declare-fun thiss!15653 () LexerInterface!1443)

(declare-fun totalInput!472 () BalanceConc!5792)

(declare-datatypes ((List!8640 0))(
  ( (Nil!8626) (Cons!8626 (h!14027 Rule!3082) (t!91922 List!8640)) )
))
(declare-fun rulesArg!343 () List!8640)

(declare-fun maxPrefixZipperSequenceV2Mem!81 (LexerInterface!1443 List!8640 BalanceConc!5792 BalanceConc!5792 CacheUp!664 CacheDown!670 CacheFindLongestMatch!332) tuple4!564)

(assert (=> b!772358 (= lt!313923 (maxPrefixZipperSequenceV2Mem!81 thiss!15653 (t!91922 rulesArg!343) input!1432 totalInput!472 (_2!5832 lt!313917) (_3!782 lt!313917) (_4!282 lt!313917)))))

(assert (=> b!772358 (= lt!313918 (tuple2!10099 (_1!5832 lt!313917) (_1!5832 lt!313923)))))

(declare-fun b!772359 () Bool)

(declare-fun e!497881 () Bool)

(declare-fun e!497874 () Bool)

(declare-fun lt!313922 () MutLongMap!1199)

(assert (=> b!772359 (= e!497881 (and e!497874 ((_ is LongMap!1199) lt!313922)))))

(declare-fun cacheDown!666 () CacheDown!670)

(assert (=> b!772359 (= lt!313922 (v!18759 (underlying!2584 (cache!1558 cacheDown!666))))))

(declare-fun e!497860 () Bool)

(declare-fun tp!253452 () Bool)

(declare-fun e!497871 () Bool)

(declare-fun tp!253442 () Bool)

(declare-fun array_inv!1364 (array!4219) Bool)

(declare-fun array_inv!1365 (array!4221) Bool)

(assert (=> b!772361 (= e!497860 (and tp!253441 tp!253442 tp!253452 (array_inv!1364 (_keys!1492 (v!18753 (underlying!2579 (v!18754 (underlying!2580 (cache!1557 cacheUp!653))))))) (array_inv!1365 (_values!1477 (v!18753 (underlying!2579 (v!18754 (underlying!2580 (cache!1557 cacheUp!653))))))) e!497871))))

(declare-fun e!497854 () Bool)

(declare-fun e!497868 () Bool)

(declare-fun b!772362 () Bool)

(declare-fun tp!253454 () Bool)

(declare-fun inv!10950 (String!10177) Bool)

(declare-fun inv!10955 (TokenValueInjection!3106) Bool)

(assert (=> b!772362 (= e!497854 (and tp!253454 (inv!10950 (tag!1903 (h!14027 rulesArg!343))) (inv!10955 (transformation!1641 (h!14027 rulesArg!343))) e!497868))))

(declare-fun b!772363 () Bool)

(declare-fun e!497875 () Bool)

(declare-fun e!497879 () Bool)

(declare-fun lt!313919 () MutLongMap!1198)

(assert (=> b!772363 (= e!497875 (and e!497879 ((_ is LongMap!1198) lt!313919)))))

(assert (=> b!772363 (= lt!313919 (v!18754 (underlying!2580 (cache!1557 cacheUp!653))))))

(declare-fun b!772364 () Bool)

(declare-fun e!497862 () Bool)

(declare-fun e!497866 () Bool)

(assert (=> b!772364 (= e!497862 e!497866)))

(declare-fun mapNonEmpty!5852 () Bool)

(declare-fun mapRes!5854 () Bool)

(declare-fun tp!253468 () Bool)

(declare-fun tp!253464 () Bool)

(assert (=> mapNonEmpty!5852 (= mapRes!5854 (and tp!253468 tp!253464))))

(declare-fun mapValue!5852 () List!8635)

(declare-fun mapRest!5852 () (Array (_ BitVec 32) List!8635))

(declare-fun mapKey!5852 () (_ BitVec 32))

(assert (=> mapNonEmpty!5852 (= (arr!1882 (_values!1477 (v!18753 (underlying!2579 (v!18754 (underlying!2580 (cache!1557 cacheUp!653))))))) (store mapRest!5852 mapKey!5852 mapValue!5852))))

(declare-fun b!772365 () Bool)

(declare-fun lt!313926 () tuple4!564)

(assert (=> b!772365 (= e!497867 (tuple4!563 (_1!5832 lt!313926) (_2!5832 lt!313926) (_4!282 lt!313926) (_3!782 lt!313926)))))

(assert (=> b!772365 (= lt!313926 call!46839)))

(declare-fun tp!253466 () Bool)

(declare-fun e!497877 () Bool)

(declare-fun tp!253445 () Bool)

(declare-fun array_inv!1366 (array!4223) Bool)

(assert (=> b!772366 (= e!497852 (and tp!253443 tp!253466 tp!253445 (array_inv!1364 (_keys!1493 (v!18755 (underlying!2581 (v!18759 (underlying!2584 (cache!1558 cacheDown!666))))))) (array_inv!1366 (_values!1478 (v!18755 (underlying!2581 (v!18759 (underlying!2584 (cache!1558 cacheDown!666))))))) e!497877))))

(declare-fun mapIsEmpty!5852 () Bool)

(assert (=> mapIsEmpty!5852 mapRes!5854))

(declare-fun b!772367 () Bool)

(assert (=> b!772367 (= e!497874 e!497855)))

(declare-fun b!772368 () Bool)

(declare-fun e!497872 () Bool)

(assert (=> b!772368 (= e!497866 e!497872)))

(declare-fun b!772369 () Bool)

(declare-fun res!338398 () Bool)

(assert (=> b!772369 (=> (not res!338398) (not e!497876))))

(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!332)

(assert (=> b!772369 (= res!338398 (= (totalInput!2129 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun b!772370 () Bool)

(declare-fun tp!253455 () Bool)

(assert (=> b!772370 (= e!497871 (and tp!253455 mapRes!5854))))

(declare-fun condMapEmpty!5854 () Bool)

(declare-fun mapDefault!5854 () List!8635)

(assert (=> b!772370 (= condMapEmpty!5854 (= (arr!1882 (_values!1477 (v!18753 (underlying!2579 (v!18754 (underlying!2580 (cache!1557 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8635)) mapDefault!5854)))))

(declare-fun b!772371 () Bool)

(declare-fun e!497850 () Bool)

(declare-fun e!497857 () Bool)

(assert (=> b!772371 (= e!497850 e!497857)))

(declare-fun mapIsEmpty!5853 () Bool)

(declare-fun mapRes!5853 () Bool)

(assert (=> mapIsEmpty!5853 mapRes!5853))

(declare-fun b!772372 () Bool)

(declare-fun e!497882 () Bool)

(assert (=> b!772372 (= e!497882 e!497860)))

(declare-fun mapNonEmpty!5853 () Bool)

(declare-fun mapRes!5852 () Bool)

(declare-fun tp!253462 () Bool)

(declare-fun tp!253447 () Bool)

(assert (=> mapNonEmpty!5853 (= mapRes!5852 (and tp!253462 tp!253447))))

(declare-fun mapValue!5854 () List!8636)

(declare-fun mapKey!5854 () (_ BitVec 32))

(declare-fun mapRest!5854 () (Array (_ BitVec 32) List!8636))

(assert (=> mapNonEmpty!5853 (= (arr!1884 (_values!1479 (v!18757 (underlying!2582 (v!18758 (underlying!2583 (cache!1559 cacheFindLongestMatch!134))))))) (store mapRest!5854 mapKey!5854 mapValue!5854))))

(declare-fun e!497869 () Bool)

(declare-fun e!497880 () Bool)

(declare-fun b!772373 () Bool)

(declare-fun e!497870 () Bool)

(declare-fun inv!10956 (BalanceConc!5792) Bool)

(assert (=> b!772373 (= e!497880 (and e!497869 (inv!10956 (totalInput!2129 cacheFindLongestMatch!134)) e!497870))))

(declare-fun b!772374 () Bool)

(declare-fun e!497856 () Bool)

(declare-fun lt!313924 () MutLongMap!1200)

(assert (=> b!772374 (= e!497856 (and e!497862 ((_ is LongMap!1200) lt!313924)))))

(assert (=> b!772374 (= lt!313924 (v!18758 (underlying!2583 (cache!1559 cacheFindLongestMatch!134))))))

(declare-fun b!772375 () Bool)

(declare-fun e!497878 () Bool)

(declare-fun tp!253459 () Bool)

(declare-fun inv!10957 (Conc!2890) Bool)

(assert (=> b!772375 (= e!497878 (and (inv!10957 (c!130304 totalInput!472)) tp!253459))))

(declare-fun b!772360 () Bool)

(assert (=> b!772360 (= e!497876 (not true))))

(declare-fun lt!313920 () tuple4!562)

(assert (=> b!772360 (= lt!313920 e!497867)))

(declare-fun c!130302 () Bool)

(assert (=> b!772360 (= c!130302 (and ((_ is Cons!8626) rulesArg!343) ((_ is Nil!8626) (t!91922 rulesArg!343))))))

(declare-fun lt!313925 () List!8637)

(declare-fun isPrefix!996 (List!8637 List!8637) Bool)

(assert (=> b!772360 (isPrefix!996 lt!313925 lt!313925)))

(declare-datatypes ((Unit!13128 0))(
  ( (Unit!13129) )
))
(declare-fun lt!313921 () Unit!13128)

(declare-fun lemmaIsPrefixRefl!707 (List!8637 List!8637) Unit!13128)

(assert (=> b!772360 (= lt!313921 (lemmaIsPrefixRefl!707 lt!313925 lt!313925))))

(declare-fun res!338400 () Bool)

(declare-fun e!497858 () Bool)

(assert (=> start!71582 (=> (not res!338400) (not e!497858))))

(assert (=> start!71582 (= res!338400 ((_ is Lexer!1441) thiss!15653))))

(assert (=> start!71582 e!497858))

(declare-fun e!497873 () Bool)

(assert (=> start!71582 e!497873))

(declare-fun e!497849 () Bool)

(assert (=> start!71582 (and (inv!10956 input!1432) e!497849)))

(declare-fun inv!10958 (CacheFindLongestMatch!332) Bool)

(assert (=> start!71582 (and (inv!10958 cacheFindLongestMatch!134) e!497880)))

(assert (=> start!71582 true))

(declare-fun inv!10959 (CacheUp!664) Bool)

(assert (=> start!71582 (and (inv!10959 cacheUp!653) e!497850)))

(assert (=> start!71582 (and (inv!10956 totalInput!472) e!497878)))

(declare-fun e!497865 () Bool)

(declare-fun inv!10960 (CacheDown!670) Bool)

(assert (=> start!71582 (and (inv!10960 cacheDown!666) e!497865)))

(declare-fun b!772376 () Bool)

(declare-fun res!338397 () Bool)

(assert (=> b!772376 (=> (not res!338397) (not e!497876))))

(declare-fun valid!971 (CacheFindLongestMatch!332) Bool)

(assert (=> b!772376 (= res!338397 (valid!971 cacheFindLongestMatch!134))))

(declare-fun bm!46834 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!68 (LexerInterface!1443 Rule!3082 BalanceConc!5792 BalanceConc!5792 CacheUp!664 CacheDown!670 CacheFindLongestMatch!332) tuple4!564)

(assert (=> bm!46834 (= call!46839 (maxPrefixOneRuleZipperSequenceV2Mem!68 thiss!15653 (h!14027 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!772377 () Bool)

(declare-fun tp!253458 () Bool)

(assert (=> b!772377 (= e!497877 (and tp!253458 mapRes!5853))))

(declare-fun condMapEmpty!5852 () Bool)

(declare-fun mapDefault!5853 () List!8638)

(assert (=> b!772377 (= condMapEmpty!5852 (= (arr!1883 (_values!1478 (v!18755 (underlying!2581 (v!18759 (underlying!2584 (cache!1558 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8638)) mapDefault!5853)))))

(declare-fun b!772378 () Bool)

(declare-fun e!497859 () Bool)

(assert (=> b!772378 (= e!497865 e!497859)))

(declare-fun tp!253449 () Bool)

(declare-fun e!497863 () Bool)

(declare-fun tp!253467 () Bool)

(declare-fun array_inv!1367 (array!4225) Bool)

(assert (=> b!772379 (= e!497872 (and tp!253446 tp!253467 tp!253449 (array_inv!1364 (_keys!1494 (v!18757 (underlying!2582 (v!18758 (underlying!2583 (cache!1559 cacheFindLongestMatch!134))))))) (array_inv!1367 (_values!1479 (v!18757 (underlying!2582 (v!18758 (underlying!2583 (cache!1559 cacheFindLongestMatch!134))))))) e!497863))))

(declare-fun b!772380 () Bool)

(declare-fun tp!253451 () Bool)

(assert (=> b!772380 (= e!497863 (and tp!253451 mapRes!5852))))

(declare-fun condMapEmpty!5853 () Bool)

(declare-fun mapDefault!5852 () List!8636)

(assert (=> b!772380 (= condMapEmpty!5853 (= (arr!1884 (_values!1479 (v!18757 (underlying!2582 (v!18758 (underlying!2583 (cache!1559 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8636)) mapDefault!5852)))))

(declare-fun b!772381 () Bool)

(declare-fun tp!253460 () Bool)

(assert (=> b!772381 (= e!497849 (and (inv!10957 (c!130304 input!1432)) tp!253460))))

(declare-fun mapNonEmpty!5854 () Bool)

(declare-fun tp!253463 () Bool)

(declare-fun tp!253450 () Bool)

(assert (=> mapNonEmpty!5854 (= mapRes!5853 (and tp!253463 tp!253450))))

(declare-fun mapRest!5853 () (Array (_ BitVec 32) List!8638))

(declare-fun mapKey!5853 () (_ BitVec 32))

(declare-fun mapValue!5853 () List!8638)

(assert (=> mapNonEmpty!5854 (= (arr!1883 (_values!1478 (v!18755 (underlying!2581 (v!18759 (underlying!2584 (cache!1558 cacheDown!666))))))) (store mapRest!5853 mapKey!5853 mapValue!5853))))

(declare-fun b!772382 () Bool)

(declare-fun res!338403 () Bool)

(assert (=> b!772382 (=> (not res!338403) (not e!497858))))

(declare-fun rulesValidInductive!585 (LexerInterface!1443 List!8640) Bool)

(assert (=> b!772382 (= res!338403 (rulesValidInductive!585 thiss!15653 rulesArg!343))))

(declare-fun mapIsEmpty!5854 () Bool)

(assert (=> mapIsEmpty!5854 mapRes!5852))

(declare-fun b!772383 () Bool)

(declare-fun res!338402 () Bool)

(assert (=> b!772383 (=> (not res!338402) (not e!497858))))

(declare-fun isEmpty!5224 (List!8640) Bool)

(assert (=> b!772383 (= res!338402 (not (isEmpty!5224 rulesArg!343)))))

(assert (=> b!772384 (= e!497869 (and e!497856 tp!253456))))

(assert (=> b!772385 (= e!497857 (and e!497875 tp!253461))))

(declare-fun b!772386 () Bool)

(assert (=> b!772386 (= e!497858 e!497876)))

(declare-fun res!338399 () Bool)

(assert (=> b!772386 (=> (not res!338399) (not e!497876))))

(declare-fun isSuffix!220 (List!8637 List!8637) Bool)

(declare-fun list!3442 (BalanceConc!5792) List!8637)

(assert (=> b!772386 (= res!338399 (isSuffix!220 lt!313925 (list!3442 totalInput!472)))))

(assert (=> b!772386 (= lt!313925 (list!3442 input!1432))))

(assert (=> b!772387 (= e!497868 (and tp!253457 tp!253453))))

(declare-fun b!772388 () Bool)

(declare-fun tp!253448 () Bool)

(assert (=> b!772388 (= e!497870 (and (inv!10957 (c!130304 (totalInput!2129 cacheFindLongestMatch!134))) tp!253448))))

(declare-fun b!772389 () Bool)

(declare-fun tp!253444 () Bool)

(assert (=> b!772389 (= e!497873 (and e!497854 tp!253444))))

(declare-fun b!772390 () Bool)

(declare-fun res!338401 () Bool)

(assert (=> b!772390 (=> (not res!338401) (not e!497876))))

(declare-fun valid!972 (CacheDown!670) Bool)

(assert (=> b!772390 (= res!338401 (valid!972 cacheDown!666))))

(declare-fun b!772391 () Bool)

(assert (=> b!772391 (= e!497879 e!497882)))

(assert (=> b!772392 (= e!497859 (and e!497881 tp!253465))))

(assert (= (and start!71582 res!338400) b!772382))

(assert (= (and b!772382 res!338403) b!772383))

(assert (= (and b!772383 res!338402) b!772386))

(assert (= (and b!772386 res!338399) b!772356))

(assert (= (and b!772356 res!338396) b!772390))

(assert (= (and b!772390 res!338401) b!772376))

(assert (= (and b!772376 res!338397) b!772369))

(assert (= (and b!772369 res!338398) b!772360))

(assert (= (and b!772360 c!130302) b!772365))

(assert (= (and b!772360 (not c!130302)) b!772358))

(assert (= (or b!772365 b!772358) bm!46834))

(assert (= b!772362 b!772387))

(assert (= b!772389 b!772362))

(assert (= (and start!71582 ((_ is Cons!8626) rulesArg!343)) b!772389))

(assert (= start!71582 b!772381))

(assert (= (and b!772380 condMapEmpty!5853) mapIsEmpty!5854))

(assert (= (and b!772380 (not condMapEmpty!5853)) mapNonEmpty!5853))

(assert (= b!772379 b!772380))

(assert (= b!772368 b!772379))

(assert (= b!772364 b!772368))

(assert (= (and b!772374 ((_ is LongMap!1200) (v!18758 (underlying!2583 (cache!1559 cacheFindLongestMatch!134))))) b!772364))

(assert (= b!772384 b!772374))

(assert (= (and b!772373 ((_ is HashMap!1171) (cache!1559 cacheFindLongestMatch!134))) b!772384))

(assert (= b!772373 b!772388))

(assert (= start!71582 b!772373))

(assert (= (and b!772370 condMapEmpty!5854) mapIsEmpty!5852))

(assert (= (and b!772370 (not condMapEmpty!5854)) mapNonEmpty!5852))

(assert (= b!772361 b!772370))

(assert (= b!772372 b!772361))

(assert (= b!772391 b!772372))

(assert (= (and b!772363 ((_ is LongMap!1198) (v!18754 (underlying!2580 (cache!1557 cacheUp!653))))) b!772391))

(assert (= b!772385 b!772363))

(assert (= (and b!772371 ((_ is HashMap!1170) (cache!1557 cacheUp!653))) b!772385))

(assert (= start!71582 b!772371))

(assert (= start!71582 b!772375))

(assert (= (and b!772377 condMapEmpty!5852) mapIsEmpty!5853))

(assert (= (and b!772377 (not condMapEmpty!5852)) mapNonEmpty!5854))

(assert (= b!772366 b!772377))

(assert (= b!772357 b!772366))

(assert (= b!772367 b!772357))

(assert (= (and b!772359 ((_ is LongMap!1199) (v!18759 (underlying!2584 (cache!1558 cacheDown!666))))) b!772367))

(assert (= b!772392 b!772359))

(assert (= (and b!772378 ((_ is HashMap!1172) (cache!1558 cacheDown!666))) b!772392))

(assert (= start!71582 b!772378))

(declare-fun m!1040619 () Bool)

(assert (=> b!772356 m!1040619))

(declare-fun m!1040621 () Bool)

(assert (=> b!772381 m!1040621))

(declare-fun m!1040623 () Bool)

(assert (=> b!772390 m!1040623))

(declare-fun m!1040625 () Bool)

(assert (=> b!772382 m!1040625))

(declare-fun m!1040627 () Bool)

(assert (=> b!772360 m!1040627))

(declare-fun m!1040629 () Bool)

(assert (=> b!772360 m!1040629))

(declare-fun m!1040631 () Bool)

(assert (=> b!772373 m!1040631))

(declare-fun m!1040633 () Bool)

(assert (=> b!772383 m!1040633))

(declare-fun m!1040635 () Bool)

(assert (=> b!772375 m!1040635))

(declare-fun m!1040637 () Bool)

(assert (=> b!772386 m!1040637))

(assert (=> b!772386 m!1040637))

(declare-fun m!1040639 () Bool)

(assert (=> b!772386 m!1040639))

(declare-fun m!1040641 () Bool)

(assert (=> b!772386 m!1040641))

(declare-fun m!1040643 () Bool)

(assert (=> b!772376 m!1040643))

(declare-fun m!1040645 () Bool)

(assert (=> b!772361 m!1040645))

(declare-fun m!1040647 () Bool)

(assert (=> b!772361 m!1040647))

(declare-fun m!1040649 () Bool)

(assert (=> b!772358 m!1040649))

(declare-fun m!1040651 () Bool)

(assert (=> b!772379 m!1040651))

(declare-fun m!1040653 () Bool)

(assert (=> b!772379 m!1040653))

(declare-fun m!1040655 () Bool)

(assert (=> b!772388 m!1040655))

(declare-fun m!1040657 () Bool)

(assert (=> start!71582 m!1040657))

(declare-fun m!1040659 () Bool)

(assert (=> start!71582 m!1040659))

(declare-fun m!1040661 () Bool)

(assert (=> start!71582 m!1040661))

(declare-fun m!1040663 () Bool)

(assert (=> start!71582 m!1040663))

(declare-fun m!1040665 () Bool)

(assert (=> start!71582 m!1040665))

(declare-fun m!1040667 () Bool)

(assert (=> b!772362 m!1040667))

(declare-fun m!1040669 () Bool)

(assert (=> b!772362 m!1040669))

(declare-fun m!1040671 () Bool)

(assert (=> mapNonEmpty!5852 m!1040671))

(declare-fun m!1040673 () Bool)

(assert (=> mapNonEmpty!5854 m!1040673))

(declare-fun m!1040675 () Bool)

(assert (=> mapNonEmpty!5853 m!1040675))

(declare-fun m!1040677 () Bool)

(assert (=> bm!46834 m!1040677))

(declare-fun m!1040679 () Bool)

(assert (=> b!772366 m!1040679))

(declare-fun m!1040681 () Bool)

(assert (=> b!772366 m!1040681))

(check-sat (not b!772381) (not b!772386) b_and!71953 (not b!772358) (not b!772390) (not start!71582) (not b!772388) (not b!772373) (not b!772376) b_and!71963 (not b!772375) (not b_next!24535) b_and!71951 (not b!772380) (not mapNonEmpty!5852) (not b!772377) (not b_next!24545) (not b_next!24543) b_and!71961 (not mapNonEmpty!5854) b_and!71955 (not b_next!24547) (not b!772379) b_and!71949 (not b_next!24541) (not b!772389) b_and!71957 (not b!772366) b_and!71959 (not b!772383) (not b!772362) (not b!772360) (not b!772361) (not b!772382) (not mapNonEmpty!5853) (not bm!46834) (not b_next!24533) (not b_next!24537) (not b!772356) (not b_next!24539) (not b!772370))
(check-sat b_and!71951 b_and!71961 b_and!71953 (not b_next!24533) (not b_next!24537) (not b_next!24539) b_and!71963 (not b_next!24535) (not b_next!24545) (not b_next!24543) b_and!71955 (not b_next!24547) (not b_next!24541) b_and!71949 b_and!71957 b_and!71959)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142834 () Bool)

(assert start!142834)

(declare-fun b!1536514 () Bool)

(declare-fun b_free!39879 () Bool)

(declare-fun b_next!40583 () Bool)

(assert (=> b!1536514 (= b_free!39879 (not b_next!40583))))

(declare-fun tp!443338 () Bool)

(declare-fun b_and!106757 () Bool)

(assert (=> b!1536514 (= tp!443338 b_and!106757)))

(declare-fun b!1536536 () Bool)

(declare-fun b_free!39881 () Bool)

(declare-fun b_next!40585 () Bool)

(assert (=> b!1536536 (= b_free!39881 (not b_next!40585))))

(declare-fun tp!443334 () Bool)

(declare-fun b_and!106759 () Bool)

(assert (=> b!1536536 (= tp!443334 b_and!106759)))

(declare-fun b!1536511 () Bool)

(declare-fun b_free!39883 () Bool)

(declare-fun b_next!40587 () Bool)

(assert (=> b!1536511 (= b_free!39883 (not b_next!40587))))

(declare-fun tp!443330 () Bool)

(declare-fun b_and!106761 () Bool)

(assert (=> b!1536511 (= tp!443330 b_and!106761)))

(declare-fun b!1536537 () Bool)

(declare-fun b_free!39885 () Bool)

(declare-fun b_next!40589 () Bool)

(assert (=> b!1536537 (= b_free!39885 (not b_next!40589))))

(declare-fun tp!443340 () Bool)

(declare-fun b_and!106763 () Bool)

(assert (=> b!1536537 (= tp!443340 b_and!106763)))

(declare-fun b_free!39887 () Bool)

(declare-fun b_next!40591 () Bool)

(assert (=> b!1536537 (= b_free!39887 (not b_next!40591))))

(declare-fun tp!443341 () Bool)

(declare-fun b_and!106765 () Bool)

(assert (=> b!1536537 (= tp!443341 b_and!106765)))

(declare-fun b!1536512 () Bool)

(declare-fun b_free!39889 () Bool)

(declare-fun b_next!40593 () Bool)

(assert (=> b!1536512 (= b_free!39889 (not b_next!40593))))

(declare-fun tp!443346 () Bool)

(declare-fun b_and!106767 () Bool)

(assert (=> b!1536512 (= tp!443346 b_and!106767)))

(declare-fun b!1536519 () Bool)

(declare-fun b_free!39891 () Bool)

(declare-fun b_next!40595 () Bool)

(assert (=> b!1536519 (= b_free!39891 (not b_next!40595))))

(declare-fun tp!443343 () Bool)

(declare-fun b_and!106769 () Bool)

(assert (=> b!1536519 (= tp!443343 b_and!106769)))

(declare-fun b!1536508 () Bool)

(declare-fun b_free!39893 () Bool)

(declare-fun b_next!40597 () Bool)

(assert (=> b!1536508 (= b_free!39893 (not b_next!40597))))

(declare-fun tp!443337 () Bool)

(declare-fun b_and!106771 () Bool)

(assert (=> b!1536508 (= tp!443337 b_and!106771)))

(declare-fun b!1536507 () Bool)

(declare-fun e!982704 () Bool)

(assert (=> b!1536507 (= e!982704 true)))

(declare-datatypes ((C!8556 0))(
  ( (C!8557 (val!4850 Int)) )
))
(declare-datatypes ((Regex!4189 0))(
  ( (ElementMatch!4189 (c!251561 C!8556)) (Concat!7145 (regOne!8890 Regex!4189) (regTwo!8890 Regex!4189)) (EmptyExpr!4189) (Star!4189 (reg!4518 Regex!4189)) (EmptyLang!4189) (Union!4189 (regOne!8891 Regex!4189) (regTwo!8891 Regex!4189)) )
))
(declare-datatypes ((List!16356 0))(
  ( (Nil!16288) (Cons!16288 (h!21689 Regex!4189) (t!140562 List!16356)) )
))
(declare-datatypes ((Context!1414 0))(
  ( (Context!1415 (exprs!1207 List!16356)) )
))
(declare-datatypes ((tuple2!15282 0))(
  ( (tuple2!15283 (_1!8740 Context!1414) (_2!8740 C!8556)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15284 0))(
  ( (tuple2!15285 (_1!8741 tuple2!15282) (_2!8741 (InoxSet Context!1414))) )
))
(declare-datatypes ((List!16357 0))(
  ( (Nil!16289) (Cons!16289 (h!21690 tuple2!15284) (t!140563 List!16357)) )
))
(declare-datatypes ((array!5446 0))(
  ( (array!5447 (arr!2422 (Array (_ BitVec 32) List!16357)) (size!13167 (_ BitVec 32))) )
))
(declare-datatypes ((array!5448 0))(
  ( (array!5449 (arr!2423 (Array (_ BitVec 32) (_ BitVec 64))) (size!13168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3116 0))(
  ( (LongMapFixedSize!3117 (defaultEntry!1918 Int) (mask!4741 (_ BitVec 32)) (extraKeys!1805 (_ BitVec 32)) (zeroValue!1815 List!16357) (minValue!1815 List!16357) (_size!3197 (_ BitVec 32)) (_keys!1852 array!5448) (_values!1837 array!5446) (_vacant!1619 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6117 0))(
  ( (Cell!6118 (v!23096 LongMapFixedSize!3116)) )
))
(declare-datatypes ((MutLongMap!1558 0))(
  ( (LongMap!1558 (underlying!3325 Cell!6117)) (MutLongMapExt!1557 (__x!10319 Int)) )
))
(declare-datatypes ((Cell!6119 0))(
  ( (Cell!6120 (v!23097 MutLongMap!1558)) )
))
(declare-datatypes ((Hashable!1502 0))(
  ( (HashableExt!1501 (__x!10320 Int)) )
))
(declare-datatypes ((MutableMap!1502 0))(
  ( (MutableMapExt!1501 (__x!10321 Int)) (HashMap!1502 (underlying!3326 Cell!6119) (hashF!3421 Hashable!1502) (_size!3198 (_ BitVec 32)) (defaultValue!1662 Int)) )
))
(declare-datatypes ((CacheUp!898 0))(
  ( (CacheUp!899 (cache!1883 MutableMap!1502)) )
))
(declare-fun cacheUp!695 () CacheUp!898)

(declare-datatypes ((List!16358 0))(
  ( (Nil!16290) (Cons!16290 (h!21691 C!8556) (t!140564 List!16358)) )
))
(declare-datatypes ((IArray!10969 0))(
  ( (IArray!10970 (innerList!5542 List!16358)) )
))
(declare-datatypes ((Conc!5482 0))(
  ( (Node!5482 (left!13437 Conc!5482) (right!13767 Conc!5482) (csize!11194 Int) (cheight!5693 Int)) (Leaf!8122 (xs!8282 IArray!10969) (csize!11195 Int)) (Empty!5482) )
))
(declare-datatypes ((BalanceConc!10906 0))(
  ( (BalanceConc!10907 (c!251562 Conc!5482)) )
))
(declare-fun input!1460 () BalanceConc!10906)

(declare-datatypes ((tuple3!1470 0))(
  ( (tuple3!1471 (_1!8742 Regex!4189) (_2!8742 Context!1414) (_3!1099 C!8556)) )
))
(declare-datatypes ((tuple2!15286 0))(
  ( (tuple2!15287 (_1!8743 tuple3!1470) (_2!8743 (InoxSet Context!1414))) )
))
(declare-datatypes ((List!16359 0))(
  ( (Nil!16291) (Cons!16291 (h!21692 tuple2!15286) (t!140565 List!16359)) )
))
(declare-datatypes ((array!5450 0))(
  ( (array!5451 (arr!2424 (Array (_ BitVec 32) List!16359)) (size!13169 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3118 0))(
  ( (LongMapFixedSize!3119 (defaultEntry!1919 Int) (mask!4742 (_ BitVec 32)) (extraKeys!1806 (_ BitVec 32)) (zeroValue!1816 List!16359) (minValue!1816 List!16359) (_size!3199 (_ BitVec 32)) (_keys!1853 array!5448) (_values!1838 array!5450) (_vacant!1620 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6121 0))(
  ( (Cell!6122 (v!23098 LongMapFixedSize!3118)) )
))
(declare-datatypes ((MutLongMap!1559 0))(
  ( (LongMap!1559 (underlying!3327 Cell!6121)) (MutLongMapExt!1558 (__x!10322 Int)) )
))
(declare-datatypes ((Cell!6123 0))(
  ( (Cell!6124 (v!23099 MutLongMap!1559)) )
))
(declare-datatypes ((Hashable!1503 0))(
  ( (HashableExt!1502 (__x!10323 Int)) )
))
(declare-datatypes ((MutableMap!1503 0))(
  ( (MutableMapExt!1502 (__x!10324 Int)) (HashMap!1503 (underlying!3328 Cell!6123) (hashF!3422 Hashable!1503) (_size!3200 (_ BitVec 32)) (defaultValue!1663 Int)) )
))
(declare-datatypes ((CacheDown!906 0))(
  ( (CacheDown!907 (cache!1884 MutableMap!1503)) )
))
(declare-fun cacheDown!708 () CacheDown!906)

(declare-datatypes ((Hashable!1504 0))(
  ( (HashableExt!1503 (__x!10325 Int)) )
))
(declare-datatypes ((tuple3!1472 0))(
  ( (tuple3!1473 (_1!8744 (InoxSet Context!1414)) (_2!8744 Int) (_3!1100 Int)) )
))
(declare-datatypes ((tuple2!15288 0))(
  ( (tuple2!15289 (_1!8745 tuple3!1472) (_2!8745 Int)) )
))
(declare-datatypes ((List!16360 0))(
  ( (Nil!16292) (Cons!16292 (h!21693 tuple2!15288) (t!140566 List!16360)) )
))
(declare-datatypes ((array!5452 0))(
  ( (array!5453 (arr!2425 (Array (_ BitVec 32) List!16360)) (size!13170 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3120 0))(
  ( (LongMapFixedSize!3121 (defaultEntry!1920 Int) (mask!4743 (_ BitVec 32)) (extraKeys!1807 (_ BitVec 32)) (zeroValue!1817 List!16360) (minValue!1817 List!16360) (_size!3201 (_ BitVec 32)) (_keys!1854 array!5448) (_values!1839 array!5452) (_vacant!1621 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6125 0))(
  ( (Cell!6126 (v!23100 LongMapFixedSize!3120)) )
))
(declare-datatypes ((List!16361 0))(
  ( (Nil!16293) (Cons!16293 (h!21694 (_ BitVec 16)) (t!140567 List!16361)) )
))
(declare-datatypes ((TokenValue!2956 0))(
  ( (FloatLiteralValue!5912 (text!21137 List!16361)) (TokenValueExt!2955 (__x!10326 Int)) (Broken!14780 (value!91319 List!16361)) (Object!3023) (End!2956) (Def!2956) (Underscore!2956) (Match!2956) (Else!2956) (Error!2956) (Case!2956) (If!2956) (Extends!2956) (Abstract!2956) (Class!2956) (Val!2956) (DelimiterValue!5912 (del!3016 List!16361)) (KeywordValue!2962 (value!91320 List!16361)) (CommentValue!5912 (value!91321 List!16361)) (WhitespaceValue!5912 (value!91322 List!16361)) (IndentationValue!2956 (value!91323 List!16361)) (String!19057) (Int32!2956) (Broken!14781 (value!91324 List!16361)) (Boolean!2957) (Unit!25830) (OperatorValue!2959 (op!3016 List!16361)) (IdentifierValue!5912 (value!91325 List!16361)) (IdentifierValue!5913 (value!91326 List!16361)) (WhitespaceValue!5913 (value!91327 List!16361)) (True!5912) (False!5912) (Broken!14782 (value!91328 List!16361)) (Broken!14783 (value!91329 List!16361)) (True!5913) (RightBrace!2956) (RightBracket!2956) (Colon!2956) (Null!2956) (Comma!2956) (LeftBracket!2956) (False!5913) (LeftBrace!2956) (ImaginaryLiteralValue!2956 (text!21138 List!16361)) (StringLiteralValue!8868 (value!91330 List!16361)) (EOFValue!2956 (value!91331 List!16361)) (IdentValue!2956 (value!91332 List!16361)) (DelimiterValue!5913 (value!91333 List!16361)) (DedentValue!2956 (value!91334 List!16361)) (NewLineValue!2956 (value!91335 List!16361)) (IntegerValue!8868 (value!91336 (_ BitVec 32)) (text!21139 List!16361)) (IntegerValue!8869 (value!91337 Int) (text!21140 List!16361)) (Times!2956) (Or!2956) (Equal!2956) (Minus!2956) (Broken!14784 (value!91338 List!16361)) (And!2956) (Div!2956) (LessEqual!2956) (Mod!2956) (Concat!7146) (Not!2956) (Plus!2956) (SpaceValue!2956 (value!91339 List!16361)) (IntegerValue!8870 (value!91340 Int) (text!21141 List!16361)) (StringLiteralValue!8869 (text!21142 List!16361)) (FloatLiteralValue!5913 (text!21143 List!16361)) (BytesLiteralValue!2956 (value!91341 List!16361)) (CommentValue!5913 (value!91342 List!16361)) (StringLiteralValue!8870 (value!91343 List!16361)) (ErrorTokenValue!2956 (msg!3017 List!16361)) )
))
(declare-datatypes ((String!19058 0))(
  ( (String!19059 (value!91344 String)) )
))
(declare-datatypes ((TokenValueInjection!5572 0))(
  ( (TokenValueInjection!5573 (toValue!4227 Int) (toChars!4086 Int)) )
))
(declare-datatypes ((Rule!5532 0))(
  ( (Rule!5533 (regex!2866 Regex!4189) (tag!3130 String!19058) (isSeparator!2866 Bool) (transformation!2866 TokenValueInjection!5572)) )
))
(declare-datatypes ((Token!5378 0))(
  ( (Token!5379 (value!91345 TokenValue!2956) (rule!4669 Rule!5532) (size!13171 Int) (originalCharacters!3720 List!16358)) )
))
(declare-datatypes ((tuple2!15290 0))(
  ( (tuple2!15291 (_1!8746 Token!5378) (_2!8746 BalanceConc!10906)) )
))
(declare-datatypes ((Option!2951 0))(
  ( (None!2950) (Some!2950 (v!23101 tuple2!15290)) )
))
(declare-datatypes ((MutLongMap!1560 0))(
  ( (LongMap!1560 (underlying!3329 Cell!6125)) (MutLongMapExt!1559 (__x!10327 Int)) )
))
(declare-datatypes ((Cell!6127 0))(
  ( (Cell!6128 (v!23102 MutLongMap!1560)) )
))
(declare-datatypes ((MutableMap!1504 0))(
  ( (MutableMapExt!1503 (__x!10328 Int)) (HashMap!1504 (underlying!3330 Cell!6127) (hashF!3423 Hashable!1504) (_size!3202 (_ BitVec 32)) (defaultValue!1664 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!328 0))(
  ( (CacheFurthestNullable!329 (cache!1885 MutableMap!1504) (totalInput!2352 BalanceConc!10906)) )
))
(declare-datatypes ((tuple4!728 0))(
  ( (tuple4!729 (_1!8747 Option!2951) (_2!8747 CacheUp!898) (_3!1101 CacheDown!906) (_4!364 CacheFurthestNullable!328)) )
))
(declare-fun lt!533319 () tuple4!728)

(declare-datatypes ((LexerInterface!2518 0))(
  ( (LexerInterfaceExt!2515 (__x!10329 Int)) (Lexer!2516) )
))
(declare-fun thiss!15733 () LexerInterface!2518)

(declare-fun totalInput!496 () BalanceConc!10906)

(declare-datatypes ((List!16362 0))(
  ( (Nil!16294) (Cons!16294 (h!21695 Rule!5532) (t!140568 List!16362)) )
))
(declare-fun rulesArg!359 () List!16362)

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!328)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!19 (LexerInterface!2518 Rule!5532 BalanceConc!10906 BalanceConc!10906 CacheUp!898 CacheDown!906 CacheFurthestNullable!328) tuple4!728)

(assert (=> b!1536507 (= lt!533319 (maxPrefixOneRuleZipperSequenceV3Mem!19 thiss!15733 (h!21695 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun e!982715 () Bool)

(declare-fun e!982705 () Bool)

(declare-fun tp!443339 () Bool)

(declare-fun tp!443327 () Bool)

(declare-fun array_inv!1745 (array!5448) Bool)

(declare-fun array_inv!1746 (array!5446) Bool)

(assert (=> b!1536508 (= e!982705 (and tp!443337 tp!443327 tp!443339 (array_inv!1745 (_keys!1852 (v!23096 (underlying!3325 (v!23097 (underlying!3326 (cache!1883 cacheUp!695))))))) (array_inv!1746 (_values!1837 (v!23096 (underlying!3325 (v!23097 (underlying!3326 (cache!1883 cacheUp!695))))))) e!982715))))

(declare-fun b!1536509 () Bool)

(declare-fun e!982708 () Bool)

(declare-fun e!982727 () Bool)

(assert (=> b!1536509 (= e!982708 e!982727)))

(declare-fun b!1536510 () Bool)

(declare-fun e!982706 () Bool)

(declare-fun e!982712 () Bool)

(assert (=> b!1536510 (= e!982706 e!982712)))

(declare-fun e!982732 () Bool)

(declare-fun tp!443335 () Bool)

(declare-fun e!982702 () Bool)

(declare-fun tp!443326 () Bool)

(declare-fun array_inv!1747 (array!5450) Bool)

(assert (=> b!1536511 (= e!982732 (and tp!443330 tp!443326 tp!443335 (array_inv!1745 (_keys!1853 (v!23098 (underlying!3327 (v!23099 (underlying!3328 (cache!1884 cacheDown!708))))))) (array_inv!1747 (_values!1838 (v!23098 (underlying!3327 (v!23099 (underlying!3328 (cache!1884 cacheDown!708))))))) e!982702))))

(declare-fun e!982726 () Bool)

(declare-fun e!982700 () Bool)

(assert (=> b!1536512 (= e!982726 (and e!982700 tp!443346))))

(declare-fun res!688856 () Bool)

(declare-fun e!982733 () Bool)

(assert (=> start!142834 (=> (not res!688856) (not e!982733))))

(get-info :version)

(assert (=> start!142834 (= res!688856 ((_ is Lexer!2516) thiss!15733))))

(assert (=> start!142834 e!982733))

(declare-fun e!982729 () Bool)

(declare-fun inv!21554 (CacheUp!898) Bool)

(assert (=> start!142834 (and (inv!21554 cacheUp!695) e!982729)))

(declare-fun e!982717 () Bool)

(declare-fun inv!21555 (BalanceConc!10906) Bool)

(assert (=> start!142834 (and (inv!21555 input!1460) e!982717)))

(declare-fun inv!21556 (CacheDown!906) Bool)

(assert (=> start!142834 (and (inv!21556 cacheDown!708) e!982706)))

(assert (=> start!142834 true))

(declare-fun e!982703 () Bool)

(assert (=> start!142834 (and (inv!21555 totalInput!496) e!982703)))

(declare-fun e!982714 () Bool)

(assert (=> start!142834 e!982714))

(declare-fun e!982725 () Bool)

(declare-fun inv!21557 (CacheFurthestNullable!328) Bool)

(assert (=> start!142834 (and (inv!21557 cacheFurthestNullable!81) e!982725)))

(declare-fun b!1536513 () Bool)

(declare-fun res!688854 () Bool)

(assert (=> b!1536513 (=> (not res!688854) (not e!982733))))

(declare-fun rulesValidInductive!873 (LexerInterface!2518 List!16362) Bool)

(assert (=> b!1536513 (= res!688854 (rulesValidInductive!873 thiss!15733 rulesArg!359))))

(declare-fun e!982707 () Bool)

(assert (=> b!1536514 (= e!982712 (and e!982707 tp!443338))))

(declare-fun b!1536515 () Bool)

(declare-fun e!982718 () Bool)

(declare-fun e!982724 () Bool)

(assert (=> b!1536515 (= e!982718 e!982724)))

(declare-fun mapNonEmpty!7392 () Bool)

(declare-fun mapRes!7392 () Bool)

(declare-fun tp!443332 () Bool)

(declare-fun tp!443331 () Bool)

(assert (=> mapNonEmpty!7392 (= mapRes!7392 (and tp!443332 tp!443331))))

(declare-fun mapRest!7394 () (Array (_ BitVec 32) List!16360))

(declare-fun mapValue!7393 () List!16360)

(declare-fun mapKey!7392 () (_ BitVec 32))

(assert (=> mapNonEmpty!7392 (= (arr!2425 (_values!1839 (v!23100 (underlying!3329 (v!23102 (underlying!3330 (cache!1885 cacheFurthestNullable!81))))))) (store mapRest!7394 mapKey!7392 mapValue!7393))))

(declare-fun b!1536516 () Bool)

(assert (=> b!1536516 (= e!982724 e!982705)))

(declare-fun b!1536517 () Bool)

(declare-fun e!982728 () Bool)

(assert (=> b!1536517 (= e!982728 (not e!982704))))

(declare-fun res!688858 () Bool)

(assert (=> b!1536517 (=> res!688858 e!982704)))

(assert (=> b!1536517 (= res!688858 (or (and ((_ is Cons!16294) rulesArg!359) ((_ is Nil!16294) (t!140568 rulesArg!359))) (not ((_ is Cons!16294) rulesArg!359))))))

(declare-fun lt!533321 () List!16358)

(declare-fun isPrefix!1232 (List!16358 List!16358) Bool)

(assert (=> b!1536517 (isPrefix!1232 lt!533321 lt!533321)))

(declare-datatypes ((Unit!25831 0))(
  ( (Unit!25832) )
))
(declare-fun lt!533320 () Unit!25831)

(declare-fun lemmaIsPrefixRefl!862 (List!16358 List!16358) Unit!25831)

(assert (=> b!1536517 (= lt!533320 (lemmaIsPrefixRefl!862 lt!533321 lt!533321))))

(declare-fun b!1536518 () Bool)

(declare-fun res!688861 () Bool)

(assert (=> b!1536518 (=> (not res!688861) (not e!982728))))

(declare-fun valid!1270 (CacheUp!898) Bool)

(assert (=> b!1536518 (= res!688861 (valid!1270 cacheUp!695))))

(declare-fun e!982720 () Bool)

(declare-fun e!982713 () Bool)

(declare-fun tp!443333 () Bool)

(declare-fun tp!443344 () Bool)

(declare-fun array_inv!1748 (array!5452) Bool)

(assert (=> b!1536519 (= e!982720 (and tp!443343 tp!443333 tp!443344 (array_inv!1745 (_keys!1854 (v!23100 (underlying!3329 (v!23102 (underlying!3330 (cache!1885 cacheFurthestNullable!81))))))) (array_inv!1748 (_values!1839 (v!23100 (underlying!3329 (v!23102 (underlying!3330 (cache!1885 cacheFurthestNullable!81))))))) e!982713))))

(declare-fun b!1536520 () Bool)

(declare-fun res!688855 () Bool)

(assert (=> b!1536520 (=> (not res!688855) (not e!982733))))

(declare-fun isEmpty!10000 (List!16362) Bool)

(assert (=> b!1536520 (= res!688855 (not (isEmpty!10000 rulesArg!359)))))

(declare-fun b!1536521 () Bool)

(declare-fun tp!443336 () Bool)

(declare-fun mapRes!7393 () Bool)

(assert (=> b!1536521 (= e!982715 (and tp!443336 mapRes!7393))))

(declare-fun condMapEmpty!7394 () Bool)

(declare-fun mapDefault!7394 () List!16357)

(assert (=> b!1536521 (= condMapEmpty!7394 (= (arr!2422 (_values!1837 (v!23096 (underlying!3325 (v!23097 (underlying!3326 (cache!1883 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16357)) mapDefault!7394)))))

(declare-fun b!1536522 () Bool)

(declare-fun e!982730 () Bool)

(assert (=> b!1536522 (= e!982730 e!982732)))

(declare-fun mapNonEmpty!7393 () Bool)

(declare-fun tp!443328 () Bool)

(declare-fun tp!443345 () Bool)

(assert (=> mapNonEmpty!7393 (= mapRes!7393 (and tp!443328 tp!443345))))

(declare-fun mapKey!7394 () (_ BitVec 32))

(declare-fun mapValue!7394 () List!16357)

(declare-fun mapRest!7393 () (Array (_ BitVec 32) List!16357))

(assert (=> mapNonEmpty!7393 (= (arr!2422 (_values!1837 (v!23096 (underlying!3325 (v!23097 (underlying!3326 (cache!1883 cacheUp!695))))))) (store mapRest!7393 mapKey!7394 mapValue!7394))))

(declare-fun mapNonEmpty!7394 () Bool)

(declare-fun mapRes!7394 () Bool)

(declare-fun tp!443342 () Bool)

(declare-fun tp!443325 () Bool)

(assert (=> mapNonEmpty!7394 (= mapRes!7394 (and tp!443342 tp!443325))))

(declare-fun mapKey!7393 () (_ BitVec 32))

(declare-fun mapValue!7392 () List!16359)

(declare-fun mapRest!7392 () (Array (_ BitVec 32) List!16359))

(assert (=> mapNonEmpty!7394 (= (arr!2424 (_values!1838 (v!23098 (underlying!3327 (v!23099 (underlying!3328 (cache!1884 cacheDown!708))))))) (store mapRest!7392 mapKey!7393 mapValue!7392))))

(declare-fun b!1536523 () Bool)

(declare-fun tp!443350 () Bool)

(declare-fun inv!21558 (Conc!5482) Bool)

(assert (=> b!1536523 (= e!982703 (and (inv!21558 (c!251562 totalInput!496)) tp!443350))))

(declare-fun mapIsEmpty!7392 () Bool)

(assert (=> mapIsEmpty!7392 mapRes!7393))

(declare-fun b!1536524 () Bool)

(declare-fun e!982721 () Bool)

(declare-fun lt!533324 () MutLongMap!1560)

(assert (=> b!1536524 (= e!982721 (and e!982708 ((_ is LongMap!1560) lt!533324)))))

(assert (=> b!1536524 (= lt!533324 (v!23102 (underlying!3330 (cache!1885 cacheFurthestNullable!81))))))

(declare-fun e!982722 () Bool)

(declare-fun e!982719 () Bool)

(declare-fun b!1536525 () Bool)

(assert (=> b!1536525 (= e!982725 (and e!982722 (inv!21555 (totalInput!2352 cacheFurthestNullable!81)) e!982719))))

(declare-fun b!1536526 () Bool)

(declare-fun tp!443324 () Bool)

(assert (=> b!1536526 (= e!982702 (and tp!443324 mapRes!7394))))

(declare-fun condMapEmpty!7392 () Bool)

(declare-fun mapDefault!7393 () List!16359)

(assert (=> b!1536526 (= condMapEmpty!7392 (= (arr!2424 (_values!1838 (v!23098 (underlying!3327 (v!23099 (underlying!3328 (cache!1884 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16359)) mapDefault!7393)))))

(declare-fun b!1536527 () Bool)

(declare-fun tp!443349 () Bool)

(assert (=> b!1536527 (= e!982717 (and (inv!21558 (c!251562 input!1460)) tp!443349))))

(declare-fun b!1536528 () Bool)

(assert (=> b!1536528 (= e!982733 e!982728)))

(declare-fun res!688859 () Bool)

(assert (=> b!1536528 (=> (not res!688859) (not e!982728))))

(declare-fun isSuffix!319 (List!16358 List!16358) Bool)

(declare-fun list!6411 (BalanceConc!10906) List!16358)

(assert (=> b!1536528 (= res!688859 (isSuffix!319 lt!533321 (list!6411 totalInput!496)))))

(assert (=> b!1536528 (= lt!533321 (list!6411 input!1460))))

(declare-fun mapIsEmpty!7393 () Bool)

(assert (=> mapIsEmpty!7393 mapRes!7392))

(declare-fun b!1536529 () Bool)

(declare-fun res!688860 () Bool)

(assert (=> b!1536529 (=> (not res!688860) (not e!982728))))

(declare-fun valid!1271 (CacheDown!906) Bool)

(assert (=> b!1536529 (= res!688860 (valid!1271 cacheDown!708))))

(declare-fun b!1536530 () Bool)

(declare-fun tp!443329 () Bool)

(assert (=> b!1536530 (= e!982719 (and (inv!21558 (c!251562 (totalInput!2352 cacheFurthestNullable!81))) tp!443329))))

(declare-fun b!1536531 () Bool)

(assert (=> b!1536531 (= e!982727 e!982720)))

(declare-fun b!1536532 () Bool)

(assert (=> b!1536532 (= e!982729 e!982726)))

(declare-fun b!1536533 () Bool)

(declare-fun res!688857 () Bool)

(assert (=> b!1536533 (=> (not res!688857) (not e!982728))))

(assert (=> b!1536533 (= res!688857 (= (totalInput!2352 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1536534 () Bool)

(declare-fun e!982723 () Bool)

(declare-fun lt!533323 () MutLongMap!1559)

(assert (=> b!1536534 (= e!982707 (and e!982723 ((_ is LongMap!1559) lt!533323)))))

(assert (=> b!1536534 (= lt!533323 (v!23099 (underlying!3328 (cache!1884 cacheDown!708))))))

(declare-fun b!1536535 () Bool)

(declare-fun e!982701 () Bool)

(declare-fun e!982711 () Bool)

(declare-fun tp!443348 () Bool)

(declare-fun inv!21553 (String!19058) Bool)

(declare-fun inv!21559 (TokenValueInjection!5572) Bool)

(assert (=> b!1536535 (= e!982711 (and tp!443348 (inv!21553 (tag!3130 (h!21695 rulesArg!359))) (inv!21559 (transformation!2866 (h!21695 rulesArg!359))) e!982701))))

(assert (=> b!1536536 (= e!982722 (and e!982721 tp!443334))))

(assert (=> b!1536537 (= e!982701 (and tp!443340 tp!443341))))

(declare-fun b!1536538 () Bool)

(declare-fun lt!533322 () MutLongMap!1558)

(assert (=> b!1536538 (= e!982700 (and e!982718 ((_ is LongMap!1558) lt!533322)))))

(assert (=> b!1536538 (= lt!533322 (v!23097 (underlying!3326 (cache!1883 cacheUp!695))))))

(declare-fun mapIsEmpty!7394 () Bool)

(assert (=> mapIsEmpty!7394 mapRes!7394))

(declare-fun b!1536539 () Bool)

(assert (=> b!1536539 (= e!982723 e!982730)))

(declare-fun b!1536540 () Bool)

(declare-fun res!688862 () Bool)

(assert (=> b!1536540 (=> (not res!688862) (not e!982728))))

(declare-fun valid!1272 (CacheFurthestNullable!328) Bool)

(assert (=> b!1536540 (= res!688862 (valid!1272 cacheFurthestNullable!81))))

(declare-fun b!1536541 () Bool)

(declare-fun tp!443347 () Bool)

(assert (=> b!1536541 (= e!982713 (and tp!443347 mapRes!7392))))

(declare-fun condMapEmpty!7393 () Bool)

(declare-fun mapDefault!7392 () List!16360)

(assert (=> b!1536541 (= condMapEmpty!7393 (= (arr!2425 (_values!1839 (v!23100 (underlying!3329 (v!23102 (underlying!3330 (cache!1885 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16360)) mapDefault!7392)))))

(declare-fun b!1536542 () Bool)

(declare-fun tp!443351 () Bool)

(assert (=> b!1536542 (= e!982714 (and e!982711 tp!443351))))

(assert (= (and start!142834 res!688856) b!1536513))

(assert (= (and b!1536513 res!688854) b!1536520))

(assert (= (and b!1536520 res!688855) b!1536528))

(assert (= (and b!1536528 res!688859) b!1536518))

(assert (= (and b!1536518 res!688861) b!1536529))

(assert (= (and b!1536529 res!688860) b!1536540))

(assert (= (and b!1536540 res!688862) b!1536533))

(assert (= (and b!1536533 res!688857) b!1536517))

(assert (= (and b!1536517 (not res!688858)) b!1536507))

(assert (= (and b!1536521 condMapEmpty!7394) mapIsEmpty!7392))

(assert (= (and b!1536521 (not condMapEmpty!7394)) mapNonEmpty!7393))

(assert (= b!1536508 b!1536521))

(assert (= b!1536516 b!1536508))

(assert (= b!1536515 b!1536516))

(assert (= (and b!1536538 ((_ is LongMap!1558) (v!23097 (underlying!3326 (cache!1883 cacheUp!695))))) b!1536515))

(assert (= b!1536512 b!1536538))

(assert (= (and b!1536532 ((_ is HashMap!1502) (cache!1883 cacheUp!695))) b!1536512))

(assert (= start!142834 b!1536532))

(assert (= start!142834 b!1536527))

(assert (= (and b!1536526 condMapEmpty!7392) mapIsEmpty!7394))

(assert (= (and b!1536526 (not condMapEmpty!7392)) mapNonEmpty!7394))

(assert (= b!1536511 b!1536526))

(assert (= b!1536522 b!1536511))

(assert (= b!1536539 b!1536522))

(assert (= (and b!1536534 ((_ is LongMap!1559) (v!23099 (underlying!3328 (cache!1884 cacheDown!708))))) b!1536539))

(assert (= b!1536514 b!1536534))

(assert (= (and b!1536510 ((_ is HashMap!1503) (cache!1884 cacheDown!708))) b!1536514))

(assert (= start!142834 b!1536510))

(assert (= start!142834 b!1536523))

(assert (= b!1536535 b!1536537))

(assert (= b!1536542 b!1536535))

(assert (= (and start!142834 ((_ is Cons!16294) rulesArg!359)) b!1536542))

(assert (= (and b!1536541 condMapEmpty!7393) mapIsEmpty!7393))

(assert (= (and b!1536541 (not condMapEmpty!7393)) mapNonEmpty!7392))

(assert (= b!1536519 b!1536541))

(assert (= b!1536531 b!1536519))

(assert (= b!1536509 b!1536531))

(assert (= (and b!1536524 ((_ is LongMap!1560) (v!23102 (underlying!3330 (cache!1885 cacheFurthestNullable!81))))) b!1536509))

(assert (= b!1536536 b!1536524))

(assert (= (and b!1536525 ((_ is HashMap!1504) (cache!1885 cacheFurthestNullable!81))) b!1536536))

(assert (= b!1536525 b!1536530))

(assert (= start!142834 b!1536525))

(declare-fun m!1811732 () Bool)

(assert (=> b!1536530 m!1811732))

(declare-fun m!1811734 () Bool)

(assert (=> b!1536508 m!1811734))

(declare-fun m!1811736 () Bool)

(assert (=> b!1536508 m!1811736))

(declare-fun m!1811738 () Bool)

(assert (=> b!1536529 m!1811738))

(declare-fun m!1811740 () Bool)

(assert (=> b!1536511 m!1811740))

(declare-fun m!1811742 () Bool)

(assert (=> b!1536511 m!1811742))

(declare-fun m!1811744 () Bool)

(assert (=> mapNonEmpty!7394 m!1811744))

(declare-fun m!1811746 () Bool)

(assert (=> mapNonEmpty!7392 m!1811746))

(declare-fun m!1811748 () Bool)

(assert (=> b!1536519 m!1811748))

(declare-fun m!1811750 () Bool)

(assert (=> b!1536519 m!1811750))

(declare-fun m!1811752 () Bool)

(assert (=> b!1536520 m!1811752))

(declare-fun m!1811754 () Bool)

(assert (=> b!1536525 m!1811754))

(declare-fun m!1811756 () Bool)

(assert (=> mapNonEmpty!7393 m!1811756))

(declare-fun m!1811758 () Bool)

(assert (=> b!1536517 m!1811758))

(declare-fun m!1811760 () Bool)

(assert (=> b!1536517 m!1811760))

(declare-fun m!1811762 () Bool)

(assert (=> b!1536527 m!1811762))

(declare-fun m!1811764 () Bool)

(assert (=> b!1536518 m!1811764))

(declare-fun m!1811766 () Bool)

(assert (=> b!1536523 m!1811766))

(declare-fun m!1811768 () Bool)

(assert (=> b!1536535 m!1811768))

(declare-fun m!1811770 () Bool)

(assert (=> b!1536535 m!1811770))

(declare-fun m!1811772 () Bool)

(assert (=> b!1536540 m!1811772))

(declare-fun m!1811774 () Bool)

(assert (=> b!1536513 m!1811774))

(declare-fun m!1811776 () Bool)

(assert (=> b!1536507 m!1811776))

(declare-fun m!1811778 () Bool)

(assert (=> start!142834 m!1811778))

(declare-fun m!1811780 () Bool)

(assert (=> start!142834 m!1811780))

(declare-fun m!1811782 () Bool)

(assert (=> start!142834 m!1811782))

(declare-fun m!1811784 () Bool)

(assert (=> start!142834 m!1811784))

(declare-fun m!1811786 () Bool)

(assert (=> start!142834 m!1811786))

(declare-fun m!1811788 () Bool)

(assert (=> b!1536528 m!1811788))

(assert (=> b!1536528 m!1811788))

(declare-fun m!1811790 () Bool)

(assert (=> b!1536528 m!1811790))

(declare-fun m!1811792 () Bool)

(assert (=> b!1536528 m!1811792))

(check-sat b_and!106763 (not b!1536508) (not b!1536520) (not b_next!40597) (not b!1536519) b_and!106759 (not b!1536535) b_and!106767 (not b!1536529) b_and!106769 (not b!1536542) (not b!1536525) (not b_next!40593) (not b!1536513) (not b!1536507) (not b_next!40589) (not b_next!40585) (not b_next!40587) (not b!1536527) b_and!106765 (not b!1536526) (not b_next!40595) (not b!1536517) (not mapNonEmpty!7392) (not b!1536511) (not mapNonEmpty!7394) (not b!1536528) (not mapNonEmpty!7393) (not b!1536530) b_and!106761 (not b!1536518) b_and!106771 (not b!1536521) (not b_next!40591) (not b_next!40583) (not b!1536541) b_and!106757 (not b!1536540) (not b!1536523) (not start!142834))
(check-sat b_and!106769 (not b_next!40593) b_and!106763 (not b_next!40587) b_and!106765 (not b_next!40597) (not b_next!40595) b_and!106759 b_and!106761 (not b_next!40583) b_and!106767 b_and!106757 (not b_next!40589) (not b_next!40585) b_and!106771 (not b_next!40591))

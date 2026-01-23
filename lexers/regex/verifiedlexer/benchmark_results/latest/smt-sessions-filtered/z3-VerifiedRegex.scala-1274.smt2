; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66160 () Bool)

(assert start!66160)

(declare-fun b!692019 () Bool)

(declare-fun b_free!19637 () Bool)

(declare-fun b_next!19701 () Bool)

(assert (=> b!692019 (= b_free!19637 (not b_next!19701))))

(declare-fun tp!208623 () Bool)

(declare-fun b_and!63431 () Bool)

(assert (=> b!692019 (= tp!208623 b_and!63431)))

(declare-fun b!692042 () Bool)

(declare-fun b_free!19639 () Bool)

(declare-fun b_next!19703 () Bool)

(assert (=> b!692042 (= b_free!19639 (not b_next!19703))))

(declare-fun tp!208641 () Bool)

(declare-fun b_and!63433 () Bool)

(assert (=> b!692042 (= tp!208641 b_and!63433)))

(declare-fun b!692050 () Bool)

(declare-fun b_free!19641 () Bool)

(declare-fun b_next!19705 () Bool)

(assert (=> b!692050 (= b_free!19641 (not b_next!19705))))

(declare-fun tp!208638 () Bool)

(declare-fun b_and!63435 () Bool)

(assert (=> b!692050 (= tp!208638 b_and!63435)))

(declare-fun b!692025 () Bool)

(declare-fun b_free!19643 () Bool)

(declare-fun b_next!19707 () Bool)

(assert (=> b!692025 (= b_free!19643 (not b_next!19707))))

(declare-fun tp!208627 () Bool)

(declare-fun b_and!63437 () Bool)

(assert (=> b!692025 (= tp!208627 b_and!63437)))

(declare-fun b!692051 () Bool)

(declare-fun b_free!19645 () Bool)

(declare-fun b_next!19709 () Bool)

(assert (=> b!692051 (= b_free!19645 (not b_next!19709))))

(declare-fun tp!208626 () Bool)

(declare-fun b_and!63439 () Bool)

(assert (=> b!692051 (= tp!208626 b_and!63439)))

(declare-fun b!692040 () Bool)

(declare-fun b_free!19647 () Bool)

(declare-fun b_next!19711 () Bool)

(assert (=> b!692040 (= b_free!19647 (not b_next!19711))))

(declare-fun tp!208624 () Bool)

(declare-fun b_and!63441 () Bool)

(assert (=> b!692040 (= tp!208624 b_and!63441)))

(declare-fun b!692053 () Bool)

(declare-fun b_free!19649 () Bool)

(declare-fun b_next!19713 () Bool)

(assert (=> b!692053 (= b_free!19649 (not b_next!19713))))

(declare-fun tp!208647 () Bool)

(declare-fun b_and!63443 () Bool)

(assert (=> b!692053 (= tp!208647 b_and!63443)))

(declare-fun b_free!19651 () Bool)

(declare-fun b_next!19715 () Bool)

(assert (=> b!692053 (= b_free!19651 (not b_next!19715))))

(declare-fun tp!208631 () Bool)

(declare-fun b_and!63445 () Bool)

(assert (=> b!692053 (= tp!208631 b_and!63445)))

(declare-fun b!692014 () Bool)

(declare-fun e!435437 () Bool)

(declare-fun e!435431 () Bool)

(assert (=> b!692014 (= e!435437 e!435431)))

(declare-fun mapNonEmpty!3107 () Bool)

(declare-fun mapRes!3107 () Bool)

(declare-fun tp!208635 () Bool)

(declare-fun tp!208646 () Bool)

(assert (=> mapNonEmpty!3107 (= mapRes!3107 (and tp!208635 tp!208646))))

(declare-fun mapKey!3107 () (_ BitVec 32))

(declare-datatypes ((C!4288 0))(
  ( (C!4289 (val!2374 Int)) )
))
(declare-datatypes ((List!7509 0))(
  ( (Nil!7495) (Cons!7495 (h!12896 C!4288) (t!87327 List!7509)) )
))
(declare-datatypes ((IArray!5295 0))(
  ( (IArray!5296 (innerList!2705 List!7509)) )
))
(declare-datatypes ((Regex!1843 0))(
  ( (ElementMatch!1843 (c!121607 C!4288)) (Concat!3391 (regOne!4198 Regex!1843) (regTwo!4198 Regex!1843)) (EmptyExpr!1843) (Star!1843 (reg!2172 Regex!1843)) (EmptyLang!1843) (Union!1843 (regOne!4199 Regex!1843) (regTwo!4199 Regex!1843)) )
))
(declare-datatypes ((Hashable!743 0))(
  ( (HashableExt!742 (__x!5406 Int)) )
))
(declare-datatypes ((Conc!2647 0))(
  ( (Node!2647 (left!6001 Conc!2647) (right!6331 Conc!2647) (csize!5524 Int) (cheight!2858 Int)) (Leaf!3922 (xs!5298 IArray!5295) (csize!5525 Int)) (Empty!2647) )
))
(declare-datatypes ((BalanceConc!5306 0))(
  ( (BalanceConc!5307 (c!121608 Conc!2647)) )
))
(declare-datatypes ((List!7510 0))(
  ( (Nil!7496) (Cons!7496 (h!12897 Regex!1843) (t!87328 List!7510)) )
))
(declare-datatypes ((Context!490 0))(
  ( (Context!491 (exprs!745 List!7510)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7888 0))(
  ( (tuple2!7889 (_1!4360 (InoxSet Context!490)) (_2!4360 Int)) )
))
(declare-datatypes ((tuple2!7890 0))(
  ( (tuple2!7891 (_1!4361 tuple2!7888) (_2!4361 Int)) )
))
(declare-datatypes ((array!2889 0))(
  ( (array!2890 (arr!1304 (Array (_ BitVec 32) (_ BitVec 64))) (size!6129 (_ BitVec 32))) )
))
(declare-datatypes ((List!7511 0))(
  ( (Nil!7497) (Cons!7497 (h!12898 tuple2!7890) (t!87329 List!7511)) )
))
(declare-datatypes ((array!2891 0))(
  ( (array!2892 (arr!1305 (Array (_ BitVec 32) List!7511)) (size!6130 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1542 0))(
  ( (LongMapFixedSize!1543 (defaultEntry!1127 Int) (mask!2577 (_ BitVec 32)) (extraKeys!1018 (_ BitVec 32)) (zeroValue!1028 List!7511) (minValue!1028 List!7511) (_size!1651 (_ BitVec 32)) (_keys!1065 array!2889) (_values!1050 array!2891) (_vacant!832 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3025 0))(
  ( (Cell!3026 (v!17661 LongMapFixedSize!1542)) )
))
(declare-datatypes ((MutLongMap!771 0))(
  ( (LongMap!771 (underlying!1725 Cell!3025)) (MutLongMapExt!770 (__x!5407 Int)) )
))
(declare-datatypes ((Cell!3027 0))(
  ( (Cell!3028 (v!17662 MutLongMap!771)) )
))
(declare-datatypes ((MutableMap!743 0))(
  ( (MutableMapExt!742 (__x!5408 Int)) (HashMap!743 (underlying!1726 Cell!3027) (hashF!2651 Hashable!743) (_size!1652 (_ BitVec 32)) (defaultValue!894 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!42 0))(
  ( (CacheFindLongestMatch!43 (cache!1130 MutableMap!743) (totalInput!1802 BalanceConc!5306)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!42)

(declare-fun mapValue!3109 () List!7511)

(declare-fun mapRest!3107 () (Array (_ BitVec 32) List!7511))

(assert (=> mapNonEmpty!3107 (= (arr!1305 (_values!1050 (v!17661 (underlying!1725 (v!17662 (underlying!1726 (cache!1130 cacheFindLongestMatch!74))))))) (store mapRest!3107 mapKey!3107 mapValue!3109))))

(declare-fun b!692015 () Bool)

(declare-fun e!435411 () Bool)

(declare-fun e!435430 () Bool)

(declare-datatypes ((tuple2!7892 0))(
  ( (tuple2!7893 (_1!4362 Context!490) (_2!4362 C!4288)) )
))
(declare-datatypes ((tuple2!7894 0))(
  ( (tuple2!7895 (_1!4363 tuple2!7892) (_2!4363 (InoxSet Context!490))) )
))
(declare-datatypes ((List!7512 0))(
  ( (Nil!7498) (Cons!7498 (h!12899 tuple2!7894) (t!87330 List!7512)) )
))
(declare-datatypes ((array!2893 0))(
  ( (array!2894 (arr!1306 (Array (_ BitVec 32) List!7512)) (size!6131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1544 0))(
  ( (LongMapFixedSize!1545 (defaultEntry!1128 Int) (mask!2578 (_ BitVec 32)) (extraKeys!1019 (_ BitVec 32)) (zeroValue!1029 List!7512) (minValue!1029 List!7512) (_size!1653 (_ BitVec 32)) (_keys!1066 array!2889) (_values!1051 array!2893) (_vacant!833 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3029 0))(
  ( (Cell!3030 (v!17663 LongMapFixedSize!1544)) )
))
(declare-datatypes ((MutLongMap!772 0))(
  ( (LongMap!772 (underlying!1727 Cell!3029)) (MutLongMapExt!771 (__x!5409 Int)) )
))
(declare-fun lt!284868 () MutLongMap!772)

(get-info :version)

(assert (=> b!692015 (= e!435411 (and e!435430 ((_ is LongMap!772) lt!284868)))))

(declare-datatypes ((Hashable!744 0))(
  ( (HashableExt!743 (__x!5410 Int)) )
))
(declare-datatypes ((Cell!3031 0))(
  ( (Cell!3032 (v!17664 MutLongMap!772)) )
))
(declare-datatypes ((MutableMap!744 0))(
  ( (MutableMapExt!743 (__x!5411 Int)) (HashMap!744 (underlying!1728 Cell!3031) (hashF!2652 Hashable!744) (_size!1654 (_ BitVec 32)) (defaultValue!895 Int)) )
))
(declare-datatypes ((CacheUp!382 0))(
  ( (CacheUp!383 (cache!1131 MutableMap!744)) )
))
(declare-fun cacheUp!502 () CacheUp!382)

(assert (=> b!692015 (= lt!284868 (v!17664 (underlying!1728 (cache!1131 cacheUp!502))))))

(declare-fun b!692016 () Bool)

(declare-fun res!313740 () Bool)

(declare-fun e!435413 () Bool)

(assert (=> b!692016 (=> (not res!313740) (not e!435413))))

(declare-datatypes ((List!7513 0))(
  ( (Nil!7499) (Cons!7499 (h!12900 (_ BitVec 16)) (t!87331 List!7513)) )
))
(declare-datatypes ((TokenValue!1548 0))(
  ( (FloatLiteralValue!3096 (text!11281 List!7513)) (TokenValueExt!1547 (__x!5412 Int)) (Broken!7740 (value!48503 List!7513)) (Object!1561) (End!1548) (Def!1548) (Underscore!1548) (Match!1548) (Else!1548) (Error!1548) (Case!1548) (If!1548) (Extends!1548) (Abstract!1548) (Class!1548) (Val!1548) (DelimiterValue!3096 (del!1608 List!7513)) (KeywordValue!1554 (value!48504 List!7513)) (CommentValue!3096 (value!48505 List!7513)) (WhitespaceValue!3096 (value!48506 List!7513)) (IndentationValue!1548 (value!48507 List!7513)) (String!9465) (Int32!1548) (Broken!7741 (value!48508 List!7513)) (Boolean!1549) (Unit!12649) (OperatorValue!1551 (op!1608 List!7513)) (IdentifierValue!3096 (value!48509 List!7513)) (IdentifierValue!3097 (value!48510 List!7513)) (WhitespaceValue!3097 (value!48511 List!7513)) (True!3096) (False!3096) (Broken!7742 (value!48512 List!7513)) (Broken!7743 (value!48513 List!7513)) (True!3097) (RightBrace!1548) (RightBracket!1548) (Colon!1548) (Null!1548) (Comma!1548) (LeftBracket!1548) (False!3097) (LeftBrace!1548) (ImaginaryLiteralValue!1548 (text!11282 List!7513)) (StringLiteralValue!4644 (value!48514 List!7513)) (EOFValue!1548 (value!48515 List!7513)) (IdentValue!1548 (value!48516 List!7513)) (DelimiterValue!3097 (value!48517 List!7513)) (DedentValue!1548 (value!48518 List!7513)) (NewLineValue!1548 (value!48519 List!7513)) (IntegerValue!4644 (value!48520 (_ BitVec 32)) (text!11283 List!7513)) (IntegerValue!4645 (value!48521 Int) (text!11284 List!7513)) (Times!1548) (Or!1548) (Equal!1548) (Minus!1548) (Broken!7744 (value!48522 List!7513)) (And!1548) (Div!1548) (LessEqual!1548) (Mod!1548) (Concat!3392) (Not!1548) (Plus!1548) (SpaceValue!1548 (value!48523 List!7513)) (IntegerValue!4646 (value!48524 Int) (text!11285 List!7513)) (StringLiteralValue!4645 (text!11286 List!7513)) (FloatLiteralValue!3097 (text!11287 List!7513)) (BytesLiteralValue!1548 (value!48525 List!7513)) (CommentValue!3097 (value!48526 List!7513)) (StringLiteralValue!4646 (value!48527 List!7513)) (ErrorTokenValue!1548 (msg!1609 List!7513)) )
))
(declare-datatypes ((TokenValueInjection!2832 0))(
  ( (TokenValueInjection!2833 (toValue!2466 Int) (toChars!2325 Int)) )
))
(declare-datatypes ((String!9466 0))(
  ( (String!9467 (value!48528 String)) )
))
(declare-datatypes ((Rule!2808 0))(
  ( (Rule!2809 (regex!1504 Regex!1843) (tag!1766 String!9466) (isSeparator!1504 Bool) (transformation!1504 TokenValueInjection!2832)) )
))
(declare-datatypes ((List!7514 0))(
  ( (Nil!7500) (Cons!7500 (h!12901 Rule!2808) (t!87332 List!7514)) )
))
(declare-fun rules!1486 () List!7514)

(declare-fun isEmpty!4876 (List!7514) Bool)

(assert (=> b!692016 (= res!313740 (not (isEmpty!4876 rules!1486)))))

(declare-fun b!692017 () Bool)

(declare-fun e!435417 () Bool)

(declare-fun treated!50 () BalanceConc!5306)

(declare-fun tp!208634 () Bool)

(declare-fun inv!9614 (Conc!2647) Bool)

(assert (=> b!692017 (= e!435417 (and (inv!9614 (c!121608 treated!50)) tp!208634))))

(declare-fun e!435426 () Bool)

(declare-fun e!435428 () Bool)

(declare-fun e!435427 () Bool)

(declare-fun b!692018 () Bool)

(declare-fun inv!9615 (BalanceConc!5306) Bool)

(assert (=> b!692018 (= e!435428 (and e!435426 (inv!9615 (totalInput!1802 cacheFindLongestMatch!74)) e!435427))))

(declare-fun mapNonEmpty!3108 () Bool)

(declare-fun mapRes!3109 () Bool)

(declare-fun tp!208628 () Bool)

(declare-fun tp!208642 () Bool)

(assert (=> mapNonEmpty!3108 (= mapRes!3109 (and tp!208628 tp!208642))))

(declare-datatypes ((tuple3!716 0))(
  ( (tuple3!717 (_1!4364 Regex!1843) (_2!4364 Context!490) (_3!416 C!4288)) )
))
(declare-datatypes ((tuple2!7896 0))(
  ( (tuple2!7897 (_1!4365 tuple3!716) (_2!4365 (InoxSet Context!490))) )
))
(declare-datatypes ((List!7515 0))(
  ( (Nil!7501) (Cons!7501 (h!12902 tuple2!7896) (t!87333 List!7515)) )
))
(declare-fun mapValue!3108 () List!7515)

(declare-fun mapKey!3109 () (_ BitVec 32))

(declare-datatypes ((array!2895 0))(
  ( (array!2896 (arr!1307 (Array (_ BitVec 32) List!7515)) (size!6132 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1546 0))(
  ( (LongMapFixedSize!1547 (defaultEntry!1129 Int) (mask!2579 (_ BitVec 32)) (extraKeys!1020 (_ BitVec 32)) (zeroValue!1030 List!7515) (minValue!1030 List!7515) (_size!1655 (_ BitVec 32)) (_keys!1067 array!2889) (_values!1052 array!2895) (_vacant!834 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3033 0))(
  ( (Cell!3034 (v!17665 LongMapFixedSize!1546)) )
))
(declare-datatypes ((MutLongMap!773 0))(
  ( (LongMap!773 (underlying!1729 Cell!3033)) (MutLongMapExt!772 (__x!5413 Int)) )
))
(declare-datatypes ((Cell!3035 0))(
  ( (Cell!3036 (v!17666 MutLongMap!773)) )
))
(declare-datatypes ((Hashable!745 0))(
  ( (HashableExt!744 (__x!5414 Int)) )
))
(declare-datatypes ((MutableMap!745 0))(
  ( (MutableMapExt!744 (__x!5415 Int)) (HashMap!745 (underlying!1730 Cell!3035) (hashF!2653 Hashable!745) (_size!1656 (_ BitVec 32)) (defaultValue!896 Int)) )
))
(declare-datatypes ((CacheDown!388 0))(
  ( (CacheDown!389 (cache!1132 MutableMap!745)) )
))
(declare-fun cacheDown!515 () CacheDown!388)

(declare-fun mapRest!3108 () (Array (_ BitVec 32) List!7515))

(assert (=> mapNonEmpty!3108 (= (arr!1307 (_values!1052 (v!17665 (underlying!1729 (v!17666 (underlying!1730 (cache!1132 cacheDown!515))))))) (store mapRest!3108 mapKey!3109 mapValue!3108))))

(declare-fun mapIsEmpty!3107 () Bool)

(assert (=> mapIsEmpty!3107 mapRes!3107))

(declare-fun e!435438 () Bool)

(assert (=> b!692019 (= e!435426 (and e!435438 tp!208623))))

(declare-fun b!692020 () Bool)

(declare-fun e!435416 () Bool)

(declare-fun e!435429 () Bool)

(declare-fun tp!208651 () Bool)

(assert (=> b!692020 (= e!435416 (and e!435429 tp!208651))))

(declare-fun b!692021 () Bool)

(declare-fun e!435436 () Bool)

(declare-fun e!435415 () Bool)

(assert (=> b!692021 (= e!435436 e!435415)))

(declare-fun res!313742 () Bool)

(assert (=> b!692021 (=> (not res!313742) (not e!435415))))

(declare-datatypes ((Token!2708 0))(
  ( (Token!2709 (value!48529 TokenValue!1548) (rule!2543 Rule!2808) (size!6133 Int) (originalCharacters!1779 List!7509)) )
))
(declare-datatypes ((List!7516 0))(
  ( (Nil!7502) (Cons!7502 (h!12903 Token!2708) (t!87334 List!7516)) )
))
(declare-datatypes ((IArray!5297 0))(
  ( (IArray!5298 (innerList!2706 List!7516)) )
))
(declare-datatypes ((Conc!2648 0))(
  ( (Node!2648 (left!6002 Conc!2648) (right!6332 Conc!2648) (csize!5526 Int) (cheight!2859 Int)) (Leaf!3923 (xs!5299 IArray!5297) (csize!5527 Int)) (Empty!2648) )
))
(declare-datatypes ((BalanceConc!5308 0))(
  ( (BalanceConc!5309 (c!121609 Conc!2648)) )
))
(declare-fun acc!372 () BalanceConc!5308)

(declare-datatypes ((tuple2!7898 0))(
  ( (tuple2!7899 (_1!4366 BalanceConc!5308) (_2!4366 BalanceConc!5306)) )
))
(declare-fun lt!284871 () tuple2!7898)

(declare-fun lt!284861 () tuple2!7898)

(declare-fun list!3147 (BalanceConc!5308) List!7516)

(declare-fun ++!1956 (BalanceConc!5308 BalanceConc!5308) BalanceConc!5308)

(assert (=> b!692021 (= res!313742 (= (list!3147 (_1!4366 lt!284871)) (list!3147 (++!1956 acc!372 (_1!4366 lt!284861)))))))

(declare-fun input!870 () BalanceConc!5306)

(declare-datatypes ((LexerInterface!1318 0))(
  ( (LexerInterfaceExt!1315 (__x!5416 Int)) (Lexer!1316) )
))
(declare-fun thiss!12529 () LexerInterface!1318)

(declare-fun lexRec!161 (LexerInterface!1318 List!7514 BalanceConc!5306) tuple2!7898)

(assert (=> b!692021 (= lt!284861 (lexRec!161 thiss!12529 rules!1486 input!870))))

(declare-fun totalInput!378 () BalanceConc!5306)

(assert (=> b!692021 (= lt!284871 (lexRec!161 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!692022 () Bool)

(assert (=> b!692022 (= e!435415 (not true))))

(declare-fun lt!284869 () Bool)

(declare-fun lt!284864 () List!7509)

(declare-fun lt!284862 () List!7509)

(declare-fun isSuffix!128 (List!7509 List!7509) Bool)

(assert (=> b!692022 (= lt!284869 (isSuffix!128 lt!284864 lt!284862))))

(declare-fun lt!284867 () List!7509)

(assert (=> b!692022 (isSuffix!128 lt!284864 lt!284867)))

(declare-datatypes ((Unit!12650 0))(
  ( (Unit!12651) )
))
(declare-fun lt!284865 () Unit!12650)

(declare-fun lt!284870 () List!7509)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!128 (List!7509 List!7509) Unit!12650)

(assert (=> b!692022 (= lt!284865 (lemmaConcatTwoListThenFSndIsSuffix!128 lt!284870 lt!284864))))

(declare-fun tp!208632 () Bool)

(declare-fun e!435405 () Bool)

(declare-fun b!692023 () Bool)

(declare-fun inv!9613 (String!9466) Bool)

(declare-fun inv!9616 (TokenValueInjection!2832) Bool)

(assert (=> b!692023 (= e!435429 (and tp!208632 (inv!9613 (tag!1766 (h!12901 rules!1486))) (inv!9616 (transformation!1504 (h!12901 rules!1486))) e!435405))))

(declare-fun b!692024 () Bool)

(declare-fun e!435410 () Bool)

(declare-fun e!435432 () Bool)

(assert (=> b!692024 (= e!435410 e!435432)))

(declare-fun e!435412 () Bool)

(declare-fun tp!208637 () Bool)

(declare-fun tp!208645 () Bool)

(declare-fun e!435435 () Bool)

(declare-fun array_inv!955 (array!2889) Bool)

(declare-fun array_inv!956 (array!2893) Bool)

(assert (=> b!692025 (= e!435435 (and tp!208627 tp!208637 tp!208645 (array_inv!955 (_keys!1066 (v!17663 (underlying!1727 (v!17664 (underlying!1728 (cache!1131 cacheUp!502))))))) (array_inv!956 (_values!1051 (v!17663 (underlying!1727 (v!17664 (underlying!1728 (cache!1131 cacheUp!502))))))) e!435412))))

(declare-fun b!692026 () Bool)

(declare-fun res!313743 () Bool)

(assert (=> b!692026 (=> (not res!313743) (not e!435413))))

(declare-fun rulesInvariant!1251 (LexerInterface!1318 List!7514) Bool)

(assert (=> b!692026 (= res!313743 (rulesInvariant!1251 thiss!12529 rules!1486))))

(declare-fun b!692027 () Bool)

(declare-fun res!313741 () Bool)

(assert (=> b!692027 (=> (not res!313741) (not e!435415))))

(assert (=> b!692027 (= res!313741 (= (totalInput!1802 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!692028 () Bool)

(declare-fun e!435414 () Bool)

(declare-fun tp!208648 () Bool)

(declare-fun inv!9617 (Conc!2648) Bool)

(assert (=> b!692028 (= e!435414 (and (inv!9617 (c!121609 acc!372)) tp!208648))))

(declare-fun b!692029 () Bool)

(declare-fun e!435409 () Bool)

(assert (=> b!692029 (= e!435409 e!435436)))

(declare-fun res!313738 () Bool)

(assert (=> b!692029 (=> (not res!313738) (not e!435436))))

(declare-fun lt!284872 () tuple2!7898)

(assert (=> b!692029 (= res!313738 (= (list!3147 (_1!4366 lt!284872)) (list!3147 acc!372)))))

(assert (=> b!692029 (= lt!284872 (lexRec!161 thiss!12529 rules!1486 treated!50))))

(declare-fun b!692030 () Bool)

(declare-fun tp!208639 () Bool)

(declare-fun mapRes!3108 () Bool)

(assert (=> b!692030 (= e!435412 (and tp!208639 mapRes!3108))))

(declare-fun condMapEmpty!3109 () Bool)

(declare-fun mapDefault!3108 () List!7512)

(assert (=> b!692030 (= condMapEmpty!3109 (= (arr!1306 (_values!1051 (v!17663 (underlying!1727 (v!17664 (underlying!1728 (cache!1131 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7512)) mapDefault!3108)))))

(declare-fun b!692031 () Bool)

(declare-fun e!435408 () Bool)

(declare-fun e!435421 () Bool)

(assert (=> b!692031 (= e!435408 e!435421)))

(declare-fun b!692032 () Bool)

(declare-fun res!313736 () Bool)

(assert (=> b!692032 (=> (not res!313736) (not e!435436))))

(declare-fun isEmpty!4877 (List!7509) Bool)

(declare-fun list!3148 (BalanceConc!5306) List!7509)

(assert (=> b!692032 (= res!313736 (isEmpty!4877 (list!3148 (_2!4366 lt!284872))))))

(declare-fun b!692033 () Bool)

(declare-fun e!435404 () Bool)

(assert (=> b!692033 (= e!435430 e!435404)))

(declare-fun b!692034 () Bool)

(declare-fun res!313746 () Bool)

(assert (=> b!692034 (=> (not res!313746) (not e!435415))))

(assert (=> b!692034 (= res!313746 (= (list!3148 (_2!4366 lt!284871)) (list!3148 (_2!4366 lt!284861))))))

(declare-fun b!692035 () Bool)

(declare-fun e!435418 () Bool)

(declare-fun tp!208650 () Bool)

(assert (=> b!692035 (= e!435418 (and (inv!9614 (c!121608 totalInput!378)) tp!208650))))

(declare-fun b!692036 () Bool)

(declare-fun res!313745 () Bool)

(assert (=> b!692036 (=> (not res!313745) (not e!435415))))

(declare-fun valid!659 (CacheUp!382) Bool)

(assert (=> b!692036 (= res!313745 (valid!659 cacheUp!502))))

(declare-fun res!313737 () Bool)

(assert (=> start!66160 (=> (not res!313737) (not e!435413))))

(assert (=> start!66160 (= res!313737 ((_ is Lexer!1316) thiss!12529))))

(assert (=> start!66160 e!435413))

(declare-fun inv!9618 (BalanceConc!5308) Bool)

(assert (=> start!66160 (and (inv!9618 acc!372) e!435414)))

(assert (=> start!66160 (and (inv!9615 treated!50) e!435417)))

(assert (=> start!66160 (and (inv!9615 totalInput!378) e!435418)))

(declare-fun e!435434 () Bool)

(assert (=> start!66160 (and (inv!9615 input!870) e!435434)))

(assert (=> start!66160 e!435416))

(assert (=> start!66160 true))

(declare-fun inv!9619 (CacheUp!382) Bool)

(assert (=> start!66160 (and (inv!9619 cacheUp!502) e!435410)))

(declare-fun e!435422 () Bool)

(declare-fun inv!9620 (CacheDown!388) Bool)

(assert (=> start!66160 (and (inv!9620 cacheDown!515) e!435422)))

(declare-fun inv!9621 (CacheFindLongestMatch!42) Bool)

(assert (=> start!66160 (and (inv!9621 cacheFindLongestMatch!74) e!435428)))

(declare-fun b!692037 () Bool)

(declare-fun res!313744 () Bool)

(assert (=> b!692037 (=> (not res!313744) (not e!435415))))

(declare-fun valid!660 (CacheDown!388) Bool)

(assert (=> b!692037 (= res!313744 (valid!660 cacheDown!515))))

(declare-fun b!692038 () Bool)

(declare-fun e!435407 () Bool)

(assert (=> b!692038 (= e!435422 e!435407)))

(declare-fun b!692039 () Bool)

(declare-fun res!313739 () Bool)

(assert (=> b!692039 (=> (not res!313739) (not e!435415))))

(declare-fun valid!661 (CacheFindLongestMatch!42) Bool)

(assert (=> b!692039 (= res!313739 (valid!661 cacheFindLongestMatch!74))))

(declare-fun tp!208630 () Bool)

(declare-fun e!435433 () Bool)

(declare-fun tp!208643 () Bool)

(declare-fun array_inv!957 (array!2895) Bool)

(assert (=> b!692040 (= e!435431 (and tp!208624 tp!208643 tp!208630 (array_inv!955 (_keys!1067 (v!17665 (underlying!1729 (v!17666 (underlying!1730 (cache!1132 cacheDown!515))))))) (array_inv!957 (_values!1052 (v!17665 (underlying!1729 (v!17666 (underlying!1730 (cache!1132 cacheDown!515))))))) e!435433))))

(declare-fun b!692041 () Bool)

(declare-fun e!435406 () Bool)

(declare-fun tp!208644 () Bool)

(assert (=> b!692041 (= e!435406 (and tp!208644 mapRes!3107))))

(declare-fun condMapEmpty!3108 () Bool)

(declare-fun mapDefault!3107 () List!7511)

(assert (=> b!692041 (= condMapEmpty!3108 (= (arr!1305 (_values!1050 (v!17661 (underlying!1725 (v!17662 (underlying!1726 (cache!1130 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7511)) mapDefault!3107)))))

(declare-fun tp!208629 () Bool)

(declare-fun tp!208622 () Bool)

(declare-fun array_inv!958 (array!2891) Bool)

(assert (=> b!692042 (= e!435421 (and tp!208641 tp!208622 tp!208629 (array_inv!955 (_keys!1065 (v!17661 (underlying!1725 (v!17662 (underlying!1726 (cache!1130 cacheFindLongestMatch!74))))))) (array_inv!958 (_values!1050 (v!17661 (underlying!1725 (v!17662 (underlying!1726 (cache!1130 cacheFindLongestMatch!74))))))) e!435406))))

(declare-fun b!692043 () Bool)

(declare-fun e!435403 () Bool)

(assert (=> b!692043 (= e!435403 e!435437)))

(declare-fun mapNonEmpty!3109 () Bool)

(declare-fun tp!208649 () Bool)

(declare-fun tp!208625 () Bool)

(assert (=> mapNonEmpty!3109 (= mapRes!3108 (and tp!208649 tp!208625))))

(declare-fun mapKey!3108 () (_ BitVec 32))

(declare-fun mapValue!3107 () List!7512)

(declare-fun mapRest!3109 () (Array (_ BitVec 32) List!7512))

(assert (=> mapNonEmpty!3109 (= (arr!1306 (_values!1051 (v!17663 (underlying!1727 (v!17664 (underlying!1728 (cache!1131 cacheUp!502))))))) (store mapRest!3109 mapKey!3108 mapValue!3107))))

(declare-fun b!692044 () Bool)

(declare-fun tp!208633 () Bool)

(assert (=> b!692044 (= e!435427 (and (inv!9614 (c!121608 (totalInput!1802 cacheFindLongestMatch!74))) tp!208633))))

(declare-fun b!692045 () Bool)

(assert (=> b!692045 (= e!435404 e!435435)))

(declare-fun b!692046 () Bool)

(assert (=> b!692046 (= e!435413 e!435409)))

(declare-fun res!313735 () Bool)

(assert (=> b!692046 (=> (not res!313735) (not e!435409))))

(assert (=> b!692046 (= res!313735 (= lt!284862 lt!284867))))

(declare-fun ++!1957 (List!7509 List!7509) List!7509)

(assert (=> b!692046 (= lt!284867 (++!1957 lt!284870 lt!284864))))

(assert (=> b!692046 (= lt!284862 (list!3148 totalInput!378))))

(assert (=> b!692046 (= lt!284864 (list!3148 input!870))))

(assert (=> b!692046 (= lt!284870 (list!3148 treated!50))))

(declare-fun b!692047 () Bool)

(declare-fun e!435425 () Bool)

(declare-fun lt!284863 () MutLongMap!771)

(assert (=> b!692047 (= e!435438 (and e!435425 ((_ is LongMap!771) lt!284863)))))

(assert (=> b!692047 (= lt!284863 (v!17662 (underlying!1726 (cache!1130 cacheFindLongestMatch!74))))))

(declare-fun b!692048 () Bool)

(declare-fun e!435423 () Bool)

(declare-fun lt!284866 () MutLongMap!773)

(assert (=> b!692048 (= e!435423 (and e!435403 ((_ is LongMap!773) lt!284866)))))

(assert (=> b!692048 (= lt!284866 (v!17666 (underlying!1730 (cache!1132 cacheDown!515))))))

(declare-fun b!692049 () Bool)

(declare-fun tp!208640 () Bool)

(assert (=> b!692049 (= e!435434 (and (inv!9614 (c!121608 input!870)) tp!208640))))

(assert (=> b!692050 (= e!435407 (and e!435423 tp!208638))))

(assert (=> b!692051 (= e!435432 (and e!435411 tp!208626))))

(declare-fun b!692052 () Bool)

(assert (=> b!692052 (= e!435425 e!435408)))

(declare-fun mapIsEmpty!3108 () Bool)

(assert (=> mapIsEmpty!3108 mapRes!3109))

(declare-fun mapIsEmpty!3109 () Bool)

(assert (=> mapIsEmpty!3109 mapRes!3108))

(assert (=> b!692053 (= e!435405 (and tp!208647 tp!208631))))

(declare-fun b!692054 () Bool)

(declare-fun tp!208636 () Bool)

(assert (=> b!692054 (= e!435433 (and tp!208636 mapRes!3109))))

(declare-fun condMapEmpty!3107 () Bool)

(declare-fun mapDefault!3109 () List!7515)

(assert (=> b!692054 (= condMapEmpty!3107 (= (arr!1307 (_values!1052 (v!17665 (underlying!1729 (v!17666 (underlying!1730 (cache!1132 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7515)) mapDefault!3109)))))

(assert (= (and start!66160 res!313737) b!692016))

(assert (= (and b!692016 res!313740) b!692026))

(assert (= (and b!692026 res!313743) b!692046))

(assert (= (and b!692046 res!313735) b!692029))

(assert (= (and b!692029 res!313738) b!692032))

(assert (= (and b!692032 res!313736) b!692021))

(assert (= (and b!692021 res!313742) b!692034))

(assert (= (and b!692034 res!313746) b!692036))

(assert (= (and b!692036 res!313745) b!692037))

(assert (= (and b!692037 res!313744) b!692039))

(assert (= (and b!692039 res!313739) b!692027))

(assert (= (and b!692027 res!313741) b!692022))

(assert (= start!66160 b!692028))

(assert (= start!66160 b!692017))

(assert (= start!66160 b!692035))

(assert (= start!66160 b!692049))

(assert (= b!692023 b!692053))

(assert (= b!692020 b!692023))

(assert (= (and start!66160 ((_ is Cons!7500) rules!1486)) b!692020))

(assert (= (and b!692030 condMapEmpty!3109) mapIsEmpty!3109))

(assert (= (and b!692030 (not condMapEmpty!3109)) mapNonEmpty!3109))

(assert (= b!692025 b!692030))

(assert (= b!692045 b!692025))

(assert (= b!692033 b!692045))

(assert (= (and b!692015 ((_ is LongMap!772) (v!17664 (underlying!1728 (cache!1131 cacheUp!502))))) b!692033))

(assert (= b!692051 b!692015))

(assert (= (and b!692024 ((_ is HashMap!744) (cache!1131 cacheUp!502))) b!692051))

(assert (= start!66160 b!692024))

(assert (= (and b!692054 condMapEmpty!3107) mapIsEmpty!3108))

(assert (= (and b!692054 (not condMapEmpty!3107)) mapNonEmpty!3108))

(assert (= b!692040 b!692054))

(assert (= b!692014 b!692040))

(assert (= b!692043 b!692014))

(assert (= (and b!692048 ((_ is LongMap!773) (v!17666 (underlying!1730 (cache!1132 cacheDown!515))))) b!692043))

(assert (= b!692050 b!692048))

(assert (= (and b!692038 ((_ is HashMap!745) (cache!1132 cacheDown!515))) b!692050))

(assert (= start!66160 b!692038))

(assert (= (and b!692041 condMapEmpty!3108) mapIsEmpty!3107))

(assert (= (and b!692041 (not condMapEmpty!3108)) mapNonEmpty!3107))

(assert (= b!692042 b!692041))

(assert (= b!692031 b!692042))

(assert (= b!692052 b!692031))

(assert (= (and b!692047 ((_ is LongMap!771) (v!17662 (underlying!1726 (cache!1130 cacheFindLongestMatch!74))))) b!692052))

(assert (= b!692019 b!692047))

(assert (= (and b!692018 ((_ is HashMap!743) (cache!1130 cacheFindLongestMatch!74))) b!692019))

(assert (= b!692018 b!692044))

(assert (= start!66160 b!692018))

(declare-fun m!948086 () Bool)

(assert (=> b!692040 m!948086))

(declare-fun m!948088 () Bool)

(assert (=> b!692040 m!948088))

(declare-fun m!948090 () Bool)

(assert (=> b!692037 m!948090))

(declare-fun m!948092 () Bool)

(assert (=> b!692036 m!948092))

(declare-fun m!948094 () Bool)

(assert (=> mapNonEmpty!3108 m!948094))

(declare-fun m!948096 () Bool)

(assert (=> b!692042 m!948096))

(declare-fun m!948098 () Bool)

(assert (=> b!692042 m!948098))

(declare-fun m!948100 () Bool)

(assert (=> b!692029 m!948100))

(declare-fun m!948102 () Bool)

(assert (=> b!692029 m!948102))

(declare-fun m!948104 () Bool)

(assert (=> b!692029 m!948104))

(declare-fun m!948106 () Bool)

(assert (=> b!692032 m!948106))

(assert (=> b!692032 m!948106))

(declare-fun m!948108 () Bool)

(assert (=> b!692032 m!948108))

(declare-fun m!948110 () Bool)

(assert (=> b!692039 m!948110))

(declare-fun m!948112 () Bool)

(assert (=> b!692049 m!948112))

(declare-fun m!948114 () Bool)

(assert (=> mapNonEmpty!3109 m!948114))

(declare-fun m!948116 () Bool)

(assert (=> b!692046 m!948116))

(declare-fun m!948118 () Bool)

(assert (=> b!692046 m!948118))

(declare-fun m!948120 () Bool)

(assert (=> b!692046 m!948120))

(declare-fun m!948122 () Bool)

(assert (=> b!692046 m!948122))

(declare-fun m!948124 () Bool)

(assert (=> b!692023 m!948124))

(declare-fun m!948126 () Bool)

(assert (=> b!692023 m!948126))

(declare-fun m!948128 () Bool)

(assert (=> b!692021 m!948128))

(declare-fun m!948130 () Bool)

(assert (=> b!692021 m!948130))

(declare-fun m!948132 () Bool)

(assert (=> b!692021 m!948132))

(assert (=> b!692021 m!948130))

(declare-fun m!948134 () Bool)

(assert (=> b!692021 m!948134))

(declare-fun m!948136 () Bool)

(assert (=> b!692021 m!948136))

(declare-fun m!948138 () Bool)

(assert (=> b!692016 m!948138))

(declare-fun m!948140 () Bool)

(assert (=> b!692034 m!948140))

(declare-fun m!948142 () Bool)

(assert (=> b!692034 m!948142))

(declare-fun m!948144 () Bool)

(assert (=> b!692018 m!948144))

(declare-fun m!948146 () Bool)

(assert (=> b!692017 m!948146))

(declare-fun m!948148 () Bool)

(assert (=> b!692022 m!948148))

(declare-fun m!948150 () Bool)

(assert (=> b!692022 m!948150))

(declare-fun m!948152 () Bool)

(assert (=> b!692022 m!948152))

(declare-fun m!948154 () Bool)

(assert (=> b!692026 m!948154))

(declare-fun m!948156 () Bool)

(assert (=> b!692025 m!948156))

(declare-fun m!948158 () Bool)

(assert (=> b!692025 m!948158))

(declare-fun m!948160 () Bool)

(assert (=> start!66160 m!948160))

(declare-fun m!948162 () Bool)

(assert (=> start!66160 m!948162))

(declare-fun m!948164 () Bool)

(assert (=> start!66160 m!948164))

(declare-fun m!948166 () Bool)

(assert (=> start!66160 m!948166))

(declare-fun m!948168 () Bool)

(assert (=> start!66160 m!948168))

(declare-fun m!948170 () Bool)

(assert (=> start!66160 m!948170))

(declare-fun m!948172 () Bool)

(assert (=> start!66160 m!948172))

(declare-fun m!948174 () Bool)

(assert (=> b!692044 m!948174))

(declare-fun m!948176 () Bool)

(assert (=> mapNonEmpty!3107 m!948176))

(declare-fun m!948178 () Bool)

(assert (=> b!692035 m!948178))

(declare-fun m!948180 () Bool)

(assert (=> b!692028 m!948180))

(check-sat (not b!692054) b_and!63435 (not b!692026) b_and!63431 (not b!692046) (not b_next!19711) (not b!692023) (not mapNonEmpty!3107) (not b_next!19705) (not b!692016) (not mapNonEmpty!3109) (not b_next!19713) (not b!692034) (not b!692035) (not b!692017) (not b_next!19715) (not b!692025) b_and!63441 (not b!692022) (not b!692036) (not b!692041) (not b_next!19709) (not b!692030) (not b!692020) (not b!692040) (not b!692029) (not b_next!19707) b_and!63445 (not b!692032) (not b_next!19703) (not b!692028) b_and!63433 (not b!692037) b_and!63443 (not b!692039) (not b_next!19701) (not start!66160) (not b!692021) b_and!63439 (not b!692049) (not mapNonEmpty!3108) (not b!692042) b_and!63437 (not b!692018) (not b!692044))
(check-sat (not b_next!19715) b_and!63441 (not b_next!19709) (not b_next!19707) b_and!63445 b_and!63435 (not b_next!19703) b_and!63431 b_and!63433 (not b_next!19711) b_and!63443 (not b_next!19701) b_and!63439 (not b_next!19705) b_and!63437 (not b_next!19713))

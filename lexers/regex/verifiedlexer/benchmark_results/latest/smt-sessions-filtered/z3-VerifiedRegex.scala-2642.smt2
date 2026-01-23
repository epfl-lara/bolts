; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142930 () Bool)

(assert start!142930)

(declare-fun b!1537670 () Bool)

(declare-fun b_free!39983 () Bool)

(declare-fun b_next!40687 () Bool)

(assert (=> b!1537670 (= b_free!39983 (not b_next!40687))))

(declare-fun tp!444232 () Bool)

(declare-fun b_and!106861 () Bool)

(assert (=> b!1537670 (= tp!444232 b_and!106861)))

(declare-fun b!1537652 () Bool)

(declare-fun b_free!39985 () Bool)

(declare-fun b_next!40689 () Bool)

(assert (=> b!1537652 (= b_free!39985 (not b_next!40689))))

(declare-fun tp!444219 () Bool)

(declare-fun b_and!106863 () Bool)

(assert (=> b!1537652 (= tp!444219 b_and!106863)))

(declare-fun b!1537656 () Bool)

(declare-fun b_free!39987 () Bool)

(declare-fun b_next!40691 () Bool)

(assert (=> b!1537656 (= b_free!39987 (not b_next!40691))))

(declare-fun tp!444239 () Bool)

(declare-fun b_and!106865 () Bool)

(assert (=> b!1537656 (= tp!444239 b_and!106865)))

(declare-fun b!1537667 () Bool)

(declare-fun b_free!39989 () Bool)

(declare-fun b_next!40693 () Bool)

(assert (=> b!1537667 (= b_free!39989 (not b_next!40693))))

(declare-fun tp!444244 () Bool)

(declare-fun b_and!106867 () Bool)

(assert (=> b!1537667 (= tp!444244 b_and!106867)))

(declare-fun b!1537647 () Bool)

(declare-fun b_free!39991 () Bool)

(declare-fun b_next!40695 () Bool)

(assert (=> b!1537647 (= b_free!39991 (not b_next!40695))))

(declare-fun tp!444220 () Bool)

(declare-fun b_and!106869 () Bool)

(assert (=> b!1537647 (= tp!444220 b_and!106869)))

(declare-fun b!1537650 () Bool)

(declare-fun b_free!39993 () Bool)

(declare-fun b_next!40697 () Bool)

(assert (=> b!1537650 (= b_free!39993 (not b_next!40697))))

(declare-fun tp!444218 () Bool)

(declare-fun b_and!106871 () Bool)

(assert (=> b!1537650 (= tp!444218 b_and!106871)))

(declare-fun b!1537659 () Bool)

(declare-fun b_free!39995 () Bool)

(declare-fun b_next!40699 () Bool)

(assert (=> b!1537659 (= b_free!39995 (not b_next!40699))))

(declare-fun tp!444223 () Bool)

(declare-fun b_and!106873 () Bool)

(assert (=> b!1537659 (= tp!444223 b_and!106873)))

(declare-fun b_free!39997 () Bool)

(declare-fun b_next!40701 () Bool)

(assert (=> b!1537659 (= b_free!39997 (not b_next!40701))))

(declare-fun tp!444240 () Bool)

(declare-fun b_and!106875 () Bool)

(assert (=> b!1537659 (= tp!444240 b_and!106875)))

(declare-fun b!1537641 () Bool)

(declare-fun e!983691 () Bool)

(declare-fun tp!444234 () Bool)

(declare-fun mapRes!7466 () Bool)

(assert (=> b!1537641 (= e!983691 (and tp!444234 mapRes!7466))))

(declare-fun condMapEmpty!7464 () Bool)

(declare-datatypes ((C!8568 0))(
  ( (C!8569 (val!4856 Int)) )
))
(declare-datatypes ((Regex!4195 0))(
  ( (ElementMatch!4195 (c!251591 C!8568)) (Concat!7156 (regOne!8902 Regex!4195) (regTwo!8902 Regex!4195)) (EmptyExpr!4195) (Star!4195 (reg!4524 Regex!4195)) (EmptyLang!4195) (Union!4195 (regOne!8903 Regex!4195) (regTwo!8903 Regex!4195)) )
))
(declare-datatypes ((List!16396 0))(
  ( (Nil!16328) (Cons!16328 (h!21729 Regex!4195) (t!140602 List!16396)) )
))
(declare-datatypes ((Context!1426 0))(
  ( (Context!1427 (exprs!1213 List!16396)) )
))
(declare-datatypes ((array!5502 0))(
  ( (array!5503 (arr!2446 (Array (_ BitVec 32) (_ BitVec 64))) (size!13198 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!1494 0))(
  ( (tuple3!1495 (_1!8790 Regex!4195) (_2!8790 Context!1426) (_3!1116 C!8568)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15348 0))(
  ( (tuple2!15349 (_1!8791 tuple3!1494) (_2!8791 (InoxSet Context!1426))) )
))
(declare-datatypes ((List!16397 0))(
  ( (Nil!16329) (Cons!16329 (h!21730 tuple2!15348) (t!140603 List!16397)) )
))
(declare-datatypes ((array!5504 0))(
  ( (array!5505 (arr!2447 (Array (_ BitVec 32) List!16397)) (size!13199 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3152 0))(
  ( (LongMapFixedSize!3153 (defaultEntry!1936 Int) (mask!4762 (_ BitVec 32)) (extraKeys!1823 (_ BitVec 32)) (zeroValue!1833 List!16397) (minValue!1833 List!16397) (_size!3233 (_ BitVec 32)) (_keys!1870 array!5502) (_values!1855 array!5504) (_vacant!1637 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6189 0))(
  ( (Cell!6190 (v!23137 LongMapFixedSize!3152)) )
))
(declare-datatypes ((MutLongMap!1576 0))(
  ( (LongMap!1576 (underlying!3361 Cell!6189)) (MutLongMapExt!1575 (__x!10383 Int)) )
))
(declare-datatypes ((Cell!6191 0))(
  ( (Cell!6192 (v!23138 MutLongMap!1576)) )
))
(declare-datatypes ((Hashable!1520 0))(
  ( (HashableExt!1519 (__x!10384 Int)) )
))
(declare-datatypes ((MutableMap!1520 0))(
  ( (MutableMapExt!1519 (__x!10385 Int)) (HashMap!1520 (underlying!3362 Cell!6191) (hashF!3439 Hashable!1520) (_size!3234 (_ BitVec 32)) (defaultValue!1680 Int)) )
))
(declare-datatypes ((CacheDown!918 0))(
  ( (CacheDown!919 (cache!1901 MutableMap!1520)) )
))
(declare-fun cacheDown!708 () CacheDown!918)

(declare-fun mapDefault!7466 () List!16397)

(assert (=> b!1537641 (= condMapEmpty!7464 (= (arr!2447 (_values!1855 (v!23137 (underlying!3361 (v!23138 (underlying!3362 (cache!1901 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16397)) mapDefault!7466)))))

(declare-fun b!1537642 () Bool)

(declare-fun e!983693 () Bool)

(declare-fun tp!444230 () Bool)

(declare-fun mapRes!7465 () Bool)

(assert (=> b!1537642 (= e!983693 (and tp!444230 mapRes!7465))))

(declare-fun condMapEmpty!7465 () Bool)

(declare-datatypes ((tuple2!15350 0))(
  ( (tuple2!15351 (_1!8792 Context!1426) (_2!8792 C!8568)) )
))
(declare-datatypes ((tuple2!15352 0))(
  ( (tuple2!15353 (_1!8793 tuple2!15350) (_2!8793 (InoxSet Context!1426))) )
))
(declare-datatypes ((List!16398 0))(
  ( (Nil!16330) (Cons!16330 (h!21731 tuple2!15352) (t!140604 List!16398)) )
))
(declare-datatypes ((array!5506 0))(
  ( (array!5507 (arr!2448 (Array (_ BitVec 32) List!16398)) (size!13200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3154 0))(
  ( (LongMapFixedSize!3155 (defaultEntry!1937 Int) (mask!4763 (_ BitVec 32)) (extraKeys!1824 (_ BitVec 32)) (zeroValue!1834 List!16398) (minValue!1834 List!16398) (_size!3235 (_ BitVec 32)) (_keys!1871 array!5502) (_values!1856 array!5506) (_vacant!1638 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6193 0))(
  ( (Cell!6194 (v!23139 LongMapFixedSize!3154)) )
))
(declare-datatypes ((MutLongMap!1577 0))(
  ( (LongMap!1577 (underlying!3363 Cell!6193)) (MutLongMapExt!1576 (__x!10386 Int)) )
))
(declare-datatypes ((Cell!6195 0))(
  ( (Cell!6196 (v!23140 MutLongMap!1577)) )
))
(declare-datatypes ((Hashable!1521 0))(
  ( (HashableExt!1520 (__x!10387 Int)) )
))
(declare-datatypes ((MutableMap!1521 0))(
  ( (MutableMapExt!1520 (__x!10388 Int)) (HashMap!1521 (underlying!3364 Cell!6195) (hashF!3440 Hashable!1521) (_size!3236 (_ BitVec 32)) (defaultValue!1681 Int)) )
))
(declare-datatypes ((CacheUp!910 0))(
  ( (CacheUp!911 (cache!1902 MutableMap!1521)) )
))
(declare-fun cacheUp!695 () CacheUp!910)

(declare-fun mapDefault!7465 () List!16398)

(assert (=> b!1537642 (= condMapEmpty!7465 (= (arr!2448 (_values!1856 (v!23139 (underlying!3363 (v!23140 (underlying!3364 (cache!1902 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16398)) mapDefault!7465)))))

(declare-fun b!1537643 () Bool)

(declare-fun e!983711 () Bool)

(declare-fun e!983703 () Bool)

(declare-fun lt!533524 () MutLongMap!1577)

(get-info :version)

(assert (=> b!1537643 (= e!983711 (and e!983703 ((_ is LongMap!1577) lt!533524)))))

(assert (=> b!1537643 (= lt!533524 (v!23140 (underlying!3364 (cache!1902 cacheUp!695))))))

(declare-fun mapIsEmpty!7464 () Bool)

(declare-fun mapRes!7464 () Bool)

(assert (=> mapIsEmpty!7464 mapRes!7464))

(declare-fun b!1537644 () Bool)

(declare-fun e!983686 () Bool)

(declare-fun e!983715 () Bool)

(assert (=> b!1537644 (= e!983686 e!983715)))

(declare-fun mapNonEmpty!7464 () Bool)

(declare-fun tp!444222 () Bool)

(declare-fun tp!444231 () Bool)

(assert (=> mapNonEmpty!7464 (= mapRes!7466 (and tp!444222 tp!444231))))

(declare-fun mapRest!7464 () (Array (_ BitVec 32) List!16397))

(declare-fun mapKey!7466 () (_ BitVec 32))

(declare-fun mapValue!7466 () List!16397)

(assert (=> mapNonEmpty!7464 (= (arr!2447 (_values!1855 (v!23137 (underlying!3361 (v!23138 (underlying!3362 (cache!1901 cacheDown!708))))))) (store mapRest!7464 mapKey!7466 mapValue!7466))))

(declare-fun e!983710 () Bool)

(declare-fun e!983699 () Bool)

(declare-fun b!1537645 () Bool)

(declare-fun e!983719 () Bool)

(declare-datatypes ((tuple3!1496 0))(
  ( (tuple3!1497 (_1!8794 (InoxSet Context!1426)) (_2!8794 Int) (_3!1117 Int)) )
))
(declare-datatypes ((tuple2!15354 0))(
  ( (tuple2!15355 (_1!8795 tuple3!1496) (_2!8795 Int)) )
))
(declare-datatypes ((List!16399 0))(
  ( (Nil!16331) (Cons!16331 (h!21732 tuple2!15354) (t!140605 List!16399)) )
))
(declare-datatypes ((List!16400 0))(
  ( (Nil!16332) (Cons!16332 (h!21733 C!8568) (t!140606 List!16400)) )
))
(declare-datatypes ((IArray!10981 0))(
  ( (IArray!10982 (innerList!5548 List!16400)) )
))
(declare-datatypes ((array!5508 0))(
  ( (array!5509 (arr!2449 (Array (_ BitVec 32) List!16399)) (size!13201 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3156 0))(
  ( (LongMapFixedSize!3157 (defaultEntry!1938 Int) (mask!4764 (_ BitVec 32)) (extraKeys!1825 (_ BitVec 32)) (zeroValue!1835 List!16399) (minValue!1835 List!16399) (_size!3237 (_ BitVec 32)) (_keys!1872 array!5502) (_values!1857 array!5508) (_vacant!1639 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1522 0))(
  ( (HashableExt!1521 (__x!10389 Int)) )
))
(declare-datatypes ((Cell!6197 0))(
  ( (Cell!6198 (v!23141 LongMapFixedSize!3156)) )
))
(declare-datatypes ((MutLongMap!1578 0))(
  ( (LongMap!1578 (underlying!3365 Cell!6197)) (MutLongMapExt!1577 (__x!10390 Int)) )
))
(declare-datatypes ((Cell!6199 0))(
  ( (Cell!6200 (v!23142 MutLongMap!1578)) )
))
(declare-datatypes ((MutableMap!1522 0))(
  ( (MutableMapExt!1521 (__x!10391 Int)) (HashMap!1522 (underlying!3366 Cell!6199) (hashF!3441 Hashable!1522) (_size!3238 (_ BitVec 32)) (defaultValue!1682 Int)) )
))
(declare-datatypes ((Conc!5488 0))(
  ( (Node!5488 (left!13450 Conc!5488) (right!13780 Conc!5488) (csize!11206 Int) (cheight!5699 Int)) (Leaf!8131 (xs!8288 IArray!10981) (csize!11207 Int)) (Empty!5488) )
))
(declare-datatypes ((BalanceConc!10918 0))(
  ( (BalanceConc!10919 (c!251592 Conc!5488)) )
))
(declare-datatypes ((CacheFurthestNullable!340 0))(
  ( (CacheFurthestNullable!341 (cache!1903 MutableMap!1522) (totalInput!2360 BalanceConc!10918)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!340)

(declare-fun inv!21599 (BalanceConc!10918) Bool)

(assert (=> b!1537645 (= e!983710 (and e!983719 (inv!21599 (totalInput!2360 cacheFurthestNullable!81)) e!983699))))

(declare-fun b!1537646 () Bool)

(declare-fun e!983704 () Bool)

(declare-fun e!983698 () Bool)

(declare-fun lt!533522 () MutLongMap!1576)

(assert (=> b!1537646 (= e!983704 (and e!983698 ((_ is LongMap!1576) lt!533522)))))

(assert (=> b!1537646 (= lt!533522 (v!23138 (underlying!3362 (cache!1901 cacheDown!708))))))

(declare-fun e!983716 () Bool)

(assert (=> b!1537647 (= e!983716 (and e!983704 tp!444220))))

(declare-fun mapIsEmpty!7465 () Bool)

(assert (=> mapIsEmpty!7465 mapRes!7466))

(declare-fun b!1537648 () Bool)

(assert (=> b!1537648 (= e!983703 e!983686)))

(declare-fun b!1537649 () Bool)

(declare-fun res!689161 () Bool)

(declare-fun e!983705 () Bool)

(assert (=> b!1537649 (=> (not res!689161) (not e!983705))))

(declare-fun valid!1282 (CacheFurthestNullable!340) Bool)

(assert (=> b!1537649 (= res!689161 (valid!1282 cacheFurthestNullable!81))))

(declare-fun e!983709 () Bool)

(declare-fun tp!444229 () Bool)

(declare-fun tp!444225 () Bool)

(declare-fun array_inv!1759 (array!5502) Bool)

(declare-fun array_inv!1760 (array!5504) Bool)

(assert (=> b!1537650 (= e!983709 (and tp!444218 tp!444225 tp!444229 (array_inv!1759 (_keys!1870 (v!23137 (underlying!3361 (v!23138 (underlying!3362 (cache!1901 cacheDown!708))))))) (array_inv!1760 (_values!1855 (v!23137 (underlying!3361 (v!23138 (underlying!3362 (cache!1901 cacheDown!708))))))) e!983691))))

(declare-fun b!1537651 () Bool)

(declare-fun e!983694 () Bool)

(declare-fun tp!444227 () Bool)

(assert (=> b!1537651 (= e!983694 (and tp!444227 mapRes!7464))))

(declare-fun condMapEmpty!7466 () Bool)

(declare-fun mapDefault!7464 () List!16399)

(assert (=> b!1537651 (= condMapEmpty!7466 (= (arr!2449 (_values!1857 (v!23141 (underlying!3365 (v!23142 (underlying!3366 (cache!1903 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16399)) mapDefault!7464)))))

(declare-fun e!983702 () Bool)

(assert (=> b!1537652 (= e!983702 (and e!983711 tp!444219))))

(declare-fun b!1537653 () Bool)

(declare-fun res!689158 () Bool)

(declare-fun e!983707 () Bool)

(assert (=> b!1537653 (=> (not res!689158) (not e!983707))))

(declare-datatypes ((List!16401 0))(
  ( (Nil!16333) (Cons!16333 (h!21734 (_ BitVec 16)) (t!140607 List!16401)) )
))
(declare-datatypes ((TokenValue!2961 0))(
  ( (FloatLiteralValue!5922 (text!21172 List!16401)) (TokenValueExt!2960 (__x!10392 Int)) (Broken!14805 (value!91461 List!16401)) (Object!3028) (End!2961) (Def!2961) (Underscore!2961) (Match!2961) (Else!2961) (Error!2961) (Case!2961) (If!2961) (Extends!2961) (Abstract!2961) (Class!2961) (Val!2961) (DelimiterValue!5922 (del!3021 List!16401)) (KeywordValue!2967 (value!91462 List!16401)) (CommentValue!5922 (value!91463 List!16401)) (WhitespaceValue!5922 (value!91464 List!16401)) (IndentationValue!2961 (value!91465 List!16401)) (String!19084) (Int32!2961) (Broken!14806 (value!91466 List!16401)) (Boolean!2962) (Unit!25843) (OperatorValue!2964 (op!3021 List!16401)) (IdentifierValue!5922 (value!91467 List!16401)) (IdentifierValue!5923 (value!91468 List!16401)) (WhitespaceValue!5923 (value!91469 List!16401)) (True!5922) (False!5922) (Broken!14807 (value!91470 List!16401)) (Broken!14808 (value!91471 List!16401)) (True!5923) (RightBrace!2961) (RightBracket!2961) (Colon!2961) (Null!2961) (Comma!2961) (LeftBracket!2961) (False!5923) (LeftBrace!2961) (ImaginaryLiteralValue!2961 (text!21173 List!16401)) (StringLiteralValue!8883 (value!91472 List!16401)) (EOFValue!2961 (value!91473 List!16401)) (IdentValue!2961 (value!91474 List!16401)) (DelimiterValue!5923 (value!91475 List!16401)) (DedentValue!2961 (value!91476 List!16401)) (NewLineValue!2961 (value!91477 List!16401)) (IntegerValue!8883 (value!91478 (_ BitVec 32)) (text!21174 List!16401)) (IntegerValue!8884 (value!91479 Int) (text!21175 List!16401)) (Times!2961) (Or!2961) (Equal!2961) (Minus!2961) (Broken!14809 (value!91480 List!16401)) (And!2961) (Div!2961) (LessEqual!2961) (Mod!2961) (Concat!7157) (Not!2961) (Plus!2961) (SpaceValue!2961 (value!91481 List!16401)) (IntegerValue!8885 (value!91482 Int) (text!21176 List!16401)) (StringLiteralValue!8884 (text!21177 List!16401)) (FloatLiteralValue!5923 (text!21178 List!16401)) (BytesLiteralValue!2961 (value!91483 List!16401)) (CommentValue!5923 (value!91484 List!16401)) (StringLiteralValue!8885 (value!91485 List!16401)) (ErrorTokenValue!2961 (msg!3022 List!16401)) )
))
(declare-datatypes ((String!19085 0))(
  ( (String!19086 (value!91486 String)) )
))
(declare-datatypes ((TokenValueInjection!5582 0))(
  ( (TokenValueInjection!5583 (toValue!4232 Int) (toChars!4091 Int)) )
))
(declare-datatypes ((Rule!5542 0))(
  ( (Rule!5543 (regex!2871 Regex!4195) (tag!3135 String!19085) (isSeparator!2871 Bool) (transformation!2871 TokenValueInjection!5582)) )
))
(declare-datatypes ((List!16402 0))(
  ( (Nil!16334) (Cons!16334 (h!21735 Rule!5542) (t!140608 List!16402)) )
))
(declare-fun rulesArg!359 () List!16402)

(declare-fun isEmpty!10008 (List!16402) Bool)

(assert (=> b!1537653 (= res!689158 (not (isEmpty!10008 rulesArg!359)))))

(declare-fun b!1537654 () Bool)

(declare-fun e!983718 () Bool)

(assert (=> b!1537654 (= e!983718 true)))

(declare-fun lt!533521 () Bool)

(declare-datatypes ((LexerInterface!2523 0))(
  ( (LexerInterfaceExt!2520 (__x!10393 Int)) (Lexer!2521) )
))
(declare-fun thiss!15733 () LexerInterface!2523)

(declare-fun rulesValidInductive!876 (LexerInterface!2523 List!16402) Bool)

(assert (=> b!1537654 (= lt!533521 (rulesValidInductive!876 thiss!15733 (t!140608 rulesArg!359)))))

(declare-fun input!1460 () BalanceConc!10918)

(declare-datatypes ((Token!5384 0))(
  ( (Token!5385 (value!91487 TokenValue!2961) (rule!4674 Rule!5542) (size!13202 Int) (originalCharacters!3723 List!16400)) )
))
(declare-datatypes ((tuple2!15356 0))(
  ( (tuple2!15357 (_1!8796 Token!5384) (_2!8796 BalanceConc!10918)) )
))
(declare-datatypes ((Option!2956 0))(
  ( (None!2955) (Some!2955 (v!23143 tuple2!15356)) )
))
(declare-datatypes ((tuple4!738 0))(
  ( (tuple4!739 (_1!8797 Option!2956) (_2!8797 CacheUp!910) (_3!1118 CacheDown!918) (_4!369 CacheFurthestNullable!340)) )
))
(declare-fun lt!533523 () tuple4!738)

(declare-fun totalInput!496 () BalanceConc!10918)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!22 (LexerInterface!2523 Rule!5542 BalanceConc!10918 BalanceConc!10918 CacheUp!910 CacheDown!918 CacheFurthestNullable!340) tuple4!738)

(assert (=> b!1537654 (= lt!533523 (maxPrefixOneRuleZipperSequenceV3Mem!22 thiss!15733 (h!21735 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun e!983701 () Bool)

(declare-fun tp!444242 () Bool)

(declare-fun tp!444243 () Bool)

(declare-fun array_inv!1761 (array!5508) Bool)

(assert (=> b!1537656 (= e!983701 (and tp!444239 tp!444242 tp!444243 (array_inv!1759 (_keys!1872 (v!23141 (underlying!3365 (v!23142 (underlying!3366 (cache!1903 cacheFurthestNullable!81))))))) (array_inv!1761 (_values!1857 (v!23141 (underlying!3365 (v!23142 (underlying!3366 (cache!1903 cacheFurthestNullable!81))))))) e!983694))))

(declare-fun res!689166 () Bool)

(assert (=> start!142930 (=> (not res!689166) (not e!983707))))

(assert (=> start!142930 (= res!689166 ((_ is Lexer!2521) thiss!15733))))

(assert (=> start!142930 e!983707))

(declare-fun e!983697 () Bool)

(declare-fun inv!21600 (CacheUp!910) Bool)

(assert (=> start!142930 (and (inv!21600 cacheUp!695) e!983697)))

(declare-fun e!983695 () Bool)

(assert (=> start!142930 (and (inv!21599 input!1460) e!983695)))

(declare-fun e!983690 () Bool)

(declare-fun inv!21601 (CacheDown!918) Bool)

(assert (=> start!142930 (and (inv!21601 cacheDown!708) e!983690)))

(assert (=> start!142930 true))

(declare-fun e!983706 () Bool)

(assert (=> start!142930 (and (inv!21599 totalInput!496) e!983706)))

(declare-fun e!983708 () Bool)

(assert (=> start!142930 e!983708))

(declare-fun inv!21602 (CacheFurthestNullable!340) Bool)

(assert (=> start!142930 (and (inv!21602 cacheFurthestNullable!81) e!983710)))

(declare-fun b!1537655 () Bool)

(assert (=> b!1537655 (= e!983697 e!983702)))

(declare-fun b!1537657 () Bool)

(declare-fun res!689164 () Bool)

(assert (=> b!1537657 (=> (not res!689164) (not e!983707))))

(assert (=> b!1537657 (= res!689164 (rulesValidInductive!876 thiss!15733 rulesArg!359))))

(declare-fun mapNonEmpty!7465 () Bool)

(declare-fun tp!444221 () Bool)

(declare-fun tp!444238 () Bool)

(assert (=> mapNonEmpty!7465 (= mapRes!7464 (and tp!444221 tp!444238))))

(declare-fun mapValue!7464 () List!16399)

(declare-fun mapKey!7465 () (_ BitVec 32))

(declare-fun mapRest!7465 () (Array (_ BitVec 32) List!16399))

(assert (=> mapNonEmpty!7465 (= (arr!2449 (_values!1857 (v!23141 (underlying!3365 (v!23142 (underlying!3366 (cache!1903 cacheFurthestNullable!81))))))) (store mapRest!7465 mapKey!7465 mapValue!7464))))

(declare-fun b!1537658 () Bool)

(declare-fun e!983713 () Bool)

(assert (=> b!1537658 (= e!983698 e!983713)))

(declare-fun e!983696 () Bool)

(assert (=> b!1537659 (= e!983696 (and tp!444223 tp!444240))))

(declare-fun b!1537660 () Bool)

(assert (=> b!1537660 (= e!983705 (not e!983718))))

(declare-fun res!689159 () Bool)

(assert (=> b!1537660 (=> res!689159 e!983718)))

(assert (=> b!1537660 (= res!689159 (or (and ((_ is Cons!16334) rulesArg!359) ((_ is Nil!16334) (t!140608 rulesArg!359))) (not ((_ is Cons!16334) rulesArg!359))))))

(declare-fun lt!533519 () List!16400)

(declare-fun isPrefix!1236 (List!16400 List!16400) Bool)

(assert (=> b!1537660 (isPrefix!1236 lt!533519 lt!533519)))

(declare-datatypes ((Unit!25844 0))(
  ( (Unit!25845) )
))
(declare-fun lt!533518 () Unit!25844)

(declare-fun lemmaIsPrefixRefl!866 (List!16400 List!16400) Unit!25844)

(assert (=> b!1537660 (= lt!533518 (lemmaIsPrefixRefl!866 lt!533519 lt!533519))))

(declare-fun b!1537661 () Bool)

(declare-fun e!983687 () Bool)

(declare-fun tp!444241 () Bool)

(assert (=> b!1537661 (= e!983708 (and e!983687 tp!444241))))

(declare-fun b!1537662 () Bool)

(declare-fun e!983717 () Bool)

(declare-fun e!983714 () Bool)

(declare-fun lt!533520 () MutLongMap!1578)

(assert (=> b!1537662 (= e!983717 (and e!983714 ((_ is LongMap!1578) lt!533520)))))

(assert (=> b!1537662 (= lt!533520 (v!23142 (underlying!3366 (cache!1903 cacheFurthestNullable!81))))))

(declare-fun b!1537663 () Bool)

(assert (=> b!1537663 (= e!983707 e!983705)))

(declare-fun res!689163 () Bool)

(assert (=> b!1537663 (=> (not res!689163) (not e!983705))))

(declare-fun isSuffix!322 (List!16400 List!16400) Bool)

(declare-fun list!6416 (BalanceConc!10918) List!16400)

(assert (=> b!1537663 (= res!689163 (isSuffix!322 lt!533519 (list!6416 totalInput!496)))))

(assert (=> b!1537663 (= lt!533519 (list!6416 input!1460))))

(declare-fun b!1537664 () Bool)

(assert (=> b!1537664 (= e!983713 e!983709)))

(declare-fun mapNonEmpty!7466 () Bool)

(declare-fun tp!444228 () Bool)

(declare-fun tp!444245 () Bool)

(assert (=> mapNonEmpty!7466 (= mapRes!7465 (and tp!444228 tp!444245))))

(declare-fun mapValue!7465 () List!16398)

(declare-fun mapKey!7464 () (_ BitVec 32))

(declare-fun mapRest!7466 () (Array (_ BitVec 32) List!16398))

(assert (=> mapNonEmpty!7466 (= (arr!2448 (_values!1856 (v!23139 (underlying!3363 (v!23140 (underlying!3364 (cache!1902 cacheUp!695))))))) (store mapRest!7466 mapKey!7464 mapValue!7465))))

(declare-fun b!1537665 () Bool)

(declare-fun tp!444236 () Bool)

(declare-fun inv!21603 (Conc!5488) Bool)

(assert (=> b!1537665 (= e!983706 (and (inv!21603 (c!251592 totalInput!496)) tp!444236))))

(declare-fun b!1537666 () Bool)

(declare-fun res!689162 () Bool)

(assert (=> b!1537666 (=> (not res!689162) (not e!983705))))

(declare-fun valid!1283 (CacheUp!910) Bool)

(assert (=> b!1537666 (= res!689162 (valid!1283 cacheUp!695))))

(assert (=> b!1537667 (= e!983719 (and e!983717 tp!444244))))

(declare-fun b!1537668 () Bool)

(declare-fun e!983689 () Bool)

(assert (=> b!1537668 (= e!983689 e!983701)))

(declare-fun b!1537669 () Bool)

(assert (=> b!1537669 (= e!983690 e!983716)))

(declare-fun tp!444235 () Bool)

(declare-fun tp!444226 () Bool)

(declare-fun array_inv!1762 (array!5506) Bool)

(assert (=> b!1537670 (= e!983715 (and tp!444232 tp!444226 tp!444235 (array_inv!1759 (_keys!1871 (v!23139 (underlying!3363 (v!23140 (underlying!3364 (cache!1902 cacheUp!695))))))) (array_inv!1762 (_values!1856 (v!23139 (underlying!3363 (v!23140 (underlying!3364 (cache!1902 cacheUp!695))))))) e!983693))))

(declare-fun tp!444237 () Bool)

(declare-fun b!1537671 () Bool)

(declare-fun inv!21593 (String!19085) Bool)

(declare-fun inv!21604 (TokenValueInjection!5582) Bool)

(assert (=> b!1537671 (= e!983687 (and tp!444237 (inv!21593 (tag!3135 (h!21735 rulesArg!359))) (inv!21604 (transformation!2871 (h!21735 rulesArg!359))) e!983696))))

(declare-fun b!1537672 () Bool)

(declare-fun res!689160 () Bool)

(assert (=> b!1537672 (=> (not res!689160) (not e!983705))))

(declare-fun valid!1284 (CacheDown!918) Bool)

(assert (=> b!1537672 (= res!689160 (valid!1284 cacheDown!708))))

(declare-fun b!1537673 () Bool)

(declare-fun res!689165 () Bool)

(assert (=> b!1537673 (=> (not res!689165) (not e!983705))))

(assert (=> b!1537673 (= res!689165 (= (totalInput!2360 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1537674 () Bool)

(declare-fun tp!444233 () Bool)

(assert (=> b!1537674 (= e!983699 (and (inv!21603 (c!251592 (totalInput!2360 cacheFurthestNullable!81))) tp!444233))))

(declare-fun b!1537675 () Bool)

(declare-fun tp!444224 () Bool)

(assert (=> b!1537675 (= e!983695 (and (inv!21603 (c!251592 input!1460)) tp!444224))))

(declare-fun mapIsEmpty!7466 () Bool)

(assert (=> mapIsEmpty!7466 mapRes!7465))

(declare-fun b!1537676 () Bool)

(assert (=> b!1537676 (= e!983714 e!983689)))

(assert (= (and start!142930 res!689166) b!1537657))

(assert (= (and b!1537657 res!689164) b!1537653))

(assert (= (and b!1537653 res!689158) b!1537663))

(assert (= (and b!1537663 res!689163) b!1537666))

(assert (= (and b!1537666 res!689162) b!1537672))

(assert (= (and b!1537672 res!689160) b!1537649))

(assert (= (and b!1537649 res!689161) b!1537673))

(assert (= (and b!1537673 res!689165) b!1537660))

(assert (= (and b!1537660 (not res!689159)) b!1537654))

(assert (= (and b!1537642 condMapEmpty!7465) mapIsEmpty!7466))

(assert (= (and b!1537642 (not condMapEmpty!7465)) mapNonEmpty!7466))

(assert (= b!1537670 b!1537642))

(assert (= b!1537644 b!1537670))

(assert (= b!1537648 b!1537644))

(assert (= (and b!1537643 ((_ is LongMap!1577) (v!23140 (underlying!3364 (cache!1902 cacheUp!695))))) b!1537648))

(assert (= b!1537652 b!1537643))

(assert (= (and b!1537655 ((_ is HashMap!1521) (cache!1902 cacheUp!695))) b!1537652))

(assert (= start!142930 b!1537655))

(assert (= start!142930 b!1537675))

(assert (= (and b!1537641 condMapEmpty!7464) mapIsEmpty!7465))

(assert (= (and b!1537641 (not condMapEmpty!7464)) mapNonEmpty!7464))

(assert (= b!1537650 b!1537641))

(assert (= b!1537664 b!1537650))

(assert (= b!1537658 b!1537664))

(assert (= (and b!1537646 ((_ is LongMap!1576) (v!23138 (underlying!3362 (cache!1901 cacheDown!708))))) b!1537658))

(assert (= b!1537647 b!1537646))

(assert (= (and b!1537669 ((_ is HashMap!1520) (cache!1901 cacheDown!708))) b!1537647))

(assert (= start!142930 b!1537669))

(assert (= start!142930 b!1537665))

(assert (= b!1537671 b!1537659))

(assert (= b!1537661 b!1537671))

(assert (= (and start!142930 ((_ is Cons!16334) rulesArg!359)) b!1537661))

(assert (= (and b!1537651 condMapEmpty!7466) mapIsEmpty!7464))

(assert (= (and b!1537651 (not condMapEmpty!7466)) mapNonEmpty!7465))

(assert (= b!1537656 b!1537651))

(assert (= b!1537668 b!1537656))

(assert (= b!1537676 b!1537668))

(assert (= (and b!1537662 ((_ is LongMap!1578) (v!23142 (underlying!3366 (cache!1903 cacheFurthestNullable!81))))) b!1537676))

(assert (= b!1537667 b!1537662))

(assert (= (and b!1537645 ((_ is HashMap!1522) (cache!1903 cacheFurthestNullable!81))) b!1537667))

(assert (= b!1537645 b!1537674))

(assert (= start!142930 b!1537645))

(declare-fun m!1812506 () Bool)

(assert (=> b!1537645 m!1812506))

(declare-fun m!1812508 () Bool)

(assert (=> b!1537665 m!1812508))

(declare-fun m!1812510 () Bool)

(assert (=> mapNonEmpty!7465 m!1812510))

(declare-fun m!1812512 () Bool)

(assert (=> b!1537653 m!1812512))

(declare-fun m!1812514 () Bool)

(assert (=> b!1537654 m!1812514))

(declare-fun m!1812516 () Bool)

(assert (=> b!1537654 m!1812516))

(declare-fun m!1812518 () Bool)

(assert (=> b!1537649 m!1812518))

(declare-fun m!1812520 () Bool)

(assert (=> b!1537671 m!1812520))

(declare-fun m!1812522 () Bool)

(assert (=> b!1537671 m!1812522))

(declare-fun m!1812524 () Bool)

(assert (=> mapNonEmpty!7464 m!1812524))

(declare-fun m!1812526 () Bool)

(assert (=> b!1537666 m!1812526))

(declare-fun m!1812528 () Bool)

(assert (=> b!1537672 m!1812528))

(declare-fun m!1812530 () Bool)

(assert (=> b!1537674 m!1812530))

(declare-fun m!1812532 () Bool)

(assert (=> b!1537663 m!1812532))

(assert (=> b!1537663 m!1812532))

(declare-fun m!1812534 () Bool)

(assert (=> b!1537663 m!1812534))

(declare-fun m!1812536 () Bool)

(assert (=> b!1537663 m!1812536))

(declare-fun m!1812538 () Bool)

(assert (=> b!1537656 m!1812538))

(declare-fun m!1812540 () Bool)

(assert (=> b!1537656 m!1812540))

(declare-fun m!1812542 () Bool)

(assert (=> b!1537675 m!1812542))

(declare-fun m!1812544 () Bool)

(assert (=> mapNonEmpty!7466 m!1812544))

(declare-fun m!1812546 () Bool)

(assert (=> b!1537657 m!1812546))

(declare-fun m!1812548 () Bool)

(assert (=> start!142930 m!1812548))

(declare-fun m!1812550 () Bool)

(assert (=> start!142930 m!1812550))

(declare-fun m!1812552 () Bool)

(assert (=> start!142930 m!1812552))

(declare-fun m!1812554 () Bool)

(assert (=> start!142930 m!1812554))

(declare-fun m!1812556 () Bool)

(assert (=> start!142930 m!1812556))

(declare-fun m!1812558 () Bool)

(assert (=> b!1537660 m!1812558))

(declare-fun m!1812560 () Bool)

(assert (=> b!1537660 m!1812560))

(declare-fun m!1812562 () Bool)

(assert (=> b!1537650 m!1812562))

(declare-fun m!1812564 () Bool)

(assert (=> b!1537650 m!1812564))

(declare-fun m!1812566 () Bool)

(assert (=> b!1537670 m!1812566))

(declare-fun m!1812568 () Bool)

(assert (=> b!1537670 m!1812568))

(check-sat (not b!1537675) (not b!1537657) (not b!1537665) b_and!106875 (not mapNonEmpty!7464) (not b!1537670) (not b!1537671) b_and!106871 (not b!1537651) b_and!106867 (not b!1537642) (not b_next!40701) (not b!1537653) (not mapNonEmpty!7465) (not b!1537661) (not b!1537663) (not b!1537645) (not b_next!40695) (not b!1537660) (not b!1537656) b_and!106863 (not b_next!40689) (not b_next!40697) (not start!142930) (not b!1537666) (not b_next!40699) b_and!106869 (not b!1537641) (not b!1537649) b_and!106865 b_and!106861 (not b!1537672) (not b_next!40691) (not b!1537674) (not b_next!40693) (not mapNonEmpty!7466) (not b_next!40687) (not b!1537650) (not b!1537654) b_and!106873)
(check-sat (not b_next!40695) b_and!106863 b_and!106875 b_and!106871 b_and!106867 (not b_next!40701) (not b_next!40691) (not b_next!40693) (not b_next!40687) b_and!106873 (not b_next!40689) (not b_next!40697) (not b_next!40699) b_and!106869 b_and!106865 b_and!106861)

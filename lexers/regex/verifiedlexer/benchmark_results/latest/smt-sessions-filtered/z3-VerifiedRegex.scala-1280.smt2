; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66364 () Bool)

(assert start!66364)

(declare-fun b!694874 () Bool)

(declare-fun b_free!19845 () Bool)

(declare-fun b_next!19909 () Bool)

(assert (=> b!694874 (= b_free!19845 (not b_next!19909))))

(declare-fun tp!210442 () Bool)

(declare-fun b_and!63639 () Bool)

(assert (=> b!694874 (= tp!210442 b_and!63639)))

(declare-fun b!694859 () Bool)

(declare-fun b_free!19847 () Bool)

(declare-fun b_next!19911 () Bool)

(assert (=> b!694859 (= b_free!19847 (not b_next!19911))))

(declare-fun tp!210457 () Bool)

(declare-fun b_and!63641 () Bool)

(assert (=> b!694859 (= tp!210457 b_and!63641)))

(declare-fun b!694855 () Bool)

(declare-fun b_free!19849 () Bool)

(declare-fun b_next!19913 () Bool)

(assert (=> b!694855 (= b_free!19849 (not b_next!19913))))

(declare-fun tp!210445 () Bool)

(declare-fun b_and!63643 () Bool)

(assert (=> b!694855 (= tp!210445 b_and!63643)))

(declare-fun b!694872 () Bool)

(declare-fun b_free!19851 () Bool)

(declare-fun b_next!19915 () Bool)

(assert (=> b!694872 (= b_free!19851 (not b_next!19915))))

(declare-fun tp!210454 () Bool)

(declare-fun b_and!63645 () Bool)

(assert (=> b!694872 (= tp!210454 b_and!63645)))

(declare-fun b!694852 () Bool)

(declare-fun b_free!19853 () Bool)

(declare-fun b_next!19917 () Bool)

(assert (=> b!694852 (= b_free!19853 (not b_next!19917))))

(declare-fun tp!210434 () Bool)

(declare-fun b_and!63647 () Bool)

(assert (=> b!694852 (= tp!210434 b_and!63647)))

(declare-fun b!694854 () Bool)

(declare-fun b_free!19855 () Bool)

(declare-fun b_next!19919 () Bool)

(assert (=> b!694854 (= b_free!19855 (not b_next!19919))))

(declare-fun tp!210458 () Bool)

(declare-fun b_and!63649 () Bool)

(assert (=> b!694854 (= tp!210458 b_and!63649)))

(declare-fun b_free!19857 () Bool)

(declare-fun b_next!19921 () Bool)

(assert (=> b!694854 (= b_free!19857 (not b_next!19921))))

(declare-fun tp!210440 () Bool)

(declare-fun b_and!63651 () Bool)

(assert (=> b!694854 (= tp!210440 b_and!63651)))

(declare-fun b!694856 () Bool)

(declare-fun b_free!19859 () Bool)

(declare-fun b_next!19923 () Bool)

(assert (=> b!694856 (= b_free!19859 (not b_next!19923))))

(declare-fun tp!210446 () Bool)

(declare-fun b_and!63653 () Bool)

(assert (=> b!694856 (= tp!210446 b_and!63653)))

(declare-fun b!694844 () Bool)

(declare-fun e!437669 () Bool)

(declare-datatypes ((C!4312 0))(
  ( (C!4313 (val!2386 Int)) )
))
(declare-datatypes ((List!7604 0))(
  ( (Nil!7590) (Cons!7590 (h!12991 C!4312) (t!87427 List!7604)) )
))
(declare-datatypes ((IArray!5341 0))(
  ( (IArray!5342 (innerList!2728 List!7604)) )
))
(declare-datatypes ((Conc!2670 0))(
  ( (Node!2670 (left!6034 Conc!2670) (right!6364 Conc!2670) (csize!5570 Int) (cheight!2881 Int)) (Leaf!3951 (xs!5323 IArray!5341) (csize!5571 Int)) (Empty!2670) )
))
(declare-datatypes ((BalanceConc!5352 0))(
  ( (BalanceConc!5353 (c!121815 Conc!2670)) )
))
(declare-fun treated!50 () BalanceConc!5352)

(declare-fun tp!210449 () Bool)

(declare-fun inv!9708 (Conc!2670) Bool)

(assert (=> b!694844 (= e!437669 (and (inv!9708 (c!121815 treated!50)) tp!210449))))

(declare-fun b!694845 () Bool)

(declare-fun e!437655 () Bool)

(declare-fun e!437663 () Bool)

(assert (=> b!694845 (= e!437655 e!437663)))

(declare-fun res!314645 () Bool)

(assert (=> b!694845 (=> (not res!314645) (not e!437663))))

(declare-datatypes ((List!7605 0))(
  ( (Nil!7591) (Cons!7591 (h!12992 (_ BitVec 16)) (t!87428 List!7605)) )
))
(declare-datatypes ((TokenValue!1560 0))(
  ( (FloatLiteralValue!3120 (text!11365 List!7605)) (TokenValueExt!1559 (__x!5531 Int)) (Broken!7800 (value!48845 List!7605)) (Object!1573) (End!1560) (Def!1560) (Underscore!1560) (Match!1560) (Else!1560) (Error!1560) (Case!1560) (If!1560) (Extends!1560) (Abstract!1560) (Class!1560) (Val!1560) (DelimiterValue!3120 (del!1620 List!7605)) (KeywordValue!1566 (value!48846 List!7605)) (CommentValue!3120 (value!48847 List!7605)) (WhitespaceValue!3120 (value!48848 List!7605)) (IndentationValue!1560 (value!48849 List!7605)) (String!9525) (Int32!1560) (Broken!7801 (value!48850 List!7605)) (Boolean!1561) (Unit!12679) (OperatorValue!1563 (op!1620 List!7605)) (IdentifierValue!3120 (value!48851 List!7605)) (IdentifierValue!3121 (value!48852 List!7605)) (WhitespaceValue!3121 (value!48853 List!7605)) (True!3120) (False!3120) (Broken!7802 (value!48854 List!7605)) (Broken!7803 (value!48855 List!7605)) (True!3121) (RightBrace!1560) (RightBracket!1560) (Colon!1560) (Null!1560) (Comma!1560) (LeftBracket!1560) (False!3121) (LeftBrace!1560) (ImaginaryLiteralValue!1560 (text!11366 List!7605)) (StringLiteralValue!4680 (value!48856 List!7605)) (EOFValue!1560 (value!48857 List!7605)) (IdentValue!1560 (value!48858 List!7605)) (DelimiterValue!3121 (value!48859 List!7605)) (DedentValue!1560 (value!48860 List!7605)) (NewLineValue!1560 (value!48861 List!7605)) (IntegerValue!4680 (value!48862 (_ BitVec 32)) (text!11367 List!7605)) (IntegerValue!4681 (value!48863 Int) (text!11368 List!7605)) (Times!1560) (Or!1560) (Equal!1560) (Minus!1560) (Broken!7804 (value!48864 List!7605)) (And!1560) (Div!1560) (LessEqual!1560) (Mod!1560) (Concat!3415) (Not!1560) (Plus!1560) (SpaceValue!1560 (value!48865 List!7605)) (IntegerValue!4682 (value!48866 Int) (text!11369 List!7605)) (StringLiteralValue!4681 (text!11370 List!7605)) (FloatLiteralValue!3121 (text!11371 List!7605)) (BytesLiteralValue!1560 (value!48867 List!7605)) (CommentValue!3121 (value!48868 List!7605)) (StringLiteralValue!4682 (value!48869 List!7605)) (ErrorTokenValue!1560 (msg!1621 List!7605)) )
))
(declare-datatypes ((String!9526 0))(
  ( (String!9527 (value!48870 String)) )
))
(declare-datatypes ((Regex!1855 0))(
  ( (ElementMatch!1855 (c!121816 C!4312)) (Concat!3416 (regOne!4222 Regex!1855) (regTwo!4222 Regex!1855)) (EmptyExpr!1855) (Star!1855 (reg!2184 Regex!1855)) (EmptyLang!1855) (Union!1855 (regOne!4223 Regex!1855) (regTwo!4223 Regex!1855)) )
))
(declare-datatypes ((TokenValueInjection!2856 0))(
  ( (TokenValueInjection!2857 (toValue!2480 Int) (toChars!2339 Int)) )
))
(declare-datatypes ((Rule!2832 0))(
  ( (Rule!2833 (regex!1516 Regex!1855) (tag!1778 String!9526) (isSeparator!1516 Bool) (transformation!1516 TokenValueInjection!2856)) )
))
(declare-datatypes ((Token!2732 0))(
  ( (Token!2733 (value!48871 TokenValue!1560) (rule!2555 Rule!2832) (size!6196 Int) (originalCharacters!1791 List!7604)) )
))
(declare-datatypes ((List!7606 0))(
  ( (Nil!7592) (Cons!7592 (h!12993 Token!2732) (t!87429 List!7606)) )
))
(declare-datatypes ((IArray!5343 0))(
  ( (IArray!5344 (innerList!2729 List!7606)) )
))
(declare-datatypes ((Conc!2671 0))(
  ( (Node!2671 (left!6035 Conc!2671) (right!6365 Conc!2671) (csize!5572 Int) (cheight!2882 Int)) (Leaf!3952 (xs!5324 IArray!5343) (csize!5573 Int)) (Empty!2671) )
))
(declare-datatypes ((BalanceConc!5354 0))(
  ( (BalanceConc!5355 (c!121817 Conc!2671)) )
))
(declare-fun acc!372 () BalanceConc!5354)

(declare-datatypes ((tuple2!8042 0))(
  ( (tuple2!8043 (_1!4454 BalanceConc!5354) (_2!4454 BalanceConc!5352)) )
))
(declare-fun lt!285515 () tuple2!8042)

(declare-fun lt!285519 () tuple2!8042)

(declare-fun list!3172 (BalanceConc!5354) List!7606)

(declare-fun ++!1976 (BalanceConc!5354 BalanceConc!5354) BalanceConc!5354)

(assert (=> b!694845 (= res!314645 (= (list!3172 (_1!4454 lt!285519)) (list!3172 (++!1976 acc!372 (_1!4454 lt!285515)))))))

(declare-fun input!870 () BalanceConc!5352)

(declare-datatypes ((List!7607 0))(
  ( (Nil!7593) (Cons!7593 (h!12994 Rule!2832) (t!87430 List!7607)) )
))
(declare-fun rules!1486 () List!7607)

(declare-datatypes ((LexerInterface!1329 0))(
  ( (LexerInterfaceExt!1326 (__x!5532 Int)) (Lexer!1327) )
))
(declare-fun thiss!12529 () LexerInterface!1329)

(declare-fun lexRec!171 (LexerInterface!1329 List!7607 BalanceConc!5352) tuple2!8042)

(assert (=> b!694845 (= lt!285515 (lexRec!171 thiss!12529 rules!1486 input!870))))

(declare-fun totalInput!378 () BalanceConc!5352)

(assert (=> b!694845 (= lt!285519 (lexRec!171 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!694846 () Bool)

(declare-fun e!437670 () Bool)

(declare-fun e!437673 () Bool)

(declare-datatypes ((List!7608 0))(
  ( (Nil!7594) (Cons!7594 (h!12995 Regex!1855) (t!87431 List!7608)) )
))
(declare-datatypes ((Context!514 0))(
  ( (Context!515 (exprs!757 List!7608)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8044 0))(
  ( (tuple2!8045 (_1!4455 (InoxSet Context!514)) (_2!4455 Int)) )
))
(declare-datatypes ((tuple2!8046 0))(
  ( (tuple2!8047 (_1!4456 tuple2!8044) (_2!4456 Int)) )
))
(declare-datatypes ((array!2989 0))(
  ( (array!2990 (arr!1350 (Array (_ BitVec 32) (_ BitVec 64))) (size!6197 (_ BitVec 32))) )
))
(declare-datatypes ((List!7609 0))(
  ( (Nil!7595) (Cons!7595 (h!12996 tuple2!8046) (t!87432 List!7609)) )
))
(declare-datatypes ((array!2991 0))(
  ( (array!2992 (arr!1351 (Array (_ BitVec 32) List!7609)) (size!6198 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1610 0))(
  ( (LongMapFixedSize!1611 (defaultEntry!1161 Int) (mask!2617 (_ BitVec 32)) (extraKeys!1052 (_ BitVec 32)) (zeroValue!1062 List!7609) (minValue!1062 List!7609) (_size!1719 (_ BitVec 32)) (_keys!1099 array!2989) (_values!1084 array!2991) (_vacant!866 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3161 0))(
  ( (Cell!3162 (v!17737 LongMapFixedSize!1610)) )
))
(declare-datatypes ((MutLongMap!805 0))(
  ( (LongMap!805 (underlying!1793 Cell!3161)) (MutLongMapExt!804 (__x!5533 Int)) )
))
(declare-fun lt!285517 () MutLongMap!805)

(get-info :version)

(assert (=> b!694846 (= e!437670 (and e!437673 ((_ is LongMap!805) lt!285517)))))

(declare-datatypes ((Hashable!777 0))(
  ( (HashableExt!776 (__x!5534 Int)) )
))
(declare-datatypes ((Cell!3163 0))(
  ( (Cell!3164 (v!17738 MutLongMap!805)) )
))
(declare-datatypes ((MutableMap!777 0))(
  ( (MutableMapExt!776 (__x!5535 Int)) (HashMap!777 (underlying!1794 Cell!3163) (hashF!2685 Hashable!777) (_size!1720 (_ BitVec 32)) (defaultValue!928 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!66 0))(
  ( (CacheFindLongestMatch!67 (cache!1164 MutableMap!777) (totalInput!1816 BalanceConc!5352)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!66)

(assert (=> b!694846 (= lt!285517 (v!17738 (underlying!1794 (cache!1164 cacheFindLongestMatch!74))))))

(declare-fun b!694847 () Bool)

(declare-fun e!437686 () Bool)

(declare-fun tp!210455 () Bool)

(assert (=> b!694847 (= e!437686 (and (inv!9708 (c!121815 totalInput!378)) tp!210455))))

(declare-fun mapNonEmpty!3236 () Bool)

(declare-fun mapRes!3237 () Bool)

(declare-fun tp!210443 () Bool)

(declare-fun tp!210451 () Bool)

(assert (=> mapNonEmpty!3236 (= mapRes!3237 (and tp!210443 tp!210451))))

(declare-datatypes ((tuple3!738 0))(
  ( (tuple3!739 (_1!4457 Regex!1855) (_2!4457 Context!514) (_3!433 C!4312)) )
))
(declare-datatypes ((tuple2!8048 0))(
  ( (tuple2!8049 (_1!4458 tuple3!738) (_2!4458 (InoxSet Context!514))) )
))
(declare-datatypes ((List!7610 0))(
  ( (Nil!7596) (Cons!7596 (h!12997 tuple2!8048) (t!87433 List!7610)) )
))
(declare-fun mapRest!3236 () (Array (_ BitVec 32) List!7610))

(declare-fun mapKey!3238 () (_ BitVec 32))

(declare-fun mapValue!3238 () List!7610)

(declare-datatypes ((array!2993 0))(
  ( (array!2994 (arr!1352 (Array (_ BitVec 32) List!7610)) (size!6199 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1612 0))(
  ( (LongMapFixedSize!1613 (defaultEntry!1162 Int) (mask!2618 (_ BitVec 32)) (extraKeys!1053 (_ BitVec 32)) (zeroValue!1063 List!7610) (minValue!1063 List!7610) (_size!1721 (_ BitVec 32)) (_keys!1100 array!2989) (_values!1085 array!2993) (_vacant!867 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3165 0))(
  ( (Cell!3166 (v!17739 LongMapFixedSize!1612)) )
))
(declare-datatypes ((MutLongMap!806 0))(
  ( (LongMap!806 (underlying!1795 Cell!3165)) (MutLongMapExt!805 (__x!5536 Int)) )
))
(declare-datatypes ((Cell!3167 0))(
  ( (Cell!3168 (v!17740 MutLongMap!806)) )
))
(declare-datatypes ((Hashable!778 0))(
  ( (HashableExt!777 (__x!5537 Int)) )
))
(declare-datatypes ((MutableMap!778 0))(
  ( (MutableMapExt!777 (__x!5538 Int)) (HashMap!778 (underlying!1796 Cell!3167) (hashF!2686 Hashable!778) (_size!1722 (_ BitVec 32)) (defaultValue!929 Int)) )
))
(declare-datatypes ((CacheDown!410 0))(
  ( (CacheDown!411 (cache!1165 MutableMap!778)) )
))
(declare-fun cacheDown!515 () CacheDown!410)

(assert (=> mapNonEmpty!3236 (= (arr!1352 (_values!1085 (v!17739 (underlying!1795 (v!17740 (underlying!1796 (cache!1165 cacheDown!515))))))) (store mapRest!3236 mapKey!3238 mapValue!3238))))

(declare-fun b!694848 () Bool)

(declare-fun e!437661 () Bool)

(declare-fun tp!210437 () Bool)

(assert (=> b!694848 (= e!437661 (and (inv!9708 (c!121815 input!870)) tp!210437))))

(declare-fun b!694849 () Bool)

(declare-fun e!437685 () Bool)

(declare-fun e!437659 () Bool)

(assert (=> b!694849 (= e!437685 e!437659)))

(declare-fun res!314644 () Bool)

(assert (=> b!694849 (=> (not res!314644) (not e!437659))))

(declare-fun lt!285518 () List!7604)

(declare-fun lt!285526 () List!7604)

(assert (=> b!694849 (= res!314644 (= lt!285518 lt!285526))))

(declare-fun lt!285520 () List!7604)

(declare-fun lt!285527 () List!7604)

(declare-fun ++!1977 (List!7604 List!7604) List!7604)

(assert (=> b!694849 (= lt!285526 (++!1977 lt!285520 lt!285527))))

(declare-fun list!3173 (BalanceConc!5352) List!7604)

(assert (=> b!694849 (= lt!285518 (list!3173 totalInput!378))))

(assert (=> b!694849 (= lt!285527 (list!3173 input!870))))

(assert (=> b!694849 (= lt!285520 (list!3173 treated!50))))

(declare-fun b!694850 () Bool)

(declare-fun e!437672 () Bool)

(declare-fun e!437677 () Bool)

(declare-fun lt!285516 () MutLongMap!806)

(assert (=> b!694850 (= e!437672 (and e!437677 ((_ is LongMap!806) lt!285516)))))

(assert (=> b!694850 (= lt!285516 (v!17740 (underlying!1796 (cache!1165 cacheDown!515))))))

(declare-fun b!694851 () Bool)

(declare-fun e!437660 () Bool)

(declare-fun e!437682 () Bool)

(declare-datatypes ((tuple2!8050 0))(
  ( (tuple2!8051 (_1!4459 Context!514) (_2!4459 C!4312)) )
))
(declare-datatypes ((tuple2!8052 0))(
  ( (tuple2!8053 (_1!4460 tuple2!8050) (_2!4460 (InoxSet Context!514))) )
))
(declare-datatypes ((List!7611 0))(
  ( (Nil!7597) (Cons!7597 (h!12998 tuple2!8052) (t!87434 List!7611)) )
))
(declare-datatypes ((array!2995 0))(
  ( (array!2996 (arr!1353 (Array (_ BitVec 32) List!7611)) (size!6200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1614 0))(
  ( (LongMapFixedSize!1615 (defaultEntry!1163 Int) (mask!2619 (_ BitVec 32)) (extraKeys!1054 (_ BitVec 32)) (zeroValue!1064 List!7611) (minValue!1064 List!7611) (_size!1723 (_ BitVec 32)) (_keys!1101 array!2989) (_values!1086 array!2995) (_vacant!868 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3169 0))(
  ( (Cell!3170 (v!17741 LongMapFixedSize!1614)) )
))
(declare-datatypes ((MutLongMap!807 0))(
  ( (LongMap!807 (underlying!1797 Cell!3169)) (MutLongMapExt!806 (__x!5539 Int)) )
))
(declare-fun lt!285521 () MutLongMap!807)

(assert (=> b!694851 (= e!437660 (and e!437682 ((_ is LongMap!807) lt!285521)))))

(declare-datatypes ((Hashable!779 0))(
  ( (HashableExt!778 (__x!5540 Int)) )
))
(declare-datatypes ((Cell!3171 0))(
  ( (Cell!3172 (v!17742 MutLongMap!807)) )
))
(declare-datatypes ((MutableMap!779 0))(
  ( (MutableMapExt!778 (__x!5541 Int)) (HashMap!779 (underlying!1798 Cell!3171) (hashF!2687 Hashable!779) (_size!1724 (_ BitVec 32)) (defaultValue!930 Int)) )
))
(declare-datatypes ((CacheUp!404 0))(
  ( (CacheUp!405 (cache!1166 MutableMap!779)) )
))
(declare-fun cacheUp!502 () CacheUp!404)

(assert (=> b!694851 (= lt!285521 (v!17742 (underlying!1798 (cache!1166 cacheUp!502))))))

(declare-fun e!437671 () Bool)

(assert (=> b!694852 (= e!437671 (and e!437660 tp!210434))))

(declare-fun b!694853 () Bool)

(declare-fun res!314640 () Bool)

(assert (=> b!694853 (=> (not res!314640) (not e!437663))))

(assert (=> b!694853 (= res!314640 (= (totalInput!1816 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun e!437654 () Bool)

(assert (=> b!694854 (= e!437654 (and tp!210458 tp!210440))))

(declare-fun tp!210435 () Bool)

(declare-fun e!437664 () Bool)

(declare-fun e!437680 () Bool)

(declare-fun tp!210439 () Bool)

(declare-fun array_inv!991 (array!2989) Bool)

(declare-fun array_inv!992 (array!2995) Bool)

(assert (=> b!694855 (= e!437664 (and tp!210445 tp!210439 tp!210435 (array_inv!991 (_keys!1101 (v!17741 (underlying!1797 (v!17742 (underlying!1798 (cache!1166 cacheUp!502))))))) (array_inv!992 (_values!1086 (v!17741 (underlying!1797 (v!17742 (underlying!1798 (cache!1166 cacheUp!502))))))) e!437680))))

(declare-fun e!437683 () Bool)

(assert (=> b!694856 (= e!437683 (and e!437672 tp!210446))))

(declare-fun mapNonEmpty!3237 () Bool)

(declare-fun mapRes!3238 () Bool)

(declare-fun tp!210444 () Bool)

(declare-fun tp!210447 () Bool)

(assert (=> mapNonEmpty!3237 (= mapRes!3238 (and tp!210444 tp!210447))))

(declare-fun mapValue!3237 () List!7609)

(declare-fun mapRest!3237 () (Array (_ BitVec 32) List!7609))

(declare-fun mapKey!3236 () (_ BitVec 32))

(assert (=> mapNonEmpty!3237 (= (arr!1351 (_values!1084 (v!17737 (underlying!1793 (v!17738 (underlying!1794 (cache!1164 cacheFindLongestMatch!74))))))) (store mapRest!3237 mapKey!3236 mapValue!3237))))

(declare-fun b!694857 () Bool)

(declare-fun e!437667 () Bool)

(declare-fun e!437676 () Bool)

(assert (=> b!694857 (= e!437667 e!437676)))

(declare-fun mapIsEmpty!3236 () Bool)

(assert (=> mapIsEmpty!3236 mapRes!3238))

(declare-fun res!314643 () Bool)

(assert (=> start!66364 (=> (not res!314643) (not e!437685))))

(assert (=> start!66364 (= res!314643 ((_ is Lexer!1327) thiss!12529))))

(assert (=> start!66364 e!437685))

(declare-fun e!437668 () Bool)

(declare-fun inv!9709 (BalanceConc!5354) Bool)

(assert (=> start!66364 (and (inv!9709 acc!372) e!437668)))

(declare-fun inv!9710 (BalanceConc!5352) Bool)

(assert (=> start!66364 (and (inv!9710 treated!50) e!437669)))

(assert (=> start!66364 (and (inv!9710 totalInput!378) e!437686)))

(assert (=> start!66364 (and (inv!9710 input!870) e!437661)))

(declare-fun e!437662 () Bool)

(assert (=> start!66364 e!437662))

(assert (=> start!66364 true))

(declare-fun e!437675 () Bool)

(declare-fun inv!9711 (CacheUp!404) Bool)

(assert (=> start!66364 (and (inv!9711 cacheUp!502) e!437675)))

(declare-fun e!437652 () Bool)

(declare-fun inv!9712 (CacheDown!410) Bool)

(assert (=> start!66364 (and (inv!9712 cacheDown!515) e!437652)))

(declare-fun e!437665 () Bool)

(declare-fun inv!9713 (CacheFindLongestMatch!66) Bool)

(assert (=> start!66364 (and (inv!9713 cacheFindLongestMatch!74) e!437665)))

(declare-fun b!694858 () Bool)

(declare-fun e!437651 () Bool)

(assert (=> b!694858 (= e!437663 (not e!437651))))

(declare-fun res!314646 () Bool)

(assert (=> b!694858 (=> res!314646 e!437651)))

(declare-fun isSuffix!137 (List!7604 List!7604) Bool)

(assert (=> b!694858 (= res!314646 (not (isSuffix!137 lt!285527 lt!285518)))))

(assert (=> b!694858 (isSuffix!137 lt!285527 lt!285526)))

(declare-datatypes ((Unit!12680 0))(
  ( (Unit!12681) )
))
(declare-fun lt!285525 () Unit!12680)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!137 (List!7604 List!7604) Unit!12680)

(assert (=> b!694858 (= lt!285525 (lemmaConcatTwoListThenFSndIsSuffix!137 lt!285520 lt!285527))))

(declare-fun tp!210448 () Bool)

(declare-fun e!437657 () Bool)

(declare-fun tp!210460 () Bool)

(declare-fun array_inv!993 (array!2991) Bool)

(assert (=> b!694859 (= e!437676 (and tp!210457 tp!210460 tp!210448 (array_inv!991 (_keys!1099 (v!17737 (underlying!1793 (v!17738 (underlying!1794 (cache!1164 cacheFindLongestMatch!74))))))) (array_inv!993 (_values!1084 (v!17737 (underlying!1793 (v!17738 (underlying!1794 (cache!1164 cacheFindLongestMatch!74))))))) e!437657))))

(declare-fun b!694860 () Bool)

(declare-fun res!314641 () Bool)

(assert (=> b!694860 (=> (not res!314641) (not e!437663))))

(declare-fun valid!686 (CacheFindLongestMatch!66) Bool)

(assert (=> b!694860 (= res!314641 (valid!686 cacheFindLongestMatch!74))))

(declare-fun b!694861 () Bool)

(declare-fun tp!210453 () Bool)

(declare-fun mapRes!3236 () Bool)

(assert (=> b!694861 (= e!437680 (and tp!210453 mapRes!3236))))

(declare-fun condMapEmpty!3238 () Bool)

(declare-fun mapDefault!3236 () List!7611)

(assert (=> b!694861 (= condMapEmpty!3238 (= (arr!1353 (_values!1086 (v!17741 (underlying!1797 (v!17742 (underlying!1798 (cache!1166 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7611)) mapDefault!3236)))))

(declare-fun b!694862 () Bool)

(assert (=> b!694862 (= e!437675 e!437671)))

(declare-fun b!694863 () Bool)

(declare-fun res!314647 () Bool)

(assert (=> b!694863 (=> (not res!314647) (not e!437663))))

(declare-fun valid!687 (CacheUp!404) Bool)

(assert (=> b!694863 (= res!314647 (valid!687 cacheUp!502))))

(declare-fun b!694864 () Bool)

(declare-fun e!437687 () Bool)

(assert (=> b!694864 (= e!437687 e!437664)))

(declare-fun b!694865 () Bool)

(assert (=> b!694865 (= e!437682 e!437687)))

(declare-fun e!437684 () Bool)

(declare-fun b!694866 () Bool)

(declare-fun e!437658 () Bool)

(assert (=> b!694866 (= e!437665 (and e!437658 (inv!9710 (totalInput!1816 cacheFindLongestMatch!74)) e!437684))))

(declare-fun b!694867 () Bool)

(declare-fun e!437653 () Bool)

(assert (=> b!694867 (= e!437651 e!437653)))

(declare-fun res!314636 () Bool)

(assert (=> b!694867 (=> res!314636 e!437653)))

(declare-datatypes ((tuple2!8054 0))(
  ( (tuple2!8055 (_1!4461 Token!2732) (_2!4461 BalanceConc!5352)) )
))
(declare-datatypes ((Option!1714 0))(
  ( (None!1713) (Some!1713 (v!17743 tuple2!8054)) )
))
(declare-datatypes ((tuple4!128 0))(
  ( (tuple4!129 (_1!4462 Option!1714) (_2!4462 CacheUp!404) (_3!434 CacheDown!410) (_4!64 CacheFindLongestMatch!66)) )
))
(declare-fun lt!285523 () tuple4!128)

(assert (=> b!694867 (= res!314636 (not ((_ is Some!1713) (_1!4462 lt!285523))))))

(declare-fun maxPrefixZipperSequenceV2Mem!7 (LexerInterface!1329 List!7607 BalanceConc!5352 BalanceConc!5352 CacheUp!404 CacheDown!410 CacheFindLongestMatch!66) tuple4!128)

(assert (=> b!694867 (= lt!285523 (maxPrefixZipperSequenceV2Mem!7 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun e!437681 () Bool)

(declare-fun tp!210459 () Bool)

(declare-fun b!694868 () Bool)

(declare-fun inv!9701 (String!9526) Bool)

(declare-fun inv!9714 (TokenValueInjection!2856) Bool)

(assert (=> b!694868 (= e!437681 (and tp!210459 (inv!9701 (tag!1778 (h!12994 rules!1486))) (inv!9714 (transformation!1516 (h!12994 rules!1486))) e!437654))))

(declare-fun b!694869 () Bool)

(assert (=> b!694869 (= e!437659 e!437655)))

(declare-fun res!314642 () Bool)

(assert (=> b!694869 (=> (not res!314642) (not e!437655))))

(declare-fun lt!285524 () tuple2!8042)

(assert (=> b!694869 (= res!314642 (= (list!3172 (_1!4454 lt!285524)) (list!3172 acc!372)))))

(assert (=> b!694869 (= lt!285524 (lexRec!171 thiss!12529 rules!1486 treated!50))))

(declare-fun b!694870 () Bool)

(declare-fun res!314638 () Bool)

(assert (=> b!694870 (=> (not res!314638) (not e!437685))))

(declare-fun rulesInvariant!1258 (LexerInterface!1329 List!7607) Bool)

(assert (=> b!694870 (= res!314638 (rulesInvariant!1258 thiss!12529 rules!1486))))

(declare-fun b!694871 () Bool)

(assert (=> b!694871 (= e!437673 e!437667)))

(declare-fun mapIsEmpty!3237 () Bool)

(assert (=> mapIsEmpty!3237 mapRes!3236))

(assert (=> b!694872 (= e!437658 (and e!437670 tp!210454))))

(declare-fun b!694873 () Bool)

(assert (=> b!694873 (= e!437652 e!437683)))

(declare-fun tp!210463 () Bool)

(declare-fun tp!210450 () Bool)

(declare-fun e!437688 () Bool)

(declare-fun e!437656 () Bool)

(declare-fun array_inv!994 (array!2993) Bool)

(assert (=> b!694874 (= e!437656 (and tp!210442 tp!210463 tp!210450 (array_inv!991 (_keys!1100 (v!17739 (underlying!1795 (v!17740 (underlying!1796 (cache!1165 cacheDown!515))))))) (array_inv!994 (_values!1085 (v!17739 (underlying!1795 (v!17740 (underlying!1796 (cache!1165 cacheDown!515))))))) e!437688))))

(declare-fun b!694875 () Bool)

(declare-fun res!314635 () Bool)

(assert (=> b!694875 (=> (not res!314635) (not e!437655))))

(declare-fun isEmpty!4897 (List!7604) Bool)

(assert (=> b!694875 (= res!314635 (isEmpty!4897 (list!3173 (_2!4454 lt!285524))))))

(declare-fun b!694876 () Bool)

(declare-fun e!437679 () Bool)

(assert (=> b!694876 (= e!437679 e!437656)))

(declare-fun mapNonEmpty!3238 () Bool)

(declare-fun tp!210462 () Bool)

(declare-fun tp!210441 () Bool)

(assert (=> mapNonEmpty!3238 (= mapRes!3236 (and tp!210462 tp!210441))))

(declare-fun mapValue!3236 () List!7611)

(declare-fun mapRest!3238 () (Array (_ BitVec 32) List!7611))

(declare-fun mapKey!3237 () (_ BitVec 32))

(assert (=> mapNonEmpty!3238 (= (arr!1353 (_values!1086 (v!17741 (underlying!1797 (v!17742 (underlying!1798 (cache!1166 cacheUp!502))))))) (store mapRest!3238 mapKey!3237 mapValue!3236))))

(declare-fun b!694877 () Bool)

(assert (=> b!694877 (= e!437677 e!437679)))

(declare-fun b!694878 () Bool)

(declare-fun tp!210461 () Bool)

(assert (=> b!694878 (= e!437688 (and tp!210461 mapRes!3237))))

(declare-fun condMapEmpty!3237 () Bool)

(declare-fun mapDefault!3237 () List!7610)

(assert (=> b!694878 (= condMapEmpty!3237 (= (arr!1352 (_values!1085 (v!17739 (underlying!1795 (v!17740 (underlying!1796 (cache!1165 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7610)) mapDefault!3237)))))

(declare-fun b!694879 () Bool)

(declare-fun res!314639 () Bool)

(assert (=> b!694879 (=> (not res!314639) (not e!437663))))

(assert (=> b!694879 (= res!314639 (= (list!3173 (_2!4454 lt!285519)) (list!3173 (_2!4454 lt!285515))))))

(declare-fun b!694880 () Bool)

(declare-fun tp!210452 () Bool)

(assert (=> b!694880 (= e!437657 (and tp!210452 mapRes!3238))))

(declare-fun condMapEmpty!3236 () Bool)

(declare-fun mapDefault!3238 () List!7609)

(assert (=> b!694880 (= condMapEmpty!3236 (= (arr!1351 (_values!1084 (v!17737 (underlying!1793 (v!17738 (underlying!1794 (cache!1164 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7609)) mapDefault!3238)))))

(declare-fun b!694881 () Bool)

(assert (=> b!694881 (= e!437653 true)))

(declare-fun lt!285522 () Bool)

(declare-fun rulesValidInductive!524 (LexerInterface!1329 List!7607) Bool)

(assert (=> b!694881 (= lt!285522 (rulesValidInductive!524 thiss!12529 rules!1486))))

(declare-fun lt!285528 () tuple2!8042)

(assert (=> b!694881 (= lt!285528 (lexRec!171 thiss!12529 rules!1486 (_2!4461 (v!17743 (_1!4462 lt!285523)))))))

(declare-fun b!694882 () Bool)

(declare-fun tp!210436 () Bool)

(declare-fun inv!9715 (Conc!2671) Bool)

(assert (=> b!694882 (= e!437668 (and (inv!9715 (c!121817 acc!372)) tp!210436))))

(declare-fun b!694883 () Bool)

(declare-fun tp!210456 () Bool)

(assert (=> b!694883 (= e!437662 (and e!437681 tp!210456))))

(declare-fun b!694884 () Bool)

(declare-fun res!314634 () Bool)

(assert (=> b!694884 (=> (not res!314634) (not e!437685))))

(declare-fun isEmpty!4898 (List!7607) Bool)

(assert (=> b!694884 (= res!314634 (not (isEmpty!4898 rules!1486)))))

(declare-fun b!694885 () Bool)

(declare-fun res!314637 () Bool)

(assert (=> b!694885 (=> (not res!314637) (not e!437663))))

(declare-fun valid!688 (CacheDown!410) Bool)

(assert (=> b!694885 (= res!314637 (valid!688 cacheDown!515))))

(declare-fun mapIsEmpty!3238 () Bool)

(assert (=> mapIsEmpty!3238 mapRes!3237))

(declare-fun b!694886 () Bool)

(declare-fun tp!210438 () Bool)

(assert (=> b!694886 (= e!437684 (and (inv!9708 (c!121815 (totalInput!1816 cacheFindLongestMatch!74))) tp!210438))))

(assert (= (and start!66364 res!314643) b!694884))

(assert (= (and b!694884 res!314634) b!694870))

(assert (= (and b!694870 res!314638) b!694849))

(assert (= (and b!694849 res!314644) b!694869))

(assert (= (and b!694869 res!314642) b!694875))

(assert (= (and b!694875 res!314635) b!694845))

(assert (= (and b!694845 res!314645) b!694879))

(assert (= (and b!694879 res!314639) b!694863))

(assert (= (and b!694863 res!314647) b!694885))

(assert (= (and b!694885 res!314637) b!694860))

(assert (= (and b!694860 res!314641) b!694853))

(assert (= (and b!694853 res!314640) b!694858))

(assert (= (and b!694858 (not res!314646)) b!694867))

(assert (= (and b!694867 (not res!314636)) b!694881))

(assert (= start!66364 b!694882))

(assert (= start!66364 b!694844))

(assert (= start!66364 b!694847))

(assert (= start!66364 b!694848))

(assert (= b!694868 b!694854))

(assert (= b!694883 b!694868))

(assert (= (and start!66364 ((_ is Cons!7593) rules!1486)) b!694883))

(assert (= (and b!694861 condMapEmpty!3238) mapIsEmpty!3237))

(assert (= (and b!694861 (not condMapEmpty!3238)) mapNonEmpty!3238))

(assert (= b!694855 b!694861))

(assert (= b!694864 b!694855))

(assert (= b!694865 b!694864))

(assert (= (and b!694851 ((_ is LongMap!807) (v!17742 (underlying!1798 (cache!1166 cacheUp!502))))) b!694865))

(assert (= b!694852 b!694851))

(assert (= (and b!694862 ((_ is HashMap!779) (cache!1166 cacheUp!502))) b!694852))

(assert (= start!66364 b!694862))

(assert (= (and b!694878 condMapEmpty!3237) mapIsEmpty!3238))

(assert (= (and b!694878 (not condMapEmpty!3237)) mapNonEmpty!3236))

(assert (= b!694874 b!694878))

(assert (= b!694876 b!694874))

(assert (= b!694877 b!694876))

(assert (= (and b!694850 ((_ is LongMap!806) (v!17740 (underlying!1796 (cache!1165 cacheDown!515))))) b!694877))

(assert (= b!694856 b!694850))

(assert (= (and b!694873 ((_ is HashMap!778) (cache!1165 cacheDown!515))) b!694856))

(assert (= start!66364 b!694873))

(assert (= (and b!694880 condMapEmpty!3236) mapIsEmpty!3236))

(assert (= (and b!694880 (not condMapEmpty!3236)) mapNonEmpty!3237))

(assert (= b!694859 b!694880))

(assert (= b!694857 b!694859))

(assert (= b!694871 b!694857))

(assert (= (and b!694846 ((_ is LongMap!805) (v!17738 (underlying!1794 (cache!1164 cacheFindLongestMatch!74))))) b!694871))

(assert (= b!694872 b!694846))

(assert (= (and b!694866 ((_ is HashMap!777) (cache!1164 cacheFindLongestMatch!74))) b!694872))

(assert (= b!694866 b!694886))

(assert (= start!66364 b!694866))

(declare-fun m!950783 () Bool)

(assert (=> b!694848 m!950783))

(declare-fun m!950785 () Bool)

(assert (=> b!694855 m!950785))

(declare-fun m!950787 () Bool)

(assert (=> b!694855 m!950787))

(declare-fun m!950789 () Bool)

(assert (=> b!694849 m!950789))

(declare-fun m!950791 () Bool)

(assert (=> b!694849 m!950791))

(declare-fun m!950793 () Bool)

(assert (=> b!694849 m!950793))

(declare-fun m!950795 () Bool)

(assert (=> b!694849 m!950795))

(declare-fun m!950797 () Bool)

(assert (=> b!694858 m!950797))

(declare-fun m!950799 () Bool)

(assert (=> b!694858 m!950799))

(declare-fun m!950801 () Bool)

(assert (=> b!694858 m!950801))

(declare-fun m!950803 () Bool)

(assert (=> b!694870 m!950803))

(declare-fun m!950805 () Bool)

(assert (=> b!694869 m!950805))

(declare-fun m!950807 () Bool)

(assert (=> b!694869 m!950807))

(declare-fun m!950809 () Bool)

(assert (=> b!694869 m!950809))

(declare-fun m!950811 () Bool)

(assert (=> b!694866 m!950811))

(declare-fun m!950813 () Bool)

(assert (=> b!694847 m!950813))

(declare-fun m!950815 () Bool)

(assert (=> b!694882 m!950815))

(declare-fun m!950817 () Bool)

(assert (=> mapNonEmpty!3236 m!950817))

(declare-fun m!950819 () Bool)

(assert (=> b!694859 m!950819))

(declare-fun m!950821 () Bool)

(assert (=> b!694859 m!950821))

(declare-fun m!950823 () Bool)

(assert (=> b!694860 m!950823))

(declare-fun m!950825 () Bool)

(assert (=> b!694874 m!950825))

(declare-fun m!950827 () Bool)

(assert (=> b!694874 m!950827))

(declare-fun m!950829 () Bool)

(assert (=> start!66364 m!950829))

(declare-fun m!950831 () Bool)

(assert (=> start!66364 m!950831))

(declare-fun m!950833 () Bool)

(assert (=> start!66364 m!950833))

(declare-fun m!950835 () Bool)

(assert (=> start!66364 m!950835))

(declare-fun m!950837 () Bool)

(assert (=> start!66364 m!950837))

(declare-fun m!950839 () Bool)

(assert (=> start!66364 m!950839))

(declare-fun m!950841 () Bool)

(assert (=> start!66364 m!950841))

(declare-fun m!950843 () Bool)

(assert (=> b!694845 m!950843))

(declare-fun m!950845 () Bool)

(assert (=> b!694845 m!950845))

(declare-fun m!950847 () Bool)

(assert (=> b!694845 m!950847))

(declare-fun m!950849 () Bool)

(assert (=> b!694845 m!950849))

(declare-fun m!950851 () Bool)

(assert (=> b!694845 m!950851))

(assert (=> b!694845 m!950845))

(declare-fun m!950853 () Bool)

(assert (=> b!694879 m!950853))

(declare-fun m!950855 () Bool)

(assert (=> b!694879 m!950855))

(declare-fun m!950857 () Bool)

(assert (=> b!694886 m!950857))

(declare-fun m!950859 () Bool)

(assert (=> mapNonEmpty!3237 m!950859))

(declare-fun m!950861 () Bool)

(assert (=> b!694867 m!950861))

(declare-fun m!950863 () Bool)

(assert (=> b!694885 m!950863))

(declare-fun m!950865 () Bool)

(assert (=> b!694863 m!950865))

(declare-fun m!950867 () Bool)

(assert (=> mapNonEmpty!3238 m!950867))

(declare-fun m!950869 () Bool)

(assert (=> b!694868 m!950869))

(declare-fun m!950871 () Bool)

(assert (=> b!694868 m!950871))

(declare-fun m!950873 () Bool)

(assert (=> b!694884 m!950873))

(declare-fun m!950875 () Bool)

(assert (=> b!694881 m!950875))

(declare-fun m!950877 () Bool)

(assert (=> b!694881 m!950877))

(declare-fun m!950879 () Bool)

(assert (=> b!694844 m!950879))

(declare-fun m!950881 () Bool)

(assert (=> b!694875 m!950881))

(assert (=> b!694875 m!950881))

(declare-fun m!950883 () Bool)

(assert (=> b!694875 m!950883))

(check-sat (not mapNonEmpty!3238) b_and!63639 (not mapNonEmpty!3236) (not b_next!19915) (not b!694881) (not b!694878) (not b!694844) (not b_next!19917) (not b!694859) b_and!63645 (not b!694867) (not b!694883) b_and!63651 (not b!694882) (not b_next!19911) (not b!694848) (not b!694861) (not b!694868) b_and!63647 (not b_next!19913) (not b!694858) (not b!694885) (not b!694879) (not b!694855) (not b!694863) (not b!694884) (not b!694866) (not b_next!19923) b_and!63653 (not mapNonEmpty!3237) (not start!66364) (not b!694886) (not b!694860) (not b_next!19921) (not b_next!19919) (not b!694875) b_and!63643 (not b!694880) b_and!63641 (not b!694870) (not b!694849) (not b_next!19909) (not b!694874) (not b!694845) (not b!694847) b_and!63649 (not b!694869))
(check-sat (not b_next!19923) b_and!63639 b_and!63653 (not b_next!19915) (not b_next!19909) b_and!63649 (not b_next!19917) b_and!63645 b_and!63651 (not b_next!19911) b_and!63647 (not b_next!19913) (not b_next!19921) (not b_next!19919) b_and!63643 b_and!63641)

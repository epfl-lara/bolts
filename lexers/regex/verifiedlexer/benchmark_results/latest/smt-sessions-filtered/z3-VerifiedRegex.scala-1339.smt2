; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71290 () Bool)

(assert start!71290)

(declare-fun b!768840 () Bool)

(declare-fun b_free!24125 () Bool)

(declare-fun b_next!24189 () Bool)

(assert (=> b!768840 (= b_free!24125 (not b_next!24189))))

(declare-fun tp!250614 () Bool)

(declare-fun b_and!71605 () Bool)

(assert (=> b!768840 (= tp!250614 b_and!71605)))

(declare-fun b!768833 () Bool)

(declare-fun b_free!24127 () Bool)

(declare-fun b_next!24191 () Bool)

(assert (=> b!768833 (= b_free!24127 (not b_next!24191))))

(declare-fun tp!250597 () Bool)

(declare-fun b_and!71607 () Bool)

(assert (=> b!768833 (= tp!250597 b_and!71607)))

(declare-fun b_free!24129 () Bool)

(declare-fun b_next!24193 () Bool)

(assert (=> b!768833 (= b_free!24129 (not b_next!24193))))

(declare-fun tp!250606 () Bool)

(declare-fun b_and!71609 () Bool)

(assert (=> b!768833 (= tp!250606 b_and!71609)))

(declare-fun b!768858 () Bool)

(declare-fun b_free!24131 () Bool)

(declare-fun b_next!24195 () Bool)

(assert (=> b!768858 (= b_free!24131 (not b_next!24195))))

(declare-fun tp!250591 () Bool)

(declare-fun b_and!71611 () Bool)

(assert (=> b!768858 (= tp!250591 b_and!71611)))

(declare-fun b!768831 () Bool)

(declare-fun b_free!24133 () Bool)

(declare-fun b_next!24197 () Bool)

(assert (=> b!768831 (= b_free!24133 (not b_next!24197))))

(declare-fun tp!250598 () Bool)

(declare-fun b_and!71613 () Bool)

(assert (=> b!768831 (= tp!250598 b_and!71613)))

(declare-fun b!768857 () Bool)

(declare-fun b_free!24135 () Bool)

(declare-fun b_next!24199 () Bool)

(assert (=> b!768857 (= b_free!24135 (not b_next!24199))))

(declare-fun tp!250609 () Bool)

(declare-fun b_and!71615 () Bool)

(assert (=> b!768857 (= tp!250609 b_and!71615)))

(declare-fun b!768854 () Bool)

(declare-fun b_free!24137 () Bool)

(declare-fun b_next!24201 () Bool)

(assert (=> b!768854 (= b_free!24137 (not b_next!24201))))

(declare-fun tp!250595 () Bool)

(declare-fun b_and!71617 () Bool)

(assert (=> b!768854 (= tp!250595 b_and!71617)))

(declare-fun b!768862 () Bool)

(declare-fun b_free!24139 () Bool)

(declare-fun b_next!24203 () Bool)

(assert (=> b!768862 (= b_free!24139 (not b_next!24203))))

(declare-fun tp!250594 () Bool)

(declare-fun b_and!71619 () Bool)

(assert (=> b!768862 (= tp!250594 b_and!71619)))

(declare-fun b!768827 () Bool)

(declare-fun e!494777 () Bool)

(declare-fun tp!250617 () Bool)

(declare-fun mapRes!5618 () Bool)

(assert (=> b!768827 (= e!494777 (and tp!250617 mapRes!5618))))

(declare-fun condMapEmpty!5619 () Bool)

(declare-datatypes ((C!4548 0))(
  ( (C!4549 (val!2504 Int)) )
))
(declare-datatypes ((Regex!1973 0))(
  ( (ElementMatch!1973 (c!130216 C!4548)) (Concat!3640 (regOne!4458 Regex!1973) (regTwo!4458 Regex!1973)) (EmptyExpr!1973) (Star!1973 (reg!2302 Regex!1973)) (EmptyLang!1973) (Union!1973 (regOne!4459 Regex!1973) (regTwo!4459 Regex!1973)) )
))
(declare-datatypes ((List!8500 0))(
  ( (Nil!8486) (Cons!8486 (h!13887 Regex!1973) (t!91782 List!8500)) )
))
(declare-datatypes ((Context!750 0))(
  ( (Context!751 (exprs!875 List!8500)) )
))
(declare-datatypes ((tuple3!958 0))(
  ( (tuple3!959 (_1!5677 Regex!1973) (_2!5677 Context!750) (_3!748 C!4548)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9858 0))(
  ( (tuple2!9859 (_1!5678 tuple3!958) (_2!5678 (InoxSet Context!750))) )
))
(declare-datatypes ((List!8501 0))(
  ( (Nil!8487) (Cons!8487 (h!13888 tuple2!9858) (t!91783 List!8501)) )
))
(declare-datatypes ((array!4037 0))(
  ( (array!4038 (arr!1802 (Array (_ BitVec 32) List!8501)) (size!6913 (_ BitVec 32))) )
))
(declare-datatypes ((array!4039 0))(
  ( (array!4040 (arr!1803 (Array (_ BitVec 32) (_ BitVec 64))) (size!6914 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2278 0))(
  ( (LongMapFixedSize!2279 (defaultEntry!1495 Int) (mask!3010 (_ BitVec 32)) (extraKeys!1386 (_ BitVec 32)) (zeroValue!1396 List!8501) (minValue!1396 List!8501) (_size!2387 (_ BitVec 32)) (_keys!1433 array!4039) (_values!1418 array!4037) (_vacant!1200 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4497 0))(
  ( (Cell!4498 (v!18627 LongMapFixedSize!2278)) )
))
(declare-datatypes ((MutLongMap!1139 0))(
  ( (LongMap!1139 (underlying!2461 Cell!4497)) (MutLongMapExt!1138 (__x!6736 Int)) )
))
(declare-datatypes ((Cell!4499 0))(
  ( (Cell!4500 (v!18628 MutLongMap!1139)) )
))
(declare-datatypes ((Hashable!1111 0))(
  ( (HashableExt!1110 (__x!6737 Int)) )
))
(declare-datatypes ((MutableMap!1111 0))(
  ( (MutableMapExt!1110 (__x!6738 Int)) (HashMap!1111 (underlying!2462 Cell!4499) (hashF!3019 Hashable!1111) (_size!2388 (_ BitVec 32)) (defaultValue!1262 Int)) )
))
(declare-datatypes ((CacheDown!630 0))(
  ( (CacheDown!631 (cache!1498 MutableMap!1111)) )
))
(declare-fun cacheDown!666 () CacheDown!630)

(declare-fun mapDefault!5620 () List!8501)

(assert (=> b!768827 (= condMapEmpty!5619 (= (arr!1802 (_values!1418 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8501)) mapDefault!5620)))))

(declare-fun b!768828 () Bool)

(declare-fun e!494773 () Bool)

(declare-fun e!494785 () Bool)

(assert (=> b!768828 (= e!494773 e!494785)))

(declare-fun b!768829 () Bool)

(declare-fun e!494786 () Bool)

(declare-datatypes ((List!8502 0))(
  ( (Nil!8488) (Cons!8488 (h!13889 C!4548) (t!91784 List!8502)) )
))
(declare-datatypes ((IArray!5743 0))(
  ( (IArray!5744 (innerList!2929 List!8502)) )
))
(declare-datatypes ((Conc!2871 0))(
  ( (Node!2871 (left!6364 Conc!2871) (right!6694 Conc!2871) (csize!5972 Int) (cheight!3082 Int)) (Leaf!4211 (xs!5558 IArray!5743) (csize!5973 Int)) (Empty!2871) )
))
(declare-datatypes ((BalanceConc!5754 0))(
  ( (BalanceConc!5755 (c!130217 Conc!2871)) )
))
(declare-fun input!1432 () BalanceConc!5754)

(declare-fun tp!250596 () Bool)

(declare-fun inv!10804 (Conc!2871) Bool)

(assert (=> b!768829 (= e!494786 (and (inv!10804 (c!130217 input!1432)) tp!250596))))

(declare-fun mapIsEmpty!5618 () Bool)

(assert (=> mapIsEmpty!5618 mapRes!5618))

(declare-fun mapIsEmpty!5619 () Bool)

(declare-fun mapRes!5619 () Bool)

(assert (=> mapIsEmpty!5619 mapRes!5619))

(declare-fun b!768830 () Bool)

(declare-fun e!494793 () Bool)

(declare-fun tp!250608 () Bool)

(assert (=> b!768830 (= e!494793 (and tp!250608 mapRes!5619))))

(declare-fun condMapEmpty!5618 () Bool)

(declare-datatypes ((tuple2!9860 0))(
  ( (tuple2!9861 (_1!5679 (InoxSet Context!750)) (_2!5679 Int)) )
))
(declare-datatypes ((tuple2!9862 0))(
  ( (tuple2!9863 (_1!5680 tuple2!9860) (_2!5680 Int)) )
))
(declare-datatypes ((List!8503 0))(
  ( (Nil!8489) (Cons!8489 (h!13890 tuple2!9862) (t!91785 List!8503)) )
))
(declare-datatypes ((array!4041 0))(
  ( (array!4042 (arr!1804 (Array (_ BitVec 32) List!8503)) (size!6915 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1112 0))(
  ( (HashableExt!1111 (__x!6739 Int)) )
))
(declare-datatypes ((LongMapFixedSize!2280 0))(
  ( (LongMapFixedSize!2281 (defaultEntry!1496 Int) (mask!3011 (_ BitVec 32)) (extraKeys!1387 (_ BitVec 32)) (zeroValue!1397 List!8503) (minValue!1397 List!8503) (_size!2389 (_ BitVec 32)) (_keys!1434 array!4039) (_values!1419 array!4041) (_vacant!1201 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4501 0))(
  ( (Cell!4502 (v!18629 LongMapFixedSize!2280)) )
))
(declare-datatypes ((MutLongMap!1140 0))(
  ( (LongMap!1140 (underlying!2463 Cell!4501)) (MutLongMapExt!1139 (__x!6740 Int)) )
))
(declare-datatypes ((Cell!4503 0))(
  ( (Cell!4504 (v!18630 MutLongMap!1140)) )
))
(declare-datatypes ((MutableMap!1112 0))(
  ( (MutableMapExt!1111 (__x!6741 Int)) (HashMap!1112 (underlying!2464 Cell!4503) (hashF!3020 Hashable!1112) (_size!2390 (_ BitVec 32)) (defaultValue!1263 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!294 0))(
  ( (CacheFindLongestMatch!295 (cache!1499 MutableMap!1112) (totalInput!2106 BalanceConc!5754)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!294)

(declare-fun mapDefault!5618 () List!8503)

(assert (=> b!768830 (= condMapEmpty!5618 (= (arr!1804 (_values!1419 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8503)) mapDefault!5618)))))

(declare-fun tp!250615 () Bool)

(declare-fun tp!250618 () Bool)

(declare-fun e!494783 () Bool)

(declare-fun array_inv!1307 (array!4039) Bool)

(declare-fun array_inv!1308 (array!4041) Bool)

(assert (=> b!768831 (= e!494783 (and tp!250598 tp!250618 tp!250615 (array_inv!1307 (_keys!1434 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) (array_inv!1308 (_values!1419 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) e!494793))))

(declare-fun b!768832 () Bool)

(declare-fun e!494778 () Bool)

(declare-fun e!494787 () Bool)

(declare-fun lt!313390 () MutLongMap!1140)

(get-info :version)

(assert (=> b!768832 (= e!494778 (and e!494787 ((_ is LongMap!1140) lt!313390)))))

(assert (=> b!768832 (= lt!313390 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))

(declare-fun e!494788 () Bool)

(assert (=> b!768833 (= e!494788 (and tp!250597 tp!250606))))

(declare-fun b!768834 () Bool)

(declare-fun e!494782 () Bool)

(declare-datatypes ((tuple2!9864 0))(
  ( (tuple2!9865 (_1!5681 Context!750) (_2!5681 C!4548)) )
))
(declare-datatypes ((tuple2!9866 0))(
  ( (tuple2!9867 (_1!5682 tuple2!9864) (_2!5682 (InoxSet Context!750))) )
))
(declare-datatypes ((List!8504 0))(
  ( (Nil!8490) (Cons!8490 (h!13891 tuple2!9866) (t!91786 List!8504)) )
))
(declare-datatypes ((array!4043 0))(
  ( (array!4044 (arr!1805 (Array (_ BitVec 32) List!8504)) (size!6916 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2282 0))(
  ( (LongMapFixedSize!2283 (defaultEntry!1497 Int) (mask!3012 (_ BitVec 32)) (extraKeys!1388 (_ BitVec 32)) (zeroValue!1398 List!8504) (minValue!1398 List!8504) (_size!2391 (_ BitVec 32)) (_keys!1435 array!4039) (_values!1420 array!4043) (_vacant!1202 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4505 0))(
  ( (Cell!4506 (v!18631 LongMapFixedSize!2282)) )
))
(declare-datatypes ((MutLongMap!1141 0))(
  ( (LongMap!1141 (underlying!2465 Cell!4505)) (MutLongMapExt!1140 (__x!6742 Int)) )
))
(declare-fun lt!313394 () MutLongMap!1141)

(assert (=> b!768834 (= e!494782 (and e!494773 ((_ is LongMap!1141) lt!313394)))))

(declare-datatypes ((Cell!4507 0))(
  ( (Cell!4508 (v!18632 MutLongMap!1141)) )
))
(declare-datatypes ((Hashable!1113 0))(
  ( (HashableExt!1112 (__x!6743 Int)) )
))
(declare-datatypes ((MutableMap!1113 0))(
  ( (MutableMapExt!1112 (__x!6744 Int)) (HashMap!1113 (underlying!2466 Cell!4507) (hashF!3021 Hashable!1113) (_size!2392 (_ BitVec 32)) (defaultValue!1264 Int)) )
))
(declare-datatypes ((CacheUp!624 0))(
  ( (CacheUp!625 (cache!1500 MutableMap!1113)) )
))
(declare-fun cacheUp!653 () CacheUp!624)

(assert (=> b!768834 (= lt!313394 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))

(declare-fun res!337472 () Bool)

(declare-fun e!494801 () Bool)

(assert (=> start!71290 (=> (not res!337472) (not e!494801))))

(declare-datatypes ((LexerInterface!1425 0))(
  ( (LexerInterfaceExt!1422 (__x!6745 Int)) (Lexer!1423) )
))
(declare-fun thiss!15653 () LexerInterface!1425)

(assert (=> start!71290 (= res!337472 ((_ is Lexer!1423) thiss!15653))))

(assert (=> start!71290 e!494801))

(declare-fun e!494800 () Bool)

(assert (=> start!71290 e!494800))

(declare-fun inv!10805 (BalanceConc!5754) Bool)

(assert (=> start!71290 (and (inv!10805 input!1432) e!494786)))

(declare-fun e!494798 () Bool)

(declare-fun inv!10806 (CacheFindLongestMatch!294) Bool)

(assert (=> start!71290 (and (inv!10806 cacheFindLongestMatch!134) e!494798)))

(assert (=> start!71290 true))

(declare-fun e!494789 () Bool)

(declare-fun inv!10807 (CacheUp!624) Bool)

(assert (=> start!71290 (and (inv!10807 cacheUp!653) e!494789)))

(declare-fun totalInput!472 () BalanceConc!5754)

(declare-fun e!494781 () Bool)

(assert (=> start!71290 (and (inv!10805 totalInput!472) e!494781)))

(declare-fun e!494790 () Bool)

(declare-fun inv!10808 (CacheDown!630) Bool)

(assert (=> start!71290 (and (inv!10808 cacheDown!666) e!494790)))

(declare-fun b!768835 () Bool)

(declare-fun e!494792 () Bool)

(declare-fun e!494802 () Bool)

(assert (=> b!768835 (= e!494792 e!494802)))

(declare-fun b!768836 () Bool)

(declare-fun res!337476 () Bool)

(assert (=> b!768836 (=> (not res!337476) (not e!494801))))

(declare-datatypes ((List!8505 0))(
  ( (Nil!8491) (Cons!8491 (h!13892 (_ BitVec 16)) (t!91787 List!8505)) )
))
(declare-datatypes ((TokenValue!1667 0))(
  ( (FloatLiteralValue!3334 (text!12114 List!8505)) (TokenValueExt!1666 (__x!6746 Int)) (Broken!8335 (value!51908 List!8505)) (Object!1680) (End!1667) (Def!1667) (Underscore!1667) (Match!1667) (Else!1667) (Error!1667) (Case!1667) (If!1667) (Extends!1667) (Abstract!1667) (Class!1667) (Val!1667) (DelimiterValue!3334 (del!1727 List!8505)) (KeywordValue!1673 (value!51909 List!8505)) (CommentValue!3334 (value!51910 List!8505)) (WhitespaceValue!3334 (value!51911 List!8505)) (IndentationValue!1667 (value!51912 List!8505)) (String!10082) (Int32!1667) (Broken!8336 (value!51913 List!8505)) (Boolean!1668) (Unit!13081) (OperatorValue!1670 (op!1727 List!8505)) (IdentifierValue!3334 (value!51914 List!8505)) (IdentifierValue!3335 (value!51915 List!8505)) (WhitespaceValue!3335 (value!51916 List!8505)) (True!3334) (False!3334) (Broken!8337 (value!51917 List!8505)) (Broken!8338 (value!51918 List!8505)) (True!3335) (RightBrace!1667) (RightBracket!1667) (Colon!1667) (Null!1667) (Comma!1667) (LeftBracket!1667) (False!3335) (LeftBrace!1667) (ImaginaryLiteralValue!1667 (text!12115 List!8505)) (StringLiteralValue!5001 (value!51919 List!8505)) (EOFValue!1667 (value!51920 List!8505)) (IdentValue!1667 (value!51921 List!8505)) (DelimiterValue!3335 (value!51922 List!8505)) (DedentValue!1667 (value!51923 List!8505)) (NewLineValue!1667 (value!51924 List!8505)) (IntegerValue!5001 (value!51925 (_ BitVec 32)) (text!12116 List!8505)) (IntegerValue!5002 (value!51926 Int) (text!12117 List!8505)) (Times!1667) (Or!1667) (Equal!1667) (Minus!1667) (Broken!8339 (value!51927 List!8505)) (And!1667) (Div!1667) (LessEqual!1667) (Mod!1667) (Concat!3641) (Not!1667) (Plus!1667) (SpaceValue!1667 (value!51928 List!8505)) (IntegerValue!5003 (value!51929 Int) (text!12118 List!8505)) (StringLiteralValue!5002 (text!12119 List!8505)) (FloatLiteralValue!3335 (text!12120 List!8505)) (BytesLiteralValue!1667 (value!51930 List!8505)) (CommentValue!3335 (value!51931 List!8505)) (StringLiteralValue!5003 (value!51932 List!8505)) (ErrorTokenValue!1667 (msg!1728 List!8505)) )
))
(declare-datatypes ((TokenValueInjection!3070 0))(
  ( (TokenValueInjection!3071 (toValue!2615 Int) (toChars!2474 Int)) )
))
(declare-datatypes ((String!10083 0))(
  ( (String!10084 (value!51933 String)) )
))
(declare-datatypes ((Rule!3046 0))(
  ( (Rule!3047 (regex!1623 Regex!1973) (tag!1885 String!10083) (isSeparator!1623 Bool) (transformation!1623 TokenValueInjection!3070)) )
))
(declare-datatypes ((List!8506 0))(
  ( (Nil!8492) (Cons!8492 (h!13893 Rule!3046) (t!91788 List!8506)) )
))
(declare-fun rulesArg!343 () List!8506)

(declare-fun rulesValidInductive!572 (LexerInterface!1425 List!8506) Bool)

(assert (=> b!768836 (= res!337476 (rulesValidInductive!572 thiss!15653 rulesArg!343))))

(declare-fun mapNonEmpty!5618 () Bool)

(declare-fun mapRes!5620 () Bool)

(declare-fun tp!250604 () Bool)

(declare-fun tp!250603 () Bool)

(assert (=> mapNonEmpty!5618 (= mapRes!5620 (and tp!250604 tp!250603))))

(declare-fun mapValue!5619 () List!8504)

(declare-fun mapKey!5618 () (_ BitVec 32))

(declare-fun mapRest!5620 () (Array (_ BitVec 32) List!8504))

(assert (=> mapNonEmpty!5618 (= (arr!1805 (_values!1420 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) (store mapRest!5620 mapKey!5618 mapValue!5619))))

(declare-fun b!768837 () Bool)

(declare-fun e!494779 () Bool)

(declare-fun e!494796 () Bool)

(assert (=> b!768837 (= e!494798 (and e!494779 (inv!10805 (totalInput!2106 cacheFindLongestMatch!134)) e!494796))))

(declare-fun b!768838 () Bool)

(declare-fun e!494770 () Bool)

(assert (=> b!768838 (= e!494790 e!494770)))

(declare-fun b!768839 () Bool)

(declare-fun e!494775 () Bool)

(declare-fun ruleValid!498 (LexerInterface!1425 Rule!3046) Bool)

(assert (=> b!768839 (= e!494775 (ruleValid!498 thiss!15653 (h!13893 rulesArg!343)))))

(declare-fun e!494771 () Bool)

(assert (=> b!768840 (= e!494770 (and e!494771 tp!250614))))

(declare-fun b!768841 () Bool)

(declare-fun e!494769 () Bool)

(declare-fun tp!250610 () Bool)

(assert (=> b!768841 (= e!494800 (and e!494769 tp!250610))))

(declare-fun b!768842 () Bool)

(declare-fun e!494776 () Bool)

(declare-fun tp!250601 () Bool)

(assert (=> b!768842 (= e!494776 (and tp!250601 mapRes!5620))))

(declare-fun condMapEmpty!5620 () Bool)

(declare-fun mapDefault!5619 () List!8504)

(assert (=> b!768842 (= condMapEmpty!5620 (= (arr!1805 (_values!1420 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8504)) mapDefault!5619)))))

(declare-fun mapNonEmpty!5619 () Bool)

(declare-fun tp!250607 () Bool)

(declare-fun tp!250605 () Bool)

(assert (=> mapNonEmpty!5619 (= mapRes!5619 (and tp!250607 tp!250605))))

(declare-fun mapRest!5618 () (Array (_ BitVec 32) List!8503))

(declare-fun mapValue!5620 () List!8503)

(declare-fun mapKey!5620 () (_ BitVec 32))

(assert (=> mapNonEmpty!5619 (= (arr!1804 (_values!1419 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) (store mapRest!5618 mapKey!5620 mapValue!5620))))

(declare-fun b!768843 () Bool)

(declare-fun res!337473 () Bool)

(assert (=> b!768843 (=> (not res!337473) (not e!494801))))

(declare-fun isEmpty!5202 (List!8506) Bool)

(assert (=> b!768843 (= res!337473 (not (isEmpty!5202 rulesArg!343)))))

(declare-fun b!768844 () Bool)

(declare-fun tp!250616 () Bool)

(assert (=> b!768844 (= e!494796 (and (inv!10804 (c!130217 (totalInput!2106 cacheFindLongestMatch!134))) tp!250616))))

(declare-fun b!768845 () Bool)

(declare-fun e!494772 () Bool)

(assert (=> b!768845 (= e!494772 (not e!494775))))

(declare-fun res!337474 () Bool)

(assert (=> b!768845 (=> res!337474 e!494775)))

(assert (=> b!768845 (= res!337474 (or (not ((_ is Cons!8492) rulesArg!343)) (not ((_ is Nil!8492) (t!91788 rulesArg!343)))))))

(declare-fun lt!313392 () List!8502)

(declare-fun isPrefix!982 (List!8502 List!8502) Bool)

(assert (=> b!768845 (isPrefix!982 lt!313392 lt!313392)))

(declare-datatypes ((Unit!13082 0))(
  ( (Unit!13083) )
))
(declare-fun lt!313391 () Unit!13082)

(declare-fun lemmaIsPrefixRefl!693 (List!8502 List!8502) Unit!13082)

(assert (=> b!768845 (= lt!313391 (lemmaIsPrefixRefl!693 lt!313392 lt!313392))))

(declare-fun b!768846 () Bool)

(declare-fun e!494797 () Bool)

(assert (=> b!768846 (= e!494797 e!494783)))

(declare-fun b!768847 () Bool)

(declare-fun lt!313393 () MutLongMap!1139)

(assert (=> b!768847 (= e!494771 (and e!494792 ((_ is LongMap!1139) lt!313393)))))

(assert (=> b!768847 (= lt!313393 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))

(declare-fun b!768848 () Bool)

(assert (=> b!768848 (= e!494801 e!494772)))

(declare-fun res!337479 () Bool)

(assert (=> b!768848 (=> (not res!337479) (not e!494772))))

(declare-fun isSuffix!208 (List!8502 List!8502) Bool)

(declare-fun list!3424 (BalanceConc!5754) List!8502)

(assert (=> b!768848 (= res!337479 (isSuffix!208 lt!313392 (list!3424 totalInput!472)))))

(assert (=> b!768848 (= lt!313392 (list!3424 input!1432))))

(declare-fun b!768849 () Bool)

(declare-fun e!494799 () Bool)

(assert (=> b!768849 (= e!494789 e!494799)))

(declare-fun b!768850 () Bool)

(declare-fun res!337477 () Bool)

(assert (=> b!768850 (=> (not res!337477) (not e!494772))))

(declare-fun valid!929 (CacheUp!624) Bool)

(assert (=> b!768850 (= res!337477 (valid!929 cacheUp!653))))

(declare-fun b!768851 () Bool)

(declare-fun res!337475 () Bool)

(assert (=> b!768851 (=> (not res!337475) (not e!494772))))

(declare-fun valid!930 (CacheDown!630) Bool)

(assert (=> b!768851 (= res!337475 (valid!930 cacheDown!666))))

(declare-fun b!768852 () Bool)

(assert (=> b!768852 (= e!494787 e!494797)))

(declare-fun tp!250611 () Bool)

(declare-fun b!768853 () Bool)

(declare-fun inv!10803 (String!10083) Bool)

(declare-fun inv!10809 (TokenValueInjection!3070) Bool)

(assert (=> b!768853 (= e!494769 (and tp!250611 (inv!10803 (tag!1885 (h!13893 rulesArg!343))) (inv!10809 (transformation!1623 (h!13893 rulesArg!343))) e!494788))))

(assert (=> b!768854 (= e!494779 (and e!494778 tp!250595))))

(declare-fun b!768855 () Bool)

(declare-fun e!494794 () Bool)

(assert (=> b!768855 (= e!494785 e!494794)))

(declare-fun b!768856 () Bool)

(declare-fun e!494791 () Bool)

(assert (=> b!768856 (= e!494802 e!494791)))

(declare-fun mapNonEmpty!5620 () Bool)

(declare-fun tp!250600 () Bool)

(declare-fun tp!250612 () Bool)

(assert (=> mapNonEmpty!5620 (= mapRes!5618 (and tp!250600 tp!250612))))

(declare-fun mapValue!5618 () List!8501)

(declare-fun mapRest!5619 () (Array (_ BitVec 32) List!8501))

(declare-fun mapKey!5619 () (_ BitVec 32))

(assert (=> mapNonEmpty!5620 (= (arr!1802 (_values!1418 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) (store mapRest!5619 mapKey!5619 mapValue!5618))))

(declare-fun tp!250613 () Bool)

(declare-fun tp!250599 () Bool)

(declare-fun array_inv!1309 (array!4043) Bool)

(assert (=> b!768857 (= e!494794 (and tp!250609 tp!250613 tp!250599 (array_inv!1307 (_keys!1435 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) (array_inv!1309 (_values!1420 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) e!494776))))

(assert (=> b!768858 (= e!494799 (and e!494782 tp!250591))))

(declare-fun mapIsEmpty!5620 () Bool)

(assert (=> mapIsEmpty!5620 mapRes!5620))

(declare-fun b!768859 () Bool)

(declare-fun res!337471 () Bool)

(assert (=> b!768859 (=> (not res!337471) (not e!494772))))

(assert (=> b!768859 (= res!337471 (= (totalInput!2106 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun b!768860 () Bool)

(declare-fun tp!250593 () Bool)

(assert (=> b!768860 (= e!494781 (and (inv!10804 (c!130217 totalInput!472)) tp!250593))))

(declare-fun b!768861 () Bool)

(declare-fun res!337478 () Bool)

(assert (=> b!768861 (=> (not res!337478) (not e!494772))))

(declare-fun valid!931 (CacheFindLongestMatch!294) Bool)

(assert (=> b!768861 (= res!337478 (valid!931 cacheFindLongestMatch!134))))

(declare-fun tp!250592 () Bool)

(declare-fun tp!250602 () Bool)

(declare-fun array_inv!1310 (array!4037) Bool)

(assert (=> b!768862 (= e!494791 (and tp!250594 tp!250592 tp!250602 (array_inv!1307 (_keys!1433 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) (array_inv!1310 (_values!1418 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) e!494777))))

(assert (= (and start!71290 res!337472) b!768836))

(assert (= (and b!768836 res!337476) b!768843))

(assert (= (and b!768843 res!337473) b!768848))

(assert (= (and b!768848 res!337479) b!768850))

(assert (= (and b!768850 res!337477) b!768851))

(assert (= (and b!768851 res!337475) b!768861))

(assert (= (and b!768861 res!337478) b!768859))

(assert (= (and b!768859 res!337471) b!768845))

(assert (= (and b!768845 (not res!337474)) b!768839))

(assert (= b!768853 b!768833))

(assert (= b!768841 b!768853))

(assert (= (and start!71290 ((_ is Cons!8492) rulesArg!343)) b!768841))

(assert (= start!71290 b!768829))

(assert (= (and b!768830 condMapEmpty!5618) mapIsEmpty!5619))

(assert (= (and b!768830 (not condMapEmpty!5618)) mapNonEmpty!5619))

(assert (= b!768831 b!768830))

(assert (= b!768846 b!768831))

(assert (= b!768852 b!768846))

(assert (= (and b!768832 ((_ is LongMap!1140) (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))) b!768852))

(assert (= b!768854 b!768832))

(assert (= (and b!768837 ((_ is HashMap!1112) (cache!1499 cacheFindLongestMatch!134))) b!768854))

(assert (= b!768837 b!768844))

(assert (= start!71290 b!768837))

(assert (= (and b!768842 condMapEmpty!5620) mapIsEmpty!5620))

(assert (= (and b!768842 (not condMapEmpty!5620)) mapNonEmpty!5618))

(assert (= b!768857 b!768842))

(assert (= b!768855 b!768857))

(assert (= b!768828 b!768855))

(assert (= (and b!768834 ((_ is LongMap!1141) (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))) b!768828))

(assert (= b!768858 b!768834))

(assert (= (and b!768849 ((_ is HashMap!1113) (cache!1500 cacheUp!653))) b!768858))

(assert (= start!71290 b!768849))

(assert (= start!71290 b!768860))

(assert (= (and b!768827 condMapEmpty!5619) mapIsEmpty!5618))

(assert (= (and b!768827 (not condMapEmpty!5619)) mapNonEmpty!5620))

(assert (= b!768862 b!768827))

(assert (= b!768856 b!768862))

(assert (= b!768835 b!768856))

(assert (= (and b!768847 ((_ is LongMap!1139) (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))) b!768835))

(assert (= b!768840 b!768847))

(assert (= (and b!768838 ((_ is HashMap!1111) (cache!1498 cacheDown!666))) b!768840))

(assert (= start!71290 b!768838))

(declare-fun m!1038321 () Bool)

(assert (=> b!768860 m!1038321))

(declare-fun m!1038323 () Bool)

(assert (=> b!768862 m!1038323))

(declare-fun m!1038325 () Bool)

(assert (=> b!768862 m!1038325))

(declare-fun m!1038327 () Bool)

(assert (=> b!768837 m!1038327))

(declare-fun m!1038329 () Bool)

(assert (=> b!768845 m!1038329))

(declare-fun m!1038331 () Bool)

(assert (=> b!768845 m!1038331))

(declare-fun m!1038333 () Bool)

(assert (=> b!768839 m!1038333))

(declare-fun m!1038335 () Bool)

(assert (=> start!71290 m!1038335))

(declare-fun m!1038337 () Bool)

(assert (=> start!71290 m!1038337))

(declare-fun m!1038339 () Bool)

(assert (=> start!71290 m!1038339))

(declare-fun m!1038341 () Bool)

(assert (=> start!71290 m!1038341))

(declare-fun m!1038343 () Bool)

(assert (=> start!71290 m!1038343))

(declare-fun m!1038345 () Bool)

(assert (=> b!768853 m!1038345))

(declare-fun m!1038347 () Bool)

(assert (=> b!768853 m!1038347))

(declare-fun m!1038349 () Bool)

(assert (=> b!768851 m!1038349))

(declare-fun m!1038351 () Bool)

(assert (=> mapNonEmpty!5620 m!1038351))

(declare-fun m!1038353 () Bool)

(assert (=> b!768848 m!1038353))

(assert (=> b!768848 m!1038353))

(declare-fun m!1038355 () Bool)

(assert (=> b!768848 m!1038355))

(declare-fun m!1038357 () Bool)

(assert (=> b!768848 m!1038357))

(declare-fun m!1038359 () Bool)

(assert (=> b!768844 m!1038359))

(declare-fun m!1038361 () Bool)

(assert (=> b!768850 m!1038361))

(declare-fun m!1038363 () Bool)

(assert (=> b!768829 m!1038363))

(declare-fun m!1038365 () Bool)

(assert (=> b!768843 m!1038365))

(declare-fun m!1038367 () Bool)

(assert (=> b!768861 m!1038367))

(declare-fun m!1038369 () Bool)

(assert (=> b!768836 m!1038369))

(declare-fun m!1038371 () Bool)

(assert (=> b!768831 m!1038371))

(declare-fun m!1038373 () Bool)

(assert (=> b!768831 m!1038373))

(declare-fun m!1038375 () Bool)

(assert (=> b!768857 m!1038375))

(declare-fun m!1038377 () Bool)

(assert (=> b!768857 m!1038377))

(declare-fun m!1038379 () Bool)

(assert (=> mapNonEmpty!5619 m!1038379))

(declare-fun m!1038381 () Bool)

(assert (=> mapNonEmpty!5618 m!1038381))

(check-sat (not start!71290) (not b!768851) (not b!768844) (not b_next!24203) (not mapNonEmpty!5618) b_and!71615 (not b!768845) (not mapNonEmpty!5619) b_and!71619 (not b_next!24201) (not b_next!24193) (not b_next!24197) (not b_next!24191) b_and!71609 (not b!768843) (not b!768862) (not b!768831) b_and!71611 (not b!768829) (not b!768827) (not b!768837) (not b!768836) (not b_next!24199) (not b!768853) b_and!71617 (not b_next!24195) (not b!768830) b_and!71613 (not b!768839) b_and!71607 (not b!768848) (not b!768860) (not b!768841) (not b!768850) (not b!768857) (not b_next!24189) (not mapNonEmpty!5620) (not b!768861) (not b!768842) b_and!71605)
(check-sat b_and!71619 b_and!71609 b_and!71611 (not b_next!24199) (not b_next!24203) b_and!71617 b_and!71615 b_and!71607 (not b_next!24189) b_and!71605 (not b_next!24201) (not b_next!24193) (not b_next!24197) (not b_next!24191) (not b_next!24195) b_and!71613)
(get-model)

(declare-fun d!251408 () Bool)

(declare-fun validCacheMapUp!99 (MutableMap!1113) Bool)

(assert (=> d!251408 (= (valid!929 cacheUp!653) (validCacheMapUp!99 (cache!1500 cacheUp!653)))))

(declare-fun bs!165909 () Bool)

(assert (= bs!165909 d!251408))

(declare-fun m!1038383 () Bool)

(assert (=> bs!165909 m!1038383))

(assert (=> b!768850 d!251408))

(declare-fun d!251410 () Bool)

(declare-fun res!337484 () Bool)

(declare-fun e!494805 () Bool)

(assert (=> d!251410 (=> (not res!337484) (not e!494805))))

(assert (=> d!251410 (= res!337484 ((_ is HashMap!1111) (cache!1498 cacheDown!666)))))

(assert (=> d!251410 (= (inv!10808 cacheDown!666) e!494805)))

(declare-fun b!768865 () Bool)

(declare-fun validCacheMapDown!99 (MutableMap!1111) Bool)

(assert (=> b!768865 (= e!494805 (validCacheMapDown!99 (cache!1498 cacheDown!666)))))

(assert (= (and d!251410 res!337484) b!768865))

(declare-fun m!1038385 () Bool)

(assert (=> b!768865 m!1038385))

(assert (=> start!71290 d!251410))

(declare-fun d!251412 () Bool)

(declare-fun isBalanced!772 (Conc!2871) Bool)

(assert (=> d!251412 (= (inv!10805 totalInput!472) (isBalanced!772 (c!130217 totalInput!472)))))

(declare-fun bs!165910 () Bool)

(assert (= bs!165910 d!251412))

(declare-fun m!1038387 () Bool)

(assert (=> bs!165910 m!1038387))

(assert (=> start!71290 d!251412))

(declare-fun d!251414 () Bool)

(assert (=> d!251414 (= (inv!10805 input!1432) (isBalanced!772 (c!130217 input!1432)))))

(declare-fun bs!165911 () Bool)

(assert (= bs!165911 d!251414))

(declare-fun m!1038389 () Bool)

(assert (=> bs!165911 m!1038389))

(assert (=> start!71290 d!251414))

(declare-fun d!251416 () Bool)

(declare-fun res!337487 () Bool)

(declare-fun e!494808 () Bool)

(assert (=> d!251416 (=> (not res!337487) (not e!494808))))

(assert (=> d!251416 (= res!337487 ((_ is HashMap!1113) (cache!1500 cacheUp!653)))))

(assert (=> d!251416 (= (inv!10807 cacheUp!653) e!494808)))

(declare-fun b!768868 () Bool)

(assert (=> b!768868 (= e!494808 (validCacheMapUp!99 (cache!1500 cacheUp!653)))))

(assert (= (and d!251416 res!337487) b!768868))

(assert (=> b!768868 m!1038383))

(assert (=> start!71290 d!251416))

(declare-fun d!251418 () Bool)

(declare-fun res!337490 () Bool)

(declare-fun e!494811 () Bool)

(assert (=> d!251418 (=> (not res!337490) (not e!494811))))

(assert (=> d!251418 (= res!337490 ((_ is HashMap!1112) (cache!1499 cacheFindLongestMatch!134)))))

(assert (=> d!251418 (= (inv!10806 cacheFindLongestMatch!134) e!494811)))

(declare-fun b!768871 () Bool)

(declare-fun validCacheMapFindLongestMatch!45 (MutableMap!1112 BalanceConc!5754) Bool)

(assert (=> b!768871 (= e!494811 (validCacheMapFindLongestMatch!45 (cache!1499 cacheFindLongestMatch!134) (totalInput!2106 cacheFindLongestMatch!134)))))

(assert (= (and d!251418 res!337490) b!768871))

(declare-fun m!1038391 () Bool)

(assert (=> b!768871 m!1038391))

(assert (=> start!71290 d!251418))

(declare-fun d!251420 () Bool)

(assert (=> d!251420 (= (array_inv!1307 (_keys!1434 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) (bvsge (size!6914 (_keys!1434 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!768831 d!251420))

(declare-fun d!251422 () Bool)

(assert (=> d!251422 (= (array_inv!1308 (_values!1419 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) (bvsge (size!6915 (_values!1419 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!768831 d!251422))

(declare-fun d!251424 () Bool)

(declare-fun res!337495 () Bool)

(declare-fun e!494814 () Bool)

(assert (=> d!251424 (=> (not res!337495) (not e!494814))))

(declare-fun validRegex!580 (Regex!1973) Bool)

(assert (=> d!251424 (= res!337495 (validRegex!580 (regex!1623 (h!13893 rulesArg!343))))))

(assert (=> d!251424 (= (ruleValid!498 thiss!15653 (h!13893 rulesArg!343)) e!494814)))

(declare-fun b!768876 () Bool)

(declare-fun res!337496 () Bool)

(assert (=> b!768876 (=> (not res!337496) (not e!494814))))

(declare-fun nullable!484 (Regex!1973) Bool)

(assert (=> b!768876 (= res!337496 (not (nullable!484 (regex!1623 (h!13893 rulesArg!343)))))))

(declare-fun b!768877 () Bool)

(assert (=> b!768877 (= e!494814 (not (= (tag!1885 (h!13893 rulesArg!343)) (String!10084 ""))))))

(assert (= (and d!251424 res!337495) b!768876))

(assert (= (and b!768876 res!337496) b!768877))

(declare-fun m!1038393 () Bool)

(assert (=> d!251424 m!1038393))

(declare-fun m!1038395 () Bool)

(assert (=> b!768876 m!1038395))

(assert (=> b!768839 d!251424))

(declare-fun d!251426 () Bool)

(assert (=> d!251426 (= (array_inv!1307 (_keys!1435 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) (bvsge (size!6914 (_keys!1435 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!768857 d!251426))

(declare-fun d!251428 () Bool)

(assert (=> d!251428 (= (array_inv!1309 (_values!1420 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) (bvsge (size!6916 (_values!1420 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!768857 d!251428))

(declare-fun d!251430 () Bool)

(declare-fun e!494817 () Bool)

(assert (=> d!251430 e!494817))

(declare-fun res!337499 () Bool)

(assert (=> d!251430 (=> res!337499 e!494817)))

(declare-fun lt!313397 () Bool)

(assert (=> d!251430 (= res!337499 (not lt!313397))))

(declare-fun drop!392 (List!8502 Int) List!8502)

(declare-fun size!6917 (List!8502) Int)

(assert (=> d!251430 (= lt!313397 (= lt!313392 (drop!392 (list!3424 totalInput!472) (- (size!6917 (list!3424 totalInput!472)) (size!6917 lt!313392)))))))

(assert (=> d!251430 (= (isSuffix!208 lt!313392 (list!3424 totalInput!472)) lt!313397)))

(declare-fun b!768880 () Bool)

(assert (=> b!768880 (= e!494817 (>= (size!6917 (list!3424 totalInput!472)) (size!6917 lt!313392)))))

(assert (= (and d!251430 (not res!337499)) b!768880))

(assert (=> d!251430 m!1038353))

(declare-fun m!1038397 () Bool)

(assert (=> d!251430 m!1038397))

(declare-fun m!1038399 () Bool)

(assert (=> d!251430 m!1038399))

(assert (=> d!251430 m!1038353))

(declare-fun m!1038401 () Bool)

(assert (=> d!251430 m!1038401))

(assert (=> b!768880 m!1038353))

(assert (=> b!768880 m!1038397))

(assert (=> b!768880 m!1038399))

(assert (=> b!768848 d!251430))

(declare-fun d!251432 () Bool)

(declare-fun list!3425 (Conc!2871) List!8502)

(assert (=> d!251432 (= (list!3424 totalInput!472) (list!3425 (c!130217 totalInput!472)))))

(declare-fun bs!165912 () Bool)

(assert (= bs!165912 d!251432))

(declare-fun m!1038403 () Bool)

(assert (=> bs!165912 m!1038403))

(assert (=> b!768848 d!251432))

(declare-fun d!251434 () Bool)

(assert (=> d!251434 (= (list!3424 input!1432) (list!3425 (c!130217 input!1432)))))

(declare-fun bs!165913 () Bool)

(assert (= bs!165913 d!251434))

(declare-fun m!1038405 () Bool)

(assert (=> bs!165913 m!1038405))

(assert (=> b!768848 d!251434))

(declare-fun d!251436 () Bool)

(assert (=> d!251436 (= (inv!10805 (totalInput!2106 cacheFindLongestMatch!134)) (isBalanced!772 (c!130217 (totalInput!2106 cacheFindLongestMatch!134))))))

(declare-fun bs!165914 () Bool)

(assert (= bs!165914 d!251436))

(declare-fun m!1038407 () Bool)

(assert (=> bs!165914 m!1038407))

(assert (=> b!768837 d!251436))

(declare-fun d!251438 () Bool)

(declare-fun c!130220 () Bool)

(assert (=> d!251438 (= c!130220 ((_ is Node!2871) (c!130217 input!1432)))))

(declare-fun e!494822 () Bool)

(assert (=> d!251438 (= (inv!10804 (c!130217 input!1432)) e!494822)))

(declare-fun b!768887 () Bool)

(declare-fun inv!10810 (Conc!2871) Bool)

(assert (=> b!768887 (= e!494822 (inv!10810 (c!130217 input!1432)))))

(declare-fun b!768888 () Bool)

(declare-fun e!494823 () Bool)

(assert (=> b!768888 (= e!494822 e!494823)))

(declare-fun res!337502 () Bool)

(assert (=> b!768888 (= res!337502 (not ((_ is Leaf!4211) (c!130217 input!1432))))))

(assert (=> b!768888 (=> res!337502 e!494823)))

(declare-fun b!768889 () Bool)

(declare-fun inv!10811 (Conc!2871) Bool)

(assert (=> b!768889 (= e!494823 (inv!10811 (c!130217 input!1432)))))

(assert (= (and d!251438 c!130220) b!768887))

(assert (= (and d!251438 (not c!130220)) b!768888))

(assert (= (and b!768888 (not res!337502)) b!768889))

(declare-fun m!1038409 () Bool)

(assert (=> b!768887 m!1038409))

(declare-fun m!1038411 () Bool)

(assert (=> b!768889 m!1038411))

(assert (=> b!768829 d!251438))

(declare-fun d!251440 () Bool)

(assert (=> d!251440 true))

(declare-fun lt!313400 () Bool)

(declare-fun lambda!23279 () Int)

(declare-fun forall!2042 (List!8506 Int) Bool)

(assert (=> d!251440 (= lt!313400 (forall!2042 rulesArg!343 lambda!23279))))

(declare-fun e!494829 () Bool)

(assert (=> d!251440 (= lt!313400 e!494829)))

(declare-fun res!337507 () Bool)

(assert (=> d!251440 (=> res!337507 e!494829)))

(assert (=> d!251440 (= res!337507 (not ((_ is Cons!8492) rulesArg!343)))))

(assert (=> d!251440 (= (rulesValidInductive!572 thiss!15653 rulesArg!343) lt!313400)))

(declare-fun b!768894 () Bool)

(declare-fun e!494828 () Bool)

(assert (=> b!768894 (= e!494829 e!494828)))

(declare-fun res!337508 () Bool)

(assert (=> b!768894 (=> (not res!337508) (not e!494828))))

(assert (=> b!768894 (= res!337508 (ruleValid!498 thiss!15653 (h!13893 rulesArg!343)))))

(declare-fun b!768895 () Bool)

(assert (=> b!768895 (= e!494828 (rulesValidInductive!572 thiss!15653 (t!91788 rulesArg!343)))))

(assert (= (and d!251440 (not res!337507)) b!768894))

(assert (= (and b!768894 res!337508) b!768895))

(declare-fun m!1038413 () Bool)

(assert (=> d!251440 m!1038413))

(assert (=> b!768894 m!1038333))

(declare-fun m!1038415 () Bool)

(assert (=> b!768895 m!1038415))

(assert (=> b!768836 d!251440))

(declare-fun b!768906 () Bool)

(declare-fun e!494836 () Bool)

(declare-fun e!494837 () Bool)

(assert (=> b!768906 (= e!494836 e!494837)))

(declare-fun res!337518 () Bool)

(assert (=> b!768906 (=> (not res!337518) (not e!494837))))

(assert (=> b!768906 (= res!337518 (not ((_ is Nil!8488) lt!313392)))))

(declare-fun b!768908 () Bool)

(declare-fun tail!974 (List!8502) List!8502)

(assert (=> b!768908 (= e!494837 (isPrefix!982 (tail!974 lt!313392) (tail!974 lt!313392)))))

(declare-fun b!768907 () Bool)

(declare-fun res!337520 () Bool)

(assert (=> b!768907 (=> (not res!337520) (not e!494837))))

(declare-fun head!1416 (List!8502) C!4548)

(assert (=> b!768907 (= res!337520 (= (head!1416 lt!313392) (head!1416 lt!313392)))))

(declare-fun d!251442 () Bool)

(declare-fun e!494838 () Bool)

(assert (=> d!251442 e!494838))

(declare-fun res!337519 () Bool)

(assert (=> d!251442 (=> res!337519 e!494838)))

(declare-fun lt!313403 () Bool)

(assert (=> d!251442 (= res!337519 (not lt!313403))))

(assert (=> d!251442 (= lt!313403 e!494836)))

(declare-fun res!337517 () Bool)

(assert (=> d!251442 (=> res!337517 e!494836)))

(assert (=> d!251442 (= res!337517 ((_ is Nil!8488) lt!313392))))

(assert (=> d!251442 (= (isPrefix!982 lt!313392 lt!313392) lt!313403)))

(declare-fun b!768909 () Bool)

(assert (=> b!768909 (= e!494838 (>= (size!6917 lt!313392) (size!6917 lt!313392)))))

(assert (= (and d!251442 (not res!337517)) b!768906))

(assert (= (and b!768906 res!337518) b!768907))

(assert (= (and b!768907 res!337520) b!768908))

(assert (= (and d!251442 (not res!337519)) b!768909))

(declare-fun m!1038417 () Bool)

(assert (=> b!768908 m!1038417))

(assert (=> b!768908 m!1038417))

(assert (=> b!768908 m!1038417))

(assert (=> b!768908 m!1038417))

(declare-fun m!1038419 () Bool)

(assert (=> b!768908 m!1038419))

(declare-fun m!1038421 () Bool)

(assert (=> b!768907 m!1038421))

(assert (=> b!768907 m!1038421))

(assert (=> b!768909 m!1038399))

(assert (=> b!768909 m!1038399))

(assert (=> b!768845 d!251442))

(declare-fun d!251444 () Bool)

(assert (=> d!251444 (isPrefix!982 lt!313392 lt!313392)))

(declare-fun lt!313406 () Unit!13082)

(declare-fun choose!4873 (List!8502 List!8502) Unit!13082)

(assert (=> d!251444 (= lt!313406 (choose!4873 lt!313392 lt!313392))))

(assert (=> d!251444 (= (lemmaIsPrefixRefl!693 lt!313392 lt!313392) lt!313406)))

(declare-fun bs!165915 () Bool)

(assert (= bs!165915 d!251444))

(assert (=> bs!165915 m!1038329))

(declare-fun m!1038423 () Bool)

(assert (=> bs!165915 m!1038423))

(assert (=> b!768845 d!251444))

(declare-fun d!251446 () Bool)

(assert (=> d!251446 (= (isEmpty!5202 rulesArg!343) ((_ is Nil!8492) rulesArg!343))))

(assert (=> b!768843 d!251446))

(declare-fun d!251448 () Bool)

(declare-fun c!130221 () Bool)

(assert (=> d!251448 (= c!130221 ((_ is Node!2871) (c!130217 (totalInput!2106 cacheFindLongestMatch!134))))))

(declare-fun e!494839 () Bool)

(assert (=> d!251448 (= (inv!10804 (c!130217 (totalInput!2106 cacheFindLongestMatch!134))) e!494839)))

(declare-fun b!768910 () Bool)

(assert (=> b!768910 (= e!494839 (inv!10810 (c!130217 (totalInput!2106 cacheFindLongestMatch!134))))))

(declare-fun b!768911 () Bool)

(declare-fun e!494840 () Bool)

(assert (=> b!768911 (= e!494839 e!494840)))

(declare-fun res!337521 () Bool)

(assert (=> b!768911 (= res!337521 (not ((_ is Leaf!4211) (c!130217 (totalInput!2106 cacheFindLongestMatch!134)))))))

(assert (=> b!768911 (=> res!337521 e!494840)))

(declare-fun b!768912 () Bool)

(assert (=> b!768912 (= e!494840 (inv!10811 (c!130217 (totalInput!2106 cacheFindLongestMatch!134))))))

(assert (= (and d!251448 c!130221) b!768910))

(assert (= (and d!251448 (not c!130221)) b!768911))

(assert (= (and b!768911 (not res!337521)) b!768912))

(declare-fun m!1038425 () Bool)

(assert (=> b!768910 m!1038425))

(declare-fun m!1038427 () Bool)

(assert (=> b!768912 m!1038427))

(assert (=> b!768844 d!251448))

(declare-fun d!251450 () Bool)

(assert (=> d!251450 (= (valid!931 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!45 (cache!1499 cacheFindLongestMatch!134) (totalInput!2106 cacheFindLongestMatch!134)))))

(declare-fun bs!165916 () Bool)

(assert (= bs!165916 d!251450))

(assert (=> bs!165916 m!1038391))

(assert (=> b!768861 d!251450))

(declare-fun d!251452 () Bool)

(assert (=> d!251452 (= (array_inv!1307 (_keys!1433 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) (bvsge (size!6914 (_keys!1433 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!768862 d!251452))

(declare-fun d!251454 () Bool)

(assert (=> d!251454 (= (array_inv!1310 (_values!1418 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) (bvsge (size!6913 (_values!1418 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!768862 d!251454))

(declare-fun d!251456 () Bool)

(assert (=> d!251456 (= (inv!10803 (tag!1885 (h!13893 rulesArg!343))) (= (mod (str.len (value!51933 (tag!1885 (h!13893 rulesArg!343)))) 2) 0))))

(assert (=> b!768853 d!251456))

(declare-fun d!251458 () Bool)

(declare-fun res!337524 () Bool)

(declare-fun e!494843 () Bool)

(assert (=> d!251458 (=> (not res!337524) (not e!494843))))

(declare-fun semiInverseModEq!609 (Int Int) Bool)

(assert (=> d!251458 (= res!337524 (semiInverseModEq!609 (toChars!2474 (transformation!1623 (h!13893 rulesArg!343))) (toValue!2615 (transformation!1623 (h!13893 rulesArg!343)))))))

(assert (=> d!251458 (= (inv!10809 (transformation!1623 (h!13893 rulesArg!343))) e!494843)))

(declare-fun b!768915 () Bool)

(declare-fun equivClasses!584 (Int Int) Bool)

(assert (=> b!768915 (= e!494843 (equivClasses!584 (toChars!2474 (transformation!1623 (h!13893 rulesArg!343))) (toValue!2615 (transformation!1623 (h!13893 rulesArg!343)))))))

(assert (= (and d!251458 res!337524) b!768915))

(declare-fun m!1038429 () Bool)

(assert (=> d!251458 m!1038429))

(declare-fun m!1038431 () Bool)

(assert (=> b!768915 m!1038431))

(assert (=> b!768853 d!251458))

(declare-fun d!251460 () Bool)

(declare-fun c!130222 () Bool)

(assert (=> d!251460 (= c!130222 ((_ is Node!2871) (c!130217 totalInput!472)))))

(declare-fun e!494844 () Bool)

(assert (=> d!251460 (= (inv!10804 (c!130217 totalInput!472)) e!494844)))

(declare-fun b!768916 () Bool)

(assert (=> b!768916 (= e!494844 (inv!10810 (c!130217 totalInput!472)))))

(declare-fun b!768917 () Bool)

(declare-fun e!494845 () Bool)

(assert (=> b!768917 (= e!494844 e!494845)))

(declare-fun res!337525 () Bool)

(assert (=> b!768917 (= res!337525 (not ((_ is Leaf!4211) (c!130217 totalInput!472))))))

(assert (=> b!768917 (=> res!337525 e!494845)))

(declare-fun b!768918 () Bool)

(assert (=> b!768918 (= e!494845 (inv!10811 (c!130217 totalInput!472)))))

(assert (= (and d!251460 c!130222) b!768916))

(assert (= (and d!251460 (not c!130222)) b!768917))

(assert (= (and b!768917 (not res!337525)) b!768918))

(declare-fun m!1038433 () Bool)

(assert (=> b!768916 m!1038433))

(declare-fun m!1038435 () Bool)

(assert (=> b!768918 m!1038435))

(assert (=> b!768860 d!251460))

(declare-fun d!251462 () Bool)

(assert (=> d!251462 (= (valid!930 cacheDown!666) (validCacheMapDown!99 (cache!1498 cacheDown!666)))))

(declare-fun bs!165917 () Bool)

(assert (= bs!165917 d!251462))

(assert (=> bs!165917 m!1038385))

(assert (=> b!768851 d!251462))

(declare-fun b!768929 () Bool)

(declare-fun b_free!24141 () Bool)

(declare-fun b_next!24205 () Bool)

(assert (=> b!768929 (= b_free!24141 (not b_next!24205))))

(declare-fun tp!250628 () Bool)

(declare-fun b_and!71621 () Bool)

(assert (=> b!768929 (= tp!250628 b_and!71621)))

(declare-fun b_free!24143 () Bool)

(declare-fun b_next!24207 () Bool)

(assert (=> b!768929 (= b_free!24143 (not b_next!24207))))

(declare-fun tp!250629 () Bool)

(declare-fun b_and!71623 () Bool)

(assert (=> b!768929 (= tp!250629 b_and!71623)))

(declare-fun e!494857 () Bool)

(assert (=> b!768929 (= e!494857 (and tp!250628 tp!250629))))

(declare-fun e!494855 () Bool)

(declare-fun b!768928 () Bool)

(declare-fun tp!250630 () Bool)

(assert (=> b!768928 (= e!494855 (and tp!250630 (inv!10803 (tag!1885 (h!13893 (t!91788 rulesArg!343)))) (inv!10809 (transformation!1623 (h!13893 (t!91788 rulesArg!343)))) e!494857))))

(declare-fun b!768927 () Bool)

(declare-fun e!494856 () Bool)

(declare-fun tp!250627 () Bool)

(assert (=> b!768927 (= e!494856 (and e!494855 tp!250627))))

(assert (=> b!768841 (= tp!250610 e!494856)))

(assert (= b!768928 b!768929))

(assert (= b!768927 b!768928))

(assert (= (and b!768841 ((_ is Cons!8492) (t!91788 rulesArg!343))) b!768927))

(declare-fun m!1038437 () Bool)

(assert (=> b!768928 m!1038437))

(declare-fun m!1038439 () Bool)

(assert (=> b!768928 m!1038439))

(declare-fun setIsEmpty!6903 () Bool)

(declare-fun setRes!6903 () Bool)

(assert (=> setIsEmpty!6903 setRes!6903))

(declare-fun setNonEmpty!6903 () Bool)

(declare-fun tp!250639 () Bool)

(declare-fun setElem!6903 () Context!750)

(declare-fun e!494863 () Bool)

(declare-fun inv!10812 (Context!750) Bool)

(assert (=> setNonEmpty!6903 (= setRes!6903 (and tp!250639 (inv!10812 setElem!6903) e!494863))))

(declare-fun setRest!6903 () (InoxSet Context!750))

(assert (=> setNonEmpty!6903 (= (_1!5679 (_1!5680 (h!13890 (zeroValue!1397 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6903 true) setRest!6903))))

(declare-fun b!768936 () Bool)

(declare-fun e!494862 () Bool)

(declare-fun tp!250637 () Bool)

(assert (=> b!768936 (= e!494862 (and setRes!6903 tp!250637))))

(declare-fun condSetEmpty!6903 () Bool)

(assert (=> b!768936 (= condSetEmpty!6903 (= (_1!5679 (_1!5680 (h!13890 (zeroValue!1397 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))))) ((as const (Array Context!750 Bool)) false)))))

(assert (=> b!768831 (= tp!250618 e!494862)))

(declare-fun b!768937 () Bool)

(declare-fun tp!250638 () Bool)

(assert (=> b!768937 (= e!494863 tp!250638)))

(assert (= (and b!768936 condSetEmpty!6903) setIsEmpty!6903))

(assert (= (and b!768936 (not condSetEmpty!6903)) setNonEmpty!6903))

(assert (= setNonEmpty!6903 b!768937))

(assert (= (and b!768831 ((_ is Cons!8489) (zeroValue!1397 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134)))))))) b!768936))

(declare-fun m!1038441 () Bool)

(assert (=> setNonEmpty!6903 m!1038441))

(declare-fun setIsEmpty!6904 () Bool)

(declare-fun setRes!6904 () Bool)

(assert (=> setIsEmpty!6904 setRes!6904))

(declare-fun setElem!6904 () Context!750)

(declare-fun e!494865 () Bool)

(declare-fun setNonEmpty!6904 () Bool)

(declare-fun tp!250642 () Bool)

(assert (=> setNonEmpty!6904 (= setRes!6904 (and tp!250642 (inv!10812 setElem!6904) e!494865))))

(declare-fun setRest!6904 () (InoxSet Context!750))

(assert (=> setNonEmpty!6904 (= (_1!5679 (_1!5680 (h!13890 (minValue!1397 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6904 true) setRest!6904))))

(declare-fun b!768938 () Bool)

(declare-fun e!494864 () Bool)

(declare-fun tp!250640 () Bool)

(assert (=> b!768938 (= e!494864 (and setRes!6904 tp!250640))))

(declare-fun condSetEmpty!6904 () Bool)

(assert (=> b!768938 (= condSetEmpty!6904 (= (_1!5679 (_1!5680 (h!13890 (minValue!1397 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134))))))))) ((as const (Array Context!750 Bool)) false)))))

(assert (=> b!768831 (= tp!250615 e!494864)))

(declare-fun b!768939 () Bool)

(declare-fun tp!250641 () Bool)

(assert (=> b!768939 (= e!494865 tp!250641)))

(assert (= (and b!768938 condSetEmpty!6904) setIsEmpty!6904))

(assert (= (and b!768938 (not condSetEmpty!6904)) setNonEmpty!6904))

(assert (= setNonEmpty!6904 b!768939))

(assert (= (and b!768831 ((_ is Cons!8489) (minValue!1397 (v!18629 (underlying!2463 (v!18630 (underlying!2464 (cache!1499 cacheFindLongestMatch!134)))))))) b!768938))

(declare-fun m!1038443 () Bool)

(assert (=> setNonEmpty!6904 m!1038443))

(declare-fun setIsEmpty!6905 () Bool)

(declare-fun setRes!6905 () Bool)

(assert (=> setIsEmpty!6905 setRes!6905))

(declare-fun e!494867 () Bool)

(declare-fun tp!250645 () Bool)

(declare-fun setNonEmpty!6905 () Bool)

(declare-fun setElem!6905 () Context!750)

(assert (=> setNonEmpty!6905 (= setRes!6905 (and tp!250645 (inv!10812 setElem!6905) e!494867))))

(declare-fun setRest!6905 () (InoxSet Context!750))

(assert (=> setNonEmpty!6905 (= (_1!5679 (_1!5680 (h!13890 mapDefault!5618))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6905 true) setRest!6905))))

(declare-fun b!768940 () Bool)

(declare-fun e!494866 () Bool)

(declare-fun tp!250643 () Bool)

(assert (=> b!768940 (= e!494866 (and setRes!6905 tp!250643))))

(declare-fun condSetEmpty!6905 () Bool)

(assert (=> b!768940 (= condSetEmpty!6905 (= (_1!5679 (_1!5680 (h!13890 mapDefault!5618))) ((as const (Array Context!750 Bool)) false)))))

(assert (=> b!768830 (= tp!250608 e!494866)))

(declare-fun b!768941 () Bool)

(declare-fun tp!250644 () Bool)

(assert (=> b!768941 (= e!494867 tp!250644)))

(assert (= (and b!768940 condSetEmpty!6905) setIsEmpty!6905))

(assert (= (and b!768940 (not condSetEmpty!6905)) setNonEmpty!6905))

(assert (= setNonEmpty!6905 b!768941))

(assert (= (and b!768830 ((_ is Cons!8489) mapDefault!5618)) b!768940))

(declare-fun m!1038445 () Bool)

(assert (=> setNonEmpty!6905 m!1038445))

(declare-fun e!494874 () Bool)

(assert (=> b!768857 (= tp!250613 e!494874)))

(declare-fun b!768950 () Bool)

(declare-fun e!494875 () Bool)

(declare-fun tp!250657 () Bool)

(assert (=> b!768950 (= e!494875 tp!250657)))

(declare-fun setRes!6908 () Bool)

(declare-fun tp!250654 () Bool)

(declare-fun tp_is_empty!3723 () Bool)

(declare-fun b!768951 () Bool)

(assert (=> b!768951 (= e!494874 (and (inv!10812 (_1!5681 (_1!5682 (h!13891 (zeroValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))))) e!494875 tp_is_empty!3723 setRes!6908 tp!250654))))

(declare-fun condSetEmpty!6908 () Bool)

(assert (=> b!768951 (= condSetEmpty!6908 (= (_2!5682 (h!13891 (zeroValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))) ((as const (Array Context!750 Bool)) false)))))

(declare-fun setIsEmpty!6908 () Bool)

(assert (=> setIsEmpty!6908 setRes!6908))

(declare-fun b!768952 () Bool)

(declare-fun e!494876 () Bool)

(declare-fun tp!250656 () Bool)

(assert (=> b!768952 (= e!494876 tp!250656)))

(declare-fun setNonEmpty!6908 () Bool)

(declare-fun setElem!6908 () Context!750)

(declare-fun tp!250655 () Bool)

(assert (=> setNonEmpty!6908 (= setRes!6908 (and tp!250655 (inv!10812 setElem!6908) e!494876))))

(declare-fun setRest!6908 () (InoxSet Context!750))

(assert (=> setNonEmpty!6908 (= (_2!5682 (h!13891 (zeroValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6908 true) setRest!6908))))

(assert (= b!768951 b!768950))

(assert (= (and b!768951 condSetEmpty!6908) setIsEmpty!6908))

(assert (= (and b!768951 (not condSetEmpty!6908)) setNonEmpty!6908))

(assert (= setNonEmpty!6908 b!768952))

(assert (= (and b!768857 ((_ is Cons!8490) (zeroValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))) b!768951))

(declare-fun m!1038447 () Bool)

(assert (=> b!768951 m!1038447))

(declare-fun m!1038449 () Bool)

(assert (=> setNonEmpty!6908 m!1038449))

(declare-fun e!494877 () Bool)

(assert (=> b!768857 (= tp!250599 e!494877)))

(declare-fun b!768953 () Bool)

(declare-fun e!494878 () Bool)

(declare-fun tp!250661 () Bool)

(assert (=> b!768953 (= e!494878 tp!250661)))

(declare-fun tp!250658 () Bool)

(declare-fun b!768954 () Bool)

(declare-fun setRes!6909 () Bool)

(assert (=> b!768954 (= e!494877 (and (inv!10812 (_1!5681 (_1!5682 (h!13891 (minValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))))) e!494878 tp_is_empty!3723 setRes!6909 tp!250658))))

(declare-fun condSetEmpty!6909 () Bool)

(assert (=> b!768954 (= condSetEmpty!6909 (= (_2!5682 (h!13891 (minValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))) ((as const (Array Context!750 Bool)) false)))))

(declare-fun setIsEmpty!6909 () Bool)

(assert (=> setIsEmpty!6909 setRes!6909))

(declare-fun b!768955 () Bool)

(declare-fun e!494879 () Bool)

(declare-fun tp!250660 () Bool)

(assert (=> b!768955 (= e!494879 tp!250660)))

(declare-fun setElem!6909 () Context!750)

(declare-fun setNonEmpty!6909 () Bool)

(declare-fun tp!250659 () Bool)

(assert (=> setNonEmpty!6909 (= setRes!6909 (and tp!250659 (inv!10812 setElem!6909) e!494879))))

(declare-fun setRest!6909 () (InoxSet Context!750))

(assert (=> setNonEmpty!6909 (= (_2!5682 (h!13891 (minValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6909 true) setRest!6909))))

(assert (= b!768954 b!768953))

(assert (= (and b!768954 condSetEmpty!6909) setIsEmpty!6909))

(assert (= (and b!768954 (not condSetEmpty!6909)) setNonEmpty!6909))

(assert (= setNonEmpty!6909 b!768955))

(assert (= (and b!768857 ((_ is Cons!8490) (minValue!1398 (v!18631 (underlying!2465 (v!18632 (underlying!2466 (cache!1500 cacheUp!653)))))))) b!768954))

(declare-fun m!1038451 () Bool)

(assert (=> b!768954 m!1038451))

(declare-fun m!1038453 () Bool)

(assert (=> setNonEmpty!6909 m!1038453))

(declare-fun condMapEmpty!5623 () Bool)

(declare-fun mapDefault!5623 () List!8504)

(assert (=> mapNonEmpty!5618 (= condMapEmpty!5623 (= mapRest!5620 ((as const (Array (_ BitVec 32) List!8504)) mapDefault!5623)))))

(declare-fun e!494892 () Bool)

(declare-fun mapRes!5623 () Bool)

(assert (=> mapNonEmpty!5618 (= tp!250604 (and e!494892 mapRes!5623))))

(declare-fun b!768970 () Bool)

(declare-fun e!494895 () Bool)

(declare-fun tp!250685 () Bool)

(assert (=> b!768970 (= e!494895 tp!250685)))

(declare-fun b!768971 () Bool)

(declare-fun setRes!6914 () Bool)

(declare-fun tp!250688 () Bool)

(declare-fun e!494897 () Bool)

(assert (=> b!768971 (= e!494892 (and (inv!10812 (_1!5681 (_1!5682 (h!13891 mapDefault!5623)))) e!494897 tp_is_empty!3723 setRes!6914 tp!250688))))

(declare-fun condSetEmpty!6914 () Bool)

(assert (=> b!768971 (= condSetEmpty!6914 (= (_2!5682 (h!13891 mapDefault!5623)) ((as const (Array Context!750 Bool)) false)))))

(declare-fun b!768972 () Bool)

(declare-fun e!494893 () Bool)

(declare-fun tp!250686 () Bool)

(assert (=> b!768972 (= e!494893 tp!250686)))

(declare-fun b!768973 () Bool)

(declare-fun e!494894 () Bool)

(declare-fun tp!250687 () Bool)

(assert (=> b!768973 (= e!494894 tp!250687)))

(declare-fun mapIsEmpty!5623 () Bool)

(assert (=> mapIsEmpty!5623 mapRes!5623))

(declare-fun mapNonEmpty!5623 () Bool)

(declare-fun tp!250684 () Bool)

(declare-fun e!494896 () Bool)

(assert (=> mapNonEmpty!5623 (= mapRes!5623 (and tp!250684 e!494896))))

(declare-fun mapKey!5623 () (_ BitVec 32))

(declare-fun mapRest!5623 () (Array (_ BitVec 32) List!8504))

(declare-fun mapValue!5623 () List!8504)

(assert (=> mapNonEmpty!5623 (= mapRest!5620 (store mapRest!5623 mapKey!5623 mapValue!5623))))

(declare-fun setIsEmpty!6914 () Bool)

(assert (=> setIsEmpty!6914 setRes!6914))

(declare-fun setRes!6915 () Bool)

(declare-fun setNonEmpty!6914 () Bool)

(declare-fun tp!250681 () Bool)

(declare-fun setElem!6914 () Context!750)

(assert (=> setNonEmpty!6914 (= setRes!6915 (and tp!250681 (inv!10812 setElem!6914) e!494893))))

(declare-fun setRest!6914 () (InoxSet Context!750))

(assert (=> setNonEmpty!6914 (= (_2!5682 (h!13891 mapValue!5623)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6914 true) setRest!6914))))

(declare-fun setIsEmpty!6915 () Bool)

(assert (=> setIsEmpty!6915 setRes!6915))

(declare-fun setElem!6915 () Context!750)

(declare-fun setNonEmpty!6915 () Bool)

(declare-fun tp!250683 () Bool)

(assert (=> setNonEmpty!6915 (= setRes!6914 (and tp!250683 (inv!10812 setElem!6915) e!494895))))

(declare-fun setRest!6915 () (InoxSet Context!750))

(assert (=> setNonEmpty!6915 (= (_2!5682 (h!13891 mapDefault!5623)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6915 true) setRest!6915))))

(declare-fun b!768974 () Bool)

(declare-fun tp!250682 () Bool)

(assert (=> b!768974 (= e!494896 (and (inv!10812 (_1!5681 (_1!5682 (h!13891 mapValue!5623)))) e!494894 tp_is_empty!3723 setRes!6915 tp!250682))))

(declare-fun condSetEmpty!6915 () Bool)

(assert (=> b!768974 (= condSetEmpty!6915 (= (_2!5682 (h!13891 mapValue!5623)) ((as const (Array Context!750 Bool)) false)))))

(declare-fun b!768975 () Bool)

(declare-fun tp!250680 () Bool)

(assert (=> b!768975 (= e!494897 tp!250680)))

(assert (= (and mapNonEmpty!5618 condMapEmpty!5623) mapIsEmpty!5623))

(assert (= (and mapNonEmpty!5618 (not condMapEmpty!5623)) mapNonEmpty!5623))

(assert (= b!768974 b!768973))

(assert (= (and b!768974 condSetEmpty!6915) setIsEmpty!6915))

(assert (= (and b!768974 (not condSetEmpty!6915)) setNonEmpty!6914))

(assert (= setNonEmpty!6914 b!768972))

(assert (= (and mapNonEmpty!5623 ((_ is Cons!8490) mapValue!5623)) b!768974))

(assert (= b!768971 b!768975))

(assert (= (and b!768971 condSetEmpty!6914) setIsEmpty!6914))

(assert (= (and b!768971 (not condSetEmpty!6914)) setNonEmpty!6915))

(assert (= setNonEmpty!6915 b!768970))

(assert (= (and mapNonEmpty!5618 ((_ is Cons!8490) mapDefault!5623)) b!768971))

(declare-fun m!1038455 () Bool)

(assert (=> b!768971 m!1038455))

(declare-fun m!1038457 () Bool)

(assert (=> setNonEmpty!6915 m!1038457))

(declare-fun m!1038459 () Bool)

(assert (=> mapNonEmpty!5623 m!1038459))

(declare-fun m!1038461 () Bool)

(assert (=> b!768974 m!1038461))

(declare-fun m!1038463 () Bool)

(assert (=> setNonEmpty!6914 m!1038463))

(declare-fun e!494898 () Bool)

(assert (=> mapNonEmpty!5618 (= tp!250603 e!494898)))

(declare-fun b!768976 () Bool)

(declare-fun e!494899 () Bool)

(declare-fun tp!250692 () Bool)

(assert (=> b!768976 (= e!494899 tp!250692)))

(declare-fun tp!250689 () Bool)

(declare-fun setRes!6916 () Bool)

(declare-fun b!768977 () Bool)

(assert (=> b!768977 (= e!494898 (and (inv!10812 (_1!5681 (_1!5682 (h!13891 mapValue!5619)))) e!494899 tp_is_empty!3723 setRes!6916 tp!250689))))

(declare-fun condSetEmpty!6916 () Bool)

(assert (=> b!768977 (= condSetEmpty!6916 (= (_2!5682 (h!13891 mapValue!5619)) ((as const (Array Context!750 Bool)) false)))))

(declare-fun setIsEmpty!6916 () Bool)

(assert (=> setIsEmpty!6916 setRes!6916))

(declare-fun b!768978 () Bool)

(declare-fun e!494900 () Bool)

(declare-fun tp!250691 () Bool)

(assert (=> b!768978 (= e!494900 tp!250691)))

(declare-fun setElem!6916 () Context!750)

(declare-fun tp!250690 () Bool)

(declare-fun setNonEmpty!6916 () Bool)

(assert (=> setNonEmpty!6916 (= setRes!6916 (and tp!250690 (inv!10812 setElem!6916) e!494900))))

(declare-fun setRest!6916 () (InoxSet Context!750))

(assert (=> setNonEmpty!6916 (= (_2!5682 (h!13891 mapValue!5619)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6916 true) setRest!6916))))

(assert (= b!768977 b!768976))

(assert (= (and b!768977 condSetEmpty!6916) setIsEmpty!6916))

(assert (= (and b!768977 (not condSetEmpty!6916)) setNonEmpty!6916))

(assert (= setNonEmpty!6916 b!768978))

(assert (= (and mapNonEmpty!5618 ((_ is Cons!8490) mapValue!5619)) b!768977))

(declare-fun m!1038465 () Bool)

(assert (=> b!768977 m!1038465))

(declare-fun m!1038467 () Bool)

(assert (=> setNonEmpty!6916 m!1038467))

(declare-fun e!494918 () Bool)

(declare-fun tp!250723 () Bool)

(declare-fun setElem!6921 () Context!750)

(declare-fun setNonEmpty!6921 () Bool)

(declare-fun setRes!6921 () Bool)

(assert (=> setNonEmpty!6921 (= setRes!6921 (and tp!250723 (inv!10812 setElem!6921) e!494918))))

(declare-fun mapDefault!5626 () List!8501)

(declare-fun setRest!6922 () (InoxSet Context!750))

(assert (=> setNonEmpty!6921 (= (_2!5678 (h!13888 mapDefault!5626)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6921 true) setRest!6922))))

(declare-fun b!768993 () Bool)

(declare-fun e!494917 () Bool)

(declare-fun tp!250722 () Bool)

(assert (=> b!768993 (= e!494917 tp!250722)))

(declare-fun mapIsEmpty!5626 () Bool)

(declare-fun mapRes!5626 () Bool)

(assert (=> mapIsEmpty!5626 mapRes!5626))

(declare-fun setIsEmpty!6921 () Bool)

(assert (=> setIsEmpty!6921 setRes!6921))

(declare-fun mapNonEmpty!5626 () Bool)

(declare-fun tp!250717 () Bool)

(declare-fun e!494916 () Bool)

(assert (=> mapNonEmpty!5626 (= mapRes!5626 (and tp!250717 e!494916))))

(declare-fun mapKey!5626 () (_ BitVec 32))

(declare-fun mapValue!5626 () List!8501)

(declare-fun mapRest!5626 () (Array (_ BitVec 32) List!8501))

(assert (=> mapNonEmpty!5626 (= mapRest!5619 (store mapRest!5626 mapKey!5626 mapValue!5626))))

(declare-fun b!768994 () Bool)

(declare-fun e!494915 () Bool)

(declare-fun tp!250720 () Bool)

(assert (=> b!768994 (= e!494915 tp!250720)))

(declare-fun setNonEmpty!6922 () Bool)

(declare-fun setElem!6922 () Context!750)

(declare-fun tp!250719 () Bool)

(declare-fun setRes!6922 () Bool)

(assert (=> setNonEmpty!6922 (= setRes!6922 (and tp!250719 (inv!10812 setElem!6922) e!494917))))

(declare-fun setRest!6921 () (InoxSet Context!750))

(assert (=> setNonEmpty!6922 (= (_2!5678 (h!13888 mapValue!5626)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6922 true) setRest!6921))))

(declare-fun b!768995 () Bool)

(declare-fun tp!250721 () Bool)

(assert (=> b!768995 (= e!494918 tp!250721)))

(declare-fun b!768996 () Bool)

(declare-fun e!494913 () Bool)

(declare-fun tp!250718 () Bool)

(assert (=> b!768996 (= e!494913 tp!250718)))

(declare-fun condMapEmpty!5626 () Bool)

(assert (=> mapNonEmpty!5620 (= condMapEmpty!5626 (= mapRest!5619 ((as const (Array (_ BitVec 32) List!8501)) mapDefault!5626)))))

(declare-fun e!494914 () Bool)

(assert (=> mapNonEmpty!5620 (= tp!250600 (and e!494914 mapRes!5626))))

(declare-fun setIsEmpty!6922 () Bool)

(assert (=> setIsEmpty!6922 setRes!6922))

(declare-fun b!768997 () Bool)

(declare-fun tp!250724 () Bool)

(declare-fun tp!250716 () Bool)

(assert (=> b!768997 (= e!494916 (and tp!250724 (inv!10812 (_2!5677 (_1!5678 (h!13888 mapValue!5626)))) e!494915 tp_is_empty!3723 setRes!6922 tp!250716))))

(declare-fun condSetEmpty!6922 () Bool)

(assert (=> b!768997 (= condSetEmpty!6922 (= (_2!5678 (h!13888 mapValue!5626)) ((as const (Array Context!750 Bool)) false)))))

(declare-fun tp!250725 () Bool)

(declare-fun tp!250715 () Bool)

(declare-fun b!768998 () Bool)

(assert (=> b!768998 (= e!494914 (and tp!250725 (inv!10812 (_2!5677 (_1!5678 (h!13888 mapDefault!5626)))) e!494913 tp_is_empty!3723 setRes!6921 tp!250715))))

(declare-fun condSetEmpty!6921 () Bool)

(assert (=> b!768998 (= condSetEmpty!6921 (= (_2!5678 (h!13888 mapDefault!5626)) ((as const (Array Context!750 Bool)) false)))))

(assert (= (and mapNonEmpty!5620 condMapEmpty!5626) mapIsEmpty!5626))

(assert (= (and mapNonEmpty!5620 (not condMapEmpty!5626)) mapNonEmpty!5626))

(assert (= b!768997 b!768994))

(assert (= (and b!768997 condSetEmpty!6922) setIsEmpty!6922))

(assert (= (and b!768997 (not condSetEmpty!6922)) setNonEmpty!6922))

(assert (= setNonEmpty!6922 b!768993))

(assert (= (and mapNonEmpty!5626 ((_ is Cons!8487) mapValue!5626)) b!768997))

(assert (= b!768998 b!768996))

(assert (= (and b!768998 condSetEmpty!6921) setIsEmpty!6921))

(assert (= (and b!768998 (not condSetEmpty!6921)) setNonEmpty!6921))

(assert (= setNonEmpty!6921 b!768995))

(assert (= (and mapNonEmpty!5620 ((_ is Cons!8487) mapDefault!5626)) b!768998))

(declare-fun m!1038469 () Bool)

(assert (=> mapNonEmpty!5626 m!1038469))

(declare-fun m!1038471 () Bool)

(assert (=> setNonEmpty!6921 m!1038471))

(declare-fun m!1038473 () Bool)

(assert (=> b!768997 m!1038473))

(declare-fun m!1038475 () Bool)

(assert (=> b!768998 m!1038475))

(declare-fun m!1038477 () Bool)

(assert (=> setNonEmpty!6922 m!1038477))

(declare-fun e!494925 () Bool)

(declare-fun e!494926 () Bool)

(declare-fun tp!250740 () Bool)

(declare-fun tp!250738 () Bool)

(declare-fun setRes!6925 () Bool)

(declare-fun b!769007 () Bool)

(assert (=> b!769007 (= e!494926 (and tp!250738 (inv!10812 (_2!5677 (_1!5678 (h!13888 mapValue!5618)))) e!494925 tp_is_empty!3723 setRes!6925 tp!250740))))

(declare-fun condSetEmpty!6925 () Bool)

(assert (=> b!769007 (= condSetEmpty!6925 (= (_2!5678 (h!13888 mapValue!5618)) ((as const (Array Context!750 Bool)) false)))))

(declare-fun b!769008 () Bool)

(declare-fun e!494927 () Bool)

(declare-fun tp!250739 () Bool)

(assert (=> b!769008 (= e!494927 tp!250739)))

(declare-fun setIsEmpty!6925 () Bool)

(assert (=> setIsEmpty!6925 setRes!6925))

(declare-fun setElem!6925 () Context!750)

(declare-fun tp!250736 () Bool)

(declare-fun setNonEmpty!6925 () Bool)

(assert (=> setNonEmpty!6925 (= setRes!6925 (and tp!250736 (inv!10812 setElem!6925) e!494927))))

(declare-fun setRest!6925 () (InoxSet Context!750))

(assert (=> setNonEmpty!6925 (= (_2!5678 (h!13888 mapValue!5618)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6925 true) setRest!6925))))

(declare-fun b!769009 () Bool)

(declare-fun tp!250737 () Bool)

(assert (=> b!769009 (= e!494925 tp!250737)))

(assert (=> mapNonEmpty!5620 (= tp!250612 e!494926)))

(assert (= b!769007 b!769009))

(assert (= (and b!769007 condSetEmpty!6925) setIsEmpty!6925))

(assert (= (and b!769007 (not condSetEmpty!6925)) setNonEmpty!6925))

(assert (= setNonEmpty!6925 b!769008))

(assert (= (and mapNonEmpty!5620 ((_ is Cons!8487) mapValue!5618)) b!769007))

(declare-fun m!1038479 () Bool)

(assert (=> b!769007 m!1038479))

(declare-fun m!1038481 () Bool)

(assert (=> setNonEmpty!6925 m!1038481))

(declare-fun tp!250749 () Bool)

(declare-fun e!494932 () Bool)

(declare-fun b!769018 () Bool)

(declare-fun tp!250748 () Bool)

(assert (=> b!769018 (= e!494932 (and (inv!10804 (left!6364 (c!130217 input!1432))) tp!250748 (inv!10804 (right!6694 (c!130217 input!1432))) tp!250749))))

(declare-fun b!769020 () Bool)

(declare-fun e!494933 () Bool)

(declare-fun tp!250747 () Bool)

(assert (=> b!769020 (= e!494933 tp!250747)))

(declare-fun b!769019 () Bool)

(declare-fun inv!10813 (IArray!5743) Bool)

(assert (=> b!769019 (= e!494932 (and (inv!10813 (xs!5558 (c!130217 input!1432))) e!494933))))

(assert (=> b!768829 (= tp!250596 (and (inv!10804 (c!130217 input!1432)) e!494932))))

(assert (= (and b!768829 ((_ is Node!2871) (c!130217 input!1432))) b!769018))

(assert (= b!769019 b!769020))

(assert (= (and b!768829 ((_ is Leaf!4211) (c!130217 input!1432))) b!769019))

(declare-fun m!1038483 () Bool)

(assert (=> b!769018 m!1038483))

(declare-fun m!1038485 () Bool)

(assert (=> b!769018 m!1038485))

(declare-fun m!1038487 () Bool)

(assert (=> b!769019 m!1038487))

(assert (=> b!768829 m!1038363))

(declare-fun b!769021 () Bool)

(declare-fun tp!250754 () Bool)

(declare-fun tp!250752 () Bool)

(declare-fun setRes!6926 () Bool)

(declare-fun e!494934 () Bool)

(declare-fun e!494935 () Bool)

(assert (=> b!769021 (= e!494935 (and tp!250752 (inv!10812 (_2!5677 (_1!5678 (h!13888 mapDefault!5620)))) e!494934 tp_is_empty!3723 setRes!6926 tp!250754))))

(declare-fun condSetEmpty!6926 () Bool)

(assert (=> b!769021 (= condSetEmpty!6926 (= (_2!5678 (h!13888 mapDefault!5620)) ((as const (Array Context!750 Bool)) false)))))

(declare-fun b!769022 () Bool)

(declare-fun e!494936 () Bool)

(declare-fun tp!250753 () Bool)

(assert (=> b!769022 (= e!494936 tp!250753)))

(declare-fun setIsEmpty!6926 () Bool)

(assert (=> setIsEmpty!6926 setRes!6926))

(declare-fun tp!250750 () Bool)

(declare-fun setNonEmpty!6926 () Bool)

(declare-fun setElem!6926 () Context!750)

(assert (=> setNonEmpty!6926 (= setRes!6926 (and tp!250750 (inv!10812 setElem!6926) e!494936))))

(declare-fun setRest!6926 () (InoxSet Context!750))

(assert (=> setNonEmpty!6926 (= (_2!5678 (h!13888 mapDefault!5620)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6926 true) setRest!6926))))

(declare-fun b!769023 () Bool)

(declare-fun tp!250751 () Bool)

(assert (=> b!769023 (= e!494934 tp!250751)))

(assert (=> b!768827 (= tp!250617 e!494935)))

(assert (= b!769021 b!769023))

(assert (= (and b!769021 condSetEmpty!6926) setIsEmpty!6926))

(assert (= (and b!769021 (not condSetEmpty!6926)) setNonEmpty!6926))

(assert (= setNonEmpty!6926 b!769022))

(assert (= (and b!768827 ((_ is Cons!8487) mapDefault!5620)) b!769021))

(declare-fun m!1038489 () Bool)

(assert (=> b!769021 m!1038489))

(declare-fun m!1038491 () Bool)

(assert (=> setNonEmpty!6926 m!1038491))

(declare-fun tp!250756 () Bool)

(declare-fun tp!250757 () Bool)

(declare-fun b!769024 () Bool)

(declare-fun e!494937 () Bool)

(assert (=> b!769024 (= e!494937 (and (inv!10804 (left!6364 (c!130217 (totalInput!2106 cacheFindLongestMatch!134)))) tp!250756 (inv!10804 (right!6694 (c!130217 (totalInput!2106 cacheFindLongestMatch!134)))) tp!250757))))

(declare-fun b!769026 () Bool)

(declare-fun e!494938 () Bool)

(declare-fun tp!250755 () Bool)

(assert (=> b!769026 (= e!494938 tp!250755)))

(declare-fun b!769025 () Bool)

(assert (=> b!769025 (= e!494937 (and (inv!10813 (xs!5558 (c!130217 (totalInput!2106 cacheFindLongestMatch!134)))) e!494938))))

(assert (=> b!768844 (= tp!250616 (and (inv!10804 (c!130217 (totalInput!2106 cacheFindLongestMatch!134))) e!494937))))

(assert (= (and b!768844 ((_ is Node!2871) (c!130217 (totalInput!2106 cacheFindLongestMatch!134)))) b!769024))

(assert (= b!769025 b!769026))

(assert (= (and b!768844 ((_ is Leaf!4211) (c!130217 (totalInput!2106 cacheFindLongestMatch!134)))) b!769025))

(declare-fun m!1038493 () Bool)

(assert (=> b!769024 m!1038493))

(declare-fun m!1038495 () Bool)

(assert (=> b!769024 m!1038495))

(declare-fun m!1038497 () Bool)

(assert (=> b!769025 m!1038497))

(assert (=> b!768844 m!1038359))

(declare-fun setNonEmpty!6931 () Bool)

(declare-fun setElem!6932 () Context!750)

(declare-fun tp!250776 () Bool)

(declare-fun setRes!6932 () Bool)

(declare-fun e!494950 () Bool)

(assert (=> setNonEmpty!6931 (= setRes!6932 (and tp!250776 (inv!10812 setElem!6932) e!494950))))

(declare-fun mapDefault!5629 () List!8503)

(declare-fun setRest!6932 () (InoxSet Context!750))

(assert (=> setNonEmpty!6931 (= (_1!5679 (_1!5680 (h!13890 mapDefault!5629))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6932 true) setRest!6932))))

(declare-fun setIsEmpty!6931 () Bool)

(declare-fun setRes!6931 () Bool)

(assert (=> setIsEmpty!6931 setRes!6931))

(declare-fun b!769037 () Bool)

(declare-fun e!494948 () Bool)

(declare-fun tp!250773 () Bool)

(assert (=> b!769037 (= e!494948 (and setRes!6932 tp!250773))))

(declare-fun condSetEmpty!6931 () Bool)

(assert (=> b!769037 (= condSetEmpty!6931 (= (_1!5679 (_1!5680 (h!13890 mapDefault!5629))) ((as const (Array Context!750 Bool)) false)))))

(declare-fun b!769038 () Bool)

(declare-fun tp!250777 () Bool)

(assert (=> b!769038 (= e!494950 tp!250777)))

(declare-fun mapNonEmpty!5629 () Bool)

(declare-fun mapRes!5629 () Bool)

(declare-fun tp!250774 () Bool)

(declare-fun e!494949 () Bool)

(assert (=> mapNonEmpty!5629 (= mapRes!5629 (and tp!250774 e!494949))))

(declare-fun mapKey!5629 () (_ BitVec 32))

(declare-fun mapValue!5629 () List!8503)

(declare-fun mapRest!5629 () (Array (_ BitVec 32) List!8503))

(assert (=> mapNonEmpty!5629 (= mapRest!5618 (store mapRest!5629 mapKey!5629 mapValue!5629))))

(declare-fun b!769039 () Bool)

(declare-fun tp!250775 () Bool)

(assert (=> b!769039 (= e!494949 (and setRes!6931 tp!250775))))

(declare-fun condSetEmpty!6932 () Bool)

(assert (=> b!769039 (= condSetEmpty!6932 (= (_1!5679 (_1!5680 (h!13890 mapValue!5629))) ((as const (Array Context!750 Bool)) false)))))

(declare-fun condMapEmpty!5629 () Bool)

(assert (=> mapNonEmpty!5619 (= condMapEmpty!5629 (= mapRest!5618 ((as const (Array (_ BitVec 32) List!8503)) mapDefault!5629)))))

(assert (=> mapNonEmpty!5619 (= tp!250607 (and e!494948 mapRes!5629))))

(declare-fun b!769040 () Bool)

(declare-fun e!494947 () Bool)

(declare-fun tp!250772 () Bool)

(assert (=> b!769040 (= e!494947 tp!250772)))

(declare-fun tp!250778 () Bool)

(declare-fun setNonEmpty!6932 () Bool)

(declare-fun setElem!6931 () Context!750)

(assert (=> setNonEmpty!6932 (= setRes!6931 (and tp!250778 (inv!10812 setElem!6931) e!494947))))

(declare-fun setRest!6931 () (InoxSet Context!750))

(assert (=> setNonEmpty!6932 (= (_1!5679 (_1!5680 (h!13890 mapValue!5629))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6931 true) setRest!6931))))

(declare-fun mapIsEmpty!5629 () Bool)

(assert (=> mapIsEmpty!5629 mapRes!5629))

(declare-fun setIsEmpty!6932 () Bool)

(assert (=> setIsEmpty!6932 setRes!6932))

(assert (= (and mapNonEmpty!5619 condMapEmpty!5629) mapIsEmpty!5629))

(assert (= (and mapNonEmpty!5619 (not condMapEmpty!5629)) mapNonEmpty!5629))

(assert (= (and b!769039 condSetEmpty!6932) setIsEmpty!6931))

(assert (= (and b!769039 (not condSetEmpty!6932)) setNonEmpty!6932))

(assert (= setNonEmpty!6932 b!769040))

(assert (= (and mapNonEmpty!5629 ((_ is Cons!8489) mapValue!5629)) b!769039))

(assert (= (and b!769037 condSetEmpty!6931) setIsEmpty!6932))

(assert (= (and b!769037 (not condSetEmpty!6931)) setNonEmpty!6931))

(assert (= setNonEmpty!6931 b!769038))

(assert (= (and mapNonEmpty!5619 ((_ is Cons!8489) mapDefault!5629)) b!769037))

(declare-fun m!1038499 () Bool)

(assert (=> setNonEmpty!6931 m!1038499))

(declare-fun m!1038501 () Bool)

(assert (=> mapNonEmpty!5629 m!1038501))

(declare-fun m!1038503 () Bool)

(assert (=> setNonEmpty!6932 m!1038503))

(declare-fun setIsEmpty!6933 () Bool)

(declare-fun setRes!6933 () Bool)

(assert (=> setIsEmpty!6933 setRes!6933))

(declare-fun setElem!6933 () Context!750)

(declare-fun setNonEmpty!6933 () Bool)

(declare-fun tp!250781 () Bool)

(declare-fun e!494952 () Bool)

(assert (=> setNonEmpty!6933 (= setRes!6933 (and tp!250781 (inv!10812 setElem!6933) e!494952))))

(declare-fun setRest!6933 () (InoxSet Context!750))

(assert (=> setNonEmpty!6933 (= (_1!5679 (_1!5680 (h!13890 mapValue!5620))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6933 true) setRest!6933))))

(declare-fun b!769041 () Bool)

(declare-fun e!494951 () Bool)

(declare-fun tp!250779 () Bool)

(assert (=> b!769041 (= e!494951 (and setRes!6933 tp!250779))))

(declare-fun condSetEmpty!6933 () Bool)

(assert (=> b!769041 (= condSetEmpty!6933 (= (_1!5679 (_1!5680 (h!13890 mapValue!5620))) ((as const (Array Context!750 Bool)) false)))))

(assert (=> mapNonEmpty!5619 (= tp!250605 e!494951)))

(declare-fun b!769042 () Bool)

(declare-fun tp!250780 () Bool)

(assert (=> b!769042 (= e!494952 tp!250780)))

(assert (= (and b!769041 condSetEmpty!6933) setIsEmpty!6933))

(assert (= (and b!769041 (not condSetEmpty!6933)) setNonEmpty!6933))

(assert (= setNonEmpty!6933 b!769042))

(assert (= (and mapNonEmpty!5619 ((_ is Cons!8489) mapValue!5620)) b!769041))

(declare-fun m!1038505 () Bool)

(assert (=> setNonEmpty!6933 m!1038505))

(declare-fun b!769043 () Bool)

(declare-fun setRes!6934 () Bool)

(declare-fun tp!250784 () Bool)

(declare-fun e!494953 () Bool)

(declare-fun tp!250786 () Bool)

(declare-fun e!494954 () Bool)

(assert (=> b!769043 (= e!494954 (and tp!250784 (inv!10812 (_2!5677 (_1!5678 (h!13888 (zeroValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))))) e!494953 tp_is_empty!3723 setRes!6934 tp!250786))))

(declare-fun condSetEmpty!6934 () Bool)

(assert (=> b!769043 (= condSetEmpty!6934 (= (_2!5678 (h!13888 (zeroValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))) ((as const (Array Context!750 Bool)) false)))))

(declare-fun b!769044 () Bool)

(declare-fun e!494955 () Bool)

(declare-fun tp!250785 () Bool)

(assert (=> b!769044 (= e!494955 tp!250785)))

(declare-fun setIsEmpty!6934 () Bool)

(assert (=> setIsEmpty!6934 setRes!6934))

(declare-fun setElem!6934 () Context!750)

(declare-fun setNonEmpty!6934 () Bool)

(declare-fun tp!250782 () Bool)

(assert (=> setNonEmpty!6934 (= setRes!6934 (and tp!250782 (inv!10812 setElem!6934) e!494955))))

(declare-fun setRest!6934 () (InoxSet Context!750))

(assert (=> setNonEmpty!6934 (= (_2!5678 (h!13888 (zeroValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6934 true) setRest!6934))))

(declare-fun b!769045 () Bool)

(declare-fun tp!250783 () Bool)

(assert (=> b!769045 (= e!494953 tp!250783)))

(assert (=> b!768862 (= tp!250592 e!494954)))

(assert (= b!769043 b!769045))

(assert (= (and b!769043 condSetEmpty!6934) setIsEmpty!6934))

(assert (= (and b!769043 (not condSetEmpty!6934)) setNonEmpty!6934))

(assert (= setNonEmpty!6934 b!769044))

(assert (= (and b!768862 ((_ is Cons!8487) (zeroValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))) b!769043))

(declare-fun m!1038507 () Bool)

(assert (=> b!769043 m!1038507))

(declare-fun m!1038509 () Bool)

(assert (=> setNonEmpty!6934 m!1038509))

(declare-fun tp!250791 () Bool)

(declare-fun tp!250789 () Bool)

(declare-fun b!769046 () Bool)

(declare-fun setRes!6935 () Bool)

(declare-fun e!494957 () Bool)

(declare-fun e!494956 () Bool)

(assert (=> b!769046 (= e!494957 (and tp!250789 (inv!10812 (_2!5677 (_1!5678 (h!13888 (minValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))))) e!494956 tp_is_empty!3723 setRes!6935 tp!250791))))

(declare-fun condSetEmpty!6935 () Bool)

(assert (=> b!769046 (= condSetEmpty!6935 (= (_2!5678 (h!13888 (minValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))) ((as const (Array Context!750 Bool)) false)))))

(declare-fun b!769047 () Bool)

(declare-fun e!494958 () Bool)

(declare-fun tp!250790 () Bool)

(assert (=> b!769047 (= e!494958 tp!250790)))

(declare-fun setIsEmpty!6935 () Bool)

(assert (=> setIsEmpty!6935 setRes!6935))

(declare-fun setNonEmpty!6935 () Bool)

(declare-fun tp!250787 () Bool)

(declare-fun setElem!6935 () Context!750)

(assert (=> setNonEmpty!6935 (= setRes!6935 (and tp!250787 (inv!10812 setElem!6935) e!494958))))

(declare-fun setRest!6935 () (InoxSet Context!750))

(assert (=> setNonEmpty!6935 (= (_2!5678 (h!13888 (minValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6935 true) setRest!6935))))

(declare-fun b!769048 () Bool)

(declare-fun tp!250788 () Bool)

(assert (=> b!769048 (= e!494956 tp!250788)))

(assert (=> b!768862 (= tp!250602 e!494957)))

(assert (= b!769046 b!769048))

(assert (= (and b!769046 condSetEmpty!6935) setIsEmpty!6935))

(assert (= (and b!769046 (not condSetEmpty!6935)) setNonEmpty!6935))

(assert (= setNonEmpty!6935 b!769047))

(assert (= (and b!768862 ((_ is Cons!8487) (minValue!1396 (v!18627 (underlying!2461 (v!18628 (underlying!2462 (cache!1498 cacheDown!666)))))))) b!769046))

(declare-fun m!1038511 () Bool)

(assert (=> b!769046 m!1038511))

(declare-fun m!1038513 () Bool)

(assert (=> setNonEmpty!6935 m!1038513))

(declare-fun e!494961 () Bool)

(assert (=> b!768853 (= tp!250611 e!494961)))

(declare-fun b!769060 () Bool)

(declare-fun tp!250804 () Bool)

(declare-fun tp!250803 () Bool)

(assert (=> b!769060 (= e!494961 (and tp!250804 tp!250803))))

(declare-fun b!769061 () Bool)

(declare-fun tp!250802 () Bool)

(assert (=> b!769061 (= e!494961 tp!250802)))

(declare-fun b!769059 () Bool)

(assert (=> b!769059 (= e!494961 tp_is_empty!3723)))

(declare-fun b!769062 () Bool)

(declare-fun tp!250806 () Bool)

(declare-fun tp!250805 () Bool)

(assert (=> b!769062 (= e!494961 (and tp!250806 tp!250805))))

(assert (= (and b!768853 ((_ is ElementMatch!1973) (regex!1623 (h!13893 rulesArg!343)))) b!769059))

(assert (= (and b!768853 ((_ is Concat!3640) (regex!1623 (h!13893 rulesArg!343)))) b!769060))

(assert (= (and b!768853 ((_ is Star!1973) (regex!1623 (h!13893 rulesArg!343)))) b!769061))

(assert (= (and b!768853 ((_ is Union!1973) (regex!1623 (h!13893 rulesArg!343)))) b!769062))

(declare-fun tp!250809 () Bool)

(declare-fun e!494962 () Bool)

(declare-fun tp!250808 () Bool)

(declare-fun b!769063 () Bool)

(assert (=> b!769063 (= e!494962 (and (inv!10804 (left!6364 (c!130217 totalInput!472))) tp!250808 (inv!10804 (right!6694 (c!130217 totalInput!472))) tp!250809))))

(declare-fun b!769065 () Bool)

(declare-fun e!494963 () Bool)

(declare-fun tp!250807 () Bool)

(assert (=> b!769065 (= e!494963 tp!250807)))

(declare-fun b!769064 () Bool)

(assert (=> b!769064 (= e!494962 (and (inv!10813 (xs!5558 (c!130217 totalInput!472))) e!494963))))

(assert (=> b!768860 (= tp!250593 (and (inv!10804 (c!130217 totalInput!472)) e!494962))))

(assert (= (and b!768860 ((_ is Node!2871) (c!130217 totalInput!472))) b!769063))

(assert (= b!769064 b!769065))

(assert (= (and b!768860 ((_ is Leaf!4211) (c!130217 totalInput!472))) b!769064))

(declare-fun m!1038515 () Bool)

(assert (=> b!769063 m!1038515))

(declare-fun m!1038517 () Bool)

(assert (=> b!769063 m!1038517))

(declare-fun m!1038519 () Bool)

(assert (=> b!769064 m!1038519))

(assert (=> b!768860 m!1038321))

(declare-fun e!494964 () Bool)

(assert (=> b!768842 (= tp!250601 e!494964)))

(declare-fun b!769066 () Bool)

(declare-fun e!494965 () Bool)

(declare-fun tp!250813 () Bool)

(assert (=> b!769066 (= e!494965 tp!250813)))

(declare-fun b!769067 () Bool)

(declare-fun setRes!6936 () Bool)

(declare-fun tp!250810 () Bool)

(assert (=> b!769067 (= e!494964 (and (inv!10812 (_1!5681 (_1!5682 (h!13891 mapDefault!5619)))) e!494965 tp_is_empty!3723 setRes!6936 tp!250810))))

(declare-fun condSetEmpty!6936 () Bool)

(assert (=> b!769067 (= condSetEmpty!6936 (= (_2!5682 (h!13891 mapDefault!5619)) ((as const (Array Context!750 Bool)) false)))))

(declare-fun setIsEmpty!6936 () Bool)

(assert (=> setIsEmpty!6936 setRes!6936))

(declare-fun b!769068 () Bool)

(declare-fun e!494966 () Bool)

(declare-fun tp!250812 () Bool)

(assert (=> b!769068 (= e!494966 tp!250812)))

(declare-fun tp!250811 () Bool)

(declare-fun setElem!6936 () Context!750)

(declare-fun setNonEmpty!6936 () Bool)

(assert (=> setNonEmpty!6936 (= setRes!6936 (and tp!250811 (inv!10812 setElem!6936) e!494966))))

(declare-fun setRest!6936 () (InoxSet Context!750))

(assert (=> setNonEmpty!6936 (= (_2!5682 (h!13891 mapDefault!5619)) ((_ map or) (store ((as const (Array Context!750 Bool)) false) setElem!6936 true) setRest!6936))))

(assert (= b!769067 b!769066))

(assert (= (and b!769067 condSetEmpty!6936) setIsEmpty!6936))

(assert (= (and b!769067 (not condSetEmpty!6936)) setNonEmpty!6936))

(assert (= setNonEmpty!6936 b!769068))

(assert (= (and b!768842 ((_ is Cons!8490) mapDefault!5619)) b!769067))

(declare-fun m!1038521 () Bool)

(assert (=> b!769067 m!1038521))

(declare-fun m!1038523 () Bool)

(assert (=> setNonEmpty!6936 m!1038523))

(check-sat (not setNonEmpty!6905) (not b!768998) (not b!768910) b_and!71619 (not b!768894) (not b!768909) (not d!251414) (not b!768907) (not b!769067) (not mapNonEmpty!5623) (not b!769062) (not b!769025) (not d!251458) (not b!768941) (not b!768997) (not b!769047) (not d!251430) (not b!768993) (not b!768970) (not b!769043) (not setNonEmpty!6916) (not b!769064) (not b!769060) (not b!768952) (not b!769068) (not b!769065) (not setNonEmpty!6922) (not d!251450) (not b_next!24201) (not b!768868) (not b_next!24193) (not d!251462) (not b!768895) (not b!768951) (not b_next!24197) (not setNonEmpty!6915) (not b_next!24191) (not b!768976) (not setNonEmpty!6904) (not b_next!24207) (not b!769020) (not b!769026) (not b!768950) (not setNonEmpty!6903) (not b!768912) (not b!768937) (not b!769042) (not b!769021) b_and!71609 (not b!768953) (not setNonEmpty!6926) (not setNonEmpty!6936) b_and!71611 (not b!768829) (not b!769007) (not d!251408) (not b!768887) (not b!768936) (not b!768996) (not b!768916) b_and!71621 (not d!251432) (not b!768844) (not setNonEmpty!6921) (not b!768938) (not b!769008) (not b!769039) (not d!251440) (not b!769061) (not b!769023) (not setNonEmpty!6931) (not b!768975) (not b_next!24199) (not b!769018) (not d!251434) (not b!769009) (not b_next!24203) (not b!768915) (not b!768973) b_and!71617 (not b_next!24195) b_and!71613 (not b!768927) (not setNonEmpty!6932) (not b!769048) (not b!768908) (not b!769044) (not setNonEmpty!6914) (not setNonEmpty!6925) (not mapNonEmpty!5629) (not b!768974) (not b!769038) (not b!768880) (not b!769066) b_and!71615 (not b!768955) (not b!768972) (not d!251444) b_and!71607 (not b!769040) tp_is_empty!3723 (not b!768940) (not b!768876) (not setNonEmpty!6933) (not b!769024) (not d!251436) (not b!769045) (not setNonEmpty!6908) (not b!768860) (not b_next!24205) (not b!769063) (not setNonEmpty!6935) (not b!768865) (not b_next!24189) (not b!768954) (not b!769019) (not setNonEmpty!6934) (not b!769041) (not b!769022) (not b!768939) (not setNonEmpty!6909) b_and!71605 (not b!768978) (not mapNonEmpty!5626) (not b!768918) (not b!768971) (not b!768889) (not d!251424) (not b!768871) (not b!769046) (not d!251412) (not b!769037) (not b!768994) b_and!71623 (not b!768928) (not b!768995) (not b!768977))
(check-sat b_and!71619 (not b_next!24207) b_and!71609 b_and!71611 b_and!71621 (not b_next!24199) (not b_next!24203) b_and!71617 b_and!71615 b_and!71607 (not b_next!24205) (not b_next!24189) b_and!71605 b_and!71623 (not b_next!24201) (not b_next!24193) (not b_next!24197) (not b_next!24191) (not b_next!24195) b_and!71613)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!140582 () Bool)

(assert start!140582)

(declare-fun b!1504096 () Bool)

(declare-fun b_free!38947 () Bool)

(declare-fun b_next!39651 () Bool)

(assert (=> b!1504096 (= b_free!38947 (not b_next!39651))))

(declare-fun tp!428983 () Bool)

(declare-fun b_and!104635 () Bool)

(assert (=> b!1504096 (= tp!428983 b_and!104635)))

(declare-fun b_free!38949 () Bool)

(declare-fun b_next!39653 () Bool)

(assert (=> b!1504096 (= b_free!38949 (not b_next!39653))))

(declare-fun tp!428974 () Bool)

(declare-fun b_and!104637 () Bool)

(assert (=> b!1504096 (= tp!428974 b_and!104637)))

(declare-fun b!1504071 () Bool)

(declare-fun b_free!38951 () Bool)

(declare-fun b_next!39655 () Bool)

(assert (=> b!1504071 (= b_free!38951 (not b_next!39655))))

(declare-fun tp!428981 () Bool)

(declare-fun b_and!104639 () Bool)

(assert (=> b!1504071 (= tp!428981 b_and!104639)))

(declare-fun b!1504103 () Bool)

(declare-fun b_free!38953 () Bool)

(declare-fun b_next!39657 () Bool)

(assert (=> b!1504103 (= b_free!38953 (not b_next!39657))))

(declare-fun tp!428985 () Bool)

(declare-fun b_and!104641 () Bool)

(assert (=> b!1504103 (= tp!428985 b_and!104641)))

(declare-fun b!1504079 () Bool)

(declare-fun b_free!38955 () Bool)

(declare-fun b_next!39659 () Bool)

(assert (=> b!1504079 (= b_free!38955 (not b_next!39659))))

(declare-fun tp!428993 () Bool)

(declare-fun b_and!104643 () Bool)

(assert (=> b!1504079 (= tp!428993 b_and!104643)))

(declare-fun b!1504098 () Bool)

(declare-fun b_free!38957 () Bool)

(declare-fun b_next!39661 () Bool)

(assert (=> b!1504098 (= b_free!38957 (not b_next!39661))))

(declare-fun tp!428995 () Bool)

(declare-fun b_and!104645 () Bool)

(assert (=> b!1504098 (= tp!428995 b_and!104645)))

(declare-fun b!1504066 () Bool)

(declare-fun b_free!38959 () Bool)

(declare-fun b_next!39663 () Bool)

(assert (=> b!1504066 (= b_free!38959 (not b_next!39663))))

(declare-fun tp!428989 () Bool)

(declare-fun b_and!104647 () Bool)

(assert (=> b!1504066 (= tp!428989 b_and!104647)))

(declare-fun b!1504080 () Bool)

(declare-fun b_free!38961 () Bool)

(declare-fun b_next!39665 () Bool)

(assert (=> b!1504080 (= b_free!38961 (not b_next!39665))))

(declare-fun tp!428990 () Bool)

(declare-fun b_and!104649 () Bool)

(assert (=> b!1504080 (= tp!428990 b_and!104649)))

(declare-fun b!1504064 () Bool)

(declare-fun e!961624 () Bool)

(declare-datatypes ((List!16004 0))(
  ( (Nil!15936) (Cons!15936 (h!21337 (_ BitVec 16)) (t!138933 List!16004)) )
))
(declare-datatypes ((TokenValue!2918 0))(
  ( (FloatLiteralValue!5836 (text!20871 List!16004)) (TokenValueExt!2917 (__x!9860 Int)) (Broken!14590 (value!90232 List!16004)) (Object!2985) (End!2918) (Def!2918) (Underscore!2918) (Match!2918) (Else!2918) (Error!2918) (Case!2918) (If!2918) (Extends!2918) (Abstract!2918) (Class!2918) (Val!2918) (DelimiterValue!5836 (del!2978 List!16004)) (KeywordValue!2924 (value!90233 List!16004)) (CommentValue!5836 (value!90234 List!16004)) (WhitespaceValue!5836 (value!90235 List!16004)) (IndentationValue!2918 (value!90236 List!16004)) (String!18851) (Int32!2918) (Broken!14591 (value!90237 List!16004)) (Boolean!2919) (Unit!25694) (OperatorValue!2921 (op!2978 List!16004)) (IdentifierValue!5836 (value!90238 List!16004)) (IdentifierValue!5837 (value!90239 List!16004)) (WhitespaceValue!5837 (value!90240 List!16004)) (True!5836) (False!5836) (Broken!14592 (value!90241 List!16004)) (Broken!14593 (value!90242 List!16004)) (True!5837) (RightBrace!2918) (RightBracket!2918) (Colon!2918) (Null!2918) (Comma!2918) (LeftBracket!2918) (False!5837) (LeftBrace!2918) (ImaginaryLiteralValue!2918 (text!20872 List!16004)) (StringLiteralValue!8754 (value!90243 List!16004)) (EOFValue!2918 (value!90244 List!16004)) (IdentValue!2918 (value!90245 List!16004)) (DelimiterValue!5837 (value!90246 List!16004)) (DedentValue!2918 (value!90247 List!16004)) (NewLineValue!2918 (value!90248 List!16004)) (IntegerValue!8754 (value!90249 (_ BitVec 32)) (text!20873 List!16004)) (IntegerValue!8755 (value!90250 Int) (text!20874 List!16004)) (Times!2918) (Or!2918) (Equal!2918) (Minus!2918) (Broken!14594 (value!90251 List!16004)) (And!2918) (Div!2918) (LessEqual!2918) (Mod!2918) (Concat!7061) (Not!2918) (Plus!2918) (SpaceValue!2918 (value!90252 List!16004)) (IntegerValue!8756 (value!90253 Int) (text!20875 List!16004)) (StringLiteralValue!8755 (text!20876 List!16004)) (FloatLiteralValue!5837 (text!20877 List!16004)) (BytesLiteralValue!2918 (value!90254 List!16004)) (CommentValue!5837 (value!90255 List!16004)) (StringLiteralValue!8756 (value!90256 List!16004)) (ErrorTokenValue!2918 (msg!2979 List!16004)) )
))
(declare-datatypes ((C!8464 0))(
  ( (C!8465 (val!4804 Int)) )
))
(declare-datatypes ((List!16005 0))(
  ( (Nil!15937) (Cons!15937 (h!21338 C!8464) (t!138934 List!16005)) )
))
(declare-datatypes ((IArray!10819 0))(
  ( (IArray!10820 (innerList!5467 List!16005)) )
))
(declare-datatypes ((Conc!5407 0))(
  ( (Node!5407 (left!13321 Conc!5407) (right!13651 Conc!5407) (csize!11044 Int) (cheight!5618 Int)) (Leaf!8024 (xs!8182 IArray!10819) (csize!11045 Int)) (Empty!5407) )
))
(declare-datatypes ((BalanceConc!10756 0))(
  ( (BalanceConc!10757 (c!246632 Conc!5407)) )
))
(declare-datatypes ((Regex!4143 0))(
  ( (ElementMatch!4143 (c!246633 C!8464)) (Concat!7062 (regOne!8798 Regex!4143) (regTwo!8798 Regex!4143)) (EmptyExpr!4143) (Star!4143 (reg!4472 Regex!4143)) (EmptyLang!4143) (Union!4143 (regOne!8799 Regex!4143) (regTwo!8799 Regex!4143)) )
))
(declare-datatypes ((String!18852 0))(
  ( (String!18853 (value!90257 String)) )
))
(declare-datatypes ((TokenValueInjection!5496 0))(
  ( (TokenValueInjection!5497 (toValue!4175 Int) (toChars!4034 Int)) )
))
(declare-datatypes ((Rule!5456 0))(
  ( (Rule!5457 (regex!2828 Regex!4143) (tag!3092 String!18852) (isSeparator!2828 Bool) (transformation!2828 TokenValueInjection!5496)) )
))
(declare-datatypes ((Token!5318 0))(
  ( (Token!5319 (value!90258 TokenValue!2918) (rule!4617 Rule!5456) (size!12891 Int) (originalCharacters!3690 List!16005)) )
))
(declare-datatypes ((List!16006 0))(
  ( (Nil!15938) (Cons!15938 (h!21339 Token!5318) (t!138935 List!16006)) )
))
(declare-datatypes ((IArray!10821 0))(
  ( (IArray!10822 (innerList!5468 List!16006)) )
))
(declare-datatypes ((Conc!5408 0))(
  ( (Node!5408 (left!13322 Conc!5408) (right!13652 Conc!5408) (csize!11046 Int) (cheight!5619 Int)) (Leaf!8025 (xs!8183 IArray!10821) (csize!11047 Int)) (Empty!5408) )
))
(declare-datatypes ((BalanceConc!10758 0))(
  ( (BalanceConc!10759 (c!246634 Conc!5408)) )
))
(declare-datatypes ((tuple2!14716 0))(
  ( (tuple2!14717 (_1!8322 BalanceConc!10758) (_2!8322 BalanceConc!10756)) )
))
(declare-fun lt!522726 () tuple2!14716)

(declare-fun lt!522748 () BalanceConc!10756)

(assert (=> b!1504064 (= e!961624 (= lt!522726 (tuple2!14717 (BalanceConc!10759 Empty!5408) lt!522748)))))

(declare-fun b!1504065 () Bool)

(declare-fun e!961635 () tuple2!14716)

(declare-fun lt!522738 () tuple2!14716)

(declare-datatypes ((tuple2!14718 0))(
  ( (tuple2!14719 (_1!8323 Token!5318) (_2!8323 BalanceConc!10756)) )
))
(declare-datatypes ((Option!2912 0))(
  ( (None!2911) (Some!2911 (v!22756 tuple2!14718)) )
))
(declare-fun lt!522741 () Option!2912)

(declare-fun prepend!451 (BalanceConc!10758 Token!5318) BalanceConc!10758)

(assert (=> b!1504065 (= e!961635 (tuple2!14717 (prepend!451 (_1!8322 lt!522738) (_1!8323 (v!22756 lt!522741))) (_2!8322 lt!522738)))))

(declare-datatypes ((LexerInterface!2481 0))(
  ( (LexerInterfaceExt!2478 (__x!9861 Int)) (Lexer!2479) )
))
(declare-fun thiss!13241 () LexerInterface!2481)

(declare-datatypes ((List!16007 0))(
  ( (Nil!15939) (Cons!15939 (h!21340 Rule!5456) (t!138936 List!16007)) )
))
(declare-fun rules!1640 () List!16007)

(declare-fun lexRec!317 (LexerInterface!2481 List!16007 BalanceConc!10756) tuple2!14716)

(assert (=> b!1504065 (= lt!522738 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522741))))))

(declare-datatypes ((List!16008 0))(
  ( (Nil!15940) (Cons!15940 (h!21341 Regex!4143) (t!138937 List!16008)) )
))
(declare-datatypes ((Context!1322 0))(
  ( (Context!1323 (exprs!1161 List!16008)) )
))
(declare-datatypes ((tuple2!14720 0))(
  ( (tuple2!14721 (_1!8324 Context!1322) (_2!8324 C!8464)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14722 0))(
  ( (tuple2!14723 (_1!8325 tuple2!14720) (_2!8325 (InoxSet Context!1322))) )
))
(declare-datatypes ((List!16009 0))(
  ( (Nil!15941) (Cons!15941 (h!21342 tuple2!14722) (t!138938 List!16009)) )
))
(declare-datatypes ((array!5038 0))(
  ( (array!5039 (arr!2248 (Array (_ BitVec 32) (_ BitVec 64))) (size!12892 (_ BitVec 32))) )
))
(declare-datatypes ((array!5040 0))(
  ( (array!5041 (arr!2249 (Array (_ BitVec 32) List!16009)) (size!12893 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2860 0))(
  ( (LongMapFixedSize!2861 (defaultEntry!1790 Int) (mask!4590 (_ BitVec 32)) (extraKeys!1677 (_ BitVec 32)) (zeroValue!1687 List!16009) (minValue!1687 List!16009) (_size!2941 (_ BitVec 32)) (_keys!1724 array!5038) (_values!1709 array!5040) (_vacant!1491 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1374 0))(
  ( (HashableExt!1373 (__x!9862 Int)) )
))
(declare-datatypes ((Cell!5605 0))(
  ( (Cell!5606 (v!22757 LongMapFixedSize!2860)) )
))
(declare-datatypes ((MutLongMap!1430 0))(
  ( (LongMap!1430 (underlying!3069 Cell!5605)) (MutLongMapExt!1429 (__x!9863 Int)) )
))
(declare-datatypes ((Cell!5607 0))(
  ( (Cell!5608 (v!22758 MutLongMap!1430)) )
))
(declare-datatypes ((MutableMap!1374 0))(
  ( (MutableMapExt!1373 (__x!9864 Int)) (HashMap!1374 (underlying!3070 Cell!5607) (hashF!3293 Hashable!1374) (_size!2942 (_ BitVec 32)) (defaultValue!1534 Int)) )
))
(declare-datatypes ((CacheUp!816 0))(
  ( (CacheUp!817 (cache!1755 MutableMap!1374)) )
))
(declare-fun cacheUp!616 () CacheUp!816)

(declare-fun e!961632 () Bool)

(declare-fun e!961659 () Bool)

(declare-fun tp!428977 () Bool)

(declare-fun tp!428991 () Bool)

(declare-fun array_inv!1630 (array!5038) Bool)

(declare-fun array_inv!1631 (array!5040) Bool)

(assert (=> b!1504066 (= e!961632 (and tp!428989 tp!428991 tp!428977 (array_inv!1630 (_keys!1724 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) (array_inv!1631 (_values!1709 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) e!961659))))

(declare-fun mapNonEmpty!6807 () Bool)

(declare-fun mapRes!6809 () Bool)

(declare-fun tp!428986 () Bool)

(declare-fun tp!428978 () Bool)

(assert (=> mapNonEmpty!6807 (= mapRes!6809 (and tp!428986 tp!428978))))

(declare-fun mapKey!6807 () (_ BitVec 32))

(declare-datatypes ((tuple3!1296 0))(
  ( (tuple3!1297 (_1!8326 (InoxSet Context!1322)) (_2!8326 Int) (_3!964 Int)) )
))
(declare-datatypes ((tuple2!14724 0))(
  ( (tuple2!14725 (_1!8327 tuple3!1296) (_2!8327 Int)) )
))
(declare-datatypes ((List!16010 0))(
  ( (Nil!15942) (Cons!15942 (h!21343 tuple2!14724) (t!138939 List!16010)) )
))
(declare-datatypes ((array!5042 0))(
  ( (array!5043 (arr!2250 (Array (_ BitVec 32) List!16010)) (size!12894 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2862 0))(
  ( (LongMapFixedSize!2863 (defaultEntry!1791 Int) (mask!4591 (_ BitVec 32)) (extraKeys!1678 (_ BitVec 32)) (zeroValue!1688 List!16010) (minValue!1688 List!16010) (_size!2943 (_ BitVec 32)) (_keys!1725 array!5038) (_values!1710 array!5042) (_vacant!1492 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5609 0))(
  ( (Cell!5610 (v!22759 LongMapFixedSize!2862)) )
))
(declare-datatypes ((MutLongMap!1431 0))(
  ( (LongMap!1431 (underlying!3071 Cell!5609)) (MutLongMapExt!1430 (__x!9865 Int)) )
))
(declare-datatypes ((Cell!5611 0))(
  ( (Cell!5612 (v!22760 MutLongMap!1431)) )
))
(declare-datatypes ((Hashable!1375 0))(
  ( (HashableExt!1374 (__x!9866 Int)) )
))
(declare-datatypes ((MutableMap!1375 0))(
  ( (MutableMapExt!1374 (__x!9867 Int)) (HashMap!1375 (underlying!3072 Cell!5611) (hashF!3294 Hashable!1375) (_size!2944 (_ BitVec 32)) (defaultValue!1535 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!240 0))(
  ( (CacheFurthestNullable!241 (cache!1756 MutableMap!1375) (totalInput!2272 BalanceConc!10756)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!240)

(declare-fun mapValue!6808 () List!16010)

(declare-fun mapRest!6807 () (Array (_ BitVec 32) List!16010))

(assert (=> mapNonEmpty!6807 (= (arr!2250 (_values!1710 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) (store mapRest!6807 mapKey!6807 mapValue!6808))))

(declare-fun b!1504067 () Bool)

(declare-fun e!961631 () Bool)

(declare-fun input!1102 () BalanceConc!10756)

(declare-fun tp!428979 () Bool)

(declare-fun inv!21155 (Conc!5407) Bool)

(assert (=> b!1504067 (= e!961631 (and (inv!21155 (c!246632 input!1102)) tp!428979))))

(declare-fun b!1504068 () Bool)

(declare-fun lt!522730 () Option!2912)

(declare-fun lt!522723 () tuple2!14716)

(assert (=> b!1504068 (= e!961624 (= lt!522726 (tuple2!14717 (prepend!451 (_1!8322 lt!522723) (_1!8323 (v!22756 lt!522730))) (_2!8322 lt!522723))))))

(assert (=> b!1504068 (= lt!522723 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522730))))))

(declare-fun b!1504069 () Bool)

(declare-fun res!677584 () Bool)

(declare-fun e!961618 () Bool)

(assert (=> b!1504069 (=> (not res!677584) (not e!961618))))

(declare-datatypes ((tuple3!1298 0))(
  ( (tuple3!1299 (_1!8328 Regex!4143) (_2!8328 Context!1322) (_3!965 C!8464)) )
))
(declare-datatypes ((tuple2!14726 0))(
  ( (tuple2!14727 (_1!8329 tuple3!1298) (_2!8329 (InoxSet Context!1322))) )
))
(declare-datatypes ((List!16011 0))(
  ( (Nil!15943) (Cons!15943 (h!21344 tuple2!14726) (t!138940 List!16011)) )
))
(declare-datatypes ((array!5044 0))(
  ( (array!5045 (arr!2251 (Array (_ BitVec 32) List!16011)) (size!12895 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2864 0))(
  ( (LongMapFixedSize!2865 (defaultEntry!1792 Int) (mask!4592 (_ BitVec 32)) (extraKeys!1679 (_ BitVec 32)) (zeroValue!1689 List!16011) (minValue!1689 List!16011) (_size!2945 (_ BitVec 32)) (_keys!1726 array!5038) (_values!1711 array!5044) (_vacant!1493 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5613 0))(
  ( (Cell!5614 (v!22761 LongMapFixedSize!2864)) )
))
(declare-datatypes ((MutLongMap!1432 0))(
  ( (LongMap!1432 (underlying!3073 Cell!5613)) (MutLongMapExt!1431 (__x!9868 Int)) )
))
(declare-datatypes ((Cell!5615 0))(
  ( (Cell!5616 (v!22762 MutLongMap!1432)) )
))
(declare-datatypes ((Hashable!1376 0))(
  ( (HashableExt!1375 (__x!9869 Int)) )
))
(declare-datatypes ((MutableMap!1376 0))(
  ( (MutableMapExt!1375 (__x!9870 Int)) (HashMap!1376 (underlying!3074 Cell!5615) (hashF!3295 Hashable!1376) (_size!2946 (_ BitVec 32)) (defaultValue!1536 Int)) )
))
(declare-datatypes ((CacheDown!820 0))(
  ( (CacheDown!821 (cache!1757 MutableMap!1376)) )
))
(declare-fun cacheDown!629 () CacheDown!820)

(declare-fun valid!1139 (CacheDown!820) Bool)

(assert (=> b!1504069 (= res!677584 (valid!1139 cacheDown!629))))

(declare-fun b!1504070 () Bool)

(declare-fun e!961630 () Bool)

(declare-fun e!961620 () Bool)

(declare-fun lt!522715 () MutLongMap!1430)

(get-info :version)

(assert (=> b!1504070 (= e!961630 (and e!961620 ((_ is LongMap!1430) lt!522715)))))

(assert (=> b!1504070 (= lt!522715 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))

(declare-fun e!961649 () Bool)

(declare-fun tp!428988 () Bool)

(declare-fun e!961636 () Bool)

(declare-fun tp!428972 () Bool)

(declare-fun array_inv!1632 (array!5044) Bool)

(assert (=> b!1504071 (= e!961649 (and tp!428981 tp!428988 tp!428972 (array_inv!1630 (_keys!1726 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) (array_inv!1632 (_values!1711 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) e!961636))))

(declare-fun b!1504072 () Bool)

(declare-fun e!961657 () Bool)

(assert (=> b!1504072 (= e!961618 (not e!961657))))

(declare-fun res!677582 () Bool)

(assert (=> b!1504072 (=> res!677582 e!961657)))

(declare-fun lt!522727 () List!16005)

(declare-fun lt!522722 () List!16005)

(declare-fun isSuffix!290 (List!16005 List!16005) Bool)

(assert (=> b!1504072 (= res!677582 (not (isSuffix!290 lt!522727 lt!522722)))))

(declare-fun lt!522743 () List!16005)

(assert (=> b!1504072 (isSuffix!290 lt!522727 lt!522743)))

(declare-datatypes ((Unit!25695 0))(
  ( (Unit!25696) )
))
(declare-fun lt!522725 () Unit!25695)

(declare-fun lt!522716 () List!16005)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!268 (List!16005 List!16005) Unit!25695)

(assert (=> b!1504072 (= lt!522725 (lemmaConcatTwoListThenFSndIsSuffix!268 lt!522716 lt!522727))))

(declare-fun b!1504073 () Bool)

(declare-fun res!677578 () Bool)

(declare-fun e!961658 () Bool)

(assert (=> b!1504073 (=> res!677578 e!961658)))

(declare-datatypes ((tuple4!632 0))(
  ( (tuple4!633 (_1!8330 Option!2912) (_2!8330 CacheUp!816) (_3!966 CacheDown!820) (_4!316 CacheFurthestNullable!240)) )
))
(declare-fun lt!522731 () tuple4!632)

(declare-fun valid!1140 (CacheFurthestNullable!240) Bool)

(assert (=> b!1504073 (= res!677578 (not (valid!1140 (_4!316 lt!522731))))))

(declare-fun mapIsEmpty!6807 () Bool)

(declare-fun mapRes!6808 () Bool)

(assert (=> mapIsEmpty!6807 mapRes!6808))

(declare-fun b!1504074 () Bool)

(declare-fun e!961655 () Bool)

(declare-fun treated!70 () BalanceConc!10756)

(declare-fun tp!428992 () Bool)

(assert (=> b!1504074 (= e!961655 (and (inv!21155 (c!246632 treated!70)) tp!428992))))

(declare-fun b!1504075 () Bool)

(declare-fun res!677589 () Bool)

(assert (=> b!1504075 (=> (not res!677589) (not e!961618))))

(declare-fun totalInput!458 () BalanceConc!10756)

(assert (=> b!1504075 (= res!677589 (= (totalInput!2272 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1504076 () Bool)

(declare-fun e!961656 () Bool)

(declare-fun e!961627 () Bool)

(assert (=> b!1504076 (= e!961656 e!961627)))

(declare-fun b!1504077 () Bool)

(declare-fun e!961622 () Bool)

(declare-fun e!961625 () Bool)

(declare-fun lt!522739 () MutLongMap!1432)

(assert (=> b!1504077 (= e!961622 (and e!961625 ((_ is LongMap!1432) lt!522739)))))

(assert (=> b!1504077 (= lt!522739 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))

(declare-fun b!1504078 () Bool)

(declare-fun res!677590 () Bool)

(assert (=> b!1504078 (=> res!677590 e!961658)))

(declare-fun valid!1141 (CacheUp!816) Bool)

(assert (=> b!1504078 (= res!677590 (not (valid!1141 (_2!8330 lt!522731))))))

(declare-fun e!961648 () Bool)

(assert (=> b!1504079 (= e!961648 (and e!961630 tp!428993))))

(declare-fun e!961640 () Bool)

(declare-fun e!961651 () Bool)

(assert (=> b!1504080 (= e!961640 (and e!961651 tp!428990))))

(declare-fun b!1504081 () Bool)

(declare-fun res!677577 () Bool)

(declare-fun e!961641 () Bool)

(assert (=> b!1504081 (=> (not res!677577) (not e!961641))))

(declare-fun lt!522721 () tuple2!14716)

(declare-fun isEmpty!9894 (List!16005) Bool)

(declare-fun list!6309 (BalanceConc!10756) List!16005)

(assert (=> b!1504081 (= res!677577 (isEmpty!9894 (list!6309 (_2!8322 lt!522721))))))

(declare-fun b!1504082 () Bool)

(declare-fun res!677592 () Bool)

(declare-fun e!961619 () Bool)

(assert (=> b!1504082 (=> (not res!677592) (not e!961619))))

(declare-fun isEmpty!9895 (List!16007) Bool)

(assert (=> b!1504082 (= res!677592 (not (isEmpty!9895 rules!1640)))))

(declare-fun b!1504083 () Bool)

(declare-fun res!677587 () Bool)

(assert (=> b!1504083 (=> (not res!677587) (not e!961618))))

(assert (=> b!1504083 (= res!677587 (valid!1140 cacheFurthestNullable!64))))

(declare-fun b!1504084 () Bool)

(declare-fun e!961623 () Bool)

(declare-fun tp!428998 () Bool)

(assert (=> b!1504084 (= e!961623 (and (inv!21155 (c!246632 totalInput!458)) tp!428998))))

(declare-fun b!1504085 () Bool)

(declare-fun e!961654 () Bool)

(declare-fun acc!392 () BalanceConc!10758)

(declare-fun tp!428997 () Bool)

(declare-fun inv!21156 (Conc!5408) Bool)

(assert (=> b!1504085 (= e!961654 (and (inv!21156 (c!246634 acc!392)) tp!428997))))

(declare-fun tp!428976 () Bool)

(declare-fun e!961637 () Bool)

(declare-fun b!1504086 () Bool)

(declare-fun e!961650 () Bool)

(declare-fun inv!21148 (String!18852) Bool)

(declare-fun inv!21157 (TokenValueInjection!5496) Bool)

(assert (=> b!1504086 (= e!961650 (and tp!428976 (inv!21148 (tag!3092 (h!21340 rules!1640))) (inv!21157 (transformation!2828 (h!21340 rules!1640))) e!961637))))

(declare-fun b!1504087 () Bool)

(declare-fun res!677596 () Bool)

(assert (=> b!1504087 (=> (not res!677596) (not e!961619))))

(declare-fun rulesInvariant!2260 (LexerInterface!2481 List!16007) Bool)

(assert (=> b!1504087 (= res!677596 (rulesInvariant!2260 thiss!13241 rules!1640))))

(declare-fun b!1504088 () Bool)

(declare-fun res!677595 () Bool)

(assert (=> b!1504088 (=> res!677595 e!961658)))

(assert (=> b!1504088 (= res!677595 (not (isEmpty!9894 (list!6309 (_2!8322 lt!522726)))))))

(declare-fun b!1504089 () Bool)

(declare-fun e!961629 () Bool)

(declare-fun e!961639 () Bool)

(assert (=> b!1504089 (= e!961629 e!961639)))

(declare-fun b!1504090 () Bool)

(declare-fun tp!428982 () Bool)

(declare-fun mapRes!6807 () Bool)

(assert (=> b!1504090 (= e!961636 (and tp!428982 mapRes!6807))))

(declare-fun condMapEmpty!6808 () Bool)

(declare-fun mapDefault!6807 () List!16011)

(assert (=> b!1504090 (= condMapEmpty!6808 (= (arr!2251 (_values!1711 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16011)) mapDefault!6807)))))

(declare-fun b!1504091 () Bool)

(declare-fun e!961645 () Bool)

(assert (=> b!1504091 (= e!961641 e!961645)))

(declare-fun res!677583 () Bool)

(assert (=> b!1504091 (=> (not res!677583) (not e!961645))))

(declare-fun lt!522744 () List!16006)

(declare-fun lt!522740 () BalanceConc!10758)

(declare-fun list!6310 (BalanceConc!10758) List!16006)

(assert (=> b!1504091 (= res!677583 (= lt!522744 (list!6310 lt!522740)))))

(declare-fun lt!522720 () tuple2!14716)

(assert (=> b!1504091 (= lt!522744 (list!6310 (_1!8322 lt!522720)))))

(declare-fun lt!522729 () tuple2!14716)

(declare-fun ++!4306 (BalanceConc!10758 BalanceConc!10758) BalanceConc!10758)

(assert (=> b!1504091 (= lt!522740 (++!4306 acc!392 (_1!8322 lt!522729)))))

(assert (=> b!1504091 (= lt!522729 (lexRec!317 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1504091 (= lt!522720 (lexRec!317 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1504092 () Bool)

(declare-fun e!961660 () Bool)

(assert (=> b!1504092 (= e!961660 e!961649)))

(declare-fun e!961626 () Bool)

(declare-fun e!961643 () Bool)

(declare-fun b!1504093 () Bool)

(declare-fun inv!21158 (BalanceConc!10756) Bool)

(assert (=> b!1504093 (= e!961643 (and e!961640 (inv!21158 (totalInput!2272 cacheFurthestNullable!64)) e!961626))))

(declare-fun b!1504094 () Bool)

(declare-fun e!961634 () Bool)

(assert (=> b!1504094 (= e!961619 e!961634)))

(declare-fun res!677597 () Bool)

(assert (=> b!1504094 (=> (not res!677597) (not e!961634))))

(assert (=> b!1504094 (= res!677597 (= lt!522722 lt!522743))))

(declare-fun ++!4307 (List!16005 List!16005) List!16005)

(assert (=> b!1504094 (= lt!522743 (++!4307 lt!522716 lt!522727))))

(assert (=> b!1504094 (= lt!522722 (list!6309 totalInput!458))))

(assert (=> b!1504094 (= lt!522727 (list!6309 input!1102))))

(assert (=> b!1504094 (= lt!522716 (list!6309 treated!70))))

(declare-fun b!1504095 () Bool)

(declare-fun res!677588 () Bool)

(assert (=> b!1504095 (=> (not res!677588) (not e!961618))))

(assert (=> b!1504095 (= res!677588 (valid!1141 cacheUp!616))))

(declare-fun mapIsEmpty!6808 () Bool)

(assert (=> mapIsEmpty!6808 mapRes!6807))

(assert (=> b!1504096 (= e!961637 (and tp!428983 tp!428974))))

(declare-fun b!1504097 () Bool)

(declare-fun res!677598 () Bool)

(assert (=> b!1504097 (=> res!677598 e!961658)))

(declare-fun lt!522737 () List!16006)

(assert (=> b!1504097 (= res!677598 (not (= (list!6310 (_1!8322 lt!522726)) lt!522737)))))

(assert (=> b!1504098 (= e!961627 (and e!961622 tp!428995))))

(declare-fun b!1504099 () Bool)

(declare-fun res!677579 () Bool)

(assert (=> b!1504099 (=> res!677579 e!961658)))

(declare-fun lt!522713 () List!16005)

(assert (=> b!1504099 (= res!677579 (not (= lt!522722 lt!522713)))))

(declare-fun b!1504100 () Bool)

(declare-fun e!961638 () Bool)

(assert (=> b!1504100 (= e!961638 e!961658)))

(declare-fun res!677594 () Bool)

(assert (=> b!1504100 (=> res!677594 e!961658)))

(declare-fun lt!522749 () List!16005)

(assert (=> b!1504100 (= res!677594 (not (isSuffix!290 lt!522749 lt!522722)))))

(assert (=> b!1504100 (isSuffix!290 lt!522749 lt!522713)))

(declare-fun lt!522714 () List!16005)

(assert (=> b!1504100 (= lt!522713 (++!4307 lt!522714 lt!522749))))

(declare-fun lt!522735 () Unit!25695)

(assert (=> b!1504100 (= lt!522735 (lemmaConcatTwoListThenFSndIsSuffix!268 lt!522714 lt!522749))))

(assert (=> b!1504100 (= lt!522714 (list!6309 lt!522748))))

(assert (=> b!1504100 e!961624))

(declare-fun c!246631 () Bool)

(assert (=> b!1504100 (= c!246631 ((_ is Some!2911) lt!522730))))

(assert (=> b!1504100 (= lt!522726 (lexRec!317 thiss!13241 rules!1640 lt!522748))))

(declare-fun maxPrefixZipperSequence!579 (LexerInterface!2481 List!16007 BalanceConc!10756) Option!2912)

(assert (=> b!1504100 (= lt!522730 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 lt!522748))))

(declare-fun lt!522747 () BalanceConc!10756)

(declare-fun ++!4308 (BalanceConc!10756 BalanceConc!10756) BalanceConc!10756)

(assert (=> b!1504100 (= lt!522748 (++!4308 treated!70 lt!522747))))

(declare-fun lt!522751 () List!16005)

(declare-datatypes ((tuple2!14728 0))(
  ( (tuple2!14729 (_1!8331 List!16006) (_2!8331 List!16005)) )
))
(declare-fun lexList!737 (LexerInterface!2481 List!16007 List!16005) tuple2!14728)

(assert (=> b!1504100 (= (lexList!737 thiss!13241 rules!1640 lt!522751) (tuple2!14729 lt!522737 Nil!15937))))

(declare-fun lt!522717 () List!16006)

(declare-fun lt!522746 () List!16005)

(declare-fun lt!522742 () Unit!25695)

(declare-fun lemmaLexThenLexPrefix!219 (LexerInterface!2481 List!16007 List!16005 List!16005 List!16006 List!16006 List!16005) Unit!25695)

(assert (=> b!1504100 (= lt!522742 (lemmaLexThenLexPrefix!219 thiss!13241 rules!1640 lt!522751 lt!522749 lt!522737 lt!522717 lt!522746))))

(declare-fun lt!522718 () tuple2!14716)

(assert (=> b!1504100 (= lt!522746 (list!6309 (_2!8322 lt!522718)))))

(declare-fun lt!522734 () BalanceConc!10758)

(assert (=> b!1504100 (= lt!522737 (list!6310 lt!522734))))

(declare-fun append!486 (BalanceConc!10758 Token!5318) BalanceConc!10758)

(assert (=> b!1504100 (= lt!522734 (append!486 acc!392 (_1!8323 (v!22756 (_1!8330 lt!522731)))))))

(declare-fun lt!522733 () List!16006)

(declare-fun lt!522728 () List!16006)

(declare-fun ++!4309 (List!16006 List!16006) List!16006)

(assert (=> b!1504100 (= (++!4309 (++!4309 lt!522733 lt!522728) lt!522717) (++!4309 lt!522733 (++!4309 lt!522728 lt!522717)))))

(declare-fun lt!522724 () Unit!25695)

(declare-fun lemmaConcatAssociativity!921 (List!16006 List!16006 List!16006) Unit!25695)

(assert (=> b!1504100 (= lt!522724 (lemmaConcatAssociativity!921 lt!522733 lt!522728 lt!522717))))

(assert (=> b!1504100 (= lt!522717 (list!6310 (_1!8322 lt!522718)))))

(assert (=> b!1504100 (= lt!522728 (Cons!15938 (_1!8323 (v!22756 (_1!8330 lt!522731))) Nil!15938))))

(assert (=> b!1504100 (= lt!522729 e!961635)))

(declare-fun c!246630 () Bool)

(assert (=> b!1504100 (= c!246630 ((_ is Some!2911) lt!522741))))

(assert (=> b!1504100 (= lt!522741 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!522732 () List!16005)

(assert (=> b!1504100 (= (++!4307 lt!522751 lt!522749) (++!4307 lt!522716 (++!4307 lt!522732 lt!522749)))))

(assert (=> b!1504100 (= lt!522751 (++!4307 lt!522716 lt!522732))))

(declare-fun lt!522750 () Unit!25695)

(declare-fun lemmaConcatAssociativity!922 (List!16005 List!16005 List!16005) Unit!25695)

(assert (=> b!1504100 (= lt!522750 (lemmaConcatAssociativity!922 lt!522716 lt!522732 lt!522749))))

(assert (=> b!1504100 (= lt!522749 (list!6309 (_2!8323 (v!22756 (_1!8330 lt!522731)))))))

(assert (=> b!1504100 (= lt!522732 (list!6309 lt!522747))))

(declare-fun charsOf!1620 (Token!5318) BalanceConc!10756)

(assert (=> b!1504100 (= lt!522747 (charsOf!1620 (_1!8323 (v!22756 (_1!8330 lt!522731)))))))

(assert (=> b!1504100 (= lt!522718 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 (_1!8330 lt!522731)))))))

(declare-fun b!1504101 () Bool)

(declare-fun tp!428969 () Bool)

(assert (=> b!1504101 (= e!961626 (and (inv!21155 (c!246632 (totalInput!2272 cacheFurthestNullable!64))) tp!428969))))

(declare-fun b!1504102 () Bool)

(declare-fun tp!428994 () Bool)

(assert (=> b!1504102 (= e!961659 (and tp!428994 mapRes!6808))))

(declare-fun condMapEmpty!6807 () Bool)

(declare-fun mapDefault!6809 () List!16009)

(assert (=> b!1504102 (= condMapEmpty!6807 (= (arr!2249 (_values!1709 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16009)) mapDefault!6809)))))

(declare-fun tp!428973 () Bool)

(declare-fun e!961647 () Bool)

(declare-fun e!961633 () Bool)

(declare-fun tp!428970 () Bool)

(declare-fun array_inv!1633 (array!5042) Bool)

(assert (=> b!1504103 (= e!961647 (and tp!428985 tp!428970 tp!428973 (array_inv!1630 (_keys!1725 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) (array_inv!1633 (_values!1710 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) e!961633))))

(declare-fun b!1504104 () Bool)

(declare-fun e!961646 () Bool)

(declare-fun tp!428975 () Bool)

(assert (=> b!1504104 (= e!961646 (and e!961650 tp!428975))))

(declare-fun b!1504105 () Bool)

(declare-fun e!961628 () Bool)

(assert (=> b!1504105 (= e!961628 e!961648)))

(declare-fun b!1504106 () Bool)

(assert (=> b!1504106 (= e!961657 e!961638)))

(declare-fun res!677580 () Bool)

(assert (=> b!1504106 (=> res!677580 e!961638)))

(assert (=> b!1504106 (= res!677580 (not ((_ is Some!2911) (_1!8330 lt!522731))))))

(declare-fun maxPrefixZipperSequenceV3Mem!17 (LexerInterface!2481 List!16007 BalanceConc!10756 BalanceConc!10756 CacheUp!816 CacheDown!820 CacheFurthestNullable!240) tuple4!632)

(assert (=> b!1504106 (= lt!522731 (maxPrefixZipperSequenceV3Mem!17 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1504107 () Bool)

(declare-fun res!677581 () Bool)

(assert (=> b!1504107 (=> res!677581 e!961658)))

(assert (=> b!1504107 (= res!677581 (not (= lt!522744 (list!6310 (++!4306 lt!522734 (_1!8322 lt!522718))))))))

(declare-fun b!1504108 () Bool)

(assert (=> b!1504108 (= e!961625 e!961660)))

(declare-fun b!1504109 () Bool)

(declare-fun e!961652 () Bool)

(assert (=> b!1504109 (= e!961652 e!961632)))

(declare-fun mapNonEmpty!6808 () Bool)

(declare-fun tp!428996 () Bool)

(declare-fun tp!428987 () Bool)

(assert (=> mapNonEmpty!6808 (= mapRes!6808 (and tp!428996 tp!428987))))

(declare-fun mapKey!6809 () (_ BitVec 32))

(declare-fun mapRest!6808 () (Array (_ BitVec 32) List!16009))

(declare-fun mapValue!6807 () List!16009)

(assert (=> mapNonEmpty!6808 (= (arr!2249 (_values!1709 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) (store mapRest!6808 mapKey!6809 mapValue!6807))))

(declare-fun lt!522719 () List!16005)

(declare-fun b!1504110 () Bool)

(assert (=> b!1504110 (= e!961658 (or (not (= lt!522719 lt!522746)) (= (totalInput!2272 (_4!316 lt!522731)) totalInput!458)))))

(declare-fun b!1504111 () Bool)

(declare-fun lt!522745 () MutLongMap!1431)

(assert (=> b!1504111 (= e!961651 (and e!961629 ((_ is LongMap!1431) lt!522745)))))

(assert (=> b!1504111 (= lt!522745 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))

(declare-fun b!1504112 () Bool)

(declare-fun tp!428984 () Bool)

(assert (=> b!1504112 (= e!961633 (and tp!428984 mapRes!6809))))

(declare-fun condMapEmpty!6809 () Bool)

(declare-fun mapDefault!6808 () List!16010)

(assert (=> b!1504112 (= condMapEmpty!6809 (= (arr!2250 (_values!1710 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16010)) mapDefault!6808)))))

(declare-fun b!1504113 () Bool)

(assert (=> b!1504113 (= e!961639 e!961647)))

(declare-fun mapNonEmpty!6809 () Bool)

(declare-fun tp!428980 () Bool)

(declare-fun tp!428971 () Bool)

(assert (=> mapNonEmpty!6809 (= mapRes!6807 (and tp!428980 tp!428971))))

(declare-fun mapRest!6809 () (Array (_ BitVec 32) List!16011))

(declare-fun mapKey!6808 () (_ BitVec 32))

(declare-fun mapValue!6809 () List!16011)

(assert (=> mapNonEmpty!6809 (= (arr!2251 (_values!1711 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) (store mapRest!6809 mapKey!6808 mapValue!6809))))

(declare-fun mapIsEmpty!6809 () Bool)

(assert (=> mapIsEmpty!6809 mapRes!6809))

(declare-fun b!1504114 () Bool)

(assert (=> b!1504114 (= e!961620 e!961652)))

(declare-fun b!1504115 () Bool)

(assert (=> b!1504115 (= e!961634 e!961641)))

(declare-fun res!677585 () Bool)

(assert (=> b!1504115 (=> (not res!677585) (not e!961641))))

(declare-fun lt!522736 () List!16006)

(assert (=> b!1504115 (= res!677585 (= lt!522736 lt!522733))))

(assert (=> b!1504115 (= lt!522733 (list!6310 acc!392))))

(assert (=> b!1504115 (= lt!522736 (list!6310 (_1!8322 lt!522721)))))

(assert (=> b!1504115 (= lt!522721 (lexRec!317 thiss!13241 rules!1640 treated!70))))

(declare-fun res!677591 () Bool)

(assert (=> start!140582 (=> (not res!677591) (not e!961619))))

(assert (=> start!140582 (= res!677591 ((_ is Lexer!2479) thiss!13241))))

(assert (=> start!140582 e!961619))

(declare-fun inv!21159 (BalanceConc!10758) Bool)

(assert (=> start!140582 (and (inv!21159 acc!392) e!961654)))

(declare-fun inv!21160 (CacheUp!816) Bool)

(assert (=> start!140582 (and (inv!21160 cacheUp!616) e!961628)))

(declare-fun inv!21161 (CacheDown!820) Bool)

(assert (=> start!140582 (and (inv!21161 cacheDown!629) e!961656)))

(assert (=> start!140582 (and (inv!21158 input!1102) e!961631)))

(assert (=> start!140582 (and (inv!21158 treated!70) e!961655)))

(assert (=> start!140582 true))

(assert (=> start!140582 e!961646))

(declare-fun inv!21162 (CacheFurthestNullable!240) Bool)

(assert (=> start!140582 (and (inv!21162 cacheFurthestNullable!64) e!961643)))

(assert (=> start!140582 (and (inv!21158 totalInput!458) e!961623)))

(declare-fun b!1504116 () Bool)

(assert (=> b!1504116 (= e!961645 e!961618)))

(declare-fun res!677586 () Bool)

(assert (=> b!1504116 (=> (not res!677586) (not e!961618))))

(assert (=> b!1504116 (= res!677586 (= lt!522719 (list!6309 (_2!8322 lt!522729))))))

(assert (=> b!1504116 (= lt!522719 (list!6309 (_2!8322 lt!522720)))))

(declare-fun b!1504117 () Bool)

(assert (=> b!1504117 (= e!961635 (tuple2!14717 (BalanceConc!10759 Empty!5408) input!1102))))

(declare-fun b!1504118 () Bool)

(declare-fun res!677593 () Bool)

(assert (=> b!1504118 (=> res!677593 e!961658)))

(assert (=> b!1504118 (= res!677593 (not (valid!1139 (_3!966 lt!522731))))))

(assert (= (and start!140582 res!677591) b!1504082))

(assert (= (and b!1504082 res!677592) b!1504087))

(assert (= (and b!1504087 res!677596) b!1504094))

(assert (= (and b!1504094 res!677597) b!1504115))

(assert (= (and b!1504115 res!677585) b!1504081))

(assert (= (and b!1504081 res!677577) b!1504091))

(assert (= (and b!1504091 res!677583) b!1504116))

(assert (= (and b!1504116 res!677586) b!1504095))

(assert (= (and b!1504095 res!677588) b!1504069))

(assert (= (and b!1504069 res!677584) b!1504083))

(assert (= (and b!1504083 res!677587) b!1504075))

(assert (= (and b!1504075 res!677589) b!1504072))

(assert (= (and b!1504072 (not res!677582)) b!1504106))

(assert (= (and b!1504106 (not res!677580)) b!1504100))

(assert (= (and b!1504100 c!246630) b!1504065))

(assert (= (and b!1504100 (not c!246630)) b!1504117))

(assert (= (and b!1504100 c!246631) b!1504068))

(assert (= (and b!1504100 (not c!246631)) b!1504064))

(assert (= (and b!1504100 (not res!677594)) b!1504073))

(assert (= (and b!1504073 (not res!677578)) b!1504078))

(assert (= (and b!1504078 (not res!677590)) b!1504118))

(assert (= (and b!1504118 (not res!677593)) b!1504099))

(assert (= (and b!1504099 (not res!677579)) b!1504097))

(assert (= (and b!1504097 (not res!677598)) b!1504088))

(assert (= (and b!1504088 (not res!677595)) b!1504107))

(assert (= (and b!1504107 (not res!677581)) b!1504110))

(assert (= start!140582 b!1504085))

(assert (= (and b!1504102 condMapEmpty!6807) mapIsEmpty!6807))

(assert (= (and b!1504102 (not condMapEmpty!6807)) mapNonEmpty!6808))

(assert (= b!1504066 b!1504102))

(assert (= b!1504109 b!1504066))

(assert (= b!1504114 b!1504109))

(assert (= (and b!1504070 ((_ is LongMap!1430) (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))) b!1504114))

(assert (= b!1504079 b!1504070))

(assert (= (and b!1504105 ((_ is HashMap!1374) (cache!1755 cacheUp!616))) b!1504079))

(assert (= start!140582 b!1504105))

(assert (= (and b!1504090 condMapEmpty!6808) mapIsEmpty!6808))

(assert (= (and b!1504090 (not condMapEmpty!6808)) mapNonEmpty!6809))

(assert (= b!1504071 b!1504090))

(assert (= b!1504092 b!1504071))

(assert (= b!1504108 b!1504092))

(assert (= (and b!1504077 ((_ is LongMap!1432) (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))) b!1504108))

(assert (= b!1504098 b!1504077))

(assert (= (and b!1504076 ((_ is HashMap!1376) (cache!1757 cacheDown!629))) b!1504098))

(assert (= start!140582 b!1504076))

(assert (= start!140582 b!1504067))

(assert (= start!140582 b!1504074))

(assert (= b!1504086 b!1504096))

(assert (= b!1504104 b!1504086))

(assert (= (and start!140582 ((_ is Cons!15939) rules!1640)) b!1504104))

(assert (= (and b!1504112 condMapEmpty!6809) mapIsEmpty!6809))

(assert (= (and b!1504112 (not condMapEmpty!6809)) mapNonEmpty!6807))

(assert (= b!1504103 b!1504112))

(assert (= b!1504113 b!1504103))

(assert (= b!1504089 b!1504113))

(assert (= (and b!1504111 ((_ is LongMap!1431) (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))) b!1504089))

(assert (= b!1504080 b!1504111))

(assert (= (and b!1504093 ((_ is HashMap!1375) (cache!1756 cacheFurthestNullable!64))) b!1504080))

(assert (= b!1504093 b!1504101))

(assert (= start!140582 b!1504093))

(assert (= start!140582 b!1504084))

(declare-fun m!1763451 () Bool)

(assert (=> b!1504115 m!1763451))

(declare-fun m!1763453 () Bool)

(assert (=> b!1504115 m!1763453))

(declare-fun m!1763455 () Bool)

(assert (=> b!1504115 m!1763455))

(declare-fun m!1763457 () Bool)

(assert (=> b!1504101 m!1763457))

(declare-fun m!1763459 () Bool)

(assert (=> b!1504097 m!1763459))

(declare-fun m!1763461 () Bool)

(assert (=> b!1504081 m!1763461))

(assert (=> b!1504081 m!1763461))

(declare-fun m!1763463 () Bool)

(assert (=> b!1504081 m!1763463))

(declare-fun m!1763465 () Bool)

(assert (=> b!1504095 m!1763465))

(declare-fun m!1763467 () Bool)

(assert (=> b!1504086 m!1763467))

(declare-fun m!1763469 () Bool)

(assert (=> b!1504086 m!1763469))

(declare-fun m!1763471 () Bool)

(assert (=> b!1504072 m!1763471))

(declare-fun m!1763473 () Bool)

(assert (=> b!1504072 m!1763473))

(declare-fun m!1763475 () Bool)

(assert (=> b!1504072 m!1763475))

(declare-fun m!1763477 () Bool)

(assert (=> b!1504094 m!1763477))

(declare-fun m!1763479 () Bool)

(assert (=> b!1504094 m!1763479))

(declare-fun m!1763481 () Bool)

(assert (=> b!1504094 m!1763481))

(declare-fun m!1763483 () Bool)

(assert (=> b!1504094 m!1763483))

(declare-fun m!1763485 () Bool)

(assert (=> mapNonEmpty!6809 m!1763485))

(declare-fun m!1763487 () Bool)

(assert (=> b!1504074 m!1763487))

(declare-fun m!1763489 () Bool)

(assert (=> b!1504085 m!1763489))

(declare-fun m!1763491 () Bool)

(assert (=> b!1504103 m!1763491))

(declare-fun m!1763493 () Bool)

(assert (=> b!1504103 m!1763493))

(declare-fun m!1763495 () Bool)

(assert (=> b!1504083 m!1763495))

(declare-fun m!1763497 () Bool)

(assert (=> b!1504066 m!1763497))

(declare-fun m!1763499 () Bool)

(assert (=> b!1504066 m!1763499))

(declare-fun m!1763501 () Bool)

(assert (=> b!1504071 m!1763501))

(declare-fun m!1763503 () Bool)

(assert (=> b!1504071 m!1763503))

(declare-fun m!1763505 () Bool)

(assert (=> b!1504082 m!1763505))

(declare-fun m!1763507 () Bool)

(assert (=> mapNonEmpty!6808 m!1763507))

(declare-fun m!1763509 () Bool)

(assert (=> b!1504106 m!1763509))

(declare-fun m!1763511 () Bool)

(assert (=> b!1504087 m!1763511))

(declare-fun m!1763513 () Bool)

(assert (=> b!1504069 m!1763513))

(declare-fun m!1763515 () Bool)

(assert (=> b!1504073 m!1763515))

(declare-fun m!1763517 () Bool)

(assert (=> start!140582 m!1763517))

(declare-fun m!1763519 () Bool)

(assert (=> start!140582 m!1763519))

(declare-fun m!1763521 () Bool)

(assert (=> start!140582 m!1763521))

(declare-fun m!1763523 () Bool)

(assert (=> start!140582 m!1763523))

(declare-fun m!1763525 () Bool)

(assert (=> start!140582 m!1763525))

(declare-fun m!1763527 () Bool)

(assert (=> start!140582 m!1763527))

(declare-fun m!1763529 () Bool)

(assert (=> start!140582 m!1763529))

(declare-fun m!1763531 () Bool)

(assert (=> b!1504068 m!1763531))

(declare-fun m!1763533 () Bool)

(assert (=> b!1504068 m!1763533))

(declare-fun m!1763535 () Bool)

(assert (=> b!1504084 m!1763535))

(declare-fun m!1763537 () Bool)

(assert (=> b!1504067 m!1763537))

(declare-fun m!1763539 () Bool)

(assert (=> b!1504078 m!1763539))

(declare-fun m!1763541 () Bool)

(assert (=> b!1504118 m!1763541))

(declare-fun m!1763543 () Bool)

(assert (=> mapNonEmpty!6807 m!1763543))

(declare-fun m!1763545 () Bool)

(assert (=> b!1504088 m!1763545))

(assert (=> b!1504088 m!1763545))

(declare-fun m!1763547 () Bool)

(assert (=> b!1504088 m!1763547))

(declare-fun m!1763549 () Bool)

(assert (=> b!1504100 m!1763549))

(declare-fun m!1763551 () Bool)

(assert (=> b!1504100 m!1763551))

(declare-fun m!1763553 () Bool)

(assert (=> b!1504100 m!1763553))

(declare-fun m!1763555 () Bool)

(assert (=> b!1504100 m!1763555))

(declare-fun m!1763557 () Bool)

(assert (=> b!1504100 m!1763557))

(declare-fun m!1763559 () Bool)

(assert (=> b!1504100 m!1763559))

(declare-fun m!1763561 () Bool)

(assert (=> b!1504100 m!1763561))

(declare-fun m!1763563 () Bool)

(assert (=> b!1504100 m!1763563))

(declare-fun m!1763565 () Bool)

(assert (=> b!1504100 m!1763565))

(declare-fun m!1763567 () Bool)

(assert (=> b!1504100 m!1763567))

(declare-fun m!1763569 () Bool)

(assert (=> b!1504100 m!1763569))

(declare-fun m!1763571 () Bool)

(assert (=> b!1504100 m!1763571))

(assert (=> b!1504100 m!1763557))

(declare-fun m!1763573 () Bool)

(assert (=> b!1504100 m!1763573))

(declare-fun m!1763575 () Bool)

(assert (=> b!1504100 m!1763575))

(declare-fun m!1763577 () Bool)

(assert (=> b!1504100 m!1763577))

(declare-fun m!1763579 () Bool)

(assert (=> b!1504100 m!1763579))

(declare-fun m!1763581 () Bool)

(assert (=> b!1504100 m!1763581))

(declare-fun m!1763583 () Bool)

(assert (=> b!1504100 m!1763583))

(declare-fun m!1763585 () Bool)

(assert (=> b!1504100 m!1763585))

(declare-fun m!1763587 () Bool)

(assert (=> b!1504100 m!1763587))

(declare-fun m!1763589 () Bool)

(assert (=> b!1504100 m!1763589))

(declare-fun m!1763591 () Bool)

(assert (=> b!1504100 m!1763591))

(declare-fun m!1763593 () Bool)

(assert (=> b!1504100 m!1763593))

(assert (=> b!1504100 m!1763569))

(declare-fun m!1763595 () Bool)

(assert (=> b!1504100 m!1763595))

(declare-fun m!1763597 () Bool)

(assert (=> b!1504100 m!1763597))

(assert (=> b!1504100 m!1763561))

(declare-fun m!1763599 () Bool)

(assert (=> b!1504100 m!1763599))

(declare-fun m!1763601 () Bool)

(assert (=> b!1504100 m!1763601))

(declare-fun m!1763603 () Bool)

(assert (=> b!1504100 m!1763603))

(declare-fun m!1763605 () Bool)

(assert (=> b!1504100 m!1763605))

(declare-fun m!1763607 () Bool)

(assert (=> b!1504093 m!1763607))

(declare-fun m!1763609 () Bool)

(assert (=> b!1504116 m!1763609))

(declare-fun m!1763611 () Bool)

(assert (=> b!1504116 m!1763611))

(declare-fun m!1763613 () Bool)

(assert (=> b!1504107 m!1763613))

(assert (=> b!1504107 m!1763613))

(declare-fun m!1763615 () Bool)

(assert (=> b!1504107 m!1763615))

(declare-fun m!1763617 () Bool)

(assert (=> b!1504091 m!1763617))

(declare-fun m!1763619 () Bool)

(assert (=> b!1504091 m!1763619))

(declare-fun m!1763621 () Bool)

(assert (=> b!1504091 m!1763621))

(declare-fun m!1763623 () Bool)

(assert (=> b!1504091 m!1763623))

(declare-fun m!1763625 () Bool)

(assert (=> b!1504091 m!1763625))

(declare-fun m!1763627 () Bool)

(assert (=> b!1504065 m!1763627))

(declare-fun m!1763629 () Bool)

(assert (=> b!1504065 m!1763629))

(check-sat (not b!1504091) (not b!1504072) (not mapNonEmpty!6808) b_and!104645 (not b!1504069) b_and!104641 b_and!104637 (not b!1504107) (not b!1504071) (not b!1504102) b_and!104639 (not b!1504083) (not b!1504085) b_and!104635 (not mapNonEmpty!6807) (not b!1504087) b_and!104649 (not b!1504086) b_and!104643 (not b!1504104) (not b!1504106) (not b!1504084) (not mapNonEmpty!6809) (not b!1504073) (not b!1504116) (not b!1504100) (not b!1504082) (not b!1504066) b_and!104647 (not b_next!39665) (not b_next!39657) (not b_next!39659) (not b_next!39663) (not b!1504090) (not b!1504115) (not b!1504088) (not b!1504101) (not b!1504074) (not b!1504068) (not b!1504067) (not b!1504065) (not b!1504078) (not b!1504112) (not b!1504093) (not start!140582) (not b_next!39651) (not b!1504081) (not b!1504118) (not b!1504095) (not b!1504094) (not b!1504103) (not b_next!39653) (not b_next!39655) (not b_next!39661) (not b!1504097))
(check-sat b_and!104635 b_and!104649 b_and!104643 b_and!104647 b_and!104645 b_and!104641 b_and!104637 (not b_next!39651) (not b_next!39661) b_and!104639 (not b_next!39665) (not b_next!39657) (not b_next!39659) (not b_next!39663) (not b_next!39653) (not b_next!39655))
(get-model)

(declare-fun d!444493 () Bool)

(declare-fun c!246637 () Bool)

(assert (=> d!444493 (= c!246637 ((_ is Node!5407) (c!246632 input!1102)))))

(declare-fun e!961665 () Bool)

(assert (=> d!444493 (= (inv!21155 (c!246632 input!1102)) e!961665)))

(declare-fun b!1504125 () Bool)

(declare-fun inv!21163 (Conc!5407) Bool)

(assert (=> b!1504125 (= e!961665 (inv!21163 (c!246632 input!1102)))))

(declare-fun b!1504126 () Bool)

(declare-fun e!961666 () Bool)

(assert (=> b!1504126 (= e!961665 e!961666)))

(declare-fun res!677603 () Bool)

(assert (=> b!1504126 (= res!677603 (not ((_ is Leaf!8024) (c!246632 input!1102))))))

(assert (=> b!1504126 (=> res!677603 e!961666)))

(declare-fun b!1504127 () Bool)

(declare-fun inv!21164 (Conc!5407) Bool)

(assert (=> b!1504127 (= e!961666 (inv!21164 (c!246632 input!1102)))))

(assert (= (and d!444493 c!246637) b!1504125))

(assert (= (and d!444493 (not c!246637)) b!1504126))

(assert (= (and b!1504126 (not res!677603)) b!1504127))

(declare-fun m!1763631 () Bool)

(assert (=> b!1504125 m!1763631))

(declare-fun m!1763633 () Bool)

(assert (=> b!1504127 m!1763633))

(assert (=> b!1504067 d!444493))

(declare-fun d!444495 () Bool)

(declare-fun res!677606 () Bool)

(declare-fun e!961669 () Bool)

(assert (=> d!444495 (=> (not res!677606) (not e!961669))))

(declare-fun rulesValid!1037 (LexerInterface!2481 List!16007) Bool)

(assert (=> d!444495 (= res!677606 (rulesValid!1037 thiss!13241 rules!1640))))

(assert (=> d!444495 (= (rulesInvariant!2260 thiss!13241 rules!1640) e!961669)))

(declare-fun b!1504130 () Bool)

(declare-datatypes ((List!16012 0))(
  ( (Nil!15944) (Cons!15944 (h!21345 String!18852) (t!138945 List!16012)) )
))
(declare-fun noDuplicateTag!1037 (LexerInterface!2481 List!16007 List!16012) Bool)

(assert (=> b!1504130 (= e!961669 (noDuplicateTag!1037 thiss!13241 rules!1640 Nil!15944))))

(assert (= (and d!444495 res!677606) b!1504130))

(declare-fun m!1763635 () Bool)

(assert (=> d!444495 m!1763635))

(declare-fun m!1763637 () Bool)

(assert (=> b!1504130 m!1763637))

(assert (=> b!1504087 d!444495))

(declare-fun d!444497 () Bool)

(assert (=> d!444497 (= (isEmpty!9894 (list!6309 (_2!8322 lt!522726))) ((_ is Nil!15937) (list!6309 (_2!8322 lt!522726))))))

(assert (=> b!1504088 d!444497))

(declare-fun d!444499 () Bool)

(declare-fun list!6311 (Conc!5407) List!16005)

(assert (=> d!444499 (= (list!6309 (_2!8322 lt!522726)) (list!6311 (c!246632 (_2!8322 lt!522726))))))

(declare-fun bs!359903 () Bool)

(assert (= bs!359903 d!444499))

(declare-fun m!1763639 () Bool)

(assert (=> bs!359903 m!1763639))

(assert (=> b!1504088 d!444499))

(declare-fun d!444501 () Bool)

(declare-fun e!961672 () Bool)

(assert (=> d!444501 e!961672))

(declare-fun res!677609 () Bool)

(assert (=> d!444501 (=> (not res!677609) (not e!961672))))

(declare-fun isBalanced!1599 (Conc!5408) Bool)

(declare-fun prepend!452 (Conc!5408 Token!5318) Conc!5408)

(assert (=> d!444501 (= res!677609 (isBalanced!1599 (prepend!452 (c!246634 (_1!8322 lt!522723)) (_1!8323 (v!22756 lt!522730)))))))

(declare-fun lt!522754 () BalanceConc!10758)

(assert (=> d!444501 (= lt!522754 (BalanceConc!10759 (prepend!452 (c!246634 (_1!8322 lt!522723)) (_1!8323 (v!22756 lt!522730)))))))

(assert (=> d!444501 (= (prepend!451 (_1!8322 lt!522723) (_1!8323 (v!22756 lt!522730))) lt!522754)))

(declare-fun b!1504133 () Bool)

(assert (=> b!1504133 (= e!961672 (= (list!6310 lt!522754) (Cons!15938 (_1!8323 (v!22756 lt!522730)) (list!6310 (_1!8322 lt!522723)))))))

(assert (= (and d!444501 res!677609) b!1504133))

(declare-fun m!1763641 () Bool)

(assert (=> d!444501 m!1763641))

(assert (=> d!444501 m!1763641))

(declare-fun m!1763643 () Bool)

(assert (=> d!444501 m!1763643))

(declare-fun m!1763645 () Bool)

(assert (=> b!1504133 m!1763645))

(declare-fun m!1763647 () Bool)

(assert (=> b!1504133 m!1763647))

(assert (=> b!1504068 d!444501))

(declare-fun b!1504148 () Bool)

(declare-fun e!961682 () Bool)

(declare-fun e!961681 () Bool)

(assert (=> b!1504148 (= e!961682 e!961681)))

(declare-fun res!677618 () Bool)

(declare-fun lt!522761 () tuple2!14716)

(declare-fun size!12896 (BalanceConc!10756) Int)

(assert (=> b!1504148 (= res!677618 (< (size!12896 (_2!8322 lt!522761)) (size!12896 (_2!8323 (v!22756 lt!522730)))))))

(assert (=> b!1504148 (=> (not res!677618) (not e!961681))))

(declare-fun b!1504149 () Bool)

(declare-fun e!961683 () tuple2!14716)

(declare-fun lt!522762 () tuple2!14716)

(declare-fun lt!522763 () Option!2912)

(assert (=> b!1504149 (= e!961683 (tuple2!14717 (prepend!451 (_1!8322 lt!522762) (_1!8323 (v!22756 lt!522763))) (_2!8322 lt!522762)))))

(assert (=> b!1504149 (= lt!522762 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522763))))))

(declare-fun b!1504150 () Bool)

(assert (=> b!1504150 (= e!961683 (tuple2!14717 (BalanceConc!10759 Empty!5408) (_2!8323 (v!22756 lt!522730))))))

(declare-fun d!444503 () Bool)

(declare-fun e!961684 () Bool)

(assert (=> d!444503 e!961684))

(declare-fun res!677617 () Bool)

(assert (=> d!444503 (=> (not res!677617) (not e!961684))))

(assert (=> d!444503 (= res!677617 e!961682)))

(declare-fun c!246643 () Bool)

(declare-fun size!12897 (BalanceConc!10758) Int)

(assert (=> d!444503 (= c!246643 (> (size!12897 (_1!8322 lt!522761)) 0))))

(assert (=> d!444503 (= lt!522761 e!961683)))

(declare-fun c!246644 () Bool)

(assert (=> d!444503 (= c!246644 ((_ is Some!2911) lt!522763))))

(assert (=> d!444503 (= lt!522763 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522730))))))

(assert (=> d!444503 (= (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522730))) lt!522761)))

(declare-fun b!1504151 () Bool)

(assert (=> b!1504151 (= e!961682 (= (list!6309 (_2!8322 lt!522761)) (list!6309 (_2!8323 (v!22756 lt!522730)))))))

(declare-fun b!1504152 () Bool)

(declare-fun isEmpty!9896 (BalanceConc!10758) Bool)

(assert (=> b!1504152 (= e!961681 (not (isEmpty!9896 (_1!8322 lt!522761))))))

(declare-fun b!1504153 () Bool)

(declare-fun res!677616 () Bool)

(assert (=> b!1504153 (=> (not res!677616) (not e!961684))))

(assert (=> b!1504153 (= res!677616 (= (list!6310 (_1!8322 lt!522761)) (_1!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 (_2!8323 (v!22756 lt!522730)))))))))

(declare-fun b!1504154 () Bool)

(assert (=> b!1504154 (= e!961684 (= (list!6309 (_2!8322 lt!522761)) (_2!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 (_2!8323 (v!22756 lt!522730)))))))))

(assert (= (and d!444503 c!246644) b!1504149))

(assert (= (and d!444503 (not c!246644)) b!1504150))

(assert (= (and d!444503 c!246643) b!1504148))

(assert (= (and d!444503 (not c!246643)) b!1504151))

(assert (= (and b!1504148 res!677618) b!1504152))

(assert (= (and d!444503 res!677617) b!1504153))

(assert (= (and b!1504153 res!677616) b!1504154))

(declare-fun m!1763649 () Bool)

(assert (=> b!1504148 m!1763649))

(declare-fun m!1763651 () Bool)

(assert (=> b!1504148 m!1763651))

(declare-fun m!1763653 () Bool)

(assert (=> b!1504149 m!1763653))

(declare-fun m!1763655 () Bool)

(assert (=> b!1504149 m!1763655))

(declare-fun m!1763657 () Bool)

(assert (=> b!1504151 m!1763657))

(declare-fun m!1763659 () Bool)

(assert (=> b!1504151 m!1763659))

(assert (=> b!1504154 m!1763657))

(assert (=> b!1504154 m!1763659))

(assert (=> b!1504154 m!1763659))

(declare-fun m!1763661 () Bool)

(assert (=> b!1504154 m!1763661))

(declare-fun m!1763663 () Bool)

(assert (=> b!1504153 m!1763663))

(assert (=> b!1504153 m!1763659))

(assert (=> b!1504153 m!1763659))

(assert (=> b!1504153 m!1763661))

(declare-fun m!1763665 () Bool)

(assert (=> d!444503 m!1763665))

(declare-fun m!1763667 () Bool)

(assert (=> d!444503 m!1763667))

(declare-fun m!1763669 () Bool)

(assert (=> b!1504152 m!1763669))

(assert (=> b!1504068 d!444503))

(declare-fun d!444505 () Bool)

(declare-fun validCacheMapDown!130 (MutableMap!1376) Bool)

(assert (=> d!444505 (= (valid!1139 cacheDown!629) (validCacheMapDown!130 (cache!1757 cacheDown!629)))))

(declare-fun bs!359904 () Bool)

(assert (= bs!359904 d!444505))

(declare-fun m!1763671 () Bool)

(assert (=> bs!359904 m!1763671))

(assert (=> b!1504069 d!444505))

(declare-fun d!444507 () Bool)

(declare-fun e!961685 () Bool)

(assert (=> d!444507 e!961685))

(declare-fun res!677619 () Bool)

(assert (=> d!444507 (=> (not res!677619) (not e!961685))))

(assert (=> d!444507 (= res!677619 (isBalanced!1599 (prepend!452 (c!246634 (_1!8322 lt!522738)) (_1!8323 (v!22756 lt!522741)))))))

(declare-fun lt!522764 () BalanceConc!10758)

(assert (=> d!444507 (= lt!522764 (BalanceConc!10759 (prepend!452 (c!246634 (_1!8322 lt!522738)) (_1!8323 (v!22756 lt!522741)))))))

(assert (=> d!444507 (= (prepend!451 (_1!8322 lt!522738) (_1!8323 (v!22756 lt!522741))) lt!522764)))

(declare-fun b!1504155 () Bool)

(assert (=> b!1504155 (= e!961685 (= (list!6310 lt!522764) (Cons!15938 (_1!8323 (v!22756 lt!522741)) (list!6310 (_1!8322 lt!522738)))))))

(assert (= (and d!444507 res!677619) b!1504155))

(declare-fun m!1763673 () Bool)

(assert (=> d!444507 m!1763673))

(assert (=> d!444507 m!1763673))

(declare-fun m!1763675 () Bool)

(assert (=> d!444507 m!1763675))

(declare-fun m!1763677 () Bool)

(assert (=> b!1504155 m!1763677))

(declare-fun m!1763679 () Bool)

(assert (=> b!1504155 m!1763679))

(assert (=> b!1504065 d!444507))

(declare-fun b!1504156 () Bool)

(declare-fun e!961687 () Bool)

(declare-fun e!961686 () Bool)

(assert (=> b!1504156 (= e!961687 e!961686)))

(declare-fun res!677622 () Bool)

(declare-fun lt!522765 () tuple2!14716)

(assert (=> b!1504156 (= res!677622 (< (size!12896 (_2!8322 lt!522765)) (size!12896 (_2!8323 (v!22756 lt!522741)))))))

(assert (=> b!1504156 (=> (not res!677622) (not e!961686))))

(declare-fun b!1504157 () Bool)

(declare-fun e!961688 () tuple2!14716)

(declare-fun lt!522766 () tuple2!14716)

(declare-fun lt!522767 () Option!2912)

(assert (=> b!1504157 (= e!961688 (tuple2!14717 (prepend!451 (_1!8322 lt!522766) (_1!8323 (v!22756 lt!522767))) (_2!8322 lt!522766)))))

(assert (=> b!1504157 (= lt!522766 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522767))))))

(declare-fun b!1504158 () Bool)

(assert (=> b!1504158 (= e!961688 (tuple2!14717 (BalanceConc!10759 Empty!5408) (_2!8323 (v!22756 lt!522741))))))

(declare-fun d!444509 () Bool)

(declare-fun e!961689 () Bool)

(assert (=> d!444509 e!961689))

(declare-fun res!677621 () Bool)

(assert (=> d!444509 (=> (not res!677621) (not e!961689))))

(assert (=> d!444509 (= res!677621 e!961687)))

(declare-fun c!246645 () Bool)

(assert (=> d!444509 (= c!246645 (> (size!12897 (_1!8322 lt!522765)) 0))))

(assert (=> d!444509 (= lt!522765 e!961688)))

(declare-fun c!246646 () Bool)

(assert (=> d!444509 (= c!246646 ((_ is Some!2911) lt!522767))))

(assert (=> d!444509 (= lt!522767 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522741))))))

(assert (=> d!444509 (= (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522741))) lt!522765)))

(declare-fun b!1504159 () Bool)

(assert (=> b!1504159 (= e!961687 (= (list!6309 (_2!8322 lt!522765)) (list!6309 (_2!8323 (v!22756 lt!522741)))))))

(declare-fun b!1504160 () Bool)

(assert (=> b!1504160 (= e!961686 (not (isEmpty!9896 (_1!8322 lt!522765))))))

(declare-fun b!1504161 () Bool)

(declare-fun res!677620 () Bool)

(assert (=> b!1504161 (=> (not res!677620) (not e!961689))))

(assert (=> b!1504161 (= res!677620 (= (list!6310 (_1!8322 lt!522765)) (_1!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 (_2!8323 (v!22756 lt!522741)))))))))

(declare-fun b!1504162 () Bool)

(assert (=> b!1504162 (= e!961689 (= (list!6309 (_2!8322 lt!522765)) (_2!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 (_2!8323 (v!22756 lt!522741)))))))))

(assert (= (and d!444509 c!246646) b!1504157))

(assert (= (and d!444509 (not c!246646)) b!1504158))

(assert (= (and d!444509 c!246645) b!1504156))

(assert (= (and d!444509 (not c!246645)) b!1504159))

(assert (= (and b!1504156 res!677622) b!1504160))

(assert (= (and d!444509 res!677621) b!1504161))

(assert (= (and b!1504161 res!677620) b!1504162))

(declare-fun m!1763681 () Bool)

(assert (=> b!1504156 m!1763681))

(declare-fun m!1763683 () Bool)

(assert (=> b!1504156 m!1763683))

(declare-fun m!1763685 () Bool)

(assert (=> b!1504157 m!1763685))

(declare-fun m!1763687 () Bool)

(assert (=> b!1504157 m!1763687))

(declare-fun m!1763689 () Bool)

(assert (=> b!1504159 m!1763689))

(declare-fun m!1763691 () Bool)

(assert (=> b!1504159 m!1763691))

(assert (=> b!1504162 m!1763689))

(assert (=> b!1504162 m!1763691))

(assert (=> b!1504162 m!1763691))

(declare-fun m!1763693 () Bool)

(assert (=> b!1504162 m!1763693))

(declare-fun m!1763695 () Bool)

(assert (=> b!1504161 m!1763695))

(assert (=> b!1504161 m!1763691))

(assert (=> b!1504161 m!1763691))

(assert (=> b!1504161 m!1763693))

(declare-fun m!1763697 () Bool)

(assert (=> d!444509 m!1763697))

(declare-fun m!1763699 () Bool)

(assert (=> d!444509 m!1763699))

(declare-fun m!1763701 () Bool)

(assert (=> b!1504160 m!1763701))

(assert (=> b!1504065 d!444509))

(declare-fun d!444511 () Bool)

(assert (=> d!444511 (= (array_inv!1630 (_keys!1724 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) (bvsge (size!12892 (_keys!1724 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1504066 d!444511))

(declare-fun d!444513 () Bool)

(assert (=> d!444513 (= (array_inv!1631 (_values!1709 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) (bvsge (size!12893 (_values!1709 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1504066 d!444513))

(declare-fun d!444515 () Bool)

(declare-fun c!246649 () Bool)

(assert (=> d!444515 (= c!246649 ((_ is Node!5408) (c!246634 acc!392)))))

(declare-fun e!961694 () Bool)

(assert (=> d!444515 (= (inv!21156 (c!246634 acc!392)) e!961694)))

(declare-fun b!1504169 () Bool)

(declare-fun inv!21165 (Conc!5408) Bool)

(assert (=> b!1504169 (= e!961694 (inv!21165 (c!246634 acc!392)))))

(declare-fun b!1504170 () Bool)

(declare-fun e!961695 () Bool)

(assert (=> b!1504170 (= e!961694 e!961695)))

(declare-fun res!677625 () Bool)

(assert (=> b!1504170 (= res!677625 (not ((_ is Leaf!8025) (c!246634 acc!392))))))

(assert (=> b!1504170 (=> res!677625 e!961695)))

(declare-fun b!1504171 () Bool)

(declare-fun inv!21166 (Conc!5408) Bool)

(assert (=> b!1504171 (= e!961695 (inv!21166 (c!246634 acc!392)))))

(assert (= (and d!444515 c!246649) b!1504169))

(assert (= (and d!444515 (not c!246649)) b!1504170))

(assert (= (and b!1504170 (not res!677625)) b!1504171))

(declare-fun m!1763703 () Bool)

(assert (=> b!1504169 m!1763703))

(declare-fun m!1763705 () Bool)

(assert (=> b!1504171 m!1763705))

(assert (=> b!1504085 d!444515))

(declare-fun d!444517 () Bool)

(assert (=> d!444517 (= (inv!21148 (tag!3092 (h!21340 rules!1640))) (= (mod (str.len (value!90257 (tag!3092 (h!21340 rules!1640)))) 2) 0))))

(assert (=> b!1504086 d!444517))

(declare-fun d!444519 () Bool)

(declare-fun res!677628 () Bool)

(declare-fun e!961698 () Bool)

(assert (=> d!444519 (=> (not res!677628) (not e!961698))))

(declare-fun semiInverseModEq!1066 (Int Int) Bool)

(assert (=> d!444519 (= res!677628 (semiInverseModEq!1066 (toChars!4034 (transformation!2828 (h!21340 rules!1640))) (toValue!4175 (transformation!2828 (h!21340 rules!1640)))))))

(assert (=> d!444519 (= (inv!21157 (transformation!2828 (h!21340 rules!1640))) e!961698)))

(declare-fun b!1504174 () Bool)

(declare-fun equivClasses!1025 (Int Int) Bool)

(assert (=> b!1504174 (= e!961698 (equivClasses!1025 (toChars!4034 (transformation!2828 (h!21340 rules!1640))) (toValue!4175 (transformation!2828 (h!21340 rules!1640)))))))

(assert (= (and d!444519 res!677628) b!1504174))

(declare-fun m!1763707 () Bool)

(assert (=> d!444519 m!1763707))

(declare-fun m!1763709 () Bool)

(assert (=> b!1504174 m!1763709))

(assert (=> b!1504086 d!444519))

(declare-fun b!1504199 () Bool)

(declare-fun res!677649 () Bool)

(declare-fun e!961715 () Bool)

(assert (=> b!1504199 (=> (not res!677649) (not e!961715))))

(declare-fun lt!522792 () tuple4!632)

(assert (=> b!1504199 (= res!677649 (valid!1139 (_3!966 lt!522792)))))

(declare-fun b!1504200 () Bool)

(declare-datatypes ((tuple4!634 0))(
  ( (tuple4!635 (_1!8332 Option!2912) (_2!8332 CacheUp!816) (_3!967 CacheFurthestNullable!240) (_4!317 CacheDown!820)) )
))
(declare-fun e!961716 () tuple4!634)

(declare-fun lt!522788 () tuple4!632)

(assert (=> b!1504200 (= e!961716 (tuple4!635 (_1!8330 lt!522788) (_2!8330 lt!522788) (_4!316 lt!522788) (_3!966 lt!522788)))))

(declare-fun call!99918 () tuple4!632)

(assert (=> b!1504200 (= lt!522788 call!99918)))

(declare-fun b!1504201 () Bool)

(declare-fun res!677650 () Bool)

(assert (=> b!1504201 (=> (not res!677650) (not e!961715))))

(assert (=> b!1504201 (= res!677650 (valid!1141 (_2!8330 lt!522792)))))

(declare-fun e!961714 () Bool)

(declare-fun b!1504202 () Bool)

(declare-fun get!4720 (Option!2912) tuple2!14718)

(declare-datatypes ((tuple2!14730 0))(
  ( (tuple2!14731 (_1!8333 Token!5318) (_2!8333 List!16005)) )
))
(declare-datatypes ((Option!2913 0))(
  ( (None!2912) (Some!2912 (v!22765 tuple2!14730)) )
))
(declare-fun get!4721 (Option!2913) tuple2!14730)

(declare-fun maxPrefix!1204 (LexerInterface!2481 List!16007 List!16005) Option!2913)

(assert (=> b!1504202 (= e!961714 (= (list!6309 (_2!8323 (get!4720 (_1!8330 lt!522792)))) (_2!8333 (get!4721 (maxPrefix!1204 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(declare-fun b!1504203 () Bool)

(declare-fun lt!522789 () tuple4!632)

(declare-fun lt!522794 () tuple4!632)

(assert (=> b!1504203 (= e!961716 (tuple4!635 (ite (and ((_ is None!2911) (_1!8330 lt!522789)) ((_ is None!2911) (_1!8330 lt!522794))) None!2911 (ite ((_ is None!2911) (_1!8330 lt!522794)) (_1!8330 lt!522789) (ite ((_ is None!2911) (_1!8330 lt!522789)) (_1!8330 lt!522794) (ite (>= (size!12891 (_1!8323 (v!22756 (_1!8330 lt!522789)))) (size!12891 (_1!8323 (v!22756 (_1!8330 lt!522794))))) (_1!8330 lt!522789) (_1!8330 lt!522794))))) (_2!8330 lt!522794) (_4!316 lt!522794) (_3!966 lt!522794)))))

(assert (=> b!1504203 (= lt!522789 call!99918)))

(assert (=> b!1504203 (= lt!522794 (maxPrefixZipperSequenceV3Mem!17 thiss!13241 (t!138936 rules!1640) input!1102 totalInput!458 (_2!8330 lt!522789) (_3!966 lt!522789) (_4!316 lt!522789)))))

(declare-fun d!444521 () Bool)

(assert (=> d!444521 e!961715))

(declare-fun res!677655 () Bool)

(assert (=> d!444521 (=> (not res!677655) (not e!961715))))

(declare-fun isDefined!2345 (Option!2912) Bool)

(declare-fun isDefined!2346 (Option!2913) Bool)

(declare-fun maxPrefixZipper!255 (LexerInterface!2481 List!16007 List!16005) Option!2913)

(assert (=> d!444521 (= res!677655 (= (isDefined!2345 (_1!8330 lt!522792)) (isDefined!2346 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 input!1102)))))))

(declare-fun lt!522786 () tuple4!634)

(assert (=> d!444521 (= lt!522792 (tuple4!633 (_1!8332 lt!522786) (_2!8332 lt!522786) (_4!317 lt!522786) (_3!967 lt!522786)))))

(assert (=> d!444521 (= lt!522786 e!961716)))

(declare-fun c!246652 () Bool)

(assert (=> d!444521 (= c!246652 (and ((_ is Cons!15939) rules!1640) ((_ is Nil!15939) (t!138936 rules!1640))))))

(declare-fun lt!522790 () Unit!25695)

(declare-fun lt!522787 () Unit!25695)

(assert (=> d!444521 (= lt!522790 lt!522787)))

(declare-fun lt!522793 () List!16005)

(declare-fun lt!522791 () List!16005)

(declare-fun isPrefix!1214 (List!16005 List!16005) Bool)

(assert (=> d!444521 (isPrefix!1214 lt!522793 lt!522791)))

(declare-fun lemmaIsPrefixRefl!844 (List!16005 List!16005) Unit!25695)

(assert (=> d!444521 (= lt!522787 (lemmaIsPrefixRefl!844 lt!522793 lt!522791))))

(assert (=> d!444521 (= lt!522791 (list!6309 input!1102))))

(assert (=> d!444521 (= lt!522793 (list!6309 input!1102))))

(declare-fun rulesValidInductive!852 (LexerInterface!2481 List!16007) Bool)

(assert (=> d!444521 (rulesValidInductive!852 thiss!13241 rules!1640)))

(assert (=> d!444521 (= (maxPrefixZipperSequenceV3Mem!17 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!522792)))

(declare-fun b!1504204 () Bool)

(assert (=> b!1504204 (= e!961715 (= (totalInput!2272 (_4!316 lt!522792)) totalInput!458))))

(declare-fun b!1504205 () Bool)

(declare-fun e!961713 () Bool)

(assert (=> b!1504205 (= e!961713 e!961714)))

(declare-fun res!677654 () Bool)

(assert (=> b!1504205 (=> (not res!677654) (not e!961714))))

(assert (=> b!1504205 (= res!677654 (= (_1!8323 (get!4720 (_1!8330 lt!522792))) (_1!8333 (get!4721 (maxPrefix!1204 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(declare-fun b!1504206 () Bool)

(declare-fun res!677652 () Bool)

(assert (=> b!1504206 (=> (not res!677652) (not e!961715))))

(declare-fun e!961711 () Bool)

(assert (=> b!1504206 (= res!677652 e!961711)))

(declare-fun res!677658 () Bool)

(assert (=> b!1504206 (=> res!677658 e!961711)))

(assert (=> b!1504206 (= res!677658 (not (isDefined!2345 (_1!8330 lt!522792))))))

(declare-fun b!1504207 () Bool)

(declare-fun e!961712 () Bool)

(assert (=> b!1504207 (= e!961711 e!961712)))

(declare-fun res!677657 () Bool)

(assert (=> b!1504207 (=> (not res!677657) (not e!961712))))

(assert (=> b!1504207 (= res!677657 (= (_1!8323 (get!4720 (_1!8330 lt!522792))) (_1!8333 (get!4721 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(declare-fun b!1504208 () Bool)

(declare-fun res!677656 () Bool)

(assert (=> b!1504208 (=> (not res!677656) (not e!961715))))

(assert (=> b!1504208 (= res!677656 e!961713)))

(declare-fun res!677653 () Bool)

(assert (=> b!1504208 (=> res!677653 e!961713)))

(assert (=> b!1504208 (= res!677653 (not (isDefined!2345 (_1!8330 lt!522792))))))

(declare-fun b!1504209 () Bool)

(declare-fun res!677651 () Bool)

(assert (=> b!1504209 (=> (not res!677651) (not e!961715))))

(assert (=> b!1504209 (= res!677651 (valid!1140 (_4!316 lt!522792)))))

(declare-fun bm!99913 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!7 (LexerInterface!2481 Rule!5456 BalanceConc!10756 BalanceConc!10756 CacheUp!816 CacheDown!820 CacheFurthestNullable!240) tuple4!632)

(assert (=> bm!99913 (= call!99918 (maxPrefixOneRuleZipperSequenceV3Mem!7 thiss!13241 (h!21340 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1504210 () Bool)

(assert (=> b!1504210 (= e!961712 (= (list!6309 (_2!8323 (get!4720 (_1!8330 lt!522792)))) (_2!8333 (get!4721 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(assert (= (and d!444521 c!246652) b!1504200))

(assert (= (and d!444521 (not c!246652)) b!1504203))

(assert (= (or b!1504200 b!1504203) bm!99913))

(assert (= (and d!444521 res!677655) b!1504206))

(assert (= (and b!1504206 (not res!677658)) b!1504207))

(assert (= (and b!1504207 res!677657) b!1504210))

(assert (= (and b!1504206 res!677652) b!1504208))

(assert (= (and b!1504208 (not res!677653)) b!1504205))

(assert (= (and b!1504205 res!677654) b!1504202))

(assert (= (and b!1504208 res!677656) b!1504201))

(assert (= (and b!1504201 res!677650) b!1504199))

(assert (= (and b!1504199 res!677649) b!1504209))

(assert (= (and b!1504209 res!677651) b!1504204))

(declare-fun m!1763711 () Bool)

(assert (=> b!1504208 m!1763711))

(declare-fun m!1763713 () Bool)

(assert (=> b!1504207 m!1763713))

(assert (=> b!1504207 m!1763481))

(assert (=> b!1504207 m!1763481))

(declare-fun m!1763715 () Bool)

(assert (=> b!1504207 m!1763715))

(assert (=> b!1504207 m!1763715))

(declare-fun m!1763717 () Bool)

(assert (=> b!1504207 m!1763717))

(declare-fun m!1763719 () Bool)

(assert (=> b!1504203 m!1763719))

(declare-fun m!1763721 () Bool)

(assert (=> b!1504209 m!1763721))

(declare-fun m!1763723 () Bool)

(assert (=> bm!99913 m!1763723))

(assert (=> b!1504206 m!1763711))

(declare-fun m!1763725 () Bool)

(assert (=> b!1504199 m!1763725))

(declare-fun m!1763727 () Bool)

(assert (=> b!1504202 m!1763727))

(declare-fun m!1763729 () Bool)

(assert (=> b!1504202 m!1763729))

(declare-fun m!1763731 () Bool)

(assert (=> b!1504202 m!1763731))

(assert (=> b!1504202 m!1763713))

(assert (=> b!1504202 m!1763481))

(assert (=> b!1504202 m!1763481))

(assert (=> b!1504202 m!1763729))

(assert (=> b!1504210 m!1763727))

(assert (=> b!1504210 m!1763481))

(assert (=> b!1504210 m!1763713))

(assert (=> b!1504210 m!1763481))

(assert (=> b!1504210 m!1763715))

(assert (=> b!1504210 m!1763715))

(assert (=> b!1504210 m!1763717))

(assert (=> d!444521 m!1763481))

(assert (=> d!444521 m!1763715))

(declare-fun m!1763733 () Bool)

(assert (=> d!444521 m!1763733))

(assert (=> d!444521 m!1763481))

(assert (=> d!444521 m!1763715))

(declare-fun m!1763735 () Bool)

(assert (=> d!444521 m!1763735))

(assert (=> d!444521 m!1763711))

(declare-fun m!1763737 () Bool)

(assert (=> d!444521 m!1763737))

(declare-fun m!1763739 () Bool)

(assert (=> d!444521 m!1763739))

(assert (=> b!1504205 m!1763713))

(assert (=> b!1504205 m!1763481))

(assert (=> b!1504205 m!1763481))

(assert (=> b!1504205 m!1763729))

(assert (=> b!1504205 m!1763729))

(assert (=> b!1504205 m!1763731))

(declare-fun m!1763741 () Bool)

(assert (=> b!1504201 m!1763741))

(assert (=> b!1504106 d!444521))

(declare-fun d!444523 () Bool)

(declare-fun list!6312 (Conc!5408) List!16006)

(assert (=> d!444523 (= (list!6310 (++!4306 lt!522734 (_1!8322 lt!522718))) (list!6312 (c!246634 (++!4306 lt!522734 (_1!8322 lt!522718)))))))

(declare-fun bs!359905 () Bool)

(assert (= bs!359905 d!444523))

(declare-fun m!1763743 () Bool)

(assert (=> bs!359905 m!1763743))

(assert (=> b!1504107 d!444523))

(declare-fun e!961719 () Bool)

(declare-fun b!1504222 () Bool)

(declare-fun lt!522797 () BalanceConc!10758)

(assert (=> b!1504222 (= e!961719 (= (list!6310 lt!522797) (++!4309 (list!6310 lt!522734) (list!6310 (_1!8322 lt!522718)))))))

(declare-fun b!1504221 () Bool)

(declare-fun res!677670 () Bool)

(assert (=> b!1504221 (=> (not res!677670) (not e!961719))))

(declare-fun height!801 (Conc!5408) Int)

(declare-fun ++!4310 (Conc!5408 Conc!5408) Conc!5408)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1504221 (= res!677670 (>= (height!801 (++!4310 (c!246634 lt!522734) (c!246634 (_1!8322 lt!522718)))) (max!0 (height!801 (c!246634 lt!522734)) (height!801 (c!246634 (_1!8322 lt!522718))))))))

(declare-fun b!1504219 () Bool)

(declare-fun res!677668 () Bool)

(assert (=> b!1504219 (=> (not res!677668) (not e!961719))))

(assert (=> b!1504219 (= res!677668 (isBalanced!1599 (++!4310 (c!246634 lt!522734) (c!246634 (_1!8322 lt!522718)))))))

(declare-fun b!1504220 () Bool)

(declare-fun res!677667 () Bool)

(assert (=> b!1504220 (=> (not res!677667) (not e!961719))))

(assert (=> b!1504220 (= res!677667 (<= (height!801 (++!4310 (c!246634 lt!522734) (c!246634 (_1!8322 lt!522718)))) (+ (max!0 (height!801 (c!246634 lt!522734)) (height!801 (c!246634 (_1!8322 lt!522718)))) 1)))))

(declare-fun d!444525 () Bool)

(assert (=> d!444525 e!961719))

(declare-fun res!677669 () Bool)

(assert (=> d!444525 (=> (not res!677669) (not e!961719))))

(declare-fun appendAssocInst!359 (Conc!5408 Conc!5408) Bool)

(assert (=> d!444525 (= res!677669 (appendAssocInst!359 (c!246634 lt!522734) (c!246634 (_1!8322 lt!522718))))))

(assert (=> d!444525 (= lt!522797 (BalanceConc!10759 (++!4310 (c!246634 lt!522734) (c!246634 (_1!8322 lt!522718)))))))

(assert (=> d!444525 (= (++!4306 lt!522734 (_1!8322 lt!522718)) lt!522797)))

(assert (= (and d!444525 res!677669) b!1504219))

(assert (= (and b!1504219 res!677668) b!1504220))

(assert (= (and b!1504220 res!677667) b!1504221))

(assert (= (and b!1504221 res!677670) b!1504222))

(declare-fun m!1763745 () Bool)

(assert (=> b!1504222 m!1763745))

(assert (=> b!1504222 m!1763595))

(assert (=> b!1504222 m!1763601))

(assert (=> b!1504222 m!1763595))

(assert (=> b!1504222 m!1763601))

(declare-fun m!1763747 () Bool)

(assert (=> b!1504222 m!1763747))

(declare-fun m!1763749 () Bool)

(assert (=> b!1504221 m!1763749))

(declare-fun m!1763751 () Bool)

(assert (=> b!1504221 m!1763751))

(declare-fun m!1763753 () Bool)

(assert (=> b!1504221 m!1763753))

(assert (=> b!1504221 m!1763751))

(declare-fun m!1763755 () Bool)

(assert (=> b!1504221 m!1763755))

(assert (=> b!1504221 m!1763749))

(assert (=> b!1504221 m!1763753))

(declare-fun m!1763757 () Bool)

(assert (=> b!1504221 m!1763757))

(declare-fun m!1763759 () Bool)

(assert (=> d!444525 m!1763759))

(assert (=> d!444525 m!1763751))

(assert (=> b!1504220 m!1763749))

(assert (=> b!1504220 m!1763751))

(assert (=> b!1504220 m!1763753))

(assert (=> b!1504220 m!1763751))

(assert (=> b!1504220 m!1763755))

(assert (=> b!1504220 m!1763749))

(assert (=> b!1504220 m!1763753))

(assert (=> b!1504220 m!1763757))

(assert (=> b!1504219 m!1763751))

(assert (=> b!1504219 m!1763751))

(declare-fun m!1763761 () Bool)

(assert (=> b!1504219 m!1763761))

(assert (=> b!1504107 d!444525))

(declare-fun d!444527 () Bool)

(assert (=> d!444527 (= (isEmpty!9895 rules!1640) ((_ is Nil!15939) rules!1640))))

(assert (=> b!1504082 d!444527))

(declare-fun d!444529 () Bool)

(assert (=> d!444529 (= (array_inv!1630 (_keys!1725 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) (bvsge (size!12892 (_keys!1725 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1504103 d!444529))

(declare-fun d!444531 () Bool)

(assert (=> d!444531 (= (array_inv!1633 (_values!1710 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) (bvsge (size!12894 (_values!1710 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1504103 d!444531))

(declare-fun d!444533 () Bool)

(declare-fun validCacheMapFurthestNullable!43 (MutableMap!1375 BalanceConc!10756) Bool)

(assert (=> d!444533 (= (valid!1140 cacheFurthestNullable!64) (validCacheMapFurthestNullable!43 (cache!1756 cacheFurthestNullable!64) (totalInput!2272 cacheFurthestNullable!64)))))

(declare-fun bs!359906 () Bool)

(assert (= bs!359906 d!444533))

(declare-fun m!1763763 () Bool)

(assert (=> bs!359906 m!1763763))

(assert (=> b!1504083 d!444533))

(declare-fun d!444535 () Bool)

(declare-fun c!246656 () Bool)

(assert (=> d!444535 (= c!246656 ((_ is Node!5407) (c!246632 totalInput!458)))))

(declare-fun e!961720 () Bool)

(assert (=> d!444535 (= (inv!21155 (c!246632 totalInput!458)) e!961720)))

(declare-fun b!1504223 () Bool)

(assert (=> b!1504223 (= e!961720 (inv!21163 (c!246632 totalInput!458)))))

(declare-fun b!1504224 () Bool)

(declare-fun e!961721 () Bool)

(assert (=> b!1504224 (= e!961720 e!961721)))

(declare-fun res!677671 () Bool)

(assert (=> b!1504224 (= res!677671 (not ((_ is Leaf!8024) (c!246632 totalInput!458))))))

(assert (=> b!1504224 (=> res!677671 e!961721)))

(declare-fun b!1504225 () Bool)

(assert (=> b!1504225 (= e!961721 (inv!21164 (c!246632 totalInput!458)))))

(assert (= (and d!444535 c!246656) b!1504223))

(assert (= (and d!444535 (not c!246656)) b!1504224))

(assert (= (and b!1504224 (not res!677671)) b!1504225))

(declare-fun m!1763765 () Bool)

(assert (=> b!1504223 m!1763765))

(declare-fun m!1763767 () Bool)

(assert (=> b!1504225 m!1763767))

(assert (=> b!1504084 d!444535))

(declare-fun d!444537 () Bool)

(assert (=> d!444537 (= (valid!1139 (_3!966 lt!522731)) (validCacheMapDown!130 (cache!1757 (_3!966 lt!522731))))))

(declare-fun bs!359907 () Bool)

(assert (= bs!359907 d!444537))

(declare-fun m!1763769 () Bool)

(assert (=> bs!359907 m!1763769))

(assert (=> b!1504118 d!444537))

(declare-fun d!444539 () Bool)

(declare-fun e!961724 () Bool)

(assert (=> d!444539 e!961724))

(declare-fun res!677674 () Bool)

(assert (=> d!444539 (=> res!677674 e!961724)))

(declare-fun lt!522800 () Bool)

(assert (=> d!444539 (= res!677674 (not lt!522800))))

(declare-fun drop!755 (List!16005 Int) List!16005)

(declare-fun size!12898 (List!16005) Int)

(assert (=> d!444539 (= lt!522800 (= lt!522749 (drop!755 lt!522713 (- (size!12898 lt!522713) (size!12898 lt!522749)))))))

(assert (=> d!444539 (= (isSuffix!290 lt!522749 lt!522713) lt!522800)))

(declare-fun b!1504228 () Bool)

(assert (=> b!1504228 (= e!961724 (>= (size!12898 lt!522713) (size!12898 lt!522749)))))

(assert (= (and d!444539 (not res!677674)) b!1504228))

(declare-fun m!1763771 () Bool)

(assert (=> d!444539 m!1763771))

(declare-fun m!1763773 () Bool)

(assert (=> d!444539 m!1763773))

(declare-fun m!1763775 () Bool)

(assert (=> d!444539 m!1763775))

(assert (=> b!1504228 m!1763771))

(assert (=> b!1504228 m!1763773))

(assert (=> b!1504100 d!444539))

(declare-fun e!961729 () Bool)

(declare-fun b!1504240 () Bool)

(declare-fun lt!522803 () List!16006)

(assert (=> b!1504240 (= e!961729 (or (not (= lt!522717 Nil!15938)) (= lt!522803 (++!4309 lt!522733 lt!522728))))))

(declare-fun d!444541 () Bool)

(assert (=> d!444541 e!961729))

(declare-fun res!677680 () Bool)

(assert (=> d!444541 (=> (not res!677680) (not e!961729))))

(declare-fun content!2302 (List!16006) (InoxSet Token!5318))

(assert (=> d!444541 (= res!677680 (= (content!2302 lt!522803) ((_ map or) (content!2302 (++!4309 lt!522733 lt!522728)) (content!2302 lt!522717))))))

(declare-fun e!961730 () List!16006)

(assert (=> d!444541 (= lt!522803 e!961730)))

(declare-fun c!246659 () Bool)

(assert (=> d!444541 (= c!246659 ((_ is Nil!15938) (++!4309 lt!522733 lt!522728)))))

(assert (=> d!444541 (= (++!4309 (++!4309 lt!522733 lt!522728) lt!522717) lt!522803)))

(declare-fun b!1504237 () Bool)

(assert (=> b!1504237 (= e!961730 lt!522717)))

(declare-fun b!1504239 () Bool)

(declare-fun res!677679 () Bool)

(assert (=> b!1504239 (=> (not res!677679) (not e!961729))))

(declare-fun size!12899 (List!16006) Int)

(assert (=> b!1504239 (= res!677679 (= (size!12899 lt!522803) (+ (size!12899 (++!4309 lt!522733 lt!522728)) (size!12899 lt!522717))))))

(declare-fun b!1504238 () Bool)

(assert (=> b!1504238 (= e!961730 (Cons!15938 (h!21339 (++!4309 lt!522733 lt!522728)) (++!4309 (t!138935 (++!4309 lt!522733 lt!522728)) lt!522717)))))

(assert (= (and d!444541 c!246659) b!1504237))

(assert (= (and d!444541 (not c!246659)) b!1504238))

(assert (= (and d!444541 res!677680) b!1504239))

(assert (= (and b!1504239 res!677679) b!1504240))

(declare-fun m!1763777 () Bool)

(assert (=> d!444541 m!1763777))

(assert (=> d!444541 m!1763557))

(declare-fun m!1763779 () Bool)

(assert (=> d!444541 m!1763779))

(declare-fun m!1763781 () Bool)

(assert (=> d!444541 m!1763781))

(declare-fun m!1763783 () Bool)

(assert (=> b!1504239 m!1763783))

(assert (=> b!1504239 m!1763557))

(declare-fun m!1763785 () Bool)

(assert (=> b!1504239 m!1763785))

(declare-fun m!1763787 () Bool)

(assert (=> b!1504239 m!1763787))

(declare-fun m!1763789 () Bool)

(assert (=> b!1504238 m!1763789))

(assert (=> b!1504100 d!444541))

(declare-fun d!444543 () Bool)

(declare-fun e!961736 () Bool)

(assert (=> d!444543 e!961736))

(declare-fun res!677685 () Bool)

(assert (=> d!444543 (=> (not res!677685) (not e!961736))))

(declare-fun lt!522806 () List!16005)

(declare-fun content!2303 (List!16005) (InoxSet C!8464))

(assert (=> d!444543 (= res!677685 (= (content!2303 lt!522806) ((_ map or) (content!2303 lt!522732) (content!2303 lt!522749))))))

(declare-fun e!961735 () List!16005)

(assert (=> d!444543 (= lt!522806 e!961735)))

(declare-fun c!246662 () Bool)

(assert (=> d!444543 (= c!246662 ((_ is Nil!15937) lt!522732))))

(assert (=> d!444543 (= (++!4307 lt!522732 lt!522749) lt!522806)))

(declare-fun b!1504251 () Bool)

(declare-fun res!677686 () Bool)

(assert (=> b!1504251 (=> (not res!677686) (not e!961736))))

(assert (=> b!1504251 (= res!677686 (= (size!12898 lt!522806) (+ (size!12898 lt!522732) (size!12898 lt!522749))))))

(declare-fun b!1504250 () Bool)

(assert (=> b!1504250 (= e!961735 (Cons!15937 (h!21338 lt!522732) (++!4307 (t!138934 lt!522732) lt!522749)))))

(declare-fun b!1504252 () Bool)

(assert (=> b!1504252 (= e!961736 (or (not (= lt!522749 Nil!15937)) (= lt!522806 lt!522732)))))

(declare-fun b!1504249 () Bool)

(assert (=> b!1504249 (= e!961735 lt!522749)))

(assert (= (and d!444543 c!246662) b!1504249))

(assert (= (and d!444543 (not c!246662)) b!1504250))

(assert (= (and d!444543 res!677685) b!1504251))

(assert (= (and b!1504251 res!677686) b!1504252))

(declare-fun m!1763791 () Bool)

(assert (=> d!444543 m!1763791))

(declare-fun m!1763793 () Bool)

(assert (=> d!444543 m!1763793))

(declare-fun m!1763795 () Bool)

(assert (=> d!444543 m!1763795))

(declare-fun m!1763797 () Bool)

(assert (=> b!1504251 m!1763797))

(declare-fun m!1763799 () Bool)

(assert (=> b!1504251 m!1763799))

(assert (=> b!1504251 m!1763773))

(declare-fun m!1763801 () Bool)

(assert (=> b!1504250 m!1763801))

(assert (=> b!1504100 d!444543))

(declare-fun e!961737 () Bool)

(declare-fun b!1504256 () Bool)

(declare-fun lt!522807 () List!16006)

(assert (=> b!1504256 (= e!961737 (or (not (= (++!4309 lt!522728 lt!522717) Nil!15938)) (= lt!522807 lt!522733)))))

(declare-fun d!444545 () Bool)

(assert (=> d!444545 e!961737))

(declare-fun res!677688 () Bool)

(assert (=> d!444545 (=> (not res!677688) (not e!961737))))

(assert (=> d!444545 (= res!677688 (= (content!2302 lt!522807) ((_ map or) (content!2302 lt!522733) (content!2302 (++!4309 lt!522728 lt!522717)))))))

(declare-fun e!961738 () List!16006)

(assert (=> d!444545 (= lt!522807 e!961738)))

(declare-fun c!246663 () Bool)

(assert (=> d!444545 (= c!246663 ((_ is Nil!15938) lt!522733))))

(assert (=> d!444545 (= (++!4309 lt!522733 (++!4309 lt!522728 lt!522717)) lt!522807)))

(declare-fun b!1504253 () Bool)

(assert (=> b!1504253 (= e!961738 (++!4309 lt!522728 lt!522717))))

(declare-fun b!1504255 () Bool)

(declare-fun res!677687 () Bool)

(assert (=> b!1504255 (=> (not res!677687) (not e!961737))))

(assert (=> b!1504255 (= res!677687 (= (size!12899 lt!522807) (+ (size!12899 lt!522733) (size!12899 (++!4309 lt!522728 lt!522717)))))))

(declare-fun b!1504254 () Bool)

(assert (=> b!1504254 (= e!961738 (Cons!15938 (h!21339 lt!522733) (++!4309 (t!138935 lt!522733) (++!4309 lt!522728 lt!522717))))))

(assert (= (and d!444545 c!246663) b!1504253))

(assert (= (and d!444545 (not c!246663)) b!1504254))

(assert (= (and d!444545 res!677688) b!1504255))

(assert (= (and b!1504255 res!677687) b!1504256))

(declare-fun m!1763803 () Bool)

(assert (=> d!444545 m!1763803))

(declare-fun m!1763805 () Bool)

(assert (=> d!444545 m!1763805))

(assert (=> d!444545 m!1763561))

(declare-fun m!1763807 () Bool)

(assert (=> d!444545 m!1763807))

(declare-fun m!1763809 () Bool)

(assert (=> b!1504255 m!1763809))

(declare-fun m!1763811 () Bool)

(assert (=> b!1504255 m!1763811))

(assert (=> b!1504255 m!1763561))

(declare-fun m!1763813 () Bool)

(assert (=> b!1504255 m!1763813))

(assert (=> b!1504254 m!1763561))

(declare-fun m!1763815 () Bool)

(assert (=> b!1504254 m!1763815))

(assert (=> b!1504100 d!444545))

(declare-fun b!1504257 () Bool)

(declare-fun e!961740 () Bool)

(declare-fun e!961739 () Bool)

(assert (=> b!1504257 (= e!961740 e!961739)))

(declare-fun res!677691 () Bool)

(declare-fun lt!522808 () tuple2!14716)

(assert (=> b!1504257 (= res!677691 (< (size!12896 (_2!8322 lt!522808)) (size!12896 lt!522748)))))

(assert (=> b!1504257 (=> (not res!677691) (not e!961739))))

(declare-fun b!1504258 () Bool)

(declare-fun e!961741 () tuple2!14716)

(declare-fun lt!522809 () tuple2!14716)

(declare-fun lt!522810 () Option!2912)

(assert (=> b!1504258 (= e!961741 (tuple2!14717 (prepend!451 (_1!8322 lt!522809) (_1!8323 (v!22756 lt!522810))) (_2!8322 lt!522809)))))

(assert (=> b!1504258 (= lt!522809 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522810))))))

(declare-fun b!1504259 () Bool)

(assert (=> b!1504259 (= e!961741 (tuple2!14717 (BalanceConc!10759 Empty!5408) lt!522748))))

(declare-fun d!444547 () Bool)

(declare-fun e!961742 () Bool)

(assert (=> d!444547 e!961742))

(declare-fun res!677690 () Bool)

(assert (=> d!444547 (=> (not res!677690) (not e!961742))))

(assert (=> d!444547 (= res!677690 e!961740)))

(declare-fun c!246664 () Bool)

(assert (=> d!444547 (= c!246664 (> (size!12897 (_1!8322 lt!522808)) 0))))

(assert (=> d!444547 (= lt!522808 e!961741)))

(declare-fun c!246665 () Bool)

(assert (=> d!444547 (= c!246665 ((_ is Some!2911) lt!522810))))

(assert (=> d!444547 (= lt!522810 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 lt!522748))))

(assert (=> d!444547 (= (lexRec!317 thiss!13241 rules!1640 lt!522748) lt!522808)))

(declare-fun b!1504260 () Bool)

(assert (=> b!1504260 (= e!961740 (= (list!6309 (_2!8322 lt!522808)) (list!6309 lt!522748)))))

(declare-fun b!1504261 () Bool)

(assert (=> b!1504261 (= e!961739 (not (isEmpty!9896 (_1!8322 lt!522808))))))

(declare-fun b!1504262 () Bool)

(declare-fun res!677689 () Bool)

(assert (=> b!1504262 (=> (not res!677689) (not e!961742))))

(assert (=> b!1504262 (= res!677689 (= (list!6310 (_1!8322 lt!522808)) (_1!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 lt!522748)))))))

(declare-fun b!1504263 () Bool)

(assert (=> b!1504263 (= e!961742 (= (list!6309 (_2!8322 lt!522808)) (_2!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 lt!522748)))))))

(assert (= (and d!444547 c!246665) b!1504258))

(assert (= (and d!444547 (not c!246665)) b!1504259))

(assert (= (and d!444547 c!246664) b!1504257))

(assert (= (and d!444547 (not c!246664)) b!1504260))

(assert (= (and b!1504257 res!677691) b!1504261))

(assert (= (and d!444547 res!677690) b!1504262))

(assert (= (and b!1504262 res!677689) b!1504263))

(declare-fun m!1763817 () Bool)

(assert (=> b!1504257 m!1763817))

(declare-fun m!1763819 () Bool)

(assert (=> b!1504257 m!1763819))

(declare-fun m!1763821 () Bool)

(assert (=> b!1504258 m!1763821))

(declare-fun m!1763823 () Bool)

(assert (=> b!1504258 m!1763823))

(declare-fun m!1763825 () Bool)

(assert (=> b!1504260 m!1763825))

(assert (=> b!1504260 m!1763577))

(assert (=> b!1504263 m!1763825))

(assert (=> b!1504263 m!1763577))

(assert (=> b!1504263 m!1763577))

(declare-fun m!1763827 () Bool)

(assert (=> b!1504263 m!1763827))

(declare-fun m!1763829 () Bool)

(assert (=> b!1504262 m!1763829))

(assert (=> b!1504262 m!1763577))

(assert (=> b!1504262 m!1763577))

(assert (=> b!1504262 m!1763827))

(declare-fun m!1763831 () Bool)

(assert (=> d!444547 m!1763831))

(assert (=> d!444547 m!1763587))

(declare-fun m!1763833 () Bool)

(assert (=> b!1504261 m!1763833))

(assert (=> b!1504100 d!444547))

(declare-fun e!961743 () Bool)

(declare-fun b!1504267 () Bool)

(declare-fun lt!522811 () List!16006)

(assert (=> b!1504267 (= e!961743 (or (not (= lt!522717 Nil!15938)) (= lt!522811 lt!522728)))))

(declare-fun d!444549 () Bool)

(assert (=> d!444549 e!961743))

(declare-fun res!677693 () Bool)

(assert (=> d!444549 (=> (not res!677693) (not e!961743))))

(assert (=> d!444549 (= res!677693 (= (content!2302 lt!522811) ((_ map or) (content!2302 lt!522728) (content!2302 lt!522717))))))

(declare-fun e!961744 () List!16006)

(assert (=> d!444549 (= lt!522811 e!961744)))

(declare-fun c!246666 () Bool)

(assert (=> d!444549 (= c!246666 ((_ is Nil!15938) lt!522728))))

(assert (=> d!444549 (= (++!4309 lt!522728 lt!522717) lt!522811)))

(declare-fun b!1504264 () Bool)

(assert (=> b!1504264 (= e!961744 lt!522717)))

(declare-fun b!1504266 () Bool)

(declare-fun res!677692 () Bool)

(assert (=> b!1504266 (=> (not res!677692) (not e!961743))))

(assert (=> b!1504266 (= res!677692 (= (size!12899 lt!522811) (+ (size!12899 lt!522728) (size!12899 lt!522717))))))

(declare-fun b!1504265 () Bool)

(assert (=> b!1504265 (= e!961744 (Cons!15938 (h!21339 lt!522728) (++!4309 (t!138935 lt!522728) lt!522717)))))

(assert (= (and d!444549 c!246666) b!1504264))

(assert (= (and d!444549 (not c!246666)) b!1504265))

(assert (= (and d!444549 res!677693) b!1504266))

(assert (= (and b!1504266 res!677692) b!1504267))

(declare-fun m!1763835 () Bool)

(assert (=> d!444549 m!1763835))

(declare-fun m!1763837 () Bool)

(assert (=> d!444549 m!1763837))

(assert (=> d!444549 m!1763781))

(declare-fun m!1763839 () Bool)

(assert (=> b!1504266 m!1763839))

(declare-fun m!1763841 () Bool)

(assert (=> b!1504266 m!1763841))

(assert (=> b!1504266 m!1763787))

(declare-fun m!1763843 () Bool)

(assert (=> b!1504265 m!1763843))

(assert (=> b!1504100 d!444549))

(declare-fun d!444551 () Bool)

(assert (=> d!444551 (= (++!4307 (++!4307 lt!522716 lt!522732) lt!522749) (++!4307 lt!522716 (++!4307 lt!522732 lt!522749)))))

(declare-fun lt!522814 () Unit!25695)

(declare-fun choose!9132 (List!16005 List!16005 List!16005) Unit!25695)

(assert (=> d!444551 (= lt!522814 (choose!9132 lt!522716 lt!522732 lt!522749))))

(assert (=> d!444551 (= (lemmaConcatAssociativity!922 lt!522716 lt!522732 lt!522749) lt!522814)))

(declare-fun bs!359908 () Bool)

(assert (= bs!359908 d!444551))

(assert (=> bs!359908 m!1763569))

(assert (=> bs!359908 m!1763571))

(assert (=> bs!359908 m!1763569))

(assert (=> bs!359908 m!1763555))

(declare-fun m!1763845 () Bool)

(assert (=> bs!359908 m!1763845))

(assert (=> bs!359908 m!1763555))

(declare-fun m!1763847 () Bool)

(assert (=> bs!359908 m!1763847))

(assert (=> b!1504100 d!444551))

(declare-fun d!444553 () Bool)

(assert (=> d!444553 (isSuffix!290 lt!522749 (++!4307 lt!522714 lt!522749))))

(declare-fun lt!522817 () Unit!25695)

(declare-fun choose!9133 (List!16005 List!16005) Unit!25695)

(assert (=> d!444553 (= lt!522817 (choose!9133 lt!522714 lt!522749))))

(assert (=> d!444553 (= (lemmaConcatTwoListThenFSndIsSuffix!268 lt!522714 lt!522749) lt!522817)))

(declare-fun bs!359909 () Bool)

(assert (= bs!359909 d!444553))

(assert (=> bs!359909 m!1763603))

(assert (=> bs!359909 m!1763603))

(declare-fun m!1763849 () Bool)

(assert (=> bs!359909 m!1763849))

(declare-fun m!1763851 () Bool)

(assert (=> bs!359909 m!1763851))

(assert (=> b!1504100 d!444553))

(declare-fun bm!99916 () Bool)

(declare-fun call!99921 () Option!2912)

(declare-fun maxPrefixOneRuleZipperSequence!274 (LexerInterface!2481 Rule!5456 BalanceConc!10756) Option!2912)

(assert (=> bm!99916 (= call!99921 (maxPrefixOneRuleZipperSequence!274 thiss!13241 (h!21340 rules!1640) input!1102))))

(declare-fun b!1504284 () Bool)

(declare-fun e!961759 () Option!2912)

(declare-fun lt!522833 () Option!2912)

(declare-fun lt!522838 () Option!2912)

(assert (=> b!1504284 (= e!961759 (ite (and ((_ is None!2911) lt!522833) ((_ is None!2911) lt!522838)) None!2911 (ite ((_ is None!2911) lt!522838) lt!522833 (ite ((_ is None!2911) lt!522833) lt!522838 (ite (>= (size!12891 (_1!8323 (v!22756 lt!522833))) (size!12891 (_1!8323 (v!22756 lt!522838)))) lt!522833 lt!522838)))))))

(assert (=> b!1504284 (= lt!522833 call!99921)))

(assert (=> b!1504284 (= lt!522838 (maxPrefixZipperSequence!579 thiss!13241 (t!138936 rules!1640) input!1102))))

(declare-fun lt!522835 () Option!2912)

(declare-fun b!1504285 () Bool)

(declare-fun e!961760 () Bool)

(assert (=> b!1504285 (= e!961760 (= (list!6309 (_2!8323 (get!4720 lt!522835))) (_2!8333 (get!4721 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(declare-fun b!1504286 () Bool)

(declare-fun res!677706 () Bool)

(declare-fun e!961761 () Bool)

(assert (=> b!1504286 (=> (not res!677706) (not e!961761))))

(declare-fun e!961757 () Bool)

(assert (=> b!1504286 (= res!677706 e!961757)))

(declare-fun res!677707 () Bool)

(assert (=> b!1504286 (=> res!677707 e!961757)))

(assert (=> b!1504286 (= res!677707 (not (isDefined!2345 lt!522835)))))

(declare-fun b!1504287 () Bool)

(assert (=> b!1504287 (= e!961757 e!961760)))

(declare-fun res!677711 () Bool)

(assert (=> b!1504287 (=> (not res!677711) (not e!961760))))

(assert (=> b!1504287 (= res!677711 (= (_1!8323 (get!4720 lt!522835)) (_1!8333 (get!4721 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(declare-fun d!444555 () Bool)

(assert (=> d!444555 e!961761))

(declare-fun res!677708 () Bool)

(assert (=> d!444555 (=> (not res!677708) (not e!961761))))

(assert (=> d!444555 (= res!677708 (= (isDefined!2345 lt!522835) (isDefined!2346 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 input!1102)))))))

(assert (=> d!444555 (= lt!522835 e!961759)))

(declare-fun c!246669 () Bool)

(assert (=> d!444555 (= c!246669 (and ((_ is Cons!15939) rules!1640) ((_ is Nil!15939) (t!138936 rules!1640))))))

(declare-fun lt!522836 () Unit!25695)

(declare-fun lt!522834 () Unit!25695)

(assert (=> d!444555 (= lt!522836 lt!522834)))

(declare-fun lt!522832 () List!16005)

(declare-fun lt!522837 () List!16005)

(assert (=> d!444555 (isPrefix!1214 lt!522832 lt!522837)))

(assert (=> d!444555 (= lt!522834 (lemmaIsPrefixRefl!844 lt!522832 lt!522837))))

(assert (=> d!444555 (= lt!522837 (list!6309 input!1102))))

(assert (=> d!444555 (= lt!522832 (list!6309 input!1102))))

(assert (=> d!444555 (rulesValidInductive!852 thiss!13241 rules!1640)))

(assert (=> d!444555 (= (maxPrefixZipperSequence!579 thiss!13241 rules!1640 input!1102) lt!522835)))

(declare-fun b!1504288 () Bool)

(declare-fun e!961762 () Bool)

(assert (=> b!1504288 (= e!961762 (= (list!6309 (_2!8323 (get!4720 lt!522835))) (_2!8333 (get!4721 (maxPrefix!1204 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(declare-fun b!1504289 () Bool)

(declare-fun e!961758 () Bool)

(assert (=> b!1504289 (= e!961758 e!961762)))

(declare-fun res!677709 () Bool)

(assert (=> b!1504289 (=> (not res!677709) (not e!961762))))

(assert (=> b!1504289 (= res!677709 (= (_1!8323 (get!4720 lt!522835)) (_1!8333 (get!4721 (maxPrefix!1204 thiss!13241 rules!1640 (list!6309 input!1102))))))))

(declare-fun b!1504290 () Bool)

(assert (=> b!1504290 (= e!961761 e!961758)))

(declare-fun res!677710 () Bool)

(assert (=> b!1504290 (=> res!677710 e!961758)))

(assert (=> b!1504290 (= res!677710 (not (isDefined!2345 lt!522835)))))

(declare-fun b!1504291 () Bool)

(assert (=> b!1504291 (= e!961759 call!99921)))

(assert (= (and d!444555 c!246669) b!1504291))

(assert (= (and d!444555 (not c!246669)) b!1504284))

(assert (= (or b!1504291 b!1504284) bm!99916))

(assert (= (and d!444555 res!677708) b!1504286))

(assert (= (and b!1504286 (not res!677707)) b!1504287))

(assert (= (and b!1504287 res!677711) b!1504285))

(assert (= (and b!1504286 res!677706) b!1504290))

(assert (= (and b!1504290 (not res!677710)) b!1504289))

(assert (= (and b!1504289 res!677709) b!1504288))

(declare-fun m!1763853 () Bool)

(assert (=> b!1504290 m!1763853))

(declare-fun m!1763855 () Bool)

(assert (=> b!1504289 m!1763855))

(assert (=> b!1504289 m!1763481))

(assert (=> b!1504289 m!1763481))

(assert (=> b!1504289 m!1763729))

(assert (=> b!1504289 m!1763729))

(assert (=> b!1504289 m!1763731))

(assert (=> b!1504287 m!1763855))

(assert (=> b!1504287 m!1763481))

(assert (=> b!1504287 m!1763481))

(assert (=> b!1504287 m!1763715))

(assert (=> b!1504287 m!1763715))

(assert (=> b!1504287 m!1763717))

(assert (=> b!1504286 m!1763853))

(assert (=> b!1504285 m!1763715))

(assert (=> b!1504285 m!1763717))

(declare-fun m!1763857 () Bool)

(assert (=> b!1504285 m!1763857))

(assert (=> b!1504285 m!1763855))

(assert (=> b!1504285 m!1763481))

(assert (=> b!1504285 m!1763481))

(assert (=> b!1504285 m!1763715))

(declare-fun m!1763859 () Bool)

(assert (=> b!1504284 m!1763859))

(assert (=> d!444555 m!1763853))

(assert (=> d!444555 m!1763739))

(assert (=> d!444555 m!1763715))

(assert (=> d!444555 m!1763733))

(declare-fun m!1763861 () Bool)

(assert (=> d!444555 m!1763861))

(assert (=> d!444555 m!1763481))

(assert (=> d!444555 m!1763481))

(assert (=> d!444555 m!1763715))

(declare-fun m!1763863 () Bool)

(assert (=> d!444555 m!1763863))

(assert (=> b!1504288 m!1763729))

(assert (=> b!1504288 m!1763731))

(assert (=> b!1504288 m!1763857))

(assert (=> b!1504288 m!1763855))

(assert (=> b!1504288 m!1763481))

(assert (=> b!1504288 m!1763729))

(assert (=> b!1504288 m!1763481))

(declare-fun m!1763865 () Bool)

(assert (=> bm!99916 m!1763865))

(assert (=> b!1504100 d!444555))

(declare-fun d!444557 () Bool)

(declare-fun e!961764 () Bool)

(assert (=> d!444557 e!961764))

(declare-fun res!677712 () Bool)

(assert (=> d!444557 (=> (not res!677712) (not e!961764))))

(declare-fun lt!522839 () List!16005)

(assert (=> d!444557 (= res!677712 (= (content!2303 lt!522839) ((_ map or) (content!2303 lt!522714) (content!2303 lt!522749))))))

(declare-fun e!961763 () List!16005)

(assert (=> d!444557 (= lt!522839 e!961763)))

(declare-fun c!246670 () Bool)

(assert (=> d!444557 (= c!246670 ((_ is Nil!15937) lt!522714))))

(assert (=> d!444557 (= (++!4307 lt!522714 lt!522749) lt!522839)))

(declare-fun b!1504294 () Bool)

(declare-fun res!677713 () Bool)

(assert (=> b!1504294 (=> (not res!677713) (not e!961764))))

(assert (=> b!1504294 (= res!677713 (= (size!12898 lt!522839) (+ (size!12898 lt!522714) (size!12898 lt!522749))))))

(declare-fun b!1504293 () Bool)

(assert (=> b!1504293 (= e!961763 (Cons!15937 (h!21338 lt!522714) (++!4307 (t!138934 lt!522714) lt!522749)))))

(declare-fun b!1504295 () Bool)

(assert (=> b!1504295 (= e!961764 (or (not (= lt!522749 Nil!15937)) (= lt!522839 lt!522714)))))

(declare-fun b!1504292 () Bool)

(assert (=> b!1504292 (= e!961763 lt!522749)))

(assert (= (and d!444557 c!246670) b!1504292))

(assert (= (and d!444557 (not c!246670)) b!1504293))

(assert (= (and d!444557 res!677712) b!1504294))

(assert (= (and b!1504294 res!677713) b!1504295))

(declare-fun m!1763867 () Bool)

(assert (=> d!444557 m!1763867))

(declare-fun m!1763869 () Bool)

(assert (=> d!444557 m!1763869))

(assert (=> d!444557 m!1763795))

(declare-fun m!1763871 () Bool)

(assert (=> b!1504294 m!1763871))

(declare-fun m!1763873 () Bool)

(assert (=> b!1504294 m!1763873))

(assert (=> b!1504294 m!1763773))

(declare-fun m!1763875 () Bool)

(assert (=> b!1504293 m!1763875))

(assert (=> b!1504100 d!444557))

(declare-fun d!444559 () Bool)

(assert (=> d!444559 (= (list!6309 (_2!8322 lt!522718)) (list!6311 (c!246632 (_2!8322 lt!522718))))))

(declare-fun bs!359910 () Bool)

(assert (= bs!359910 d!444559))

(declare-fun m!1763877 () Bool)

(assert (=> bs!359910 m!1763877))

(assert (=> b!1504100 d!444559))

(declare-fun d!444561 () Bool)

(assert (=> d!444561 (= (list!6309 lt!522747) (list!6311 (c!246632 lt!522747)))))

(declare-fun bs!359911 () Bool)

(assert (= bs!359911 d!444561))

(declare-fun m!1763879 () Bool)

(assert (=> bs!359911 m!1763879))

(assert (=> b!1504100 d!444561))

(declare-fun b!1504296 () Bool)

(declare-fun e!961766 () Bool)

(declare-fun e!961765 () Bool)

(assert (=> b!1504296 (= e!961766 e!961765)))

(declare-fun res!677716 () Bool)

(declare-fun lt!522840 () tuple2!14716)

(assert (=> b!1504296 (= res!677716 (< (size!12896 (_2!8322 lt!522840)) (size!12896 (_2!8323 (v!22756 (_1!8330 lt!522731))))))))

(assert (=> b!1504296 (=> (not res!677716) (not e!961765))))

(declare-fun b!1504297 () Bool)

(declare-fun e!961767 () tuple2!14716)

(declare-fun lt!522841 () tuple2!14716)

(declare-fun lt!522842 () Option!2912)

(assert (=> b!1504297 (= e!961767 (tuple2!14717 (prepend!451 (_1!8322 lt!522841) (_1!8323 (v!22756 lt!522842))) (_2!8322 lt!522841)))))

(assert (=> b!1504297 (= lt!522841 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522842))))))

(declare-fun b!1504298 () Bool)

(assert (=> b!1504298 (= e!961767 (tuple2!14717 (BalanceConc!10759 Empty!5408) (_2!8323 (v!22756 (_1!8330 lt!522731)))))))

(declare-fun d!444563 () Bool)

(declare-fun e!961768 () Bool)

(assert (=> d!444563 e!961768))

(declare-fun res!677715 () Bool)

(assert (=> d!444563 (=> (not res!677715) (not e!961768))))

(assert (=> d!444563 (= res!677715 e!961766)))

(declare-fun c!246671 () Bool)

(assert (=> d!444563 (= c!246671 (> (size!12897 (_1!8322 lt!522840)) 0))))

(assert (=> d!444563 (= lt!522840 e!961767)))

(declare-fun c!246672 () Bool)

(assert (=> d!444563 (= c!246672 ((_ is Some!2911) lt!522842))))

(assert (=> d!444563 (= lt!522842 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 (_2!8323 (v!22756 (_1!8330 lt!522731)))))))

(assert (=> d!444563 (= (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 (_1!8330 lt!522731)))) lt!522840)))

(declare-fun b!1504299 () Bool)

(assert (=> b!1504299 (= e!961766 (= (list!6309 (_2!8322 lt!522840)) (list!6309 (_2!8323 (v!22756 (_1!8330 lt!522731))))))))

(declare-fun b!1504300 () Bool)

(assert (=> b!1504300 (= e!961765 (not (isEmpty!9896 (_1!8322 lt!522840))))))

(declare-fun b!1504301 () Bool)

(declare-fun res!677714 () Bool)

(assert (=> b!1504301 (=> (not res!677714) (not e!961768))))

(assert (=> b!1504301 (= res!677714 (= (list!6310 (_1!8322 lt!522840)) (_1!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 (_2!8323 (v!22756 (_1!8330 lt!522731))))))))))

(declare-fun b!1504302 () Bool)

(assert (=> b!1504302 (= e!961768 (= (list!6309 (_2!8322 lt!522840)) (_2!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 (_2!8323 (v!22756 (_1!8330 lt!522731))))))))))

(assert (= (and d!444563 c!246672) b!1504297))

(assert (= (and d!444563 (not c!246672)) b!1504298))

(assert (= (and d!444563 c!246671) b!1504296))

(assert (= (and d!444563 (not c!246671)) b!1504299))

(assert (= (and b!1504296 res!677716) b!1504300))

(assert (= (and d!444563 res!677715) b!1504301))

(assert (= (and b!1504301 res!677714) b!1504302))

(declare-fun m!1763881 () Bool)

(assert (=> b!1504296 m!1763881))

(declare-fun m!1763883 () Bool)

(assert (=> b!1504296 m!1763883))

(declare-fun m!1763885 () Bool)

(assert (=> b!1504297 m!1763885))

(declare-fun m!1763887 () Bool)

(assert (=> b!1504297 m!1763887))

(declare-fun m!1763889 () Bool)

(assert (=> b!1504299 m!1763889))

(assert (=> b!1504299 m!1763589))

(assert (=> b!1504302 m!1763889))

(assert (=> b!1504302 m!1763589))

(assert (=> b!1504302 m!1763589))

(declare-fun m!1763891 () Bool)

(assert (=> b!1504302 m!1763891))

(declare-fun m!1763893 () Bool)

(assert (=> b!1504301 m!1763893))

(assert (=> b!1504301 m!1763589))

(assert (=> b!1504301 m!1763589))

(assert (=> b!1504301 m!1763891))

(declare-fun m!1763895 () Bool)

(assert (=> d!444563 m!1763895))

(declare-fun m!1763897 () Bool)

(assert (=> d!444563 m!1763897))

(declare-fun m!1763899 () Bool)

(assert (=> b!1504300 m!1763899))

(assert (=> b!1504100 d!444563))

(declare-fun d!444565 () Bool)

(assert (=> d!444565 (= (list!6309 lt!522748) (list!6311 (c!246632 lt!522748)))))

(declare-fun bs!359912 () Bool)

(assert (= bs!359912 d!444565))

(declare-fun m!1763901 () Bool)

(assert (=> bs!359912 m!1763901))

(assert (=> b!1504100 d!444565))

(declare-fun d!444567 () Bool)

(assert (=> d!444567 (= (list!6310 lt!522734) (list!6312 (c!246634 lt!522734)))))

(declare-fun bs!359913 () Bool)

(assert (= bs!359913 d!444567))

(declare-fun m!1763903 () Bool)

(assert (=> bs!359913 m!1763903))

(assert (=> b!1504100 d!444567))

(declare-fun bm!99917 () Bool)

(declare-fun call!99922 () Option!2912)

(assert (=> bm!99917 (= call!99922 (maxPrefixOneRuleZipperSequence!274 thiss!13241 (h!21340 rules!1640) lt!522748))))

(declare-fun b!1504303 () Bool)

(declare-fun e!961771 () Option!2912)

(declare-fun lt!522844 () Option!2912)

(declare-fun lt!522849 () Option!2912)

(assert (=> b!1504303 (= e!961771 (ite (and ((_ is None!2911) lt!522844) ((_ is None!2911) lt!522849)) None!2911 (ite ((_ is None!2911) lt!522849) lt!522844 (ite ((_ is None!2911) lt!522844) lt!522849 (ite (>= (size!12891 (_1!8323 (v!22756 lt!522844))) (size!12891 (_1!8323 (v!22756 lt!522849)))) lt!522844 lt!522849)))))))

(assert (=> b!1504303 (= lt!522844 call!99922)))

(assert (=> b!1504303 (= lt!522849 (maxPrefixZipperSequence!579 thiss!13241 (t!138936 rules!1640) lt!522748))))

(declare-fun lt!522846 () Option!2912)

(declare-fun e!961772 () Bool)

(declare-fun b!1504304 () Bool)

(assert (=> b!1504304 (= e!961772 (= (list!6309 (_2!8323 (get!4720 lt!522846))) (_2!8333 (get!4721 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 lt!522748))))))))

(declare-fun b!1504305 () Bool)

(declare-fun res!677717 () Bool)

(declare-fun e!961773 () Bool)

(assert (=> b!1504305 (=> (not res!677717) (not e!961773))))

(declare-fun e!961769 () Bool)

(assert (=> b!1504305 (= res!677717 e!961769)))

(declare-fun res!677718 () Bool)

(assert (=> b!1504305 (=> res!677718 e!961769)))

(assert (=> b!1504305 (= res!677718 (not (isDefined!2345 lt!522846)))))

(declare-fun b!1504306 () Bool)

(assert (=> b!1504306 (= e!961769 e!961772)))

(declare-fun res!677722 () Bool)

(assert (=> b!1504306 (=> (not res!677722) (not e!961772))))

(assert (=> b!1504306 (= res!677722 (= (_1!8323 (get!4720 lt!522846)) (_1!8333 (get!4721 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 lt!522748))))))))

(declare-fun d!444569 () Bool)

(assert (=> d!444569 e!961773))

(declare-fun res!677719 () Bool)

(assert (=> d!444569 (=> (not res!677719) (not e!961773))))

(assert (=> d!444569 (= res!677719 (= (isDefined!2345 lt!522846) (isDefined!2346 (maxPrefixZipper!255 thiss!13241 rules!1640 (list!6309 lt!522748)))))))

(assert (=> d!444569 (= lt!522846 e!961771)))

(declare-fun c!246673 () Bool)

(assert (=> d!444569 (= c!246673 (and ((_ is Cons!15939) rules!1640) ((_ is Nil!15939) (t!138936 rules!1640))))))

(declare-fun lt!522847 () Unit!25695)

(declare-fun lt!522845 () Unit!25695)

(assert (=> d!444569 (= lt!522847 lt!522845)))

(declare-fun lt!522843 () List!16005)

(declare-fun lt!522848 () List!16005)

(assert (=> d!444569 (isPrefix!1214 lt!522843 lt!522848)))

(assert (=> d!444569 (= lt!522845 (lemmaIsPrefixRefl!844 lt!522843 lt!522848))))

(assert (=> d!444569 (= lt!522848 (list!6309 lt!522748))))

(assert (=> d!444569 (= lt!522843 (list!6309 lt!522748))))

(assert (=> d!444569 (rulesValidInductive!852 thiss!13241 rules!1640)))

(assert (=> d!444569 (= (maxPrefixZipperSequence!579 thiss!13241 rules!1640 lt!522748) lt!522846)))

(declare-fun b!1504307 () Bool)

(declare-fun e!961774 () Bool)

(assert (=> b!1504307 (= e!961774 (= (list!6309 (_2!8323 (get!4720 lt!522846))) (_2!8333 (get!4721 (maxPrefix!1204 thiss!13241 rules!1640 (list!6309 lt!522748))))))))

(declare-fun b!1504308 () Bool)

(declare-fun e!961770 () Bool)

(assert (=> b!1504308 (= e!961770 e!961774)))

(declare-fun res!677720 () Bool)

(assert (=> b!1504308 (=> (not res!677720) (not e!961774))))

(assert (=> b!1504308 (= res!677720 (= (_1!8323 (get!4720 lt!522846)) (_1!8333 (get!4721 (maxPrefix!1204 thiss!13241 rules!1640 (list!6309 lt!522748))))))))

(declare-fun b!1504309 () Bool)

(assert (=> b!1504309 (= e!961773 e!961770)))

(declare-fun res!677721 () Bool)

(assert (=> b!1504309 (=> res!677721 e!961770)))

(assert (=> b!1504309 (= res!677721 (not (isDefined!2345 lt!522846)))))

(declare-fun b!1504310 () Bool)

(assert (=> b!1504310 (= e!961771 call!99922)))

(assert (= (and d!444569 c!246673) b!1504310))

(assert (= (and d!444569 (not c!246673)) b!1504303))

(assert (= (or b!1504310 b!1504303) bm!99917))

(assert (= (and d!444569 res!677719) b!1504305))

(assert (= (and b!1504305 (not res!677718)) b!1504306))

(assert (= (and b!1504306 res!677722) b!1504304))

(assert (= (and b!1504305 res!677717) b!1504309))

(assert (= (and b!1504309 (not res!677721)) b!1504308))

(assert (= (and b!1504308 res!677720) b!1504307))

(declare-fun m!1763905 () Bool)

(assert (=> b!1504309 m!1763905))

(declare-fun m!1763907 () Bool)

(assert (=> b!1504308 m!1763907))

(assert (=> b!1504308 m!1763577))

(assert (=> b!1504308 m!1763577))

(declare-fun m!1763909 () Bool)

(assert (=> b!1504308 m!1763909))

(assert (=> b!1504308 m!1763909))

(declare-fun m!1763911 () Bool)

(assert (=> b!1504308 m!1763911))

(assert (=> b!1504306 m!1763907))

(assert (=> b!1504306 m!1763577))

(assert (=> b!1504306 m!1763577))

(declare-fun m!1763913 () Bool)

(assert (=> b!1504306 m!1763913))

(assert (=> b!1504306 m!1763913))

(declare-fun m!1763915 () Bool)

(assert (=> b!1504306 m!1763915))

(assert (=> b!1504305 m!1763905))

(assert (=> b!1504304 m!1763913))

(assert (=> b!1504304 m!1763915))

(declare-fun m!1763917 () Bool)

(assert (=> b!1504304 m!1763917))

(assert (=> b!1504304 m!1763907))

(assert (=> b!1504304 m!1763577))

(assert (=> b!1504304 m!1763577))

(assert (=> b!1504304 m!1763913))

(declare-fun m!1763919 () Bool)

(assert (=> b!1504303 m!1763919))

(assert (=> d!444569 m!1763905))

(assert (=> d!444569 m!1763739))

(assert (=> d!444569 m!1763913))

(declare-fun m!1763921 () Bool)

(assert (=> d!444569 m!1763921))

(declare-fun m!1763923 () Bool)

(assert (=> d!444569 m!1763923))

(assert (=> d!444569 m!1763577))

(assert (=> d!444569 m!1763577))

(assert (=> d!444569 m!1763913))

(declare-fun m!1763925 () Bool)

(assert (=> d!444569 m!1763925))

(assert (=> b!1504307 m!1763909))

(assert (=> b!1504307 m!1763911))

(assert (=> b!1504307 m!1763917))

(assert (=> b!1504307 m!1763907))

(assert (=> b!1504307 m!1763577))

(assert (=> b!1504307 m!1763909))

(assert (=> b!1504307 m!1763577))

(declare-fun m!1763927 () Bool)

(assert (=> bm!99917 m!1763927))

(assert (=> b!1504100 d!444569))

(declare-fun d!444571 () Bool)

(declare-fun e!961776 () Bool)

(assert (=> d!444571 e!961776))

(declare-fun res!677723 () Bool)

(assert (=> d!444571 (=> (not res!677723) (not e!961776))))

(declare-fun lt!522850 () List!16005)

(assert (=> d!444571 (= res!677723 (= (content!2303 lt!522850) ((_ map or) (content!2303 lt!522751) (content!2303 lt!522749))))))

(declare-fun e!961775 () List!16005)

(assert (=> d!444571 (= lt!522850 e!961775)))

(declare-fun c!246674 () Bool)

(assert (=> d!444571 (= c!246674 ((_ is Nil!15937) lt!522751))))

(assert (=> d!444571 (= (++!4307 lt!522751 lt!522749) lt!522850)))

(declare-fun b!1504313 () Bool)

(declare-fun res!677724 () Bool)

(assert (=> b!1504313 (=> (not res!677724) (not e!961776))))

(assert (=> b!1504313 (= res!677724 (= (size!12898 lt!522850) (+ (size!12898 lt!522751) (size!12898 lt!522749))))))

(declare-fun b!1504312 () Bool)

(assert (=> b!1504312 (= e!961775 (Cons!15937 (h!21338 lt!522751) (++!4307 (t!138934 lt!522751) lt!522749)))))

(declare-fun b!1504314 () Bool)

(assert (=> b!1504314 (= e!961776 (or (not (= lt!522749 Nil!15937)) (= lt!522850 lt!522751)))))

(declare-fun b!1504311 () Bool)

(assert (=> b!1504311 (= e!961775 lt!522749)))

(assert (= (and d!444571 c!246674) b!1504311))

(assert (= (and d!444571 (not c!246674)) b!1504312))

(assert (= (and d!444571 res!677723) b!1504313))

(assert (= (and b!1504313 res!677724) b!1504314))

(declare-fun m!1763929 () Bool)

(assert (=> d!444571 m!1763929))

(declare-fun m!1763931 () Bool)

(assert (=> d!444571 m!1763931))

(assert (=> d!444571 m!1763795))

(declare-fun m!1763933 () Bool)

(assert (=> b!1504313 m!1763933))

(declare-fun m!1763935 () Bool)

(assert (=> b!1504313 m!1763935))

(assert (=> b!1504313 m!1763773))

(declare-fun m!1763937 () Bool)

(assert (=> b!1504312 m!1763937))

(assert (=> b!1504100 d!444571))

(declare-fun d!444573 () Bool)

(assert (=> d!444573 (= (list!6310 (_1!8322 lt!522718)) (list!6312 (c!246634 (_1!8322 lt!522718))))))

(declare-fun bs!359914 () Bool)

(assert (= bs!359914 d!444573))

(declare-fun m!1763939 () Bool)

(assert (=> bs!359914 m!1763939))

(assert (=> b!1504100 d!444573))

(declare-fun d!444575 () Bool)

(assert (=> d!444575 (= (list!6309 (_2!8323 (v!22756 (_1!8330 lt!522731)))) (list!6311 (c!246632 (_2!8323 (v!22756 (_1!8330 lt!522731))))))))

(declare-fun bs!359915 () Bool)

(assert (= bs!359915 d!444575))

(declare-fun m!1763941 () Bool)

(assert (=> bs!359915 m!1763941))

(assert (=> b!1504100 d!444575))

(declare-fun b!1504325 () Bool)

(declare-fun res!677736 () Bool)

(declare-fun e!961779 () Bool)

(assert (=> b!1504325 (=> (not res!677736) (not e!961779))))

(declare-fun height!802 (Conc!5407) Int)

(declare-fun ++!4311 (Conc!5407 Conc!5407) Conc!5407)

(assert (=> b!1504325 (= res!677736 (>= (height!802 (++!4311 (c!246632 treated!70) (c!246632 lt!522747))) (max!0 (height!802 (c!246632 treated!70)) (height!802 (c!246632 lt!522747)))))))

(declare-fun d!444577 () Bool)

(assert (=> d!444577 e!961779))

(declare-fun res!677734 () Bool)

(assert (=> d!444577 (=> (not res!677734) (not e!961779))))

(declare-fun appendAssocInst!360 (Conc!5407 Conc!5407) Bool)

(assert (=> d!444577 (= res!677734 (appendAssocInst!360 (c!246632 treated!70) (c!246632 lt!522747)))))

(declare-fun lt!522853 () BalanceConc!10756)

(assert (=> d!444577 (= lt!522853 (BalanceConc!10757 (++!4311 (c!246632 treated!70) (c!246632 lt!522747))))))

(assert (=> d!444577 (= (++!4308 treated!70 lt!522747) lt!522853)))

(declare-fun b!1504323 () Bool)

(declare-fun res!677735 () Bool)

(assert (=> b!1504323 (=> (not res!677735) (not e!961779))))

(declare-fun isBalanced!1600 (Conc!5407) Bool)

(assert (=> b!1504323 (= res!677735 (isBalanced!1600 (++!4311 (c!246632 treated!70) (c!246632 lt!522747))))))

(declare-fun b!1504326 () Bool)

(assert (=> b!1504326 (= e!961779 (= (list!6309 lt!522853) (++!4307 (list!6309 treated!70) (list!6309 lt!522747))))))

(declare-fun b!1504324 () Bool)

(declare-fun res!677733 () Bool)

(assert (=> b!1504324 (=> (not res!677733) (not e!961779))))

(assert (=> b!1504324 (= res!677733 (<= (height!802 (++!4311 (c!246632 treated!70) (c!246632 lt!522747))) (+ (max!0 (height!802 (c!246632 treated!70)) (height!802 (c!246632 lt!522747))) 1)))))

(assert (= (and d!444577 res!677734) b!1504323))

(assert (= (and b!1504323 res!677735) b!1504324))

(assert (= (and b!1504324 res!677733) b!1504325))

(assert (= (and b!1504325 res!677736) b!1504326))

(declare-fun m!1763943 () Bool)

(assert (=> b!1504324 m!1763943))

(declare-fun m!1763945 () Bool)

(assert (=> b!1504324 m!1763945))

(declare-fun m!1763947 () Bool)

(assert (=> b!1504324 m!1763947))

(declare-fun m!1763949 () Bool)

(assert (=> b!1504324 m!1763949))

(assert (=> b!1504324 m!1763947))

(declare-fun m!1763951 () Bool)

(assert (=> b!1504324 m!1763951))

(assert (=> b!1504324 m!1763943))

(assert (=> b!1504324 m!1763949))

(assert (=> b!1504323 m!1763943))

(assert (=> b!1504323 m!1763943))

(declare-fun m!1763953 () Bool)

(assert (=> b!1504323 m!1763953))

(assert (=> b!1504325 m!1763943))

(assert (=> b!1504325 m!1763945))

(assert (=> b!1504325 m!1763947))

(assert (=> b!1504325 m!1763949))

(assert (=> b!1504325 m!1763947))

(assert (=> b!1504325 m!1763951))

(assert (=> b!1504325 m!1763943))

(assert (=> b!1504325 m!1763949))

(declare-fun m!1763955 () Bool)

(assert (=> b!1504326 m!1763955))

(assert (=> b!1504326 m!1763483))

(assert (=> b!1504326 m!1763591))

(assert (=> b!1504326 m!1763483))

(assert (=> b!1504326 m!1763591))

(declare-fun m!1763957 () Bool)

(assert (=> b!1504326 m!1763957))

(declare-fun m!1763959 () Bool)

(assert (=> d!444577 m!1763959))

(assert (=> d!444577 m!1763943))

(assert (=> b!1504100 d!444577))

(declare-fun d!444579 () Bool)

(declare-fun e!961781 () Bool)

(assert (=> d!444579 e!961781))

(declare-fun res!677737 () Bool)

(assert (=> d!444579 (=> (not res!677737) (not e!961781))))

(declare-fun lt!522854 () List!16005)

(assert (=> d!444579 (= res!677737 (= (content!2303 lt!522854) ((_ map or) (content!2303 lt!522716) (content!2303 (++!4307 lt!522732 lt!522749)))))))

(declare-fun e!961780 () List!16005)

(assert (=> d!444579 (= lt!522854 e!961780)))

(declare-fun c!246678 () Bool)

(assert (=> d!444579 (= c!246678 ((_ is Nil!15937) lt!522716))))

(assert (=> d!444579 (= (++!4307 lt!522716 (++!4307 lt!522732 lt!522749)) lt!522854)))

(declare-fun b!1504329 () Bool)

(declare-fun res!677738 () Bool)

(assert (=> b!1504329 (=> (not res!677738) (not e!961781))))

(assert (=> b!1504329 (= res!677738 (= (size!12898 lt!522854) (+ (size!12898 lt!522716) (size!12898 (++!4307 lt!522732 lt!522749)))))))

(declare-fun b!1504328 () Bool)

(assert (=> b!1504328 (= e!961780 (Cons!15937 (h!21338 lt!522716) (++!4307 (t!138934 lt!522716) (++!4307 lt!522732 lt!522749))))))

(declare-fun b!1504330 () Bool)

(assert (=> b!1504330 (= e!961781 (or (not (= (++!4307 lt!522732 lt!522749) Nil!15937)) (= lt!522854 lt!522716)))))

(declare-fun b!1504327 () Bool)

(assert (=> b!1504327 (= e!961780 (++!4307 lt!522732 lt!522749))))

(assert (= (and d!444579 c!246678) b!1504327))

(assert (= (and d!444579 (not c!246678)) b!1504328))

(assert (= (and d!444579 res!677737) b!1504329))

(assert (= (and b!1504329 res!677738) b!1504330))

(declare-fun m!1763961 () Bool)

(assert (=> d!444579 m!1763961))

(declare-fun m!1763963 () Bool)

(assert (=> d!444579 m!1763963))

(assert (=> d!444579 m!1763569))

(declare-fun m!1763965 () Bool)

(assert (=> d!444579 m!1763965))

(declare-fun m!1763967 () Bool)

(assert (=> b!1504329 m!1763967))

(declare-fun m!1763969 () Bool)

(assert (=> b!1504329 m!1763969))

(assert (=> b!1504329 m!1763569))

(declare-fun m!1763971 () Bool)

(assert (=> b!1504329 m!1763971))

(assert (=> b!1504328 m!1763569))

(declare-fun m!1763973 () Bool)

(assert (=> b!1504328 m!1763973))

(assert (=> b!1504100 d!444579))

(declare-fun d!444581 () Bool)

(declare-fun e!961784 () Bool)

(assert (=> d!444581 e!961784))

(declare-fun res!677741 () Bool)

(assert (=> d!444581 (=> (not res!677741) (not e!961784))))

(declare-fun append!487 (Conc!5408 Token!5318) Conc!5408)

(assert (=> d!444581 (= res!677741 (isBalanced!1599 (append!487 (c!246634 acc!392) (_1!8323 (v!22756 (_1!8330 lt!522731))))))))

(declare-fun lt!522857 () BalanceConc!10758)

(assert (=> d!444581 (= lt!522857 (BalanceConc!10759 (append!487 (c!246634 acc!392) (_1!8323 (v!22756 (_1!8330 lt!522731))))))))

(assert (=> d!444581 (= (append!486 acc!392 (_1!8323 (v!22756 (_1!8330 lt!522731)))) lt!522857)))

(declare-fun b!1504333 () Bool)

(declare-fun $colon+!103 (List!16006 Token!5318) List!16006)

(assert (=> b!1504333 (= e!961784 (= (list!6310 lt!522857) ($colon+!103 (list!6310 acc!392) (_1!8323 (v!22756 (_1!8330 lt!522731))))))))

(assert (= (and d!444581 res!677741) b!1504333))

(declare-fun m!1763975 () Bool)

(assert (=> d!444581 m!1763975))

(assert (=> d!444581 m!1763975))

(declare-fun m!1763977 () Bool)

(assert (=> d!444581 m!1763977))

(declare-fun m!1763979 () Bool)

(assert (=> b!1504333 m!1763979))

(assert (=> b!1504333 m!1763451))

(assert (=> b!1504333 m!1763451))

(declare-fun m!1763981 () Bool)

(assert (=> b!1504333 m!1763981))

(assert (=> b!1504100 d!444581))

(declare-fun d!444583 () Bool)

(declare-fun e!961785 () Bool)

(assert (=> d!444583 e!961785))

(declare-fun res!677742 () Bool)

(assert (=> d!444583 (=> res!677742 e!961785)))

(declare-fun lt!522858 () Bool)

(assert (=> d!444583 (= res!677742 (not lt!522858))))

(assert (=> d!444583 (= lt!522858 (= lt!522749 (drop!755 lt!522722 (- (size!12898 lt!522722) (size!12898 lt!522749)))))))

(assert (=> d!444583 (= (isSuffix!290 lt!522749 lt!522722) lt!522858)))

(declare-fun b!1504334 () Bool)

(assert (=> b!1504334 (= e!961785 (>= (size!12898 lt!522722) (size!12898 lt!522749)))))

(assert (= (and d!444583 (not res!677742)) b!1504334))

(declare-fun m!1763983 () Bool)

(assert (=> d!444583 m!1763983))

(assert (=> d!444583 m!1763773))

(declare-fun m!1763985 () Bool)

(assert (=> d!444583 m!1763985))

(assert (=> b!1504334 m!1763983))

(assert (=> b!1504334 m!1763773))

(assert (=> b!1504100 d!444583))

(declare-fun d!444585 () Bool)

(declare-fun e!961794 () Bool)

(assert (=> d!444585 e!961794))

(declare-fun c!246684 () Bool)

(declare-fun lt!522865 () tuple2!14728)

(assert (=> d!444585 (= c!246684 (> (size!12899 (_1!8331 lt!522865)) 0))))

(declare-fun e!961792 () tuple2!14728)

(assert (=> d!444585 (= lt!522865 e!961792)))

(declare-fun c!246685 () Bool)

(declare-fun lt!522867 () Option!2913)

(assert (=> d!444585 (= c!246685 ((_ is Some!2912) lt!522867))))

(assert (=> d!444585 (= lt!522867 (maxPrefix!1204 thiss!13241 rules!1640 lt!522751))))

(assert (=> d!444585 (= (lexList!737 thiss!13241 rules!1640 lt!522751) lt!522865)))

(declare-fun b!1504345 () Bool)

(declare-fun e!961793 () Bool)

(assert (=> b!1504345 (= e!961794 e!961793)))

(declare-fun res!677745 () Bool)

(assert (=> b!1504345 (= res!677745 (< (size!12898 (_2!8331 lt!522865)) (size!12898 lt!522751)))))

(assert (=> b!1504345 (=> (not res!677745) (not e!961793))))

(declare-fun b!1504346 () Bool)

(assert (=> b!1504346 (= e!961794 (= (_2!8331 lt!522865) lt!522751))))

(declare-fun b!1504347 () Bool)

(assert (=> b!1504347 (= e!961792 (tuple2!14729 Nil!15938 lt!522751))))

(declare-fun b!1504348 () Bool)

(declare-fun isEmpty!9897 (List!16006) Bool)

(assert (=> b!1504348 (= e!961793 (not (isEmpty!9897 (_1!8331 lt!522865))))))

(declare-fun b!1504349 () Bool)

(declare-fun lt!522866 () tuple2!14728)

(assert (=> b!1504349 (= e!961792 (tuple2!14729 (Cons!15938 (_1!8333 (v!22765 lt!522867)) (_1!8331 lt!522866)) (_2!8331 lt!522866)))))

(assert (=> b!1504349 (= lt!522866 (lexList!737 thiss!13241 rules!1640 (_2!8333 (v!22765 lt!522867))))))

(assert (= (and d!444585 c!246685) b!1504349))

(assert (= (and d!444585 (not c!246685)) b!1504347))

(assert (= (and d!444585 c!246684) b!1504345))

(assert (= (and d!444585 (not c!246684)) b!1504346))

(assert (= (and b!1504345 res!677745) b!1504348))

(declare-fun m!1763987 () Bool)

(assert (=> d!444585 m!1763987))

(declare-fun m!1763989 () Bool)

(assert (=> d!444585 m!1763989))

(declare-fun m!1763991 () Bool)

(assert (=> b!1504345 m!1763991))

(assert (=> b!1504345 m!1763935))

(declare-fun m!1763993 () Bool)

(assert (=> b!1504348 m!1763993))

(declare-fun m!1763995 () Bool)

(assert (=> b!1504349 m!1763995))

(assert (=> b!1504100 d!444585))

(declare-fun d!444587 () Bool)

(assert (=> d!444587 (= (++!4309 (++!4309 lt!522733 lt!522728) lt!522717) (++!4309 lt!522733 (++!4309 lt!522728 lt!522717)))))

(declare-fun lt!522870 () Unit!25695)

(declare-fun choose!9134 (List!16006 List!16006 List!16006) Unit!25695)

(assert (=> d!444587 (= lt!522870 (choose!9134 lt!522733 lt!522728 lt!522717))))

(assert (=> d!444587 (= (lemmaConcatAssociativity!921 lt!522733 lt!522728 lt!522717) lt!522870)))

(declare-fun bs!359916 () Bool)

(assert (= bs!359916 d!444587))

(assert (=> bs!359916 m!1763557))

(assert (=> bs!359916 m!1763559))

(assert (=> bs!359916 m!1763557))

(assert (=> bs!359916 m!1763561))

(assert (=> bs!359916 m!1763563))

(declare-fun m!1763997 () Bool)

(assert (=> bs!359916 m!1763997))

(assert (=> bs!359916 m!1763561))

(assert (=> b!1504100 d!444587))

(declare-fun d!444589 () Bool)

(declare-fun e!961796 () Bool)

(assert (=> d!444589 e!961796))

(declare-fun res!677746 () Bool)

(assert (=> d!444589 (=> (not res!677746) (not e!961796))))

(declare-fun lt!522871 () List!16005)

(assert (=> d!444589 (= res!677746 (= (content!2303 lt!522871) ((_ map or) (content!2303 lt!522716) (content!2303 lt!522732))))))

(declare-fun e!961795 () List!16005)

(assert (=> d!444589 (= lt!522871 e!961795)))

(declare-fun c!246686 () Bool)

(assert (=> d!444589 (= c!246686 ((_ is Nil!15937) lt!522716))))

(assert (=> d!444589 (= (++!4307 lt!522716 lt!522732) lt!522871)))

(declare-fun b!1504352 () Bool)

(declare-fun res!677747 () Bool)

(assert (=> b!1504352 (=> (not res!677747) (not e!961796))))

(assert (=> b!1504352 (= res!677747 (= (size!12898 lt!522871) (+ (size!12898 lt!522716) (size!12898 lt!522732))))))

(declare-fun b!1504351 () Bool)

(assert (=> b!1504351 (= e!961795 (Cons!15937 (h!21338 lt!522716) (++!4307 (t!138934 lt!522716) lt!522732)))))

(declare-fun b!1504353 () Bool)

(assert (=> b!1504353 (= e!961796 (or (not (= lt!522732 Nil!15937)) (= lt!522871 lt!522716)))))

(declare-fun b!1504350 () Bool)

(assert (=> b!1504350 (= e!961795 lt!522732)))

(assert (= (and d!444589 c!246686) b!1504350))

(assert (= (and d!444589 (not c!246686)) b!1504351))

(assert (= (and d!444589 res!677746) b!1504352))

(assert (= (and b!1504352 res!677747) b!1504353))

(declare-fun m!1763999 () Bool)

(assert (=> d!444589 m!1763999))

(assert (=> d!444589 m!1763963))

(assert (=> d!444589 m!1763793))

(declare-fun m!1764001 () Bool)

(assert (=> b!1504352 m!1764001))

(assert (=> b!1504352 m!1763969))

(assert (=> b!1504352 m!1763799))

(declare-fun m!1764003 () Bool)

(assert (=> b!1504351 m!1764003))

(assert (=> b!1504100 d!444589))

(declare-fun d!444591 () Bool)

(assert (=> d!444591 (= (lexList!737 thiss!13241 rules!1640 lt!522751) (tuple2!14729 lt!522737 Nil!15937))))

(declare-fun lt!522874 () Unit!25695)

(declare-fun choose!9135 (LexerInterface!2481 List!16007 List!16005 List!16005 List!16006 List!16006 List!16005) Unit!25695)

(assert (=> d!444591 (= lt!522874 (choose!9135 thiss!13241 rules!1640 lt!522751 lt!522749 lt!522737 lt!522717 lt!522746))))

(assert (=> d!444591 (not (isEmpty!9895 rules!1640))))

(assert (=> d!444591 (= (lemmaLexThenLexPrefix!219 thiss!13241 rules!1640 lt!522751 lt!522749 lt!522737 lt!522717 lt!522746) lt!522874)))

(declare-fun bs!359917 () Bool)

(assert (= bs!359917 d!444591))

(assert (=> bs!359917 m!1763597))

(declare-fun m!1764005 () Bool)

(assert (=> bs!359917 m!1764005))

(assert (=> bs!359917 m!1763505))

(assert (=> b!1504100 d!444591))

(declare-fun d!444593 () Bool)

(declare-fun lt!522877 () BalanceConc!10756)

(assert (=> d!444593 (= (list!6309 lt!522877) (originalCharacters!3690 (_1!8323 (v!22756 (_1!8330 lt!522731)))))))

(declare-fun dynLambda!7204 (Int TokenValue!2918) BalanceConc!10756)

(assert (=> d!444593 (= lt!522877 (dynLambda!7204 (toChars!4034 (transformation!2828 (rule!4617 (_1!8323 (v!22756 (_1!8330 lt!522731)))))) (value!90258 (_1!8323 (v!22756 (_1!8330 lt!522731))))))))

(assert (=> d!444593 (= (charsOf!1620 (_1!8323 (v!22756 (_1!8330 lt!522731)))) lt!522877)))

(declare-fun b_lambda!47247 () Bool)

(assert (=> (not b_lambda!47247) (not d!444593)))

(declare-fun t!138942 () Bool)

(declare-fun tb!85873 () Bool)

(assert (=> (and b!1504096 (= (toChars!4034 (transformation!2828 (h!21340 rules!1640))) (toChars!4034 (transformation!2828 (rule!4617 (_1!8323 (v!22756 (_1!8330 lt!522731))))))) t!138942) tb!85873))

(declare-fun b!1504358 () Bool)

(declare-fun e!961799 () Bool)

(declare-fun tp!429001 () Bool)

(assert (=> b!1504358 (= e!961799 (and (inv!21155 (c!246632 (dynLambda!7204 (toChars!4034 (transformation!2828 (rule!4617 (_1!8323 (v!22756 (_1!8330 lt!522731)))))) (value!90258 (_1!8323 (v!22756 (_1!8330 lt!522731))))))) tp!429001))))

(declare-fun result!103244 () Bool)

(assert (=> tb!85873 (= result!103244 (and (inv!21158 (dynLambda!7204 (toChars!4034 (transformation!2828 (rule!4617 (_1!8323 (v!22756 (_1!8330 lt!522731)))))) (value!90258 (_1!8323 (v!22756 (_1!8330 lt!522731)))))) e!961799))))

(assert (= tb!85873 b!1504358))

(declare-fun m!1764007 () Bool)

(assert (=> b!1504358 m!1764007))

(declare-fun m!1764009 () Bool)

(assert (=> tb!85873 m!1764009))

(assert (=> d!444593 t!138942))

(declare-fun b_and!104651 () Bool)

(assert (= b_and!104637 (and (=> t!138942 result!103244) b_and!104651)))

(declare-fun m!1764011 () Bool)

(assert (=> d!444593 m!1764011))

(declare-fun m!1764013 () Bool)

(assert (=> d!444593 m!1764013))

(assert (=> b!1504100 d!444593))

(declare-fun b!1504362 () Bool)

(declare-fun lt!522878 () List!16006)

(declare-fun e!961800 () Bool)

(assert (=> b!1504362 (= e!961800 (or (not (= lt!522728 Nil!15938)) (= lt!522878 lt!522733)))))

(declare-fun d!444595 () Bool)

(assert (=> d!444595 e!961800))

(declare-fun res!677749 () Bool)

(assert (=> d!444595 (=> (not res!677749) (not e!961800))))

(assert (=> d!444595 (= res!677749 (= (content!2302 lt!522878) ((_ map or) (content!2302 lt!522733) (content!2302 lt!522728))))))

(declare-fun e!961801 () List!16006)

(assert (=> d!444595 (= lt!522878 e!961801)))

(declare-fun c!246687 () Bool)

(assert (=> d!444595 (= c!246687 ((_ is Nil!15938) lt!522733))))

(assert (=> d!444595 (= (++!4309 lt!522733 lt!522728) lt!522878)))

(declare-fun b!1504359 () Bool)

(assert (=> b!1504359 (= e!961801 lt!522728)))

(declare-fun b!1504361 () Bool)

(declare-fun res!677748 () Bool)

(assert (=> b!1504361 (=> (not res!677748) (not e!961800))))

(assert (=> b!1504361 (= res!677748 (= (size!12899 lt!522878) (+ (size!12899 lt!522733) (size!12899 lt!522728))))))

(declare-fun b!1504360 () Bool)

(assert (=> b!1504360 (= e!961801 (Cons!15938 (h!21339 lt!522733) (++!4309 (t!138935 lt!522733) lt!522728)))))

(assert (= (and d!444595 c!246687) b!1504359))

(assert (= (and d!444595 (not c!246687)) b!1504360))

(assert (= (and d!444595 res!677749) b!1504361))

(assert (= (and b!1504361 res!677748) b!1504362))

(declare-fun m!1764015 () Bool)

(assert (=> d!444595 m!1764015))

(assert (=> d!444595 m!1763805))

(assert (=> d!444595 m!1763837))

(declare-fun m!1764017 () Bool)

(assert (=> b!1504361 m!1764017))

(assert (=> b!1504361 m!1763811))

(assert (=> b!1504361 m!1763841))

(declare-fun m!1764019 () Bool)

(assert (=> b!1504360 m!1764019))

(assert (=> b!1504100 d!444595))

(declare-fun d!444597 () Bool)

(declare-fun c!246688 () Bool)

(assert (=> d!444597 (= c!246688 ((_ is Node!5407) (c!246632 (totalInput!2272 cacheFurthestNullable!64))))))

(declare-fun e!961802 () Bool)

(assert (=> d!444597 (= (inv!21155 (c!246632 (totalInput!2272 cacheFurthestNullable!64))) e!961802)))

(declare-fun b!1504363 () Bool)

(assert (=> b!1504363 (= e!961802 (inv!21163 (c!246632 (totalInput!2272 cacheFurthestNullable!64))))))

(declare-fun b!1504364 () Bool)

(declare-fun e!961803 () Bool)

(assert (=> b!1504364 (= e!961802 e!961803)))

(declare-fun res!677750 () Bool)

(assert (=> b!1504364 (= res!677750 (not ((_ is Leaf!8024) (c!246632 (totalInput!2272 cacheFurthestNullable!64)))))))

(assert (=> b!1504364 (=> res!677750 e!961803)))

(declare-fun b!1504365 () Bool)

(assert (=> b!1504365 (= e!961803 (inv!21164 (c!246632 (totalInput!2272 cacheFurthestNullable!64))))))

(assert (= (and d!444597 c!246688) b!1504363))

(assert (= (and d!444597 (not c!246688)) b!1504364))

(assert (= (and b!1504364 (not res!677750)) b!1504365))

(declare-fun m!1764021 () Bool)

(assert (=> b!1504363 m!1764021))

(declare-fun m!1764023 () Bool)

(assert (=> b!1504365 m!1764023))

(assert (=> b!1504101 d!444597))

(declare-fun d!444599 () Bool)

(assert (=> d!444599 (= (isEmpty!9894 (list!6309 (_2!8322 lt!522721))) ((_ is Nil!15937) (list!6309 (_2!8322 lt!522721))))))

(assert (=> b!1504081 d!444599))

(declare-fun d!444601 () Bool)

(assert (=> d!444601 (= (list!6309 (_2!8322 lt!522721)) (list!6311 (c!246632 (_2!8322 lt!522721))))))

(declare-fun bs!359918 () Bool)

(assert (= bs!359918 d!444601))

(declare-fun m!1764025 () Bool)

(assert (=> bs!359918 m!1764025))

(assert (=> b!1504081 d!444601))

(declare-fun d!444603 () Bool)

(assert (=> d!444603 (= (list!6310 (_1!8322 lt!522726)) (list!6312 (c!246634 (_1!8322 lt!522726))))))

(declare-fun bs!359919 () Bool)

(assert (= bs!359919 d!444603))

(declare-fun m!1764027 () Bool)

(assert (=> bs!359919 m!1764027))

(assert (=> b!1504097 d!444603))

(declare-fun d!444605 () Bool)

(assert (=> d!444605 (= (list!6310 acc!392) (list!6312 (c!246634 acc!392)))))

(declare-fun bs!359920 () Bool)

(assert (= bs!359920 d!444605))

(declare-fun m!1764029 () Bool)

(assert (=> bs!359920 m!1764029))

(assert (=> b!1504115 d!444605))

(declare-fun d!444607 () Bool)

(assert (=> d!444607 (= (list!6310 (_1!8322 lt!522721)) (list!6312 (c!246634 (_1!8322 lt!522721))))))

(declare-fun bs!359921 () Bool)

(assert (= bs!359921 d!444607))

(declare-fun m!1764031 () Bool)

(assert (=> bs!359921 m!1764031))

(assert (=> b!1504115 d!444607))

(declare-fun b!1504366 () Bool)

(declare-fun e!961805 () Bool)

(declare-fun e!961804 () Bool)

(assert (=> b!1504366 (= e!961805 e!961804)))

(declare-fun res!677753 () Bool)

(declare-fun lt!522879 () tuple2!14716)

(assert (=> b!1504366 (= res!677753 (< (size!12896 (_2!8322 lt!522879)) (size!12896 treated!70)))))

(assert (=> b!1504366 (=> (not res!677753) (not e!961804))))

(declare-fun b!1504367 () Bool)

(declare-fun e!961806 () tuple2!14716)

(declare-fun lt!522880 () tuple2!14716)

(declare-fun lt!522881 () Option!2912)

(assert (=> b!1504367 (= e!961806 (tuple2!14717 (prepend!451 (_1!8322 lt!522880) (_1!8323 (v!22756 lt!522881))) (_2!8322 lt!522880)))))

(assert (=> b!1504367 (= lt!522880 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522881))))))

(declare-fun b!1504368 () Bool)

(assert (=> b!1504368 (= e!961806 (tuple2!14717 (BalanceConc!10759 Empty!5408) treated!70))))

(declare-fun d!444609 () Bool)

(declare-fun e!961807 () Bool)

(assert (=> d!444609 e!961807))

(declare-fun res!677752 () Bool)

(assert (=> d!444609 (=> (not res!677752) (not e!961807))))

(assert (=> d!444609 (= res!677752 e!961805)))

(declare-fun c!246689 () Bool)

(assert (=> d!444609 (= c!246689 (> (size!12897 (_1!8322 lt!522879)) 0))))

(assert (=> d!444609 (= lt!522879 e!961806)))

(declare-fun c!246690 () Bool)

(assert (=> d!444609 (= c!246690 ((_ is Some!2911) lt!522881))))

(assert (=> d!444609 (= lt!522881 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 treated!70))))

(assert (=> d!444609 (= (lexRec!317 thiss!13241 rules!1640 treated!70) lt!522879)))

(declare-fun b!1504369 () Bool)

(assert (=> b!1504369 (= e!961805 (= (list!6309 (_2!8322 lt!522879)) (list!6309 treated!70)))))

(declare-fun b!1504370 () Bool)

(assert (=> b!1504370 (= e!961804 (not (isEmpty!9896 (_1!8322 lt!522879))))))

(declare-fun b!1504371 () Bool)

(declare-fun res!677751 () Bool)

(assert (=> b!1504371 (=> (not res!677751) (not e!961807))))

(assert (=> b!1504371 (= res!677751 (= (list!6310 (_1!8322 lt!522879)) (_1!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 treated!70)))))))

(declare-fun b!1504372 () Bool)

(assert (=> b!1504372 (= e!961807 (= (list!6309 (_2!8322 lt!522879)) (_2!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 treated!70)))))))

(assert (= (and d!444609 c!246690) b!1504367))

(assert (= (and d!444609 (not c!246690)) b!1504368))

(assert (= (and d!444609 c!246689) b!1504366))

(assert (= (and d!444609 (not c!246689)) b!1504369))

(assert (= (and b!1504366 res!677753) b!1504370))

(assert (= (and d!444609 res!677752) b!1504371))

(assert (= (and b!1504371 res!677751) b!1504372))

(declare-fun m!1764033 () Bool)

(assert (=> b!1504366 m!1764033))

(declare-fun m!1764035 () Bool)

(assert (=> b!1504366 m!1764035))

(declare-fun m!1764037 () Bool)

(assert (=> b!1504367 m!1764037))

(declare-fun m!1764039 () Bool)

(assert (=> b!1504367 m!1764039))

(declare-fun m!1764041 () Bool)

(assert (=> b!1504369 m!1764041))

(assert (=> b!1504369 m!1763483))

(assert (=> b!1504372 m!1764041))

(assert (=> b!1504372 m!1763483))

(assert (=> b!1504372 m!1763483))

(declare-fun m!1764043 () Bool)

(assert (=> b!1504372 m!1764043))

(declare-fun m!1764045 () Bool)

(assert (=> b!1504371 m!1764045))

(assert (=> b!1504371 m!1763483))

(assert (=> b!1504371 m!1763483))

(assert (=> b!1504371 m!1764043))

(declare-fun m!1764047 () Bool)

(assert (=> d!444609 m!1764047))

(declare-fun m!1764049 () Bool)

(assert (=> d!444609 m!1764049))

(declare-fun m!1764051 () Bool)

(assert (=> b!1504370 m!1764051))

(assert (=> b!1504115 d!444609))

(declare-fun d!444611 () Bool)

(assert (=> d!444611 (= (list!6309 (_2!8322 lt!522729)) (list!6311 (c!246632 (_2!8322 lt!522729))))))

(declare-fun bs!359922 () Bool)

(assert (= bs!359922 d!444611))

(declare-fun m!1764053 () Bool)

(assert (=> bs!359922 m!1764053))

(assert (=> b!1504116 d!444611))

(declare-fun d!444613 () Bool)

(assert (=> d!444613 (= (list!6309 (_2!8322 lt!522720)) (list!6311 (c!246632 (_2!8322 lt!522720))))))

(declare-fun bs!359923 () Bool)

(assert (= bs!359923 d!444613))

(declare-fun m!1764055 () Bool)

(assert (=> bs!359923 m!1764055))

(assert (=> b!1504116 d!444613))

(declare-fun d!444615 () Bool)

(declare-fun validCacheMapUp!130 (MutableMap!1374) Bool)

(assert (=> d!444615 (= (valid!1141 (_2!8330 lt!522731)) (validCacheMapUp!130 (cache!1755 (_2!8330 lt!522731))))))

(declare-fun bs!359924 () Bool)

(assert (= bs!359924 d!444615))

(declare-fun m!1764057 () Bool)

(assert (=> bs!359924 m!1764057))

(assert (=> b!1504078 d!444615))

(declare-fun d!444617 () Bool)

(declare-fun c!246691 () Bool)

(assert (=> d!444617 (= c!246691 ((_ is Node!5407) (c!246632 treated!70)))))

(declare-fun e!961808 () Bool)

(assert (=> d!444617 (= (inv!21155 (c!246632 treated!70)) e!961808)))

(declare-fun b!1504373 () Bool)

(assert (=> b!1504373 (= e!961808 (inv!21163 (c!246632 treated!70)))))

(declare-fun b!1504374 () Bool)

(declare-fun e!961809 () Bool)

(assert (=> b!1504374 (= e!961808 e!961809)))

(declare-fun res!677754 () Bool)

(assert (=> b!1504374 (= res!677754 (not ((_ is Leaf!8024) (c!246632 treated!70))))))

(assert (=> b!1504374 (=> res!677754 e!961809)))

(declare-fun b!1504375 () Bool)

(assert (=> b!1504375 (= e!961809 (inv!21164 (c!246632 treated!70)))))

(assert (= (and d!444617 c!246691) b!1504373))

(assert (= (and d!444617 (not c!246691)) b!1504374))

(assert (= (and b!1504374 (not res!677754)) b!1504375))

(declare-fun m!1764059 () Bool)

(assert (=> b!1504373 m!1764059))

(declare-fun m!1764061 () Bool)

(assert (=> b!1504375 m!1764061))

(assert (=> b!1504074 d!444617))

(declare-fun d!444619 () Bool)

(assert (=> d!444619 (= (valid!1141 cacheUp!616) (validCacheMapUp!130 (cache!1755 cacheUp!616)))))

(declare-fun bs!359925 () Bool)

(assert (= bs!359925 d!444619))

(declare-fun m!1764063 () Bool)

(assert (=> bs!359925 m!1764063))

(assert (=> b!1504095 d!444619))

(declare-fun d!444621 () Bool)

(declare-fun e!961810 () Bool)

(assert (=> d!444621 e!961810))

(declare-fun res!677755 () Bool)

(assert (=> d!444621 (=> res!677755 e!961810)))

(declare-fun lt!522882 () Bool)

(assert (=> d!444621 (= res!677755 (not lt!522882))))

(assert (=> d!444621 (= lt!522882 (= lt!522727 (drop!755 lt!522722 (- (size!12898 lt!522722) (size!12898 lt!522727)))))))

(assert (=> d!444621 (= (isSuffix!290 lt!522727 lt!522722) lt!522882)))

(declare-fun b!1504376 () Bool)

(assert (=> b!1504376 (= e!961810 (>= (size!12898 lt!522722) (size!12898 lt!522727)))))

(assert (= (and d!444621 (not res!677755)) b!1504376))

(assert (=> d!444621 m!1763983))

(declare-fun m!1764065 () Bool)

(assert (=> d!444621 m!1764065))

(declare-fun m!1764067 () Bool)

(assert (=> d!444621 m!1764067))

(assert (=> b!1504376 m!1763983))

(assert (=> b!1504376 m!1764065))

(assert (=> b!1504072 d!444621))

(declare-fun d!444623 () Bool)

(declare-fun e!961811 () Bool)

(assert (=> d!444623 e!961811))

(declare-fun res!677756 () Bool)

(assert (=> d!444623 (=> res!677756 e!961811)))

(declare-fun lt!522883 () Bool)

(assert (=> d!444623 (= res!677756 (not lt!522883))))

(assert (=> d!444623 (= lt!522883 (= lt!522727 (drop!755 lt!522743 (- (size!12898 lt!522743) (size!12898 lt!522727)))))))

(assert (=> d!444623 (= (isSuffix!290 lt!522727 lt!522743) lt!522883)))

(declare-fun b!1504377 () Bool)

(assert (=> b!1504377 (= e!961811 (>= (size!12898 lt!522743) (size!12898 lt!522727)))))

(assert (= (and d!444623 (not res!677756)) b!1504377))

(declare-fun m!1764069 () Bool)

(assert (=> d!444623 m!1764069))

(assert (=> d!444623 m!1764065))

(declare-fun m!1764071 () Bool)

(assert (=> d!444623 m!1764071))

(assert (=> b!1504377 m!1764069))

(assert (=> b!1504377 m!1764065))

(assert (=> b!1504072 d!444623))

(declare-fun d!444625 () Bool)

(assert (=> d!444625 (isSuffix!290 lt!522727 (++!4307 lt!522716 lt!522727))))

(declare-fun lt!522884 () Unit!25695)

(assert (=> d!444625 (= lt!522884 (choose!9133 lt!522716 lt!522727))))

(assert (=> d!444625 (= (lemmaConcatTwoListThenFSndIsSuffix!268 lt!522716 lt!522727) lt!522884)))

(declare-fun bs!359926 () Bool)

(assert (= bs!359926 d!444625))

(assert (=> bs!359926 m!1763477))

(assert (=> bs!359926 m!1763477))

(declare-fun m!1764073 () Bool)

(assert (=> bs!359926 m!1764073))

(declare-fun m!1764075 () Bool)

(assert (=> bs!359926 m!1764075))

(assert (=> b!1504072 d!444625))

(declare-fun d!444627 () Bool)

(assert (=> d!444627 (= (valid!1140 (_4!316 lt!522731)) (validCacheMapFurthestNullable!43 (cache!1756 (_4!316 lt!522731)) (totalInput!2272 (_4!316 lt!522731))))))

(declare-fun bs!359927 () Bool)

(assert (= bs!359927 d!444627))

(declare-fun m!1764077 () Bool)

(assert (=> bs!359927 m!1764077))

(assert (=> b!1504073 d!444627))

(declare-fun d!444629 () Bool)

(assert (=> d!444629 (= (inv!21158 (totalInput!2272 cacheFurthestNullable!64)) (isBalanced!1600 (c!246632 (totalInput!2272 cacheFurthestNullable!64))))))

(declare-fun bs!359928 () Bool)

(assert (= bs!359928 d!444629))

(declare-fun m!1764079 () Bool)

(assert (=> bs!359928 m!1764079))

(assert (=> b!1504093 d!444629))

(declare-fun d!444631 () Bool)

(declare-fun e!961813 () Bool)

(assert (=> d!444631 e!961813))

(declare-fun res!677757 () Bool)

(assert (=> d!444631 (=> (not res!677757) (not e!961813))))

(declare-fun lt!522885 () List!16005)

(assert (=> d!444631 (= res!677757 (= (content!2303 lt!522885) ((_ map or) (content!2303 lt!522716) (content!2303 lt!522727))))))

(declare-fun e!961812 () List!16005)

(assert (=> d!444631 (= lt!522885 e!961812)))

(declare-fun c!246692 () Bool)

(assert (=> d!444631 (= c!246692 ((_ is Nil!15937) lt!522716))))

(assert (=> d!444631 (= (++!4307 lt!522716 lt!522727) lt!522885)))

(declare-fun b!1504380 () Bool)

(declare-fun res!677758 () Bool)

(assert (=> b!1504380 (=> (not res!677758) (not e!961813))))

(assert (=> b!1504380 (= res!677758 (= (size!12898 lt!522885) (+ (size!12898 lt!522716) (size!12898 lt!522727))))))

(declare-fun b!1504379 () Bool)

(assert (=> b!1504379 (= e!961812 (Cons!15937 (h!21338 lt!522716) (++!4307 (t!138934 lt!522716) lt!522727)))))

(declare-fun b!1504381 () Bool)

(assert (=> b!1504381 (= e!961813 (or (not (= lt!522727 Nil!15937)) (= lt!522885 lt!522716)))))

(declare-fun b!1504378 () Bool)

(assert (=> b!1504378 (= e!961812 lt!522727)))

(assert (= (and d!444631 c!246692) b!1504378))

(assert (= (and d!444631 (not c!246692)) b!1504379))

(assert (= (and d!444631 res!677757) b!1504380))

(assert (= (and b!1504380 res!677758) b!1504381))

(declare-fun m!1764081 () Bool)

(assert (=> d!444631 m!1764081))

(assert (=> d!444631 m!1763963))

(declare-fun m!1764083 () Bool)

(assert (=> d!444631 m!1764083))

(declare-fun m!1764085 () Bool)

(assert (=> b!1504380 m!1764085))

(assert (=> b!1504380 m!1763969))

(assert (=> b!1504380 m!1764065))

(declare-fun m!1764087 () Bool)

(assert (=> b!1504379 m!1764087))

(assert (=> b!1504094 d!444631))

(declare-fun d!444633 () Bool)

(assert (=> d!444633 (= (list!6309 totalInput!458) (list!6311 (c!246632 totalInput!458)))))

(declare-fun bs!359929 () Bool)

(assert (= bs!359929 d!444633))

(declare-fun m!1764089 () Bool)

(assert (=> bs!359929 m!1764089))

(assert (=> b!1504094 d!444633))

(declare-fun d!444635 () Bool)

(assert (=> d!444635 (= (list!6309 input!1102) (list!6311 (c!246632 input!1102)))))

(declare-fun bs!359930 () Bool)

(assert (= bs!359930 d!444635))

(declare-fun m!1764091 () Bool)

(assert (=> bs!359930 m!1764091))

(assert (=> b!1504094 d!444635))

(declare-fun d!444637 () Bool)

(assert (=> d!444637 (= (list!6309 treated!70) (list!6311 (c!246632 treated!70)))))

(declare-fun bs!359931 () Bool)

(assert (= bs!359931 d!444637))

(declare-fun m!1764093 () Bool)

(assert (=> bs!359931 m!1764093))

(assert (=> b!1504094 d!444637))

(declare-fun d!444639 () Bool)

(assert (=> d!444639 (= (inv!21158 treated!70) (isBalanced!1600 (c!246632 treated!70)))))

(declare-fun bs!359932 () Bool)

(assert (= bs!359932 d!444639))

(declare-fun m!1764095 () Bool)

(assert (=> bs!359932 m!1764095))

(assert (=> start!140582 d!444639))

(declare-fun d!444641 () Bool)

(assert (=> d!444641 (= (inv!21158 input!1102) (isBalanced!1600 (c!246632 input!1102)))))

(declare-fun bs!359933 () Bool)

(assert (= bs!359933 d!444641))

(declare-fun m!1764097 () Bool)

(assert (=> bs!359933 m!1764097))

(assert (=> start!140582 d!444641))

(declare-fun d!444643 () Bool)

(declare-fun res!677761 () Bool)

(declare-fun e!961816 () Bool)

(assert (=> d!444643 (=> (not res!677761) (not e!961816))))

(assert (=> d!444643 (= res!677761 ((_ is HashMap!1375) (cache!1756 cacheFurthestNullable!64)))))

(assert (=> d!444643 (= (inv!21162 cacheFurthestNullable!64) e!961816)))

(declare-fun b!1504384 () Bool)

(assert (=> b!1504384 (= e!961816 (validCacheMapFurthestNullable!43 (cache!1756 cacheFurthestNullable!64) (totalInput!2272 cacheFurthestNullable!64)))))

(assert (= (and d!444643 res!677761) b!1504384))

(assert (=> b!1504384 m!1763763))

(assert (=> start!140582 d!444643))

(declare-fun d!444645 () Bool)

(declare-fun res!677764 () Bool)

(declare-fun e!961819 () Bool)

(assert (=> d!444645 (=> (not res!677764) (not e!961819))))

(assert (=> d!444645 (= res!677764 ((_ is HashMap!1376) (cache!1757 cacheDown!629)))))

(assert (=> d!444645 (= (inv!21161 cacheDown!629) e!961819)))

(declare-fun b!1504387 () Bool)

(assert (=> b!1504387 (= e!961819 (validCacheMapDown!130 (cache!1757 cacheDown!629)))))

(assert (= (and d!444645 res!677764) b!1504387))

(assert (=> b!1504387 m!1763671))

(assert (=> start!140582 d!444645))

(declare-fun d!444647 () Bool)

(assert (=> d!444647 (= (inv!21158 totalInput!458) (isBalanced!1600 (c!246632 totalInput!458)))))

(declare-fun bs!359934 () Bool)

(assert (= bs!359934 d!444647))

(declare-fun m!1764099 () Bool)

(assert (=> bs!359934 m!1764099))

(assert (=> start!140582 d!444647))

(declare-fun d!444649 () Bool)

(assert (=> d!444649 (= (inv!21159 acc!392) (isBalanced!1599 (c!246634 acc!392)))))

(declare-fun bs!359935 () Bool)

(assert (= bs!359935 d!444649))

(declare-fun m!1764101 () Bool)

(assert (=> bs!359935 m!1764101))

(assert (=> start!140582 d!444649))

(declare-fun d!444651 () Bool)

(declare-fun res!677767 () Bool)

(declare-fun e!961822 () Bool)

(assert (=> d!444651 (=> (not res!677767) (not e!961822))))

(assert (=> d!444651 (= res!677767 ((_ is HashMap!1374) (cache!1755 cacheUp!616)))))

(assert (=> d!444651 (= (inv!21160 cacheUp!616) e!961822)))

(declare-fun b!1504390 () Bool)

(assert (=> b!1504390 (= e!961822 (validCacheMapUp!130 (cache!1755 cacheUp!616)))))

(assert (= (and d!444651 res!677767) b!1504390))

(assert (=> b!1504390 m!1764063))

(assert (=> start!140582 d!444651))

(declare-fun d!444653 () Bool)

(assert (=> d!444653 (= (array_inv!1630 (_keys!1726 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) (bvsge (size!12892 (_keys!1726 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1504071 d!444653))

(declare-fun d!444655 () Bool)

(assert (=> d!444655 (= (array_inv!1632 (_values!1711 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) (bvsge (size!12895 (_values!1711 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1504071 d!444655))

(declare-fun d!444657 () Bool)

(assert (=> d!444657 (= (list!6310 (_1!8322 lt!522720)) (list!6312 (c!246634 (_1!8322 lt!522720))))))

(declare-fun bs!359936 () Bool)

(assert (= bs!359936 d!444657))

(declare-fun m!1764103 () Bool)

(assert (=> bs!359936 m!1764103))

(assert (=> b!1504091 d!444657))

(declare-fun b!1504391 () Bool)

(declare-fun e!961824 () Bool)

(declare-fun e!961823 () Bool)

(assert (=> b!1504391 (= e!961824 e!961823)))

(declare-fun res!677770 () Bool)

(declare-fun lt!522886 () tuple2!14716)

(assert (=> b!1504391 (= res!677770 (< (size!12896 (_2!8322 lt!522886)) (size!12896 totalInput!458)))))

(assert (=> b!1504391 (=> (not res!677770) (not e!961823))))

(declare-fun b!1504392 () Bool)

(declare-fun e!961825 () tuple2!14716)

(declare-fun lt!522887 () tuple2!14716)

(declare-fun lt!522888 () Option!2912)

(assert (=> b!1504392 (= e!961825 (tuple2!14717 (prepend!451 (_1!8322 lt!522887) (_1!8323 (v!22756 lt!522888))) (_2!8322 lt!522887)))))

(assert (=> b!1504392 (= lt!522887 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522888))))))

(declare-fun b!1504393 () Bool)

(assert (=> b!1504393 (= e!961825 (tuple2!14717 (BalanceConc!10759 Empty!5408) totalInput!458))))

(declare-fun d!444659 () Bool)

(declare-fun e!961826 () Bool)

(assert (=> d!444659 e!961826))

(declare-fun res!677769 () Bool)

(assert (=> d!444659 (=> (not res!677769) (not e!961826))))

(assert (=> d!444659 (= res!677769 e!961824)))

(declare-fun c!246693 () Bool)

(assert (=> d!444659 (= c!246693 (> (size!12897 (_1!8322 lt!522886)) 0))))

(assert (=> d!444659 (= lt!522886 e!961825)))

(declare-fun c!246694 () Bool)

(assert (=> d!444659 (= c!246694 ((_ is Some!2911) lt!522888))))

(assert (=> d!444659 (= lt!522888 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!444659 (= (lexRec!317 thiss!13241 rules!1640 totalInput!458) lt!522886)))

(declare-fun b!1504394 () Bool)

(assert (=> b!1504394 (= e!961824 (= (list!6309 (_2!8322 lt!522886)) (list!6309 totalInput!458)))))

(declare-fun b!1504395 () Bool)

(assert (=> b!1504395 (= e!961823 (not (isEmpty!9896 (_1!8322 lt!522886))))))

(declare-fun b!1504396 () Bool)

(declare-fun res!677768 () Bool)

(assert (=> b!1504396 (=> (not res!677768) (not e!961826))))

(assert (=> b!1504396 (= res!677768 (= (list!6310 (_1!8322 lt!522886)) (_1!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 totalInput!458)))))))

(declare-fun b!1504397 () Bool)

(assert (=> b!1504397 (= e!961826 (= (list!6309 (_2!8322 lt!522886)) (_2!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 totalInput!458)))))))

(assert (= (and d!444659 c!246694) b!1504392))

(assert (= (and d!444659 (not c!246694)) b!1504393))

(assert (= (and d!444659 c!246693) b!1504391))

(assert (= (and d!444659 (not c!246693)) b!1504394))

(assert (= (and b!1504391 res!677770) b!1504395))

(assert (= (and d!444659 res!677769) b!1504396))

(assert (= (and b!1504396 res!677768) b!1504397))

(declare-fun m!1764105 () Bool)

(assert (=> b!1504391 m!1764105))

(declare-fun m!1764107 () Bool)

(assert (=> b!1504391 m!1764107))

(declare-fun m!1764109 () Bool)

(assert (=> b!1504392 m!1764109))

(declare-fun m!1764111 () Bool)

(assert (=> b!1504392 m!1764111))

(declare-fun m!1764113 () Bool)

(assert (=> b!1504394 m!1764113))

(assert (=> b!1504394 m!1763479))

(assert (=> b!1504397 m!1764113))

(assert (=> b!1504397 m!1763479))

(assert (=> b!1504397 m!1763479))

(declare-fun m!1764115 () Bool)

(assert (=> b!1504397 m!1764115))

(declare-fun m!1764117 () Bool)

(assert (=> b!1504396 m!1764117))

(assert (=> b!1504396 m!1763479))

(assert (=> b!1504396 m!1763479))

(assert (=> b!1504396 m!1764115))

(declare-fun m!1764119 () Bool)

(assert (=> d!444659 m!1764119))

(declare-fun m!1764121 () Bool)

(assert (=> d!444659 m!1764121))

(declare-fun m!1764123 () Bool)

(assert (=> b!1504395 m!1764123))

(assert (=> b!1504091 d!444659))

(declare-fun lt!522889 () BalanceConc!10758)

(declare-fun b!1504401 () Bool)

(declare-fun e!961827 () Bool)

(assert (=> b!1504401 (= e!961827 (= (list!6310 lt!522889) (++!4309 (list!6310 acc!392) (list!6310 (_1!8322 lt!522729)))))))

(declare-fun b!1504400 () Bool)

(declare-fun res!677774 () Bool)

(assert (=> b!1504400 (=> (not res!677774) (not e!961827))))

(assert (=> b!1504400 (= res!677774 (>= (height!801 (++!4310 (c!246634 acc!392) (c!246634 (_1!8322 lt!522729)))) (max!0 (height!801 (c!246634 acc!392)) (height!801 (c!246634 (_1!8322 lt!522729))))))))

(declare-fun b!1504398 () Bool)

(declare-fun res!677772 () Bool)

(assert (=> b!1504398 (=> (not res!677772) (not e!961827))))

(assert (=> b!1504398 (= res!677772 (isBalanced!1599 (++!4310 (c!246634 acc!392) (c!246634 (_1!8322 lt!522729)))))))

(declare-fun b!1504399 () Bool)

(declare-fun res!677771 () Bool)

(assert (=> b!1504399 (=> (not res!677771) (not e!961827))))

(assert (=> b!1504399 (= res!677771 (<= (height!801 (++!4310 (c!246634 acc!392) (c!246634 (_1!8322 lt!522729)))) (+ (max!0 (height!801 (c!246634 acc!392)) (height!801 (c!246634 (_1!8322 lt!522729)))) 1)))))

(declare-fun d!444661 () Bool)

(assert (=> d!444661 e!961827))

(declare-fun res!677773 () Bool)

(assert (=> d!444661 (=> (not res!677773) (not e!961827))))

(assert (=> d!444661 (= res!677773 (appendAssocInst!359 (c!246634 acc!392) (c!246634 (_1!8322 lt!522729))))))

(assert (=> d!444661 (= lt!522889 (BalanceConc!10759 (++!4310 (c!246634 acc!392) (c!246634 (_1!8322 lt!522729)))))))

(assert (=> d!444661 (= (++!4306 acc!392 (_1!8322 lt!522729)) lt!522889)))

(assert (= (and d!444661 res!677773) b!1504398))

(assert (= (and b!1504398 res!677772) b!1504399))

(assert (= (and b!1504399 res!677771) b!1504400))

(assert (= (and b!1504400 res!677774) b!1504401))

(declare-fun m!1764125 () Bool)

(assert (=> b!1504401 m!1764125))

(assert (=> b!1504401 m!1763451))

(declare-fun m!1764127 () Bool)

(assert (=> b!1504401 m!1764127))

(assert (=> b!1504401 m!1763451))

(assert (=> b!1504401 m!1764127))

(declare-fun m!1764129 () Bool)

(assert (=> b!1504401 m!1764129))

(declare-fun m!1764131 () Bool)

(assert (=> b!1504400 m!1764131))

(declare-fun m!1764133 () Bool)

(assert (=> b!1504400 m!1764133))

(declare-fun m!1764135 () Bool)

(assert (=> b!1504400 m!1764135))

(assert (=> b!1504400 m!1764133))

(declare-fun m!1764137 () Bool)

(assert (=> b!1504400 m!1764137))

(assert (=> b!1504400 m!1764131))

(assert (=> b!1504400 m!1764135))

(declare-fun m!1764139 () Bool)

(assert (=> b!1504400 m!1764139))

(declare-fun m!1764141 () Bool)

(assert (=> d!444661 m!1764141))

(assert (=> d!444661 m!1764133))

(assert (=> b!1504399 m!1764131))

(assert (=> b!1504399 m!1764133))

(assert (=> b!1504399 m!1764135))

(assert (=> b!1504399 m!1764133))

(assert (=> b!1504399 m!1764137))

(assert (=> b!1504399 m!1764131))

(assert (=> b!1504399 m!1764135))

(assert (=> b!1504399 m!1764139))

(assert (=> b!1504398 m!1764133))

(assert (=> b!1504398 m!1764133))

(declare-fun m!1764143 () Bool)

(assert (=> b!1504398 m!1764143))

(assert (=> b!1504091 d!444661))

(declare-fun b!1504402 () Bool)

(declare-fun e!961829 () Bool)

(declare-fun e!961828 () Bool)

(assert (=> b!1504402 (= e!961829 e!961828)))

(declare-fun res!677777 () Bool)

(declare-fun lt!522890 () tuple2!14716)

(assert (=> b!1504402 (= res!677777 (< (size!12896 (_2!8322 lt!522890)) (size!12896 input!1102)))))

(assert (=> b!1504402 (=> (not res!677777) (not e!961828))))

(declare-fun b!1504403 () Bool)

(declare-fun e!961830 () tuple2!14716)

(declare-fun lt!522891 () tuple2!14716)

(declare-fun lt!522892 () Option!2912)

(assert (=> b!1504403 (= e!961830 (tuple2!14717 (prepend!451 (_1!8322 lt!522891) (_1!8323 (v!22756 lt!522892))) (_2!8322 lt!522891)))))

(assert (=> b!1504403 (= lt!522891 (lexRec!317 thiss!13241 rules!1640 (_2!8323 (v!22756 lt!522892))))))

(declare-fun b!1504404 () Bool)

(assert (=> b!1504404 (= e!961830 (tuple2!14717 (BalanceConc!10759 Empty!5408) input!1102))))

(declare-fun d!444663 () Bool)

(declare-fun e!961831 () Bool)

(assert (=> d!444663 e!961831))

(declare-fun res!677776 () Bool)

(assert (=> d!444663 (=> (not res!677776) (not e!961831))))

(assert (=> d!444663 (= res!677776 e!961829)))

(declare-fun c!246695 () Bool)

(assert (=> d!444663 (= c!246695 (> (size!12897 (_1!8322 lt!522890)) 0))))

(assert (=> d!444663 (= lt!522890 e!961830)))

(declare-fun c!246696 () Bool)

(assert (=> d!444663 (= c!246696 ((_ is Some!2911) lt!522892))))

(assert (=> d!444663 (= lt!522892 (maxPrefixZipperSequence!579 thiss!13241 rules!1640 input!1102))))

(assert (=> d!444663 (= (lexRec!317 thiss!13241 rules!1640 input!1102) lt!522890)))

(declare-fun b!1504405 () Bool)

(assert (=> b!1504405 (= e!961829 (= (list!6309 (_2!8322 lt!522890)) (list!6309 input!1102)))))

(declare-fun b!1504406 () Bool)

(assert (=> b!1504406 (= e!961828 (not (isEmpty!9896 (_1!8322 lt!522890))))))

(declare-fun b!1504407 () Bool)

(declare-fun res!677775 () Bool)

(assert (=> b!1504407 (=> (not res!677775) (not e!961831))))

(assert (=> b!1504407 (= res!677775 (= (list!6310 (_1!8322 lt!522890)) (_1!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 input!1102)))))))

(declare-fun b!1504408 () Bool)

(assert (=> b!1504408 (= e!961831 (= (list!6309 (_2!8322 lt!522890)) (_2!8331 (lexList!737 thiss!13241 rules!1640 (list!6309 input!1102)))))))

(assert (= (and d!444663 c!246696) b!1504403))

(assert (= (and d!444663 (not c!246696)) b!1504404))

(assert (= (and d!444663 c!246695) b!1504402))

(assert (= (and d!444663 (not c!246695)) b!1504405))

(assert (= (and b!1504402 res!677777) b!1504406))

(assert (= (and d!444663 res!677776) b!1504407))

(assert (= (and b!1504407 res!677775) b!1504408))

(declare-fun m!1764145 () Bool)

(assert (=> b!1504402 m!1764145))

(declare-fun m!1764147 () Bool)

(assert (=> b!1504402 m!1764147))

(declare-fun m!1764149 () Bool)

(assert (=> b!1504403 m!1764149))

(declare-fun m!1764151 () Bool)

(assert (=> b!1504403 m!1764151))

(declare-fun m!1764153 () Bool)

(assert (=> b!1504405 m!1764153))

(assert (=> b!1504405 m!1763481))

(assert (=> b!1504408 m!1764153))

(assert (=> b!1504408 m!1763481))

(assert (=> b!1504408 m!1763481))

(declare-fun m!1764155 () Bool)

(assert (=> b!1504408 m!1764155))

(declare-fun m!1764157 () Bool)

(assert (=> b!1504407 m!1764157))

(assert (=> b!1504407 m!1763481))

(assert (=> b!1504407 m!1763481))

(assert (=> b!1504407 m!1764155))

(declare-fun m!1764159 () Bool)

(assert (=> d!444663 m!1764159))

(assert (=> d!444663 m!1763549))

(declare-fun m!1764161 () Bool)

(assert (=> b!1504406 m!1764161))

(assert (=> b!1504091 d!444663))

(declare-fun d!444665 () Bool)

(assert (=> d!444665 (= (list!6310 lt!522740) (list!6312 (c!246634 lt!522740)))))

(declare-fun bs!359937 () Bool)

(assert (= bs!359937 d!444665))

(declare-fun m!1764163 () Bool)

(assert (=> bs!359937 m!1764163))

(assert (=> b!1504091 d!444665))

(declare-fun e!961837 () Bool)

(declare-fun b!1504417 () Bool)

(declare-fun tp!429009 () Bool)

(declare-fun tp!429008 () Bool)

(assert (=> b!1504417 (= e!961837 (and (inv!21155 (left!13321 (c!246632 input!1102))) tp!429008 (inv!21155 (right!13651 (c!246632 input!1102))) tp!429009))))

(declare-fun b!1504419 () Bool)

(declare-fun e!961836 () Bool)

(declare-fun tp!429010 () Bool)

(assert (=> b!1504419 (= e!961836 tp!429010)))

(declare-fun b!1504418 () Bool)

(declare-fun inv!21167 (IArray!10819) Bool)

(assert (=> b!1504418 (= e!961837 (and (inv!21167 (xs!8182 (c!246632 input!1102))) e!961836))))

(assert (=> b!1504067 (= tp!428979 (and (inv!21155 (c!246632 input!1102)) e!961837))))

(assert (= (and b!1504067 ((_ is Node!5407) (c!246632 input!1102))) b!1504417))

(assert (= b!1504418 b!1504419))

(assert (= (and b!1504067 ((_ is Leaf!8024) (c!246632 input!1102))) b!1504418))

(declare-fun m!1764165 () Bool)

(assert (=> b!1504417 m!1764165))

(declare-fun m!1764167 () Bool)

(assert (=> b!1504417 m!1764167))

(declare-fun m!1764169 () Bool)

(assert (=> b!1504418 m!1764169))

(assert (=> b!1504067 m!1763537))

(declare-fun b!1504420 () Bool)

(declare-fun tp!429011 () Bool)

(declare-fun e!961839 () Bool)

(declare-fun tp!429012 () Bool)

(assert (=> b!1504420 (= e!961839 (and (inv!21155 (left!13321 (c!246632 treated!70))) tp!429011 (inv!21155 (right!13651 (c!246632 treated!70))) tp!429012))))

(declare-fun b!1504422 () Bool)

(declare-fun e!961838 () Bool)

(declare-fun tp!429013 () Bool)

(assert (=> b!1504422 (= e!961838 tp!429013)))

(declare-fun b!1504421 () Bool)

(assert (=> b!1504421 (= e!961839 (and (inv!21167 (xs!8182 (c!246632 treated!70))) e!961838))))

(assert (=> b!1504074 (= tp!428992 (and (inv!21155 (c!246632 treated!70)) e!961839))))

(assert (= (and b!1504074 ((_ is Node!5407) (c!246632 treated!70))) b!1504420))

(assert (= b!1504421 b!1504422))

(assert (= (and b!1504074 ((_ is Leaf!8024) (c!246632 treated!70))) b!1504421))

(declare-fun m!1764171 () Bool)

(assert (=> b!1504420 m!1764171))

(declare-fun m!1764173 () Bool)

(assert (=> b!1504420 m!1764173))

(declare-fun m!1764175 () Bool)

(assert (=> b!1504421 m!1764175))

(assert (=> b!1504074 m!1763487))

(declare-fun setIsEmpty!8812 () Bool)

(declare-fun setRes!8812 () Bool)

(assert (=> setIsEmpty!8812 setRes!8812))

(declare-fun b!1504431 () Bool)

(declare-fun e!961848 () Bool)

(declare-fun tp!429024 () Bool)

(assert (=> b!1504431 (= e!961848 tp!429024)))

(declare-fun b!1504432 () Bool)

(declare-fun e!961846 () Bool)

(declare-fun tp!429022 () Bool)

(declare-fun tp_is_empty!7005 () Bool)

(declare-fun inv!21168 (Context!1322) Bool)

(assert (=> b!1504432 (= e!961846 (and (inv!21168 (_1!8324 (_1!8325 (h!21342 (zeroValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))))) e!961848 tp_is_empty!7005 setRes!8812 tp!429022))))

(declare-fun condSetEmpty!8812 () Bool)

(assert (=> b!1504432 (= condSetEmpty!8812 (= (_2!8325 (h!21342 (zeroValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun b!1504433 () Bool)

(declare-fun e!961847 () Bool)

(declare-fun tp!429025 () Bool)

(assert (=> b!1504433 (= e!961847 tp!429025)))

(declare-fun setNonEmpty!8812 () Bool)

(declare-fun tp!429023 () Bool)

(declare-fun setElem!8812 () Context!1322)

(assert (=> setNonEmpty!8812 (= setRes!8812 (and tp!429023 (inv!21168 setElem!8812) e!961847))))

(declare-fun setRest!8812 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8812 (= (_2!8325 (h!21342 (zeroValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8812 true) setRest!8812))))

(assert (=> b!1504066 (= tp!428991 e!961846)))

(assert (= b!1504432 b!1504431))

(assert (= (and b!1504432 condSetEmpty!8812) setIsEmpty!8812))

(assert (= (and b!1504432 (not condSetEmpty!8812)) setNonEmpty!8812))

(assert (= setNonEmpty!8812 b!1504433))

(assert (= (and b!1504066 ((_ is Cons!15941) (zeroValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))) b!1504432))

(declare-fun m!1764177 () Bool)

(assert (=> b!1504432 m!1764177))

(declare-fun m!1764179 () Bool)

(assert (=> setNonEmpty!8812 m!1764179))

(declare-fun setIsEmpty!8813 () Bool)

(declare-fun setRes!8813 () Bool)

(assert (=> setIsEmpty!8813 setRes!8813))

(declare-fun b!1504434 () Bool)

(declare-fun e!961851 () Bool)

(declare-fun tp!429028 () Bool)

(assert (=> b!1504434 (= e!961851 tp!429028)))

(declare-fun tp!429026 () Bool)

(declare-fun b!1504435 () Bool)

(declare-fun e!961849 () Bool)

(assert (=> b!1504435 (= e!961849 (and (inv!21168 (_1!8324 (_1!8325 (h!21342 (minValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))))) e!961851 tp_is_empty!7005 setRes!8813 tp!429026))))

(declare-fun condSetEmpty!8813 () Bool)

(assert (=> b!1504435 (= condSetEmpty!8813 (= (_2!8325 (h!21342 (minValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun b!1504436 () Bool)

(declare-fun e!961850 () Bool)

(declare-fun tp!429029 () Bool)

(assert (=> b!1504436 (= e!961850 tp!429029)))

(declare-fun setNonEmpty!8813 () Bool)

(declare-fun setElem!8813 () Context!1322)

(declare-fun tp!429027 () Bool)

(assert (=> setNonEmpty!8813 (= setRes!8813 (and tp!429027 (inv!21168 setElem!8813) e!961850))))

(declare-fun setRest!8813 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8813 (= (_2!8325 (h!21342 (minValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8813 true) setRest!8813))))

(assert (=> b!1504066 (= tp!428977 e!961849)))

(assert (= b!1504435 b!1504434))

(assert (= (and b!1504435 condSetEmpty!8813) setIsEmpty!8813))

(assert (= (and b!1504435 (not condSetEmpty!8813)) setNonEmpty!8813))

(assert (= setNonEmpty!8813 b!1504436))

(assert (= (and b!1504066 ((_ is Cons!15941) (minValue!1687 (v!22757 (underlying!3069 (v!22758 (underlying!3070 (cache!1755 cacheUp!616)))))))) b!1504435))

(declare-fun m!1764181 () Bool)

(assert (=> b!1504435 m!1764181))

(declare-fun m!1764183 () Bool)

(assert (=> setNonEmpty!8813 m!1764183))

(declare-fun b!1504445 () Bool)

(declare-fun e!961857 () Bool)

(declare-fun tp!429037 () Bool)

(declare-fun tp!429038 () Bool)

(assert (=> b!1504445 (= e!961857 (and (inv!21156 (left!13322 (c!246634 acc!392))) tp!429038 (inv!21156 (right!13652 (c!246634 acc!392))) tp!429037))))

(declare-fun b!1504447 () Bool)

(declare-fun e!961856 () Bool)

(declare-fun tp!429036 () Bool)

(assert (=> b!1504447 (= e!961856 tp!429036)))

(declare-fun b!1504446 () Bool)

(declare-fun inv!21169 (IArray!10821) Bool)

(assert (=> b!1504446 (= e!961857 (and (inv!21169 (xs!8183 (c!246634 acc!392))) e!961856))))

(assert (=> b!1504085 (= tp!428997 (and (inv!21156 (c!246634 acc!392)) e!961857))))

(assert (= (and b!1504085 ((_ is Node!5408) (c!246634 acc!392))) b!1504445))

(assert (= b!1504446 b!1504447))

(assert (= (and b!1504085 ((_ is Leaf!8025) (c!246634 acc!392))) b!1504446))

(declare-fun m!1764185 () Bool)

(assert (=> b!1504445 m!1764185))

(declare-fun m!1764187 () Bool)

(assert (=> b!1504445 m!1764187))

(declare-fun m!1764189 () Bool)

(assert (=> b!1504446 m!1764189))

(assert (=> b!1504085 m!1763489))

(declare-fun b!1504458 () Bool)

(declare-fun e!961860 () Bool)

(assert (=> b!1504458 (= e!961860 tp_is_empty!7005)))

(assert (=> b!1504086 (= tp!428976 e!961860)))

(declare-fun b!1504459 () Bool)

(declare-fun tp!429051 () Bool)

(declare-fun tp!429049 () Bool)

(assert (=> b!1504459 (= e!961860 (and tp!429051 tp!429049))))

(declare-fun b!1504461 () Bool)

(declare-fun tp!429052 () Bool)

(declare-fun tp!429050 () Bool)

(assert (=> b!1504461 (= e!961860 (and tp!429052 tp!429050))))

(declare-fun b!1504460 () Bool)

(declare-fun tp!429053 () Bool)

(assert (=> b!1504460 (= e!961860 tp!429053)))

(assert (= (and b!1504086 ((_ is ElementMatch!4143) (regex!2828 (h!21340 rules!1640)))) b!1504458))

(assert (= (and b!1504086 ((_ is Concat!7062) (regex!2828 (h!21340 rules!1640)))) b!1504459))

(assert (= (and b!1504086 ((_ is Star!4143) (regex!2828 (h!21340 rules!1640)))) b!1504460))

(assert (= (and b!1504086 ((_ is Union!4143) (regex!2828 (h!21340 rules!1640)))) b!1504461))

(declare-fun setElem!8818 () Context!1322)

(declare-fun e!961872 () Bool)

(declare-fun tp!429074 () Bool)

(declare-fun setRes!8818 () Bool)

(declare-fun setNonEmpty!8818 () Bool)

(assert (=> setNonEmpty!8818 (= setRes!8818 (and tp!429074 (inv!21168 setElem!8818) e!961872))))

(declare-fun mapValue!6812 () List!16010)

(declare-fun setRest!8819 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8818 (= (_1!8326 (_1!8327 (h!21343 mapValue!6812))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8818 true) setRest!8819))))

(declare-fun setIsEmpty!8818 () Bool)

(declare-fun setRes!8819 () Bool)

(assert (=> setIsEmpty!8818 setRes!8819))

(declare-fun b!1504472 () Bool)

(declare-fun e!961869 () Bool)

(declare-fun tp!429071 () Bool)

(assert (=> b!1504472 (= e!961869 (and setRes!8818 tp!429071))))

(declare-fun condSetEmpty!8819 () Bool)

(assert (=> b!1504472 (= condSetEmpty!8819 (= (_1!8326 (_1!8327 (h!21343 mapValue!6812))) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun e!961870 () Bool)

(declare-fun tp!429070 () Bool)

(declare-fun setElem!8819 () Context!1322)

(declare-fun setNonEmpty!8819 () Bool)

(assert (=> setNonEmpty!8819 (= setRes!8819 (and tp!429070 (inv!21168 setElem!8819) e!961870))))

(declare-fun mapDefault!6812 () List!16010)

(declare-fun setRest!8818 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8819 (= (_1!8326 (_1!8327 (h!21343 mapDefault!6812))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8819 true) setRest!8818))))

(declare-fun mapNonEmpty!6812 () Bool)

(declare-fun mapRes!6812 () Bool)

(declare-fun tp!429073 () Bool)

(assert (=> mapNonEmpty!6812 (= mapRes!6812 (and tp!429073 e!961869))))

(declare-fun mapRest!6812 () (Array (_ BitVec 32) List!16010))

(declare-fun mapKey!6812 () (_ BitVec 32))

(assert (=> mapNonEmpty!6812 (= mapRest!6807 (store mapRest!6812 mapKey!6812 mapValue!6812))))

(declare-fun b!1504473 () Bool)

(declare-fun tp!429069 () Bool)

(assert (=> b!1504473 (= e!961870 tp!429069)))

(declare-fun condMapEmpty!6812 () Bool)

(assert (=> mapNonEmpty!6807 (= condMapEmpty!6812 (= mapRest!6807 ((as const (Array (_ BitVec 32) List!16010)) mapDefault!6812)))))

(declare-fun e!961871 () Bool)

(assert (=> mapNonEmpty!6807 (= tp!428986 (and e!961871 mapRes!6812))))

(declare-fun b!1504474 () Bool)

(declare-fun tp!429072 () Bool)

(assert (=> b!1504474 (= e!961871 (and setRes!8819 tp!429072))))

(declare-fun condSetEmpty!8818 () Bool)

(assert (=> b!1504474 (= condSetEmpty!8818 (= (_1!8326 (_1!8327 (h!21343 mapDefault!6812))) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun setIsEmpty!8819 () Bool)

(assert (=> setIsEmpty!8819 setRes!8818))

(declare-fun mapIsEmpty!6812 () Bool)

(assert (=> mapIsEmpty!6812 mapRes!6812))

(declare-fun b!1504475 () Bool)

(declare-fun tp!429068 () Bool)

(assert (=> b!1504475 (= e!961872 tp!429068)))

(assert (= (and mapNonEmpty!6807 condMapEmpty!6812) mapIsEmpty!6812))

(assert (= (and mapNonEmpty!6807 (not condMapEmpty!6812)) mapNonEmpty!6812))

(assert (= (and b!1504472 condSetEmpty!8819) setIsEmpty!8819))

(assert (= (and b!1504472 (not condSetEmpty!8819)) setNonEmpty!8818))

(assert (= setNonEmpty!8818 b!1504475))

(assert (= (and mapNonEmpty!6812 ((_ is Cons!15942) mapValue!6812)) b!1504472))

(assert (= (and b!1504474 condSetEmpty!8818) setIsEmpty!8818))

(assert (= (and b!1504474 (not condSetEmpty!8818)) setNonEmpty!8819))

(assert (= setNonEmpty!8819 b!1504473))

(assert (= (and mapNonEmpty!6807 ((_ is Cons!15942) mapDefault!6812)) b!1504474))

(declare-fun m!1764191 () Bool)

(assert (=> setNonEmpty!8818 m!1764191))

(declare-fun m!1764193 () Bool)

(assert (=> setNonEmpty!8819 m!1764193))

(declare-fun m!1764195 () Bool)

(assert (=> mapNonEmpty!6812 m!1764195))

(declare-fun e!961878 () Bool)

(assert (=> mapNonEmpty!6807 (= tp!428978 e!961878)))

(declare-fun setIsEmpty!8822 () Bool)

(declare-fun setRes!8822 () Bool)

(assert (=> setIsEmpty!8822 setRes!8822))

(declare-fun tp!429081 () Bool)

(declare-fun setElem!8822 () Context!1322)

(declare-fun e!961877 () Bool)

(declare-fun setNonEmpty!8822 () Bool)

(assert (=> setNonEmpty!8822 (= setRes!8822 (and tp!429081 (inv!21168 setElem!8822) e!961877))))

(declare-fun setRest!8822 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8822 (= (_1!8326 (_1!8327 (h!21343 mapValue!6808))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8822 true) setRest!8822))))

(declare-fun b!1504483 () Bool)

(declare-fun tp!429083 () Bool)

(assert (=> b!1504483 (= e!961877 tp!429083)))

(declare-fun b!1504482 () Bool)

(declare-fun tp!429082 () Bool)

(assert (=> b!1504482 (= e!961878 (and setRes!8822 tp!429082))))

(declare-fun condSetEmpty!8822 () Bool)

(assert (=> b!1504482 (= condSetEmpty!8822 (= (_1!8326 (_1!8327 (h!21343 mapValue!6808))) ((as const (Array Context!1322 Bool)) false)))))

(assert (= (and b!1504482 condSetEmpty!8822) setIsEmpty!8822))

(assert (= (and b!1504482 (not condSetEmpty!8822)) setNonEmpty!8822))

(assert (= setNonEmpty!8822 b!1504483))

(assert (= (and mapNonEmpty!6807 ((_ is Cons!15942) mapValue!6808)) b!1504482))

(declare-fun m!1764197 () Bool)

(assert (=> setNonEmpty!8822 m!1764197))

(declare-fun e!961880 () Bool)

(assert (=> b!1504112 (= tp!428984 e!961880)))

(declare-fun setIsEmpty!8823 () Bool)

(declare-fun setRes!8823 () Bool)

(assert (=> setIsEmpty!8823 setRes!8823))

(declare-fun setNonEmpty!8823 () Bool)

(declare-fun setElem!8823 () Context!1322)

(declare-fun tp!429084 () Bool)

(declare-fun e!961879 () Bool)

(assert (=> setNonEmpty!8823 (= setRes!8823 (and tp!429084 (inv!21168 setElem!8823) e!961879))))

(declare-fun setRest!8823 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8823 (= (_1!8326 (_1!8327 (h!21343 mapDefault!6808))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8823 true) setRest!8823))))

(declare-fun b!1504485 () Bool)

(declare-fun tp!429086 () Bool)

(assert (=> b!1504485 (= e!961879 tp!429086)))

(declare-fun b!1504484 () Bool)

(declare-fun tp!429085 () Bool)

(assert (=> b!1504484 (= e!961880 (and setRes!8823 tp!429085))))

(declare-fun condSetEmpty!8823 () Bool)

(assert (=> b!1504484 (= condSetEmpty!8823 (= (_1!8326 (_1!8327 (h!21343 mapDefault!6808))) ((as const (Array Context!1322 Bool)) false)))))

(assert (= (and b!1504484 condSetEmpty!8823) setIsEmpty!8823))

(assert (= (and b!1504484 (not condSetEmpty!8823)) setNonEmpty!8823))

(assert (= setNonEmpty!8823 b!1504485))

(assert (= (and b!1504112 ((_ is Cons!15942) mapDefault!6808)) b!1504484))

(declare-fun m!1764199 () Bool)

(assert (=> setNonEmpty!8823 m!1764199))

(declare-fun setIsEmpty!8824 () Bool)

(declare-fun setRes!8824 () Bool)

(assert (=> setIsEmpty!8824 setRes!8824))

(declare-fun b!1504486 () Bool)

(declare-fun e!961883 () Bool)

(declare-fun tp!429089 () Bool)

(assert (=> b!1504486 (= e!961883 tp!429089)))

(declare-fun b!1504487 () Bool)

(declare-fun tp!429087 () Bool)

(declare-fun e!961881 () Bool)

(assert (=> b!1504487 (= e!961881 (and (inv!21168 (_1!8324 (_1!8325 (h!21342 mapDefault!6809)))) e!961883 tp_is_empty!7005 setRes!8824 tp!429087))))

(declare-fun condSetEmpty!8824 () Bool)

(assert (=> b!1504487 (= condSetEmpty!8824 (= (_2!8325 (h!21342 mapDefault!6809)) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun b!1504488 () Bool)

(declare-fun e!961882 () Bool)

(declare-fun tp!429090 () Bool)

(assert (=> b!1504488 (= e!961882 tp!429090)))

(declare-fun setElem!8824 () Context!1322)

(declare-fun setNonEmpty!8824 () Bool)

(declare-fun tp!429088 () Bool)

(assert (=> setNonEmpty!8824 (= setRes!8824 (and tp!429088 (inv!21168 setElem!8824) e!961882))))

(declare-fun setRest!8824 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8824 (= (_2!8325 (h!21342 mapDefault!6809)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8824 true) setRest!8824))))

(assert (=> b!1504102 (= tp!428994 e!961881)))

(assert (= b!1504487 b!1504486))

(assert (= (and b!1504487 condSetEmpty!8824) setIsEmpty!8824))

(assert (= (and b!1504487 (not condSetEmpty!8824)) setNonEmpty!8824))

(assert (= setNonEmpty!8824 b!1504488))

(assert (= (and b!1504102 ((_ is Cons!15941) mapDefault!6809)) b!1504487))

(declare-fun m!1764201 () Bool)

(assert (=> b!1504487 m!1764201))

(declare-fun m!1764203 () Bool)

(assert (=> setNonEmpty!8824 m!1764203))

(declare-fun e!961885 () Bool)

(assert (=> b!1504103 (= tp!428970 e!961885)))

(declare-fun setIsEmpty!8825 () Bool)

(declare-fun setRes!8825 () Bool)

(assert (=> setIsEmpty!8825 setRes!8825))

(declare-fun setNonEmpty!8825 () Bool)

(declare-fun e!961884 () Bool)

(declare-fun setElem!8825 () Context!1322)

(declare-fun tp!429091 () Bool)

(assert (=> setNonEmpty!8825 (= setRes!8825 (and tp!429091 (inv!21168 setElem!8825) e!961884))))

(declare-fun setRest!8825 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8825 (= (_1!8326 (_1!8327 (h!21343 (zeroValue!1688 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8825 true) setRest!8825))))

(declare-fun b!1504490 () Bool)

(declare-fun tp!429093 () Bool)

(assert (=> b!1504490 (= e!961884 tp!429093)))

(declare-fun b!1504489 () Bool)

(declare-fun tp!429092 () Bool)

(assert (=> b!1504489 (= e!961885 (and setRes!8825 tp!429092))))

(declare-fun condSetEmpty!8825 () Bool)

(assert (=> b!1504489 (= condSetEmpty!8825 (= (_1!8326 (_1!8327 (h!21343 (zeroValue!1688 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))))) ((as const (Array Context!1322 Bool)) false)))))

(assert (= (and b!1504489 condSetEmpty!8825) setIsEmpty!8825))

(assert (= (and b!1504489 (not condSetEmpty!8825)) setNonEmpty!8825))

(assert (= setNonEmpty!8825 b!1504490))

(assert (= (and b!1504103 ((_ is Cons!15942) (zeroValue!1688 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64)))))))) b!1504489))

(declare-fun m!1764205 () Bool)

(assert (=> setNonEmpty!8825 m!1764205))

(declare-fun e!961887 () Bool)

(assert (=> b!1504103 (= tp!428973 e!961887)))

(declare-fun setIsEmpty!8826 () Bool)

(declare-fun setRes!8826 () Bool)

(assert (=> setIsEmpty!8826 setRes!8826))

(declare-fun setElem!8826 () Context!1322)

(declare-fun setNonEmpty!8826 () Bool)

(declare-fun tp!429094 () Bool)

(declare-fun e!961886 () Bool)

(assert (=> setNonEmpty!8826 (= setRes!8826 (and tp!429094 (inv!21168 setElem!8826) e!961886))))

(declare-fun setRest!8826 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8826 (= (_1!8326 (_1!8327 (h!21343 (minValue!1688 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8826 true) setRest!8826))))

(declare-fun b!1504492 () Bool)

(declare-fun tp!429096 () Bool)

(assert (=> b!1504492 (= e!961886 tp!429096)))

(declare-fun b!1504491 () Bool)

(declare-fun tp!429095 () Bool)

(assert (=> b!1504491 (= e!961887 (and setRes!8826 tp!429095))))

(declare-fun condSetEmpty!8826 () Bool)

(assert (=> b!1504491 (= condSetEmpty!8826 (= (_1!8326 (_1!8327 (h!21343 (minValue!1688 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64))))))))) ((as const (Array Context!1322 Bool)) false)))))

(assert (= (and b!1504491 condSetEmpty!8826) setIsEmpty!8826))

(assert (= (and b!1504491 (not condSetEmpty!8826)) setNonEmpty!8826))

(assert (= setNonEmpty!8826 b!1504492))

(assert (= (and b!1504103 ((_ is Cons!15942) (minValue!1688 (v!22759 (underlying!3071 (v!22760 (underlying!3072 (cache!1756 cacheFurthestNullable!64)))))))) b!1504491))

(declare-fun m!1764207 () Bool)

(assert (=> setNonEmpty!8826 m!1764207))

(declare-fun mapNonEmpty!6815 () Bool)

(declare-fun mapRes!6815 () Bool)

(declare-fun tp!429129 () Bool)

(declare-fun e!961905 () Bool)

(assert (=> mapNonEmpty!6815 (= mapRes!6815 (and tp!429129 e!961905))))

(declare-fun mapValue!6815 () List!16011)

(declare-fun mapKey!6815 () (_ BitVec 32))

(declare-fun mapRest!6815 () (Array (_ BitVec 32) List!16011))

(assert (=> mapNonEmpty!6815 (= mapRest!6809 (store mapRest!6815 mapKey!6815 mapValue!6815))))

(declare-fun tp!429125 () Bool)

(declare-fun setRes!8832 () Bool)

(declare-fun e!961904 () Bool)

(declare-fun tp!429123 () Bool)

(declare-fun b!1504507 () Bool)

(assert (=> b!1504507 (= e!961905 (and tp!429123 (inv!21168 (_2!8328 (_1!8329 (h!21344 mapValue!6815)))) e!961904 tp_is_empty!7005 setRes!8832 tp!429125))))

(declare-fun condSetEmpty!8832 () Bool)

(assert (=> b!1504507 (= condSetEmpty!8832 (= (_2!8329 (h!21344 mapValue!6815)) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun b!1504508 () Bool)

(declare-fun tp!429122 () Bool)

(assert (=> b!1504508 (= e!961904 tp!429122)))

(declare-fun b!1504509 () Bool)

(declare-fun e!961902 () Bool)

(declare-fun tp!429127 () Bool)

(assert (=> b!1504509 (= e!961902 tp!429127)))

(declare-fun condMapEmpty!6815 () Bool)

(declare-fun mapDefault!6815 () List!16011)

(assert (=> mapNonEmpty!6809 (= condMapEmpty!6815 (= mapRest!6809 ((as const (Array (_ BitVec 32) List!16011)) mapDefault!6815)))))

(declare-fun e!961900 () Bool)

(assert (=> mapNonEmpty!6809 (= tp!428980 (and e!961900 mapRes!6815))))

(declare-fun b!1504510 () Bool)

(declare-fun e!961903 () Bool)

(declare-fun tp!429121 () Bool)

(assert (=> b!1504510 (= e!961903 tp!429121)))

(declare-fun tp!429128 () Bool)

(declare-fun setNonEmpty!8831 () Bool)

(declare-fun e!961901 () Bool)

(declare-fun setRes!8831 () Bool)

(declare-fun setElem!8831 () Context!1322)

(assert (=> setNonEmpty!8831 (= setRes!8831 (and tp!429128 (inv!21168 setElem!8831) e!961901))))

(declare-fun setRest!8832 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8831 (= (_2!8329 (h!21344 mapDefault!6815)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8831 true) setRest!8832))))

(declare-fun setIsEmpty!8831 () Bool)

(assert (=> setIsEmpty!8831 setRes!8831))

(declare-fun mapIsEmpty!6815 () Bool)

(assert (=> mapIsEmpty!6815 mapRes!6815))

(declare-fun b!1504511 () Bool)

(declare-fun tp!429124 () Bool)

(assert (=> b!1504511 (= e!961901 tp!429124)))

(declare-fun b!1504512 () Bool)

(declare-fun tp!429119 () Bool)

(declare-fun tp!429120 () Bool)

(assert (=> b!1504512 (= e!961900 (and tp!429120 (inv!21168 (_2!8328 (_1!8329 (h!21344 mapDefault!6815)))) e!961903 tp_is_empty!7005 setRes!8831 tp!429119))))

(declare-fun condSetEmpty!8831 () Bool)

(assert (=> b!1504512 (= condSetEmpty!8831 (= (_2!8329 (h!21344 mapDefault!6815)) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun setIsEmpty!8832 () Bool)

(assert (=> setIsEmpty!8832 setRes!8832))

(declare-fun setElem!8832 () Context!1322)

(declare-fun setNonEmpty!8832 () Bool)

(declare-fun tp!429126 () Bool)

(assert (=> setNonEmpty!8832 (= setRes!8832 (and tp!429126 (inv!21168 setElem!8832) e!961902))))

(declare-fun setRest!8831 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8832 (= (_2!8329 (h!21344 mapValue!6815)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8832 true) setRest!8831))))

(assert (= (and mapNonEmpty!6809 condMapEmpty!6815) mapIsEmpty!6815))

(assert (= (and mapNonEmpty!6809 (not condMapEmpty!6815)) mapNonEmpty!6815))

(assert (= b!1504507 b!1504508))

(assert (= (and b!1504507 condSetEmpty!8832) setIsEmpty!8832))

(assert (= (and b!1504507 (not condSetEmpty!8832)) setNonEmpty!8832))

(assert (= setNonEmpty!8832 b!1504509))

(assert (= (and mapNonEmpty!6815 ((_ is Cons!15943) mapValue!6815)) b!1504507))

(assert (= b!1504512 b!1504510))

(assert (= (and b!1504512 condSetEmpty!8831) setIsEmpty!8831))

(assert (= (and b!1504512 (not condSetEmpty!8831)) setNonEmpty!8831))

(assert (= setNonEmpty!8831 b!1504511))

(assert (= (and mapNonEmpty!6809 ((_ is Cons!15943) mapDefault!6815)) b!1504512))

(declare-fun m!1764209 () Bool)

(assert (=> b!1504512 m!1764209))

(declare-fun m!1764211 () Bool)

(assert (=> setNonEmpty!8832 m!1764211))

(declare-fun m!1764213 () Bool)

(assert (=> mapNonEmpty!6815 m!1764213))

(declare-fun m!1764215 () Bool)

(assert (=> b!1504507 m!1764215))

(declare-fun m!1764217 () Bool)

(assert (=> setNonEmpty!8831 m!1764217))

(declare-fun e!961914 () Bool)

(assert (=> mapNonEmpty!6809 (= tp!428971 e!961914)))

(declare-fun b!1504521 () Bool)

(declare-fun e!961913 () Bool)

(declare-fun tp!429141 () Bool)

(assert (=> b!1504521 (= e!961913 tp!429141)))

(declare-fun b!1504522 () Bool)

(declare-fun e!961912 () Bool)

(declare-fun tp!429142 () Bool)

(assert (=> b!1504522 (= e!961912 tp!429142)))

(declare-fun setElem!8835 () Context!1322)

(declare-fun setNonEmpty!8835 () Bool)

(declare-fun setRes!8835 () Bool)

(declare-fun tp!429144 () Bool)

(assert (=> setNonEmpty!8835 (= setRes!8835 (and tp!429144 (inv!21168 setElem!8835) e!961912))))

(declare-fun setRest!8835 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8835 (= (_2!8329 (h!21344 mapValue!6809)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8835 true) setRest!8835))))

(declare-fun setIsEmpty!8835 () Bool)

(assert (=> setIsEmpty!8835 setRes!8835))

(declare-fun tp!429140 () Bool)

(declare-fun tp!429143 () Bool)

(declare-fun b!1504523 () Bool)

(assert (=> b!1504523 (= e!961914 (and tp!429143 (inv!21168 (_2!8328 (_1!8329 (h!21344 mapValue!6809)))) e!961913 tp_is_empty!7005 setRes!8835 tp!429140))))

(declare-fun condSetEmpty!8835 () Bool)

(assert (=> b!1504523 (= condSetEmpty!8835 (= (_2!8329 (h!21344 mapValue!6809)) ((as const (Array Context!1322 Bool)) false)))))

(assert (= b!1504523 b!1504521))

(assert (= (and b!1504523 condSetEmpty!8835) setIsEmpty!8835))

(assert (= (and b!1504523 (not condSetEmpty!8835)) setNonEmpty!8835))

(assert (= setNonEmpty!8835 b!1504522))

(assert (= (and mapNonEmpty!6809 ((_ is Cons!15943) mapValue!6809)) b!1504523))

(declare-fun m!1764219 () Bool)

(assert (=> setNonEmpty!8835 m!1764219))

(declare-fun m!1764221 () Bool)

(assert (=> b!1504523 m!1764221))

(declare-fun e!961916 () Bool)

(declare-fun tp!429145 () Bool)

(declare-fun b!1504524 () Bool)

(declare-fun tp!429146 () Bool)

(assert (=> b!1504524 (= e!961916 (and (inv!21155 (left!13321 (c!246632 totalInput!458))) tp!429145 (inv!21155 (right!13651 (c!246632 totalInput!458))) tp!429146))))

(declare-fun b!1504526 () Bool)

(declare-fun e!961915 () Bool)

(declare-fun tp!429147 () Bool)

(assert (=> b!1504526 (= e!961915 tp!429147)))

(declare-fun b!1504525 () Bool)

(assert (=> b!1504525 (= e!961916 (and (inv!21167 (xs!8182 (c!246632 totalInput!458))) e!961915))))

(assert (=> b!1504084 (= tp!428998 (and (inv!21155 (c!246632 totalInput!458)) e!961916))))

(assert (= (and b!1504084 ((_ is Node!5407) (c!246632 totalInput!458))) b!1504524))

(assert (= b!1504525 b!1504526))

(assert (= (and b!1504084 ((_ is Leaf!8024) (c!246632 totalInput!458))) b!1504525))

(declare-fun m!1764223 () Bool)

(assert (=> b!1504524 m!1764223))

(declare-fun m!1764225 () Bool)

(assert (=> b!1504524 m!1764225))

(declare-fun m!1764227 () Bool)

(assert (=> b!1504525 m!1764227))

(assert (=> b!1504084 m!1763535))

(declare-fun b!1504537 () Bool)

(declare-fun b_free!38963 () Bool)

(declare-fun b_next!39667 () Bool)

(assert (=> b!1504537 (= b_free!38963 (not b_next!39667))))

(declare-fun tp!429159 () Bool)

(declare-fun b_and!104653 () Bool)

(assert (=> b!1504537 (= tp!429159 b_and!104653)))

(declare-fun b_free!38965 () Bool)

(declare-fun b_next!39669 () Bool)

(assert (=> b!1504537 (= b_free!38965 (not b_next!39669))))

(declare-fun tb!85875 () Bool)

(declare-fun t!138944 () Bool)

(assert (=> (and b!1504537 (= (toChars!4034 (transformation!2828 (h!21340 (t!138936 rules!1640)))) (toChars!4034 (transformation!2828 (rule!4617 (_1!8323 (v!22756 (_1!8330 lt!522731))))))) t!138944) tb!85875))

(declare-fun result!103266 () Bool)

(assert (= result!103266 result!103244))

(assert (=> d!444593 t!138944))

(declare-fun b_and!104655 () Bool)

(declare-fun tp!429156 () Bool)

(assert (=> b!1504537 (= tp!429156 (and (=> t!138944 result!103266) b_and!104655))))

(declare-fun e!961926 () Bool)

(assert (=> b!1504537 (= e!961926 (and tp!429159 tp!429156))))

(declare-fun tp!429157 () Bool)

(declare-fun b!1504536 () Bool)

(declare-fun e!961925 () Bool)

(assert (=> b!1504536 (= e!961925 (and tp!429157 (inv!21148 (tag!3092 (h!21340 (t!138936 rules!1640)))) (inv!21157 (transformation!2828 (h!21340 (t!138936 rules!1640)))) e!961926))))

(declare-fun b!1504535 () Bool)

(declare-fun e!961928 () Bool)

(declare-fun tp!429158 () Bool)

(assert (=> b!1504535 (= e!961928 (and e!961925 tp!429158))))

(assert (=> b!1504104 (= tp!428975 e!961928)))

(assert (= b!1504536 b!1504537))

(assert (= b!1504535 b!1504536))

(assert (= (and b!1504104 ((_ is Cons!15939) (t!138936 rules!1640))) b!1504535))

(declare-fun m!1764229 () Bool)

(assert (=> b!1504536 m!1764229))

(declare-fun m!1764231 () Bool)

(assert (=> b!1504536 m!1764231))

(declare-fun e!961931 () Bool)

(assert (=> b!1504090 (= tp!428982 e!961931)))

(declare-fun b!1504538 () Bool)

(declare-fun e!961930 () Bool)

(declare-fun tp!429161 () Bool)

(assert (=> b!1504538 (= e!961930 tp!429161)))

(declare-fun b!1504539 () Bool)

(declare-fun e!961929 () Bool)

(declare-fun tp!429162 () Bool)

(assert (=> b!1504539 (= e!961929 tp!429162)))

(declare-fun tp!429164 () Bool)

(declare-fun setRes!8836 () Bool)

(declare-fun setNonEmpty!8836 () Bool)

(declare-fun setElem!8836 () Context!1322)

(assert (=> setNonEmpty!8836 (= setRes!8836 (and tp!429164 (inv!21168 setElem!8836) e!961929))))

(declare-fun setRest!8836 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8836 (= (_2!8329 (h!21344 mapDefault!6807)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8836 true) setRest!8836))))

(declare-fun setIsEmpty!8836 () Bool)

(assert (=> setIsEmpty!8836 setRes!8836))

(declare-fun tp!429163 () Bool)

(declare-fun b!1504540 () Bool)

(declare-fun tp!429160 () Bool)

(assert (=> b!1504540 (= e!961931 (and tp!429163 (inv!21168 (_2!8328 (_1!8329 (h!21344 mapDefault!6807)))) e!961930 tp_is_empty!7005 setRes!8836 tp!429160))))

(declare-fun condSetEmpty!8836 () Bool)

(assert (=> b!1504540 (= condSetEmpty!8836 (= (_2!8329 (h!21344 mapDefault!6807)) ((as const (Array Context!1322 Bool)) false)))))

(assert (= b!1504540 b!1504538))

(assert (= (and b!1504540 condSetEmpty!8836) setIsEmpty!8836))

(assert (= (and b!1504540 (not condSetEmpty!8836)) setNonEmpty!8836))

(assert (= setNonEmpty!8836 b!1504539))

(assert (= (and b!1504090 ((_ is Cons!15943) mapDefault!6807)) b!1504540))

(declare-fun m!1764233 () Bool)

(assert (=> setNonEmpty!8836 m!1764233))

(declare-fun m!1764235 () Bool)

(assert (=> b!1504540 m!1764235))

(declare-fun b!1504555 () Bool)

(declare-fun e!961948 () Bool)

(declare-fun tp!429183 () Bool)

(assert (=> b!1504555 (= e!961948 tp!429183)))

(declare-fun setIsEmpty!8841 () Bool)

(declare-fun setRes!8841 () Bool)

(assert (=> setIsEmpty!8841 setRes!8841))

(declare-fun mapNonEmpty!6818 () Bool)

(declare-fun mapRes!6818 () Bool)

(declare-fun tp!429188 () Bool)

(declare-fun e!961947 () Bool)

(assert (=> mapNonEmpty!6818 (= mapRes!6818 (and tp!429188 e!961947))))

(declare-fun mapKey!6818 () (_ BitVec 32))

(declare-fun mapRest!6818 () (Array (_ BitVec 32) List!16009))

(declare-fun mapValue!6818 () List!16009)

(assert (=> mapNonEmpty!6818 (= mapRest!6808 (store mapRest!6818 mapKey!6818 mapValue!6818))))

(declare-fun b!1504556 () Bool)

(declare-fun e!961946 () Bool)

(declare-fun tp!429191 () Bool)

(assert (=> b!1504556 (= e!961946 tp!429191)))

(declare-fun b!1504557 () Bool)

(declare-fun e!961945 () Bool)

(declare-fun tp!429190 () Bool)

(assert (=> b!1504557 (= e!961945 tp!429190)))

(declare-fun e!961949 () Bool)

(declare-fun tp!429189 () Bool)

(declare-fun b!1504558 () Bool)

(declare-fun mapDefault!6818 () List!16009)

(declare-fun setRes!8842 () Bool)

(assert (=> b!1504558 (= e!961949 (and (inv!21168 (_1!8324 (_1!8325 (h!21342 mapDefault!6818)))) e!961946 tp_is_empty!7005 setRes!8842 tp!429189))))

(declare-fun condSetEmpty!8842 () Bool)

(assert (=> b!1504558 (= condSetEmpty!8842 (= (_2!8325 (h!21342 mapDefault!6818)) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun mapIsEmpty!6818 () Bool)

(assert (=> mapIsEmpty!6818 mapRes!6818))

(declare-fun tp!429187 () Bool)

(declare-fun setElem!8841 () Context!1322)

(declare-fun setNonEmpty!8841 () Bool)

(assert (=> setNonEmpty!8841 (= setRes!8842 (and tp!429187 (inv!21168 setElem!8841) e!961948))))

(declare-fun setRest!8842 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8841 (= (_2!8325 (h!21342 mapDefault!6818)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8841 true) setRest!8842))))

(declare-fun b!1504559 () Bool)

(declare-fun e!961944 () Bool)

(declare-fun tp!429184 () Bool)

(assert (=> b!1504559 (= e!961944 tp!429184)))

(declare-fun b!1504560 () Bool)

(declare-fun tp!429185 () Bool)

(assert (=> b!1504560 (= e!961947 (and (inv!21168 (_1!8324 (_1!8325 (h!21342 mapValue!6818)))) e!961945 tp_is_empty!7005 setRes!8841 tp!429185))))

(declare-fun condSetEmpty!8841 () Bool)

(assert (=> b!1504560 (= condSetEmpty!8841 (= (_2!8325 (h!21342 mapValue!6818)) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun setIsEmpty!8842 () Bool)

(assert (=> setIsEmpty!8842 setRes!8842))

(declare-fun condMapEmpty!6818 () Bool)

(assert (=> mapNonEmpty!6808 (= condMapEmpty!6818 (= mapRest!6808 ((as const (Array (_ BitVec 32) List!16009)) mapDefault!6818)))))

(assert (=> mapNonEmpty!6808 (= tp!428996 (and e!961949 mapRes!6818))))

(declare-fun setNonEmpty!8842 () Bool)

(declare-fun tp!429186 () Bool)

(declare-fun setElem!8842 () Context!1322)

(assert (=> setNonEmpty!8842 (= setRes!8841 (and tp!429186 (inv!21168 setElem!8842) e!961944))))

(declare-fun setRest!8841 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8842 (= (_2!8325 (h!21342 mapValue!6818)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8842 true) setRest!8841))))

(assert (= (and mapNonEmpty!6808 condMapEmpty!6818) mapIsEmpty!6818))

(assert (= (and mapNonEmpty!6808 (not condMapEmpty!6818)) mapNonEmpty!6818))

(assert (= b!1504560 b!1504557))

(assert (= (and b!1504560 condSetEmpty!8841) setIsEmpty!8841))

(assert (= (and b!1504560 (not condSetEmpty!8841)) setNonEmpty!8842))

(assert (= setNonEmpty!8842 b!1504559))

(assert (= (and mapNonEmpty!6818 ((_ is Cons!15941) mapValue!6818)) b!1504560))

(assert (= b!1504558 b!1504556))

(assert (= (and b!1504558 condSetEmpty!8842) setIsEmpty!8842))

(assert (= (and b!1504558 (not condSetEmpty!8842)) setNonEmpty!8841))

(assert (= setNonEmpty!8841 b!1504555))

(assert (= (and mapNonEmpty!6808 ((_ is Cons!15941) mapDefault!6818)) b!1504558))

(declare-fun m!1764237 () Bool)

(assert (=> setNonEmpty!8842 m!1764237))

(declare-fun m!1764239 () Bool)

(assert (=> b!1504560 m!1764239))

(declare-fun m!1764241 () Bool)

(assert (=> b!1504558 m!1764241))

(declare-fun m!1764243 () Bool)

(assert (=> mapNonEmpty!6818 m!1764243))

(declare-fun m!1764245 () Bool)

(assert (=> setNonEmpty!8841 m!1764245))

(declare-fun setIsEmpty!8843 () Bool)

(declare-fun setRes!8843 () Bool)

(assert (=> setIsEmpty!8843 setRes!8843))

(declare-fun b!1504561 () Bool)

(declare-fun e!961952 () Bool)

(declare-fun tp!429194 () Bool)

(assert (=> b!1504561 (= e!961952 tp!429194)))

(declare-fun e!961950 () Bool)

(declare-fun tp!429192 () Bool)

(declare-fun b!1504562 () Bool)

(assert (=> b!1504562 (= e!961950 (and (inv!21168 (_1!8324 (_1!8325 (h!21342 mapValue!6807)))) e!961952 tp_is_empty!7005 setRes!8843 tp!429192))))

(declare-fun condSetEmpty!8843 () Bool)

(assert (=> b!1504562 (= condSetEmpty!8843 (= (_2!8325 (h!21342 mapValue!6807)) ((as const (Array Context!1322 Bool)) false)))))

(declare-fun b!1504563 () Bool)

(declare-fun e!961951 () Bool)

(declare-fun tp!429195 () Bool)

(assert (=> b!1504563 (= e!961951 tp!429195)))

(declare-fun tp!429193 () Bool)

(declare-fun setElem!8843 () Context!1322)

(declare-fun setNonEmpty!8843 () Bool)

(assert (=> setNonEmpty!8843 (= setRes!8843 (and tp!429193 (inv!21168 setElem!8843) e!961951))))

(declare-fun setRest!8843 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8843 (= (_2!8325 (h!21342 mapValue!6807)) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8843 true) setRest!8843))))

(assert (=> mapNonEmpty!6808 (= tp!428987 e!961950)))

(assert (= b!1504562 b!1504561))

(assert (= (and b!1504562 condSetEmpty!8843) setIsEmpty!8843))

(assert (= (and b!1504562 (not condSetEmpty!8843)) setNonEmpty!8843))

(assert (= setNonEmpty!8843 b!1504563))

(assert (= (and mapNonEmpty!6808 ((_ is Cons!15941) mapValue!6807)) b!1504562))

(declare-fun m!1764247 () Bool)

(assert (=> b!1504562 m!1764247))

(declare-fun m!1764249 () Bool)

(assert (=> setNonEmpty!8843 m!1764249))

(declare-fun e!961955 () Bool)

(assert (=> b!1504071 (= tp!428988 e!961955)))

(declare-fun b!1504564 () Bool)

(declare-fun e!961954 () Bool)

(declare-fun tp!429197 () Bool)

(assert (=> b!1504564 (= e!961954 tp!429197)))

(declare-fun b!1504565 () Bool)

(declare-fun e!961953 () Bool)

(declare-fun tp!429198 () Bool)

(assert (=> b!1504565 (= e!961953 tp!429198)))

(declare-fun tp!429200 () Bool)

(declare-fun setNonEmpty!8844 () Bool)

(declare-fun setElem!8844 () Context!1322)

(declare-fun setRes!8844 () Bool)

(assert (=> setNonEmpty!8844 (= setRes!8844 (and tp!429200 (inv!21168 setElem!8844) e!961953))))

(declare-fun setRest!8844 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8844 (= (_2!8329 (h!21344 (zeroValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8844 true) setRest!8844))))

(declare-fun setIsEmpty!8844 () Bool)

(assert (=> setIsEmpty!8844 setRes!8844))

(declare-fun tp!429196 () Bool)

(declare-fun b!1504566 () Bool)

(declare-fun tp!429199 () Bool)

(assert (=> b!1504566 (= e!961955 (and tp!429199 (inv!21168 (_2!8328 (_1!8329 (h!21344 (zeroValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))))) e!961954 tp_is_empty!7005 setRes!8844 tp!429196))))

(declare-fun condSetEmpty!8844 () Bool)

(assert (=> b!1504566 (= condSetEmpty!8844 (= (_2!8329 (h!21344 (zeroValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))) ((as const (Array Context!1322 Bool)) false)))))

(assert (= b!1504566 b!1504564))

(assert (= (and b!1504566 condSetEmpty!8844) setIsEmpty!8844))

(assert (= (and b!1504566 (not condSetEmpty!8844)) setNonEmpty!8844))

(assert (= setNonEmpty!8844 b!1504565))

(assert (= (and b!1504071 ((_ is Cons!15943) (zeroValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))) b!1504566))

(declare-fun m!1764251 () Bool)

(assert (=> setNonEmpty!8844 m!1764251))

(declare-fun m!1764253 () Bool)

(assert (=> b!1504566 m!1764253))

(declare-fun e!961958 () Bool)

(assert (=> b!1504071 (= tp!428972 e!961958)))

(declare-fun b!1504567 () Bool)

(declare-fun e!961957 () Bool)

(declare-fun tp!429202 () Bool)

(assert (=> b!1504567 (= e!961957 tp!429202)))

(declare-fun b!1504568 () Bool)

(declare-fun e!961956 () Bool)

(declare-fun tp!429203 () Bool)

(assert (=> b!1504568 (= e!961956 tp!429203)))

(declare-fun tp!429205 () Bool)

(declare-fun setNonEmpty!8845 () Bool)

(declare-fun setRes!8845 () Bool)

(declare-fun setElem!8845 () Context!1322)

(assert (=> setNonEmpty!8845 (= setRes!8845 (and tp!429205 (inv!21168 setElem!8845) e!961956))))

(declare-fun setRest!8845 () (InoxSet Context!1322))

(assert (=> setNonEmpty!8845 (= (_2!8329 (h!21344 (minValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1322 Bool)) false) setElem!8845 true) setRest!8845))))

(declare-fun setIsEmpty!8845 () Bool)

(assert (=> setIsEmpty!8845 setRes!8845))

(declare-fun tp!429204 () Bool)

(declare-fun tp!429201 () Bool)

(declare-fun b!1504569 () Bool)

(assert (=> b!1504569 (= e!961958 (and tp!429204 (inv!21168 (_2!8328 (_1!8329 (h!21344 (minValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))))) e!961957 tp_is_empty!7005 setRes!8845 tp!429201))))

(declare-fun condSetEmpty!8845 () Bool)

(assert (=> b!1504569 (= condSetEmpty!8845 (= (_2!8329 (h!21344 (minValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))) ((as const (Array Context!1322 Bool)) false)))))

(assert (= b!1504569 b!1504567))

(assert (= (and b!1504569 condSetEmpty!8845) setIsEmpty!8845))

(assert (= (and b!1504569 (not condSetEmpty!8845)) setNonEmpty!8845))

(assert (= setNonEmpty!8845 b!1504568))

(assert (= (and b!1504071 ((_ is Cons!15943) (minValue!1689 (v!22761 (underlying!3073 (v!22762 (underlying!3074 (cache!1757 cacheDown!629)))))))) b!1504569))

(declare-fun m!1764255 () Bool)

(assert (=> setNonEmpty!8845 m!1764255))

(declare-fun m!1764257 () Bool)

(assert (=> b!1504569 m!1764257))

(declare-fun e!961960 () Bool)

(declare-fun tp!429206 () Bool)

(declare-fun tp!429207 () Bool)

(declare-fun b!1504570 () Bool)

(assert (=> b!1504570 (= e!961960 (and (inv!21155 (left!13321 (c!246632 (totalInput!2272 cacheFurthestNullable!64)))) tp!429206 (inv!21155 (right!13651 (c!246632 (totalInput!2272 cacheFurthestNullable!64)))) tp!429207))))

(declare-fun b!1504572 () Bool)

(declare-fun e!961959 () Bool)

(declare-fun tp!429208 () Bool)

(assert (=> b!1504572 (= e!961959 tp!429208)))

(declare-fun b!1504571 () Bool)

(assert (=> b!1504571 (= e!961960 (and (inv!21167 (xs!8182 (c!246632 (totalInput!2272 cacheFurthestNullable!64)))) e!961959))))

(assert (=> b!1504101 (= tp!428969 (and (inv!21155 (c!246632 (totalInput!2272 cacheFurthestNullable!64))) e!961960))))

(assert (= (and b!1504101 ((_ is Node!5407) (c!246632 (totalInput!2272 cacheFurthestNullable!64)))) b!1504570))

(assert (= b!1504571 b!1504572))

(assert (= (and b!1504101 ((_ is Leaf!8024) (c!246632 (totalInput!2272 cacheFurthestNullable!64)))) b!1504571))

(declare-fun m!1764259 () Bool)

(assert (=> b!1504570 m!1764259))

(declare-fun m!1764261 () Bool)

(assert (=> b!1504570 m!1764261))

(declare-fun m!1764263 () Bool)

(assert (=> b!1504571 m!1764263))

(assert (=> b!1504101 m!1763457))

(check-sat (not d!444637) (not b!1504375) (not d!444633) (not b!1504266) (not b!1504254) (not setNonEmpty!8822) (not mapNonEmpty!6812) (not d!444647) (not d!444641) (not d!444649) (not b!1504333) (not d!444575) b_and!104655 (not tb!85873) (not b!1504284) (not b!1504152) (not d!444657) (not d!444501) (not d!444525) (not b!1504460) (not b!1504367) (not d!444567) (not b!1504255) (not b!1504293) (not b!1504308) (not d!444635) (not b!1504302) (not b!1504085) (not b!1504125) (not b!1504130) (not b!1504538) (not b!1504523) (not b!1504483) b_and!104635 (not b!1504300) (not d!444595) (not b!1504153) (not b!1504157) (not b!1504491) (not b!1504536) (not b!1504390) b_and!104649 (not b!1504287) (not d!444663) b_and!104643 (not b!1504303) (not b!1504261) (not b!1504402) (not d!444581) (not b!1504225) (not b!1504365) (not setNonEmpty!8812) (not b!1504535) (not d!444507) (not d!444631) (not b!1504251) (not b!1504360) (not d!444555) (not b!1504568) (not b!1504370) (not d!444553) (not setNonEmpty!8818) (not b!1504301) (not b!1504445) (not b!1504485) (not b!1504148) (not b!1504446) (not b!1504290) (not d!444505) (not b!1504508) (not b!1504328) (not b!1504084) (not setNonEmpty!8832) (not b!1504421) (not b!1504363) (not b!1504509) (not b!1504432) (not b!1504526) (not b!1504434) (not b!1504401) (not b!1504561) (not b!1504219) (not b!1504418) (not b!1504349) (not b!1504399) (not d!444603) (not d!444621) (not mapNonEmpty!6815) (not b!1504366) (not b!1504296) b_and!104647 (not b!1504162) (not b!1504202) (not b!1504461) (not d!444519) (not b!1504569) (not b!1504484) (not b!1504540) (not b!1504324) (not b!1504371) (not b!1504403) (not b_next!39665) (not b!1504306) (not b_next!39657) (not setNonEmpty!8842) (not d!444639) (not b!1504210) b_and!104645 (not b!1504570) (not b!1504265) (not b!1504510) (not b!1504312) (not b!1504525) (not d!444573) (not b!1504361) (not b!1504169) (not setNonEmpty!8831) (not b!1504297) (not b!1504307) (not b!1504475) (not b!1504482) (not setNonEmpty!8824) (not b!1504406) (not setNonEmpty!8836) (not d!444569) (not b!1504490) (not b!1504208) (not setNonEmpty!8825) (not b_next!39659) (not b_next!39663) (not d!444533) (not b!1504492) (not b!1504325) (not b!1504559) (not b!1504223) (not d!444499) (not d!444523) b_and!104651 (not b!1504156) (not b!1504171) (not d!444543) (not d!444659) (not b!1504373) (not d!444583) (not d!444627) (not b!1504521) (not b!1504294) (not b!1504304) (not b!1504289) (not bm!99916) (not b!1504400) (not b_next!39667) (not b!1504203) (not d!444661) (not setNonEmpty!8841) (not b!1504160) (not b!1504431) (not b!1504558) (not d!444579) (not b!1504288) (not b!1504313) (not setNonEmpty!8835) (not b!1504459) (not b!1504326) (not b!1504436) (not d!444503) (not b!1504394) (not b!1504101) (not b!1504323) (not b!1504285) (not mapNonEmpty!6818) (not b!1504486) (not b!1504151) (not b!1504074) (not b!1504524) (not d!444587) (not b!1504067) (not b!1504372) (not d!444611) b_and!104641 (not d!444613) (not b!1504262) (not d!444563) (not b!1504387) (not d!444537) (not b!1504435) (not d!444665) (not b!1504221) (not b!1504474) (not b!1504309) (not b!1504127) (not b!1504258) (not d!444625) (not b!1504407) (not b!1504220) (not b!1504376) (not b!1504419) (not b!1504263) (not setNonEmpty!8844) (not b!1504260) (not b!1504205) (not b!1504228) (not b!1504433) (not d!444561) (not d!444615) (not b!1504489) (not d!444607) (not d!444571) (not b!1504562) (not d!444551) (not setNonEmpty!8819) (not b!1504155) (not b!1504380) (not b!1504395) (not setNonEmpty!8826) (not d!444609) (not b!1504473) (not b!1504560) (not d!444509) (not b!1504572) (not b!1504369) (not b!1504257) (not b!1504348) (not b!1504405) (not b!1504250) (not b_next!39651) (not b!1504488) (not d!444605) (not d!444549) (not b!1504299) b_and!104653 (not d!444619) (not b!1504329) (not d!444593) (not b!1504555) (not b!1504345) (not b!1504351) (not b!1504391) (not b!1504487) (not bm!99913) (not b!1504472) (not b!1504507) (not d!444545) (not b!1504133) (not b!1504238) (not b!1504239) (not b!1504161) (not b!1504392) (not d!444495) (not d!444559) (not b!1504358) (not b!1504207) (not bm!99917) (not b!1504567) (not d!444623) (not b!1504209) (not b!1504557) (not b!1504201) (not b!1504352) (not setNonEmpty!8823) (not b!1504447) (not b!1504522) (not b!1504384) (not b!1504398) (not d!444541) (not b!1504174) (not d!444539) (not b!1504556) tp_is_empty!7005 (not b!1504564) (not b!1504379) (not b!1504397) (not setNonEmpty!8845) (not d!444591) (not b_lambda!47247) (not d!444577) (not b!1504199) (not b!1504566) (not b!1504417) (not d!444585) (not b_next!39655) (not b_next!39653) (not b!1504222) (not b!1504149) (not setNonEmpty!8843) (not b!1504408) (not b!1504286) (not b!1504159) (not b!1504565) (not b!1504422) (not b_next!39661) (not b_next!39669) (not b!1504420) (not d!444547) (not b!1504511) (not b!1504563) (not b!1504571) (not b!1504305) (not b!1504334) (not d!444589) (not b!1504377) (not d!444601) (not d!444557) (not d!444629) (not b!1504396) (not b!1504539) (not b!1504512) (not d!444521) (not b!1504154) b_and!104639 (not setNonEmpty!8813) (not b!1504206) (not d!444565))
(check-sat b_and!104655 b_and!104635 b_and!104649 b_and!104643 b_and!104647 b_and!104645 b_and!104651 (not b_next!39667) b_and!104641 (not b_next!39651) b_and!104653 b_and!104639 (not b_next!39665) (not b_next!39657) (not b_next!39659) (not b_next!39663) (not b_next!39653) (not b_next!39655) (not b_next!39661) (not b_next!39669))

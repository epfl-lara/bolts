; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143598 () Bool)

(assert start!143598)

(declare-fun b!1548095 () Bool)

(declare-fun b_free!40835 () Bool)

(declare-fun b_next!41539 () Bool)

(assert (=> b!1548095 (= b_free!40835 (not b_next!41539))))

(declare-fun tp!451417 () Bool)

(declare-fun b_and!107925 () Bool)

(assert (=> b!1548095 (= tp!451417 b_and!107925)))

(declare-fun b!1548071 () Bool)

(declare-fun b_free!40837 () Bool)

(declare-fun b_next!41541 () Bool)

(assert (=> b!1548071 (= b_free!40837 (not b_next!41541))))

(declare-fun tp!451423 () Bool)

(declare-fun b_and!107927 () Bool)

(assert (=> b!1548071 (= tp!451423 b_and!107927)))

(declare-fun b!1548092 () Bool)

(declare-fun b_free!40839 () Bool)

(declare-fun b_next!41543 () Bool)

(assert (=> b!1548092 (= b_free!40839 (not b_next!41543))))

(declare-fun tp!451429 () Bool)

(declare-fun b_and!107929 () Bool)

(assert (=> b!1548092 (= tp!451429 b_and!107929)))

(declare-fun b!1548078 () Bool)

(declare-fun b_free!40841 () Bool)

(declare-fun b_next!41545 () Bool)

(assert (=> b!1548078 (= b_free!40841 (not b_next!41545))))

(declare-fun tp!451432 () Bool)

(declare-fun b_and!107931 () Bool)

(assert (=> b!1548078 (= tp!451432 b_and!107931)))

(declare-fun b_free!40843 () Bool)

(declare-fun b_next!41547 () Bool)

(assert (=> b!1548078 (= b_free!40843 (not b_next!41547))))

(declare-fun tp!451420 () Bool)

(declare-fun b_and!107933 () Bool)

(assert (=> b!1548078 (= tp!451420 b_and!107933)))

(declare-fun b!1548091 () Bool)

(declare-fun b_free!40845 () Bool)

(declare-fun b_next!41549 () Bool)

(assert (=> b!1548091 (= b_free!40845 (not b_next!41549))))

(declare-fun tp!451435 () Bool)

(declare-fun b_and!107935 () Bool)

(assert (=> b!1548091 (= tp!451435 b_and!107935)))

(declare-fun b!1548090 () Bool)

(declare-fun b_free!40847 () Bool)

(declare-fun b_next!41551 () Bool)

(assert (=> b!1548090 (= b_free!40847 (not b_next!41551))))

(declare-fun tp!451437 () Bool)

(declare-fun b_and!107937 () Bool)

(assert (=> b!1548090 (= tp!451437 b_and!107937)))

(declare-fun b!1548073 () Bool)

(declare-fun b_free!40849 () Bool)

(declare-fun b_next!41553 () Bool)

(assert (=> b!1548073 (= b_free!40849 (not b_next!41553))))

(declare-fun tp!451419 () Bool)

(declare-fun b_and!107939 () Bool)

(assert (=> b!1548073 (= tp!451419 b_and!107939)))

(declare-fun b!1548113 () Bool)

(declare-fun e!992149 () Bool)

(assert (=> b!1548113 (= e!992149 true)))

(declare-fun b!1548112 () Bool)

(declare-fun e!992148 () Bool)

(assert (=> b!1548112 (= e!992148 e!992149)))

(declare-fun b!1548088 () Bool)

(assert (=> b!1548088 e!992148))

(assert (= b!1548112 b!1548113))

(assert (= b!1548088 b!1548112))

(declare-fun order!9715 () Int)

(declare-datatypes ((List!16711 0))(
  ( (Nil!16643) (Cons!16643 (h!22044 (_ BitVec 16)) (t!141114 List!16711)) )
))
(declare-datatypes ((TokenValue!3007 0))(
  ( (FloatLiteralValue!6014 (text!21494 List!16711)) (TokenValueExt!3006 (__x!10888 Int)) (Broken!15035 (value!92759 List!16711)) (Object!3074) (End!3007) (Def!3007) (Underscore!3007) (Match!3007) (Else!3007) (Error!3007) (Case!3007) (If!3007) (Extends!3007) (Abstract!3007) (Class!3007) (Val!3007) (DelimiterValue!6014 (del!3067 List!16711)) (KeywordValue!3013 (value!92760 List!16711)) (CommentValue!6014 (value!92761 List!16711)) (WhitespaceValue!6014 (value!92762 List!16711)) (IndentationValue!3007 (value!92763 List!16711)) (String!19322) (Int32!3007) (Broken!15036 (value!92764 List!16711)) (Boolean!3008) (Unit!25964) (OperatorValue!3010 (op!3067 List!16711)) (IdentifierValue!6014 (value!92765 List!16711)) (IdentifierValue!6015 (value!92766 List!16711)) (WhitespaceValue!6015 (value!92767 List!16711)) (True!6014) (False!6014) (Broken!15037 (value!92768 List!16711)) (Broken!15038 (value!92769 List!16711)) (True!6015) (RightBrace!3007) (RightBracket!3007) (Colon!3007) (Null!3007) (Comma!3007) (LeftBracket!3007) (False!6015) (LeftBrace!3007) (ImaginaryLiteralValue!3007 (text!21495 List!16711)) (StringLiteralValue!9021 (value!92770 List!16711)) (EOFValue!3007 (value!92771 List!16711)) (IdentValue!3007 (value!92772 List!16711)) (DelimiterValue!6015 (value!92773 List!16711)) (DedentValue!3007 (value!92774 List!16711)) (NewLineValue!3007 (value!92775 List!16711)) (IntegerValue!9021 (value!92776 (_ BitVec 32)) (text!21496 List!16711)) (IntegerValue!9022 (value!92777 Int) (text!21497 List!16711)) (Times!3007) (Or!3007) (Equal!3007) (Minus!3007) (Broken!15039 (value!92778 List!16711)) (And!3007) (Div!3007) (LessEqual!3007) (Mod!3007) (Concat!7252) (Not!3007) (Plus!3007) (SpaceValue!3007 (value!92779 List!16711)) (IntegerValue!9023 (value!92780 Int) (text!21498 List!16711)) (StringLiteralValue!9022 (text!21499 List!16711)) (FloatLiteralValue!6015 (text!21500 List!16711)) (BytesLiteralValue!3007 (value!92781 List!16711)) (CommentValue!6015 (value!92782 List!16711)) (StringLiteralValue!9023 (value!92783 List!16711)) (ErrorTokenValue!3007 (msg!3068 List!16711)) )
))
(declare-datatypes ((C!8668 0))(
  ( (C!8669 (val!4906 Int)) )
))
(declare-datatypes ((List!16712 0))(
  ( (Nil!16644) (Cons!16644 (h!22045 C!8668) (t!141115 List!16712)) )
))
(declare-datatypes ((IArray!11075 0))(
  ( (IArray!11076 (innerList!5595 List!16712)) )
))
(declare-datatypes ((Conc!5535 0))(
  ( (Node!5535 (left!13566 Conc!5535) (right!13896 Conc!5535) (csize!11300 Int) (cheight!5746 Int)) (Leaf!8203 (xs!8335 IArray!11075) (csize!11301 Int)) (Empty!5535) )
))
(declare-datatypes ((BalanceConc!11012 0))(
  ( (BalanceConc!11013 (c!252163 Conc!5535)) )
))
(declare-datatypes ((Regex!4245 0))(
  ( (ElementMatch!4245 (c!252164 C!8668)) (Concat!7253 (regOne!9002 Regex!4245) (regTwo!9002 Regex!4245)) (EmptyExpr!4245) (Star!4245 (reg!4574 Regex!4245)) (EmptyLang!4245) (Union!4245 (regOne!9003 Regex!4245) (regTwo!9003 Regex!4245)) )
))
(declare-datatypes ((String!19323 0))(
  ( (String!19324 (value!92784 String)) )
))
(declare-datatypes ((TokenValueInjection!5674 0))(
  ( (TokenValueInjection!5675 (toValue!4280 Int) (toChars!4139 Int)) )
))
(declare-datatypes ((Rule!5634 0))(
  ( (Rule!5635 (regex!2917 Regex!4245) (tag!3181 String!19323) (isSeparator!2917 Bool) (transformation!2917 TokenValueInjection!5674)) )
))
(declare-fun rule!240 () Rule!5634)

(declare-fun lambda!65533 () Int)

(declare-fun order!9717 () Int)

(declare-fun dynLambda!7352 (Int Int) Int)

(declare-fun dynLambda!7353 (Int Int) Int)

(assert (=> b!1548113 (< (dynLambda!7352 order!9715 (toValue!4280 (transformation!2917 rule!240))) (dynLambda!7353 order!9717 lambda!65533))))

(declare-fun order!9719 () Int)

(declare-fun dynLambda!7354 (Int Int) Int)

(assert (=> b!1548113 (< (dynLambda!7354 order!9719 (toChars!4139 (transformation!2917 rule!240))) (dynLambda!7353 order!9717 lambda!65533))))

(declare-fun b!1548065 () Bool)

(declare-fun e!992120 () Bool)

(declare-fun e!992116 () Bool)

(assert (=> b!1548065 (= e!992120 e!992116)))

(declare-fun b!1548066 () Bool)

(declare-fun e!992134 () Bool)

(declare-fun e!992117 () Bool)

(declare-datatypes ((List!16713 0))(
  ( (Nil!16645) (Cons!16645 (h!22046 Regex!4245) (t!141116 List!16713)) )
))
(declare-datatypes ((Context!1526 0))(
  ( (Context!1527 (exprs!1263 List!16713)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1680 0))(
  ( (tuple3!1681 (_1!9216 (InoxSet Context!1526)) (_2!9216 Int) (_3!1263 Int)) )
))
(declare-datatypes ((tuple2!15906 0))(
  ( (tuple2!15907 (_1!9217 tuple3!1680) (_2!9217 Int)) )
))
(declare-datatypes ((List!16714 0))(
  ( (Nil!16646) (Cons!16646 (h!22047 tuple2!15906) (t!141117 List!16714)) )
))
(declare-datatypes ((array!5918 0))(
  ( (array!5919 (arr!2636 (Array (_ BitVec 32) List!16714)) (size!13448 (_ BitVec 32))) )
))
(declare-datatypes ((array!5920 0))(
  ( (array!5921 (arr!2637 (Array (_ BitVec 32) (_ BitVec 64))) (size!13449 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3432 0))(
  ( (LongMapFixedSize!3433 (defaultEntry!2076 Int) (mask!4927 (_ BitVec 32)) (extraKeys!1963 (_ BitVec 32)) (zeroValue!1973 List!16714) (minValue!1973 List!16714) (_size!3513 (_ BitVec 32)) (_keys!2010 array!5920) (_values!1995 array!5918) (_vacant!1777 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6749 0))(
  ( (Cell!6750 (v!23463 LongMapFixedSize!3432)) )
))
(declare-datatypes ((MutLongMap!1716 0))(
  ( (LongMap!1716 (underlying!3641 Cell!6749)) (MutLongMapExt!1715 (__x!10889 Int)) )
))
(declare-fun lt!536129 () MutLongMap!1716)

(get-info :version)

(assert (=> b!1548066 (= e!992134 (and e!992117 ((_ is LongMap!1716) lt!536129)))))

(declare-datatypes ((Hashable!1660 0))(
  ( (HashableExt!1659 (__x!10890 Int)) )
))
(declare-datatypes ((Cell!6751 0))(
  ( (Cell!6752 (v!23464 MutLongMap!1716)) )
))
(declare-datatypes ((MutableMap!1660 0))(
  ( (MutableMapExt!1659 (__x!10891 Int)) (HashMap!1660 (underlying!3642 Cell!6751) (hashF!3579 Hashable!1660) (_size!3514 (_ BitVec 32)) (defaultValue!1820 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!432 0))(
  ( (CacheFurthestNullable!433 (cache!2041 MutableMap!1660) (totalInput!2419 BalanceConc!11012)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!432)

(assert (=> b!1548066 (= lt!536129 (v!23464 (underlying!3642 (cache!2041 cacheFurthestNullable!103))))))

(declare-fun b!1548067 () Bool)

(declare-fun e!992135 () Bool)

(declare-fun tp!451431 () Bool)

(declare-fun mapRes!8011 () Bool)

(assert (=> b!1548067 (= e!992135 (and tp!451431 mapRes!8011))))

(declare-fun condMapEmpty!8011 () Bool)

(declare-datatypes ((tuple2!15908 0))(
  ( (tuple2!15909 (_1!9218 Context!1526) (_2!9218 C!8668)) )
))
(declare-datatypes ((tuple2!15910 0))(
  ( (tuple2!15911 (_1!9219 tuple2!15908) (_2!9219 (InoxSet Context!1526))) )
))
(declare-datatypes ((List!16715 0))(
  ( (Nil!16647) (Cons!16647 (h!22048 tuple2!15910) (t!141118 List!16715)) )
))
(declare-datatypes ((array!5922 0))(
  ( (array!5923 (arr!2638 (Array (_ BitVec 32) List!16715)) (size!13450 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1661 0))(
  ( (HashableExt!1660 (__x!10892 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3434 0))(
  ( (LongMapFixedSize!3435 (defaultEntry!2077 Int) (mask!4928 (_ BitVec 32)) (extraKeys!1964 (_ BitVec 32)) (zeroValue!1974 List!16715) (minValue!1974 List!16715) (_size!3515 (_ BitVec 32)) (_keys!2011 array!5920) (_values!1996 array!5922) (_vacant!1778 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6753 0))(
  ( (Cell!6754 (v!23465 LongMapFixedSize!3434)) )
))
(declare-datatypes ((MutLongMap!1717 0))(
  ( (LongMap!1717 (underlying!3643 Cell!6753)) (MutLongMapExt!1716 (__x!10893 Int)) )
))
(declare-datatypes ((Cell!6755 0))(
  ( (Cell!6756 (v!23466 MutLongMap!1717)) )
))
(declare-datatypes ((MutableMap!1661 0))(
  ( (MutableMapExt!1660 (__x!10894 Int)) (HashMap!1661 (underlying!3644 Cell!6755) (hashF!3580 Hashable!1661) (_size!3516 (_ BitVec 32)) (defaultValue!1821 Int)) )
))
(declare-datatypes ((CacheUp!1004 0))(
  ( (CacheUp!1005 (cache!2042 MutableMap!1661)) )
))
(declare-fun cacheUp!755 () CacheUp!1004)

(declare-fun mapDefault!8012 () List!16715)

(assert (=> b!1548067 (= condMapEmpty!8011 (= (arr!2638 (_values!1996 (v!23465 (underlying!3643 (v!23466 (underlying!3644 (cache!2042 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16715)) mapDefault!8012)))))

(declare-fun b!1548068 () Bool)

(declare-fun e!992111 () Bool)

(declare-fun e!992126 () Bool)

(assert (=> b!1548068 (= e!992111 e!992126)))

(declare-fun res!692214 () Bool)

(assert (=> b!1548068 (=> res!692214 e!992126)))

(declare-fun lt!536128 () BalanceConc!11012)

(declare-fun lt!536130 () TokenValue!3007)

(declare-fun apply!4093 (TokenValueInjection!5674 BalanceConc!11012) TokenValue!3007)

(assert (=> b!1548068 (= res!692214 (not (= (apply!4093 (transformation!2917 rule!240) lt!536128) lt!536130)))))

(declare-datatypes ((Unit!25965 0))(
  ( (Unit!25966) )
))
(declare-fun lt!536139 () Unit!25965)

(declare-datatypes ((tuple3!1682 0))(
  ( (tuple3!1683 (_1!9220 Regex!4245) (_2!9220 Context!1526) (_3!1264 C!8668)) )
))
(declare-datatypes ((tuple2!15912 0))(
  ( (tuple2!15913 (_1!9221 tuple3!1682) (_2!9221 (InoxSet Context!1526))) )
))
(declare-datatypes ((List!16716 0))(
  ( (Nil!16648) (Cons!16648 (h!22049 tuple2!15912) (t!141119 List!16716)) )
))
(declare-datatypes ((array!5924 0))(
  ( (array!5925 (arr!2639 (Array (_ BitVec 32) List!16716)) (size!13451 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3436 0))(
  ( (LongMapFixedSize!3437 (defaultEntry!2078 Int) (mask!4929 (_ BitVec 32)) (extraKeys!1965 (_ BitVec 32)) (zeroValue!1975 List!16716) (minValue!1975 List!16716) (_size!3517 (_ BitVec 32)) (_keys!2012 array!5920) (_values!1997 array!5924) (_vacant!1779 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6757 0))(
  ( (Cell!6758 (v!23467 LongMapFixedSize!3436)) )
))
(declare-datatypes ((tuple2!15914 0))(
  ( (tuple2!15915 (_1!9222 BalanceConc!11012) (_2!9222 BalanceConc!11012)) )
))
(declare-datatypes ((MutLongMap!1718 0))(
  ( (LongMap!1718 (underlying!3645 Cell!6757)) (MutLongMapExt!1717 (__x!10895 Int)) )
))
(declare-datatypes ((Cell!6759 0))(
  ( (Cell!6760 (v!23468 MutLongMap!1718)) )
))
(declare-datatypes ((Hashable!1662 0))(
  ( (HashableExt!1661 (__x!10896 Int)) )
))
(declare-datatypes ((MutableMap!1662 0))(
  ( (MutableMapExt!1661 (__x!10897 Int)) (HashMap!1662 (underlying!3646 Cell!6759) (hashF!3581 Hashable!1662) (_size!3518 (_ BitVec 32)) (defaultValue!1822 Int)) )
))
(declare-datatypes ((CacheDown!1012 0))(
  ( (CacheDown!1013 (cache!2043 MutableMap!1662)) )
))
(declare-datatypes ((tuple4!846 0))(
  ( (tuple4!847 (_1!9223 tuple2!15914) (_2!9223 CacheUp!1004) (_3!1265 CacheDown!1012) (_4!423 CacheFurthestNullable!432)) )
))
(declare-fun lt!536135 () tuple4!846)

(declare-fun lemmaEqSameImage!138 (TokenValueInjection!5674 BalanceConc!11012 BalanceConc!11012) Unit!25965)

(assert (=> b!1548068 (= lt!536139 (lemmaEqSameImage!138 (transformation!2917 rule!240) (_1!9222 (_1!9223 lt!536135)) lt!536128))))

(declare-fun b!1548070 () Bool)

(declare-fun e!992132 () Bool)

(declare-fun e!992118 () Bool)

(assert (=> b!1548070 (= e!992132 e!992118)))

(declare-fun e!992128 () Bool)

(declare-fun e!992130 () Bool)

(declare-fun tp!451421 () Bool)

(declare-fun tp!451425 () Bool)

(declare-fun array_inv!1896 (array!5920) Bool)

(declare-fun array_inv!1897 (array!5918) Bool)

(assert (=> b!1548071 (= e!992128 (and tp!451423 tp!451425 tp!451421 (array_inv!1896 (_keys!2010 (v!23463 (underlying!3641 (v!23464 (underlying!3642 (cache!2041 cacheFurthestNullable!103))))))) (array_inv!1897 (_values!1995 (v!23463 (underlying!3641 (v!23464 (underlying!3642 (cache!2041 cacheFurthestNullable!103))))))) e!992130))))

(declare-fun b!1548072 () Bool)

(declare-fun e!992109 () Bool)

(assert (=> b!1548072 (= e!992117 e!992109)))

(declare-fun mapNonEmpty!8010 () Bool)

(declare-fun mapRes!8010 () Bool)

(declare-fun tp!451424 () Bool)

(declare-fun tp!451440 () Bool)

(assert (=> mapNonEmpty!8010 (= mapRes!8010 (and tp!451424 tp!451440))))

(declare-fun mapValue!8010 () List!16714)

(declare-fun mapKey!8011 () (_ BitVec 32))

(declare-fun mapRest!8010 () (Array (_ BitVec 32) List!16714))

(assert (=> mapNonEmpty!8010 (= (arr!2636 (_values!1995 (v!23463 (underlying!3641 (v!23464 (underlying!3642 (cache!2041 cacheFurthestNullable!103))))))) (store mapRest!8010 mapKey!8011 mapValue!8010))))

(declare-fun e!992137 () Bool)

(declare-fun e!992139 () Bool)

(assert (=> b!1548073 (= e!992137 (and e!992139 tp!451419))))

(declare-fun e!992124 () Bool)

(declare-fun b!1548074 () Bool)

(declare-fun tp!451436 () Bool)

(declare-fun e!992115 () Bool)

(declare-fun inv!21905 (String!19323) Bool)

(declare-fun inv!21907 (TokenValueInjection!5674) Bool)

(assert (=> b!1548074 (= e!992115 (and tp!451436 (inv!21905 (tag!3181 rule!240)) (inv!21907 (transformation!2917 rule!240)) e!992124))))

(declare-fun b!1548075 () Bool)

(declare-fun res!692220 () Bool)

(declare-fun e!992113 () Bool)

(assert (=> b!1548075 (=> (not res!692220) (not e!992113))))

(declare-fun totalInput!568 () BalanceConc!11012)

(assert (=> b!1548075 (= res!692220 (= (totalInput!2419 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1548076 () Bool)

(declare-fun e!992121 () Bool)

(assert (=> b!1548076 (= e!992121 e!992111)))

(declare-fun res!692218 () Bool)

(assert (=> b!1548076 (=> res!692218 e!992111)))

(declare-fun lt!536134 () Bool)

(declare-fun lt!536126 () Bool)

(assert (=> b!1548076 (= res!692218 (or (not (= lt!536134 lt!536126)) (not lt!536134)))))

(declare-datatypes ((Token!5438 0))(
  ( (Token!5439 (value!92785 TokenValue!3007) (rule!4709 Rule!5634) (size!13452 Int) (originalCharacters!3750 List!16712)) )
))
(declare-datatypes ((tuple2!15916 0))(
  ( (tuple2!15917 (_1!9224 Token!5438) (_2!9224 List!16712)) )
))
(declare-datatypes ((Option!3001 0))(
  ( (None!3000) (Some!3000 (v!23469 tuple2!15916)) )
))
(declare-fun lt!536138 () Option!3001)

(declare-fun isDefined!2407 (Option!3001) Bool)

(assert (=> b!1548076 (= lt!536126 (isDefined!2407 lt!536138))))

(declare-fun lt!536143 () List!16712)

(declare-fun lt!536137 () Int)

(declare-datatypes ((tuple2!15918 0))(
  ( (tuple2!15919 (_1!9225 Token!5438) (_2!9225 BalanceConc!11012)) )
))
(declare-datatypes ((Option!3002 0))(
  ( (None!3001) (Some!3001 (v!23470 tuple2!15918)) )
))
(declare-fun isDefined!2408 (Option!3002) Bool)

(assert (=> b!1548076 (= lt!536134 (isDefined!2408 (Some!3001 (tuple2!15919 (Token!5439 lt!536130 rule!240 lt!536137 lt!536143) (_2!9222 (_1!9223 lt!536135))))))))

(declare-fun lt!536141 () List!16712)

(declare-datatypes ((LexerInterface!2562 0))(
  ( (LexerInterfaceExt!2559 (__x!10898 Int)) (Lexer!2560) )
))
(declare-fun thiss!16438 () LexerInterface!2562)

(declare-fun maxPrefixOneRule!686 (LexerInterface!2562 Rule!5634 List!16712) Option!3001)

(assert (=> b!1548076 (= lt!536138 (maxPrefixOneRule!686 thiss!16438 rule!240 lt!536141))))

(declare-fun size!13453 (BalanceConc!11012) Int)

(assert (=> b!1548076 (= lt!536137 (size!13453 (_1!9222 (_1!9223 lt!536135))))))

(assert (=> b!1548076 (= lt!536130 (apply!4093 (transformation!2917 rule!240) (_1!9222 (_1!9223 lt!536135))))))

(declare-fun lt!536140 () Unit!25965)

(declare-fun ForallOf!194 (Int BalanceConc!11012) Unit!25965)

(assert (=> b!1548076 (= lt!536140 (ForallOf!194 lambda!65533 lt!536128))))

(declare-fun seqFromList!1757 (List!16712) BalanceConc!11012)

(assert (=> b!1548076 (= lt!536128 (seqFromList!1757 lt!536143))))

(declare-fun list!6463 (BalanceConc!11012) List!16712)

(assert (=> b!1548076 (= lt!536143 (list!6463 (_1!9222 (_1!9223 lt!536135))))))

(declare-fun lt!536131 () Unit!25965)

(assert (=> b!1548076 (= lt!536131 (ForallOf!194 lambda!65533 (_1!9222 (_1!9223 lt!536135))))))

(declare-fun mapNonEmpty!8011 () Bool)

(declare-fun mapRes!8012 () Bool)

(declare-fun tp!451438 () Bool)

(declare-fun tp!451428 () Bool)

(assert (=> mapNonEmpty!8011 (= mapRes!8012 (and tp!451438 tp!451428))))

(declare-fun mapValue!8011 () List!16716)

(declare-fun mapKey!8012 () (_ BitVec 32))

(declare-fun cacheDown!768 () CacheDown!1012)

(declare-fun mapRest!8011 () (Array (_ BitVec 32) List!16716))

(assert (=> mapNonEmpty!8011 (= (arr!2639 (_values!1997 (v!23467 (underlying!3645 (v!23468 (underlying!3646 (cache!2043 cacheDown!768))))))) (store mapRest!8011 mapKey!8012 mapValue!8011))))

(declare-fun b!1548077 () Bool)

(declare-fun e!992108 () Bool)

(assert (=> b!1548077 (= e!992108 e!992137)))

(declare-fun mapIsEmpty!8010 () Bool)

(assert (=> mapIsEmpty!8010 mapRes!8012))

(assert (=> b!1548078 (= e!992124 (and tp!451432 tp!451420))))

(declare-fun b!1548079 () Bool)

(declare-fun e!992133 () Bool)

(assert (=> b!1548079 (= e!992113 e!992133)))

(declare-fun res!692213 () Bool)

(assert (=> b!1548079 (=> (not res!692213) (not e!992133))))

(declare-fun isEmpty!10063 (BalanceConc!11012) Bool)

(assert (=> b!1548079 (= res!692213 (not (isEmpty!10063 (_1!9222 (_1!9223 lt!536135)))))))

(declare-fun input!1676 () BalanceConc!11012)

(declare-fun findLongestMatchWithZipperSequenceV3Mem!29 (Regex!4245 BalanceConc!11012 BalanceConc!11012 CacheUp!1004 CacheDown!1012 CacheFurthestNullable!432) tuple4!846)

(assert (=> b!1548079 (= lt!536135 (findLongestMatchWithZipperSequenceV3Mem!29 (regex!2917 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1548080 () Bool)

(declare-fun res!692222 () Bool)

(declare-fun e!992127 () Bool)

(assert (=> b!1548080 (=> (not res!692222) (not e!992127))))

(declare-fun valid!1382 (CacheDown!1012) Bool)

(assert (=> b!1548080 (= res!692222 (valid!1382 cacheDown!768))))

(declare-fun b!1548081 () Bool)

(declare-fun e!992114 () Bool)

(declare-fun lt!536142 () MutLongMap!1718)

(assert (=> b!1548081 (= e!992139 (and e!992114 ((_ is LongMap!1718) lt!536142)))))

(assert (=> b!1548081 (= lt!536142 (v!23468 (underlying!3646 (cache!2043 cacheDown!768))))))

(declare-fun b!1548082 () Bool)

(declare-fun e!992125 () Bool)

(assert (=> b!1548082 (= e!992118 e!992125)))

(declare-fun mapNonEmpty!8012 () Bool)

(declare-fun tp!451433 () Bool)

(declare-fun tp!451422 () Bool)

(assert (=> mapNonEmpty!8012 (= mapRes!8011 (and tp!451433 tp!451422))))

(declare-fun mapKey!8010 () (_ BitVec 32))

(declare-fun mapValue!8012 () List!16715)

(declare-fun mapRest!8012 () (Array (_ BitVec 32) List!16715))

(assert (=> mapNonEmpty!8012 (= (arr!2638 (_values!1996 (v!23465 (underlying!3643 (v!23466 (underlying!3644 (cache!2042 cacheUp!755))))))) (store mapRest!8012 mapKey!8010 mapValue!8012))))

(declare-fun b!1548083 () Bool)

(declare-fun res!692223 () Bool)

(assert (=> b!1548083 (=> (not res!692223) (not e!992127))))

(declare-fun valid!1383 (CacheFurthestNullable!432) Bool)

(assert (=> b!1548083 (= res!692223 (valid!1383 cacheFurthestNullable!103))))

(declare-fun b!1548084 () Bool)

(declare-fun e!992141 () Bool)

(declare-fun lt!536136 () MutLongMap!1717)

(assert (=> b!1548084 (= e!992141 (and e!992132 ((_ is LongMap!1717) lt!536136)))))

(assert (=> b!1548084 (= lt!536136 (v!23466 (underlying!3644 (cache!2042 cacheUp!755))))))

(declare-fun mapIsEmpty!8011 () Bool)

(assert (=> mapIsEmpty!8011 mapRes!8010))

(declare-fun b!1548085 () Bool)

(declare-fun res!692226 () Bool)

(assert (=> b!1548085 (=> (not res!692226) (not e!992127))))

(declare-fun ruleValid!666 (LexerInterface!2562 Rule!5634) Bool)

(assert (=> b!1548085 (= res!692226 (ruleValid!666 thiss!16438 rule!240))))

(declare-fun b!1548086 () Bool)

(declare-fun e!992122 () Bool)

(declare-fun tp!451414 () Bool)

(assert (=> b!1548086 (= e!992122 (and tp!451414 mapRes!8012))))

(declare-fun condMapEmpty!8012 () Bool)

(declare-fun mapDefault!8010 () List!16716)

(assert (=> b!1548086 (= condMapEmpty!8012 (= (arr!2639 (_values!1997 (v!23467 (underlying!3645 (v!23468 (underlying!3646 (cache!2043 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16716)) mapDefault!8010)))))

(declare-fun b!1548087 () Bool)

(declare-fun res!692227 () Bool)

(assert (=> b!1548087 (=> res!692227 e!992126)))

(declare-fun get!4820 (Option!3001) tuple2!15916)

(assert (=> b!1548087 (= res!692227 (not (= (value!92785 (_1!9224 (get!4820 lt!536138))) lt!536130)))))

(declare-fun res!692221 () Bool)

(assert (=> b!1548088 (=> res!692221 e!992121)))

(declare-fun Forall!594 (Int) Bool)

(assert (=> b!1548088 (= res!692221 (not (Forall!594 lambda!65533)))))

(declare-fun b!1548089 () Bool)

(assert (=> b!1548089 (= e!992126 lt!536126)))

(declare-fun tp!451430 () Bool)

(declare-fun tp!451426 () Bool)

(declare-fun array_inv!1898 (array!5922) Bool)

(assert (=> b!1548090 (= e!992125 (and tp!451437 tp!451430 tp!451426 (array_inv!1896 (_keys!2011 (v!23465 (underlying!3643 (v!23466 (underlying!3644 (cache!2042 cacheUp!755))))))) (array_inv!1898 (_values!1996 (v!23465 (underlying!3643 (v!23466 (underlying!3644 (cache!2042 cacheUp!755))))))) e!992135))))

(declare-fun e!992136 () Bool)

(assert (=> b!1548091 (= e!992136 (and e!992134 tp!451435))))

(assert (=> b!1548092 (= e!992116 (and e!992141 tp!451429))))

(declare-fun b!1548093 () Bool)

(declare-fun e!992138 () Bool)

(declare-fun tp!451416 () Bool)

(declare-fun inv!21908 (Conc!5535) Bool)

(assert (=> b!1548093 (= e!992138 (and (inv!21908 (c!252163 totalInput!568)) tp!451416))))

(declare-fun b!1548094 () Bool)

(declare-fun e!992112 () Bool)

(declare-fun tp!451439 () Bool)

(assert (=> b!1548094 (= e!992112 (and (inv!21908 (c!252163 input!1676)) tp!451439))))

(declare-fun tp!451418 () Bool)

(declare-fun tp!451415 () Bool)

(declare-fun e!992143 () Bool)

(declare-fun array_inv!1899 (array!5924) Bool)

(assert (=> b!1548095 (= e!992143 (and tp!451417 tp!451415 tp!451418 (array_inv!1896 (_keys!2012 (v!23467 (underlying!3645 (v!23468 (underlying!3646 (cache!2043 cacheDown!768))))))) (array_inv!1899 (_values!1997 (v!23467 (underlying!3645 (v!23468 (underlying!3646 (cache!2043 cacheDown!768))))))) e!992122))))

(declare-fun b!1548096 () Bool)

(declare-fun res!692217 () Bool)

(assert (=> b!1548096 (=> (not res!692217) (not e!992127))))

(declare-fun valid!1384 (CacheUp!1004) Bool)

(assert (=> b!1548096 (= res!692217 (valid!1384 cacheUp!755))))

(declare-fun res!692216 () Bool)

(assert (=> start!143598 (=> (not res!692216) (not e!992127))))

(assert (=> start!143598 (= res!692216 ((_ is Lexer!2560) thiss!16438))))

(assert (=> start!143598 e!992127))

(declare-fun inv!21909 (BalanceConc!11012) Bool)

(assert (=> start!143598 (and (inv!21909 totalInput!568) e!992138)))

(declare-fun inv!21910 (CacheUp!1004) Bool)

(assert (=> start!143598 (and (inv!21910 cacheUp!755) e!992120)))

(declare-fun e!992123 () Bool)

(declare-fun inv!21911 (CacheFurthestNullable!432) Bool)

(assert (=> start!143598 (and (inv!21911 cacheFurthestNullable!103) e!992123)))

(assert (=> start!143598 (and (inv!21909 input!1676) e!992112)))

(assert (=> start!143598 e!992115))

(declare-fun inv!21912 (CacheDown!1012) Bool)

(assert (=> start!143598 (and (inv!21912 cacheDown!768) e!992108)))

(assert (=> start!143598 true))

(declare-fun b!1548069 () Bool)

(declare-fun res!692224 () Bool)

(assert (=> b!1548069 (=> res!692224 e!992111)))

(assert (=> b!1548069 (= res!692224 (not (= (list!6463 lt!536128) lt!536143)))))

(declare-fun b!1548097 () Bool)

(declare-fun tp!451427 () Bool)

(assert (=> b!1548097 (= e!992130 (and tp!451427 mapRes!8010))))

(declare-fun condMapEmpty!8010 () Bool)

(declare-fun mapDefault!8011 () List!16714)

(assert (=> b!1548097 (= condMapEmpty!8010 (= (arr!2636 (_values!1995 (v!23463 (underlying!3641 (v!23464 (underlying!3642 (cache!2041 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16714)) mapDefault!8011)))))

(declare-fun b!1548098 () Bool)

(declare-fun e!992129 () Bool)

(declare-fun tp!451434 () Bool)

(assert (=> b!1548098 (= e!992129 (and (inv!21908 (c!252163 (totalInput!2419 cacheFurthestNullable!103))) tp!451434))))

(declare-fun b!1548099 () Bool)

(declare-fun e!992119 () Bool)

(declare-datatypes ((tuple2!15920 0))(
  ( (tuple2!15921 (_1!9226 List!16712) (_2!9226 List!16712)) )
))
(declare-fun lt!536132 () tuple2!15920)

(declare-fun matchR!1859 (Regex!4245 List!16712) Bool)

(assert (=> b!1548099 (= e!992119 (matchR!1859 (regex!2917 rule!240) (_1!9226 lt!536132)))))

(declare-fun mapIsEmpty!8012 () Bool)

(assert (=> mapIsEmpty!8012 mapRes!8011))

(declare-fun b!1548100 () Bool)

(assert (=> b!1548100 (= e!992133 (not e!992121))))

(declare-fun res!692225 () Bool)

(assert (=> b!1548100 (=> res!692225 e!992121)))

(declare-fun semiInverseModEq!1098 (Int Int) Bool)

(assert (=> b!1548100 (= res!692225 (not (semiInverseModEq!1098 (toChars!4139 (transformation!2917 rule!240)) (toValue!4280 (transformation!2917 rule!240)))))))

(declare-fun lt!536127 () Unit!25965)

(declare-fun lemmaInv!408 (TokenValueInjection!5674) Unit!25965)

(assert (=> b!1548100 (= lt!536127 (lemmaInv!408 (transformation!2917 rule!240)))))

(assert (=> b!1548100 e!992119))

(declare-fun res!692219 () Bool)

(assert (=> b!1548100 (=> res!692219 e!992119)))

(declare-fun isEmpty!10064 (List!16712) Bool)

(assert (=> b!1548100 (= res!692219 (isEmpty!10064 (_1!9226 lt!536132)))))

(declare-fun findLongestMatchInner!314 (Regex!4245 List!16712 Int List!16712 List!16712 Int) tuple2!15920)

(declare-fun size!13454 (List!16712) Int)

(assert (=> b!1548100 (= lt!536132 (findLongestMatchInner!314 (regex!2917 rule!240) Nil!16644 (size!13454 Nil!16644) lt!536141 lt!536141 (size!13454 lt!536141)))))

(declare-fun lt!536133 () Unit!25965)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!298 (Regex!4245 List!16712) Unit!25965)

(assert (=> b!1548100 (= lt!536133 (longestMatchIsAcceptedByMatchOrIsEmpty!298 (regex!2917 rule!240) lt!536141))))

(declare-fun b!1548101 () Bool)

(declare-fun e!992131 () Bool)

(assert (=> b!1548101 (= e!992114 e!992131)))

(declare-fun b!1548102 () Bool)

(assert (=> b!1548102 (= e!992123 (and e!992136 (inv!21909 (totalInput!2419 cacheFurthestNullable!103)) e!992129))))

(declare-fun b!1548103 () Bool)

(assert (=> b!1548103 (= e!992131 e!992143)))

(declare-fun b!1548104 () Bool)

(assert (=> b!1548104 (= e!992109 e!992128)))

(declare-fun b!1548105 () Bool)

(assert (=> b!1548105 (= e!992127 e!992113)))

(declare-fun res!692215 () Bool)

(assert (=> b!1548105 (=> (not res!692215) (not e!992113))))

(declare-fun isSuffix!356 (List!16712 List!16712) Bool)

(assert (=> b!1548105 (= res!692215 (isSuffix!356 lt!536141 (list!6463 totalInput!568)))))

(assert (=> b!1548105 (= lt!536141 (list!6463 input!1676))))

(assert (= (and start!143598 res!692216) b!1548085))

(assert (= (and b!1548085 res!692226) b!1548096))

(assert (= (and b!1548096 res!692217) b!1548080))

(assert (= (and b!1548080 res!692222) b!1548083))

(assert (= (and b!1548083 res!692223) b!1548105))

(assert (= (and b!1548105 res!692215) b!1548075))

(assert (= (and b!1548075 res!692220) b!1548079))

(assert (= (and b!1548079 res!692213) b!1548100))

(assert (= (and b!1548100 (not res!692219)) b!1548099))

(assert (= (and b!1548100 (not res!692225)) b!1548088))

(assert (= (and b!1548088 (not res!692221)) b!1548076))

(assert (= (and b!1548076 (not res!692218)) b!1548069))

(assert (= (and b!1548069 (not res!692224)) b!1548068))

(assert (= (and b!1548068 (not res!692214)) b!1548087))

(assert (= (and b!1548087 (not res!692227)) b!1548089))

(assert (= start!143598 b!1548093))

(assert (= (and b!1548067 condMapEmpty!8011) mapIsEmpty!8012))

(assert (= (and b!1548067 (not condMapEmpty!8011)) mapNonEmpty!8012))

(assert (= b!1548090 b!1548067))

(assert (= b!1548082 b!1548090))

(assert (= b!1548070 b!1548082))

(assert (= (and b!1548084 ((_ is LongMap!1717) (v!23466 (underlying!3644 (cache!2042 cacheUp!755))))) b!1548070))

(assert (= b!1548092 b!1548084))

(assert (= (and b!1548065 ((_ is HashMap!1661) (cache!2042 cacheUp!755))) b!1548092))

(assert (= start!143598 b!1548065))

(assert (= (and b!1548097 condMapEmpty!8010) mapIsEmpty!8011))

(assert (= (and b!1548097 (not condMapEmpty!8010)) mapNonEmpty!8010))

(assert (= b!1548071 b!1548097))

(assert (= b!1548104 b!1548071))

(assert (= b!1548072 b!1548104))

(assert (= (and b!1548066 ((_ is LongMap!1716) (v!23464 (underlying!3642 (cache!2041 cacheFurthestNullable!103))))) b!1548072))

(assert (= b!1548091 b!1548066))

(assert (= (and b!1548102 ((_ is HashMap!1660) (cache!2041 cacheFurthestNullable!103))) b!1548091))

(assert (= b!1548102 b!1548098))

(assert (= start!143598 b!1548102))

(assert (= start!143598 b!1548094))

(assert (= b!1548074 b!1548078))

(assert (= start!143598 b!1548074))

(assert (= (and b!1548086 condMapEmpty!8012) mapIsEmpty!8010))

(assert (= (and b!1548086 (not condMapEmpty!8012)) mapNonEmpty!8011))

(assert (= b!1548095 b!1548086))

(assert (= b!1548103 b!1548095))

(assert (= b!1548101 b!1548103))

(assert (= (and b!1548081 ((_ is LongMap!1718) (v!23468 (underlying!3646 (cache!2043 cacheDown!768))))) b!1548101))

(assert (= b!1548073 b!1548081))

(assert (= (and b!1548077 ((_ is HashMap!1662) (cache!2043 cacheDown!768))) b!1548073))

(assert (= start!143598 b!1548077))

(declare-fun m!1821307 () Bool)

(assert (=> b!1548099 m!1821307))

(declare-fun m!1821309 () Bool)

(assert (=> b!1548071 m!1821309))

(declare-fun m!1821311 () Bool)

(assert (=> b!1548071 m!1821311))

(declare-fun m!1821313 () Bool)

(assert (=> b!1548105 m!1821313))

(assert (=> b!1548105 m!1821313))

(declare-fun m!1821315 () Bool)

(assert (=> b!1548105 m!1821315))

(declare-fun m!1821317 () Bool)

(assert (=> b!1548105 m!1821317))

(declare-fun m!1821319 () Bool)

(assert (=> b!1548094 m!1821319))

(declare-fun m!1821321 () Bool)

(assert (=> mapNonEmpty!8011 m!1821321))

(declare-fun m!1821323 () Bool)

(assert (=> b!1548069 m!1821323))

(declare-fun m!1821325 () Bool)

(assert (=> b!1548098 m!1821325))

(declare-fun m!1821327 () Bool)

(assert (=> b!1548074 m!1821327))

(declare-fun m!1821329 () Bool)

(assert (=> b!1548074 m!1821329))

(declare-fun m!1821331 () Bool)

(assert (=> b!1548095 m!1821331))

(declare-fun m!1821333 () Bool)

(assert (=> b!1548095 m!1821333))

(declare-fun m!1821335 () Bool)

(assert (=> b!1548087 m!1821335))

(declare-fun m!1821337 () Bool)

(assert (=> b!1548102 m!1821337))

(declare-fun m!1821339 () Bool)

(assert (=> mapNonEmpty!8010 m!1821339))

(declare-fun m!1821341 () Bool)

(assert (=> b!1548080 m!1821341))

(declare-fun m!1821343 () Bool)

(assert (=> b!1548068 m!1821343))

(declare-fun m!1821345 () Bool)

(assert (=> b!1548068 m!1821345))

(declare-fun m!1821347 () Bool)

(assert (=> b!1548076 m!1821347))

(declare-fun m!1821349 () Bool)

(assert (=> b!1548076 m!1821349))

(declare-fun m!1821351 () Bool)

(assert (=> b!1548076 m!1821351))

(declare-fun m!1821353 () Bool)

(assert (=> b!1548076 m!1821353))

(declare-fun m!1821355 () Bool)

(assert (=> b!1548076 m!1821355))

(declare-fun m!1821357 () Bool)

(assert (=> b!1548076 m!1821357))

(declare-fun m!1821359 () Bool)

(assert (=> b!1548076 m!1821359))

(declare-fun m!1821361 () Bool)

(assert (=> b!1548076 m!1821361))

(declare-fun m!1821363 () Bool)

(assert (=> b!1548076 m!1821363))

(declare-fun m!1821365 () Bool)

(assert (=> b!1548088 m!1821365))

(declare-fun m!1821367 () Bool)

(assert (=> b!1548079 m!1821367))

(declare-fun m!1821369 () Bool)

(assert (=> b!1548079 m!1821369))

(declare-fun m!1821371 () Bool)

(assert (=> b!1548100 m!1821371))

(declare-fun m!1821373 () Bool)

(assert (=> b!1548100 m!1821373))

(declare-fun m!1821375 () Bool)

(assert (=> b!1548100 m!1821375))

(declare-fun m!1821377 () Bool)

(assert (=> b!1548100 m!1821377))

(declare-fun m!1821379 () Bool)

(assert (=> b!1548100 m!1821379))

(declare-fun m!1821381 () Bool)

(assert (=> b!1548100 m!1821381))

(assert (=> b!1548100 m!1821371))

(assert (=> b!1548100 m!1821373))

(declare-fun m!1821383 () Bool)

(assert (=> b!1548100 m!1821383))

(declare-fun m!1821385 () Bool)

(assert (=> mapNonEmpty!8012 m!1821385))

(declare-fun m!1821387 () Bool)

(assert (=> b!1548085 m!1821387))

(declare-fun m!1821389 () Bool)

(assert (=> b!1548096 m!1821389))

(declare-fun m!1821391 () Bool)

(assert (=> start!143598 m!1821391))

(declare-fun m!1821393 () Bool)

(assert (=> start!143598 m!1821393))

(declare-fun m!1821395 () Bool)

(assert (=> start!143598 m!1821395))

(declare-fun m!1821397 () Bool)

(assert (=> start!143598 m!1821397))

(declare-fun m!1821399 () Bool)

(assert (=> start!143598 m!1821399))

(declare-fun m!1821401 () Bool)

(assert (=> b!1548090 m!1821401))

(declare-fun m!1821403 () Bool)

(assert (=> b!1548090 m!1821403))

(declare-fun m!1821405 () Bool)

(assert (=> b!1548093 m!1821405))

(declare-fun m!1821407 () Bool)

(assert (=> b!1548083 m!1821407))

(check-sat (not b!1548069) b_and!107925 (not b!1548088) (not b_next!41545) (not b!1548071) (not b!1548105) (not b!1548079) (not b!1548080) b_and!107929 (not b!1548098) (not b_next!41547) (not b!1548083) (not b!1548085) (not b!1548067) (not b!1548090) (not b!1548068) (not b!1548086) b_and!107937 b_and!107927 (not b!1548100) (not b_next!41541) (not b!1548094) (not start!143598) b_and!107939 b_and!107933 (not b!1548102) (not b_next!41551) (not b!1548093) (not b!1548096) (not mapNonEmpty!8011) (not b!1548087) (not b_next!41539) (not b_next!41543) (not b_next!41549) (not b_next!41553) (not b!1548095) (not b!1548074) (not b!1548099) (not b!1548076) (not b!1548097) b_and!107931 (not mapNonEmpty!8010) (not mapNonEmpty!8012) b_and!107935)
(check-sat (not b_next!41547) b_and!107925 (not b_next!41551) (not b_next!41545) b_and!107931 b_and!107929 b_and!107935 b_and!107937 b_and!107927 (not b_next!41541) b_and!107939 b_and!107933 (not b_next!41539) (not b_next!41543) (not b_next!41549) (not b_next!41553))

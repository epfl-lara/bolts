; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!140660 () Bool)

(assert start!140660)

(declare-fun b!1504875 () Bool)

(declare-fun b_free!38983 () Bool)

(declare-fun b_next!39687 () Bool)

(assert (=> b!1504875 (= b_free!38983 (not b_next!39687))))

(declare-fun tp!429373 () Bool)

(declare-fun b_and!104673 () Bool)

(assert (=> b!1504875 (= tp!429373 b_and!104673)))

(declare-fun b!1504843 () Bool)

(declare-fun b_free!38985 () Bool)

(declare-fun b_next!39689 () Bool)

(assert (=> b!1504843 (= b_free!38985 (not b_next!39689))))

(declare-fun tp!429380 () Bool)

(declare-fun b_and!104675 () Bool)

(assert (=> b!1504843 (= tp!429380 b_and!104675)))

(declare-fun b!1504855 () Bool)

(declare-fun b_free!38987 () Bool)

(declare-fun b_next!39691 () Bool)

(assert (=> b!1504855 (= b_free!38987 (not b_next!39691))))

(declare-fun tp!429379 () Bool)

(declare-fun b_and!104677 () Bool)

(assert (=> b!1504855 (= tp!429379 b_and!104677)))

(declare-fun b!1504860 () Bool)

(declare-fun b_free!38989 () Bool)

(declare-fun b_next!39693 () Bool)

(assert (=> b!1504860 (= b_free!38989 (not b_next!39693))))

(declare-fun tp!429362 () Bool)

(declare-fun b_and!104679 () Bool)

(assert (=> b!1504860 (= tp!429362 b_and!104679)))

(declare-fun b!1504850 () Bool)

(declare-fun b_free!38991 () Bool)

(declare-fun b_next!39695 () Bool)

(assert (=> b!1504850 (= b_free!38991 (not b_next!39695))))

(declare-fun tp!429360 () Bool)

(declare-fun b_and!104681 () Bool)

(assert (=> b!1504850 (= tp!429360 b_and!104681)))

(declare-fun b!1504828 () Bool)

(declare-fun b_free!38993 () Bool)

(declare-fun b_next!39697 () Bool)

(assert (=> b!1504828 (= b_free!38993 (not b_next!39697))))

(declare-fun tp!429386 () Bool)

(declare-fun b_and!104683 () Bool)

(assert (=> b!1504828 (= tp!429386 b_and!104683)))

(declare-fun b!1504854 () Bool)

(declare-fun b_free!38995 () Bool)

(declare-fun b_next!39699 () Bool)

(assert (=> b!1504854 (= b_free!38995 (not b_next!39699))))

(declare-fun tp!429371 () Bool)

(declare-fun b_and!104685 () Bool)

(assert (=> b!1504854 (= tp!429371 b_and!104685)))

(declare-fun b_free!38997 () Bool)

(declare-fun b_next!39701 () Bool)

(assert (=> b!1504854 (= b_free!38997 (not b_next!39701))))

(declare-fun tp!429363 () Bool)

(declare-fun b_and!104687 () Bool)

(assert (=> b!1504854 (= tp!429363 b_and!104687)))

(declare-datatypes ((C!8468 0))(
  ( (C!8469 (val!4806 Int)) )
))
(declare-datatypes ((Regex!4145 0))(
  ( (ElementMatch!4145 (c!246714 C!8468)) (Concat!7065 (regOne!8802 Regex!4145) (regTwo!8802 Regex!4145)) (EmptyExpr!4145) (Star!4145 (reg!4474 Regex!4145)) (EmptyLang!4145) (Union!4145 (regOne!8803 Regex!4145) (regTwo!8803 Regex!4145)) )
))
(declare-datatypes ((List!16021 0))(
  ( (Nil!15953) (Cons!15953 (h!21354 Regex!4145) (t!138954 List!16021)) )
))
(declare-datatypes ((Context!1326 0))(
  ( (Context!1327 (exprs!1163 List!16021)) )
))
(declare-datatypes ((tuple3!1304 0))(
  ( (tuple3!1305 (_1!8344 Regex!4145) (_2!8344 Context!1326) (_3!972 C!8468)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14744 0))(
  ( (tuple2!14745 (_1!8345 tuple3!1304) (_2!8345 (InoxSet Context!1326))) )
))
(declare-datatypes ((List!16022 0))(
  ( (Nil!15954) (Cons!15954 (h!21355 tuple2!14744) (t!138955 List!16022)) )
))
(declare-datatypes ((array!5058 0))(
  ( (array!5059 (arr!2256 (Array (_ BitVec 32) List!16022)) (size!12905 (_ BitVec 32))) )
))
(declare-datatypes ((array!5060 0))(
  ( (array!5061 (arr!2257 (Array (_ BitVec 32) (_ BitVec 64))) (size!12906 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2872 0))(
  ( (LongMapFixedSize!2873 (defaultEntry!1796 Int) (mask!4597 (_ BitVec 32)) (extraKeys!1683 (_ BitVec 32)) (zeroValue!1693 List!16022) (minValue!1693 List!16022) (_size!2953 (_ BitVec 32)) (_keys!1730 array!5060) (_values!1715 array!5058) (_vacant!1497 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5629 0))(
  ( (Cell!5630 (v!22773 LongMapFixedSize!2872)) )
))
(declare-datatypes ((MutLongMap!1436 0))(
  ( (LongMap!1436 (underlying!3081 Cell!5629)) (MutLongMapExt!1435 (__x!9882 Int)) )
))
(declare-datatypes ((Cell!5631 0))(
  ( (Cell!5632 (v!22774 MutLongMap!1436)) )
))
(declare-datatypes ((Hashable!1380 0))(
  ( (HashableExt!1379 (__x!9883 Int)) )
))
(declare-datatypes ((MutableMap!1380 0))(
  ( (MutableMapExt!1379 (__x!9884 Int)) (HashMap!1380 (underlying!3082 Cell!5631) (hashF!3299 Hashable!1380) (_size!2954 (_ BitVec 32)) (defaultValue!1540 Int)) )
))
(declare-datatypes ((CacheDown!824 0))(
  ( (CacheDown!825 (cache!1761 MutableMap!1380)) )
))
(declare-fun cacheDown!629 () CacheDown!824)

(declare-fun tp!429388 () Bool)

(declare-fun e!962196 () Bool)

(declare-fun tp!429359 () Bool)

(declare-fun e!962193 () Bool)

(declare-fun array_inv!1636 (array!5060) Bool)

(declare-fun array_inv!1637 (array!5058) Bool)

(assert (=> b!1504828 (= e!962196 (and tp!429386 tp!429388 tp!429359 (array_inv!1636 (_keys!1730 (v!22773 (underlying!3081 (v!22774 (underlying!3082 (cache!1761 cacheDown!629))))))) (array_inv!1637 (_values!1715 (v!22773 (underlying!3081 (v!22774 (underlying!3082 (cache!1761 cacheDown!629))))))) e!962193))))

(declare-fun b!1504829 () Bool)

(declare-fun e!962186 () Bool)

(declare-fun e!962200 () Bool)

(assert (=> b!1504829 (= e!962186 e!962200)))

(declare-fun res!677878 () Bool)

(assert (=> b!1504829 (=> res!677878 e!962200)))

(declare-datatypes ((tuple3!1306 0))(
  ( (tuple3!1307 (_1!8346 (InoxSet Context!1326)) (_2!8346 Int) (_3!973 Int)) )
))
(declare-datatypes ((tuple2!14746 0))(
  ( (tuple2!14747 (_1!8347 tuple3!1306) (_2!8347 Int)) )
))
(declare-datatypes ((List!16023 0))(
  ( (Nil!15955) (Cons!15955 (h!21356 tuple2!14746) (t!138956 List!16023)) )
))
(declare-datatypes ((array!5062 0))(
  ( (array!5063 (arr!2258 (Array (_ BitVec 32) List!16023)) (size!12907 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2874 0))(
  ( (LongMapFixedSize!2875 (defaultEntry!1797 Int) (mask!4598 (_ BitVec 32)) (extraKeys!1684 (_ BitVec 32)) (zeroValue!1694 List!16023) (minValue!1694 List!16023) (_size!2955 (_ BitVec 32)) (_keys!1731 array!5060) (_values!1716 array!5062) (_vacant!1498 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5633 0))(
  ( (Cell!5634 (v!22775 LongMapFixedSize!2874)) )
))
(declare-datatypes ((MutLongMap!1437 0))(
  ( (LongMap!1437 (underlying!3083 Cell!5633)) (MutLongMapExt!1436 (__x!9885 Int)) )
))
(declare-datatypes ((Cell!5635 0))(
  ( (Cell!5636 (v!22776 MutLongMap!1437)) )
))
(declare-datatypes ((Hashable!1381 0))(
  ( (HashableExt!1380 (__x!9886 Int)) )
))
(declare-datatypes ((MutableMap!1381 0))(
  ( (MutableMapExt!1380 (__x!9887 Int)) (HashMap!1381 (underlying!3084 Cell!5635) (hashF!3300 Hashable!1381) (_size!2956 (_ BitVec 32)) (defaultValue!1541 Int)) )
))
(declare-datatypes ((String!18861 0))(
  ( (String!18862 (value!90289 String)) )
))
(declare-datatypes ((List!16024 0))(
  ( (Nil!15956) (Cons!15956 (h!21357 (_ BitVec 16)) (t!138957 List!16024)) )
))
(declare-datatypes ((TokenValue!2920 0))(
  ( (FloatLiteralValue!5840 (text!20885 List!16024)) (TokenValueExt!2919 (__x!9888 Int)) (Broken!14600 (value!90290 List!16024)) (Object!2987) (End!2920) (Def!2920) (Underscore!2920) (Match!2920) (Else!2920) (Error!2920) (Case!2920) (If!2920) (Extends!2920) (Abstract!2920) (Class!2920) (Val!2920) (DelimiterValue!5840 (del!2980 List!16024)) (KeywordValue!2926 (value!90291 List!16024)) (CommentValue!5840 (value!90292 List!16024)) (WhitespaceValue!5840 (value!90293 List!16024)) (IndentationValue!2920 (value!90294 List!16024)) (String!18863) (Int32!2920) (Broken!14601 (value!90295 List!16024)) (Boolean!2921) (Unit!25700) (OperatorValue!2923 (op!2980 List!16024)) (IdentifierValue!5840 (value!90296 List!16024)) (IdentifierValue!5841 (value!90297 List!16024)) (WhitespaceValue!5841 (value!90298 List!16024)) (True!5840) (False!5840) (Broken!14602 (value!90299 List!16024)) (Broken!14603 (value!90300 List!16024)) (True!5841) (RightBrace!2920) (RightBracket!2920) (Colon!2920) (Null!2920) (Comma!2920) (LeftBracket!2920) (False!5841) (LeftBrace!2920) (ImaginaryLiteralValue!2920 (text!20886 List!16024)) (StringLiteralValue!8760 (value!90301 List!16024)) (EOFValue!2920 (value!90302 List!16024)) (IdentValue!2920 (value!90303 List!16024)) (DelimiterValue!5841 (value!90304 List!16024)) (DedentValue!2920 (value!90305 List!16024)) (NewLineValue!2920 (value!90306 List!16024)) (IntegerValue!8760 (value!90307 (_ BitVec 32)) (text!20887 List!16024)) (IntegerValue!8761 (value!90308 Int) (text!20888 List!16024)) (Times!2920) (Or!2920) (Equal!2920) (Minus!2920) (Broken!14604 (value!90309 List!16024)) (And!2920) (Div!2920) (LessEqual!2920) (Mod!2920) (Concat!7066) (Not!2920) (Plus!2920) (SpaceValue!2920 (value!90310 List!16024)) (IntegerValue!8762 (value!90311 Int) (text!20889 List!16024)) (StringLiteralValue!8761 (text!20890 List!16024)) (FloatLiteralValue!5841 (text!20891 List!16024)) (BytesLiteralValue!2920 (value!90312 List!16024)) (CommentValue!5841 (value!90313 List!16024)) (StringLiteralValue!8762 (value!90314 List!16024)) (ErrorTokenValue!2920 (msg!2981 List!16024)) )
))
(declare-datatypes ((tuple2!14748 0))(
  ( (tuple2!14749 (_1!8348 Context!1326) (_2!8348 C!8468)) )
))
(declare-datatypes ((tuple2!14750 0))(
  ( (tuple2!14751 (_1!8349 tuple2!14748) (_2!8349 (InoxSet Context!1326))) )
))
(declare-datatypes ((List!16025 0))(
  ( (Nil!15957) (Cons!15957 (h!21358 tuple2!14750) (t!138958 List!16025)) )
))
(declare-datatypes ((array!5064 0))(
  ( (array!5065 (arr!2259 (Array (_ BitVec 32) List!16025)) (size!12908 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2876 0))(
  ( (LongMapFixedSize!2877 (defaultEntry!1798 Int) (mask!4599 (_ BitVec 32)) (extraKeys!1685 (_ BitVec 32)) (zeroValue!1695 List!16025) (minValue!1695 List!16025) (_size!2957 (_ BitVec 32)) (_keys!1732 array!5060) (_values!1717 array!5064) (_vacant!1499 (_ BitVec 32))) )
))
(declare-datatypes ((List!16026 0))(
  ( (Nil!15958) (Cons!15958 (h!21359 C!8468) (t!138959 List!16026)) )
))
(declare-datatypes ((IArray!10827 0))(
  ( (IArray!10828 (innerList!5471 List!16026)) )
))
(declare-datatypes ((Conc!5411 0))(
  ( (Node!5411 (left!13326 Conc!5411) (right!13656 Conc!5411) (csize!11052 Int) (cheight!5622 Int)) (Leaf!8029 (xs!8186 IArray!10827) (csize!11053 Int)) (Empty!5411) )
))
(declare-datatypes ((BalanceConc!10764 0))(
  ( (BalanceConc!10765 (c!246715 Conc!5411)) )
))
(declare-datatypes ((TokenValueInjection!5500 0))(
  ( (TokenValueInjection!5501 (toValue!4177 Int) (toChars!4036 Int)) )
))
(declare-datatypes ((Rule!5460 0))(
  ( (Rule!5461 (regex!2830 Regex!4145) (tag!3094 String!18861) (isSeparator!2830 Bool) (transformation!2830 TokenValueInjection!5500)) )
))
(declare-datatypes ((CacheFurthestNullable!244 0))(
  ( (CacheFurthestNullable!245 (cache!1762 MutableMap!1381) (totalInput!2275 BalanceConc!10764)) )
))
(declare-datatypes ((Cell!5637 0))(
  ( (Cell!5638 (v!22777 LongMapFixedSize!2876)) )
))
(declare-datatypes ((MutLongMap!1438 0))(
  ( (LongMap!1438 (underlying!3085 Cell!5637)) (MutLongMapExt!1437 (__x!9889 Int)) )
))
(declare-datatypes ((Token!5322 0))(
  ( (Token!5323 (value!90315 TokenValue!2920) (rule!4619 Rule!5460) (size!12909 Int) (originalCharacters!3692 List!16026)) )
))
(declare-datatypes ((tuple2!14752 0))(
  ( (tuple2!14753 (_1!8350 Token!5322) (_2!8350 BalanceConc!10764)) )
))
(declare-datatypes ((Option!2915 0))(
  ( (None!2914) (Some!2914 (v!22778 tuple2!14752)) )
))
(declare-datatypes ((Hashable!1382 0))(
  ( (HashableExt!1381 (__x!9890 Int)) )
))
(declare-datatypes ((Cell!5639 0))(
  ( (Cell!5640 (v!22779 MutLongMap!1438)) )
))
(declare-datatypes ((MutableMap!1382 0))(
  ( (MutableMapExt!1381 (__x!9891 Int)) (HashMap!1382 (underlying!3086 Cell!5639) (hashF!3301 Hashable!1382) (_size!2958 (_ BitVec 32)) (defaultValue!1542 Int)) )
))
(declare-datatypes ((CacheUp!820 0))(
  ( (CacheUp!821 (cache!1763 MutableMap!1382)) )
))
(declare-datatypes ((tuple4!640 0))(
  ( (tuple4!641 (_1!8351 Option!2915) (_2!8351 CacheUp!820) (_3!974 CacheDown!824) (_4!320 CacheFurthestNullable!244)) )
))
(declare-fun lt!523095 () tuple4!640)

(get-info :version)

(assert (=> b!1504829 (= res!677878 (not ((_ is Some!2914) (_1!8351 lt!523095))))))

(declare-fun cacheUp!616 () CacheUp!820)

(declare-fun input!1102 () BalanceConc!10764)

(declare-datatypes ((LexerInterface!2483 0))(
  ( (LexerInterfaceExt!2480 (__x!9892 Int)) (Lexer!2481) )
))
(declare-fun thiss!13241 () LexerInterface!2483)

(declare-datatypes ((List!16027 0))(
  ( (Nil!15959) (Cons!15959 (h!21360 Rule!5460) (t!138960 List!16027)) )
))
(declare-fun rules!1640 () List!16027)

(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!244)

(declare-fun totalInput!458 () BalanceConc!10764)

(declare-fun maxPrefixZipperSequenceV3Mem!18 (LexerInterface!2483 List!16027 BalanceConc!10764 BalanceConc!10764 CacheUp!820 CacheDown!824 CacheFurthestNullable!244) tuple4!640)

(assert (=> b!1504829 (= lt!523095 (maxPrefixZipperSequenceV3Mem!18 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1504830 () Bool)

(declare-fun e!962203 () Bool)

(assert (=> b!1504830 (= e!962203 (not e!962186))))

(declare-fun res!677884 () Bool)

(assert (=> b!1504830 (=> res!677884 e!962186)))

(declare-fun lt!523099 () List!16026)

(declare-fun lt!523097 () List!16026)

(declare-fun isSuffix!292 (List!16026 List!16026) Bool)

(assert (=> b!1504830 (= res!677884 (not (isSuffix!292 lt!523099 lt!523097)))))

(declare-fun lt!523081 () List!16026)

(assert (=> b!1504830 (isSuffix!292 lt!523099 lt!523081)))

(declare-datatypes ((Unit!25701 0))(
  ( (Unit!25702) )
))
(declare-fun lt!523074 () Unit!25701)

(declare-fun lt!523089 () List!16026)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!270 (List!16026 List!16026) Unit!25701)

(assert (=> b!1504830 (= lt!523074 (lemmaConcatTwoListThenFSndIsSuffix!270 lt!523089 lt!523099))))

(declare-fun b!1504831 () Bool)

(declare-fun res!677880 () Bool)

(assert (=> b!1504831 (=> (not res!677880) (not e!962203))))

(declare-fun valid!1145 (CacheDown!824) Bool)

(assert (=> b!1504831 (= res!677880 (valid!1145 cacheDown!629))))

(declare-fun b!1504832 () Bool)

(declare-fun e!962198 () Bool)

(declare-fun e!962182 () Bool)

(declare-fun lt!523079 () MutLongMap!1436)

(assert (=> b!1504832 (= e!962198 (and e!962182 ((_ is LongMap!1436) lt!523079)))))

(assert (=> b!1504832 (= lt!523079 (v!22774 (underlying!3082 (cache!1761 cacheDown!629))))))

(declare-fun b!1504833 () Bool)

(declare-fun e!962173 () Bool)

(declare-fun e!962183 () Bool)

(assert (=> b!1504833 (= e!962173 e!962183)))

(declare-fun b!1504834 () Bool)

(declare-fun e!962192 () Bool)

(declare-fun e!962199 () Bool)

(assert (=> b!1504834 (= e!962192 e!962199)))

(declare-fun b!1504835 () Bool)

(declare-fun e!962178 () Bool)

(declare-fun treated!70 () BalanceConc!10764)

(declare-fun tp!429369 () Bool)

(declare-fun inv!21177 (Conc!5411) Bool)

(assert (=> b!1504835 (= e!962178 (and (inv!21177 (c!246715 treated!70)) tp!429369))))

(declare-fun b!1504836 () Bool)

(declare-fun res!677885 () Bool)

(declare-fun e!962190 () Bool)

(assert (=> b!1504836 (=> res!677885 e!962190)))

(declare-fun valid!1146 (CacheUp!820) Bool)

(assert (=> b!1504836 (= res!677885 (not (valid!1146 (_2!8351 lt!523095))))))

(declare-fun b!1504837 () Bool)

(assert (=> b!1504837 (= e!962190 true)))

(declare-datatypes ((List!16028 0))(
  ( (Nil!15960) (Cons!15960 (h!21361 Token!5322) (t!138961 List!16028)) )
))
(declare-datatypes ((IArray!10829 0))(
  ( (IArray!10830 (innerList!5472 List!16028)) )
))
(declare-datatypes ((Conc!5412 0))(
  ( (Node!5412 (left!13327 Conc!5412) (right!13657 Conc!5412) (csize!11054 Int) (cheight!5623 Int)) (Leaf!8030 (xs!8187 IArray!10829) (csize!11055 Int)) (Empty!5412) )
))
(declare-datatypes ((BalanceConc!10766 0))(
  ( (BalanceConc!10767 (c!246716 Conc!5412)) )
))
(declare-fun lt!523069 () BalanceConc!10766)

(declare-fun lt!523093 () BalanceConc!10764)

(declare-datatypes ((tuple2!14754 0))(
  ( (tuple2!14755 (_1!8352 BalanceConc!10766) (_2!8352 BalanceConc!10764)) )
))
(declare-datatypes ((tuple4!642 0))(
  ( (tuple4!643 (_1!8353 tuple2!14754) (_2!8353 CacheUp!820) (_3!975 CacheDown!824) (_4!321 CacheFurthestNullable!244)) )
))
(declare-fun lt!523088 () tuple4!642)

(declare-fun lexTailRecV3Mem!23 (LexerInterface!2483 List!16027 BalanceConc!10764 BalanceConc!10764 BalanceConc!10764 BalanceConc!10766 CacheUp!820 CacheDown!824 CacheFurthestNullable!244) tuple4!642)

(assert (=> b!1504837 (= lt!523088 (lexTailRecV3Mem!23 thiss!13241 rules!1640 totalInput!458 lt!523093 (_2!8350 (v!22778 (_1!8351 lt!523095))) lt!523069 (_2!8351 lt!523095) (_3!974 lt!523095) (_4!320 lt!523095)))))

(declare-fun b!1504838 () Bool)

(declare-fun e!962202 () Bool)

(declare-fun tp!429378 () Bool)

(assert (=> b!1504838 (= e!962202 (and (inv!21177 (c!246715 (totalInput!2275 cacheFurthestNullable!64))) tp!429378))))

(declare-fun b!1504839 () Bool)

(declare-fun e!962189 () Bool)

(declare-fun tp!429381 () Bool)

(declare-fun mapRes!6834 () Bool)

(assert (=> b!1504839 (= e!962189 (and tp!429381 mapRes!6834))))

(declare-fun condMapEmpty!6834 () Bool)

(declare-fun mapDefault!6835 () List!16025)

(assert (=> b!1504839 (= condMapEmpty!6834 (= (arr!2259 (_values!1717 (v!22777 (underlying!3085 (v!22779 (underlying!3086 (cache!1763 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16025)) mapDefault!6835)))))

(declare-fun b!1504840 () Bool)

(declare-fun e!962206 () tuple2!14754)

(declare-fun lt!523068 () tuple2!14754)

(declare-fun lt!523084 () Option!2915)

(declare-fun prepend!454 (BalanceConc!10766 Token!5322) BalanceConc!10766)

(assert (=> b!1504840 (= e!962206 (tuple2!14755 (prepend!454 (_1!8352 lt!523068) (_1!8350 (v!22778 lt!523084))) (_2!8352 lt!523068)))))

(declare-fun lexRec!319 (LexerInterface!2483 List!16027 BalanceConc!10764) tuple2!14754)

(assert (=> b!1504840 (= lt!523068 (lexRec!319 thiss!13241 rules!1640 (_2!8350 (v!22778 lt!523084))))))

(declare-fun res!677874 () Bool)

(declare-fun e!962195 () Bool)

(assert (=> start!140660 (=> (not res!677874) (not e!962195))))

(assert (=> start!140660 (= res!677874 ((_ is Lexer!2481) thiss!13241))))

(assert (=> start!140660 e!962195))

(declare-fun acc!392 () BalanceConc!10766)

(declare-fun e!962175 () Bool)

(declare-fun inv!21178 (BalanceConc!10766) Bool)

(assert (=> start!140660 (and (inv!21178 acc!392) e!962175)))

(declare-fun e!962191 () Bool)

(declare-fun inv!21179 (CacheUp!820) Bool)

(assert (=> start!140660 (and (inv!21179 cacheUp!616) e!962191)))

(declare-fun e!962176 () Bool)

(declare-fun inv!21180 (CacheDown!824) Bool)

(assert (=> start!140660 (and (inv!21180 cacheDown!629) e!962176)))

(declare-fun e!962197 () Bool)

(declare-fun inv!21181 (BalanceConc!10764) Bool)

(assert (=> start!140660 (and (inv!21181 input!1102) e!962197)))

(assert (=> start!140660 (and (inv!21181 treated!70) e!962178)))

(assert (=> start!140660 true))

(declare-fun e!962201 () Bool)

(assert (=> start!140660 e!962201))

(declare-fun e!962188 () Bool)

(declare-fun inv!21182 (CacheFurthestNullable!244) Bool)

(assert (=> start!140660 (and (inv!21182 cacheFurthestNullable!64) e!962188)))

(declare-fun e!962171 () Bool)

(assert (=> start!140660 (and (inv!21181 totalInput!458) e!962171)))

(declare-fun e!962174 () Bool)

(declare-fun b!1504841 () Bool)

(assert (=> b!1504841 (= e!962188 (and e!962174 (inv!21181 (totalInput!2275 cacheFurthestNullable!64)) e!962202))))

(declare-fun mapIsEmpty!6834 () Bool)

(assert (=> mapIsEmpty!6834 mapRes!6834))

(declare-fun b!1504842 () Bool)

(assert (=> b!1504842 (= e!962206 (tuple2!14755 (BalanceConc!10767 Empty!5412) input!1102))))

(declare-fun tp!429367 () Bool)

(declare-fun e!962187 () Bool)

(declare-fun tp!429361 () Bool)

(declare-fun e!962204 () Bool)

(declare-fun array_inv!1638 (array!5062) Bool)

(assert (=> b!1504843 (= e!962187 (and tp!429380 tp!429361 tp!429367 (array_inv!1636 (_keys!1731 (v!22775 (underlying!3083 (v!22776 (underlying!3084 (cache!1762 cacheFurthestNullable!64))))))) (array_inv!1638 (_values!1716 (v!22775 (underlying!3083 (v!22776 (underlying!3084 (cache!1762 cacheFurthestNullable!64))))))) e!962204))))

(declare-fun b!1504844 () Bool)

(declare-fun res!677877 () Bool)

(assert (=> b!1504844 (=> res!677877 e!962190)))

(declare-fun valid!1147 (CacheFurthestNullable!244) Bool)

(assert (=> b!1504844 (= res!677877 (not (valid!1147 (_4!320 lt!523095))))))

(declare-fun b!1504845 () Bool)

(declare-fun tp!429387 () Bool)

(assert (=> b!1504845 (= e!962171 (and (inv!21177 (c!246715 totalInput!458)) tp!429387))))

(declare-fun mapNonEmpty!6834 () Bool)

(declare-fun mapRes!6835 () Bool)

(declare-fun tp!429372 () Bool)

(declare-fun tp!429377 () Bool)

(assert (=> mapNonEmpty!6834 (= mapRes!6835 (and tp!429372 tp!429377))))

(declare-fun mapKey!6836 () (_ BitVec 32))

(declare-fun mapRest!6836 () (Array (_ BitVec 32) List!16022))

(declare-fun mapValue!6834 () List!16022)

(assert (=> mapNonEmpty!6834 (= (arr!2256 (_values!1715 (v!22773 (underlying!3081 (v!22774 (underlying!3082 (cache!1761 cacheDown!629))))))) (store mapRest!6836 mapKey!6836 mapValue!6834))))

(declare-fun b!1504846 () Bool)

(declare-fun e!962172 () Bool)

(declare-fun e!962210 () Bool)

(assert (=> b!1504846 (= e!962172 e!962210)))

(declare-fun res!677883 () Bool)

(assert (=> b!1504846 (=> (not res!677883) (not e!962210))))

(declare-fun lt!523076 () List!16028)

(declare-fun lt!523091 () List!16028)

(assert (=> b!1504846 (= res!677883 (= lt!523076 lt!523091))))

(declare-fun list!6314 (BalanceConc!10766) List!16028)

(assert (=> b!1504846 (= lt!523091 (list!6314 acc!392))))

(declare-fun lt!523072 () tuple2!14754)

(assert (=> b!1504846 (= lt!523076 (list!6314 (_1!8352 lt!523072)))))

(assert (=> b!1504846 (= lt!523072 (lexRec!319 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1504847 () Bool)

(declare-fun tp!429384 () Bool)

(declare-fun mapRes!6836 () Bool)

(assert (=> b!1504847 (= e!962204 (and tp!429384 mapRes!6836))))

(declare-fun condMapEmpty!6835 () Bool)

(declare-fun mapDefault!6836 () List!16023)

(assert (=> b!1504847 (= condMapEmpty!6835 (= (arr!2258 (_values!1716 (v!22775 (underlying!3083 (v!22776 (underlying!3084 (cache!1762 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16023)) mapDefault!6836)))))

(declare-fun b!1504848 () Bool)

(assert (=> b!1504848 (= e!962200 e!962190)))

(declare-fun res!677882 () Bool)

(assert (=> b!1504848 (=> res!677882 e!962190)))

(declare-fun lt!523083 () List!16026)

(assert (=> b!1504848 (= res!677882 (not (isSuffix!292 lt!523083 lt!523097)))))

(declare-fun lt!523090 () List!16026)

(declare-fun ++!4313 (List!16026 List!16026) List!16026)

(assert (=> b!1504848 (isSuffix!292 lt!523083 (++!4313 lt!523090 lt!523083))))

(declare-fun lt!523092 () Unit!25701)

(assert (=> b!1504848 (= lt!523092 (lemmaConcatTwoListThenFSndIsSuffix!270 lt!523090 lt!523083))))

(declare-fun list!6315 (BalanceConc!10764) List!16026)

(assert (=> b!1504848 (= lt!523090 (list!6315 lt!523093))))

(declare-fun e!962209 () Bool)

(assert (=> b!1504848 e!962209))

(declare-fun c!246712 () Bool)

(declare-fun lt!523101 () Option!2915)

(assert (=> b!1504848 (= c!246712 ((_ is Some!2914) lt!523101))))

(declare-fun lt!523070 () tuple2!14754)

(assert (=> b!1504848 (= lt!523070 (lexRec!319 thiss!13241 rules!1640 lt!523093))))

(declare-fun maxPrefixZipperSequence!580 (LexerInterface!2483 List!16027 BalanceConc!10764) Option!2915)

(assert (=> b!1504848 (= lt!523101 (maxPrefixZipperSequence!580 thiss!13241 rules!1640 lt!523093))))

(declare-fun lt!523094 () BalanceConc!10764)

(declare-fun ++!4314 (BalanceConc!10764 BalanceConc!10764) BalanceConc!10764)

(assert (=> b!1504848 (= lt!523093 (++!4314 treated!70 lt!523094))))

(declare-fun lt!523080 () List!16026)

(declare-fun lt!523096 () List!16028)

(declare-datatypes ((tuple2!14756 0))(
  ( (tuple2!14757 (_1!8354 List!16028) (_2!8354 List!16026)) )
))
(declare-fun lexList!738 (LexerInterface!2483 List!16027 List!16026) tuple2!14756)

(assert (=> b!1504848 (= (lexList!738 thiss!13241 rules!1640 lt!523080) (tuple2!14757 lt!523096 Nil!15958))))

(declare-fun lt!523071 () List!16028)

(declare-fun lt!523082 () Unit!25701)

(declare-fun lt!523087 () tuple2!14754)

(declare-fun lemmaLexThenLexPrefix!220 (LexerInterface!2483 List!16027 List!16026 List!16026 List!16028 List!16028 List!16026) Unit!25701)

(assert (=> b!1504848 (= lt!523082 (lemmaLexThenLexPrefix!220 thiss!13241 rules!1640 lt!523080 lt!523083 lt!523096 lt!523071 (list!6315 (_2!8352 lt!523087))))))

(assert (=> b!1504848 (= lt!523096 (list!6314 lt!523069))))

(declare-fun append!488 (BalanceConc!10766 Token!5322) BalanceConc!10766)

(assert (=> b!1504848 (= lt!523069 (append!488 acc!392 (_1!8350 (v!22778 (_1!8351 lt!523095)))))))

(declare-fun lt!523078 () List!16028)

(declare-fun ++!4315 (List!16028 List!16028) List!16028)

(assert (=> b!1504848 (= (++!4315 (++!4315 lt!523091 lt!523078) lt!523071) (++!4315 lt!523091 (++!4315 lt!523078 lt!523071)))))

(declare-fun lt!523075 () Unit!25701)

(declare-fun lemmaConcatAssociativity!923 (List!16028 List!16028 List!16028) Unit!25701)

(assert (=> b!1504848 (= lt!523075 (lemmaConcatAssociativity!923 lt!523091 lt!523078 lt!523071))))

(assert (=> b!1504848 (= lt!523071 (list!6314 (_1!8352 lt!523087)))))

(assert (=> b!1504848 (= lt!523078 (Cons!15960 (_1!8350 (v!22778 (_1!8351 lt!523095))) Nil!15960))))

(declare-fun lt!523098 () tuple2!14754)

(assert (=> b!1504848 (= lt!523098 e!962206)))

(declare-fun c!246713 () Bool)

(assert (=> b!1504848 (= c!246713 ((_ is Some!2914) lt!523084))))

(assert (=> b!1504848 (= lt!523084 (maxPrefixZipperSequence!580 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!523102 () List!16026)

(assert (=> b!1504848 (= (++!4313 lt!523080 lt!523083) (++!4313 lt!523089 (++!4313 lt!523102 lt!523083)))))

(assert (=> b!1504848 (= lt!523080 (++!4313 lt!523089 lt!523102))))

(declare-fun lt!523085 () Unit!25701)

(declare-fun lemmaConcatAssociativity!924 (List!16026 List!16026 List!16026) Unit!25701)

(assert (=> b!1504848 (= lt!523085 (lemmaConcatAssociativity!924 lt!523089 lt!523102 lt!523083))))

(assert (=> b!1504848 (= lt!523083 (list!6315 (_2!8350 (v!22778 (_1!8351 lt!523095)))))))

(assert (=> b!1504848 (= lt!523102 (list!6315 lt!523094))))

(declare-fun charsOf!1621 (Token!5322) BalanceConc!10764)

(assert (=> b!1504848 (= lt!523094 (charsOf!1621 (_1!8350 (v!22778 (_1!8351 lt!523095)))))))

(assert (=> b!1504848 (= lt!523087 (lexRec!319 thiss!13241 rules!1640 (_2!8350 (v!22778 (_1!8351 lt!523095)))))))

(declare-fun b!1504849 () Bool)

(assert (=> b!1504849 (= e!962195 e!962172)))

(declare-fun res!677881 () Bool)

(assert (=> b!1504849 (=> (not res!677881) (not e!962172))))

(assert (=> b!1504849 (= res!677881 (= lt!523097 lt!523081))))

(assert (=> b!1504849 (= lt!523081 (++!4313 lt!523089 lt!523099))))

(assert (=> b!1504849 (= lt!523097 (list!6315 totalInput!458))))

(assert (=> b!1504849 (= lt!523099 (list!6315 input!1102))))

(assert (=> b!1504849 (= lt!523089 (list!6315 treated!70))))

(declare-fun e!962194 () Bool)

(assert (=> b!1504850 (= e!962174 (and e!962194 tp!429360))))

(declare-fun b!1504851 () Bool)

(declare-fun e!962207 () Bool)

(assert (=> b!1504851 (= e!962182 e!962207)))

(declare-fun b!1504852 () Bool)

(declare-fun tp!429368 () Bool)

(assert (=> b!1504852 (= e!962193 (and tp!429368 mapRes!6835))))

(declare-fun condMapEmpty!6836 () Bool)

(declare-fun mapDefault!6834 () List!16022)

(assert (=> b!1504852 (= condMapEmpty!6836 (= (arr!2256 (_values!1715 (v!22773 (underlying!3081 (v!22774 (underlying!3082 (cache!1761 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16022)) mapDefault!6834)))))

(declare-fun b!1504853 () Bool)

(declare-fun e!962212 () Bool)

(declare-fun tp!429382 () Bool)

(assert (=> b!1504853 (= e!962201 (and e!962212 tp!429382))))

(declare-fun e!962184 () Bool)

(assert (=> b!1504854 (= e!962184 (and tp!429371 tp!429363))))

(declare-fun tp!429376 () Bool)

(declare-fun tp!429374 () Bool)

(declare-fun e!962211 () Bool)

(declare-fun array_inv!1639 (array!5064) Bool)

(assert (=> b!1504855 (= e!962211 (and tp!429379 tp!429374 tp!429376 (array_inv!1636 (_keys!1732 (v!22777 (underlying!3085 (v!22779 (underlying!3086 (cache!1763 cacheUp!616))))))) (array_inv!1639 (_values!1717 (v!22777 (underlying!3085 (v!22779 (underlying!3086 (cache!1763 cacheUp!616))))))) e!962189))))

(declare-fun b!1504856 () Bool)

(assert (=> b!1504856 (= e!962183 e!962187)))

(declare-fun b!1504857 () Bool)

(declare-fun e!962208 () Bool)

(declare-fun lt!523077 () MutLongMap!1438)

(assert (=> b!1504857 (= e!962208 (and e!962192 ((_ is LongMap!1438) lt!523077)))))

(assert (=> b!1504857 (= lt!523077 (v!22779 (underlying!3086 (cache!1763 cacheUp!616))))))

(declare-fun b!1504858 () Bool)

(declare-fun res!677873 () Bool)

(assert (=> b!1504858 (=> (not res!677873) (not e!962203))))

(assert (=> b!1504858 (= res!677873 (= (totalInput!2275 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1504859 () Bool)

(assert (=> b!1504859 (= e!962210 e!962203)))

(declare-fun res!677871 () Bool)

(assert (=> b!1504859 (=> (not res!677871) (not e!962203))))

(declare-fun lt!523086 () tuple2!14754)

(declare-fun ++!4316 (BalanceConc!10766 BalanceConc!10766) BalanceConc!10766)

(assert (=> b!1504859 (= res!677871 (= (list!6314 (_1!8352 lt!523086)) (list!6314 (++!4316 acc!392 (_1!8352 lt!523098)))))))

(assert (=> b!1504859 (= lt!523098 (lexRec!319 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1504859 (= lt!523086 (lexRec!319 thiss!13241 rules!1640 totalInput!458))))

(declare-fun e!962181 () Bool)

(assert (=> b!1504860 (= e!962181 (and e!962208 tp!429362))))

(declare-fun b!1504861 () Bool)

(declare-fun tp!429364 () Bool)

(declare-fun inv!21183 (Conc!5412) Bool)

(assert (=> b!1504861 (= e!962175 (and (inv!21183 (c!246716 acc!392)) tp!429364))))

(declare-fun b!1504862 () Bool)

(declare-fun res!677868 () Bool)

(assert (=> b!1504862 (=> res!677868 e!962190)))

(assert (=> b!1504862 (= res!677868 (not (valid!1145 (_3!974 lt!523095))))))

(declare-fun b!1504863 () Bool)

(declare-fun tp!429365 () Bool)

(assert (=> b!1504863 (= e!962197 (and (inv!21177 (c!246715 input!1102)) tp!429365))))

(declare-fun b!1504864 () Bool)

(declare-fun e!962177 () Bool)

(assert (=> b!1504864 (= e!962176 e!962177)))

(declare-fun b!1504865 () Bool)

(assert (=> b!1504865 (= e!962207 e!962196)))

(declare-fun mapNonEmpty!6835 () Bool)

(declare-fun tp!429383 () Bool)

(declare-fun tp!429370 () Bool)

(assert (=> mapNonEmpty!6835 (= mapRes!6834 (and tp!429383 tp!429370))))

(declare-fun mapKey!6834 () (_ BitVec 32))

(declare-fun mapRest!6835 () (Array (_ BitVec 32) List!16025))

(declare-fun mapValue!6836 () List!16025)

(assert (=> mapNonEmpty!6835 (= (arr!2259 (_values!1717 (v!22777 (underlying!3085 (v!22779 (underlying!3086 (cache!1763 cacheUp!616))))))) (store mapRest!6835 mapKey!6834 mapValue!6836))))

(declare-fun b!1504866 () Bool)

(declare-fun res!677872 () Bool)

(assert (=> b!1504866 (=> (not res!677872) (not e!962195))))

(declare-fun isEmpty!9899 (List!16027) Bool)

(assert (=> b!1504866 (= res!677872 (not (isEmpty!9899 rules!1640)))))

(declare-fun b!1504867 () Bool)

(declare-fun res!677876 () Bool)

(assert (=> b!1504867 (=> (not res!677876) (not e!962210))))

(declare-fun isEmpty!9900 (List!16026) Bool)

(assert (=> b!1504867 (= res!677876 (isEmpty!9900 (list!6315 (_2!8352 lt!523072))))))

(declare-fun lt!523073 () tuple2!14754)

(declare-fun b!1504868 () Bool)

(assert (=> b!1504868 (= e!962209 (= lt!523070 (tuple2!14755 (prepend!454 (_1!8352 lt!523073) (_1!8350 (v!22778 lt!523101))) (_2!8352 lt!523073))))))

(assert (=> b!1504868 (= lt!523073 (lexRec!319 thiss!13241 rules!1640 (_2!8350 (v!22778 lt!523101))))))

(declare-fun b!1504869 () Bool)

(declare-fun tp!429385 () Bool)

(declare-fun inv!21172 (String!18861) Bool)

(declare-fun inv!21184 (TokenValueInjection!5500) Bool)

(assert (=> b!1504869 (= e!962212 (and tp!429385 (inv!21172 (tag!3094 (h!21360 rules!1640))) (inv!21184 (transformation!2830 (h!21360 rules!1640))) e!962184))))

(declare-fun b!1504870 () Bool)

(declare-fun lt!523100 () MutLongMap!1437)

(assert (=> b!1504870 (= e!962194 (and e!962173 ((_ is LongMap!1437) lt!523100)))))

(assert (=> b!1504870 (= lt!523100 (v!22776 (underlying!3084 (cache!1762 cacheFurthestNullable!64))))))

(declare-fun b!1504871 () Bool)

(declare-fun res!677879 () Bool)

(assert (=> b!1504871 (=> (not res!677879) (not e!962203))))

(assert (=> b!1504871 (= res!677879 (= (list!6315 (_2!8352 lt!523086)) (list!6315 (_2!8352 lt!523098))))))

(declare-fun mapIsEmpty!6835 () Bool)

(assert (=> mapIsEmpty!6835 mapRes!6835))

(declare-fun mapIsEmpty!6836 () Bool)

(assert (=> mapIsEmpty!6836 mapRes!6836))

(declare-fun b!1504872 () Bool)

(declare-fun res!677869 () Bool)

(assert (=> b!1504872 (=> (not res!677869) (not e!962195))))

(declare-fun rulesInvariant!2262 (LexerInterface!2483 List!16027) Bool)

(assert (=> b!1504872 (= res!677869 (rulesInvariant!2262 thiss!13241 rules!1640))))

(declare-fun b!1504873 () Bool)

(declare-fun res!677870 () Bool)

(assert (=> b!1504873 (=> (not res!677870) (not e!962203))))

(assert (=> b!1504873 (= res!677870 (valid!1146 cacheUp!616))))

(declare-fun b!1504874 () Bool)

(assert (=> b!1504874 (= e!962199 e!962211)))

(assert (=> b!1504875 (= e!962177 (and e!962198 tp!429373))))

(declare-fun b!1504876 () Bool)

(assert (=> b!1504876 (= e!962209 (= lt!523070 (tuple2!14755 (BalanceConc!10767 Empty!5412) lt!523093)))))

(declare-fun b!1504877 () Bool)

(declare-fun res!677875 () Bool)

(assert (=> b!1504877 (=> (not res!677875) (not e!962203))))

(assert (=> b!1504877 (= res!677875 (valid!1147 cacheFurthestNullable!64))))

(declare-fun b!1504878 () Bool)

(assert (=> b!1504878 (= e!962191 e!962181)))

(declare-fun mapNonEmpty!6836 () Bool)

(declare-fun tp!429375 () Bool)

(declare-fun tp!429366 () Bool)

(assert (=> mapNonEmpty!6836 (= mapRes!6836 (and tp!429375 tp!429366))))

(declare-fun mapRest!6834 () (Array (_ BitVec 32) List!16023))

(declare-fun mapValue!6835 () List!16023)

(declare-fun mapKey!6835 () (_ BitVec 32))

(assert (=> mapNonEmpty!6836 (= (arr!2258 (_values!1716 (v!22775 (underlying!3083 (v!22776 (underlying!3084 (cache!1762 cacheFurthestNullable!64))))))) (store mapRest!6834 mapKey!6835 mapValue!6835))))

(assert (= (and start!140660 res!677874) b!1504866))

(assert (= (and b!1504866 res!677872) b!1504872))

(assert (= (and b!1504872 res!677869) b!1504849))

(assert (= (and b!1504849 res!677881) b!1504846))

(assert (= (and b!1504846 res!677883) b!1504867))

(assert (= (and b!1504867 res!677876) b!1504859))

(assert (= (and b!1504859 res!677871) b!1504871))

(assert (= (and b!1504871 res!677879) b!1504873))

(assert (= (and b!1504873 res!677870) b!1504831))

(assert (= (and b!1504831 res!677880) b!1504877))

(assert (= (and b!1504877 res!677875) b!1504858))

(assert (= (and b!1504858 res!677873) b!1504830))

(assert (= (and b!1504830 (not res!677884)) b!1504829))

(assert (= (and b!1504829 (not res!677878)) b!1504848))

(assert (= (and b!1504848 c!246713) b!1504840))

(assert (= (and b!1504848 (not c!246713)) b!1504842))

(assert (= (and b!1504848 c!246712) b!1504868))

(assert (= (and b!1504848 (not c!246712)) b!1504876))

(assert (= (and b!1504848 (not res!677882)) b!1504844))

(assert (= (and b!1504844 (not res!677877)) b!1504836))

(assert (= (and b!1504836 (not res!677885)) b!1504862))

(assert (= (and b!1504862 (not res!677868)) b!1504837))

(assert (= start!140660 b!1504861))

(assert (= (and b!1504839 condMapEmpty!6834) mapIsEmpty!6834))

(assert (= (and b!1504839 (not condMapEmpty!6834)) mapNonEmpty!6835))

(assert (= b!1504855 b!1504839))

(assert (= b!1504874 b!1504855))

(assert (= b!1504834 b!1504874))

(assert (= (and b!1504857 ((_ is LongMap!1438) (v!22779 (underlying!3086 (cache!1763 cacheUp!616))))) b!1504834))

(assert (= b!1504860 b!1504857))

(assert (= (and b!1504878 ((_ is HashMap!1382) (cache!1763 cacheUp!616))) b!1504860))

(assert (= start!140660 b!1504878))

(assert (= (and b!1504852 condMapEmpty!6836) mapIsEmpty!6835))

(assert (= (and b!1504852 (not condMapEmpty!6836)) mapNonEmpty!6834))

(assert (= b!1504828 b!1504852))

(assert (= b!1504865 b!1504828))

(assert (= b!1504851 b!1504865))

(assert (= (and b!1504832 ((_ is LongMap!1436) (v!22774 (underlying!3082 (cache!1761 cacheDown!629))))) b!1504851))

(assert (= b!1504875 b!1504832))

(assert (= (and b!1504864 ((_ is HashMap!1380) (cache!1761 cacheDown!629))) b!1504875))

(assert (= start!140660 b!1504864))

(assert (= start!140660 b!1504863))

(assert (= start!140660 b!1504835))

(assert (= b!1504869 b!1504854))

(assert (= b!1504853 b!1504869))

(assert (= (and start!140660 ((_ is Cons!15959) rules!1640)) b!1504853))

(assert (= (and b!1504847 condMapEmpty!6835) mapIsEmpty!6836))

(assert (= (and b!1504847 (not condMapEmpty!6835)) mapNonEmpty!6836))

(assert (= b!1504843 b!1504847))

(assert (= b!1504856 b!1504843))

(assert (= b!1504833 b!1504856))

(assert (= (and b!1504870 ((_ is LongMap!1437) (v!22776 (underlying!3084 (cache!1762 cacheFurthestNullable!64))))) b!1504833))

(assert (= b!1504850 b!1504870))

(assert (= (and b!1504841 ((_ is HashMap!1381) (cache!1762 cacheFurthestNullable!64))) b!1504850))

(assert (= b!1504841 b!1504838))

(assert (= start!140660 b!1504841))

(assert (= start!140660 b!1504845))

(declare-fun m!1764437 () Bool)

(assert (=> mapNonEmpty!6835 m!1764437))

(declare-fun m!1764439 () Bool)

(assert (=> b!1504836 m!1764439))

(declare-fun m!1764441 () Bool)

(assert (=> b!1504869 m!1764441))

(declare-fun m!1764443 () Bool)

(assert (=> b!1504869 m!1764443))

(declare-fun m!1764445 () Bool)

(assert (=> b!1504866 m!1764445))

(declare-fun m!1764447 () Bool)

(assert (=> b!1504861 m!1764447))

(declare-fun m!1764449 () Bool)

(assert (=> b!1504859 m!1764449))

(declare-fun m!1764451 () Bool)

(assert (=> b!1504859 m!1764451))

(declare-fun m!1764453 () Bool)

(assert (=> b!1504859 m!1764453))

(declare-fun m!1764455 () Bool)

(assert (=> b!1504859 m!1764455))

(assert (=> b!1504859 m!1764453))

(declare-fun m!1764457 () Bool)

(assert (=> b!1504859 m!1764457))

(declare-fun m!1764459 () Bool)

(assert (=> mapNonEmpty!6834 m!1764459))

(declare-fun m!1764461 () Bool)

(assert (=> b!1504845 m!1764461))

(declare-fun m!1764463 () Bool)

(assert (=> b!1504862 m!1764463))

(declare-fun m!1764465 () Bool)

(assert (=> b!1504841 m!1764465))

(declare-fun m!1764467 () Bool)

(assert (=> b!1504877 m!1764467))

(declare-fun m!1764469 () Bool)

(assert (=> b!1504829 m!1764469))

(declare-fun m!1764471 () Bool)

(assert (=> b!1504838 m!1764471))

(declare-fun m!1764473 () Bool)

(assert (=> b!1504849 m!1764473))

(declare-fun m!1764475 () Bool)

(assert (=> b!1504849 m!1764475))

(declare-fun m!1764477 () Bool)

(assert (=> b!1504849 m!1764477))

(declare-fun m!1764479 () Bool)

(assert (=> b!1504849 m!1764479))

(declare-fun m!1764481 () Bool)

(assert (=> b!1504873 m!1764481))

(declare-fun m!1764483 () Bool)

(assert (=> b!1504855 m!1764483))

(declare-fun m!1764485 () Bool)

(assert (=> b!1504855 m!1764485))

(declare-fun m!1764487 () Bool)

(assert (=> b!1504843 m!1764487))

(declare-fun m!1764489 () Bool)

(assert (=> b!1504843 m!1764489))

(declare-fun m!1764491 () Bool)

(assert (=> b!1504863 m!1764491))

(declare-fun m!1764493 () Bool)

(assert (=> b!1504846 m!1764493))

(declare-fun m!1764495 () Bool)

(assert (=> b!1504846 m!1764495))

(declare-fun m!1764497 () Bool)

(assert (=> b!1504846 m!1764497))

(declare-fun m!1764499 () Bool)

(assert (=> b!1504840 m!1764499))

(declare-fun m!1764501 () Bool)

(assert (=> b!1504840 m!1764501))

(declare-fun m!1764503 () Bool)

(assert (=> mapNonEmpty!6836 m!1764503))

(declare-fun m!1764505 () Bool)

(assert (=> b!1504848 m!1764505))

(declare-fun m!1764507 () Bool)

(assert (=> b!1504848 m!1764507))

(declare-fun m!1764509 () Bool)

(assert (=> b!1504848 m!1764509))

(declare-fun m!1764511 () Bool)

(assert (=> b!1504848 m!1764511))

(declare-fun m!1764513 () Bool)

(assert (=> b!1504848 m!1764513))

(declare-fun m!1764515 () Bool)

(assert (=> b!1504848 m!1764515))

(declare-fun m!1764517 () Bool)

(assert (=> b!1504848 m!1764517))

(declare-fun m!1764519 () Bool)

(assert (=> b!1504848 m!1764519))

(declare-fun m!1764521 () Bool)

(assert (=> b!1504848 m!1764521))

(declare-fun m!1764523 () Bool)

(assert (=> b!1504848 m!1764523))

(declare-fun m!1764525 () Bool)

(assert (=> b!1504848 m!1764525))

(declare-fun m!1764527 () Bool)

(assert (=> b!1504848 m!1764527))

(declare-fun m!1764529 () Bool)

(assert (=> b!1504848 m!1764529))

(declare-fun m!1764531 () Bool)

(assert (=> b!1504848 m!1764531))

(declare-fun m!1764533 () Bool)

(assert (=> b!1504848 m!1764533))

(declare-fun m!1764535 () Bool)

(assert (=> b!1504848 m!1764535))

(declare-fun m!1764537 () Bool)

(assert (=> b!1504848 m!1764537))

(declare-fun m!1764539 () Bool)

(assert (=> b!1504848 m!1764539))

(declare-fun m!1764541 () Bool)

(assert (=> b!1504848 m!1764541))

(declare-fun m!1764543 () Bool)

(assert (=> b!1504848 m!1764543))

(declare-fun m!1764545 () Bool)

(assert (=> b!1504848 m!1764545))

(declare-fun m!1764547 () Bool)

(assert (=> b!1504848 m!1764547))

(declare-fun m!1764549 () Bool)

(assert (=> b!1504848 m!1764549))

(declare-fun m!1764551 () Bool)

(assert (=> b!1504848 m!1764551))

(declare-fun m!1764553 () Bool)

(assert (=> b!1504848 m!1764553))

(assert (=> b!1504848 m!1764551))

(declare-fun m!1764555 () Bool)

(assert (=> b!1504848 m!1764555))

(declare-fun m!1764557 () Bool)

(assert (=> b!1504848 m!1764557))

(assert (=> b!1504848 m!1764527))

(assert (=> b!1504848 m!1764537))

(assert (=> b!1504848 m!1764515))

(declare-fun m!1764559 () Bool)

(assert (=> b!1504848 m!1764559))

(declare-fun m!1764561 () Bool)

(assert (=> b!1504848 m!1764561))

(assert (=> b!1504848 m!1764531))

(declare-fun m!1764563 () Bool)

(assert (=> b!1504835 m!1764563))

(declare-fun m!1764565 () Bool)

(assert (=> b!1504831 m!1764565))

(declare-fun m!1764567 () Bool)

(assert (=> b!1504830 m!1764567))

(declare-fun m!1764569 () Bool)

(assert (=> b!1504830 m!1764569))

(declare-fun m!1764571 () Bool)

(assert (=> b!1504830 m!1764571))

(declare-fun m!1764573 () Bool)

(assert (=> b!1504872 m!1764573))

(declare-fun m!1764575 () Bool)

(assert (=> b!1504844 m!1764575))

(declare-fun m!1764577 () Bool)

(assert (=> start!140660 m!1764577))

(declare-fun m!1764579 () Bool)

(assert (=> start!140660 m!1764579))

(declare-fun m!1764581 () Bool)

(assert (=> start!140660 m!1764581))

(declare-fun m!1764583 () Bool)

(assert (=> start!140660 m!1764583))

(declare-fun m!1764585 () Bool)

(assert (=> start!140660 m!1764585))

(declare-fun m!1764587 () Bool)

(assert (=> start!140660 m!1764587))

(declare-fun m!1764589 () Bool)

(assert (=> start!140660 m!1764589))

(declare-fun m!1764591 () Bool)

(assert (=> b!1504867 m!1764591))

(assert (=> b!1504867 m!1764591))

(declare-fun m!1764593 () Bool)

(assert (=> b!1504867 m!1764593))

(declare-fun m!1764595 () Bool)

(assert (=> b!1504868 m!1764595))

(declare-fun m!1764597 () Bool)

(assert (=> b!1504868 m!1764597))

(declare-fun m!1764599 () Bool)

(assert (=> b!1504828 m!1764599))

(declare-fun m!1764601 () Bool)

(assert (=> b!1504828 m!1764601))

(declare-fun m!1764603 () Bool)

(assert (=> b!1504871 m!1764603))

(declare-fun m!1764605 () Bool)

(assert (=> b!1504871 m!1764605))

(declare-fun m!1764607 () Bool)

(assert (=> b!1504837 m!1764607))

(check-sat (not b!1504836) b_and!104683 (not b_next!39695) (not b!1504849) (not b!1504841) (not b_next!39693) (not b!1504871) (not mapNonEmpty!6836) (not b!1504828) (not b!1504855) (not start!140660) (not b!1504837) (not mapNonEmpty!6835) (not b!1504840) (not b!1504846) (not b!1504866) b_and!104679 (not b!1504859) (not b!1504848) (not b!1504861) (not mapNonEmpty!6834) (not b!1504829) (not b!1504845) (not b!1504868) (not b_next!39691) (not b!1504838) (not b!1504867) (not b_next!39697) (not b!1504844) (not b_next!39689) b_and!104681 (not b!1504835) (not b!1504869) (not b!1504873) (not b!1504843) (not b!1504863) (not b_next!39701) b_and!104685 (not b!1504853) (not b!1504831) b_and!104687 (not b!1504872) (not b!1504847) (not b!1504877) b_and!104673 b_and!104677 (not b_next!39687) (not b_next!39699) b_and!104675 (not b!1504862) (not b!1504830) (not b!1504839) (not b!1504852))
(check-sat b_and!104679 (not b_next!39691) b_and!104683 (not b_next!39695) (not b_next!39693) b_and!104687 b_and!104675 (not b_next!39697) (not b_next!39689) b_and!104681 (not b_next!39701) b_and!104685 b_and!104673 b_and!104677 (not b_next!39687) (not b_next!39699))

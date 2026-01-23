; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144516 () Bool)

(assert start!144516)

(declare-fun b!1557750 () Bool)

(declare-fun b_free!41479 () Bool)

(declare-fun b_next!42183 () Bool)

(assert (=> b!1557750 (= b_free!41479 (not b_next!42183))))

(declare-fun tp!457270 () Bool)

(declare-fun b_and!108693 () Bool)

(assert (=> b!1557750 (= tp!457270 b_and!108693)))

(declare-fun b!1557734 () Bool)

(declare-fun b_free!41481 () Bool)

(declare-fun b_next!42185 () Bool)

(assert (=> b!1557734 (= b_free!41481 (not b_next!42185))))

(declare-fun tp!457268 () Bool)

(declare-fun b_and!108695 () Bool)

(assert (=> b!1557734 (= tp!457268 b_and!108695)))

(declare-fun b!1557726 () Bool)

(declare-fun b_free!41483 () Bool)

(declare-fun b_next!42187 () Bool)

(assert (=> b!1557726 (= b_free!41483 (not b_next!42187))))

(declare-fun tp!457257 () Bool)

(declare-fun b_and!108697 () Bool)

(assert (=> b!1557726 (= tp!457257 b_and!108697)))

(declare-fun b_free!41485 () Bool)

(declare-fun b_next!42189 () Bool)

(assert (=> b!1557726 (= b_free!41485 (not b_next!42189))))

(declare-fun tp!457269 () Bool)

(declare-fun b_and!108699 () Bool)

(assert (=> b!1557726 (= tp!457269 b_and!108699)))

(declare-fun b!1557745 () Bool)

(declare-fun b_free!41487 () Bool)

(declare-fun b_next!42191 () Bool)

(assert (=> b!1557745 (= b_free!41487 (not b_next!42191))))

(declare-fun tp!457267 () Bool)

(declare-fun b_and!108701 () Bool)

(assert (=> b!1557745 (= tp!457267 b_and!108701)))

(declare-fun b!1557748 () Bool)

(declare-fun b_free!41489 () Bool)

(declare-fun b_next!42193 () Bool)

(assert (=> b!1557748 (= b_free!41489 (not b_next!42193))))

(declare-fun tp!457252 () Bool)

(declare-fun b_and!108703 () Bool)

(assert (=> b!1557748 (= tp!457252 b_and!108703)))

(declare-fun b!1557729 () Bool)

(declare-fun b_free!41491 () Bool)

(declare-fun b_next!42195 () Bool)

(assert (=> b!1557729 (= b_free!41491 (not b_next!42195))))

(declare-fun tp!457256 () Bool)

(declare-fun b_and!108705 () Bool)

(assert (=> b!1557729 (= tp!457256 b_and!108705)))

(declare-fun b!1557723 () Bool)

(declare-fun b_free!41493 () Bool)

(declare-fun b_next!42197 () Bool)

(assert (=> b!1557723 (= b_free!41493 (not b_next!42197))))

(declare-fun tp!457276 () Bool)

(declare-fun b_and!108707 () Bool)

(assert (=> b!1557723 (= tp!457276 b_and!108707)))

(declare-fun b!1557771 () Bool)

(declare-fun e!999778 () Bool)

(assert (=> b!1557771 (= e!999778 true)))

(declare-fun b!1557770 () Bool)

(declare-fun e!999777 () Bool)

(assert (=> b!1557770 (= e!999777 e!999778)))

(declare-fun b!1557749 () Bool)

(assert (=> b!1557749 e!999777))

(assert (= b!1557770 b!1557771))

(assert (= b!1557749 b!1557770))

(declare-fun lambda!65941 () Int)

(declare-datatypes ((List!16929 0))(
  ( (Nil!16861) (Cons!16861 (h!22262 (_ BitVec 16)) (t!141424 List!16929)) )
))
(declare-datatypes ((TokenValue!3045 0))(
  ( (FloatLiteralValue!6090 (text!21760 List!16929)) (TokenValueExt!3044 (__x!11266 Int)) (Broken!15225 (value!93828 List!16929)) (Object!3112) (End!3045) (Def!3045) (Underscore!3045) (Match!3045) (Else!3045) (Error!3045) (Case!3045) (If!3045) (Extends!3045) (Abstract!3045) (Class!3045) (Val!3045) (DelimiterValue!6090 (del!3105 List!16929)) (KeywordValue!3051 (value!93829 List!16929)) (CommentValue!6090 (value!93830 List!16929)) (WhitespaceValue!6090 (value!93831 List!16929)) (IndentationValue!3045 (value!93832 List!16929)) (String!19512) (Int32!3045) (Broken!15226 (value!93833 List!16929)) (Boolean!3046) (Unit!26101) (OperatorValue!3048 (op!3105 List!16929)) (IdentifierValue!6090 (value!93834 List!16929)) (IdentifierValue!6091 (value!93835 List!16929)) (WhitespaceValue!6091 (value!93836 List!16929)) (True!6090) (False!6090) (Broken!15227 (value!93837 List!16929)) (Broken!15228 (value!93838 List!16929)) (True!6091) (RightBrace!3045) (RightBracket!3045) (Colon!3045) (Null!3045) (Comma!3045) (LeftBracket!3045) (False!6091) (LeftBrace!3045) (ImaginaryLiteralValue!3045 (text!21761 List!16929)) (StringLiteralValue!9135 (value!93839 List!16929)) (EOFValue!3045 (value!93840 List!16929)) (IdentValue!3045 (value!93841 List!16929)) (DelimiterValue!6091 (value!93842 List!16929)) (DedentValue!3045 (value!93843 List!16929)) (NewLineValue!3045 (value!93844 List!16929)) (IntegerValue!9135 (value!93845 (_ BitVec 32)) (text!21762 List!16929)) (IntegerValue!9136 (value!93846 Int) (text!21763 List!16929)) (Times!3045) (Or!3045) (Equal!3045) (Minus!3045) (Broken!15229 (value!93847 List!16929)) (And!3045) (Div!3045) (LessEqual!3045) (Mod!3045) (Concat!7328) (Not!3045) (Plus!3045) (SpaceValue!3045 (value!93848 List!16929)) (IntegerValue!9137 (value!93849 Int) (text!21764 List!16929)) (StringLiteralValue!9136 (text!21765 List!16929)) (FloatLiteralValue!6091 (text!21766 List!16929)) (BytesLiteralValue!3045 (value!93850 List!16929)) (CommentValue!6091 (value!93851 List!16929)) (StringLiteralValue!9137 (value!93852 List!16929)) (ErrorTokenValue!3045 (msg!3106 List!16929)) )
))
(declare-datatypes ((C!8744 0))(
  ( (C!8745 (val!4944 Int)) )
))
(declare-datatypes ((List!16930 0))(
  ( (Nil!16862) (Cons!16862 (h!22263 C!8744) (t!141425 List!16930)) )
))
(declare-datatypes ((IArray!11151 0))(
  ( (IArray!11152 (innerList!5633 List!16930)) )
))
(declare-datatypes ((Conc!5573 0))(
  ( (Node!5573 (left!13697 Conc!5573) (right!14027 Conc!5573) (csize!11376 Int) (cheight!5784 Int)) (Leaf!8260 (xs!8373 IArray!11151) (csize!11377 Int)) (Empty!5573) )
))
(declare-datatypes ((BalanceConc!11088 0))(
  ( (BalanceConc!11089 (c!252941 Conc!5573)) )
))
(declare-datatypes ((Regex!4283 0))(
  ( (ElementMatch!4283 (c!252942 C!8744)) (Concat!7329 (regOne!9078 Regex!4283) (regTwo!9078 Regex!4283)) (EmptyExpr!4283) (Star!4283 (reg!4612 Regex!4283)) (EmptyLang!4283) (Union!4283 (regOne!9079 Regex!4283) (regTwo!9079 Regex!4283)) )
))
(declare-datatypes ((String!19513 0))(
  ( (String!19514 (value!93853 String)) )
))
(declare-datatypes ((TokenValueInjection!5750 0))(
  ( (TokenValueInjection!5751 (toValue!4330 Int) (toChars!4189 Int)) )
))
(declare-datatypes ((Rule!5710 0))(
  ( (Rule!5711 (regex!2955 Regex!4283) (tag!3219 String!19513) (isSeparator!2955 Bool) (transformation!2955 TokenValueInjection!5750)) )
))
(declare-fun rule!240 () Rule!5710)

(declare-fun order!9953 () Int)

(declare-fun order!9951 () Int)

(declare-fun dynLambda!7491 (Int Int) Int)

(declare-fun dynLambda!7492 (Int Int) Int)

(assert (=> b!1557771 (< (dynLambda!7491 order!9951 (toValue!4330 (transformation!2955 rule!240))) (dynLambda!7492 order!9953 lambda!65941))))

(declare-fun order!9955 () Int)

(declare-fun dynLambda!7493 (Int Int) Int)

(assert (=> b!1557771 (< (dynLambda!7493 order!9955 (toChars!4189 (transformation!2955 rule!240))) (dynLambda!7492 order!9953 lambda!65941))))

(declare-datatypes ((List!16931 0))(
  ( (Nil!16863) (Cons!16863 (h!22264 Regex!4283) (t!141426 List!16931)) )
))
(declare-datatypes ((Context!1602 0))(
  ( (Context!1603 (exprs!1301 List!16931)) )
))
(declare-datatypes ((tuple2!16388 0))(
  ( (tuple2!16389 (_1!9556 Context!1602) (_2!9556 C!8744)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16390 0))(
  ( (tuple2!16391 (_1!9557 tuple2!16388) (_2!9557 (InoxSet Context!1602))) )
))
(declare-datatypes ((List!16932 0))(
  ( (Nil!16864) (Cons!16864 (h!22265 tuple2!16390) (t!141427 List!16932)) )
))
(declare-datatypes ((array!6238 0))(
  ( (array!6239 (arr!2778 (Array (_ BitVec 32) List!16932)) (size!13667 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1764 0))(
  ( (HashableExt!1763 (__x!11267 Int)) )
))
(declare-datatypes ((array!6240 0))(
  ( (array!6241 (arr!2779 (Array (_ BitVec 32) (_ BitVec 64))) (size!13668 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3640 0))(
  ( (LongMapFixedSize!3641 (defaultEntry!2180 Int) (mask!5050 (_ BitVec 32)) (extraKeys!2067 (_ BitVec 32)) (zeroValue!2077 List!16932) (minValue!2077 List!16932) (_size!3721 (_ BitVec 32)) (_keys!2114 array!6240) (_values!2099 array!6238) (_vacant!1881 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7165 0))(
  ( (Cell!7166 (v!23717 LongMapFixedSize!3640)) )
))
(declare-datatypes ((MutLongMap!1820 0))(
  ( (LongMap!1820 (underlying!3849 Cell!7165)) (MutLongMapExt!1819 (__x!11268 Int)) )
))
(declare-datatypes ((Cell!7167 0))(
  ( (Cell!7168 (v!23718 MutLongMap!1820)) )
))
(declare-datatypes ((MutableMap!1764 0))(
  ( (MutableMapExt!1763 (__x!11269 Int)) (HashMap!1764 (underlying!3850 Cell!7167) (hashF!3683 Hashable!1764) (_size!3722 (_ BitVec 32)) (defaultValue!1924 Int)) )
))
(declare-datatypes ((CacheUp!1074 0))(
  ( (CacheUp!1075 (cache!2145 MutableMap!1764)) )
))
(declare-fun cacheUp!755 () CacheUp!1074)

(declare-fun tp!457273 () Bool)

(declare-fun e!999752 () Bool)

(declare-fun tp!457263 () Bool)

(declare-fun e!999764 () Bool)

(declare-fun array_inv!1999 (array!6240) Bool)

(declare-fun array_inv!2000 (array!6238) Bool)

(assert (=> b!1557723 (= e!999752 (and tp!457276 tp!457273 tp!457263 (array_inv!1999 (_keys!2114 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) (array_inv!2000 (_values!2099 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) e!999764))))

(declare-fun b!1557724 () Bool)

(declare-fun res!695056 () Bool)

(declare-fun e!999772 () Bool)

(assert (=> b!1557724 (=> (not res!695056) (not e!999772))))

(declare-datatypes ((tuple3!1818 0))(
  ( (tuple3!1819 (_1!9558 Regex!4283) (_2!9558 Context!1602) (_3!1362 C!8744)) )
))
(declare-datatypes ((tuple2!16392 0))(
  ( (tuple2!16393 (_1!9559 tuple3!1818) (_2!9559 (InoxSet Context!1602))) )
))
(declare-datatypes ((List!16933 0))(
  ( (Nil!16865) (Cons!16865 (h!22266 tuple2!16392) (t!141428 List!16933)) )
))
(declare-datatypes ((array!6242 0))(
  ( (array!6243 (arr!2780 (Array (_ BitVec 32) List!16933)) (size!13669 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3642 0))(
  ( (LongMapFixedSize!3643 (defaultEntry!2181 Int) (mask!5051 (_ BitVec 32)) (extraKeys!2068 (_ BitVec 32)) (zeroValue!2078 List!16933) (minValue!2078 List!16933) (_size!3723 (_ BitVec 32)) (_keys!2115 array!6240) (_values!2100 array!6242) (_vacant!1882 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7169 0))(
  ( (Cell!7170 (v!23719 LongMapFixedSize!3642)) )
))
(declare-datatypes ((MutLongMap!1821 0))(
  ( (LongMap!1821 (underlying!3851 Cell!7169)) (MutLongMapExt!1820 (__x!11270 Int)) )
))
(declare-datatypes ((Cell!7171 0))(
  ( (Cell!7172 (v!23720 MutLongMap!1821)) )
))
(declare-datatypes ((Hashable!1765 0))(
  ( (HashableExt!1764 (__x!11271 Int)) )
))
(declare-datatypes ((MutableMap!1765 0))(
  ( (MutableMapExt!1764 (__x!11272 Int)) (HashMap!1765 (underlying!3852 Cell!7171) (hashF!3684 Hashable!1765) (_size!3724 (_ BitVec 32)) (defaultValue!1925 Int)) )
))
(declare-datatypes ((CacheDown!1080 0))(
  ( (CacheDown!1081 (cache!2146 MutableMap!1765)) )
))
(declare-fun cacheDown!768 () CacheDown!1080)

(declare-fun valid!1463 (CacheDown!1080) Bool)

(assert (=> b!1557724 (= res!695056 (valid!1463 cacheDown!768))))

(declare-fun b!1557725 () Bool)

(declare-fun res!695050 () Bool)

(assert (=> b!1557725 (=> (not res!695050) (not e!999772))))

(declare-datatypes ((tuple3!1820 0))(
  ( (tuple3!1821 (_1!9560 (InoxSet Context!1602)) (_2!9560 Int) (_3!1363 Int)) )
))
(declare-datatypes ((tuple2!16394 0))(
  ( (tuple2!16395 (_1!9561 tuple3!1820) (_2!9561 Int)) )
))
(declare-datatypes ((List!16934 0))(
  ( (Nil!16866) (Cons!16866 (h!22267 tuple2!16394) (t!141429 List!16934)) )
))
(declare-datatypes ((array!6244 0))(
  ( (array!6245 (arr!2781 (Array (_ BitVec 32) List!16934)) (size!13670 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3644 0))(
  ( (LongMapFixedSize!3645 (defaultEntry!2182 Int) (mask!5052 (_ BitVec 32)) (extraKeys!2069 (_ BitVec 32)) (zeroValue!2079 List!16934) (minValue!2079 List!16934) (_size!3725 (_ BitVec 32)) (_keys!2116 array!6240) (_values!2101 array!6244) (_vacant!1883 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7173 0))(
  ( (Cell!7174 (v!23721 LongMapFixedSize!3644)) )
))
(declare-datatypes ((Hashable!1766 0))(
  ( (HashableExt!1765 (__x!11273 Int)) )
))
(declare-datatypes ((MutLongMap!1822 0))(
  ( (LongMap!1822 (underlying!3853 Cell!7173)) (MutLongMapExt!1821 (__x!11274 Int)) )
))
(declare-datatypes ((Cell!7175 0))(
  ( (Cell!7176 (v!23722 MutLongMap!1822)) )
))
(declare-datatypes ((MutableMap!1766 0))(
  ( (MutableMapExt!1765 (__x!11275 Int)) (HashMap!1766 (underlying!3854 Cell!7175) (hashF!3685 Hashable!1766) (_size!3726 (_ BitVec 32)) (defaultValue!1926 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!502 0))(
  ( (CacheFurthestNullable!503 (cache!2147 MutableMap!1766) (totalInput!2478 BalanceConc!11088)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!502)

(declare-fun valid!1464 (CacheFurthestNullable!502) Bool)

(assert (=> b!1557725 (= res!695050 (valid!1464 cacheFurthestNullable!103))))

(declare-fun e!999759 () Bool)

(assert (=> b!1557726 (= e!999759 (and tp!457257 tp!457269))))

(declare-fun b!1557727 () Bool)

(declare-fun e!999746 () Bool)

(declare-fun e!999754 () Bool)

(assert (=> b!1557727 (= e!999746 e!999754)))

(declare-fun b!1557728 () Bool)

(declare-fun e!999741 () Bool)

(declare-datatypes ((tuple2!16396 0))(
  ( (tuple2!16397 (_1!9562 List!16930) (_2!9562 List!16930)) )
))
(declare-fun lt!539490 () tuple2!16396)

(declare-fun matchR!1883 (Regex!4283 List!16930) Bool)

(assert (=> b!1557728 (= e!999741 (matchR!1883 (regex!2955 rule!240) (_1!9562 lt!539490)))))

(declare-fun e!999740 () Bool)

(declare-fun e!999743 () Bool)

(declare-fun tp!457261 () Bool)

(declare-fun tp!457250 () Bool)

(declare-fun array_inv!2001 (array!6242) Bool)

(assert (=> b!1557729 (= e!999743 (and tp!457256 tp!457261 tp!457250 (array_inv!1999 (_keys!2115 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) (array_inv!2001 (_values!2100 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) e!999740))))

(declare-fun b!1557730 () Bool)

(declare-fun e!999769 () Bool)

(declare-fun e!999756 () Bool)

(assert (=> b!1557730 (= e!999769 e!999756)))

(declare-fun res!695060 () Bool)

(assert (=> b!1557730 (=> res!695060 e!999756)))

(declare-fun lt!539497 () TokenValue!3045)

(declare-fun lt!539487 () BalanceConc!11088)

(declare-fun apply!4115 (TokenValueInjection!5750 BalanceConc!11088) TokenValue!3045)

(assert (=> b!1557730 (= res!695060 (not (= (apply!4115 (transformation!2955 rule!240) lt!539487) lt!539497)))))

(declare-datatypes ((Unit!26102 0))(
  ( (Unit!26103) )
))
(declare-fun lt!539491 () Unit!26102)

(declare-datatypes ((tuple2!16398 0))(
  ( (tuple2!16399 (_1!9563 BalanceConc!11088) (_2!9563 BalanceConc!11088)) )
))
(declare-datatypes ((tuple4!906 0))(
  ( (tuple4!907 (_1!9564 tuple2!16398) (_2!9564 CacheUp!1074) (_3!1364 CacheDown!1080) (_4!453 CacheFurthestNullable!502)) )
))
(declare-fun lt!539484 () tuple4!906)

(declare-fun lemmaEqSameImage!153 (TokenValueInjection!5750 BalanceConc!11088 BalanceConc!11088) Unit!26102)

(assert (=> b!1557730 (= lt!539491 (lemmaEqSameImage!153 (transformation!2955 rule!240) (_1!9563 (_1!9564 lt!539484)) lt!539487))))

(declare-fun b!1557731 () Bool)

(declare-fun e!999766 () Bool)

(declare-fun e!999760 () Bool)

(declare-fun lt!539481 () MutLongMap!1822)

(get-info :version)

(assert (=> b!1557731 (= e!999766 (and e!999760 ((_ is LongMap!1822) lt!539481)))))

(assert (=> b!1557731 (= lt!539481 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))

(declare-fun b!1557732 () Bool)

(declare-fun e!999768 () Bool)

(declare-fun e!999753 () Bool)

(assert (=> b!1557732 (= e!999768 (not e!999753))))

(declare-fun res!695063 () Bool)

(assert (=> b!1557732 (=> res!695063 e!999753)))

(declare-fun semiInverseModEq!1118 (Int Int) Bool)

(assert (=> b!1557732 (= res!695063 (not (semiInverseModEq!1118 (toChars!4189 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240)))))))

(declare-fun lt!539486 () Unit!26102)

(declare-fun lemmaInv!432 (TokenValueInjection!5750) Unit!26102)

(assert (=> b!1557732 (= lt!539486 (lemmaInv!432 (transformation!2955 rule!240)))))

(assert (=> b!1557732 e!999741))

(declare-fun res!695058 () Bool)

(assert (=> b!1557732 (=> res!695058 e!999741)))

(declare-fun isEmpty!10136 (List!16930) Bool)

(assert (=> b!1557732 (= res!695058 (isEmpty!10136 (_1!9562 lt!539490)))))

(declare-fun lt!539492 () List!16930)

(declare-fun findLongestMatchInner!338 (Regex!4283 List!16930 Int List!16930 List!16930 Int) tuple2!16396)

(declare-fun size!13671 (List!16930) Int)

(assert (=> b!1557732 (= lt!539490 (findLongestMatchInner!338 (regex!2955 rule!240) Nil!16862 (size!13671 Nil!16862) lt!539492 lt!539492 (size!13671 lt!539492)))))

(declare-fun lt!539482 () Unit!26102)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!322 (Regex!4283 List!16930) Unit!26102)

(assert (=> b!1557732 (= lt!539482 (longestMatchIsAcceptedByMatchOrIsEmpty!322 (regex!2955 rule!240) lt!539492))))

(declare-fun b!1557733 () Bool)

(declare-fun e!999744 () Bool)

(declare-fun totalInput!568 () BalanceConc!11088)

(declare-fun tp!457272 () Bool)

(declare-fun inv!22149 (Conc!5573) Bool)

(assert (=> b!1557733 (= e!999744 (and (inv!22149 (c!252941 totalInput!568)) tp!457272))))

(declare-fun e!999750 () Bool)

(declare-fun tp!457260 () Bool)

(declare-fun tp!457266 () Bool)

(declare-fun array_inv!2002 (array!6244) Bool)

(assert (=> b!1557734 (= e!999754 (and tp!457268 tp!457260 tp!457266 (array_inv!1999 (_keys!2116 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) (array_inv!2002 (_values!2101 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) e!999750))))

(declare-fun mapIsEmpty!8469 () Bool)

(declare-fun mapRes!8469 () Bool)

(assert (=> mapIsEmpty!8469 mapRes!8469))

(declare-fun b!1557735 () Bool)

(declare-fun tp!457271 () Bool)

(assert (=> b!1557735 (= e!999764 (and tp!457271 mapRes!8469))))

(declare-fun condMapEmpty!8471 () Bool)

(declare-fun mapDefault!8470 () List!16932)

(assert (=> b!1557735 (= condMapEmpty!8471 (= (arr!2778 (_values!2099 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16932)) mapDefault!8470)))))

(declare-fun b!1557736 () Bool)

(declare-fun tp!457251 () Bool)

(declare-fun e!999739 () Bool)

(declare-fun inv!22146 (String!19513) Bool)

(declare-fun inv!22150 (TokenValueInjection!5750) Bool)

(assert (=> b!1557736 (= e!999739 (and tp!457251 (inv!22146 (tag!3219 rule!240)) (inv!22150 (transformation!2955 rule!240)) e!999759))))

(declare-fun b!1557737 () Bool)

(declare-fun res!695057 () Bool)

(assert (=> b!1557737 (=> (not res!695057) (not e!999772))))

(declare-fun valid!1465 (CacheUp!1074) Bool)

(assert (=> b!1557737 (= res!695057 (valid!1465 cacheUp!755))))

(declare-fun b!1557738 () Bool)

(declare-fun res!695062 () Bool)

(assert (=> b!1557738 (=> res!695062 e!999769)))

(declare-fun lt!539496 () List!16930)

(declare-fun list!6503 (BalanceConc!11088) List!16930)

(assert (=> b!1557738 (= res!695062 (not (= (list!6503 lt!539487) lt!539496)))))

(declare-fun mapNonEmpty!8469 () Bool)

(declare-fun tp!457265 () Bool)

(declare-fun tp!457275 () Bool)

(assert (=> mapNonEmpty!8469 (= mapRes!8469 (and tp!457265 tp!457275))))

(declare-fun mapRest!8471 () (Array (_ BitVec 32) List!16932))

(declare-fun mapKey!8470 () (_ BitVec 32))

(declare-fun mapValue!8471 () List!16932)

(assert (=> mapNonEmpty!8469 (= (arr!2778 (_values!2099 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) (store mapRest!8471 mapKey!8470 mapValue!8471))))

(declare-fun b!1557739 () Bool)

(declare-fun e!999758 () Bool)

(declare-fun e!999771 () Bool)

(assert (=> b!1557739 (= e!999758 e!999771)))

(declare-fun b!1557740 () Bool)

(declare-fun res!695049 () Bool)

(declare-fun e!999737 () Bool)

(assert (=> b!1557740 (=> (not res!695049) (not e!999737))))

(assert (=> b!1557740 (= res!695049 (= (totalInput!2478 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1557741 () Bool)

(declare-fun e!999747 () Bool)

(declare-fun tp!457259 () Bool)

(assert (=> b!1557741 (= e!999747 (and (inv!22149 (c!252941 (totalInput!2478 cacheFurthestNullable!103))) tp!457259))))

(declare-fun e!999757 () Bool)

(declare-fun e!999767 () Bool)

(declare-fun b!1557742 () Bool)

(declare-fun inv!22151 (BalanceConc!11088) Bool)

(assert (=> b!1557742 (= e!999767 (and e!999757 (inv!22151 (totalInput!2478 cacheFurthestNullable!103)) e!999747))))

(declare-fun b!1557743 () Bool)

(declare-fun e!999749 () Bool)

(assert (=> b!1557743 (= e!999749 e!999752)))

(declare-fun mapNonEmpty!8470 () Bool)

(declare-fun mapRes!8471 () Bool)

(declare-fun tp!457264 () Bool)

(declare-fun tp!457253 () Bool)

(assert (=> mapNonEmpty!8470 (= mapRes!8471 (and tp!457264 tp!457253))))

(declare-fun mapKey!8469 () (_ BitVec 32))

(declare-fun mapRest!8469 () (Array (_ BitVec 32) List!16934))

(declare-fun mapValue!8470 () List!16934)

(assert (=> mapNonEmpty!8470 (= (arr!2781 (_values!2101 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) (store mapRest!8469 mapKey!8469 mapValue!8470))))

(declare-fun b!1557744 () Bool)

(assert (=> b!1557744 (= e!999737 e!999768)))

(declare-fun res!695053 () Bool)

(assert (=> b!1557744 (=> (not res!695053) (not e!999768))))

(declare-fun isEmpty!10137 (BalanceConc!11088) Bool)

(assert (=> b!1557744 (= res!695053 (not (isEmpty!10137 (_1!9563 (_1!9564 lt!539484)))))))

(declare-fun input!1676 () BalanceConc!11088)

(declare-fun findLongestMatchWithZipperSequenceV3Mem!55 (Regex!4283 BalanceConc!11088 BalanceConc!11088 CacheUp!1074 CacheDown!1080 CacheFurthestNullable!502) tuple4!906)

(assert (=> b!1557744 (= lt!539484 (findLongestMatchWithZipperSequenceV3Mem!55 (regex!2955 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun e!999765 () Bool)

(assert (=> b!1557745 (= e!999771 (and e!999765 tp!457267))))

(declare-fun mapIsEmpty!8470 () Bool)

(declare-fun mapRes!8470 () Bool)

(assert (=> mapIsEmpty!8470 mapRes!8470))

(declare-fun b!1557746 () Bool)

(declare-fun e!999770 () Bool)

(declare-fun tp!457255 () Bool)

(assert (=> b!1557746 (= e!999770 (and (inv!22149 (c!252941 input!1676)) tp!457255))))

(declare-fun b!1557747 () Bool)

(declare-fun e!999751 () Bool)

(declare-fun e!999738 () Bool)

(assert (=> b!1557747 (= e!999751 e!999738)))

(assert (=> b!1557748 (= e!999757 (and e!999766 tp!457252))))

(declare-fun res!695051 () Bool)

(assert (=> b!1557749 (=> res!695051 e!999753)))

(declare-fun Forall!614 (Int) Bool)

(assert (=> b!1557749 (= res!695051 (not (Forall!614 lambda!65941)))))

(declare-fun e!999763 () Bool)

(assert (=> b!1557750 (= e!999738 (and e!999763 tp!457270))))

(declare-fun b!1557751 () Bool)

(assert (=> b!1557751 (= e!999772 e!999737)))

(declare-fun res!695061 () Bool)

(assert (=> b!1557751 (=> (not res!695061) (not e!999737))))

(declare-fun isSuffix!380 (List!16930 List!16930) Bool)

(assert (=> b!1557751 (= res!695061 (isSuffix!380 lt!539492 (list!6503 totalInput!568)))))

(assert (=> b!1557751 (= lt!539492 (list!6503 input!1676))))

(declare-fun b!1557752 () Bool)

(declare-fun tp!457258 () Bool)

(assert (=> b!1557752 (= e!999750 (and tp!457258 mapRes!8471))))

(declare-fun condMapEmpty!8469 () Bool)

(declare-fun mapDefault!8469 () List!16934)

(assert (=> b!1557752 (= condMapEmpty!8469 (= (arr!2781 (_values!2101 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16934)) mapDefault!8469)))))

(declare-fun b!1557753 () Bool)

(declare-fun e!999755 () Bool)

(declare-fun lt!539485 () MutLongMap!1820)

(assert (=> b!1557753 (= e!999763 (and e!999755 ((_ is LongMap!1820) lt!539485)))))

(assert (=> b!1557753 (= lt!539485 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))

(declare-fun b!1557754 () Bool)

(declare-fun e!999745 () Bool)

(declare-fun lt!539495 () MutLongMap!1821)

(assert (=> b!1557754 (= e!999765 (and e!999745 ((_ is LongMap!1821) lt!539495)))))

(assert (=> b!1557754 (= lt!539495 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))

(declare-datatypes ((Token!5486 0))(
  ( (Token!5487 (value!93854 TokenValue!3045) (rule!4740 Rule!5710) (size!13672 Int) (originalCharacters!3774 List!16930)) )
))
(declare-datatypes ((tuple2!16400 0))(
  ( (tuple2!16401 (_1!9565 Token!5486) (_2!9565 List!16930)) )
))
(declare-fun lt!539494 () tuple2!16400)

(declare-fun lt!539488 () Int)

(declare-fun b!1557755 () Bool)

(assert (=> b!1557755 (= e!999756 (or (not (= (value!93854 (_1!9565 lt!539494)) lt!539497)) (not (= (rule!4740 (_1!9565 lt!539494)) rule!240)) (not (= (size!13672 (_1!9565 lt!539494)) lt!539488)) (= (originalCharacters!3774 (_1!9565 lt!539494)) lt!539496)))))

(declare-datatypes ((Option!3047 0))(
  ( (None!3046) (Some!3046 (v!23723 tuple2!16400)) )
))
(declare-fun lt!539489 () Option!3047)

(declare-fun get!4857 (Option!3047) tuple2!16400)

(assert (=> b!1557755 (= lt!539494 (get!4857 lt!539489))))

(declare-fun b!1557756 () Bool)

(declare-fun res!695055 () Bool)

(assert (=> b!1557756 (=> (not res!695055) (not e!999772))))

(declare-datatypes ((LexerInterface!2590 0))(
  ( (LexerInterfaceExt!2587 (__x!11276 Int)) (Lexer!2588) )
))
(declare-fun thiss!16438 () LexerInterface!2590)

(declare-fun ruleValid!689 (LexerInterface!2590 Rule!5710) Bool)

(assert (=> b!1557756 (= res!695055 (ruleValid!689 thiss!16438 rule!240))))

(declare-fun b!1557757 () Bool)

(declare-fun tp!457254 () Bool)

(assert (=> b!1557757 (= e!999740 (and tp!457254 mapRes!8470))))

(declare-fun condMapEmpty!8470 () Bool)

(declare-fun mapDefault!8471 () List!16933)

(assert (=> b!1557757 (= condMapEmpty!8470 (= (arr!2780 (_values!2100 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16933)) mapDefault!8471)))))

(declare-fun b!1557758 () Bool)

(assert (=> b!1557758 (= e!999760 e!999746)))

(declare-fun b!1557759 () Bool)

(assert (=> b!1557759 (= e!999753 e!999769)))

(declare-fun res!695059 () Bool)

(assert (=> b!1557759 (=> res!695059 e!999769)))

(declare-fun lt!539493 () Bool)

(declare-fun isDefined!2449 (Option!3047) Bool)

(assert (=> b!1557759 (= res!695059 (not (= lt!539493 (isDefined!2449 lt!539489))))))

(declare-datatypes ((tuple2!16402 0))(
  ( (tuple2!16403 (_1!9566 Token!5486) (_2!9566 BalanceConc!11088)) )
))
(declare-datatypes ((Option!3048 0))(
  ( (None!3047) (Some!3047 (v!23724 tuple2!16402)) )
))
(declare-fun isDefined!2450 (Option!3048) Bool)

(assert (=> b!1557759 (= lt!539493 (isDefined!2450 (Some!3047 (tuple2!16403 (Token!5487 lt!539497 rule!240 lt!539488 lt!539496) (_2!9563 (_1!9564 lt!539484))))))))

(declare-fun maxPrefixOneRule!708 (LexerInterface!2590 Rule!5710 List!16930) Option!3047)

(assert (=> b!1557759 (= lt!539489 (maxPrefixOneRule!708 thiss!16438 rule!240 lt!539492))))

(declare-fun size!13673 (BalanceConc!11088) Int)

(assert (=> b!1557759 (= lt!539488 (size!13673 (_1!9563 (_1!9564 lt!539484))))))

(assert (=> b!1557759 (= lt!539497 (apply!4115 (transformation!2955 rule!240) (_1!9563 (_1!9564 lt!539484))))))

(declare-fun lt!539483 () Unit!26102)

(declare-fun ForallOf!216 (Int BalanceConc!11088) Unit!26102)

(assert (=> b!1557759 (= lt!539483 (ForallOf!216 lambda!65941 lt!539487))))

(declare-fun seqFromList!1779 (List!16930) BalanceConc!11088)

(assert (=> b!1557759 (= lt!539487 (seqFromList!1779 lt!539496))))

(assert (=> b!1557759 (= lt!539496 (list!6503 (_1!9563 (_1!9564 lt!539484))))))

(declare-fun lt!539498 () Unit!26102)

(assert (=> b!1557759 (= lt!539498 (ForallOf!216 lambda!65941 (_1!9563 (_1!9564 lt!539484))))))

(declare-fun mapNonEmpty!8471 () Bool)

(declare-fun tp!457274 () Bool)

(declare-fun tp!457262 () Bool)

(assert (=> mapNonEmpty!8471 (= mapRes!8470 (and tp!457274 tp!457262))))

(declare-fun mapRest!8470 () (Array (_ BitVec 32) List!16933))

(declare-fun mapKey!8471 () (_ BitVec 32))

(declare-fun mapValue!8469 () List!16933)

(assert (=> mapNonEmpty!8471 (= (arr!2780 (_values!2100 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) (store mapRest!8470 mapKey!8471 mapValue!8469))))

(declare-fun b!1557760 () Bool)

(assert (=> b!1557760 (= e!999755 e!999749)))

(declare-fun res!695052 () Bool)

(assert (=> start!144516 (=> (not res!695052) (not e!999772))))

(assert (=> start!144516 (= res!695052 ((_ is Lexer!2588) thiss!16438))))

(assert (=> start!144516 e!999772))

(assert (=> start!144516 (and (inv!22151 totalInput!568) e!999744)))

(declare-fun inv!22152 (CacheUp!1074) Bool)

(assert (=> start!144516 (and (inv!22152 cacheUp!755) e!999751)))

(declare-fun inv!22153 (CacheFurthestNullable!502) Bool)

(assert (=> start!144516 (and (inv!22153 cacheFurthestNullable!103) e!999767)))

(assert (=> start!144516 (and (inv!22151 input!1676) e!999770)))

(assert (=> start!144516 e!999739))

(declare-fun inv!22154 (CacheDown!1080) Bool)

(assert (=> start!144516 (and (inv!22154 cacheDown!768) e!999758)))

(assert (=> start!144516 true))

(declare-fun b!1557761 () Bool)

(declare-fun e!999742 () Bool)

(assert (=> b!1557761 (= e!999745 e!999742)))

(declare-fun mapIsEmpty!8471 () Bool)

(assert (=> mapIsEmpty!8471 mapRes!8471))

(declare-fun b!1557762 () Bool)

(declare-fun res!695054 () Bool)

(assert (=> b!1557762 (=> res!695054 e!999769)))

(assert (=> b!1557762 (= res!695054 (not lt!539493))))

(declare-fun b!1557763 () Bool)

(assert (=> b!1557763 (= e!999742 e!999743)))

(assert (= (and start!144516 res!695052) b!1557756))

(assert (= (and b!1557756 res!695055) b!1557737))

(assert (= (and b!1557737 res!695057) b!1557724))

(assert (= (and b!1557724 res!695056) b!1557725))

(assert (= (and b!1557725 res!695050) b!1557751))

(assert (= (and b!1557751 res!695061) b!1557740))

(assert (= (and b!1557740 res!695049) b!1557744))

(assert (= (and b!1557744 res!695053) b!1557732))

(assert (= (and b!1557732 (not res!695058)) b!1557728))

(assert (= (and b!1557732 (not res!695063)) b!1557749))

(assert (= (and b!1557749 (not res!695051)) b!1557759))

(assert (= (and b!1557759 (not res!695059)) b!1557762))

(assert (= (and b!1557762 (not res!695054)) b!1557738))

(assert (= (and b!1557738 (not res!695062)) b!1557730))

(assert (= (and b!1557730 (not res!695060)) b!1557755))

(assert (= start!144516 b!1557733))

(assert (= (and b!1557735 condMapEmpty!8471) mapIsEmpty!8469))

(assert (= (and b!1557735 (not condMapEmpty!8471)) mapNonEmpty!8469))

(assert (= b!1557723 b!1557735))

(assert (= b!1557743 b!1557723))

(assert (= b!1557760 b!1557743))

(assert (= (and b!1557753 ((_ is LongMap!1820) (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))) b!1557760))

(assert (= b!1557750 b!1557753))

(assert (= (and b!1557747 ((_ is HashMap!1764) (cache!2145 cacheUp!755))) b!1557750))

(assert (= start!144516 b!1557747))

(assert (= (and b!1557752 condMapEmpty!8469) mapIsEmpty!8471))

(assert (= (and b!1557752 (not condMapEmpty!8469)) mapNonEmpty!8470))

(assert (= b!1557734 b!1557752))

(assert (= b!1557727 b!1557734))

(assert (= b!1557758 b!1557727))

(assert (= (and b!1557731 ((_ is LongMap!1822) (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))) b!1557758))

(assert (= b!1557748 b!1557731))

(assert (= (and b!1557742 ((_ is HashMap!1766) (cache!2147 cacheFurthestNullable!103))) b!1557748))

(assert (= b!1557742 b!1557741))

(assert (= start!144516 b!1557742))

(assert (= start!144516 b!1557746))

(assert (= b!1557736 b!1557726))

(assert (= start!144516 b!1557736))

(assert (= (and b!1557757 condMapEmpty!8470) mapIsEmpty!8470))

(assert (= (and b!1557757 (not condMapEmpty!8470)) mapNonEmpty!8471))

(assert (= b!1557729 b!1557757))

(assert (= b!1557763 b!1557729))

(assert (= b!1557761 b!1557763))

(assert (= (and b!1557754 ((_ is LongMap!1821) (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))) b!1557761))

(assert (= b!1557745 b!1557754))

(assert (= (and b!1557739 ((_ is HashMap!1765) (cache!2146 cacheDown!768))) b!1557745))

(assert (= start!144516 b!1557739))

(declare-fun m!1829848 () Bool)

(assert (=> b!1557749 m!1829848))

(declare-fun m!1829850 () Bool)

(assert (=> b!1557737 m!1829850))

(declare-fun m!1829852 () Bool)

(assert (=> b!1557732 m!1829852))

(declare-fun m!1829854 () Bool)

(assert (=> b!1557732 m!1829854))

(declare-fun m!1829856 () Bool)

(assert (=> b!1557732 m!1829856))

(declare-fun m!1829858 () Bool)

(assert (=> b!1557732 m!1829858))

(declare-fun m!1829860 () Bool)

(assert (=> b!1557732 m!1829860))

(declare-fun m!1829862 () Bool)

(assert (=> b!1557732 m!1829862))

(assert (=> b!1557732 m!1829858))

(assert (=> b!1557732 m!1829856))

(declare-fun m!1829864 () Bool)

(assert (=> b!1557732 m!1829864))

(declare-fun m!1829866 () Bool)

(assert (=> b!1557724 m!1829866))

(declare-fun m!1829868 () Bool)

(assert (=> b!1557755 m!1829868))

(declare-fun m!1829870 () Bool)

(assert (=> b!1557742 m!1829870))

(declare-fun m!1829872 () Bool)

(assert (=> b!1557729 m!1829872))

(declare-fun m!1829874 () Bool)

(assert (=> b!1557729 m!1829874))

(declare-fun m!1829876 () Bool)

(assert (=> b!1557723 m!1829876))

(declare-fun m!1829878 () Bool)

(assert (=> b!1557723 m!1829878))

(declare-fun m!1829880 () Bool)

(assert (=> b!1557756 m!1829880))

(declare-fun m!1829882 () Bool)

(assert (=> b!1557733 m!1829882))

(declare-fun m!1829884 () Bool)

(assert (=> b!1557746 m!1829884))

(declare-fun m!1829886 () Bool)

(assert (=> b!1557736 m!1829886))

(declare-fun m!1829888 () Bool)

(assert (=> b!1557736 m!1829888))

(declare-fun m!1829890 () Bool)

(assert (=> mapNonEmpty!8469 m!1829890))

(declare-fun m!1829892 () Bool)

(assert (=> mapNonEmpty!8471 m!1829892))

(declare-fun m!1829894 () Bool)

(assert (=> b!1557725 m!1829894))

(declare-fun m!1829896 () Bool)

(assert (=> b!1557734 m!1829896))

(declare-fun m!1829898 () Bool)

(assert (=> b!1557734 m!1829898))

(declare-fun m!1829900 () Bool)

(assert (=> b!1557751 m!1829900))

(assert (=> b!1557751 m!1829900))

(declare-fun m!1829902 () Bool)

(assert (=> b!1557751 m!1829902))

(declare-fun m!1829904 () Bool)

(assert (=> b!1557751 m!1829904))

(declare-fun m!1829906 () Bool)

(assert (=> start!144516 m!1829906))

(declare-fun m!1829908 () Bool)

(assert (=> start!144516 m!1829908))

(declare-fun m!1829910 () Bool)

(assert (=> start!144516 m!1829910))

(declare-fun m!1829912 () Bool)

(assert (=> start!144516 m!1829912))

(declare-fun m!1829914 () Bool)

(assert (=> start!144516 m!1829914))

(declare-fun m!1829916 () Bool)

(assert (=> b!1557728 m!1829916))

(declare-fun m!1829918 () Bool)

(assert (=> mapNonEmpty!8470 m!1829918))

(declare-fun m!1829920 () Bool)

(assert (=> b!1557730 m!1829920))

(declare-fun m!1829922 () Bool)

(assert (=> b!1557730 m!1829922))

(declare-fun m!1829924 () Bool)

(assert (=> b!1557744 m!1829924))

(declare-fun m!1829926 () Bool)

(assert (=> b!1557744 m!1829926))

(declare-fun m!1829928 () Bool)

(assert (=> b!1557738 m!1829928))

(declare-fun m!1829930 () Bool)

(assert (=> b!1557759 m!1829930))

(declare-fun m!1829932 () Bool)

(assert (=> b!1557759 m!1829932))

(declare-fun m!1829934 () Bool)

(assert (=> b!1557759 m!1829934))

(declare-fun m!1829936 () Bool)

(assert (=> b!1557759 m!1829936))

(declare-fun m!1829938 () Bool)

(assert (=> b!1557759 m!1829938))

(declare-fun m!1829940 () Bool)

(assert (=> b!1557759 m!1829940))

(declare-fun m!1829942 () Bool)

(assert (=> b!1557759 m!1829942))

(declare-fun m!1829944 () Bool)

(assert (=> b!1557759 m!1829944))

(declare-fun m!1829946 () Bool)

(assert (=> b!1557759 m!1829946))

(declare-fun m!1829948 () Bool)

(assert (=> b!1557741 m!1829948))

(check-sat b_and!108707 (not b!1557724) (not mapNonEmpty!8469) (not b!1557755) (not b!1557736) (not b!1557734) (not b!1557752) (not b_next!42193) (not b!1557757) b_and!108703 (not b!1557746) (not b_next!42195) b_and!108695 (not b!1557737) b_and!108705 (not b!1557738) (not b!1557759) b_and!108697 (not b!1557723) (not b!1557733) (not b_next!42185) (not b!1557729) (not b!1557742) (not b_next!42191) (not b!1557728) (not b!1557744) (not b_next!42197) (not b!1557732) (not b!1557756) (not start!144516) b_and!108693 (not mapNonEmpty!8470) b_and!108701 b_and!108699 (not b!1557751) (not b_next!42187) (not b!1557725) (not b!1557730) (not b!1557741) (not b!1557749) (not b!1557735) (not mapNonEmpty!8471) (not b_next!42183) (not b_next!42189))
(check-sat (not b_next!42195) b_and!108707 b_and!108697 (not b_next!42185) (not b_next!42191) (not b_next!42193) (not b_next!42197) b_and!108703 b_and!108695 b_and!108705 b_and!108701 b_and!108693 (not b_next!42187) b_and!108699 (not b_next!42183) (not b_next!42189))
(get-model)

(declare-fun d!461825 () Bool)

(declare-fun dynLambda!7494 (Int BalanceConc!11088) TokenValue!3045)

(assert (=> d!461825 (= (apply!4115 (transformation!2955 rule!240) (_1!9563 (_1!9564 lt!539484))) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) (_1!9563 (_1!9564 lt!539484))))))

(declare-fun b_lambda!48951 () Bool)

(assert (=> (not b_lambda!48951) (not d!461825)))

(declare-fun t!141431 () Bool)

(declare-fun tb!87345 () Bool)

(assert (=> (and b!1557726 (= (toValue!4330 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240))) t!141431) tb!87345))

(declare-fun result!105520 () Bool)

(declare-fun inv!21 (TokenValue!3045) Bool)

(assert (=> tb!87345 (= result!105520 (inv!21 (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) (_1!9563 (_1!9564 lt!539484)))))))

(declare-fun m!1829950 () Bool)

(assert (=> tb!87345 m!1829950))

(assert (=> d!461825 t!141431))

(declare-fun b_and!108709 () Bool)

(assert (= b_and!108697 (and (=> t!141431 result!105520) b_and!108709)))

(declare-fun m!1829952 () Bool)

(assert (=> d!461825 m!1829952))

(assert (=> b!1557759 d!461825))

(declare-fun d!461827 () Bool)

(declare-fun lt!539501 () Int)

(assert (=> d!461827 (= lt!539501 (size!13671 (list!6503 (_1!9563 (_1!9564 lt!539484)))))))

(declare-fun size!13674 (Conc!5573) Int)

(assert (=> d!461827 (= lt!539501 (size!13674 (c!252941 (_1!9563 (_1!9564 lt!539484)))))))

(assert (=> d!461827 (= (size!13673 (_1!9563 (_1!9564 lt!539484))) lt!539501)))

(declare-fun bs!388775 () Bool)

(assert (= bs!388775 d!461827))

(assert (=> bs!388775 m!1829932))

(assert (=> bs!388775 m!1829932))

(declare-fun m!1829954 () Bool)

(assert (=> bs!388775 m!1829954))

(declare-fun m!1829956 () Bool)

(assert (=> bs!388775 m!1829956))

(assert (=> b!1557759 d!461827))

(declare-fun b!1557792 () Bool)

(declare-fun e!999793 () Option!3047)

(declare-fun lt!539514 () tuple2!16396)

(assert (=> b!1557792 (= e!999793 (Some!3046 (tuple2!16401 (Token!5487 (apply!4115 (transformation!2955 rule!240) (seqFromList!1779 (_1!9562 lt!539514))) rule!240 (size!13673 (seqFromList!1779 (_1!9562 lt!539514))) (_1!9562 lt!539514)) (_2!9562 lt!539514))))))

(declare-fun lt!539516 () Unit!26102)

(assert (=> b!1557792 (= lt!539516 (longestMatchIsAcceptedByMatchOrIsEmpty!322 (regex!2955 rule!240) lt!539492))))

(declare-fun res!695086 () Bool)

(assert (=> b!1557792 (= res!695086 (isEmpty!10136 (_1!9562 (findLongestMatchInner!338 (regex!2955 rule!240) Nil!16862 (size!13671 Nil!16862) lt!539492 lt!539492 (size!13671 lt!539492)))))))

(declare-fun e!999790 () Bool)

(assert (=> b!1557792 (=> res!695086 e!999790)))

(assert (=> b!1557792 e!999790))

(declare-fun lt!539512 () Unit!26102)

(assert (=> b!1557792 (= lt!539512 lt!539516)))

(declare-fun lt!539513 () Unit!26102)

(declare-fun lemmaSemiInverse!369 (TokenValueInjection!5750 BalanceConc!11088) Unit!26102)

(assert (=> b!1557792 (= lt!539513 (lemmaSemiInverse!369 (transformation!2955 rule!240) (seqFromList!1779 (_1!9562 lt!539514))))))

(declare-fun d!461829 () Bool)

(declare-fun e!999792 () Bool)

(assert (=> d!461829 e!999792))

(declare-fun res!695083 () Bool)

(assert (=> d!461829 (=> res!695083 e!999792)))

(declare-fun lt!539515 () Option!3047)

(declare-fun isEmpty!10138 (Option!3047) Bool)

(assert (=> d!461829 (= res!695083 (isEmpty!10138 lt!539515))))

(assert (=> d!461829 (= lt!539515 e!999793)))

(declare-fun c!252945 () Bool)

(assert (=> d!461829 (= c!252945 (isEmpty!10136 (_1!9562 lt!539514)))))

(declare-fun findLongestMatch!265 (Regex!4283 List!16930) tuple2!16396)

(assert (=> d!461829 (= lt!539514 (findLongestMatch!265 (regex!2955 rule!240) lt!539492))))

(assert (=> d!461829 (ruleValid!689 thiss!16438 rule!240)))

(assert (=> d!461829 (= (maxPrefixOneRule!708 thiss!16438 rule!240 lt!539492) lt!539515)))

(declare-fun b!1557793 () Bool)

(declare-fun e!999791 () Bool)

(assert (=> b!1557793 (= e!999791 (= (size!13672 (_1!9565 (get!4857 lt!539515))) (size!13671 (originalCharacters!3774 (_1!9565 (get!4857 lt!539515))))))))

(declare-fun b!1557794 () Bool)

(assert (=> b!1557794 (= e!999790 (matchR!1883 (regex!2955 rule!240) (_1!9562 (findLongestMatchInner!338 (regex!2955 rule!240) Nil!16862 (size!13671 Nil!16862) lt!539492 lt!539492 (size!13671 lt!539492)))))))

(declare-fun b!1557795 () Bool)

(declare-fun res!695084 () Bool)

(assert (=> b!1557795 (=> (not res!695084) (not e!999791))))

(declare-fun ++!4418 (List!16930 List!16930) List!16930)

(declare-fun charsOf!1650 (Token!5486) BalanceConc!11088)

(assert (=> b!1557795 (= res!695084 (= (++!4418 (list!6503 (charsOf!1650 (_1!9565 (get!4857 lt!539515)))) (_2!9565 (get!4857 lt!539515))) lt!539492))))

(declare-fun b!1557796 () Bool)

(declare-fun res!695080 () Bool)

(assert (=> b!1557796 (=> (not res!695080) (not e!999791))))

(assert (=> b!1557796 (= res!695080 (= (rule!4740 (_1!9565 (get!4857 lt!539515))) rule!240))))

(declare-fun b!1557797 () Bool)

(declare-fun res!695085 () Bool)

(assert (=> b!1557797 (=> (not res!695085) (not e!999791))))

(assert (=> b!1557797 (= res!695085 (= (value!93854 (_1!9565 (get!4857 lt!539515))) (apply!4115 (transformation!2955 (rule!4740 (_1!9565 (get!4857 lt!539515)))) (seqFromList!1779 (originalCharacters!3774 (_1!9565 (get!4857 lt!539515)))))))))

(declare-fun b!1557798 () Bool)

(assert (=> b!1557798 (= e!999792 e!999791)))

(declare-fun res!695082 () Bool)

(assert (=> b!1557798 (=> (not res!695082) (not e!999791))))

(assert (=> b!1557798 (= res!695082 (matchR!1883 (regex!2955 rule!240) (list!6503 (charsOf!1650 (_1!9565 (get!4857 lt!539515))))))))

(declare-fun b!1557799 () Bool)

(assert (=> b!1557799 (= e!999793 None!3046)))

(declare-fun b!1557800 () Bool)

(declare-fun res!695081 () Bool)

(assert (=> b!1557800 (=> (not res!695081) (not e!999791))))

(assert (=> b!1557800 (= res!695081 (< (size!13671 (_2!9565 (get!4857 lt!539515))) (size!13671 lt!539492)))))

(assert (= (and d!461829 c!252945) b!1557799))

(assert (= (and d!461829 (not c!252945)) b!1557792))

(assert (= (and b!1557792 (not res!695086)) b!1557794))

(assert (= (and d!461829 (not res!695083)) b!1557798))

(assert (= (and b!1557798 res!695082) b!1557795))

(assert (= (and b!1557795 res!695084) b!1557800))

(assert (= (and b!1557800 res!695081) b!1557796))

(assert (= (and b!1557796 res!695080) b!1557797))

(assert (= (and b!1557797 res!695085) b!1557793))

(declare-fun m!1829958 () Bool)

(assert (=> b!1557795 m!1829958))

(declare-fun m!1829960 () Bool)

(assert (=> b!1557795 m!1829960))

(assert (=> b!1557795 m!1829960))

(declare-fun m!1829962 () Bool)

(assert (=> b!1557795 m!1829962))

(assert (=> b!1557795 m!1829962))

(declare-fun m!1829964 () Bool)

(assert (=> b!1557795 m!1829964))

(assert (=> b!1557793 m!1829958))

(declare-fun m!1829966 () Bool)

(assert (=> b!1557793 m!1829966))

(declare-fun m!1829968 () Bool)

(assert (=> b!1557792 m!1829968))

(declare-fun m!1829970 () Bool)

(assert (=> b!1557792 m!1829970))

(assert (=> b!1557792 m!1829968))

(declare-fun m!1829972 () Bool)

(assert (=> b!1557792 m!1829972))

(assert (=> b!1557792 m!1829968))

(declare-fun m!1829974 () Bool)

(assert (=> b!1557792 m!1829974))

(assert (=> b!1557792 m!1829968))

(declare-fun m!1829976 () Bool)

(assert (=> b!1557792 m!1829976))

(assert (=> b!1557792 m!1829856))

(assert (=> b!1557792 m!1829858))

(assert (=> b!1557792 m!1829862))

(assert (=> b!1557792 m!1829856))

(assert (=> b!1557792 m!1829858))

(assert (=> b!1557792 m!1829860))

(assert (=> b!1557798 m!1829958))

(assert (=> b!1557798 m!1829960))

(assert (=> b!1557798 m!1829960))

(assert (=> b!1557798 m!1829962))

(assert (=> b!1557798 m!1829962))

(declare-fun m!1829978 () Bool)

(assert (=> b!1557798 m!1829978))

(assert (=> b!1557794 m!1829856))

(assert (=> b!1557794 m!1829858))

(assert (=> b!1557794 m!1829856))

(assert (=> b!1557794 m!1829858))

(assert (=> b!1557794 m!1829860))

(declare-fun m!1829980 () Bool)

(assert (=> b!1557794 m!1829980))

(assert (=> b!1557800 m!1829958))

(declare-fun m!1829982 () Bool)

(assert (=> b!1557800 m!1829982))

(assert (=> b!1557800 m!1829858))

(declare-fun m!1829984 () Bool)

(assert (=> d!461829 m!1829984))

(declare-fun m!1829986 () Bool)

(assert (=> d!461829 m!1829986))

(declare-fun m!1829988 () Bool)

(assert (=> d!461829 m!1829988))

(assert (=> d!461829 m!1829880))

(assert (=> b!1557797 m!1829958))

(declare-fun m!1829990 () Bool)

(assert (=> b!1557797 m!1829990))

(assert (=> b!1557797 m!1829990))

(declare-fun m!1829992 () Bool)

(assert (=> b!1557797 m!1829992))

(assert (=> b!1557796 m!1829958))

(assert (=> b!1557759 d!461829))

(declare-fun d!461831 () Bool)

(declare-fun fromListB!765 (List!16930) BalanceConc!11088)

(assert (=> d!461831 (= (seqFromList!1779 lt!539496) (fromListB!765 lt!539496))))

(declare-fun bs!388776 () Bool)

(assert (= bs!388776 d!461831))

(declare-fun m!1829994 () Bool)

(assert (=> bs!388776 m!1829994))

(assert (=> b!1557759 d!461831))

(declare-fun d!461833 () Bool)

(assert (=> d!461833 (= (isDefined!2449 lt!539489) (not (isEmpty!10138 lt!539489)))))

(declare-fun bs!388777 () Bool)

(assert (= bs!388777 d!461833))

(declare-fun m!1829996 () Bool)

(assert (=> bs!388777 m!1829996))

(assert (=> b!1557759 d!461833))

(declare-fun d!461835 () Bool)

(declare-fun dynLambda!7495 (Int BalanceConc!11088) Bool)

(assert (=> d!461835 (dynLambda!7495 lambda!65941 lt!539487)))

(declare-fun lt!539519 () Unit!26102)

(declare-fun choose!9297 (Int BalanceConc!11088) Unit!26102)

(assert (=> d!461835 (= lt!539519 (choose!9297 lambda!65941 lt!539487))))

(assert (=> d!461835 (Forall!614 lambda!65941)))

(assert (=> d!461835 (= (ForallOf!216 lambda!65941 lt!539487) lt!539519)))

(declare-fun b_lambda!48953 () Bool)

(assert (=> (not b_lambda!48953) (not d!461835)))

(declare-fun bs!388778 () Bool)

(assert (= bs!388778 d!461835))

(declare-fun m!1829998 () Bool)

(assert (=> bs!388778 m!1829998))

(declare-fun m!1830000 () Bool)

(assert (=> bs!388778 m!1830000))

(assert (=> bs!388778 m!1829848))

(assert (=> b!1557759 d!461835))

(declare-fun d!461837 () Bool)

(declare-fun list!6504 (Conc!5573) List!16930)

(assert (=> d!461837 (= (list!6503 (_1!9563 (_1!9564 lt!539484))) (list!6504 (c!252941 (_1!9563 (_1!9564 lt!539484)))))))

(declare-fun bs!388779 () Bool)

(assert (= bs!388779 d!461837))

(declare-fun m!1830002 () Bool)

(assert (=> bs!388779 m!1830002))

(assert (=> b!1557759 d!461837))

(declare-fun d!461839 () Bool)

(declare-fun isEmpty!10139 (Option!3048) Bool)

(assert (=> d!461839 (= (isDefined!2450 (Some!3047 (tuple2!16403 (Token!5487 lt!539497 rule!240 lt!539488 lt!539496) (_2!9563 (_1!9564 lt!539484))))) (not (isEmpty!10139 (Some!3047 (tuple2!16403 (Token!5487 lt!539497 rule!240 lt!539488 lt!539496) (_2!9563 (_1!9564 lt!539484)))))))))

(declare-fun bs!388780 () Bool)

(assert (= bs!388780 d!461839))

(declare-fun m!1830004 () Bool)

(assert (=> bs!388780 m!1830004))

(assert (=> b!1557759 d!461839))

(declare-fun d!461841 () Bool)

(assert (=> d!461841 (dynLambda!7495 lambda!65941 (_1!9563 (_1!9564 lt!539484)))))

(declare-fun lt!539520 () Unit!26102)

(assert (=> d!461841 (= lt!539520 (choose!9297 lambda!65941 (_1!9563 (_1!9564 lt!539484))))))

(assert (=> d!461841 (Forall!614 lambda!65941)))

(assert (=> d!461841 (= (ForallOf!216 lambda!65941 (_1!9563 (_1!9564 lt!539484))) lt!539520)))

(declare-fun b_lambda!48955 () Bool)

(assert (=> (not b_lambda!48955) (not d!461841)))

(declare-fun bs!388781 () Bool)

(assert (= bs!388781 d!461841))

(declare-fun m!1830006 () Bool)

(assert (=> bs!388781 m!1830006))

(declare-fun m!1830008 () Bool)

(assert (=> bs!388781 m!1830008))

(assert (=> bs!388781 m!1829848))

(assert (=> b!1557759 d!461841))

(declare-fun d!461843 () Bool)

(declare-fun choose!9298 (Int) Bool)

(assert (=> d!461843 (= (Forall!614 lambda!65941) (choose!9298 lambda!65941))))

(declare-fun bs!388782 () Bool)

(assert (= bs!388782 d!461843))

(declare-fun m!1830010 () Bool)

(assert (=> bs!388782 m!1830010))

(assert (=> b!1557749 d!461843))

(declare-fun d!461845 () Bool)

(declare-fun c!252948 () Bool)

(assert (=> d!461845 (= c!252948 ((_ is Node!5573) (c!252941 (totalInput!2478 cacheFurthestNullable!103))))))

(declare-fun e!999798 () Bool)

(assert (=> d!461845 (= (inv!22149 (c!252941 (totalInput!2478 cacheFurthestNullable!103))) e!999798)))

(declare-fun b!1557807 () Bool)

(declare-fun inv!22155 (Conc!5573) Bool)

(assert (=> b!1557807 (= e!999798 (inv!22155 (c!252941 (totalInput!2478 cacheFurthestNullable!103))))))

(declare-fun b!1557808 () Bool)

(declare-fun e!999799 () Bool)

(assert (=> b!1557808 (= e!999798 e!999799)))

(declare-fun res!695089 () Bool)

(assert (=> b!1557808 (= res!695089 (not ((_ is Leaf!8260) (c!252941 (totalInput!2478 cacheFurthestNullable!103)))))))

(assert (=> b!1557808 (=> res!695089 e!999799)))

(declare-fun b!1557809 () Bool)

(declare-fun inv!22156 (Conc!5573) Bool)

(assert (=> b!1557809 (= e!999799 (inv!22156 (c!252941 (totalInput!2478 cacheFurthestNullable!103))))))

(assert (= (and d!461845 c!252948) b!1557807))

(assert (= (and d!461845 (not c!252948)) b!1557808))

(assert (= (and b!1557808 (not res!695089)) b!1557809))

(declare-fun m!1830012 () Bool)

(assert (=> b!1557807 m!1830012))

(declare-fun m!1830014 () Bool)

(assert (=> b!1557809 m!1830014))

(assert (=> b!1557741 d!461845))

(declare-fun d!461847 () Bool)

(declare-fun lt!539523 () Int)

(assert (=> d!461847 (>= lt!539523 0)))

(declare-fun e!999802 () Int)

(assert (=> d!461847 (= lt!539523 e!999802)))

(declare-fun c!252951 () Bool)

(assert (=> d!461847 (= c!252951 ((_ is Nil!16862) lt!539492))))

(assert (=> d!461847 (= (size!13671 lt!539492) lt!539523)))

(declare-fun b!1557814 () Bool)

(assert (=> b!1557814 (= e!999802 0)))

(declare-fun b!1557815 () Bool)

(assert (=> b!1557815 (= e!999802 (+ 1 (size!13671 (t!141425 lt!539492))))))

(assert (= (and d!461847 c!252951) b!1557814))

(assert (= (and d!461847 (not c!252951)) b!1557815))

(declare-fun m!1830016 () Bool)

(assert (=> b!1557815 m!1830016))

(assert (=> b!1557732 d!461847))

(declare-fun d!461849 () Bool)

(declare-fun lt!539524 () Int)

(assert (=> d!461849 (>= lt!539524 0)))

(declare-fun e!999803 () Int)

(assert (=> d!461849 (= lt!539524 e!999803)))

(declare-fun c!252952 () Bool)

(assert (=> d!461849 (= c!252952 ((_ is Nil!16862) Nil!16862))))

(assert (=> d!461849 (= (size!13671 Nil!16862) lt!539524)))

(declare-fun b!1557816 () Bool)

(assert (=> b!1557816 (= e!999803 0)))

(declare-fun b!1557817 () Bool)

(assert (=> b!1557817 (= e!999803 (+ 1 (size!13671 (t!141425 Nil!16862))))))

(assert (= (and d!461849 c!252952) b!1557816))

(assert (= (and d!461849 (not c!252952)) b!1557817))

(declare-fun m!1830018 () Bool)

(assert (=> b!1557817 m!1830018))

(assert (=> b!1557732 d!461849))

(declare-fun d!461851 () Bool)

(assert (=> d!461851 (= (isEmpty!10136 (_1!9562 lt!539490)) ((_ is Nil!16862) (_1!9562 lt!539490)))))

(assert (=> b!1557732 d!461851))

(declare-fun b!1557846 () Bool)

(declare-fun e!999826 () tuple2!16396)

(declare-fun call!102140 () tuple2!16396)

(assert (=> b!1557846 (= e!999826 call!102140)))

(declare-fun b!1557847 () Bool)

(declare-fun e!999824 () tuple2!16396)

(declare-fun lt!539607 () tuple2!16396)

(assert (=> b!1557847 (= e!999824 lt!539607)))

(declare-fun b!1557848 () Bool)

(declare-fun e!999822 () tuple2!16396)

(declare-fun e!999827 () tuple2!16396)

(assert (=> b!1557848 (= e!999822 e!999827)))

(declare-fun c!252968 () Bool)

(assert (=> b!1557848 (= c!252968 (= (size!13671 Nil!16862) (size!13671 lt!539492)))))

(declare-fun b!1557849 () Bool)

(assert (=> b!1557849 (= e!999824 (tuple2!16397 Nil!16862 lt!539492))))

(declare-fun b!1557850 () Bool)

(declare-fun e!999821 () Bool)

(declare-fun lt!539583 () tuple2!16396)

(assert (=> b!1557850 (= e!999821 (>= (size!13671 (_1!9562 lt!539583)) (size!13671 Nil!16862)))))

(declare-fun bm!102129 () Bool)

(declare-fun call!102136 () C!8744)

(declare-fun head!3117 (List!16930) C!8744)

(assert (=> bm!102129 (= call!102136 (head!3117 lt!539492))))

(declare-fun b!1557851 () Bool)

(declare-fun e!999823 () Bool)

(assert (=> b!1557851 (= e!999823 e!999821)))

(declare-fun res!695094 () Bool)

(assert (=> b!1557851 (=> res!695094 e!999821)))

(assert (=> b!1557851 (= res!695094 (isEmpty!10136 (_1!9562 lt!539583)))))

(declare-fun b!1557852 () Bool)

(declare-fun c!252966 () Bool)

(declare-fun call!102139 () Bool)

(assert (=> b!1557852 (= c!252966 call!102139)))

(declare-fun lt!539608 () Unit!26102)

(declare-fun lt!539581 () Unit!26102)

(assert (=> b!1557852 (= lt!539608 lt!539581)))

(declare-fun lt!539602 () C!8744)

(declare-fun lt!539588 () List!16930)

(assert (=> b!1557852 (= (++!4418 (++!4418 Nil!16862 (Cons!16862 lt!539602 Nil!16862)) lt!539588) lt!539492)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!443 (List!16930 C!8744 List!16930 List!16930) Unit!26102)

(assert (=> b!1557852 (= lt!539581 (lemmaMoveElementToOtherListKeepsConcatEq!443 Nil!16862 lt!539602 lt!539588 lt!539492))))

(declare-fun tail!2212 (List!16930) List!16930)

(assert (=> b!1557852 (= lt!539588 (tail!2212 lt!539492))))

(assert (=> b!1557852 (= lt!539602 (head!3117 lt!539492))))

(declare-fun lt!539598 () Unit!26102)

(declare-fun lt!539594 () Unit!26102)

(assert (=> b!1557852 (= lt!539598 lt!539594)))

(declare-fun isPrefix!1264 (List!16930 List!16930) Bool)

(declare-fun getSuffix!674 (List!16930 List!16930) List!16930)

(assert (=> b!1557852 (isPrefix!1264 (++!4418 Nil!16862 (Cons!16862 (head!3117 (getSuffix!674 lt!539492 Nil!16862)) Nil!16862)) lt!539492)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!117 (List!16930 List!16930) Unit!26102)

(assert (=> b!1557852 (= lt!539594 (lemmaAddHeadSuffixToPrefixStillPrefix!117 Nil!16862 lt!539492))))

(declare-fun lt!539584 () Unit!26102)

(declare-fun lt!539596 () Unit!26102)

(assert (=> b!1557852 (= lt!539584 lt!539596)))

(assert (=> b!1557852 (= lt!539596 (lemmaAddHeadSuffixToPrefixStillPrefix!117 Nil!16862 lt!539492))))

(declare-fun lt!539601 () List!16930)

(assert (=> b!1557852 (= lt!539601 (++!4418 Nil!16862 (Cons!16862 (head!3117 lt!539492) Nil!16862)))))

(declare-fun lt!539597 () Unit!26102)

(declare-fun e!999820 () Unit!26102)

(assert (=> b!1557852 (= lt!539597 e!999820)))

(declare-fun c!252967 () Bool)

(assert (=> b!1557852 (= c!252967 (= (size!13671 Nil!16862) (size!13671 lt!539492)))))

(declare-fun lt!539595 () Unit!26102)

(declare-fun lt!539582 () Unit!26102)

(assert (=> b!1557852 (= lt!539595 lt!539582)))

(assert (=> b!1557852 (<= (size!13671 Nil!16862) (size!13671 lt!539492))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!118 (List!16930 List!16930) Unit!26102)

(assert (=> b!1557852 (= lt!539582 (lemmaIsPrefixThenSmallerEqSize!118 Nil!16862 lt!539492))))

(assert (=> b!1557852 (= e!999827 e!999826)))

(declare-fun b!1557853 () Bool)

(declare-fun Unit!26104 () Unit!26102)

(assert (=> b!1557853 (= e!999820 Unit!26104)))

(declare-fun d!461853 () Bool)

(assert (=> d!461853 e!999823))

(declare-fun res!695095 () Bool)

(assert (=> d!461853 (=> (not res!695095) (not e!999823))))

(assert (=> d!461853 (= res!695095 (= (++!4418 (_1!9562 lt!539583) (_2!9562 lt!539583)) lt!539492))))

(assert (=> d!461853 (= lt!539583 e!999822)))

(declare-fun c!252969 () Bool)

(declare-fun lostCause!392 (Regex!4283) Bool)

(assert (=> d!461853 (= c!252969 (lostCause!392 (regex!2955 rule!240)))))

(declare-fun lt!539591 () Unit!26102)

(declare-fun Unit!26105 () Unit!26102)

(assert (=> d!461853 (= lt!539591 Unit!26105)))

(assert (=> d!461853 (= (getSuffix!674 lt!539492 Nil!16862) lt!539492)))

(declare-fun lt!539606 () Unit!26102)

(declare-fun lt!539587 () Unit!26102)

(assert (=> d!461853 (= lt!539606 lt!539587)))

(declare-fun lt!539586 () List!16930)

(assert (=> d!461853 (= lt!539492 lt!539586)))

(declare-fun lemmaSamePrefixThenSameSuffix!626 (List!16930 List!16930 List!16930 List!16930 List!16930) Unit!26102)

(assert (=> d!461853 (= lt!539587 (lemmaSamePrefixThenSameSuffix!626 Nil!16862 lt!539492 Nil!16862 lt!539586 lt!539492))))

(assert (=> d!461853 (= lt!539586 (getSuffix!674 lt!539492 Nil!16862))))

(declare-fun lt!539604 () Unit!26102)

(declare-fun lt!539599 () Unit!26102)

(assert (=> d!461853 (= lt!539604 lt!539599)))

(assert (=> d!461853 (isPrefix!1264 Nil!16862 (++!4418 Nil!16862 lt!539492))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!789 (List!16930 List!16930) Unit!26102)

(assert (=> d!461853 (= lt!539599 (lemmaConcatTwoListThenFirstIsPrefix!789 Nil!16862 lt!539492))))

(declare-fun validRegex!1715 (Regex!4283) Bool)

(assert (=> d!461853 (validRegex!1715 (regex!2955 rule!240))))

(assert (=> d!461853 (= (findLongestMatchInner!338 (regex!2955 rule!240) Nil!16862 (size!13671 Nil!16862) lt!539492 lt!539492 (size!13671 lt!539492)) lt!539583)))

(declare-fun bm!102130 () Bool)

(declare-fun call!102141 () Unit!26102)

(declare-fun lemmaIsPrefixSameLengthThenSameList!128 (List!16930 List!16930 List!16930) Unit!26102)

(assert (=> bm!102130 (= call!102141 (lemmaIsPrefixSameLengthThenSameList!128 lt!539492 Nil!16862 lt!539492))))

(declare-fun b!1557854 () Bool)

(assert (=> b!1557854 (= e!999826 e!999824)))

(assert (=> b!1557854 (= lt!539607 call!102140)))

(declare-fun c!252970 () Bool)

(assert (=> b!1557854 (= c!252970 (isEmpty!10136 (_1!9562 lt!539607)))))

(declare-fun b!1557855 () Bool)

(declare-fun e!999825 () tuple2!16396)

(assert (=> b!1557855 (= e!999825 (tuple2!16397 Nil!16862 lt!539492))))

(declare-fun b!1557856 () Bool)

(declare-fun Unit!26106 () Unit!26102)

(assert (=> b!1557856 (= e!999820 Unit!26106)))

(declare-fun lt!539605 () Unit!26102)

(declare-fun call!102138 () Unit!26102)

(assert (=> b!1557856 (= lt!539605 call!102138)))

(declare-fun call!102137 () Bool)

(assert (=> b!1557856 call!102137))

(declare-fun lt!539593 () Unit!26102)

(assert (=> b!1557856 (= lt!539593 lt!539605)))

(declare-fun lt!539600 () Unit!26102)

(assert (=> b!1557856 (= lt!539600 call!102141)))

(assert (=> b!1557856 (= lt!539492 Nil!16862)))

(declare-fun lt!539590 () Unit!26102)

(assert (=> b!1557856 (= lt!539590 lt!539600)))

(assert (=> b!1557856 false))

(declare-fun bm!102131 () Bool)

(declare-fun lemmaIsPrefixRefl!894 (List!16930 List!16930) Unit!26102)

(assert (=> bm!102131 (= call!102138 (lemmaIsPrefixRefl!894 lt!539492 lt!539492))))

(declare-fun bm!102132 () Bool)

(declare-fun call!102134 () List!16930)

(declare-fun call!102135 () Regex!4283)

(assert (=> bm!102132 (= call!102140 (findLongestMatchInner!338 call!102135 lt!539601 (+ (size!13671 Nil!16862) 1) call!102134 lt!539492 (size!13671 lt!539492)))))

(declare-fun bm!102133 () Bool)

(declare-fun derivativeStep!1026 (Regex!4283 C!8744) Regex!4283)

(assert (=> bm!102133 (= call!102135 (derivativeStep!1026 (regex!2955 rule!240) call!102136))))

(declare-fun b!1557857 () Bool)

(assert (=> b!1557857 (= e!999825 (tuple2!16397 Nil!16862 Nil!16862))))

(declare-fun bm!102134 () Bool)

(assert (=> bm!102134 (= call!102134 (tail!2212 lt!539492))))

(declare-fun b!1557858 () Bool)

(declare-fun c!252965 () Bool)

(assert (=> b!1557858 (= c!252965 call!102139)))

(declare-fun lt!539589 () Unit!26102)

(declare-fun lt!539592 () Unit!26102)

(assert (=> b!1557858 (= lt!539589 lt!539592)))

(assert (=> b!1557858 (= lt!539492 Nil!16862)))

(assert (=> b!1557858 (= lt!539592 call!102141)))

(declare-fun lt!539585 () Unit!26102)

(declare-fun lt!539603 () Unit!26102)

(assert (=> b!1557858 (= lt!539585 lt!539603)))

(assert (=> b!1557858 call!102137))

(assert (=> b!1557858 (= lt!539603 call!102138)))

(assert (=> b!1557858 (= e!999827 e!999825)))

(declare-fun bm!102135 () Bool)

(declare-fun nullable!1274 (Regex!4283) Bool)

(assert (=> bm!102135 (= call!102139 (nullable!1274 (regex!2955 rule!240)))))

(declare-fun b!1557859 () Bool)

(assert (=> b!1557859 (= e!999822 (tuple2!16397 Nil!16862 lt!539492))))

(declare-fun bm!102136 () Bool)

(assert (=> bm!102136 (= call!102137 (isPrefix!1264 lt!539492 lt!539492))))

(assert (= (and d!461853 c!252969) b!1557859))

(assert (= (and d!461853 (not c!252969)) b!1557848))

(assert (= (and b!1557848 c!252968) b!1557858))

(assert (= (and b!1557848 (not c!252968)) b!1557852))

(assert (= (and b!1557858 c!252965) b!1557857))

(assert (= (and b!1557858 (not c!252965)) b!1557855))

(assert (= (and b!1557852 c!252967) b!1557856))

(assert (= (and b!1557852 (not c!252967)) b!1557853))

(assert (= (and b!1557852 c!252966) b!1557854))

(assert (= (and b!1557852 (not c!252966)) b!1557846))

(assert (= (and b!1557854 c!252970) b!1557849))

(assert (= (and b!1557854 (not c!252970)) b!1557847))

(assert (= (or b!1557854 b!1557846) bm!102134))

(assert (= (or b!1557854 b!1557846) bm!102129))

(assert (= (or b!1557854 b!1557846) bm!102133))

(assert (= (or b!1557854 b!1557846) bm!102132))

(assert (= (or b!1557858 b!1557856) bm!102130))

(assert (= (or b!1557858 b!1557856) bm!102131))

(assert (= (or b!1557858 b!1557852) bm!102135))

(assert (= (or b!1557858 b!1557856) bm!102136))

(assert (= (and d!461853 res!695095) b!1557851))

(assert (= (and b!1557851 (not res!695094)) b!1557850))

(declare-fun m!1830020 () Bool)

(assert (=> bm!102130 m!1830020))

(declare-fun m!1830022 () Bool)

(assert (=> d!461853 m!1830022))

(declare-fun m!1830024 () Bool)

(assert (=> d!461853 m!1830024))

(declare-fun m!1830026 () Bool)

(assert (=> d!461853 m!1830026))

(declare-fun m!1830028 () Bool)

(assert (=> d!461853 m!1830028))

(declare-fun m!1830030 () Bool)

(assert (=> d!461853 m!1830030))

(declare-fun m!1830032 () Bool)

(assert (=> d!461853 m!1830032))

(assert (=> d!461853 m!1830030))

(declare-fun m!1830034 () Bool)

(assert (=> d!461853 m!1830034))

(declare-fun m!1830036 () Bool)

(assert (=> d!461853 m!1830036))

(declare-fun m!1830038 () Bool)

(assert (=> bm!102129 m!1830038))

(declare-fun m!1830040 () Bool)

(assert (=> bm!102134 m!1830040))

(declare-fun m!1830042 () Bool)

(assert (=> b!1557854 m!1830042))

(declare-fun m!1830044 () Bool)

(assert (=> bm!102135 m!1830044))

(declare-fun m!1830046 () Bool)

(assert (=> b!1557850 m!1830046))

(assert (=> b!1557850 m!1829856))

(declare-fun m!1830048 () Bool)

(assert (=> bm!102136 m!1830048))

(assert (=> bm!102132 m!1829858))

(declare-fun m!1830050 () Bool)

(assert (=> bm!102132 m!1830050))

(assert (=> b!1557852 m!1830040))

(assert (=> b!1557852 m!1829858))

(assert (=> b!1557852 m!1830024))

(declare-fun m!1830052 () Bool)

(assert (=> b!1557852 m!1830052))

(declare-fun m!1830054 () Bool)

(assert (=> b!1557852 m!1830054))

(declare-fun m!1830056 () Bool)

(assert (=> b!1557852 m!1830056))

(assert (=> b!1557852 m!1830024))

(declare-fun m!1830058 () Bool)

(assert (=> b!1557852 m!1830058))

(declare-fun m!1830060 () Bool)

(assert (=> b!1557852 m!1830060))

(declare-fun m!1830062 () Bool)

(assert (=> b!1557852 m!1830062))

(assert (=> b!1557852 m!1830038))

(assert (=> b!1557852 m!1829856))

(declare-fun m!1830064 () Bool)

(assert (=> b!1557852 m!1830064))

(assert (=> b!1557852 m!1830058))

(declare-fun m!1830066 () Bool)

(assert (=> b!1557852 m!1830066))

(declare-fun m!1830068 () Bool)

(assert (=> b!1557852 m!1830068))

(assert (=> b!1557852 m!1830054))

(declare-fun m!1830070 () Bool)

(assert (=> b!1557851 m!1830070))

(declare-fun m!1830072 () Bool)

(assert (=> bm!102131 m!1830072))

(declare-fun m!1830074 () Bool)

(assert (=> bm!102133 m!1830074))

(assert (=> b!1557732 d!461853))

(declare-fun d!461855 () Bool)

(declare-fun e!999830 () Bool)

(assert (=> d!461855 e!999830))

(declare-fun res!695098 () Bool)

(assert (=> d!461855 (=> (not res!695098) (not e!999830))))

(assert (=> d!461855 (= res!695098 (semiInverseModEq!1118 (toChars!4189 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240))))))

(declare-fun Unit!26107 () Unit!26102)

(assert (=> d!461855 (= (lemmaInv!432 (transformation!2955 rule!240)) Unit!26107)))

(declare-fun b!1557862 () Bool)

(declare-fun equivClasses!1060 (Int Int) Bool)

(assert (=> b!1557862 (= e!999830 (equivClasses!1060 (toChars!4189 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240))))))

(assert (= (and d!461855 res!695098) b!1557862))

(assert (=> d!461855 m!1829852))

(declare-fun m!1830076 () Bool)

(assert (=> b!1557862 m!1830076))

(assert (=> b!1557732 d!461855))

(declare-fun d!461857 () Bool)

(declare-fun e!999833 () Bool)

(assert (=> d!461857 e!999833))

(declare-fun res!695101 () Bool)

(assert (=> d!461857 (=> res!695101 e!999833)))

(assert (=> d!461857 (= res!695101 (isEmpty!10136 (_1!9562 (findLongestMatchInner!338 (regex!2955 rule!240) Nil!16862 (size!13671 Nil!16862) lt!539492 lt!539492 (size!13671 lt!539492)))))))

(declare-fun lt!539611 () Unit!26102)

(declare-fun choose!9299 (Regex!4283 List!16930) Unit!26102)

(assert (=> d!461857 (= lt!539611 (choose!9299 (regex!2955 rule!240) lt!539492))))

(assert (=> d!461857 (validRegex!1715 (regex!2955 rule!240))))

(assert (=> d!461857 (= (longestMatchIsAcceptedByMatchOrIsEmpty!322 (regex!2955 rule!240) lt!539492) lt!539611)))

(declare-fun b!1557865 () Bool)

(assert (=> b!1557865 (= e!999833 (matchR!1883 (regex!2955 rule!240) (_1!9562 (findLongestMatchInner!338 (regex!2955 rule!240) Nil!16862 (size!13671 Nil!16862) lt!539492 lt!539492 (size!13671 lt!539492)))))))

(assert (= (and d!461857 (not res!695101)) b!1557865))

(assert (=> d!461857 m!1830022))

(assert (=> d!461857 m!1829856))

(assert (=> d!461857 m!1829858))

(assert (=> d!461857 m!1829860))

(assert (=> d!461857 m!1829858))

(declare-fun m!1830078 () Bool)

(assert (=> d!461857 m!1830078))

(assert (=> d!461857 m!1829856))

(assert (=> d!461857 m!1829970))

(assert (=> b!1557865 m!1829856))

(assert (=> b!1557865 m!1829858))

(assert (=> b!1557865 m!1829856))

(assert (=> b!1557865 m!1829858))

(assert (=> b!1557865 m!1829860))

(assert (=> b!1557865 m!1829980))

(assert (=> b!1557732 d!461857))

(declare-fun bs!388783 () Bool)

(declare-fun d!461859 () Bool)

(assert (= bs!388783 (and d!461859 b!1557749)))

(declare-fun lambda!65944 () Int)

(assert (=> bs!388783 (= lambda!65944 lambda!65941)))

(assert (=> d!461859 true))

(assert (=> d!461859 (< (dynLambda!7493 order!9955 (toChars!4189 (transformation!2955 rule!240))) (dynLambda!7492 order!9953 lambda!65944))))

(assert (=> d!461859 true))

(assert (=> d!461859 (< (dynLambda!7491 order!9951 (toValue!4330 (transformation!2955 rule!240))) (dynLambda!7492 order!9953 lambda!65944))))

(assert (=> d!461859 (= (semiInverseModEq!1118 (toChars!4189 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240))) (Forall!614 lambda!65944))))

(declare-fun bs!388784 () Bool)

(assert (= bs!388784 d!461859))

(declare-fun m!1830080 () Bool)

(assert (=> bs!388784 m!1830080))

(assert (=> b!1557732 d!461859))

(declare-fun d!461861 () Bool)

(declare-fun c!252971 () Bool)

(assert (=> d!461861 (= c!252971 ((_ is Node!5573) (c!252941 totalInput!568)))))

(declare-fun e!999834 () Bool)

(assert (=> d!461861 (= (inv!22149 (c!252941 totalInput!568)) e!999834)))

(declare-fun b!1557870 () Bool)

(assert (=> b!1557870 (= e!999834 (inv!22155 (c!252941 totalInput!568)))))

(declare-fun b!1557871 () Bool)

(declare-fun e!999835 () Bool)

(assert (=> b!1557871 (= e!999834 e!999835)))

(declare-fun res!695102 () Bool)

(assert (=> b!1557871 (= res!695102 (not ((_ is Leaf!8260) (c!252941 totalInput!568))))))

(assert (=> b!1557871 (=> res!695102 e!999835)))

(declare-fun b!1557872 () Bool)

(assert (=> b!1557872 (= e!999835 (inv!22156 (c!252941 totalInput!568)))))

(assert (= (and d!461861 c!252971) b!1557870))

(assert (= (and d!461861 (not c!252971)) b!1557871))

(assert (= (and b!1557871 (not res!695102)) b!1557872))

(declare-fun m!1830082 () Bool)

(assert (=> b!1557870 m!1830082))

(declare-fun m!1830084 () Bool)

(assert (=> b!1557872 m!1830084))

(assert (=> b!1557733 d!461861))

(declare-fun d!461863 () Bool)

(assert (=> d!461863 (= (list!6503 lt!539487) (list!6504 (c!252941 lt!539487)))))

(declare-fun bs!388785 () Bool)

(assert (= bs!388785 d!461863))

(declare-fun m!1830086 () Bool)

(assert (=> bs!388785 m!1830086))

(assert (=> b!1557738 d!461863))

(declare-fun bm!102139 () Bool)

(declare-fun call!102144 () Bool)

(assert (=> bm!102139 (= call!102144 (isEmpty!10136 (_1!9562 lt!539490)))))

(declare-fun b!1557901 () Bool)

(declare-fun res!695120 () Bool)

(declare-fun e!999852 () Bool)

(assert (=> b!1557901 (=> res!695120 e!999852)))

(assert (=> b!1557901 (= res!695120 (not ((_ is ElementMatch!4283) (regex!2955 rule!240))))))

(declare-fun e!999850 () Bool)

(assert (=> b!1557901 (= e!999850 e!999852)))

(declare-fun b!1557902 () Bool)

(declare-fun e!999853 () Bool)

(assert (=> b!1557902 (= e!999852 e!999853)))

(declare-fun res!695119 () Bool)

(assert (=> b!1557902 (=> (not res!695119) (not e!999853))))

(declare-fun lt!539614 () Bool)

(assert (=> b!1557902 (= res!695119 (not lt!539614))))

(declare-fun b!1557903 () Bool)

(declare-fun e!999851 () Bool)

(assert (=> b!1557903 (= e!999851 (matchR!1883 (derivativeStep!1026 (regex!2955 rule!240) (head!3117 (_1!9562 lt!539490))) (tail!2212 (_1!9562 lt!539490))))))

(declare-fun b!1557904 () Bool)

(declare-fun e!999856 () Bool)

(assert (=> b!1557904 (= e!999856 (= lt!539614 call!102144))))

(declare-fun b!1557905 () Bool)

(declare-fun e!999855 () Bool)

(assert (=> b!1557905 (= e!999853 e!999855)))

(declare-fun res!695122 () Bool)

(assert (=> b!1557905 (=> res!695122 e!999855)))

(assert (=> b!1557905 (= res!695122 call!102144)))

(declare-fun d!461865 () Bool)

(assert (=> d!461865 e!999856))

(declare-fun c!252979 () Bool)

(assert (=> d!461865 (= c!252979 ((_ is EmptyExpr!4283) (regex!2955 rule!240)))))

(assert (=> d!461865 (= lt!539614 e!999851)))

(declare-fun c!252980 () Bool)

(assert (=> d!461865 (= c!252980 (isEmpty!10136 (_1!9562 lt!539490)))))

(assert (=> d!461865 (validRegex!1715 (regex!2955 rule!240))))

(assert (=> d!461865 (= (matchR!1883 (regex!2955 rule!240) (_1!9562 lt!539490)) lt!539614)))

(declare-fun b!1557906 () Bool)

(declare-fun res!695126 () Bool)

(declare-fun e!999854 () Bool)

(assert (=> b!1557906 (=> (not res!695126) (not e!999854))))

(assert (=> b!1557906 (= res!695126 (isEmpty!10136 (tail!2212 (_1!9562 lt!539490))))))

(declare-fun b!1557907 () Bool)

(assert (=> b!1557907 (= e!999851 (nullable!1274 (regex!2955 rule!240)))))

(declare-fun b!1557908 () Bool)

(assert (=> b!1557908 (= e!999856 e!999850)))

(declare-fun c!252978 () Bool)

(assert (=> b!1557908 (= c!252978 ((_ is EmptyLang!4283) (regex!2955 rule!240)))))

(declare-fun b!1557909 () Bool)

(assert (=> b!1557909 (= e!999850 (not lt!539614))))

(declare-fun b!1557910 () Bool)

(assert (=> b!1557910 (= e!999855 (not (= (head!3117 (_1!9562 lt!539490)) (c!252942 (regex!2955 rule!240)))))))

(declare-fun b!1557911 () Bool)

(declare-fun res!695123 () Bool)

(assert (=> b!1557911 (=> res!695123 e!999852)))

(assert (=> b!1557911 (= res!695123 e!999854)))

(declare-fun res!695124 () Bool)

(assert (=> b!1557911 (=> (not res!695124) (not e!999854))))

(assert (=> b!1557911 (= res!695124 lt!539614)))

(declare-fun b!1557912 () Bool)

(declare-fun res!695121 () Bool)

(assert (=> b!1557912 (=> res!695121 e!999855)))

(assert (=> b!1557912 (= res!695121 (not (isEmpty!10136 (tail!2212 (_1!9562 lt!539490)))))))

(declare-fun b!1557913 () Bool)

(declare-fun res!695125 () Bool)

(assert (=> b!1557913 (=> (not res!695125) (not e!999854))))

(assert (=> b!1557913 (= res!695125 (not call!102144))))

(declare-fun b!1557914 () Bool)

(assert (=> b!1557914 (= e!999854 (= (head!3117 (_1!9562 lt!539490)) (c!252942 (regex!2955 rule!240))))))

(assert (= (and d!461865 c!252980) b!1557907))

(assert (= (and d!461865 (not c!252980)) b!1557903))

(assert (= (and d!461865 c!252979) b!1557904))

(assert (= (and d!461865 (not c!252979)) b!1557908))

(assert (= (and b!1557908 c!252978) b!1557909))

(assert (= (and b!1557908 (not c!252978)) b!1557901))

(assert (= (and b!1557901 (not res!695120)) b!1557911))

(assert (= (and b!1557911 res!695124) b!1557913))

(assert (= (and b!1557913 res!695125) b!1557906))

(assert (= (and b!1557906 res!695126) b!1557914))

(assert (= (and b!1557911 (not res!695123)) b!1557902))

(assert (= (and b!1557902 res!695119) b!1557905))

(assert (= (and b!1557905 (not res!695122)) b!1557912))

(assert (= (and b!1557912 (not res!695121)) b!1557910))

(assert (= (or b!1557904 b!1557905 b!1557913) bm!102139))

(declare-fun m!1830088 () Bool)

(assert (=> b!1557903 m!1830088))

(assert (=> b!1557903 m!1830088))

(declare-fun m!1830090 () Bool)

(assert (=> b!1557903 m!1830090))

(declare-fun m!1830092 () Bool)

(assert (=> b!1557903 m!1830092))

(assert (=> b!1557903 m!1830090))

(assert (=> b!1557903 m!1830092))

(declare-fun m!1830094 () Bool)

(assert (=> b!1557903 m!1830094))

(assert (=> b!1557910 m!1830088))

(assert (=> b!1557912 m!1830092))

(assert (=> b!1557912 m!1830092))

(declare-fun m!1830096 () Bool)

(assert (=> b!1557912 m!1830096))

(assert (=> b!1557906 m!1830092))

(assert (=> b!1557906 m!1830092))

(assert (=> b!1557906 m!1830096))

(assert (=> d!461865 m!1829864))

(assert (=> d!461865 m!1830022))

(assert (=> bm!102139 m!1829864))

(assert (=> b!1557914 m!1830088))

(assert (=> b!1557907 m!1830044))

(assert (=> b!1557728 d!461865))

(declare-fun d!461867 () Bool)

(declare-fun res!695131 () Bool)

(declare-fun e!999859 () Bool)

(assert (=> d!461867 (=> (not res!695131) (not e!999859))))

(assert (=> d!461867 (= res!695131 (validRegex!1715 (regex!2955 rule!240)))))

(assert (=> d!461867 (= (ruleValid!689 thiss!16438 rule!240) e!999859)))

(declare-fun b!1557919 () Bool)

(declare-fun res!695132 () Bool)

(assert (=> b!1557919 (=> (not res!695132) (not e!999859))))

(assert (=> b!1557919 (= res!695132 (not (nullable!1274 (regex!2955 rule!240))))))

(declare-fun b!1557920 () Bool)

(assert (=> b!1557920 (= e!999859 (not (= (tag!3219 rule!240) (String!19514 ""))))))

(assert (= (and d!461867 res!695131) b!1557919))

(assert (= (and b!1557919 res!695132) b!1557920))

(assert (=> d!461867 m!1830022))

(assert (=> b!1557919 m!1830044))

(assert (=> b!1557756 d!461867))

(declare-fun d!461869 () Bool)

(assert (=> d!461869 (= (array_inv!1999 (_keys!2115 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) (bvsge (size!13668 (_keys!2115 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557729 d!461869))

(declare-fun d!461871 () Bool)

(assert (=> d!461871 (= (array_inv!2001 (_values!2100 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) (bvsge (size!13669 (_values!2100 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557729 d!461871))

(declare-fun d!461873 () Bool)

(declare-fun c!252981 () Bool)

(assert (=> d!461873 (= c!252981 ((_ is Node!5573) (c!252941 input!1676)))))

(declare-fun e!999860 () Bool)

(assert (=> d!461873 (= (inv!22149 (c!252941 input!1676)) e!999860)))

(declare-fun b!1557921 () Bool)

(assert (=> b!1557921 (= e!999860 (inv!22155 (c!252941 input!1676)))))

(declare-fun b!1557922 () Bool)

(declare-fun e!999861 () Bool)

(assert (=> b!1557922 (= e!999860 e!999861)))

(declare-fun res!695133 () Bool)

(assert (=> b!1557922 (= res!695133 (not ((_ is Leaf!8260) (c!252941 input!1676))))))

(assert (=> b!1557922 (=> res!695133 e!999861)))

(declare-fun b!1557923 () Bool)

(assert (=> b!1557923 (= e!999861 (inv!22156 (c!252941 input!1676)))))

(assert (= (and d!461873 c!252981) b!1557921))

(assert (= (and d!461873 (not c!252981)) b!1557922))

(assert (= (and b!1557922 (not res!695133)) b!1557923))

(declare-fun m!1830098 () Bool)

(assert (=> b!1557921 m!1830098))

(declare-fun m!1830100 () Bool)

(assert (=> b!1557923 m!1830100))

(assert (=> b!1557746 d!461873))

(declare-fun d!461875 () Bool)

(declare-fun isBalanced!1647 (Conc!5573) Bool)

(assert (=> d!461875 (= (inv!22151 totalInput!568) (isBalanced!1647 (c!252941 totalInput!568)))))

(declare-fun bs!388786 () Bool)

(assert (= bs!388786 d!461875))

(declare-fun m!1830102 () Bool)

(assert (=> bs!388786 m!1830102))

(assert (=> start!144516 d!461875))

(declare-fun d!461877 () Bool)

(declare-fun res!695136 () Bool)

(declare-fun e!999864 () Bool)

(assert (=> d!461877 (=> (not res!695136) (not e!999864))))

(assert (=> d!461877 (= res!695136 ((_ is HashMap!1765) (cache!2146 cacheDown!768)))))

(assert (=> d!461877 (= (inv!22154 cacheDown!768) e!999864)))

(declare-fun b!1557926 () Bool)

(declare-fun validCacheMapDown!165 (MutableMap!1765) Bool)

(assert (=> b!1557926 (= e!999864 (validCacheMapDown!165 (cache!2146 cacheDown!768)))))

(assert (= (and d!461877 res!695136) b!1557926))

(declare-fun m!1830104 () Bool)

(assert (=> b!1557926 m!1830104))

(assert (=> start!144516 d!461877))

(declare-fun d!461879 () Bool)

(declare-fun res!695139 () Bool)

(declare-fun e!999867 () Bool)

(assert (=> d!461879 (=> (not res!695139) (not e!999867))))

(assert (=> d!461879 (= res!695139 ((_ is HashMap!1764) (cache!2145 cacheUp!755)))))

(assert (=> d!461879 (= (inv!22152 cacheUp!755) e!999867)))

(declare-fun b!1557929 () Bool)

(declare-fun validCacheMapUp!165 (MutableMap!1764) Bool)

(assert (=> b!1557929 (= e!999867 (validCacheMapUp!165 (cache!2145 cacheUp!755)))))

(assert (= (and d!461879 res!695139) b!1557929))

(declare-fun m!1830106 () Bool)

(assert (=> b!1557929 m!1830106))

(assert (=> start!144516 d!461879))

(declare-fun d!461881 () Bool)

(assert (=> d!461881 (= (inv!22151 input!1676) (isBalanced!1647 (c!252941 input!1676)))))

(declare-fun bs!388787 () Bool)

(assert (= bs!388787 d!461881))

(declare-fun m!1830108 () Bool)

(assert (=> bs!388787 m!1830108))

(assert (=> start!144516 d!461881))

(declare-fun d!461883 () Bool)

(declare-fun res!695142 () Bool)

(declare-fun e!999870 () Bool)

(assert (=> d!461883 (=> (not res!695142) (not e!999870))))

(assert (=> d!461883 (= res!695142 ((_ is HashMap!1766) (cache!2147 cacheFurthestNullable!103)))))

(assert (=> d!461883 (= (inv!22153 cacheFurthestNullable!103) e!999870)))

(declare-fun b!1557932 () Bool)

(declare-fun validCacheMapFurthestNullable!78 (MutableMap!1766 BalanceConc!11088) Bool)

(assert (=> b!1557932 (= e!999870 (validCacheMapFurthestNullable!78 (cache!2147 cacheFurthestNullable!103) (totalInput!2478 cacheFurthestNullable!103)))))

(assert (= (and d!461883 res!695142) b!1557932))

(declare-fun m!1830110 () Bool)

(assert (=> b!1557932 m!1830110))

(assert (=> start!144516 d!461883))

(declare-fun d!461885 () Bool)

(assert (=> d!461885 (= (apply!4115 (transformation!2955 rule!240) lt!539487) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) lt!539487))))

(declare-fun b_lambda!48957 () Bool)

(assert (=> (not b_lambda!48957) (not d!461885)))

(declare-fun t!141433 () Bool)

(declare-fun tb!87347 () Bool)

(assert (=> (and b!1557726 (= (toValue!4330 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240))) t!141433) tb!87347))

(declare-fun result!105524 () Bool)

(assert (=> tb!87347 (= result!105524 (inv!21 (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) lt!539487)))))

(declare-fun m!1830112 () Bool)

(assert (=> tb!87347 m!1830112))

(assert (=> d!461885 t!141433))

(declare-fun b_and!108711 () Bool)

(assert (= b_and!108709 (and (=> t!141433 result!105524) b_and!108711)))

(declare-fun m!1830114 () Bool)

(assert (=> d!461885 m!1830114))

(assert (=> b!1557730 d!461885))

(declare-fun b!1557939 () Bool)

(declare-fun e!999876 () Bool)

(assert (=> b!1557939 (= e!999876 true)))

(declare-fun d!461887 () Bool)

(assert (=> d!461887 e!999876))

(assert (= d!461887 b!1557939))

(declare-fun lambda!65947 () Int)

(declare-fun order!9957 () Int)

(declare-fun dynLambda!7496 (Int Int) Int)

(assert (=> b!1557939 (< (dynLambda!7491 order!9951 (toValue!4330 (transformation!2955 rule!240))) (dynLambda!7496 order!9957 lambda!65947))))

(assert (=> b!1557939 (< (dynLambda!7493 order!9955 (toChars!4189 (transformation!2955 rule!240))) (dynLambda!7496 order!9957 lambda!65947))))

(assert (=> d!461887 (= (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) (_1!9563 (_1!9564 lt!539484))) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) lt!539487))))

(declare-fun lt!539617 () Unit!26102)

(declare-fun Forall2of!45 (Int BalanceConc!11088 BalanceConc!11088) Unit!26102)

(assert (=> d!461887 (= lt!539617 (Forall2of!45 lambda!65947 (_1!9563 (_1!9564 lt!539484)) lt!539487))))

(assert (=> d!461887 (= (list!6503 (_1!9563 (_1!9564 lt!539484))) (list!6503 lt!539487))))

(assert (=> d!461887 (= (lemmaEqSameImage!153 (transformation!2955 rule!240) (_1!9563 (_1!9564 lt!539484)) lt!539487) lt!539617)))

(declare-fun b_lambda!48959 () Bool)

(assert (=> (not b_lambda!48959) (not d!461887)))

(assert (=> d!461887 t!141431))

(declare-fun b_and!108713 () Bool)

(assert (= b_and!108711 (and (=> t!141431 result!105520) b_and!108713)))

(declare-fun b_lambda!48961 () Bool)

(assert (=> (not b_lambda!48961) (not d!461887)))

(assert (=> d!461887 t!141433))

(declare-fun b_and!108715 () Bool)

(assert (= b_and!108713 (and (=> t!141433 result!105524) b_and!108715)))

(assert (=> d!461887 m!1829932))

(declare-fun m!1830116 () Bool)

(assert (=> d!461887 m!1830116))

(assert (=> d!461887 m!1830114))

(assert (=> d!461887 m!1829928))

(assert (=> d!461887 m!1829952))

(assert (=> b!1557730 d!461887))

(declare-fun d!461889 () Bool)

(declare-fun lt!539620 () Bool)

(assert (=> d!461889 (= lt!539620 (isEmpty!10136 (list!6503 (_1!9563 (_1!9564 lt!539484)))))))

(declare-fun isEmpty!10140 (Conc!5573) Bool)

(assert (=> d!461889 (= lt!539620 (isEmpty!10140 (c!252941 (_1!9563 (_1!9564 lt!539484)))))))

(assert (=> d!461889 (= (isEmpty!10137 (_1!9563 (_1!9564 lt!539484))) lt!539620)))

(declare-fun bs!388788 () Bool)

(assert (= bs!388788 d!461889))

(assert (=> bs!388788 m!1829932))

(assert (=> bs!388788 m!1829932))

(declare-fun m!1830118 () Bool)

(assert (=> bs!388788 m!1830118))

(declare-fun m!1830120 () Bool)

(assert (=> bs!388788 m!1830120))

(assert (=> b!1557744 d!461889))

(declare-fun b!1557948 () Bool)

(declare-fun res!695153 () Bool)

(declare-fun e!999879 () Bool)

(assert (=> b!1557948 (=> (not res!695153) (not e!999879))))

(declare-fun lt!539623 () tuple4!906)

(assert (=> b!1557948 (= res!695153 (valid!1463 (_3!1364 lt!539623)))))

(declare-fun b!1557951 () Bool)

(assert (=> b!1557951 (= e!999879 (= (totalInput!2478 (_4!453 lt!539623)) totalInput!568))))

(declare-fun d!461891 () Bool)

(assert (=> d!461891 e!999879))

(declare-fun res!695156 () Bool)

(assert (=> d!461891 (=> (not res!695156) (not e!999879))))

(assert (=> d!461891 (= res!695156 (= (tuple2!16397 (list!6503 (_1!9563 (_1!9564 lt!539623))) (list!6503 (_2!9563 (_1!9564 lt!539623)))) (findLongestMatch!265 (regex!2955 rule!240) (list!6503 input!1676))))))

(declare-fun choose!9300 (Regex!4283 BalanceConc!11088 BalanceConc!11088 CacheUp!1074 CacheDown!1080 CacheFurthestNullable!502) tuple4!906)

(assert (=> d!461891 (= lt!539623 (choose!9300 (regex!2955 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!461891 (validRegex!1715 (regex!2955 rule!240))))

(assert (=> d!461891 (= (findLongestMatchWithZipperSequenceV3Mem!55 (regex!2955 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!539623)))

(declare-fun b!1557950 () Bool)

(declare-fun res!695155 () Bool)

(assert (=> b!1557950 (=> (not res!695155) (not e!999879))))

(assert (=> b!1557950 (= res!695155 (valid!1464 (_4!453 lt!539623)))))

(declare-fun b!1557949 () Bool)

(declare-fun res!695154 () Bool)

(assert (=> b!1557949 (=> (not res!695154) (not e!999879))))

(assert (=> b!1557949 (= res!695154 (valid!1465 (_2!9564 lt!539623)))))

(assert (= (and d!461891 res!695156) b!1557948))

(assert (= (and b!1557948 res!695153) b!1557949))

(assert (= (and b!1557949 res!695154) b!1557950))

(assert (= (and b!1557950 res!695155) b!1557951))

(declare-fun m!1830122 () Bool)

(assert (=> b!1557948 m!1830122))

(assert (=> d!461891 m!1829904))

(declare-fun m!1830124 () Bool)

(assert (=> d!461891 m!1830124))

(assert (=> d!461891 m!1830022))

(declare-fun m!1830126 () Bool)

(assert (=> d!461891 m!1830126))

(assert (=> d!461891 m!1829904))

(declare-fun m!1830128 () Bool)

(assert (=> d!461891 m!1830128))

(declare-fun m!1830130 () Bool)

(assert (=> d!461891 m!1830130))

(declare-fun m!1830132 () Bool)

(assert (=> b!1557950 m!1830132))

(declare-fun m!1830134 () Bool)

(assert (=> b!1557949 m!1830134))

(assert (=> b!1557744 d!461891))

(declare-fun d!461893 () Bool)

(assert (=> d!461893 (= (inv!22146 (tag!3219 rule!240)) (= (mod (str.len (value!93853 (tag!3219 rule!240))) 2) 0))))

(assert (=> b!1557736 d!461893))

(declare-fun d!461895 () Bool)

(declare-fun res!695159 () Bool)

(declare-fun e!999882 () Bool)

(assert (=> d!461895 (=> (not res!695159) (not e!999882))))

(assert (=> d!461895 (= res!695159 (semiInverseModEq!1118 (toChars!4189 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240))))))

(assert (=> d!461895 (= (inv!22150 (transformation!2955 rule!240)) e!999882)))

(declare-fun b!1557954 () Bool)

(assert (=> b!1557954 (= e!999882 (equivClasses!1060 (toChars!4189 (transformation!2955 rule!240)) (toValue!4330 (transformation!2955 rule!240))))))

(assert (= (and d!461895 res!695159) b!1557954))

(assert (=> d!461895 m!1829852))

(assert (=> b!1557954 m!1830076))

(assert (=> b!1557736 d!461895))

(declare-fun d!461897 () Bool)

(assert (=> d!461897 (= (get!4857 lt!539489) (v!23723 lt!539489))))

(assert (=> b!1557755 d!461897))

(declare-fun d!461899 () Bool)

(assert (=> d!461899 (= (valid!1465 cacheUp!755) (validCacheMapUp!165 (cache!2145 cacheUp!755)))))

(declare-fun bs!388789 () Bool)

(assert (= bs!388789 d!461899))

(assert (=> bs!388789 m!1830106))

(assert (=> b!1557737 d!461899))

(declare-fun d!461901 () Bool)

(assert (=> d!461901 (= (array_inv!1999 (_keys!2114 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) (bvsge (size!13668 (_keys!2114 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557723 d!461901))

(declare-fun d!461903 () Bool)

(assert (=> d!461903 (= (array_inv!2000 (_values!2099 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) (bvsge (size!13667 (_values!2099 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557723 d!461903))

(declare-fun d!461905 () Bool)

(declare-fun e!999885 () Bool)

(assert (=> d!461905 e!999885))

(declare-fun res!695162 () Bool)

(assert (=> d!461905 (=> res!695162 e!999885)))

(declare-fun lt!539626 () Bool)

(assert (=> d!461905 (= res!695162 (not lt!539626))))

(declare-fun drop!789 (List!16930 Int) List!16930)

(assert (=> d!461905 (= lt!539626 (= lt!539492 (drop!789 (list!6503 totalInput!568) (- (size!13671 (list!6503 totalInput!568)) (size!13671 lt!539492)))))))

(assert (=> d!461905 (= (isSuffix!380 lt!539492 (list!6503 totalInput!568)) lt!539626)))

(declare-fun b!1557957 () Bool)

(assert (=> b!1557957 (= e!999885 (>= (size!13671 (list!6503 totalInput!568)) (size!13671 lt!539492)))))

(assert (= (and d!461905 (not res!695162)) b!1557957))

(assert (=> d!461905 m!1829900))

(declare-fun m!1830136 () Bool)

(assert (=> d!461905 m!1830136))

(assert (=> d!461905 m!1829858))

(assert (=> d!461905 m!1829900))

(declare-fun m!1830138 () Bool)

(assert (=> d!461905 m!1830138))

(assert (=> b!1557957 m!1829900))

(assert (=> b!1557957 m!1830136))

(assert (=> b!1557957 m!1829858))

(assert (=> b!1557751 d!461905))

(declare-fun d!461907 () Bool)

(assert (=> d!461907 (= (list!6503 totalInput!568) (list!6504 (c!252941 totalInput!568)))))

(declare-fun bs!388790 () Bool)

(assert (= bs!388790 d!461907))

(declare-fun m!1830140 () Bool)

(assert (=> bs!388790 m!1830140))

(assert (=> b!1557751 d!461907))

(declare-fun d!461909 () Bool)

(assert (=> d!461909 (= (list!6503 input!1676) (list!6504 (c!252941 input!1676)))))

(declare-fun bs!388791 () Bool)

(assert (= bs!388791 d!461909))

(declare-fun m!1830142 () Bool)

(assert (=> bs!388791 m!1830142))

(assert (=> b!1557751 d!461909))

(declare-fun d!461911 () Bool)

(assert (=> d!461911 (= (inv!22151 (totalInput!2478 cacheFurthestNullable!103)) (isBalanced!1647 (c!252941 (totalInput!2478 cacheFurthestNullable!103))))))

(declare-fun bs!388792 () Bool)

(assert (= bs!388792 d!461911))

(declare-fun m!1830144 () Bool)

(assert (=> bs!388792 m!1830144))

(assert (=> b!1557742 d!461911))

(declare-fun d!461913 () Bool)

(assert (=> d!461913 (= (array_inv!1999 (_keys!2116 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) (bvsge (size!13668 (_keys!2116 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557734 d!461913))

(declare-fun d!461915 () Bool)

(assert (=> d!461915 (= (array_inv!2002 (_values!2101 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) (bvsge (size!13670 (_values!2101 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557734 d!461915))

(declare-fun d!461917 () Bool)

(assert (=> d!461917 (= (valid!1463 cacheDown!768) (validCacheMapDown!165 (cache!2146 cacheDown!768)))))

(declare-fun bs!388793 () Bool)

(assert (= bs!388793 d!461917))

(assert (=> bs!388793 m!1830104))

(assert (=> b!1557724 d!461917))

(declare-fun d!461919 () Bool)

(assert (=> d!461919 (= (valid!1464 cacheFurthestNullable!103) (validCacheMapFurthestNullable!78 (cache!2147 cacheFurthestNullable!103) (totalInput!2478 cacheFurthestNullable!103)))))

(declare-fun bs!388794 () Bool)

(assert (= bs!388794 d!461919))

(assert (=> bs!388794 m!1830110))

(assert (=> b!1557725 d!461919))

(declare-fun tp!457285 () Bool)

(declare-fun tp!457283 () Bool)

(declare-fun e!999891 () Bool)

(declare-fun b!1557966 () Bool)

(assert (=> b!1557966 (= e!999891 (and (inv!22149 (left!13697 (c!252941 (totalInput!2478 cacheFurthestNullable!103)))) tp!457283 (inv!22149 (right!14027 (c!252941 (totalInput!2478 cacheFurthestNullable!103)))) tp!457285))))

(declare-fun b!1557968 () Bool)

(declare-fun e!999890 () Bool)

(declare-fun tp!457284 () Bool)

(assert (=> b!1557968 (= e!999890 tp!457284)))

(declare-fun b!1557967 () Bool)

(declare-fun inv!22157 (IArray!11151) Bool)

(assert (=> b!1557967 (= e!999891 (and (inv!22157 (xs!8373 (c!252941 (totalInput!2478 cacheFurthestNullable!103)))) e!999890))))

(assert (=> b!1557741 (= tp!457259 (and (inv!22149 (c!252941 (totalInput!2478 cacheFurthestNullable!103))) e!999891))))

(assert (= (and b!1557741 ((_ is Node!5573) (c!252941 (totalInput!2478 cacheFurthestNullable!103)))) b!1557966))

(assert (= b!1557967 b!1557968))

(assert (= (and b!1557741 ((_ is Leaf!8260) (c!252941 (totalInput!2478 cacheFurthestNullable!103)))) b!1557967))

(declare-fun m!1830146 () Bool)

(assert (=> b!1557966 m!1830146))

(declare-fun m!1830148 () Bool)

(assert (=> b!1557966 m!1830148))

(declare-fun m!1830150 () Bool)

(assert (=> b!1557967 m!1830150))

(assert (=> b!1557741 m!1829948))

(declare-fun b!1557983 () Bool)

(declare-fun e!999907 () Bool)

(declare-fun tp!457317 () Bool)

(assert (=> b!1557983 (= e!999907 tp!457317)))

(declare-fun mapNonEmpty!8474 () Bool)

(declare-fun mapRes!8474 () Bool)

(declare-fun tp!457311 () Bool)

(declare-fun e!999909 () Bool)

(assert (=> mapNonEmpty!8474 (= mapRes!8474 (and tp!457311 e!999909))))

(declare-fun mapKey!8474 () (_ BitVec 32))

(declare-fun mapValue!8474 () List!16933)

(declare-fun mapRest!8474 () (Array (_ BitVec 32) List!16933))

(assert (=> mapNonEmpty!8474 (= mapRest!8470 (store mapRest!8474 mapKey!8474 mapValue!8474))))

(declare-fun b!1557984 () Bool)

(declare-fun e!999906 () Bool)

(declare-fun tp!457318 () Bool)

(assert (=> b!1557984 (= e!999906 tp!457318)))

(declare-fun b!1557985 () Bool)

(declare-fun e!999904 () Bool)

(declare-fun tp!457316 () Bool)

(assert (=> b!1557985 (= e!999904 tp!457316)))

(declare-fun tp!457308 () Bool)

(declare-fun setRes!10991 () Bool)

(declare-fun b!1557986 () Bool)

(declare-fun tp_is_empty!7075 () Bool)

(declare-fun tp!457309 () Bool)

(declare-fun inv!22158 (Context!1602) Bool)

(assert (=> b!1557986 (= e!999909 (and tp!457308 (inv!22158 (_2!9558 (_1!9559 (h!22266 mapValue!8474)))) e!999907 tp_is_empty!7075 setRes!10991 tp!457309))))

(declare-fun condSetEmpty!10990 () Bool)

(assert (=> b!1557986 (= condSetEmpty!10990 (= (_2!9559 (h!22266 mapValue!8474)) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun setIsEmpty!10990 () Bool)

(declare-fun setRes!10990 () Bool)

(assert (=> setIsEmpty!10990 setRes!10990))

(declare-fun b!1557987 () Bool)

(declare-fun e!999908 () Bool)

(declare-fun tp!457310 () Bool)

(assert (=> b!1557987 (= e!999908 tp!457310)))

(declare-fun setElem!10990 () Context!1602)

(declare-fun setNonEmpty!10990 () Bool)

(declare-fun tp!457312 () Bool)

(assert (=> setNonEmpty!10990 (= setRes!10990 (and tp!457312 (inv!22158 setElem!10990) e!999906))))

(declare-fun mapDefault!8474 () List!16933)

(declare-fun setRest!10990 () (InoxSet Context!1602))

(assert (=> setNonEmpty!10990 (= (_2!9559 (h!22266 mapDefault!8474)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!10990 true) setRest!10990))))

(declare-fun setNonEmpty!10991 () Bool)

(declare-fun tp!457313 () Bool)

(declare-fun setElem!10991 () Context!1602)

(assert (=> setNonEmpty!10991 (= setRes!10991 (and tp!457313 (inv!22158 setElem!10991) e!999904))))

(declare-fun setRest!10991 () (InoxSet Context!1602))

(assert (=> setNonEmpty!10991 (= (_2!9559 (h!22266 mapValue!8474)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!10991 true) setRest!10991))))

(declare-fun setIsEmpty!10991 () Bool)

(assert (=> setIsEmpty!10991 setRes!10991))

(declare-fun mapIsEmpty!8474 () Bool)

(assert (=> mapIsEmpty!8474 mapRes!8474))

(declare-fun tp!457315 () Bool)

(declare-fun e!999905 () Bool)

(declare-fun tp!457314 () Bool)

(declare-fun b!1557988 () Bool)

(assert (=> b!1557988 (= e!999905 (and tp!457315 (inv!22158 (_2!9558 (_1!9559 (h!22266 mapDefault!8474)))) e!999908 tp_is_empty!7075 setRes!10990 tp!457314))))

(declare-fun condSetEmpty!10991 () Bool)

(assert (=> b!1557988 (= condSetEmpty!10991 (= (_2!9559 (h!22266 mapDefault!8474)) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun condMapEmpty!8474 () Bool)

(assert (=> mapNonEmpty!8471 (= condMapEmpty!8474 (= mapRest!8470 ((as const (Array (_ BitVec 32) List!16933)) mapDefault!8474)))))

(assert (=> mapNonEmpty!8471 (= tp!457274 (and e!999905 mapRes!8474))))

(assert (= (and mapNonEmpty!8471 condMapEmpty!8474) mapIsEmpty!8474))

(assert (= (and mapNonEmpty!8471 (not condMapEmpty!8474)) mapNonEmpty!8474))

(assert (= b!1557986 b!1557983))

(assert (= (and b!1557986 condSetEmpty!10990) setIsEmpty!10991))

(assert (= (and b!1557986 (not condSetEmpty!10990)) setNonEmpty!10991))

(assert (= setNonEmpty!10991 b!1557985))

(assert (= (and mapNonEmpty!8474 ((_ is Cons!16865) mapValue!8474)) b!1557986))

(assert (= b!1557988 b!1557987))

(assert (= (and b!1557988 condSetEmpty!10991) setIsEmpty!10990))

(assert (= (and b!1557988 (not condSetEmpty!10991)) setNonEmpty!10990))

(assert (= setNonEmpty!10990 b!1557984))

(assert (= (and mapNonEmpty!8471 ((_ is Cons!16865) mapDefault!8474)) b!1557988))

(declare-fun m!1830152 () Bool)

(assert (=> b!1557986 m!1830152))

(declare-fun m!1830154 () Bool)

(assert (=> setNonEmpty!10991 m!1830154))

(declare-fun m!1830156 () Bool)

(assert (=> mapNonEmpty!8474 m!1830156))

(declare-fun m!1830158 () Bool)

(assert (=> b!1557988 m!1830158))

(declare-fun m!1830160 () Bool)

(assert (=> setNonEmpty!10990 m!1830160))

(declare-fun setIsEmpty!10994 () Bool)

(declare-fun setRes!10994 () Bool)

(assert (=> setIsEmpty!10994 setRes!10994))

(declare-fun b!1557997 () Bool)

(declare-fun e!999916 () Bool)

(declare-fun tp!457330 () Bool)

(assert (=> b!1557997 (= e!999916 tp!457330)))

(declare-fun e!999917 () Bool)

(assert (=> mapNonEmpty!8471 (= tp!457262 e!999917)))

(declare-fun e!999918 () Bool)

(declare-fun tp!457333 () Bool)

(declare-fun setNonEmpty!10994 () Bool)

(declare-fun setElem!10994 () Context!1602)

(assert (=> setNonEmpty!10994 (= setRes!10994 (and tp!457333 (inv!22158 setElem!10994) e!999918))))

(declare-fun setRest!10994 () (InoxSet Context!1602))

(assert (=> setNonEmpty!10994 (= (_2!9559 (h!22266 mapValue!8469)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!10994 true) setRest!10994))))

(declare-fun b!1557998 () Bool)

(declare-fun tp!457332 () Bool)

(assert (=> b!1557998 (= e!999918 tp!457332)))

(declare-fun tp!457329 () Bool)

(declare-fun tp!457331 () Bool)

(declare-fun b!1557999 () Bool)

(assert (=> b!1557999 (= e!999917 (and tp!457329 (inv!22158 (_2!9558 (_1!9559 (h!22266 mapValue!8469)))) e!999916 tp_is_empty!7075 setRes!10994 tp!457331))))

(declare-fun condSetEmpty!10994 () Bool)

(assert (=> b!1557999 (= condSetEmpty!10994 (= (_2!9559 (h!22266 mapValue!8469)) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1557999 b!1557997))

(assert (= (and b!1557999 condSetEmpty!10994) setIsEmpty!10994))

(assert (= (and b!1557999 (not condSetEmpty!10994)) setNonEmpty!10994))

(assert (= setNonEmpty!10994 b!1557998))

(assert (= (and mapNonEmpty!8471 ((_ is Cons!16865) mapValue!8469)) b!1557999))

(declare-fun m!1830162 () Bool)

(assert (=> setNonEmpty!10994 m!1830162))

(declare-fun m!1830164 () Bool)

(assert (=> b!1557999 m!1830164))

(declare-fun tp!457336 () Bool)

(declare-fun e!999920 () Bool)

(declare-fun tp!457334 () Bool)

(declare-fun b!1558000 () Bool)

(assert (=> b!1558000 (= e!999920 (and (inv!22149 (left!13697 (c!252941 totalInput!568))) tp!457334 (inv!22149 (right!14027 (c!252941 totalInput!568))) tp!457336))))

(declare-fun b!1558002 () Bool)

(declare-fun e!999919 () Bool)

(declare-fun tp!457335 () Bool)

(assert (=> b!1558002 (= e!999919 tp!457335)))

(declare-fun b!1558001 () Bool)

(assert (=> b!1558001 (= e!999920 (and (inv!22157 (xs!8373 (c!252941 totalInput!568))) e!999919))))

(assert (=> b!1557733 (= tp!457272 (and (inv!22149 (c!252941 totalInput!568)) e!999920))))

(assert (= (and b!1557733 ((_ is Node!5573) (c!252941 totalInput!568))) b!1558000))

(assert (= b!1558001 b!1558002))

(assert (= (and b!1557733 ((_ is Leaf!8260) (c!252941 totalInput!568))) b!1558001))

(declare-fun m!1830166 () Bool)

(assert (=> b!1558000 m!1830166))

(declare-fun m!1830168 () Bool)

(assert (=> b!1558000 m!1830168))

(declare-fun m!1830170 () Bool)

(assert (=> b!1558001 m!1830170))

(assert (=> b!1557733 m!1829882))

(declare-fun setIsEmpty!10995 () Bool)

(declare-fun setRes!10995 () Bool)

(assert (=> setIsEmpty!10995 setRes!10995))

(declare-fun b!1558003 () Bool)

(declare-fun e!999921 () Bool)

(declare-fun tp!457338 () Bool)

(assert (=> b!1558003 (= e!999921 tp!457338)))

(declare-fun e!999922 () Bool)

(assert (=> b!1557729 (= tp!457261 e!999922)))

(declare-fun setElem!10995 () Context!1602)

(declare-fun setNonEmpty!10995 () Bool)

(declare-fun e!999923 () Bool)

(declare-fun tp!457341 () Bool)

(assert (=> setNonEmpty!10995 (= setRes!10995 (and tp!457341 (inv!22158 setElem!10995) e!999923))))

(declare-fun setRest!10995 () (InoxSet Context!1602))

(assert (=> setNonEmpty!10995 (= (_2!9559 (h!22266 (zeroValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!10995 true) setRest!10995))))

(declare-fun b!1558004 () Bool)

(declare-fun tp!457340 () Bool)

(assert (=> b!1558004 (= e!999923 tp!457340)))

(declare-fun tp!457337 () Bool)

(declare-fun b!1558005 () Bool)

(declare-fun tp!457339 () Bool)

(assert (=> b!1558005 (= e!999922 (and tp!457337 (inv!22158 (_2!9558 (_1!9559 (h!22266 (zeroValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))))) e!999921 tp_is_empty!7075 setRes!10995 tp!457339))))

(declare-fun condSetEmpty!10995 () Bool)

(assert (=> b!1558005 (= condSetEmpty!10995 (= (_2!9559 (h!22266 (zeroValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1558005 b!1558003))

(assert (= (and b!1558005 condSetEmpty!10995) setIsEmpty!10995))

(assert (= (and b!1558005 (not condSetEmpty!10995)) setNonEmpty!10995))

(assert (= setNonEmpty!10995 b!1558004))

(assert (= (and b!1557729 ((_ is Cons!16865) (zeroValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))) b!1558005))

(declare-fun m!1830172 () Bool)

(assert (=> setNonEmpty!10995 m!1830172))

(declare-fun m!1830174 () Bool)

(assert (=> b!1558005 m!1830174))

(declare-fun setIsEmpty!10996 () Bool)

(declare-fun setRes!10996 () Bool)

(assert (=> setIsEmpty!10996 setRes!10996))

(declare-fun b!1558006 () Bool)

(declare-fun e!999924 () Bool)

(declare-fun tp!457343 () Bool)

(assert (=> b!1558006 (= e!999924 tp!457343)))

(declare-fun e!999925 () Bool)

(assert (=> b!1557729 (= tp!457250 e!999925)))

(declare-fun setNonEmpty!10996 () Bool)

(declare-fun tp!457346 () Bool)

(declare-fun e!999926 () Bool)

(declare-fun setElem!10996 () Context!1602)

(assert (=> setNonEmpty!10996 (= setRes!10996 (and tp!457346 (inv!22158 setElem!10996) e!999926))))

(declare-fun setRest!10996 () (InoxSet Context!1602))

(assert (=> setNonEmpty!10996 (= (_2!9559 (h!22266 (minValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!10996 true) setRest!10996))))

(declare-fun b!1558007 () Bool)

(declare-fun tp!457345 () Bool)

(assert (=> b!1558007 (= e!999926 tp!457345)))

(declare-fun b!1558008 () Bool)

(declare-fun tp!457344 () Bool)

(declare-fun tp!457342 () Bool)

(assert (=> b!1558008 (= e!999925 (and tp!457342 (inv!22158 (_2!9558 (_1!9559 (h!22266 (minValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))))) e!999924 tp_is_empty!7075 setRes!10996 tp!457344))))

(declare-fun condSetEmpty!10996 () Bool)

(assert (=> b!1558008 (= condSetEmpty!10996 (= (_2!9559 (h!22266 (minValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1558008 b!1558006))

(assert (= (and b!1558008 condSetEmpty!10996) setIsEmpty!10996))

(assert (= (and b!1558008 (not condSetEmpty!10996)) setNonEmpty!10996))

(assert (= setNonEmpty!10996 b!1558007))

(assert (= (and b!1557729 ((_ is Cons!16865) (minValue!2078 (v!23719 (underlying!3851 (v!23720 (underlying!3852 (cache!2146 cacheDown!768)))))))) b!1558008))

(declare-fun m!1830176 () Bool)

(assert (=> setNonEmpty!10996 m!1830176))

(declare-fun m!1830178 () Bool)

(assert (=> b!1558008 m!1830178))

(declare-fun setIsEmpty!10997 () Bool)

(declare-fun setRes!10997 () Bool)

(assert (=> setIsEmpty!10997 setRes!10997))

(declare-fun b!1558009 () Bool)

(declare-fun e!999927 () Bool)

(declare-fun tp!457348 () Bool)

(assert (=> b!1558009 (= e!999927 tp!457348)))

(declare-fun e!999928 () Bool)

(assert (=> b!1557757 (= tp!457254 e!999928)))

(declare-fun setElem!10997 () Context!1602)

(declare-fun tp!457351 () Bool)

(declare-fun setNonEmpty!10997 () Bool)

(declare-fun e!999929 () Bool)

(assert (=> setNonEmpty!10997 (= setRes!10997 (and tp!457351 (inv!22158 setElem!10997) e!999929))))

(declare-fun setRest!10997 () (InoxSet Context!1602))

(assert (=> setNonEmpty!10997 (= (_2!9559 (h!22266 mapDefault!8471)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!10997 true) setRest!10997))))

(declare-fun b!1558010 () Bool)

(declare-fun tp!457350 () Bool)

(assert (=> b!1558010 (= e!999929 tp!457350)))

(declare-fun b!1558011 () Bool)

(declare-fun tp!457347 () Bool)

(declare-fun tp!457349 () Bool)

(assert (=> b!1558011 (= e!999928 (and tp!457347 (inv!22158 (_2!9558 (_1!9559 (h!22266 mapDefault!8471)))) e!999927 tp_is_empty!7075 setRes!10997 tp!457349))))

(declare-fun condSetEmpty!10997 () Bool)

(assert (=> b!1558011 (= condSetEmpty!10997 (= (_2!9559 (h!22266 mapDefault!8471)) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1558011 b!1558009))

(assert (= (and b!1558011 condSetEmpty!10997) setIsEmpty!10997))

(assert (= (and b!1558011 (not condSetEmpty!10997)) setNonEmpty!10997))

(assert (= setNonEmpty!10997 b!1558010))

(assert (= (and b!1557757 ((_ is Cons!16865) mapDefault!8471)) b!1558011))

(declare-fun m!1830180 () Bool)

(assert (=> setNonEmpty!10997 m!1830180))

(declare-fun m!1830182 () Bool)

(assert (=> b!1558011 m!1830182))

(declare-fun tp!457354 () Bool)

(declare-fun e!999931 () Bool)

(declare-fun b!1558012 () Bool)

(declare-fun tp!457352 () Bool)

(assert (=> b!1558012 (= e!999931 (and (inv!22149 (left!13697 (c!252941 input!1676))) tp!457352 (inv!22149 (right!14027 (c!252941 input!1676))) tp!457354))))

(declare-fun b!1558014 () Bool)

(declare-fun e!999930 () Bool)

(declare-fun tp!457353 () Bool)

(assert (=> b!1558014 (= e!999930 tp!457353)))

(declare-fun b!1558013 () Bool)

(assert (=> b!1558013 (= e!999931 (and (inv!22157 (xs!8373 (c!252941 input!1676))) e!999930))))

(assert (=> b!1557746 (= tp!457255 (and (inv!22149 (c!252941 input!1676)) e!999931))))

(assert (= (and b!1557746 ((_ is Node!5573) (c!252941 input!1676))) b!1558012))

(assert (= b!1558013 b!1558014))

(assert (= (and b!1557746 ((_ is Leaf!8260) (c!252941 input!1676))) b!1558013))

(declare-fun m!1830184 () Bool)

(assert (=> b!1558012 m!1830184))

(declare-fun m!1830186 () Bool)

(assert (=> b!1558012 m!1830186))

(declare-fun m!1830188 () Bool)

(assert (=> b!1558013 m!1830188))

(assert (=> b!1557746 m!1829884))

(declare-fun tp!457375 () Bool)

(declare-fun e!999944 () Bool)

(declare-fun setElem!11003 () Context!1602)

(declare-fun setNonEmpty!11002 () Bool)

(declare-fun setRes!11003 () Bool)

(assert (=> setNonEmpty!11002 (= setRes!11003 (and tp!457375 (inv!22158 setElem!11003) e!999944))))

(declare-fun mapValue!8477 () List!16932)

(declare-fun setRest!11002 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11002 (= (_2!9557 (h!22265 mapValue!8477)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11003 true) setRest!11002))))

(declare-fun b!1558029 () Bool)

(declare-fun e!999945 () Bool)

(declare-fun tp!457376 () Bool)

(assert (=> b!1558029 (= e!999945 tp!457376)))

(declare-fun setNonEmpty!11003 () Bool)

(declare-fun tp!457377 () Bool)

(declare-fun e!999949 () Bool)

(declare-fun setRes!11002 () Bool)

(declare-fun setElem!11002 () Context!1602)

(assert (=> setNonEmpty!11003 (= setRes!11002 (and tp!457377 (inv!22158 setElem!11002) e!999949))))

(declare-fun mapDefault!8477 () List!16932)

(declare-fun setRest!11003 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11003 (= (_2!9557 (h!22265 mapDefault!8477)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11002 true) setRest!11003))))

(declare-fun setIsEmpty!11002 () Bool)

(assert (=> setIsEmpty!11002 setRes!11003))

(declare-fun b!1558030 () Bool)

(declare-fun e!999946 () Bool)

(declare-fun tp!457373 () Bool)

(assert (=> b!1558030 (= e!999946 tp!457373)))

(declare-fun b!1558031 () Bool)

(declare-fun tp!457374 () Bool)

(assert (=> b!1558031 (= e!999949 tp!457374)))

(declare-fun b!1558032 () Bool)

(declare-fun tp!457380 () Bool)

(assert (=> b!1558032 (= e!999944 tp!457380)))

(declare-fun e!999948 () Bool)

(declare-fun tp!457379 () Bool)

(declare-fun b!1558033 () Bool)

(assert (=> b!1558033 (= e!999948 (and (inv!22158 (_1!9556 (_1!9557 (h!22265 mapValue!8477)))) e!999946 tp_is_empty!7075 setRes!11003 tp!457379))))

(declare-fun condSetEmpty!11002 () Bool)

(assert (=> b!1558033 (= condSetEmpty!11002 (= (_2!9557 (h!22265 mapValue!8477)) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun tp!457378 () Bool)

(declare-fun b!1558034 () Bool)

(declare-fun e!999947 () Bool)

(assert (=> b!1558034 (= e!999947 (and (inv!22158 (_1!9556 (_1!9557 (h!22265 mapDefault!8477)))) e!999945 tp_is_empty!7075 setRes!11002 tp!457378))))

(declare-fun condSetEmpty!11003 () Bool)

(assert (=> b!1558034 (= condSetEmpty!11003 (= (_2!9557 (h!22265 mapDefault!8477)) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun mapIsEmpty!8477 () Bool)

(declare-fun mapRes!8477 () Bool)

(assert (=> mapIsEmpty!8477 mapRes!8477))

(declare-fun mapNonEmpty!8477 () Bool)

(declare-fun tp!457381 () Bool)

(assert (=> mapNonEmpty!8477 (= mapRes!8477 (and tp!457381 e!999948))))

(declare-fun mapKey!8477 () (_ BitVec 32))

(declare-fun mapRest!8477 () (Array (_ BitVec 32) List!16932))

(assert (=> mapNonEmpty!8477 (= mapRest!8471 (store mapRest!8477 mapKey!8477 mapValue!8477))))

(declare-fun setIsEmpty!11003 () Bool)

(assert (=> setIsEmpty!11003 setRes!11002))

(declare-fun condMapEmpty!8477 () Bool)

(assert (=> mapNonEmpty!8469 (= condMapEmpty!8477 (= mapRest!8471 ((as const (Array (_ BitVec 32) List!16932)) mapDefault!8477)))))

(assert (=> mapNonEmpty!8469 (= tp!457265 (and e!999947 mapRes!8477))))

(assert (= (and mapNonEmpty!8469 condMapEmpty!8477) mapIsEmpty!8477))

(assert (= (and mapNonEmpty!8469 (not condMapEmpty!8477)) mapNonEmpty!8477))

(assert (= b!1558033 b!1558030))

(assert (= (and b!1558033 condSetEmpty!11002) setIsEmpty!11002))

(assert (= (and b!1558033 (not condSetEmpty!11002)) setNonEmpty!11002))

(assert (= setNonEmpty!11002 b!1558032))

(assert (= (and mapNonEmpty!8477 ((_ is Cons!16864) mapValue!8477)) b!1558033))

(assert (= b!1558034 b!1558029))

(assert (= (and b!1558034 condSetEmpty!11003) setIsEmpty!11003))

(assert (= (and b!1558034 (not condSetEmpty!11003)) setNonEmpty!11003))

(assert (= setNonEmpty!11003 b!1558031))

(assert (= (and mapNonEmpty!8469 ((_ is Cons!16864) mapDefault!8477)) b!1558034))

(declare-fun m!1830190 () Bool)

(assert (=> b!1558034 m!1830190))

(declare-fun m!1830192 () Bool)

(assert (=> setNonEmpty!11003 m!1830192))

(declare-fun m!1830194 () Bool)

(assert (=> b!1558033 m!1830194))

(declare-fun m!1830196 () Bool)

(assert (=> mapNonEmpty!8477 m!1830196))

(declare-fun m!1830198 () Bool)

(assert (=> setNonEmpty!11002 m!1830198))

(declare-fun b!1558043 () Bool)

(declare-fun e!999957 () Bool)

(declare-fun tp!457390 () Bool)

(assert (=> b!1558043 (= e!999957 tp!457390)))

(declare-fun e!999956 () Bool)

(assert (=> mapNonEmpty!8469 (= tp!457275 e!999956)))

(declare-fun setIsEmpty!11006 () Bool)

(declare-fun setRes!11006 () Bool)

(assert (=> setIsEmpty!11006 setRes!11006))

(declare-fun setElem!11006 () Context!1602)

(declare-fun tp!457393 () Bool)

(declare-fun setNonEmpty!11006 () Bool)

(assert (=> setNonEmpty!11006 (= setRes!11006 (and tp!457393 (inv!22158 setElem!11006) e!999957))))

(declare-fun setRest!11006 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11006 (= (_2!9557 (h!22265 mapValue!8471)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11006 true) setRest!11006))))

(declare-fun b!1558044 () Bool)

(declare-fun e!999958 () Bool)

(declare-fun tp!457391 () Bool)

(assert (=> b!1558044 (= e!999958 tp!457391)))

(declare-fun tp!457392 () Bool)

(declare-fun b!1558045 () Bool)

(assert (=> b!1558045 (= e!999956 (and (inv!22158 (_1!9556 (_1!9557 (h!22265 mapValue!8471)))) e!999958 tp_is_empty!7075 setRes!11006 tp!457392))))

(declare-fun condSetEmpty!11006 () Bool)

(assert (=> b!1558045 (= condSetEmpty!11006 (= (_2!9557 (h!22265 mapValue!8471)) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1558045 b!1558044))

(assert (= (and b!1558045 condSetEmpty!11006) setIsEmpty!11006))

(assert (= (and b!1558045 (not condSetEmpty!11006)) setNonEmpty!11006))

(assert (= setNonEmpty!11006 b!1558043))

(assert (= (and mapNonEmpty!8469 ((_ is Cons!16864) mapValue!8471)) b!1558045))

(declare-fun m!1830200 () Bool)

(assert (=> setNonEmpty!11006 m!1830200))

(declare-fun m!1830202 () Bool)

(assert (=> b!1558045 m!1830202))

(declare-fun b!1558046 () Bool)

(declare-fun e!999960 () Bool)

(declare-fun tp!457394 () Bool)

(assert (=> b!1558046 (= e!999960 tp!457394)))

(declare-fun e!999959 () Bool)

(assert (=> b!1557735 (= tp!457271 e!999959)))

(declare-fun setIsEmpty!11007 () Bool)

(declare-fun setRes!11007 () Bool)

(assert (=> setIsEmpty!11007 setRes!11007))

(declare-fun setNonEmpty!11007 () Bool)

(declare-fun setElem!11007 () Context!1602)

(declare-fun tp!457397 () Bool)

(assert (=> setNonEmpty!11007 (= setRes!11007 (and tp!457397 (inv!22158 setElem!11007) e!999960))))

(declare-fun setRest!11007 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11007 (= (_2!9557 (h!22265 mapDefault!8470)) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11007 true) setRest!11007))))

(declare-fun b!1558047 () Bool)

(declare-fun e!999961 () Bool)

(declare-fun tp!457395 () Bool)

(assert (=> b!1558047 (= e!999961 tp!457395)))

(declare-fun b!1558048 () Bool)

(declare-fun tp!457396 () Bool)

(assert (=> b!1558048 (= e!999959 (and (inv!22158 (_1!9556 (_1!9557 (h!22265 mapDefault!8470)))) e!999961 tp_is_empty!7075 setRes!11007 tp!457396))))

(declare-fun condSetEmpty!11007 () Bool)

(assert (=> b!1558048 (= condSetEmpty!11007 (= (_2!9557 (h!22265 mapDefault!8470)) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1558048 b!1558047))

(assert (= (and b!1558048 condSetEmpty!11007) setIsEmpty!11007))

(assert (= (and b!1558048 (not condSetEmpty!11007)) setNonEmpty!11007))

(assert (= setNonEmpty!11007 b!1558046))

(assert (= (and b!1557735 ((_ is Cons!16864) mapDefault!8470)) b!1558048))

(declare-fun m!1830204 () Bool)

(assert (=> setNonEmpty!11007 m!1830204))

(declare-fun m!1830206 () Bool)

(assert (=> b!1558048 m!1830206))

(declare-fun b!1558060 () Bool)

(declare-fun e!999964 () Bool)

(declare-fun tp!457412 () Bool)

(declare-fun tp!457409 () Bool)

(assert (=> b!1558060 (= e!999964 (and tp!457412 tp!457409))))

(declare-fun b!1558061 () Bool)

(declare-fun tp!457408 () Bool)

(assert (=> b!1558061 (= e!999964 tp!457408)))

(declare-fun b!1558062 () Bool)

(declare-fun tp!457410 () Bool)

(declare-fun tp!457411 () Bool)

(assert (=> b!1558062 (= e!999964 (and tp!457410 tp!457411))))

(assert (=> b!1557736 (= tp!457251 e!999964)))

(declare-fun b!1558059 () Bool)

(assert (=> b!1558059 (= e!999964 tp_is_empty!7075)))

(assert (= (and b!1557736 ((_ is ElementMatch!4283) (regex!2955 rule!240))) b!1558059))

(assert (= (and b!1557736 ((_ is Concat!7329) (regex!2955 rule!240))) b!1558060))

(assert (= (and b!1557736 ((_ is Star!4283) (regex!2955 rule!240))) b!1558061))

(assert (= (and b!1557736 ((_ is Union!4283) (regex!2955 rule!240))) b!1558062))

(declare-fun b!1558063 () Bool)

(declare-fun e!999966 () Bool)

(declare-fun tp!457413 () Bool)

(assert (=> b!1558063 (= e!999966 tp!457413)))

(declare-fun e!999965 () Bool)

(assert (=> b!1557723 (= tp!457273 e!999965)))

(declare-fun setIsEmpty!11008 () Bool)

(declare-fun setRes!11008 () Bool)

(assert (=> setIsEmpty!11008 setRes!11008))

(declare-fun setElem!11008 () Context!1602)

(declare-fun setNonEmpty!11008 () Bool)

(declare-fun tp!457416 () Bool)

(assert (=> setNonEmpty!11008 (= setRes!11008 (and tp!457416 (inv!22158 setElem!11008) e!999966))))

(declare-fun setRest!11008 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11008 (= (_2!9557 (h!22265 (zeroValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11008 true) setRest!11008))))

(declare-fun b!1558064 () Bool)

(declare-fun e!999967 () Bool)

(declare-fun tp!457414 () Bool)

(assert (=> b!1558064 (= e!999967 tp!457414)))

(declare-fun b!1558065 () Bool)

(declare-fun tp!457415 () Bool)

(assert (=> b!1558065 (= e!999965 (and (inv!22158 (_1!9556 (_1!9557 (h!22265 (zeroValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))))) e!999967 tp_is_empty!7075 setRes!11008 tp!457415))))

(declare-fun condSetEmpty!11008 () Bool)

(assert (=> b!1558065 (= condSetEmpty!11008 (= (_2!9557 (h!22265 (zeroValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1558065 b!1558064))

(assert (= (and b!1558065 condSetEmpty!11008) setIsEmpty!11008))

(assert (= (and b!1558065 (not condSetEmpty!11008)) setNonEmpty!11008))

(assert (= setNonEmpty!11008 b!1558063))

(assert (= (and b!1557723 ((_ is Cons!16864) (zeroValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))) b!1558065))

(declare-fun m!1830208 () Bool)

(assert (=> setNonEmpty!11008 m!1830208))

(declare-fun m!1830210 () Bool)

(assert (=> b!1558065 m!1830210))

(declare-fun b!1558066 () Bool)

(declare-fun e!999969 () Bool)

(declare-fun tp!457417 () Bool)

(assert (=> b!1558066 (= e!999969 tp!457417)))

(declare-fun e!999968 () Bool)

(assert (=> b!1557723 (= tp!457263 e!999968)))

(declare-fun setIsEmpty!11009 () Bool)

(declare-fun setRes!11009 () Bool)

(assert (=> setIsEmpty!11009 setRes!11009))

(declare-fun setElem!11009 () Context!1602)

(declare-fun tp!457420 () Bool)

(declare-fun setNonEmpty!11009 () Bool)

(assert (=> setNonEmpty!11009 (= setRes!11009 (and tp!457420 (inv!22158 setElem!11009) e!999969))))

(declare-fun setRest!11009 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11009 (= (_2!9557 (h!22265 (minValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11009 true) setRest!11009))))

(declare-fun b!1558067 () Bool)

(declare-fun e!999970 () Bool)

(declare-fun tp!457418 () Bool)

(assert (=> b!1558067 (= e!999970 tp!457418)))

(declare-fun b!1558068 () Bool)

(declare-fun tp!457419 () Bool)

(assert (=> b!1558068 (= e!999968 (and (inv!22158 (_1!9556 (_1!9557 (h!22265 (minValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))))) e!999970 tp_is_empty!7075 setRes!11009 tp!457419))))

(declare-fun condSetEmpty!11009 () Bool)

(assert (=> b!1558068 (= condSetEmpty!11009 (= (_2!9557 (h!22265 (minValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))) ((as const (Array Context!1602 Bool)) false)))))

(assert (= b!1558068 b!1558067))

(assert (= (and b!1558068 condSetEmpty!11009) setIsEmpty!11009))

(assert (= (and b!1558068 (not condSetEmpty!11009)) setNonEmpty!11009))

(assert (= setNonEmpty!11009 b!1558066))

(assert (= (and b!1557723 ((_ is Cons!16864) (minValue!2077 (v!23717 (underlying!3849 (v!23718 (underlying!3850 (cache!2145 cacheUp!755)))))))) b!1558068))

(declare-fun m!1830212 () Bool)

(assert (=> setNonEmpty!11009 m!1830212))

(declare-fun m!1830214 () Bool)

(assert (=> b!1558068 m!1830214))

(declare-fun b!1558075 () Bool)

(declare-fun e!999975 () Bool)

(declare-fun setRes!11012 () Bool)

(declare-fun tp!457429 () Bool)

(assert (=> b!1558075 (= e!999975 (and setRes!11012 tp!457429))))

(declare-fun condSetEmpty!11012 () Bool)

(assert (=> b!1558075 (= condSetEmpty!11012 (= (_1!9560 (_1!9561 (h!22267 (zeroValue!2079 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))))) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun setNonEmpty!11012 () Bool)

(declare-fun e!999976 () Bool)

(declare-fun setElem!11012 () Context!1602)

(declare-fun tp!457428 () Bool)

(assert (=> setNonEmpty!11012 (= setRes!11012 (and tp!457428 (inv!22158 setElem!11012) e!999976))))

(declare-fun setRest!11012 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11012 (= (_1!9560 (_1!9561 (h!22267 (zeroValue!2079 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11012 true) setRest!11012))))

(declare-fun setIsEmpty!11012 () Bool)

(assert (=> setIsEmpty!11012 setRes!11012))

(declare-fun b!1558076 () Bool)

(declare-fun tp!457427 () Bool)

(assert (=> b!1558076 (= e!999976 tp!457427)))

(assert (=> b!1557734 (= tp!457260 e!999975)))

(assert (= (and b!1558075 condSetEmpty!11012) setIsEmpty!11012))

(assert (= (and b!1558075 (not condSetEmpty!11012)) setNonEmpty!11012))

(assert (= setNonEmpty!11012 b!1558076))

(assert (= (and b!1557734 ((_ is Cons!16866) (zeroValue!2079 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103)))))))) b!1558075))

(declare-fun m!1830216 () Bool)

(assert (=> setNonEmpty!11012 m!1830216))

(declare-fun b!1558077 () Bool)

(declare-fun e!999977 () Bool)

(declare-fun setRes!11013 () Bool)

(declare-fun tp!457432 () Bool)

(assert (=> b!1558077 (= e!999977 (and setRes!11013 tp!457432))))

(declare-fun condSetEmpty!11013 () Bool)

(assert (=> b!1558077 (= condSetEmpty!11013 (= (_1!9560 (_1!9561 (h!22267 (minValue!2079 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))))) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun e!999978 () Bool)

(declare-fun setNonEmpty!11013 () Bool)

(declare-fun setElem!11013 () Context!1602)

(declare-fun tp!457431 () Bool)

(assert (=> setNonEmpty!11013 (= setRes!11013 (and tp!457431 (inv!22158 setElem!11013) e!999978))))

(declare-fun setRest!11013 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11013 (= (_1!9560 (_1!9561 (h!22267 (minValue!2079 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11013 true) setRest!11013))))

(declare-fun setIsEmpty!11013 () Bool)

(assert (=> setIsEmpty!11013 setRes!11013))

(declare-fun b!1558078 () Bool)

(declare-fun tp!457430 () Bool)

(assert (=> b!1558078 (= e!999978 tp!457430)))

(assert (=> b!1557734 (= tp!457266 e!999977)))

(assert (= (and b!1558077 condSetEmpty!11013) setIsEmpty!11013))

(assert (= (and b!1558077 (not condSetEmpty!11013)) setNonEmpty!11013))

(assert (= setNonEmpty!11013 b!1558078))

(assert (= (and b!1557734 ((_ is Cons!16866) (minValue!2079 (v!23721 (underlying!3853 (v!23722 (underlying!3854 (cache!2147 cacheFurthestNullable!103)))))))) b!1558077))

(declare-fun m!1830218 () Bool)

(assert (=> setNonEmpty!11013 m!1830218))

(declare-fun b!1558079 () Bool)

(declare-fun e!999979 () Bool)

(declare-fun setRes!11014 () Bool)

(declare-fun tp!457435 () Bool)

(assert (=> b!1558079 (= e!999979 (and setRes!11014 tp!457435))))

(declare-fun condSetEmpty!11014 () Bool)

(assert (=> b!1558079 (= condSetEmpty!11014 (= (_1!9560 (_1!9561 (h!22267 mapDefault!8469))) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun tp!457434 () Bool)

(declare-fun e!999980 () Bool)

(declare-fun setElem!11014 () Context!1602)

(declare-fun setNonEmpty!11014 () Bool)

(assert (=> setNonEmpty!11014 (= setRes!11014 (and tp!457434 (inv!22158 setElem!11014) e!999980))))

(declare-fun setRest!11014 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11014 (= (_1!9560 (_1!9561 (h!22267 mapDefault!8469))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11014 true) setRest!11014))))

(declare-fun setIsEmpty!11014 () Bool)

(assert (=> setIsEmpty!11014 setRes!11014))

(declare-fun b!1558080 () Bool)

(declare-fun tp!457433 () Bool)

(assert (=> b!1558080 (= e!999980 tp!457433)))

(assert (=> b!1557752 (= tp!457258 e!999979)))

(assert (= (and b!1558079 condSetEmpty!11014) setIsEmpty!11014))

(assert (= (and b!1558079 (not condSetEmpty!11014)) setNonEmpty!11014))

(assert (= setNonEmpty!11014 b!1558080))

(assert (= (and b!1557752 ((_ is Cons!16866) mapDefault!8469)) b!1558079))

(declare-fun m!1830220 () Bool)

(assert (=> setNonEmpty!11014 m!1830220))

(declare-fun setIsEmpty!11019 () Bool)

(declare-fun setRes!11019 () Bool)

(assert (=> setIsEmpty!11019 setRes!11019))

(declare-fun mapNonEmpty!8480 () Bool)

(declare-fun mapRes!8480 () Bool)

(declare-fun tp!457456 () Bool)

(declare-fun e!999989 () Bool)

(assert (=> mapNonEmpty!8480 (= mapRes!8480 (and tp!457456 e!999989))))

(declare-fun mapKey!8480 () (_ BitVec 32))

(declare-fun mapValue!8480 () List!16934)

(declare-fun mapRest!8480 () (Array (_ BitVec 32) List!16934))

(assert (=> mapNonEmpty!8480 (= mapRest!8469 (store mapRest!8480 mapKey!8480 mapValue!8480))))

(declare-fun mapIsEmpty!8480 () Bool)

(assert (=> mapIsEmpty!8480 mapRes!8480))

(declare-fun b!1558091 () Bool)

(declare-fun e!999991 () Bool)

(declare-fun tp!457450 () Bool)

(assert (=> b!1558091 (= e!999991 tp!457450)))

(declare-fun condMapEmpty!8480 () Bool)

(declare-fun mapDefault!8480 () List!16934)

(assert (=> mapNonEmpty!8470 (= condMapEmpty!8480 (= mapRest!8469 ((as const (Array (_ BitVec 32) List!16934)) mapDefault!8480)))))

(declare-fun e!999990 () Bool)

(assert (=> mapNonEmpty!8470 (= tp!457264 (and e!999990 mapRes!8480))))

(declare-fun b!1558092 () Bool)

(declare-fun e!999992 () Bool)

(declare-fun tp!457452 () Bool)

(assert (=> b!1558092 (= e!999992 tp!457452)))

(declare-fun setIsEmpty!11020 () Bool)

(declare-fun setRes!11020 () Bool)

(assert (=> setIsEmpty!11020 setRes!11020))

(declare-fun setElem!11020 () Context!1602)

(declare-fun setNonEmpty!11019 () Bool)

(declare-fun tp!457453 () Bool)

(assert (=> setNonEmpty!11019 (= setRes!11020 (and tp!457453 (inv!22158 setElem!11020) e!999991))))

(declare-fun setRest!11019 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11019 (= (_1!9560 (_1!9561 (h!22267 mapValue!8480))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11020 true) setRest!11019))))

(declare-fun setElem!11019 () Context!1602)

(declare-fun setNonEmpty!11020 () Bool)

(declare-fun tp!457451 () Bool)

(assert (=> setNonEmpty!11020 (= setRes!11019 (and tp!457451 (inv!22158 setElem!11019) e!999992))))

(declare-fun setRest!11020 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11020 (= (_1!9560 (_1!9561 (h!22267 mapDefault!8480))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11019 true) setRest!11020))))

(declare-fun b!1558093 () Bool)

(declare-fun tp!457454 () Bool)

(assert (=> b!1558093 (= e!999989 (and setRes!11020 tp!457454))))

(declare-fun condSetEmpty!11020 () Bool)

(assert (=> b!1558093 (= condSetEmpty!11020 (= (_1!9560 (_1!9561 (h!22267 mapValue!8480))) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun b!1558094 () Bool)

(declare-fun tp!457455 () Bool)

(assert (=> b!1558094 (= e!999990 (and setRes!11019 tp!457455))))

(declare-fun condSetEmpty!11019 () Bool)

(assert (=> b!1558094 (= condSetEmpty!11019 (= (_1!9560 (_1!9561 (h!22267 mapDefault!8480))) ((as const (Array Context!1602 Bool)) false)))))

(assert (= (and mapNonEmpty!8470 condMapEmpty!8480) mapIsEmpty!8480))

(assert (= (and mapNonEmpty!8470 (not condMapEmpty!8480)) mapNonEmpty!8480))

(assert (= (and b!1558093 condSetEmpty!11020) setIsEmpty!11020))

(assert (= (and b!1558093 (not condSetEmpty!11020)) setNonEmpty!11019))

(assert (= setNonEmpty!11019 b!1558091))

(assert (= (and mapNonEmpty!8480 ((_ is Cons!16866) mapValue!8480)) b!1558093))

(assert (= (and b!1558094 condSetEmpty!11019) setIsEmpty!11019))

(assert (= (and b!1558094 (not condSetEmpty!11019)) setNonEmpty!11020))

(assert (= setNonEmpty!11020 b!1558092))

(assert (= (and mapNonEmpty!8470 ((_ is Cons!16866) mapDefault!8480)) b!1558094))

(declare-fun m!1830222 () Bool)

(assert (=> mapNonEmpty!8480 m!1830222))

(declare-fun m!1830224 () Bool)

(assert (=> setNonEmpty!11019 m!1830224))

(declare-fun m!1830226 () Bool)

(assert (=> setNonEmpty!11020 m!1830226))

(declare-fun b!1558095 () Bool)

(declare-fun e!999993 () Bool)

(declare-fun setRes!11021 () Bool)

(declare-fun tp!457459 () Bool)

(assert (=> b!1558095 (= e!999993 (and setRes!11021 tp!457459))))

(declare-fun condSetEmpty!11021 () Bool)

(assert (=> b!1558095 (= condSetEmpty!11021 (= (_1!9560 (_1!9561 (h!22267 mapValue!8470))) ((as const (Array Context!1602 Bool)) false)))))

(declare-fun e!999994 () Bool)

(declare-fun setNonEmpty!11021 () Bool)

(declare-fun tp!457458 () Bool)

(declare-fun setElem!11021 () Context!1602)

(assert (=> setNonEmpty!11021 (= setRes!11021 (and tp!457458 (inv!22158 setElem!11021) e!999994))))

(declare-fun setRest!11021 () (InoxSet Context!1602))

(assert (=> setNonEmpty!11021 (= (_1!9560 (_1!9561 (h!22267 mapValue!8470))) ((_ map or) (store ((as const (Array Context!1602 Bool)) false) setElem!11021 true) setRest!11021))))

(declare-fun setIsEmpty!11021 () Bool)

(assert (=> setIsEmpty!11021 setRes!11021))

(declare-fun b!1558096 () Bool)

(declare-fun tp!457457 () Bool)

(assert (=> b!1558096 (= e!999994 tp!457457)))

(assert (=> mapNonEmpty!8470 (= tp!457253 e!999993)))

(assert (= (and b!1558095 condSetEmpty!11021) setIsEmpty!11021))

(assert (= (and b!1558095 (not condSetEmpty!11021)) setNonEmpty!11021))

(assert (= setNonEmpty!11021 b!1558096))

(assert (= (and mapNonEmpty!8470 ((_ is Cons!16866) mapValue!8470)) b!1558095))

(declare-fun m!1830228 () Bool)

(assert (=> setNonEmpty!11021 m!1830228))

(declare-fun b_lambda!48963 () Bool)

(assert (= b_lambda!48951 (or (and b!1557726 b_free!41483) b_lambda!48963)))

(declare-fun b_lambda!48965 () Bool)

(assert (= b_lambda!48959 (or (and b!1557726 b_free!41483) b_lambda!48965)))

(declare-fun b_lambda!48967 () Bool)

(assert (= b_lambda!48955 (or b!1557749 b_lambda!48967)))

(declare-fun bs!388795 () Bool)

(declare-fun d!461921 () Bool)

(assert (= bs!388795 (and d!461921 b!1557749)))

(declare-fun dynLambda!7497 (Int TokenValue!3045) BalanceConc!11088)

(assert (=> bs!388795 (= (dynLambda!7495 lambda!65941 (_1!9563 (_1!9564 lt!539484))) (= (list!6503 (dynLambda!7497 (toChars!4189 (transformation!2955 rule!240)) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) (_1!9563 (_1!9564 lt!539484))))) (list!6503 (_1!9563 (_1!9564 lt!539484)))))))

(declare-fun b_lambda!48975 () Bool)

(assert (=> (not b_lambda!48975) (not bs!388795)))

(declare-fun t!141435 () Bool)

(declare-fun tb!87349 () Bool)

(assert (=> (and b!1557726 (= (toChars!4189 (transformation!2955 rule!240)) (toChars!4189 (transformation!2955 rule!240))) t!141435) tb!87349))

(declare-fun e!999997 () Bool)

(declare-fun b!1558101 () Bool)

(declare-fun tp!457462 () Bool)

(assert (=> b!1558101 (= e!999997 (and (inv!22149 (c!252941 (dynLambda!7497 (toChars!4189 (transformation!2955 rule!240)) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) (_1!9563 (_1!9564 lt!539484)))))) tp!457462))))

(declare-fun result!105542 () Bool)

(assert (=> tb!87349 (= result!105542 (and (inv!22151 (dynLambda!7497 (toChars!4189 (transformation!2955 rule!240)) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) (_1!9563 (_1!9564 lt!539484))))) e!999997))))

(assert (= tb!87349 b!1558101))

(declare-fun m!1830230 () Bool)

(assert (=> b!1558101 m!1830230))

(declare-fun m!1830232 () Bool)

(assert (=> tb!87349 m!1830232))

(assert (=> bs!388795 t!141435))

(declare-fun b_and!108717 () Bool)

(assert (= b_and!108699 (and (=> t!141435 result!105542) b_and!108717)))

(declare-fun b_lambda!48977 () Bool)

(assert (=> (not b_lambda!48977) (not bs!388795)))

(assert (=> bs!388795 t!141431))

(declare-fun b_and!108719 () Bool)

(assert (= b_and!108715 (and (=> t!141431 result!105520) b_and!108719)))

(declare-fun m!1830234 () Bool)

(assert (=> bs!388795 m!1830234))

(declare-fun m!1830236 () Bool)

(assert (=> bs!388795 m!1830236))

(assert (=> bs!388795 m!1829952))

(assert (=> bs!388795 m!1829952))

(assert (=> bs!388795 m!1830234))

(assert (=> bs!388795 m!1829932))

(assert (=> d!461841 d!461921))

(declare-fun b_lambda!48969 () Bool)

(assert (= b_lambda!48957 (or (and b!1557726 b_free!41483) b_lambda!48969)))

(declare-fun b_lambda!48971 () Bool)

(assert (= b_lambda!48961 (or (and b!1557726 b_free!41483) b_lambda!48971)))

(declare-fun b_lambda!48973 () Bool)

(assert (= b_lambda!48953 (or b!1557749 b_lambda!48973)))

(declare-fun bs!388796 () Bool)

(declare-fun d!461923 () Bool)

(assert (= bs!388796 (and d!461923 b!1557749)))

(assert (=> bs!388796 (= (dynLambda!7495 lambda!65941 lt!539487) (= (list!6503 (dynLambda!7497 (toChars!4189 (transformation!2955 rule!240)) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) lt!539487))) (list!6503 lt!539487)))))

(declare-fun b_lambda!48979 () Bool)

(assert (=> (not b_lambda!48979) (not bs!388796)))

(declare-fun t!141437 () Bool)

(declare-fun tb!87351 () Bool)

(assert (=> (and b!1557726 (= (toChars!4189 (transformation!2955 rule!240)) (toChars!4189 (transformation!2955 rule!240))) t!141437) tb!87351))

(declare-fun tp!457463 () Bool)

(declare-fun e!999998 () Bool)

(declare-fun b!1558102 () Bool)

(assert (=> b!1558102 (= e!999998 (and (inv!22149 (c!252941 (dynLambda!7497 (toChars!4189 (transformation!2955 rule!240)) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) lt!539487)))) tp!457463))))

(declare-fun result!105546 () Bool)

(assert (=> tb!87351 (= result!105546 (and (inv!22151 (dynLambda!7497 (toChars!4189 (transformation!2955 rule!240)) (dynLambda!7494 (toValue!4330 (transformation!2955 rule!240)) lt!539487))) e!999998))))

(assert (= tb!87351 b!1558102))

(declare-fun m!1830238 () Bool)

(assert (=> b!1558102 m!1830238))

(declare-fun m!1830240 () Bool)

(assert (=> tb!87351 m!1830240))

(assert (=> bs!388796 t!141437))

(declare-fun b_and!108721 () Bool)

(assert (= b_and!108717 (and (=> t!141437 result!105546) b_and!108721)))

(declare-fun b_lambda!48981 () Bool)

(assert (=> (not b_lambda!48981) (not bs!388796)))

(assert (=> bs!388796 t!141433))

(declare-fun b_and!108723 () Bool)

(assert (= b_and!108719 (and (=> t!141433 result!105524) b_and!108723)))

(declare-fun m!1830242 () Bool)

(assert (=> bs!388796 m!1830242))

(declare-fun m!1830244 () Bool)

(assert (=> bs!388796 m!1830244))

(assert (=> bs!388796 m!1830114))

(assert (=> bs!388796 m!1830114))

(assert (=> bs!388796 m!1830242))

(assert (=> bs!388796 m!1829928))

(assert (=> d!461835 d!461923))

(check-sat (not b!1557926) (not d!461911) (not b!1557746) (not b_next!42195) (not b!1557983) (not b!1557954) b_and!108695 (not d!461909) (not setNonEmpty!11012) (not b!1557966) (not b!1558009) (not b!1558092) b_and!108705 (not b!1558012) (not b!1558011) (not d!461881) (not b!1557921) (not b!1558005) (not setNonEmpty!11019) (not setNonEmpty!11008) (not b!1558004) b_and!108707 (not d!461905) (not b!1557809) (not setNonEmpty!10994) (not b_lambda!48975) (not d!461895) (not mapNonEmpty!8480) (not b!1558003) (not d!461827) (not b!1558006) (not b!1557919) (not b!1557850) (not b!1558062) (not bm!102129) (not b!1557967) (not b!1557907) (not bs!388795) (not b_lambda!48969) (not b!1558064) (not b_lambda!48967) (not setNonEmpty!11002) (not b!1558008) (not b!1557794) (not bm!102135) (not b!1558031) (not b!1558079) (not d!461857) (not b!1558076) (not b!1557854) (not tb!87347) (not b!1558077) (not d!461907) (not d!461841) (not d!461863) (not b!1557923) (not b!1558068) (not d!461867) (not b!1557988) (not tb!87345) (not b!1558047) (not b!1557985) (not setNonEmpty!11021) (not d!461831) (not b!1557733) (not mapNonEmpty!8474) (not d!461835) (not b_next!42185) (not b!1558094) (not b!1557984) (not b!1558067) (not b_lambda!48963) (not b!1558046) (not b!1558096) (not b!1558029) (not b!1557903) (not d!461839) (not bm!102139) (not b!1557957) (not b!1557987) (not setNonEmpty!11013) (not b!1558080) (not b!1557932) (not b!1558095) (not bm!102130) (not b!1557906) (not d!461833) (not b_next!42191) (not b!1557949) (not bm!102134) (not tb!87349) (not b!1557851) (not b!1557950) (not b!1557968) (not b_lambda!48977) (not b!1557870) (not d!461899) (not setNonEmpty!10996) (not b!1558034) (not b!1558045) (not setNonEmpty!10997) (not b!1558033) (not b!1557852) (not b!1558078) (not b!1557912) (not b!1557793) b_and!108721 (not b!1557862) (not d!461891) (not d!461855) (not b!1558075) (not setNonEmpty!11014) (not b!1558002) (not setNonEmpty!11006) tp_is_empty!7075 (not b_next!42193) (not b!1558014) (not b!1558060) (not d!461865) (not b!1558030) (not bm!102131) (not b!1558102) (not setNonEmpty!10995) (not b!1557795) (not bs!388796) (not d!461837) (not bm!102136) (not d!461859) (not d!461917) (not d!461887) (not b_next!42197) (not d!461919) (not b!1558044) (not b!1558091) (not setNonEmpty!11003) (not b!1558001) (not setNonEmpty!10991) (not b!1558065) (not b!1557948) (not d!461829) (not b!1557798) (not b!1558010) (not b!1558048) (not b!1557872) b_and!108701 b_and!108693 (not mapNonEmpty!8477) (not b!1558093) (not b!1557999) (not b!1557910) (not b!1557800) (not b!1558000) (not b!1557986) (not b!1558043) (not b_next!42187) (not b!1557796) (not b!1558101) (not bm!102132) (not b!1557914) (not d!461853) (not d!461843) (not b!1557998) (not b!1557817) (not b_lambda!48981) (not setNonEmpty!11020) (not setNonEmpty!10990) (not b_lambda!48965) (not b!1557741) (not b!1557865) (not setNonEmpty!11007) (not b_lambda!48973) (not b_lambda!48979) (not b!1557797) (not b!1557792) (not b_lambda!48971) b_and!108703 b_and!108723 (not b!1558066) (not b!1557997) (not b!1558013) (not bm!102133) (not d!461875) (not b!1558032) (not b!1557929) (not setNonEmpty!11009) (not b!1558061) (not b_next!42189) (not b!1558007) (not b!1558063) (not b!1557807) (not b_next!42183) (not d!461889) (not tb!87351) (not b!1557815))
(check-sat (not b_next!42195) b_and!108707 (not b_next!42185) (not b_next!42191) b_and!108721 (not b_next!42193) (not b_next!42197) (not b_next!42187) b_and!108695 b_and!108705 b_and!108701 b_and!108693 b_and!108703 b_and!108723 (not b_next!42183) (not b_next!42189))

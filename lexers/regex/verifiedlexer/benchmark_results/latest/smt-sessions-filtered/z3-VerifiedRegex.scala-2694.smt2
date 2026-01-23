; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145022 () Bool)

(assert start!145022)

(declare-fun b!1562014 () Bool)

(declare-fun b_free!41735 () Bool)

(declare-fun b_next!42439 () Bool)

(assert (=> b!1562014 (= b_free!41735 (not b_next!42439))))

(declare-fun tp!459876 () Bool)

(declare-fun b_and!109045 () Bool)

(assert (=> b!1562014 (= tp!459876 b_and!109045)))

(declare-fun b!1561998 () Bool)

(declare-fun b_free!41737 () Bool)

(declare-fun b_next!42441 () Bool)

(assert (=> b!1561998 (= b_free!41737 (not b_next!42441))))

(declare-fun tp!459860 () Bool)

(declare-fun b_and!109047 () Bool)

(assert (=> b!1561998 (= tp!459860 b_and!109047)))

(declare-fun b!1561986 () Bool)

(declare-fun b_free!41739 () Bool)

(declare-fun b_next!42443 () Bool)

(assert (=> b!1561986 (= b_free!41739 (not b_next!42443))))

(declare-fun tp!459866 () Bool)

(declare-fun b_and!109049 () Bool)

(assert (=> b!1561986 (= tp!459866 b_and!109049)))

(declare-fun b!1561997 () Bool)

(declare-fun b_free!41741 () Bool)

(declare-fun b_next!42445 () Bool)

(assert (=> b!1561997 (= b_free!41741 (not b_next!42445))))

(declare-fun tp!459878 () Bool)

(declare-fun b_and!109051 () Bool)

(assert (=> b!1561997 (= tp!459878 b_and!109051)))

(declare-fun b!1561996 () Bool)

(declare-fun b_free!41743 () Bool)

(declare-fun b_next!42447 () Bool)

(assert (=> b!1561996 (= b_free!41743 (not b_next!42447))))

(declare-fun tp!459870 () Bool)

(declare-fun b_and!109053 () Bool)

(assert (=> b!1561996 (= tp!459870 b_and!109053)))

(declare-fun b!1561989 () Bool)

(declare-fun b_free!41745 () Bool)

(declare-fun b_next!42449 () Bool)

(assert (=> b!1561989 (= b_free!41745 (not b_next!42449))))

(declare-fun tp!459863 () Bool)

(declare-fun b_and!109055 () Bool)

(assert (=> b!1561989 (= tp!459863 b_and!109055)))

(declare-fun b!1562013 () Bool)

(declare-fun b_free!41747 () Bool)

(declare-fun b_next!42451 () Bool)

(assert (=> b!1562013 (= b_free!41747 (not b_next!42451))))

(declare-fun tp!459879 () Bool)

(declare-fun b_and!109057 () Bool)

(assert (=> b!1562013 (= tp!459879 b_and!109057)))

(declare-fun b_free!41749 () Bool)

(declare-fun b_next!42453 () Bool)

(assert (=> b!1562013 (= b_free!41749 (not b_next!42453))))

(declare-fun tp!459869 () Bool)

(declare-fun b_and!109059 () Bool)

(assert (=> b!1562013 (= tp!459869 b_and!109059)))

(declare-fun b!1562026 () Bool)

(declare-fun e!1003102 () Bool)

(assert (=> b!1562026 (= e!1003102 true)))

(declare-fun b!1562025 () Bool)

(declare-fun e!1003101 () Bool)

(assert (=> b!1562025 (= e!1003101 e!1003102)))

(declare-fun b!1561979 () Bool)

(assert (=> b!1561979 e!1003101))

(assert (= b!1562025 b!1562026))

(assert (= b!1561979 b!1562025))

(declare-fun order!10047 () Int)

(declare-fun lambda!66068 () Int)

(declare-datatypes ((List!17018 0))(
  ( (Nil!16950) (Cons!16950 (h!22351 (_ BitVec 16)) (t!141567 List!17018)) )
))
(declare-datatypes ((TokenValue!3061 0))(
  ( (FloatLiteralValue!6122 (text!21872 List!17018)) (TokenValueExt!3060 (__x!11417 Int)) (Broken!15305 (value!94279 List!17018)) (Object!3128) (End!3061) (Def!3061) (Underscore!3061) (Match!3061) (Else!3061) (Error!3061) (Case!3061) (If!3061) (Extends!3061) (Abstract!3061) (Class!3061) (Val!3061) (DelimiterValue!6122 (del!3121 List!17018)) (KeywordValue!3067 (value!94280 List!17018)) (CommentValue!6122 (value!94281 List!17018)) (WhitespaceValue!6122 (value!94282 List!17018)) (IndentationValue!3061 (value!94283 List!17018)) (String!19592) (Int32!3061) (Broken!15306 (value!94284 List!17018)) (Boolean!3062) (Unit!26157) (OperatorValue!3064 (op!3121 List!17018)) (IdentifierValue!6122 (value!94285 List!17018)) (IdentifierValue!6123 (value!94286 List!17018)) (WhitespaceValue!6123 (value!94287 List!17018)) (True!6122) (False!6122) (Broken!15307 (value!94288 List!17018)) (Broken!15308 (value!94289 List!17018)) (True!6123) (RightBrace!3061) (RightBracket!3061) (Colon!3061) (Null!3061) (Comma!3061) (LeftBracket!3061) (False!6123) (LeftBrace!3061) (ImaginaryLiteralValue!3061 (text!21873 List!17018)) (StringLiteralValue!9183 (value!94290 List!17018)) (EOFValue!3061 (value!94291 List!17018)) (IdentValue!3061 (value!94292 List!17018)) (DelimiterValue!6123 (value!94293 List!17018)) (DedentValue!3061 (value!94294 List!17018)) (NewLineValue!3061 (value!94295 List!17018)) (IntegerValue!9183 (value!94296 (_ BitVec 32)) (text!21874 List!17018)) (IntegerValue!9184 (value!94297 Int) (text!21875 List!17018)) (Times!3061) (Or!3061) (Equal!3061) (Minus!3061) (Broken!15309 (value!94298 List!17018)) (And!3061) (Div!3061) (LessEqual!3061) (Mod!3061) (Concat!7360) (Not!3061) (Plus!3061) (SpaceValue!3061 (value!94299 List!17018)) (IntegerValue!9185 (value!94300 Int) (text!21876 List!17018)) (StringLiteralValue!9184 (text!21877 List!17018)) (FloatLiteralValue!6123 (text!21878 List!17018)) (BytesLiteralValue!3061 (value!94301 List!17018)) (CommentValue!6123 (value!94302 List!17018)) (StringLiteralValue!9185 (value!94303 List!17018)) (ErrorTokenValue!3061 (msg!3122 List!17018)) )
))
(declare-datatypes ((C!8776 0))(
  ( (C!8777 (val!4960 Int)) )
))
(declare-datatypes ((List!17019 0))(
  ( (Nil!16951) (Cons!16951 (h!22352 C!8776) (t!141568 List!17019)) )
))
(declare-datatypes ((IArray!11183 0))(
  ( (IArray!11184 (innerList!5649 List!17019)) )
))
(declare-datatypes ((Conc!5589 0))(
  ( (Node!5589 (left!13749 Conc!5589) (right!14079 Conc!5589) (csize!11408 Int) (cheight!5800 Int)) (Leaf!8284 (xs!8389 IArray!11183) (csize!11409 Int)) (Empty!5589) )
))
(declare-datatypes ((BalanceConc!11120 0))(
  ( (BalanceConc!11121 (c!253235 Conc!5589)) )
))
(declare-datatypes ((Regex!4299 0))(
  ( (ElementMatch!4299 (c!253236 C!8776)) (Concat!7361 (regOne!9110 Regex!4299) (regTwo!9110 Regex!4299)) (EmptyExpr!4299) (Star!4299 (reg!4628 Regex!4299)) (EmptyLang!4299) (Union!4299 (regOne!9111 Regex!4299) (regTwo!9111 Regex!4299)) )
))
(declare-datatypes ((String!19593 0))(
  ( (String!19594 (value!94304 String)) )
))
(declare-datatypes ((TokenValueInjection!5782 0))(
  ( (TokenValueInjection!5783 (toValue!4352 Int) (toChars!4211 Int)) )
))
(declare-datatypes ((Rule!5742 0))(
  ( (Rule!5743 (regex!2971 Regex!4299) (tag!3235 String!19593) (isSeparator!2971 Bool) (transformation!2971 TokenValueInjection!5782)) )
))
(declare-fun rule!240 () Rule!5742)

(declare-fun order!10045 () Int)

(declare-fun dynLambda!7556 (Int Int) Int)

(declare-fun dynLambda!7557 (Int Int) Int)

(assert (=> b!1562026 (< (dynLambda!7556 order!10045 (toValue!4352 (transformation!2971 rule!240))) (dynLambda!7557 order!10047 lambda!66068))))

(declare-fun order!10049 () Int)

(declare-fun dynLambda!7558 (Int Int) Int)

(assert (=> b!1562026 (< (dynLambda!7558 order!10049 (toChars!4211 (transformation!2971 rule!240))) (dynLambda!7557 order!10047 lambda!66068))))

(declare-fun mapNonEmpty!8676 () Bool)

(declare-fun mapRes!8677 () Bool)

(declare-fun tp!459855 () Bool)

(declare-fun tp!459871 () Bool)

(assert (=> mapNonEmpty!8676 (= mapRes!8677 (and tp!459855 tp!459871))))

(declare-datatypes ((List!17020 0))(
  ( (Nil!16952) (Cons!16952 (h!22353 Regex!4299) (t!141569 List!17020)) )
))
(declare-datatypes ((Context!1634 0))(
  ( (Context!1635 (exprs!1317 List!17020)) )
))
(declare-datatypes ((tuple2!16572 0))(
  ( (tuple2!16573 (_1!9685 Context!1634) (_2!9685 C!8776)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16574 0))(
  ( (tuple2!16575 (_1!9686 tuple2!16572) (_2!9686 (InoxSet Context!1634))) )
))
(declare-datatypes ((List!17021 0))(
  ( (Nil!16953) (Cons!16953 (h!22354 tuple2!16574) (t!141570 List!17021)) )
))
(declare-datatypes ((array!6380 0))(
  ( (array!6381 (arr!2835 (Array (_ BitVec 32) List!17021)) (size!13757 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1805 0))(
  ( (HashableExt!1804 (__x!11418 Int)) )
))
(declare-datatypes ((array!6382 0))(
  ( (array!6383 (arr!2836 (Array (_ BitVec 32) (_ BitVec 64))) (size!13758 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3722 0))(
  ( (LongMapFixedSize!3723 (defaultEntry!2221 Int) (mask!5099 (_ BitVec 32)) (extraKeys!2108 (_ BitVec 32)) (zeroValue!2118 List!17021) (minValue!2118 List!17021) (_size!3803 (_ BitVec 32)) (_keys!2155 array!6382) (_values!2140 array!6380) (_vacant!1922 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7329 0))(
  ( (Cell!7330 (v!23816 LongMapFixedSize!3722)) )
))
(declare-datatypes ((MutLongMap!1861 0))(
  ( (LongMap!1861 (underlying!3931 Cell!7329)) (MutLongMapExt!1860 (__x!11419 Int)) )
))
(declare-datatypes ((Cell!7331 0))(
  ( (Cell!7332 (v!23817 MutLongMap!1861)) )
))
(declare-datatypes ((MutableMap!1805 0))(
  ( (MutableMapExt!1804 (__x!11420 Int)) (HashMap!1805 (underlying!3932 Cell!7331) (hashF!3724 Hashable!1805) (_size!3804 (_ BitVec 32)) (defaultValue!1965 Int)) )
))
(declare-datatypes ((CacheUp!1102 0))(
  ( (CacheUp!1103 (cache!2186 MutableMap!1805)) )
))
(declare-fun cacheUp!755 () CacheUp!1102)

(declare-fun mapValue!8676 () List!17021)

(declare-fun mapKey!8677 () (_ BitVec 32))

(declare-fun mapRest!8676 () (Array (_ BitVec 32) List!17021))

(assert (=> mapNonEmpty!8676 (= (arr!2835 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) (store mapRest!8676 mapKey!8677 mapValue!8676))))

(declare-fun b!1561976 () Bool)

(declare-fun e!1003094 () Bool)

(declare-fun input!1676 () BalanceConc!11120)

(declare-fun tp!459867 () Bool)

(declare-fun inv!22260 (Conc!5589) Bool)

(assert (=> b!1561976 (= e!1003094 (and (inv!22260 (c!253235 input!1676)) tp!459867))))

(declare-fun b!1561977 () Bool)

(declare-fun e!1003085 () Bool)

(declare-fun e!1003068 () Bool)

(assert (=> b!1561977 (= e!1003085 e!1003068)))

(declare-fun b!1561978 () Bool)

(declare-fun e!1003060 () Bool)

(declare-fun e!1003095 () Bool)

(assert (=> b!1561978 (= e!1003060 e!1003095)))

(declare-fun res!696397 () Bool)

(assert (=> b!1561978 (=> res!696397 e!1003095)))

(declare-fun lt!541042 () Bool)

(declare-datatypes ((Token!5508 0))(
  ( (Token!5509 (value!94305 TokenValue!3061) (rule!4756 Rule!5742) (size!13759 Int) (originalCharacters!3785 List!17019)) )
))
(declare-datatypes ((tuple2!16576 0))(
  ( (tuple2!16577 (_1!9687 Token!5508) (_2!9687 List!17019)) )
))
(declare-datatypes ((Option!3064 0))(
  ( (None!3063) (Some!3063 (v!23818 tuple2!16576)) )
))
(declare-fun lt!541044 () Option!3064)

(declare-fun isDefined!2463 (Option!3064) Bool)

(assert (=> b!1561978 (= res!696397 (not (= lt!541042 (isDefined!2463 lt!541044))))))

(declare-datatypes ((tuple2!16578 0))(
  ( (tuple2!16579 (_1!9688 Token!5508) (_2!9688 BalanceConc!11120)) )
))
(declare-datatypes ((Option!3065 0))(
  ( (None!3064) (Some!3064 (v!23819 tuple2!16578)) )
))
(declare-fun lt!541047 () Option!3065)

(declare-fun isDefined!2464 (Option!3065) Bool)

(assert (=> b!1561978 (= lt!541042 (isDefined!2464 lt!541047))))

(declare-fun lt!541046 () List!17019)

(declare-datatypes ((LexerInterface!2602 0))(
  ( (LexerInterfaceExt!2599 (__x!11421 Int)) (Lexer!2600) )
))
(declare-fun thiss!16438 () LexerInterface!2602)

(declare-fun maxPrefixOneRule!715 (LexerInterface!2602 Rule!5742 List!17019) Option!3064)

(assert (=> b!1561978 (= lt!541044 (maxPrefixOneRule!715 thiss!16438 rule!240 lt!541046))))

(declare-fun e!1003075 () Option!3065)

(assert (=> b!1561978 (= lt!541047 e!1003075)))

(declare-fun c!253234 () Bool)

(declare-datatypes ((tuple3!1872 0))(
  ( (tuple3!1873 (_1!9689 (InoxSet Context!1634)) (_2!9689 Int) (_3!1399 Int)) )
))
(declare-datatypes ((tuple2!16580 0))(
  ( (tuple2!16581 (_1!9690 tuple3!1872) (_2!9690 Int)) )
))
(declare-datatypes ((List!17022 0))(
  ( (Nil!16954) (Cons!16954 (h!22355 tuple2!16580) (t!141571 List!17022)) )
))
(declare-datatypes ((array!6384 0))(
  ( (array!6385 (arr!2837 (Array (_ BitVec 32) List!17022)) (size!13760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3724 0))(
  ( (LongMapFixedSize!3725 (defaultEntry!2222 Int) (mask!5100 (_ BitVec 32)) (extraKeys!2109 (_ BitVec 32)) (zeroValue!2119 List!17022) (minValue!2119 List!17022) (_size!3805 (_ BitVec 32)) (_keys!2156 array!6382) (_values!2141 array!6384) (_vacant!1923 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!1874 0))(
  ( (tuple3!1875 (_1!9691 Regex!4299) (_2!9691 Context!1634) (_3!1400 C!8776)) )
))
(declare-datatypes ((tuple2!16582 0))(
  ( (tuple2!16583 (_1!9692 tuple3!1874) (_2!9692 (InoxSet Context!1634))) )
))
(declare-datatypes ((List!17023 0))(
  ( (Nil!16955) (Cons!16955 (h!22356 tuple2!16582) (t!141572 List!17023)) )
))
(declare-datatypes ((Cell!7333 0))(
  ( (Cell!7334 (v!23820 LongMapFixedSize!3724)) )
))
(declare-datatypes ((array!6386 0))(
  ( (array!6387 (arr!2838 (Array (_ BitVec 32) List!17023)) (size!13761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3726 0))(
  ( (LongMapFixedSize!3727 (defaultEntry!2223 Int) (mask!5101 (_ BitVec 32)) (extraKeys!2110 (_ BitVec 32)) (zeroValue!2120 List!17023) (minValue!2120 List!17023) (_size!3806 (_ BitVec 32)) (_keys!2157 array!6382) (_values!2142 array!6386) (_vacant!1924 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7335 0))(
  ( (Cell!7336 (v!23821 LongMapFixedSize!3726)) )
))
(declare-datatypes ((tuple2!16584 0))(
  ( (tuple2!16585 (_1!9693 BalanceConc!11120) (_2!9693 BalanceConc!11120)) )
))
(declare-datatypes ((MutLongMap!1862 0))(
  ( (LongMap!1862 (underlying!3933 Cell!7335)) (MutLongMapExt!1861 (__x!11422 Int)) )
))
(declare-datatypes ((Cell!7337 0))(
  ( (Cell!7338 (v!23822 MutLongMap!1862)) )
))
(declare-datatypes ((Hashable!1806 0))(
  ( (HashableExt!1805 (__x!11423 Int)) )
))
(declare-datatypes ((MutableMap!1806 0))(
  ( (MutableMapExt!1805 (__x!11424 Int)) (HashMap!1806 (underlying!3934 Cell!7337) (hashF!3725 Hashable!1806) (_size!3807 (_ BitVec 32)) (defaultValue!1966 Int)) )
))
(declare-datatypes ((CacheDown!1108 0))(
  ( (CacheDown!1109 (cache!2187 MutableMap!1806)) )
))
(declare-datatypes ((MutLongMap!1863 0))(
  ( (LongMap!1863 (underlying!3935 Cell!7333)) (MutLongMapExt!1862 (__x!11425 Int)) )
))
(declare-datatypes ((Cell!7339 0))(
  ( (Cell!7340 (v!23823 MutLongMap!1863)) )
))
(declare-datatypes ((Hashable!1807 0))(
  ( (HashableExt!1806 (__x!11426 Int)) )
))
(declare-datatypes ((MutableMap!1807 0))(
  ( (MutableMapExt!1806 (__x!11427 Int)) (HashMap!1807 (underlying!3936 Cell!7339) (hashF!3726 Hashable!1807) (_size!3808 (_ BitVec 32)) (defaultValue!1967 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!528 0))(
  ( (CacheFurthestNullable!529 (cache!2188 MutableMap!1807) (totalInput!2504 BalanceConc!11120)) )
))
(declare-datatypes ((tuple4!926 0))(
  ( (tuple4!927 (_1!9694 tuple2!16584) (_2!9694 CacheUp!1102) (_3!1401 CacheDown!1108) (_4!463 CacheFurthestNullable!528)) )
))
(declare-fun lt!541055 () tuple4!926)

(declare-fun isEmpty!10170 (BalanceConc!11120) Bool)

(assert (=> b!1561978 (= c!253234 (isEmpty!10170 (_1!9693 (_1!9694 lt!541055))))))

(declare-fun totalInput!568 () BalanceConc!11120)

(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!528)

(declare-fun cacheDown!768 () CacheDown!1108)

(declare-fun findLongestMatchWithZipperSequenceV3Mem!64 (Regex!4299 BalanceConc!11120 BalanceConc!11120 CacheUp!1102 CacheDown!1108 CacheFurthestNullable!528) tuple4!926)

(assert (=> b!1561978 (= lt!541055 (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun lt!541061 () Int)

(declare-fun lt!541051 () TokenValue!3061)

(declare-fun lt!541050 () List!17019)

(assert (=> b!1561979 (= e!1003075 (Some!3064 (tuple2!16579 (Token!5509 lt!541051 rule!240 lt!541061 lt!541050) (_2!9693 (_1!9694 lt!541055)))))))

(declare-datatypes ((Unit!26158 0))(
  ( (Unit!26159) )
))
(declare-fun lt!541053 () Unit!26158)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!329 (Regex!4299 List!17019) Unit!26158)

(assert (=> b!1561979 (= lt!541053 (longestMatchIsAcceptedByMatchOrIsEmpty!329 (regex!2971 rule!240) lt!541046))))

(declare-datatypes ((tuple2!16586 0))(
  ( (tuple2!16587 (_1!9695 List!17019) (_2!9695 List!17019)) )
))
(declare-fun lt!541045 () tuple2!16586)

(declare-fun findLongestMatchInner!345 (Regex!4299 List!17019 Int List!17019 List!17019 Int) tuple2!16586)

(declare-fun size!13762 (List!17019) Int)

(assert (=> b!1561979 (= lt!541045 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))

(declare-fun res!696395 () Bool)

(declare-fun isEmpty!10171 (List!17019) Bool)

(assert (=> b!1561979 (= res!696395 (isEmpty!10171 (_1!9695 lt!541045)))))

(declare-fun e!1003083 () Bool)

(assert (=> b!1561979 (=> res!696395 e!1003083)))

(assert (=> b!1561979 e!1003083))

(declare-fun lt!541059 () Unit!26158)

(declare-fun lemmaInv!439 (TokenValueInjection!5782) Unit!26158)

(assert (=> b!1561979 (= lt!541059 (lemmaInv!439 (transformation!2971 rule!240)))))

(declare-fun lt!541052 () Unit!26158)

(declare-fun ForallOf!224 (Int BalanceConc!11120) Unit!26158)

(assert (=> b!1561979 (= lt!541052 (ForallOf!224 lambda!66068 (_1!9693 (_1!9694 lt!541055))))))

(declare-fun list!6521 (BalanceConc!11120) List!17019)

(assert (=> b!1561979 (= lt!541050 (list!6521 (_1!9693 (_1!9694 lt!541055))))))

(declare-fun lt!541056 () BalanceConc!11120)

(declare-fun seqFromList!1787 (List!17019) BalanceConc!11120)

(assert (=> b!1561979 (= lt!541056 (seqFromList!1787 lt!541050))))

(declare-fun lt!541049 () Unit!26158)

(assert (=> b!1561979 (= lt!541049 (ForallOf!224 lambda!66068 lt!541056))))

(declare-fun apply!4123 (TokenValueInjection!5782 BalanceConc!11120) TokenValue!3061)

(assert (=> b!1561979 (= lt!541051 (apply!4123 (transformation!2971 rule!240) (_1!9693 (_1!9694 lt!541055))))))

(declare-fun size!13763 (BalanceConc!11120) Int)

(assert (=> b!1561979 (= lt!541061 (size!13763 (_1!9693 (_1!9694 lt!541055))))))

(declare-fun lt!541060 () Unit!26158)

(declare-fun lemmaEqSameImage!159 (TokenValueInjection!5782 BalanceConc!11120 BalanceConc!11120) Unit!26158)

(assert (=> b!1561979 (= lt!541060 (lemmaEqSameImage!159 (transformation!2971 rule!240) (_1!9693 (_1!9694 lt!541055)) lt!541056))))

(declare-fun b!1561980 () Bool)

(declare-fun e!1003096 () Bool)

(declare-fun tp!459873 () Bool)

(declare-fun mapRes!8676 () Bool)

(assert (=> b!1561980 (= e!1003096 (and tp!459873 mapRes!8676))))

(declare-fun condMapEmpty!8676 () Bool)

(declare-fun mapDefault!8677 () List!17023)

(assert (=> b!1561980 (= condMapEmpty!8676 (= (arr!2838 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!17023)) mapDefault!8677)))))

(declare-fun b!1561981 () Bool)

(declare-fun e!1003088 () Bool)

(declare-fun lt!541058 () tuple2!16578)

(declare-fun lt!541057 () tuple2!16576)

(assert (=> b!1561981 (= e!1003088 (not (= (list!6521 (_2!9688 lt!541058)) (_2!9687 lt!541057))))))

(declare-fun e!1003069 () Bool)

(declare-fun e!1003062 () Bool)

(declare-fun b!1561982 () Bool)

(declare-fun e!1003079 () Bool)

(declare-fun inv!22261 (BalanceConc!11120) Bool)

(assert (=> b!1561982 (= e!1003069 (and e!1003079 (inv!22261 (totalInput!2504 cacheFurthestNullable!103)) e!1003062))))

(declare-fun b!1561983 () Bool)

(declare-fun res!696390 () Bool)

(assert (=> b!1561983 (=> res!696390 e!1003095)))

(declare-fun e!1003091 () Bool)

(assert (=> b!1561983 (= res!696390 e!1003091)))

(declare-fun res!696399 () Bool)

(assert (=> b!1561983 (=> (not res!696399) (not e!1003091))))

(assert (=> b!1561983 (= res!696399 lt!541042)))

(declare-fun b!1561984 () Bool)

(declare-fun e!1003073 () Bool)

(declare-fun e!1003065 () Bool)

(assert (=> b!1561984 (= e!1003073 e!1003065)))

(declare-fun b!1561985 () Bool)

(assert (=> b!1561985 (= e!1003095 (not (= (totalInput!2504 (_4!463 lt!541055)) totalInput!568)))))

(declare-fun tp!459856 () Bool)

(declare-fun e!1003086 () Bool)

(declare-fun tp!459857 () Bool)

(declare-fun e!1003077 () Bool)

(declare-fun array_inv!2041 (array!6382) Bool)

(declare-fun array_inv!2042 (array!6384) Bool)

(assert (=> b!1561986 (= e!1003077 (and tp!459866 tp!459856 tp!459857 (array_inv!2041 (_keys!2156 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) (array_inv!2042 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) e!1003086))))

(declare-fun res!696391 () Bool)

(declare-fun e!1003063 () Bool)

(assert (=> start!145022 (=> (not res!696391) (not e!1003063))))

(get-info :version)

(assert (=> start!145022 (= res!696391 ((_ is Lexer!2600) thiss!16438))))

(assert (=> start!145022 e!1003063))

(declare-fun e!1003089 () Bool)

(assert (=> start!145022 (and (inv!22261 totalInput!568) e!1003089)))

(declare-fun e!1003061 () Bool)

(declare-fun inv!22262 (CacheUp!1102) Bool)

(assert (=> start!145022 (and (inv!22262 cacheUp!755) e!1003061)))

(declare-fun inv!22263 (CacheFurthestNullable!528) Bool)

(assert (=> start!145022 (and (inv!22263 cacheFurthestNullable!103) e!1003069)))

(assert (=> start!145022 (and (inv!22261 input!1676) e!1003094)))

(declare-fun e!1003078 () Bool)

(assert (=> start!145022 e!1003078))

(declare-fun inv!22264 (CacheDown!1108) Bool)

(assert (=> start!145022 (and (inv!22264 cacheDown!768) e!1003085)))

(assert (=> start!145022 true))

(declare-fun b!1561987 () Bool)

(assert (=> b!1561987 (= e!1003091 e!1003088)))

(declare-fun res!696389 () Bool)

(assert (=> b!1561987 (=> res!696389 e!1003088)))

(assert (=> b!1561987 (= res!696389 (not (= (_1!9688 lt!541058) (_1!9687 lt!541057))))))

(declare-fun get!4876 (Option!3064) tuple2!16576)

(assert (=> b!1561987 (= lt!541057 (get!4876 lt!541044))))

(declare-fun get!4877 (Option!3065) tuple2!16578)

(assert (=> b!1561987 (= lt!541058 (get!4877 lt!541047))))

(declare-fun b!1561988 () Bool)

(declare-fun tp!459861 () Bool)

(assert (=> b!1561988 (= e!1003062 (and (inv!22260 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) tp!459861))))

(declare-fun e!1003067 () Bool)

(assert (=> b!1561989 (= e!1003068 (and e!1003067 tp!459863))))

(declare-fun b!1561990 () Bool)

(declare-fun e!1003092 () Bool)

(assert (=> b!1561990 (= e!1003065 e!1003092)))

(declare-fun b!1561991 () Bool)

(declare-fun e!1003084 () Bool)

(declare-fun e!1003082 () Bool)

(assert (=> b!1561991 (= e!1003084 e!1003082)))

(declare-fun b!1561992 () Bool)

(declare-fun matchR!1891 (Regex!4299 List!17019) Bool)

(assert (=> b!1561992 (= e!1003083 (matchR!1891 (regex!2971 rule!240) (_1!9695 lt!541045)))))

(declare-fun b!1561993 () Bool)

(declare-fun e!1003070 () Bool)

(assert (=> b!1561993 (= e!1003082 e!1003070)))

(declare-fun mapIsEmpty!8676 () Bool)

(declare-fun mapRes!8678 () Bool)

(assert (=> mapIsEmpty!8676 mapRes!8678))

(declare-fun b!1561994 () Bool)

(declare-fun e!1003090 () Bool)

(declare-fun e!1003064 () Bool)

(assert (=> b!1561994 (= e!1003090 e!1003064)))

(declare-fun tp!459862 () Bool)

(declare-fun b!1561995 () Bool)

(declare-fun e!1003076 () Bool)

(declare-fun inv!22258 (String!19593) Bool)

(declare-fun inv!22265 (TokenValueInjection!5782) Bool)

(assert (=> b!1561995 (= e!1003078 (and tp!459862 (inv!22258 (tag!3235 rule!240)) (inv!22265 (transformation!2971 rule!240)) e!1003076))))

(declare-fun mapNonEmpty!8677 () Bool)

(declare-fun tp!459859 () Bool)

(declare-fun tp!459868 () Bool)

(assert (=> mapNonEmpty!8677 (= mapRes!8676 (and tp!459859 tp!459868))))

(declare-fun mapKey!8676 () (_ BitVec 32))

(declare-fun mapRest!8678 () (Array (_ BitVec 32) List!17023))

(declare-fun mapValue!8678 () List!17023)

(assert (=> mapNonEmpty!8677 (= (arr!2838 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) (store mapRest!8678 mapKey!8676 mapValue!8678))))

(declare-fun e!1003066 () Bool)

(declare-fun e!1003074 () Bool)

(assert (=> b!1561996 (= e!1003066 (and e!1003074 tp!459870))))

(declare-fun tp!459854 () Bool)

(declare-fun tp!459864 () Bool)

(declare-fun array_inv!2043 (array!6386) Bool)

(assert (=> b!1561997 (= e!1003092 (and tp!459878 tp!459854 tp!459864 (array_inv!2041 (_keys!2157 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) (array_inv!2043 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) e!1003096))))

(declare-fun mapIsEmpty!8677 () Bool)

(assert (=> mapIsEmpty!8677 mapRes!8676))

(declare-fun e!1003071 () Bool)

(assert (=> b!1561998 (= e!1003079 (and e!1003071 tp!459860))))

(declare-fun b!1561999 () Bool)

(assert (=> b!1561999 (= e!1003075 None!3064)))

(declare-fun b!1562000 () Bool)

(declare-fun res!696396 () Bool)

(assert (=> b!1562000 (=> (not res!696396) (not e!1003063))))

(declare-fun valid!1489 (CacheFurthestNullable!528) Bool)

(assert (=> b!1562000 (= res!696396 (valid!1489 cacheFurthestNullable!103))))

(declare-fun b!1562001 () Bool)

(declare-fun e!1003080 () Bool)

(declare-fun tp!459880 () Bool)

(assert (=> b!1562001 (= e!1003080 (and tp!459880 mapRes!8677))))

(declare-fun condMapEmpty!8677 () Bool)

(declare-fun mapDefault!8676 () List!17021)

(assert (=> b!1562001 (= condMapEmpty!8677 (= (arr!2835 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!17021)) mapDefault!8676)))))

(declare-fun b!1562002 () Bool)

(assert (=> b!1562002 (= e!1003063 e!1003060)))

(declare-fun res!696403 () Bool)

(assert (=> b!1562002 (=> (not res!696403) (not e!1003060))))

(declare-fun isSuffix!389 (List!17019 List!17019) Bool)

(assert (=> b!1562002 (= res!696403 (isSuffix!389 lt!541046 (list!6521 totalInput!568)))))

(assert (=> b!1562002 (= lt!541046 (list!6521 input!1676))))

(declare-fun b!1562003 () Bool)

(declare-fun res!696393 () Bool)

(assert (=> b!1562003 (=> res!696393 e!1003095)))

(declare-fun valid!1490 (CacheUp!1102) Bool)

(assert (=> b!1562003 (= res!696393 (not (valid!1490 (_2!9694 lt!541055))))))

(declare-fun mapIsEmpty!8678 () Bool)

(assert (=> mapIsEmpty!8678 mapRes!8677))

(declare-fun b!1562004 () Bool)

(declare-fun lt!541054 () MutLongMap!1863)

(assert (=> b!1562004 (= e!1003071 (and e!1003090 ((_ is LongMap!1863) lt!541054)))))

(assert (=> b!1562004 (= lt!541054 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))

(declare-fun b!1562005 () Bool)

(assert (=> b!1562005 (= e!1003064 e!1003077)))

(declare-fun b!1562006 () Bool)

(declare-fun res!696400 () Bool)

(assert (=> b!1562006 (=> (not res!696400) (not e!1003063))))

(declare-fun valid!1491 (CacheDown!1108) Bool)

(assert (=> b!1562006 (= res!696400 (valid!1491 cacheDown!768))))

(declare-fun b!1562007 () Bool)

(declare-fun lt!541043 () MutLongMap!1861)

(assert (=> b!1562007 (= e!1003074 (and e!1003084 ((_ is LongMap!1861) lt!541043)))))

(assert (=> b!1562007 (= lt!541043 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))

(declare-fun b!1562008 () Bool)

(declare-fun lt!541048 () MutLongMap!1862)

(assert (=> b!1562008 (= e!1003067 (and e!1003073 ((_ is LongMap!1862) lt!541048)))))

(assert (=> b!1562008 (= lt!541048 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))

(declare-fun b!1562009 () Bool)

(declare-fun res!696401 () Bool)

(assert (=> b!1562009 (=> (not res!696401) (not e!1003063))))

(assert (=> b!1562009 (= res!696401 (valid!1490 cacheUp!755))))

(declare-fun mapNonEmpty!8678 () Bool)

(declare-fun tp!459874 () Bool)

(declare-fun tp!459877 () Bool)

(assert (=> mapNonEmpty!8678 (= mapRes!8678 (and tp!459874 tp!459877))))

(declare-fun mapRest!8677 () (Array (_ BitVec 32) List!17022))

(declare-fun mapKey!8678 () (_ BitVec 32))

(declare-fun mapValue!8677 () List!17022)

(assert (=> mapNonEmpty!8678 (= (arr!2837 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) (store mapRest!8677 mapKey!8678 mapValue!8677))))

(declare-fun b!1562010 () Bool)

(declare-fun res!696392 () Bool)

(assert (=> b!1562010 (=> (not res!696392) (not e!1003063))))

(declare-fun ruleValid!699 (LexerInterface!2602 Rule!5742) Bool)

(assert (=> b!1562010 (= res!696392 (ruleValid!699 thiss!16438 rule!240))))

(declare-fun b!1562011 () Bool)

(declare-fun res!696402 () Bool)

(assert (=> b!1562011 (=> (not res!696402) (not e!1003060))))

(assert (=> b!1562011 (= res!696402 (= (totalInput!2504 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1562012 () Bool)

(declare-fun res!696394 () Bool)

(assert (=> b!1562012 (=> res!696394 e!1003095)))

(assert (=> b!1562012 (= res!696394 (not (valid!1489 (_4!463 lt!541055))))))

(assert (=> b!1562013 (= e!1003076 (and tp!459879 tp!459869))))

(declare-fun tp!459875 () Bool)

(declare-fun tp!459872 () Bool)

(declare-fun array_inv!2044 (array!6380) Bool)

(assert (=> b!1562014 (= e!1003070 (and tp!459876 tp!459875 tp!459872 (array_inv!2041 (_keys!2155 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) (array_inv!2044 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) e!1003080))))

(declare-fun b!1562015 () Bool)

(declare-fun tp!459858 () Bool)

(assert (=> b!1562015 (= e!1003086 (and tp!459858 mapRes!8678))))

(declare-fun condMapEmpty!8678 () Bool)

(declare-fun mapDefault!8678 () List!17022)

(assert (=> b!1562015 (= condMapEmpty!8678 (= (arr!2837 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!17022)) mapDefault!8678)))))

(declare-fun b!1562016 () Bool)

(assert (=> b!1562016 (= e!1003061 e!1003066)))

(declare-fun b!1562017 () Bool)

(declare-fun res!696398 () Bool)

(assert (=> b!1562017 (=> res!696398 e!1003095)))

(assert (=> b!1562017 (= res!696398 (not (valid!1491 (_3!1401 lt!541055))))))

(declare-fun b!1562018 () Bool)

(declare-fun tp!459865 () Bool)

(assert (=> b!1562018 (= e!1003089 (and (inv!22260 (c!253235 totalInput!568)) tp!459865))))

(assert (= (and start!145022 res!696391) b!1562010))

(assert (= (and b!1562010 res!696392) b!1562009))

(assert (= (and b!1562009 res!696401) b!1562006))

(assert (= (and b!1562006 res!696400) b!1562000))

(assert (= (and b!1562000 res!696396) b!1562002))

(assert (= (and b!1562002 res!696403) b!1562011))

(assert (= (and b!1562011 res!696402) b!1561978))

(assert (= (and b!1561978 c!253234) b!1561999))

(assert (= (and b!1561978 (not c!253234)) b!1561979))

(assert (= (and b!1561979 (not res!696395)) b!1561992))

(assert (= (and b!1561978 (not res!696397)) b!1561983))

(assert (= (and b!1561983 res!696399) b!1561987))

(assert (= (and b!1561987 (not res!696389)) b!1561981))

(assert (= (and b!1561983 (not res!696390)) b!1562003))

(assert (= (and b!1562003 (not res!696393)) b!1562017))

(assert (= (and b!1562017 (not res!696398)) b!1562012))

(assert (= (and b!1562012 (not res!696394)) b!1561985))

(assert (= start!145022 b!1562018))

(assert (= (and b!1562001 condMapEmpty!8677) mapIsEmpty!8678))

(assert (= (and b!1562001 (not condMapEmpty!8677)) mapNonEmpty!8676))

(assert (= b!1562014 b!1562001))

(assert (= b!1561993 b!1562014))

(assert (= b!1561991 b!1561993))

(assert (= (and b!1562007 ((_ is LongMap!1861) (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))) b!1561991))

(assert (= b!1561996 b!1562007))

(assert (= (and b!1562016 ((_ is HashMap!1805) (cache!2186 cacheUp!755))) b!1561996))

(assert (= start!145022 b!1562016))

(assert (= (and b!1562015 condMapEmpty!8678) mapIsEmpty!8676))

(assert (= (and b!1562015 (not condMapEmpty!8678)) mapNonEmpty!8678))

(assert (= b!1561986 b!1562015))

(assert (= b!1562005 b!1561986))

(assert (= b!1561994 b!1562005))

(assert (= (and b!1562004 ((_ is LongMap!1863) (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))) b!1561994))

(assert (= b!1561998 b!1562004))

(assert (= (and b!1561982 ((_ is HashMap!1807) (cache!2188 cacheFurthestNullable!103))) b!1561998))

(assert (= b!1561982 b!1561988))

(assert (= start!145022 b!1561982))

(assert (= start!145022 b!1561976))

(assert (= b!1561995 b!1562013))

(assert (= start!145022 b!1561995))

(assert (= (and b!1561980 condMapEmpty!8676) mapIsEmpty!8677))

(assert (= (and b!1561980 (not condMapEmpty!8676)) mapNonEmpty!8677))

(assert (= b!1561997 b!1561980))

(assert (= b!1561990 b!1561997))

(assert (= b!1561984 b!1561990))

(assert (= (and b!1562008 ((_ is LongMap!1862) (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))) b!1561984))

(assert (= b!1561989 b!1562008))

(assert (= (and b!1561977 ((_ is HashMap!1806) (cache!2187 cacheDown!768))) b!1561989))

(assert (= start!145022 b!1561977))

(declare-fun m!1833330 () Bool)

(assert (=> b!1561978 m!1833330))

(declare-fun m!1833332 () Bool)

(assert (=> b!1561978 m!1833332))

(declare-fun m!1833334 () Bool)

(assert (=> b!1561978 m!1833334))

(declare-fun m!1833336 () Bool)

(assert (=> b!1561978 m!1833336))

(declare-fun m!1833338 () Bool)

(assert (=> b!1561978 m!1833338))

(declare-fun m!1833340 () Bool)

(assert (=> b!1562002 m!1833340))

(assert (=> b!1562002 m!1833340))

(declare-fun m!1833342 () Bool)

(assert (=> b!1562002 m!1833342))

(declare-fun m!1833344 () Bool)

(assert (=> b!1562002 m!1833344))

(declare-fun m!1833346 () Bool)

(assert (=> b!1561987 m!1833346))

(declare-fun m!1833348 () Bool)

(assert (=> b!1561987 m!1833348))

(declare-fun m!1833350 () Bool)

(assert (=> b!1562018 m!1833350))

(declare-fun m!1833352 () Bool)

(assert (=> b!1562017 m!1833352))

(declare-fun m!1833354 () Bool)

(assert (=> b!1561997 m!1833354))

(declare-fun m!1833356 () Bool)

(assert (=> b!1561997 m!1833356))

(declare-fun m!1833358 () Bool)

(assert (=> b!1562010 m!1833358))

(declare-fun m!1833360 () Bool)

(assert (=> b!1561988 m!1833360))

(declare-fun m!1833362 () Bool)

(assert (=> b!1562012 m!1833362))

(declare-fun m!1833364 () Bool)

(assert (=> b!1562009 m!1833364))

(declare-fun m!1833366 () Bool)

(assert (=> mapNonEmpty!8678 m!1833366))

(declare-fun m!1833368 () Bool)

(assert (=> mapNonEmpty!8677 m!1833368))

(declare-fun m!1833370 () Bool)

(assert (=> b!1561979 m!1833370))

(declare-fun m!1833372 () Bool)

(assert (=> b!1561979 m!1833372))

(declare-fun m!1833374 () Bool)

(assert (=> b!1561979 m!1833374))

(declare-fun m!1833376 () Bool)

(assert (=> b!1561979 m!1833376))

(declare-fun m!1833378 () Bool)

(assert (=> b!1561979 m!1833378))

(declare-fun m!1833380 () Bool)

(assert (=> b!1561979 m!1833380))

(declare-fun m!1833382 () Bool)

(assert (=> b!1561979 m!1833382))

(assert (=> b!1561979 m!1833380))

(declare-fun m!1833384 () Bool)

(assert (=> b!1561979 m!1833384))

(declare-fun m!1833386 () Bool)

(assert (=> b!1561979 m!1833386))

(declare-fun m!1833388 () Bool)

(assert (=> b!1561979 m!1833388))

(assert (=> b!1561979 m!1833384))

(declare-fun m!1833390 () Bool)

(assert (=> b!1561979 m!1833390))

(declare-fun m!1833392 () Bool)

(assert (=> b!1561979 m!1833392))

(declare-fun m!1833394 () Bool)

(assert (=> b!1561979 m!1833394))

(declare-fun m!1833396 () Bool)

(assert (=> b!1562000 m!1833396))

(declare-fun m!1833398 () Bool)

(assert (=> mapNonEmpty!8676 m!1833398))

(declare-fun m!1833400 () Bool)

(assert (=> b!1562003 m!1833400))

(declare-fun m!1833402 () Bool)

(assert (=> b!1562014 m!1833402))

(declare-fun m!1833404 () Bool)

(assert (=> b!1562014 m!1833404))

(declare-fun m!1833406 () Bool)

(assert (=> b!1562006 m!1833406))

(declare-fun m!1833408 () Bool)

(assert (=> b!1561976 m!1833408))

(declare-fun m!1833410 () Bool)

(assert (=> b!1561986 m!1833410))

(declare-fun m!1833412 () Bool)

(assert (=> b!1561986 m!1833412))

(declare-fun m!1833414 () Bool)

(assert (=> b!1561982 m!1833414))

(declare-fun m!1833416 () Bool)

(assert (=> b!1561981 m!1833416))

(declare-fun m!1833418 () Bool)

(assert (=> b!1561995 m!1833418))

(declare-fun m!1833420 () Bool)

(assert (=> b!1561995 m!1833420))

(declare-fun m!1833422 () Bool)

(assert (=> b!1561992 m!1833422))

(declare-fun m!1833424 () Bool)

(assert (=> start!145022 m!1833424))

(declare-fun m!1833426 () Bool)

(assert (=> start!145022 m!1833426))

(declare-fun m!1833428 () Bool)

(assert (=> start!145022 m!1833428))

(declare-fun m!1833430 () Bool)

(assert (=> start!145022 m!1833430))

(declare-fun m!1833432 () Bool)

(assert (=> start!145022 m!1833432))

(check-sat (not b!1562014) (not b_next!42449) (not mapNonEmpty!8677) b_and!109045 (not b!1562010) (not start!145022) b_and!109047 (not b!1561978) (not b!1561988) (not b_next!42441) (not b!1561997) (not b!1561976) b_and!109053 (not b!1561982) b_and!109051 (not b!1561980) (not b!1562012) b_and!109049 (not b_next!42445) (not b!1561981) (not b!1561995) (not b!1562003) (not b_next!42439) (not b!1562015) (not b!1562009) b_and!109057 (not b_next!42453) (not b!1561979) b_and!109055 (not b_next!42443) (not b!1562017) b_and!109059 (not b_next!42451) (not b!1562000) (not b_next!42447) (not b!1562001) (not b!1562018) (not mapNonEmpty!8678) (not b!1561986) (not b!1561992) (not b!1561987) (not b!1562002) (not mapNonEmpty!8676) (not b!1562006))
(check-sat b_and!109053 b_and!109051 (not b_next!42449) b_and!109049 (not b_next!42445) (not b_next!42439) b_and!109045 b_and!109055 b_and!109047 (not b_next!42443) (not b_next!42441) (not b_next!42447) b_and!109057 (not b_next!42453) b_and!109059 (not b_next!42451))
(get-model)

(declare-fun d!462489 () Bool)

(declare-fun res!696414 () Bool)

(declare-fun e!1003105 () Bool)

(assert (=> d!462489 (=> (not res!696414) (not e!1003105))))

(declare-fun validRegex!1722 (Regex!4299) Bool)

(assert (=> d!462489 (= res!696414 (validRegex!1722 (regex!2971 rule!240)))))

(assert (=> d!462489 (= (ruleValid!699 thiss!16438 rule!240) e!1003105)))

(declare-fun b!1562031 () Bool)

(declare-fun res!696415 () Bool)

(assert (=> b!1562031 (=> (not res!696415) (not e!1003105))))

(declare-fun nullable!1281 (Regex!4299) Bool)

(assert (=> b!1562031 (= res!696415 (not (nullable!1281 (regex!2971 rule!240))))))

(declare-fun b!1562032 () Bool)

(assert (=> b!1562032 (= e!1003105 (not (= (tag!3235 rule!240) (String!19594 ""))))))

(assert (= (and d!462489 res!696414) b!1562031))

(assert (= (and b!1562031 res!696415) b!1562032))

(declare-fun m!1833434 () Bool)

(assert (=> d!462489 m!1833434))

(declare-fun m!1833436 () Bool)

(assert (=> b!1562031 m!1833436))

(assert (=> b!1562010 d!462489))

(declare-fun d!462491 () Bool)

(declare-fun e!1003108 () Bool)

(assert (=> d!462491 e!1003108))

(declare-fun res!696418 () Bool)

(assert (=> d!462491 (=> res!696418 e!1003108)))

(declare-fun lt!541064 () Bool)

(assert (=> d!462491 (= res!696418 (not lt!541064))))

(declare-fun drop!796 (List!17019 Int) List!17019)

(assert (=> d!462491 (= lt!541064 (= lt!541046 (drop!796 (list!6521 totalInput!568) (- (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046)))))))

(assert (=> d!462491 (= (isSuffix!389 lt!541046 (list!6521 totalInput!568)) lt!541064)))

(declare-fun b!1562035 () Bool)

(assert (=> b!1562035 (= e!1003108 (>= (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046)))))

(assert (= (and d!462491 (not res!696418)) b!1562035))

(assert (=> d!462491 m!1833340))

(declare-fun m!1833438 () Bool)

(assert (=> d!462491 m!1833438))

(assert (=> d!462491 m!1833384))

(assert (=> d!462491 m!1833340))

(declare-fun m!1833440 () Bool)

(assert (=> d!462491 m!1833440))

(assert (=> b!1562035 m!1833340))

(assert (=> b!1562035 m!1833438))

(assert (=> b!1562035 m!1833384))

(assert (=> b!1562002 d!462491))

(declare-fun d!462493 () Bool)

(declare-fun list!6522 (Conc!5589) List!17019)

(assert (=> d!462493 (= (list!6521 totalInput!568) (list!6522 (c!253235 totalInput!568)))))

(declare-fun bs!388931 () Bool)

(assert (= bs!388931 d!462493))

(declare-fun m!1833442 () Bool)

(assert (=> bs!388931 m!1833442))

(assert (=> b!1562002 d!462493))

(declare-fun d!462495 () Bool)

(assert (=> d!462495 (= (list!6521 input!1676) (list!6522 (c!253235 input!1676)))))

(declare-fun bs!388932 () Bool)

(assert (= bs!388932 d!462495))

(declare-fun m!1833444 () Bool)

(assert (=> bs!388932 m!1833444))

(assert (=> b!1562002 d!462495))

(declare-fun d!462497 () Bool)

(declare-fun validCacheMapFurthestNullable!85 (MutableMap!1807 BalanceConc!11120) Bool)

(assert (=> d!462497 (= (valid!1489 cacheFurthestNullable!103) (validCacheMapFurthestNullable!85 (cache!2188 cacheFurthestNullable!103) (totalInput!2504 cacheFurthestNullable!103)))))

(declare-fun bs!388933 () Bool)

(assert (= bs!388933 d!462497))

(declare-fun m!1833446 () Bool)

(assert (=> bs!388933 m!1833446))

(assert (=> b!1562000 d!462497))

(declare-fun d!462499 () Bool)

(declare-fun isBalanced!1654 (Conc!5589) Bool)

(assert (=> d!462499 (= (inv!22261 (totalInput!2504 cacheFurthestNullable!103)) (isBalanced!1654 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))

(declare-fun bs!388934 () Bool)

(assert (= bs!388934 d!462499))

(declare-fun m!1833448 () Bool)

(assert (=> bs!388934 m!1833448))

(assert (=> b!1561982 d!462499))

(declare-fun d!462501 () Bool)

(declare-fun c!253239 () Bool)

(assert (=> d!462501 (= c!253239 ((_ is Node!5589) (c!253235 totalInput!568)))))

(declare-fun e!1003113 () Bool)

(assert (=> d!462501 (= (inv!22260 (c!253235 totalInput!568)) e!1003113)))

(declare-fun b!1562042 () Bool)

(declare-fun inv!22266 (Conc!5589) Bool)

(assert (=> b!1562042 (= e!1003113 (inv!22266 (c!253235 totalInput!568)))))

(declare-fun b!1562043 () Bool)

(declare-fun e!1003114 () Bool)

(assert (=> b!1562043 (= e!1003113 e!1003114)))

(declare-fun res!696421 () Bool)

(assert (=> b!1562043 (= res!696421 (not ((_ is Leaf!8284) (c!253235 totalInput!568))))))

(assert (=> b!1562043 (=> res!696421 e!1003114)))

(declare-fun b!1562044 () Bool)

(declare-fun inv!22267 (Conc!5589) Bool)

(assert (=> b!1562044 (= e!1003114 (inv!22267 (c!253235 totalInput!568)))))

(assert (= (and d!462501 c!253239) b!1562042))

(assert (= (and d!462501 (not c!253239)) b!1562043))

(assert (= (and b!1562043 (not res!696421)) b!1562044))

(declare-fun m!1833450 () Bool)

(assert (=> b!1562042 m!1833450))

(declare-fun m!1833452 () Bool)

(assert (=> b!1562044 m!1833452))

(assert (=> b!1562018 d!462501))

(declare-fun d!462503 () Bool)

(assert (=> d!462503 (= (list!6521 (_2!9688 lt!541058)) (list!6522 (c!253235 (_2!9688 lt!541058))))))

(declare-fun bs!388935 () Bool)

(assert (= bs!388935 d!462503))

(declare-fun m!1833454 () Bool)

(assert (=> bs!388935 m!1833454))

(assert (=> b!1561981 d!462503))

(declare-fun d!462505 () Bool)

(declare-fun validCacheMapUp!172 (MutableMap!1805) Bool)

(assert (=> d!462505 (= (valid!1490 cacheUp!755) (validCacheMapUp!172 (cache!2186 cacheUp!755)))))

(declare-fun bs!388936 () Bool)

(assert (= bs!388936 d!462505))

(declare-fun m!1833456 () Bool)

(assert (=> bs!388936 m!1833456))

(assert (=> b!1562009 d!462505))

(declare-fun b!1562073 () Bool)

(declare-fun e!1003135 () Bool)

(assert (=> b!1562073 (= e!1003135 (nullable!1281 (regex!2971 rule!240)))))

(declare-fun d!462507 () Bool)

(declare-fun e!1003134 () Bool)

(assert (=> d!462507 e!1003134))

(declare-fun c!253248 () Bool)

(assert (=> d!462507 (= c!253248 ((_ is EmptyExpr!4299) (regex!2971 rule!240)))))

(declare-fun lt!541067 () Bool)

(assert (=> d!462507 (= lt!541067 e!1003135)))

(declare-fun c!253246 () Bool)

(assert (=> d!462507 (= c!253246 (isEmpty!10171 (_1!9695 lt!541045)))))

(assert (=> d!462507 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462507 (= (matchR!1891 (regex!2971 rule!240) (_1!9695 lt!541045)) lt!541067)))

(declare-fun b!1562074 () Bool)

(declare-fun e!1003133 () Bool)

(assert (=> b!1562074 (= e!1003133 (not lt!541067))))

(declare-fun b!1562075 () Bool)

(declare-fun derivativeStep!1032 (Regex!4299 C!8776) Regex!4299)

(declare-fun head!3123 (List!17019) C!8776)

(declare-fun tail!2218 (List!17019) List!17019)

(assert (=> b!1562075 (= e!1003135 (matchR!1891 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045))) (tail!2218 (_1!9695 lt!541045))))))

(declare-fun b!1562076 () Bool)

(declare-fun e!1003132 () Bool)

(assert (=> b!1562076 (= e!1003132 (= (head!3123 (_1!9695 lt!541045)) (c!253236 (regex!2971 rule!240))))))

(declare-fun b!1562077 () Bool)

(declare-fun res!696439 () Bool)

(assert (=> b!1562077 (=> (not res!696439) (not e!1003132))))

(assert (=> b!1562077 (= res!696439 (isEmpty!10171 (tail!2218 (_1!9695 lt!541045))))))

(declare-fun b!1562078 () Bool)

(declare-fun res!696438 () Bool)

(declare-fun e!1003131 () Bool)

(assert (=> b!1562078 (=> res!696438 e!1003131)))

(assert (=> b!1562078 (= res!696438 e!1003132)))

(declare-fun res!696440 () Bool)

(assert (=> b!1562078 (=> (not res!696440) (not e!1003132))))

(assert (=> b!1562078 (= res!696440 lt!541067)))

(declare-fun b!1562079 () Bool)

(declare-fun call!102291 () Bool)

(assert (=> b!1562079 (= e!1003134 (= lt!541067 call!102291))))

(declare-fun b!1562080 () Bool)

(declare-fun e!1003130 () Bool)

(declare-fun e!1003129 () Bool)

(assert (=> b!1562080 (= e!1003130 e!1003129)))

(declare-fun res!696443 () Bool)

(assert (=> b!1562080 (=> res!696443 e!1003129)))

(assert (=> b!1562080 (= res!696443 call!102291)))

(declare-fun b!1562081 () Bool)

(declare-fun res!696445 () Bool)

(assert (=> b!1562081 (=> res!696445 e!1003129)))

(assert (=> b!1562081 (= res!696445 (not (isEmpty!10171 (tail!2218 (_1!9695 lt!541045)))))))

(declare-fun b!1562082 () Bool)

(declare-fun res!696444 () Bool)

(assert (=> b!1562082 (=> res!696444 e!1003131)))

(assert (=> b!1562082 (= res!696444 (not ((_ is ElementMatch!4299) (regex!2971 rule!240))))))

(assert (=> b!1562082 (= e!1003133 e!1003131)))

(declare-fun b!1562083 () Bool)

(assert (=> b!1562083 (= e!1003134 e!1003133)))

(declare-fun c!253247 () Bool)

(assert (=> b!1562083 (= c!253247 ((_ is EmptyLang!4299) (regex!2971 rule!240)))))

(declare-fun b!1562084 () Bool)

(assert (=> b!1562084 (= e!1003131 e!1003130)))

(declare-fun res!696441 () Bool)

(assert (=> b!1562084 (=> (not res!696441) (not e!1003130))))

(assert (=> b!1562084 (= res!696441 (not lt!541067))))

(declare-fun bm!102286 () Bool)

(assert (=> bm!102286 (= call!102291 (isEmpty!10171 (_1!9695 lt!541045)))))

(declare-fun b!1562085 () Bool)

(assert (=> b!1562085 (= e!1003129 (not (= (head!3123 (_1!9695 lt!541045)) (c!253236 (regex!2971 rule!240)))))))

(declare-fun b!1562086 () Bool)

(declare-fun res!696442 () Bool)

(assert (=> b!1562086 (=> (not res!696442) (not e!1003132))))

(assert (=> b!1562086 (= res!696442 (not call!102291))))

(assert (= (and d!462507 c!253246) b!1562073))

(assert (= (and d!462507 (not c!253246)) b!1562075))

(assert (= (and d!462507 c!253248) b!1562079))

(assert (= (and d!462507 (not c!253248)) b!1562083))

(assert (= (and b!1562083 c!253247) b!1562074))

(assert (= (and b!1562083 (not c!253247)) b!1562082))

(assert (= (and b!1562082 (not res!696444)) b!1562078))

(assert (= (and b!1562078 res!696440) b!1562086))

(assert (= (and b!1562086 res!696442) b!1562077))

(assert (= (and b!1562077 res!696439) b!1562076))

(assert (= (and b!1562078 (not res!696438)) b!1562084))

(assert (= (and b!1562084 res!696441) b!1562080))

(assert (= (and b!1562080 (not res!696443)) b!1562081))

(assert (= (and b!1562081 (not res!696445)) b!1562085))

(assert (= (or b!1562079 b!1562080 b!1562086) bm!102286))

(declare-fun m!1833458 () Bool)

(assert (=> b!1562077 m!1833458))

(assert (=> b!1562077 m!1833458))

(declare-fun m!1833460 () Bool)

(assert (=> b!1562077 m!1833460))

(declare-fun m!1833462 () Bool)

(assert (=> b!1562075 m!1833462))

(assert (=> b!1562075 m!1833462))

(declare-fun m!1833464 () Bool)

(assert (=> b!1562075 m!1833464))

(assert (=> b!1562075 m!1833458))

(assert (=> b!1562075 m!1833464))

(assert (=> b!1562075 m!1833458))

(declare-fun m!1833466 () Bool)

(assert (=> b!1562075 m!1833466))

(assert (=> b!1562076 m!1833462))

(assert (=> b!1562081 m!1833458))

(assert (=> b!1562081 m!1833458))

(assert (=> b!1562081 m!1833460))

(assert (=> b!1562073 m!1833436))

(assert (=> b!1562085 m!1833462))

(assert (=> bm!102286 m!1833378))

(assert (=> d!462507 m!1833378))

(assert (=> d!462507 m!1833434))

(assert (=> b!1561992 d!462507))

(declare-fun d!462509 () Bool)

(declare-fun lt!541070 () Int)

(assert (=> d!462509 (>= lt!541070 0)))

(declare-fun e!1003138 () Int)

(assert (=> d!462509 (= lt!541070 e!1003138)))

(declare-fun c!253251 () Bool)

(assert (=> d!462509 (= c!253251 ((_ is Nil!16951) lt!541046))))

(assert (=> d!462509 (= (size!13762 lt!541046) lt!541070)))

(declare-fun b!1562091 () Bool)

(assert (=> b!1562091 (= e!1003138 0)))

(declare-fun b!1562092 () Bool)

(assert (=> b!1562092 (= e!1003138 (+ 1 (size!13762 (t!141568 lt!541046))))))

(assert (= (and d!462509 c!253251) b!1562091))

(assert (= (and d!462509 (not c!253251)) b!1562092))

(declare-fun m!1833468 () Bool)

(assert (=> b!1562092 m!1833468))

(assert (=> b!1561979 d!462509))

(declare-fun d!462511 () Bool)

(declare-fun lt!541071 () Int)

(assert (=> d!462511 (>= lt!541071 0)))

(declare-fun e!1003139 () Int)

(assert (=> d!462511 (= lt!541071 e!1003139)))

(declare-fun c!253252 () Bool)

(assert (=> d!462511 (= c!253252 ((_ is Nil!16951) Nil!16951))))

(assert (=> d!462511 (= (size!13762 Nil!16951) lt!541071)))

(declare-fun b!1562093 () Bool)

(assert (=> b!1562093 (= e!1003139 0)))

(declare-fun b!1562094 () Bool)

(assert (=> b!1562094 (= e!1003139 (+ 1 (size!13762 (t!141568 Nil!16951))))))

(assert (= (and d!462511 c!253252) b!1562093))

(assert (= (and d!462511 (not c!253252)) b!1562094))

(declare-fun m!1833470 () Bool)

(assert (=> b!1562094 m!1833470))

(assert (=> b!1561979 d!462511))

(declare-fun d!462513 () Bool)

(assert (=> d!462513 (= (isEmpty!10171 (_1!9695 lt!541045)) ((_ is Nil!16951) (_1!9695 lt!541045)))))

(assert (=> b!1561979 d!462513))

(declare-fun d!462515 () Bool)

(declare-fun fromListB!771 (List!17019) BalanceConc!11120)

(assert (=> d!462515 (= (seqFromList!1787 lt!541050) (fromListB!771 lt!541050))))

(declare-fun bs!388937 () Bool)

(assert (= bs!388937 d!462515))

(declare-fun m!1833472 () Bool)

(assert (=> bs!388937 m!1833472))

(assert (=> b!1561979 d!462515))

(declare-fun d!462517 () Bool)

(declare-fun e!1003142 () Bool)

(assert (=> d!462517 e!1003142))

(declare-fun res!696448 () Bool)

(assert (=> d!462517 (=> res!696448 e!1003142)))

(assert (=> d!462517 (= res!696448 (isEmpty!10171 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(declare-fun lt!541074 () Unit!26158)

(declare-fun choose!9322 (Regex!4299 List!17019) Unit!26158)

(assert (=> d!462517 (= lt!541074 (choose!9322 (regex!2971 rule!240) lt!541046))))

(assert (=> d!462517 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462517 (= (longestMatchIsAcceptedByMatchOrIsEmpty!329 (regex!2971 rule!240) lt!541046) lt!541074)))

(declare-fun b!1562097 () Bool)

(assert (=> b!1562097 (= e!1003142 (matchR!1891 (regex!2971 rule!240) (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(assert (= (and d!462517 (not res!696448)) b!1562097))

(assert (=> d!462517 m!1833434))

(assert (=> d!462517 m!1833380))

(assert (=> d!462517 m!1833384))

(assert (=> d!462517 m!1833380))

(assert (=> d!462517 m!1833384))

(assert (=> d!462517 m!1833386))

(declare-fun m!1833474 () Bool)

(assert (=> d!462517 m!1833474))

(declare-fun m!1833476 () Bool)

(assert (=> d!462517 m!1833476))

(assert (=> b!1562097 m!1833380))

(assert (=> b!1562097 m!1833384))

(assert (=> b!1562097 m!1833380))

(assert (=> b!1562097 m!1833384))

(assert (=> b!1562097 m!1833386))

(declare-fun m!1833478 () Bool)

(assert (=> b!1562097 m!1833478))

(assert (=> b!1561979 d!462517))

(declare-fun d!462519 () Bool)

(declare-fun dynLambda!7559 (Int BalanceConc!11120) TokenValue!3061)

(assert (=> d!462519 (= (apply!4123 (transformation!2971 rule!240) (_1!9693 (_1!9694 lt!541055))) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))

(declare-fun b_lambda!49137 () Bool)

(assert (=> (not b_lambda!49137) (not d!462519)))

(declare-fun t!141574 () Bool)

(declare-fun tb!87399 () Bool)

(assert (=> (and b!1562013 (= (toValue!4352 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))) t!141574) tb!87399))

(declare-fun result!105710 () Bool)

(declare-fun inv!21 (TokenValue!3061) Bool)

(assert (=> tb!87399 (= result!105710 (inv!21 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun m!1833480 () Bool)

(assert (=> tb!87399 m!1833480))

(assert (=> d!462519 t!141574))

(declare-fun b_and!109061 () Bool)

(assert (= b_and!109057 (and (=> t!141574 result!105710) b_and!109061)))

(declare-fun m!1833482 () Bool)

(assert (=> d!462519 m!1833482))

(assert (=> b!1561979 d!462519))

(declare-fun d!462521 () Bool)

(declare-fun lt!541077 () Int)

(assert (=> d!462521 (= lt!541077 (size!13762 (list!6521 (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun size!13764 (Conc!5589) Int)

(assert (=> d!462521 (= lt!541077 (size!13764 (c!253235 (_1!9693 (_1!9694 lt!541055)))))))

(assert (=> d!462521 (= (size!13763 (_1!9693 (_1!9694 lt!541055))) lt!541077)))

(declare-fun bs!388938 () Bool)

(assert (= bs!388938 d!462521))

(assert (=> bs!388938 m!1833376))

(assert (=> bs!388938 m!1833376))

(declare-fun m!1833484 () Bool)

(assert (=> bs!388938 m!1833484))

(declare-fun m!1833486 () Bool)

(assert (=> bs!388938 m!1833486))

(assert (=> b!1561979 d!462521))

(declare-fun b!1562106 () Bool)

(declare-fun e!1003150 () Bool)

(assert (=> b!1562106 (= e!1003150 true)))

(declare-fun d!462523 () Bool)

(assert (=> d!462523 e!1003150))

(assert (= d!462523 b!1562106))

(declare-fun lambda!66071 () Int)

(declare-fun order!10051 () Int)

(declare-fun dynLambda!7560 (Int Int) Int)

(assert (=> b!1562106 (< (dynLambda!7556 order!10045 (toValue!4352 (transformation!2971 rule!240))) (dynLambda!7560 order!10051 lambda!66071))))

(assert (=> b!1562106 (< (dynLambda!7558 order!10049 (toChars!4211 (transformation!2971 rule!240))) (dynLambda!7560 order!10051 lambda!66071))))

(assert (=> d!462523 (= (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))

(declare-fun lt!541080 () Unit!26158)

(declare-fun Forall2of!50 (Int BalanceConc!11120 BalanceConc!11120) Unit!26158)

(assert (=> d!462523 (= lt!541080 (Forall2of!50 lambda!66071 (_1!9693 (_1!9694 lt!541055)) lt!541056))))

(assert (=> d!462523 (= (list!6521 (_1!9693 (_1!9694 lt!541055))) (list!6521 lt!541056))))

(assert (=> d!462523 (= (lemmaEqSameImage!159 (transformation!2971 rule!240) (_1!9693 (_1!9694 lt!541055)) lt!541056) lt!541080)))

(declare-fun b_lambda!49139 () Bool)

(assert (=> (not b_lambda!49139) (not d!462523)))

(assert (=> d!462523 t!141574))

(declare-fun b_and!109063 () Bool)

(assert (= b_and!109061 (and (=> t!141574 result!105710) b_and!109063)))

(declare-fun b_lambda!49141 () Bool)

(assert (=> (not b_lambda!49141) (not d!462523)))

(declare-fun t!141576 () Bool)

(declare-fun tb!87401 () Bool)

(assert (=> (and b!1562013 (= (toValue!4352 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))) t!141576) tb!87401))

(declare-fun result!105714 () Bool)

(assert (=> tb!87401 (= result!105714 (inv!21 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))

(declare-fun m!1833488 () Bool)

(assert (=> tb!87401 m!1833488))

(assert (=> d!462523 t!141576))

(declare-fun b_and!109065 () Bool)

(assert (= b_and!109063 (and (=> t!141576 result!105714) b_and!109065)))

(assert (=> d!462523 m!1833482))

(declare-fun m!1833490 () Bool)

(assert (=> d!462523 m!1833490))

(declare-fun m!1833492 () Bool)

(assert (=> d!462523 m!1833492))

(assert (=> d!462523 m!1833376))

(declare-fun m!1833494 () Bool)

(assert (=> d!462523 m!1833494))

(assert (=> b!1561979 d!462523))

(declare-fun d!462525 () Bool)

(declare-fun dynLambda!7561 (Int BalanceConc!11120) Bool)

(assert (=> d!462525 (dynLambda!7561 lambda!66068 (_1!9693 (_1!9694 lt!541055)))))

(declare-fun lt!541083 () Unit!26158)

(declare-fun choose!9323 (Int BalanceConc!11120) Unit!26158)

(assert (=> d!462525 (= lt!541083 (choose!9323 lambda!66068 (_1!9693 (_1!9694 lt!541055))))))

(declare-fun Forall!621 (Int) Bool)

(assert (=> d!462525 (Forall!621 lambda!66068)))

(assert (=> d!462525 (= (ForallOf!224 lambda!66068 (_1!9693 (_1!9694 lt!541055))) lt!541083)))

(declare-fun b_lambda!49143 () Bool)

(assert (=> (not b_lambda!49143) (not d!462525)))

(declare-fun bs!388939 () Bool)

(assert (= bs!388939 d!462525))

(declare-fun m!1833496 () Bool)

(assert (=> bs!388939 m!1833496))

(declare-fun m!1833498 () Bool)

(assert (=> bs!388939 m!1833498))

(declare-fun m!1833500 () Bool)

(assert (=> bs!388939 m!1833500))

(assert (=> b!1561979 d!462525))

(declare-fun d!462527 () Bool)

(assert (=> d!462527 (= (list!6521 (_1!9693 (_1!9694 lt!541055))) (list!6522 (c!253235 (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun bs!388940 () Bool)

(assert (= bs!388940 d!462527))

(declare-fun m!1833502 () Bool)

(assert (=> bs!388940 m!1833502))

(assert (=> b!1561979 d!462527))

(declare-fun d!462529 () Bool)

(assert (=> d!462529 (dynLambda!7561 lambda!66068 lt!541056)))

(declare-fun lt!541084 () Unit!26158)

(assert (=> d!462529 (= lt!541084 (choose!9323 lambda!66068 lt!541056))))

(assert (=> d!462529 (Forall!621 lambda!66068)))

(assert (=> d!462529 (= (ForallOf!224 lambda!66068 lt!541056) lt!541084)))

(declare-fun b_lambda!49145 () Bool)

(assert (=> (not b_lambda!49145) (not d!462529)))

(declare-fun bs!388941 () Bool)

(assert (= bs!388941 d!462529))

(declare-fun m!1833504 () Bool)

(assert (=> bs!388941 m!1833504))

(declare-fun m!1833506 () Bool)

(assert (=> bs!388941 m!1833506))

(assert (=> bs!388941 m!1833500))

(assert (=> b!1561979 d!462529))

(declare-fun d!462531 () Bool)

(declare-fun e!1003154 () Bool)

(assert (=> d!462531 e!1003154))

(declare-fun res!696453 () Bool)

(assert (=> d!462531 (=> (not res!696453) (not e!1003154))))

(declare-fun semiInverseModEq!1126 (Int Int) Bool)

(assert (=> d!462531 (= res!696453 (semiInverseModEq!1126 (toChars!4211 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))))))

(declare-fun Unit!26160 () Unit!26158)

(assert (=> d!462531 (= (lemmaInv!439 (transformation!2971 rule!240)) Unit!26160)))

(declare-fun b!1562109 () Bool)

(declare-fun equivClasses!1067 (Int Int) Bool)

(assert (=> b!1562109 (= e!1003154 (equivClasses!1067 (toChars!4211 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))))))

(assert (= (and d!462531 res!696453) b!1562109))

(declare-fun m!1833508 () Bool)

(assert (=> d!462531 m!1833508))

(declare-fun m!1833510 () Bool)

(assert (=> b!1562109 m!1833510))

(assert (=> b!1561979 d!462531))

(declare-fun b!1562138 () Bool)

(declare-fun e!1003178 () Unit!26158)

(declare-fun Unit!26161 () Unit!26158)

(assert (=> b!1562138 (= e!1003178 Unit!26161)))

(declare-fun lt!541149 () Unit!26158)

(declare-fun call!102309 () Unit!26158)

(assert (=> b!1562138 (= lt!541149 call!102309)))

(declare-fun call!102314 () Bool)

(assert (=> b!1562138 call!102314))

(declare-fun lt!541161 () Unit!26158)

(assert (=> b!1562138 (= lt!541161 lt!541149)))

(declare-fun lt!541158 () Unit!26158)

(declare-fun call!102308 () Unit!26158)

(assert (=> b!1562138 (= lt!541158 call!102308)))

(assert (=> b!1562138 (= lt!541046 Nil!16951)))

(declare-fun lt!541155 () Unit!26158)

(assert (=> b!1562138 (= lt!541155 lt!541158)))

(assert (=> b!1562138 false))

(declare-fun b!1562139 () Bool)

(declare-fun e!1003173 () Bool)

(declare-fun e!1003174 () Bool)

(assert (=> b!1562139 (= e!1003173 e!1003174)))

(declare-fun res!696458 () Bool)

(assert (=> b!1562139 (=> res!696458 e!1003174)))

(declare-fun lt!541165 () tuple2!16586)

(assert (=> b!1562139 (= res!696458 (isEmpty!10171 (_1!9695 lt!541165)))))

(declare-fun b!1562140 () Bool)

(declare-fun e!1003176 () tuple2!16586)

(declare-fun lt!541145 () tuple2!16586)

(assert (=> b!1562140 (= e!1003176 lt!541145)))

(declare-fun bm!102303 () Bool)

(declare-fun lemmaIsPrefixRefl!900 (List!17019 List!17019) Unit!26158)

(assert (=> bm!102303 (= call!102309 (lemmaIsPrefixRefl!900 lt!541046 lt!541046))))

(declare-fun b!1562141 () Bool)

(declare-fun e!1003177 () tuple2!16586)

(assert (=> b!1562141 (= e!1003177 (tuple2!16587 Nil!16951 Nil!16951))))

(declare-fun bm!102304 () Bool)

(declare-fun call!102310 () Bool)

(assert (=> bm!102304 (= call!102310 (nullable!1281 (regex!2971 rule!240)))))

(declare-fun b!1562142 () Bool)

(declare-fun e!1003171 () tuple2!16586)

(assert (=> b!1562142 (= e!1003171 e!1003176)))

(declare-fun call!102311 () tuple2!16586)

(assert (=> b!1562142 (= lt!541145 call!102311)))

(declare-fun c!253266 () Bool)

(assert (=> b!1562142 (= c!253266 (isEmpty!10171 (_1!9695 lt!541145)))))

(declare-fun d!462533 () Bool)

(assert (=> d!462533 e!1003173))

(declare-fun res!696459 () Bool)

(assert (=> d!462533 (=> (not res!696459) (not e!1003173))))

(declare-fun ++!4424 (List!17019 List!17019) List!17019)

(assert (=> d!462533 (= res!696459 (= (++!4424 (_1!9695 lt!541165) (_2!9695 lt!541165)) lt!541046))))

(declare-fun e!1003175 () tuple2!16586)

(assert (=> d!462533 (= lt!541165 e!1003175)))

(declare-fun c!253267 () Bool)

(declare-fun lostCause!398 (Regex!4299) Bool)

(assert (=> d!462533 (= c!253267 (lostCause!398 (regex!2971 rule!240)))))

(declare-fun lt!541147 () Unit!26158)

(declare-fun Unit!26162 () Unit!26158)

(assert (=> d!462533 (= lt!541147 Unit!26162)))

(declare-fun getSuffix!680 (List!17019 List!17019) List!17019)

(assert (=> d!462533 (= (getSuffix!680 lt!541046 Nil!16951) lt!541046)))

(declare-fun lt!541163 () Unit!26158)

(declare-fun lt!541157 () Unit!26158)

(assert (=> d!462533 (= lt!541163 lt!541157)))

(declare-fun lt!541151 () List!17019)

(assert (=> d!462533 (= lt!541046 lt!541151)))

(declare-fun lemmaSamePrefixThenSameSuffix!632 (List!17019 List!17019 List!17019 List!17019 List!17019) Unit!26158)

(assert (=> d!462533 (= lt!541157 (lemmaSamePrefixThenSameSuffix!632 Nil!16951 lt!541046 Nil!16951 lt!541151 lt!541046))))

(assert (=> d!462533 (= lt!541151 (getSuffix!680 lt!541046 Nil!16951))))

(declare-fun lt!541142 () Unit!26158)

(declare-fun lt!541146 () Unit!26158)

(assert (=> d!462533 (= lt!541142 lt!541146)))

(declare-fun isPrefix!1270 (List!17019 List!17019) Bool)

(assert (=> d!462533 (isPrefix!1270 Nil!16951 (++!4424 Nil!16951 lt!541046))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!795 (List!17019 List!17019) Unit!26158)

(assert (=> d!462533 (= lt!541146 (lemmaConcatTwoListThenFirstIsPrefix!795 Nil!16951 lt!541046))))

(assert (=> d!462533 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462533 (= (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)) lt!541165)))

(declare-fun b!1562143 () Bool)

(assert (=> b!1562143 (= e!1003175 (tuple2!16587 Nil!16951 lt!541046))))

(declare-fun call!102312 () Regex!4299)

(declare-fun lt!541153 () List!17019)

(declare-fun call!102315 () List!17019)

(declare-fun bm!102305 () Bool)

(assert (=> bm!102305 (= call!102311 (findLongestMatchInner!345 call!102312 lt!541153 (+ (size!13762 Nil!16951) 1) call!102315 lt!541046 (size!13762 lt!541046)))))

(declare-fun b!1562144 () Bool)

(assert (=> b!1562144 (= e!1003171 call!102311)))

(declare-fun b!1562145 () Bool)

(declare-fun c!253268 () Bool)

(assert (=> b!1562145 (= c!253268 call!102310)))

(declare-fun lt!541164 () Unit!26158)

(declare-fun lt!541160 () Unit!26158)

(assert (=> b!1562145 (= lt!541164 lt!541160)))

(declare-fun lt!541150 () C!8776)

(declare-fun lt!541162 () List!17019)

(assert (=> b!1562145 (= (++!4424 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951)) lt!541162) lt!541046)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!449 (List!17019 C!8776 List!17019 List!17019) Unit!26158)

(assert (=> b!1562145 (= lt!541160 (lemmaMoveElementToOtherListKeepsConcatEq!449 Nil!16951 lt!541150 lt!541162 lt!541046))))

(assert (=> b!1562145 (= lt!541162 (tail!2218 lt!541046))))

(assert (=> b!1562145 (= lt!541150 (head!3123 lt!541046))))

(declare-fun lt!541144 () Unit!26158)

(declare-fun lt!541152 () Unit!26158)

(assert (=> b!1562145 (= lt!541144 lt!541152)))

(assert (=> b!1562145 (isPrefix!1270 (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951)) lt!541046)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!123 (List!17019 List!17019) Unit!26158)

(assert (=> b!1562145 (= lt!541152 (lemmaAddHeadSuffixToPrefixStillPrefix!123 Nil!16951 lt!541046))))

(declare-fun lt!541167 () Unit!26158)

(declare-fun lt!541154 () Unit!26158)

(assert (=> b!1562145 (= lt!541167 lt!541154)))

(assert (=> b!1562145 (= lt!541154 (lemmaAddHeadSuffixToPrefixStillPrefix!123 Nil!16951 lt!541046))))

(assert (=> b!1562145 (= lt!541153 (++!4424 Nil!16951 (Cons!16951 (head!3123 lt!541046) Nil!16951)))))

(declare-fun lt!541148 () Unit!26158)

(assert (=> b!1562145 (= lt!541148 e!1003178)))

(declare-fun c!253270 () Bool)

(assert (=> b!1562145 (= c!253270 (= (size!13762 Nil!16951) (size!13762 lt!541046)))))

(declare-fun lt!541156 () Unit!26158)

(declare-fun lt!541166 () Unit!26158)

(assert (=> b!1562145 (= lt!541156 lt!541166)))

(assert (=> b!1562145 (<= (size!13762 Nil!16951) (size!13762 lt!541046))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!124 (List!17019 List!17019) Unit!26158)

(assert (=> b!1562145 (= lt!541166 (lemmaIsPrefixThenSmallerEqSize!124 Nil!16951 lt!541046))))

(declare-fun e!1003172 () tuple2!16586)

(assert (=> b!1562145 (= e!1003172 e!1003171)))

(declare-fun b!1562146 () Bool)

(declare-fun c!253265 () Bool)

(assert (=> b!1562146 (= c!253265 call!102310)))

(declare-fun lt!541141 () Unit!26158)

(declare-fun lt!541143 () Unit!26158)

(assert (=> b!1562146 (= lt!541141 lt!541143)))

(assert (=> b!1562146 (= lt!541046 Nil!16951)))

(assert (=> b!1562146 (= lt!541143 call!102308)))

(declare-fun lt!541168 () Unit!26158)

(declare-fun lt!541159 () Unit!26158)

(assert (=> b!1562146 (= lt!541168 lt!541159)))

(assert (=> b!1562146 call!102314))

(assert (=> b!1562146 (= lt!541159 call!102309)))

(assert (=> b!1562146 (= e!1003172 e!1003177)))

(declare-fun bm!102306 () Bool)

(declare-fun call!102313 () C!8776)

(assert (=> bm!102306 (= call!102312 (derivativeStep!1032 (regex!2971 rule!240) call!102313))))

(declare-fun b!1562147 () Bool)

(declare-fun Unit!26163 () Unit!26158)

(assert (=> b!1562147 (= e!1003178 Unit!26163)))

(declare-fun b!1562148 () Bool)

(assert (=> b!1562148 (= e!1003174 (>= (size!13762 (_1!9695 lt!541165)) (size!13762 Nil!16951)))))

(declare-fun bm!102307 () Bool)

(assert (=> bm!102307 (= call!102315 (tail!2218 lt!541046))))

(declare-fun bm!102308 () Bool)

(assert (=> bm!102308 (= call!102314 (isPrefix!1270 lt!541046 lt!541046))))

(declare-fun b!1562149 () Bool)

(assert (=> b!1562149 (= e!1003176 (tuple2!16587 Nil!16951 lt!541046))))

(declare-fun bm!102309 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!134 (List!17019 List!17019 List!17019) Unit!26158)

(assert (=> bm!102309 (= call!102308 (lemmaIsPrefixSameLengthThenSameList!134 lt!541046 Nil!16951 lt!541046))))

(declare-fun b!1562150 () Bool)

(assert (=> b!1562150 (= e!1003177 (tuple2!16587 Nil!16951 lt!541046))))

(declare-fun b!1562151 () Bool)

(assert (=> b!1562151 (= e!1003175 e!1003172)))

(declare-fun c!253269 () Bool)

(assert (=> b!1562151 (= c!253269 (= (size!13762 Nil!16951) (size!13762 lt!541046)))))

(declare-fun bm!102310 () Bool)

(assert (=> bm!102310 (= call!102313 (head!3123 lt!541046))))

(assert (= (and d!462533 c!253267) b!1562143))

(assert (= (and d!462533 (not c!253267)) b!1562151))

(assert (= (and b!1562151 c!253269) b!1562146))

(assert (= (and b!1562151 (not c!253269)) b!1562145))

(assert (= (and b!1562146 c!253265) b!1562141))

(assert (= (and b!1562146 (not c!253265)) b!1562150))

(assert (= (and b!1562145 c!253270) b!1562138))

(assert (= (and b!1562145 (not c!253270)) b!1562147))

(assert (= (and b!1562145 c!253268) b!1562142))

(assert (= (and b!1562145 (not c!253268)) b!1562144))

(assert (= (and b!1562142 c!253266) b!1562149))

(assert (= (and b!1562142 (not c!253266)) b!1562140))

(assert (= (or b!1562142 b!1562144) bm!102307))

(assert (= (or b!1562142 b!1562144) bm!102310))

(assert (= (or b!1562142 b!1562144) bm!102306))

(assert (= (or b!1562142 b!1562144) bm!102305))

(assert (= (or b!1562146 b!1562138) bm!102309))

(assert (= (or b!1562146 b!1562138) bm!102303))

(assert (= (or b!1562146 b!1562145) bm!102304))

(assert (= (or b!1562146 b!1562138) bm!102308))

(assert (= (and d!462533 res!696459) b!1562139))

(assert (= (and b!1562139 (not res!696458)) b!1562148))

(declare-fun m!1833512 () Bool)

(assert (=> bm!102309 m!1833512))

(declare-fun m!1833514 () Bool)

(assert (=> bm!102306 m!1833514))

(declare-fun m!1833516 () Bool)

(assert (=> bm!102310 m!1833516))

(declare-fun m!1833518 () Bool)

(assert (=> bm!102307 m!1833518))

(assert (=> b!1562145 m!1833380))

(declare-fun m!1833520 () Bool)

(assert (=> b!1562145 m!1833520))

(declare-fun m!1833522 () Bool)

(assert (=> b!1562145 m!1833522))

(declare-fun m!1833524 () Bool)

(assert (=> b!1562145 m!1833524))

(assert (=> b!1562145 m!1833524))

(declare-fun m!1833526 () Bool)

(assert (=> b!1562145 m!1833526))

(declare-fun m!1833528 () Bool)

(assert (=> b!1562145 m!1833528))

(assert (=> b!1562145 m!1833518))

(declare-fun m!1833530 () Bool)

(assert (=> b!1562145 m!1833530))

(assert (=> b!1562145 m!1833530))

(declare-fun m!1833532 () Bool)

(assert (=> b!1562145 m!1833532))

(assert (=> b!1562145 m!1833516))

(assert (=> b!1562145 m!1833520))

(declare-fun m!1833534 () Bool)

(assert (=> b!1562145 m!1833534))

(declare-fun m!1833536 () Bool)

(assert (=> b!1562145 m!1833536))

(assert (=> b!1562145 m!1833384))

(declare-fun m!1833538 () Bool)

(assert (=> b!1562145 m!1833538))

(declare-fun m!1833540 () Bool)

(assert (=> d!462533 m!1833540))

(declare-fun m!1833542 () Bool)

(assert (=> d!462533 m!1833542))

(declare-fun m!1833544 () Bool)

(assert (=> d!462533 m!1833544))

(assert (=> d!462533 m!1833530))

(assert (=> d!462533 m!1833434))

(declare-fun m!1833546 () Bool)

(assert (=> d!462533 m!1833546))

(declare-fun m!1833548 () Bool)

(assert (=> d!462533 m!1833548))

(assert (=> d!462533 m!1833546))

(declare-fun m!1833550 () Bool)

(assert (=> d!462533 m!1833550))

(assert (=> bm!102305 m!1833384))

(declare-fun m!1833552 () Bool)

(assert (=> bm!102305 m!1833552))

(assert (=> bm!102304 m!1833436))

(declare-fun m!1833554 () Bool)

(assert (=> b!1562139 m!1833554))

(declare-fun m!1833556 () Bool)

(assert (=> bm!102303 m!1833556))

(declare-fun m!1833558 () Bool)

(assert (=> b!1562142 m!1833558))

(declare-fun m!1833560 () Bool)

(assert (=> b!1562148 m!1833560))

(assert (=> b!1562148 m!1833380))

(declare-fun m!1833562 () Bool)

(assert (=> bm!102308 m!1833562))

(assert (=> b!1561979 d!462533))

(declare-fun d!462535 () Bool)

(declare-fun validCacheMapDown!172 (MutableMap!1806) Bool)

(assert (=> d!462535 (= (valid!1491 (_3!1401 lt!541055)) (validCacheMapDown!172 (cache!2187 (_3!1401 lt!541055))))))

(declare-fun bs!388942 () Bool)

(assert (= bs!388942 d!462535))

(declare-fun m!1833564 () Bool)

(assert (=> bs!388942 m!1833564))

(assert (=> b!1562017 d!462535))

(declare-fun d!462537 () Bool)

(assert (=> d!462537 (= (array_inv!2041 (_keys!2157 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) (bvsge (size!13758 (_keys!2157 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561997 d!462537))

(declare-fun d!462539 () Bool)

(assert (=> d!462539 (= (array_inv!2043 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) (bvsge (size!13761 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561997 d!462539))

(declare-fun d!462541 () Bool)

(declare-fun isEmpty!10172 (Option!3064) Bool)

(assert (=> d!462541 (= (isDefined!2463 lt!541044) (not (isEmpty!10172 lt!541044)))))

(declare-fun bs!388943 () Bool)

(assert (= bs!388943 d!462541))

(declare-fun m!1833566 () Bool)

(assert (=> bs!388943 m!1833566))

(assert (=> b!1561978 d!462541))

(declare-fun b!1562161 () Bool)

(declare-fun res!696470 () Bool)

(declare-fun e!1003181 () Bool)

(assert (=> b!1562161 (=> (not res!696470) (not e!1003181))))

(declare-fun lt!541171 () tuple4!926)

(assert (=> b!1562161 (= res!696470 (valid!1490 (_2!9694 lt!541171)))))

(declare-fun d!462543 () Bool)

(assert (=> d!462543 e!1003181))

(declare-fun res!696471 () Bool)

(assert (=> d!462543 (=> (not res!696471) (not e!1003181))))

(declare-fun findLongestMatch!272 (Regex!4299 List!17019) tuple2!16586)

(assert (=> d!462543 (= res!696471 (= (tuple2!16587 (list!6521 (_1!9693 (_1!9694 lt!541171))) (list!6521 (_2!9693 (_1!9694 lt!541171)))) (findLongestMatch!272 (regex!2971 rule!240) (list!6521 input!1676))))))

(declare-fun choose!9324 (Regex!4299 BalanceConc!11120 BalanceConc!11120 CacheUp!1102 CacheDown!1108 CacheFurthestNullable!528) tuple4!926)

(assert (=> d!462543 (= lt!541171 (choose!9324 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!462543 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462543 (= (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!541171)))

(declare-fun b!1562163 () Bool)

(assert (=> b!1562163 (= e!1003181 (= (totalInput!2504 (_4!463 lt!541171)) totalInput!568))))

(declare-fun b!1562160 () Bool)

(declare-fun res!696468 () Bool)

(assert (=> b!1562160 (=> (not res!696468) (not e!1003181))))

(assert (=> b!1562160 (= res!696468 (valid!1491 (_3!1401 lt!541171)))))

(declare-fun b!1562162 () Bool)

(declare-fun res!696469 () Bool)

(assert (=> b!1562162 (=> (not res!696469) (not e!1003181))))

(assert (=> b!1562162 (= res!696469 (valid!1489 (_4!463 lt!541171)))))

(assert (= (and d!462543 res!696471) b!1562160))

(assert (= (and b!1562160 res!696468) b!1562161))

(assert (= (and b!1562161 res!696470) b!1562162))

(assert (= (and b!1562162 res!696469) b!1562163))

(declare-fun m!1833568 () Bool)

(assert (=> b!1562161 m!1833568))

(declare-fun m!1833570 () Bool)

(assert (=> d!462543 m!1833570))

(assert (=> d!462543 m!1833434))

(assert (=> d!462543 m!1833344))

(assert (=> d!462543 m!1833344))

(declare-fun m!1833572 () Bool)

(assert (=> d!462543 m!1833572))

(declare-fun m!1833574 () Bool)

(assert (=> d!462543 m!1833574))

(declare-fun m!1833576 () Bool)

(assert (=> d!462543 m!1833576))

(declare-fun m!1833578 () Bool)

(assert (=> b!1562160 m!1833578))

(declare-fun m!1833580 () Bool)

(assert (=> b!1562162 m!1833580))

(assert (=> b!1561978 d!462543))

(declare-fun d!462545 () Bool)

(declare-fun lt!541174 () Bool)

(assert (=> d!462545 (= lt!541174 (isEmpty!10171 (list!6521 (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun isEmpty!10173 (Conc!5589) Bool)

(assert (=> d!462545 (= lt!541174 (isEmpty!10173 (c!253235 (_1!9693 (_1!9694 lt!541055)))))))

(assert (=> d!462545 (= (isEmpty!10170 (_1!9693 (_1!9694 lt!541055))) lt!541174)))

(declare-fun bs!388944 () Bool)

(assert (= bs!388944 d!462545))

(assert (=> bs!388944 m!1833376))

(assert (=> bs!388944 m!1833376))

(declare-fun m!1833582 () Bool)

(assert (=> bs!388944 m!1833582))

(declare-fun m!1833584 () Bool)

(assert (=> bs!388944 m!1833584))

(assert (=> b!1561978 d!462545))

(declare-fun b!1562182 () Bool)

(declare-fun e!1003191 () Bool)

(declare-fun lt!541186 () Option!3064)

(assert (=> b!1562182 (= e!1003191 (= (size!13759 (_1!9687 (get!4876 lt!541186))) (size!13762 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186))))))))

(declare-fun b!1562183 () Bool)

(declare-fun res!696490 () Bool)

(assert (=> b!1562183 (=> (not res!696490) (not e!1003191))))

(assert (=> b!1562183 (= res!696490 (< (size!13762 (_2!9687 (get!4876 lt!541186))) (size!13762 lt!541046)))))

(declare-fun b!1562184 () Bool)

(declare-fun e!1003193 () Bool)

(assert (=> b!1562184 (= e!1003193 (matchR!1891 (regex!2971 rule!240) (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(declare-fun b!1562185 () Bool)

(declare-fun res!696492 () Bool)

(assert (=> b!1562185 (=> (not res!696492) (not e!1003191))))

(assert (=> b!1562185 (= res!696492 (= (value!94305 (_1!9687 (get!4876 lt!541186))) (apply!4123 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186)))) (seqFromList!1787 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186)))))))))

(declare-fun b!1562186 () Bool)

(declare-fun res!696488 () Bool)

(assert (=> b!1562186 (=> (not res!696488) (not e!1003191))))

(declare-fun charsOf!1655 (Token!5508) BalanceConc!11120)

(assert (=> b!1562186 (= res!696488 (= (++!4424 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186)))) (_2!9687 (get!4876 lt!541186))) lt!541046))))

(declare-fun b!1562187 () Bool)

(declare-fun res!696487 () Bool)

(assert (=> b!1562187 (=> (not res!696487) (not e!1003191))))

(assert (=> b!1562187 (= res!696487 (= (rule!4756 (_1!9687 (get!4876 lt!541186))) rule!240))))

(declare-fun b!1562188 () Bool)

(declare-fun e!1003190 () Bool)

(assert (=> b!1562188 (= e!1003190 e!1003191)))

(declare-fun res!696489 () Bool)

(assert (=> b!1562188 (=> (not res!696489) (not e!1003191))))

(assert (=> b!1562188 (= res!696489 (matchR!1891 (regex!2971 rule!240) (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))))))

(declare-fun b!1562189 () Bool)

(declare-fun e!1003192 () Option!3064)

(assert (=> b!1562189 (= e!1003192 None!3063)))

(declare-fun b!1562190 () Bool)

(declare-fun lt!541185 () tuple2!16586)

(assert (=> b!1562190 (= e!1003192 (Some!3063 (tuple2!16577 (Token!5509 (apply!4123 (transformation!2971 rule!240) (seqFromList!1787 (_1!9695 lt!541185))) rule!240 (size!13763 (seqFromList!1787 (_1!9695 lt!541185))) (_1!9695 lt!541185)) (_2!9695 lt!541185))))))

(declare-fun lt!541187 () Unit!26158)

(assert (=> b!1562190 (= lt!541187 (longestMatchIsAcceptedByMatchOrIsEmpty!329 (regex!2971 rule!240) lt!541046))))

(declare-fun res!696486 () Bool)

(assert (=> b!1562190 (= res!696486 (isEmpty!10171 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(assert (=> b!1562190 (=> res!696486 e!1003193)))

(assert (=> b!1562190 e!1003193))

(declare-fun lt!541189 () Unit!26158)

(assert (=> b!1562190 (= lt!541189 lt!541187)))

(declare-fun lt!541188 () Unit!26158)

(declare-fun lemmaSemiInverse!374 (TokenValueInjection!5782 BalanceConc!11120) Unit!26158)

(assert (=> b!1562190 (= lt!541188 (lemmaSemiInverse!374 (transformation!2971 rule!240) (seqFromList!1787 (_1!9695 lt!541185))))))

(declare-fun d!462547 () Bool)

(assert (=> d!462547 e!1003190))

(declare-fun res!696491 () Bool)

(assert (=> d!462547 (=> res!696491 e!1003190)))

(assert (=> d!462547 (= res!696491 (isEmpty!10172 lt!541186))))

(assert (=> d!462547 (= lt!541186 e!1003192)))

(declare-fun c!253273 () Bool)

(assert (=> d!462547 (= c!253273 (isEmpty!10171 (_1!9695 lt!541185)))))

(assert (=> d!462547 (= lt!541185 (findLongestMatch!272 (regex!2971 rule!240) lt!541046))))

(assert (=> d!462547 (ruleValid!699 thiss!16438 rule!240)))

(assert (=> d!462547 (= (maxPrefixOneRule!715 thiss!16438 rule!240 lt!541046) lt!541186)))

(assert (= (and d!462547 c!253273) b!1562189))

(assert (= (and d!462547 (not c!253273)) b!1562190))

(assert (= (and b!1562190 (not res!696486)) b!1562184))

(assert (= (and d!462547 (not res!696491)) b!1562188))

(assert (= (and b!1562188 res!696489) b!1562186))

(assert (= (and b!1562186 res!696488) b!1562183))

(assert (= (and b!1562183 res!696490) b!1562187))

(assert (= (and b!1562187 res!696487) b!1562185))

(assert (= (and b!1562185 res!696492) b!1562182))

(declare-fun m!1833586 () Bool)

(assert (=> b!1562186 m!1833586))

(declare-fun m!1833588 () Bool)

(assert (=> b!1562186 m!1833588))

(assert (=> b!1562186 m!1833588))

(declare-fun m!1833590 () Bool)

(assert (=> b!1562186 m!1833590))

(assert (=> b!1562186 m!1833590))

(declare-fun m!1833592 () Bool)

(assert (=> b!1562186 m!1833592))

(assert (=> b!1562183 m!1833586))

(declare-fun m!1833594 () Bool)

(assert (=> b!1562183 m!1833594))

(assert (=> b!1562183 m!1833384))

(declare-fun m!1833596 () Bool)

(assert (=> d!462547 m!1833596))

(declare-fun m!1833598 () Bool)

(assert (=> d!462547 m!1833598))

(declare-fun m!1833600 () Bool)

(assert (=> d!462547 m!1833600))

(assert (=> d!462547 m!1833358))

(assert (=> b!1562184 m!1833380))

(assert (=> b!1562184 m!1833384))

(assert (=> b!1562184 m!1833380))

(assert (=> b!1562184 m!1833384))

(assert (=> b!1562184 m!1833386))

(assert (=> b!1562184 m!1833478))

(assert (=> b!1562187 m!1833586))

(assert (=> b!1562182 m!1833586))

(declare-fun m!1833602 () Bool)

(assert (=> b!1562182 m!1833602))

(declare-fun m!1833604 () Bool)

(assert (=> b!1562190 m!1833604))

(declare-fun m!1833606 () Bool)

(assert (=> b!1562190 m!1833606))

(assert (=> b!1562190 m!1833604))

(declare-fun m!1833608 () Bool)

(assert (=> b!1562190 m!1833608))

(assert (=> b!1562190 m!1833380))

(assert (=> b!1562190 m!1833370))

(assert (=> b!1562190 m!1833604))

(declare-fun m!1833610 () Bool)

(assert (=> b!1562190 m!1833610))

(assert (=> b!1562190 m!1833380))

(assert (=> b!1562190 m!1833384))

(assert (=> b!1562190 m!1833386))

(assert (=> b!1562190 m!1833604))

(assert (=> b!1562190 m!1833384))

(assert (=> b!1562190 m!1833474))

(assert (=> b!1562188 m!1833586))

(assert (=> b!1562188 m!1833588))

(assert (=> b!1562188 m!1833588))

(assert (=> b!1562188 m!1833590))

(assert (=> b!1562188 m!1833590))

(declare-fun m!1833612 () Bool)

(assert (=> b!1562188 m!1833612))

(assert (=> b!1562185 m!1833586))

(declare-fun m!1833614 () Bool)

(assert (=> b!1562185 m!1833614))

(assert (=> b!1562185 m!1833614))

(declare-fun m!1833616 () Bool)

(assert (=> b!1562185 m!1833616))

(assert (=> b!1561978 d!462547))

(declare-fun d!462549 () Bool)

(declare-fun isEmpty!10174 (Option!3065) Bool)

(assert (=> d!462549 (= (isDefined!2464 lt!541047) (not (isEmpty!10174 lt!541047)))))

(declare-fun bs!388945 () Bool)

(assert (= bs!388945 d!462549))

(declare-fun m!1833618 () Bool)

(assert (=> bs!388945 m!1833618))

(assert (=> b!1561978 d!462549))

(declare-fun d!462551 () Bool)

(assert (=> d!462551 (= (valid!1491 cacheDown!768) (validCacheMapDown!172 (cache!2187 cacheDown!768)))))

(declare-fun bs!388946 () Bool)

(assert (= bs!388946 d!462551))

(declare-fun m!1833620 () Bool)

(assert (=> bs!388946 m!1833620))

(assert (=> b!1562006 d!462551))

(declare-fun d!462553 () Bool)

(assert (=> d!462553 (= (get!4876 lt!541044) (v!23818 lt!541044))))

(assert (=> b!1561987 d!462553))

(declare-fun d!462555 () Bool)

(assert (=> d!462555 (= (get!4877 lt!541047) (v!23819 lt!541047))))

(assert (=> b!1561987 d!462555))

(declare-fun d!462557 () Bool)

(assert (=> d!462557 (= (array_inv!2041 (_keys!2155 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) (bvsge (size!13758 (_keys!2155 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1562014 d!462557))

(declare-fun d!462559 () Bool)

(assert (=> d!462559 (= (array_inv!2044 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) (bvsge (size!13757 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1562014 d!462559))

(declare-fun d!462561 () Bool)

(declare-fun c!253274 () Bool)

(assert (=> d!462561 (= c!253274 ((_ is Node!5589) (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))

(declare-fun e!1003194 () Bool)

(assert (=> d!462561 (= (inv!22260 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) e!1003194)))

(declare-fun b!1562191 () Bool)

(assert (=> b!1562191 (= e!1003194 (inv!22266 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))

(declare-fun b!1562192 () Bool)

(declare-fun e!1003195 () Bool)

(assert (=> b!1562192 (= e!1003194 e!1003195)))

(declare-fun res!696493 () Bool)

(assert (=> b!1562192 (= res!696493 (not ((_ is Leaf!8284) (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(assert (=> b!1562192 (=> res!696493 e!1003195)))

(declare-fun b!1562193 () Bool)

(assert (=> b!1562193 (= e!1003195 (inv!22267 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))

(assert (= (and d!462561 c!253274) b!1562191))

(assert (= (and d!462561 (not c!253274)) b!1562192))

(assert (= (and b!1562192 (not res!696493)) b!1562193))

(declare-fun m!1833622 () Bool)

(assert (=> b!1562191 m!1833622))

(declare-fun m!1833624 () Bool)

(assert (=> b!1562193 m!1833624))

(assert (=> b!1561988 d!462561))

(declare-fun d!462563 () Bool)

(assert (=> d!462563 (= (array_inv!2041 (_keys!2156 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) (bvsge (size!13758 (_keys!2156 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561986 d!462563))

(declare-fun d!462565 () Bool)

(assert (=> d!462565 (= (array_inv!2042 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) (bvsge (size!13760 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561986 d!462565))

(declare-fun d!462567 () Bool)

(declare-fun c!253275 () Bool)

(assert (=> d!462567 (= c!253275 ((_ is Node!5589) (c!253235 input!1676)))))

(declare-fun e!1003196 () Bool)

(assert (=> d!462567 (= (inv!22260 (c!253235 input!1676)) e!1003196)))

(declare-fun b!1562194 () Bool)

(assert (=> b!1562194 (= e!1003196 (inv!22266 (c!253235 input!1676)))))

(declare-fun b!1562195 () Bool)

(declare-fun e!1003197 () Bool)

(assert (=> b!1562195 (= e!1003196 e!1003197)))

(declare-fun res!696494 () Bool)

(assert (=> b!1562195 (= res!696494 (not ((_ is Leaf!8284) (c!253235 input!1676))))))

(assert (=> b!1562195 (=> res!696494 e!1003197)))

(declare-fun b!1562196 () Bool)

(assert (=> b!1562196 (= e!1003197 (inv!22267 (c!253235 input!1676)))))

(assert (= (and d!462567 c!253275) b!1562194))

(assert (= (and d!462567 (not c!253275)) b!1562195))

(assert (= (and b!1562195 (not res!696494)) b!1562196))

(declare-fun m!1833626 () Bool)

(assert (=> b!1562194 m!1833626))

(declare-fun m!1833628 () Bool)

(assert (=> b!1562196 m!1833628))

(assert (=> b!1561976 d!462567))

(declare-fun d!462569 () Bool)

(assert (=> d!462569 (= (valid!1490 (_2!9694 lt!541055)) (validCacheMapUp!172 (cache!2186 (_2!9694 lt!541055))))))

(declare-fun bs!388947 () Bool)

(assert (= bs!388947 d!462569))

(declare-fun m!1833630 () Bool)

(assert (=> bs!388947 m!1833630))

(assert (=> b!1562003 d!462569))

(declare-fun d!462571 () Bool)

(assert (=> d!462571 (= (inv!22261 totalInput!568) (isBalanced!1654 (c!253235 totalInput!568)))))

(declare-fun bs!388948 () Bool)

(assert (= bs!388948 d!462571))

(declare-fun m!1833632 () Bool)

(assert (=> bs!388948 m!1833632))

(assert (=> start!145022 d!462571))

(declare-fun d!462573 () Bool)

(declare-fun res!696497 () Bool)

(declare-fun e!1003200 () Bool)

(assert (=> d!462573 (=> (not res!696497) (not e!1003200))))

(assert (=> d!462573 (= res!696497 ((_ is HashMap!1806) (cache!2187 cacheDown!768)))))

(assert (=> d!462573 (= (inv!22264 cacheDown!768) e!1003200)))

(declare-fun b!1562199 () Bool)

(assert (=> b!1562199 (= e!1003200 (validCacheMapDown!172 (cache!2187 cacheDown!768)))))

(assert (= (and d!462573 res!696497) b!1562199))

(assert (=> b!1562199 m!1833620))

(assert (=> start!145022 d!462573))

(declare-fun d!462575 () Bool)

(declare-fun res!696500 () Bool)

(declare-fun e!1003203 () Bool)

(assert (=> d!462575 (=> (not res!696500) (not e!1003203))))

(assert (=> d!462575 (= res!696500 ((_ is HashMap!1805) (cache!2186 cacheUp!755)))))

(assert (=> d!462575 (= (inv!22262 cacheUp!755) e!1003203)))

(declare-fun b!1562202 () Bool)

(assert (=> b!1562202 (= e!1003203 (validCacheMapUp!172 (cache!2186 cacheUp!755)))))

(assert (= (and d!462575 res!696500) b!1562202))

(assert (=> b!1562202 m!1833456))

(assert (=> start!145022 d!462575))

(declare-fun d!462577 () Bool)

(assert (=> d!462577 (= (inv!22261 input!1676) (isBalanced!1654 (c!253235 input!1676)))))

(declare-fun bs!388949 () Bool)

(assert (= bs!388949 d!462577))

(declare-fun m!1833634 () Bool)

(assert (=> bs!388949 m!1833634))

(assert (=> start!145022 d!462577))

(declare-fun d!462579 () Bool)

(declare-fun res!696503 () Bool)

(declare-fun e!1003206 () Bool)

(assert (=> d!462579 (=> (not res!696503) (not e!1003206))))

(assert (=> d!462579 (= res!696503 ((_ is HashMap!1807) (cache!2188 cacheFurthestNullable!103)))))

(assert (=> d!462579 (= (inv!22263 cacheFurthestNullable!103) e!1003206)))

(declare-fun b!1562205 () Bool)

(assert (=> b!1562205 (= e!1003206 (validCacheMapFurthestNullable!85 (cache!2188 cacheFurthestNullable!103) (totalInput!2504 cacheFurthestNullable!103)))))

(assert (= (and d!462579 res!696503) b!1562205))

(assert (=> b!1562205 m!1833446))

(assert (=> start!145022 d!462579))

(declare-fun d!462581 () Bool)

(assert (=> d!462581 (= (valid!1489 (_4!463 lt!541055)) (validCacheMapFurthestNullable!85 (cache!2188 (_4!463 lt!541055)) (totalInput!2504 (_4!463 lt!541055))))))

(declare-fun bs!388950 () Bool)

(assert (= bs!388950 d!462581))

(declare-fun m!1833636 () Bool)

(assert (=> bs!388950 m!1833636))

(assert (=> b!1562012 d!462581))

(declare-fun d!462583 () Bool)

(assert (=> d!462583 (= (inv!22258 (tag!3235 rule!240)) (= (mod (str.len (value!94304 (tag!3235 rule!240))) 2) 0))))

(assert (=> b!1561995 d!462583))

(declare-fun d!462585 () Bool)

(declare-fun res!696506 () Bool)

(declare-fun e!1003209 () Bool)

(assert (=> d!462585 (=> (not res!696506) (not e!1003209))))

(assert (=> d!462585 (= res!696506 (semiInverseModEq!1126 (toChars!4211 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))))))

(assert (=> d!462585 (= (inv!22265 (transformation!2971 rule!240)) e!1003209)))

(declare-fun b!1562208 () Bool)

(assert (=> b!1562208 (= e!1003209 (equivClasses!1067 (toChars!4211 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))))))

(assert (= (and d!462585 res!696506) b!1562208))

(assert (=> d!462585 m!1833508))

(assert (=> b!1562208 m!1833510))

(assert (=> b!1561995 d!462585))

(declare-fun b!1562219 () Bool)

(declare-fun e!1003218 () Bool)

(declare-fun tp!459895 () Bool)

(assert (=> b!1562219 (= e!1003218 tp!459895)))

(declare-fun setRes!11242 () Bool)

(declare-fun setElem!11243 () Context!1634)

(declare-fun setNonEmpty!11242 () Bool)

(declare-fun tp!459896 () Bool)

(declare-fun inv!22268 (Context!1634) Bool)

(assert (=> setNonEmpty!11242 (= setRes!11242 (and tp!459896 (inv!22268 setElem!11243) e!1003218))))

(declare-fun mapDefault!8681 () List!17022)

(declare-fun setRest!11242 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11242 (= (_1!9689 (_1!9690 (h!22355 mapDefault!8681))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11243 true) setRest!11242))))

(declare-fun e!1003220 () Bool)

(declare-fun setNonEmpty!11243 () Bool)

(declare-fun tp!459901 () Bool)

(declare-fun setRes!11243 () Bool)

(declare-fun setElem!11242 () Context!1634)

(assert (=> setNonEmpty!11243 (= setRes!11243 (and tp!459901 (inv!22268 setElem!11242) e!1003220))))

(declare-fun mapValue!8681 () List!17022)

(declare-fun setRest!11243 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11243 (= (_1!9689 (_1!9690 (h!22355 mapValue!8681))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11242 true) setRest!11243))))

(declare-fun condMapEmpty!8681 () Bool)

(assert (=> mapNonEmpty!8678 (= condMapEmpty!8681 (= mapRest!8677 ((as const (Array (_ BitVec 32) List!17022)) mapDefault!8681)))))

(declare-fun e!1003219 () Bool)

(declare-fun mapRes!8681 () Bool)

(assert (=> mapNonEmpty!8678 (= tp!459874 (and e!1003219 mapRes!8681))))

(declare-fun mapIsEmpty!8681 () Bool)

(assert (=> mapIsEmpty!8681 mapRes!8681))

(declare-fun b!1562220 () Bool)

(declare-fun tp!459897 () Bool)

(assert (=> b!1562220 (= e!1003219 (and setRes!11242 tp!459897))))

(declare-fun condSetEmpty!11242 () Bool)

(assert (=> b!1562220 (= condSetEmpty!11242 (= (_1!9689 (_1!9690 (h!22355 mapDefault!8681))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562221 () Bool)

(declare-fun tp!459899 () Bool)

(assert (=> b!1562221 (= e!1003220 tp!459899)))

(declare-fun setIsEmpty!11242 () Bool)

(assert (=> setIsEmpty!11242 setRes!11242))

(declare-fun setIsEmpty!11243 () Bool)

(assert (=> setIsEmpty!11243 setRes!11243))

(declare-fun b!1562222 () Bool)

(declare-fun e!1003221 () Bool)

(declare-fun tp!459898 () Bool)

(assert (=> b!1562222 (= e!1003221 (and setRes!11243 tp!459898))))

(declare-fun condSetEmpty!11243 () Bool)

(assert (=> b!1562222 (= condSetEmpty!11243 (= (_1!9689 (_1!9690 (h!22355 mapValue!8681))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun mapNonEmpty!8681 () Bool)

(declare-fun tp!459900 () Bool)

(assert (=> mapNonEmpty!8681 (= mapRes!8681 (and tp!459900 e!1003221))))

(declare-fun mapKey!8681 () (_ BitVec 32))

(declare-fun mapRest!8681 () (Array (_ BitVec 32) List!17022))

(assert (=> mapNonEmpty!8681 (= mapRest!8677 (store mapRest!8681 mapKey!8681 mapValue!8681))))

(assert (= (and mapNonEmpty!8678 condMapEmpty!8681) mapIsEmpty!8681))

(assert (= (and mapNonEmpty!8678 (not condMapEmpty!8681)) mapNonEmpty!8681))

(assert (= (and b!1562222 condSetEmpty!11243) setIsEmpty!11243))

(assert (= (and b!1562222 (not condSetEmpty!11243)) setNonEmpty!11243))

(assert (= setNonEmpty!11243 b!1562221))

(assert (= (and mapNonEmpty!8681 ((_ is Cons!16954) mapValue!8681)) b!1562222))

(assert (= (and b!1562220 condSetEmpty!11242) setIsEmpty!11242))

(assert (= (and b!1562220 (not condSetEmpty!11242)) setNonEmpty!11242))

(assert (= setNonEmpty!11242 b!1562219))

(assert (= (and mapNonEmpty!8678 ((_ is Cons!16954) mapDefault!8681)) b!1562220))

(declare-fun m!1833638 () Bool)

(assert (=> setNonEmpty!11242 m!1833638))

(declare-fun m!1833640 () Bool)

(assert (=> setNonEmpty!11243 m!1833640))

(declare-fun m!1833642 () Bool)

(assert (=> mapNonEmpty!8681 m!1833642))

(declare-fun e!1003226 () Bool)

(declare-fun tp!459909 () Bool)

(declare-fun setElem!11246 () Context!1634)

(declare-fun setNonEmpty!11246 () Bool)

(declare-fun setRes!11246 () Bool)

(assert (=> setNonEmpty!11246 (= setRes!11246 (and tp!459909 (inv!22268 setElem!11246) e!1003226))))

(declare-fun setRest!11246 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11246 (= (_1!9689 (_1!9690 (h!22355 mapValue!8677))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11246 true) setRest!11246))))

(declare-fun b!1562229 () Bool)

(declare-fun e!1003227 () Bool)

(declare-fun tp!459910 () Bool)

(assert (=> b!1562229 (= e!1003227 (and setRes!11246 tp!459910))))

(declare-fun condSetEmpty!11246 () Bool)

(assert (=> b!1562229 (= condSetEmpty!11246 (= (_1!9689 (_1!9690 (h!22355 mapValue!8677))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562230 () Bool)

(declare-fun tp!459908 () Bool)

(assert (=> b!1562230 (= e!1003226 tp!459908)))

(assert (=> mapNonEmpty!8678 (= tp!459877 e!1003227)))

(declare-fun setIsEmpty!11246 () Bool)

(assert (=> setIsEmpty!11246 setRes!11246))

(assert (= (and b!1562229 condSetEmpty!11246) setIsEmpty!11246))

(assert (= (and b!1562229 (not condSetEmpty!11246)) setNonEmpty!11246))

(assert (= setNonEmpty!11246 b!1562230))

(assert (= (and mapNonEmpty!8678 ((_ is Cons!16954) mapValue!8677)) b!1562229))

(declare-fun m!1833644 () Bool)

(assert (=> setNonEmpty!11246 m!1833644))

(declare-fun setNonEmpty!11249 () Bool)

(declare-fun setRes!11249 () Bool)

(declare-fun tp!459921 () Bool)

(declare-fun setElem!11249 () Context!1634)

(declare-fun e!1003234 () Bool)

(assert (=> setNonEmpty!11249 (= setRes!11249 (and tp!459921 (inv!22268 setElem!11249) e!1003234))))

(declare-fun setRest!11249 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11249 (= (_2!9686 (h!22354 mapDefault!8676)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11249 true) setRest!11249))))

(declare-fun b!1562239 () Bool)

(declare-fun e!1003236 () Bool)

(declare-fun tp!459922 () Bool)

(assert (=> b!1562239 (= e!1003236 tp!459922)))

(declare-fun e!1003235 () Bool)

(declare-fun tp_is_empty!7089 () Bool)

(declare-fun b!1562240 () Bool)

(declare-fun tp!459920 () Bool)

(assert (=> b!1562240 (= e!1003235 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 mapDefault!8676)))) e!1003236 tp_is_empty!7089 setRes!11249 tp!459920))))

(declare-fun condSetEmpty!11249 () Bool)

(assert (=> b!1562240 (= condSetEmpty!11249 (= (_2!9686 (h!22354 mapDefault!8676)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11249 () Bool)

(assert (=> setIsEmpty!11249 setRes!11249))

(assert (=> b!1562001 (= tp!459880 e!1003235)))

(declare-fun b!1562241 () Bool)

(declare-fun tp!459919 () Bool)

(assert (=> b!1562241 (= e!1003234 tp!459919)))

(assert (= b!1562240 b!1562239))

(assert (= (and b!1562240 condSetEmpty!11249) setIsEmpty!11249))

(assert (= (and b!1562240 (not condSetEmpty!11249)) setNonEmpty!11249))

(assert (= setNonEmpty!11249 b!1562241))

(assert (= (and b!1562001 ((_ is Cons!16953) mapDefault!8676)) b!1562240))

(declare-fun m!1833646 () Bool)

(assert (=> setNonEmpty!11249 m!1833646))

(declare-fun m!1833648 () Bool)

(assert (=> b!1562240 m!1833648))

(declare-fun tp!459930 () Bool)

(declare-fun e!1003241 () Bool)

(declare-fun b!1562250 () Bool)

(declare-fun tp!459931 () Bool)

(assert (=> b!1562250 (= e!1003241 (and (inv!22260 (left!13749 (c!253235 totalInput!568))) tp!459930 (inv!22260 (right!14079 (c!253235 totalInput!568))) tp!459931))))

(declare-fun b!1562252 () Bool)

(declare-fun e!1003242 () Bool)

(declare-fun tp!459929 () Bool)

(assert (=> b!1562252 (= e!1003242 tp!459929)))

(declare-fun b!1562251 () Bool)

(declare-fun inv!22269 (IArray!11183) Bool)

(assert (=> b!1562251 (= e!1003241 (and (inv!22269 (xs!8389 (c!253235 totalInput!568))) e!1003242))))

(assert (=> b!1562018 (= tp!459865 (and (inv!22260 (c!253235 totalInput!568)) e!1003241))))

(assert (= (and b!1562018 ((_ is Node!5589) (c!253235 totalInput!568))) b!1562250))

(assert (= b!1562251 b!1562252))

(assert (= (and b!1562018 ((_ is Leaf!8284) (c!253235 totalInput!568))) b!1562251))

(declare-fun m!1833650 () Bool)

(assert (=> b!1562250 m!1833650))

(declare-fun m!1833652 () Bool)

(assert (=> b!1562250 m!1833652))

(declare-fun m!1833654 () Bool)

(assert (=> b!1562251 m!1833654))

(assert (=> b!1562018 m!1833350))

(declare-fun tp!459944 () Bool)

(declare-fun setNonEmpty!11252 () Bool)

(declare-fun setRes!11252 () Bool)

(declare-fun setElem!11252 () Context!1634)

(declare-fun e!1003249 () Bool)

(assert (=> setNonEmpty!11252 (= setRes!11252 (and tp!459944 (inv!22268 setElem!11252) e!1003249))))

(declare-fun setRest!11252 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11252 (= (_2!9692 (h!22356 mapDefault!8677)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11252 true) setRest!11252))))

(declare-fun e!1003250 () Bool)

(assert (=> b!1561980 (= tp!459873 e!1003250)))

(declare-fun e!1003251 () Bool)

(declare-fun b!1562261 () Bool)

(declare-fun tp!459943 () Bool)

(declare-fun tp!459946 () Bool)

(assert (=> b!1562261 (= e!1003250 (and tp!459946 (inv!22268 (_2!9691 (_1!9692 (h!22356 mapDefault!8677)))) e!1003251 tp_is_empty!7089 setRes!11252 tp!459943))))

(declare-fun condSetEmpty!11252 () Bool)

(assert (=> b!1562261 (= condSetEmpty!11252 (= (_2!9692 (h!22356 mapDefault!8677)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562262 () Bool)

(declare-fun tp!459945 () Bool)

(assert (=> b!1562262 (= e!1003251 tp!459945)))

(declare-fun setIsEmpty!11252 () Bool)

(assert (=> setIsEmpty!11252 setRes!11252))

(declare-fun b!1562263 () Bool)

(declare-fun tp!459942 () Bool)

(assert (=> b!1562263 (= e!1003249 tp!459942)))

(assert (= b!1562261 b!1562262))

(assert (= (and b!1562261 condSetEmpty!11252) setIsEmpty!11252))

(assert (= (and b!1562261 (not condSetEmpty!11252)) setNonEmpty!11252))

(assert (= setNonEmpty!11252 b!1562263))

(assert (= (and b!1561980 ((_ is Cons!16955) mapDefault!8677)) b!1562261))

(declare-fun m!1833656 () Bool)

(assert (=> setNonEmpty!11252 m!1833656))

(declare-fun m!1833658 () Bool)

(assert (=> b!1562261 m!1833658))

(declare-fun setNonEmpty!11253 () Bool)

(declare-fun e!1003252 () Bool)

(declare-fun setRes!11253 () Bool)

(declare-fun setElem!11253 () Context!1634)

(declare-fun tp!459949 () Bool)

(assert (=> setNonEmpty!11253 (= setRes!11253 (and tp!459949 (inv!22268 setElem!11253) e!1003252))))

(declare-fun setRest!11253 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11253 (= (_2!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11253 true) setRest!11253))))

(declare-fun e!1003253 () Bool)

(assert (=> b!1561997 (= tp!459854 e!1003253)))

(declare-fun b!1562264 () Bool)

(declare-fun tp!459951 () Bool)

(declare-fun e!1003254 () Bool)

(declare-fun tp!459948 () Bool)

(assert (=> b!1562264 (= e!1003253 (and tp!459951 (inv!22268 (_2!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))) e!1003254 tp_is_empty!7089 setRes!11253 tp!459948))))

(declare-fun condSetEmpty!11253 () Bool)

(assert (=> b!1562264 (= condSetEmpty!11253 (= (_2!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562265 () Bool)

(declare-fun tp!459950 () Bool)

(assert (=> b!1562265 (= e!1003254 tp!459950)))

(declare-fun setIsEmpty!11253 () Bool)

(assert (=> setIsEmpty!11253 setRes!11253))

(declare-fun b!1562266 () Bool)

(declare-fun tp!459947 () Bool)

(assert (=> b!1562266 (= e!1003252 tp!459947)))

(assert (= b!1562264 b!1562265))

(assert (= (and b!1562264 condSetEmpty!11253) setIsEmpty!11253))

(assert (= (and b!1562264 (not condSetEmpty!11253)) setNonEmpty!11253))

(assert (= setNonEmpty!11253 b!1562266))

(assert (= (and b!1561997 ((_ is Cons!16955) (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))) b!1562264))

(declare-fun m!1833660 () Bool)

(assert (=> setNonEmpty!11253 m!1833660))

(declare-fun m!1833662 () Bool)

(assert (=> b!1562264 m!1833662))

(declare-fun e!1003255 () Bool)

(declare-fun setElem!11254 () Context!1634)

(declare-fun setNonEmpty!11254 () Bool)

(declare-fun tp!459954 () Bool)

(declare-fun setRes!11254 () Bool)

(assert (=> setNonEmpty!11254 (= setRes!11254 (and tp!459954 (inv!22268 setElem!11254) e!1003255))))

(declare-fun setRest!11254 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11254 (= (_2!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11254 true) setRest!11254))))

(declare-fun e!1003256 () Bool)

(assert (=> b!1561997 (= tp!459864 e!1003256)))

(declare-fun tp!459953 () Bool)

(declare-fun tp!459956 () Bool)

(declare-fun e!1003257 () Bool)

(declare-fun b!1562267 () Bool)

(assert (=> b!1562267 (= e!1003256 (and tp!459956 (inv!22268 (_2!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))) e!1003257 tp_is_empty!7089 setRes!11254 tp!459953))))

(declare-fun condSetEmpty!11254 () Bool)

(assert (=> b!1562267 (= condSetEmpty!11254 (= (_2!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562268 () Bool)

(declare-fun tp!459955 () Bool)

(assert (=> b!1562268 (= e!1003257 tp!459955)))

(declare-fun setIsEmpty!11254 () Bool)

(assert (=> setIsEmpty!11254 setRes!11254))

(declare-fun b!1562269 () Bool)

(declare-fun tp!459952 () Bool)

(assert (=> b!1562269 (= e!1003255 tp!459952)))

(assert (= b!1562267 b!1562268))

(assert (= (and b!1562267 condSetEmpty!11254) setIsEmpty!11254))

(assert (= (and b!1562267 (not condSetEmpty!11254)) setNonEmpty!11254))

(assert (= setNonEmpty!11254 b!1562269))

(assert (= (and b!1561997 ((_ is Cons!16955) (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))) b!1562267))

(declare-fun m!1833664 () Bool)

(assert (=> setNonEmpty!11254 m!1833664))

(declare-fun m!1833666 () Bool)

(assert (=> b!1562267 m!1833666))

(declare-fun e!1003258 () Bool)

(declare-fun setElem!11255 () Context!1634)

(declare-fun setNonEmpty!11255 () Bool)

(declare-fun tp!459959 () Bool)

(declare-fun setRes!11255 () Bool)

(assert (=> setNonEmpty!11255 (= setRes!11255 (and tp!459959 (inv!22268 setElem!11255) e!1003258))))

(declare-fun setRest!11255 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11255 (= (_2!9686 (h!22354 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11255 true) setRest!11255))))

(declare-fun b!1562270 () Bool)

(declare-fun e!1003260 () Bool)

(declare-fun tp!459960 () Bool)

(assert (=> b!1562270 (= e!1003260 tp!459960)))

(declare-fun b!1562271 () Bool)

(declare-fun tp!459958 () Bool)

(declare-fun e!1003259 () Bool)

(assert (=> b!1562271 (= e!1003259 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))) e!1003260 tp_is_empty!7089 setRes!11255 tp!459958))))

(declare-fun condSetEmpty!11255 () Bool)

(assert (=> b!1562271 (= condSetEmpty!11255 (= (_2!9686 (h!22354 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11255 () Bool)

(assert (=> setIsEmpty!11255 setRes!11255))

(assert (=> b!1562014 (= tp!459875 e!1003259)))

(declare-fun b!1562272 () Bool)

(declare-fun tp!459957 () Bool)

(assert (=> b!1562272 (= e!1003258 tp!459957)))

(assert (= b!1562271 b!1562270))

(assert (= (and b!1562271 condSetEmpty!11255) setIsEmpty!11255))

(assert (= (and b!1562271 (not condSetEmpty!11255)) setNonEmpty!11255))

(assert (= setNonEmpty!11255 b!1562272))

(assert (= (and b!1562014 ((_ is Cons!16953) (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))) b!1562271))

(declare-fun m!1833668 () Bool)

(assert (=> setNonEmpty!11255 m!1833668))

(declare-fun m!1833670 () Bool)

(assert (=> b!1562271 m!1833670))

(declare-fun e!1003261 () Bool)

(declare-fun tp!459963 () Bool)

(declare-fun setElem!11256 () Context!1634)

(declare-fun setRes!11256 () Bool)

(declare-fun setNonEmpty!11256 () Bool)

(assert (=> setNonEmpty!11256 (= setRes!11256 (and tp!459963 (inv!22268 setElem!11256) e!1003261))))

(declare-fun setRest!11256 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11256 (= (_2!9686 (h!22354 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11256 true) setRest!11256))))

(declare-fun b!1562273 () Bool)

(declare-fun e!1003263 () Bool)

(declare-fun tp!459964 () Bool)

(assert (=> b!1562273 (= e!1003263 tp!459964)))

(declare-fun b!1562274 () Bool)

(declare-fun e!1003262 () Bool)

(declare-fun tp!459962 () Bool)

(assert (=> b!1562274 (= e!1003262 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))) e!1003263 tp_is_empty!7089 setRes!11256 tp!459962))))

(declare-fun condSetEmpty!11256 () Bool)

(assert (=> b!1562274 (= condSetEmpty!11256 (= (_2!9686 (h!22354 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11256 () Bool)

(assert (=> setIsEmpty!11256 setRes!11256))

(assert (=> b!1562014 (= tp!459872 e!1003262)))

(declare-fun b!1562275 () Bool)

(declare-fun tp!459961 () Bool)

(assert (=> b!1562275 (= e!1003261 tp!459961)))

(assert (= b!1562274 b!1562273))

(assert (= (and b!1562274 condSetEmpty!11256) setIsEmpty!11256))

(assert (= (and b!1562274 (not condSetEmpty!11256)) setNonEmpty!11256))

(assert (= setNonEmpty!11256 b!1562275))

(assert (= (and b!1562014 ((_ is Cons!16953) (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))) b!1562274))

(declare-fun m!1833672 () Bool)

(assert (=> setNonEmpty!11256 m!1833672))

(declare-fun m!1833674 () Bool)

(assert (=> b!1562274 m!1833674))

(declare-fun tp!459966 () Bool)

(declare-fun e!1003264 () Bool)

(declare-fun b!1562276 () Bool)

(declare-fun tp!459967 () Bool)

(assert (=> b!1562276 (= e!1003264 (and (inv!22260 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) tp!459966 (inv!22260 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) tp!459967))))

(declare-fun b!1562278 () Bool)

(declare-fun e!1003265 () Bool)

(declare-fun tp!459965 () Bool)

(assert (=> b!1562278 (= e!1003265 tp!459965)))

(declare-fun b!1562277 () Bool)

(assert (=> b!1562277 (= e!1003264 (and (inv!22269 (xs!8389 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) e!1003265))))

(assert (=> b!1561988 (= tp!459861 (and (inv!22260 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) e!1003264))))

(assert (= (and b!1561988 ((_ is Node!5589) (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) b!1562276))

(assert (= b!1562277 b!1562278))

(assert (= (and b!1561988 ((_ is Leaf!8284) (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) b!1562277))

(declare-fun m!1833676 () Bool)

(assert (=> b!1562276 m!1833676))

(declare-fun m!1833678 () Bool)

(assert (=> b!1562276 m!1833678))

(declare-fun m!1833680 () Bool)

(assert (=> b!1562277 m!1833680))

(assert (=> b!1561988 m!1833360))

(declare-fun e!1003266 () Bool)

(declare-fun setNonEmpty!11257 () Bool)

(declare-fun setRes!11257 () Bool)

(declare-fun tp!459969 () Bool)

(declare-fun setElem!11257 () Context!1634)

(assert (=> setNonEmpty!11257 (= setRes!11257 (and tp!459969 (inv!22268 setElem!11257) e!1003266))))

(declare-fun setRest!11257 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11257 (= (_1!9689 (_1!9690 (h!22355 mapDefault!8678))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11257 true) setRest!11257))))

(declare-fun b!1562279 () Bool)

(declare-fun e!1003267 () Bool)

(declare-fun tp!459970 () Bool)

(assert (=> b!1562279 (= e!1003267 (and setRes!11257 tp!459970))))

(declare-fun condSetEmpty!11257 () Bool)

(assert (=> b!1562279 (= condSetEmpty!11257 (= (_1!9689 (_1!9690 (h!22355 mapDefault!8678))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562280 () Bool)

(declare-fun tp!459968 () Bool)

(assert (=> b!1562280 (= e!1003266 tp!459968)))

(assert (=> b!1562015 (= tp!459858 e!1003267)))

(declare-fun setIsEmpty!11257 () Bool)

(assert (=> setIsEmpty!11257 setRes!11257))

(assert (= (and b!1562279 condSetEmpty!11257) setIsEmpty!11257))

(assert (= (and b!1562279 (not condSetEmpty!11257)) setNonEmpty!11257))

(assert (= setNonEmpty!11257 b!1562280))

(assert (= (and b!1562015 ((_ is Cons!16954) mapDefault!8678)) b!1562279))

(declare-fun m!1833682 () Bool)

(assert (=> setNonEmpty!11257 m!1833682))

(declare-fun setRes!11263 () Bool)

(declare-fun mapValue!8684 () List!17021)

(declare-fun b!1562295 () Bool)

(declare-fun e!1003284 () Bool)

(declare-fun e!1003283 () Bool)

(declare-fun tp!459990 () Bool)

(assert (=> b!1562295 (= e!1003284 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 mapValue!8684)))) e!1003283 tp_is_empty!7089 setRes!11263 tp!459990))))

(declare-fun condSetEmpty!11263 () Bool)

(assert (=> b!1562295 (= condSetEmpty!11263 (= (_2!9686 (h!22354 mapValue!8684)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun mapNonEmpty!8684 () Bool)

(declare-fun mapRes!8684 () Bool)

(declare-fun tp!459992 () Bool)

(assert (=> mapNonEmpty!8684 (= mapRes!8684 (and tp!459992 e!1003284))))

(declare-fun mapKey!8684 () (_ BitVec 32))

(declare-fun mapRest!8684 () (Array (_ BitVec 32) List!17021))

(assert (=> mapNonEmpty!8684 (= mapRest!8676 (store mapRest!8684 mapKey!8684 mapValue!8684))))

(declare-fun condMapEmpty!8684 () Bool)

(declare-fun mapDefault!8684 () List!17021)

(assert (=> mapNonEmpty!8676 (= condMapEmpty!8684 (= mapRest!8676 ((as const (Array (_ BitVec 32) List!17021)) mapDefault!8684)))))

(declare-fun e!1003282 () Bool)

(assert (=> mapNonEmpty!8676 (= tp!459855 (and e!1003282 mapRes!8684))))

(declare-fun b!1562296 () Bool)

(declare-fun e!1003281 () Bool)

(declare-fun tp!459993 () Bool)

(assert (=> b!1562296 (= e!1003281 tp!459993)))

(declare-fun b!1562297 () Bool)

(declare-fun e!1003280 () Bool)

(declare-fun tp!459989 () Bool)

(assert (=> b!1562297 (= e!1003280 tp!459989)))

(declare-fun b!1562298 () Bool)

(declare-fun setRes!11262 () Bool)

(declare-fun tp!459994 () Bool)

(assert (=> b!1562298 (= e!1003282 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 mapDefault!8684)))) e!1003280 tp_is_empty!7089 setRes!11262 tp!459994))))

(declare-fun condSetEmpty!11262 () Bool)

(assert (=> b!1562298 (= condSetEmpty!11262 (= (_2!9686 (h!22354 mapDefault!8684)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun tp!459996 () Bool)

(declare-fun setNonEmpty!11262 () Bool)

(declare-fun setElem!11262 () Context!1634)

(assert (=> setNonEmpty!11262 (= setRes!11262 (and tp!459996 (inv!22268 setElem!11262) e!1003281))))

(declare-fun setRest!11263 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11262 (= (_2!9686 (h!22354 mapDefault!8684)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11262 true) setRest!11263))))

(declare-fun mapIsEmpty!8684 () Bool)

(assert (=> mapIsEmpty!8684 mapRes!8684))

(declare-fun setIsEmpty!11262 () Bool)

(assert (=> setIsEmpty!11262 setRes!11263))

(declare-fun setNonEmpty!11263 () Bool)

(declare-fun e!1003285 () Bool)

(declare-fun setElem!11263 () Context!1634)

(declare-fun tp!459995 () Bool)

(assert (=> setNonEmpty!11263 (= setRes!11263 (and tp!459995 (inv!22268 setElem!11263) e!1003285))))

(declare-fun setRest!11262 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11263 (= (_2!9686 (h!22354 mapValue!8684)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11263 true) setRest!11262))))

(declare-fun b!1562299 () Bool)

(declare-fun tp!459991 () Bool)

(assert (=> b!1562299 (= e!1003285 tp!459991)))

(declare-fun b!1562300 () Bool)

(declare-fun tp!459997 () Bool)

(assert (=> b!1562300 (= e!1003283 tp!459997)))

(declare-fun setIsEmpty!11263 () Bool)

(assert (=> setIsEmpty!11263 setRes!11262))

(assert (= (and mapNonEmpty!8676 condMapEmpty!8684) mapIsEmpty!8684))

(assert (= (and mapNonEmpty!8676 (not condMapEmpty!8684)) mapNonEmpty!8684))

(assert (= b!1562295 b!1562300))

(assert (= (and b!1562295 condSetEmpty!11263) setIsEmpty!11262))

(assert (= (and b!1562295 (not condSetEmpty!11263)) setNonEmpty!11263))

(assert (= setNonEmpty!11263 b!1562299))

(assert (= (and mapNonEmpty!8684 ((_ is Cons!16953) mapValue!8684)) b!1562295))

(assert (= b!1562298 b!1562297))

(assert (= (and b!1562298 condSetEmpty!11262) setIsEmpty!11263))

(assert (= (and b!1562298 (not condSetEmpty!11262)) setNonEmpty!11262))

(assert (= setNonEmpty!11262 b!1562296))

(assert (= (and mapNonEmpty!8676 ((_ is Cons!16953) mapDefault!8684)) b!1562298))

(declare-fun m!1833684 () Bool)

(assert (=> b!1562298 m!1833684))

(declare-fun m!1833686 () Bool)

(assert (=> mapNonEmpty!8684 m!1833686))

(declare-fun m!1833688 () Bool)

(assert (=> setNonEmpty!11263 m!1833688))

(declare-fun m!1833690 () Bool)

(assert (=> setNonEmpty!11262 m!1833690))

(declare-fun m!1833692 () Bool)

(assert (=> b!1562295 m!1833692))

(declare-fun e!1003286 () Bool)

(declare-fun setNonEmpty!11264 () Bool)

(declare-fun setRes!11264 () Bool)

(declare-fun tp!460000 () Bool)

(declare-fun setElem!11264 () Context!1634)

(assert (=> setNonEmpty!11264 (= setRes!11264 (and tp!460000 (inv!22268 setElem!11264) e!1003286))))

(declare-fun setRest!11264 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11264 (= (_2!9686 (h!22354 mapValue!8676)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11264 true) setRest!11264))))

(declare-fun b!1562301 () Bool)

(declare-fun e!1003288 () Bool)

(declare-fun tp!460001 () Bool)

(assert (=> b!1562301 (= e!1003288 tp!460001)))

(declare-fun tp!459999 () Bool)

(declare-fun b!1562302 () Bool)

(declare-fun e!1003287 () Bool)

(assert (=> b!1562302 (= e!1003287 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 mapValue!8676)))) e!1003288 tp_is_empty!7089 setRes!11264 tp!459999))))

(declare-fun condSetEmpty!11264 () Bool)

(assert (=> b!1562302 (= condSetEmpty!11264 (= (_2!9686 (h!22354 mapValue!8676)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11264 () Bool)

(assert (=> setIsEmpty!11264 setRes!11264))

(assert (=> mapNonEmpty!8676 (= tp!459871 e!1003287)))

(declare-fun b!1562303 () Bool)

(declare-fun tp!459998 () Bool)

(assert (=> b!1562303 (= e!1003286 tp!459998)))

(assert (= b!1562302 b!1562301))

(assert (= (and b!1562302 condSetEmpty!11264) setIsEmpty!11264))

(assert (= (and b!1562302 (not condSetEmpty!11264)) setNonEmpty!11264))

(assert (= setNonEmpty!11264 b!1562303))

(assert (= (and mapNonEmpty!8676 ((_ is Cons!16953) mapValue!8676)) b!1562302))

(declare-fun m!1833694 () Bool)

(assert (=> setNonEmpty!11264 m!1833694))

(declare-fun m!1833696 () Bool)

(assert (=> b!1562302 m!1833696))

(declare-fun tp!460003 () Bool)

(declare-fun e!1003289 () Bool)

(declare-fun setElem!11265 () Context!1634)

(declare-fun setRes!11265 () Bool)

(declare-fun setNonEmpty!11265 () Bool)

(assert (=> setNonEmpty!11265 (= setRes!11265 (and tp!460003 (inv!22268 setElem!11265) e!1003289))))

(declare-fun setRest!11265 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11265 (= (_1!9689 (_1!9690 (h!22355 (zeroValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11265 true) setRest!11265))))

(declare-fun b!1562304 () Bool)

(declare-fun e!1003290 () Bool)

(declare-fun tp!460004 () Bool)

(assert (=> b!1562304 (= e!1003290 (and setRes!11265 tp!460004))))

(declare-fun condSetEmpty!11265 () Bool)

(assert (=> b!1562304 (= condSetEmpty!11265 (= (_1!9689 (_1!9690 (h!22355 (zeroValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562305 () Bool)

(declare-fun tp!460002 () Bool)

(assert (=> b!1562305 (= e!1003289 tp!460002)))

(assert (=> b!1561986 (= tp!459856 e!1003290)))

(declare-fun setIsEmpty!11265 () Bool)

(assert (=> setIsEmpty!11265 setRes!11265))

(assert (= (and b!1562304 condSetEmpty!11265) setIsEmpty!11265))

(assert (= (and b!1562304 (not condSetEmpty!11265)) setNonEmpty!11265))

(assert (= setNonEmpty!11265 b!1562305))

(assert (= (and b!1561986 ((_ is Cons!16954) (zeroValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103)))))))) b!1562304))

(declare-fun m!1833698 () Bool)

(assert (=> setNonEmpty!11265 m!1833698))

(declare-fun setRes!11266 () Bool)

(declare-fun setElem!11266 () Context!1634)

(declare-fun e!1003291 () Bool)

(declare-fun tp!460006 () Bool)

(declare-fun setNonEmpty!11266 () Bool)

(assert (=> setNonEmpty!11266 (= setRes!11266 (and tp!460006 (inv!22268 setElem!11266) e!1003291))))

(declare-fun setRest!11266 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11266 (= (_1!9689 (_1!9690 (h!22355 (minValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11266 true) setRest!11266))))

(declare-fun b!1562306 () Bool)

(declare-fun e!1003292 () Bool)

(declare-fun tp!460007 () Bool)

(assert (=> b!1562306 (= e!1003292 (and setRes!11266 tp!460007))))

(declare-fun condSetEmpty!11266 () Bool)

(assert (=> b!1562306 (= condSetEmpty!11266 (= (_1!9689 (_1!9690 (h!22355 (minValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562307 () Bool)

(declare-fun tp!460005 () Bool)

(assert (=> b!1562307 (= e!1003291 tp!460005)))

(assert (=> b!1561986 (= tp!459857 e!1003292)))

(declare-fun setIsEmpty!11266 () Bool)

(assert (=> setIsEmpty!11266 setRes!11266))

(assert (= (and b!1562306 condSetEmpty!11266) setIsEmpty!11266))

(assert (= (and b!1562306 (not condSetEmpty!11266)) setNonEmpty!11266))

(assert (= setNonEmpty!11266 b!1562307))

(assert (= (and b!1561986 ((_ is Cons!16954) (minValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103)))))))) b!1562306))

(declare-fun m!1833700 () Bool)

(assert (=> setNonEmpty!11266 m!1833700))

(declare-fun b!1562322 () Bool)

(declare-fun e!1003307 () Bool)

(declare-fun tp!460038 () Bool)

(assert (=> b!1562322 (= e!1003307 tp!460038)))

(declare-fun setIsEmpty!11271 () Bool)

(declare-fun setRes!11271 () Bool)

(assert (=> setIsEmpty!11271 setRes!11271))

(declare-fun setIsEmpty!11272 () Bool)

(declare-fun setRes!11272 () Bool)

(assert (=> setIsEmpty!11272 setRes!11272))

(declare-fun setNonEmpty!11271 () Bool)

(declare-fun tp!460032 () Bool)

(declare-fun setElem!11271 () Context!1634)

(assert (=> setNonEmpty!11271 (= setRes!11272 (and tp!460032 (inv!22268 setElem!11271) e!1003307))))

(declare-fun mapDefault!8687 () List!17023)

(declare-fun setRest!11272 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11271 (= (_2!9692 (h!22356 mapDefault!8687)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11271 true) setRest!11272))))

(declare-fun mapIsEmpty!8687 () Bool)

(declare-fun mapRes!8687 () Bool)

(assert (=> mapIsEmpty!8687 mapRes!8687))

(declare-fun e!1003309 () Bool)

(declare-fun setNonEmpty!11272 () Bool)

(declare-fun tp!460040 () Bool)

(declare-fun setElem!11272 () Context!1634)

(assert (=> setNonEmpty!11272 (= setRes!11271 (and tp!460040 (inv!22268 setElem!11272) e!1003309))))

(declare-fun mapValue!8687 () List!17023)

(declare-fun setRest!11271 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11272 (= (_2!9692 (h!22356 mapValue!8687)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11272 true) setRest!11271))))

(declare-fun mapNonEmpty!8687 () Bool)

(declare-fun tp!460035 () Bool)

(declare-fun e!1003305 () Bool)

(assert (=> mapNonEmpty!8687 (= mapRes!8687 (and tp!460035 e!1003305))))

(declare-fun mapRest!8687 () (Array (_ BitVec 32) List!17023))

(declare-fun mapKey!8687 () (_ BitVec 32))

(assert (=> mapNonEmpty!8687 (= mapRest!8678 (store mapRest!8687 mapKey!8687 mapValue!8687))))

(declare-fun b!1562324 () Bool)

(declare-fun tp!460034 () Bool)

(assert (=> b!1562324 (= e!1003309 tp!460034)))

(declare-fun tp!460030 () Bool)

(declare-fun e!1003310 () Bool)

(declare-fun b!1562325 () Bool)

(declare-fun tp!460031 () Bool)

(assert (=> b!1562325 (= e!1003305 (and tp!460030 (inv!22268 (_2!9691 (_1!9692 (h!22356 mapValue!8687)))) e!1003310 tp_is_empty!7089 setRes!11271 tp!460031))))

(declare-fun condSetEmpty!11272 () Bool)

(assert (=> b!1562325 (= condSetEmpty!11272 (= (_2!9692 (h!22356 mapValue!8687)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun condMapEmpty!8687 () Bool)

(assert (=> mapNonEmpty!8677 (= condMapEmpty!8687 (= mapRest!8678 ((as const (Array (_ BitVec 32) List!17023)) mapDefault!8687)))))

(declare-fun e!1003308 () Bool)

(assert (=> mapNonEmpty!8677 (= tp!459859 (and e!1003308 mapRes!8687))))

(declare-fun b!1562323 () Bool)

(declare-fun e!1003306 () Bool)

(declare-fun tp!460039 () Bool)

(assert (=> b!1562323 (= e!1003306 tp!460039)))

(declare-fun b!1562326 () Bool)

(declare-fun tp!460036 () Bool)

(assert (=> b!1562326 (= e!1003310 tp!460036)))

(declare-fun tp!460037 () Bool)

(declare-fun tp!460033 () Bool)

(declare-fun b!1562327 () Bool)

(assert (=> b!1562327 (= e!1003308 (and tp!460037 (inv!22268 (_2!9691 (_1!9692 (h!22356 mapDefault!8687)))) e!1003306 tp_is_empty!7089 setRes!11272 tp!460033))))

(declare-fun condSetEmpty!11271 () Bool)

(assert (=> b!1562327 (= condSetEmpty!11271 (= (_2!9692 (h!22356 mapDefault!8687)) ((as const (Array Context!1634 Bool)) false)))))

(assert (= (and mapNonEmpty!8677 condMapEmpty!8687) mapIsEmpty!8687))

(assert (= (and mapNonEmpty!8677 (not condMapEmpty!8687)) mapNonEmpty!8687))

(assert (= b!1562325 b!1562326))

(assert (= (and b!1562325 condSetEmpty!11272) setIsEmpty!11271))

(assert (= (and b!1562325 (not condSetEmpty!11272)) setNonEmpty!11272))

(assert (= setNonEmpty!11272 b!1562324))

(assert (= (and mapNonEmpty!8687 ((_ is Cons!16955) mapValue!8687)) b!1562325))

(assert (= b!1562327 b!1562323))

(assert (= (and b!1562327 condSetEmpty!11271) setIsEmpty!11272))

(assert (= (and b!1562327 (not condSetEmpty!11271)) setNonEmpty!11271))

(assert (= setNonEmpty!11271 b!1562322))

(assert (= (and mapNonEmpty!8677 ((_ is Cons!16955) mapDefault!8687)) b!1562327))

(declare-fun m!1833702 () Bool)

(assert (=> b!1562327 m!1833702))

(declare-fun m!1833704 () Bool)

(assert (=> setNonEmpty!11272 m!1833704))

(declare-fun m!1833706 () Bool)

(assert (=> setNonEmpty!11271 m!1833706))

(declare-fun m!1833708 () Bool)

(assert (=> b!1562325 m!1833708))

(declare-fun m!1833710 () Bool)

(assert (=> mapNonEmpty!8687 m!1833710))

(declare-fun setNonEmpty!11273 () Bool)

(declare-fun e!1003311 () Bool)

(declare-fun setRes!11273 () Bool)

(declare-fun tp!460043 () Bool)

(declare-fun setElem!11273 () Context!1634)

(assert (=> setNonEmpty!11273 (= setRes!11273 (and tp!460043 (inv!22268 setElem!11273) e!1003311))))

(declare-fun setRest!11273 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11273 (= (_2!9692 (h!22356 mapValue!8678)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11273 true) setRest!11273))))

(declare-fun e!1003312 () Bool)

(assert (=> mapNonEmpty!8677 (= tp!459868 e!1003312)))

(declare-fun e!1003313 () Bool)

(declare-fun tp!460045 () Bool)

(declare-fun b!1562328 () Bool)

(declare-fun tp!460042 () Bool)

(assert (=> b!1562328 (= e!1003312 (and tp!460045 (inv!22268 (_2!9691 (_1!9692 (h!22356 mapValue!8678)))) e!1003313 tp_is_empty!7089 setRes!11273 tp!460042))))

(declare-fun condSetEmpty!11273 () Bool)

(assert (=> b!1562328 (= condSetEmpty!11273 (= (_2!9692 (h!22356 mapValue!8678)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562329 () Bool)

(declare-fun tp!460044 () Bool)

(assert (=> b!1562329 (= e!1003313 tp!460044)))

(declare-fun setIsEmpty!11273 () Bool)

(assert (=> setIsEmpty!11273 setRes!11273))

(declare-fun b!1562330 () Bool)

(declare-fun tp!460041 () Bool)

(assert (=> b!1562330 (= e!1003311 tp!460041)))

(assert (= b!1562328 b!1562329))

(assert (= (and b!1562328 condSetEmpty!11273) setIsEmpty!11273))

(assert (= (and b!1562328 (not condSetEmpty!11273)) setNonEmpty!11273))

(assert (= setNonEmpty!11273 b!1562330))

(assert (= (and mapNonEmpty!8677 ((_ is Cons!16955) mapValue!8678)) b!1562328))

(declare-fun m!1833712 () Bool)

(assert (=> setNonEmpty!11273 m!1833712))

(declare-fun m!1833714 () Bool)

(assert (=> b!1562328 m!1833714))

(declare-fun tp!460048 () Bool)

(declare-fun tp!460047 () Bool)

(declare-fun e!1003314 () Bool)

(declare-fun b!1562331 () Bool)

(assert (=> b!1562331 (= e!1003314 (and (inv!22260 (left!13749 (c!253235 input!1676))) tp!460047 (inv!22260 (right!14079 (c!253235 input!1676))) tp!460048))))

(declare-fun b!1562333 () Bool)

(declare-fun e!1003315 () Bool)

(declare-fun tp!460046 () Bool)

(assert (=> b!1562333 (= e!1003315 tp!460046)))

(declare-fun b!1562332 () Bool)

(assert (=> b!1562332 (= e!1003314 (and (inv!22269 (xs!8389 (c!253235 input!1676))) e!1003315))))

(assert (=> b!1561976 (= tp!459867 (and (inv!22260 (c!253235 input!1676)) e!1003314))))

(assert (= (and b!1561976 ((_ is Node!5589) (c!253235 input!1676))) b!1562331))

(assert (= b!1562332 b!1562333))

(assert (= (and b!1561976 ((_ is Leaf!8284) (c!253235 input!1676))) b!1562332))

(declare-fun m!1833716 () Bool)

(assert (=> b!1562331 m!1833716))

(declare-fun m!1833718 () Bool)

(assert (=> b!1562331 m!1833718))

(declare-fun m!1833720 () Bool)

(assert (=> b!1562332 m!1833720))

(assert (=> b!1561976 m!1833408))

(declare-fun b!1562347 () Bool)

(declare-fun e!1003318 () Bool)

(declare-fun tp!460063 () Bool)

(declare-fun tp!460061 () Bool)

(assert (=> b!1562347 (= e!1003318 (and tp!460063 tp!460061))))

(declare-fun b!1562346 () Bool)

(declare-fun tp!460060 () Bool)

(assert (=> b!1562346 (= e!1003318 tp!460060)))

(assert (=> b!1561995 (= tp!459862 e!1003318)))

(declare-fun b!1562344 () Bool)

(assert (=> b!1562344 (= e!1003318 tp_is_empty!7089)))

(declare-fun b!1562345 () Bool)

(declare-fun tp!460062 () Bool)

(declare-fun tp!460059 () Bool)

(assert (=> b!1562345 (= e!1003318 (and tp!460062 tp!460059))))

(assert (= (and b!1561995 ((_ is ElementMatch!4299) (regex!2971 rule!240))) b!1562344))

(assert (= (and b!1561995 ((_ is Concat!7361) (regex!2971 rule!240))) b!1562345))

(assert (= (and b!1561995 ((_ is Star!4299) (regex!2971 rule!240))) b!1562346))

(assert (= (and b!1561995 ((_ is Union!4299) (regex!2971 rule!240))) b!1562347))

(declare-fun b_lambda!49147 () Bool)

(assert (= b_lambda!49139 (or (and b!1562013 b_free!41747) b_lambda!49147)))

(declare-fun b_lambda!49149 () Bool)

(assert (= b_lambda!49145 (or b!1561979 b_lambda!49149)))

(declare-fun bs!388951 () Bool)

(declare-fun d!462587 () Bool)

(assert (= bs!388951 (and d!462587 b!1561979)))

(declare-fun dynLambda!7562 (Int TokenValue!3061) BalanceConc!11120)

(assert (=> bs!388951 (= (dynLambda!7561 lambda!66068 lt!541056) (= (list!6521 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))) (list!6521 lt!541056)))))

(declare-fun b_lambda!49157 () Bool)

(assert (=> (not b_lambda!49157) (not bs!388951)))

(declare-fun t!141578 () Bool)

(declare-fun tb!87403 () Bool)

(assert (=> (and b!1562013 (= (toChars!4211 (transformation!2971 rule!240)) (toChars!4211 (transformation!2971 rule!240))) t!141578) tb!87403))

(declare-fun tp!460066 () Bool)

(declare-fun b!1562352 () Bool)

(declare-fun e!1003321 () Bool)

(assert (=> b!1562352 (= e!1003321 (and (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))) tp!460066))))

(declare-fun result!105732 () Bool)

(assert (=> tb!87403 (= result!105732 (and (inv!22261 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))) e!1003321))))

(assert (= tb!87403 b!1562352))

(declare-fun m!1833722 () Bool)

(assert (=> b!1562352 m!1833722))

(declare-fun m!1833724 () Bool)

(assert (=> tb!87403 m!1833724))

(assert (=> bs!388951 t!141578))

(declare-fun b_and!109067 () Bool)

(assert (= b_and!109059 (and (=> t!141578 result!105732) b_and!109067)))

(declare-fun b_lambda!49159 () Bool)

(assert (=> (not b_lambda!49159) (not bs!388951)))

(assert (=> bs!388951 t!141576))

(declare-fun b_and!109069 () Bool)

(assert (= b_and!109065 (and (=> t!141576 result!105714) b_and!109069)))

(assert (=> bs!388951 m!1833490))

(assert (=> bs!388951 m!1833492))

(assert (=> bs!388951 m!1833490))

(declare-fun m!1833726 () Bool)

(assert (=> bs!388951 m!1833726))

(assert (=> bs!388951 m!1833726))

(declare-fun m!1833728 () Bool)

(assert (=> bs!388951 m!1833728))

(assert (=> d!462529 d!462587))

(declare-fun b_lambda!49151 () Bool)

(assert (= b_lambda!49143 (or b!1561979 b_lambda!49151)))

(declare-fun bs!388952 () Bool)

(declare-fun d!462589 () Bool)

(assert (= bs!388952 (and d!462589 b!1561979)))

(assert (=> bs!388952 (= (dynLambda!7561 lambda!66068 (_1!9693 (_1!9694 lt!541055))) (= (list!6521 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))) (list!6521 (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun b_lambda!49161 () Bool)

(assert (=> (not b_lambda!49161) (not bs!388952)))

(declare-fun t!141580 () Bool)

(declare-fun tb!87405 () Bool)

(assert (=> (and b!1562013 (= (toChars!4211 (transformation!2971 rule!240)) (toChars!4211 (transformation!2971 rule!240))) t!141580) tb!87405))

(declare-fun tp!460067 () Bool)

(declare-fun e!1003322 () Bool)

(declare-fun b!1562353 () Bool)

(assert (=> b!1562353 (= e!1003322 (and (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))) tp!460067))))

(declare-fun result!105736 () Bool)

(assert (=> tb!87405 (= result!105736 (and (inv!22261 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))) e!1003322))))

(assert (= tb!87405 b!1562353))

(declare-fun m!1833730 () Bool)

(assert (=> b!1562353 m!1833730))

(declare-fun m!1833732 () Bool)

(assert (=> tb!87405 m!1833732))

(assert (=> bs!388952 t!141580))

(declare-fun b_and!109071 () Bool)

(assert (= b_and!109067 (and (=> t!141580 result!105736) b_and!109071)))

(declare-fun b_lambda!49163 () Bool)

(assert (=> (not b_lambda!49163) (not bs!388952)))

(assert (=> bs!388952 t!141574))

(declare-fun b_and!109073 () Bool)

(assert (= b_and!109069 (and (=> t!141574 result!105710) b_and!109073)))

(assert (=> bs!388952 m!1833482))

(assert (=> bs!388952 m!1833376))

(assert (=> bs!388952 m!1833482))

(declare-fun m!1833734 () Bool)

(assert (=> bs!388952 m!1833734))

(assert (=> bs!388952 m!1833734))

(declare-fun m!1833736 () Bool)

(assert (=> bs!388952 m!1833736))

(assert (=> d!462525 d!462589))

(declare-fun b_lambda!49153 () Bool)

(assert (= b_lambda!49141 (or (and b!1562013 b_free!41747) b_lambda!49153)))

(declare-fun b_lambda!49155 () Bool)

(assert (= b_lambda!49137 (or (and b!1562013 b_free!41747) b_lambda!49155)))

(check-sat (not d!462581) (not b!1562302) (not bm!102310) (not setNonEmpty!11254) (not b!1562331) (not b!1562322) (not mapNonEmpty!8684) (not b!1562328) (not b!1562352) (not d!462543) (not b!1561976) b_and!109053 (not setNonEmpty!11263) (not setNonEmpty!11271) (not d!462529) (not tb!87405) (not b!1562265) (not d!462551) (not b!1562325) (not d!462499) b_and!109051 (not b!1562297) b_and!109073 (not d!462491) (not d!462493) (not setNonEmpty!11257) (not d!462571) (not setNonEmpty!11264) (not setNonEmpty!11243) (not b!1562220) (not b!1562076) (not b!1562278) (not b_next!42449) (not b!1562268) (not d!462515) (not setNonEmpty!11266) (not d!462577) (not b!1562148) b_and!109049 (not b!1562307) tp_is_empty!7089 (not b!1562262) (not b_next!42445) (not setNonEmpty!11249) (not b!1562299) (not b!1562261) (not b!1562184) (not bm!102307) (not b!1562271) (not b!1562301) (not b!1562202) (not b!1562330) (not b_next!42439) (not b!1562085) (not d!462503) (not d!462517) (not b!1562241) (not b!1562190) (not b!1562326) (not bs!388951) (not b_lambda!49147) (not b!1562276) (not setNonEmpty!11253) (not b!1562182) (not b!1562139) (not b!1562329) (not b_next!42453) (not b!1562035) (not setNonEmpty!11256) (not b!1562275) (not b_lambda!49159) (not d!462533) (not setNonEmpty!11242) (not b!1562222) (not b!1562109) (not b!1562042) b_and!109045 (not b!1562300) (not d!462489) (not b!1562270) (not b!1562333) (not bm!102308) (not tb!87399) (not b!1562332) (not b!1562306) (not b!1562239) (not b_lambda!49161) (not b!1562081) (not bm!102306) (not b!1562323) (not b!1562205) (not b!1562240) (not bm!102309) (not b!1562263) (not b!1562031) (not b!1562142) (not tb!87401) (not b_lambda!49153) (not b!1562251) (not d!462547) (not d!462541) b_and!109055 (not b!1562305) (not b!1562196) (not b!1562269) (not b!1562353) (not b!1562298) (not b!1562264) (not b_lambda!49149) (not b!1562230) (not b!1562187) (not d!462527) (not b!1562295) (not b!1562280) (not b_lambda!49163) (not setNonEmpty!11262) (not b!1562303) b_and!109047 (not b!1562160) (not b_next!42443) (not bm!102303) (not b!1562296) (not d!462569) (not d!462521) (not b!1562272) (not b!1562092) (not setNonEmpty!11265) (not b!1562194) (not tb!87403) (not b!1562183) (not setNonEmpty!11252) (not b!1562145) (not d!462497) (not b!1562252) (not b!1562186) (not b_next!42451) (not setNonEmpty!11255) (not b!1562073) (not b!1562277) (not b!1562279) (not d!462495) (not b!1562229) (not b!1561988) (not b!1562077) (not b!1562162) (not b!1562250) (not b!1562161) (not d!462531) (not b!1562094) (not d!462525) (not b_lambda!49157) (not bm!102286) (not bs!388952) (not d!462507) (not b!1562324) (not b!1562346) (not b!1562188) (not setNonEmpty!11272) (not b_lambda!49151) (not d!462535) (not bm!102304) (not b!1562199) (not b!1562075) (not b_next!42441) (not b!1562347) (not b_next!42447) (not mapNonEmpty!8681) (not setNonEmpty!11246) b_and!109071 (not b_lambda!49155) (not b!1562193) (not b!1562097) (not d!462585) (not d!462505) (not d!462545) (not b!1562018) (not d!462549) (not b!1562221) (not b!1562044) (not b!1562208) (not bm!102305) (not b!1562273) (not b!1562219) (not mapNonEmpty!8687) (not b!1562267) (not b!1562266) (not d!462523) (not b!1562304) (not setNonEmpty!11273) (not b!1562191) (not b!1562345) (not b!1562185) (not b!1562274) (not b!1562327))
(check-sat b_and!109053 (not b_next!42449) b_and!109049 (not b_next!42445) (not b_next!42439) (not b_next!42453) b_and!109045 b_and!109055 b_and!109047 (not b_next!42443) (not b_next!42451) (not b_next!42441) (not b_next!42447) b_and!109071 b_and!109051 b_and!109073)
(get-model)

(declare-fun b_lambda!49165 () Bool)

(assert (= b_lambda!49161 (or (and b!1562013 b_free!41749) b_lambda!49165)))

(declare-fun b_lambda!49167 () Bool)

(assert (= b_lambda!49157 (or (and b!1562013 b_free!41749) b_lambda!49167)))

(declare-fun b_lambda!49169 () Bool)

(assert (= b_lambda!49163 (or (and b!1562013 b_free!41747) b_lambda!49169)))

(declare-fun b_lambda!49171 () Bool)

(assert (= b_lambda!49159 (or (and b!1562013 b_free!41747) b_lambda!49171)))

(check-sat (not d!462581) (not b!1562302) (not bm!102310) (not setNonEmpty!11254) (not b!1562331) (not b!1562322) (not mapNonEmpty!8684) (not b!1562328) (not b!1562352) (not d!462543) (not b!1561976) b_and!109053 (not setNonEmpty!11263) (not setNonEmpty!11271) (not d!462529) (not tb!87405) (not b!1562265) (not d!462551) (not b!1562325) (not d!462499) b_and!109051 (not b!1562297) b_and!109073 (not d!462491) (not d!462493) (not setNonEmpty!11257) (not d!462571) (not setNonEmpty!11264) (not setNonEmpty!11243) (not b!1562220) (not b!1562076) (not b!1562278) (not b_lambda!49169) (not b_next!42449) (not b!1562268) (not d!462515) (not setNonEmpty!11266) (not d!462577) (not b!1562148) b_and!109049 (not b!1562307) tp_is_empty!7089 (not b!1562262) (not b_next!42445) (not setNonEmpty!11249) (not b!1562299) (not b!1562261) (not b!1562184) (not bm!102307) (not b!1562271) (not b!1562301) (not b!1562202) (not b!1562330) (not b_next!42439) (not b!1562085) (not d!462503) (not d!462517) (not b!1562241) (not b!1562190) (not b!1562326) (not bs!388951) (not b_lambda!49147) (not b!1562276) (not setNonEmpty!11253) (not b!1562182) (not b!1562139) (not b!1562329) (not b_next!42453) (not b!1562035) (not setNonEmpty!11256) (not b!1562275) (not d!462533) (not setNonEmpty!11242) (not b!1562222) (not b!1562109) (not b!1562042) b_and!109045 (not b!1562300) (not d!462489) (not b!1562270) (not b!1562333) (not b_lambda!49165) (not bm!102308) (not tb!87399) (not b!1562332) (not b!1562306) (not b!1562239) (not b!1562081) (not bm!102306) (not b!1562323) (not b!1562205) (not b!1562240) (not bm!102309) (not b!1562263) (not b!1562031) (not b!1562142) (not tb!87401) (not b_lambda!49153) (not b!1562251) (not b_lambda!49171) (not d!462547) (not d!462541) b_and!109055 (not b!1562305) (not b!1562196) (not b!1562269) (not b!1562353) (not b!1562298) (not b!1562264) (not b_lambda!49149) (not b!1562230) (not b!1562187) (not d!462527) (not b!1562295) (not setNonEmpty!11262) (not b!1562280) (not b!1562303) b_and!109047 (not b!1562160) (not b_next!42443) (not bm!102303) (not b!1562296) (not d!462569) (not d!462521) (not b!1562272) (not b!1562092) (not setNonEmpty!11265) (not b!1562194) (not tb!87403) (not b!1562183) (not setNonEmpty!11252) (not b!1562145) (not d!462497) (not b!1562252) (not b!1562186) (not b_next!42451) (not setNonEmpty!11255) (not b!1562073) (not b!1562277) (not b!1562279) (not d!462495) (not b!1562229) (not b!1561988) (not b!1562077) (not b!1562162) (not b!1562250) (not b!1562161) (not d!462531) (not b!1562094) (not d!462525) (not bm!102286) (not bs!388952) (not d!462507) (not b!1562324) (not b!1562346) (not b!1562188) (not setNonEmpty!11272) (not b_lambda!49151) (not d!462535) (not bm!102304) (not b!1562199) (not b!1562075) (not b_next!42441) (not b!1562347) (not b_next!42447) (not mapNonEmpty!8681) (not setNonEmpty!11246) (not b_lambda!49155) (not b!1562193) (not b!1562097) (not d!462585) (not d!462505) (not d!462545) b_and!109071 (not b_lambda!49167) (not b!1562018) (not d!462549) (not b!1562221) (not b!1562044) (not b!1562208) (not bm!102305) (not b!1562273) (not b!1562219) (not mapNonEmpty!8687) (not b!1562267) (not b!1562266) (not d!462523) (not b!1562304) (not setNonEmpty!11273) (not b!1562191) (not b!1562345) (not b!1562185) (not b!1562274) (not b!1562327))
(check-sat b_and!109053 (not b_next!42449) b_and!109049 (not b_next!42445) (not b_next!42439) (not b_next!42453) b_and!109045 b_and!109055 b_and!109047 (not b_next!42443) (not b_next!42451) (not b_next!42441) (not b_next!42447) b_and!109071 b_and!109051 b_and!109073)
(get-model)

(declare-fun d!462591 () Bool)

(declare-fun c!253276 () Bool)

(assert (=> d!462591 (= c!253276 ((_ is Node!5589) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))))

(declare-fun e!1003323 () Bool)

(assert (=> d!462591 (= (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))) e!1003323)))

(declare-fun b!1562354 () Bool)

(assert (=> b!1562354 (= e!1003323 (inv!22266 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))))

(declare-fun b!1562355 () Bool)

(declare-fun e!1003324 () Bool)

(assert (=> b!1562355 (= e!1003323 e!1003324)))

(declare-fun res!696507 () Bool)

(assert (=> b!1562355 (= res!696507 (not ((_ is Leaf!8284) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))))))

(assert (=> b!1562355 (=> res!696507 e!1003324)))

(declare-fun b!1562356 () Bool)

(assert (=> b!1562356 (= e!1003324 (inv!22267 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))))

(assert (= (and d!462591 c!253276) b!1562354))

(assert (= (and d!462591 (not c!253276)) b!1562355))

(assert (= (and b!1562355 (not res!696507)) b!1562356))

(declare-fun m!1833738 () Bool)

(assert (=> b!1562354 m!1833738))

(declare-fun m!1833740 () Bool)

(assert (=> b!1562356 m!1833740))

(assert (=> b!1562353 d!462591))

(declare-fun d!462593 () Bool)

(assert (=> d!462593 (= lt!541046 Nil!16951)))

(declare-fun lt!541192 () Unit!26158)

(declare-fun choose!9325 (List!17019 List!17019 List!17019) Unit!26158)

(assert (=> d!462593 (= lt!541192 (choose!9325 lt!541046 Nil!16951 lt!541046))))

(assert (=> d!462593 (isPrefix!1270 lt!541046 lt!541046)))

(assert (=> d!462593 (= (lemmaIsPrefixSameLengthThenSameList!134 lt!541046 Nil!16951 lt!541046) lt!541192)))

(declare-fun bs!388953 () Bool)

(assert (= bs!388953 d!462593))

(declare-fun m!1833742 () Bool)

(assert (=> bs!388953 m!1833742))

(assert (=> bs!388953 m!1833562))

(assert (=> bm!102309 d!462593))

(declare-fun d!462595 () Bool)

(assert (=> d!462595 (= (inv!22269 (xs!8389 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) (<= (size!13762 (innerList!5649 (xs!8389 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) 2147483647))))

(declare-fun bs!388954 () Bool)

(assert (= bs!388954 d!462595))

(declare-fun m!1833744 () Bool)

(assert (=> bs!388954 m!1833744))

(assert (=> b!1562277 d!462595))

(declare-fun d!462597 () Bool)

(declare-fun lambda!66074 () Int)

(declare-fun forall!3929 (List!17020 Int) Bool)

(assert (=> d!462597 (= (inv!22268 setElem!11265) (forall!3929 (exprs!1317 setElem!11265) lambda!66074))))

(declare-fun bs!388955 () Bool)

(assert (= bs!388955 d!462597))

(declare-fun m!1833746 () Bool)

(assert (=> bs!388955 m!1833746))

(assert (=> setNonEmpty!11265 d!462597))

(declare-fun b!1562368 () Bool)

(declare-fun e!1003330 () List!17019)

(assert (=> b!1562368 (= e!1003330 (++!4424 (list!6522 (left!13749 (c!253235 (_1!9693 (_1!9694 lt!541055))))) (list!6522 (right!14079 (c!253235 (_1!9693 (_1!9694 lt!541055)))))))))

(declare-fun d!462599 () Bool)

(declare-fun c!253281 () Bool)

(assert (=> d!462599 (= c!253281 ((_ is Empty!5589) (c!253235 (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun e!1003329 () List!17019)

(assert (=> d!462599 (= (list!6522 (c!253235 (_1!9693 (_1!9694 lt!541055)))) e!1003329)))

(declare-fun b!1562365 () Bool)

(assert (=> b!1562365 (= e!1003329 Nil!16951)))

(declare-fun b!1562367 () Bool)

(declare-fun list!6523 (IArray!11183) List!17019)

(assert (=> b!1562367 (= e!1003330 (list!6523 (xs!8389 (c!253235 (_1!9693 (_1!9694 lt!541055))))))))

(declare-fun b!1562366 () Bool)

(assert (=> b!1562366 (= e!1003329 e!1003330)))

(declare-fun c!253282 () Bool)

(assert (=> b!1562366 (= c!253282 ((_ is Leaf!8284) (c!253235 (_1!9693 (_1!9694 lt!541055)))))))

(assert (= (and d!462599 c!253281) b!1562365))

(assert (= (and d!462599 (not c!253281)) b!1562366))

(assert (= (and b!1562366 c!253282) b!1562367))

(assert (= (and b!1562366 (not c!253282)) b!1562368))

(declare-fun m!1833748 () Bool)

(assert (=> b!1562368 m!1833748))

(declare-fun m!1833750 () Bool)

(assert (=> b!1562368 m!1833750))

(assert (=> b!1562368 m!1833748))

(assert (=> b!1562368 m!1833750))

(declare-fun m!1833752 () Bool)

(assert (=> b!1562368 m!1833752))

(declare-fun m!1833754 () Bool)

(assert (=> b!1562367 m!1833754))

(assert (=> d!462527 d!462599))

(declare-fun d!462601 () Bool)

(declare-fun lt!541193 () Int)

(assert (=> d!462601 (>= lt!541193 0)))

(declare-fun e!1003331 () Int)

(assert (=> d!462601 (= lt!541193 e!1003331)))

(declare-fun c!253283 () Bool)

(assert (=> d!462601 (= c!253283 ((_ is Nil!16951) (_1!9695 lt!541165)))))

(assert (=> d!462601 (= (size!13762 (_1!9695 lt!541165)) lt!541193)))

(declare-fun b!1562369 () Bool)

(assert (=> b!1562369 (= e!1003331 0)))

(declare-fun b!1562370 () Bool)

(assert (=> b!1562370 (= e!1003331 (+ 1 (size!13762 (t!141568 (_1!9695 lt!541165)))))))

(assert (= (and d!462601 c!253283) b!1562369))

(assert (= (and d!462601 (not c!253283)) b!1562370))

(declare-fun m!1833756 () Bool)

(assert (=> b!1562370 m!1833756))

(assert (=> b!1562148 d!462601))

(assert (=> b!1562148 d!462511))

(assert (=> bm!102286 d!462513))

(declare-fun d!462603 () Bool)

(declare-fun res!696512 () Bool)

(declare-fun e!1003334 () Bool)

(assert (=> d!462603 (=> (not res!696512) (not e!1003334))))

(assert (=> d!462603 (= res!696512 (<= (size!13762 (list!6523 (xs!8389 (c!253235 totalInput!568)))) 512))))

(assert (=> d!462603 (= (inv!22267 (c!253235 totalInput!568)) e!1003334)))

(declare-fun b!1562375 () Bool)

(declare-fun res!696513 () Bool)

(assert (=> b!1562375 (=> (not res!696513) (not e!1003334))))

(assert (=> b!1562375 (= res!696513 (= (csize!11409 (c!253235 totalInput!568)) (size!13762 (list!6523 (xs!8389 (c!253235 totalInput!568))))))))

(declare-fun b!1562376 () Bool)

(assert (=> b!1562376 (= e!1003334 (and (> (csize!11409 (c!253235 totalInput!568)) 0) (<= (csize!11409 (c!253235 totalInput!568)) 512)))))

(assert (= (and d!462603 res!696512) b!1562375))

(assert (= (and b!1562375 res!696513) b!1562376))

(declare-fun m!1833758 () Bool)

(assert (=> d!462603 m!1833758))

(assert (=> d!462603 m!1833758))

(declare-fun m!1833760 () Bool)

(assert (=> d!462603 m!1833760))

(assert (=> b!1562375 m!1833758))

(assert (=> b!1562375 m!1833758))

(assert (=> b!1562375 m!1833760))

(assert (=> b!1562044 d!462603))

(declare-fun d!462605 () Bool)

(declare-fun res!696514 () Bool)

(declare-fun e!1003335 () Bool)

(assert (=> d!462605 (=> (not res!696514) (not e!1003335))))

(assert (=> d!462605 (= res!696514 (<= (size!13762 (list!6523 (xs!8389 (c!253235 input!1676)))) 512))))

(assert (=> d!462605 (= (inv!22267 (c!253235 input!1676)) e!1003335)))

(declare-fun b!1562377 () Bool)

(declare-fun res!696515 () Bool)

(assert (=> b!1562377 (=> (not res!696515) (not e!1003335))))

(assert (=> b!1562377 (= res!696515 (= (csize!11409 (c!253235 input!1676)) (size!13762 (list!6523 (xs!8389 (c!253235 input!1676))))))))

(declare-fun b!1562378 () Bool)

(assert (=> b!1562378 (= e!1003335 (and (> (csize!11409 (c!253235 input!1676)) 0) (<= (csize!11409 (c!253235 input!1676)) 512)))))

(assert (= (and d!462605 res!696514) b!1562377))

(assert (= (and b!1562377 res!696515) b!1562378))

(declare-fun m!1833762 () Bool)

(assert (=> d!462605 m!1833762))

(assert (=> d!462605 m!1833762))

(declare-fun m!1833764 () Bool)

(assert (=> d!462605 m!1833764))

(assert (=> b!1562377 m!1833762))

(assert (=> b!1562377 m!1833762))

(assert (=> b!1562377 m!1833764))

(assert (=> b!1562196 d!462605))

(declare-fun b!1562384 () Bool)

(assert (=> b!1562384 true))

(declare-fun d!462607 () Bool)

(declare-fun res!696520 () Bool)

(declare-fun e!1003338 () Bool)

(assert (=> d!462607 (=> (not res!696520) (not e!1003338))))

(declare-fun valid!1492 (MutableMap!1807) Bool)

(assert (=> d!462607 (= res!696520 (valid!1492 (cache!2188 (_4!463 lt!541055))))))

(assert (=> d!462607 (= (validCacheMapFurthestNullable!85 (cache!2188 (_4!463 lt!541055)) (totalInput!2504 (_4!463 lt!541055))) e!1003338)))

(declare-fun b!1562383 () Bool)

(declare-fun res!696521 () Bool)

(assert (=> b!1562383 (=> (not res!696521) (not e!1003338))))

(declare-fun invariantList!250 (List!17022) Bool)

(declare-datatypes ((ListMap!549 0))(
  ( (ListMap!550 (toList!859 List!17022)) )
))
(declare-fun map!3537 (MutableMap!1807) ListMap!549)

(assert (=> b!1562383 (= res!696521 (invariantList!250 (toList!859 (map!3537 (cache!2188 (_4!463 lt!541055))))))))

(declare-fun lambda!66077 () Int)

(declare-fun forall!3930 (List!17022 Int) Bool)

(assert (=> b!1562384 (= e!1003338 (forall!3930 (toList!859 (map!3537 (cache!2188 (_4!463 lt!541055)))) lambda!66077))))

(assert (= (and d!462607 res!696520) b!1562383))

(assert (= (and b!1562383 res!696521) b!1562384))

(declare-fun m!1833767 () Bool)

(assert (=> d!462607 m!1833767))

(declare-fun m!1833769 () Bool)

(assert (=> b!1562383 m!1833769))

(declare-fun m!1833771 () Bool)

(assert (=> b!1562383 m!1833771))

(assert (=> b!1562384 m!1833769))

(declare-fun m!1833773 () Bool)

(assert (=> b!1562384 m!1833773))

(assert (=> d!462581 d!462607))

(declare-fun d!462609 () Bool)

(declare-fun res!696526 () Bool)

(declare-fun e!1003341 () Bool)

(assert (=> d!462609 (=> (not res!696526) (not e!1003341))))

(declare-fun valid!1493 (MutableMap!1805) Bool)

(assert (=> d!462609 (= res!696526 (valid!1493 (cache!2186 cacheUp!755)))))

(assert (=> d!462609 (= (validCacheMapUp!172 (cache!2186 cacheUp!755)) e!1003341)))

(declare-fun b!1562391 () Bool)

(declare-fun res!696527 () Bool)

(assert (=> b!1562391 (=> (not res!696527) (not e!1003341))))

(declare-fun invariantList!251 (List!17021) Bool)

(declare-datatypes ((ListMap!551 0))(
  ( (ListMap!552 (toList!860 List!17021)) )
))
(declare-fun map!3538 (MutableMap!1805) ListMap!551)

(assert (=> b!1562391 (= res!696527 (invariantList!251 (toList!860 (map!3538 (cache!2186 cacheUp!755)))))))

(declare-fun b!1562392 () Bool)

(declare-fun lambda!66080 () Int)

(declare-fun forall!3931 (List!17021 Int) Bool)

(assert (=> b!1562392 (= e!1003341 (forall!3931 (toList!860 (map!3538 (cache!2186 cacheUp!755))) lambda!66080))))

(assert (= (and d!462609 res!696526) b!1562391))

(assert (= (and b!1562391 res!696527) b!1562392))

(declare-fun m!1833776 () Bool)

(assert (=> d!462609 m!1833776))

(declare-fun m!1833778 () Bool)

(assert (=> b!1562391 m!1833778))

(declare-fun m!1833780 () Bool)

(assert (=> b!1562391 m!1833780))

(assert (=> b!1562392 m!1833778))

(declare-fun m!1833782 () Bool)

(assert (=> b!1562392 m!1833782))

(assert (=> b!1562202 d!462609))

(declare-fun bs!388956 () Bool)

(declare-fun d!462611 () Bool)

(assert (= bs!388956 (and d!462611 d!462597)))

(declare-fun lambda!66081 () Int)

(assert (=> bs!388956 (= lambda!66081 lambda!66074)))

(assert (=> d!462611 (= (inv!22268 setElem!11242) (forall!3929 (exprs!1317 setElem!11242) lambda!66081))))

(declare-fun bs!388957 () Bool)

(assert (= bs!388957 d!462611))

(declare-fun m!1833784 () Bool)

(assert (=> bs!388957 m!1833784))

(assert (=> setNonEmpty!11243 d!462611))

(declare-fun d!462613 () Bool)

(assert (=> d!462613 (= (tail!2218 lt!541046) (t!141568 lt!541046))))

(assert (=> b!1562145 d!462613))

(assert (=> b!1562145 d!462511))

(declare-fun d!462615 () Bool)

(assert (=> d!462615 (= (++!4424 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951)) lt!541162) lt!541046)))

(declare-fun lt!541196 () Unit!26158)

(declare-fun choose!9326 (List!17019 C!8776 List!17019 List!17019) Unit!26158)

(assert (=> d!462615 (= lt!541196 (choose!9326 Nil!16951 lt!541150 lt!541162 lt!541046))))

(assert (=> d!462615 (= (++!4424 Nil!16951 (Cons!16951 lt!541150 lt!541162)) lt!541046)))

(assert (=> d!462615 (= (lemmaMoveElementToOtherListKeepsConcatEq!449 Nil!16951 lt!541150 lt!541162 lt!541046) lt!541196)))

(declare-fun bs!388958 () Bool)

(assert (= bs!388958 d!462615))

(assert (=> bs!388958 m!1833520))

(assert (=> bs!388958 m!1833520))

(assert (=> bs!388958 m!1833522))

(declare-fun m!1833786 () Bool)

(assert (=> bs!388958 m!1833786))

(declare-fun m!1833788 () Bool)

(assert (=> bs!388958 m!1833788))

(assert (=> b!1562145 d!462615))

(declare-fun d!462617 () Bool)

(assert (=> d!462617 (isPrefix!1270 (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951)) lt!541046)))

(declare-fun lt!541199 () Unit!26158)

(declare-fun choose!9327 (List!17019 List!17019) Unit!26158)

(assert (=> d!462617 (= lt!541199 (choose!9327 Nil!16951 lt!541046))))

(assert (=> d!462617 (isPrefix!1270 Nil!16951 lt!541046)))

(assert (=> d!462617 (= (lemmaAddHeadSuffixToPrefixStillPrefix!123 Nil!16951 lt!541046) lt!541199)))

(declare-fun bs!388959 () Bool)

(assert (= bs!388959 d!462617))

(assert (=> bs!388959 m!1833524))

(assert (=> bs!388959 m!1833524))

(assert (=> bs!388959 m!1833526))

(assert (=> bs!388959 m!1833530))

(declare-fun m!1833790 () Bool)

(assert (=> bs!388959 m!1833790))

(assert (=> bs!388959 m!1833530))

(assert (=> bs!388959 m!1833532))

(declare-fun m!1833792 () Bool)

(assert (=> bs!388959 m!1833792))

(assert (=> b!1562145 d!462617))

(declare-fun d!462619 () Bool)

(assert (=> d!462619 (= (head!3123 lt!541046) (h!22352 lt!541046))))

(assert (=> b!1562145 d!462619))

(declare-fun b!1562402 () Bool)

(declare-fun e!1003347 () List!17019)

(assert (=> b!1562402 (= e!1003347 (Cons!16951 (h!22352 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951))) (++!4424 (t!141568 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951))) lt!541162)))))

(declare-fun b!1562403 () Bool)

(declare-fun res!696533 () Bool)

(declare-fun e!1003346 () Bool)

(assert (=> b!1562403 (=> (not res!696533) (not e!1003346))))

(declare-fun lt!541202 () List!17019)

(assert (=> b!1562403 (= res!696533 (= (size!13762 lt!541202) (+ (size!13762 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951))) (size!13762 lt!541162))))))

(declare-fun d!462621 () Bool)

(assert (=> d!462621 e!1003346))

(declare-fun res!696532 () Bool)

(assert (=> d!462621 (=> (not res!696532) (not e!1003346))))

(declare-fun content!2343 (List!17019) (InoxSet C!8776))

(assert (=> d!462621 (= res!696532 (= (content!2343 lt!541202) ((_ map or) (content!2343 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951))) (content!2343 lt!541162))))))

(assert (=> d!462621 (= lt!541202 e!1003347)))

(declare-fun c!253286 () Bool)

(assert (=> d!462621 (= c!253286 ((_ is Nil!16951) (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951))))))

(assert (=> d!462621 (= (++!4424 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951)) lt!541162) lt!541202)))

(declare-fun b!1562404 () Bool)

(assert (=> b!1562404 (= e!1003346 (or (not (= lt!541162 Nil!16951)) (= lt!541202 (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951)))))))

(declare-fun b!1562401 () Bool)

(assert (=> b!1562401 (= e!1003347 lt!541162)))

(assert (= (and d!462621 c!253286) b!1562401))

(assert (= (and d!462621 (not c!253286)) b!1562402))

(assert (= (and d!462621 res!696532) b!1562403))

(assert (= (and b!1562403 res!696533) b!1562404))

(declare-fun m!1833794 () Bool)

(assert (=> b!1562402 m!1833794))

(declare-fun m!1833796 () Bool)

(assert (=> b!1562403 m!1833796))

(assert (=> b!1562403 m!1833520))

(declare-fun m!1833798 () Bool)

(assert (=> b!1562403 m!1833798))

(declare-fun m!1833800 () Bool)

(assert (=> b!1562403 m!1833800))

(declare-fun m!1833802 () Bool)

(assert (=> d!462621 m!1833802))

(assert (=> d!462621 m!1833520))

(declare-fun m!1833804 () Bool)

(assert (=> d!462621 m!1833804))

(declare-fun m!1833806 () Bool)

(assert (=> d!462621 m!1833806))

(assert (=> b!1562145 d!462621))

(declare-fun d!462623 () Bool)

(assert (=> d!462623 (<= (size!13762 Nil!16951) (size!13762 lt!541046))))

(declare-fun lt!541205 () Unit!26158)

(declare-fun choose!9328 (List!17019 List!17019) Unit!26158)

(assert (=> d!462623 (= lt!541205 (choose!9328 Nil!16951 lt!541046))))

(assert (=> d!462623 (isPrefix!1270 Nil!16951 lt!541046)))

(assert (=> d!462623 (= (lemmaIsPrefixThenSmallerEqSize!124 Nil!16951 lt!541046) lt!541205)))

(declare-fun bs!388960 () Bool)

(assert (= bs!388960 d!462623))

(assert (=> bs!388960 m!1833380))

(assert (=> bs!388960 m!1833384))

(declare-fun m!1833808 () Bool)

(assert (=> bs!388960 m!1833808))

(assert (=> bs!388960 m!1833792))

(assert (=> b!1562145 d!462623))

(declare-fun d!462625 () Bool)

(assert (=> d!462625 (= (head!3123 (getSuffix!680 lt!541046 Nil!16951)) (h!22352 (getSuffix!680 lt!541046 Nil!16951)))))

(assert (=> b!1562145 d!462625))

(declare-fun b!1562406 () Bool)

(declare-fun e!1003349 () List!17019)

(assert (=> b!1562406 (= e!1003349 (Cons!16951 (h!22352 Nil!16951) (++!4424 (t!141568 Nil!16951) (Cons!16951 (head!3123 lt!541046) Nil!16951))))))

(declare-fun b!1562407 () Bool)

(declare-fun res!696535 () Bool)

(declare-fun e!1003348 () Bool)

(assert (=> b!1562407 (=> (not res!696535) (not e!1003348))))

(declare-fun lt!541206 () List!17019)

(assert (=> b!1562407 (= res!696535 (= (size!13762 lt!541206) (+ (size!13762 Nil!16951) (size!13762 (Cons!16951 (head!3123 lt!541046) Nil!16951)))))))

(declare-fun d!462627 () Bool)

(assert (=> d!462627 e!1003348))

(declare-fun res!696534 () Bool)

(assert (=> d!462627 (=> (not res!696534) (not e!1003348))))

(assert (=> d!462627 (= res!696534 (= (content!2343 lt!541206) ((_ map or) (content!2343 Nil!16951) (content!2343 (Cons!16951 (head!3123 lt!541046) Nil!16951)))))))

(assert (=> d!462627 (= lt!541206 e!1003349)))

(declare-fun c!253287 () Bool)

(assert (=> d!462627 (= c!253287 ((_ is Nil!16951) Nil!16951))))

(assert (=> d!462627 (= (++!4424 Nil!16951 (Cons!16951 (head!3123 lt!541046) Nil!16951)) lt!541206)))

(declare-fun b!1562408 () Bool)

(assert (=> b!1562408 (= e!1003348 (or (not (= (Cons!16951 (head!3123 lt!541046) Nil!16951) Nil!16951)) (= lt!541206 Nil!16951)))))

(declare-fun b!1562405 () Bool)

(assert (=> b!1562405 (= e!1003349 (Cons!16951 (head!3123 lt!541046) Nil!16951))))

(assert (= (and d!462627 c!253287) b!1562405))

(assert (= (and d!462627 (not c!253287)) b!1562406))

(assert (= (and d!462627 res!696534) b!1562407))

(assert (= (and b!1562407 res!696535) b!1562408))

(declare-fun m!1833810 () Bool)

(assert (=> b!1562406 m!1833810))

(declare-fun m!1833812 () Bool)

(assert (=> b!1562407 m!1833812))

(assert (=> b!1562407 m!1833380))

(declare-fun m!1833814 () Bool)

(assert (=> b!1562407 m!1833814))

(declare-fun m!1833816 () Bool)

(assert (=> d!462627 m!1833816))

(declare-fun m!1833818 () Bool)

(assert (=> d!462627 m!1833818))

(declare-fun m!1833820 () Bool)

(assert (=> d!462627 m!1833820))

(assert (=> b!1562145 d!462627))

(declare-fun b!1562410 () Bool)

(declare-fun e!1003351 () List!17019)

(assert (=> b!1562410 (= e!1003351 (Cons!16951 (h!22352 Nil!16951) (++!4424 (t!141568 Nil!16951) (Cons!16951 lt!541150 Nil!16951))))))

(declare-fun b!1562411 () Bool)

(declare-fun res!696537 () Bool)

(declare-fun e!1003350 () Bool)

(assert (=> b!1562411 (=> (not res!696537) (not e!1003350))))

(declare-fun lt!541207 () List!17019)

(assert (=> b!1562411 (= res!696537 (= (size!13762 lt!541207) (+ (size!13762 Nil!16951) (size!13762 (Cons!16951 lt!541150 Nil!16951)))))))

(declare-fun d!462629 () Bool)

(assert (=> d!462629 e!1003350))

(declare-fun res!696536 () Bool)

(assert (=> d!462629 (=> (not res!696536) (not e!1003350))))

(assert (=> d!462629 (= res!696536 (= (content!2343 lt!541207) ((_ map or) (content!2343 Nil!16951) (content!2343 (Cons!16951 lt!541150 Nil!16951)))))))

(assert (=> d!462629 (= lt!541207 e!1003351)))

(declare-fun c!253288 () Bool)

(assert (=> d!462629 (= c!253288 ((_ is Nil!16951) Nil!16951))))

(assert (=> d!462629 (= (++!4424 Nil!16951 (Cons!16951 lt!541150 Nil!16951)) lt!541207)))

(declare-fun b!1562412 () Bool)

(assert (=> b!1562412 (= e!1003350 (or (not (= (Cons!16951 lt!541150 Nil!16951) Nil!16951)) (= lt!541207 Nil!16951)))))

(declare-fun b!1562409 () Bool)

(assert (=> b!1562409 (= e!1003351 (Cons!16951 lt!541150 Nil!16951))))

(assert (= (and d!462629 c!253288) b!1562409))

(assert (= (and d!462629 (not c!253288)) b!1562410))

(assert (= (and d!462629 res!696536) b!1562411))

(assert (= (and b!1562411 res!696537) b!1562412))

(declare-fun m!1833822 () Bool)

(assert (=> b!1562410 m!1833822))

(declare-fun m!1833824 () Bool)

(assert (=> b!1562411 m!1833824))

(assert (=> b!1562411 m!1833380))

(declare-fun m!1833826 () Bool)

(assert (=> b!1562411 m!1833826))

(declare-fun m!1833828 () Bool)

(assert (=> d!462629 m!1833828))

(assert (=> d!462629 m!1833818))

(declare-fun m!1833830 () Bool)

(assert (=> d!462629 m!1833830))

(assert (=> b!1562145 d!462629))

(assert (=> b!1562145 d!462509))

(declare-fun b!1562414 () Bool)

(declare-fun e!1003353 () List!17019)

(assert (=> b!1562414 (= e!1003353 (Cons!16951 (h!22352 Nil!16951) (++!4424 (t!141568 Nil!16951) (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951))))))

(declare-fun b!1562415 () Bool)

(declare-fun res!696539 () Bool)

(declare-fun e!1003352 () Bool)

(assert (=> b!1562415 (=> (not res!696539) (not e!1003352))))

(declare-fun lt!541208 () List!17019)

(assert (=> b!1562415 (= res!696539 (= (size!13762 lt!541208) (+ (size!13762 Nil!16951) (size!13762 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951)))))))

(declare-fun d!462631 () Bool)

(assert (=> d!462631 e!1003352))

(declare-fun res!696538 () Bool)

(assert (=> d!462631 (=> (not res!696538) (not e!1003352))))

(assert (=> d!462631 (= res!696538 (= (content!2343 lt!541208) ((_ map or) (content!2343 Nil!16951) (content!2343 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951)))))))

(assert (=> d!462631 (= lt!541208 e!1003353)))

(declare-fun c!253289 () Bool)

(assert (=> d!462631 (= c!253289 ((_ is Nil!16951) Nil!16951))))

(assert (=> d!462631 (= (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951)) lt!541208)))

(declare-fun b!1562416 () Bool)

(assert (=> b!1562416 (= e!1003352 (or (not (= (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951) Nil!16951)) (= lt!541208 Nil!16951)))))

(declare-fun b!1562413 () Bool)

(assert (=> b!1562413 (= e!1003353 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951))))

(assert (= (and d!462631 c!253289) b!1562413))

(assert (= (and d!462631 (not c!253289)) b!1562414))

(assert (= (and d!462631 res!696538) b!1562415))

(assert (= (and b!1562415 res!696539) b!1562416))

(declare-fun m!1833832 () Bool)

(assert (=> b!1562414 m!1833832))

(declare-fun m!1833834 () Bool)

(assert (=> b!1562415 m!1833834))

(assert (=> b!1562415 m!1833380))

(declare-fun m!1833836 () Bool)

(assert (=> b!1562415 m!1833836))

(declare-fun m!1833838 () Bool)

(assert (=> d!462631 m!1833838))

(assert (=> d!462631 m!1833818))

(declare-fun m!1833840 () Bool)

(assert (=> d!462631 m!1833840))

(assert (=> b!1562145 d!462631))

(declare-fun d!462633 () Bool)

(declare-fun lt!541211 () List!17019)

(assert (=> d!462633 (= (++!4424 Nil!16951 lt!541211) lt!541046)))

(declare-fun e!1003356 () List!17019)

(assert (=> d!462633 (= lt!541211 e!1003356)))

(declare-fun c!253292 () Bool)

(assert (=> d!462633 (= c!253292 ((_ is Cons!16951) Nil!16951))))

(assert (=> d!462633 (>= (size!13762 lt!541046) (size!13762 Nil!16951))))

(assert (=> d!462633 (= (getSuffix!680 lt!541046 Nil!16951) lt!541211)))

(declare-fun b!1562421 () Bool)

(assert (=> b!1562421 (= e!1003356 (getSuffix!680 (tail!2218 lt!541046) (t!141568 Nil!16951)))))

(declare-fun b!1562422 () Bool)

(assert (=> b!1562422 (= e!1003356 lt!541046)))

(assert (= (and d!462633 c!253292) b!1562421))

(assert (= (and d!462633 (not c!253292)) b!1562422))

(declare-fun m!1833842 () Bool)

(assert (=> d!462633 m!1833842))

(assert (=> d!462633 m!1833384))

(assert (=> d!462633 m!1833380))

(assert (=> b!1562421 m!1833518))

(assert (=> b!1562421 m!1833518))

(declare-fun m!1833844 () Bool)

(assert (=> b!1562421 m!1833844))

(assert (=> b!1562145 d!462633))

(declare-fun b!1562434 () Bool)

(declare-fun e!1003363 () Bool)

(assert (=> b!1562434 (= e!1003363 (>= (size!13762 lt!541046) (size!13762 (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951)))))))

(declare-fun b!1562433 () Bool)

(declare-fun e!1003365 () Bool)

(assert (=> b!1562433 (= e!1003365 (isPrefix!1270 (tail!2218 (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951))) (tail!2218 lt!541046)))))

(declare-fun b!1562432 () Bool)

(declare-fun res!696551 () Bool)

(assert (=> b!1562432 (=> (not res!696551) (not e!1003365))))

(assert (=> b!1562432 (= res!696551 (= (head!3123 (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951))) (head!3123 lt!541046)))))

(declare-fun d!462635 () Bool)

(assert (=> d!462635 e!1003363))

(declare-fun res!696550 () Bool)

(assert (=> d!462635 (=> res!696550 e!1003363)))

(declare-fun lt!541214 () Bool)

(assert (=> d!462635 (= res!696550 (not lt!541214))))

(declare-fun e!1003364 () Bool)

(assert (=> d!462635 (= lt!541214 e!1003364)))

(declare-fun res!696548 () Bool)

(assert (=> d!462635 (=> res!696548 e!1003364)))

(assert (=> d!462635 (= res!696548 ((_ is Nil!16951) (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951))))))

(assert (=> d!462635 (= (isPrefix!1270 (++!4424 Nil!16951 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 Nil!16951)) Nil!16951)) lt!541046) lt!541214)))

(declare-fun b!1562431 () Bool)

(assert (=> b!1562431 (= e!1003364 e!1003365)))

(declare-fun res!696549 () Bool)

(assert (=> b!1562431 (=> (not res!696549) (not e!1003365))))

(assert (=> b!1562431 (= res!696549 (not ((_ is Nil!16951) lt!541046)))))

(assert (= (and d!462635 (not res!696548)) b!1562431))

(assert (= (and b!1562431 res!696549) b!1562432))

(assert (= (and b!1562432 res!696551) b!1562433))

(assert (= (and d!462635 (not res!696550)) b!1562434))

(assert (=> b!1562434 m!1833384))

(assert (=> b!1562434 m!1833524))

(declare-fun m!1833846 () Bool)

(assert (=> b!1562434 m!1833846))

(assert (=> b!1562433 m!1833524))

(declare-fun m!1833848 () Bool)

(assert (=> b!1562433 m!1833848))

(assert (=> b!1562433 m!1833518))

(assert (=> b!1562433 m!1833848))

(assert (=> b!1562433 m!1833518))

(declare-fun m!1833850 () Bool)

(assert (=> b!1562433 m!1833850))

(assert (=> b!1562432 m!1833524))

(declare-fun m!1833852 () Bool)

(assert (=> b!1562432 m!1833852))

(assert (=> b!1562432 m!1833516))

(assert (=> b!1562145 d!462635))

(declare-fun d!462637 () Bool)

(assert (=> d!462637 (= (isEmpty!10171 (tail!2218 (_1!9695 lt!541045))) ((_ is Nil!16951) (tail!2218 (_1!9695 lt!541045))))))

(assert (=> b!1562081 d!462637))

(declare-fun d!462639 () Bool)

(assert (=> d!462639 (= (tail!2218 (_1!9695 lt!541045)) (t!141568 (_1!9695 lt!541045)))))

(assert (=> b!1562081 d!462639))

(declare-fun bs!388961 () Bool)

(declare-fun d!462641 () Bool)

(assert (= bs!388961 (and d!462641 d!462597)))

(declare-fun lambda!66082 () Int)

(assert (=> bs!388961 (= lambda!66082 lambda!66074)))

(declare-fun bs!388962 () Bool)

(assert (= bs!388962 (and d!462641 d!462611)))

(assert (=> bs!388962 (= lambda!66082 lambda!66081)))

(assert (=> d!462641 (= (inv!22268 (_2!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))) (forall!3929 (exprs!1317 (_2!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))) lambda!66082))))

(declare-fun bs!388963 () Bool)

(assert (= bs!388963 d!462641))

(declare-fun m!1833854 () Bool)

(assert (=> bs!388963 m!1833854))

(assert (=> b!1562267 d!462641))

(declare-fun d!462643 () Bool)

(assert (=> d!462643 (= (isEmpty!10171 (_1!9695 lt!541145)) ((_ is Nil!16951) (_1!9695 lt!541145)))))

(assert (=> b!1562142 d!462643))

(declare-fun bs!388964 () Bool)

(declare-fun d!462645 () Bool)

(assert (= bs!388964 (and d!462645 d!462597)))

(declare-fun lambda!66083 () Int)

(assert (=> bs!388964 (= lambda!66083 lambda!66074)))

(declare-fun bs!388965 () Bool)

(assert (= bs!388965 (and d!462645 d!462611)))

(assert (=> bs!388965 (= lambda!66083 lambda!66081)))

(declare-fun bs!388966 () Bool)

(assert (= bs!388966 (and d!462645 d!462641)))

(assert (=> bs!388966 (= lambda!66083 lambda!66082)))

(assert (=> d!462645 (= (inv!22268 (_2!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))) (forall!3929 (exprs!1317 (_2!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))) lambda!66083))))

(declare-fun bs!388967 () Bool)

(assert (= bs!388967 d!462645))

(declare-fun m!1833856 () Bool)

(assert (=> bs!388967 m!1833856))

(assert (=> b!1562264 d!462645))

(assert (=> b!1562077 d!462637))

(assert (=> b!1562077 d!462639))

(declare-fun bs!388968 () Bool)

(declare-fun d!462647 () Bool)

(assert (= bs!388968 (and d!462647 d!462597)))

(declare-fun lambda!66084 () Int)

(assert (=> bs!388968 (= lambda!66084 lambda!66074)))

(declare-fun bs!388969 () Bool)

(assert (= bs!388969 (and d!462647 d!462611)))

(assert (=> bs!388969 (= lambda!66084 lambda!66081)))

(declare-fun bs!388970 () Bool)

(assert (= bs!388970 (and d!462647 d!462641)))

(assert (=> bs!388970 (= lambda!66084 lambda!66082)))

(declare-fun bs!388971 () Bool)

(assert (= bs!388971 (and d!462647 d!462645)))

(assert (=> bs!388971 (= lambda!66084 lambda!66083)))

(assert (=> d!462647 (= (inv!22268 (_1!9685 (_1!9686 (h!22354 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))) (forall!3929 (exprs!1317 (_1!9685 (_1!9686 (h!22354 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))) lambda!66084))))

(declare-fun bs!388972 () Bool)

(assert (= bs!388972 d!462647))

(declare-fun m!1833858 () Bool)

(assert (=> bs!388972 m!1833858))

(assert (=> b!1562271 d!462647))

(declare-fun bs!388973 () Bool)

(declare-fun d!462649 () Bool)

(assert (= bs!388973 (and d!462649 d!462647)))

(declare-fun lambda!66085 () Int)

(assert (=> bs!388973 (= lambda!66085 lambda!66084)))

(declare-fun bs!388974 () Bool)

(assert (= bs!388974 (and d!462649 d!462645)))

(assert (=> bs!388974 (= lambda!66085 lambda!66083)))

(declare-fun bs!388975 () Bool)

(assert (= bs!388975 (and d!462649 d!462641)))

(assert (=> bs!388975 (= lambda!66085 lambda!66082)))

(declare-fun bs!388976 () Bool)

(assert (= bs!388976 (and d!462649 d!462611)))

(assert (=> bs!388976 (= lambda!66085 lambda!66081)))

(declare-fun bs!388977 () Bool)

(assert (= bs!388977 (and d!462649 d!462597)))

(assert (=> bs!388977 (= lambda!66085 lambda!66074)))

(assert (=> d!462649 (= (inv!22268 (_2!9691 (_1!9692 (h!22356 mapDefault!8677)))) (forall!3929 (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapDefault!8677)))) lambda!66085))))

(declare-fun bs!388978 () Bool)

(assert (= bs!388978 d!462649))

(declare-fun m!1833860 () Bool)

(assert (=> bs!388978 m!1833860))

(assert (=> b!1562261 d!462649))

(assert (=> b!1562018 d!462501))

(declare-fun b!1562445 () Bool)

(declare-fun e!1003372 () Bool)

(declare-fun e!1003373 () Bool)

(assert (=> b!1562445 (= e!1003372 e!1003373)))

(declare-fun c!253297 () Bool)

(assert (=> b!1562445 (= c!253297 ((_ is IntegerValue!9184) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))

(declare-fun b!1562446 () Bool)

(declare-fun res!696554 () Bool)

(declare-fun e!1003374 () Bool)

(assert (=> b!1562446 (=> res!696554 e!1003374)))

(assert (=> b!1562446 (= res!696554 (not ((_ is IntegerValue!9185) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))))

(assert (=> b!1562446 (= e!1003373 e!1003374)))

(declare-fun d!462651 () Bool)

(declare-fun c!253298 () Bool)

(assert (=> d!462651 (= c!253298 ((_ is IntegerValue!9183) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))

(assert (=> d!462651 (= (inv!21 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)) e!1003372)))

(declare-fun b!1562447 () Bool)

(declare-fun inv!15 (TokenValue!3061) Bool)

(assert (=> b!1562447 (= e!1003374 (inv!15 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))

(declare-fun b!1562448 () Bool)

(declare-fun inv!16 (TokenValue!3061) Bool)

(assert (=> b!1562448 (= e!1003372 (inv!16 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))

(declare-fun b!1562449 () Bool)

(declare-fun inv!17 (TokenValue!3061) Bool)

(assert (=> b!1562449 (= e!1003373 (inv!17 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))

(assert (= (and d!462651 c!253298) b!1562448))

(assert (= (and d!462651 (not c!253298)) b!1562445))

(assert (= (and b!1562445 c!253297) b!1562449))

(assert (= (and b!1562445 (not c!253297)) b!1562446))

(assert (= (and b!1562446 (not res!696554)) b!1562447))

(declare-fun m!1833862 () Bool)

(assert (=> b!1562447 m!1833862))

(declare-fun m!1833864 () Bool)

(assert (=> b!1562448 m!1833864))

(declare-fun m!1833866 () Bool)

(assert (=> b!1562449 m!1833866))

(assert (=> tb!87401 d!462651))

(declare-fun bs!388979 () Bool)

(declare-fun d!462653 () Bool)

(assert (= bs!388979 (and d!462653 d!462649)))

(declare-fun lambda!66086 () Int)

(assert (=> bs!388979 (= lambda!66086 lambda!66085)))

(declare-fun bs!388980 () Bool)

(assert (= bs!388980 (and d!462653 d!462647)))

(assert (=> bs!388980 (= lambda!66086 lambda!66084)))

(declare-fun bs!388981 () Bool)

(assert (= bs!388981 (and d!462653 d!462645)))

(assert (=> bs!388981 (= lambda!66086 lambda!66083)))

(declare-fun bs!388982 () Bool)

(assert (= bs!388982 (and d!462653 d!462641)))

(assert (=> bs!388982 (= lambda!66086 lambda!66082)))

(declare-fun bs!388983 () Bool)

(assert (= bs!388983 (and d!462653 d!462611)))

(assert (=> bs!388983 (= lambda!66086 lambda!66081)))

(declare-fun bs!388984 () Bool)

(assert (= bs!388984 (and d!462653 d!462597)))

(assert (=> bs!388984 (= lambda!66086 lambda!66074)))

(assert (=> d!462653 (= (inv!22268 (_2!9691 (_1!9692 (h!22356 mapValue!8678)))) (forall!3929 (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapValue!8678)))) lambda!66086))))

(declare-fun bs!388985 () Bool)

(assert (= bs!388985 d!462653))

(declare-fun m!1833868 () Bool)

(assert (=> bs!388985 m!1833868))

(assert (=> b!1562328 d!462653))

(declare-fun b!1562468 () Bool)

(declare-fun e!1003385 () Int)

(declare-fun e!1003387 () Int)

(assert (=> b!1562468 (= e!1003385 e!1003387)))

(declare-fun c!253308 () Bool)

(declare-fun call!102318 () Int)

(assert (=> b!1562468 (= c!253308 (>= (- (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046)) call!102318))))

(declare-fun b!1562469 () Bool)

(declare-fun e!1003388 () List!17019)

(assert (=> b!1562469 (= e!1003388 (drop!796 (t!141568 (list!6521 totalInput!568)) (- (- (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046)) 1)))))

(declare-fun b!1562470 () Bool)

(declare-fun e!1003386 () List!17019)

(assert (=> b!1562470 (= e!1003386 Nil!16951)))

(declare-fun b!1562471 () Bool)

(assert (=> b!1562471 (= e!1003387 (- call!102318 (- (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046))))))

(declare-fun b!1562472 () Bool)

(assert (=> b!1562472 (= e!1003385 call!102318)))

(declare-fun bm!102313 () Bool)

(assert (=> bm!102313 (= call!102318 (size!13762 (list!6521 totalInput!568)))))

(declare-fun d!462655 () Bool)

(declare-fun e!1003389 () Bool)

(assert (=> d!462655 e!1003389))

(declare-fun res!696557 () Bool)

(assert (=> d!462655 (=> (not res!696557) (not e!1003389))))

(declare-fun lt!541217 () List!17019)

(assert (=> d!462655 (= res!696557 (= ((_ map implies) (content!2343 lt!541217) (content!2343 (list!6521 totalInput!568))) ((as const (InoxSet C!8776)) true)))))

(assert (=> d!462655 (= lt!541217 e!1003386)))

(declare-fun c!253307 () Bool)

(assert (=> d!462655 (= c!253307 ((_ is Nil!16951) (list!6521 totalInput!568)))))

(assert (=> d!462655 (= (drop!796 (list!6521 totalInput!568) (- (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046))) lt!541217)))

(declare-fun b!1562473 () Bool)

(assert (=> b!1562473 (= e!1003389 (= (size!13762 lt!541217) e!1003385))))

(declare-fun c!253309 () Bool)

(assert (=> b!1562473 (= c!253309 (<= (- (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046)) 0))))

(declare-fun b!1562474 () Bool)

(assert (=> b!1562474 (= e!1003387 0)))

(declare-fun b!1562475 () Bool)

(assert (=> b!1562475 (= e!1003386 e!1003388)))

(declare-fun c!253310 () Bool)

(assert (=> b!1562475 (= c!253310 (<= (- (size!13762 (list!6521 totalInput!568)) (size!13762 lt!541046)) 0))))

(declare-fun b!1562476 () Bool)

(assert (=> b!1562476 (= e!1003388 (list!6521 totalInput!568))))

(assert (= (and d!462655 c!253307) b!1562470))

(assert (= (and d!462655 (not c!253307)) b!1562475))

(assert (= (and b!1562475 c!253310) b!1562476))

(assert (= (and b!1562475 (not c!253310)) b!1562469))

(assert (= (and d!462655 res!696557) b!1562473))

(assert (= (and b!1562473 c!253309) b!1562472))

(assert (= (and b!1562473 (not c!253309)) b!1562468))

(assert (= (and b!1562468 c!253308) b!1562474))

(assert (= (and b!1562468 (not c!253308)) b!1562471))

(assert (= (or b!1562472 b!1562468 b!1562471) bm!102313))

(declare-fun m!1833870 () Bool)

(assert (=> b!1562469 m!1833870))

(assert (=> bm!102313 m!1833340))

(assert (=> bm!102313 m!1833438))

(declare-fun m!1833872 () Bool)

(assert (=> d!462655 m!1833872))

(assert (=> d!462655 m!1833340))

(declare-fun m!1833874 () Bool)

(assert (=> d!462655 m!1833874))

(declare-fun m!1833876 () Bool)

(assert (=> b!1562473 m!1833876))

(assert (=> d!462491 d!462655))

(declare-fun d!462657 () Bool)

(declare-fun lt!541218 () Int)

(assert (=> d!462657 (>= lt!541218 0)))

(declare-fun e!1003390 () Int)

(assert (=> d!462657 (= lt!541218 e!1003390)))

(declare-fun c!253311 () Bool)

(assert (=> d!462657 (= c!253311 ((_ is Nil!16951) (list!6521 totalInput!568)))))

(assert (=> d!462657 (= (size!13762 (list!6521 totalInput!568)) lt!541218)))

(declare-fun b!1562477 () Bool)

(assert (=> b!1562477 (= e!1003390 0)))

(declare-fun b!1562478 () Bool)

(assert (=> b!1562478 (= e!1003390 (+ 1 (size!13762 (t!141568 (list!6521 totalInput!568)))))))

(assert (= (and d!462657 c!253311) b!1562477))

(assert (= (and d!462657 (not c!253311)) b!1562478))

(declare-fun m!1833878 () Bool)

(assert (=> b!1562478 m!1833878))

(assert (=> d!462491 d!462657))

(assert (=> d!462491 d!462509))

(declare-fun d!462659 () Bool)

(declare-fun res!696568 () Bool)

(declare-fun e!1003405 () Bool)

(assert (=> d!462659 (=> res!696568 e!1003405)))

(assert (=> d!462659 (= res!696568 ((_ is ElementMatch!4299) (regex!2971 rule!240)))))

(assert (=> d!462659 (= (validRegex!1722 (regex!2971 rule!240)) e!1003405)))

(declare-fun b!1562497 () Bool)

(declare-fun e!1003409 () Bool)

(declare-fun call!102327 () Bool)

(assert (=> b!1562497 (= e!1003409 call!102327)))

(declare-fun b!1562498 () Bool)

(declare-fun e!1003411 () Bool)

(declare-fun call!102325 () Bool)

(assert (=> b!1562498 (= e!1003411 call!102325)))

(declare-fun b!1562499 () Bool)

(declare-fun e!1003406 () Bool)

(assert (=> b!1562499 (= e!1003406 call!102327)))

(declare-fun b!1562500 () Bool)

(declare-fun e!1003408 () Bool)

(assert (=> b!1562500 (= e!1003405 e!1003408)))

(declare-fun c!253316 () Bool)

(assert (=> b!1562500 (= c!253316 ((_ is Star!4299) (regex!2971 rule!240)))))

(declare-fun b!1562501 () Bool)

(declare-fun e!1003410 () Bool)

(assert (=> b!1562501 (= e!1003408 e!1003410)))

(declare-fun c!253317 () Bool)

(assert (=> b!1562501 (= c!253317 ((_ is Union!4299) (regex!2971 rule!240)))))

(declare-fun bm!102320 () Bool)

(assert (=> bm!102320 (= call!102325 (validRegex!1722 (ite c!253316 (reg!4628 (regex!2971 rule!240)) (ite c!253317 (regOne!9111 (regex!2971 rule!240)) (regOne!9110 (regex!2971 rule!240))))))))

(declare-fun bm!102321 () Bool)

(assert (=> bm!102321 (= call!102327 (validRegex!1722 (ite c!253317 (regTwo!9111 (regex!2971 rule!240)) (regTwo!9110 (regex!2971 rule!240)))))))

(declare-fun b!1562502 () Bool)

(declare-fun e!1003407 () Bool)

(assert (=> b!1562502 (= e!1003407 e!1003406)))

(declare-fun res!696570 () Bool)

(assert (=> b!1562502 (=> (not res!696570) (not e!1003406))))

(declare-fun call!102326 () Bool)

(assert (=> b!1562502 (= res!696570 call!102326)))

(declare-fun b!1562503 () Bool)

(assert (=> b!1562503 (= e!1003408 e!1003411)))

(declare-fun res!696572 () Bool)

(assert (=> b!1562503 (= res!696572 (not (nullable!1281 (reg!4628 (regex!2971 rule!240)))))))

(assert (=> b!1562503 (=> (not res!696572) (not e!1003411))))

(declare-fun bm!102322 () Bool)

(assert (=> bm!102322 (= call!102326 call!102325)))

(declare-fun b!1562504 () Bool)

(declare-fun res!696569 () Bool)

(assert (=> b!1562504 (=> res!696569 e!1003407)))

(assert (=> b!1562504 (= res!696569 (not ((_ is Concat!7361) (regex!2971 rule!240))))))

(assert (=> b!1562504 (= e!1003410 e!1003407)))

(declare-fun b!1562505 () Bool)

(declare-fun res!696571 () Bool)

(assert (=> b!1562505 (=> (not res!696571) (not e!1003409))))

(assert (=> b!1562505 (= res!696571 call!102326)))

(assert (=> b!1562505 (= e!1003410 e!1003409)))

(assert (= (and d!462659 (not res!696568)) b!1562500))

(assert (= (and b!1562500 c!253316) b!1562503))

(assert (= (and b!1562500 (not c!253316)) b!1562501))

(assert (= (and b!1562503 res!696572) b!1562498))

(assert (= (and b!1562501 c!253317) b!1562505))

(assert (= (and b!1562501 (not c!253317)) b!1562504))

(assert (= (and b!1562505 res!696571) b!1562497))

(assert (= (and b!1562504 (not res!696569)) b!1562502))

(assert (= (and b!1562502 res!696570) b!1562499))

(assert (= (or b!1562497 b!1562499) bm!102321))

(assert (= (or b!1562505 b!1562502) bm!102322))

(assert (= (or b!1562498 bm!102322) bm!102320))

(declare-fun m!1833880 () Bool)

(assert (=> bm!102320 m!1833880))

(declare-fun m!1833882 () Bool)

(assert (=> bm!102321 m!1833882))

(declare-fun m!1833884 () Bool)

(assert (=> b!1562503 m!1833884))

(assert (=> d!462489 d!462659))

(declare-fun d!462661 () Bool)

(assert (=> d!462661 (= (valid!1490 (_2!9694 lt!541171)) (validCacheMapUp!172 (cache!2186 (_2!9694 lt!541171))))))

(declare-fun bs!388986 () Bool)

(assert (= bs!388986 d!462661))

(declare-fun m!1833886 () Bool)

(assert (=> bs!388986 m!1833886))

(assert (=> b!1562161 d!462661))

(declare-fun d!462663 () Bool)

(assert (=> d!462663 (= (get!4876 lt!541186) (v!23818 lt!541186))))

(assert (=> b!1562185 d!462663))

(declare-fun d!462665 () Bool)

(assert (=> d!462665 (= (apply!4123 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186)))) (seqFromList!1787 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186))))) (dynLambda!7559 (toValue!4352 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186))))) (seqFromList!1787 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186))))))))

(declare-fun b_lambda!49173 () Bool)

(assert (=> (not b_lambda!49173) (not d!462665)))

(declare-fun tb!87407 () Bool)

(declare-fun t!141583 () Bool)

(assert (=> (and b!1562013 (= (toValue!4352 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186)))))) t!141583) tb!87407))

(declare-fun result!105738 () Bool)

(assert (=> tb!87407 (= result!105738 (inv!21 (dynLambda!7559 (toValue!4352 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186))))) (seqFromList!1787 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186)))))))))

(declare-fun m!1833888 () Bool)

(assert (=> tb!87407 m!1833888))

(assert (=> d!462665 t!141583))

(declare-fun b_and!109075 () Bool)

(assert (= b_and!109073 (and (=> t!141583 result!105738) b_and!109075)))

(assert (=> d!462665 m!1833614))

(declare-fun m!1833890 () Bool)

(assert (=> d!462665 m!1833890))

(assert (=> b!1562185 d!462665))

(declare-fun d!462667 () Bool)

(assert (=> d!462667 (= (seqFromList!1787 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186)))) (fromListB!771 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186)))))))

(declare-fun bs!388987 () Bool)

(assert (= bs!388987 d!462667))

(declare-fun m!1833892 () Bool)

(assert (=> bs!388987 m!1833892))

(assert (=> b!1562185 d!462667))

(declare-fun d!462669 () Bool)

(declare-fun nullableFct!299 (Regex!4299) Bool)

(assert (=> d!462669 (= (nullable!1281 (regex!2971 rule!240)) (nullableFct!299 (regex!2971 rule!240)))))

(declare-fun bs!388988 () Bool)

(assert (= bs!388988 d!462669))

(declare-fun m!1833894 () Bool)

(assert (=> bs!388988 m!1833894))

(assert (=> b!1562073 d!462669))

(declare-fun d!462671 () Bool)

(assert (=> d!462671 (dynLambda!7561 lambda!66068 lt!541056)))

(assert (=> d!462671 true))

(declare-fun _$1!9963 () Unit!26158)

(assert (=> d!462671 (= (choose!9323 lambda!66068 lt!541056) _$1!9963)))

(declare-fun b_lambda!49175 () Bool)

(assert (=> (not b_lambda!49175) (not d!462671)))

(declare-fun bs!388989 () Bool)

(assert (= bs!388989 d!462671))

(assert (=> bs!388989 m!1833504))

(assert (=> d!462529 d!462671))

(declare-fun d!462673 () Bool)

(declare-fun choose!9329 (Int) Bool)

(assert (=> d!462673 (= (Forall!621 lambda!66068) (choose!9329 lambda!66068))))

(declare-fun bs!388990 () Bool)

(assert (= bs!388990 d!462673))

(declare-fun m!1833896 () Bool)

(assert (=> bs!388990 m!1833896))

(assert (=> d!462529 d!462673))

(declare-fun bs!388991 () Bool)

(declare-fun d!462675 () Bool)

(assert (= bs!388991 (and d!462675 d!462649)))

(declare-fun lambda!66087 () Int)

(assert (=> bs!388991 (= lambda!66087 lambda!66085)))

(declare-fun bs!388992 () Bool)

(assert (= bs!388992 (and d!462675 d!462647)))

(assert (=> bs!388992 (= lambda!66087 lambda!66084)))

(declare-fun bs!388993 () Bool)

(assert (= bs!388993 (and d!462675 d!462645)))

(assert (=> bs!388993 (= lambda!66087 lambda!66083)))

(declare-fun bs!388994 () Bool)

(assert (= bs!388994 (and d!462675 d!462641)))

(assert (=> bs!388994 (= lambda!66087 lambda!66082)))

(declare-fun bs!388995 () Bool)

(assert (= bs!388995 (and d!462675 d!462653)))

(assert (=> bs!388995 (= lambda!66087 lambda!66086)))

(declare-fun bs!388996 () Bool)

(assert (= bs!388996 (and d!462675 d!462611)))

(assert (=> bs!388996 (= lambda!66087 lambda!66081)))

(declare-fun bs!388997 () Bool)

(assert (= bs!388997 (and d!462675 d!462597)))

(assert (=> bs!388997 (= lambda!66087 lambda!66074)))

(assert (=> d!462675 (= (inv!22268 setElem!11264) (forall!3929 (exprs!1317 setElem!11264) lambda!66087))))

(declare-fun bs!388998 () Bool)

(assert (= bs!388998 d!462675))

(declare-fun m!1833898 () Bool)

(assert (=> bs!388998 m!1833898))

(assert (=> setNonEmpty!11264 d!462675))

(declare-fun d!462677 () Bool)

(assert (=> d!462677 (= (list!6521 (_2!9693 (_1!9694 lt!541171))) (list!6522 (c!253235 (_2!9693 (_1!9694 lt!541171)))))))

(declare-fun bs!388999 () Bool)

(assert (= bs!388999 d!462677))

(declare-fun m!1833900 () Bool)

(assert (=> bs!388999 m!1833900))

(assert (=> d!462543 d!462677))

(declare-fun d!462679 () Bool)

(declare-fun lt!541239 () tuple2!16586)

(assert (=> d!462679 (= (++!4424 (_1!9695 lt!541239) (_2!9695 lt!541239)) (list!6521 input!1676))))

(declare-fun sizeTr!52 (List!17019 Int) Int)

(assert (=> d!462679 (= lt!541239 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 0 (list!6521 input!1676) (list!6521 input!1676) (sizeTr!52 (list!6521 input!1676) 0)))))

(declare-fun lt!541235 () Unit!26158)

(declare-fun lt!541238 () Unit!26158)

(assert (=> d!462679 (= lt!541235 lt!541238)))

(declare-fun lt!541240 () List!17019)

(declare-fun lt!541237 () Int)

(assert (=> d!462679 (= (sizeTr!52 lt!541240 lt!541237) (+ (size!13762 lt!541240) lt!541237))))

(declare-fun lemmaSizeTrEqualsSize!52 (List!17019 Int) Unit!26158)

(assert (=> d!462679 (= lt!541238 (lemmaSizeTrEqualsSize!52 lt!541240 lt!541237))))

(assert (=> d!462679 (= lt!541237 0)))

(assert (=> d!462679 (= lt!541240 Nil!16951)))

(declare-fun lt!541241 () Unit!26158)

(declare-fun lt!541236 () Unit!26158)

(assert (=> d!462679 (= lt!541241 lt!541236)))

(declare-fun lt!541242 () Int)

(assert (=> d!462679 (= (sizeTr!52 (list!6521 input!1676) lt!541242) (+ (size!13762 (list!6521 input!1676)) lt!541242))))

(assert (=> d!462679 (= lt!541236 (lemmaSizeTrEqualsSize!52 (list!6521 input!1676) lt!541242))))

(assert (=> d!462679 (= lt!541242 0)))

(assert (=> d!462679 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462679 (= (findLongestMatch!272 (regex!2971 rule!240) (list!6521 input!1676)) lt!541239)))

(declare-fun bs!389000 () Bool)

(assert (= bs!389000 d!462679))

(assert (=> bs!389000 m!1833344))

(declare-fun m!1833902 () Bool)

(assert (=> bs!389000 m!1833902))

(assert (=> bs!389000 m!1833344))

(assert (=> bs!389000 m!1833344))

(assert (=> bs!389000 m!1833902))

(declare-fun m!1833904 () Bool)

(assert (=> bs!389000 m!1833904))

(assert (=> bs!389000 m!1833344))

(declare-fun m!1833906 () Bool)

(assert (=> bs!389000 m!1833906))

(assert (=> bs!389000 m!1833434))

(assert (=> bs!389000 m!1833344))

(declare-fun m!1833908 () Bool)

(assert (=> bs!389000 m!1833908))

(declare-fun m!1833910 () Bool)

(assert (=> bs!389000 m!1833910))

(declare-fun m!1833912 () Bool)

(assert (=> bs!389000 m!1833912))

(assert (=> bs!389000 m!1833344))

(declare-fun m!1833914 () Bool)

(assert (=> bs!389000 m!1833914))

(declare-fun m!1833916 () Bool)

(assert (=> bs!389000 m!1833916))

(declare-fun m!1833918 () Bool)

(assert (=> bs!389000 m!1833918))

(assert (=> d!462543 d!462679))

(declare-fun b!1562587 () Bool)

(declare-fun b_free!41751 () Bool)

(declare-fun b_next!42455 () Bool)

(assert (=> b!1562587 (= b_free!41751 (not b_next!42455))))

(declare-fun tp!460124 () Bool)

(declare-fun b_and!109077 () Bool)

(assert (=> b!1562587 (= tp!460124 b_and!109077)))

(declare-fun b!1562576 () Bool)

(declare-fun b_free!41753 () Bool)

(declare-fun b_next!42457 () Bool)

(assert (=> b!1562576 (= b_free!41753 (not b_next!42457))))

(declare-fun tp!460138 () Bool)

(declare-fun b_and!109079 () Bool)

(assert (=> b!1562576 (= tp!460138 b_and!109079)))

(declare-fun b!1562564 () Bool)

(declare-fun b_free!41755 () Bool)

(declare-fun b_next!42459 () Bool)

(assert (=> b!1562564 (= b_free!41755 (not b_next!42459))))

(declare-fun tp!460120 () Bool)

(declare-fun b_and!109081 () Bool)

(assert (=> b!1562564 (= tp!460120 b_and!109081)))

(declare-fun b!1562570 () Bool)

(declare-fun b_free!41757 () Bool)

(declare-fun b_next!42461 () Bool)

(assert (=> b!1562570 (= b_free!41757 (not b_next!42461))))

(declare-fun tp!460130 () Bool)

(declare-fun b_and!109083 () Bool)

(assert (=> b!1562570 (= tp!460130 b_and!109083)))

(declare-fun b!1562573 () Bool)

(declare-fun b_free!41759 () Bool)

(declare-fun b_next!42463 () Bool)

(assert (=> b!1562573 (= b_free!41759 (not b_next!42463))))

(declare-fun tp!460127 () Bool)

(declare-fun b_and!109085 () Bool)

(assert (=> b!1562573 (= tp!460127 b_and!109085)))

(declare-fun b!1562585 () Bool)

(declare-fun b_free!41761 () Bool)

(declare-fun b_next!42465 () Bool)

(assert (=> b!1562585 (= b_free!41761 (not b_next!42465))))

(declare-fun tp!460131 () Bool)

(declare-fun b_and!109087 () Bool)

(assert (=> b!1562585 (= tp!460131 b_and!109087)))

(declare-fun b!1562562 () Bool)

(declare-fun e!1003481 () Bool)

(declare-fun e!1003493 () Bool)

(declare-fun lt!541250 () MutLongMap!1863)

(assert (=> b!1562562 (= e!1003481 (and e!1003493 ((_ is LongMap!1863) lt!541250)))))

(declare-fun res!696583 () tuple4!926)

(assert (=> b!1562562 (= lt!541250 (v!23823 (underlying!3936 (cache!2188 (_4!463 res!696583)))))))

(declare-fun b!1562563 () Bool)

(declare-fun e!1003478 () Bool)

(declare-fun e!1003473 () Bool)

(assert (=> b!1562563 (= e!1003478 e!1003473)))

(declare-fun e!1003494 () Bool)

(declare-fun e!1003477 () Bool)

(declare-fun tp!460132 () Bool)

(declare-fun tp!460133 () Bool)

(assert (=> b!1562564 (= e!1003477 (and tp!460120 tp!460132 tp!460133 (array_inv!2041 (_keys!2155 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 (_2!9694 res!696583)))))))) (array_inv!2044 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 (_2!9694 res!696583)))))))) e!1003494))))

(declare-fun b!1562565 () Bool)

(declare-fun e!1003490 () Bool)

(declare-fun e!1003496 () Bool)

(declare-fun lt!541251 () MutLongMap!1862)

(assert (=> b!1562565 (= e!1003490 (and e!1003496 ((_ is LongMap!1862) lt!541251)))))

(assert (=> b!1562565 (= lt!541251 (v!23822 (underlying!3934 (cache!2187 (_3!1401 res!696583)))))))

(declare-fun b!1562566 () Bool)

(declare-fun e!1003471 () Bool)

(declare-fun tp!460136 () Bool)

(assert (=> b!1562566 (= e!1003471 (and (inv!22260 (c!253235 (_2!9693 (_1!9694 res!696583)))) tp!460136))))

(declare-fun b!1562567 () Bool)

(declare-fun e!1003483 () Bool)

(declare-fun e!1003491 () Bool)

(assert (=> b!1562567 (= e!1003483 e!1003491)))

(declare-fun b!1562568 () Bool)

(declare-fun e!1003480 () Bool)

(assert (=> b!1562568 (= e!1003480 (= (totalInput!2504 (_4!463 res!696583)) totalInput!568))))

(declare-fun b!1562569 () Bool)

(declare-fun res!696586 () Bool)

(assert (=> b!1562569 (=> (not res!696586) (not e!1003480))))

(assert (=> b!1562569 (= res!696586 (valid!1489 (_4!463 res!696583)))))

(declare-fun mapNonEmpty!8694 () Bool)

(declare-fun mapRes!8694 () Bool)

(declare-fun tp!460129 () Bool)

(declare-fun tp!460126 () Bool)

(assert (=> mapNonEmpty!8694 (= mapRes!8694 (and tp!460129 tp!460126))))

(declare-fun mapKey!8695 () (_ BitVec 32))

(declare-fun mapRest!8695 () (Array (_ BitVec 32) List!17021))

(declare-fun mapValue!8695 () List!17021)

(assert (=> mapNonEmpty!8694 (= (arr!2835 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 (_2!9694 res!696583)))))))) (store mapRest!8695 mapKey!8695 mapValue!8695))))

(declare-fun tp!460134 () Bool)

(declare-fun e!1003474 () Bool)

(declare-fun tp!460117 () Bool)

(declare-fun e!1003479 () Bool)

(assert (=> b!1562570 (= e!1003474 (and tp!460130 tp!460117 tp!460134 (array_inv!2041 (_keys!2156 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 (_4!463 res!696583)))))))) (array_inv!2042 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 (_4!463 res!696583)))))))) e!1003479))))

(declare-fun b!1562571 () Bool)

(declare-fun e!1003488 () Bool)

(assert (=> b!1562571 (= e!1003488 e!1003474)))

(declare-fun b!1562572 () Bool)

(declare-fun res!696587 () Bool)

(assert (=> b!1562572 (=> (not res!696587) (not e!1003480))))

(assert (=> b!1562572 (= res!696587 (valid!1491 (_3!1401 res!696583)))))

(declare-fun tp!460122 () Bool)

(declare-fun e!1003475 () Bool)

(declare-fun tp!460123 () Bool)

(declare-fun e!1003489 () Bool)

(assert (=> b!1562573 (= e!1003489 (and tp!460127 tp!460123 tp!460122 (array_inv!2041 (_keys!2157 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 (_3!1401 res!696583)))))))) (array_inv!2043 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 (_3!1401 res!696583)))))))) e!1003475))))

(declare-fun b!1562574 () Bool)

(declare-fun e!1003492 () Bool)

(assert (=> b!1562574 (= e!1003492 e!1003489)))

(declare-fun mapIsEmpty!8694 () Bool)

(declare-fun mapRes!8696 () Bool)

(assert (=> mapIsEmpty!8694 mapRes!8696))

(declare-fun b!1562575 () Bool)

(assert (=> b!1562575 (= e!1003493 e!1003488)))

(declare-fun e!1003485 () Bool)

(assert (=> b!1562576 (= e!1003485 (and e!1003481 tp!460138))))

(declare-fun mapIsEmpty!8695 () Bool)

(declare-fun mapRes!8695 () Bool)

(assert (=> mapIsEmpty!8695 mapRes!8695))

(declare-fun b!1562577 () Bool)

(declare-fun tp!460137 () Bool)

(assert (=> b!1562577 (= e!1003479 (and tp!460137 mapRes!8695))))

(declare-fun condMapEmpty!8695 () Bool)

(declare-fun mapDefault!8694 () List!17022)

(assert (=> b!1562577 (= condMapEmpty!8695 (= (arr!2837 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 (_4!463 res!696583)))))))) ((as const (Array (_ BitVec 32) List!17022)) mapDefault!8694)))))

(declare-fun mapNonEmpty!8695 () Bool)

(declare-fun tp!460118 () Bool)

(declare-fun tp!460119 () Bool)

(assert (=> mapNonEmpty!8695 (= mapRes!8696 (and tp!460118 tp!460119))))

(declare-fun mapKey!8694 () (_ BitVec 32))

(declare-fun mapRest!8696 () (Array (_ BitVec 32) List!17023))

(declare-fun mapValue!8696 () List!17023)

(assert (=> mapNonEmpty!8695 (= (arr!2838 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 (_3!1401 res!696583)))))))) (store mapRest!8696 mapKey!8694 mapValue!8696))))

(declare-fun b!1562578 () Bool)

(declare-fun e!1003495 () Bool)

(declare-fun tp!460128 () Bool)

(assert (=> b!1562578 (= e!1003495 (and (inv!22260 (c!253235 (totalInput!2504 (_4!463 res!696583)))) tp!460128))))

(declare-fun b!1562579 () Bool)

(declare-fun res!696585 () Bool)

(assert (=> b!1562579 (=> (not res!696585) (not e!1003480))))

(assert (=> b!1562579 (= res!696585 (valid!1490 (_2!9694 res!696583)))))

(declare-fun b!1562580 () Bool)

(declare-fun tp!460139 () Bool)

(assert (=> b!1562580 (= e!1003475 (and tp!460139 mapRes!8696))))

(declare-fun condMapEmpty!8694 () Bool)

(declare-fun mapDefault!8695 () List!17023)

(assert (=> b!1562580 (= condMapEmpty!8694 (= (arr!2838 (_values!2142 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 (_3!1401 res!696583)))))))) ((as const (Array (_ BitVec 32) List!17023)) mapDefault!8695)))))

(declare-fun mapNonEmpty!8696 () Bool)

(declare-fun tp!460116 () Bool)

(declare-fun tp!460125 () Bool)

(assert (=> mapNonEmpty!8696 (= mapRes!8695 (and tp!460116 tp!460125))))

(declare-fun mapRest!8694 () (Array (_ BitVec 32) List!17022))

(declare-fun mapValue!8694 () List!17022)

(declare-fun mapKey!8696 () (_ BitVec 32))

(assert (=> mapNonEmpty!8696 (= (arr!2837 (_values!2141 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 (_4!463 res!696583)))))))) (store mapRest!8694 mapKey!8696 mapValue!8694))))

(declare-fun e!1003476 () Bool)

(declare-fun b!1562581 () Bool)

(assert (=> b!1562581 (= e!1003476 (and e!1003485 (inv!22261 (totalInput!2504 (_4!463 res!696583))) e!1003495))))

(declare-fun b!1562582 () Bool)

(declare-fun e!1003472 () Bool)

(declare-fun tp!460121 () Bool)

(assert (=> b!1562582 (= e!1003472 (and (inv!22260 (c!253235 (_1!9693 (_1!9694 res!696583)))) tp!460121))))

(declare-fun d!462681 () Bool)

(assert (=> d!462681 e!1003480))

(declare-fun res!696584 () Bool)

(assert (=> d!462681 (=> (not res!696584) (not e!1003480))))

(assert (=> d!462681 (= res!696584 (= (tuple2!16587 (list!6521 (_1!9693 (_1!9694 res!696583))) (list!6521 (_2!9693 (_1!9694 res!696583)))) (findLongestMatch!272 (regex!2971 rule!240) (list!6521 input!1676))))))

(declare-fun e!1003486 () Bool)

(assert (=> d!462681 (and (inv!22261 (_1!9693 (_1!9694 res!696583))) e!1003472 (inv!22261 (_2!9693 (_1!9694 res!696583))) e!1003471 (inv!22262 (_2!9694 res!696583)) e!1003483 (inv!22264 (_3!1401 res!696583)) e!1003486 (inv!22263 (_4!463 res!696583)) e!1003476)))

(assert (=> d!462681 (= (choose!9324 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) res!696583)))

(declare-fun b!1562583 () Bool)

(assert (=> b!1562583 (= e!1003496 e!1003492)))

(declare-fun b!1562584 () Bool)

(assert (=> b!1562584 (= e!1003473 e!1003477)))

(declare-fun e!1003469 () Bool)

(assert (=> b!1562585 (= e!1003491 (and e!1003469 tp!460131))))

(declare-fun b!1562586 () Bool)

(declare-fun tp!460135 () Bool)

(assert (=> b!1562586 (= e!1003494 (and tp!460135 mapRes!8694))))

(declare-fun condMapEmpty!8696 () Bool)

(declare-fun mapDefault!8696 () List!17021)

(assert (=> b!1562586 (= condMapEmpty!8696 (= (arr!2835 (_values!2140 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 (_2!9694 res!696583)))))))) ((as const (Array (_ BitVec 32) List!17021)) mapDefault!8696)))))

(declare-fun e!1003484 () Bool)

(assert (=> b!1562587 (= e!1003484 (and e!1003490 tp!460124))))

(declare-fun b!1562588 () Bool)

(declare-fun lt!541249 () MutLongMap!1861)

(assert (=> b!1562588 (= e!1003469 (and e!1003478 ((_ is LongMap!1861) lt!541249)))))

(assert (=> b!1562588 (= lt!541249 (v!23817 (underlying!3932 (cache!2186 (_2!9694 res!696583)))))))

(declare-fun mapIsEmpty!8696 () Bool)

(assert (=> mapIsEmpty!8696 mapRes!8694))

(declare-fun b!1562589 () Bool)

(assert (=> b!1562589 (= e!1003486 e!1003484)))

(assert (= d!462681 b!1562582))

(assert (= d!462681 b!1562566))

(assert (= (and b!1562586 condMapEmpty!8696) mapIsEmpty!8696))

(assert (= (and b!1562586 (not condMapEmpty!8696)) mapNonEmpty!8694))

(assert (= b!1562564 b!1562586))

(assert (= b!1562584 b!1562564))

(assert (= b!1562563 b!1562584))

(assert (= (and b!1562588 ((_ is LongMap!1861) (v!23817 (underlying!3932 (cache!2186 (_2!9694 res!696583)))))) b!1562563))

(assert (= b!1562585 b!1562588))

(assert (= (and b!1562567 ((_ is HashMap!1805) (cache!2186 (_2!9694 res!696583)))) b!1562585))

(assert (= d!462681 b!1562567))

(assert (= (and b!1562580 condMapEmpty!8694) mapIsEmpty!8694))

(assert (= (and b!1562580 (not condMapEmpty!8694)) mapNonEmpty!8695))

(assert (= b!1562573 b!1562580))

(assert (= b!1562574 b!1562573))

(assert (= b!1562583 b!1562574))

(assert (= (and b!1562565 ((_ is LongMap!1862) (v!23822 (underlying!3934 (cache!2187 (_3!1401 res!696583)))))) b!1562583))

(assert (= b!1562587 b!1562565))

(assert (= (and b!1562589 ((_ is HashMap!1806) (cache!2187 (_3!1401 res!696583)))) b!1562587))

(assert (= d!462681 b!1562589))

(assert (= (and b!1562577 condMapEmpty!8695) mapIsEmpty!8695))

(assert (= (and b!1562577 (not condMapEmpty!8695)) mapNonEmpty!8696))

(assert (= b!1562570 b!1562577))

(assert (= b!1562571 b!1562570))

(assert (= b!1562575 b!1562571))

(assert (= (and b!1562562 ((_ is LongMap!1863) (v!23823 (underlying!3936 (cache!2188 (_4!463 res!696583)))))) b!1562575))

(assert (= b!1562576 b!1562562))

(assert (= (and b!1562581 ((_ is HashMap!1807) (cache!2188 (_4!463 res!696583)))) b!1562576))

(assert (= b!1562581 b!1562578))

(assert (= d!462681 b!1562581))

(assert (= (and d!462681 res!696584) b!1562572))

(assert (= (and b!1562572 res!696587) b!1562579))

(assert (= (and b!1562579 res!696585) b!1562569))

(assert (= (and b!1562569 res!696586) b!1562568))

(declare-fun m!1833920 () Bool)

(assert (=> mapNonEmpty!8694 m!1833920))

(declare-fun m!1833922 () Bool)

(assert (=> b!1562581 m!1833922))

(declare-fun m!1833924 () Bool)

(assert (=> mapNonEmpty!8696 m!1833924))

(declare-fun m!1833926 () Bool)

(assert (=> b!1562569 m!1833926))

(declare-fun m!1833928 () Bool)

(assert (=> b!1562578 m!1833928))

(declare-fun m!1833930 () Bool)

(assert (=> b!1562582 m!1833930))

(declare-fun m!1833932 () Bool)

(assert (=> b!1562564 m!1833932))

(declare-fun m!1833934 () Bool)

(assert (=> b!1562564 m!1833934))

(declare-fun m!1833936 () Bool)

(assert (=> b!1562573 m!1833936))

(declare-fun m!1833938 () Bool)

(assert (=> b!1562573 m!1833938))

(declare-fun m!1833940 () Bool)

(assert (=> b!1562572 m!1833940))

(declare-fun m!1833942 () Bool)

(assert (=> d!462681 m!1833942))

(declare-fun m!1833944 () Bool)

(assert (=> d!462681 m!1833944))

(assert (=> d!462681 m!1833344))

(declare-fun m!1833946 () Bool)

(assert (=> d!462681 m!1833946))

(declare-fun m!1833948 () Bool)

(assert (=> d!462681 m!1833948))

(declare-fun m!1833950 () Bool)

(assert (=> d!462681 m!1833950))

(declare-fun m!1833952 () Bool)

(assert (=> d!462681 m!1833952))

(declare-fun m!1833954 () Bool)

(assert (=> d!462681 m!1833954))

(assert (=> d!462681 m!1833344))

(assert (=> d!462681 m!1833572))

(declare-fun m!1833956 () Bool)

(assert (=> mapNonEmpty!8695 m!1833956))

(declare-fun m!1833958 () Bool)

(assert (=> b!1562570 m!1833958))

(declare-fun m!1833960 () Bool)

(assert (=> b!1562570 m!1833960))

(declare-fun m!1833962 () Bool)

(assert (=> b!1562566 m!1833962))

(declare-fun m!1833964 () Bool)

(assert (=> b!1562579 m!1833964))

(assert (=> d!462543 d!462681))

(declare-fun d!462683 () Bool)

(assert (=> d!462683 (= (list!6521 (_1!9693 (_1!9694 lt!541171))) (list!6522 (c!253235 (_1!9693 (_1!9694 lt!541171)))))))

(declare-fun bs!389001 () Bool)

(assert (= bs!389001 d!462683))

(declare-fun m!1833966 () Bool)

(assert (=> bs!389001 m!1833966))

(assert (=> d!462543 d!462683))

(assert (=> d!462543 d!462495))

(assert (=> d!462543 d!462659))

(declare-fun d!462685 () Bool)

(declare-fun c!253318 () Bool)

(assert (=> d!462685 (= c!253318 ((_ is Node!5589) (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(declare-fun e!1003497 () Bool)

(assert (=> d!462685 (= (inv!22260 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) e!1003497)))

(declare-fun b!1562590 () Bool)

(assert (=> b!1562590 (= e!1003497 (inv!22266 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(declare-fun b!1562591 () Bool)

(declare-fun e!1003498 () Bool)

(assert (=> b!1562591 (= e!1003497 e!1003498)))

(declare-fun res!696588 () Bool)

(assert (=> b!1562591 (= res!696588 (not ((_ is Leaf!8284) (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))))

(assert (=> b!1562591 (=> res!696588 e!1003498)))

(declare-fun b!1562592 () Bool)

(assert (=> b!1562592 (= e!1003498 (inv!22267 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(assert (= (and d!462685 c!253318) b!1562590))

(assert (= (and d!462685 (not c!253318)) b!1562591))

(assert (= (and b!1562591 (not res!696588)) b!1562592))

(declare-fun m!1833968 () Bool)

(assert (=> b!1562590 m!1833968))

(declare-fun m!1833970 () Bool)

(assert (=> b!1562592 m!1833970))

(assert (=> b!1562276 d!462685))

(declare-fun d!462687 () Bool)

(declare-fun c!253319 () Bool)

(assert (=> d!462687 (= c!253319 ((_ is Node!5589) (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(declare-fun e!1003499 () Bool)

(assert (=> d!462687 (= (inv!22260 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) e!1003499)))

(declare-fun b!1562593 () Bool)

(assert (=> b!1562593 (= e!1003499 (inv!22266 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(declare-fun b!1562594 () Bool)

(declare-fun e!1003500 () Bool)

(assert (=> b!1562594 (= e!1003499 e!1003500)))

(declare-fun res!696589 () Bool)

(assert (=> b!1562594 (= res!696589 (not ((_ is Leaf!8284) (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))))

(assert (=> b!1562594 (=> res!696589 e!1003500)))

(declare-fun b!1562595 () Bool)

(assert (=> b!1562595 (= e!1003500 (inv!22267 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(assert (= (and d!462687 c!253319) b!1562593))

(assert (= (and d!462687 (not c!253319)) b!1562594))

(assert (= (and b!1562594 (not res!696589)) b!1562595))

(declare-fun m!1833972 () Bool)

(assert (=> b!1562593 m!1833972))

(declare-fun m!1833974 () Bool)

(assert (=> b!1562595 m!1833974))

(assert (=> b!1562276 d!462687))

(declare-fun d!462689 () Bool)

(assert (=> d!462689 (dynLambda!7561 lambda!66068 (_1!9693 (_1!9694 lt!541055)))))

(assert (=> d!462689 true))

(declare-fun _$1!9964 () Unit!26158)

(assert (=> d!462689 (= (choose!9323 lambda!66068 (_1!9693 (_1!9694 lt!541055))) _$1!9964)))

(declare-fun b_lambda!49177 () Bool)

(assert (=> (not b_lambda!49177) (not d!462689)))

(declare-fun bs!389002 () Bool)

(assert (= bs!389002 d!462689))

(assert (=> bs!389002 m!1833496))

(assert (=> d!462525 d!462689))

(assert (=> d!462525 d!462673))

(declare-fun bs!389003 () Bool)

(declare-fun d!462691 () Bool)

(assert (= bs!389003 (and d!462691 d!462649)))

(declare-fun lambda!66088 () Int)

(assert (=> bs!389003 (= lambda!66088 lambda!66085)))

(declare-fun bs!389004 () Bool)

(assert (= bs!389004 (and d!462691 d!462647)))

(assert (=> bs!389004 (= lambda!66088 lambda!66084)))

(declare-fun bs!389005 () Bool)

(assert (= bs!389005 (and d!462691 d!462641)))

(assert (=> bs!389005 (= lambda!66088 lambda!66082)))

(declare-fun bs!389006 () Bool)

(assert (= bs!389006 (and d!462691 d!462653)))

(assert (=> bs!389006 (= lambda!66088 lambda!66086)))

(declare-fun bs!389007 () Bool)

(assert (= bs!389007 (and d!462691 d!462611)))

(assert (=> bs!389007 (= lambda!66088 lambda!66081)))

(declare-fun bs!389008 () Bool)

(assert (= bs!389008 (and d!462691 d!462597)))

(assert (=> bs!389008 (= lambda!66088 lambda!66074)))

(declare-fun bs!389009 () Bool)

(assert (= bs!389009 (and d!462691 d!462645)))

(assert (=> bs!389009 (= lambda!66088 lambda!66083)))

(declare-fun bs!389010 () Bool)

(assert (= bs!389010 (and d!462691 d!462675)))

(assert (=> bs!389010 (= lambda!66088 lambda!66087)))

(assert (=> d!462691 (= (inv!22268 setElem!11249) (forall!3929 (exprs!1317 setElem!11249) lambda!66088))))

(declare-fun bs!389011 () Bool)

(assert (= bs!389011 d!462691))

(declare-fun m!1833976 () Bool)

(assert (=> bs!389011 m!1833976))

(assert (=> setNonEmpty!11249 d!462691))

(assert (=> b!1561988 d!462561))

(declare-fun d!462693 () Bool)

(assert (not d!462693))

(assert (=> b!1562094 d!462693))

(declare-fun d!462695 () Bool)

(declare-fun res!696596 () Bool)

(declare-fun e!1003503 () Bool)

(assert (=> d!462695 (=> (not res!696596) (not e!1003503))))

(assert (=> d!462695 (= res!696596 (= (csize!11408 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) (+ (size!13764 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) (size!13764 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))))

(assert (=> d!462695 (= (inv!22266 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) e!1003503)))

(declare-fun b!1562602 () Bool)

(declare-fun res!696597 () Bool)

(assert (=> b!1562602 (=> (not res!696597) (not e!1003503))))

(assert (=> b!1562602 (= res!696597 (and (not (= (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) Empty!5589)) (not (= (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) Empty!5589))))))

(declare-fun b!1562603 () Bool)

(declare-fun res!696598 () Bool)

(assert (=> b!1562603 (=> (not res!696598) (not e!1003503))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!830 (Conc!5589) Int)

(assert (=> b!1562603 (= res!696598 (= (cheight!5800 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) (+ (max!0 (height!830 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) (height!830 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) 1)))))

(declare-fun b!1562604 () Bool)

(assert (=> b!1562604 (= e!1003503 (<= 0 (cheight!5800 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(assert (= (and d!462695 res!696596) b!1562602))

(assert (= (and b!1562602 res!696597) b!1562603))

(assert (= (and b!1562603 res!696598) b!1562604))

(declare-fun m!1833978 () Bool)

(assert (=> d!462695 m!1833978))

(declare-fun m!1833980 () Bool)

(assert (=> d!462695 m!1833980))

(declare-fun m!1833982 () Bool)

(assert (=> b!1562603 m!1833982))

(declare-fun m!1833984 () Bool)

(assert (=> b!1562603 m!1833984))

(assert (=> b!1562603 m!1833982))

(assert (=> b!1562603 m!1833984))

(declare-fun m!1833986 () Bool)

(assert (=> b!1562603 m!1833986))

(assert (=> b!1562191 d!462695))

(declare-fun d!462697 () Bool)

(assert (=> d!462697 (= (inv!22261 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))) (isBalanced!1654 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))))

(declare-fun bs!389012 () Bool)

(assert (= bs!389012 d!462697))

(declare-fun m!1833988 () Bool)

(assert (=> bs!389012 m!1833988))

(assert (=> tb!87405 d!462697))

(declare-fun bs!389013 () Bool)

(declare-fun d!462699 () Bool)

(assert (= bs!389013 (and d!462699 d!462691)))

(declare-fun lambda!66089 () Int)

(assert (=> bs!389013 (= lambda!66089 lambda!66088)))

(declare-fun bs!389014 () Bool)

(assert (= bs!389014 (and d!462699 d!462649)))

(assert (=> bs!389014 (= lambda!66089 lambda!66085)))

(declare-fun bs!389015 () Bool)

(assert (= bs!389015 (and d!462699 d!462647)))

(assert (=> bs!389015 (= lambda!66089 lambda!66084)))

(declare-fun bs!389016 () Bool)

(assert (= bs!389016 (and d!462699 d!462641)))

(assert (=> bs!389016 (= lambda!66089 lambda!66082)))

(declare-fun bs!389017 () Bool)

(assert (= bs!389017 (and d!462699 d!462653)))

(assert (=> bs!389017 (= lambda!66089 lambda!66086)))

(declare-fun bs!389018 () Bool)

(assert (= bs!389018 (and d!462699 d!462611)))

(assert (=> bs!389018 (= lambda!66089 lambda!66081)))

(declare-fun bs!389019 () Bool)

(assert (= bs!389019 (and d!462699 d!462597)))

(assert (=> bs!389019 (= lambda!66089 lambda!66074)))

(declare-fun bs!389020 () Bool)

(assert (= bs!389020 (and d!462699 d!462645)))

(assert (=> bs!389020 (= lambda!66089 lambda!66083)))

(declare-fun bs!389021 () Bool)

(assert (= bs!389021 (and d!462699 d!462675)))

(assert (=> bs!389021 (= lambda!66089 lambda!66087)))

(assert (=> d!462699 (= (inv!22268 setElem!11243) (forall!3929 (exprs!1317 setElem!11243) lambda!66089))))

(declare-fun bs!389022 () Bool)

(assert (= bs!389022 d!462699))

(declare-fun m!1833990 () Bool)

(assert (=> bs!389022 m!1833990))

(assert (=> setNonEmpty!11242 d!462699))

(declare-fun d!462701 () Bool)

(assert (=> d!462701 (= (isEmpty!10172 lt!541044) (not ((_ is Some!3063) lt!541044)))))

(assert (=> d!462541 d!462701))

(declare-fun d!462703 () Bool)

(assert (=> d!462703 (= (list!6521 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))) (list!6522 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))))

(declare-fun bs!389023 () Bool)

(assert (= bs!389023 d!462703))

(declare-fun m!1833992 () Bool)

(assert (=> bs!389023 m!1833992))

(assert (=> bs!388951 d!462703))

(declare-fun d!462705 () Bool)

(assert (=> d!462705 (= (list!6521 lt!541056) (list!6522 (c!253235 lt!541056)))))

(declare-fun bs!389024 () Bool)

(assert (= bs!389024 d!462705))

(declare-fun m!1833994 () Bool)

(assert (=> bs!389024 m!1833994))

(assert (=> bs!388951 d!462705))

(assert (=> bm!102304 d!462669))

(declare-fun b!1562605 () Bool)

(declare-fun e!1003510 () Bool)

(assert (=> b!1562605 (= e!1003510 (nullable!1281 (regex!2971 rule!240)))))

(declare-fun d!462707 () Bool)

(declare-fun e!1003509 () Bool)

(assert (=> d!462707 e!1003509))

(declare-fun c!253322 () Bool)

(assert (=> d!462707 (= c!253322 ((_ is EmptyExpr!4299) (regex!2971 rule!240)))))

(declare-fun lt!541252 () Bool)

(assert (=> d!462707 (= lt!541252 e!1003510)))

(declare-fun c!253320 () Bool)

(assert (=> d!462707 (= c!253320 (isEmpty!10171 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))))))

(assert (=> d!462707 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462707 (= (matchR!1891 (regex!2971 rule!240) (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))) lt!541252)))

(declare-fun b!1562606 () Bool)

(declare-fun e!1003508 () Bool)

(assert (=> b!1562606 (= e!1003508 (not lt!541252))))

(declare-fun b!1562607 () Bool)

(assert (=> b!1562607 (= e!1003510 (matchR!1891 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186)))))) (tail!2218 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186)))))))))

(declare-fun b!1562608 () Bool)

(declare-fun e!1003507 () Bool)

(assert (=> b!1562608 (= e!1003507 (= (head!3123 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))) (c!253236 (regex!2971 rule!240))))))

(declare-fun b!1562609 () Bool)

(declare-fun res!696600 () Bool)

(assert (=> b!1562609 (=> (not res!696600) (not e!1003507))))

(assert (=> b!1562609 (= res!696600 (isEmpty!10171 (tail!2218 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186)))))))))

(declare-fun b!1562610 () Bool)

(declare-fun res!696599 () Bool)

(declare-fun e!1003506 () Bool)

(assert (=> b!1562610 (=> res!696599 e!1003506)))

(assert (=> b!1562610 (= res!696599 e!1003507)))

(declare-fun res!696601 () Bool)

(assert (=> b!1562610 (=> (not res!696601) (not e!1003507))))

(assert (=> b!1562610 (= res!696601 lt!541252)))

(declare-fun b!1562611 () Bool)

(declare-fun call!102328 () Bool)

(assert (=> b!1562611 (= e!1003509 (= lt!541252 call!102328))))

(declare-fun b!1562612 () Bool)

(declare-fun e!1003505 () Bool)

(declare-fun e!1003504 () Bool)

(assert (=> b!1562612 (= e!1003505 e!1003504)))

(declare-fun res!696604 () Bool)

(assert (=> b!1562612 (=> res!696604 e!1003504)))

(assert (=> b!1562612 (= res!696604 call!102328)))

(declare-fun b!1562613 () Bool)

(declare-fun res!696606 () Bool)

(assert (=> b!1562613 (=> res!696606 e!1003504)))

(assert (=> b!1562613 (= res!696606 (not (isEmpty!10171 (tail!2218 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))))))))

(declare-fun b!1562614 () Bool)

(declare-fun res!696605 () Bool)

(assert (=> b!1562614 (=> res!696605 e!1003506)))

(assert (=> b!1562614 (= res!696605 (not ((_ is ElementMatch!4299) (regex!2971 rule!240))))))

(assert (=> b!1562614 (= e!1003508 e!1003506)))

(declare-fun b!1562615 () Bool)

(assert (=> b!1562615 (= e!1003509 e!1003508)))

(declare-fun c!253321 () Bool)

(assert (=> b!1562615 (= c!253321 ((_ is EmptyLang!4299) (regex!2971 rule!240)))))

(declare-fun b!1562616 () Bool)

(assert (=> b!1562616 (= e!1003506 e!1003505)))

(declare-fun res!696602 () Bool)

(assert (=> b!1562616 (=> (not res!696602) (not e!1003505))))

(assert (=> b!1562616 (= res!696602 (not lt!541252))))

(declare-fun bm!102323 () Bool)

(assert (=> bm!102323 (= call!102328 (isEmpty!10171 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))))))

(declare-fun b!1562617 () Bool)

(assert (=> b!1562617 (= e!1003504 (not (= (head!3123 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))) (c!253236 (regex!2971 rule!240)))))))

(declare-fun b!1562618 () Bool)

(declare-fun res!696603 () Bool)

(assert (=> b!1562618 (=> (not res!696603) (not e!1003507))))

(assert (=> b!1562618 (= res!696603 (not call!102328))))

(assert (= (and d!462707 c!253320) b!1562605))

(assert (= (and d!462707 (not c!253320)) b!1562607))

(assert (= (and d!462707 c!253322) b!1562611))

(assert (= (and d!462707 (not c!253322)) b!1562615))

(assert (= (and b!1562615 c!253321) b!1562606))

(assert (= (and b!1562615 (not c!253321)) b!1562614))

(assert (= (and b!1562614 (not res!696605)) b!1562610))

(assert (= (and b!1562610 res!696601) b!1562618))

(assert (= (and b!1562618 res!696603) b!1562609))

(assert (= (and b!1562609 res!696600) b!1562608))

(assert (= (and b!1562610 (not res!696599)) b!1562616))

(assert (= (and b!1562616 res!696602) b!1562612))

(assert (= (and b!1562612 (not res!696604)) b!1562613))

(assert (= (and b!1562613 (not res!696606)) b!1562617))

(assert (= (or b!1562611 b!1562612 b!1562618) bm!102323))

(assert (=> b!1562609 m!1833590))

(declare-fun m!1833996 () Bool)

(assert (=> b!1562609 m!1833996))

(assert (=> b!1562609 m!1833996))

(declare-fun m!1833998 () Bool)

(assert (=> b!1562609 m!1833998))

(assert (=> b!1562607 m!1833590))

(declare-fun m!1834000 () Bool)

(assert (=> b!1562607 m!1834000))

(assert (=> b!1562607 m!1834000))

(declare-fun m!1834002 () Bool)

(assert (=> b!1562607 m!1834002))

(assert (=> b!1562607 m!1833590))

(assert (=> b!1562607 m!1833996))

(assert (=> b!1562607 m!1834002))

(assert (=> b!1562607 m!1833996))

(declare-fun m!1834004 () Bool)

(assert (=> b!1562607 m!1834004))

(assert (=> b!1562608 m!1833590))

(assert (=> b!1562608 m!1834000))

(assert (=> b!1562613 m!1833590))

(assert (=> b!1562613 m!1833996))

(assert (=> b!1562613 m!1833996))

(assert (=> b!1562613 m!1833998))

(assert (=> b!1562605 m!1833436))

(assert (=> b!1562617 m!1833590))

(assert (=> b!1562617 m!1834000))

(assert (=> bm!102323 m!1833590))

(declare-fun m!1834006 () Bool)

(assert (=> bm!102323 m!1834006))

(assert (=> d!462707 m!1833590))

(assert (=> d!462707 m!1834006))

(assert (=> d!462707 m!1833434))

(assert (=> b!1562188 d!462707))

(declare-fun d!462709 () Bool)

(assert (=> d!462709 (= (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186)))) (list!6522 (c!253235 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))))))

(declare-fun bs!389025 () Bool)

(assert (= bs!389025 d!462709))

(declare-fun m!1834008 () Bool)

(assert (=> bs!389025 m!1834008))

(assert (=> b!1562188 d!462709))

(declare-fun d!462711 () Bool)

(declare-fun lt!541255 () BalanceConc!11120)

(assert (=> d!462711 (= (list!6521 lt!541255) (originalCharacters!3785 (_1!9687 (get!4876 lt!541186))))))

(assert (=> d!462711 (= lt!541255 (dynLambda!7562 (toChars!4211 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186))))) (value!94305 (_1!9687 (get!4876 lt!541186)))))))

(assert (=> d!462711 (= (charsOf!1655 (_1!9687 (get!4876 lt!541186))) lt!541255)))

(declare-fun b_lambda!49179 () Bool)

(assert (=> (not b_lambda!49179) (not d!462711)))

(declare-fun t!141585 () Bool)

(declare-fun tb!87409 () Bool)

(assert (=> (and b!1562013 (= (toChars!4211 (transformation!2971 rule!240)) (toChars!4211 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186)))))) t!141585) tb!87409))

(declare-fun b!1562619 () Bool)

(declare-fun e!1003511 () Bool)

(declare-fun tp!460140 () Bool)

(assert (=> b!1562619 (= e!1003511 (and (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186))))) (value!94305 (_1!9687 (get!4876 lt!541186)))))) tp!460140))))

(declare-fun result!105740 () Bool)

(assert (=> tb!87409 (= result!105740 (and (inv!22261 (dynLambda!7562 (toChars!4211 (transformation!2971 (rule!4756 (_1!9687 (get!4876 lt!541186))))) (value!94305 (_1!9687 (get!4876 lt!541186))))) e!1003511))))

(assert (= tb!87409 b!1562619))

(declare-fun m!1834010 () Bool)

(assert (=> b!1562619 m!1834010))

(declare-fun m!1834012 () Bool)

(assert (=> tb!87409 m!1834012))

(assert (=> d!462711 t!141585))

(declare-fun b_and!109089 () Bool)

(assert (= b_and!109071 (and (=> t!141585 result!105740) b_and!109089)))

(declare-fun m!1834014 () Bool)

(assert (=> d!462711 m!1834014))

(declare-fun m!1834016 () Bool)

(assert (=> d!462711 m!1834016))

(assert (=> b!1562188 d!462711))

(assert (=> b!1562188 d!462663))

(declare-fun bs!389026 () Bool)

(declare-fun d!462713 () Bool)

(assert (= bs!389026 (and d!462713 d!462691)))

(declare-fun lambda!66090 () Int)

(assert (=> bs!389026 (= lambda!66090 lambda!66088)))

(declare-fun bs!389027 () Bool)

(assert (= bs!389027 (and d!462713 d!462649)))

(assert (=> bs!389027 (= lambda!66090 lambda!66085)))

(declare-fun bs!389028 () Bool)

(assert (= bs!389028 (and d!462713 d!462699)))

(assert (=> bs!389028 (= lambda!66090 lambda!66089)))

(declare-fun bs!389029 () Bool)

(assert (= bs!389029 (and d!462713 d!462647)))

(assert (=> bs!389029 (= lambda!66090 lambda!66084)))

(declare-fun bs!389030 () Bool)

(assert (= bs!389030 (and d!462713 d!462641)))

(assert (=> bs!389030 (= lambda!66090 lambda!66082)))

(declare-fun bs!389031 () Bool)

(assert (= bs!389031 (and d!462713 d!462653)))

(assert (=> bs!389031 (= lambda!66090 lambda!66086)))

(declare-fun bs!389032 () Bool)

(assert (= bs!389032 (and d!462713 d!462611)))

(assert (=> bs!389032 (= lambda!66090 lambda!66081)))

(declare-fun bs!389033 () Bool)

(assert (= bs!389033 (and d!462713 d!462597)))

(assert (=> bs!389033 (= lambda!66090 lambda!66074)))

(declare-fun bs!389034 () Bool)

(assert (= bs!389034 (and d!462713 d!462645)))

(assert (=> bs!389034 (= lambda!66090 lambda!66083)))

(declare-fun bs!389035 () Bool)

(assert (= bs!389035 (and d!462713 d!462675)))

(assert (=> bs!389035 (= lambda!66090 lambda!66087)))

(assert (=> d!462713 (= (inv!22268 setElem!11253) (forall!3929 (exprs!1317 setElem!11253) lambda!66090))))

(declare-fun bs!389036 () Bool)

(assert (= bs!389036 d!462713))

(declare-fun m!1834018 () Bool)

(assert (=> bs!389036 m!1834018))

(assert (=> setNonEmpty!11253 d!462713))

(declare-fun bs!389037 () Bool)

(declare-fun d!462715 () Bool)

(assert (= bs!389037 (and d!462715 d!462713)))

(declare-fun lambda!66091 () Int)

(assert (=> bs!389037 (= lambda!66091 lambda!66090)))

(declare-fun bs!389038 () Bool)

(assert (= bs!389038 (and d!462715 d!462691)))

(assert (=> bs!389038 (= lambda!66091 lambda!66088)))

(declare-fun bs!389039 () Bool)

(assert (= bs!389039 (and d!462715 d!462649)))

(assert (=> bs!389039 (= lambda!66091 lambda!66085)))

(declare-fun bs!389040 () Bool)

(assert (= bs!389040 (and d!462715 d!462699)))

(assert (=> bs!389040 (= lambda!66091 lambda!66089)))

(declare-fun bs!389041 () Bool)

(assert (= bs!389041 (and d!462715 d!462647)))

(assert (=> bs!389041 (= lambda!66091 lambda!66084)))

(declare-fun bs!389042 () Bool)

(assert (= bs!389042 (and d!462715 d!462641)))

(assert (=> bs!389042 (= lambda!66091 lambda!66082)))

(declare-fun bs!389043 () Bool)

(assert (= bs!389043 (and d!462715 d!462653)))

(assert (=> bs!389043 (= lambda!66091 lambda!66086)))

(declare-fun bs!389044 () Bool)

(assert (= bs!389044 (and d!462715 d!462611)))

(assert (=> bs!389044 (= lambda!66091 lambda!66081)))

(declare-fun bs!389045 () Bool)

(assert (= bs!389045 (and d!462715 d!462597)))

(assert (=> bs!389045 (= lambda!66091 lambda!66074)))

(declare-fun bs!389046 () Bool)

(assert (= bs!389046 (and d!462715 d!462645)))

(assert (=> bs!389046 (= lambda!66091 lambda!66083)))

(declare-fun bs!389047 () Bool)

(assert (= bs!389047 (and d!462715 d!462675)))

(assert (=> bs!389047 (= lambda!66091 lambda!66087)))

(assert (=> d!462715 (= (inv!22268 setElem!11252) (forall!3929 (exprs!1317 setElem!11252) lambda!66091))))

(declare-fun bs!389048 () Bool)

(assert (= bs!389048 d!462715))

(declare-fun m!1834020 () Bool)

(assert (=> bs!389048 m!1834020))

(assert (=> setNonEmpty!11252 d!462715))

(assert (=> d!462517 d!462509))

(assert (=> d!462517 d!462511))

(declare-fun d!462717 () Bool)

(assert (=> d!462717 (= (isEmpty!10171 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))) ((_ is Nil!16951) (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(assert (=> d!462517 d!462717))

(assert (=> d!462517 d!462659))

(declare-fun d!462719 () Bool)

(declare-fun e!1003514 () Bool)

(assert (=> d!462719 e!1003514))

(declare-fun res!696609 () Bool)

(assert (=> d!462719 (=> res!696609 e!1003514)))

(assert (=> d!462719 (= res!696609 (isEmpty!10171 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(assert (=> d!462719 true))

(declare-fun _$92!261 () Unit!26158)

(assert (=> d!462719 (= (choose!9322 (regex!2971 rule!240) lt!541046) _$92!261)))

(declare-fun b!1562622 () Bool)

(assert (=> b!1562622 (= e!1003514 (matchR!1891 (regex!2971 rule!240) (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(assert (= (and d!462719 (not res!696609)) b!1562622))

(assert (=> d!462719 m!1833380))

(assert (=> d!462719 m!1833384))

(assert (=> d!462719 m!1833380))

(assert (=> d!462719 m!1833384))

(assert (=> d!462719 m!1833386))

(assert (=> d!462719 m!1833474))

(assert (=> b!1562622 m!1833380))

(assert (=> b!1562622 m!1833384))

(assert (=> b!1562622 m!1833380))

(assert (=> b!1562622 m!1833384))

(assert (=> b!1562622 m!1833386))

(assert (=> b!1562622 m!1833478))

(assert (=> d!462517 d!462719))

(assert (=> d!462517 d!462533))

(declare-fun d!462721 () Bool)

(assert (=> d!462721 (= (head!3123 (_1!9695 lt!541045)) (h!22352 (_1!9695 lt!541045)))))

(assert (=> b!1562076 d!462721))

(declare-fun b!1562624 () Bool)

(declare-fun e!1003516 () List!17019)

(assert (=> b!1562624 (= e!1003516 (Cons!16951 (h!22352 (_1!9695 lt!541165)) (++!4424 (t!141568 (_1!9695 lt!541165)) (_2!9695 lt!541165))))))

(declare-fun b!1562625 () Bool)

(declare-fun res!696611 () Bool)

(declare-fun e!1003515 () Bool)

(assert (=> b!1562625 (=> (not res!696611) (not e!1003515))))

(declare-fun lt!541256 () List!17019)

(assert (=> b!1562625 (= res!696611 (= (size!13762 lt!541256) (+ (size!13762 (_1!9695 lt!541165)) (size!13762 (_2!9695 lt!541165)))))))

(declare-fun d!462723 () Bool)

(assert (=> d!462723 e!1003515))

(declare-fun res!696610 () Bool)

(assert (=> d!462723 (=> (not res!696610) (not e!1003515))))

(assert (=> d!462723 (= res!696610 (= (content!2343 lt!541256) ((_ map or) (content!2343 (_1!9695 lt!541165)) (content!2343 (_2!9695 lt!541165)))))))

(assert (=> d!462723 (= lt!541256 e!1003516)))

(declare-fun c!253323 () Bool)

(assert (=> d!462723 (= c!253323 ((_ is Nil!16951) (_1!9695 lt!541165)))))

(assert (=> d!462723 (= (++!4424 (_1!9695 lt!541165) (_2!9695 lt!541165)) lt!541256)))

(declare-fun b!1562626 () Bool)

(assert (=> b!1562626 (= e!1003515 (or (not (= (_2!9695 lt!541165) Nil!16951)) (= lt!541256 (_1!9695 lt!541165))))))

(declare-fun b!1562623 () Bool)

(assert (=> b!1562623 (= e!1003516 (_2!9695 lt!541165))))

(assert (= (and d!462723 c!253323) b!1562623))

(assert (= (and d!462723 (not c!253323)) b!1562624))

(assert (= (and d!462723 res!696610) b!1562625))

(assert (= (and b!1562625 res!696611) b!1562626))

(declare-fun m!1834022 () Bool)

(assert (=> b!1562624 m!1834022))

(declare-fun m!1834024 () Bool)

(assert (=> b!1562625 m!1834024))

(assert (=> b!1562625 m!1833560))

(declare-fun m!1834026 () Bool)

(assert (=> b!1562625 m!1834026))

(declare-fun m!1834028 () Bool)

(assert (=> d!462723 m!1834028))

(declare-fun m!1834030 () Bool)

(assert (=> d!462723 m!1834030))

(declare-fun m!1834032 () Bool)

(assert (=> d!462723 m!1834032))

(assert (=> d!462533 d!462723))

(declare-fun d!462725 () Bool)

(declare-fun lostCauseFct!151 (Regex!4299) Bool)

(assert (=> d!462725 (= (lostCause!398 (regex!2971 rule!240)) (lostCauseFct!151 (regex!2971 rule!240)))))

(declare-fun bs!389049 () Bool)

(assert (= bs!389049 d!462725))

(declare-fun m!1834034 () Bool)

(assert (=> bs!389049 m!1834034))

(assert (=> d!462533 d!462725))

(declare-fun d!462727 () Bool)

(assert (=> d!462727 (= lt!541046 lt!541151)))

(declare-fun lt!541259 () Unit!26158)

(declare-fun choose!9330 (List!17019 List!17019 List!17019 List!17019 List!17019) Unit!26158)

(assert (=> d!462727 (= lt!541259 (choose!9330 Nil!16951 lt!541046 Nil!16951 lt!541151 lt!541046))))

(assert (=> d!462727 (isPrefix!1270 Nil!16951 lt!541046)))

(assert (=> d!462727 (= (lemmaSamePrefixThenSameSuffix!632 Nil!16951 lt!541046 Nil!16951 lt!541151 lt!541046) lt!541259)))

(declare-fun bs!389050 () Bool)

(assert (= bs!389050 d!462727))

(declare-fun m!1834036 () Bool)

(assert (=> bs!389050 m!1834036))

(assert (=> bs!389050 m!1833792))

(assert (=> d!462533 d!462727))

(assert (=> d!462533 d!462633))

(declare-fun d!462729 () Bool)

(assert (=> d!462729 (isPrefix!1270 Nil!16951 (++!4424 Nil!16951 lt!541046))))

(declare-fun lt!541262 () Unit!26158)

(declare-fun choose!9331 (List!17019 List!17019) Unit!26158)

(assert (=> d!462729 (= lt!541262 (choose!9331 Nil!16951 lt!541046))))

(assert (=> d!462729 (= (lemmaConcatTwoListThenFirstIsPrefix!795 Nil!16951 lt!541046) lt!541262)))

(declare-fun bs!389051 () Bool)

(assert (= bs!389051 d!462729))

(assert (=> bs!389051 m!1833546))

(assert (=> bs!389051 m!1833546))

(assert (=> bs!389051 m!1833550))

(declare-fun m!1834038 () Bool)

(assert (=> bs!389051 m!1834038))

(assert (=> d!462533 d!462729))

(declare-fun b!1562628 () Bool)

(declare-fun e!1003518 () List!17019)

(assert (=> b!1562628 (= e!1003518 (Cons!16951 (h!22352 Nil!16951) (++!4424 (t!141568 Nil!16951) lt!541046)))))

(declare-fun b!1562629 () Bool)

(declare-fun res!696613 () Bool)

(declare-fun e!1003517 () Bool)

(assert (=> b!1562629 (=> (not res!696613) (not e!1003517))))

(declare-fun lt!541263 () List!17019)

(assert (=> b!1562629 (= res!696613 (= (size!13762 lt!541263) (+ (size!13762 Nil!16951) (size!13762 lt!541046))))))

(declare-fun d!462731 () Bool)

(assert (=> d!462731 e!1003517))

(declare-fun res!696612 () Bool)

(assert (=> d!462731 (=> (not res!696612) (not e!1003517))))

(assert (=> d!462731 (= res!696612 (= (content!2343 lt!541263) ((_ map or) (content!2343 Nil!16951) (content!2343 lt!541046))))))

(assert (=> d!462731 (= lt!541263 e!1003518)))

(declare-fun c!253324 () Bool)

(assert (=> d!462731 (= c!253324 ((_ is Nil!16951) Nil!16951))))

(assert (=> d!462731 (= (++!4424 Nil!16951 lt!541046) lt!541263)))

(declare-fun b!1562630 () Bool)

(assert (=> b!1562630 (= e!1003517 (or (not (= lt!541046 Nil!16951)) (= lt!541263 Nil!16951)))))

(declare-fun b!1562627 () Bool)

(assert (=> b!1562627 (= e!1003518 lt!541046)))

(assert (= (and d!462731 c!253324) b!1562627))

(assert (= (and d!462731 (not c!253324)) b!1562628))

(assert (= (and d!462731 res!696612) b!1562629))

(assert (= (and b!1562629 res!696613) b!1562630))

(declare-fun m!1834040 () Bool)

(assert (=> b!1562628 m!1834040))

(declare-fun m!1834042 () Bool)

(assert (=> b!1562629 m!1834042))

(assert (=> b!1562629 m!1833380))

(assert (=> b!1562629 m!1833384))

(declare-fun m!1834044 () Bool)

(assert (=> d!462731 m!1834044))

(assert (=> d!462731 m!1833818))

(declare-fun m!1834046 () Bool)

(assert (=> d!462731 m!1834046))

(assert (=> d!462533 d!462731))

(declare-fun b!1562634 () Bool)

(declare-fun e!1003519 () Bool)

(assert (=> b!1562634 (= e!1003519 (>= (size!13762 (++!4424 Nil!16951 lt!541046)) (size!13762 Nil!16951)))))

(declare-fun b!1562633 () Bool)

(declare-fun e!1003521 () Bool)

(assert (=> b!1562633 (= e!1003521 (isPrefix!1270 (tail!2218 Nil!16951) (tail!2218 (++!4424 Nil!16951 lt!541046))))))

(declare-fun b!1562632 () Bool)

(declare-fun res!696617 () Bool)

(assert (=> b!1562632 (=> (not res!696617) (not e!1003521))))

(assert (=> b!1562632 (= res!696617 (= (head!3123 Nil!16951) (head!3123 (++!4424 Nil!16951 lt!541046))))))

(declare-fun d!462733 () Bool)

(assert (=> d!462733 e!1003519))

(declare-fun res!696616 () Bool)

(assert (=> d!462733 (=> res!696616 e!1003519)))

(declare-fun lt!541264 () Bool)

(assert (=> d!462733 (= res!696616 (not lt!541264))))

(declare-fun e!1003520 () Bool)

(assert (=> d!462733 (= lt!541264 e!1003520)))

(declare-fun res!696614 () Bool)

(assert (=> d!462733 (=> res!696614 e!1003520)))

(assert (=> d!462733 (= res!696614 ((_ is Nil!16951) Nil!16951))))

(assert (=> d!462733 (= (isPrefix!1270 Nil!16951 (++!4424 Nil!16951 lt!541046)) lt!541264)))

(declare-fun b!1562631 () Bool)

(assert (=> b!1562631 (= e!1003520 e!1003521)))

(declare-fun res!696615 () Bool)

(assert (=> b!1562631 (=> (not res!696615) (not e!1003521))))

(assert (=> b!1562631 (= res!696615 (not ((_ is Nil!16951) (++!4424 Nil!16951 lt!541046))))))

(assert (= (and d!462733 (not res!696614)) b!1562631))

(assert (= (and b!1562631 res!696615) b!1562632))

(assert (= (and b!1562632 res!696617) b!1562633))

(assert (= (and d!462733 (not res!696616)) b!1562634))

(assert (=> b!1562634 m!1833546))

(declare-fun m!1834048 () Bool)

(assert (=> b!1562634 m!1834048))

(assert (=> b!1562634 m!1833380))

(declare-fun m!1834050 () Bool)

(assert (=> b!1562633 m!1834050))

(assert (=> b!1562633 m!1833546))

(declare-fun m!1834052 () Bool)

(assert (=> b!1562633 m!1834052))

(assert (=> b!1562633 m!1834050))

(assert (=> b!1562633 m!1834052))

(declare-fun m!1834054 () Bool)

(assert (=> b!1562633 m!1834054))

(declare-fun m!1834056 () Bool)

(assert (=> b!1562632 m!1834056))

(assert (=> b!1562632 m!1833546))

(declare-fun m!1834058 () Bool)

(assert (=> b!1562632 m!1834058))

(assert (=> d!462533 d!462733))

(assert (=> d!462533 d!462659))

(declare-fun bs!389052 () Bool)

(declare-fun d!462735 () Bool)

(assert (= bs!389052 (and d!462735 d!462713)))

(declare-fun lambda!66092 () Int)

(assert (=> bs!389052 (= lambda!66092 lambda!66090)))

(declare-fun bs!389053 () Bool)

(assert (= bs!389053 (and d!462735 d!462691)))

(assert (=> bs!389053 (= lambda!66092 lambda!66088)))

(declare-fun bs!389054 () Bool)

(assert (= bs!389054 (and d!462735 d!462649)))

(assert (=> bs!389054 (= lambda!66092 lambda!66085)))

(declare-fun bs!389055 () Bool)

(assert (= bs!389055 (and d!462735 d!462699)))

(assert (=> bs!389055 (= lambda!66092 lambda!66089)))

(declare-fun bs!389056 () Bool)

(assert (= bs!389056 (and d!462735 d!462647)))

(assert (=> bs!389056 (= lambda!66092 lambda!66084)))

(declare-fun bs!389057 () Bool)

(assert (= bs!389057 (and d!462735 d!462715)))

(assert (=> bs!389057 (= lambda!66092 lambda!66091)))

(declare-fun bs!389058 () Bool)

(assert (= bs!389058 (and d!462735 d!462641)))

(assert (=> bs!389058 (= lambda!66092 lambda!66082)))

(declare-fun bs!389059 () Bool)

(assert (= bs!389059 (and d!462735 d!462653)))

(assert (=> bs!389059 (= lambda!66092 lambda!66086)))

(declare-fun bs!389060 () Bool)

(assert (= bs!389060 (and d!462735 d!462611)))

(assert (=> bs!389060 (= lambda!66092 lambda!66081)))

(declare-fun bs!389061 () Bool)

(assert (= bs!389061 (and d!462735 d!462597)))

(assert (=> bs!389061 (= lambda!66092 lambda!66074)))

(declare-fun bs!389062 () Bool)

(assert (= bs!389062 (and d!462735 d!462645)))

(assert (=> bs!389062 (= lambda!66092 lambda!66083)))

(declare-fun bs!389063 () Bool)

(assert (= bs!389063 (and d!462735 d!462675)))

(assert (=> bs!389063 (= lambda!66092 lambda!66087)))

(assert (=> d!462735 (= (inv!22268 setElem!11254) (forall!3929 (exprs!1317 setElem!11254) lambda!66092))))

(declare-fun bs!389064 () Bool)

(assert (= bs!389064 d!462735))

(declare-fun m!1834060 () Bool)

(assert (=> bs!389064 m!1834060))

(assert (=> setNonEmpty!11254 d!462735))

(declare-fun bs!389065 () Bool)

(declare-fun d!462737 () Bool)

(assert (= bs!389065 (and d!462737 d!462713)))

(declare-fun lambda!66093 () Int)

(assert (=> bs!389065 (= lambda!66093 lambda!66090)))

(declare-fun bs!389066 () Bool)

(assert (= bs!389066 (and d!462737 d!462691)))

(assert (=> bs!389066 (= lambda!66093 lambda!66088)))

(declare-fun bs!389067 () Bool)

(assert (= bs!389067 (and d!462737 d!462735)))

(assert (=> bs!389067 (= lambda!66093 lambda!66092)))

(declare-fun bs!389068 () Bool)

(assert (= bs!389068 (and d!462737 d!462649)))

(assert (=> bs!389068 (= lambda!66093 lambda!66085)))

(declare-fun bs!389069 () Bool)

(assert (= bs!389069 (and d!462737 d!462699)))

(assert (=> bs!389069 (= lambda!66093 lambda!66089)))

(declare-fun bs!389070 () Bool)

(assert (= bs!389070 (and d!462737 d!462647)))

(assert (=> bs!389070 (= lambda!66093 lambda!66084)))

(declare-fun bs!389071 () Bool)

(assert (= bs!389071 (and d!462737 d!462715)))

(assert (=> bs!389071 (= lambda!66093 lambda!66091)))

(declare-fun bs!389072 () Bool)

(assert (= bs!389072 (and d!462737 d!462641)))

(assert (=> bs!389072 (= lambda!66093 lambda!66082)))

(declare-fun bs!389073 () Bool)

(assert (= bs!389073 (and d!462737 d!462653)))

(assert (=> bs!389073 (= lambda!66093 lambda!66086)))

(declare-fun bs!389074 () Bool)

(assert (= bs!389074 (and d!462737 d!462611)))

(assert (=> bs!389074 (= lambda!66093 lambda!66081)))

(declare-fun bs!389075 () Bool)

(assert (= bs!389075 (and d!462737 d!462597)))

(assert (=> bs!389075 (= lambda!66093 lambda!66074)))

(declare-fun bs!389076 () Bool)

(assert (= bs!389076 (and d!462737 d!462645)))

(assert (=> bs!389076 (= lambda!66093 lambda!66083)))

(declare-fun bs!389077 () Bool)

(assert (= bs!389077 (and d!462737 d!462675)))

(assert (=> bs!389077 (= lambda!66093 lambda!66087)))

(assert (=> d!462737 (= (inv!22268 (_1!9685 (_1!9686 (h!22354 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))) (forall!3929 (exprs!1317 (_1!9685 (_1!9686 (h!22354 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))) lambda!66093))))

(declare-fun bs!389078 () Bool)

(assert (= bs!389078 d!462737))

(declare-fun m!1834062 () Bool)

(assert (=> bs!389078 m!1834062))

(assert (=> b!1562274 d!462737))

(declare-fun d!462739 () Bool)

(assert (=> d!462739 (= (isEmpty!10171 (_1!9695 lt!541165)) ((_ is Nil!16951) (_1!9695 lt!541165)))))

(assert (=> b!1562139 d!462739))

(declare-fun b!1562635 () Bool)

(declare-fun e!1003528 () Bool)

(assert (=> b!1562635 (= e!1003528 (nullable!1281 (regex!2971 rule!240)))))

(declare-fun d!462741 () Bool)

(declare-fun e!1003527 () Bool)

(assert (=> d!462741 e!1003527))

(declare-fun c!253327 () Bool)

(assert (=> d!462741 (= c!253327 ((_ is EmptyExpr!4299) (regex!2971 rule!240)))))

(declare-fun lt!541265 () Bool)

(assert (=> d!462741 (= lt!541265 e!1003528)))

(declare-fun c!253325 () Bool)

(assert (=> d!462741 (= c!253325 (isEmpty!10171 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(assert (=> d!462741 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462741 (= (matchR!1891 (regex!2971 rule!240) (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))) lt!541265)))

(declare-fun b!1562636 () Bool)

(declare-fun e!1003526 () Bool)

(assert (=> b!1562636 (= e!1003526 (not lt!541265))))

(declare-fun b!1562637 () Bool)

(assert (=> b!1562637 (= e!1003528 (matchR!1891 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046))))) (tail!2218 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046))))))))

(declare-fun b!1562638 () Bool)

(declare-fun e!1003525 () Bool)

(assert (=> b!1562638 (= e!1003525 (= (head!3123 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))) (c!253236 (regex!2971 rule!240))))))

(declare-fun b!1562639 () Bool)

(declare-fun res!696619 () Bool)

(assert (=> b!1562639 (=> (not res!696619) (not e!1003525))))

(assert (=> b!1562639 (= res!696619 (isEmpty!10171 (tail!2218 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046))))))))

(declare-fun b!1562640 () Bool)

(declare-fun res!696618 () Bool)

(declare-fun e!1003524 () Bool)

(assert (=> b!1562640 (=> res!696618 e!1003524)))

(assert (=> b!1562640 (= res!696618 e!1003525)))

(declare-fun res!696620 () Bool)

(assert (=> b!1562640 (=> (not res!696620) (not e!1003525))))

(assert (=> b!1562640 (= res!696620 lt!541265)))

(declare-fun b!1562641 () Bool)

(declare-fun call!102329 () Bool)

(assert (=> b!1562641 (= e!1003527 (= lt!541265 call!102329))))

(declare-fun b!1562642 () Bool)

(declare-fun e!1003523 () Bool)

(declare-fun e!1003522 () Bool)

(assert (=> b!1562642 (= e!1003523 e!1003522)))

(declare-fun res!696623 () Bool)

(assert (=> b!1562642 (=> res!696623 e!1003522)))

(assert (=> b!1562642 (= res!696623 call!102329)))

(declare-fun b!1562643 () Bool)

(declare-fun res!696625 () Bool)

(assert (=> b!1562643 (=> res!696625 e!1003522)))

(assert (=> b!1562643 (= res!696625 (not (isEmpty!10171 (tail!2218 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))))

(declare-fun b!1562644 () Bool)

(declare-fun res!696624 () Bool)

(assert (=> b!1562644 (=> res!696624 e!1003524)))

(assert (=> b!1562644 (= res!696624 (not ((_ is ElementMatch!4299) (regex!2971 rule!240))))))

(assert (=> b!1562644 (= e!1003526 e!1003524)))

(declare-fun b!1562645 () Bool)

(assert (=> b!1562645 (= e!1003527 e!1003526)))

(declare-fun c!253326 () Bool)

(assert (=> b!1562645 (= c!253326 ((_ is EmptyLang!4299) (regex!2971 rule!240)))))

(declare-fun b!1562646 () Bool)

(assert (=> b!1562646 (= e!1003524 e!1003523)))

(declare-fun res!696621 () Bool)

(assert (=> b!1562646 (=> (not res!696621) (not e!1003523))))

(assert (=> b!1562646 (= res!696621 (not lt!541265))))

(declare-fun bm!102324 () Bool)

(assert (=> bm!102324 (= call!102329 (isEmpty!10171 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))))))

(declare-fun b!1562647 () Bool)

(assert (=> b!1562647 (= e!1003522 (not (= (head!3123 (_1!9695 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 (size!13762 Nil!16951) lt!541046 lt!541046 (size!13762 lt!541046)))) (c!253236 (regex!2971 rule!240)))))))

(declare-fun b!1562648 () Bool)

(declare-fun res!696622 () Bool)

(assert (=> b!1562648 (=> (not res!696622) (not e!1003525))))

(assert (=> b!1562648 (= res!696622 (not call!102329))))

(assert (= (and d!462741 c!253325) b!1562635))

(assert (= (and d!462741 (not c!253325)) b!1562637))

(assert (= (and d!462741 c!253327) b!1562641))

(assert (= (and d!462741 (not c!253327)) b!1562645))

(assert (= (and b!1562645 c!253326) b!1562636))

(assert (= (and b!1562645 (not c!253326)) b!1562644))

(assert (= (and b!1562644 (not res!696624)) b!1562640))

(assert (= (and b!1562640 res!696620) b!1562648))

(assert (= (and b!1562648 res!696622) b!1562639))

(assert (= (and b!1562639 res!696619) b!1562638))

(assert (= (and b!1562640 (not res!696618)) b!1562646))

(assert (= (and b!1562646 res!696621) b!1562642))

(assert (= (and b!1562642 (not res!696623)) b!1562643))

(assert (= (and b!1562643 (not res!696625)) b!1562647))

(assert (= (or b!1562641 b!1562642 b!1562648) bm!102324))

(declare-fun m!1834064 () Bool)

(assert (=> b!1562639 m!1834064))

(assert (=> b!1562639 m!1834064))

(declare-fun m!1834066 () Bool)

(assert (=> b!1562639 m!1834066))

(declare-fun m!1834068 () Bool)

(assert (=> b!1562637 m!1834068))

(assert (=> b!1562637 m!1834068))

(declare-fun m!1834070 () Bool)

(assert (=> b!1562637 m!1834070))

(assert (=> b!1562637 m!1834064))

(assert (=> b!1562637 m!1834070))

(assert (=> b!1562637 m!1834064))

(declare-fun m!1834072 () Bool)

(assert (=> b!1562637 m!1834072))

(assert (=> b!1562638 m!1834068))

(assert (=> b!1562643 m!1834064))

(assert (=> b!1562643 m!1834064))

(assert (=> b!1562643 m!1834066))

(assert (=> b!1562635 m!1833436))

(assert (=> b!1562647 m!1834068))

(assert (=> bm!102324 m!1833474))

(assert (=> d!462741 m!1833474))

(assert (=> d!462741 m!1833434))

(assert (=> b!1562184 d!462741))

(assert (=> b!1562184 d!462533))

(assert (=> b!1562184 d!462511))

(assert (=> b!1562184 d!462509))

(declare-fun bs!389079 () Bool)

(declare-fun d!462743 () Bool)

(assert (= bs!389079 (and d!462743 d!462713)))

(declare-fun lambda!66094 () Int)

(assert (=> bs!389079 (= lambda!66094 lambda!66090)))

(declare-fun bs!389080 () Bool)

(assert (= bs!389080 (and d!462743 d!462691)))

(assert (=> bs!389080 (= lambda!66094 lambda!66088)))

(declare-fun bs!389081 () Bool)

(assert (= bs!389081 (and d!462743 d!462735)))

(assert (=> bs!389081 (= lambda!66094 lambda!66092)))

(declare-fun bs!389082 () Bool)

(assert (= bs!389082 (and d!462743 d!462649)))

(assert (=> bs!389082 (= lambda!66094 lambda!66085)))

(declare-fun bs!389083 () Bool)

(assert (= bs!389083 (and d!462743 d!462699)))

(assert (=> bs!389083 (= lambda!66094 lambda!66089)))

(declare-fun bs!389084 () Bool)

(assert (= bs!389084 (and d!462743 d!462647)))

(assert (=> bs!389084 (= lambda!66094 lambda!66084)))

(declare-fun bs!389085 () Bool)

(assert (= bs!389085 (and d!462743 d!462737)))

(assert (=> bs!389085 (= lambda!66094 lambda!66093)))

(declare-fun bs!389086 () Bool)

(assert (= bs!389086 (and d!462743 d!462715)))

(assert (=> bs!389086 (= lambda!66094 lambda!66091)))

(declare-fun bs!389087 () Bool)

(assert (= bs!389087 (and d!462743 d!462641)))

(assert (=> bs!389087 (= lambda!66094 lambda!66082)))

(declare-fun bs!389088 () Bool)

(assert (= bs!389088 (and d!462743 d!462653)))

(assert (=> bs!389088 (= lambda!66094 lambda!66086)))

(declare-fun bs!389089 () Bool)

(assert (= bs!389089 (and d!462743 d!462611)))

(assert (=> bs!389089 (= lambda!66094 lambda!66081)))

(declare-fun bs!389090 () Bool)

(assert (= bs!389090 (and d!462743 d!462597)))

(assert (=> bs!389090 (= lambda!66094 lambda!66074)))

(declare-fun bs!389091 () Bool)

(assert (= bs!389091 (and d!462743 d!462645)))

(assert (=> bs!389091 (= lambda!66094 lambda!66083)))

(declare-fun bs!389092 () Bool)

(assert (= bs!389092 (and d!462743 d!462675)))

(assert (=> bs!389092 (= lambda!66094 lambda!66087)))

(assert (=> d!462743 (= (inv!22268 setElem!11273) (forall!3929 (exprs!1317 setElem!11273) lambda!66094))))

(declare-fun bs!389093 () Bool)

(assert (= bs!389093 d!462743))

(declare-fun m!1834074 () Bool)

(assert (=> bs!389093 m!1834074))

(assert (=> setNonEmpty!11273 d!462743))

(assert (=> b!1561976 d!462567))

(declare-fun d!462745 () Bool)

(declare-fun e!1003531 () Bool)

(assert (=> d!462745 e!1003531))

(declare-fun res!696628 () Bool)

(assert (=> d!462745 (=> (not res!696628) (not e!1003531))))

(declare-fun lt!541268 () BalanceConc!11120)

(assert (=> d!462745 (= res!696628 (= (list!6521 lt!541268) lt!541050))))

(declare-fun fromList!354 (List!17019) Conc!5589)

(assert (=> d!462745 (= lt!541268 (BalanceConc!11121 (fromList!354 lt!541050)))))

(assert (=> d!462745 (= (fromListB!771 lt!541050) lt!541268)))

(declare-fun b!1562651 () Bool)

(assert (=> b!1562651 (= e!1003531 (isBalanced!1654 (fromList!354 lt!541050)))))

(assert (= (and d!462745 res!696628) b!1562651))

(declare-fun m!1834076 () Bool)

(assert (=> d!462745 m!1834076))

(declare-fun m!1834078 () Bool)

(assert (=> d!462745 m!1834078))

(assert (=> b!1562651 m!1834078))

(assert (=> b!1562651 m!1834078))

(declare-fun m!1834080 () Bool)

(assert (=> b!1562651 m!1834080))

(assert (=> d!462515 d!462745))

(assert (=> b!1562035 d!462657))

(assert (=> b!1562035 d!462509))

(declare-fun bs!389094 () Bool)

(declare-fun d!462747 () Bool)

(assert (= bs!389094 (and d!462747 d!462713)))

(declare-fun lambda!66095 () Int)

(assert (=> bs!389094 (= lambda!66095 lambda!66090)))

(declare-fun bs!389095 () Bool)

(assert (= bs!389095 (and d!462747 d!462691)))

(assert (=> bs!389095 (= lambda!66095 lambda!66088)))

(declare-fun bs!389096 () Bool)

(assert (= bs!389096 (and d!462747 d!462735)))

(assert (=> bs!389096 (= lambda!66095 lambda!66092)))

(declare-fun bs!389097 () Bool)

(assert (= bs!389097 (and d!462747 d!462649)))

(assert (=> bs!389097 (= lambda!66095 lambda!66085)))

(declare-fun bs!389098 () Bool)

(assert (= bs!389098 (and d!462747 d!462699)))

(assert (=> bs!389098 (= lambda!66095 lambda!66089)))

(declare-fun bs!389099 () Bool)

(assert (= bs!389099 (and d!462747 d!462647)))

(assert (=> bs!389099 (= lambda!66095 lambda!66084)))

(declare-fun bs!389100 () Bool)

(assert (= bs!389100 (and d!462747 d!462737)))

(assert (=> bs!389100 (= lambda!66095 lambda!66093)))

(declare-fun bs!389101 () Bool)

(assert (= bs!389101 (and d!462747 d!462715)))

(assert (=> bs!389101 (= lambda!66095 lambda!66091)))

(declare-fun bs!389102 () Bool)

(assert (= bs!389102 (and d!462747 d!462641)))

(assert (=> bs!389102 (= lambda!66095 lambda!66082)))

(declare-fun bs!389103 () Bool)

(assert (= bs!389103 (and d!462747 d!462743)))

(assert (=> bs!389103 (= lambda!66095 lambda!66094)))

(declare-fun bs!389104 () Bool)

(assert (= bs!389104 (and d!462747 d!462653)))

(assert (=> bs!389104 (= lambda!66095 lambda!66086)))

(declare-fun bs!389105 () Bool)

(assert (= bs!389105 (and d!462747 d!462611)))

(assert (=> bs!389105 (= lambda!66095 lambda!66081)))

(declare-fun bs!389106 () Bool)

(assert (= bs!389106 (and d!462747 d!462597)))

(assert (=> bs!389106 (= lambda!66095 lambda!66074)))

(declare-fun bs!389107 () Bool)

(assert (= bs!389107 (and d!462747 d!462645)))

(assert (=> bs!389107 (= lambda!66095 lambda!66083)))

(declare-fun bs!389108 () Bool)

(assert (= bs!389108 (and d!462747 d!462675)))

(assert (=> bs!389108 (= lambda!66095 lambda!66087)))

(assert (=> d!462747 (= (inv!22268 (_2!9691 (_1!9692 (h!22356 mapValue!8687)))) (forall!3929 (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapValue!8687)))) lambda!66095))))

(declare-fun bs!389109 () Bool)

(assert (= bs!389109 d!462747))

(declare-fun m!1834082 () Bool)

(assert (=> bs!389109 m!1834082))

(assert (=> b!1562325 d!462747))

(declare-fun b!1562652 () Bool)

(declare-fun e!1003532 () Bool)

(declare-fun e!1003533 () Bool)

(assert (=> b!1562652 (= e!1003532 e!1003533)))

(declare-fun c!253329 () Bool)

(assert (=> b!1562652 (= c!253329 ((_ is IntegerValue!9184) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun b!1562653 () Bool)

(declare-fun res!696629 () Bool)

(declare-fun e!1003534 () Bool)

(assert (=> b!1562653 (=> res!696629 e!1003534)))

(assert (=> b!1562653 (= res!696629 (not ((_ is IntegerValue!9185) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))))

(assert (=> b!1562653 (= e!1003533 e!1003534)))

(declare-fun d!462749 () Bool)

(declare-fun c!253330 () Bool)

(assert (=> d!462749 (= c!253330 ((_ is IntegerValue!9183) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))

(assert (=> d!462749 (= (inv!21 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))) e!1003532)))

(declare-fun b!1562654 () Bool)

(assert (=> b!1562654 (= e!1003534 (inv!15 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun b!1562655 () Bool)

(assert (=> b!1562655 (= e!1003532 (inv!16 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))

(declare-fun b!1562656 () Bool)

(assert (=> b!1562656 (= e!1003533 (inv!17 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))

(assert (= (and d!462749 c!253330) b!1562655))

(assert (= (and d!462749 (not c!253330)) b!1562652))

(assert (= (and b!1562652 c!253329) b!1562656))

(assert (= (and b!1562652 (not c!253329)) b!1562653))

(assert (= (and b!1562653 (not res!696629)) b!1562654))

(declare-fun m!1834084 () Bool)

(assert (=> b!1562654 m!1834084))

(declare-fun m!1834086 () Bool)

(assert (=> b!1562655 m!1834086))

(declare-fun m!1834088 () Bool)

(assert (=> b!1562656 m!1834088))

(assert (=> tb!87399 d!462749))

(declare-fun d!462751 () Bool)

(assert (=> d!462751 (= (valid!1491 (_3!1401 lt!541171)) (validCacheMapDown!172 (cache!2187 (_3!1401 lt!541171))))))

(declare-fun bs!389110 () Bool)

(assert (= bs!389110 d!462751))

(declare-fun m!1834090 () Bool)

(assert (=> bs!389110 m!1834090))

(assert (=> b!1562160 d!462751))

(declare-fun b!1562660 () Bool)

(declare-fun e!1003535 () Bool)

(assert (=> b!1562660 (= e!1003535 (>= (size!13762 lt!541046) (size!13762 lt!541046)))))

(declare-fun b!1562659 () Bool)

(declare-fun e!1003537 () Bool)

(assert (=> b!1562659 (= e!1003537 (isPrefix!1270 (tail!2218 lt!541046) (tail!2218 lt!541046)))))

(declare-fun b!1562658 () Bool)

(declare-fun res!696633 () Bool)

(assert (=> b!1562658 (=> (not res!696633) (not e!1003537))))

(assert (=> b!1562658 (= res!696633 (= (head!3123 lt!541046) (head!3123 lt!541046)))))

(declare-fun d!462753 () Bool)

(assert (=> d!462753 e!1003535))

(declare-fun res!696632 () Bool)

(assert (=> d!462753 (=> res!696632 e!1003535)))

(declare-fun lt!541269 () Bool)

(assert (=> d!462753 (= res!696632 (not lt!541269))))

(declare-fun e!1003536 () Bool)

(assert (=> d!462753 (= lt!541269 e!1003536)))

(declare-fun res!696630 () Bool)

(assert (=> d!462753 (=> res!696630 e!1003536)))

(assert (=> d!462753 (= res!696630 ((_ is Nil!16951) lt!541046))))

(assert (=> d!462753 (= (isPrefix!1270 lt!541046 lt!541046) lt!541269)))

(declare-fun b!1562657 () Bool)

(assert (=> b!1562657 (= e!1003536 e!1003537)))

(declare-fun res!696631 () Bool)

(assert (=> b!1562657 (=> (not res!696631) (not e!1003537))))

(assert (=> b!1562657 (= res!696631 (not ((_ is Nil!16951) lt!541046)))))

(assert (= (and d!462753 (not res!696630)) b!1562657))

(assert (= (and b!1562657 res!696631) b!1562658))

(assert (= (and b!1562658 res!696633) b!1562659))

(assert (= (and d!462753 (not res!696632)) b!1562660))

(assert (=> b!1562660 m!1833384))

(assert (=> b!1562660 m!1833384))

(assert (=> b!1562659 m!1833518))

(assert (=> b!1562659 m!1833518))

(assert (=> b!1562659 m!1833518))

(assert (=> b!1562659 m!1833518))

(declare-fun m!1834092 () Bool)

(assert (=> b!1562659 m!1834092))

(assert (=> b!1562658 m!1833516))

(assert (=> b!1562658 m!1833516))

(assert (=> bm!102308 d!462753))

(declare-fun bs!389111 () Bool)

(declare-fun b!1562662 () Bool)

(assert (= bs!389111 (and b!1562662 b!1562384)))

(declare-fun lambda!66096 () Int)

(assert (=> bs!389111 (= (= (totalInput!2504 cacheFurthestNullable!103) (totalInput!2504 (_4!463 lt!541055))) (= lambda!66096 lambda!66077))))

(assert (=> b!1562662 true))

(declare-fun d!462755 () Bool)

(declare-fun res!696634 () Bool)

(declare-fun e!1003538 () Bool)

(assert (=> d!462755 (=> (not res!696634) (not e!1003538))))

(assert (=> d!462755 (= res!696634 (valid!1492 (cache!2188 cacheFurthestNullable!103)))))

(assert (=> d!462755 (= (validCacheMapFurthestNullable!85 (cache!2188 cacheFurthestNullable!103) (totalInput!2504 cacheFurthestNullable!103)) e!1003538)))

(declare-fun b!1562661 () Bool)

(declare-fun res!696635 () Bool)

(assert (=> b!1562661 (=> (not res!696635) (not e!1003538))))

(assert (=> b!1562661 (= res!696635 (invariantList!250 (toList!859 (map!3537 (cache!2188 cacheFurthestNullable!103)))))))

(assert (=> b!1562662 (= e!1003538 (forall!3930 (toList!859 (map!3537 (cache!2188 cacheFurthestNullable!103))) lambda!66096))))

(assert (= (and d!462755 res!696634) b!1562661))

(assert (= (and b!1562661 res!696635) b!1562662))

(declare-fun m!1834094 () Bool)

(assert (=> d!462755 m!1834094))

(declare-fun m!1834096 () Bool)

(assert (=> b!1562661 m!1834096))

(declare-fun m!1834098 () Bool)

(assert (=> b!1562661 m!1834098))

(assert (=> b!1562662 m!1834096))

(declare-fun m!1834100 () Bool)

(assert (=> b!1562662 m!1834100))

(assert (=> d!462497 d!462755))

(declare-fun d!462757 () Bool)

(assert (=> d!462757 (= (isEmpty!10171 (list!6521 (_1!9693 (_1!9694 lt!541055)))) ((_ is Nil!16951) (list!6521 (_1!9693 (_1!9694 lt!541055)))))))

(assert (=> d!462545 d!462757))

(assert (=> d!462545 d!462527))

(declare-fun d!462759 () Bool)

(declare-fun lt!541272 () Bool)

(assert (=> d!462759 (= lt!541272 (isEmpty!10171 (list!6522 (c!253235 (_1!9693 (_1!9694 lt!541055))))))))

(assert (=> d!462759 (= lt!541272 (= (size!13764 (c!253235 (_1!9693 (_1!9694 lt!541055)))) 0))))

(assert (=> d!462759 (= (isEmpty!10173 (c!253235 (_1!9693 (_1!9694 lt!541055)))) lt!541272)))

(declare-fun bs!389112 () Bool)

(assert (= bs!389112 d!462759))

(assert (=> bs!389112 m!1833502))

(assert (=> bs!389112 m!1833502))

(declare-fun m!1834102 () Bool)

(assert (=> bs!389112 m!1834102))

(assert (=> bs!389112 m!1833486))

(assert (=> d!462545 d!462759))

(declare-fun d!462761 () Bool)

(declare-fun lt!541273 () Int)

(assert (=> d!462761 (>= lt!541273 0)))

(declare-fun e!1003539 () Int)

(assert (=> d!462761 (= lt!541273 e!1003539)))

(declare-fun c!253331 () Bool)

(assert (=> d!462761 (= c!253331 ((_ is Nil!16951) (list!6521 (_1!9693 (_1!9694 lt!541055)))))))

(assert (=> d!462761 (= (size!13762 (list!6521 (_1!9693 (_1!9694 lt!541055)))) lt!541273)))

(declare-fun b!1562663 () Bool)

(assert (=> b!1562663 (= e!1003539 0)))

(declare-fun b!1562664 () Bool)

(assert (=> b!1562664 (= e!1003539 (+ 1 (size!13762 (t!141568 (list!6521 (_1!9693 (_1!9694 lt!541055)))))))))

(assert (= (and d!462761 c!253331) b!1562663))

(assert (= (and d!462761 (not c!253331)) b!1562664))

(declare-fun m!1834104 () Bool)

(assert (=> b!1562664 m!1834104))

(assert (=> d!462521 d!462761))

(assert (=> d!462521 d!462527))

(declare-fun d!462763 () Bool)

(declare-fun lt!541276 () Int)

(assert (=> d!462763 (= lt!541276 (size!13762 (list!6522 (c!253235 (_1!9693 (_1!9694 lt!541055))))))))

(assert (=> d!462763 (= lt!541276 (ite ((_ is Empty!5589) (c!253235 (_1!9693 (_1!9694 lt!541055)))) 0 (ite ((_ is Leaf!8284) (c!253235 (_1!9693 (_1!9694 lt!541055)))) (csize!11409 (c!253235 (_1!9693 (_1!9694 lt!541055)))) (csize!11408 (c!253235 (_1!9693 (_1!9694 lt!541055)))))))))

(assert (=> d!462763 (= (size!13764 (c!253235 (_1!9693 (_1!9694 lt!541055)))) lt!541276)))

(declare-fun bs!389113 () Bool)

(assert (= bs!389113 d!462763))

(assert (=> bs!389113 m!1833502))

(assert (=> bs!389113 m!1833502))

(declare-fun m!1834106 () Bool)

(assert (=> bs!389113 m!1834106))

(assert (=> d!462521 d!462763))

(declare-fun d!462765 () Bool)

(assert (=> d!462765 (= (inv!22269 (xs!8389 (c!253235 input!1676))) (<= (size!13762 (innerList!5649 (xs!8389 (c!253235 input!1676)))) 2147483647))))

(declare-fun bs!389114 () Bool)

(assert (= bs!389114 d!462765))

(declare-fun m!1834108 () Bool)

(assert (=> bs!389114 m!1834108))

(assert (=> b!1562332 d!462765))

(declare-fun b!1562677 () Bool)

(declare-fun res!696648 () Bool)

(declare-fun e!1003545 () Bool)

(assert (=> b!1562677 (=> (not res!696648) (not e!1003545))))

(assert (=> b!1562677 (= res!696648 (<= (- (height!830 (left!13749 (c!253235 input!1676))) (height!830 (right!14079 (c!253235 input!1676)))) 1))))

(declare-fun b!1562678 () Bool)

(declare-fun e!1003544 () Bool)

(assert (=> b!1562678 (= e!1003544 e!1003545)))

(declare-fun res!696651 () Bool)

(assert (=> b!1562678 (=> (not res!696651) (not e!1003545))))

(assert (=> b!1562678 (= res!696651 (<= (- 1) (- (height!830 (left!13749 (c!253235 input!1676))) (height!830 (right!14079 (c!253235 input!1676))))))))

(declare-fun b!1562679 () Bool)

(declare-fun res!696653 () Bool)

(assert (=> b!1562679 (=> (not res!696653) (not e!1003545))))

(assert (=> b!1562679 (= res!696653 (isBalanced!1654 (right!14079 (c!253235 input!1676))))))

(declare-fun d!462767 () Bool)

(declare-fun res!696649 () Bool)

(assert (=> d!462767 (=> res!696649 e!1003544)))

(assert (=> d!462767 (= res!696649 (not ((_ is Node!5589) (c!253235 input!1676))))))

(assert (=> d!462767 (= (isBalanced!1654 (c!253235 input!1676)) e!1003544)))

(declare-fun b!1562680 () Bool)

(declare-fun res!696652 () Bool)

(assert (=> b!1562680 (=> (not res!696652) (not e!1003545))))

(assert (=> b!1562680 (= res!696652 (not (isEmpty!10173 (left!13749 (c!253235 input!1676)))))))

(declare-fun b!1562681 () Bool)

(declare-fun res!696650 () Bool)

(assert (=> b!1562681 (=> (not res!696650) (not e!1003545))))

(assert (=> b!1562681 (= res!696650 (isBalanced!1654 (left!13749 (c!253235 input!1676))))))

(declare-fun b!1562682 () Bool)

(assert (=> b!1562682 (= e!1003545 (not (isEmpty!10173 (right!14079 (c!253235 input!1676)))))))

(assert (= (and d!462767 (not res!696649)) b!1562678))

(assert (= (and b!1562678 res!696651) b!1562677))

(assert (= (and b!1562677 res!696648) b!1562681))

(assert (= (and b!1562681 res!696650) b!1562679))

(assert (= (and b!1562679 res!696653) b!1562680))

(assert (= (and b!1562680 res!696652) b!1562682))

(declare-fun m!1834110 () Bool)

(assert (=> b!1562678 m!1834110))

(declare-fun m!1834112 () Bool)

(assert (=> b!1562678 m!1834112))

(assert (=> b!1562677 m!1834110))

(assert (=> b!1562677 m!1834112))

(declare-fun m!1834114 () Bool)

(assert (=> b!1562681 m!1834114))

(declare-fun m!1834116 () Bool)

(assert (=> b!1562682 m!1834116))

(declare-fun m!1834118 () Bool)

(assert (=> b!1562680 m!1834118))

(declare-fun m!1834120 () Bool)

(assert (=> b!1562679 m!1834120))

(assert (=> d!462577 d!462767))

(declare-fun d!462769 () Bool)

(declare-fun res!696654 () Bool)

(declare-fun e!1003546 () Bool)

(assert (=> d!462769 (=> (not res!696654) (not e!1003546))))

(assert (=> d!462769 (= res!696654 (= (csize!11408 (c!253235 totalInput!568)) (+ (size!13764 (left!13749 (c!253235 totalInput!568))) (size!13764 (right!14079 (c!253235 totalInput!568))))))))

(assert (=> d!462769 (= (inv!22266 (c!253235 totalInput!568)) e!1003546)))

(declare-fun b!1562683 () Bool)

(declare-fun res!696655 () Bool)

(assert (=> b!1562683 (=> (not res!696655) (not e!1003546))))

(assert (=> b!1562683 (= res!696655 (and (not (= (left!13749 (c!253235 totalInput!568)) Empty!5589)) (not (= (right!14079 (c!253235 totalInput!568)) Empty!5589))))))

(declare-fun b!1562684 () Bool)

(declare-fun res!696656 () Bool)

(assert (=> b!1562684 (=> (not res!696656) (not e!1003546))))

(assert (=> b!1562684 (= res!696656 (= (cheight!5800 (c!253235 totalInput!568)) (+ (max!0 (height!830 (left!13749 (c!253235 totalInput!568))) (height!830 (right!14079 (c!253235 totalInput!568)))) 1)))))

(declare-fun b!1562685 () Bool)

(assert (=> b!1562685 (= e!1003546 (<= 0 (cheight!5800 (c!253235 totalInput!568))))))

(assert (= (and d!462769 res!696654) b!1562683))

(assert (= (and b!1562683 res!696655) b!1562684))

(assert (= (and b!1562684 res!696656) b!1562685))

(declare-fun m!1834122 () Bool)

(assert (=> d!462769 m!1834122))

(declare-fun m!1834124 () Bool)

(assert (=> d!462769 m!1834124))

(declare-fun m!1834126 () Bool)

(assert (=> b!1562684 m!1834126))

(declare-fun m!1834128 () Bool)

(assert (=> b!1562684 m!1834128))

(assert (=> b!1562684 m!1834126))

(assert (=> b!1562684 m!1834128))

(declare-fun m!1834130 () Bool)

(assert (=> b!1562684 m!1834130))

(assert (=> b!1562042 d!462769))

(assert (=> d!462507 d!462513))

(assert (=> d!462507 d!462659))

(declare-fun bs!389115 () Bool)

(declare-fun d!462771 () Bool)

(assert (= bs!389115 (and d!462771 d!462713)))

(declare-fun lambda!66097 () Int)

(assert (=> bs!389115 (= lambda!66097 lambda!66090)))

(declare-fun bs!389116 () Bool)

(assert (= bs!389116 (and d!462771 d!462691)))

(assert (=> bs!389116 (= lambda!66097 lambda!66088)))

(declare-fun bs!389117 () Bool)

(assert (= bs!389117 (and d!462771 d!462735)))

(assert (=> bs!389117 (= lambda!66097 lambda!66092)))

(declare-fun bs!389118 () Bool)

(assert (= bs!389118 (and d!462771 d!462649)))

(assert (=> bs!389118 (= lambda!66097 lambda!66085)))

(declare-fun bs!389119 () Bool)

(assert (= bs!389119 (and d!462771 d!462747)))

(assert (=> bs!389119 (= lambda!66097 lambda!66095)))

(declare-fun bs!389120 () Bool)

(assert (= bs!389120 (and d!462771 d!462699)))

(assert (=> bs!389120 (= lambda!66097 lambda!66089)))

(declare-fun bs!389121 () Bool)

(assert (= bs!389121 (and d!462771 d!462647)))

(assert (=> bs!389121 (= lambda!66097 lambda!66084)))

(declare-fun bs!389122 () Bool)

(assert (= bs!389122 (and d!462771 d!462737)))

(assert (=> bs!389122 (= lambda!66097 lambda!66093)))

(declare-fun bs!389123 () Bool)

(assert (= bs!389123 (and d!462771 d!462715)))

(assert (=> bs!389123 (= lambda!66097 lambda!66091)))

(declare-fun bs!389124 () Bool)

(assert (= bs!389124 (and d!462771 d!462641)))

(assert (=> bs!389124 (= lambda!66097 lambda!66082)))

(declare-fun bs!389125 () Bool)

(assert (= bs!389125 (and d!462771 d!462743)))

(assert (=> bs!389125 (= lambda!66097 lambda!66094)))

(declare-fun bs!389126 () Bool)

(assert (= bs!389126 (and d!462771 d!462653)))

(assert (=> bs!389126 (= lambda!66097 lambda!66086)))

(declare-fun bs!389127 () Bool)

(assert (= bs!389127 (and d!462771 d!462611)))

(assert (=> bs!389127 (= lambda!66097 lambda!66081)))

(declare-fun bs!389128 () Bool)

(assert (= bs!389128 (and d!462771 d!462597)))

(assert (=> bs!389128 (= lambda!66097 lambda!66074)))

(declare-fun bs!389129 () Bool)

(assert (= bs!389129 (and d!462771 d!462645)))

(assert (=> bs!389129 (= lambda!66097 lambda!66083)))

(declare-fun bs!389130 () Bool)

(assert (= bs!389130 (and d!462771 d!462675)))

(assert (=> bs!389130 (= lambda!66097 lambda!66087)))

(assert (=> d!462771 (= (inv!22268 setElem!11271) (forall!3929 (exprs!1317 setElem!11271) lambda!66097))))

(declare-fun bs!389131 () Bool)

(assert (= bs!389131 d!462771))

(declare-fun m!1834132 () Bool)

(assert (=> bs!389131 m!1834132))

(assert (=> setNonEmpty!11271 d!462771))

(declare-fun bs!389132 () Bool)

(declare-fun d!462773 () Bool)

(assert (= bs!389132 (and d!462773 d!462713)))

(declare-fun lambda!66098 () Int)

(assert (=> bs!389132 (= lambda!66098 lambda!66090)))

(declare-fun bs!389133 () Bool)

(assert (= bs!389133 (and d!462773 d!462691)))

(assert (=> bs!389133 (= lambda!66098 lambda!66088)))

(declare-fun bs!389134 () Bool)

(assert (= bs!389134 (and d!462773 d!462735)))

(assert (=> bs!389134 (= lambda!66098 lambda!66092)))

(declare-fun bs!389135 () Bool)

(assert (= bs!389135 (and d!462773 d!462649)))

(assert (=> bs!389135 (= lambda!66098 lambda!66085)))

(declare-fun bs!389136 () Bool)

(assert (= bs!389136 (and d!462773 d!462747)))

(assert (=> bs!389136 (= lambda!66098 lambda!66095)))

(declare-fun bs!389137 () Bool)

(assert (= bs!389137 (and d!462773 d!462699)))

(assert (=> bs!389137 (= lambda!66098 lambda!66089)))

(declare-fun bs!389138 () Bool)

(assert (= bs!389138 (and d!462773 d!462647)))

(assert (=> bs!389138 (= lambda!66098 lambda!66084)))

(declare-fun bs!389139 () Bool)

(assert (= bs!389139 (and d!462773 d!462737)))

(assert (=> bs!389139 (= lambda!66098 lambda!66093)))

(declare-fun bs!389140 () Bool)

(assert (= bs!389140 (and d!462773 d!462715)))

(assert (=> bs!389140 (= lambda!66098 lambda!66091)))

(declare-fun bs!389141 () Bool)

(assert (= bs!389141 (and d!462773 d!462641)))

(assert (=> bs!389141 (= lambda!66098 lambda!66082)))

(declare-fun bs!389142 () Bool)

(assert (= bs!389142 (and d!462773 d!462743)))

(assert (=> bs!389142 (= lambda!66098 lambda!66094)))

(declare-fun bs!389143 () Bool)

(assert (= bs!389143 (and d!462773 d!462653)))

(assert (=> bs!389143 (= lambda!66098 lambda!66086)))

(declare-fun bs!389144 () Bool)

(assert (= bs!389144 (and d!462773 d!462611)))

(assert (=> bs!389144 (= lambda!66098 lambda!66081)))

(declare-fun bs!389145 () Bool)

(assert (= bs!389145 (and d!462773 d!462597)))

(assert (=> bs!389145 (= lambda!66098 lambda!66074)))

(declare-fun bs!389146 () Bool)

(assert (= bs!389146 (and d!462773 d!462771)))

(assert (=> bs!389146 (= lambda!66098 lambda!66097)))

(declare-fun bs!389147 () Bool)

(assert (= bs!389147 (and d!462773 d!462645)))

(assert (=> bs!389147 (= lambda!66098 lambda!66083)))

(declare-fun bs!389148 () Bool)

(assert (= bs!389148 (and d!462773 d!462675)))

(assert (=> bs!389148 (= lambda!66098 lambda!66087)))

(assert (=> d!462773 (= (inv!22268 setElem!11257) (forall!3929 (exprs!1317 setElem!11257) lambda!66098))))

(declare-fun bs!389149 () Bool)

(assert (= bs!389149 d!462773))

(declare-fun m!1834134 () Bool)

(assert (=> bs!389149 m!1834134))

(assert (=> setNonEmpty!11257 d!462773))

(declare-fun d!462775 () Bool)

(declare-fun res!696663 () Bool)

(declare-fun e!1003551 () Bool)

(assert (=> d!462775 (=> (not res!696663) (not e!1003551))))

(declare-fun valid!1494 (MutableMap!1806) Bool)

(assert (=> d!462775 (= res!696663 (valid!1494 (cache!2187 (_3!1401 lt!541055))))))

(assert (=> d!462775 (= (validCacheMapDown!172 (cache!2187 (_3!1401 lt!541055))) e!1003551)))

(declare-fun b!1562692 () Bool)

(declare-fun res!696664 () Bool)

(assert (=> b!1562692 (=> (not res!696664) (not e!1003551))))

(declare-fun invariantList!252 (List!17023) Bool)

(declare-datatypes ((ListMap!553 0))(
  ( (ListMap!554 (toList!861 List!17023)) )
))
(declare-fun map!3539 (MutableMap!1806) ListMap!553)

(assert (=> b!1562692 (= res!696664 (invariantList!252 (toList!861 (map!3539 (cache!2187 (_3!1401 lt!541055))))))))

(declare-fun b!1562693 () Bool)

(declare-fun lambda!66101 () Int)

(declare-fun forall!3932 (List!17023 Int) Bool)

(assert (=> b!1562693 (= e!1003551 (forall!3932 (toList!861 (map!3539 (cache!2187 (_3!1401 lt!541055)))) lambda!66101))))

(assert (= (and d!462775 res!696663) b!1562692))

(assert (= (and b!1562692 res!696664) b!1562693))

(declare-fun m!1834137 () Bool)

(assert (=> d!462775 m!1834137))

(declare-fun m!1834139 () Bool)

(assert (=> b!1562692 m!1834139))

(declare-fun m!1834141 () Bool)

(assert (=> b!1562692 m!1834141))

(assert (=> b!1562693 m!1834139))

(declare-fun m!1834143 () Bool)

(assert (=> b!1562693 m!1834143))

(assert (=> d!462535 d!462775))

(declare-fun d!462777 () Bool)

(declare-fun res!696665 () Bool)

(declare-fun e!1003552 () Bool)

(assert (=> d!462777 (=> (not res!696665) (not e!1003552))))

(assert (=> d!462777 (= res!696665 (= (csize!11408 (c!253235 input!1676)) (+ (size!13764 (left!13749 (c!253235 input!1676))) (size!13764 (right!14079 (c!253235 input!1676))))))))

(assert (=> d!462777 (= (inv!22266 (c!253235 input!1676)) e!1003552)))

(declare-fun b!1562694 () Bool)

(declare-fun res!696666 () Bool)

(assert (=> b!1562694 (=> (not res!696666) (not e!1003552))))

(assert (=> b!1562694 (= res!696666 (and (not (= (left!13749 (c!253235 input!1676)) Empty!5589)) (not (= (right!14079 (c!253235 input!1676)) Empty!5589))))))

(declare-fun b!1562695 () Bool)

(declare-fun res!696667 () Bool)

(assert (=> b!1562695 (=> (not res!696667) (not e!1003552))))

(assert (=> b!1562695 (= res!696667 (= (cheight!5800 (c!253235 input!1676)) (+ (max!0 (height!830 (left!13749 (c!253235 input!1676))) (height!830 (right!14079 (c!253235 input!1676)))) 1)))))

(declare-fun b!1562696 () Bool)

(assert (=> b!1562696 (= e!1003552 (<= 0 (cheight!5800 (c!253235 input!1676))))))

(assert (= (and d!462777 res!696665) b!1562694))

(assert (= (and b!1562694 res!696666) b!1562695))

(assert (= (and b!1562695 res!696667) b!1562696))

(declare-fun m!1834145 () Bool)

(assert (=> d!462777 m!1834145))

(declare-fun m!1834147 () Bool)

(assert (=> d!462777 m!1834147))

(assert (=> b!1562695 m!1834110))

(assert (=> b!1562695 m!1834112))

(assert (=> b!1562695 m!1834110))

(assert (=> b!1562695 m!1834112))

(declare-fun m!1834149 () Bool)

(assert (=> b!1562695 m!1834149))

(assert (=> b!1562194 d!462777))

(declare-fun bs!389150 () Bool)

(declare-fun d!462779 () Bool)

(assert (= bs!389150 (and d!462779 d!462713)))

(declare-fun lambda!66102 () Int)

(assert (=> bs!389150 (= lambda!66102 lambda!66090)))

(declare-fun bs!389151 () Bool)

(assert (= bs!389151 (and d!462779 d!462691)))

(assert (=> bs!389151 (= lambda!66102 lambda!66088)))

(declare-fun bs!389152 () Bool)

(assert (= bs!389152 (and d!462779 d!462773)))

(assert (=> bs!389152 (= lambda!66102 lambda!66098)))

(declare-fun bs!389153 () Bool)

(assert (= bs!389153 (and d!462779 d!462735)))

(assert (=> bs!389153 (= lambda!66102 lambda!66092)))

(declare-fun bs!389154 () Bool)

(assert (= bs!389154 (and d!462779 d!462649)))

(assert (=> bs!389154 (= lambda!66102 lambda!66085)))

(declare-fun bs!389155 () Bool)

(assert (= bs!389155 (and d!462779 d!462747)))

(assert (=> bs!389155 (= lambda!66102 lambda!66095)))

(declare-fun bs!389156 () Bool)

(assert (= bs!389156 (and d!462779 d!462699)))

(assert (=> bs!389156 (= lambda!66102 lambda!66089)))

(declare-fun bs!389157 () Bool)

(assert (= bs!389157 (and d!462779 d!462647)))

(assert (=> bs!389157 (= lambda!66102 lambda!66084)))

(declare-fun bs!389158 () Bool)

(assert (= bs!389158 (and d!462779 d!462737)))

(assert (=> bs!389158 (= lambda!66102 lambda!66093)))

(declare-fun bs!389159 () Bool)

(assert (= bs!389159 (and d!462779 d!462715)))

(assert (=> bs!389159 (= lambda!66102 lambda!66091)))

(declare-fun bs!389160 () Bool)

(assert (= bs!389160 (and d!462779 d!462641)))

(assert (=> bs!389160 (= lambda!66102 lambda!66082)))

(declare-fun bs!389161 () Bool)

(assert (= bs!389161 (and d!462779 d!462743)))

(assert (=> bs!389161 (= lambda!66102 lambda!66094)))

(declare-fun bs!389162 () Bool)

(assert (= bs!389162 (and d!462779 d!462653)))

(assert (=> bs!389162 (= lambda!66102 lambda!66086)))

(declare-fun bs!389163 () Bool)

(assert (= bs!389163 (and d!462779 d!462611)))

(assert (=> bs!389163 (= lambda!66102 lambda!66081)))

(declare-fun bs!389164 () Bool)

(assert (= bs!389164 (and d!462779 d!462597)))

(assert (=> bs!389164 (= lambda!66102 lambda!66074)))

(declare-fun bs!389165 () Bool)

(assert (= bs!389165 (and d!462779 d!462771)))

(assert (=> bs!389165 (= lambda!66102 lambda!66097)))

(declare-fun bs!389166 () Bool)

(assert (= bs!389166 (and d!462779 d!462645)))

(assert (=> bs!389166 (= lambda!66102 lambda!66083)))

(declare-fun bs!389167 () Bool)

(assert (= bs!389167 (and d!462779 d!462675)))

(assert (=> bs!389167 (= lambda!66102 lambda!66087)))

(assert (=> d!462779 (= (inv!22268 setElem!11266) (forall!3929 (exprs!1317 setElem!11266) lambda!66102))))

(declare-fun bs!389168 () Bool)

(assert (= bs!389168 d!462779))

(declare-fun m!1834151 () Bool)

(assert (=> bs!389168 m!1834151))

(assert (=> setNonEmpty!11266 d!462779))

(declare-fun bs!389169 () Bool)

(declare-fun d!462781 () Bool)

(assert (= bs!389169 (and d!462781 d!462713)))

(declare-fun lambda!66103 () Int)

(assert (=> bs!389169 (= lambda!66103 lambda!66090)))

(declare-fun bs!389170 () Bool)

(assert (= bs!389170 (and d!462781 d!462779)))

(assert (=> bs!389170 (= lambda!66103 lambda!66102)))

(declare-fun bs!389171 () Bool)

(assert (= bs!389171 (and d!462781 d!462691)))

(assert (=> bs!389171 (= lambda!66103 lambda!66088)))

(declare-fun bs!389172 () Bool)

(assert (= bs!389172 (and d!462781 d!462773)))

(assert (=> bs!389172 (= lambda!66103 lambda!66098)))

(declare-fun bs!389173 () Bool)

(assert (= bs!389173 (and d!462781 d!462735)))

(assert (=> bs!389173 (= lambda!66103 lambda!66092)))

(declare-fun bs!389174 () Bool)

(assert (= bs!389174 (and d!462781 d!462649)))

(assert (=> bs!389174 (= lambda!66103 lambda!66085)))

(declare-fun bs!389175 () Bool)

(assert (= bs!389175 (and d!462781 d!462747)))

(assert (=> bs!389175 (= lambda!66103 lambda!66095)))

(declare-fun bs!389176 () Bool)

(assert (= bs!389176 (and d!462781 d!462699)))

(assert (=> bs!389176 (= lambda!66103 lambda!66089)))

(declare-fun bs!389177 () Bool)

(assert (= bs!389177 (and d!462781 d!462647)))

(assert (=> bs!389177 (= lambda!66103 lambda!66084)))

(declare-fun bs!389178 () Bool)

(assert (= bs!389178 (and d!462781 d!462737)))

(assert (=> bs!389178 (= lambda!66103 lambda!66093)))

(declare-fun bs!389179 () Bool)

(assert (= bs!389179 (and d!462781 d!462715)))

(assert (=> bs!389179 (= lambda!66103 lambda!66091)))

(declare-fun bs!389180 () Bool)

(assert (= bs!389180 (and d!462781 d!462641)))

(assert (=> bs!389180 (= lambda!66103 lambda!66082)))

(declare-fun bs!389181 () Bool)

(assert (= bs!389181 (and d!462781 d!462743)))

(assert (=> bs!389181 (= lambda!66103 lambda!66094)))

(declare-fun bs!389182 () Bool)

(assert (= bs!389182 (and d!462781 d!462653)))

(assert (=> bs!389182 (= lambda!66103 lambda!66086)))

(declare-fun bs!389183 () Bool)

(assert (= bs!389183 (and d!462781 d!462611)))

(assert (=> bs!389183 (= lambda!66103 lambda!66081)))

(declare-fun bs!389184 () Bool)

(assert (= bs!389184 (and d!462781 d!462597)))

(assert (=> bs!389184 (= lambda!66103 lambda!66074)))

(declare-fun bs!389185 () Bool)

(assert (= bs!389185 (and d!462781 d!462771)))

(assert (=> bs!389185 (= lambda!66103 lambda!66097)))

(declare-fun bs!389186 () Bool)

(assert (= bs!389186 (and d!462781 d!462645)))

(assert (=> bs!389186 (= lambda!66103 lambda!66083)))

(declare-fun bs!389187 () Bool)

(assert (= bs!389187 (and d!462781 d!462675)))

(assert (=> bs!389187 (= lambda!66103 lambda!66087)))

(assert (=> d!462781 (= (inv!22268 setElem!11262) (forall!3929 (exprs!1317 setElem!11262) lambda!66103))))

(declare-fun bs!389188 () Bool)

(assert (= bs!389188 d!462781))

(declare-fun m!1834153 () Bool)

(assert (=> bs!389188 m!1834153))

(assert (=> setNonEmpty!11262 d!462781))

(declare-fun b!1562717 () Bool)

(declare-fun e!1003565 () Regex!4299)

(declare-fun call!102338 () Regex!4299)

(assert (=> b!1562717 (= e!1003565 (Union!4299 (Concat!7361 call!102338 (regTwo!9110 (regex!2971 rule!240))) EmptyLang!4299))))

(declare-fun b!1562718 () Bool)

(declare-fun e!1003563 () Regex!4299)

(assert (=> b!1562718 (= e!1003563 EmptyLang!4299)))

(declare-fun b!1562719 () Bool)

(declare-fun e!1003567 () Regex!4299)

(declare-fun e!1003566 () Regex!4299)

(assert (=> b!1562719 (= e!1003567 e!1003566)))

(declare-fun c!253344 () Bool)

(assert (=> b!1562719 (= c!253344 ((_ is Star!4299) (regex!2971 rule!240)))))

(declare-fun d!462783 () Bool)

(declare-fun lt!541279 () Regex!4299)

(assert (=> d!462783 (validRegex!1722 lt!541279)))

(assert (=> d!462783 (= lt!541279 e!1003563)))

(declare-fun c!253345 () Bool)

(assert (=> d!462783 (= c!253345 (or ((_ is EmptyExpr!4299) (regex!2971 rule!240)) ((_ is EmptyLang!4299) (regex!2971 rule!240))))))

(assert (=> d!462783 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462783 (= (derivativeStep!1032 (regex!2971 rule!240) call!102313) lt!541279)))

(declare-fun bm!102333 () Bool)

(declare-fun call!102339 () Regex!4299)

(assert (=> bm!102333 (= call!102338 call!102339)))

(declare-fun b!1562720 () Bool)

(declare-fun call!102341 () Regex!4299)

(declare-fun call!102340 () Regex!4299)

(assert (=> b!1562720 (= e!1003567 (Union!4299 call!102341 call!102340))))

(declare-fun bm!102334 () Bool)

(declare-fun c!253346 () Bool)

(assert (=> bm!102334 (= call!102340 (derivativeStep!1032 (ite c!253346 (regTwo!9111 (regex!2971 rule!240)) (regTwo!9110 (regex!2971 rule!240))) call!102313))))

(declare-fun b!1562721 () Bool)

(assert (=> b!1562721 (= e!1003565 (Union!4299 (Concat!7361 call!102338 (regTwo!9110 (regex!2971 rule!240))) call!102340))))

(declare-fun bm!102335 () Bool)

(assert (=> bm!102335 (= call!102339 call!102341)))

(declare-fun b!1562722 () Bool)

(declare-fun c!253342 () Bool)

(assert (=> b!1562722 (= c!253342 (nullable!1281 (regOne!9110 (regex!2971 rule!240))))))

(assert (=> b!1562722 (= e!1003566 e!1003565)))

(declare-fun b!1562723 () Bool)

(declare-fun e!1003564 () Regex!4299)

(assert (=> b!1562723 (= e!1003564 (ite (= call!102313 (c!253236 (regex!2971 rule!240))) EmptyExpr!4299 EmptyLang!4299))))

(declare-fun b!1562724 () Bool)

(assert (=> b!1562724 (= c!253346 ((_ is Union!4299) (regex!2971 rule!240)))))

(assert (=> b!1562724 (= e!1003564 e!1003567)))

(declare-fun b!1562725 () Bool)

(assert (=> b!1562725 (= e!1003566 (Concat!7361 call!102339 (regex!2971 rule!240)))))

(declare-fun b!1562726 () Bool)

(assert (=> b!1562726 (= e!1003563 e!1003564)))

(declare-fun c!253343 () Bool)

(assert (=> b!1562726 (= c!253343 ((_ is ElementMatch!4299) (regex!2971 rule!240)))))

(declare-fun bm!102336 () Bool)

(assert (=> bm!102336 (= call!102341 (derivativeStep!1032 (ite c!253346 (regOne!9111 (regex!2971 rule!240)) (ite c!253344 (reg!4628 (regex!2971 rule!240)) (regOne!9110 (regex!2971 rule!240)))) call!102313))))

(assert (= (and d!462783 c!253345) b!1562718))

(assert (= (and d!462783 (not c!253345)) b!1562726))

(assert (= (and b!1562726 c!253343) b!1562723))

(assert (= (and b!1562726 (not c!253343)) b!1562724))

(assert (= (and b!1562724 c!253346) b!1562720))

(assert (= (and b!1562724 (not c!253346)) b!1562719))

(assert (= (and b!1562719 c!253344) b!1562725))

(assert (= (and b!1562719 (not c!253344)) b!1562722))

(assert (= (and b!1562722 c!253342) b!1562721))

(assert (= (and b!1562722 (not c!253342)) b!1562717))

(assert (= (or b!1562721 b!1562717) bm!102333))

(assert (= (or b!1562725 bm!102333) bm!102335))

(assert (= (or b!1562720 bm!102335) bm!102336))

(assert (= (or b!1562720 b!1562721) bm!102334))

(declare-fun m!1834155 () Bool)

(assert (=> d!462783 m!1834155))

(assert (=> d!462783 m!1833434))

(declare-fun m!1834157 () Bool)

(assert (=> bm!102334 m!1834157))

(declare-fun m!1834159 () Bool)

(assert (=> b!1562722 m!1834159))

(declare-fun m!1834161 () Bool)

(assert (=> bm!102336 m!1834161))

(assert (=> bm!102306 d!462783))

(declare-fun bs!389189 () Bool)

(declare-fun d!462785 () Bool)

(assert (= bs!389189 (and d!462785 b!1561979)))

(declare-fun lambda!66106 () Int)

(assert (=> bs!389189 (= lambda!66106 lambda!66068)))

(assert (=> d!462785 true))

(assert (=> d!462785 (< (dynLambda!7558 order!10049 (toChars!4211 (transformation!2971 rule!240))) (dynLambda!7557 order!10047 lambda!66106))))

(assert (=> d!462785 true))

(assert (=> d!462785 (< (dynLambda!7556 order!10045 (toValue!4352 (transformation!2971 rule!240))) (dynLambda!7557 order!10047 lambda!66106))))

(assert (=> d!462785 (= (semiInverseModEq!1126 (toChars!4211 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))) (Forall!621 lambda!66106))))

(declare-fun bs!389190 () Bool)

(assert (= bs!389190 d!462785))

(declare-fun m!1834163 () Bool)

(assert (=> bs!389190 m!1834163))

(assert (=> d!462531 d!462785))

(declare-fun b!1562731 () Bool)

(declare-fun e!1003575 () Unit!26158)

(declare-fun Unit!26164 () Unit!26158)

(assert (=> b!1562731 (= e!1003575 Unit!26164)))

(declare-fun lt!541288 () Unit!26158)

(declare-fun call!102343 () Unit!26158)

(assert (=> b!1562731 (= lt!541288 call!102343)))

(declare-fun call!102348 () Bool)

(assert (=> b!1562731 call!102348))

(declare-fun lt!541300 () Unit!26158)

(assert (=> b!1562731 (= lt!541300 lt!541288)))

(declare-fun lt!541297 () Unit!26158)

(declare-fun call!102342 () Unit!26158)

(assert (=> b!1562731 (= lt!541297 call!102342)))

(assert (=> b!1562731 (= lt!541046 lt!541153)))

(declare-fun lt!541294 () Unit!26158)

(assert (=> b!1562731 (= lt!541294 lt!541297)))

(assert (=> b!1562731 false))

(declare-fun b!1562732 () Bool)

(declare-fun e!1003570 () Bool)

(declare-fun e!1003571 () Bool)

(assert (=> b!1562732 (= e!1003570 e!1003571)))

(declare-fun res!696668 () Bool)

(assert (=> b!1562732 (=> res!696668 e!1003571)))

(declare-fun lt!541304 () tuple2!16586)

(assert (=> b!1562732 (= res!696668 (isEmpty!10171 (_1!9695 lt!541304)))))

(declare-fun b!1562733 () Bool)

(declare-fun e!1003573 () tuple2!16586)

(declare-fun lt!541284 () tuple2!16586)

(assert (=> b!1562733 (= e!1003573 lt!541284)))

(declare-fun bm!102337 () Bool)

(assert (=> bm!102337 (= call!102343 (lemmaIsPrefixRefl!900 lt!541046 lt!541046))))

(declare-fun b!1562734 () Bool)

(declare-fun e!1003574 () tuple2!16586)

(assert (=> b!1562734 (= e!1003574 (tuple2!16587 lt!541153 Nil!16951))))

(declare-fun bm!102338 () Bool)

(declare-fun call!102344 () Bool)

(assert (=> bm!102338 (= call!102344 (nullable!1281 call!102312))))

(declare-fun b!1562735 () Bool)

(declare-fun e!1003568 () tuple2!16586)

(assert (=> b!1562735 (= e!1003568 e!1003573)))

(declare-fun call!102345 () tuple2!16586)

(assert (=> b!1562735 (= lt!541284 call!102345)))

(declare-fun c!253348 () Bool)

(assert (=> b!1562735 (= c!253348 (isEmpty!10171 (_1!9695 lt!541284)))))

(declare-fun d!462787 () Bool)

(assert (=> d!462787 e!1003570))

(declare-fun res!696669 () Bool)

(assert (=> d!462787 (=> (not res!696669) (not e!1003570))))

(assert (=> d!462787 (= res!696669 (= (++!4424 (_1!9695 lt!541304) (_2!9695 lt!541304)) lt!541046))))

(declare-fun e!1003572 () tuple2!16586)

(assert (=> d!462787 (= lt!541304 e!1003572)))

(declare-fun c!253349 () Bool)

(assert (=> d!462787 (= c!253349 (lostCause!398 call!102312))))

(declare-fun lt!541286 () Unit!26158)

(declare-fun Unit!26165 () Unit!26158)

(assert (=> d!462787 (= lt!541286 Unit!26165)))

(assert (=> d!462787 (= (getSuffix!680 lt!541046 lt!541153) call!102315)))

(declare-fun lt!541302 () Unit!26158)

(declare-fun lt!541296 () Unit!26158)

(assert (=> d!462787 (= lt!541302 lt!541296)))

(declare-fun lt!541290 () List!17019)

(assert (=> d!462787 (= call!102315 lt!541290)))

(assert (=> d!462787 (= lt!541296 (lemmaSamePrefixThenSameSuffix!632 lt!541153 call!102315 lt!541153 lt!541290 lt!541046))))

(assert (=> d!462787 (= lt!541290 (getSuffix!680 lt!541046 lt!541153))))

(declare-fun lt!541281 () Unit!26158)

(declare-fun lt!541285 () Unit!26158)

(assert (=> d!462787 (= lt!541281 lt!541285)))

(assert (=> d!462787 (isPrefix!1270 lt!541153 (++!4424 lt!541153 call!102315))))

(assert (=> d!462787 (= lt!541285 (lemmaConcatTwoListThenFirstIsPrefix!795 lt!541153 call!102315))))

(assert (=> d!462787 (validRegex!1722 call!102312)))

(assert (=> d!462787 (= (findLongestMatchInner!345 call!102312 lt!541153 (+ (size!13762 Nil!16951) 1) call!102315 lt!541046 (size!13762 lt!541046)) lt!541304)))

(declare-fun b!1562736 () Bool)

(assert (=> b!1562736 (= e!1003572 (tuple2!16587 Nil!16951 lt!541046))))

(declare-fun call!102349 () List!17019)

(declare-fun call!102346 () Regex!4299)

(declare-fun lt!541292 () List!17019)

(declare-fun bm!102339 () Bool)

(assert (=> bm!102339 (= call!102345 (findLongestMatchInner!345 call!102346 lt!541292 (+ (size!13762 Nil!16951) 1 1) call!102349 lt!541046 (size!13762 lt!541046)))))

(declare-fun b!1562737 () Bool)

(assert (=> b!1562737 (= e!1003568 call!102345)))

(declare-fun b!1562738 () Bool)

(declare-fun c!253350 () Bool)

(assert (=> b!1562738 (= c!253350 call!102344)))

(declare-fun lt!541303 () Unit!26158)

(declare-fun lt!541299 () Unit!26158)

(assert (=> b!1562738 (= lt!541303 lt!541299)))

(declare-fun lt!541289 () C!8776)

(declare-fun lt!541301 () List!17019)

(assert (=> b!1562738 (= (++!4424 (++!4424 lt!541153 (Cons!16951 lt!541289 Nil!16951)) lt!541301) lt!541046)))

(assert (=> b!1562738 (= lt!541299 (lemmaMoveElementToOtherListKeepsConcatEq!449 lt!541153 lt!541289 lt!541301 lt!541046))))

(assert (=> b!1562738 (= lt!541301 (tail!2218 call!102315))))

(assert (=> b!1562738 (= lt!541289 (head!3123 call!102315))))

(declare-fun lt!541283 () Unit!26158)

(declare-fun lt!541291 () Unit!26158)

(assert (=> b!1562738 (= lt!541283 lt!541291)))

(assert (=> b!1562738 (isPrefix!1270 (++!4424 lt!541153 (Cons!16951 (head!3123 (getSuffix!680 lt!541046 lt!541153)) Nil!16951)) lt!541046)))

(assert (=> b!1562738 (= lt!541291 (lemmaAddHeadSuffixToPrefixStillPrefix!123 lt!541153 lt!541046))))

(declare-fun lt!541306 () Unit!26158)

(declare-fun lt!541293 () Unit!26158)

(assert (=> b!1562738 (= lt!541306 lt!541293)))

(assert (=> b!1562738 (= lt!541293 (lemmaAddHeadSuffixToPrefixStillPrefix!123 lt!541153 lt!541046))))

(assert (=> b!1562738 (= lt!541292 (++!4424 lt!541153 (Cons!16951 (head!3123 call!102315) Nil!16951)))))

(declare-fun lt!541287 () Unit!26158)

(assert (=> b!1562738 (= lt!541287 e!1003575)))

(declare-fun c!253352 () Bool)

(assert (=> b!1562738 (= c!253352 (= (size!13762 lt!541153) (size!13762 lt!541046)))))

(declare-fun lt!541295 () Unit!26158)

(declare-fun lt!541305 () Unit!26158)

(assert (=> b!1562738 (= lt!541295 lt!541305)))

(assert (=> b!1562738 (<= (size!13762 lt!541153) (size!13762 lt!541046))))

(assert (=> b!1562738 (= lt!541305 (lemmaIsPrefixThenSmallerEqSize!124 lt!541153 lt!541046))))

(declare-fun e!1003569 () tuple2!16586)

(assert (=> b!1562738 (= e!1003569 e!1003568)))

(declare-fun b!1562739 () Bool)

(declare-fun c!253347 () Bool)

(assert (=> b!1562739 (= c!253347 call!102344)))

(declare-fun lt!541280 () Unit!26158)

(declare-fun lt!541282 () Unit!26158)

(assert (=> b!1562739 (= lt!541280 lt!541282)))

(assert (=> b!1562739 (= lt!541046 lt!541153)))

(assert (=> b!1562739 (= lt!541282 call!102342)))

(declare-fun lt!541307 () Unit!26158)

(declare-fun lt!541298 () Unit!26158)

(assert (=> b!1562739 (= lt!541307 lt!541298)))

(assert (=> b!1562739 call!102348))

(assert (=> b!1562739 (= lt!541298 call!102343)))

(assert (=> b!1562739 (= e!1003569 e!1003574)))

(declare-fun bm!102340 () Bool)

(declare-fun call!102347 () C!8776)

(assert (=> bm!102340 (= call!102346 (derivativeStep!1032 call!102312 call!102347))))

(declare-fun b!1562740 () Bool)

(declare-fun Unit!26166 () Unit!26158)

(assert (=> b!1562740 (= e!1003575 Unit!26166)))

(declare-fun b!1562741 () Bool)

(assert (=> b!1562741 (= e!1003571 (>= (size!13762 (_1!9695 lt!541304)) (size!13762 lt!541153)))))

(declare-fun bm!102341 () Bool)

(assert (=> bm!102341 (= call!102349 (tail!2218 call!102315))))

(declare-fun bm!102342 () Bool)

(assert (=> bm!102342 (= call!102348 (isPrefix!1270 lt!541046 lt!541046))))

(declare-fun b!1562742 () Bool)

(assert (=> b!1562742 (= e!1003573 (tuple2!16587 lt!541153 call!102315))))

(declare-fun bm!102343 () Bool)

(assert (=> bm!102343 (= call!102342 (lemmaIsPrefixSameLengthThenSameList!134 lt!541046 lt!541153 lt!541046))))

(declare-fun b!1562743 () Bool)

(assert (=> b!1562743 (= e!1003574 (tuple2!16587 Nil!16951 lt!541046))))

(declare-fun b!1562744 () Bool)

(assert (=> b!1562744 (= e!1003572 e!1003569)))

(declare-fun c!253351 () Bool)

(assert (=> b!1562744 (= c!253351 (= (+ (size!13762 Nil!16951) 1) (size!13762 lt!541046)))))

(declare-fun bm!102344 () Bool)

(assert (=> bm!102344 (= call!102347 (head!3123 call!102315))))

(assert (= (and d!462787 c!253349) b!1562736))

(assert (= (and d!462787 (not c!253349)) b!1562744))

(assert (= (and b!1562744 c!253351) b!1562739))

(assert (= (and b!1562744 (not c!253351)) b!1562738))

(assert (= (and b!1562739 c!253347) b!1562734))

(assert (= (and b!1562739 (not c!253347)) b!1562743))

(assert (= (and b!1562738 c!253352) b!1562731))

(assert (= (and b!1562738 (not c!253352)) b!1562740))

(assert (= (and b!1562738 c!253350) b!1562735))

(assert (= (and b!1562738 (not c!253350)) b!1562737))

(assert (= (and b!1562735 c!253348) b!1562742))

(assert (= (and b!1562735 (not c!253348)) b!1562733))

(assert (= (or b!1562735 b!1562737) bm!102341))

(assert (= (or b!1562735 b!1562737) bm!102344))

(assert (= (or b!1562735 b!1562737) bm!102340))

(assert (= (or b!1562735 b!1562737) bm!102339))

(assert (= (or b!1562739 b!1562731) bm!102343))

(assert (= (or b!1562739 b!1562731) bm!102337))

(assert (= (or b!1562739 b!1562738) bm!102338))

(assert (= (or b!1562739 b!1562731) bm!102342))

(assert (= (and d!462787 res!696669) b!1562732))

(assert (= (and b!1562732 (not res!696668)) b!1562741))

(declare-fun m!1834165 () Bool)

(assert (=> bm!102343 m!1834165))

(declare-fun m!1834167 () Bool)

(assert (=> bm!102340 m!1834167))

(declare-fun m!1834169 () Bool)

(assert (=> bm!102344 m!1834169))

(declare-fun m!1834171 () Bool)

(assert (=> bm!102341 m!1834171))

(declare-fun m!1834173 () Bool)

(assert (=> b!1562738 m!1834173))

(declare-fun m!1834175 () Bool)

(assert (=> b!1562738 m!1834175))

(declare-fun m!1834177 () Bool)

(assert (=> b!1562738 m!1834177))

(declare-fun m!1834179 () Bool)

(assert (=> b!1562738 m!1834179))

(assert (=> b!1562738 m!1834179))

(declare-fun m!1834181 () Bool)

(assert (=> b!1562738 m!1834181))

(declare-fun m!1834183 () Bool)

(assert (=> b!1562738 m!1834183))

(assert (=> b!1562738 m!1834171))

(declare-fun m!1834185 () Bool)

(assert (=> b!1562738 m!1834185))

(assert (=> b!1562738 m!1834185))

(declare-fun m!1834187 () Bool)

(assert (=> b!1562738 m!1834187))

(assert (=> b!1562738 m!1834169))

(assert (=> b!1562738 m!1834175))

(declare-fun m!1834189 () Bool)

(assert (=> b!1562738 m!1834189))

(declare-fun m!1834191 () Bool)

(assert (=> b!1562738 m!1834191))

(assert (=> b!1562738 m!1833384))

(declare-fun m!1834193 () Bool)

(assert (=> b!1562738 m!1834193))

(declare-fun m!1834195 () Bool)

(assert (=> d!462787 m!1834195))

(declare-fun m!1834197 () Bool)

(assert (=> d!462787 m!1834197))

(declare-fun m!1834199 () Bool)

(assert (=> d!462787 m!1834199))

(assert (=> d!462787 m!1834185))

(declare-fun m!1834201 () Bool)

(assert (=> d!462787 m!1834201))

(declare-fun m!1834203 () Bool)

(assert (=> d!462787 m!1834203))

(declare-fun m!1834205 () Bool)

(assert (=> d!462787 m!1834205))

(assert (=> d!462787 m!1834203))

(declare-fun m!1834207 () Bool)

(assert (=> d!462787 m!1834207))

(assert (=> bm!102339 m!1833384))

(declare-fun m!1834209 () Bool)

(assert (=> bm!102339 m!1834209))

(declare-fun m!1834211 () Bool)

(assert (=> bm!102338 m!1834211))

(declare-fun m!1834213 () Bool)

(assert (=> b!1562732 m!1834213))

(assert (=> bm!102337 m!1833556))

(declare-fun m!1834215 () Bool)

(assert (=> b!1562735 m!1834215))

(declare-fun m!1834217 () Bool)

(assert (=> b!1562741 m!1834217))

(assert (=> b!1562741 m!1834173))

(assert (=> bm!102342 m!1833562))

(assert (=> bm!102305 d!462787))

(assert (=> b!1562205 d!462755))

(declare-fun d!462789 () Bool)

(declare-fun dynLambda!7563 (Int BalanceConc!11120 BalanceConc!11120) Bool)

(assert (=> d!462789 (dynLambda!7563 lambda!66071 (_1!9693 (_1!9694 lt!541055)) lt!541056)))

(declare-fun lt!541310 () Unit!26158)

(declare-fun choose!9332 (Int BalanceConc!11120 BalanceConc!11120) Unit!26158)

(assert (=> d!462789 (= lt!541310 (choose!9332 lambda!66071 (_1!9693 (_1!9694 lt!541055)) lt!541056))))

(declare-fun Forall2!491 (Int) Bool)

(assert (=> d!462789 (Forall2!491 lambda!66071)))

(assert (=> d!462789 (= (Forall2of!50 lambda!66071 (_1!9693 (_1!9694 lt!541055)) lt!541056) lt!541310)))

(declare-fun b_lambda!49181 () Bool)

(assert (=> (not b_lambda!49181) (not d!462789)))

(declare-fun bs!389191 () Bool)

(assert (= bs!389191 d!462789))

(declare-fun m!1834219 () Bool)

(assert (=> bs!389191 m!1834219))

(declare-fun m!1834221 () Bool)

(assert (=> bs!389191 m!1834221))

(declare-fun m!1834223 () Bool)

(assert (=> bs!389191 m!1834223))

(assert (=> d!462523 d!462789))

(assert (=> d!462523 d!462527))

(assert (=> d!462523 d!462705))

(declare-fun d!462791 () Bool)

(assert (=> d!462791 (= (isEmpty!10172 lt!541186) (not ((_ is Some!3063) lt!541186)))))

(assert (=> d!462547 d!462791))

(declare-fun d!462793 () Bool)

(assert (=> d!462793 (= (isEmpty!10171 (_1!9695 lt!541185)) ((_ is Nil!16951) (_1!9695 lt!541185)))))

(assert (=> d!462547 d!462793))

(declare-fun d!462795 () Bool)

(declare-fun lt!541315 () tuple2!16586)

(assert (=> d!462795 (= (++!4424 (_1!9695 lt!541315) (_2!9695 lt!541315)) lt!541046)))

(assert (=> d!462795 (= lt!541315 (findLongestMatchInner!345 (regex!2971 rule!240) Nil!16951 0 lt!541046 lt!541046 (sizeTr!52 lt!541046 0)))))

(declare-fun lt!541311 () Unit!26158)

(declare-fun lt!541314 () Unit!26158)

(assert (=> d!462795 (= lt!541311 lt!541314)))

(declare-fun lt!541316 () List!17019)

(declare-fun lt!541313 () Int)

(assert (=> d!462795 (= (sizeTr!52 lt!541316 lt!541313) (+ (size!13762 lt!541316) lt!541313))))

(assert (=> d!462795 (= lt!541314 (lemmaSizeTrEqualsSize!52 lt!541316 lt!541313))))

(assert (=> d!462795 (= lt!541313 0)))

(assert (=> d!462795 (= lt!541316 Nil!16951)))

(declare-fun lt!541317 () Unit!26158)

(declare-fun lt!541312 () Unit!26158)

(assert (=> d!462795 (= lt!541317 lt!541312)))

(declare-fun lt!541318 () Int)

(assert (=> d!462795 (= (sizeTr!52 lt!541046 lt!541318) (+ (size!13762 lt!541046) lt!541318))))

(assert (=> d!462795 (= lt!541312 (lemmaSizeTrEqualsSize!52 lt!541046 lt!541318))))

(assert (=> d!462795 (= lt!541318 0)))

(assert (=> d!462795 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462795 (= (findLongestMatch!272 (regex!2971 rule!240) lt!541046) lt!541315)))

(declare-fun bs!389192 () Bool)

(assert (= bs!389192 d!462795))

(declare-fun m!1834225 () Bool)

(assert (=> bs!389192 m!1834225))

(assert (=> bs!389192 m!1834225))

(declare-fun m!1834227 () Bool)

(assert (=> bs!389192 m!1834227))

(declare-fun m!1834229 () Bool)

(assert (=> bs!389192 m!1834229))

(assert (=> bs!389192 m!1833434))

(declare-fun m!1834231 () Bool)

(assert (=> bs!389192 m!1834231))

(declare-fun m!1834233 () Bool)

(assert (=> bs!389192 m!1834233))

(declare-fun m!1834235 () Bool)

(assert (=> bs!389192 m!1834235))

(assert (=> bs!389192 m!1833384))

(declare-fun m!1834237 () Bool)

(assert (=> bs!389192 m!1834237))

(declare-fun m!1834239 () Bool)

(assert (=> bs!389192 m!1834239))

(assert (=> d!462547 d!462795))

(assert (=> d!462547 d!462489))

(declare-fun d!462797 () Bool)

(assert (=> d!462797 (= (inv!22269 (xs!8389 (c!253235 totalInput!568))) (<= (size!13762 (innerList!5649 (xs!8389 (c!253235 totalInput!568)))) 2147483647))))

(declare-fun bs!389193 () Bool)

(assert (= bs!389193 d!462797))

(declare-fun m!1834241 () Bool)

(assert (=> bs!389193 m!1834241))

(assert (=> b!1562251 d!462797))

(assert (=> d!462505 d!462609))

(declare-fun b!1562746 () Bool)

(declare-fun e!1003582 () Bool)

(assert (=> b!1562746 (= e!1003582 (nullable!1281 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045)))))))

(declare-fun d!462799 () Bool)

(declare-fun e!1003581 () Bool)

(assert (=> d!462799 e!1003581))

(declare-fun c!253355 () Bool)

(assert (=> d!462799 (= c!253355 ((_ is EmptyExpr!4299) (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045)))))))

(declare-fun lt!541319 () Bool)

(assert (=> d!462799 (= lt!541319 e!1003582)))

(declare-fun c!253353 () Bool)

(assert (=> d!462799 (= c!253353 (isEmpty!10171 (tail!2218 (_1!9695 lt!541045))))))

(assert (=> d!462799 (validRegex!1722 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045))))))

(assert (=> d!462799 (= (matchR!1891 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045))) (tail!2218 (_1!9695 lt!541045))) lt!541319)))

(declare-fun b!1562747 () Bool)

(declare-fun e!1003580 () Bool)

(assert (=> b!1562747 (= e!1003580 (not lt!541319))))

(declare-fun b!1562748 () Bool)

(assert (=> b!1562748 (= e!1003582 (matchR!1891 (derivativeStep!1032 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045))) (head!3123 (tail!2218 (_1!9695 lt!541045)))) (tail!2218 (tail!2218 (_1!9695 lt!541045)))))))

(declare-fun b!1562749 () Bool)

(declare-fun e!1003579 () Bool)

(assert (=> b!1562749 (= e!1003579 (= (head!3123 (tail!2218 (_1!9695 lt!541045))) (c!253236 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045))))))))

(declare-fun b!1562750 () Bool)

(declare-fun res!696671 () Bool)

(assert (=> b!1562750 (=> (not res!696671) (not e!1003579))))

(assert (=> b!1562750 (= res!696671 (isEmpty!10171 (tail!2218 (tail!2218 (_1!9695 lt!541045)))))))

(declare-fun b!1562751 () Bool)

(declare-fun res!696670 () Bool)

(declare-fun e!1003578 () Bool)

(assert (=> b!1562751 (=> res!696670 e!1003578)))

(assert (=> b!1562751 (= res!696670 e!1003579)))

(declare-fun res!696672 () Bool)

(assert (=> b!1562751 (=> (not res!696672) (not e!1003579))))

(assert (=> b!1562751 (= res!696672 lt!541319)))

(declare-fun b!1562752 () Bool)

(declare-fun call!102350 () Bool)

(assert (=> b!1562752 (= e!1003581 (= lt!541319 call!102350))))

(declare-fun b!1562753 () Bool)

(declare-fun e!1003577 () Bool)

(declare-fun e!1003576 () Bool)

(assert (=> b!1562753 (= e!1003577 e!1003576)))

(declare-fun res!696675 () Bool)

(assert (=> b!1562753 (=> res!696675 e!1003576)))

(assert (=> b!1562753 (= res!696675 call!102350)))

(declare-fun b!1562754 () Bool)

(declare-fun res!696677 () Bool)

(assert (=> b!1562754 (=> res!696677 e!1003576)))

(assert (=> b!1562754 (= res!696677 (not (isEmpty!10171 (tail!2218 (tail!2218 (_1!9695 lt!541045))))))))

(declare-fun b!1562755 () Bool)

(declare-fun res!696676 () Bool)

(assert (=> b!1562755 (=> res!696676 e!1003578)))

(assert (=> b!1562755 (= res!696676 (not ((_ is ElementMatch!4299) (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045))))))))

(assert (=> b!1562755 (= e!1003580 e!1003578)))

(declare-fun b!1562756 () Bool)

(assert (=> b!1562756 (= e!1003581 e!1003580)))

(declare-fun c!253354 () Bool)

(assert (=> b!1562756 (= c!253354 ((_ is EmptyLang!4299) (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045)))))))

(declare-fun b!1562757 () Bool)

(assert (=> b!1562757 (= e!1003578 e!1003577)))

(declare-fun res!696673 () Bool)

(assert (=> b!1562757 (=> (not res!696673) (not e!1003577))))

(assert (=> b!1562757 (= res!696673 (not lt!541319))))

(declare-fun bm!102345 () Bool)

(assert (=> bm!102345 (= call!102350 (isEmpty!10171 (tail!2218 (_1!9695 lt!541045))))))

(declare-fun b!1562758 () Bool)

(assert (=> b!1562758 (= e!1003576 (not (= (head!3123 (tail!2218 (_1!9695 lt!541045))) (c!253236 (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045)))))))))

(declare-fun b!1562759 () Bool)

(declare-fun res!696674 () Bool)

(assert (=> b!1562759 (=> (not res!696674) (not e!1003579))))

(assert (=> b!1562759 (= res!696674 (not call!102350))))

(assert (= (and d!462799 c!253353) b!1562746))

(assert (= (and d!462799 (not c!253353)) b!1562748))

(assert (= (and d!462799 c!253355) b!1562752))

(assert (= (and d!462799 (not c!253355)) b!1562756))

(assert (= (and b!1562756 c!253354) b!1562747))

(assert (= (and b!1562756 (not c!253354)) b!1562755))

(assert (= (and b!1562755 (not res!696676)) b!1562751))

(assert (= (and b!1562751 res!696672) b!1562759))

(assert (= (and b!1562759 res!696674) b!1562750))

(assert (= (and b!1562750 res!696671) b!1562749))

(assert (= (and b!1562751 (not res!696670)) b!1562757))

(assert (= (and b!1562757 res!696673) b!1562753))

(assert (= (and b!1562753 (not res!696675)) b!1562754))

(assert (= (and b!1562754 (not res!696677)) b!1562758))

(assert (= (or b!1562752 b!1562753 b!1562759) bm!102345))

(assert (=> b!1562750 m!1833458))

(declare-fun m!1834243 () Bool)

(assert (=> b!1562750 m!1834243))

(assert (=> b!1562750 m!1834243))

(declare-fun m!1834245 () Bool)

(assert (=> b!1562750 m!1834245))

(assert (=> b!1562748 m!1833458))

(declare-fun m!1834247 () Bool)

(assert (=> b!1562748 m!1834247))

(assert (=> b!1562748 m!1833464))

(assert (=> b!1562748 m!1834247))

(declare-fun m!1834249 () Bool)

(assert (=> b!1562748 m!1834249))

(assert (=> b!1562748 m!1833458))

(assert (=> b!1562748 m!1834243))

(assert (=> b!1562748 m!1834249))

(assert (=> b!1562748 m!1834243))

(declare-fun m!1834251 () Bool)

(assert (=> b!1562748 m!1834251))

(assert (=> b!1562749 m!1833458))

(assert (=> b!1562749 m!1834247))

(assert (=> b!1562754 m!1833458))

(assert (=> b!1562754 m!1834243))

(assert (=> b!1562754 m!1834243))

(assert (=> b!1562754 m!1834245))

(assert (=> b!1562746 m!1833464))

(declare-fun m!1834253 () Bool)

(assert (=> b!1562746 m!1834253))

(assert (=> b!1562758 m!1833458))

(assert (=> b!1562758 m!1834247))

(assert (=> bm!102345 m!1833458))

(assert (=> bm!102345 m!1833460))

(assert (=> d!462799 m!1833458))

(assert (=> d!462799 m!1833460))

(assert (=> d!462799 m!1833464))

(declare-fun m!1834255 () Bool)

(assert (=> d!462799 m!1834255))

(assert (=> b!1562075 d!462799))

(declare-fun b!1562760 () Bool)

(declare-fun e!1003585 () Regex!4299)

(declare-fun call!102351 () Regex!4299)

(assert (=> b!1562760 (= e!1003585 (Union!4299 (Concat!7361 call!102351 (regTwo!9110 (regex!2971 rule!240))) EmptyLang!4299))))

(declare-fun b!1562761 () Bool)

(declare-fun e!1003583 () Regex!4299)

(assert (=> b!1562761 (= e!1003583 EmptyLang!4299)))

(declare-fun b!1562762 () Bool)

(declare-fun e!1003587 () Regex!4299)

(declare-fun e!1003586 () Regex!4299)

(assert (=> b!1562762 (= e!1003587 e!1003586)))

(declare-fun c!253358 () Bool)

(assert (=> b!1562762 (= c!253358 ((_ is Star!4299) (regex!2971 rule!240)))))

(declare-fun d!462801 () Bool)

(declare-fun lt!541320 () Regex!4299)

(assert (=> d!462801 (validRegex!1722 lt!541320)))

(assert (=> d!462801 (= lt!541320 e!1003583)))

(declare-fun c!253359 () Bool)

(assert (=> d!462801 (= c!253359 (or ((_ is EmptyExpr!4299) (regex!2971 rule!240)) ((_ is EmptyLang!4299) (regex!2971 rule!240))))))

(assert (=> d!462801 (validRegex!1722 (regex!2971 rule!240))))

(assert (=> d!462801 (= (derivativeStep!1032 (regex!2971 rule!240) (head!3123 (_1!9695 lt!541045))) lt!541320)))

(declare-fun bm!102346 () Bool)

(declare-fun call!102352 () Regex!4299)

(assert (=> bm!102346 (= call!102351 call!102352)))

(declare-fun b!1562763 () Bool)

(declare-fun call!102354 () Regex!4299)

(declare-fun call!102353 () Regex!4299)

(assert (=> b!1562763 (= e!1003587 (Union!4299 call!102354 call!102353))))

(declare-fun bm!102347 () Bool)

(declare-fun c!253360 () Bool)

(assert (=> bm!102347 (= call!102353 (derivativeStep!1032 (ite c!253360 (regTwo!9111 (regex!2971 rule!240)) (regTwo!9110 (regex!2971 rule!240))) (head!3123 (_1!9695 lt!541045))))))

(declare-fun b!1562764 () Bool)

(assert (=> b!1562764 (= e!1003585 (Union!4299 (Concat!7361 call!102351 (regTwo!9110 (regex!2971 rule!240))) call!102353))))

(declare-fun bm!102348 () Bool)

(assert (=> bm!102348 (= call!102352 call!102354)))

(declare-fun b!1562765 () Bool)

(declare-fun c!253356 () Bool)

(assert (=> b!1562765 (= c!253356 (nullable!1281 (regOne!9110 (regex!2971 rule!240))))))

(assert (=> b!1562765 (= e!1003586 e!1003585)))

(declare-fun b!1562766 () Bool)

(declare-fun e!1003584 () Regex!4299)

(assert (=> b!1562766 (= e!1003584 (ite (= (head!3123 (_1!9695 lt!541045)) (c!253236 (regex!2971 rule!240))) EmptyExpr!4299 EmptyLang!4299))))

(declare-fun b!1562767 () Bool)

(assert (=> b!1562767 (= c!253360 ((_ is Union!4299) (regex!2971 rule!240)))))

(assert (=> b!1562767 (= e!1003584 e!1003587)))

(declare-fun b!1562768 () Bool)

(assert (=> b!1562768 (= e!1003586 (Concat!7361 call!102352 (regex!2971 rule!240)))))

(declare-fun b!1562769 () Bool)

(assert (=> b!1562769 (= e!1003583 e!1003584)))

(declare-fun c!253357 () Bool)

(assert (=> b!1562769 (= c!253357 ((_ is ElementMatch!4299) (regex!2971 rule!240)))))

(declare-fun bm!102349 () Bool)

(assert (=> bm!102349 (= call!102354 (derivativeStep!1032 (ite c!253360 (regOne!9111 (regex!2971 rule!240)) (ite c!253358 (reg!4628 (regex!2971 rule!240)) (regOne!9110 (regex!2971 rule!240)))) (head!3123 (_1!9695 lt!541045))))))

(assert (= (and d!462801 c!253359) b!1562761))

(assert (= (and d!462801 (not c!253359)) b!1562769))

(assert (= (and b!1562769 c!253357) b!1562766))

(assert (= (and b!1562769 (not c!253357)) b!1562767))

(assert (= (and b!1562767 c!253360) b!1562763))

(assert (= (and b!1562767 (not c!253360)) b!1562762))

(assert (= (and b!1562762 c!253358) b!1562768))

(assert (= (and b!1562762 (not c!253358)) b!1562765))

(assert (= (and b!1562765 c!253356) b!1562764))

(assert (= (and b!1562765 (not c!253356)) b!1562760))

(assert (= (or b!1562764 b!1562760) bm!102346))

(assert (= (or b!1562768 bm!102346) bm!102348))

(assert (= (or b!1562763 bm!102348) bm!102349))

(assert (= (or b!1562763 b!1562764) bm!102347))

(declare-fun m!1834257 () Bool)

(assert (=> d!462801 m!1834257))

(assert (=> d!462801 m!1833434))

(assert (=> bm!102347 m!1833462))

(declare-fun m!1834259 () Bool)

(assert (=> bm!102347 m!1834259))

(assert (=> b!1562765 m!1834159))

(assert (=> bm!102349 m!1833462))

(declare-fun m!1834261 () Bool)

(assert (=> bm!102349 m!1834261))

(assert (=> b!1562075 d!462801))

(assert (=> b!1562075 d!462721))

(assert (=> b!1562075 d!462639))

(declare-fun bs!389194 () Bool)

(declare-fun d!462803 () Bool)

(assert (= bs!389194 (and d!462803 d!462713)))

(declare-fun lambda!66107 () Int)

(assert (=> bs!389194 (= lambda!66107 lambda!66090)))

(declare-fun bs!389195 () Bool)

(assert (= bs!389195 (and d!462803 d!462781)))

(assert (=> bs!389195 (= lambda!66107 lambda!66103)))

(declare-fun bs!389196 () Bool)

(assert (= bs!389196 (and d!462803 d!462779)))

(assert (=> bs!389196 (= lambda!66107 lambda!66102)))

(declare-fun bs!389197 () Bool)

(assert (= bs!389197 (and d!462803 d!462691)))

(assert (=> bs!389197 (= lambda!66107 lambda!66088)))

(declare-fun bs!389198 () Bool)

(assert (= bs!389198 (and d!462803 d!462773)))

(assert (=> bs!389198 (= lambda!66107 lambda!66098)))

(declare-fun bs!389199 () Bool)

(assert (= bs!389199 (and d!462803 d!462735)))

(assert (=> bs!389199 (= lambda!66107 lambda!66092)))

(declare-fun bs!389200 () Bool)

(assert (= bs!389200 (and d!462803 d!462649)))

(assert (=> bs!389200 (= lambda!66107 lambda!66085)))

(declare-fun bs!389201 () Bool)

(assert (= bs!389201 (and d!462803 d!462747)))

(assert (=> bs!389201 (= lambda!66107 lambda!66095)))

(declare-fun bs!389202 () Bool)

(assert (= bs!389202 (and d!462803 d!462699)))

(assert (=> bs!389202 (= lambda!66107 lambda!66089)))

(declare-fun bs!389203 () Bool)

(assert (= bs!389203 (and d!462803 d!462647)))

(assert (=> bs!389203 (= lambda!66107 lambda!66084)))

(declare-fun bs!389204 () Bool)

(assert (= bs!389204 (and d!462803 d!462737)))

(assert (=> bs!389204 (= lambda!66107 lambda!66093)))

(declare-fun bs!389205 () Bool)

(assert (= bs!389205 (and d!462803 d!462715)))

(assert (=> bs!389205 (= lambda!66107 lambda!66091)))

(declare-fun bs!389206 () Bool)

(assert (= bs!389206 (and d!462803 d!462641)))

(assert (=> bs!389206 (= lambda!66107 lambda!66082)))

(declare-fun bs!389207 () Bool)

(assert (= bs!389207 (and d!462803 d!462743)))

(assert (=> bs!389207 (= lambda!66107 lambda!66094)))

(declare-fun bs!389208 () Bool)

(assert (= bs!389208 (and d!462803 d!462653)))

(assert (=> bs!389208 (= lambda!66107 lambda!66086)))

(declare-fun bs!389209 () Bool)

(assert (= bs!389209 (and d!462803 d!462611)))

(assert (=> bs!389209 (= lambda!66107 lambda!66081)))

(declare-fun bs!389210 () Bool)

(assert (= bs!389210 (and d!462803 d!462597)))

(assert (=> bs!389210 (= lambda!66107 lambda!66074)))

(declare-fun bs!389211 () Bool)

(assert (= bs!389211 (and d!462803 d!462771)))

(assert (=> bs!389211 (= lambda!66107 lambda!66097)))

(declare-fun bs!389212 () Bool)

(assert (= bs!389212 (and d!462803 d!462645)))

(assert (=> bs!389212 (= lambda!66107 lambda!66083)))

(declare-fun bs!389213 () Bool)

(assert (= bs!389213 (and d!462803 d!462675)))

(assert (=> bs!389213 (= lambda!66107 lambda!66087)))

(assert (=> d!462803 (= (inv!22268 setElem!11255) (forall!3929 (exprs!1317 setElem!11255) lambda!66107))))

(declare-fun bs!389214 () Bool)

(assert (= bs!389214 d!462803))

(declare-fun m!1834263 () Bool)

(assert (=> bs!389214 m!1834263))

(assert (=> setNonEmpty!11255 d!462803))

(declare-fun d!462805 () Bool)

(declare-fun lt!541321 () Int)

(assert (=> d!462805 (>= lt!541321 0)))

(declare-fun e!1003588 () Int)

(assert (=> d!462805 (= lt!541321 e!1003588)))

(declare-fun c!253361 () Bool)

(assert (=> d!462805 (= c!253361 ((_ is Nil!16951) (t!141568 lt!541046)))))

(assert (=> d!462805 (= (size!13762 (t!141568 lt!541046)) lt!541321)))

(declare-fun b!1562770 () Bool)

(assert (=> b!1562770 (= e!1003588 0)))

(declare-fun b!1562771 () Bool)

(assert (=> b!1562771 (= e!1003588 (+ 1 (size!13762 (t!141568 (t!141568 lt!541046)))))))

(assert (= (and d!462805 c!253361) b!1562770))

(assert (= (and d!462805 (not c!253361)) b!1562771))

(declare-fun m!1834265 () Bool)

(assert (=> b!1562771 m!1834265))

(assert (=> b!1562092 d!462805))

(declare-fun b!1562772 () Bool)

(declare-fun res!696678 () Bool)

(declare-fun e!1003590 () Bool)

(assert (=> b!1562772 (=> (not res!696678) (not e!1003590))))

(assert (=> b!1562772 (= res!696678 (<= (- (height!830 (left!13749 (c!253235 totalInput!568))) (height!830 (right!14079 (c!253235 totalInput!568)))) 1))))

(declare-fun b!1562773 () Bool)

(declare-fun e!1003589 () Bool)

(assert (=> b!1562773 (= e!1003589 e!1003590)))

(declare-fun res!696681 () Bool)

(assert (=> b!1562773 (=> (not res!696681) (not e!1003590))))

(assert (=> b!1562773 (= res!696681 (<= (- 1) (- (height!830 (left!13749 (c!253235 totalInput!568))) (height!830 (right!14079 (c!253235 totalInput!568))))))))

(declare-fun b!1562774 () Bool)

(declare-fun res!696683 () Bool)

(assert (=> b!1562774 (=> (not res!696683) (not e!1003590))))

(assert (=> b!1562774 (= res!696683 (isBalanced!1654 (right!14079 (c!253235 totalInput!568))))))

(declare-fun d!462807 () Bool)

(declare-fun res!696679 () Bool)

(assert (=> d!462807 (=> res!696679 e!1003589)))

(assert (=> d!462807 (= res!696679 (not ((_ is Node!5589) (c!253235 totalInput!568))))))

(assert (=> d!462807 (= (isBalanced!1654 (c!253235 totalInput!568)) e!1003589)))

(declare-fun b!1562775 () Bool)

(declare-fun res!696682 () Bool)

(assert (=> b!1562775 (=> (not res!696682) (not e!1003590))))

(assert (=> b!1562775 (= res!696682 (not (isEmpty!10173 (left!13749 (c!253235 totalInput!568)))))))

(declare-fun b!1562776 () Bool)

(declare-fun res!696680 () Bool)

(assert (=> b!1562776 (=> (not res!696680) (not e!1003590))))

(assert (=> b!1562776 (= res!696680 (isBalanced!1654 (left!13749 (c!253235 totalInput!568))))))

(declare-fun b!1562777 () Bool)

(assert (=> b!1562777 (= e!1003590 (not (isEmpty!10173 (right!14079 (c!253235 totalInput!568)))))))

(assert (= (and d!462807 (not res!696679)) b!1562773))

(assert (= (and b!1562773 res!696681) b!1562772))

(assert (= (and b!1562772 res!696678) b!1562776))

(assert (= (and b!1562776 res!696680) b!1562774))

(assert (= (and b!1562774 res!696683) b!1562775))

(assert (= (and b!1562775 res!696682) b!1562777))

(assert (=> b!1562773 m!1834126))

(assert (=> b!1562773 m!1834128))

(assert (=> b!1562772 m!1834126))

(assert (=> b!1562772 m!1834128))

(declare-fun m!1834267 () Bool)

(assert (=> b!1562776 m!1834267))

(declare-fun m!1834269 () Bool)

(assert (=> b!1562777 m!1834269))

(declare-fun m!1834271 () Bool)

(assert (=> b!1562775 m!1834271))

(declare-fun m!1834273 () Bool)

(assert (=> b!1562774 m!1834273))

(assert (=> d!462571 d!462807))

(declare-fun bs!389215 () Bool)

(declare-fun d!462809 () Bool)

(assert (= bs!389215 (and d!462809 d!462713)))

(declare-fun lambda!66108 () Int)

(assert (=> bs!389215 (= lambda!66108 lambda!66090)))

(declare-fun bs!389216 () Bool)

(assert (= bs!389216 (and d!462809 d!462781)))

(assert (=> bs!389216 (= lambda!66108 lambda!66103)))

(declare-fun bs!389217 () Bool)

(assert (= bs!389217 (and d!462809 d!462779)))

(assert (=> bs!389217 (= lambda!66108 lambda!66102)))

(declare-fun bs!389218 () Bool)

(assert (= bs!389218 (and d!462809 d!462691)))

(assert (=> bs!389218 (= lambda!66108 lambda!66088)))

(declare-fun bs!389219 () Bool)

(assert (= bs!389219 (and d!462809 d!462773)))

(assert (=> bs!389219 (= lambda!66108 lambda!66098)))

(declare-fun bs!389220 () Bool)

(assert (= bs!389220 (and d!462809 d!462735)))

(assert (=> bs!389220 (= lambda!66108 lambda!66092)))

(declare-fun bs!389221 () Bool)

(assert (= bs!389221 (and d!462809 d!462649)))

(assert (=> bs!389221 (= lambda!66108 lambda!66085)))

(declare-fun bs!389222 () Bool)

(assert (= bs!389222 (and d!462809 d!462803)))

(assert (=> bs!389222 (= lambda!66108 lambda!66107)))

(declare-fun bs!389223 () Bool)

(assert (= bs!389223 (and d!462809 d!462747)))

(assert (=> bs!389223 (= lambda!66108 lambda!66095)))

(declare-fun bs!389224 () Bool)

(assert (= bs!389224 (and d!462809 d!462699)))

(assert (=> bs!389224 (= lambda!66108 lambda!66089)))

(declare-fun bs!389225 () Bool)

(assert (= bs!389225 (and d!462809 d!462647)))

(assert (=> bs!389225 (= lambda!66108 lambda!66084)))

(declare-fun bs!389226 () Bool)

(assert (= bs!389226 (and d!462809 d!462737)))

(assert (=> bs!389226 (= lambda!66108 lambda!66093)))

(declare-fun bs!389227 () Bool)

(assert (= bs!389227 (and d!462809 d!462715)))

(assert (=> bs!389227 (= lambda!66108 lambda!66091)))

(declare-fun bs!389228 () Bool)

(assert (= bs!389228 (and d!462809 d!462641)))

(assert (=> bs!389228 (= lambda!66108 lambda!66082)))

(declare-fun bs!389229 () Bool)

(assert (= bs!389229 (and d!462809 d!462743)))

(assert (=> bs!389229 (= lambda!66108 lambda!66094)))

(declare-fun bs!389230 () Bool)

(assert (= bs!389230 (and d!462809 d!462653)))

(assert (=> bs!389230 (= lambda!66108 lambda!66086)))

(declare-fun bs!389231 () Bool)

(assert (= bs!389231 (and d!462809 d!462611)))

(assert (=> bs!389231 (= lambda!66108 lambda!66081)))

(declare-fun bs!389232 () Bool)

(assert (= bs!389232 (and d!462809 d!462597)))

(assert (=> bs!389232 (= lambda!66108 lambda!66074)))

(declare-fun bs!389233 () Bool)

(assert (= bs!389233 (and d!462809 d!462771)))

(assert (=> bs!389233 (= lambda!66108 lambda!66097)))

(declare-fun bs!389234 () Bool)

(assert (= bs!389234 (and d!462809 d!462645)))

(assert (=> bs!389234 (= lambda!66108 lambda!66083)))

(declare-fun bs!389235 () Bool)

(assert (= bs!389235 (and d!462809 d!462675)))

(assert (=> bs!389235 (= lambda!66108 lambda!66087)))

(assert (=> d!462809 (= (inv!22268 setElem!11246) (forall!3929 (exprs!1317 setElem!11246) lambda!66108))))

(declare-fun bs!389236 () Bool)

(assert (= bs!389236 d!462809))

(declare-fun m!1834275 () Bool)

(assert (=> bs!389236 m!1834275))

(assert (=> setNonEmpty!11246 d!462809))

(assert (=> b!1562187 d!462663))

(declare-fun bs!389237 () Bool)

(declare-fun d!462811 () Bool)

(assert (= bs!389237 (and d!462811 d!462713)))

(declare-fun lambda!66109 () Int)

(assert (=> bs!389237 (= lambda!66109 lambda!66090)))

(declare-fun bs!389238 () Bool)

(assert (= bs!389238 (and d!462811 d!462781)))

(assert (=> bs!389238 (= lambda!66109 lambda!66103)))

(declare-fun bs!389239 () Bool)

(assert (= bs!389239 (and d!462811 d!462779)))

(assert (=> bs!389239 (= lambda!66109 lambda!66102)))

(declare-fun bs!389240 () Bool)

(assert (= bs!389240 (and d!462811 d!462691)))

(assert (=> bs!389240 (= lambda!66109 lambda!66088)))

(declare-fun bs!389241 () Bool)

(assert (= bs!389241 (and d!462811 d!462735)))

(assert (=> bs!389241 (= lambda!66109 lambda!66092)))

(declare-fun bs!389242 () Bool)

(assert (= bs!389242 (and d!462811 d!462649)))

(assert (=> bs!389242 (= lambda!66109 lambda!66085)))

(declare-fun bs!389243 () Bool)

(assert (= bs!389243 (and d!462811 d!462803)))

(assert (=> bs!389243 (= lambda!66109 lambda!66107)))

(declare-fun bs!389244 () Bool)

(assert (= bs!389244 (and d!462811 d!462747)))

(assert (=> bs!389244 (= lambda!66109 lambda!66095)))

(declare-fun bs!389245 () Bool)

(assert (= bs!389245 (and d!462811 d!462699)))

(assert (=> bs!389245 (= lambda!66109 lambda!66089)))

(declare-fun bs!389246 () Bool)

(assert (= bs!389246 (and d!462811 d!462647)))

(assert (=> bs!389246 (= lambda!66109 lambda!66084)))

(declare-fun bs!389247 () Bool)

(assert (= bs!389247 (and d!462811 d!462737)))

(assert (=> bs!389247 (= lambda!66109 lambda!66093)))

(declare-fun bs!389248 () Bool)

(assert (= bs!389248 (and d!462811 d!462715)))

(assert (=> bs!389248 (= lambda!66109 lambda!66091)))

(declare-fun bs!389249 () Bool)

(assert (= bs!389249 (and d!462811 d!462641)))

(assert (=> bs!389249 (= lambda!66109 lambda!66082)))

(declare-fun bs!389250 () Bool)

(assert (= bs!389250 (and d!462811 d!462743)))

(assert (=> bs!389250 (= lambda!66109 lambda!66094)))

(declare-fun bs!389251 () Bool)

(assert (= bs!389251 (and d!462811 d!462653)))

(assert (=> bs!389251 (= lambda!66109 lambda!66086)))

(declare-fun bs!389252 () Bool)

(assert (= bs!389252 (and d!462811 d!462611)))

(assert (=> bs!389252 (= lambda!66109 lambda!66081)))

(declare-fun bs!389253 () Bool)

(assert (= bs!389253 (and d!462811 d!462597)))

(assert (=> bs!389253 (= lambda!66109 lambda!66074)))

(declare-fun bs!389254 () Bool)

(assert (= bs!389254 (and d!462811 d!462773)))

(assert (=> bs!389254 (= lambda!66109 lambda!66098)))

(declare-fun bs!389255 () Bool)

(assert (= bs!389255 (and d!462811 d!462809)))

(assert (=> bs!389255 (= lambda!66109 lambda!66108)))

(declare-fun bs!389256 () Bool)

(assert (= bs!389256 (and d!462811 d!462771)))

(assert (=> bs!389256 (= lambda!66109 lambda!66097)))

(declare-fun bs!389257 () Bool)

(assert (= bs!389257 (and d!462811 d!462645)))

(assert (=> bs!389257 (= lambda!66109 lambda!66083)))

(declare-fun bs!389258 () Bool)

(assert (= bs!389258 (and d!462811 d!462675)))

(assert (=> bs!389258 (= lambda!66109 lambda!66087)))

(assert (=> d!462811 (= (inv!22268 (_1!9685 (_1!9686 (h!22354 mapValue!8676)))) (forall!3929 (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapValue!8676)))) lambda!66109))))

(declare-fun bs!389259 () Bool)

(assert (= bs!389259 d!462811))

(declare-fun m!1834277 () Bool)

(assert (=> bs!389259 m!1834277))

(assert (=> b!1562302 d!462811))

(assert (=> bm!102310 d!462619))

(declare-fun d!462813 () Bool)

(declare-fun lt!541322 () Int)

(assert (=> d!462813 (>= lt!541322 0)))

(declare-fun e!1003591 () Int)

(assert (=> d!462813 (= lt!541322 e!1003591)))

(declare-fun c!253362 () Bool)

(assert (=> d!462813 (= c!253362 ((_ is Nil!16951) (_2!9687 (get!4876 lt!541186))))))

(assert (=> d!462813 (= (size!13762 (_2!9687 (get!4876 lt!541186))) lt!541322)))

(declare-fun b!1562778 () Bool)

(assert (=> b!1562778 (= e!1003591 0)))

(declare-fun b!1562779 () Bool)

(assert (=> b!1562779 (= e!1003591 (+ 1 (size!13762 (t!141568 (_2!9687 (get!4876 lt!541186))))))))

(assert (= (and d!462813 c!253362) b!1562778))

(assert (= (and d!462813 (not c!253362)) b!1562779))

(declare-fun m!1834279 () Bool)

(assert (=> b!1562779 m!1834279))

(assert (=> b!1562183 d!462813))

(assert (=> b!1562183 d!462663))

(assert (=> b!1562183 d!462509))

(assert (=> b!1562097 d!462741))

(assert (=> b!1562097 d!462533))

(assert (=> b!1562097 d!462511))

(assert (=> b!1562097 d!462509))

(declare-fun bs!389260 () Bool)

(declare-fun b!1562781 () Bool)

(assert (= bs!389260 (and b!1562781 b!1562693)))

(declare-fun lambda!66110 () Int)

(assert (=> bs!389260 (= lambda!66110 lambda!66101)))

(declare-fun d!462815 () Bool)

(declare-fun res!696684 () Bool)

(declare-fun e!1003592 () Bool)

(assert (=> d!462815 (=> (not res!696684) (not e!1003592))))

(assert (=> d!462815 (= res!696684 (valid!1494 (cache!2187 cacheDown!768)))))

(assert (=> d!462815 (= (validCacheMapDown!172 (cache!2187 cacheDown!768)) e!1003592)))

(declare-fun b!1562780 () Bool)

(declare-fun res!696685 () Bool)

(assert (=> b!1562780 (=> (not res!696685) (not e!1003592))))

(assert (=> b!1562780 (= res!696685 (invariantList!252 (toList!861 (map!3539 (cache!2187 cacheDown!768)))))))

(assert (=> b!1562781 (= e!1003592 (forall!3932 (toList!861 (map!3539 (cache!2187 cacheDown!768))) lambda!66110))))

(assert (= (and d!462815 res!696684) b!1562780))

(assert (= (and b!1562780 res!696685) b!1562781))

(declare-fun m!1834281 () Bool)

(assert (=> d!462815 m!1834281))

(declare-fun m!1834283 () Bool)

(assert (=> b!1562780 m!1834283))

(declare-fun m!1834285 () Bool)

(assert (=> b!1562780 m!1834285))

(assert (=> b!1562781 m!1834283))

(declare-fun m!1834287 () Bool)

(assert (=> b!1562781 m!1834287))

(assert (=> b!1562199 d!462815))

(declare-fun d!462817 () Bool)

(declare-fun c!253363 () Bool)

(assert (=> d!462817 (= c!253363 ((_ is Node!5589) (left!13749 (c!253235 input!1676))))))

(declare-fun e!1003593 () Bool)

(assert (=> d!462817 (= (inv!22260 (left!13749 (c!253235 input!1676))) e!1003593)))

(declare-fun b!1562782 () Bool)

(assert (=> b!1562782 (= e!1003593 (inv!22266 (left!13749 (c!253235 input!1676))))))

(declare-fun b!1562783 () Bool)

(declare-fun e!1003594 () Bool)

(assert (=> b!1562783 (= e!1003593 e!1003594)))

(declare-fun res!696686 () Bool)

(assert (=> b!1562783 (= res!696686 (not ((_ is Leaf!8284) (left!13749 (c!253235 input!1676)))))))

(assert (=> b!1562783 (=> res!696686 e!1003594)))

(declare-fun b!1562784 () Bool)

(assert (=> b!1562784 (= e!1003594 (inv!22267 (left!13749 (c!253235 input!1676))))))

(assert (= (and d!462817 c!253363) b!1562782))

(assert (= (and d!462817 (not c!253363)) b!1562783))

(assert (= (and b!1562783 (not res!696686)) b!1562784))

(declare-fun m!1834289 () Bool)

(assert (=> b!1562782 m!1834289))

(declare-fun m!1834291 () Bool)

(assert (=> b!1562784 m!1834291))

(assert (=> b!1562331 d!462817))

(declare-fun d!462819 () Bool)

(declare-fun c!253364 () Bool)

(assert (=> d!462819 (= c!253364 ((_ is Node!5589) (right!14079 (c!253235 input!1676))))))

(declare-fun e!1003595 () Bool)

(assert (=> d!462819 (= (inv!22260 (right!14079 (c!253235 input!1676))) e!1003595)))

(declare-fun b!1562785 () Bool)

(assert (=> b!1562785 (= e!1003595 (inv!22266 (right!14079 (c!253235 input!1676))))))

(declare-fun b!1562786 () Bool)

(declare-fun e!1003596 () Bool)

(assert (=> b!1562786 (= e!1003595 e!1003596)))

(declare-fun res!696687 () Bool)

(assert (=> b!1562786 (= res!696687 (not ((_ is Leaf!8284) (right!14079 (c!253235 input!1676)))))))

(assert (=> b!1562786 (=> res!696687 e!1003596)))

(declare-fun b!1562787 () Bool)

(assert (=> b!1562787 (= e!1003596 (inv!22267 (right!14079 (c!253235 input!1676))))))

(assert (= (and d!462819 c!253364) b!1562785))

(assert (= (and d!462819 (not c!253364)) b!1562786))

(assert (= (and b!1562786 (not res!696687)) b!1562787))

(declare-fun m!1834293 () Bool)

(assert (=> b!1562785 m!1834293))

(declare-fun m!1834295 () Bool)

(assert (=> b!1562787 m!1834295))

(assert (=> b!1562331 d!462819))

(declare-fun bs!389261 () Bool)

(declare-fun d!462821 () Bool)

(assert (= bs!389261 (and d!462821 d!462811)))

(declare-fun lambda!66111 () Int)

(assert (=> bs!389261 (= lambda!66111 lambda!66109)))

(declare-fun bs!389262 () Bool)

(assert (= bs!389262 (and d!462821 d!462713)))

(assert (=> bs!389262 (= lambda!66111 lambda!66090)))

(declare-fun bs!389263 () Bool)

(assert (= bs!389263 (and d!462821 d!462781)))

(assert (=> bs!389263 (= lambda!66111 lambda!66103)))

(declare-fun bs!389264 () Bool)

(assert (= bs!389264 (and d!462821 d!462779)))

(assert (=> bs!389264 (= lambda!66111 lambda!66102)))

(declare-fun bs!389265 () Bool)

(assert (= bs!389265 (and d!462821 d!462691)))

(assert (=> bs!389265 (= lambda!66111 lambda!66088)))

(declare-fun bs!389266 () Bool)

(assert (= bs!389266 (and d!462821 d!462735)))

(assert (=> bs!389266 (= lambda!66111 lambda!66092)))

(declare-fun bs!389267 () Bool)

(assert (= bs!389267 (and d!462821 d!462649)))

(assert (=> bs!389267 (= lambda!66111 lambda!66085)))

(declare-fun bs!389268 () Bool)

(assert (= bs!389268 (and d!462821 d!462803)))

(assert (=> bs!389268 (= lambda!66111 lambda!66107)))

(declare-fun bs!389269 () Bool)

(assert (= bs!389269 (and d!462821 d!462747)))

(assert (=> bs!389269 (= lambda!66111 lambda!66095)))

(declare-fun bs!389270 () Bool)

(assert (= bs!389270 (and d!462821 d!462699)))

(assert (=> bs!389270 (= lambda!66111 lambda!66089)))

(declare-fun bs!389271 () Bool)

(assert (= bs!389271 (and d!462821 d!462647)))

(assert (=> bs!389271 (= lambda!66111 lambda!66084)))

(declare-fun bs!389272 () Bool)

(assert (= bs!389272 (and d!462821 d!462737)))

(assert (=> bs!389272 (= lambda!66111 lambda!66093)))

(declare-fun bs!389273 () Bool)

(assert (= bs!389273 (and d!462821 d!462715)))

(assert (=> bs!389273 (= lambda!66111 lambda!66091)))

(declare-fun bs!389274 () Bool)

(assert (= bs!389274 (and d!462821 d!462641)))

(assert (=> bs!389274 (= lambda!66111 lambda!66082)))

(declare-fun bs!389275 () Bool)

(assert (= bs!389275 (and d!462821 d!462743)))

(assert (=> bs!389275 (= lambda!66111 lambda!66094)))

(declare-fun bs!389276 () Bool)

(assert (= bs!389276 (and d!462821 d!462653)))

(assert (=> bs!389276 (= lambda!66111 lambda!66086)))

(declare-fun bs!389277 () Bool)

(assert (= bs!389277 (and d!462821 d!462611)))

(assert (=> bs!389277 (= lambda!66111 lambda!66081)))

(declare-fun bs!389278 () Bool)

(assert (= bs!389278 (and d!462821 d!462597)))

(assert (=> bs!389278 (= lambda!66111 lambda!66074)))

(declare-fun bs!389279 () Bool)

(assert (= bs!389279 (and d!462821 d!462773)))

(assert (=> bs!389279 (= lambda!66111 lambda!66098)))

(declare-fun bs!389280 () Bool)

(assert (= bs!389280 (and d!462821 d!462809)))

(assert (=> bs!389280 (= lambda!66111 lambda!66108)))

(declare-fun bs!389281 () Bool)

(assert (= bs!389281 (and d!462821 d!462771)))

(assert (=> bs!389281 (= lambda!66111 lambda!66097)))

(declare-fun bs!389282 () Bool)

(assert (= bs!389282 (and d!462821 d!462645)))

(assert (=> bs!389282 (= lambda!66111 lambda!66083)))

(declare-fun bs!389283 () Bool)

(assert (= bs!389283 (and d!462821 d!462675)))

(assert (=> bs!389283 (= lambda!66111 lambda!66087)))

(assert (=> d!462821 (= (inv!22268 setElem!11263) (forall!3929 (exprs!1317 setElem!11263) lambda!66111))))

(declare-fun bs!389284 () Bool)

(assert (= bs!389284 d!462821))

(declare-fun m!1834297 () Bool)

(assert (=> bs!389284 m!1834297))

(assert (=> setNonEmpty!11263 d!462821))

(declare-fun bs!389285 () Bool)

(declare-fun d!462823 () Bool)

(assert (= bs!389285 (and d!462823 d!462811)))

(declare-fun lambda!66112 () Int)

(assert (=> bs!389285 (= lambda!66112 lambda!66109)))

(declare-fun bs!389286 () Bool)

(assert (= bs!389286 (and d!462823 d!462713)))

(assert (=> bs!389286 (= lambda!66112 lambda!66090)))

(declare-fun bs!389287 () Bool)

(assert (= bs!389287 (and d!462823 d!462781)))

(assert (=> bs!389287 (= lambda!66112 lambda!66103)))

(declare-fun bs!389288 () Bool)

(assert (= bs!389288 (and d!462823 d!462779)))

(assert (=> bs!389288 (= lambda!66112 lambda!66102)))

(declare-fun bs!389289 () Bool)

(assert (= bs!389289 (and d!462823 d!462691)))

(assert (=> bs!389289 (= lambda!66112 lambda!66088)))

(declare-fun bs!389290 () Bool)

(assert (= bs!389290 (and d!462823 d!462735)))

(assert (=> bs!389290 (= lambda!66112 lambda!66092)))

(declare-fun bs!389291 () Bool)

(assert (= bs!389291 (and d!462823 d!462649)))

(assert (=> bs!389291 (= lambda!66112 lambda!66085)))

(declare-fun bs!389292 () Bool)

(assert (= bs!389292 (and d!462823 d!462803)))

(assert (=> bs!389292 (= lambda!66112 lambda!66107)))

(declare-fun bs!389293 () Bool)

(assert (= bs!389293 (and d!462823 d!462747)))

(assert (=> bs!389293 (= lambda!66112 lambda!66095)))

(declare-fun bs!389294 () Bool)

(assert (= bs!389294 (and d!462823 d!462821)))

(assert (=> bs!389294 (= lambda!66112 lambda!66111)))

(declare-fun bs!389295 () Bool)

(assert (= bs!389295 (and d!462823 d!462699)))

(assert (=> bs!389295 (= lambda!66112 lambda!66089)))

(declare-fun bs!389296 () Bool)

(assert (= bs!389296 (and d!462823 d!462647)))

(assert (=> bs!389296 (= lambda!66112 lambda!66084)))

(declare-fun bs!389297 () Bool)

(assert (= bs!389297 (and d!462823 d!462737)))

(assert (=> bs!389297 (= lambda!66112 lambda!66093)))

(declare-fun bs!389298 () Bool)

(assert (= bs!389298 (and d!462823 d!462715)))

(assert (=> bs!389298 (= lambda!66112 lambda!66091)))

(declare-fun bs!389299 () Bool)

(assert (= bs!389299 (and d!462823 d!462641)))

(assert (=> bs!389299 (= lambda!66112 lambda!66082)))

(declare-fun bs!389300 () Bool)

(assert (= bs!389300 (and d!462823 d!462743)))

(assert (=> bs!389300 (= lambda!66112 lambda!66094)))

(declare-fun bs!389301 () Bool)

(assert (= bs!389301 (and d!462823 d!462653)))

(assert (=> bs!389301 (= lambda!66112 lambda!66086)))

(declare-fun bs!389302 () Bool)

(assert (= bs!389302 (and d!462823 d!462611)))

(assert (=> bs!389302 (= lambda!66112 lambda!66081)))

(declare-fun bs!389303 () Bool)

(assert (= bs!389303 (and d!462823 d!462597)))

(assert (=> bs!389303 (= lambda!66112 lambda!66074)))

(declare-fun bs!389304 () Bool)

(assert (= bs!389304 (and d!462823 d!462773)))

(assert (=> bs!389304 (= lambda!66112 lambda!66098)))

(declare-fun bs!389305 () Bool)

(assert (= bs!389305 (and d!462823 d!462809)))

(assert (=> bs!389305 (= lambda!66112 lambda!66108)))

(declare-fun bs!389306 () Bool)

(assert (= bs!389306 (and d!462823 d!462771)))

(assert (=> bs!389306 (= lambda!66112 lambda!66097)))

(declare-fun bs!389307 () Bool)

(assert (= bs!389307 (and d!462823 d!462645)))

(assert (=> bs!389307 (= lambda!66112 lambda!66083)))

(declare-fun bs!389308 () Bool)

(assert (= bs!389308 (and d!462823 d!462675)))

(assert (=> bs!389308 (= lambda!66112 lambda!66087)))

(assert (=> d!462823 (= (inv!22268 setElem!11272) (forall!3929 (exprs!1317 setElem!11272) lambda!66112))))

(declare-fun bs!389309 () Bool)

(assert (= bs!389309 d!462823))

(declare-fun m!1834299 () Bool)

(assert (=> bs!389309 m!1834299))

(assert (=> setNonEmpty!11272 d!462823))

(declare-fun bs!389310 () Bool)

(declare-fun d!462825 () Bool)

(assert (= bs!389310 (and d!462825 d!462811)))

(declare-fun lambda!66113 () Int)

(assert (=> bs!389310 (= lambda!66113 lambda!66109)))

(declare-fun bs!389311 () Bool)

(assert (= bs!389311 (and d!462825 d!462713)))

(assert (=> bs!389311 (= lambda!66113 lambda!66090)))

(declare-fun bs!389312 () Bool)

(assert (= bs!389312 (and d!462825 d!462781)))

(assert (=> bs!389312 (= lambda!66113 lambda!66103)))

(declare-fun bs!389313 () Bool)

(assert (= bs!389313 (and d!462825 d!462779)))

(assert (=> bs!389313 (= lambda!66113 lambda!66102)))

(declare-fun bs!389314 () Bool)

(assert (= bs!389314 (and d!462825 d!462691)))

(assert (=> bs!389314 (= lambda!66113 lambda!66088)))

(declare-fun bs!389315 () Bool)

(assert (= bs!389315 (and d!462825 d!462735)))

(assert (=> bs!389315 (= lambda!66113 lambda!66092)))

(declare-fun bs!389316 () Bool)

(assert (= bs!389316 (and d!462825 d!462649)))

(assert (=> bs!389316 (= lambda!66113 lambda!66085)))

(declare-fun bs!389317 () Bool)

(assert (= bs!389317 (and d!462825 d!462803)))

(assert (=> bs!389317 (= lambda!66113 lambda!66107)))

(declare-fun bs!389318 () Bool)

(assert (= bs!389318 (and d!462825 d!462747)))

(assert (=> bs!389318 (= lambda!66113 lambda!66095)))

(declare-fun bs!389319 () Bool)

(assert (= bs!389319 (and d!462825 d!462821)))

(assert (=> bs!389319 (= lambda!66113 lambda!66111)))

(declare-fun bs!389320 () Bool)

(assert (= bs!389320 (and d!462825 d!462699)))

(assert (=> bs!389320 (= lambda!66113 lambda!66089)))

(declare-fun bs!389321 () Bool)

(assert (= bs!389321 (and d!462825 d!462647)))

(assert (=> bs!389321 (= lambda!66113 lambda!66084)))

(declare-fun bs!389322 () Bool)

(assert (= bs!389322 (and d!462825 d!462737)))

(assert (=> bs!389322 (= lambda!66113 lambda!66093)))

(declare-fun bs!389323 () Bool)

(assert (= bs!389323 (and d!462825 d!462715)))

(assert (=> bs!389323 (= lambda!66113 lambda!66091)))

(declare-fun bs!389324 () Bool)

(assert (= bs!389324 (and d!462825 d!462641)))

(assert (=> bs!389324 (= lambda!66113 lambda!66082)))

(declare-fun bs!389325 () Bool)

(assert (= bs!389325 (and d!462825 d!462743)))

(assert (=> bs!389325 (= lambda!66113 lambda!66094)))

(declare-fun bs!389326 () Bool)

(assert (= bs!389326 (and d!462825 d!462653)))

(assert (=> bs!389326 (= lambda!66113 lambda!66086)))

(declare-fun bs!389327 () Bool)

(assert (= bs!389327 (and d!462825 d!462823)))

(assert (=> bs!389327 (= lambda!66113 lambda!66112)))

(declare-fun bs!389328 () Bool)

(assert (= bs!389328 (and d!462825 d!462611)))

(assert (=> bs!389328 (= lambda!66113 lambda!66081)))

(declare-fun bs!389329 () Bool)

(assert (= bs!389329 (and d!462825 d!462597)))

(assert (=> bs!389329 (= lambda!66113 lambda!66074)))

(declare-fun bs!389330 () Bool)

(assert (= bs!389330 (and d!462825 d!462773)))

(assert (=> bs!389330 (= lambda!66113 lambda!66098)))

(declare-fun bs!389331 () Bool)

(assert (= bs!389331 (and d!462825 d!462809)))

(assert (=> bs!389331 (= lambda!66113 lambda!66108)))

(declare-fun bs!389332 () Bool)

(assert (= bs!389332 (and d!462825 d!462771)))

(assert (=> bs!389332 (= lambda!66113 lambda!66097)))

(declare-fun bs!389333 () Bool)

(assert (= bs!389333 (and d!462825 d!462645)))

(assert (=> bs!389333 (= lambda!66113 lambda!66083)))

(declare-fun bs!389334 () Bool)

(assert (= bs!389334 (and d!462825 d!462675)))

(assert (=> bs!389334 (= lambda!66113 lambda!66087)))

(assert (=> d!462825 (= (inv!22268 (_1!9685 (_1!9686 (h!22354 mapDefault!8676)))) (forall!3929 (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapDefault!8676)))) lambda!66113))))

(declare-fun bs!389335 () Bool)

(assert (= bs!389335 d!462825))

(declare-fun m!1834301 () Bool)

(assert (=> bs!389335 m!1834301))

(assert (=> b!1562240 d!462825))

(declare-fun d!462827 () Bool)

(declare-fun res!696688 () Bool)

(declare-fun e!1003597 () Bool)

(assert (=> d!462827 (=> (not res!696688) (not e!1003597))))

(assert (=> d!462827 (= res!696688 (<= (size!13762 (list!6523 (xs!8389 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) 512))))

(assert (=> d!462827 (= (inv!22267 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) e!1003597)))

(declare-fun b!1562788 () Bool)

(declare-fun res!696689 () Bool)

(assert (=> b!1562788 (=> (not res!696689) (not e!1003597))))

(assert (=> b!1562788 (= res!696689 (= (csize!11409 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) (size!13762 (list!6523 (xs!8389 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))))

(declare-fun b!1562789 () Bool)

(assert (=> b!1562789 (= e!1003597 (and (> (csize!11409 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) 0) (<= (csize!11409 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) 512)))))

(assert (= (and d!462827 res!696688) b!1562788))

(assert (= (and b!1562788 res!696689) b!1562789))

(declare-fun m!1834303 () Bool)

(assert (=> d!462827 m!1834303))

(assert (=> d!462827 m!1834303))

(declare-fun m!1834305 () Bool)

(assert (=> d!462827 m!1834305))

(assert (=> b!1562788 m!1834303))

(assert (=> b!1562788 m!1834303))

(assert (=> b!1562788 m!1834305))

(assert (=> b!1562193 d!462827))

(declare-fun b!1562793 () Bool)

(declare-fun e!1003599 () List!17019)

(assert (=> b!1562793 (= e!1003599 (++!4424 (list!6522 (left!13749 (c!253235 input!1676))) (list!6522 (right!14079 (c!253235 input!1676)))))))

(declare-fun d!462829 () Bool)

(declare-fun c!253365 () Bool)

(assert (=> d!462829 (= c!253365 ((_ is Empty!5589) (c!253235 input!1676)))))

(declare-fun e!1003598 () List!17019)

(assert (=> d!462829 (= (list!6522 (c!253235 input!1676)) e!1003598)))

(declare-fun b!1562790 () Bool)

(assert (=> b!1562790 (= e!1003598 Nil!16951)))

(declare-fun b!1562792 () Bool)

(assert (=> b!1562792 (= e!1003599 (list!6523 (xs!8389 (c!253235 input!1676))))))

(declare-fun b!1562791 () Bool)

(assert (=> b!1562791 (= e!1003598 e!1003599)))

(declare-fun c!253366 () Bool)

(assert (=> b!1562791 (= c!253366 ((_ is Leaf!8284) (c!253235 input!1676)))))

(assert (= (and d!462829 c!253365) b!1562790))

(assert (= (and d!462829 (not c!253365)) b!1562791))

(assert (= (and b!1562791 c!253366) b!1562792))

(assert (= (and b!1562791 (not c!253366)) b!1562793))

(declare-fun m!1834307 () Bool)

(assert (=> b!1562793 m!1834307))

(declare-fun m!1834309 () Bool)

(assert (=> b!1562793 m!1834309))

(assert (=> b!1562793 m!1834307))

(assert (=> b!1562793 m!1834309))

(declare-fun m!1834311 () Bool)

(assert (=> b!1562793 m!1834311))

(assert (=> b!1562792 m!1833762))

(assert (=> d!462495 d!462829))

(assert (=> bm!102307 d!462613))

(assert (=> b!1562085 d!462721))

(declare-fun d!462831 () Bool)

(assert (=> d!462831 (= (inv!22261 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))) (isBalanced!1654 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))))

(declare-fun bs!389336 () Bool)

(assert (= bs!389336 d!462831))

(declare-fun m!1834313 () Bool)

(assert (=> bs!389336 m!1834313))

(assert (=> tb!87403 d!462831))

(declare-fun d!462833 () Bool)

(declare-fun c!253367 () Bool)

(assert (=> d!462833 (= c!253367 ((_ is Node!5589) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))))

(declare-fun e!1003600 () Bool)

(assert (=> d!462833 (= (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))) e!1003600)))

(declare-fun b!1562794 () Bool)

(assert (=> b!1562794 (= e!1003600 (inv!22266 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))))

(declare-fun b!1562795 () Bool)

(declare-fun e!1003601 () Bool)

(assert (=> b!1562795 (= e!1003600 e!1003601)))

(declare-fun res!696690 () Bool)

(assert (=> b!1562795 (= res!696690 (not ((_ is Leaf!8284) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))))))

(assert (=> b!1562795 (=> res!696690 e!1003601)))

(declare-fun b!1562796 () Bool)

(assert (=> b!1562796 (= e!1003601 (inv!22267 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))))

(assert (= (and d!462833 c!253367) b!1562794))

(assert (= (and d!462833 (not c!253367)) b!1562795))

(assert (= (and b!1562795 (not res!696690)) b!1562796))

(declare-fun m!1834315 () Bool)

(assert (=> b!1562794 m!1834315))

(declare-fun m!1834317 () Bool)

(assert (=> b!1562796 m!1834317))

(assert (=> b!1562352 d!462833))

(declare-fun bs!389337 () Bool)

(declare-fun d!462835 () Bool)

(assert (= bs!389337 (and d!462835 d!462523)))

(declare-fun lambda!66116 () Int)

(assert (=> bs!389337 (= lambda!66116 lambda!66071)))

(assert (=> d!462835 true))

(assert (=> d!462835 (< (dynLambda!7556 order!10045 (toValue!4352 (transformation!2971 rule!240))) (dynLambda!7560 order!10051 lambda!66116))))

(assert (=> d!462835 (= (equivClasses!1067 (toChars!4211 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))) (Forall2!491 lambda!66116))))

(declare-fun bs!389338 () Bool)

(assert (= bs!389338 d!462835))

(declare-fun m!1834319 () Bool)

(assert (=> bs!389338 m!1834319))

(assert (=> b!1562208 d!462835))

(declare-fun bs!389339 () Bool)

(declare-fun d!462837 () Bool)

(assert (= bs!389339 (and d!462837 d!462811)))

(declare-fun lambda!66117 () Int)

(assert (=> bs!389339 (= lambda!66117 lambda!66109)))

(declare-fun bs!389340 () Bool)

(assert (= bs!389340 (and d!462837 d!462713)))

(assert (=> bs!389340 (= lambda!66117 lambda!66090)))

(declare-fun bs!389341 () Bool)

(assert (= bs!389341 (and d!462837 d!462781)))

(assert (=> bs!389341 (= lambda!66117 lambda!66103)))

(declare-fun bs!389342 () Bool)

(assert (= bs!389342 (and d!462837 d!462779)))

(assert (=> bs!389342 (= lambda!66117 lambda!66102)))

(declare-fun bs!389343 () Bool)

(assert (= bs!389343 (and d!462837 d!462735)))

(assert (=> bs!389343 (= lambda!66117 lambda!66092)))

(declare-fun bs!389344 () Bool)

(assert (= bs!389344 (and d!462837 d!462649)))

(assert (=> bs!389344 (= lambda!66117 lambda!66085)))

(declare-fun bs!389345 () Bool)

(assert (= bs!389345 (and d!462837 d!462803)))

(assert (=> bs!389345 (= lambda!66117 lambda!66107)))

(declare-fun bs!389346 () Bool)

(assert (= bs!389346 (and d!462837 d!462747)))

(assert (=> bs!389346 (= lambda!66117 lambda!66095)))

(declare-fun bs!389347 () Bool)

(assert (= bs!389347 (and d!462837 d!462821)))

(assert (=> bs!389347 (= lambda!66117 lambda!66111)))

(declare-fun bs!389348 () Bool)

(assert (= bs!389348 (and d!462837 d!462699)))

(assert (=> bs!389348 (= lambda!66117 lambda!66089)))

(declare-fun bs!389349 () Bool)

(assert (= bs!389349 (and d!462837 d!462647)))

(assert (=> bs!389349 (= lambda!66117 lambda!66084)))

(declare-fun bs!389350 () Bool)

(assert (= bs!389350 (and d!462837 d!462737)))

(assert (=> bs!389350 (= lambda!66117 lambda!66093)))

(declare-fun bs!389351 () Bool)

(assert (= bs!389351 (and d!462837 d!462715)))

(assert (=> bs!389351 (= lambda!66117 lambda!66091)))

(declare-fun bs!389352 () Bool)

(assert (= bs!389352 (and d!462837 d!462641)))

(assert (=> bs!389352 (= lambda!66117 lambda!66082)))

(declare-fun bs!389353 () Bool)

(assert (= bs!389353 (and d!462837 d!462743)))

(assert (=> bs!389353 (= lambda!66117 lambda!66094)))

(declare-fun bs!389354 () Bool)

(assert (= bs!389354 (and d!462837 d!462653)))

(assert (=> bs!389354 (= lambda!66117 lambda!66086)))

(declare-fun bs!389355 () Bool)

(assert (= bs!389355 (and d!462837 d!462823)))

(assert (=> bs!389355 (= lambda!66117 lambda!66112)))

(declare-fun bs!389356 () Bool)

(assert (= bs!389356 (and d!462837 d!462611)))

(assert (=> bs!389356 (= lambda!66117 lambda!66081)))

(declare-fun bs!389357 () Bool)

(assert (= bs!389357 (and d!462837 d!462597)))

(assert (=> bs!389357 (= lambda!66117 lambda!66074)))

(declare-fun bs!389358 () Bool)

(assert (= bs!389358 (and d!462837 d!462691)))

(assert (=> bs!389358 (= lambda!66117 lambda!66088)))

(declare-fun bs!389359 () Bool)

(assert (= bs!389359 (and d!462837 d!462825)))

(assert (=> bs!389359 (= lambda!66117 lambda!66113)))

(declare-fun bs!389360 () Bool)

(assert (= bs!389360 (and d!462837 d!462773)))

(assert (=> bs!389360 (= lambda!66117 lambda!66098)))

(declare-fun bs!389361 () Bool)

(assert (= bs!389361 (and d!462837 d!462809)))

(assert (=> bs!389361 (= lambda!66117 lambda!66108)))

(declare-fun bs!389362 () Bool)

(assert (= bs!389362 (and d!462837 d!462771)))

(assert (=> bs!389362 (= lambda!66117 lambda!66097)))

(declare-fun bs!389363 () Bool)

(assert (= bs!389363 (and d!462837 d!462645)))

(assert (=> bs!389363 (= lambda!66117 lambda!66083)))

(declare-fun bs!389364 () Bool)

(assert (= bs!389364 (and d!462837 d!462675)))

(assert (=> bs!389364 (= lambda!66117 lambda!66087)))

(assert (=> d!462837 (= (inv!22268 (_1!9685 (_1!9686 (h!22354 mapDefault!8684)))) (forall!3929 (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapDefault!8684)))) lambda!66117))))

(declare-fun bs!389365 () Bool)

(assert (= bs!389365 d!462837))

(declare-fun m!1834321 () Bool)

(assert (=> bs!389365 m!1834321))

(assert (=> b!1562298 d!462837))

(declare-fun d!462839 () Bool)

(declare-fun c!253368 () Bool)

(assert (=> d!462839 (= c!253368 ((_ is Node!5589) (left!13749 (c!253235 totalInput!568))))))

(declare-fun e!1003604 () Bool)

(assert (=> d!462839 (= (inv!22260 (left!13749 (c!253235 totalInput!568))) e!1003604)))

(declare-fun b!1562801 () Bool)

(assert (=> b!1562801 (= e!1003604 (inv!22266 (left!13749 (c!253235 totalInput!568))))))

(declare-fun b!1562802 () Bool)

(declare-fun e!1003605 () Bool)

(assert (=> b!1562802 (= e!1003604 e!1003605)))

(declare-fun res!696693 () Bool)

(assert (=> b!1562802 (= res!696693 (not ((_ is Leaf!8284) (left!13749 (c!253235 totalInput!568)))))))

(assert (=> b!1562802 (=> res!696693 e!1003605)))

(declare-fun b!1562803 () Bool)

(assert (=> b!1562803 (= e!1003605 (inv!22267 (left!13749 (c!253235 totalInput!568))))))

(assert (= (and d!462839 c!253368) b!1562801))

(assert (= (and d!462839 (not c!253368)) b!1562802))

(assert (= (and b!1562802 (not res!696693)) b!1562803))

(declare-fun m!1834323 () Bool)

(assert (=> b!1562801 m!1834323))

(declare-fun m!1834325 () Bool)

(assert (=> b!1562803 m!1834325))

(assert (=> b!1562250 d!462839))

(declare-fun d!462841 () Bool)

(declare-fun c!253369 () Bool)

(assert (=> d!462841 (= c!253369 ((_ is Node!5589) (right!14079 (c!253235 totalInput!568))))))

(declare-fun e!1003606 () Bool)

(assert (=> d!462841 (= (inv!22260 (right!14079 (c!253235 totalInput!568))) e!1003606)))

(declare-fun b!1562804 () Bool)

(assert (=> b!1562804 (= e!1003606 (inv!22266 (right!14079 (c!253235 totalInput!568))))))

(declare-fun b!1562805 () Bool)

(declare-fun e!1003607 () Bool)

(assert (=> b!1562805 (= e!1003606 e!1003607)))

(declare-fun res!696694 () Bool)

(assert (=> b!1562805 (= res!696694 (not ((_ is Leaf!8284) (right!14079 (c!253235 totalInput!568)))))))

(assert (=> b!1562805 (=> res!696694 e!1003607)))

(declare-fun b!1562806 () Bool)

(assert (=> b!1562806 (= e!1003607 (inv!22267 (right!14079 (c!253235 totalInput!568))))))

(assert (= (and d!462841 c!253369) b!1562804))

(assert (= (and d!462841 (not c!253369)) b!1562805))

(assert (= (and b!1562805 (not res!696694)) b!1562806))

(declare-fun m!1834327 () Bool)

(assert (=> b!1562804 m!1834327))

(declare-fun m!1834329 () Bool)

(assert (=> b!1562806 m!1834329))

(assert (=> b!1562250 d!462841))

(declare-fun bs!389366 () Bool)

(declare-fun d!462843 () Bool)

(assert (= bs!389366 (and d!462843 d!462811)))

(declare-fun lambda!66118 () Int)

(assert (=> bs!389366 (= lambda!66118 lambda!66109)))

(declare-fun bs!389367 () Bool)

(assert (= bs!389367 (and d!462843 d!462713)))

(assert (=> bs!389367 (= lambda!66118 lambda!66090)))

(declare-fun bs!389368 () Bool)

(assert (= bs!389368 (and d!462843 d!462781)))

(assert (=> bs!389368 (= lambda!66118 lambda!66103)))

(declare-fun bs!389369 () Bool)

(assert (= bs!389369 (and d!462843 d!462779)))

(assert (=> bs!389369 (= lambda!66118 lambda!66102)))

(declare-fun bs!389370 () Bool)

(assert (= bs!389370 (and d!462843 d!462735)))

(assert (=> bs!389370 (= lambda!66118 lambda!66092)))

(declare-fun bs!389371 () Bool)

(assert (= bs!389371 (and d!462843 d!462649)))

(assert (=> bs!389371 (= lambda!66118 lambda!66085)))

(declare-fun bs!389372 () Bool)

(assert (= bs!389372 (and d!462843 d!462803)))

(assert (=> bs!389372 (= lambda!66118 lambda!66107)))

(declare-fun bs!389373 () Bool)

(assert (= bs!389373 (and d!462843 d!462747)))

(assert (=> bs!389373 (= lambda!66118 lambda!66095)))

(declare-fun bs!389374 () Bool)

(assert (= bs!389374 (and d!462843 d!462699)))

(assert (=> bs!389374 (= lambda!66118 lambda!66089)))

(declare-fun bs!389375 () Bool)

(assert (= bs!389375 (and d!462843 d!462647)))

(assert (=> bs!389375 (= lambda!66118 lambda!66084)))

(declare-fun bs!389376 () Bool)

(assert (= bs!389376 (and d!462843 d!462737)))

(assert (=> bs!389376 (= lambda!66118 lambda!66093)))

(declare-fun bs!389377 () Bool)

(assert (= bs!389377 (and d!462843 d!462715)))

(assert (=> bs!389377 (= lambda!66118 lambda!66091)))

(declare-fun bs!389378 () Bool)

(assert (= bs!389378 (and d!462843 d!462641)))

(assert (=> bs!389378 (= lambda!66118 lambda!66082)))

(declare-fun bs!389379 () Bool)

(assert (= bs!389379 (and d!462843 d!462743)))

(assert (=> bs!389379 (= lambda!66118 lambda!66094)))

(declare-fun bs!389380 () Bool)

(assert (= bs!389380 (and d!462843 d!462653)))

(assert (=> bs!389380 (= lambda!66118 lambda!66086)))

(declare-fun bs!389381 () Bool)

(assert (= bs!389381 (and d!462843 d!462823)))

(assert (=> bs!389381 (= lambda!66118 lambda!66112)))

(declare-fun bs!389382 () Bool)

(assert (= bs!389382 (and d!462843 d!462611)))

(assert (=> bs!389382 (= lambda!66118 lambda!66081)))

(declare-fun bs!389383 () Bool)

(assert (= bs!389383 (and d!462843 d!462597)))

(assert (=> bs!389383 (= lambda!66118 lambda!66074)))

(declare-fun bs!389384 () Bool)

(assert (= bs!389384 (and d!462843 d!462691)))

(assert (=> bs!389384 (= lambda!66118 lambda!66088)))

(declare-fun bs!389385 () Bool)

(assert (= bs!389385 (and d!462843 d!462825)))

(assert (=> bs!389385 (= lambda!66118 lambda!66113)))

(declare-fun bs!389386 () Bool)

(assert (= bs!389386 (and d!462843 d!462773)))

(assert (=> bs!389386 (= lambda!66118 lambda!66098)))

(declare-fun bs!389387 () Bool)

(assert (= bs!389387 (and d!462843 d!462809)))

(assert (=> bs!389387 (= lambda!66118 lambda!66108)))

(declare-fun bs!389388 () Bool)

(assert (= bs!389388 (and d!462843 d!462837)))

(assert (=> bs!389388 (= lambda!66118 lambda!66117)))

(declare-fun bs!389389 () Bool)

(assert (= bs!389389 (and d!462843 d!462821)))

(assert (=> bs!389389 (= lambda!66118 lambda!66111)))

(declare-fun bs!389390 () Bool)

(assert (= bs!389390 (and d!462843 d!462771)))

(assert (=> bs!389390 (= lambda!66118 lambda!66097)))

(declare-fun bs!389391 () Bool)

(assert (= bs!389391 (and d!462843 d!462645)))

(assert (=> bs!389391 (= lambda!66118 lambda!66083)))

(declare-fun bs!389392 () Bool)

(assert (= bs!389392 (and d!462843 d!462675)))

(assert (=> bs!389392 (= lambda!66118 lambda!66087)))

(assert (=> d!462843 (= (inv!22268 (_1!9685 (_1!9686 (h!22354 mapValue!8684)))) (forall!3929 (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapValue!8684)))) lambda!66118))))

(declare-fun bs!389393 () Bool)

(assert (= bs!389393 d!462843))

(declare-fun m!1834331 () Bool)

(assert (=> bs!389393 m!1834331))

(assert (=> b!1562295 d!462843))

(declare-fun b!1562810 () Bool)

(declare-fun e!1003609 () List!17019)

(assert (=> b!1562810 (= e!1003609 (++!4424 (list!6522 (left!13749 (c!253235 totalInput!568))) (list!6522 (right!14079 (c!253235 totalInput!568)))))))

(declare-fun d!462845 () Bool)

(declare-fun c!253370 () Bool)

(assert (=> d!462845 (= c!253370 ((_ is Empty!5589) (c!253235 totalInput!568)))))

(declare-fun e!1003608 () List!17019)

(assert (=> d!462845 (= (list!6522 (c!253235 totalInput!568)) e!1003608)))

(declare-fun b!1562807 () Bool)

(assert (=> b!1562807 (= e!1003608 Nil!16951)))

(declare-fun b!1562809 () Bool)

(assert (=> b!1562809 (= e!1003609 (list!6523 (xs!8389 (c!253235 totalInput!568))))))

(declare-fun b!1562808 () Bool)

(assert (=> b!1562808 (= e!1003608 e!1003609)))

(declare-fun c!253371 () Bool)

(assert (=> b!1562808 (= c!253371 ((_ is Leaf!8284) (c!253235 totalInput!568)))))

(assert (= (and d!462845 c!253370) b!1562807))

(assert (= (and d!462845 (not c!253370)) b!1562808))

(assert (= (and b!1562808 c!253371) b!1562809))

(assert (= (and b!1562808 (not c!253371)) b!1562810))

(declare-fun m!1834333 () Bool)

(assert (=> b!1562810 m!1834333))

(declare-fun m!1834335 () Bool)

(assert (=> b!1562810 m!1834335))

(assert (=> b!1562810 m!1834333))

(assert (=> b!1562810 m!1834335))

(declare-fun m!1834337 () Bool)

(assert (=> b!1562810 m!1834337))

(assert (=> b!1562809 m!1833758))

(assert (=> d!462493 d!462845))

(assert (=> b!1562190 d!462509))

(assert (=> b!1562190 d!462511))

(assert (=> b!1562190 d!462717))

(declare-fun d!462847 () Bool)

(assert (=> d!462847 (= (apply!4123 (transformation!2971 rule!240) (seqFromList!1787 (_1!9695 lt!541185))) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (seqFromList!1787 (_1!9695 lt!541185))))))

(declare-fun b_lambda!49183 () Bool)

(assert (=> (not b_lambda!49183) (not d!462847)))

(declare-fun t!141590 () Bool)

(declare-fun tb!87411 () Bool)

(assert (=> (and b!1562013 (= (toValue!4352 (transformation!2971 rule!240)) (toValue!4352 (transformation!2971 rule!240))) t!141590) tb!87411))

(declare-fun result!105742 () Bool)

(assert (=> tb!87411 (= result!105742 (inv!21 (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (seqFromList!1787 (_1!9695 lt!541185)))))))

(declare-fun m!1834339 () Bool)

(assert (=> tb!87411 m!1834339))

(assert (=> d!462847 t!141590))

(declare-fun b_and!109091 () Bool)

(assert (= b_and!109075 (and (=> t!141590 result!105742) b_and!109091)))

(assert (=> d!462847 m!1833604))

(declare-fun m!1834341 () Bool)

(assert (=> d!462847 m!1834341))

(assert (=> b!1562190 d!462847))

(assert (=> b!1562190 d!462517))

(declare-fun d!462849 () Bool)

(declare-fun lt!541323 () Int)

(assert (=> d!462849 (= lt!541323 (size!13762 (list!6521 (seqFromList!1787 (_1!9695 lt!541185)))))))

(assert (=> d!462849 (= lt!541323 (size!13764 (c!253235 (seqFromList!1787 (_1!9695 lt!541185)))))))

(assert (=> d!462849 (= (size!13763 (seqFromList!1787 (_1!9695 lt!541185))) lt!541323)))

(declare-fun bs!389394 () Bool)

(assert (= bs!389394 d!462849))

(assert (=> bs!389394 m!1833604))

(declare-fun m!1834343 () Bool)

(assert (=> bs!389394 m!1834343))

(assert (=> bs!389394 m!1834343))

(declare-fun m!1834345 () Bool)

(assert (=> bs!389394 m!1834345))

(declare-fun m!1834347 () Bool)

(assert (=> bs!389394 m!1834347))

(assert (=> b!1562190 d!462849))

(assert (=> b!1562190 d!462533))

(declare-fun d!462851 () Bool)

(assert (=> d!462851 (= (seqFromList!1787 (_1!9695 lt!541185)) (fromListB!771 (_1!9695 lt!541185)))))

(declare-fun bs!389395 () Bool)

(assert (= bs!389395 d!462851))

(declare-fun m!1834349 () Bool)

(assert (=> bs!389395 m!1834349))

(assert (=> b!1562190 d!462851))

(declare-fun bs!389396 () Bool)

(declare-fun d!462853 () Bool)

(assert (= bs!389396 (and d!462853 b!1561979)))

(declare-fun lambda!66121 () Int)

(assert (=> bs!389396 (= lambda!66121 lambda!66068)))

(declare-fun bs!389397 () Bool)

(assert (= bs!389397 (and d!462853 d!462785)))

(assert (=> bs!389397 (= lambda!66121 lambda!66106)))

(declare-fun b!1562815 () Bool)

(declare-fun e!1003613 () Bool)

(assert (=> b!1562815 (= e!1003613 true)))

(assert (=> d!462853 e!1003613))

(assert (= d!462853 b!1562815))

(assert (=> b!1562815 (< (dynLambda!7556 order!10045 (toValue!4352 (transformation!2971 rule!240))) (dynLambda!7557 order!10047 lambda!66121))))

(assert (=> b!1562815 (< (dynLambda!7558 order!10049 (toChars!4211 (transformation!2971 rule!240))) (dynLambda!7557 order!10047 lambda!66121))))

(assert (=> d!462853 (= (list!6521 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (seqFromList!1787 (_1!9695 lt!541185))))) (list!6521 (seqFromList!1787 (_1!9695 lt!541185))))))

(declare-fun lt!541326 () Unit!26158)

(assert (=> d!462853 (= lt!541326 (ForallOf!224 lambda!66121 (seqFromList!1787 (_1!9695 lt!541185))))))

(assert (=> d!462853 (= (lemmaSemiInverse!374 (transformation!2971 rule!240) (seqFromList!1787 (_1!9695 lt!541185))) lt!541326)))

(declare-fun b_lambda!49185 () Bool)

(assert (=> (not b_lambda!49185) (not d!462853)))

(declare-fun t!141592 () Bool)

(declare-fun tb!87413 () Bool)

(assert (=> (and b!1562013 (= (toChars!4211 (transformation!2971 rule!240)) (toChars!4211 (transformation!2971 rule!240))) t!141592) tb!87413))

(declare-fun b!1562816 () Bool)

(declare-fun e!1003614 () Bool)

(declare-fun tp!460141 () Bool)

(assert (=> b!1562816 (= e!1003614 (and (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (seqFromList!1787 (_1!9695 lt!541185)))))) tp!460141))))

(declare-fun result!105744 () Bool)

(assert (=> tb!87413 (= result!105744 (and (inv!22261 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (seqFromList!1787 (_1!9695 lt!541185))))) e!1003614))))

(assert (= tb!87413 b!1562816))

(declare-fun m!1834351 () Bool)

(assert (=> b!1562816 m!1834351))

(declare-fun m!1834353 () Bool)

(assert (=> tb!87413 m!1834353))

(assert (=> d!462853 t!141592))

(declare-fun b_and!109093 () Bool)

(assert (= b_and!109089 (and (=> t!141592 result!105744) b_and!109093)))

(declare-fun b_lambda!49187 () Bool)

(assert (=> (not b_lambda!49187) (not d!462853)))

(assert (=> d!462853 t!141590))

(declare-fun b_and!109095 () Bool)

(assert (= b_and!109091 (and (=> t!141590 result!105742) b_and!109095)))

(assert (=> d!462853 m!1833604))

(assert (=> d!462853 m!1834341))

(assert (=> d!462853 m!1833604))

(assert (=> d!462853 m!1834343))

(assert (=> d!462853 m!1834341))

(declare-fun m!1834355 () Bool)

(assert (=> d!462853 m!1834355))

(assert (=> d!462853 m!1834355))

(declare-fun m!1834357 () Bool)

(assert (=> d!462853 m!1834357))

(assert (=> d!462853 m!1833604))

(declare-fun m!1834359 () Bool)

(assert (=> d!462853 m!1834359))

(assert (=> b!1562190 d!462853))

(declare-fun d!462855 () Bool)

(assert (=> d!462855 (= (list!6521 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))) (list!6522 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))))))

(declare-fun bs!389398 () Bool)

(assert (= bs!389398 d!462855))

(declare-fun m!1834361 () Bool)

(assert (=> bs!389398 m!1834361))

(assert (=> bs!388952 d!462855))

(assert (=> bs!388952 d!462527))

(assert (=> d!462551 d!462815))

(declare-fun d!462857 () Bool)

(assert (=> d!462857 (isPrefix!1270 lt!541046 lt!541046)))

(declare-fun lt!541329 () Unit!26158)

(declare-fun choose!9333 (List!17019 List!17019) Unit!26158)

(assert (=> d!462857 (= lt!541329 (choose!9333 lt!541046 lt!541046))))

(assert (=> d!462857 (= (lemmaIsPrefixRefl!900 lt!541046 lt!541046) lt!541329)))

(declare-fun bs!389399 () Bool)

(assert (= bs!389399 d!462857))

(assert (=> bs!389399 m!1833562))

(declare-fun m!1834363 () Bool)

(assert (=> bs!389399 m!1834363))

(assert (=> bm!102303 d!462857))

(declare-fun b!1562818 () Bool)

(declare-fun e!1003616 () List!17019)

(assert (=> b!1562818 (= e!1003616 (Cons!16951 (h!22352 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))) (++!4424 (t!141568 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))) (_2!9687 (get!4876 lt!541186)))))))

(declare-fun b!1562819 () Bool)

(declare-fun res!696696 () Bool)

(declare-fun e!1003615 () Bool)

(assert (=> b!1562819 (=> (not res!696696) (not e!1003615))))

(declare-fun lt!541330 () List!17019)

(assert (=> b!1562819 (= res!696696 (= (size!13762 lt!541330) (+ (size!13762 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))) (size!13762 (_2!9687 (get!4876 lt!541186))))))))

(declare-fun d!462859 () Bool)

(assert (=> d!462859 e!1003615))

(declare-fun res!696695 () Bool)

(assert (=> d!462859 (=> (not res!696695) (not e!1003615))))

(assert (=> d!462859 (= res!696695 (= (content!2343 lt!541330) ((_ map or) (content!2343 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))) (content!2343 (_2!9687 (get!4876 lt!541186))))))))

(assert (=> d!462859 (= lt!541330 e!1003616)))

(declare-fun c!253373 () Bool)

(assert (=> d!462859 (= c!253373 ((_ is Nil!16951) (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186))))))))

(assert (=> d!462859 (= (++!4424 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186)))) (_2!9687 (get!4876 lt!541186))) lt!541330)))

(declare-fun b!1562820 () Bool)

(assert (=> b!1562820 (= e!1003615 (or (not (= (_2!9687 (get!4876 lt!541186)) Nil!16951)) (= lt!541330 (list!6521 (charsOf!1655 (_1!9687 (get!4876 lt!541186)))))))))

(declare-fun b!1562817 () Bool)

(assert (=> b!1562817 (= e!1003616 (_2!9687 (get!4876 lt!541186)))))

(assert (= (and d!462859 c!253373) b!1562817))

(assert (= (and d!462859 (not c!253373)) b!1562818))

(assert (= (and d!462859 res!696695) b!1562819))

(assert (= (and b!1562819 res!696696) b!1562820))

(declare-fun m!1834365 () Bool)

(assert (=> b!1562818 m!1834365))

(declare-fun m!1834367 () Bool)

(assert (=> b!1562819 m!1834367))

(assert (=> b!1562819 m!1833590))

(declare-fun m!1834369 () Bool)

(assert (=> b!1562819 m!1834369))

(assert (=> b!1562819 m!1833594))

(declare-fun m!1834371 () Bool)

(assert (=> d!462859 m!1834371))

(assert (=> d!462859 m!1833590))

(declare-fun m!1834373 () Bool)

(assert (=> d!462859 m!1834373))

(declare-fun m!1834375 () Bool)

(assert (=> d!462859 m!1834375))

(assert (=> b!1562186 d!462859))

(assert (=> b!1562186 d!462709))

(assert (=> b!1562186 d!462711))

(assert (=> b!1562186 d!462663))

(declare-fun b!1562821 () Bool)

(declare-fun res!696697 () Bool)

(declare-fun e!1003618 () Bool)

(assert (=> b!1562821 (=> (not res!696697) (not e!1003618))))

(assert (=> b!1562821 (= res!696697 (<= (- (height!830 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) (height!830 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) 1))))

(declare-fun b!1562822 () Bool)

(declare-fun e!1003617 () Bool)

(assert (=> b!1562822 (= e!1003617 e!1003618)))

(declare-fun res!696700 () Bool)

(assert (=> b!1562822 (=> (not res!696700) (not e!1003618))))

(assert (=> b!1562822 (= res!696700 (<= (- 1) (- (height!830 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) (height!830 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))))

(declare-fun b!1562823 () Bool)

(declare-fun res!696702 () Bool)

(assert (=> b!1562823 (=> (not res!696702) (not e!1003618))))

(assert (=> b!1562823 (= res!696702 (isBalanced!1654 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(declare-fun d!462861 () Bool)

(declare-fun res!696698 () Bool)

(assert (=> d!462861 (=> res!696698 e!1003617)))

(assert (=> d!462861 (= res!696698 (not ((_ is Node!5589) (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(assert (=> d!462861 (= (isBalanced!1654 (c!253235 (totalInput!2504 cacheFurthestNullable!103))) e!1003617)))

(declare-fun b!1562824 () Bool)

(declare-fun res!696701 () Bool)

(assert (=> b!1562824 (=> (not res!696701) (not e!1003618))))

(assert (=> b!1562824 (= res!696701 (not (isEmpty!10173 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))))

(declare-fun b!1562825 () Bool)

(declare-fun res!696699 () Bool)

(assert (=> b!1562825 (=> (not res!696699) (not e!1003618))))

(assert (=> b!1562825 (= res!696699 (isBalanced!1654 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))))

(declare-fun b!1562826 () Bool)

(assert (=> b!1562826 (= e!1003618 (not (isEmpty!10173 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))))))

(assert (= (and d!462861 (not res!696698)) b!1562822))

(assert (= (and b!1562822 res!696700) b!1562821))

(assert (= (and b!1562821 res!696697) b!1562825))

(assert (= (and b!1562825 res!696699) b!1562823))

(assert (= (and b!1562823 res!696702) b!1562824))

(assert (= (and b!1562824 res!696701) b!1562826))

(assert (=> b!1562822 m!1833982))

(assert (=> b!1562822 m!1833984))

(assert (=> b!1562821 m!1833982))

(assert (=> b!1562821 m!1833984))

(declare-fun m!1834377 () Bool)

(assert (=> b!1562825 m!1834377))

(declare-fun m!1834379 () Bool)

(assert (=> b!1562826 m!1834379))

(declare-fun m!1834381 () Bool)

(assert (=> b!1562824 m!1834381))

(declare-fun m!1834383 () Bool)

(assert (=> b!1562823 m!1834383))

(assert (=> d!462499 d!462861))

(assert (=> d!462585 d!462785))

(declare-fun d!462863 () Bool)

(assert (=> d!462863 (= (valid!1489 (_4!463 lt!541171)) (validCacheMapFurthestNullable!85 (cache!2188 (_4!463 lt!541171)) (totalInput!2504 (_4!463 lt!541171))))))

(declare-fun bs!389400 () Bool)

(assert (= bs!389400 d!462863))

(declare-fun m!1834385 () Bool)

(assert (=> bs!389400 m!1834385))

(assert (=> b!1562162 d!462863))

(declare-fun b!1562830 () Bool)

(declare-fun e!1003620 () List!17019)

(assert (=> b!1562830 (= e!1003620 (++!4424 (list!6522 (left!13749 (c!253235 (_2!9688 lt!541058)))) (list!6522 (right!14079 (c!253235 (_2!9688 lt!541058))))))))

(declare-fun d!462865 () Bool)

(declare-fun c!253374 () Bool)

(assert (=> d!462865 (= c!253374 ((_ is Empty!5589) (c!253235 (_2!9688 lt!541058))))))

(declare-fun e!1003619 () List!17019)

(assert (=> d!462865 (= (list!6522 (c!253235 (_2!9688 lt!541058))) e!1003619)))

(declare-fun b!1562827 () Bool)

(assert (=> b!1562827 (= e!1003619 Nil!16951)))

(declare-fun b!1562829 () Bool)

(assert (=> b!1562829 (= e!1003620 (list!6523 (xs!8389 (c!253235 (_2!9688 lt!541058)))))))

(declare-fun b!1562828 () Bool)

(assert (=> b!1562828 (= e!1003619 e!1003620)))

(declare-fun c!253375 () Bool)

(assert (=> b!1562828 (= c!253375 ((_ is Leaf!8284) (c!253235 (_2!9688 lt!541058))))))

(assert (= (and d!462865 c!253374) b!1562827))

(assert (= (and d!462865 (not c!253374)) b!1562828))

(assert (= (and b!1562828 c!253375) b!1562829))

(assert (= (and b!1562828 (not c!253375)) b!1562830))

(declare-fun m!1834387 () Bool)

(assert (=> b!1562830 m!1834387))

(declare-fun m!1834389 () Bool)

(assert (=> b!1562830 m!1834389))

(assert (=> b!1562830 m!1834387))

(assert (=> b!1562830 m!1834389))

(declare-fun m!1834391 () Bool)

(assert (=> b!1562830 m!1834391))

(declare-fun m!1834393 () Bool)

(assert (=> b!1562829 m!1834393))

(assert (=> d!462503 d!462865))

(declare-fun bs!389401 () Bool)

(declare-fun d!462867 () Bool)

(assert (= bs!389401 (and d!462867 d!462811)))

(declare-fun lambda!66122 () Int)

(assert (=> bs!389401 (= lambda!66122 lambda!66109)))

(declare-fun bs!389402 () Bool)

(assert (= bs!389402 (and d!462867 d!462713)))

(assert (=> bs!389402 (= lambda!66122 lambda!66090)))

(declare-fun bs!389403 () Bool)

(assert (= bs!389403 (and d!462867 d!462781)))

(assert (=> bs!389403 (= lambda!66122 lambda!66103)))

(declare-fun bs!389404 () Bool)

(assert (= bs!389404 (and d!462867 d!462779)))

(assert (=> bs!389404 (= lambda!66122 lambda!66102)))

(declare-fun bs!389405 () Bool)

(assert (= bs!389405 (and d!462867 d!462735)))

(assert (=> bs!389405 (= lambda!66122 lambda!66092)))

(declare-fun bs!389406 () Bool)

(assert (= bs!389406 (and d!462867 d!462649)))

(assert (=> bs!389406 (= lambda!66122 lambda!66085)))

(declare-fun bs!389407 () Bool)

(assert (= bs!389407 (and d!462867 d!462803)))

(assert (=> bs!389407 (= lambda!66122 lambda!66107)))

(declare-fun bs!389408 () Bool)

(assert (= bs!389408 (and d!462867 d!462747)))

(assert (=> bs!389408 (= lambda!66122 lambda!66095)))

(declare-fun bs!389409 () Bool)

(assert (= bs!389409 (and d!462867 d!462699)))

(assert (=> bs!389409 (= lambda!66122 lambda!66089)))

(declare-fun bs!389410 () Bool)

(assert (= bs!389410 (and d!462867 d!462647)))

(assert (=> bs!389410 (= lambda!66122 lambda!66084)))

(declare-fun bs!389411 () Bool)

(assert (= bs!389411 (and d!462867 d!462737)))

(assert (=> bs!389411 (= lambda!66122 lambda!66093)))

(declare-fun bs!389412 () Bool)

(assert (= bs!389412 (and d!462867 d!462715)))

(assert (=> bs!389412 (= lambda!66122 lambda!66091)))

(declare-fun bs!389413 () Bool)

(assert (= bs!389413 (and d!462867 d!462641)))

(assert (=> bs!389413 (= lambda!66122 lambda!66082)))

(declare-fun bs!389414 () Bool)

(assert (= bs!389414 (and d!462867 d!462743)))

(assert (=> bs!389414 (= lambda!66122 lambda!66094)))

(declare-fun bs!389415 () Bool)

(assert (= bs!389415 (and d!462867 d!462823)))

(assert (=> bs!389415 (= lambda!66122 lambda!66112)))

(declare-fun bs!389416 () Bool)

(assert (= bs!389416 (and d!462867 d!462611)))

(assert (=> bs!389416 (= lambda!66122 lambda!66081)))

(declare-fun bs!389417 () Bool)

(assert (= bs!389417 (and d!462867 d!462597)))

(assert (=> bs!389417 (= lambda!66122 lambda!66074)))

(declare-fun bs!389418 () Bool)

(assert (= bs!389418 (and d!462867 d!462691)))

(assert (=> bs!389418 (= lambda!66122 lambda!66088)))

(declare-fun bs!389419 () Bool)

(assert (= bs!389419 (and d!462867 d!462825)))

(assert (=> bs!389419 (= lambda!66122 lambda!66113)))

(declare-fun bs!389420 () Bool)

(assert (= bs!389420 (and d!462867 d!462773)))

(assert (=> bs!389420 (= lambda!66122 lambda!66098)))

(declare-fun bs!389421 () Bool)

(assert (= bs!389421 (and d!462867 d!462809)))

(assert (=> bs!389421 (= lambda!66122 lambda!66108)))

(declare-fun bs!389422 () Bool)

(assert (= bs!389422 (and d!462867 d!462837)))

(assert (=> bs!389422 (= lambda!66122 lambda!66117)))

(declare-fun bs!389423 () Bool)

(assert (= bs!389423 (and d!462867 d!462821)))

(assert (=> bs!389423 (= lambda!66122 lambda!66111)))

(declare-fun bs!389424 () Bool)

(assert (= bs!389424 (and d!462867 d!462771)))

(assert (=> bs!389424 (= lambda!66122 lambda!66097)))

(declare-fun bs!389425 () Bool)

(assert (= bs!389425 (and d!462867 d!462645)))

(assert (=> bs!389425 (= lambda!66122 lambda!66083)))

(declare-fun bs!389426 () Bool)

(assert (= bs!389426 (and d!462867 d!462675)))

(assert (=> bs!389426 (= lambda!66122 lambda!66087)))

(declare-fun bs!389427 () Bool)

(assert (= bs!389427 (and d!462867 d!462653)))

(assert (=> bs!389427 (= lambda!66122 lambda!66086)))

(declare-fun bs!389428 () Bool)

(assert (= bs!389428 (and d!462867 d!462843)))

(assert (=> bs!389428 (= lambda!66122 lambda!66118)))

(assert (=> d!462867 (= (inv!22268 (_2!9691 (_1!9692 (h!22356 mapDefault!8687)))) (forall!3929 (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapDefault!8687)))) lambda!66122))))

(declare-fun bs!389429 () Bool)

(assert (= bs!389429 d!462867))

(declare-fun m!1834395 () Bool)

(assert (=> bs!389429 m!1834395))

(assert (=> b!1562327 d!462867))

(declare-fun bs!389430 () Bool)

(declare-fun d!462869 () Bool)

(assert (= bs!389430 (and d!462869 d!462811)))

(declare-fun lambda!66123 () Int)

(assert (=> bs!389430 (= lambda!66123 lambda!66109)))

(declare-fun bs!389431 () Bool)

(assert (= bs!389431 (and d!462869 d!462867)))

(assert (=> bs!389431 (= lambda!66123 lambda!66122)))

(declare-fun bs!389432 () Bool)

(assert (= bs!389432 (and d!462869 d!462713)))

(assert (=> bs!389432 (= lambda!66123 lambda!66090)))

(declare-fun bs!389433 () Bool)

(assert (= bs!389433 (and d!462869 d!462781)))

(assert (=> bs!389433 (= lambda!66123 lambda!66103)))

(declare-fun bs!389434 () Bool)

(assert (= bs!389434 (and d!462869 d!462779)))

(assert (=> bs!389434 (= lambda!66123 lambda!66102)))

(declare-fun bs!389435 () Bool)

(assert (= bs!389435 (and d!462869 d!462735)))

(assert (=> bs!389435 (= lambda!66123 lambda!66092)))

(declare-fun bs!389436 () Bool)

(assert (= bs!389436 (and d!462869 d!462649)))

(assert (=> bs!389436 (= lambda!66123 lambda!66085)))

(declare-fun bs!389437 () Bool)

(assert (= bs!389437 (and d!462869 d!462803)))

(assert (=> bs!389437 (= lambda!66123 lambda!66107)))

(declare-fun bs!389438 () Bool)

(assert (= bs!389438 (and d!462869 d!462747)))

(assert (=> bs!389438 (= lambda!66123 lambda!66095)))

(declare-fun bs!389439 () Bool)

(assert (= bs!389439 (and d!462869 d!462699)))

(assert (=> bs!389439 (= lambda!66123 lambda!66089)))

(declare-fun bs!389440 () Bool)

(assert (= bs!389440 (and d!462869 d!462647)))

(assert (=> bs!389440 (= lambda!66123 lambda!66084)))

(declare-fun bs!389441 () Bool)

(assert (= bs!389441 (and d!462869 d!462737)))

(assert (=> bs!389441 (= lambda!66123 lambda!66093)))

(declare-fun bs!389442 () Bool)

(assert (= bs!389442 (and d!462869 d!462715)))

(assert (=> bs!389442 (= lambda!66123 lambda!66091)))

(declare-fun bs!389443 () Bool)

(assert (= bs!389443 (and d!462869 d!462641)))

(assert (=> bs!389443 (= lambda!66123 lambda!66082)))

(declare-fun bs!389444 () Bool)

(assert (= bs!389444 (and d!462869 d!462743)))

(assert (=> bs!389444 (= lambda!66123 lambda!66094)))

(declare-fun bs!389445 () Bool)

(assert (= bs!389445 (and d!462869 d!462823)))

(assert (=> bs!389445 (= lambda!66123 lambda!66112)))

(declare-fun bs!389446 () Bool)

(assert (= bs!389446 (and d!462869 d!462611)))

(assert (=> bs!389446 (= lambda!66123 lambda!66081)))

(declare-fun bs!389447 () Bool)

(assert (= bs!389447 (and d!462869 d!462597)))

(assert (=> bs!389447 (= lambda!66123 lambda!66074)))

(declare-fun bs!389448 () Bool)

(assert (= bs!389448 (and d!462869 d!462691)))

(assert (=> bs!389448 (= lambda!66123 lambda!66088)))

(declare-fun bs!389449 () Bool)

(assert (= bs!389449 (and d!462869 d!462825)))

(assert (=> bs!389449 (= lambda!66123 lambda!66113)))

(declare-fun bs!389450 () Bool)

(assert (= bs!389450 (and d!462869 d!462773)))

(assert (=> bs!389450 (= lambda!66123 lambda!66098)))

(declare-fun bs!389451 () Bool)

(assert (= bs!389451 (and d!462869 d!462809)))

(assert (=> bs!389451 (= lambda!66123 lambda!66108)))

(declare-fun bs!389452 () Bool)

(assert (= bs!389452 (and d!462869 d!462837)))

(assert (=> bs!389452 (= lambda!66123 lambda!66117)))

(declare-fun bs!389453 () Bool)

(assert (= bs!389453 (and d!462869 d!462821)))

(assert (=> bs!389453 (= lambda!66123 lambda!66111)))

(declare-fun bs!389454 () Bool)

(assert (= bs!389454 (and d!462869 d!462771)))

(assert (=> bs!389454 (= lambda!66123 lambda!66097)))

(declare-fun bs!389455 () Bool)

(assert (= bs!389455 (and d!462869 d!462645)))

(assert (=> bs!389455 (= lambda!66123 lambda!66083)))

(declare-fun bs!389456 () Bool)

(assert (= bs!389456 (and d!462869 d!462675)))

(assert (=> bs!389456 (= lambda!66123 lambda!66087)))

(declare-fun bs!389457 () Bool)

(assert (= bs!389457 (and d!462869 d!462653)))

(assert (=> bs!389457 (= lambda!66123 lambda!66086)))

(declare-fun bs!389458 () Bool)

(assert (= bs!389458 (and d!462869 d!462843)))

(assert (=> bs!389458 (= lambda!66123 lambda!66118)))

(assert (=> d!462869 (= (inv!22268 setElem!11256) (forall!3929 (exprs!1317 setElem!11256) lambda!66123))))

(declare-fun bs!389459 () Bool)

(assert (= bs!389459 d!462869))

(declare-fun m!1834397 () Bool)

(assert (=> bs!389459 m!1834397))

(assert (=> setNonEmpty!11256 d!462869))

(assert (=> b!1562031 d!462669))

(declare-fun bs!389460 () Bool)

(declare-fun b!1562832 () Bool)

(assert (= bs!389460 (and b!1562832 b!1562392)))

(declare-fun lambda!66124 () Int)

(assert (=> bs!389460 (= lambda!66124 lambda!66080)))

(declare-fun d!462871 () Bool)

(declare-fun res!696703 () Bool)

(declare-fun e!1003621 () Bool)

(assert (=> d!462871 (=> (not res!696703) (not e!1003621))))

(assert (=> d!462871 (= res!696703 (valid!1493 (cache!2186 (_2!9694 lt!541055))))))

(assert (=> d!462871 (= (validCacheMapUp!172 (cache!2186 (_2!9694 lt!541055))) e!1003621)))

(declare-fun b!1562831 () Bool)

(declare-fun res!696704 () Bool)

(assert (=> b!1562831 (=> (not res!696704) (not e!1003621))))

(assert (=> b!1562831 (= res!696704 (invariantList!251 (toList!860 (map!3538 (cache!2186 (_2!9694 lt!541055))))))))

(assert (=> b!1562832 (= e!1003621 (forall!3931 (toList!860 (map!3538 (cache!2186 (_2!9694 lt!541055)))) lambda!66124))))

(assert (= (and d!462871 res!696703) b!1562831))

(assert (= (and b!1562831 res!696704) b!1562832))

(declare-fun m!1834399 () Bool)

(assert (=> d!462871 m!1834399))

(declare-fun m!1834401 () Bool)

(assert (=> b!1562831 m!1834401))

(declare-fun m!1834403 () Bool)

(assert (=> b!1562831 m!1834403))

(assert (=> b!1562832 m!1834401))

(declare-fun m!1834405 () Bool)

(assert (=> b!1562832 m!1834405))

(assert (=> d!462569 d!462871))

(assert (=> b!1562182 d!462663))

(declare-fun d!462873 () Bool)

(declare-fun lt!541331 () Int)

(assert (=> d!462873 (>= lt!541331 0)))

(declare-fun e!1003622 () Int)

(assert (=> d!462873 (= lt!541331 e!1003622)))

(declare-fun c!253376 () Bool)

(assert (=> d!462873 (= c!253376 ((_ is Nil!16951) (originalCharacters!3785 (_1!9687 (get!4876 lt!541186)))))))

(assert (=> d!462873 (= (size!13762 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186)))) lt!541331)))

(declare-fun b!1562833 () Bool)

(assert (=> b!1562833 (= e!1003622 0)))

(declare-fun b!1562834 () Bool)

(assert (=> b!1562834 (= e!1003622 (+ 1 (size!13762 (t!141568 (originalCharacters!3785 (_1!9687 (get!4876 lt!541186)))))))))

(assert (= (and d!462873 c!253376) b!1562833))

(assert (= (and d!462873 (not c!253376)) b!1562834))

(declare-fun m!1834407 () Bool)

(assert (=> b!1562834 m!1834407))

(assert (=> b!1562182 d!462873))

(declare-fun d!462875 () Bool)

(assert (=> d!462875 (= (isEmpty!10174 lt!541047) (not ((_ is Some!3064) lt!541047)))))

(assert (=> d!462549 d!462875))

(assert (=> b!1562109 d!462835))

(declare-fun b!1562839 () Bool)

(declare-fun e!1003625 () Bool)

(declare-fun tp!460146 () Bool)

(declare-fun tp!460147 () Bool)

(assert (=> b!1562839 (= e!1003625 (and tp!460146 tp!460147))))

(assert (=> b!1562323 (= tp!460039 e!1003625)))

(assert (= (and b!1562323 ((_ is Cons!16952) (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapDefault!8687)))))) b!1562839))

(declare-fun b!1562840 () Bool)

(declare-fun e!1003626 () Bool)

(declare-fun tp!460148 () Bool)

(declare-fun tp!460149 () Bool)

(assert (=> b!1562840 (= e!1003626 (and tp!460148 tp!460149))))

(assert (=> b!1562239 (= tp!459922 e!1003626)))

(assert (= (and b!1562239 ((_ is Cons!16952) (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapDefault!8676)))))) b!1562840))

(declare-fun b!1562841 () Bool)

(declare-fun tp!460152 () Bool)

(declare-fun tp!460151 () Bool)

(declare-fun e!1003627 () Bool)

(assert (=> b!1562841 (= e!1003627 (and (inv!22260 (left!13749 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))) tp!460151 (inv!22260 (right!14079 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))) tp!460152))))

(declare-fun b!1562843 () Bool)

(declare-fun e!1003628 () Bool)

(declare-fun tp!460150 () Bool)

(assert (=> b!1562843 (= e!1003628 tp!460150)))

(declare-fun b!1562842 () Bool)

(assert (=> b!1562842 (= e!1003627 (and (inv!22269 (xs!8389 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))) e!1003628))))

(assert (=> b!1562353 (= tp!460067 (and (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055)))))) e!1003627))))

(assert (= (and b!1562353 ((_ is Node!5589) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))) b!1562841))

(assert (= b!1562842 b!1562843))

(assert (= (and b!1562353 ((_ is Leaf!8284) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))))))) b!1562842))

(declare-fun m!1834409 () Bool)

(assert (=> b!1562841 m!1834409))

(declare-fun m!1834411 () Bool)

(assert (=> b!1562841 m!1834411))

(declare-fun m!1834413 () Bool)

(assert (=> b!1562842 m!1834413))

(assert (=> b!1562353 m!1833730))

(declare-fun condSetEmpty!11276 () Bool)

(assert (=> setNonEmpty!11265 (= condSetEmpty!11276 (= setRest!11265 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11276 () Bool)

(assert (=> setNonEmpty!11265 (= tp!460003 setRes!11276)))

(declare-fun setIsEmpty!11276 () Bool)

(assert (=> setIsEmpty!11276 setRes!11276))

(declare-fun e!1003631 () Bool)

(declare-fun tp!460157 () Bool)

(declare-fun setElem!11276 () Context!1634)

(declare-fun setNonEmpty!11276 () Bool)

(assert (=> setNonEmpty!11276 (= setRes!11276 (and tp!460157 (inv!22268 setElem!11276) e!1003631))))

(declare-fun setRest!11276 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11276 (= setRest!11265 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11276 true) setRest!11276))))

(declare-fun b!1562848 () Bool)

(declare-fun tp!460158 () Bool)

(assert (=> b!1562848 (= e!1003631 tp!460158)))

(assert (= (and setNonEmpty!11265 condSetEmpty!11276) setIsEmpty!11276))

(assert (= (and setNonEmpty!11265 (not condSetEmpty!11276)) setNonEmpty!11276))

(assert (= setNonEmpty!11276 b!1562848))

(declare-fun m!1834415 () Bool)

(assert (=> setNonEmpty!11276 m!1834415))

(declare-fun b!1562849 () Bool)

(declare-fun e!1003632 () Bool)

(declare-fun tp!460159 () Bool)

(declare-fun tp!460160 () Bool)

(assert (=> b!1562849 (= e!1003632 (and tp!460159 tp!460160))))

(assert (=> b!1562297 (= tp!459989 e!1003632)))

(assert (= (and b!1562297 ((_ is Cons!16952) (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapDefault!8684)))))) b!1562849))

(declare-fun setRes!11277 () Bool)

(declare-fun setNonEmpty!11277 () Bool)

(declare-fun tp!460162 () Bool)

(declare-fun setElem!11277 () Context!1634)

(declare-fun e!1003633 () Bool)

(assert (=> setNonEmpty!11277 (= setRes!11277 (and tp!460162 (inv!22268 setElem!11277) e!1003633))))

(declare-fun setRest!11277 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11277 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapDefault!8678)))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11277 true) setRest!11277))))

(declare-fun b!1562850 () Bool)

(declare-fun e!1003634 () Bool)

(declare-fun tp!460163 () Bool)

(assert (=> b!1562850 (= e!1003634 (and setRes!11277 tp!460163))))

(declare-fun condSetEmpty!11277 () Bool)

(assert (=> b!1562850 (= condSetEmpty!11277 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapDefault!8678)))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562851 () Bool)

(declare-fun tp!460161 () Bool)

(assert (=> b!1562851 (= e!1003633 tp!460161)))

(assert (=> b!1562279 (= tp!459970 e!1003634)))

(declare-fun setIsEmpty!11277 () Bool)

(assert (=> setIsEmpty!11277 setRes!11277))

(assert (= (and b!1562850 condSetEmpty!11277) setIsEmpty!11277))

(assert (= (and b!1562850 (not condSetEmpty!11277)) setNonEmpty!11277))

(assert (= setNonEmpty!11277 b!1562851))

(assert (= (and b!1562279 ((_ is Cons!16954) (t!141571 mapDefault!8678))) b!1562850))

(declare-fun m!1834417 () Bool)

(assert (=> setNonEmpty!11277 m!1834417))

(declare-fun condSetEmpty!11278 () Bool)

(assert (=> setNonEmpty!11243 (= condSetEmpty!11278 (= setRest!11243 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11278 () Bool)

(assert (=> setNonEmpty!11243 (= tp!459901 setRes!11278)))

(declare-fun setIsEmpty!11278 () Bool)

(assert (=> setIsEmpty!11278 setRes!11278))

(declare-fun e!1003635 () Bool)

(declare-fun tp!460164 () Bool)

(declare-fun setNonEmpty!11278 () Bool)

(declare-fun setElem!11278 () Context!1634)

(assert (=> setNonEmpty!11278 (= setRes!11278 (and tp!460164 (inv!22268 setElem!11278) e!1003635))))

(declare-fun setRest!11278 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11278 (= setRest!11243 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11278 true) setRest!11278))))

(declare-fun b!1562852 () Bool)

(declare-fun tp!460165 () Bool)

(assert (=> b!1562852 (= e!1003635 tp!460165)))

(assert (= (and setNonEmpty!11243 condSetEmpty!11278) setIsEmpty!11278))

(assert (= (and setNonEmpty!11243 (not condSetEmpty!11278)) setNonEmpty!11278))

(assert (= setNonEmpty!11278 b!1562852))

(declare-fun m!1834419 () Bool)

(assert (=> setNonEmpty!11278 m!1834419))

(declare-fun setRes!11279 () Bool)

(declare-fun setNonEmpty!11279 () Bool)

(declare-fun setElem!11279 () Context!1634)

(declare-fun e!1003636 () Bool)

(declare-fun tp!460167 () Bool)

(assert (=> setNonEmpty!11279 (= setRes!11279 (and tp!460167 (inv!22268 setElem!11279) e!1003636))))

(declare-fun setRest!11279 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11279 (= (_1!9689 (_1!9690 (h!22355 (t!141571 (minValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11279 true) setRest!11279))))

(declare-fun b!1562853 () Bool)

(declare-fun e!1003637 () Bool)

(declare-fun tp!460168 () Bool)

(assert (=> b!1562853 (= e!1003637 (and setRes!11279 tp!460168))))

(declare-fun condSetEmpty!11279 () Bool)

(assert (=> b!1562853 (= condSetEmpty!11279 (= (_1!9689 (_1!9690 (h!22355 (t!141571 (minValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562854 () Bool)

(declare-fun tp!460166 () Bool)

(assert (=> b!1562854 (= e!1003636 tp!460166)))

(assert (=> b!1562306 (= tp!460007 e!1003637)))

(declare-fun setIsEmpty!11279 () Bool)

(assert (=> setIsEmpty!11279 setRes!11279))

(assert (= (and b!1562853 condSetEmpty!11279) setIsEmpty!11279))

(assert (= (and b!1562853 (not condSetEmpty!11279)) setNonEmpty!11279))

(assert (= setNonEmpty!11279 b!1562854))

(assert (= (and b!1562306 ((_ is Cons!16954) (t!141571 (minValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))))) b!1562853))

(declare-fun m!1834421 () Bool)

(assert (=> setNonEmpty!11279 m!1834421))

(declare-fun b!1562858 () Bool)

(declare-fun e!1003638 () Bool)

(declare-fun tp!460173 () Bool)

(declare-fun tp!460171 () Bool)

(assert (=> b!1562858 (= e!1003638 (and tp!460173 tp!460171))))

(declare-fun b!1562857 () Bool)

(declare-fun tp!460170 () Bool)

(assert (=> b!1562857 (= e!1003638 tp!460170)))

(assert (=> b!1562267 (= tp!459956 e!1003638)))

(declare-fun b!1562855 () Bool)

(assert (=> b!1562855 (= e!1003638 tp_is_empty!7089)))

(declare-fun b!1562856 () Bool)

(declare-fun tp!460172 () Bool)

(declare-fun tp!460169 () Bool)

(assert (=> b!1562856 (= e!1003638 (and tp!460172 tp!460169))))

(assert (= (and b!1562267 ((_ is ElementMatch!4299) (_1!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562855))

(assert (= (and b!1562267 ((_ is Concat!7361) (_1!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562856))

(assert (= (and b!1562267 ((_ is Star!4299) (_1!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562857))

(assert (= (and b!1562267 ((_ is Union!4299) (_1!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562858))

(declare-fun setElem!11280 () Context!1634)

(declare-fun setNonEmpty!11280 () Bool)

(declare-fun setRes!11280 () Bool)

(declare-fun tp!460176 () Bool)

(declare-fun e!1003639 () Bool)

(assert (=> setNonEmpty!11280 (= setRes!11280 (and tp!460176 (inv!22268 setElem!11280) e!1003639))))

(declare-fun setRest!11280 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11280 (= (_2!9692 (h!22356 (t!141572 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11280 true) setRest!11280))))

(declare-fun e!1003640 () Bool)

(assert (=> b!1562267 (= tp!459953 e!1003640)))

(declare-fun e!1003641 () Bool)

(declare-fun tp!460178 () Bool)

(declare-fun b!1562859 () Bool)

(declare-fun tp!460175 () Bool)

(assert (=> b!1562859 (= e!1003640 (and tp!460178 (inv!22268 (_2!9691 (_1!9692 (h!22356 (t!141572 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) e!1003641 tp_is_empty!7089 setRes!11280 tp!460175))))

(declare-fun condSetEmpty!11280 () Bool)

(assert (=> b!1562859 (= condSetEmpty!11280 (= (_2!9692 (h!22356 (t!141572 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562860 () Bool)

(declare-fun tp!460177 () Bool)

(assert (=> b!1562860 (= e!1003641 tp!460177)))

(declare-fun setIsEmpty!11280 () Bool)

(assert (=> setIsEmpty!11280 setRes!11280))

(declare-fun b!1562861 () Bool)

(declare-fun tp!460174 () Bool)

(assert (=> b!1562861 (= e!1003639 tp!460174)))

(assert (= b!1562859 b!1562860))

(assert (= (and b!1562859 condSetEmpty!11280) setIsEmpty!11280))

(assert (= (and b!1562859 (not condSetEmpty!11280)) setNonEmpty!11280))

(assert (= setNonEmpty!11280 b!1562861))

(assert (= (and b!1562267 ((_ is Cons!16955) (t!141572 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))) b!1562859))

(declare-fun m!1834423 () Bool)

(assert (=> setNonEmpty!11280 m!1834423))

(declare-fun m!1834425 () Bool)

(assert (=> b!1562859 m!1834425))

(declare-fun b!1562865 () Bool)

(declare-fun e!1003642 () Bool)

(declare-fun tp!460183 () Bool)

(declare-fun tp!460181 () Bool)

(assert (=> b!1562865 (= e!1003642 (and tp!460183 tp!460181))))

(declare-fun b!1562864 () Bool)

(declare-fun tp!460180 () Bool)

(assert (=> b!1562864 (= e!1003642 tp!460180)))

(assert (=> b!1562264 (= tp!459951 e!1003642)))

(declare-fun b!1562862 () Bool)

(assert (=> b!1562862 (= e!1003642 tp_is_empty!7089)))

(declare-fun b!1562863 () Bool)

(declare-fun tp!460182 () Bool)

(declare-fun tp!460179 () Bool)

(assert (=> b!1562863 (= e!1003642 (and tp!460182 tp!460179))))

(assert (= (and b!1562264 ((_ is ElementMatch!4299) (_1!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562862))

(assert (= (and b!1562264 ((_ is Concat!7361) (_1!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562863))

(assert (= (and b!1562264 ((_ is Star!4299) (_1!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562864))

(assert (= (and b!1562264 ((_ is Union!4299) (_1!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) b!1562865))

(declare-fun setRes!11281 () Bool)

(declare-fun setNonEmpty!11281 () Bool)

(declare-fun tp!460186 () Bool)

(declare-fun e!1003643 () Bool)

(declare-fun setElem!11281 () Context!1634)

(assert (=> setNonEmpty!11281 (= setRes!11281 (and tp!460186 (inv!22268 setElem!11281) e!1003643))))

(declare-fun setRest!11281 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11281 (= (_2!9692 (h!22356 (t!141572 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11281 true) setRest!11281))))

(declare-fun e!1003644 () Bool)

(assert (=> b!1562264 (= tp!459948 e!1003644)))

(declare-fun tp!460185 () Bool)

(declare-fun e!1003645 () Bool)

(declare-fun b!1562866 () Bool)

(declare-fun tp!460188 () Bool)

(assert (=> b!1562866 (= e!1003644 (and tp!460188 (inv!22268 (_2!9691 (_1!9692 (h!22356 (t!141572 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))))) e!1003645 tp_is_empty!7089 setRes!11281 tp!460185))))

(declare-fun condSetEmpty!11281 () Bool)

(assert (=> b!1562866 (= condSetEmpty!11281 (= (_2!9692 (h!22356 (t!141572 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562867 () Bool)

(declare-fun tp!460187 () Bool)

(assert (=> b!1562867 (= e!1003645 tp!460187)))

(declare-fun setIsEmpty!11281 () Bool)

(assert (=> setIsEmpty!11281 setRes!11281))

(declare-fun b!1562868 () Bool)

(declare-fun tp!460184 () Bool)

(assert (=> b!1562868 (= e!1003643 tp!460184)))

(assert (= b!1562866 b!1562867))

(assert (= (and b!1562866 condSetEmpty!11281) setIsEmpty!11281))

(assert (= (and b!1562866 (not condSetEmpty!11281)) setNonEmpty!11281))

(assert (= setNonEmpty!11281 b!1562868))

(assert (= (and b!1562264 ((_ is Cons!16955) (t!141572 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768))))))))) b!1562866))

(declare-fun m!1834427 () Bool)

(assert (=> setNonEmpty!11281 m!1834427))

(declare-fun m!1834429 () Bool)

(assert (=> b!1562866 m!1834429))

(declare-fun setElem!11282 () Context!1634)

(declare-fun setRes!11282 () Bool)

(declare-fun tp!460191 () Bool)

(declare-fun setNonEmpty!11282 () Bool)

(declare-fun e!1003646 () Bool)

(assert (=> setNonEmpty!11282 (= setRes!11282 (and tp!460191 (inv!22268 setElem!11282) e!1003646))))

(declare-fun setRest!11282 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11282 (= (_2!9686 (h!22354 (t!141570 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11282 true) setRest!11282))))

(declare-fun b!1562869 () Bool)

(declare-fun e!1003648 () Bool)

(declare-fun tp!460192 () Bool)

(assert (=> b!1562869 (= e!1003648 tp!460192)))

(declare-fun tp!460190 () Bool)

(declare-fun b!1562870 () Bool)

(declare-fun e!1003647 () Bool)

(assert (=> b!1562870 (= e!1003647 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (t!141570 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))))) e!1003648 tp_is_empty!7089 setRes!11282 tp!460190))))

(declare-fun condSetEmpty!11282 () Bool)

(assert (=> b!1562870 (= condSetEmpty!11282 (= (_2!9686 (h!22354 (t!141570 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11282 () Bool)

(assert (=> setIsEmpty!11282 setRes!11282))

(assert (=> b!1562271 (= tp!459958 e!1003647)))

(declare-fun b!1562871 () Bool)

(declare-fun tp!460189 () Bool)

(assert (=> b!1562871 (= e!1003646 tp!460189)))

(assert (= b!1562870 b!1562869))

(assert (= (and b!1562870 condSetEmpty!11282) setIsEmpty!11282))

(assert (= (and b!1562870 (not condSetEmpty!11282)) setNonEmpty!11282))

(assert (= setNonEmpty!11282 b!1562871))

(assert (= (and b!1562271 ((_ is Cons!16953) (t!141570 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))) b!1562870))

(declare-fun m!1834431 () Bool)

(assert (=> setNonEmpty!11282 m!1834431))

(declare-fun m!1834433 () Bool)

(assert (=> b!1562870 m!1834433))

(declare-fun b!1562875 () Bool)

(declare-fun e!1003649 () Bool)

(declare-fun tp!460197 () Bool)

(declare-fun tp!460195 () Bool)

(assert (=> b!1562875 (= e!1003649 (and tp!460197 tp!460195))))

(declare-fun b!1562874 () Bool)

(declare-fun tp!460194 () Bool)

(assert (=> b!1562874 (= e!1003649 tp!460194)))

(assert (=> b!1562261 (= tp!459946 e!1003649)))

(declare-fun b!1562872 () Bool)

(assert (=> b!1562872 (= e!1003649 tp_is_empty!7089)))

(declare-fun b!1562873 () Bool)

(declare-fun tp!460196 () Bool)

(declare-fun tp!460193 () Bool)

(assert (=> b!1562873 (= e!1003649 (and tp!460196 tp!460193))))

(assert (= (and b!1562261 ((_ is ElementMatch!4299) (_1!9691 (_1!9692 (h!22356 mapDefault!8677))))) b!1562872))

(assert (= (and b!1562261 ((_ is Concat!7361) (_1!9691 (_1!9692 (h!22356 mapDefault!8677))))) b!1562873))

(assert (= (and b!1562261 ((_ is Star!4299) (_1!9691 (_1!9692 (h!22356 mapDefault!8677))))) b!1562874))

(assert (= (and b!1562261 ((_ is Union!4299) (_1!9691 (_1!9692 (h!22356 mapDefault!8677))))) b!1562875))

(declare-fun setElem!11283 () Context!1634)

(declare-fun tp!460200 () Bool)

(declare-fun e!1003650 () Bool)

(declare-fun setNonEmpty!11283 () Bool)

(declare-fun setRes!11283 () Bool)

(assert (=> setNonEmpty!11283 (= setRes!11283 (and tp!460200 (inv!22268 setElem!11283) e!1003650))))

(declare-fun setRest!11283 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11283 (= (_2!9692 (h!22356 (t!141572 mapDefault!8677))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11283 true) setRest!11283))))

(declare-fun e!1003651 () Bool)

(assert (=> b!1562261 (= tp!459943 e!1003651)))

(declare-fun e!1003652 () Bool)

(declare-fun tp!460202 () Bool)

(declare-fun b!1562876 () Bool)

(declare-fun tp!460199 () Bool)

(assert (=> b!1562876 (= e!1003651 (and tp!460202 (inv!22268 (_2!9691 (_1!9692 (h!22356 (t!141572 mapDefault!8677))))) e!1003652 tp_is_empty!7089 setRes!11283 tp!460199))))

(declare-fun condSetEmpty!11283 () Bool)

(assert (=> b!1562876 (= condSetEmpty!11283 (= (_2!9692 (h!22356 (t!141572 mapDefault!8677))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562877 () Bool)

(declare-fun tp!460201 () Bool)

(assert (=> b!1562877 (= e!1003652 tp!460201)))

(declare-fun setIsEmpty!11283 () Bool)

(assert (=> setIsEmpty!11283 setRes!11283))

(declare-fun b!1562878 () Bool)

(declare-fun tp!460198 () Bool)

(assert (=> b!1562878 (= e!1003650 tp!460198)))

(assert (= b!1562876 b!1562877))

(assert (= (and b!1562876 condSetEmpty!11283) setIsEmpty!11283))

(assert (= (and b!1562876 (not condSetEmpty!11283)) setNonEmpty!11283))

(assert (= setNonEmpty!11283 b!1562878))

(assert (= (and b!1562261 ((_ is Cons!16955) (t!141572 mapDefault!8677))) b!1562876))

(declare-fun m!1834435 () Bool)

(assert (=> setNonEmpty!11283 m!1834435))

(declare-fun m!1834437 () Bool)

(assert (=> b!1562876 m!1834437))

(declare-fun b!1562882 () Bool)

(declare-fun e!1003653 () Bool)

(declare-fun tp!460207 () Bool)

(declare-fun tp!460205 () Bool)

(assert (=> b!1562882 (= e!1003653 (and tp!460207 tp!460205))))

(declare-fun b!1562881 () Bool)

(declare-fun tp!460204 () Bool)

(assert (=> b!1562881 (= e!1003653 tp!460204)))

(assert (=> b!1562328 (= tp!460045 e!1003653)))

(declare-fun b!1562879 () Bool)

(assert (=> b!1562879 (= e!1003653 tp_is_empty!7089)))

(declare-fun b!1562880 () Bool)

(declare-fun tp!460206 () Bool)

(declare-fun tp!460203 () Bool)

(assert (=> b!1562880 (= e!1003653 (and tp!460206 tp!460203))))

(assert (= (and b!1562328 ((_ is ElementMatch!4299) (_1!9691 (_1!9692 (h!22356 mapValue!8678))))) b!1562879))

(assert (= (and b!1562328 ((_ is Concat!7361) (_1!9691 (_1!9692 (h!22356 mapValue!8678))))) b!1562880))

(assert (= (and b!1562328 ((_ is Star!4299) (_1!9691 (_1!9692 (h!22356 mapValue!8678))))) b!1562881))

(assert (= (and b!1562328 ((_ is Union!4299) (_1!9691 (_1!9692 (h!22356 mapValue!8678))))) b!1562882))

(declare-fun setNonEmpty!11284 () Bool)

(declare-fun setElem!11284 () Context!1634)

(declare-fun setRes!11284 () Bool)

(declare-fun tp!460210 () Bool)

(declare-fun e!1003654 () Bool)

(assert (=> setNonEmpty!11284 (= setRes!11284 (and tp!460210 (inv!22268 setElem!11284) e!1003654))))

(declare-fun setRest!11284 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11284 (= (_2!9692 (h!22356 (t!141572 mapValue!8678))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11284 true) setRest!11284))))

(declare-fun e!1003655 () Bool)

(assert (=> b!1562328 (= tp!460042 e!1003655)))

(declare-fun tp!460212 () Bool)

(declare-fun tp!460209 () Bool)

(declare-fun e!1003656 () Bool)

(declare-fun b!1562883 () Bool)

(assert (=> b!1562883 (= e!1003655 (and tp!460212 (inv!22268 (_2!9691 (_1!9692 (h!22356 (t!141572 mapValue!8678))))) e!1003656 tp_is_empty!7089 setRes!11284 tp!460209))))

(declare-fun condSetEmpty!11284 () Bool)

(assert (=> b!1562883 (= condSetEmpty!11284 (= (_2!9692 (h!22356 (t!141572 mapValue!8678))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562884 () Bool)

(declare-fun tp!460211 () Bool)

(assert (=> b!1562884 (= e!1003656 tp!460211)))

(declare-fun setIsEmpty!11284 () Bool)

(assert (=> setIsEmpty!11284 setRes!11284))

(declare-fun b!1562885 () Bool)

(declare-fun tp!460208 () Bool)

(assert (=> b!1562885 (= e!1003654 tp!460208)))

(assert (= b!1562883 b!1562884))

(assert (= (and b!1562883 condSetEmpty!11284) setIsEmpty!11284))

(assert (= (and b!1562883 (not condSetEmpty!11284)) setNonEmpty!11284))

(assert (= setNonEmpty!11284 b!1562885))

(assert (= (and b!1562328 ((_ is Cons!16955) (t!141572 mapValue!8678))) b!1562883))

(declare-fun m!1834439 () Bool)

(assert (=> setNonEmpty!11284 m!1834439))

(declare-fun m!1834441 () Bool)

(assert (=> b!1562883 m!1834441))

(declare-fun setRes!11285 () Bool)

(declare-fun setElem!11285 () Context!1634)

(declare-fun tp!460214 () Bool)

(declare-fun setNonEmpty!11285 () Bool)

(declare-fun e!1003657 () Bool)

(assert (=> setNonEmpty!11285 (= setRes!11285 (and tp!460214 (inv!22268 setElem!11285) e!1003657))))

(declare-fun setRest!11285 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11285 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapValue!8677)))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11285 true) setRest!11285))))

(declare-fun b!1562886 () Bool)

(declare-fun e!1003658 () Bool)

(declare-fun tp!460215 () Bool)

(assert (=> b!1562886 (= e!1003658 (and setRes!11285 tp!460215))))

(declare-fun condSetEmpty!11285 () Bool)

(assert (=> b!1562886 (= condSetEmpty!11285 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapValue!8677)))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562887 () Bool)

(declare-fun tp!460213 () Bool)

(assert (=> b!1562887 (= e!1003657 tp!460213)))

(assert (=> b!1562229 (= tp!459910 e!1003658)))

(declare-fun setIsEmpty!11285 () Bool)

(assert (=> setIsEmpty!11285 setRes!11285))

(assert (= (and b!1562886 condSetEmpty!11285) setIsEmpty!11285))

(assert (= (and b!1562886 (not condSetEmpty!11285)) setNonEmpty!11285))

(assert (= setNonEmpty!11285 b!1562887))

(assert (= (and b!1562229 ((_ is Cons!16954) (t!141571 mapValue!8677))) b!1562886))

(declare-fun m!1834443 () Bool)

(assert (=> setNonEmpty!11285 m!1834443))

(declare-fun b!1562888 () Bool)

(declare-fun e!1003659 () Bool)

(declare-fun tp!460216 () Bool)

(declare-fun tp!460217 () Bool)

(assert (=> b!1562888 (= e!1003659 (and tp!460216 tp!460217))))

(assert (=> b!1562303 (= tp!459998 e!1003659)))

(assert (= (and b!1562303 ((_ is Cons!16952) (exprs!1317 setElem!11264))) b!1562888))

(declare-fun condSetEmpty!11286 () Bool)

(assert (=> setNonEmpty!11264 (= condSetEmpty!11286 (= setRest!11264 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11286 () Bool)

(assert (=> setNonEmpty!11264 (= tp!460000 setRes!11286)))

(declare-fun setIsEmpty!11286 () Bool)

(assert (=> setIsEmpty!11286 setRes!11286))

(declare-fun setNonEmpty!11286 () Bool)

(declare-fun e!1003660 () Bool)

(declare-fun setElem!11286 () Context!1634)

(declare-fun tp!460218 () Bool)

(assert (=> setNonEmpty!11286 (= setRes!11286 (and tp!460218 (inv!22268 setElem!11286) e!1003660))))

(declare-fun setRest!11286 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11286 (= setRest!11264 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11286 true) setRest!11286))))

(declare-fun b!1562889 () Bool)

(declare-fun tp!460219 () Bool)

(assert (=> b!1562889 (= e!1003660 tp!460219)))

(assert (= (and setNonEmpty!11264 condSetEmpty!11286) setIsEmpty!11286))

(assert (= (and setNonEmpty!11264 (not condSetEmpty!11286)) setNonEmpty!11286))

(assert (= setNonEmpty!11286 b!1562889))

(declare-fun m!1834445 () Bool)

(assert (=> setNonEmpty!11286 m!1834445))

(declare-fun b!1562890 () Bool)

(declare-fun e!1003661 () Bool)

(declare-fun tp!460220 () Bool)

(declare-fun tp!460221 () Bool)

(assert (=> b!1562890 (= e!1003661 (and tp!460220 tp!460221))))

(assert (=> b!1562305 (= tp!460002 e!1003661)))

(assert (= (and b!1562305 ((_ is Cons!16952) (exprs!1317 setElem!11265))) b!1562890))

(declare-fun b!1562891 () Bool)

(declare-fun e!1003662 () Bool)

(declare-fun tp!460222 () Bool)

(declare-fun tp!460223 () Bool)

(assert (=> b!1562891 (= e!1003662 (and tp!460222 tp!460223))))

(assert (=> b!1562326 (= tp!460036 e!1003662)))

(assert (= (and b!1562326 ((_ is Cons!16952) (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapValue!8687)))))) b!1562891))

(declare-fun b!1562892 () Bool)

(declare-fun e!1003663 () Bool)

(declare-fun tp!460224 () Bool)

(assert (=> b!1562892 (= e!1003663 tp!460224)))

(declare-fun setNonEmpty!11287 () Bool)

(declare-fun setRes!11287 () Bool)

(declare-fun tp!460225 () Bool)

(declare-fun setElem!11288 () Context!1634)

(assert (=> setNonEmpty!11287 (= setRes!11287 (and tp!460225 (inv!22268 setElem!11288) e!1003663))))

(declare-fun mapDefault!8697 () List!17022)

(declare-fun setRest!11287 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11287 (= (_1!9689 (_1!9690 (h!22355 mapDefault!8697))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11288 true) setRest!11287))))

(declare-fun tp!460230 () Bool)

(declare-fun setElem!11287 () Context!1634)

(declare-fun setRes!11288 () Bool)

(declare-fun e!1003665 () Bool)

(declare-fun setNonEmpty!11288 () Bool)

(assert (=> setNonEmpty!11288 (= setRes!11288 (and tp!460230 (inv!22268 setElem!11287) e!1003665))))

(declare-fun mapValue!8697 () List!17022)

(declare-fun setRest!11288 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11288 (= (_1!9689 (_1!9690 (h!22355 mapValue!8697))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11287 true) setRest!11288))))

(declare-fun condMapEmpty!8697 () Bool)

(assert (=> mapNonEmpty!8681 (= condMapEmpty!8697 (= mapRest!8681 ((as const (Array (_ BitVec 32) List!17022)) mapDefault!8697)))))

(declare-fun e!1003664 () Bool)

(declare-fun mapRes!8697 () Bool)

(assert (=> mapNonEmpty!8681 (= tp!459900 (and e!1003664 mapRes!8697))))

(declare-fun mapIsEmpty!8697 () Bool)

(assert (=> mapIsEmpty!8697 mapRes!8697))

(declare-fun b!1562893 () Bool)

(declare-fun tp!460226 () Bool)

(assert (=> b!1562893 (= e!1003664 (and setRes!11287 tp!460226))))

(declare-fun condSetEmpty!11287 () Bool)

(assert (=> b!1562893 (= condSetEmpty!11287 (= (_1!9689 (_1!9690 (h!22355 mapDefault!8697))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562894 () Bool)

(declare-fun tp!460228 () Bool)

(assert (=> b!1562894 (= e!1003665 tp!460228)))

(declare-fun setIsEmpty!11287 () Bool)

(assert (=> setIsEmpty!11287 setRes!11287))

(declare-fun setIsEmpty!11288 () Bool)

(assert (=> setIsEmpty!11288 setRes!11288))

(declare-fun b!1562895 () Bool)

(declare-fun e!1003666 () Bool)

(declare-fun tp!460227 () Bool)

(assert (=> b!1562895 (= e!1003666 (and setRes!11288 tp!460227))))

(declare-fun condSetEmpty!11288 () Bool)

(assert (=> b!1562895 (= condSetEmpty!11288 (= (_1!9689 (_1!9690 (h!22355 mapValue!8697))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun mapNonEmpty!8697 () Bool)

(declare-fun tp!460229 () Bool)

(assert (=> mapNonEmpty!8697 (= mapRes!8697 (and tp!460229 e!1003666))))

(declare-fun mapKey!8697 () (_ BitVec 32))

(declare-fun mapRest!8697 () (Array (_ BitVec 32) List!17022))

(assert (=> mapNonEmpty!8697 (= mapRest!8681 (store mapRest!8697 mapKey!8697 mapValue!8697))))

(assert (= (and mapNonEmpty!8681 condMapEmpty!8697) mapIsEmpty!8697))

(assert (= (and mapNonEmpty!8681 (not condMapEmpty!8697)) mapNonEmpty!8697))

(assert (= (and b!1562895 condSetEmpty!11288) setIsEmpty!11288))

(assert (= (and b!1562895 (not condSetEmpty!11288)) setNonEmpty!11288))

(assert (= setNonEmpty!11288 b!1562894))

(assert (= (and mapNonEmpty!8697 ((_ is Cons!16954) mapValue!8697)) b!1562895))

(assert (= (and b!1562893 condSetEmpty!11287) setIsEmpty!11287))

(assert (= (and b!1562893 (not condSetEmpty!11287)) setNonEmpty!11287))

(assert (= setNonEmpty!11287 b!1562892))

(assert (= (and mapNonEmpty!8681 ((_ is Cons!16954) mapDefault!8697)) b!1562893))

(declare-fun m!1834447 () Bool)

(assert (=> setNonEmpty!11287 m!1834447))

(declare-fun m!1834449 () Bool)

(assert (=> setNonEmpty!11288 m!1834449))

(declare-fun m!1834451 () Bool)

(assert (=> mapNonEmpty!8697 m!1834451))

(declare-fun b!1562916 () Bool)

(declare-fun e!1003688 () Bool)

(declare-fun e!1003685 () Bool)

(assert (=> b!1562916 (= e!1003688 e!1003685)))

(declare-fun e!1003691 () Bool)

(declare-fun e!1003693 () Bool)

(assert (=> d!462543 (= true (and e!1003691 e!1003688 e!1003693))))

(declare-fun b!1562917 () Bool)

(declare-fun e!1003690 () Bool)

(declare-fun e!1003692 () Bool)

(assert (=> b!1562917 (= e!1003690 e!1003692)))

(declare-fun b!1562918 () Bool)

(declare-fun lt!541340 () MutLongMap!1861)

(assert (=> b!1562918 (= e!1003692 ((_ is LongMap!1861) lt!541340))))

(assert (=> b!1562918 (= lt!541340 (v!23817 (underlying!3932 (cache!2186 (_2!9694 (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1562919 () Bool)

(declare-fun e!1003686 () Bool)

(assert (=> b!1562919 (= e!1003693 e!1003686)))

(declare-fun b!1562920 () Bool)

(declare-fun e!1003687 () Bool)

(declare-fun lt!541339 () MutLongMap!1862)

(assert (=> b!1562920 (= e!1003687 ((_ is LongMap!1862) lt!541339))))

(assert (=> b!1562920 (= lt!541339 (v!23822 (underlying!3934 (cache!2187 (_3!1401 (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1562921 () Bool)

(assert (=> b!1562921 (= e!1003691 e!1003690)))

(declare-fun b!1562922 () Bool)

(assert (=> b!1562922 (= e!1003685 e!1003687)))

(declare-fun b!1562923 () Bool)

(declare-fun e!1003689 () Bool)

(assert (=> b!1562923 (= e!1003686 e!1003689)))

(declare-fun b!1562924 () Bool)

(declare-fun lt!541338 () MutLongMap!1863)

(assert (=> b!1562924 (= e!1003689 ((_ is LongMap!1863) lt!541338))))

(assert (=> b!1562924 (= lt!541338 (v!23823 (underlying!3936 (cache!2188 (_4!463 (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(assert (= b!1562917 b!1562918))

(assert (= (and b!1562921 ((_ is HashMap!1805) (cache!2186 (_2!9694 (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1562917))

(assert (= d!462543 b!1562921))

(assert (= b!1562922 b!1562920))

(assert (= (and b!1562916 ((_ is HashMap!1806) (cache!2187 (_3!1401 (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1562922))

(assert (= d!462543 b!1562916))

(assert (= b!1562923 b!1562924))

(assert (= (and b!1562919 ((_ is HashMap!1807) (cache!2188 (_4!463 (findLongestMatchWithZipperSequenceV3Mem!64 (regex!2971 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1562923))

(assert (= d!462543 b!1562919))

(declare-fun b!1562925 () Bool)

(declare-fun e!1003694 () Bool)

(declare-fun tp!460231 () Bool)

(declare-fun tp!460232 () Bool)

(assert (=> b!1562925 (= e!1003694 (and tp!460231 tp!460232))))

(assert (=> b!1562280 (= tp!459968 e!1003694)))

(assert (= (and b!1562280 ((_ is Cons!16952) (exprs!1317 setElem!11257))) b!1562925))

(declare-fun tp!460234 () Bool)

(declare-fun tp!460235 () Bool)

(declare-fun b!1562926 () Bool)

(declare-fun e!1003695 () Bool)

(assert (=> b!1562926 (= e!1003695 (and (inv!22260 (left!13749 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) tp!460234 (inv!22260 (right!14079 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) tp!460235))))

(declare-fun b!1562928 () Bool)

(declare-fun e!1003696 () Bool)

(declare-fun tp!460233 () Bool)

(assert (=> b!1562928 (= e!1003696 tp!460233)))

(declare-fun b!1562927 () Bool)

(assert (=> b!1562927 (= e!1003695 (and (inv!22269 (xs!8389 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) e!1003696))))

(assert (=> b!1562276 (= tp!459966 (and (inv!22260 (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) e!1003695))))

(assert (= (and b!1562276 ((_ is Node!5589) (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) b!1562926))

(assert (= b!1562927 b!1562928))

(assert (= (and b!1562276 ((_ is Leaf!8284) (left!13749 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) b!1562927))

(declare-fun m!1834453 () Bool)

(assert (=> b!1562926 m!1834453))

(declare-fun m!1834455 () Bool)

(assert (=> b!1562926 m!1834455))

(declare-fun m!1834457 () Bool)

(assert (=> b!1562927 m!1834457))

(assert (=> b!1562276 m!1833676))

(declare-fun b!1562929 () Bool)

(declare-fun e!1003697 () Bool)

(declare-fun tp!460237 () Bool)

(declare-fun tp!460238 () Bool)

(assert (=> b!1562929 (= e!1003697 (and (inv!22260 (left!13749 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) tp!460237 (inv!22260 (right!14079 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) tp!460238))))

(declare-fun b!1562931 () Bool)

(declare-fun e!1003698 () Bool)

(declare-fun tp!460236 () Bool)

(assert (=> b!1562931 (= e!1003698 tp!460236)))

(declare-fun b!1562930 () Bool)

(assert (=> b!1562930 (= e!1003697 (and (inv!22269 (xs!8389 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) e!1003698))))

(assert (=> b!1562276 (= tp!459967 (and (inv!22260 (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))) e!1003697))))

(assert (= (and b!1562276 ((_ is Node!5589) (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) b!1562929))

(assert (= b!1562930 b!1562931))

(assert (= (and b!1562276 ((_ is Leaf!8284) (right!14079 (c!253235 (totalInput!2504 cacheFurthestNullable!103))))) b!1562930))

(declare-fun m!1834459 () Bool)

(assert (=> b!1562929 m!1834459))

(declare-fun m!1834461 () Bool)

(assert (=> b!1562929 m!1834461))

(declare-fun m!1834463 () Bool)

(assert (=> b!1562930 m!1834463))

(assert (=> b!1562276 m!1833678))

(declare-fun b!1562935 () Bool)

(declare-fun e!1003699 () Bool)

(declare-fun tp!460243 () Bool)

(declare-fun tp!460241 () Bool)

(assert (=> b!1562935 (= e!1003699 (and tp!460243 tp!460241))))

(declare-fun b!1562934 () Bool)

(declare-fun tp!460240 () Bool)

(assert (=> b!1562934 (= e!1003699 tp!460240)))

(assert (=> b!1562347 (= tp!460063 e!1003699)))

(declare-fun b!1562932 () Bool)

(assert (=> b!1562932 (= e!1003699 tp_is_empty!7089)))

(declare-fun b!1562933 () Bool)

(declare-fun tp!460242 () Bool)

(declare-fun tp!460239 () Bool)

(assert (=> b!1562933 (= e!1003699 (and tp!460242 tp!460239))))

(assert (= (and b!1562347 ((_ is ElementMatch!4299) (regOne!9111 (regex!2971 rule!240)))) b!1562932))

(assert (= (and b!1562347 ((_ is Concat!7361) (regOne!9111 (regex!2971 rule!240)))) b!1562933))

(assert (= (and b!1562347 ((_ is Star!4299) (regOne!9111 (regex!2971 rule!240)))) b!1562934))

(assert (= (and b!1562347 ((_ is Union!4299) (regOne!9111 (regex!2971 rule!240)))) b!1562935))

(declare-fun b!1562939 () Bool)

(declare-fun e!1003700 () Bool)

(declare-fun tp!460248 () Bool)

(declare-fun tp!460246 () Bool)

(assert (=> b!1562939 (= e!1003700 (and tp!460248 tp!460246))))

(declare-fun b!1562938 () Bool)

(declare-fun tp!460245 () Bool)

(assert (=> b!1562938 (= e!1003700 tp!460245)))

(assert (=> b!1562347 (= tp!460061 e!1003700)))

(declare-fun b!1562936 () Bool)

(assert (=> b!1562936 (= e!1003700 tp_is_empty!7089)))

(declare-fun b!1562937 () Bool)

(declare-fun tp!460247 () Bool)

(declare-fun tp!460244 () Bool)

(assert (=> b!1562937 (= e!1003700 (and tp!460247 tp!460244))))

(assert (= (and b!1562347 ((_ is ElementMatch!4299) (regTwo!9111 (regex!2971 rule!240)))) b!1562936))

(assert (= (and b!1562347 ((_ is Concat!7361) (regTwo!9111 (regex!2971 rule!240)))) b!1562937))

(assert (= (and b!1562347 ((_ is Star!4299) (regTwo!9111 (regex!2971 rule!240)))) b!1562938))

(assert (= (and b!1562347 ((_ is Union!4299) (regTwo!9111 (regex!2971 rule!240)))) b!1562939))

(declare-fun b!1562944 () Bool)

(declare-fun e!1003703 () Bool)

(declare-fun tp!460251 () Bool)

(assert (=> b!1562944 (= e!1003703 (and tp_is_empty!7089 tp!460251))))

(assert (=> b!1562333 (= tp!460046 e!1003703)))

(assert (= (and b!1562333 ((_ is Cons!16951) (innerList!5649 (xs!8389 (c!253235 input!1676))))) b!1562944))

(declare-fun b!1562945 () Bool)

(declare-fun e!1003704 () Bool)

(declare-fun tp!460252 () Bool)

(declare-fun tp!460253 () Bool)

(assert (=> b!1562945 (= e!1003704 (and tp!460252 tp!460253))))

(assert (=> b!1562300 (= tp!459997 e!1003704)))

(assert (= (and b!1562300 ((_ is Cons!16952) (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapValue!8684)))))) b!1562945))

(declare-fun condSetEmpty!11289 () Bool)

(assert (=> setNonEmpty!11249 (= condSetEmpty!11289 (= setRest!11249 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11289 () Bool)

(assert (=> setNonEmpty!11249 (= tp!459921 setRes!11289)))

(declare-fun setIsEmpty!11289 () Bool)

(assert (=> setIsEmpty!11289 setRes!11289))

(declare-fun tp!460254 () Bool)

(declare-fun e!1003705 () Bool)

(declare-fun setElem!11289 () Context!1634)

(declare-fun setNonEmpty!11289 () Bool)

(assert (=> setNonEmpty!11289 (= setRes!11289 (and tp!460254 (inv!22268 setElem!11289) e!1003705))))

(declare-fun setRest!11289 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11289 (= setRest!11249 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11289 true) setRest!11289))))

(declare-fun b!1562946 () Bool)

(declare-fun tp!460255 () Bool)

(assert (=> b!1562946 (= e!1003705 tp!460255)))

(assert (= (and setNonEmpty!11249 condSetEmpty!11289) setIsEmpty!11289))

(assert (= (and setNonEmpty!11249 (not condSetEmpty!11289)) setNonEmpty!11289))

(assert (= setNonEmpty!11289 b!1562946))

(declare-fun m!1834465 () Bool)

(assert (=> setNonEmpty!11289 m!1834465))

(declare-fun b!1562947 () Bool)

(declare-fun e!1003706 () Bool)

(declare-fun tp!460256 () Bool)

(declare-fun tp!460257 () Bool)

(assert (=> b!1562947 (= e!1003706 (and tp!460256 tp!460257))))

(assert (=> b!1562322 (= tp!460038 e!1003706)))

(assert (= (and b!1562322 ((_ is Cons!16952) (exprs!1317 setElem!11271))) b!1562947))

(declare-fun b!1562948 () Bool)

(declare-fun e!1003707 () Bool)

(declare-fun tp!460258 () Bool)

(assert (=> b!1562948 (= e!1003707 (and tp_is_empty!7089 tp!460258))))

(assert (=> b!1562252 (= tp!459929 e!1003707)))

(assert (= (and b!1562252 ((_ is Cons!16951) (innerList!5649 (xs!8389 (c!253235 totalInput!568))))) b!1562948))

(declare-fun b!1562949 () Bool)

(declare-fun e!1003708 () Bool)

(declare-fun tp!460259 () Bool)

(declare-fun tp!460260 () Bool)

(assert (=> b!1562949 (= e!1003708 (and tp!460259 tp!460260))))

(assert (=> b!1562221 (= tp!459899 e!1003708)))

(assert (= (and b!1562221 ((_ is Cons!16952) (exprs!1317 setElem!11242))) b!1562949))

(declare-fun b!1562950 () Bool)

(declare-fun e!1003709 () Bool)

(declare-fun tp!460261 () Bool)

(declare-fun tp!460262 () Bool)

(assert (=> b!1562950 (= e!1003709 (and tp!460261 tp!460262))))

(assert (=> b!1562307 (= tp!460005 e!1003709)))

(assert (= (and b!1562307 ((_ is Cons!16952) (exprs!1317 setElem!11266))) b!1562950))

(declare-fun condSetEmpty!11290 () Bool)

(assert (=> setNonEmpty!11242 (= condSetEmpty!11290 (= setRest!11242 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11290 () Bool)

(assert (=> setNonEmpty!11242 (= tp!459896 setRes!11290)))

(declare-fun setIsEmpty!11290 () Bool)

(assert (=> setIsEmpty!11290 setRes!11290))

(declare-fun setElem!11290 () Context!1634)

(declare-fun e!1003710 () Bool)

(declare-fun setNonEmpty!11290 () Bool)

(declare-fun tp!460263 () Bool)

(assert (=> setNonEmpty!11290 (= setRes!11290 (and tp!460263 (inv!22268 setElem!11290) e!1003710))))

(declare-fun setRest!11290 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11290 (= setRest!11242 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11290 true) setRest!11290))))

(declare-fun b!1562951 () Bool)

(declare-fun tp!460264 () Bool)

(assert (=> b!1562951 (= e!1003710 tp!460264)))

(assert (= (and setNonEmpty!11242 condSetEmpty!11290) setIsEmpty!11290))

(assert (= (and setNonEmpty!11242 (not condSetEmpty!11290)) setNonEmpty!11290))

(assert (= setNonEmpty!11290 b!1562951))

(declare-fun m!1834467 () Bool)

(assert (=> setNonEmpty!11290 m!1834467))

(declare-fun b!1562952 () Bool)

(declare-fun e!1003711 () Bool)

(declare-fun tp!460265 () Bool)

(declare-fun tp!460266 () Bool)

(assert (=> b!1562952 (= e!1003711 (and tp!460265 tp!460266))))

(assert (=> b!1562269 (= tp!459952 e!1003711)))

(assert (= (and b!1562269 ((_ is Cons!16952) (exprs!1317 setElem!11254))) b!1562952))

(declare-fun b!1562953 () Bool)

(declare-fun e!1003712 () Bool)

(declare-fun tp!460267 () Bool)

(declare-fun tp!460268 () Bool)

(assert (=> b!1562953 (= e!1003712 (and tp!460267 tp!460268))))

(assert (=> b!1562266 (= tp!459947 e!1003712)))

(assert (= (and b!1562266 ((_ is Cons!16952) (exprs!1317 setElem!11253))) b!1562953))

(declare-fun b!1562954 () Bool)

(declare-fun e!1003713 () Bool)

(declare-fun tp!460269 () Bool)

(declare-fun tp!460270 () Bool)

(assert (=> b!1562954 (= e!1003713 (and tp!460269 tp!460270))))

(assert (=> b!1562263 (= tp!459942 e!1003713)))

(assert (= (and b!1562263 ((_ is Cons!16952) (exprs!1317 setElem!11252))) b!1562954))

(declare-fun b!1562955 () Bool)

(declare-fun e!1003714 () Bool)

(declare-fun tp!460271 () Bool)

(declare-fun tp!460272 () Bool)

(assert (=> b!1562955 (= e!1003714 (and tp!460271 tp!460272))))

(assert (=> b!1562296 (= tp!459993 e!1003714)))

(assert (= (and b!1562296 ((_ is Cons!16952) (exprs!1317 setElem!11262))) b!1562955))

(declare-fun condSetEmpty!11291 () Bool)

(assert (=> setNonEmpty!11253 (= condSetEmpty!11291 (= setRest!11253 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11291 () Bool)

(assert (=> setNonEmpty!11253 (= tp!459949 setRes!11291)))

(declare-fun setIsEmpty!11291 () Bool)

(assert (=> setIsEmpty!11291 setRes!11291))

(declare-fun setElem!11291 () Context!1634)

(declare-fun e!1003715 () Bool)

(declare-fun setNonEmpty!11291 () Bool)

(declare-fun tp!460273 () Bool)

(assert (=> setNonEmpty!11291 (= setRes!11291 (and tp!460273 (inv!22268 setElem!11291) e!1003715))))

(declare-fun setRest!11291 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11291 (= setRest!11253 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11291 true) setRest!11291))))

(declare-fun b!1562956 () Bool)

(declare-fun tp!460274 () Bool)

(assert (=> b!1562956 (= e!1003715 tp!460274)))

(assert (= (and setNonEmpty!11253 condSetEmpty!11291) setIsEmpty!11291))

(assert (= (and setNonEmpty!11253 (not condSetEmpty!11291)) setNonEmpty!11291))

(assert (= setNonEmpty!11291 b!1562956))

(declare-fun m!1834469 () Bool)

(assert (=> setNonEmpty!11291 m!1834469))

(declare-fun b!1562957 () Bool)

(declare-fun e!1003716 () Bool)

(declare-fun tp!460275 () Bool)

(declare-fun tp!460276 () Bool)

(assert (=> b!1562957 (= e!1003716 (and tp!460275 tp!460276))))

(assert (=> b!1562330 (= tp!460041 e!1003716)))

(assert (= (and b!1562330 ((_ is Cons!16952) (exprs!1317 setElem!11273))) b!1562957))

(declare-fun condSetEmpty!11292 () Bool)

(assert (=> setNonEmpty!11252 (= condSetEmpty!11292 (= setRest!11252 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11292 () Bool)

(assert (=> setNonEmpty!11252 (= tp!459944 setRes!11292)))

(declare-fun setIsEmpty!11292 () Bool)

(assert (=> setIsEmpty!11292 setRes!11292))

(declare-fun e!1003717 () Bool)

(declare-fun tp!460277 () Bool)

(declare-fun setNonEmpty!11292 () Bool)

(declare-fun setElem!11292 () Context!1634)

(assert (=> setNonEmpty!11292 (= setRes!11292 (and tp!460277 (inv!22268 setElem!11292) e!1003717))))

(declare-fun setRest!11292 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11292 (= setRest!11252 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11292 true) setRest!11292))))

(declare-fun b!1562958 () Bool)

(declare-fun tp!460278 () Bool)

(assert (=> b!1562958 (= e!1003717 tp!460278)))

(assert (= (and setNonEmpty!11252 condSetEmpty!11292) setIsEmpty!11292))

(assert (= (and setNonEmpty!11252 (not condSetEmpty!11292)) setNonEmpty!11292))

(assert (= setNonEmpty!11292 b!1562958))

(declare-fun m!1834471 () Bool)

(assert (=> setNonEmpty!11292 m!1834471))

(declare-fun b!1562959 () Bool)

(declare-fun e!1003718 () Bool)

(declare-fun tp!460279 () Bool)

(declare-fun tp!460280 () Bool)

(assert (=> b!1562959 (= e!1003718 (and tp!460279 tp!460280))))

(assert (=> b!1562270 (= tp!459960 e!1003718)))

(assert (= (and b!1562270 ((_ is Cons!16952) (exprs!1317 (_1!9685 (_1!9686 (h!22354 (zeroValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))))) b!1562959))

(declare-fun condSetEmpty!11293 () Bool)

(assert (=> setNonEmpty!11254 (= condSetEmpty!11293 (= setRest!11254 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11293 () Bool)

(assert (=> setNonEmpty!11254 (= tp!459954 setRes!11293)))

(declare-fun setIsEmpty!11293 () Bool)

(assert (=> setIsEmpty!11293 setRes!11293))

(declare-fun setNonEmpty!11293 () Bool)

(declare-fun e!1003719 () Bool)

(declare-fun setElem!11293 () Context!1634)

(declare-fun tp!460281 () Bool)

(assert (=> setNonEmpty!11293 (= setRes!11293 (and tp!460281 (inv!22268 setElem!11293) e!1003719))))

(declare-fun setRest!11293 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11293 (= setRest!11254 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11293 true) setRest!11293))))

(declare-fun b!1562960 () Bool)

(declare-fun tp!460282 () Bool)

(assert (=> b!1562960 (= e!1003719 tp!460282)))

(assert (= (and setNonEmpty!11254 condSetEmpty!11293) setIsEmpty!11293))

(assert (= (and setNonEmpty!11254 (not condSetEmpty!11293)) setNonEmpty!11293))

(assert (= setNonEmpty!11293 b!1562960))

(declare-fun m!1834473 () Bool)

(assert (=> setNonEmpty!11293 m!1834473))

(declare-fun b!1562961 () Bool)

(declare-fun e!1003720 () Bool)

(declare-fun tp!460283 () Bool)

(declare-fun tp!460284 () Bool)

(assert (=> b!1562961 (= e!1003720 (and tp!460283 tp!460284))))

(assert (=> b!1562230 (= tp!459908 e!1003720)))

(assert (= (and b!1562230 ((_ is Cons!16952) (exprs!1317 setElem!11246))) b!1562961))

(declare-fun setRes!11294 () Bool)

(declare-fun setNonEmpty!11294 () Bool)

(declare-fun tp!460287 () Bool)

(declare-fun setElem!11294 () Context!1634)

(declare-fun e!1003721 () Bool)

(assert (=> setNonEmpty!11294 (= setRes!11294 (and tp!460287 (inv!22268 setElem!11294) e!1003721))))

(declare-fun setRest!11294 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11294 (= (_2!9686 (h!22354 (t!141570 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11294 true) setRest!11294))))

(declare-fun b!1562962 () Bool)

(declare-fun e!1003723 () Bool)

(declare-fun tp!460288 () Bool)

(assert (=> b!1562962 (= e!1003723 tp!460288)))

(declare-fun e!1003722 () Bool)

(declare-fun tp!460286 () Bool)

(declare-fun b!1562963 () Bool)

(assert (=> b!1562963 (= e!1003722 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (t!141570 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))))) e!1003723 tp_is_empty!7089 setRes!11294 tp!460286))))

(declare-fun condSetEmpty!11294 () Bool)

(assert (=> b!1562963 (= condSetEmpty!11294 (= (_2!9686 (h!22354 (t!141570 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11294 () Bool)

(assert (=> setIsEmpty!11294 setRes!11294))

(assert (=> b!1562274 (= tp!459962 e!1003722)))

(declare-fun b!1562964 () Bool)

(declare-fun tp!460285 () Bool)

(assert (=> b!1562964 (= e!1003721 tp!460285)))

(assert (= b!1562963 b!1562962))

(assert (= (and b!1562963 condSetEmpty!11294) setIsEmpty!11294))

(assert (= (and b!1562963 (not condSetEmpty!11294)) setNonEmpty!11294))

(assert (= setNonEmpty!11294 b!1562964))

(assert (= (and b!1562274 ((_ is Cons!16953) (t!141570 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755))))))))) b!1562963))

(declare-fun m!1834475 () Bool)

(assert (=> setNonEmpty!11294 m!1834475))

(declare-fun m!1834477 () Bool)

(assert (=> b!1562963 m!1834477))

(declare-fun condSetEmpty!11295 () Bool)

(assert (=> setNonEmpty!11273 (= condSetEmpty!11295 (= setRest!11273 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11295 () Bool)

(assert (=> setNonEmpty!11273 (= tp!460043 setRes!11295)))

(declare-fun setIsEmpty!11295 () Bool)

(assert (=> setIsEmpty!11295 setRes!11295))

(declare-fun setNonEmpty!11295 () Bool)

(declare-fun e!1003724 () Bool)

(declare-fun tp!460289 () Bool)

(declare-fun setElem!11295 () Context!1634)

(assert (=> setNonEmpty!11295 (= setRes!11295 (and tp!460289 (inv!22268 setElem!11295) e!1003724))))

(declare-fun setRest!11295 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11295 (= setRest!11273 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11295 true) setRest!11295))))

(declare-fun b!1562965 () Bool)

(declare-fun tp!460290 () Bool)

(assert (=> b!1562965 (= e!1003724 tp!460290)))

(assert (= (and setNonEmpty!11273 condSetEmpty!11295) setIsEmpty!11295))

(assert (= (and setNonEmpty!11273 (not condSetEmpty!11295)) setNonEmpty!11295))

(assert (= setNonEmpty!11295 b!1562965))

(declare-fun m!1834479 () Bool)

(assert (=> setNonEmpty!11295 m!1834479))

(declare-fun b!1562969 () Bool)

(declare-fun e!1003725 () Bool)

(declare-fun tp!460295 () Bool)

(declare-fun tp!460293 () Bool)

(assert (=> b!1562969 (= e!1003725 (and tp!460295 tp!460293))))

(declare-fun b!1562968 () Bool)

(declare-fun tp!460292 () Bool)

(assert (=> b!1562968 (= e!1003725 tp!460292)))

(assert (=> b!1562325 (= tp!460030 e!1003725)))

(declare-fun b!1562966 () Bool)

(assert (=> b!1562966 (= e!1003725 tp_is_empty!7089)))

(declare-fun b!1562967 () Bool)

(declare-fun tp!460294 () Bool)

(declare-fun tp!460291 () Bool)

(assert (=> b!1562967 (= e!1003725 (and tp!460294 tp!460291))))

(assert (= (and b!1562325 ((_ is ElementMatch!4299) (_1!9691 (_1!9692 (h!22356 mapValue!8687))))) b!1562966))

(assert (= (and b!1562325 ((_ is Concat!7361) (_1!9691 (_1!9692 (h!22356 mapValue!8687))))) b!1562967))

(assert (= (and b!1562325 ((_ is Star!4299) (_1!9691 (_1!9692 (h!22356 mapValue!8687))))) b!1562968))

(assert (= (and b!1562325 ((_ is Union!4299) (_1!9691 (_1!9692 (h!22356 mapValue!8687))))) b!1562969))

(declare-fun tp!460298 () Bool)

(declare-fun setRes!11296 () Bool)

(declare-fun setElem!11296 () Context!1634)

(declare-fun e!1003726 () Bool)

(declare-fun setNonEmpty!11296 () Bool)

(assert (=> setNonEmpty!11296 (= setRes!11296 (and tp!460298 (inv!22268 setElem!11296) e!1003726))))

(declare-fun setRest!11296 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11296 (= (_2!9692 (h!22356 (t!141572 mapValue!8687))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11296 true) setRest!11296))))

(declare-fun e!1003727 () Bool)

(assert (=> b!1562325 (= tp!460031 e!1003727)))

(declare-fun e!1003728 () Bool)

(declare-fun tp!460297 () Bool)

(declare-fun b!1562970 () Bool)

(declare-fun tp!460300 () Bool)

(assert (=> b!1562970 (= e!1003727 (and tp!460300 (inv!22268 (_2!9691 (_1!9692 (h!22356 (t!141572 mapValue!8687))))) e!1003728 tp_is_empty!7089 setRes!11296 tp!460297))))

(declare-fun condSetEmpty!11296 () Bool)

(assert (=> b!1562970 (= condSetEmpty!11296 (= (_2!9692 (h!22356 (t!141572 mapValue!8687))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562971 () Bool)

(declare-fun tp!460299 () Bool)

(assert (=> b!1562971 (= e!1003728 tp!460299)))

(declare-fun setIsEmpty!11296 () Bool)

(assert (=> setIsEmpty!11296 setRes!11296))

(declare-fun b!1562972 () Bool)

(declare-fun tp!460296 () Bool)

(assert (=> b!1562972 (= e!1003726 tp!460296)))

(assert (= b!1562970 b!1562971))

(assert (= (and b!1562970 condSetEmpty!11296) setIsEmpty!11296))

(assert (= (and b!1562970 (not condSetEmpty!11296)) setNonEmpty!11296))

(assert (= setNonEmpty!11296 b!1562972))

(assert (= (and b!1562325 ((_ is Cons!16955) (t!141572 mapValue!8687))) b!1562970))

(declare-fun m!1834481 () Bool)

(assert (=> setNonEmpty!11296 m!1834481))

(declare-fun m!1834483 () Bool)

(assert (=> b!1562970 m!1834483))

(declare-fun setElem!11297 () Context!1634)

(declare-fun setNonEmpty!11297 () Bool)

(declare-fun e!1003729 () Bool)

(declare-fun tp!460302 () Bool)

(declare-fun setRes!11297 () Bool)

(assert (=> setNonEmpty!11297 (= setRes!11297 (and tp!460302 (inv!22268 setElem!11297) e!1003729))))

(declare-fun setRest!11297 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11297 (= (_1!9689 (_1!9690 (h!22355 (t!141571 (zeroValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11297 true) setRest!11297))))

(declare-fun b!1562973 () Bool)

(declare-fun e!1003730 () Bool)

(declare-fun tp!460303 () Bool)

(assert (=> b!1562973 (= e!1003730 (and setRes!11297 tp!460303))))

(declare-fun condSetEmpty!11297 () Bool)

(assert (=> b!1562973 (= condSetEmpty!11297 (= (_1!9689 (_1!9690 (h!22355 (t!141571 (zeroValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562974 () Bool)

(declare-fun tp!460301 () Bool)

(assert (=> b!1562974 (= e!1003729 tp!460301)))

(assert (=> b!1562304 (= tp!460004 e!1003730)))

(declare-fun setIsEmpty!11297 () Bool)

(assert (=> setIsEmpty!11297 setRes!11297))

(assert (= (and b!1562973 condSetEmpty!11297) setIsEmpty!11297))

(assert (= (and b!1562973 (not condSetEmpty!11297)) setNonEmpty!11297))

(assert (= setNonEmpty!11297 b!1562974))

(assert (= (and b!1562304 ((_ is Cons!16954) (t!141571 (zeroValue!2119 (v!23820 (underlying!3935 (v!23823 (underlying!3936 (cache!2188 cacheFurthestNullable!103))))))))) b!1562973))

(declare-fun m!1834485 () Bool)

(assert (=> setNonEmpty!11297 m!1834485))

(declare-fun setNonEmpty!11298 () Bool)

(declare-fun setElem!11298 () Context!1634)

(declare-fun e!1003731 () Bool)

(declare-fun tp!460305 () Bool)

(declare-fun setRes!11298 () Bool)

(assert (=> setNonEmpty!11298 (= setRes!11298 (and tp!460305 (inv!22268 setElem!11298) e!1003731))))

(declare-fun setRest!11298 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11298 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapValue!8681)))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11298 true) setRest!11298))))

(declare-fun b!1562975 () Bool)

(declare-fun e!1003732 () Bool)

(declare-fun tp!460306 () Bool)

(assert (=> b!1562975 (= e!1003732 (and setRes!11298 tp!460306))))

(declare-fun condSetEmpty!11298 () Bool)

(assert (=> b!1562975 (= condSetEmpty!11298 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapValue!8681)))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562976 () Bool)

(declare-fun tp!460304 () Bool)

(assert (=> b!1562976 (= e!1003731 tp!460304)))

(assert (=> b!1562222 (= tp!459898 e!1003732)))

(declare-fun setIsEmpty!11298 () Bool)

(assert (=> setIsEmpty!11298 setRes!11298))

(assert (= (and b!1562975 condSetEmpty!11298) setIsEmpty!11298))

(assert (= (and b!1562975 (not condSetEmpty!11298)) setNonEmpty!11298))

(assert (= setNonEmpty!11298 b!1562976))

(assert (= (and b!1562222 ((_ is Cons!16954) (t!141571 mapValue!8681))) b!1562975))

(declare-fun m!1834487 () Bool)

(assert (=> setNonEmpty!11298 m!1834487))

(declare-fun b!1562977 () Bool)

(declare-fun e!1003733 () Bool)

(declare-fun tp!460307 () Bool)

(declare-fun tp!460308 () Bool)

(assert (=> b!1562977 (= e!1003733 (and tp!460307 tp!460308))))

(assert (=> b!1562299 (= tp!459991 e!1003733)))

(assert (= (and b!1562299 ((_ is Cons!16952) (exprs!1317 setElem!11263))) b!1562977))

(declare-fun b!1562981 () Bool)

(declare-fun e!1003734 () Bool)

(declare-fun tp!460313 () Bool)

(declare-fun tp!460311 () Bool)

(assert (=> b!1562981 (= e!1003734 (and tp!460313 tp!460311))))

(declare-fun b!1562980 () Bool)

(declare-fun tp!460310 () Bool)

(assert (=> b!1562980 (= e!1003734 tp!460310)))

(assert (=> b!1562346 (= tp!460060 e!1003734)))

(declare-fun b!1562978 () Bool)

(assert (=> b!1562978 (= e!1003734 tp_is_empty!7089)))

(declare-fun b!1562979 () Bool)

(declare-fun tp!460312 () Bool)

(declare-fun tp!460309 () Bool)

(assert (=> b!1562979 (= e!1003734 (and tp!460312 tp!460309))))

(assert (= (and b!1562346 ((_ is ElementMatch!4299) (reg!4628 (regex!2971 rule!240)))) b!1562978))

(assert (= (and b!1562346 ((_ is Concat!7361) (reg!4628 (regex!2971 rule!240)))) b!1562979))

(assert (= (and b!1562346 ((_ is Star!4299) (reg!4628 (regex!2971 rule!240)))) b!1562980))

(assert (= (and b!1562346 ((_ is Union!4299) (reg!4628 (regex!2971 rule!240)))) b!1562981))

(declare-fun b!1562982 () Bool)

(declare-fun e!1003737 () Bool)

(declare-fun tp!460322 () Bool)

(assert (=> b!1562982 (= e!1003737 tp!460322)))

(declare-fun setIsEmpty!11299 () Bool)

(declare-fun setRes!11299 () Bool)

(assert (=> setIsEmpty!11299 setRes!11299))

(declare-fun setIsEmpty!11300 () Bool)

(declare-fun setRes!11300 () Bool)

(assert (=> setIsEmpty!11300 setRes!11300))

(declare-fun setNonEmpty!11299 () Bool)

(declare-fun setElem!11299 () Context!1634)

(declare-fun tp!460316 () Bool)

(assert (=> setNonEmpty!11299 (= setRes!11300 (and tp!460316 (inv!22268 setElem!11299) e!1003737))))

(declare-fun mapDefault!8698 () List!17023)

(declare-fun setRest!11300 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11299 (= (_2!9692 (h!22356 mapDefault!8698)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11299 true) setRest!11300))))

(declare-fun mapIsEmpty!8698 () Bool)

(declare-fun mapRes!8698 () Bool)

(assert (=> mapIsEmpty!8698 mapRes!8698))

(declare-fun setElem!11300 () Context!1634)

(declare-fun tp!460324 () Bool)

(declare-fun e!1003739 () Bool)

(declare-fun setNonEmpty!11300 () Bool)

(assert (=> setNonEmpty!11300 (= setRes!11299 (and tp!460324 (inv!22268 setElem!11300) e!1003739))))

(declare-fun mapValue!8698 () List!17023)

(declare-fun setRest!11299 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11300 (= (_2!9692 (h!22356 mapValue!8698)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11300 true) setRest!11299))))

(declare-fun mapNonEmpty!8698 () Bool)

(declare-fun tp!460319 () Bool)

(declare-fun e!1003735 () Bool)

(assert (=> mapNonEmpty!8698 (= mapRes!8698 (and tp!460319 e!1003735))))

(declare-fun mapRest!8698 () (Array (_ BitVec 32) List!17023))

(declare-fun mapKey!8698 () (_ BitVec 32))

(assert (=> mapNonEmpty!8698 (= mapRest!8687 (store mapRest!8698 mapKey!8698 mapValue!8698))))

(declare-fun b!1562984 () Bool)

(declare-fun tp!460318 () Bool)

(assert (=> b!1562984 (= e!1003739 tp!460318)))

(declare-fun tp!460314 () Bool)

(declare-fun tp!460315 () Bool)

(declare-fun e!1003740 () Bool)

(declare-fun b!1562985 () Bool)

(assert (=> b!1562985 (= e!1003735 (and tp!460314 (inv!22268 (_2!9691 (_1!9692 (h!22356 mapValue!8698)))) e!1003740 tp_is_empty!7089 setRes!11299 tp!460315))))

(declare-fun condSetEmpty!11300 () Bool)

(assert (=> b!1562985 (= condSetEmpty!11300 (= (_2!9692 (h!22356 mapValue!8698)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun condMapEmpty!8698 () Bool)

(assert (=> mapNonEmpty!8687 (= condMapEmpty!8698 (= mapRest!8687 ((as const (Array (_ BitVec 32) List!17023)) mapDefault!8698)))))

(declare-fun e!1003738 () Bool)

(assert (=> mapNonEmpty!8687 (= tp!460035 (and e!1003738 mapRes!8698))))

(declare-fun b!1562983 () Bool)

(declare-fun e!1003736 () Bool)

(declare-fun tp!460323 () Bool)

(assert (=> b!1562983 (= e!1003736 tp!460323)))

(declare-fun b!1562986 () Bool)

(declare-fun tp!460320 () Bool)

(assert (=> b!1562986 (= e!1003740 tp!460320)))

(declare-fun b!1562987 () Bool)

(declare-fun tp!460321 () Bool)

(declare-fun tp!460317 () Bool)

(assert (=> b!1562987 (= e!1003738 (and tp!460321 (inv!22268 (_2!9691 (_1!9692 (h!22356 mapDefault!8698)))) e!1003736 tp_is_empty!7089 setRes!11300 tp!460317))))

(declare-fun condSetEmpty!11299 () Bool)

(assert (=> b!1562987 (= condSetEmpty!11299 (= (_2!9692 (h!22356 mapDefault!8698)) ((as const (Array Context!1634 Bool)) false)))))

(assert (= (and mapNonEmpty!8687 condMapEmpty!8698) mapIsEmpty!8698))

(assert (= (and mapNonEmpty!8687 (not condMapEmpty!8698)) mapNonEmpty!8698))

(assert (= b!1562985 b!1562986))

(assert (= (and b!1562985 condSetEmpty!11300) setIsEmpty!11299))

(assert (= (and b!1562985 (not condSetEmpty!11300)) setNonEmpty!11300))

(assert (= setNonEmpty!11300 b!1562984))

(assert (= (and mapNonEmpty!8698 ((_ is Cons!16955) mapValue!8698)) b!1562985))

(assert (= b!1562987 b!1562983))

(assert (= (and b!1562987 condSetEmpty!11299) setIsEmpty!11300))

(assert (= (and b!1562987 (not condSetEmpty!11299)) setNonEmpty!11299))

(assert (= setNonEmpty!11299 b!1562982))

(assert (= (and mapNonEmpty!8687 ((_ is Cons!16955) mapDefault!8698)) b!1562987))

(declare-fun m!1834489 () Bool)

(assert (=> b!1562987 m!1834489))

(declare-fun m!1834491 () Bool)

(assert (=> setNonEmpty!11300 m!1834491))

(declare-fun m!1834493 () Bool)

(assert (=> setNonEmpty!11299 m!1834493))

(declare-fun m!1834495 () Bool)

(assert (=> b!1562985 m!1834495))

(declare-fun m!1834497 () Bool)

(assert (=> mapNonEmpty!8698 m!1834497))

(declare-fun condSetEmpty!11301 () Bool)

(assert (=> setNonEmpty!11271 (= condSetEmpty!11301 (= setRest!11272 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11301 () Bool)

(assert (=> setNonEmpty!11271 (= tp!460032 setRes!11301)))

(declare-fun setIsEmpty!11301 () Bool)

(assert (=> setIsEmpty!11301 setRes!11301))

(declare-fun setElem!11301 () Context!1634)

(declare-fun setNonEmpty!11301 () Bool)

(declare-fun e!1003741 () Bool)

(declare-fun tp!460325 () Bool)

(assert (=> setNonEmpty!11301 (= setRes!11301 (and tp!460325 (inv!22268 setElem!11301) e!1003741))))

(declare-fun setRest!11301 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11301 (= setRest!11272 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11301 true) setRest!11301))))

(declare-fun b!1562988 () Bool)

(declare-fun tp!460326 () Bool)

(assert (=> b!1562988 (= e!1003741 tp!460326)))

(assert (= (and setNonEmpty!11271 condSetEmpty!11301) setIsEmpty!11301))

(assert (= (and setNonEmpty!11271 (not condSetEmpty!11301)) setNonEmpty!11301))

(assert (= setNonEmpty!11301 b!1562988))

(declare-fun m!1834499 () Bool)

(assert (=> setNonEmpty!11301 m!1834499))

(declare-fun condSetEmpty!11302 () Bool)

(assert (=> setNonEmpty!11257 (= condSetEmpty!11302 (= setRest!11257 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11302 () Bool)

(assert (=> setNonEmpty!11257 (= tp!459969 setRes!11302)))

(declare-fun setIsEmpty!11302 () Bool)

(assert (=> setIsEmpty!11302 setRes!11302))

(declare-fun tp!460327 () Bool)

(declare-fun setElem!11302 () Context!1634)

(declare-fun setNonEmpty!11302 () Bool)

(declare-fun e!1003742 () Bool)

(assert (=> setNonEmpty!11302 (= setRes!11302 (and tp!460327 (inv!22268 setElem!11302) e!1003742))))

(declare-fun setRest!11302 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11302 (= setRest!11257 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11302 true) setRest!11302))))

(declare-fun b!1562989 () Bool)

(declare-fun tp!460328 () Bool)

(assert (=> b!1562989 (= e!1003742 tp!460328)))

(assert (= (and setNonEmpty!11257 condSetEmpty!11302) setIsEmpty!11302))

(assert (= (and setNonEmpty!11257 (not condSetEmpty!11302)) setNonEmpty!11302))

(assert (= setNonEmpty!11302 b!1562989))

(declare-fun m!1834501 () Bool)

(assert (=> setNonEmpty!11302 m!1834501))

(declare-fun condSetEmpty!11303 () Bool)

(assert (=> setNonEmpty!11266 (= condSetEmpty!11303 (= setRest!11266 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11303 () Bool)

(assert (=> setNonEmpty!11266 (= tp!460006 setRes!11303)))

(declare-fun setIsEmpty!11303 () Bool)

(assert (=> setIsEmpty!11303 setRes!11303))

(declare-fun setElem!11303 () Context!1634)

(declare-fun setNonEmpty!11303 () Bool)

(declare-fun e!1003743 () Bool)

(declare-fun tp!460329 () Bool)

(assert (=> setNonEmpty!11303 (= setRes!11303 (and tp!460329 (inv!22268 setElem!11303) e!1003743))))

(declare-fun setRest!11303 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11303 (= setRest!11266 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11303 true) setRest!11303))))

(declare-fun b!1562990 () Bool)

(declare-fun tp!460330 () Bool)

(assert (=> b!1562990 (= e!1003743 tp!460330)))

(assert (= (and setNonEmpty!11266 condSetEmpty!11303) setIsEmpty!11303))

(assert (= (and setNonEmpty!11266 (not condSetEmpty!11303)) setNonEmpty!11303))

(assert (= setNonEmpty!11303 b!1562990))

(declare-fun m!1834503 () Bool)

(assert (=> setNonEmpty!11303 m!1834503))

(declare-fun setElem!11304 () Context!1634)

(declare-fun setNonEmpty!11304 () Bool)

(declare-fun tp!460332 () Bool)

(declare-fun setRes!11304 () Bool)

(declare-fun e!1003744 () Bool)

(assert (=> setNonEmpty!11304 (= setRes!11304 (and tp!460332 (inv!22268 setElem!11304) e!1003744))))

(declare-fun setRest!11304 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11304 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapDefault!8681)))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11304 true) setRest!11304))))

(declare-fun b!1562991 () Bool)

(declare-fun e!1003745 () Bool)

(declare-fun tp!460333 () Bool)

(assert (=> b!1562991 (= e!1003745 (and setRes!11304 tp!460333))))

(declare-fun condSetEmpty!11304 () Bool)

(assert (=> b!1562991 (= condSetEmpty!11304 (= (_1!9689 (_1!9690 (h!22355 (t!141571 mapDefault!8681)))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1562992 () Bool)

(declare-fun tp!460331 () Bool)

(assert (=> b!1562992 (= e!1003744 tp!460331)))

(assert (=> b!1562220 (= tp!459897 e!1003745)))

(declare-fun setIsEmpty!11304 () Bool)

(assert (=> setIsEmpty!11304 setRes!11304))

(assert (= (and b!1562991 condSetEmpty!11304) setIsEmpty!11304))

(assert (= (and b!1562991 (not condSetEmpty!11304)) setNonEmpty!11304))

(assert (= setNonEmpty!11304 b!1562992))

(assert (= (and b!1562220 ((_ is Cons!16954) (t!141571 mapDefault!8681))) b!1562991))

(declare-fun m!1834505 () Bool)

(assert (=> setNonEmpty!11304 m!1834505))

(declare-fun condSetEmpty!11305 () Bool)

(assert (=> setNonEmpty!11262 (= condSetEmpty!11305 (= setRest!11263 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11305 () Bool)

(assert (=> setNonEmpty!11262 (= tp!459996 setRes!11305)))

(declare-fun setIsEmpty!11305 () Bool)

(assert (=> setIsEmpty!11305 setRes!11305))

(declare-fun setElem!11305 () Context!1634)

(declare-fun tp!460334 () Bool)

(declare-fun e!1003746 () Bool)

(declare-fun setNonEmpty!11305 () Bool)

(assert (=> setNonEmpty!11305 (= setRes!11305 (and tp!460334 (inv!22268 setElem!11305) e!1003746))))

(declare-fun setRest!11305 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11305 (= setRest!11263 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11305 true) setRest!11305))))

(declare-fun b!1562993 () Bool)

(declare-fun tp!460335 () Bool)

(assert (=> b!1562993 (= e!1003746 tp!460335)))

(assert (= (and setNonEmpty!11262 condSetEmpty!11305) setIsEmpty!11305))

(assert (= (and setNonEmpty!11262 (not condSetEmpty!11305)) setNonEmpty!11305))

(assert (= setNonEmpty!11305 b!1562993))

(declare-fun m!1834507 () Bool)

(assert (=> setNonEmpty!11305 m!1834507))

(declare-fun b!1562994 () Bool)

(declare-fun e!1003747 () Bool)

(declare-fun tp!460336 () Bool)

(declare-fun tp!460337 () Bool)

(assert (=> b!1562994 (= e!1003747 (and tp!460336 tp!460337))))

(assert (=> b!1562219 (= tp!459895 e!1003747)))

(assert (= (and b!1562219 ((_ is Cons!16952) (exprs!1317 setElem!11243))) b!1562994))

(declare-fun setRes!11307 () Bool)

(declare-fun e!1003752 () Bool)

(declare-fun mapValue!8699 () List!17021)

(declare-fun e!1003751 () Bool)

(declare-fun tp!460339 () Bool)

(declare-fun b!1562995 () Bool)

(assert (=> b!1562995 (= e!1003752 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 mapValue!8699)))) e!1003751 tp_is_empty!7089 setRes!11307 tp!460339))))

(declare-fun condSetEmpty!11307 () Bool)

(assert (=> b!1562995 (= condSetEmpty!11307 (= (_2!9686 (h!22354 mapValue!8699)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun mapNonEmpty!8699 () Bool)

(declare-fun mapRes!8699 () Bool)

(declare-fun tp!460341 () Bool)

(assert (=> mapNonEmpty!8699 (= mapRes!8699 (and tp!460341 e!1003752))))

(declare-fun mapKey!8699 () (_ BitVec 32))

(declare-fun mapRest!8699 () (Array (_ BitVec 32) List!17021))

(assert (=> mapNonEmpty!8699 (= mapRest!8684 (store mapRest!8699 mapKey!8699 mapValue!8699))))

(declare-fun condMapEmpty!8699 () Bool)

(declare-fun mapDefault!8699 () List!17021)

(assert (=> mapNonEmpty!8684 (= condMapEmpty!8699 (= mapRest!8684 ((as const (Array (_ BitVec 32) List!17021)) mapDefault!8699)))))

(declare-fun e!1003750 () Bool)

(assert (=> mapNonEmpty!8684 (= tp!459992 (and e!1003750 mapRes!8699))))

(declare-fun b!1562996 () Bool)

(declare-fun e!1003749 () Bool)

(declare-fun tp!460342 () Bool)

(assert (=> b!1562996 (= e!1003749 tp!460342)))

(declare-fun b!1562997 () Bool)

(declare-fun e!1003748 () Bool)

(declare-fun tp!460338 () Bool)

(assert (=> b!1562997 (= e!1003748 tp!460338)))

(declare-fun tp!460343 () Bool)

(declare-fun setRes!11306 () Bool)

(declare-fun b!1562998 () Bool)

(assert (=> b!1562998 (= e!1003750 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 mapDefault!8699)))) e!1003748 tp_is_empty!7089 setRes!11306 tp!460343))))

(declare-fun condSetEmpty!11306 () Bool)

(assert (=> b!1562998 (= condSetEmpty!11306 (= (_2!9686 (h!22354 mapDefault!8699)) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setNonEmpty!11306 () Bool)

(declare-fun tp!460345 () Bool)

(declare-fun setElem!11306 () Context!1634)

(assert (=> setNonEmpty!11306 (= setRes!11306 (and tp!460345 (inv!22268 setElem!11306) e!1003749))))

(declare-fun setRest!11307 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11306 (= (_2!9686 (h!22354 mapDefault!8699)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11306 true) setRest!11307))))

(declare-fun mapIsEmpty!8699 () Bool)

(assert (=> mapIsEmpty!8699 mapRes!8699))

(declare-fun setIsEmpty!11306 () Bool)

(assert (=> setIsEmpty!11306 setRes!11307))

(declare-fun setNonEmpty!11307 () Bool)

(declare-fun e!1003753 () Bool)

(declare-fun tp!460344 () Bool)

(declare-fun setElem!11307 () Context!1634)

(assert (=> setNonEmpty!11307 (= setRes!11307 (and tp!460344 (inv!22268 setElem!11307) e!1003753))))

(declare-fun setRest!11306 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11307 (= (_2!9686 (h!22354 mapValue!8699)) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11307 true) setRest!11306))))

(declare-fun b!1562999 () Bool)

(declare-fun tp!460340 () Bool)

(assert (=> b!1562999 (= e!1003753 tp!460340)))

(declare-fun b!1563000 () Bool)

(declare-fun tp!460346 () Bool)

(assert (=> b!1563000 (= e!1003751 tp!460346)))

(declare-fun setIsEmpty!11307 () Bool)

(assert (=> setIsEmpty!11307 setRes!11306))

(assert (= (and mapNonEmpty!8684 condMapEmpty!8699) mapIsEmpty!8699))

(assert (= (and mapNonEmpty!8684 (not condMapEmpty!8699)) mapNonEmpty!8699))

(assert (= b!1562995 b!1563000))

(assert (= (and b!1562995 condSetEmpty!11307) setIsEmpty!11306))

(assert (= (and b!1562995 (not condSetEmpty!11307)) setNonEmpty!11307))

(assert (= setNonEmpty!11307 b!1562999))

(assert (= (and mapNonEmpty!8699 ((_ is Cons!16953) mapValue!8699)) b!1562995))

(assert (= b!1562998 b!1562997))

(assert (= (and b!1562998 condSetEmpty!11306) setIsEmpty!11307))

(assert (= (and b!1562998 (not condSetEmpty!11306)) setNonEmpty!11306))

(assert (= setNonEmpty!11306 b!1562996))

(assert (= (and mapNonEmpty!8684 ((_ is Cons!16953) mapDefault!8699)) b!1562998))

(declare-fun m!1834509 () Bool)

(assert (=> b!1562998 m!1834509))

(declare-fun m!1834511 () Bool)

(assert (=> mapNonEmpty!8699 m!1834511))

(declare-fun m!1834513 () Bool)

(assert (=> setNonEmpty!11307 m!1834513))

(declare-fun m!1834515 () Bool)

(assert (=> setNonEmpty!11306 m!1834515))

(declare-fun m!1834517 () Bool)

(assert (=> b!1562995 m!1834517))

(declare-fun b!1563001 () Bool)

(declare-fun e!1003754 () Bool)

(declare-fun tp!460347 () Bool)

(declare-fun tp!460348 () Bool)

(assert (=> b!1563001 (= e!1003754 (and tp!460347 tp!460348))))

(assert (=> b!1562272 (= tp!459957 e!1003754)))

(assert (= (and b!1562272 ((_ is Cons!16952) (exprs!1317 setElem!11255))) b!1563001))

(declare-fun b!1563002 () Bool)

(declare-fun e!1003755 () Bool)

(declare-fun tp!460349 () Bool)

(declare-fun tp!460350 () Bool)

(assert (=> b!1563002 (= e!1003755 (and tp!460349 tp!460350))))

(assert (=> b!1562273 (= tp!459964 e!1003755)))

(assert (= (and b!1562273 ((_ is Cons!16952) (exprs!1317 (_1!9685 (_1!9686 (h!22354 (minValue!2118 (v!23816 (underlying!3931 (v!23817 (underlying!3932 (cache!2186 cacheUp!755)))))))))))) b!1563002))

(declare-fun condSetEmpty!11308 () Bool)

(assert (=> setNonEmpty!11255 (= condSetEmpty!11308 (= setRest!11255 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11308 () Bool)

(assert (=> setNonEmpty!11255 (= tp!459959 setRes!11308)))

(declare-fun setIsEmpty!11308 () Bool)

(assert (=> setIsEmpty!11308 setRes!11308))

(declare-fun e!1003756 () Bool)

(declare-fun setElem!11308 () Context!1634)

(declare-fun tp!460351 () Bool)

(declare-fun setNonEmpty!11308 () Bool)

(assert (=> setNonEmpty!11308 (= setRes!11308 (and tp!460351 (inv!22268 setElem!11308) e!1003756))))

(declare-fun setRest!11308 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11308 (= setRest!11255 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11308 true) setRest!11308))))

(declare-fun b!1563003 () Bool)

(declare-fun tp!460352 () Bool)

(assert (=> b!1563003 (= e!1003756 tp!460352)))

(assert (= (and setNonEmpty!11255 condSetEmpty!11308) setIsEmpty!11308))

(assert (= (and setNonEmpty!11255 (not condSetEmpty!11308)) setNonEmpty!11308))

(assert (= setNonEmpty!11308 b!1563003))

(declare-fun m!1834519 () Bool)

(assert (=> setNonEmpty!11308 m!1834519))

(declare-fun condSetEmpty!11309 () Bool)

(assert (=> setNonEmpty!11246 (= condSetEmpty!11309 (= setRest!11246 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11309 () Bool)

(assert (=> setNonEmpty!11246 (= tp!459909 setRes!11309)))

(declare-fun setIsEmpty!11309 () Bool)

(assert (=> setIsEmpty!11309 setRes!11309))

(declare-fun tp!460353 () Bool)

(declare-fun e!1003757 () Bool)

(declare-fun setNonEmpty!11309 () Bool)

(declare-fun setElem!11309 () Context!1634)

(assert (=> setNonEmpty!11309 (= setRes!11309 (and tp!460353 (inv!22268 setElem!11309) e!1003757))))

(declare-fun setRest!11309 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11309 (= setRest!11246 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11309 true) setRest!11309))))

(declare-fun b!1563004 () Bool)

(declare-fun tp!460354 () Bool)

(assert (=> b!1563004 (= e!1003757 tp!460354)))

(assert (= (and setNonEmpty!11246 condSetEmpty!11309) setIsEmpty!11309))

(assert (= (and setNonEmpty!11246 (not condSetEmpty!11309)) setNonEmpty!11309))

(assert (= setNonEmpty!11309 b!1563004))

(declare-fun m!1834521 () Bool)

(assert (=> setNonEmpty!11309 m!1834521))

(declare-fun setNonEmpty!11310 () Bool)

(declare-fun e!1003758 () Bool)

(declare-fun setElem!11310 () Context!1634)

(declare-fun tp!460357 () Bool)

(declare-fun setRes!11310 () Bool)

(assert (=> setNonEmpty!11310 (= setRes!11310 (and tp!460357 (inv!22268 setElem!11310) e!1003758))))

(declare-fun setRest!11310 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11310 (= (_2!9686 (h!22354 (t!141570 mapValue!8676))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11310 true) setRest!11310))))

(declare-fun b!1563005 () Bool)

(declare-fun e!1003760 () Bool)

(declare-fun tp!460358 () Bool)

(assert (=> b!1563005 (= e!1003760 tp!460358)))

(declare-fun e!1003759 () Bool)

(declare-fun b!1563006 () Bool)

(declare-fun tp!460356 () Bool)

(assert (=> b!1563006 (= e!1003759 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (t!141570 mapValue!8676))))) e!1003760 tp_is_empty!7089 setRes!11310 tp!460356))))

(declare-fun condSetEmpty!11310 () Bool)

(assert (=> b!1563006 (= condSetEmpty!11310 (= (_2!9686 (h!22354 (t!141570 mapValue!8676))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11310 () Bool)

(assert (=> setIsEmpty!11310 setRes!11310))

(assert (=> b!1562302 (= tp!459999 e!1003759)))

(declare-fun b!1563007 () Bool)

(declare-fun tp!460355 () Bool)

(assert (=> b!1563007 (= e!1003758 tp!460355)))

(assert (= b!1563006 b!1563005))

(assert (= (and b!1563006 condSetEmpty!11310) setIsEmpty!11310))

(assert (= (and b!1563006 (not condSetEmpty!11310)) setNonEmpty!11310))

(assert (= setNonEmpty!11310 b!1563007))

(assert (= (and b!1562302 ((_ is Cons!16953) (t!141570 mapValue!8676))) b!1563006))

(declare-fun m!1834523 () Bool)

(assert (=> setNonEmpty!11310 m!1834523))

(declare-fun m!1834525 () Bool)

(assert (=> b!1563006 m!1834525))

(declare-fun b!1563008 () Bool)

(declare-fun e!1003761 () Bool)

(declare-fun tp!460359 () Bool)

(declare-fun tp!460360 () Bool)

(assert (=> b!1563008 (= e!1003761 (and tp!460359 tp!460360))))

(assert (=> b!1562241 (= tp!459919 e!1003761)))

(assert (= (and b!1562241 ((_ is Cons!16952) (exprs!1317 setElem!11249))) b!1563008))

(declare-fun b!1563009 () Bool)

(declare-fun e!1003762 () Bool)

(declare-fun tp!460361 () Bool)

(declare-fun tp!460362 () Bool)

(assert (=> b!1563009 (= e!1003762 (and tp!460361 tp!460362))))

(assert (=> b!1562324 (= tp!460034 e!1003762)))

(assert (= (and b!1562324 ((_ is Cons!16952) (exprs!1317 setElem!11272))) b!1563009))

(declare-fun tp!460364 () Bool)

(declare-fun e!1003763 () Bool)

(declare-fun b!1563010 () Bool)

(declare-fun tp!460365 () Bool)

(assert (=> b!1563010 (= e!1003763 (and (inv!22260 (left!13749 (left!13749 (c!253235 input!1676)))) tp!460364 (inv!22260 (right!14079 (left!13749 (c!253235 input!1676)))) tp!460365))))

(declare-fun b!1563012 () Bool)

(declare-fun e!1003764 () Bool)

(declare-fun tp!460363 () Bool)

(assert (=> b!1563012 (= e!1003764 tp!460363)))

(declare-fun b!1563011 () Bool)

(assert (=> b!1563011 (= e!1003763 (and (inv!22269 (xs!8389 (left!13749 (c!253235 input!1676)))) e!1003764))))

(assert (=> b!1562331 (= tp!460047 (and (inv!22260 (left!13749 (c!253235 input!1676))) e!1003763))))

(assert (= (and b!1562331 ((_ is Node!5589) (left!13749 (c!253235 input!1676)))) b!1563010))

(assert (= b!1563011 b!1563012))

(assert (= (and b!1562331 ((_ is Leaf!8284) (left!13749 (c!253235 input!1676)))) b!1563011))

(declare-fun m!1834527 () Bool)

(assert (=> b!1563010 m!1834527))

(declare-fun m!1834529 () Bool)

(assert (=> b!1563010 m!1834529))

(declare-fun m!1834531 () Bool)

(assert (=> b!1563011 m!1834531))

(assert (=> b!1562331 m!1833716))

(declare-fun b!1563013 () Bool)

(declare-fun tp!460368 () Bool)

(declare-fun tp!460367 () Bool)

(declare-fun e!1003765 () Bool)

(assert (=> b!1563013 (= e!1003765 (and (inv!22260 (left!13749 (right!14079 (c!253235 input!1676)))) tp!460367 (inv!22260 (right!14079 (right!14079 (c!253235 input!1676)))) tp!460368))))

(declare-fun b!1563015 () Bool)

(declare-fun e!1003766 () Bool)

(declare-fun tp!460366 () Bool)

(assert (=> b!1563015 (= e!1003766 tp!460366)))

(declare-fun b!1563014 () Bool)

(assert (=> b!1563014 (= e!1003765 (and (inv!22269 (xs!8389 (right!14079 (c!253235 input!1676)))) e!1003766))))

(assert (=> b!1562331 (= tp!460048 (and (inv!22260 (right!14079 (c!253235 input!1676))) e!1003765))))

(assert (= (and b!1562331 ((_ is Node!5589) (right!14079 (c!253235 input!1676)))) b!1563013))

(assert (= b!1563014 b!1563015))

(assert (= (and b!1562331 ((_ is Leaf!8284) (right!14079 (c!253235 input!1676)))) b!1563014))

(declare-fun m!1834533 () Bool)

(assert (=> b!1563013 m!1834533))

(declare-fun m!1834535 () Bool)

(assert (=> b!1563013 m!1834535))

(declare-fun m!1834537 () Bool)

(assert (=> b!1563014 m!1834537))

(assert (=> b!1562331 m!1833718))

(declare-fun condSetEmpty!11311 () Bool)

(assert (=> setNonEmpty!11263 (= condSetEmpty!11311 (= setRest!11262 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11311 () Bool)

(assert (=> setNonEmpty!11263 (= tp!459995 setRes!11311)))

(declare-fun setIsEmpty!11311 () Bool)

(assert (=> setIsEmpty!11311 setRes!11311))

(declare-fun setNonEmpty!11311 () Bool)

(declare-fun tp!460369 () Bool)

(declare-fun e!1003767 () Bool)

(declare-fun setElem!11311 () Context!1634)

(assert (=> setNonEmpty!11311 (= setRes!11311 (and tp!460369 (inv!22268 setElem!11311) e!1003767))))

(declare-fun setRest!11311 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11311 (= setRest!11262 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11311 true) setRest!11311))))

(declare-fun b!1563016 () Bool)

(declare-fun tp!460370 () Bool)

(assert (=> b!1563016 (= e!1003767 tp!460370)))

(assert (= (and setNonEmpty!11263 condSetEmpty!11311) setIsEmpty!11311))

(assert (= (and setNonEmpty!11263 (not condSetEmpty!11311)) setNonEmpty!11311))

(assert (= setNonEmpty!11311 b!1563016))

(declare-fun m!1834539 () Bool)

(assert (=> setNonEmpty!11311 m!1834539))

(declare-fun condSetEmpty!11312 () Bool)

(assert (=> setNonEmpty!11272 (= condSetEmpty!11312 (= setRest!11271 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11312 () Bool)

(assert (=> setNonEmpty!11272 (= tp!460040 setRes!11312)))

(declare-fun setIsEmpty!11312 () Bool)

(assert (=> setIsEmpty!11312 setRes!11312))

(declare-fun setNonEmpty!11312 () Bool)

(declare-fun e!1003768 () Bool)

(declare-fun setElem!11312 () Context!1634)

(declare-fun tp!460371 () Bool)

(assert (=> setNonEmpty!11312 (= setRes!11312 (and tp!460371 (inv!22268 setElem!11312) e!1003768))))

(declare-fun setRest!11312 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11312 (= setRest!11271 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11312 true) setRest!11312))))

(declare-fun b!1563017 () Bool)

(declare-fun tp!460372 () Bool)

(assert (=> b!1563017 (= e!1003768 tp!460372)))

(assert (= (and setNonEmpty!11272 condSetEmpty!11312) setIsEmpty!11312))

(assert (= (and setNonEmpty!11272 (not condSetEmpty!11312)) setNonEmpty!11312))

(assert (= setNonEmpty!11312 b!1563017))

(declare-fun m!1834541 () Bool)

(assert (=> setNonEmpty!11312 m!1834541))

(declare-fun b!1563018 () Bool)

(declare-fun e!1003769 () Bool)

(declare-fun tp!460373 () Bool)

(assert (=> b!1563018 (= e!1003769 (and tp_is_empty!7089 tp!460373))))

(assert (=> b!1562278 (= tp!459965 e!1003769)))

(assert (= (and b!1562278 ((_ is Cons!16951) (innerList!5649 (xs!8389 (c!253235 (totalInput!2504 cacheFurthestNullable!103)))))) b!1563018))

(declare-fun e!1003770 () Bool)

(declare-fun setNonEmpty!11313 () Bool)

(declare-fun setElem!11313 () Context!1634)

(declare-fun tp!460376 () Bool)

(declare-fun setRes!11313 () Bool)

(assert (=> setNonEmpty!11313 (= setRes!11313 (and tp!460376 (inv!22268 setElem!11313) e!1003770))))

(declare-fun setRest!11313 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11313 (= (_2!9686 (h!22354 (t!141570 mapDefault!8676))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11313 true) setRest!11313))))

(declare-fun b!1563019 () Bool)

(declare-fun e!1003772 () Bool)

(declare-fun tp!460377 () Bool)

(assert (=> b!1563019 (= e!1003772 tp!460377)))

(declare-fun e!1003771 () Bool)

(declare-fun b!1563020 () Bool)

(declare-fun tp!460375 () Bool)

(assert (=> b!1563020 (= e!1003771 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (t!141570 mapDefault!8676))))) e!1003772 tp_is_empty!7089 setRes!11313 tp!460375))))

(declare-fun condSetEmpty!11313 () Bool)

(assert (=> b!1563020 (= condSetEmpty!11313 (= (_2!9686 (h!22354 (t!141570 mapDefault!8676))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11313 () Bool)

(assert (=> setIsEmpty!11313 setRes!11313))

(assert (=> b!1562240 (= tp!459920 e!1003771)))

(declare-fun b!1563021 () Bool)

(declare-fun tp!460374 () Bool)

(assert (=> b!1563021 (= e!1003770 tp!460374)))

(assert (= b!1563020 b!1563019))

(assert (= (and b!1563020 condSetEmpty!11313) setIsEmpty!11313))

(assert (= (and b!1563020 (not condSetEmpty!11313)) setNonEmpty!11313))

(assert (= setNonEmpty!11313 b!1563021))

(assert (= (and b!1562240 ((_ is Cons!16953) (t!141570 mapDefault!8676))) b!1563020))

(declare-fun m!1834543 () Bool)

(assert (=> setNonEmpty!11313 m!1834543))

(declare-fun m!1834545 () Bool)

(assert (=> b!1563020 m!1834545))

(declare-fun b!1563025 () Bool)

(declare-fun e!1003773 () Bool)

(declare-fun tp!460382 () Bool)

(declare-fun tp!460380 () Bool)

(assert (=> b!1563025 (= e!1003773 (and tp!460382 tp!460380))))

(declare-fun b!1563024 () Bool)

(declare-fun tp!460379 () Bool)

(assert (=> b!1563024 (= e!1003773 tp!460379)))

(assert (=> b!1562345 (= tp!460062 e!1003773)))

(declare-fun b!1563022 () Bool)

(assert (=> b!1563022 (= e!1003773 tp_is_empty!7089)))

(declare-fun b!1563023 () Bool)

(declare-fun tp!460381 () Bool)

(declare-fun tp!460378 () Bool)

(assert (=> b!1563023 (= e!1003773 (and tp!460381 tp!460378))))

(assert (= (and b!1562345 ((_ is ElementMatch!4299) (regOne!9110 (regex!2971 rule!240)))) b!1563022))

(assert (= (and b!1562345 ((_ is Concat!7361) (regOne!9110 (regex!2971 rule!240)))) b!1563023))

(assert (= (and b!1562345 ((_ is Star!4299) (regOne!9110 (regex!2971 rule!240)))) b!1563024))

(assert (= (and b!1562345 ((_ is Union!4299) (regOne!9110 (regex!2971 rule!240)))) b!1563025))

(declare-fun b!1563029 () Bool)

(declare-fun e!1003774 () Bool)

(declare-fun tp!460387 () Bool)

(declare-fun tp!460385 () Bool)

(assert (=> b!1563029 (= e!1003774 (and tp!460387 tp!460385))))

(declare-fun b!1563028 () Bool)

(declare-fun tp!460384 () Bool)

(assert (=> b!1563028 (= e!1003774 tp!460384)))

(assert (=> b!1562345 (= tp!460059 e!1003774)))

(declare-fun b!1563026 () Bool)

(assert (=> b!1563026 (= e!1003774 tp_is_empty!7089)))

(declare-fun b!1563027 () Bool)

(declare-fun tp!460386 () Bool)

(declare-fun tp!460383 () Bool)

(assert (=> b!1563027 (= e!1003774 (and tp!460386 tp!460383))))

(assert (= (and b!1562345 ((_ is ElementMatch!4299) (regTwo!9110 (regex!2971 rule!240)))) b!1563026))

(assert (= (and b!1562345 ((_ is Concat!7361) (regTwo!9110 (regex!2971 rule!240)))) b!1563027))

(assert (= (and b!1562345 ((_ is Star!4299) (regTwo!9110 (regex!2971 rule!240)))) b!1563028))

(assert (= (and b!1562345 ((_ is Union!4299) (regTwo!9110 (regex!2971 rule!240)))) b!1563029))

(declare-fun e!1003775 () Bool)

(declare-fun tp!460389 () Bool)

(declare-fun b!1563030 () Bool)

(declare-fun tp!460390 () Bool)

(assert (=> b!1563030 (= e!1003775 (and (inv!22260 (left!13749 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))) tp!460389 (inv!22260 (right!14079 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))) tp!460390))))

(declare-fun b!1563032 () Bool)

(declare-fun e!1003776 () Bool)

(declare-fun tp!460388 () Bool)

(assert (=> b!1563032 (= e!1003776 tp!460388)))

(declare-fun b!1563031 () Bool)

(assert (=> b!1563031 (= e!1003775 (and (inv!22269 (xs!8389 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))) e!1003776))))

(assert (=> b!1562352 (= tp!460066 (and (inv!22260 (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))) e!1003775))))

(assert (= (and b!1562352 ((_ is Node!5589) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))) b!1563030))

(assert (= b!1563031 b!1563032))

(assert (= (and b!1562352 ((_ is Leaf!8284) (c!253235 (dynLambda!7562 (toChars!4211 (transformation!2971 rule!240)) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056))))) b!1563031))

(declare-fun m!1834547 () Bool)

(assert (=> b!1563030 m!1834547))

(declare-fun m!1834549 () Bool)

(assert (=> b!1563030 m!1834549))

(declare-fun m!1834551 () Bool)

(assert (=> b!1563031 m!1834551))

(assert (=> b!1562352 m!1833722))

(declare-fun tp!460393 () Bool)

(declare-fun e!1003777 () Bool)

(declare-fun setNonEmpty!11314 () Bool)

(declare-fun setElem!11314 () Context!1634)

(declare-fun setRes!11314 () Bool)

(assert (=> setNonEmpty!11314 (= setRes!11314 (and tp!460393 (inv!22268 setElem!11314) e!1003777))))

(declare-fun setRest!11314 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11314 (= (_2!9686 (h!22354 (t!141570 mapDefault!8684))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11314 true) setRest!11314))))

(declare-fun b!1563033 () Bool)

(declare-fun e!1003779 () Bool)

(declare-fun tp!460394 () Bool)

(assert (=> b!1563033 (= e!1003779 tp!460394)))

(declare-fun tp!460392 () Bool)

(declare-fun e!1003778 () Bool)

(declare-fun b!1563034 () Bool)

(assert (=> b!1563034 (= e!1003778 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (t!141570 mapDefault!8684))))) e!1003779 tp_is_empty!7089 setRes!11314 tp!460392))))

(declare-fun condSetEmpty!11314 () Bool)

(assert (=> b!1563034 (= condSetEmpty!11314 (= (_2!9686 (h!22354 (t!141570 mapDefault!8684))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11314 () Bool)

(assert (=> setIsEmpty!11314 setRes!11314))

(assert (=> b!1562298 (= tp!459994 e!1003778)))

(declare-fun b!1563035 () Bool)

(declare-fun tp!460391 () Bool)

(assert (=> b!1563035 (= e!1003777 tp!460391)))

(assert (= b!1563034 b!1563033))

(assert (= (and b!1563034 condSetEmpty!11314) setIsEmpty!11314))

(assert (= (and b!1563034 (not condSetEmpty!11314)) setNonEmpty!11314))

(assert (= setNonEmpty!11314 b!1563035))

(assert (= (and b!1562298 ((_ is Cons!16953) (t!141570 mapDefault!8684))) b!1563034))

(declare-fun m!1834553 () Bool)

(assert (=> setNonEmpty!11314 m!1834553))

(declare-fun m!1834555 () Bool)

(assert (=> b!1563034 m!1834555))

(declare-fun tp!460397 () Bool)

(declare-fun tp!460396 () Bool)

(declare-fun b!1563036 () Bool)

(declare-fun e!1003780 () Bool)

(assert (=> b!1563036 (= e!1003780 (and (inv!22260 (left!13749 (left!13749 (c!253235 totalInput!568)))) tp!460396 (inv!22260 (right!14079 (left!13749 (c!253235 totalInput!568)))) tp!460397))))

(declare-fun b!1563038 () Bool)

(declare-fun e!1003781 () Bool)

(declare-fun tp!460395 () Bool)

(assert (=> b!1563038 (= e!1003781 tp!460395)))

(declare-fun b!1563037 () Bool)

(assert (=> b!1563037 (= e!1003780 (and (inv!22269 (xs!8389 (left!13749 (c!253235 totalInput!568)))) e!1003781))))

(assert (=> b!1562250 (= tp!459930 (and (inv!22260 (left!13749 (c!253235 totalInput!568))) e!1003780))))

(assert (= (and b!1562250 ((_ is Node!5589) (left!13749 (c!253235 totalInput!568)))) b!1563036))

(assert (= b!1563037 b!1563038))

(assert (= (and b!1562250 ((_ is Leaf!8284) (left!13749 (c!253235 totalInput!568)))) b!1563037))

(declare-fun m!1834557 () Bool)

(assert (=> b!1563036 m!1834557))

(declare-fun m!1834559 () Bool)

(assert (=> b!1563036 m!1834559))

(declare-fun m!1834561 () Bool)

(assert (=> b!1563037 m!1834561))

(assert (=> b!1562250 m!1833650))

(declare-fun e!1003782 () Bool)

(declare-fun b!1563039 () Bool)

(declare-fun tp!460399 () Bool)

(declare-fun tp!460400 () Bool)

(assert (=> b!1563039 (= e!1003782 (and (inv!22260 (left!13749 (right!14079 (c!253235 totalInput!568)))) tp!460399 (inv!22260 (right!14079 (right!14079 (c!253235 totalInput!568)))) tp!460400))))

(declare-fun b!1563041 () Bool)

(declare-fun e!1003783 () Bool)

(declare-fun tp!460398 () Bool)

(assert (=> b!1563041 (= e!1003783 tp!460398)))

(declare-fun b!1563040 () Bool)

(assert (=> b!1563040 (= e!1003782 (and (inv!22269 (xs!8389 (right!14079 (c!253235 totalInput!568)))) e!1003783))))

(assert (=> b!1562250 (= tp!459931 (and (inv!22260 (right!14079 (c!253235 totalInput!568))) e!1003782))))

(assert (= (and b!1562250 ((_ is Node!5589) (right!14079 (c!253235 totalInput!568)))) b!1563039))

(assert (= b!1563040 b!1563041))

(assert (= (and b!1562250 ((_ is Leaf!8284) (right!14079 (c!253235 totalInput!568)))) b!1563040))

(declare-fun m!1834563 () Bool)

(assert (=> b!1563039 m!1834563))

(declare-fun m!1834565 () Bool)

(assert (=> b!1563039 m!1834565))

(declare-fun m!1834567 () Bool)

(assert (=> b!1563040 m!1834567))

(assert (=> b!1562250 m!1833652))

(declare-fun e!1003784 () Bool)

(declare-fun setElem!11315 () Context!1634)

(declare-fun setRes!11315 () Bool)

(declare-fun setNonEmpty!11315 () Bool)

(declare-fun tp!460403 () Bool)

(assert (=> setNonEmpty!11315 (= setRes!11315 (and tp!460403 (inv!22268 setElem!11315) e!1003784))))

(declare-fun setRest!11315 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11315 (= (_2!9686 (h!22354 (t!141570 mapValue!8684))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11315 true) setRest!11315))))

(declare-fun b!1563042 () Bool)

(declare-fun e!1003786 () Bool)

(declare-fun tp!460404 () Bool)

(assert (=> b!1563042 (= e!1003786 tp!460404)))

(declare-fun e!1003785 () Bool)

(declare-fun b!1563043 () Bool)

(declare-fun tp!460402 () Bool)

(assert (=> b!1563043 (= e!1003785 (and (inv!22268 (_1!9685 (_1!9686 (h!22354 (t!141570 mapValue!8684))))) e!1003786 tp_is_empty!7089 setRes!11315 tp!460402))))

(declare-fun condSetEmpty!11315 () Bool)

(assert (=> b!1563043 (= condSetEmpty!11315 (= (_2!9686 (h!22354 (t!141570 mapValue!8684))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setIsEmpty!11315 () Bool)

(assert (=> setIsEmpty!11315 setRes!11315))

(assert (=> b!1562295 (= tp!459990 e!1003785)))

(declare-fun b!1563044 () Bool)

(declare-fun tp!460401 () Bool)

(assert (=> b!1563044 (= e!1003784 tp!460401)))

(assert (= b!1563043 b!1563042))

(assert (= (and b!1563043 condSetEmpty!11315) setIsEmpty!11315))

(assert (= (and b!1563043 (not condSetEmpty!11315)) setNonEmpty!11315))

(assert (= setNonEmpty!11315 b!1563044))

(assert (= (and b!1562295 ((_ is Cons!16953) (t!141570 mapValue!8684))) b!1563043))

(declare-fun m!1834569 () Bool)

(assert (=> setNonEmpty!11315 m!1834569))

(declare-fun m!1834571 () Bool)

(assert (=> b!1563043 m!1834571))

(declare-fun b!1563045 () Bool)

(declare-fun e!1003787 () Bool)

(declare-fun tp!460405 () Bool)

(declare-fun tp!460406 () Bool)

(assert (=> b!1563045 (= e!1003787 (and tp!460405 tp!460406))))

(assert (=> b!1562275 (= tp!459961 e!1003787)))

(assert (= (and b!1562275 ((_ is Cons!16952) (exprs!1317 setElem!11256))) b!1563045))

(declare-fun b!1563046 () Bool)

(declare-fun e!1003788 () Bool)

(declare-fun tp!460407 () Bool)

(declare-fun tp!460408 () Bool)

(assert (=> b!1563046 (= e!1003788 (and tp!460407 tp!460408))))

(assert (=> b!1562265 (= tp!459950 e!1003788)))

(assert (= (and b!1562265 ((_ is Cons!16952) (exprs!1317 (_2!9691 (_1!9692 (h!22356 (zeroValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))))) b!1563046))

(declare-fun b!1563047 () Bool)

(declare-fun e!1003789 () Bool)

(declare-fun tp!460409 () Bool)

(declare-fun tp!460410 () Bool)

(assert (=> b!1563047 (= e!1003789 (and tp!460409 tp!460410))))

(assert (=> b!1562262 (= tp!459945 e!1003789)))

(assert (= (and b!1562262 ((_ is Cons!16952) (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapDefault!8677)))))) b!1563047))

(declare-fun b!1563048 () Bool)

(declare-fun e!1003790 () Bool)

(declare-fun tp!460411 () Bool)

(declare-fun tp!460412 () Bool)

(assert (=> b!1563048 (= e!1003790 (and tp!460411 tp!460412))))

(assert (=> b!1562268 (= tp!459955 e!1003790)))

(assert (= (and b!1562268 ((_ is Cons!16952) (exprs!1317 (_2!9691 (_1!9692 (h!22356 (minValue!2120 (v!23821 (underlying!3933 (v!23822 (underlying!3934 (cache!2187 cacheDown!768)))))))))))) b!1563048))

(declare-fun b!1563049 () Bool)

(declare-fun e!1003791 () Bool)

(declare-fun tp!460413 () Bool)

(declare-fun tp!460414 () Bool)

(assert (=> b!1563049 (= e!1003791 (and tp!460413 tp!460414))))

(assert (=> b!1562329 (= tp!460044 e!1003791)))

(assert (= (and b!1562329 ((_ is Cons!16952) (exprs!1317 (_2!9691 (_1!9692 (h!22356 mapValue!8678)))))) b!1563049))

(declare-fun b!1563053 () Bool)

(declare-fun e!1003792 () Bool)

(declare-fun tp!460419 () Bool)

(declare-fun tp!460417 () Bool)

(assert (=> b!1563053 (= e!1003792 (and tp!460419 tp!460417))))

(declare-fun b!1563052 () Bool)

(declare-fun tp!460416 () Bool)

(assert (=> b!1563052 (= e!1003792 tp!460416)))

(assert (=> b!1562327 (= tp!460037 e!1003792)))

(declare-fun b!1563050 () Bool)

(assert (=> b!1563050 (= e!1003792 tp_is_empty!7089)))

(declare-fun b!1563051 () Bool)

(declare-fun tp!460418 () Bool)

(declare-fun tp!460415 () Bool)

(assert (=> b!1563051 (= e!1003792 (and tp!460418 tp!460415))))

(assert (= (and b!1562327 ((_ is ElementMatch!4299) (_1!9691 (_1!9692 (h!22356 mapDefault!8687))))) b!1563050))

(assert (= (and b!1562327 ((_ is Concat!7361) (_1!9691 (_1!9692 (h!22356 mapDefault!8687))))) b!1563051))

(assert (= (and b!1562327 ((_ is Star!4299) (_1!9691 (_1!9692 (h!22356 mapDefault!8687))))) b!1563052))

(assert (= (and b!1562327 ((_ is Union!4299) (_1!9691 (_1!9692 (h!22356 mapDefault!8687))))) b!1563053))

(declare-fun setElem!11316 () Context!1634)

(declare-fun e!1003793 () Bool)

(declare-fun tp!460422 () Bool)

(declare-fun setNonEmpty!11316 () Bool)

(declare-fun setRes!11316 () Bool)

(assert (=> setNonEmpty!11316 (= setRes!11316 (and tp!460422 (inv!22268 setElem!11316) e!1003793))))

(declare-fun setRest!11316 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11316 (= (_2!9692 (h!22356 (t!141572 mapDefault!8687))) ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11316 true) setRest!11316))))

(declare-fun e!1003794 () Bool)

(assert (=> b!1562327 (= tp!460033 e!1003794)))

(declare-fun tp!460421 () Bool)

(declare-fun e!1003795 () Bool)

(declare-fun b!1563054 () Bool)

(declare-fun tp!460424 () Bool)

(assert (=> b!1563054 (= e!1003794 (and tp!460424 (inv!22268 (_2!9691 (_1!9692 (h!22356 (t!141572 mapDefault!8687))))) e!1003795 tp_is_empty!7089 setRes!11316 tp!460421))))

(declare-fun condSetEmpty!11316 () Bool)

(assert (=> b!1563054 (= condSetEmpty!11316 (= (_2!9692 (h!22356 (t!141572 mapDefault!8687))) ((as const (Array Context!1634 Bool)) false)))))

(declare-fun b!1563055 () Bool)

(declare-fun tp!460423 () Bool)

(assert (=> b!1563055 (= e!1003795 tp!460423)))

(declare-fun setIsEmpty!11316 () Bool)

(assert (=> setIsEmpty!11316 setRes!11316))

(declare-fun b!1563056 () Bool)

(declare-fun tp!460420 () Bool)

(assert (=> b!1563056 (= e!1003793 tp!460420)))

(assert (= b!1563054 b!1563055))

(assert (= (and b!1563054 condSetEmpty!11316) setIsEmpty!11316))

(assert (= (and b!1563054 (not condSetEmpty!11316)) setNonEmpty!11316))

(assert (= setNonEmpty!11316 b!1563056))

(assert (= (and b!1562327 ((_ is Cons!16955) (t!141572 mapDefault!8687))) b!1563054))

(declare-fun m!1834573 () Bool)

(assert (=> setNonEmpty!11316 m!1834573))

(declare-fun m!1834575 () Bool)

(assert (=> b!1563054 m!1834575))

(declare-fun condSetEmpty!11317 () Bool)

(assert (=> setNonEmpty!11256 (= condSetEmpty!11317 (= setRest!11256 ((as const (Array Context!1634 Bool)) false)))))

(declare-fun setRes!11317 () Bool)

(assert (=> setNonEmpty!11256 (= tp!459963 setRes!11317)))

(declare-fun setIsEmpty!11317 () Bool)

(assert (=> setIsEmpty!11317 setRes!11317))

(declare-fun setElem!11317 () Context!1634)

(declare-fun setNonEmpty!11317 () Bool)

(declare-fun tp!460425 () Bool)

(declare-fun e!1003796 () Bool)

(assert (=> setNonEmpty!11317 (= setRes!11317 (and tp!460425 (inv!22268 setElem!11317) e!1003796))))

(declare-fun setRest!11317 () (InoxSet Context!1634))

(assert (=> setNonEmpty!11317 (= setRest!11256 ((_ map or) (store ((as const (Array Context!1634 Bool)) false) setElem!11317 true) setRest!11317))))

(declare-fun b!1563057 () Bool)

(declare-fun tp!460426 () Bool)

(assert (=> b!1563057 (= e!1003796 tp!460426)))

(assert (= (and setNonEmpty!11256 condSetEmpty!11317) setIsEmpty!11317))

(assert (= (and setNonEmpty!11256 (not condSetEmpty!11317)) setNonEmpty!11317))

(assert (= setNonEmpty!11317 b!1563057))

(declare-fun m!1834577 () Bool)

(assert (=> setNonEmpty!11317 m!1834577))

(declare-fun b!1563058 () Bool)

(declare-fun e!1003797 () Bool)

(declare-fun tp!460427 () Bool)

(declare-fun tp!460428 () Bool)

(assert (=> b!1563058 (= e!1003797 (and tp!460427 tp!460428))))

(assert (=> b!1562301 (= tp!460001 e!1003797)))

(assert (= (and b!1562301 ((_ is Cons!16952) (exprs!1317 (_1!9685 (_1!9686 (h!22354 mapValue!8676)))))) b!1563058))

(declare-fun b_lambda!49189 () Bool)

(assert (= b_lambda!49187 (or (and b!1562013 b_free!41747) b_lambda!49189)))

(declare-fun b_lambda!49191 () Bool)

(assert (= b_lambda!49183 (or (and b!1562013 b_free!41747) b_lambda!49191)))

(declare-fun b_lambda!49193 () Bool)

(assert (= b_lambda!49181 (or d!462523 b_lambda!49193)))

(declare-fun bs!389461 () Bool)

(declare-fun d!462877 () Bool)

(assert (= bs!389461 (and d!462877 d!462523)))

(declare-fun res!696705 () Bool)

(declare-fun e!1003798 () Bool)

(assert (=> bs!389461 (=> res!696705 e!1003798)))

(assert (=> bs!389461 (= res!696705 (not (= (list!6521 (_1!9693 (_1!9694 lt!541055))) (list!6521 lt!541056))))))

(assert (=> bs!389461 (= (dynLambda!7563 lambda!66071 (_1!9693 (_1!9694 lt!541055)) lt!541056) e!1003798)))

(declare-fun b!1563059 () Bool)

(assert (=> b!1563059 (= e!1003798 (= (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) (_1!9693 (_1!9694 lt!541055))) (dynLambda!7559 (toValue!4352 (transformation!2971 rule!240)) lt!541056)))))

(assert (= (and bs!389461 (not res!696705)) b!1563059))

(declare-fun b_lambda!49201 () Bool)

(assert (=> (not b_lambda!49201) (not b!1563059)))

(assert (=> b!1563059 t!141574))

(declare-fun b_and!109097 () Bool)

(assert (= b_and!109095 (and (=> t!141574 result!105710) b_and!109097)))

(declare-fun b_lambda!49203 () Bool)

(assert (=> (not b_lambda!49203) (not b!1563059)))

(assert (=> b!1563059 t!141576))

(declare-fun b_and!109099 () Bool)

(assert (= b_and!109097 (and (=> t!141576 result!105714) b_and!109099)))

(assert (=> bs!389461 m!1833376))

(assert (=> bs!389461 m!1833492))

(assert (=> b!1563059 m!1833482))

(assert (=> b!1563059 m!1833490))

(assert (=> d!462789 d!462877))

(declare-fun b_lambda!49195 () Bool)

(assert (= b_lambda!49185 (or (and b!1562013 b_free!41749) b_lambda!49195)))

(declare-fun b_lambda!49197 () Bool)

(assert (= b_lambda!49177 (or b!1561979 b_lambda!49197)))

(assert (=> d!462689 d!462589))

(declare-fun b_lambda!49199 () Bool)

(assert (= b_lambda!49175 (or b!1561979 b_lambda!49199)))

(assert (=> d!462671 d!462587))

(check-sat b_and!109081 (not setNonEmpty!11309) (not b!1562824) (not d!462747) (not d!462707) (not b!1562680) (not b!1563042) (not b!1562643) (not setNonEmpty!11305) (not b!1562983) (not d!462737) (not b!1562971) (not b!1562564) (not b!1562469) (not b!1562834) (not setNonEmpty!11289) (not b!1562331) (not setNonEmpty!11302) (not d!462827) (not b!1562603) (not d!462725) (not b!1563038) (not mapNonEmpty!8697) (not b!1562638) (not d!462683) (not b!1563046) (not b!1562352) (not bm!102338) b_and!109053 (not b!1562803) (not d!462835) (not d!462741) (not setNonEmpty!11312) (not b!1562415) b_and!109093 (not b!1562407) (not b!1562995) (not b!1563034) (not b!1562947) (not b!1562821) (not b!1562570) (not b!1562981) (not b!1562782) (not b!1563036) (not b!1562885) b_and!109051 (not setNonEmpty!11279) (not d!462773) (not d!462765) (not b!1563018) (not b!1562581) (not b!1562788) (not bm!102323) (not d!462675) (not b!1562784) (not setNonEmpty!11314) (not b!1562832) (not b!1562865) (not b!1562999) (not b!1562826) (not d!462615) (not d!462633) (not b!1562887) (not b!1563037) (not b!1562780) (not b!1562877) (not b!1562586) (not d!462653) (not b!1562928) (not b!1562861) (not b!1562927) (not b!1562579) (not b!1563056) (not b!1562414) (not b!1563004) (not d!462605) (not b_lambda!49169) (not b!1563029) (not d!462655) (not b!1563031) (not b_next!42459) (not d!462645) (not setNonEmpty!11296) (not b_lambda!49189) (not b_next!42449) (not d!462699) (not d!462593) (not b!1562986) (not d!462859) (not b!1562633) (not b!1562370) (not b!1562750) (not b!1563035) tp_is_empty!7089 (not b!1563008) (not b!1562873) (not setNonEmpty!11316) b_and!109049 (not tb!87411) (not b!1562993) (not b!1562473) (not bm!102321) (not b_next!42445) (not b!1562822) (not b!1562595) (not b!1562722) (not b!1562965) (not b!1562866) (not b!1562881) (not b!1562893) (not d!462787) (not b!1562605) (not d!462871) (not b!1562774) (not b!1562868) (not b!1562354) (not b!1562810) (not bm!102334) (not d!462627) (not b!1562959) (not b_next!42439) (not bm!102344) (not b!1562368) (not b!1562831) (not d!462603) (not b!1562659) (not bm!102324) (not mapNonEmpty!8696) (not b!1562985) (not b!1563023) (not b!1562655) (not b!1562804) (not b!1562592) (not b!1562863) (not d!462809) (not b!1562825) (not b_lambda!49199) (not b_lambda!49147) (not b!1562830) (not b!1562276) (not b!1563051) (not b!1562849) (not d!462679) (not b!1562738) (not d!462851) (not d!462727) (not b!1563001) (not b!1562946) (not b!1562953) (not d!462609) (not b!1562609) (not b!1563027) (not b!1562839) (not b!1562816) (not b_next!42453) (not d!462811) (not d!462771) (not b_lambda!49201) (not b!1562963) (not b!1562880) (not b!1563052) (not d!462781) (not d!462673) (not b!1562637) (not b!1563009) (not b!1562749) (not b!1562958) (not b!1562996) (not b!1562660) (not d!462691) (not d!462783) (not b!1562779) (not b!1562945) b_and!109045 (not b!1562746) (not b!1562964) (not b!1562434) (not b!1562926) (not b!1563049) (not b!1562841) (not b!1563025) (not b!1562962) (not b!1562939) (not b!1562771) (not setNonEmpty!11299) (not b!1563030) (not d!462789) (not b_lambda!49165) (not b!1562449) (not b!1563032) (not b!1562925) (not setNonEmpty!11288) (not b!1562792) (not b!1562617) b_and!109085 (not d!462681) (not b_next!42457) (not b!1562577) (not d!462697) (not b!1562980) (not b!1562853) (not b!1562692) (not bm!102347) (not b!1563033) (not b!1562856) (not b!1562607) (not b!1562992) (not b!1562681) (not b!1562823) (not bs!389461) (not setNonEmpty!11292) (not b!1562785) (not d!462823) (not setNonEmpty!11300) (not b!1563002) (not b!1562931) (not setNonEmpty!11290) (not b!1562829) (not b!1562632) (not d!462631) (not setNonEmpty!11294) (not b!1562741) (not b!1562433) (not b!1562951) (not b!1563041) (not bm!102342) (not setNonEmpty!11291) (not b!1562625) (not b!1563058) (not tb!87409) (not b!1562748) (not b!1562952) (not d!462597) (not setNonEmpty!11301) (not d!462795) (not b!1562890) (not d!462759) (not b!1562693) (not b!1562654) (not d!462703) (not b!1562878) (not b!1562854) (not b!1562651) (not b!1562569) (not b_lambda!49153) b_and!109055 (not b!1562989) (not b!1563006) (not b!1562842) (not b_lambda!49171) (not b!1562658) (not bm!102340) (not b!1562944) (not b!1562662) (not b!1562647) (not b!1562818) (not setNonEmpty!11276) (not b!1562367) (not bm!102313) (not setNonEmpty!11295) (not setNonEmpty!11307) (not b!1562982) (not b!1562884) (not b!1562990) (not b!1562353) (not b!1563010) (not b!1562677) (not setNonEmpty!11277) (not b!1562871) b_and!109099 (not b!1562787) (not mapNonEmpty!8699) (not b!1562987) (not b!1562613) (not b!1562889) (not d!462621) (not setNonEmpty!11278) (not d!462715) (not b!1562891) (not d!462801) (not mapNonEmpty!8698) (not b_lambda!49197) (not b!1563011) (not b!1562895) (not b!1563053) (not b!1563007) (not b!1562622) (not b!1563057) (not d!462843) (not b_lambda!49149) (not b!1562809) (not setNonEmpty!11311) (not b_next!42465) (not d!462869) (not d!462641) (not d!462857) (not b!1562864) (not b!1562794) (not b!1562735) (not b!1562934) (not b!1563013) (not b!1562448) (not b!1562678) (not b!1562793) (not d!462607) b_and!109047 (not d!462661) (not b!1562859) (not setNonEmpty!11298) (not b!1562968) (not d!462705) b_and!109079 (not b!1562421) (not b!1562979) (not b!1563055) (not b!1562875) (not b!1563000) (not b!1562977) (not d!462803) (not b!1562478) (not d!462775) (not b_next!42443) (not b!1563039) (not setNonEmpty!11281) (not b!1562661) (not setNonEmpty!11308) (not b!1562796) (not d!462719) (not b!1562801) (not b!1562888) (not b!1563045) (not b!1562656) (not b!1562590) (not b!1562967) (not b!1562775) (not b!1562848) (not d!462755) (not b!1562732) (not b!1562843) (not b!1562970) (not b!1563048) (not b!1562447) (not b!1562974) (not b!1562852) (not b!1562929) (not b!1562806) (not d!462797) (not bm!102349) (not b!1562998) (not b!1562976) (not b!1562392) (not b!1563019) (not b!1562664) (not b!1563043) (not b!1562503) (not bm!102341) (not setNonEmpty!11315) (not b!1562874) (not b!1562876) (not b!1562948) (not setNonEmpty!11287) (not b_lambda!49203) (not setNonEmpty!11303) (not d!462785) (not tb!87407) (not b!1562679) (not setNonEmpty!11283) (not setNonEmpty!11304) b_and!109087 (not d!462779) (not b!1562765) (not b!1562582) (not b!1563014) (not b!1562819) (not d!462825) (not b!1562777) (not b!1562684) (not b!1562956) (not setNonEmpty!11280) (not b_lambda!49179) (not setNonEmpty!11317) (not d!462769) (not b!1563015) (not b_next!42451) (not b!1562960) (not b!1562867) (not b!1562969) (not b!1562758) b_and!109077 (not setNonEmpty!11306) (not d!462815) (not b!1562883) (not b!1562869) (not b!1562250) (not bm!102337) (not b!1563005) (not b!1562860) (not setNonEmpty!11285) (not b!1562628) (not setNonEmpty!11282) (not b!1562580) (not d!462667) (not b!1562984) (not mapNonEmpty!8695) (not b!1562781) (not b!1562384) (not b_lambda!49191) (not setNonEmpty!11310) (not b!1562406) (not b!1562858) (not b!1562578) (not b!1562870) (not b!1562886) (not d!462611) (not b!1562894) (not b!1562695) (not d!462745) (not b!1563012) (not d!462629) (not b!1562375) (not b!1562608) (not b_next!42461) (not b!1563040) (not d!462669) (not setNonEmpty!11293) (not b_lambda!49173) (not b!1563047) (not b!1562930) (not b!1562975) (not d!462853) (not b!1562639) (not d!462709) (not d!462863) (not b!1563016) (not b!1562988) (not d!462837) (not b_lambda!49151) (not d!462729) (not b!1563028) (not b!1563020) (not b!1562938) (not b_lambda!49193) (not d!462713) (not d!462751) (not d!462723) (not b!1562937) (not d!462623) (not b_next!42441) (not setNonEmpty!11284) (not b!1562957) (not b!1562391) (not b!1562954) (not b!1562949) (not d!462647) (not d!462595) (not d!462695) b_and!109083 (not bm!102336) (not b_next!42447) (not d!462867) (not bm!102345) (not b!1563024) (not b!1562754) (not d!462855) (not b_lambda!49167) (not b_lambda!49155) (not b!1562840) (not b!1562432) (not b!1562935) (not b_next!42463) (not b!1562973) (not tb!87413) (not d!462821) (not b!1562572) (not b!1562356) (not b!1562619) (not b!1562772) (not b!1562635) (not b!1563017) (not b!1562850) (not b!1562377) (not b!1562997) (not b!1562383) (not setNonEmpty!11286) (not b!1562972) (not d!462777) (not b!1562573) (not d!462649) (not b!1562991) (not b!1562950) (not b!1562403) (not d!462763) (not b!1562402) (not bm!102320) (not d!462617) (not b!1563021) (not b!1563003) (not d!462849) (not bm!102343) (not b_next!42455) (not b!1562566) (not b!1562634) (not b!1562882) (not mapNonEmpty!8694) (not b_lambda!49195) (not b!1562593) (not bm!102339) (not b!1562624) (not b!1562857) (not b!1562994) (not d!462799) (not setNonEmpty!11297) (not d!462743) (not b!1562961) (not setNonEmpty!11313) (not b!1562851) (not d!462711) (not b!1562682) (not b!1562773) (not b!1562629) (not b!1562933) (not b!1562411) (not d!462831) (not d!462735) (not b!1563044) (not b!1562955) (not d!462731) (not b!1562776) (not b!1563054) (not d!462677) (not b!1562410) (not b!1562892))
(check-sat b_and!109081 b_and!109053 b_and!109093 b_and!109051 b_and!109049 (not b_next!42445) (not b_next!42439) (not b_next!42453) b_and!109045 b_and!109055 b_and!109099 (not b_next!42465) (not b_next!42443) b_and!109087 (not b_next!42461) (not b_next!42441) (not b_next!42463) (not b_next!42455) (not b_next!42459) (not b_next!42449) (not b_next!42457) b_and!109085 b_and!109079 b_and!109047 b_and!109077 (not b_next!42451) (not b_next!42447) b_and!109083)

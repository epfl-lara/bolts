; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144288 () Bool)

(assert start!144288)

(declare-fun b!1555972 () Bool)

(declare-fun b_free!41383 () Bool)

(declare-fun b_next!42087 () Bool)

(assert (=> b!1555972 (= b_free!41383 (not b_next!42087))))

(declare-fun tp!456212 () Bool)

(declare-fun b_and!108549 () Bool)

(assert (=> b!1555972 (= tp!456212 b_and!108549)))

(declare-fun b!1555976 () Bool)

(declare-fun b_free!41385 () Bool)

(declare-fun b_next!42089 () Bool)

(assert (=> b!1555976 (= b_free!41385 (not b_next!42089))))

(declare-fun tp!456225 () Bool)

(declare-fun b_and!108551 () Bool)

(assert (=> b!1555976 (= tp!456225 b_and!108551)))

(declare-fun b_free!41387 () Bool)

(declare-fun b_next!42091 () Bool)

(assert (=> b!1555976 (= b_free!41387 (not b_next!42091))))

(declare-fun tp!456229 () Bool)

(declare-fun b_and!108553 () Bool)

(assert (=> b!1555976 (= tp!456229 b_and!108553)))

(declare-fun b!1555947 () Bool)

(declare-fun b_free!41389 () Bool)

(declare-fun b_next!42093 () Bool)

(assert (=> b!1555947 (= b_free!41389 (not b_next!42093))))

(declare-fun tp!456214 () Bool)

(declare-fun b_and!108555 () Bool)

(assert (=> b!1555947 (= tp!456214 b_and!108555)))

(declare-fun b!1555949 () Bool)

(declare-fun b_free!41391 () Bool)

(declare-fun b_next!42095 () Bool)

(assert (=> b!1555949 (= b_free!41391 (not b_next!42095))))

(declare-fun tp!456222 () Bool)

(declare-fun b_and!108557 () Bool)

(assert (=> b!1555949 (= tp!456222 b_and!108557)))

(declare-fun b!1555979 () Bool)

(declare-fun b_free!41393 () Bool)

(declare-fun b_next!42097 () Bool)

(assert (=> b!1555979 (= b_free!41393 (not b_next!42097))))

(declare-fun tp!456211 () Bool)

(declare-fun b_and!108559 () Bool)

(assert (=> b!1555979 (= tp!456211 b_and!108559)))

(declare-fun b!1555944 () Bool)

(declare-fun b_free!41395 () Bool)

(declare-fun b_next!42099 () Bool)

(assert (=> b!1555944 (= b_free!41395 (not b_next!42099))))

(declare-fun tp!456203 () Bool)

(declare-fun b_and!108561 () Bool)

(assert (=> b!1555944 (= tp!456203 b_and!108561)))

(declare-fun b!1555951 () Bool)

(declare-fun b_free!41397 () Bool)

(declare-fun b_next!42101 () Bool)

(assert (=> b!1555951 (= b_free!41397 (not b_next!42101))))

(declare-fun tp!456205 () Bool)

(declare-fun b_and!108563 () Bool)

(assert (=> b!1555951 (= tp!456205 b_and!108563)))

(declare-fun b!1555992 () Bool)

(declare-fun e!998416 () Bool)

(assert (=> b!1555992 (= e!998416 true)))

(declare-fun b!1555991 () Bool)

(declare-fun e!998415 () Bool)

(assert (=> b!1555991 (= e!998415 e!998416)))

(declare-fun b!1555968 () Bool)

(assert (=> b!1555968 e!998415))

(assert (= b!1555991 b!1555992))

(assert (= b!1555968 b!1555991))

(declare-fun order!9911 () Int)

(declare-datatypes ((List!16893 0))(
  ( (Nil!16825) (Cons!16825 (h!22226 (_ BitVec 16)) (t!141364 List!16893)) )
))
(declare-datatypes ((TokenValue!3039 0))(
  ( (FloatLiteralValue!6078 (text!21718 List!16893)) (TokenValueExt!3038 (__x!11201 Int)) (Broken!15195 (value!93657 List!16893)) (Object!3106) (End!3039) (Def!3039) (Underscore!3039) (Match!3039) (Else!3039) (Error!3039) (Case!3039) (If!3039) (Extends!3039) (Abstract!3039) (Class!3039) (Val!3039) (DelimiterValue!6078 (del!3099 List!16893)) (KeywordValue!3045 (value!93658 List!16893)) (CommentValue!6078 (value!93659 List!16893)) (WhitespaceValue!6078 (value!93660 List!16893)) (IndentationValue!3039 (value!93661 List!16893)) (String!19482) (Int32!3039) (Broken!15196 (value!93662 List!16893)) (Boolean!3040) (Unit!26071) (OperatorValue!3042 (op!3099 List!16893)) (IdentifierValue!6078 (value!93663 List!16893)) (IdentifierValue!6079 (value!93664 List!16893)) (WhitespaceValue!6079 (value!93665 List!16893)) (True!6078) (False!6078) (Broken!15197 (value!93666 List!16893)) (Broken!15198 (value!93667 List!16893)) (True!6079) (RightBrace!3039) (RightBracket!3039) (Colon!3039) (Null!3039) (Comma!3039) (LeftBracket!3039) (False!6079) (LeftBrace!3039) (ImaginaryLiteralValue!3039 (text!21719 List!16893)) (StringLiteralValue!9117 (value!93668 List!16893)) (EOFValue!3039 (value!93669 List!16893)) (IdentValue!3039 (value!93670 List!16893)) (DelimiterValue!6079 (value!93671 List!16893)) (DedentValue!3039 (value!93672 List!16893)) (NewLineValue!3039 (value!93673 List!16893)) (IntegerValue!9117 (value!93674 (_ BitVec 32)) (text!21720 List!16893)) (IntegerValue!9118 (value!93675 Int) (text!21721 List!16893)) (Times!3039) (Or!3039) (Equal!3039) (Minus!3039) (Broken!15199 (value!93676 List!16893)) (And!3039) (Div!3039) (LessEqual!3039) (Mod!3039) (Concat!7316) (Not!3039) (Plus!3039) (SpaceValue!3039 (value!93677 List!16893)) (IntegerValue!9119 (value!93678 Int) (text!21722 List!16893)) (StringLiteralValue!9118 (text!21723 List!16893)) (FloatLiteralValue!6079 (text!21724 List!16893)) (BytesLiteralValue!3039 (value!93679 List!16893)) (CommentValue!6079 (value!93680 List!16893)) (StringLiteralValue!9119 (value!93681 List!16893)) (ErrorTokenValue!3039 (msg!3100 List!16893)) )
))
(declare-datatypes ((C!8732 0))(
  ( (C!8733 (val!4938 Int)) )
))
(declare-datatypes ((List!16894 0))(
  ( (Nil!16826) (Cons!16826 (h!22227 C!8732) (t!141365 List!16894)) )
))
(declare-datatypes ((IArray!11139 0))(
  ( (IArray!11140 (innerList!5627 List!16894)) )
))
(declare-datatypes ((Conc!5567 0))(
  ( (Node!5567 (left!13676 Conc!5567) (right!14006 Conc!5567) (csize!11364 Int) (cheight!5778 Int)) (Leaf!8251 (xs!8367 IArray!11139) (csize!11365 Int)) (Empty!5567) )
))
(declare-datatypes ((BalanceConc!11076 0))(
  ( (BalanceConc!11077 (c!252806 Conc!5567)) )
))
(declare-datatypes ((Regex!4277 0))(
  ( (ElementMatch!4277 (c!252807 C!8732)) (Concat!7317 (regOne!9066 Regex!4277) (regTwo!9066 Regex!4277)) (EmptyExpr!4277) (Star!4277 (reg!4606 Regex!4277)) (EmptyLang!4277) (Union!4277 (regOne!9067 Regex!4277) (regTwo!9067 Regex!4277)) )
))
(declare-datatypes ((String!19483 0))(
  ( (String!19484 (value!93682 String)) )
))
(declare-datatypes ((TokenValueInjection!5738 0))(
  ( (TokenValueInjection!5739 (toValue!4321 Int) (toChars!4180 Int)) )
))
(declare-datatypes ((Rule!5698 0))(
  ( (Rule!5699 (regex!2949 Regex!4277) (tag!3213 String!19483) (isSeparator!2949 Bool) (transformation!2949 TokenValueInjection!5738)) )
))
(declare-fun rule!240 () Rule!5698)

(declare-fun lambda!65881 () Int)

(declare-fun order!9909 () Int)

(declare-fun dynLambda!7461 (Int Int) Int)

(declare-fun dynLambda!7462 (Int Int) Int)

(assert (=> b!1555992 (< (dynLambda!7461 order!9909 (toValue!4321 (transformation!2949 rule!240))) (dynLambda!7462 order!9911 lambda!65881))))

(declare-fun order!9913 () Int)

(declare-fun dynLambda!7463 (Int Int) Int)

(assert (=> b!1555992 (< (dynLambda!7463 order!9913 (toChars!4180 (transformation!2949 rule!240))) (dynLambda!7462 order!9911 lambda!65881))))

(declare-fun e!998392 () Bool)

(declare-fun e!998380 () Bool)

(assert (=> b!1555944 (= e!998392 (and e!998380 tp!456203))))

(declare-fun mapNonEmpty!8388 () Bool)

(declare-fun mapRes!8389 () Bool)

(declare-fun tp!456208 () Bool)

(declare-fun tp!456210 () Bool)

(assert (=> mapNonEmpty!8388 (= mapRes!8389 (and tp!456208 tp!456210))))

(declare-datatypes ((List!16895 0))(
  ( (Nil!16827) (Cons!16827 (h!22228 Regex!4277) (t!141366 List!16895)) )
))
(declare-datatypes ((Context!1590 0))(
  ( (Context!1591 (exprs!1295 List!16895)) )
))
(declare-datatypes ((tuple3!1794 0))(
  ( (tuple3!1795 (_1!9492 Regex!4277) (_2!9492 Context!1590) (_3!1344 C!8732)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16296 0))(
  ( (tuple2!16297 (_1!9493 tuple3!1794) (_2!9493 (InoxSet Context!1590))) )
))
(declare-datatypes ((List!16896 0))(
  ( (Nil!16828) (Cons!16828 (h!22229 tuple2!16296) (t!141367 List!16896)) )
))
(declare-datatypes ((array!6178 0))(
  ( (array!6179 (arr!2754 (Array (_ BitVec 32) (_ BitVec 64))) (size!13624 (_ BitVec 32))) )
))
(declare-datatypes ((array!6180 0))(
  ( (array!6181 (arr!2755 (Array (_ BitVec 32) List!16896)) (size!13625 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3604 0))(
  ( (LongMapFixedSize!3605 (defaultEntry!2162 Int) (mask!5029 (_ BitVec 32)) (extraKeys!2049 (_ BitVec 32)) (zeroValue!2059 List!16896) (minValue!2059 List!16896) (_size!3685 (_ BitVec 32)) (_keys!2096 array!6178) (_values!2081 array!6180) (_vacant!1863 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7093 0))(
  ( (Cell!7094 (v!23670 LongMapFixedSize!3604)) )
))
(declare-datatypes ((MutLongMap!1802 0))(
  ( (LongMap!1802 (underlying!3813 Cell!7093)) (MutLongMapExt!1801 (__x!11202 Int)) )
))
(declare-datatypes ((Cell!7095 0))(
  ( (Cell!7096 (v!23671 MutLongMap!1802)) )
))
(declare-datatypes ((Hashable!1746 0))(
  ( (HashableExt!1745 (__x!11203 Int)) )
))
(declare-datatypes ((MutableMap!1746 0))(
  ( (MutableMapExt!1745 (__x!11204 Int)) (HashMap!1746 (underlying!3814 Cell!7095) (hashF!3665 Hashable!1746) (_size!3686 (_ BitVec 32)) (defaultValue!1906 Int)) )
))
(declare-datatypes ((CacheDown!1068 0))(
  ( (CacheDown!1069 (cache!2127 MutableMap!1746)) )
))
(declare-fun cacheDown!768 () CacheDown!1068)

(declare-fun mapRest!8388 () (Array (_ BitVec 32) List!16896))

(declare-fun mapValue!8389 () List!16896)

(declare-fun mapKey!8389 () (_ BitVec 32))

(assert (=> mapNonEmpty!8388 (= (arr!2755 (_values!2081 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) (store mapRest!8388 mapKey!8389 mapValue!8389))))

(declare-fun b!1555945 () Bool)

(declare-fun e!998388 () Bool)

(declare-fun e!998399 () Bool)

(assert (=> b!1555945 (= e!998388 e!998399)))

(declare-fun b!1555946 () Bool)

(declare-fun e!998375 () Bool)

(declare-fun tp!456213 () Bool)

(declare-fun mapRes!8388 () Bool)

(assert (=> b!1555946 (= e!998375 (and tp!456213 mapRes!8388))))

(declare-fun condMapEmpty!8390 () Bool)

(declare-datatypes ((tuple2!16298 0))(
  ( (tuple2!16299 (_1!9494 Context!1590) (_2!9494 C!8732)) )
))
(declare-datatypes ((tuple2!16300 0))(
  ( (tuple2!16301 (_1!9495 tuple2!16298) (_2!9495 (InoxSet Context!1590))) )
))
(declare-datatypes ((List!16897 0))(
  ( (Nil!16829) (Cons!16829 (h!22230 tuple2!16300) (t!141368 List!16897)) )
))
(declare-datatypes ((array!6182 0))(
  ( (array!6183 (arr!2756 (Array (_ BitVec 32) List!16897)) (size!13626 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1747 0))(
  ( (HashableExt!1746 (__x!11205 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3606 0))(
  ( (LongMapFixedSize!3607 (defaultEntry!2163 Int) (mask!5030 (_ BitVec 32)) (extraKeys!2050 (_ BitVec 32)) (zeroValue!2060 List!16897) (minValue!2060 List!16897) (_size!3687 (_ BitVec 32)) (_keys!2097 array!6178) (_values!2082 array!6182) (_vacant!1864 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7097 0))(
  ( (Cell!7098 (v!23672 LongMapFixedSize!3606)) )
))
(declare-datatypes ((MutLongMap!1803 0))(
  ( (LongMap!1803 (underlying!3815 Cell!7097)) (MutLongMapExt!1802 (__x!11206 Int)) )
))
(declare-datatypes ((Cell!7099 0))(
  ( (Cell!7100 (v!23673 MutLongMap!1803)) )
))
(declare-datatypes ((MutableMap!1747 0))(
  ( (MutableMapExt!1746 (__x!11207 Int)) (HashMap!1747 (underlying!3816 Cell!7099) (hashF!3666 Hashable!1747) (_size!3688 (_ BitVec 32)) (defaultValue!1907 Int)) )
))
(declare-datatypes ((CacheUp!1062 0))(
  ( (CacheUp!1063 (cache!2128 MutableMap!1747)) )
))
(declare-fun cacheUp!755 () CacheUp!1062)

(declare-fun mapDefault!8389 () List!16897)

(assert (=> b!1555946 (= condMapEmpty!8390 (= (arr!2756 (_values!2082 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16897)) mapDefault!8389)))))

(declare-fun mapNonEmpty!8389 () Bool)

(declare-fun tp!456218 () Bool)

(declare-fun tp!456206 () Bool)

(assert (=> mapNonEmpty!8389 (= mapRes!8388 (and tp!456218 tp!456206))))

(declare-fun mapRest!8389 () (Array (_ BitVec 32) List!16897))

(declare-fun mapValue!8390 () List!16897)

(declare-fun mapKey!8388 () (_ BitVec 32))

(assert (=> mapNonEmpty!8389 (= (arr!2756 (_values!2082 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) (store mapRest!8389 mapKey!8388 mapValue!8390))))

(declare-fun b!1555948 () Bool)

(declare-fun e!998379 () Bool)

(declare-fun totalInput!568 () BalanceConc!11076)

(declare-fun tp!456224 () Bool)

(declare-fun inv!22103 (Conc!5567) Bool)

(assert (=> b!1555948 (= e!998379 (and (inv!22103 (c!252806 totalInput!568)) tp!456224))))

(declare-fun tp!456223 () Bool)

(declare-fun e!998408 () Bool)

(declare-fun tp!456216 () Bool)

(declare-fun array_inv!1978 (array!6178) Bool)

(declare-fun array_inv!1979 (array!6182) Bool)

(assert (=> b!1555949 (= e!998408 (and tp!456222 tp!456223 tp!456216 (array_inv!1978 (_keys!2097 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) (array_inv!1979 (_values!2082 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) e!998375))))

(declare-fun b!1555950 () Bool)

(declare-fun res!694487 () Bool)

(declare-fun e!998378 () Bool)

(assert (=> b!1555950 (=> (not res!694487) (not e!998378))))

(declare-datatypes ((tuple3!1796 0))(
  ( (tuple3!1797 (_1!9496 (InoxSet Context!1590)) (_2!9496 Int) (_3!1345 Int)) )
))
(declare-datatypes ((tuple2!16302 0))(
  ( (tuple2!16303 (_1!9497 tuple3!1796) (_2!9497 Int)) )
))
(declare-datatypes ((List!16898 0))(
  ( (Nil!16830) (Cons!16830 (h!22231 tuple2!16302) (t!141369 List!16898)) )
))
(declare-datatypes ((array!6184 0))(
  ( (array!6185 (arr!2757 (Array (_ BitVec 32) List!16898)) (size!13627 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3608 0))(
  ( (LongMapFixedSize!3609 (defaultEntry!2164 Int) (mask!5031 (_ BitVec 32)) (extraKeys!2051 (_ BitVec 32)) (zeroValue!2061 List!16898) (minValue!2061 List!16898) (_size!3689 (_ BitVec 32)) (_keys!2098 array!6178) (_values!2083 array!6184) (_vacant!1865 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7101 0))(
  ( (Cell!7102 (v!23674 LongMapFixedSize!3608)) )
))
(declare-datatypes ((Hashable!1748 0))(
  ( (HashableExt!1747 (__x!11208 Int)) )
))
(declare-datatypes ((MutLongMap!1804 0))(
  ( (LongMap!1804 (underlying!3817 Cell!7101)) (MutLongMapExt!1803 (__x!11209 Int)) )
))
(declare-datatypes ((Cell!7103 0))(
  ( (Cell!7104 (v!23675 MutLongMap!1804)) )
))
(declare-datatypes ((MutableMap!1748 0))(
  ( (MutableMapExt!1747 (__x!11210 Int)) (HashMap!1748 (underlying!3818 Cell!7103) (hashF!3667 Hashable!1748) (_size!3690 (_ BitVec 32)) (defaultValue!1908 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!490 0))(
  ( (CacheFurthestNullable!491 (cache!2129 MutableMap!1748) (totalInput!2466 BalanceConc!11076)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!490)

(assert (=> b!1555950 (= res!694487 (= (totalInput!2466 cacheFurthestNullable!103) totalInput!568))))

(declare-fun tp!456209 () Bool)

(declare-fun tp!456207 () Bool)

(declare-fun e!998385 () Bool)

(declare-fun e!998386 () Bool)

(declare-fun array_inv!1980 (array!6184) Bool)

(assert (=> b!1555951 (= e!998386 (and tp!456205 tp!456209 tp!456207 (array_inv!1978 (_keys!2098 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) (array_inv!1980 (_values!2083 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) e!998385))))

(declare-fun b!1555952 () Bool)

(declare-fun e!998383 () Bool)

(declare-fun e!998397 () Bool)

(assert (=> b!1555952 (= e!998383 e!998397)))

(declare-fun mapIsEmpty!8388 () Bool)

(assert (=> mapIsEmpty!8388 mapRes!8389))

(declare-fun b!1555953 () Bool)

(declare-fun e!998377 () Bool)

(assert (=> b!1555953 (= e!998377 e!998408)))

(declare-fun e!998382 () Bool)

(declare-fun e!998384 () Bool)

(declare-fun b!1555954 () Bool)

(declare-fun e!998402 () Bool)

(declare-fun inv!22104 (BalanceConc!11076) Bool)

(assert (=> b!1555954 (= e!998402 (and e!998382 (inv!22104 (totalInput!2466 cacheFurthestNullable!103)) e!998384))))

(declare-fun b!1555955 () Bool)

(declare-fun e!998396 () Bool)

(declare-fun input!1676 () BalanceConc!11076)

(declare-fun tp!456204 () Bool)

(assert (=> b!1555955 (= e!998396 (and (inv!22103 (c!252806 input!1676)) tp!456204))))

(declare-fun b!1555956 () Bool)

(declare-fun res!694480 () Bool)

(declare-fun e!998374 () Bool)

(assert (=> b!1555956 (=> res!694480 e!998374)))

(declare-fun lt!538782 () BalanceConc!11076)

(declare-fun lt!538780 () List!16894)

(declare-fun list!6495 (BalanceConc!11076) List!16894)

(assert (=> b!1555956 (= res!694480 (not (= (list!6495 lt!538782) lt!538780)))))

(declare-fun b!1555957 () Bool)

(declare-fun e!998400 () Bool)

(assert (=> b!1555957 (= e!998400 e!998374)))

(declare-fun res!694482 () Bool)

(assert (=> b!1555957 (=> res!694482 e!998374)))

(declare-fun lt!538779 () Bool)

(declare-datatypes ((Token!5474 0))(
  ( (Token!5475 (value!93683 TokenValue!3039) (rule!4731 Rule!5698) (size!13628 Int) (originalCharacters!3768 List!16894)) )
))
(declare-datatypes ((tuple2!16304 0))(
  ( (tuple2!16305 (_1!9498 Token!5474) (_2!9498 List!16894)) )
))
(declare-datatypes ((Option!3036 0))(
  ( (None!3035) (Some!3035 (v!23676 tuple2!16304)) )
))
(declare-fun lt!538784 () Option!3036)

(declare-fun isDefined!2439 (Option!3036) Bool)

(assert (=> b!1555957 (= res!694482 (not (= lt!538779 (isDefined!2439 lt!538784))))))

(declare-fun lt!538785 () TokenValue!3039)

(declare-datatypes ((tuple2!16306 0))(
  ( (tuple2!16307 (_1!9499 BalanceConc!11076) (_2!9499 BalanceConc!11076)) )
))
(declare-datatypes ((tuple4!894 0))(
  ( (tuple4!895 (_1!9500 tuple2!16306) (_2!9500 CacheUp!1062) (_3!1346 CacheDown!1068) (_4!447 CacheFurthestNullable!490)) )
))
(declare-fun lt!538776 () tuple4!894)

(declare-fun lt!538781 () Int)

(declare-datatypes ((tuple2!16308 0))(
  ( (tuple2!16309 (_1!9501 Token!5474) (_2!9501 BalanceConc!11076)) )
))
(declare-datatypes ((Option!3037 0))(
  ( (None!3036) (Some!3036 (v!23677 tuple2!16308)) )
))
(declare-fun isDefined!2440 (Option!3037) Bool)

(assert (=> b!1555957 (= lt!538779 (isDefined!2440 (Some!3036 (tuple2!16309 (Token!5475 lt!538785 rule!240 lt!538781 lt!538780) (_2!9499 (_1!9500 lt!538776))))))))

(declare-fun lt!538790 () List!16894)

(declare-datatypes ((LexerInterface!2585 0))(
  ( (LexerInterfaceExt!2582 (__x!11211 Int)) (Lexer!2583) )
))
(declare-fun thiss!16438 () LexerInterface!2585)

(declare-fun maxPrefixOneRule!703 (LexerInterface!2585 Rule!5698 List!16894) Option!3036)

(assert (=> b!1555957 (= lt!538784 (maxPrefixOneRule!703 thiss!16438 rule!240 lt!538790))))

(declare-fun size!13629 (BalanceConc!11076) Int)

(assert (=> b!1555957 (= lt!538781 (size!13629 (_1!9499 (_1!9500 lt!538776))))))

(declare-fun apply!4110 (TokenValueInjection!5738 BalanceConc!11076) TokenValue!3039)

(assert (=> b!1555957 (= lt!538785 (apply!4110 (transformation!2949 rule!240) (_1!9499 (_1!9500 lt!538776))))))

(declare-datatypes ((Unit!26072 0))(
  ( (Unit!26073) )
))
(declare-fun lt!538787 () Unit!26072)

(declare-fun ForallOf!211 (Int BalanceConc!11076) Unit!26072)

(assert (=> b!1555957 (= lt!538787 (ForallOf!211 lambda!65881 lt!538782))))

(declare-fun seqFromList!1774 (List!16894) BalanceConc!11076)

(assert (=> b!1555957 (= lt!538782 (seqFromList!1774 lt!538780))))

(assert (=> b!1555957 (= lt!538780 (list!6495 (_1!9499 (_1!9500 lt!538776))))))

(declare-fun lt!538783 () Unit!26072)

(assert (=> b!1555957 (= lt!538783 (ForallOf!211 lambda!65881 (_1!9499 (_1!9500 lt!538776))))))

(declare-fun b!1555958 () Bool)

(declare-fun e!998376 () Bool)

(assert (=> b!1555958 (= e!998376 e!998392)))

(declare-fun mapNonEmpty!8390 () Bool)

(declare-fun mapRes!8390 () Bool)

(declare-fun tp!456219 () Bool)

(declare-fun tp!456227 () Bool)

(assert (=> mapNonEmpty!8390 (= mapRes!8390 (and tp!456219 tp!456227))))

(declare-fun mapKey!8390 () (_ BitVec 32))

(declare-fun mapRest!8390 () (Array (_ BitVec 32) List!16898))

(declare-fun mapValue!8388 () List!16898)

(assert (=> mapNonEmpty!8390 (= (arr!2757 (_values!2083 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) (store mapRest!8390 mapKey!8390 mapValue!8388))))

(declare-fun b!1555959 () Bool)

(declare-fun e!998381 () Bool)

(declare-fun e!998393 () Bool)

(declare-fun lt!538774 () MutLongMap!1804)

(get-info :version)

(assert (=> b!1555959 (= e!998381 (and e!998393 ((_ is LongMap!1804) lt!538774)))))

(assert (=> b!1555959 (= lt!538774 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))

(declare-fun res!694488 () Bool)

(declare-fun e!998406 () Bool)

(assert (=> start!144288 (=> (not res!694488) (not e!998406))))

(assert (=> start!144288 (= res!694488 ((_ is Lexer!2583) thiss!16438))))

(assert (=> start!144288 e!998406))

(assert (=> start!144288 (and (inv!22104 totalInput!568) e!998379)))

(declare-fun inv!22105 (CacheUp!1062) Bool)

(assert (=> start!144288 (and (inv!22105 cacheUp!755) e!998376)))

(declare-fun inv!22106 (CacheFurthestNullable!490) Bool)

(assert (=> start!144288 (and (inv!22106 cacheFurthestNullable!103) e!998402)))

(assert (=> start!144288 (and (inv!22104 input!1676) e!998396)))

(declare-fun e!998389 () Bool)

(assert (=> start!144288 e!998389))

(declare-fun inv!22107 (CacheDown!1068) Bool)

(assert (=> start!144288 (and (inv!22107 cacheDown!768) e!998383)))

(assert (=> start!144288 true))

(assert (=> b!1555947 (= e!998382 (and e!998381 tp!456214))))

(declare-fun b!1555960 () Bool)

(declare-fun tp!456228 () Bool)

(assert (=> b!1555960 (= e!998385 (and tp!456228 mapRes!8390))))

(declare-fun condMapEmpty!8388 () Bool)

(declare-fun mapDefault!8390 () List!16898)

(assert (=> b!1555960 (= condMapEmpty!8388 (= (arr!2757 (_values!2083 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16898)) mapDefault!8390)))))

(declare-fun b!1555961 () Bool)

(declare-fun res!694486 () Bool)

(assert (=> b!1555961 (=> res!694486 e!998374)))

(assert (=> b!1555961 (= res!694486 (not lt!538779))))

(declare-fun mapIsEmpty!8389 () Bool)

(assert (=> mapIsEmpty!8389 mapRes!8390))

(declare-fun b!1555962 () Bool)

(declare-fun e!998387 () Bool)

(assert (=> b!1555962 (= e!998393 e!998387)))

(declare-fun b!1555963 () Bool)

(assert (=> b!1555963 (= e!998406 e!998378)))

(declare-fun res!694483 () Bool)

(assert (=> b!1555963 (=> (not res!694483) (not e!998378))))

(declare-fun isSuffix!376 (List!16894 List!16894) Bool)

(assert (=> b!1555963 (= res!694483 (isSuffix!376 lt!538790 (list!6495 totalInput!568)))))

(assert (=> b!1555963 (= lt!538790 (list!6495 input!1676))))

(declare-fun b!1555964 () Bool)

(declare-fun tp!456215 () Bool)

(assert (=> b!1555964 (= e!998384 (and (inv!22103 (c!252806 (totalInput!2466 cacheFurthestNullable!103))) tp!456215))))

(declare-fun b!1555965 () Bool)

(declare-fun e!998409 () Bool)

(assert (=> b!1555965 (= e!998378 e!998409)))

(declare-fun res!694485 () Bool)

(assert (=> b!1555965 (=> (not res!694485) (not e!998409))))

(declare-fun isEmpty!10117 (BalanceConc!11076) Bool)

(assert (=> b!1555965 (= res!694485 (not (isEmpty!10117 (_1!9499 (_1!9500 lt!538776)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!50 (Regex!4277 BalanceConc!11076 BalanceConc!11076 CacheUp!1062 CacheDown!1068 CacheFurthestNullable!490) tuple4!894)

(assert (=> b!1555965 (= lt!538776 (findLongestMatchWithZipperSequenceV3Mem!50 (regex!2949 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1555966 () Bool)

(declare-fun e!998401 () Bool)

(declare-fun e!998404 () Bool)

(declare-fun lt!538777 () MutLongMap!1802)

(assert (=> b!1555966 (= e!998401 (and e!998404 ((_ is LongMap!1802) lt!538777)))))

(assert (=> b!1555966 (= lt!538777 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))

(declare-fun b!1555967 () Bool)

(declare-fun e!998391 () Bool)

(declare-fun lt!538775 () MutLongMap!1803)

(assert (=> b!1555967 (= e!998380 (and e!998391 ((_ is LongMap!1803) lt!538775)))))

(assert (=> b!1555967 (= lt!538775 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))

(declare-fun res!694494 () Bool)

(assert (=> b!1555968 (=> res!694494 e!998400)))

(declare-fun Forall!609 (Int) Bool)

(assert (=> b!1555968 (= res!694494 (not (Forall!609 lambda!65881)))))

(declare-fun b!1555969 () Bool)

(declare-fun e!998390 () Bool)

(declare-datatypes ((tuple2!16310 0))(
  ( (tuple2!16311 (_1!9502 List!16894) (_2!9502 List!16894)) )
))
(declare-fun lt!538788 () tuple2!16310)

(declare-fun matchR!1879 (Regex!4277 List!16894) Bool)

(assert (=> b!1555969 (= e!998390 (matchR!1879 (regex!2949 rule!240) (_1!9502 lt!538788)))))

(declare-fun tp!456220 () Bool)

(declare-fun b!1555970 () Bool)

(declare-fun e!998410 () Bool)

(declare-fun inv!22101 (String!19483) Bool)

(declare-fun inv!22108 (TokenValueInjection!5738) Bool)

(assert (=> b!1555970 (= e!998389 (and tp!456220 (inv!22101 (tag!3213 rule!240)) (inv!22108 (transformation!2949 rule!240)) e!998410))))

(declare-fun b!1555971 () Bool)

(declare-fun res!694481 () Bool)

(assert (=> b!1555971 (=> (not res!694481) (not e!998406))))

(declare-fun valid!1449 (CacheDown!1068) Bool)

(assert (=> b!1555971 (= res!694481 (valid!1449 cacheDown!768))))

(declare-fun e!998395 () Bool)

(declare-fun tp!456217 () Bool)

(declare-fun tp!456221 () Bool)

(declare-fun array_inv!1981 (array!6180) Bool)

(assert (=> b!1555972 (= e!998399 (and tp!456212 tp!456221 tp!456217 (array_inv!1978 (_keys!2096 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) (array_inv!1981 (_values!2081 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) e!998395))))

(declare-fun b!1555973 () Bool)

(assert (=> b!1555973 (= e!998391 e!998377)))

(declare-fun b!1555974 () Bool)

(declare-fun tp!456226 () Bool)

(assert (=> b!1555974 (= e!998395 (and tp!456226 mapRes!8389))))

(declare-fun condMapEmpty!8389 () Bool)

(declare-fun mapDefault!8388 () List!16896)

(assert (=> b!1555974 (= condMapEmpty!8389 (= (arr!2755 (_values!2081 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16896)) mapDefault!8388)))))

(declare-fun b!1555975 () Bool)

(declare-fun e!998394 () Bool)

(assert (=> b!1555975 (= e!998374 e!998394)))

(declare-fun res!694484 () Bool)

(assert (=> b!1555975 (=> res!694484 e!998394)))

(assert (=> b!1555975 (= res!694484 (not (= (apply!4110 (transformation!2949 rule!240) lt!538782) lt!538785)))))

(declare-fun lt!538778 () Unit!26072)

(declare-fun lemmaEqSameImage!149 (TokenValueInjection!5738 BalanceConc!11076 BalanceConc!11076) Unit!26072)

(assert (=> b!1555975 (= lt!538778 (lemmaEqSameImage!149 (transformation!2949 rule!240) (_1!9499 (_1!9500 lt!538776)) lt!538782))))

(declare-fun mapIsEmpty!8390 () Bool)

(assert (=> mapIsEmpty!8390 mapRes!8388))

(assert (=> b!1555976 (= e!998410 (and tp!456225 tp!456229))))

(declare-fun b!1555977 () Bool)

(declare-fun res!694489 () Bool)

(assert (=> b!1555977 (=> (not res!694489) (not e!998406))))

(declare-fun ruleValid!684 (LexerInterface!2585 Rule!5698) Bool)

(assert (=> b!1555977 (= res!694489 (ruleValid!684 thiss!16438 rule!240))))

(declare-fun b!1555978 () Bool)

(assert (=> b!1555978 (= e!998404 e!998388)))

(assert (=> b!1555979 (= e!998397 (and e!998401 tp!456211))))

(declare-fun b!1555980 () Bool)

(assert (=> b!1555980 (= e!998409 (not e!998400))))

(declare-fun res!694490 () Bool)

(assert (=> b!1555980 (=> res!694490 e!998400)))

(declare-fun semiInverseModEq!1113 (Int Int) Bool)

(assert (=> b!1555980 (= res!694490 (not (semiInverseModEq!1113 (toChars!4180 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240)))))))

(declare-fun lt!538786 () Unit!26072)

(declare-fun lemmaInv!427 (TokenValueInjection!5738) Unit!26072)

(assert (=> b!1555980 (= lt!538786 (lemmaInv!427 (transformation!2949 rule!240)))))

(assert (=> b!1555980 e!998390))

(declare-fun res!694492 () Bool)

(assert (=> b!1555980 (=> res!694492 e!998390)))

(declare-fun isEmpty!10118 (List!16894) Bool)

(assert (=> b!1555980 (= res!694492 (isEmpty!10118 (_1!9502 lt!538788)))))

(declare-fun findLongestMatchInner!333 (Regex!4277 List!16894 Int List!16894 List!16894 Int) tuple2!16310)

(declare-fun size!13630 (List!16894) Int)

(assert (=> b!1555980 (= lt!538788 (findLongestMatchInner!333 (regex!2949 rule!240) Nil!16826 (size!13630 Nil!16826) lt!538790 lt!538790 (size!13630 lt!538790)))))

(declare-fun lt!538789 () Unit!26072)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!317 (Regex!4277 List!16894) Unit!26072)

(assert (=> b!1555980 (= lt!538789 (longestMatchIsAcceptedByMatchOrIsEmpty!317 (regex!2949 rule!240) lt!538790))))

(declare-fun b!1555981 () Bool)

(declare-fun res!694493 () Bool)

(assert (=> b!1555981 (=> (not res!694493) (not e!998406))))

(declare-fun valid!1450 (CacheUp!1062) Bool)

(assert (=> b!1555981 (= res!694493 (valid!1450 cacheUp!755))))

(declare-fun b!1555982 () Bool)

(declare-fun res!694491 () Bool)

(assert (=> b!1555982 (=> (not res!694491) (not e!998406))))

(declare-fun valid!1451 (CacheFurthestNullable!490) Bool)

(assert (=> b!1555982 (= res!694491 (valid!1451 cacheFurthestNullable!103))))

(declare-fun b!1555983 () Bool)

(assert (=> b!1555983 (= e!998387 e!998386)))

(declare-fun b!1555984 () Bool)

(declare-fun get!4849 (Option!3036) tuple2!16304)

(assert (=> b!1555984 (= e!998394 (= (value!93683 (_1!9498 (get!4849 lt!538784))) lt!538785))))

(assert (= (and start!144288 res!694488) b!1555977))

(assert (= (and b!1555977 res!694489) b!1555981))

(assert (= (and b!1555981 res!694493) b!1555971))

(assert (= (and b!1555971 res!694481) b!1555982))

(assert (= (and b!1555982 res!694491) b!1555963))

(assert (= (and b!1555963 res!694483) b!1555950))

(assert (= (and b!1555950 res!694487) b!1555965))

(assert (= (and b!1555965 res!694485) b!1555980))

(assert (= (and b!1555980 (not res!694492)) b!1555969))

(assert (= (and b!1555980 (not res!694490)) b!1555968))

(assert (= (and b!1555968 (not res!694494)) b!1555957))

(assert (= (and b!1555957 (not res!694482)) b!1555961))

(assert (= (and b!1555961 (not res!694486)) b!1555956))

(assert (= (and b!1555956 (not res!694480)) b!1555975))

(assert (= (and b!1555975 (not res!694484)) b!1555984))

(assert (= start!144288 b!1555948))

(assert (= (and b!1555946 condMapEmpty!8390) mapIsEmpty!8390))

(assert (= (and b!1555946 (not condMapEmpty!8390)) mapNonEmpty!8389))

(assert (= b!1555949 b!1555946))

(assert (= b!1555953 b!1555949))

(assert (= b!1555973 b!1555953))

(assert (= (and b!1555967 ((_ is LongMap!1803) (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))) b!1555973))

(assert (= b!1555944 b!1555967))

(assert (= (and b!1555958 ((_ is HashMap!1747) (cache!2128 cacheUp!755))) b!1555944))

(assert (= start!144288 b!1555958))

(assert (= (and b!1555960 condMapEmpty!8388) mapIsEmpty!8389))

(assert (= (and b!1555960 (not condMapEmpty!8388)) mapNonEmpty!8390))

(assert (= b!1555951 b!1555960))

(assert (= b!1555983 b!1555951))

(assert (= b!1555962 b!1555983))

(assert (= (and b!1555959 ((_ is LongMap!1804) (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))) b!1555962))

(assert (= b!1555947 b!1555959))

(assert (= (and b!1555954 ((_ is HashMap!1748) (cache!2129 cacheFurthestNullable!103))) b!1555947))

(assert (= b!1555954 b!1555964))

(assert (= start!144288 b!1555954))

(assert (= start!144288 b!1555955))

(assert (= b!1555970 b!1555976))

(assert (= start!144288 b!1555970))

(assert (= (and b!1555974 condMapEmpty!8389) mapIsEmpty!8388))

(assert (= (and b!1555974 (not condMapEmpty!8389)) mapNonEmpty!8388))

(assert (= b!1555972 b!1555974))

(assert (= b!1555945 b!1555972))

(assert (= b!1555978 b!1555945))

(assert (= (and b!1555966 ((_ is LongMap!1802) (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))) b!1555978))

(assert (= b!1555979 b!1555966))

(assert (= (and b!1555952 ((_ is HashMap!1746) (cache!2127 cacheDown!768))) b!1555979))

(assert (= start!144288 b!1555952))

(declare-fun m!1828348 () Bool)

(assert (=> mapNonEmpty!8390 m!1828348))

(declare-fun m!1828350 () Bool)

(assert (=> mapNonEmpty!8389 m!1828350))

(declare-fun m!1828352 () Bool)

(assert (=> b!1555956 m!1828352))

(declare-fun m!1828354 () Bool)

(assert (=> b!1555977 m!1828354))

(declare-fun m!1828356 () Bool)

(assert (=> b!1555954 m!1828356))

(declare-fun m!1828358 () Bool)

(assert (=> b!1555970 m!1828358))

(declare-fun m!1828360 () Bool)

(assert (=> b!1555970 m!1828360))

(declare-fun m!1828362 () Bool)

(assert (=> b!1555969 m!1828362))

(declare-fun m!1828364 () Bool)

(assert (=> b!1555975 m!1828364))

(declare-fun m!1828366 () Bool)

(assert (=> b!1555975 m!1828366))

(declare-fun m!1828368 () Bool)

(assert (=> b!1555963 m!1828368))

(assert (=> b!1555963 m!1828368))

(declare-fun m!1828370 () Bool)

(assert (=> b!1555963 m!1828370))

(declare-fun m!1828372 () Bool)

(assert (=> b!1555963 m!1828372))

(declare-fun m!1828374 () Bool)

(assert (=> b!1555971 m!1828374))

(declare-fun m!1828376 () Bool)

(assert (=> b!1555980 m!1828376))

(declare-fun m!1828378 () Bool)

(assert (=> b!1555980 m!1828378))

(declare-fun m!1828380 () Bool)

(assert (=> b!1555980 m!1828380))

(declare-fun m!1828382 () Bool)

(assert (=> b!1555980 m!1828382))

(declare-fun m!1828384 () Bool)

(assert (=> b!1555980 m!1828384))

(declare-fun m!1828386 () Bool)

(assert (=> b!1555980 m!1828386))

(assert (=> b!1555980 m!1828384))

(assert (=> b!1555980 m!1828380))

(declare-fun m!1828388 () Bool)

(assert (=> b!1555980 m!1828388))

(declare-fun m!1828390 () Bool)

(assert (=> b!1555982 m!1828390))

(declare-fun m!1828392 () Bool)

(assert (=> b!1555957 m!1828392))

(declare-fun m!1828394 () Bool)

(assert (=> b!1555957 m!1828394))

(declare-fun m!1828396 () Bool)

(assert (=> b!1555957 m!1828396))

(declare-fun m!1828398 () Bool)

(assert (=> b!1555957 m!1828398))

(declare-fun m!1828400 () Bool)

(assert (=> b!1555957 m!1828400))

(declare-fun m!1828402 () Bool)

(assert (=> b!1555957 m!1828402))

(declare-fun m!1828404 () Bool)

(assert (=> b!1555957 m!1828404))

(declare-fun m!1828406 () Bool)

(assert (=> b!1555957 m!1828406))

(declare-fun m!1828408 () Bool)

(assert (=> b!1555957 m!1828408))

(declare-fun m!1828410 () Bool)

(assert (=> b!1555964 m!1828410))

(declare-fun m!1828412 () Bool)

(assert (=> b!1555949 m!1828412))

(declare-fun m!1828414 () Bool)

(assert (=> b!1555949 m!1828414))

(declare-fun m!1828416 () Bool)

(assert (=> b!1555981 m!1828416))

(declare-fun m!1828418 () Bool)

(assert (=> b!1555948 m!1828418))

(declare-fun m!1828420 () Bool)

(assert (=> b!1555984 m!1828420))

(declare-fun m!1828422 () Bool)

(assert (=> start!144288 m!1828422))

(declare-fun m!1828424 () Bool)

(assert (=> start!144288 m!1828424))

(declare-fun m!1828426 () Bool)

(assert (=> start!144288 m!1828426))

(declare-fun m!1828428 () Bool)

(assert (=> start!144288 m!1828428))

(declare-fun m!1828430 () Bool)

(assert (=> start!144288 m!1828430))

(declare-fun m!1828432 () Bool)

(assert (=> b!1555972 m!1828432))

(declare-fun m!1828434 () Bool)

(assert (=> b!1555972 m!1828434))

(declare-fun m!1828436 () Bool)

(assert (=> b!1555955 m!1828436))

(declare-fun m!1828438 () Bool)

(assert (=> b!1555968 m!1828438))

(declare-fun m!1828440 () Bool)

(assert (=> b!1555965 m!1828440))

(declare-fun m!1828442 () Bool)

(assert (=> b!1555965 m!1828442))

(declare-fun m!1828444 () Bool)

(assert (=> mapNonEmpty!8388 m!1828444))

(declare-fun m!1828446 () Bool)

(assert (=> b!1555951 m!1828446))

(declare-fun m!1828448 () Bool)

(assert (=> b!1555951 m!1828448))

(check-sat b_and!108559 (not mapNonEmpty!8390) b_and!108553 b_and!108561 b_and!108557 (not b!1555980) (not b_next!42087) (not b!1555960) (not b!1555972) b_and!108549 (not b_next!42099) (not b!1555946) (not b_next!42091) (not b!1555957) (not b_next!42089) (not b!1555982) (not b!1555971) (not b!1555963) (not b!1555964) (not b!1555974) (not b_next!42095) (not b!1555949) (not b!1555955) (not mapNonEmpty!8388) (not b_next!42097) (not start!144288) b_and!108551 (not b!1555984) (not b!1555968) (not b!1555956) (not b!1555951) (not b!1555981) (not b_next!42101) (not b!1555948) b_and!108563 (not b!1555969) (not b!1555954) (not b!1555970) (not b!1555977) (not b!1555975) (not b!1555965) (not b_next!42093) (not mapNonEmpty!8389) b_and!108555)
(check-sat (not b_next!42089) b_and!108559 (not b_next!42095) b_and!108553 (not b_next!42097) b_and!108561 b_and!108557 b_and!108551 (not b_next!42101) (not b_next!42087) b_and!108563 b_and!108549 (not b_next!42099) (not b_next!42091) (not b_next!42093) b_and!108555)
(get-model)

(declare-fun d!461522 () Bool)

(assert (=> d!461522 (= (array_inv!1978 (_keys!2098 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) (bvsge (size!13624 (_keys!2098 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555951 d!461522))

(declare-fun d!461524 () Bool)

(assert (=> d!461524 (= (array_inv!1980 (_values!2083 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) (bvsge (size!13627 (_values!2083 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555951 d!461524))

(declare-fun d!461526 () Bool)

(declare-fun isBalanced!1644 (Conc!5567) Bool)

(assert (=> d!461526 (= (inv!22104 totalInput!568) (isBalanced!1644 (c!252806 totalInput!568)))))

(declare-fun bs!388703 () Bool)

(assert (= bs!388703 d!461526))

(declare-fun m!1828450 () Bool)

(assert (=> bs!388703 m!1828450))

(assert (=> start!144288 d!461526))

(declare-fun d!461528 () Bool)

(declare-fun res!694499 () Bool)

(declare-fun e!998419 () Bool)

(assert (=> d!461528 (=> (not res!694499) (not e!998419))))

(assert (=> d!461528 (= res!694499 ((_ is HashMap!1746) (cache!2127 cacheDown!768)))))

(assert (=> d!461528 (= (inv!22107 cacheDown!768) e!998419)))

(declare-fun b!1555995 () Bool)

(declare-fun validCacheMapDown!162 (MutableMap!1746) Bool)

(assert (=> b!1555995 (= e!998419 (validCacheMapDown!162 (cache!2127 cacheDown!768)))))

(assert (= (and d!461528 res!694499) b!1555995))

(declare-fun m!1828452 () Bool)

(assert (=> b!1555995 m!1828452))

(assert (=> start!144288 d!461528))

(declare-fun d!461530 () Bool)

(declare-fun res!694502 () Bool)

(declare-fun e!998422 () Bool)

(assert (=> d!461530 (=> (not res!694502) (not e!998422))))

(assert (=> d!461530 (= res!694502 ((_ is HashMap!1747) (cache!2128 cacheUp!755)))))

(assert (=> d!461530 (= (inv!22105 cacheUp!755) e!998422)))

(declare-fun b!1555998 () Bool)

(declare-fun validCacheMapUp!162 (MutableMap!1747) Bool)

(assert (=> b!1555998 (= e!998422 (validCacheMapUp!162 (cache!2128 cacheUp!755)))))

(assert (= (and d!461530 res!694502) b!1555998))

(declare-fun m!1828454 () Bool)

(assert (=> b!1555998 m!1828454))

(assert (=> start!144288 d!461530))

(declare-fun d!461532 () Bool)

(assert (=> d!461532 (= (inv!22104 input!1676) (isBalanced!1644 (c!252806 input!1676)))))

(declare-fun bs!388704 () Bool)

(assert (= bs!388704 d!461532))

(declare-fun m!1828456 () Bool)

(assert (=> bs!388704 m!1828456))

(assert (=> start!144288 d!461532))

(declare-fun d!461534 () Bool)

(declare-fun res!694505 () Bool)

(declare-fun e!998425 () Bool)

(assert (=> d!461534 (=> (not res!694505) (not e!998425))))

(assert (=> d!461534 (= res!694505 ((_ is HashMap!1748) (cache!2129 cacheFurthestNullable!103)))))

(assert (=> d!461534 (= (inv!22106 cacheFurthestNullable!103) e!998425)))

(declare-fun b!1556001 () Bool)

(declare-fun validCacheMapFurthestNullable!75 (MutableMap!1748 BalanceConc!11076) Bool)

(assert (=> b!1556001 (= e!998425 (validCacheMapFurthestNullable!75 (cache!2129 cacheFurthestNullable!103) (totalInput!2466 cacheFurthestNullable!103)))))

(assert (= (and d!461534 res!694505) b!1556001))

(declare-fun m!1828458 () Bool)

(assert (=> b!1556001 m!1828458))

(assert (=> start!144288 d!461534))

(declare-fun d!461536 () Bool)

(declare-fun e!998441 () Bool)

(assert (=> d!461536 e!998441))

(declare-fun c!252815 () Bool)

(assert (=> d!461536 (= c!252815 ((_ is EmptyExpr!4277) (regex!2949 rule!240)))))

(declare-fun lt!538793 () Bool)

(declare-fun e!998443 () Bool)

(assert (=> d!461536 (= lt!538793 e!998443)))

(declare-fun c!252814 () Bool)

(assert (=> d!461536 (= c!252814 (isEmpty!10118 (_1!9502 lt!538788)))))

(declare-fun validRegex!1712 (Regex!4277) Bool)

(assert (=> d!461536 (validRegex!1712 (regex!2949 rule!240))))

(assert (=> d!461536 (= (matchR!1879 (regex!2949 rule!240) (_1!9502 lt!538788)) lt!538793)))

(declare-fun b!1556030 () Bool)

(declare-fun res!694524 () Bool)

(declare-fun e!998444 () Bool)

(assert (=> b!1556030 (=> res!694524 e!998444)))

(declare-fun tail!2209 (List!16894) List!16894)

(assert (=> b!1556030 (= res!694524 (not (isEmpty!10118 (tail!2209 (_1!9502 lt!538788)))))))

(declare-fun bm!102034 () Bool)

(declare-fun call!102039 () Bool)

(assert (=> bm!102034 (= call!102039 (isEmpty!10118 (_1!9502 lt!538788)))))

(declare-fun b!1556031 () Bool)

(declare-fun e!998442 () Bool)

(assert (=> b!1556031 (= e!998442 (not lt!538793))))

(declare-fun b!1556032 () Bool)

(declare-fun head!3114 (List!16894) C!8732)

(assert (=> b!1556032 (= e!998444 (not (= (head!3114 (_1!9502 lt!538788)) (c!252807 (regex!2949 rule!240)))))))

(declare-fun b!1556033 () Bool)

(declare-fun nullable!1271 (Regex!4277) Bool)

(assert (=> b!1556033 (= e!998443 (nullable!1271 (regex!2949 rule!240)))))

(declare-fun b!1556034 () Bool)

(assert (=> b!1556034 (= e!998441 e!998442)))

(declare-fun c!252816 () Bool)

(assert (=> b!1556034 (= c!252816 ((_ is EmptyLang!4277) (regex!2949 rule!240)))))

(declare-fun b!1556035 () Bool)

(declare-fun e!998445 () Bool)

(assert (=> b!1556035 (= e!998445 e!998444)))

(declare-fun res!694522 () Bool)

(assert (=> b!1556035 (=> res!694522 e!998444)))

(assert (=> b!1556035 (= res!694522 call!102039)))

(declare-fun b!1556036 () Bool)

(assert (=> b!1556036 (= e!998441 (= lt!538793 call!102039))))

(declare-fun b!1556037 () Bool)

(declare-fun res!694523 () Bool)

(declare-fun e!998446 () Bool)

(assert (=> b!1556037 (=> res!694523 e!998446)))

(assert (=> b!1556037 (= res!694523 (not ((_ is ElementMatch!4277) (regex!2949 rule!240))))))

(assert (=> b!1556037 (= e!998442 e!998446)))

(declare-fun b!1556038 () Bool)

(assert (=> b!1556038 (= e!998446 e!998445)))

(declare-fun res!694525 () Bool)

(assert (=> b!1556038 (=> (not res!694525) (not e!998445))))

(assert (=> b!1556038 (= res!694525 (not lt!538793))))

(declare-fun b!1556039 () Bool)

(declare-fun e!998440 () Bool)

(assert (=> b!1556039 (= e!998440 (= (head!3114 (_1!9502 lt!538788)) (c!252807 (regex!2949 rule!240))))))

(declare-fun b!1556040 () Bool)

(declare-fun res!694527 () Bool)

(assert (=> b!1556040 (=> (not res!694527) (not e!998440))))

(assert (=> b!1556040 (= res!694527 (not call!102039))))

(declare-fun b!1556041 () Bool)

(declare-fun derivativeStep!1023 (Regex!4277 C!8732) Regex!4277)

(assert (=> b!1556041 (= e!998443 (matchR!1879 (derivativeStep!1023 (regex!2949 rule!240) (head!3114 (_1!9502 lt!538788))) (tail!2209 (_1!9502 lt!538788))))))

(declare-fun b!1556042 () Bool)

(declare-fun res!694526 () Bool)

(assert (=> b!1556042 (=> (not res!694526) (not e!998440))))

(assert (=> b!1556042 (= res!694526 (isEmpty!10118 (tail!2209 (_1!9502 lt!538788))))))

(declare-fun b!1556043 () Bool)

(declare-fun res!694528 () Bool)

(assert (=> b!1556043 (=> res!694528 e!998446)))

(assert (=> b!1556043 (= res!694528 e!998440)))

(declare-fun res!694529 () Bool)

(assert (=> b!1556043 (=> (not res!694529) (not e!998440))))

(assert (=> b!1556043 (= res!694529 lt!538793)))

(assert (= (and d!461536 c!252814) b!1556033))

(assert (= (and d!461536 (not c!252814)) b!1556041))

(assert (= (and d!461536 c!252815) b!1556036))

(assert (= (and d!461536 (not c!252815)) b!1556034))

(assert (= (and b!1556034 c!252816) b!1556031))

(assert (= (and b!1556034 (not c!252816)) b!1556037))

(assert (= (and b!1556037 (not res!694523)) b!1556043))

(assert (= (and b!1556043 res!694529) b!1556040))

(assert (= (and b!1556040 res!694527) b!1556042))

(assert (= (and b!1556042 res!694526) b!1556039))

(assert (= (and b!1556043 (not res!694528)) b!1556038))

(assert (= (and b!1556038 res!694525) b!1556035))

(assert (= (and b!1556035 (not res!694522)) b!1556030))

(assert (= (and b!1556030 (not res!694524)) b!1556032))

(assert (= (or b!1556036 b!1556040 b!1556035) bm!102034))

(declare-fun m!1828460 () Bool)

(assert (=> b!1556030 m!1828460))

(assert (=> b!1556030 m!1828460))

(declare-fun m!1828462 () Bool)

(assert (=> b!1556030 m!1828462))

(assert (=> d!461536 m!1828382))

(declare-fun m!1828464 () Bool)

(assert (=> d!461536 m!1828464))

(declare-fun m!1828466 () Bool)

(assert (=> b!1556041 m!1828466))

(assert (=> b!1556041 m!1828466))

(declare-fun m!1828468 () Bool)

(assert (=> b!1556041 m!1828468))

(assert (=> b!1556041 m!1828460))

(assert (=> b!1556041 m!1828468))

(assert (=> b!1556041 m!1828460))

(declare-fun m!1828470 () Bool)

(assert (=> b!1556041 m!1828470))

(assert (=> bm!102034 m!1828382))

(assert (=> b!1556039 m!1828466))

(declare-fun m!1828472 () Bool)

(assert (=> b!1556033 m!1828472))

(assert (=> b!1556042 m!1828460))

(assert (=> b!1556042 m!1828460))

(assert (=> b!1556042 m!1828462))

(assert (=> b!1556032 m!1828466))

(assert (=> b!1555969 d!461536))

(declare-fun d!461538 () Bool)

(declare-fun choose!9285 (Int) Bool)

(assert (=> d!461538 (= (Forall!609 lambda!65881) (choose!9285 lambda!65881))))

(declare-fun bs!388705 () Bool)

(assert (= bs!388705 d!461538))

(declare-fun m!1828474 () Bool)

(assert (=> bs!388705 m!1828474))

(assert (=> b!1555968 d!461538))

(declare-fun d!461540 () Bool)

(declare-fun res!694534 () Bool)

(declare-fun e!998449 () Bool)

(assert (=> d!461540 (=> (not res!694534) (not e!998449))))

(assert (=> d!461540 (= res!694534 (validRegex!1712 (regex!2949 rule!240)))))

(assert (=> d!461540 (= (ruleValid!684 thiss!16438 rule!240) e!998449)))

(declare-fun b!1556048 () Bool)

(declare-fun res!694535 () Bool)

(assert (=> b!1556048 (=> (not res!694535) (not e!998449))))

(assert (=> b!1556048 (= res!694535 (not (nullable!1271 (regex!2949 rule!240))))))

(declare-fun b!1556049 () Bool)

(assert (=> b!1556049 (= e!998449 (not (= (tag!3213 rule!240) (String!19484 ""))))))

(assert (= (and d!461540 res!694534) b!1556048))

(assert (= (and b!1556048 res!694535) b!1556049))

(assert (=> d!461540 m!1828464))

(assert (=> b!1556048 m!1828472))

(assert (=> b!1555977 d!461540))

(declare-fun d!461542 () Bool)

(assert (=> d!461542 (= (array_inv!1978 (_keys!2097 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) (bvsge (size!13624 (_keys!2097 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555949 d!461542))

(declare-fun d!461544 () Bool)

(assert (=> d!461544 (= (array_inv!1979 (_values!2082 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) (bvsge (size!13626 (_values!2082 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555949 d!461544))

(declare-fun d!461546 () Bool)

(assert (=> d!461546 (= (array_inv!1978 (_keys!2096 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) (bvsge (size!13624 (_keys!2096 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555972 d!461546))

(declare-fun d!461548 () Bool)

(assert (=> d!461548 (= (array_inv!1981 (_values!2081 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) (bvsge (size!13625 (_values!2081 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555972 d!461548))

(declare-fun d!461550 () Bool)

(assert (=> d!461550 (= (valid!1451 cacheFurthestNullable!103) (validCacheMapFurthestNullable!75 (cache!2129 cacheFurthestNullable!103) (totalInput!2466 cacheFurthestNullable!103)))))

(declare-fun bs!388706 () Bool)

(assert (= bs!388706 d!461550))

(assert (=> bs!388706 m!1828458))

(assert (=> b!1555982 d!461550))

(declare-fun d!461552 () Bool)

(assert (=> d!461552 (= (valid!1450 cacheUp!755) (validCacheMapUp!162 (cache!2128 cacheUp!755)))))

(declare-fun bs!388707 () Bool)

(assert (= bs!388707 d!461552))

(assert (=> bs!388707 m!1828454))

(assert (=> b!1555981 d!461552))

(declare-fun d!461554 () Bool)

(assert (=> d!461554 (= (valid!1449 cacheDown!768) (validCacheMapDown!162 (cache!2127 cacheDown!768)))))

(declare-fun bs!388708 () Bool)

(assert (= bs!388708 d!461554))

(assert (=> bs!388708 m!1828452))

(assert (=> b!1555971 d!461554))

(declare-fun d!461556 () Bool)

(assert (=> d!461556 (= (inv!22101 (tag!3213 rule!240)) (= (mod (str.len (value!93682 (tag!3213 rule!240))) 2) 0))))

(assert (=> b!1555970 d!461556))

(declare-fun d!461558 () Bool)

(declare-fun res!694538 () Bool)

(declare-fun e!998452 () Bool)

(assert (=> d!461558 (=> (not res!694538) (not e!998452))))

(assert (=> d!461558 (= res!694538 (semiInverseModEq!1113 (toChars!4180 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240))))))

(assert (=> d!461558 (= (inv!22108 (transformation!2949 rule!240)) e!998452)))

(declare-fun b!1556052 () Bool)

(declare-fun equivClasses!1057 (Int Int) Bool)

(assert (=> b!1556052 (= e!998452 (equivClasses!1057 (toChars!4180 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240))))))

(assert (= (and d!461558 res!694538) b!1556052))

(assert (=> d!461558 m!1828376))

(declare-fun m!1828476 () Bool)

(assert (=> b!1556052 m!1828476))

(assert (=> b!1555970 d!461558))

(declare-fun d!461560 () Bool)

(declare-fun lt!538796 () Int)

(assert (=> d!461560 (>= lt!538796 0)))

(declare-fun e!998455 () Int)

(assert (=> d!461560 (= lt!538796 e!998455)))

(declare-fun c!252819 () Bool)

(assert (=> d!461560 (= c!252819 ((_ is Nil!16826) Nil!16826))))

(assert (=> d!461560 (= (size!13630 Nil!16826) lt!538796)))

(declare-fun b!1556057 () Bool)

(assert (=> b!1556057 (= e!998455 0)))

(declare-fun b!1556058 () Bool)

(assert (=> b!1556058 (= e!998455 (+ 1 (size!13630 (t!141365 Nil!16826))))))

(assert (= (and d!461560 c!252819) b!1556057))

(assert (= (and d!461560 (not c!252819)) b!1556058))

(declare-fun m!1828478 () Bool)

(assert (=> b!1556058 m!1828478))

(assert (=> b!1555980 d!461560))

(declare-fun d!461562 () Bool)

(declare-fun lt!538797 () Int)

(assert (=> d!461562 (>= lt!538797 0)))

(declare-fun e!998456 () Int)

(assert (=> d!461562 (= lt!538797 e!998456)))

(declare-fun c!252820 () Bool)

(assert (=> d!461562 (= c!252820 ((_ is Nil!16826) lt!538790))))

(assert (=> d!461562 (= (size!13630 lt!538790) lt!538797)))

(declare-fun b!1556059 () Bool)

(assert (=> b!1556059 (= e!998456 0)))

(declare-fun b!1556060 () Bool)

(assert (=> b!1556060 (= e!998456 (+ 1 (size!13630 (t!141365 lt!538790))))))

(assert (= (and d!461562 c!252820) b!1556059))

(assert (= (and d!461562 (not c!252820)) b!1556060))

(declare-fun m!1828480 () Bool)

(assert (=> b!1556060 m!1828480))

(assert (=> b!1555980 d!461562))

(declare-fun bm!102051 () Bool)

(declare-fun call!102063 () Unit!26072)

(declare-fun lemmaIsPrefixSameLengthThenSameList!125 (List!16894 List!16894 List!16894) Unit!26072)

(assert (=> bm!102051 (= call!102063 (lemmaIsPrefixSameLengthThenSameList!125 lt!538790 Nil!16826 lt!538790))))

(declare-fun b!1556090 () Bool)

(declare-fun e!998474 () tuple2!16310)

(assert (=> b!1556090 (= e!998474 (tuple2!16311 Nil!16826 lt!538790))))

(declare-fun b!1556091 () Bool)

(declare-fun e!998477 () tuple2!16310)

(declare-fun call!102056 () tuple2!16310)

(assert (=> b!1556091 (= e!998477 call!102056)))

(declare-fun bm!102052 () Bool)

(declare-fun call!102062 () Unit!26072)

(declare-fun lemmaIsPrefixRefl!891 (List!16894 List!16894) Unit!26072)

(assert (=> bm!102052 (= call!102062 (lemmaIsPrefixRefl!891 lt!538790 lt!538790))))

(declare-fun b!1556092 () Bool)

(declare-fun e!998479 () tuple2!16310)

(assert (=> b!1556092 (= e!998474 e!998479)))

(declare-fun c!252837 () Bool)

(assert (=> b!1556092 (= c!252837 (= (size!13630 Nil!16826) (size!13630 lt!538790)))))

(declare-fun b!1556093 () Bool)

(declare-fun e!998480 () tuple2!16310)

(assert (=> b!1556093 (= e!998480 (tuple2!16311 Nil!16826 Nil!16826))))

(declare-fun b!1556094 () Bool)

(declare-fun e!998476 () tuple2!16310)

(assert (=> b!1556094 (= e!998476 (tuple2!16311 Nil!16826 lt!538790))))

(declare-fun b!1556089 () Bool)

(declare-fun e!998478 () Unit!26072)

(declare-fun Unit!26074 () Unit!26072)

(assert (=> b!1556089 (= e!998478 Unit!26074)))

(declare-fun d!461564 () Bool)

(declare-fun e!998473 () Bool)

(assert (=> d!461564 e!998473))

(declare-fun res!694543 () Bool)

(assert (=> d!461564 (=> (not res!694543) (not e!998473))))

(declare-fun lt!538861 () tuple2!16310)

(declare-fun ++!4415 (List!16894 List!16894) List!16894)

(assert (=> d!461564 (= res!694543 (= (++!4415 (_1!9502 lt!538861) (_2!9502 lt!538861)) lt!538790))))

(assert (=> d!461564 (= lt!538861 e!998474)))

(declare-fun c!252835 () Bool)

(declare-fun lostCause!389 (Regex!4277) Bool)

(assert (=> d!461564 (= c!252835 (lostCause!389 (regex!2949 rule!240)))))

(declare-fun lt!538871 () Unit!26072)

(declare-fun Unit!26075 () Unit!26072)

(assert (=> d!461564 (= lt!538871 Unit!26075)))

(declare-fun getSuffix!671 (List!16894 List!16894) List!16894)

(assert (=> d!461564 (= (getSuffix!671 lt!538790 Nil!16826) lt!538790)))

(declare-fun lt!538860 () Unit!26072)

(declare-fun lt!538854 () Unit!26072)

(assert (=> d!461564 (= lt!538860 lt!538854)))

(declare-fun lt!538873 () List!16894)

(assert (=> d!461564 (= lt!538790 lt!538873)))

(declare-fun lemmaSamePrefixThenSameSuffix!623 (List!16894 List!16894 List!16894 List!16894 List!16894) Unit!26072)

(assert (=> d!461564 (= lt!538854 (lemmaSamePrefixThenSameSuffix!623 Nil!16826 lt!538790 Nil!16826 lt!538873 lt!538790))))

(assert (=> d!461564 (= lt!538873 (getSuffix!671 lt!538790 Nil!16826))))

(declare-fun lt!538877 () Unit!26072)

(declare-fun lt!538872 () Unit!26072)

(assert (=> d!461564 (= lt!538877 lt!538872)))

(declare-fun isPrefix!1261 (List!16894 List!16894) Bool)

(assert (=> d!461564 (isPrefix!1261 Nil!16826 (++!4415 Nil!16826 lt!538790))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!786 (List!16894 List!16894) Unit!26072)

(assert (=> d!461564 (= lt!538872 (lemmaConcatTwoListThenFirstIsPrefix!786 Nil!16826 lt!538790))))

(assert (=> d!461564 (validRegex!1712 (regex!2949 rule!240))))

(assert (=> d!461564 (= (findLongestMatchInner!333 (regex!2949 rule!240) Nil!16826 (size!13630 Nil!16826) lt!538790 lt!538790 (size!13630 lt!538790)) lt!538861)))

(declare-fun bm!102053 () Bool)

(declare-fun call!102059 () Bool)

(assert (=> bm!102053 (= call!102059 (isPrefix!1261 lt!538790 lt!538790))))

(declare-fun bm!102054 () Bool)

(declare-fun call!102058 () List!16894)

(assert (=> bm!102054 (= call!102058 (tail!2209 lt!538790))))

(declare-fun bm!102055 () Bool)

(declare-fun call!102060 () C!8732)

(assert (=> bm!102055 (= call!102060 (head!3114 lt!538790))))

(declare-fun b!1556095 () Bool)

(declare-fun c!252838 () Bool)

(declare-fun call!102061 () Bool)

(assert (=> b!1556095 (= c!252838 call!102061)))

(declare-fun lt!538865 () Unit!26072)

(declare-fun lt!538856 () Unit!26072)

(assert (=> b!1556095 (= lt!538865 lt!538856)))

(declare-fun lt!538874 () C!8732)

(declare-fun lt!538880 () List!16894)

(assert (=> b!1556095 (= (++!4415 (++!4415 Nil!16826 (Cons!16826 lt!538874 Nil!16826)) lt!538880) lt!538790)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!440 (List!16894 C!8732 List!16894 List!16894) Unit!26072)

(assert (=> b!1556095 (= lt!538856 (lemmaMoveElementToOtherListKeepsConcatEq!440 Nil!16826 lt!538874 lt!538880 lt!538790))))

(assert (=> b!1556095 (= lt!538880 (tail!2209 lt!538790))))

(assert (=> b!1556095 (= lt!538874 (head!3114 lt!538790))))

(declare-fun lt!538867 () Unit!26072)

(declare-fun lt!538859 () Unit!26072)

(assert (=> b!1556095 (= lt!538867 lt!538859)))

(assert (=> b!1556095 (isPrefix!1261 (++!4415 Nil!16826 (Cons!16826 (head!3114 (getSuffix!671 lt!538790 Nil!16826)) Nil!16826)) lt!538790)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!114 (List!16894 List!16894) Unit!26072)

(assert (=> b!1556095 (= lt!538859 (lemmaAddHeadSuffixToPrefixStillPrefix!114 Nil!16826 lt!538790))))

(declare-fun lt!538876 () Unit!26072)

(declare-fun lt!538869 () Unit!26072)

(assert (=> b!1556095 (= lt!538876 lt!538869)))

(assert (=> b!1556095 (= lt!538869 (lemmaAddHeadSuffixToPrefixStillPrefix!114 Nil!16826 lt!538790))))

(declare-fun lt!538878 () List!16894)

(assert (=> b!1556095 (= lt!538878 (++!4415 Nil!16826 (Cons!16826 (head!3114 lt!538790) Nil!16826)))))

(declare-fun lt!538864 () Unit!26072)

(assert (=> b!1556095 (= lt!538864 e!998478)))

(declare-fun c!252836 () Bool)

(assert (=> b!1556095 (= c!252836 (= (size!13630 Nil!16826) (size!13630 lt!538790)))))

(declare-fun lt!538866 () Unit!26072)

(declare-fun lt!538863 () Unit!26072)

(assert (=> b!1556095 (= lt!538866 lt!538863)))

(assert (=> b!1556095 (<= (size!13630 Nil!16826) (size!13630 lt!538790))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!115 (List!16894 List!16894) Unit!26072)

(assert (=> b!1556095 (= lt!538863 (lemmaIsPrefixThenSmallerEqSize!115 Nil!16826 lt!538790))))

(assert (=> b!1556095 (= e!998479 e!998477)))

(declare-fun b!1556096 () Bool)

(assert (=> b!1556096 (= e!998480 (tuple2!16311 Nil!16826 lt!538790))))

(declare-fun b!1556097 () Bool)

(declare-fun e!998475 () Bool)

(assert (=> b!1556097 (= e!998473 e!998475)))

(declare-fun res!694544 () Bool)

(assert (=> b!1556097 (=> res!694544 e!998475)))

(assert (=> b!1556097 (= res!694544 (isEmpty!10118 (_1!9502 lt!538861)))))

(declare-fun b!1556098 () Bool)

(declare-fun lt!538870 () tuple2!16310)

(assert (=> b!1556098 (= e!998476 lt!538870)))

(declare-fun b!1556099 () Bool)

(declare-fun Unit!26076 () Unit!26072)

(assert (=> b!1556099 (= e!998478 Unit!26076)))

(declare-fun lt!538875 () Unit!26072)

(assert (=> b!1556099 (= lt!538875 call!102062)))

(assert (=> b!1556099 call!102059))

(declare-fun lt!538858 () Unit!26072)

(assert (=> b!1556099 (= lt!538858 lt!538875)))

(declare-fun lt!538868 () Unit!26072)

(assert (=> b!1556099 (= lt!538868 call!102063)))

(assert (=> b!1556099 (= lt!538790 Nil!16826)))

(declare-fun lt!538881 () Unit!26072)

(assert (=> b!1556099 (= lt!538881 lt!538868)))

(assert (=> b!1556099 false))

(declare-fun b!1556100 () Bool)

(assert (=> b!1556100 (= e!998477 e!998476)))

(assert (=> b!1556100 (= lt!538870 call!102056)))

(declare-fun c!252834 () Bool)

(assert (=> b!1556100 (= c!252834 (isEmpty!10118 (_1!9502 lt!538870)))))

(declare-fun bm!102056 () Bool)

(declare-fun call!102057 () Regex!4277)

(assert (=> bm!102056 (= call!102057 (derivativeStep!1023 (regex!2949 rule!240) call!102060))))

(declare-fun bm!102057 () Bool)

(assert (=> bm!102057 (= call!102061 (nullable!1271 (regex!2949 rule!240)))))

(declare-fun b!1556101 () Bool)

(assert (=> b!1556101 (= e!998475 (>= (size!13630 (_1!9502 lt!538861)) (size!13630 Nil!16826)))))

(declare-fun b!1556102 () Bool)

(declare-fun c!252833 () Bool)

(assert (=> b!1556102 (= c!252833 call!102061)))

(declare-fun lt!538862 () Unit!26072)

(declare-fun lt!538857 () Unit!26072)

(assert (=> b!1556102 (= lt!538862 lt!538857)))

(assert (=> b!1556102 (= lt!538790 Nil!16826)))

(assert (=> b!1556102 (= lt!538857 call!102063)))

(declare-fun lt!538855 () Unit!26072)

(declare-fun lt!538879 () Unit!26072)

(assert (=> b!1556102 (= lt!538855 lt!538879)))

(assert (=> b!1556102 call!102059))

(assert (=> b!1556102 (= lt!538879 call!102062)))

(assert (=> b!1556102 (= e!998479 e!998480)))

(declare-fun bm!102058 () Bool)

(assert (=> bm!102058 (= call!102056 (findLongestMatchInner!333 call!102057 lt!538878 (+ (size!13630 Nil!16826) 1) call!102058 lt!538790 (size!13630 lt!538790)))))

(assert (= (and d!461564 c!252835) b!1556090))

(assert (= (and d!461564 (not c!252835)) b!1556092))

(assert (= (and b!1556092 c!252837) b!1556102))

(assert (= (and b!1556092 (not c!252837)) b!1556095))

(assert (= (and b!1556102 c!252833) b!1556093))

(assert (= (and b!1556102 (not c!252833)) b!1556096))

(assert (= (and b!1556095 c!252836) b!1556099))

(assert (= (and b!1556095 (not c!252836)) b!1556089))

(assert (= (and b!1556095 c!252838) b!1556100))

(assert (= (and b!1556095 (not c!252838)) b!1556091))

(assert (= (and b!1556100 c!252834) b!1556094))

(assert (= (and b!1556100 (not c!252834)) b!1556098))

(assert (= (or b!1556100 b!1556091) bm!102054))

(assert (= (or b!1556100 b!1556091) bm!102055))

(assert (= (or b!1556100 b!1556091) bm!102056))

(assert (= (or b!1556100 b!1556091) bm!102058))

(assert (= (or b!1556102 b!1556099) bm!102051))

(assert (= (or b!1556102 b!1556099) bm!102052))

(assert (= (or b!1556102 b!1556095) bm!102057))

(assert (= (or b!1556102 b!1556099) bm!102053))

(assert (= (and d!461564 res!694543) b!1556097))

(assert (= (and b!1556097 (not res!694544)) b!1556101))

(declare-fun m!1828482 () Bool)

(assert (=> bm!102056 m!1828482))

(declare-fun m!1828484 () Bool)

(assert (=> bm!102054 m!1828484))

(assert (=> bm!102057 m!1828472))

(declare-fun m!1828486 () Bool)

(assert (=> bm!102051 m!1828486))

(assert (=> bm!102058 m!1828380))

(declare-fun m!1828488 () Bool)

(assert (=> bm!102058 m!1828488))

(declare-fun m!1828490 () Bool)

(assert (=> b!1556097 m!1828490))

(declare-fun m!1828492 () Bool)

(assert (=> b!1556101 m!1828492))

(assert (=> b!1556101 m!1828384))

(declare-fun m!1828494 () Bool)

(assert (=> d!461564 m!1828494))

(declare-fun m!1828496 () Bool)

(assert (=> d!461564 m!1828496))

(declare-fun m!1828498 () Bool)

(assert (=> d!461564 m!1828498))

(declare-fun m!1828500 () Bool)

(assert (=> d!461564 m!1828500))

(assert (=> d!461564 m!1828464))

(assert (=> d!461564 m!1828496))

(declare-fun m!1828502 () Bool)

(assert (=> d!461564 m!1828502))

(declare-fun m!1828504 () Bool)

(assert (=> d!461564 m!1828504))

(declare-fun m!1828506 () Bool)

(assert (=> d!461564 m!1828506))

(declare-fun m!1828508 () Bool)

(assert (=> b!1556100 m!1828508))

(declare-fun m!1828510 () Bool)

(assert (=> b!1556095 m!1828510))

(declare-fun m!1828512 () Bool)

(assert (=> b!1556095 m!1828512))

(declare-fun m!1828514 () Bool)

(assert (=> b!1556095 m!1828514))

(assert (=> b!1556095 m!1828512))

(assert (=> b!1556095 m!1828502))

(declare-fun m!1828516 () Bool)

(assert (=> b!1556095 m!1828516))

(declare-fun m!1828518 () Bool)

(assert (=> b!1556095 m!1828518))

(assert (=> b!1556095 m!1828380))

(assert (=> b!1556095 m!1828484))

(declare-fun m!1828520 () Bool)

(assert (=> b!1556095 m!1828520))

(declare-fun m!1828522 () Bool)

(assert (=> b!1556095 m!1828522))

(declare-fun m!1828524 () Bool)

(assert (=> b!1556095 m!1828524))

(declare-fun m!1828526 () Bool)

(assert (=> b!1556095 m!1828526))

(assert (=> b!1556095 m!1828384))

(assert (=> b!1556095 m!1828502))

(assert (=> b!1556095 m!1828522))

(declare-fun m!1828528 () Bool)

(assert (=> b!1556095 m!1828528))

(declare-fun m!1828530 () Bool)

(assert (=> bm!102053 m!1828530))

(assert (=> bm!102055 m!1828518))

(declare-fun m!1828532 () Bool)

(assert (=> bm!102052 m!1828532))

(assert (=> b!1555980 d!461564))

(declare-fun bs!388709 () Bool)

(declare-fun d!461566 () Bool)

(assert (= bs!388709 (and d!461566 b!1555968)))

(declare-fun lambda!65884 () Int)

(assert (=> bs!388709 (= lambda!65884 lambda!65881)))

(assert (=> d!461566 true))

(assert (=> d!461566 (< (dynLambda!7463 order!9913 (toChars!4180 (transformation!2949 rule!240))) (dynLambda!7462 order!9911 lambda!65884))))

(assert (=> d!461566 true))

(assert (=> d!461566 (< (dynLambda!7461 order!9909 (toValue!4321 (transformation!2949 rule!240))) (dynLambda!7462 order!9911 lambda!65884))))

(assert (=> d!461566 (= (semiInverseModEq!1113 (toChars!4180 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240))) (Forall!609 lambda!65884))))

(declare-fun bs!388710 () Bool)

(assert (= bs!388710 d!461566))

(declare-fun m!1828534 () Bool)

(assert (=> bs!388710 m!1828534))

(assert (=> b!1555980 d!461566))

(declare-fun d!461568 () Bool)

(assert (=> d!461568 (= (isEmpty!10118 (_1!9502 lt!538788)) ((_ is Nil!16826) (_1!9502 lt!538788)))))

(assert (=> b!1555980 d!461568))

(declare-fun d!461570 () Bool)

(declare-fun e!998483 () Bool)

(assert (=> d!461570 e!998483))

(declare-fun res!694547 () Bool)

(assert (=> d!461570 (=> res!694547 e!998483)))

(assert (=> d!461570 (= res!694547 (isEmpty!10118 (_1!9502 (findLongestMatchInner!333 (regex!2949 rule!240) Nil!16826 (size!13630 Nil!16826) lt!538790 lt!538790 (size!13630 lt!538790)))))))

(declare-fun lt!538884 () Unit!26072)

(declare-fun choose!9286 (Regex!4277 List!16894) Unit!26072)

(assert (=> d!461570 (= lt!538884 (choose!9286 (regex!2949 rule!240) lt!538790))))

(assert (=> d!461570 (validRegex!1712 (regex!2949 rule!240))))

(assert (=> d!461570 (= (longestMatchIsAcceptedByMatchOrIsEmpty!317 (regex!2949 rule!240) lt!538790) lt!538884)))

(declare-fun b!1556109 () Bool)

(assert (=> b!1556109 (= e!998483 (matchR!1879 (regex!2949 rule!240) (_1!9502 (findLongestMatchInner!333 (regex!2949 rule!240) Nil!16826 (size!13630 Nil!16826) lt!538790 lt!538790 (size!13630 lt!538790)))))))

(assert (= (and d!461570 (not res!694547)) b!1556109))

(declare-fun m!1828536 () Bool)

(assert (=> d!461570 m!1828536))

(assert (=> d!461570 m!1828464))

(declare-fun m!1828538 () Bool)

(assert (=> d!461570 m!1828538))

(assert (=> d!461570 m!1828384))

(assert (=> d!461570 m!1828380))

(assert (=> d!461570 m!1828388))

(assert (=> d!461570 m!1828384))

(assert (=> d!461570 m!1828380))

(assert (=> b!1556109 m!1828384))

(assert (=> b!1556109 m!1828380))

(assert (=> b!1556109 m!1828384))

(assert (=> b!1556109 m!1828380))

(assert (=> b!1556109 m!1828388))

(declare-fun m!1828540 () Bool)

(assert (=> b!1556109 m!1828540))

(assert (=> b!1555980 d!461570))

(declare-fun d!461572 () Bool)

(declare-fun e!998486 () Bool)

(assert (=> d!461572 e!998486))

(declare-fun res!694550 () Bool)

(assert (=> d!461572 (=> (not res!694550) (not e!998486))))

(assert (=> d!461572 (= res!694550 (semiInverseModEq!1113 (toChars!4180 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240))))))

(declare-fun Unit!26077 () Unit!26072)

(assert (=> d!461572 (= (lemmaInv!427 (transformation!2949 rule!240)) Unit!26077)))

(declare-fun b!1556112 () Bool)

(assert (=> b!1556112 (= e!998486 (equivClasses!1057 (toChars!4180 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240))))))

(assert (= (and d!461572 res!694550) b!1556112))

(assert (=> d!461572 m!1828376))

(assert (=> b!1556112 m!1828476))

(assert (=> b!1555980 d!461572))

(declare-fun d!461574 () Bool)

(declare-fun c!252841 () Bool)

(assert (=> d!461574 (= c!252841 ((_ is Node!5567) (c!252806 (totalInput!2466 cacheFurthestNullable!103))))))

(declare-fun e!998491 () Bool)

(assert (=> d!461574 (= (inv!22103 (c!252806 (totalInput!2466 cacheFurthestNullable!103))) e!998491)))

(declare-fun b!1556119 () Bool)

(declare-fun inv!22109 (Conc!5567) Bool)

(assert (=> b!1556119 (= e!998491 (inv!22109 (c!252806 (totalInput!2466 cacheFurthestNullable!103))))))

(declare-fun b!1556120 () Bool)

(declare-fun e!998492 () Bool)

(assert (=> b!1556120 (= e!998491 e!998492)))

(declare-fun res!694553 () Bool)

(assert (=> b!1556120 (= res!694553 (not ((_ is Leaf!8251) (c!252806 (totalInput!2466 cacheFurthestNullable!103)))))))

(assert (=> b!1556120 (=> res!694553 e!998492)))

(declare-fun b!1556121 () Bool)

(declare-fun inv!22110 (Conc!5567) Bool)

(assert (=> b!1556121 (= e!998492 (inv!22110 (c!252806 (totalInput!2466 cacheFurthestNullable!103))))))

(assert (= (and d!461574 c!252841) b!1556119))

(assert (= (and d!461574 (not c!252841)) b!1556120))

(assert (= (and b!1556120 (not res!694553)) b!1556121))

(declare-fun m!1828542 () Bool)

(assert (=> b!1556119 m!1828542))

(declare-fun m!1828544 () Bool)

(assert (=> b!1556121 m!1828544))

(assert (=> b!1555964 d!461574))

(declare-fun d!461576 () Bool)

(declare-fun dynLambda!7464 (Int BalanceConc!11076) TokenValue!3039)

(assert (=> d!461576 (= (apply!4110 (transformation!2949 rule!240) lt!538782) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) lt!538782))))

(declare-fun b_lambda!48855 () Bool)

(assert (=> (not b_lambda!48855) (not d!461576)))

(declare-fun t!141371 () Bool)

(declare-fun tb!87321 () Bool)

(assert (=> (and b!1555976 (= (toValue!4321 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240))) t!141371) tb!87321))

(declare-fun result!105436 () Bool)

(declare-fun inv!21 (TokenValue!3039) Bool)

(assert (=> tb!87321 (= result!105436 (inv!21 (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) lt!538782)))))

(declare-fun m!1828546 () Bool)

(assert (=> tb!87321 m!1828546))

(assert (=> d!461576 t!141371))

(declare-fun b_and!108565 () Bool)

(assert (= b_and!108551 (and (=> t!141371 result!105436) b_and!108565)))

(declare-fun m!1828548 () Bool)

(assert (=> d!461576 m!1828548))

(assert (=> b!1555975 d!461576))

(declare-fun b!1556130 () Bool)

(declare-fun e!998500 () Bool)

(assert (=> b!1556130 (= e!998500 true)))

(declare-fun d!461578 () Bool)

(assert (=> d!461578 e!998500))

(assert (= d!461578 b!1556130))

(declare-fun lambda!65887 () Int)

(declare-fun order!9915 () Int)

(declare-fun dynLambda!7465 (Int Int) Int)

(assert (=> b!1556130 (< (dynLambda!7461 order!9909 (toValue!4321 (transformation!2949 rule!240))) (dynLambda!7465 order!9915 lambda!65887))))

(assert (=> b!1556130 (< (dynLambda!7463 order!9913 (toChars!4180 (transformation!2949 rule!240))) (dynLambda!7465 order!9915 lambda!65887))))

(assert (=> d!461578 (= (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) (_1!9499 (_1!9500 lt!538776))) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) lt!538782))))

(declare-fun lt!538887 () Unit!26072)

(declare-fun Forall2of!42 (Int BalanceConc!11076 BalanceConc!11076) Unit!26072)

(assert (=> d!461578 (= lt!538887 (Forall2of!42 lambda!65887 (_1!9499 (_1!9500 lt!538776)) lt!538782))))

(assert (=> d!461578 (= (list!6495 (_1!9499 (_1!9500 lt!538776))) (list!6495 lt!538782))))

(assert (=> d!461578 (= (lemmaEqSameImage!149 (transformation!2949 rule!240) (_1!9499 (_1!9500 lt!538776)) lt!538782) lt!538887)))

(declare-fun b_lambda!48857 () Bool)

(assert (=> (not b_lambda!48857) (not d!461578)))

(declare-fun t!141373 () Bool)

(declare-fun tb!87323 () Bool)

(assert (=> (and b!1555976 (= (toValue!4321 (transformation!2949 rule!240)) (toValue!4321 (transformation!2949 rule!240))) t!141373) tb!87323))

(declare-fun result!105440 () Bool)

(assert (=> tb!87323 (= result!105440 (inv!21 (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) (_1!9499 (_1!9500 lt!538776)))))))

(declare-fun m!1828550 () Bool)

(assert (=> tb!87323 m!1828550))

(assert (=> d!461578 t!141373))

(declare-fun b_and!108567 () Bool)

(assert (= b_and!108565 (and (=> t!141373 result!105440) b_and!108567)))

(declare-fun b_lambda!48859 () Bool)

(assert (=> (not b_lambda!48859) (not d!461578)))

(assert (=> d!461578 t!141371))

(declare-fun b_and!108569 () Bool)

(assert (= b_and!108567 (and (=> t!141371 result!105436) b_and!108569)))

(assert (=> d!461578 m!1828548))

(declare-fun m!1828552 () Bool)

(assert (=> d!461578 m!1828552))

(declare-fun m!1828554 () Bool)

(assert (=> d!461578 m!1828554))

(assert (=> d!461578 m!1828352))

(assert (=> d!461578 m!1828406))

(assert (=> b!1555975 d!461578))

(declare-fun d!461580 () Bool)

(declare-fun c!252842 () Bool)

(assert (=> d!461580 (= c!252842 ((_ is Node!5567) (c!252806 input!1676)))))

(declare-fun e!998502 () Bool)

(assert (=> d!461580 (= (inv!22103 (c!252806 input!1676)) e!998502)))

(declare-fun b!1556131 () Bool)

(assert (=> b!1556131 (= e!998502 (inv!22109 (c!252806 input!1676)))))

(declare-fun b!1556132 () Bool)

(declare-fun e!998503 () Bool)

(assert (=> b!1556132 (= e!998502 e!998503)))

(declare-fun res!694556 () Bool)

(assert (=> b!1556132 (= res!694556 (not ((_ is Leaf!8251) (c!252806 input!1676))))))

(assert (=> b!1556132 (=> res!694556 e!998503)))

(declare-fun b!1556133 () Bool)

(assert (=> b!1556133 (= e!998503 (inv!22110 (c!252806 input!1676)))))

(assert (= (and d!461580 c!252842) b!1556131))

(assert (= (and d!461580 (not c!252842)) b!1556132))

(assert (= (and b!1556132 (not res!694556)) b!1556133))

(declare-fun m!1828556 () Bool)

(assert (=> b!1556131 m!1828556))

(declare-fun m!1828558 () Bool)

(assert (=> b!1556133 m!1828558))

(assert (=> b!1555955 d!461580))

(declare-fun d!461582 () Bool)

(assert (=> d!461582 (= (get!4849 lt!538784) (v!23676 lt!538784))))

(assert (=> b!1555984 d!461582))

(declare-fun d!461584 () Bool)

(assert (=> d!461584 (= (inv!22104 (totalInput!2466 cacheFurthestNullable!103)) (isBalanced!1644 (c!252806 (totalInput!2466 cacheFurthestNullable!103))))))

(declare-fun bs!388711 () Bool)

(assert (= bs!388711 d!461584))

(declare-fun m!1828560 () Bool)

(assert (=> bs!388711 m!1828560))

(assert (=> b!1555954 d!461584))

(declare-fun d!461586 () Bool)

(declare-fun e!998506 () Bool)

(assert (=> d!461586 e!998506))

(declare-fun res!694559 () Bool)

(assert (=> d!461586 (=> res!694559 e!998506)))

(declare-fun lt!538890 () Bool)

(assert (=> d!461586 (= res!694559 (not lt!538890))))

(declare-fun drop!786 (List!16894 Int) List!16894)

(assert (=> d!461586 (= lt!538890 (= lt!538790 (drop!786 (list!6495 totalInput!568) (- (size!13630 (list!6495 totalInput!568)) (size!13630 lt!538790)))))))

(assert (=> d!461586 (= (isSuffix!376 lt!538790 (list!6495 totalInput!568)) lt!538890)))

(declare-fun b!1556136 () Bool)

(assert (=> b!1556136 (= e!998506 (>= (size!13630 (list!6495 totalInput!568)) (size!13630 lt!538790)))))

(assert (= (and d!461586 (not res!694559)) b!1556136))

(assert (=> d!461586 m!1828368))

(declare-fun m!1828562 () Bool)

(assert (=> d!461586 m!1828562))

(assert (=> d!461586 m!1828380))

(assert (=> d!461586 m!1828368))

(declare-fun m!1828564 () Bool)

(assert (=> d!461586 m!1828564))

(assert (=> b!1556136 m!1828368))

(assert (=> b!1556136 m!1828562))

(assert (=> b!1556136 m!1828380))

(assert (=> b!1555963 d!461586))

(declare-fun d!461588 () Bool)

(declare-fun list!6496 (Conc!5567) List!16894)

(assert (=> d!461588 (= (list!6495 totalInput!568) (list!6496 (c!252806 totalInput!568)))))

(declare-fun bs!388712 () Bool)

(assert (= bs!388712 d!461588))

(declare-fun m!1828566 () Bool)

(assert (=> bs!388712 m!1828566))

(assert (=> b!1555963 d!461588))

(declare-fun d!461590 () Bool)

(assert (=> d!461590 (= (list!6495 input!1676) (list!6496 (c!252806 input!1676)))))

(declare-fun bs!388713 () Bool)

(assert (= bs!388713 d!461590))

(declare-fun m!1828568 () Bool)

(assert (=> bs!388713 m!1828568))

(assert (=> b!1555963 d!461590))

(declare-fun d!461592 () Bool)

(declare-fun c!252843 () Bool)

(assert (=> d!461592 (= c!252843 ((_ is Node!5567) (c!252806 totalInput!568)))))

(declare-fun e!998507 () Bool)

(assert (=> d!461592 (= (inv!22103 (c!252806 totalInput!568)) e!998507)))

(declare-fun b!1556137 () Bool)

(assert (=> b!1556137 (= e!998507 (inv!22109 (c!252806 totalInput!568)))))

(declare-fun b!1556138 () Bool)

(declare-fun e!998508 () Bool)

(assert (=> b!1556138 (= e!998507 e!998508)))

(declare-fun res!694560 () Bool)

(assert (=> b!1556138 (= res!694560 (not ((_ is Leaf!8251) (c!252806 totalInput!568))))))

(assert (=> b!1556138 (=> res!694560 e!998508)))

(declare-fun b!1556139 () Bool)

(assert (=> b!1556139 (= e!998508 (inv!22110 (c!252806 totalInput!568)))))

(assert (= (and d!461592 c!252843) b!1556137))

(assert (= (and d!461592 (not c!252843)) b!1556138))

(assert (= (and b!1556138 (not res!694560)) b!1556139))

(declare-fun m!1828570 () Bool)

(assert (=> b!1556137 m!1828570))

(declare-fun m!1828572 () Bool)

(assert (=> b!1556139 m!1828572))

(assert (=> b!1555948 d!461592))

(declare-fun d!461594 () Bool)

(declare-fun lt!538893 () Int)

(assert (=> d!461594 (= lt!538893 (size!13630 (list!6495 (_1!9499 (_1!9500 lt!538776)))))))

(declare-fun size!13631 (Conc!5567) Int)

(assert (=> d!461594 (= lt!538893 (size!13631 (c!252806 (_1!9499 (_1!9500 lt!538776)))))))

(assert (=> d!461594 (= (size!13629 (_1!9499 (_1!9500 lt!538776))) lt!538893)))

(declare-fun bs!388714 () Bool)

(assert (= bs!388714 d!461594))

(assert (=> bs!388714 m!1828406))

(assert (=> bs!388714 m!1828406))

(declare-fun m!1828574 () Bool)

(assert (=> bs!388714 m!1828574))

(declare-fun m!1828576 () Bool)

(assert (=> bs!388714 m!1828576))

(assert (=> b!1555957 d!461594))

(declare-fun d!461596 () Bool)

(declare-fun isEmpty!10119 (Option!3037) Bool)

(assert (=> d!461596 (= (isDefined!2440 (Some!3036 (tuple2!16309 (Token!5475 lt!538785 rule!240 lt!538781 lt!538780) (_2!9499 (_1!9500 lt!538776))))) (not (isEmpty!10119 (Some!3036 (tuple2!16309 (Token!5475 lt!538785 rule!240 lt!538781 lt!538780) (_2!9499 (_1!9500 lt!538776)))))))))

(declare-fun bs!388715 () Bool)

(assert (= bs!388715 d!461596))

(declare-fun m!1828578 () Bool)

(assert (=> bs!388715 m!1828578))

(assert (=> b!1555957 d!461596))

(declare-fun d!461598 () Bool)

(assert (=> d!461598 (= (list!6495 (_1!9499 (_1!9500 lt!538776))) (list!6496 (c!252806 (_1!9499 (_1!9500 lt!538776)))))))

(declare-fun bs!388716 () Bool)

(assert (= bs!388716 d!461598))

(declare-fun m!1828580 () Bool)

(assert (=> bs!388716 m!1828580))

(assert (=> b!1555957 d!461598))

(declare-fun d!461600 () Bool)

(assert (=> d!461600 (= (apply!4110 (transformation!2949 rule!240) (_1!9499 (_1!9500 lt!538776))) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) (_1!9499 (_1!9500 lt!538776))))))

(declare-fun b_lambda!48861 () Bool)

(assert (=> (not b_lambda!48861) (not d!461600)))

(assert (=> d!461600 t!141373))

(declare-fun b_and!108571 () Bool)

(assert (= b_and!108569 (and (=> t!141373 result!105440) b_and!108571)))

(assert (=> d!461600 m!1828552))

(assert (=> b!1555957 d!461600))

(declare-fun d!461602 () Bool)

(declare-fun dynLambda!7466 (Int BalanceConc!11076) Bool)

(assert (=> d!461602 (dynLambda!7466 lambda!65881 lt!538782)))

(declare-fun lt!538896 () Unit!26072)

(declare-fun choose!9287 (Int BalanceConc!11076) Unit!26072)

(assert (=> d!461602 (= lt!538896 (choose!9287 lambda!65881 lt!538782))))

(assert (=> d!461602 (Forall!609 lambda!65881)))

(assert (=> d!461602 (= (ForallOf!211 lambda!65881 lt!538782) lt!538896)))

(declare-fun b_lambda!48863 () Bool)

(assert (=> (not b_lambda!48863) (not d!461602)))

(declare-fun bs!388717 () Bool)

(assert (= bs!388717 d!461602))

(declare-fun m!1828582 () Bool)

(assert (=> bs!388717 m!1828582))

(declare-fun m!1828584 () Bool)

(assert (=> bs!388717 m!1828584))

(assert (=> bs!388717 m!1828438))

(assert (=> b!1555957 d!461602))

(declare-fun d!461604 () Bool)

(assert (=> d!461604 (dynLambda!7466 lambda!65881 (_1!9499 (_1!9500 lt!538776)))))

(declare-fun lt!538897 () Unit!26072)

(assert (=> d!461604 (= lt!538897 (choose!9287 lambda!65881 (_1!9499 (_1!9500 lt!538776))))))

(assert (=> d!461604 (Forall!609 lambda!65881)))

(assert (=> d!461604 (= (ForallOf!211 lambda!65881 (_1!9499 (_1!9500 lt!538776))) lt!538897)))

(declare-fun b_lambda!48865 () Bool)

(assert (=> (not b_lambda!48865) (not d!461604)))

(declare-fun bs!388718 () Bool)

(assert (= bs!388718 d!461604))

(declare-fun m!1828586 () Bool)

(assert (=> bs!388718 m!1828586))

(declare-fun m!1828588 () Bool)

(assert (=> bs!388718 m!1828588))

(assert (=> bs!388718 m!1828438))

(assert (=> b!1555957 d!461604))

(declare-fun d!461606 () Bool)

(declare-fun isEmpty!10120 (Option!3036) Bool)

(assert (=> d!461606 (= (isDefined!2439 lt!538784) (not (isEmpty!10120 lt!538784)))))

(declare-fun bs!388719 () Bool)

(assert (= bs!388719 d!461606))

(declare-fun m!1828590 () Bool)

(assert (=> bs!388719 m!1828590))

(assert (=> b!1555957 d!461606))

(declare-fun b!1556158 () Bool)

(declare-fun res!694576 () Bool)

(declare-fun e!998518 () Bool)

(assert (=> b!1556158 (=> (not res!694576) (not e!998518))))

(declare-fun lt!538910 () Option!3036)

(assert (=> b!1556158 (= res!694576 (= (rule!4731 (_1!9498 (get!4849 lt!538910))) rule!240))))

(declare-fun b!1556159 () Bool)

(declare-fun e!998519 () Bool)

(assert (=> b!1556159 (= e!998519 e!998518)))

(declare-fun res!694577 () Bool)

(assert (=> b!1556159 (=> (not res!694577) (not e!998518))))

(declare-fun charsOf!1647 (Token!5474) BalanceConc!11076)

(assert (=> b!1556159 (= res!694577 (matchR!1879 (regex!2949 rule!240) (list!6495 (charsOf!1647 (_1!9498 (get!4849 lt!538910))))))))

(declare-fun b!1556160 () Bool)

(declare-fun res!694575 () Bool)

(assert (=> b!1556160 (=> (not res!694575) (not e!998518))))

(assert (=> b!1556160 (= res!694575 (< (size!13630 (_2!9498 (get!4849 lt!538910))) (size!13630 lt!538790)))))

(declare-fun b!1556161 () Bool)

(declare-fun e!998520 () Bool)

(assert (=> b!1556161 (= e!998520 (matchR!1879 (regex!2949 rule!240) (_1!9502 (findLongestMatchInner!333 (regex!2949 rule!240) Nil!16826 (size!13630 Nil!16826) lt!538790 lt!538790 (size!13630 lt!538790)))))))

(declare-fun d!461608 () Bool)

(assert (=> d!461608 e!998519))

(declare-fun res!694580 () Bool)

(assert (=> d!461608 (=> res!694580 e!998519)))

(assert (=> d!461608 (= res!694580 (isEmpty!10120 lt!538910))))

(declare-fun e!998517 () Option!3036)

(assert (=> d!461608 (= lt!538910 e!998517)))

(declare-fun c!252846 () Bool)

(declare-fun lt!538911 () tuple2!16310)

(assert (=> d!461608 (= c!252846 (isEmpty!10118 (_1!9502 lt!538911)))))

(declare-fun findLongestMatch!262 (Regex!4277 List!16894) tuple2!16310)

(assert (=> d!461608 (= lt!538911 (findLongestMatch!262 (regex!2949 rule!240) lt!538790))))

(assert (=> d!461608 (ruleValid!684 thiss!16438 rule!240)))

(assert (=> d!461608 (= (maxPrefixOneRule!703 thiss!16438 rule!240 lt!538790) lt!538910)))

(declare-fun b!1556162 () Bool)

(assert (=> b!1556162 (= e!998517 (Some!3035 (tuple2!16305 (Token!5475 (apply!4110 (transformation!2949 rule!240) (seqFromList!1774 (_1!9502 lt!538911))) rule!240 (size!13629 (seqFromList!1774 (_1!9502 lt!538911))) (_1!9502 lt!538911)) (_2!9502 lt!538911))))))

(declare-fun lt!538909 () Unit!26072)

(assert (=> b!1556162 (= lt!538909 (longestMatchIsAcceptedByMatchOrIsEmpty!317 (regex!2949 rule!240) lt!538790))))

(declare-fun res!694581 () Bool)

(assert (=> b!1556162 (= res!694581 (isEmpty!10118 (_1!9502 (findLongestMatchInner!333 (regex!2949 rule!240) Nil!16826 (size!13630 Nil!16826) lt!538790 lt!538790 (size!13630 lt!538790)))))))

(assert (=> b!1556162 (=> res!694581 e!998520)))

(assert (=> b!1556162 e!998520))

(declare-fun lt!538908 () Unit!26072)

(assert (=> b!1556162 (= lt!538908 lt!538909)))

(declare-fun lt!538912 () Unit!26072)

(declare-fun lemmaSemiInverse!366 (TokenValueInjection!5738 BalanceConc!11076) Unit!26072)

(assert (=> b!1556162 (= lt!538912 (lemmaSemiInverse!366 (transformation!2949 rule!240) (seqFromList!1774 (_1!9502 lt!538911))))))

(declare-fun b!1556163 () Bool)

(declare-fun res!694579 () Bool)

(assert (=> b!1556163 (=> (not res!694579) (not e!998518))))

(assert (=> b!1556163 (= res!694579 (= (++!4415 (list!6495 (charsOf!1647 (_1!9498 (get!4849 lt!538910)))) (_2!9498 (get!4849 lt!538910))) lt!538790))))

(declare-fun b!1556164 () Bool)

(assert (=> b!1556164 (= e!998518 (= (size!13628 (_1!9498 (get!4849 lt!538910))) (size!13630 (originalCharacters!3768 (_1!9498 (get!4849 lt!538910))))))))

(declare-fun b!1556165 () Bool)

(declare-fun res!694578 () Bool)

(assert (=> b!1556165 (=> (not res!694578) (not e!998518))))

(assert (=> b!1556165 (= res!694578 (= (value!93683 (_1!9498 (get!4849 lt!538910))) (apply!4110 (transformation!2949 (rule!4731 (_1!9498 (get!4849 lt!538910)))) (seqFromList!1774 (originalCharacters!3768 (_1!9498 (get!4849 lt!538910)))))))))

(declare-fun b!1556166 () Bool)

(assert (=> b!1556166 (= e!998517 None!3035)))

(assert (= (and d!461608 c!252846) b!1556166))

(assert (= (and d!461608 (not c!252846)) b!1556162))

(assert (= (and b!1556162 (not res!694581)) b!1556161))

(assert (= (and d!461608 (not res!694580)) b!1556159))

(assert (= (and b!1556159 res!694577) b!1556163))

(assert (= (and b!1556163 res!694579) b!1556160))

(assert (= (and b!1556160 res!694575) b!1556158))

(assert (= (and b!1556158 res!694576) b!1556165))

(assert (= (and b!1556165 res!694578) b!1556164))

(declare-fun m!1828592 () Bool)

(assert (=> b!1556165 m!1828592))

(declare-fun m!1828594 () Bool)

(assert (=> b!1556165 m!1828594))

(assert (=> b!1556165 m!1828594))

(declare-fun m!1828596 () Bool)

(assert (=> b!1556165 m!1828596))

(assert (=> b!1556164 m!1828592))

(declare-fun m!1828598 () Bool)

(assert (=> b!1556164 m!1828598))

(declare-fun m!1828600 () Bool)

(assert (=> b!1556162 m!1828600))

(declare-fun m!1828602 () Bool)

(assert (=> b!1556162 m!1828602))

(assert (=> b!1556162 m!1828384))

(assert (=> b!1556162 m!1828380))

(assert (=> b!1556162 m!1828388))

(assert (=> b!1556162 m!1828600))

(declare-fun m!1828604 () Bool)

(assert (=> b!1556162 m!1828604))

(assert (=> b!1556162 m!1828384))

(assert (=> b!1556162 m!1828386))

(assert (=> b!1556162 m!1828380))

(assert (=> b!1556162 m!1828600))

(declare-fun m!1828606 () Bool)

(assert (=> b!1556162 m!1828606))

(assert (=> b!1556162 m!1828538))

(assert (=> b!1556162 m!1828600))

(assert (=> b!1556160 m!1828592))

(declare-fun m!1828608 () Bool)

(assert (=> b!1556160 m!1828608))

(assert (=> b!1556160 m!1828380))

(assert (=> b!1556161 m!1828384))

(assert (=> b!1556161 m!1828380))

(assert (=> b!1556161 m!1828384))

(assert (=> b!1556161 m!1828380))

(assert (=> b!1556161 m!1828388))

(assert (=> b!1556161 m!1828540))

(assert (=> b!1556159 m!1828592))

(declare-fun m!1828610 () Bool)

(assert (=> b!1556159 m!1828610))

(assert (=> b!1556159 m!1828610))

(declare-fun m!1828612 () Bool)

(assert (=> b!1556159 m!1828612))

(assert (=> b!1556159 m!1828612))

(declare-fun m!1828614 () Bool)

(assert (=> b!1556159 m!1828614))

(declare-fun m!1828616 () Bool)

(assert (=> d!461608 m!1828616))

(declare-fun m!1828618 () Bool)

(assert (=> d!461608 m!1828618))

(declare-fun m!1828620 () Bool)

(assert (=> d!461608 m!1828620))

(assert (=> d!461608 m!1828354))

(assert (=> b!1556158 m!1828592))

(assert (=> b!1556163 m!1828592))

(assert (=> b!1556163 m!1828610))

(assert (=> b!1556163 m!1828610))

(assert (=> b!1556163 m!1828612))

(assert (=> b!1556163 m!1828612))

(declare-fun m!1828622 () Bool)

(assert (=> b!1556163 m!1828622))

(assert (=> b!1555957 d!461608))

(declare-fun d!461610 () Bool)

(declare-fun fromListB!762 (List!16894) BalanceConc!11076)

(assert (=> d!461610 (= (seqFromList!1774 lt!538780) (fromListB!762 lt!538780))))

(declare-fun bs!388720 () Bool)

(assert (= bs!388720 d!461610))

(declare-fun m!1828624 () Bool)

(assert (=> bs!388720 m!1828624))

(assert (=> b!1555957 d!461610))

(declare-fun d!461612 () Bool)

(assert (=> d!461612 (= (list!6495 lt!538782) (list!6496 (c!252806 lt!538782)))))

(declare-fun bs!388721 () Bool)

(assert (= bs!388721 d!461612))

(declare-fun m!1828626 () Bool)

(assert (=> bs!388721 m!1828626))

(assert (=> b!1555956 d!461612))

(declare-fun d!461614 () Bool)

(declare-fun lt!538915 () Bool)

(assert (=> d!461614 (= lt!538915 (isEmpty!10118 (list!6495 (_1!9499 (_1!9500 lt!538776)))))))

(declare-fun isEmpty!10121 (Conc!5567) Bool)

(assert (=> d!461614 (= lt!538915 (isEmpty!10121 (c!252806 (_1!9499 (_1!9500 lt!538776)))))))

(assert (=> d!461614 (= (isEmpty!10117 (_1!9499 (_1!9500 lt!538776))) lt!538915)))

(declare-fun bs!388722 () Bool)

(assert (= bs!388722 d!461614))

(assert (=> bs!388722 m!1828406))

(assert (=> bs!388722 m!1828406))

(declare-fun m!1828628 () Bool)

(assert (=> bs!388722 m!1828628))

(declare-fun m!1828630 () Bool)

(assert (=> bs!388722 m!1828630))

(assert (=> b!1555965 d!461614))

(declare-fun b!1556177 () Bool)

(declare-fun res!694593 () Bool)

(declare-fun e!998523 () Bool)

(assert (=> b!1556177 (=> (not res!694593) (not e!998523))))

(declare-fun lt!538918 () tuple4!894)

(assert (=> b!1556177 (= res!694593 (valid!1451 (_4!447 lt!538918)))))

(declare-fun b!1556175 () Bool)

(declare-fun res!694591 () Bool)

(assert (=> b!1556175 (=> (not res!694591) (not e!998523))))

(assert (=> b!1556175 (= res!694591 (valid!1449 (_3!1346 lt!538918)))))

(declare-fun b!1556178 () Bool)

(assert (=> b!1556178 (= e!998523 (= (totalInput!2466 (_4!447 lt!538918)) totalInput!568))))

(declare-fun b!1556176 () Bool)

(declare-fun res!694590 () Bool)

(assert (=> b!1556176 (=> (not res!694590) (not e!998523))))

(assert (=> b!1556176 (= res!694590 (valid!1450 (_2!9500 lt!538918)))))

(declare-fun d!461616 () Bool)

(assert (=> d!461616 e!998523))

(declare-fun res!694592 () Bool)

(assert (=> d!461616 (=> (not res!694592) (not e!998523))))

(assert (=> d!461616 (= res!694592 (= (tuple2!16311 (list!6495 (_1!9499 (_1!9500 lt!538918))) (list!6495 (_2!9499 (_1!9500 lt!538918)))) (findLongestMatch!262 (regex!2949 rule!240) (list!6495 input!1676))))))

(declare-fun choose!9288 (Regex!4277 BalanceConc!11076 BalanceConc!11076 CacheUp!1062 CacheDown!1068 CacheFurthestNullable!490) tuple4!894)

(assert (=> d!461616 (= lt!538918 (choose!9288 (regex!2949 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!461616 (validRegex!1712 (regex!2949 rule!240))))

(assert (=> d!461616 (= (findLongestMatchWithZipperSequenceV3Mem!50 (regex!2949 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!538918)))

(assert (= (and d!461616 res!694592) b!1556175))

(assert (= (and b!1556175 res!694591) b!1556176))

(assert (= (and b!1556176 res!694590) b!1556177))

(assert (= (and b!1556177 res!694593) b!1556178))

(declare-fun m!1828632 () Bool)

(assert (=> b!1556177 m!1828632))

(declare-fun m!1828634 () Bool)

(assert (=> b!1556175 m!1828634))

(declare-fun m!1828636 () Bool)

(assert (=> b!1556176 m!1828636))

(declare-fun m!1828638 () Bool)

(assert (=> d!461616 m!1828638))

(assert (=> d!461616 m!1828464))

(assert (=> d!461616 m!1828372))

(assert (=> d!461616 m!1828372))

(declare-fun m!1828640 () Bool)

(assert (=> d!461616 m!1828640))

(declare-fun m!1828642 () Bool)

(assert (=> d!461616 m!1828642))

(declare-fun m!1828644 () Bool)

(assert (=> d!461616 m!1828644))

(assert (=> b!1555965 d!461616))

(declare-fun b!1556185 () Bool)

(declare-fun e!998528 () Bool)

(declare-fun setRes!10880 () Bool)

(declare-fun tp!456238 () Bool)

(assert (=> b!1556185 (= e!998528 (and setRes!10880 tp!456238))))

(declare-fun condSetEmpty!10880 () Bool)

(assert (=> b!1556185 (= condSetEmpty!10880 (= (_1!9496 (_1!9497 (h!22231 (zeroValue!2061 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10880 () Bool)

(assert (=> setIsEmpty!10880 setRes!10880))

(declare-fun b!1556186 () Bool)

(declare-fun e!998529 () Bool)

(declare-fun tp!456237 () Bool)

(assert (=> b!1556186 (= e!998529 tp!456237)))

(assert (=> b!1555951 (= tp!456209 e!998528)))

(declare-fun tp!456236 () Bool)

(declare-fun setElem!10880 () Context!1590)

(declare-fun setNonEmpty!10880 () Bool)

(declare-fun inv!22111 (Context!1590) Bool)

(assert (=> setNonEmpty!10880 (= setRes!10880 (and tp!456236 (inv!22111 setElem!10880) e!998529))))

(declare-fun setRest!10880 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10880 (= (_1!9496 (_1!9497 (h!22231 (zeroValue!2061 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10880 true) setRest!10880))))

(assert (= (and b!1556185 condSetEmpty!10880) setIsEmpty!10880))

(assert (= (and b!1556185 (not condSetEmpty!10880)) setNonEmpty!10880))

(assert (= setNonEmpty!10880 b!1556186))

(assert (= (and b!1555951 ((_ is Cons!16830) (zeroValue!2061 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103)))))))) b!1556185))

(declare-fun m!1828646 () Bool)

(assert (=> setNonEmpty!10880 m!1828646))

(declare-fun b!1556187 () Bool)

(declare-fun e!998530 () Bool)

(declare-fun setRes!10881 () Bool)

(declare-fun tp!456241 () Bool)

(assert (=> b!1556187 (= e!998530 (and setRes!10881 tp!456241))))

(declare-fun condSetEmpty!10881 () Bool)

(assert (=> b!1556187 (= condSetEmpty!10881 (= (_1!9496 (_1!9497 (h!22231 (minValue!2061 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10881 () Bool)

(assert (=> setIsEmpty!10881 setRes!10881))

(declare-fun b!1556188 () Bool)

(declare-fun e!998531 () Bool)

(declare-fun tp!456240 () Bool)

(assert (=> b!1556188 (= e!998531 tp!456240)))

(assert (=> b!1555951 (= tp!456207 e!998530)))

(declare-fun setNonEmpty!10881 () Bool)

(declare-fun tp!456239 () Bool)

(declare-fun setElem!10881 () Context!1590)

(assert (=> setNonEmpty!10881 (= setRes!10881 (and tp!456239 (inv!22111 setElem!10881) e!998531))))

(declare-fun setRest!10881 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10881 (= (_1!9496 (_1!9497 (h!22231 (minValue!2061 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10881 true) setRest!10881))))

(assert (= (and b!1556187 condSetEmpty!10881) setIsEmpty!10881))

(assert (= (and b!1556187 (not condSetEmpty!10881)) setNonEmpty!10881))

(assert (= setNonEmpty!10881 b!1556188))

(assert (= (and b!1555951 ((_ is Cons!16830) (minValue!2061 (v!23674 (underlying!3817 (v!23675 (underlying!3818 (cache!2129 cacheFurthestNullable!103)))))))) b!1556187))

(declare-fun m!1828648 () Bool)

(assert (=> setNonEmpty!10881 m!1828648))

(declare-fun b!1556189 () Bool)

(declare-fun e!998532 () Bool)

(declare-fun setRes!10882 () Bool)

(declare-fun tp!456244 () Bool)

(assert (=> b!1556189 (= e!998532 (and setRes!10882 tp!456244))))

(declare-fun condSetEmpty!10882 () Bool)

(assert (=> b!1556189 (= condSetEmpty!10882 (= (_1!9496 (_1!9497 (h!22231 mapDefault!8390))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10882 () Bool)

(assert (=> setIsEmpty!10882 setRes!10882))

(declare-fun b!1556190 () Bool)

(declare-fun e!998533 () Bool)

(declare-fun tp!456243 () Bool)

(assert (=> b!1556190 (= e!998533 tp!456243)))

(assert (=> b!1555960 (= tp!456228 e!998532)))

(declare-fun setNonEmpty!10882 () Bool)

(declare-fun setElem!10882 () Context!1590)

(declare-fun tp!456242 () Bool)

(assert (=> setNonEmpty!10882 (= setRes!10882 (and tp!456242 (inv!22111 setElem!10882) e!998533))))

(declare-fun setRest!10882 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10882 (= (_1!9496 (_1!9497 (h!22231 mapDefault!8390))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10882 true) setRest!10882))))

(assert (= (and b!1556189 condSetEmpty!10882) setIsEmpty!10882))

(assert (= (and b!1556189 (not condSetEmpty!10882)) setNonEmpty!10882))

(assert (= setNonEmpty!10882 b!1556190))

(assert (= (and b!1555960 ((_ is Cons!16830) mapDefault!8390)) b!1556189))

(declare-fun m!1828650 () Bool)

(assert (=> setNonEmpty!10882 m!1828650))

(declare-fun b!1556199 () Bool)

(declare-fun e!998540 () Bool)

(declare-fun tp!456255 () Bool)

(assert (=> b!1556199 (= e!998540 tp!456255)))

(declare-fun setElem!10885 () Context!1590)

(declare-fun setNonEmpty!10885 () Bool)

(declare-fun tp!456256 () Bool)

(declare-fun setRes!10885 () Bool)

(declare-fun e!998542 () Bool)

(assert (=> setNonEmpty!10885 (= setRes!10885 (and tp!456256 (inv!22111 setElem!10885) e!998542))))

(declare-fun setRest!10885 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10885 (= (_2!9495 (h!22230 (zeroValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10885 true) setRest!10885))))

(declare-fun setIsEmpty!10885 () Bool)

(assert (=> setIsEmpty!10885 setRes!10885))

(declare-fun b!1556200 () Bool)

(declare-fun tp!456254 () Bool)

(assert (=> b!1556200 (= e!998542 tp!456254)))

(declare-fun e!998541 () Bool)

(assert (=> b!1555949 (= tp!456223 e!998541)))

(declare-fun tp!456253 () Bool)

(declare-fun b!1556201 () Bool)

(declare-fun tp_is_empty!7069 () Bool)

(assert (=> b!1556201 (= e!998541 (and (inv!22111 (_1!9494 (_1!9495 (h!22230 (zeroValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))))) e!998540 tp_is_empty!7069 setRes!10885 tp!456253))))

(declare-fun condSetEmpty!10885 () Bool)

(assert (=> b!1556201 (= condSetEmpty!10885 (= (_2!9495 (h!22230 (zeroValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))) ((as const (Array Context!1590 Bool)) false)))))

(assert (= b!1556201 b!1556199))

(assert (= (and b!1556201 condSetEmpty!10885) setIsEmpty!10885))

(assert (= (and b!1556201 (not condSetEmpty!10885)) setNonEmpty!10885))

(assert (= setNonEmpty!10885 b!1556200))

(assert (= (and b!1555949 ((_ is Cons!16829) (zeroValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))) b!1556201))

(declare-fun m!1828652 () Bool)

(assert (=> setNonEmpty!10885 m!1828652))

(declare-fun m!1828654 () Bool)

(assert (=> b!1556201 m!1828654))

(declare-fun b!1556202 () Bool)

(declare-fun e!998543 () Bool)

(declare-fun tp!456259 () Bool)

(assert (=> b!1556202 (= e!998543 tp!456259)))

(declare-fun tp!456260 () Bool)

(declare-fun e!998545 () Bool)

(declare-fun setRes!10886 () Bool)

(declare-fun setNonEmpty!10886 () Bool)

(declare-fun setElem!10886 () Context!1590)

(assert (=> setNonEmpty!10886 (= setRes!10886 (and tp!456260 (inv!22111 setElem!10886) e!998545))))

(declare-fun setRest!10886 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10886 (= (_2!9495 (h!22230 (minValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10886 true) setRest!10886))))

(declare-fun setIsEmpty!10886 () Bool)

(assert (=> setIsEmpty!10886 setRes!10886))

(declare-fun b!1556203 () Bool)

(declare-fun tp!456258 () Bool)

(assert (=> b!1556203 (= e!998545 tp!456258)))

(declare-fun e!998544 () Bool)

(assert (=> b!1555949 (= tp!456216 e!998544)))

(declare-fun b!1556204 () Bool)

(declare-fun tp!456257 () Bool)

(assert (=> b!1556204 (= e!998544 (and (inv!22111 (_1!9494 (_1!9495 (h!22230 (minValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))))) e!998543 tp_is_empty!7069 setRes!10886 tp!456257))))

(declare-fun condSetEmpty!10886 () Bool)

(assert (=> b!1556204 (= condSetEmpty!10886 (= (_2!9495 (h!22230 (minValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))) ((as const (Array Context!1590 Bool)) false)))))

(assert (= b!1556204 b!1556202))

(assert (= (and b!1556204 condSetEmpty!10886) setIsEmpty!10886))

(assert (= (and b!1556204 (not condSetEmpty!10886)) setNonEmpty!10886))

(assert (= setNonEmpty!10886 b!1556203))

(assert (= (and b!1555949 ((_ is Cons!16829) (minValue!2060 (v!23672 (underlying!3815 (v!23673 (underlying!3816 (cache!2128 cacheUp!755)))))))) b!1556204))

(declare-fun m!1828656 () Bool)

(assert (=> setNonEmpty!10886 m!1828656))

(declare-fun m!1828658 () Bool)

(assert (=> b!1556204 m!1828658))

(declare-fun setIsEmpty!10891 () Bool)

(declare-fun setRes!10892 () Bool)

(assert (=> setIsEmpty!10891 setRes!10892))

(declare-fun setNonEmpty!10891 () Bool)

(declare-fun e!998556 () Bool)

(declare-fun setElem!10892 () Context!1590)

(declare-fun tp!456280 () Bool)

(declare-fun setRes!10891 () Bool)

(assert (=> setNonEmpty!10891 (= setRes!10891 (and tp!456280 (inv!22111 setElem!10892) e!998556))))

(declare-fun mapValue!8393 () List!16898)

(declare-fun setRest!10892 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10891 (= (_1!9496 (_1!9497 (h!22231 mapValue!8393))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10892 true) setRest!10892))))

(declare-fun setNonEmpty!10892 () Bool)

(declare-fun setElem!10891 () Context!1590)

(declare-fun e!998554 () Bool)

(declare-fun tp!456281 () Bool)

(assert (=> setNonEmpty!10892 (= setRes!10892 (and tp!456281 (inv!22111 setElem!10891) e!998554))))

(declare-fun mapDefault!8393 () List!16898)

(declare-fun setRest!10891 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10892 (= (_1!9496 (_1!9497 (h!22231 mapDefault!8393))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10891 true) setRest!10891))))

(declare-fun b!1556215 () Bool)

(declare-fun tp!456276 () Bool)

(assert (=> b!1556215 (= e!998554 tp!456276)))

(declare-fun setIsEmpty!10892 () Bool)

(assert (=> setIsEmpty!10892 setRes!10891))

(declare-fun b!1556216 () Bool)

(declare-fun e!998555 () Bool)

(declare-fun tp!456277 () Bool)

(assert (=> b!1556216 (= e!998555 (and setRes!10891 tp!456277))))

(declare-fun condSetEmpty!10891 () Bool)

(assert (=> b!1556216 (= condSetEmpty!10891 (= (_1!9496 (_1!9497 (h!22231 mapValue!8393))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun b!1556217 () Bool)

(declare-fun e!998557 () Bool)

(declare-fun tp!456279 () Bool)

(assert (=> b!1556217 (= e!998557 (and setRes!10892 tp!456279))))

(declare-fun condSetEmpty!10892 () Bool)

(assert (=> b!1556217 (= condSetEmpty!10892 (= (_1!9496 (_1!9497 (h!22231 mapDefault!8393))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun mapNonEmpty!8393 () Bool)

(declare-fun mapRes!8393 () Bool)

(declare-fun tp!456278 () Bool)

(assert (=> mapNonEmpty!8393 (= mapRes!8393 (and tp!456278 e!998555))))

(declare-fun mapRest!8393 () (Array (_ BitVec 32) List!16898))

(declare-fun mapKey!8393 () (_ BitVec 32))

(assert (=> mapNonEmpty!8393 (= mapRest!8390 (store mapRest!8393 mapKey!8393 mapValue!8393))))

(declare-fun condMapEmpty!8393 () Bool)

(assert (=> mapNonEmpty!8390 (= condMapEmpty!8393 (= mapRest!8390 ((as const (Array (_ BitVec 32) List!16898)) mapDefault!8393)))))

(assert (=> mapNonEmpty!8390 (= tp!456219 (and e!998557 mapRes!8393))))

(declare-fun b!1556218 () Bool)

(declare-fun tp!456275 () Bool)

(assert (=> b!1556218 (= e!998556 tp!456275)))

(declare-fun mapIsEmpty!8393 () Bool)

(assert (=> mapIsEmpty!8393 mapRes!8393))

(assert (= (and mapNonEmpty!8390 condMapEmpty!8393) mapIsEmpty!8393))

(assert (= (and mapNonEmpty!8390 (not condMapEmpty!8393)) mapNonEmpty!8393))

(assert (= (and b!1556216 condSetEmpty!10891) setIsEmpty!10892))

(assert (= (and b!1556216 (not condSetEmpty!10891)) setNonEmpty!10891))

(assert (= setNonEmpty!10891 b!1556218))

(assert (= (and mapNonEmpty!8393 ((_ is Cons!16830) mapValue!8393)) b!1556216))

(assert (= (and b!1556217 condSetEmpty!10892) setIsEmpty!10891))

(assert (= (and b!1556217 (not condSetEmpty!10892)) setNonEmpty!10892))

(assert (= setNonEmpty!10892 b!1556215))

(assert (= (and mapNonEmpty!8390 ((_ is Cons!16830) mapDefault!8393)) b!1556217))

(declare-fun m!1828660 () Bool)

(assert (=> setNonEmpty!10891 m!1828660))

(declare-fun m!1828662 () Bool)

(assert (=> setNonEmpty!10892 m!1828662))

(declare-fun m!1828664 () Bool)

(assert (=> mapNonEmpty!8393 m!1828664))

(declare-fun b!1556219 () Bool)

(declare-fun e!998558 () Bool)

(declare-fun setRes!10893 () Bool)

(declare-fun tp!456284 () Bool)

(assert (=> b!1556219 (= e!998558 (and setRes!10893 tp!456284))))

(declare-fun condSetEmpty!10893 () Bool)

(assert (=> b!1556219 (= condSetEmpty!10893 (= (_1!9496 (_1!9497 (h!22231 mapValue!8388))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10893 () Bool)

(assert (=> setIsEmpty!10893 setRes!10893))

(declare-fun b!1556220 () Bool)

(declare-fun e!998559 () Bool)

(declare-fun tp!456283 () Bool)

(assert (=> b!1556220 (= e!998559 tp!456283)))

(assert (=> mapNonEmpty!8390 (= tp!456227 e!998558)))

(declare-fun setNonEmpty!10893 () Bool)

(declare-fun setElem!10893 () Context!1590)

(declare-fun tp!456282 () Bool)

(assert (=> setNonEmpty!10893 (= setRes!10893 (and tp!456282 (inv!22111 setElem!10893) e!998559))))

(declare-fun setRest!10893 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10893 (= (_1!9496 (_1!9497 (h!22231 mapValue!8388))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10893 true) setRest!10893))))

(assert (= (and b!1556219 condSetEmpty!10893) setIsEmpty!10893))

(assert (= (and b!1556219 (not condSetEmpty!10893)) setNonEmpty!10893))

(assert (= setNonEmpty!10893 b!1556220))

(assert (= (and mapNonEmpty!8390 ((_ is Cons!16830) mapValue!8388)) b!1556219))

(declare-fun m!1828666 () Bool)

(assert (=> setNonEmpty!10893 m!1828666))

(declare-fun e!998566 () Bool)

(assert (=> b!1555972 (= tp!456221 e!998566)))

(declare-fun b!1556229 () Bool)

(declare-fun e!998567 () Bool)

(declare-fun tp!456299 () Bool)

(assert (=> b!1556229 (= e!998567 tp!456299)))

(declare-fun e!998568 () Bool)

(declare-fun tp!456297 () Bool)

(declare-fun setElem!10896 () Context!1590)

(declare-fun setNonEmpty!10896 () Bool)

(declare-fun setRes!10896 () Bool)

(assert (=> setNonEmpty!10896 (= setRes!10896 (and tp!456297 (inv!22111 setElem!10896) e!998568))))

(declare-fun setRest!10896 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10896 (= (_2!9493 (h!22229 (zeroValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10896 true) setRest!10896))))

(declare-fun b!1556230 () Bool)

(declare-fun tp!456295 () Bool)

(assert (=> b!1556230 (= e!998568 tp!456295)))

(declare-fun tp!456298 () Bool)

(declare-fun b!1556231 () Bool)

(declare-fun tp!456296 () Bool)

(assert (=> b!1556231 (= e!998566 (and tp!456296 (inv!22111 (_2!9492 (_1!9493 (h!22229 (zeroValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))))) e!998567 tp_is_empty!7069 setRes!10896 tp!456298))))

(declare-fun condSetEmpty!10896 () Bool)

(assert (=> b!1556231 (= condSetEmpty!10896 (= (_2!9493 (h!22229 (zeroValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10896 () Bool)

(assert (=> setIsEmpty!10896 setRes!10896))

(assert (= b!1556231 b!1556229))

(assert (= (and b!1556231 condSetEmpty!10896) setIsEmpty!10896))

(assert (= (and b!1556231 (not condSetEmpty!10896)) setNonEmpty!10896))

(assert (= setNonEmpty!10896 b!1556230))

(assert (= (and b!1555972 ((_ is Cons!16828) (zeroValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))) b!1556231))

(declare-fun m!1828668 () Bool)

(assert (=> setNonEmpty!10896 m!1828668))

(declare-fun m!1828670 () Bool)

(assert (=> b!1556231 m!1828670))

(declare-fun e!998569 () Bool)

(assert (=> b!1555972 (= tp!456217 e!998569)))

(declare-fun b!1556232 () Bool)

(declare-fun e!998570 () Bool)

(declare-fun tp!456304 () Bool)

(assert (=> b!1556232 (= e!998570 tp!456304)))

(declare-fun e!998571 () Bool)

(declare-fun setRes!10897 () Bool)

(declare-fun setElem!10897 () Context!1590)

(declare-fun setNonEmpty!10897 () Bool)

(declare-fun tp!456302 () Bool)

(assert (=> setNonEmpty!10897 (= setRes!10897 (and tp!456302 (inv!22111 setElem!10897) e!998571))))

(declare-fun setRest!10897 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10897 (= (_2!9493 (h!22229 (minValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10897 true) setRest!10897))))

(declare-fun b!1556233 () Bool)

(declare-fun tp!456300 () Bool)

(assert (=> b!1556233 (= e!998571 tp!456300)))

(declare-fun b!1556234 () Bool)

(declare-fun tp!456303 () Bool)

(declare-fun tp!456301 () Bool)

(assert (=> b!1556234 (= e!998569 (and tp!456301 (inv!22111 (_2!9492 (_1!9493 (h!22229 (minValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))))) e!998570 tp_is_empty!7069 setRes!10897 tp!456303))))

(declare-fun condSetEmpty!10897 () Bool)

(assert (=> b!1556234 (= condSetEmpty!10897 (= (_2!9493 (h!22229 (minValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10897 () Bool)

(assert (=> setIsEmpty!10897 setRes!10897))

(assert (= b!1556234 b!1556232))

(assert (= (and b!1556234 condSetEmpty!10897) setIsEmpty!10897))

(assert (= (and b!1556234 (not condSetEmpty!10897)) setNonEmpty!10897))

(assert (= setNonEmpty!10897 b!1556233))

(assert (= (and b!1555972 ((_ is Cons!16828) (minValue!2059 (v!23670 (underlying!3813 (v!23671 (underlying!3814 (cache!2127 cacheDown!768)))))))) b!1556234))

(declare-fun m!1828672 () Bool)

(assert (=> setNonEmpty!10897 m!1828672))

(declare-fun m!1828674 () Bool)

(assert (=> b!1556234 m!1828674))

(declare-fun b!1556249 () Bool)

(declare-fun e!998586 () Bool)

(declare-fun tp!456332 () Bool)

(assert (=> b!1556249 (= e!998586 tp!456332)))

(declare-fun e!998585 () Bool)

(declare-fun tp!456336 () Bool)

(declare-fun setNonEmpty!10902 () Bool)

(declare-fun setElem!10903 () Context!1590)

(declare-fun setRes!10902 () Bool)

(assert (=> setNonEmpty!10902 (= setRes!10902 (and tp!456336 (inv!22111 setElem!10903) e!998585))))

(declare-fun mapDefault!8396 () List!16896)

(declare-fun setRest!10902 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10902 (= (_2!9493 (h!22229 mapDefault!8396)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10903 true) setRest!10902))))

(declare-fun setIsEmpty!10902 () Bool)

(declare-fun setRes!10903 () Bool)

(assert (=> setIsEmpty!10902 setRes!10903))

(declare-fun condMapEmpty!8396 () Bool)

(assert (=> mapNonEmpty!8388 (= condMapEmpty!8396 (= mapRest!8388 ((as const (Array (_ BitVec 32) List!16896)) mapDefault!8396)))))

(declare-fun e!998588 () Bool)

(declare-fun mapRes!8396 () Bool)

(assert (=> mapNonEmpty!8388 (= tp!456208 (and e!998588 mapRes!8396))))

(declare-fun e!998584 () Bool)

(declare-fun setNonEmpty!10903 () Bool)

(declare-fun setElem!10902 () Context!1590)

(declare-fun tp!456333 () Bool)

(assert (=> setNonEmpty!10903 (= setRes!10903 (and tp!456333 (inv!22111 setElem!10902) e!998584))))

(declare-fun mapValue!8396 () List!16896)

(declare-fun setRest!10903 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10903 (= (_2!9493 (h!22229 mapValue!8396)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10902 true) setRest!10903))))

(declare-fun b!1556250 () Bool)

(declare-fun tp!456334 () Bool)

(assert (=> b!1556250 (= e!998584 tp!456334)))

(declare-fun b!1556251 () Bool)

(declare-fun e!998587 () Bool)

(declare-fun tp!456337 () Bool)

(assert (=> b!1556251 (= e!998587 tp!456337)))

(declare-fun e!998589 () Bool)

(declare-fun tp!456331 () Bool)

(declare-fun b!1556252 () Bool)

(declare-fun tp!456335 () Bool)

(assert (=> b!1556252 (= e!998589 (and tp!456331 (inv!22111 (_2!9492 (_1!9493 (h!22229 mapValue!8396)))) e!998586 tp_is_empty!7069 setRes!10903 tp!456335))))

(declare-fun condSetEmpty!10902 () Bool)

(assert (=> b!1556252 (= condSetEmpty!10902 (= (_2!9493 (h!22229 mapValue!8396)) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun tp!456327 () Bool)

(declare-fun b!1556253 () Bool)

(declare-fun tp!456330 () Bool)

(assert (=> b!1556253 (= e!998588 (and tp!456327 (inv!22111 (_2!9492 (_1!9493 (h!22229 mapDefault!8396)))) e!998587 tp_is_empty!7069 setRes!10902 tp!456330))))

(declare-fun condSetEmpty!10903 () Bool)

(assert (=> b!1556253 (= condSetEmpty!10903 (= (_2!9493 (h!22229 mapDefault!8396)) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10903 () Bool)

(assert (=> setIsEmpty!10903 setRes!10902))

(declare-fun mapNonEmpty!8396 () Bool)

(declare-fun tp!456328 () Bool)

(assert (=> mapNonEmpty!8396 (= mapRes!8396 (and tp!456328 e!998589))))

(declare-fun mapRest!8396 () (Array (_ BitVec 32) List!16896))

(declare-fun mapKey!8396 () (_ BitVec 32))

(assert (=> mapNonEmpty!8396 (= mapRest!8388 (store mapRest!8396 mapKey!8396 mapValue!8396))))

(declare-fun b!1556254 () Bool)

(declare-fun tp!456329 () Bool)

(assert (=> b!1556254 (= e!998585 tp!456329)))

(declare-fun mapIsEmpty!8396 () Bool)

(assert (=> mapIsEmpty!8396 mapRes!8396))

(assert (= (and mapNonEmpty!8388 condMapEmpty!8396) mapIsEmpty!8396))

(assert (= (and mapNonEmpty!8388 (not condMapEmpty!8396)) mapNonEmpty!8396))

(assert (= b!1556252 b!1556249))

(assert (= (and b!1556252 condSetEmpty!10902) setIsEmpty!10902))

(assert (= (and b!1556252 (not condSetEmpty!10902)) setNonEmpty!10903))

(assert (= setNonEmpty!10903 b!1556250))

(assert (= (and mapNonEmpty!8396 ((_ is Cons!16828) mapValue!8396)) b!1556252))

(assert (= b!1556253 b!1556251))

(assert (= (and b!1556253 condSetEmpty!10903) setIsEmpty!10903))

(assert (= (and b!1556253 (not condSetEmpty!10903)) setNonEmpty!10902))

(assert (= setNonEmpty!10902 b!1556254))

(assert (= (and mapNonEmpty!8388 ((_ is Cons!16828) mapDefault!8396)) b!1556253))

(declare-fun m!1828676 () Bool)

(assert (=> setNonEmpty!10902 m!1828676))

(declare-fun m!1828678 () Bool)

(assert (=> b!1556252 m!1828678))

(declare-fun m!1828680 () Bool)

(assert (=> setNonEmpty!10903 m!1828680))

(declare-fun m!1828682 () Bool)

(assert (=> mapNonEmpty!8396 m!1828682))

(declare-fun m!1828684 () Bool)

(assert (=> b!1556253 m!1828684))

(declare-fun e!998590 () Bool)

(assert (=> mapNonEmpty!8388 (= tp!456210 e!998590)))

(declare-fun b!1556255 () Bool)

(declare-fun e!998591 () Bool)

(declare-fun tp!456342 () Bool)

(assert (=> b!1556255 (= e!998591 tp!456342)))

(declare-fun e!998592 () Bool)

(declare-fun setRes!10904 () Bool)

(declare-fun setNonEmpty!10904 () Bool)

(declare-fun tp!456340 () Bool)

(declare-fun setElem!10904 () Context!1590)

(assert (=> setNonEmpty!10904 (= setRes!10904 (and tp!456340 (inv!22111 setElem!10904) e!998592))))

(declare-fun setRest!10904 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10904 (= (_2!9493 (h!22229 mapValue!8389)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10904 true) setRest!10904))))

(declare-fun b!1556256 () Bool)

(declare-fun tp!456338 () Bool)

(assert (=> b!1556256 (= e!998592 tp!456338)))

(declare-fun b!1556257 () Bool)

(declare-fun tp!456339 () Bool)

(declare-fun tp!456341 () Bool)

(assert (=> b!1556257 (= e!998590 (and tp!456339 (inv!22111 (_2!9492 (_1!9493 (h!22229 mapValue!8389)))) e!998591 tp_is_empty!7069 setRes!10904 tp!456341))))

(declare-fun condSetEmpty!10904 () Bool)

(assert (=> b!1556257 (= condSetEmpty!10904 (= (_2!9493 (h!22229 mapValue!8389)) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10904 () Bool)

(assert (=> setIsEmpty!10904 setRes!10904))

(assert (= b!1556257 b!1556255))

(assert (= (and b!1556257 condSetEmpty!10904) setIsEmpty!10904))

(assert (= (and b!1556257 (not condSetEmpty!10904)) setNonEmpty!10904))

(assert (= setNonEmpty!10904 b!1556256))

(assert (= (and mapNonEmpty!8388 ((_ is Cons!16828) mapValue!8389)) b!1556257))

(declare-fun m!1828686 () Bool)

(assert (=> setNonEmpty!10904 m!1828686))

(declare-fun m!1828688 () Bool)

(assert (=> b!1556257 m!1828688))

(declare-fun b!1556271 () Bool)

(declare-fun e!998595 () Bool)

(declare-fun tp!456354 () Bool)

(declare-fun tp!456356 () Bool)

(assert (=> b!1556271 (= e!998595 (and tp!456354 tp!456356))))

(declare-fun b!1556270 () Bool)

(declare-fun tp!456355 () Bool)

(assert (=> b!1556270 (= e!998595 tp!456355)))

(declare-fun b!1556268 () Bool)

(assert (=> b!1556268 (= e!998595 tp_is_empty!7069)))

(assert (=> b!1555970 (= tp!456220 e!998595)))

(declare-fun b!1556269 () Bool)

(declare-fun tp!456353 () Bool)

(declare-fun tp!456357 () Bool)

(assert (=> b!1556269 (= e!998595 (and tp!456353 tp!456357))))

(assert (= (and b!1555970 ((_ is ElementMatch!4277) (regex!2949 rule!240))) b!1556268))

(assert (= (and b!1555970 ((_ is Concat!7317) (regex!2949 rule!240))) b!1556269))

(assert (= (and b!1555970 ((_ is Star!4277) (regex!2949 rule!240))) b!1556270))

(assert (= (and b!1555970 ((_ is Union!4277) (regex!2949 rule!240))) b!1556271))

(declare-fun b!1556280 () Bool)

(declare-fun tp!456364 () Bool)

(declare-fun e!998601 () Bool)

(declare-fun tp!456365 () Bool)

(assert (=> b!1556280 (= e!998601 (and (inv!22103 (left!13676 (c!252806 (totalInput!2466 cacheFurthestNullable!103)))) tp!456365 (inv!22103 (right!14006 (c!252806 (totalInput!2466 cacheFurthestNullable!103)))) tp!456364))))

(declare-fun b!1556282 () Bool)

(declare-fun e!998600 () Bool)

(declare-fun tp!456366 () Bool)

(assert (=> b!1556282 (= e!998600 tp!456366)))

(declare-fun b!1556281 () Bool)

(declare-fun inv!22112 (IArray!11139) Bool)

(assert (=> b!1556281 (= e!998601 (and (inv!22112 (xs!8367 (c!252806 (totalInput!2466 cacheFurthestNullable!103)))) e!998600))))

(assert (=> b!1555964 (= tp!456215 (and (inv!22103 (c!252806 (totalInput!2466 cacheFurthestNullable!103))) e!998601))))

(assert (= (and b!1555964 ((_ is Node!5567) (c!252806 (totalInput!2466 cacheFurthestNullable!103)))) b!1556280))

(assert (= b!1556281 b!1556282))

(assert (= (and b!1555964 ((_ is Leaf!8251) (c!252806 (totalInput!2466 cacheFurthestNullable!103)))) b!1556281))

(declare-fun m!1828690 () Bool)

(assert (=> b!1556280 m!1828690))

(declare-fun m!1828692 () Bool)

(assert (=> b!1556280 m!1828692))

(declare-fun m!1828694 () Bool)

(assert (=> b!1556281 m!1828694))

(assert (=> b!1555964 m!1828410))

(declare-fun e!998602 () Bool)

(assert (=> b!1555974 (= tp!456226 e!998602)))

(declare-fun b!1556283 () Bool)

(declare-fun e!998603 () Bool)

(declare-fun tp!456371 () Bool)

(assert (=> b!1556283 (= e!998603 tp!456371)))

(declare-fun tp!456369 () Bool)

(declare-fun setRes!10905 () Bool)

(declare-fun setNonEmpty!10905 () Bool)

(declare-fun setElem!10905 () Context!1590)

(declare-fun e!998604 () Bool)

(assert (=> setNonEmpty!10905 (= setRes!10905 (and tp!456369 (inv!22111 setElem!10905) e!998604))))

(declare-fun setRest!10905 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10905 (= (_2!9493 (h!22229 mapDefault!8388)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10905 true) setRest!10905))))

(declare-fun b!1556284 () Bool)

(declare-fun tp!456367 () Bool)

(assert (=> b!1556284 (= e!998604 tp!456367)))

(declare-fun tp!456370 () Bool)

(declare-fun b!1556285 () Bool)

(declare-fun tp!456368 () Bool)

(assert (=> b!1556285 (= e!998602 (and tp!456368 (inv!22111 (_2!9492 (_1!9493 (h!22229 mapDefault!8388)))) e!998603 tp_is_empty!7069 setRes!10905 tp!456370))))

(declare-fun condSetEmpty!10905 () Bool)

(assert (=> b!1556285 (= condSetEmpty!10905 (= (_2!9493 (h!22229 mapDefault!8388)) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setIsEmpty!10905 () Bool)

(assert (=> setIsEmpty!10905 setRes!10905))

(assert (= b!1556285 b!1556283))

(assert (= (and b!1556285 condSetEmpty!10905) setIsEmpty!10905))

(assert (= (and b!1556285 (not condSetEmpty!10905)) setNonEmpty!10905))

(assert (= setNonEmpty!10905 b!1556284))

(assert (= (and b!1555974 ((_ is Cons!16828) mapDefault!8388)) b!1556285))

(declare-fun m!1828696 () Bool)

(assert (=> setNonEmpty!10905 m!1828696))

(declare-fun m!1828698 () Bool)

(assert (=> b!1556285 m!1828698))

(declare-fun b!1556286 () Bool)

(declare-fun e!998605 () Bool)

(declare-fun tp!456374 () Bool)

(assert (=> b!1556286 (= e!998605 tp!456374)))

(declare-fun setRes!10906 () Bool)

(declare-fun setNonEmpty!10906 () Bool)

(declare-fun setElem!10906 () Context!1590)

(declare-fun e!998607 () Bool)

(declare-fun tp!456375 () Bool)

(assert (=> setNonEmpty!10906 (= setRes!10906 (and tp!456375 (inv!22111 setElem!10906) e!998607))))

(declare-fun setRest!10906 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10906 (= (_2!9495 (h!22230 mapDefault!8389)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10906 true) setRest!10906))))

(declare-fun setIsEmpty!10906 () Bool)

(assert (=> setIsEmpty!10906 setRes!10906))

(declare-fun b!1556287 () Bool)

(declare-fun tp!456373 () Bool)

(assert (=> b!1556287 (= e!998607 tp!456373)))

(declare-fun e!998606 () Bool)

(assert (=> b!1555946 (= tp!456213 e!998606)))

(declare-fun tp!456372 () Bool)

(declare-fun b!1556288 () Bool)

(assert (=> b!1556288 (= e!998606 (and (inv!22111 (_1!9494 (_1!9495 (h!22230 mapDefault!8389)))) e!998605 tp_is_empty!7069 setRes!10906 tp!456372))))

(declare-fun condSetEmpty!10906 () Bool)

(assert (=> b!1556288 (= condSetEmpty!10906 (= (_2!9495 (h!22230 mapDefault!8389)) ((as const (Array Context!1590 Bool)) false)))))

(assert (= b!1556288 b!1556286))

(assert (= (and b!1556288 condSetEmpty!10906) setIsEmpty!10906))

(assert (= (and b!1556288 (not condSetEmpty!10906)) setNonEmpty!10906))

(assert (= setNonEmpty!10906 b!1556287))

(assert (= (and b!1555946 ((_ is Cons!16829) mapDefault!8389)) b!1556288))

(declare-fun m!1828700 () Bool)

(assert (=> setNonEmpty!10906 m!1828700))

(declare-fun m!1828702 () Bool)

(assert (=> b!1556288 m!1828702))

(declare-fun b!1556289 () Bool)

(declare-fun tp!456377 () Bool)

(declare-fun tp!456376 () Bool)

(declare-fun e!998609 () Bool)

(assert (=> b!1556289 (= e!998609 (and (inv!22103 (left!13676 (c!252806 input!1676))) tp!456377 (inv!22103 (right!14006 (c!252806 input!1676))) tp!456376))))

(declare-fun b!1556291 () Bool)

(declare-fun e!998608 () Bool)

(declare-fun tp!456378 () Bool)

(assert (=> b!1556291 (= e!998608 tp!456378)))

(declare-fun b!1556290 () Bool)

(assert (=> b!1556290 (= e!998609 (and (inv!22112 (xs!8367 (c!252806 input!1676))) e!998608))))

(assert (=> b!1555955 (= tp!456204 (and (inv!22103 (c!252806 input!1676)) e!998609))))

(assert (= (and b!1555955 ((_ is Node!5567) (c!252806 input!1676))) b!1556289))

(assert (= b!1556290 b!1556291))

(assert (= (and b!1555955 ((_ is Leaf!8251) (c!252806 input!1676))) b!1556290))

(declare-fun m!1828704 () Bool)

(assert (=> b!1556289 m!1828704))

(declare-fun m!1828706 () Bool)

(assert (=> b!1556289 m!1828706))

(declare-fun m!1828708 () Bool)

(assert (=> b!1556290 m!1828708))

(assert (=> b!1555955 m!1828436))

(declare-fun tp!456379 () Bool)

(declare-fun e!998611 () Bool)

(declare-fun tp!456380 () Bool)

(declare-fun b!1556292 () Bool)

(assert (=> b!1556292 (= e!998611 (and (inv!22103 (left!13676 (c!252806 totalInput!568))) tp!456380 (inv!22103 (right!14006 (c!252806 totalInput!568))) tp!456379))))

(declare-fun b!1556294 () Bool)

(declare-fun e!998610 () Bool)

(declare-fun tp!456381 () Bool)

(assert (=> b!1556294 (= e!998610 tp!456381)))

(declare-fun b!1556293 () Bool)

(assert (=> b!1556293 (= e!998611 (and (inv!22112 (xs!8367 (c!252806 totalInput!568))) e!998610))))

(assert (=> b!1555948 (= tp!456224 (and (inv!22103 (c!252806 totalInput!568)) e!998611))))

(assert (= (and b!1555948 ((_ is Node!5567) (c!252806 totalInput!568))) b!1556292))

(assert (= b!1556293 b!1556294))

(assert (= (and b!1555948 ((_ is Leaf!8251) (c!252806 totalInput!568))) b!1556293))

(declare-fun m!1828710 () Bool)

(assert (=> b!1556292 m!1828710))

(declare-fun m!1828712 () Bool)

(assert (=> b!1556292 m!1828712))

(declare-fun m!1828714 () Bool)

(assert (=> b!1556293 m!1828714))

(assert (=> b!1555948 m!1828418))

(declare-fun e!998629 () Bool)

(declare-fun setRes!10911 () Bool)

(declare-fun tp!456406 () Bool)

(declare-fun b!1556309 () Bool)

(declare-fun e!998627 () Bool)

(declare-fun mapDefault!8399 () List!16897)

(assert (=> b!1556309 (= e!998629 (and (inv!22111 (_1!9494 (_1!9495 (h!22230 mapDefault!8399)))) e!998627 tp_is_empty!7069 setRes!10911 tp!456406))))

(declare-fun condSetEmpty!10912 () Bool)

(assert (=> b!1556309 (= condSetEmpty!10912 (= (_2!9495 (h!22230 mapDefault!8399)) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun b!1556310 () Bool)

(declare-fun e!998625 () Bool)

(declare-fun tp!456407 () Bool)

(assert (=> b!1556310 (= e!998625 tp!456407)))

(declare-fun condMapEmpty!8399 () Bool)

(assert (=> mapNonEmpty!8389 (= condMapEmpty!8399 (= mapRest!8389 ((as const (Array (_ BitVec 32) List!16897)) mapDefault!8399)))))

(declare-fun mapRes!8399 () Bool)

(assert (=> mapNonEmpty!8389 (= tp!456218 (and e!998629 mapRes!8399))))

(declare-fun tp!456403 () Bool)

(declare-fun setElem!10912 () Context!1590)

(declare-fun setNonEmpty!10911 () Bool)

(declare-fun e!998628 () Bool)

(assert (=> setNonEmpty!10911 (= setRes!10911 (and tp!456403 (inv!22111 setElem!10912) e!998628))))

(declare-fun setRest!10911 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10911 (= (_2!9495 (h!22230 mapDefault!8399)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10912 true) setRest!10911))))

(declare-fun mapValue!8399 () List!16897)

(declare-fun b!1556311 () Bool)

(declare-fun e!998624 () Bool)

(declare-fun setRes!10912 () Bool)

(declare-fun tp!456402 () Bool)

(assert (=> b!1556311 (= e!998624 (and (inv!22111 (_1!9494 (_1!9495 (h!22230 mapValue!8399)))) e!998625 tp_is_empty!7069 setRes!10912 tp!456402))))

(declare-fun condSetEmpty!10911 () Bool)

(assert (=> b!1556311 (= condSetEmpty!10911 (= (_2!9495 (h!22230 mapValue!8399)) ((as const (Array Context!1590 Bool)) false)))))

(declare-fun setNonEmpty!10912 () Bool)

(declare-fun e!998626 () Bool)

(declare-fun setElem!10911 () Context!1590)

(declare-fun tp!456400 () Bool)

(assert (=> setNonEmpty!10912 (= setRes!10912 (and tp!456400 (inv!22111 setElem!10911) e!998626))))

(declare-fun setRest!10912 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10912 (= (_2!9495 (h!22230 mapValue!8399)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10911 true) setRest!10912))))

(declare-fun setIsEmpty!10911 () Bool)

(assert (=> setIsEmpty!10911 setRes!10912))

(declare-fun setIsEmpty!10912 () Bool)

(assert (=> setIsEmpty!10912 setRes!10911))

(declare-fun mapNonEmpty!8399 () Bool)

(declare-fun tp!456408 () Bool)

(assert (=> mapNonEmpty!8399 (= mapRes!8399 (and tp!456408 e!998624))))

(declare-fun mapKey!8399 () (_ BitVec 32))

(declare-fun mapRest!8399 () (Array (_ BitVec 32) List!16897))

(assert (=> mapNonEmpty!8399 (= mapRest!8389 (store mapRest!8399 mapKey!8399 mapValue!8399))))

(declare-fun b!1556312 () Bool)

(declare-fun tp!456404 () Bool)

(assert (=> b!1556312 (= e!998626 tp!456404)))

(declare-fun mapIsEmpty!8399 () Bool)

(assert (=> mapIsEmpty!8399 mapRes!8399))

(declare-fun b!1556313 () Bool)

(declare-fun tp!456401 () Bool)

(assert (=> b!1556313 (= e!998628 tp!456401)))

(declare-fun b!1556314 () Bool)

(declare-fun tp!456405 () Bool)

(assert (=> b!1556314 (= e!998627 tp!456405)))

(assert (= (and mapNonEmpty!8389 condMapEmpty!8399) mapIsEmpty!8399))

(assert (= (and mapNonEmpty!8389 (not condMapEmpty!8399)) mapNonEmpty!8399))

(assert (= b!1556311 b!1556310))

(assert (= (and b!1556311 condSetEmpty!10911) setIsEmpty!10911))

(assert (= (and b!1556311 (not condSetEmpty!10911)) setNonEmpty!10912))

(assert (= setNonEmpty!10912 b!1556312))

(assert (= (and mapNonEmpty!8399 ((_ is Cons!16829) mapValue!8399)) b!1556311))

(assert (= b!1556309 b!1556314))

(assert (= (and b!1556309 condSetEmpty!10912) setIsEmpty!10912))

(assert (= (and b!1556309 (not condSetEmpty!10912)) setNonEmpty!10911))

(assert (= setNonEmpty!10911 b!1556313))

(assert (= (and mapNonEmpty!8389 ((_ is Cons!16829) mapDefault!8399)) b!1556309))

(declare-fun m!1828716 () Bool)

(assert (=> b!1556311 m!1828716))

(declare-fun m!1828718 () Bool)

(assert (=> setNonEmpty!10911 m!1828718))

(declare-fun m!1828720 () Bool)

(assert (=> mapNonEmpty!8399 m!1828720))

(declare-fun m!1828722 () Bool)

(assert (=> setNonEmpty!10912 m!1828722))

(declare-fun m!1828724 () Bool)

(assert (=> b!1556309 m!1828724))

(declare-fun b!1556315 () Bool)

(declare-fun e!998630 () Bool)

(declare-fun tp!456411 () Bool)

(assert (=> b!1556315 (= e!998630 tp!456411)))

(declare-fun setElem!10913 () Context!1590)

(declare-fun tp!456412 () Bool)

(declare-fun setRes!10913 () Bool)

(declare-fun e!998632 () Bool)

(declare-fun setNonEmpty!10913 () Bool)

(assert (=> setNonEmpty!10913 (= setRes!10913 (and tp!456412 (inv!22111 setElem!10913) e!998632))))

(declare-fun setRest!10913 () (InoxSet Context!1590))

(assert (=> setNonEmpty!10913 (= (_2!9495 (h!22230 mapValue!8390)) ((_ map or) (store ((as const (Array Context!1590 Bool)) false) setElem!10913 true) setRest!10913))))

(declare-fun setIsEmpty!10913 () Bool)

(assert (=> setIsEmpty!10913 setRes!10913))

(declare-fun b!1556316 () Bool)

(declare-fun tp!456410 () Bool)

(assert (=> b!1556316 (= e!998632 tp!456410)))

(declare-fun e!998631 () Bool)

(assert (=> mapNonEmpty!8389 (= tp!456206 e!998631)))

(declare-fun b!1556317 () Bool)

(declare-fun tp!456409 () Bool)

(assert (=> b!1556317 (= e!998631 (and (inv!22111 (_1!9494 (_1!9495 (h!22230 mapValue!8390)))) e!998630 tp_is_empty!7069 setRes!10913 tp!456409))))

(declare-fun condSetEmpty!10913 () Bool)

(assert (=> b!1556317 (= condSetEmpty!10913 (= (_2!9495 (h!22230 mapValue!8390)) ((as const (Array Context!1590 Bool)) false)))))

(assert (= b!1556317 b!1556315))

(assert (= (and b!1556317 condSetEmpty!10913) setIsEmpty!10913))

(assert (= (and b!1556317 (not condSetEmpty!10913)) setNonEmpty!10913))

(assert (= setNonEmpty!10913 b!1556316))

(assert (= (and mapNonEmpty!8389 ((_ is Cons!16829) mapValue!8390)) b!1556317))

(declare-fun m!1828726 () Bool)

(assert (=> setNonEmpty!10913 m!1828726))

(declare-fun m!1828728 () Bool)

(assert (=> b!1556317 m!1828728))

(declare-fun b_lambda!48867 () Bool)

(assert (= b_lambda!48865 (or b!1555968 b_lambda!48867)))

(declare-fun bs!388723 () Bool)

(declare-fun d!461618 () Bool)

(assert (= bs!388723 (and d!461618 b!1555968)))

(declare-fun dynLambda!7467 (Int TokenValue!3039) BalanceConc!11076)

(assert (=> bs!388723 (= (dynLambda!7466 lambda!65881 (_1!9499 (_1!9500 lt!538776))) (= (list!6495 (dynLambda!7467 (toChars!4180 (transformation!2949 rule!240)) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) (_1!9499 (_1!9500 lt!538776))))) (list!6495 (_1!9499 (_1!9500 lt!538776)))))))

(declare-fun b_lambda!48879 () Bool)

(assert (=> (not b_lambda!48879) (not bs!388723)))

(declare-fun t!141375 () Bool)

(declare-fun tb!87325 () Bool)

(assert (=> (and b!1555976 (= (toChars!4180 (transformation!2949 rule!240)) (toChars!4180 (transformation!2949 rule!240))) t!141375) tb!87325))

(declare-fun tp!456415 () Bool)

(declare-fun e!998635 () Bool)

(declare-fun b!1556322 () Bool)

(assert (=> b!1556322 (= e!998635 (and (inv!22103 (c!252806 (dynLambda!7467 (toChars!4180 (transformation!2949 rule!240)) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) (_1!9499 (_1!9500 lt!538776)))))) tp!456415))))

(declare-fun result!105458 () Bool)

(assert (=> tb!87325 (= result!105458 (and (inv!22104 (dynLambda!7467 (toChars!4180 (transformation!2949 rule!240)) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) (_1!9499 (_1!9500 lt!538776))))) e!998635))))

(assert (= tb!87325 b!1556322))

(declare-fun m!1828730 () Bool)

(assert (=> b!1556322 m!1828730))

(declare-fun m!1828732 () Bool)

(assert (=> tb!87325 m!1828732))

(assert (=> bs!388723 t!141375))

(declare-fun b_and!108573 () Bool)

(assert (= b_and!108553 (and (=> t!141375 result!105458) b_and!108573)))

(declare-fun b_lambda!48881 () Bool)

(assert (=> (not b_lambda!48881) (not bs!388723)))

(assert (=> bs!388723 t!141373))

(declare-fun b_and!108575 () Bool)

(assert (= b_and!108571 (and (=> t!141373 result!105440) b_and!108575)))

(assert (=> bs!388723 m!1828552))

(declare-fun m!1828734 () Bool)

(assert (=> bs!388723 m!1828734))

(assert (=> bs!388723 m!1828406))

(assert (=> bs!388723 m!1828734))

(declare-fun m!1828736 () Bool)

(assert (=> bs!388723 m!1828736))

(assert (=> bs!388723 m!1828552))

(assert (=> d!461604 d!461618))

(declare-fun b_lambda!48869 () Bool)

(assert (= b_lambda!48863 (or b!1555968 b_lambda!48869)))

(declare-fun bs!388724 () Bool)

(declare-fun d!461620 () Bool)

(assert (= bs!388724 (and d!461620 b!1555968)))

(assert (=> bs!388724 (= (dynLambda!7466 lambda!65881 lt!538782) (= (list!6495 (dynLambda!7467 (toChars!4180 (transformation!2949 rule!240)) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) lt!538782))) (list!6495 lt!538782)))))

(declare-fun b_lambda!48883 () Bool)

(assert (=> (not b_lambda!48883) (not bs!388724)))

(declare-fun t!141377 () Bool)

(declare-fun tb!87327 () Bool)

(assert (=> (and b!1555976 (= (toChars!4180 (transformation!2949 rule!240)) (toChars!4180 (transformation!2949 rule!240))) t!141377) tb!87327))

(declare-fun b!1556323 () Bool)

(declare-fun tp!456416 () Bool)

(declare-fun e!998636 () Bool)

(assert (=> b!1556323 (= e!998636 (and (inv!22103 (c!252806 (dynLambda!7467 (toChars!4180 (transformation!2949 rule!240)) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) lt!538782)))) tp!456416))))

(declare-fun result!105462 () Bool)

(assert (=> tb!87327 (= result!105462 (and (inv!22104 (dynLambda!7467 (toChars!4180 (transformation!2949 rule!240)) (dynLambda!7464 (toValue!4321 (transformation!2949 rule!240)) lt!538782))) e!998636))))

(assert (= tb!87327 b!1556323))

(declare-fun m!1828738 () Bool)

(assert (=> b!1556323 m!1828738))

(declare-fun m!1828740 () Bool)

(assert (=> tb!87327 m!1828740))

(assert (=> bs!388724 t!141377))

(declare-fun b_and!108577 () Bool)

(assert (= b_and!108573 (and (=> t!141377 result!105462) b_and!108577)))

(declare-fun b_lambda!48885 () Bool)

(assert (=> (not b_lambda!48885) (not bs!388724)))

(assert (=> bs!388724 t!141371))

(declare-fun b_and!108579 () Bool)

(assert (= b_and!108575 (and (=> t!141371 result!105436) b_and!108579)))

(assert (=> bs!388724 m!1828548))

(declare-fun m!1828742 () Bool)

(assert (=> bs!388724 m!1828742))

(assert (=> bs!388724 m!1828352))

(assert (=> bs!388724 m!1828742))

(declare-fun m!1828744 () Bool)

(assert (=> bs!388724 m!1828744))

(assert (=> bs!388724 m!1828548))

(assert (=> d!461602 d!461620))

(declare-fun b_lambda!48871 () Bool)

(assert (= b_lambda!48857 (or (and b!1555976 b_free!41385) b_lambda!48871)))

(declare-fun b_lambda!48873 () Bool)

(assert (= b_lambda!48855 (or (and b!1555976 b_free!41385) b_lambda!48873)))

(declare-fun b_lambda!48875 () Bool)

(assert (= b_lambda!48861 (or (and b!1555976 b_free!41385) b_lambda!48875)))

(declare-fun b_lambda!48877 () Bool)

(assert (= b_lambda!48859 (or (and b!1555976 b_free!41385) b_lambda!48877)))

(check-sat (not b!1556256) (not b!1556164) (not b!1556289) (not bm!102051) (not d!461540) (not b_next!42089) (not b!1556292) (not b!1556218) (not b!1556095) (not b!1556200) (not b!1556309) (not b!1556060) (not d!461602) b_and!108559 (not b!1556288) (not b!1556189) (not b_lambda!48875) (not bm!102054) (not d!461598) (not setNonEmpty!10904) (not b!1556101) (not b!1556133) (not setNonEmpty!10906) (not d!461566) (not d!461570) (not b!1556030) (not b!1556231) (not b!1556233) (not bm!102034) (not tb!87327) (not d!461578) (not b!1556317) (not d!461572) b_and!108579 (not b!1556293) (not setNonEmpty!10893) (not tb!87321) (not b!1556234) (not b!1556097) (not b!1556177) (not d!461596) (not bm!102055) (not b_lambda!48873) (not d!461606) (not b!1556310) (not setNonEmpty!10881) (not setNonEmpty!10885) (not b!1555964) (not b!1556286) (not b!1556219) (not b!1555998) (not setNonEmpty!10882) (not b_lambda!48879) (not b!1555955) (not b!1556100) (not b_next!42095) (not d!461550) (not b!1556271) (not b!1556281) (not b!1556232) (not b!1556199) (not d!461614) (not b!1556230) (not b!1556052) (not d!461612) (not setNonEmpty!10897) (not b!1556285) (not b_lambda!48867) (not b_next!42097) (not b!1556249) (not b!1556316) (not setNonEmpty!10886) (not mapNonEmpty!8396) (not bm!102052) (not b!1556202) (not b!1556139) (not b!1556283) (not setNonEmpty!10896) (not b!1556042) (not b!1555995) (not b!1556048) b_and!108561 (not b!1556270) (not setNonEmpty!10913) (not d!461536) (not d!461610) (not b!1556311) (not mapNonEmpty!8393) b_and!108557 (not setNonEmpty!10880) (not b!1556315) (not b!1556176) (not b!1556201) (not b!1556162) (not d!461552) (not b!1556039) (not b!1556160) (not d!461586) (not b!1556269) (not setNonEmpty!10905) (not b!1556294) (not b!1556280) (not d!461554) (not d!461532) (not bs!388723) (not d!461588) (not bm!102058) (not b_next!42101) (not b!1555948) (not setNonEmpty!10911) (not b!1556131) (not tb!87325) (not d!461590) (not b!1556255) (not b_lambda!48871) (not d!461608) (not b!1556216) (not d!461558) (not setNonEmpty!10892) (not b!1556187) (not d!461538) (not b!1556032) (not setNonEmpty!10891) (not d!461564) (not b!1556119) (not b!1556314) (not b!1556058) (not b!1556287) (not b!1556290) (not b!1556322) (not b_next!42087) (not b!1556158) (not b_lambda!48869) (not b!1556229) (not b!1556323) (not b!1556041) (not b!1556284) (not b_lambda!48883) (not setNonEmpty!10903) (not b!1556251) (not b!1556253) (not bm!102056) (not setNonEmpty!10902) (not setNonEmpty!10912) (not b!1556313) b_and!108563 (not b!1556121) (not b!1556250) (not b!1556163) (not b!1556252) (not b!1556215) (not b!1556186) b_and!108549 (not bm!102057) (not b!1556204) (not d!461604) (not b!1556282) (not b_next!42099) (not b!1556291) (not b_lambda!48885) (not bs!388724) (not d!461616) (not b_lambda!48877) (not b!1556136) (not b!1556161) b_and!108577 (not b!1556109) (not b!1556254) (not b!1556203) (not tb!87323) (not b_lambda!48881) (not b!1556112) (not b!1556175) (not b!1556312) (not d!461594) (not mapNonEmpty!8399) (not b!1556185) (not b_next!42091) (not b!1556220) (not b!1556165) (not b!1556217) (not b!1556188) (not b!1556033) tp_is_empty!7069 (not d!461584) (not bm!102053) (not b!1556137) (not b!1556001) (not b!1556257) (not b!1556190) (not b_next!42093) (not d!461526) (not b!1556159) b_and!108555)
(check-sat (not b_next!42089) b_and!108559 b_and!108579 (not b_next!42095) (not b_next!42097) b_and!108561 b_and!108557 (not b_next!42101) (not b_next!42087) b_and!108563 b_and!108549 (not b_next!42099) b_and!108577 (not b_next!42091) (not b_next!42093) b_and!108555)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143694 () Bool)

(assert start!143694)

(declare-fun b!1551049 () Bool)

(declare-fun b_free!41187 () Bool)

(declare-fun b_next!41891 () Bool)

(assert (=> b!1551049 (= b_free!41187 (not b_next!41891))))

(declare-fun tp!453398 () Bool)

(declare-fun b_and!108277 () Bool)

(assert (=> b!1551049 (= tp!453398 b_and!108277)))

(declare-fun b_free!41189 () Bool)

(declare-fun b_next!41893 () Bool)

(assert (=> b!1551049 (= b_free!41189 (not b_next!41893))))

(declare-fun tp!453388 () Bool)

(declare-fun b_and!108279 () Bool)

(assert (=> b!1551049 (= tp!453388 b_and!108279)))

(declare-fun b!1551042 () Bool)

(declare-fun b_free!41191 () Bool)

(declare-fun b_next!41895 () Bool)

(assert (=> b!1551042 (= b_free!41191 (not b_next!41895))))

(declare-fun tp!453396 () Bool)

(declare-fun b_and!108281 () Bool)

(assert (=> b!1551042 (= tp!453396 b_and!108281)))

(declare-fun b!1551041 () Bool)

(declare-fun b_free!41193 () Bool)

(declare-fun b_next!41897 () Bool)

(assert (=> b!1551041 (= b_free!41193 (not b_next!41897))))

(declare-fun tp!453379 () Bool)

(declare-fun b_and!108283 () Bool)

(assert (=> b!1551041 (= tp!453379 b_and!108283)))

(declare-fun b!1551045 () Bool)

(declare-fun b_free!41195 () Bool)

(declare-fun b_next!41899 () Bool)

(assert (=> b!1551045 (= b_free!41195 (not b_next!41899))))

(declare-fun tp!453405 () Bool)

(declare-fun b_and!108285 () Bool)

(assert (=> b!1551045 (= tp!453405 b_and!108285)))

(declare-fun b!1551036 () Bool)

(declare-fun b_free!41197 () Bool)

(declare-fun b_next!41901 () Bool)

(assert (=> b!1551036 (= b_free!41197 (not b_next!41901))))

(declare-fun tp!453394 () Bool)

(declare-fun b_and!108287 () Bool)

(assert (=> b!1551036 (= tp!453394 b_and!108287)))

(declare-fun b!1551051 () Bool)

(declare-fun b_free!41199 () Bool)

(declare-fun b_next!41903 () Bool)

(assert (=> b!1551051 (= b_free!41199 (not b_next!41903))))

(declare-fun tp!453395 () Bool)

(declare-fun b_and!108289 () Bool)

(assert (=> b!1551051 (= tp!453395 b_and!108289)))

(declare-fun b!1551037 () Bool)

(declare-fun b_free!41201 () Bool)

(declare-fun b_next!41905 () Bool)

(assert (=> b!1551037 (= b_free!41201 (not b_next!41905))))

(declare-fun tp!453386 () Bool)

(declare-fun b_and!108291 () Bool)

(assert (=> b!1551037 (= tp!453386 b_and!108291)))

(declare-fun b!1551076 () Bool)

(declare-fun e!994804 () Bool)

(assert (=> b!1551076 (= e!994804 true)))

(declare-fun b!1551075 () Bool)

(declare-fun e!994803 () Bool)

(assert (=> b!1551075 (= e!994803 e!994804)))

(declare-fun b!1551052 () Bool)

(assert (=> b!1551052 e!994803))

(assert (= b!1551075 b!1551076))

(assert (= b!1551052 b!1551075))

(declare-fun lambda!65652 () Int)

(declare-datatypes ((C!8712 0))(
  ( (C!8713 (val!4928 Int)) )
))
(declare-datatypes ((List!16834 0))(
  ( (Nil!16766) (Cons!16766 (h!22167 C!8712) (t!141237 List!16834)) )
))
(declare-datatypes ((IArray!11119 0))(
  ( (IArray!11120 (innerList!5617 List!16834)) )
))
(declare-datatypes ((Conc!5557 0))(
  ( (Node!5557 (left!13641 Conc!5557) (right!13971 Conc!5557) (csize!11344 Int) (cheight!5768 Int)) (Leaf!8236 (xs!8357 IArray!11119) (csize!11345 Int)) (Empty!5557) )
))
(declare-datatypes ((BalanceConc!11056 0))(
  ( (BalanceConc!11057 (c!252285 Conc!5557)) )
))
(declare-datatypes ((List!16835 0))(
  ( (Nil!16767) (Cons!16767 (h!22168 (_ BitVec 16)) (t!141238 List!16835)) )
))
(declare-datatypes ((TokenValue!3029 0))(
  ( (FloatLiteralValue!6058 (text!21648 List!16835)) (TokenValueExt!3028 (__x!11097 Int)) (Broken!15145 (value!93376 List!16835)) (Object!3096) (End!3029) (Def!3029) (Underscore!3029) (Match!3029) (Else!3029) (Error!3029) (Case!3029) (If!3029) (Extends!3029) (Abstract!3029) (Class!3029) (Val!3029) (DelimiterValue!6058 (del!3089 List!16835)) (KeywordValue!3035 (value!93377 List!16835)) (CommentValue!6058 (value!93378 List!16835)) (WhitespaceValue!6058 (value!93379 List!16835)) (IndentationValue!3029 (value!93380 List!16835)) (String!19432) (Int32!3029) (Broken!15146 (value!93381 List!16835)) (Boolean!3030) (Unit!26016) (OperatorValue!3032 (op!3089 List!16835)) (IdentifierValue!6058 (value!93382 List!16835)) (IdentifierValue!6059 (value!93383 List!16835)) (WhitespaceValue!6059 (value!93384 List!16835)) (True!6058) (False!6058) (Broken!15147 (value!93385 List!16835)) (Broken!15148 (value!93386 List!16835)) (True!6059) (RightBrace!3029) (RightBracket!3029) (Colon!3029) (Null!3029) (Comma!3029) (LeftBracket!3029) (False!6059) (LeftBrace!3029) (ImaginaryLiteralValue!3029 (text!21649 List!16835)) (StringLiteralValue!9087 (value!93387 List!16835)) (EOFValue!3029 (value!93388 List!16835)) (IdentValue!3029 (value!93389 List!16835)) (DelimiterValue!6059 (value!93390 List!16835)) (DedentValue!3029 (value!93391 List!16835)) (NewLineValue!3029 (value!93392 List!16835)) (IntegerValue!9087 (value!93393 (_ BitVec 32)) (text!21650 List!16835)) (IntegerValue!9088 (value!93394 Int) (text!21651 List!16835)) (Times!3029) (Or!3029) (Equal!3029) (Minus!3029) (Broken!15149 (value!93395 List!16835)) (And!3029) (Div!3029) (LessEqual!3029) (Mod!3029) (Concat!7296) (Not!3029) (Plus!3029) (SpaceValue!3029 (value!93396 List!16835)) (IntegerValue!9089 (value!93397 Int) (text!21652 List!16835)) (StringLiteralValue!9088 (text!21653 List!16835)) (FloatLiteralValue!6059 (text!21654 List!16835)) (BytesLiteralValue!3029 (value!93398 List!16835)) (CommentValue!6059 (value!93399 List!16835)) (StringLiteralValue!9089 (value!93400 List!16835)) (ErrorTokenValue!3029 (msg!3090 List!16835)) )
))
(declare-datatypes ((Regex!4267 0))(
  ( (ElementMatch!4267 (c!252286 C!8712)) (Concat!7297 (regOne!9046 Regex!4267) (regTwo!9046 Regex!4267)) (EmptyExpr!4267) (Star!4267 (reg!4596 Regex!4267)) (EmptyLang!4267) (Union!4267 (regOne!9047 Regex!4267) (regTwo!9047 Regex!4267)) )
))
(declare-datatypes ((String!19433 0))(
  ( (String!19434 (value!93401 String)) )
))
(declare-datatypes ((TokenValueInjection!5718 0))(
  ( (TokenValueInjection!5719 (toValue!4303 Int) (toChars!4162 Int)) )
))
(declare-datatypes ((Rule!5678 0))(
  ( (Rule!5679 (regex!2939 Regex!4267) (tag!3203 String!19433) (isSeparator!2939 Bool) (transformation!2939 TokenValueInjection!5718)) )
))
(declare-fun rule!240 () Rule!5678)

(declare-fun order!9841 () Int)

(declare-fun order!9843 () Int)

(declare-fun dynLambda!7415 (Int Int) Int)

(declare-fun dynLambda!7416 (Int Int) Int)

(assert (=> b!1551076 (< (dynLambda!7415 order!9841 (toValue!4303 (transformation!2939 rule!240))) (dynLambda!7416 order!9843 lambda!65652))))

(declare-fun order!9845 () Int)

(declare-fun dynLambda!7417 (Int Int) Int)

(assert (=> b!1551076 (< (dynLambda!7417 order!9845 (toChars!4162 (transformation!2939 rule!240))) (dynLambda!7416 order!9843 lambda!65652))))

(declare-fun b!1551033 () Bool)

(declare-fun e!994791 () Bool)

(declare-fun e!994784 () Bool)

(assert (=> b!1551033 (= e!994791 e!994784)))

(declare-fun b!1551034 () Bool)

(declare-fun e!994798 () Bool)

(declare-fun e!994782 () Bool)

(assert (=> b!1551034 (= e!994798 e!994782)))

(declare-fun b!1551035 () Bool)

(declare-fun e!994777 () Bool)

(declare-fun e!994783 () Bool)

(assert (=> b!1551035 (= e!994777 e!994783)))

(declare-datatypes ((List!16836 0))(
  ( (Nil!16768) (Cons!16768 (h!22169 Regex!4267) (t!141239 List!16836)) )
))
(declare-datatypes ((Context!1570 0))(
  ( (Context!1571 (exprs!1285 List!16836)) )
))
(declare-datatypes ((tuple2!16166 0))(
  ( (tuple2!16167 (_1!9399 Context!1570) (_2!9399 C!8712)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16168 0))(
  ( (tuple2!16169 (_1!9400 tuple2!16166) (_2!9400 (InoxSet Context!1570))) )
))
(declare-datatypes ((List!16837 0))(
  ( (Nil!16769) (Cons!16769 (h!22170 tuple2!16168) (t!141240 List!16837)) )
))
(declare-datatypes ((array!6080 0))(
  ( (array!6081 (arr!2715 (Array (_ BitVec 32) List!16837)) (size!13562 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1717 0))(
  ( (HashableExt!1716 (__x!11098 Int)) )
))
(declare-datatypes ((array!6082 0))(
  ( (array!6083 (arr!2716 (Array (_ BitVec 32) (_ BitVec 64))) (size!13563 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3546 0))(
  ( (LongMapFixedSize!3547 (defaultEntry!2133 Int) (mask!4995 (_ BitVec 32)) (extraKeys!2020 (_ BitVec 32)) (zeroValue!2030 List!16837) (minValue!2030 List!16837) (_size!3627 (_ BitVec 32)) (_keys!2067 array!6082) (_values!2052 array!6080) (_vacant!1834 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6977 0))(
  ( (Cell!6978 (v!23600 LongMapFixedSize!3546)) )
))
(declare-datatypes ((MutLongMap!1773 0))(
  ( (LongMap!1773 (underlying!3755 Cell!6977)) (MutLongMapExt!1772 (__x!11099 Int)) )
))
(declare-datatypes ((Cell!6979 0))(
  ( (Cell!6980 (v!23601 MutLongMap!1773)) )
))
(declare-datatypes ((MutableMap!1717 0))(
  ( (MutableMapExt!1716 (__x!11100 Int)) (HashMap!1717 (underlying!3756 Cell!6979) (hashF!3636 Hashable!1717) (_size!3628 (_ BitVec 32)) (defaultValue!1877 Int)) )
))
(declare-datatypes ((CacheUp!1044 0))(
  ( (CacheUp!1045 (cache!2098 MutableMap!1717)) )
))
(declare-fun cacheUp!755 () CacheUp!1044)

(declare-fun e!994789 () Bool)

(declare-fun tp!453387 () Bool)

(declare-fun e!994797 () Bool)

(declare-fun tp!453385 () Bool)

(declare-fun array_inv!1953 (array!6082) Bool)

(declare-fun array_inv!1954 (array!6080) Bool)

(assert (=> b!1551036 (= e!994797 (and tp!453394 tp!453387 tp!453385 (array_inv!1953 (_keys!2067 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) (array_inv!1954 (_values!2052 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) e!994789))))

(declare-fun mapNonEmpty!8217 () Bool)

(declare-fun mapRes!8218 () Bool)

(declare-fun tp!453401 () Bool)

(declare-fun tp!453382 () Bool)

(assert (=> mapNonEmpty!8217 (= mapRes!8218 (and tp!453401 tp!453382))))

(declare-datatypes ((tuple3!1754 0))(
  ( (tuple3!1755 (_1!9401 (InoxSet Context!1570)) (_2!9401 Int) (_3!1316 Int)) )
))
(declare-datatypes ((tuple2!16170 0))(
  ( (tuple2!16171 (_1!9402 tuple3!1754) (_2!9402 Int)) )
))
(declare-datatypes ((List!16838 0))(
  ( (Nil!16770) (Cons!16770 (h!22171 tuple2!16170) (t!141241 List!16838)) )
))
(declare-fun mapRest!8218 () (Array (_ BitVec 32) List!16838))

(declare-fun mapValue!8217 () List!16838)

(declare-fun mapKey!8217 () (_ BitVec 32))

(declare-datatypes ((array!6084 0))(
  ( (array!6085 (arr!2717 (Array (_ BitVec 32) List!16838)) (size!13564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3548 0))(
  ( (LongMapFixedSize!3549 (defaultEntry!2134 Int) (mask!4996 (_ BitVec 32)) (extraKeys!2021 (_ BitVec 32)) (zeroValue!2031 List!16838) (minValue!2031 List!16838) (_size!3629 (_ BitVec 32)) (_keys!2068 array!6082) (_values!2053 array!6084) (_vacant!1835 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6981 0))(
  ( (Cell!6982 (v!23602 LongMapFixedSize!3548)) )
))
(declare-datatypes ((Hashable!1718 0))(
  ( (HashableExt!1717 (__x!11101 Int)) )
))
(declare-datatypes ((MutLongMap!1774 0))(
  ( (LongMap!1774 (underlying!3757 Cell!6981)) (MutLongMapExt!1773 (__x!11102 Int)) )
))
(declare-datatypes ((Cell!6983 0))(
  ( (Cell!6984 (v!23603 MutLongMap!1774)) )
))
(declare-datatypes ((MutableMap!1718 0))(
  ( (MutableMapExt!1717 (__x!11103 Int)) (HashMap!1718 (underlying!3758 Cell!6983) (hashF!3637 Hashable!1718) (_size!3630 (_ BitVec 32)) (defaultValue!1878 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!470 0))(
  ( (CacheFurthestNullable!471 (cache!2099 MutableMap!1718) (totalInput!2440 BalanceConc!11056)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!470)

(assert (=> mapNonEmpty!8217 (= (arr!2717 (_values!2053 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) (store mapRest!8218 mapKey!8217 mapValue!8217))))

(declare-fun e!994788 () Bool)

(declare-fun e!994765 () Bool)

(assert (=> b!1551037 (= e!994788 (and e!994765 tp!453386))))

(declare-fun mapIsEmpty!8217 () Bool)

(declare-fun mapRes!8219 () Bool)

(assert (=> mapIsEmpty!8217 mapRes!8219))

(declare-fun b!1551038 () Bool)

(declare-fun res!693053 () Bool)

(declare-fun e!994767 () Bool)

(assert (=> b!1551038 (=> (not res!693053) (not e!994767))))

(declare-fun totalInput!568 () BalanceConc!11056)

(declare-datatypes ((tuple3!1756 0))(
  ( (tuple3!1757 (_1!9403 Regex!4267) (_2!9403 Context!1570) (_3!1317 C!8712)) )
))
(declare-datatypes ((tuple2!16172 0))(
  ( (tuple2!16173 (_1!9404 tuple3!1756) (_2!9404 (InoxSet Context!1570))) )
))
(declare-datatypes ((List!16839 0))(
  ( (Nil!16771) (Cons!16771 (h!22172 tuple2!16172) (t!141242 List!16839)) )
))
(declare-datatypes ((array!6086 0))(
  ( (array!6087 (arr!2718 (Array (_ BitVec 32) List!16839)) (size!13565 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3550 0))(
  ( (LongMapFixedSize!3551 (defaultEntry!2135 Int) (mask!4997 (_ BitVec 32)) (extraKeys!2022 (_ BitVec 32)) (zeroValue!2032 List!16839) (minValue!2032 List!16839) (_size!3631 (_ BitVec 32)) (_keys!2069 array!6082) (_values!2054 array!6086) (_vacant!1836 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6985 0))(
  ( (Cell!6986 (v!23604 LongMapFixedSize!3550)) )
))
(declare-datatypes ((MutLongMap!1775 0))(
  ( (LongMap!1775 (underlying!3759 Cell!6985)) (MutLongMapExt!1774 (__x!11104 Int)) )
))
(declare-datatypes ((Cell!6987 0))(
  ( (Cell!6988 (v!23605 MutLongMap!1775)) )
))
(declare-datatypes ((Hashable!1719 0))(
  ( (HashableExt!1718 (__x!11105 Int)) )
))
(declare-datatypes ((MutableMap!1719 0))(
  ( (MutableMapExt!1718 (__x!11106 Int)) (HashMap!1719 (underlying!3760 Cell!6987) (hashF!3638 Hashable!1719) (_size!3632 (_ BitVec 32)) (defaultValue!1879 Int)) )
))
(declare-datatypes ((CacheDown!1048 0))(
  ( (CacheDown!1049 (cache!2100 MutableMap!1719)) )
))
(declare-fun cacheDown!768 () CacheDown!1048)

(declare-fun input!1676 () BalanceConc!11056)

(declare-fun isEmpty!10091 (BalanceConc!11056) Bool)

(declare-datatypes ((tuple2!16174 0))(
  ( (tuple2!16175 (_1!9405 BalanceConc!11056) (_2!9405 BalanceConc!11056)) )
))
(declare-datatypes ((tuple4!878 0))(
  ( (tuple4!879 (_1!9406 tuple2!16174) (_2!9406 CacheUp!1044) (_3!1318 CacheDown!1048) (_4!439 CacheFurthestNullable!470)) )
))
(declare-fun findLongestMatchWithZipperSequenceV3Mem!44 (Regex!4267 BalanceConc!11056 BalanceConc!11056 CacheUp!1044 CacheDown!1048 CacheFurthestNullable!470) tuple4!878)

(assert (=> b!1551038 (= res!693053 (not (isEmpty!10091 (_1!9405 (_1!9406 (findLongestMatchWithZipperSequenceV3Mem!44 (regex!2939 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1551040 () Bool)

(declare-fun tp!453402 () Bool)

(declare-fun e!994776 () Bool)

(declare-fun e!994792 () Bool)

(declare-fun inv!22025 (String!19433) Bool)

(declare-fun inv!22032 (TokenValueInjection!5718) Bool)

(assert (=> b!1551040 (= e!994792 (and tp!453402 (inv!22025 (tag!3203 rule!240)) (inv!22032 (transformation!2939 rule!240)) e!994776))))

(declare-fun e!994785 () Bool)

(declare-fun e!994774 () Bool)

(assert (=> b!1551041 (= e!994785 (and e!994774 tp!453379))))

(declare-fun tp!453403 () Bool)

(declare-fun e!994773 () Bool)

(declare-fun e!994795 () Bool)

(declare-fun tp!453399 () Bool)

(declare-fun array_inv!1955 (array!6084) Bool)

(assert (=> b!1551042 (= e!994795 (and tp!453396 tp!453403 tp!453399 (array_inv!1953 (_keys!2068 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) (array_inv!1955 (_values!2053 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) e!994773))))

(declare-fun b!1551043 () Bool)

(declare-fun e!994771 () Bool)

(declare-fun tp!453397 () Bool)

(assert (=> b!1551043 (= e!994771 (and tp!453397 mapRes!8219))))

(declare-fun condMapEmpty!8218 () Bool)

(declare-fun mapDefault!8218 () List!16839)

(assert (=> b!1551043 (= condMapEmpty!8218 (= (arr!2718 (_values!2054 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16839)) mapDefault!8218)))))

(declare-fun b!1551044 () Bool)

(declare-fun res!693051 () Bool)

(assert (=> b!1551044 (=> (not res!693051) (not e!994767))))

(assert (=> b!1551044 (= res!693051 (= (totalInput!2440 cacheFurthestNullable!103) totalInput!568))))

(declare-fun e!994770 () Bool)

(declare-fun e!994768 () Bool)

(assert (=> b!1551045 (= e!994770 (and e!994768 tp!453405))))

(declare-fun b!1551046 () Bool)

(declare-fun e!994793 () Bool)

(assert (=> b!1551046 (= e!994793 e!994767)))

(declare-fun res!693048 () Bool)

(assert (=> b!1551046 (=> (not res!693048) (not e!994767))))

(declare-fun lt!537331 () List!16834)

(declare-fun isSuffix!370 (List!16834 List!16834) Bool)

(declare-fun list!6479 (BalanceConc!11056) List!16834)

(assert (=> b!1551046 (= res!693048 (isSuffix!370 lt!537331 (list!6479 totalInput!568)))))

(assert (=> b!1551046 (= lt!537331 (list!6479 input!1676))))

(declare-fun mapNonEmpty!8218 () Bool)

(declare-fun tp!453400 () Bool)

(declare-fun tp!453381 () Bool)

(assert (=> mapNonEmpty!8218 (= mapRes!8219 (and tp!453400 tp!453381))))

(declare-fun mapValue!8219 () List!16839)

(declare-fun mapKey!8219 () (_ BitVec 32))

(declare-fun mapRest!8217 () (Array (_ BitVec 32) List!16839))

(assert (=> mapNonEmpty!8218 (= (arr!2718 (_values!2054 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) (store mapRest!8217 mapKey!8219 mapValue!8219))))

(declare-fun mapIsEmpty!8218 () Bool)

(declare-fun mapRes!8217 () Bool)

(assert (=> mapIsEmpty!8218 mapRes!8217))

(declare-fun b!1551047 () Bool)

(declare-fun e!994786 () Bool)

(declare-fun e!994766 () Bool)

(declare-fun inv!22033 (BalanceConc!11056) Bool)

(assert (=> b!1551047 (= e!994766 (and e!994785 (inv!22033 (totalInput!2440 cacheFurthestNullable!103)) e!994786))))

(declare-fun b!1551048 () Bool)

(declare-fun tp!453390 () Bool)

(declare-fun inv!22034 (Conc!5557) Bool)

(assert (=> b!1551048 (= e!994786 (and (inv!22034 (c!252285 (totalInput!2440 cacheFurthestNullable!103))) tp!453390))))

(assert (=> b!1551049 (= e!994776 (and tp!453398 tp!453388))))

(declare-fun b!1551050 () Bool)

(assert (=> b!1551050 (= e!994784 e!994795)))

(declare-fun tp!453384 () Bool)

(declare-fun e!994778 () Bool)

(declare-fun tp!453380 () Bool)

(declare-fun array_inv!1956 (array!6086) Bool)

(assert (=> b!1551051 (= e!994778 (and tp!453395 tp!453380 tp!453384 (array_inv!1953 (_keys!2069 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) (array_inv!1956 (_values!2054 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) e!994771))))

(declare-fun e!994769 () Bool)

(declare-fun Forall!602 (Int) Bool)

(assert (=> b!1551052 (= e!994769 (Forall!602 lambda!65652))))

(declare-fun b!1551053 () Bool)

(declare-fun res!693046 () Bool)

(assert (=> b!1551053 (=> (not res!693046) (not e!994793))))

(declare-fun valid!1422 (CacheUp!1044) Bool)

(assert (=> b!1551053 (= res!693046 (valid!1422 cacheUp!755))))

(declare-fun b!1551054 () Bool)

(declare-fun lt!537330 () MutLongMap!1775)

(get-info :version)

(assert (=> b!1551054 (= e!994768 (and e!994777 ((_ is LongMap!1775) lt!537330)))))

(assert (=> b!1551054 (= lt!537330 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))

(declare-fun mapNonEmpty!8219 () Bool)

(declare-fun tp!453389 () Bool)

(declare-fun tp!453391 () Bool)

(assert (=> mapNonEmpty!8219 (= mapRes!8217 (and tp!453389 tp!453391))))

(declare-fun mapValue!8218 () List!16837)

(declare-fun mapRest!8219 () (Array (_ BitVec 32) List!16837))

(declare-fun mapKey!8218 () (_ BitVec 32))

(assert (=> mapNonEmpty!8219 (= (arr!2715 (_values!2052 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) (store mapRest!8219 mapKey!8218 mapValue!8218))))

(declare-fun b!1551055 () Bool)

(declare-fun res!693052 () Bool)

(assert (=> b!1551055 (=> (not res!693052) (not e!994793))))

(declare-fun valid!1423 (CacheFurthestNullable!470) Bool)

(assert (=> b!1551055 (= res!693052 (valid!1423 cacheFurthestNullable!103))))

(declare-fun b!1551056 () Bool)

(assert (=> b!1551056 (= e!994782 e!994797)))

(declare-fun b!1551057 () Bool)

(declare-fun e!994781 () Bool)

(assert (=> b!1551057 (= e!994781 e!994770)))

(declare-fun b!1551058 () Bool)

(declare-fun tp!453404 () Bool)

(assert (=> b!1551058 (= e!994773 (and tp!453404 mapRes!8218))))

(declare-fun condMapEmpty!8219 () Bool)

(declare-fun mapDefault!8219 () List!16838)

(assert (=> b!1551058 (= condMapEmpty!8219 (= (arr!2717 (_values!2053 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16838)) mapDefault!8219)))))

(declare-fun b!1551059 () Bool)

(declare-fun res!693049 () Bool)

(assert (=> b!1551059 (=> (not res!693049) (not e!994793))))

(declare-fun valid!1424 (CacheDown!1048) Bool)

(assert (=> b!1551059 (= res!693049 (valid!1424 cacheDown!768))))

(declare-fun mapIsEmpty!8219 () Bool)

(assert (=> mapIsEmpty!8219 mapRes!8218))

(declare-fun b!1551060 () Bool)

(declare-fun e!994775 () Bool)

(declare-fun tp!453392 () Bool)

(assert (=> b!1551060 (= e!994775 (and (inv!22034 (c!252285 input!1676)) tp!453392))))

(declare-fun b!1551061 () Bool)

(declare-fun e!994796 () Bool)

(declare-datatypes ((tuple2!16176 0))(
  ( (tuple2!16177 (_1!9407 List!16834) (_2!9407 List!16834)) )
))
(declare-fun lt!537327 () tuple2!16176)

(declare-fun matchR!1873 (Regex!4267 List!16834) Bool)

(assert (=> b!1551061 (= e!994796 (matchR!1873 (regex!2939 rule!240) (_1!9407 lt!537327)))))

(declare-fun res!693045 () Bool)

(assert (=> start!143694 (=> (not res!693045) (not e!994793))))

(declare-datatypes ((LexerInterface!2578 0))(
  ( (LexerInterfaceExt!2575 (__x!11107 Int)) (Lexer!2576) )
))
(declare-fun thiss!16438 () LexerInterface!2578)

(assert (=> start!143694 (= res!693045 ((_ is Lexer!2576) thiss!16438))))

(assert (=> start!143694 e!994793))

(declare-fun e!994794 () Bool)

(assert (=> start!143694 (and (inv!22033 totalInput!568) e!994794)))

(declare-fun e!994772 () Bool)

(declare-fun inv!22035 (CacheUp!1044) Bool)

(assert (=> start!143694 (and (inv!22035 cacheUp!755) e!994772)))

(declare-fun inv!22036 (CacheFurthestNullable!470) Bool)

(assert (=> start!143694 (and (inv!22036 cacheFurthestNullable!103) e!994766)))

(assert (=> start!143694 (and (inv!22033 input!1676) e!994775)))

(assert (=> start!143694 e!994792))

(declare-fun inv!22037 (CacheDown!1048) Bool)

(assert (=> start!143694 (and (inv!22037 cacheDown!768) e!994781)))

(assert (=> start!143694 true))

(declare-fun b!1551039 () Bool)

(assert (=> b!1551039 (= e!994767 (not e!994769))))

(declare-fun res!693050 () Bool)

(assert (=> b!1551039 (=> res!693050 e!994769)))

(declare-fun semiInverseModEq!1106 (Int Int) Bool)

(assert (=> b!1551039 (= res!693050 (not (semiInverseModEq!1106 (toChars!4162 (transformation!2939 rule!240)) (toValue!4303 (transformation!2939 rule!240)))))))

(declare-datatypes ((Unit!26017 0))(
  ( (Unit!26018) )
))
(declare-fun lt!537328 () Unit!26017)

(declare-fun lemmaInv!420 (TokenValueInjection!5718) Unit!26017)

(assert (=> b!1551039 (= lt!537328 (lemmaInv!420 (transformation!2939 rule!240)))))

(assert (=> b!1551039 e!994796))

(declare-fun res!693047 () Bool)

(assert (=> b!1551039 (=> res!693047 e!994796)))

(declare-fun isEmpty!10092 (List!16834) Bool)

(assert (=> b!1551039 (= res!693047 (isEmpty!10092 (_1!9407 lt!537327)))))

(declare-fun findLongestMatchInner!326 (Regex!4267 List!16834 Int List!16834 List!16834 Int) tuple2!16176)

(declare-fun size!13566 (List!16834) Int)

(assert (=> b!1551039 (= lt!537327 (findLongestMatchInner!326 (regex!2939 rule!240) Nil!16766 (size!13566 Nil!16766) lt!537331 lt!537331 (size!13566 lt!537331)))))

(declare-fun lt!537329 () Unit!26017)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!310 (Regex!4267 List!16834) Unit!26017)

(assert (=> b!1551039 (= lt!537329 (longestMatchIsAcceptedByMatchOrIsEmpty!310 (regex!2939 rule!240) lt!537331))))

(declare-fun b!1551062 () Bool)

(declare-fun tp!453393 () Bool)

(assert (=> b!1551062 (= e!994794 (and (inv!22034 (c!252285 totalInput!568)) tp!453393))))

(declare-fun b!1551063 () Bool)

(declare-fun res!693044 () Bool)

(assert (=> b!1551063 (=> (not res!693044) (not e!994793))))

(declare-fun ruleValid!679 (LexerInterface!2578 Rule!5678) Bool)

(assert (=> b!1551063 (= res!693044 (ruleValid!679 thiss!16438 rule!240))))

(declare-fun b!1551064 () Bool)

(declare-fun lt!537332 () MutLongMap!1774)

(assert (=> b!1551064 (= e!994774 (and e!994791 ((_ is LongMap!1774) lt!537332)))))

(assert (=> b!1551064 (= lt!537332 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))

(declare-fun b!1551065 () Bool)

(assert (=> b!1551065 (= e!994772 e!994788)))

(declare-fun b!1551066 () Bool)

(assert (=> b!1551066 (= e!994783 e!994778)))

(declare-fun b!1551067 () Bool)

(declare-fun lt!537326 () MutLongMap!1773)

(assert (=> b!1551067 (= e!994765 (and e!994798 ((_ is LongMap!1773) lt!537326)))))

(assert (=> b!1551067 (= lt!537326 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))

(declare-fun b!1551068 () Bool)

(declare-fun tp!453383 () Bool)

(assert (=> b!1551068 (= e!994789 (and tp!453383 mapRes!8217))))

(declare-fun condMapEmpty!8217 () Bool)

(declare-fun mapDefault!8217 () List!16837)

(assert (=> b!1551068 (= condMapEmpty!8217 (= (arr!2715 (_values!2052 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16837)) mapDefault!8217)))))

(assert (= (and start!143694 res!693045) b!1551063))

(assert (= (and b!1551063 res!693044) b!1551053))

(assert (= (and b!1551053 res!693046) b!1551059))

(assert (= (and b!1551059 res!693049) b!1551055))

(assert (= (and b!1551055 res!693052) b!1551046))

(assert (= (and b!1551046 res!693048) b!1551044))

(assert (= (and b!1551044 res!693051) b!1551038))

(assert (= (and b!1551038 res!693053) b!1551039))

(assert (= (and b!1551039 (not res!693047)) b!1551061))

(assert (= (and b!1551039 (not res!693050)) b!1551052))

(assert (= start!143694 b!1551062))

(assert (= (and b!1551068 condMapEmpty!8217) mapIsEmpty!8218))

(assert (= (and b!1551068 (not condMapEmpty!8217)) mapNonEmpty!8219))

(assert (= b!1551036 b!1551068))

(assert (= b!1551056 b!1551036))

(assert (= b!1551034 b!1551056))

(assert (= (and b!1551067 ((_ is LongMap!1773) (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))) b!1551034))

(assert (= b!1551037 b!1551067))

(assert (= (and b!1551065 ((_ is HashMap!1717) (cache!2098 cacheUp!755))) b!1551037))

(assert (= start!143694 b!1551065))

(assert (= (and b!1551058 condMapEmpty!8219) mapIsEmpty!8219))

(assert (= (and b!1551058 (not condMapEmpty!8219)) mapNonEmpty!8217))

(assert (= b!1551042 b!1551058))

(assert (= b!1551050 b!1551042))

(assert (= b!1551033 b!1551050))

(assert (= (and b!1551064 ((_ is LongMap!1774) (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))) b!1551033))

(assert (= b!1551041 b!1551064))

(assert (= (and b!1551047 ((_ is HashMap!1718) (cache!2099 cacheFurthestNullable!103))) b!1551041))

(assert (= b!1551047 b!1551048))

(assert (= start!143694 b!1551047))

(assert (= start!143694 b!1551060))

(assert (= b!1551040 b!1551049))

(assert (= start!143694 b!1551040))

(assert (= (and b!1551043 condMapEmpty!8218) mapIsEmpty!8217))

(assert (= (and b!1551043 (not condMapEmpty!8218)) mapNonEmpty!8218))

(assert (= b!1551051 b!1551043))

(assert (= b!1551066 b!1551051))

(assert (= b!1551035 b!1551066))

(assert (= (and b!1551054 ((_ is LongMap!1775) (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))) b!1551035))

(assert (= b!1551045 b!1551054))

(assert (= (and b!1551057 ((_ is HashMap!1719) (cache!2100 cacheDown!768))) b!1551045))

(assert (= start!143694 b!1551057))

(declare-fun m!1823597 () Bool)

(assert (=> b!1551052 m!1823597))

(declare-fun m!1823599 () Bool)

(assert (=> b!1551061 m!1823599))

(declare-fun m!1823601 () Bool)

(assert (=> b!1551062 m!1823601))

(declare-fun m!1823603 () Bool)

(assert (=> mapNonEmpty!8219 m!1823603))

(declare-fun m!1823605 () Bool)

(assert (=> b!1551040 m!1823605))

(declare-fun m!1823607 () Bool)

(assert (=> b!1551040 m!1823607))

(declare-fun m!1823609 () Bool)

(assert (=> b!1551053 m!1823609))

(declare-fun m!1823611 () Bool)

(assert (=> b!1551046 m!1823611))

(assert (=> b!1551046 m!1823611))

(declare-fun m!1823613 () Bool)

(assert (=> b!1551046 m!1823613))

(declare-fun m!1823615 () Bool)

(assert (=> b!1551046 m!1823615))

(declare-fun m!1823617 () Bool)

(assert (=> b!1551055 m!1823617))

(declare-fun m!1823619 () Bool)

(assert (=> b!1551048 m!1823619))

(declare-fun m!1823621 () Bool)

(assert (=> b!1551042 m!1823621))

(declare-fun m!1823623 () Bool)

(assert (=> b!1551042 m!1823623))

(declare-fun m!1823625 () Bool)

(assert (=> b!1551047 m!1823625))

(declare-fun m!1823627 () Bool)

(assert (=> b!1551051 m!1823627))

(declare-fun m!1823629 () Bool)

(assert (=> b!1551051 m!1823629))

(declare-fun m!1823631 () Bool)

(assert (=> b!1551039 m!1823631))

(declare-fun m!1823633 () Bool)

(assert (=> b!1551039 m!1823633))

(declare-fun m!1823635 () Bool)

(assert (=> b!1551039 m!1823635))

(declare-fun m!1823637 () Bool)

(assert (=> b!1551039 m!1823637))

(declare-fun m!1823639 () Bool)

(assert (=> b!1551039 m!1823639))

(assert (=> b!1551039 m!1823637))

(assert (=> b!1551039 m!1823639))

(declare-fun m!1823641 () Bool)

(assert (=> b!1551039 m!1823641))

(declare-fun m!1823643 () Bool)

(assert (=> b!1551039 m!1823643))

(declare-fun m!1823645 () Bool)

(assert (=> b!1551059 m!1823645))

(declare-fun m!1823647 () Bool)

(assert (=> b!1551060 m!1823647))

(declare-fun m!1823649 () Bool)

(assert (=> b!1551036 m!1823649))

(declare-fun m!1823651 () Bool)

(assert (=> b!1551036 m!1823651))

(declare-fun m!1823653 () Bool)

(assert (=> start!143694 m!1823653))

(declare-fun m!1823655 () Bool)

(assert (=> start!143694 m!1823655))

(declare-fun m!1823657 () Bool)

(assert (=> start!143694 m!1823657))

(declare-fun m!1823659 () Bool)

(assert (=> start!143694 m!1823659))

(declare-fun m!1823661 () Bool)

(assert (=> start!143694 m!1823661))

(declare-fun m!1823663 () Bool)

(assert (=> b!1551063 m!1823663))

(declare-fun m!1823665 () Bool)

(assert (=> mapNonEmpty!8217 m!1823665))

(declare-fun m!1823667 () Bool)

(assert (=> mapNonEmpty!8218 m!1823667))

(declare-fun m!1823669 () Bool)

(assert (=> b!1551038 m!1823669))

(declare-fun m!1823671 () Bool)

(assert (=> b!1551038 m!1823671))

(check-sat (not mapNonEmpty!8218) (not mapNonEmpty!8219) (not b!1551063) (not b_next!41899) (not b!1551038) b_and!108277 b_and!108287 (not b!1551042) (not b_next!41895) (not b!1551055) (not b!1551068) b_and!108281 (not b!1551058) (not b!1551046) (not b_next!41891) (not b!1551060) (not b_next!41901) (not b!1551048) (not b_next!41897) (not b_next!41903) (not b!1551061) b_and!108289 b_and!108291 (not b!1551059) (not b!1551036) (not start!143694) b_and!108283 (not b!1551047) (not b!1551043) (not b_next!41893) (not b!1551040) (not b!1551051) (not b!1551052) b_and!108285 (not b!1551053) b_and!108279 (not b!1551039) (not b_next!41905) (not b!1551062) (not mapNonEmpty!8217))
(check-sat b_and!108281 (not b_next!41891) (not b_next!41901) b_and!108289 b_and!108291 (not b_next!41899) b_and!108283 (not b_next!41893) b_and!108285 b_and!108277 b_and!108279 b_and!108287 (not b_next!41895) (not b_next!41905) (not b_next!41897) (not b_next!41903))
(get-model)

(declare-fun d!460243 () Bool)

(assert (=> d!460243 (= (array_inv!1953 (_keys!2068 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) (bvsge (size!13563 (_keys!2068 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551042 d!460243))

(declare-fun d!460245 () Bool)

(assert (=> d!460245 (= (array_inv!1955 (_values!2053 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) (bvsge (size!13564 (_values!2053 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551042 d!460245))

(declare-fun d!460247 () Bool)

(declare-fun validCacheMapDown!157 (MutableMap!1719) Bool)

(assert (=> d!460247 (= (valid!1424 cacheDown!768) (validCacheMapDown!157 (cache!2100 cacheDown!768)))))

(declare-fun bs!387093 () Bool)

(assert (= bs!387093 d!460247))

(declare-fun m!1823673 () Bool)

(assert (=> bs!387093 m!1823673))

(assert (=> b!1551059 d!460247))

(declare-fun d!460249 () Bool)

(assert (=> d!460249 (= (inv!22025 (tag!3203 rule!240)) (= (mod (str.len (value!93401 (tag!3203 rule!240))) 2) 0))))

(assert (=> b!1551040 d!460249))

(declare-fun d!460251 () Bool)

(declare-fun res!693058 () Bool)

(declare-fun e!994807 () Bool)

(assert (=> d!460251 (=> (not res!693058) (not e!994807))))

(assert (=> d!460251 (= res!693058 (semiInverseModEq!1106 (toChars!4162 (transformation!2939 rule!240)) (toValue!4303 (transformation!2939 rule!240))))))

(assert (=> d!460251 (= (inv!22032 (transformation!2939 rule!240)) e!994807)))

(declare-fun b!1551079 () Bool)

(declare-fun equivClasses!1052 (Int Int) Bool)

(assert (=> b!1551079 (= e!994807 (equivClasses!1052 (toChars!4162 (transformation!2939 rule!240)) (toValue!4303 (transformation!2939 rule!240))))))

(assert (= (and d!460251 res!693058) b!1551079))

(assert (=> d!460251 m!1823631))

(declare-fun m!1823675 () Bool)

(assert (=> b!1551079 m!1823675))

(assert (=> b!1551040 d!460251))

(declare-fun d!460253 () Bool)

(declare-fun validCacheMapUp!157 (MutableMap!1717) Bool)

(assert (=> d!460253 (= (valid!1422 cacheUp!755) (validCacheMapUp!157 (cache!2098 cacheUp!755)))))

(declare-fun bs!387094 () Bool)

(assert (= bs!387094 d!460253))

(declare-fun m!1823677 () Bool)

(assert (=> bs!387094 m!1823677))

(assert (=> b!1551053 d!460253))

(declare-fun d!460255 () Bool)

(declare-fun c!252289 () Bool)

(assert (=> d!460255 (= c!252289 ((_ is Node!5557) (c!252285 totalInput!568)))))

(declare-fun e!994812 () Bool)

(assert (=> d!460255 (= (inv!22034 (c!252285 totalInput!568)) e!994812)))

(declare-fun b!1551086 () Bool)

(declare-fun inv!22038 (Conc!5557) Bool)

(assert (=> b!1551086 (= e!994812 (inv!22038 (c!252285 totalInput!568)))))

(declare-fun b!1551087 () Bool)

(declare-fun e!994813 () Bool)

(assert (=> b!1551087 (= e!994812 e!994813)))

(declare-fun res!693061 () Bool)

(assert (=> b!1551087 (= res!693061 (not ((_ is Leaf!8236) (c!252285 totalInput!568))))))

(assert (=> b!1551087 (=> res!693061 e!994813)))

(declare-fun b!1551088 () Bool)

(declare-fun inv!22039 (Conc!5557) Bool)

(assert (=> b!1551088 (= e!994813 (inv!22039 (c!252285 totalInput!568)))))

(assert (= (and d!460255 c!252289) b!1551086))

(assert (= (and d!460255 (not c!252289)) b!1551087))

(assert (= (and b!1551087 (not res!693061)) b!1551088))

(declare-fun m!1823679 () Bool)

(assert (=> b!1551086 m!1823679))

(declare-fun m!1823681 () Bool)

(assert (=> b!1551088 m!1823681))

(assert (=> b!1551062 d!460255))

(declare-fun d!460257 () Bool)

(assert (=> d!460257 (= (array_inv!1953 (_keys!2067 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) (bvsge (size!13563 (_keys!2067 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551036 d!460257))

(declare-fun d!460259 () Bool)

(assert (=> d!460259 (= (array_inv!1954 (_values!2052 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) (bvsge (size!13562 (_values!2052 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551036 d!460259))

(declare-fun b!1551117 () Bool)

(declare-fun e!994832 () Bool)

(declare-fun e!994830 () Bool)

(assert (=> b!1551117 (= e!994832 e!994830)))

(declare-fun res!693080 () Bool)

(assert (=> b!1551117 (=> (not res!693080) (not e!994830))))

(declare-fun lt!537335 () Bool)

(assert (=> b!1551117 (= res!693080 (not lt!537335))))

(declare-fun b!1551118 () Bool)

(declare-fun e!994828 () Bool)

(declare-fun nullable!1266 (Regex!4267) Bool)

(assert (=> b!1551118 (= e!994828 (nullable!1266 (regex!2939 rule!240)))))

(declare-fun b!1551119 () Bool)

(declare-fun e!994834 () Bool)

(assert (=> b!1551119 (= e!994830 e!994834)))

(declare-fun res!693083 () Bool)

(assert (=> b!1551119 (=> res!693083 e!994834)))

(declare-fun call!101787 () Bool)

(assert (=> b!1551119 (= res!693083 call!101787)))

(declare-fun b!1551120 () Bool)

(declare-fun res!693085 () Bool)

(declare-fun e!994829 () Bool)

(assert (=> b!1551120 (=> (not res!693085) (not e!994829))))

(assert (=> b!1551120 (= res!693085 (not call!101787))))

(declare-fun b!1551121 () Bool)

(declare-fun head!3109 (List!16834) C!8712)

(assert (=> b!1551121 (= e!994834 (not (= (head!3109 (_1!9407 lt!537327)) (c!252286 (regex!2939 rule!240)))))))

(declare-fun b!1551122 () Bool)

(declare-fun e!994831 () Bool)

(assert (=> b!1551122 (= e!994831 (= lt!537335 call!101787))))

(declare-fun b!1551123 () Bool)

(declare-fun res!693079 () Bool)

(assert (=> b!1551123 (=> res!693079 e!994832)))

(assert (=> b!1551123 (= res!693079 e!994829)))

(declare-fun res!693078 () Bool)

(assert (=> b!1551123 (=> (not res!693078) (not e!994829))))

(assert (=> b!1551123 (= res!693078 lt!537335)))

(declare-fun d!460261 () Bool)

(assert (=> d!460261 e!994831))

(declare-fun c!252298 () Bool)

(assert (=> d!460261 (= c!252298 ((_ is EmptyExpr!4267) (regex!2939 rule!240)))))

(assert (=> d!460261 (= lt!537335 e!994828)))

(declare-fun c!252296 () Bool)

(assert (=> d!460261 (= c!252296 (isEmpty!10092 (_1!9407 lt!537327)))))

(declare-fun validRegex!1707 (Regex!4267) Bool)

(assert (=> d!460261 (validRegex!1707 (regex!2939 rule!240))))

(assert (=> d!460261 (= (matchR!1873 (regex!2939 rule!240) (_1!9407 lt!537327)) lt!537335)))

(declare-fun bm!101782 () Bool)

(assert (=> bm!101782 (= call!101787 (isEmpty!10092 (_1!9407 lt!537327)))))

(declare-fun b!1551124 () Bool)

(declare-fun e!994833 () Bool)

(assert (=> b!1551124 (= e!994831 e!994833)))

(declare-fun c!252297 () Bool)

(assert (=> b!1551124 (= c!252297 ((_ is EmptyLang!4267) (regex!2939 rule!240)))))

(declare-fun b!1551125 () Bool)

(declare-fun res!693084 () Bool)

(assert (=> b!1551125 (=> res!693084 e!994834)))

(declare-fun tail!2204 (List!16834) List!16834)

(assert (=> b!1551125 (= res!693084 (not (isEmpty!10092 (tail!2204 (_1!9407 lt!537327)))))))

(declare-fun b!1551126 () Bool)

(declare-fun res!693081 () Bool)

(assert (=> b!1551126 (=> res!693081 e!994832)))

(assert (=> b!1551126 (= res!693081 (not ((_ is ElementMatch!4267) (regex!2939 rule!240))))))

(assert (=> b!1551126 (= e!994833 e!994832)))

(declare-fun b!1551127 () Bool)

(declare-fun res!693082 () Bool)

(assert (=> b!1551127 (=> (not res!693082) (not e!994829))))

(assert (=> b!1551127 (= res!693082 (isEmpty!10092 (tail!2204 (_1!9407 lt!537327))))))

(declare-fun b!1551128 () Bool)

(assert (=> b!1551128 (= e!994833 (not lt!537335))))

(declare-fun b!1551129 () Bool)

(declare-fun derivativeStep!1018 (Regex!4267 C!8712) Regex!4267)

(assert (=> b!1551129 (= e!994828 (matchR!1873 (derivativeStep!1018 (regex!2939 rule!240) (head!3109 (_1!9407 lt!537327))) (tail!2204 (_1!9407 lt!537327))))))

(declare-fun b!1551130 () Bool)

(assert (=> b!1551130 (= e!994829 (= (head!3109 (_1!9407 lt!537327)) (c!252286 (regex!2939 rule!240))))))

(assert (= (and d!460261 c!252296) b!1551118))

(assert (= (and d!460261 (not c!252296)) b!1551129))

(assert (= (and d!460261 c!252298) b!1551122))

(assert (= (and d!460261 (not c!252298)) b!1551124))

(assert (= (and b!1551124 c!252297) b!1551128))

(assert (= (and b!1551124 (not c!252297)) b!1551126))

(assert (= (and b!1551126 (not res!693081)) b!1551123))

(assert (= (and b!1551123 res!693078) b!1551120))

(assert (= (and b!1551120 res!693085) b!1551127))

(assert (= (and b!1551127 res!693082) b!1551130))

(assert (= (and b!1551123 (not res!693079)) b!1551117))

(assert (= (and b!1551117 res!693080) b!1551119))

(assert (= (and b!1551119 (not res!693083)) b!1551125))

(assert (= (and b!1551125 (not res!693084)) b!1551121))

(assert (= (or b!1551122 b!1551119 b!1551120) bm!101782))

(assert (=> bm!101782 m!1823633))

(declare-fun m!1823683 () Bool)

(assert (=> b!1551118 m!1823683))

(assert (=> d!460261 m!1823633))

(declare-fun m!1823685 () Bool)

(assert (=> d!460261 m!1823685))

(declare-fun m!1823687 () Bool)

(assert (=> b!1551127 m!1823687))

(assert (=> b!1551127 m!1823687))

(declare-fun m!1823689 () Bool)

(assert (=> b!1551127 m!1823689))

(assert (=> b!1551125 m!1823687))

(assert (=> b!1551125 m!1823687))

(assert (=> b!1551125 m!1823689))

(declare-fun m!1823691 () Bool)

(assert (=> b!1551121 m!1823691))

(assert (=> b!1551130 m!1823691))

(assert (=> b!1551129 m!1823691))

(assert (=> b!1551129 m!1823691))

(declare-fun m!1823693 () Bool)

(assert (=> b!1551129 m!1823693))

(assert (=> b!1551129 m!1823687))

(assert (=> b!1551129 m!1823693))

(assert (=> b!1551129 m!1823687))

(declare-fun m!1823695 () Bool)

(assert (=> b!1551129 m!1823695))

(assert (=> b!1551061 d!460261))

(declare-fun d!460263 () Bool)

(declare-fun choose!9245 (Int) Bool)

(assert (=> d!460263 (= (Forall!602 lambda!65652) (choose!9245 lambda!65652))))

(declare-fun bs!387095 () Bool)

(assert (= bs!387095 d!460263))

(declare-fun m!1823697 () Bool)

(assert (=> bs!387095 m!1823697))

(assert (=> b!1551052 d!460263))

(declare-fun d!460265 () Bool)

(declare-fun isBalanced!1639 (Conc!5557) Bool)

(assert (=> d!460265 (= (inv!22033 totalInput!568) (isBalanced!1639 (c!252285 totalInput!568)))))

(declare-fun bs!387096 () Bool)

(assert (= bs!387096 d!460265))

(declare-fun m!1823699 () Bool)

(assert (=> bs!387096 m!1823699))

(assert (=> start!143694 d!460265))

(declare-fun d!460267 () Bool)

(declare-fun res!693088 () Bool)

(declare-fun e!994837 () Bool)

(assert (=> d!460267 (=> (not res!693088) (not e!994837))))

(assert (=> d!460267 (= res!693088 ((_ is HashMap!1719) (cache!2100 cacheDown!768)))))

(assert (=> d!460267 (= (inv!22037 cacheDown!768) e!994837)))

(declare-fun b!1551133 () Bool)

(assert (=> b!1551133 (= e!994837 (validCacheMapDown!157 (cache!2100 cacheDown!768)))))

(assert (= (and d!460267 res!693088) b!1551133))

(assert (=> b!1551133 m!1823673))

(assert (=> start!143694 d!460267))

(declare-fun d!460269 () Bool)

(declare-fun res!693091 () Bool)

(declare-fun e!994840 () Bool)

(assert (=> d!460269 (=> (not res!693091) (not e!994840))))

(assert (=> d!460269 (= res!693091 ((_ is HashMap!1717) (cache!2098 cacheUp!755)))))

(assert (=> d!460269 (= (inv!22035 cacheUp!755) e!994840)))

(declare-fun b!1551136 () Bool)

(assert (=> b!1551136 (= e!994840 (validCacheMapUp!157 (cache!2098 cacheUp!755)))))

(assert (= (and d!460269 res!693091) b!1551136))

(assert (=> b!1551136 m!1823677))

(assert (=> start!143694 d!460269))

(declare-fun d!460271 () Bool)

(assert (=> d!460271 (= (inv!22033 input!1676) (isBalanced!1639 (c!252285 input!1676)))))

(declare-fun bs!387097 () Bool)

(assert (= bs!387097 d!460271))

(declare-fun m!1823701 () Bool)

(assert (=> bs!387097 m!1823701))

(assert (=> start!143694 d!460271))

(declare-fun d!460273 () Bool)

(declare-fun res!693094 () Bool)

(declare-fun e!994843 () Bool)

(assert (=> d!460273 (=> (not res!693094) (not e!994843))))

(assert (=> d!460273 (= res!693094 ((_ is HashMap!1718) (cache!2099 cacheFurthestNullable!103)))))

(assert (=> d!460273 (= (inv!22036 cacheFurthestNullable!103) e!994843)))

(declare-fun b!1551139 () Bool)

(declare-fun validCacheMapFurthestNullable!70 (MutableMap!1718 BalanceConc!11056) Bool)

(assert (=> b!1551139 (= e!994843 (validCacheMapFurthestNullable!70 (cache!2099 cacheFurthestNullable!103) (totalInput!2440 cacheFurthestNullable!103)))))

(assert (= (and d!460273 res!693094) b!1551139))

(declare-fun m!1823703 () Bool)

(assert (=> b!1551139 m!1823703))

(assert (=> start!143694 d!460273))

(declare-fun d!460275 () Bool)

(assert (=> d!460275 (= (array_inv!1953 (_keys!2069 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) (bvsge (size!13563 (_keys!2069 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551051 d!460275))

(declare-fun d!460277 () Bool)

(assert (=> d!460277 (= (array_inv!1956 (_values!2054 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) (bvsge (size!13565 (_values!2054 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551051 d!460277))

(declare-fun d!460279 () Bool)

(declare-fun c!252299 () Bool)

(assert (=> d!460279 (= c!252299 ((_ is Node!5557) (c!252285 input!1676)))))

(declare-fun e!994844 () Bool)

(assert (=> d!460279 (= (inv!22034 (c!252285 input!1676)) e!994844)))

(declare-fun b!1551140 () Bool)

(assert (=> b!1551140 (= e!994844 (inv!22038 (c!252285 input!1676)))))

(declare-fun b!1551141 () Bool)

(declare-fun e!994845 () Bool)

(assert (=> b!1551141 (= e!994844 e!994845)))

(declare-fun res!693095 () Bool)

(assert (=> b!1551141 (= res!693095 (not ((_ is Leaf!8236) (c!252285 input!1676))))))

(assert (=> b!1551141 (=> res!693095 e!994845)))

(declare-fun b!1551142 () Bool)

(assert (=> b!1551142 (= e!994845 (inv!22039 (c!252285 input!1676)))))

(assert (= (and d!460279 c!252299) b!1551140))

(assert (= (and d!460279 (not c!252299)) b!1551141))

(assert (= (and b!1551141 (not res!693095)) b!1551142))

(declare-fun m!1823705 () Bool)

(assert (=> b!1551140 m!1823705))

(declare-fun m!1823707 () Bool)

(assert (=> b!1551142 m!1823707))

(assert (=> b!1551060 d!460279))

(declare-fun d!460281 () Bool)

(assert (=> d!460281 (= (valid!1423 cacheFurthestNullable!103) (validCacheMapFurthestNullable!70 (cache!2099 cacheFurthestNullable!103) (totalInput!2440 cacheFurthestNullable!103)))))

(declare-fun bs!387098 () Bool)

(assert (= bs!387098 d!460281))

(assert (=> bs!387098 m!1823703))

(assert (=> b!1551055 d!460281))

(declare-fun d!460283 () Bool)

(declare-fun res!693100 () Bool)

(declare-fun e!994848 () Bool)

(assert (=> d!460283 (=> (not res!693100) (not e!994848))))

(assert (=> d!460283 (= res!693100 (validRegex!1707 (regex!2939 rule!240)))))

(assert (=> d!460283 (= (ruleValid!679 thiss!16438 rule!240) e!994848)))

(declare-fun b!1551147 () Bool)

(declare-fun res!693101 () Bool)

(assert (=> b!1551147 (=> (not res!693101) (not e!994848))))

(assert (=> b!1551147 (= res!693101 (not (nullable!1266 (regex!2939 rule!240))))))

(declare-fun b!1551148 () Bool)

(assert (=> b!1551148 (= e!994848 (not (= (tag!3203 rule!240) (String!19434 ""))))))

(assert (= (and d!460283 res!693100) b!1551147))

(assert (= (and b!1551147 res!693101) b!1551148))

(assert (=> d!460283 m!1823685))

(assert (=> b!1551147 m!1823683))

(assert (=> b!1551063 d!460283))

(declare-fun d!460285 () Bool)

(declare-fun e!994851 () Bool)

(assert (=> d!460285 e!994851))

(declare-fun res!693104 () Bool)

(assert (=> d!460285 (=> res!693104 e!994851)))

(declare-fun lt!537338 () Bool)

(assert (=> d!460285 (= res!693104 (not lt!537338))))

(declare-fun drop!781 (List!16834 Int) List!16834)

(assert (=> d!460285 (= lt!537338 (= lt!537331 (drop!781 (list!6479 totalInput!568) (- (size!13566 (list!6479 totalInput!568)) (size!13566 lt!537331)))))))

(assert (=> d!460285 (= (isSuffix!370 lt!537331 (list!6479 totalInput!568)) lt!537338)))

(declare-fun b!1551151 () Bool)

(assert (=> b!1551151 (= e!994851 (>= (size!13566 (list!6479 totalInput!568)) (size!13566 lt!537331)))))

(assert (= (and d!460285 (not res!693104)) b!1551151))

(assert (=> d!460285 m!1823611))

(declare-fun m!1823709 () Bool)

(assert (=> d!460285 m!1823709))

(assert (=> d!460285 m!1823639))

(assert (=> d!460285 m!1823611))

(declare-fun m!1823711 () Bool)

(assert (=> d!460285 m!1823711))

(assert (=> b!1551151 m!1823611))

(assert (=> b!1551151 m!1823709))

(assert (=> b!1551151 m!1823639))

(assert (=> b!1551046 d!460285))

(declare-fun d!460287 () Bool)

(declare-fun list!6480 (Conc!5557) List!16834)

(assert (=> d!460287 (= (list!6479 totalInput!568) (list!6480 (c!252285 totalInput!568)))))

(declare-fun bs!387099 () Bool)

(assert (= bs!387099 d!460287))

(declare-fun m!1823713 () Bool)

(assert (=> bs!387099 m!1823713))

(assert (=> b!1551046 d!460287))

(declare-fun d!460289 () Bool)

(assert (=> d!460289 (= (list!6479 input!1676) (list!6480 (c!252285 input!1676)))))

(declare-fun bs!387100 () Bool)

(assert (= bs!387100 d!460289))

(declare-fun m!1823715 () Bool)

(assert (=> bs!387100 m!1823715))

(assert (=> b!1551046 d!460289))

(declare-fun d!460291 () Bool)

(declare-fun lt!537341 () Int)

(assert (=> d!460291 (>= lt!537341 0)))

(declare-fun e!994854 () Int)

(assert (=> d!460291 (= lt!537341 e!994854)))

(declare-fun c!252302 () Bool)

(assert (=> d!460291 (= c!252302 ((_ is Nil!16766) Nil!16766))))

(assert (=> d!460291 (= (size!13566 Nil!16766) lt!537341)))

(declare-fun b!1551156 () Bool)

(assert (=> b!1551156 (= e!994854 0)))

(declare-fun b!1551157 () Bool)

(assert (=> b!1551157 (= e!994854 (+ 1 (size!13566 (t!141237 Nil!16766))))))

(assert (= (and d!460291 c!252302) b!1551156))

(assert (= (and d!460291 (not c!252302)) b!1551157))

(declare-fun m!1823717 () Bool)

(assert (=> b!1551157 m!1823717))

(assert (=> b!1551039 d!460291))

(declare-fun d!460293 () Bool)

(declare-fun lt!537342 () Int)

(assert (=> d!460293 (>= lt!537342 0)))

(declare-fun e!994855 () Int)

(assert (=> d!460293 (= lt!537342 e!994855)))

(declare-fun c!252303 () Bool)

(assert (=> d!460293 (= c!252303 ((_ is Nil!16766) lt!537331))))

(assert (=> d!460293 (= (size!13566 lt!537331) lt!537342)))

(declare-fun b!1551158 () Bool)

(assert (=> b!1551158 (= e!994855 0)))

(declare-fun b!1551159 () Bool)

(assert (=> b!1551159 (= e!994855 (+ 1 (size!13566 (t!141237 lt!537331))))))

(assert (= (and d!460293 c!252303) b!1551158))

(assert (= (and d!460293 (not c!252303)) b!1551159))

(declare-fun m!1823719 () Bool)

(assert (=> b!1551159 m!1823719))

(assert (=> b!1551039 d!460293))

(declare-fun bs!387101 () Bool)

(declare-fun d!460295 () Bool)

(assert (= bs!387101 (and d!460295 b!1551052)))

(declare-fun lambda!65655 () Int)

(assert (=> bs!387101 (= lambda!65655 lambda!65652)))

(assert (=> d!460295 true))

(assert (=> d!460295 (< (dynLambda!7417 order!9845 (toChars!4162 (transformation!2939 rule!240))) (dynLambda!7416 order!9843 lambda!65655))))

(assert (=> d!460295 true))

(assert (=> d!460295 (< (dynLambda!7415 order!9841 (toValue!4303 (transformation!2939 rule!240))) (dynLambda!7416 order!9843 lambda!65655))))

(assert (=> d!460295 (= (semiInverseModEq!1106 (toChars!4162 (transformation!2939 rule!240)) (toValue!4303 (transformation!2939 rule!240))) (Forall!602 lambda!65655))))

(declare-fun bs!387102 () Bool)

(assert (= bs!387102 d!460295))

(declare-fun m!1823721 () Bool)

(assert (=> bs!387102 m!1823721))

(assert (=> b!1551039 d!460295))

(declare-fun b!1551192 () Bool)

(declare-fun e!994879 () tuple2!16176)

(declare-fun lt!537402 () tuple2!16176)

(assert (=> b!1551192 (= e!994879 lt!537402)))

(declare-fun b!1551193 () Bool)

(declare-fun e!994874 () Unit!26017)

(declare-fun Unit!26019 () Unit!26017)

(assert (=> b!1551193 (= e!994874 Unit!26019)))

(declare-fun lt!537425 () Unit!26017)

(declare-fun call!101810 () Unit!26017)

(assert (=> b!1551193 (= lt!537425 call!101810)))

(declare-fun call!101809 () Bool)

(assert (=> b!1551193 call!101809))

(declare-fun lt!537400 () Unit!26017)

(assert (=> b!1551193 (= lt!537400 lt!537425)))

(declare-fun lt!537405 () Unit!26017)

(declare-fun call!101805 () Unit!26017)

(assert (=> b!1551193 (= lt!537405 call!101805)))

(assert (=> b!1551193 (= lt!537331 Nil!16766)))

(declare-fun lt!537417 () Unit!26017)

(assert (=> b!1551193 (= lt!537417 lt!537405)))

(assert (=> b!1551193 false))

(declare-fun b!1551194 () Bool)

(declare-fun e!994875 () tuple2!16176)

(declare-fun call!101808 () tuple2!16176)

(assert (=> b!1551194 (= e!994875 call!101808)))

(declare-fun d!460297 () Bool)

(declare-fun e!994872 () Bool)

(assert (=> d!460297 e!994872))

(declare-fun res!693110 () Bool)

(assert (=> d!460297 (=> (not res!693110) (not e!994872))))

(declare-fun lt!537403 () tuple2!16176)

(declare-fun ++!4410 (List!16834 List!16834) List!16834)

(assert (=> d!460297 (= res!693110 (= (++!4410 (_1!9407 lt!537403) (_2!9407 lt!537403)) lt!537331))))

(declare-fun e!994876 () tuple2!16176)

(assert (=> d!460297 (= lt!537403 e!994876)))

(declare-fun c!252318 () Bool)

(declare-fun lostCause!384 (Regex!4267) Bool)

(assert (=> d!460297 (= c!252318 (lostCause!384 (regex!2939 rule!240)))))

(declare-fun lt!537423 () Unit!26017)

(declare-fun Unit!26020 () Unit!26017)

(assert (=> d!460297 (= lt!537423 Unit!26020)))

(declare-fun getSuffix!666 (List!16834 List!16834) List!16834)

(assert (=> d!460297 (= (getSuffix!666 lt!537331 Nil!16766) lt!537331)))

(declare-fun lt!537404 () Unit!26017)

(declare-fun lt!537406 () Unit!26017)

(assert (=> d!460297 (= lt!537404 lt!537406)))

(declare-fun lt!537413 () List!16834)

(assert (=> d!460297 (= lt!537331 lt!537413)))

(declare-fun lemmaSamePrefixThenSameSuffix!618 (List!16834 List!16834 List!16834 List!16834 List!16834) Unit!26017)

(assert (=> d!460297 (= lt!537406 (lemmaSamePrefixThenSameSuffix!618 Nil!16766 lt!537331 Nil!16766 lt!537413 lt!537331))))

(assert (=> d!460297 (= lt!537413 (getSuffix!666 lt!537331 Nil!16766))))

(declare-fun lt!537415 () Unit!26017)

(declare-fun lt!537411 () Unit!26017)

(assert (=> d!460297 (= lt!537415 lt!537411)))

(declare-fun isPrefix!1256 (List!16834 List!16834) Bool)

(assert (=> d!460297 (isPrefix!1256 Nil!16766 (++!4410 Nil!16766 lt!537331))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!781 (List!16834 List!16834) Unit!26017)

(assert (=> d!460297 (= lt!537411 (lemmaConcatTwoListThenFirstIsPrefix!781 Nil!16766 lt!537331))))

(assert (=> d!460297 (validRegex!1707 (regex!2939 rule!240))))

(assert (=> d!460297 (= (findLongestMatchInner!326 (regex!2939 rule!240) Nil!16766 (size!13566 Nil!16766) lt!537331 lt!537331 (size!13566 lt!537331)) lt!537403)))

(declare-fun bm!101799 () Bool)

(declare-fun call!101806 () Regex!4267)

(declare-fun call!101811 () List!16834)

(declare-fun lt!537408 () List!16834)

(assert (=> bm!101799 (= call!101808 (findLongestMatchInner!326 call!101806 lt!537408 (+ (size!13566 Nil!16766) 1) call!101811 lt!537331 (size!13566 lt!537331)))))

(declare-fun b!1551195 () Bool)

(declare-fun e!994873 () tuple2!16176)

(assert (=> b!1551195 (= e!994873 (tuple2!16177 Nil!16766 Nil!16766))))

(declare-fun b!1551196 () Bool)

(assert (=> b!1551196 (= e!994875 e!994879)))

(assert (=> b!1551196 (= lt!537402 call!101808)))

(declare-fun c!252320 () Bool)

(assert (=> b!1551196 (= c!252320 (isEmpty!10092 (_1!9407 lt!537402)))))

(declare-fun b!1551197 () Bool)

(declare-fun Unit!26021 () Unit!26017)

(assert (=> b!1551197 (= e!994874 Unit!26021)))

(declare-fun bm!101800 () Bool)

(declare-fun call!101804 () Bool)

(assert (=> bm!101800 (= call!101804 (nullable!1266 (regex!2939 rule!240)))))

(declare-fun b!1551198 () Bool)

(declare-fun e!994878 () tuple2!16176)

(assert (=> b!1551198 (= e!994876 e!994878)))

(declare-fun c!252319 () Bool)

(assert (=> b!1551198 (= c!252319 (= (size!13566 Nil!16766) (size!13566 lt!537331)))))

(declare-fun b!1551199 () Bool)

(declare-fun e!994877 () Bool)

(assert (=> b!1551199 (= e!994872 e!994877)))

(declare-fun res!693109 () Bool)

(assert (=> b!1551199 (=> res!693109 e!994877)))

(assert (=> b!1551199 (= res!693109 (isEmpty!10092 (_1!9407 lt!537403)))))

(declare-fun bm!101801 () Bool)

(assert (=> bm!101801 (= call!101811 (tail!2204 lt!537331))))

(declare-fun b!1551200 () Bool)

(assert (=> b!1551200 (= e!994879 (tuple2!16177 Nil!16766 lt!537331))))

(declare-fun b!1551201 () Bool)

(assert (=> b!1551201 (= e!994873 (tuple2!16177 Nil!16766 lt!537331))))

(declare-fun bm!101802 () Bool)

(declare-fun call!101807 () C!8712)

(assert (=> bm!101802 (= call!101807 (head!3109 lt!537331))))

(declare-fun bm!101803 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!120 (List!16834 List!16834 List!16834) Unit!26017)

(assert (=> bm!101803 (= call!101805 (lemmaIsPrefixSameLengthThenSameList!120 lt!537331 Nil!16766 lt!537331))))

(declare-fun b!1551202 () Bool)

(declare-fun c!252316 () Bool)

(assert (=> b!1551202 (= c!252316 call!101804)))

(declare-fun lt!537420 () Unit!26017)

(declare-fun lt!537409 () Unit!26017)

(assert (=> b!1551202 (= lt!537420 lt!537409)))

(assert (=> b!1551202 (= lt!537331 Nil!16766)))

(assert (=> b!1551202 (= lt!537409 call!101805)))

(declare-fun lt!537416 () Unit!26017)

(declare-fun lt!537421 () Unit!26017)

(assert (=> b!1551202 (= lt!537416 lt!537421)))

(assert (=> b!1551202 call!101809))

(assert (=> b!1551202 (= lt!537421 call!101810)))

(assert (=> b!1551202 (= e!994878 e!994873)))

(declare-fun bm!101804 () Bool)

(assert (=> bm!101804 (= call!101809 (isPrefix!1256 lt!537331 lt!537331))))

(declare-fun b!1551203 () Bool)

(declare-fun c!252321 () Bool)

(assert (=> b!1551203 (= c!252321 call!101804)))

(declare-fun lt!537422 () Unit!26017)

(declare-fun lt!537418 () Unit!26017)

(assert (=> b!1551203 (= lt!537422 lt!537418)))

(declare-fun lt!537410 () C!8712)

(declare-fun lt!537407 () List!16834)

(assert (=> b!1551203 (= (++!4410 (++!4410 Nil!16766 (Cons!16766 lt!537410 Nil!16766)) lt!537407) lt!537331)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!435 (List!16834 C!8712 List!16834 List!16834) Unit!26017)

(assert (=> b!1551203 (= lt!537418 (lemmaMoveElementToOtherListKeepsConcatEq!435 Nil!16766 lt!537410 lt!537407 lt!537331))))

(assert (=> b!1551203 (= lt!537407 (tail!2204 lt!537331))))

(assert (=> b!1551203 (= lt!537410 (head!3109 lt!537331))))

(declare-fun lt!537424 () Unit!26017)

(declare-fun lt!537426 () Unit!26017)

(assert (=> b!1551203 (= lt!537424 lt!537426)))

(assert (=> b!1551203 (isPrefix!1256 (++!4410 Nil!16766 (Cons!16766 (head!3109 (getSuffix!666 lt!537331 Nil!16766)) Nil!16766)) lt!537331)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!109 (List!16834 List!16834) Unit!26017)

(assert (=> b!1551203 (= lt!537426 (lemmaAddHeadSuffixToPrefixStillPrefix!109 Nil!16766 lt!537331))))

(declare-fun lt!537412 () Unit!26017)

(declare-fun lt!537414 () Unit!26017)

(assert (=> b!1551203 (= lt!537412 lt!537414)))

(assert (=> b!1551203 (= lt!537414 (lemmaAddHeadSuffixToPrefixStillPrefix!109 Nil!16766 lt!537331))))

(assert (=> b!1551203 (= lt!537408 (++!4410 Nil!16766 (Cons!16766 (head!3109 lt!537331) Nil!16766)))))

(declare-fun lt!537401 () Unit!26017)

(assert (=> b!1551203 (= lt!537401 e!994874)))

(declare-fun c!252317 () Bool)

(assert (=> b!1551203 (= c!252317 (= (size!13566 Nil!16766) (size!13566 lt!537331)))))

(declare-fun lt!537419 () Unit!26017)

(declare-fun lt!537399 () Unit!26017)

(assert (=> b!1551203 (= lt!537419 lt!537399)))

(assert (=> b!1551203 (<= (size!13566 Nil!16766) (size!13566 lt!537331))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!110 (List!16834 List!16834) Unit!26017)

(assert (=> b!1551203 (= lt!537399 (lemmaIsPrefixThenSmallerEqSize!110 Nil!16766 lt!537331))))

(assert (=> b!1551203 (= e!994878 e!994875)))

(declare-fun bm!101805 () Bool)

(declare-fun lemmaIsPrefixRefl!886 (List!16834 List!16834) Unit!26017)

(assert (=> bm!101805 (= call!101810 (lemmaIsPrefixRefl!886 lt!537331 lt!537331))))

(declare-fun b!1551204 () Bool)

(assert (=> b!1551204 (= e!994876 (tuple2!16177 Nil!16766 lt!537331))))

(declare-fun bm!101806 () Bool)

(assert (=> bm!101806 (= call!101806 (derivativeStep!1018 (regex!2939 rule!240) call!101807))))

(declare-fun b!1551205 () Bool)

(assert (=> b!1551205 (= e!994877 (>= (size!13566 (_1!9407 lt!537403)) (size!13566 Nil!16766)))))

(assert (= (and d!460297 c!252318) b!1551204))

(assert (= (and d!460297 (not c!252318)) b!1551198))

(assert (= (and b!1551198 c!252319) b!1551202))

(assert (= (and b!1551198 (not c!252319)) b!1551203))

(assert (= (and b!1551202 c!252316) b!1551195))

(assert (= (and b!1551202 (not c!252316)) b!1551201))

(assert (= (and b!1551203 c!252317) b!1551193))

(assert (= (and b!1551203 (not c!252317)) b!1551197))

(assert (= (and b!1551203 c!252321) b!1551196))

(assert (= (and b!1551203 (not c!252321)) b!1551194))

(assert (= (and b!1551196 c!252320) b!1551200))

(assert (= (and b!1551196 (not c!252320)) b!1551192))

(assert (= (or b!1551196 b!1551194) bm!101801))

(assert (= (or b!1551196 b!1551194) bm!101802))

(assert (= (or b!1551196 b!1551194) bm!101806))

(assert (= (or b!1551196 b!1551194) bm!101799))

(assert (= (or b!1551202 b!1551193) bm!101803))

(assert (= (or b!1551202 b!1551193) bm!101805))

(assert (= (or b!1551202 b!1551203) bm!101800))

(assert (= (or b!1551202 b!1551193) bm!101804))

(assert (= (and d!460297 res!693110) b!1551199))

(assert (= (and b!1551199 (not res!693109)) b!1551205))

(declare-fun m!1823723 () Bool)

(assert (=> bm!101803 m!1823723))

(declare-fun m!1823725 () Bool)

(assert (=> b!1551203 m!1823725))

(declare-fun m!1823727 () Bool)

(assert (=> b!1551203 m!1823727))

(declare-fun m!1823729 () Bool)

(assert (=> b!1551203 m!1823729))

(declare-fun m!1823731 () Bool)

(assert (=> b!1551203 m!1823731))

(declare-fun m!1823733 () Bool)

(assert (=> b!1551203 m!1823733))

(declare-fun m!1823735 () Bool)

(assert (=> b!1551203 m!1823735))

(declare-fun m!1823737 () Bool)

(assert (=> b!1551203 m!1823737))

(declare-fun m!1823739 () Bool)

(assert (=> b!1551203 m!1823739))

(declare-fun m!1823741 () Bool)

(assert (=> b!1551203 m!1823741))

(assert (=> b!1551203 m!1823725))

(declare-fun m!1823743 () Bool)

(assert (=> b!1551203 m!1823743))

(assert (=> b!1551203 m!1823727))

(declare-fun m!1823745 () Bool)

(assert (=> b!1551203 m!1823745))

(assert (=> b!1551203 m!1823639))

(declare-fun m!1823747 () Bool)

(assert (=> b!1551203 m!1823747))

(assert (=> b!1551203 m!1823637))

(assert (=> b!1551203 m!1823731))

(assert (=> bm!101801 m!1823741))

(assert (=> bm!101800 m!1823683))

(declare-fun m!1823749 () Bool)

(assert (=> b!1551205 m!1823749))

(assert (=> b!1551205 m!1823637))

(assert (=> bm!101802 m!1823747))

(declare-fun m!1823751 () Bool)

(assert (=> bm!101805 m!1823751))

(declare-fun m!1823753 () Bool)

(assert (=> b!1551199 m!1823753))

(declare-fun m!1823755 () Bool)

(assert (=> bm!101806 m!1823755))

(declare-fun m!1823757 () Bool)

(assert (=> d!460297 m!1823757))

(declare-fun m!1823759 () Bool)

(assert (=> d!460297 m!1823759))

(assert (=> d!460297 m!1823727))

(assert (=> d!460297 m!1823757))

(declare-fun m!1823761 () Bool)

(assert (=> d!460297 m!1823761))

(declare-fun m!1823763 () Bool)

(assert (=> d!460297 m!1823763))

(declare-fun m!1823765 () Bool)

(assert (=> d!460297 m!1823765))

(assert (=> d!460297 m!1823685))

(declare-fun m!1823767 () Bool)

(assert (=> d!460297 m!1823767))

(assert (=> bm!101799 m!1823639))

(declare-fun m!1823769 () Bool)

(assert (=> bm!101799 m!1823769))

(declare-fun m!1823771 () Bool)

(assert (=> b!1551196 m!1823771))

(declare-fun m!1823773 () Bool)

(assert (=> bm!101804 m!1823773))

(assert (=> b!1551039 d!460297))

(declare-fun d!460299 () Bool)

(declare-fun e!994882 () Bool)

(assert (=> d!460299 e!994882))

(declare-fun res!693113 () Bool)

(assert (=> d!460299 (=> res!693113 e!994882)))

(assert (=> d!460299 (= res!693113 (isEmpty!10092 (_1!9407 (findLongestMatchInner!326 (regex!2939 rule!240) Nil!16766 (size!13566 Nil!16766) lt!537331 lt!537331 (size!13566 lt!537331)))))))

(declare-fun lt!537429 () Unit!26017)

(declare-fun choose!9246 (Regex!4267 List!16834) Unit!26017)

(assert (=> d!460299 (= lt!537429 (choose!9246 (regex!2939 rule!240) lt!537331))))

(assert (=> d!460299 (validRegex!1707 (regex!2939 rule!240))))

(assert (=> d!460299 (= (longestMatchIsAcceptedByMatchOrIsEmpty!310 (regex!2939 rule!240) lt!537331) lt!537429)))

(declare-fun b!1551208 () Bool)

(assert (=> b!1551208 (= e!994882 (matchR!1873 (regex!2939 rule!240) (_1!9407 (findLongestMatchInner!326 (regex!2939 rule!240) Nil!16766 (size!13566 Nil!16766) lt!537331 lt!537331 (size!13566 lt!537331)))))))

(assert (= (and d!460299 (not res!693113)) b!1551208))

(assert (=> d!460299 m!1823639))

(declare-fun m!1823775 () Bool)

(assert (=> d!460299 m!1823775))

(assert (=> d!460299 m!1823637))

(assert (=> d!460299 m!1823639))

(assert (=> d!460299 m!1823641))

(assert (=> d!460299 m!1823685))

(assert (=> d!460299 m!1823637))

(declare-fun m!1823777 () Bool)

(assert (=> d!460299 m!1823777))

(assert (=> b!1551208 m!1823637))

(assert (=> b!1551208 m!1823639))

(assert (=> b!1551208 m!1823637))

(assert (=> b!1551208 m!1823639))

(assert (=> b!1551208 m!1823641))

(declare-fun m!1823779 () Bool)

(assert (=> b!1551208 m!1823779))

(assert (=> b!1551039 d!460299))

(declare-fun d!460301 () Bool)

(assert (=> d!460301 (= (isEmpty!10092 (_1!9407 lt!537327)) ((_ is Nil!16766) (_1!9407 lt!537327)))))

(assert (=> b!1551039 d!460301))

(declare-fun d!460303 () Bool)

(declare-fun e!994885 () Bool)

(assert (=> d!460303 e!994885))

(declare-fun res!693116 () Bool)

(assert (=> d!460303 (=> (not res!693116) (not e!994885))))

(assert (=> d!460303 (= res!693116 (semiInverseModEq!1106 (toChars!4162 (transformation!2939 rule!240)) (toValue!4303 (transformation!2939 rule!240))))))

(declare-fun Unit!26022 () Unit!26017)

(assert (=> d!460303 (= (lemmaInv!420 (transformation!2939 rule!240)) Unit!26022)))

(declare-fun b!1551211 () Bool)

(assert (=> b!1551211 (= e!994885 (equivClasses!1052 (toChars!4162 (transformation!2939 rule!240)) (toValue!4303 (transformation!2939 rule!240))))))

(assert (= (and d!460303 res!693116) b!1551211))

(assert (=> d!460303 m!1823631))

(assert (=> b!1551211 m!1823675))

(assert (=> b!1551039 d!460303))

(declare-fun d!460305 () Bool)

(declare-fun c!252322 () Bool)

(assert (=> d!460305 (= c!252322 ((_ is Node!5557) (c!252285 (totalInput!2440 cacheFurthestNullable!103))))))

(declare-fun e!994886 () Bool)

(assert (=> d!460305 (= (inv!22034 (c!252285 (totalInput!2440 cacheFurthestNullable!103))) e!994886)))

(declare-fun b!1551212 () Bool)

(assert (=> b!1551212 (= e!994886 (inv!22038 (c!252285 (totalInput!2440 cacheFurthestNullable!103))))))

(declare-fun b!1551213 () Bool)

(declare-fun e!994887 () Bool)

(assert (=> b!1551213 (= e!994886 e!994887)))

(declare-fun res!693117 () Bool)

(assert (=> b!1551213 (= res!693117 (not ((_ is Leaf!8236) (c!252285 (totalInput!2440 cacheFurthestNullable!103)))))))

(assert (=> b!1551213 (=> res!693117 e!994887)))

(declare-fun b!1551214 () Bool)

(assert (=> b!1551214 (= e!994887 (inv!22039 (c!252285 (totalInput!2440 cacheFurthestNullable!103))))))

(assert (= (and d!460305 c!252322) b!1551212))

(assert (= (and d!460305 (not c!252322)) b!1551213))

(assert (= (and b!1551213 (not res!693117)) b!1551214))

(declare-fun m!1823781 () Bool)

(assert (=> b!1551212 m!1823781))

(declare-fun m!1823783 () Bool)

(assert (=> b!1551214 m!1823783))

(assert (=> b!1551048 d!460305))

(declare-fun d!460307 () Bool)

(assert (=> d!460307 (= (inv!22033 (totalInput!2440 cacheFurthestNullable!103)) (isBalanced!1639 (c!252285 (totalInput!2440 cacheFurthestNullable!103))))))

(declare-fun bs!387103 () Bool)

(assert (= bs!387103 d!460307))

(declare-fun m!1823785 () Bool)

(assert (=> bs!387103 m!1823785))

(assert (=> b!1551047 d!460307))

(declare-fun lt!537432 () Bool)

(declare-fun d!460309 () Bool)

(assert (=> d!460309 (= lt!537432 (isEmpty!10092 (list!6479 (_1!9405 (_1!9406 (findLongestMatchWithZipperSequenceV3Mem!44 (regex!2939 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun isEmpty!10093 (Conc!5557) Bool)

(assert (=> d!460309 (= lt!537432 (isEmpty!10093 (c!252285 (_1!9405 (_1!9406 (findLongestMatchWithZipperSequenceV3Mem!44 (regex!2939 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(assert (=> d!460309 (= (isEmpty!10091 (_1!9405 (_1!9406 (findLongestMatchWithZipperSequenceV3Mem!44 (regex!2939 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103)))) lt!537432)))

(declare-fun bs!387104 () Bool)

(assert (= bs!387104 d!460309))

(declare-fun m!1823787 () Bool)

(assert (=> bs!387104 m!1823787))

(assert (=> bs!387104 m!1823787))

(declare-fun m!1823789 () Bool)

(assert (=> bs!387104 m!1823789))

(declare-fun m!1823791 () Bool)

(assert (=> bs!387104 m!1823791))

(assert (=> b!1551038 d!460309))

(declare-fun b!1551226 () Bool)

(declare-fun e!994890 () Bool)

(declare-fun lt!537435 () tuple4!878)

(assert (=> b!1551226 (= e!994890 (= (totalInput!2440 (_4!439 lt!537435)) totalInput!568))))

(declare-fun b!1551224 () Bool)

(declare-fun res!693128 () Bool)

(assert (=> b!1551224 (=> (not res!693128) (not e!994890))))

(assert (=> b!1551224 (= res!693128 (valid!1422 (_2!9406 lt!537435)))))

(declare-fun b!1551223 () Bool)

(declare-fun res!693127 () Bool)

(assert (=> b!1551223 (=> (not res!693127) (not e!994890))))

(assert (=> b!1551223 (= res!693127 (valid!1424 (_3!1318 lt!537435)))))

(declare-fun d!460311 () Bool)

(assert (=> d!460311 e!994890))

(declare-fun res!693126 () Bool)

(assert (=> d!460311 (=> (not res!693126) (not e!994890))))

(declare-fun findLongestMatch!257 (Regex!4267 List!16834) tuple2!16176)

(assert (=> d!460311 (= res!693126 (= (tuple2!16177 (list!6479 (_1!9405 (_1!9406 lt!537435))) (list!6479 (_2!9405 (_1!9406 lt!537435)))) (findLongestMatch!257 (regex!2939 rule!240) (list!6479 input!1676))))))

(declare-fun choose!9247 (Regex!4267 BalanceConc!11056 BalanceConc!11056 CacheUp!1044 CacheDown!1048 CacheFurthestNullable!470) tuple4!878)

(assert (=> d!460311 (= lt!537435 (choose!9247 (regex!2939 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!460311 (validRegex!1707 (regex!2939 rule!240))))

(assert (=> d!460311 (= (findLongestMatchWithZipperSequenceV3Mem!44 (regex!2939 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!537435)))

(declare-fun b!1551225 () Bool)

(declare-fun res!693129 () Bool)

(assert (=> b!1551225 (=> (not res!693129) (not e!994890))))

(assert (=> b!1551225 (= res!693129 (valid!1423 (_4!439 lt!537435)))))

(assert (= (and d!460311 res!693126) b!1551223))

(assert (= (and b!1551223 res!693127) b!1551224))

(assert (= (and b!1551224 res!693128) b!1551225))

(assert (= (and b!1551225 res!693129) b!1551226))

(declare-fun m!1823793 () Bool)

(assert (=> b!1551224 m!1823793))

(declare-fun m!1823795 () Bool)

(assert (=> b!1551223 m!1823795))

(assert (=> d!460311 m!1823615))

(declare-fun m!1823797 () Bool)

(assert (=> d!460311 m!1823797))

(declare-fun m!1823799 () Bool)

(assert (=> d!460311 m!1823799))

(declare-fun m!1823801 () Bool)

(assert (=> d!460311 m!1823801))

(declare-fun m!1823803 () Bool)

(assert (=> d!460311 m!1823803))

(assert (=> d!460311 m!1823685))

(assert (=> d!460311 m!1823615))

(declare-fun m!1823805 () Bool)

(assert (=> b!1551225 m!1823805))

(assert (=> b!1551038 d!460311))

(declare-fun setIsEmpty!10568 () Bool)

(declare-fun setRes!10568 () Bool)

(assert (=> setIsEmpty!10568 setRes!10568))

(declare-fun tp!453413 () Bool)

(declare-fun e!994895 () Bool)

(declare-fun setNonEmpty!10568 () Bool)

(declare-fun setElem!10568 () Context!1570)

(declare-fun inv!22040 (Context!1570) Bool)

(assert (=> setNonEmpty!10568 (= setRes!10568 (and tp!453413 (inv!22040 setElem!10568) e!994895))))

(declare-fun setRest!10568 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10568 (= (_1!9401 (_1!9402 (h!22171 (zeroValue!2031 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10568 true) setRest!10568))))

(declare-fun b!1551233 () Bool)

(declare-fun e!994896 () Bool)

(declare-fun tp!453414 () Bool)

(assert (=> b!1551233 (= e!994896 (and setRes!10568 tp!453414))))

(declare-fun condSetEmpty!10568 () Bool)

(assert (=> b!1551233 (= condSetEmpty!10568 (= (_1!9401 (_1!9402 (h!22171 (zeroValue!2031 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))))) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun b!1551234 () Bool)

(declare-fun tp!453412 () Bool)

(assert (=> b!1551234 (= e!994895 tp!453412)))

(assert (=> b!1551042 (= tp!453403 e!994896)))

(assert (= (and b!1551233 condSetEmpty!10568) setIsEmpty!10568))

(assert (= (and b!1551233 (not condSetEmpty!10568)) setNonEmpty!10568))

(assert (= setNonEmpty!10568 b!1551234))

(assert (= (and b!1551042 ((_ is Cons!16770) (zeroValue!2031 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103)))))))) b!1551233))

(declare-fun m!1823807 () Bool)

(assert (=> setNonEmpty!10568 m!1823807))

(declare-fun setIsEmpty!10569 () Bool)

(declare-fun setRes!10569 () Bool)

(assert (=> setIsEmpty!10569 setRes!10569))

(declare-fun tp!453416 () Bool)

(declare-fun setElem!10569 () Context!1570)

(declare-fun e!994897 () Bool)

(declare-fun setNonEmpty!10569 () Bool)

(assert (=> setNonEmpty!10569 (= setRes!10569 (and tp!453416 (inv!22040 setElem!10569) e!994897))))

(declare-fun setRest!10569 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10569 (= (_1!9401 (_1!9402 (h!22171 (minValue!2031 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10569 true) setRest!10569))))

(declare-fun b!1551235 () Bool)

(declare-fun e!994898 () Bool)

(declare-fun tp!453417 () Bool)

(assert (=> b!1551235 (= e!994898 (and setRes!10569 tp!453417))))

(declare-fun condSetEmpty!10569 () Bool)

(assert (=> b!1551235 (= condSetEmpty!10569 (= (_1!9401 (_1!9402 (h!22171 (minValue!2031 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103))))))))) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun b!1551236 () Bool)

(declare-fun tp!453415 () Bool)

(assert (=> b!1551236 (= e!994897 tp!453415)))

(assert (=> b!1551042 (= tp!453399 e!994898)))

(assert (= (and b!1551235 condSetEmpty!10569) setIsEmpty!10569))

(assert (= (and b!1551235 (not condSetEmpty!10569)) setNonEmpty!10569))

(assert (= setNonEmpty!10569 b!1551236))

(assert (= (and b!1551042 ((_ is Cons!16770) (minValue!2031 (v!23602 (underlying!3757 (v!23603 (underlying!3758 (cache!2099 cacheFurthestNullable!103)))))))) b!1551235))

(declare-fun m!1823809 () Bool)

(assert (=> setNonEmpty!10569 m!1823809))

(declare-fun setIsEmpty!10570 () Bool)

(declare-fun setRes!10570 () Bool)

(assert (=> setIsEmpty!10570 setRes!10570))

(declare-fun setNonEmpty!10570 () Bool)

(declare-fun e!994899 () Bool)

(declare-fun setElem!10570 () Context!1570)

(declare-fun tp!453419 () Bool)

(assert (=> setNonEmpty!10570 (= setRes!10570 (and tp!453419 (inv!22040 setElem!10570) e!994899))))

(declare-fun setRest!10570 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10570 (= (_1!9401 (_1!9402 (h!22171 mapDefault!8219))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10570 true) setRest!10570))))

(declare-fun b!1551237 () Bool)

(declare-fun e!994900 () Bool)

(declare-fun tp!453420 () Bool)

(assert (=> b!1551237 (= e!994900 (and setRes!10570 tp!453420))))

(declare-fun condSetEmpty!10570 () Bool)

(assert (=> b!1551237 (= condSetEmpty!10570 (= (_1!9401 (_1!9402 (h!22171 mapDefault!8219))) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun b!1551238 () Bool)

(declare-fun tp!453418 () Bool)

(assert (=> b!1551238 (= e!994899 tp!453418)))

(assert (=> b!1551058 (= tp!453404 e!994900)))

(assert (= (and b!1551237 condSetEmpty!10570) setIsEmpty!10570))

(assert (= (and b!1551237 (not condSetEmpty!10570)) setNonEmpty!10570))

(assert (= setNonEmpty!10570 b!1551238))

(assert (= (and b!1551058 ((_ is Cons!16770) mapDefault!8219)) b!1551237))

(declare-fun m!1823811 () Bool)

(assert (=> setNonEmpty!10570 m!1823811))

(declare-fun b!1551247 () Bool)

(declare-fun e!994908 () Bool)

(declare-fun tp!453430 () Bool)

(assert (=> b!1551247 (= e!994908 tp!453430)))

(declare-fun e!994909 () Bool)

(assert (=> b!1551068 (= tp!453383 e!994909)))

(declare-fun setIsEmpty!10573 () Bool)

(declare-fun setRes!10573 () Bool)

(assert (=> setIsEmpty!10573 setRes!10573))

(declare-fun b!1551248 () Bool)

(declare-fun e!994907 () Bool)

(declare-fun tp!453432 () Bool)

(assert (=> b!1551248 (= e!994907 tp!453432)))

(declare-fun b!1551249 () Bool)

(declare-fun tp_is_empty!7059 () Bool)

(declare-fun tp!453429 () Bool)

(assert (=> b!1551249 (= e!994909 (and (inv!22040 (_1!9399 (_1!9400 (h!22170 mapDefault!8217)))) e!994907 tp_is_empty!7059 setRes!10573 tp!453429))))

(declare-fun condSetEmpty!10573 () Bool)

(assert (=> b!1551249 (= condSetEmpty!10573 (= (_2!9400 (h!22170 mapDefault!8217)) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun tp!453431 () Bool)

(declare-fun setNonEmpty!10573 () Bool)

(declare-fun setElem!10573 () Context!1570)

(assert (=> setNonEmpty!10573 (= setRes!10573 (and tp!453431 (inv!22040 setElem!10573) e!994908))))

(declare-fun setRest!10573 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10573 (= (_2!9400 (h!22170 mapDefault!8217)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10573 true) setRest!10573))))

(assert (= b!1551249 b!1551248))

(assert (= (and b!1551249 condSetEmpty!10573) setIsEmpty!10573))

(assert (= (and b!1551249 (not condSetEmpty!10573)) setNonEmpty!10573))

(assert (= setNonEmpty!10573 b!1551247))

(assert (= (and b!1551068 ((_ is Cons!16769) mapDefault!8217)) b!1551249))

(declare-fun m!1823813 () Bool)

(assert (=> b!1551249 m!1823813))

(declare-fun m!1823815 () Bool)

(assert (=> setNonEmpty!10573 m!1823815))

(declare-fun b!1551262 () Bool)

(declare-fun e!994912 () Bool)

(declare-fun tp!453447 () Bool)

(assert (=> b!1551262 (= e!994912 tp!453447)))

(declare-fun b!1551260 () Bool)

(assert (=> b!1551260 (= e!994912 tp_is_empty!7059)))

(declare-fun b!1551261 () Bool)

(declare-fun tp!453444 () Bool)

(declare-fun tp!453443 () Bool)

(assert (=> b!1551261 (= e!994912 (and tp!453444 tp!453443))))

(assert (=> b!1551040 (= tp!453402 e!994912)))

(declare-fun b!1551263 () Bool)

(declare-fun tp!453445 () Bool)

(declare-fun tp!453446 () Bool)

(assert (=> b!1551263 (= e!994912 (and tp!453445 tp!453446))))

(assert (= (and b!1551040 ((_ is ElementMatch!4267) (regex!2939 rule!240))) b!1551260))

(assert (= (and b!1551040 ((_ is Concat!7297) (regex!2939 rule!240))) b!1551261))

(assert (= (and b!1551040 ((_ is Star!4267) (regex!2939 rule!240))) b!1551262))

(assert (= (and b!1551040 ((_ is Union!4267) (regex!2939 rule!240))) b!1551263))

(declare-fun tp!453454 () Bool)

(declare-fun tp!453456 () Bool)

(declare-fun b!1551272 () Bool)

(declare-fun e!994917 () Bool)

(assert (=> b!1551272 (= e!994917 (and (inv!22034 (left!13641 (c!252285 totalInput!568))) tp!453456 (inv!22034 (right!13971 (c!252285 totalInput!568))) tp!453454))))

(declare-fun b!1551274 () Bool)

(declare-fun e!994918 () Bool)

(declare-fun tp!453455 () Bool)

(assert (=> b!1551274 (= e!994918 tp!453455)))

(declare-fun b!1551273 () Bool)

(declare-fun inv!22041 (IArray!11119) Bool)

(assert (=> b!1551273 (= e!994917 (and (inv!22041 (xs!8357 (c!252285 totalInput!568))) e!994918))))

(assert (=> b!1551062 (= tp!453393 (and (inv!22034 (c!252285 totalInput!568)) e!994917))))

(assert (= (and b!1551062 ((_ is Node!5557) (c!252285 totalInput!568))) b!1551272))

(assert (= b!1551273 b!1551274))

(assert (= (and b!1551062 ((_ is Leaf!8236) (c!252285 totalInput!568))) b!1551273))

(declare-fun m!1823817 () Bool)

(assert (=> b!1551272 m!1823817))

(declare-fun m!1823819 () Bool)

(assert (=> b!1551272 m!1823819))

(declare-fun m!1823821 () Bool)

(assert (=> b!1551273 m!1823821))

(assert (=> b!1551062 m!1823601))

(declare-fun b!1551275 () Bool)

(declare-fun e!994920 () Bool)

(declare-fun tp!453458 () Bool)

(assert (=> b!1551275 (= e!994920 tp!453458)))

(declare-fun e!994921 () Bool)

(assert (=> b!1551036 (= tp!453387 e!994921)))

(declare-fun setIsEmpty!10574 () Bool)

(declare-fun setRes!10574 () Bool)

(assert (=> setIsEmpty!10574 setRes!10574))

(declare-fun b!1551276 () Bool)

(declare-fun e!994919 () Bool)

(declare-fun tp!453460 () Bool)

(assert (=> b!1551276 (= e!994919 tp!453460)))

(declare-fun tp!453457 () Bool)

(declare-fun b!1551277 () Bool)

(assert (=> b!1551277 (= e!994921 (and (inv!22040 (_1!9399 (_1!9400 (h!22170 (zeroValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))))) e!994919 tp_is_empty!7059 setRes!10574 tp!453457))))

(declare-fun condSetEmpty!10574 () Bool)

(assert (=> b!1551277 (= condSetEmpty!10574 (= (_2!9400 (h!22170 (zeroValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun setNonEmpty!10574 () Bool)

(declare-fun tp!453459 () Bool)

(declare-fun setElem!10574 () Context!1570)

(assert (=> setNonEmpty!10574 (= setRes!10574 (and tp!453459 (inv!22040 setElem!10574) e!994920))))

(declare-fun setRest!10574 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10574 (= (_2!9400 (h!22170 (zeroValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10574 true) setRest!10574))))

(assert (= b!1551277 b!1551276))

(assert (= (and b!1551277 condSetEmpty!10574) setIsEmpty!10574))

(assert (= (and b!1551277 (not condSetEmpty!10574)) setNonEmpty!10574))

(assert (= setNonEmpty!10574 b!1551275))

(assert (= (and b!1551036 ((_ is Cons!16769) (zeroValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))) b!1551277))

(declare-fun m!1823823 () Bool)

(assert (=> b!1551277 m!1823823))

(declare-fun m!1823825 () Bool)

(assert (=> setNonEmpty!10574 m!1823825))

(declare-fun b!1551278 () Bool)

(declare-fun e!994923 () Bool)

(declare-fun tp!453462 () Bool)

(assert (=> b!1551278 (= e!994923 tp!453462)))

(declare-fun e!994924 () Bool)

(assert (=> b!1551036 (= tp!453385 e!994924)))

(declare-fun setIsEmpty!10575 () Bool)

(declare-fun setRes!10575 () Bool)

(assert (=> setIsEmpty!10575 setRes!10575))

(declare-fun b!1551279 () Bool)

(declare-fun e!994922 () Bool)

(declare-fun tp!453464 () Bool)

(assert (=> b!1551279 (= e!994922 tp!453464)))

(declare-fun b!1551280 () Bool)

(declare-fun tp!453461 () Bool)

(assert (=> b!1551280 (= e!994924 (and (inv!22040 (_1!9399 (_1!9400 (h!22170 (minValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))))) e!994922 tp_is_empty!7059 setRes!10575 tp!453461))))

(declare-fun condSetEmpty!10575 () Bool)

(assert (=> b!1551280 (= condSetEmpty!10575 (= (_2!9400 (h!22170 (minValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun setElem!10575 () Context!1570)

(declare-fun setNonEmpty!10575 () Bool)

(declare-fun tp!453463 () Bool)

(assert (=> setNonEmpty!10575 (= setRes!10575 (and tp!453463 (inv!22040 setElem!10575) e!994923))))

(declare-fun setRest!10575 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10575 (= (_2!9400 (h!22170 (minValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10575 true) setRest!10575))))

(assert (= b!1551280 b!1551279))

(assert (= (and b!1551280 condSetEmpty!10575) setIsEmpty!10575))

(assert (= (and b!1551280 (not condSetEmpty!10575)) setNonEmpty!10575))

(assert (= setNonEmpty!10575 b!1551278))

(assert (= (and b!1551036 ((_ is Cons!16769) (minValue!2030 (v!23600 (underlying!3755 (v!23601 (underlying!3756 (cache!2098 cacheUp!755)))))))) b!1551280))

(declare-fun m!1823827 () Bool)

(assert (=> b!1551280 m!1823827))

(declare-fun m!1823829 () Bool)

(assert (=> setNonEmpty!10575 m!1823829))

(declare-fun setElem!10578 () Context!1570)

(declare-fun e!994932 () Bool)

(declare-fun setRes!10578 () Bool)

(declare-fun tp!453477 () Bool)

(declare-fun setNonEmpty!10578 () Bool)

(assert (=> setNonEmpty!10578 (= setRes!10578 (and tp!453477 (inv!22040 setElem!10578) e!994932))))

(declare-fun setRest!10578 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10578 (= (_2!9404 (h!22172 mapDefault!8218)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10578 true) setRest!10578))))

(declare-fun b!1551289 () Bool)

(declare-fun e!994931 () Bool)

(declare-fun tp!453476 () Bool)

(assert (=> b!1551289 (= e!994931 tp!453476)))

(declare-fun e!994933 () Bool)

(assert (=> b!1551043 (= tp!453397 e!994933)))

(declare-fun b!1551290 () Bool)

(declare-fun tp!453475 () Bool)

(assert (=> b!1551290 (= e!994932 tp!453475)))

(declare-fun setIsEmpty!10578 () Bool)

(assert (=> setIsEmpty!10578 setRes!10578))

(declare-fun tp!453479 () Bool)

(declare-fun tp!453478 () Bool)

(declare-fun b!1551291 () Bool)

(assert (=> b!1551291 (= e!994933 (and tp!453479 (inv!22040 (_2!9403 (_1!9404 (h!22172 mapDefault!8218)))) e!994931 tp_is_empty!7059 setRes!10578 tp!453478))))

(declare-fun condSetEmpty!10578 () Bool)

(assert (=> b!1551291 (= condSetEmpty!10578 (= (_2!9404 (h!22172 mapDefault!8218)) ((as const (Array Context!1570 Bool)) false)))))

(assert (= b!1551291 b!1551289))

(assert (= (and b!1551291 condSetEmpty!10578) setIsEmpty!10578))

(assert (= (and b!1551291 (not condSetEmpty!10578)) setNonEmpty!10578))

(assert (= setNonEmpty!10578 b!1551290))

(assert (= (and b!1551043 ((_ is Cons!16771) mapDefault!8218)) b!1551291))

(declare-fun m!1823831 () Bool)

(assert (=> setNonEmpty!10578 m!1823831))

(declare-fun m!1823833 () Bool)

(assert (=> b!1551291 m!1823833))

(declare-fun e!994935 () Bool)

(declare-fun setRes!10579 () Bool)

(declare-fun setNonEmpty!10579 () Bool)

(declare-fun setElem!10579 () Context!1570)

(declare-fun tp!453482 () Bool)

(assert (=> setNonEmpty!10579 (= setRes!10579 (and tp!453482 (inv!22040 setElem!10579) e!994935))))

(declare-fun setRest!10579 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10579 (= (_2!9404 (h!22172 (zeroValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10579 true) setRest!10579))))

(declare-fun b!1551292 () Bool)

(declare-fun e!994934 () Bool)

(declare-fun tp!453481 () Bool)

(assert (=> b!1551292 (= e!994934 tp!453481)))

(declare-fun e!994936 () Bool)

(assert (=> b!1551051 (= tp!453380 e!994936)))

(declare-fun b!1551293 () Bool)

(declare-fun tp!453480 () Bool)

(assert (=> b!1551293 (= e!994935 tp!453480)))

(declare-fun setIsEmpty!10579 () Bool)

(assert (=> setIsEmpty!10579 setRes!10579))

(declare-fun tp!453483 () Bool)

(declare-fun b!1551294 () Bool)

(declare-fun tp!453484 () Bool)

(assert (=> b!1551294 (= e!994936 (and tp!453484 (inv!22040 (_2!9403 (_1!9404 (h!22172 (zeroValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))))) e!994934 tp_is_empty!7059 setRes!10579 tp!453483))))

(declare-fun condSetEmpty!10579 () Bool)

(assert (=> b!1551294 (= condSetEmpty!10579 (= (_2!9404 (h!22172 (zeroValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))) ((as const (Array Context!1570 Bool)) false)))))

(assert (= b!1551294 b!1551292))

(assert (= (and b!1551294 condSetEmpty!10579) setIsEmpty!10579))

(assert (= (and b!1551294 (not condSetEmpty!10579)) setNonEmpty!10579))

(assert (= setNonEmpty!10579 b!1551293))

(assert (= (and b!1551051 ((_ is Cons!16771) (zeroValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))) b!1551294))

(declare-fun m!1823835 () Bool)

(assert (=> setNonEmpty!10579 m!1823835))

(declare-fun m!1823837 () Bool)

(assert (=> b!1551294 m!1823837))

(declare-fun setElem!10580 () Context!1570)

(declare-fun setNonEmpty!10580 () Bool)

(declare-fun setRes!10580 () Bool)

(declare-fun e!994938 () Bool)

(declare-fun tp!453487 () Bool)

(assert (=> setNonEmpty!10580 (= setRes!10580 (and tp!453487 (inv!22040 setElem!10580) e!994938))))

(declare-fun setRest!10580 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10580 (= (_2!9404 (h!22172 (minValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10580 true) setRest!10580))))

(declare-fun b!1551295 () Bool)

(declare-fun e!994937 () Bool)

(declare-fun tp!453486 () Bool)

(assert (=> b!1551295 (= e!994937 tp!453486)))

(declare-fun e!994939 () Bool)

(assert (=> b!1551051 (= tp!453384 e!994939)))

(declare-fun b!1551296 () Bool)

(declare-fun tp!453485 () Bool)

(assert (=> b!1551296 (= e!994938 tp!453485)))

(declare-fun setIsEmpty!10580 () Bool)

(assert (=> setIsEmpty!10580 setRes!10580))

(declare-fun b!1551297 () Bool)

(declare-fun tp!453489 () Bool)

(declare-fun tp!453488 () Bool)

(assert (=> b!1551297 (= e!994939 (and tp!453489 (inv!22040 (_2!9403 (_1!9404 (h!22172 (minValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))))) e!994937 tp_is_empty!7059 setRes!10580 tp!453488))))

(declare-fun condSetEmpty!10580 () Bool)

(assert (=> b!1551297 (= condSetEmpty!10580 (= (_2!9404 (h!22172 (minValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))) ((as const (Array Context!1570 Bool)) false)))))

(assert (= b!1551297 b!1551295))

(assert (= (and b!1551297 condSetEmpty!10580) setIsEmpty!10580))

(assert (= (and b!1551297 (not condSetEmpty!10580)) setNonEmpty!10580))

(assert (= setNonEmpty!10580 b!1551296))

(assert (= (and b!1551051 ((_ is Cons!16771) (minValue!2032 (v!23604 (underlying!3759 (v!23605 (underlying!3760 (cache!2100 cacheDown!768)))))))) b!1551297))

(declare-fun m!1823839 () Bool)

(assert (=> setNonEmpty!10580 m!1823839))

(declare-fun m!1823841 () Bool)

(assert (=> b!1551297 m!1823841))

(declare-fun tp!453492 () Bool)

(declare-fun tp!453490 () Bool)

(declare-fun e!994940 () Bool)

(declare-fun b!1551298 () Bool)

(assert (=> b!1551298 (= e!994940 (and (inv!22034 (left!13641 (c!252285 input!1676))) tp!453492 (inv!22034 (right!13971 (c!252285 input!1676))) tp!453490))))

(declare-fun b!1551300 () Bool)

(declare-fun e!994941 () Bool)

(declare-fun tp!453491 () Bool)

(assert (=> b!1551300 (= e!994941 tp!453491)))

(declare-fun b!1551299 () Bool)

(assert (=> b!1551299 (= e!994940 (and (inv!22041 (xs!8357 (c!252285 input!1676))) e!994941))))

(assert (=> b!1551060 (= tp!453392 (and (inv!22034 (c!252285 input!1676)) e!994940))))

(assert (= (and b!1551060 ((_ is Node!5557) (c!252285 input!1676))) b!1551298))

(assert (= b!1551299 b!1551300))

(assert (= (and b!1551060 ((_ is Leaf!8236) (c!252285 input!1676))) b!1551299))

(declare-fun m!1823843 () Bool)

(assert (=> b!1551298 m!1823843))

(declare-fun m!1823845 () Bool)

(assert (=> b!1551298 m!1823845))

(declare-fun m!1823847 () Bool)

(assert (=> b!1551299 m!1823847))

(assert (=> b!1551060 m!1823647))

(declare-fun setRes!10585 () Bool)

(declare-fun setNonEmpty!10585 () Bool)

(declare-fun setElem!10585 () Context!1570)

(declare-fun e!994956 () Bool)

(declare-fun tp!453521 () Bool)

(assert (=> setNonEmpty!10585 (= setRes!10585 (and tp!453521 (inv!22040 setElem!10585) e!994956))))

(declare-fun mapDefault!8222 () List!16839)

(declare-fun setRest!10586 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10585 (= (_2!9404 (h!22172 mapDefault!8222)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10585 true) setRest!10586))))

(declare-fun condMapEmpty!8222 () Bool)

(assert (=> mapNonEmpty!8218 (= condMapEmpty!8222 (= mapRest!8217 ((as const (Array (_ BitVec 32) List!16839)) mapDefault!8222)))))

(declare-fun e!994957 () Bool)

(declare-fun mapRes!8222 () Bool)

(assert (=> mapNonEmpty!8218 (= tp!453400 (and e!994957 mapRes!8222))))

(declare-fun b!1551315 () Bool)

(declare-fun e!994955 () Bool)

(declare-fun tp!453516 () Bool)

(assert (=> b!1551315 (= e!994955 tp!453516)))

(declare-fun setIsEmpty!10585 () Bool)

(declare-fun setRes!10586 () Bool)

(assert (=> setIsEmpty!10585 setRes!10586))

(declare-fun tp!453517 () Bool)

(declare-fun setElem!10586 () Context!1570)

(declare-fun e!994958 () Bool)

(declare-fun setNonEmpty!10586 () Bool)

(assert (=> setNonEmpty!10586 (= setRes!10586 (and tp!453517 (inv!22040 setElem!10586) e!994958))))

(declare-fun mapValue!8222 () List!16839)

(declare-fun setRest!10585 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10586 (= (_2!9404 (h!22172 mapValue!8222)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10586 true) setRest!10585))))

(declare-fun b!1551316 () Bool)

(declare-fun tp!453522 () Bool)

(assert (=> b!1551316 (= e!994958 tp!453522)))

(declare-fun mapIsEmpty!8222 () Bool)

(assert (=> mapIsEmpty!8222 mapRes!8222))

(declare-fun setIsEmpty!10586 () Bool)

(assert (=> setIsEmpty!10586 setRes!10585))

(declare-fun mapNonEmpty!8222 () Bool)

(declare-fun tp!453523 () Bool)

(declare-fun e!994954 () Bool)

(assert (=> mapNonEmpty!8222 (= mapRes!8222 (and tp!453523 e!994954))))

(declare-fun mapRest!8222 () (Array (_ BitVec 32) List!16839))

(declare-fun mapKey!8222 () (_ BitVec 32))

(assert (=> mapNonEmpty!8222 (= mapRest!8217 (store mapRest!8222 mapKey!8222 mapValue!8222))))

(declare-fun b!1551317 () Bool)

(declare-fun tp!453525 () Bool)

(assert (=> b!1551317 (= e!994956 tp!453525)))

(declare-fun b!1551318 () Bool)

(declare-fun e!994959 () Bool)

(declare-fun tp!453519 () Bool)

(assert (=> b!1551318 (= e!994959 tp!453519)))

(declare-fun tp!453520 () Bool)

(declare-fun tp!453515 () Bool)

(declare-fun b!1551319 () Bool)

(assert (=> b!1551319 (= e!994954 (and tp!453520 (inv!22040 (_2!9403 (_1!9404 (h!22172 mapValue!8222)))) e!994959 tp_is_empty!7059 setRes!10586 tp!453515))))

(declare-fun condSetEmpty!10585 () Bool)

(assert (=> b!1551319 (= condSetEmpty!10585 (= (_2!9404 (h!22172 mapValue!8222)) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun tp!453518 () Bool)

(declare-fun b!1551320 () Bool)

(declare-fun tp!453524 () Bool)

(assert (=> b!1551320 (= e!994957 (and tp!453524 (inv!22040 (_2!9403 (_1!9404 (h!22172 mapDefault!8222)))) e!994955 tp_is_empty!7059 setRes!10585 tp!453518))))

(declare-fun condSetEmpty!10586 () Bool)

(assert (=> b!1551320 (= condSetEmpty!10586 (= (_2!9404 (h!22172 mapDefault!8222)) ((as const (Array Context!1570 Bool)) false)))))

(assert (= (and mapNonEmpty!8218 condMapEmpty!8222) mapIsEmpty!8222))

(assert (= (and mapNonEmpty!8218 (not condMapEmpty!8222)) mapNonEmpty!8222))

(assert (= b!1551319 b!1551318))

(assert (= (and b!1551319 condSetEmpty!10585) setIsEmpty!10585))

(assert (= (and b!1551319 (not condSetEmpty!10585)) setNonEmpty!10586))

(assert (= setNonEmpty!10586 b!1551316))

(assert (= (and mapNonEmpty!8222 ((_ is Cons!16771) mapValue!8222)) b!1551319))

(assert (= b!1551320 b!1551315))

(assert (= (and b!1551320 condSetEmpty!10586) setIsEmpty!10586))

(assert (= (and b!1551320 (not condSetEmpty!10586)) setNonEmpty!10585))

(assert (= setNonEmpty!10585 b!1551317))

(assert (= (and mapNonEmpty!8218 ((_ is Cons!16771) mapDefault!8222)) b!1551320))

(declare-fun m!1823849 () Bool)

(assert (=> setNonEmpty!10586 m!1823849))

(declare-fun m!1823851 () Bool)

(assert (=> setNonEmpty!10585 m!1823851))

(declare-fun m!1823853 () Bool)

(assert (=> mapNonEmpty!8222 m!1823853))

(declare-fun m!1823855 () Bool)

(assert (=> b!1551320 m!1823855))

(declare-fun m!1823857 () Bool)

(assert (=> b!1551319 m!1823857))

(declare-fun tp!453528 () Bool)

(declare-fun setNonEmpty!10587 () Bool)

(declare-fun setRes!10587 () Bool)

(declare-fun setElem!10587 () Context!1570)

(declare-fun e!994961 () Bool)

(assert (=> setNonEmpty!10587 (= setRes!10587 (and tp!453528 (inv!22040 setElem!10587) e!994961))))

(declare-fun setRest!10587 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10587 (= (_2!9404 (h!22172 mapValue!8219)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10587 true) setRest!10587))))

(declare-fun b!1551321 () Bool)

(declare-fun e!994960 () Bool)

(declare-fun tp!453527 () Bool)

(assert (=> b!1551321 (= e!994960 tp!453527)))

(declare-fun e!994962 () Bool)

(assert (=> mapNonEmpty!8218 (= tp!453381 e!994962)))

(declare-fun b!1551322 () Bool)

(declare-fun tp!453526 () Bool)

(assert (=> b!1551322 (= e!994961 tp!453526)))

(declare-fun setIsEmpty!10587 () Bool)

(assert (=> setIsEmpty!10587 setRes!10587))

(declare-fun b!1551323 () Bool)

(declare-fun tp!453530 () Bool)

(declare-fun tp!453529 () Bool)

(assert (=> b!1551323 (= e!994962 (and tp!453530 (inv!22040 (_2!9403 (_1!9404 (h!22172 mapValue!8219)))) e!994960 tp_is_empty!7059 setRes!10587 tp!453529))))

(declare-fun condSetEmpty!10587 () Bool)

(assert (=> b!1551323 (= condSetEmpty!10587 (= (_2!9404 (h!22172 mapValue!8219)) ((as const (Array Context!1570 Bool)) false)))))

(assert (= b!1551323 b!1551321))

(assert (= (and b!1551323 condSetEmpty!10587) setIsEmpty!10587))

(assert (= (and b!1551323 (not condSetEmpty!10587)) setNonEmpty!10587))

(assert (= setNonEmpty!10587 b!1551322))

(assert (= (and mapNonEmpty!8218 ((_ is Cons!16771) mapValue!8219)) b!1551323))

(declare-fun m!1823859 () Bool)

(assert (=> setNonEmpty!10587 m!1823859))

(declare-fun m!1823861 () Bool)

(assert (=> b!1551323 m!1823861))

(declare-fun condMapEmpty!8225 () Bool)

(declare-fun mapDefault!8225 () List!16837)

(assert (=> mapNonEmpty!8219 (= condMapEmpty!8225 (= mapRest!8219 ((as const (Array (_ BitVec 32) List!16837)) mapDefault!8225)))))

(declare-fun e!994975 () Bool)

(declare-fun mapRes!8225 () Bool)

(assert (=> mapNonEmpty!8219 (= tp!453389 (and e!994975 mapRes!8225))))

(declare-fun setIsEmpty!10592 () Bool)

(declare-fun setRes!10592 () Bool)

(assert (=> setIsEmpty!10592 setRes!10592))

(declare-fun b!1551338 () Bool)

(declare-fun e!994979 () Bool)

(declare-fun tp!453551 () Bool)

(assert (=> b!1551338 (= e!994979 tp!453551)))

(declare-fun mapNonEmpty!8225 () Bool)

(declare-fun tp!453552 () Bool)

(declare-fun e!994977 () Bool)

(assert (=> mapNonEmpty!8225 (= mapRes!8225 (and tp!453552 e!994977))))

(declare-fun mapValue!8225 () List!16837)

(declare-fun mapKey!8225 () (_ BitVec 32))

(declare-fun mapRest!8225 () (Array (_ BitVec 32) List!16837))

(assert (=> mapNonEmpty!8225 (= mapRest!8219 (store mapRest!8225 mapKey!8225 mapValue!8225))))

(declare-fun setNonEmpty!10592 () Bool)

(declare-fun e!994978 () Bool)

(declare-fun setElem!10592 () Context!1570)

(declare-fun tp!453549 () Bool)

(assert (=> setNonEmpty!10592 (= setRes!10592 (and tp!453549 (inv!22040 setElem!10592) e!994978))))

(declare-fun setRest!10592 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10592 (= (_2!9400 (h!22170 mapValue!8225)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10592 true) setRest!10592))))

(declare-fun b!1551339 () Bool)

(declare-fun e!994980 () Bool)

(declare-fun tp!453554 () Bool)

(assert (=> b!1551339 (= e!994980 tp!453554)))

(declare-fun b!1551340 () Bool)

(declare-fun tp!453555 () Bool)

(assert (=> b!1551340 (= e!994978 tp!453555)))

(declare-fun tp!453550 () Bool)

(declare-fun e!994976 () Bool)

(declare-fun b!1551341 () Bool)

(assert (=> b!1551341 (= e!994977 (and (inv!22040 (_1!9399 (_1!9400 (h!22170 mapValue!8225)))) e!994976 tp_is_empty!7059 setRes!10592 tp!453550))))

(declare-fun condSetEmpty!10593 () Bool)

(assert (=> b!1551341 (= condSetEmpty!10593 (= (_2!9400 (h!22170 mapValue!8225)) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun setIsEmpty!10593 () Bool)

(declare-fun setRes!10593 () Bool)

(assert (=> setIsEmpty!10593 setRes!10593))

(declare-fun mapIsEmpty!8225 () Bool)

(assert (=> mapIsEmpty!8225 mapRes!8225))

(declare-fun setElem!10593 () Context!1570)

(declare-fun tp!453556 () Bool)

(declare-fun setNonEmpty!10593 () Bool)

(assert (=> setNonEmpty!10593 (= setRes!10593 (and tp!453556 (inv!22040 setElem!10593) e!994979))))

(declare-fun setRest!10593 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10593 (= (_2!9400 (h!22170 mapDefault!8225)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10593 true) setRest!10593))))

(declare-fun b!1551342 () Bool)

(declare-fun tp!453553 () Bool)

(assert (=> b!1551342 (= e!994976 tp!453553)))

(declare-fun b!1551343 () Bool)

(declare-fun tp!453557 () Bool)

(assert (=> b!1551343 (= e!994975 (and (inv!22040 (_1!9399 (_1!9400 (h!22170 mapDefault!8225)))) e!994980 tp_is_empty!7059 setRes!10593 tp!453557))))

(declare-fun condSetEmpty!10592 () Bool)

(assert (=> b!1551343 (= condSetEmpty!10592 (= (_2!9400 (h!22170 mapDefault!8225)) ((as const (Array Context!1570 Bool)) false)))))

(assert (= (and mapNonEmpty!8219 condMapEmpty!8225) mapIsEmpty!8225))

(assert (= (and mapNonEmpty!8219 (not condMapEmpty!8225)) mapNonEmpty!8225))

(assert (= b!1551341 b!1551342))

(assert (= (and b!1551341 condSetEmpty!10593) setIsEmpty!10592))

(assert (= (and b!1551341 (not condSetEmpty!10593)) setNonEmpty!10592))

(assert (= setNonEmpty!10592 b!1551340))

(assert (= (and mapNonEmpty!8225 ((_ is Cons!16769) mapValue!8225)) b!1551341))

(assert (= b!1551343 b!1551339))

(assert (= (and b!1551343 condSetEmpty!10592) setIsEmpty!10593))

(assert (= (and b!1551343 (not condSetEmpty!10592)) setNonEmpty!10593))

(assert (= setNonEmpty!10593 b!1551338))

(assert (= (and mapNonEmpty!8219 ((_ is Cons!16769) mapDefault!8225)) b!1551343))

(declare-fun m!1823863 () Bool)

(assert (=> b!1551343 m!1823863))

(declare-fun m!1823865 () Bool)

(assert (=> setNonEmpty!10593 m!1823865))

(declare-fun m!1823867 () Bool)

(assert (=> b!1551341 m!1823867))

(declare-fun m!1823869 () Bool)

(assert (=> mapNonEmpty!8225 m!1823869))

(declare-fun m!1823871 () Bool)

(assert (=> setNonEmpty!10592 m!1823871))

(declare-fun b!1551344 () Bool)

(declare-fun e!994982 () Bool)

(declare-fun tp!453559 () Bool)

(assert (=> b!1551344 (= e!994982 tp!453559)))

(declare-fun e!994983 () Bool)

(assert (=> mapNonEmpty!8219 (= tp!453391 e!994983)))

(declare-fun setIsEmpty!10594 () Bool)

(declare-fun setRes!10594 () Bool)

(assert (=> setIsEmpty!10594 setRes!10594))

(declare-fun b!1551345 () Bool)

(declare-fun e!994981 () Bool)

(declare-fun tp!453561 () Bool)

(assert (=> b!1551345 (= e!994981 tp!453561)))

(declare-fun tp!453558 () Bool)

(declare-fun b!1551346 () Bool)

(assert (=> b!1551346 (= e!994983 (and (inv!22040 (_1!9399 (_1!9400 (h!22170 mapValue!8218)))) e!994981 tp_is_empty!7059 setRes!10594 tp!453558))))

(declare-fun condSetEmpty!10594 () Bool)

(assert (=> b!1551346 (= condSetEmpty!10594 (= (_2!9400 (h!22170 mapValue!8218)) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun setElem!10594 () Context!1570)

(declare-fun tp!453560 () Bool)

(declare-fun setNonEmpty!10594 () Bool)

(assert (=> setNonEmpty!10594 (= setRes!10594 (and tp!453560 (inv!22040 setElem!10594) e!994982))))

(declare-fun setRest!10594 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10594 (= (_2!9400 (h!22170 mapValue!8218)) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10594 true) setRest!10594))))

(assert (= b!1551346 b!1551345))

(assert (= (and b!1551346 condSetEmpty!10594) setIsEmpty!10594))

(assert (= (and b!1551346 (not condSetEmpty!10594)) setNonEmpty!10594))

(assert (= setNonEmpty!10594 b!1551344))

(assert (= (and mapNonEmpty!8219 ((_ is Cons!16769) mapValue!8218)) b!1551346))

(declare-fun m!1823873 () Bool)

(assert (=> b!1551346 m!1823873))

(declare-fun m!1823875 () Bool)

(assert (=> setNonEmpty!10594 m!1823875))

(declare-fun b!1551357 () Bool)

(declare-fun e!994992 () Bool)

(declare-fun setRes!10600 () Bool)

(declare-fun tp!453577 () Bool)

(assert (=> b!1551357 (= e!994992 (and setRes!10600 tp!453577))))

(declare-fun condSetEmpty!10599 () Bool)

(declare-fun mapDefault!8228 () List!16838)

(assert (=> b!1551357 (= condSetEmpty!10599 (= (_1!9401 (_1!9402 (h!22171 mapDefault!8228))) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun setIsEmpty!10599 () Bool)

(assert (=> setIsEmpty!10599 setRes!10600))

(declare-fun condMapEmpty!8228 () Bool)

(assert (=> mapNonEmpty!8217 (= condMapEmpty!8228 (= mapRest!8218 ((as const (Array (_ BitVec 32) List!16838)) mapDefault!8228)))))

(declare-fun mapRes!8228 () Bool)

(assert (=> mapNonEmpty!8217 (= tp!453401 (and e!994992 mapRes!8228))))

(declare-fun setIsEmpty!10600 () Bool)

(declare-fun setRes!10599 () Bool)

(assert (=> setIsEmpty!10600 setRes!10599))

(declare-fun mapIsEmpty!8228 () Bool)

(assert (=> mapIsEmpty!8228 mapRes!8228))

(declare-fun mapNonEmpty!8228 () Bool)

(declare-fun tp!453581 () Bool)

(declare-fun e!994994 () Bool)

(assert (=> mapNonEmpty!8228 (= mapRes!8228 (and tp!453581 e!994994))))

(declare-fun mapKey!8228 () (_ BitVec 32))

(declare-fun mapValue!8228 () List!16838)

(declare-fun mapRest!8228 () (Array (_ BitVec 32) List!16838))

(assert (=> mapNonEmpty!8228 (= mapRest!8218 (store mapRest!8228 mapKey!8228 mapValue!8228))))

(declare-fun tp!453582 () Bool)

(declare-fun setElem!10599 () Context!1570)

(declare-fun setNonEmpty!10599 () Bool)

(declare-fun e!994993 () Bool)

(assert (=> setNonEmpty!10599 (= setRes!10600 (and tp!453582 (inv!22040 setElem!10599) e!994993))))

(declare-fun setRest!10600 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10599 (= (_1!9401 (_1!9402 (h!22171 mapDefault!8228))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10599 true) setRest!10600))))

(declare-fun setNonEmpty!10600 () Bool)

(declare-fun setElem!10600 () Context!1570)

(declare-fun tp!453578 () Bool)

(declare-fun e!994995 () Bool)

(assert (=> setNonEmpty!10600 (= setRes!10599 (and tp!453578 (inv!22040 setElem!10600) e!994995))))

(declare-fun setRest!10599 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10600 (= (_1!9401 (_1!9402 (h!22171 mapValue!8228))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10600 true) setRest!10599))))

(declare-fun b!1551358 () Bool)

(declare-fun tp!453580 () Bool)

(assert (=> b!1551358 (= e!994993 tp!453580)))

(declare-fun b!1551359 () Bool)

(declare-fun tp!453576 () Bool)

(assert (=> b!1551359 (= e!994995 tp!453576)))

(declare-fun b!1551360 () Bool)

(declare-fun tp!453579 () Bool)

(assert (=> b!1551360 (= e!994994 (and setRes!10599 tp!453579))))

(declare-fun condSetEmpty!10600 () Bool)

(assert (=> b!1551360 (= condSetEmpty!10600 (= (_1!9401 (_1!9402 (h!22171 mapValue!8228))) ((as const (Array Context!1570 Bool)) false)))))

(assert (= (and mapNonEmpty!8217 condMapEmpty!8228) mapIsEmpty!8228))

(assert (= (and mapNonEmpty!8217 (not condMapEmpty!8228)) mapNonEmpty!8228))

(assert (= (and b!1551360 condSetEmpty!10600) setIsEmpty!10600))

(assert (= (and b!1551360 (not condSetEmpty!10600)) setNonEmpty!10600))

(assert (= setNonEmpty!10600 b!1551359))

(assert (= (and mapNonEmpty!8228 ((_ is Cons!16770) mapValue!8228)) b!1551360))

(assert (= (and b!1551357 condSetEmpty!10599) setIsEmpty!10599))

(assert (= (and b!1551357 (not condSetEmpty!10599)) setNonEmpty!10599))

(assert (= setNonEmpty!10599 b!1551358))

(assert (= (and mapNonEmpty!8217 ((_ is Cons!16770) mapDefault!8228)) b!1551357))

(declare-fun m!1823877 () Bool)

(assert (=> mapNonEmpty!8228 m!1823877))

(declare-fun m!1823879 () Bool)

(assert (=> setNonEmpty!10599 m!1823879))

(declare-fun m!1823881 () Bool)

(assert (=> setNonEmpty!10600 m!1823881))

(declare-fun setIsEmpty!10601 () Bool)

(declare-fun setRes!10601 () Bool)

(assert (=> setIsEmpty!10601 setRes!10601))

(declare-fun setElem!10601 () Context!1570)

(declare-fun e!994996 () Bool)

(declare-fun setNonEmpty!10601 () Bool)

(declare-fun tp!453584 () Bool)

(assert (=> setNonEmpty!10601 (= setRes!10601 (and tp!453584 (inv!22040 setElem!10601) e!994996))))

(declare-fun setRest!10601 () (InoxSet Context!1570))

(assert (=> setNonEmpty!10601 (= (_1!9401 (_1!9402 (h!22171 mapValue!8217))) ((_ map or) (store ((as const (Array Context!1570 Bool)) false) setElem!10601 true) setRest!10601))))

(declare-fun b!1551361 () Bool)

(declare-fun e!994997 () Bool)

(declare-fun tp!453585 () Bool)

(assert (=> b!1551361 (= e!994997 (and setRes!10601 tp!453585))))

(declare-fun condSetEmpty!10601 () Bool)

(assert (=> b!1551361 (= condSetEmpty!10601 (= (_1!9401 (_1!9402 (h!22171 mapValue!8217))) ((as const (Array Context!1570 Bool)) false)))))

(declare-fun b!1551362 () Bool)

(declare-fun tp!453583 () Bool)

(assert (=> b!1551362 (= e!994996 tp!453583)))

(assert (=> mapNonEmpty!8217 (= tp!453382 e!994997)))

(assert (= (and b!1551361 condSetEmpty!10601) setIsEmpty!10601))

(assert (= (and b!1551361 (not condSetEmpty!10601)) setNonEmpty!10601))

(assert (= setNonEmpty!10601 b!1551362))

(assert (= (and mapNonEmpty!8217 ((_ is Cons!16770) mapValue!8217)) b!1551361))

(declare-fun m!1823883 () Bool)

(assert (=> setNonEmpty!10601 m!1823883))

(declare-fun e!994998 () Bool)

(declare-fun b!1551363 () Bool)

(declare-fun tp!453586 () Bool)

(declare-fun tp!453588 () Bool)

(assert (=> b!1551363 (= e!994998 (and (inv!22034 (left!13641 (c!252285 (totalInput!2440 cacheFurthestNullable!103)))) tp!453588 (inv!22034 (right!13971 (c!252285 (totalInput!2440 cacheFurthestNullable!103)))) tp!453586))))

(declare-fun b!1551365 () Bool)

(declare-fun e!994999 () Bool)

(declare-fun tp!453587 () Bool)

(assert (=> b!1551365 (= e!994999 tp!453587)))

(declare-fun b!1551364 () Bool)

(assert (=> b!1551364 (= e!994998 (and (inv!22041 (xs!8357 (c!252285 (totalInput!2440 cacheFurthestNullable!103)))) e!994999))))

(assert (=> b!1551048 (= tp!453390 (and (inv!22034 (c!252285 (totalInput!2440 cacheFurthestNullable!103))) e!994998))))

(assert (= (and b!1551048 ((_ is Node!5557) (c!252285 (totalInput!2440 cacheFurthestNullable!103)))) b!1551363))

(assert (= b!1551364 b!1551365))

(assert (= (and b!1551048 ((_ is Leaf!8236) (c!252285 (totalInput!2440 cacheFurthestNullable!103)))) b!1551364))

(declare-fun m!1823885 () Bool)

(assert (=> b!1551363 m!1823885))

(declare-fun m!1823887 () Bool)

(assert (=> b!1551363 m!1823887))

(declare-fun m!1823889 () Bool)

(assert (=> b!1551364 m!1823889))

(assert (=> b!1551048 m!1823619))

(check-sat (not b_next!41899) (not bm!101800) (not setNonEmpty!10600) (not b!1551321) (not b!1551262) (not b!1551159) (not b!1551359) (not d!460307) (not b!1551275) (not bm!101803) (not b!1551320) (not b!1551199) (not d!460299) b_and!108281 (not b!1551203) (not b!1551358) (not d!460247) (not b!1551362) (not b!1551118) (not bm!101782) (not b!1551205) (not b!1551263) (not b!1551295) (not bm!101805) (not b!1551140) (not b!1551133) (not d!460283) (not setNonEmpty!10586) (not b!1551344) (not setNonEmpty!10580) (not d!460281) (not d!460263) (not b!1551361) (not b!1551360) (not setNonEmpty!10594) (not b_next!41891) (not b!1551319) (not b!1551060) (not d!460265) (not setNonEmpty!10579) (not b!1551318) (not b_next!41901) (not b!1551048) (not b!1551291) (not b!1551342) (not b!1551341) (not d!460303) (not b!1551079) (not b!1551224) (not b!1551300) (not b!1551343) (not b_next!41903) (not d!460309) (not b!1551280) (not b_next!41897) (not b!1551272) (not setNonEmpty!10569) (not bm!101802) (not b!1551136) (not b!1551238) (not b!1551151) (not d!460295) b_and!108289 (not setNonEmpty!10599) (not b!1551357) (not d!460251) (not b!1551223) (not b!1551317) b_and!108291 (not b!1551125) (not b!1551139) (not setNonEmpty!10568) (not b!1551365) (not b!1551214) (not b!1551130) (not b!1551261) (not bm!101799) (not b!1551339) (not setNonEmpty!10575) (not d!460271) (not b!1551340) (not b!1551273) (not bm!101804) (not b!1551298) b_and!108283 (not b!1551292) (not b!1551234) (not b!1551338) (not b!1551212) (not b!1551293) (not b!1551235) (not b!1551249) (not b!1551147) (not d!460261) (not d!460253) (not b!1551277) (not b!1551294) (not b!1551323) (not setNonEmpty!10578) (not d!460285) (not mapNonEmpty!8228) (not b!1551274) (not bm!101806) (not setNonEmpty!10593) (not b!1551248) (not b!1551290) (not b_next!41893) (not b!1551088) (not b!1551363) (not b!1551346) (not setNonEmpty!10573) (not b!1551345) b_and!108285 (not setNonEmpty!10601) (not setNonEmpty!10570) (not b!1551316) (not b!1551157) (not b!1551322) (not d!460289) (not mapNonEmpty!8222) (not b!1551121) (not b!1551315) tp_is_empty!7059 (not bm!101801) b_and!108277 (not b!1551127) (not b!1551211) (not setNonEmpty!10585) (not b!1551296) (not b!1551129) (not b!1551289) b_and!108279 (not b!1551276) (not b!1551299) (not b!1551196) (not b!1551236) (not b!1551279) (not b!1551247) b_and!108287 (not b!1551142) (not d!460311) (not b_next!41895) (not b!1551233) (not b!1551237) (not d!460287) (not setNonEmpty!10574) (not b!1551364) (not b_next!41905) (not b!1551225) (not b!1551062) (not mapNonEmpty!8225) (not setNonEmpty!10587) (not d!460297) (not setNonEmpty!10592) (not b!1551278) (not b!1551208) (not b!1551297) (not b!1551086))
(check-sat b_and!108281 (not b_next!41891) (not b_next!41901) b_and!108289 b_and!108291 (not b_next!41899) b_and!108283 (not b_next!41893) b_and!108285 b_and!108277 b_and!108279 b_and!108287 (not b_next!41895) (not b_next!41905) (not b_next!41897) (not b_next!41903))

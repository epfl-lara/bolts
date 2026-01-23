; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144214 () Bool)

(assert start!144214)

(declare-fun b!1555379 () Bool)

(declare-fun b_free!41351 () Bool)

(declare-fun b_next!42055 () Bool)

(assert (=> b!1555379 (= b_free!41351 (not b_next!42055))))

(declare-fun tp!455854 () Bool)

(declare-fun b_and!108501 () Bool)

(assert (=> b!1555379 (= tp!455854 b_and!108501)))

(declare-fun b!1555354 () Bool)

(declare-fun b_free!41353 () Bool)

(declare-fun b_next!42057 () Bool)

(assert (=> b!1555354 (= b_free!41353 (not b_next!42057))))

(declare-fun tp!455859 () Bool)

(declare-fun b_and!108503 () Bool)

(assert (=> b!1555354 (= tp!455859 b_and!108503)))

(declare-fun b!1555383 () Bool)

(declare-fun b_free!41355 () Bool)

(declare-fun b_next!42059 () Bool)

(assert (=> b!1555383 (= b_free!41355 (not b_next!42059))))

(declare-fun tp!455870 () Bool)

(declare-fun b_and!108505 () Bool)

(assert (=> b!1555383 (= tp!455870 b_and!108505)))

(declare-fun b!1555367 () Bool)

(declare-fun b_free!41357 () Bool)

(declare-fun b_next!42061 () Bool)

(assert (=> b!1555367 (= b_free!41357 (not b_next!42061))))

(declare-fun tp!455864 () Bool)

(declare-fun b_and!108507 () Bool)

(assert (=> b!1555367 (= tp!455864 b_and!108507)))

(declare-fun b!1555370 () Bool)

(declare-fun b_free!41359 () Bool)

(declare-fun b_next!42063 () Bool)

(assert (=> b!1555370 (= b_free!41359 (not b_next!42063))))

(declare-fun tp!455880 () Bool)

(declare-fun b_and!108509 () Bool)

(assert (=> b!1555370 (= tp!455880 b_and!108509)))

(declare-fun b!1555361 () Bool)

(declare-fun b_free!41361 () Bool)

(declare-fun b_next!42065 () Bool)

(assert (=> b!1555361 (= b_free!41361 (not b_next!42065))))

(declare-fun tp!455863 () Bool)

(declare-fun b_and!108511 () Bool)

(assert (=> b!1555361 (= tp!455863 b_and!108511)))

(declare-fun b_free!41363 () Bool)

(declare-fun b_next!42067 () Bool)

(assert (=> b!1555361 (= b_free!41363 (not b_next!42067))))

(declare-fun tp!455875 () Bool)

(declare-fun b_and!108513 () Bool)

(assert (=> b!1555361 (= tp!455875 b_and!108513)))

(declare-fun b!1555377 () Bool)

(declare-fun b_free!41365 () Bool)

(declare-fun b_next!42069 () Bool)

(assert (=> b!1555377 (= b_free!41365 (not b_next!42069))))

(declare-fun tp!455857 () Bool)

(declare-fun b_and!108515 () Bool)

(assert (=> b!1555377 (= tp!455857 b_and!108515)))

(declare-fun b!1555399 () Bool)

(declare-fun e!997962 () Bool)

(assert (=> b!1555399 (= e!997962 true)))

(declare-fun b!1555398 () Bool)

(declare-fun e!997961 () Bool)

(assert (=> b!1555398 (= e!997961 e!997962)))

(declare-fun b!1555384 () Bool)

(assert (=> b!1555384 e!997961))

(assert (= b!1555398 b!1555399))

(assert (= b!1555384 b!1555398))

(declare-fun order!9895 () Int)

(declare-datatypes ((List!16882 0))(
  ( (Nil!16814) (Cons!16814 (h!22215 (_ BitVec 16)) (t!141345 List!16882)) )
))
(declare-datatypes ((TokenValue!3037 0))(
  ( (FloatLiteralValue!6074 (text!21704 List!16882)) (TokenValueExt!3036 (__x!11183 Int)) (Broken!15185 (value!93601 List!16882)) (Object!3104) (End!3037) (Def!3037) (Underscore!3037) (Match!3037) (Else!3037) (Error!3037) (Case!3037) (If!3037) (Extends!3037) (Abstract!3037) (Class!3037) (Val!3037) (DelimiterValue!6074 (del!3097 List!16882)) (KeywordValue!3043 (value!93602 List!16882)) (CommentValue!6074 (value!93603 List!16882)) (WhitespaceValue!6074 (value!93604 List!16882)) (IndentationValue!3037 (value!93605 List!16882)) (String!19472) (Int32!3037) (Broken!15186 (value!93606 List!16882)) (Boolean!3038) (Unit!26063) (OperatorValue!3040 (op!3097 List!16882)) (IdentifierValue!6074 (value!93607 List!16882)) (IdentifierValue!6075 (value!93608 List!16882)) (WhitespaceValue!6075 (value!93609 List!16882)) (True!6074) (False!6074) (Broken!15187 (value!93610 List!16882)) (Broken!15188 (value!93611 List!16882)) (True!6075) (RightBrace!3037) (RightBracket!3037) (Colon!3037) (Null!3037) (Comma!3037) (LeftBracket!3037) (False!6075) (LeftBrace!3037) (ImaginaryLiteralValue!3037 (text!21705 List!16882)) (StringLiteralValue!9111 (value!93612 List!16882)) (EOFValue!3037 (value!93613 List!16882)) (IdentValue!3037 (value!93614 List!16882)) (DelimiterValue!6075 (value!93615 List!16882)) (DedentValue!3037 (value!93616 List!16882)) (NewLineValue!3037 (value!93617 List!16882)) (IntegerValue!9111 (value!93618 (_ BitVec 32)) (text!21706 List!16882)) (IntegerValue!9112 (value!93619 Int) (text!21707 List!16882)) (Times!3037) (Or!3037) (Equal!3037) (Minus!3037) (Broken!15189 (value!93620 List!16882)) (And!3037) (Div!3037) (LessEqual!3037) (Mod!3037) (Concat!7312) (Not!3037) (Plus!3037) (SpaceValue!3037 (value!93621 List!16882)) (IntegerValue!9113 (value!93622 Int) (text!21708 List!16882)) (StringLiteralValue!9112 (text!21709 List!16882)) (FloatLiteralValue!6075 (text!21710 List!16882)) (BytesLiteralValue!3037 (value!93623 List!16882)) (CommentValue!6075 (value!93624 List!16882)) (StringLiteralValue!9113 (value!93625 List!16882)) (ErrorTokenValue!3037 (msg!3098 List!16882)) )
))
(declare-datatypes ((C!8728 0))(
  ( (C!8729 (val!4936 Int)) )
))
(declare-datatypes ((List!16883 0))(
  ( (Nil!16815) (Cons!16815 (h!22216 C!8728) (t!141346 List!16883)) )
))
(declare-datatypes ((IArray!11135 0))(
  ( (IArray!11136 (innerList!5625 List!16883)) )
))
(declare-datatypes ((Conc!5565 0))(
  ( (Node!5565 (left!13669 Conc!5565) (right!13999 Conc!5565) (csize!11360 Int) (cheight!5776 Int)) (Leaf!8248 (xs!8365 IArray!11135) (csize!11361 Int)) (Empty!5565) )
))
(declare-datatypes ((BalanceConc!11072 0))(
  ( (BalanceConc!11073 (c!252761 Conc!5565)) )
))
(declare-datatypes ((Regex!4275 0))(
  ( (ElementMatch!4275 (c!252762 C!8728)) (Concat!7313 (regOne!9062 Regex!4275) (regTwo!9062 Regex!4275)) (EmptyExpr!4275) (Star!4275 (reg!4604 Regex!4275)) (EmptyLang!4275) (Union!4275 (regOne!9063 Regex!4275) (regTwo!9063 Regex!4275)) )
))
(declare-datatypes ((String!19473 0))(
  ( (String!19474 (value!93626 String)) )
))
(declare-datatypes ((TokenValueInjection!5734 0))(
  ( (TokenValueInjection!5735 (toValue!4318 Int) (toChars!4177 Int)) )
))
(declare-datatypes ((Rule!5694 0))(
  ( (Rule!5695 (regex!2947 Regex!4275) (tag!3211 String!19473) (isSeparator!2947 Bool) (transformation!2947 TokenValueInjection!5734)) )
))
(declare-fun rule!240 () Rule!5694)

(declare-fun order!9897 () Int)

(declare-fun lambda!65861 () Int)

(declare-fun dynLambda!7451 (Int Int) Int)

(declare-fun dynLambda!7452 (Int Int) Int)

(assert (=> b!1555399 (< (dynLambda!7451 order!9895 (toValue!4318 (transformation!2947 rule!240))) (dynLambda!7452 order!9897 lambda!65861))))

(declare-fun order!9899 () Int)

(declare-fun dynLambda!7453 (Int Int) Int)

(assert (=> b!1555399 (< (dynLambda!7453 order!9899 (toChars!4177 (transformation!2947 rule!240))) (dynLambda!7452 order!9897 lambda!65861))))

(declare-fun b!1555352 () Bool)

(declare-fun e!997921 () Bool)

(declare-fun e!997955 () Bool)

(assert (=> b!1555352 (= e!997921 e!997955)))

(declare-fun b!1555353 () Bool)

(declare-fun e!997949 () Bool)

(declare-fun e!997923 () Bool)

(assert (=> b!1555353 (= e!997949 e!997923)))

(declare-fun res!694303 () Bool)

(assert (=> b!1555353 (=> (not res!694303) (not e!997923))))

(declare-fun lt!538547 () List!16883)

(declare-fun totalInput!568 () BalanceConc!11072)

(declare-fun isSuffix!375 (List!16883 List!16883) Bool)

(declare-fun list!6493 (BalanceConc!11072) List!16883)

(assert (=> b!1555353 (= res!694303 (isSuffix!375 lt!538547 (list!6493 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11072)

(assert (=> b!1555353 (= lt!538547 (list!6493 input!1676))))

(declare-fun e!997926 () Bool)

(declare-fun e!997928 () Bool)

(assert (=> b!1555354 (= e!997926 (and e!997928 tp!455859))))

(declare-fun b!1555355 () Bool)

(declare-fun e!997929 () Bool)

(declare-fun e!997924 () Bool)

(assert (=> b!1555355 (= e!997929 e!997924)))

(declare-fun lt!538548 () BalanceConc!11072)

(declare-fun lt!538555 () TokenValue!3037)

(declare-fun b!1555356 () Bool)

(declare-fun e!997953 () Bool)

(declare-fun apply!4109 (TokenValueInjection!5734 BalanceConc!11072) TokenValue!3037)

(assert (=> b!1555356 (= e!997953 (= (apply!4109 (transformation!2947 rule!240) lt!538548) lt!538555))))

(declare-datatypes ((List!16884 0))(
  ( (Nil!16816) (Cons!16816 (h!22217 Regex!4275) (t!141347 List!16884)) )
))
(declare-datatypes ((Context!1586 0))(
  ( (Context!1587 (exprs!1293 List!16884)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1786 0))(
  ( (tuple3!1787 (_1!9477 (InoxSet Context!1586)) (_2!9477 Int) (_3!1339 Int)) )
))
(declare-datatypes ((tuple2!16276 0))(
  ( (tuple2!16277 (_1!9478 tuple3!1786) (_2!9478 Int)) )
))
(declare-datatypes ((List!16885 0))(
  ( (Nil!16817) (Cons!16817 (h!22218 tuple2!16276) (t!141348 List!16885)) )
))
(declare-datatypes ((array!6160 0))(
  ( (array!6161 (arr!2747 (Array (_ BitVec 32) List!16885)) (size!13613 (_ BitVec 32))) )
))
(declare-datatypes ((array!6162 0))(
  ( (array!6163 (arr!2748 (Array (_ BitVec 32) (_ BitVec 64))) (size!13614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3594 0))(
  ( (LongMapFixedSize!3595 (defaultEntry!2157 Int) (mask!5023 (_ BitVec 32)) (extraKeys!2044 (_ BitVec 32)) (zeroValue!2054 List!16885) (minValue!2054 List!16885) (_size!3675 (_ BitVec 32)) (_keys!2091 array!6162) (_values!2076 array!6160) (_vacant!1858 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!16278 0))(
  ( (tuple2!16279 (_1!9479 Context!1586) (_2!9479 C!8728)) )
))
(declare-datatypes ((tuple2!16280 0))(
  ( (tuple2!16281 (_1!9480 tuple2!16278) (_2!9480 (InoxSet Context!1586))) )
))
(declare-datatypes ((List!16886 0))(
  ( (Nil!16818) (Cons!16818 (h!22219 tuple2!16280) (t!141349 List!16886)) )
))
(declare-datatypes ((array!6164 0))(
  ( (array!6165 (arr!2749 (Array (_ BitVec 32) List!16886)) (size!13615 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3596 0))(
  ( (LongMapFixedSize!3597 (defaultEntry!2158 Int) (mask!5024 (_ BitVec 32)) (extraKeys!2045 (_ BitVec 32)) (zeroValue!2055 List!16886) (minValue!2055 List!16886) (_size!3676 (_ BitVec 32)) (_keys!2092 array!6162) (_values!2077 array!6164) (_vacant!1859 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7073 0))(
  ( (Cell!7074 (v!23658 LongMapFixedSize!3596)) )
))
(declare-datatypes ((MutLongMap!1797 0))(
  ( (LongMap!1797 (underlying!3803 Cell!7073)) (MutLongMapExt!1796 (__x!11184 Int)) )
))
(declare-datatypes ((Cell!7075 0))(
  ( (Cell!7076 (v!23659 MutLongMap!1797)) )
))
(declare-datatypes ((tuple3!1788 0))(
  ( (tuple3!1789 (_1!9481 Regex!4275) (_2!9481 Context!1586) (_3!1340 C!8728)) )
))
(declare-datatypes ((Hashable!1741 0))(
  ( (HashableExt!1740 (__x!11185 Int)) )
))
(declare-datatypes ((MutableMap!1741 0))(
  ( (MutableMapExt!1740 (__x!11186 Int)) (HashMap!1741 (underlying!3804 Cell!7075) (hashF!3660 Hashable!1741) (_size!3677 (_ BitVec 32)) (defaultValue!1901 Int)) )
))
(declare-datatypes ((CacheUp!1060 0))(
  ( (CacheUp!1061 (cache!2122 MutableMap!1741)) )
))
(declare-datatypes ((tuple2!16282 0))(
  ( (tuple2!16283 (_1!9482 tuple3!1788) (_2!9482 (InoxSet Context!1586))) )
))
(declare-datatypes ((List!16887 0))(
  ( (Nil!16819) (Cons!16819 (h!22220 tuple2!16282) (t!141350 List!16887)) )
))
(declare-datatypes ((Cell!7077 0))(
  ( (Cell!7078 (v!23660 LongMapFixedSize!3594)) )
))
(declare-datatypes ((array!6166 0))(
  ( (array!6167 (arr!2750 (Array (_ BitVec 32) List!16887)) (size!13616 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3598 0))(
  ( (LongMapFixedSize!3599 (defaultEntry!2159 Int) (mask!5025 (_ BitVec 32)) (extraKeys!2046 (_ BitVec 32)) (zeroValue!2056 List!16887) (minValue!2056 List!16887) (_size!3678 (_ BitVec 32)) (_keys!2093 array!6162) (_values!2078 array!6166) (_vacant!1860 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7079 0))(
  ( (Cell!7080 (v!23661 LongMapFixedSize!3598)) )
))
(declare-datatypes ((tuple2!16284 0))(
  ( (tuple2!16285 (_1!9483 BalanceConc!11072) (_2!9483 BalanceConc!11072)) )
))
(declare-datatypes ((MutLongMap!1798 0))(
  ( (LongMap!1798 (underlying!3805 Cell!7079)) (MutLongMapExt!1797 (__x!11187 Int)) )
))
(declare-datatypes ((Cell!7081 0))(
  ( (Cell!7082 (v!23662 MutLongMap!1798)) )
))
(declare-datatypes ((Hashable!1742 0))(
  ( (HashableExt!1741 (__x!11188 Int)) )
))
(declare-datatypes ((MutableMap!1742 0))(
  ( (MutableMapExt!1741 (__x!11189 Int)) (HashMap!1742 (underlying!3806 Cell!7081) (hashF!3661 Hashable!1742) (_size!3679 (_ BitVec 32)) (defaultValue!1902 Int)) )
))
(declare-datatypes ((CacheDown!1064 0))(
  ( (CacheDown!1065 (cache!2123 MutableMap!1742)) )
))
(declare-datatypes ((MutLongMap!1799 0))(
  ( (LongMap!1799 (underlying!3807 Cell!7077)) (MutLongMapExt!1798 (__x!11190 Int)) )
))
(declare-datatypes ((Cell!7083 0))(
  ( (Cell!7084 (v!23663 MutLongMap!1799)) )
))
(declare-datatypes ((Hashable!1743 0))(
  ( (HashableExt!1742 (__x!11191 Int)) )
))
(declare-datatypes ((MutableMap!1743 0))(
  ( (MutableMapExt!1742 (__x!11192 Int)) (HashMap!1743 (underlying!3808 Cell!7083) (hashF!3662 Hashable!1743) (_size!3680 (_ BitVec 32)) (defaultValue!1903 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!486 0))(
  ( (CacheFurthestNullable!487 (cache!2124 MutableMap!1743) (totalInput!2462 BalanceConc!11072)) )
))
(declare-datatypes ((tuple4!892 0))(
  ( (tuple4!893 (_1!9484 tuple2!16284) (_2!9484 CacheUp!1060) (_3!1341 CacheDown!1064) (_4!446 CacheFurthestNullable!486)) )
))
(declare-fun lt!538554 () tuple4!892)

(declare-datatypes ((Unit!26064 0))(
  ( (Unit!26065) )
))
(declare-fun lt!538552 () Unit!26064)

(declare-fun lemmaEqSameImage!148 (TokenValueInjection!5734 BalanceConc!11072 BalanceConc!11072) Unit!26064)

(assert (=> b!1555356 (= lt!538552 (lemmaEqSameImage!148 (transformation!2947 rule!240) (_1!9483 (_1!9484 lt!538554)) lt!538548))))

(declare-fun mapNonEmpty!8361 () Bool)

(declare-fun mapRes!8361 () Bool)

(declare-fun tp!455872 () Bool)

(declare-fun tp!455855 () Bool)

(assert (=> mapNonEmpty!8361 (= mapRes!8361 (and tp!455872 tp!455855))))

(declare-fun mapKey!8361 () (_ BitVec 32))

(declare-fun cacheDown!768 () CacheDown!1064)

(declare-fun mapValue!8363 () List!16887)

(declare-fun mapRest!8362 () (Array (_ BitVec 32) List!16887))

(assert (=> mapNonEmpty!8361 (= (arr!2750 (_values!2078 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) (store mapRest!8362 mapKey!8361 mapValue!8363))))

(declare-fun b!1555357 () Bool)

(declare-fun res!694301 () Bool)

(assert (=> b!1555357 (=> (not res!694301) (not e!997949))))

(declare-fun cacheUp!755 () CacheUp!1060)

(declare-fun valid!1446 (CacheUp!1060) Bool)

(assert (=> b!1555357 (= res!694301 (valid!1446 cacheUp!755))))

(declare-fun b!1555358 () Bool)

(declare-fun e!997954 () Bool)

(declare-fun tp!455878 () Bool)

(declare-fun inv!22089 (Conc!5565) Bool)

(assert (=> b!1555358 (= e!997954 (and (inv!22089 (c!252761 totalInput!568)) tp!455878))))

(declare-fun b!1555359 () Bool)

(declare-fun e!997943 () Bool)

(declare-fun e!997927 () Bool)

(assert (=> b!1555359 (= e!997943 e!997927)))

(declare-fun e!997947 () Bool)

(declare-fun b!1555360 () Bool)

(declare-fun tp!455876 () Bool)

(declare-fun e!997946 () Bool)

(declare-fun inv!22086 (String!19473) Bool)

(declare-fun inv!22090 (TokenValueInjection!5734) Bool)

(assert (=> b!1555360 (= e!997946 (and tp!455876 (inv!22086 (tag!3211 rule!240)) (inv!22090 (transformation!2947 rule!240)) e!997947))))

(assert (=> b!1555361 (= e!997947 (and tp!455863 tp!455875))))

(declare-fun b!1555362 () Bool)

(declare-fun e!997951 () Bool)

(declare-fun e!997932 () Bool)

(declare-fun lt!538546 () MutLongMap!1797)

(get-info :version)

(assert (=> b!1555362 (= e!997951 (and e!997932 ((_ is LongMap!1797) lt!538546)))))

(assert (=> b!1555362 (= lt!538546 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))

(declare-fun b!1555363 () Bool)

(declare-fun e!997950 () Bool)

(declare-datatypes ((tuple2!16286 0))(
  ( (tuple2!16287 (_1!9485 List!16883) (_2!9485 List!16883)) )
))
(declare-fun lt!538558 () tuple2!16286)

(declare-fun matchR!1878 (Regex!4275 List!16883) Bool)

(assert (=> b!1555363 (= e!997950 (matchR!1878 (regex!2947 rule!240) (_1!9485 lt!538558)))))

(declare-fun b!1555364 () Bool)

(declare-fun res!694296 () Bool)

(assert (=> b!1555364 (=> res!694296 e!997953)))

(declare-fun lt!538557 () Bool)

(assert (=> b!1555364 (= res!694296 (not lt!538557))))

(declare-fun mapNonEmpty!8362 () Bool)

(declare-fun mapRes!8363 () Bool)

(declare-fun tp!455865 () Bool)

(declare-fun tp!455869 () Bool)

(assert (=> mapNonEmpty!8362 (= mapRes!8363 (and tp!455865 tp!455869))))

(declare-fun mapValue!8361 () List!16886)

(declare-fun mapRest!8361 () (Array (_ BitVec 32) List!16886))

(declare-fun mapKey!8363 () (_ BitVec 32))

(assert (=> mapNonEmpty!8362 (= (arr!2749 (_values!2077 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) (store mapRest!8361 mapKey!8363 mapValue!8361))))

(declare-fun mapIsEmpty!8361 () Bool)

(assert (=> mapIsEmpty!8361 mapRes!8363))

(declare-fun b!1555365 () Bool)

(declare-fun res!694293 () Bool)

(assert (=> b!1555365 (=> (not res!694293) (not e!997923))))

(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!486)

(assert (=> b!1555365 (= res!694293 (= (totalInput!2462 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1555366 () Bool)

(declare-fun e!997956 () Bool)

(declare-fun tp!455860 () Bool)

(assert (=> b!1555366 (= e!997956 (and tp!455860 mapRes!8363))))

(declare-fun condMapEmpty!8361 () Bool)

(declare-fun mapDefault!8363 () List!16886)

(assert (=> b!1555366 (= condMapEmpty!8361 (= (arr!2749 (_values!2077 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16886)) mapDefault!8363)))))

(declare-fun e!997952 () Bool)

(assert (=> b!1555367 (= e!997952 (and e!997951 tp!455864))))

(declare-fun b!1555368 () Bool)

(declare-fun e!997931 () Bool)

(assert (=> b!1555368 (= e!997931 e!997952)))

(declare-fun b!1555369 () Bool)

(declare-fun e!997942 () Bool)

(declare-fun tp!455877 () Bool)

(assert (=> b!1555369 (= e!997942 (and (inv!22089 (c!252761 input!1676)) tp!455877))))

(declare-fun e!997945 () Bool)

(declare-fun tp!455858 () Bool)

(declare-fun tp!455861 () Bool)

(declare-fun e!997940 () Bool)

(declare-fun array_inv!1974 (array!6162) Bool)

(declare-fun array_inv!1975 (array!6166) Bool)

(assert (=> b!1555370 (= e!997945 (and tp!455880 tp!455861 tp!455858 (array_inv!1974 (_keys!2093 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) (array_inv!1975 (_values!2078 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) e!997940))))

(declare-fun b!1555371 () Bool)

(declare-fun e!997925 () Bool)

(declare-fun e!997944 () Bool)

(assert (=> b!1555371 (= e!997925 e!997944)))

(declare-fun b!1555372 () Bool)

(declare-fun e!997948 () Bool)

(assert (=> b!1555372 (= e!997955 e!997948)))

(declare-fun b!1555373 () Bool)

(declare-fun res!694304 () Bool)

(assert (=> b!1555373 (=> (not res!694304) (not e!997949))))

(declare-fun valid!1447 (CacheFurthestNullable!486) Bool)

(assert (=> b!1555373 (= res!694304 (valid!1447 cacheFurthestNullable!103))))

(declare-fun b!1555374 () Bool)

(assert (=> b!1555374 (= e!997927 e!997945)))

(declare-fun b!1555375 () Bool)

(assert (=> b!1555375 (= e!997932 e!997929)))

(declare-fun mapIsEmpty!8362 () Bool)

(assert (=> mapIsEmpty!8362 mapRes!8361))

(declare-fun b!1555376 () Bool)

(declare-fun e!997937 () Bool)

(assert (=> b!1555376 (= e!997937 e!997953)))

(declare-fun res!694299 () Bool)

(assert (=> b!1555376 (=> res!694299 e!997953)))

(declare-datatypes ((LexerInterface!2584 0))(
  ( (LexerInterfaceExt!2581 (__x!11193 Int)) (Lexer!2582) )
))
(declare-fun thiss!16438 () LexerInterface!2584)

(declare-datatypes ((Token!5472 0))(
  ( (Token!5473 (value!93627 TokenValue!3037) (rule!4729 Rule!5694) (size!13617 Int) (originalCharacters!3767 List!16883)) )
))
(declare-datatypes ((tuple2!16288 0))(
  ( (tuple2!16289 (_1!9486 Token!5472) (_2!9486 List!16883)) )
))
(declare-datatypes ((Option!3034 0))(
  ( (None!3033) (Some!3033 (v!23664 tuple2!16288)) )
))
(declare-fun isDefined!2437 (Option!3034) Bool)

(declare-fun maxPrefixOneRule!702 (LexerInterface!2584 Rule!5694 List!16883) Option!3034)

(assert (=> b!1555376 (= res!694299 (not (= lt!538557 (isDefined!2437 (maxPrefixOneRule!702 thiss!16438 rule!240 lt!538547)))))))

(declare-fun lt!538560 () List!16883)

(declare-datatypes ((tuple2!16290 0))(
  ( (tuple2!16291 (_1!9487 Token!5472) (_2!9487 BalanceConc!11072)) )
))
(declare-datatypes ((Option!3035 0))(
  ( (None!3034) (Some!3034 (v!23665 tuple2!16290)) )
))
(declare-fun isDefined!2438 (Option!3035) Bool)

(declare-fun size!13618 (BalanceConc!11072) Int)

(assert (=> b!1555376 (= lt!538557 (isDefined!2438 (Some!3034 (tuple2!16291 (Token!5473 lt!538555 rule!240 (size!13618 (_1!9483 (_1!9484 lt!538554))) lt!538560) (_2!9483 (_1!9484 lt!538554))))))))

(assert (=> b!1555376 (= lt!538555 (apply!4109 (transformation!2947 rule!240) (_1!9483 (_1!9484 lt!538554))))))

(declare-fun lt!538551 () Unit!26064)

(declare-fun ForallOf!210 (Int BalanceConc!11072) Unit!26064)

(assert (=> b!1555376 (= lt!538551 (ForallOf!210 lambda!65861 lt!538548))))

(declare-fun seqFromList!1773 (List!16883) BalanceConc!11072)

(assert (=> b!1555376 (= lt!538548 (seqFromList!1773 lt!538560))))

(assert (=> b!1555376 (= lt!538560 (list!6493 (_1!9483 (_1!9484 lt!538554))))))

(declare-fun lt!538549 () Unit!26064)

(assert (=> b!1555376 (= lt!538549 (ForallOf!210 lambda!65861 (_1!9483 (_1!9484 lt!538554))))))

(declare-fun tp!455871 () Bool)

(declare-fun e!997941 () Bool)

(declare-fun tp!455866 () Bool)

(declare-fun array_inv!1976 (array!6160) Bool)

(assert (=> b!1555377 (= e!997948 (and tp!455857 tp!455866 tp!455871 (array_inv!1974 (_keys!2091 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) (array_inv!1976 (_values!2076 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) e!997941))))

(declare-fun b!1555378 () Bool)

(declare-fun e!997922 () Bool)

(declare-fun e!997939 () Bool)

(declare-fun inv!22091 (BalanceConc!11072) Bool)

(assert (=> b!1555378 (= e!997922 (and e!997926 (inv!22091 (totalInput!2462 cacheFurthestNullable!103)) e!997939))))

(declare-fun tp!455867 () Bool)

(declare-fun tp!455868 () Bool)

(declare-fun array_inv!1977 (array!6164) Bool)

(assert (=> b!1555379 (= e!997924 (and tp!455854 tp!455867 tp!455868 (array_inv!1974 (_keys!2092 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) (array_inv!1977 (_values!2077 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) e!997956))))

(declare-fun b!1555380 () Bool)

(declare-fun res!694302 () Bool)

(assert (=> b!1555380 (=> (not res!694302) (not e!997949))))

(declare-fun valid!1448 (CacheDown!1064) Bool)

(assert (=> b!1555380 (= res!694302 (valid!1448 cacheDown!768))))

(declare-fun b!1555381 () Bool)

(declare-fun e!997936 () Bool)

(assert (=> b!1555381 (= e!997923 e!997936)))

(declare-fun res!694300 () Bool)

(assert (=> b!1555381 (=> (not res!694300) (not e!997936))))

(declare-fun isEmpty!10112 (BalanceConc!11072) Bool)

(assert (=> b!1555381 (= res!694300 (not (isEmpty!10112 (_1!9483 (_1!9484 lt!538554)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!49 (Regex!4275 BalanceConc!11072 BalanceConc!11072 CacheUp!1060 CacheDown!1064 CacheFurthestNullable!486) tuple4!892)

(assert (=> b!1555381 (= lt!538554 (findLongestMatchWithZipperSequenceV3Mem!49 (regex!2947 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1555382 () Bool)

(assert (=> b!1555382 (= e!997936 (not e!997937))))

(declare-fun res!694305 () Bool)

(assert (=> b!1555382 (=> res!694305 e!997937)))

(declare-fun semiInverseModEq!1112 (Int Int) Bool)

(assert (=> b!1555382 (= res!694305 (not (semiInverseModEq!1112 (toChars!4177 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240)))))))

(declare-fun lt!538556 () Unit!26064)

(declare-fun lemmaInv!426 (TokenValueInjection!5734) Unit!26064)

(assert (=> b!1555382 (= lt!538556 (lemmaInv!426 (transformation!2947 rule!240)))))

(assert (=> b!1555382 e!997950))

(declare-fun res!694294 () Bool)

(assert (=> b!1555382 (=> res!694294 e!997950)))

(declare-fun isEmpty!10113 (List!16883) Bool)

(assert (=> b!1555382 (= res!694294 (isEmpty!10113 (_1!9485 lt!538558)))))

(declare-fun findLongestMatchInner!332 (Regex!4275 List!16883 Int List!16883 List!16883 Int) tuple2!16286)

(declare-fun size!13619 (List!16883) Int)

(assert (=> b!1555382 (= lt!538558 (findLongestMatchInner!332 (regex!2947 rule!240) Nil!16815 (size!13619 Nil!16815) lt!538547 lt!538547 (size!13619 lt!538547)))))

(declare-fun lt!538559 () Unit!26064)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!316 (Regex!4275 List!16883) Unit!26064)

(assert (=> b!1555382 (= lt!538559 (longestMatchIsAcceptedByMatchOrIsEmpty!316 (regex!2947 rule!240) lt!538547))))

(declare-fun e!997930 () Bool)

(assert (=> b!1555383 (= e!997944 (and e!997930 tp!455870))))

(declare-fun res!694297 () Bool)

(assert (=> b!1555384 (=> res!694297 e!997937)))

(declare-fun Forall!608 (Int) Bool)

(assert (=> b!1555384 (= res!694297 (not (Forall!608 lambda!65861)))))

(declare-fun b!1555385 () Bool)

(declare-fun lt!538553 () MutLongMap!1799)

(assert (=> b!1555385 (= e!997928 (and e!997921 ((_ is LongMap!1799) lt!538553)))))

(assert (=> b!1555385 (= lt!538553 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))

(declare-fun mapNonEmpty!8363 () Bool)

(declare-fun mapRes!8362 () Bool)

(declare-fun tp!455856 () Bool)

(declare-fun tp!455873 () Bool)

(assert (=> mapNonEmpty!8363 (= mapRes!8362 (and tp!455856 tp!455873))))

(declare-fun mapKey!8362 () (_ BitVec 32))

(declare-fun mapValue!8362 () List!16885)

(declare-fun mapRest!8363 () (Array (_ BitVec 32) List!16885))

(assert (=> mapNonEmpty!8363 (= (arr!2747 (_values!2076 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) (store mapRest!8363 mapKey!8362 mapValue!8362))))

(declare-fun res!694292 () Bool)

(assert (=> start!144214 (=> (not res!694292) (not e!997949))))

(assert (=> start!144214 (= res!694292 ((_ is Lexer!2582) thiss!16438))))

(assert (=> start!144214 e!997949))

(assert (=> start!144214 (and (inv!22091 totalInput!568) e!997954)))

(declare-fun inv!22092 (CacheUp!1060) Bool)

(assert (=> start!144214 (and (inv!22092 cacheUp!755) e!997931)))

(declare-fun inv!22093 (CacheFurthestNullable!486) Bool)

(assert (=> start!144214 (and (inv!22093 cacheFurthestNullable!103) e!997922)))

(assert (=> start!144214 (and (inv!22091 input!1676) e!997942)))

(assert (=> start!144214 e!997946))

(declare-fun inv!22094 (CacheDown!1064) Bool)

(assert (=> start!144214 (and (inv!22094 cacheDown!768) e!997925)))

(assert (=> start!144214 true))

(declare-fun b!1555386 () Bool)

(declare-fun tp!455862 () Bool)

(assert (=> b!1555386 (= e!997940 (and tp!455862 mapRes!8361))))

(declare-fun condMapEmpty!8362 () Bool)

(declare-fun mapDefault!8362 () List!16887)

(assert (=> b!1555386 (= condMapEmpty!8362 (= (arr!2750 (_values!2078 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16887)) mapDefault!8362)))))

(declare-fun b!1555387 () Bool)

(declare-fun res!694298 () Bool)

(assert (=> b!1555387 (=> (not res!694298) (not e!997949))))

(declare-fun ruleValid!683 (LexerInterface!2584 Rule!5694) Bool)

(assert (=> b!1555387 (= res!694298 (ruleValid!683 thiss!16438 rule!240))))

(declare-fun b!1555388 () Bool)

(declare-fun tp!455874 () Bool)

(assert (=> b!1555388 (= e!997939 (and (inv!22089 (c!252761 (totalInput!2462 cacheFurthestNullable!103))) tp!455874))))

(declare-fun b!1555389 () Bool)

(declare-fun lt!538550 () MutLongMap!1798)

(assert (=> b!1555389 (= e!997930 (and e!997943 ((_ is LongMap!1798) lt!538550)))))

(assert (=> b!1555389 (= lt!538550 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))

(declare-fun mapIsEmpty!8363 () Bool)

(assert (=> mapIsEmpty!8363 mapRes!8362))

(declare-fun b!1555390 () Bool)

(declare-fun res!694295 () Bool)

(assert (=> b!1555390 (=> res!694295 e!997953)))

(assert (=> b!1555390 (= res!694295 (not (= (list!6493 lt!538548) lt!538560)))))

(declare-fun b!1555391 () Bool)

(declare-fun tp!455879 () Bool)

(assert (=> b!1555391 (= e!997941 (and tp!455879 mapRes!8362))))

(declare-fun condMapEmpty!8363 () Bool)

(declare-fun mapDefault!8361 () List!16885)

(assert (=> b!1555391 (= condMapEmpty!8363 (= (arr!2747 (_values!2076 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16885)) mapDefault!8361)))))

(assert (= (and start!144214 res!694292) b!1555387))

(assert (= (and b!1555387 res!694298) b!1555357))

(assert (= (and b!1555357 res!694301) b!1555380))

(assert (= (and b!1555380 res!694302) b!1555373))

(assert (= (and b!1555373 res!694304) b!1555353))

(assert (= (and b!1555353 res!694303) b!1555365))

(assert (= (and b!1555365 res!694293) b!1555381))

(assert (= (and b!1555381 res!694300) b!1555382))

(assert (= (and b!1555382 (not res!694294)) b!1555363))

(assert (= (and b!1555382 (not res!694305)) b!1555384))

(assert (= (and b!1555384 (not res!694297)) b!1555376))

(assert (= (and b!1555376 (not res!694299)) b!1555364))

(assert (= (and b!1555364 (not res!694296)) b!1555390))

(assert (= (and b!1555390 (not res!694295)) b!1555356))

(assert (= start!144214 b!1555358))

(assert (= (and b!1555366 condMapEmpty!8361) mapIsEmpty!8361))

(assert (= (and b!1555366 (not condMapEmpty!8361)) mapNonEmpty!8362))

(assert (= b!1555379 b!1555366))

(assert (= b!1555355 b!1555379))

(assert (= b!1555375 b!1555355))

(assert (= (and b!1555362 ((_ is LongMap!1797) (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))) b!1555375))

(assert (= b!1555367 b!1555362))

(assert (= (and b!1555368 ((_ is HashMap!1741) (cache!2122 cacheUp!755))) b!1555367))

(assert (= start!144214 b!1555368))

(assert (= (and b!1555391 condMapEmpty!8363) mapIsEmpty!8363))

(assert (= (and b!1555391 (not condMapEmpty!8363)) mapNonEmpty!8363))

(assert (= b!1555377 b!1555391))

(assert (= b!1555372 b!1555377))

(assert (= b!1555352 b!1555372))

(assert (= (and b!1555385 ((_ is LongMap!1799) (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))) b!1555352))

(assert (= b!1555354 b!1555385))

(assert (= (and b!1555378 ((_ is HashMap!1743) (cache!2124 cacheFurthestNullable!103))) b!1555354))

(assert (= b!1555378 b!1555388))

(assert (= start!144214 b!1555378))

(assert (= start!144214 b!1555369))

(assert (= b!1555360 b!1555361))

(assert (= start!144214 b!1555360))

(assert (= (and b!1555386 condMapEmpty!8362) mapIsEmpty!8362))

(assert (= (and b!1555386 (not condMapEmpty!8362)) mapNonEmpty!8361))

(assert (= b!1555370 b!1555386))

(assert (= b!1555374 b!1555370))

(assert (= b!1555359 b!1555374))

(assert (= (and b!1555389 ((_ is LongMap!1798) (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))) b!1555359))

(assert (= b!1555383 b!1555389))

(assert (= (and b!1555371 ((_ is HashMap!1742) (cache!2123 cacheDown!768))) b!1555383))

(assert (= start!144214 b!1555371))

(declare-fun m!1827850 () Bool)

(assert (=> b!1555353 m!1827850))

(assert (=> b!1555353 m!1827850))

(declare-fun m!1827852 () Bool)

(assert (=> b!1555353 m!1827852))

(declare-fun m!1827854 () Bool)

(assert (=> b!1555353 m!1827854))

(declare-fun m!1827856 () Bool)

(assert (=> b!1555381 m!1827856))

(declare-fun m!1827858 () Bool)

(assert (=> b!1555381 m!1827858))

(declare-fun m!1827860 () Bool)

(assert (=> b!1555369 m!1827860))

(declare-fun m!1827862 () Bool)

(assert (=> b!1555370 m!1827862))

(declare-fun m!1827864 () Bool)

(assert (=> b!1555370 m!1827864))

(declare-fun m!1827866 () Bool)

(assert (=> b!1555376 m!1827866))

(declare-fun m!1827868 () Bool)

(assert (=> b!1555376 m!1827868))

(assert (=> b!1555376 m!1827868))

(declare-fun m!1827870 () Bool)

(assert (=> b!1555376 m!1827870))

(declare-fun m!1827872 () Bool)

(assert (=> b!1555376 m!1827872))

(declare-fun m!1827874 () Bool)

(assert (=> b!1555376 m!1827874))

(declare-fun m!1827876 () Bool)

(assert (=> b!1555376 m!1827876))

(declare-fun m!1827878 () Bool)

(assert (=> b!1555376 m!1827878))

(declare-fun m!1827880 () Bool)

(assert (=> b!1555376 m!1827880))

(declare-fun m!1827882 () Bool)

(assert (=> b!1555376 m!1827882))

(declare-fun m!1827884 () Bool)

(assert (=> b!1555390 m!1827884))

(declare-fun m!1827886 () Bool)

(assert (=> b!1555360 m!1827886))

(declare-fun m!1827888 () Bool)

(assert (=> b!1555360 m!1827888))

(declare-fun m!1827890 () Bool)

(assert (=> b!1555363 m!1827890))

(declare-fun m!1827892 () Bool)

(assert (=> b!1555382 m!1827892))

(declare-fun m!1827894 () Bool)

(assert (=> b!1555382 m!1827894))

(assert (=> b!1555382 m!1827894))

(declare-fun m!1827896 () Bool)

(assert (=> b!1555382 m!1827896))

(declare-fun m!1827898 () Bool)

(assert (=> b!1555382 m!1827898))

(assert (=> b!1555382 m!1827896))

(declare-fun m!1827900 () Bool)

(assert (=> b!1555382 m!1827900))

(declare-fun m!1827902 () Bool)

(assert (=> b!1555382 m!1827902))

(declare-fun m!1827904 () Bool)

(assert (=> b!1555382 m!1827904))

(declare-fun m!1827906 () Bool)

(assert (=> b!1555379 m!1827906))

(declare-fun m!1827908 () Bool)

(assert (=> b!1555379 m!1827908))

(declare-fun m!1827910 () Bool)

(assert (=> mapNonEmpty!8361 m!1827910))

(declare-fun m!1827912 () Bool)

(assert (=> b!1555358 m!1827912))

(declare-fun m!1827914 () Bool)

(assert (=> b!1555357 m!1827914))

(declare-fun m!1827916 () Bool)

(assert (=> b!1555380 m!1827916))

(declare-fun m!1827918 () Bool)

(assert (=> b!1555377 m!1827918))

(declare-fun m!1827920 () Bool)

(assert (=> b!1555377 m!1827920))

(declare-fun m!1827922 () Bool)

(assert (=> b!1555373 m!1827922))

(declare-fun m!1827924 () Bool)

(assert (=> b!1555384 m!1827924))

(declare-fun m!1827926 () Bool)

(assert (=> b!1555378 m!1827926))

(declare-fun m!1827928 () Bool)

(assert (=> start!144214 m!1827928))

(declare-fun m!1827930 () Bool)

(assert (=> start!144214 m!1827930))

(declare-fun m!1827932 () Bool)

(assert (=> start!144214 m!1827932))

(declare-fun m!1827934 () Bool)

(assert (=> start!144214 m!1827934))

(declare-fun m!1827936 () Bool)

(assert (=> start!144214 m!1827936))

(declare-fun m!1827938 () Bool)

(assert (=> mapNonEmpty!8362 m!1827938))

(declare-fun m!1827940 () Bool)

(assert (=> mapNonEmpty!8363 m!1827940))

(declare-fun m!1827942 () Bool)

(assert (=> b!1555356 m!1827942))

(declare-fun m!1827944 () Bool)

(assert (=> b!1555356 m!1827944))

(declare-fun m!1827946 () Bool)

(assert (=> b!1555388 m!1827946))

(declare-fun m!1827948 () Bool)

(assert (=> b!1555387 m!1827948))

(check-sat b_and!108511 (not b!1555369) b_and!108503 (not b!1555376) (not b!1555391) (not b!1555357) b_and!108505 (not b!1555353) (not b!1555358) (not b_next!42063) (not b!1555381) (not b!1555356) (not start!144214) (not b!1555384) (not b!1555373) (not b!1555378) (not mapNonEmpty!8363) b_and!108507 (not mapNonEmpty!8362) (not b!1555386) (not b!1555363) (not b!1555380) (not b!1555382) (not b_next!42069) (not b_next!42061) b_and!108501 (not b!1555366) (not b!1555377) (not b!1555360) (not b!1555390) (not b!1555370) (not b_next!42059) b_and!108513 (not b_next!42057) (not b!1555388) (not b!1555387) (not mapNonEmpty!8361) (not b!1555379) (not b_next!42067) (not b_next!42055) b_and!108509 (not b_next!42065) b_and!108515)
(check-sat b_and!108505 b_and!108511 (not b_next!42063) b_and!108503 b_and!108507 (not b_next!42069) (not b_next!42057) (not b_next!42061) b_and!108501 (not b_next!42059) b_and!108513 (not b_next!42067) (not b_next!42055) b_and!108509 (not b_next!42065) b_and!108515)
(get-model)

(declare-fun d!461423 () Bool)

(declare-fun validCacheMapDown!161 (MutableMap!1742) Bool)

(assert (=> d!461423 (= (valid!1448 cacheDown!768) (validCacheMapDown!161 (cache!2123 cacheDown!768)))))

(declare-fun bs!388679 () Bool)

(assert (= bs!388679 d!461423))

(declare-fun m!1827950 () Bool)

(assert (=> bs!388679 m!1827950))

(assert (=> b!1555380 d!461423))

(declare-fun d!461425 () Bool)

(assert (=> d!461425 (= (array_inv!1974 (_keys!2093 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) (bvsge (size!13614 (_keys!2093 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555370 d!461425))

(declare-fun d!461427 () Bool)

(assert (=> d!461427 (= (array_inv!1975 (_values!2078 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) (bvsge (size!13616 (_values!2078 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555370 d!461427))

(declare-fun d!461429 () Bool)

(declare-fun list!6494 (Conc!5565) List!16883)

(assert (=> d!461429 (= (list!6493 lt!538548) (list!6494 (c!252761 lt!538548)))))

(declare-fun bs!388680 () Bool)

(assert (= bs!388680 d!461429))

(declare-fun m!1827952 () Bool)

(assert (=> bs!388680 m!1827952))

(assert (=> b!1555390 d!461429))

(declare-fun b!1555428 () Bool)

(declare-fun res!694331 () Bool)

(declare-fun e!997977 () Bool)

(assert (=> b!1555428 (=> res!694331 e!997977)))

(assert (=> b!1555428 (= res!694331 (not ((_ is ElementMatch!4275) (regex!2947 rule!240))))))

(declare-fun e!997978 () Bool)

(assert (=> b!1555428 (= e!997978 e!997977)))

(declare-fun b!1555429 () Bool)

(declare-fun e!997982 () Bool)

(declare-fun head!3113 (List!16883) C!8728)

(assert (=> b!1555429 (= e!997982 (= (head!3113 (_1!9485 lt!538558)) (c!252762 (regex!2947 rule!240))))))

(declare-fun bm!102007 () Bool)

(declare-fun call!102012 () Bool)

(assert (=> bm!102007 (= call!102012 (isEmpty!10113 (_1!9485 lt!538558)))))

(declare-fun b!1555431 () Bool)

(declare-fun e!997983 () Bool)

(declare-fun e!997979 () Bool)

(assert (=> b!1555431 (= e!997983 e!997979)))

(declare-fun res!694327 () Bool)

(assert (=> b!1555431 (=> res!694327 e!997979)))

(assert (=> b!1555431 (= res!694327 call!102012)))

(declare-fun b!1555432 () Bool)

(assert (=> b!1555432 (= e!997979 (not (= (head!3113 (_1!9485 lt!538558)) (c!252762 (regex!2947 rule!240)))))))

(declare-fun b!1555433 () Bool)

(declare-fun e!997980 () Bool)

(declare-fun lt!538563 () Bool)

(assert (=> b!1555433 (= e!997980 (= lt!538563 call!102012))))

(declare-fun b!1555434 () Bool)

(declare-fun res!694329 () Bool)

(assert (=> b!1555434 (=> (not res!694329) (not e!997982))))

(declare-fun tail!2208 (List!16883) List!16883)

(assert (=> b!1555434 (= res!694329 (isEmpty!10113 (tail!2208 (_1!9485 lt!538558))))))

(declare-fun b!1555435 () Bool)

(assert (=> b!1555435 (= e!997977 e!997983)))

(declare-fun res!694325 () Bool)

(assert (=> b!1555435 (=> (not res!694325) (not e!997983))))

(assert (=> b!1555435 (= res!694325 (not lt!538563))))

(declare-fun b!1555436 () Bool)

(declare-fun res!694328 () Bool)

(assert (=> b!1555436 (=> res!694328 e!997979)))

(assert (=> b!1555436 (= res!694328 (not (isEmpty!10113 (tail!2208 (_1!9485 lt!538558)))))))

(declare-fun d!461431 () Bool)

(assert (=> d!461431 e!997980))

(declare-fun c!252771 () Bool)

(assert (=> d!461431 (= c!252771 ((_ is EmptyExpr!4275) (regex!2947 rule!240)))))

(declare-fun e!997981 () Bool)

(assert (=> d!461431 (= lt!538563 e!997981)))

(declare-fun c!252770 () Bool)

(assert (=> d!461431 (= c!252770 (isEmpty!10113 (_1!9485 lt!538558)))))

(declare-fun validRegex!1711 (Regex!4275) Bool)

(assert (=> d!461431 (validRegex!1711 (regex!2947 rule!240))))

(assert (=> d!461431 (= (matchR!1878 (regex!2947 rule!240) (_1!9485 lt!538558)) lt!538563)))

(declare-fun b!1555430 () Bool)

(declare-fun res!694324 () Bool)

(assert (=> b!1555430 (=> res!694324 e!997977)))

(assert (=> b!1555430 (= res!694324 e!997982)))

(declare-fun res!694326 () Bool)

(assert (=> b!1555430 (=> (not res!694326) (not e!997982))))

(assert (=> b!1555430 (= res!694326 lt!538563)))

(declare-fun b!1555437 () Bool)

(declare-fun res!694330 () Bool)

(assert (=> b!1555437 (=> (not res!694330) (not e!997982))))

(assert (=> b!1555437 (= res!694330 (not call!102012))))

(declare-fun b!1555438 () Bool)

(declare-fun derivativeStep!1022 (Regex!4275 C!8728) Regex!4275)

(assert (=> b!1555438 (= e!997981 (matchR!1878 (derivativeStep!1022 (regex!2947 rule!240) (head!3113 (_1!9485 lt!538558))) (tail!2208 (_1!9485 lt!538558))))))

(declare-fun b!1555439 () Bool)

(assert (=> b!1555439 (= e!997978 (not lt!538563))))

(declare-fun b!1555440 () Bool)

(declare-fun nullable!1270 (Regex!4275) Bool)

(assert (=> b!1555440 (= e!997981 (nullable!1270 (regex!2947 rule!240)))))

(declare-fun b!1555441 () Bool)

(assert (=> b!1555441 (= e!997980 e!997978)))

(declare-fun c!252769 () Bool)

(assert (=> b!1555441 (= c!252769 ((_ is EmptyLang!4275) (regex!2947 rule!240)))))

(assert (= (and d!461431 c!252770) b!1555440))

(assert (= (and d!461431 (not c!252770)) b!1555438))

(assert (= (and d!461431 c!252771) b!1555433))

(assert (= (and d!461431 (not c!252771)) b!1555441))

(assert (= (and b!1555441 c!252769) b!1555439))

(assert (= (and b!1555441 (not c!252769)) b!1555428))

(assert (= (and b!1555428 (not res!694331)) b!1555430))

(assert (= (and b!1555430 res!694326) b!1555437))

(assert (= (and b!1555437 res!694330) b!1555434))

(assert (= (and b!1555434 res!694329) b!1555429))

(assert (= (and b!1555430 (not res!694324)) b!1555435))

(assert (= (and b!1555435 res!694325) b!1555431))

(assert (= (and b!1555431 (not res!694327)) b!1555436))

(assert (= (and b!1555436 (not res!694328)) b!1555432))

(assert (= (or b!1555433 b!1555431 b!1555437) bm!102007))

(assert (=> bm!102007 m!1827904))

(declare-fun m!1827954 () Bool)

(assert (=> b!1555429 m!1827954))

(declare-fun m!1827956 () Bool)

(assert (=> b!1555440 m!1827956))

(declare-fun m!1827958 () Bool)

(assert (=> b!1555434 m!1827958))

(assert (=> b!1555434 m!1827958))

(declare-fun m!1827960 () Bool)

(assert (=> b!1555434 m!1827960))

(assert (=> b!1555436 m!1827958))

(assert (=> b!1555436 m!1827958))

(assert (=> b!1555436 m!1827960))

(assert (=> d!461431 m!1827904))

(declare-fun m!1827962 () Bool)

(assert (=> d!461431 m!1827962))

(assert (=> b!1555438 m!1827954))

(assert (=> b!1555438 m!1827954))

(declare-fun m!1827964 () Bool)

(assert (=> b!1555438 m!1827964))

(assert (=> b!1555438 m!1827958))

(assert (=> b!1555438 m!1827964))

(assert (=> b!1555438 m!1827958))

(declare-fun m!1827966 () Bool)

(assert (=> b!1555438 m!1827966))

(assert (=> b!1555432 m!1827954))

(assert (=> b!1555363 d!461431))

(declare-fun d!461433 () Bool)

(declare-fun e!997986 () Bool)

(assert (=> d!461433 e!997986))

(declare-fun res!694334 () Bool)

(assert (=> d!461433 (=> res!694334 e!997986)))

(declare-fun lt!538566 () Bool)

(assert (=> d!461433 (= res!694334 (not lt!538566))))

(declare-fun drop!785 (List!16883 Int) List!16883)

(assert (=> d!461433 (= lt!538566 (= lt!538547 (drop!785 (list!6493 totalInput!568) (- (size!13619 (list!6493 totalInput!568)) (size!13619 lt!538547)))))))

(assert (=> d!461433 (= (isSuffix!375 lt!538547 (list!6493 totalInput!568)) lt!538566)))

(declare-fun b!1555444 () Bool)

(assert (=> b!1555444 (= e!997986 (>= (size!13619 (list!6493 totalInput!568)) (size!13619 lt!538547)))))

(assert (= (and d!461433 (not res!694334)) b!1555444))

(assert (=> d!461433 m!1827850))

(declare-fun m!1827968 () Bool)

(assert (=> d!461433 m!1827968))

(assert (=> d!461433 m!1827896))

(assert (=> d!461433 m!1827850))

(declare-fun m!1827970 () Bool)

(assert (=> d!461433 m!1827970))

(assert (=> b!1555444 m!1827850))

(assert (=> b!1555444 m!1827968))

(assert (=> b!1555444 m!1827896))

(assert (=> b!1555353 d!461433))

(declare-fun d!461435 () Bool)

(assert (=> d!461435 (= (list!6493 totalInput!568) (list!6494 (c!252761 totalInput!568)))))

(declare-fun bs!388681 () Bool)

(assert (= bs!388681 d!461435))

(declare-fun m!1827972 () Bool)

(assert (=> bs!388681 m!1827972))

(assert (=> b!1555353 d!461435))

(declare-fun d!461437 () Bool)

(assert (=> d!461437 (= (list!6493 input!1676) (list!6494 (c!252761 input!1676)))))

(declare-fun bs!388682 () Bool)

(assert (= bs!388682 d!461437))

(declare-fun m!1827974 () Bool)

(assert (=> bs!388682 m!1827974))

(assert (=> b!1555353 d!461437))

(declare-fun d!461439 () Bool)

(declare-fun lt!538569 () Bool)

(assert (=> d!461439 (= lt!538569 (isEmpty!10113 (list!6493 (_1!9483 (_1!9484 lt!538554)))))))

(declare-fun isEmpty!10114 (Conc!5565) Bool)

(assert (=> d!461439 (= lt!538569 (isEmpty!10114 (c!252761 (_1!9483 (_1!9484 lt!538554)))))))

(assert (=> d!461439 (= (isEmpty!10112 (_1!9483 (_1!9484 lt!538554))) lt!538569)))

(declare-fun bs!388683 () Bool)

(assert (= bs!388683 d!461439))

(assert (=> bs!388683 m!1827878))

(assert (=> bs!388683 m!1827878))

(declare-fun m!1827976 () Bool)

(assert (=> bs!388683 m!1827976))

(declare-fun m!1827978 () Bool)

(assert (=> bs!388683 m!1827978))

(assert (=> b!1555381 d!461439))

(declare-fun b!1555453 () Bool)

(declare-fun res!694345 () Bool)

(declare-fun e!997989 () Bool)

(assert (=> b!1555453 (=> (not res!694345) (not e!997989))))

(declare-fun lt!538572 () tuple4!892)

(assert (=> b!1555453 (= res!694345 (valid!1448 (_3!1341 lt!538572)))))

(declare-fun b!1555455 () Bool)

(declare-fun res!694343 () Bool)

(assert (=> b!1555455 (=> (not res!694343) (not e!997989))))

(assert (=> b!1555455 (= res!694343 (valid!1447 (_4!446 lt!538572)))))

(declare-fun d!461441 () Bool)

(assert (=> d!461441 e!997989))

(declare-fun res!694344 () Bool)

(assert (=> d!461441 (=> (not res!694344) (not e!997989))))

(declare-fun findLongestMatch!261 (Regex!4275 List!16883) tuple2!16286)

(assert (=> d!461441 (= res!694344 (= (tuple2!16287 (list!6493 (_1!9483 (_1!9484 lt!538572))) (list!6493 (_2!9483 (_1!9484 lt!538572)))) (findLongestMatch!261 (regex!2947 rule!240) (list!6493 input!1676))))))

(declare-fun choose!9281 (Regex!4275 BalanceConc!11072 BalanceConc!11072 CacheUp!1060 CacheDown!1064 CacheFurthestNullable!486) tuple4!892)

(assert (=> d!461441 (= lt!538572 (choose!9281 (regex!2947 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!461441 (validRegex!1711 (regex!2947 rule!240))))

(assert (=> d!461441 (= (findLongestMatchWithZipperSequenceV3Mem!49 (regex!2947 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!538572)))

(declare-fun b!1555456 () Bool)

(assert (=> b!1555456 (= e!997989 (= (totalInput!2462 (_4!446 lt!538572)) totalInput!568))))

(declare-fun b!1555454 () Bool)

(declare-fun res!694346 () Bool)

(assert (=> b!1555454 (=> (not res!694346) (not e!997989))))

(assert (=> b!1555454 (= res!694346 (valid!1446 (_2!9484 lt!538572)))))

(assert (= (and d!461441 res!694344) b!1555453))

(assert (= (and b!1555453 res!694345) b!1555454))

(assert (= (and b!1555454 res!694346) b!1555455))

(assert (= (and b!1555455 res!694343) b!1555456))

(declare-fun m!1827980 () Bool)

(assert (=> b!1555453 m!1827980))

(declare-fun m!1827982 () Bool)

(assert (=> b!1555455 m!1827982))

(assert (=> d!461441 m!1827854))

(declare-fun m!1827984 () Bool)

(assert (=> d!461441 m!1827984))

(assert (=> d!461441 m!1827962))

(declare-fun m!1827986 () Bool)

(assert (=> d!461441 m!1827986))

(declare-fun m!1827988 () Bool)

(assert (=> d!461441 m!1827988))

(assert (=> d!461441 m!1827854))

(declare-fun m!1827990 () Bool)

(assert (=> d!461441 m!1827990))

(declare-fun m!1827992 () Bool)

(assert (=> b!1555454 m!1827992))

(assert (=> b!1555381 d!461441))

(declare-fun d!461443 () Bool)

(declare-fun res!694351 () Bool)

(declare-fun e!997992 () Bool)

(assert (=> d!461443 (=> (not res!694351) (not e!997992))))

(assert (=> d!461443 (= res!694351 (validRegex!1711 (regex!2947 rule!240)))))

(assert (=> d!461443 (= (ruleValid!683 thiss!16438 rule!240) e!997992)))

(declare-fun b!1555461 () Bool)

(declare-fun res!694352 () Bool)

(assert (=> b!1555461 (=> (not res!694352) (not e!997992))))

(assert (=> b!1555461 (= res!694352 (not (nullable!1270 (regex!2947 rule!240))))))

(declare-fun b!1555462 () Bool)

(assert (=> b!1555462 (= e!997992 (not (= (tag!3211 rule!240) (String!19474 ""))))))

(assert (= (and d!461443 res!694351) b!1555461))

(assert (= (and b!1555461 res!694352) b!1555462))

(assert (=> d!461443 m!1827962))

(assert (=> b!1555461 m!1827956))

(assert (=> b!1555387 d!461443))

(declare-fun d!461445 () Bool)

(assert (=> d!461445 (= (array_inv!1974 (_keys!2091 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) (bvsge (size!13614 (_keys!2091 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555377 d!461445))

(declare-fun d!461447 () Bool)

(assert (=> d!461447 (= (array_inv!1976 (_values!2076 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) (bvsge (size!13613 (_values!2076 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555377 d!461447))

(declare-fun d!461449 () Bool)

(declare-fun c!252774 () Bool)

(assert (=> d!461449 (= c!252774 ((_ is Node!5565) (c!252761 input!1676)))))

(declare-fun e!997997 () Bool)

(assert (=> d!461449 (= (inv!22089 (c!252761 input!1676)) e!997997)))

(declare-fun b!1555469 () Bool)

(declare-fun inv!22095 (Conc!5565) Bool)

(assert (=> b!1555469 (= e!997997 (inv!22095 (c!252761 input!1676)))))

(declare-fun b!1555470 () Bool)

(declare-fun e!997998 () Bool)

(assert (=> b!1555470 (= e!997997 e!997998)))

(declare-fun res!694355 () Bool)

(assert (=> b!1555470 (= res!694355 (not ((_ is Leaf!8248) (c!252761 input!1676))))))

(assert (=> b!1555470 (=> res!694355 e!997998)))

(declare-fun b!1555471 () Bool)

(declare-fun inv!22096 (Conc!5565) Bool)

(assert (=> b!1555471 (= e!997998 (inv!22096 (c!252761 input!1676)))))

(assert (= (and d!461449 c!252774) b!1555469))

(assert (= (and d!461449 (not c!252774)) b!1555470))

(assert (= (and b!1555470 (not res!694355)) b!1555471))

(declare-fun m!1827994 () Bool)

(assert (=> b!1555469 m!1827994))

(declare-fun m!1827996 () Bool)

(assert (=> b!1555471 m!1827996))

(assert (=> b!1555369 d!461449))

(declare-fun d!461451 () Bool)

(assert (=> d!461451 (= (array_inv!1974 (_keys!2092 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) (bvsge (size!13614 (_keys!2092 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555379 d!461451))

(declare-fun d!461453 () Bool)

(assert (=> d!461453 (= (array_inv!1977 (_values!2077 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) (bvsge (size!13615 (_values!2077 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1555379 d!461453))

(declare-fun d!461455 () Bool)

(declare-fun isBalanced!1643 (Conc!5565) Bool)

(assert (=> d!461455 (= (inv!22091 (totalInput!2462 cacheFurthestNullable!103)) (isBalanced!1643 (c!252761 (totalInput!2462 cacheFurthestNullable!103))))))

(declare-fun bs!388684 () Bool)

(assert (= bs!388684 d!461455))

(declare-fun m!1827998 () Bool)

(assert (=> bs!388684 m!1827998))

(assert (=> b!1555378 d!461455))

(declare-fun d!461457 () Bool)

(assert (=> d!461457 (= (inv!22086 (tag!3211 rule!240)) (= (mod (str.len (value!93626 (tag!3211 rule!240))) 2) 0))))

(assert (=> b!1555360 d!461457))

(declare-fun d!461459 () Bool)

(declare-fun res!694358 () Bool)

(declare-fun e!998001 () Bool)

(assert (=> d!461459 (=> (not res!694358) (not e!998001))))

(assert (=> d!461459 (= res!694358 (semiInverseModEq!1112 (toChars!4177 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240))))))

(assert (=> d!461459 (= (inv!22090 (transformation!2947 rule!240)) e!998001)))

(declare-fun b!1555474 () Bool)

(declare-fun equivClasses!1056 (Int Int) Bool)

(assert (=> b!1555474 (= e!998001 (equivClasses!1056 (toChars!4177 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240))))))

(assert (= (and d!461459 res!694358) b!1555474))

(assert (=> d!461459 m!1827892))

(declare-fun m!1828000 () Bool)

(assert (=> b!1555474 m!1828000))

(assert (=> b!1555360 d!461459))

(declare-fun d!461461 () Bool)

(declare-fun c!252775 () Bool)

(assert (=> d!461461 (= c!252775 ((_ is Node!5565) (c!252761 (totalInput!2462 cacheFurthestNullable!103))))))

(declare-fun e!998002 () Bool)

(assert (=> d!461461 (= (inv!22089 (c!252761 (totalInput!2462 cacheFurthestNullable!103))) e!998002)))

(declare-fun b!1555475 () Bool)

(assert (=> b!1555475 (= e!998002 (inv!22095 (c!252761 (totalInput!2462 cacheFurthestNullable!103))))))

(declare-fun b!1555476 () Bool)

(declare-fun e!998003 () Bool)

(assert (=> b!1555476 (= e!998002 e!998003)))

(declare-fun res!694359 () Bool)

(assert (=> b!1555476 (= res!694359 (not ((_ is Leaf!8248) (c!252761 (totalInput!2462 cacheFurthestNullable!103)))))))

(assert (=> b!1555476 (=> res!694359 e!998003)))

(declare-fun b!1555477 () Bool)

(assert (=> b!1555477 (= e!998003 (inv!22096 (c!252761 (totalInput!2462 cacheFurthestNullable!103))))))

(assert (= (and d!461461 c!252775) b!1555475))

(assert (= (and d!461461 (not c!252775)) b!1555476))

(assert (= (and b!1555476 (not res!694359)) b!1555477))

(declare-fun m!1828002 () Bool)

(assert (=> b!1555475 m!1828002))

(declare-fun m!1828004 () Bool)

(assert (=> b!1555477 m!1828004))

(assert (=> b!1555388 d!461461))

(declare-fun d!461463 () Bool)

(declare-fun isEmpty!10115 (Option!3034) Bool)

(assert (=> d!461463 (= (isDefined!2437 (maxPrefixOneRule!702 thiss!16438 rule!240 lt!538547)) (not (isEmpty!10115 (maxPrefixOneRule!702 thiss!16438 rule!240 lt!538547))))))

(declare-fun bs!388685 () Bool)

(assert (= bs!388685 d!461463))

(assert (=> bs!388685 m!1827868))

(declare-fun m!1828006 () Bool)

(assert (=> bs!388685 m!1828006))

(assert (=> b!1555376 d!461463))

(declare-fun d!461465 () Bool)

(declare-fun dynLambda!7454 (Int BalanceConc!11072) TokenValue!3037)

(assert (=> d!461465 (= (apply!4109 (transformation!2947 rule!240) (_1!9483 (_1!9484 lt!538554))) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) (_1!9483 (_1!9484 lt!538554))))))

(declare-fun b_lambda!48823 () Bool)

(assert (=> (not b_lambda!48823) (not d!461465)))

(declare-fun t!141352 () Bool)

(declare-fun tb!87313 () Bool)

(assert (=> (and b!1555361 (= (toValue!4318 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240))) t!141352) tb!87313))

(declare-fun result!105408 () Bool)

(declare-fun inv!21 (TokenValue!3037) Bool)

(assert (=> tb!87313 (= result!105408 (inv!21 (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) (_1!9483 (_1!9484 lt!538554)))))))

(declare-fun m!1828008 () Bool)

(assert (=> tb!87313 m!1828008))

(assert (=> d!461465 t!141352))

(declare-fun b_and!108517 () Bool)

(assert (= b_and!108511 (and (=> t!141352 result!105408) b_and!108517)))

(declare-fun m!1828010 () Bool)

(assert (=> d!461465 m!1828010))

(assert (=> b!1555376 d!461465))

(declare-fun d!461467 () Bool)

(assert (=> d!461467 (= (list!6493 (_1!9483 (_1!9484 lt!538554))) (list!6494 (c!252761 (_1!9483 (_1!9484 lt!538554)))))))

(declare-fun bs!388686 () Bool)

(assert (= bs!388686 d!461467))

(declare-fun m!1828012 () Bool)

(assert (=> bs!388686 m!1828012))

(assert (=> b!1555376 d!461467))

(declare-fun b!1555498 () Bool)

(declare-fun e!998018 () Option!3034)

(assert (=> b!1555498 (= e!998018 None!3033)))

(declare-fun b!1555499 () Bool)

(declare-fun res!694374 () Bool)

(declare-fun e!998015 () Bool)

(assert (=> b!1555499 (=> (not res!694374) (not e!998015))))

(declare-fun lt!538585 () Option!3034)

(declare-fun ++!4414 (List!16883 List!16883) List!16883)

(declare-fun charsOf!1646 (Token!5472) BalanceConc!11072)

(declare-fun get!4847 (Option!3034) tuple2!16288)

(assert (=> b!1555499 (= res!694374 (= (++!4414 (list!6493 (charsOf!1646 (_1!9486 (get!4847 lt!538585)))) (_2!9486 (get!4847 lt!538585))) lt!538547))))

(declare-fun b!1555500 () Bool)

(declare-fun lt!538586 () tuple2!16286)

(assert (=> b!1555500 (= e!998018 (Some!3033 (tuple2!16289 (Token!5473 (apply!4109 (transformation!2947 rule!240) (seqFromList!1773 (_1!9485 lt!538586))) rule!240 (size!13618 (seqFromList!1773 (_1!9485 lt!538586))) (_1!9485 lt!538586)) (_2!9485 lt!538586))))))

(declare-fun lt!538584 () Unit!26064)

(assert (=> b!1555500 (= lt!538584 (longestMatchIsAcceptedByMatchOrIsEmpty!316 (regex!2947 rule!240) lt!538547))))

(declare-fun res!694376 () Bool)

(assert (=> b!1555500 (= res!694376 (isEmpty!10113 (_1!9485 (findLongestMatchInner!332 (regex!2947 rule!240) Nil!16815 (size!13619 Nil!16815) lt!538547 lt!538547 (size!13619 lt!538547)))))))

(declare-fun e!998016 () Bool)

(assert (=> b!1555500 (=> res!694376 e!998016)))

(assert (=> b!1555500 e!998016))

(declare-fun lt!538587 () Unit!26064)

(assert (=> b!1555500 (= lt!538587 lt!538584)))

(declare-fun lt!538583 () Unit!26064)

(declare-fun lemmaSemiInverse!365 (TokenValueInjection!5734 BalanceConc!11072) Unit!26064)

(assert (=> b!1555500 (= lt!538583 (lemmaSemiInverse!365 (transformation!2947 rule!240) (seqFromList!1773 (_1!9485 lt!538586))))))

(declare-fun d!461469 () Bool)

(declare-fun e!998017 () Bool)

(assert (=> d!461469 e!998017))

(declare-fun res!694375 () Bool)

(assert (=> d!461469 (=> res!694375 e!998017)))

(assert (=> d!461469 (= res!694375 (isEmpty!10115 lt!538585))))

(assert (=> d!461469 (= lt!538585 e!998018)))

(declare-fun c!252778 () Bool)

(assert (=> d!461469 (= c!252778 (isEmpty!10113 (_1!9485 lt!538586)))))

(assert (=> d!461469 (= lt!538586 (findLongestMatch!261 (regex!2947 rule!240) lt!538547))))

(assert (=> d!461469 (ruleValid!683 thiss!16438 rule!240)))

(assert (=> d!461469 (= (maxPrefixOneRule!702 thiss!16438 rule!240 lt!538547) lt!538585)))

(declare-fun b!1555501 () Bool)

(assert (=> b!1555501 (= e!998017 e!998015)))

(declare-fun res!694379 () Bool)

(assert (=> b!1555501 (=> (not res!694379) (not e!998015))))

(assert (=> b!1555501 (= res!694379 (matchR!1878 (regex!2947 rule!240) (list!6493 (charsOf!1646 (_1!9486 (get!4847 lt!538585))))))))

(declare-fun b!1555502 () Bool)

(declare-fun res!694380 () Bool)

(assert (=> b!1555502 (=> (not res!694380) (not e!998015))))

(assert (=> b!1555502 (= res!694380 (= (value!93627 (_1!9486 (get!4847 lt!538585))) (apply!4109 (transformation!2947 (rule!4729 (_1!9486 (get!4847 lt!538585)))) (seqFromList!1773 (originalCharacters!3767 (_1!9486 (get!4847 lt!538585)))))))))

(declare-fun b!1555503 () Bool)

(assert (=> b!1555503 (= e!998016 (matchR!1878 (regex!2947 rule!240) (_1!9485 (findLongestMatchInner!332 (regex!2947 rule!240) Nil!16815 (size!13619 Nil!16815) lt!538547 lt!538547 (size!13619 lt!538547)))))))

(declare-fun b!1555504 () Bool)

(declare-fun res!694377 () Bool)

(assert (=> b!1555504 (=> (not res!694377) (not e!998015))))

(assert (=> b!1555504 (= res!694377 (= (rule!4729 (_1!9486 (get!4847 lt!538585))) rule!240))))

(declare-fun b!1555505 () Bool)

(assert (=> b!1555505 (= e!998015 (= (size!13617 (_1!9486 (get!4847 lt!538585))) (size!13619 (originalCharacters!3767 (_1!9486 (get!4847 lt!538585))))))))

(declare-fun b!1555506 () Bool)

(declare-fun res!694378 () Bool)

(assert (=> b!1555506 (=> (not res!694378) (not e!998015))))

(assert (=> b!1555506 (= res!694378 (< (size!13619 (_2!9486 (get!4847 lt!538585))) (size!13619 lt!538547)))))

(assert (= (and d!461469 c!252778) b!1555498))

(assert (= (and d!461469 (not c!252778)) b!1555500))

(assert (= (and b!1555500 (not res!694376)) b!1555503))

(assert (= (and d!461469 (not res!694375)) b!1555501))

(assert (= (and b!1555501 res!694379) b!1555499))

(assert (= (and b!1555499 res!694374) b!1555506))

(assert (= (and b!1555506 res!694378) b!1555504))

(assert (= (and b!1555504 res!694377) b!1555502))

(assert (= (and b!1555502 res!694380) b!1555505))

(declare-fun m!1828014 () Bool)

(assert (=> b!1555502 m!1828014))

(declare-fun m!1828016 () Bool)

(assert (=> b!1555502 m!1828016))

(assert (=> b!1555502 m!1828016))

(declare-fun m!1828018 () Bool)

(assert (=> b!1555502 m!1828018))

(assert (=> b!1555506 m!1828014))

(declare-fun m!1828020 () Bool)

(assert (=> b!1555506 m!1828020))

(assert (=> b!1555506 m!1827896))

(declare-fun m!1828022 () Bool)

(assert (=> d!461469 m!1828022))

(declare-fun m!1828024 () Bool)

(assert (=> d!461469 m!1828024))

(declare-fun m!1828026 () Bool)

(assert (=> d!461469 m!1828026))

(assert (=> d!461469 m!1827948))

(assert (=> b!1555503 m!1827894))

(assert (=> b!1555503 m!1827896))

(assert (=> b!1555503 m!1827894))

(assert (=> b!1555503 m!1827896))

(assert (=> b!1555503 m!1827898))

(declare-fun m!1828028 () Bool)

(assert (=> b!1555503 m!1828028))

(declare-fun m!1828030 () Bool)

(assert (=> b!1555500 m!1828030))

(assert (=> b!1555500 m!1828030))

(declare-fun m!1828032 () Bool)

(assert (=> b!1555500 m!1828032))

(assert (=> b!1555500 m!1827894))

(assert (=> b!1555500 m!1827896))

(assert (=> b!1555500 m!1827898))

(declare-fun m!1828034 () Bool)

(assert (=> b!1555500 m!1828034))

(assert (=> b!1555500 m!1827900))

(assert (=> b!1555500 m!1827894))

(assert (=> b!1555500 m!1828030))

(declare-fun m!1828036 () Bool)

(assert (=> b!1555500 m!1828036))

(assert (=> b!1555500 m!1827896))

(assert (=> b!1555500 m!1828030))

(declare-fun m!1828038 () Bool)

(assert (=> b!1555500 m!1828038))

(assert (=> b!1555504 m!1828014))

(assert (=> b!1555505 m!1828014))

(declare-fun m!1828040 () Bool)

(assert (=> b!1555505 m!1828040))

(assert (=> b!1555501 m!1828014))

(declare-fun m!1828042 () Bool)

(assert (=> b!1555501 m!1828042))

(assert (=> b!1555501 m!1828042))

(declare-fun m!1828044 () Bool)

(assert (=> b!1555501 m!1828044))

(assert (=> b!1555501 m!1828044))

(declare-fun m!1828046 () Bool)

(assert (=> b!1555501 m!1828046))

(assert (=> b!1555499 m!1828014))

(assert (=> b!1555499 m!1828042))

(assert (=> b!1555499 m!1828042))

(assert (=> b!1555499 m!1828044))

(assert (=> b!1555499 m!1828044))

(declare-fun m!1828048 () Bool)

(assert (=> b!1555499 m!1828048))

(assert (=> b!1555376 d!461469))

(declare-fun d!461471 () Bool)

(declare-fun dynLambda!7455 (Int BalanceConc!11072) Bool)

(assert (=> d!461471 (dynLambda!7455 lambda!65861 lt!538548)))

(declare-fun lt!538590 () Unit!26064)

(declare-fun choose!9282 (Int BalanceConc!11072) Unit!26064)

(assert (=> d!461471 (= lt!538590 (choose!9282 lambda!65861 lt!538548))))

(assert (=> d!461471 (Forall!608 lambda!65861)))

(assert (=> d!461471 (= (ForallOf!210 lambda!65861 lt!538548) lt!538590)))

(declare-fun b_lambda!48825 () Bool)

(assert (=> (not b_lambda!48825) (not d!461471)))

(declare-fun bs!388687 () Bool)

(assert (= bs!388687 d!461471))

(declare-fun m!1828050 () Bool)

(assert (=> bs!388687 m!1828050))

(declare-fun m!1828052 () Bool)

(assert (=> bs!388687 m!1828052))

(assert (=> bs!388687 m!1827924))

(assert (=> b!1555376 d!461471))

(declare-fun d!461473 () Bool)

(declare-fun fromListB!761 (List!16883) BalanceConc!11072)

(assert (=> d!461473 (= (seqFromList!1773 lt!538560) (fromListB!761 lt!538560))))

(declare-fun bs!388688 () Bool)

(assert (= bs!388688 d!461473))

(declare-fun m!1828054 () Bool)

(assert (=> bs!388688 m!1828054))

(assert (=> b!1555376 d!461473))

(declare-fun d!461475 () Bool)

(assert (=> d!461475 (dynLambda!7455 lambda!65861 (_1!9483 (_1!9484 lt!538554)))))

(declare-fun lt!538591 () Unit!26064)

(assert (=> d!461475 (= lt!538591 (choose!9282 lambda!65861 (_1!9483 (_1!9484 lt!538554))))))

(assert (=> d!461475 (Forall!608 lambda!65861)))

(assert (=> d!461475 (= (ForallOf!210 lambda!65861 (_1!9483 (_1!9484 lt!538554))) lt!538591)))

(declare-fun b_lambda!48827 () Bool)

(assert (=> (not b_lambda!48827) (not d!461475)))

(declare-fun bs!388689 () Bool)

(assert (= bs!388689 d!461475))

(declare-fun m!1828056 () Bool)

(assert (=> bs!388689 m!1828056))

(declare-fun m!1828058 () Bool)

(assert (=> bs!388689 m!1828058))

(assert (=> bs!388689 m!1827924))

(assert (=> b!1555376 d!461475))

(declare-fun d!461477 () Bool)

(declare-fun isEmpty!10116 (Option!3035) Bool)

(assert (=> d!461477 (= (isDefined!2438 (Some!3034 (tuple2!16291 (Token!5473 lt!538555 rule!240 (size!13618 (_1!9483 (_1!9484 lt!538554))) lt!538560) (_2!9483 (_1!9484 lt!538554))))) (not (isEmpty!10116 (Some!3034 (tuple2!16291 (Token!5473 lt!538555 rule!240 (size!13618 (_1!9483 (_1!9484 lt!538554))) lt!538560) (_2!9483 (_1!9484 lt!538554)))))))))

(declare-fun bs!388690 () Bool)

(assert (= bs!388690 d!461477))

(declare-fun m!1828060 () Bool)

(assert (=> bs!388690 m!1828060))

(assert (=> b!1555376 d!461477))

(declare-fun d!461479 () Bool)

(declare-fun lt!538594 () Int)

(assert (=> d!461479 (= lt!538594 (size!13619 (list!6493 (_1!9483 (_1!9484 lt!538554)))))))

(declare-fun size!13620 (Conc!5565) Int)

(assert (=> d!461479 (= lt!538594 (size!13620 (c!252761 (_1!9483 (_1!9484 lt!538554)))))))

(assert (=> d!461479 (= (size!13618 (_1!9483 (_1!9484 lt!538554))) lt!538594)))

(declare-fun bs!388691 () Bool)

(assert (= bs!388691 d!461479))

(assert (=> bs!388691 m!1827878))

(assert (=> bs!388691 m!1827878))

(declare-fun m!1828062 () Bool)

(assert (=> bs!388691 m!1828062))

(declare-fun m!1828064 () Bool)

(assert (=> bs!388691 m!1828064))

(assert (=> b!1555376 d!461479))

(declare-fun d!461481 () Bool)

(declare-fun c!252779 () Bool)

(assert (=> d!461481 (= c!252779 ((_ is Node!5565) (c!252761 totalInput!568)))))

(declare-fun e!998019 () Bool)

(assert (=> d!461481 (= (inv!22089 (c!252761 totalInput!568)) e!998019)))

(declare-fun b!1555507 () Bool)

(assert (=> b!1555507 (= e!998019 (inv!22095 (c!252761 totalInput!568)))))

(declare-fun b!1555508 () Bool)

(declare-fun e!998020 () Bool)

(assert (=> b!1555508 (= e!998019 e!998020)))

(declare-fun res!694381 () Bool)

(assert (=> b!1555508 (= res!694381 (not ((_ is Leaf!8248) (c!252761 totalInput!568))))))

(assert (=> b!1555508 (=> res!694381 e!998020)))

(declare-fun b!1555509 () Bool)

(assert (=> b!1555509 (= e!998020 (inv!22096 (c!252761 totalInput!568)))))

(assert (= (and d!461481 c!252779) b!1555507))

(assert (= (and d!461481 (not c!252779)) b!1555508))

(assert (= (and b!1555508 (not res!694381)) b!1555509))

(declare-fun m!1828066 () Bool)

(assert (=> b!1555507 m!1828066))

(declare-fun m!1828068 () Bool)

(assert (=> b!1555509 m!1828068))

(assert (=> b!1555358 d!461481))

(declare-fun d!461483 () Bool)

(declare-fun validCacheMapUp!161 (MutableMap!1741) Bool)

(assert (=> d!461483 (= (valid!1446 cacheUp!755) (validCacheMapUp!161 (cache!2122 cacheUp!755)))))

(declare-fun bs!388692 () Bool)

(assert (= bs!388692 d!461483))

(declare-fun m!1828070 () Bool)

(assert (=> bs!388692 m!1828070))

(assert (=> b!1555357 d!461483))

(declare-fun d!461485 () Bool)

(declare-fun validCacheMapFurthestNullable!74 (MutableMap!1743 BalanceConc!11072) Bool)

(assert (=> d!461485 (= (valid!1447 cacheFurthestNullable!103) (validCacheMapFurthestNullable!74 (cache!2124 cacheFurthestNullable!103) (totalInput!2462 cacheFurthestNullable!103)))))

(declare-fun bs!388693 () Bool)

(assert (= bs!388693 d!461485))

(declare-fun m!1828072 () Bool)

(assert (=> bs!388693 m!1828072))

(assert (=> b!1555373 d!461485))

(declare-fun d!461487 () Bool)

(assert (=> d!461487 (= (inv!22091 totalInput!568) (isBalanced!1643 (c!252761 totalInput!568)))))

(declare-fun bs!388694 () Bool)

(assert (= bs!388694 d!461487))

(declare-fun m!1828074 () Bool)

(assert (=> bs!388694 m!1828074))

(assert (=> start!144214 d!461487))

(declare-fun d!461489 () Bool)

(declare-fun res!694384 () Bool)

(declare-fun e!998023 () Bool)

(assert (=> d!461489 (=> (not res!694384) (not e!998023))))

(assert (=> d!461489 (= res!694384 ((_ is HashMap!1742) (cache!2123 cacheDown!768)))))

(assert (=> d!461489 (= (inv!22094 cacheDown!768) e!998023)))

(declare-fun b!1555512 () Bool)

(assert (=> b!1555512 (= e!998023 (validCacheMapDown!161 (cache!2123 cacheDown!768)))))

(assert (= (and d!461489 res!694384) b!1555512))

(assert (=> b!1555512 m!1827950))

(assert (=> start!144214 d!461489))

(declare-fun d!461491 () Bool)

(declare-fun res!694387 () Bool)

(declare-fun e!998026 () Bool)

(assert (=> d!461491 (=> (not res!694387) (not e!998026))))

(assert (=> d!461491 (= res!694387 ((_ is HashMap!1741) (cache!2122 cacheUp!755)))))

(assert (=> d!461491 (= (inv!22092 cacheUp!755) e!998026)))

(declare-fun b!1555515 () Bool)

(assert (=> b!1555515 (= e!998026 (validCacheMapUp!161 (cache!2122 cacheUp!755)))))

(assert (= (and d!461491 res!694387) b!1555515))

(assert (=> b!1555515 m!1828070))

(assert (=> start!144214 d!461491))

(declare-fun d!461493 () Bool)

(assert (=> d!461493 (= (inv!22091 input!1676) (isBalanced!1643 (c!252761 input!1676)))))

(declare-fun bs!388695 () Bool)

(assert (= bs!388695 d!461493))

(declare-fun m!1828076 () Bool)

(assert (=> bs!388695 m!1828076))

(assert (=> start!144214 d!461493))

(declare-fun d!461495 () Bool)

(declare-fun res!694390 () Bool)

(declare-fun e!998029 () Bool)

(assert (=> d!461495 (=> (not res!694390) (not e!998029))))

(assert (=> d!461495 (= res!694390 ((_ is HashMap!1743) (cache!2124 cacheFurthestNullable!103)))))

(assert (=> d!461495 (= (inv!22093 cacheFurthestNullable!103) e!998029)))

(declare-fun b!1555518 () Bool)

(assert (=> b!1555518 (= e!998029 (validCacheMapFurthestNullable!74 (cache!2124 cacheFurthestNullable!103) (totalInput!2462 cacheFurthestNullable!103)))))

(assert (= (and d!461495 res!694390) b!1555518))

(assert (=> b!1555518 m!1828072))

(assert (=> start!144214 d!461495))

(declare-fun d!461497 () Bool)

(declare-fun lt!538597 () Int)

(assert (=> d!461497 (>= lt!538597 0)))

(declare-fun e!998032 () Int)

(assert (=> d!461497 (= lt!538597 e!998032)))

(declare-fun c!252782 () Bool)

(assert (=> d!461497 (= c!252782 ((_ is Nil!16815) Nil!16815))))

(assert (=> d!461497 (= (size!13619 Nil!16815) lt!538597)))

(declare-fun b!1555523 () Bool)

(assert (=> b!1555523 (= e!998032 0)))

(declare-fun b!1555524 () Bool)

(assert (=> b!1555524 (= e!998032 (+ 1 (size!13619 (t!141346 Nil!16815))))))

(assert (= (and d!461497 c!252782) b!1555523))

(assert (= (and d!461497 (not c!252782)) b!1555524))

(declare-fun m!1828078 () Bool)

(assert (=> b!1555524 m!1828078))

(assert (=> b!1555382 d!461497))

(declare-fun d!461499 () Bool)

(assert (=> d!461499 (= (isEmpty!10113 (_1!9485 lt!538558)) ((_ is Nil!16815) (_1!9485 lt!538558)))))

(assert (=> b!1555382 d!461499))

(declare-fun b!1555553 () Bool)

(declare-fun e!998055 () tuple2!16286)

(declare-fun call!102032 () tuple2!16286)

(assert (=> b!1555553 (= e!998055 call!102032)))

(declare-fun b!1555554 () Bool)

(declare-fun e!998054 () tuple2!16286)

(assert (=> b!1555554 (= e!998055 e!998054)))

(declare-fun lt!538671 () tuple2!16286)

(assert (=> b!1555554 (= lt!538671 call!102032)))

(declare-fun c!252799 () Bool)

(assert (=> b!1555554 (= c!252799 (isEmpty!10113 (_1!9485 lt!538671)))))

(declare-fun b!1555555 () Bool)

(declare-fun e!998049 () tuple2!16286)

(assert (=> b!1555555 (= e!998049 (tuple2!16287 Nil!16815 Nil!16815))))

(declare-fun b!1555556 () Bool)

(declare-fun e!998051 () Unit!26064)

(declare-fun Unit!26066 () Unit!26064)

(assert (=> b!1555556 (= e!998051 Unit!26066)))

(declare-fun b!1555557 () Bool)

(assert (=> b!1555557 (= e!998054 (tuple2!16287 Nil!16815 lt!538547))))

(declare-fun b!1555558 () Bool)

(declare-fun e!998052 () tuple2!16286)

(assert (=> b!1555558 (= e!998052 (tuple2!16287 Nil!16815 lt!538547))))

(declare-fun b!1555559 () Bool)

(declare-fun c!252800 () Bool)

(declare-fun call!102034 () Bool)

(assert (=> b!1555559 (= c!252800 call!102034)))

(declare-fun lt!538669 () Unit!26064)

(declare-fun lt!538654 () Unit!26064)

(assert (=> b!1555559 (= lt!538669 lt!538654)))

(declare-fun lt!538674 () C!8728)

(declare-fun lt!538673 () List!16883)

(assert (=> b!1555559 (= (++!4414 (++!4414 Nil!16815 (Cons!16815 lt!538674 Nil!16815)) lt!538673) lt!538547)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!439 (List!16883 C!8728 List!16883 List!16883) Unit!26064)

(assert (=> b!1555559 (= lt!538654 (lemmaMoveElementToOtherListKeepsConcatEq!439 Nil!16815 lt!538674 lt!538673 lt!538547))))

(assert (=> b!1555559 (= lt!538673 (tail!2208 lt!538547))))

(assert (=> b!1555559 (= lt!538674 (head!3113 lt!538547))))

(declare-fun lt!538678 () Unit!26064)

(declare-fun lt!538663 () Unit!26064)

(assert (=> b!1555559 (= lt!538678 lt!538663)))

(declare-fun isPrefix!1260 (List!16883 List!16883) Bool)

(declare-fun getSuffix!670 (List!16883 List!16883) List!16883)

(assert (=> b!1555559 (isPrefix!1260 (++!4414 Nil!16815 (Cons!16815 (head!3113 (getSuffix!670 lt!538547 Nil!16815)) Nil!16815)) lt!538547)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!113 (List!16883 List!16883) Unit!26064)

(assert (=> b!1555559 (= lt!538663 (lemmaAddHeadSuffixToPrefixStillPrefix!113 Nil!16815 lt!538547))))

(declare-fun lt!538662 () Unit!26064)

(declare-fun lt!538659 () Unit!26064)

(assert (=> b!1555559 (= lt!538662 lt!538659)))

(assert (=> b!1555559 (= lt!538659 (lemmaAddHeadSuffixToPrefixStillPrefix!113 Nil!16815 lt!538547))))

(declare-fun lt!538668 () List!16883)

(assert (=> b!1555559 (= lt!538668 (++!4414 Nil!16815 (Cons!16815 (head!3113 lt!538547) Nil!16815)))))

(declare-fun lt!538658 () Unit!26064)

(assert (=> b!1555559 (= lt!538658 e!998051)))

(declare-fun c!252798 () Bool)

(assert (=> b!1555559 (= c!252798 (= (size!13619 Nil!16815) (size!13619 lt!538547)))))

(declare-fun lt!538681 () Unit!26064)

(declare-fun lt!538661 () Unit!26064)

(assert (=> b!1555559 (= lt!538681 lt!538661)))

(assert (=> b!1555559 (<= (size!13619 Nil!16815) (size!13619 lt!538547))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!114 (List!16883 List!16883) Unit!26064)

(assert (=> b!1555559 (= lt!538661 (lemmaIsPrefixThenSmallerEqSize!114 Nil!16815 lt!538547))))

(declare-fun e!998056 () tuple2!16286)

(assert (=> b!1555559 (= e!998056 e!998055)))

(declare-fun bm!102024 () Bool)

(declare-fun call!102033 () List!16883)

(assert (=> bm!102024 (= call!102033 (tail!2208 lt!538547))))

(declare-fun bm!102025 () Bool)

(declare-fun call!102031 () Bool)

(assert (=> bm!102025 (= call!102031 (isPrefix!1260 lt!538547 lt!538547))))

(declare-fun bm!102026 () Bool)

(assert (=> bm!102026 (= call!102034 (nullable!1270 (regex!2947 rule!240)))))

(declare-fun b!1555560 () Bool)

(declare-fun c!252796 () Bool)

(assert (=> b!1555560 (= c!252796 call!102034)))

(declare-fun lt!538660 () Unit!26064)

(declare-fun lt!538657 () Unit!26064)

(assert (=> b!1555560 (= lt!538660 lt!538657)))

(assert (=> b!1555560 (= lt!538547 Nil!16815)))

(declare-fun call!102030 () Unit!26064)

(assert (=> b!1555560 (= lt!538657 call!102030)))

(declare-fun lt!538677 () Unit!26064)

(declare-fun lt!538672 () Unit!26064)

(assert (=> b!1555560 (= lt!538677 lt!538672)))

(assert (=> b!1555560 call!102031))

(declare-fun call!102036 () Unit!26064)

(assert (=> b!1555560 (= lt!538672 call!102036)))

(assert (=> b!1555560 (= e!998056 e!998049)))

(declare-fun b!1555561 () Bool)

(assert (=> b!1555561 (= e!998052 e!998056)))

(declare-fun c!252797 () Bool)

(assert (=> b!1555561 (= c!252797 (= (size!13619 Nil!16815) (size!13619 lt!538547)))))

(declare-fun bm!102027 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!124 (List!16883 List!16883 List!16883) Unit!26064)

(assert (=> bm!102027 (= call!102030 (lemmaIsPrefixSameLengthThenSameList!124 lt!538547 Nil!16815 lt!538547))))

(declare-fun b!1555562 () Bool)

(declare-fun e!998050 () Bool)

(declare-fun e!998053 () Bool)

(assert (=> b!1555562 (= e!998050 e!998053)))

(declare-fun res!694395 () Bool)

(assert (=> b!1555562 (=> res!694395 e!998053)))

(declare-fun lt!538679 () tuple2!16286)

(assert (=> b!1555562 (= res!694395 (isEmpty!10113 (_1!9485 lt!538679)))))

(declare-fun b!1555563 () Bool)

(assert (=> b!1555563 (= e!998054 lt!538671)))

(declare-fun bm!102028 () Bool)

(declare-fun call!102035 () Regex!4275)

(declare-fun call!102029 () C!8728)

(assert (=> bm!102028 (= call!102035 (derivativeStep!1022 (regex!2947 rule!240) call!102029))))

(declare-fun bm!102029 () Bool)

(assert (=> bm!102029 (= call!102029 (head!3113 lt!538547))))

(declare-fun b!1555564 () Bool)

(assert (=> b!1555564 (= e!998053 (>= (size!13619 (_1!9485 lt!538679)) (size!13619 Nil!16815)))))

(declare-fun b!1555565 () Bool)

(assert (=> b!1555565 (= e!998049 (tuple2!16287 Nil!16815 lt!538547))))

(declare-fun bm!102031 () Bool)

(assert (=> bm!102031 (= call!102032 (findLongestMatchInner!332 call!102035 lt!538668 (+ (size!13619 Nil!16815) 1) call!102033 lt!538547 (size!13619 lt!538547)))))

(declare-fun b!1555566 () Bool)

(declare-fun Unit!26067 () Unit!26064)

(assert (=> b!1555566 (= e!998051 Unit!26067)))

(declare-fun lt!538675 () Unit!26064)

(assert (=> b!1555566 (= lt!538675 call!102036)))

(assert (=> b!1555566 call!102031))

(declare-fun lt!538670 () Unit!26064)

(assert (=> b!1555566 (= lt!538670 lt!538675)))

(declare-fun lt!538666 () Unit!26064)

(assert (=> b!1555566 (= lt!538666 call!102030)))

(assert (=> b!1555566 (= lt!538547 Nil!16815)))

(declare-fun lt!538680 () Unit!26064)

(assert (=> b!1555566 (= lt!538680 lt!538666)))

(assert (=> b!1555566 false))

(declare-fun bm!102030 () Bool)

(declare-fun lemmaIsPrefixRefl!890 (List!16883 List!16883) Unit!26064)

(assert (=> bm!102030 (= call!102036 (lemmaIsPrefixRefl!890 lt!538547 lt!538547))))

(declare-fun d!461501 () Bool)

(assert (=> d!461501 e!998050))

(declare-fun res!694396 () Bool)

(assert (=> d!461501 (=> (not res!694396) (not e!998050))))

(assert (=> d!461501 (= res!694396 (= (++!4414 (_1!9485 lt!538679) (_2!9485 lt!538679)) lt!538547))))

(assert (=> d!461501 (= lt!538679 e!998052)))

(declare-fun c!252795 () Bool)

(declare-fun lostCause!388 (Regex!4275) Bool)

(assert (=> d!461501 (= c!252795 (lostCause!388 (regex!2947 rule!240)))))

(declare-fun lt!538665 () Unit!26064)

(declare-fun Unit!26068 () Unit!26064)

(assert (=> d!461501 (= lt!538665 Unit!26068)))

(assert (=> d!461501 (= (getSuffix!670 lt!538547 Nil!16815) lt!538547)))

(declare-fun lt!538664 () Unit!26064)

(declare-fun lt!538667 () Unit!26064)

(assert (=> d!461501 (= lt!538664 lt!538667)))

(declare-fun lt!538655 () List!16883)

(assert (=> d!461501 (= lt!538547 lt!538655)))

(declare-fun lemmaSamePrefixThenSameSuffix!622 (List!16883 List!16883 List!16883 List!16883 List!16883) Unit!26064)

(assert (=> d!461501 (= lt!538667 (lemmaSamePrefixThenSameSuffix!622 Nil!16815 lt!538547 Nil!16815 lt!538655 lt!538547))))

(assert (=> d!461501 (= lt!538655 (getSuffix!670 lt!538547 Nil!16815))))

(declare-fun lt!538656 () Unit!26064)

(declare-fun lt!538676 () Unit!26064)

(assert (=> d!461501 (= lt!538656 lt!538676)))

(assert (=> d!461501 (isPrefix!1260 Nil!16815 (++!4414 Nil!16815 lt!538547))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!785 (List!16883 List!16883) Unit!26064)

(assert (=> d!461501 (= lt!538676 (lemmaConcatTwoListThenFirstIsPrefix!785 Nil!16815 lt!538547))))

(assert (=> d!461501 (validRegex!1711 (regex!2947 rule!240))))

(assert (=> d!461501 (= (findLongestMatchInner!332 (regex!2947 rule!240) Nil!16815 (size!13619 Nil!16815) lt!538547 lt!538547 (size!13619 lt!538547)) lt!538679)))

(assert (= (and d!461501 c!252795) b!1555558))

(assert (= (and d!461501 (not c!252795)) b!1555561))

(assert (= (and b!1555561 c!252797) b!1555560))

(assert (= (and b!1555561 (not c!252797)) b!1555559))

(assert (= (and b!1555560 c!252796) b!1555555))

(assert (= (and b!1555560 (not c!252796)) b!1555565))

(assert (= (and b!1555559 c!252798) b!1555566))

(assert (= (and b!1555559 (not c!252798)) b!1555556))

(assert (= (and b!1555559 c!252800) b!1555554))

(assert (= (and b!1555559 (not c!252800)) b!1555553))

(assert (= (and b!1555554 c!252799) b!1555557))

(assert (= (and b!1555554 (not c!252799)) b!1555563))

(assert (= (or b!1555554 b!1555553) bm!102024))

(assert (= (or b!1555554 b!1555553) bm!102029))

(assert (= (or b!1555554 b!1555553) bm!102028))

(assert (= (or b!1555554 b!1555553) bm!102031))

(assert (= (or b!1555560 b!1555566) bm!102027))

(assert (= (or b!1555560 b!1555566) bm!102030))

(assert (= (or b!1555560 b!1555559) bm!102026))

(assert (= (or b!1555560 b!1555566) bm!102025))

(assert (= (and d!461501 res!694396) b!1555562))

(assert (= (and b!1555562 (not res!694395)) b!1555564))

(declare-fun m!1828080 () Bool)

(assert (=> bm!102029 m!1828080))

(declare-fun m!1828082 () Bool)

(assert (=> bm!102028 m!1828082))

(declare-fun m!1828084 () Bool)

(assert (=> b!1555559 m!1828084))

(declare-fun m!1828086 () Bool)

(assert (=> b!1555559 m!1828086))

(assert (=> b!1555559 m!1827894))

(declare-fun m!1828088 () Bool)

(assert (=> b!1555559 m!1828088))

(assert (=> b!1555559 m!1827896))

(declare-fun m!1828090 () Bool)

(assert (=> b!1555559 m!1828090))

(declare-fun m!1828092 () Bool)

(assert (=> b!1555559 m!1828092))

(assert (=> b!1555559 m!1828090))

(declare-fun m!1828094 () Bool)

(assert (=> b!1555559 m!1828094))

(declare-fun m!1828096 () Bool)

(assert (=> b!1555559 m!1828096))

(declare-fun m!1828098 () Bool)

(assert (=> b!1555559 m!1828098))

(assert (=> b!1555559 m!1828080))

(declare-fun m!1828100 () Bool)

(assert (=> b!1555559 m!1828100))

(assert (=> b!1555559 m!1828084))

(declare-fun m!1828102 () Bool)

(assert (=> b!1555559 m!1828102))

(declare-fun m!1828104 () Bool)

(assert (=> b!1555559 m!1828104))

(assert (=> b!1555559 m!1828096))

(declare-fun m!1828106 () Bool)

(assert (=> d!461501 m!1828106))

(declare-fun m!1828108 () Bool)

(assert (=> d!461501 m!1828108))

(declare-fun m!1828110 () Bool)

(assert (=> d!461501 m!1828110))

(declare-fun m!1828112 () Bool)

(assert (=> d!461501 m!1828112))

(declare-fun m!1828114 () Bool)

(assert (=> d!461501 m!1828114))

(declare-fun m!1828116 () Bool)

(assert (=> d!461501 m!1828116))

(assert (=> d!461501 m!1828108))

(assert (=> d!461501 m!1827962))

(assert (=> d!461501 m!1828096))

(declare-fun m!1828118 () Bool)

(assert (=> bm!102025 m!1828118))

(assert (=> bm!102024 m!1828100))

(assert (=> bm!102026 m!1827956))

(declare-fun m!1828120 () Bool)

(assert (=> b!1555562 m!1828120))

(declare-fun m!1828122 () Bool)

(assert (=> b!1555564 m!1828122))

(assert (=> b!1555564 m!1827894))

(assert (=> bm!102031 m!1827896))

(declare-fun m!1828124 () Bool)

(assert (=> bm!102031 m!1828124))

(declare-fun m!1828126 () Bool)

(assert (=> b!1555554 m!1828126))

(declare-fun m!1828128 () Bool)

(assert (=> bm!102030 m!1828128))

(declare-fun m!1828130 () Bool)

(assert (=> bm!102027 m!1828130))

(assert (=> b!1555382 d!461501))

(declare-fun bs!388696 () Bool)

(declare-fun d!461503 () Bool)

(assert (= bs!388696 (and d!461503 b!1555384)))

(declare-fun lambda!65864 () Int)

(assert (=> bs!388696 (= lambda!65864 lambda!65861)))

(assert (=> d!461503 true))

(assert (=> d!461503 (< (dynLambda!7453 order!9899 (toChars!4177 (transformation!2947 rule!240))) (dynLambda!7452 order!9897 lambda!65864))))

(assert (=> d!461503 true))

(assert (=> d!461503 (< (dynLambda!7451 order!9895 (toValue!4318 (transformation!2947 rule!240))) (dynLambda!7452 order!9897 lambda!65864))))

(assert (=> d!461503 (= (semiInverseModEq!1112 (toChars!4177 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240))) (Forall!608 lambda!65864))))

(declare-fun bs!388697 () Bool)

(assert (= bs!388697 d!461503))

(declare-fun m!1828132 () Bool)

(assert (=> bs!388697 m!1828132))

(assert (=> b!1555382 d!461503))

(declare-fun d!461505 () Bool)

(declare-fun e!998059 () Bool)

(assert (=> d!461505 e!998059))

(declare-fun res!694399 () Bool)

(assert (=> d!461505 (=> res!694399 e!998059)))

(assert (=> d!461505 (= res!694399 (isEmpty!10113 (_1!9485 (findLongestMatchInner!332 (regex!2947 rule!240) Nil!16815 (size!13619 Nil!16815) lt!538547 lt!538547 (size!13619 lt!538547)))))))

(declare-fun lt!538684 () Unit!26064)

(declare-fun choose!9283 (Regex!4275 List!16883) Unit!26064)

(assert (=> d!461505 (= lt!538684 (choose!9283 (regex!2947 rule!240) lt!538547))))

(assert (=> d!461505 (validRegex!1711 (regex!2947 rule!240))))

(assert (=> d!461505 (= (longestMatchIsAcceptedByMatchOrIsEmpty!316 (regex!2947 rule!240) lt!538547) lt!538684)))

(declare-fun b!1555573 () Bool)

(assert (=> b!1555573 (= e!998059 (matchR!1878 (regex!2947 rule!240) (_1!9485 (findLongestMatchInner!332 (regex!2947 rule!240) Nil!16815 (size!13619 Nil!16815) lt!538547 lt!538547 (size!13619 lt!538547)))))))

(assert (= (and d!461505 (not res!694399)) b!1555573))

(assert (=> d!461505 m!1827896))

(assert (=> d!461505 m!1827962))

(assert (=> d!461505 m!1827894))

(assert (=> d!461505 m!1827896))

(assert (=> d!461505 m!1827898))

(assert (=> d!461505 m!1828034))

(declare-fun m!1828134 () Bool)

(assert (=> d!461505 m!1828134))

(assert (=> d!461505 m!1827894))

(assert (=> b!1555573 m!1827894))

(assert (=> b!1555573 m!1827896))

(assert (=> b!1555573 m!1827894))

(assert (=> b!1555573 m!1827896))

(assert (=> b!1555573 m!1827898))

(assert (=> b!1555573 m!1828028))

(assert (=> b!1555382 d!461505))

(declare-fun d!461507 () Bool)

(declare-fun lt!538685 () Int)

(assert (=> d!461507 (>= lt!538685 0)))

(declare-fun e!998060 () Int)

(assert (=> d!461507 (= lt!538685 e!998060)))

(declare-fun c!252801 () Bool)

(assert (=> d!461507 (= c!252801 ((_ is Nil!16815) lt!538547))))

(assert (=> d!461507 (= (size!13619 lt!538547) lt!538685)))

(declare-fun b!1555574 () Bool)

(assert (=> b!1555574 (= e!998060 0)))

(declare-fun b!1555575 () Bool)

(assert (=> b!1555575 (= e!998060 (+ 1 (size!13619 (t!141346 lt!538547))))))

(assert (= (and d!461507 c!252801) b!1555574))

(assert (= (and d!461507 (not c!252801)) b!1555575))

(declare-fun m!1828136 () Bool)

(assert (=> b!1555575 m!1828136))

(assert (=> b!1555382 d!461507))

(declare-fun d!461509 () Bool)

(declare-fun e!998063 () Bool)

(assert (=> d!461509 e!998063))

(declare-fun res!694402 () Bool)

(assert (=> d!461509 (=> (not res!694402) (not e!998063))))

(assert (=> d!461509 (= res!694402 (semiInverseModEq!1112 (toChars!4177 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240))))))

(declare-fun Unit!26069 () Unit!26064)

(assert (=> d!461509 (= (lemmaInv!426 (transformation!2947 rule!240)) Unit!26069)))

(declare-fun b!1555578 () Bool)

(assert (=> b!1555578 (= e!998063 (equivClasses!1056 (toChars!4177 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240))))))

(assert (= (and d!461509 res!694402) b!1555578))

(assert (=> d!461509 m!1827892))

(assert (=> b!1555578 m!1828000))

(assert (=> b!1555382 d!461509))

(declare-fun d!461511 () Bool)

(assert (=> d!461511 (= (apply!4109 (transformation!2947 rule!240) lt!538548) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) lt!538548))))

(declare-fun b_lambda!48829 () Bool)

(assert (=> (not b_lambda!48829) (not d!461511)))

(declare-fun t!141354 () Bool)

(declare-fun tb!87315 () Bool)

(assert (=> (and b!1555361 (= (toValue!4318 (transformation!2947 rule!240)) (toValue!4318 (transformation!2947 rule!240))) t!141354) tb!87315))

(declare-fun result!105412 () Bool)

(assert (=> tb!87315 (= result!105412 (inv!21 (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) lt!538548)))))

(declare-fun m!1828138 () Bool)

(assert (=> tb!87315 m!1828138))

(assert (=> d!461511 t!141354))

(declare-fun b_and!108519 () Bool)

(assert (= b_and!108517 (and (=> t!141354 result!105412) b_and!108519)))

(declare-fun m!1828140 () Bool)

(assert (=> d!461511 m!1828140))

(assert (=> b!1555356 d!461511))

(declare-fun b!1555585 () Bool)

(declare-fun e!998069 () Bool)

(assert (=> b!1555585 (= e!998069 true)))

(declare-fun d!461513 () Bool)

(assert (=> d!461513 e!998069))

(assert (= d!461513 b!1555585))

(declare-fun lambda!65867 () Int)

(declare-fun order!9901 () Int)

(declare-fun dynLambda!7456 (Int Int) Int)

(assert (=> b!1555585 (< (dynLambda!7451 order!9895 (toValue!4318 (transformation!2947 rule!240))) (dynLambda!7456 order!9901 lambda!65867))))

(assert (=> b!1555585 (< (dynLambda!7453 order!9899 (toChars!4177 (transformation!2947 rule!240))) (dynLambda!7456 order!9901 lambda!65867))))

(assert (=> d!461513 (= (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) (_1!9483 (_1!9484 lt!538554))) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) lt!538548))))

(declare-fun lt!538688 () Unit!26064)

(declare-fun Forall2of!41 (Int BalanceConc!11072 BalanceConc!11072) Unit!26064)

(assert (=> d!461513 (= lt!538688 (Forall2of!41 lambda!65867 (_1!9483 (_1!9484 lt!538554)) lt!538548))))

(assert (=> d!461513 (= (list!6493 (_1!9483 (_1!9484 lt!538554))) (list!6493 lt!538548))))

(assert (=> d!461513 (= (lemmaEqSameImage!148 (transformation!2947 rule!240) (_1!9483 (_1!9484 lt!538554)) lt!538548) lt!538688)))

(declare-fun b_lambda!48831 () Bool)

(assert (=> (not b_lambda!48831) (not d!461513)))

(assert (=> d!461513 t!141352))

(declare-fun b_and!108521 () Bool)

(assert (= b_and!108519 (and (=> t!141352 result!105408) b_and!108521)))

(declare-fun b_lambda!48833 () Bool)

(assert (=> (not b_lambda!48833) (not d!461513)))

(assert (=> d!461513 t!141354))

(declare-fun b_and!108523 () Bool)

(assert (= b_and!108521 (and (=> t!141354 result!105412) b_and!108523)))

(declare-fun m!1828142 () Bool)

(assert (=> d!461513 m!1828142))

(assert (=> d!461513 m!1828010))

(assert (=> d!461513 m!1827884))

(assert (=> d!461513 m!1827878))

(assert (=> d!461513 m!1828140))

(assert (=> b!1555356 d!461513))

(declare-fun d!461515 () Bool)

(declare-fun choose!9284 (Int) Bool)

(assert (=> d!461515 (= (Forall!608 lambda!65861) (choose!9284 lambda!65861))))

(declare-fun bs!388698 () Bool)

(assert (= bs!388698 d!461515))

(declare-fun m!1828144 () Bool)

(assert (=> bs!388698 m!1828144))

(assert (=> b!1555384 d!461515))

(declare-fun setIsEmpty!10844 () Bool)

(declare-fun setRes!10844 () Bool)

(assert (=> setIsEmpty!10844 setRes!10844))

(declare-fun e!998077 () Bool)

(declare-fun b!1555594 () Bool)

(declare-fun e!998078 () Bool)

(declare-fun tp!455893 () Bool)

(declare-fun tp!455891 () Bool)

(declare-fun tp_is_empty!7067 () Bool)

(declare-fun inv!22097 (Context!1586) Bool)

(assert (=> b!1555594 (= e!998077 (and tp!455891 (inv!22097 (_2!9481 (_1!9482 (h!22220 (zeroValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))))) e!998078 tp_is_empty!7067 setRes!10844 tp!455893))))

(declare-fun condSetEmpty!10844 () Bool)

(assert (=> b!1555594 (= condSetEmpty!10844 (= (_2!9482 (h!22220 (zeroValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun setElem!10844 () Context!1586)

(declare-fun e!998076 () Bool)

(declare-fun setNonEmpty!10844 () Bool)

(declare-fun tp!455894 () Bool)

(assert (=> setNonEmpty!10844 (= setRes!10844 (and tp!455894 (inv!22097 setElem!10844) e!998076))))

(declare-fun setRest!10844 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10844 (= (_2!9482 (h!22220 (zeroValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10844 true) setRest!10844))))

(declare-fun b!1555595 () Bool)

(declare-fun tp!455895 () Bool)

(assert (=> b!1555595 (= e!998076 tp!455895)))

(declare-fun b!1555596 () Bool)

(declare-fun tp!455892 () Bool)

(assert (=> b!1555596 (= e!998078 tp!455892)))

(assert (=> b!1555370 (= tp!455861 e!998077)))

(assert (= b!1555594 b!1555596))

(assert (= (and b!1555594 condSetEmpty!10844) setIsEmpty!10844))

(assert (= (and b!1555594 (not condSetEmpty!10844)) setNonEmpty!10844))

(assert (= setNonEmpty!10844 b!1555595))

(assert (= (and b!1555370 ((_ is Cons!16819) (zeroValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))) b!1555594))

(declare-fun m!1828146 () Bool)

(assert (=> b!1555594 m!1828146))

(declare-fun m!1828148 () Bool)

(assert (=> setNonEmpty!10844 m!1828148))

(declare-fun setIsEmpty!10845 () Bool)

(declare-fun setRes!10845 () Bool)

(assert (=> setIsEmpty!10845 setRes!10845))

(declare-fun tp!455898 () Bool)

(declare-fun tp!455896 () Bool)

(declare-fun e!998080 () Bool)

(declare-fun b!1555597 () Bool)

(declare-fun e!998081 () Bool)

(assert (=> b!1555597 (= e!998080 (and tp!455896 (inv!22097 (_2!9481 (_1!9482 (h!22220 (minValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))))) e!998081 tp_is_empty!7067 setRes!10845 tp!455898))))

(declare-fun condSetEmpty!10845 () Bool)

(assert (=> b!1555597 (= condSetEmpty!10845 (= (_2!9482 (h!22220 (minValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun setElem!10845 () Context!1586)

(declare-fun tp!455899 () Bool)

(declare-fun setNonEmpty!10845 () Bool)

(declare-fun e!998079 () Bool)

(assert (=> setNonEmpty!10845 (= setRes!10845 (and tp!455899 (inv!22097 setElem!10845) e!998079))))

(declare-fun setRest!10845 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10845 (= (_2!9482 (h!22220 (minValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10845 true) setRest!10845))))

(declare-fun b!1555598 () Bool)

(declare-fun tp!455900 () Bool)

(assert (=> b!1555598 (= e!998079 tp!455900)))

(declare-fun b!1555599 () Bool)

(declare-fun tp!455897 () Bool)

(assert (=> b!1555599 (= e!998081 tp!455897)))

(assert (=> b!1555370 (= tp!455858 e!998080)))

(assert (= b!1555597 b!1555599))

(assert (= (and b!1555597 condSetEmpty!10845) setIsEmpty!10845))

(assert (= (and b!1555597 (not condSetEmpty!10845)) setNonEmpty!10845))

(assert (= setNonEmpty!10845 b!1555598))

(assert (= (and b!1555370 ((_ is Cons!16819) (minValue!2056 (v!23661 (underlying!3805 (v!23662 (underlying!3806 (cache!2123 cacheDown!768)))))))) b!1555597))

(declare-fun m!1828150 () Bool)

(assert (=> b!1555597 m!1828150))

(declare-fun m!1828152 () Bool)

(assert (=> setNonEmpty!10845 m!1828152))

(declare-fun setIsEmpty!10848 () Bool)

(declare-fun setRes!10848 () Bool)

(assert (=> setIsEmpty!10848 setRes!10848))

(declare-fun e!998087 () Bool)

(assert (=> b!1555377 (= tp!455866 e!998087)))

(declare-fun b!1555606 () Bool)

(declare-fun tp!455907 () Bool)

(assert (=> b!1555606 (= e!998087 (and setRes!10848 tp!455907))))

(declare-fun condSetEmpty!10848 () Bool)

(assert (=> b!1555606 (= condSetEmpty!10848 (= (_1!9477 (_1!9478 (h!22218 (zeroValue!2054 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555607 () Bool)

(declare-fun e!998086 () Bool)

(declare-fun tp!455908 () Bool)

(assert (=> b!1555607 (= e!998086 tp!455908)))

(declare-fun tp!455909 () Bool)

(declare-fun setElem!10848 () Context!1586)

(declare-fun setNonEmpty!10848 () Bool)

(assert (=> setNonEmpty!10848 (= setRes!10848 (and tp!455909 (inv!22097 setElem!10848) e!998086))))

(declare-fun setRest!10848 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10848 (= (_1!9477 (_1!9478 (h!22218 (zeroValue!2054 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10848 true) setRest!10848))))

(assert (= (and b!1555606 condSetEmpty!10848) setIsEmpty!10848))

(assert (= (and b!1555606 (not condSetEmpty!10848)) setNonEmpty!10848))

(assert (= setNonEmpty!10848 b!1555607))

(assert (= (and b!1555377 ((_ is Cons!16817) (zeroValue!2054 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103)))))))) b!1555606))

(declare-fun m!1828154 () Bool)

(assert (=> setNonEmpty!10848 m!1828154))

(declare-fun setIsEmpty!10849 () Bool)

(declare-fun setRes!10849 () Bool)

(assert (=> setIsEmpty!10849 setRes!10849))

(declare-fun e!998089 () Bool)

(assert (=> b!1555377 (= tp!455871 e!998089)))

(declare-fun b!1555608 () Bool)

(declare-fun tp!455910 () Bool)

(assert (=> b!1555608 (= e!998089 (and setRes!10849 tp!455910))))

(declare-fun condSetEmpty!10849 () Bool)

(assert (=> b!1555608 (= condSetEmpty!10849 (= (_1!9477 (_1!9478 (h!22218 (minValue!2054 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555609 () Bool)

(declare-fun e!998088 () Bool)

(declare-fun tp!455911 () Bool)

(assert (=> b!1555609 (= e!998088 tp!455911)))

(declare-fun setElem!10849 () Context!1586)

(declare-fun setNonEmpty!10849 () Bool)

(declare-fun tp!455912 () Bool)

(assert (=> setNonEmpty!10849 (= setRes!10849 (and tp!455912 (inv!22097 setElem!10849) e!998088))))

(declare-fun setRest!10849 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10849 (= (_1!9477 (_1!9478 (h!22218 (minValue!2054 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10849 true) setRest!10849))))

(assert (= (and b!1555608 condSetEmpty!10849) setIsEmpty!10849))

(assert (= (and b!1555608 (not condSetEmpty!10849)) setNonEmpty!10849))

(assert (= setNonEmpty!10849 b!1555609))

(assert (= (and b!1555377 ((_ is Cons!16817) (minValue!2054 (v!23660 (underlying!3807 (v!23663 (underlying!3808 (cache!2124 cacheFurthestNullable!103)))))))) b!1555608))

(declare-fun m!1828156 () Bool)

(assert (=> setNonEmpty!10849 m!1828156))

(declare-fun tp!455919 () Bool)

(declare-fun tp!455920 () Bool)

(declare-fun b!1555618 () Bool)

(declare-fun e!998094 () Bool)

(assert (=> b!1555618 (= e!998094 (and (inv!22089 (left!13669 (c!252761 input!1676))) tp!455920 (inv!22089 (right!13999 (c!252761 input!1676))) tp!455919))))

(declare-fun b!1555620 () Bool)

(declare-fun e!998095 () Bool)

(declare-fun tp!455921 () Bool)

(assert (=> b!1555620 (= e!998095 tp!455921)))

(declare-fun b!1555619 () Bool)

(declare-fun inv!22098 (IArray!11135) Bool)

(assert (=> b!1555619 (= e!998094 (and (inv!22098 (xs!8365 (c!252761 input!1676))) e!998095))))

(assert (=> b!1555369 (= tp!455877 (and (inv!22089 (c!252761 input!1676)) e!998094))))

(assert (= (and b!1555369 ((_ is Node!5565) (c!252761 input!1676))) b!1555618))

(assert (= b!1555619 b!1555620))

(assert (= (and b!1555369 ((_ is Leaf!8248) (c!252761 input!1676))) b!1555619))

(declare-fun m!1828158 () Bool)

(assert (=> b!1555618 m!1828158))

(declare-fun m!1828160 () Bool)

(assert (=> b!1555618 m!1828160))

(declare-fun m!1828162 () Bool)

(assert (=> b!1555619 m!1828162))

(assert (=> b!1555369 m!1827860))

(declare-fun e!998103 () Bool)

(declare-fun setRes!10852 () Bool)

(declare-fun tp!455933 () Bool)

(declare-fun setNonEmpty!10852 () Bool)

(declare-fun setElem!10852 () Context!1586)

(assert (=> setNonEmpty!10852 (= setRes!10852 (and tp!455933 (inv!22097 setElem!10852) e!998103))))

(declare-fun setRest!10852 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10852 (= (_2!9480 (h!22219 (zeroValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10852 true) setRest!10852))))

(declare-fun tp!455930 () Bool)

(declare-fun e!998102 () Bool)

(declare-fun e!998104 () Bool)

(declare-fun b!1555629 () Bool)

(assert (=> b!1555629 (= e!998102 (and (inv!22097 (_1!9479 (_1!9480 (h!22219 (zeroValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))))) e!998104 tp_is_empty!7067 setRes!10852 tp!455930))))

(declare-fun condSetEmpty!10852 () Bool)

(assert (=> b!1555629 (= condSetEmpty!10852 (= (_2!9480 (h!22219 (zeroValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555630 () Bool)

(declare-fun tp!455932 () Bool)

(assert (=> b!1555630 (= e!998104 tp!455932)))

(assert (=> b!1555379 (= tp!455867 e!998102)))

(declare-fun setIsEmpty!10852 () Bool)

(assert (=> setIsEmpty!10852 setRes!10852))

(declare-fun b!1555631 () Bool)

(declare-fun tp!455931 () Bool)

(assert (=> b!1555631 (= e!998103 tp!455931)))

(assert (= b!1555629 b!1555630))

(assert (= (and b!1555629 condSetEmpty!10852) setIsEmpty!10852))

(assert (= (and b!1555629 (not condSetEmpty!10852)) setNonEmpty!10852))

(assert (= setNonEmpty!10852 b!1555631))

(assert (= (and b!1555379 ((_ is Cons!16818) (zeroValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))) b!1555629))

(declare-fun m!1828164 () Bool)

(assert (=> setNonEmpty!10852 m!1828164))

(declare-fun m!1828166 () Bool)

(assert (=> b!1555629 m!1828166))

(declare-fun setElem!10853 () Context!1586)

(declare-fun setNonEmpty!10853 () Bool)

(declare-fun setRes!10853 () Bool)

(declare-fun e!998106 () Bool)

(declare-fun tp!455937 () Bool)

(assert (=> setNonEmpty!10853 (= setRes!10853 (and tp!455937 (inv!22097 setElem!10853) e!998106))))

(declare-fun setRest!10853 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10853 (= (_2!9480 (h!22219 (minValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10853 true) setRest!10853))))

(declare-fun b!1555632 () Bool)

(declare-fun e!998105 () Bool)

(declare-fun e!998107 () Bool)

(declare-fun tp!455934 () Bool)

(assert (=> b!1555632 (= e!998105 (and (inv!22097 (_1!9479 (_1!9480 (h!22219 (minValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))))) e!998107 tp_is_empty!7067 setRes!10853 tp!455934))))

(declare-fun condSetEmpty!10853 () Bool)

(assert (=> b!1555632 (= condSetEmpty!10853 (= (_2!9480 (h!22219 (minValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555633 () Bool)

(declare-fun tp!455936 () Bool)

(assert (=> b!1555633 (= e!998107 tp!455936)))

(assert (=> b!1555379 (= tp!455868 e!998105)))

(declare-fun setIsEmpty!10853 () Bool)

(assert (=> setIsEmpty!10853 setRes!10853))

(declare-fun b!1555634 () Bool)

(declare-fun tp!455935 () Bool)

(assert (=> b!1555634 (= e!998106 tp!455935)))

(assert (= b!1555632 b!1555633))

(assert (= (and b!1555632 condSetEmpty!10853) setIsEmpty!10853))

(assert (= (and b!1555632 (not condSetEmpty!10853)) setNonEmpty!10853))

(assert (= setNonEmpty!10853 b!1555634))

(assert (= (and b!1555379 ((_ is Cons!16818) (minValue!2055 (v!23658 (underlying!3803 (v!23659 (underlying!3804 (cache!2122 cacheUp!755)))))))) b!1555632))

(declare-fun m!1828168 () Bool)

(assert (=> setNonEmpty!10853 m!1828168))

(declare-fun m!1828170 () Bool)

(assert (=> b!1555632 m!1828170))

(declare-fun b!1555645 () Bool)

(declare-fun e!998110 () Bool)

(assert (=> b!1555645 (= e!998110 tp_is_empty!7067)))

(declare-fun b!1555648 () Bool)

(declare-fun tp!455951 () Bool)

(declare-fun tp!455949 () Bool)

(assert (=> b!1555648 (= e!998110 (and tp!455951 tp!455949))))

(declare-fun b!1555646 () Bool)

(declare-fun tp!455948 () Bool)

(declare-fun tp!455952 () Bool)

(assert (=> b!1555646 (= e!998110 (and tp!455948 tp!455952))))

(declare-fun b!1555647 () Bool)

(declare-fun tp!455950 () Bool)

(assert (=> b!1555647 (= e!998110 tp!455950)))

(assert (=> b!1555360 (= tp!455876 e!998110)))

(assert (= (and b!1555360 ((_ is ElementMatch!4275) (regex!2947 rule!240))) b!1555645))

(assert (= (and b!1555360 ((_ is Concat!7313) (regex!2947 rule!240))) b!1555646))

(assert (= (and b!1555360 ((_ is Star!4275) (regex!2947 rule!240))) b!1555647))

(assert (= (and b!1555360 ((_ is Union!4275) (regex!2947 rule!240))) b!1555648))

(declare-fun e!998111 () Bool)

(declare-fun tp!455953 () Bool)

(declare-fun b!1555649 () Bool)

(declare-fun tp!455954 () Bool)

(assert (=> b!1555649 (= e!998111 (and (inv!22089 (left!13669 (c!252761 (totalInput!2462 cacheFurthestNullable!103)))) tp!455954 (inv!22089 (right!13999 (c!252761 (totalInput!2462 cacheFurthestNullable!103)))) tp!455953))))

(declare-fun b!1555651 () Bool)

(declare-fun e!998112 () Bool)

(declare-fun tp!455955 () Bool)

(assert (=> b!1555651 (= e!998112 tp!455955)))

(declare-fun b!1555650 () Bool)

(assert (=> b!1555650 (= e!998111 (and (inv!22098 (xs!8365 (c!252761 (totalInput!2462 cacheFurthestNullable!103)))) e!998112))))

(assert (=> b!1555388 (= tp!455874 (and (inv!22089 (c!252761 (totalInput!2462 cacheFurthestNullable!103))) e!998111))))

(assert (= (and b!1555388 ((_ is Node!5565) (c!252761 (totalInput!2462 cacheFurthestNullable!103)))) b!1555649))

(assert (= b!1555650 b!1555651))

(assert (= (and b!1555388 ((_ is Leaf!8248) (c!252761 (totalInput!2462 cacheFurthestNullable!103)))) b!1555650))

(declare-fun m!1828172 () Bool)

(assert (=> b!1555649 m!1828172))

(declare-fun m!1828174 () Bool)

(assert (=> b!1555649 m!1828174))

(declare-fun m!1828176 () Bool)

(assert (=> b!1555650 m!1828176))

(assert (=> b!1555388 m!1827946))

(declare-fun b!1555666 () Bool)

(declare-fun e!998130 () Bool)

(declare-fun tp!455980 () Bool)

(assert (=> b!1555666 (= e!998130 tp!455980)))

(declare-fun b!1555667 () Bool)

(declare-fun e!998127 () Bool)

(declare-fun tp!455983 () Bool)

(assert (=> b!1555667 (= e!998127 tp!455983)))

(declare-fun b!1555668 () Bool)

(declare-fun setRes!10858 () Bool)

(declare-fun e!998129 () Bool)

(declare-fun mapValue!8366 () List!16887)

(declare-fun tp!455988 () Bool)

(declare-fun tp!455984 () Bool)

(assert (=> b!1555668 (= e!998129 (and tp!455988 (inv!22097 (_2!9481 (_1!9482 (h!22220 mapValue!8366)))) e!998127 tp_is_empty!7067 setRes!10858 tp!455984))))

(declare-fun condSetEmpty!10859 () Bool)

(assert (=> b!1555668 (= condSetEmpty!10859 (= (_2!9482 (h!22220 mapValue!8366)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun setRes!10859 () Bool)

(declare-fun tp!455987 () Bool)

(declare-fun setNonEmpty!10858 () Bool)

(declare-fun e!998126 () Bool)

(declare-fun setElem!10858 () Context!1586)

(assert (=> setNonEmpty!10858 (= setRes!10859 (and tp!455987 (inv!22097 setElem!10858) e!998126))))

(declare-fun mapDefault!8366 () List!16887)

(declare-fun setRest!10858 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10858 (= (_2!9482 (h!22220 mapDefault!8366)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10858 true) setRest!10858))))

(declare-fun setElem!10859 () Context!1586)

(declare-fun tp!455985 () Bool)

(declare-fun setNonEmpty!10859 () Bool)

(declare-fun e!998128 () Bool)

(assert (=> setNonEmpty!10859 (= setRes!10858 (and tp!455985 (inv!22097 setElem!10859) e!998128))))

(declare-fun setRest!10859 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10859 (= (_2!9482 (h!22220 mapValue!8366)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10859 true) setRest!10859))))

(declare-fun b!1555669 () Bool)

(declare-fun tp!455981 () Bool)

(assert (=> b!1555669 (= e!998128 tp!455981)))

(declare-fun mapIsEmpty!8366 () Bool)

(declare-fun mapRes!8366 () Bool)

(assert (=> mapIsEmpty!8366 mapRes!8366))

(declare-fun setIsEmpty!10858 () Bool)

(assert (=> setIsEmpty!10858 setRes!10858))

(declare-fun setIsEmpty!10859 () Bool)

(assert (=> setIsEmpty!10859 setRes!10859))

(declare-fun e!998125 () Bool)

(declare-fun tp!455978 () Bool)

(declare-fun b!1555670 () Bool)

(declare-fun tp!455986 () Bool)

(assert (=> b!1555670 (= e!998125 (and tp!455986 (inv!22097 (_2!9481 (_1!9482 (h!22220 mapDefault!8366)))) e!998130 tp_is_empty!7067 setRes!10859 tp!455978))))

(declare-fun condSetEmpty!10858 () Bool)

(assert (=> b!1555670 (= condSetEmpty!10858 (= (_2!9482 (h!22220 mapDefault!8366)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555671 () Bool)

(declare-fun tp!455979 () Bool)

(assert (=> b!1555671 (= e!998126 tp!455979)))

(declare-fun condMapEmpty!8366 () Bool)

(assert (=> mapNonEmpty!8361 (= condMapEmpty!8366 (= mapRest!8362 ((as const (Array (_ BitVec 32) List!16887)) mapDefault!8366)))))

(assert (=> mapNonEmpty!8361 (= tp!455872 (and e!998125 mapRes!8366))))

(declare-fun mapNonEmpty!8366 () Bool)

(declare-fun tp!455982 () Bool)

(assert (=> mapNonEmpty!8366 (= mapRes!8366 (and tp!455982 e!998129))))

(declare-fun mapKey!8366 () (_ BitVec 32))

(declare-fun mapRest!8366 () (Array (_ BitVec 32) List!16887))

(assert (=> mapNonEmpty!8366 (= mapRest!8362 (store mapRest!8366 mapKey!8366 mapValue!8366))))

(assert (= (and mapNonEmpty!8361 condMapEmpty!8366) mapIsEmpty!8366))

(assert (= (and mapNonEmpty!8361 (not condMapEmpty!8366)) mapNonEmpty!8366))

(assert (= b!1555668 b!1555667))

(assert (= (and b!1555668 condSetEmpty!10859) setIsEmpty!10858))

(assert (= (and b!1555668 (not condSetEmpty!10859)) setNonEmpty!10859))

(assert (= setNonEmpty!10859 b!1555669))

(assert (= (and mapNonEmpty!8366 ((_ is Cons!16819) mapValue!8366)) b!1555668))

(assert (= b!1555670 b!1555666))

(assert (= (and b!1555670 condSetEmpty!10858) setIsEmpty!10859))

(assert (= (and b!1555670 (not condSetEmpty!10858)) setNonEmpty!10858))

(assert (= setNonEmpty!10858 b!1555671))

(assert (= (and mapNonEmpty!8361 ((_ is Cons!16819) mapDefault!8366)) b!1555670))

(declare-fun m!1828178 () Bool)

(assert (=> setNonEmpty!10859 m!1828178))

(declare-fun m!1828180 () Bool)

(assert (=> b!1555668 m!1828180))

(declare-fun m!1828182 () Bool)

(assert (=> setNonEmpty!10858 m!1828182))

(declare-fun m!1828184 () Bool)

(assert (=> mapNonEmpty!8366 m!1828184))

(declare-fun m!1828186 () Bool)

(assert (=> b!1555670 m!1828186))

(declare-fun setIsEmpty!10860 () Bool)

(declare-fun setRes!10860 () Bool)

(assert (=> setIsEmpty!10860 setRes!10860))

(declare-fun e!998132 () Bool)

(declare-fun tp!455989 () Bool)

(declare-fun e!998133 () Bool)

(declare-fun b!1555672 () Bool)

(declare-fun tp!455991 () Bool)

(assert (=> b!1555672 (= e!998132 (and tp!455989 (inv!22097 (_2!9481 (_1!9482 (h!22220 mapValue!8363)))) e!998133 tp_is_empty!7067 setRes!10860 tp!455991))))

(declare-fun condSetEmpty!10860 () Bool)

(assert (=> b!1555672 (= condSetEmpty!10860 (= (_2!9482 (h!22220 mapValue!8363)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun setNonEmpty!10860 () Bool)

(declare-fun tp!455992 () Bool)

(declare-fun e!998131 () Bool)

(declare-fun setElem!10860 () Context!1586)

(assert (=> setNonEmpty!10860 (= setRes!10860 (and tp!455992 (inv!22097 setElem!10860) e!998131))))

(declare-fun setRest!10860 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10860 (= (_2!9482 (h!22220 mapValue!8363)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10860 true) setRest!10860))))

(declare-fun b!1555673 () Bool)

(declare-fun tp!455993 () Bool)

(assert (=> b!1555673 (= e!998131 tp!455993)))

(declare-fun b!1555674 () Bool)

(declare-fun tp!455990 () Bool)

(assert (=> b!1555674 (= e!998133 tp!455990)))

(assert (=> mapNonEmpty!8361 (= tp!455855 e!998132)))

(assert (= b!1555672 b!1555674))

(assert (= (and b!1555672 condSetEmpty!10860) setIsEmpty!10860))

(assert (= (and b!1555672 (not condSetEmpty!10860)) setNonEmpty!10860))

(assert (= setNonEmpty!10860 b!1555673))

(assert (= (and mapNonEmpty!8361 ((_ is Cons!16819) mapValue!8363)) b!1555672))

(declare-fun m!1828188 () Bool)

(assert (=> b!1555672 m!1828188))

(declare-fun m!1828190 () Bool)

(assert (=> setNonEmpty!10860 m!1828190))

(declare-fun e!998134 () Bool)

(declare-fun tp!455994 () Bool)

(declare-fun tp!455995 () Bool)

(declare-fun b!1555675 () Bool)

(assert (=> b!1555675 (= e!998134 (and (inv!22089 (left!13669 (c!252761 totalInput!568))) tp!455995 (inv!22089 (right!13999 (c!252761 totalInput!568))) tp!455994))))

(declare-fun b!1555677 () Bool)

(declare-fun e!998135 () Bool)

(declare-fun tp!455996 () Bool)

(assert (=> b!1555677 (= e!998135 tp!455996)))

(declare-fun b!1555676 () Bool)

(assert (=> b!1555676 (= e!998134 (and (inv!22098 (xs!8365 (c!252761 totalInput!568))) e!998135))))

(assert (=> b!1555358 (= tp!455878 (and (inv!22089 (c!252761 totalInput!568)) e!998134))))

(assert (= (and b!1555358 ((_ is Node!5565) (c!252761 totalInput!568))) b!1555675))

(assert (= b!1555676 b!1555677))

(assert (= (and b!1555358 ((_ is Leaf!8248) (c!252761 totalInput!568))) b!1555676))

(declare-fun m!1828192 () Bool)

(assert (=> b!1555675 m!1828192))

(declare-fun m!1828194 () Bool)

(assert (=> b!1555675 m!1828194))

(declare-fun m!1828196 () Bool)

(assert (=> b!1555676 m!1828196))

(assert (=> b!1555358 m!1827912))

(declare-fun setIsEmpty!10861 () Bool)

(declare-fun setRes!10861 () Bool)

(assert (=> setIsEmpty!10861 setRes!10861))

(declare-fun e!998137 () Bool)

(declare-fun e!998138 () Bool)

(declare-fun b!1555678 () Bool)

(declare-fun tp!455999 () Bool)

(declare-fun tp!455997 () Bool)

(assert (=> b!1555678 (= e!998137 (and tp!455997 (inv!22097 (_2!9481 (_1!9482 (h!22220 mapDefault!8362)))) e!998138 tp_is_empty!7067 setRes!10861 tp!455999))))

(declare-fun condSetEmpty!10861 () Bool)

(assert (=> b!1555678 (= condSetEmpty!10861 (= (_2!9482 (h!22220 mapDefault!8362)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun setNonEmpty!10861 () Bool)

(declare-fun setElem!10861 () Context!1586)

(declare-fun e!998136 () Bool)

(declare-fun tp!456000 () Bool)

(assert (=> setNonEmpty!10861 (= setRes!10861 (and tp!456000 (inv!22097 setElem!10861) e!998136))))

(declare-fun setRest!10861 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10861 (= (_2!9482 (h!22220 mapDefault!8362)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10861 true) setRest!10861))))

(declare-fun b!1555679 () Bool)

(declare-fun tp!456001 () Bool)

(assert (=> b!1555679 (= e!998136 tp!456001)))

(declare-fun b!1555680 () Bool)

(declare-fun tp!455998 () Bool)

(assert (=> b!1555680 (= e!998138 tp!455998)))

(assert (=> b!1555386 (= tp!455862 e!998137)))

(assert (= b!1555678 b!1555680))

(assert (= (and b!1555678 condSetEmpty!10861) setIsEmpty!10861))

(assert (= (and b!1555678 (not condSetEmpty!10861)) setNonEmpty!10861))

(assert (= setNonEmpty!10861 b!1555679))

(assert (= (and b!1555386 ((_ is Cons!16819) mapDefault!8362)) b!1555678))

(declare-fun m!1828198 () Bool)

(assert (=> b!1555678 m!1828198))

(declare-fun m!1828200 () Bool)

(assert (=> setNonEmpty!10861 m!1828200))

(declare-fun setIsEmpty!10866 () Bool)

(declare-fun setRes!10866 () Bool)

(assert (=> setIsEmpty!10866 setRes!10866))

(declare-fun setIsEmpty!10867 () Bool)

(declare-fun setRes!10867 () Bool)

(assert (=> setIsEmpty!10867 setRes!10867))

(declare-fun b!1555691 () Bool)

(declare-fun e!998148 () Bool)

(declare-fun tp!456017 () Bool)

(assert (=> b!1555691 (= e!998148 tp!456017)))

(declare-fun mapIsEmpty!8369 () Bool)

(declare-fun mapRes!8369 () Bool)

(assert (=> mapIsEmpty!8369 mapRes!8369))

(declare-fun setElem!10867 () Context!1586)

(declare-fun tp!456020 () Bool)

(declare-fun setNonEmpty!10866 () Bool)

(declare-fun e!998150 () Bool)

(assert (=> setNonEmpty!10866 (= setRes!10867 (and tp!456020 (inv!22097 setElem!10867) e!998150))))

(declare-fun mapDefault!8369 () List!16885)

(declare-fun setRest!10867 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10866 (= (_1!9477 (_1!9478 (h!22218 mapDefault!8369))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10867 true) setRest!10867))))

(declare-fun b!1555692 () Bool)

(declare-fun tp!456021 () Bool)

(assert (=> b!1555692 (= e!998150 tp!456021)))

(declare-fun b!1555693 () Bool)

(declare-fun e!998149 () Bool)

(declare-fun tp!456016 () Bool)

(assert (=> b!1555693 (= e!998149 (and setRes!10867 tp!456016))))

(declare-fun condSetEmpty!10867 () Bool)

(assert (=> b!1555693 (= condSetEmpty!10867 (= (_1!9477 (_1!9478 (h!22218 mapDefault!8369))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun condMapEmpty!8369 () Bool)

(assert (=> mapNonEmpty!8363 (= condMapEmpty!8369 (= mapRest!8363 ((as const (Array (_ BitVec 32) List!16885)) mapDefault!8369)))))

(assert (=> mapNonEmpty!8363 (= tp!455856 (and e!998149 mapRes!8369))))

(declare-fun mapNonEmpty!8369 () Bool)

(declare-fun tp!456018 () Bool)

(declare-fun e!998147 () Bool)

(assert (=> mapNonEmpty!8369 (= mapRes!8369 (and tp!456018 e!998147))))

(declare-fun mapValue!8369 () List!16885)

(declare-fun mapKey!8369 () (_ BitVec 32))

(declare-fun mapRest!8369 () (Array (_ BitVec 32) List!16885))

(assert (=> mapNonEmpty!8369 (= mapRest!8363 (store mapRest!8369 mapKey!8369 mapValue!8369))))

(declare-fun setNonEmpty!10867 () Bool)

(declare-fun tp!456022 () Bool)

(declare-fun setElem!10866 () Context!1586)

(assert (=> setNonEmpty!10867 (= setRes!10866 (and tp!456022 (inv!22097 setElem!10866) e!998148))))

(declare-fun setRest!10866 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10867 (= (_1!9477 (_1!9478 (h!22218 mapValue!8369))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10866 true) setRest!10866))))

(declare-fun b!1555694 () Bool)

(declare-fun tp!456019 () Bool)

(assert (=> b!1555694 (= e!998147 (and setRes!10866 tp!456019))))

(declare-fun condSetEmpty!10866 () Bool)

(assert (=> b!1555694 (= condSetEmpty!10866 (= (_1!9477 (_1!9478 (h!22218 mapValue!8369))) ((as const (Array Context!1586 Bool)) false)))))

(assert (= (and mapNonEmpty!8363 condMapEmpty!8369) mapIsEmpty!8369))

(assert (= (and mapNonEmpty!8363 (not condMapEmpty!8369)) mapNonEmpty!8369))

(assert (= (and b!1555694 condSetEmpty!10866) setIsEmpty!10866))

(assert (= (and b!1555694 (not condSetEmpty!10866)) setNonEmpty!10867))

(assert (= setNonEmpty!10867 b!1555691))

(assert (= (and mapNonEmpty!8369 ((_ is Cons!16817) mapValue!8369)) b!1555694))

(assert (= (and b!1555693 condSetEmpty!10867) setIsEmpty!10867))

(assert (= (and b!1555693 (not condSetEmpty!10867)) setNonEmpty!10866))

(assert (= setNonEmpty!10866 b!1555692))

(assert (= (and mapNonEmpty!8363 ((_ is Cons!16817) mapDefault!8369)) b!1555693))

(declare-fun m!1828202 () Bool)

(assert (=> setNonEmpty!10866 m!1828202))

(declare-fun m!1828204 () Bool)

(assert (=> mapNonEmpty!8369 m!1828204))

(declare-fun m!1828206 () Bool)

(assert (=> setNonEmpty!10867 m!1828206))

(declare-fun setIsEmpty!10868 () Bool)

(declare-fun setRes!10868 () Bool)

(assert (=> setIsEmpty!10868 setRes!10868))

(declare-fun e!998152 () Bool)

(assert (=> mapNonEmpty!8363 (= tp!455873 e!998152)))

(declare-fun b!1555695 () Bool)

(declare-fun tp!456023 () Bool)

(assert (=> b!1555695 (= e!998152 (and setRes!10868 tp!456023))))

(declare-fun condSetEmpty!10868 () Bool)

(assert (=> b!1555695 (= condSetEmpty!10868 (= (_1!9477 (_1!9478 (h!22218 mapValue!8362))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555696 () Bool)

(declare-fun e!998151 () Bool)

(declare-fun tp!456024 () Bool)

(assert (=> b!1555696 (= e!998151 tp!456024)))

(declare-fun setElem!10868 () Context!1586)

(declare-fun tp!456025 () Bool)

(declare-fun setNonEmpty!10868 () Bool)

(assert (=> setNonEmpty!10868 (= setRes!10868 (and tp!456025 (inv!22097 setElem!10868) e!998151))))

(declare-fun setRest!10868 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10868 (= (_1!9477 (_1!9478 (h!22218 mapValue!8362))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10868 true) setRest!10868))))

(assert (= (and b!1555695 condSetEmpty!10868) setIsEmpty!10868))

(assert (= (and b!1555695 (not condSetEmpty!10868)) setNonEmpty!10868))

(assert (= setNonEmpty!10868 b!1555696))

(assert (= (and mapNonEmpty!8363 ((_ is Cons!16817) mapValue!8362)) b!1555695))

(declare-fun m!1828208 () Bool)

(assert (=> setNonEmpty!10868 m!1828208))

(declare-fun e!998154 () Bool)

(declare-fun setElem!10869 () Context!1586)

(declare-fun setNonEmpty!10869 () Bool)

(declare-fun setRes!10869 () Bool)

(declare-fun tp!456029 () Bool)

(assert (=> setNonEmpty!10869 (= setRes!10869 (and tp!456029 (inv!22097 setElem!10869) e!998154))))

(declare-fun setRest!10869 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10869 (= (_2!9480 (h!22219 mapDefault!8363)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10869 true) setRest!10869))))

(declare-fun e!998153 () Bool)

(declare-fun b!1555697 () Bool)

(declare-fun e!998155 () Bool)

(declare-fun tp!456026 () Bool)

(assert (=> b!1555697 (= e!998153 (and (inv!22097 (_1!9479 (_1!9480 (h!22219 mapDefault!8363)))) e!998155 tp_is_empty!7067 setRes!10869 tp!456026))))

(declare-fun condSetEmpty!10869 () Bool)

(assert (=> b!1555697 (= condSetEmpty!10869 (= (_2!9480 (h!22219 mapDefault!8363)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555698 () Bool)

(declare-fun tp!456028 () Bool)

(assert (=> b!1555698 (= e!998155 tp!456028)))

(assert (=> b!1555366 (= tp!455860 e!998153)))

(declare-fun setIsEmpty!10869 () Bool)

(assert (=> setIsEmpty!10869 setRes!10869))

(declare-fun b!1555699 () Bool)

(declare-fun tp!456027 () Bool)

(assert (=> b!1555699 (= e!998154 tp!456027)))

(assert (= b!1555697 b!1555698))

(assert (= (and b!1555697 condSetEmpty!10869) setIsEmpty!10869))

(assert (= (and b!1555697 (not condSetEmpty!10869)) setNonEmpty!10869))

(assert (= setNonEmpty!10869 b!1555699))

(assert (= (and b!1555366 ((_ is Cons!16818) mapDefault!8363)) b!1555697))

(declare-fun m!1828210 () Bool)

(assert (=> setNonEmpty!10869 m!1828210))

(declare-fun m!1828212 () Bool)

(assert (=> b!1555697 m!1828212))

(declare-fun setIsEmpty!10870 () Bool)

(declare-fun setRes!10870 () Bool)

(assert (=> setIsEmpty!10870 setRes!10870))

(declare-fun e!998157 () Bool)

(assert (=> b!1555391 (= tp!455879 e!998157)))

(declare-fun b!1555700 () Bool)

(declare-fun tp!456030 () Bool)

(assert (=> b!1555700 (= e!998157 (and setRes!10870 tp!456030))))

(declare-fun condSetEmpty!10870 () Bool)

(assert (=> b!1555700 (= condSetEmpty!10870 (= (_1!9477 (_1!9478 (h!22218 mapDefault!8361))) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555701 () Bool)

(declare-fun e!998156 () Bool)

(declare-fun tp!456031 () Bool)

(assert (=> b!1555701 (= e!998156 tp!456031)))

(declare-fun setElem!10870 () Context!1586)

(declare-fun setNonEmpty!10870 () Bool)

(declare-fun tp!456032 () Bool)

(assert (=> setNonEmpty!10870 (= setRes!10870 (and tp!456032 (inv!22097 setElem!10870) e!998156))))

(declare-fun setRest!10870 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10870 (= (_1!9477 (_1!9478 (h!22218 mapDefault!8361))) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10870 true) setRest!10870))))

(assert (= (and b!1555700 condSetEmpty!10870) setIsEmpty!10870))

(assert (= (and b!1555700 (not condSetEmpty!10870)) setNonEmpty!10870))

(assert (= setNonEmpty!10870 b!1555701))

(assert (= (and b!1555391 ((_ is Cons!16817) mapDefault!8361)) b!1555700))

(declare-fun m!1828214 () Bool)

(assert (=> setNonEmpty!10870 m!1828214))

(declare-fun b!1555716 () Bool)

(declare-fun e!998172 () Bool)

(declare-fun tp!456057 () Bool)

(assert (=> b!1555716 (= e!998172 tp!456057)))

(declare-fun b!1555717 () Bool)

(declare-fun e!998171 () Bool)

(declare-fun tp!456051 () Bool)

(assert (=> b!1555717 (= e!998171 tp!456051)))

(declare-fun mapNonEmpty!8372 () Bool)

(declare-fun mapRes!8372 () Bool)

(declare-fun tp!456054 () Bool)

(declare-fun e!998173 () Bool)

(assert (=> mapNonEmpty!8372 (= mapRes!8372 (and tp!456054 e!998173))))

(declare-fun mapRest!8372 () (Array (_ BitVec 32) List!16886))

(declare-fun mapValue!8372 () List!16886)

(declare-fun mapKey!8372 () (_ BitVec 32))

(assert (=> mapNonEmpty!8372 (= mapRest!8361 (store mapRest!8372 mapKey!8372 mapValue!8372))))

(declare-fun b!1555718 () Bool)

(declare-fun e!998175 () Bool)

(declare-fun tp!456059 () Bool)

(assert (=> b!1555718 (= e!998175 tp!456059)))

(declare-fun condMapEmpty!8372 () Bool)

(declare-fun mapDefault!8372 () List!16886)

(assert (=> mapNonEmpty!8362 (= condMapEmpty!8372 (= mapRest!8361 ((as const (Array (_ BitVec 32) List!16886)) mapDefault!8372)))))

(declare-fun e!998170 () Bool)

(assert (=> mapNonEmpty!8362 (= tp!455865 (and e!998170 mapRes!8372))))

(declare-fun tp!456053 () Bool)

(declare-fun setElem!10876 () Context!1586)

(declare-fun setNonEmpty!10875 () Bool)

(declare-fun setRes!10876 () Bool)

(assert (=> setNonEmpty!10875 (= setRes!10876 (and tp!456053 (inv!22097 setElem!10876) e!998172))))

(declare-fun setRest!10876 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10875 (= (_2!9480 (h!22219 mapValue!8372)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10876 true) setRest!10876))))

(declare-fun tp!456055 () Bool)

(declare-fun b!1555719 () Bool)

(assert (=> b!1555719 (= e!998173 (and (inv!22097 (_1!9479 (_1!9480 (h!22219 mapValue!8372)))) e!998175 tp_is_empty!7067 setRes!10876 tp!456055))))

(declare-fun condSetEmpty!10875 () Bool)

(assert (=> b!1555719 (= condSetEmpty!10875 (= (_2!9480 (h!22219 mapValue!8372)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun setIsEmpty!10875 () Bool)

(assert (=> setIsEmpty!10875 setRes!10876))

(declare-fun b!1555720 () Bool)

(declare-fun setRes!10875 () Bool)

(declare-fun tp!456052 () Bool)

(declare-fun e!998174 () Bool)

(assert (=> b!1555720 (= e!998170 (and (inv!22097 (_1!9479 (_1!9480 (h!22219 mapDefault!8372)))) e!998174 tp_is_empty!7067 setRes!10875 tp!456052))))

(declare-fun condSetEmpty!10876 () Bool)

(assert (=> b!1555720 (= condSetEmpty!10876 (= (_2!9480 (h!22219 mapDefault!8372)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun setIsEmpty!10876 () Bool)

(assert (=> setIsEmpty!10876 setRes!10875))

(declare-fun tp!456056 () Bool)

(declare-fun setNonEmpty!10876 () Bool)

(declare-fun setElem!10875 () Context!1586)

(assert (=> setNonEmpty!10876 (= setRes!10875 (and tp!456056 (inv!22097 setElem!10875) e!998171))))

(declare-fun setRest!10875 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10876 (= (_2!9480 (h!22219 mapDefault!8372)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10875 true) setRest!10875))))

(declare-fun b!1555721 () Bool)

(declare-fun tp!456058 () Bool)

(assert (=> b!1555721 (= e!998174 tp!456058)))

(declare-fun mapIsEmpty!8372 () Bool)

(assert (=> mapIsEmpty!8372 mapRes!8372))

(assert (= (and mapNonEmpty!8362 condMapEmpty!8372) mapIsEmpty!8372))

(assert (= (and mapNonEmpty!8362 (not condMapEmpty!8372)) mapNonEmpty!8372))

(assert (= b!1555719 b!1555718))

(assert (= (and b!1555719 condSetEmpty!10875) setIsEmpty!10875))

(assert (= (and b!1555719 (not condSetEmpty!10875)) setNonEmpty!10875))

(assert (= setNonEmpty!10875 b!1555716))

(assert (= (and mapNonEmpty!8372 ((_ is Cons!16818) mapValue!8372)) b!1555719))

(assert (= b!1555720 b!1555721))

(assert (= (and b!1555720 condSetEmpty!10876) setIsEmpty!10876))

(assert (= (and b!1555720 (not condSetEmpty!10876)) setNonEmpty!10876))

(assert (= setNonEmpty!10876 b!1555717))

(assert (= (and mapNonEmpty!8362 ((_ is Cons!16818) mapDefault!8372)) b!1555720))

(declare-fun m!1828216 () Bool)

(assert (=> mapNonEmpty!8372 m!1828216))

(declare-fun m!1828218 () Bool)

(assert (=> setNonEmpty!10875 m!1828218))

(declare-fun m!1828220 () Bool)

(assert (=> b!1555720 m!1828220))

(declare-fun m!1828222 () Bool)

(assert (=> b!1555719 m!1828222))

(declare-fun m!1828224 () Bool)

(assert (=> setNonEmpty!10876 m!1828224))

(declare-fun setNonEmpty!10877 () Bool)

(declare-fun setElem!10877 () Context!1586)

(declare-fun e!998177 () Bool)

(declare-fun tp!456063 () Bool)

(declare-fun setRes!10877 () Bool)

(assert (=> setNonEmpty!10877 (= setRes!10877 (and tp!456063 (inv!22097 setElem!10877) e!998177))))

(declare-fun setRest!10877 () (InoxSet Context!1586))

(assert (=> setNonEmpty!10877 (= (_2!9480 (h!22219 mapValue!8361)) ((_ map or) (store ((as const (Array Context!1586 Bool)) false) setElem!10877 true) setRest!10877))))

(declare-fun e!998178 () Bool)

(declare-fun b!1555722 () Bool)

(declare-fun e!998176 () Bool)

(declare-fun tp!456060 () Bool)

(assert (=> b!1555722 (= e!998176 (and (inv!22097 (_1!9479 (_1!9480 (h!22219 mapValue!8361)))) e!998178 tp_is_empty!7067 setRes!10877 tp!456060))))

(declare-fun condSetEmpty!10877 () Bool)

(assert (=> b!1555722 (= condSetEmpty!10877 (= (_2!9480 (h!22219 mapValue!8361)) ((as const (Array Context!1586 Bool)) false)))))

(declare-fun b!1555723 () Bool)

(declare-fun tp!456062 () Bool)

(assert (=> b!1555723 (= e!998178 tp!456062)))

(assert (=> mapNonEmpty!8362 (= tp!455869 e!998176)))

(declare-fun setIsEmpty!10877 () Bool)

(assert (=> setIsEmpty!10877 setRes!10877))

(declare-fun b!1555724 () Bool)

(declare-fun tp!456061 () Bool)

(assert (=> b!1555724 (= e!998177 tp!456061)))

(assert (= b!1555722 b!1555723))

(assert (= (and b!1555722 condSetEmpty!10877) setIsEmpty!10877))

(assert (= (and b!1555722 (not condSetEmpty!10877)) setNonEmpty!10877))

(assert (= setNonEmpty!10877 b!1555724))

(assert (= (and mapNonEmpty!8362 ((_ is Cons!16818) mapValue!8361)) b!1555722))

(declare-fun m!1828226 () Bool)

(assert (=> setNonEmpty!10877 m!1828226))

(declare-fun m!1828228 () Bool)

(assert (=> b!1555722 m!1828228))

(declare-fun b_lambda!48835 () Bool)

(assert (= b_lambda!48825 (or b!1555384 b_lambda!48835)))

(declare-fun bs!388699 () Bool)

(declare-fun d!461517 () Bool)

(assert (= bs!388699 (and d!461517 b!1555384)))

(declare-fun dynLambda!7457 (Int TokenValue!3037) BalanceConc!11072)

(assert (=> bs!388699 (= (dynLambda!7455 lambda!65861 lt!538548) (= (list!6493 (dynLambda!7457 (toChars!4177 (transformation!2947 rule!240)) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) lt!538548))) (list!6493 lt!538548)))))

(declare-fun b_lambda!48847 () Bool)

(assert (=> (not b_lambda!48847) (not bs!388699)))

(declare-fun t!141356 () Bool)

(declare-fun tb!87317 () Bool)

(assert (=> (and b!1555361 (= (toChars!4177 (transformation!2947 rule!240)) (toChars!4177 (transformation!2947 rule!240))) t!141356) tb!87317))

(declare-fun e!998181 () Bool)

(declare-fun tp!456066 () Bool)

(declare-fun b!1555729 () Bool)

(assert (=> b!1555729 (= e!998181 (and (inv!22089 (c!252761 (dynLambda!7457 (toChars!4177 (transformation!2947 rule!240)) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) lt!538548)))) tp!456066))))

(declare-fun result!105430 () Bool)

(assert (=> tb!87317 (= result!105430 (and (inv!22091 (dynLambda!7457 (toChars!4177 (transformation!2947 rule!240)) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) lt!538548))) e!998181))))

(assert (= tb!87317 b!1555729))

(declare-fun m!1828230 () Bool)

(assert (=> b!1555729 m!1828230))

(declare-fun m!1828232 () Bool)

(assert (=> tb!87317 m!1828232))

(assert (=> bs!388699 t!141356))

(declare-fun b_and!108525 () Bool)

(assert (= b_and!108513 (and (=> t!141356 result!105430) b_and!108525)))

(declare-fun b_lambda!48849 () Bool)

(assert (=> (not b_lambda!48849) (not bs!388699)))

(assert (=> bs!388699 t!141354))

(declare-fun b_and!108527 () Bool)

(assert (= b_and!108523 (and (=> t!141354 result!105412) b_and!108527)))

(assert (=> bs!388699 m!1828140))

(assert (=> bs!388699 m!1828140))

(declare-fun m!1828234 () Bool)

(assert (=> bs!388699 m!1828234))

(assert (=> bs!388699 m!1827884))

(assert (=> bs!388699 m!1828234))

(declare-fun m!1828236 () Bool)

(assert (=> bs!388699 m!1828236))

(assert (=> d!461471 d!461517))

(declare-fun b_lambda!48837 () Bool)

(assert (= b_lambda!48827 (or b!1555384 b_lambda!48837)))

(declare-fun bs!388700 () Bool)

(declare-fun d!461519 () Bool)

(assert (= bs!388700 (and d!461519 b!1555384)))

(assert (=> bs!388700 (= (dynLambda!7455 lambda!65861 (_1!9483 (_1!9484 lt!538554))) (= (list!6493 (dynLambda!7457 (toChars!4177 (transformation!2947 rule!240)) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) (_1!9483 (_1!9484 lt!538554))))) (list!6493 (_1!9483 (_1!9484 lt!538554)))))))

(declare-fun b_lambda!48851 () Bool)

(assert (=> (not b_lambda!48851) (not bs!388700)))

(declare-fun t!141358 () Bool)

(declare-fun tb!87319 () Bool)

(assert (=> (and b!1555361 (= (toChars!4177 (transformation!2947 rule!240)) (toChars!4177 (transformation!2947 rule!240))) t!141358) tb!87319))

(declare-fun e!998182 () Bool)

(declare-fun tp!456067 () Bool)

(declare-fun b!1555730 () Bool)

(assert (=> b!1555730 (= e!998182 (and (inv!22089 (c!252761 (dynLambda!7457 (toChars!4177 (transformation!2947 rule!240)) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) (_1!9483 (_1!9484 lt!538554)))))) tp!456067))))

(declare-fun result!105434 () Bool)

(assert (=> tb!87319 (= result!105434 (and (inv!22091 (dynLambda!7457 (toChars!4177 (transformation!2947 rule!240)) (dynLambda!7454 (toValue!4318 (transformation!2947 rule!240)) (_1!9483 (_1!9484 lt!538554))))) e!998182))))

(assert (= tb!87319 b!1555730))

(declare-fun m!1828238 () Bool)

(assert (=> b!1555730 m!1828238))

(declare-fun m!1828240 () Bool)

(assert (=> tb!87319 m!1828240))

(assert (=> bs!388700 t!141358))

(declare-fun b_and!108529 () Bool)

(assert (= b_and!108525 (and (=> t!141358 result!105434) b_and!108529)))

(declare-fun b_lambda!48853 () Bool)

(assert (=> (not b_lambda!48853) (not bs!388700)))

(assert (=> bs!388700 t!141352))

(declare-fun b_and!108531 () Bool)

(assert (= b_and!108527 (and (=> t!141352 result!105408) b_and!108531)))

(assert (=> bs!388700 m!1828010))

(assert (=> bs!388700 m!1828010))

(declare-fun m!1828242 () Bool)

(assert (=> bs!388700 m!1828242))

(assert (=> bs!388700 m!1827878))

(assert (=> bs!388700 m!1828242))

(declare-fun m!1828244 () Bool)

(assert (=> bs!388700 m!1828244))

(assert (=> d!461475 d!461519))

(declare-fun b_lambda!48839 () Bool)

(assert (= b_lambda!48823 (or (and b!1555361 b_free!41361) b_lambda!48839)))

(declare-fun b_lambda!48841 () Bool)

(assert (= b_lambda!48833 (or (and b!1555361 b_free!41361) b_lambda!48841)))

(declare-fun b_lambda!48843 () Bool)

(assert (= b_lambda!48831 (or (and b!1555361 b_free!41361) b_lambda!48843)))

(declare-fun b_lambda!48845 () Bool)

(assert (= b_lambda!48829 (or (and b!1555361 b_free!41361) b_lambda!48845)))

(check-sat b_and!108505 (not b!1555719) (not b!1555595) (not b_lambda!48835) (not d!461515) (not b!1555722) (not bm!102028) (not bm!102031) (not d!461469) (not b!1555619) (not b!1555358) (not b!1555678) (not d!461429) (not setNonEmpty!10875) (not d!461439) (not d!461459) (not b!1555597) (not b!1555729) (not d!461431) (not b_next!42063) (not b!1555500) (not b!1555471) (not d!461513) (not b!1555650) (not b!1555578) (not b!1555477) (not b!1555499) (not b!1555620) (not b!1555369) (not d!461479) (not b!1555503) (not b!1555630) (not b!1555554) (not b!1555502) (not bs!388699) (not b!1555701) (not b!1555507) (not b!1555648) (not b!1555717) (not b!1555453) (not b!1555575) (not b!1555675) (not bm!102027) (not b!1555632) (not b!1555669) b_and!108529 b_and!108503 (not b!1555673) (not d!461471) (not bs!388700) (not setNonEmpty!10859) (not setNonEmpty!10866) (not b!1555698) (not b!1555501) (not setNonEmpty!10870) (not b!1555679) (not b_lambda!48849) (not bm!102030) (not d!461467) (not b!1555606) (not bm!102026) (not bm!102025) (not bm!102024) (not d!461509) (not mapNonEmpty!8372) (not b!1555694) (not b!1555618) (not b!1555716) (not d!461505) (not b_lambda!48845) (not d!461483) (not tb!87319) (not d!461473) (not b!1555444) (not d!461433) b_and!108507 (not setNonEmpty!10852) (not b!1555515) (not b!1555646) (not b!1555440) (not b_lambda!48853) (not b_lambda!48841) (not setNonEmpty!10848) (not d!461501) (not bm!102007) (not b!1555699) (not d!461487) (not b!1555696) (not setNonEmpty!10877) (not b_next!42069) (not b_next!42061) (not b!1555454) (not b!1555651) b_and!108501 (not b_lambda!48837) (not tb!87313) (not b!1555434) (not d!461443) (not b!1555695) (not b!1555677) (not b!1555598) (not b!1555599) (not b!1555721) (not b!1555432) (not d!461441) (not b!1555559) (not tb!87317) (not b!1555524) (not b!1555700) (not b!1555609) (not d!461503) (not setNonEmpty!10860) (not mapNonEmpty!8369) (not setNonEmpty!10869) (not b!1555668) (not d!461477) (not b!1555691) (not b!1555573) (not bm!102029) (not setNonEmpty!10876) (not d!461485) b_and!108531 (not setNonEmpty!10844) (not b!1555512) (not b!1555670) (not setNonEmpty!10849) (not b!1555504) (not b!1555608) (not b!1555518) (not b!1555469) (not b!1555671) (not b!1555509) (not b!1555629) (not b!1555474) (not b!1555672) (not mapNonEmpty!8366) (not b!1555723) (not b!1555429) (not setNonEmpty!10845) (not d!461423) (not b!1555649) (not b!1555724) (not b!1555564) (not b_next!42059) (not setNonEmpty!10861) (not b_lambda!48839) (not b!1555647) (not b!1555676) (not b!1555455) (not b_next!42057) (not setNonEmpty!10867) (not b!1555634) (not b!1555388) (not setNonEmpty!10853) (not b!1555680) (not b!1555730) (not d!461435) (not b!1555693) (not b!1555697) (not b_lambda!48843) (not b!1555720) (not d!461437) (not tb!87315) (not d!461493) tp_is_empty!7067 (not b!1555594) (not b_lambda!48851) (not d!461475) (not b!1555666) (not b_next!42067) (not b_next!42055) b_and!108509 (not b!1555562) (not b!1555674) (not b!1555461) (not b!1555718) (not d!461455) (not b!1555692) (not b_lambda!48847) (not b!1555438) (not d!461463) (not setNonEmpty!10868) (not b!1555633) (not b!1555506) (not b!1555505) (not b!1555667) (not b!1555436) (not b!1555631) (not b_next!42065) (not b!1555475) (not b!1555596) (not setNonEmpty!10858) (not b!1555607) b_and!108515)
(check-sat b_and!108505 (not b_next!42063) b_and!108507 (not b_next!42069) b_and!108531 (not b_next!42059) (not b_next!42057) b_and!108529 b_and!108503 (not b_next!42061) b_and!108501 (not b_next!42067) (not b_next!42055) b_and!108509 (not b_next!42065) b_and!108515)

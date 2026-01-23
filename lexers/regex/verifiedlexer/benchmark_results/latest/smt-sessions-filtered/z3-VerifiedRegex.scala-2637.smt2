; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142784 () Bool)

(assert start!142784)

(declare-fun b!1535880 () Bool)

(declare-fun b_free!39811 () Bool)

(declare-fun b_next!40515 () Bool)

(assert (=> b!1535880 (= b_free!39811 (not b_next!40515))))

(declare-fun tp!442797 () Bool)

(declare-fun b_and!106689 () Bool)

(assert (=> b!1535880 (= tp!442797 b_and!106689)))

(declare-fun b!1535900 () Bool)

(declare-fun b_free!39813 () Bool)

(declare-fun b_next!40517 () Bool)

(assert (=> b!1535900 (= b_free!39813 (not b_next!40517))))

(declare-fun tp!442795 () Bool)

(declare-fun b_and!106691 () Bool)

(assert (=> b!1535900 (= tp!442795 b_and!106691)))

(declare-fun b!1535901 () Bool)

(declare-fun b_free!39815 () Bool)

(declare-fun b_next!40519 () Bool)

(assert (=> b!1535901 (= b_free!39815 (not b_next!40519))))

(declare-fun tp!442819 () Bool)

(declare-fun b_and!106693 () Bool)

(assert (=> b!1535901 (= tp!442819 b_and!106693)))

(declare-fun b!1535871 () Bool)

(declare-fun b_free!39817 () Bool)

(declare-fun b_next!40521 () Bool)

(assert (=> b!1535871 (= b_free!39817 (not b_next!40521))))

(declare-fun tp!442814 () Bool)

(declare-fun b_and!106695 () Bool)

(assert (=> b!1535871 (= tp!442814 b_and!106695)))

(declare-fun b!1535887 () Bool)

(declare-fun b_free!39819 () Bool)

(declare-fun b_next!40523 () Bool)

(assert (=> b!1535887 (= b_free!39819 (not b_next!40523))))

(declare-fun tp!442803 () Bool)

(declare-fun b_and!106697 () Bool)

(assert (=> b!1535887 (= tp!442803 b_and!106697)))

(declare-fun b!1535874 () Bool)

(declare-fun b_free!39821 () Bool)

(declare-fun b_next!40525 () Bool)

(assert (=> b!1535874 (= b_free!39821 (not b_next!40525))))

(declare-fun tp!442816 () Bool)

(declare-fun b_and!106699 () Bool)

(assert (=> b!1535874 (= tp!442816 b_and!106699)))

(declare-fun b!1535872 () Bool)

(declare-fun b_free!39823 () Bool)

(declare-fun b_next!40527 () Bool)

(assert (=> b!1535872 (= b_free!39823 (not b_next!40527))))

(declare-fun tp!442811 () Bool)

(declare-fun b_and!106701 () Bool)

(assert (=> b!1535872 (= tp!442811 b_and!106701)))

(declare-fun b_free!39825 () Bool)

(declare-fun b_next!40529 () Bool)

(assert (=> b!1535872 (= b_free!39825 (not b_next!40529))))

(declare-fun tp!442799 () Bool)

(declare-fun b_and!106703 () Bool)

(assert (=> b!1535872 (= tp!442799 b_and!106703)))

(declare-fun b!1535869 () Bool)

(declare-fun res!688702 () Bool)

(declare-fun e!982160 () Bool)

(assert (=> b!1535869 (=> (not res!688702) (not e!982160))))

(declare-datatypes ((C!8548 0))(
  ( (C!8549 (val!4846 Int)) )
))
(declare-datatypes ((Regex!4185 0))(
  ( (ElementMatch!4185 (c!251548 C!8548)) (Concat!7138 (regOne!8882 Regex!4185) (regTwo!8882 Regex!4185)) (EmptyExpr!4185) (Star!4185 (reg!4514 Regex!4185)) (EmptyLang!4185) (Union!4185 (regOne!8883 Regex!4185) (regTwo!8883 Regex!4185)) )
))
(declare-datatypes ((List!16332 0))(
  ( (Nil!16264) (Cons!16264 (h!21665 Regex!4185) (t!140538 List!16332)) )
))
(declare-datatypes ((Context!1406 0))(
  ( (Context!1407 (exprs!1203 List!16332)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1454 0))(
  ( (tuple3!1455 (_1!8720 (InoxSet Context!1406)) (_2!8720 Int) (_3!1091 Int)) )
))
(declare-datatypes ((tuple2!15258 0))(
  ( (tuple2!15259 (_1!8721 tuple3!1454) (_2!8721 Int)) )
))
(declare-datatypes ((List!16333 0))(
  ( (Nil!16265) (Cons!16265 (h!21666 tuple2!15258) (t!140539 List!16333)) )
))
(declare-datatypes ((List!16334 0))(
  ( (Nil!16266) (Cons!16266 (h!21667 C!8548) (t!140540 List!16334)) )
))
(declare-datatypes ((IArray!10961 0))(
  ( (IArray!10962 (innerList!5538 List!16334)) )
))
(declare-datatypes ((array!5414 0))(
  ( (array!5415 (arr!2408 (Array (_ BitVec 32) (_ BitVec 64))) (size!13152 (_ BitVec 32))) )
))
(declare-datatypes ((array!5416 0))(
  ( (array!5417 (arr!2409 (Array (_ BitVec 32) List!16333)) (size!13153 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3096 0))(
  ( (LongMapFixedSize!3097 (defaultEntry!1908 Int) (mask!4729 (_ BitVec 32)) (extraKeys!1795 (_ BitVec 32)) (zeroValue!1805 List!16333) (minValue!1805 List!16333) (_size!3177 (_ BitVec 32)) (_keys!1842 array!5414) (_values!1827 array!5416) (_vacant!1609 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1492 0))(
  ( (HashableExt!1491 (__x!10283 Int)) )
))
(declare-datatypes ((Cell!6077 0))(
  ( (Cell!6078 (v!23076 LongMapFixedSize!3096)) )
))
(declare-datatypes ((MutLongMap!1548 0))(
  ( (LongMap!1548 (underlying!3305 Cell!6077)) (MutLongMapExt!1547 (__x!10284 Int)) )
))
(declare-datatypes ((Cell!6079 0))(
  ( (Cell!6080 (v!23077 MutLongMap!1548)) )
))
(declare-datatypes ((MutableMap!1492 0))(
  ( (MutableMapExt!1491 (__x!10285 Int)) (HashMap!1492 (underlying!3306 Cell!6079) (hashF!3411 Hashable!1492) (_size!3178 (_ BitVec 32)) (defaultValue!1652 Int)) )
))
(declare-datatypes ((Conc!5478 0))(
  ( (Node!5478 (left!13429 Conc!5478) (right!13759 Conc!5478) (csize!11186 Int) (cheight!5689 Int)) (Leaf!8116 (xs!8278 IArray!10961) (csize!11187 Int)) (Empty!5478) )
))
(declare-datatypes ((BalanceConc!10898 0))(
  ( (BalanceConc!10899 (c!251549 Conc!5478)) )
))
(declare-datatypes ((CacheFurthestNullable!320 0))(
  ( (CacheFurthestNullable!321 (cache!1873 MutableMap!1492) (totalInput!2348 BalanceConc!10898)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!320)

(declare-fun valid!1264 (CacheFurthestNullable!320) Bool)

(assert (=> b!1535869 (= res!688702 (valid!1264 cacheFurthestNullable!81))))

(declare-fun b!1535870 () Bool)

(declare-fun e!982158 () Bool)

(declare-fun e!982141 () Bool)

(assert (=> b!1535870 (= e!982158 e!982141)))

(declare-fun e!982155 () Bool)

(declare-fun e!982137 () Bool)

(assert (=> b!1535871 (= e!982155 (and e!982137 tp!442814))))

(declare-fun e!982157 () Bool)

(assert (=> b!1535872 (= e!982157 (and tp!442811 tp!442799))))

(declare-fun b!1535873 () Bool)

(declare-fun e!982149 () Bool)

(declare-fun e!982150 () Bool)

(declare-fun lt!533239 () MutLongMap!1548)

(get-info :version)

(assert (=> b!1535873 (= e!982149 (and e!982150 ((_ is LongMap!1548) lt!533239)))))

(assert (=> b!1535873 (= lt!533239 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))

(declare-fun e!982161 () Bool)

(assert (=> b!1535874 (= e!982161 (and e!982149 tp!442816))))

(declare-fun mapNonEmpty!7347 () Bool)

(declare-fun mapRes!7349 () Bool)

(declare-fun tp!442802 () Bool)

(declare-fun tp!442793 () Bool)

(assert (=> mapNonEmpty!7347 (= mapRes!7349 (and tp!442802 tp!442793))))

(declare-fun mapKey!7349 () (_ BitVec 32))

(declare-datatypes ((tuple2!15260 0))(
  ( (tuple2!15261 (_1!8722 Context!1406) (_2!8722 C!8548)) )
))
(declare-datatypes ((tuple2!15262 0))(
  ( (tuple2!15263 (_1!8723 tuple2!15260) (_2!8723 (InoxSet Context!1406))) )
))
(declare-datatypes ((List!16335 0))(
  ( (Nil!16267) (Cons!16267 (h!21668 tuple2!15262) (t!140541 List!16335)) )
))
(declare-datatypes ((array!5418 0))(
  ( (array!5419 (arr!2410 (Array (_ BitVec 32) List!16335)) (size!13154 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3098 0))(
  ( (LongMapFixedSize!3099 (defaultEntry!1909 Int) (mask!4730 (_ BitVec 32)) (extraKeys!1796 (_ BitVec 32)) (zeroValue!1806 List!16335) (minValue!1806 List!16335) (_size!3179 (_ BitVec 32)) (_keys!1843 array!5414) (_values!1828 array!5418) (_vacant!1610 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6081 0))(
  ( (Cell!6082 (v!23078 LongMapFixedSize!3098)) )
))
(declare-datatypes ((MutLongMap!1549 0))(
  ( (LongMap!1549 (underlying!3307 Cell!6081)) (MutLongMapExt!1548 (__x!10286 Int)) )
))
(declare-datatypes ((Cell!6083 0))(
  ( (Cell!6084 (v!23079 MutLongMap!1549)) )
))
(declare-datatypes ((Hashable!1493 0))(
  ( (HashableExt!1492 (__x!10287 Int)) )
))
(declare-datatypes ((MutableMap!1493 0))(
  ( (MutableMapExt!1492 (__x!10288 Int)) (HashMap!1493 (underlying!3308 Cell!6083) (hashF!3412 Hashable!1493) (_size!3180 (_ BitVec 32)) (defaultValue!1653 Int)) )
))
(declare-datatypes ((CacheUp!894 0))(
  ( (CacheUp!895 (cache!1874 MutableMap!1493)) )
))
(declare-fun cacheUp!695 () CacheUp!894)

(declare-fun mapValue!7348 () List!16335)

(declare-fun mapRest!7347 () (Array (_ BitVec 32) List!16335))

(assert (=> mapNonEmpty!7347 (= (arr!2410 (_values!1828 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) (store mapRest!7347 mapKey!7349 mapValue!7348))))

(declare-fun b!1535875 () Bool)

(declare-fun e!982152 () Bool)

(declare-fun e!982147 () Bool)

(assert (=> b!1535875 (= e!982152 e!982147)))

(declare-fun b!1535876 () Bool)

(declare-fun e!982156 () Bool)

(assert (=> b!1535876 (= e!982150 e!982156)))

(declare-fun b!1535877 () Bool)

(declare-fun e!982128 () Bool)

(declare-fun input!1460 () BalanceConc!10898)

(declare-fun tp!442818 () Bool)

(declare-fun inv!21530 (Conc!5478) Bool)

(assert (=> b!1535877 (= e!982128 (and (inv!21530 (c!251549 input!1460)) tp!442818))))

(declare-fun b!1535878 () Bool)

(declare-fun e!982148 () Bool)

(declare-fun tp!442796 () Bool)

(assert (=> b!1535878 (= e!982148 (and (inv!21530 (c!251549 (totalInput!2348 cacheFurthestNullable!81))) tp!442796))))

(declare-fun b!1535879 () Bool)

(declare-fun e!982153 () Bool)

(declare-fun tp!442810 () Bool)

(assert (=> b!1535879 (= e!982153 (and tp!442810 mapRes!7349))))

(declare-fun condMapEmpty!7348 () Bool)

(declare-fun mapDefault!7348 () List!16335)

(assert (=> b!1535879 (= condMapEmpty!7348 (= (arr!2410 (_values!1828 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16335)) mapDefault!7348)))))

(declare-fun mapNonEmpty!7348 () Bool)

(declare-fun mapRes!7348 () Bool)

(declare-fun tp!442805 () Bool)

(declare-fun tp!442809 () Bool)

(assert (=> mapNonEmpty!7348 (= mapRes!7348 (and tp!442805 tp!442809))))

(declare-fun mapKey!7348 () (_ BitVec 32))

(declare-datatypes ((tuple3!1456 0))(
  ( (tuple3!1457 (_1!8724 Regex!4185) (_2!8724 Context!1406) (_3!1092 C!8548)) )
))
(declare-datatypes ((tuple2!15264 0))(
  ( (tuple2!15265 (_1!8725 tuple3!1456) (_2!8725 (InoxSet Context!1406))) )
))
(declare-datatypes ((List!16336 0))(
  ( (Nil!16268) (Cons!16268 (h!21669 tuple2!15264) (t!140542 List!16336)) )
))
(declare-fun mapValue!7349 () List!16336)

(declare-datatypes ((array!5420 0))(
  ( (array!5421 (arr!2411 (Array (_ BitVec 32) List!16336)) (size!13155 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3100 0))(
  ( (LongMapFixedSize!3101 (defaultEntry!1910 Int) (mask!4731 (_ BitVec 32)) (extraKeys!1797 (_ BitVec 32)) (zeroValue!1807 List!16336) (minValue!1807 List!16336) (_size!3181 (_ BitVec 32)) (_keys!1844 array!5414) (_values!1829 array!5420) (_vacant!1611 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6085 0))(
  ( (Cell!6086 (v!23080 LongMapFixedSize!3100)) )
))
(declare-datatypes ((MutLongMap!1550 0))(
  ( (LongMap!1550 (underlying!3309 Cell!6085)) (MutLongMapExt!1549 (__x!10289 Int)) )
))
(declare-datatypes ((Cell!6087 0))(
  ( (Cell!6088 (v!23081 MutLongMap!1550)) )
))
(declare-datatypes ((Hashable!1494 0))(
  ( (HashableExt!1493 (__x!10290 Int)) )
))
(declare-datatypes ((MutableMap!1494 0))(
  ( (MutableMapExt!1493 (__x!10291 Int)) (HashMap!1494 (underlying!3310 Cell!6087) (hashF!3413 Hashable!1494) (_size!3182 (_ BitVec 32)) (defaultValue!1654 Int)) )
))
(declare-datatypes ((CacheDown!898 0))(
  ( (CacheDown!899 (cache!1875 MutableMap!1494)) )
))
(declare-fun cacheDown!708 () CacheDown!898)

(declare-fun mapRest!7348 () (Array (_ BitVec 32) List!16336))

(assert (=> mapNonEmpty!7348 (= (arr!2411 (_values!1829 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) (store mapRest!7348 mapKey!7348 mapValue!7349))))

(declare-fun tp!442798 () Bool)

(declare-fun tp!442806 () Bool)

(declare-fun array_inv!1737 (array!5414) Bool)

(declare-fun array_inv!1738 (array!5418) Bool)

(assert (=> b!1535880 (= e!982141 (and tp!442797 tp!442798 tp!442806 (array_inv!1737 (_keys!1843 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) (array_inv!1738 (_values!1828 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) e!982153))))

(declare-fun mapIsEmpty!7347 () Bool)

(declare-fun mapRes!7347 () Bool)

(assert (=> mapIsEmpty!7347 mapRes!7347))

(declare-fun b!1535881 () Bool)

(declare-fun e!982143 () Bool)

(assert (=> b!1535881 (= e!982160 (not e!982143))))

(declare-fun res!688699 () Bool)

(assert (=> b!1535881 (=> res!688699 e!982143)))

(declare-datatypes ((List!16337 0))(
  ( (Nil!16269) (Cons!16269 (h!21670 (_ BitVec 16)) (t!140543 List!16337)) )
))
(declare-datatypes ((TokenValue!2953 0))(
  ( (FloatLiteralValue!5906 (text!21116 List!16337)) (TokenValueExt!2952 (__x!10292 Int)) (Broken!14765 (value!91235 List!16337)) (Object!3020) (End!2953) (Def!2953) (Underscore!2953) (Match!2953) (Else!2953) (Error!2953) (Case!2953) (If!2953) (Extends!2953) (Abstract!2953) (Class!2953) (Val!2953) (DelimiterValue!5906 (del!3013 List!16337)) (KeywordValue!2959 (value!91236 List!16337)) (CommentValue!5906 (value!91237 List!16337)) (WhitespaceValue!5906 (value!91238 List!16337)) (IndentationValue!2953 (value!91239 List!16337)) (String!19040) (Int32!2953) (Broken!14766 (value!91240 List!16337)) (Boolean!2954) (Unit!25823) (OperatorValue!2956 (op!3013 List!16337)) (IdentifierValue!5906 (value!91241 List!16337)) (IdentifierValue!5907 (value!91242 List!16337)) (WhitespaceValue!5907 (value!91243 List!16337)) (True!5906) (False!5906) (Broken!14767 (value!91244 List!16337)) (Broken!14768 (value!91245 List!16337)) (True!5907) (RightBrace!2953) (RightBracket!2953) (Colon!2953) (Null!2953) (Comma!2953) (LeftBracket!2953) (False!5907) (LeftBrace!2953) (ImaginaryLiteralValue!2953 (text!21117 List!16337)) (StringLiteralValue!8859 (value!91246 List!16337)) (EOFValue!2953 (value!91247 List!16337)) (IdentValue!2953 (value!91248 List!16337)) (DelimiterValue!5907 (value!91249 List!16337)) (DedentValue!2953 (value!91250 List!16337)) (NewLineValue!2953 (value!91251 List!16337)) (IntegerValue!8859 (value!91252 (_ BitVec 32)) (text!21118 List!16337)) (IntegerValue!8860 (value!91253 Int) (text!21119 List!16337)) (Times!2953) (Or!2953) (Equal!2953) (Minus!2953) (Broken!14769 (value!91254 List!16337)) (And!2953) (Div!2953) (LessEqual!2953) (Mod!2953) (Concat!7139) (Not!2953) (Plus!2953) (SpaceValue!2953 (value!91255 List!16337)) (IntegerValue!8861 (value!91256 Int) (text!21120 List!16337)) (StringLiteralValue!8860 (text!21121 List!16337)) (FloatLiteralValue!5907 (text!21122 List!16337)) (BytesLiteralValue!2953 (value!91257 List!16337)) (CommentValue!5907 (value!91258 List!16337)) (StringLiteralValue!8861 (value!91259 List!16337)) (ErrorTokenValue!2953 (msg!3014 List!16337)) )
))
(declare-datatypes ((String!19041 0))(
  ( (String!19042 (value!91260 String)) )
))
(declare-datatypes ((TokenValueInjection!5566 0))(
  ( (TokenValueInjection!5567 (toValue!4224 Int) (toChars!4083 Int)) )
))
(declare-datatypes ((Rule!5526 0))(
  ( (Rule!5527 (regex!2863 Regex!4185) (tag!3127 String!19041) (isSeparator!2863 Bool) (transformation!2863 TokenValueInjection!5566)) )
))
(declare-datatypes ((List!16338 0))(
  ( (Nil!16270) (Cons!16270 (h!21671 Rule!5526) (t!140544 List!16338)) )
))
(declare-fun rulesArg!359 () List!16338)

(assert (=> b!1535881 (= res!688699 (or (and ((_ is Cons!16270) rulesArg!359) ((_ is Nil!16270) (t!140544 rulesArg!359))) (not ((_ is Cons!16270) rulesArg!359))))))

(declare-fun lt!533236 () List!16334)

(declare-fun isPrefix!1230 (List!16334 List!16334) Bool)

(assert (=> b!1535881 (isPrefix!1230 lt!533236 lt!533236)))

(declare-datatypes ((Unit!25824 0))(
  ( (Unit!25825) )
))
(declare-fun lt!533238 () Unit!25824)

(declare-fun lemmaIsPrefixRefl!860 (List!16334 List!16334) Unit!25824)

(assert (=> b!1535881 (= lt!533238 (lemmaIsPrefixRefl!860 lt!533236 lt!533236))))

(declare-fun mapNonEmpty!7349 () Bool)

(declare-fun tp!442801 () Bool)

(declare-fun tp!442815 () Bool)

(assert (=> mapNonEmpty!7349 (= mapRes!7347 (and tp!442801 tp!442815))))

(declare-fun mapValue!7347 () List!16333)

(declare-fun mapRest!7349 () (Array (_ BitVec 32) List!16333))

(declare-fun mapKey!7347 () (_ BitVec 32))

(assert (=> mapNonEmpty!7349 (= (arr!2409 (_values!1827 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) (store mapRest!7349 mapKey!7347 mapValue!7347))))

(declare-fun b!1535882 () Bool)

(declare-fun e!982138 () Bool)

(declare-fun e!982142 () Bool)

(declare-fun tp!442820 () Bool)

(assert (=> b!1535882 (= e!982138 (and e!982142 tp!442820))))

(declare-fun b!1535883 () Bool)

(declare-fun e!982146 () Bool)

(assert (=> b!1535883 (= e!982146 e!982155)))

(declare-fun b!1535884 () Bool)

(declare-fun e!982151 () Bool)

(declare-fun tp!442807 () Bool)

(assert (=> b!1535884 (= e!982151 (and tp!442807 mapRes!7348))))

(declare-fun condMapEmpty!7347 () Bool)

(declare-fun mapDefault!7349 () List!16336)

(assert (=> b!1535884 (= condMapEmpty!7347 (= (arr!2411 (_values!1829 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16336)) mapDefault!7349)))))

(declare-fun b!1535885 () Bool)

(declare-fun res!688703 () Bool)

(declare-fun e!982133 () Bool)

(assert (=> b!1535885 (=> (not res!688703) (not e!982133))))

(declare-fun isEmpty!9998 (List!16338) Bool)

(assert (=> b!1535885 (= res!688703 (not (isEmpty!9998 rulesArg!359)))))

(declare-fun b!1535886 () Bool)

(declare-fun res!688700 () Bool)

(assert (=> b!1535886 (=> (not res!688700) (not e!982160))))

(declare-fun valid!1265 (CacheUp!894) Bool)

(assert (=> b!1535886 (= res!688700 (valid!1265 cacheUp!695))))

(declare-fun e!982130 () Bool)

(declare-fun tp!442813 () Bool)

(declare-fun e!982136 () Bool)

(declare-fun tp!442808 () Bool)

(declare-fun array_inv!1739 (array!5416) Bool)

(assert (=> b!1535887 (= e!982136 (and tp!442803 tp!442813 tp!442808 (array_inv!1737 (_keys!1842 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) (array_inv!1739 (_values!1827 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) e!982130))))

(declare-fun b!1535888 () Bool)

(assert (=> b!1535888 (= e!982133 e!982160)))

(declare-fun res!688698 () Bool)

(assert (=> b!1535888 (=> (not res!688698) (not e!982160))))

(declare-fun totalInput!496 () BalanceConc!10898)

(declare-fun isSuffix!317 (List!16334 List!16334) Bool)

(declare-fun list!6408 (BalanceConc!10898) List!16334)

(assert (=> b!1535888 (= res!688698 (isSuffix!317 lt!533236 (list!6408 totalInput!496)))))

(assert (=> b!1535888 (= lt!533236 (list!6408 input!1460))))

(declare-fun b!1535889 () Bool)

(declare-fun res!688701 () Bool)

(assert (=> b!1535889 (=> (not res!688701) (not e!982133))))

(declare-datatypes ((LexerInterface!2515 0))(
  ( (LexerInterfaceExt!2512 (__x!10293 Int)) (Lexer!2513) )
))
(declare-fun thiss!15733 () LexerInterface!2515)

(declare-fun rulesValidInductive!870 (LexerInterface!2515 List!16338) Bool)

(assert (=> b!1535889 (= res!688701 (rulesValidInductive!870 thiss!15733 rulesArg!359))))

(declare-fun b!1535890 () Bool)

(declare-fun ruleValid!643 (LexerInterface!2515 Rule!5526) Bool)

(assert (=> b!1535890 (= e!982143 (ruleValid!643 thiss!15733 (h!21671 rulesArg!359)))))

(declare-fun b!1535891 () Bool)

(declare-fun e!982140 () Bool)

(declare-fun lt!533240 () MutLongMap!1549)

(assert (=> b!1535891 (= e!982137 (and e!982140 ((_ is LongMap!1549) lt!533240)))))

(assert (=> b!1535891 (= lt!533240 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))

(declare-fun b!1535892 () Bool)

(declare-fun e!982129 () Bool)

(declare-fun inv!21531 (BalanceConc!10898) Bool)

(assert (=> b!1535892 (= e!982129 (and e!982161 (inv!21531 (totalInput!2348 cacheFurthestNullable!81)) e!982148))))

(declare-fun b!1535893 () Bool)

(declare-fun res!688706 () Bool)

(assert (=> b!1535893 (=> (not res!688706) (not e!982160))))

(declare-fun valid!1266 (CacheDown!898) Bool)

(assert (=> b!1535893 (= res!688706 (valid!1266 cacheDown!708))))

(declare-fun res!688704 () Bool)

(assert (=> start!142784 (=> (not res!688704) (not e!982133))))

(assert (=> start!142784 (= res!688704 ((_ is Lexer!2513) thiss!15733))))

(assert (=> start!142784 e!982133))

(declare-fun inv!21532 (CacheUp!894) Bool)

(assert (=> start!142784 (and (inv!21532 cacheUp!695) e!982146)))

(assert (=> start!142784 (and (inv!21531 input!1460) e!982128)))

(declare-fun e!982139 () Bool)

(declare-fun inv!21533 (CacheDown!898) Bool)

(assert (=> start!142784 (and (inv!21533 cacheDown!708) e!982139)))

(assert (=> start!142784 true))

(declare-fun e!982131 () Bool)

(assert (=> start!142784 (and (inv!21531 totalInput!496) e!982131)))

(assert (=> start!142784 e!982138))

(declare-fun inv!21534 (CacheFurthestNullable!320) Bool)

(assert (=> start!142784 (and (inv!21534 cacheFurthestNullable!81) e!982129)))

(declare-fun b!1535894 () Bool)

(declare-fun e!982144 () Bool)

(declare-fun e!982135 () Bool)

(declare-fun lt!533237 () MutLongMap!1550)

(assert (=> b!1535894 (= e!982144 (and e!982135 ((_ is LongMap!1550) lt!533237)))))

(assert (=> b!1535894 (= lt!533237 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))

(declare-fun b!1535895 () Bool)

(assert (=> b!1535895 (= e!982140 e!982158)))

(declare-fun b!1535896 () Bool)

(declare-fun tp!442804 () Bool)

(assert (=> b!1535896 (= e!982130 (and tp!442804 mapRes!7347))))

(declare-fun condMapEmpty!7349 () Bool)

(declare-fun mapDefault!7347 () List!16333)

(assert (=> b!1535896 (= condMapEmpty!7349 (= (arr!2409 (_values!1827 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16333)) mapDefault!7347)))))

(declare-fun b!1535897 () Bool)

(declare-fun e!982145 () Bool)

(assert (=> b!1535897 (= e!982139 e!982145)))

(declare-fun b!1535898 () Bool)

(declare-fun res!688705 () Bool)

(assert (=> b!1535898 (=> (not res!688705) (not e!982160))))

(assert (=> b!1535898 (= res!688705 (= (totalInput!2348 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1535899 () Bool)

(assert (=> b!1535899 (= e!982135 e!982152)))

(declare-fun mapIsEmpty!7348 () Bool)

(assert (=> mapIsEmpty!7348 mapRes!7349))

(assert (=> b!1535900 (= e!982145 (and e!982144 tp!442795))))

(declare-fun tp!442817 () Bool)

(declare-fun tp!442800 () Bool)

(declare-fun array_inv!1740 (array!5420) Bool)

(assert (=> b!1535901 (= e!982147 (and tp!442819 tp!442800 tp!442817 (array_inv!1737 (_keys!1844 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) (array_inv!1740 (_values!1829 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) e!982151))))

(declare-fun b!1535902 () Bool)

(assert (=> b!1535902 (= e!982156 e!982136)))

(declare-fun b!1535903 () Bool)

(declare-fun tp!442812 () Bool)

(declare-fun inv!21529 (String!19041) Bool)

(declare-fun inv!21535 (TokenValueInjection!5566) Bool)

(assert (=> b!1535903 (= e!982142 (and tp!442812 (inv!21529 (tag!3127 (h!21671 rulesArg!359))) (inv!21535 (transformation!2863 (h!21671 rulesArg!359))) e!982157))))

(declare-fun b!1535904 () Bool)

(declare-fun tp!442794 () Bool)

(assert (=> b!1535904 (= e!982131 (and (inv!21530 (c!251549 totalInput!496)) tp!442794))))

(declare-fun mapIsEmpty!7349 () Bool)

(assert (=> mapIsEmpty!7349 mapRes!7348))

(assert (= (and start!142784 res!688704) b!1535889))

(assert (= (and b!1535889 res!688701) b!1535885))

(assert (= (and b!1535885 res!688703) b!1535888))

(assert (= (and b!1535888 res!688698) b!1535886))

(assert (= (and b!1535886 res!688700) b!1535893))

(assert (= (and b!1535893 res!688706) b!1535869))

(assert (= (and b!1535869 res!688702) b!1535898))

(assert (= (and b!1535898 res!688705) b!1535881))

(assert (= (and b!1535881 (not res!688699)) b!1535890))

(assert (= (and b!1535879 condMapEmpty!7348) mapIsEmpty!7348))

(assert (= (and b!1535879 (not condMapEmpty!7348)) mapNonEmpty!7347))

(assert (= b!1535880 b!1535879))

(assert (= b!1535870 b!1535880))

(assert (= b!1535895 b!1535870))

(assert (= (and b!1535891 ((_ is LongMap!1549) (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))) b!1535895))

(assert (= b!1535871 b!1535891))

(assert (= (and b!1535883 ((_ is HashMap!1493) (cache!1874 cacheUp!695))) b!1535871))

(assert (= start!142784 b!1535883))

(assert (= start!142784 b!1535877))

(assert (= (and b!1535884 condMapEmpty!7347) mapIsEmpty!7349))

(assert (= (and b!1535884 (not condMapEmpty!7347)) mapNonEmpty!7348))

(assert (= b!1535901 b!1535884))

(assert (= b!1535875 b!1535901))

(assert (= b!1535899 b!1535875))

(assert (= (and b!1535894 ((_ is LongMap!1550) (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))) b!1535899))

(assert (= b!1535900 b!1535894))

(assert (= (and b!1535897 ((_ is HashMap!1494) (cache!1875 cacheDown!708))) b!1535900))

(assert (= start!142784 b!1535897))

(assert (= start!142784 b!1535904))

(assert (= b!1535903 b!1535872))

(assert (= b!1535882 b!1535903))

(assert (= (and start!142784 ((_ is Cons!16270) rulesArg!359)) b!1535882))

(assert (= (and b!1535896 condMapEmpty!7349) mapIsEmpty!7347))

(assert (= (and b!1535896 (not condMapEmpty!7349)) mapNonEmpty!7349))

(assert (= b!1535887 b!1535896))

(assert (= b!1535902 b!1535887))

(assert (= b!1535876 b!1535902))

(assert (= (and b!1535873 ((_ is LongMap!1548) (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))) b!1535876))

(assert (= b!1535874 b!1535873))

(assert (= (and b!1535892 ((_ is HashMap!1492) (cache!1873 cacheFurthestNullable!81))) b!1535874))

(assert (= b!1535892 b!1535878))

(assert (= start!142784 b!1535892))

(declare-fun m!1811342 () Bool)

(assert (=> b!1535881 m!1811342))

(declare-fun m!1811344 () Bool)

(assert (=> b!1535881 m!1811344))

(declare-fun m!1811346 () Bool)

(assert (=> b!1535885 m!1811346))

(declare-fun m!1811348 () Bool)

(assert (=> b!1535890 m!1811348))

(declare-fun m!1811350 () Bool)

(assert (=> b!1535903 m!1811350))

(declare-fun m!1811352 () Bool)

(assert (=> b!1535903 m!1811352))

(declare-fun m!1811354 () Bool)

(assert (=> start!142784 m!1811354))

(declare-fun m!1811356 () Bool)

(assert (=> start!142784 m!1811356))

(declare-fun m!1811358 () Bool)

(assert (=> start!142784 m!1811358))

(declare-fun m!1811360 () Bool)

(assert (=> start!142784 m!1811360))

(declare-fun m!1811362 () Bool)

(assert (=> start!142784 m!1811362))

(declare-fun m!1811364 () Bool)

(assert (=> b!1535904 m!1811364))

(declare-fun m!1811366 () Bool)

(assert (=> b!1535889 m!1811366))

(declare-fun m!1811368 () Bool)

(assert (=> b!1535877 m!1811368))

(declare-fun m!1811370 () Bool)

(assert (=> b!1535888 m!1811370))

(assert (=> b!1535888 m!1811370))

(declare-fun m!1811372 () Bool)

(assert (=> b!1535888 m!1811372))

(declare-fun m!1811374 () Bool)

(assert (=> b!1535888 m!1811374))

(declare-fun m!1811376 () Bool)

(assert (=> b!1535892 m!1811376))

(declare-fun m!1811378 () Bool)

(assert (=> b!1535886 m!1811378))

(declare-fun m!1811380 () Bool)

(assert (=> b!1535893 m!1811380))

(declare-fun m!1811382 () Bool)

(assert (=> mapNonEmpty!7349 m!1811382))

(declare-fun m!1811384 () Bool)

(assert (=> mapNonEmpty!7347 m!1811384))

(declare-fun m!1811386 () Bool)

(assert (=> b!1535887 m!1811386))

(declare-fun m!1811388 () Bool)

(assert (=> b!1535887 m!1811388))

(declare-fun m!1811390 () Bool)

(assert (=> b!1535869 m!1811390))

(declare-fun m!1811392 () Bool)

(assert (=> b!1535878 m!1811392))

(declare-fun m!1811394 () Bool)

(assert (=> mapNonEmpty!7348 m!1811394))

(declare-fun m!1811396 () Bool)

(assert (=> b!1535880 m!1811396))

(declare-fun m!1811398 () Bool)

(assert (=> b!1535880 m!1811398))

(declare-fun m!1811400 () Bool)

(assert (=> b!1535901 m!1811400))

(declare-fun m!1811402 () Bool)

(assert (=> b!1535901 m!1811402))

(check-sat (not mapNonEmpty!7349) b_and!106697 (not mapNonEmpty!7348) b_and!106699 (not b!1535886) (not b!1535887) (not b!1535893) b_and!106695 (not b_next!40517) b_and!106703 (not b!1535884) (not mapNonEmpty!7347) (not b!1535877) (not b_next!40515) (not b_next!40519) (not b!1535890) (not b_next!40525) (not b!1535881) (not b!1535896) (not b!1535904) (not b!1535889) (not b_next!40523) b_and!106693 (not b!1535878) (not b_next!40521) (not b!1535892) (not b!1535880) b_and!106691 (not b!1535879) (not start!142784) (not b_next!40529) b_and!106701 (not b!1535885) b_and!106689 (not b_next!40527) (not b!1535903) (not b!1535888) (not b!1535901) (not b!1535882) (not b!1535869))
(check-sat (not b_next!40525) b_and!106697 b_and!106699 b_and!106695 (not b_next!40521) b_and!106691 (not b_next!40517) b_and!106703 (not b_next!40515) (not b_next!40519) (not b_next!40523) b_and!106693 (not b_next!40529) b_and!106701 b_and!106689 (not b_next!40527))
(get-model)

(declare-fun d!458172 () Bool)

(declare-fun e!982169 () Bool)

(assert (=> d!458172 e!982169))

(declare-fun res!688719 () Bool)

(assert (=> d!458172 (=> res!688719 e!982169)))

(declare-fun lt!533243 () Bool)

(assert (=> d!458172 (= res!688719 (not lt!533243))))

(declare-fun e!982170 () Bool)

(assert (=> d!458172 (= lt!533243 e!982170)))

(declare-fun res!688722 () Bool)

(assert (=> d!458172 (=> res!688722 e!982170)))

(assert (=> d!458172 (= res!688722 ((_ is Nil!16266) lt!533236))))

(assert (=> d!458172 (= (isPrefix!1230 lt!533236 lt!533236) lt!533243)))

(declare-fun b!1535913 () Bool)

(declare-fun e!982168 () Bool)

(assert (=> b!1535913 (= e!982170 e!982168)))

(declare-fun res!688720 () Bool)

(assert (=> b!1535913 (=> (not res!688720) (not e!982168))))

(assert (=> b!1535913 (= res!688720 (not ((_ is Nil!16266) lt!533236)))))

(declare-fun b!1535916 () Bool)

(declare-fun size!13156 (List!16334) Int)

(assert (=> b!1535916 (= e!982169 (>= (size!13156 lt!533236) (size!13156 lt!533236)))))

(declare-fun b!1535915 () Bool)

(declare-fun tail!2193 (List!16334) List!16334)

(assert (=> b!1535915 (= e!982168 (isPrefix!1230 (tail!2193 lt!533236) (tail!2193 lt!533236)))))

(declare-fun b!1535914 () Bool)

(declare-fun res!688721 () Bool)

(assert (=> b!1535914 (=> (not res!688721) (not e!982168))))

(declare-fun head!3098 (List!16334) C!8548)

(assert (=> b!1535914 (= res!688721 (= (head!3098 lt!533236) (head!3098 lt!533236)))))

(assert (= (and d!458172 (not res!688722)) b!1535913))

(assert (= (and b!1535913 res!688720) b!1535914))

(assert (= (and b!1535914 res!688721) b!1535915))

(assert (= (and d!458172 (not res!688719)) b!1535916))

(declare-fun m!1811404 () Bool)

(assert (=> b!1535916 m!1811404))

(assert (=> b!1535916 m!1811404))

(declare-fun m!1811406 () Bool)

(assert (=> b!1535915 m!1811406))

(assert (=> b!1535915 m!1811406))

(assert (=> b!1535915 m!1811406))

(assert (=> b!1535915 m!1811406))

(declare-fun m!1811408 () Bool)

(assert (=> b!1535915 m!1811408))

(declare-fun m!1811410 () Bool)

(assert (=> b!1535914 m!1811410))

(assert (=> b!1535914 m!1811410))

(assert (=> b!1535881 d!458172))

(declare-fun d!458174 () Bool)

(assert (=> d!458174 (isPrefix!1230 lt!533236 lt!533236)))

(declare-fun lt!533246 () Unit!25824)

(declare-fun choose!9221 (List!16334 List!16334) Unit!25824)

(assert (=> d!458174 (= lt!533246 (choose!9221 lt!533236 lt!533236))))

(assert (=> d!458174 (= (lemmaIsPrefixRefl!860 lt!533236 lt!533236) lt!533246)))

(declare-fun bs!382723 () Bool)

(assert (= bs!382723 d!458174))

(assert (=> bs!382723 m!1811342))

(declare-fun m!1811412 () Bool)

(assert (=> bs!382723 m!1811412))

(assert (=> b!1535881 d!458174))

(declare-fun d!458176 () Bool)

(assert (=> d!458176 (= (array_inv!1737 (_keys!1844 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) (bvsge (size!13152 (_keys!1844 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535901 d!458176))

(declare-fun d!458178 () Bool)

(assert (=> d!458178 (= (array_inv!1740 (_values!1829 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) (bvsge (size!13155 (_values!1829 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535901 d!458178))

(declare-fun d!458180 () Bool)

(declare-fun isBalanced!1626 (Conc!5478) Bool)

(assert (=> d!458180 (= (inv!21531 (totalInput!2348 cacheFurthestNullable!81)) (isBalanced!1626 (c!251549 (totalInput!2348 cacheFurthestNullable!81))))))

(declare-fun bs!382724 () Bool)

(assert (= bs!382724 d!458180))

(declare-fun m!1811414 () Bool)

(assert (=> bs!382724 m!1811414))

(assert (=> b!1535892 d!458180))

(declare-fun d!458182 () Bool)

(declare-fun res!688725 () Bool)

(declare-fun e!982173 () Bool)

(assert (=> d!458182 (=> (not res!688725) (not e!982173))))

(assert (=> d!458182 (= res!688725 ((_ is HashMap!1494) (cache!1875 cacheDown!708)))))

(assert (=> d!458182 (= (inv!21533 cacheDown!708) e!982173)))

(declare-fun b!1535919 () Bool)

(declare-fun validCacheMapDown!144 (MutableMap!1494) Bool)

(assert (=> b!1535919 (= e!982173 (validCacheMapDown!144 (cache!1875 cacheDown!708)))))

(assert (= (and d!458182 res!688725) b!1535919))

(declare-fun m!1811416 () Bool)

(assert (=> b!1535919 m!1811416))

(assert (=> start!142784 d!458182))

(declare-fun d!458184 () Bool)

(assert (=> d!458184 (= (inv!21531 input!1460) (isBalanced!1626 (c!251549 input!1460)))))

(declare-fun bs!382725 () Bool)

(assert (= bs!382725 d!458184))

(declare-fun m!1811418 () Bool)

(assert (=> bs!382725 m!1811418))

(assert (=> start!142784 d!458184))

(declare-fun d!458186 () Bool)

(declare-fun res!688728 () Bool)

(declare-fun e!982176 () Bool)

(assert (=> d!458186 (=> (not res!688728) (not e!982176))))

(assert (=> d!458186 (= res!688728 ((_ is HashMap!1493) (cache!1874 cacheUp!695)))))

(assert (=> d!458186 (= (inv!21532 cacheUp!695) e!982176)))

(declare-fun b!1535922 () Bool)

(declare-fun validCacheMapUp!144 (MutableMap!1493) Bool)

(assert (=> b!1535922 (= e!982176 (validCacheMapUp!144 (cache!1874 cacheUp!695)))))

(assert (= (and d!458186 res!688728) b!1535922))

(declare-fun m!1811420 () Bool)

(assert (=> b!1535922 m!1811420))

(assert (=> start!142784 d!458186))

(declare-fun d!458188 () Bool)

(assert (=> d!458188 (= (inv!21531 totalInput!496) (isBalanced!1626 (c!251549 totalInput!496)))))

(declare-fun bs!382726 () Bool)

(assert (= bs!382726 d!458188))

(declare-fun m!1811422 () Bool)

(assert (=> bs!382726 m!1811422))

(assert (=> start!142784 d!458188))

(declare-fun d!458190 () Bool)

(declare-fun res!688731 () Bool)

(declare-fun e!982179 () Bool)

(assert (=> d!458190 (=> (not res!688731) (not e!982179))))

(assert (=> d!458190 (= res!688731 ((_ is HashMap!1492) (cache!1873 cacheFurthestNullable!81)))))

(assert (=> d!458190 (= (inv!21534 cacheFurthestNullable!81) e!982179)))

(declare-fun b!1535925 () Bool)

(declare-fun validCacheMapFurthestNullable!57 (MutableMap!1492 BalanceConc!10898) Bool)

(assert (=> b!1535925 (= e!982179 (validCacheMapFurthestNullable!57 (cache!1873 cacheFurthestNullable!81) (totalInput!2348 cacheFurthestNullable!81)))))

(assert (= (and d!458190 res!688731) b!1535925))

(declare-fun m!1811424 () Bool)

(assert (=> b!1535925 m!1811424))

(assert (=> start!142784 d!458190))

(declare-fun d!458192 () Bool)

(declare-fun e!982182 () Bool)

(assert (=> d!458192 e!982182))

(declare-fun res!688734 () Bool)

(assert (=> d!458192 (=> res!688734 e!982182)))

(declare-fun lt!533249 () Bool)

(assert (=> d!458192 (= res!688734 (not lt!533249))))

(declare-fun drop!768 (List!16334 Int) List!16334)

(assert (=> d!458192 (= lt!533249 (= lt!533236 (drop!768 (list!6408 totalInput!496) (- (size!13156 (list!6408 totalInput!496)) (size!13156 lt!533236)))))))

(assert (=> d!458192 (= (isSuffix!317 lt!533236 (list!6408 totalInput!496)) lt!533249)))

(declare-fun b!1535928 () Bool)

(assert (=> b!1535928 (= e!982182 (>= (size!13156 (list!6408 totalInput!496)) (size!13156 lt!533236)))))

(assert (= (and d!458192 (not res!688734)) b!1535928))

(assert (=> d!458192 m!1811370))

(declare-fun m!1811426 () Bool)

(assert (=> d!458192 m!1811426))

(assert (=> d!458192 m!1811404))

(assert (=> d!458192 m!1811370))

(declare-fun m!1811428 () Bool)

(assert (=> d!458192 m!1811428))

(assert (=> b!1535928 m!1811370))

(assert (=> b!1535928 m!1811426))

(assert (=> b!1535928 m!1811404))

(assert (=> b!1535888 d!458192))

(declare-fun d!458194 () Bool)

(declare-fun list!6409 (Conc!5478) List!16334)

(assert (=> d!458194 (= (list!6408 totalInput!496) (list!6409 (c!251549 totalInput!496)))))

(declare-fun bs!382727 () Bool)

(assert (= bs!382727 d!458194))

(declare-fun m!1811430 () Bool)

(assert (=> bs!382727 m!1811430))

(assert (=> b!1535888 d!458194))

(declare-fun d!458196 () Bool)

(assert (=> d!458196 (= (list!6408 input!1460) (list!6409 (c!251549 input!1460)))))

(declare-fun bs!382728 () Bool)

(assert (= bs!382728 d!458196))

(declare-fun m!1811432 () Bool)

(assert (=> bs!382728 m!1811432))

(assert (=> b!1535888 d!458196))

(declare-fun d!458198 () Bool)

(assert (=> d!458198 (= (array_inv!1737 (_keys!1843 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) (bvsge (size!13152 (_keys!1843 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535880 d!458198))

(declare-fun d!458200 () Bool)

(assert (=> d!458200 (= (array_inv!1738 (_values!1828 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) (bvsge (size!13154 (_values!1828 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535880 d!458200))

(declare-fun d!458202 () Bool)

(assert (=> d!458202 true))

(declare-fun lt!533252 () Bool)

(declare-fun lambda!65224 () Int)

(declare-fun forall!3899 (List!16338 Int) Bool)

(assert (=> d!458202 (= lt!533252 (forall!3899 rulesArg!359 lambda!65224))))

(declare-fun e!982188 () Bool)

(assert (=> d!458202 (= lt!533252 e!982188)))

(declare-fun res!688740 () Bool)

(assert (=> d!458202 (=> res!688740 e!982188)))

(assert (=> d!458202 (= res!688740 (not ((_ is Cons!16270) rulesArg!359)))))

(assert (=> d!458202 (= (rulesValidInductive!870 thiss!15733 rulesArg!359) lt!533252)))

(declare-fun b!1535933 () Bool)

(declare-fun e!982187 () Bool)

(assert (=> b!1535933 (= e!982188 e!982187)))

(declare-fun res!688739 () Bool)

(assert (=> b!1535933 (=> (not res!688739) (not e!982187))))

(assert (=> b!1535933 (= res!688739 (ruleValid!643 thiss!15733 (h!21671 rulesArg!359)))))

(declare-fun b!1535934 () Bool)

(assert (=> b!1535934 (= e!982187 (rulesValidInductive!870 thiss!15733 (t!140544 rulesArg!359)))))

(assert (= (and d!458202 (not res!688740)) b!1535933))

(assert (= (and b!1535933 res!688739) b!1535934))

(declare-fun m!1811434 () Bool)

(assert (=> d!458202 m!1811434))

(assert (=> b!1535933 m!1811348))

(declare-fun m!1811436 () Bool)

(assert (=> b!1535934 m!1811436))

(assert (=> b!1535889 d!458202))

(declare-fun d!458204 () Bool)

(declare-fun res!688745 () Bool)

(declare-fun e!982191 () Bool)

(assert (=> d!458204 (=> (not res!688745) (not e!982191))))

(declare-fun validRegex!1702 (Regex!4185) Bool)

(assert (=> d!458204 (= res!688745 (validRegex!1702 (regex!2863 (h!21671 rulesArg!359))))))

(assert (=> d!458204 (= (ruleValid!643 thiss!15733 (h!21671 rulesArg!359)) e!982191)))

(declare-fun b!1535941 () Bool)

(declare-fun res!688746 () Bool)

(assert (=> b!1535941 (=> (not res!688746) (not e!982191))))

(declare-fun nullable!1262 (Regex!4185) Bool)

(assert (=> b!1535941 (= res!688746 (not (nullable!1262 (regex!2863 (h!21671 rulesArg!359)))))))

(declare-fun b!1535942 () Bool)

(assert (=> b!1535942 (= e!982191 (not (= (tag!3127 (h!21671 rulesArg!359)) (String!19042 ""))))))

(assert (= (and d!458204 res!688745) b!1535941))

(assert (= (and b!1535941 res!688746) b!1535942))

(declare-fun m!1811438 () Bool)

(assert (=> d!458204 m!1811438))

(declare-fun m!1811440 () Bool)

(assert (=> b!1535941 m!1811440))

(assert (=> b!1535890 d!458204))

(declare-fun d!458206 () Bool)

(assert (=> d!458206 (= (isEmpty!9998 rulesArg!359) ((_ is Nil!16270) rulesArg!359))))

(assert (=> b!1535885 d!458206))

(declare-fun d!458208 () Bool)

(assert (=> d!458208 (= (valid!1265 cacheUp!695) (validCacheMapUp!144 (cache!1874 cacheUp!695)))))

(declare-fun bs!382729 () Bool)

(assert (= bs!382729 d!458208))

(assert (=> bs!382729 m!1811420))

(assert (=> b!1535886 d!458208))

(declare-fun d!458210 () Bool)

(declare-fun c!251552 () Bool)

(assert (=> d!458210 (= c!251552 ((_ is Node!5478) (c!251549 (totalInput!2348 cacheFurthestNullable!81))))))

(declare-fun e!982196 () Bool)

(assert (=> d!458210 (= (inv!21530 (c!251549 (totalInput!2348 cacheFurthestNullable!81))) e!982196)))

(declare-fun b!1535949 () Bool)

(declare-fun inv!21536 (Conc!5478) Bool)

(assert (=> b!1535949 (= e!982196 (inv!21536 (c!251549 (totalInput!2348 cacheFurthestNullable!81))))))

(declare-fun b!1535950 () Bool)

(declare-fun e!982197 () Bool)

(assert (=> b!1535950 (= e!982196 e!982197)))

(declare-fun res!688749 () Bool)

(assert (=> b!1535950 (= res!688749 (not ((_ is Leaf!8116) (c!251549 (totalInput!2348 cacheFurthestNullable!81)))))))

(assert (=> b!1535950 (=> res!688749 e!982197)))

(declare-fun b!1535951 () Bool)

(declare-fun inv!21537 (Conc!5478) Bool)

(assert (=> b!1535951 (= e!982197 (inv!21537 (c!251549 (totalInput!2348 cacheFurthestNullable!81))))))

(assert (= (and d!458210 c!251552) b!1535949))

(assert (= (and d!458210 (not c!251552)) b!1535950))

(assert (= (and b!1535950 (not res!688749)) b!1535951))

(declare-fun m!1811442 () Bool)

(assert (=> b!1535949 m!1811442))

(declare-fun m!1811444 () Bool)

(assert (=> b!1535951 m!1811444))

(assert (=> b!1535878 d!458210))

(declare-fun d!458212 () Bool)

(assert (=> d!458212 (= (valid!1264 cacheFurthestNullable!81) (validCacheMapFurthestNullable!57 (cache!1873 cacheFurthestNullable!81) (totalInput!2348 cacheFurthestNullable!81)))))

(declare-fun bs!382730 () Bool)

(assert (= bs!382730 d!458212))

(assert (=> bs!382730 m!1811424))

(assert (=> b!1535869 d!458212))

(declare-fun d!458214 () Bool)

(assert (=> d!458214 (= (array_inv!1737 (_keys!1842 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) (bvsge (size!13152 (_keys!1842 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535887 d!458214))

(declare-fun d!458216 () Bool)

(assert (=> d!458216 (= (array_inv!1739 (_values!1827 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) (bvsge (size!13153 (_values!1827 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535887 d!458216))

(declare-fun d!458218 () Bool)

(assert (=> d!458218 (= (inv!21529 (tag!3127 (h!21671 rulesArg!359))) (= (mod (str.len (value!91260 (tag!3127 (h!21671 rulesArg!359)))) 2) 0))))

(assert (=> b!1535903 d!458218))

(declare-fun d!458220 () Bool)

(declare-fun res!688752 () Bool)

(declare-fun e!982200 () Bool)

(assert (=> d!458220 (=> (not res!688752) (not e!982200))))

(declare-fun semiInverseModEq!1080 (Int Int) Bool)

(assert (=> d!458220 (= res!688752 (semiInverseModEq!1080 (toChars!4083 (transformation!2863 (h!21671 rulesArg!359))) (toValue!4224 (transformation!2863 (h!21671 rulesArg!359)))))))

(assert (=> d!458220 (= (inv!21535 (transformation!2863 (h!21671 rulesArg!359))) e!982200)))

(declare-fun b!1535954 () Bool)

(declare-fun equivClasses!1039 (Int Int) Bool)

(assert (=> b!1535954 (= e!982200 (equivClasses!1039 (toChars!4083 (transformation!2863 (h!21671 rulesArg!359))) (toValue!4224 (transformation!2863 (h!21671 rulesArg!359)))))))

(assert (= (and d!458220 res!688752) b!1535954))

(declare-fun m!1811446 () Bool)

(assert (=> d!458220 m!1811446))

(declare-fun m!1811448 () Bool)

(assert (=> b!1535954 m!1811448))

(assert (=> b!1535903 d!458220))

(declare-fun d!458222 () Bool)

(assert (=> d!458222 (= (valid!1266 cacheDown!708) (validCacheMapDown!144 (cache!1875 cacheDown!708)))))

(declare-fun bs!382731 () Bool)

(assert (= bs!382731 d!458222))

(assert (=> bs!382731 m!1811416))

(assert (=> b!1535893 d!458222))

(declare-fun d!458224 () Bool)

(declare-fun c!251553 () Bool)

(assert (=> d!458224 (= c!251553 ((_ is Node!5478) (c!251549 totalInput!496)))))

(declare-fun e!982201 () Bool)

(assert (=> d!458224 (= (inv!21530 (c!251549 totalInput!496)) e!982201)))

(declare-fun b!1535955 () Bool)

(assert (=> b!1535955 (= e!982201 (inv!21536 (c!251549 totalInput!496)))))

(declare-fun b!1535956 () Bool)

(declare-fun e!982202 () Bool)

(assert (=> b!1535956 (= e!982201 e!982202)))

(declare-fun res!688753 () Bool)

(assert (=> b!1535956 (= res!688753 (not ((_ is Leaf!8116) (c!251549 totalInput!496))))))

(assert (=> b!1535956 (=> res!688753 e!982202)))

(declare-fun b!1535957 () Bool)

(assert (=> b!1535957 (= e!982202 (inv!21537 (c!251549 totalInput!496)))))

(assert (= (and d!458224 c!251553) b!1535955))

(assert (= (and d!458224 (not c!251553)) b!1535956))

(assert (= (and b!1535956 (not res!688753)) b!1535957))

(declare-fun m!1811450 () Bool)

(assert (=> b!1535955 m!1811450))

(declare-fun m!1811452 () Bool)

(assert (=> b!1535957 m!1811452))

(assert (=> b!1535904 d!458224))

(declare-fun d!458226 () Bool)

(declare-fun c!251554 () Bool)

(assert (=> d!458226 (= c!251554 ((_ is Node!5478) (c!251549 input!1460)))))

(declare-fun e!982203 () Bool)

(assert (=> d!458226 (= (inv!21530 (c!251549 input!1460)) e!982203)))

(declare-fun b!1535958 () Bool)

(assert (=> b!1535958 (= e!982203 (inv!21536 (c!251549 input!1460)))))

(declare-fun b!1535959 () Bool)

(declare-fun e!982204 () Bool)

(assert (=> b!1535959 (= e!982203 e!982204)))

(declare-fun res!688754 () Bool)

(assert (=> b!1535959 (= res!688754 (not ((_ is Leaf!8116) (c!251549 input!1460))))))

(assert (=> b!1535959 (=> res!688754 e!982204)))

(declare-fun b!1535960 () Bool)

(assert (=> b!1535960 (= e!982204 (inv!21537 (c!251549 input!1460)))))

(assert (= (and d!458226 c!251554) b!1535958))

(assert (= (and d!458226 (not c!251554)) b!1535959))

(assert (= (and b!1535959 (not res!688754)) b!1535960))

(declare-fun m!1811454 () Bool)

(assert (=> b!1535958 m!1811454))

(declare-fun m!1811456 () Bool)

(assert (=> b!1535960 m!1811456))

(assert (=> b!1535877 d!458226))

(declare-fun e!982212 () Bool)

(assert (=> b!1535901 (= tp!442800 e!982212)))

(declare-fun b!1535969 () Bool)

(declare-fun e!982213 () Bool)

(declare-fun tp!442831 () Bool)

(assert (=> b!1535969 (= e!982213 tp!442831)))

(declare-fun setIsEmpty!9984 () Bool)

(declare-fun setRes!9984 () Bool)

(assert (=> setIsEmpty!9984 setRes!9984))

(declare-fun b!1535970 () Bool)

(declare-fun e!982211 () Bool)

(declare-fun tp!442835 () Bool)

(assert (=> b!1535970 (= e!982211 tp!442835)))

(declare-fun setNonEmpty!9984 () Bool)

(declare-fun tp!442833 () Bool)

(declare-fun setElem!9984 () Context!1406)

(declare-fun inv!21538 (Context!1406) Bool)

(assert (=> setNonEmpty!9984 (= setRes!9984 (and tp!442833 (inv!21538 setElem!9984) e!982213))))

(declare-fun setRest!9984 () (InoxSet Context!1406))

(assert (=> setNonEmpty!9984 (= (_2!8725 (h!21669 (zeroValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!9984 true) setRest!9984))))

(declare-fun tp_is_empty!7033 () Bool)

(declare-fun tp!442834 () Bool)

(declare-fun tp!442832 () Bool)

(declare-fun b!1535971 () Bool)

(assert (=> b!1535971 (= e!982212 (and tp!442834 (inv!21538 (_2!8724 (_1!8725 (h!21669 (zeroValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))))) e!982211 tp_is_empty!7033 setRes!9984 tp!442832))))

(declare-fun condSetEmpty!9984 () Bool)

(assert (=> b!1535971 (= condSetEmpty!9984 (= (_2!8725 (h!21669 (zeroValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))) ((as const (Array Context!1406 Bool)) false)))))

(assert (= b!1535971 b!1535970))

(assert (= (and b!1535971 condSetEmpty!9984) setIsEmpty!9984))

(assert (= (and b!1535971 (not condSetEmpty!9984)) setNonEmpty!9984))

(assert (= setNonEmpty!9984 b!1535969))

(assert (= (and b!1535901 ((_ is Cons!16268) (zeroValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))) b!1535971))

(declare-fun m!1811458 () Bool)

(assert (=> setNonEmpty!9984 m!1811458))

(declare-fun m!1811460 () Bool)

(assert (=> b!1535971 m!1811460))

(declare-fun e!982215 () Bool)

(assert (=> b!1535901 (= tp!442817 e!982215)))

(declare-fun b!1535972 () Bool)

(declare-fun e!982216 () Bool)

(declare-fun tp!442836 () Bool)

(assert (=> b!1535972 (= e!982216 tp!442836)))

(declare-fun setIsEmpty!9985 () Bool)

(declare-fun setRes!9985 () Bool)

(assert (=> setIsEmpty!9985 setRes!9985))

(declare-fun b!1535973 () Bool)

(declare-fun e!982214 () Bool)

(declare-fun tp!442840 () Bool)

(assert (=> b!1535973 (= e!982214 tp!442840)))

(declare-fun setElem!9985 () Context!1406)

(declare-fun tp!442838 () Bool)

(declare-fun setNonEmpty!9985 () Bool)

(assert (=> setNonEmpty!9985 (= setRes!9985 (and tp!442838 (inv!21538 setElem!9985) e!982216))))

(declare-fun setRest!9985 () (InoxSet Context!1406))

(assert (=> setNonEmpty!9985 (= (_2!8725 (h!21669 (minValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!9985 true) setRest!9985))))

(declare-fun tp!442837 () Bool)

(declare-fun tp!442839 () Bool)

(declare-fun b!1535974 () Bool)

(assert (=> b!1535974 (= e!982215 (and tp!442839 (inv!21538 (_2!8724 (_1!8725 (h!21669 (minValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))))) e!982214 tp_is_empty!7033 setRes!9985 tp!442837))))

(declare-fun condSetEmpty!9985 () Bool)

(assert (=> b!1535974 (= condSetEmpty!9985 (= (_2!8725 (h!21669 (minValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))) ((as const (Array Context!1406 Bool)) false)))))

(assert (= b!1535974 b!1535973))

(assert (= (and b!1535974 condSetEmpty!9985) setIsEmpty!9985))

(assert (= (and b!1535974 (not condSetEmpty!9985)) setNonEmpty!9985))

(assert (= setNonEmpty!9985 b!1535972))

(assert (= (and b!1535901 ((_ is Cons!16268) (minValue!1807 (v!23080 (underlying!3309 (v!23081 (underlying!3310 (cache!1875 cacheDown!708)))))))) b!1535974))

(declare-fun m!1811462 () Bool)

(assert (=> setNonEmpty!9985 m!1811462))

(declare-fun m!1811464 () Bool)

(assert (=> b!1535974 m!1811464))

(declare-fun mapNonEmpty!7352 () Bool)

(declare-fun mapRes!7352 () Bool)

(declare-fun tp!442855 () Bool)

(declare-fun e!982228 () Bool)

(assert (=> mapNonEmpty!7352 (= mapRes!7352 (and tp!442855 e!982228))))

(declare-fun mapRest!7352 () (Array (_ BitVec 32) List!16333))

(declare-fun mapKey!7352 () (_ BitVec 32))

(declare-fun mapValue!7352 () List!16333)

(assert (=> mapNonEmpty!7352 (= mapRest!7349 (store mapRest!7352 mapKey!7352 mapValue!7352))))

(declare-fun b!1535985 () Bool)

(declare-fun e!982227 () Bool)

(declare-fun tp!442857 () Bool)

(assert (=> b!1535985 (= e!982227 tp!442857)))

(declare-fun setIsEmpty!9990 () Bool)

(declare-fun setRes!9990 () Bool)

(assert (=> setIsEmpty!9990 setRes!9990))

(declare-fun setIsEmpty!9991 () Bool)

(declare-fun setRes!9991 () Bool)

(assert (=> setIsEmpty!9991 setRes!9991))

(declare-fun setElem!9990 () Context!1406)

(declare-fun setNonEmpty!9990 () Bool)

(declare-fun tp!442860 () Bool)

(assert (=> setNonEmpty!9990 (= setRes!9991 (and tp!442860 (inv!21538 setElem!9990) e!982227))))

(declare-fun setRest!9990 () (InoxSet Context!1406))

(assert (=> setNonEmpty!9990 (= (_1!8720 (_1!8721 (h!21666 mapValue!7352))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!9990 true) setRest!9990))))

(declare-fun b!1535986 () Bool)

(declare-fun e!982226 () Bool)

(declare-fun tp!442858 () Bool)

(assert (=> b!1535986 (= e!982226 (and setRes!9990 tp!442858))))

(declare-fun condSetEmpty!9991 () Bool)

(declare-fun mapDefault!7352 () List!16333)

(assert (=> b!1535986 (= condSetEmpty!9991 (= (_1!8720 (_1!8721 (h!21666 mapDefault!7352))) ((as const (Array Context!1406 Bool)) false)))))

(declare-fun b!1535987 () Bool)

(declare-fun tp!442856 () Bool)

(assert (=> b!1535987 (= e!982228 (and setRes!9991 tp!442856))))

(declare-fun condSetEmpty!9990 () Bool)

(assert (=> b!1535987 (= condSetEmpty!9990 (= (_1!8720 (_1!8721 (h!21666 mapValue!7352))) ((as const (Array Context!1406 Bool)) false)))))

(declare-fun tp!442861 () Bool)

(declare-fun setElem!9991 () Context!1406)

(declare-fun e!982225 () Bool)

(declare-fun setNonEmpty!9991 () Bool)

(assert (=> setNonEmpty!9991 (= setRes!9990 (and tp!442861 (inv!21538 setElem!9991) e!982225))))

(declare-fun setRest!9991 () (InoxSet Context!1406))

(assert (=> setNonEmpty!9991 (= (_1!8720 (_1!8721 (h!21666 mapDefault!7352))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!9991 true) setRest!9991))))

(declare-fun condMapEmpty!7352 () Bool)

(assert (=> mapNonEmpty!7349 (= condMapEmpty!7352 (= mapRest!7349 ((as const (Array (_ BitVec 32) List!16333)) mapDefault!7352)))))

(assert (=> mapNonEmpty!7349 (= tp!442801 (and e!982226 mapRes!7352))))

(declare-fun mapIsEmpty!7352 () Bool)

(assert (=> mapIsEmpty!7352 mapRes!7352))

(declare-fun b!1535988 () Bool)

(declare-fun tp!442859 () Bool)

(assert (=> b!1535988 (= e!982225 tp!442859)))

(assert (= (and mapNonEmpty!7349 condMapEmpty!7352) mapIsEmpty!7352))

(assert (= (and mapNonEmpty!7349 (not condMapEmpty!7352)) mapNonEmpty!7352))

(assert (= (and b!1535987 condSetEmpty!9990) setIsEmpty!9991))

(assert (= (and b!1535987 (not condSetEmpty!9990)) setNonEmpty!9990))

(assert (= setNonEmpty!9990 b!1535985))

(assert (= (and mapNonEmpty!7352 ((_ is Cons!16265) mapValue!7352)) b!1535987))

(assert (= (and b!1535986 condSetEmpty!9991) setIsEmpty!9990))

(assert (= (and b!1535986 (not condSetEmpty!9991)) setNonEmpty!9991))

(assert (= setNonEmpty!9991 b!1535988))

(assert (= (and mapNonEmpty!7349 ((_ is Cons!16265) mapDefault!7352)) b!1535986))

(declare-fun m!1811466 () Bool)

(assert (=> mapNonEmpty!7352 m!1811466))

(declare-fun m!1811468 () Bool)

(assert (=> setNonEmpty!9990 m!1811468))

(declare-fun m!1811470 () Bool)

(assert (=> setNonEmpty!9991 m!1811470))

(declare-fun e!982233 () Bool)

(declare-fun tp!442869 () Bool)

(declare-fun setNonEmpty!9994 () Bool)

(declare-fun setRes!9994 () Bool)

(declare-fun setElem!9994 () Context!1406)

(assert (=> setNonEmpty!9994 (= setRes!9994 (and tp!442869 (inv!21538 setElem!9994) e!982233))))

(declare-fun setRest!9994 () (InoxSet Context!1406))

(assert (=> setNonEmpty!9994 (= (_1!8720 (_1!8721 (h!21666 mapValue!7347))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!9994 true) setRest!9994))))

(declare-fun b!1535996 () Bool)

(declare-fun tp!442868 () Bool)

(assert (=> b!1535996 (= e!982233 tp!442868)))

(declare-fun e!982234 () Bool)

(assert (=> mapNonEmpty!7349 (= tp!442815 e!982234)))

(declare-fun setIsEmpty!9994 () Bool)

(assert (=> setIsEmpty!9994 setRes!9994))

(declare-fun b!1535995 () Bool)

(declare-fun tp!442870 () Bool)

(assert (=> b!1535995 (= e!982234 (and setRes!9994 tp!442870))))

(declare-fun condSetEmpty!9994 () Bool)

(assert (=> b!1535995 (= condSetEmpty!9994 (= (_1!8720 (_1!8721 (h!21666 mapValue!7347))) ((as const (Array Context!1406 Bool)) false)))))

(assert (= (and b!1535995 condSetEmpty!9994) setIsEmpty!9994))

(assert (= (and b!1535995 (not condSetEmpty!9994)) setNonEmpty!9994))

(assert (= setNonEmpty!9994 b!1535996))

(assert (= (and mapNonEmpty!7349 ((_ is Cons!16265) mapValue!7347)) b!1535995))

(declare-fun m!1811472 () Bool)

(assert (=> setNonEmpty!9994 m!1811472))

(declare-fun b!1536007 () Bool)

(declare-fun b_free!39827 () Bool)

(declare-fun b_next!40531 () Bool)

(assert (=> b!1536007 (= b_free!39827 (not b_next!40531))))

(declare-fun tp!442881 () Bool)

(declare-fun b_and!106705 () Bool)

(assert (=> b!1536007 (= tp!442881 b_and!106705)))

(declare-fun b_free!39829 () Bool)

(declare-fun b_next!40533 () Bool)

(assert (=> b!1536007 (= b_free!39829 (not b_next!40533))))

(declare-fun tp!442879 () Bool)

(declare-fun b_and!106707 () Bool)

(assert (=> b!1536007 (= tp!442879 b_and!106707)))

(declare-fun e!982246 () Bool)

(assert (=> b!1536007 (= e!982246 (and tp!442881 tp!442879))))

(declare-fun tp!442880 () Bool)

(declare-fun e!982244 () Bool)

(declare-fun b!1536006 () Bool)

(assert (=> b!1536006 (= e!982244 (and tp!442880 (inv!21529 (tag!3127 (h!21671 (t!140544 rulesArg!359)))) (inv!21535 (transformation!2863 (h!21671 (t!140544 rulesArg!359)))) e!982246))))

(declare-fun b!1536005 () Bool)

(declare-fun e!982243 () Bool)

(declare-fun tp!442882 () Bool)

(assert (=> b!1536005 (= e!982243 (and e!982244 tp!442882))))

(assert (=> b!1535882 (= tp!442820 e!982243)))

(assert (= b!1536006 b!1536007))

(assert (= b!1536005 b!1536006))

(assert (= (and b!1535882 ((_ is Cons!16270) (t!140544 rulesArg!359))) b!1536005))

(declare-fun m!1811474 () Bool)

(assert (=> b!1536006 m!1811474))

(declare-fun m!1811476 () Bool)

(assert (=> b!1536006 m!1811476))

(declare-fun b!1536022 () Bool)

(declare-fun e!982264 () Bool)

(declare-fun tp!442906 () Bool)

(assert (=> b!1536022 (= e!982264 tp!442906)))

(declare-fun setRes!9999 () Bool)

(declare-fun setNonEmpty!9999 () Bool)

(declare-fun tp!442908 () Bool)

(declare-fun setElem!9999 () Context!1406)

(declare-fun e!982263 () Bool)

(assert (=> setNonEmpty!9999 (= setRes!9999 (and tp!442908 (inv!21538 setElem!9999) e!982263))))

(declare-fun mapDefault!7355 () List!16335)

(declare-fun setRest!10000 () (InoxSet Context!1406))

(assert (=> setNonEmpty!9999 (= (_2!8723 (h!21668 mapDefault!7355)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!9999 true) setRest!10000))))

(declare-fun setIsEmpty!9999 () Bool)

(declare-fun setRes!10000 () Bool)

(assert (=> setIsEmpty!9999 setRes!10000))

(declare-fun b!1536023 () Bool)

(declare-fun tp!442909 () Bool)

(assert (=> b!1536023 (= e!982263 tp!442909)))

(declare-fun b!1536024 () Bool)

(declare-fun e!982261 () Bool)

(declare-fun tp!442904 () Bool)

(assert (=> b!1536024 (= e!982261 tp!442904)))

(declare-fun mapNonEmpty!7355 () Bool)

(declare-fun mapRes!7355 () Bool)

(declare-fun tp!442902 () Bool)

(declare-fun e!982262 () Bool)

(assert (=> mapNonEmpty!7355 (= mapRes!7355 (and tp!442902 e!982262))))

(declare-fun mapKey!7355 () (_ BitVec 32))

(declare-fun mapRest!7355 () (Array (_ BitVec 32) List!16335))

(declare-fun mapValue!7355 () List!16335)

(assert (=> mapNonEmpty!7355 (= mapRest!7347 (store mapRest!7355 mapKey!7355 mapValue!7355))))

(declare-fun condMapEmpty!7355 () Bool)

(assert (=> mapNonEmpty!7347 (= condMapEmpty!7355 (= mapRest!7347 ((as const (Array (_ BitVec 32) List!16335)) mapDefault!7355)))))

(declare-fun e!982259 () Bool)

(assert (=> mapNonEmpty!7347 (= tp!442802 (and e!982259 mapRes!7355))))

(declare-fun b!1536025 () Bool)

(declare-fun tp!442907 () Bool)

(declare-fun e!982260 () Bool)

(assert (=> b!1536025 (= e!982262 (and (inv!21538 (_1!8722 (_1!8723 (h!21668 mapValue!7355)))) e!982260 tp_is_empty!7033 setRes!10000 tp!442907))))

(declare-fun condSetEmpty!10000 () Bool)

(assert (=> b!1536025 (= condSetEmpty!10000 (= (_2!8723 (h!21668 mapValue!7355)) ((as const (Array Context!1406 Bool)) false)))))

(declare-fun b!1536026 () Bool)

(declare-fun tp!442905 () Bool)

(assert (=> b!1536026 (= e!982260 tp!442905)))

(declare-fun tp!442901 () Bool)

(declare-fun b!1536027 () Bool)

(assert (=> b!1536027 (= e!982259 (and (inv!21538 (_1!8722 (_1!8723 (h!21668 mapDefault!7355)))) e!982261 tp_is_empty!7033 setRes!9999 tp!442901))))

(declare-fun condSetEmpty!9999 () Bool)

(assert (=> b!1536027 (= condSetEmpty!9999 (= (_2!8723 (h!21668 mapDefault!7355)) ((as const (Array Context!1406 Bool)) false)))))

(declare-fun setIsEmpty!10000 () Bool)

(assert (=> setIsEmpty!10000 setRes!9999))

(declare-fun mapIsEmpty!7355 () Bool)

(assert (=> mapIsEmpty!7355 mapRes!7355))

(declare-fun tp!442903 () Bool)

(declare-fun setElem!10000 () Context!1406)

(declare-fun setNonEmpty!10000 () Bool)

(assert (=> setNonEmpty!10000 (= setRes!10000 (and tp!442903 (inv!21538 setElem!10000) e!982264))))

(declare-fun setRest!9999 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10000 (= (_2!8723 (h!21668 mapValue!7355)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10000 true) setRest!9999))))

(assert (= (and mapNonEmpty!7347 condMapEmpty!7355) mapIsEmpty!7355))

(assert (= (and mapNonEmpty!7347 (not condMapEmpty!7355)) mapNonEmpty!7355))

(assert (= b!1536025 b!1536026))

(assert (= (and b!1536025 condSetEmpty!10000) setIsEmpty!9999))

(assert (= (and b!1536025 (not condSetEmpty!10000)) setNonEmpty!10000))

(assert (= setNonEmpty!10000 b!1536022))

(assert (= (and mapNonEmpty!7355 ((_ is Cons!16267) mapValue!7355)) b!1536025))

(assert (= b!1536027 b!1536024))

(assert (= (and b!1536027 condSetEmpty!9999) setIsEmpty!10000))

(assert (= (and b!1536027 (not condSetEmpty!9999)) setNonEmpty!9999))

(assert (= setNonEmpty!9999 b!1536023))

(assert (= (and mapNonEmpty!7347 ((_ is Cons!16267) mapDefault!7355)) b!1536027))

(declare-fun m!1811478 () Bool)

(assert (=> setNonEmpty!10000 m!1811478))

(declare-fun m!1811480 () Bool)

(assert (=> setNonEmpty!9999 m!1811480))

(declare-fun m!1811482 () Bool)

(assert (=> b!1536025 m!1811482))

(declare-fun m!1811484 () Bool)

(assert (=> b!1536027 m!1811484))

(declare-fun m!1811486 () Bool)

(assert (=> mapNonEmpty!7355 m!1811486))

(declare-fun setRes!10003 () Bool)

(declare-fun tp!442919 () Bool)

(declare-fun e!982272 () Bool)

(declare-fun b!1536036 () Bool)

(declare-fun e!982273 () Bool)

(assert (=> b!1536036 (= e!982273 (and (inv!21538 (_1!8722 (_1!8723 (h!21668 mapValue!7348)))) e!982272 tp_is_empty!7033 setRes!10003 tp!442919))))

(declare-fun condSetEmpty!10003 () Bool)

(assert (=> b!1536036 (= condSetEmpty!10003 (= (_2!8723 (h!21668 mapValue!7348)) ((as const (Array Context!1406 Bool)) false)))))

(assert (=> mapNonEmpty!7347 (= tp!442793 e!982273)))

(declare-fun b!1536037 () Bool)

(declare-fun tp!442918 () Bool)

(assert (=> b!1536037 (= e!982272 tp!442918)))

(declare-fun setIsEmpty!10003 () Bool)

(assert (=> setIsEmpty!10003 setRes!10003))

(declare-fun b!1536038 () Bool)

(declare-fun e!982271 () Bool)

(declare-fun tp!442921 () Bool)

(assert (=> b!1536038 (= e!982271 tp!442921)))

(declare-fun tp!442920 () Bool)

(declare-fun setNonEmpty!10003 () Bool)

(declare-fun setElem!10003 () Context!1406)

(assert (=> setNonEmpty!10003 (= setRes!10003 (and tp!442920 (inv!21538 setElem!10003) e!982271))))

(declare-fun setRest!10003 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10003 (= (_2!8723 (h!21668 mapValue!7348)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10003 true) setRest!10003))))

(assert (= b!1536036 b!1536037))

(assert (= (and b!1536036 condSetEmpty!10003) setIsEmpty!10003))

(assert (= (and b!1536036 (not condSetEmpty!10003)) setNonEmpty!10003))

(assert (= setNonEmpty!10003 b!1536038))

(assert (= (and mapNonEmpty!7347 ((_ is Cons!16267) mapValue!7348)) b!1536036))

(declare-fun m!1811488 () Bool)

(assert (=> b!1536036 m!1811488))

(declare-fun m!1811490 () Bool)

(assert (=> setNonEmpty!10003 m!1811490))

(declare-fun e!982291 () Bool)

(declare-fun tp!442946 () Bool)

(declare-fun setElem!10008 () Context!1406)

(declare-fun setRes!10009 () Bool)

(declare-fun setNonEmpty!10008 () Bool)

(assert (=> setNonEmpty!10008 (= setRes!10009 (and tp!442946 (inv!21538 setElem!10008) e!982291))))

(declare-fun mapDefault!7358 () List!16336)

(declare-fun setRest!10009 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10008 (= (_2!8725 (h!21669 mapDefault!7358)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10008 true) setRest!10009))))

(declare-fun tp!442951 () Bool)

(declare-fun mapValue!7358 () List!16336)

(declare-fun b!1536053 () Bool)

(declare-fun setRes!10008 () Bool)

(declare-fun e!982289 () Bool)

(declare-fun e!982290 () Bool)

(declare-fun tp!442950 () Bool)

(assert (=> b!1536053 (= e!982290 (and tp!442951 (inv!21538 (_2!8724 (_1!8725 (h!21669 mapValue!7358)))) e!982289 tp_is_empty!7033 setRes!10008 tp!442950))))

(declare-fun condSetEmpty!10009 () Bool)

(assert (=> b!1536053 (= condSetEmpty!10009 (= (_2!8725 (h!21669 mapValue!7358)) ((as const (Array Context!1406 Bool)) false)))))

(declare-fun b!1536054 () Bool)

(declare-fun tp!442953 () Bool)

(assert (=> b!1536054 (= e!982289 tp!442953)))

(declare-fun mapIsEmpty!7358 () Bool)

(declare-fun mapRes!7358 () Bool)

(assert (=> mapIsEmpty!7358 mapRes!7358))

(declare-fun b!1536055 () Bool)

(declare-fun e!982287 () Bool)

(declare-fun tp!442954 () Bool)

(assert (=> b!1536055 (= e!982287 tp!442954)))

(declare-fun setIsEmpty!10008 () Bool)

(assert (=> setIsEmpty!10008 setRes!10008))

(declare-fun setIsEmpty!10009 () Bool)

(assert (=> setIsEmpty!10009 setRes!10009))

(declare-fun b!1536056 () Bool)

(declare-fun e!982286 () Bool)

(declare-fun tp!442952 () Bool)

(assert (=> b!1536056 (= e!982286 tp!442952)))

(declare-fun condMapEmpty!7358 () Bool)

(assert (=> mapNonEmpty!7348 (= condMapEmpty!7358 (= mapRest!7348 ((as const (Array (_ BitVec 32) List!16336)) mapDefault!7358)))))

(declare-fun e!982288 () Bool)

(assert (=> mapNonEmpty!7348 (= tp!442805 (and e!982288 mapRes!7358))))

(declare-fun mapNonEmpty!7358 () Bool)

(declare-fun tp!442944 () Bool)

(assert (=> mapNonEmpty!7358 (= mapRes!7358 (and tp!442944 e!982290))))

(declare-fun mapKey!7358 () (_ BitVec 32))

(declare-fun mapRest!7358 () (Array (_ BitVec 32) List!16336))

(assert (=> mapNonEmpty!7358 (= mapRest!7348 (store mapRest!7358 mapKey!7358 mapValue!7358))))

(declare-fun b!1536057 () Bool)

(declare-fun tp!442948 () Bool)

(assert (=> b!1536057 (= e!982291 tp!442948)))

(declare-fun tp!442945 () Bool)

(declare-fun setNonEmpty!10009 () Bool)

(declare-fun setElem!10009 () Context!1406)

(assert (=> setNonEmpty!10009 (= setRes!10008 (and tp!442945 (inv!21538 setElem!10009) e!982287))))

(declare-fun setRest!10008 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10009 (= (_2!8725 (h!21669 mapValue!7358)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10009 true) setRest!10008))))

(declare-fun tp!442949 () Bool)

(declare-fun b!1536058 () Bool)

(declare-fun tp!442947 () Bool)

(assert (=> b!1536058 (= e!982288 (and tp!442947 (inv!21538 (_2!8724 (_1!8725 (h!21669 mapDefault!7358)))) e!982286 tp_is_empty!7033 setRes!10009 tp!442949))))

(declare-fun condSetEmpty!10008 () Bool)

(assert (=> b!1536058 (= condSetEmpty!10008 (= (_2!8725 (h!21669 mapDefault!7358)) ((as const (Array Context!1406 Bool)) false)))))

(assert (= (and mapNonEmpty!7348 condMapEmpty!7358) mapIsEmpty!7358))

(assert (= (and mapNonEmpty!7348 (not condMapEmpty!7358)) mapNonEmpty!7358))

(assert (= b!1536053 b!1536054))

(assert (= (and b!1536053 condSetEmpty!10009) setIsEmpty!10008))

(assert (= (and b!1536053 (not condSetEmpty!10009)) setNonEmpty!10009))

(assert (= setNonEmpty!10009 b!1536055))

(assert (= (and mapNonEmpty!7358 ((_ is Cons!16268) mapValue!7358)) b!1536053))

(assert (= b!1536058 b!1536056))

(assert (= (and b!1536058 condSetEmpty!10008) setIsEmpty!10009))

(assert (= (and b!1536058 (not condSetEmpty!10008)) setNonEmpty!10008))

(assert (= setNonEmpty!10008 b!1536057))

(assert (= (and mapNonEmpty!7348 ((_ is Cons!16268) mapDefault!7358)) b!1536058))

(declare-fun m!1811492 () Bool)

(assert (=> setNonEmpty!10008 m!1811492))

(declare-fun m!1811494 () Bool)

(assert (=> b!1536053 m!1811494))

(declare-fun m!1811496 () Bool)

(assert (=> setNonEmpty!10009 m!1811496))

(declare-fun m!1811498 () Bool)

(assert (=> b!1536058 m!1811498))

(declare-fun m!1811500 () Bool)

(assert (=> mapNonEmpty!7358 m!1811500))

(declare-fun e!982293 () Bool)

(assert (=> mapNonEmpty!7348 (= tp!442809 e!982293)))

(declare-fun b!1536059 () Bool)

(declare-fun e!982294 () Bool)

(declare-fun tp!442955 () Bool)

(assert (=> b!1536059 (= e!982294 tp!442955)))

(declare-fun setIsEmpty!10010 () Bool)

(declare-fun setRes!10010 () Bool)

(assert (=> setIsEmpty!10010 setRes!10010))

(declare-fun b!1536060 () Bool)

(declare-fun e!982292 () Bool)

(declare-fun tp!442959 () Bool)

(assert (=> b!1536060 (= e!982292 tp!442959)))

(declare-fun setNonEmpty!10010 () Bool)

(declare-fun tp!442957 () Bool)

(declare-fun setElem!10010 () Context!1406)

(assert (=> setNonEmpty!10010 (= setRes!10010 (and tp!442957 (inv!21538 setElem!10010) e!982294))))

(declare-fun setRest!10010 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10010 (= (_2!8725 (h!21669 mapValue!7349)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10010 true) setRest!10010))))

(declare-fun b!1536061 () Bool)

(declare-fun tp!442958 () Bool)

(declare-fun tp!442956 () Bool)

(assert (=> b!1536061 (= e!982293 (and tp!442958 (inv!21538 (_2!8724 (_1!8725 (h!21669 mapValue!7349)))) e!982292 tp_is_empty!7033 setRes!10010 tp!442956))))

(declare-fun condSetEmpty!10010 () Bool)

(assert (=> b!1536061 (= condSetEmpty!10010 (= (_2!8725 (h!21669 mapValue!7349)) ((as const (Array Context!1406 Bool)) false)))))

(assert (= b!1536061 b!1536060))

(assert (= (and b!1536061 condSetEmpty!10010) setIsEmpty!10010))

(assert (= (and b!1536061 (not condSetEmpty!10010)) setNonEmpty!10010))

(assert (= setNonEmpty!10010 b!1536059))

(assert (= (and mapNonEmpty!7348 ((_ is Cons!16268) mapValue!7349)) b!1536061))

(declare-fun m!1811502 () Bool)

(assert (=> setNonEmpty!10010 m!1811502))

(declare-fun m!1811504 () Bool)

(assert (=> b!1536061 m!1811504))

(declare-fun tp!442961 () Bool)

(declare-fun e!982296 () Bool)

(declare-fun b!1536062 () Bool)

(declare-fun e!982297 () Bool)

(declare-fun setRes!10011 () Bool)

(assert (=> b!1536062 (= e!982297 (and (inv!21538 (_1!8722 (_1!8723 (h!21668 (zeroValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))))) e!982296 tp_is_empty!7033 setRes!10011 tp!442961))))

(declare-fun condSetEmpty!10011 () Bool)

(assert (=> b!1536062 (= condSetEmpty!10011 (= (_2!8723 (h!21668 (zeroValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))) ((as const (Array Context!1406 Bool)) false)))))

(assert (=> b!1535880 (= tp!442798 e!982297)))

(declare-fun b!1536063 () Bool)

(declare-fun tp!442960 () Bool)

(assert (=> b!1536063 (= e!982296 tp!442960)))

(declare-fun setIsEmpty!10011 () Bool)

(assert (=> setIsEmpty!10011 setRes!10011))

(declare-fun b!1536064 () Bool)

(declare-fun e!982295 () Bool)

(declare-fun tp!442963 () Bool)

(assert (=> b!1536064 (= e!982295 tp!442963)))

(declare-fun setNonEmpty!10011 () Bool)

(declare-fun tp!442962 () Bool)

(declare-fun setElem!10011 () Context!1406)

(assert (=> setNonEmpty!10011 (= setRes!10011 (and tp!442962 (inv!21538 setElem!10011) e!982295))))

(declare-fun setRest!10011 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10011 (= (_2!8723 (h!21668 (zeroValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10011 true) setRest!10011))))

(assert (= b!1536062 b!1536063))

(assert (= (and b!1536062 condSetEmpty!10011) setIsEmpty!10011))

(assert (= (and b!1536062 (not condSetEmpty!10011)) setNonEmpty!10011))

(assert (= setNonEmpty!10011 b!1536064))

(assert (= (and b!1535880 ((_ is Cons!16267) (zeroValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))) b!1536062))

(declare-fun m!1811506 () Bool)

(assert (=> b!1536062 m!1811506))

(declare-fun m!1811508 () Bool)

(assert (=> setNonEmpty!10011 m!1811508))

(declare-fun setRes!10012 () Bool)

(declare-fun b!1536065 () Bool)

(declare-fun tp!442965 () Bool)

(declare-fun e!982300 () Bool)

(declare-fun e!982299 () Bool)

(assert (=> b!1536065 (= e!982300 (and (inv!21538 (_1!8722 (_1!8723 (h!21668 (minValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))))) e!982299 tp_is_empty!7033 setRes!10012 tp!442965))))

(declare-fun condSetEmpty!10012 () Bool)

(assert (=> b!1536065 (= condSetEmpty!10012 (= (_2!8723 (h!21668 (minValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))) ((as const (Array Context!1406 Bool)) false)))))

(assert (=> b!1535880 (= tp!442806 e!982300)))

(declare-fun b!1536066 () Bool)

(declare-fun tp!442964 () Bool)

(assert (=> b!1536066 (= e!982299 tp!442964)))

(declare-fun setIsEmpty!10012 () Bool)

(assert (=> setIsEmpty!10012 setRes!10012))

(declare-fun b!1536067 () Bool)

(declare-fun e!982298 () Bool)

(declare-fun tp!442967 () Bool)

(assert (=> b!1536067 (= e!982298 tp!442967)))

(declare-fun tp!442966 () Bool)

(declare-fun setElem!10012 () Context!1406)

(declare-fun setNonEmpty!10012 () Bool)

(assert (=> setNonEmpty!10012 (= setRes!10012 (and tp!442966 (inv!21538 setElem!10012) e!982298))))

(declare-fun setRest!10012 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10012 (= (_2!8723 (h!21668 (minValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10012 true) setRest!10012))))

(assert (= b!1536065 b!1536066))

(assert (= (and b!1536065 condSetEmpty!10012) setIsEmpty!10012))

(assert (= (and b!1536065 (not condSetEmpty!10012)) setNonEmpty!10012))

(assert (= setNonEmpty!10012 b!1536067))

(assert (= (and b!1535880 ((_ is Cons!16267) (minValue!1806 (v!23078 (underlying!3307 (v!23079 (underlying!3308 (cache!1874 cacheUp!695)))))))) b!1536065))

(declare-fun m!1811510 () Bool)

(assert (=> b!1536065 m!1811510))

(declare-fun m!1811512 () Bool)

(assert (=> setNonEmpty!10012 m!1811512))

(declare-fun e!982301 () Bool)

(declare-fun setNonEmpty!10013 () Bool)

(declare-fun setRes!10013 () Bool)

(declare-fun tp!442969 () Bool)

(declare-fun setElem!10013 () Context!1406)

(assert (=> setNonEmpty!10013 (= setRes!10013 (and tp!442969 (inv!21538 setElem!10013) e!982301))))

(declare-fun setRest!10013 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10013 (= (_1!8720 (_1!8721 (h!21666 mapDefault!7347))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10013 true) setRest!10013))))

(declare-fun b!1536069 () Bool)

(declare-fun tp!442968 () Bool)

(assert (=> b!1536069 (= e!982301 tp!442968)))

(declare-fun e!982302 () Bool)

(assert (=> b!1535896 (= tp!442804 e!982302)))

(declare-fun setIsEmpty!10013 () Bool)

(assert (=> setIsEmpty!10013 setRes!10013))

(declare-fun b!1536068 () Bool)

(declare-fun tp!442970 () Bool)

(assert (=> b!1536068 (= e!982302 (and setRes!10013 tp!442970))))

(declare-fun condSetEmpty!10013 () Bool)

(assert (=> b!1536068 (= condSetEmpty!10013 (= (_1!8720 (_1!8721 (h!21666 mapDefault!7347))) ((as const (Array Context!1406 Bool)) false)))))

(assert (= (and b!1536068 condSetEmpty!10013) setIsEmpty!10013))

(assert (= (and b!1536068 (not condSetEmpty!10013)) setNonEmpty!10013))

(assert (= setNonEmpty!10013 b!1536069))

(assert (= (and b!1535896 ((_ is Cons!16265) mapDefault!7347)) b!1536068))

(declare-fun m!1811514 () Bool)

(assert (=> setNonEmpty!10013 m!1811514))

(declare-fun e!982308 () Bool)

(declare-fun tp!442978 () Bool)

(declare-fun b!1536078 () Bool)

(declare-fun tp!442977 () Bool)

(assert (=> b!1536078 (= e!982308 (and (inv!21530 (left!13429 (c!251549 (totalInput!2348 cacheFurthestNullable!81)))) tp!442977 (inv!21530 (right!13759 (c!251549 (totalInput!2348 cacheFurthestNullable!81)))) tp!442978))))

(declare-fun b!1536080 () Bool)

(declare-fun e!982307 () Bool)

(declare-fun tp!442979 () Bool)

(assert (=> b!1536080 (= e!982307 tp!442979)))

(declare-fun b!1536079 () Bool)

(declare-fun inv!21539 (IArray!10961) Bool)

(assert (=> b!1536079 (= e!982308 (and (inv!21539 (xs!8278 (c!251549 (totalInput!2348 cacheFurthestNullable!81)))) e!982307))))

(assert (=> b!1535878 (= tp!442796 (and (inv!21530 (c!251549 (totalInput!2348 cacheFurthestNullable!81))) e!982308))))

(assert (= (and b!1535878 ((_ is Node!5478) (c!251549 (totalInput!2348 cacheFurthestNullable!81)))) b!1536078))

(assert (= b!1536079 b!1536080))

(assert (= (and b!1535878 ((_ is Leaf!8116) (c!251549 (totalInput!2348 cacheFurthestNullable!81)))) b!1536079))

(declare-fun m!1811516 () Bool)

(assert (=> b!1536078 m!1811516))

(declare-fun m!1811518 () Bool)

(assert (=> b!1536078 m!1811518))

(declare-fun m!1811520 () Bool)

(assert (=> b!1536079 m!1811520))

(assert (=> b!1535878 m!1811392))

(declare-fun setRes!10014 () Bool)

(declare-fun b!1536081 () Bool)

(declare-fun e!982310 () Bool)

(declare-fun e!982311 () Bool)

(declare-fun tp!442981 () Bool)

(assert (=> b!1536081 (= e!982311 (and (inv!21538 (_1!8722 (_1!8723 (h!21668 mapDefault!7348)))) e!982310 tp_is_empty!7033 setRes!10014 tp!442981))))

(declare-fun condSetEmpty!10014 () Bool)

(assert (=> b!1536081 (= condSetEmpty!10014 (= (_2!8723 (h!21668 mapDefault!7348)) ((as const (Array Context!1406 Bool)) false)))))

(assert (=> b!1535879 (= tp!442810 e!982311)))

(declare-fun b!1536082 () Bool)

(declare-fun tp!442980 () Bool)

(assert (=> b!1536082 (= e!982310 tp!442980)))

(declare-fun setIsEmpty!10014 () Bool)

(assert (=> setIsEmpty!10014 setRes!10014))

(declare-fun b!1536083 () Bool)

(declare-fun e!982309 () Bool)

(declare-fun tp!442983 () Bool)

(assert (=> b!1536083 (= e!982309 tp!442983)))

(declare-fun setElem!10014 () Context!1406)

(declare-fun tp!442982 () Bool)

(declare-fun setNonEmpty!10014 () Bool)

(assert (=> setNonEmpty!10014 (= setRes!10014 (and tp!442982 (inv!21538 setElem!10014) e!982309))))

(declare-fun setRest!10014 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10014 (= (_2!8723 (h!21668 mapDefault!7348)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10014 true) setRest!10014))))

(assert (= b!1536081 b!1536082))

(assert (= (and b!1536081 condSetEmpty!10014) setIsEmpty!10014))

(assert (= (and b!1536081 (not condSetEmpty!10014)) setNonEmpty!10014))

(assert (= setNonEmpty!10014 b!1536083))

(assert (= (and b!1535879 ((_ is Cons!16267) mapDefault!7348)) b!1536081))

(declare-fun m!1811522 () Bool)

(assert (=> b!1536081 m!1811522))

(declare-fun m!1811524 () Bool)

(assert (=> setNonEmpty!10014 m!1811524))

(declare-fun setRes!10015 () Bool)

(declare-fun setNonEmpty!10015 () Bool)

(declare-fun tp!442985 () Bool)

(declare-fun e!982312 () Bool)

(declare-fun setElem!10015 () Context!1406)

(assert (=> setNonEmpty!10015 (= setRes!10015 (and tp!442985 (inv!21538 setElem!10015) e!982312))))

(declare-fun setRest!10015 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10015 (= (_1!8720 (_1!8721 (h!21666 (zeroValue!1805 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10015 true) setRest!10015))))

(declare-fun b!1536085 () Bool)

(declare-fun tp!442984 () Bool)

(assert (=> b!1536085 (= e!982312 tp!442984)))

(declare-fun e!982313 () Bool)

(assert (=> b!1535887 (= tp!442813 e!982313)))

(declare-fun setIsEmpty!10015 () Bool)

(assert (=> setIsEmpty!10015 setRes!10015))

(declare-fun b!1536084 () Bool)

(declare-fun tp!442986 () Bool)

(assert (=> b!1536084 (= e!982313 (and setRes!10015 tp!442986))))

(declare-fun condSetEmpty!10015 () Bool)

(assert (=> b!1536084 (= condSetEmpty!10015 (= (_1!8720 (_1!8721 (h!21666 (zeroValue!1805 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))))) ((as const (Array Context!1406 Bool)) false)))))

(assert (= (and b!1536084 condSetEmpty!10015) setIsEmpty!10015))

(assert (= (and b!1536084 (not condSetEmpty!10015)) setNonEmpty!10015))

(assert (= setNonEmpty!10015 b!1536085))

(assert (= (and b!1535887 ((_ is Cons!16265) (zeroValue!1805 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81)))))))) b!1536084))

(declare-fun m!1811526 () Bool)

(assert (=> setNonEmpty!10015 m!1811526))

(declare-fun setRes!10016 () Bool)

(declare-fun e!982314 () Bool)

(declare-fun setNonEmpty!10016 () Bool)

(declare-fun setElem!10016 () Context!1406)

(declare-fun tp!442988 () Bool)

(assert (=> setNonEmpty!10016 (= setRes!10016 (and tp!442988 (inv!21538 setElem!10016) e!982314))))

(declare-fun setRest!10016 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10016 (= (_1!8720 (_1!8721 (h!21666 (minValue!1805 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10016 true) setRest!10016))))

(declare-fun b!1536087 () Bool)

(declare-fun tp!442987 () Bool)

(assert (=> b!1536087 (= e!982314 tp!442987)))

(declare-fun e!982315 () Bool)

(assert (=> b!1535887 (= tp!442808 e!982315)))

(declare-fun setIsEmpty!10016 () Bool)

(assert (=> setIsEmpty!10016 setRes!10016))

(declare-fun b!1536086 () Bool)

(declare-fun tp!442989 () Bool)

(assert (=> b!1536086 (= e!982315 (and setRes!10016 tp!442989))))

(declare-fun condSetEmpty!10016 () Bool)

(assert (=> b!1536086 (= condSetEmpty!10016 (= (_1!8720 (_1!8721 (h!21666 (minValue!1805 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81))))))))) ((as const (Array Context!1406 Bool)) false)))))

(assert (= (and b!1536086 condSetEmpty!10016) setIsEmpty!10016))

(assert (= (and b!1536086 (not condSetEmpty!10016)) setNonEmpty!10016))

(assert (= setNonEmpty!10016 b!1536087))

(assert (= (and b!1535887 ((_ is Cons!16265) (minValue!1805 (v!23076 (underlying!3305 (v!23077 (underlying!3306 (cache!1873 cacheFurthestNullable!81)))))))) b!1536086))

(declare-fun m!1811528 () Bool)

(assert (=> setNonEmpty!10016 m!1811528))

(declare-fun e!982318 () Bool)

(assert (=> b!1535903 (= tp!442812 e!982318)))

(declare-fun b!1536100 () Bool)

(declare-fun tp!443004 () Bool)

(assert (=> b!1536100 (= e!982318 tp!443004)))

(declare-fun b!1536098 () Bool)

(assert (=> b!1536098 (= e!982318 tp_is_empty!7033)))

(declare-fun b!1536099 () Bool)

(declare-fun tp!443003 () Bool)

(declare-fun tp!443002 () Bool)

(assert (=> b!1536099 (= e!982318 (and tp!443003 tp!443002))))

(declare-fun b!1536101 () Bool)

(declare-fun tp!443001 () Bool)

(declare-fun tp!443000 () Bool)

(assert (=> b!1536101 (= e!982318 (and tp!443001 tp!443000))))

(assert (= (and b!1535903 ((_ is ElementMatch!4185) (regex!2863 (h!21671 rulesArg!359)))) b!1536098))

(assert (= (and b!1535903 ((_ is Concat!7138) (regex!2863 (h!21671 rulesArg!359)))) b!1536099))

(assert (= (and b!1535903 ((_ is Star!4185) (regex!2863 (h!21671 rulesArg!359)))) b!1536100))

(assert (= (and b!1535903 ((_ is Union!4185) (regex!2863 (h!21671 rulesArg!359)))) b!1536101))

(declare-fun e!982320 () Bool)

(assert (=> b!1535884 (= tp!442807 e!982320)))

(declare-fun b!1536102 () Bool)

(declare-fun e!982321 () Bool)

(declare-fun tp!443005 () Bool)

(assert (=> b!1536102 (= e!982321 tp!443005)))

(declare-fun setIsEmpty!10017 () Bool)

(declare-fun setRes!10017 () Bool)

(assert (=> setIsEmpty!10017 setRes!10017))

(declare-fun b!1536103 () Bool)

(declare-fun e!982319 () Bool)

(declare-fun tp!443009 () Bool)

(assert (=> b!1536103 (= e!982319 tp!443009)))

(declare-fun tp!443007 () Bool)

(declare-fun setElem!10017 () Context!1406)

(declare-fun setNonEmpty!10017 () Bool)

(assert (=> setNonEmpty!10017 (= setRes!10017 (and tp!443007 (inv!21538 setElem!10017) e!982321))))

(declare-fun setRest!10017 () (InoxSet Context!1406))

(assert (=> setNonEmpty!10017 (= (_2!8725 (h!21669 mapDefault!7349)) ((_ map or) (store ((as const (Array Context!1406 Bool)) false) setElem!10017 true) setRest!10017))))

(declare-fun b!1536104 () Bool)

(declare-fun tp!443006 () Bool)

(declare-fun tp!443008 () Bool)

(assert (=> b!1536104 (= e!982320 (and tp!443008 (inv!21538 (_2!8724 (_1!8725 (h!21669 mapDefault!7349)))) e!982319 tp_is_empty!7033 setRes!10017 tp!443006))))

(declare-fun condSetEmpty!10017 () Bool)

(assert (=> b!1536104 (= condSetEmpty!10017 (= (_2!8725 (h!21669 mapDefault!7349)) ((as const (Array Context!1406 Bool)) false)))))

(assert (= b!1536104 b!1536103))

(assert (= (and b!1536104 condSetEmpty!10017) setIsEmpty!10017))

(assert (= (and b!1536104 (not condSetEmpty!10017)) setNonEmpty!10017))

(assert (= setNonEmpty!10017 b!1536102))

(assert (= (and b!1535884 ((_ is Cons!16268) mapDefault!7349)) b!1536104))

(declare-fun m!1811530 () Bool)

(assert (=> setNonEmpty!10017 m!1811530))

(declare-fun m!1811532 () Bool)

(assert (=> b!1536104 m!1811532))

(declare-fun tp!443010 () Bool)

(declare-fun tp!443011 () Bool)

(declare-fun b!1536105 () Bool)

(declare-fun e!982323 () Bool)

(assert (=> b!1536105 (= e!982323 (and (inv!21530 (left!13429 (c!251549 totalInput!496))) tp!443010 (inv!21530 (right!13759 (c!251549 totalInput!496))) tp!443011))))

(declare-fun b!1536107 () Bool)

(declare-fun e!982322 () Bool)

(declare-fun tp!443012 () Bool)

(assert (=> b!1536107 (= e!982322 tp!443012)))

(declare-fun b!1536106 () Bool)

(assert (=> b!1536106 (= e!982323 (and (inv!21539 (xs!8278 (c!251549 totalInput!496))) e!982322))))

(assert (=> b!1535904 (= tp!442794 (and (inv!21530 (c!251549 totalInput!496)) e!982323))))

(assert (= (and b!1535904 ((_ is Node!5478) (c!251549 totalInput!496))) b!1536105))

(assert (= b!1536106 b!1536107))

(assert (= (and b!1535904 ((_ is Leaf!8116) (c!251549 totalInput!496))) b!1536106))

(declare-fun m!1811534 () Bool)

(assert (=> b!1536105 m!1811534))

(declare-fun m!1811536 () Bool)

(assert (=> b!1536105 m!1811536))

(declare-fun m!1811538 () Bool)

(assert (=> b!1536106 m!1811538))

(assert (=> b!1535904 m!1811364))

(declare-fun tp!443014 () Bool)

(declare-fun b!1536108 () Bool)

(declare-fun e!982325 () Bool)

(declare-fun tp!443013 () Bool)

(assert (=> b!1536108 (= e!982325 (and (inv!21530 (left!13429 (c!251549 input!1460))) tp!443013 (inv!21530 (right!13759 (c!251549 input!1460))) tp!443014))))

(declare-fun b!1536110 () Bool)

(declare-fun e!982324 () Bool)

(declare-fun tp!443015 () Bool)

(assert (=> b!1536110 (= e!982324 tp!443015)))

(declare-fun b!1536109 () Bool)

(assert (=> b!1536109 (= e!982325 (and (inv!21539 (xs!8278 (c!251549 input!1460))) e!982324))))

(assert (=> b!1535877 (= tp!442818 (and (inv!21530 (c!251549 input!1460)) e!982325))))

(assert (= (and b!1535877 ((_ is Node!5478) (c!251549 input!1460))) b!1536108))

(assert (= b!1536109 b!1536110))

(assert (= (and b!1535877 ((_ is Leaf!8116) (c!251549 input!1460))) b!1536109))

(declare-fun m!1811540 () Bool)

(assert (=> b!1536108 m!1811540))

(declare-fun m!1811542 () Bool)

(assert (=> b!1536108 m!1811542))

(declare-fun m!1811544 () Bool)

(assert (=> b!1536109 m!1811544))

(assert (=> b!1535877 m!1811368))

(check-sat (not d!458220) (not setNonEmpty!10012) (not b!1536108) (not b!1536084) (not d!458202) (not b!1536080) (not b!1535986) (not b!1536060) (not b!1535916) (not b!1536087) b_and!106705 (not b!1535877) (not b!1536069) (not d!458196) (not b!1536005) (not b!1535955) (not setNonEmpty!10017) (not b_next!40519) (not b!1535974) (not b_next!40515) (not b_next!40525) (not b!1536109) (not b!1536099) (not b!1535928) (not b!1535985) (not b!1536104) (not b!1535915) (not b!1535914) b_and!106697 (not b!1536036) (not mapNonEmpty!7355) (not b!1536053) (not b!1535922) (not b!1536065) b_and!106699 (not b!1535954) (not b!1536107) (not b!1536100) (not b!1536068) (not b!1535941) (not b!1535969) (not d!458222) (not b!1535904) (not b!1536054) (not d!458188) (not b!1536025) (not setNonEmpty!9999) (not b!1536064) (not b_next!40523) (not b!1535919) (not b!1535972) b_and!106693 (not setNonEmpty!9985) (not b!1535971) (not setNonEmpty!9991) (not setNonEmpty!10009) (not b!1536082) b_and!106695 (not b!1536067) (not b!1536101) (not b!1536037) (not b!1536086) (not d!458204) (not b!1536058) (not setNonEmpty!10015) (not b!1536063) (not b!1535878) (not b_next!40521) (not b!1536055) (not b!1535949) (not b!1535970) b_and!106691 (not setNonEmpty!10000) (not b!1536027) tp_is_empty!7033 (not b!1535995) (not setNonEmpty!10013) (not b!1536079) (not b!1536023) (not b_next!40533) (not b!1536061) (not d!458194) (not d!458180) (not b!1536078) (not b_next!40517) (not b!1536059) (not setNonEmpty!10003) (not mapNonEmpty!7352) (not b!1536066) (not b!1536105) b_and!106703 (not b!1536062) (not b_next!40531) (not b!1535933) (not b!1535958) (not setNonEmpty!10008) (not b!1535987) (not b!1535957) (not b!1535996) (not setNonEmpty!9984) (not d!458192) (not b!1536081) (not b_next!40529) (not setNonEmpty!10011) (not setNonEmpty!10010) b_and!106701 (not b!1536110) (not b!1535973) (not b!1535951) b_and!106689 (not setNonEmpty!10014) (not b!1535934) (not b!1536006) (not b_next!40527) (not b!1535960) (not b!1536103) (not b!1535925) (not b!1536022) (not setNonEmpty!9990) (not setNonEmpty!9994) (not b!1536057) (not b!1536038) (not d!458174) (not setNonEmpty!10016) (not b!1536085) (not b!1536102) (not d!458184) (not d!458208) (not b!1536024) (not b!1535988) (not b!1536106) (not b!1536083) (not b!1536056) (not d!458212) (not b!1536026) (not mapNonEmpty!7358) b_and!106707)
(check-sat b_and!106705 (not b_next!40525) b_and!106697 b_and!106699 b_and!106695 (not b_next!40521) b_and!106691 b_and!106703 (not b_next!40531) b_and!106707 (not b_next!40515) (not b_next!40519) (not b_next!40523) b_and!106693 (not b_next!40517) (not b_next!40533) (not b_next!40529) b_and!106701 b_and!106689 (not b_next!40527))

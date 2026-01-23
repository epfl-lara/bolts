; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143638 () Bool)

(assert start!143638)

(declare-fun b!1550551 () Bool)

(declare-fun b_free!41155 () Bool)

(declare-fun b_next!41859 () Bool)

(assert (=> b!1550551 (= b_free!41155 (not b_next!41859))))

(declare-fun tp!453049 () Bool)

(declare-fun b_and!108245 () Bool)

(assert (=> b!1550551 (= tp!453049 b_and!108245)))

(declare-fun b!1550530 () Bool)

(declare-fun b_free!41157 () Bool)

(declare-fun b_next!41861 () Bool)

(assert (=> b!1550530 (= b_free!41157 (not b_next!41861))))

(declare-fun tp!453040 () Bool)

(declare-fun b_and!108247 () Bool)

(assert (=> b!1550530 (= tp!453040 b_and!108247)))

(declare-fun b_free!41159 () Bool)

(declare-fun b_next!41863 () Bool)

(assert (=> b!1550530 (= b_free!41159 (not b_next!41863))))

(declare-fun tp!453039 () Bool)

(declare-fun b_and!108249 () Bool)

(assert (=> b!1550530 (= tp!453039 b_and!108249)))

(declare-fun b!1550552 () Bool)

(declare-fun b_free!41161 () Bool)

(declare-fun b_next!41865 () Bool)

(assert (=> b!1550552 (= b_free!41161 (not b_next!41865))))

(declare-fun tp!453060 () Bool)

(declare-fun b_and!108251 () Bool)

(assert (=> b!1550552 (= tp!453060 b_and!108251)))

(declare-fun b!1550541 () Bool)

(declare-fun b_free!41163 () Bool)

(declare-fun b_next!41867 () Bool)

(assert (=> b!1550541 (= b_free!41163 (not b_next!41867))))

(declare-fun tp!453034 () Bool)

(declare-fun b_and!108253 () Bool)

(assert (=> b!1550541 (= tp!453034 b_and!108253)))

(declare-fun b!1550546 () Bool)

(declare-fun b_free!41165 () Bool)

(declare-fun b_next!41869 () Bool)

(assert (=> b!1550546 (= b_free!41165 (not b_next!41869))))

(declare-fun tp!453042 () Bool)

(declare-fun b_and!108255 () Bool)

(assert (=> b!1550546 (= tp!453042 b_and!108255)))

(declare-fun b!1550525 () Bool)

(declare-fun b_free!41167 () Bool)

(declare-fun b_next!41871 () Bool)

(assert (=> b!1550525 (= b_free!41167 (not b_next!41871))))

(declare-fun tp!453055 () Bool)

(declare-fun b_and!108257 () Bool)

(assert (=> b!1550525 (= tp!453055 b_and!108257)))

(declare-fun b!1550545 () Bool)

(declare-fun b_free!41169 () Bool)

(declare-fun b_next!41873 () Bool)

(assert (=> b!1550545 (= b_free!41169 (not b_next!41873))))

(declare-fun tp!453036 () Bool)

(declare-fun b_and!108259 () Bool)

(assert (=> b!1550545 (= tp!453036 b_and!108259)))

(declare-fun b!1550521 () Bool)

(declare-fun e!994387 () Bool)

(declare-fun tp!453054 () Bool)

(declare-fun mapRes!8191 () Bool)

(assert (=> b!1550521 (= e!994387 (and tp!453054 mapRes!8191))))

(declare-fun condMapEmpty!8192 () Bool)

(declare-datatypes ((C!8708 0))(
  ( (C!8709 (val!4926 Int)) )
))
(declare-datatypes ((Regex!4265 0))(
  ( (ElementMatch!4265 (c!252245 C!8708)) (Concat!7292 (regOne!9042 Regex!4265) (regTwo!9042 Regex!4265)) (EmptyExpr!4265) (Star!4265 (reg!4594 Regex!4265)) (EmptyLang!4265) (Union!4265 (regOne!9043 Regex!4265) (regTwo!9043 Regex!4265)) )
))
(declare-datatypes ((List!16822 0))(
  ( (Nil!16754) (Cons!16754 (h!22155 Regex!4265) (t!141225 List!16822)) )
))
(declare-datatypes ((Context!1566 0))(
  ( (Context!1567 (exprs!1283 List!16822)) )
))
(declare-datatypes ((tuple2!16142 0))(
  ( (tuple2!16143 (_1!9381 Context!1566) (_2!9381 C!8708)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16144 0))(
  ( (tuple2!16145 (_1!9382 tuple2!16142) (_2!9382 (InoxSet Context!1566))) )
))
(declare-datatypes ((List!16823 0))(
  ( (Nil!16755) (Cons!16755 (h!22156 tuple2!16144) (t!141226 List!16823)) )
))
(declare-datatypes ((array!6060 0))(
  ( (array!6061 (arr!2707 (Array (_ BitVec 32) List!16823)) (size!13552 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1711 0))(
  ( (HashableExt!1710 (__x!11075 Int)) )
))
(declare-datatypes ((array!6062 0))(
  ( (array!6063 (arr!2708 (Array (_ BitVec 32) (_ BitVec 64))) (size!13553 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3534 0))(
  ( (LongMapFixedSize!3535 (defaultEntry!2127 Int) (mask!4988 (_ BitVec 32)) (extraKeys!2014 (_ BitVec 32)) (zeroValue!2024 List!16823) (minValue!2024 List!16823) (_size!3615 (_ BitVec 32)) (_keys!2061 array!6062) (_values!2046 array!6060) (_vacant!1828 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6953 0))(
  ( (Cell!6954 (v!23588 LongMapFixedSize!3534)) )
))
(declare-datatypes ((MutLongMap!1767 0))(
  ( (LongMap!1767 (underlying!3743 Cell!6953)) (MutLongMapExt!1766 (__x!11076 Int)) )
))
(declare-datatypes ((Cell!6955 0))(
  ( (Cell!6956 (v!23589 MutLongMap!1767)) )
))
(declare-datatypes ((MutableMap!1711 0))(
  ( (MutableMapExt!1710 (__x!11077 Int)) (HashMap!1711 (underlying!3744 Cell!6955) (hashF!3630 Hashable!1711) (_size!3616 (_ BitVec 32)) (defaultValue!1871 Int)) )
))
(declare-datatypes ((CacheUp!1040 0))(
  ( (CacheUp!1041 (cache!2092 MutableMap!1711)) )
))
(declare-fun cacheUp!755 () CacheUp!1040)

(declare-fun mapDefault!8190 () List!16823)

(assert (=> b!1550521 (= condMapEmpty!8192 (= (arr!2707 (_values!2046 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16823)) mapDefault!8190)))))

(declare-fun b!1550522 () Bool)

(declare-fun e!994368 () Bool)

(declare-datatypes ((List!16824 0))(
  ( (Nil!16756) (Cons!16756 (h!22157 (_ BitVec 16)) (t!141227 List!16824)) )
))
(declare-datatypes ((TokenValue!3027 0))(
  ( (FloatLiteralValue!6054 (text!21634 List!16824)) (TokenValueExt!3026 (__x!11078 Int)) (Broken!15135 (value!93321 List!16824)) (Object!3094) (End!3027) (Def!3027) (Underscore!3027) (Match!3027) (Else!3027) (Error!3027) (Case!3027) (If!3027) (Extends!3027) (Abstract!3027) (Class!3027) (Val!3027) (DelimiterValue!6054 (del!3087 List!16824)) (KeywordValue!3033 (value!93322 List!16824)) (CommentValue!6054 (value!93323 List!16824)) (WhitespaceValue!6054 (value!93324 List!16824)) (IndentationValue!3027 (value!93325 List!16824)) (String!19422) (Int32!3027) (Broken!15136 (value!93326 List!16824)) (Boolean!3028) (Unit!26006) (OperatorValue!3030 (op!3087 List!16824)) (IdentifierValue!6054 (value!93327 List!16824)) (IdentifierValue!6055 (value!93328 List!16824)) (WhitespaceValue!6055 (value!93329 List!16824)) (True!6054) (False!6054) (Broken!15137 (value!93330 List!16824)) (Broken!15138 (value!93331 List!16824)) (True!6055) (RightBrace!3027) (RightBracket!3027) (Colon!3027) (Null!3027) (Comma!3027) (LeftBracket!3027) (False!6055) (LeftBrace!3027) (ImaginaryLiteralValue!3027 (text!21635 List!16824)) (StringLiteralValue!9081 (value!93332 List!16824)) (EOFValue!3027 (value!93333 List!16824)) (IdentValue!3027 (value!93334 List!16824)) (DelimiterValue!6055 (value!93335 List!16824)) (DedentValue!3027 (value!93336 List!16824)) (NewLineValue!3027 (value!93337 List!16824)) (IntegerValue!9081 (value!93338 (_ BitVec 32)) (text!21636 List!16824)) (IntegerValue!9082 (value!93339 Int) (text!21637 List!16824)) (Times!3027) (Or!3027) (Equal!3027) (Minus!3027) (Broken!15139 (value!93340 List!16824)) (And!3027) (Div!3027) (LessEqual!3027) (Mod!3027) (Concat!7293) (Not!3027) (Plus!3027) (SpaceValue!3027 (value!93341 List!16824)) (IntegerValue!9083 (value!93342 Int) (text!21638 List!16824)) (StringLiteralValue!9082 (text!21639 List!16824)) (FloatLiteralValue!6055 (text!21640 List!16824)) (BytesLiteralValue!3027 (value!93343 List!16824)) (CommentValue!6055 (value!93344 List!16824)) (StringLiteralValue!9083 (value!93345 List!16824)) (ErrorTokenValue!3027 (msg!3088 List!16824)) )
))
(declare-datatypes ((List!16825 0))(
  ( (Nil!16757) (Cons!16757 (h!22158 C!8708) (t!141228 List!16825)) )
))
(declare-datatypes ((IArray!11115 0))(
  ( (IArray!11116 (innerList!5615 List!16825)) )
))
(declare-datatypes ((Conc!5555 0))(
  ( (Node!5555 (left!13632 Conc!5555) (right!13962 Conc!5555) (csize!11340 Int) (cheight!5766 Int)) (Leaf!8233 (xs!8355 IArray!11115) (csize!11341 Int)) (Empty!5555) )
))
(declare-datatypes ((BalanceConc!11052 0))(
  ( (BalanceConc!11053 (c!252246 Conc!5555)) )
))
(declare-datatypes ((String!19423 0))(
  ( (String!19424 (value!93346 String)) )
))
(declare-datatypes ((TokenValueInjection!5714 0))(
  ( (TokenValueInjection!5715 (toValue!4300 Int) (toChars!4159 Int)) )
))
(declare-datatypes ((Rule!5674 0))(
  ( (Rule!5675 (regex!2937 Regex!4265) (tag!3201 String!19423) (isSeparator!2937 Bool) (transformation!2937 TokenValueInjection!5714)) )
))
(declare-fun rule!240 () Rule!5674)

(declare-datatypes ((tuple2!16146 0))(
  ( (tuple2!16147 (_1!9383 List!16825) (_2!9383 List!16825)) )
))
(declare-fun lt!537185 () tuple2!16146)

(declare-fun matchR!1871 (Regex!4265 List!16825) Bool)

(assert (=> b!1550522 (= e!994368 (matchR!1871 (regex!2937 rule!240) (_1!9383 lt!537185)))))

(declare-fun b!1550523 () Bool)

(declare-fun res!692909 () Bool)

(declare-fun e!994370 () Bool)

(assert (=> b!1550523 (=> (not res!692909) (not e!994370))))

(declare-fun valid!1418 (CacheUp!1040) Bool)

(assert (=> b!1550523 (= res!692909 (valid!1418 cacheUp!755))))

(declare-datatypes ((tuple3!1746 0))(
  ( (tuple3!1747 (_1!9384 (InoxSet Context!1566)) (_2!9384 Int) (_3!1310 Int)) )
))
(declare-datatypes ((tuple2!16148 0))(
  ( (tuple2!16149 (_1!9385 tuple3!1746) (_2!9385 Int)) )
))
(declare-datatypes ((List!16826 0))(
  ( (Nil!16758) (Cons!16758 (h!22159 tuple2!16148) (t!141229 List!16826)) )
))
(declare-datatypes ((array!6064 0))(
  ( (array!6065 (arr!2709 (Array (_ BitVec 32) List!16826)) (size!13554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3536 0))(
  ( (LongMapFixedSize!3537 (defaultEntry!2128 Int) (mask!4989 (_ BitVec 32)) (extraKeys!2015 (_ BitVec 32)) (zeroValue!2025 List!16826) (minValue!2025 List!16826) (_size!3617 (_ BitVec 32)) (_keys!2062 array!6062) (_values!2047 array!6064) (_vacant!1829 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6957 0))(
  ( (Cell!6958 (v!23590 LongMapFixedSize!3536)) )
))
(declare-datatypes ((Hashable!1712 0))(
  ( (HashableExt!1711 (__x!11079 Int)) )
))
(declare-datatypes ((MutLongMap!1768 0))(
  ( (LongMap!1768 (underlying!3745 Cell!6957)) (MutLongMapExt!1767 (__x!11080 Int)) )
))
(declare-datatypes ((Cell!6959 0))(
  ( (Cell!6960 (v!23591 MutLongMap!1768)) )
))
(declare-datatypes ((MutableMap!1712 0))(
  ( (MutableMapExt!1711 (__x!11081 Int)) (HashMap!1712 (underlying!3746 Cell!6959) (hashF!3631 Hashable!1712) (_size!3618 (_ BitVec 32)) (defaultValue!1872 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!466 0))(
  ( (CacheFurthestNullable!467 (cache!2093 MutableMap!1712) (totalInput!2436 BalanceConc!11052)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!466)

(declare-fun e!994365 () Bool)

(declare-fun e!994389 () Bool)

(declare-fun e!994379 () Bool)

(declare-fun b!1550524 () Bool)

(declare-fun inv!22013 (BalanceConc!11052) Bool)

(assert (=> b!1550524 (= e!994379 (and e!994389 (inv!22013 (totalInput!2436 cacheFurthestNullable!103)) e!994365))))

(declare-fun tp!453053 () Bool)

(declare-fun e!994363 () Bool)

(declare-fun tp!453047 () Bool)

(declare-fun array_inv!1946 (array!6062) Bool)

(declare-fun array_inv!1947 (array!6060) Bool)

(assert (=> b!1550525 (= e!994363 (and tp!453055 tp!453053 tp!453047 (array_inv!1946 (_keys!2061 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) (array_inv!1947 (_values!2046 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) e!994387))))

(declare-fun b!1550526 () Bool)

(declare-fun e!994386 () Bool)

(declare-fun e!994384 () Bool)

(declare-fun lt!537181 () MutLongMap!1767)

(get-info :version)

(assert (=> b!1550526 (= e!994386 (and e!994384 ((_ is LongMap!1767) lt!537181)))))

(assert (=> b!1550526 (= lt!537181 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))

(declare-fun b!1550527 () Bool)

(declare-fun e!994362 () Bool)

(declare-fun e!994393 () Bool)

(assert (=> b!1550527 (= e!994362 e!994393)))

(declare-fun mapNonEmpty!8190 () Bool)

(declare-fun tp!453056 () Bool)

(declare-fun tp!453045 () Bool)

(assert (=> mapNonEmpty!8190 (= mapRes!8191 (and tp!453056 tp!453045))))

(declare-fun mapValue!8191 () List!16823)

(declare-fun mapRest!8190 () (Array (_ BitVec 32) List!16823))

(declare-fun mapKey!8191 () (_ BitVec 32))

(assert (=> mapNonEmpty!8190 (= (arr!2707 (_values!2046 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) (store mapRest!8190 mapKey!8191 mapValue!8191))))

(declare-fun b!1550528 () Bool)

(declare-fun e!994382 () Bool)

(declare-fun e!994372 () Bool)

(assert (=> b!1550528 (= e!994382 e!994372)))

(declare-fun b!1550529 () Bool)

(declare-fun e!994390 () Bool)

(declare-fun e!994367 () Bool)

(assert (=> b!1550529 (= e!994390 e!994367)))

(declare-fun e!994388 () Bool)

(assert (=> b!1550530 (= e!994388 (and tp!453040 tp!453039))))

(declare-fun b!1550531 () Bool)

(declare-fun e!994378 () Bool)

(assert (=> b!1550531 (= e!994378 e!994362)))

(declare-fun b!1550532 () Bool)

(declare-fun e!994380 () Bool)

(assert (=> b!1550532 (= e!994370 e!994380)))

(declare-fun res!692915 () Bool)

(assert (=> b!1550532 (=> (not res!692915) (not e!994380))))

(declare-fun lt!537183 () List!16825)

(declare-fun totalInput!568 () BalanceConc!11052)

(declare-fun isSuffix!368 (List!16825 List!16825) Bool)

(declare-fun list!6476 (BalanceConc!11052) List!16825)

(assert (=> b!1550532 (= res!692915 (isSuffix!368 lt!537183 (list!6476 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11052)

(assert (=> b!1550532 (= lt!537183 (list!6476 input!1676))))

(declare-fun b!1550533 () Bool)

(declare-fun e!994392 () Bool)

(assert (=> b!1550533 (= e!994367 e!994392)))

(declare-fun b!1550534 () Bool)

(declare-fun res!692913 () Bool)

(assert (=> b!1550534 (=> (not res!692913) (not e!994380))))

(declare-datatypes ((tuple3!1748 0))(
  ( (tuple3!1749 (_1!9386 Regex!4265) (_2!9386 Context!1566) (_3!1311 C!8708)) )
))
(declare-datatypes ((tuple2!16150 0))(
  ( (tuple2!16151 (_1!9387 tuple3!1748) (_2!9387 (InoxSet Context!1566))) )
))
(declare-datatypes ((List!16827 0))(
  ( (Nil!16759) (Cons!16759 (h!22160 tuple2!16150) (t!141230 List!16827)) )
))
(declare-datatypes ((array!6066 0))(
  ( (array!6067 (arr!2710 (Array (_ BitVec 32) List!16827)) (size!13555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3538 0))(
  ( (LongMapFixedSize!3539 (defaultEntry!2129 Int) (mask!4990 (_ BitVec 32)) (extraKeys!2016 (_ BitVec 32)) (zeroValue!2026 List!16827) (minValue!2026 List!16827) (_size!3619 (_ BitVec 32)) (_keys!2063 array!6062) (_values!2048 array!6066) (_vacant!1830 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6961 0))(
  ( (Cell!6962 (v!23592 LongMapFixedSize!3538)) )
))
(declare-datatypes ((MutLongMap!1769 0))(
  ( (LongMap!1769 (underlying!3747 Cell!6961)) (MutLongMapExt!1768 (__x!11082 Int)) )
))
(declare-datatypes ((Cell!6963 0))(
  ( (Cell!6964 (v!23593 MutLongMap!1769)) )
))
(declare-datatypes ((Hashable!1713 0))(
  ( (HashableExt!1712 (__x!11083 Int)) )
))
(declare-datatypes ((MutableMap!1713 0))(
  ( (MutableMapExt!1712 (__x!11084 Int)) (HashMap!1713 (underlying!3748 Cell!6963) (hashF!3632 Hashable!1713) (_size!3620 (_ BitVec 32)) (defaultValue!1873 Int)) )
))
(declare-datatypes ((CacheDown!1044 0))(
  ( (CacheDown!1045 (cache!2094 MutableMap!1713)) )
))
(declare-fun cacheDown!768 () CacheDown!1044)

(declare-fun isEmpty!10086 (BalanceConc!11052) Bool)

(declare-datatypes ((tuple2!16152 0))(
  ( (tuple2!16153 (_1!9388 BalanceConc!11052) (_2!9388 BalanceConc!11052)) )
))
(declare-datatypes ((tuple4!874 0))(
  ( (tuple4!875 (_1!9389 tuple2!16152) (_2!9389 CacheUp!1040) (_3!1312 CacheDown!1044) (_4!437 CacheFurthestNullable!466)) )
))
(declare-fun findLongestMatchWithZipperSequenceV3Mem!42 (Regex!4265 BalanceConc!11052 BalanceConc!11052 CacheUp!1040 CacheDown!1044 CacheFurthestNullable!466) tuple4!874)

(assert (=> b!1550534 (= res!692913 (not (isEmpty!10086 (_1!9388 (_1!9389 (findLongestMatchWithZipperSequenceV3Mem!42 (regex!2937 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun res!692912 () Bool)

(assert (=> start!143638 (=> (not res!692912) (not e!994370))))

(declare-datatypes ((LexerInterface!2576 0))(
  ( (LexerInterfaceExt!2573 (__x!11085 Int)) (Lexer!2574) )
))
(declare-fun thiss!16438 () LexerInterface!2576)

(assert (=> start!143638 (= res!692912 ((_ is Lexer!2574) thiss!16438))))

(assert (=> start!143638 e!994370))

(declare-fun e!994383 () Bool)

(assert (=> start!143638 (and (inv!22013 totalInput!568) e!994383)))

(declare-fun inv!22014 (CacheUp!1040) Bool)

(assert (=> start!143638 (and (inv!22014 cacheUp!755) e!994382)))

(declare-fun inv!22015 (CacheFurthestNullable!466) Bool)

(assert (=> start!143638 (and (inv!22015 cacheFurthestNullable!103) e!994379)))

(declare-fun e!994369 () Bool)

(assert (=> start!143638 (and (inv!22013 input!1676) e!994369)))

(declare-fun e!994371 () Bool)

(assert (=> start!143638 e!994371))

(declare-fun e!994373 () Bool)

(declare-fun inv!22016 (CacheDown!1044) Bool)

(assert (=> start!143638 (and (inv!22016 cacheDown!768) e!994373)))

(assert (=> start!143638 true))

(declare-fun mapNonEmpty!8191 () Bool)

(declare-fun mapRes!8190 () Bool)

(declare-fun tp!453046 () Bool)

(declare-fun tp!453037 () Bool)

(assert (=> mapNonEmpty!8191 (= mapRes!8190 (and tp!453046 tp!453037))))

(declare-fun mapRest!8192 () (Array (_ BitVec 32) List!16826))

(declare-fun mapKey!8190 () (_ BitVec 32))

(declare-fun mapValue!8192 () List!16826)

(assert (=> mapNonEmpty!8191 (= (arr!2709 (_values!2047 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) (store mapRest!8192 mapKey!8190 mapValue!8192))))

(declare-fun b!1550535 () Bool)

(declare-fun e!994377 () Bool)

(assert (=> b!1550535 (= e!994377 e!994363)))

(declare-fun b!1550536 () Bool)

(assert (=> b!1550536 (= e!994384 e!994377)))

(declare-fun b!1550537 () Bool)

(declare-fun tp!453041 () Bool)

(declare-fun inv!22017 (Conc!5555) Bool)

(assert (=> b!1550537 (= e!994365 (and (inv!22017 (c!252246 (totalInput!2436 cacheFurthestNullable!103))) tp!453041))))

(declare-fun tp!453059 () Bool)

(declare-fun b!1550538 () Bool)

(declare-fun inv!22006 (String!19423) Bool)

(declare-fun inv!22018 (TokenValueInjection!5714) Bool)

(assert (=> b!1550538 (= e!994371 (and tp!453059 (inv!22006 (tag!3201 rule!240)) (inv!22018 (transformation!2937 rule!240)) e!994388))))

(declare-fun b!1550539 () Bool)

(declare-fun res!692914 () Bool)

(assert (=> b!1550539 (=> (not res!692914) (not e!994380))))

(assert (=> b!1550539 (= res!692914 (= (totalInput!2436 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1550540 () Bool)

(declare-fun e!994366 () Bool)

(declare-fun tp!453048 () Bool)

(declare-fun mapRes!8192 () Bool)

(assert (=> b!1550540 (= e!994366 (and tp!453048 mapRes!8192))))

(declare-fun condMapEmpty!8190 () Bool)

(declare-fun mapDefault!8192 () List!16827)

(assert (=> b!1550540 (= condMapEmpty!8190 (= (arr!2710 (_values!2048 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16827)) mapDefault!8192)))))

(assert (=> b!1550541 (= e!994372 (and e!994386 tp!453034))))

(declare-fun b!1550542 () Bool)

(declare-fun res!692911 () Bool)

(assert (=> b!1550542 (=> (not res!692911) (not e!994370))))

(declare-fun valid!1419 (CacheFurthestNullable!466) Bool)

(assert (=> b!1550542 (= res!692911 (valid!1419 cacheFurthestNullable!103))))

(declare-fun b!1550543 () Bool)

(declare-fun tp!453057 () Bool)

(assert (=> b!1550543 (= e!994369 (and (inv!22017 (c!252246 input!1676)) tp!453057))))

(declare-fun b!1550544 () Bool)

(declare-fun e!994364 () Bool)

(declare-fun lt!537187 () MutLongMap!1768)

(assert (=> b!1550544 (= e!994364 (and e!994378 ((_ is LongMap!1768) lt!537187)))))

(assert (=> b!1550544 (= lt!537187 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))

(assert (=> b!1550545 (= e!994389 (and e!994364 tp!453036))))

(declare-fun tp!453044 () Bool)

(declare-fun e!994375 () Bool)

(declare-fun tp!453043 () Bool)

(declare-fun array_inv!1948 (array!6064) Bool)

(assert (=> b!1550546 (= e!994393 (and tp!453042 tp!453044 tp!453043 (array_inv!1946 (_keys!2062 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) (array_inv!1948 (_values!2047 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) e!994375))))

(declare-fun b!1550547 () Bool)

(declare-fun e!994376 () Bool)

(declare-fun lt!537184 () MutLongMap!1769)

(assert (=> b!1550547 (= e!994376 (and e!994390 ((_ is LongMap!1769) lt!537184)))))

(assert (=> b!1550547 (= lt!537184 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))

(declare-fun b!1550548 () Bool)

(declare-fun tp!453035 () Bool)

(assert (=> b!1550548 (= e!994383 (and (inv!22017 (c!252246 totalInput!568)) tp!453035))))

(declare-fun b!1550549 () Bool)

(declare-fun res!692916 () Bool)

(assert (=> b!1550549 (=> (not res!692916) (not e!994370))))

(declare-fun ruleValid!677 (LexerInterface!2576 Rule!5674) Bool)

(assert (=> b!1550549 (= res!692916 (ruleValid!677 thiss!16438 rule!240))))

(declare-fun mapIsEmpty!8190 () Bool)

(assert (=> mapIsEmpty!8190 mapRes!8191))

(declare-fun b!1550550 () Bool)

(declare-fun e!994391 () Bool)

(assert (=> b!1550550 (= e!994373 e!994391)))

(declare-fun mapIsEmpty!8191 () Bool)

(assert (=> mapIsEmpty!8191 mapRes!8190))

(declare-fun tp!453058 () Bool)

(declare-fun tp!453050 () Bool)

(declare-fun array_inv!1949 (array!6066) Bool)

(assert (=> b!1550551 (= e!994392 (and tp!453049 tp!453058 tp!453050 (array_inv!1946 (_keys!2063 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) (array_inv!1949 (_values!2048 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) e!994366))))

(assert (=> b!1550552 (= e!994391 (and e!994376 tp!453060))))

(declare-fun b!1550553 () Bool)

(declare-fun res!692910 () Bool)

(assert (=> b!1550553 (=> (not res!692910) (not e!994370))))

(declare-fun valid!1420 (CacheDown!1044) Bool)

(assert (=> b!1550553 (= res!692910 (valid!1420 cacheDown!768))))

(declare-fun mapNonEmpty!8192 () Bool)

(declare-fun tp!453052 () Bool)

(declare-fun tp!453051 () Bool)

(assert (=> mapNonEmpty!8192 (= mapRes!8192 (and tp!453052 tp!453051))))

(declare-fun mapKey!8192 () (_ BitVec 32))

(declare-fun mapRest!8191 () (Array (_ BitVec 32) List!16827))

(declare-fun mapValue!8190 () List!16827)

(assert (=> mapNonEmpty!8192 (= (arr!2710 (_values!2048 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) (store mapRest!8191 mapKey!8192 mapValue!8190))))

(declare-fun b!1550554 () Bool)

(declare-fun semiInverseModEq!1104 (Int Int) Bool)

(assert (=> b!1550554 (= e!994380 (not (semiInverseModEq!1104 (toChars!4159 (transformation!2937 rule!240)) (toValue!4300 (transformation!2937 rule!240)))))))

(declare-datatypes ((Unit!26007 0))(
  ( (Unit!26008) )
))
(declare-fun lt!537186 () Unit!26007)

(declare-fun lemmaInv!418 (TokenValueInjection!5714) Unit!26007)

(assert (=> b!1550554 (= lt!537186 (lemmaInv!418 (transformation!2937 rule!240)))))

(assert (=> b!1550554 e!994368))

(declare-fun res!692917 () Bool)

(assert (=> b!1550554 (=> res!692917 e!994368)))

(declare-fun isEmpty!10087 (List!16825) Bool)

(assert (=> b!1550554 (= res!692917 (isEmpty!10087 (_1!9383 lt!537185)))))

(declare-fun findLongestMatchInner!324 (Regex!4265 List!16825 Int List!16825 List!16825 Int) tuple2!16146)

(declare-fun size!13556 (List!16825) Int)

(assert (=> b!1550554 (= lt!537185 (findLongestMatchInner!324 (regex!2937 rule!240) Nil!16757 (size!13556 Nil!16757) lt!537183 lt!537183 (size!13556 lt!537183)))))

(declare-fun lt!537182 () Unit!26007)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!308 (Regex!4265 List!16825) Unit!26007)

(assert (=> b!1550554 (= lt!537182 (longestMatchIsAcceptedByMatchOrIsEmpty!308 (regex!2937 rule!240) lt!537183))))

(declare-fun mapIsEmpty!8192 () Bool)

(assert (=> mapIsEmpty!8192 mapRes!8192))

(declare-fun b!1550555 () Bool)

(declare-fun tp!453038 () Bool)

(assert (=> b!1550555 (= e!994375 (and tp!453038 mapRes!8190))))

(declare-fun condMapEmpty!8191 () Bool)

(declare-fun mapDefault!8191 () List!16826)

(assert (=> b!1550555 (= condMapEmpty!8191 (= (arr!2709 (_values!2047 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16826)) mapDefault!8191)))))

(assert (= (and start!143638 res!692912) b!1550549))

(assert (= (and b!1550549 res!692916) b!1550523))

(assert (= (and b!1550523 res!692909) b!1550553))

(assert (= (and b!1550553 res!692910) b!1550542))

(assert (= (and b!1550542 res!692911) b!1550532))

(assert (= (and b!1550532 res!692915) b!1550539))

(assert (= (and b!1550539 res!692914) b!1550534))

(assert (= (and b!1550534 res!692913) b!1550554))

(assert (= (and b!1550554 (not res!692917)) b!1550522))

(assert (= start!143638 b!1550548))

(assert (= (and b!1550521 condMapEmpty!8192) mapIsEmpty!8190))

(assert (= (and b!1550521 (not condMapEmpty!8192)) mapNonEmpty!8190))

(assert (= b!1550525 b!1550521))

(assert (= b!1550535 b!1550525))

(assert (= b!1550536 b!1550535))

(assert (= (and b!1550526 ((_ is LongMap!1767) (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))) b!1550536))

(assert (= b!1550541 b!1550526))

(assert (= (and b!1550528 ((_ is HashMap!1711) (cache!2092 cacheUp!755))) b!1550541))

(assert (= start!143638 b!1550528))

(assert (= (and b!1550555 condMapEmpty!8191) mapIsEmpty!8191))

(assert (= (and b!1550555 (not condMapEmpty!8191)) mapNonEmpty!8191))

(assert (= b!1550546 b!1550555))

(assert (= b!1550527 b!1550546))

(assert (= b!1550531 b!1550527))

(assert (= (and b!1550544 ((_ is LongMap!1768) (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))) b!1550531))

(assert (= b!1550545 b!1550544))

(assert (= (and b!1550524 ((_ is HashMap!1712) (cache!2093 cacheFurthestNullable!103))) b!1550545))

(assert (= b!1550524 b!1550537))

(assert (= start!143638 b!1550524))

(assert (= start!143638 b!1550543))

(assert (= b!1550538 b!1550530))

(assert (= start!143638 b!1550538))

(assert (= (and b!1550540 condMapEmpty!8190) mapIsEmpty!8192))

(assert (= (and b!1550540 (not condMapEmpty!8190)) mapNonEmpty!8192))

(assert (= b!1550551 b!1550540))

(assert (= b!1550533 b!1550551))

(assert (= b!1550529 b!1550533))

(assert (= (and b!1550547 ((_ is LongMap!1769) (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))) b!1550529))

(assert (= b!1550552 b!1550547))

(assert (= (and b!1550550 ((_ is HashMap!1713) (cache!2094 cacheDown!768))) b!1550552))

(assert (= start!143638 b!1550550))

(declare-fun m!1823231 () Bool)

(assert (=> b!1550523 m!1823231))

(declare-fun m!1823233 () Bool)

(assert (=> b!1550525 m!1823233))

(declare-fun m!1823235 () Bool)

(assert (=> b!1550525 m!1823235))

(declare-fun m!1823237 () Bool)

(assert (=> b!1550542 m!1823237))

(declare-fun m!1823239 () Bool)

(assert (=> start!143638 m!1823239))

(declare-fun m!1823241 () Bool)

(assert (=> start!143638 m!1823241))

(declare-fun m!1823243 () Bool)

(assert (=> start!143638 m!1823243))

(declare-fun m!1823245 () Bool)

(assert (=> start!143638 m!1823245))

(declare-fun m!1823247 () Bool)

(assert (=> start!143638 m!1823247))

(declare-fun m!1823249 () Bool)

(assert (=> b!1550522 m!1823249))

(declare-fun m!1823251 () Bool)

(assert (=> b!1550554 m!1823251))

(declare-fun m!1823253 () Bool)

(assert (=> b!1550554 m!1823253))

(declare-fun m!1823255 () Bool)

(assert (=> b!1550554 m!1823255))

(assert (=> b!1550554 m!1823253))

(declare-fun m!1823257 () Bool)

(assert (=> b!1550554 m!1823257))

(declare-fun m!1823259 () Bool)

(assert (=> b!1550554 m!1823259))

(declare-fun m!1823261 () Bool)

(assert (=> b!1550554 m!1823261))

(assert (=> b!1550554 m!1823257))

(declare-fun m!1823263 () Bool)

(assert (=> b!1550554 m!1823263))

(declare-fun m!1823265 () Bool)

(assert (=> mapNonEmpty!8192 m!1823265))

(declare-fun m!1823267 () Bool)

(assert (=> b!1550546 m!1823267))

(declare-fun m!1823269 () Bool)

(assert (=> b!1550546 m!1823269))

(declare-fun m!1823271 () Bool)

(assert (=> b!1550543 m!1823271))

(declare-fun m!1823273 () Bool)

(assert (=> b!1550537 m!1823273))

(declare-fun m!1823275 () Bool)

(assert (=> mapNonEmpty!8191 m!1823275))

(declare-fun m!1823277 () Bool)

(assert (=> mapNonEmpty!8190 m!1823277))

(declare-fun m!1823279 () Bool)

(assert (=> b!1550532 m!1823279))

(assert (=> b!1550532 m!1823279))

(declare-fun m!1823281 () Bool)

(assert (=> b!1550532 m!1823281))

(declare-fun m!1823283 () Bool)

(assert (=> b!1550532 m!1823283))

(declare-fun m!1823285 () Bool)

(assert (=> b!1550551 m!1823285))

(declare-fun m!1823287 () Bool)

(assert (=> b!1550551 m!1823287))

(declare-fun m!1823289 () Bool)

(assert (=> b!1550548 m!1823289))

(declare-fun m!1823291 () Bool)

(assert (=> b!1550549 m!1823291))

(declare-fun m!1823293 () Bool)

(assert (=> b!1550524 m!1823293))

(declare-fun m!1823295 () Bool)

(assert (=> b!1550553 m!1823295))

(declare-fun m!1823297 () Bool)

(assert (=> b!1550538 m!1823297))

(declare-fun m!1823299 () Bool)

(assert (=> b!1550538 m!1823299))

(declare-fun m!1823301 () Bool)

(assert (=> b!1550534 m!1823301))

(declare-fun m!1823303 () Bool)

(assert (=> b!1550534 m!1823303))

(check-sat b_and!108255 b_and!108253 b_and!108247 (not b!1550537) (not mapNonEmpty!8191) (not b!1550523) (not b!1550554) (not b!1550546) (not start!143638) (not b_next!41861) (not b!1550534) (not b!1550549) (not b!1550553) b_and!108245 (not b!1550551) (not b!1550542) (not b_next!41865) b_and!108259 (not b!1550524) (not b!1550548) (not b_next!41869) (not b!1550532) (not b!1550521) (not b_next!41873) (not b_next!41871) b_and!108249 (not b!1550525) (not mapNonEmpty!8190) b_and!108251 (not mapNonEmpty!8192) (not b!1550540) (not b!1550555) (not b_next!41867) (not b_next!41863) (not b!1550522) (not b!1550543) b_and!108257 (not b_next!41859) (not b!1550538))
(check-sat b_and!108245 b_and!108255 b_and!108253 (not b_next!41869) b_and!108247 (not b_next!41873) b_and!108251 (not b_next!41861) b_and!108257 (not b_next!41859) (not b_next!41865) b_and!108259 (not b_next!41871) b_and!108249 (not b_next!41867) (not b_next!41863))
(get-model)

(declare-fun d!460174 () Bool)

(declare-fun c!252249 () Bool)

(assert (=> d!460174 (= c!252249 ((_ is Node!5555) (c!252246 input!1676)))))

(declare-fun e!994398 () Bool)

(assert (=> d!460174 (= (inv!22017 (c!252246 input!1676)) e!994398)))

(declare-fun b!1550562 () Bool)

(declare-fun inv!22019 (Conc!5555) Bool)

(assert (=> b!1550562 (= e!994398 (inv!22019 (c!252246 input!1676)))))

(declare-fun b!1550563 () Bool)

(declare-fun e!994399 () Bool)

(assert (=> b!1550563 (= e!994398 e!994399)))

(declare-fun res!692922 () Bool)

(assert (=> b!1550563 (= res!692922 (not ((_ is Leaf!8233) (c!252246 input!1676))))))

(assert (=> b!1550563 (=> res!692922 e!994399)))

(declare-fun b!1550564 () Bool)

(declare-fun inv!22020 (Conc!5555) Bool)

(assert (=> b!1550564 (= e!994399 (inv!22020 (c!252246 input!1676)))))

(assert (= (and d!460174 c!252249) b!1550562))

(assert (= (and d!460174 (not c!252249)) b!1550563))

(assert (= (and b!1550563 (not res!692922)) b!1550564))

(declare-fun m!1823305 () Bool)

(assert (=> b!1550562 m!1823305))

(declare-fun m!1823307 () Bool)

(assert (=> b!1550564 m!1823307))

(assert (=> b!1550543 d!460174))

(declare-fun d!460176 () Bool)

(declare-fun isBalanced!1638 (Conc!5555) Bool)

(assert (=> d!460176 (= (inv!22013 (totalInput!2436 cacheFurthestNullable!103)) (isBalanced!1638 (c!252246 (totalInput!2436 cacheFurthestNullable!103))))))

(declare-fun bs!387081 () Bool)

(assert (= bs!387081 d!460176))

(declare-fun m!1823309 () Bool)

(assert (=> bs!387081 m!1823309))

(assert (=> b!1550524 d!460176))

(declare-fun d!460178 () Bool)

(declare-fun validCacheMapUp!156 (MutableMap!1711) Bool)

(assert (=> d!460178 (= (valid!1418 cacheUp!755) (validCacheMapUp!156 (cache!2092 cacheUp!755)))))

(declare-fun bs!387082 () Bool)

(assert (= bs!387082 d!460178))

(declare-fun m!1823311 () Bool)

(assert (=> bs!387082 m!1823311))

(assert (=> b!1550523 d!460178))

(declare-fun d!460180 () Bool)

(assert (=> d!460180 (= (array_inv!1946 (_keys!2063 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) (bvsge (size!13553 (_keys!2063 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1550551 d!460180))

(declare-fun d!460182 () Bool)

(assert (=> d!460182 (= (array_inv!1949 (_values!2048 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) (bvsge (size!13555 (_values!2048 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1550551 d!460182))

(declare-fun d!460184 () Bool)

(assert (=> d!460184 (= (array_inv!1946 (_keys!2061 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) (bvsge (size!13553 (_keys!2061 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1550525 d!460184))

(declare-fun d!460186 () Bool)

(assert (=> d!460186 (= (array_inv!1947 (_values!2046 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) (bvsge (size!13552 (_values!2046 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1550525 d!460186))

(declare-fun d!460188 () Bool)

(declare-fun validCacheMapDown!156 (MutableMap!1713) Bool)

(assert (=> d!460188 (= (valid!1420 cacheDown!768) (validCacheMapDown!156 (cache!2094 cacheDown!768)))))

(declare-fun bs!387083 () Bool)

(assert (= bs!387083 d!460188))

(declare-fun m!1823313 () Bool)

(assert (=> bs!387083 m!1823313))

(assert (=> b!1550553 d!460188))

(declare-fun lt!537190 () Bool)

(declare-fun d!460190 () Bool)

(assert (=> d!460190 (= lt!537190 (isEmpty!10087 (list!6476 (_1!9388 (_1!9389 (findLongestMatchWithZipperSequenceV3Mem!42 (regex!2937 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun isEmpty!10088 (Conc!5555) Bool)

(assert (=> d!460190 (= lt!537190 (isEmpty!10088 (c!252246 (_1!9388 (_1!9389 (findLongestMatchWithZipperSequenceV3Mem!42 (regex!2937 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(assert (=> d!460190 (= (isEmpty!10086 (_1!9388 (_1!9389 (findLongestMatchWithZipperSequenceV3Mem!42 (regex!2937 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103)))) lt!537190)))

(declare-fun bs!387084 () Bool)

(assert (= bs!387084 d!460190))

(declare-fun m!1823315 () Bool)

(assert (=> bs!387084 m!1823315))

(assert (=> bs!387084 m!1823315))

(declare-fun m!1823317 () Bool)

(assert (=> bs!387084 m!1823317))

(declare-fun m!1823319 () Bool)

(assert (=> bs!387084 m!1823319))

(assert (=> b!1550534 d!460190))

(declare-fun b!1550574 () Bool)

(declare-fun res!692934 () Bool)

(declare-fun e!994402 () Bool)

(assert (=> b!1550574 (=> (not res!692934) (not e!994402))))

(declare-fun lt!537193 () tuple4!874)

(assert (=> b!1550574 (= res!692934 (valid!1418 (_2!9389 lt!537193)))))

(declare-fun b!1550576 () Bool)

(assert (=> b!1550576 (= e!994402 (= (totalInput!2436 (_4!437 lt!537193)) totalInput!568))))

(declare-fun b!1550573 () Bool)

(declare-fun res!692932 () Bool)

(assert (=> b!1550573 (=> (not res!692932) (not e!994402))))

(assert (=> b!1550573 (= res!692932 (valid!1420 (_3!1312 lt!537193)))))

(declare-fun d!460192 () Bool)

(assert (=> d!460192 e!994402))

(declare-fun res!692931 () Bool)

(assert (=> d!460192 (=> (not res!692931) (not e!994402))))

(declare-fun findLongestMatch!256 (Regex!4265 List!16825) tuple2!16146)

(assert (=> d!460192 (= res!692931 (= (tuple2!16147 (list!6476 (_1!9388 (_1!9389 lt!537193))) (list!6476 (_2!9388 (_1!9389 lt!537193)))) (findLongestMatch!256 (regex!2937 rule!240) (list!6476 input!1676))))))

(declare-fun choose!9243 (Regex!4265 BalanceConc!11052 BalanceConc!11052 CacheUp!1040 CacheDown!1044 CacheFurthestNullable!466) tuple4!874)

(assert (=> d!460192 (= lt!537193 (choose!9243 (regex!2937 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun validRegex!1706 (Regex!4265) Bool)

(assert (=> d!460192 (validRegex!1706 (regex!2937 rule!240))))

(assert (=> d!460192 (= (findLongestMatchWithZipperSequenceV3Mem!42 (regex!2937 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!537193)))

(declare-fun b!1550575 () Bool)

(declare-fun res!692933 () Bool)

(assert (=> b!1550575 (=> (not res!692933) (not e!994402))))

(assert (=> b!1550575 (= res!692933 (valid!1419 (_4!437 lt!537193)))))

(assert (= (and d!460192 res!692931) b!1550573))

(assert (= (and b!1550573 res!692932) b!1550574))

(assert (= (and b!1550574 res!692934) b!1550575))

(assert (= (and b!1550575 res!692933) b!1550576))

(declare-fun m!1823321 () Bool)

(assert (=> b!1550574 m!1823321))

(declare-fun m!1823323 () Bool)

(assert (=> b!1550573 m!1823323))

(assert (=> d!460192 m!1823283))

(declare-fun m!1823325 () Bool)

(assert (=> d!460192 m!1823325))

(declare-fun m!1823327 () Bool)

(assert (=> d!460192 m!1823327))

(declare-fun m!1823329 () Bool)

(assert (=> d!460192 m!1823329))

(declare-fun m!1823331 () Bool)

(assert (=> d!460192 m!1823331))

(assert (=> d!460192 m!1823283))

(declare-fun m!1823333 () Bool)

(assert (=> d!460192 m!1823333))

(declare-fun m!1823335 () Bool)

(assert (=> b!1550575 m!1823335))

(assert (=> b!1550534 d!460192))

(declare-fun d!460194 () Bool)

(declare-fun e!994405 () Bool)

(assert (=> d!460194 e!994405))

(declare-fun res!692937 () Bool)

(assert (=> d!460194 (=> res!692937 e!994405)))

(declare-fun lt!537196 () Bool)

(assert (=> d!460194 (= res!692937 (not lt!537196))))

(declare-fun drop!780 (List!16825 Int) List!16825)

(assert (=> d!460194 (= lt!537196 (= lt!537183 (drop!780 (list!6476 totalInput!568) (- (size!13556 (list!6476 totalInput!568)) (size!13556 lt!537183)))))))

(assert (=> d!460194 (= (isSuffix!368 lt!537183 (list!6476 totalInput!568)) lt!537196)))

(declare-fun b!1550579 () Bool)

(assert (=> b!1550579 (= e!994405 (>= (size!13556 (list!6476 totalInput!568)) (size!13556 lt!537183)))))

(assert (= (and d!460194 (not res!692937)) b!1550579))

(assert (=> d!460194 m!1823279))

(declare-fun m!1823337 () Bool)

(assert (=> d!460194 m!1823337))

(assert (=> d!460194 m!1823257))

(assert (=> d!460194 m!1823279))

(declare-fun m!1823339 () Bool)

(assert (=> d!460194 m!1823339))

(assert (=> b!1550579 m!1823279))

(assert (=> b!1550579 m!1823337))

(assert (=> b!1550579 m!1823257))

(assert (=> b!1550532 d!460194))

(declare-fun d!460196 () Bool)

(declare-fun list!6477 (Conc!5555) List!16825)

(assert (=> d!460196 (= (list!6476 totalInput!568) (list!6477 (c!252246 totalInput!568)))))

(declare-fun bs!387085 () Bool)

(assert (= bs!387085 d!460196))

(declare-fun m!1823341 () Bool)

(assert (=> bs!387085 m!1823341))

(assert (=> b!1550532 d!460196))

(declare-fun d!460198 () Bool)

(assert (=> d!460198 (= (list!6476 input!1676) (list!6477 (c!252246 input!1676)))))

(declare-fun bs!387086 () Bool)

(assert (= bs!387086 d!460198))

(declare-fun m!1823343 () Bool)

(assert (=> bs!387086 m!1823343))

(assert (=> b!1550532 d!460198))

(declare-fun d!460200 () Bool)

(declare-fun validCacheMapFurthestNullable!69 (MutableMap!1712 BalanceConc!11052) Bool)

(assert (=> d!460200 (= (valid!1419 cacheFurthestNullable!103) (validCacheMapFurthestNullable!69 (cache!2093 cacheFurthestNullable!103) (totalInput!2436 cacheFurthestNullable!103)))))

(declare-fun bs!387087 () Bool)

(assert (= bs!387087 d!460200))

(declare-fun m!1823345 () Bool)

(assert (=> bs!387087 m!1823345))

(assert (=> b!1550542 d!460200))

(declare-fun b!1550608 () Bool)

(declare-fun res!692959 () Bool)

(declare-fun e!994422 () Bool)

(assert (=> b!1550608 (=> res!692959 e!994422)))

(declare-fun e!994425 () Bool)

(assert (=> b!1550608 (= res!692959 e!994425)))

(declare-fun res!692957 () Bool)

(assert (=> b!1550608 (=> (not res!692957) (not e!994425))))

(declare-fun lt!537199 () Bool)

(assert (=> b!1550608 (= res!692957 lt!537199)))

(declare-fun b!1550609 () Bool)

(declare-fun res!692956 () Bool)

(assert (=> b!1550609 (=> res!692956 e!994422)))

(assert (=> b!1550609 (= res!692956 (not ((_ is ElementMatch!4265) (regex!2937 rule!240))))))

(declare-fun e!994424 () Bool)

(assert (=> b!1550609 (= e!994424 e!994422)))

(declare-fun bm!101755 () Bool)

(declare-fun call!101760 () Bool)

(assert (=> bm!101755 (= call!101760 (isEmpty!10087 (_1!9383 lt!537185)))))

(declare-fun b!1550610 () Bool)

(declare-fun res!692961 () Bool)

(assert (=> b!1550610 (=> (not res!692961) (not e!994425))))

(assert (=> b!1550610 (= res!692961 (not call!101760))))

(declare-fun b!1550611 () Bool)

(declare-fun res!692960 () Bool)

(declare-fun e!994426 () Bool)

(assert (=> b!1550611 (=> res!692960 e!994426)))

(declare-fun tail!2203 (List!16825) List!16825)

(assert (=> b!1550611 (= res!692960 (not (isEmpty!10087 (tail!2203 (_1!9383 lt!537185)))))))

(declare-fun b!1550612 () Bool)

(declare-fun e!994421 () Bool)

(assert (=> b!1550612 (= e!994421 e!994426)))

(declare-fun res!692954 () Bool)

(assert (=> b!1550612 (=> res!692954 e!994426)))

(assert (=> b!1550612 (= res!692954 call!101760)))

(declare-fun b!1550613 () Bool)

(assert (=> b!1550613 (= e!994424 (not lt!537199))))

(declare-fun b!1550614 () Bool)

(declare-fun e!994420 () Bool)

(assert (=> b!1550614 (= e!994420 e!994424)))

(declare-fun c!252257 () Bool)

(assert (=> b!1550614 (= c!252257 ((_ is EmptyLang!4265) (regex!2937 rule!240)))))

(declare-fun b!1550615 () Bool)

(declare-fun head!3108 (List!16825) C!8708)

(assert (=> b!1550615 (= e!994426 (not (= (head!3108 (_1!9383 lt!537185)) (c!252245 (regex!2937 rule!240)))))))

(declare-fun b!1550616 () Bool)

(assert (=> b!1550616 (= e!994420 (= lt!537199 call!101760))))

(declare-fun b!1550618 () Bool)

(declare-fun res!692958 () Bool)

(assert (=> b!1550618 (=> (not res!692958) (not e!994425))))

(assert (=> b!1550618 (= res!692958 (isEmpty!10087 (tail!2203 (_1!9383 lt!537185))))))

(declare-fun b!1550619 () Bool)

(declare-fun e!994423 () Bool)

(declare-fun derivativeStep!1017 (Regex!4265 C!8708) Regex!4265)

(assert (=> b!1550619 (= e!994423 (matchR!1871 (derivativeStep!1017 (regex!2937 rule!240) (head!3108 (_1!9383 lt!537185))) (tail!2203 (_1!9383 lt!537185))))))

(declare-fun b!1550620 () Bool)

(assert (=> b!1550620 (= e!994425 (= (head!3108 (_1!9383 lt!537185)) (c!252245 (regex!2937 rule!240))))))

(declare-fun b!1550621 () Bool)

(assert (=> b!1550621 (= e!994422 e!994421)))

(declare-fun res!692955 () Bool)

(assert (=> b!1550621 (=> (not res!692955) (not e!994421))))

(assert (=> b!1550621 (= res!692955 (not lt!537199))))

(declare-fun b!1550617 () Bool)

(declare-fun nullable!1265 (Regex!4265) Bool)

(assert (=> b!1550617 (= e!994423 (nullable!1265 (regex!2937 rule!240)))))

(declare-fun d!460202 () Bool)

(assert (=> d!460202 e!994420))

(declare-fun c!252256 () Bool)

(assert (=> d!460202 (= c!252256 ((_ is EmptyExpr!4265) (regex!2937 rule!240)))))

(assert (=> d!460202 (= lt!537199 e!994423)))

(declare-fun c!252258 () Bool)

(assert (=> d!460202 (= c!252258 (isEmpty!10087 (_1!9383 lt!537185)))))

(assert (=> d!460202 (validRegex!1706 (regex!2937 rule!240))))

(assert (=> d!460202 (= (matchR!1871 (regex!2937 rule!240) (_1!9383 lt!537185)) lt!537199)))

(assert (= (and d!460202 c!252258) b!1550617))

(assert (= (and d!460202 (not c!252258)) b!1550619))

(assert (= (and d!460202 c!252256) b!1550616))

(assert (= (and d!460202 (not c!252256)) b!1550614))

(assert (= (and b!1550614 c!252257) b!1550613))

(assert (= (and b!1550614 (not c!252257)) b!1550609))

(assert (= (and b!1550609 (not res!692956)) b!1550608))

(assert (= (and b!1550608 res!692957) b!1550610))

(assert (= (and b!1550610 res!692961) b!1550618))

(assert (= (and b!1550618 res!692958) b!1550620))

(assert (= (and b!1550608 (not res!692959)) b!1550621))

(assert (= (and b!1550621 res!692955) b!1550612))

(assert (= (and b!1550612 (not res!692954)) b!1550611))

(assert (= (and b!1550611 (not res!692960)) b!1550615))

(assert (= (or b!1550616 b!1550610 b!1550612) bm!101755))

(declare-fun m!1823347 () Bool)

(assert (=> b!1550620 m!1823347))

(declare-fun m!1823349 () Bool)

(assert (=> b!1550618 m!1823349))

(assert (=> b!1550618 m!1823349))

(declare-fun m!1823351 () Bool)

(assert (=> b!1550618 m!1823351))

(assert (=> b!1550615 m!1823347))

(assert (=> d!460202 m!1823261))

(assert (=> d!460202 m!1823327))

(assert (=> bm!101755 m!1823261))

(declare-fun m!1823353 () Bool)

(assert (=> b!1550617 m!1823353))

(assert (=> b!1550619 m!1823347))

(assert (=> b!1550619 m!1823347))

(declare-fun m!1823355 () Bool)

(assert (=> b!1550619 m!1823355))

(assert (=> b!1550619 m!1823349))

(assert (=> b!1550619 m!1823355))

(assert (=> b!1550619 m!1823349))

(declare-fun m!1823357 () Bool)

(assert (=> b!1550619 m!1823357))

(assert (=> b!1550611 m!1823349))

(assert (=> b!1550611 m!1823349))

(assert (=> b!1550611 m!1823351))

(assert (=> b!1550522 d!460202))

(declare-fun d!460204 () Bool)

(assert (=> d!460204 (= (inv!22013 totalInput!568) (isBalanced!1638 (c!252246 totalInput!568)))))

(declare-fun bs!387088 () Bool)

(assert (= bs!387088 d!460204))

(declare-fun m!1823359 () Bool)

(assert (=> bs!387088 m!1823359))

(assert (=> start!143638 d!460204))

(declare-fun d!460206 () Bool)

(declare-fun res!692964 () Bool)

(declare-fun e!994429 () Bool)

(assert (=> d!460206 (=> (not res!692964) (not e!994429))))

(assert (=> d!460206 (= res!692964 ((_ is HashMap!1713) (cache!2094 cacheDown!768)))))

(assert (=> d!460206 (= (inv!22016 cacheDown!768) e!994429)))

(declare-fun b!1550624 () Bool)

(assert (=> b!1550624 (= e!994429 (validCacheMapDown!156 (cache!2094 cacheDown!768)))))

(assert (= (and d!460206 res!692964) b!1550624))

(assert (=> b!1550624 m!1823313))

(assert (=> start!143638 d!460206))

(declare-fun d!460208 () Bool)

(declare-fun res!692967 () Bool)

(declare-fun e!994432 () Bool)

(assert (=> d!460208 (=> (not res!692967) (not e!994432))))

(assert (=> d!460208 (= res!692967 ((_ is HashMap!1711) (cache!2092 cacheUp!755)))))

(assert (=> d!460208 (= (inv!22014 cacheUp!755) e!994432)))

(declare-fun b!1550627 () Bool)

(assert (=> b!1550627 (= e!994432 (validCacheMapUp!156 (cache!2092 cacheUp!755)))))

(assert (= (and d!460208 res!692967) b!1550627))

(assert (=> b!1550627 m!1823311))

(assert (=> start!143638 d!460208))

(declare-fun d!460210 () Bool)

(assert (=> d!460210 (= (inv!22013 input!1676) (isBalanced!1638 (c!252246 input!1676)))))

(declare-fun bs!387089 () Bool)

(assert (= bs!387089 d!460210))

(declare-fun m!1823361 () Bool)

(assert (=> bs!387089 m!1823361))

(assert (=> start!143638 d!460210))

(declare-fun d!460212 () Bool)

(declare-fun res!692970 () Bool)

(declare-fun e!994435 () Bool)

(assert (=> d!460212 (=> (not res!692970) (not e!994435))))

(assert (=> d!460212 (= res!692970 ((_ is HashMap!1712) (cache!2093 cacheFurthestNullable!103)))))

(assert (=> d!460212 (= (inv!22015 cacheFurthestNullable!103) e!994435)))

(declare-fun b!1550630 () Bool)

(assert (=> b!1550630 (= e!994435 (validCacheMapFurthestNullable!69 (cache!2093 cacheFurthestNullable!103) (totalInput!2436 cacheFurthestNullable!103)))))

(assert (= (and d!460212 res!692970) b!1550630))

(assert (=> b!1550630 m!1823345))

(assert (=> start!143638 d!460212))

(declare-fun d!460214 () Bool)

(assert (=> d!460214 (= (inv!22006 (tag!3201 rule!240)) (= (mod (str.len (value!93346 (tag!3201 rule!240))) 2) 0))))

(assert (=> b!1550538 d!460214))

(declare-fun d!460216 () Bool)

(declare-fun res!692973 () Bool)

(declare-fun e!994438 () Bool)

(assert (=> d!460216 (=> (not res!692973) (not e!994438))))

(assert (=> d!460216 (= res!692973 (semiInverseModEq!1104 (toChars!4159 (transformation!2937 rule!240)) (toValue!4300 (transformation!2937 rule!240))))))

(assert (=> d!460216 (= (inv!22018 (transformation!2937 rule!240)) e!994438)))

(declare-fun b!1550633 () Bool)

(declare-fun equivClasses!1051 (Int Int) Bool)

(assert (=> b!1550633 (= e!994438 (equivClasses!1051 (toChars!4159 (transformation!2937 rule!240)) (toValue!4300 (transformation!2937 rule!240))))))

(assert (= (and d!460216 res!692973) b!1550633))

(assert (=> d!460216 m!1823263))

(declare-fun m!1823363 () Bool)

(assert (=> b!1550633 m!1823363))

(assert (=> b!1550538 d!460216))

(declare-fun d!460218 () Bool)

(declare-fun c!252259 () Bool)

(assert (=> d!460218 (= c!252259 ((_ is Node!5555) (c!252246 (totalInput!2436 cacheFurthestNullable!103))))))

(declare-fun e!994439 () Bool)

(assert (=> d!460218 (= (inv!22017 (c!252246 (totalInput!2436 cacheFurthestNullable!103))) e!994439)))

(declare-fun b!1550634 () Bool)

(assert (=> b!1550634 (= e!994439 (inv!22019 (c!252246 (totalInput!2436 cacheFurthestNullable!103))))))

(declare-fun b!1550635 () Bool)

(declare-fun e!994440 () Bool)

(assert (=> b!1550635 (= e!994439 e!994440)))

(declare-fun res!692974 () Bool)

(assert (=> b!1550635 (= res!692974 (not ((_ is Leaf!8233) (c!252246 (totalInput!2436 cacheFurthestNullable!103)))))))

(assert (=> b!1550635 (=> res!692974 e!994440)))

(declare-fun b!1550636 () Bool)

(assert (=> b!1550636 (= e!994440 (inv!22020 (c!252246 (totalInput!2436 cacheFurthestNullable!103))))))

(assert (= (and d!460218 c!252259) b!1550634))

(assert (= (and d!460218 (not c!252259)) b!1550635))

(assert (= (and b!1550635 (not res!692974)) b!1550636))

(declare-fun m!1823365 () Bool)

(assert (=> b!1550634 m!1823365))

(declare-fun m!1823367 () Bool)

(assert (=> b!1550636 m!1823367))

(assert (=> b!1550537 d!460218))

(declare-fun d!460220 () Bool)

(declare-fun c!252260 () Bool)

(assert (=> d!460220 (= c!252260 ((_ is Node!5555) (c!252246 totalInput!568)))))

(declare-fun e!994441 () Bool)

(assert (=> d!460220 (= (inv!22017 (c!252246 totalInput!568)) e!994441)))

(declare-fun b!1550637 () Bool)

(assert (=> b!1550637 (= e!994441 (inv!22019 (c!252246 totalInput!568)))))

(declare-fun b!1550638 () Bool)

(declare-fun e!994442 () Bool)

(assert (=> b!1550638 (= e!994441 e!994442)))

(declare-fun res!692975 () Bool)

(assert (=> b!1550638 (= res!692975 (not ((_ is Leaf!8233) (c!252246 totalInput!568))))))

(assert (=> b!1550638 (=> res!692975 e!994442)))

(declare-fun b!1550639 () Bool)

(assert (=> b!1550639 (= e!994442 (inv!22020 (c!252246 totalInput!568)))))

(assert (= (and d!460220 c!252260) b!1550637))

(assert (= (and d!460220 (not c!252260)) b!1550638))

(assert (= (and b!1550638 (not res!692975)) b!1550639))

(declare-fun m!1823369 () Bool)

(assert (=> b!1550637 m!1823369))

(declare-fun m!1823371 () Bool)

(assert (=> b!1550639 m!1823371))

(assert (=> b!1550548 d!460220))

(declare-fun d!460222 () Bool)

(declare-fun res!692980 () Bool)

(declare-fun e!994445 () Bool)

(assert (=> d!460222 (=> (not res!692980) (not e!994445))))

(assert (=> d!460222 (= res!692980 (validRegex!1706 (regex!2937 rule!240)))))

(assert (=> d!460222 (= (ruleValid!677 thiss!16438 rule!240) e!994445)))

(declare-fun b!1550644 () Bool)

(declare-fun res!692981 () Bool)

(assert (=> b!1550644 (=> (not res!692981) (not e!994445))))

(assert (=> b!1550644 (= res!692981 (not (nullable!1265 (regex!2937 rule!240))))))

(declare-fun b!1550645 () Bool)

(assert (=> b!1550645 (= e!994445 (not (= (tag!3201 rule!240) (String!19424 ""))))))

(assert (= (and d!460222 res!692980) b!1550644))

(assert (= (and b!1550644 res!692981) b!1550645))

(assert (=> d!460222 m!1823327))

(assert (=> b!1550644 m!1823353))

(assert (=> b!1550549 d!460222))

(declare-fun d!460224 () Bool)

(assert (=> d!460224 (= (array_inv!1946 (_keys!2062 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) (bvsge (size!13553 (_keys!2062 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1550546 d!460224))

(declare-fun d!460226 () Bool)

(assert (=> d!460226 (= (array_inv!1948 (_values!2047 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) (bvsge (size!13554 (_values!2047 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1550546 d!460226))

(declare-fun d!460228 () Bool)

(assert (=> d!460228 (= (isEmpty!10087 (_1!9383 lt!537185)) ((_ is Nil!16757) (_1!9383 lt!537185)))))

(assert (=> b!1550554 d!460228))

(declare-fun d!460230 () Bool)

(declare-fun lt!537202 () Int)

(assert (=> d!460230 (>= lt!537202 0)))

(declare-fun e!994448 () Int)

(assert (=> d!460230 (= lt!537202 e!994448)))

(declare-fun c!252263 () Bool)

(assert (=> d!460230 (= c!252263 ((_ is Nil!16757) Nil!16757))))

(assert (=> d!460230 (= (size!13556 Nil!16757) lt!537202)))

(declare-fun b!1550650 () Bool)

(assert (=> b!1550650 (= e!994448 0)))

(declare-fun b!1550651 () Bool)

(assert (=> b!1550651 (= e!994448 (+ 1 (size!13556 (t!141228 Nil!16757))))))

(assert (= (and d!460230 c!252263) b!1550650))

(assert (= (and d!460230 (not c!252263)) b!1550651))

(declare-fun m!1823373 () Bool)

(assert (=> b!1550651 m!1823373))

(assert (=> b!1550554 d!460230))

(declare-fun bm!101772 () Bool)

(declare-fun call!101782 () Regex!4265)

(declare-fun call!101783 () C!8708)

(assert (=> bm!101772 (= call!101782 (derivativeStep!1017 (regex!2937 rule!240) call!101783))))

(declare-fun bm!101773 () Bool)

(declare-fun call!101781 () Bool)

(declare-fun isPrefix!1255 (List!16825 List!16825) Bool)

(assert (=> bm!101773 (= call!101781 (isPrefix!1255 lt!537183 lt!537183))))

(declare-fun b!1550680 () Bool)

(declare-fun e!994472 () tuple2!16146)

(assert (=> b!1550680 (= e!994472 (tuple2!16147 Nil!16757 lt!537183))))

(declare-fun b!1550681 () Bool)

(declare-fun e!994468 () tuple2!16146)

(declare-fun e!994469 () tuple2!16146)

(assert (=> b!1550681 (= e!994468 e!994469)))

(declare-fun lt!537280 () tuple2!16146)

(declare-fun call!101779 () tuple2!16146)

(assert (=> b!1550681 (= lt!537280 call!101779)))

(declare-fun c!252278 () Bool)

(assert (=> b!1550681 (= c!252278 (isEmpty!10087 (_1!9383 lt!537280)))))

(declare-fun lt!537271 () List!16825)

(declare-fun call!101778 () List!16825)

(declare-fun bm!101774 () Bool)

(assert (=> bm!101774 (= call!101779 (findLongestMatchInner!324 call!101782 lt!537271 (+ (size!13556 Nil!16757) 1) call!101778 lt!537183 (size!13556 lt!537183)))))

(declare-fun b!1550682 () Bool)

(declare-fun e!994471 () Unit!26007)

(declare-fun Unit!26009 () Unit!26007)

(assert (=> b!1550682 (= e!994471 Unit!26009)))

(declare-fun lt!537284 () Unit!26007)

(declare-fun call!101780 () Unit!26007)

(assert (=> b!1550682 (= lt!537284 call!101780)))

(assert (=> b!1550682 call!101781))

(declare-fun lt!537268 () Unit!26007)

(assert (=> b!1550682 (= lt!537268 lt!537284)))

(declare-fun lt!537263 () Unit!26007)

(declare-fun call!101784 () Unit!26007)

(assert (=> b!1550682 (= lt!537263 call!101784)))

(assert (=> b!1550682 (= lt!537183 Nil!16757)))

(declare-fun lt!537269 () Unit!26007)

(assert (=> b!1550682 (= lt!537269 lt!537263)))

(assert (=> b!1550682 false))

(declare-fun bm!101775 () Bool)

(declare-fun call!101777 () Bool)

(assert (=> bm!101775 (= call!101777 (nullable!1265 (regex!2937 rule!240)))))

(declare-fun bm!101776 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!119 (List!16825 List!16825 List!16825) Unit!26007)

(assert (=> bm!101776 (= call!101784 (lemmaIsPrefixSameLengthThenSameList!119 lt!537183 Nil!16757 lt!537183))))

(declare-fun d!460232 () Bool)

(declare-fun e!994466 () Bool)

(assert (=> d!460232 e!994466))

(declare-fun res!692986 () Bool)

(assert (=> d!460232 (=> (not res!692986) (not e!994466))))

(declare-fun lt!537283 () tuple2!16146)

(declare-fun ++!4409 (List!16825 List!16825) List!16825)

(assert (=> d!460232 (= res!692986 (= (++!4409 (_1!9383 lt!537283) (_2!9383 lt!537283)) lt!537183))))

(assert (=> d!460232 (= lt!537283 e!994472)))

(declare-fun c!252280 () Bool)

(declare-fun lostCause!383 (Regex!4265) Bool)

(assert (=> d!460232 (= c!252280 (lostCause!383 (regex!2937 rule!240)))))

(declare-fun lt!537270 () Unit!26007)

(declare-fun Unit!26010 () Unit!26007)

(assert (=> d!460232 (= lt!537270 Unit!26010)))

(declare-fun getSuffix!665 (List!16825 List!16825) List!16825)

(assert (=> d!460232 (= (getSuffix!665 lt!537183 Nil!16757) lt!537183)))

(declare-fun lt!537278 () Unit!26007)

(declare-fun lt!537274 () Unit!26007)

(assert (=> d!460232 (= lt!537278 lt!537274)))

(declare-fun lt!537259 () List!16825)

(assert (=> d!460232 (= lt!537183 lt!537259)))

(declare-fun lemmaSamePrefixThenSameSuffix!617 (List!16825 List!16825 List!16825 List!16825 List!16825) Unit!26007)

(assert (=> d!460232 (= lt!537274 (lemmaSamePrefixThenSameSuffix!617 Nil!16757 lt!537183 Nil!16757 lt!537259 lt!537183))))

(assert (=> d!460232 (= lt!537259 (getSuffix!665 lt!537183 Nil!16757))))

(declare-fun lt!537286 () Unit!26007)

(declare-fun lt!537275 () Unit!26007)

(assert (=> d!460232 (= lt!537286 lt!537275)))

(assert (=> d!460232 (isPrefix!1255 Nil!16757 (++!4409 Nil!16757 lt!537183))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!780 (List!16825 List!16825) Unit!26007)

(assert (=> d!460232 (= lt!537275 (lemmaConcatTwoListThenFirstIsPrefix!780 Nil!16757 lt!537183))))

(assert (=> d!460232 (validRegex!1706 (regex!2937 rule!240))))

(assert (=> d!460232 (= (findLongestMatchInner!324 (regex!2937 rule!240) Nil!16757 (size!13556 Nil!16757) lt!537183 lt!537183 (size!13556 lt!537183)) lt!537283)))

(declare-fun b!1550683 () Bool)

(assert (=> b!1550683 (= e!994469 lt!537280)))

(declare-fun bm!101777 () Bool)

(assert (=> bm!101777 (= call!101778 (tail!2203 lt!537183))))

(declare-fun b!1550684 () Bool)

(assert (=> b!1550684 (= e!994469 (tuple2!16147 Nil!16757 lt!537183))))

(declare-fun bm!101778 () Bool)

(declare-fun lemmaIsPrefixRefl!885 (List!16825 List!16825) Unit!26007)

(assert (=> bm!101778 (= call!101780 (lemmaIsPrefixRefl!885 lt!537183 lt!537183))))

(declare-fun b!1550685 () Bool)

(declare-fun c!252281 () Bool)

(assert (=> b!1550685 (= c!252281 call!101777)))

(declare-fun lt!537272 () Unit!26007)

(declare-fun lt!537276 () Unit!26007)

(assert (=> b!1550685 (= lt!537272 lt!537276)))

(assert (=> b!1550685 (= lt!537183 Nil!16757)))

(assert (=> b!1550685 (= lt!537276 call!101784)))

(declare-fun lt!537285 () Unit!26007)

(declare-fun lt!537273 () Unit!26007)

(assert (=> b!1550685 (= lt!537285 lt!537273)))

(assert (=> b!1550685 call!101781))

(assert (=> b!1550685 (= lt!537273 call!101780)))

(declare-fun e!994470 () tuple2!16146)

(declare-fun e!994467 () tuple2!16146)

(assert (=> b!1550685 (= e!994470 e!994467)))

(declare-fun b!1550686 () Bool)

(assert (=> b!1550686 (= e!994467 (tuple2!16147 Nil!16757 lt!537183))))

(declare-fun b!1550687 () Bool)

(declare-fun Unit!26011 () Unit!26007)

(assert (=> b!1550687 (= e!994471 Unit!26011)))

(declare-fun b!1550688 () Bool)

(declare-fun e!994465 () Bool)

(assert (=> b!1550688 (= e!994465 (>= (size!13556 (_1!9383 lt!537283)) (size!13556 Nil!16757)))))

(declare-fun b!1550689 () Bool)

(assert (=> b!1550689 (= e!994467 (tuple2!16147 Nil!16757 Nil!16757))))

(declare-fun b!1550690 () Bool)

(assert (=> b!1550690 (= e!994466 e!994465)))

(declare-fun res!692987 () Bool)

(assert (=> b!1550690 (=> res!692987 e!994465)))

(assert (=> b!1550690 (= res!692987 (isEmpty!10087 (_1!9383 lt!537283)))))

(declare-fun b!1550691 () Bool)

(declare-fun c!252276 () Bool)

(assert (=> b!1550691 (= c!252276 call!101777)))

(declare-fun lt!537281 () Unit!26007)

(declare-fun lt!537279 () Unit!26007)

(assert (=> b!1550691 (= lt!537281 lt!537279)))

(declare-fun lt!537260 () C!8708)

(declare-fun lt!537264 () List!16825)

(assert (=> b!1550691 (= (++!4409 (++!4409 Nil!16757 (Cons!16757 lt!537260 Nil!16757)) lt!537264) lt!537183)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!434 (List!16825 C!8708 List!16825 List!16825) Unit!26007)

(assert (=> b!1550691 (= lt!537279 (lemmaMoveElementToOtherListKeepsConcatEq!434 Nil!16757 lt!537260 lt!537264 lt!537183))))

(assert (=> b!1550691 (= lt!537264 (tail!2203 lt!537183))))

(assert (=> b!1550691 (= lt!537260 (head!3108 lt!537183))))

(declare-fun lt!537267 () Unit!26007)

(declare-fun lt!537282 () Unit!26007)

(assert (=> b!1550691 (= lt!537267 lt!537282)))

(assert (=> b!1550691 (isPrefix!1255 (++!4409 Nil!16757 (Cons!16757 (head!3108 (getSuffix!665 lt!537183 Nil!16757)) Nil!16757)) lt!537183)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!108 (List!16825 List!16825) Unit!26007)

(assert (=> b!1550691 (= lt!537282 (lemmaAddHeadSuffixToPrefixStillPrefix!108 Nil!16757 lt!537183))))

(declare-fun lt!537277 () Unit!26007)

(declare-fun lt!537265 () Unit!26007)

(assert (=> b!1550691 (= lt!537277 lt!537265)))

(assert (=> b!1550691 (= lt!537265 (lemmaAddHeadSuffixToPrefixStillPrefix!108 Nil!16757 lt!537183))))

(assert (=> b!1550691 (= lt!537271 (++!4409 Nil!16757 (Cons!16757 (head!3108 lt!537183) Nil!16757)))))

(declare-fun lt!537266 () Unit!26007)

(assert (=> b!1550691 (= lt!537266 e!994471)))

(declare-fun c!252277 () Bool)

(assert (=> b!1550691 (= c!252277 (= (size!13556 Nil!16757) (size!13556 lt!537183)))))

(declare-fun lt!537262 () Unit!26007)

(declare-fun lt!537261 () Unit!26007)

(assert (=> b!1550691 (= lt!537262 lt!537261)))

(assert (=> b!1550691 (<= (size!13556 Nil!16757) (size!13556 lt!537183))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!109 (List!16825 List!16825) Unit!26007)

(assert (=> b!1550691 (= lt!537261 (lemmaIsPrefixThenSmallerEqSize!109 Nil!16757 lt!537183))))

(assert (=> b!1550691 (= e!994470 e!994468)))

(declare-fun b!1550692 () Bool)

(assert (=> b!1550692 (= e!994472 e!994470)))

(declare-fun c!252279 () Bool)

(assert (=> b!1550692 (= c!252279 (= (size!13556 Nil!16757) (size!13556 lt!537183)))))

(declare-fun bm!101779 () Bool)

(assert (=> bm!101779 (= call!101783 (head!3108 lt!537183))))

(declare-fun b!1550693 () Bool)

(assert (=> b!1550693 (= e!994468 call!101779)))

(assert (= (and d!460232 c!252280) b!1550680))

(assert (= (and d!460232 (not c!252280)) b!1550692))

(assert (= (and b!1550692 c!252279) b!1550685))

(assert (= (and b!1550692 (not c!252279)) b!1550691))

(assert (= (and b!1550685 c!252281) b!1550689))

(assert (= (and b!1550685 (not c!252281)) b!1550686))

(assert (= (and b!1550691 c!252277) b!1550682))

(assert (= (and b!1550691 (not c!252277)) b!1550687))

(assert (= (and b!1550691 c!252276) b!1550681))

(assert (= (and b!1550691 (not c!252276)) b!1550693))

(assert (= (and b!1550681 c!252278) b!1550684))

(assert (= (and b!1550681 (not c!252278)) b!1550683))

(assert (= (or b!1550681 b!1550693) bm!101777))

(assert (= (or b!1550681 b!1550693) bm!101779))

(assert (= (or b!1550681 b!1550693) bm!101772))

(assert (= (or b!1550681 b!1550693) bm!101774))

(assert (= (or b!1550685 b!1550682) bm!101776))

(assert (= (or b!1550685 b!1550682) bm!101778))

(assert (= (or b!1550685 b!1550691) bm!101775))

(assert (= (or b!1550685 b!1550682) bm!101773))

(assert (= (and d!460232 res!692986) b!1550690))

(assert (= (and b!1550690 (not res!692987)) b!1550688))

(declare-fun m!1823375 () Bool)

(assert (=> d!460232 m!1823375))

(declare-fun m!1823377 () Bool)

(assert (=> d!460232 m!1823377))

(declare-fun m!1823379 () Bool)

(assert (=> d!460232 m!1823379))

(declare-fun m!1823381 () Bool)

(assert (=> d!460232 m!1823381))

(declare-fun m!1823383 () Bool)

(assert (=> d!460232 m!1823383))

(declare-fun m!1823385 () Bool)

(assert (=> d!460232 m!1823385))

(declare-fun m!1823387 () Bool)

(assert (=> d!460232 m!1823387))

(assert (=> d!460232 m!1823383))

(assert (=> d!460232 m!1823327))

(assert (=> bm!101774 m!1823257))

(declare-fun m!1823389 () Bool)

(assert (=> bm!101774 m!1823389))

(declare-fun m!1823391 () Bool)

(assert (=> bm!101773 m!1823391))

(assert (=> b!1550691 m!1823257))

(declare-fun m!1823393 () Bool)

(assert (=> b!1550691 m!1823393))

(declare-fun m!1823395 () Bool)

(assert (=> b!1550691 m!1823395))

(declare-fun m!1823397 () Bool)

(assert (=> b!1550691 m!1823397))

(declare-fun m!1823399 () Bool)

(assert (=> b!1550691 m!1823399))

(declare-fun m!1823401 () Bool)

(assert (=> b!1550691 m!1823401))

(declare-fun m!1823403 () Bool)

(assert (=> b!1550691 m!1823403))

(declare-fun m!1823405 () Bool)

(assert (=> b!1550691 m!1823405))

(assert (=> b!1550691 m!1823393))

(declare-fun m!1823407 () Bool)

(assert (=> b!1550691 m!1823407))

(assert (=> b!1550691 m!1823253))

(assert (=> b!1550691 m!1823377))

(declare-fun m!1823409 () Bool)

(assert (=> b!1550691 m!1823409))

(assert (=> b!1550691 m!1823377))

(assert (=> b!1550691 m!1823397))

(declare-fun m!1823411 () Bool)

(assert (=> b!1550691 m!1823411))

(declare-fun m!1823413 () Bool)

(assert (=> b!1550691 m!1823413))

(assert (=> bm!101779 m!1823403))

(assert (=> bm!101777 m!1823401))

(declare-fun m!1823415 () Bool)

(assert (=> bm!101776 m!1823415))

(assert (=> bm!101775 m!1823353))

(declare-fun m!1823417 () Bool)

(assert (=> bm!101772 m!1823417))

(declare-fun m!1823419 () Bool)

(assert (=> b!1550688 m!1823419))

(assert (=> b!1550688 m!1823253))

(declare-fun m!1823421 () Bool)

(assert (=> b!1550681 m!1823421))

(declare-fun m!1823423 () Bool)

(assert (=> bm!101778 m!1823423))

(declare-fun m!1823425 () Bool)

(assert (=> b!1550690 m!1823425))

(assert (=> b!1550554 d!460232))

(declare-fun d!460234 () Bool)

(assert (=> d!460234 true))

(declare-fun order!9831 () Int)

(declare-fun order!9829 () Int)

(declare-fun lambda!65646 () Int)

(declare-fun dynLambda!7409 (Int Int) Int)

(declare-fun dynLambda!7410 (Int Int) Int)

(assert (=> d!460234 (< (dynLambda!7409 order!9829 (toChars!4159 (transformation!2937 rule!240))) (dynLambda!7410 order!9831 lambda!65646))))

(assert (=> d!460234 true))

(declare-fun order!9833 () Int)

(declare-fun dynLambda!7411 (Int Int) Int)

(assert (=> d!460234 (< (dynLambda!7411 order!9833 (toValue!4300 (transformation!2937 rule!240))) (dynLambda!7410 order!9831 lambda!65646))))

(declare-fun Forall!600 (Int) Bool)

(assert (=> d!460234 (= (semiInverseModEq!1104 (toChars!4159 (transformation!2937 rule!240)) (toValue!4300 (transformation!2937 rule!240))) (Forall!600 lambda!65646))))

(declare-fun bs!387090 () Bool)

(assert (= bs!387090 d!460234))

(declare-fun m!1823427 () Bool)

(assert (=> bs!387090 m!1823427))

(assert (=> b!1550554 d!460234))

(declare-fun d!460236 () Bool)

(declare-fun e!994475 () Bool)

(assert (=> d!460236 e!994475))

(declare-fun res!692990 () Bool)

(assert (=> d!460236 (=> (not res!692990) (not e!994475))))

(assert (=> d!460236 (= res!692990 (semiInverseModEq!1104 (toChars!4159 (transformation!2937 rule!240)) (toValue!4300 (transformation!2937 rule!240))))))

(declare-fun Unit!26012 () Unit!26007)

(assert (=> d!460236 (= (lemmaInv!418 (transformation!2937 rule!240)) Unit!26012)))

(declare-fun b!1550700 () Bool)

(assert (=> b!1550700 (= e!994475 (equivClasses!1051 (toChars!4159 (transformation!2937 rule!240)) (toValue!4300 (transformation!2937 rule!240))))))

(assert (= (and d!460236 res!692990) b!1550700))

(assert (=> d!460236 m!1823263))

(assert (=> b!1550700 m!1823363))

(assert (=> b!1550554 d!460236))

(declare-fun d!460238 () Bool)

(declare-fun e!994478 () Bool)

(assert (=> d!460238 e!994478))

(declare-fun res!692993 () Bool)

(assert (=> d!460238 (=> res!692993 e!994478)))

(assert (=> d!460238 (= res!692993 (isEmpty!10087 (_1!9383 (findLongestMatchInner!324 (regex!2937 rule!240) Nil!16757 (size!13556 Nil!16757) lt!537183 lt!537183 (size!13556 lt!537183)))))))

(declare-fun lt!537289 () Unit!26007)

(declare-fun choose!9244 (Regex!4265 List!16825) Unit!26007)

(assert (=> d!460238 (= lt!537289 (choose!9244 (regex!2937 rule!240) lt!537183))))

(assert (=> d!460238 (validRegex!1706 (regex!2937 rule!240))))

(assert (=> d!460238 (= (longestMatchIsAcceptedByMatchOrIsEmpty!308 (regex!2937 rule!240) lt!537183) lt!537289)))

(declare-fun b!1550703 () Bool)

(assert (=> b!1550703 (= e!994478 (matchR!1871 (regex!2937 rule!240) (_1!9383 (findLongestMatchInner!324 (regex!2937 rule!240) Nil!16757 (size!13556 Nil!16757) lt!537183 lt!537183 (size!13556 lt!537183)))))))

(assert (= (and d!460238 (not res!692993)) b!1550703))

(assert (=> d!460238 m!1823253))

(assert (=> d!460238 m!1823257))

(assert (=> d!460238 m!1823259))

(assert (=> d!460238 m!1823253))

(assert (=> d!460238 m!1823257))

(declare-fun m!1823429 () Bool)

(assert (=> d!460238 m!1823429))

(assert (=> d!460238 m!1823327))

(declare-fun m!1823431 () Bool)

(assert (=> d!460238 m!1823431))

(assert (=> b!1550703 m!1823253))

(assert (=> b!1550703 m!1823257))

(assert (=> b!1550703 m!1823253))

(assert (=> b!1550703 m!1823257))

(assert (=> b!1550703 m!1823259))

(declare-fun m!1823433 () Bool)

(assert (=> b!1550703 m!1823433))

(assert (=> b!1550554 d!460238))

(declare-fun d!460240 () Bool)

(declare-fun lt!537290 () Int)

(assert (=> d!460240 (>= lt!537290 0)))

(declare-fun e!994479 () Int)

(assert (=> d!460240 (= lt!537290 e!994479)))

(declare-fun c!252282 () Bool)

(assert (=> d!460240 (= c!252282 ((_ is Nil!16757) lt!537183))))

(assert (=> d!460240 (= (size!13556 lt!537183) lt!537290)))

(declare-fun b!1550704 () Bool)

(assert (=> b!1550704 (= e!994479 0)))

(declare-fun b!1550705 () Bool)

(assert (=> b!1550705 (= e!994479 (+ 1 (size!13556 (t!141228 lt!537183))))))

(assert (= (and d!460240 c!252282) b!1550704))

(assert (= (and d!460240 (not c!252282)) b!1550705))

(declare-fun m!1823435 () Bool)

(assert (=> b!1550705 m!1823435))

(assert (=> b!1550554 d!460240))

(declare-fun tp!453067 () Bool)

(declare-fun b!1550714 () Bool)

(declare-fun e!994484 () Bool)

(declare-fun tp!453069 () Bool)

(assert (=> b!1550714 (= e!994484 (and (inv!22017 (left!13632 (c!252246 input!1676))) tp!453067 (inv!22017 (right!13962 (c!252246 input!1676))) tp!453069))))

(declare-fun b!1550716 () Bool)

(declare-fun e!994485 () Bool)

(declare-fun tp!453068 () Bool)

(assert (=> b!1550716 (= e!994485 tp!453068)))

(declare-fun b!1550715 () Bool)

(declare-fun inv!22021 (IArray!11115) Bool)

(assert (=> b!1550715 (= e!994484 (and (inv!22021 (xs!8355 (c!252246 input!1676))) e!994485))))

(assert (=> b!1550543 (= tp!453057 (and (inv!22017 (c!252246 input!1676)) e!994484))))

(assert (= (and b!1550543 ((_ is Node!5555) (c!252246 input!1676))) b!1550714))

(assert (= b!1550715 b!1550716))

(assert (= (and b!1550543 ((_ is Leaf!8233) (c!252246 input!1676))) b!1550715))

(declare-fun m!1823437 () Bool)

(assert (=> b!1550714 m!1823437))

(declare-fun m!1823439 () Bool)

(assert (=> b!1550714 m!1823439))

(declare-fun m!1823441 () Bool)

(assert (=> b!1550715 m!1823441))

(assert (=> b!1550543 m!1823271))

(declare-fun e!994494 () Bool)

(assert (=> b!1550551 (= tp!453058 e!994494)))

(declare-fun b!1550725 () Bool)

(declare-fun e!994493 () Bool)

(declare-fun tp!453082 () Bool)

(assert (=> b!1550725 (= e!994493 tp!453082)))

(declare-fun setNonEmpty!10532 () Bool)

(declare-fun tp!453081 () Bool)

(declare-fun setElem!10532 () Context!1566)

(declare-fun e!994492 () Bool)

(declare-fun setRes!10532 () Bool)

(declare-fun inv!22022 (Context!1566) Bool)

(assert (=> setNonEmpty!10532 (= setRes!10532 (and tp!453081 (inv!22022 setElem!10532) e!994492))))

(declare-fun setRest!10532 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10532 (= (_2!9387 (h!22160 (zeroValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10532 true) setRest!10532))))

(declare-fun tp_is_empty!7057 () Bool)

(declare-fun tp!453083 () Bool)

(declare-fun b!1550726 () Bool)

(declare-fun tp!453084 () Bool)

(assert (=> b!1550726 (= e!994494 (and tp!453083 (inv!22022 (_2!9386 (_1!9387 (h!22160 (zeroValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))))) e!994493 tp_is_empty!7057 setRes!10532 tp!453084))))

(declare-fun condSetEmpty!10532 () Bool)

(assert (=> b!1550726 (= condSetEmpty!10532 (= (_2!9387 (h!22160 (zeroValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setIsEmpty!10532 () Bool)

(assert (=> setIsEmpty!10532 setRes!10532))

(declare-fun b!1550727 () Bool)

(declare-fun tp!453080 () Bool)

(assert (=> b!1550727 (= e!994492 tp!453080)))

(assert (= b!1550726 b!1550725))

(assert (= (and b!1550726 condSetEmpty!10532) setIsEmpty!10532))

(assert (= (and b!1550726 (not condSetEmpty!10532)) setNonEmpty!10532))

(assert (= setNonEmpty!10532 b!1550727))

(assert (= (and b!1550551 ((_ is Cons!16759) (zeroValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))) b!1550726))

(declare-fun m!1823443 () Bool)

(assert (=> setNonEmpty!10532 m!1823443))

(declare-fun m!1823445 () Bool)

(assert (=> b!1550726 m!1823445))

(declare-fun e!994497 () Bool)

(assert (=> b!1550551 (= tp!453050 e!994497)))

(declare-fun b!1550728 () Bool)

(declare-fun e!994496 () Bool)

(declare-fun tp!453087 () Bool)

(assert (=> b!1550728 (= e!994496 tp!453087)))

(declare-fun e!994495 () Bool)

(declare-fun setNonEmpty!10533 () Bool)

(declare-fun setElem!10533 () Context!1566)

(declare-fun setRes!10533 () Bool)

(declare-fun tp!453086 () Bool)

(assert (=> setNonEmpty!10533 (= setRes!10533 (and tp!453086 (inv!22022 setElem!10533) e!994495))))

(declare-fun setRest!10533 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10533 (= (_2!9387 (h!22160 (minValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10533 true) setRest!10533))))

(declare-fun tp!453088 () Bool)

(declare-fun tp!453089 () Bool)

(declare-fun b!1550729 () Bool)

(assert (=> b!1550729 (= e!994497 (and tp!453088 (inv!22022 (_2!9386 (_1!9387 (h!22160 (minValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))))) e!994496 tp_is_empty!7057 setRes!10533 tp!453089))))

(declare-fun condSetEmpty!10533 () Bool)

(assert (=> b!1550729 (= condSetEmpty!10533 (= (_2!9387 (h!22160 (minValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setIsEmpty!10533 () Bool)

(assert (=> setIsEmpty!10533 setRes!10533))

(declare-fun b!1550730 () Bool)

(declare-fun tp!453085 () Bool)

(assert (=> b!1550730 (= e!994495 tp!453085)))

(assert (= b!1550729 b!1550728))

(assert (= (and b!1550729 condSetEmpty!10533) setIsEmpty!10533))

(assert (= (and b!1550729 (not condSetEmpty!10533)) setNonEmpty!10533))

(assert (= setNonEmpty!10533 b!1550730))

(assert (= (and b!1550551 ((_ is Cons!16759) (minValue!2026 (v!23592 (underlying!3747 (v!23593 (underlying!3748 (cache!2094 cacheDown!768)))))))) b!1550729))

(declare-fun m!1823447 () Bool)

(assert (=> setNonEmpty!10533 m!1823447))

(declare-fun m!1823449 () Bool)

(assert (=> b!1550729 m!1823449))

(declare-fun setIsEmpty!10536 () Bool)

(declare-fun setRes!10536 () Bool)

(assert (=> setIsEmpty!10536 setRes!10536))

(declare-fun b!1550739 () Bool)

(declare-fun e!994505 () Bool)

(declare-fun tp!453099 () Bool)

(assert (=> b!1550739 (= e!994505 tp!453099)))

(declare-fun b!1550740 () Bool)

(declare-fun e!994504 () Bool)

(declare-fun tp!453098 () Bool)

(assert (=> b!1550740 (= e!994504 tp!453098)))

(declare-fun e!994506 () Bool)

(assert (=> b!1550525 (= tp!453053 e!994506)))

(declare-fun tp!453101 () Bool)

(declare-fun setElem!10536 () Context!1566)

(declare-fun setNonEmpty!10536 () Bool)

(assert (=> setNonEmpty!10536 (= setRes!10536 (and tp!453101 (inv!22022 setElem!10536) e!994504))))

(declare-fun setRest!10536 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10536 (= (_2!9382 (h!22156 (zeroValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10536 true) setRest!10536))))

(declare-fun tp!453100 () Bool)

(declare-fun b!1550741 () Bool)

(assert (=> b!1550741 (= e!994506 (and (inv!22022 (_1!9381 (_1!9382 (h!22156 (zeroValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))))) e!994505 tp_is_empty!7057 setRes!10536 tp!453100))))

(declare-fun condSetEmpty!10536 () Bool)

(assert (=> b!1550741 (= condSetEmpty!10536 (= (_2!9382 (h!22156 (zeroValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))) ((as const (Array Context!1566 Bool)) false)))))

(assert (= b!1550741 b!1550739))

(assert (= (and b!1550741 condSetEmpty!10536) setIsEmpty!10536))

(assert (= (and b!1550741 (not condSetEmpty!10536)) setNonEmpty!10536))

(assert (= setNonEmpty!10536 b!1550740))

(assert (= (and b!1550525 ((_ is Cons!16755) (zeroValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))) b!1550741))

(declare-fun m!1823451 () Bool)

(assert (=> setNonEmpty!10536 m!1823451))

(declare-fun m!1823453 () Bool)

(assert (=> b!1550741 m!1823453))

(declare-fun setIsEmpty!10537 () Bool)

(declare-fun setRes!10537 () Bool)

(assert (=> setIsEmpty!10537 setRes!10537))

(declare-fun b!1550742 () Bool)

(declare-fun e!994508 () Bool)

(declare-fun tp!453103 () Bool)

(assert (=> b!1550742 (= e!994508 tp!453103)))

(declare-fun b!1550743 () Bool)

(declare-fun e!994507 () Bool)

(declare-fun tp!453102 () Bool)

(assert (=> b!1550743 (= e!994507 tp!453102)))

(declare-fun e!994509 () Bool)

(assert (=> b!1550525 (= tp!453047 e!994509)))

(declare-fun setElem!10537 () Context!1566)

(declare-fun setNonEmpty!10537 () Bool)

(declare-fun tp!453105 () Bool)

(assert (=> setNonEmpty!10537 (= setRes!10537 (and tp!453105 (inv!22022 setElem!10537) e!994507))))

(declare-fun setRest!10537 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10537 (= (_2!9382 (h!22156 (minValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10537 true) setRest!10537))))

(declare-fun tp!453104 () Bool)

(declare-fun b!1550744 () Bool)

(assert (=> b!1550744 (= e!994509 (and (inv!22022 (_1!9381 (_1!9382 (h!22156 (minValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))))) e!994508 tp_is_empty!7057 setRes!10537 tp!453104))))

(declare-fun condSetEmpty!10537 () Bool)

(assert (=> b!1550744 (= condSetEmpty!10537 (= (_2!9382 (h!22156 (minValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))) ((as const (Array Context!1566 Bool)) false)))))

(assert (= b!1550744 b!1550742))

(assert (= (and b!1550744 condSetEmpty!10537) setIsEmpty!10537))

(assert (= (and b!1550744 (not condSetEmpty!10537)) setNonEmpty!10537))

(assert (= setNonEmpty!10537 b!1550743))

(assert (= (and b!1550525 ((_ is Cons!16755) (minValue!2024 (v!23588 (underlying!3743 (v!23589 (underlying!3744 (cache!2092 cacheUp!755)))))))) b!1550744))

(declare-fun m!1823455 () Bool)

(assert (=> setNonEmpty!10537 m!1823455))

(declare-fun m!1823457 () Bool)

(assert (=> b!1550744 m!1823457))

(declare-fun condMapEmpty!8195 () Bool)

(declare-fun mapDefault!8195 () List!16826)

(assert (=> mapNonEmpty!8191 (= condMapEmpty!8195 (= mapRest!8192 ((as const (Array (_ BitVec 32) List!16826)) mapDefault!8195)))))

(declare-fun e!994520 () Bool)

(declare-fun mapRes!8195 () Bool)

(assert (=> mapNonEmpty!8191 (= tp!453046 (and e!994520 mapRes!8195))))

(declare-fun setIsEmpty!10542 () Bool)

(declare-fun setRes!10543 () Bool)

(assert (=> setIsEmpty!10542 setRes!10543))

(declare-fun b!1550755 () Bool)

(declare-fun e!994521 () Bool)

(declare-fun tp!453121 () Bool)

(assert (=> b!1550755 (= e!994521 tp!453121)))

(declare-fun b!1550756 () Bool)

(declare-fun e!994518 () Bool)

(declare-fun tp!453124 () Bool)

(assert (=> b!1550756 (= e!994518 tp!453124)))

(declare-fun setIsEmpty!10543 () Bool)

(declare-fun setRes!10542 () Bool)

(assert (=> setIsEmpty!10543 setRes!10542))

(declare-fun setNonEmpty!10542 () Bool)

(declare-fun tp!453122 () Bool)

(declare-fun setElem!10542 () Context!1566)

(assert (=> setNonEmpty!10542 (= setRes!10543 (and tp!453122 (inv!22022 setElem!10542) e!994521))))

(declare-fun setRest!10543 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10542 (= (_1!9384 (_1!9385 (h!22159 mapDefault!8195))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10542 true) setRest!10543))))

(declare-fun b!1550757 () Bool)

(declare-fun e!994519 () Bool)

(declare-fun tp!453126 () Bool)

(assert (=> b!1550757 (= e!994519 (and setRes!10542 tp!453126))))

(declare-fun condSetEmpty!10543 () Bool)

(declare-fun mapValue!8195 () List!16826)

(assert (=> b!1550757 (= condSetEmpty!10543 (= (_1!9384 (_1!9385 (h!22159 mapValue!8195))) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setNonEmpty!10543 () Bool)

(declare-fun setElem!10543 () Context!1566)

(declare-fun tp!453125 () Bool)

(assert (=> setNonEmpty!10543 (= setRes!10542 (and tp!453125 (inv!22022 setElem!10543) e!994518))))

(declare-fun setRest!10542 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10543 (= (_1!9384 (_1!9385 (h!22159 mapValue!8195))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10543 true) setRest!10542))))

(declare-fun mapIsEmpty!8195 () Bool)

(assert (=> mapIsEmpty!8195 mapRes!8195))

(declare-fun mapNonEmpty!8195 () Bool)

(declare-fun tp!453123 () Bool)

(assert (=> mapNonEmpty!8195 (= mapRes!8195 (and tp!453123 e!994519))))

(declare-fun mapRest!8195 () (Array (_ BitVec 32) List!16826))

(declare-fun mapKey!8195 () (_ BitVec 32))

(assert (=> mapNonEmpty!8195 (= mapRest!8192 (store mapRest!8195 mapKey!8195 mapValue!8195))))

(declare-fun b!1550758 () Bool)

(declare-fun tp!453120 () Bool)

(assert (=> b!1550758 (= e!994520 (and setRes!10543 tp!453120))))

(declare-fun condSetEmpty!10542 () Bool)

(assert (=> b!1550758 (= condSetEmpty!10542 (= (_1!9384 (_1!9385 (h!22159 mapDefault!8195))) ((as const (Array Context!1566 Bool)) false)))))

(assert (= (and mapNonEmpty!8191 condMapEmpty!8195) mapIsEmpty!8195))

(assert (= (and mapNonEmpty!8191 (not condMapEmpty!8195)) mapNonEmpty!8195))

(assert (= (and b!1550757 condSetEmpty!10543) setIsEmpty!10543))

(assert (= (and b!1550757 (not condSetEmpty!10543)) setNonEmpty!10543))

(assert (= setNonEmpty!10543 b!1550756))

(assert (= (and mapNonEmpty!8195 ((_ is Cons!16758) mapValue!8195)) b!1550757))

(assert (= (and b!1550758 condSetEmpty!10542) setIsEmpty!10542))

(assert (= (and b!1550758 (not condSetEmpty!10542)) setNonEmpty!10542))

(assert (= setNonEmpty!10542 b!1550755))

(assert (= (and mapNonEmpty!8191 ((_ is Cons!16758) mapDefault!8195)) b!1550758))

(declare-fun m!1823459 () Bool)

(assert (=> setNonEmpty!10542 m!1823459))

(declare-fun m!1823461 () Bool)

(assert (=> setNonEmpty!10543 m!1823461))

(declare-fun m!1823463 () Bool)

(assert (=> mapNonEmpty!8195 m!1823463))

(declare-fun setRes!10546 () Bool)

(declare-fun e!994527 () Bool)

(declare-fun setNonEmpty!10546 () Bool)

(declare-fun setElem!10546 () Context!1566)

(declare-fun tp!453134 () Bool)

(assert (=> setNonEmpty!10546 (= setRes!10546 (and tp!453134 (inv!22022 setElem!10546) e!994527))))

(declare-fun setRest!10546 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10546 (= (_1!9384 (_1!9385 (h!22159 mapValue!8192))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10546 true) setRest!10546))))

(declare-fun b!1550766 () Bool)

(declare-fun tp!453135 () Bool)

(assert (=> b!1550766 (= e!994527 tp!453135)))

(declare-fun setIsEmpty!10546 () Bool)

(assert (=> setIsEmpty!10546 setRes!10546))

(declare-fun b!1550765 () Bool)

(declare-fun e!994526 () Bool)

(declare-fun tp!453133 () Bool)

(assert (=> b!1550765 (= e!994526 (and setRes!10546 tp!453133))))

(declare-fun condSetEmpty!10546 () Bool)

(assert (=> b!1550765 (= condSetEmpty!10546 (= (_1!9384 (_1!9385 (h!22159 mapValue!8192))) ((as const (Array Context!1566 Bool)) false)))))

(assert (=> mapNonEmpty!8191 (= tp!453037 e!994526)))

(assert (= (and b!1550765 condSetEmpty!10546) setIsEmpty!10546))

(assert (= (and b!1550765 (not condSetEmpty!10546)) setNonEmpty!10546))

(assert (= setNonEmpty!10546 b!1550766))

(assert (= (and mapNonEmpty!8191 ((_ is Cons!16758) mapValue!8192)) b!1550765))

(declare-fun m!1823465 () Bool)

(assert (=> setNonEmpty!10546 m!1823465))

(declare-fun setIsEmpty!10547 () Bool)

(declare-fun setRes!10547 () Bool)

(assert (=> setIsEmpty!10547 setRes!10547))

(declare-fun b!1550767 () Bool)

(declare-fun e!994529 () Bool)

(declare-fun tp!453137 () Bool)

(assert (=> b!1550767 (= e!994529 tp!453137)))

(declare-fun b!1550768 () Bool)

(declare-fun e!994528 () Bool)

(declare-fun tp!453136 () Bool)

(assert (=> b!1550768 (= e!994528 tp!453136)))

(declare-fun e!994530 () Bool)

(assert (=> b!1550521 (= tp!453054 e!994530)))

(declare-fun setElem!10547 () Context!1566)

(declare-fun tp!453139 () Bool)

(declare-fun setNonEmpty!10547 () Bool)

(assert (=> setNonEmpty!10547 (= setRes!10547 (and tp!453139 (inv!22022 setElem!10547) e!994528))))

(declare-fun setRest!10547 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10547 (= (_2!9382 (h!22156 mapDefault!8190)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10547 true) setRest!10547))))

(declare-fun b!1550769 () Bool)

(declare-fun tp!453138 () Bool)

(assert (=> b!1550769 (= e!994530 (and (inv!22022 (_1!9381 (_1!9382 (h!22156 mapDefault!8190)))) e!994529 tp_is_empty!7057 setRes!10547 tp!453138))))

(declare-fun condSetEmpty!10547 () Bool)

(assert (=> b!1550769 (= condSetEmpty!10547 (= (_2!9382 (h!22156 mapDefault!8190)) ((as const (Array Context!1566 Bool)) false)))))

(assert (= b!1550769 b!1550767))

(assert (= (and b!1550769 condSetEmpty!10547) setIsEmpty!10547))

(assert (= (and b!1550769 (not condSetEmpty!10547)) setNonEmpty!10547))

(assert (= setNonEmpty!10547 b!1550768))

(assert (= (and b!1550521 ((_ is Cons!16755) mapDefault!8190)) b!1550769))

(declare-fun m!1823467 () Bool)

(assert (=> setNonEmpty!10547 m!1823467))

(declare-fun m!1823469 () Bool)

(assert (=> b!1550769 m!1823469))

(declare-fun e!994533 () Bool)

(assert (=> b!1550540 (= tp!453048 e!994533)))

(declare-fun b!1550770 () Bool)

(declare-fun e!994532 () Bool)

(declare-fun tp!453142 () Bool)

(assert (=> b!1550770 (= e!994532 tp!453142)))

(declare-fun e!994531 () Bool)

(declare-fun setRes!10548 () Bool)

(declare-fun setElem!10548 () Context!1566)

(declare-fun tp!453141 () Bool)

(declare-fun setNonEmpty!10548 () Bool)

(assert (=> setNonEmpty!10548 (= setRes!10548 (and tp!453141 (inv!22022 setElem!10548) e!994531))))

(declare-fun setRest!10548 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10548 (= (_2!9387 (h!22160 mapDefault!8192)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10548 true) setRest!10548))))

(declare-fun tp!453143 () Bool)

(declare-fun tp!453144 () Bool)

(declare-fun b!1550771 () Bool)

(assert (=> b!1550771 (= e!994533 (and tp!453143 (inv!22022 (_2!9386 (_1!9387 (h!22160 mapDefault!8192)))) e!994532 tp_is_empty!7057 setRes!10548 tp!453144))))

(declare-fun condSetEmpty!10548 () Bool)

(assert (=> b!1550771 (= condSetEmpty!10548 (= (_2!9387 (h!22160 mapDefault!8192)) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setIsEmpty!10548 () Bool)

(assert (=> setIsEmpty!10548 setRes!10548))

(declare-fun b!1550772 () Bool)

(declare-fun tp!453140 () Bool)

(assert (=> b!1550772 (= e!994531 tp!453140)))

(assert (= b!1550771 b!1550770))

(assert (= (and b!1550771 condSetEmpty!10548) setIsEmpty!10548))

(assert (= (and b!1550771 (not condSetEmpty!10548)) setNonEmpty!10548))

(assert (= setNonEmpty!10548 b!1550772))

(assert (= (and b!1550540 ((_ is Cons!16759) mapDefault!8192)) b!1550771))

(declare-fun m!1823471 () Bool)

(assert (=> setNonEmpty!10548 m!1823471))

(declare-fun m!1823473 () Bool)

(assert (=> b!1550771 m!1823473))

(declare-fun setElem!10549 () Context!1566)

(declare-fun tp!453146 () Bool)

(declare-fun setNonEmpty!10549 () Bool)

(declare-fun e!994535 () Bool)

(declare-fun setRes!10549 () Bool)

(assert (=> setNonEmpty!10549 (= setRes!10549 (and tp!453146 (inv!22022 setElem!10549) e!994535))))

(declare-fun setRest!10549 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10549 (= (_1!9384 (_1!9385 (h!22159 mapDefault!8191))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10549 true) setRest!10549))))

(declare-fun b!1550774 () Bool)

(declare-fun tp!453147 () Bool)

(assert (=> b!1550774 (= e!994535 tp!453147)))

(declare-fun setIsEmpty!10549 () Bool)

(assert (=> setIsEmpty!10549 setRes!10549))

(declare-fun b!1550773 () Bool)

(declare-fun e!994534 () Bool)

(declare-fun tp!453145 () Bool)

(assert (=> b!1550773 (= e!994534 (and setRes!10549 tp!453145))))

(declare-fun condSetEmpty!10549 () Bool)

(assert (=> b!1550773 (= condSetEmpty!10549 (= (_1!9384 (_1!9385 (h!22159 mapDefault!8191))) ((as const (Array Context!1566 Bool)) false)))))

(assert (=> b!1550555 (= tp!453038 e!994534)))

(assert (= (and b!1550773 condSetEmpty!10549) setIsEmpty!10549))

(assert (= (and b!1550773 (not condSetEmpty!10549)) setNonEmpty!10549))

(assert (= setNonEmpty!10549 b!1550774))

(assert (= (and b!1550555 ((_ is Cons!16758) mapDefault!8191)) b!1550773))

(declare-fun m!1823475 () Bool)

(assert (=> setNonEmpty!10549 m!1823475))

(declare-fun b!1550788 () Bool)

(declare-fun e!994538 () Bool)

(declare-fun tp!453161 () Bool)

(declare-fun tp!453160 () Bool)

(assert (=> b!1550788 (= e!994538 (and tp!453161 tp!453160))))

(declare-fun b!1550786 () Bool)

(declare-fun tp!453158 () Bool)

(declare-fun tp!453159 () Bool)

(assert (=> b!1550786 (= e!994538 (and tp!453158 tp!453159))))

(declare-fun b!1550787 () Bool)

(declare-fun tp!453162 () Bool)

(assert (=> b!1550787 (= e!994538 tp!453162)))

(declare-fun b!1550785 () Bool)

(assert (=> b!1550785 (= e!994538 tp_is_empty!7057)))

(assert (=> b!1550538 (= tp!453059 e!994538)))

(assert (= (and b!1550538 ((_ is ElementMatch!4265) (regex!2937 rule!240))) b!1550785))

(assert (= (and b!1550538 ((_ is Concat!7292) (regex!2937 rule!240))) b!1550786))

(assert (= (and b!1550538 ((_ is Star!4265) (regex!2937 rule!240))) b!1550787))

(assert (= (and b!1550538 ((_ is Union!4265) (regex!2937 rule!240))) b!1550788))

(declare-fun tp!453163 () Bool)

(declare-fun e!994539 () Bool)

(declare-fun b!1550789 () Bool)

(declare-fun tp!453165 () Bool)

(assert (=> b!1550789 (= e!994539 (and (inv!22017 (left!13632 (c!252246 (totalInput!2436 cacheFurthestNullable!103)))) tp!453163 (inv!22017 (right!13962 (c!252246 (totalInput!2436 cacheFurthestNullable!103)))) tp!453165))))

(declare-fun b!1550791 () Bool)

(declare-fun e!994540 () Bool)

(declare-fun tp!453164 () Bool)

(assert (=> b!1550791 (= e!994540 tp!453164)))

(declare-fun b!1550790 () Bool)

(assert (=> b!1550790 (= e!994539 (and (inv!22021 (xs!8355 (c!252246 (totalInput!2436 cacheFurthestNullable!103)))) e!994540))))

(assert (=> b!1550537 (= tp!453041 (and (inv!22017 (c!252246 (totalInput!2436 cacheFurthestNullable!103))) e!994539))))

(assert (= (and b!1550537 ((_ is Node!5555) (c!252246 (totalInput!2436 cacheFurthestNullable!103)))) b!1550789))

(assert (= b!1550790 b!1550791))

(assert (= (and b!1550537 ((_ is Leaf!8233) (c!252246 (totalInput!2436 cacheFurthestNullable!103)))) b!1550790))

(declare-fun m!1823477 () Bool)

(assert (=> b!1550789 m!1823477))

(declare-fun m!1823479 () Bool)

(assert (=> b!1550789 m!1823479))

(declare-fun m!1823481 () Bool)

(assert (=> b!1550790 m!1823481))

(assert (=> b!1550537 m!1823273))

(declare-fun e!994541 () Bool)

(declare-fun tp!453166 () Bool)

(declare-fun b!1550792 () Bool)

(declare-fun tp!453168 () Bool)

(assert (=> b!1550792 (= e!994541 (and (inv!22017 (left!13632 (c!252246 totalInput!568))) tp!453166 (inv!22017 (right!13962 (c!252246 totalInput!568))) tp!453168))))

(declare-fun b!1550794 () Bool)

(declare-fun e!994542 () Bool)

(declare-fun tp!453167 () Bool)

(assert (=> b!1550794 (= e!994542 tp!453167)))

(declare-fun b!1550793 () Bool)

(assert (=> b!1550793 (= e!994541 (and (inv!22021 (xs!8355 (c!252246 totalInput!568))) e!994542))))

(assert (=> b!1550548 (= tp!453035 (and (inv!22017 (c!252246 totalInput!568)) e!994541))))

(assert (= (and b!1550548 ((_ is Node!5555) (c!252246 totalInput!568))) b!1550792))

(assert (= b!1550793 b!1550794))

(assert (= (and b!1550548 ((_ is Leaf!8233) (c!252246 totalInput!568))) b!1550793))

(declare-fun m!1823483 () Bool)

(assert (=> b!1550792 m!1823483))

(declare-fun m!1823485 () Bool)

(assert (=> b!1550792 m!1823485))

(declare-fun m!1823487 () Bool)

(assert (=> b!1550793 m!1823487))

(assert (=> b!1550548 m!1823289))

(declare-fun setNonEmpty!10550 () Bool)

(declare-fun tp!453170 () Bool)

(declare-fun setRes!10550 () Bool)

(declare-fun setElem!10550 () Context!1566)

(declare-fun e!994544 () Bool)

(assert (=> setNonEmpty!10550 (= setRes!10550 (and tp!453170 (inv!22022 setElem!10550) e!994544))))

(declare-fun setRest!10550 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10550 (= (_1!9384 (_1!9385 (h!22159 (zeroValue!2025 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10550 true) setRest!10550))))

(declare-fun b!1550796 () Bool)

(declare-fun tp!453171 () Bool)

(assert (=> b!1550796 (= e!994544 tp!453171)))

(declare-fun setIsEmpty!10550 () Bool)

(assert (=> setIsEmpty!10550 setRes!10550))

(declare-fun b!1550795 () Bool)

(declare-fun e!994543 () Bool)

(declare-fun tp!453169 () Bool)

(assert (=> b!1550795 (= e!994543 (and setRes!10550 tp!453169))))

(declare-fun condSetEmpty!10550 () Bool)

(assert (=> b!1550795 (= condSetEmpty!10550 (= (_1!9384 (_1!9385 (h!22159 (zeroValue!2025 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))))) ((as const (Array Context!1566 Bool)) false)))))

(assert (=> b!1550546 (= tp!453044 e!994543)))

(assert (= (and b!1550795 condSetEmpty!10550) setIsEmpty!10550))

(assert (= (and b!1550795 (not condSetEmpty!10550)) setNonEmpty!10550))

(assert (= setNonEmpty!10550 b!1550796))

(assert (= (and b!1550546 ((_ is Cons!16758) (zeroValue!2025 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103)))))))) b!1550795))

(declare-fun m!1823489 () Bool)

(assert (=> setNonEmpty!10550 m!1823489))

(declare-fun setNonEmpty!10551 () Bool)

(declare-fun setElem!10551 () Context!1566)

(declare-fun setRes!10551 () Bool)

(declare-fun e!994546 () Bool)

(declare-fun tp!453173 () Bool)

(assert (=> setNonEmpty!10551 (= setRes!10551 (and tp!453173 (inv!22022 setElem!10551) e!994546))))

(declare-fun setRest!10551 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10551 (= (_1!9384 (_1!9385 (h!22159 (minValue!2025 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10551 true) setRest!10551))))

(declare-fun b!1550798 () Bool)

(declare-fun tp!453174 () Bool)

(assert (=> b!1550798 (= e!994546 tp!453174)))

(declare-fun setIsEmpty!10551 () Bool)

(assert (=> setIsEmpty!10551 setRes!10551))

(declare-fun b!1550797 () Bool)

(declare-fun e!994545 () Bool)

(declare-fun tp!453172 () Bool)

(assert (=> b!1550797 (= e!994545 (and setRes!10551 tp!453172))))

(declare-fun condSetEmpty!10551 () Bool)

(assert (=> b!1550797 (= condSetEmpty!10551 (= (_1!9384 (_1!9385 (h!22159 (minValue!2025 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103))))))))) ((as const (Array Context!1566 Bool)) false)))))

(assert (=> b!1550546 (= tp!453043 e!994545)))

(assert (= (and b!1550797 condSetEmpty!10551) setIsEmpty!10551))

(assert (= (and b!1550797 (not condSetEmpty!10551)) setNonEmpty!10551))

(assert (= setNonEmpty!10551 b!1550798))

(assert (= (and b!1550546 ((_ is Cons!16758) (minValue!2025 (v!23590 (underlying!3745 (v!23591 (underlying!3746 (cache!2093 cacheFurthestNullable!103)))))))) b!1550797))

(declare-fun m!1823491 () Bool)

(assert (=> setNonEmpty!10551 m!1823491))

(declare-fun b!1550813 () Bool)

(declare-fun e!994559 () Bool)

(declare-fun mapDefault!8198 () List!16827)

(declare-fun tp!453205 () Bool)

(declare-fun tp!453206 () Bool)

(declare-fun e!994560 () Bool)

(declare-fun setRes!10557 () Bool)

(assert (=> b!1550813 (= e!994560 (and tp!453205 (inv!22022 (_2!9386 (_1!9387 (h!22160 mapDefault!8198)))) e!994559 tp_is_empty!7057 setRes!10557 tp!453206))))

(declare-fun condSetEmpty!10557 () Bool)

(assert (=> b!1550813 (= condSetEmpty!10557 (= (_2!9387 (h!22160 mapDefault!8198)) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setIsEmpty!10556 () Bool)

(declare-fun setRes!10556 () Bool)

(assert (=> setIsEmpty!10556 setRes!10556))

(declare-fun mapNonEmpty!8198 () Bool)

(declare-fun mapRes!8198 () Bool)

(declare-fun tp!453197 () Bool)

(declare-fun e!994563 () Bool)

(assert (=> mapNonEmpty!8198 (= mapRes!8198 (and tp!453197 e!994563))))

(declare-fun mapValue!8198 () List!16827)

(declare-fun mapRest!8198 () (Array (_ BitVec 32) List!16827))

(declare-fun mapKey!8198 () (_ BitVec 32))

(assert (=> mapNonEmpty!8198 (= mapRest!8191 (store mapRest!8198 mapKey!8198 mapValue!8198))))

(declare-fun tp!453199 () Bool)

(declare-fun b!1550814 () Bool)

(declare-fun tp!453207 () Bool)

(declare-fun e!994564 () Bool)

(assert (=> b!1550814 (= e!994563 (and tp!453199 (inv!22022 (_2!9386 (_1!9387 (h!22160 mapValue!8198)))) e!994564 tp_is_empty!7057 setRes!10556 tp!453207))))

(declare-fun condSetEmpty!10556 () Bool)

(assert (=> b!1550814 (= condSetEmpty!10556 (= (_2!9387 (h!22160 mapValue!8198)) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun b!1550815 () Bool)

(declare-fun tp!453204 () Bool)

(assert (=> b!1550815 (= e!994564 tp!453204)))

(declare-fun setNonEmpty!10556 () Bool)

(declare-fun tp!453200 () Bool)

(declare-fun e!994561 () Bool)

(declare-fun setElem!10557 () Context!1566)

(assert (=> setNonEmpty!10556 (= setRes!10557 (and tp!453200 (inv!22022 setElem!10557) e!994561))))

(declare-fun setRest!10557 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10556 (= (_2!9387 (h!22160 mapDefault!8198)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10557 true) setRest!10557))))

(declare-fun b!1550816 () Bool)

(declare-fun tp!453202 () Bool)

(assert (=> b!1550816 (= e!994559 tp!453202)))

(declare-fun condMapEmpty!8198 () Bool)

(assert (=> mapNonEmpty!8192 (= condMapEmpty!8198 (= mapRest!8191 ((as const (Array (_ BitVec 32) List!16827)) mapDefault!8198)))))

(assert (=> mapNonEmpty!8192 (= tp!453052 (and e!994560 mapRes!8198))))

(declare-fun setIsEmpty!10557 () Bool)

(assert (=> setIsEmpty!10557 setRes!10557))

(declare-fun b!1550817 () Bool)

(declare-fun tp!453203 () Bool)

(assert (=> b!1550817 (= e!994561 tp!453203)))

(declare-fun tp!453201 () Bool)

(declare-fun setNonEmpty!10557 () Bool)

(declare-fun setElem!10556 () Context!1566)

(declare-fun e!994562 () Bool)

(assert (=> setNonEmpty!10557 (= setRes!10556 (and tp!453201 (inv!22022 setElem!10556) e!994562))))

(declare-fun setRest!10556 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10557 (= (_2!9387 (h!22160 mapValue!8198)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10556 true) setRest!10556))))

(declare-fun b!1550818 () Bool)

(declare-fun tp!453198 () Bool)

(assert (=> b!1550818 (= e!994562 tp!453198)))

(declare-fun mapIsEmpty!8198 () Bool)

(assert (=> mapIsEmpty!8198 mapRes!8198))

(assert (= (and mapNonEmpty!8192 condMapEmpty!8198) mapIsEmpty!8198))

(assert (= (and mapNonEmpty!8192 (not condMapEmpty!8198)) mapNonEmpty!8198))

(assert (= b!1550814 b!1550815))

(assert (= (and b!1550814 condSetEmpty!10556) setIsEmpty!10556))

(assert (= (and b!1550814 (not condSetEmpty!10556)) setNonEmpty!10557))

(assert (= setNonEmpty!10557 b!1550818))

(assert (= (and mapNonEmpty!8198 ((_ is Cons!16759) mapValue!8198)) b!1550814))

(assert (= b!1550813 b!1550816))

(assert (= (and b!1550813 condSetEmpty!10557) setIsEmpty!10557))

(assert (= (and b!1550813 (not condSetEmpty!10557)) setNonEmpty!10556))

(assert (= setNonEmpty!10556 b!1550817))

(assert (= (and mapNonEmpty!8192 ((_ is Cons!16759) mapDefault!8198)) b!1550813))

(declare-fun m!1823493 () Bool)

(assert (=> setNonEmpty!10557 m!1823493))

(declare-fun m!1823495 () Bool)

(assert (=> mapNonEmpty!8198 m!1823495))

(declare-fun m!1823497 () Bool)

(assert (=> setNonEmpty!10556 m!1823497))

(declare-fun m!1823499 () Bool)

(assert (=> b!1550814 m!1823499))

(declare-fun m!1823501 () Bool)

(assert (=> b!1550813 m!1823501))

(declare-fun e!994567 () Bool)

(assert (=> mapNonEmpty!8192 (= tp!453051 e!994567)))

(declare-fun b!1550819 () Bool)

(declare-fun e!994566 () Bool)

(declare-fun tp!453210 () Bool)

(assert (=> b!1550819 (= e!994566 tp!453210)))

(declare-fun e!994565 () Bool)

(declare-fun setElem!10558 () Context!1566)

(declare-fun setNonEmpty!10558 () Bool)

(declare-fun tp!453209 () Bool)

(declare-fun setRes!10558 () Bool)

(assert (=> setNonEmpty!10558 (= setRes!10558 (and tp!453209 (inv!22022 setElem!10558) e!994565))))

(declare-fun setRest!10558 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10558 (= (_2!9387 (h!22160 mapValue!8190)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10558 true) setRest!10558))))

(declare-fun b!1550820 () Bool)

(declare-fun tp!453212 () Bool)

(declare-fun tp!453211 () Bool)

(assert (=> b!1550820 (= e!994567 (and tp!453211 (inv!22022 (_2!9386 (_1!9387 (h!22160 mapValue!8190)))) e!994566 tp_is_empty!7057 setRes!10558 tp!453212))))

(declare-fun condSetEmpty!10558 () Bool)

(assert (=> b!1550820 (= condSetEmpty!10558 (= (_2!9387 (h!22160 mapValue!8190)) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setIsEmpty!10558 () Bool)

(assert (=> setIsEmpty!10558 setRes!10558))

(declare-fun b!1550821 () Bool)

(declare-fun tp!453208 () Bool)

(assert (=> b!1550821 (= e!994565 tp!453208)))

(assert (= b!1550820 b!1550819))

(assert (= (and b!1550820 condSetEmpty!10558) setIsEmpty!10558))

(assert (= (and b!1550820 (not condSetEmpty!10558)) setNonEmpty!10558))

(assert (= setNonEmpty!10558 b!1550821))

(assert (= (and mapNonEmpty!8192 ((_ is Cons!16759) mapValue!8190)) b!1550820))

(declare-fun m!1823503 () Bool)

(assert (=> setNonEmpty!10558 m!1823503))

(declare-fun m!1823505 () Bool)

(assert (=> b!1550820 m!1823505))

(declare-fun mapNonEmpty!8201 () Bool)

(declare-fun mapRes!8201 () Bool)

(declare-fun tp!453237 () Bool)

(declare-fun e!994580 () Bool)

(assert (=> mapNonEmpty!8201 (= mapRes!8201 (and tp!453237 e!994580))))

(declare-fun mapRest!8201 () (Array (_ BitVec 32) List!16823))

(declare-fun mapValue!8201 () List!16823)

(declare-fun mapKey!8201 () (_ BitVec 32))

(assert (=> mapNonEmpty!8201 (= mapRest!8190 (store mapRest!8201 mapKey!8201 mapValue!8201))))

(declare-fun setRes!10563 () Bool)

(declare-fun tp!453233 () Bool)

(declare-fun b!1550836 () Bool)

(declare-fun e!994583 () Bool)

(assert (=> b!1550836 (= e!994580 (and (inv!22022 (_1!9381 (_1!9382 (h!22156 mapValue!8201)))) e!994583 tp_is_empty!7057 setRes!10563 tp!453233))))

(declare-fun condSetEmpty!10564 () Bool)

(assert (=> b!1550836 (= condSetEmpty!10564 (= (_2!9382 (h!22156 mapValue!8201)) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setIsEmpty!10563 () Bool)

(declare-fun setRes!10564 () Bool)

(assert (=> setIsEmpty!10563 setRes!10564))

(declare-fun setNonEmpty!10563 () Bool)

(declare-fun setElem!10563 () Context!1566)

(declare-fun tp!453235 () Bool)

(declare-fun e!994582 () Bool)

(assert (=> setNonEmpty!10563 (= setRes!10563 (and tp!453235 (inv!22022 setElem!10563) e!994582))))

(declare-fun setRest!10563 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10563 (= (_2!9382 (h!22156 mapValue!8201)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10563 true) setRest!10563))))

(declare-fun b!1550838 () Bool)

(declare-fun tp!453232 () Bool)

(assert (=> b!1550838 (= e!994583 tp!453232)))

(declare-fun b!1550839 () Bool)

(declare-fun tp!453231 () Bool)

(assert (=> b!1550839 (= e!994582 tp!453231)))

(declare-fun b!1550840 () Bool)

(declare-fun e!994581 () Bool)

(declare-fun tp!453238 () Bool)

(assert (=> b!1550840 (= e!994581 tp!453238)))

(declare-fun mapIsEmpty!8201 () Bool)

(assert (=> mapIsEmpty!8201 mapRes!8201))

(declare-fun b!1550841 () Bool)

(declare-fun e!994584 () Bool)

(declare-fun tp!453236 () Bool)

(assert (=> b!1550841 (= e!994584 tp!453236)))

(declare-fun condMapEmpty!8201 () Bool)

(declare-fun mapDefault!8201 () List!16823)

(assert (=> mapNonEmpty!8190 (= condMapEmpty!8201 (= mapRest!8190 ((as const (Array (_ BitVec 32) List!16823)) mapDefault!8201)))))

(declare-fun e!994585 () Bool)

(assert (=> mapNonEmpty!8190 (= tp!453056 (and e!994585 mapRes!8201))))

(declare-fun tp!453239 () Bool)

(declare-fun b!1550837 () Bool)

(assert (=> b!1550837 (= e!994585 (and (inv!22022 (_1!9381 (_1!9382 (h!22156 mapDefault!8201)))) e!994584 tp_is_empty!7057 setRes!10564 tp!453239))))

(declare-fun condSetEmpty!10563 () Bool)

(assert (=> b!1550837 (= condSetEmpty!10563 (= (_2!9382 (h!22156 mapDefault!8201)) ((as const (Array Context!1566 Bool)) false)))))

(declare-fun setIsEmpty!10564 () Bool)

(assert (=> setIsEmpty!10564 setRes!10563))

(declare-fun setElem!10564 () Context!1566)

(declare-fun setNonEmpty!10564 () Bool)

(declare-fun tp!453234 () Bool)

(assert (=> setNonEmpty!10564 (= setRes!10564 (and tp!453234 (inv!22022 setElem!10564) e!994581))))

(declare-fun setRest!10564 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10564 (= (_2!9382 (h!22156 mapDefault!8201)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10564 true) setRest!10564))))

(assert (= (and mapNonEmpty!8190 condMapEmpty!8201) mapIsEmpty!8201))

(assert (= (and mapNonEmpty!8190 (not condMapEmpty!8201)) mapNonEmpty!8201))

(assert (= b!1550836 b!1550838))

(assert (= (and b!1550836 condSetEmpty!10564) setIsEmpty!10564))

(assert (= (and b!1550836 (not condSetEmpty!10564)) setNonEmpty!10563))

(assert (= setNonEmpty!10563 b!1550839))

(assert (= (and mapNonEmpty!8201 ((_ is Cons!16755) mapValue!8201)) b!1550836))

(assert (= b!1550837 b!1550841))

(assert (= (and b!1550837 condSetEmpty!10563) setIsEmpty!10563))

(assert (= (and b!1550837 (not condSetEmpty!10563)) setNonEmpty!10564))

(assert (= setNonEmpty!10564 b!1550840))

(assert (= (and mapNonEmpty!8190 ((_ is Cons!16755) mapDefault!8201)) b!1550837))

(declare-fun m!1823507 () Bool)

(assert (=> b!1550837 m!1823507))

(declare-fun m!1823509 () Bool)

(assert (=> setNonEmpty!10563 m!1823509))

(declare-fun m!1823511 () Bool)

(assert (=> b!1550836 m!1823511))

(declare-fun m!1823513 () Bool)

(assert (=> setNonEmpty!10564 m!1823513))

(declare-fun m!1823515 () Bool)

(assert (=> mapNonEmpty!8201 m!1823515))

(declare-fun setIsEmpty!10565 () Bool)

(declare-fun setRes!10565 () Bool)

(assert (=> setIsEmpty!10565 setRes!10565))

(declare-fun b!1550842 () Bool)

(declare-fun e!994587 () Bool)

(declare-fun tp!453241 () Bool)

(assert (=> b!1550842 (= e!994587 tp!453241)))

(declare-fun b!1550843 () Bool)

(declare-fun e!994586 () Bool)

(declare-fun tp!453240 () Bool)

(assert (=> b!1550843 (= e!994586 tp!453240)))

(declare-fun e!994588 () Bool)

(assert (=> mapNonEmpty!8190 (= tp!453045 e!994588)))

(declare-fun tp!453243 () Bool)

(declare-fun setElem!10565 () Context!1566)

(declare-fun setNonEmpty!10565 () Bool)

(assert (=> setNonEmpty!10565 (= setRes!10565 (and tp!453243 (inv!22022 setElem!10565) e!994586))))

(declare-fun setRest!10565 () (InoxSet Context!1566))

(assert (=> setNonEmpty!10565 (= (_2!9382 (h!22156 mapValue!8191)) ((_ map or) (store ((as const (Array Context!1566 Bool)) false) setElem!10565 true) setRest!10565))))

(declare-fun b!1550844 () Bool)

(declare-fun tp!453242 () Bool)

(assert (=> b!1550844 (= e!994588 (and (inv!22022 (_1!9381 (_1!9382 (h!22156 mapValue!8191)))) e!994587 tp_is_empty!7057 setRes!10565 tp!453242))))

(declare-fun condSetEmpty!10565 () Bool)

(assert (=> b!1550844 (= condSetEmpty!10565 (= (_2!9382 (h!22156 mapValue!8191)) ((as const (Array Context!1566 Bool)) false)))))

(assert (= b!1550844 b!1550842))

(assert (= (and b!1550844 condSetEmpty!10565) setIsEmpty!10565))

(assert (= (and b!1550844 (not condSetEmpty!10565)) setNonEmpty!10565))

(assert (= setNonEmpty!10565 b!1550843))

(assert (= (and mapNonEmpty!8190 ((_ is Cons!16755) mapValue!8191)) b!1550844))

(declare-fun m!1823517 () Bool)

(assert (=> setNonEmpty!10565 m!1823517))

(declare-fun m!1823519 () Bool)

(assert (=> b!1550844 m!1823519))

(check-sat (not d!460216) (not b!1550773) (not b!1550836) (not b!1550786) (not b!1550691) (not b!1550617) (not b!1550756) (not b!1550815) (not b!1550729) (not b!1550705) b_and!108245 (not setNonEmpty!10564) (not d!460194) (not b!1550797) (not b!1550624) (not b!1550730) (not b!1550796) (not b!1550798) (not bm!101772) (not bm!101777) (not d!460238) (not b!1550579) b_and!108255 (not b!1550726) (not b!1550774) (not setNonEmpty!10557) (not b!1550839) (not b_next!41865) b_and!108259 (not b!1550787) (not b!1550618) (not b!1550688) b_and!108253 (not b!1550765) (not bm!101779) (not bm!101776) (not d!460190) (not b!1550816) (not b!1550767) (not b!1550791) (not b!1550743) (not b!1550620) tp_is_empty!7057 (not b!1550548) (not b!1550758) (not b!1550769) (not b_next!41869) (not b!1550703) (not b!1550817) (not mapNonEmpty!8198) (not b!1550755) (not b!1550788) (not d!460200) (not d!460192) b_and!108247 (not b!1550573) (not bm!101773) (not b_next!41873) (not b!1550795) (not b!1550725) (not b!1550639) (not b!1550611) (not b!1550537) (not setNonEmpty!10542) (not b!1550844) (not d!460178) (not bm!101775) (not b!1550843) (not setNonEmpty!10558) (not b!1550630) (not b!1550770) (not b!1550813) (not d!460232) (not b!1550772) (not b!1550818) (not setNonEmpty!10548) (not b!1550840) (not setNonEmpty!10551) (not setNonEmpty!10563) (not b!1550768) (not b!1550564) (not b!1550744) (not d!460188) (not mapNonEmpty!8195) (not b!1550757) (not b_next!41871) (not d!460210) b_and!108249 (not b!1550792) (not b!1550637) (not setNonEmpty!10556) (not b!1550740) (not b!1550790) (not setNonEmpty!10546) (not b!1550841) (not b!1550742) (not setNonEmpty!10550) (not b!1550794) (not b!1550575) (not bm!101755) b_and!108251 (not b!1550727) (not b!1550715) (not d!460176) (not bm!101774) (not setNonEmpty!10547) (not b!1550690) (not b!1550574) (not d!460222) (not b!1550644) (not b!1550615) (not mapNonEmpty!8201) (not b_next!41861) (not b!1550651) (not b!1550681) (not b!1550636) (not setNonEmpty!10532) (not b!1550766) (not b!1550634) (not b!1550821) (not b!1550627) (not d!460196) (not b!1550793) (not b!1550619) (not b!1550838) (not bm!101778) (not b!1550741) (not b_next!41867) (not setNonEmpty!10549) (not b_next!41863) (not b!1550814) (not b!1550837) (not b!1550819) (not d!460198) (not setNonEmpty!10537) (not b!1550842) (not b!1550789) (not b!1550820) (not b!1550714) (not setNonEmpty!10533) (not b!1550716) (not setNonEmpty!10536) (not b!1550543) (not b!1550562) (not d!460234) b_and!108257 (not d!460204) (not b_next!41859) (not d!460236) (not b!1550633) (not setNonEmpty!10543) (not b!1550771) (not b!1550700) (not d!460202) (not b!1550728) (not setNonEmpty!10565) (not b!1550739))
(check-sat b_and!108245 b_and!108255 b_and!108253 (not b_next!41869) b_and!108247 (not b_next!41873) b_and!108251 (not b_next!41861) b_and!108257 (not b_next!41859) (not b_next!41865) b_and!108259 (not b_next!41871) b_and!108249 (not b_next!41867) (not b_next!41863))

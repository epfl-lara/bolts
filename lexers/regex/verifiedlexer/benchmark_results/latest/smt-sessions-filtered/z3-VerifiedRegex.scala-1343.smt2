; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71390 () Bool)

(assert start!71390)

(declare-fun b!770131 () Bool)

(declare-fun b_free!24261 () Bool)

(declare-fun b_next!24325 () Bool)

(assert (=> b!770131 (= b_free!24261 (not b_next!24325))))

(declare-fun tp!251673 () Bool)

(declare-fun b_and!71741 () Bool)

(assert (=> b!770131 (= tp!251673 b_and!71741)))

(declare-fun b!770136 () Bool)

(declare-fun b_free!24263 () Bool)

(declare-fun b_next!24327 () Bool)

(assert (=> b!770136 (= b_free!24263 (not b_next!24327))))

(declare-fun tp!251661 () Bool)

(declare-fun b_and!71743 () Bool)

(assert (=> b!770136 (= tp!251661 b_and!71743)))

(declare-fun b!770116 () Bool)

(declare-fun b_free!24265 () Bool)

(declare-fun b_next!24329 () Bool)

(assert (=> b!770116 (= b_free!24265 (not b_next!24329))))

(declare-fun tp!251657 () Bool)

(declare-fun b_and!71745 () Bool)

(assert (=> b!770116 (= tp!251657 b_and!71745)))

(declare-fun b!770113 () Bool)

(declare-fun b_free!24267 () Bool)

(declare-fun b_next!24331 () Bool)

(assert (=> b!770113 (= b_free!24267 (not b_next!24331))))

(declare-fun tp!251677 () Bool)

(declare-fun b_and!71747 () Bool)

(assert (=> b!770113 (= tp!251677 b_and!71747)))

(declare-fun b!770109 () Bool)

(declare-fun b_free!24269 () Bool)

(declare-fun b_next!24333 () Bool)

(assert (=> b!770109 (= b_free!24269 (not b_next!24333))))

(declare-fun tp!251674 () Bool)

(declare-fun b_and!71749 () Bool)

(assert (=> b!770109 (= tp!251674 b_and!71749)))

(declare-fun b!770128 () Bool)

(declare-fun b_free!24271 () Bool)

(declare-fun b_next!24335 () Bool)

(assert (=> b!770128 (= b_free!24271 (not b_next!24335))))

(declare-fun tp!251671 () Bool)

(declare-fun b_and!71751 () Bool)

(assert (=> b!770128 (= tp!251671 b_and!71751)))

(declare-fun b!770120 () Bool)

(declare-fun b_free!24273 () Bool)

(declare-fun b_next!24337 () Bool)

(assert (=> b!770120 (= b_free!24273 (not b_next!24337))))

(declare-fun tp!251666 () Bool)

(declare-fun b_and!71753 () Bool)

(assert (=> b!770120 (= tp!251666 b_and!71753)))

(declare-fun b_free!24275 () Bool)

(declare-fun b_next!24339 () Bool)

(assert (=> b!770120 (= b_free!24275 (not b_next!24339))))

(declare-fun tp!251680 () Bool)

(declare-fun b_and!71755 () Bool)

(assert (=> b!770120 (= tp!251680 b_and!71755)))

(declare-fun b!770103 () Bool)

(declare-fun e!495928 () Bool)

(declare-datatypes ((C!4564 0))(
  ( (C!4565 (val!2512 Int)) )
))
(declare-datatypes ((Regex!1981 0))(
  ( (ElementMatch!1981 (c!130242 C!4564)) (Concat!3656 (regOne!4474 Regex!1981) (regTwo!4474 Regex!1981)) (EmptyExpr!1981) (Star!1981 (reg!2310 Regex!1981)) (EmptyLang!1981) (Union!1981 (regOne!4475 Regex!1981) (regTwo!4475 Regex!1981)) )
))
(declare-datatypes ((List!8556 0))(
  ( (Nil!8542) (Cons!8542 (h!13943 Regex!1981) (t!91838 List!8556)) )
))
(declare-datatypes ((Context!766 0))(
  ( (Context!767 (exprs!883 List!8556)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9938 0))(
  ( (tuple2!9939 (_1!5725 (InoxSet Context!766)) (_2!5725 Int)) )
))
(declare-datatypes ((tuple2!9940 0))(
  ( (tuple2!9941 (_1!5726 tuple2!9938) (_2!5726 Int)) )
))
(declare-datatypes ((List!8557 0))(
  ( (Nil!8543) (Cons!8543 (h!13944 tuple2!9940) (t!91839 List!8557)) )
))
(declare-datatypes ((array!4109 0))(
  ( (array!4110 (arr!1834 (Array (_ BitVec 32) List!8557)) (size!6947 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1135 0))(
  ( (HashableExt!1134 (__x!6824 Int)) )
))
(declare-datatypes ((List!8558 0))(
  ( (Nil!8544) (Cons!8544 (h!13945 C!4564) (t!91840 List!8558)) )
))
(declare-datatypes ((IArray!5759 0))(
  ( (IArray!5760 (innerList!2937 List!8558)) )
))
(declare-datatypes ((Conc!2879 0))(
  ( (Node!2879 (left!6380 Conc!2879) (right!6710 Conc!2879) (csize!5988 Int) (cheight!3090 Int)) (Leaf!4223 (xs!5566 IArray!5759) (csize!5989 Int)) (Empty!2879) )
))
(declare-datatypes ((array!4111 0))(
  ( (array!4112 (arr!1835 (Array (_ BitVec 32) (_ BitVec 64))) (size!6948 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2326 0))(
  ( (LongMapFixedSize!2327 (defaultEntry!1519 Int) (mask!3038 (_ BitVec 32)) (extraKeys!1410 (_ BitVec 32)) (zeroValue!1420 List!8557) (minValue!1420 List!8557) (_size!2435 (_ BitVec 32)) (_keys!1457 array!4111) (_values!1442 array!4109) (_vacant!1224 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4593 0))(
  ( (Cell!4594 (v!18675 LongMapFixedSize!2326)) )
))
(declare-datatypes ((MutLongMap!1163 0))(
  ( (LongMap!1163 (underlying!2509 Cell!4593)) (MutLongMapExt!1162 (__x!6825 Int)) )
))
(declare-datatypes ((Cell!4595 0))(
  ( (Cell!4596 (v!18676 MutLongMap!1163)) )
))
(declare-datatypes ((MutableMap!1135 0))(
  ( (MutableMapExt!1134 (__x!6826 Int)) (HashMap!1135 (underlying!2510 Cell!4595) (hashF!3043 Hashable!1135) (_size!2436 (_ BitVec 32)) (defaultValue!1286 Int)) )
))
(declare-datatypes ((BalanceConc!5770 0))(
  ( (BalanceConc!5771 (c!130243 Conc!2879)) )
))
(declare-datatypes ((CacheFindLongestMatch!310 0))(
  ( (CacheFindLongestMatch!311 (cache!1522 MutableMap!1135) (totalInput!2114 BalanceConc!5770)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!310)

(declare-fun tp!251663 () Bool)

(declare-fun inv!10869 (Conc!2879) Bool)

(assert (=> b!770103 (= e!495928 (and (inv!10869 (c!130243 (totalInput!2114 cacheFindLongestMatch!134))) tp!251663))))

(declare-fun mapIsEmpty!5708 () Bool)

(declare-fun mapRes!5709 () Bool)

(assert (=> mapIsEmpty!5708 mapRes!5709))

(declare-fun b!770104 () Bool)

(declare-fun e!495921 () Bool)

(declare-fun tp!251665 () Bool)

(declare-fun mapRes!5710 () Bool)

(assert (=> b!770104 (= e!495921 (and tp!251665 mapRes!5710))))

(declare-fun condMapEmpty!5710 () Bool)

(declare-datatypes ((tuple2!9942 0))(
  ( (tuple2!9943 (_1!5727 Context!766) (_2!5727 C!4564)) )
))
(declare-datatypes ((tuple2!9944 0))(
  ( (tuple2!9945 (_1!5728 tuple2!9942) (_2!5728 (InoxSet Context!766))) )
))
(declare-datatypes ((List!8559 0))(
  ( (Nil!8545) (Cons!8545 (h!13946 tuple2!9944) (t!91841 List!8559)) )
))
(declare-datatypes ((array!4113 0))(
  ( (array!4114 (arr!1836 (Array (_ BitVec 32) List!8559)) (size!6949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2328 0))(
  ( (LongMapFixedSize!2329 (defaultEntry!1520 Int) (mask!3039 (_ BitVec 32)) (extraKeys!1411 (_ BitVec 32)) (zeroValue!1421 List!8559) (minValue!1421 List!8559) (_size!2437 (_ BitVec 32)) (_keys!1458 array!4111) (_values!1443 array!4113) (_vacant!1225 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4597 0))(
  ( (Cell!4598 (v!18677 LongMapFixedSize!2328)) )
))
(declare-datatypes ((MutLongMap!1164 0))(
  ( (LongMap!1164 (underlying!2511 Cell!4597)) (MutLongMapExt!1163 (__x!6827 Int)) )
))
(declare-datatypes ((Cell!4599 0))(
  ( (Cell!4600 (v!18678 MutLongMap!1164)) )
))
(declare-datatypes ((Hashable!1136 0))(
  ( (HashableExt!1135 (__x!6828 Int)) )
))
(declare-datatypes ((MutableMap!1136 0))(
  ( (MutableMapExt!1135 (__x!6829 Int)) (HashMap!1136 (underlying!2512 Cell!4599) (hashF!3044 Hashable!1136) (_size!2438 (_ BitVec 32)) (defaultValue!1287 Int)) )
))
(declare-datatypes ((CacheUp!640 0))(
  ( (CacheUp!641 (cache!1523 MutableMap!1136)) )
))
(declare-fun cacheUp!653 () CacheUp!640)

(declare-fun mapDefault!5708 () List!8559)

(assert (=> b!770104 (= condMapEmpty!5710 (= (arr!1836 (_values!1443 (v!18677 (underlying!2511 (v!18678 (underlying!2512 (cache!1523 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8559)) mapDefault!5708)))))

(declare-fun b!770105 () Bool)

(declare-fun res!337783 () Bool)

(declare-fun e!495943 () Bool)

(assert (=> b!770105 (=> (not res!337783) (not e!495943))))

(declare-datatypes ((List!8560 0))(
  ( (Nil!8546) (Cons!8546 (h!13947 (_ BitVec 16)) (t!91842 List!8560)) )
))
(declare-datatypes ((TokenValue!1675 0))(
  ( (FloatLiteralValue!3350 (text!12170 List!8560)) (TokenValueExt!1674 (__x!6830 Int)) (Broken!8375 (value!52128 List!8560)) (Object!1688) (End!1675) (Def!1675) (Underscore!1675) (Match!1675) (Else!1675) (Error!1675) (Case!1675) (If!1675) (Extends!1675) (Abstract!1675) (Class!1675) (Val!1675) (DelimiterValue!3350 (del!1735 List!8560)) (KeywordValue!1681 (value!52129 List!8560)) (CommentValue!3350 (value!52130 List!8560)) (WhitespaceValue!3350 (value!52131 List!8560)) (IndentationValue!1675 (value!52132 List!8560)) (String!10122) (Int32!1675) (Broken!8376 (value!52133 List!8560)) (Boolean!1676) (Unit!13101) (OperatorValue!1678 (op!1735 List!8560)) (IdentifierValue!3350 (value!52134 List!8560)) (IdentifierValue!3351 (value!52135 List!8560)) (WhitespaceValue!3351 (value!52136 List!8560)) (True!3350) (False!3350) (Broken!8377 (value!52137 List!8560)) (Broken!8378 (value!52138 List!8560)) (True!3351) (RightBrace!1675) (RightBracket!1675) (Colon!1675) (Null!1675) (Comma!1675) (LeftBracket!1675) (False!3351) (LeftBrace!1675) (ImaginaryLiteralValue!1675 (text!12171 List!8560)) (StringLiteralValue!5025 (value!52139 List!8560)) (EOFValue!1675 (value!52140 List!8560)) (IdentValue!1675 (value!52141 List!8560)) (DelimiterValue!3351 (value!52142 List!8560)) (DedentValue!1675 (value!52143 List!8560)) (NewLineValue!1675 (value!52144 List!8560)) (IntegerValue!5025 (value!52145 (_ BitVec 32)) (text!12172 List!8560)) (IntegerValue!5026 (value!52146 Int) (text!12173 List!8560)) (Times!1675) (Or!1675) (Equal!1675) (Minus!1675) (Broken!8379 (value!52147 List!8560)) (And!1675) (Div!1675) (LessEqual!1675) (Mod!1675) (Concat!3657) (Not!1675) (Plus!1675) (SpaceValue!1675 (value!52148 List!8560)) (IntegerValue!5027 (value!52149 Int) (text!12174 List!8560)) (StringLiteralValue!5026 (text!12175 List!8560)) (FloatLiteralValue!3351 (text!12176 List!8560)) (BytesLiteralValue!1675 (value!52150 List!8560)) (CommentValue!3351 (value!52151 List!8560)) (StringLiteralValue!5027 (value!52152 List!8560)) (ErrorTokenValue!1675 (msg!1736 List!8560)) )
))
(declare-datatypes ((TokenValueInjection!3086 0))(
  ( (TokenValueInjection!3087 (toValue!2623 Int) (toChars!2482 Int)) )
))
(declare-datatypes ((String!10123 0))(
  ( (String!10124 (value!52153 String)) )
))
(declare-datatypes ((Rule!3062 0))(
  ( (Rule!3063 (regex!1631 Regex!1981) (tag!1893 String!10123) (isSeparator!1631 Bool) (transformation!1631 TokenValueInjection!3086)) )
))
(declare-datatypes ((List!8561 0))(
  ( (Nil!8547) (Cons!8547 (h!13948 Rule!3062) (t!91843 List!8561)) )
))
(declare-fun rulesArg!343 () List!8561)

(declare-fun isEmpty!5208 (List!8561) Bool)

(assert (=> b!770105 (= res!337783 (not (isEmpty!5208 rulesArg!343)))))

(declare-fun b!770106 () Bool)

(declare-fun e!495927 () Bool)

(declare-fun e!495932 () Bool)

(assert (=> b!770106 (= e!495927 e!495932)))

(declare-fun b!770107 () Bool)

(declare-fun e!495918 () Bool)

(declare-fun totalInput!472 () BalanceConc!5770)

(declare-fun tp!251676 () Bool)

(assert (=> b!770107 (= e!495918 (and (inv!10869 (c!130243 totalInput!472)) tp!251676))))

(declare-fun tp!251654 () Bool)

(declare-fun tp!251670 () Bool)

(declare-datatypes ((tuple3!974 0))(
  ( (tuple3!975 (_1!5729 Regex!1981) (_2!5729 Context!766) (_3!756 C!4564)) )
))
(declare-datatypes ((tuple2!9946 0))(
  ( (tuple2!9947 (_1!5730 tuple3!974) (_2!5730 (InoxSet Context!766))) )
))
(declare-datatypes ((List!8562 0))(
  ( (Nil!8548) (Cons!8548 (h!13949 tuple2!9946) (t!91844 List!8562)) )
))
(declare-datatypes ((array!4115 0))(
  ( (array!4116 (arr!1837 (Array (_ BitVec 32) List!8562)) (size!6950 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2330 0))(
  ( (LongMapFixedSize!2331 (defaultEntry!1521 Int) (mask!3040 (_ BitVec 32)) (extraKeys!1412 (_ BitVec 32)) (zeroValue!1422 List!8562) (minValue!1422 List!8562) (_size!2439 (_ BitVec 32)) (_keys!1459 array!4111) (_values!1444 array!4115) (_vacant!1226 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4601 0))(
  ( (Cell!4602 (v!18679 LongMapFixedSize!2330)) )
))
(declare-datatypes ((MutLongMap!1165 0))(
  ( (LongMap!1165 (underlying!2513 Cell!4601)) (MutLongMapExt!1164 (__x!6831 Int)) )
))
(declare-datatypes ((Cell!4603 0))(
  ( (Cell!4604 (v!18680 MutLongMap!1165)) )
))
(declare-datatypes ((Hashable!1137 0))(
  ( (HashableExt!1136 (__x!6832 Int)) )
))
(declare-datatypes ((MutableMap!1137 0))(
  ( (MutableMapExt!1136 (__x!6833 Int)) (HashMap!1137 (underlying!2514 Cell!4603) (hashF!3045 Hashable!1137) (_size!2440 (_ BitVec 32)) (defaultValue!1288 Int)) )
))
(declare-datatypes ((CacheDown!646 0))(
  ( (CacheDown!647 (cache!1524 MutableMap!1137)) )
))
(declare-fun cacheDown!666 () CacheDown!646)

(declare-fun e!495915 () Bool)

(declare-fun e!495929 () Bool)

(declare-fun array_inv!1331 (array!4111) Bool)

(declare-fun array_inv!1332 (array!4115) Bool)

(assert (=> b!770109 (= e!495929 (and tp!251674 tp!251654 tp!251670 (array_inv!1331 (_keys!1459 (v!18679 (underlying!2513 (v!18680 (underlying!2514 (cache!1524 cacheDown!666))))))) (array_inv!1332 (_values!1444 (v!18679 (underlying!2513 (v!18680 (underlying!2514 (cache!1524 cacheDown!666))))))) e!495915))))

(declare-fun b!770110 () Bool)

(declare-fun e!495946 () Bool)

(declare-fun e!495925 () Bool)

(declare-fun tp!251658 () Bool)

(assert (=> b!770110 (= e!495946 (and e!495925 tp!251658))))

(declare-fun b!770111 () Bool)

(declare-fun e!495926 () Bool)

(assert (=> b!770111 (= e!495926 e!495929)))

(declare-fun b!770112 () Bool)

(declare-fun res!337782 () Bool)

(declare-fun e!495937 () Bool)

(assert (=> b!770112 (=> (not res!337782) (not e!495937))))

(declare-fun valid!945 (CacheUp!640) Bool)

(assert (=> b!770112 (= res!337782 (valid!945 cacheUp!653))))

(declare-fun mapIsEmpty!5709 () Bool)

(declare-fun mapRes!5708 () Bool)

(assert (=> mapIsEmpty!5709 mapRes!5708))

(declare-fun e!495914 () Bool)

(declare-fun tp!251667 () Bool)

(declare-fun e!495934 () Bool)

(declare-fun tp!251672 () Bool)

(declare-fun array_inv!1333 (array!4109) Bool)

(assert (=> b!770113 (= e!495934 (and tp!251677 tp!251667 tp!251672 (array_inv!1331 (_keys!1457 (v!18675 (underlying!2509 (v!18676 (underlying!2510 (cache!1522 cacheFindLongestMatch!134))))))) (array_inv!1333 (_values!1442 (v!18675 (underlying!2509 (v!18676 (underlying!2510 (cache!1522 cacheFindLongestMatch!134))))))) e!495914))))

(declare-fun b!770114 () Bool)

(declare-fun e!495940 () Bool)

(declare-fun e!495936 () Bool)

(assert (=> b!770114 (= e!495940 e!495936)))

(declare-fun b!770115 () Bool)

(declare-fun e!495938 () Bool)

(declare-fun e!495944 () Bool)

(assert (=> b!770115 (= e!495938 e!495944)))

(declare-fun e!495930 () Bool)

(assert (=> b!770116 (= e!495936 (and e!495930 tp!251657))))

(declare-fun mapNonEmpty!5708 () Bool)

(declare-fun tp!251659 () Bool)

(declare-fun tp!251664 () Bool)

(assert (=> mapNonEmpty!5708 (= mapRes!5709 (and tp!251659 tp!251664))))

(declare-fun mapValue!5709 () List!8557)

(declare-fun mapKey!5710 () (_ BitVec 32))

(declare-fun mapRest!5710 () (Array (_ BitVec 32) List!8557))

(assert (=> mapNonEmpty!5708 (= (arr!1834 (_values!1442 (v!18675 (underlying!2509 (v!18676 (underlying!2510 (cache!1522 cacheFindLongestMatch!134))))))) (store mapRest!5710 mapKey!5710 mapValue!5709))))

(declare-fun b!770117 () Bool)

(declare-fun e!495920 () Bool)

(assert (=> b!770117 (= e!495920 true)))

(declare-fun input!1432 () BalanceConc!5770)

(declare-datatypes ((LexerInterface!1433 0))(
  ( (LexerInterfaceExt!1430 (__x!6834 Int)) (Lexer!1431) )
))
(declare-fun thiss!15653 () LexerInterface!1433)

(declare-datatypes ((Token!2940 0))(
  ( (Token!2941 (value!52154 TokenValue!1675) (rule!2756 Rule!3062) (size!6951 Int) (originalCharacters!1895 List!8558)) )
))
(declare-datatypes ((tuple2!9948 0))(
  ( (tuple2!9949 (_1!5731 Token!2940) (_2!5731 BalanceConc!5770)) )
))
(declare-datatypes ((Option!1869 0))(
  ( (None!1868) (Some!1868 (v!18681 tuple2!9948)) )
))
(declare-datatypes ((tuple4!538 0))(
  ( (tuple4!539 (_1!5732 Option!1869) (_2!5732 CacheUp!640) (_3!757 CacheDown!646) (_4!269 CacheFindLongestMatch!310)) )
))
(declare-fun lt!313555 () tuple4!538)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!62 (LexerInterface!1433 Rule!3062 BalanceConc!5770 BalanceConc!5770 CacheUp!640 CacheDown!646 CacheFindLongestMatch!310) tuple4!538)

(assert (=> b!770117 (= lt!313555 (maxPrefixOneRuleZipperSequenceV2Mem!62 thiss!15653 (h!13948 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!770118 () Bool)

(assert (=> b!770118 (= e!495943 e!495937)))

(declare-fun res!337781 () Bool)

(assert (=> b!770118 (=> (not res!337781) (not e!495937))))

(declare-fun lt!313551 () List!8558)

(declare-fun isSuffix!213 (List!8558 List!8558) Bool)

(declare-fun list!3431 (BalanceConc!5770) List!8558)

(assert (=> b!770118 (= res!337781 (isSuffix!213 lt!313551 (list!3431 totalInput!472)))))

(assert (=> b!770118 (= lt!313551 (list!3431 input!1432))))

(declare-fun mapIsEmpty!5710 () Bool)

(assert (=> mapIsEmpty!5710 mapRes!5710))

(declare-fun b!770119 () Bool)

(declare-fun tp!251678 () Bool)

(assert (=> b!770119 (= e!495914 (and tp!251678 mapRes!5709))))

(declare-fun condMapEmpty!5708 () Bool)

(declare-fun mapDefault!5710 () List!8557)

(assert (=> b!770119 (= condMapEmpty!5708 (= (arr!1834 (_values!1442 (v!18675 (underlying!2509 (v!18676 (underlying!2510 (cache!1522 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8557)) mapDefault!5710)))))

(declare-fun e!495923 () Bool)

(assert (=> b!770120 (= e!495923 (and tp!251666 tp!251680))))

(declare-fun b!770121 () Bool)

(declare-fun e!495941 () Bool)

(declare-fun e!495931 () Bool)

(declare-fun lt!313552 () MutLongMap!1164)

(get-info :version)

(assert (=> b!770121 (= e!495941 (and e!495931 ((_ is LongMap!1164) lt!313552)))))

(assert (=> b!770121 (= lt!313552 (v!18678 (underlying!2512 (cache!1523 cacheUp!653))))))

(declare-fun b!770122 () Bool)

(declare-fun tp!251679 () Bool)

(assert (=> b!770122 (= e!495915 (and tp!251679 mapRes!5708))))

(declare-fun condMapEmpty!5709 () Bool)

(declare-fun mapDefault!5709 () List!8562)

(assert (=> b!770122 (= condMapEmpty!5709 (= (arr!1837 (_values!1444 (v!18679 (underlying!2513 (v!18680 (underlying!2514 (cache!1524 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8562)) mapDefault!5709)))))

(declare-fun b!770123 () Bool)

(declare-fun e!495939 () Bool)

(assert (=> b!770123 (= e!495939 e!495934)))

(declare-fun b!770124 () Bool)

(assert (=> b!770124 (= e!495937 (not e!495920))))

(declare-fun res!337789 () Bool)

(assert (=> b!770124 (=> res!337789 e!495920)))

(assert (=> b!770124 (= res!337789 (or (and ((_ is Cons!8547) rulesArg!343) ((_ is Nil!8547) (t!91843 rulesArg!343))) (not ((_ is Cons!8547) rulesArg!343))))))

(declare-fun isPrefix!988 (List!8558 List!8558) Bool)

(assert (=> b!770124 (isPrefix!988 lt!313551 lt!313551)))

(declare-datatypes ((Unit!13102 0))(
  ( (Unit!13103) )
))
(declare-fun lt!313554 () Unit!13102)

(declare-fun lemmaIsPrefixRefl!699 (List!8558 List!8558) Unit!13102)

(assert (=> b!770124 (= lt!313554 (lemmaIsPrefixRefl!699 lt!313551 lt!313551))))

(declare-fun b!770125 () Bool)

(declare-fun res!337787 () Bool)

(assert (=> b!770125 (=> (not res!337787) (not e!495937))))

(declare-fun valid!946 (CacheFindLongestMatch!310) Bool)

(assert (=> b!770125 (= res!337787 (valid!946 cacheFindLongestMatch!134))))

(declare-fun b!770126 () Bool)

(declare-fun res!337786 () Bool)

(assert (=> b!770126 (=> (not res!337786) (not e!495937))))

(assert (=> b!770126 (= res!337786 (= (totalInput!2114 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun b!770127 () Bool)

(declare-fun e!495924 () Bool)

(assert (=> b!770127 (= e!495924 e!495926)))

(declare-fun e!495922 () Bool)

(declare-fun e!495942 () Bool)

(assert (=> b!770128 (= e!495922 (and e!495942 tp!251671))))

(declare-fun mapNonEmpty!5709 () Bool)

(declare-fun tp!251668 () Bool)

(declare-fun tp!251653 () Bool)

(assert (=> mapNonEmpty!5709 (= mapRes!5710 (and tp!251668 tp!251653))))

(declare-fun mapValue!5710 () List!8559)

(declare-fun mapRest!5709 () (Array (_ BitVec 32) List!8559))

(declare-fun mapKey!5708 () (_ BitVec 32))

(assert (=> mapNonEmpty!5709 (= (arr!1836 (_values!1443 (v!18677 (underlying!2511 (v!18678 (underlying!2512 (cache!1523 cacheUp!653))))))) (store mapRest!5709 mapKey!5708 mapValue!5710))))

(declare-fun mapNonEmpty!5710 () Bool)

(declare-fun tp!251675 () Bool)

(declare-fun tp!251662 () Bool)

(assert (=> mapNonEmpty!5710 (= mapRes!5708 (and tp!251675 tp!251662))))

(declare-fun mapValue!5708 () List!8562)

(declare-fun mapRest!5708 () (Array (_ BitVec 32) List!8562))

(declare-fun mapKey!5709 () (_ BitVec 32))

(assert (=> mapNonEmpty!5710 (= (arr!1837 (_values!1444 (v!18679 (underlying!2513 (v!18680 (underlying!2514 (cache!1524 cacheDown!666))))))) (store mapRest!5708 mapKey!5709 mapValue!5708))))

(declare-fun b!770129 () Bool)

(assert (=> b!770129 (= e!495931 e!495927)))

(declare-fun b!770130 () Bool)

(declare-fun res!337784 () Bool)

(assert (=> b!770130 (=> (not res!337784) (not e!495943))))

(declare-fun rulesValidInductive!577 (LexerInterface!1433 List!8561) Bool)

(assert (=> b!770130 (= res!337784 (rulesValidInductive!577 thiss!15653 rulesArg!343))))

(assert (=> b!770131 (= e!495944 (and e!495941 tp!251673))))

(declare-fun e!495919 () Bool)

(declare-fun b!770132 () Bool)

(declare-fun inv!10870 (BalanceConc!5770) Bool)

(assert (=> b!770132 (= e!495919 (and e!495922 (inv!10870 (totalInput!2114 cacheFindLongestMatch!134)) e!495928))))

(declare-fun res!337788 () Bool)

(assert (=> start!71390 (=> (not res!337788) (not e!495943))))

(assert (=> start!71390 (= res!337788 ((_ is Lexer!1431) thiss!15653))))

(assert (=> start!71390 e!495943))

(assert (=> start!71390 e!495946))

(declare-fun e!495945 () Bool)

(assert (=> start!71390 (and (inv!10870 input!1432) e!495945)))

(declare-fun inv!10871 (CacheFindLongestMatch!310) Bool)

(assert (=> start!71390 (and (inv!10871 cacheFindLongestMatch!134) e!495919)))

(assert (=> start!71390 true))

(declare-fun inv!10872 (CacheUp!640) Bool)

(assert (=> start!71390 (and (inv!10872 cacheUp!653) e!495938)))

(assert (=> start!71390 (and (inv!10870 totalInput!472) e!495918)))

(declare-fun inv!10873 (CacheDown!646) Bool)

(assert (=> start!71390 (and (inv!10873 cacheDown!666) e!495940)))

(declare-fun b!770108 () Bool)

(declare-fun e!495933 () Bool)

(assert (=> b!770108 (= e!495933 e!495939)))

(declare-fun b!770133 () Bool)

(declare-fun tp!251655 () Bool)

(assert (=> b!770133 (= e!495945 (and (inv!10869 (c!130243 input!1432)) tp!251655))))

(declare-fun b!770134 () Bool)

(declare-fun res!337785 () Bool)

(assert (=> b!770134 (=> (not res!337785) (not e!495937))))

(declare-fun valid!947 (CacheDown!646) Bool)

(assert (=> b!770134 (= res!337785 (valid!947 cacheDown!666))))

(declare-fun b!770135 () Bool)

(declare-fun lt!313553 () MutLongMap!1165)

(assert (=> b!770135 (= e!495930 (and e!495924 ((_ is LongMap!1165) lt!313553)))))

(assert (=> b!770135 (= lt!313553 (v!18680 (underlying!2514 (cache!1524 cacheDown!666))))))

(declare-fun tp!251669 () Bool)

(declare-fun tp!251656 () Bool)

(declare-fun array_inv!1334 (array!4113) Bool)

(assert (=> b!770136 (= e!495932 (and tp!251661 tp!251656 tp!251669 (array_inv!1331 (_keys!1458 (v!18677 (underlying!2511 (v!18678 (underlying!2512 (cache!1523 cacheUp!653))))))) (array_inv!1334 (_values!1443 (v!18677 (underlying!2511 (v!18678 (underlying!2512 (cache!1523 cacheUp!653))))))) e!495921))))

(declare-fun tp!251660 () Bool)

(declare-fun b!770137 () Bool)

(declare-fun inv!10863 (String!10123) Bool)

(declare-fun inv!10874 (TokenValueInjection!3086) Bool)

(assert (=> b!770137 (= e!495925 (and tp!251660 (inv!10863 (tag!1893 (h!13948 rulesArg!343))) (inv!10874 (transformation!1631 (h!13948 rulesArg!343))) e!495923))))

(declare-fun b!770138 () Bool)

(declare-fun lt!313556 () MutLongMap!1163)

(assert (=> b!770138 (= e!495942 (and e!495933 ((_ is LongMap!1163) lt!313556)))))

(assert (=> b!770138 (= lt!313556 (v!18676 (underlying!2510 (cache!1522 cacheFindLongestMatch!134))))))

(assert (= (and start!71390 res!337788) b!770130))

(assert (= (and b!770130 res!337784) b!770105))

(assert (= (and b!770105 res!337783) b!770118))

(assert (= (and b!770118 res!337781) b!770112))

(assert (= (and b!770112 res!337782) b!770134))

(assert (= (and b!770134 res!337785) b!770125))

(assert (= (and b!770125 res!337787) b!770126))

(assert (= (and b!770126 res!337786) b!770124))

(assert (= (and b!770124 (not res!337789)) b!770117))

(assert (= b!770137 b!770120))

(assert (= b!770110 b!770137))

(assert (= (and start!71390 ((_ is Cons!8547) rulesArg!343)) b!770110))

(assert (= start!71390 b!770133))

(assert (= (and b!770119 condMapEmpty!5708) mapIsEmpty!5708))

(assert (= (and b!770119 (not condMapEmpty!5708)) mapNonEmpty!5708))

(assert (= b!770113 b!770119))

(assert (= b!770123 b!770113))

(assert (= b!770108 b!770123))

(assert (= (and b!770138 ((_ is LongMap!1163) (v!18676 (underlying!2510 (cache!1522 cacheFindLongestMatch!134))))) b!770108))

(assert (= b!770128 b!770138))

(assert (= (and b!770132 ((_ is HashMap!1135) (cache!1522 cacheFindLongestMatch!134))) b!770128))

(assert (= b!770132 b!770103))

(assert (= start!71390 b!770132))

(assert (= (and b!770104 condMapEmpty!5710) mapIsEmpty!5710))

(assert (= (and b!770104 (not condMapEmpty!5710)) mapNonEmpty!5709))

(assert (= b!770136 b!770104))

(assert (= b!770106 b!770136))

(assert (= b!770129 b!770106))

(assert (= (and b!770121 ((_ is LongMap!1164) (v!18678 (underlying!2512 (cache!1523 cacheUp!653))))) b!770129))

(assert (= b!770131 b!770121))

(assert (= (and b!770115 ((_ is HashMap!1136) (cache!1523 cacheUp!653))) b!770131))

(assert (= start!71390 b!770115))

(assert (= start!71390 b!770107))

(assert (= (and b!770122 condMapEmpty!5709) mapIsEmpty!5709))

(assert (= (and b!770122 (not condMapEmpty!5709)) mapNonEmpty!5710))

(assert (= b!770109 b!770122))

(assert (= b!770111 b!770109))

(assert (= b!770127 b!770111))

(assert (= (and b!770135 ((_ is LongMap!1165) (v!18680 (underlying!2514 (cache!1524 cacheDown!666))))) b!770127))

(assert (= b!770116 b!770135))

(assert (= (and b!770114 ((_ is HashMap!1137) (cache!1524 cacheDown!666))) b!770116))

(assert (= start!71390 b!770114))

(declare-fun m!1039101 () Bool)

(assert (=> mapNonEmpty!5708 m!1039101))

(declare-fun m!1039103 () Bool)

(assert (=> b!770118 m!1039103))

(assert (=> b!770118 m!1039103))

(declare-fun m!1039105 () Bool)

(assert (=> b!770118 m!1039105))

(declare-fun m!1039107 () Bool)

(assert (=> b!770118 m!1039107))

(declare-fun m!1039109 () Bool)

(assert (=> b!770112 m!1039109))

(declare-fun m!1039111 () Bool)

(assert (=> b!770125 m!1039111))

(declare-fun m!1039113 () Bool)

(assert (=> b!770137 m!1039113))

(declare-fun m!1039115 () Bool)

(assert (=> b!770137 m!1039115))

(declare-fun m!1039117 () Bool)

(assert (=> b!770132 m!1039117))

(declare-fun m!1039119 () Bool)

(assert (=> b!770124 m!1039119))

(declare-fun m!1039121 () Bool)

(assert (=> b!770124 m!1039121))

(declare-fun m!1039123 () Bool)

(assert (=> b!770133 m!1039123))

(declare-fun m!1039125 () Bool)

(assert (=> mapNonEmpty!5710 m!1039125))

(declare-fun m!1039127 () Bool)

(assert (=> mapNonEmpty!5709 m!1039127))

(declare-fun m!1039129 () Bool)

(assert (=> b!770113 m!1039129))

(declare-fun m!1039131 () Bool)

(assert (=> b!770113 m!1039131))

(declare-fun m!1039133 () Bool)

(assert (=> b!770136 m!1039133))

(declare-fun m!1039135 () Bool)

(assert (=> b!770136 m!1039135))

(declare-fun m!1039137 () Bool)

(assert (=> b!770103 m!1039137))

(declare-fun m!1039139 () Bool)

(assert (=> b!770109 m!1039139))

(declare-fun m!1039141 () Bool)

(assert (=> b!770109 m!1039141))

(declare-fun m!1039143 () Bool)

(assert (=> b!770107 m!1039143))

(declare-fun m!1039145 () Bool)

(assert (=> start!71390 m!1039145))

(declare-fun m!1039147 () Bool)

(assert (=> start!71390 m!1039147))

(declare-fun m!1039149 () Bool)

(assert (=> start!71390 m!1039149))

(declare-fun m!1039151 () Bool)

(assert (=> start!71390 m!1039151))

(declare-fun m!1039153 () Bool)

(assert (=> start!71390 m!1039153))

(declare-fun m!1039155 () Bool)

(assert (=> b!770130 m!1039155))

(declare-fun m!1039157 () Bool)

(assert (=> b!770134 m!1039157))

(declare-fun m!1039159 () Bool)

(assert (=> b!770117 m!1039159))

(declare-fun m!1039161 () Bool)

(assert (=> b!770105 m!1039161))

(check-sat b_and!71741 b_and!71753 (not mapNonEmpty!5708) (not b_next!24333) (not b!770124) b_and!71749 (not b!770133) (not b!770119) (not b!770107) (not b_next!24327) (not b!770137) (not b!770110) (not mapNonEmpty!5710) (not b_next!24339) (not b!770125) (not b!770113) (not b!770118) b_and!71743 (not b!770103) (not b!770132) b_and!71751 (not b!770130) b_and!71747 (not b!770117) (not b_next!24325) b_and!71755 (not start!71390) (not mapNonEmpty!5709) b_and!71745 (not b!770122) (not b!770104) (not b_next!24335) (not b!770105) (not b!770112) (not b!770136) (not b!770134) (not b!770109) (not b_next!24337) (not b_next!24331) (not b_next!24329))
(check-sat b_and!71741 b_and!71753 (not b_next!24333) (not b_next!24339) b_and!71743 b_and!71751 b_and!71747 b_and!71749 b_and!71745 (not b_next!24335) (not b_next!24327) (not b_next!24325) b_and!71755 (not b_next!24337) (not b_next!24331) (not b_next!24329))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71336 () Bool)

(assert start!71336)

(declare-fun b!769274 () Bool)

(declare-fun b_free!24161 () Bool)

(declare-fun b_next!24225 () Bool)

(assert (=> b!769274 (= b_free!24161 (not b_next!24225))))

(declare-fun tp!250972 () Bool)

(declare-fun b_and!71641 () Bool)

(assert (=> b!769274 (= tp!250972 b_and!71641)))

(declare-fun b!769253 () Bool)

(declare-fun b_free!24163 () Bool)

(declare-fun b_next!24227 () Bool)

(assert (=> b!769253 (= b_free!24163 (not b_next!24227))))

(declare-fun tp!250970 () Bool)

(declare-fun b_and!71643 () Bool)

(assert (=> b!769253 (= tp!250970 b_and!71643)))

(declare-fun b!769251 () Bool)

(declare-fun b_free!24165 () Bool)

(declare-fun b_next!24229 () Bool)

(assert (=> b!769251 (= b_free!24165 (not b_next!24229))))

(declare-fun tp!250967 () Bool)

(declare-fun b_and!71645 () Bool)

(assert (=> b!769251 (= tp!250967 b_and!71645)))

(declare-fun b_free!24167 () Bool)

(declare-fun b_next!24231 () Bool)

(assert (=> b!769251 (= b_free!24167 (not b_next!24231))))

(declare-fun tp!250975 () Bool)

(declare-fun b_and!71647 () Bool)

(assert (=> b!769251 (= tp!250975 b_and!71647)))

(declare-fun b!769281 () Bool)

(declare-fun b_free!24169 () Bool)

(declare-fun b_next!24233 () Bool)

(assert (=> b!769281 (= b_free!24169 (not b_next!24233))))

(declare-fun tp!250958 () Bool)

(declare-fun b_and!71649 () Bool)

(assert (=> b!769281 (= tp!250958 b_and!71649)))

(declare-fun b!769258 () Bool)

(declare-fun b_free!24171 () Bool)

(declare-fun b_next!24235 () Bool)

(assert (=> b!769258 (= b_free!24171 (not b_next!24235))))

(declare-fun tp!250979 () Bool)

(declare-fun b_and!71651 () Bool)

(assert (=> b!769258 (= tp!250979 b_and!71651)))

(declare-fun b!769252 () Bool)

(declare-fun b_free!24173 () Bool)

(declare-fun b_next!24237 () Bool)

(assert (=> b!769252 (= b_free!24173 (not b_next!24237))))

(declare-fun tp!250968 () Bool)

(declare-fun b_and!71653 () Bool)

(assert (=> b!769252 (= tp!250968 b_and!71653)))

(declare-fun b!769279 () Bool)

(declare-fun b_free!24175 () Bool)

(declare-fun b_next!24239 () Bool)

(assert (=> b!769279 (= b_free!24175 (not b_next!24239))))

(declare-fun tp!250963 () Bool)

(declare-fun b_and!71655 () Bool)

(assert (=> b!769279 (= tp!250963 b_and!71655)))

(declare-fun b!769249 () Bool)

(declare-fun e!495153 () Bool)

(assert (=> b!769249 (= e!495153 true)))

(declare-fun lt!313442 () Bool)

(declare-datatypes ((LexerInterface!1427 0))(
  ( (LexerInterfaceExt!1424 (__x!6758 Int)) (Lexer!1425) )
))
(declare-fun thiss!15653 () LexerInterface!1427)

(declare-datatypes ((List!8514 0))(
  ( (Nil!8500) (Cons!8500 (h!13901 (_ BitVec 16)) (t!91796 List!8514)) )
))
(declare-datatypes ((TokenValue!1669 0))(
  ( (FloatLiteralValue!3338 (text!12128 List!8514)) (TokenValueExt!1668 (__x!6759 Int)) (Broken!8345 (value!51963 List!8514)) (Object!1682) (End!1669) (Def!1669) (Underscore!1669) (Match!1669) (Else!1669) (Error!1669) (Case!1669) (If!1669) (Extends!1669) (Abstract!1669) (Class!1669) (Val!1669) (DelimiterValue!3338 (del!1729 List!8514)) (KeywordValue!1675 (value!51964 List!8514)) (CommentValue!3338 (value!51965 List!8514)) (WhitespaceValue!3338 (value!51966 List!8514)) (IndentationValue!1669 (value!51967 List!8514)) (String!10092) (Int32!1669) (Broken!8346 (value!51968 List!8514)) (Boolean!1670) (Unit!13085) (OperatorValue!1672 (op!1729 List!8514)) (IdentifierValue!3338 (value!51969 List!8514)) (IdentifierValue!3339 (value!51970 List!8514)) (WhitespaceValue!3339 (value!51971 List!8514)) (True!3338) (False!3338) (Broken!8347 (value!51972 List!8514)) (Broken!8348 (value!51973 List!8514)) (True!3339) (RightBrace!1669) (RightBracket!1669) (Colon!1669) (Null!1669) (Comma!1669) (LeftBracket!1669) (False!3339) (LeftBrace!1669) (ImaginaryLiteralValue!1669 (text!12129 List!8514)) (StringLiteralValue!5007 (value!51974 List!8514)) (EOFValue!1669 (value!51975 List!8514)) (IdentValue!1669 (value!51976 List!8514)) (DelimiterValue!3339 (value!51977 List!8514)) (DedentValue!1669 (value!51978 List!8514)) (NewLineValue!1669 (value!51979 List!8514)) (IntegerValue!5007 (value!51980 (_ BitVec 32)) (text!12130 List!8514)) (IntegerValue!5008 (value!51981 Int) (text!12131 List!8514)) (Times!1669) (Or!1669) (Equal!1669) (Minus!1669) (Broken!8349 (value!51982 List!8514)) (And!1669) (Div!1669) (LessEqual!1669) (Mod!1669) (Concat!3644) (Not!1669) (Plus!1669) (SpaceValue!1669 (value!51983 List!8514)) (IntegerValue!5009 (value!51984 Int) (text!12132 List!8514)) (StringLiteralValue!5008 (text!12133 List!8514)) (FloatLiteralValue!3339 (text!12134 List!8514)) (BytesLiteralValue!1669 (value!51985 List!8514)) (CommentValue!3339 (value!51986 List!8514)) (StringLiteralValue!5009 (value!51987 List!8514)) (ErrorTokenValue!1669 (msg!1730 List!8514)) )
))
(declare-datatypes ((C!4552 0))(
  ( (C!4553 (val!2506 Int)) )
))
(declare-datatypes ((List!8515 0))(
  ( (Nil!8501) (Cons!8501 (h!13902 C!4552) (t!91797 List!8515)) )
))
(declare-datatypes ((IArray!5747 0))(
  ( (IArray!5748 (innerList!2931 List!8515)) )
))
(declare-datatypes ((Conc!2873 0))(
  ( (Node!2873 (left!6369 Conc!2873) (right!6699 Conc!2873) (csize!5976 Int) (cheight!3084 Int)) (Leaf!4214 (xs!5560 IArray!5747) (csize!5977 Int)) (Empty!2873) )
))
(declare-datatypes ((BalanceConc!5758 0))(
  ( (BalanceConc!5759 (c!130225 Conc!2873)) )
))
(declare-datatypes ((TokenValueInjection!3074 0))(
  ( (TokenValueInjection!3075 (toValue!2617 Int) (toChars!2476 Int)) )
))
(declare-datatypes ((Regex!1975 0))(
  ( (ElementMatch!1975 (c!130226 C!4552)) (Concat!3645 (regOne!4462 Regex!1975) (regTwo!4462 Regex!1975)) (EmptyExpr!1975) (Star!1975 (reg!2304 Regex!1975)) (EmptyLang!1975) (Union!1975 (regOne!4463 Regex!1975) (regTwo!4463 Regex!1975)) )
))
(declare-datatypes ((String!10093 0))(
  ( (String!10094 (value!51988 String)) )
))
(declare-datatypes ((Rule!3050 0))(
  ( (Rule!3051 (regex!1625 Regex!1975) (tag!1887 String!10093) (isSeparator!1625 Bool) (transformation!1625 TokenValueInjection!3074)) )
))
(declare-datatypes ((List!8516 0))(
  ( (Nil!8502) (Cons!8502 (h!13903 Rule!3050) (t!91798 List!8516)) )
))
(declare-fun rulesArg!343 () List!8516)

(declare-fun ruleValid!499 (LexerInterface!1427 Rule!3050) Bool)

(assert (=> b!769249 (= lt!313442 (ruleValid!499 thiss!15653 (h!13903 rulesArg!343)))))

(declare-fun b!769250 () Bool)

(declare-fun e!495150 () Bool)

(declare-fun e!495140 () Bool)

(assert (=> b!769250 (= e!495150 e!495140)))

(declare-fun e!495163 () Bool)

(assert (=> b!769251 (= e!495163 (and tp!250967 tp!250975))))

(declare-fun tp!250973 () Bool)

(declare-fun e!495155 () Bool)

(declare-fun tp!250981 () Bool)

(declare-fun e!495164 () Bool)

(declare-datatypes ((List!8517 0))(
  ( (Nil!8503) (Cons!8503 (h!13904 Regex!1975) (t!91799 List!8517)) )
))
(declare-datatypes ((Context!754 0))(
  ( (Context!755 (exprs!877 List!8517)) )
))
(declare-datatypes ((tuple2!9878 0))(
  ( (tuple2!9879 (_1!5689 Context!754) (_2!5689 C!4552)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9880 0))(
  ( (tuple2!9881 (_1!5690 tuple2!9878) (_2!5690 (InoxSet Context!754))) )
))
(declare-datatypes ((List!8518 0))(
  ( (Nil!8504) (Cons!8504 (h!13905 tuple2!9880) (t!91800 List!8518)) )
))
(declare-datatypes ((array!4057 0))(
  ( (array!4058 (arr!1810 (Array (_ BitVec 32) (_ BitVec 64))) (size!6922 (_ BitVec 32))) )
))
(declare-datatypes ((array!4059 0))(
  ( (array!4060 (arr!1811 (Array (_ BitVec 32) List!8518)) (size!6923 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2290 0))(
  ( (LongMapFixedSize!2291 (defaultEntry!1501 Int) (mask!3017 (_ BitVec 32)) (extraKeys!1392 (_ BitVec 32)) (zeroValue!1402 List!8518) (minValue!1402 List!8518) (_size!2399 (_ BitVec 32)) (_keys!1439 array!4057) (_values!1424 array!4059) (_vacant!1206 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4521 0))(
  ( (Cell!4522 (v!18639 LongMapFixedSize!2290)) )
))
(declare-datatypes ((MutLongMap!1145 0))(
  ( (LongMap!1145 (underlying!2473 Cell!4521)) (MutLongMapExt!1144 (__x!6760 Int)) )
))
(declare-datatypes ((Cell!4523 0))(
  ( (Cell!4524 (v!18640 MutLongMap!1145)) )
))
(declare-datatypes ((Hashable!1117 0))(
  ( (HashableExt!1116 (__x!6761 Int)) )
))
(declare-datatypes ((MutableMap!1117 0))(
  ( (MutableMapExt!1116 (__x!6762 Int)) (HashMap!1117 (underlying!2474 Cell!4523) (hashF!3025 Hashable!1117) (_size!2400 (_ BitVec 32)) (defaultValue!1268 Int)) )
))
(declare-datatypes ((CacheUp!628 0))(
  ( (CacheUp!629 (cache!1504 MutableMap!1117)) )
))
(declare-fun cacheUp!653 () CacheUp!628)

(declare-fun array_inv!1313 (array!4057) Bool)

(declare-fun array_inv!1314 (array!4059) Bool)

(assert (=> b!769252 (= e!495164 (and tp!250968 tp!250981 tp!250973 (array_inv!1313 (_keys!1439 (v!18639 (underlying!2473 (v!18640 (underlying!2474 (cache!1504 cacheUp!653))))))) (array_inv!1314 (_values!1424 (v!18639 (underlying!2473 (v!18640 (underlying!2474 (cache!1504 cacheUp!653))))))) e!495155))))

(declare-fun e!495144 () Bool)

(declare-fun e!495139 () Bool)

(assert (=> b!769253 (= e!495144 (and e!495139 tp!250970))))

(declare-fun mapNonEmpty!5645 () Bool)

(declare-fun mapRes!5645 () Bool)

(declare-fun tp!250962 () Bool)

(declare-fun tp!250969 () Bool)

(assert (=> mapNonEmpty!5645 (= mapRes!5645 (and tp!250962 tp!250969))))

(declare-fun mapKey!5647 () (_ BitVec 32))

(declare-datatypes ((tuple2!9882 0))(
  ( (tuple2!9883 (_1!5691 (InoxSet Context!754)) (_2!5691 Int)) )
))
(declare-datatypes ((tuple2!9884 0))(
  ( (tuple2!9885 (_1!5692 tuple2!9882) (_2!5692 Int)) )
))
(declare-datatypes ((List!8519 0))(
  ( (Nil!8505) (Cons!8505 (h!13906 tuple2!9884) (t!91801 List!8519)) )
))
(declare-fun mapValue!5647 () List!8519)

(declare-fun mapRest!5645 () (Array (_ BitVec 32) List!8519))

(declare-datatypes ((array!4061 0))(
  ( (array!4062 (arr!1812 (Array (_ BitVec 32) List!8519)) (size!6924 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1118 0))(
  ( (HashableExt!1117 (__x!6763 Int)) )
))
(declare-datatypes ((LongMapFixedSize!2292 0))(
  ( (LongMapFixedSize!2293 (defaultEntry!1502 Int) (mask!3018 (_ BitVec 32)) (extraKeys!1393 (_ BitVec 32)) (zeroValue!1403 List!8519) (minValue!1403 List!8519) (_size!2401 (_ BitVec 32)) (_keys!1440 array!4057) (_values!1425 array!4061) (_vacant!1207 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4525 0))(
  ( (Cell!4526 (v!18641 LongMapFixedSize!2292)) )
))
(declare-datatypes ((MutLongMap!1146 0))(
  ( (LongMap!1146 (underlying!2475 Cell!4525)) (MutLongMapExt!1145 (__x!6764 Int)) )
))
(declare-datatypes ((Cell!4527 0))(
  ( (Cell!4528 (v!18642 MutLongMap!1146)) )
))
(declare-datatypes ((MutableMap!1118 0))(
  ( (MutableMapExt!1117 (__x!6765 Int)) (HashMap!1118 (underlying!2476 Cell!4527) (hashF!3026 Hashable!1118) (_size!2402 (_ BitVec 32)) (defaultValue!1269 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!298 0))(
  ( (CacheFindLongestMatch!299 (cache!1505 MutableMap!1118) (totalInput!2108 BalanceConc!5758)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!298)

(assert (=> mapNonEmpty!5645 (= (arr!1812 (_values!1425 (v!18641 (underlying!2475 (v!18642 (underlying!2476 (cache!1505 cacheFindLongestMatch!134))))))) (store mapRest!5645 mapKey!5647 mapValue!5647))))

(declare-fun tp!250956 () Bool)

(declare-fun b!769254 () Bool)

(declare-fun e!495167 () Bool)

(declare-fun inv!10816 (String!10093) Bool)

(declare-fun inv!10821 (TokenValueInjection!3074) Bool)

(assert (=> b!769254 (= e!495167 (and tp!250956 (inv!10816 (tag!1887 (h!13903 rulesArg!343))) (inv!10821 (transformation!1625 (h!13903 rulesArg!343))) e!495163))))

(declare-fun b!769255 () Bool)

(declare-fun e!495165 () Bool)

(declare-fun e!495145 () Bool)

(declare-fun lt!313441 () MutLongMap!1146)

(get-info :version)

(assert (=> b!769255 (= e!495165 (and e!495145 ((_ is LongMap!1146) lt!313441)))))

(assert (=> b!769255 (= lt!313441 (v!18642 (underlying!2476 (cache!1505 cacheFindLongestMatch!134))))))

(declare-fun b!769256 () Bool)

(declare-fun res!337575 () Bool)

(declare-fun e!495158 () Bool)

(assert (=> b!769256 (=> (not res!337575) (not e!495158))))

(declare-fun valid!932 (CacheFindLongestMatch!298) Bool)

(assert (=> b!769256 (= res!337575 (valid!932 cacheFindLongestMatch!134))))

(declare-fun b!769257 () Bool)

(declare-fun e!495154 () Bool)

(declare-datatypes ((tuple3!962 0))(
  ( (tuple3!963 (_1!5693 Regex!1975) (_2!5693 Context!754) (_3!750 C!4552)) )
))
(declare-datatypes ((tuple2!9886 0))(
  ( (tuple2!9887 (_1!5694 tuple3!962) (_2!5694 (InoxSet Context!754))) )
))
(declare-datatypes ((List!8520 0))(
  ( (Nil!8506) (Cons!8506 (h!13907 tuple2!9886) (t!91802 List!8520)) )
))
(declare-datatypes ((array!4063 0))(
  ( (array!4064 (arr!1813 (Array (_ BitVec 32) List!8520)) (size!6925 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2294 0))(
  ( (LongMapFixedSize!2295 (defaultEntry!1503 Int) (mask!3019 (_ BitVec 32)) (extraKeys!1394 (_ BitVec 32)) (zeroValue!1404 List!8520) (minValue!1404 List!8520) (_size!2403 (_ BitVec 32)) (_keys!1441 array!4057) (_values!1426 array!4063) (_vacant!1208 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4529 0))(
  ( (Cell!4530 (v!18643 LongMapFixedSize!2294)) )
))
(declare-datatypes ((MutLongMap!1147 0))(
  ( (LongMap!1147 (underlying!2477 Cell!4529)) (MutLongMapExt!1146 (__x!6766 Int)) )
))
(declare-fun lt!313440 () MutLongMap!1147)

(assert (=> b!769257 (= e!495154 (and e!495150 ((_ is LongMap!1147) lt!313440)))))

(declare-datatypes ((Cell!4531 0))(
  ( (Cell!4532 (v!18644 MutLongMap!1147)) )
))
(declare-datatypes ((Hashable!1119 0))(
  ( (HashableExt!1118 (__x!6767 Int)) )
))
(declare-datatypes ((MutableMap!1119 0))(
  ( (MutableMapExt!1118 (__x!6768 Int)) (HashMap!1119 (underlying!2478 Cell!4531) (hashF!3027 Hashable!1119) (_size!2404 (_ BitVec 32)) (defaultValue!1270 Int)) )
))
(declare-datatypes ((CacheDown!634 0))(
  ( (CacheDown!635 (cache!1506 MutableMap!1119)) )
))
(declare-fun cacheDown!666 () CacheDown!634)

(assert (=> b!769257 (= lt!313440 (v!18644 (underlying!2478 (cache!1506 cacheDown!666))))))

(declare-fun tp!250976 () Bool)

(declare-fun tp!250965 () Bool)

(declare-fun e!495138 () Bool)

(declare-fun e!495147 () Bool)

(declare-fun array_inv!1315 (array!4063) Bool)

(assert (=> b!769258 (= e!495147 (and tp!250979 tp!250965 tp!250976 (array_inv!1313 (_keys!1441 (v!18643 (underlying!2477 (v!18644 (underlying!2478 (cache!1506 cacheDown!666))))))) (array_inv!1315 (_values!1426 (v!18643 (underlying!2477 (v!18644 (underlying!2478 (cache!1506 cacheDown!666))))))) e!495138))))

(declare-fun mapIsEmpty!5645 () Bool)

(declare-fun mapRes!5646 () Bool)

(assert (=> mapIsEmpty!5645 mapRes!5646))

(declare-fun b!769259 () Bool)

(declare-fun e!495157 () Bool)

(declare-fun e!495141 () Bool)

(assert (=> b!769259 (= e!495157 e!495141)))

(declare-fun mapNonEmpty!5647 () Bool)

(declare-fun mapRes!5647 () Bool)

(declare-fun tp!250955 () Bool)

(declare-fun tp!250959 () Bool)

(assert (=> mapNonEmpty!5647 (= mapRes!5647 (and tp!250955 tp!250959))))

(declare-fun mapRest!5647 () (Array (_ BitVec 32) List!8520))

(declare-fun mapValue!5646 () List!8520)

(declare-fun mapKey!5646 () (_ BitVec 32))

(assert (=> mapNonEmpty!5647 (= (arr!1813 (_values!1426 (v!18643 (underlying!2477 (v!18644 (underlying!2478 (cache!1506 cacheDown!666))))))) (store mapRest!5647 mapKey!5646 mapValue!5646))))

(declare-fun b!769260 () Bool)

(declare-fun e!495170 () Bool)

(assert (=> b!769260 (= e!495170 e!495158)))

(declare-fun res!337574 () Bool)

(assert (=> b!769260 (=> (not res!337574) (not e!495158))))

(declare-fun lt!313437 () List!8515)

(declare-fun totalInput!472 () BalanceConc!5758)

(declare-fun isSuffix!209 (List!8515 List!8515) Bool)

(declare-fun list!3426 (BalanceConc!5758) List!8515)

(assert (=> b!769260 (= res!337574 (isSuffix!209 lt!313437 (list!3426 totalInput!472)))))

(declare-fun input!1432 () BalanceConc!5758)

(assert (=> b!769260 (= lt!313437 (list!3426 input!1432))))

(declare-fun b!769261 () Bool)

(declare-fun e!495159 () Bool)

(declare-fun tp!250977 () Bool)

(assert (=> b!769261 (= e!495159 (and e!495167 tp!250977))))

(declare-fun b!769262 () Bool)

(declare-fun e!495151 () Bool)

(assert (=> b!769262 (= e!495145 e!495151)))

(declare-fun b!769263 () Bool)

(declare-fun res!337577 () Bool)

(assert (=> b!769263 (=> (not res!337577) (not e!495170))))

(declare-fun isEmpty!5204 (List!8516) Bool)

(assert (=> b!769263 (= res!337577 (not (isEmpty!5204 rulesArg!343)))))

(declare-fun b!769264 () Bool)

(declare-fun e!495169 () Bool)

(declare-fun e!495152 () Bool)

(assert (=> b!769264 (= e!495169 e!495152)))

(declare-fun mapIsEmpty!5646 () Bool)

(assert (=> mapIsEmpty!5646 mapRes!5645))

(declare-fun b!769265 () Bool)

(declare-fun tp!250971 () Bool)

(assert (=> b!769265 (= e!495155 (and tp!250971 mapRes!5646))))

(declare-fun condMapEmpty!5646 () Bool)

(declare-fun mapDefault!5645 () List!8518)

(assert (=> b!769265 (= condMapEmpty!5646 (= (arr!1811 (_values!1424 (v!18639 (underlying!2473 (v!18640 (underlying!2474 (cache!1504 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8518)) mapDefault!5645)))))

(declare-fun b!769266 () Bool)

(declare-fun e!495148 () Bool)

(assert (=> b!769266 (= e!495151 e!495148)))

(declare-fun b!769267 () Bool)

(declare-fun e!495160 () Bool)

(declare-fun tp!250961 () Bool)

(declare-fun inv!10822 (Conc!2873) Bool)

(assert (=> b!769267 (= e!495160 (and (inv!10822 (c!130225 input!1432)) tp!250961))))

(declare-fun b!769268 () Bool)

(declare-fun e!495161 () Bool)

(declare-fun tp!250980 () Bool)

(assert (=> b!769268 (= e!495161 (and (inv!10822 (c!130225 (totalInput!2108 cacheFindLongestMatch!134))) tp!250980))))

(declare-fun b!769269 () Bool)

(declare-fun tp!250954 () Bool)

(assert (=> b!769269 (= e!495138 (and tp!250954 mapRes!5647))))

(declare-fun condMapEmpty!5645 () Bool)

(declare-fun mapDefault!5647 () List!8520)

(assert (=> b!769269 (= condMapEmpty!5645 (= (arr!1813 (_values!1426 (v!18643 (underlying!2477 (v!18644 (underlying!2478 (cache!1506 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8520)) mapDefault!5647)))))

(declare-fun b!769270 () Bool)

(assert (=> b!769270 (= e!495152 e!495164)))

(declare-fun b!769271 () Bool)

(declare-fun e!495149 () Bool)

(declare-fun tp!250978 () Bool)

(assert (=> b!769271 (= e!495149 (and (inv!10822 (c!130225 totalInput!472)) tp!250978))))

(declare-fun b!769272 () Bool)

(assert (=> b!769272 (= e!495140 e!495147)))

(declare-fun b!769273 () Bool)

(declare-fun res!337571 () Bool)

(assert (=> b!769273 (=> (not res!337571) (not e!495170))))

(declare-fun rulesValidInductive!573 (LexerInterface!1427 List!8516) Bool)

(assert (=> b!769273 (= res!337571 (rulesValidInductive!573 thiss!15653 rulesArg!343))))

(assert (=> b!769274 (= e!495141 (and e!495154 tp!250972))))

(declare-fun b!769275 () Bool)

(declare-fun e!495168 () Bool)

(declare-fun tp!250974 () Bool)

(assert (=> b!769275 (= e!495168 (and tp!250974 mapRes!5645))))

(declare-fun condMapEmpty!5647 () Bool)

(declare-fun mapDefault!5646 () List!8519)

(assert (=> b!769275 (= condMapEmpty!5647 (= (arr!1812 (_values!1425 (v!18641 (underlying!2475 (v!18642 (underlying!2476 (cache!1505 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8519)) mapDefault!5646)))))

(declare-fun b!769276 () Bool)

(declare-fun e!495166 () Bool)

(assert (=> b!769276 (= e!495166 e!495144)))

(declare-fun b!769277 () Bool)

(declare-fun res!337573 () Bool)

(assert (=> b!769277 (=> (not res!337573) (not e!495158))))

(assert (=> b!769277 (= res!337573 (= (totalInput!2108 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun b!769278 () Bool)

(declare-fun res!337572 () Bool)

(assert (=> b!769278 (=> (not res!337572) (not e!495158))))

(declare-fun valid!933 (CacheDown!634) Bool)

(assert (=> b!769278 (= res!337572 (valid!933 cacheDown!666))))

(declare-fun tp!250957 () Bool)

(declare-fun tp!250966 () Bool)

(declare-fun array_inv!1316 (array!4061) Bool)

(assert (=> b!769279 (= e!495148 (and tp!250963 tp!250957 tp!250966 (array_inv!1313 (_keys!1440 (v!18641 (underlying!2475 (v!18642 (underlying!2476 (cache!1505 cacheFindLongestMatch!134))))))) (array_inv!1316 (_values!1425 (v!18641 (underlying!2475 (v!18642 (underlying!2476 (cache!1505 cacheFindLongestMatch!134))))))) e!495168))))

(declare-fun b!769280 () Bool)

(assert (=> b!769280 (= e!495158 (not e!495153))))

(declare-fun res!337576 () Bool)

(assert (=> b!769280 (=> res!337576 e!495153)))

(assert (=> b!769280 (= res!337576 (or (not ((_ is Cons!8502) rulesArg!343)) (not ((_ is Nil!8502) (t!91798 rulesArg!343)))))))

(declare-fun isPrefix!983 (List!8515 List!8515) Bool)

(assert (=> b!769280 (isPrefix!983 lt!313437 lt!313437)))

(declare-datatypes ((Unit!13086 0))(
  ( (Unit!13087) )
))
(declare-fun lt!313438 () Unit!13086)

(declare-fun lemmaIsPrefixRefl!694 (List!8515 List!8515) Unit!13086)

(assert (=> b!769280 (= lt!313438 (lemmaIsPrefixRefl!694 lt!313437 lt!313437))))

(declare-fun e!495137 () Bool)

(assert (=> b!769281 (= e!495137 (and e!495165 tp!250958))))

(declare-fun b!769282 () Bool)

(declare-fun res!337579 () Bool)

(assert (=> b!769282 (=> (not res!337579) (not e!495158))))

(declare-fun valid!934 (CacheUp!628) Bool)

(assert (=> b!769282 (= res!337579 (valid!934 cacheUp!653))))

(declare-fun b!769283 () Bool)

(declare-fun e!495143 () Bool)

(declare-fun inv!10823 (BalanceConc!5758) Bool)

(assert (=> b!769283 (= e!495143 (and e!495137 (inv!10823 (totalInput!2108 cacheFindLongestMatch!134)) e!495161))))

(declare-fun mapIsEmpty!5647 () Bool)

(assert (=> mapIsEmpty!5647 mapRes!5647))

(declare-fun b!769284 () Bool)

(declare-fun lt!313439 () MutLongMap!1145)

(assert (=> b!769284 (= e!495139 (and e!495169 ((_ is LongMap!1145) lt!313439)))))

(assert (=> b!769284 (= lt!313439 (v!18640 (underlying!2474 (cache!1504 cacheUp!653))))))

(declare-fun res!337578 () Bool)

(assert (=> start!71336 (=> (not res!337578) (not e!495170))))

(assert (=> start!71336 (= res!337578 ((_ is Lexer!1425) thiss!15653))))

(assert (=> start!71336 e!495170))

(assert (=> start!71336 e!495159))

(assert (=> start!71336 (and (inv!10823 input!1432) e!495160)))

(declare-fun inv!10824 (CacheFindLongestMatch!298) Bool)

(assert (=> start!71336 (and (inv!10824 cacheFindLongestMatch!134) e!495143)))

(assert (=> start!71336 true))

(declare-fun inv!10825 (CacheUp!628) Bool)

(assert (=> start!71336 (and (inv!10825 cacheUp!653) e!495166)))

(assert (=> start!71336 (and (inv!10823 totalInput!472) e!495149)))

(declare-fun inv!10826 (CacheDown!634) Bool)

(assert (=> start!71336 (and (inv!10826 cacheDown!666) e!495157)))

(declare-fun mapNonEmpty!5646 () Bool)

(declare-fun tp!250964 () Bool)

(declare-fun tp!250960 () Bool)

(assert (=> mapNonEmpty!5646 (= mapRes!5646 (and tp!250964 tp!250960))))

(declare-fun mapKey!5645 () (_ BitVec 32))

(declare-fun mapRest!5646 () (Array (_ BitVec 32) List!8518))

(declare-fun mapValue!5645 () List!8518)

(assert (=> mapNonEmpty!5646 (= (arr!1811 (_values!1424 (v!18639 (underlying!2473 (v!18640 (underlying!2474 (cache!1504 cacheUp!653))))))) (store mapRest!5646 mapKey!5645 mapValue!5645))))

(assert (= (and start!71336 res!337578) b!769273))

(assert (= (and b!769273 res!337571) b!769263))

(assert (= (and b!769263 res!337577) b!769260))

(assert (= (and b!769260 res!337574) b!769282))

(assert (= (and b!769282 res!337579) b!769278))

(assert (= (and b!769278 res!337572) b!769256))

(assert (= (and b!769256 res!337575) b!769277))

(assert (= (and b!769277 res!337573) b!769280))

(assert (= (and b!769280 (not res!337576)) b!769249))

(assert (= b!769254 b!769251))

(assert (= b!769261 b!769254))

(assert (= (and start!71336 ((_ is Cons!8502) rulesArg!343)) b!769261))

(assert (= start!71336 b!769267))

(assert (= (and b!769275 condMapEmpty!5647) mapIsEmpty!5646))

(assert (= (and b!769275 (not condMapEmpty!5647)) mapNonEmpty!5645))

(assert (= b!769279 b!769275))

(assert (= b!769266 b!769279))

(assert (= b!769262 b!769266))

(assert (= (and b!769255 ((_ is LongMap!1146) (v!18642 (underlying!2476 (cache!1505 cacheFindLongestMatch!134))))) b!769262))

(assert (= b!769281 b!769255))

(assert (= (and b!769283 ((_ is HashMap!1118) (cache!1505 cacheFindLongestMatch!134))) b!769281))

(assert (= b!769283 b!769268))

(assert (= start!71336 b!769283))

(assert (= (and b!769265 condMapEmpty!5646) mapIsEmpty!5645))

(assert (= (and b!769265 (not condMapEmpty!5646)) mapNonEmpty!5646))

(assert (= b!769252 b!769265))

(assert (= b!769270 b!769252))

(assert (= b!769264 b!769270))

(assert (= (and b!769284 ((_ is LongMap!1145) (v!18640 (underlying!2474 (cache!1504 cacheUp!653))))) b!769264))

(assert (= b!769253 b!769284))

(assert (= (and b!769276 ((_ is HashMap!1117) (cache!1504 cacheUp!653))) b!769253))

(assert (= start!71336 b!769276))

(assert (= start!71336 b!769271))

(assert (= (and b!769269 condMapEmpty!5645) mapIsEmpty!5647))

(assert (= (and b!769269 (not condMapEmpty!5645)) mapNonEmpty!5647))

(assert (= b!769258 b!769269))

(assert (= b!769272 b!769258))

(assert (= b!769250 b!769272))

(assert (= (and b!769257 ((_ is LongMap!1147) (v!18644 (underlying!2478 (cache!1506 cacheDown!666))))) b!769250))

(assert (= b!769274 b!769257))

(assert (= (and b!769259 ((_ is HashMap!1119) (cache!1506 cacheDown!666))) b!769274))

(assert (= start!71336 b!769259))

(declare-fun m!1038587 () Bool)

(assert (=> b!769249 m!1038587))

(declare-fun m!1038589 () Bool)

(assert (=> b!769258 m!1038589))

(declare-fun m!1038591 () Bool)

(assert (=> b!769258 m!1038591))

(declare-fun m!1038593 () Bool)

(assert (=> b!769268 m!1038593))

(declare-fun m!1038595 () Bool)

(assert (=> b!769271 m!1038595))

(declare-fun m!1038597 () Bool)

(assert (=> start!71336 m!1038597))

(declare-fun m!1038599 () Bool)

(assert (=> start!71336 m!1038599))

(declare-fun m!1038601 () Bool)

(assert (=> start!71336 m!1038601))

(declare-fun m!1038603 () Bool)

(assert (=> start!71336 m!1038603))

(declare-fun m!1038605 () Bool)

(assert (=> start!71336 m!1038605))

(declare-fun m!1038607 () Bool)

(assert (=> b!769254 m!1038607))

(declare-fun m!1038609 () Bool)

(assert (=> b!769254 m!1038609))

(declare-fun m!1038611 () Bool)

(assert (=> b!769278 m!1038611))

(declare-fun m!1038613 () Bool)

(assert (=> b!769283 m!1038613))

(declare-fun m!1038615 () Bool)

(assert (=> mapNonEmpty!5646 m!1038615))

(declare-fun m!1038617 () Bool)

(assert (=> b!769280 m!1038617))

(declare-fun m!1038619 () Bool)

(assert (=> b!769280 m!1038619))

(declare-fun m!1038621 () Bool)

(assert (=> b!769263 m!1038621))

(declare-fun m!1038623 () Bool)

(assert (=> b!769256 m!1038623))

(declare-fun m!1038625 () Bool)

(assert (=> b!769260 m!1038625))

(assert (=> b!769260 m!1038625))

(declare-fun m!1038627 () Bool)

(assert (=> b!769260 m!1038627))

(declare-fun m!1038629 () Bool)

(assert (=> b!769260 m!1038629))

(declare-fun m!1038631 () Bool)

(assert (=> b!769273 m!1038631))

(declare-fun m!1038633 () Bool)

(assert (=> b!769279 m!1038633))

(declare-fun m!1038635 () Bool)

(assert (=> b!769279 m!1038635))

(declare-fun m!1038637 () Bool)

(assert (=> mapNonEmpty!5645 m!1038637))

(declare-fun m!1038639 () Bool)

(assert (=> b!769267 m!1038639))

(declare-fun m!1038641 () Bool)

(assert (=> b!769282 m!1038641))

(declare-fun m!1038643 () Bool)

(assert (=> mapNonEmpty!5647 m!1038643))

(declare-fun m!1038645 () Bool)

(assert (=> b!769252 m!1038645))

(declare-fun m!1038647 () Bool)

(assert (=> b!769252 m!1038647))

(check-sat (not b!769254) (not mapNonEmpty!5646) (not b_next!24231) b_and!71645 (not b!769260) (not b!769268) (not b_next!24233) (not b!769269) (not b!769275) b_and!71649 (not b!769273) b_and!71655 (not b!769256) (not b!769263) (not b!769283) (not b!769265) (not b_next!24227) (not b_next!24235) (not b!769282) (not mapNonEmpty!5647) (not b_next!24237) (not b!769261) b_and!71641 (not b!769267) (not b_next!24229) (not mapNonEmpty!5645) (not b_next!24225) (not b!769252) (not b!769280) (not start!71336) (not b!769278) b_and!71651 b_and!71647 b_and!71653 (not b!769279) (not b!769258) (not b_next!24239) (not b!769249) (not b!769271) b_and!71643)
(check-sat b_and!71655 (not b_next!24227) (not b_next!24231) b_and!71641 (not b_next!24229) b_and!71645 (not b_next!24225) (not b_next!24233) b_and!71651 b_and!71649 (not b_next!24239) b_and!71643 (not b_next!24235) (not b_next!24237) b_and!71647 b_and!71653)

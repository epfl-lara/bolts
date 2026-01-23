; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71340 () Bool)

(assert start!71340)

(declare-fun b!769482 () Bool)

(declare-fun b_free!24193 () Bool)

(declare-fun b_next!24257 () Bool)

(assert (=> b!769482 (= b_free!24193 (not b_next!24257))))

(declare-fun tp!251139 () Bool)

(declare-fun b_and!71673 () Bool)

(assert (=> b!769482 (= tp!251139 b_and!71673)))

(declare-fun b_free!24195 () Bool)

(declare-fun b_next!24259 () Bool)

(assert (=> b!769482 (= b_free!24195 (not b_next!24259))))

(declare-fun tp!251143 () Bool)

(declare-fun b_and!71675 () Bool)

(assert (=> b!769482 (= tp!251143 b_and!71675)))

(declare-fun b!769478 () Bool)

(declare-fun b_free!24197 () Bool)

(declare-fun b_next!24261 () Bool)

(assert (=> b!769478 (= b_free!24197 (not b_next!24261))))

(declare-fun tp!251129 () Bool)

(declare-fun b_and!71677 () Bool)

(assert (=> b!769478 (= tp!251129 b_and!71677)))

(declare-fun b!769498 () Bool)

(declare-fun b_free!24199 () Bool)

(declare-fun b_next!24263 () Bool)

(assert (=> b!769498 (= b_free!24199 (not b_next!24263))))

(declare-fun tp!251140 () Bool)

(declare-fun b_and!71679 () Bool)

(assert (=> b!769498 (= tp!251140 b_and!71679)))

(declare-fun b!769494 () Bool)

(declare-fun b_free!24201 () Bool)

(declare-fun b_next!24265 () Bool)

(assert (=> b!769494 (= b_free!24201 (not b_next!24265))))

(declare-fun tp!251135 () Bool)

(declare-fun b_and!71681 () Bool)

(assert (=> b!769494 (= tp!251135 b_and!71681)))

(declare-fun b!769472 () Bool)

(declare-fun b_free!24203 () Bool)

(declare-fun b_next!24267 () Bool)

(assert (=> b!769472 (= b_free!24203 (not b_next!24267))))

(declare-fun tp!251132 () Bool)

(declare-fun b_and!71683 () Bool)

(assert (=> b!769472 (= tp!251132 b_and!71683)))

(declare-fun b!769477 () Bool)

(declare-fun b_free!24205 () Bool)

(declare-fun b_next!24269 () Bool)

(assert (=> b!769477 (= b_free!24205 (not b_next!24269))))

(declare-fun tp!251126 () Bool)

(declare-fun b_and!71685 () Bool)

(assert (=> b!769477 (= tp!251126 b_and!71685)))

(declare-fun b!769484 () Bool)

(declare-fun b_free!24207 () Bool)

(declare-fun b_next!24271 () Bool)

(assert (=> b!769484 (= b_free!24207 (not b_next!24271))))

(declare-fun tp!251144 () Bool)

(declare-fun b_and!71687 () Bool)

(assert (=> b!769484 (= tp!251144 b_and!71687)))

(declare-fun b!769465 () Bool)

(declare-fun e!495356 () Bool)

(declare-fun e!495365 () Bool)

(declare-datatypes ((C!4556 0))(
  ( (C!4557 (val!2508 Int)) )
))
(declare-datatypes ((Regex!1977 0))(
  ( (ElementMatch!1977 (c!130229 C!4556)) (Concat!3648 (regOne!4466 Regex!1977) (regTwo!4466 Regex!1977)) (EmptyExpr!1977) (Star!1977 (reg!2306 Regex!1977)) (EmptyLang!1977) (Union!1977 (regOne!4467 Regex!1977) (regTwo!4467 Regex!1977)) )
))
(declare-datatypes ((List!8528 0))(
  ( (Nil!8514) (Cons!8514 (h!13915 Regex!1977) (t!91810 List!8528)) )
))
(declare-datatypes ((Context!758 0))(
  ( (Context!759 (exprs!879 List!8528)) )
))
(declare-datatypes ((tuple3!966 0))(
  ( (tuple3!967 (_1!5701 Regex!1977) (_2!5701 Context!758) (_3!752 C!4556)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9898 0))(
  ( (tuple2!9899 (_1!5702 tuple3!966) (_2!5702 (InoxSet Context!758))) )
))
(declare-datatypes ((List!8529 0))(
  ( (Nil!8515) (Cons!8515 (h!13916 tuple2!9898) (t!91811 List!8529)) )
))
(declare-datatypes ((array!4073 0))(
  ( (array!4074 (arr!1818 (Array (_ BitVec 32) List!8529)) (size!6930 (_ BitVec 32))) )
))
(declare-datatypes ((array!4075 0))(
  ( (array!4076 (arr!1819 (Array (_ BitVec 32) (_ BitVec 64))) (size!6931 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2302 0))(
  ( (LongMapFixedSize!2303 (defaultEntry!1507 Int) (mask!3024 (_ BitVec 32)) (extraKeys!1398 (_ BitVec 32)) (zeroValue!1408 List!8529) (minValue!1408 List!8529) (_size!2411 (_ BitVec 32)) (_keys!1445 array!4075) (_values!1430 array!4073) (_vacant!1212 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4545 0))(
  ( (Cell!4546 (v!18651 LongMapFixedSize!2302)) )
))
(declare-datatypes ((MutLongMap!1151 0))(
  ( (LongMap!1151 (underlying!2485 Cell!4545)) (MutLongMapExt!1150 (__x!6780 Int)) )
))
(declare-fun lt!313468 () MutLongMap!1151)

(get-info :version)

(assert (=> b!769465 (= e!495356 (and e!495365 ((_ is LongMap!1151) lt!313468)))))

(declare-datatypes ((Cell!4547 0))(
  ( (Cell!4548 (v!18652 MutLongMap!1151)) )
))
(declare-datatypes ((Hashable!1123 0))(
  ( (HashableExt!1122 (__x!6781 Int)) )
))
(declare-datatypes ((MutableMap!1123 0))(
  ( (MutableMapExt!1122 (__x!6782 Int)) (HashMap!1123 (underlying!2486 Cell!4547) (hashF!3031 Hashable!1123) (_size!2412 (_ BitVec 32)) (defaultValue!1274 Int)) )
))
(declare-datatypes ((CacheDown!638 0))(
  ( (CacheDown!639 (cache!1510 MutableMap!1123)) )
))
(declare-fun cacheDown!666 () CacheDown!638)

(assert (=> b!769465 (= lt!313468 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))

(declare-fun b!769466 () Bool)

(declare-fun res!337632 () Bool)

(declare-fun e!495345 () Bool)

(assert (=> b!769466 (=> (not res!337632) (not e!495345))))

(declare-datatypes ((tuple2!9900 0))(
  ( (tuple2!9901 (_1!5703 (InoxSet Context!758)) (_2!5703 Int)) )
))
(declare-datatypes ((tuple2!9902 0))(
  ( (tuple2!9903 (_1!5704 tuple2!9900) (_2!5704 Int)) )
))
(declare-datatypes ((List!8530 0))(
  ( (Nil!8516) (Cons!8516 (h!13917 tuple2!9902) (t!91812 List!8530)) )
))
(declare-datatypes ((array!4077 0))(
  ( (array!4078 (arr!1820 (Array (_ BitVec 32) List!8530)) (size!6932 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1124 0))(
  ( (HashableExt!1123 (__x!6783 Int)) )
))
(declare-datatypes ((List!8531 0))(
  ( (Nil!8517) (Cons!8517 (h!13918 C!4556) (t!91813 List!8531)) )
))
(declare-datatypes ((IArray!5751 0))(
  ( (IArray!5752 (innerList!2933 List!8531)) )
))
(declare-datatypes ((Conc!2875 0))(
  ( (Node!2875 (left!6372 Conc!2875) (right!6702 Conc!2875) (csize!5980 Int) (cheight!3086 Int)) (Leaf!4217 (xs!5562 IArray!5751) (csize!5981 Int)) (Empty!2875) )
))
(declare-datatypes ((LongMapFixedSize!2304 0))(
  ( (LongMapFixedSize!2305 (defaultEntry!1508 Int) (mask!3025 (_ BitVec 32)) (extraKeys!1399 (_ BitVec 32)) (zeroValue!1409 List!8530) (minValue!1409 List!8530) (_size!2413 (_ BitVec 32)) (_keys!1446 array!4075) (_values!1431 array!4077) (_vacant!1213 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4549 0))(
  ( (Cell!4550 (v!18653 LongMapFixedSize!2304)) )
))
(declare-datatypes ((MutLongMap!1152 0))(
  ( (LongMap!1152 (underlying!2487 Cell!4549)) (MutLongMapExt!1151 (__x!6784 Int)) )
))
(declare-datatypes ((Cell!4551 0))(
  ( (Cell!4552 (v!18654 MutLongMap!1152)) )
))
(declare-datatypes ((MutableMap!1124 0))(
  ( (MutableMapExt!1123 (__x!6785 Int)) (HashMap!1124 (underlying!2488 Cell!4551) (hashF!3032 Hashable!1124) (_size!2414 (_ BitVec 32)) (defaultValue!1275 Int)) )
))
(declare-datatypes ((BalanceConc!5762 0))(
  ( (BalanceConc!5763 (c!130230 Conc!2875)) )
))
(declare-datatypes ((CacheFindLongestMatch!302 0))(
  ( (CacheFindLongestMatch!303 (cache!1511 MutableMap!1124) (totalInput!2110 BalanceConc!5762)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!302)

(declare-fun valid!937 (CacheFindLongestMatch!302) Bool)

(assert (=> b!769466 (= res!337632 (valid!937 cacheFindLongestMatch!134))))

(declare-fun b!769467 () Bool)

(declare-fun e!495358 () Bool)

(assert (=> b!769467 (= e!495345 (not e!495358))))

(declare-fun res!337626 () Bool)

(assert (=> b!769467 (=> res!337626 e!495358)))

(declare-datatypes ((List!8532 0))(
  ( (Nil!8518) (Cons!8518 (h!13919 (_ BitVec 16)) (t!91814 List!8532)) )
))
(declare-datatypes ((TokenValue!1671 0))(
  ( (FloatLiteralValue!3342 (text!12142 List!8532)) (TokenValueExt!1670 (__x!6786 Int)) (Broken!8355 (value!52018 List!8532)) (Object!1684) (End!1671) (Def!1671) (Underscore!1671) (Match!1671) (Else!1671) (Error!1671) (Case!1671) (If!1671) (Extends!1671) (Abstract!1671) (Class!1671) (Val!1671) (DelimiterValue!3342 (del!1731 List!8532)) (KeywordValue!1677 (value!52019 List!8532)) (CommentValue!3342 (value!52020 List!8532)) (WhitespaceValue!3342 (value!52021 List!8532)) (IndentationValue!1671 (value!52022 List!8532)) (String!10102) (Int32!1671) (Broken!8356 (value!52023 List!8532)) (Boolean!1672) (Unit!13091) (OperatorValue!1674 (op!1731 List!8532)) (IdentifierValue!3342 (value!52024 List!8532)) (IdentifierValue!3343 (value!52025 List!8532)) (WhitespaceValue!3343 (value!52026 List!8532)) (True!3342) (False!3342) (Broken!8357 (value!52027 List!8532)) (Broken!8358 (value!52028 List!8532)) (True!3343) (RightBrace!1671) (RightBracket!1671) (Colon!1671) (Null!1671) (Comma!1671) (LeftBracket!1671) (False!3343) (LeftBrace!1671) (ImaginaryLiteralValue!1671 (text!12143 List!8532)) (StringLiteralValue!5013 (value!52029 List!8532)) (EOFValue!1671 (value!52030 List!8532)) (IdentValue!1671 (value!52031 List!8532)) (DelimiterValue!3343 (value!52032 List!8532)) (DedentValue!1671 (value!52033 List!8532)) (NewLineValue!1671 (value!52034 List!8532)) (IntegerValue!5013 (value!52035 (_ BitVec 32)) (text!12144 List!8532)) (IntegerValue!5014 (value!52036 Int) (text!12145 List!8532)) (Times!1671) (Or!1671) (Equal!1671) (Minus!1671) (Broken!8359 (value!52037 List!8532)) (And!1671) (Div!1671) (LessEqual!1671) (Mod!1671) (Concat!3649) (Not!1671) (Plus!1671) (SpaceValue!1671 (value!52038 List!8532)) (IntegerValue!5015 (value!52039 Int) (text!12146 List!8532)) (StringLiteralValue!5014 (text!12147 List!8532)) (FloatLiteralValue!3343 (text!12148 List!8532)) (BytesLiteralValue!1671 (value!52040 List!8532)) (CommentValue!3343 (value!52041 List!8532)) (StringLiteralValue!5015 (value!52042 List!8532)) (ErrorTokenValue!1671 (msg!1732 List!8532)) )
))
(declare-datatypes ((TokenValueInjection!3078 0))(
  ( (TokenValueInjection!3079 (toValue!2619 Int) (toChars!2478 Int)) )
))
(declare-datatypes ((String!10103 0))(
  ( (String!10104 (value!52043 String)) )
))
(declare-datatypes ((Rule!3054 0))(
  ( (Rule!3055 (regex!1627 Regex!1977) (tag!1889 String!10103) (isSeparator!1627 Bool) (transformation!1627 TokenValueInjection!3078)) )
))
(declare-datatypes ((List!8533 0))(
  ( (Nil!8519) (Cons!8519 (h!13920 Rule!3054) (t!91815 List!8533)) )
))
(declare-fun rulesArg!343 () List!8533)

(assert (=> b!769467 (= res!337626 (or (and ((_ is Cons!8519) rulesArg!343) ((_ is Nil!8519) (t!91815 rulesArg!343))) (not ((_ is Cons!8519) rulesArg!343))))))

(declare-fun lt!313470 () List!8531)

(declare-fun isPrefix!985 (List!8531 List!8531) Bool)

(assert (=> b!769467 (isPrefix!985 lt!313470 lt!313470)))

(declare-datatypes ((Unit!13092 0))(
  ( (Unit!13093) )
))
(declare-fun lt!313471 () Unit!13092)

(declare-fun lemmaIsPrefixRefl!696 (List!8531 List!8531) Unit!13092)

(assert (=> b!769467 (= lt!313471 (lemmaIsPrefixRefl!696 lt!313470 lt!313470))))

(declare-fun b!769468 () Bool)

(declare-fun res!337629 () Bool)

(declare-fun e!495353 () Bool)

(assert (=> b!769468 (=> (not res!337629) (not e!495353))))

(declare-datatypes ((LexerInterface!1429 0))(
  ( (LexerInterfaceExt!1426 (__x!6787 Int)) (Lexer!1427) )
))
(declare-fun thiss!15653 () LexerInterface!1429)

(declare-fun rulesValidInductive!575 (LexerInterface!1429 List!8533) Bool)

(assert (=> b!769468 (= res!337629 (rulesValidInductive!575 thiss!15653 rulesArg!343))))

(declare-fun b!769469 () Bool)

(declare-fun e!495357 () Bool)

(declare-fun e!495364 () Bool)

(assert (=> b!769469 (= e!495357 e!495364)))

(declare-fun b!769470 () Bool)

(assert (=> b!769470 (= e!495353 e!495345)))

(declare-fun res!337625 () Bool)

(assert (=> b!769470 (=> (not res!337625) (not e!495345))))

(declare-fun totalInput!472 () BalanceConc!5762)

(declare-fun isSuffix!210 (List!8531 List!8531) Bool)

(declare-fun list!3427 (BalanceConc!5762) List!8531)

(assert (=> b!769470 (= res!337625 (isSuffix!210 lt!313470 (list!3427 totalInput!472)))))

(declare-fun input!1432 () BalanceConc!5762)

(assert (=> b!769470 (= lt!313470 (list!3427 input!1432))))

(declare-fun mapIsEmpty!5663 () Bool)

(declare-fun mapRes!5665 () Bool)

(assert (=> mapIsEmpty!5663 mapRes!5665))

(declare-fun b!769471 () Bool)

(declare-fun e!495346 () Bool)

(declare-fun e!495372 () Bool)

(assert (=> b!769471 (= e!495346 e!495372)))

(declare-fun e!495368 () Bool)

(declare-fun e!495366 () Bool)

(assert (=> b!769472 (= e!495368 (and e!495366 tp!251132))))

(declare-fun b!769473 () Bool)

(declare-fun e!495359 () Bool)

(declare-datatypes ((tuple2!9904 0))(
  ( (tuple2!9905 (_1!5705 Context!758) (_2!5705 C!4556)) )
))
(declare-datatypes ((tuple2!9906 0))(
  ( (tuple2!9907 (_1!5706 tuple2!9904) (_2!5706 (InoxSet Context!758))) )
))
(declare-datatypes ((List!8534 0))(
  ( (Nil!8520) (Cons!8520 (h!13921 tuple2!9906) (t!91816 List!8534)) )
))
(declare-datatypes ((array!4079 0))(
  ( (array!4080 (arr!1821 (Array (_ BitVec 32) List!8534)) (size!6933 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2306 0))(
  ( (LongMapFixedSize!2307 (defaultEntry!1509 Int) (mask!3026 (_ BitVec 32)) (extraKeys!1400 (_ BitVec 32)) (zeroValue!1410 List!8534) (minValue!1410 List!8534) (_size!2415 (_ BitVec 32)) (_keys!1447 array!4075) (_values!1432 array!4079) (_vacant!1214 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4553 0))(
  ( (Cell!4554 (v!18655 LongMapFixedSize!2306)) )
))
(declare-datatypes ((MutLongMap!1153 0))(
  ( (LongMap!1153 (underlying!2489 Cell!4553)) (MutLongMapExt!1152 (__x!6788 Int)) )
))
(declare-fun lt!313472 () MutLongMap!1153)

(assert (=> b!769473 (= e!495366 (and e!495359 ((_ is LongMap!1153) lt!313472)))))

(declare-datatypes ((Cell!4555 0))(
  ( (Cell!4556 (v!18656 MutLongMap!1153)) )
))
(declare-datatypes ((Hashable!1125 0))(
  ( (HashableExt!1124 (__x!6789 Int)) )
))
(declare-datatypes ((MutableMap!1125 0))(
  ( (MutableMapExt!1124 (__x!6790 Int)) (HashMap!1125 (underlying!2490 Cell!4555) (hashF!3033 Hashable!1125) (_size!2416 (_ BitVec 32)) (defaultValue!1276 Int)) )
))
(declare-datatypes ((CacheUp!632 0))(
  ( (CacheUp!633 (cache!1512 MutableMap!1125)) )
))
(declare-fun cacheUp!653 () CacheUp!632)

(assert (=> b!769473 (= lt!313472 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))

(declare-fun b!769474 () Bool)

(declare-fun e!495343 () Bool)

(declare-fun e!495351 () Bool)

(declare-fun tp!251134 () Bool)

(assert (=> b!769474 (= e!495343 (and e!495351 tp!251134))))

(declare-fun b!769475 () Bool)

(declare-fun e!495341 () Bool)

(declare-fun tp!251141 () Bool)

(declare-fun mapRes!5664 () Bool)

(assert (=> b!769475 (= e!495341 (and tp!251141 mapRes!5664))))

(declare-fun condMapEmpty!5665 () Bool)

(declare-fun mapDefault!5665 () List!8529)

(assert (=> b!769475 (= condMapEmpty!5665 (= (arr!1818 (_values!1430 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8529)) mapDefault!5665)))))

(declare-fun res!337628 () Bool)

(assert (=> start!71340 (=> (not res!337628) (not e!495353))))

(assert (=> start!71340 (= res!337628 ((_ is Lexer!1427) thiss!15653))))

(assert (=> start!71340 e!495353))

(assert (=> start!71340 e!495343))

(declare-fun e!495344 () Bool)

(declare-fun inv!10836 (BalanceConc!5762) Bool)

(assert (=> start!71340 (and (inv!10836 input!1432) e!495344)))

(declare-fun e!495361 () Bool)

(declare-fun inv!10837 (CacheFindLongestMatch!302) Bool)

(assert (=> start!71340 (and (inv!10837 cacheFindLongestMatch!134) e!495361)))

(assert (=> start!71340 true))

(declare-fun e!495352 () Bool)

(declare-fun inv!10838 (CacheUp!632) Bool)

(assert (=> start!71340 (and (inv!10838 cacheUp!653) e!495352)))

(declare-fun e!495367 () Bool)

(assert (=> start!71340 (and (inv!10836 totalInput!472) e!495367)))

(declare-fun inv!10839 (CacheDown!638) Bool)

(assert (=> start!71340 (and (inv!10839 cacheDown!666) e!495357)))

(declare-fun b!769476 () Bool)

(declare-fun e!495342 () Bool)

(declare-fun tp!251137 () Bool)

(declare-fun inv!10840 (Conc!2875) Bool)

(assert (=> b!769476 (= e!495342 (and (inv!10840 (c!130230 (totalInput!2110 cacheFindLongestMatch!134))) tp!251137))))

(assert (=> b!769477 (= e!495364 (and e!495356 tp!251126))))

(declare-fun tp!251146 () Bool)

(declare-fun e!495355 () Bool)

(declare-fun tp!251128 () Bool)

(declare-fun array_inv!1319 (array!4075) Bool)

(declare-fun array_inv!1320 (array!4073) Bool)

(assert (=> b!769478 (= e!495355 (and tp!251129 tp!251128 tp!251146 (array_inv!1319 (_keys!1445 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) (array_inv!1320 (_values!1430 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) e!495341))))

(declare-fun mapNonEmpty!5663 () Bool)

(declare-fun tp!251122 () Bool)

(declare-fun tp!251127 () Bool)

(assert (=> mapNonEmpty!5663 (= mapRes!5665 (and tp!251122 tp!251127))))

(declare-fun mapKey!5663 () (_ BitVec 32))

(declare-fun mapValue!5665 () List!8534)

(declare-fun mapRest!5665 () (Array (_ BitVec 32) List!8534))

(assert (=> mapNonEmpty!5663 (= (arr!1821 (_values!1432 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) (store mapRest!5665 mapKey!5663 mapValue!5665))))

(declare-fun b!769479 () Bool)

(declare-fun ruleValid!500 (LexerInterface!1429 Rule!3054) Bool)

(assert (=> b!769479 (= e!495358 (ruleValid!500 thiss!15653 (h!13920 rulesArg!343)))))

(declare-fun b!769480 () Bool)

(declare-fun e!495363 () Bool)

(assert (=> b!769480 (= e!495361 (and e!495363 (inv!10836 (totalInput!2110 cacheFindLongestMatch!134)) e!495342))))

(declare-fun mapIsEmpty!5664 () Bool)

(assert (=> mapIsEmpty!5664 mapRes!5664))

(declare-fun b!769481 () Bool)

(declare-fun res!337630 () Bool)

(assert (=> b!769481 (=> (not res!337630) (not e!495345))))

(assert (=> b!769481 (= res!337630 (= (totalInput!2110 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun e!495354 () Bool)

(assert (=> b!769482 (= e!495354 (and tp!251139 tp!251143))))

(declare-fun b!769483 () Bool)

(declare-fun res!337627 () Bool)

(assert (=> b!769483 (=> (not res!337627) (not e!495345))))

(declare-fun valid!938 (CacheDown!638) Bool)

(assert (=> b!769483 (= res!337627 (valid!938 cacheDown!666))))

(declare-fun e!495348 () Bool)

(assert (=> b!769484 (= e!495363 (and e!495348 tp!251144))))

(declare-fun b!769485 () Bool)

(assert (=> b!769485 (= e!495359 e!495346)))

(declare-fun b!769486 () Bool)

(declare-fun tp!251147 () Bool)

(assert (=> b!769486 (= e!495344 (and (inv!10840 (c!130230 input!1432)) tp!251147))))

(declare-fun mapIsEmpty!5665 () Bool)

(declare-fun mapRes!5663 () Bool)

(assert (=> mapIsEmpty!5665 mapRes!5663))

(declare-fun mapNonEmpty!5664 () Bool)

(declare-fun tp!251133 () Bool)

(declare-fun tp!251149 () Bool)

(assert (=> mapNonEmpty!5664 (= mapRes!5664 (and tp!251133 tp!251149))))

(declare-fun mapRest!5664 () (Array (_ BitVec 32) List!8529))

(declare-fun mapKey!5664 () (_ BitVec 32))

(declare-fun mapValue!5664 () List!8529)

(assert (=> mapNonEmpty!5664 (= (arr!1818 (_values!1430 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) (store mapRest!5664 mapKey!5664 mapValue!5664))))

(declare-fun tp!251130 () Bool)

(declare-fun b!769487 () Bool)

(declare-fun inv!10829 (String!10103) Bool)

(declare-fun inv!10841 (TokenValueInjection!3078) Bool)

(assert (=> b!769487 (= e!495351 (and tp!251130 (inv!10829 (tag!1889 (h!13920 rulesArg!343))) (inv!10841 (transformation!1627 (h!13920 rulesArg!343))) e!495354))))

(declare-fun b!769488 () Bool)

(declare-fun res!337633 () Bool)

(assert (=> b!769488 (=> (not res!337633) (not e!495353))))

(declare-fun isEmpty!5205 (List!8533) Bool)

(assert (=> b!769488 (= res!337633 (not (isEmpty!5205 rulesArg!343)))))

(declare-fun b!769489 () Bool)

(declare-fun e!495349 () Bool)

(declare-fun lt!313469 () MutLongMap!1152)

(assert (=> b!769489 (= e!495348 (and e!495349 ((_ is LongMap!1152) lt!313469)))))

(assert (=> b!769489 (= lt!313469 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))

(declare-fun b!769490 () Bool)

(declare-fun e!495362 () Bool)

(declare-fun tp!251142 () Bool)

(assert (=> b!769490 (= e!495362 (and tp!251142 mapRes!5665))))

(declare-fun condMapEmpty!5664 () Bool)

(declare-fun mapDefault!5663 () List!8534)

(assert (=> b!769490 (= condMapEmpty!5664 (= (arr!1821 (_values!1432 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8534)) mapDefault!5663)))))

(declare-fun b!769491 () Bool)

(declare-fun e!495373 () Bool)

(assert (=> b!769491 (= e!495349 e!495373)))

(declare-fun b!769492 () Bool)

(declare-fun tp!251136 () Bool)

(assert (=> b!769492 (= e!495367 (and (inv!10840 (c!130230 totalInput!472)) tp!251136))))

(declare-fun b!769493 () Bool)

(declare-fun e!495360 () Bool)

(assert (=> b!769493 (= e!495360 e!495355)))

(declare-fun tp!251123 () Bool)

(declare-fun e!495347 () Bool)

(declare-fun tp!251124 () Bool)

(declare-fun e!495350 () Bool)

(declare-fun array_inv!1321 (array!4077) Bool)

(assert (=> b!769494 (= e!495350 (and tp!251135 tp!251123 tp!251124 (array_inv!1319 (_keys!1446 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) (array_inv!1321 (_values!1431 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) e!495347))))

(declare-fun b!769495 () Bool)

(assert (=> b!769495 (= e!495365 e!495360)))

(declare-fun b!769496 () Bool)

(assert (=> b!769496 (= e!495373 e!495350)))

(declare-fun mapNonEmpty!5665 () Bool)

(declare-fun tp!251148 () Bool)

(declare-fun tp!251131 () Bool)

(assert (=> mapNonEmpty!5665 (= mapRes!5663 (and tp!251148 tp!251131))))

(declare-fun mapRest!5663 () (Array (_ BitVec 32) List!8530))

(declare-fun mapKey!5665 () (_ BitVec 32))

(declare-fun mapValue!5663 () List!8530)

(assert (=> mapNonEmpty!5665 (= (arr!1820 (_values!1431 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) (store mapRest!5663 mapKey!5665 mapValue!5663))))

(declare-fun b!769497 () Bool)

(assert (=> b!769497 (= e!495352 e!495368)))

(declare-fun tp!251138 () Bool)

(declare-fun tp!251125 () Bool)

(declare-fun array_inv!1322 (array!4079) Bool)

(assert (=> b!769498 (= e!495372 (and tp!251140 tp!251125 tp!251138 (array_inv!1319 (_keys!1447 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) (array_inv!1322 (_values!1432 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) e!495362))))

(declare-fun b!769499 () Bool)

(declare-fun tp!251145 () Bool)

(assert (=> b!769499 (= e!495347 (and tp!251145 mapRes!5663))))

(declare-fun condMapEmpty!5663 () Bool)

(declare-fun mapDefault!5664 () List!8530)

(assert (=> b!769499 (= condMapEmpty!5663 (= (arr!1820 (_values!1431 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8530)) mapDefault!5664)))))

(declare-fun b!769500 () Bool)

(declare-fun res!337631 () Bool)

(assert (=> b!769500 (=> (not res!337631) (not e!495345))))

(declare-fun valid!939 (CacheUp!632) Bool)

(assert (=> b!769500 (= res!337631 (valid!939 cacheUp!653))))

(assert (= (and start!71340 res!337628) b!769468))

(assert (= (and b!769468 res!337629) b!769488))

(assert (= (and b!769488 res!337633) b!769470))

(assert (= (and b!769470 res!337625) b!769500))

(assert (= (and b!769500 res!337631) b!769483))

(assert (= (and b!769483 res!337627) b!769466))

(assert (= (and b!769466 res!337632) b!769481))

(assert (= (and b!769481 res!337630) b!769467))

(assert (= (and b!769467 (not res!337626)) b!769479))

(assert (= b!769487 b!769482))

(assert (= b!769474 b!769487))

(assert (= (and start!71340 ((_ is Cons!8519) rulesArg!343)) b!769474))

(assert (= start!71340 b!769486))

(assert (= (and b!769499 condMapEmpty!5663) mapIsEmpty!5665))

(assert (= (and b!769499 (not condMapEmpty!5663)) mapNonEmpty!5665))

(assert (= b!769494 b!769499))

(assert (= b!769496 b!769494))

(assert (= b!769491 b!769496))

(assert (= (and b!769489 ((_ is LongMap!1152) (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))) b!769491))

(assert (= b!769484 b!769489))

(assert (= (and b!769480 ((_ is HashMap!1124) (cache!1511 cacheFindLongestMatch!134))) b!769484))

(assert (= b!769480 b!769476))

(assert (= start!71340 b!769480))

(assert (= (and b!769490 condMapEmpty!5664) mapIsEmpty!5663))

(assert (= (and b!769490 (not condMapEmpty!5664)) mapNonEmpty!5663))

(assert (= b!769498 b!769490))

(assert (= b!769471 b!769498))

(assert (= b!769485 b!769471))

(assert (= (and b!769473 ((_ is LongMap!1153) (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))) b!769485))

(assert (= b!769472 b!769473))

(assert (= (and b!769497 ((_ is HashMap!1125) (cache!1512 cacheUp!653))) b!769472))

(assert (= start!71340 b!769497))

(assert (= start!71340 b!769492))

(assert (= (and b!769475 condMapEmpty!5665) mapIsEmpty!5664))

(assert (= (and b!769475 (not condMapEmpty!5665)) mapNonEmpty!5664))

(assert (= b!769478 b!769475))

(assert (= b!769493 b!769478))

(assert (= b!769495 b!769493))

(assert (= (and b!769465 ((_ is LongMap!1151) (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))) b!769495))

(assert (= b!769477 b!769465))

(assert (= (and b!769469 ((_ is HashMap!1123) (cache!1510 cacheDown!666))) b!769477))

(assert (= start!71340 b!769469))

(declare-fun m!1038711 () Bool)

(assert (=> b!769468 m!1038711))

(declare-fun m!1038713 () Bool)

(assert (=> mapNonEmpty!5664 m!1038713))

(declare-fun m!1038715 () Bool)

(assert (=> b!769480 m!1038715))

(declare-fun m!1038717 () Bool)

(assert (=> b!769466 m!1038717))

(declare-fun m!1038719 () Bool)

(assert (=> b!769467 m!1038719))

(declare-fun m!1038721 () Bool)

(assert (=> b!769467 m!1038721))

(declare-fun m!1038723 () Bool)

(assert (=> b!769488 m!1038723))

(declare-fun m!1038725 () Bool)

(assert (=> mapNonEmpty!5665 m!1038725))

(declare-fun m!1038727 () Bool)

(assert (=> b!769470 m!1038727))

(assert (=> b!769470 m!1038727))

(declare-fun m!1038729 () Bool)

(assert (=> b!769470 m!1038729))

(declare-fun m!1038731 () Bool)

(assert (=> b!769470 m!1038731))

(declare-fun m!1038733 () Bool)

(assert (=> b!769486 m!1038733))

(declare-fun m!1038735 () Bool)

(assert (=> mapNonEmpty!5663 m!1038735))

(declare-fun m!1038737 () Bool)

(assert (=> b!769478 m!1038737))

(declare-fun m!1038739 () Bool)

(assert (=> b!769478 m!1038739))

(declare-fun m!1038741 () Bool)

(assert (=> b!769479 m!1038741))

(declare-fun m!1038743 () Bool)

(assert (=> b!769476 m!1038743))

(declare-fun m!1038745 () Bool)

(assert (=> b!769492 m!1038745))

(declare-fun m!1038747 () Bool)

(assert (=> b!769494 m!1038747))

(declare-fun m!1038749 () Bool)

(assert (=> b!769494 m!1038749))

(declare-fun m!1038751 () Bool)

(assert (=> b!769483 m!1038751))

(declare-fun m!1038753 () Bool)

(assert (=> b!769487 m!1038753))

(declare-fun m!1038755 () Bool)

(assert (=> b!769487 m!1038755))

(declare-fun m!1038757 () Bool)

(assert (=> start!71340 m!1038757))

(declare-fun m!1038759 () Bool)

(assert (=> start!71340 m!1038759))

(declare-fun m!1038761 () Bool)

(assert (=> start!71340 m!1038761))

(declare-fun m!1038763 () Bool)

(assert (=> start!71340 m!1038763))

(declare-fun m!1038765 () Bool)

(assert (=> start!71340 m!1038765))

(declare-fun m!1038767 () Bool)

(assert (=> b!769500 m!1038767))

(declare-fun m!1038769 () Bool)

(assert (=> b!769498 m!1038769))

(declare-fun m!1038771 () Bool)

(assert (=> b!769498 m!1038771))

(check-sat (not b!769480) (not b!769483) b_and!71685 (not b!769486) b_and!71673 (not b!769488) (not b_next!24257) (not b!769474) (not b!769494) (not mapNonEmpty!5665) (not b!769487) (not b!769500) b_and!71675 (not b!769499) b_and!71681 (not b!769492) (not b_next!24267) (not b_next!24259) (not b!769498) (not mapNonEmpty!5663) (not b!769466) (not b!769470) (not b_next!24263) b_and!71687 (not start!71340) (not mapNonEmpty!5664) (not b!769476) (not b!769468) (not b_next!24269) (not b_next!24271) b_and!71677 (not b_next!24265) b_and!71679 (not b!769490) (not b!769467) (not b!769479) (not b!769475) (not b!769478) b_and!71683 (not b_next!24261))
(check-sat b_and!71685 b_and!71673 (not b_next!24263) b_and!71687 (not b_next!24257) (not b_next!24269) b_and!71675 b_and!71681 (not b_next!24267) (not b_next!24259) (not b_next!24271) b_and!71677 (not b_next!24265) b_and!71679 b_and!71683 (not b_next!24261))
(get-model)

(declare-fun d!251466 () Bool)

(declare-fun validCacheMapFindLongestMatch!46 (MutableMap!1124 BalanceConc!5762) Bool)

(assert (=> d!251466 (= (valid!937 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!46 (cache!1511 cacheFindLongestMatch!134) (totalInput!2110 cacheFindLongestMatch!134)))))

(declare-fun bs!165922 () Bool)

(assert (= bs!165922 d!251466))

(declare-fun m!1038773 () Bool)

(assert (=> bs!165922 m!1038773))

(assert (=> b!769466 d!251466))

(declare-fun d!251468 () Bool)

(declare-fun c!130233 () Bool)

(assert (=> d!251468 (= c!130233 ((_ is Node!2875) (c!130230 (totalInput!2110 cacheFindLongestMatch!134))))))

(declare-fun e!495379 () Bool)

(assert (=> d!251468 (= (inv!10840 (c!130230 (totalInput!2110 cacheFindLongestMatch!134))) e!495379)))

(declare-fun b!769507 () Bool)

(declare-fun inv!10842 (Conc!2875) Bool)

(assert (=> b!769507 (= e!495379 (inv!10842 (c!130230 (totalInput!2110 cacheFindLongestMatch!134))))))

(declare-fun b!769508 () Bool)

(declare-fun e!495380 () Bool)

(assert (=> b!769508 (= e!495379 e!495380)))

(declare-fun res!337640 () Bool)

(assert (=> b!769508 (= res!337640 (not ((_ is Leaf!4217) (c!130230 (totalInput!2110 cacheFindLongestMatch!134)))))))

(assert (=> b!769508 (=> res!337640 e!495380)))

(declare-fun b!769509 () Bool)

(declare-fun inv!10843 (Conc!2875) Bool)

(assert (=> b!769509 (= e!495380 (inv!10843 (c!130230 (totalInput!2110 cacheFindLongestMatch!134))))))

(assert (= (and d!251468 c!130233) b!769507))

(assert (= (and d!251468 (not c!130233)) b!769508))

(assert (= (and b!769508 (not res!337640)) b!769509))

(declare-fun m!1038775 () Bool)

(assert (=> b!769507 m!1038775))

(declare-fun m!1038777 () Bool)

(assert (=> b!769509 m!1038777))

(assert (=> b!769476 d!251468))

(declare-fun d!251470 () Bool)

(assert (=> d!251470 (= (array_inv!1319 (_keys!1446 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) (bvsge (size!6931 (_keys!1446 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!769494 d!251470))

(declare-fun d!251472 () Bool)

(assert (=> d!251472 (= (array_inv!1321 (_values!1431 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) (bvsge (size!6932 (_values!1431 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!769494 d!251472))

(declare-fun b!769518 () Bool)

(declare-fun e!495389 () Bool)

(declare-fun e!495387 () Bool)

(assert (=> b!769518 (= e!495389 e!495387)))

(declare-fun res!337652 () Bool)

(assert (=> b!769518 (=> (not res!337652) (not e!495387))))

(assert (=> b!769518 (= res!337652 (not ((_ is Nil!8517) lt!313470)))))

(declare-fun b!769520 () Bool)

(declare-fun tail!975 (List!8531) List!8531)

(assert (=> b!769520 (= e!495387 (isPrefix!985 (tail!975 lt!313470) (tail!975 lt!313470)))))

(declare-fun d!251474 () Bool)

(declare-fun e!495388 () Bool)

(assert (=> d!251474 e!495388))

(declare-fun res!337650 () Bool)

(assert (=> d!251474 (=> res!337650 e!495388)))

(declare-fun lt!313475 () Bool)

(assert (=> d!251474 (= res!337650 (not lt!313475))))

(assert (=> d!251474 (= lt!313475 e!495389)))

(declare-fun res!337651 () Bool)

(assert (=> d!251474 (=> res!337651 e!495389)))

(assert (=> d!251474 (= res!337651 ((_ is Nil!8517) lt!313470))))

(assert (=> d!251474 (= (isPrefix!985 lt!313470 lt!313470) lt!313475)))

(declare-fun b!769519 () Bool)

(declare-fun res!337649 () Bool)

(assert (=> b!769519 (=> (not res!337649) (not e!495387))))

(declare-fun head!1417 (List!8531) C!4556)

(assert (=> b!769519 (= res!337649 (= (head!1417 lt!313470) (head!1417 lt!313470)))))

(declare-fun b!769521 () Bool)

(declare-fun size!6934 (List!8531) Int)

(assert (=> b!769521 (= e!495388 (>= (size!6934 lt!313470) (size!6934 lt!313470)))))

(assert (= (and d!251474 (not res!337651)) b!769518))

(assert (= (and b!769518 res!337652) b!769519))

(assert (= (and b!769519 res!337649) b!769520))

(assert (= (and d!251474 (not res!337650)) b!769521))

(declare-fun m!1038779 () Bool)

(assert (=> b!769520 m!1038779))

(assert (=> b!769520 m!1038779))

(assert (=> b!769520 m!1038779))

(assert (=> b!769520 m!1038779))

(declare-fun m!1038781 () Bool)

(assert (=> b!769520 m!1038781))

(declare-fun m!1038783 () Bool)

(assert (=> b!769519 m!1038783))

(assert (=> b!769519 m!1038783))

(declare-fun m!1038785 () Bool)

(assert (=> b!769521 m!1038785))

(assert (=> b!769521 m!1038785))

(assert (=> b!769467 d!251474))

(declare-fun d!251476 () Bool)

(assert (=> d!251476 (isPrefix!985 lt!313470 lt!313470)))

(declare-fun lt!313478 () Unit!13092)

(declare-fun choose!4874 (List!8531 List!8531) Unit!13092)

(assert (=> d!251476 (= lt!313478 (choose!4874 lt!313470 lt!313470))))

(assert (=> d!251476 (= (lemmaIsPrefixRefl!696 lt!313470 lt!313470) lt!313478)))

(declare-fun bs!165923 () Bool)

(assert (= bs!165923 d!251476))

(assert (=> bs!165923 m!1038719))

(declare-fun m!1038787 () Bool)

(assert (=> bs!165923 m!1038787))

(assert (=> b!769467 d!251476))

(declare-fun d!251478 () Bool)

(declare-fun c!130234 () Bool)

(assert (=> d!251478 (= c!130234 ((_ is Node!2875) (c!130230 input!1432)))))

(declare-fun e!495390 () Bool)

(assert (=> d!251478 (= (inv!10840 (c!130230 input!1432)) e!495390)))

(declare-fun b!769522 () Bool)

(assert (=> b!769522 (= e!495390 (inv!10842 (c!130230 input!1432)))))

(declare-fun b!769523 () Bool)

(declare-fun e!495391 () Bool)

(assert (=> b!769523 (= e!495390 e!495391)))

(declare-fun res!337653 () Bool)

(assert (=> b!769523 (= res!337653 (not ((_ is Leaf!4217) (c!130230 input!1432))))))

(assert (=> b!769523 (=> res!337653 e!495391)))

(declare-fun b!769524 () Bool)

(assert (=> b!769524 (= e!495391 (inv!10843 (c!130230 input!1432)))))

(assert (= (and d!251478 c!130234) b!769522))

(assert (= (and d!251478 (not c!130234)) b!769523))

(assert (= (and b!769523 (not res!337653)) b!769524))

(declare-fun m!1038789 () Bool)

(assert (=> b!769522 m!1038789))

(declare-fun m!1038791 () Bool)

(assert (=> b!769524 m!1038791))

(assert (=> b!769486 d!251478))

(declare-fun d!251480 () Bool)

(assert (=> d!251480 true))

(declare-fun lt!313481 () Bool)

(declare-fun lambda!23282 () Int)

(declare-fun forall!2043 (List!8533 Int) Bool)

(assert (=> d!251480 (= lt!313481 (forall!2043 rulesArg!343 lambda!23282))))

(declare-fun e!495397 () Bool)

(assert (=> d!251480 (= lt!313481 e!495397)))

(declare-fun res!337658 () Bool)

(assert (=> d!251480 (=> res!337658 e!495397)))

(assert (=> d!251480 (= res!337658 (not ((_ is Cons!8519) rulesArg!343)))))

(assert (=> d!251480 (= (rulesValidInductive!575 thiss!15653 rulesArg!343) lt!313481)))

(declare-fun b!769529 () Bool)

(declare-fun e!495396 () Bool)

(assert (=> b!769529 (= e!495397 e!495396)))

(declare-fun res!337659 () Bool)

(assert (=> b!769529 (=> (not res!337659) (not e!495396))))

(assert (=> b!769529 (= res!337659 (ruleValid!500 thiss!15653 (h!13920 rulesArg!343)))))

(declare-fun b!769530 () Bool)

(assert (=> b!769530 (= e!495396 (rulesValidInductive!575 thiss!15653 (t!91815 rulesArg!343)))))

(assert (= (and d!251480 (not res!337658)) b!769529))

(assert (= (and b!769529 res!337659) b!769530))

(declare-fun m!1038793 () Bool)

(assert (=> d!251480 m!1038793))

(assert (=> b!769529 m!1038741))

(declare-fun m!1038795 () Bool)

(assert (=> b!769530 m!1038795))

(assert (=> b!769468 d!251480))

(declare-fun d!251482 () Bool)

(assert (=> d!251482 (= (array_inv!1319 (_keys!1445 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) (bvsge (size!6931 (_keys!1445 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!769478 d!251482))

(declare-fun d!251484 () Bool)

(assert (=> d!251484 (= (array_inv!1320 (_values!1430 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) (bvsge (size!6930 (_values!1430 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!769478 d!251484))

(declare-fun d!251486 () Bool)

(declare-fun validCacheMapUp!100 (MutableMap!1125) Bool)

(assert (=> d!251486 (= (valid!939 cacheUp!653) (validCacheMapUp!100 (cache!1512 cacheUp!653)))))

(declare-fun bs!165924 () Bool)

(assert (= bs!165924 d!251486))

(declare-fun m!1038797 () Bool)

(assert (=> bs!165924 m!1038797))

(assert (=> b!769500 d!251486))

(declare-fun d!251488 () Bool)

(declare-fun validCacheMapDown!100 (MutableMap!1123) Bool)

(assert (=> d!251488 (= (valid!938 cacheDown!666) (validCacheMapDown!100 (cache!1510 cacheDown!666)))))

(declare-fun bs!165925 () Bool)

(assert (= bs!165925 d!251488))

(declare-fun m!1038799 () Bool)

(assert (=> bs!165925 m!1038799))

(assert (=> b!769483 d!251488))

(declare-fun d!251490 () Bool)

(declare-fun c!130235 () Bool)

(assert (=> d!251490 (= c!130235 ((_ is Node!2875) (c!130230 totalInput!472)))))

(declare-fun e!495398 () Bool)

(assert (=> d!251490 (= (inv!10840 (c!130230 totalInput!472)) e!495398)))

(declare-fun b!769533 () Bool)

(assert (=> b!769533 (= e!495398 (inv!10842 (c!130230 totalInput!472)))))

(declare-fun b!769534 () Bool)

(declare-fun e!495399 () Bool)

(assert (=> b!769534 (= e!495398 e!495399)))

(declare-fun res!337660 () Bool)

(assert (=> b!769534 (= res!337660 (not ((_ is Leaf!4217) (c!130230 totalInput!472))))))

(assert (=> b!769534 (=> res!337660 e!495399)))

(declare-fun b!769535 () Bool)

(assert (=> b!769535 (= e!495399 (inv!10843 (c!130230 totalInput!472)))))

(assert (= (and d!251490 c!130235) b!769533))

(assert (= (and d!251490 (not c!130235)) b!769534))

(assert (= (and b!769534 (not res!337660)) b!769535))

(declare-fun m!1038801 () Bool)

(assert (=> b!769533 m!1038801))

(declare-fun m!1038803 () Bool)

(assert (=> b!769535 m!1038803))

(assert (=> b!769492 d!251490))

(declare-fun d!251492 () Bool)

(declare-fun isBalanced!773 (Conc!2875) Bool)

(assert (=> d!251492 (= (inv!10836 (totalInput!2110 cacheFindLongestMatch!134)) (isBalanced!773 (c!130230 (totalInput!2110 cacheFindLongestMatch!134))))))

(declare-fun bs!165926 () Bool)

(assert (= bs!165926 d!251492))

(declare-fun m!1038805 () Bool)

(assert (=> bs!165926 m!1038805))

(assert (=> b!769480 d!251492))

(declare-fun d!251494 () Bool)

(declare-fun res!337663 () Bool)

(declare-fun e!495402 () Bool)

(assert (=> d!251494 (=> (not res!337663) (not e!495402))))

(assert (=> d!251494 (= res!337663 ((_ is HashMap!1123) (cache!1510 cacheDown!666)))))

(assert (=> d!251494 (= (inv!10839 cacheDown!666) e!495402)))

(declare-fun b!769538 () Bool)

(assert (=> b!769538 (= e!495402 (validCacheMapDown!100 (cache!1510 cacheDown!666)))))

(assert (= (and d!251494 res!337663) b!769538))

(assert (=> b!769538 m!1038799))

(assert (=> start!71340 d!251494))

(declare-fun d!251496 () Bool)

(assert (=> d!251496 (= (inv!10836 totalInput!472) (isBalanced!773 (c!130230 totalInput!472)))))

(declare-fun bs!165927 () Bool)

(assert (= bs!165927 d!251496))

(declare-fun m!1038807 () Bool)

(assert (=> bs!165927 m!1038807))

(assert (=> start!71340 d!251496))

(declare-fun d!251498 () Bool)

(assert (=> d!251498 (= (inv!10836 input!1432) (isBalanced!773 (c!130230 input!1432)))))

(declare-fun bs!165928 () Bool)

(assert (= bs!165928 d!251498))

(declare-fun m!1038809 () Bool)

(assert (=> bs!165928 m!1038809))

(assert (=> start!71340 d!251498))

(declare-fun d!251500 () Bool)

(declare-fun res!337666 () Bool)

(declare-fun e!495405 () Bool)

(assert (=> d!251500 (=> (not res!337666) (not e!495405))))

(assert (=> d!251500 (= res!337666 ((_ is HashMap!1125) (cache!1512 cacheUp!653)))))

(assert (=> d!251500 (= (inv!10838 cacheUp!653) e!495405)))

(declare-fun b!769541 () Bool)

(assert (=> b!769541 (= e!495405 (validCacheMapUp!100 (cache!1512 cacheUp!653)))))

(assert (= (and d!251500 res!337666) b!769541))

(assert (=> b!769541 m!1038797))

(assert (=> start!71340 d!251500))

(declare-fun d!251502 () Bool)

(declare-fun res!337669 () Bool)

(declare-fun e!495408 () Bool)

(assert (=> d!251502 (=> (not res!337669) (not e!495408))))

(assert (=> d!251502 (= res!337669 ((_ is HashMap!1124) (cache!1511 cacheFindLongestMatch!134)))))

(assert (=> d!251502 (= (inv!10837 cacheFindLongestMatch!134) e!495408)))

(declare-fun b!769544 () Bool)

(assert (=> b!769544 (= e!495408 (validCacheMapFindLongestMatch!46 (cache!1511 cacheFindLongestMatch!134) (totalInput!2110 cacheFindLongestMatch!134)))))

(assert (= (and d!251502 res!337669) b!769544))

(assert (=> b!769544 m!1038773))

(assert (=> start!71340 d!251502))

(declare-fun d!251504 () Bool)

(assert (=> d!251504 (= (isEmpty!5205 rulesArg!343) ((_ is Nil!8519) rulesArg!343))))

(assert (=> b!769488 d!251504))

(declare-fun d!251506 () Bool)

(assert (=> d!251506 (= (array_inv!1319 (_keys!1447 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) (bvsge (size!6931 (_keys!1447 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!769498 d!251506))

(declare-fun d!251508 () Bool)

(assert (=> d!251508 (= (array_inv!1322 (_values!1432 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) (bvsge (size!6933 (_values!1432 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!769498 d!251508))

(declare-fun d!251510 () Bool)

(declare-fun e!495411 () Bool)

(assert (=> d!251510 e!495411))

(declare-fun res!337672 () Bool)

(assert (=> d!251510 (=> res!337672 e!495411)))

(declare-fun lt!313484 () Bool)

(assert (=> d!251510 (= res!337672 (not lt!313484))))

(declare-fun drop!393 (List!8531 Int) List!8531)

(assert (=> d!251510 (= lt!313484 (= lt!313470 (drop!393 (list!3427 totalInput!472) (- (size!6934 (list!3427 totalInput!472)) (size!6934 lt!313470)))))))

(assert (=> d!251510 (= (isSuffix!210 lt!313470 (list!3427 totalInput!472)) lt!313484)))

(declare-fun b!769547 () Bool)

(assert (=> b!769547 (= e!495411 (>= (size!6934 (list!3427 totalInput!472)) (size!6934 lt!313470)))))

(assert (= (and d!251510 (not res!337672)) b!769547))

(assert (=> d!251510 m!1038727))

(declare-fun m!1038811 () Bool)

(assert (=> d!251510 m!1038811))

(assert (=> d!251510 m!1038785))

(assert (=> d!251510 m!1038727))

(declare-fun m!1038813 () Bool)

(assert (=> d!251510 m!1038813))

(assert (=> b!769547 m!1038727))

(assert (=> b!769547 m!1038811))

(assert (=> b!769547 m!1038785))

(assert (=> b!769470 d!251510))

(declare-fun d!251512 () Bool)

(declare-fun list!3428 (Conc!2875) List!8531)

(assert (=> d!251512 (= (list!3427 totalInput!472) (list!3428 (c!130230 totalInput!472)))))

(declare-fun bs!165929 () Bool)

(assert (= bs!165929 d!251512))

(declare-fun m!1038815 () Bool)

(assert (=> bs!165929 m!1038815))

(assert (=> b!769470 d!251512))

(declare-fun d!251514 () Bool)

(assert (=> d!251514 (= (list!3427 input!1432) (list!3428 (c!130230 input!1432)))))

(declare-fun bs!165930 () Bool)

(assert (= bs!165930 d!251514))

(declare-fun m!1038817 () Bool)

(assert (=> bs!165930 m!1038817))

(assert (=> b!769470 d!251514))

(declare-fun d!251516 () Bool)

(declare-fun res!337677 () Bool)

(declare-fun e!495414 () Bool)

(assert (=> d!251516 (=> (not res!337677) (not e!495414))))

(declare-fun validRegex!581 (Regex!1977) Bool)

(assert (=> d!251516 (= res!337677 (validRegex!581 (regex!1627 (h!13920 rulesArg!343))))))

(assert (=> d!251516 (= (ruleValid!500 thiss!15653 (h!13920 rulesArg!343)) e!495414)))

(declare-fun b!769552 () Bool)

(declare-fun res!337678 () Bool)

(assert (=> b!769552 (=> (not res!337678) (not e!495414))))

(declare-fun nullable!485 (Regex!1977) Bool)

(assert (=> b!769552 (= res!337678 (not (nullable!485 (regex!1627 (h!13920 rulesArg!343)))))))

(declare-fun b!769553 () Bool)

(assert (=> b!769553 (= e!495414 (not (= (tag!1889 (h!13920 rulesArg!343)) (String!10104 ""))))))

(assert (= (and d!251516 res!337677) b!769552))

(assert (= (and b!769552 res!337678) b!769553))

(declare-fun m!1038819 () Bool)

(assert (=> d!251516 m!1038819))

(declare-fun m!1038821 () Bool)

(assert (=> b!769552 m!1038821))

(assert (=> b!769479 d!251516))

(declare-fun d!251518 () Bool)

(assert (=> d!251518 (= (inv!10829 (tag!1889 (h!13920 rulesArg!343))) (= (mod (str.len (value!52043 (tag!1889 (h!13920 rulesArg!343)))) 2) 0))))

(assert (=> b!769487 d!251518))

(declare-fun d!251520 () Bool)

(declare-fun res!337681 () Bool)

(declare-fun e!495417 () Bool)

(assert (=> d!251520 (=> (not res!337681) (not e!495417))))

(declare-fun semiInverseModEq!610 (Int Int) Bool)

(assert (=> d!251520 (= res!337681 (semiInverseModEq!610 (toChars!2478 (transformation!1627 (h!13920 rulesArg!343))) (toValue!2619 (transformation!1627 (h!13920 rulesArg!343)))))))

(assert (=> d!251520 (= (inv!10841 (transformation!1627 (h!13920 rulesArg!343))) e!495417)))

(declare-fun b!769556 () Bool)

(declare-fun equivClasses!585 (Int Int) Bool)

(assert (=> b!769556 (= e!495417 (equivClasses!585 (toChars!2478 (transformation!1627 (h!13920 rulesArg!343))) (toValue!2619 (transformation!1627 (h!13920 rulesArg!343)))))))

(assert (= (and d!251520 res!337681) b!769556))

(declare-fun m!1038823 () Bool)

(assert (=> d!251520 m!1038823))

(declare-fun m!1038825 () Bool)

(assert (=> b!769556 m!1038825))

(assert (=> b!769487 d!251520))

(declare-fun tp!251157 () Bool)

(declare-fun e!495422 () Bool)

(declare-fun tp!251158 () Bool)

(declare-fun b!769565 () Bool)

(assert (=> b!769565 (= e!495422 (and (inv!10840 (left!6372 (c!130230 (totalInput!2110 cacheFindLongestMatch!134)))) tp!251158 (inv!10840 (right!6702 (c!130230 (totalInput!2110 cacheFindLongestMatch!134)))) tp!251157))))

(declare-fun b!769567 () Bool)

(declare-fun e!495423 () Bool)

(declare-fun tp!251156 () Bool)

(assert (=> b!769567 (= e!495423 tp!251156)))

(declare-fun b!769566 () Bool)

(declare-fun inv!10844 (IArray!5751) Bool)

(assert (=> b!769566 (= e!495422 (and (inv!10844 (xs!5562 (c!130230 (totalInput!2110 cacheFindLongestMatch!134)))) e!495423))))

(assert (=> b!769476 (= tp!251137 (and (inv!10840 (c!130230 (totalInput!2110 cacheFindLongestMatch!134))) e!495422))))

(assert (= (and b!769476 ((_ is Node!2875) (c!130230 (totalInput!2110 cacheFindLongestMatch!134)))) b!769565))

(assert (= b!769566 b!769567))

(assert (= (and b!769476 ((_ is Leaf!4217) (c!130230 (totalInput!2110 cacheFindLongestMatch!134)))) b!769566))

(declare-fun m!1038827 () Bool)

(assert (=> b!769565 m!1038827))

(declare-fun m!1038829 () Bool)

(assert (=> b!769565 m!1038829))

(declare-fun m!1038831 () Bool)

(assert (=> b!769566 m!1038831))

(assert (=> b!769476 m!1038743))

(declare-fun tp!251167 () Bool)

(declare-fun setNonEmpty!6939 () Bool)

(declare-fun setRes!6939 () Bool)

(declare-fun e!495428 () Bool)

(declare-fun setElem!6939 () Context!758)

(declare-fun inv!10845 (Context!758) Bool)

(assert (=> setNonEmpty!6939 (= setRes!6939 (and tp!251167 (inv!10845 setElem!6939) e!495428))))

(declare-fun setRest!6939 () (InoxSet Context!758))

(assert (=> setNonEmpty!6939 (= (_1!5703 (_1!5704 (h!13917 (zeroValue!1409 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6939 true) setRest!6939))))

(declare-fun e!495429 () Bool)

(assert (=> b!769494 (= tp!251123 e!495429)))

(declare-fun b!769574 () Bool)

(declare-fun tp!251166 () Bool)

(assert (=> b!769574 (= e!495429 (and setRes!6939 tp!251166))))

(declare-fun condSetEmpty!6939 () Bool)

(assert (=> b!769574 (= condSetEmpty!6939 (= (_1!5703 (_1!5704 (h!13917 (zeroValue!1409 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setIsEmpty!6939 () Bool)

(assert (=> setIsEmpty!6939 setRes!6939))

(declare-fun b!769575 () Bool)

(declare-fun tp!251165 () Bool)

(assert (=> b!769575 (= e!495428 tp!251165)))

(assert (= (and b!769574 condSetEmpty!6939) setIsEmpty!6939))

(assert (= (and b!769574 (not condSetEmpty!6939)) setNonEmpty!6939))

(assert (= setNonEmpty!6939 b!769575))

(assert (= (and b!769494 ((_ is Cons!8516) (zeroValue!1409 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134)))))))) b!769574))

(declare-fun m!1038833 () Bool)

(assert (=> setNonEmpty!6939 m!1038833))

(declare-fun setRes!6940 () Bool)

(declare-fun setNonEmpty!6940 () Bool)

(declare-fun setElem!6940 () Context!758)

(declare-fun tp!251170 () Bool)

(declare-fun e!495430 () Bool)

(assert (=> setNonEmpty!6940 (= setRes!6940 (and tp!251170 (inv!10845 setElem!6940) e!495430))))

(declare-fun setRest!6940 () (InoxSet Context!758))

(assert (=> setNonEmpty!6940 (= (_1!5703 (_1!5704 (h!13917 (minValue!1409 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6940 true) setRest!6940))))

(declare-fun e!495431 () Bool)

(assert (=> b!769494 (= tp!251124 e!495431)))

(declare-fun b!769576 () Bool)

(declare-fun tp!251169 () Bool)

(assert (=> b!769576 (= e!495431 (and setRes!6940 tp!251169))))

(declare-fun condSetEmpty!6940 () Bool)

(assert (=> b!769576 (= condSetEmpty!6940 (= (_1!5703 (_1!5704 (h!13917 (minValue!1409 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134))))))))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setIsEmpty!6940 () Bool)

(assert (=> setIsEmpty!6940 setRes!6940))

(declare-fun b!769577 () Bool)

(declare-fun tp!251168 () Bool)

(assert (=> b!769577 (= e!495430 tp!251168)))

(assert (= (and b!769576 condSetEmpty!6940) setIsEmpty!6940))

(assert (= (and b!769576 (not condSetEmpty!6940)) setNonEmpty!6940))

(assert (= setNonEmpty!6940 b!769577))

(assert (= (and b!769494 ((_ is Cons!8516) (minValue!1409 (v!18653 (underlying!2487 (v!18654 (underlying!2488 (cache!1511 cacheFindLongestMatch!134)))))))) b!769576))

(declare-fun m!1038835 () Bool)

(assert (=> setNonEmpty!6940 m!1038835))

(declare-fun tp!251173 () Bool)

(declare-fun b!769578 () Bool)

(declare-fun tp!251172 () Bool)

(declare-fun e!495432 () Bool)

(assert (=> b!769578 (= e!495432 (and (inv!10840 (left!6372 (c!130230 input!1432))) tp!251173 (inv!10840 (right!6702 (c!130230 input!1432))) tp!251172))))

(declare-fun b!769580 () Bool)

(declare-fun e!495433 () Bool)

(declare-fun tp!251171 () Bool)

(assert (=> b!769580 (= e!495433 tp!251171)))

(declare-fun b!769579 () Bool)

(assert (=> b!769579 (= e!495432 (and (inv!10844 (xs!5562 (c!130230 input!1432))) e!495433))))

(assert (=> b!769486 (= tp!251147 (and (inv!10840 (c!130230 input!1432)) e!495432))))

(assert (= (and b!769486 ((_ is Node!2875) (c!130230 input!1432))) b!769578))

(assert (= b!769579 b!769580))

(assert (= (and b!769486 ((_ is Leaf!4217) (c!130230 input!1432))) b!769579))

(declare-fun m!1038837 () Bool)

(assert (=> b!769578 m!1038837))

(declare-fun m!1038839 () Bool)

(assert (=> b!769578 m!1038839))

(declare-fun m!1038841 () Bool)

(assert (=> b!769579 m!1038841))

(assert (=> b!769486 m!1038733))

(declare-fun setIsEmpty!6943 () Bool)

(declare-fun setRes!6943 () Bool)

(assert (=> setIsEmpty!6943 setRes!6943))

(declare-fun e!495442 () Bool)

(declare-fun e!495440 () Bool)

(declare-fun tp!251185 () Bool)

(declare-fun b!769589 () Bool)

(declare-fun tp!251184 () Bool)

(declare-fun tp_is_empty!3725 () Bool)

(assert (=> b!769589 (= e!495440 (and tp!251185 (inv!10845 (_2!5701 (_1!5702 (h!13916 (zeroValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))))) e!495442 tp_is_empty!3725 setRes!6943 tp!251184))))

(declare-fun condSetEmpty!6943 () Bool)

(assert (=> b!769589 (= condSetEmpty!6943 (= (_2!5702 (h!13916 (zeroValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun e!495441 () Bool)

(declare-fun setElem!6943 () Context!758)

(declare-fun setNonEmpty!6943 () Bool)

(declare-fun tp!251187 () Bool)

(assert (=> setNonEmpty!6943 (= setRes!6943 (and tp!251187 (inv!10845 setElem!6943) e!495441))))

(declare-fun setRest!6943 () (InoxSet Context!758))

(assert (=> setNonEmpty!6943 (= (_2!5702 (h!13916 (zeroValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6943 true) setRest!6943))))

(assert (=> b!769478 (= tp!251128 e!495440)))

(declare-fun b!769590 () Bool)

(declare-fun tp!251186 () Bool)

(assert (=> b!769590 (= e!495441 tp!251186)))

(declare-fun b!769591 () Bool)

(declare-fun tp!251188 () Bool)

(assert (=> b!769591 (= e!495442 tp!251188)))

(assert (= b!769589 b!769591))

(assert (= (and b!769589 condSetEmpty!6943) setIsEmpty!6943))

(assert (= (and b!769589 (not condSetEmpty!6943)) setNonEmpty!6943))

(assert (= setNonEmpty!6943 b!769590))

(assert (= (and b!769478 ((_ is Cons!8515) (zeroValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))) b!769589))

(declare-fun m!1038843 () Bool)

(assert (=> b!769589 m!1038843))

(declare-fun m!1038845 () Bool)

(assert (=> setNonEmpty!6943 m!1038845))

(declare-fun setIsEmpty!6944 () Bool)

(declare-fun setRes!6944 () Bool)

(assert (=> setIsEmpty!6944 setRes!6944))

(declare-fun b!769592 () Bool)

(declare-fun e!495443 () Bool)

(declare-fun e!495445 () Bool)

(declare-fun tp!251189 () Bool)

(declare-fun tp!251190 () Bool)

(assert (=> b!769592 (= e!495443 (and tp!251190 (inv!10845 (_2!5701 (_1!5702 (h!13916 (minValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))))) e!495445 tp_is_empty!3725 setRes!6944 tp!251189))))

(declare-fun condSetEmpty!6944 () Bool)

(assert (=> b!769592 (= condSetEmpty!6944 (= (_2!5702 (h!13916 (minValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setNonEmpty!6944 () Bool)

(declare-fun tp!251192 () Bool)

(declare-fun e!495444 () Bool)

(declare-fun setElem!6944 () Context!758)

(assert (=> setNonEmpty!6944 (= setRes!6944 (and tp!251192 (inv!10845 setElem!6944) e!495444))))

(declare-fun setRest!6944 () (InoxSet Context!758))

(assert (=> setNonEmpty!6944 (= (_2!5702 (h!13916 (minValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6944 true) setRest!6944))))

(assert (=> b!769478 (= tp!251146 e!495443)))

(declare-fun b!769593 () Bool)

(declare-fun tp!251191 () Bool)

(assert (=> b!769593 (= e!495444 tp!251191)))

(declare-fun b!769594 () Bool)

(declare-fun tp!251193 () Bool)

(assert (=> b!769594 (= e!495445 tp!251193)))

(assert (= b!769592 b!769594))

(assert (= (and b!769592 condSetEmpty!6944) setIsEmpty!6944))

(assert (= (and b!769592 (not condSetEmpty!6944)) setNonEmpty!6944))

(assert (= setNonEmpty!6944 b!769593))

(assert (= (and b!769478 ((_ is Cons!8515) (minValue!1408 (v!18651 (underlying!2485 (v!18652 (underlying!2486 (cache!1510 cacheDown!666)))))))) b!769592))

(declare-fun m!1038847 () Bool)

(assert (=> b!769592 m!1038847))

(declare-fun m!1038849 () Bool)

(assert (=> setNonEmpty!6944 m!1038849))

(declare-fun b!769605 () Bool)

(declare-fun b_free!24209 () Bool)

(declare-fun b_next!24273 () Bool)

(assert (=> b!769605 (= b_free!24209 (not b_next!24273))))

(declare-fun tp!251203 () Bool)

(declare-fun b_and!71689 () Bool)

(assert (=> b!769605 (= tp!251203 b_and!71689)))

(declare-fun b_free!24211 () Bool)

(declare-fun b_next!24275 () Bool)

(assert (=> b!769605 (= b_free!24211 (not b_next!24275))))

(declare-fun tp!251205 () Bool)

(declare-fun b_and!71691 () Bool)

(assert (=> b!769605 (= tp!251205 b_and!71691)))

(declare-fun e!495457 () Bool)

(assert (=> b!769605 (= e!495457 (and tp!251203 tp!251205))))

(declare-fun tp!251202 () Bool)

(declare-fun b!769604 () Bool)

(declare-fun e!495454 () Bool)

(assert (=> b!769604 (= e!495454 (and tp!251202 (inv!10829 (tag!1889 (h!13920 (t!91815 rulesArg!343)))) (inv!10841 (transformation!1627 (h!13920 (t!91815 rulesArg!343)))) e!495457))))

(declare-fun b!769603 () Bool)

(declare-fun e!495455 () Bool)

(declare-fun tp!251204 () Bool)

(assert (=> b!769603 (= e!495455 (and e!495454 tp!251204))))

(assert (=> b!769474 (= tp!251134 e!495455)))

(assert (= b!769604 b!769605))

(assert (= b!769603 b!769604))

(assert (= (and b!769474 ((_ is Cons!8519) (t!91815 rulesArg!343))) b!769603))

(declare-fun m!1038851 () Bool)

(assert (=> b!769604 m!1038851))

(declare-fun m!1038853 () Bool)

(assert (=> b!769604 m!1038853))

(declare-fun tp!251207 () Bool)

(declare-fun e!495458 () Bool)

(declare-fun b!769606 () Bool)

(declare-fun tp!251208 () Bool)

(assert (=> b!769606 (= e!495458 (and (inv!10840 (left!6372 (c!130230 totalInput!472))) tp!251208 (inv!10840 (right!6702 (c!130230 totalInput!472))) tp!251207))))

(declare-fun b!769608 () Bool)

(declare-fun e!495459 () Bool)

(declare-fun tp!251206 () Bool)

(assert (=> b!769608 (= e!495459 tp!251206)))

(declare-fun b!769607 () Bool)

(assert (=> b!769607 (= e!495458 (and (inv!10844 (xs!5562 (c!130230 totalInput!472))) e!495459))))

(assert (=> b!769492 (= tp!251136 (and (inv!10840 (c!130230 totalInput!472)) e!495458))))

(assert (= (and b!769492 ((_ is Node!2875) (c!130230 totalInput!472))) b!769606))

(assert (= b!769607 b!769608))

(assert (= (and b!769492 ((_ is Leaf!4217) (c!130230 totalInput!472))) b!769607))

(declare-fun m!1038855 () Bool)

(assert (=> b!769606 m!1038855))

(declare-fun m!1038857 () Bool)

(assert (=> b!769606 m!1038857))

(declare-fun m!1038859 () Bool)

(assert (=> b!769607 m!1038859))

(assert (=> b!769492 m!1038745))

(declare-fun setIsEmpty!6945 () Bool)

(declare-fun setRes!6945 () Bool)

(assert (=> setIsEmpty!6945 setRes!6945))

(declare-fun tp!251210 () Bool)

(declare-fun e!495460 () Bool)

(declare-fun tp!251209 () Bool)

(declare-fun b!769609 () Bool)

(declare-fun e!495462 () Bool)

(assert (=> b!769609 (= e!495460 (and tp!251210 (inv!10845 (_2!5701 (_1!5702 (h!13916 mapDefault!5665)))) e!495462 tp_is_empty!3725 setRes!6945 tp!251209))))

(declare-fun condSetEmpty!6945 () Bool)

(assert (=> b!769609 (= condSetEmpty!6945 (= (_2!5702 (h!13916 mapDefault!5665)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setElem!6945 () Context!758)

(declare-fun tp!251212 () Bool)

(declare-fun setNonEmpty!6945 () Bool)

(declare-fun e!495461 () Bool)

(assert (=> setNonEmpty!6945 (= setRes!6945 (and tp!251212 (inv!10845 setElem!6945) e!495461))))

(declare-fun setRest!6945 () (InoxSet Context!758))

(assert (=> setNonEmpty!6945 (= (_2!5702 (h!13916 mapDefault!5665)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6945 true) setRest!6945))))

(assert (=> b!769475 (= tp!251141 e!495460)))

(declare-fun b!769610 () Bool)

(declare-fun tp!251211 () Bool)

(assert (=> b!769610 (= e!495461 tp!251211)))

(declare-fun b!769611 () Bool)

(declare-fun tp!251213 () Bool)

(assert (=> b!769611 (= e!495462 tp!251213)))

(assert (= b!769609 b!769611))

(assert (= (and b!769609 condSetEmpty!6945) setIsEmpty!6945))

(assert (= (and b!769609 (not condSetEmpty!6945)) setNonEmpty!6945))

(assert (= setNonEmpty!6945 b!769610))

(assert (= (and b!769475 ((_ is Cons!8515) mapDefault!5665)) b!769609))

(declare-fun m!1038861 () Bool)

(assert (=> b!769609 m!1038861))

(declare-fun m!1038863 () Bool)

(assert (=> setNonEmpty!6945 m!1038863))

(declare-fun e!495469 () Bool)

(assert (=> b!769498 (= tp!251125 e!495469)))

(declare-fun tp!251223 () Bool)

(declare-fun setNonEmpty!6948 () Bool)

(declare-fun setElem!6948 () Context!758)

(declare-fun e!495470 () Bool)

(declare-fun setRes!6948 () Bool)

(assert (=> setNonEmpty!6948 (= setRes!6948 (and tp!251223 (inv!10845 setElem!6948) e!495470))))

(declare-fun setRest!6948 () (InoxSet Context!758))

(assert (=> setNonEmpty!6948 (= (_2!5706 (h!13921 (zeroValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6948 true) setRest!6948))))

(declare-fun b!769620 () Bool)

(declare-fun tp!251224 () Bool)

(declare-fun e!495471 () Bool)

(assert (=> b!769620 (= e!495469 (and (inv!10845 (_1!5705 (_1!5706 (h!13921 (zeroValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))))) e!495471 tp_is_empty!3725 setRes!6948 tp!251224))))

(declare-fun condSetEmpty!6948 () Bool)

(assert (=> b!769620 (= condSetEmpty!6948 (= (_2!5706 (h!13921 (zeroValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun b!769621 () Bool)

(declare-fun tp!251222 () Bool)

(assert (=> b!769621 (= e!495471 tp!251222)))

(declare-fun setIsEmpty!6948 () Bool)

(assert (=> setIsEmpty!6948 setRes!6948))

(declare-fun b!769622 () Bool)

(declare-fun tp!251225 () Bool)

(assert (=> b!769622 (= e!495470 tp!251225)))

(assert (= b!769620 b!769621))

(assert (= (and b!769620 condSetEmpty!6948) setIsEmpty!6948))

(assert (= (and b!769620 (not condSetEmpty!6948)) setNonEmpty!6948))

(assert (= setNonEmpty!6948 b!769622))

(assert (= (and b!769498 ((_ is Cons!8520) (zeroValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))) b!769620))

(declare-fun m!1038865 () Bool)

(assert (=> setNonEmpty!6948 m!1038865))

(declare-fun m!1038867 () Bool)

(assert (=> b!769620 m!1038867))

(declare-fun e!495472 () Bool)

(assert (=> b!769498 (= tp!251138 e!495472)))

(declare-fun setNonEmpty!6949 () Bool)

(declare-fun setRes!6949 () Bool)

(declare-fun setElem!6949 () Context!758)

(declare-fun tp!251227 () Bool)

(declare-fun e!495473 () Bool)

(assert (=> setNonEmpty!6949 (= setRes!6949 (and tp!251227 (inv!10845 setElem!6949) e!495473))))

(declare-fun setRest!6949 () (InoxSet Context!758))

(assert (=> setNonEmpty!6949 (= (_2!5706 (h!13921 (minValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6949 true) setRest!6949))))

(declare-fun b!769623 () Bool)

(declare-fun tp!251228 () Bool)

(declare-fun e!495474 () Bool)

(assert (=> b!769623 (= e!495472 (and (inv!10845 (_1!5705 (_1!5706 (h!13921 (minValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))))) e!495474 tp_is_empty!3725 setRes!6949 tp!251228))))

(declare-fun condSetEmpty!6949 () Bool)

(assert (=> b!769623 (= condSetEmpty!6949 (= (_2!5706 (h!13921 (minValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun b!769624 () Bool)

(declare-fun tp!251226 () Bool)

(assert (=> b!769624 (= e!495474 tp!251226)))

(declare-fun setIsEmpty!6949 () Bool)

(assert (=> setIsEmpty!6949 setRes!6949))

(declare-fun b!769625 () Bool)

(declare-fun tp!251229 () Bool)

(assert (=> b!769625 (= e!495473 tp!251229)))

(assert (= b!769623 b!769624))

(assert (= (and b!769623 condSetEmpty!6949) setIsEmpty!6949))

(assert (= (and b!769623 (not condSetEmpty!6949)) setNonEmpty!6949))

(assert (= setNonEmpty!6949 b!769625))

(assert (= (and b!769498 ((_ is Cons!8520) (minValue!1410 (v!18655 (underlying!2489 (v!18656 (underlying!2490 (cache!1512 cacheUp!653)))))))) b!769623))

(declare-fun m!1038869 () Bool)

(assert (=> setNonEmpty!6949 m!1038869))

(declare-fun m!1038871 () Bool)

(assert (=> b!769623 m!1038871))

(declare-fun e!495475 () Bool)

(declare-fun setElem!6950 () Context!758)

(declare-fun setNonEmpty!6950 () Bool)

(declare-fun setRes!6950 () Bool)

(declare-fun tp!251232 () Bool)

(assert (=> setNonEmpty!6950 (= setRes!6950 (and tp!251232 (inv!10845 setElem!6950) e!495475))))

(declare-fun setRest!6950 () (InoxSet Context!758))

(assert (=> setNonEmpty!6950 (= (_1!5703 (_1!5704 (h!13917 mapDefault!5664))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6950 true) setRest!6950))))

(declare-fun e!495476 () Bool)

(assert (=> b!769499 (= tp!251145 e!495476)))

(declare-fun b!769626 () Bool)

(declare-fun tp!251231 () Bool)

(assert (=> b!769626 (= e!495476 (and setRes!6950 tp!251231))))

(declare-fun condSetEmpty!6950 () Bool)

(assert (=> b!769626 (= condSetEmpty!6950 (= (_1!5703 (_1!5704 (h!13917 mapDefault!5664))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setIsEmpty!6950 () Bool)

(assert (=> setIsEmpty!6950 setRes!6950))

(declare-fun b!769627 () Bool)

(declare-fun tp!251230 () Bool)

(assert (=> b!769627 (= e!495475 tp!251230)))

(assert (= (and b!769626 condSetEmpty!6950) setIsEmpty!6950))

(assert (= (and b!769626 (not condSetEmpty!6950)) setNonEmpty!6950))

(assert (= setNonEmpty!6950 b!769627))

(assert (= (and b!769499 ((_ is Cons!8516) mapDefault!5664)) b!769626))

(declare-fun m!1038873 () Bool)

(assert (=> setNonEmpty!6950 m!1038873))

(declare-fun e!495477 () Bool)

(assert (=> b!769490 (= tp!251142 e!495477)))

(declare-fun tp!251234 () Bool)

(declare-fun setElem!6951 () Context!758)

(declare-fun setNonEmpty!6951 () Bool)

(declare-fun e!495478 () Bool)

(declare-fun setRes!6951 () Bool)

(assert (=> setNonEmpty!6951 (= setRes!6951 (and tp!251234 (inv!10845 setElem!6951) e!495478))))

(declare-fun setRest!6951 () (InoxSet Context!758))

(assert (=> setNonEmpty!6951 (= (_2!5706 (h!13921 mapDefault!5663)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6951 true) setRest!6951))))

(declare-fun b!769628 () Bool)

(declare-fun tp!251235 () Bool)

(declare-fun e!495479 () Bool)

(assert (=> b!769628 (= e!495477 (and (inv!10845 (_1!5705 (_1!5706 (h!13921 mapDefault!5663)))) e!495479 tp_is_empty!3725 setRes!6951 tp!251235))))

(declare-fun condSetEmpty!6951 () Bool)

(assert (=> b!769628 (= condSetEmpty!6951 (= (_2!5706 (h!13921 mapDefault!5663)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun b!769629 () Bool)

(declare-fun tp!251233 () Bool)

(assert (=> b!769629 (= e!495479 tp!251233)))

(declare-fun setIsEmpty!6951 () Bool)

(assert (=> setIsEmpty!6951 setRes!6951))

(declare-fun b!769630 () Bool)

(declare-fun tp!251236 () Bool)

(assert (=> b!769630 (= e!495478 tp!251236)))

(assert (= b!769628 b!769629))

(assert (= (and b!769628 condSetEmpty!6951) setIsEmpty!6951))

(assert (= (and b!769628 (not condSetEmpty!6951)) setNonEmpty!6951))

(assert (= setNonEmpty!6951 b!769630))

(assert (= (and b!769490 ((_ is Cons!8520) mapDefault!5663)) b!769628))

(declare-fun m!1038875 () Bool)

(assert (=> setNonEmpty!6951 m!1038875))

(declare-fun m!1038877 () Bool)

(assert (=> b!769628 m!1038877))

(declare-fun condMapEmpty!5668 () Bool)

(declare-fun mapDefault!5668 () List!8534)

(assert (=> mapNonEmpty!5663 (= condMapEmpty!5668 (= mapRest!5665 ((as const (Array (_ BitVec 32) List!8534)) mapDefault!5668)))))

(declare-fun e!495493 () Bool)

(declare-fun mapRes!5668 () Bool)

(assert (=> mapNonEmpty!5663 (= tp!251122 (and e!495493 mapRes!5668))))

(declare-fun mapNonEmpty!5668 () Bool)

(declare-fun tp!251257 () Bool)

(declare-fun e!495496 () Bool)

(assert (=> mapNonEmpty!5668 (= mapRes!5668 (and tp!251257 e!495496))))

(declare-fun mapKey!5668 () (_ BitVec 32))

(declare-fun mapValue!5668 () List!8534)

(declare-fun mapRest!5668 () (Array (_ BitVec 32) List!8534))

(assert (=> mapNonEmpty!5668 (= mapRest!5665 (store mapRest!5668 mapKey!5668 mapValue!5668))))

(declare-fun setIsEmpty!6956 () Bool)

(declare-fun setRes!6957 () Bool)

(assert (=> setIsEmpty!6956 setRes!6957))

(declare-fun b!769645 () Bool)

(declare-fun e!495495 () Bool)

(declare-fun tp!251258 () Bool)

(assert (=> b!769645 (= e!495495 tp!251258)))

(declare-fun setIsEmpty!6957 () Bool)

(declare-fun setRes!6956 () Bool)

(assert (=> setIsEmpty!6957 setRes!6956))

(declare-fun e!495492 () Bool)

(declare-fun setElem!6957 () Context!758)

(declare-fun setNonEmpty!6956 () Bool)

(declare-fun tp!251259 () Bool)

(assert (=> setNonEmpty!6956 (= setRes!6956 (and tp!251259 (inv!10845 setElem!6957) e!495492))))

(declare-fun setRest!6956 () (InoxSet Context!758))

(assert (=> setNonEmpty!6956 (= (_2!5706 (h!13921 mapValue!5668)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6957 true) setRest!6956))))

(declare-fun b!769646 () Bool)

(declare-fun tp!251256 () Bool)

(assert (=> b!769646 (= e!495493 (and (inv!10845 (_1!5705 (_1!5706 (h!13921 mapDefault!5668)))) e!495495 tp_is_empty!3725 setRes!6957 tp!251256))))

(declare-fun condSetEmpty!6957 () Bool)

(assert (=> b!769646 (= condSetEmpty!6957 (= (_2!5706 (h!13921 mapDefault!5668)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun b!769647 () Bool)

(declare-fun tp!251262 () Bool)

(assert (=> b!769647 (= e!495492 tp!251262)))

(declare-fun b!769648 () Bool)

(declare-fun e!495494 () Bool)

(declare-fun tp!251263 () Bool)

(assert (=> b!769648 (= e!495494 tp!251263)))

(declare-fun e!495497 () Bool)

(declare-fun b!769649 () Bool)

(declare-fun tp!251260 () Bool)

(assert (=> b!769649 (= e!495496 (and (inv!10845 (_1!5705 (_1!5706 (h!13921 mapValue!5668)))) e!495497 tp_is_empty!3725 setRes!6956 tp!251260))))

(declare-fun condSetEmpty!6956 () Bool)

(assert (=> b!769649 (= condSetEmpty!6956 (= (_2!5706 (h!13921 mapValue!5668)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setNonEmpty!6957 () Bool)

(declare-fun setElem!6956 () Context!758)

(declare-fun tp!251255 () Bool)

(assert (=> setNonEmpty!6957 (= setRes!6957 (and tp!251255 (inv!10845 setElem!6956) e!495494))))

(declare-fun setRest!6957 () (InoxSet Context!758))

(assert (=> setNonEmpty!6957 (= (_2!5706 (h!13921 mapDefault!5668)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6956 true) setRest!6957))))

(declare-fun mapIsEmpty!5668 () Bool)

(assert (=> mapIsEmpty!5668 mapRes!5668))

(declare-fun b!769650 () Bool)

(declare-fun tp!251261 () Bool)

(assert (=> b!769650 (= e!495497 tp!251261)))

(assert (= (and mapNonEmpty!5663 condMapEmpty!5668) mapIsEmpty!5668))

(assert (= (and mapNonEmpty!5663 (not condMapEmpty!5668)) mapNonEmpty!5668))

(assert (= b!769649 b!769650))

(assert (= (and b!769649 condSetEmpty!6956) setIsEmpty!6957))

(assert (= (and b!769649 (not condSetEmpty!6956)) setNonEmpty!6956))

(assert (= setNonEmpty!6956 b!769647))

(assert (= (and mapNonEmpty!5668 ((_ is Cons!8520) mapValue!5668)) b!769649))

(assert (= b!769646 b!769645))

(assert (= (and b!769646 condSetEmpty!6957) setIsEmpty!6956))

(assert (= (and b!769646 (not condSetEmpty!6957)) setNonEmpty!6957))

(assert (= setNonEmpty!6957 b!769648))

(assert (= (and mapNonEmpty!5663 ((_ is Cons!8520) mapDefault!5668)) b!769646))

(declare-fun m!1038879 () Bool)

(assert (=> b!769649 m!1038879))

(declare-fun m!1038881 () Bool)

(assert (=> setNonEmpty!6956 m!1038881))

(declare-fun m!1038883 () Bool)

(assert (=> setNonEmpty!6957 m!1038883))

(declare-fun m!1038885 () Bool)

(assert (=> b!769646 m!1038885))

(declare-fun m!1038887 () Bool)

(assert (=> mapNonEmpty!5668 m!1038887))

(declare-fun e!495498 () Bool)

(assert (=> mapNonEmpty!5663 (= tp!251127 e!495498)))

(declare-fun setNonEmpty!6958 () Bool)

(declare-fun setRes!6958 () Bool)

(declare-fun e!495499 () Bool)

(declare-fun setElem!6958 () Context!758)

(declare-fun tp!251265 () Bool)

(assert (=> setNonEmpty!6958 (= setRes!6958 (and tp!251265 (inv!10845 setElem!6958) e!495499))))

(declare-fun setRest!6958 () (InoxSet Context!758))

(assert (=> setNonEmpty!6958 (= (_2!5706 (h!13921 mapValue!5665)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6958 true) setRest!6958))))

(declare-fun b!769651 () Bool)

(declare-fun e!495500 () Bool)

(declare-fun tp!251266 () Bool)

(assert (=> b!769651 (= e!495498 (and (inv!10845 (_1!5705 (_1!5706 (h!13921 mapValue!5665)))) e!495500 tp_is_empty!3725 setRes!6958 tp!251266))))

(declare-fun condSetEmpty!6958 () Bool)

(assert (=> b!769651 (= condSetEmpty!6958 (= (_2!5706 (h!13921 mapValue!5665)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun b!769652 () Bool)

(declare-fun tp!251264 () Bool)

(assert (=> b!769652 (= e!495500 tp!251264)))

(declare-fun setIsEmpty!6958 () Bool)

(assert (=> setIsEmpty!6958 setRes!6958))

(declare-fun b!769653 () Bool)

(declare-fun tp!251267 () Bool)

(assert (=> b!769653 (= e!495499 tp!251267)))

(assert (= b!769651 b!769652))

(assert (= (and b!769651 condSetEmpty!6958) setIsEmpty!6958))

(assert (= (and b!769651 (not condSetEmpty!6958)) setNonEmpty!6958))

(assert (= setNonEmpty!6958 b!769653))

(assert (= (and mapNonEmpty!5663 ((_ is Cons!8520) mapValue!5665)) b!769651))

(declare-fun m!1038889 () Bool)

(assert (=> setNonEmpty!6958 m!1038889))

(declare-fun m!1038891 () Bool)

(assert (=> b!769651 m!1038891))

(declare-fun b!769668 () Bool)

(declare-fun e!495518 () Bool)

(declare-fun tp!251294 () Bool)

(assert (=> b!769668 (= e!495518 tp!251294)))

(declare-fun b!769669 () Bool)

(declare-fun e!495516 () Bool)

(declare-fun tp!251295 () Bool)

(assert (=> b!769669 (= e!495516 tp!251295)))

(declare-fun e!495513 () Bool)

(declare-fun b!769670 () Bool)

(declare-fun e!495517 () Bool)

(declare-fun tp!251300 () Bool)

(declare-fun tp!251292 () Bool)

(declare-fun mapDefault!5671 () List!8529)

(declare-fun setRes!6963 () Bool)

(assert (=> b!769670 (= e!495517 (and tp!251292 (inv!10845 (_2!5701 (_1!5702 (h!13916 mapDefault!5671)))) e!495513 tp_is_empty!3725 setRes!6963 tp!251300))))

(declare-fun condSetEmpty!6963 () Bool)

(assert (=> b!769670 (= condSetEmpty!6963 (= (_2!5702 (h!13916 mapDefault!5671)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setIsEmpty!6963 () Bool)

(declare-fun setRes!6964 () Bool)

(assert (=> setIsEmpty!6963 setRes!6964))

(declare-fun setNonEmpty!6963 () Bool)

(declare-fun tp!251297 () Bool)

(declare-fun setElem!6964 () Context!758)

(assert (=> setNonEmpty!6963 (= setRes!6964 (and tp!251297 (inv!10845 setElem!6964) e!495516))))

(declare-fun mapValue!5671 () List!8529)

(declare-fun setRest!6963 () (InoxSet Context!758))

(assert (=> setNonEmpty!6963 (= (_2!5702 (h!13916 mapValue!5671)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6964 true) setRest!6963))))

(declare-fun mapIsEmpty!5671 () Bool)

(declare-fun mapRes!5671 () Bool)

(assert (=> mapIsEmpty!5671 mapRes!5671))

(declare-fun b!769671 () Bool)

(declare-fun tp!251290 () Bool)

(assert (=> b!769671 (= e!495513 tp!251290)))

(declare-fun setNonEmpty!6964 () Bool)

(declare-fun setElem!6963 () Context!758)

(declare-fun tp!251293 () Bool)

(assert (=> setNonEmpty!6964 (= setRes!6963 (and tp!251293 (inv!10845 setElem!6963) e!495518))))

(declare-fun setRest!6964 () (InoxSet Context!758))

(assert (=> setNonEmpty!6964 (= (_2!5702 (h!13916 mapDefault!5671)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6963 true) setRest!6964))))

(declare-fun tp!251291 () Bool)

(declare-fun e!495514 () Bool)

(declare-fun tp!251296 () Bool)

(declare-fun b!769672 () Bool)

(declare-fun e!495515 () Bool)

(assert (=> b!769672 (= e!495515 (and tp!251296 (inv!10845 (_2!5701 (_1!5702 (h!13916 mapValue!5671)))) e!495514 tp_is_empty!3725 setRes!6964 tp!251291))))

(declare-fun condSetEmpty!6964 () Bool)

(assert (=> b!769672 (= condSetEmpty!6964 (= (_2!5702 (h!13916 mapValue!5671)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun mapNonEmpty!5671 () Bool)

(declare-fun tp!251299 () Bool)

(assert (=> mapNonEmpty!5671 (= mapRes!5671 (and tp!251299 e!495515))))

(declare-fun mapRest!5671 () (Array (_ BitVec 32) List!8529))

(declare-fun mapKey!5671 () (_ BitVec 32))

(assert (=> mapNonEmpty!5671 (= mapRest!5664 (store mapRest!5671 mapKey!5671 mapValue!5671))))

(declare-fun b!769673 () Bool)

(declare-fun tp!251298 () Bool)

(assert (=> b!769673 (= e!495514 tp!251298)))

(declare-fun condMapEmpty!5671 () Bool)

(assert (=> mapNonEmpty!5664 (= condMapEmpty!5671 (= mapRest!5664 ((as const (Array (_ BitVec 32) List!8529)) mapDefault!5671)))))

(assert (=> mapNonEmpty!5664 (= tp!251133 (and e!495517 mapRes!5671))))

(declare-fun setIsEmpty!6964 () Bool)

(assert (=> setIsEmpty!6964 setRes!6963))

(assert (= (and mapNonEmpty!5664 condMapEmpty!5671) mapIsEmpty!5671))

(assert (= (and mapNonEmpty!5664 (not condMapEmpty!5671)) mapNonEmpty!5671))

(assert (= b!769672 b!769673))

(assert (= (and b!769672 condSetEmpty!6964) setIsEmpty!6963))

(assert (= (and b!769672 (not condSetEmpty!6964)) setNonEmpty!6963))

(assert (= setNonEmpty!6963 b!769669))

(assert (= (and mapNonEmpty!5671 ((_ is Cons!8515) mapValue!5671)) b!769672))

(assert (= b!769670 b!769671))

(assert (= (and b!769670 condSetEmpty!6963) setIsEmpty!6964))

(assert (= (and b!769670 (not condSetEmpty!6963)) setNonEmpty!6964))

(assert (= setNonEmpty!6964 b!769668))

(assert (= (and mapNonEmpty!5664 ((_ is Cons!8515) mapDefault!5671)) b!769670))

(declare-fun m!1038893 () Bool)

(assert (=> b!769672 m!1038893))

(declare-fun m!1038895 () Bool)

(assert (=> setNonEmpty!6964 m!1038895))

(declare-fun m!1038897 () Bool)

(assert (=> mapNonEmpty!5671 m!1038897))

(declare-fun m!1038899 () Bool)

(assert (=> setNonEmpty!6963 m!1038899))

(declare-fun m!1038901 () Bool)

(assert (=> b!769670 m!1038901))

(declare-fun setIsEmpty!6965 () Bool)

(declare-fun setRes!6965 () Bool)

(assert (=> setIsEmpty!6965 setRes!6965))

(declare-fun e!495519 () Bool)

(declare-fun b!769674 () Bool)

(declare-fun tp!251301 () Bool)

(declare-fun tp!251302 () Bool)

(declare-fun e!495521 () Bool)

(assert (=> b!769674 (= e!495519 (and tp!251302 (inv!10845 (_2!5701 (_1!5702 (h!13916 mapValue!5664)))) e!495521 tp_is_empty!3725 setRes!6965 tp!251301))))

(declare-fun condSetEmpty!6965 () Bool)

(assert (=> b!769674 (= condSetEmpty!6965 (= (_2!5702 (h!13916 mapValue!5664)) ((as const (Array Context!758 Bool)) false)))))

(declare-fun tp!251304 () Bool)

(declare-fun setElem!6965 () Context!758)

(declare-fun e!495520 () Bool)

(declare-fun setNonEmpty!6965 () Bool)

(assert (=> setNonEmpty!6965 (= setRes!6965 (and tp!251304 (inv!10845 setElem!6965) e!495520))))

(declare-fun setRest!6965 () (InoxSet Context!758))

(assert (=> setNonEmpty!6965 (= (_2!5702 (h!13916 mapValue!5664)) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6965 true) setRest!6965))))

(assert (=> mapNonEmpty!5664 (= tp!251149 e!495519)))

(declare-fun b!769675 () Bool)

(declare-fun tp!251303 () Bool)

(assert (=> b!769675 (= e!495520 tp!251303)))

(declare-fun b!769676 () Bool)

(declare-fun tp!251305 () Bool)

(assert (=> b!769676 (= e!495521 tp!251305)))

(assert (= b!769674 b!769676))

(assert (= (and b!769674 condSetEmpty!6965) setIsEmpty!6965))

(assert (= (and b!769674 (not condSetEmpty!6965)) setNonEmpty!6965))

(assert (= setNonEmpty!6965 b!769675))

(assert (= (and mapNonEmpty!5664 ((_ is Cons!8515) mapValue!5664)) b!769674))

(declare-fun m!1038903 () Bool)

(assert (=> b!769674 m!1038903))

(declare-fun m!1038905 () Bool)

(assert (=> setNonEmpty!6965 m!1038905))

(declare-fun setIsEmpty!6970 () Bool)

(declare-fun setRes!6971 () Bool)

(assert (=> setIsEmpty!6970 setRes!6971))

(declare-fun mapIsEmpty!5674 () Bool)

(declare-fun mapRes!5674 () Bool)

(assert (=> mapIsEmpty!5674 mapRes!5674))

(declare-fun b!769687 () Bool)

(declare-fun e!495530 () Bool)

(declare-fun tp!251324 () Bool)

(assert (=> b!769687 (= e!495530 (and setRes!6971 tp!251324))))

(declare-fun condSetEmpty!6971 () Bool)

(declare-fun mapValue!5674 () List!8530)

(assert (=> b!769687 (= condSetEmpty!6971 (= (_1!5703 (_1!5704 (h!13917 mapValue!5674))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun b!769688 () Bool)

(declare-fun e!495532 () Bool)

(declare-fun tp!251325 () Bool)

(assert (=> b!769688 (= e!495532 tp!251325)))

(declare-fun b!769689 () Bool)

(declare-fun e!495533 () Bool)

(declare-fun tp!251326 () Bool)

(assert (=> b!769689 (= e!495533 tp!251326)))

(declare-fun b!769690 () Bool)

(declare-fun e!495531 () Bool)

(declare-fun setRes!6970 () Bool)

(declare-fun tp!251322 () Bool)

(assert (=> b!769690 (= e!495531 (and setRes!6970 tp!251322))))

(declare-fun condSetEmpty!6970 () Bool)

(declare-fun mapDefault!5674 () List!8530)

(assert (=> b!769690 (= condSetEmpty!6970 (= (_1!5703 (_1!5704 (h!13917 mapDefault!5674))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setNonEmpty!6970 () Bool)

(declare-fun setElem!6971 () Context!758)

(declare-fun tp!251321 () Bool)

(assert (=> setNonEmpty!6970 (= setRes!6970 (and tp!251321 (inv!10845 setElem!6971) e!495533))))

(declare-fun setRest!6971 () (InoxSet Context!758))

(assert (=> setNonEmpty!6970 (= (_1!5703 (_1!5704 (h!13917 mapDefault!5674))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6971 true) setRest!6971))))

(declare-fun condMapEmpty!5674 () Bool)

(assert (=> mapNonEmpty!5665 (= condMapEmpty!5674 (= mapRest!5663 ((as const (Array (_ BitVec 32) List!8530)) mapDefault!5674)))))

(assert (=> mapNonEmpty!5665 (= tp!251148 (and e!495531 mapRes!5674))))

(declare-fun mapNonEmpty!5674 () Bool)

(declare-fun tp!251320 () Bool)

(assert (=> mapNonEmpty!5674 (= mapRes!5674 (and tp!251320 e!495530))))

(declare-fun mapKey!5674 () (_ BitVec 32))

(declare-fun mapRest!5674 () (Array (_ BitVec 32) List!8530))

(assert (=> mapNonEmpty!5674 (= mapRest!5663 (store mapRest!5674 mapKey!5674 mapValue!5674))))

(declare-fun tp!251323 () Bool)

(declare-fun setNonEmpty!6971 () Bool)

(declare-fun setElem!6970 () Context!758)

(assert (=> setNonEmpty!6971 (= setRes!6971 (and tp!251323 (inv!10845 setElem!6970) e!495532))))

(declare-fun setRest!6970 () (InoxSet Context!758))

(assert (=> setNonEmpty!6971 (= (_1!5703 (_1!5704 (h!13917 mapValue!5674))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6970 true) setRest!6970))))

(declare-fun setIsEmpty!6971 () Bool)

(assert (=> setIsEmpty!6971 setRes!6970))

(assert (= (and mapNonEmpty!5665 condMapEmpty!5674) mapIsEmpty!5674))

(assert (= (and mapNonEmpty!5665 (not condMapEmpty!5674)) mapNonEmpty!5674))

(assert (= (and b!769687 condSetEmpty!6971) setIsEmpty!6970))

(assert (= (and b!769687 (not condSetEmpty!6971)) setNonEmpty!6971))

(assert (= setNonEmpty!6971 b!769688))

(assert (= (and mapNonEmpty!5674 ((_ is Cons!8516) mapValue!5674)) b!769687))

(assert (= (and b!769690 condSetEmpty!6970) setIsEmpty!6971))

(assert (= (and b!769690 (not condSetEmpty!6970)) setNonEmpty!6970))

(assert (= setNonEmpty!6970 b!769689))

(assert (= (and mapNonEmpty!5665 ((_ is Cons!8516) mapDefault!5674)) b!769690))

(declare-fun m!1038907 () Bool)

(assert (=> setNonEmpty!6970 m!1038907))

(declare-fun m!1038909 () Bool)

(assert (=> mapNonEmpty!5674 m!1038909))

(declare-fun m!1038911 () Bool)

(assert (=> setNonEmpty!6971 m!1038911))

(declare-fun setNonEmpty!6972 () Bool)

(declare-fun setRes!6972 () Bool)

(declare-fun tp!251329 () Bool)

(declare-fun e!495534 () Bool)

(declare-fun setElem!6972 () Context!758)

(assert (=> setNonEmpty!6972 (= setRes!6972 (and tp!251329 (inv!10845 setElem!6972) e!495534))))

(declare-fun setRest!6972 () (InoxSet Context!758))

(assert (=> setNonEmpty!6972 (= (_1!5703 (_1!5704 (h!13917 mapValue!5663))) ((_ map or) (store ((as const (Array Context!758 Bool)) false) setElem!6972 true) setRest!6972))))

(declare-fun e!495535 () Bool)

(assert (=> mapNonEmpty!5665 (= tp!251131 e!495535)))

(declare-fun b!769691 () Bool)

(declare-fun tp!251328 () Bool)

(assert (=> b!769691 (= e!495535 (and setRes!6972 tp!251328))))

(declare-fun condSetEmpty!6972 () Bool)

(assert (=> b!769691 (= condSetEmpty!6972 (= (_1!5703 (_1!5704 (h!13917 mapValue!5663))) ((as const (Array Context!758 Bool)) false)))))

(declare-fun setIsEmpty!6972 () Bool)

(assert (=> setIsEmpty!6972 setRes!6972))

(declare-fun b!769692 () Bool)

(declare-fun tp!251327 () Bool)

(assert (=> b!769692 (= e!495534 tp!251327)))

(assert (= (and b!769691 condSetEmpty!6972) setIsEmpty!6972))

(assert (= (and b!769691 (not condSetEmpty!6972)) setNonEmpty!6972))

(assert (= setNonEmpty!6972 b!769692))

(assert (= (and mapNonEmpty!5665 ((_ is Cons!8516) mapValue!5663)) b!769691))

(declare-fun m!1038913 () Bool)

(assert (=> setNonEmpty!6972 m!1038913))

(declare-fun b!769705 () Bool)

(declare-fun e!495538 () Bool)

(declare-fun tp!251343 () Bool)

(assert (=> b!769705 (= e!495538 tp!251343)))

(declare-fun b!769703 () Bool)

(assert (=> b!769703 (= e!495538 tp_is_empty!3725)))

(declare-fun b!769706 () Bool)

(declare-fun tp!251344 () Bool)

(declare-fun tp!251341 () Bool)

(assert (=> b!769706 (= e!495538 (and tp!251344 tp!251341))))

(declare-fun b!769704 () Bool)

(declare-fun tp!251342 () Bool)

(declare-fun tp!251340 () Bool)

(assert (=> b!769704 (= e!495538 (and tp!251342 tp!251340))))

(assert (=> b!769487 (= tp!251130 e!495538)))

(assert (= (and b!769487 ((_ is ElementMatch!1977) (regex!1627 (h!13920 rulesArg!343)))) b!769703))

(assert (= (and b!769487 ((_ is Concat!3648) (regex!1627 (h!13920 rulesArg!343)))) b!769704))

(assert (= (and b!769487 ((_ is Star!1977) (regex!1627 (h!13920 rulesArg!343)))) b!769705))

(assert (= (and b!769487 ((_ is Union!1977) (regex!1627 (h!13920 rulesArg!343)))) b!769706))

(check-sat (not b!769589) (not b!769610) (not setNonEmpty!6943) (not b!769704) (not d!251496) (not d!251486) (not b!769627) (not b!769670) (not b!769519) (not b!769565) (not b!769535) (not b!769624) (not b!769538) (not b!769609) (not d!251492) b_and!71681 (not b!769492) (not b_next!24267) (not b_next!24259) (not b!769604) b_and!71685 (not b!769529) (not b!769645) (not setNonEmpty!6957) (not b!769486) (not b!769629) (not setNonEmpty!6951) (not b!769630) b_and!71673 (not b!769646) (not b!769672) (not b!769628) (not b!769509) (not b!769552) (not d!251466) (not setNonEmpty!6940) (not b!769626) (not setNonEmpty!6963) (not b_next!24263) (not d!251520) (not b!769576) (not setNonEmpty!6950) (not b!769649) (not setNonEmpty!6948) (not b!769621) (not b!769676) (not setNonEmpty!6949) (not b!769669) (not b!769650) (not b!769622) (not b!769521) (not setNonEmpty!6972) (not b!769652) b_and!71687 (not b!769544) (not b!769606) (not b!769556) (not b!769520) (not b!769578) (not d!251476) b_and!71689 (not b!769593) (not b_next!24257) (not b!769671) (not b!769507) (not b!769690) (not b!769541) (not b!769688) (not b!769476) (not setNonEmpty!6965) (not b!769574) (not b!769668) (not b_next!24269) b_and!71691 (not b!769530) (not b!769648) (not setNonEmpty!6964) (not b!769577) (not setNonEmpty!6945) (not b!769579) tp_is_empty!3725 (not d!251498) (not b!769603) (not b!769566) (not d!251510) (not b!769594) (not d!251480) (not b!769692) (not b!769607) (not b!769575) (not mapNonEmpty!5674) (not setNonEmpty!6971) (not b!769625) (not b!769705) (not b!769591) (not b!769524) (not b!769567) (not b!769533) (not b!769592) (not setNonEmpty!6958) (not mapNonEmpty!5668) b_and!71677 (not b_next!24273) (not d!251514) (not b!769653) (not b!769611) (not b_next!24271) (not b!769687) (not b_next!24275) (not b!769580) (not setNonEmpty!6956) b_and!71679 (not setNonEmpty!6944) (not b_next!24265) (not b!769522) (not b!769651) (not d!251488) (not b!769590) (not b!769647) (not b!769673) (not b!769623) (not b!769674) (not b!769620) (not b!769675) (not b!769691) (not d!251516) (not mapNonEmpty!5671) (not d!251512) b_and!71683 (not b_next!24261) (not b!769547) (not b!769706) (not b!769689) b_and!71675 (not b!769608) (not setNonEmpty!6970) (not setNonEmpty!6939))
(check-sat b_and!71685 b_and!71673 (not b_next!24263) b_and!71687 b_and!71675 b_and!71681 (not b_next!24267) (not b_next!24259) b_and!71689 (not b_next!24257) (not b_next!24269) b_and!71691 (not b_next!24271) b_and!71677 (not b_next!24273) (not b_next!24275) (not b_next!24265) b_and!71679 b_and!71683 (not b_next!24261))

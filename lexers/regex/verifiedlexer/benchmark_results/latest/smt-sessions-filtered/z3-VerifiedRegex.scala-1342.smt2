; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71386 () Bool)

(assert start!71386)

(declare-fun b!769896 () Bool)

(declare-fun b_free!24229 () Bool)

(declare-fun b_next!24293 () Bool)

(assert (=> b!769896 (= b_free!24229 (not b_next!24293))))

(declare-fun tp!251496 () Bool)

(declare-fun b_and!71709 () Bool)

(assert (=> b!769896 (= tp!251496 b_and!71709)))

(declare-fun b!769915 () Bool)

(declare-fun b_free!24231 () Bool)

(declare-fun b_next!24295 () Bool)

(assert (=> b!769915 (= b_free!24231 (not b_next!24295))))

(declare-fun tp!251510 () Bool)

(declare-fun b_and!71711 () Bool)

(assert (=> b!769915 (= tp!251510 b_and!71711)))

(declare-fun b!769891 () Bool)

(declare-fun b_free!24233 () Bool)

(declare-fun b_next!24297 () Bool)

(assert (=> b!769891 (= b_free!24233 (not b_next!24297))))

(declare-fun tp!251497 () Bool)

(declare-fun b_and!71713 () Bool)

(assert (=> b!769891 (= tp!251497 b_and!71713)))

(declare-fun b!769894 () Bool)

(declare-fun b_free!24235 () Bool)

(declare-fun b_next!24299 () Bool)

(assert (=> b!769894 (= b_free!24235 (not b_next!24299))))

(declare-fun tp!251493 () Bool)

(declare-fun b_and!71715 () Bool)

(assert (=> b!769894 (= tp!251493 b_and!71715)))

(declare-fun b!769906 () Bool)

(declare-fun b_free!24237 () Bool)

(declare-fun b_next!24301 () Bool)

(assert (=> b!769906 (= b_free!24237 (not b_next!24301))))

(declare-fun tp!251512 () Bool)

(declare-fun b_and!71717 () Bool)

(assert (=> b!769906 (= tp!251512 b_and!71717)))

(declare-fun b!769907 () Bool)

(declare-fun b_free!24239 () Bool)

(declare-fun b_next!24303 () Bool)

(assert (=> b!769907 (= b_free!24239 (not b_next!24303))))

(declare-fun tp!251511 () Bool)

(declare-fun b_and!71719 () Bool)

(assert (=> b!769907 (= tp!251511 b_and!71719)))

(declare-fun b_free!24241 () Bool)

(declare-fun b_next!24305 () Bool)

(assert (=> b!769907 (= b_free!24241 (not b_next!24305))))

(declare-fun tp!251508 () Bool)

(declare-fun b_and!71721 () Bool)

(assert (=> b!769907 (= tp!251508 b_and!71721)))

(declare-fun b!769913 () Bool)

(declare-fun b_free!24243 () Bool)

(declare-fun b_next!24307 () Bool)

(assert (=> b!769913 (= b_free!24243 (not b_next!24307))))

(declare-fun tp!251492 () Bool)

(declare-fun b_and!71723 () Bool)

(assert (=> b!769913 (= tp!251492 b_and!71723)))

(declare-fun b!769887 () Bool)

(declare-fun e!495716 () Bool)

(declare-fun e!495726 () Bool)

(assert (=> b!769887 (= e!495716 e!495726)))

(declare-fun b!769888 () Bool)

(declare-fun e!495709 () Bool)

(declare-fun e!495729 () Bool)

(assert (=> b!769888 (= e!495709 (not e!495729))))

(declare-fun res!337728 () Bool)

(assert (=> b!769888 (=> res!337728 e!495729)))

(declare-datatypes ((List!8542 0))(
  ( (Nil!8528) (Cons!8528 (h!13929 (_ BitVec 16)) (t!91824 List!8542)) )
))
(declare-datatypes ((TokenValue!1673 0))(
  ( (FloatLiteralValue!3346 (text!12156 List!8542)) (TokenValueExt!1672 (__x!6802 Int)) (Broken!8365 (value!52073 List!8542)) (Object!1686) (End!1673) (Def!1673) (Underscore!1673) (Match!1673) (Else!1673) (Error!1673) (Case!1673) (If!1673) (Extends!1673) (Abstract!1673) (Class!1673) (Val!1673) (DelimiterValue!3346 (del!1733 List!8542)) (KeywordValue!1679 (value!52074 List!8542)) (CommentValue!3346 (value!52075 List!8542)) (WhitespaceValue!3346 (value!52076 List!8542)) (IndentationValue!1673 (value!52077 List!8542)) (String!10112) (Int32!1673) (Broken!8366 (value!52078 List!8542)) (Boolean!1674) (Unit!13095) (OperatorValue!1676 (op!1733 List!8542)) (IdentifierValue!3346 (value!52079 List!8542)) (IdentifierValue!3347 (value!52080 List!8542)) (WhitespaceValue!3347 (value!52081 List!8542)) (True!3346) (False!3346) (Broken!8367 (value!52082 List!8542)) (Broken!8368 (value!52083 List!8542)) (True!3347) (RightBrace!1673) (RightBracket!1673) (Colon!1673) (Null!1673) (Comma!1673) (LeftBracket!1673) (False!3347) (LeftBrace!1673) (ImaginaryLiteralValue!1673 (text!12157 List!8542)) (StringLiteralValue!5019 (value!52084 List!8542)) (EOFValue!1673 (value!52085 List!8542)) (IdentValue!1673 (value!52086 List!8542)) (DelimiterValue!3347 (value!52087 List!8542)) (DedentValue!1673 (value!52088 List!8542)) (NewLineValue!1673 (value!52089 List!8542)) (IntegerValue!5019 (value!52090 (_ BitVec 32)) (text!12158 List!8542)) (IntegerValue!5020 (value!52091 Int) (text!12159 List!8542)) (Times!1673) (Or!1673) (Equal!1673) (Minus!1673) (Broken!8369 (value!52092 List!8542)) (And!1673) (Div!1673) (LessEqual!1673) (Mod!1673) (Concat!3652) (Not!1673) (Plus!1673) (SpaceValue!1673 (value!52093 List!8542)) (IntegerValue!5021 (value!52094 Int) (text!12160 List!8542)) (StringLiteralValue!5020 (text!12161 List!8542)) (FloatLiteralValue!3347 (text!12162 List!8542)) (BytesLiteralValue!1673 (value!52095 List!8542)) (CommentValue!3347 (value!52096 List!8542)) (StringLiteralValue!5021 (value!52097 List!8542)) (ErrorTokenValue!1673 (msg!1734 List!8542)) )
))
(declare-datatypes ((C!4560 0))(
  ( (C!4561 (val!2510 Int)) )
))
(declare-datatypes ((String!10113 0))(
  ( (String!10114 (value!52098 String)) )
))
(declare-datatypes ((List!8543 0))(
  ( (Nil!8529) (Cons!8529 (h!13930 C!4560) (t!91825 List!8543)) )
))
(declare-datatypes ((IArray!5755 0))(
  ( (IArray!5756 (innerList!2935 List!8543)) )
))
(declare-datatypes ((Conc!2877 0))(
  ( (Node!2877 (left!6377 Conc!2877) (right!6707 Conc!2877) (csize!5984 Int) (cheight!3088 Int)) (Leaf!4220 (xs!5564 IArray!5755) (csize!5985 Int)) (Empty!2877) )
))
(declare-datatypes ((BalanceConc!5766 0))(
  ( (BalanceConc!5767 (c!130238 Conc!2877)) )
))
(declare-datatypes ((TokenValueInjection!3082 0))(
  ( (TokenValueInjection!3083 (toValue!2621 Int) (toChars!2480 Int)) )
))
(declare-datatypes ((Regex!1979 0))(
  ( (ElementMatch!1979 (c!130239 C!4560)) (Concat!3653 (regOne!4470 Regex!1979) (regTwo!4470 Regex!1979)) (EmptyExpr!1979) (Star!1979 (reg!2308 Regex!1979)) (EmptyLang!1979) (Union!1979 (regOne!4471 Regex!1979) (regTwo!4471 Regex!1979)) )
))
(declare-datatypes ((Rule!3058 0))(
  ( (Rule!3059 (regex!1629 Regex!1979) (tag!1891 String!10113) (isSeparator!1629 Bool) (transformation!1629 TokenValueInjection!3082)) )
))
(declare-datatypes ((List!8544 0))(
  ( (Nil!8530) (Cons!8530 (h!13931 Rule!3058) (t!91826 List!8544)) )
))
(declare-fun rulesArg!343 () List!8544)

(get-info :version)

(assert (=> b!769888 (= res!337728 (or (and ((_ is Cons!8530) rulesArg!343) ((_ is Nil!8530) (t!91826 rulesArg!343))) (not ((_ is Cons!8530) rulesArg!343))))))

(declare-fun lt!313515 () List!8543)

(declare-fun isPrefix!986 (List!8543 List!8543) Bool)

(assert (=> b!769888 (isPrefix!986 lt!313515 lt!313515)))

(declare-datatypes ((Unit!13096 0))(
  ( (Unit!13097) )
))
(declare-fun lt!313517 () Unit!13096)

(declare-fun lemmaIsPrefixRefl!697 (List!8543 List!8543) Unit!13096)

(assert (=> b!769888 (= lt!313517 (lemmaIsPrefixRefl!697 lt!313515 lt!313515))))

(declare-fun mapIsEmpty!5690 () Bool)

(declare-fun mapRes!5691 () Bool)

(assert (=> mapIsEmpty!5690 mapRes!5691))

(declare-fun b!769889 () Bool)

(declare-fun res!337731 () Bool)

(declare-fun e!495723 () Bool)

(assert (=> b!769889 (=> (not res!337731) (not e!495723))))

(declare-datatypes ((LexerInterface!1431 0))(
  ( (LexerInterfaceExt!1428 (__x!6803 Int)) (Lexer!1429) )
))
(declare-fun thiss!15653 () LexerInterface!1431)

(declare-fun rulesValidInductive!576 (LexerInterface!1431 List!8544) Bool)

(assert (=> b!769889 (= res!337731 (rulesValidInductive!576 thiss!15653 rulesArg!343))))

(declare-fun b!769890 () Bool)

(declare-fun e!495710 () Bool)

(declare-fun e!495721 () Bool)

(assert (=> b!769890 (= e!495710 e!495721)))

(declare-datatypes ((List!8545 0))(
  ( (Nil!8531) (Cons!8531 (h!13932 Regex!1979) (t!91827 List!8545)) )
))
(declare-datatypes ((Context!762 0))(
  ( (Context!763 (exprs!881 List!8545)) )
))
(declare-datatypes ((tuple3!970 0))(
  ( (tuple3!971 (_1!5713 Regex!1979) (_2!5713 Context!762) (_3!754 C!4560)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9918 0))(
  ( (tuple2!9919 (_1!5714 tuple3!970) (_2!5714 (InoxSet Context!762))) )
))
(declare-datatypes ((List!8546 0))(
  ( (Nil!8532) (Cons!8532 (h!13933 tuple2!9918) (t!91828 List!8546)) )
))
(declare-datatypes ((array!4093 0))(
  ( (array!4094 (arr!1826 (Array (_ BitVec 32) List!8546)) (size!6939 (_ BitVec 32))) )
))
(declare-datatypes ((array!4095 0))(
  ( (array!4096 (arr!1827 (Array (_ BitVec 32) (_ BitVec 64))) (size!6940 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2314 0))(
  ( (LongMapFixedSize!2315 (defaultEntry!1513 Int) (mask!3031 (_ BitVec 32)) (extraKeys!1404 (_ BitVec 32)) (zeroValue!1414 List!8546) (minValue!1414 List!8546) (_size!2423 (_ BitVec 32)) (_keys!1451 array!4095) (_values!1436 array!4093) (_vacant!1218 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4569 0))(
  ( (Cell!4570 (v!18663 LongMapFixedSize!2314)) )
))
(declare-datatypes ((MutLongMap!1157 0))(
  ( (LongMap!1157 (underlying!2497 Cell!4569)) (MutLongMapExt!1156 (__x!6804 Int)) )
))
(declare-datatypes ((Cell!4571 0))(
  ( (Cell!4572 (v!18664 MutLongMap!1157)) )
))
(declare-datatypes ((Hashable!1129 0))(
  ( (HashableExt!1128 (__x!6805 Int)) )
))
(declare-datatypes ((MutableMap!1129 0))(
  ( (MutableMapExt!1128 (__x!6806 Int)) (HashMap!1129 (underlying!2498 Cell!4571) (hashF!3037 Hashable!1129) (_size!2424 (_ BitVec 32)) (defaultValue!1280 Int)) )
))
(declare-datatypes ((CacheDown!642 0))(
  ( (CacheDown!643 (cache!1516 MutableMap!1129)) )
))
(declare-fun cacheDown!666 () CacheDown!642)

(declare-fun tp!251487 () Bool)

(declare-fun tp!251494 () Bool)

(declare-fun e!495728 () Bool)

(declare-fun array_inv!1325 (array!4095) Bool)

(declare-fun array_inv!1326 (array!4093) Bool)

(assert (=> b!769891 (= e!495721 (and tp!251497 tp!251494 tp!251487 (array_inv!1325 (_keys!1451 (v!18663 (underlying!2497 (v!18664 (underlying!2498 (cache!1516 cacheDown!666))))))) (array_inv!1326 (_values!1436 (v!18663 (underlying!2497 (v!18664 (underlying!2498 (cache!1516 cacheDown!666))))))) e!495728))))

(declare-fun b!769892 () Bool)

(declare-fun e!495738 () Bool)

(declare-fun e!495741 () Bool)

(declare-fun lt!313516 () MutLongMap!1157)

(assert (=> b!769892 (= e!495738 (and e!495741 ((_ is LongMap!1157) lt!313516)))))

(assert (=> b!769892 (= lt!313516 (v!18664 (underlying!2498 (cache!1516 cacheDown!666))))))

(declare-fun b!769893 () Bool)

(declare-fun e!495740 () Bool)

(declare-fun input!1432 () BalanceConc!5766)

(declare-fun tp!251489 () Bool)

(declare-fun inv!10855 (Conc!2877) Bool)

(assert (=> b!769893 (= e!495740 (and (inv!10855 (c!130238 input!1432)) tp!251489))))

(declare-fun e!495725 () Bool)

(declare-fun e!495732 () Bool)

(assert (=> b!769894 (= e!495725 (and e!495732 tp!251493))))

(declare-fun e!495712 () Bool)

(declare-fun tp!251504 () Bool)

(declare-fun tp!251485 () Bool)

(declare-fun e!495731 () Bool)

(declare-datatypes ((tuple2!9920 0))(
  ( (tuple2!9921 (_1!5715 Context!762) (_2!5715 C!4560)) )
))
(declare-datatypes ((tuple2!9922 0))(
  ( (tuple2!9923 (_1!5716 tuple2!9920) (_2!5716 (InoxSet Context!762))) )
))
(declare-datatypes ((List!8547 0))(
  ( (Nil!8533) (Cons!8533 (h!13934 tuple2!9922) (t!91829 List!8547)) )
))
(declare-datatypes ((array!4097 0))(
  ( (array!4098 (arr!1828 (Array (_ BitVec 32) List!8547)) (size!6941 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2316 0))(
  ( (LongMapFixedSize!2317 (defaultEntry!1514 Int) (mask!3032 (_ BitVec 32)) (extraKeys!1405 (_ BitVec 32)) (zeroValue!1415 List!8547) (minValue!1415 List!8547) (_size!2425 (_ BitVec 32)) (_keys!1452 array!4095) (_values!1437 array!4097) (_vacant!1219 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4573 0))(
  ( (Cell!4574 (v!18665 LongMapFixedSize!2316)) )
))
(declare-datatypes ((MutLongMap!1158 0))(
  ( (LongMap!1158 (underlying!2499 Cell!4573)) (MutLongMapExt!1157 (__x!6807 Int)) )
))
(declare-datatypes ((Cell!4575 0))(
  ( (Cell!4576 (v!18666 MutLongMap!1158)) )
))
(declare-datatypes ((Hashable!1130 0))(
  ( (HashableExt!1129 (__x!6808 Int)) )
))
(declare-datatypes ((MutableMap!1130 0))(
  ( (MutableMapExt!1129 (__x!6809 Int)) (HashMap!1130 (underlying!2500 Cell!4575) (hashF!3038 Hashable!1130) (_size!2426 (_ BitVec 32)) (defaultValue!1281 Int)) )
))
(declare-datatypes ((CacheUp!636 0))(
  ( (CacheUp!637 (cache!1517 MutableMap!1130)) )
))
(declare-fun cacheUp!653 () CacheUp!636)

(declare-fun array_inv!1327 (array!4097) Bool)

(assert (=> b!769896 (= e!495712 (and tp!251496 tp!251485 tp!251504 (array_inv!1325 (_keys!1452 (v!18665 (underlying!2499 (v!18666 (underlying!2500 (cache!1517 cacheUp!653))))))) (array_inv!1327 (_values!1437 (v!18665 (underlying!2499 (v!18666 (underlying!2500 (cache!1517 cacheUp!653))))))) e!495731))))

(declare-fun b!769897 () Bool)

(declare-fun e!495715 () Bool)

(declare-fun totalInput!472 () BalanceConc!5766)

(declare-fun tp!251486 () Bool)

(assert (=> b!769897 (= e!495715 (and (inv!10855 (c!130238 totalInput!472)) tp!251486))))

(declare-fun b!769898 () Bool)

(declare-fun e!495733 () Bool)

(assert (=> b!769898 (= e!495733 e!495725)))

(declare-fun b!769899 () Bool)

(declare-fun e!495719 () Bool)

(declare-fun e!495714 () Bool)

(assert (=> b!769899 (= e!495719 e!495714)))

(declare-fun b!769900 () Bool)

(declare-fun res!337735 () Bool)

(assert (=> b!769900 (=> (not res!337735) (not e!495709))))

(declare-fun valid!942 (CacheUp!636) Bool)

(assert (=> b!769900 (= res!337735 (valid!942 cacheUp!653))))

(declare-fun b!769901 () Bool)

(declare-fun res!337727 () Bool)

(assert (=> b!769901 (=> (not res!337727) (not e!495709))))

(declare-datatypes ((tuple2!9924 0))(
  ( (tuple2!9925 (_1!5717 (InoxSet Context!762)) (_2!5717 Int)) )
))
(declare-datatypes ((tuple2!9926 0))(
  ( (tuple2!9927 (_1!5718 tuple2!9924) (_2!5718 Int)) )
))
(declare-datatypes ((List!8548 0))(
  ( (Nil!8534) (Cons!8534 (h!13935 tuple2!9926) (t!91830 List!8548)) )
))
(declare-datatypes ((array!4099 0))(
  ( (array!4100 (arr!1829 (Array (_ BitVec 32) List!8548)) (size!6942 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1131 0))(
  ( (HashableExt!1130 (__x!6810 Int)) )
))
(declare-datatypes ((LongMapFixedSize!2318 0))(
  ( (LongMapFixedSize!2319 (defaultEntry!1515 Int) (mask!3033 (_ BitVec 32)) (extraKeys!1406 (_ BitVec 32)) (zeroValue!1416 List!8548) (minValue!1416 List!8548) (_size!2427 (_ BitVec 32)) (_keys!1453 array!4095) (_values!1438 array!4099) (_vacant!1220 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4577 0))(
  ( (Cell!4578 (v!18667 LongMapFixedSize!2318)) )
))
(declare-datatypes ((MutLongMap!1159 0))(
  ( (LongMap!1159 (underlying!2501 Cell!4577)) (MutLongMapExt!1158 (__x!6811 Int)) )
))
(declare-datatypes ((Cell!4579 0))(
  ( (Cell!4580 (v!18668 MutLongMap!1159)) )
))
(declare-datatypes ((MutableMap!1131 0))(
  ( (MutableMapExt!1130 (__x!6812 Int)) (HashMap!1131 (underlying!2502 Cell!4579) (hashF!3039 Hashable!1131) (_size!2428 (_ BitVec 32)) (defaultValue!1282 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!306 0))(
  ( (CacheFindLongestMatch!307 (cache!1518 MutableMap!1131) (totalInput!2112 BalanceConc!5766)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!306)

(assert (=> b!769901 (= res!337727 (= (totalInput!2112 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun mapNonEmpty!5690 () Bool)

(declare-fun mapRes!5690 () Bool)

(declare-fun tp!251501 () Bool)

(declare-fun tp!251503 () Bool)

(assert (=> mapNonEmpty!5690 (= mapRes!5690 (and tp!251501 tp!251503))))

(declare-fun mapKey!5692 () (_ BitVec 32))

(declare-fun mapRest!5692 () (Array (_ BitVec 32) List!8546))

(declare-fun mapValue!5691 () List!8546)

(assert (=> mapNonEmpty!5690 (= (arr!1826 (_values!1436 (v!18663 (underlying!2497 (v!18664 (underlying!2498 (cache!1516 cacheDown!666))))))) (store mapRest!5692 mapKey!5692 mapValue!5691))))

(declare-fun b!769902 () Bool)

(declare-fun lt!313518 () MutLongMap!1158)

(assert (=> b!769902 (= e!495732 (and e!495719 ((_ is LongMap!1158) lt!313518)))))

(assert (=> b!769902 (= lt!313518 (v!18666 (underlying!2500 (cache!1517 cacheUp!653))))))

(declare-fun b!769903 () Bool)

(declare-fun e!495736 () Bool)

(assert (=> b!769903 (= e!495726 e!495736)))

(declare-fun b!769904 () Bool)

(declare-fun e!495724 () Bool)

(declare-fun tp!251507 () Bool)

(assert (=> b!769904 (= e!495724 (and (inv!10855 (c!130238 (totalInput!2112 cacheFindLongestMatch!134))) tp!251507))))

(declare-fun b!769905 () Bool)

(declare-fun tp!251498 () Bool)

(assert (=> b!769905 (= e!495728 (and tp!251498 mapRes!5690))))

(declare-fun condMapEmpty!5690 () Bool)

(declare-fun mapDefault!5690 () List!8546)

(assert (=> b!769905 (= condMapEmpty!5690 (= (arr!1826 (_values!1436 (v!18663 (underlying!2497 (v!18664 (underlying!2498 (cache!1516 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8546)) mapDefault!5690)))))

(declare-fun mapNonEmpty!5691 () Bool)

(declare-fun tp!251488 () Bool)

(declare-fun tp!251505 () Bool)

(assert (=> mapNonEmpty!5691 (= mapRes!5691 (and tp!251488 tp!251505))))

(declare-fun mapValue!5692 () List!8548)

(declare-fun mapKey!5691 () (_ BitVec 32))

(declare-fun mapRest!5690 () (Array (_ BitVec 32) List!8548))

(assert (=> mapNonEmpty!5691 (= (arr!1829 (_values!1438 (v!18667 (underlying!2501 (v!18668 (underlying!2502 (cache!1518 cacheFindLongestMatch!134))))))) (store mapRest!5690 mapKey!5691 mapValue!5692))))

(declare-fun e!495742 () Bool)

(assert (=> b!769906 (= e!495742 (and e!495738 tp!251512))))

(declare-fun e!495718 () Bool)

(assert (=> b!769907 (= e!495718 (and tp!251511 tp!251508))))

(declare-fun mapIsEmpty!5691 () Bool)

(assert (=> mapIsEmpty!5691 mapRes!5690))

(declare-fun b!769908 () Bool)

(assert (=> b!769908 (= e!495714 e!495712)))

(declare-fun b!769909 () Bool)

(declare-fun e!495730 () Bool)

(assert (=> b!769909 (= e!495730 e!495742)))

(declare-fun mapNonEmpty!5692 () Bool)

(declare-fun mapRes!5692 () Bool)

(declare-fun tp!251499 () Bool)

(declare-fun tp!251491 () Bool)

(assert (=> mapNonEmpty!5692 (= mapRes!5692 (and tp!251499 tp!251491))))

(declare-fun mapKey!5690 () (_ BitVec 32))

(declare-fun mapValue!5690 () List!8547)

(declare-fun mapRest!5691 () (Array (_ BitVec 32) List!8547))

(assert (=> mapNonEmpty!5692 (= (arr!1828 (_values!1437 (v!18665 (underlying!2499 (v!18666 (underlying!2500 (cache!1517 cacheUp!653))))))) (store mapRest!5691 mapKey!5690 mapValue!5690))))

(declare-fun b!769910 () Bool)

(declare-fun res!337729 () Bool)

(assert (=> b!769910 (=> (not res!337729) (not e!495709))))

(declare-fun valid!943 (CacheFindLongestMatch!306) Bool)

(assert (=> b!769910 (= res!337729 (valid!943 cacheFindLongestMatch!134))))

(declare-fun b!769911 () Bool)

(assert (=> b!769911 (= e!495723 e!495709)))

(declare-fun res!337730 () Bool)

(assert (=> b!769911 (=> (not res!337730) (not e!495709))))

(declare-fun isSuffix!212 (List!8543 List!8543) Bool)

(declare-fun list!3430 (BalanceConc!5766) List!8543)

(assert (=> b!769911 (= res!337730 (isSuffix!212 lt!313515 (list!3430 totalInput!472)))))

(assert (=> b!769911 (= lt!313515 (list!3430 input!1432))))

(declare-fun e!495737 () Bool)

(declare-fun b!769912 () Bool)

(declare-fun e!495722 () Bool)

(declare-fun inv!10856 (BalanceConc!5766) Bool)

(assert (=> b!769912 (= e!495722 (and e!495737 (inv!10856 (totalInput!2112 cacheFindLongestMatch!134)) e!495724))))

(declare-fun e!495739 () Bool)

(assert (=> b!769913 (= e!495737 (and e!495739 tp!251492))))

(declare-fun b!769914 () Bool)

(declare-fun lt!313520 () MutLongMap!1159)

(assert (=> b!769914 (= e!495739 (and e!495716 ((_ is LongMap!1159) lt!313520)))))

(assert (=> b!769914 (= lt!313520 (v!18668 (underlying!2502 (cache!1518 cacheFindLongestMatch!134))))))

(declare-fun tp!251500 () Bool)

(declare-fun e!495713 () Bool)

(declare-fun tp!251502 () Bool)

(declare-fun array_inv!1328 (array!4099) Bool)

(assert (=> b!769915 (= e!495736 (and tp!251510 tp!251500 tp!251502 (array_inv!1325 (_keys!1453 (v!18667 (underlying!2501 (v!18668 (underlying!2502 (cache!1518 cacheFindLongestMatch!134))))))) (array_inv!1328 (_values!1438 (v!18667 (underlying!2501 (v!18668 (underlying!2502 (cache!1518 cacheFindLongestMatch!134))))))) e!495713))))

(declare-fun b!769916 () Bool)

(declare-fun tp!251495 () Bool)

(assert (=> b!769916 (= e!495731 (and tp!251495 mapRes!5692))))

(declare-fun condMapEmpty!5692 () Bool)

(declare-fun mapDefault!5691 () List!8547)

(assert (=> b!769916 (= condMapEmpty!5692 (= (arr!1828 (_values!1437 (v!18665 (underlying!2499 (v!18666 (underlying!2500 (cache!1517 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8547)) mapDefault!5691)))))

(declare-fun b!769917 () Bool)

(assert (=> b!769917 (= e!495741 e!495710)))

(declare-fun b!769895 () Bool)

(declare-fun res!337734 () Bool)

(assert (=> b!769895 (=> (not res!337734) (not e!495723))))

(declare-fun isEmpty!5207 (List!8544) Bool)

(assert (=> b!769895 (= res!337734 (not (isEmpty!5207 rulesArg!343)))))

(declare-fun res!337732 () Bool)

(assert (=> start!71386 (=> (not res!337732) (not e!495723))))

(assert (=> start!71386 (= res!337732 ((_ is Lexer!1429) thiss!15653))))

(assert (=> start!71386 e!495723))

(declare-fun e!495711 () Bool)

(assert (=> start!71386 e!495711))

(assert (=> start!71386 (and (inv!10856 input!1432) e!495740)))

(declare-fun inv!10857 (CacheFindLongestMatch!306) Bool)

(assert (=> start!71386 (and (inv!10857 cacheFindLongestMatch!134) e!495722)))

(assert (=> start!71386 true))

(declare-fun inv!10858 (CacheUp!636) Bool)

(assert (=> start!71386 (and (inv!10858 cacheUp!653) e!495733)))

(assert (=> start!71386 (and (inv!10856 totalInput!472) e!495715)))

(declare-fun inv!10859 (CacheDown!642) Bool)

(assert (=> start!71386 (and (inv!10859 cacheDown!666) e!495730)))

(declare-fun mapIsEmpty!5692 () Bool)

(assert (=> mapIsEmpty!5692 mapRes!5692))

(declare-fun e!495734 () Bool)

(declare-fun tp!251506 () Bool)

(declare-fun b!769918 () Bool)

(declare-fun inv!10848 (String!10113) Bool)

(declare-fun inv!10860 (TokenValueInjection!3082) Bool)

(assert (=> b!769918 (= e!495734 (and tp!251506 (inv!10848 (tag!1891 (h!13931 rulesArg!343))) (inv!10860 (transformation!1629 (h!13931 rulesArg!343))) e!495718))))

(declare-fun b!769919 () Bool)

(declare-fun tp!251490 () Bool)

(assert (=> b!769919 (= e!495713 (and tp!251490 mapRes!5691))))

(declare-fun condMapEmpty!5691 () Bool)

(declare-fun mapDefault!5692 () List!8548)

(assert (=> b!769919 (= condMapEmpty!5691 (= (arr!1829 (_values!1438 (v!18667 (underlying!2501 (v!18668 (underlying!2502 (cache!1518 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8548)) mapDefault!5692)))))

(declare-fun b!769920 () Bool)

(declare-fun tp!251509 () Bool)

(assert (=> b!769920 (= e!495711 (and e!495734 tp!251509))))

(declare-fun b!769921 () Bool)

(declare-fun res!337733 () Bool)

(assert (=> b!769921 (=> (not res!337733) (not e!495709))))

(declare-fun valid!944 (CacheDown!642) Bool)

(assert (=> b!769921 (= res!337733 (valid!944 cacheDown!666))))

(declare-fun b!769922 () Bool)

(assert (=> b!769922 (= e!495729 true)))

(declare-fun lt!313519 () Bool)

(declare-fun ruleValid!501 (LexerInterface!1431 Rule!3058) Bool)

(assert (=> b!769922 (= lt!313519 (ruleValid!501 thiss!15653 (h!13931 rulesArg!343)))))

(assert (= (and start!71386 res!337732) b!769889))

(assert (= (and b!769889 res!337731) b!769895))

(assert (= (and b!769895 res!337734) b!769911))

(assert (= (and b!769911 res!337730) b!769900))

(assert (= (and b!769900 res!337735) b!769921))

(assert (= (and b!769921 res!337733) b!769910))

(assert (= (and b!769910 res!337729) b!769901))

(assert (= (and b!769901 res!337727) b!769888))

(assert (= (and b!769888 (not res!337728)) b!769922))

(assert (= b!769918 b!769907))

(assert (= b!769920 b!769918))

(assert (= (and start!71386 ((_ is Cons!8530) rulesArg!343)) b!769920))

(assert (= start!71386 b!769893))

(assert (= (and b!769919 condMapEmpty!5691) mapIsEmpty!5690))

(assert (= (and b!769919 (not condMapEmpty!5691)) mapNonEmpty!5691))

(assert (= b!769915 b!769919))

(assert (= b!769903 b!769915))

(assert (= b!769887 b!769903))

(assert (= (and b!769914 ((_ is LongMap!1159) (v!18668 (underlying!2502 (cache!1518 cacheFindLongestMatch!134))))) b!769887))

(assert (= b!769913 b!769914))

(assert (= (and b!769912 ((_ is HashMap!1131) (cache!1518 cacheFindLongestMatch!134))) b!769913))

(assert (= b!769912 b!769904))

(assert (= start!71386 b!769912))

(assert (= (and b!769916 condMapEmpty!5692) mapIsEmpty!5692))

(assert (= (and b!769916 (not condMapEmpty!5692)) mapNonEmpty!5692))

(assert (= b!769896 b!769916))

(assert (= b!769908 b!769896))

(assert (= b!769899 b!769908))

(assert (= (and b!769902 ((_ is LongMap!1158) (v!18666 (underlying!2500 (cache!1517 cacheUp!653))))) b!769899))

(assert (= b!769894 b!769902))

(assert (= (and b!769898 ((_ is HashMap!1130) (cache!1517 cacheUp!653))) b!769894))

(assert (= start!71386 b!769898))

(assert (= start!71386 b!769897))

(assert (= (and b!769905 condMapEmpty!5690) mapIsEmpty!5691))

(assert (= (and b!769905 (not condMapEmpty!5690)) mapNonEmpty!5690))

(assert (= b!769891 b!769905))

(assert (= b!769890 b!769891))

(assert (= b!769917 b!769890))

(assert (= (and b!769892 ((_ is LongMap!1157) (v!18664 (underlying!2498 (cache!1516 cacheDown!666))))) b!769917))

(assert (= b!769906 b!769892))

(assert (= (and b!769909 ((_ is HashMap!1129) (cache!1516 cacheDown!666))) b!769906))

(assert (= start!71386 b!769909))

(declare-fun m!1038977 () Bool)

(assert (=> b!769912 m!1038977))

(declare-fun m!1038979 () Bool)

(assert (=> b!769910 m!1038979))

(declare-fun m!1038981 () Bool)

(assert (=> b!769911 m!1038981))

(assert (=> b!769911 m!1038981))

(declare-fun m!1038983 () Bool)

(assert (=> b!769911 m!1038983))

(declare-fun m!1038985 () Bool)

(assert (=> b!769911 m!1038985))

(declare-fun m!1038987 () Bool)

(assert (=> mapNonEmpty!5690 m!1038987))

(declare-fun m!1038989 () Bool)

(assert (=> b!769895 m!1038989))

(declare-fun m!1038991 () Bool)

(assert (=> b!769889 m!1038991))

(declare-fun m!1038993 () Bool)

(assert (=> b!769921 m!1038993))

(declare-fun m!1038995 () Bool)

(assert (=> b!769896 m!1038995))

(declare-fun m!1038997 () Bool)

(assert (=> b!769896 m!1038997))

(declare-fun m!1038999 () Bool)

(assert (=> mapNonEmpty!5691 m!1038999))

(declare-fun m!1039001 () Bool)

(assert (=> b!769915 m!1039001))

(declare-fun m!1039003 () Bool)

(assert (=> b!769915 m!1039003))

(declare-fun m!1039005 () Bool)

(assert (=> mapNonEmpty!5692 m!1039005))

(declare-fun m!1039007 () Bool)

(assert (=> b!769900 m!1039007))

(declare-fun m!1039009 () Bool)

(assert (=> b!769888 m!1039009))

(declare-fun m!1039011 () Bool)

(assert (=> b!769888 m!1039011))

(declare-fun m!1039013 () Bool)

(assert (=> b!769897 m!1039013))

(declare-fun m!1039015 () Bool)

(assert (=> b!769893 m!1039015))

(declare-fun m!1039017 () Bool)

(assert (=> b!769918 m!1039017))

(declare-fun m!1039019 () Bool)

(assert (=> b!769918 m!1039019))

(declare-fun m!1039021 () Bool)

(assert (=> b!769922 m!1039021))

(declare-fun m!1039023 () Bool)

(assert (=> start!71386 m!1039023))

(declare-fun m!1039025 () Bool)

(assert (=> start!71386 m!1039025))

(declare-fun m!1039027 () Bool)

(assert (=> start!71386 m!1039027))

(declare-fun m!1039029 () Bool)

(assert (=> start!71386 m!1039029))

(declare-fun m!1039031 () Bool)

(assert (=> start!71386 m!1039031))

(declare-fun m!1039033 () Bool)

(assert (=> b!769904 m!1039033))

(declare-fun m!1039035 () Bool)

(assert (=> b!769891 m!1039035))

(declare-fun m!1039037 () Bool)

(assert (=> b!769891 m!1039037))

(check-sat (not mapNonEmpty!5691) b_and!71719 b_and!71723 (not b!769915) b_and!71709 (not b!769910) (not b_next!24303) b_and!71721 (not b!769891) (not b!769912) (not b!769922) (not b!769888) (not b_next!24293) (not b!769911) (not b!769904) (not b_next!24295) b_and!71717 (not b!769916) b_and!71713 (not b_next!24297) (not b_next!24307) (not mapNonEmpty!5690) (not b!769905) (not b_next!24299) (not mapNonEmpty!5692) (not b!769918) (not b_next!24301) (not b!769900) (not b!769919) (not b!769896) (not b!769893) b_and!71711 (not b!769920) (not b!769889) (not b!769921) b_and!71715 (not b_next!24305) (not b!769895) (not start!71386) (not b!769897))
(check-sat (not b_next!24293) b_and!71719 b_and!71723 b_and!71713 (not b_next!24299) (not b_next!24301) b_and!71709 (not b_next!24303) b_and!71711 b_and!71721 (not b_next!24295) b_and!71717 (not b_next!24297) (not b_next!24307) b_and!71715 (not b_next!24305))

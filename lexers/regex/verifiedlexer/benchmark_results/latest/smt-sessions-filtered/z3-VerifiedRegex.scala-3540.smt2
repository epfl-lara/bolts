; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205688 () Bool)

(assert start!205688)

(declare-fun b!2103411 () Bool)

(declare-fun b_free!60233 () Bool)

(declare-fun b_next!60937 () Bool)

(assert (=> b!2103411 (= b_free!60233 (not b_next!60937))))

(declare-fun tp!636542 () Bool)

(declare-fun b_and!169795 () Bool)

(assert (=> b!2103411 (= tp!636542 b_and!169795)))

(declare-fun b_free!60235 () Bool)

(declare-fun b_next!60939 () Bool)

(assert (=> b!2103411 (= b_free!60235 (not b_next!60939))))

(declare-fun tp!636540 () Bool)

(declare-fun b_and!169797 () Bool)

(assert (=> b!2103411 (= tp!636540 b_and!169797)))

(declare-fun b!2103403 () Bool)

(declare-fun b_free!60237 () Bool)

(declare-fun b_next!60941 () Bool)

(assert (=> b!2103403 (= b_free!60237 (not b_next!60941))))

(declare-fun tp!636534 () Bool)

(declare-fun b_and!169799 () Bool)

(assert (=> b!2103403 (= tp!636534 b_and!169799)))

(declare-fun b!2103406 () Bool)

(declare-fun b_free!60239 () Bool)

(declare-fun b_next!60943 () Bool)

(assert (=> b!2103406 (= b_free!60239 (not b_next!60943))))

(declare-fun tp!636528 () Bool)

(declare-fun b_and!169801 () Bool)

(assert (=> b!2103406 (= tp!636528 b_and!169801)))

(declare-fun b!2103424 () Bool)

(declare-fun b_free!60241 () Bool)

(declare-fun b_next!60945 () Bool)

(assert (=> b!2103424 (= b_free!60241 (not b_next!60945))))

(declare-fun tp!636524 () Bool)

(declare-fun b_and!169803 () Bool)

(assert (=> b!2103424 (= tp!636524 b_and!169803)))

(declare-fun b!2103404 () Bool)

(declare-fun b_free!60243 () Bool)

(declare-fun b_next!60947 () Bool)

(assert (=> b!2103404 (= b_free!60243 (not b_next!60947))))

(declare-fun tp!636541 () Bool)

(declare-fun b_and!169805 () Bool)

(assert (=> b!2103404 (= tp!636541 b_and!169805)))

(declare-fun e!1336072 () Bool)

(declare-fun e!1336057 () Bool)

(assert (=> b!2103403 (= e!1336072 (and e!1336057 tp!636534))))

(declare-fun e!1336068 () Bool)

(declare-fun tp!636537 () Bool)

(declare-datatypes ((C!11240 0))(
  ( (C!11241 (val!6606 Int)) )
))
(declare-datatypes ((Regex!5547 0))(
  ( (ElementMatch!5547 (c!338817 C!11240)) (Concat!9802 (regOne!11606 Regex!5547) (regTwo!11606 Regex!5547)) (EmptyExpr!5547) (Star!5547 (reg!5876 Regex!5547)) (EmptyLang!5547) (Union!5547 (regOne!11607 Regex!5547) (regTwo!11607 Regex!5547)) )
))
(declare-datatypes ((List!23212 0))(
  ( (Nil!23128) (Cons!23128 (h!28529 Regex!5547) (t!195705 List!23212)) )
))
(declare-datatypes ((Context!2234 0))(
  ( (Context!2235 (exprs!1617 List!23212)) )
))
(declare-datatypes ((tuple3!2510 0))(
  ( (tuple3!2511 (_1!12904 Regex!5547) (_2!12904 Context!2234) (_3!1719 C!11240)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22370 0))(
  ( (tuple2!22371 (_1!12905 tuple3!2510) (_2!12905 (InoxSet Context!2234))) )
))
(declare-datatypes ((List!23213 0))(
  ( (Nil!23129) (Cons!23129 (h!28530 tuple2!22370) (t!195706 List!23213)) )
))
(declare-datatypes ((array!7609 0))(
  ( (array!7610 (arr!3373 (Array (_ BitVec 32) (_ BitVec 64))) (size!18067 (_ BitVec 32))) )
))
(declare-datatypes ((array!7611 0))(
  ( (array!7612 (arr!3374 (Array (_ BitVec 32) List!23213)) (size!18068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4410 0))(
  ( (LongMapFixedSize!4411 (defaultEntry!2570 Int) (mask!6294 (_ BitVec 32)) (extraKeys!2453 (_ BitVec 32)) (zeroValue!2463 List!23213) (minValue!2463 List!23213) (_size!4461 (_ BitVec 32)) (_keys!2502 array!7609) (_values!2485 array!7611) (_vacant!2266 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8645 0))(
  ( (Cell!8646 (v!27717 LongMapFixedSize!4410)) )
))
(declare-datatypes ((MutLongMap!2205 0))(
  ( (LongMap!2205 (underlying!4605 Cell!8645)) (MutLongMapExt!2204 (__x!14701 Int)) )
))
(declare-datatypes ((Cell!8647 0))(
  ( (Cell!8648 (v!27718 MutLongMap!2205)) )
))
(declare-datatypes ((Hashable!2119 0))(
  ( (HashableExt!2118 (__x!14702 Int)) )
))
(declare-datatypes ((MutableMap!2119 0))(
  ( (MutableMapExt!2118 (__x!14703 Int)) (HashMap!2119 (underlying!4606 Cell!8647) (hashF!4042 Hashable!2119) (_size!4462 (_ BitVec 32)) (defaultValue!2281 Int)) )
))
(declare-datatypes ((CacheDown!1418 0))(
  ( (CacheDown!1419 (cache!2500 MutableMap!2119)) )
))
(declare-fun cacheDown!688 () CacheDown!1418)

(declare-fun e!1336062 () Bool)

(declare-fun tp!636539 () Bool)

(declare-fun array_inv!2426 (array!7609) Bool)

(declare-fun array_inv!2427 (array!7611) Bool)

(assert (=> b!2103404 (= e!1336068 (and tp!636541 tp!636539 tp!636537 (array_inv!2426 (_keys!2502 (v!27717 (underlying!4605 (v!27718 (underlying!4606 (cache!2500 cacheDown!688))))))) (array_inv!2427 (_values!2485 (v!27717 (underlying!4605 (v!27718 (underlying!4606 (cache!2500 cacheDown!688))))))) e!1336062))))

(declare-fun tp!636535 () Bool)

(declare-datatypes ((tuple2!22372 0))(
  ( (tuple2!22373 (_1!12906 Context!2234) (_2!12906 C!11240)) )
))
(declare-datatypes ((tuple2!22374 0))(
  ( (tuple2!22375 (_1!12907 tuple2!22372) (_2!12907 (InoxSet Context!2234))) )
))
(declare-datatypes ((List!23214 0))(
  ( (Nil!23130) (Cons!23130 (h!28531 tuple2!22374) (t!195707 List!23214)) )
))
(declare-datatypes ((array!7613 0))(
  ( (array!7614 (arr!3375 (Array (_ BitVec 32) List!23214)) (size!18069 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4412 0))(
  ( (LongMapFixedSize!4413 (defaultEntry!2571 Int) (mask!6295 (_ BitVec 32)) (extraKeys!2454 (_ BitVec 32)) (zeroValue!2464 List!23214) (minValue!2464 List!23214) (_size!4463 (_ BitVec 32)) (_keys!2503 array!7609) (_values!2486 array!7613) (_vacant!2267 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2120 0))(
  ( (HashableExt!2119 (__x!14704 Int)) )
))
(declare-datatypes ((Cell!8649 0))(
  ( (Cell!8650 (v!27719 LongMapFixedSize!4412)) )
))
(declare-datatypes ((MutLongMap!2206 0))(
  ( (LongMap!2206 (underlying!4607 Cell!8649)) (MutLongMapExt!2205 (__x!14705 Int)) )
))
(declare-datatypes ((Cell!8651 0))(
  ( (Cell!8652 (v!27720 MutLongMap!2206)) )
))
(declare-datatypes ((MutableMap!2120 0))(
  ( (MutableMapExt!2119 (__x!14706 Int)) (HashMap!2120 (underlying!4608 Cell!8651) (hashF!4043 Hashable!2120) (_size!4464 (_ BitVec 32)) (defaultValue!2282 Int)) )
))
(declare-datatypes ((CacheUp!1414 0))(
  ( (CacheUp!1415 (cache!2501 MutableMap!2120)) )
))
(declare-fun cacheUp!675 () CacheUp!1414)

(declare-fun e!1336065 () Bool)

(declare-fun tp!636536 () Bool)

(declare-fun e!1336055 () Bool)

(declare-fun array_inv!2428 (array!7613) Bool)

(assert (=> b!2103406 (= e!1336055 (and tp!636528 tp!636536 tp!636535 (array_inv!2426 (_keys!2503 (v!27719 (underlying!4607 (v!27720 (underlying!4608 (cache!2501 cacheUp!675))))))) (array_inv!2428 (_values!2486 (v!27719 (underlying!4607 (v!27720 (underlying!4608 (cache!2501 cacheUp!675))))))) e!1336065))))

(declare-fun b!2103407 () Bool)

(declare-fun e!1336071 () Bool)

(declare-datatypes ((List!23215 0))(
  ( (Nil!23131) (Cons!23131 (h!28532 C!11240) (t!195708 List!23215)) )
))
(declare-datatypes ((IArray!15403 0))(
  ( (IArray!15404 (innerList!7759 List!23215)) )
))
(declare-datatypes ((Conc!7699 0))(
  ( (Node!7699 (left!18101 Conc!7699) (right!18431 Conc!7699) (csize!15628 Int) (cheight!7910 Int)) (Leaf!11240 (xs!10641 IArray!15403) (csize!15629 Int)) (Empty!7699) )
))
(declare-datatypes ((BalanceConc!15160 0))(
  ( (BalanceConc!15161 (c!338818 Conc!7699)) )
))
(declare-fun input!1444 () BalanceConc!15160)

(declare-fun tp!636538 () Bool)

(declare-fun inv!30661 (Conc!7699) Bool)

(assert (=> b!2103407 (= e!1336071 (and (inv!30661 (c!338818 input!1444)) tp!636538))))

(declare-fun b!2103408 () Bool)

(declare-fun tp!636530 () Bool)

(declare-fun mapRes!10686 () Bool)

(assert (=> b!2103408 (= e!1336062 (and tp!636530 mapRes!10686))))

(declare-fun condMapEmpty!10686 () Bool)

(declare-fun mapDefault!10687 () List!23213)

(assert (=> b!2103408 (= condMapEmpty!10686 (= (arr!3374 (_values!2485 (v!27717 (underlying!4605 (v!27718 (underlying!4606 (cache!2500 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23213)) mapDefault!10687)))))

(declare-fun b!2103409 () Bool)

(declare-fun res!914882 () Bool)

(declare-fun e!1336078 () Bool)

(assert (=> b!2103409 (=> (not res!914882) (not e!1336078))))

(declare-fun valid!1752 (CacheDown!1418) Bool)

(assert (=> b!2103409 (= res!914882 (valid!1752 cacheDown!688))))

(declare-fun b!2103410 () Bool)

(declare-fun e!1336061 () Bool)

(assert (=> b!2103410 (= e!1336061 e!1336072)))

(declare-fun mapNonEmpty!10686 () Bool)

(declare-fun mapRes!10687 () Bool)

(declare-fun tp!636526 () Bool)

(declare-fun tp!636532 () Bool)

(assert (=> mapNonEmpty!10686 (= mapRes!10687 (and tp!636526 tp!636532))))

(declare-fun mapRest!10687 () (Array (_ BitVec 32) List!23214))

(declare-fun mapValue!10686 () List!23214)

(declare-fun mapKey!10686 () (_ BitVec 32))

(assert (=> mapNonEmpty!10686 (= (arr!3375 (_values!2486 (v!27719 (underlying!4607 (v!27720 (underlying!4608 (cache!2501 cacheUp!675))))))) (store mapRest!10687 mapKey!10686 mapValue!10686))))

(declare-fun b!2103405 () Bool)

(declare-fun e!1336060 () Bool)

(assert (=> b!2103405 (= e!1336060 e!1336068)))

(declare-fun res!914881 () Bool)

(declare-fun e!1336069 () Bool)

(assert (=> start!205688 (=> (not res!914881) (not e!1336069))))

(declare-datatypes ((LexerInterface!3720 0))(
  ( (LexerInterfaceExt!3717 (__x!14707 Int)) (Lexer!3718) )
))
(declare-fun thiss!15689 () LexerInterface!3720)

(get-info :version)

(assert (=> start!205688 (= res!914881 ((_ is Lexer!3718) thiss!15689))))

(assert (=> start!205688 e!1336069))

(declare-fun e!1336076 () Bool)

(assert (=> start!205688 e!1336076))

(declare-fun totalInput!482 () BalanceConc!15160)

(declare-fun e!1336066 () Bool)

(declare-fun inv!30662 (BalanceConc!15160) Bool)

(assert (=> start!205688 (and (inv!30662 totalInput!482) e!1336066)))

(assert (=> start!205688 true))

(assert (=> start!205688 (and (inv!30662 input!1444) e!1336071)))

(declare-fun inv!30663 (CacheUp!1414) Bool)

(assert (=> start!205688 (and (inv!30663 cacheUp!675) e!1336061)))

(declare-fun e!1336067 () Bool)

(declare-fun inv!30664 (CacheDown!1418) Bool)

(assert (=> start!205688 (and (inv!30664 cacheDown!688) e!1336067)))

(declare-fun e!1336058 () Bool)

(assert (=> b!2103411 (= e!1336058 (and tp!636542 tp!636540))))

(declare-fun b!2103412 () Bool)

(declare-fun e!1336056 () Bool)

(declare-fun tp!636533 () Bool)

(assert (=> b!2103412 (= e!1336076 (and e!1336056 tp!636533))))

(declare-fun b!2103413 () Bool)

(assert (=> b!2103413 (= e!1336078 (not true))))

(declare-fun lt!790955 () List!23215)

(declare-fun isPrefix!2056 (List!23215 List!23215) Bool)

(assert (=> b!2103413 (isPrefix!2056 lt!790955 lt!790955)))

(declare-datatypes ((Unit!37411 0))(
  ( (Unit!37412) )
))
(declare-fun lt!790953 () Unit!37411)

(declare-fun lemmaIsPrefixRefl!1374 (List!23215 List!23215) Unit!37411)

(assert (=> b!2103413 (= lt!790953 (lemmaIsPrefixRefl!1374 lt!790955 lt!790955))))

(declare-fun b!2103414 () Bool)

(declare-fun e!1336073 () Bool)

(declare-fun e!1336059 () Bool)

(assert (=> b!2103414 (= e!1336073 e!1336059)))

(declare-fun b!2103415 () Bool)

(declare-fun e!1336070 () Bool)

(assert (=> b!2103415 (= e!1336070 e!1336060)))

(declare-fun mapIsEmpty!10686 () Bool)

(assert (=> mapIsEmpty!10686 mapRes!10687))

(declare-fun b!2103416 () Bool)

(declare-fun e!1336077 () Bool)

(assert (=> b!2103416 (= e!1336067 e!1336077)))

(declare-fun b!2103417 () Bool)

(assert (=> b!2103417 (= e!1336059 e!1336055)))

(declare-fun b!2103418 () Bool)

(assert (=> b!2103418 (= e!1336069 e!1336078)))

(declare-fun res!914884 () Bool)

(assert (=> b!2103418 (=> (not res!914884) (not e!1336078))))

(declare-fun isSuffix!543 (List!23215 List!23215) Bool)

(declare-fun list!9423 (BalanceConc!15160) List!23215)

(assert (=> b!2103418 (= res!914884 (isSuffix!543 lt!790955 (list!9423 totalInput!482)))))

(assert (=> b!2103418 (= lt!790955 (list!9423 input!1444))))

(declare-fun mapNonEmpty!10687 () Bool)

(declare-fun tp!636527 () Bool)

(declare-fun tp!636525 () Bool)

(assert (=> mapNonEmpty!10687 (= mapRes!10686 (and tp!636527 tp!636525))))

(declare-fun mapRest!10686 () (Array (_ BitVec 32) List!23213))

(declare-fun mapKey!10687 () (_ BitVec 32))

(declare-fun mapValue!10687 () List!23213)

(assert (=> mapNonEmpty!10687 (= (arr!3374 (_values!2485 (v!27717 (underlying!4605 (v!27718 (underlying!4606 (cache!2500 cacheDown!688))))))) (store mapRest!10686 mapKey!10687 mapValue!10687))))

(declare-datatypes ((List!23216 0))(
  ( (Nil!23132) (Cons!23132 (h!28533 (_ BitVec 16)) (t!195709 List!23216)) )
))
(declare-datatypes ((TokenValue!4255 0))(
  ( (FloatLiteralValue!8510 (text!30230 List!23216)) (TokenValueExt!4254 (__x!14708 Int)) (Broken!21275 (value!129015 List!23216)) (Object!4338) (End!4255) (Def!4255) (Underscore!4255) (Match!4255) (Else!4255) (Error!4255) (Case!4255) (If!4255) (Extends!4255) (Abstract!4255) (Class!4255) (Val!4255) (DelimiterValue!8510 (del!4315 List!23216)) (KeywordValue!4261 (value!129016 List!23216)) (CommentValue!8510 (value!129017 List!23216)) (WhitespaceValue!8510 (value!129018 List!23216)) (IndentationValue!4255 (value!129019 List!23216)) (String!26466) (Int32!4255) (Broken!21276 (value!129020 List!23216)) (Boolean!4256) (Unit!37413) (OperatorValue!4258 (op!4315 List!23216)) (IdentifierValue!8510 (value!129021 List!23216)) (IdentifierValue!8511 (value!129022 List!23216)) (WhitespaceValue!8511 (value!129023 List!23216)) (True!8510) (False!8510) (Broken!21277 (value!129024 List!23216)) (Broken!21278 (value!129025 List!23216)) (True!8511) (RightBrace!4255) (RightBracket!4255) (Colon!4255) (Null!4255) (Comma!4255) (LeftBracket!4255) (False!8511) (LeftBrace!4255) (ImaginaryLiteralValue!4255 (text!30231 List!23216)) (StringLiteralValue!12765 (value!129026 List!23216)) (EOFValue!4255 (value!129027 List!23216)) (IdentValue!4255 (value!129028 List!23216)) (DelimiterValue!8511 (value!129029 List!23216)) (DedentValue!4255 (value!129030 List!23216)) (NewLineValue!4255 (value!129031 List!23216)) (IntegerValue!12765 (value!129032 (_ BitVec 32)) (text!30232 List!23216)) (IntegerValue!12766 (value!129033 Int) (text!30233 List!23216)) (Times!4255) (Or!4255) (Equal!4255) (Minus!4255) (Broken!21279 (value!129034 List!23216)) (And!4255) (Div!4255) (LessEqual!4255) (Mod!4255) (Concat!9803) (Not!4255) (Plus!4255) (SpaceValue!4255 (value!129035 List!23216)) (IntegerValue!12767 (value!129036 Int) (text!30234 List!23216)) (StringLiteralValue!12766 (text!30235 List!23216)) (FloatLiteralValue!8511 (text!30236 List!23216)) (BytesLiteralValue!4255 (value!129037 List!23216)) (CommentValue!8511 (value!129038 List!23216)) (StringLiteralValue!12767 (value!129039 List!23216)) (ErrorTokenValue!4255 (msg!4316 List!23216)) )
))
(declare-datatypes ((String!26467 0))(
  ( (String!26468 (value!129040 String)) )
))
(declare-datatypes ((TokenValueInjection!8094 0))(
  ( (TokenValueInjection!8095 (toValue!5830 Int) (toChars!5689 Int)) )
))
(declare-datatypes ((Rule!8038 0))(
  ( (Rule!8039 (regex!4119 Regex!5547) (tag!4609 String!26467) (isSeparator!4119 Bool) (transformation!4119 TokenValueInjection!8094)) )
))
(declare-datatypes ((List!23217 0))(
  ( (Nil!23133) (Cons!23133 (h!28534 Rule!8038) (t!195710 List!23217)) )
))
(declare-fun rulesArg!349 () List!23217)

(declare-fun tp!636543 () Bool)

(declare-fun b!2103419 () Bool)

(declare-fun inv!30656 (String!26467) Bool)

(declare-fun inv!30665 (TokenValueInjection!8094) Bool)

(assert (=> b!2103419 (= e!1336056 (and tp!636543 (inv!30656 (tag!4609 (h!28534 rulesArg!349))) (inv!30665 (transformation!4119 (h!28534 rulesArg!349))) e!1336058))))

(declare-fun b!2103420 () Bool)

(declare-fun res!914885 () Bool)

(assert (=> b!2103420 (=> (not res!914885) (not e!1336069))))

(declare-fun isEmpty!14254 (List!23217) Bool)

(assert (=> b!2103420 (= res!914885 (not (isEmpty!14254 rulesArg!349)))))

(declare-fun b!2103421 () Bool)

(declare-fun e!1336075 () Bool)

(declare-fun lt!790954 () MutLongMap!2205)

(assert (=> b!2103421 (= e!1336075 (and e!1336070 ((_ is LongMap!2205) lt!790954)))))

(assert (=> b!2103421 (= lt!790954 (v!27718 (underlying!4606 (cache!2500 cacheDown!688))))))

(declare-fun mapIsEmpty!10687 () Bool)

(assert (=> mapIsEmpty!10687 mapRes!10686))

(declare-fun b!2103422 () Bool)

(declare-fun lt!790952 () MutLongMap!2206)

(assert (=> b!2103422 (= e!1336057 (and e!1336073 ((_ is LongMap!2206) lt!790952)))))

(assert (=> b!2103422 (= lt!790952 (v!27720 (underlying!4608 (cache!2501 cacheUp!675))))))

(declare-fun b!2103423 () Bool)

(declare-fun tp!636529 () Bool)

(assert (=> b!2103423 (= e!1336066 (and (inv!30661 (c!338818 totalInput!482)) tp!636529))))

(assert (=> b!2103424 (= e!1336077 (and e!1336075 tp!636524))))

(declare-fun b!2103425 () Bool)

(declare-fun tp!636531 () Bool)

(assert (=> b!2103425 (= e!1336065 (and tp!636531 mapRes!10687))))

(declare-fun condMapEmpty!10687 () Bool)

(declare-fun mapDefault!10686 () List!23214)

(assert (=> b!2103425 (= condMapEmpty!10687 (= (arr!3375 (_values!2486 (v!27719 (underlying!4607 (v!27720 (underlying!4608 (cache!2501 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23214)) mapDefault!10686)))))

(declare-fun b!2103426 () Bool)

(declare-fun res!914886 () Bool)

(assert (=> b!2103426 (=> (not res!914886) (not e!1336069))))

(declare-fun rulesValidInductive!1439 (LexerInterface!3720 List!23217) Bool)

(assert (=> b!2103426 (= res!914886 (rulesValidInductive!1439 thiss!15689 rulesArg!349))))

(declare-fun b!2103427 () Bool)

(declare-fun res!914883 () Bool)

(assert (=> b!2103427 (=> (not res!914883) (not e!1336078))))

(declare-fun valid!1753 (CacheUp!1414) Bool)

(assert (=> b!2103427 (= res!914883 (valid!1753 cacheUp!675))))

(assert (= (and start!205688 res!914881) b!2103426))

(assert (= (and b!2103426 res!914886) b!2103420))

(assert (= (and b!2103420 res!914885) b!2103418))

(assert (= (and b!2103418 res!914884) b!2103427))

(assert (= (and b!2103427 res!914883) b!2103409))

(assert (= (and b!2103409 res!914882) b!2103413))

(assert (= b!2103419 b!2103411))

(assert (= b!2103412 b!2103419))

(assert (= (and start!205688 ((_ is Cons!23133) rulesArg!349)) b!2103412))

(assert (= start!205688 b!2103423))

(assert (= start!205688 b!2103407))

(assert (= (and b!2103425 condMapEmpty!10687) mapIsEmpty!10686))

(assert (= (and b!2103425 (not condMapEmpty!10687)) mapNonEmpty!10686))

(assert (= b!2103406 b!2103425))

(assert (= b!2103417 b!2103406))

(assert (= b!2103414 b!2103417))

(assert (= (and b!2103422 ((_ is LongMap!2206) (v!27720 (underlying!4608 (cache!2501 cacheUp!675))))) b!2103414))

(assert (= b!2103403 b!2103422))

(assert (= (and b!2103410 ((_ is HashMap!2120) (cache!2501 cacheUp!675))) b!2103403))

(assert (= start!205688 b!2103410))

(assert (= (and b!2103408 condMapEmpty!10686) mapIsEmpty!10687))

(assert (= (and b!2103408 (not condMapEmpty!10686)) mapNonEmpty!10687))

(assert (= b!2103404 b!2103408))

(assert (= b!2103405 b!2103404))

(assert (= b!2103415 b!2103405))

(assert (= (and b!2103421 ((_ is LongMap!2205) (v!27718 (underlying!4606 (cache!2500 cacheDown!688))))) b!2103415))

(assert (= b!2103424 b!2103421))

(assert (= (and b!2103416 ((_ is HashMap!2119) (cache!2500 cacheDown!688))) b!2103424))

(assert (= start!205688 b!2103416))

(declare-fun m!2562655 () Bool)

(assert (=> start!205688 m!2562655))

(declare-fun m!2562657 () Bool)

(assert (=> start!205688 m!2562657))

(declare-fun m!2562659 () Bool)

(assert (=> start!205688 m!2562659))

(declare-fun m!2562661 () Bool)

(assert (=> start!205688 m!2562661))

(declare-fun m!2562663 () Bool)

(assert (=> b!2103418 m!2562663))

(assert (=> b!2103418 m!2562663))

(declare-fun m!2562665 () Bool)

(assert (=> b!2103418 m!2562665))

(declare-fun m!2562667 () Bool)

(assert (=> b!2103418 m!2562667))

(declare-fun m!2562669 () Bool)

(assert (=> b!2103404 m!2562669))

(declare-fun m!2562671 () Bool)

(assert (=> b!2103404 m!2562671))

(declare-fun m!2562673 () Bool)

(assert (=> b!2103426 m!2562673))

(declare-fun m!2562675 () Bool)

(assert (=> b!2103423 m!2562675))

(declare-fun m!2562677 () Bool)

(assert (=> b!2103420 m!2562677))

(declare-fun m!2562679 () Bool)

(assert (=> b!2103427 m!2562679))

(declare-fun m!2562681 () Bool)

(assert (=> mapNonEmpty!10686 m!2562681))

(declare-fun m!2562683 () Bool)

(assert (=> b!2103406 m!2562683))

(declare-fun m!2562685 () Bool)

(assert (=> b!2103406 m!2562685))

(declare-fun m!2562687 () Bool)

(assert (=> b!2103413 m!2562687))

(declare-fun m!2562689 () Bool)

(assert (=> b!2103413 m!2562689))

(declare-fun m!2562691 () Bool)

(assert (=> b!2103407 m!2562691))

(declare-fun m!2562693 () Bool)

(assert (=> b!2103409 m!2562693))

(declare-fun m!2562695 () Bool)

(assert (=> mapNonEmpty!10687 m!2562695))

(declare-fun m!2562697 () Bool)

(assert (=> b!2103419 m!2562697))

(declare-fun m!2562699 () Bool)

(assert (=> b!2103419 m!2562699))

(check-sat b_and!169795 (not b_next!60937) b_and!169797 b_and!169799 (not b_next!60939) b_and!169803 (not b!2103409) (not b!2103412) (not b_next!60941) (not b!2103407) (not mapNonEmpty!10687) (not start!205688) (not b!2103423) (not mapNonEmpty!10686) (not b!2103418) b_and!169801 (not b_next!60945) (not b_next!60943) (not b!2103406) (not b_next!60947) (not b!2103420) (not b!2103404) (not b!2103425) (not b!2103408) (not b!2103413) (not b!2103426) (not b!2103427) b_and!169805 (not b!2103419))
(check-sat b_and!169795 (not b_next!60937) b_and!169797 b_and!169799 (not b_next!60939) b_and!169803 (not b_next!60947) (not b_next!60941) b_and!169805 b_and!169801 (not b_next!60945) (not b_next!60943))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205780 () Bool)

(assert start!205780)

(declare-fun b!2104535 () Bool)

(declare-fun b_free!60361 () Bool)

(declare-fun b_next!61065 () Bool)

(assert (=> b!2104535 (= b_free!60361 (not b_next!61065))))

(declare-fun tp!637430 () Bool)

(declare-fun b_and!169923 () Bool)

(assert (=> b!2104535 (= tp!637430 b_and!169923)))

(declare-fun b!2104524 () Bool)

(declare-fun b_free!60363 () Bool)

(declare-fun b_next!61067 () Bool)

(assert (=> b!2104524 (= b_free!60363 (not b_next!61067))))

(declare-fun tp!637433 () Bool)

(declare-fun b_and!169925 () Bool)

(assert (=> b!2104524 (= tp!637433 b_and!169925)))

(declare-fun b!2104520 () Bool)

(declare-fun b_free!60365 () Bool)

(declare-fun b_next!61069 () Bool)

(assert (=> b!2104520 (= b_free!60365 (not b_next!61069))))

(declare-fun tp!637437 () Bool)

(declare-fun b_and!169927 () Bool)

(assert (=> b!2104520 (= tp!637437 b_and!169927)))

(declare-fun b_free!60367 () Bool)

(declare-fun b_next!61071 () Bool)

(assert (=> b!2104520 (= b_free!60367 (not b_next!61071))))

(declare-fun tp!637436 () Bool)

(declare-fun b_and!169929 () Bool)

(assert (=> b!2104520 (= tp!637436 b_and!169929)))

(declare-fun b!2104528 () Bool)

(declare-fun b_free!60369 () Bool)

(declare-fun b_next!61073 () Bool)

(assert (=> b!2104528 (= b_free!60369 (not b_next!61073))))

(declare-fun tp!637447 () Bool)

(declare-fun b_and!169931 () Bool)

(assert (=> b!2104528 (= tp!637447 b_and!169931)))

(declare-fun b!2104538 () Bool)

(declare-fun b_free!60371 () Bool)

(declare-fun b_next!61075 () Bool)

(assert (=> b!2104538 (= b_free!60371 (not b_next!61075))))

(declare-fun tp!637442 () Bool)

(declare-fun b_and!169933 () Bool)

(assert (=> b!2104538 (= tp!637442 b_and!169933)))

(declare-fun e!1337089 () Bool)

(assert (=> b!2104520 (= e!1337089 (and tp!637437 tp!637436))))

(declare-fun b!2104521 () Bool)

(declare-fun e!1337078 () Bool)

(declare-fun tp!637446 () Bool)

(declare-fun mapRes!10758 () Bool)

(assert (=> b!2104521 (= e!1337078 (and tp!637446 mapRes!10758))))

(declare-fun condMapEmpty!10758 () Bool)

(declare-datatypes ((C!11260 0))(
  ( (C!11261 (val!6616 Int)) )
))
(declare-datatypes ((Regex!5557 0))(
  ( (ElementMatch!5557 (c!338845 C!11260)) (Concat!9822 (regOne!11626 Regex!5557) (regTwo!11626 Regex!5557)) (EmptyExpr!5557) (Star!5557 (reg!5886 Regex!5557)) (EmptyLang!5557) (Union!5557 (regOne!11627 Regex!5557) (regTwo!11627 Regex!5557)) )
))
(declare-datatypes ((List!23271 0))(
  ( (Nil!23187) (Cons!23187 (h!28588 Regex!5557) (t!195764 List!23271)) )
))
(declare-datatypes ((Context!2254 0))(
  ( (Context!2255 (exprs!1627 List!23271)) )
))
(declare-datatypes ((tuple2!22430 0))(
  ( (tuple2!22431 (_1!12946 Context!2254) (_2!12946 C!11260)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22432 0))(
  ( (tuple2!22433 (_1!12947 tuple2!22430) (_2!12947 (InoxSet Context!2254))) )
))
(declare-datatypes ((List!23272 0))(
  ( (Nil!23188) (Cons!23188 (h!28589 tuple2!22432) (t!195765 List!23272)) )
))
(declare-datatypes ((array!7673 0))(
  ( (array!7674 (arr!3402 (Array (_ BitVec 32) (_ BitVec 64))) (size!18100 (_ BitVec 32))) )
))
(declare-datatypes ((array!7675 0))(
  ( (array!7676 (arr!3403 (Array (_ BitVec 32) List!23272)) (size!18101 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4448 0))(
  ( (LongMapFixedSize!4449 (defaultEntry!2589 Int) (mask!6318 (_ BitVec 32)) (extraKeys!2472 (_ BitVec 32)) (zeroValue!2482 List!23272) (minValue!2482 List!23272) (_size!4499 (_ BitVec 32)) (_keys!2521 array!7673) (_values!2504 array!7675) (_vacant!2285 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2138 0))(
  ( (HashableExt!2137 (__x!14777 Int)) )
))
(declare-datatypes ((Cell!8721 0))(
  ( (Cell!8722 (v!27757 LongMapFixedSize!4448)) )
))
(declare-datatypes ((MutLongMap!2224 0))(
  ( (LongMap!2224 (underlying!4643 Cell!8721)) (MutLongMapExt!2223 (__x!14778 Int)) )
))
(declare-datatypes ((Cell!8723 0))(
  ( (Cell!8724 (v!27758 MutLongMap!2224)) )
))
(declare-datatypes ((MutableMap!2138 0))(
  ( (MutableMapExt!2137 (__x!14779 Int)) (HashMap!2138 (underlying!4644 Cell!8723) (hashF!4061 Hashable!2138) (_size!4500 (_ BitVec 32)) (defaultValue!2300 Int)) )
))
(declare-datatypes ((CacheUp!1432 0))(
  ( (CacheUp!1433 (cache!2519 MutableMap!2138)) )
))
(declare-fun cacheUp!675 () CacheUp!1432)

(declare-fun mapDefault!10759 () List!23272)

(assert (=> b!2104521 (= condMapEmpty!10758 (= (arr!3403 (_values!2504 (v!27757 (underlying!4643 (v!27758 (underlying!4644 (cache!2519 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23272)) mapDefault!10759)))))

(declare-fun b!2104522 () Bool)

(declare-fun e!1337075 () Bool)

(declare-fun e!1337079 () Bool)

(declare-fun tp!637445 () Bool)

(assert (=> b!2104522 (= e!1337075 (and e!1337079 tp!637445))))

(declare-fun b!2104523 () Bool)

(declare-fun e!1337085 () Bool)

(declare-fun e!1337086 () Bool)

(declare-fun lt!791113 () MutLongMap!2224)

(get-info :version)

(assert (=> b!2104523 (= e!1337085 (and e!1337086 ((_ is LongMap!2224) lt!791113)))))

(assert (=> b!2104523 (= lt!791113 (v!27758 (underlying!4644 (cache!2519 cacheUp!675))))))

(declare-fun e!1337087 () Bool)

(declare-fun tp!637431 () Bool)

(declare-datatypes ((tuple3!2534 0))(
  ( (tuple3!2535 (_1!12948 Regex!5557) (_2!12948 Context!2254) (_3!1731 C!11260)) )
))
(declare-datatypes ((tuple2!22434 0))(
  ( (tuple2!22435 (_1!12949 tuple3!2534) (_2!12949 (InoxSet Context!2254))) )
))
(declare-datatypes ((List!23273 0))(
  ( (Nil!23189) (Cons!23189 (h!28590 tuple2!22434) (t!195766 List!23273)) )
))
(declare-datatypes ((array!7677 0))(
  ( (array!7678 (arr!3404 (Array (_ BitVec 32) List!23273)) (size!18102 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4450 0))(
  ( (LongMapFixedSize!4451 (defaultEntry!2590 Int) (mask!6319 (_ BitVec 32)) (extraKeys!2473 (_ BitVec 32)) (zeroValue!2483 List!23273) (minValue!2483 List!23273) (_size!4501 (_ BitVec 32)) (_keys!2522 array!7673) (_values!2505 array!7677) (_vacant!2286 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8725 0))(
  ( (Cell!8726 (v!27759 LongMapFixedSize!4450)) )
))
(declare-datatypes ((MutLongMap!2225 0))(
  ( (LongMap!2225 (underlying!4645 Cell!8725)) (MutLongMapExt!2224 (__x!14780 Int)) )
))
(declare-datatypes ((Cell!8727 0))(
  ( (Cell!8728 (v!27760 MutLongMap!2225)) )
))
(declare-datatypes ((Hashable!2139 0))(
  ( (HashableExt!2138 (__x!14781 Int)) )
))
(declare-datatypes ((MutableMap!2139 0))(
  ( (MutableMapExt!2138 (__x!14782 Int)) (HashMap!2139 (underlying!4646 Cell!8727) (hashF!4062 Hashable!2139) (_size!4502 (_ BitVec 32)) (defaultValue!2301 Int)) )
))
(declare-datatypes ((CacheDown!1438 0))(
  ( (CacheDown!1439 (cache!2520 MutableMap!2139)) )
))
(declare-fun cacheDown!688 () CacheDown!1438)

(declare-fun e!1337083 () Bool)

(declare-fun tp!637443 () Bool)

(declare-fun array_inv!2447 (array!7673) Bool)

(declare-fun array_inv!2448 (array!7677) Bool)

(assert (=> b!2104524 (= e!1337087 (and tp!637433 tp!637443 tp!637431 (array_inv!2447 (_keys!2522 (v!27759 (underlying!4645 (v!27760 (underlying!4646 (cache!2520 cacheDown!688))))))) (array_inv!2448 (_values!2505 (v!27759 (underlying!4645 (v!27760 (underlying!4646 (cache!2520 cacheDown!688))))))) e!1337083))))

(declare-fun b!2104525 () Bool)

(declare-fun e!1337077 () Bool)

(declare-fun e!1337091 () Bool)

(assert (=> b!2104525 (= e!1337077 (not e!1337091))))

(declare-fun res!915181 () Bool)

(assert (=> b!2104525 (=> res!915181 e!1337091)))

(declare-datatypes ((List!23274 0))(
  ( (Nil!23190) (Cons!23190 (h!28591 (_ BitVec 16)) (t!195767 List!23274)) )
))
(declare-datatypes ((TokenValue!4265 0))(
  ( (FloatLiteralValue!8530 (text!30300 List!23274)) (TokenValueExt!4264 (__x!14783 Int)) (Broken!21325 (value!129292 List!23274)) (Object!4348) (End!4265) (Def!4265) (Underscore!4265) (Match!4265) (Else!4265) (Error!4265) (Case!4265) (If!4265) (Extends!4265) (Abstract!4265) (Class!4265) (Val!4265) (DelimiterValue!8530 (del!4325 List!23274)) (KeywordValue!4271 (value!129293 List!23274)) (CommentValue!8530 (value!129294 List!23274)) (WhitespaceValue!8530 (value!129295 List!23274)) (IndentationValue!4265 (value!129296 List!23274)) (String!26516) (Int32!4265) (Broken!21326 (value!129297 List!23274)) (Boolean!4266) (Unit!37437) (OperatorValue!4268 (op!4325 List!23274)) (IdentifierValue!8530 (value!129298 List!23274)) (IdentifierValue!8531 (value!129299 List!23274)) (WhitespaceValue!8531 (value!129300 List!23274)) (True!8530) (False!8530) (Broken!21327 (value!129301 List!23274)) (Broken!21328 (value!129302 List!23274)) (True!8531) (RightBrace!4265) (RightBracket!4265) (Colon!4265) (Null!4265) (Comma!4265) (LeftBracket!4265) (False!8531) (LeftBrace!4265) (ImaginaryLiteralValue!4265 (text!30301 List!23274)) (StringLiteralValue!12795 (value!129303 List!23274)) (EOFValue!4265 (value!129304 List!23274)) (IdentValue!4265 (value!129305 List!23274)) (DelimiterValue!8531 (value!129306 List!23274)) (DedentValue!4265 (value!129307 List!23274)) (NewLineValue!4265 (value!129308 List!23274)) (IntegerValue!12795 (value!129309 (_ BitVec 32)) (text!30302 List!23274)) (IntegerValue!12796 (value!129310 Int) (text!30303 List!23274)) (Times!4265) (Or!4265) (Equal!4265) (Minus!4265) (Broken!21329 (value!129311 List!23274)) (And!4265) (Div!4265) (LessEqual!4265) (Mod!4265) (Concat!9823) (Not!4265) (Plus!4265) (SpaceValue!4265 (value!129312 List!23274)) (IntegerValue!12797 (value!129313 Int) (text!30304 List!23274)) (StringLiteralValue!12796 (text!30305 List!23274)) (FloatLiteralValue!8531 (text!30306 List!23274)) (BytesLiteralValue!4265 (value!129314 List!23274)) (CommentValue!8531 (value!129315 List!23274)) (StringLiteralValue!12797 (value!129316 List!23274)) (ErrorTokenValue!4265 (msg!4326 List!23274)) )
))
(declare-datatypes ((List!23275 0))(
  ( (Nil!23191) (Cons!23191 (h!28592 C!11260) (t!195768 List!23275)) )
))
(declare-datatypes ((IArray!15423 0))(
  ( (IArray!15424 (innerList!7769 List!23275)) )
))
(declare-datatypes ((Conc!7709 0))(
  ( (Node!7709 (left!18120 Conc!7709) (right!18450 Conc!7709) (csize!15648 Int) (cheight!7920 Int)) (Leaf!11255 (xs!10651 IArray!15423) (csize!15649 Int)) (Empty!7709) )
))
(declare-datatypes ((BalanceConc!15180 0))(
  ( (BalanceConc!15181 (c!338846 Conc!7709)) )
))
(declare-datatypes ((String!26517 0))(
  ( (String!26518 (value!129317 String)) )
))
(declare-datatypes ((TokenValueInjection!8114 0))(
  ( (TokenValueInjection!8115 (toValue!5840 Int) (toChars!5699 Int)) )
))
(declare-datatypes ((Rule!8058 0))(
  ( (Rule!8059 (regex!4129 Regex!5557) (tag!4619 String!26517) (isSeparator!4129 Bool) (transformation!4129 TokenValueInjection!8114)) )
))
(declare-datatypes ((List!23276 0))(
  ( (Nil!23192) (Cons!23192 (h!28593 Rule!8058) (t!195769 List!23276)) )
))
(declare-fun rulesArg!349 () List!23276)

(assert (=> b!2104525 (= res!915181 (or (and ((_ is Cons!23192) rulesArg!349) ((_ is Nil!23192) (t!195769 rulesArg!349))) (not ((_ is Cons!23192) rulesArg!349))))))

(declare-fun lt!791115 () List!23275)

(declare-fun isPrefix!2064 (List!23275 List!23275) Bool)

(assert (=> b!2104525 (isPrefix!2064 lt!791115 lt!791115)))

(declare-datatypes ((Unit!37438 0))(
  ( (Unit!37439) )
))
(declare-fun lt!791114 () Unit!37438)

(declare-fun lemmaIsPrefixRefl!1382 (List!23275 List!23275) Unit!37438)

(assert (=> b!2104525 (= lt!791114 (lemmaIsPrefixRefl!1382 lt!791115 lt!791115))))

(declare-fun b!2104526 () Bool)

(declare-fun e!1337082 () Bool)

(declare-fun input!1444 () BalanceConc!15180)

(declare-fun tp!637435 () Bool)

(declare-fun inv!30713 (Conc!7709) Bool)

(assert (=> b!2104526 (= e!1337082 (and (inv!30713 (c!338846 input!1444)) tp!637435))))

(declare-fun mapNonEmpty!10758 () Bool)

(declare-fun mapRes!10759 () Bool)

(declare-fun tp!637448 () Bool)

(declare-fun tp!637434 () Bool)

(assert (=> mapNonEmpty!10758 (= mapRes!10759 (and tp!637448 tp!637434))))

(declare-fun mapKey!10759 () (_ BitVec 32))

(declare-fun mapRest!10759 () (Array (_ BitVec 32) List!23273))

(declare-fun mapValue!10758 () List!23273)

(assert (=> mapNonEmpty!10758 (= (arr!3404 (_values!2505 (v!27759 (underlying!4645 (v!27760 (underlying!4646 (cache!2520 cacheDown!688))))))) (store mapRest!10759 mapKey!10759 mapValue!10758))))

(declare-fun b!2104527 () Bool)

(declare-fun res!915180 () Bool)

(declare-fun e!1337073 () Bool)

(assert (=> b!2104527 (=> (not res!915180) (not e!1337073))))

(declare-fun isEmpty!14262 (List!23276) Bool)

(assert (=> b!2104527 (= res!915180 (not (isEmpty!14262 rulesArg!349)))))

(declare-fun mapIsEmpty!10758 () Bool)

(assert (=> mapIsEmpty!10758 mapRes!10759))

(declare-fun e!1337070 () Bool)

(assert (=> b!2104528 (= e!1337070 (and e!1337085 tp!637447))))

(declare-fun b!2104529 () Bool)

(declare-fun e!1337084 () Bool)

(assert (=> b!2104529 (= e!1337084 e!1337087)))

(declare-fun b!2104530 () Bool)

(declare-fun e!1337081 () Bool)

(declare-fun e!1337076 () Bool)

(assert (=> b!2104530 (= e!1337081 e!1337076)))

(declare-fun b!2104531 () Bool)

(declare-fun e!1337088 () Bool)

(assert (=> b!2104531 (= e!1337086 e!1337088)))

(declare-fun b!2104532 () Bool)

(declare-fun e!1337093 () Bool)

(assert (=> b!2104532 (= e!1337093 e!1337070)))

(declare-fun b!2104533 () Bool)

(declare-fun e!1337094 () Bool)

(assert (=> b!2104533 (= e!1337094 e!1337084)))

(declare-fun b!2104534 () Bool)

(declare-fun res!915179 () Bool)

(assert (=> b!2104534 (=> (not res!915179) (not e!1337077))))

(declare-fun valid!1765 (CacheDown!1438) Bool)

(assert (=> b!2104534 (= res!915179 (valid!1765 cacheDown!688))))

(declare-fun tp!637438 () Bool)

(declare-fun tp!637440 () Bool)

(declare-fun e!1337090 () Bool)

(declare-fun array_inv!2449 (array!7675) Bool)

(assert (=> b!2104535 (= e!1337090 (and tp!637430 tp!637438 tp!637440 (array_inv!2447 (_keys!2521 (v!27757 (underlying!4643 (v!27758 (underlying!4644 (cache!2519 cacheUp!675))))))) (array_inv!2449 (_values!2504 (v!27757 (underlying!4643 (v!27758 (underlying!4644 (cache!2519 cacheUp!675))))))) e!1337078))))

(declare-fun b!2104536 () Bool)

(assert (=> b!2104536 (= e!1337088 e!1337090)))

(declare-fun b!2104537 () Bool)

(assert (=> b!2104537 (= e!1337091 true)))

(declare-fun lt!791117 () Bool)

(declare-datatypes ((LexerInterface!3729 0))(
  ( (LexerInterfaceExt!3726 (__x!14784 Int)) (Lexer!3727) )
))
(declare-fun thiss!15689 () LexerInterface!3729)

(declare-fun ruleValid!1262 (LexerInterface!3729 Rule!8058) Bool)

(assert (=> b!2104537 (= lt!791117 (ruleValid!1262 thiss!15689 (h!28593 rulesArg!349)))))

(declare-fun e!1337074 () Bool)

(assert (=> b!2104538 (= e!1337076 (and e!1337074 tp!637442))))

(declare-fun mapIsEmpty!10759 () Bool)

(assert (=> mapIsEmpty!10759 mapRes!10758))

(declare-fun res!915182 () Bool)

(assert (=> start!205780 (=> (not res!915182) (not e!1337073))))

(assert (=> start!205780 (= res!915182 ((_ is Lexer!3727) thiss!15689))))

(assert (=> start!205780 e!1337073))

(assert (=> start!205780 e!1337075))

(declare-fun totalInput!482 () BalanceConc!15180)

(declare-fun e!1337080 () Bool)

(declare-fun inv!30714 (BalanceConc!15180) Bool)

(assert (=> start!205780 (and (inv!30714 totalInput!482) e!1337080)))

(assert (=> start!205780 true))

(assert (=> start!205780 (and (inv!30714 input!1444) e!1337082)))

(declare-fun inv!30715 (CacheUp!1432) Bool)

(assert (=> start!205780 (and (inv!30715 cacheUp!675) e!1337093)))

(declare-fun inv!30716 (CacheDown!1438) Bool)

(assert (=> start!205780 (and (inv!30716 cacheDown!688) e!1337081)))

(declare-fun b!2104539 () Bool)

(declare-fun tp!637449 () Bool)

(declare-fun inv!30711 (String!26517) Bool)

(declare-fun inv!30717 (TokenValueInjection!8114) Bool)

(assert (=> b!2104539 (= e!1337079 (and tp!637449 (inv!30711 (tag!4619 (h!28593 rulesArg!349))) (inv!30717 (transformation!4129 (h!28593 rulesArg!349))) e!1337089))))

(declare-fun b!2104540 () Bool)

(assert (=> b!2104540 (= e!1337073 e!1337077)))

(declare-fun res!915176 () Bool)

(assert (=> b!2104540 (=> (not res!915176) (not e!1337077))))

(declare-fun isSuffix!550 (List!23275 List!23275) Bool)

(declare-fun list!9432 (BalanceConc!15180) List!23275)

(assert (=> b!2104540 (= res!915176 (isSuffix!550 lt!791115 (list!9432 totalInput!482)))))

(assert (=> b!2104540 (= lt!791115 (list!9432 input!1444))))

(declare-fun b!2104541 () Bool)

(declare-fun tp!637441 () Bool)

(assert (=> b!2104541 (= e!1337083 (and tp!637441 mapRes!10759))))

(declare-fun condMapEmpty!10759 () Bool)

(declare-fun mapDefault!10758 () List!23273)

(assert (=> b!2104541 (= condMapEmpty!10759 (= (arr!3404 (_values!2505 (v!27759 (underlying!4645 (v!27760 (underlying!4646 (cache!2520 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23273)) mapDefault!10758)))))

(declare-fun b!2104542 () Bool)

(declare-fun lt!791116 () MutLongMap!2225)

(assert (=> b!2104542 (= e!1337074 (and e!1337094 ((_ is LongMap!2225) lt!791116)))))

(assert (=> b!2104542 (= lt!791116 (v!27760 (underlying!4646 (cache!2520 cacheDown!688))))))

(declare-fun b!2104543 () Bool)

(declare-fun res!915177 () Bool)

(assert (=> b!2104543 (=> (not res!915177) (not e!1337077))))

(declare-fun valid!1766 (CacheUp!1432) Bool)

(assert (=> b!2104543 (= res!915177 (valid!1766 cacheUp!675))))

(declare-fun b!2104544 () Bool)

(declare-fun tp!637439 () Bool)

(assert (=> b!2104544 (= e!1337080 (and (inv!30713 (c!338846 totalInput!482)) tp!637439))))

(declare-fun b!2104545 () Bool)

(declare-fun res!915178 () Bool)

(assert (=> b!2104545 (=> (not res!915178) (not e!1337073))))

(declare-fun rulesValidInductive!1447 (LexerInterface!3729 List!23276) Bool)

(assert (=> b!2104545 (= res!915178 (rulesValidInductive!1447 thiss!15689 rulesArg!349))))

(declare-fun mapNonEmpty!10759 () Bool)

(declare-fun tp!637444 () Bool)

(declare-fun tp!637432 () Bool)

(assert (=> mapNonEmpty!10759 (= mapRes!10758 (and tp!637444 tp!637432))))

(declare-fun mapValue!10759 () List!23272)

(declare-fun mapKey!10758 () (_ BitVec 32))

(declare-fun mapRest!10758 () (Array (_ BitVec 32) List!23272))

(assert (=> mapNonEmpty!10759 (= (arr!3403 (_values!2504 (v!27757 (underlying!4643 (v!27758 (underlying!4644 (cache!2519 cacheUp!675))))))) (store mapRest!10758 mapKey!10758 mapValue!10759))))

(assert (= (and start!205780 res!915182) b!2104545))

(assert (= (and b!2104545 res!915178) b!2104527))

(assert (= (and b!2104527 res!915180) b!2104540))

(assert (= (and b!2104540 res!915176) b!2104543))

(assert (= (and b!2104543 res!915177) b!2104534))

(assert (= (and b!2104534 res!915179) b!2104525))

(assert (= (and b!2104525 (not res!915181)) b!2104537))

(assert (= b!2104539 b!2104520))

(assert (= b!2104522 b!2104539))

(assert (= (and start!205780 ((_ is Cons!23192) rulesArg!349)) b!2104522))

(assert (= start!205780 b!2104544))

(assert (= start!205780 b!2104526))

(assert (= (and b!2104521 condMapEmpty!10758) mapIsEmpty!10759))

(assert (= (and b!2104521 (not condMapEmpty!10758)) mapNonEmpty!10759))

(assert (= b!2104535 b!2104521))

(assert (= b!2104536 b!2104535))

(assert (= b!2104531 b!2104536))

(assert (= (and b!2104523 ((_ is LongMap!2224) (v!27758 (underlying!4644 (cache!2519 cacheUp!675))))) b!2104531))

(assert (= b!2104528 b!2104523))

(assert (= (and b!2104532 ((_ is HashMap!2138) (cache!2519 cacheUp!675))) b!2104528))

(assert (= start!205780 b!2104532))

(assert (= (and b!2104541 condMapEmpty!10759) mapIsEmpty!10758))

(assert (= (and b!2104541 (not condMapEmpty!10759)) mapNonEmpty!10758))

(assert (= b!2104524 b!2104541))

(assert (= b!2104529 b!2104524))

(assert (= b!2104533 b!2104529))

(assert (= (and b!2104542 ((_ is LongMap!2225) (v!27760 (underlying!4646 (cache!2520 cacheDown!688))))) b!2104533))

(assert (= b!2104538 b!2104542))

(assert (= (and b!2104530 ((_ is HashMap!2139) (cache!2520 cacheDown!688))) b!2104538))

(assert (= start!205780 b!2104530))

(declare-fun m!2563361 () Bool)

(assert (=> b!2104535 m!2563361))

(declare-fun m!2563363 () Bool)

(assert (=> b!2104535 m!2563363))

(declare-fun m!2563365 () Bool)

(assert (=> b!2104537 m!2563365))

(declare-fun m!2563367 () Bool)

(assert (=> b!2104543 m!2563367))

(declare-fun m!2563369 () Bool)

(assert (=> b!2104545 m!2563369))

(declare-fun m!2563371 () Bool)

(assert (=> b!2104539 m!2563371))

(declare-fun m!2563373 () Bool)

(assert (=> b!2104539 m!2563373))

(declare-fun m!2563375 () Bool)

(assert (=> b!2104527 m!2563375))

(declare-fun m!2563377 () Bool)

(assert (=> start!205780 m!2563377))

(declare-fun m!2563379 () Bool)

(assert (=> start!205780 m!2563379))

(declare-fun m!2563381 () Bool)

(assert (=> start!205780 m!2563381))

(declare-fun m!2563383 () Bool)

(assert (=> start!205780 m!2563383))

(declare-fun m!2563385 () Bool)

(assert (=> b!2104544 m!2563385))

(declare-fun m!2563387 () Bool)

(assert (=> b!2104534 m!2563387))

(declare-fun m!2563389 () Bool)

(assert (=> mapNonEmpty!10758 m!2563389))

(declare-fun m!2563391 () Bool)

(assert (=> mapNonEmpty!10759 m!2563391))

(declare-fun m!2563393 () Bool)

(assert (=> b!2104525 m!2563393))

(declare-fun m!2563395 () Bool)

(assert (=> b!2104525 m!2563395))

(declare-fun m!2563397 () Bool)

(assert (=> b!2104526 m!2563397))

(declare-fun m!2563399 () Bool)

(assert (=> b!2104540 m!2563399))

(assert (=> b!2104540 m!2563399))

(declare-fun m!2563401 () Bool)

(assert (=> b!2104540 m!2563401))

(declare-fun m!2563403 () Bool)

(assert (=> b!2104540 m!2563403))

(declare-fun m!2563405 () Bool)

(assert (=> b!2104524 m!2563405))

(declare-fun m!2563407 () Bool)

(assert (=> b!2104524 m!2563407))

(check-sat (not b!2104524) (not b_next!61065) (not b!2104545) (not b!2104535) b_and!169927 (not b!2104534) (not b!2104521) (not b!2104537) (not b_next!61073) (not b!2104539) b_and!169931 (not b_next!61067) b_and!169933 b_and!169929 (not start!205780) (not b!2104526) (not b!2104540) (not b_next!61075) (not b!2104543) (not b_next!61071) (not mapNonEmpty!10759) (not b!2104527) (not b!2104525) (not b!2104522) (not b!2104541) b_and!169925 b_and!169923 (not mapNonEmpty!10758) (not b!2104544) (not b_next!61069))
(check-sat (not b_next!61065) (not b_next!61075) (not b_next!61071) b_and!169925 b_and!169927 b_and!169923 (not b_next!61073) (not b_next!61069) b_and!169931 (not b_next!61067) b_and!169933 b_and!169929)

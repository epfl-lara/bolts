; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205788 () Bool)

(assert start!205788)

(declare-fun b!2104845 () Bool)

(declare-fun b_free!60409 () Bool)

(declare-fun b_next!61113 () Bool)

(assert (=> b!2104845 (= b_free!60409 (not b_next!61113))))

(declare-fun tp!637680 () Bool)

(declare-fun b_and!169971 () Bool)

(assert (=> b!2104845 (= tp!637680 b_and!169971)))

(declare-fun b!2104834 () Bool)

(declare-fun b_free!60411 () Bool)

(declare-fun b_next!61115 () Bool)

(assert (=> b!2104834 (= b_free!60411 (not b_next!61115))))

(declare-fun tp!637684 () Bool)

(declare-fun b_and!169973 () Bool)

(assert (=> b!2104834 (= tp!637684 b_and!169973)))

(declare-fun b!2104850 () Bool)

(declare-fun b_free!60413 () Bool)

(declare-fun b_next!61117 () Bool)

(assert (=> b!2104850 (= b_free!60413 (not b_next!61117))))

(declare-fun tp!637673 () Bool)

(declare-fun b_and!169975 () Bool)

(assert (=> b!2104850 (= tp!637673 b_and!169975)))

(declare-fun b_free!60415 () Bool)

(declare-fun b_next!61119 () Bool)

(assert (=> b!2104850 (= b_free!60415 (not b_next!61119))))

(declare-fun tp!637674 () Bool)

(declare-fun b_and!169977 () Bool)

(assert (=> b!2104850 (= tp!637674 b_and!169977)))

(declare-fun b!2104856 () Bool)

(declare-fun b_free!60417 () Bool)

(declare-fun b_next!61121 () Bool)

(assert (=> b!2104856 (= b_free!60417 (not b_next!61121))))

(declare-fun tp!637689 () Bool)

(declare-fun b_and!169979 () Bool)

(assert (=> b!2104856 (= tp!637689 b_and!169979)))

(declare-fun b!2104840 () Bool)

(declare-fun b_free!60419 () Bool)

(declare-fun b_next!61123 () Bool)

(assert (=> b!2104840 (= b_free!60419 (not b_next!61123))))

(declare-fun tp!637688 () Bool)

(declare-fun b_and!169981 () Bool)

(assert (=> b!2104840 (= tp!637688 b_and!169981)))

(declare-fun b!2104832 () Bool)

(declare-fun res!915264 () Bool)

(declare-fun e!1337381 () Bool)

(assert (=> b!2104832 (=> (not res!915264) (not e!1337381))))

(declare-datatypes ((C!11268 0))(
  ( (C!11269 (val!6620 Int)) )
))
(declare-datatypes ((Regex!5561 0))(
  ( (ElementMatch!5561 (c!338852 C!11268)) (Concat!9829 (regOne!11634 Regex!5561) (regTwo!11634 Regex!5561)) (EmptyExpr!5561) (Star!5561 (reg!5890 Regex!5561)) (EmptyLang!5561) (Union!5561 (regOne!11635 Regex!5561) (regTwo!11635 Regex!5561)) )
))
(declare-datatypes ((List!23291 0))(
  ( (Nil!23207) (Cons!23207 (h!28608 Regex!5561) (t!195784 List!23291)) )
))
(declare-datatypes ((Context!2262 0))(
  ( (Context!2263 (exprs!1631 List!23291)) )
))
(declare-datatypes ((tuple3!2546 0))(
  ( (tuple3!2547 (_1!12964 Regex!5561) (_2!12964 Context!2262) (_3!1737 C!11268)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22454 0))(
  ( (tuple2!22455 (_1!12965 tuple3!2546) (_2!12965 (InoxSet Context!2262))) )
))
(declare-datatypes ((List!23292 0))(
  ( (Nil!23208) (Cons!23208 (h!28609 tuple2!22454) (t!195785 List!23292)) )
))
(declare-datatypes ((array!7695 0))(
  ( (array!7696 (arr!3413 (Array (_ BitVec 32) (_ BitVec 64))) (size!18113 (_ BitVec 32))) )
))
(declare-datatypes ((array!7697 0))(
  ( (array!7698 (arr!3414 (Array (_ BitVec 32) List!23292)) (size!18114 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4462 0))(
  ( (LongMapFixedSize!4463 (defaultEntry!2596 Int) (mask!6327 (_ BitVec 32)) (extraKeys!2479 (_ BitVec 32)) (zeroValue!2489 List!23292) (minValue!2489 List!23292) (_size!4513 (_ BitVec 32)) (_keys!2528 array!7695) (_values!2511 array!7697) (_vacant!2292 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8749 0))(
  ( (Cell!8750 (v!27773 LongMapFixedSize!4462)) )
))
(declare-datatypes ((MutLongMap!2231 0))(
  ( (LongMap!2231 (underlying!4657 Cell!8749)) (MutLongMapExt!2230 (__x!14804 Int)) )
))
(declare-datatypes ((Cell!8751 0))(
  ( (Cell!8752 (v!27774 MutLongMap!2231)) )
))
(declare-datatypes ((Hashable!2145 0))(
  ( (HashableExt!2144 (__x!14805 Int)) )
))
(declare-datatypes ((MutableMap!2145 0))(
  ( (MutableMapExt!2144 (__x!14806 Int)) (HashMap!2145 (underlying!4658 Cell!8751) (hashF!4068 Hashable!2145) (_size!4514 (_ BitVec 32)) (defaultValue!2307 Int)) )
))
(declare-datatypes ((CacheDown!1446 0))(
  ( (CacheDown!1447 (cache!2526 MutableMap!2145)) )
))
(declare-fun cacheDown!688 () CacheDown!1446)

(declare-fun valid!1770 (CacheDown!1446) Bool)

(assert (=> b!2104832 (= res!915264 (valid!1770 cacheDown!688))))

(declare-fun b!2104833 () Bool)

(declare-fun e!1337379 () Bool)

(declare-datatypes ((List!23293 0))(
  ( (Nil!23209) (Cons!23209 (h!28610 C!11268) (t!195786 List!23293)) )
))
(declare-datatypes ((IArray!15429 0))(
  ( (IArray!15430 (innerList!7772 List!23293)) )
))
(declare-datatypes ((Conc!7712 0))(
  ( (Node!7712 (left!18125 Conc!7712) (right!18455 Conc!7712) (csize!15654 Int) (cheight!7923 Int)) (Leaf!11260 (xs!10654 IArray!15429) (csize!15655 Int)) (Empty!7712) )
))
(declare-datatypes ((BalanceConc!15186 0))(
  ( (BalanceConc!15187 (c!338853 Conc!7712)) )
))
(declare-fun input!1444 () BalanceConc!15186)

(declare-fun tp!637676 () Bool)

(declare-fun inv!30730 (Conc!7712) Bool)

(assert (=> b!2104833 (= e!1337379 (and (inv!30730 (c!338853 input!1444)) tp!637676))))

(declare-fun e!1337378 () Bool)

(declare-fun e!1337373 () Bool)

(assert (=> b!2104834 (= e!1337378 (and e!1337373 tp!637684))))

(declare-fun res!915266 () Bool)

(declare-fun e!1337386 () Bool)

(assert (=> start!205788 (=> (not res!915266) (not e!1337386))))

(declare-datatypes ((LexerInterface!3732 0))(
  ( (LexerInterfaceExt!3729 (__x!14807 Int)) (Lexer!3730) )
))
(declare-fun thiss!15689 () LexerInterface!3732)

(get-info :version)

(assert (=> start!205788 (= res!915266 ((_ is Lexer!3730) thiss!15689))))

(assert (=> start!205788 e!1337386))

(declare-fun e!1337394 () Bool)

(assert (=> start!205788 e!1337394))

(declare-fun totalInput!482 () BalanceConc!15186)

(declare-fun e!1337377 () Bool)

(declare-fun inv!30731 (BalanceConc!15186) Bool)

(assert (=> start!205788 (and (inv!30731 totalInput!482) e!1337377)))

(assert (=> start!205788 true))

(assert (=> start!205788 (and (inv!30731 input!1444) e!1337379)))

(declare-datatypes ((tuple2!22456 0))(
  ( (tuple2!22457 (_1!12966 Context!2262) (_2!12966 C!11268)) )
))
(declare-datatypes ((tuple2!22458 0))(
  ( (tuple2!22459 (_1!12967 tuple2!22456) (_2!12967 (InoxSet Context!2262))) )
))
(declare-datatypes ((List!23294 0))(
  ( (Nil!23210) (Cons!23210 (h!28611 tuple2!22458) (t!195787 List!23294)) )
))
(declare-datatypes ((array!7699 0))(
  ( (array!7700 (arr!3415 (Array (_ BitVec 32) List!23294)) (size!18115 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4464 0))(
  ( (LongMapFixedSize!4465 (defaultEntry!2597 Int) (mask!6328 (_ BitVec 32)) (extraKeys!2480 (_ BitVec 32)) (zeroValue!2490 List!23294) (minValue!2490 List!23294) (_size!4515 (_ BitVec 32)) (_keys!2529 array!7695) (_values!2512 array!7699) (_vacant!2293 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2146 0))(
  ( (HashableExt!2145 (__x!14808 Int)) )
))
(declare-datatypes ((Cell!8753 0))(
  ( (Cell!8754 (v!27775 LongMapFixedSize!4464)) )
))
(declare-datatypes ((MutLongMap!2232 0))(
  ( (LongMap!2232 (underlying!4659 Cell!8753)) (MutLongMapExt!2231 (__x!14809 Int)) )
))
(declare-datatypes ((Cell!8755 0))(
  ( (Cell!8756 (v!27776 MutLongMap!2232)) )
))
(declare-datatypes ((MutableMap!2146 0))(
  ( (MutableMapExt!2145 (__x!14810 Int)) (HashMap!2146 (underlying!4660 Cell!8755) (hashF!4069 Hashable!2146) (_size!4516 (_ BitVec 32)) (defaultValue!2308 Int)) )
))
(declare-datatypes ((CacheUp!1438 0))(
  ( (CacheUp!1439 (cache!2527 MutableMap!2146)) )
))
(declare-fun cacheUp!675 () CacheUp!1438)

(declare-fun e!1337393 () Bool)

(declare-fun inv!30732 (CacheUp!1438) Bool)

(assert (=> start!205788 (and (inv!30732 cacheUp!675) e!1337393)))

(declare-fun e!1337391 () Bool)

(declare-fun inv!30733 (CacheDown!1446) Bool)

(assert (=> start!205788 (and (inv!30733 cacheDown!688) e!1337391)))

(declare-fun b!2104835 () Bool)

(declare-fun e!1337387 () Bool)

(declare-fun e!1337389 () Bool)

(assert (=> b!2104835 (= e!1337387 e!1337389)))

(declare-fun b!2104836 () Bool)

(declare-fun e!1337376 () Bool)

(declare-fun lt!791177 () MutLongMap!2232)

(assert (=> b!2104836 (= e!1337373 (and e!1337376 ((_ is LongMap!2232) lt!791177)))))

(assert (=> b!2104836 (= lt!791177 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))

(declare-fun b!2104837 () Bool)

(assert (=> b!2104837 (= e!1337386 e!1337381)))

(declare-fun res!915262 () Bool)

(assert (=> b!2104837 (=> (not res!915262) (not e!1337381))))

(declare-fun lt!791174 () List!23293)

(declare-fun isSuffix!552 (List!23293 List!23293) Bool)

(declare-fun list!9434 (BalanceConc!15186) List!23293)

(assert (=> b!2104837 (= res!915262 (isSuffix!552 lt!791174 (list!9434 totalInput!482)))))

(assert (=> b!2104837 (= lt!791174 (list!9434 input!1444))))

(declare-fun mapIsEmpty!10782 () Bool)

(declare-fun mapRes!10782 () Bool)

(assert (=> mapIsEmpty!10782 mapRes!10782))

(declare-fun b!2104838 () Bool)

(declare-fun res!915261 () Bool)

(assert (=> b!2104838 (=> (not res!915261) (not e!1337386))))

(declare-datatypes ((List!23295 0))(
  ( (Nil!23211) (Cons!23211 (h!28612 (_ BitVec 16)) (t!195788 List!23295)) )
))
(declare-datatypes ((TokenValue!4268 0))(
  ( (FloatLiteralValue!8536 (text!30321 List!23295)) (TokenValueExt!4267 (__x!14811 Int)) (Broken!21340 (value!129378 List!23295)) (Object!4351) (End!4268) (Def!4268) (Underscore!4268) (Match!4268) (Else!4268) (Error!4268) (Case!4268) (If!4268) (Extends!4268) (Abstract!4268) (Class!4268) (Val!4268) (DelimiterValue!8536 (del!4328 List!23295)) (KeywordValue!4274 (value!129379 List!23295)) (CommentValue!8536 (value!129380 List!23295)) (WhitespaceValue!8536 (value!129381 List!23295)) (IndentationValue!4268 (value!129382 List!23295)) (String!26533) (Int32!4268) (Broken!21341 (value!129383 List!23295)) (Boolean!4269) (Unit!37446) (OperatorValue!4271 (op!4328 List!23295)) (IdentifierValue!8536 (value!129384 List!23295)) (IdentifierValue!8537 (value!129385 List!23295)) (WhitespaceValue!8537 (value!129386 List!23295)) (True!8536) (False!8536) (Broken!21342 (value!129387 List!23295)) (Broken!21343 (value!129388 List!23295)) (True!8537) (RightBrace!4268) (RightBracket!4268) (Colon!4268) (Null!4268) (Comma!4268) (LeftBracket!4268) (False!8537) (LeftBrace!4268) (ImaginaryLiteralValue!4268 (text!30322 List!23295)) (StringLiteralValue!12804 (value!129389 List!23295)) (EOFValue!4268 (value!129390 List!23295)) (IdentValue!4268 (value!129391 List!23295)) (DelimiterValue!8537 (value!129392 List!23295)) (DedentValue!4268 (value!129393 List!23295)) (NewLineValue!4268 (value!129394 List!23295)) (IntegerValue!12804 (value!129395 (_ BitVec 32)) (text!30323 List!23295)) (IntegerValue!12805 (value!129396 Int) (text!30324 List!23295)) (Times!4268) (Or!4268) (Equal!4268) (Minus!4268) (Broken!21344 (value!129397 List!23295)) (And!4268) (Div!4268) (LessEqual!4268) (Mod!4268) (Concat!9830) (Not!4268) (Plus!4268) (SpaceValue!4268 (value!129398 List!23295)) (IntegerValue!12806 (value!129399 Int) (text!30325 List!23295)) (StringLiteralValue!12805 (text!30326 List!23295)) (FloatLiteralValue!8537 (text!30327 List!23295)) (BytesLiteralValue!4268 (value!129400 List!23295)) (CommentValue!8537 (value!129401 List!23295)) (StringLiteralValue!12806 (value!129402 List!23295)) (ErrorTokenValue!4268 (msg!4329 List!23295)) )
))
(declare-datatypes ((String!26534 0))(
  ( (String!26535 (value!129403 String)) )
))
(declare-datatypes ((TokenValueInjection!8120 0))(
  ( (TokenValueInjection!8121 (toValue!5843 Int) (toChars!5702 Int)) )
))
(declare-datatypes ((Rule!8064 0))(
  ( (Rule!8065 (regex!4132 Regex!5561) (tag!4622 String!26534) (isSeparator!4132 Bool) (transformation!4132 TokenValueInjection!8120)) )
))
(declare-datatypes ((List!23296 0))(
  ( (Nil!23212) (Cons!23212 (h!28613 Rule!8064) (t!195789 List!23296)) )
))
(declare-fun rulesArg!349 () List!23296)

(declare-fun isEmpty!14265 (List!23296) Bool)

(assert (=> b!2104838 (= res!915261 (not (isEmpty!14265 rulesArg!349)))))

(declare-fun b!2104839 () Bool)

(declare-fun e!1337383 () Bool)

(assert (=> b!2104839 (= e!1337391 e!1337383)))

(declare-fun mapNonEmpty!10782 () Bool)

(declare-fun tp!637678 () Bool)

(declare-fun tp!637683 () Bool)

(assert (=> mapNonEmpty!10782 (= mapRes!10782 (and tp!637678 tp!637683))))

(declare-fun mapKey!10783 () (_ BitVec 32))

(declare-fun mapValue!10783 () List!23294)

(declare-fun mapRest!10783 () (Array (_ BitVec 32) List!23294))

(assert (=> mapNonEmpty!10782 (= (arr!3415 (_values!2512 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) (store mapRest!10783 mapKey!10783 mapValue!10783))))

(declare-fun e!1337371 () Bool)

(declare-fun tp!637677 () Bool)

(declare-fun e!1337385 () Bool)

(declare-fun tp!637686 () Bool)

(declare-fun array_inv!2453 (array!7695) Bool)

(declare-fun array_inv!2454 (array!7699) Bool)

(assert (=> b!2104840 (= e!1337371 (and tp!637688 tp!637677 tp!637686 (array_inv!2453 (_keys!2529 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) (array_inv!2454 (_values!2512 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) e!1337385))))

(declare-fun b!2104841 () Bool)

(declare-fun e!1337372 () Bool)

(declare-fun rulesValidInductive!1449 (LexerInterface!3732 List!23296) Bool)

(assert (=> b!2104841 (= e!1337372 (rulesValidInductive!1449 thiss!15689 (t!195789 rulesArg!349)))))

(declare-datatypes ((Token!7788 0))(
  ( (Token!7789 (value!129404 TokenValue!4268) (rule!6446 Rule!8064) (size!18116 Int) (originalCharacters!4925 List!23293)) )
))
(declare-datatypes ((tuple2!22460 0))(
  ( (tuple2!22461 (_1!12968 Token!7788) (_2!12968 BalanceConc!15186)) )
))
(declare-datatypes ((Option!4847 0))(
  ( (None!4846) (Some!4846 (v!27777 tuple2!22460)) )
))
(declare-datatypes ((tuple3!2548 0))(
  ( (tuple3!2549 (_1!12969 Option!4847) (_2!12969 CacheUp!1438) (_3!1738 CacheDown!1446)) )
))
(declare-fun lt!791175 () tuple3!2548)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!64 (LexerInterface!3732 Rule!8064 BalanceConc!15186 BalanceConc!15186 CacheUp!1438 CacheDown!1446) tuple3!2548)

(assert (=> b!2104841 (= lt!791175 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!64 thiss!15689 (h!28613 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun b!2104842 () Bool)

(declare-fun e!1337380 () Bool)

(assert (=> b!2104842 (= e!1337380 e!1337371)))

(declare-fun tp!637681 () Bool)

(declare-fun b!2104843 () Bool)

(declare-fun e!1337384 () Bool)

(declare-fun e!1337370 () Bool)

(declare-fun inv!30729 (String!26534) Bool)

(declare-fun inv!30734 (TokenValueInjection!8120) Bool)

(assert (=> b!2104843 (= e!1337384 (and tp!637681 (inv!30729 (tag!4622 (h!28613 rulesArg!349))) (inv!30734 (transformation!4132 (h!28613 rulesArg!349))) e!1337370))))

(declare-fun b!2104844 () Bool)

(declare-fun e!1337382 () Bool)

(declare-fun lt!791173 () MutLongMap!2231)

(assert (=> b!2104844 (= e!1337382 (and e!1337387 ((_ is LongMap!2231) lt!791173)))))

(assert (=> b!2104844 (= lt!791173 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))

(declare-fun tp!637670 () Bool)

(declare-fun e!1337374 () Bool)

(declare-fun tp!637682 () Bool)

(declare-fun e!1337388 () Bool)

(declare-fun array_inv!2455 (array!7697) Bool)

(assert (=> b!2104845 (= e!1337374 (and tp!637680 tp!637682 tp!637670 (array_inv!2453 (_keys!2528 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) (array_inv!2455 (_values!2511 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) e!1337388))))

(declare-fun b!2104846 () Bool)

(assert (=> b!2104846 (= e!1337376 e!1337380)))

(declare-fun b!2104847 () Bool)

(declare-fun res!915260 () Bool)

(assert (=> b!2104847 (=> (not res!915260) (not e!1337386))))

(assert (=> b!2104847 (= res!915260 (rulesValidInductive!1449 thiss!15689 rulesArg!349))))

(declare-fun b!2104848 () Bool)

(declare-fun tp!637675 () Bool)

(assert (=> b!2104848 (= e!1337377 (and (inv!30730 (c!338853 totalInput!482)) tp!637675))))

(declare-fun b!2104849 () Bool)

(assert (=> b!2104849 (= e!1337389 e!1337374)))

(assert (=> b!2104850 (= e!1337370 (and tp!637673 tp!637674))))

(declare-fun b!2104851 () Bool)

(assert (=> b!2104851 (= e!1337381 (not e!1337372))))

(declare-fun res!915265 () Bool)

(assert (=> b!2104851 (=> res!915265 e!1337372)))

(assert (=> b!2104851 (= res!915265 (or (and ((_ is Cons!23212) rulesArg!349) ((_ is Nil!23212) (t!195789 rulesArg!349))) (not ((_ is Cons!23212) rulesArg!349))))))

(declare-fun isPrefix!2067 (List!23293 List!23293) Bool)

(assert (=> b!2104851 (isPrefix!2067 lt!791174 lt!791174)))

(declare-datatypes ((Unit!37447 0))(
  ( (Unit!37448) )
))
(declare-fun lt!791176 () Unit!37447)

(declare-fun lemmaIsPrefixRefl!1385 (List!23293 List!23293) Unit!37447)

(assert (=> b!2104851 (= lt!791176 (lemmaIsPrefixRefl!1385 lt!791174 lt!791174))))

(declare-fun b!2104852 () Bool)

(declare-fun tp!637685 () Bool)

(declare-fun mapRes!10783 () Bool)

(assert (=> b!2104852 (= e!1337388 (and tp!637685 mapRes!10783))))

(declare-fun condMapEmpty!10782 () Bool)

(declare-fun mapDefault!10782 () List!23292)

(assert (=> b!2104852 (= condMapEmpty!10782 (= (arr!3414 (_values!2511 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23292)) mapDefault!10782)))))

(declare-fun mapNonEmpty!10783 () Bool)

(declare-fun tp!637671 () Bool)

(declare-fun tp!637672 () Bool)

(assert (=> mapNonEmpty!10783 (= mapRes!10783 (and tp!637671 tp!637672))))

(declare-fun mapKey!10782 () (_ BitVec 32))

(declare-fun mapRest!10782 () (Array (_ BitVec 32) List!23292))

(declare-fun mapValue!10782 () List!23292)

(assert (=> mapNonEmpty!10783 (= (arr!3414 (_values!2511 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) (store mapRest!10782 mapKey!10782 mapValue!10782))))

(declare-fun b!2104853 () Bool)

(assert (=> b!2104853 (= e!1337393 e!1337378)))

(declare-fun b!2104854 () Bool)

(declare-fun res!915263 () Bool)

(assert (=> b!2104854 (=> (not res!915263) (not e!1337381))))

(declare-fun valid!1771 (CacheUp!1438) Bool)

(assert (=> b!2104854 (= res!915263 (valid!1771 cacheUp!675))))

(declare-fun b!2104855 () Bool)

(declare-fun tp!637679 () Bool)

(assert (=> b!2104855 (= e!1337385 (and tp!637679 mapRes!10782))))

(declare-fun condMapEmpty!10783 () Bool)

(declare-fun mapDefault!10783 () List!23294)

(assert (=> b!2104855 (= condMapEmpty!10783 (= (arr!3415 (_values!2512 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23294)) mapDefault!10783)))))

(assert (=> b!2104856 (= e!1337383 (and e!1337382 tp!637689))))

(declare-fun mapIsEmpty!10783 () Bool)

(assert (=> mapIsEmpty!10783 mapRes!10783))

(declare-fun b!2104857 () Bool)

(declare-fun tp!637687 () Bool)

(assert (=> b!2104857 (= e!1337394 (and e!1337384 tp!637687))))

(assert (= (and start!205788 res!915266) b!2104847))

(assert (= (and b!2104847 res!915260) b!2104838))

(assert (= (and b!2104838 res!915261) b!2104837))

(assert (= (and b!2104837 res!915262) b!2104854))

(assert (= (and b!2104854 res!915263) b!2104832))

(assert (= (and b!2104832 res!915264) b!2104851))

(assert (= (and b!2104851 (not res!915265)) b!2104841))

(assert (= b!2104843 b!2104850))

(assert (= b!2104857 b!2104843))

(assert (= (and start!205788 ((_ is Cons!23212) rulesArg!349)) b!2104857))

(assert (= start!205788 b!2104848))

(assert (= start!205788 b!2104833))

(assert (= (and b!2104855 condMapEmpty!10783) mapIsEmpty!10782))

(assert (= (and b!2104855 (not condMapEmpty!10783)) mapNonEmpty!10782))

(assert (= b!2104840 b!2104855))

(assert (= b!2104842 b!2104840))

(assert (= b!2104846 b!2104842))

(assert (= (and b!2104836 ((_ is LongMap!2232) (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))) b!2104846))

(assert (= b!2104834 b!2104836))

(assert (= (and b!2104853 ((_ is HashMap!2146) (cache!2527 cacheUp!675))) b!2104834))

(assert (= start!205788 b!2104853))

(assert (= (and b!2104852 condMapEmpty!10782) mapIsEmpty!10783))

(assert (= (and b!2104852 (not condMapEmpty!10782)) mapNonEmpty!10783))

(assert (= b!2104845 b!2104852))

(assert (= b!2104849 b!2104845))

(assert (= b!2104835 b!2104849))

(assert (= (and b!2104844 ((_ is LongMap!2231) (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))) b!2104835))

(assert (= b!2104856 b!2104844))

(assert (= (and b!2104839 ((_ is HashMap!2145) (cache!2526 cacheDown!688))) b!2104856))

(assert (= start!205788 b!2104839))

(declare-fun m!2563555 () Bool)

(assert (=> mapNonEmpty!10783 m!2563555))

(declare-fun m!2563557 () Bool)

(assert (=> b!2104854 m!2563557))

(declare-fun m!2563559 () Bool)

(assert (=> b!2104838 m!2563559))

(declare-fun m!2563561 () Bool)

(assert (=> b!2104845 m!2563561))

(declare-fun m!2563563 () Bool)

(assert (=> b!2104845 m!2563563))

(declare-fun m!2563565 () Bool)

(assert (=> b!2104847 m!2563565))

(declare-fun m!2563567 () Bool)

(assert (=> b!2104837 m!2563567))

(assert (=> b!2104837 m!2563567))

(declare-fun m!2563569 () Bool)

(assert (=> b!2104837 m!2563569))

(declare-fun m!2563571 () Bool)

(assert (=> b!2104837 m!2563571))

(declare-fun m!2563573 () Bool)

(assert (=> b!2104851 m!2563573))

(declare-fun m!2563575 () Bool)

(assert (=> b!2104851 m!2563575))

(declare-fun m!2563577 () Bool)

(assert (=> b!2104833 m!2563577))

(declare-fun m!2563579 () Bool)

(assert (=> start!205788 m!2563579))

(declare-fun m!2563581 () Bool)

(assert (=> start!205788 m!2563581))

(declare-fun m!2563583 () Bool)

(assert (=> start!205788 m!2563583))

(declare-fun m!2563585 () Bool)

(assert (=> start!205788 m!2563585))

(declare-fun m!2563587 () Bool)

(assert (=> b!2104840 m!2563587))

(declare-fun m!2563589 () Bool)

(assert (=> b!2104840 m!2563589))

(declare-fun m!2563591 () Bool)

(assert (=> b!2104841 m!2563591))

(declare-fun m!2563593 () Bool)

(assert (=> b!2104841 m!2563593))

(declare-fun m!2563595 () Bool)

(assert (=> b!2104832 m!2563595))

(declare-fun m!2563597 () Bool)

(assert (=> b!2104848 m!2563597))

(declare-fun m!2563599 () Bool)

(assert (=> mapNonEmpty!10782 m!2563599))

(declare-fun m!2563601 () Bool)

(assert (=> b!2104843 m!2563601))

(declare-fun m!2563603 () Bool)

(assert (=> b!2104843 m!2563603))

(check-sat b_and!169973 (not b!2104843) (not b!2104857) (not b!2104837) (not start!205788) (not b!2104848) (not b!2104851) (not b!2104852) (not b!2104833) (not mapNonEmpty!10782) (not b_next!61121) b_and!169971 b_and!169979 (not b!2104847) (not b!2104854) (not mapNonEmpty!10783) (not b_next!61113) (not b!2104841) b_and!169975 (not b!2104845) (not b!2104832) (not b!2104838) (not b!2104855) b_and!169981 (not b_next!61115) (not b_next!61119) (not b_next!61117) (not b_next!61123) b_and!169977 (not b!2104840))
(check-sat b_and!169973 b_and!169979 (not b_next!61113) b_and!169975 (not b_next!61121) b_and!169971 b_and!169981 (not b_next!61115) (not b_next!61119) (not b_next!61117) (not b_next!61123) b_and!169977)
(get-model)

(declare-fun d!641594 () Bool)

(assert (=> d!641594 (= (isEmpty!14265 rulesArg!349) ((_ is Nil!23212) rulesArg!349))))

(assert (=> b!2104838 d!641594))

(declare-fun d!641596 () Bool)

(declare-fun c!338856 () Bool)

(assert (=> d!641596 (= c!338856 ((_ is Node!7712) (c!338853 totalInput!482)))))

(declare-fun e!1337399 () Bool)

(assert (=> d!641596 (= (inv!30730 (c!338853 totalInput!482)) e!1337399)))

(declare-fun b!2104864 () Bool)

(declare-fun inv!30735 (Conc!7712) Bool)

(assert (=> b!2104864 (= e!1337399 (inv!30735 (c!338853 totalInput!482)))))

(declare-fun b!2104865 () Bool)

(declare-fun e!1337400 () Bool)

(assert (=> b!2104865 (= e!1337399 e!1337400)))

(declare-fun res!915273 () Bool)

(assert (=> b!2104865 (= res!915273 (not ((_ is Leaf!11260) (c!338853 totalInput!482))))))

(assert (=> b!2104865 (=> res!915273 e!1337400)))

(declare-fun b!2104866 () Bool)

(declare-fun inv!30736 (Conc!7712) Bool)

(assert (=> b!2104866 (= e!1337400 (inv!30736 (c!338853 totalInput!482)))))

(assert (= (and d!641596 c!338856) b!2104864))

(assert (= (and d!641596 (not c!338856)) b!2104865))

(assert (= (and b!2104865 (not res!915273)) b!2104866))

(declare-fun m!2563605 () Bool)

(assert (=> b!2104864 m!2563605))

(declare-fun m!2563607 () Bool)

(assert (=> b!2104866 m!2563607))

(assert (=> b!2104848 d!641596))

(declare-fun d!641598 () Bool)

(declare-fun isBalanced!2424 (Conc!7712) Bool)

(assert (=> d!641598 (= (inv!30731 totalInput!482) (isBalanced!2424 (c!338853 totalInput!482)))))

(declare-fun bs!440908 () Bool)

(assert (= bs!440908 d!641598))

(declare-fun m!2563609 () Bool)

(assert (=> bs!440908 m!2563609))

(assert (=> start!205788 d!641598))

(declare-fun d!641600 () Bool)

(assert (=> d!641600 (= (inv!30731 input!1444) (isBalanced!2424 (c!338853 input!1444)))))

(declare-fun bs!440909 () Bool)

(assert (= bs!440909 d!641600))

(declare-fun m!2563611 () Bool)

(assert (=> bs!440909 m!2563611))

(assert (=> start!205788 d!641600))

(declare-fun d!641602 () Bool)

(declare-fun res!915276 () Bool)

(declare-fun e!1337403 () Bool)

(assert (=> d!641602 (=> (not res!915276) (not e!1337403))))

(assert (=> d!641602 (= res!915276 ((_ is HashMap!2146) (cache!2527 cacheUp!675)))))

(assert (=> d!641602 (= (inv!30732 cacheUp!675) e!1337403)))

(declare-fun b!2104869 () Bool)

(declare-fun validCacheMapUp!220 (MutableMap!2146) Bool)

(assert (=> b!2104869 (= e!1337403 (validCacheMapUp!220 (cache!2527 cacheUp!675)))))

(assert (= (and d!641602 res!915276) b!2104869))

(declare-fun m!2563613 () Bool)

(assert (=> b!2104869 m!2563613))

(assert (=> start!205788 d!641602))

(declare-fun d!641604 () Bool)

(declare-fun res!915279 () Bool)

(declare-fun e!1337406 () Bool)

(assert (=> d!641604 (=> (not res!915279) (not e!1337406))))

(assert (=> d!641604 (= res!915279 ((_ is HashMap!2145) (cache!2526 cacheDown!688)))))

(assert (=> d!641604 (= (inv!30733 cacheDown!688) e!1337406)))

(declare-fun b!2104872 () Bool)

(declare-fun validCacheMapDown!218 (MutableMap!2145) Bool)

(assert (=> b!2104872 (= e!1337406 (validCacheMapDown!218 (cache!2526 cacheDown!688)))))

(assert (= (and d!641604 res!915279) b!2104872))

(declare-fun m!2563615 () Bool)

(assert (=> b!2104872 m!2563615))

(assert (=> start!205788 d!641604))

(declare-fun d!641606 () Bool)

(declare-fun e!1337414 () Bool)

(assert (=> d!641606 e!1337414))

(declare-fun res!915290 () Bool)

(assert (=> d!641606 (=> res!915290 e!1337414)))

(declare-fun lt!791180 () Bool)

(assert (=> d!641606 (= res!915290 (not lt!791180))))

(declare-fun e!1337415 () Bool)

(assert (=> d!641606 (= lt!791180 e!1337415)))

(declare-fun res!915288 () Bool)

(assert (=> d!641606 (=> res!915288 e!1337415)))

(assert (=> d!641606 (= res!915288 ((_ is Nil!23209) lt!791174))))

(assert (=> d!641606 (= (isPrefix!2067 lt!791174 lt!791174) lt!791180)))

(declare-fun b!2104882 () Bool)

(declare-fun res!915291 () Bool)

(declare-fun e!1337413 () Bool)

(assert (=> b!2104882 (=> (not res!915291) (not e!1337413))))

(declare-fun head!4624 (List!23293) C!11268)

(assert (=> b!2104882 (= res!915291 (= (head!4624 lt!791174) (head!4624 lt!791174)))))

(declare-fun b!2104881 () Bool)

(assert (=> b!2104881 (= e!1337415 e!1337413)))

(declare-fun res!915289 () Bool)

(assert (=> b!2104881 (=> (not res!915289) (not e!1337413))))

(assert (=> b!2104881 (= res!915289 (not ((_ is Nil!23209) lt!791174)))))

(declare-fun b!2104884 () Bool)

(declare-fun size!18117 (List!23293) Int)

(assert (=> b!2104884 (= e!1337414 (>= (size!18117 lt!791174) (size!18117 lt!791174)))))

(declare-fun b!2104883 () Bool)

(declare-fun tail!3096 (List!23293) List!23293)

(assert (=> b!2104883 (= e!1337413 (isPrefix!2067 (tail!3096 lt!791174) (tail!3096 lt!791174)))))

(assert (= (and d!641606 (not res!915288)) b!2104881))

(assert (= (and b!2104881 res!915289) b!2104882))

(assert (= (and b!2104882 res!915291) b!2104883))

(assert (= (and d!641606 (not res!915290)) b!2104884))

(declare-fun m!2563617 () Bool)

(assert (=> b!2104882 m!2563617))

(assert (=> b!2104882 m!2563617))

(declare-fun m!2563619 () Bool)

(assert (=> b!2104884 m!2563619))

(assert (=> b!2104884 m!2563619))

(declare-fun m!2563621 () Bool)

(assert (=> b!2104883 m!2563621))

(assert (=> b!2104883 m!2563621))

(assert (=> b!2104883 m!2563621))

(assert (=> b!2104883 m!2563621))

(declare-fun m!2563623 () Bool)

(assert (=> b!2104883 m!2563623))

(assert (=> b!2104851 d!641606))

(declare-fun d!641608 () Bool)

(assert (=> d!641608 (isPrefix!2067 lt!791174 lt!791174)))

(declare-fun lt!791183 () Unit!37447)

(declare-fun choose!12626 (List!23293 List!23293) Unit!37447)

(assert (=> d!641608 (= lt!791183 (choose!12626 lt!791174 lt!791174))))

(assert (=> d!641608 (= (lemmaIsPrefixRefl!1385 lt!791174 lt!791174) lt!791183)))

(declare-fun bs!440910 () Bool)

(assert (= bs!440910 d!641608))

(assert (=> bs!440910 m!2563573))

(declare-fun m!2563625 () Bool)

(assert (=> bs!440910 m!2563625))

(assert (=> b!2104851 d!641608))

(declare-fun d!641610 () Bool)

(assert (=> d!641610 (= (array_inv!2453 (_keys!2529 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) (bvsge (size!18113 (_keys!2529 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104840 d!641610))

(declare-fun d!641612 () Bool)

(assert (=> d!641612 (= (array_inv!2454 (_values!2512 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) (bvsge (size!18115 (_values!2512 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104840 d!641612))

(declare-fun d!641614 () Bool)

(assert (=> d!641614 true))

(declare-fun lt!791186 () Bool)

(declare-fun lambda!78139 () Int)

(declare-fun forall!4832 (List!23296 Int) Bool)

(assert (=> d!641614 (= lt!791186 (forall!4832 (t!195789 rulesArg!349) lambda!78139))))

(declare-fun e!1337420 () Bool)

(assert (=> d!641614 (= lt!791186 e!1337420)))

(declare-fun res!915296 () Bool)

(assert (=> d!641614 (=> res!915296 e!1337420)))

(assert (=> d!641614 (= res!915296 (not ((_ is Cons!23212) (t!195789 rulesArg!349))))))

(assert (=> d!641614 (= (rulesValidInductive!1449 thiss!15689 (t!195789 rulesArg!349)) lt!791186)))

(declare-fun b!2104889 () Bool)

(declare-fun e!1337421 () Bool)

(assert (=> b!2104889 (= e!1337420 e!1337421)))

(declare-fun res!915297 () Bool)

(assert (=> b!2104889 (=> (not res!915297) (not e!1337421))))

(declare-fun ruleValid!1263 (LexerInterface!3732 Rule!8064) Bool)

(assert (=> b!2104889 (= res!915297 (ruleValid!1263 thiss!15689 (h!28613 (t!195789 rulesArg!349))))))

(declare-fun b!2104890 () Bool)

(assert (=> b!2104890 (= e!1337421 (rulesValidInductive!1449 thiss!15689 (t!195789 (t!195789 rulesArg!349))))))

(assert (= (and d!641614 (not res!915296)) b!2104889))

(assert (= (and b!2104889 res!915297) b!2104890))

(declare-fun m!2563627 () Bool)

(assert (=> d!641614 m!2563627))

(declare-fun m!2563629 () Bool)

(assert (=> b!2104889 m!2563629))

(declare-fun m!2563631 () Bool)

(assert (=> b!2104890 m!2563631))

(assert (=> b!2104841 d!641614))

(declare-fun b!2104903 () Bool)

(declare-fun e!1337430 () Option!4847)

(assert (=> b!2104903 (= e!1337430 None!4846)))

(declare-fun b!2104904 () Bool)

(declare-fun e!1337429 () Bool)

(declare-fun lt!791202 () List!23293)

(declare-fun matchR!2719 (Regex!5561 List!23293) Bool)

(declare-datatypes ((tuple2!22462 0))(
  ( (tuple2!22463 (_1!12970 List!23293) (_2!12970 List!23293)) )
))
(declare-fun findLongestMatchInner!585 (Regex!5561 List!23293 Int List!23293 List!23293 Int) tuple2!22462)

(assert (=> b!2104904 (= e!1337429 (matchR!2719 (regex!4132 (h!28613 rulesArg!349)) (_1!12970 (findLongestMatchInner!585 (regex!4132 (h!28613 rulesArg!349)) Nil!23209 (size!18117 Nil!23209) lt!791202 lt!791202 (size!18117 lt!791202)))))))

(declare-fun b!2104905 () Bool)

(declare-datatypes ((tuple2!22464 0))(
  ( (tuple2!22465 (_1!12971 BalanceConc!15186) (_2!12971 BalanceConc!15186)) )
))
(declare-datatypes ((tuple3!2550 0))(
  ( (tuple3!2551 (_1!12972 tuple2!22464) (_2!12972 CacheUp!1438) (_3!1739 CacheDown!1446)) )
))
(declare-fun lt!791200 () tuple3!2550)

(declare-fun apply!5893 (TokenValueInjection!8120 BalanceConc!15186) TokenValue!4268)

(declare-fun size!18118 (BalanceConc!15186) Int)

(assert (=> b!2104905 (= e!1337430 (Some!4846 (tuple2!22461 (Token!7789 (apply!5893 (transformation!4132 (h!28613 rulesArg!349)) (_1!12971 (_1!12972 lt!791200))) (h!28613 rulesArg!349) (size!18118 (_1!12971 (_1!12972 lt!791200))) (list!9434 (_1!12971 (_1!12972 lt!791200)))) (_2!12971 (_1!12972 lt!791200)))))))

(assert (=> b!2104905 (= lt!791202 (list!9434 input!1444))))

(declare-fun lt!791199 () Unit!37447)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!569 (Regex!5561 List!23293) Unit!37447)

(assert (=> b!2104905 (= lt!791199 (longestMatchIsAcceptedByMatchOrIsEmpty!569 (regex!4132 (h!28613 rulesArg!349)) lt!791202))))

(declare-fun res!915305 () Bool)

(declare-fun isEmpty!14266 (List!23293) Bool)

(assert (=> b!2104905 (= res!915305 (isEmpty!14266 (_1!12970 (findLongestMatchInner!585 (regex!4132 (h!28613 rulesArg!349)) Nil!23209 (size!18117 Nil!23209) lt!791202 lt!791202 (size!18117 lt!791202)))))))

(assert (=> b!2104905 (=> res!915305 e!1337429)))

(assert (=> b!2104905 e!1337429))

(declare-fun lt!791203 () Unit!37447)

(assert (=> b!2104905 (= lt!791203 lt!791199)))

(declare-fun lt!791204 () Unit!37447)

(declare-fun lemmaSemiInverse!983 (TokenValueInjection!8120 BalanceConc!15186) Unit!37447)

(assert (=> b!2104905 (= lt!791204 (lemmaSemiInverse!983 (transformation!4132 (h!28613 rulesArg!349)) (_1!12971 (_1!12972 lt!791200))))))

(declare-fun b!2104907 () Bool)

(declare-fun res!915306 () Bool)

(declare-fun e!1337428 () Bool)

(assert (=> b!2104907 (=> (not res!915306) (not e!1337428))))

(declare-fun lt!791201 () tuple3!2548)

(assert (=> b!2104907 (= res!915306 (valid!1771 (_2!12969 lt!791201)))))

(declare-fun d!641616 () Bool)

(assert (=> d!641616 e!1337428))

(declare-fun res!915304 () Bool)

(assert (=> d!641616 (=> (not res!915304) (not e!1337428))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!171 (LexerInterface!3732 Rule!8064 BalanceConc!15186 BalanceConc!15186) Option!4847)

(assert (=> d!641616 (= res!915304 (= (_1!12969 lt!791201) (maxPrefixOneRuleZipperSequenceV2!171 thiss!15689 (h!28613 rulesArg!349) input!1444 totalInput!482)))))

(assert (=> d!641616 (= lt!791201 (tuple3!2549 e!1337430 (_2!12972 lt!791200) (_3!1739 lt!791200)))))

(declare-fun c!338859 () Bool)

(declare-fun isEmpty!14267 (BalanceConc!15186) Bool)

(assert (=> d!641616 (= c!338859 (isEmpty!14267 (_1!12971 (_1!12972 lt!791200))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!28 (Regex!5561 BalanceConc!15186 BalanceConc!15186 CacheUp!1438 CacheDown!1446) tuple3!2550)

(assert (=> d!641616 (= lt!791200 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!28 (regex!4132 (h!28613 rulesArg!349)) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(assert (=> d!641616 (ruleValid!1263 thiss!15689 (h!28613 rulesArg!349))))

(assert (=> d!641616 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!64 thiss!15689 (h!28613 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688) lt!791201)))

(declare-fun b!2104906 () Bool)

(assert (=> b!2104906 (= e!1337428 (valid!1770 (_3!1738 lt!791201)))))

(assert (= (and d!641616 c!338859) b!2104903))

(assert (= (and d!641616 (not c!338859)) b!2104905))

(assert (= (and b!2104905 (not res!915305)) b!2104904))

(assert (= (and d!641616 res!915304) b!2104907))

(assert (= (and b!2104907 res!915306) b!2104906))

(declare-fun m!2563633 () Bool)

(assert (=> b!2104905 m!2563633))

(assert (=> b!2104905 m!2563571))

(declare-fun m!2563635 () Bool)

(assert (=> b!2104905 m!2563635))

(declare-fun m!2563637 () Bool)

(assert (=> b!2104905 m!2563637))

(declare-fun m!2563639 () Bool)

(assert (=> b!2104905 m!2563639))

(declare-fun m!2563641 () Bool)

(assert (=> b!2104905 m!2563641))

(declare-fun m!2563643 () Bool)

(assert (=> b!2104905 m!2563643))

(assert (=> b!2104905 m!2563633))

(assert (=> b!2104905 m!2563637))

(declare-fun m!2563645 () Bool)

(assert (=> b!2104905 m!2563645))

(declare-fun m!2563647 () Bool)

(assert (=> b!2104905 m!2563647))

(declare-fun m!2563649 () Bool)

(assert (=> b!2104905 m!2563649))

(declare-fun m!2563651 () Bool)

(assert (=> b!2104907 m!2563651))

(declare-fun m!2563653 () Bool)

(assert (=> b!2104906 m!2563653))

(assert (=> b!2104904 m!2563633))

(assert (=> b!2104904 m!2563637))

(assert (=> b!2104904 m!2563633))

(assert (=> b!2104904 m!2563637))

(assert (=> b!2104904 m!2563645))

(declare-fun m!2563655 () Bool)

(assert (=> b!2104904 m!2563655))

(declare-fun m!2563657 () Bool)

(assert (=> d!641616 m!2563657))

(declare-fun m!2563659 () Bool)

(assert (=> d!641616 m!2563659))

(declare-fun m!2563661 () Bool)

(assert (=> d!641616 m!2563661))

(declare-fun m!2563663 () Bool)

(assert (=> d!641616 m!2563663))

(assert (=> b!2104841 d!641616))

(declare-fun d!641618 () Bool)

(assert (=> d!641618 (= (valid!1770 cacheDown!688) (validCacheMapDown!218 (cache!2526 cacheDown!688)))))

(declare-fun bs!440911 () Bool)

(assert (= bs!440911 d!641618))

(assert (=> bs!440911 m!2563615))

(assert (=> b!2104832 d!641618))

(declare-fun d!641620 () Bool)

(declare-fun c!338860 () Bool)

(assert (=> d!641620 (= c!338860 ((_ is Node!7712) (c!338853 input!1444)))))

(declare-fun e!1337431 () Bool)

(assert (=> d!641620 (= (inv!30730 (c!338853 input!1444)) e!1337431)))

(declare-fun b!2104908 () Bool)

(assert (=> b!2104908 (= e!1337431 (inv!30735 (c!338853 input!1444)))))

(declare-fun b!2104909 () Bool)

(declare-fun e!1337432 () Bool)

(assert (=> b!2104909 (= e!1337431 e!1337432)))

(declare-fun res!915307 () Bool)

(assert (=> b!2104909 (= res!915307 (not ((_ is Leaf!11260) (c!338853 input!1444))))))

(assert (=> b!2104909 (=> res!915307 e!1337432)))

(declare-fun b!2104910 () Bool)

(assert (=> b!2104910 (= e!1337432 (inv!30736 (c!338853 input!1444)))))

(assert (= (and d!641620 c!338860) b!2104908))

(assert (= (and d!641620 (not c!338860)) b!2104909))

(assert (= (and b!2104909 (not res!915307)) b!2104910))

(declare-fun m!2563665 () Bool)

(assert (=> b!2104908 m!2563665))

(declare-fun m!2563667 () Bool)

(assert (=> b!2104910 m!2563667))

(assert (=> b!2104833 d!641620))

(declare-fun d!641622 () Bool)

(assert (=> d!641622 (= (inv!30729 (tag!4622 (h!28613 rulesArg!349))) (= (mod (str.len (value!129403 (tag!4622 (h!28613 rulesArg!349)))) 2) 0))))

(assert (=> b!2104843 d!641622))

(declare-fun d!641624 () Bool)

(declare-fun res!915310 () Bool)

(declare-fun e!1337435 () Bool)

(assert (=> d!641624 (=> (not res!915310) (not e!1337435))))

(declare-fun semiInverseModEq!1650 (Int Int) Bool)

(assert (=> d!641624 (= res!915310 (semiInverseModEq!1650 (toChars!5702 (transformation!4132 (h!28613 rulesArg!349))) (toValue!5843 (transformation!4132 (h!28613 rulesArg!349)))))))

(assert (=> d!641624 (= (inv!30734 (transformation!4132 (h!28613 rulesArg!349))) e!1337435)))

(declare-fun b!2104913 () Bool)

(declare-fun equivClasses!1577 (Int Int) Bool)

(assert (=> b!2104913 (= e!1337435 (equivClasses!1577 (toChars!5702 (transformation!4132 (h!28613 rulesArg!349))) (toValue!5843 (transformation!4132 (h!28613 rulesArg!349)))))))

(assert (= (and d!641624 res!915310) b!2104913))

(declare-fun m!2563669 () Bool)

(assert (=> d!641624 m!2563669))

(declare-fun m!2563671 () Bool)

(assert (=> b!2104913 m!2563671))

(assert (=> b!2104843 d!641624))

(declare-fun d!641626 () Bool)

(assert (=> d!641626 (= (valid!1771 cacheUp!675) (validCacheMapUp!220 (cache!2527 cacheUp!675)))))

(declare-fun bs!440912 () Bool)

(assert (= bs!440912 d!641626))

(assert (=> bs!440912 m!2563613))

(assert (=> b!2104854 d!641626))

(declare-fun d!641628 () Bool)

(assert (=> d!641628 (= (array_inv!2453 (_keys!2528 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) (bvsge (size!18113 (_keys!2528 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104845 d!641628))

(declare-fun d!641630 () Bool)

(assert (=> d!641630 (= (array_inv!2455 (_values!2511 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) (bvsge (size!18114 (_values!2511 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2104845 d!641630))

(declare-fun d!641632 () Bool)

(declare-fun e!1337438 () Bool)

(assert (=> d!641632 e!1337438))

(declare-fun res!915313 () Bool)

(assert (=> d!641632 (=> res!915313 e!1337438)))

(declare-fun lt!791207 () Bool)

(assert (=> d!641632 (= res!915313 (not lt!791207))))

(declare-fun drop!1159 (List!23293 Int) List!23293)

(assert (=> d!641632 (= lt!791207 (= lt!791174 (drop!1159 (list!9434 totalInput!482) (- (size!18117 (list!9434 totalInput!482)) (size!18117 lt!791174)))))))

(assert (=> d!641632 (= (isSuffix!552 lt!791174 (list!9434 totalInput!482)) lt!791207)))

(declare-fun b!2104916 () Bool)

(assert (=> b!2104916 (= e!1337438 (>= (size!18117 (list!9434 totalInput!482)) (size!18117 lt!791174)))))

(assert (= (and d!641632 (not res!915313)) b!2104916))

(assert (=> d!641632 m!2563567))

(declare-fun m!2563673 () Bool)

(assert (=> d!641632 m!2563673))

(assert (=> d!641632 m!2563619))

(assert (=> d!641632 m!2563567))

(declare-fun m!2563675 () Bool)

(assert (=> d!641632 m!2563675))

(assert (=> b!2104916 m!2563567))

(assert (=> b!2104916 m!2563673))

(assert (=> b!2104916 m!2563619))

(assert (=> b!2104837 d!641632))

(declare-fun d!641634 () Bool)

(declare-fun list!9435 (Conc!7712) List!23293)

(assert (=> d!641634 (= (list!9434 totalInput!482) (list!9435 (c!338853 totalInput!482)))))

(declare-fun bs!440913 () Bool)

(assert (= bs!440913 d!641634))

(declare-fun m!2563677 () Bool)

(assert (=> bs!440913 m!2563677))

(assert (=> b!2104837 d!641634))

(declare-fun d!641636 () Bool)

(assert (=> d!641636 (= (list!9434 input!1444) (list!9435 (c!338853 input!1444)))))

(declare-fun bs!440914 () Bool)

(assert (= bs!440914 d!641636))

(declare-fun m!2563679 () Bool)

(assert (=> bs!440914 m!2563679))

(assert (=> b!2104837 d!641636))

(declare-fun bs!440915 () Bool)

(declare-fun d!641638 () Bool)

(assert (= bs!440915 (and d!641638 d!641614)))

(declare-fun lambda!78140 () Int)

(assert (=> bs!440915 (= lambda!78140 lambda!78139)))

(assert (=> d!641638 true))

(declare-fun lt!791208 () Bool)

(assert (=> d!641638 (= lt!791208 (forall!4832 rulesArg!349 lambda!78140))))

(declare-fun e!1337439 () Bool)

(assert (=> d!641638 (= lt!791208 e!1337439)))

(declare-fun res!915314 () Bool)

(assert (=> d!641638 (=> res!915314 e!1337439)))

(assert (=> d!641638 (= res!915314 (not ((_ is Cons!23212) rulesArg!349)))))

(assert (=> d!641638 (= (rulesValidInductive!1449 thiss!15689 rulesArg!349) lt!791208)))

(declare-fun b!2104917 () Bool)

(declare-fun e!1337440 () Bool)

(assert (=> b!2104917 (= e!1337439 e!1337440)))

(declare-fun res!915315 () Bool)

(assert (=> b!2104917 (=> (not res!915315) (not e!1337440))))

(assert (=> b!2104917 (= res!915315 (ruleValid!1263 thiss!15689 (h!28613 rulesArg!349)))))

(declare-fun b!2104918 () Bool)

(assert (=> b!2104918 (= e!1337440 (rulesValidInductive!1449 thiss!15689 (t!195789 rulesArg!349)))))

(assert (= (and d!641638 (not res!915314)) b!2104917))

(assert (= (and b!2104917 res!915315) b!2104918))

(declare-fun m!2563681 () Bool)

(assert (=> d!641638 m!2563681))

(assert (=> b!2104917 m!2563663))

(assert (=> b!2104918 m!2563591))

(assert (=> b!2104847 d!641638))

(declare-fun b!2104933 () Bool)

(declare-fun e!1337457 () Bool)

(declare-fun tp!637719 () Bool)

(assert (=> b!2104933 (= e!1337457 tp!637719)))

(declare-fun b!2104934 () Bool)

(declare-fun e!1337456 () Bool)

(declare-fun tp!637716 () Bool)

(assert (=> b!2104934 (= e!1337456 tp!637716)))

(declare-fun tp!637722 () Bool)

(declare-fun e!1337453 () Bool)

(declare-fun setElem!13738 () Context!2262)

(declare-fun setNonEmpty!13738 () Bool)

(declare-fun setRes!13738 () Bool)

(declare-fun inv!30737 (Context!2262) Bool)

(assert (=> setNonEmpty!13738 (= setRes!13738 (and tp!637722 (inv!30737 setElem!13738) e!1337453))))

(declare-fun mapDefault!10786 () List!23292)

(declare-fun setRest!13738 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13738 (= (_2!12965 (h!28609 mapDefault!10786)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13738 true) setRest!13738))))

(declare-fun b!2104935 () Bool)

(declare-fun e!1337454 () Bool)

(declare-fun tp!637720 () Bool)

(assert (=> b!2104935 (= e!1337454 tp!637720)))

(declare-fun tp!637712 () Bool)

(declare-fun tp!637715 () Bool)

(declare-fun e!1337455 () Bool)

(declare-fun mapValue!10786 () List!23292)

(declare-fun setRes!13739 () Bool)

(declare-fun b!2104936 () Bool)

(declare-fun tp_is_empty!9363 () Bool)

(assert (=> b!2104936 (= e!1337455 (and tp!637715 (inv!30737 (_2!12964 (_1!12965 (h!28609 mapValue!10786)))) e!1337457 tp_is_empty!9363 setRes!13739 tp!637712))))

(declare-fun condSetEmpty!13738 () Bool)

(assert (=> b!2104936 (= condSetEmpty!13738 (= (_2!12965 (h!28609 mapValue!10786)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun mapIsEmpty!10786 () Bool)

(declare-fun mapRes!10786 () Bool)

(assert (=> mapIsEmpty!10786 mapRes!10786))

(declare-fun condMapEmpty!10786 () Bool)

(assert (=> mapNonEmpty!10783 (= condMapEmpty!10786 (= mapRest!10782 ((as const (Array (_ BitVec 32) List!23292)) mapDefault!10786)))))

(declare-fun e!1337458 () Bool)

(assert (=> mapNonEmpty!10783 (= tp!637671 (and e!1337458 mapRes!10786))))

(declare-fun setElem!13739 () Context!2262)

(declare-fun setNonEmpty!13739 () Bool)

(declare-fun tp!637721 () Bool)

(assert (=> setNonEmpty!13739 (= setRes!13739 (and tp!637721 (inv!30737 setElem!13739) e!1337454))))

(declare-fun setRest!13739 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13739 (= (_2!12965 (h!28609 mapValue!10786)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13739 true) setRest!13739))))

(declare-fun tp!637717 () Bool)

(declare-fun b!2104937 () Bool)

(declare-fun tp!637718 () Bool)

(assert (=> b!2104937 (= e!1337458 (and tp!637717 (inv!30737 (_2!12964 (_1!12965 (h!28609 mapDefault!10786)))) e!1337456 tp_is_empty!9363 setRes!13738 tp!637718))))

(declare-fun condSetEmpty!13739 () Bool)

(assert (=> b!2104937 (= condSetEmpty!13739 (= (_2!12965 (h!28609 mapDefault!10786)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun mapNonEmpty!10786 () Bool)

(declare-fun tp!637714 () Bool)

(assert (=> mapNonEmpty!10786 (= mapRes!10786 (and tp!637714 e!1337455))))

(declare-fun mapKey!10786 () (_ BitVec 32))

(declare-fun mapRest!10786 () (Array (_ BitVec 32) List!23292))

(assert (=> mapNonEmpty!10786 (= mapRest!10782 (store mapRest!10786 mapKey!10786 mapValue!10786))))

(declare-fun setIsEmpty!13738 () Bool)

(assert (=> setIsEmpty!13738 setRes!13739))

(declare-fun b!2104938 () Bool)

(declare-fun tp!637713 () Bool)

(assert (=> b!2104938 (= e!1337453 tp!637713)))

(declare-fun setIsEmpty!13739 () Bool)

(assert (=> setIsEmpty!13739 setRes!13738))

(assert (= (and mapNonEmpty!10783 condMapEmpty!10786) mapIsEmpty!10786))

(assert (= (and mapNonEmpty!10783 (not condMapEmpty!10786)) mapNonEmpty!10786))

(assert (= b!2104936 b!2104933))

(assert (= (and b!2104936 condSetEmpty!13738) setIsEmpty!13738))

(assert (= (and b!2104936 (not condSetEmpty!13738)) setNonEmpty!13739))

(assert (= setNonEmpty!13739 b!2104935))

(assert (= (and mapNonEmpty!10786 ((_ is Cons!23208) mapValue!10786)) b!2104936))

(assert (= b!2104937 b!2104934))

(assert (= (and b!2104937 condSetEmpty!13739) setIsEmpty!13739))

(assert (= (and b!2104937 (not condSetEmpty!13739)) setNonEmpty!13738))

(assert (= setNonEmpty!13738 b!2104938))

(assert (= (and mapNonEmpty!10783 ((_ is Cons!23208) mapDefault!10786)) b!2104937))

(declare-fun m!2563683 () Bool)

(assert (=> setNonEmpty!13739 m!2563683))

(declare-fun m!2563685 () Bool)

(assert (=> b!2104936 m!2563685))

(declare-fun m!2563687 () Bool)

(assert (=> setNonEmpty!13738 m!2563687))

(declare-fun m!2563689 () Bool)

(assert (=> mapNonEmpty!10786 m!2563689))

(declare-fun m!2563691 () Bool)

(assert (=> b!2104937 m!2563691))

(declare-fun setRes!13742 () Bool)

(declare-fun b!2104947 () Bool)

(declare-fun tp!637735 () Bool)

(declare-fun e!1337467 () Bool)

(declare-fun tp!637737 () Bool)

(declare-fun e!1337465 () Bool)

(assert (=> b!2104947 (= e!1337467 (and tp!637735 (inv!30737 (_2!12964 (_1!12965 (h!28609 mapValue!10782)))) e!1337465 tp_is_empty!9363 setRes!13742 tp!637737))))

(declare-fun condSetEmpty!13742 () Bool)

(assert (=> b!2104947 (= condSetEmpty!13742 (= (_2!12965 (h!28609 mapValue!10782)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun b!2104948 () Bool)

(declare-fun e!1337466 () Bool)

(declare-fun tp!637734 () Bool)

(assert (=> b!2104948 (= e!1337466 tp!637734)))

(assert (=> mapNonEmpty!10783 (= tp!637672 e!1337467)))

(declare-fun b!2104949 () Bool)

(declare-fun tp!637733 () Bool)

(assert (=> b!2104949 (= e!1337465 tp!637733)))

(declare-fun setNonEmpty!13742 () Bool)

(declare-fun tp!637736 () Bool)

(declare-fun setElem!13742 () Context!2262)

(assert (=> setNonEmpty!13742 (= setRes!13742 (and tp!637736 (inv!30737 setElem!13742) e!1337466))))

(declare-fun setRest!13742 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13742 (= (_2!12965 (h!28609 mapValue!10782)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13742 true) setRest!13742))))

(declare-fun setIsEmpty!13742 () Bool)

(assert (=> setIsEmpty!13742 setRes!13742))

(assert (= b!2104947 b!2104949))

(assert (= (and b!2104947 condSetEmpty!13742) setIsEmpty!13742))

(assert (= (and b!2104947 (not condSetEmpty!13742)) setNonEmpty!13742))

(assert (= setNonEmpty!13742 b!2104948))

(assert (= (and mapNonEmpty!10783 ((_ is Cons!23208) mapValue!10782)) b!2104947))

(declare-fun m!2563693 () Bool)

(assert (=> b!2104947 m!2563693))

(declare-fun m!2563695 () Bool)

(assert (=> setNonEmpty!13742 m!2563695))

(declare-fun b!2104960 () Bool)

(declare-fun b_free!60421 () Bool)

(declare-fun b_next!61125 () Bool)

(assert (=> b!2104960 (= b_free!60421 (not b_next!61125))))

(declare-fun tp!637748 () Bool)

(declare-fun b_and!169983 () Bool)

(assert (=> b!2104960 (= tp!637748 b_and!169983)))

(declare-fun b_free!60423 () Bool)

(declare-fun b_next!61127 () Bool)

(assert (=> b!2104960 (= b_free!60423 (not b_next!61127))))

(declare-fun tp!637746 () Bool)

(declare-fun b_and!169985 () Bool)

(assert (=> b!2104960 (= tp!637746 b_and!169985)))

(declare-fun e!1337478 () Bool)

(assert (=> b!2104960 (= e!1337478 (and tp!637748 tp!637746))))

(declare-fun tp!637749 () Bool)

(declare-fun e!1337479 () Bool)

(declare-fun b!2104959 () Bool)

(assert (=> b!2104959 (= e!1337479 (and tp!637749 (inv!30729 (tag!4622 (h!28613 (t!195789 rulesArg!349)))) (inv!30734 (transformation!4132 (h!28613 (t!195789 rulesArg!349)))) e!1337478))))

(declare-fun b!2104958 () Bool)

(declare-fun e!1337477 () Bool)

(declare-fun tp!637747 () Bool)

(assert (=> b!2104958 (= e!1337477 (and e!1337479 tp!637747))))

(assert (=> b!2104857 (= tp!637687 e!1337477)))

(assert (= b!2104959 b!2104960))

(assert (= b!2104958 b!2104959))

(assert (= (and b!2104857 ((_ is Cons!23212) (t!195789 rulesArg!349))) b!2104958))

(declare-fun m!2563697 () Bool)

(assert (=> b!2104959 m!2563697))

(declare-fun m!2563699 () Bool)

(assert (=> b!2104959 m!2563699))

(declare-fun b!2104972 () Bool)

(declare-fun e!1337482 () Bool)

(declare-fun tp!637760 () Bool)

(declare-fun tp!637762 () Bool)

(assert (=> b!2104972 (= e!1337482 (and tp!637760 tp!637762))))

(declare-fun b!2104974 () Bool)

(declare-fun tp!637761 () Bool)

(declare-fun tp!637764 () Bool)

(assert (=> b!2104974 (= e!1337482 (and tp!637761 tp!637764))))

(declare-fun b!2104971 () Bool)

(assert (=> b!2104971 (= e!1337482 tp_is_empty!9363)))

(declare-fun b!2104973 () Bool)

(declare-fun tp!637763 () Bool)

(assert (=> b!2104973 (= e!1337482 tp!637763)))

(assert (=> b!2104843 (= tp!637681 e!1337482)))

(assert (= (and b!2104843 ((_ is ElementMatch!5561) (regex!4132 (h!28613 rulesArg!349)))) b!2104971))

(assert (= (and b!2104843 ((_ is Concat!9829) (regex!4132 (h!28613 rulesArg!349)))) b!2104972))

(assert (= (and b!2104843 ((_ is Star!5561) (regex!4132 (h!28613 rulesArg!349)))) b!2104973))

(assert (= (and b!2104843 ((_ is Union!5561) (regex!4132 (h!28613 rulesArg!349)))) b!2104974))

(declare-fun b!2104983 () Bool)

(declare-fun tp!637773 () Bool)

(declare-fun e!1337488 () Bool)

(declare-fun tp!637771 () Bool)

(assert (=> b!2104983 (= e!1337488 (and (inv!30730 (left!18125 (c!338853 totalInput!482))) tp!637771 (inv!30730 (right!18455 (c!338853 totalInput!482))) tp!637773))))

(declare-fun b!2104985 () Bool)

(declare-fun e!1337487 () Bool)

(declare-fun tp!637772 () Bool)

(assert (=> b!2104985 (= e!1337487 tp!637772)))

(declare-fun b!2104984 () Bool)

(declare-fun inv!30738 (IArray!15429) Bool)

(assert (=> b!2104984 (= e!1337488 (and (inv!30738 (xs!10654 (c!338853 totalInput!482))) e!1337487))))

(assert (=> b!2104848 (= tp!637675 (and (inv!30730 (c!338853 totalInput!482)) e!1337488))))

(assert (= (and b!2104848 ((_ is Node!7712) (c!338853 totalInput!482))) b!2104983))

(assert (= b!2104984 b!2104985))

(assert (= (and b!2104848 ((_ is Leaf!11260) (c!338853 totalInput!482))) b!2104984))

(declare-fun m!2563701 () Bool)

(assert (=> b!2104983 m!2563701))

(declare-fun m!2563703 () Bool)

(assert (=> b!2104983 m!2563703))

(declare-fun m!2563705 () Bool)

(assert (=> b!2104984 m!2563705))

(assert (=> b!2104848 m!2563597))

(declare-fun setNonEmpty!13747 () Bool)

(declare-fun setRes!13748 () Bool)

(declare-fun e!1337504 () Bool)

(declare-fun setElem!13747 () Context!2262)

(declare-fun tp!637795 () Bool)

(assert (=> setNonEmpty!13747 (= setRes!13748 (and tp!637795 (inv!30737 setElem!13747) e!1337504))))

(declare-fun mapValue!10789 () List!23294)

(declare-fun setRest!13748 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13747 (= (_2!12967 (h!28611 mapValue!10789)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13747 true) setRest!13748))))

(declare-fun e!1337502 () Bool)

(declare-fun b!2105000 () Bool)

(declare-fun tp!637798 () Bool)

(declare-fun e!1337503 () Bool)

(assert (=> b!2105000 (= e!1337502 (and (inv!30737 (_1!12966 (_1!12967 (h!28611 mapValue!10789)))) e!1337503 tp_is_empty!9363 setRes!13748 tp!637798))))

(declare-fun condSetEmpty!13748 () Bool)

(assert (=> b!2105000 (= condSetEmpty!13748 (= (_2!12967 (h!28611 mapValue!10789)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun setElem!13748 () Context!2262)

(declare-fun setRes!13747 () Bool)

(declare-fun tp!637796 () Bool)

(declare-fun setNonEmpty!13748 () Bool)

(declare-fun e!1337501 () Bool)

(assert (=> setNonEmpty!13748 (= setRes!13747 (and tp!637796 (inv!30737 setElem!13748) e!1337501))))

(declare-fun mapDefault!10789 () List!23294)

(declare-fun setRest!13747 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13748 (= (_2!12967 (h!28611 mapDefault!10789)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13748 true) setRest!13747))))

(declare-fun b!2105001 () Bool)

(declare-fun tp!637799 () Bool)

(assert (=> b!2105001 (= e!1337501 tp!637799)))

(declare-fun setIsEmpty!13747 () Bool)

(assert (=> setIsEmpty!13747 setRes!13747))

(declare-fun b!2105002 () Bool)

(declare-fun tp!637800 () Bool)

(assert (=> b!2105002 (= e!1337504 tp!637800)))

(declare-fun condMapEmpty!10789 () Bool)

(assert (=> mapNonEmpty!10782 (= condMapEmpty!10789 (= mapRest!10783 ((as const (Array (_ BitVec 32) List!23294)) mapDefault!10789)))))

(declare-fun e!1337506 () Bool)

(declare-fun mapRes!10789 () Bool)

(assert (=> mapNonEmpty!10782 (= tp!637678 (and e!1337506 mapRes!10789))))

(declare-fun mapIsEmpty!10789 () Bool)

(assert (=> mapIsEmpty!10789 mapRes!10789))

(declare-fun tp!637792 () Bool)

(declare-fun e!1337505 () Bool)

(declare-fun b!2105003 () Bool)

(assert (=> b!2105003 (= e!1337506 (and (inv!30737 (_1!12966 (_1!12967 (h!28611 mapDefault!10789)))) e!1337505 tp_is_empty!9363 setRes!13747 tp!637792))))

(declare-fun condSetEmpty!13747 () Bool)

(assert (=> b!2105003 (= condSetEmpty!13747 (= (_2!12967 (h!28611 mapDefault!10789)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun b!2105004 () Bool)

(declare-fun tp!637793 () Bool)

(assert (=> b!2105004 (= e!1337503 tp!637793)))

(declare-fun mapNonEmpty!10789 () Bool)

(declare-fun tp!637794 () Bool)

(assert (=> mapNonEmpty!10789 (= mapRes!10789 (and tp!637794 e!1337502))))

(declare-fun mapKey!10789 () (_ BitVec 32))

(declare-fun mapRest!10789 () (Array (_ BitVec 32) List!23294))

(assert (=> mapNonEmpty!10789 (= mapRest!10783 (store mapRest!10789 mapKey!10789 mapValue!10789))))

(declare-fun b!2105005 () Bool)

(declare-fun tp!637797 () Bool)

(assert (=> b!2105005 (= e!1337505 tp!637797)))

(declare-fun setIsEmpty!13748 () Bool)

(assert (=> setIsEmpty!13748 setRes!13748))

(assert (= (and mapNonEmpty!10782 condMapEmpty!10789) mapIsEmpty!10789))

(assert (= (and mapNonEmpty!10782 (not condMapEmpty!10789)) mapNonEmpty!10789))

(assert (= b!2105000 b!2105004))

(assert (= (and b!2105000 condSetEmpty!13748) setIsEmpty!13748))

(assert (= (and b!2105000 (not condSetEmpty!13748)) setNonEmpty!13747))

(assert (= setNonEmpty!13747 b!2105002))

(assert (= (and mapNonEmpty!10789 ((_ is Cons!23210) mapValue!10789)) b!2105000))

(assert (= b!2105003 b!2105005))

(assert (= (and b!2105003 condSetEmpty!13747) setIsEmpty!13747))

(assert (= (and b!2105003 (not condSetEmpty!13747)) setNonEmpty!13748))

(assert (= setNonEmpty!13748 b!2105001))

(assert (= (and mapNonEmpty!10782 ((_ is Cons!23210) mapDefault!10789)) b!2105003))

(declare-fun m!2563707 () Bool)

(assert (=> setNonEmpty!13747 m!2563707))

(declare-fun m!2563709 () Bool)

(assert (=> setNonEmpty!13748 m!2563709))

(declare-fun m!2563711 () Bool)

(assert (=> mapNonEmpty!10789 m!2563711))

(declare-fun m!2563713 () Bool)

(assert (=> b!2105000 m!2563713))

(declare-fun m!2563715 () Bool)

(assert (=> b!2105003 m!2563715))

(declare-fun b!2105014 () Bool)

(declare-fun e!1337514 () Bool)

(declare-fun tp!637810 () Bool)

(assert (=> b!2105014 (= e!1337514 tp!637810)))

(declare-fun setIsEmpty!13751 () Bool)

(declare-fun setRes!13751 () Bool)

(assert (=> setIsEmpty!13751 setRes!13751))

(declare-fun b!2105015 () Bool)

(declare-fun tp!637812 () Bool)

(declare-fun e!1337515 () Bool)

(assert (=> b!2105015 (= e!1337515 (and (inv!30737 (_1!12966 (_1!12967 (h!28611 mapValue!10783)))) e!1337514 tp_is_empty!9363 setRes!13751 tp!637812))))

(declare-fun condSetEmpty!13751 () Bool)

(assert (=> b!2105015 (= condSetEmpty!13751 (= (_2!12967 (h!28611 mapValue!10783)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun setNonEmpty!13751 () Bool)

(declare-fun setElem!13751 () Context!2262)

(declare-fun e!1337513 () Bool)

(declare-fun tp!637811 () Bool)

(assert (=> setNonEmpty!13751 (= setRes!13751 (and tp!637811 (inv!30737 setElem!13751) e!1337513))))

(declare-fun setRest!13751 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13751 (= (_2!12967 (h!28611 mapValue!10783)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13751 true) setRest!13751))))

(assert (=> mapNonEmpty!10782 (= tp!637683 e!1337515)))

(declare-fun b!2105016 () Bool)

(declare-fun tp!637809 () Bool)

(assert (=> b!2105016 (= e!1337513 tp!637809)))

(assert (= b!2105015 b!2105014))

(assert (= (and b!2105015 condSetEmpty!13751) setIsEmpty!13751))

(assert (= (and b!2105015 (not condSetEmpty!13751)) setNonEmpty!13751))

(assert (= setNonEmpty!13751 b!2105016))

(assert (= (and mapNonEmpty!10782 ((_ is Cons!23210) mapValue!10783)) b!2105015))

(declare-fun m!2563717 () Bool)

(assert (=> b!2105015 m!2563717))

(declare-fun m!2563719 () Bool)

(assert (=> setNonEmpty!13751 m!2563719))

(declare-fun b!2105017 () Bool)

(declare-fun setRes!13752 () Bool)

(declare-fun tp!637815 () Bool)

(declare-fun tp!637817 () Bool)

(declare-fun e!1337518 () Bool)

(declare-fun e!1337516 () Bool)

(assert (=> b!2105017 (= e!1337518 (and tp!637815 (inv!30737 (_2!12964 (_1!12965 (h!28609 (zeroValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))))) e!1337516 tp_is_empty!9363 setRes!13752 tp!637817))))

(declare-fun condSetEmpty!13752 () Bool)

(assert (=> b!2105017 (= condSetEmpty!13752 (= (_2!12965 (h!28609 (zeroValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun b!2105018 () Bool)

(declare-fun e!1337517 () Bool)

(declare-fun tp!637814 () Bool)

(assert (=> b!2105018 (= e!1337517 tp!637814)))

(assert (=> b!2104845 (= tp!637682 e!1337518)))

(declare-fun b!2105019 () Bool)

(declare-fun tp!637813 () Bool)

(assert (=> b!2105019 (= e!1337516 tp!637813)))

(declare-fun tp!637816 () Bool)

(declare-fun setNonEmpty!13752 () Bool)

(declare-fun setElem!13752 () Context!2262)

(assert (=> setNonEmpty!13752 (= setRes!13752 (and tp!637816 (inv!30737 setElem!13752) e!1337517))))

(declare-fun setRest!13752 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13752 (= (_2!12965 (h!28609 (zeroValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13752 true) setRest!13752))))

(declare-fun setIsEmpty!13752 () Bool)

(assert (=> setIsEmpty!13752 setRes!13752))

(assert (= b!2105017 b!2105019))

(assert (= (and b!2105017 condSetEmpty!13752) setIsEmpty!13752))

(assert (= (and b!2105017 (not condSetEmpty!13752)) setNonEmpty!13752))

(assert (= setNonEmpty!13752 b!2105018))

(assert (= (and b!2104845 ((_ is Cons!23208) (zeroValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))) b!2105017))

(declare-fun m!2563721 () Bool)

(assert (=> b!2105017 m!2563721))

(declare-fun m!2563723 () Bool)

(assert (=> setNonEmpty!13752 m!2563723))

(declare-fun setRes!13753 () Bool)

(declare-fun e!1337519 () Bool)

(declare-fun tp!637820 () Bool)

(declare-fun tp!637822 () Bool)

(declare-fun b!2105020 () Bool)

(declare-fun e!1337521 () Bool)

(assert (=> b!2105020 (= e!1337521 (and tp!637820 (inv!30737 (_2!12964 (_1!12965 (h!28609 (minValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))))) e!1337519 tp_is_empty!9363 setRes!13753 tp!637822))))

(declare-fun condSetEmpty!13753 () Bool)

(assert (=> b!2105020 (= condSetEmpty!13753 (= (_2!12965 (h!28609 (minValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun b!2105021 () Bool)

(declare-fun e!1337520 () Bool)

(declare-fun tp!637819 () Bool)

(assert (=> b!2105021 (= e!1337520 tp!637819)))

(assert (=> b!2104845 (= tp!637670 e!1337521)))

(declare-fun b!2105022 () Bool)

(declare-fun tp!637818 () Bool)

(assert (=> b!2105022 (= e!1337519 tp!637818)))

(declare-fun setElem!13753 () Context!2262)

(declare-fun setNonEmpty!13753 () Bool)

(declare-fun tp!637821 () Bool)

(assert (=> setNonEmpty!13753 (= setRes!13753 (and tp!637821 (inv!30737 setElem!13753) e!1337520))))

(declare-fun setRest!13753 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13753 (= (_2!12965 (h!28609 (minValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13753 true) setRest!13753))))

(declare-fun setIsEmpty!13753 () Bool)

(assert (=> setIsEmpty!13753 setRes!13753))

(assert (= b!2105020 b!2105022))

(assert (= (and b!2105020 condSetEmpty!13753) setIsEmpty!13753))

(assert (= (and b!2105020 (not condSetEmpty!13753)) setNonEmpty!13753))

(assert (= setNonEmpty!13753 b!2105021))

(assert (= (and b!2104845 ((_ is Cons!23208) (minValue!2489 (v!27773 (underlying!4657 (v!27774 (underlying!4658 (cache!2526 cacheDown!688)))))))) b!2105020))

(declare-fun m!2563725 () Bool)

(assert (=> b!2105020 m!2563725))

(declare-fun m!2563727 () Bool)

(assert (=> setNonEmpty!13753 m!2563727))

(declare-fun b!2105023 () Bool)

(declare-fun e!1337523 () Bool)

(declare-fun tp!637824 () Bool)

(assert (=> b!2105023 (= e!1337523 tp!637824)))

(declare-fun setIsEmpty!13754 () Bool)

(declare-fun setRes!13754 () Bool)

(assert (=> setIsEmpty!13754 setRes!13754))

(declare-fun e!1337524 () Bool)

(declare-fun b!2105024 () Bool)

(declare-fun tp!637826 () Bool)

(assert (=> b!2105024 (= e!1337524 (and (inv!30737 (_1!12966 (_1!12967 (h!28611 mapDefault!10783)))) e!1337523 tp_is_empty!9363 setRes!13754 tp!637826))))

(declare-fun condSetEmpty!13754 () Bool)

(assert (=> b!2105024 (= condSetEmpty!13754 (= (_2!12967 (h!28611 mapDefault!10783)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun tp!637825 () Bool)

(declare-fun setElem!13754 () Context!2262)

(declare-fun e!1337522 () Bool)

(declare-fun setNonEmpty!13754 () Bool)

(assert (=> setNonEmpty!13754 (= setRes!13754 (and tp!637825 (inv!30737 setElem!13754) e!1337522))))

(declare-fun setRest!13754 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13754 (= (_2!12967 (h!28611 mapDefault!10783)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13754 true) setRest!13754))))

(assert (=> b!2104855 (= tp!637679 e!1337524)))

(declare-fun b!2105025 () Bool)

(declare-fun tp!637823 () Bool)

(assert (=> b!2105025 (= e!1337522 tp!637823)))

(assert (= b!2105024 b!2105023))

(assert (= (and b!2105024 condSetEmpty!13754) setIsEmpty!13754))

(assert (= (and b!2105024 (not condSetEmpty!13754)) setNonEmpty!13754))

(assert (= setNonEmpty!13754 b!2105025))

(assert (= (and b!2104855 ((_ is Cons!23210) mapDefault!10783)) b!2105024))

(declare-fun m!2563729 () Bool)

(assert (=> b!2105024 m!2563729))

(declare-fun m!2563731 () Bool)

(assert (=> setNonEmpty!13754 m!2563731))

(declare-fun b!2105026 () Bool)

(declare-fun e!1337526 () Bool)

(declare-fun tp!637828 () Bool)

(assert (=> b!2105026 (= e!1337526 tp!637828)))

(declare-fun setIsEmpty!13755 () Bool)

(declare-fun setRes!13755 () Bool)

(assert (=> setIsEmpty!13755 setRes!13755))

(declare-fun e!1337527 () Bool)

(declare-fun b!2105027 () Bool)

(declare-fun tp!637830 () Bool)

(assert (=> b!2105027 (= e!1337527 (and (inv!30737 (_1!12966 (_1!12967 (h!28611 (zeroValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))))) e!1337526 tp_is_empty!9363 setRes!13755 tp!637830))))

(declare-fun condSetEmpty!13755 () Bool)

(assert (=> b!2105027 (= condSetEmpty!13755 (= (_2!12967 (h!28611 (zeroValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun tp!637829 () Bool)

(declare-fun e!1337525 () Bool)

(declare-fun setElem!13755 () Context!2262)

(declare-fun setNonEmpty!13755 () Bool)

(assert (=> setNonEmpty!13755 (= setRes!13755 (and tp!637829 (inv!30737 setElem!13755) e!1337525))))

(declare-fun setRest!13755 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13755 (= (_2!12967 (h!28611 (zeroValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13755 true) setRest!13755))))

(assert (=> b!2104840 (= tp!637677 e!1337527)))

(declare-fun b!2105028 () Bool)

(declare-fun tp!637827 () Bool)

(assert (=> b!2105028 (= e!1337525 tp!637827)))

(assert (= b!2105027 b!2105026))

(assert (= (and b!2105027 condSetEmpty!13755) setIsEmpty!13755))

(assert (= (and b!2105027 (not condSetEmpty!13755)) setNonEmpty!13755))

(assert (= setNonEmpty!13755 b!2105028))

(assert (= (and b!2104840 ((_ is Cons!23210) (zeroValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))) b!2105027))

(declare-fun m!2563733 () Bool)

(assert (=> b!2105027 m!2563733))

(declare-fun m!2563735 () Bool)

(assert (=> setNonEmpty!13755 m!2563735))

(declare-fun b!2105029 () Bool)

(declare-fun e!1337529 () Bool)

(declare-fun tp!637832 () Bool)

(assert (=> b!2105029 (= e!1337529 tp!637832)))

(declare-fun setIsEmpty!13756 () Bool)

(declare-fun setRes!13756 () Bool)

(assert (=> setIsEmpty!13756 setRes!13756))

(declare-fun tp!637834 () Bool)

(declare-fun e!1337530 () Bool)

(declare-fun b!2105030 () Bool)

(assert (=> b!2105030 (= e!1337530 (and (inv!30737 (_1!12966 (_1!12967 (h!28611 (minValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))))) e!1337529 tp_is_empty!9363 setRes!13756 tp!637834))))

(declare-fun condSetEmpty!13756 () Bool)

(assert (=> b!2105030 (= condSetEmpty!13756 (= (_2!12967 (h!28611 (minValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun setNonEmpty!13756 () Bool)

(declare-fun e!1337528 () Bool)

(declare-fun tp!637833 () Bool)

(declare-fun setElem!13756 () Context!2262)

(assert (=> setNonEmpty!13756 (= setRes!13756 (and tp!637833 (inv!30737 setElem!13756) e!1337528))))

(declare-fun setRest!13756 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13756 (= (_2!12967 (h!28611 (minValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13756 true) setRest!13756))))

(assert (=> b!2104840 (= tp!637686 e!1337530)))

(declare-fun b!2105031 () Bool)

(declare-fun tp!637831 () Bool)

(assert (=> b!2105031 (= e!1337528 tp!637831)))

(assert (= b!2105030 b!2105029))

(assert (= (and b!2105030 condSetEmpty!13756) setIsEmpty!13756))

(assert (= (and b!2105030 (not condSetEmpty!13756)) setNonEmpty!13756))

(assert (= setNonEmpty!13756 b!2105031))

(assert (= (and b!2104840 ((_ is Cons!23210) (minValue!2490 (v!27775 (underlying!4659 (v!27776 (underlying!4660 (cache!2527 cacheUp!675)))))))) b!2105030))

(declare-fun m!2563737 () Bool)

(assert (=> b!2105030 m!2563737))

(declare-fun m!2563739 () Bool)

(assert (=> setNonEmpty!13756 m!2563739))

(declare-fun tp!637835 () Bool)

(declare-fun e!1337532 () Bool)

(declare-fun tp!637837 () Bool)

(declare-fun b!2105032 () Bool)

(assert (=> b!2105032 (= e!1337532 (and (inv!30730 (left!18125 (c!338853 input!1444))) tp!637835 (inv!30730 (right!18455 (c!338853 input!1444))) tp!637837))))

(declare-fun b!2105034 () Bool)

(declare-fun e!1337531 () Bool)

(declare-fun tp!637836 () Bool)

(assert (=> b!2105034 (= e!1337531 tp!637836)))

(declare-fun b!2105033 () Bool)

(assert (=> b!2105033 (= e!1337532 (and (inv!30738 (xs!10654 (c!338853 input!1444))) e!1337531))))

(assert (=> b!2104833 (= tp!637676 (and (inv!30730 (c!338853 input!1444)) e!1337532))))

(assert (= (and b!2104833 ((_ is Node!7712) (c!338853 input!1444))) b!2105032))

(assert (= b!2105033 b!2105034))

(assert (= (and b!2104833 ((_ is Leaf!11260) (c!338853 input!1444))) b!2105033))

(declare-fun m!2563741 () Bool)

(assert (=> b!2105032 m!2563741))

(declare-fun m!2563743 () Bool)

(assert (=> b!2105032 m!2563743))

(declare-fun m!2563745 () Bool)

(assert (=> b!2105033 m!2563745))

(assert (=> b!2104833 m!2563577))

(declare-fun setRes!13757 () Bool)

(declare-fun b!2105035 () Bool)

(declare-fun tp!637840 () Bool)

(declare-fun tp!637842 () Bool)

(declare-fun e!1337535 () Bool)

(declare-fun e!1337533 () Bool)

(assert (=> b!2105035 (= e!1337535 (and tp!637840 (inv!30737 (_2!12964 (_1!12965 (h!28609 mapDefault!10782)))) e!1337533 tp_is_empty!9363 setRes!13757 tp!637842))))

(declare-fun condSetEmpty!13757 () Bool)

(assert (=> b!2105035 (= condSetEmpty!13757 (= (_2!12965 (h!28609 mapDefault!10782)) ((as const (Array Context!2262 Bool)) false)))))

(declare-fun b!2105036 () Bool)

(declare-fun e!1337534 () Bool)

(declare-fun tp!637839 () Bool)

(assert (=> b!2105036 (= e!1337534 tp!637839)))

(assert (=> b!2104852 (= tp!637685 e!1337535)))

(declare-fun b!2105037 () Bool)

(declare-fun tp!637838 () Bool)

(assert (=> b!2105037 (= e!1337533 tp!637838)))

(declare-fun setElem!13757 () Context!2262)

(declare-fun setNonEmpty!13757 () Bool)

(declare-fun tp!637841 () Bool)

(assert (=> setNonEmpty!13757 (= setRes!13757 (and tp!637841 (inv!30737 setElem!13757) e!1337534))))

(declare-fun setRest!13757 () (InoxSet Context!2262))

(assert (=> setNonEmpty!13757 (= (_2!12965 (h!28609 mapDefault!10782)) ((_ map or) (store ((as const (Array Context!2262 Bool)) false) setElem!13757 true) setRest!13757))))

(declare-fun setIsEmpty!13757 () Bool)

(assert (=> setIsEmpty!13757 setRes!13757))

(assert (= b!2105035 b!2105037))

(assert (= (and b!2105035 condSetEmpty!13757) setIsEmpty!13757))

(assert (= (and b!2105035 (not condSetEmpty!13757)) setNonEmpty!13757))

(assert (= setNonEmpty!13757 b!2105036))

(assert (= (and b!2104852 ((_ is Cons!23208) mapDefault!10782)) b!2105035))

(declare-fun m!2563747 () Bool)

(assert (=> b!2105035 m!2563747))

(declare-fun m!2563749 () Bool)

(assert (=> setNonEmpty!13757 m!2563749))

(check-sat (not b!2105016) b_and!169979 (not b!2105036) b_and!169975 (not b!2104889) (not b!2104866) (not b!2105000) b_and!169973 (not b!2104908) (not setNonEmpty!13752) (not b!2105029) (not setNonEmpty!13757) (not b!2104934) (not b!2104864) (not setNonEmpty!13748) (not b!2105034) (not b!2104935) (not b!2105030) (not setNonEmpty!13747) (not d!641608) (not d!641626) (not setNonEmpty!13753) (not b!2105037) (not setNonEmpty!13738) (not d!641614) (not b!2104905) (not b!2104904) (not b!2104883) (not b!2105015) (not b!2105019) (not b!2104937) (not b!2105002) (not b!2104848) (not setNonEmpty!13742) (not d!641638) (not b!2104906) (not b!2105021) (not b!2104983) (not b!2104884) (not b_next!61127) (not b_next!61113) (not b!2105022) (not mapNonEmpty!10789) (not d!641624) (not b!2104872) (not b!2105001) (not d!641636) (not b!2104958) (not b!2105017) (not b!2104833) (not b!2104984) (not b!2105027) (not setNonEmpty!13756) (not b!2104973) (not d!641634) (not b!2105014) (not b!2105003) (not b!2105004) (not b!2104972) (not b!2104949) (not b!2105026) (not b!2104913) (not b!2104916) (not d!641618) (not b!2105018) (not b!2105028) (not b!2104985) (not d!641600) (not setNonEmpty!13751) (not b!2105023) (not b!2104869) (not b!2104948) (not b!2105025) (not b!2104933) (not b_next!61121) (not b!2105020) (not setNonEmpty!13755) (not mapNonEmpty!10786) (not b!2105024) b_and!169971 b_and!169981 (not b_next!61115) (not b!2104907) (not b_next!61125) (not b!2104910) (not setNonEmpty!13754) (not b!2104938) (not b!2104882) b_and!169983 (not b!2104936) (not d!641632) (not b!2105032) (not b!2104918) (not b_next!61119) (not b!2104947) (not b_next!61117) (not b!2104917) (not b!2104959) (not b_next!61123) (not d!641598) (not d!641616) (not b!2105033) b_and!169977 tp_is_empty!9363 (not b!2105005) b_and!169985 (not b!2105035) (not b!2105031) (not b!2104974) (not b!2104890) (not setNonEmpty!13739))
(check-sat b_and!169973 b_and!169979 b_and!169975 (not b_next!61121) b_and!169971 b_and!169985 (not b_next!61127) (not b_next!61113) b_and!169981 (not b_next!61115) (not b_next!61125) b_and!169983 (not b_next!61119) (not b_next!61117) (not b_next!61123) b_and!169977)

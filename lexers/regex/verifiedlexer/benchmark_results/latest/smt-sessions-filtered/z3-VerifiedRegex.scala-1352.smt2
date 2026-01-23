; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71676 () Bool)

(assert start!71676)

(declare-fun b!773433 () Bool)

(declare-fun b_free!24573 () Bool)

(declare-fun b_next!24637 () Bool)

(assert (=> b!773433 (= b_free!24573 (not b_next!24637))))

(declare-fun tp!254347 () Bool)

(declare-fun b_and!72053 () Bool)

(assert (=> b!773433 (= tp!254347 b_and!72053)))

(declare-fun b!773435 () Bool)

(declare-fun b_free!24575 () Bool)

(declare-fun b_next!24639 () Bool)

(assert (=> b!773435 (= b_free!24575 (not b_next!24639))))

(declare-fun tp!254338 () Bool)

(declare-fun b_and!72055 () Bool)

(assert (=> b!773435 (= tp!254338 b_and!72055)))

(declare-fun b!773432 () Bool)

(declare-fun b_free!24577 () Bool)

(declare-fun b_next!24641 () Bool)

(assert (=> b!773432 (= b_free!24577 (not b_next!24641))))

(declare-fun tp!254355 () Bool)

(declare-fun b_and!72057 () Bool)

(assert (=> b!773432 (= tp!254355 b_and!72057)))

(declare-fun b!773430 () Bool)

(declare-fun b_free!24579 () Bool)

(declare-fun b_next!24643 () Bool)

(assert (=> b!773430 (= b_free!24579 (not b_next!24643))))

(declare-fun tp!254340 () Bool)

(declare-fun b_and!72059 () Bool)

(assert (=> b!773430 (= tp!254340 b_and!72059)))

(declare-fun b!773429 () Bool)

(declare-fun b_free!24581 () Bool)

(declare-fun b_next!24645 () Bool)

(assert (=> b!773429 (= b_free!24581 (not b_next!24645))))

(declare-fun tp!254336 () Bool)

(declare-fun b_and!72061 () Bool)

(assert (=> b!773429 (= tp!254336 b_and!72061)))

(declare-fun b_free!24583 () Bool)

(declare-fun b_next!24647 () Bool)

(assert (=> b!773429 (= b_free!24583 (not b_next!24647))))

(declare-fun tp!254361 () Bool)

(declare-fun b_and!72063 () Bool)

(assert (=> b!773429 (= tp!254361 b_and!72063)))

(declare-fun b!773443 () Bool)

(declare-fun b_free!24585 () Bool)

(declare-fun b_next!24649 () Bool)

(assert (=> b!773443 (= b_free!24585 (not b_next!24649))))

(declare-fun tp!254358 () Bool)

(declare-fun b_and!72065 () Bool)

(assert (=> b!773443 (= tp!254358 b_and!72065)))

(declare-fun b!773457 () Bool)

(declare-fun b_free!24587 () Bool)

(declare-fun b_next!24651 () Bool)

(assert (=> b!773457 (= b_free!24587 (not b_next!24651))))

(declare-fun tp!254350 () Bool)

(declare-fun b_and!72067 () Bool)

(assert (=> b!773457 (= tp!254350 b_and!72067)))

(declare-fun b!773422 () Bool)

(declare-fun e!498811 () Bool)

(declare-fun e!498788 () Bool)

(assert (=> b!773422 (= e!498811 e!498788)))

(declare-fun b!773423 () Bool)

(declare-fun e!498783 () Bool)

(declare-fun e!498787 () Bool)

(assert (=> b!773423 (= e!498783 e!498787)))

(declare-fun b!773424 () Bool)

(declare-fun e!498781 () Bool)

(declare-fun tp!254335 () Bool)

(declare-fun mapRes!5924 () Bool)

(assert (=> b!773424 (= e!498781 (and tp!254335 mapRes!5924))))

(declare-fun condMapEmpty!5924 () Bool)

(declare-datatypes ((C!4600 0))(
  ( (C!4601 (val!2530 Int)) )
))
(declare-datatypes ((Regex!1999 0))(
  ( (ElementMatch!1999 (c!130335 C!4600)) (Concat!3689 (regOne!4510 Regex!1999) (regTwo!4510 Regex!1999)) (EmptyExpr!1999) (Star!1999 (reg!2328 Regex!1999)) (EmptyLang!1999) (Union!1999 (regOne!4511 Regex!1999) (regTwo!4511 Regex!1999)) )
))
(declare-datatypes ((List!8672 0))(
  ( (Nil!8658) (Cons!8658 (h!14059 Regex!1999) (t!91954 List!8672)) )
))
(declare-datatypes ((Context!802 0))(
  ( (Context!803 (exprs!901 List!8672)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10150 0))(
  ( (tuple2!10151 (_1!5864 (InoxSet Context!802)) (_2!5864 Int)) )
))
(declare-datatypes ((tuple2!10152 0))(
  ( (tuple2!10153 (_1!5865 tuple2!10150) (_2!5865 Int)) )
))
(declare-datatypes ((List!8673 0))(
  ( (Nil!8659) (Cons!8659 (h!14060 tuple2!10152) (t!91955 List!8673)) )
))
(declare-datatypes ((array!4271 0))(
  ( (array!4272 (arr!1903 (Array (_ BitVec 32) List!8673)) (size!7039 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1186 0))(
  ( (HashableExt!1185 (__x!7007 Int)) )
))
(declare-datatypes ((List!8674 0))(
  ( (Nil!8660) (Cons!8660 (h!14061 C!4600) (t!91956 List!8674)) )
))
(declare-datatypes ((IArray!5793 0))(
  ( (IArray!5794 (innerList!2954 List!8674)) )
))
(declare-datatypes ((Conc!2896 0))(
  ( (Node!2896 (left!6418 Conc!2896) (right!6748 Conc!2896) (csize!6022 Int) (cheight!3107 Int)) (Leaf!4249 (xs!5583 IArray!5793) (csize!6023 Int)) (Empty!2896) )
))
(declare-datatypes ((array!4273 0))(
  ( (array!4274 (arr!1904 (Array (_ BitVec 32) (_ BitVec 64))) (size!7040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2428 0))(
  ( (LongMapFixedSize!2429 (defaultEntry!1570 Int) (mask!3098 (_ BitVec 32)) (extraKeys!1461 (_ BitVec 32)) (zeroValue!1471 List!8673) (minValue!1471 List!8673) (_size!2537 (_ BitVec 32)) (_keys!1508 array!4273) (_values!1493 array!4271) (_vacant!1275 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4797 0))(
  ( (Cell!4798 (v!18787 LongMapFixedSize!2428)) )
))
(declare-datatypes ((MutLongMap!1214 0))(
  ( (LongMap!1214 (underlying!2611 Cell!4797)) (MutLongMapExt!1213 (__x!7008 Int)) )
))
(declare-datatypes ((Cell!4799 0))(
  ( (Cell!4800 (v!18788 MutLongMap!1214)) )
))
(declare-datatypes ((MutableMap!1186 0))(
  ( (MutableMapExt!1185 (__x!7009 Int)) (HashMap!1186 (underlying!2612 Cell!4799) (hashF!3094 Hashable!1186) (_size!2538 (_ BitVec 32)) (defaultValue!1337 Int)) )
))
(declare-datatypes ((BalanceConc!5804 0))(
  ( (BalanceConc!5805 (c!130336 Conc!2896)) )
))
(declare-datatypes ((CacheFindLongestMatch!344 0))(
  ( (CacheFindLongestMatch!345 (cache!1573 MutableMap!1186) (totalInput!2136 BalanceConc!5804)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!344)

(declare-fun mapDefault!5926 () List!8673)

(assert (=> b!773424 (= condMapEmpty!5924 (= (arr!1903 (_values!1493 (v!18787 (underlying!2611 (v!18788 (underlying!2612 (cache!1573 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8673)) mapDefault!5926)))))

(declare-fun b!773425 () Bool)

(declare-fun e!498800 () Bool)

(declare-fun e!498805 () Bool)

(assert (=> b!773425 (= e!498800 e!498805)))

(declare-fun e!498785 () Bool)

(declare-fun e!498790 () Bool)

(declare-fun b!773426 () Bool)

(declare-fun e!498792 () Bool)

(declare-fun inv!10990 (BalanceConc!5804) Bool)

(assert (=> b!773426 (= e!498785 (and e!498790 (inv!10990 (totalInput!2136 cacheFindLongestMatch!134)) e!498792))))

(declare-fun b!773427 () Bool)

(declare-fun e!498795 () Bool)

(declare-fun e!498808 () Bool)

(declare-datatypes ((tuple3!1008 0))(
  ( (tuple3!1009 (_1!5866 Regex!1999) (_2!5866 Context!802) (_3!789 C!4600)) )
))
(declare-datatypes ((tuple2!10154 0))(
  ( (tuple2!10155 (_1!5867 tuple3!1008) (_2!5867 (InoxSet Context!802))) )
))
(declare-datatypes ((List!8675 0))(
  ( (Nil!8661) (Cons!8661 (h!14062 tuple2!10154) (t!91957 List!8675)) )
))
(declare-datatypes ((array!4275 0))(
  ( (array!4276 (arr!1905 (Array (_ BitVec 32) List!8675)) (size!7041 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2430 0))(
  ( (LongMapFixedSize!2431 (defaultEntry!1571 Int) (mask!3099 (_ BitVec 32)) (extraKeys!1462 (_ BitVec 32)) (zeroValue!1472 List!8675) (minValue!1472 List!8675) (_size!2539 (_ BitVec 32)) (_keys!1509 array!4273) (_values!1494 array!4275) (_vacant!1276 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4801 0))(
  ( (Cell!4802 (v!18789 LongMapFixedSize!2430)) )
))
(declare-datatypes ((MutLongMap!1215 0))(
  ( (LongMap!1215 (underlying!2613 Cell!4801)) (MutLongMapExt!1214 (__x!7010 Int)) )
))
(declare-fun lt!314065 () MutLongMap!1215)

(get-info :version)

(assert (=> b!773427 (= e!498795 (and e!498808 ((_ is LongMap!1215) lt!314065)))))

(declare-datatypes ((Cell!4803 0))(
  ( (Cell!4804 (v!18790 MutLongMap!1215)) )
))
(declare-datatypes ((Hashable!1187 0))(
  ( (HashableExt!1186 (__x!7011 Int)) )
))
(declare-datatypes ((MutableMap!1187 0))(
  ( (MutableMapExt!1186 (__x!7012 Int)) (HashMap!1187 (underlying!2614 Cell!4803) (hashF!3095 Hashable!1187) (_size!2540 (_ BitVec 32)) (defaultValue!1338 Int)) )
))
(declare-datatypes ((CacheDown!680 0))(
  ( (CacheDown!681 (cache!1574 MutableMap!1187)) )
))
(declare-fun cacheDown!666 () CacheDown!680)

(assert (=> b!773427 (= lt!314065 (v!18790 (underlying!2614 (cache!1574 cacheDown!666))))))

(declare-fun b!773428 () Bool)

(declare-fun res!338637 () Bool)

(declare-fun e!498778 () Bool)

(assert (=> b!773428 (=> (not res!338637) (not e!498778))))

(declare-fun totalInput!472 () BalanceConc!5804)

(assert (=> b!773428 (= res!338637 (= (totalInput!2136 cacheFindLongestMatch!134) totalInput!472))))

(assert (=> b!773430 (= e!498805 (and e!498795 tp!254340))))

(declare-fun b!773431 () Bool)

(declare-fun e!498809 () Bool)

(declare-fun tp!254356 () Bool)

(declare-fun inv!10991 (Conc!2896) Bool)

(assert (=> b!773431 (= e!498809 (and (inv!10991 (c!130336 totalInput!472)) tp!254356))))

(declare-fun e!498801 () Bool)

(declare-fun tp!254357 () Bool)

(declare-fun e!498780 () Bool)

(declare-fun tp!254359 () Bool)

(declare-fun array_inv!1382 (array!4273) Bool)

(declare-fun array_inv!1383 (array!4275) Bool)

(assert (=> b!773432 (= e!498801 (and tp!254355 tp!254357 tp!254359 (array_inv!1382 (_keys!1509 (v!18789 (underlying!2613 (v!18790 (underlying!2614 (cache!1574 cacheDown!666))))))) (array_inv!1383 (_values!1494 (v!18789 (underlying!2613 (v!18790 (underlying!2614 (cache!1574 cacheDown!666))))))) e!498780))))

(declare-fun mapNonEmpty!5924 () Bool)

(declare-fun mapRes!5925 () Bool)

(declare-fun tp!254342 () Bool)

(declare-fun tp!254345 () Bool)

(assert (=> mapNonEmpty!5924 (= mapRes!5925 (and tp!254342 tp!254345))))

(declare-datatypes ((tuple2!10156 0))(
  ( (tuple2!10157 (_1!5868 Context!802) (_2!5868 C!4600)) )
))
(declare-datatypes ((tuple2!10158 0))(
  ( (tuple2!10159 (_1!5869 tuple2!10156) (_2!5869 (InoxSet Context!802))) )
))
(declare-datatypes ((List!8676 0))(
  ( (Nil!8662) (Cons!8662 (h!14063 tuple2!10158) (t!91958 List!8676)) )
))
(declare-fun mapValue!5926 () List!8676)

(declare-datatypes ((array!4277 0))(
  ( (array!4278 (arr!1906 (Array (_ BitVec 32) List!8676)) (size!7042 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2432 0))(
  ( (LongMapFixedSize!2433 (defaultEntry!1572 Int) (mask!3100 (_ BitVec 32)) (extraKeys!1463 (_ BitVec 32)) (zeroValue!1473 List!8676) (minValue!1473 List!8676) (_size!2541 (_ BitVec 32)) (_keys!1510 array!4273) (_values!1495 array!4277) (_vacant!1277 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4805 0))(
  ( (Cell!4806 (v!18791 LongMapFixedSize!2432)) )
))
(declare-datatypes ((MutLongMap!1216 0))(
  ( (LongMap!1216 (underlying!2615 Cell!4805)) (MutLongMapExt!1215 (__x!7013 Int)) )
))
(declare-datatypes ((Cell!4807 0))(
  ( (Cell!4808 (v!18792 MutLongMap!1216)) )
))
(declare-datatypes ((Hashable!1188 0))(
  ( (HashableExt!1187 (__x!7014 Int)) )
))
(declare-datatypes ((MutableMap!1188 0))(
  ( (MutableMapExt!1187 (__x!7015 Int)) (HashMap!1188 (underlying!2616 Cell!4807) (hashF!3096 Hashable!1188) (_size!2542 (_ BitVec 32)) (defaultValue!1339 Int)) )
))
(declare-datatypes ((CacheUp!674 0))(
  ( (CacheUp!675 (cache!1575 MutableMap!1188)) )
))
(declare-fun cacheUp!653 () CacheUp!674)

(declare-fun mapRest!5924 () (Array (_ BitVec 32) List!8676))

(declare-fun mapKey!5926 () (_ BitVec 32))

(assert (=> mapNonEmpty!5924 (= (arr!1906 (_values!1495 (v!18791 (underlying!2615 (v!18792 (underlying!2616 (cache!1575 cacheUp!653))))))) (store mapRest!5924 mapKey!5926 mapValue!5926))))

(declare-fun e!498789 () Bool)

(declare-fun e!498794 () Bool)

(assert (=> b!773433 (= e!498789 (and e!498794 tp!254347))))

(declare-fun b!773434 () Bool)

(declare-fun res!338635 () Bool)

(declare-fun e!498784 () Bool)

(assert (=> b!773434 (=> (not res!338635) (not e!498784))))

(declare-datatypes ((List!8677 0))(
  ( (Nil!8663) (Cons!8663 (h!14064 (_ BitVec 16)) (t!91959 List!8677)) )
))
(declare-datatypes ((TokenValue!1690 0))(
  ( (FloatLiteralValue!3380 (text!12275 List!8677)) (TokenValueExt!1689 (__x!7016 Int)) (Broken!8450 (value!52555 List!8677)) (Object!1703) (End!1690) (Def!1690) (Underscore!1690) (Match!1690) (Else!1690) (Error!1690) (Case!1690) (If!1690) (Extends!1690) (Abstract!1690) (Class!1690) (Val!1690) (DelimiterValue!3380 (del!1750 List!8677)) (KeywordValue!1696 (value!52556 List!8677)) (CommentValue!3380 (value!52557 List!8677)) (WhitespaceValue!3380 (value!52558 List!8677)) (IndentationValue!1690 (value!52559 List!8677)) (String!10203) (Int32!1690) (Broken!8451 (value!52560 List!8677)) (Boolean!1691) (Unit!13138) (OperatorValue!1693 (op!1750 List!8677)) (IdentifierValue!3380 (value!52561 List!8677)) (IdentifierValue!3381 (value!52562 List!8677)) (WhitespaceValue!3381 (value!52563 List!8677)) (True!3380) (False!3380) (Broken!8452 (value!52564 List!8677)) (Broken!8453 (value!52565 List!8677)) (True!3381) (RightBrace!1690) (RightBracket!1690) (Colon!1690) (Null!1690) (Comma!1690) (LeftBracket!1690) (False!3381) (LeftBrace!1690) (ImaginaryLiteralValue!1690 (text!12276 List!8677)) (StringLiteralValue!5070 (value!52566 List!8677)) (EOFValue!1690 (value!52567 List!8677)) (IdentValue!1690 (value!52568 List!8677)) (DelimiterValue!3381 (value!52569 List!8677)) (DedentValue!1690 (value!52570 List!8677)) (NewLineValue!1690 (value!52571 List!8677)) (IntegerValue!5070 (value!52572 (_ BitVec 32)) (text!12277 List!8677)) (IntegerValue!5071 (value!52573 Int) (text!12278 List!8677)) (Times!1690) (Or!1690) (Equal!1690) (Minus!1690) (Broken!8454 (value!52574 List!8677)) (And!1690) (Div!1690) (LessEqual!1690) (Mod!1690) (Concat!3690) (Not!1690) (Plus!1690) (SpaceValue!1690 (value!52575 List!8677)) (IntegerValue!5072 (value!52576 Int) (text!12279 List!8677)) (StringLiteralValue!5071 (text!12280 List!8677)) (FloatLiteralValue!3381 (text!12281 List!8677)) (BytesLiteralValue!1690 (value!52577 List!8677)) (CommentValue!3381 (value!52578 List!8677)) (StringLiteralValue!5072 (value!52579 List!8677)) (ErrorTokenValue!1690 (msg!1751 List!8677)) )
))
(declare-datatypes ((TokenValueInjection!3116 0))(
  ( (TokenValueInjection!3117 (toValue!2638 Int) (toChars!2497 Int)) )
))
(declare-datatypes ((String!10204 0))(
  ( (String!10205 (value!52580 String)) )
))
(declare-datatypes ((Rule!3092 0))(
  ( (Rule!3093 (regex!1646 Regex!1999) (tag!1908 String!10204) (isSeparator!1646 Bool) (transformation!1646 TokenValueInjection!3116)) )
))
(declare-datatypes ((List!8678 0))(
  ( (Nil!8664) (Cons!8664 (h!14065 Rule!3092) (t!91960 List!8678)) )
))
(declare-fun rulesArg!343 () List!8678)

(declare-fun isEmpty!5229 (List!8678) Bool)

(assert (=> b!773434 (= res!338635 (not (isEmpty!5229 rulesArg!343)))))

(declare-fun mapNonEmpty!5925 () Bool)

(declare-fun mapRes!5926 () Bool)

(declare-fun tp!254352 () Bool)

(declare-fun tp!254346 () Bool)

(assert (=> mapNonEmpty!5925 (= mapRes!5926 (and tp!254352 tp!254346))))

(declare-fun mapValue!5924 () List!8675)

(declare-fun mapKey!5925 () (_ BitVec 32))

(declare-fun mapRest!5925 () (Array (_ BitVec 32) List!8675))

(assert (=> mapNonEmpty!5925 (= (arr!1905 (_values!1494 (v!18789 (underlying!2613 (v!18790 (underlying!2614 (cache!1574 cacheDown!666))))))) (store mapRest!5925 mapKey!5925 mapValue!5924))))

(declare-fun tp!254344 () Bool)

(declare-fun tp!254337 () Bool)

(declare-fun e!498802 () Bool)

(declare-fun array_inv!1384 (array!4277) Bool)

(assert (=> b!773435 (= e!498788 (and tp!254338 tp!254344 tp!254337 (array_inv!1382 (_keys!1510 (v!18791 (underlying!2615 (v!18792 (underlying!2616 (cache!1575 cacheUp!653))))))) (array_inv!1384 (_values!1495 (v!18791 (underlying!2615 (v!18792 (underlying!2616 (cache!1575 cacheUp!653))))))) e!498802))))

(declare-fun b!773436 () Bool)

(declare-fun tp!254353 () Bool)

(assert (=> b!773436 (= e!498780 (and tp!254353 mapRes!5926))))

(declare-fun condMapEmpty!5926 () Bool)

(declare-fun mapDefault!5925 () List!8675)

(assert (=> b!773436 (= condMapEmpty!5926 (= (arr!1905 (_values!1494 (v!18789 (underlying!2613 (v!18790 (underlying!2614 (cache!1574 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8675)) mapDefault!5925)))))

(declare-fun b!773437 () Bool)

(declare-fun e!498779 () Bool)

(assert (=> b!773437 (= e!498779 e!498783)))

(declare-fun b!773438 () Bool)

(declare-fun e!498797 () Bool)

(assert (=> b!773438 (= e!498778 (not e!498797))))

(declare-fun res!338641 () Bool)

(assert (=> b!773438 (=> res!338641 e!498797)))

(assert (=> b!773438 (= res!338641 (or (and ((_ is Cons!8664) rulesArg!343) ((_ is Nil!8664) (t!91960 rulesArg!343))) (not ((_ is Cons!8664) rulesArg!343))))))

(declare-fun lt!314063 () List!8674)

(declare-fun isPrefix!999 (List!8674 List!8674) Bool)

(assert (=> b!773438 (isPrefix!999 lt!314063 lt!314063)))

(declare-datatypes ((Unit!13139 0))(
  ( (Unit!13140) )
))
(declare-fun lt!314059 () Unit!13139)

(declare-fun lemmaIsPrefixRefl!710 (List!8674 List!8674) Unit!13139)

(assert (=> b!773438 (= lt!314059 (lemmaIsPrefixRefl!710 lt!314063 lt!314063))))

(declare-fun b!773439 () Bool)

(declare-fun tp!254354 () Bool)

(assert (=> b!773439 (= e!498802 (and tp!254354 mapRes!5925))))

(declare-fun condMapEmpty!5925 () Bool)

(declare-fun mapDefault!5924 () List!8676)

(assert (=> b!773439 (= condMapEmpty!5925 (= (arr!1906 (_values!1495 (v!18791 (underlying!2615 (v!18792 (underlying!2616 (cache!1575 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8676)) mapDefault!5924)))))

(declare-fun mapIsEmpty!5924 () Bool)

(assert (=> mapIsEmpty!5924 mapRes!5926))

(declare-fun b!773440 () Bool)

(declare-fun e!498806 () Bool)

(assert (=> b!773440 (= e!498806 e!498801)))

(declare-fun b!773441 () Bool)

(declare-fun res!338640 () Bool)

(assert (=> b!773441 (=> (not res!338640) (not e!498784))))

(declare-datatypes ((LexerInterface!1448 0))(
  ( (LexerInterfaceExt!1445 (__x!7017 Int)) (Lexer!1446) )
))
(declare-fun thiss!15653 () LexerInterface!1448)

(declare-fun rulesValidInductive!590 (LexerInterface!1448 List!8678) Bool)

(assert (=> b!773441 (= res!338640 (rulesValidInductive!590 thiss!15653 rulesArg!343))))

(declare-fun b!773442 () Bool)

(declare-fun e!498782 () Bool)

(declare-fun e!498807 () Bool)

(declare-fun tp!254351 () Bool)

(assert (=> b!773442 (= e!498782 (and e!498807 tp!254351))))

(declare-fun tp!254348 () Bool)

(declare-fun tp!254339 () Bool)

(declare-fun array_inv!1385 (array!4271) Bool)

(assert (=> b!773443 (= e!498787 (and tp!254358 tp!254339 tp!254348 (array_inv!1382 (_keys!1508 (v!18787 (underlying!2611 (v!18788 (underlying!2612 (cache!1573 cacheFindLongestMatch!134))))))) (array_inv!1385 (_values!1493 (v!18787 (underlying!2611 (v!18788 (underlying!2612 (cache!1573 cacheFindLongestMatch!134))))))) e!498781))))

(declare-fun b!773444 () Bool)

(assert (=> b!773444 (= e!498797 true)))

(declare-fun input!1432 () BalanceConc!5804)

(declare-datatypes ((Token!2960 0))(
  ( (Token!2961 (value!52581 TokenValue!1690) (rule!2771 Rule!3092) (size!7043 Int) (originalCharacters!1905 List!8674)) )
))
(declare-datatypes ((tuple2!10160 0))(
  ( (tuple2!10161 (_1!5870 Token!2960) (_2!5870 BalanceConc!5804)) )
))
(declare-datatypes ((Option!1879 0))(
  ( (None!1878) (Some!1878 (v!18793 tuple2!10160)) )
))
(declare-datatypes ((tuple4!570 0))(
  ( (tuple4!571 (_1!5871 Option!1879) (_2!5871 CacheUp!674) (_3!790 CacheDown!680) (_4!285 CacheFindLongestMatch!344)) )
))
(declare-fun lt!314061 () tuple4!570)

(declare-fun lt!314064 () tuple4!570)

(declare-fun maxPrefixZipperSequenceV2Mem!82 (LexerInterface!1448 List!8678 BalanceConc!5804 BalanceConc!5804 CacheUp!674 CacheDown!680 CacheFindLongestMatch!344) tuple4!570)

(assert (=> b!773444 (= lt!314064 (maxPrefixZipperSequenceV2Mem!82 thiss!15653 (t!91960 rulesArg!343) input!1432 totalInput!472 (_2!5871 lt!314061) (_3!790 lt!314061) (_4!285 lt!314061)))))

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!70 (LexerInterface!1448 Rule!3092 BalanceConc!5804 BalanceConc!5804 CacheUp!674 CacheDown!680 CacheFindLongestMatch!344) tuple4!570)

(assert (=> b!773444 (= lt!314061 (maxPrefixOneRuleZipperSequenceV2Mem!70 thiss!15653 (h!14065 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!773445 () Bool)

(assert (=> b!773445 (= e!498784 e!498778)))

(declare-fun res!338642 () Bool)

(assert (=> b!773445 (=> (not res!338642) (not e!498778))))

(declare-fun isSuffix!224 (List!8674 List!8674) Bool)

(declare-fun list!3448 (BalanceConc!5804) List!8674)

(assert (=> b!773445 (= res!338642 (isSuffix!224 lt!314063 (list!3448 totalInput!472)))))

(assert (=> b!773445 (= lt!314063 (list!3448 input!1432))))

(declare-fun res!338638 () Bool)

(assert (=> start!71676 (=> (not res!338638) (not e!498784))))

(assert (=> start!71676 (= res!338638 ((_ is Lexer!1446) thiss!15653))))

(assert (=> start!71676 e!498784))

(assert (=> start!71676 e!498782))

(declare-fun e!498791 () Bool)

(assert (=> start!71676 (and (inv!10990 input!1432) e!498791)))

(declare-fun inv!10992 (CacheFindLongestMatch!344) Bool)

(assert (=> start!71676 (and (inv!10992 cacheFindLongestMatch!134) e!498785)))

(assert (=> start!71676 true))

(declare-fun e!498799 () Bool)

(declare-fun inv!10993 (CacheUp!674) Bool)

(assert (=> start!71676 (and (inv!10993 cacheUp!653) e!498799)))

(assert (=> start!71676 (and (inv!10990 totalInput!472) e!498809)))

(declare-fun inv!10994 (CacheDown!680) Bool)

(assert (=> start!71676 (and (inv!10994 cacheDown!666) e!498800)))

(declare-fun e!498810 () Bool)

(assert (=> b!773429 (= e!498810 (and tp!254336 tp!254361))))

(declare-fun mapIsEmpty!5925 () Bool)

(assert (=> mapIsEmpty!5925 mapRes!5924))

(declare-fun b!773446 () Bool)

(declare-fun res!338634 () Bool)

(assert (=> b!773446 (=> (not res!338634) (not e!498778))))

(declare-fun valid!979 (CacheFindLongestMatch!344) Bool)

(assert (=> b!773446 (= res!338634 (valid!979 cacheFindLongestMatch!134))))

(declare-fun b!773447 () Bool)

(declare-fun e!498796 () Bool)

(declare-fun lt!314062 () MutLongMap!1214)

(assert (=> b!773447 (= e!498796 (and e!498779 ((_ is LongMap!1214) lt!314062)))))

(assert (=> b!773447 (= lt!314062 (v!18788 (underlying!2612 (cache!1573 cacheFindLongestMatch!134))))))

(declare-fun b!773448 () Bool)

(assert (=> b!773448 (= e!498799 e!498789)))

(declare-fun b!773449 () Bool)

(declare-fun tp!254360 () Bool)

(assert (=> b!773449 (= e!498792 (and (inv!10991 (c!130336 (totalInput!2136 cacheFindLongestMatch!134))) tp!254360))))

(declare-fun mapNonEmpty!5926 () Bool)

(declare-fun tp!254362 () Bool)

(declare-fun tp!254343 () Bool)

(assert (=> mapNonEmpty!5926 (= mapRes!5924 (and tp!254362 tp!254343))))

(declare-fun mapValue!5925 () List!8673)

(declare-fun mapKey!5924 () (_ BitVec 32))

(declare-fun mapRest!5926 () (Array (_ BitVec 32) List!8673))

(assert (=> mapNonEmpty!5926 (= (arr!1903 (_values!1493 (v!18787 (underlying!2611 (v!18788 (underlying!2612 (cache!1573 cacheFindLongestMatch!134))))))) (store mapRest!5926 mapKey!5924 mapValue!5925))))

(declare-fun b!773450 () Bool)

(declare-fun e!498786 () Bool)

(declare-fun lt!314060 () MutLongMap!1216)

(assert (=> b!773450 (= e!498794 (and e!498786 ((_ is LongMap!1216) lt!314060)))))

(assert (=> b!773450 (= lt!314060 (v!18792 (underlying!2616 (cache!1575 cacheUp!653))))))

(declare-fun b!773451 () Bool)

(assert (=> b!773451 (= e!498786 e!498811)))

(declare-fun b!773452 () Bool)

(declare-fun tp!254341 () Bool)

(declare-fun inv!10989 (String!10204) Bool)

(declare-fun inv!10995 (TokenValueInjection!3116) Bool)

(assert (=> b!773452 (= e!498807 (and tp!254341 (inv!10989 (tag!1908 (h!14065 rulesArg!343))) (inv!10995 (transformation!1646 (h!14065 rulesArg!343))) e!498810))))

(declare-fun mapIsEmpty!5926 () Bool)

(assert (=> mapIsEmpty!5926 mapRes!5925))

(declare-fun b!773453 () Bool)

(declare-fun res!338636 () Bool)

(assert (=> b!773453 (=> (not res!338636) (not e!498778))))

(declare-fun valid!980 (CacheDown!680) Bool)

(assert (=> b!773453 (= res!338636 (valid!980 cacheDown!666))))

(declare-fun b!773454 () Bool)

(assert (=> b!773454 (= e!498808 e!498806)))

(declare-fun b!773455 () Bool)

(declare-fun res!338639 () Bool)

(assert (=> b!773455 (=> (not res!338639) (not e!498778))))

(declare-fun valid!981 (CacheUp!674) Bool)

(assert (=> b!773455 (= res!338639 (valid!981 cacheUp!653))))

(declare-fun b!773456 () Bool)

(declare-fun tp!254349 () Bool)

(assert (=> b!773456 (= e!498791 (and (inv!10991 (c!130336 input!1432)) tp!254349))))

(assert (=> b!773457 (= e!498790 (and e!498796 tp!254350))))

(assert (= (and start!71676 res!338638) b!773441))

(assert (= (and b!773441 res!338640) b!773434))

(assert (= (and b!773434 res!338635) b!773445))

(assert (= (and b!773445 res!338642) b!773455))

(assert (= (and b!773455 res!338639) b!773453))

(assert (= (and b!773453 res!338636) b!773446))

(assert (= (and b!773446 res!338634) b!773428))

(assert (= (and b!773428 res!338637) b!773438))

(assert (= (and b!773438 (not res!338641)) b!773444))

(assert (= b!773452 b!773429))

(assert (= b!773442 b!773452))

(assert (= (and start!71676 ((_ is Cons!8664) rulesArg!343)) b!773442))

(assert (= start!71676 b!773456))

(assert (= (and b!773424 condMapEmpty!5924) mapIsEmpty!5925))

(assert (= (and b!773424 (not condMapEmpty!5924)) mapNonEmpty!5926))

(assert (= b!773443 b!773424))

(assert (= b!773423 b!773443))

(assert (= b!773437 b!773423))

(assert (= (and b!773447 ((_ is LongMap!1214) (v!18788 (underlying!2612 (cache!1573 cacheFindLongestMatch!134))))) b!773437))

(assert (= b!773457 b!773447))

(assert (= (and b!773426 ((_ is HashMap!1186) (cache!1573 cacheFindLongestMatch!134))) b!773457))

(assert (= b!773426 b!773449))

(assert (= start!71676 b!773426))

(assert (= (and b!773439 condMapEmpty!5925) mapIsEmpty!5926))

(assert (= (and b!773439 (not condMapEmpty!5925)) mapNonEmpty!5924))

(assert (= b!773435 b!773439))

(assert (= b!773422 b!773435))

(assert (= b!773451 b!773422))

(assert (= (and b!773450 ((_ is LongMap!1216) (v!18792 (underlying!2616 (cache!1575 cacheUp!653))))) b!773451))

(assert (= b!773433 b!773450))

(assert (= (and b!773448 ((_ is HashMap!1188) (cache!1575 cacheUp!653))) b!773433))

(assert (= start!71676 b!773448))

(assert (= start!71676 b!773431))

(assert (= (and b!773436 condMapEmpty!5926) mapIsEmpty!5924))

(assert (= (and b!773436 (not condMapEmpty!5926)) mapNonEmpty!5925))

(assert (= b!773432 b!773436))

(assert (= b!773440 b!773432))

(assert (= b!773454 b!773440))

(assert (= (and b!773427 ((_ is LongMap!1215) (v!18790 (underlying!2614 (cache!1574 cacheDown!666))))) b!773454))

(assert (= b!773430 b!773427))

(assert (= (and b!773425 ((_ is HashMap!1187) (cache!1574 cacheDown!666))) b!773430))

(assert (= start!71676 b!773425))

(declare-fun m!1041303 () Bool)

(assert (=> mapNonEmpty!5924 m!1041303))

(declare-fun m!1041305 () Bool)

(assert (=> b!773456 m!1041305))

(declare-fun m!1041307 () Bool)

(assert (=> b!773443 m!1041307))

(declare-fun m!1041309 () Bool)

(assert (=> b!773443 m!1041309))

(declare-fun m!1041311 () Bool)

(assert (=> b!773426 m!1041311))

(declare-fun m!1041313 () Bool)

(assert (=> b!773435 m!1041313))

(declare-fun m!1041315 () Bool)

(assert (=> b!773435 m!1041315))

(declare-fun m!1041317 () Bool)

(assert (=> b!773455 m!1041317))

(declare-fun m!1041319 () Bool)

(assert (=> b!773434 m!1041319))

(declare-fun m!1041321 () Bool)

(assert (=> b!773431 m!1041321))

(declare-fun m!1041323 () Bool)

(assert (=> b!773449 m!1041323))

(declare-fun m!1041325 () Bool)

(assert (=> mapNonEmpty!5926 m!1041325))

(declare-fun m!1041327 () Bool)

(assert (=> start!71676 m!1041327))

(declare-fun m!1041329 () Bool)

(assert (=> start!71676 m!1041329))

(declare-fun m!1041331 () Bool)

(assert (=> start!71676 m!1041331))

(declare-fun m!1041333 () Bool)

(assert (=> start!71676 m!1041333))

(declare-fun m!1041335 () Bool)

(assert (=> start!71676 m!1041335))

(declare-fun m!1041337 () Bool)

(assert (=> b!773438 m!1041337))

(declare-fun m!1041339 () Bool)

(assert (=> b!773438 m!1041339))

(declare-fun m!1041341 () Bool)

(assert (=> b!773444 m!1041341))

(declare-fun m!1041343 () Bool)

(assert (=> b!773444 m!1041343))

(declare-fun m!1041345 () Bool)

(assert (=> b!773432 m!1041345))

(declare-fun m!1041347 () Bool)

(assert (=> b!773432 m!1041347))

(declare-fun m!1041349 () Bool)

(assert (=> b!773452 m!1041349))

(declare-fun m!1041351 () Bool)

(assert (=> b!773452 m!1041351))

(declare-fun m!1041353 () Bool)

(assert (=> b!773453 m!1041353))

(declare-fun m!1041355 () Bool)

(assert (=> b!773445 m!1041355))

(assert (=> b!773445 m!1041355))

(declare-fun m!1041357 () Bool)

(assert (=> b!773445 m!1041357))

(declare-fun m!1041359 () Bool)

(assert (=> b!773445 m!1041359))

(declare-fun m!1041361 () Bool)

(assert (=> b!773441 m!1041361))

(declare-fun m!1041363 () Bool)

(assert (=> b!773446 m!1041363))

(declare-fun m!1041365 () Bool)

(assert (=> mapNonEmpty!5925 m!1041365))

(check-sat (not b_next!24647) (not b!773424) b_and!72061 (not b_next!24643) (not mapNonEmpty!5926) (not b!773445) b_and!72065 b_and!72055 (not b!773431) (not mapNonEmpty!5925) (not b!773449) b_and!72067 (not b!773441) (not b!773452) (not b!773432) (not b_next!24641) (not b!773436) (not mapNonEmpty!5924) (not b!773446) (not start!71676) (not b!773456) b_and!72057 (not b!773455) (not b_next!24639) (not b!773453) (not b!773426) (not b!773434) (not b_next!24651) (not b!773439) (not b!773442) (not b!773435) b_and!72053 b_and!72063 (not b_next!24649) (not b_next!24645) (not b!773444) (not b_next!24637) (not b!773438) b_and!72059 (not b!773443))
(check-sat (not b_next!24641) (not b_next!24647) b_and!72057 b_and!72061 (not b_next!24643) (not b_next!24639) (not b_next!24651) b_and!72065 b_and!72055 b_and!72067 (not b_next!24637) b_and!72059 b_and!72053 b_and!72063 (not b_next!24649) (not b_next!24645))

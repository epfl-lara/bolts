; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206244 () Bool)

(assert start!206244)

(declare-fun b!2109508 () Bool)

(declare-fun b_free!60853 () Bool)

(declare-fun b_next!61557 () Bool)

(assert (=> b!2109508 (= b_free!60853 (not b_next!61557))))

(declare-fun tp!641399 () Bool)

(declare-fun b_and!170419 () Bool)

(assert (=> b!2109508 (= tp!641399 b_and!170419)))

(declare-fun b!2109506 () Bool)

(declare-fun b_free!60855 () Bool)

(declare-fun b_next!61559 () Bool)

(assert (=> b!2109506 (= b_free!60855 (not b_next!61559))))

(declare-fun tp!641406 () Bool)

(declare-fun b_and!170421 () Bool)

(assert (=> b!2109506 (= tp!641406 b_and!170421)))

(declare-fun b_free!60857 () Bool)

(declare-fun b_next!61561 () Bool)

(assert (=> b!2109506 (= b_free!60857 (not b_next!61561))))

(declare-fun tp!641411 () Bool)

(declare-fun b_and!170423 () Bool)

(assert (=> b!2109506 (= tp!641411 b_and!170423)))

(declare-fun b!2109496 () Bool)

(declare-fun b_free!60859 () Bool)

(declare-fun b_next!61563 () Bool)

(assert (=> b!2109496 (= b_free!60859 (not b_next!61563))))

(declare-fun tp!641402 () Bool)

(declare-fun b_and!170425 () Bool)

(assert (=> b!2109496 (= tp!641402 b_and!170425)))

(declare-fun b!2109483 () Bool)

(declare-fun b_free!60861 () Bool)

(declare-fun b_next!61565 () Bool)

(assert (=> b!2109483 (= b_free!60861 (not b_next!61565))))

(declare-fun tp!641412 () Bool)

(declare-fun b_and!170427 () Bool)

(assert (=> b!2109483 (= tp!641412 b_and!170427)))

(declare-fun b!2109494 () Bool)

(declare-fun b_free!60863 () Bool)

(declare-fun b_next!61567 () Bool)

(assert (=> b!2109494 (= b_free!60863 (not b_next!61567))))

(declare-fun tp!641415 () Bool)

(declare-fun b_and!170429 () Bool)

(assert (=> b!2109494 (= tp!641415 b_and!170429)))

(declare-fun b!2109482 () Bool)

(declare-fun e!1341463 () Bool)

(declare-datatypes ((C!11332 0))(
  ( (C!11333 (val!6652 Int)) )
))
(declare-datatypes ((List!23451 0))(
  ( (Nil!23367) (Cons!23367 (h!28768 C!11332) (t!195950 List!23451)) )
))
(declare-datatypes ((IArray!15483 0))(
  ( (IArray!15484 (innerList!7799 List!23451)) )
))
(declare-datatypes ((Conc!7739 0))(
  ( (Node!7739 (left!18186 Conc!7739) (right!18516 Conc!7739) (csize!15708 Int) (cheight!7950 Int)) (Leaf!11303 (xs!10681 IArray!15483) (csize!15709 Int)) (Empty!7739) )
))
(declare-datatypes ((BalanceConc!15240 0))(
  ( (BalanceConc!15241 (c!339020 Conc!7739)) )
))
(declare-fun input!1654 () BalanceConc!15240)

(declare-fun tp!641403 () Bool)

(declare-fun inv!30920 (Conc!7739) Bool)

(assert (=> b!2109482 (= e!1341463 (and (inv!30920 (c!339020 input!1654)) tp!641403))))

(declare-fun e!1341470 () Bool)

(declare-fun e!1341461 () Bool)

(assert (=> b!2109483 (= e!1341470 (and e!1341461 tp!641412))))

(declare-fun b!2109484 () Bool)

(declare-fun e!1341455 () Bool)

(declare-datatypes ((List!23452 0))(
  ( (Nil!23368) (Cons!23368 (h!28769 (_ BitVec 16)) (t!195951 List!23452)) )
))
(declare-datatypes ((TokenValue!4294 0))(
  ( (FloatLiteralValue!8588 (text!30503 List!23452)) (TokenValueExt!4293 (__x!15028 Int)) (Broken!21470 (value!130112 List!23452)) (Object!4377) (End!4294) (Def!4294) (Underscore!4294) (Match!4294) (Else!4294) (Error!4294) (Case!4294) (If!4294) (Extends!4294) (Abstract!4294) (Class!4294) (Val!4294) (DelimiterValue!8588 (del!4354 List!23452)) (KeywordValue!4300 (value!130113 List!23452)) (CommentValue!8588 (value!130114 List!23452)) (WhitespaceValue!8588 (value!130115 List!23452)) (IndentationValue!4294 (value!130116 List!23452)) (String!26675) (Int32!4294) (Broken!21471 (value!130117 List!23452)) (Boolean!4295) (Unit!37496) (OperatorValue!4297 (op!4354 List!23452)) (IdentifierValue!8588 (value!130118 List!23452)) (IdentifierValue!8589 (value!130119 List!23452)) (WhitespaceValue!8589 (value!130120 List!23452)) (True!8588) (False!8588) (Broken!21472 (value!130121 List!23452)) (Broken!21473 (value!130122 List!23452)) (True!8589) (RightBrace!4294) (RightBracket!4294) (Colon!4294) (Null!4294) (Comma!4294) (LeftBracket!4294) (False!8589) (LeftBrace!4294) (ImaginaryLiteralValue!4294 (text!30504 List!23452)) (StringLiteralValue!12882 (value!130123 List!23452)) (EOFValue!4294 (value!130124 List!23452)) (IdentValue!4294 (value!130125 List!23452)) (DelimiterValue!8589 (value!130126 List!23452)) (DedentValue!4294 (value!130127 List!23452)) (NewLineValue!4294 (value!130128 List!23452)) (IntegerValue!12882 (value!130129 (_ BitVec 32)) (text!30505 List!23452)) (IntegerValue!12883 (value!130130 Int) (text!30506 List!23452)) (Times!4294) (Or!4294) (Equal!4294) (Minus!4294) (Broken!21474 (value!130131 List!23452)) (And!4294) (Div!4294) (LessEqual!4294) (Mod!4294) (Concat!9887) (Not!4294) (Plus!4294) (SpaceValue!4294 (value!130132 List!23452)) (IntegerValue!12884 (value!130133 Int) (text!30507 List!23452)) (StringLiteralValue!12883 (text!30508 List!23452)) (FloatLiteralValue!8589 (text!30509 List!23452)) (BytesLiteralValue!4294 (value!130134 List!23452)) (CommentValue!8589 (value!130135 List!23452)) (StringLiteralValue!12884 (value!130136 List!23452)) (ErrorTokenValue!4294 (msg!4355 List!23452)) )
))
(declare-datatypes ((String!26676 0))(
  ( (String!26677 (value!130137 String)) )
))
(declare-datatypes ((Regex!5593 0))(
  ( (ElementMatch!5593 (c!339021 C!11332)) (Concat!9888 (regOne!11698 Regex!5593) (regTwo!11698 Regex!5593)) (EmptyExpr!5593) (Star!5593 (reg!5922 Regex!5593)) (EmptyLang!5593) (Union!5593 (regOne!11699 Regex!5593) (regTwo!11699 Regex!5593)) )
))
(declare-datatypes ((TokenValueInjection!8172 0))(
  ( (TokenValueInjection!8173 (toValue!5869 Int) (toChars!5728 Int)) )
))
(declare-datatypes ((Rule!8116 0))(
  ( (Rule!8117 (regex!4158 Regex!5593) (tag!4648 String!26676) (isSeparator!4158 Bool) (transformation!4158 TokenValueInjection!8172)) )
))
(declare-fun rule!236 () Rule!8116)

(declare-datatypes ((tuple2!22688 0))(
  ( (tuple2!22689 (_1!13129 List!23451) (_2!13129 List!23451)) )
))
(declare-fun lt!791922 () tuple2!22688)

(declare-fun matchR!2725 (Regex!5593 List!23451) Bool)

(assert (=> b!2109484 (= e!1341455 (matchR!2725 (regex!4158 rule!236) (_1!13129 lt!791922)))))

(declare-fun b!2109485 () Bool)

(declare-fun tp!641398 () Bool)

(declare-fun e!1341473 () Bool)

(declare-fun e!1341467 () Bool)

(declare-fun inv!30919 (String!26676) Bool)

(declare-fun inv!30921 (TokenValueInjection!8172) Bool)

(assert (=> b!2109485 (= e!1341467 (and tp!641398 (inv!30919 (tag!4648 rule!236)) (inv!30921 (transformation!4158 rule!236)) e!1341473))))

(declare-fun b!2109486 () Bool)

(declare-fun e!1341468 () Bool)

(declare-fun e!1341475 () Bool)

(assert (=> b!2109486 (= e!1341468 e!1341475)))

(declare-fun b!2109487 () Bool)

(declare-fun e!1341464 () Bool)

(assert (=> b!2109487 (= e!1341464 false)))

(declare-datatypes ((Token!7808 0))(
  ( (Token!7809 (value!130138 TokenValue!4294) (rule!6462 Rule!8116) (size!18232 Int) (originalCharacters!4935 List!23451)) )
))
(declare-datatypes ((tuple2!22690 0))(
  ( (tuple2!22691 (_1!13130 Token!7808) (_2!13130 BalanceConc!15240)) )
))
(declare-datatypes ((Option!4860 0))(
  ( (None!4859) (Some!4859 (v!27902 tuple2!22690)) )
))
(declare-fun lt!791923 () Option!4860)

(declare-fun e!1341460 () Option!4860)

(assert (=> b!2109487 (= lt!791923 e!1341460)))

(declare-fun c!339019 () Bool)

(declare-datatypes ((Hashable!2203 0))(
  ( (HashableExt!2202 (__x!15029 Int)) )
))
(declare-datatypes ((List!23453 0))(
  ( (Nil!23369) (Cons!23369 (h!28770 Regex!5593) (t!195952 List!23453)) )
))
(declare-datatypes ((Context!2326 0))(
  ( (Context!2327 (exprs!1663 List!23453)) )
))
(declare-datatypes ((tuple2!22692 0))(
  ( (tuple2!22693 (_1!13131 Context!2326) (_2!13131 C!11332)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22694 0))(
  ( (tuple2!22695 (_1!13132 tuple2!22692) (_2!13132 (InoxSet Context!2326))) )
))
(declare-datatypes ((List!23454 0))(
  ( (Nil!23370) (Cons!23370 (h!28771 tuple2!22694) (t!195953 List!23454)) )
))
(declare-datatypes ((array!7908 0))(
  ( (array!7909 (arr!3503 (Array (_ BitVec 32) (_ BitVec 64))) (size!18233 (_ BitVec 32))) )
))
(declare-datatypes ((array!7910 0))(
  ( (array!7911 (arr!3504 (Array (_ BitVec 32) List!23454)) (size!18234 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4578 0))(
  ( (LongMapFixedSize!4579 (defaultEntry!2654 Int) (mask!6401 (_ BitVec 32)) (extraKeys!2537 (_ BitVec 32)) (zeroValue!2547 List!23454) (minValue!2547 List!23454) (_size!4629 (_ BitVec 32)) (_keys!2586 array!7908) (_values!2569 array!7910) (_vacant!2350 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8981 0))(
  ( (Cell!8982 (v!27903 LongMapFixedSize!4578)) )
))
(declare-datatypes ((MutLongMap!2289 0))(
  ( (LongMap!2289 (underlying!4773 Cell!8981)) (MutLongMapExt!2288 (__x!15030 Int)) )
))
(declare-datatypes ((Cell!8983 0))(
  ( (Cell!8984 (v!27904 MutLongMap!2289)) )
))
(declare-datatypes ((Hashable!2204 0))(
  ( (HashableExt!2203 (__x!15031 Int)) )
))
(declare-datatypes ((MutableMap!2203 0))(
  ( (MutableMapExt!2202 (__x!15032 Int)) (HashMap!2203 (underlying!4774 Cell!8983) (hashF!4126 Hashable!2204) (_size!4630 (_ BitVec 32)) (defaultValue!2365 Int)) )
))
(declare-datatypes ((CacheUp!1498 0))(
  ( (CacheUp!1499 (cache!2584 MutableMap!2203)) )
))
(declare-datatypes ((tuple2!22696 0))(
  ( (tuple2!22697 (_1!13133 BalanceConc!15240) (_2!13133 BalanceConc!15240)) )
))
(declare-datatypes ((tuple3!2642 0))(
  ( (tuple3!2643 (_1!13134 Regex!5593) (_2!13134 Context!2326) (_3!1785 C!11332)) )
))
(declare-datatypes ((tuple2!22698 0))(
  ( (tuple2!22699 (_1!13135 tuple3!2642) (_2!13135 (InoxSet Context!2326))) )
))
(declare-datatypes ((List!23455 0))(
  ( (Nil!23371) (Cons!23371 (h!28772 tuple2!22698) (t!195954 List!23455)) )
))
(declare-datatypes ((array!7912 0))(
  ( (array!7913 (arr!3505 (Array (_ BitVec 32) List!23455)) (size!18235 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4580 0))(
  ( (LongMapFixedSize!4581 (defaultEntry!2655 Int) (mask!6402 (_ BitVec 32)) (extraKeys!2538 (_ BitVec 32)) (zeroValue!2548 List!23455) (minValue!2548 List!23455) (_size!4631 (_ BitVec 32)) (_keys!2587 array!7908) (_values!2570 array!7912) (_vacant!2351 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8985 0))(
  ( (Cell!8986 (v!27905 LongMapFixedSize!4580)) )
))
(declare-datatypes ((MutLongMap!2290 0))(
  ( (LongMap!2290 (underlying!4775 Cell!8985)) (MutLongMapExt!2289 (__x!15033 Int)) )
))
(declare-datatypes ((Cell!8987 0))(
  ( (Cell!8988 (v!27906 MutLongMap!2290)) )
))
(declare-datatypes ((MutableMap!2204 0))(
  ( (MutableMapExt!2203 (__x!15034 Int)) (HashMap!2204 (underlying!4776 Cell!8987) (hashF!4127 Hashable!2203) (_size!4632 (_ BitVec 32)) (defaultValue!2366 Int)) )
))
(declare-datatypes ((CacheDown!1502 0))(
  ( (CacheDown!1503 (cache!2585 MutableMap!2204)) )
))
(declare-datatypes ((tuple3!2644 0))(
  ( (tuple3!2645 (_1!13136 tuple2!22696) (_2!13136 CacheUp!1498) (_3!1786 CacheDown!1502)) )
))
(declare-fun lt!791921 () tuple3!2644)

(declare-fun isEmpty!14293 (BalanceConc!15240) Bool)

(assert (=> b!2109487 (= c!339019 (isEmpty!14293 (_1!13133 (_1!13136 lt!791921))))))

(declare-fun b!2109488 () Bool)

(declare-fun res!916473 () Bool)

(declare-fun e!1341457 () Bool)

(assert (=> b!2109488 (=> (not res!916473) (not e!1341457))))

(declare-datatypes ((LexerInterface!3756 0))(
  ( (LexerInterfaceExt!3753 (__x!15035 Int)) (Lexer!3754) )
))
(declare-fun thiss!16399 () LexerInterface!3756)

(declare-fun ruleValid!1281 (LexerInterface!3756 Rule!8116) Bool)

(assert (=> b!2109488 (= res!916473 (ruleValid!1281 thiss!16399 rule!236))))

(declare-fun b!2109489 () Bool)

(declare-fun e!1341465 () Bool)

(declare-fun lt!791919 () MutLongMap!2290)

(get-info :version)

(assert (=> b!2109489 (= e!1341461 (and e!1341465 ((_ is LongMap!2290) lt!791919)))))

(declare-fun cacheDown!753 () CacheDown!1502)

(assert (=> b!2109489 (= lt!791919 (v!27906 (underlying!4776 (cache!2585 cacheDown!753))))))

(declare-fun b!2109490 () Bool)

(declare-fun e!1341477 () Bool)

(assert (=> b!2109490 (= e!1341465 e!1341477)))

(declare-fun mapNonEmpty!11054 () Bool)

(declare-fun mapRes!11055 () Bool)

(declare-fun tp!641410 () Bool)

(declare-fun tp!641407 () Bool)

(assert (=> mapNonEmpty!11054 (= mapRes!11055 (and tp!641410 tp!641407))))

(declare-fun mapValue!11054 () List!23455)

(declare-fun mapKey!11054 () (_ BitVec 32))

(declare-fun mapRest!11054 () (Array (_ BitVec 32) List!23455))

(assert (=> mapNonEmpty!11054 (= (arr!3505 (_values!2570 (v!27905 (underlying!4775 (v!27906 (underlying!4776 (cache!2585 cacheDown!753))))))) (store mapRest!11054 mapKey!11054 mapValue!11054))))

(declare-fun b!2109492 () Bool)

(declare-fun e!1341459 () Bool)

(assert (=> b!2109492 (= e!1341459 e!1341468)))

(declare-fun b!2109493 () Bool)

(declare-fun e!1341454 () Bool)

(declare-fun tp!641404 () Bool)

(assert (=> b!2109493 (= e!1341454 (and tp!641404 mapRes!11055))))

(declare-fun condMapEmpty!11054 () Bool)

(declare-fun mapDefault!11055 () List!23455)

(assert (=> b!2109493 (= condMapEmpty!11054 (= (arr!3505 (_values!2570 (v!27905 (underlying!4775 (v!27906 (underlying!4776 (cache!2585 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23455)) mapDefault!11055)))))

(declare-fun tp!641413 () Bool)

(declare-fun cacheUp!740 () CacheUp!1498)

(declare-fun tp!641400 () Bool)

(declare-fun e!1341472 () Bool)

(declare-fun array_inv!2520 (array!7908) Bool)

(declare-fun array_inv!2521 (array!7910) Bool)

(assert (=> b!2109494 (= e!1341475 (and tp!641415 tp!641400 tp!641413 (array_inv!2520 (_keys!2586 (v!27903 (underlying!4773 (v!27904 (underlying!4774 (cache!2584 cacheUp!740))))))) (array_inv!2521 (_values!2569 (v!27903 (underlying!4773 (v!27904 (underlying!4774 (cache!2584 cacheUp!740))))))) e!1341472))))

(declare-fun b!2109495 () Bool)

(declare-fun e!1341471 () Bool)

(declare-fun totalInput!548 () BalanceConc!15240)

(declare-fun tp!641414 () Bool)

(assert (=> b!2109495 (= e!1341471 (and (inv!30920 (c!339020 totalInput!548)) tp!641414))))

(declare-fun mapIsEmpty!11054 () Bool)

(declare-fun mapRes!11054 () Bool)

(assert (=> mapIsEmpty!11054 mapRes!11054))

(declare-fun e!1341456 () Bool)

(declare-fun e!1341458 () Bool)

(assert (=> b!2109496 (= e!1341456 (and e!1341458 tp!641402))))

(declare-fun b!2109497 () Bool)

(assert (=> b!2109497 (= e!1341460 None!4859)))

(declare-fun mapNonEmpty!11055 () Bool)

(declare-fun tp!641401 () Bool)

(declare-fun tp!641416 () Bool)

(assert (=> mapNonEmpty!11055 (= mapRes!11054 (and tp!641401 tp!641416))))

(declare-fun mapRest!11055 () (Array (_ BitVec 32) List!23454))

(declare-fun mapKey!11055 () (_ BitVec 32))

(declare-fun mapValue!11055 () List!23454)

(assert (=> mapNonEmpty!11055 (= (arr!3504 (_values!2569 (v!27903 (underlying!4773 (v!27904 (underlying!4774 (cache!2584 cacheUp!740))))))) (store mapRest!11055 mapKey!11055 mapValue!11055))))

(declare-fun b!2109498 () Bool)

(declare-fun e!1341469 () Bool)

(assert (=> b!2109498 (= e!1341469 e!1341470)))

(declare-fun b!2109499 () Bool)

(declare-fun tp!641405 () Bool)

(assert (=> b!2109499 (= e!1341472 (and tp!641405 mapRes!11054))))

(declare-fun condMapEmpty!11055 () Bool)

(declare-fun mapDefault!11054 () List!23454)

(assert (=> b!2109499 (= condMapEmpty!11055 (= (arr!3504 (_values!2569 (v!27903 (underlying!4773 (v!27904 (underlying!4774 (cache!2584 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23454)) mapDefault!11054)))))

(declare-fun b!2109500 () Bool)

(declare-fun e!1341462 () Bool)

(assert (=> b!2109500 (= e!1341457 e!1341462)))

(declare-fun res!916470 () Bool)

(assert (=> b!2109500 (=> (not res!916470) (not e!1341462))))

(declare-fun lt!791918 () List!23451)

(declare-fun isSuffix!572 (List!23451 List!23451) Bool)

(declare-fun list!9465 (BalanceConc!15240) List!23451)

(assert (=> b!2109500 (= res!916470 (isSuffix!572 lt!791918 (list!9465 totalInput!548)))))

(assert (=> b!2109500 (= lt!791918 (list!9465 input!1654))))

(declare-fun b!2109501 () Bool)

(declare-fun apply!5899 (TokenValueInjection!8172 BalanceConc!15240) TokenValue!4294)

(declare-fun size!18236 (BalanceConc!15240) Int)

(assert (=> b!2109501 (= e!1341460 (Some!4859 (tuple2!22691 (Token!7809 (apply!5899 (transformation!4158 rule!236) (_1!13133 (_1!13136 lt!791921))) rule!236 (size!18236 (_1!13133 (_1!13136 lt!791921))) (list!9465 (_1!13133 (_1!13136 lt!791921)))) (_2!13133 (_1!13136 lt!791921)))))))

(declare-datatypes ((Unit!37497 0))(
  ( (Unit!37498) )
))
(declare-fun lt!791924 () Unit!37497)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!575 (Regex!5593 List!23451) Unit!37497)

(assert (=> b!2109501 (= lt!791924 (longestMatchIsAcceptedByMatchOrIsEmpty!575 (regex!4158 rule!236) lt!791918))))

(declare-fun findLongestMatchInner!591 (Regex!5593 List!23451 Int List!23451 List!23451 Int) tuple2!22688)

(declare-fun size!18237 (List!23451) Int)

(assert (=> b!2109501 (= lt!791922 (findLongestMatchInner!591 (regex!4158 rule!236) Nil!23367 (size!18237 Nil!23367) lt!791918 lt!791918 (size!18237 lt!791918)))))

(declare-fun res!916472 () Bool)

(declare-fun isEmpty!14294 (List!23451) Bool)

(assert (=> b!2109501 (= res!916472 (isEmpty!14294 (_1!13129 lt!791922)))))

(assert (=> b!2109501 (=> res!916472 e!1341455)))

(assert (=> b!2109501 e!1341455))

(declare-fun lt!791925 () Unit!37497)

(declare-fun lemmaSemiInverse!989 (TokenValueInjection!8172 BalanceConc!15240) Unit!37497)

(assert (=> b!2109501 (= lt!791925 (lemmaSemiInverse!989 (transformation!4158 rule!236) (_1!13133 (_1!13136 lt!791921))))))

(declare-fun b!2109502 () Bool)

(declare-fun e!1341474 () Bool)

(assert (=> b!2109502 (= e!1341477 e!1341474)))

(declare-fun b!2109491 () Bool)

(assert (=> b!2109491 (= e!1341462 e!1341464)))

(declare-fun res!916475 () Bool)

(assert (=> b!2109491 (=> (not res!916475) (not e!1341464))))

(declare-fun findLongestMatchWithZipperSequenceV2!64 (Regex!5593 BalanceConc!15240 BalanceConc!15240) tuple2!22696)

(assert (=> b!2109491 (= res!916475 (= (_1!13136 lt!791921) (findLongestMatchWithZipperSequenceV2!64 (regex!4158 rule!236) input!1654 totalInput!548)))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!38 (Regex!5593 BalanceConc!15240 BalanceConc!15240 CacheUp!1498 CacheDown!1502) tuple3!2644)

(assert (=> b!2109491 (= lt!791921 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!38 (regex!4158 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun res!916474 () Bool)

(assert (=> start!206244 (=> (not res!916474) (not e!1341457))))

(assert (=> start!206244 (= res!916474 ((_ is Lexer!3754) thiss!16399))))

(assert (=> start!206244 e!1341457))

(assert (=> start!206244 true))

(assert (=> start!206244 e!1341467))

(declare-fun inv!30922 (CacheDown!1502) Bool)

(assert (=> start!206244 (and (inv!30922 cacheDown!753) e!1341469)))

(declare-fun inv!30923 (BalanceConc!15240) Bool)

(assert (=> start!206244 (and (inv!30923 input!1654) e!1341463)))

(assert (=> start!206244 (and (inv!30923 totalInput!548) e!1341471)))

(declare-fun e!1341478 () Bool)

(declare-fun inv!30924 (CacheUp!1498) Bool)

(assert (=> start!206244 (and (inv!30924 cacheUp!740) e!1341478)))

(declare-fun mapIsEmpty!11055 () Bool)

(assert (=> mapIsEmpty!11055 mapRes!11055))

(declare-fun b!2109503 () Bool)

(assert (=> b!2109503 (= e!1341478 e!1341456)))

(declare-fun b!2109504 () Bool)

(declare-fun res!916471 () Bool)

(assert (=> b!2109504 (=> (not res!916471) (not e!1341457))))

(declare-fun valid!1809 (CacheDown!1502) Bool)

(assert (=> b!2109504 (= res!916471 (valid!1809 cacheDown!753))))

(declare-fun b!2109505 () Bool)

(declare-fun lt!791920 () MutLongMap!2289)

(assert (=> b!2109505 (= e!1341458 (and e!1341459 ((_ is LongMap!2289) lt!791920)))))

(assert (=> b!2109505 (= lt!791920 (v!27904 (underlying!4774 (cache!2584 cacheUp!740))))))

(assert (=> b!2109506 (= e!1341473 (and tp!641406 tp!641411))))

(declare-fun b!2109507 () Bool)

(declare-fun res!916469 () Bool)

(assert (=> b!2109507 (=> (not res!916469) (not e!1341457))))

(declare-fun valid!1810 (CacheUp!1498) Bool)

(assert (=> b!2109507 (= res!916469 (valid!1810 cacheUp!740))))

(declare-fun tp!641409 () Bool)

(declare-fun tp!641408 () Bool)

(declare-fun array_inv!2522 (array!7912) Bool)

(assert (=> b!2109508 (= e!1341474 (and tp!641399 tp!641409 tp!641408 (array_inv!2520 (_keys!2587 (v!27905 (underlying!4775 (v!27906 (underlying!4776 (cache!2585 cacheDown!753))))))) (array_inv!2522 (_values!2570 (v!27905 (underlying!4775 (v!27906 (underlying!4776 (cache!2585 cacheDown!753))))))) e!1341454))))

(assert (= (and start!206244 res!916474) b!2109488))

(assert (= (and b!2109488 res!916473) b!2109507))

(assert (= (and b!2109507 res!916469) b!2109504))

(assert (= (and b!2109504 res!916471) b!2109500))

(assert (= (and b!2109500 res!916470) b!2109491))

(assert (= (and b!2109491 res!916475) b!2109487))

(assert (= (and b!2109487 c!339019) b!2109497))

(assert (= (and b!2109487 (not c!339019)) b!2109501))

(assert (= (and b!2109501 (not res!916472)) b!2109484))

(assert (= b!2109485 b!2109506))

(assert (= start!206244 b!2109485))

(assert (= (and b!2109493 condMapEmpty!11054) mapIsEmpty!11055))

(assert (= (and b!2109493 (not condMapEmpty!11054)) mapNonEmpty!11054))

(assert (= b!2109508 b!2109493))

(assert (= b!2109502 b!2109508))

(assert (= b!2109490 b!2109502))

(assert (= (and b!2109489 ((_ is LongMap!2290) (v!27906 (underlying!4776 (cache!2585 cacheDown!753))))) b!2109490))

(assert (= b!2109483 b!2109489))

(assert (= (and b!2109498 ((_ is HashMap!2204) (cache!2585 cacheDown!753))) b!2109483))

(assert (= start!206244 b!2109498))

(assert (= start!206244 b!2109482))

(assert (= start!206244 b!2109495))

(assert (= (and b!2109499 condMapEmpty!11055) mapIsEmpty!11054))

(assert (= (and b!2109499 (not condMapEmpty!11055)) mapNonEmpty!11055))

(assert (= b!2109494 b!2109499))

(assert (= b!2109486 b!2109494))

(assert (= b!2109492 b!2109486))

(assert (= (and b!2109505 ((_ is LongMap!2289) (v!27904 (underlying!4774 (cache!2584 cacheUp!740))))) b!2109492))

(assert (= b!2109496 b!2109505))

(assert (= (and b!2109503 ((_ is HashMap!2203) (cache!2584 cacheUp!740))) b!2109496))

(assert (= start!206244 b!2109503))

(declare-fun m!2566773 () Bool)

(assert (=> start!206244 m!2566773))

(declare-fun m!2566775 () Bool)

(assert (=> start!206244 m!2566775))

(declare-fun m!2566777 () Bool)

(assert (=> start!206244 m!2566777))

(declare-fun m!2566779 () Bool)

(assert (=> start!206244 m!2566779))

(declare-fun m!2566781 () Bool)

(assert (=> b!2109484 m!2566781))

(declare-fun m!2566783 () Bool)

(assert (=> b!2109485 m!2566783))

(declare-fun m!2566785 () Bool)

(assert (=> b!2109485 m!2566785))

(declare-fun m!2566787 () Bool)

(assert (=> b!2109508 m!2566787))

(declare-fun m!2566789 () Bool)

(assert (=> b!2109508 m!2566789))

(declare-fun m!2566791 () Bool)

(assert (=> b!2109504 m!2566791))

(declare-fun m!2566793 () Bool)

(assert (=> b!2109501 m!2566793))

(declare-fun m!2566795 () Bool)

(assert (=> b!2109501 m!2566795))

(declare-fun m!2566797 () Bool)

(assert (=> b!2109501 m!2566797))

(declare-fun m!2566799 () Bool)

(assert (=> b!2109501 m!2566799))

(assert (=> b!2109501 m!2566797))

(declare-fun m!2566801 () Bool)

(assert (=> b!2109501 m!2566801))

(declare-fun m!2566803 () Bool)

(assert (=> b!2109501 m!2566803))

(declare-fun m!2566805 () Bool)

(assert (=> b!2109501 m!2566805))

(declare-fun m!2566807 () Bool)

(assert (=> b!2109501 m!2566807))

(declare-fun m!2566809 () Bool)

(assert (=> b!2109501 m!2566809))

(assert (=> b!2109501 m!2566801))

(declare-fun m!2566811 () Bool)

(assert (=> b!2109491 m!2566811))

(declare-fun m!2566813 () Bool)

(assert (=> b!2109491 m!2566813))

(declare-fun m!2566815 () Bool)

(assert (=> b!2109500 m!2566815))

(assert (=> b!2109500 m!2566815))

(declare-fun m!2566817 () Bool)

(assert (=> b!2109500 m!2566817))

(declare-fun m!2566819 () Bool)

(assert (=> b!2109500 m!2566819))

(declare-fun m!2566821 () Bool)

(assert (=> mapNonEmpty!11055 m!2566821))

(declare-fun m!2566823 () Bool)

(assert (=> b!2109494 m!2566823))

(declare-fun m!2566825 () Bool)

(assert (=> b!2109494 m!2566825))

(declare-fun m!2566827 () Bool)

(assert (=> b!2109488 m!2566827))

(declare-fun m!2566829 () Bool)

(assert (=> b!2109482 m!2566829))

(declare-fun m!2566831 () Bool)

(assert (=> b!2109507 m!2566831))

(declare-fun m!2566833 () Bool)

(assert (=> b!2109487 m!2566833))

(declare-fun m!2566835 () Bool)

(assert (=> mapNonEmpty!11054 m!2566835))

(declare-fun m!2566837 () Bool)

(assert (=> b!2109495 m!2566837))

(check-sat (not b_next!61557) (not b!2109493) b_and!170423 (not b!2109491) (not b_next!61565) (not b!2109507) (not b!2109495) (not b_next!61561) b_and!170425 (not b_next!61567) (not b_next!61563) b_and!170419 (not b!2109488) (not b_next!61559) (not b!2109500) (not b!2109501) (not b!2109499) (not b!2109482) (not mapNonEmpty!11054) (not b!2109504) b_and!170421 (not b!2109485) b_and!170429 (not b!2109494) b_and!170427 (not b!2109487) (not mapNonEmpty!11055) (not b!2109484) (not start!206244) (not b!2109508))
(check-sat (not b_next!61557) b_and!170419 (not b_next!61559) b_and!170421 b_and!170423 (not b_next!61565) b_and!170429 b_and!170427 (not b_next!61561) b_and!170425 (not b_next!61567) (not b_next!61563))

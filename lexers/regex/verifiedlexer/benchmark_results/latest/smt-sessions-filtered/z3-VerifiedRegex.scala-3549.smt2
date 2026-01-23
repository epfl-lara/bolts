; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205868 () Bool)

(assert start!205868)

(declare-fun b!2105526 () Bool)

(declare-fun b_free!60465 () Bool)

(declare-fun b_next!61169 () Bool)

(assert (=> b!2105526 (= b_free!60465 (not b_next!61169))))

(declare-fun tp!638234 () Bool)

(declare-fun b_and!170027 () Bool)

(assert (=> b!2105526 (= tp!638234 b_and!170027)))

(declare-fun b!2105522 () Bool)

(declare-fun b_free!60467 () Bool)

(declare-fun b_next!61171 () Bool)

(assert (=> b!2105522 (= b_free!60467 (not b_next!61171))))

(declare-fun tp!638221 () Bool)

(declare-fun b_and!170029 () Bool)

(assert (=> b!2105522 (= tp!638221 b_and!170029)))

(declare-fun b!2105529 () Bool)

(declare-fun b_free!60469 () Bool)

(declare-fun b_next!61173 () Bool)

(assert (=> b!2105529 (= b_free!60469 (not b_next!61173))))

(declare-fun tp!638233 () Bool)

(declare-fun b_and!170031 () Bool)

(assert (=> b!2105529 (= tp!638233 b_and!170031)))

(declare-fun b!2105521 () Bool)

(declare-fun b_free!60471 () Bool)

(declare-fun b_next!61175 () Bool)

(assert (=> b!2105521 (= b_free!60471 (not b_next!61175))))

(declare-fun tp!638219 () Bool)

(declare-fun b_and!170033 () Bool)

(assert (=> b!2105521 (= tp!638219 b_and!170033)))

(declare-fun b_free!60473 () Bool)

(declare-fun b_next!61177 () Bool)

(assert (=> b!2105521 (= b_free!60473 (not b_next!61177))))

(declare-fun tp!638229 () Bool)

(declare-fun b_and!170035 () Bool)

(assert (=> b!2105521 (= tp!638229 b_and!170035)))

(declare-fun b!2105527 () Bool)

(declare-fun b_free!60475 () Bool)

(declare-fun b_next!61179 () Bool)

(assert (=> b!2105527 (= b_free!60475 (not b_next!61179))))

(declare-fun tp!638220 () Bool)

(declare-fun b_and!170037 () Bool)

(assert (=> b!2105527 (= tp!638220 b_and!170037)))

(declare-fun b!2105510 () Bool)

(declare-fun res!915452 () Bool)

(declare-fun e!1337964 () Bool)

(assert (=> b!2105510 (=> (not res!915452) (not e!1337964))))

(declare-datatypes ((C!11276 0))(
  ( (C!11277 (val!6624 Int)) )
))
(declare-datatypes ((Regex!5565 0))(
  ( (ElementMatch!5565 (c!338873 C!11276)) (Concat!9836 (regOne!11642 Regex!5565) (regTwo!11642 Regex!5565)) (EmptyExpr!5565) (Star!5565 (reg!5894 Regex!5565)) (EmptyLang!5565) (Union!5565 (regOne!11643 Regex!5565) (regTwo!11643 Regex!5565)) )
))
(declare-datatypes ((List!23311 0))(
  ( (Nil!23227) (Cons!23227 (h!28628 Regex!5565) (t!195804 List!23311)) )
))
(declare-datatypes ((Context!2270 0))(
  ( (Context!2271 (exprs!1635 List!23311)) )
))
(declare-datatypes ((tuple2!22488 0))(
  ( (tuple2!22489 (_1!12988 Context!2270) (_2!12988 C!11276)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22490 0))(
  ( (tuple2!22491 (_1!12989 tuple2!22488) (_2!12989 (InoxSet Context!2270))) )
))
(declare-datatypes ((List!23312 0))(
  ( (Nil!23228) (Cons!23228 (h!28629 tuple2!22490) (t!195805 List!23312)) )
))
(declare-datatypes ((array!7723 0))(
  ( (array!7724 (arr!3424 (Array (_ BitVec 32) (_ BitVec 64))) (size!18130 (_ BitVec 32))) )
))
(declare-datatypes ((array!7725 0))(
  ( (array!7726 (arr!3425 (Array (_ BitVec 32) List!23312)) (size!18131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4476 0))(
  ( (LongMapFixedSize!4477 (defaultEntry!2603 Int) (mask!6336 (_ BitVec 32)) (extraKeys!2486 (_ BitVec 32)) (zeroValue!2496 List!23312) (minValue!2496 List!23312) (_size!4527 (_ BitVec 32)) (_keys!2535 array!7723) (_values!2518 array!7725) (_vacant!2299 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2152 0))(
  ( (HashableExt!2151 (__x!14830 Int)) )
))
(declare-datatypes ((Cell!8777 0))(
  ( (Cell!8778 (v!27789 LongMapFixedSize!4476)) )
))
(declare-datatypes ((MutLongMap!2238 0))(
  ( (LongMap!2238 (underlying!4671 Cell!8777)) (MutLongMapExt!2237 (__x!14831 Int)) )
))
(declare-datatypes ((Cell!8779 0))(
  ( (Cell!8780 (v!27790 MutLongMap!2238)) )
))
(declare-datatypes ((MutableMap!2152 0))(
  ( (MutableMapExt!2151 (__x!14832 Int)) (HashMap!2152 (underlying!4672 Cell!8779) (hashF!4075 Hashable!2152) (_size!4528 (_ BitVec 32)) (defaultValue!2314 Int)) )
))
(declare-datatypes ((CacheUp!1446 0))(
  ( (CacheUp!1447 (cache!2533 MutableMap!2152)) )
))
(declare-fun cacheUp!675 () CacheUp!1446)

(declare-fun valid!1775 (CacheUp!1446) Bool)

(assert (=> b!2105510 (= res!915452 (valid!1775 cacheUp!675))))

(declare-fun res!915448 () Bool)

(declare-fun e!1337972 () Bool)

(assert (=> start!205868 (=> (not res!915448) (not e!1337972))))

(declare-datatypes ((LexerInterface!3734 0))(
  ( (LexerInterfaceExt!3731 (__x!14833 Int)) (Lexer!3732) )
))
(declare-fun thiss!15689 () LexerInterface!3734)

(get-info :version)

(assert (=> start!205868 (= res!915448 ((_ is Lexer!3732) thiss!15689))))

(assert (=> start!205868 e!1337972))

(declare-fun e!1337966 () Bool)

(assert (=> start!205868 e!1337966))

(declare-datatypes ((List!23313 0))(
  ( (Nil!23229) (Cons!23229 (h!28630 C!11276) (t!195806 List!23313)) )
))
(declare-datatypes ((IArray!15435 0))(
  ( (IArray!15436 (innerList!7775 List!23313)) )
))
(declare-datatypes ((Conc!7715 0))(
  ( (Node!7715 (left!18134 Conc!7715) (right!18464 Conc!7715) (csize!15660 Int) (cheight!7926 Int)) (Leaf!11265 (xs!10657 IArray!15435) (csize!15661 Int)) (Empty!7715) )
))
(declare-datatypes ((BalanceConc!15192 0))(
  ( (BalanceConc!15193 (c!338874 Conc!7715)) )
))
(declare-fun totalInput!482 () BalanceConc!15192)

(declare-fun e!1337961 () Bool)

(declare-fun inv!30755 (BalanceConc!15192) Bool)

(assert (=> start!205868 (and (inv!30755 totalInput!482) e!1337961)))

(assert (=> start!205868 true))

(declare-fun input!1444 () BalanceConc!15192)

(declare-fun e!1337974 () Bool)

(assert (=> start!205868 (and (inv!30755 input!1444) e!1337974)))

(declare-fun e!1337975 () Bool)

(declare-fun inv!30756 (CacheUp!1446) Bool)

(assert (=> start!205868 (and (inv!30756 cacheUp!675) e!1337975)))

(declare-datatypes ((tuple3!2560 0))(
  ( (tuple3!2561 (_1!12990 Regex!5565) (_2!12990 Context!2270) (_3!1744 C!11276)) )
))
(declare-datatypes ((tuple2!22492 0))(
  ( (tuple2!22493 (_1!12991 tuple3!2560) (_2!12991 (InoxSet Context!2270))) )
))
(declare-datatypes ((List!23314 0))(
  ( (Nil!23230) (Cons!23230 (h!28631 tuple2!22492) (t!195807 List!23314)) )
))
(declare-datatypes ((array!7727 0))(
  ( (array!7728 (arr!3426 (Array (_ BitVec 32) List!23314)) (size!18132 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4478 0))(
  ( (LongMapFixedSize!4479 (defaultEntry!2604 Int) (mask!6337 (_ BitVec 32)) (extraKeys!2487 (_ BitVec 32)) (zeroValue!2497 List!23314) (minValue!2497 List!23314) (_size!4529 (_ BitVec 32)) (_keys!2536 array!7723) (_values!2519 array!7727) (_vacant!2300 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8781 0))(
  ( (Cell!8782 (v!27791 LongMapFixedSize!4478)) )
))
(declare-datatypes ((MutLongMap!2239 0))(
  ( (LongMap!2239 (underlying!4673 Cell!8781)) (MutLongMapExt!2238 (__x!14834 Int)) )
))
(declare-datatypes ((Cell!8783 0))(
  ( (Cell!8784 (v!27792 MutLongMap!2239)) )
))
(declare-datatypes ((Hashable!2153 0))(
  ( (HashableExt!2152 (__x!14835 Int)) )
))
(declare-datatypes ((MutableMap!2153 0))(
  ( (MutableMapExt!2152 (__x!14836 Int)) (HashMap!2153 (underlying!4674 Cell!8783) (hashF!4076 Hashable!2153) (_size!4530 (_ BitVec 32)) (defaultValue!2315 Int)) )
))
(declare-datatypes ((CacheDown!1452 0))(
  ( (CacheDown!1453 (cache!2534 MutableMap!2153)) )
))
(declare-fun cacheDown!688 () CacheDown!1452)

(declare-fun e!1337960 () Bool)

(declare-fun inv!30757 (CacheDown!1452) Bool)

(assert (=> start!205868 (and (inv!30757 cacheDown!688) e!1337960)))

(declare-fun mapIsEmpty!10818 () Bool)

(declare-fun mapRes!10819 () Bool)

(assert (=> mapIsEmpty!10818 mapRes!10819))

(declare-fun b!2105511 () Bool)

(declare-fun res!915450 () Bool)

(assert (=> b!2105511 (=> (not res!915450) (not e!1337972))))

(declare-datatypes ((List!23315 0))(
  ( (Nil!23231) (Cons!23231 (h!28632 (_ BitVec 16)) (t!195808 List!23315)) )
))
(declare-datatypes ((TokenValue!4271 0))(
  ( (FloatLiteralValue!8542 (text!30342 List!23315)) (TokenValueExt!4270 (__x!14837 Int)) (Broken!21355 (value!129464 List!23315)) (Object!4354) (End!4271) (Def!4271) (Underscore!4271) (Match!4271) (Else!4271) (Error!4271) (Case!4271) (If!4271) (Extends!4271) (Abstract!4271) (Class!4271) (Val!4271) (DelimiterValue!8542 (del!4331 List!23315)) (KeywordValue!4277 (value!129465 List!23315)) (CommentValue!8542 (value!129466 List!23315)) (WhitespaceValue!8542 (value!129467 List!23315)) (IndentationValue!4271 (value!129468 List!23315)) (String!26550) (Int32!4271) (Broken!21356 (value!129469 List!23315)) (Boolean!4272) (Unit!37455) (OperatorValue!4274 (op!4331 List!23315)) (IdentifierValue!8542 (value!129470 List!23315)) (IdentifierValue!8543 (value!129471 List!23315)) (WhitespaceValue!8543 (value!129472 List!23315)) (True!8542) (False!8542) (Broken!21357 (value!129473 List!23315)) (Broken!21358 (value!129474 List!23315)) (True!8543) (RightBrace!4271) (RightBracket!4271) (Colon!4271) (Null!4271) (Comma!4271) (LeftBracket!4271) (False!8543) (LeftBrace!4271) (ImaginaryLiteralValue!4271 (text!30343 List!23315)) (StringLiteralValue!12813 (value!129475 List!23315)) (EOFValue!4271 (value!129476 List!23315)) (IdentValue!4271 (value!129477 List!23315)) (DelimiterValue!8543 (value!129478 List!23315)) (DedentValue!4271 (value!129479 List!23315)) (NewLineValue!4271 (value!129480 List!23315)) (IntegerValue!12813 (value!129481 (_ BitVec 32)) (text!30344 List!23315)) (IntegerValue!12814 (value!129482 Int) (text!30345 List!23315)) (Times!4271) (Or!4271) (Equal!4271) (Minus!4271) (Broken!21359 (value!129483 List!23315)) (And!4271) (Div!4271) (LessEqual!4271) (Mod!4271) (Concat!9837) (Not!4271) (Plus!4271) (SpaceValue!4271 (value!129484 List!23315)) (IntegerValue!12815 (value!129485 Int) (text!30346 List!23315)) (StringLiteralValue!12814 (text!30347 List!23315)) (FloatLiteralValue!8543 (text!30348 List!23315)) (BytesLiteralValue!4271 (value!129486 List!23315)) (CommentValue!8543 (value!129487 List!23315)) (StringLiteralValue!12815 (value!129488 List!23315)) (ErrorTokenValue!4271 (msg!4332 List!23315)) )
))
(declare-datatypes ((String!26551 0))(
  ( (String!26552 (value!129489 String)) )
))
(declare-datatypes ((TokenValueInjection!8126 0))(
  ( (TokenValueInjection!8127 (toValue!5846 Int) (toChars!5705 Int)) )
))
(declare-datatypes ((Rule!8070 0))(
  ( (Rule!8071 (regex!4135 Regex!5565) (tag!4625 String!26551) (isSeparator!4135 Bool) (transformation!4135 TokenValueInjection!8126)) )
))
(declare-datatypes ((List!23316 0))(
  ( (Nil!23232) (Cons!23232 (h!28633 Rule!8070) (t!195809 List!23316)) )
))
(declare-fun rulesArg!349 () List!23316)

(declare-fun rulesValidInductive!1451 (LexerInterface!3734 List!23316) Bool)

(assert (=> b!2105511 (= res!915450 (rulesValidInductive!1451 thiss!15689 rulesArg!349))))

(declare-fun mapIsEmpty!10819 () Bool)

(declare-fun mapRes!10818 () Bool)

(assert (=> mapIsEmpty!10819 mapRes!10818))

(declare-fun b!2105512 () Bool)

(declare-fun res!915453 () Bool)

(assert (=> b!2105512 (=> (not res!915453) (not e!1337964))))

(declare-fun valid!1776 (CacheDown!1452) Bool)

(assert (=> b!2105512 (= res!915453 (valid!1776 cacheDown!688))))

(declare-fun mapNonEmpty!10818 () Bool)

(declare-fun tp!638231 () Bool)

(declare-fun tp!638218 () Bool)

(assert (=> mapNonEmpty!10818 (= mapRes!10819 (and tp!638231 tp!638218))))

(declare-fun mapRest!10818 () (Array (_ BitVec 32) List!23312))

(declare-fun mapValue!10819 () List!23312)

(declare-fun mapKey!10819 () (_ BitVec 32))

(assert (=> mapNonEmpty!10818 (= (arr!3425 (_values!2518 (v!27789 (underlying!4671 (v!27790 (underlying!4672 (cache!2533 cacheUp!675))))))) (store mapRest!10818 mapKey!10819 mapValue!10819))))

(declare-fun b!2105513 () Bool)

(declare-fun tp!638230 () Bool)

(declare-fun inv!30758 (Conc!7715) Bool)

(assert (=> b!2105513 (= e!1337961 (and (inv!30758 (c!338874 totalInput!482)) tp!638230))))

(declare-fun b!2105514 () Bool)

(declare-fun e!1337963 () Bool)

(declare-fun e!1337968 () Bool)

(assert (=> b!2105514 (= e!1337963 e!1337968)))

(declare-fun b!2105515 () Bool)

(declare-fun e!1337973 () Bool)

(declare-fun e!1337970 () Bool)

(assert (=> b!2105515 (= e!1337973 e!1337970)))

(declare-fun b!2105516 () Bool)

(declare-fun e!1337967 () Bool)

(assert (=> b!2105516 (= e!1337960 e!1337967)))

(declare-fun mapNonEmpty!10819 () Bool)

(declare-fun tp!638227 () Bool)

(declare-fun tp!638232 () Bool)

(assert (=> mapNonEmpty!10819 (= mapRes!10818 (and tp!638227 tp!638232))))

(declare-fun mapRest!10819 () (Array (_ BitVec 32) List!23314))

(declare-fun mapKey!10818 () (_ BitVec 32))

(declare-fun mapValue!10818 () List!23314)

(assert (=> mapNonEmpty!10819 (= (arr!3426 (_values!2519 (v!27791 (underlying!4673 (v!27792 (underlying!4674 (cache!2534 cacheDown!688))))))) (store mapRest!10819 mapKey!10818 mapValue!10818))))

(declare-fun b!2105517 () Bool)

(assert (=> b!2105517 (= e!1337972 e!1337964)))

(declare-fun res!915454 () Bool)

(assert (=> b!2105517 (=> (not res!915454) (not e!1337964))))

(declare-fun lt!791302 () List!23313)

(declare-fun isSuffix!554 (List!23313 List!23313) Bool)

(declare-fun list!9438 (BalanceConc!15192) List!23313)

(assert (=> b!2105517 (= res!915454 (isSuffix!554 lt!791302 (list!9438 totalInput!482)))))

(assert (=> b!2105517 (= lt!791302 (list!9438 input!1444))))

(declare-fun b!2105518 () Bool)

(declare-fun e!1337980 () Bool)

(declare-fun lt!791300 () MutLongMap!2238)

(assert (=> b!2105518 (= e!1337980 (and e!1337963 ((_ is LongMap!2238) lt!791300)))))

(assert (=> b!2105518 (= lt!791300 (v!27790 (underlying!4672 (cache!2533 cacheUp!675))))))

(declare-fun b!2105519 () Bool)

(declare-fun res!915449 () Bool)

(assert (=> b!2105519 (=> (not res!915449) (not e!1337972))))

(declare-fun isEmpty!14272 (List!23316) Bool)

(assert (=> b!2105519 (= res!915449 (not (isEmpty!14272 rulesArg!349)))))

(declare-fun b!2105520 () Bool)

(declare-fun e!1337969 () Bool)

(declare-fun tp!638225 () Bool)

(assert (=> b!2105520 (= e!1337966 (and e!1337969 tp!638225))))

(declare-fun e!1337982 () Bool)

(assert (=> b!2105521 (= e!1337982 (and tp!638219 tp!638229))))

(declare-fun tp!638226 () Bool)

(declare-fun e!1337976 () Bool)

(declare-fun tp!638235 () Bool)

(declare-fun array_inv!2461 (array!7723) Bool)

(declare-fun array_inv!2462 (array!7727) Bool)

(assert (=> b!2105522 (= e!1337970 (and tp!638221 tp!638226 tp!638235 (array_inv!2461 (_keys!2536 (v!27791 (underlying!4673 (v!27792 (underlying!4674 (cache!2534 cacheDown!688))))))) (array_inv!2462 (_values!2519 (v!27791 (underlying!4673 (v!27792 (underlying!4674 (cache!2534 cacheDown!688))))))) e!1337976))))

(declare-fun b!2105523 () Bool)

(declare-fun e!1337962 () Bool)

(assert (=> b!2105523 (= e!1337962 e!1337973)))

(declare-fun b!2105524 () Bool)

(declare-fun tp!638217 () Bool)

(declare-fun inv!30753 (String!26551) Bool)

(declare-fun inv!30759 (TokenValueInjection!8126) Bool)

(assert (=> b!2105524 (= e!1337969 (and tp!638217 (inv!30753 (tag!4625 (h!28633 rulesArg!349))) (inv!30759 (transformation!4135 (h!28633 rulesArg!349))) e!1337982))))

(declare-fun b!2105525 () Bool)

(declare-fun e!1337959 () Bool)

(assert (=> b!2105525 (= e!1337959 true)))

(declare-fun lt!791303 () Bool)

(assert (=> b!2105525 (= lt!791303 (rulesValidInductive!1451 thiss!15689 (t!195809 rulesArg!349)))))

(declare-datatypes ((Token!7792 0))(
  ( (Token!7793 (value!129490 TokenValue!4271) (rule!6450 Rule!8070) (size!18133 Int) (originalCharacters!4927 List!23313)) )
))
(declare-datatypes ((tuple2!22494 0))(
  ( (tuple2!22495 (_1!12992 Token!7792) (_2!12992 BalanceConc!15192)) )
))
(declare-datatypes ((Option!4849 0))(
  ( (None!4848) (Some!4848 (v!27793 tuple2!22494)) )
))
(declare-datatypes ((tuple3!2562 0))(
  ( (tuple3!2563 (_1!12993 Option!4849) (_2!12993 CacheUp!1446) (_3!1745 CacheDown!1452)) )
))
(declare-fun lt!791304 () tuple3!2562)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!66 (LexerInterface!3734 Rule!8070 BalanceConc!15192 BalanceConc!15192 CacheUp!1446 CacheDown!1452) tuple3!2562)

(assert (=> b!2105525 (= lt!791304 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!66 thiss!15689 (h!28633 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun e!1337971 () Bool)

(assert (=> b!2105526 (= e!1337971 (and e!1337980 tp!638234))))

(declare-fun e!1337958 () Bool)

(assert (=> b!2105527 (= e!1337967 (and e!1337958 tp!638220))))

(declare-fun b!2105528 () Bool)

(declare-fun tp!638224 () Bool)

(assert (=> b!2105528 (= e!1337974 (and (inv!30758 (c!338874 input!1444)) tp!638224))))

(declare-fun tp!638222 () Bool)

(declare-fun tp!638223 () Bool)

(declare-fun e!1337965 () Bool)

(declare-fun e!1337981 () Bool)

(declare-fun array_inv!2463 (array!7725) Bool)

(assert (=> b!2105529 (= e!1337981 (and tp!638233 tp!638223 tp!638222 (array_inv!2461 (_keys!2535 (v!27789 (underlying!4671 (v!27790 (underlying!4672 (cache!2533 cacheUp!675))))))) (array_inv!2463 (_values!2518 (v!27789 (underlying!4671 (v!27790 (underlying!4672 (cache!2533 cacheUp!675))))))) e!1337965))))

(declare-fun b!2105530 () Bool)

(assert (=> b!2105530 (= e!1337975 e!1337971)))

(declare-fun b!2105531 () Bool)

(assert (=> b!2105531 (= e!1337968 e!1337981)))

(declare-fun b!2105532 () Bool)

(declare-fun tp!638216 () Bool)

(assert (=> b!2105532 (= e!1337976 (and tp!638216 mapRes!10818))))

(declare-fun condMapEmpty!10819 () Bool)

(declare-fun mapDefault!10818 () List!23314)

(assert (=> b!2105532 (= condMapEmpty!10819 (= (arr!3426 (_values!2519 (v!27791 (underlying!4673 (v!27792 (underlying!4674 (cache!2534 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23314)) mapDefault!10818)))))

(declare-fun b!2105533 () Bool)

(declare-fun lt!791301 () MutLongMap!2239)

(assert (=> b!2105533 (= e!1337958 (and e!1337962 ((_ is LongMap!2239) lt!791301)))))

(assert (=> b!2105533 (= lt!791301 (v!27792 (underlying!4674 (cache!2534 cacheDown!688))))))

(declare-fun b!2105534 () Bool)

(declare-fun tp!638228 () Bool)

(assert (=> b!2105534 (= e!1337965 (and tp!638228 mapRes!10819))))

(declare-fun condMapEmpty!10818 () Bool)

(declare-fun mapDefault!10819 () List!23312)

(assert (=> b!2105534 (= condMapEmpty!10818 (= (arr!3425 (_values!2518 (v!27789 (underlying!4671 (v!27790 (underlying!4672 (cache!2533 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23312)) mapDefault!10819)))))

(declare-fun b!2105535 () Bool)

(assert (=> b!2105535 (= e!1337964 (not e!1337959))))

(declare-fun res!915451 () Bool)

(assert (=> b!2105535 (=> res!915451 e!1337959)))

(assert (=> b!2105535 (= res!915451 (or (and ((_ is Cons!23232) rulesArg!349) ((_ is Nil!23232) (t!195809 rulesArg!349))) (not ((_ is Cons!23232) rulesArg!349))))))

(declare-fun isPrefix!2070 (List!23313 List!23313) Bool)

(assert (=> b!2105535 (isPrefix!2070 lt!791302 lt!791302)))

(declare-datatypes ((Unit!37456 0))(
  ( (Unit!37457) )
))
(declare-fun lt!791305 () Unit!37456)

(declare-fun lemmaIsPrefixRefl!1388 (List!23313 List!23313) Unit!37456)

(assert (=> b!2105535 (= lt!791305 (lemmaIsPrefixRefl!1388 lt!791302 lt!791302))))

(assert (= (and start!205868 res!915448) b!2105511))

(assert (= (and b!2105511 res!915450) b!2105519))

(assert (= (and b!2105519 res!915449) b!2105517))

(assert (= (and b!2105517 res!915454) b!2105510))

(assert (= (and b!2105510 res!915452) b!2105512))

(assert (= (and b!2105512 res!915453) b!2105535))

(assert (= (and b!2105535 (not res!915451)) b!2105525))

(assert (= b!2105524 b!2105521))

(assert (= b!2105520 b!2105524))

(assert (= (and start!205868 ((_ is Cons!23232) rulesArg!349)) b!2105520))

(assert (= start!205868 b!2105513))

(assert (= start!205868 b!2105528))

(assert (= (and b!2105534 condMapEmpty!10818) mapIsEmpty!10818))

(assert (= (and b!2105534 (not condMapEmpty!10818)) mapNonEmpty!10818))

(assert (= b!2105529 b!2105534))

(assert (= b!2105531 b!2105529))

(assert (= b!2105514 b!2105531))

(assert (= (and b!2105518 ((_ is LongMap!2238) (v!27790 (underlying!4672 (cache!2533 cacheUp!675))))) b!2105514))

(assert (= b!2105526 b!2105518))

(assert (= (and b!2105530 ((_ is HashMap!2152) (cache!2533 cacheUp!675))) b!2105526))

(assert (= start!205868 b!2105530))

(assert (= (and b!2105532 condMapEmpty!10819) mapIsEmpty!10819))

(assert (= (and b!2105532 (not condMapEmpty!10819)) mapNonEmpty!10819))

(assert (= b!2105522 b!2105532))

(assert (= b!2105515 b!2105522))

(assert (= b!2105523 b!2105515))

(assert (= (and b!2105533 ((_ is LongMap!2239) (v!27792 (underlying!4674 (cache!2534 cacheDown!688))))) b!2105523))

(assert (= b!2105527 b!2105533))

(assert (= (and b!2105516 ((_ is HashMap!2153) (cache!2534 cacheDown!688))) b!2105527))

(assert (= start!205868 b!2105516))

(declare-fun m!2564051 () Bool)

(assert (=> b!2105517 m!2564051))

(assert (=> b!2105517 m!2564051))

(declare-fun m!2564053 () Bool)

(assert (=> b!2105517 m!2564053))

(declare-fun m!2564055 () Bool)

(assert (=> b!2105517 m!2564055))

(declare-fun m!2564057 () Bool)

(assert (=> b!2105511 m!2564057))

(declare-fun m!2564059 () Bool)

(assert (=> b!2105535 m!2564059))

(declare-fun m!2564061 () Bool)

(assert (=> b!2105535 m!2564061))

(declare-fun m!2564063 () Bool)

(assert (=> b!2105528 m!2564063))

(declare-fun m!2564065 () Bool)

(assert (=> b!2105510 m!2564065))

(declare-fun m!2564067 () Bool)

(assert (=> b!2105522 m!2564067))

(declare-fun m!2564069 () Bool)

(assert (=> b!2105522 m!2564069))

(declare-fun m!2564071 () Bool)

(assert (=> mapNonEmpty!10818 m!2564071))

(declare-fun m!2564073 () Bool)

(assert (=> b!2105519 m!2564073))

(declare-fun m!2564075 () Bool)

(assert (=> b!2105524 m!2564075))

(declare-fun m!2564077 () Bool)

(assert (=> b!2105524 m!2564077))

(declare-fun m!2564079 () Bool)

(assert (=> mapNonEmpty!10819 m!2564079))

(declare-fun m!2564081 () Bool)

(assert (=> b!2105525 m!2564081))

(declare-fun m!2564083 () Bool)

(assert (=> b!2105525 m!2564083))

(declare-fun m!2564085 () Bool)

(assert (=> start!205868 m!2564085))

(declare-fun m!2564087 () Bool)

(assert (=> start!205868 m!2564087))

(declare-fun m!2564089 () Bool)

(assert (=> start!205868 m!2564089))

(declare-fun m!2564091 () Bool)

(assert (=> start!205868 m!2564091))

(declare-fun m!2564093 () Bool)

(assert (=> b!2105513 m!2564093))

(declare-fun m!2564095 () Bool)

(assert (=> b!2105529 m!2564095))

(declare-fun m!2564097 () Bool)

(assert (=> b!2105529 m!2564097))

(declare-fun m!2564099 () Bool)

(assert (=> b!2105512 m!2564099))

(check-sat (not b_next!61179) (not start!205868) (not b!2105517) (not b_next!61173) b_and!170035 (not b!2105528) (not mapNonEmpty!10818) (not b!2105534) b_and!170027 (not b!2105532) b_and!170037 (not b_next!61171) (not b!2105513) (not mapNonEmpty!10819) b_and!170031 (not b!2105519) (not b!2105535) (not b!2105512) (not b!2105529) (not b_next!61175) (not b!2105520) (not b_next!61177) (not b_next!61169) b_and!170029 (not b!2105510) (not b!2105522) (not b!2105511) (not b!2105525) b_and!170033 (not b!2105524))
(check-sat (not b_next!61179) b_and!170031 (not b_next!61175) (not b_next!61173) b_and!170035 b_and!170027 (not b_next!61177) b_and!170037 (not b_next!61171) b_and!170033 (not b_next!61169) b_and!170029)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205872 () Bool)

(assert start!205872)

(declare-fun b!2105690 () Bool)

(declare-fun b_free!60489 () Bool)

(declare-fun b_next!61193 () Bool)

(assert (=> b!2105690 (= b_free!60489 (not b_next!61193))))

(declare-fun tp!638355 () Bool)

(declare-fun b_and!170051 () Bool)

(assert (=> b!2105690 (= tp!638355 b_and!170051)))

(declare-fun b_free!60491 () Bool)

(declare-fun b_next!61195 () Bool)

(assert (=> b!2105690 (= b_free!60491 (not b_next!61195))))

(declare-fun tp!638343 () Bool)

(declare-fun b_and!170053 () Bool)

(assert (=> b!2105690 (= tp!638343 b_and!170053)))

(declare-fun b!2105683 () Bool)

(declare-fun b_free!60493 () Bool)

(declare-fun b_next!61197 () Bool)

(assert (=> b!2105683 (= b_free!60493 (not b_next!61197))))

(declare-fun tp!638340 () Bool)

(declare-fun b_and!170055 () Bool)

(assert (=> b!2105683 (= tp!638340 b_and!170055)))

(declare-fun b!2105688 () Bool)

(declare-fun b_free!60495 () Bool)

(declare-fun b_next!61199 () Bool)

(assert (=> b!2105688 (= b_free!60495 (not b_next!61199))))

(declare-fun tp!638348 () Bool)

(declare-fun b_and!170057 () Bool)

(assert (=> b!2105688 (= tp!638348 b_and!170057)))

(declare-fun b!2105689 () Bool)

(declare-fun b_free!60497 () Bool)

(declare-fun b_next!61201 () Bool)

(assert (=> b!2105689 (= b_free!60497 (not b_next!61201))))

(declare-fun tp!638338 () Bool)

(declare-fun b_and!170059 () Bool)

(assert (=> b!2105689 (= tp!638338 b_and!170059)))

(declare-fun b!2105684 () Bool)

(declare-fun b_free!60499 () Bool)

(declare-fun b_next!61203 () Bool)

(assert (=> b!2105684 (= b_free!60499 (not b_next!61203))))

(declare-fun tp!638352 () Bool)

(declare-fun b_and!170061 () Bool)

(assert (=> b!2105684 (= tp!638352 b_and!170061)))

(declare-fun b!2105681 () Bool)

(declare-fun e!1338137 () Bool)

(declare-fun e!1338129 () Bool)

(assert (=> b!2105681 (= e!1338137 e!1338129)))

(declare-fun mapIsEmpty!10830 () Bool)

(declare-fun mapRes!10830 () Bool)

(assert (=> mapIsEmpty!10830 mapRes!10830))

(declare-fun b!2105682 () Bool)

(declare-fun e!1338123 () Bool)

(declare-datatypes ((C!11280 0))(
  ( (C!11281 (val!6626 Int)) )
))
(declare-datatypes ((List!23319 0))(
  ( (Nil!23235) (Cons!23235 (h!28636 C!11280) (t!195812 List!23319)) )
))
(declare-datatypes ((IArray!15437 0))(
  ( (IArray!15438 (innerList!7776 List!23319)) )
))
(declare-datatypes ((Conc!7716 0))(
  ( (Node!7716 (left!18136 Conc!7716) (right!18466 Conc!7716) (csize!15662 Int) (cheight!7927 Int)) (Leaf!11267 (xs!10658 IArray!15437) (csize!15663 Int)) (Empty!7716) )
))
(declare-datatypes ((BalanceConc!15194 0))(
  ( (BalanceConc!15195 (c!338876 Conc!7716)) )
))
(declare-fun input!1444 () BalanceConc!15194)

(declare-fun tp!638354 () Bool)

(declare-fun inv!30763 (Conc!7716) Bool)

(assert (=> b!2105682 (= e!1338123 (and (inv!30763 (c!338876 input!1444)) tp!638354))))

(declare-fun e!1338134 () Bool)

(assert (=> b!2105683 (= e!1338129 (and e!1338134 tp!638340))))

(declare-fun tp!638345 () Bool)

(declare-fun e!1338141 () Bool)

(declare-datatypes ((Regex!5567 0))(
  ( (ElementMatch!5567 (c!338877 C!11280)) (Concat!9839 (regOne!11646 Regex!5567) (regTwo!11646 Regex!5567)) (EmptyExpr!5567) (Star!5567 (reg!5896 Regex!5567)) (EmptyLang!5567) (Union!5567 (regOne!11647 Regex!5567) (regTwo!11647 Regex!5567)) )
))
(declare-datatypes ((List!23320 0))(
  ( (Nil!23236) (Cons!23236 (h!28637 Regex!5567) (t!195813 List!23320)) )
))
(declare-datatypes ((Context!2274 0))(
  ( (Context!2275 (exprs!1637 List!23320)) )
))
(declare-datatypes ((tuple3!2566 0))(
  ( (tuple3!2567 (_1!12996 Regex!5567) (_2!12996 Context!2274) (_3!1747 C!11280)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22498 0))(
  ( (tuple2!22499 (_1!12997 tuple3!2566) (_2!12997 (InoxSet Context!2274))) )
))
(declare-datatypes ((List!23321 0))(
  ( (Nil!23237) (Cons!23237 (h!28638 tuple2!22498) (t!195814 List!23321)) )
))
(declare-datatypes ((array!7733 0))(
  ( (array!7734 (arr!3429 (Array (_ BitVec 32) (_ BitVec 64))) (size!18136 (_ BitVec 32))) )
))
(declare-datatypes ((array!7735 0))(
  ( (array!7736 (arr!3430 (Array (_ BitVec 32) List!23321)) (size!18137 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4482 0))(
  ( (LongMapFixedSize!4483 (defaultEntry!2606 Int) (mask!6340 (_ BitVec 32)) (extraKeys!2489 (_ BitVec 32)) (zeroValue!2499 List!23321) (minValue!2499 List!23321) (_size!4533 (_ BitVec 32)) (_keys!2538 array!7733) (_values!2521 array!7735) (_vacant!2302 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8789 0))(
  ( (Cell!8790 (v!27796 LongMapFixedSize!4482)) )
))
(declare-datatypes ((MutLongMap!2241 0))(
  ( (LongMap!2241 (underlying!4677 Cell!8789)) (MutLongMapExt!2240 (__x!14841 Int)) )
))
(declare-datatypes ((Cell!8791 0))(
  ( (Cell!8792 (v!27797 MutLongMap!2241)) )
))
(declare-datatypes ((Hashable!2155 0))(
  ( (HashableExt!2154 (__x!14842 Int)) )
))
(declare-datatypes ((MutableMap!2155 0))(
  ( (MutableMapExt!2154 (__x!14843 Int)) (HashMap!2155 (underlying!4678 Cell!8791) (hashF!4078 Hashable!2155) (_size!4534 (_ BitVec 32)) (defaultValue!2317 Int)) )
))
(declare-datatypes ((CacheDown!1456 0))(
  ( (CacheDown!1457 (cache!2536 MutableMap!2155)) )
))
(declare-fun cacheDown!688 () CacheDown!1456)

(declare-fun e!1338130 () Bool)

(declare-fun tp!638351 () Bool)

(declare-fun array_inv!2464 (array!7733) Bool)

(declare-fun array_inv!2465 (array!7735) Bool)

(assert (=> b!2105684 (= e!1338141 (and tp!638352 tp!638351 tp!638345 (array_inv!2464 (_keys!2538 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) (array_inv!2465 (_values!2521 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) e!1338130))))

(declare-fun b!2105685 () Bool)

(declare-fun tp!638349 () Bool)

(declare-fun mapRes!10831 () Bool)

(assert (=> b!2105685 (= e!1338130 (and tp!638349 mapRes!10831))))

(declare-fun condMapEmpty!10830 () Bool)

(declare-fun mapDefault!10830 () List!23321)

(assert (=> b!2105685 (= condMapEmpty!10830 (= (arr!3430 (_values!2521 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23321)) mapDefault!10830)))))

(declare-fun b!2105686 () Bool)

(declare-fun res!915511 () Bool)

(declare-fun e!1338119 () Bool)

(assert (=> b!2105686 (=> res!915511 e!1338119)))

(declare-datatypes ((List!23322 0))(
  ( (Nil!23238) (Cons!23238 (h!28639 (_ BitVec 16)) (t!195815 List!23322)) )
))
(declare-datatypes ((TokenValue!4272 0))(
  ( (FloatLiteralValue!8544 (text!30349 List!23322)) (TokenValueExt!4271 (__x!14844 Int)) (Broken!21360 (value!129494 List!23322)) (Object!4355) (End!4272) (Def!4272) (Underscore!4272) (Match!4272) (Else!4272) (Error!4272) (Case!4272) (If!4272) (Extends!4272) (Abstract!4272) (Class!4272) (Val!4272) (DelimiterValue!8544 (del!4332 List!23322)) (KeywordValue!4278 (value!129495 List!23322)) (CommentValue!8544 (value!129496 List!23322)) (WhitespaceValue!8544 (value!129497 List!23322)) (IndentationValue!4272 (value!129498 List!23322)) (String!26557) (Int32!4272) (Broken!21361 (value!129499 List!23322)) (Boolean!4273) (Unit!37458) (OperatorValue!4275 (op!4332 List!23322)) (IdentifierValue!8544 (value!129500 List!23322)) (IdentifierValue!8545 (value!129501 List!23322)) (WhitespaceValue!8545 (value!129502 List!23322)) (True!8544) (False!8544) (Broken!21362 (value!129503 List!23322)) (Broken!21363 (value!129504 List!23322)) (True!8545) (RightBrace!4272) (RightBracket!4272) (Colon!4272) (Null!4272) (Comma!4272) (LeftBracket!4272) (False!8545) (LeftBrace!4272) (ImaginaryLiteralValue!4272 (text!30350 List!23322)) (StringLiteralValue!12816 (value!129505 List!23322)) (EOFValue!4272 (value!129506 List!23322)) (IdentValue!4272 (value!129507 List!23322)) (DelimiterValue!8545 (value!129508 List!23322)) (DedentValue!4272 (value!129509 List!23322)) (NewLineValue!4272 (value!129510 List!23322)) (IntegerValue!12816 (value!129511 (_ BitVec 32)) (text!30351 List!23322)) (IntegerValue!12817 (value!129512 Int) (text!30352 List!23322)) (Times!4272) (Or!4272) (Equal!4272) (Minus!4272) (Broken!21364 (value!129513 List!23322)) (And!4272) (Div!4272) (LessEqual!4272) (Mod!4272) (Concat!9840) (Not!4272) (Plus!4272) (SpaceValue!4272 (value!129514 List!23322)) (IntegerValue!12818 (value!129515 Int) (text!30353 List!23322)) (StringLiteralValue!12817 (text!30354 List!23322)) (FloatLiteralValue!8545 (text!30355 List!23322)) (BytesLiteralValue!4272 (value!129516 List!23322)) (CommentValue!8545 (value!129517 List!23322)) (StringLiteralValue!12818 (value!129518 List!23322)) (ErrorTokenValue!4272 (msg!4333 List!23322)) )
))
(declare-datatypes ((String!26558 0))(
  ( (String!26559 (value!129519 String)) )
))
(declare-datatypes ((TokenValueInjection!8128 0))(
  ( (TokenValueInjection!8129 (toValue!5847 Int) (toChars!5706 Int)) )
))
(declare-datatypes ((Rule!8072 0))(
  ( (Rule!8073 (regex!4136 Regex!5567) (tag!4626 String!26558) (isSeparator!4136 Bool) (transformation!4136 TokenValueInjection!8128)) )
))
(declare-datatypes ((List!23323 0))(
  ( (Nil!23239) (Cons!23239 (h!28640 Rule!8072) (t!195816 List!23323)) )
))
(declare-fun rulesArg!349 () List!23323)

(declare-fun isEmpty!14273 (List!23323) Bool)

(assert (=> b!2105686 (= res!915511 (isEmpty!14273 (t!195816 rulesArg!349)))))

(declare-fun b!2105687 () Bool)

(declare-fun e!1338126 () Bool)

(declare-datatypes ((tuple2!22500 0))(
  ( (tuple2!22501 (_1!12998 Context!2274) (_2!12998 C!11280)) )
))
(declare-datatypes ((tuple2!22502 0))(
  ( (tuple2!22503 (_1!12999 tuple2!22500) (_2!12999 (InoxSet Context!2274))) )
))
(declare-datatypes ((List!23324 0))(
  ( (Nil!23240) (Cons!23240 (h!28641 tuple2!22502) (t!195817 List!23324)) )
))
(declare-datatypes ((array!7737 0))(
  ( (array!7738 (arr!3431 (Array (_ BitVec 32) List!23324)) (size!18138 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4484 0))(
  ( (LongMapFixedSize!4485 (defaultEntry!2607 Int) (mask!6341 (_ BitVec 32)) (extraKeys!2490 (_ BitVec 32)) (zeroValue!2500 List!23324) (minValue!2500 List!23324) (_size!4535 (_ BitVec 32)) (_keys!2539 array!7733) (_values!2522 array!7737) (_vacant!2303 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8793 0))(
  ( (Cell!8794 (v!27798 LongMapFixedSize!4484)) )
))
(declare-datatypes ((MutLongMap!2242 0))(
  ( (LongMap!2242 (underlying!4679 Cell!8793)) (MutLongMapExt!2241 (__x!14845 Int)) )
))
(declare-fun lt!791331 () MutLongMap!2242)

(get-info :version)

(assert (=> b!2105687 (= e!1338134 (and e!1338126 ((_ is LongMap!2242) lt!791331)))))

(declare-datatypes ((Hashable!2156 0))(
  ( (HashableExt!2155 (__x!14846 Int)) )
))
(declare-datatypes ((Cell!8795 0))(
  ( (Cell!8796 (v!27799 MutLongMap!2242)) )
))
(declare-datatypes ((MutableMap!2156 0))(
  ( (MutableMapExt!2155 (__x!14847 Int)) (HashMap!2156 (underlying!4680 Cell!8795) (hashF!4079 Hashable!2156) (_size!4536 (_ BitVec 32)) (defaultValue!2318 Int)) )
))
(declare-datatypes ((CacheUp!1448 0))(
  ( (CacheUp!1449 (cache!2537 MutableMap!2156)) )
))
(declare-fun cacheUp!675 () CacheUp!1448)

(assert (=> b!2105687 (= lt!791331 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))

(declare-fun res!915505 () Bool)

(declare-fun e!1338121 () Bool)

(assert (=> start!205872 (=> (not res!915505) (not e!1338121))))

(declare-datatypes ((LexerInterface!3735 0))(
  ( (LexerInterfaceExt!3732 (__x!14848 Int)) (Lexer!3733) )
))
(declare-fun thiss!15689 () LexerInterface!3735)

(assert (=> start!205872 (= res!915505 ((_ is Lexer!3733) thiss!15689))))

(assert (=> start!205872 e!1338121))

(declare-fun e!1338120 () Bool)

(assert (=> start!205872 e!1338120))

(declare-fun totalInput!482 () BalanceConc!15194)

(declare-fun e!1338135 () Bool)

(declare-fun inv!30764 (BalanceConc!15194) Bool)

(assert (=> start!205872 (and (inv!30764 totalInput!482) e!1338135)))

(assert (=> start!205872 true))

(assert (=> start!205872 (and (inv!30764 input!1444) e!1338123)))

(declare-fun inv!30765 (CacheUp!1448) Bool)

(assert (=> start!205872 (and (inv!30765 cacheUp!675) e!1338137)))

(declare-fun e!1338143 () Bool)

(declare-fun inv!30766 (CacheDown!1456) Bool)

(assert (=> start!205872 (and (inv!30766 cacheDown!688) e!1338143)))

(declare-fun tp!638344 () Bool)

(declare-fun tp!638346 () Bool)

(declare-fun e!1338144 () Bool)

(declare-fun e!1338133 () Bool)

(declare-fun array_inv!2466 (array!7737) Bool)

(assert (=> b!2105688 (= e!1338144 (and tp!638348 tp!638344 tp!638346 (array_inv!2464 (_keys!2539 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) (array_inv!2466 (_values!2522 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) e!1338133))))

(declare-fun e!1338138 () Bool)

(declare-fun e!1338140 () Bool)

(assert (=> b!2105689 (= e!1338138 (and e!1338140 tp!638338))))

(declare-fun e!1338136 () Bool)

(assert (=> b!2105690 (= e!1338136 (and tp!638355 tp!638343))))

(declare-fun b!2105691 () Bool)

(declare-fun res!915508 () Bool)

(declare-fun e!1338131 () Bool)

(assert (=> b!2105691 (=> (not res!915508) (not e!1338131))))

(declare-fun valid!1777 (CacheDown!1456) Bool)

(assert (=> b!2105691 (= res!915508 (valid!1777 cacheDown!688))))

(declare-fun b!2105692 () Bool)

(declare-fun e!1338127 () Bool)

(declare-fun lt!791332 () MutLongMap!2241)

(assert (=> b!2105692 (= e!1338140 (and e!1338127 ((_ is LongMap!2241) lt!791332)))))

(assert (=> b!2105692 (= lt!791332 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))

(declare-fun b!2105693 () Bool)

(declare-fun e!1338125 () Bool)

(declare-fun tp!638353 () Bool)

(assert (=> b!2105693 (= e!1338120 (and e!1338125 tp!638353))))

(declare-fun b!2105694 () Bool)

(declare-fun e!1338124 () Bool)

(assert (=> b!2105694 (= e!1338124 e!1338119)))

(declare-fun res!915512 () Bool)

(assert (=> b!2105694 (=> res!915512 e!1338119)))

(declare-fun rulesValidInductive!1452 (LexerInterface!3735 List!23323) Bool)

(assert (=> b!2105694 (= res!915512 (not (rulesValidInductive!1452 thiss!15689 (t!195816 rulesArg!349))))))

(declare-datatypes ((Token!7794 0))(
  ( (Token!7795 (value!129520 TokenValue!4272) (rule!6451 Rule!8072) (size!18139 Int) (originalCharacters!4928 List!23319)) )
))
(declare-datatypes ((tuple2!22504 0))(
  ( (tuple2!22505 (_1!13000 Token!7794) (_2!13000 BalanceConc!15194)) )
))
(declare-datatypes ((Option!4850 0))(
  ( (None!4849) (Some!4849 (v!27800 tuple2!22504)) )
))
(declare-datatypes ((tuple3!2568 0))(
  ( (tuple3!2569 (_1!13001 Option!4850) (_2!13001 CacheUp!1448) (_3!1748 CacheDown!1456)) )
))
(declare-fun lt!791333 () tuple3!2568)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!67 (LexerInterface!3735 Rule!8072 BalanceConc!15194 BalanceConc!15194 CacheUp!1448 CacheDown!1456) tuple3!2568)

(assert (=> b!2105694 (= lt!791333 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!67 thiss!15689 (h!28640 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun mapIsEmpty!10831 () Bool)

(assert (=> mapIsEmpty!10831 mapRes!10831))

(declare-fun b!2105695 () Bool)

(declare-fun e!1338139 () Bool)

(assert (=> b!2105695 (= e!1338119 e!1338139)))

(declare-fun res!915506 () Bool)

(assert (=> b!2105695 (=> (not res!915506) (not e!1338139))))

(declare-fun valid!1778 (CacheUp!1448) Bool)

(assert (=> b!2105695 (= res!915506 (valid!1778 (_2!13001 lt!791333)))))

(declare-fun tp!638337 () Bool)

(declare-fun b!2105696 () Bool)

(declare-fun inv!30762 (String!26558) Bool)

(declare-fun inv!30767 (TokenValueInjection!8128) Bool)

(assert (=> b!2105696 (= e!1338125 (and tp!638337 (inv!30762 (tag!4626 (h!28640 rulesArg!349))) (inv!30767 (transformation!4136 (h!28640 rulesArg!349))) e!1338136))))

(declare-fun b!2105697 () Bool)

(declare-fun e!1338118 () Bool)

(assert (=> b!2105697 (= e!1338118 e!1338141)))

(declare-fun b!2105698 () Bool)

(declare-fun tp!638341 () Bool)

(assert (=> b!2105698 (= e!1338135 (and (inv!30763 (c!338876 totalInput!482)) tp!638341))))

(declare-fun b!2105699 () Bool)

(declare-fun tp!638347 () Bool)

(assert (=> b!2105699 (= e!1338133 (and tp!638347 mapRes!10830))))

(declare-fun condMapEmpty!10831 () Bool)

(declare-fun mapDefault!10831 () List!23324)

(assert (=> b!2105699 (= condMapEmpty!10831 (= (arr!3431 (_values!2522 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23324)) mapDefault!10831)))))

(declare-fun b!2105700 () Bool)

(declare-fun e!1338128 () Bool)

(assert (=> b!2105700 (= e!1338128 e!1338144)))

(declare-fun b!2105701 () Bool)

(assert (=> b!2105701 (= e!1338126 e!1338128)))

(declare-fun b!2105702 () Bool)

(declare-fun res!915507 () Bool)

(assert (=> b!2105702 (=> (not res!915507) (not e!1338121))))

(assert (=> b!2105702 (= res!915507 (rulesValidInductive!1452 thiss!15689 rulesArg!349))))

(declare-fun b!2105703 () Bool)

(assert (=> b!2105703 (= e!1338143 e!1338138)))

(declare-fun b!2105704 () Bool)

(declare-fun res!915509 () Bool)

(assert (=> b!2105704 (=> (not res!915509) (not e!1338121))))

(assert (=> b!2105704 (= res!915509 (not (isEmpty!14273 rulesArg!349)))))

(declare-fun b!2105705 () Bool)

(declare-fun res!915510 () Bool)

(assert (=> b!2105705 (=> (not res!915510) (not e!1338131))))

(assert (=> b!2105705 (= res!915510 (valid!1778 cacheUp!675))))

(declare-fun b!2105706 () Bool)

(assert (=> b!2105706 (= e!1338127 e!1338118)))

(declare-fun mapNonEmpty!10830 () Bool)

(declare-fun tp!638339 () Bool)

(declare-fun tp!638350 () Bool)

(assert (=> mapNonEmpty!10830 (= mapRes!10830 (and tp!638339 tp!638350))))

(declare-fun mapValue!10831 () List!23324)

(declare-fun mapRest!10830 () (Array (_ BitVec 32) List!23324))

(declare-fun mapKey!10830 () (_ BitVec 32))

(assert (=> mapNonEmpty!10830 (= (arr!3431 (_values!2522 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) (store mapRest!10830 mapKey!10830 mapValue!10831))))

(declare-fun b!2105707 () Bool)

(assert (=> b!2105707 (= e!1338131 (not e!1338124))))

(declare-fun res!915514 () Bool)

(assert (=> b!2105707 (=> res!915514 e!1338124)))

(assert (=> b!2105707 (= res!915514 (or (and ((_ is Cons!23239) rulesArg!349) ((_ is Nil!23239) (t!195816 rulesArg!349))) (not ((_ is Cons!23239) rulesArg!349))))))

(declare-fun lt!791335 () List!23319)

(declare-fun isPrefix!2071 (List!23319 List!23319) Bool)

(assert (=> b!2105707 (isPrefix!2071 lt!791335 lt!791335)))

(declare-datatypes ((Unit!37459 0))(
  ( (Unit!37460) )
))
(declare-fun lt!791334 () Unit!37459)

(declare-fun lemmaIsPrefixRefl!1389 (List!23319 List!23319) Unit!37459)

(assert (=> b!2105707 (= lt!791334 (lemmaIsPrefixRefl!1389 lt!791335 lt!791335))))

(declare-fun b!2105708 () Bool)

(assert (=> b!2105708 (= e!1338121 e!1338131)))

(declare-fun res!915513 () Bool)

(assert (=> b!2105708 (=> (not res!915513) (not e!1338131))))

(declare-fun isSuffix!555 (List!23319 List!23319) Bool)

(declare-fun list!9439 (BalanceConc!15194) List!23319)

(assert (=> b!2105708 (= res!915513 (isSuffix!555 lt!791335 (list!9439 totalInput!482)))))

(assert (=> b!2105708 (= lt!791335 (list!9439 input!1444))))

(declare-fun mapNonEmpty!10831 () Bool)

(declare-fun tp!638336 () Bool)

(declare-fun tp!638342 () Bool)

(assert (=> mapNonEmpty!10831 (= mapRes!10831 (and tp!638336 tp!638342))))

(declare-fun mapValue!10830 () List!23321)

(declare-fun mapKey!10831 () (_ BitVec 32))

(declare-fun mapRest!10831 () (Array (_ BitVec 32) List!23321))

(assert (=> mapNonEmpty!10831 (= (arr!3430 (_values!2521 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) (store mapRest!10831 mapKey!10831 mapValue!10830))))

(declare-fun b!2105709 () Bool)

(assert (=> b!2105709 (= e!1338139 (valid!1777 (_3!1748 lt!791333)))))

(assert (= (and start!205872 res!915505) b!2105702))

(assert (= (and b!2105702 res!915507) b!2105704))

(assert (= (and b!2105704 res!915509) b!2105708))

(assert (= (and b!2105708 res!915513) b!2105705))

(assert (= (and b!2105705 res!915510) b!2105691))

(assert (= (and b!2105691 res!915508) b!2105707))

(assert (= (and b!2105707 (not res!915514)) b!2105694))

(assert (= (and b!2105694 (not res!915512)) b!2105686))

(assert (= (and b!2105686 (not res!915511)) b!2105695))

(assert (= (and b!2105695 res!915506) b!2105709))

(assert (= b!2105696 b!2105690))

(assert (= b!2105693 b!2105696))

(assert (= (and start!205872 ((_ is Cons!23239) rulesArg!349)) b!2105693))

(assert (= start!205872 b!2105698))

(assert (= start!205872 b!2105682))

(assert (= (and b!2105699 condMapEmpty!10831) mapIsEmpty!10830))

(assert (= (and b!2105699 (not condMapEmpty!10831)) mapNonEmpty!10830))

(assert (= b!2105688 b!2105699))

(assert (= b!2105700 b!2105688))

(assert (= b!2105701 b!2105700))

(assert (= (and b!2105687 ((_ is LongMap!2242) (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))) b!2105701))

(assert (= b!2105683 b!2105687))

(assert (= (and b!2105681 ((_ is HashMap!2156) (cache!2537 cacheUp!675))) b!2105683))

(assert (= start!205872 b!2105681))

(assert (= (and b!2105685 condMapEmpty!10830) mapIsEmpty!10831))

(assert (= (and b!2105685 (not condMapEmpty!10830)) mapNonEmpty!10831))

(assert (= b!2105684 b!2105685))

(assert (= b!2105697 b!2105684))

(assert (= b!2105706 b!2105697))

(assert (= (and b!2105692 ((_ is LongMap!2241) (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))) b!2105706))

(assert (= b!2105689 b!2105692))

(assert (= (and b!2105703 ((_ is HashMap!2155) (cache!2536 cacheDown!688))) b!2105689))

(assert (= start!205872 b!2105703))

(declare-fun m!2564157 () Bool)

(assert (=> b!2105704 m!2564157))

(declare-fun m!2564159 () Bool)

(assert (=> b!2105688 m!2564159))

(declare-fun m!2564161 () Bool)

(assert (=> b!2105688 m!2564161))

(declare-fun m!2564163 () Bool)

(assert (=> b!2105702 m!2564163))

(declare-fun m!2564165 () Bool)

(assert (=> mapNonEmpty!10830 m!2564165))

(declare-fun m!2564167 () Bool)

(assert (=> b!2105686 m!2564167))

(declare-fun m!2564169 () Bool)

(assert (=> mapNonEmpty!10831 m!2564169))

(declare-fun m!2564171 () Bool)

(assert (=> start!205872 m!2564171))

(declare-fun m!2564173 () Bool)

(assert (=> start!205872 m!2564173))

(declare-fun m!2564175 () Bool)

(assert (=> start!205872 m!2564175))

(declare-fun m!2564177 () Bool)

(assert (=> start!205872 m!2564177))

(declare-fun m!2564179 () Bool)

(assert (=> b!2105691 m!2564179))

(declare-fun m!2564181 () Bool)

(assert (=> b!2105698 m!2564181))

(declare-fun m!2564183 () Bool)

(assert (=> b!2105682 m!2564183))

(declare-fun m!2564185 () Bool)

(assert (=> b!2105705 m!2564185))

(declare-fun m!2564187 () Bool)

(assert (=> b!2105695 m!2564187))

(declare-fun m!2564189 () Bool)

(assert (=> b!2105694 m!2564189))

(declare-fun m!2564191 () Bool)

(assert (=> b!2105694 m!2564191))

(declare-fun m!2564193 () Bool)

(assert (=> b!2105707 m!2564193))

(declare-fun m!2564195 () Bool)

(assert (=> b!2105707 m!2564195))

(declare-fun m!2564197 () Bool)

(assert (=> b!2105684 m!2564197))

(declare-fun m!2564199 () Bool)

(assert (=> b!2105684 m!2564199))

(declare-fun m!2564201 () Bool)

(assert (=> b!2105696 m!2564201))

(declare-fun m!2564203 () Bool)

(assert (=> b!2105696 m!2564203))

(declare-fun m!2564205 () Bool)

(assert (=> b!2105709 m!2564205))

(declare-fun m!2564207 () Bool)

(assert (=> b!2105708 m!2564207))

(assert (=> b!2105708 m!2564207))

(declare-fun m!2564209 () Bool)

(assert (=> b!2105708 m!2564209))

(declare-fun m!2564211 () Bool)

(assert (=> b!2105708 m!2564211))

(check-sat (not b!2105708) (not b_next!61201) (not b!2105704) (not b!2105691) (not b!2105686) b_and!170055 (not mapNonEmpty!10830) (not b!2105695) (not b!2105699) b_and!170057 (not mapNonEmpty!10831) (not b!2105702) (not b!2105694) (not b!2105684) (not b!2105682) (not b!2105707) b_and!170051 (not b_next!61197) (not b!2105696) (not b_next!61195) b_and!170061 b_and!170059 (not b_next!61203) (not b!2105709) (not b!2105693) (not b!2105685) (not b!2105698) (not b!2105705) b_and!170053 (not b_next!61193) (not b_next!61199) (not start!205872) (not b!2105688))
(check-sat b_and!170055 b_and!170057 b_and!170051 (not b_next!61201) (not b_next!61197) (not b_next!61195) b_and!170061 b_and!170059 (not b_next!61203) b_and!170053 (not b_next!61193) (not b_next!61199))
(get-model)

(declare-fun d!641691 () Bool)

(assert (=> d!641691 (= (array_inv!2464 (_keys!2539 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) (bvsge (size!18136 (_keys!2539 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105688 d!641691))

(declare-fun d!641693 () Bool)

(assert (=> d!641693 (= (array_inv!2466 (_values!2522 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) (bvsge (size!18138 (_values!2522 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105688 d!641693))

(declare-fun b!2105720 () Bool)

(declare-fun e!1338151 () Bool)

(declare-fun tail!3098 (List!23319) List!23319)

(assert (=> b!2105720 (= e!1338151 (isPrefix!2071 (tail!3098 lt!791335) (tail!3098 lt!791335)))))

(declare-fun b!2105721 () Bool)

(declare-fun e!1338153 () Bool)

(declare-fun size!18140 (List!23319) Int)

(assert (=> b!2105721 (= e!1338153 (>= (size!18140 lt!791335) (size!18140 lt!791335)))))

(declare-fun b!2105718 () Bool)

(declare-fun e!1338152 () Bool)

(assert (=> b!2105718 (= e!1338152 e!1338151)))

(declare-fun res!915528 () Bool)

(assert (=> b!2105718 (=> (not res!915528) (not e!1338151))))

(assert (=> b!2105718 (= res!915528 (not ((_ is Nil!23235) lt!791335)))))

(declare-fun d!641695 () Bool)

(assert (=> d!641695 e!1338153))

(declare-fun res!915529 () Bool)

(assert (=> d!641695 (=> res!915529 e!1338153)))

(declare-fun lt!791338 () Bool)

(assert (=> d!641695 (= res!915529 (not lt!791338))))

(assert (=> d!641695 (= lt!791338 e!1338152)))

(declare-fun res!915527 () Bool)

(assert (=> d!641695 (=> res!915527 e!1338152)))

(assert (=> d!641695 (= res!915527 ((_ is Nil!23235) lt!791335))))

(assert (=> d!641695 (= (isPrefix!2071 lt!791335 lt!791335) lt!791338)))

(declare-fun b!2105719 () Bool)

(declare-fun res!915530 () Bool)

(assert (=> b!2105719 (=> (not res!915530) (not e!1338151))))

(declare-fun head!4626 (List!23319) C!11280)

(assert (=> b!2105719 (= res!915530 (= (head!4626 lt!791335) (head!4626 lt!791335)))))

(assert (= (and d!641695 (not res!915527)) b!2105718))

(assert (= (and b!2105718 res!915528) b!2105719))

(assert (= (and b!2105719 res!915530) b!2105720))

(assert (= (and d!641695 (not res!915529)) b!2105721))

(declare-fun m!2564213 () Bool)

(assert (=> b!2105720 m!2564213))

(assert (=> b!2105720 m!2564213))

(assert (=> b!2105720 m!2564213))

(assert (=> b!2105720 m!2564213))

(declare-fun m!2564215 () Bool)

(assert (=> b!2105720 m!2564215))

(declare-fun m!2564217 () Bool)

(assert (=> b!2105721 m!2564217))

(assert (=> b!2105721 m!2564217))

(declare-fun m!2564219 () Bool)

(assert (=> b!2105719 m!2564219))

(assert (=> b!2105719 m!2564219))

(assert (=> b!2105707 d!641695))

(declare-fun d!641697 () Bool)

(assert (=> d!641697 (isPrefix!2071 lt!791335 lt!791335)))

(declare-fun lt!791341 () Unit!37459)

(declare-fun choose!12628 (List!23319 List!23319) Unit!37459)

(assert (=> d!641697 (= lt!791341 (choose!12628 lt!791335 lt!791335))))

(assert (=> d!641697 (= (lemmaIsPrefixRefl!1389 lt!791335 lt!791335) lt!791341)))

(declare-fun bs!440930 () Bool)

(assert (= bs!440930 d!641697))

(assert (=> bs!440930 m!2564193))

(declare-fun m!2564221 () Bool)

(assert (=> bs!440930 m!2564221))

(assert (=> b!2105707 d!641697))

(declare-fun d!641699 () Bool)

(declare-fun e!1338156 () Bool)

(assert (=> d!641699 e!1338156))

(declare-fun res!915533 () Bool)

(assert (=> d!641699 (=> res!915533 e!1338156)))

(declare-fun lt!791344 () Bool)

(assert (=> d!641699 (= res!915533 (not lt!791344))))

(declare-fun drop!1161 (List!23319 Int) List!23319)

(assert (=> d!641699 (= lt!791344 (= lt!791335 (drop!1161 (list!9439 totalInput!482) (- (size!18140 (list!9439 totalInput!482)) (size!18140 lt!791335)))))))

(assert (=> d!641699 (= (isSuffix!555 lt!791335 (list!9439 totalInput!482)) lt!791344)))

(declare-fun b!2105724 () Bool)

(assert (=> b!2105724 (= e!1338156 (>= (size!18140 (list!9439 totalInput!482)) (size!18140 lt!791335)))))

(assert (= (and d!641699 (not res!915533)) b!2105724))

(assert (=> d!641699 m!2564207))

(declare-fun m!2564223 () Bool)

(assert (=> d!641699 m!2564223))

(assert (=> d!641699 m!2564217))

(assert (=> d!641699 m!2564207))

(declare-fun m!2564225 () Bool)

(assert (=> d!641699 m!2564225))

(assert (=> b!2105724 m!2564207))

(assert (=> b!2105724 m!2564223))

(assert (=> b!2105724 m!2564217))

(assert (=> b!2105708 d!641699))

(declare-fun d!641701 () Bool)

(declare-fun list!9440 (Conc!7716) List!23319)

(assert (=> d!641701 (= (list!9439 totalInput!482) (list!9440 (c!338876 totalInput!482)))))

(declare-fun bs!440931 () Bool)

(assert (= bs!440931 d!641701))

(declare-fun m!2564227 () Bool)

(assert (=> bs!440931 m!2564227))

(assert (=> b!2105708 d!641701))

(declare-fun d!641703 () Bool)

(assert (=> d!641703 (= (list!9439 input!1444) (list!9440 (c!338876 input!1444)))))

(declare-fun bs!440932 () Bool)

(assert (= bs!440932 d!641703))

(declare-fun m!2564229 () Bool)

(assert (=> bs!440932 m!2564229))

(assert (=> b!2105708 d!641703))

(declare-fun d!641705 () Bool)

(declare-fun c!338880 () Bool)

(assert (=> d!641705 (= c!338880 ((_ is Node!7716) (c!338876 totalInput!482)))))

(declare-fun e!1338161 () Bool)

(assert (=> d!641705 (= (inv!30763 (c!338876 totalInput!482)) e!1338161)))

(declare-fun b!2105731 () Bool)

(declare-fun inv!30768 (Conc!7716) Bool)

(assert (=> b!2105731 (= e!1338161 (inv!30768 (c!338876 totalInput!482)))))

(declare-fun b!2105732 () Bool)

(declare-fun e!1338162 () Bool)

(assert (=> b!2105732 (= e!1338161 e!1338162)))

(declare-fun res!915536 () Bool)

(assert (=> b!2105732 (= res!915536 (not ((_ is Leaf!11267) (c!338876 totalInput!482))))))

(assert (=> b!2105732 (=> res!915536 e!1338162)))

(declare-fun b!2105733 () Bool)

(declare-fun inv!30769 (Conc!7716) Bool)

(assert (=> b!2105733 (= e!1338162 (inv!30769 (c!338876 totalInput!482)))))

(assert (= (and d!641705 c!338880) b!2105731))

(assert (= (and d!641705 (not c!338880)) b!2105732))

(assert (= (and b!2105732 (not res!915536)) b!2105733))

(declare-fun m!2564231 () Bool)

(assert (=> b!2105731 m!2564231))

(declare-fun m!2564233 () Bool)

(assert (=> b!2105733 m!2564233))

(assert (=> b!2105698 d!641705))

(declare-fun d!641707 () Bool)

(declare-fun validCacheMapUp!222 (MutableMap!2156) Bool)

(assert (=> d!641707 (= (valid!1778 (_2!13001 lt!791333)) (validCacheMapUp!222 (cache!2537 (_2!13001 lt!791333))))))

(declare-fun bs!440933 () Bool)

(assert (= bs!440933 d!641707))

(declare-fun m!2564235 () Bool)

(assert (=> bs!440933 m!2564235))

(assert (=> b!2105695 d!641707))

(declare-fun d!641709 () Bool)

(assert (=> d!641709 (= (valid!1778 cacheUp!675) (validCacheMapUp!222 (cache!2537 cacheUp!675)))))

(declare-fun bs!440934 () Bool)

(assert (= bs!440934 d!641709))

(declare-fun m!2564237 () Bool)

(assert (=> bs!440934 m!2564237))

(assert (=> b!2105705 d!641709))

(declare-fun d!641711 () Bool)

(assert (=> d!641711 (= (inv!30762 (tag!4626 (h!28640 rulesArg!349))) (= (mod (str.len (value!129519 (tag!4626 (h!28640 rulesArg!349)))) 2) 0))))

(assert (=> b!2105696 d!641711))

(declare-fun d!641713 () Bool)

(declare-fun res!915539 () Bool)

(declare-fun e!1338165 () Bool)

(assert (=> d!641713 (=> (not res!915539) (not e!1338165))))

(declare-fun semiInverseModEq!1652 (Int Int) Bool)

(assert (=> d!641713 (= res!915539 (semiInverseModEq!1652 (toChars!5706 (transformation!4136 (h!28640 rulesArg!349))) (toValue!5847 (transformation!4136 (h!28640 rulesArg!349)))))))

(assert (=> d!641713 (= (inv!30767 (transformation!4136 (h!28640 rulesArg!349))) e!1338165)))

(declare-fun b!2105736 () Bool)

(declare-fun equivClasses!1579 (Int Int) Bool)

(assert (=> b!2105736 (= e!1338165 (equivClasses!1579 (toChars!5706 (transformation!4136 (h!28640 rulesArg!349))) (toValue!5847 (transformation!4136 (h!28640 rulesArg!349)))))))

(assert (= (and d!641713 res!915539) b!2105736))

(declare-fun m!2564239 () Bool)

(assert (=> d!641713 m!2564239))

(declare-fun m!2564241 () Bool)

(assert (=> b!2105736 m!2564241))

(assert (=> b!2105696 d!641713))

(declare-fun d!641715 () Bool)

(assert (=> d!641715 (= (isEmpty!14273 (t!195816 rulesArg!349)) ((_ is Nil!23239) (t!195816 rulesArg!349)))))

(assert (=> b!2105686 d!641715))

(declare-fun d!641717 () Bool)

(declare-fun c!338881 () Bool)

(assert (=> d!641717 (= c!338881 ((_ is Node!7716) (c!338876 input!1444)))))

(declare-fun e!1338166 () Bool)

(assert (=> d!641717 (= (inv!30763 (c!338876 input!1444)) e!1338166)))

(declare-fun b!2105737 () Bool)

(assert (=> b!2105737 (= e!1338166 (inv!30768 (c!338876 input!1444)))))

(declare-fun b!2105738 () Bool)

(declare-fun e!1338167 () Bool)

(assert (=> b!2105738 (= e!1338166 e!1338167)))

(declare-fun res!915540 () Bool)

(assert (=> b!2105738 (= res!915540 (not ((_ is Leaf!11267) (c!338876 input!1444))))))

(assert (=> b!2105738 (=> res!915540 e!1338167)))

(declare-fun b!2105739 () Bool)

(assert (=> b!2105739 (= e!1338167 (inv!30769 (c!338876 input!1444)))))

(assert (= (and d!641717 c!338881) b!2105737))

(assert (= (and d!641717 (not c!338881)) b!2105738))

(assert (= (and b!2105738 (not res!915540)) b!2105739))

(declare-fun m!2564243 () Bool)

(assert (=> b!2105737 m!2564243))

(declare-fun m!2564245 () Bool)

(assert (=> b!2105739 m!2564245))

(assert (=> b!2105682 d!641717))

(declare-fun d!641719 () Bool)

(assert (=> d!641719 true))

(declare-fun lt!791347 () Bool)

(declare-fun lambda!78147 () Int)

(declare-fun forall!4834 (List!23323 Int) Bool)

(assert (=> d!641719 (= lt!791347 (forall!4834 rulesArg!349 lambda!78147))))

(declare-fun e!1338173 () Bool)

(assert (=> d!641719 (= lt!791347 e!1338173)))

(declare-fun res!915546 () Bool)

(assert (=> d!641719 (=> res!915546 e!1338173)))

(assert (=> d!641719 (= res!915546 (not ((_ is Cons!23239) rulesArg!349)))))

(assert (=> d!641719 (= (rulesValidInductive!1452 thiss!15689 rulesArg!349) lt!791347)))

(declare-fun b!2105744 () Bool)

(declare-fun e!1338172 () Bool)

(assert (=> b!2105744 (= e!1338173 e!1338172)))

(declare-fun res!915545 () Bool)

(assert (=> b!2105744 (=> (not res!915545) (not e!1338172))))

(declare-fun ruleValid!1265 (LexerInterface!3735 Rule!8072) Bool)

(assert (=> b!2105744 (= res!915545 (ruleValid!1265 thiss!15689 (h!28640 rulesArg!349)))))

(declare-fun b!2105745 () Bool)

(assert (=> b!2105745 (= e!1338172 (rulesValidInductive!1452 thiss!15689 (t!195816 rulesArg!349)))))

(assert (= (and d!641719 (not res!915546)) b!2105744))

(assert (= (and b!2105744 res!915545) b!2105745))

(declare-fun m!2564247 () Bool)

(assert (=> d!641719 m!2564247))

(declare-fun m!2564249 () Bool)

(assert (=> b!2105744 m!2564249))

(assert (=> b!2105745 m!2564189))

(assert (=> b!2105702 d!641719))

(declare-fun d!641721 () Bool)

(assert (=> d!641721 (= (array_inv!2464 (_keys!2538 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) (bvsge (size!18136 (_keys!2538 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105684 d!641721))

(declare-fun d!641723 () Bool)

(assert (=> d!641723 (= (array_inv!2465 (_values!2521 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) (bvsge (size!18137 (_values!2521 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105684 d!641723))

(declare-fun d!641725 () Bool)

(assert (=> d!641725 (= (isEmpty!14273 rulesArg!349) ((_ is Nil!23239) rulesArg!349))))

(assert (=> b!2105704 d!641725))

(declare-fun bs!440935 () Bool)

(declare-fun d!641727 () Bool)

(assert (= bs!440935 (and d!641727 d!641719)))

(declare-fun lambda!78148 () Int)

(assert (=> bs!440935 (= lambda!78148 lambda!78147)))

(assert (=> d!641727 true))

(declare-fun lt!791348 () Bool)

(assert (=> d!641727 (= lt!791348 (forall!4834 (t!195816 rulesArg!349) lambda!78148))))

(declare-fun e!1338175 () Bool)

(assert (=> d!641727 (= lt!791348 e!1338175)))

(declare-fun res!915548 () Bool)

(assert (=> d!641727 (=> res!915548 e!1338175)))

(assert (=> d!641727 (= res!915548 (not ((_ is Cons!23239) (t!195816 rulesArg!349))))))

(assert (=> d!641727 (= (rulesValidInductive!1452 thiss!15689 (t!195816 rulesArg!349)) lt!791348)))

(declare-fun b!2105748 () Bool)

(declare-fun e!1338174 () Bool)

(assert (=> b!2105748 (= e!1338175 e!1338174)))

(declare-fun res!915547 () Bool)

(assert (=> b!2105748 (=> (not res!915547) (not e!1338174))))

(assert (=> b!2105748 (= res!915547 (ruleValid!1265 thiss!15689 (h!28640 (t!195816 rulesArg!349))))))

(declare-fun b!2105749 () Bool)

(assert (=> b!2105749 (= e!1338174 (rulesValidInductive!1452 thiss!15689 (t!195816 (t!195816 rulesArg!349))))))

(assert (= (and d!641727 (not res!915548)) b!2105748))

(assert (= (and b!2105748 res!915547) b!2105749))

(declare-fun m!2564251 () Bool)

(assert (=> d!641727 m!2564251))

(declare-fun m!2564253 () Bool)

(assert (=> b!2105748 m!2564253))

(declare-fun m!2564255 () Bool)

(assert (=> b!2105749 m!2564255))

(assert (=> b!2105694 d!641727))

(declare-fun b!2105760 () Bool)

(declare-fun e!1338182 () Bool)

(declare-fun lt!791362 () tuple3!2568)

(assert (=> b!2105760 (= e!1338182 (valid!1777 (_3!1748 lt!791362)))))

(declare-fun b!2105761 () Bool)

(declare-fun e!1338184 () Option!4850)

(declare-datatypes ((tuple2!22506 0))(
  ( (tuple2!22507 (_1!13002 BalanceConc!15194) (_2!13002 BalanceConc!15194)) )
))
(declare-datatypes ((tuple3!2570 0))(
  ( (tuple3!2571 (_1!13003 tuple2!22506) (_2!13003 CacheUp!1448) (_3!1749 CacheDown!1456)) )
))
(declare-fun lt!791361 () tuple3!2570)

(declare-fun apply!5895 (TokenValueInjection!8128 BalanceConc!15194) TokenValue!4272)

(declare-fun size!18141 (BalanceConc!15194) Int)

(assert (=> b!2105761 (= e!1338184 (Some!4849 (tuple2!22505 (Token!7795 (apply!5895 (transformation!4136 (h!28640 rulesArg!349)) (_1!13002 (_1!13003 lt!791361))) (h!28640 rulesArg!349) (size!18141 (_1!13002 (_1!13003 lt!791361))) (list!9439 (_1!13002 (_1!13003 lt!791361)))) (_2!13002 (_1!13003 lt!791361)))))))

(declare-fun lt!791366 () List!23319)

(assert (=> b!2105761 (= lt!791366 (list!9439 input!1444))))

(declare-fun lt!791365 () Unit!37459)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!571 (Regex!5567 List!23319) Unit!37459)

(assert (=> b!2105761 (= lt!791365 (longestMatchIsAcceptedByMatchOrIsEmpty!571 (regex!4136 (h!28640 rulesArg!349)) lt!791366))))

(declare-fun res!915557 () Bool)

(declare-fun isEmpty!14274 (List!23319) Bool)

(declare-datatypes ((tuple2!22508 0))(
  ( (tuple2!22509 (_1!13004 List!23319) (_2!13004 List!23319)) )
))
(declare-fun findLongestMatchInner!587 (Regex!5567 List!23319 Int List!23319 List!23319 Int) tuple2!22508)

(assert (=> b!2105761 (= res!915557 (isEmpty!14274 (_1!13004 (findLongestMatchInner!587 (regex!4136 (h!28640 rulesArg!349)) Nil!23235 (size!18140 Nil!23235) lt!791366 lt!791366 (size!18140 lt!791366)))))))

(declare-fun e!1338183 () Bool)

(assert (=> b!2105761 (=> res!915557 e!1338183)))

(assert (=> b!2105761 e!1338183))

(declare-fun lt!791363 () Unit!37459)

(assert (=> b!2105761 (= lt!791363 lt!791365)))

(declare-fun lt!791364 () Unit!37459)

(declare-fun lemmaSemiInverse!985 (TokenValueInjection!8128 BalanceConc!15194) Unit!37459)

(assert (=> b!2105761 (= lt!791364 (lemmaSemiInverse!985 (transformation!4136 (h!28640 rulesArg!349)) (_1!13002 (_1!13003 lt!791361))))))

(declare-fun d!641729 () Bool)

(assert (=> d!641729 e!1338182))

(declare-fun res!915555 () Bool)

(assert (=> d!641729 (=> (not res!915555) (not e!1338182))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!173 (LexerInterface!3735 Rule!8072 BalanceConc!15194 BalanceConc!15194) Option!4850)

(assert (=> d!641729 (= res!915555 (= (_1!13001 lt!791362) (maxPrefixOneRuleZipperSequenceV2!173 thiss!15689 (h!28640 rulesArg!349) input!1444 totalInput!482)))))

(assert (=> d!641729 (= lt!791362 (tuple3!2569 e!1338184 (_2!13003 lt!791361) (_3!1749 lt!791361)))))

(declare-fun c!338884 () Bool)

(declare-fun isEmpty!14275 (BalanceConc!15194) Bool)

(assert (=> d!641729 (= c!338884 (isEmpty!14275 (_1!13002 (_1!13003 lt!791361))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!30 (Regex!5567 BalanceConc!15194 BalanceConc!15194 CacheUp!1448 CacheDown!1456) tuple3!2570)

(assert (=> d!641729 (= lt!791361 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!30 (regex!4136 (h!28640 rulesArg!349)) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(assert (=> d!641729 (ruleValid!1265 thiss!15689 (h!28640 rulesArg!349))))

(assert (=> d!641729 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!67 thiss!15689 (h!28640 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688) lt!791362)))

(declare-fun b!2105762 () Bool)

(declare-fun matchR!2721 (Regex!5567 List!23319) Bool)

(assert (=> b!2105762 (= e!1338183 (matchR!2721 (regex!4136 (h!28640 rulesArg!349)) (_1!13004 (findLongestMatchInner!587 (regex!4136 (h!28640 rulesArg!349)) Nil!23235 (size!18140 Nil!23235) lt!791366 lt!791366 (size!18140 lt!791366)))))))

(declare-fun b!2105763 () Bool)

(assert (=> b!2105763 (= e!1338184 None!4849)))

(declare-fun b!2105764 () Bool)

(declare-fun res!915556 () Bool)

(assert (=> b!2105764 (=> (not res!915556) (not e!1338182))))

(assert (=> b!2105764 (= res!915556 (valid!1778 (_2!13001 lt!791362)))))

(assert (= (and d!641729 c!338884) b!2105763))

(assert (= (and d!641729 (not c!338884)) b!2105761))

(assert (= (and b!2105761 (not res!915557)) b!2105762))

(assert (= (and d!641729 res!915555) b!2105764))

(assert (= (and b!2105764 res!915556) b!2105760))

(declare-fun m!2564257 () Bool)

(assert (=> b!2105760 m!2564257))

(declare-fun m!2564259 () Bool)

(assert (=> d!641729 m!2564259))

(declare-fun m!2564261 () Bool)

(assert (=> d!641729 m!2564261))

(declare-fun m!2564263 () Bool)

(assert (=> d!641729 m!2564263))

(assert (=> d!641729 m!2564249))

(declare-fun m!2564265 () Bool)

(assert (=> b!2105762 m!2564265))

(declare-fun m!2564267 () Bool)

(assert (=> b!2105762 m!2564267))

(assert (=> b!2105762 m!2564265))

(assert (=> b!2105762 m!2564267))

(declare-fun m!2564269 () Bool)

(assert (=> b!2105762 m!2564269))

(declare-fun m!2564271 () Bool)

(assert (=> b!2105762 m!2564271))

(declare-fun m!2564273 () Bool)

(assert (=> b!2105764 m!2564273))

(assert (=> b!2105761 m!2564265))

(declare-fun m!2564275 () Bool)

(assert (=> b!2105761 m!2564275))

(declare-fun m!2564277 () Bool)

(assert (=> b!2105761 m!2564277))

(assert (=> b!2105761 m!2564211))

(assert (=> b!2105761 m!2564267))

(assert (=> b!2105761 m!2564265))

(assert (=> b!2105761 m!2564267))

(assert (=> b!2105761 m!2564269))

(declare-fun m!2564279 () Bool)

(assert (=> b!2105761 m!2564279))

(declare-fun m!2564281 () Bool)

(assert (=> b!2105761 m!2564281))

(declare-fun m!2564283 () Bool)

(assert (=> b!2105761 m!2564283))

(declare-fun m!2564285 () Bool)

(assert (=> b!2105761 m!2564285))

(assert (=> b!2105694 d!641729))

(declare-fun d!641731 () Bool)

(declare-fun validCacheMapDown!220 (MutableMap!2155) Bool)

(assert (=> d!641731 (= (valid!1777 (_3!1748 lt!791333)) (validCacheMapDown!220 (cache!2536 (_3!1748 lt!791333))))))

(declare-fun bs!440936 () Bool)

(assert (= bs!440936 d!641731))

(declare-fun m!2564287 () Bool)

(assert (=> bs!440936 m!2564287))

(assert (=> b!2105709 d!641731))

(declare-fun d!641733 () Bool)

(declare-fun isBalanced!2426 (Conc!7716) Bool)

(assert (=> d!641733 (= (inv!30764 totalInput!482) (isBalanced!2426 (c!338876 totalInput!482)))))

(declare-fun bs!440937 () Bool)

(assert (= bs!440937 d!641733))

(declare-fun m!2564289 () Bool)

(assert (=> bs!440937 m!2564289))

(assert (=> start!205872 d!641733))

(declare-fun d!641735 () Bool)

(assert (=> d!641735 (= (inv!30764 input!1444) (isBalanced!2426 (c!338876 input!1444)))))

(declare-fun bs!440938 () Bool)

(assert (= bs!440938 d!641735))

(declare-fun m!2564291 () Bool)

(assert (=> bs!440938 m!2564291))

(assert (=> start!205872 d!641735))

(declare-fun d!641737 () Bool)

(declare-fun res!915560 () Bool)

(declare-fun e!1338187 () Bool)

(assert (=> d!641737 (=> (not res!915560) (not e!1338187))))

(assert (=> d!641737 (= res!915560 ((_ is HashMap!2156) (cache!2537 cacheUp!675)))))

(assert (=> d!641737 (= (inv!30765 cacheUp!675) e!1338187)))

(declare-fun b!2105767 () Bool)

(assert (=> b!2105767 (= e!1338187 (validCacheMapUp!222 (cache!2537 cacheUp!675)))))

(assert (= (and d!641737 res!915560) b!2105767))

(assert (=> b!2105767 m!2564237))

(assert (=> start!205872 d!641737))

(declare-fun d!641739 () Bool)

(declare-fun res!915563 () Bool)

(declare-fun e!1338190 () Bool)

(assert (=> d!641739 (=> (not res!915563) (not e!1338190))))

(assert (=> d!641739 (= res!915563 ((_ is HashMap!2155) (cache!2536 cacheDown!688)))))

(assert (=> d!641739 (= (inv!30766 cacheDown!688) e!1338190)))

(declare-fun b!2105770 () Bool)

(assert (=> b!2105770 (= e!1338190 (validCacheMapDown!220 (cache!2536 cacheDown!688)))))

(assert (= (and d!641739 res!915563) b!2105770))

(declare-fun m!2564293 () Bool)

(assert (=> b!2105770 m!2564293))

(assert (=> start!205872 d!641739))

(declare-fun d!641741 () Bool)

(assert (=> d!641741 (= (valid!1777 cacheDown!688) (validCacheMapDown!220 (cache!2536 cacheDown!688)))))

(declare-fun bs!440939 () Bool)

(assert (= bs!440939 d!641741))

(assert (=> bs!440939 m!2564293))

(assert (=> b!2105691 d!641741))

(declare-fun e!1338199 () Bool)

(declare-fun setRes!13784 () Bool)

(declare-fun setElem!13784 () Context!2274)

(declare-fun tp!638367 () Bool)

(declare-fun setNonEmpty!13784 () Bool)

(declare-fun inv!30770 (Context!2274) Bool)

(assert (=> setNonEmpty!13784 (= setRes!13784 (and tp!638367 (inv!30770 setElem!13784) e!1338199))))

(declare-fun setRest!13784 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13784 (= (_2!12999 (h!28641 (zeroValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13784 true) setRest!13784))))

(declare-fun b!2105779 () Bool)

(declare-fun e!1338198 () Bool)

(declare-fun tp!638365 () Bool)

(assert (=> b!2105779 (= e!1338198 tp!638365)))

(declare-fun b!2105780 () Bool)

(declare-fun tp!638366 () Bool)

(assert (=> b!2105780 (= e!1338199 tp!638366)))

(declare-fun e!1338197 () Bool)

(assert (=> b!2105688 (= tp!638344 e!1338197)))

(declare-fun tp!638364 () Bool)

(declare-fun b!2105781 () Bool)

(declare-fun tp_is_empty!9367 () Bool)

(assert (=> b!2105781 (= e!1338197 (and (inv!30770 (_1!12998 (_1!12999 (h!28641 (zeroValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))))) e!1338198 tp_is_empty!9367 setRes!13784 tp!638364))))

(declare-fun condSetEmpty!13784 () Bool)

(assert (=> b!2105781 (= condSetEmpty!13784 (= (_2!12999 (h!28641 (zeroValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun setIsEmpty!13784 () Bool)

(assert (=> setIsEmpty!13784 setRes!13784))

(assert (= b!2105781 b!2105779))

(assert (= (and b!2105781 condSetEmpty!13784) setIsEmpty!13784))

(assert (= (and b!2105781 (not condSetEmpty!13784)) setNonEmpty!13784))

(assert (= setNonEmpty!13784 b!2105780))

(assert (= (and b!2105688 ((_ is Cons!23240) (zeroValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))) b!2105781))

(declare-fun m!2564295 () Bool)

(assert (=> setNonEmpty!13784 m!2564295))

(declare-fun m!2564297 () Bool)

(assert (=> b!2105781 m!2564297))

(declare-fun setElem!13785 () Context!2274)

(declare-fun tp!638371 () Bool)

(declare-fun e!1338202 () Bool)

(declare-fun setRes!13785 () Bool)

(declare-fun setNonEmpty!13785 () Bool)

(assert (=> setNonEmpty!13785 (= setRes!13785 (and tp!638371 (inv!30770 setElem!13785) e!1338202))))

(declare-fun setRest!13785 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13785 (= (_2!12999 (h!28641 (minValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13785 true) setRest!13785))))

(declare-fun b!2105782 () Bool)

(declare-fun e!1338201 () Bool)

(declare-fun tp!638369 () Bool)

(assert (=> b!2105782 (= e!1338201 tp!638369)))

(declare-fun b!2105783 () Bool)

(declare-fun tp!638370 () Bool)

(assert (=> b!2105783 (= e!1338202 tp!638370)))

(declare-fun e!1338200 () Bool)

(assert (=> b!2105688 (= tp!638346 e!1338200)))

(declare-fun b!2105784 () Bool)

(declare-fun tp!638368 () Bool)

(assert (=> b!2105784 (= e!1338200 (and (inv!30770 (_1!12998 (_1!12999 (h!28641 (minValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))))) e!1338201 tp_is_empty!9367 setRes!13785 tp!638368))))

(declare-fun condSetEmpty!13785 () Bool)

(assert (=> b!2105784 (= condSetEmpty!13785 (= (_2!12999 (h!28641 (minValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun setIsEmpty!13785 () Bool)

(assert (=> setIsEmpty!13785 setRes!13785))

(assert (= b!2105784 b!2105782))

(assert (= (and b!2105784 condSetEmpty!13785) setIsEmpty!13785))

(assert (= (and b!2105784 (not condSetEmpty!13785)) setNonEmpty!13785))

(assert (= setNonEmpty!13785 b!2105783))

(assert (= (and b!2105688 ((_ is Cons!23240) (minValue!2500 (v!27798 (underlying!4679 (v!27799 (underlying!4680 (cache!2537 cacheUp!675)))))))) b!2105784))

(declare-fun m!2564299 () Bool)

(assert (=> setNonEmpty!13785 m!2564299))

(declare-fun m!2564301 () Bool)

(assert (=> b!2105784 m!2564301))

(declare-fun b!2105795 () Bool)

(declare-fun b_free!60501 () Bool)

(declare-fun b_next!61205 () Bool)

(assert (=> b!2105795 (= b_free!60501 (not b_next!61205))))

(declare-fun tp!638383 () Bool)

(declare-fun b_and!170063 () Bool)

(assert (=> b!2105795 (= tp!638383 b_and!170063)))

(declare-fun b_free!60503 () Bool)

(declare-fun b_next!61207 () Bool)

(assert (=> b!2105795 (= b_free!60503 (not b_next!61207))))

(declare-fun tp!638380 () Bool)

(declare-fun b_and!170065 () Bool)

(assert (=> b!2105795 (= tp!638380 b_and!170065)))

(declare-fun e!1338214 () Bool)

(assert (=> b!2105795 (= e!1338214 (and tp!638383 tp!638380))))

(declare-fun e!1338213 () Bool)

(declare-fun b!2105794 () Bool)

(declare-fun tp!638381 () Bool)

(assert (=> b!2105794 (= e!1338213 (and tp!638381 (inv!30762 (tag!4626 (h!28640 (t!195816 rulesArg!349)))) (inv!30767 (transformation!4136 (h!28640 (t!195816 rulesArg!349)))) e!1338214))))

(declare-fun b!2105793 () Bool)

(declare-fun e!1338211 () Bool)

(declare-fun tp!638382 () Bool)

(assert (=> b!2105793 (= e!1338211 (and e!1338213 tp!638382))))

(assert (=> b!2105693 (= tp!638353 e!1338211)))

(assert (= b!2105794 b!2105795))

(assert (= b!2105793 b!2105794))

(assert (= (and b!2105693 ((_ is Cons!23239) (t!195816 rulesArg!349))) b!2105793))

(declare-fun m!2564303 () Bool)

(assert (=> b!2105794 m!2564303))

(declare-fun m!2564305 () Bool)

(assert (=> b!2105794 m!2564305))

(declare-fun e!1338220 () Bool)

(declare-fun tp!638390 () Bool)

(declare-fun tp!638391 () Bool)

(declare-fun b!2105804 () Bool)

(assert (=> b!2105804 (= e!1338220 (and (inv!30763 (left!18136 (c!338876 input!1444))) tp!638391 (inv!30763 (right!18466 (c!338876 input!1444))) tp!638390))))

(declare-fun b!2105806 () Bool)

(declare-fun e!1338219 () Bool)

(declare-fun tp!638392 () Bool)

(assert (=> b!2105806 (= e!1338219 tp!638392)))

(declare-fun b!2105805 () Bool)

(declare-fun inv!30771 (IArray!15437) Bool)

(assert (=> b!2105805 (= e!1338220 (and (inv!30771 (xs!10658 (c!338876 input!1444))) e!1338219))))

(assert (=> b!2105682 (= tp!638354 (and (inv!30763 (c!338876 input!1444)) e!1338220))))

(assert (= (and b!2105682 ((_ is Node!7716) (c!338876 input!1444))) b!2105804))

(assert (= b!2105805 b!2105806))

(assert (= (and b!2105682 ((_ is Leaf!11267) (c!338876 input!1444))) b!2105805))

(declare-fun m!2564307 () Bool)

(assert (=> b!2105804 m!2564307))

(declare-fun m!2564309 () Bool)

(assert (=> b!2105804 m!2564309))

(declare-fun m!2564311 () Bool)

(assert (=> b!2105805 m!2564311))

(assert (=> b!2105682 m!2564183))

(declare-fun setNonEmpty!13786 () Bool)

(declare-fun tp!638396 () Bool)

(declare-fun setElem!13786 () Context!2274)

(declare-fun e!1338223 () Bool)

(declare-fun setRes!13786 () Bool)

(assert (=> setNonEmpty!13786 (= setRes!13786 (and tp!638396 (inv!30770 setElem!13786) e!1338223))))

(declare-fun setRest!13786 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13786 (= (_2!12999 (h!28641 mapDefault!10831)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13786 true) setRest!13786))))

(declare-fun b!2105807 () Bool)

(declare-fun e!1338222 () Bool)

(declare-fun tp!638394 () Bool)

(assert (=> b!2105807 (= e!1338222 tp!638394)))

(declare-fun b!2105808 () Bool)

(declare-fun tp!638395 () Bool)

(assert (=> b!2105808 (= e!1338223 tp!638395)))

(declare-fun e!1338221 () Bool)

(assert (=> b!2105699 (= tp!638347 e!1338221)))

(declare-fun b!2105809 () Bool)

(declare-fun tp!638393 () Bool)

(assert (=> b!2105809 (= e!1338221 (and (inv!30770 (_1!12998 (_1!12999 (h!28641 mapDefault!10831)))) e!1338222 tp_is_empty!9367 setRes!13786 tp!638393))))

(declare-fun condSetEmpty!13786 () Bool)

(assert (=> b!2105809 (= condSetEmpty!13786 (= (_2!12999 (h!28641 mapDefault!10831)) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun setIsEmpty!13786 () Bool)

(assert (=> setIsEmpty!13786 setRes!13786))

(assert (= b!2105809 b!2105807))

(assert (= (and b!2105809 condSetEmpty!13786) setIsEmpty!13786))

(assert (= (and b!2105809 (not condSetEmpty!13786)) setNonEmpty!13786))

(assert (= setNonEmpty!13786 b!2105808))

(assert (= (and b!2105699 ((_ is Cons!23240) mapDefault!10831)) b!2105809))

(declare-fun m!2564313 () Bool)

(assert (=> setNonEmpty!13786 m!2564313))

(declare-fun m!2564315 () Bool)

(assert (=> b!2105809 m!2564315))

(declare-fun e!1338231 () Bool)

(assert (=> b!2105684 (= tp!638351 e!1338231)))

(declare-fun b!2105818 () Bool)

(declare-fun e!1338232 () Bool)

(declare-fun tp!638411 () Bool)

(assert (=> b!2105818 (= e!1338232 tp!638411)))

(declare-fun setElem!13789 () Context!2274)

(declare-fun setRes!13789 () Bool)

(declare-fun setNonEmpty!13789 () Bool)

(declare-fun tp!638409 () Bool)

(assert (=> setNonEmpty!13789 (= setRes!13789 (and tp!638409 (inv!30770 setElem!13789) e!1338232))))

(declare-fun setRest!13789 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13789 (= (_2!12997 (h!28638 (zeroValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13789 true) setRest!13789))))

(declare-fun tp!638410 () Bool)

(declare-fun tp!638407 () Bool)

(declare-fun e!1338230 () Bool)

(declare-fun b!2105819 () Bool)

(assert (=> b!2105819 (= e!1338231 (and tp!638410 (inv!30770 (_2!12996 (_1!12997 (h!28638 (zeroValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))))) e!1338230 tp_is_empty!9367 setRes!13789 tp!638407))))

(declare-fun condSetEmpty!13789 () Bool)

(assert (=> b!2105819 (= condSetEmpty!13789 (= (_2!12997 (h!28638 (zeroValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun b!2105820 () Bool)

(declare-fun tp!638408 () Bool)

(assert (=> b!2105820 (= e!1338230 tp!638408)))

(declare-fun setIsEmpty!13789 () Bool)

(assert (=> setIsEmpty!13789 setRes!13789))

(assert (= b!2105819 b!2105820))

(assert (= (and b!2105819 condSetEmpty!13789) setIsEmpty!13789))

(assert (= (and b!2105819 (not condSetEmpty!13789)) setNonEmpty!13789))

(assert (= setNonEmpty!13789 b!2105818))

(assert (= (and b!2105684 ((_ is Cons!23237) (zeroValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))) b!2105819))

(declare-fun m!2564317 () Bool)

(assert (=> setNonEmpty!13789 m!2564317))

(declare-fun m!2564319 () Bool)

(assert (=> b!2105819 m!2564319))

(declare-fun e!1338234 () Bool)

(assert (=> b!2105684 (= tp!638345 e!1338234)))

(declare-fun b!2105821 () Bool)

(declare-fun e!1338235 () Bool)

(declare-fun tp!638416 () Bool)

(assert (=> b!2105821 (= e!1338235 tp!638416)))

(declare-fun tp!638414 () Bool)

(declare-fun setNonEmpty!13790 () Bool)

(declare-fun setRes!13790 () Bool)

(declare-fun setElem!13790 () Context!2274)

(assert (=> setNonEmpty!13790 (= setRes!13790 (and tp!638414 (inv!30770 setElem!13790) e!1338235))))

(declare-fun setRest!13790 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13790 (= (_2!12997 (h!28638 (minValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13790 true) setRest!13790))))

(declare-fun tp!638415 () Bool)

(declare-fun e!1338233 () Bool)

(declare-fun b!2105822 () Bool)

(declare-fun tp!638412 () Bool)

(assert (=> b!2105822 (= e!1338234 (and tp!638415 (inv!30770 (_2!12996 (_1!12997 (h!28638 (minValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))))) e!1338233 tp_is_empty!9367 setRes!13790 tp!638412))))

(declare-fun condSetEmpty!13790 () Bool)

(assert (=> b!2105822 (= condSetEmpty!13790 (= (_2!12997 (h!28638 (minValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun b!2105823 () Bool)

(declare-fun tp!638413 () Bool)

(assert (=> b!2105823 (= e!1338233 tp!638413)))

(declare-fun setIsEmpty!13790 () Bool)

(assert (=> setIsEmpty!13790 setRes!13790))

(assert (= b!2105822 b!2105823))

(assert (= (and b!2105822 condSetEmpty!13790) setIsEmpty!13790))

(assert (= (and b!2105822 (not condSetEmpty!13790)) setNonEmpty!13790))

(assert (= setNonEmpty!13790 b!2105821))

(assert (= (and b!2105684 ((_ is Cons!23237) (minValue!2499 (v!27796 (underlying!4677 (v!27797 (underlying!4678 (cache!2536 cacheDown!688)))))))) b!2105822))

(declare-fun m!2564321 () Bool)

(assert (=> setNonEmpty!13790 m!2564321))

(declare-fun m!2564323 () Bool)

(assert (=> b!2105822 m!2564323))

(declare-fun b!2105824 () Bool)

(declare-fun e!1338237 () Bool)

(declare-fun tp!638417 () Bool)

(declare-fun tp!638418 () Bool)

(assert (=> b!2105824 (= e!1338237 (and (inv!30763 (left!18136 (c!338876 totalInput!482))) tp!638418 (inv!30763 (right!18466 (c!338876 totalInput!482))) tp!638417))))

(declare-fun b!2105826 () Bool)

(declare-fun e!1338236 () Bool)

(declare-fun tp!638419 () Bool)

(assert (=> b!2105826 (= e!1338236 tp!638419)))

(declare-fun b!2105825 () Bool)

(assert (=> b!2105825 (= e!1338237 (and (inv!30771 (xs!10658 (c!338876 totalInput!482))) e!1338236))))

(assert (=> b!2105698 (= tp!638341 (and (inv!30763 (c!338876 totalInput!482)) e!1338237))))

(assert (= (and b!2105698 ((_ is Node!7716) (c!338876 totalInput!482))) b!2105824))

(assert (= b!2105825 b!2105826))

(assert (= (and b!2105698 ((_ is Leaf!11267) (c!338876 totalInput!482))) b!2105825))

(declare-fun m!2564325 () Bool)

(assert (=> b!2105824 m!2564325))

(declare-fun m!2564327 () Bool)

(assert (=> b!2105824 m!2564327))

(declare-fun m!2564329 () Bool)

(assert (=> b!2105825 m!2564329))

(assert (=> b!2105698 m!2564181))

(declare-fun e!1338239 () Bool)

(assert (=> b!2105685 (= tp!638349 e!1338239)))

(declare-fun b!2105827 () Bool)

(declare-fun e!1338240 () Bool)

(declare-fun tp!638424 () Bool)

(assert (=> b!2105827 (= e!1338240 tp!638424)))

(declare-fun tp!638422 () Bool)

(declare-fun setRes!13791 () Bool)

(declare-fun setElem!13791 () Context!2274)

(declare-fun setNonEmpty!13791 () Bool)

(assert (=> setNonEmpty!13791 (= setRes!13791 (and tp!638422 (inv!30770 setElem!13791) e!1338240))))

(declare-fun setRest!13791 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13791 (= (_2!12997 (h!28638 mapDefault!10830)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13791 true) setRest!13791))))

(declare-fun tp!638420 () Bool)

(declare-fun e!1338238 () Bool)

(declare-fun b!2105828 () Bool)

(declare-fun tp!638423 () Bool)

(assert (=> b!2105828 (= e!1338239 (and tp!638423 (inv!30770 (_2!12996 (_1!12997 (h!28638 mapDefault!10830)))) e!1338238 tp_is_empty!9367 setRes!13791 tp!638420))))

(declare-fun condSetEmpty!13791 () Bool)

(assert (=> b!2105828 (= condSetEmpty!13791 (= (_2!12997 (h!28638 mapDefault!10830)) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun b!2105829 () Bool)

(declare-fun tp!638421 () Bool)

(assert (=> b!2105829 (= e!1338238 tp!638421)))

(declare-fun setIsEmpty!13791 () Bool)

(assert (=> setIsEmpty!13791 setRes!13791))

(assert (= b!2105828 b!2105829))

(assert (= (and b!2105828 condSetEmpty!13791) setIsEmpty!13791))

(assert (= (and b!2105828 (not condSetEmpty!13791)) setNonEmpty!13791))

(assert (= setNonEmpty!13791 b!2105827))

(assert (= (and b!2105685 ((_ is Cons!23237) mapDefault!10830)) b!2105828))

(declare-fun m!2564331 () Bool)

(assert (=> setNonEmpty!13791 m!2564331))

(declare-fun m!2564333 () Bool)

(assert (=> b!2105828 m!2564333))

(declare-fun b!2105844 () Bool)

(declare-fun e!1338257 () Bool)

(declare-fun tp!638456 () Bool)

(assert (=> b!2105844 (= e!1338257 tp!638456)))

(declare-fun condMapEmpty!10834 () Bool)

(declare-fun mapDefault!10834 () List!23321)

(assert (=> mapNonEmpty!10831 (= condMapEmpty!10834 (= mapRest!10831 ((as const (Array (_ BitVec 32) List!23321)) mapDefault!10834)))))

(declare-fun e!1338254 () Bool)

(declare-fun mapRes!10834 () Bool)

(assert (=> mapNonEmpty!10831 (= tp!638336 (and e!1338254 mapRes!10834))))

(declare-fun b!2105845 () Bool)

(declare-fun e!1338255 () Bool)

(declare-fun tp!638453 () Bool)

(assert (=> b!2105845 (= e!1338255 tp!638453)))

(declare-fun mapValue!10834 () List!23321)

(declare-fun tp!638447 () Bool)

(declare-fun tp!638448 () Bool)

(declare-fun setRes!13796 () Bool)

(declare-fun e!1338256 () Bool)

(declare-fun b!2105846 () Bool)

(declare-fun e!1338253 () Bool)

(assert (=> b!2105846 (= e!1338256 (and tp!638448 (inv!30770 (_2!12996 (_1!12997 (h!28638 mapValue!10834)))) e!1338253 tp_is_empty!9367 setRes!13796 tp!638447))))

(declare-fun condSetEmpty!13796 () Bool)

(assert (=> b!2105846 (= condSetEmpty!13796 (= (_2!12997 (h!28638 mapValue!10834)) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun mapIsEmpty!10834 () Bool)

(assert (=> mapIsEmpty!10834 mapRes!10834))

(declare-fun setIsEmpty!13796 () Bool)

(assert (=> setIsEmpty!13796 setRes!13796))

(declare-fun setIsEmpty!13797 () Bool)

(declare-fun setRes!13797 () Bool)

(assert (=> setIsEmpty!13797 setRes!13797))

(declare-fun b!2105847 () Bool)

(declare-fun e!1338258 () Bool)

(declare-fun tp!638449 () Bool)

(assert (=> b!2105847 (= e!1338258 tp!638449)))

(declare-fun setElem!13797 () Context!2274)

(declare-fun setNonEmpty!13796 () Bool)

(declare-fun tp!638454 () Bool)

(assert (=> setNonEmpty!13796 (= setRes!13797 (and tp!638454 (inv!30770 setElem!13797) e!1338257))))

(declare-fun setRest!13796 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13796 (= (_2!12997 (h!28638 mapDefault!10834)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13797 true) setRest!13796))))

(declare-fun mapNonEmpty!10834 () Bool)

(declare-fun tp!638452 () Bool)

(assert (=> mapNonEmpty!10834 (= mapRes!10834 (and tp!638452 e!1338256))))

(declare-fun mapRest!10834 () (Array (_ BitVec 32) List!23321))

(declare-fun mapKey!10834 () (_ BitVec 32))

(assert (=> mapNonEmpty!10834 (= mapRest!10831 (store mapRest!10834 mapKey!10834 mapValue!10834))))

(declare-fun b!2105848 () Bool)

(declare-fun tp!638457 () Bool)

(assert (=> b!2105848 (= e!1338253 tp!638457)))

(declare-fun setElem!13796 () Context!2274)

(declare-fun tp!638455 () Bool)

(declare-fun setNonEmpty!13797 () Bool)

(assert (=> setNonEmpty!13797 (= setRes!13796 (and tp!638455 (inv!30770 setElem!13796) e!1338255))))

(declare-fun setRest!13797 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13797 (= (_2!12997 (h!28638 mapValue!10834)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13796 true) setRest!13797))))

(declare-fun b!2105849 () Bool)

(declare-fun tp!638451 () Bool)

(declare-fun tp!638450 () Bool)

(assert (=> b!2105849 (= e!1338254 (and tp!638450 (inv!30770 (_2!12996 (_1!12997 (h!28638 mapDefault!10834)))) e!1338258 tp_is_empty!9367 setRes!13797 tp!638451))))

(declare-fun condSetEmpty!13797 () Bool)

(assert (=> b!2105849 (= condSetEmpty!13797 (= (_2!12997 (h!28638 mapDefault!10834)) ((as const (Array Context!2274 Bool)) false)))))

(assert (= (and mapNonEmpty!10831 condMapEmpty!10834) mapIsEmpty!10834))

(assert (= (and mapNonEmpty!10831 (not condMapEmpty!10834)) mapNonEmpty!10834))

(assert (= b!2105846 b!2105848))

(assert (= (and b!2105846 condSetEmpty!13796) setIsEmpty!13796))

(assert (= (and b!2105846 (not condSetEmpty!13796)) setNonEmpty!13797))

(assert (= setNonEmpty!13797 b!2105845))

(assert (= (and mapNonEmpty!10834 ((_ is Cons!23237) mapValue!10834)) b!2105846))

(assert (= b!2105849 b!2105847))

(assert (= (and b!2105849 condSetEmpty!13797) setIsEmpty!13797))

(assert (= (and b!2105849 (not condSetEmpty!13797)) setNonEmpty!13796))

(assert (= setNonEmpty!13796 b!2105844))

(assert (= (and mapNonEmpty!10831 ((_ is Cons!23237) mapDefault!10834)) b!2105849))

(declare-fun m!2564335 () Bool)

(assert (=> mapNonEmpty!10834 m!2564335))

(declare-fun m!2564337 () Bool)

(assert (=> setNonEmpty!13797 m!2564337))

(declare-fun m!2564339 () Bool)

(assert (=> setNonEmpty!13796 m!2564339))

(declare-fun m!2564341 () Bool)

(assert (=> b!2105846 m!2564341))

(declare-fun m!2564343 () Bool)

(assert (=> b!2105849 m!2564343))

(declare-fun e!1338260 () Bool)

(assert (=> mapNonEmpty!10831 (= tp!638342 e!1338260)))

(declare-fun b!2105850 () Bool)

(declare-fun e!1338261 () Bool)

(declare-fun tp!638462 () Bool)

(assert (=> b!2105850 (= e!1338261 tp!638462)))

(declare-fun setElem!13798 () Context!2274)

(declare-fun setRes!13798 () Bool)

(declare-fun setNonEmpty!13798 () Bool)

(declare-fun tp!638460 () Bool)

(assert (=> setNonEmpty!13798 (= setRes!13798 (and tp!638460 (inv!30770 setElem!13798) e!1338261))))

(declare-fun setRest!13798 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13798 (= (_2!12997 (h!28638 mapValue!10830)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13798 true) setRest!13798))))

(declare-fun e!1338259 () Bool)

(declare-fun tp!638461 () Bool)

(declare-fun b!2105851 () Bool)

(declare-fun tp!638458 () Bool)

(assert (=> b!2105851 (= e!1338260 (and tp!638461 (inv!30770 (_2!12996 (_1!12997 (h!28638 mapValue!10830)))) e!1338259 tp_is_empty!9367 setRes!13798 tp!638458))))

(declare-fun condSetEmpty!13798 () Bool)

(assert (=> b!2105851 (= condSetEmpty!13798 (= (_2!12997 (h!28638 mapValue!10830)) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun b!2105852 () Bool)

(declare-fun tp!638459 () Bool)

(assert (=> b!2105852 (= e!1338259 tp!638459)))

(declare-fun setIsEmpty!13798 () Bool)

(assert (=> setIsEmpty!13798 setRes!13798))

(assert (= b!2105851 b!2105852))

(assert (= (and b!2105851 condSetEmpty!13798) setIsEmpty!13798))

(assert (= (and b!2105851 (not condSetEmpty!13798)) setNonEmpty!13798))

(assert (= setNonEmpty!13798 b!2105850))

(assert (= (and mapNonEmpty!10831 ((_ is Cons!23237) mapValue!10830)) b!2105851))

(declare-fun m!2564345 () Bool)

(assert (=> setNonEmpty!13798 m!2564345))

(declare-fun m!2564347 () Bool)

(assert (=> b!2105851 m!2564347))

(declare-fun b!2105867 () Bool)

(declare-fun e!1338274 () Bool)

(declare-fun tp!638484 () Bool)

(assert (=> b!2105867 (= e!1338274 tp!638484)))

(declare-fun e!1338276 () Bool)

(declare-fun setRes!13803 () Bool)

(declare-fun b!2105868 () Bool)

(declare-fun mapDefault!10837 () List!23324)

(declare-fun e!1338278 () Bool)

(declare-fun tp!638481 () Bool)

(assert (=> b!2105868 (= e!1338276 (and (inv!30770 (_1!12998 (_1!12999 (h!28641 mapDefault!10837)))) e!1338278 tp_is_empty!9367 setRes!13803 tp!638481))))

(declare-fun condSetEmpty!13803 () Bool)

(assert (=> b!2105868 (= condSetEmpty!13803 (= (_2!12999 (h!28641 mapDefault!10837)) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun b!2105869 () Bool)

(declare-fun tp!638487 () Bool)

(assert (=> b!2105869 (= e!1338278 tp!638487)))

(declare-fun b!2105870 () Bool)

(declare-fun e!1338277 () Bool)

(declare-fun tp!638482 () Bool)

(assert (=> b!2105870 (= e!1338277 tp!638482)))

(declare-fun setRes!13804 () Bool)

(declare-fun setNonEmpty!13803 () Bool)

(declare-fun tp!638485 () Bool)

(declare-fun setElem!13803 () Context!2274)

(assert (=> setNonEmpty!13803 (= setRes!13804 (and tp!638485 (inv!30770 setElem!13803) e!1338274))))

(declare-fun mapValue!10837 () List!23324)

(declare-fun setRest!13804 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13803 (= (_2!12999 (h!28641 mapValue!10837)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13803 true) setRest!13804))))

(declare-fun e!1338279 () Bool)

(declare-fun tp!638488 () Bool)

(declare-fun b!2105871 () Bool)

(declare-fun e!1338275 () Bool)

(assert (=> b!2105871 (= e!1338275 (and (inv!30770 (_1!12998 (_1!12999 (h!28641 mapValue!10837)))) e!1338279 tp_is_empty!9367 setRes!13804 tp!638488))))

(declare-fun condSetEmpty!13804 () Bool)

(assert (=> b!2105871 (= condSetEmpty!13804 (= (_2!12999 (h!28641 mapValue!10837)) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun setIsEmpty!13803 () Bool)

(assert (=> setIsEmpty!13803 setRes!13803))

(declare-fun tp!638489 () Bool)

(declare-fun setNonEmpty!13804 () Bool)

(declare-fun setElem!13804 () Context!2274)

(assert (=> setNonEmpty!13804 (= setRes!13803 (and tp!638489 (inv!30770 setElem!13804) e!1338277))))

(declare-fun setRest!13803 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13804 (= (_2!12999 (h!28641 mapDefault!10837)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13804 true) setRest!13803))))

(declare-fun mapIsEmpty!10837 () Bool)

(declare-fun mapRes!10837 () Bool)

(assert (=> mapIsEmpty!10837 mapRes!10837))

(declare-fun setIsEmpty!13804 () Bool)

(assert (=> setIsEmpty!13804 setRes!13804))

(declare-fun condMapEmpty!10837 () Bool)

(assert (=> mapNonEmpty!10830 (= condMapEmpty!10837 (= mapRest!10830 ((as const (Array (_ BitVec 32) List!23324)) mapDefault!10837)))))

(assert (=> mapNonEmpty!10830 (= tp!638339 (and e!1338276 mapRes!10837))))

(declare-fun mapNonEmpty!10837 () Bool)

(declare-fun tp!638483 () Bool)

(assert (=> mapNonEmpty!10837 (= mapRes!10837 (and tp!638483 e!1338275))))

(declare-fun mapKey!10837 () (_ BitVec 32))

(declare-fun mapRest!10837 () (Array (_ BitVec 32) List!23324))

(assert (=> mapNonEmpty!10837 (= mapRest!10830 (store mapRest!10837 mapKey!10837 mapValue!10837))))

(declare-fun b!2105872 () Bool)

(declare-fun tp!638486 () Bool)

(assert (=> b!2105872 (= e!1338279 tp!638486)))

(assert (= (and mapNonEmpty!10830 condMapEmpty!10837) mapIsEmpty!10837))

(assert (= (and mapNonEmpty!10830 (not condMapEmpty!10837)) mapNonEmpty!10837))

(assert (= b!2105871 b!2105872))

(assert (= (and b!2105871 condSetEmpty!13804) setIsEmpty!13804))

(assert (= (and b!2105871 (not condSetEmpty!13804)) setNonEmpty!13803))

(assert (= setNonEmpty!13803 b!2105867))

(assert (= (and mapNonEmpty!10837 ((_ is Cons!23240) mapValue!10837)) b!2105871))

(assert (= b!2105868 b!2105869))

(assert (= (and b!2105868 condSetEmpty!13803) setIsEmpty!13803))

(assert (= (and b!2105868 (not condSetEmpty!13803)) setNonEmpty!13804))

(assert (= setNonEmpty!13804 b!2105870))

(assert (= (and mapNonEmpty!10830 ((_ is Cons!23240) mapDefault!10837)) b!2105868))

(declare-fun m!2564349 () Bool)

(assert (=> b!2105868 m!2564349))

(declare-fun m!2564351 () Bool)

(assert (=> b!2105871 m!2564351))

(declare-fun m!2564353 () Bool)

(assert (=> setNonEmpty!13804 m!2564353))

(declare-fun m!2564355 () Bool)

(assert (=> mapNonEmpty!10837 m!2564355))

(declare-fun m!2564357 () Bool)

(assert (=> setNonEmpty!13803 m!2564357))

(declare-fun setRes!13805 () Bool)

(declare-fun setNonEmpty!13805 () Bool)

(declare-fun tp!638493 () Bool)

(declare-fun e!1338282 () Bool)

(declare-fun setElem!13805 () Context!2274)

(assert (=> setNonEmpty!13805 (= setRes!13805 (and tp!638493 (inv!30770 setElem!13805) e!1338282))))

(declare-fun setRest!13805 () (InoxSet Context!2274))

(assert (=> setNonEmpty!13805 (= (_2!12999 (h!28641 mapValue!10831)) ((_ map or) (store ((as const (Array Context!2274 Bool)) false) setElem!13805 true) setRest!13805))))

(declare-fun b!2105873 () Bool)

(declare-fun e!1338281 () Bool)

(declare-fun tp!638491 () Bool)

(assert (=> b!2105873 (= e!1338281 tp!638491)))

(declare-fun b!2105874 () Bool)

(declare-fun tp!638492 () Bool)

(assert (=> b!2105874 (= e!1338282 tp!638492)))

(declare-fun e!1338280 () Bool)

(assert (=> mapNonEmpty!10830 (= tp!638350 e!1338280)))

(declare-fun b!2105875 () Bool)

(declare-fun tp!638490 () Bool)

(assert (=> b!2105875 (= e!1338280 (and (inv!30770 (_1!12998 (_1!12999 (h!28641 mapValue!10831)))) e!1338281 tp_is_empty!9367 setRes!13805 tp!638490))))

(declare-fun condSetEmpty!13805 () Bool)

(assert (=> b!2105875 (= condSetEmpty!13805 (= (_2!12999 (h!28641 mapValue!10831)) ((as const (Array Context!2274 Bool)) false)))))

(declare-fun setIsEmpty!13805 () Bool)

(assert (=> setIsEmpty!13805 setRes!13805))

(assert (= b!2105875 b!2105873))

(assert (= (and b!2105875 condSetEmpty!13805) setIsEmpty!13805))

(assert (= (and b!2105875 (not condSetEmpty!13805)) setNonEmpty!13805))

(assert (= setNonEmpty!13805 b!2105874))

(assert (= (and mapNonEmpty!10830 ((_ is Cons!23240) mapValue!10831)) b!2105875))

(declare-fun m!2564359 () Bool)

(assert (=> setNonEmpty!13805 m!2564359))

(declare-fun m!2564361 () Bool)

(assert (=> b!2105875 m!2564361))

(declare-fun b!2105887 () Bool)

(declare-fun e!1338285 () Bool)

(declare-fun tp!638505 () Bool)

(declare-fun tp!638507 () Bool)

(assert (=> b!2105887 (= e!1338285 (and tp!638505 tp!638507))))

(declare-fun b!2105889 () Bool)

(declare-fun tp!638504 () Bool)

(declare-fun tp!638508 () Bool)

(assert (=> b!2105889 (= e!1338285 (and tp!638504 tp!638508))))

(declare-fun b!2105888 () Bool)

(declare-fun tp!638506 () Bool)

(assert (=> b!2105888 (= e!1338285 tp!638506)))

(declare-fun b!2105886 () Bool)

(assert (=> b!2105886 (= e!1338285 tp_is_empty!9367)))

(assert (=> b!2105696 (= tp!638337 e!1338285)))

(assert (= (and b!2105696 ((_ is ElementMatch!5567) (regex!4136 (h!28640 rulesArg!349)))) b!2105886))

(assert (= (and b!2105696 ((_ is Concat!9839) (regex!4136 (h!28640 rulesArg!349)))) b!2105887))

(assert (= (and b!2105696 ((_ is Star!5567) (regex!4136 (h!28640 rulesArg!349)))) b!2105888))

(assert (= (and b!2105696 ((_ is Union!5567) (regex!4136 (h!28640 rulesArg!349)))) b!2105889))

(check-sat (not b!2105827) (not setNonEmpty!13805) (not setNonEmpty!13798) b_and!170063 (not b!2105818) (not d!641699) (not setNonEmpty!13784) (not b!2105868) (not b!2105887) (not b!2105851) (not b!2105793) (not b!2105770) b_and!170055 (not b!2105847) (not b!2105874) (not b!2105850) (not b!2105828) (not setNonEmpty!13789) (not b!2105744) (not b!2105748) (not d!641731) (not b!2105820) (not b!2105779) b_and!170057 (not b!2105889) (not b!2105870) (not b!2105844) (not b!2105804) (not b!2105719) (not d!641697) (not b!2105849) (not mapNonEmpty!10834) (not b!2105782) (not setNonEmpty!13785) (not b!2105762) (not b!2105794) (not setNonEmpty!13791) (not d!641729) (not b!2105733) (not b!2105682) (not b!2105819) (not b!2105783) (not mapNonEmpty!10837) b_and!170051 (not setNonEmpty!13796) (not b!2105720) (not b_next!61201) (not b!2105826) (not b!2105848) (not d!641719) (not b!2105781) b_and!170065 (not b!2105784) (not b!2105780) (not d!641707) (not b!2105760) (not setNonEmpty!13797) (not b_next!61197) (not b!2105805) (not b!2105823) (not d!641713) (not b!2105736) (not b_next!61195) (not b!2105822) b_and!170061 (not d!641709) (not d!641701) (not b!2105739) b_and!170059 (not b_next!61203) (not setNonEmpty!13804) (not b!2105737) (not b!2105824) (not b!2105749) (not b!2105724) (not b!2105845) (not setNonEmpty!13803) (not b!2105846) (not b!2105867) (not b!2105809) (not setNonEmpty!13786) (not b!2105698) (not b!2105764) (not b_next!61205) (not d!641733) (not b!2105825) (not b!2105875) (not d!641735) (not b!2105821) (not d!641741) (not setNonEmpty!13790) (not b!2105852) (not b!2105869) (not b!2105721) (not b!2105767) (not b!2105888) (not b!2105829) (not b!2105808) (not b!2105806) (not b!2105761) (not b_next!61207) (not b!2105807) (not b!2105745) (not d!641703) (not b!2105873) (not b_next!61193) (not b_next!61199) (not b!2105731) b_and!170053 tp_is_empty!9367 (not d!641727) (not b!2105872) (not b!2105871))
(check-sat b_and!170063 b_and!170055 b_and!170057 b_and!170051 (not b_next!61201) b_and!170065 (not b_next!61197) (not b_next!61205) (not b_next!61207) (not b_next!61195) b_and!170061 b_and!170059 (not b_next!61203) b_and!170053 (not b_next!61193) (not b_next!61199))

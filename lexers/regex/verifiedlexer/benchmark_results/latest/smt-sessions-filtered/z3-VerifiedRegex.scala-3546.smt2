; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205784 () Bool)

(assert start!205784)

(declare-fun b!2104689 () Bool)

(declare-fun b_free!60385 () Bool)

(declare-fun b_next!61089 () Bool)

(assert (=> b!2104689 (= b_free!60385 (not b_next!61089))))

(declare-fun tp!637564 () Bool)

(declare-fun b_and!169947 () Bool)

(assert (=> b!2104689 (= tp!637564 b_and!169947)))

(declare-fun b!2104693 () Bool)

(declare-fun b_free!60387 () Bool)

(declare-fun b_next!61091 () Bool)

(assert (=> b!2104693 (= b_free!60387 (not b_next!61091))))

(declare-fun tp!637562 () Bool)

(declare-fun b_and!169949 () Bool)

(assert (=> b!2104693 (= tp!637562 b_and!169949)))

(declare-fun b_free!60389 () Bool)

(declare-fun b_next!61093 () Bool)

(assert (=> b!2104693 (= b_free!60389 (not b_next!61093))))

(declare-fun tp!637561 () Bool)

(declare-fun b_and!169951 () Bool)

(assert (=> b!2104693 (= tp!637561 b_and!169951)))

(declare-fun b!2104681 () Bool)

(declare-fun b_free!60391 () Bool)

(declare-fun b_next!61095 () Bool)

(assert (=> b!2104681 (= b_free!60391 (not b_next!61095))))

(declare-fun tp!637563 () Bool)

(declare-fun b_and!169953 () Bool)

(assert (=> b!2104681 (= tp!637563 b_and!169953)))

(declare-fun b!2104685 () Bool)

(declare-fun b_free!60393 () Bool)

(declare-fun b_next!61097 () Bool)

(assert (=> b!2104685 (= b_free!60393 (not b_next!61097))))

(declare-fun tp!637556 () Bool)

(declare-fun b_and!169955 () Bool)

(assert (=> b!2104685 (= tp!637556 b_and!169955)))

(declare-fun b!2104682 () Bool)

(declare-fun b_free!60395 () Bool)

(declare-fun b_next!61099 () Bool)

(assert (=> b!2104682 (= b_free!60395 (not b_next!61099))))

(declare-fun tp!637558 () Bool)

(declare-fun b_and!169957 () Bool)

(assert (=> b!2104682 (= tp!637558 b_and!169957)))

(declare-fun res!915222 () Bool)

(declare-fun e!1337233 () Bool)

(assert (=> start!205784 (=> (not res!915222) (not e!1337233))))

(declare-datatypes ((LexerInterface!3731 0))(
  ( (LexerInterfaceExt!3728 (__x!14793 Int)) (Lexer!3729) )
))
(declare-fun thiss!15689 () LexerInterface!3731)

(get-info :version)

(assert (=> start!205784 (= res!915222 ((_ is Lexer!3729) thiss!15689))))

(assert (=> start!205784 e!1337233))

(declare-fun e!1337222 () Bool)

(assert (=> start!205784 e!1337222))

(declare-datatypes ((C!11264 0))(
  ( (C!11265 (val!6618 Int)) )
))
(declare-datatypes ((List!23283 0))(
  ( (Nil!23199) (Cons!23199 (h!28600 C!11264) (t!195776 List!23283)) )
))
(declare-datatypes ((IArray!15427 0))(
  ( (IArray!15428 (innerList!7771 List!23283)) )
))
(declare-datatypes ((Conc!7711 0))(
  ( (Node!7711 (left!18123 Conc!7711) (right!18453 Conc!7711) (csize!15652 Int) (cheight!7922 Int)) (Leaf!11258 (xs!10653 IArray!15427) (csize!15653 Int)) (Empty!7711) )
))
(declare-datatypes ((BalanceConc!15184 0))(
  ( (BalanceConc!15185 (c!338849 Conc!7711)) )
))
(declare-fun totalInput!482 () BalanceConc!15184)

(declare-fun e!1337220 () Bool)

(declare-fun inv!30722 (BalanceConc!15184) Bool)

(assert (=> start!205784 (and (inv!30722 totalInput!482) e!1337220)))

(assert (=> start!205784 true))

(declare-fun input!1444 () BalanceConc!15184)

(declare-fun e!1337237 () Bool)

(assert (=> start!205784 (and (inv!30722 input!1444) e!1337237)))

(declare-datatypes ((Regex!5559 0))(
  ( (ElementMatch!5559 (c!338850 C!11264)) (Concat!9826 (regOne!11630 Regex!5559) (regTwo!11630 Regex!5559)) (EmptyExpr!5559) (Star!5559 (reg!5888 Regex!5559)) (EmptyLang!5559) (Union!5559 (regOne!11631 Regex!5559) (regTwo!11631 Regex!5559)) )
))
(declare-datatypes ((List!23284 0))(
  ( (Nil!23200) (Cons!23200 (h!28601 Regex!5559) (t!195777 List!23284)) )
))
(declare-datatypes ((Context!2258 0))(
  ( (Context!2259 (exprs!1629 List!23284)) )
))
(declare-datatypes ((tuple2!22444 0))(
  ( (tuple2!22445 (_1!12956 Context!2258) (_2!12956 C!11264)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22446 0))(
  ( (tuple2!22447 (_1!12957 tuple2!22444) (_2!12957 (InoxSet Context!2258))) )
))
(declare-datatypes ((List!23285 0))(
  ( (Nil!23201) (Cons!23201 (h!28602 tuple2!22446) (t!195778 List!23285)) )
))
(declare-datatypes ((array!7685 0))(
  ( (array!7686 (arr!3408 (Array (_ BitVec 32) (_ BitVec 64))) (size!18107 (_ BitVec 32))) )
))
(declare-datatypes ((array!7687 0))(
  ( (array!7688 (arr!3409 (Array (_ BitVec 32) List!23285)) (size!18108 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4456 0))(
  ( (LongMapFixedSize!4457 (defaultEntry!2593 Int) (mask!6323 (_ BitVec 32)) (extraKeys!2476 (_ BitVec 32)) (zeroValue!2486 List!23285) (minValue!2486 List!23285) (_size!4507 (_ BitVec 32)) (_keys!2525 array!7685) (_values!2508 array!7687) (_vacant!2289 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2142 0))(
  ( (HashableExt!2141 (__x!14794 Int)) )
))
(declare-datatypes ((Cell!8737 0))(
  ( (Cell!8738 (v!27766 LongMapFixedSize!4456)) )
))
(declare-datatypes ((MutLongMap!2228 0))(
  ( (LongMap!2228 (underlying!4651 Cell!8737)) (MutLongMapExt!2227 (__x!14795 Int)) )
))
(declare-datatypes ((Cell!8739 0))(
  ( (Cell!8740 (v!27767 MutLongMap!2228)) )
))
(declare-datatypes ((MutableMap!2142 0))(
  ( (MutableMapExt!2141 (__x!14796 Int)) (HashMap!2142 (underlying!4652 Cell!8739) (hashF!4065 Hashable!2142) (_size!4508 (_ BitVec 32)) (defaultValue!2304 Int)) )
))
(declare-datatypes ((CacheUp!1436 0))(
  ( (CacheUp!1437 (cache!2523 MutableMap!2142)) )
))
(declare-fun cacheUp!675 () CacheUp!1436)

(declare-fun e!1337224 () Bool)

(declare-fun inv!30723 (CacheUp!1436) Bool)

(assert (=> start!205784 (and (inv!30723 cacheUp!675) e!1337224)))

(declare-datatypes ((tuple3!2540 0))(
  ( (tuple3!2541 (_1!12958 Regex!5559) (_2!12958 Context!2258) (_3!1734 C!11264)) )
))
(declare-datatypes ((tuple2!22448 0))(
  ( (tuple2!22449 (_1!12959 tuple3!2540) (_2!12959 (InoxSet Context!2258))) )
))
(declare-datatypes ((List!23286 0))(
  ( (Nil!23202) (Cons!23202 (h!28603 tuple2!22448) (t!195779 List!23286)) )
))
(declare-datatypes ((array!7689 0))(
  ( (array!7690 (arr!3410 (Array (_ BitVec 32) List!23286)) (size!18109 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4458 0))(
  ( (LongMapFixedSize!4459 (defaultEntry!2594 Int) (mask!6324 (_ BitVec 32)) (extraKeys!2477 (_ BitVec 32)) (zeroValue!2487 List!23286) (minValue!2487 List!23286) (_size!4509 (_ BitVec 32)) (_keys!2526 array!7685) (_values!2509 array!7689) (_vacant!2290 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8741 0))(
  ( (Cell!8742 (v!27768 LongMapFixedSize!4458)) )
))
(declare-datatypes ((MutLongMap!2229 0))(
  ( (LongMap!2229 (underlying!4653 Cell!8741)) (MutLongMapExt!2228 (__x!14797 Int)) )
))
(declare-datatypes ((Cell!8743 0))(
  ( (Cell!8744 (v!27769 MutLongMap!2229)) )
))
(declare-datatypes ((Hashable!2143 0))(
  ( (HashableExt!2142 (__x!14798 Int)) )
))
(declare-datatypes ((MutableMap!2143 0))(
  ( (MutableMapExt!2142 (__x!14799 Int)) (HashMap!2143 (underlying!4654 Cell!8743) (hashF!4066 Hashable!2143) (_size!4510 (_ BitVec 32)) (defaultValue!2305 Int)) )
))
(declare-datatypes ((CacheDown!1442 0))(
  ( (CacheDown!1443 (cache!2524 MutableMap!2143)) )
))
(declare-fun cacheDown!688 () CacheDown!1442)

(declare-fun e!1337223 () Bool)

(declare-fun inv!30724 (CacheDown!1442) Bool)

(assert (=> start!205784 (and (inv!30724 cacheDown!688) e!1337223)))

(declare-fun b!2104676 () Bool)

(declare-fun e!1337221 () Bool)

(declare-fun tp!637569 () Bool)

(assert (=> b!2104676 (= e!1337222 (and e!1337221 tp!637569))))

(declare-fun b!2104677 () Bool)

(declare-fun e!1337227 () Bool)

(assert (=> b!2104677 (= e!1337233 e!1337227)))

(declare-fun res!915224 () Bool)

(assert (=> b!2104677 (=> (not res!915224) (not e!1337227))))

(declare-fun lt!791144 () List!23283)

(declare-fun isSuffix!551 (List!23283 List!23283) Bool)

(declare-fun list!9433 (BalanceConc!15184) List!23283)

(assert (=> b!2104677 (= res!915224 (isSuffix!551 lt!791144 (list!9433 totalInput!482)))))

(assert (=> b!2104677 (= lt!791144 (list!9433 input!1444))))

(declare-fun b!2104678 () Bool)

(declare-fun e!1337230 () Bool)

(declare-fun e!1337244 () Bool)

(assert (=> b!2104678 (= e!1337230 e!1337244)))

(declare-fun b!2104679 () Bool)

(declare-fun e!1337242 () Bool)

(assert (=> b!2104679 (= e!1337242 true)))

(declare-datatypes ((List!23287 0))(
  ( (Nil!23203) (Cons!23203 (h!28604 (_ BitVec 16)) (t!195780 List!23287)) )
))
(declare-datatypes ((TokenValue!4267 0))(
  ( (FloatLiteralValue!8534 (text!30314 List!23287)) (TokenValueExt!4266 (__x!14800 Int)) (Broken!21335 (value!129348 List!23287)) (Object!4350) (End!4267) (Def!4267) (Underscore!4267) (Match!4267) (Else!4267) (Error!4267) (Case!4267) (If!4267) (Extends!4267) (Abstract!4267) (Class!4267) (Val!4267) (DelimiterValue!8534 (del!4327 List!23287)) (KeywordValue!4273 (value!129349 List!23287)) (CommentValue!8534 (value!129350 List!23287)) (WhitespaceValue!8534 (value!129351 List!23287)) (IndentationValue!4267 (value!129352 List!23287)) (String!26526) (Int32!4267) (Broken!21336 (value!129353 List!23287)) (Boolean!4268) (Unit!37443) (OperatorValue!4270 (op!4327 List!23287)) (IdentifierValue!8534 (value!129354 List!23287)) (IdentifierValue!8535 (value!129355 List!23287)) (WhitespaceValue!8535 (value!129356 List!23287)) (True!8534) (False!8534) (Broken!21337 (value!129357 List!23287)) (Broken!21338 (value!129358 List!23287)) (True!8535) (RightBrace!4267) (RightBracket!4267) (Colon!4267) (Null!4267) (Comma!4267) (LeftBracket!4267) (False!8535) (LeftBrace!4267) (ImaginaryLiteralValue!4267 (text!30315 List!23287)) (StringLiteralValue!12801 (value!129359 List!23287)) (EOFValue!4267 (value!129360 List!23287)) (IdentValue!4267 (value!129361 List!23287)) (DelimiterValue!8535 (value!129362 List!23287)) (DedentValue!4267 (value!129363 List!23287)) (NewLineValue!4267 (value!129364 List!23287)) (IntegerValue!12801 (value!129365 (_ BitVec 32)) (text!30316 List!23287)) (IntegerValue!12802 (value!129366 Int) (text!30317 List!23287)) (Times!4267) (Or!4267) (Equal!4267) (Minus!4267) (Broken!21339 (value!129367 List!23287)) (And!4267) (Div!4267) (LessEqual!4267) (Mod!4267) (Concat!9827) (Not!4267) (Plus!4267) (SpaceValue!4267 (value!129368 List!23287)) (IntegerValue!12803 (value!129369 Int) (text!30318 List!23287)) (StringLiteralValue!12802 (text!30319 List!23287)) (FloatLiteralValue!8535 (text!30320 List!23287)) (BytesLiteralValue!4267 (value!129370 List!23287)) (CommentValue!8535 (value!129371 List!23287)) (StringLiteralValue!12803 (value!129372 List!23287)) (ErrorTokenValue!4267 (msg!4328 List!23287)) )
))
(declare-datatypes ((String!26527 0))(
  ( (String!26528 (value!129373 String)) )
))
(declare-datatypes ((TokenValueInjection!8118 0))(
  ( (TokenValueInjection!8119 (toValue!5842 Int) (toChars!5701 Int)) )
))
(declare-datatypes ((Rule!8062 0))(
  ( (Rule!8063 (regex!4131 Regex!5559) (tag!4621 String!26527) (isSeparator!4131 Bool) (transformation!4131 TokenValueInjection!8118)) )
))
(declare-datatypes ((List!23288 0))(
  ( (Nil!23204) (Cons!23204 (h!28605 Rule!8062) (t!195781 List!23288)) )
))
(declare-fun rulesArg!349 () List!23288)

(declare-datatypes ((Token!7786 0))(
  ( (Token!7787 (value!129374 TokenValue!4267) (rule!6445 Rule!8062) (size!18110 Int) (originalCharacters!4924 List!23283)) )
))
(declare-datatypes ((tuple2!22450 0))(
  ( (tuple2!22451 (_1!12960 Token!7786) (_2!12960 BalanceConc!15184)) )
))
(declare-datatypes ((Option!4846 0))(
  ( (None!4845) (Some!4845 (v!27770 tuple2!22450)) )
))
(declare-datatypes ((tuple3!2542 0))(
  ( (tuple3!2543 (_1!12961 Option!4846) (_2!12961 CacheUp!1436) (_3!1735 CacheDown!1442)) )
))
(declare-fun lt!791143 () tuple3!2542)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!63 (LexerInterface!3731 Rule!8062 BalanceConc!15184 BalanceConc!15184 CacheUp!1436 CacheDown!1442) tuple3!2542)

(assert (=> b!2104679 (= lt!791143 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!63 thiss!15689 (h!28605 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun b!2104680 () Bool)

(declare-fun tp!637551 () Bool)

(declare-fun inv!30725 (Conc!7711) Bool)

(assert (=> b!2104680 (= e!1337237 (and (inv!30725 (c!338849 input!1444)) tp!637551))))

(declare-fun e!1337225 () Bool)

(declare-fun e!1337228 () Bool)

(assert (=> b!2104681 (= e!1337225 (and e!1337228 tp!637563))))

(declare-fun tp!637559 () Bool)

(declare-fun e!1337240 () Bool)

(declare-fun e!1337241 () Bool)

(declare-fun tp!637554 () Bool)

(declare-fun array_inv!2450 (array!7685) Bool)

(declare-fun array_inv!2451 (array!7687) Bool)

(assert (=> b!2104682 (= e!1337241 (and tp!637558 tp!637559 tp!637554 (array_inv!2450 (_keys!2525 (v!27766 (underlying!4651 (v!27767 (underlying!4652 (cache!2523 cacheUp!675))))))) (array_inv!2451 (_values!2508 (v!27766 (underlying!4651 (v!27767 (underlying!4652 (cache!2523 cacheUp!675))))))) e!1337240))))

(declare-fun b!2104683 () Bool)

(assert (=> b!2104683 (= e!1337224 e!1337225)))

(declare-fun mapNonEmpty!10770 () Bool)

(declare-fun mapRes!10771 () Bool)

(declare-fun tp!637566 () Bool)

(declare-fun tp!637560 () Bool)

(assert (=> mapNonEmpty!10770 (= mapRes!10771 (and tp!637566 tp!637560))))

(declare-fun mapRest!10771 () (Array (_ BitVec 32) List!23285))

(declare-fun mapValue!10770 () List!23285)

(declare-fun mapKey!10770 () (_ BitVec 32))

(assert (=> mapNonEmpty!10770 (= (arr!3409 (_values!2508 (v!27766 (underlying!4651 (v!27767 (underlying!4652 (cache!2523 cacheUp!675))))))) (store mapRest!10771 mapKey!10770 mapValue!10770))))

(declare-fun b!2104684 () Bool)

(declare-fun tp!637568 () Bool)

(assert (=> b!2104684 (= e!1337220 (and (inv!30725 (c!338849 totalInput!482)) tp!637568))))

(declare-fun mapNonEmpty!10771 () Bool)

(declare-fun mapRes!10770 () Bool)

(declare-fun tp!637565 () Bool)

(declare-fun tp!637555 () Bool)

(assert (=> mapNonEmpty!10771 (= mapRes!10770 (and tp!637565 tp!637555))))

(declare-fun mapKey!10771 () (_ BitVec 32))

(declare-fun mapRest!10770 () (Array (_ BitVec 32) List!23286))

(declare-fun mapValue!10771 () List!23286)

(assert (=> mapNonEmpty!10771 (= (arr!3410 (_values!2509 (v!27768 (underlying!4653 (v!27769 (underlying!4654 (cache!2524 cacheDown!688))))))) (store mapRest!10770 mapKey!10771 mapValue!10771))))

(declare-fun e!1337238 () Bool)

(declare-fun e!1337232 () Bool)

(assert (=> b!2104685 (= e!1337238 (and e!1337232 tp!637556))))

(declare-fun b!2104686 () Bool)

(declare-fun lt!791146 () MutLongMap!2228)

(assert (=> b!2104686 (= e!1337228 (and e!1337230 ((_ is LongMap!2228) lt!791146)))))

(assert (=> b!2104686 (= lt!791146 (v!27767 (underlying!4652 (cache!2523 cacheUp!675))))))

(declare-fun mapIsEmpty!10770 () Bool)

(assert (=> mapIsEmpty!10770 mapRes!10770))

(declare-fun b!2104687 () Bool)

(declare-fun res!915219 () Bool)

(assert (=> b!2104687 (=> (not res!915219) (not e!1337233))))

(declare-fun isEmpty!14264 (List!23288) Bool)

(assert (=> b!2104687 (= res!915219 (not (isEmpty!14264 rulesArg!349)))))

(declare-fun b!2104688 () Bool)

(assert (=> b!2104688 (= e!1337227 (not e!1337242))))

(declare-fun res!915218 () Bool)

(assert (=> b!2104688 (=> res!915218 e!1337242)))

(assert (=> b!2104688 (= res!915218 (or (and ((_ is Cons!23204) rulesArg!349) ((_ is Nil!23204) (t!195781 rulesArg!349))) (not ((_ is Cons!23204) rulesArg!349))))))

(declare-fun isPrefix!2066 (List!23283 List!23283) Bool)

(assert (=> b!2104688 (isPrefix!2066 lt!791144 lt!791144)))

(declare-datatypes ((Unit!37444 0))(
  ( (Unit!37445) )
))
(declare-fun lt!791145 () Unit!37444)

(declare-fun lemmaIsPrefixRefl!1384 (List!23283 List!23283) Unit!37444)

(assert (=> b!2104688 (= lt!791145 (lemmaIsPrefixRefl!1384 lt!791144 lt!791144))))

(declare-fun tp!637557 () Bool)

(declare-fun e!1337236 () Bool)

(declare-fun tp!637567 () Bool)

(declare-fun e!1337243 () Bool)

(declare-fun array_inv!2452 (array!7689) Bool)

(assert (=> b!2104689 (= e!1337236 (and tp!637564 tp!637557 tp!637567 (array_inv!2450 (_keys!2526 (v!27768 (underlying!4653 (v!27769 (underlying!4654 (cache!2524 cacheDown!688))))))) (array_inv!2452 (_values!2509 (v!27768 (underlying!4653 (v!27769 (underlying!4654 (cache!2524 cacheDown!688))))))) e!1337243))))

(declare-fun b!2104690 () Bool)

(declare-fun e!1337234 () Bool)

(assert (=> b!2104690 (= e!1337234 e!1337236)))

(declare-fun b!2104691 () Bool)

(declare-fun res!915220 () Bool)

(assert (=> b!2104691 (=> (not res!915220) (not e!1337227))))

(declare-fun valid!1768 (CacheDown!1442) Bool)

(assert (=> b!2104691 (= res!915220 (valid!1768 cacheDown!688))))

(declare-fun b!2104692 () Bool)

(declare-fun e!1337239 () Bool)

(declare-fun lt!791147 () MutLongMap!2229)

(assert (=> b!2104692 (= e!1337232 (and e!1337239 ((_ is LongMap!2229) lt!791147)))))

(assert (=> b!2104692 (= lt!791147 (v!27769 (underlying!4654 (cache!2524 cacheDown!688))))))

(declare-fun e!1337231 () Bool)

(assert (=> b!2104693 (= e!1337231 (and tp!637562 tp!637561))))

(declare-fun b!2104694 () Bool)

(assert (=> b!2104694 (= e!1337223 e!1337238)))

(declare-fun b!2104695 () Bool)

(declare-fun res!915221 () Bool)

(assert (=> b!2104695 (=> (not res!915221) (not e!1337227))))

(declare-fun valid!1769 (CacheUp!1436) Bool)

(assert (=> b!2104695 (= res!915221 (valid!1769 cacheUp!675))))

(declare-fun b!2104696 () Bool)

(assert (=> b!2104696 (= e!1337239 e!1337234)))

(declare-fun b!2104697 () Bool)

(assert (=> b!2104697 (= e!1337244 e!1337241)))

(declare-fun tp!637552 () Bool)

(declare-fun b!2104698 () Bool)

(declare-fun inv!30720 (String!26527) Bool)

(declare-fun inv!30726 (TokenValueInjection!8118) Bool)

(assert (=> b!2104698 (= e!1337221 (and tp!637552 (inv!30720 (tag!4621 (h!28605 rulesArg!349))) (inv!30726 (transformation!4131 (h!28605 rulesArg!349))) e!1337231))))

(declare-fun b!2104699 () Bool)

(declare-fun tp!637553 () Bool)

(assert (=> b!2104699 (= e!1337243 (and tp!637553 mapRes!10770))))

(declare-fun condMapEmpty!10771 () Bool)

(declare-fun mapDefault!10770 () List!23286)

(assert (=> b!2104699 (= condMapEmpty!10771 (= (arr!3410 (_values!2509 (v!27768 (underlying!4653 (v!27769 (underlying!4654 (cache!2524 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23286)) mapDefault!10770)))))

(declare-fun b!2104700 () Bool)

(declare-fun res!915223 () Bool)

(assert (=> b!2104700 (=> (not res!915223) (not e!1337233))))

(declare-fun rulesValidInductive!1448 (LexerInterface!3731 List!23288) Bool)

(assert (=> b!2104700 (= res!915223 (rulesValidInductive!1448 thiss!15689 rulesArg!349))))

(declare-fun b!2104701 () Bool)

(declare-fun tp!637550 () Bool)

(assert (=> b!2104701 (= e!1337240 (and tp!637550 mapRes!10771))))

(declare-fun condMapEmpty!10770 () Bool)

(declare-fun mapDefault!10771 () List!23285)

(assert (=> b!2104701 (= condMapEmpty!10770 (= (arr!3409 (_values!2508 (v!27766 (underlying!4651 (v!27767 (underlying!4652 (cache!2523 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23285)) mapDefault!10771)))))

(declare-fun mapIsEmpty!10771 () Bool)

(assert (=> mapIsEmpty!10771 mapRes!10771))

(assert (= (and start!205784 res!915222) b!2104700))

(assert (= (and b!2104700 res!915223) b!2104687))

(assert (= (and b!2104687 res!915219) b!2104677))

(assert (= (and b!2104677 res!915224) b!2104695))

(assert (= (and b!2104695 res!915221) b!2104691))

(assert (= (and b!2104691 res!915220) b!2104688))

(assert (= (and b!2104688 (not res!915218)) b!2104679))

(assert (= b!2104698 b!2104693))

(assert (= b!2104676 b!2104698))

(assert (= (and start!205784 ((_ is Cons!23204) rulesArg!349)) b!2104676))

(assert (= start!205784 b!2104684))

(assert (= start!205784 b!2104680))

(assert (= (and b!2104701 condMapEmpty!10770) mapIsEmpty!10771))

(assert (= (and b!2104701 (not condMapEmpty!10770)) mapNonEmpty!10770))

(assert (= b!2104682 b!2104701))

(assert (= b!2104697 b!2104682))

(assert (= b!2104678 b!2104697))

(assert (= (and b!2104686 ((_ is LongMap!2228) (v!27767 (underlying!4652 (cache!2523 cacheUp!675))))) b!2104678))

(assert (= b!2104681 b!2104686))

(assert (= (and b!2104683 ((_ is HashMap!2142) (cache!2523 cacheUp!675))) b!2104681))

(assert (= start!205784 b!2104683))

(assert (= (and b!2104699 condMapEmpty!10771) mapIsEmpty!10770))

(assert (= (and b!2104699 (not condMapEmpty!10771)) mapNonEmpty!10771))

(assert (= b!2104689 b!2104699))

(assert (= b!2104690 b!2104689))

(assert (= b!2104696 b!2104690))

(assert (= (and b!2104692 ((_ is LongMap!2229) (v!27769 (underlying!4654 (cache!2524 cacheDown!688))))) b!2104696))

(assert (= b!2104685 b!2104692))

(assert (= (and b!2104694 ((_ is HashMap!2143) (cache!2524 cacheDown!688))) b!2104685))

(assert (= start!205784 b!2104694))

(declare-fun m!2563457 () Bool)

(assert (=> start!205784 m!2563457))

(declare-fun m!2563459 () Bool)

(assert (=> start!205784 m!2563459))

(declare-fun m!2563461 () Bool)

(assert (=> start!205784 m!2563461))

(declare-fun m!2563463 () Bool)

(assert (=> start!205784 m!2563463))

(declare-fun m!2563465 () Bool)

(assert (=> b!2104684 m!2563465))

(declare-fun m!2563467 () Bool)

(assert (=> b!2104680 m!2563467))

(declare-fun m!2563469 () Bool)

(assert (=> b!2104679 m!2563469))

(declare-fun m!2563471 () Bool)

(assert (=> b!2104691 m!2563471))

(declare-fun m!2563473 () Bool)

(assert (=> b!2104688 m!2563473))

(declare-fun m!2563475 () Bool)

(assert (=> b!2104688 m!2563475))

(declare-fun m!2563477 () Bool)

(assert (=> mapNonEmpty!10771 m!2563477))

(declare-fun m!2563479 () Bool)

(assert (=> b!2104700 m!2563479))

(declare-fun m!2563481 () Bool)

(assert (=> b!2104682 m!2563481))

(declare-fun m!2563483 () Bool)

(assert (=> b!2104682 m!2563483))

(declare-fun m!2563485 () Bool)

(assert (=> mapNonEmpty!10770 m!2563485))

(declare-fun m!2563487 () Bool)

(assert (=> b!2104698 m!2563487))

(declare-fun m!2563489 () Bool)

(assert (=> b!2104698 m!2563489))

(declare-fun m!2563491 () Bool)

(assert (=> b!2104677 m!2563491))

(assert (=> b!2104677 m!2563491))

(declare-fun m!2563493 () Bool)

(assert (=> b!2104677 m!2563493))

(declare-fun m!2563495 () Bool)

(assert (=> b!2104677 m!2563495))

(declare-fun m!2563497 () Bool)

(assert (=> b!2104695 m!2563497))

(declare-fun m!2563499 () Bool)

(assert (=> b!2104687 m!2563499))

(declare-fun m!2563501 () Bool)

(assert (=> b!2104689 m!2563501))

(declare-fun m!2563503 () Bool)

(assert (=> b!2104689 m!2563503))

(check-sat (not b_next!61093) (not b!2104684) b_and!169947 (not b!2104688) (not b!2104680) b_and!169957 (not b!2104682) (not mapNonEmpty!10771) (not b_next!61099) (not b!2104695) (not start!205784) (not b_next!61097) (not b_next!61091) (not b_next!61089) (not b!2104687) (not b!2104677) (not b!2104698) b_and!169949 (not b!2104689) b_and!169953 (not b!2104699) b_and!169955 (not mapNonEmpty!10770) (not b!2104700) (not b!2104691) (not b_next!61095) (not b!2104676) (not b!2104679) (not b!2104701) b_and!169951)
(check-sat (not b_next!61093) b_and!169949 b_and!169953 b_and!169947 b_and!169957 b_and!169955 (not b_next!61099) (not b_next!61095) (not b_next!61097) (not b_next!61091) (not b_next!61089) b_and!169951)

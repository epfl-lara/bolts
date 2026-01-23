; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201124 () Bool)

(assert start!201124)

(declare-fun b!2040580 () Bool)

(declare-fun b_free!56849 () Bool)

(declare-fun b_next!57553 () Bool)

(assert (=> b!2040580 (= b_free!56849 (not b_next!57553))))

(declare-fun tp!605528 () Bool)

(declare-fun b_and!162789 () Bool)

(assert (=> b!2040580 (= tp!605528 b_and!162789)))

(declare-fun b!2040581 () Bool)

(declare-fun b_free!56851 () Bool)

(declare-fun b_next!57555 () Bool)

(assert (=> b!2040581 (= b_free!56851 (not b_next!57555))))

(declare-fun tp!605542 () Bool)

(declare-fun b_and!162791 () Bool)

(assert (=> b!2040581 (= tp!605542 b_and!162791)))

(declare-fun b!2040593 () Bool)

(declare-fun b_free!56853 () Bool)

(declare-fun b_next!57557 () Bool)

(assert (=> b!2040593 (= b_free!56853 (not b_next!57557))))

(declare-fun tp!605540 () Bool)

(declare-fun b_and!162793 () Bool)

(assert (=> b!2040593 (= tp!605540 b_and!162793)))

(declare-fun b!2040601 () Bool)

(declare-fun b_free!56855 () Bool)

(declare-fun b_next!57559 () Bool)

(assert (=> b!2040601 (= b_free!56855 (not b_next!57559))))

(declare-fun tp!605527 () Bool)

(declare-fun b_and!162795 () Bool)

(assert (=> b!2040601 (= tp!605527 b_and!162795)))

(declare-fun b_free!56857 () Bool)

(declare-fun b_next!57561 () Bool)

(assert (=> b!2040601 (= b_free!56857 (not b_next!57561))))

(declare-fun tp!605525 () Bool)

(declare-fun b_and!162797 () Bool)

(assert (=> b!2040601 (= tp!605525 b_and!162797)))

(declare-fun b!2040596 () Bool)

(declare-fun b_free!56859 () Bool)

(declare-fun b_next!57563 () Bool)

(assert (=> b!2040596 (= b_free!56859 (not b_next!57563))))

(declare-fun tp!605531 () Bool)

(declare-fun b_and!162799 () Bool)

(assert (=> b!2040596 (= tp!605531 b_and!162799)))

(declare-fun b!2040578 () Bool)

(declare-fun res!894442 () Bool)

(declare-fun e!1288298 () Bool)

(assert (=> b!2040578 (=> (not res!894442) (not e!1288298))))

(declare-datatypes ((LexerInterface!3614 0))(
  ( (LexerInterfaceExt!3611 (__x!13775 Int)) (Lexer!3612) )
))
(declare-fun thiss!12889 () LexerInterface!3614)

(declare-datatypes ((List!22374 0))(
  ( (Nil!22290) (Cons!22290 (h!27691 (_ BitVec 16)) (t!191483 List!22374)) )
))
(declare-datatypes ((TokenValue!4137 0))(
  ( (FloatLiteralValue!8274 (text!29404 List!22374)) (TokenValueExt!4136 (__x!13776 Int)) (Broken!20685 (value!125654 List!22374)) (Object!4220) (End!4137) (Def!4137) (Underscore!4137) (Match!4137) (Else!4137) (Error!4137) (Case!4137) (If!4137) (Extends!4137) (Abstract!4137) (Class!4137) (Val!4137) (DelimiterValue!8274 (del!4197 List!22374)) (KeywordValue!4143 (value!125655 List!22374)) (CommentValue!8274 (value!125656 List!22374)) (WhitespaceValue!8274 (value!125657 List!22374)) (IndentationValue!4137 (value!125658 List!22374)) (String!25872) (Int32!4137) (Broken!20686 (value!125659 List!22374)) (Boolean!4138) (Unit!36986) (OperatorValue!4140 (op!4197 List!22374)) (IdentifierValue!8274 (value!125660 List!22374)) (IdentifierValue!8275 (value!125661 List!22374)) (WhitespaceValue!8275 (value!125662 List!22374)) (True!8274) (False!8274) (Broken!20687 (value!125663 List!22374)) (Broken!20688 (value!125664 List!22374)) (True!8275) (RightBrace!4137) (RightBracket!4137) (Colon!4137) (Null!4137) (Comma!4137) (LeftBracket!4137) (False!8275) (LeftBrace!4137) (ImaginaryLiteralValue!4137 (text!29405 List!22374)) (StringLiteralValue!12411 (value!125665 List!22374)) (EOFValue!4137 (value!125666 List!22374)) (IdentValue!4137 (value!125667 List!22374)) (DelimiterValue!8275 (value!125668 List!22374)) (DedentValue!4137 (value!125669 List!22374)) (NewLineValue!4137 (value!125670 List!22374)) (IntegerValue!12411 (value!125671 (_ BitVec 32)) (text!29406 List!22374)) (IntegerValue!12412 (value!125672 Int) (text!29407 List!22374)) (Times!4137) (Or!4137) (Equal!4137) (Minus!4137) (Broken!20689 (value!125673 List!22374)) (And!4137) (Div!4137) (LessEqual!4137) (Mod!4137) (Concat!9564) (Not!4137) (Plus!4137) (SpaceValue!4137 (value!125674 List!22374)) (IntegerValue!12413 (value!125675 Int) (text!29408 List!22374)) (StringLiteralValue!12412 (text!29409 List!22374)) (FloatLiteralValue!8275 (text!29410 List!22374)) (BytesLiteralValue!4137 (value!125676 List!22374)) (CommentValue!8275 (value!125677 List!22374)) (StringLiteralValue!12413 (value!125678 List!22374)) (ErrorTokenValue!4137 (msg!4198 List!22374)) )
))
(declare-datatypes ((C!11000 0))(
  ( (C!11001 (val!6486 Int)) )
))
(declare-datatypes ((List!22375 0))(
  ( (Nil!22291) (Cons!22291 (h!27692 C!11000) (t!191484 List!22375)) )
))
(declare-datatypes ((IArray!14961 0))(
  ( (IArray!14962 (innerList!7538 List!22375)) )
))
(declare-datatypes ((Conc!7478 0))(
  ( (Node!7478 (left!17754 Conc!7478) (right!18084 Conc!7478) (csize!15186 Int) (cheight!7689 Int)) (Leaf!10959 (xs!10384 IArray!14961) (csize!15187 Int)) (Empty!7478) )
))
(declare-datatypes ((BalanceConc!14718 0))(
  ( (BalanceConc!14719 (c!330705 Conc!7478)) )
))
(declare-datatypes ((String!25873 0))(
  ( (String!25874 (value!125679 String)) )
))
(declare-datatypes ((Regex!5427 0))(
  ( (ElementMatch!5427 (c!330706 C!11000)) (Concat!9565 (regOne!11366 Regex!5427) (regTwo!11366 Regex!5427)) (EmptyExpr!5427) (Star!5427 (reg!5756 Regex!5427)) (EmptyLang!5427) (Union!5427 (regOne!11367 Regex!5427) (regTwo!11367 Regex!5427)) )
))
(declare-datatypes ((TokenValueInjection!7858 0))(
  ( (TokenValueInjection!7859 (toValue!5682 Int) (toChars!5541 Int)) )
))
(declare-datatypes ((Rule!7802 0))(
  ( (Rule!7803 (regex!4001 Regex!5427) (tag!4491 String!25873) (isSeparator!4001 Bool) (transformation!4001 TokenValueInjection!7858)) )
))
(declare-datatypes ((List!22376 0))(
  ( (Nil!22292) (Cons!22292 (h!27693 Rule!7802) (t!191485 List!22376)) )
))
(declare-fun rules!1563 () List!22376)

(declare-fun rulesInvariant!3221 (LexerInterface!3614 List!22376) Bool)

(assert (=> b!2040578 (= res!894442 (rulesInvariant!3221 thiss!12889 rules!1563))))

(declare-fun b!2040579 () Bool)

(declare-fun res!894441 () Bool)

(declare-fun e!1288321 () Bool)

(assert (=> b!2040579 (=> (not res!894441) (not e!1288321))))

(declare-datatypes ((Token!7554 0))(
  ( (Token!7555 (value!125680 TokenValue!4137) (rule!6238 Rule!7802) (size!17444 Int) (originalCharacters!4808 List!22375)) )
))
(declare-datatypes ((List!22377 0))(
  ( (Nil!22293) (Cons!22293 (h!27694 Token!7554) (t!191486 List!22377)) )
))
(declare-datatypes ((IArray!14963 0))(
  ( (IArray!14964 (innerList!7539 List!22377)) )
))
(declare-datatypes ((Conc!7479 0))(
  ( (Node!7479 (left!17755 Conc!7479) (right!18085 Conc!7479) (csize!15188 Int) (cheight!7690 Int)) (Leaf!10960 (xs!10385 IArray!14963) (csize!15189 Int)) (Empty!7479) )
))
(declare-datatypes ((BalanceConc!14720 0))(
  ( (BalanceConc!14721 (c!330707 Conc!7479)) )
))
(declare-datatypes ((tuple2!20946 0))(
  ( (tuple2!20947 (_1!11943 BalanceConc!14720) (_2!11943 BalanceConc!14718)) )
))
(declare-fun lt!765535 () tuple2!20946)

(declare-fun lt!765529 () tuple2!20946)

(declare-fun list!9148 (BalanceConc!14718) List!22375)

(assert (=> b!2040579 (= res!894441 (= (list!9148 (_2!11943 lt!765535)) (list!9148 (_2!11943 lt!765529))))))

(declare-datatypes ((List!22378 0))(
  ( (Nil!22294) (Cons!22294 (h!27695 Regex!5427) (t!191487 List!22378)) )
))
(declare-datatypes ((Context!1994 0))(
  ( (Context!1995 (exprs!1497 List!22378)) )
))
(declare-datatypes ((Hashable!1885 0))(
  ( (HashableExt!1884 (__x!13777 Int)) )
))
(declare-datatypes ((tuple3!2012 0))(
  ( (tuple3!2013 (_1!11944 Regex!5427) (_2!11944 Context!1994) (_3!1470 C!11000)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20948 0))(
  ( (tuple2!20949 (_1!11945 tuple3!2012) (_2!11945 (InoxSet Context!1994))) )
))
(declare-datatypes ((List!22379 0))(
  ( (Nil!22295) (Cons!22295 (h!27696 tuple2!20948) (t!191488 List!22379)) )
))
(declare-datatypes ((array!6799 0))(
  ( (array!6800 (arr!3019 (Array (_ BitVec 32) (_ BitVec 64))) (size!17445 (_ BitVec 32))) )
))
(declare-datatypes ((array!6801 0))(
  ( (array!6802 (arr!3020 (Array (_ BitVec 32) List!22379)) (size!17446 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3942 0))(
  ( (LongMapFixedSize!3943 (defaultEntry!2336 Int) (mask!6000 (_ BitVec 32)) (extraKeys!2219 (_ BitVec 32)) (zeroValue!2229 List!22379) (minValue!2229 List!22379) (_size!3993 (_ BitVec 32)) (_keys!2268 array!6799) (_values!2251 array!6801) (_vacant!2032 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7709 0))(
  ( (Cell!7710 (v!27029 LongMapFixedSize!3942)) )
))
(declare-datatypes ((MutLongMap!1971 0))(
  ( (LongMap!1971 (underlying!4137 Cell!7709)) (MutLongMapExt!1970 (__x!13778 Int)) )
))
(declare-datatypes ((Cell!7711 0))(
  ( (Cell!7712 (v!27030 MutLongMap!1971)) )
))
(declare-datatypes ((MutableMap!1885 0))(
  ( (MutableMapExt!1884 (__x!13779 Int)) (HashMap!1885 (underlying!4138 Cell!7711) (hashF!3808 Hashable!1885) (_size!3994 (_ BitVec 32)) (defaultValue!2047 Int)) )
))
(declare-datatypes ((CacheDown!1182 0))(
  ( (CacheDown!1183 (cache!2266 MutableMap!1885)) )
))
(declare-fun cacheDown!575 () CacheDown!1182)

(declare-fun tp!605533 () Bool)

(declare-fun e!1288324 () Bool)

(declare-fun tp!605535 () Bool)

(declare-fun e!1288299 () Bool)

(declare-fun array_inv!2164 (array!6799) Bool)

(declare-fun array_inv!2165 (array!6801) Bool)

(assert (=> b!2040580 (= e!1288299 (and tp!605528 tp!605533 tp!605535 (array_inv!2164 (_keys!2268 (v!27029 (underlying!4137 (v!27030 (underlying!4138 (cache!2266 cacheDown!575))))))) (array_inv!2165 (_values!2251 (v!27029 (underlying!4137 (v!27030 (underlying!4138 (cache!2266 cacheDown!575))))))) e!1288324))))

(declare-fun e!1288306 () Bool)

(declare-fun e!1288315 () Bool)

(assert (=> b!2040581 (= e!1288306 (and e!1288315 tp!605542))))

(declare-fun mapIsEmpty!9124 () Bool)

(declare-fun mapRes!9124 () Bool)

(assert (=> mapIsEmpty!9124 mapRes!9124))

(declare-fun b!2040582 () Bool)

(declare-fun e!1288318 () Bool)

(declare-fun input!986 () BalanceConc!14718)

(declare-fun tp!605537 () Bool)

(declare-fun inv!29627 (Conc!7478) Bool)

(assert (=> b!2040582 (= e!1288318 (and (inv!29627 (c!330705 input!986)) tp!605537))))

(declare-fun b!2040583 () Bool)

(declare-fun e!1288313 () Bool)

(declare-fun lt!765530 () MutLongMap!1971)

(get-info :version)

(assert (=> b!2040583 (= e!1288315 (and e!1288313 ((_ is LongMap!1971) lt!765530)))))

(assert (=> b!2040583 (= lt!765530 (v!27030 (underlying!4138 (cache!2266 cacheDown!575))))))

(declare-fun mapIsEmpty!9125 () Bool)

(declare-fun mapRes!9125 () Bool)

(assert (=> mapIsEmpty!9125 mapRes!9125))

(declare-fun b!2040584 () Bool)

(declare-fun e!1288319 () Bool)

(assert (=> b!2040584 (= e!1288319 e!1288299)))

(declare-fun b!2040585 () Bool)

(assert (=> b!2040585 (= e!1288321 (not true))))

(declare-fun lt!765532 () Bool)

(declare-fun lt!765526 () List!22375)

(declare-fun lt!765531 () List!22375)

(declare-fun isSuffix!465 (List!22375 List!22375) Bool)

(assert (=> b!2040585 (= lt!765532 (isSuffix!465 lt!765526 lt!765531))))

(declare-fun lt!765528 () List!22375)

(assert (=> b!2040585 (isSuffix!465 lt!765526 lt!765528)))

(declare-datatypes ((Unit!36987 0))(
  ( (Unit!36988) )
))
(declare-fun lt!765536 () Unit!36987)

(declare-fun lt!765534 () List!22375)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!366 (List!22375 List!22375) Unit!36987)

(assert (=> b!2040585 (= lt!765536 (lemmaConcatTwoListThenFSndIsSuffix!366 lt!765534 lt!765526))))

(declare-fun b!2040586 () Bool)

(declare-fun e!1288320 () Bool)

(declare-fun e!1288309 () Bool)

(assert (=> b!2040586 (= e!1288320 e!1288309)))

(declare-fun res!894436 () Bool)

(assert (=> b!2040586 (=> (not res!894436) (not e!1288309))))

(declare-fun lt!765527 () tuple2!20946)

(declare-fun acc!382 () BalanceConc!14720)

(declare-fun list!9149 (BalanceConc!14720) List!22377)

(assert (=> b!2040586 (= res!894436 (= (list!9149 (_1!11943 lt!765527)) (list!9149 acc!382)))))

(declare-fun treated!60 () BalanceConc!14718)

(declare-fun lexRec!420 (LexerInterface!3614 List!22376 BalanceConc!14718) tuple2!20946)

(assert (=> b!2040586 (= lt!765527 (lexRec!420 thiss!12889 rules!1563 treated!60))))

(declare-fun mapNonEmpty!9124 () Bool)

(declare-fun tp!605529 () Bool)

(declare-fun tp!605532 () Bool)

(assert (=> mapNonEmpty!9124 (= mapRes!9124 (and tp!605529 tp!605532))))

(declare-fun mapValue!9125 () List!22379)

(declare-fun mapKey!9124 () (_ BitVec 32))

(declare-fun mapRest!9124 () (Array (_ BitVec 32) List!22379))

(assert (=> mapNonEmpty!9124 (= (arr!3020 (_values!2251 (v!27029 (underlying!4137 (v!27030 (underlying!4138 (cache!2266 cacheDown!575))))))) (store mapRest!9124 mapKey!9124 mapValue!9125))))

(declare-fun b!2040587 () Bool)

(declare-fun e!1288323 () Bool)

(declare-fun e!1288310 () Bool)

(declare-fun tp!605536 () Bool)

(assert (=> b!2040587 (= e!1288323 (and e!1288310 tp!605536))))

(declare-fun b!2040588 () Bool)

(declare-fun e!1288314 () Bool)

(declare-fun tp!605543 () Bool)

(assert (=> b!2040588 (= e!1288314 (and tp!605543 mapRes!9125))))

(declare-fun condMapEmpty!9124 () Bool)

(declare-datatypes ((tuple2!20950 0))(
  ( (tuple2!20951 (_1!11946 Context!1994) (_2!11946 C!11000)) )
))
(declare-datatypes ((tuple2!20952 0))(
  ( (tuple2!20953 (_1!11947 tuple2!20950) (_2!11947 (InoxSet Context!1994))) )
))
(declare-datatypes ((List!22380 0))(
  ( (Nil!22296) (Cons!22296 (h!27697 tuple2!20952) (t!191489 List!22380)) )
))
(declare-datatypes ((array!6803 0))(
  ( (array!6804 (arr!3021 (Array (_ BitVec 32) List!22380)) (size!17447 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3944 0))(
  ( (LongMapFixedSize!3945 (defaultEntry!2337 Int) (mask!6001 (_ BitVec 32)) (extraKeys!2220 (_ BitVec 32)) (zeroValue!2230 List!22380) (minValue!2230 List!22380) (_size!3995 (_ BitVec 32)) (_keys!2269 array!6799) (_values!2252 array!6803) (_vacant!2033 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7713 0))(
  ( (Cell!7714 (v!27031 LongMapFixedSize!3944)) )
))
(declare-datatypes ((MutLongMap!1972 0))(
  ( (LongMap!1972 (underlying!4139 Cell!7713)) (MutLongMapExt!1971 (__x!13780 Int)) )
))
(declare-datatypes ((Hashable!1886 0))(
  ( (HashableExt!1885 (__x!13781 Int)) )
))
(declare-datatypes ((Cell!7715 0))(
  ( (Cell!7716 (v!27032 MutLongMap!1972)) )
))
(declare-datatypes ((MutableMap!1886 0))(
  ( (MutableMapExt!1885 (__x!13782 Int)) (HashMap!1886 (underlying!4140 Cell!7715) (hashF!3809 Hashable!1886) (_size!3996 (_ BitVec 32)) (defaultValue!2048 Int)) )
))
(declare-datatypes ((CacheUp!1182 0))(
  ( (CacheUp!1183 (cache!2267 MutableMap!1886)) )
))
(declare-fun cacheUp!562 () CacheUp!1182)

(declare-fun mapDefault!9124 () List!22380)

(assert (=> b!2040588 (= condMapEmpty!9124 (= (arr!3021 (_values!2252 (v!27031 (underlying!4139 (v!27032 (underlying!4140 (cache!2267 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22380)) mapDefault!9124)))))

(declare-fun b!2040589 () Bool)

(declare-fun e!1288325 () Bool)

(declare-fun tp!605544 () Bool)

(assert (=> b!2040589 (= e!1288325 (and (inv!29627 (c!330705 treated!60)) tp!605544))))

(declare-fun b!2040590 () Bool)

(assert (=> b!2040590 (= e!1288298 e!1288320)))

(declare-fun res!894443 () Bool)

(assert (=> b!2040590 (=> (not res!894443) (not e!1288320))))

(assert (=> b!2040590 (= res!894443 (= lt!765531 lt!765528))))

(declare-fun ++!6058 (List!22375 List!22375) List!22375)

(assert (=> b!2040590 (= lt!765528 (++!6058 lt!765534 lt!765526))))

(declare-fun totalInput!418 () BalanceConc!14718)

(assert (=> b!2040590 (= lt!765531 (list!9148 totalInput!418))))

(assert (=> b!2040590 (= lt!765526 (list!9148 input!986))))

(assert (=> b!2040590 (= lt!765534 (list!9148 treated!60))))

(declare-fun b!2040591 () Bool)

(declare-fun e!1288300 () Bool)

(assert (=> b!2040591 (= e!1288300 e!1288306)))

(declare-fun mapNonEmpty!9125 () Bool)

(declare-fun tp!605526 () Bool)

(declare-fun tp!605534 () Bool)

(assert (=> mapNonEmpty!9125 (= mapRes!9125 (and tp!605526 tp!605534))))

(declare-fun mapKey!9125 () (_ BitVec 32))

(declare-fun mapValue!9124 () List!22380)

(declare-fun mapRest!9125 () (Array (_ BitVec 32) List!22380))

(assert (=> mapNonEmpty!9125 (= (arr!3021 (_values!2252 (v!27031 (underlying!4139 (v!27032 (underlying!4140 (cache!2267 cacheUp!562))))))) (store mapRest!9125 mapKey!9125 mapValue!9124))))

(declare-fun b!2040592 () Bool)

(assert (=> b!2040592 (= e!1288313 e!1288319)))

(declare-fun tp!605523 () Bool)

(declare-fun tp!605541 () Bool)

(declare-fun e!1288322 () Bool)

(declare-fun array_inv!2166 (array!6803) Bool)

(assert (=> b!2040593 (= e!1288322 (and tp!605540 tp!605523 tp!605541 (array_inv!2164 (_keys!2269 (v!27031 (underlying!4139 (v!27032 (underlying!4140 (cache!2267 cacheUp!562))))))) (array_inv!2166 (_values!2252 (v!27031 (underlying!4139 (v!27032 (underlying!4140 (cache!2267 cacheUp!562))))))) e!1288314))))

(declare-fun b!2040594 () Bool)

(declare-fun e!1288301 () Bool)

(declare-fun e!1288317 () Bool)

(assert (=> b!2040594 (= e!1288301 e!1288317)))

(declare-fun b!2040595 () Bool)

(declare-fun res!894437 () Bool)

(assert (=> b!2040595 (=> (not res!894437) (not e!1288309))))

(declare-fun isEmpty!13942 (List!22375) Bool)

(assert (=> b!2040595 (= res!894437 (isEmpty!13942 (list!9148 (_2!11943 lt!765527))))))

(declare-fun e!1288312 () Bool)

(declare-fun e!1288305 () Bool)

(assert (=> b!2040596 (= e!1288312 (and e!1288305 tp!605531))))

(declare-fun e!1288308 () Bool)

(declare-fun b!2040597 () Bool)

(declare-fun tp!605524 () Bool)

(declare-fun inv!29626 (String!25873) Bool)

(declare-fun inv!29628 (TokenValueInjection!7858) Bool)

(assert (=> b!2040597 (= e!1288310 (and tp!605524 (inv!29626 (tag!4491 (h!27693 rules!1563))) (inv!29628 (transformation!4001 (h!27693 rules!1563))) e!1288308))))

(declare-fun b!2040598 () Bool)

(assert (=> b!2040598 (= e!1288309 e!1288321)))

(declare-fun res!894440 () Bool)

(assert (=> b!2040598 (=> (not res!894440) (not e!1288321))))

(declare-fun ++!6059 (BalanceConc!14720 BalanceConc!14720) BalanceConc!14720)

(assert (=> b!2040598 (= res!894440 (= (list!9149 (_1!11943 lt!765535)) (list!9149 (++!6059 acc!382 (_1!11943 lt!765529)))))))

(assert (=> b!2040598 (= lt!765529 (lexRec!420 thiss!12889 rules!1563 input!986))))

(assert (=> b!2040598 (= lt!765535 (lexRec!420 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2040599 () Bool)

(declare-fun e!1288304 () Bool)

(assert (=> b!2040599 (= e!1288304 e!1288312)))

(declare-fun b!2040600 () Bool)

(declare-fun e!1288302 () Bool)

(declare-fun tp!605530 () Bool)

(assert (=> b!2040600 (= e!1288302 (and (inv!29627 (c!330705 totalInput!418)) tp!605530))))

(assert (=> b!2040601 (= e!1288308 (and tp!605527 tp!605525))))

(declare-fun res!894434 () Bool)

(assert (=> start!201124 (=> (not res!894434) (not e!1288298))))

(assert (=> start!201124 (= res!894434 ((_ is Lexer!3612) thiss!12889))))

(assert (=> start!201124 e!1288298))

(declare-fun inv!29629 (CacheDown!1182) Bool)

(assert (=> start!201124 (and (inv!29629 cacheDown!575) e!1288300)))

(assert (=> start!201124 true))

(declare-fun inv!29630 (CacheUp!1182) Bool)

(assert (=> start!201124 (and (inv!29630 cacheUp!562) e!1288304)))

(assert (=> start!201124 e!1288323))

(declare-fun inv!29631 (BalanceConc!14718) Bool)

(assert (=> start!201124 (and (inv!29631 totalInput!418) e!1288302)))

(assert (=> start!201124 (and (inv!29631 treated!60) e!1288325)))

(assert (=> start!201124 (and (inv!29631 input!986) e!1288318)))

(declare-fun e!1288311 () Bool)

(declare-fun inv!29632 (BalanceConc!14720) Bool)

(assert (=> start!201124 (and (inv!29632 acc!382) e!1288311)))

(declare-fun b!2040602 () Bool)

(declare-fun res!894435 () Bool)

(assert (=> b!2040602 (=> (not res!894435) (not e!1288321))))

(declare-fun valid!1573 (CacheUp!1182) Bool)

(assert (=> b!2040602 (= res!894435 (valid!1573 cacheUp!562))))

(declare-fun b!2040603 () Bool)

(declare-fun tp!605539 () Bool)

(assert (=> b!2040603 (= e!1288324 (and tp!605539 mapRes!9124))))

(declare-fun condMapEmpty!9125 () Bool)

(declare-fun mapDefault!9125 () List!22379)

(assert (=> b!2040603 (= condMapEmpty!9125 (= (arr!3020 (_values!2251 (v!27029 (underlying!4137 (v!27030 (underlying!4138 (cache!2266 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22379)) mapDefault!9125)))))

(declare-fun b!2040604 () Bool)

(declare-fun res!894438 () Bool)

(assert (=> b!2040604 (=> (not res!894438) (not e!1288321))))

(declare-fun valid!1574 (CacheDown!1182) Bool)

(assert (=> b!2040604 (= res!894438 (valid!1574 cacheDown!575))))

(declare-fun b!2040605 () Bool)

(declare-fun tp!605538 () Bool)

(declare-fun inv!29633 (Conc!7479) Bool)

(assert (=> b!2040605 (= e!1288311 (and (inv!29633 (c!330707 acc!382)) tp!605538))))

(declare-fun b!2040606 () Bool)

(assert (=> b!2040606 (= e!1288317 e!1288322)))

(declare-fun b!2040607 () Bool)

(declare-fun lt!765533 () MutLongMap!1972)

(assert (=> b!2040607 (= e!1288305 (and e!1288301 ((_ is LongMap!1972) lt!765533)))))

(assert (=> b!2040607 (= lt!765533 (v!27032 (underlying!4140 (cache!2267 cacheUp!562))))))

(declare-fun b!2040608 () Bool)

(declare-fun res!894439 () Bool)

(assert (=> b!2040608 (=> (not res!894439) (not e!1288298))))

(declare-fun isEmpty!13943 (List!22376) Bool)

(assert (=> b!2040608 (= res!894439 (not (isEmpty!13943 rules!1563)))))

(assert (= (and start!201124 res!894434) b!2040608))

(assert (= (and b!2040608 res!894439) b!2040578))

(assert (= (and b!2040578 res!894442) b!2040590))

(assert (= (and b!2040590 res!894443) b!2040586))

(assert (= (and b!2040586 res!894436) b!2040595))

(assert (= (and b!2040595 res!894437) b!2040598))

(assert (= (and b!2040598 res!894440) b!2040579))

(assert (= (and b!2040579 res!894441) b!2040602))

(assert (= (and b!2040602 res!894435) b!2040604))

(assert (= (and b!2040604 res!894438) b!2040585))

(assert (= (and b!2040603 condMapEmpty!9125) mapIsEmpty!9124))

(assert (= (and b!2040603 (not condMapEmpty!9125)) mapNonEmpty!9124))

(assert (= b!2040580 b!2040603))

(assert (= b!2040584 b!2040580))

(assert (= b!2040592 b!2040584))

(assert (= (and b!2040583 ((_ is LongMap!1971) (v!27030 (underlying!4138 (cache!2266 cacheDown!575))))) b!2040592))

(assert (= b!2040581 b!2040583))

(assert (= (and b!2040591 ((_ is HashMap!1885) (cache!2266 cacheDown!575))) b!2040581))

(assert (= start!201124 b!2040591))

(assert (= (and b!2040588 condMapEmpty!9124) mapIsEmpty!9125))

(assert (= (and b!2040588 (not condMapEmpty!9124)) mapNonEmpty!9125))

(assert (= b!2040593 b!2040588))

(assert (= b!2040606 b!2040593))

(assert (= b!2040594 b!2040606))

(assert (= (and b!2040607 ((_ is LongMap!1972) (v!27032 (underlying!4140 (cache!2267 cacheUp!562))))) b!2040594))

(assert (= b!2040596 b!2040607))

(assert (= (and b!2040599 ((_ is HashMap!1886) (cache!2267 cacheUp!562))) b!2040596))

(assert (= start!201124 b!2040599))

(assert (= b!2040597 b!2040601))

(assert (= b!2040587 b!2040597))

(assert (= (and start!201124 ((_ is Cons!22292) rules!1563)) b!2040587))

(assert (= start!201124 b!2040600))

(assert (= start!201124 b!2040589))

(assert (= start!201124 b!2040582))

(assert (= start!201124 b!2040605))

(declare-fun m!2484527 () Bool)

(assert (=> b!2040578 m!2484527))

(declare-fun m!2484529 () Bool)

(assert (=> b!2040580 m!2484529))

(declare-fun m!2484531 () Bool)

(assert (=> b!2040580 m!2484531))

(declare-fun m!2484533 () Bool)

(assert (=> b!2040590 m!2484533))

(declare-fun m!2484535 () Bool)

(assert (=> b!2040590 m!2484535))

(declare-fun m!2484537 () Bool)

(assert (=> b!2040590 m!2484537))

(declare-fun m!2484539 () Bool)

(assert (=> b!2040590 m!2484539))

(declare-fun m!2484541 () Bool)

(assert (=> b!2040579 m!2484541))

(declare-fun m!2484543 () Bool)

(assert (=> b!2040579 m!2484543))

(declare-fun m!2484545 () Bool)

(assert (=> mapNonEmpty!9125 m!2484545))

(declare-fun m!2484547 () Bool)

(assert (=> b!2040595 m!2484547))

(assert (=> b!2040595 m!2484547))

(declare-fun m!2484549 () Bool)

(assert (=> b!2040595 m!2484549))

(declare-fun m!2484551 () Bool)

(assert (=> b!2040608 m!2484551))

(declare-fun m!2484553 () Bool)

(assert (=> start!201124 m!2484553))

(declare-fun m!2484555 () Bool)

(assert (=> start!201124 m!2484555))

(declare-fun m!2484557 () Bool)

(assert (=> start!201124 m!2484557))

(declare-fun m!2484559 () Bool)

(assert (=> start!201124 m!2484559))

(declare-fun m!2484561 () Bool)

(assert (=> start!201124 m!2484561))

(declare-fun m!2484563 () Bool)

(assert (=> start!201124 m!2484563))

(declare-fun m!2484565 () Bool)

(assert (=> b!2040597 m!2484565))

(declare-fun m!2484567 () Bool)

(assert (=> b!2040597 m!2484567))

(declare-fun m!2484569 () Bool)

(assert (=> b!2040582 m!2484569))

(declare-fun m!2484571 () Bool)

(assert (=> b!2040605 m!2484571))

(declare-fun m!2484573 () Bool)

(assert (=> mapNonEmpty!9124 m!2484573))

(declare-fun m!2484575 () Bool)

(assert (=> b!2040598 m!2484575))

(declare-fun m!2484577 () Bool)

(assert (=> b!2040598 m!2484577))

(declare-fun m!2484579 () Bool)

(assert (=> b!2040598 m!2484579))

(declare-fun m!2484581 () Bool)

(assert (=> b!2040598 m!2484581))

(assert (=> b!2040598 m!2484577))

(declare-fun m!2484583 () Bool)

(assert (=> b!2040598 m!2484583))

(declare-fun m!2484585 () Bool)

(assert (=> b!2040589 m!2484585))

(declare-fun m!2484587 () Bool)

(assert (=> b!2040586 m!2484587))

(declare-fun m!2484589 () Bool)

(assert (=> b!2040586 m!2484589))

(declare-fun m!2484591 () Bool)

(assert (=> b!2040586 m!2484591))

(declare-fun m!2484593 () Bool)

(assert (=> b!2040593 m!2484593))

(declare-fun m!2484595 () Bool)

(assert (=> b!2040593 m!2484595))

(declare-fun m!2484597 () Bool)

(assert (=> b!2040600 m!2484597))

(declare-fun m!2484599 () Bool)

(assert (=> b!2040602 m!2484599))

(declare-fun m!2484601 () Bool)

(assert (=> b!2040585 m!2484601))

(declare-fun m!2484603 () Bool)

(assert (=> b!2040585 m!2484603))

(declare-fun m!2484605 () Bool)

(assert (=> b!2040585 m!2484605))

(declare-fun m!2484607 () Bool)

(assert (=> b!2040604 m!2484607))

(check-sat b_and!162797 b_and!162793 (not b!2040585) (not b!2040587) b_and!162789 (not b!2040593) (not b!2040603) (not b_next!57563) (not b_next!57553) (not mapNonEmpty!9125) (not b!2040595) b_and!162799 (not b!2040597) (not start!201124) (not b!2040588) (not b!2040590) (not b!2040582) (not b!2040602) (not b_next!57559) b_and!162791 (not b!2040600) (not b_next!57557) (not mapNonEmpty!9124) (not b_next!57561) (not b!2040605) (not b!2040578) (not b!2040608) (not b_next!57555) (not b!2040589) (not b!2040580) b_and!162795 (not b!2040579) (not b!2040586) (not b!2040604) (not b!2040598))
(check-sat b_and!162799 b_and!162797 b_and!162793 (not b_next!57559) b_and!162791 (not b_next!57557) (not b_next!57561) b_and!162789 (not b_next!57555) b_and!162795 (not b_next!57563) (not b_next!57553))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206240 () Bool)

(assert start!206240)

(declare-fun b!2109343 () Bool)

(declare-fun b_free!60829 () Bool)

(declare-fun b_next!61533 () Bool)

(assert (=> b!2109343 (= b_free!60829 (not b_next!61533))))

(declare-fun tp!641292 () Bool)

(declare-fun b_and!170395 () Bool)

(assert (=> b!2109343 (= tp!641292 b_and!170395)))

(declare-fun b_free!60831 () Bool)

(declare-fun b_next!61535 () Bool)

(assert (=> b!2109343 (= b_free!60831 (not b_next!61535))))

(declare-fun tp!641291 () Bool)

(declare-fun b_and!170397 () Bool)

(assert (=> b!2109343 (= tp!641291 b_and!170397)))

(declare-fun b!2109329 () Bool)

(declare-fun b_free!60833 () Bool)

(declare-fun b_next!61537 () Bool)

(assert (=> b!2109329 (= b_free!60833 (not b_next!61537))))

(declare-fun tp!641293 () Bool)

(declare-fun b_and!170399 () Bool)

(assert (=> b!2109329 (= tp!641293 b_and!170399)))

(declare-fun b!2109337 () Bool)

(declare-fun b_free!60835 () Bool)

(declare-fun b_next!61539 () Bool)

(assert (=> b!2109337 (= b_free!60835 (not b_next!61539))))

(declare-fun tp!641287 () Bool)

(declare-fun b_and!170401 () Bool)

(assert (=> b!2109337 (= tp!641287 b_and!170401)))

(declare-fun b!2109340 () Bool)

(declare-fun b_free!60837 () Bool)

(declare-fun b_next!61541 () Bool)

(assert (=> b!2109340 (= b_free!60837 (not b_next!61541))))

(declare-fun tp!641294 () Bool)

(declare-fun b_and!170403 () Bool)

(assert (=> b!2109340 (= tp!641294 b_and!170403)))

(declare-fun b!2109323 () Bool)

(declare-fun b_free!60839 () Bool)

(declare-fun b_next!61543 () Bool)

(assert (=> b!2109323 (= b_free!60839 (not b_next!61543))))

(declare-fun tp!641302 () Bool)

(declare-fun b_and!170405 () Bool)

(assert (=> b!2109323 (= tp!641302 b_and!170405)))

(declare-fun b!2109322 () Bool)

(declare-fun e!1341323 () Bool)

(declare-fun e!1341322 () Bool)

(assert (=> b!2109322 (= e!1341323 e!1341322)))

(declare-fun e!1341301 () Bool)

(declare-fun e!1341312 () Bool)

(assert (=> b!2109323 (= e!1341301 (and e!1341312 tp!641302))))

(declare-fun e!1341319 () Bool)

(declare-fun tp!641286 () Bool)

(declare-datatypes ((C!11328 0))(
  ( (C!11329 (val!6650 Int)) )
))
(declare-datatypes ((List!23441 0))(
  ( (Nil!23357) (Cons!23357 (h!28758 C!11328) (t!195940 List!23441)) )
))
(declare-datatypes ((IArray!15479 0))(
  ( (IArray!15480 (innerList!7797 List!23441)) )
))
(declare-datatypes ((Conc!7737 0))(
  ( (Node!7737 (left!18183 Conc!7737) (right!18513 Conc!7737) (csize!15704 Int) (cheight!7948 Int)) (Leaf!11300 (xs!10679 IArray!15479) (csize!15705 Int)) (Empty!7737) )
))
(declare-datatypes ((BalanceConc!15236 0))(
  ( (BalanceConc!15237 (c!339010 Conc!7737)) )
))
(declare-datatypes ((List!23442 0))(
  ( (Nil!23358) (Cons!23358 (h!28759 (_ BitVec 16)) (t!195941 List!23442)) )
))
(declare-datatypes ((TokenValue!4292 0))(
  ( (FloatLiteralValue!8584 (text!30489 List!23442)) (TokenValueExt!4291 (__x!15012 Int)) (Broken!21460 (value!130057 List!23442)) (Object!4375) (End!4292) (Def!4292) (Underscore!4292) (Match!4292) (Else!4292) (Error!4292) (Case!4292) (If!4292) (Extends!4292) (Abstract!4292) (Class!4292) (Val!4292) (DelimiterValue!8584 (del!4352 List!23442)) (KeywordValue!4298 (value!130058 List!23442)) (CommentValue!8584 (value!130059 List!23442)) (WhitespaceValue!8584 (value!130060 List!23442)) (IndentationValue!4292 (value!130061 List!23442)) (String!26665) (Int32!4292) (Broken!21461 (value!130062 List!23442)) (Boolean!4293) (Unit!37494) (OperatorValue!4295 (op!4352 List!23442)) (IdentifierValue!8584 (value!130063 List!23442)) (IdentifierValue!8585 (value!130064 List!23442)) (WhitespaceValue!8585 (value!130065 List!23442)) (True!8584) (False!8584) (Broken!21462 (value!130066 List!23442)) (Broken!21463 (value!130067 List!23442)) (True!8585) (RightBrace!4292) (RightBracket!4292) (Colon!4292) (Null!4292) (Comma!4292) (LeftBracket!4292) (False!8585) (LeftBrace!4292) (ImaginaryLiteralValue!4292 (text!30490 List!23442)) (StringLiteralValue!12876 (value!130068 List!23442)) (EOFValue!4292 (value!130069 List!23442)) (IdentValue!4292 (value!130070 List!23442)) (DelimiterValue!8585 (value!130071 List!23442)) (DedentValue!4292 (value!130072 List!23442)) (NewLineValue!4292 (value!130073 List!23442)) (IntegerValue!12876 (value!130074 (_ BitVec 32)) (text!30491 List!23442)) (IntegerValue!12877 (value!130075 Int) (text!30492 List!23442)) (Times!4292) (Or!4292) (Equal!4292) (Minus!4292) (Broken!21464 (value!130076 List!23442)) (And!4292) (Div!4292) (LessEqual!4292) (Mod!4292) (Concat!9883) (Not!4292) (Plus!4292) (SpaceValue!4292 (value!130077 List!23442)) (IntegerValue!12878 (value!130078 Int) (text!30493 List!23442)) (StringLiteralValue!12877 (text!30494 List!23442)) (FloatLiteralValue!8585 (text!30495 List!23442)) (BytesLiteralValue!4292 (value!130079 List!23442)) (CommentValue!8585 (value!130080 List!23442)) (StringLiteralValue!12878 (value!130081 List!23442)) (ErrorTokenValue!4292 (msg!4353 List!23442)) )
))
(declare-datatypes ((Regex!5591 0))(
  ( (ElementMatch!5591 (c!339011 C!11328)) (Concat!9884 (regOne!11694 Regex!5591) (regTwo!11694 Regex!5591)) (EmptyExpr!5591) (Star!5591 (reg!5920 Regex!5591)) (EmptyLang!5591) (Union!5591 (regOne!11695 Regex!5591) (regTwo!11695 Regex!5591)) )
))
(declare-datatypes ((String!26666 0))(
  ( (String!26667 (value!130082 String)) )
))
(declare-datatypes ((TokenValueInjection!8168 0))(
  ( (TokenValueInjection!8169 (toValue!5867 Int) (toChars!5726 Int)) )
))
(declare-datatypes ((Rule!8112 0))(
  ( (Rule!8113 (regex!4156 Regex!5591) (tag!4646 String!26666) (isSeparator!4156 Bool) (transformation!4156 TokenValueInjection!8168)) )
))
(declare-fun rule!236 () Rule!8112)

(declare-fun e!1341304 () Bool)

(declare-fun b!2109324 () Bool)

(declare-fun inv!30911 (String!26666) Bool)

(declare-fun inv!30912 (TokenValueInjection!8168) Bool)

(assert (=> b!2109324 (= e!1341319 (and tp!641286 (inv!30911 (tag!4646 rule!236)) (inv!30912 (transformation!4156 rule!236)) e!1341304))))

(declare-fun b!2109325 () Bool)

(declare-fun e!1341314 () Bool)

(declare-datatypes ((List!23443 0))(
  ( (Nil!23359) (Cons!23359 (h!28760 Regex!5591) (t!195942 List!23443)) )
))
(declare-datatypes ((Context!2322 0))(
  ( (Context!2323 (exprs!1661 List!23443)) )
))
(declare-datatypes ((tuple3!2634 0))(
  ( (tuple3!2635 (_1!13117 Regex!5591) (_2!13117 Context!2322) (_3!1781 C!11328)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22672 0))(
  ( (tuple2!22673 (_1!13118 tuple3!2634) (_2!13118 (InoxSet Context!2322))) )
))
(declare-datatypes ((List!23444 0))(
  ( (Nil!23360) (Cons!23360 (h!28761 tuple2!22672) (t!195943 List!23444)) )
))
(declare-datatypes ((array!7896 0))(
  ( (array!7897 (arr!3497 (Array (_ BitVec 32) List!23444)) (size!18226 (_ BitVec 32))) )
))
(declare-datatypes ((array!7898 0))(
  ( (array!7899 (arr!3498 (Array (_ BitVec 32) (_ BitVec 64))) (size!18227 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4570 0))(
  ( (LongMapFixedSize!4571 (defaultEntry!2650 Int) (mask!6396 (_ BitVec 32)) (extraKeys!2533 (_ BitVec 32)) (zeroValue!2543 List!23444) (minValue!2543 List!23444) (_size!4621 (_ BitVec 32)) (_keys!2582 array!7898) (_values!2565 array!7896) (_vacant!2346 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8965 0))(
  ( (Cell!8966 (v!27894 LongMapFixedSize!4570)) )
))
(declare-datatypes ((MutLongMap!2285 0))(
  ( (LongMap!2285 (underlying!4765 Cell!8965)) (MutLongMapExt!2284 (__x!15013 Int)) )
))
(declare-fun lt!791877 () MutLongMap!2285)

(get-info :version)

(assert (=> b!2109325 (= e!1341314 (and e!1341323 ((_ is LongMap!2285) lt!791877)))))

(declare-datatypes ((Hashable!2199 0))(
  ( (HashableExt!2198 (__x!15014 Int)) )
))
(declare-datatypes ((Cell!8967 0))(
  ( (Cell!8968 (v!27895 MutLongMap!2285)) )
))
(declare-datatypes ((MutableMap!2199 0))(
  ( (MutableMapExt!2198 (__x!15015 Int)) (HashMap!2199 (underlying!4766 Cell!8967) (hashF!4122 Hashable!2199) (_size!4622 (_ BitVec 32)) (defaultValue!2361 Int)) )
))
(declare-datatypes ((CacheDown!1498 0))(
  ( (CacheDown!1499 (cache!2580 MutableMap!2199)) )
))
(declare-fun cacheDown!753 () CacheDown!1498)

(assert (=> b!2109325 (= lt!791877 (v!27895 (underlying!4766 (cache!2580 cacheDown!753))))))

(declare-fun b!2109326 () Bool)

(declare-fun e!1341316 () Bool)

(declare-fun totalInput!548 () BalanceConc!15236)

(declare-fun tp!641289 () Bool)

(declare-fun inv!30913 (Conc!7737) Bool)

(assert (=> b!2109326 (= e!1341316 (and (inv!30913 (c!339010 totalInput!548)) tp!641289))))

(declare-fun b!2109327 () Bool)

(declare-fun res!916429 () Bool)

(declare-fun e!1341307 () Bool)

(assert (=> b!2109327 (=> (not res!916429) (not e!1341307))))

(declare-datatypes ((tuple2!22674 0))(
  ( (tuple2!22675 (_1!13119 Context!2322) (_2!13119 C!11328)) )
))
(declare-datatypes ((tuple2!22676 0))(
  ( (tuple2!22677 (_1!13120 tuple2!22674) (_2!13120 (InoxSet Context!2322))) )
))
(declare-datatypes ((List!23445 0))(
  ( (Nil!23361) (Cons!23361 (h!28762 tuple2!22676) (t!195944 List!23445)) )
))
(declare-datatypes ((array!7900 0))(
  ( (array!7901 (arr!3499 (Array (_ BitVec 32) List!23445)) (size!18228 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4572 0))(
  ( (LongMapFixedSize!4573 (defaultEntry!2651 Int) (mask!6397 (_ BitVec 32)) (extraKeys!2534 (_ BitVec 32)) (zeroValue!2544 List!23445) (minValue!2544 List!23445) (_size!4623 (_ BitVec 32)) (_keys!2583 array!7898) (_values!2566 array!7900) (_vacant!2347 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8969 0))(
  ( (Cell!8970 (v!27896 LongMapFixedSize!4572)) )
))
(declare-datatypes ((MutLongMap!2286 0))(
  ( (LongMap!2286 (underlying!4767 Cell!8969)) (MutLongMapExt!2285 (__x!15016 Int)) )
))
(declare-datatypes ((Cell!8971 0))(
  ( (Cell!8972 (v!27897 MutLongMap!2286)) )
))
(declare-datatypes ((Hashable!2200 0))(
  ( (HashableExt!2199 (__x!15017 Int)) )
))
(declare-datatypes ((MutableMap!2200 0))(
  ( (MutableMapExt!2199 (__x!15018 Int)) (HashMap!2200 (underlying!4768 Cell!8971) (hashF!4123 Hashable!2200) (_size!4624 (_ BitVec 32)) (defaultValue!2362 Int)) )
))
(declare-datatypes ((CacheUp!1494 0))(
  ( (CacheUp!1495 (cache!2581 MutableMap!2200)) )
))
(declare-fun cacheUp!740 () CacheUp!1494)

(declare-fun valid!1807 (CacheUp!1494) Bool)

(assert (=> b!2109327 (= res!916429 (valid!1807 cacheUp!740))))

(declare-fun b!2109328 () Bool)

(declare-fun e!1341321 () Bool)

(declare-fun input!1654 () BalanceConc!15236)

(declare-fun tp!641300 () Bool)

(assert (=> b!2109328 (= e!1341321 (and (inv!30913 (c!339010 input!1654)) tp!641300))))

(declare-fun tp!641284 () Bool)

(declare-fun e!1341320 () Bool)

(declare-fun tp!641299 () Bool)

(declare-fun e!1341315 () Bool)

(declare-fun array_inv!2517 (array!7898) Bool)

(declare-fun array_inv!2518 (array!7900) Bool)

(assert (=> b!2109329 (= e!1341315 (and tp!641293 tp!641284 tp!641299 (array_inv!2517 (_keys!2583 (v!27896 (underlying!4767 (v!27897 (underlying!4768 (cache!2581 cacheUp!740))))))) (array_inv!2518 (_values!2566 (v!27896 (underlying!4767 (v!27897 (underlying!4768 (cache!2581 cacheUp!740))))))) e!1341320))))

(declare-fun res!916432 () Bool)

(assert (=> start!206240 (=> (not res!916432) (not e!1341307))))

(declare-datatypes ((LexerInterface!3754 0))(
  ( (LexerInterfaceExt!3751 (__x!15019 Int)) (Lexer!3752) )
))
(declare-fun thiss!16399 () LexerInterface!3754)

(assert (=> start!206240 (= res!916432 ((_ is Lexer!3752) thiss!16399))))

(assert (=> start!206240 e!1341307))

(assert (=> start!206240 true))

(assert (=> start!206240 e!1341319))

(declare-fun e!1341310 () Bool)

(declare-fun inv!30914 (CacheDown!1498) Bool)

(assert (=> start!206240 (and (inv!30914 cacheDown!753) e!1341310)))

(declare-fun inv!30915 (BalanceConc!15236) Bool)

(assert (=> start!206240 (and (inv!30915 input!1654) e!1341321)))

(assert (=> start!206240 (and (inv!30915 totalInput!548) e!1341316)))

(declare-fun e!1341306 () Bool)

(declare-fun inv!30916 (CacheUp!1494) Bool)

(assert (=> start!206240 (and (inv!30916 cacheUp!740) e!1341306)))

(declare-fun b!2109330 () Bool)

(declare-fun e!1341302 () Bool)

(declare-fun tp!641297 () Bool)

(declare-fun mapRes!11042 () Bool)

(assert (=> b!2109330 (= e!1341302 (and tp!641297 mapRes!11042))))

(declare-fun condMapEmpty!11043 () Bool)

(declare-fun mapDefault!11043 () List!23444)

(assert (=> b!2109330 (= condMapEmpty!11043 (= (arr!3497 (_values!2565 (v!27894 (underlying!4765 (v!27895 (underlying!4766 (cache!2580 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23444)) mapDefault!11043)))))

(declare-fun mapNonEmpty!11042 () Bool)

(declare-fun mapRes!11043 () Bool)

(declare-fun tp!641301 () Bool)

(declare-fun tp!641296 () Bool)

(assert (=> mapNonEmpty!11042 (= mapRes!11043 (and tp!641301 tp!641296))))

(declare-fun mapValue!11042 () List!23445)

(declare-fun mapRest!11042 () (Array (_ BitVec 32) List!23445))

(declare-fun mapKey!11043 () (_ BitVec 32))

(assert (=> mapNonEmpty!11042 (= (arr!3499 (_values!2566 (v!27896 (underlying!4767 (v!27897 (underlying!4768 (cache!2581 cacheUp!740))))))) (store mapRest!11042 mapKey!11043 mapValue!11042))))

(declare-fun b!2109331 () Bool)

(declare-fun e!1341318 () Bool)

(assert (=> b!2109331 (= e!1341322 e!1341318)))

(declare-fun mapNonEmpty!11043 () Bool)

(declare-fun tp!641290 () Bool)

(declare-fun tp!641285 () Bool)

(assert (=> mapNonEmpty!11043 (= mapRes!11042 (and tp!641290 tp!641285))))

(declare-fun mapRest!11043 () (Array (_ BitVec 32) List!23444))

(declare-fun mapKey!11042 () (_ BitVec 32))

(declare-fun mapValue!11043 () List!23444)

(assert (=> mapNonEmpty!11043 (= (arr!3497 (_values!2565 (v!27894 (underlying!4765 (v!27895 (underlying!4766 (cache!2580 cacheDown!753))))))) (store mapRest!11043 mapKey!11042 mapValue!11043))))

(declare-fun b!2109332 () Bool)

(declare-fun e!1341308 () Bool)

(assert (=> b!2109332 (= e!1341310 e!1341308)))

(declare-fun b!2109333 () Bool)

(declare-fun res!916428 () Bool)

(assert (=> b!2109333 (=> (not res!916428) (not e!1341307))))

(declare-fun isSuffix!570 (List!23441 List!23441) Bool)

(declare-fun list!9463 (BalanceConc!15236) List!23441)

(assert (=> b!2109333 (= res!916428 (isSuffix!570 (list!9463 input!1654) (list!9463 totalInput!548)))))

(declare-fun b!2109334 () Bool)

(declare-fun e!1341313 () Bool)

(assert (=> b!2109334 (= e!1341313 e!1341315)))

(declare-fun b!2109335 () Bool)

(declare-fun res!916431 () Bool)

(assert (=> b!2109335 (=> (not res!916431) (not e!1341307))))

(declare-fun valid!1808 (CacheDown!1498) Bool)

(assert (=> b!2109335 (= res!916431 (valid!1808 cacheDown!753))))

(declare-fun mapIsEmpty!11042 () Bool)

(assert (=> mapIsEmpty!11042 mapRes!11042))

(declare-fun b!2109336 () Bool)

(declare-fun e!1341317 () Bool)

(declare-fun lt!791876 () MutLongMap!2286)

(assert (=> b!2109336 (= e!1341312 (and e!1341317 ((_ is LongMap!2286) lt!791876)))))

(assert (=> b!2109336 (= lt!791876 (v!27897 (underlying!4768 (cache!2581 cacheUp!740))))))

(declare-fun tp!641295 () Bool)

(declare-fun tp!641298 () Bool)

(declare-fun array_inv!2519 (array!7896) Bool)

(assert (=> b!2109337 (= e!1341318 (and tp!641287 tp!641295 tp!641298 (array_inv!2517 (_keys!2582 (v!27894 (underlying!4765 (v!27895 (underlying!4766 (cache!2580 cacheDown!753))))))) (array_inv!2519 (_values!2565 (v!27894 (underlying!4765 (v!27895 (underlying!4766 (cache!2580 cacheDown!753))))))) e!1341302))))

(declare-fun b!2109338 () Bool)

(assert (=> b!2109338 (= e!1341306 e!1341301)))

(declare-fun b!2109339 () Bool)

(declare-fun res!916427 () Bool)

(declare-fun e!1341303 () Bool)

(assert (=> b!2109339 (=> (not res!916427) (not e!1341303))))

(declare-datatypes ((tuple2!22678 0))(
  ( (tuple2!22679 (_1!13121 BalanceConc!15236) (_2!13121 BalanceConc!15236)) )
))
(declare-datatypes ((tuple3!2636 0))(
  ( (tuple3!2637 (_1!13122 tuple2!22678) (_2!13122 CacheUp!1494) (_3!1782 CacheDown!1498)) )
))
(declare-fun lt!791875 () tuple3!2636)

(declare-fun isEmpty!14292 (BalanceConc!15236) Bool)

(assert (=> b!2109339 (= res!916427 (not (isEmpty!14292 (_1!13121 (_1!13122 lt!791875)))))))

(assert (=> b!2109340 (= e!1341308 (and e!1341314 tp!641294))))

(declare-fun b!2109341 () Bool)

(declare-fun res!916433 () Bool)

(assert (=> b!2109341 (=> (not res!916433) (not e!1341307))))

(declare-fun ruleValid!1279 (LexerInterface!3754 Rule!8112) Bool)

(assert (=> b!2109341 (= res!916433 (ruleValid!1279 thiss!16399 rule!236))))

(declare-fun b!2109342 () Bool)

(assert (=> b!2109342 (= e!1341307 e!1341303)))

(declare-fun res!916430 () Bool)

(assert (=> b!2109342 (=> (not res!916430) (not e!1341303))))

(declare-fun findLongestMatchWithZipperSequenceV2!62 (Regex!5591 BalanceConc!15236 BalanceConc!15236) tuple2!22678)

(assert (=> b!2109342 (= res!916430 (= (_1!13122 lt!791875) (findLongestMatchWithZipperSequenceV2!62 (regex!4156 rule!236) input!1654 totalInput!548)))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!36 (Regex!5591 BalanceConc!15236 BalanceConc!15236 CacheUp!1494 CacheDown!1498) tuple3!2636)

(assert (=> b!2109342 (= lt!791875 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!36 (regex!4156 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun mapIsEmpty!11043 () Bool)

(assert (=> mapIsEmpty!11043 mapRes!11043))

(assert (=> b!2109343 (= e!1341304 (and tp!641292 tp!641291))))

(declare-fun b!2109344 () Bool)

(assert (=> b!2109344 (= e!1341317 e!1341313)))

(declare-fun b!2109345 () Bool)

(declare-fun tp!641288 () Bool)

(assert (=> b!2109345 (= e!1341320 (and tp!641288 mapRes!11043))))

(declare-fun condMapEmpty!11042 () Bool)

(declare-fun mapDefault!11042 () List!23445)

(assert (=> b!2109345 (= condMapEmpty!11042 (= (arr!3499 (_values!2566 (v!27896 (underlying!4767 (v!27897 (underlying!4768 (cache!2581 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23445)) mapDefault!11042)))))

(declare-fun b!2109346 () Bool)

(assert (=> b!2109346 (= e!1341303 false)))

(assert (= (and start!206240 res!916432) b!2109341))

(assert (= (and b!2109341 res!916433) b!2109327))

(assert (= (and b!2109327 res!916429) b!2109335))

(assert (= (and b!2109335 res!916431) b!2109333))

(assert (= (and b!2109333 res!916428) b!2109342))

(assert (= (and b!2109342 res!916430) b!2109339))

(assert (= (and b!2109339 res!916427) b!2109346))

(assert (= b!2109324 b!2109343))

(assert (= start!206240 b!2109324))

(assert (= (and b!2109330 condMapEmpty!11043) mapIsEmpty!11042))

(assert (= (and b!2109330 (not condMapEmpty!11043)) mapNonEmpty!11043))

(assert (= b!2109337 b!2109330))

(assert (= b!2109331 b!2109337))

(assert (= b!2109322 b!2109331))

(assert (= (and b!2109325 ((_ is LongMap!2285) (v!27895 (underlying!4766 (cache!2580 cacheDown!753))))) b!2109322))

(assert (= b!2109340 b!2109325))

(assert (= (and b!2109332 ((_ is HashMap!2199) (cache!2580 cacheDown!753))) b!2109340))

(assert (= start!206240 b!2109332))

(assert (= start!206240 b!2109328))

(assert (= start!206240 b!2109326))

(assert (= (and b!2109345 condMapEmpty!11042) mapIsEmpty!11043))

(assert (= (and b!2109345 (not condMapEmpty!11042)) mapNonEmpty!11042))

(assert (= b!2109329 b!2109345))

(assert (= b!2109334 b!2109329))

(assert (= b!2109344 b!2109334))

(assert (= (and b!2109336 ((_ is LongMap!2286) (v!27897 (underlying!4768 (cache!2581 cacheUp!740))))) b!2109344))

(assert (= b!2109323 b!2109336))

(assert (= (and b!2109338 ((_ is HashMap!2200) (cache!2581 cacheUp!740))) b!2109323))

(assert (= start!206240 b!2109338))

(declare-fun m!2566661 () Bool)

(assert (=> b!2109327 m!2566661))

(declare-fun m!2566663 () Bool)

(assert (=> b!2109328 m!2566663))

(declare-fun m!2566665 () Bool)

(assert (=> b!2109326 m!2566665))

(declare-fun m!2566667 () Bool)

(assert (=> b!2109339 m!2566667))

(declare-fun m!2566669 () Bool)

(assert (=> b!2109341 m!2566669))

(declare-fun m!2566671 () Bool)

(assert (=> mapNonEmpty!11043 m!2566671))

(declare-fun m!2566673 () Bool)

(assert (=> b!2109333 m!2566673))

(declare-fun m!2566675 () Bool)

(assert (=> b!2109333 m!2566675))

(assert (=> b!2109333 m!2566673))

(assert (=> b!2109333 m!2566675))

(declare-fun m!2566677 () Bool)

(assert (=> b!2109333 m!2566677))

(declare-fun m!2566679 () Bool)

(assert (=> b!2109324 m!2566679))

(declare-fun m!2566681 () Bool)

(assert (=> b!2109324 m!2566681))

(declare-fun m!2566683 () Bool)

(assert (=> b!2109335 m!2566683))

(declare-fun m!2566685 () Bool)

(assert (=> b!2109329 m!2566685))

(declare-fun m!2566687 () Bool)

(assert (=> b!2109329 m!2566687))

(declare-fun m!2566689 () Bool)

(assert (=> start!206240 m!2566689))

(declare-fun m!2566691 () Bool)

(assert (=> start!206240 m!2566691))

(declare-fun m!2566693 () Bool)

(assert (=> start!206240 m!2566693))

(declare-fun m!2566695 () Bool)

(assert (=> start!206240 m!2566695))

(declare-fun m!2566697 () Bool)

(assert (=> b!2109337 m!2566697))

(declare-fun m!2566699 () Bool)

(assert (=> b!2109337 m!2566699))

(declare-fun m!2566701 () Bool)

(assert (=> b!2109342 m!2566701))

(declare-fun m!2566703 () Bool)

(assert (=> b!2109342 m!2566703))

(declare-fun m!2566705 () Bool)

(assert (=> mapNonEmpty!11042 m!2566705))

(check-sat (not b!2109335) b_and!170397 (not b_next!61543) (not b!2109330) (not b!2109328) (not b!2109339) (not start!206240) (not b!2109341) (not mapNonEmpty!11043) b_and!170399 (not mapNonEmpty!11042) b_and!170401 (not b!2109333) (not b!2109345) (not b_next!61535) (not b!2109337) (not b!2109327) (not b!2109326) b_and!170405 (not b_next!61537) b_and!170395 (not b!2109324) b_and!170403 (not b_next!61541) (not b!2109329) (not b_next!61533) (not b!2109342) (not b_next!61539))
(check-sat b_and!170397 (not b_next!61543) (not b_next!61533) b_and!170399 b_and!170401 (not b_next!61539) (not b_next!61535) b_and!170405 (not b_next!61537) b_and!170395 b_and!170403 (not b_next!61541))

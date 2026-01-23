; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64906 () Bool)

(assert start!64906)

(declare-fun b!662858 () Bool)

(declare-fun b_free!19181 () Bool)

(declare-fun b_next!19245 () Bool)

(assert (=> b!662858 (= b_free!19181 (not b_next!19245))))

(declare-fun tp!202429 () Bool)

(declare-fun b_and!62975 () Bool)

(assert (=> b!662858 (= tp!202429 b_and!62975)))

(declare-fun b!662846 () Bool)

(declare-fun b_free!19183 () Bool)

(declare-fun b_next!19247 () Bool)

(assert (=> b!662846 (= b_free!19183 (not b_next!19247))))

(declare-fun tp!202431 () Bool)

(declare-fun b_and!62977 () Bool)

(assert (=> b!662846 (= tp!202431 b_and!62977)))

(declare-fun b!662855 () Bool)

(declare-fun b_free!19185 () Bool)

(declare-fun b_next!19249 () Bool)

(assert (=> b!662855 (= b_free!19185 (not b_next!19249))))

(declare-fun tp!202421 () Bool)

(declare-fun b_and!62979 () Bool)

(assert (=> b!662855 (= tp!202421 b_and!62979)))

(declare-fun b!662845 () Bool)

(declare-fun b_free!19187 () Bool)

(declare-fun b_next!19251 () Bool)

(assert (=> b!662845 (= b_free!19187 (not b_next!19251))))

(declare-fun tp!202433 () Bool)

(declare-fun b_and!62981 () Bool)

(assert (=> b!662845 (= tp!202433 b_and!62981)))

(declare-fun b!662843 () Bool)

(declare-fun e!410353 () Bool)

(declare-datatypes ((List!7279 0))(
  ( (Nil!7265) (Cons!7265 (h!12666 (_ BitVec 16)) (t!86572 List!7279)) )
))
(declare-datatypes ((TokenValue!1505 0))(
  ( (FloatLiteralValue!3010 (text!10980 List!7279)) (TokenValueExt!1504 (__x!5131 Int)) (Broken!7525 (value!47050 List!7279)) (Object!1518) (End!1505) (Def!1505) (Underscore!1505) (Match!1505) (Else!1505) (Error!1505) (Case!1505) (If!1505) (Extends!1505) (Abstract!1505) (Class!1505) (Val!1505) (DelimiterValue!3010 (del!1565 List!7279)) (KeywordValue!1511 (value!47051 List!7279)) (CommentValue!3010 (value!47052 List!7279)) (WhitespaceValue!3010 (value!47053 List!7279)) (IndentationValue!1505 (value!47054 List!7279)) (String!9264) (Int32!1505) (Broken!7526 (value!47055 List!7279)) (Boolean!1506) (Unit!12525) (OperatorValue!1508 (op!1565 List!7279)) (IdentifierValue!3010 (value!47056 List!7279)) (IdentifierValue!3011 (value!47057 List!7279)) (WhitespaceValue!3011 (value!47058 List!7279)) (True!3010) (False!3010) (Broken!7527 (value!47059 List!7279)) (Broken!7528 (value!47060 List!7279)) (True!3011) (RightBrace!1505) (RightBracket!1505) (Colon!1505) (Null!1505) (Comma!1505) (LeftBracket!1505) (False!3011) (LeftBrace!1505) (ImaginaryLiteralValue!1505 (text!10981 List!7279)) (StringLiteralValue!4515 (value!47061 List!7279)) (EOFValue!1505 (value!47062 List!7279)) (IdentValue!1505 (value!47063 List!7279)) (DelimiterValue!3011 (value!47064 List!7279)) (DedentValue!1505 (value!47065 List!7279)) (NewLineValue!1505 (value!47066 List!7279)) (IntegerValue!4515 (value!47067 (_ BitVec 32)) (text!10982 List!7279)) (IntegerValue!4516 (value!47068 Int) (text!10983 List!7279)) (Times!1505) (Or!1505) (Equal!1505) (Minus!1505) (Broken!7529 (value!47069 List!7279)) (And!1505) (Div!1505) (LessEqual!1505) (Mod!1505) (Concat!3312) (Not!1505) (Plus!1505) (SpaceValue!1505 (value!47070 List!7279)) (IntegerValue!4517 (value!47071 Int) (text!10984 List!7279)) (StringLiteralValue!4516 (text!10985 List!7279)) (FloatLiteralValue!3011 (text!10986 List!7279)) (BytesLiteralValue!1505 (value!47072 List!7279)) (CommentValue!3011 (value!47073 List!7279)) (StringLiteralValue!4517 (value!47074 List!7279)) (ErrorTokenValue!1505 (msg!1566 List!7279)) )
))
(declare-datatypes ((Regex!1807 0))(
  ( (ElementMatch!1807 (c!119208 (_ BitVec 16))) (Concat!3313 (regOne!4126 Regex!1807) (regTwo!4126 Regex!1807)) (EmptyExpr!1807) (Star!1807 (reg!2136 Regex!1807)) (EmptyLang!1807) (Union!1807 (regOne!4127 Regex!1807) (regTwo!4127 Regex!1807)) )
))
(declare-datatypes ((String!9265 0))(
  ( (String!9266 (value!47075 String)) )
))
(declare-datatypes ((IArray!5167 0))(
  ( (IArray!5168 (innerList!2641 List!7279)) )
))
(declare-datatypes ((Conc!2583 0))(
  ( (Node!2583 (left!5874 Conc!2583) (right!6204 Conc!2583) (csize!5396 Int) (cheight!2794 Int)) (Leaf!3835 (xs!5232 IArray!5167) (csize!5397 Int)) (Empty!2583) )
))
(declare-datatypes ((BalanceConc!5178 0))(
  ( (BalanceConc!5179 (c!119209 Conc!2583)) )
))
(declare-datatypes ((TokenValueInjection!2762 0))(
  ( (TokenValueInjection!2763 (toValue!2414 Int) (toChars!2273 Int)) )
))
(declare-datatypes ((Rule!2742 0))(
  ( (Rule!2743 (regex!1471 Regex!1807) (tag!1733 String!9265) (isSeparator!1471 Bool) (transformation!1471 TokenValueInjection!2762)) )
))
(declare-datatypes ((List!7280 0))(
  ( (Nil!7266) (Cons!7266 (h!12667 Rule!2742) (t!86573 List!7280)) )
))
(declare-fun lt!282330 () List!7280)

(declare-datatypes ((Token!2664 0))(
  ( (Token!2665 (value!47076 TokenValue!1505) (rule!2266 Rule!2742) (size!5727 Int) (originalCharacters!1503 List!7279)) )
))
(declare-datatypes ((List!7281 0))(
  ( (Nil!7267) (Cons!7267 (h!12668 Token!2664) (t!86574 List!7281)) )
))
(declare-datatypes ((IArray!5169 0))(
  ( (IArray!5170 (innerList!2642 List!7281)) )
))
(declare-datatypes ((Conc!2584 0))(
  ( (Node!2584 (left!5875 Conc!2584) (right!6205 Conc!2584) (csize!5398 Int) (cheight!2795 Int)) (Leaf!3836 (xs!5233 IArray!5169) (csize!5399 Int)) (Empty!2584) )
))
(declare-datatypes ((BalanceConc!5180 0))(
  ( (BalanceConc!5181 (c!119210 Conc!2584)) )
))
(declare-fun lt!282333 () BalanceConc!5180)

(declare-datatypes ((LexerInterface!1287 0))(
  ( (LexerInterfaceExt!1284 (__x!5132 Int)) (Lexer!1285) )
))
(declare-fun rulesProduceEachTokenIndividually!600 (LexerInterface!1287 List!7280 BalanceConc!5180) Bool)

(assert (=> b!662843 (= e!410353 (not (rulesProduceEachTokenIndividually!600 Lexer!1285 lt!282330 lt!282333)))))

(declare-fun b!662844 () Bool)

(declare-fun e!410349 () Bool)

(declare-fun e!410363 () Bool)

(assert (=> b!662844 (= e!410349 e!410363)))

(declare-fun tp!202432 () Bool)

(declare-fun e!410362 () Bool)

(declare-datatypes ((Hashable!676 0))(
  ( (HashableExt!675 (__x!5133 Int)) )
))
(declare-datatypes ((List!7282 0))(
  ( (Nil!7268) (Cons!7268 (h!12669 Regex!1807) (t!86575 List!7282)) )
))
(declare-datatypes ((Context!438 0))(
  ( (Context!439 (exprs!719 List!7282)) )
))
(declare-datatypes ((tuple2!7608 0))(
  ( (tuple2!7609 (_1!4184 Context!438) (_2!4184 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7610 0))(
  ( (tuple2!7611 (_1!4185 tuple2!7608) (_2!4185 (InoxSet Context!438))) )
))
(declare-datatypes ((List!7283 0))(
  ( (Nil!7269) (Cons!7269 (h!12670 tuple2!7610) (t!86576 List!7283)) )
))
(declare-datatypes ((array!2670 0))(
  ( (array!2671 (arr!1209 (Array (_ BitVec 32) List!7283)) (size!5728 (_ BitVec 32))) )
))
(declare-datatypes ((array!2672 0))(
  ( (array!2673 (arr!1210 (Array (_ BitVec 32) (_ BitVec 64))) (size!5729 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1408 0))(
  ( (LongMapFixedSize!1409 (defaultEntry!1060 Int) (mask!2487 (_ BitVec 32)) (extraKeys!951 (_ BitVec 32)) (zeroValue!961 List!7283) (minValue!961 List!7283) (_size!1517 (_ BitVec 32)) (_keys!998 array!2672) (_values!983 array!2670) (_vacant!765 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2757 0))(
  ( (Cell!2758 (v!17393 LongMapFixedSize!1408)) )
))
(declare-datatypes ((MutLongMap!704 0))(
  ( (LongMap!704 (underlying!1591 Cell!2757)) (MutLongMapExt!703 (__x!5134 Int)) )
))
(declare-datatypes ((Cell!2759 0))(
  ( (Cell!2760 (v!17394 MutLongMap!704)) )
))
(declare-datatypes ((MutableMap!676 0))(
  ( (MutableMapExt!675 (__x!5135 Int)) (HashMap!676 (underlying!1592 Cell!2759) (hashF!2584 Hashable!676) (_size!1518 (_ BitVec 32)) (defaultValue!827 Int)) )
))
(declare-datatypes ((CacheUp!336 0))(
  ( (CacheUp!337 (cache!1063 MutableMap!676)) )
))
(declare-fun cacheUp!335 () CacheUp!336)

(declare-fun tp!202430 () Bool)

(declare-fun array_inv!883 (array!2672) Bool)

(declare-fun array_inv!884 (array!2670) Bool)

(assert (=> b!662845 (= e!410363 (and tp!202433 tp!202432 tp!202430 (array_inv!883 (_keys!998 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) (array_inv!884 (_values!983 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) e!410362))))

(declare-fun e!410364 () Bool)

(declare-fun e!410354 () Bool)

(assert (=> b!662846 (= e!410364 (and e!410354 tp!202431))))

(declare-fun b!662847 () Bool)

(declare-fun tp!202424 () Bool)

(declare-fun mapRes!2797 () Bool)

(assert (=> b!662847 (= e!410362 (and tp!202424 mapRes!2797))))

(declare-fun condMapEmpty!2796 () Bool)

(declare-fun mapDefault!2797 () List!7283)

(assert (=> b!662847 (= condMapEmpty!2796 (= (arr!1209 (_values!983 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) ((as const (Array (_ BitVec 32) List!7283)) mapDefault!2797)))))

(declare-fun mapNonEmpty!2796 () Bool)

(declare-fun mapRes!2796 () Bool)

(declare-fun tp!202426 () Bool)

(declare-fun tp!202427 () Bool)

(assert (=> mapNonEmpty!2796 (= mapRes!2796 (and tp!202426 tp!202427))))

(declare-datatypes ((tuple3!658 0))(
  ( (tuple3!659 (_1!4186 Regex!1807) (_2!4186 Context!438) (_3!380 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7612 0))(
  ( (tuple2!7613 (_1!4187 tuple3!658) (_2!4187 (InoxSet Context!438))) )
))
(declare-datatypes ((List!7284 0))(
  ( (Nil!7270) (Cons!7270 (h!12671 tuple2!7612) (t!86577 List!7284)) )
))
(declare-fun mapRest!2797 () (Array (_ BitVec 32) List!7284))

(declare-fun mapKey!2796 () (_ BitVec 32))

(declare-datatypes ((array!2674 0))(
  ( (array!2675 (arr!1211 (Array (_ BitVec 32) List!7284)) (size!5730 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1410 0))(
  ( (LongMapFixedSize!1411 (defaultEntry!1061 Int) (mask!2488 (_ BitVec 32)) (extraKeys!952 (_ BitVec 32)) (zeroValue!962 List!7284) (minValue!962 List!7284) (_size!1519 (_ BitVec 32)) (_keys!999 array!2672) (_values!984 array!2674) (_vacant!766 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2761 0))(
  ( (Cell!2762 (v!17395 LongMapFixedSize!1410)) )
))
(declare-datatypes ((MutLongMap!705 0))(
  ( (LongMap!705 (underlying!1593 Cell!2761)) (MutLongMapExt!704 (__x!5136 Int)) )
))
(declare-datatypes ((Cell!2763 0))(
  ( (Cell!2764 (v!17396 MutLongMap!705)) )
))
(declare-datatypes ((Hashable!677 0))(
  ( (HashableExt!676 (__x!5137 Int)) )
))
(declare-datatypes ((MutableMap!677 0))(
  ( (MutableMapExt!676 (__x!5138 Int)) (HashMap!677 (underlying!1594 Cell!2763) (hashF!2585 Hashable!677) (_size!1520 (_ BitVec 32)) (defaultValue!828 Int)) )
))
(declare-datatypes ((CacheDown!338 0))(
  ( (CacheDown!339 (cache!1064 MutableMap!677)) )
))
(declare-fun cacheDown!348 () CacheDown!338)

(declare-fun mapValue!2796 () List!7284)

(assert (=> mapNonEmpty!2796 (= (arr!1211 (_values!984 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) (store mapRest!2797 mapKey!2796 mapValue!2796))))

(declare-fun b!662848 () Bool)

(declare-fun e!410359 () Bool)

(declare-fun e!410351 () Bool)

(assert (=> b!662848 (= e!410359 e!410351)))

(declare-fun b!662849 () Bool)

(declare-fun e!410355 () Bool)

(declare-fun e!410348 () Bool)

(assert (=> b!662849 (= e!410355 e!410348)))

(declare-fun b!662850 () Bool)

(declare-fun e!410350 () Bool)

(declare-fun e!410360 () Bool)

(declare-fun lt!282331 () MutLongMap!704)

(get-info :version)

(assert (=> b!662850 (= e!410350 (and e!410360 ((_ is LongMap!704) lt!282331)))))

(assert (=> b!662850 (= lt!282331 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))

(declare-fun b!662851 () Bool)

(declare-fun e!410347 () Bool)

(assert (=> b!662851 (= e!410348 e!410347)))

(declare-fun b!662852 () Bool)

(declare-fun e!410352 () Bool)

(assert (=> b!662852 (= e!410352 e!410353)))

(declare-fun res!293980 () Bool)

(assert (=> b!662852 (=> (not res!293980) (not e!410353))))

(declare-datatypes ((tuple3!660 0))(
  ( (tuple3!661 (_1!4188 Bool) (_2!4188 CacheUp!336) (_3!381 CacheDown!338)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!16 (LexerInterface!1287 List!7280 BalanceConc!5180 CacheUp!336 CacheDown!338) tuple3!660)

(assert (=> b!662852 (= res!293980 (_1!4188 (rulesProduceEachTokenIndividuallyMem!16 Lexer!1285 lt!282330 lt!282333 cacheUp!335 cacheDown!348)))))

(declare-fun singletonSeq!458 (Token!2664) BalanceConc!5180)

(declare-fun apply!1742 (TokenValueInjection!2762 BalanceConc!5178) TokenValue!1505)

(declare-datatypes ((KeywordValueInjection!64 0))(
  ( (KeywordValueInjection!65) )
))
(declare-fun injection!9 (KeywordValueInjection!64) TokenValueInjection!2762)

(declare-fun singletonSeq!459 ((_ BitVec 16)) BalanceConc!5178)

(declare-datatypes ((JsonLexer!248 0))(
  ( (JsonLexer!249) )
))
(declare-fun lBracketRule!0 (JsonLexer!248) Rule!2742)

(assert (=> b!662852 (= lt!282333 (singletonSeq!458 (Token!2665 (apply!1742 (injection!9 KeywordValueInjection!65) (singletonSeq!459 #x005B)) (lBracketRule!0 JsonLexer!249) 1 (Cons!7265 #x005B Nil!7265))))))

(declare-fun b!662853 () Bool)

(declare-fun e!410358 () Bool)

(declare-fun tp!202425 () Bool)

(assert (=> b!662853 (= e!410358 (and tp!202425 mapRes!2796))))

(declare-fun condMapEmpty!2797 () Bool)

(declare-fun mapDefault!2796 () List!7284)

(assert (=> b!662853 (= condMapEmpty!2797 (= (arr!1211 (_values!984 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) ((as const (Array (_ BitVec 32) List!7284)) mapDefault!2796)))))

(declare-fun b!662854 () Bool)

(declare-fun res!293979 () Bool)

(assert (=> b!662854 (=> (not res!293979) (not e!410352))))

(declare-fun rulesInvariant!1222 (LexerInterface!1287 List!7280) Bool)

(assert (=> b!662854 (= res!293979 (rulesInvariant!1222 Lexer!1285 lt!282330))))

(assert (=> b!662855 (= e!410351 (and e!410350 tp!202421))))

(declare-fun mapIsEmpty!2796 () Bool)

(assert (=> mapIsEmpty!2796 mapRes!2796))

(declare-fun b!662856 () Bool)

(declare-fun res!293982 () Bool)

(assert (=> b!662856 (=> (not res!293982) (not e!410353))))

(declare-fun rulesProduceEachTokenIndividuallyList!351 (LexerInterface!1287 List!7280 List!7281) Bool)

(declare-fun list!3064 (BalanceConc!5180) List!7281)

(assert (=> b!662856 (= res!293982 (rulesProduceEachTokenIndividuallyList!351 Lexer!1285 lt!282330 (list!3064 lt!282333)))))

(declare-fun b!662857 () Bool)

(assert (=> b!662857 (= e!410360 e!410349)))

(declare-fun tp!202422 () Bool)

(declare-fun tp!202423 () Bool)

(declare-fun array_inv!885 (array!2674) Bool)

(assert (=> b!662858 (= e!410347 (and tp!202429 tp!202423 tp!202422 (array_inv!883 (_keys!999 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) (array_inv!885 (_values!984 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) e!410358))))

(declare-fun mapIsEmpty!2797 () Bool)

(assert (=> mapIsEmpty!2797 mapRes!2797))

(declare-fun b!662859 () Bool)

(declare-fun lt!282332 () MutLongMap!705)

(assert (=> b!662859 (= e!410354 (and e!410355 ((_ is LongMap!705) lt!282332)))))

(assert (=> b!662859 (= lt!282332 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))

(declare-fun mapNonEmpty!2797 () Bool)

(declare-fun tp!202420 () Bool)

(declare-fun tp!202428 () Bool)

(assert (=> mapNonEmpty!2797 (= mapRes!2797 (and tp!202420 tp!202428))))

(declare-fun mapKey!2797 () (_ BitVec 32))

(declare-fun mapRest!2796 () (Array (_ BitVec 32) List!7283))

(declare-fun mapValue!2797 () List!7283)

(assert (=> mapNonEmpty!2797 (= (arr!1209 (_values!983 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) (store mapRest!2796 mapKey!2797 mapValue!2797))))

(declare-fun b!662860 () Bool)

(declare-fun e!410357 () Bool)

(assert (=> b!662860 (= e!410357 e!410364)))

(declare-fun res!293981 () Bool)

(assert (=> start!64906 (=> (not res!293981) (not e!410352))))

(declare-fun isEmpty!4814 (List!7280) Bool)

(assert (=> start!64906 (= res!293981 (not (isEmpty!4814 lt!282330)))))

(declare-fun rules!109 (JsonLexer!248) List!7280)

(assert (=> start!64906 (= lt!282330 (rules!109 JsonLexer!249))))

(assert (=> start!64906 e!410352))

(declare-fun inv!9333 (CacheUp!336) Bool)

(assert (=> start!64906 (and (inv!9333 cacheUp!335) e!410359)))

(declare-fun inv!9334 (CacheDown!338) Bool)

(assert (=> start!64906 (and (inv!9334 cacheDown!348) e!410357)))

(assert (= (and start!64906 res!293981) b!662854))

(assert (= (and b!662854 res!293979) b!662852))

(assert (= (and b!662852 res!293980) b!662856))

(assert (= (and b!662856 res!293982) b!662843))

(assert (= (and b!662847 condMapEmpty!2796) mapIsEmpty!2797))

(assert (= (and b!662847 (not condMapEmpty!2796)) mapNonEmpty!2797))

(assert (= b!662845 b!662847))

(assert (= b!662844 b!662845))

(assert (= b!662857 b!662844))

(assert (= (and b!662850 ((_ is LongMap!704) (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))) b!662857))

(assert (= b!662855 b!662850))

(assert (= (and b!662848 ((_ is HashMap!676) (cache!1063 cacheUp!335))) b!662855))

(assert (= start!64906 b!662848))

(assert (= (and b!662853 condMapEmpty!2797) mapIsEmpty!2796))

(assert (= (and b!662853 (not condMapEmpty!2797)) mapNonEmpty!2796))

(assert (= b!662858 b!662853))

(assert (= b!662851 b!662858))

(assert (= b!662849 b!662851))

(assert (= (and b!662859 ((_ is LongMap!705) (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))) b!662849))

(assert (= b!662846 b!662859))

(assert (= (and b!662860 ((_ is HashMap!677) (cache!1064 cacheDown!348))) b!662846))

(assert (= start!64906 b!662860))

(declare-fun m!929199 () Bool)

(assert (=> b!662852 m!929199))

(declare-fun m!929201 () Bool)

(assert (=> b!662852 m!929201))

(declare-fun m!929203 () Bool)

(assert (=> b!662852 m!929203))

(assert (=> b!662852 m!929199))

(declare-fun m!929205 () Bool)

(assert (=> b!662852 m!929205))

(declare-fun m!929207 () Bool)

(assert (=> b!662852 m!929207))

(assert (=> b!662852 m!929205))

(declare-fun m!929209 () Bool)

(assert (=> b!662852 m!929209))

(declare-fun m!929211 () Bool)

(assert (=> b!662858 m!929211))

(declare-fun m!929213 () Bool)

(assert (=> b!662858 m!929213))

(declare-fun m!929215 () Bool)

(assert (=> start!64906 m!929215))

(declare-fun m!929217 () Bool)

(assert (=> start!64906 m!929217))

(declare-fun m!929219 () Bool)

(assert (=> start!64906 m!929219))

(declare-fun m!929221 () Bool)

(assert (=> start!64906 m!929221))

(declare-fun m!929223 () Bool)

(assert (=> mapNonEmpty!2797 m!929223))

(declare-fun m!929225 () Bool)

(assert (=> b!662854 m!929225))

(declare-fun m!929227 () Bool)

(assert (=> b!662843 m!929227))

(declare-fun m!929229 () Bool)

(assert (=> b!662856 m!929229))

(assert (=> b!662856 m!929229))

(declare-fun m!929231 () Bool)

(assert (=> b!662856 m!929231))

(declare-fun m!929233 () Bool)

(assert (=> mapNonEmpty!2796 m!929233))

(declare-fun m!929235 () Bool)

(assert (=> b!662845 m!929235))

(declare-fun m!929237 () Bool)

(assert (=> b!662845 m!929237))

(check-sat b_and!62975 (not mapNonEmpty!2797) (not b!662845) (not b!662852) (not b!662854) (not b_next!19249) (not b_next!19251) b_and!62979 (not start!64906) (not mapNonEmpty!2796) (not b!662843) b_and!62981 (not b_next!19247) (not b!662856) b_and!62977 (not b_next!19245) (not b!662853) (not b!662858) (not b!662847))
(check-sat b_and!62977 b_and!62975 (not b_next!19245) (not b_next!19249) (not b_next!19251) b_and!62979 b_and!62981 (not b_next!19247))
(get-model)

(declare-fun b!662874 () Bool)

(declare-fun e!410376 () Bool)

(assert (=> b!662874 (= e!410376 true)))

(declare-fun b!662873 () Bool)

(declare-fun e!410375 () Bool)

(assert (=> b!662873 (= e!410375 e!410376)))

(declare-fun b!662872 () Bool)

(declare-fun e!410374 () Bool)

(assert (=> b!662872 (= e!410374 e!410375)))

(declare-fun d!226504 () Bool)

(assert (=> d!226504 e!410374))

(assert (= b!662873 b!662874))

(assert (= b!662872 b!662873))

(assert (= (and d!226504 ((_ is Cons!7266) lt!282330)) b!662872))

(declare-fun order!5269 () Int)

(declare-fun lambda!20617 () Int)

(declare-fun order!5271 () Int)

(declare-fun dynLambda!3827 (Int Int) Int)

(declare-fun dynLambda!3828 (Int Int) Int)

(assert (=> b!662874 (< (dynLambda!3827 order!5269 (toValue!2414 (transformation!1471 (h!12667 lt!282330)))) (dynLambda!3828 order!5271 lambda!20617))))

(declare-fun order!5273 () Int)

(declare-fun dynLambda!3829 (Int Int) Int)

(assert (=> b!662874 (< (dynLambda!3829 order!5273 (toChars!2273 (transformation!1471 (h!12667 lt!282330)))) (dynLambda!3828 order!5271 lambda!20617))))

(assert (=> d!226504 true))

(declare-fun e!410367 () Bool)

(assert (=> d!226504 e!410367))

(declare-fun res!293985 () Bool)

(assert (=> d!226504 (=> (not res!293985) (not e!410367))))

(declare-fun lt!282336 () Bool)

(declare-fun forall!1922 (List!7281 Int) Bool)

(assert (=> d!226504 (= res!293985 (= lt!282336 (forall!1922 (list!3064 lt!282333) lambda!20617)))))

(declare-fun forall!1923 (BalanceConc!5180 Int) Bool)

(assert (=> d!226504 (= lt!282336 (forall!1923 lt!282333 lambda!20617))))

(assert (=> d!226504 (not (isEmpty!4814 lt!282330))))

(assert (=> d!226504 (= (rulesProduceEachTokenIndividually!600 Lexer!1285 lt!282330 lt!282333) lt!282336)))

(declare-fun b!662863 () Bool)

(assert (=> b!662863 (= e!410367 (= lt!282336 (rulesProduceEachTokenIndividuallyList!351 Lexer!1285 lt!282330 (list!3064 lt!282333))))))

(assert (= (and d!226504 res!293985) b!662863))

(assert (=> d!226504 m!929229))

(assert (=> d!226504 m!929229))

(declare-fun m!929239 () Bool)

(assert (=> d!226504 m!929239))

(declare-fun m!929241 () Bool)

(assert (=> d!226504 m!929241))

(assert (=> d!226504 m!929215))

(assert (=> b!662863 m!929229))

(assert (=> b!662863 m!929229))

(assert (=> b!662863 m!929231))

(assert (=> b!662843 d!226504))

(declare-fun bs!95010 () Bool)

(declare-fun d!226506 () Bool)

(assert (= bs!95010 (and d!226506 d!226504)))

(declare-fun lambda!20620 () Int)

(assert (=> bs!95010 (= lambda!20620 lambda!20617)))

(declare-fun b!662885 () Bool)

(declare-fun e!410382 () Bool)

(assert (=> b!662885 (= e!410382 true)))

(declare-fun b!662884 () Bool)

(declare-fun e!410381 () Bool)

(assert (=> b!662884 (= e!410381 e!410382)))

(declare-fun b!662883 () Bool)

(declare-fun e!410380 () Bool)

(assert (=> b!662883 (= e!410380 e!410381)))

(assert (=> d!226506 e!410380))

(assert (= b!662884 b!662885))

(assert (= b!662883 b!662884))

(assert (= (and d!226506 ((_ is Cons!7266) lt!282330)) b!662883))

(assert (=> b!662885 (< (dynLambda!3827 order!5269 (toValue!2414 (transformation!1471 (h!12667 lt!282330)))) (dynLambda!3828 order!5271 lambda!20620))))

(assert (=> b!662885 (< (dynLambda!3829 order!5273 (toChars!2273 (transformation!1471 (h!12667 lt!282330)))) (dynLambda!3828 order!5271 lambda!20620))))

(assert (=> d!226506 true))

(declare-fun lt!282345 () tuple3!660)

(assert (=> d!226506 (= (_1!4188 lt!282345) (forall!1923 lt!282333 lambda!20620))))

(declare-fun e!410379 () tuple3!660)

(assert (=> d!226506 (= lt!282345 e!410379)))

(declare-fun c!119213 () Bool)

(declare-fun isEmpty!4815 (BalanceConc!5180) Bool)

(assert (=> d!226506 (= c!119213 (isEmpty!4815 lt!282333))))

(assert (=> d!226506 (not (isEmpty!4814 lt!282330))))

(assert (=> d!226506 (= (rulesProduceEachTokenIndividuallyMem!16 Lexer!1285 lt!282330 lt!282333 cacheUp!335 cacheDown!348) lt!282345)))

(declare-fun b!662881 () Bool)

(assert (=> b!662881 (= e!410379 (tuple3!661 true cacheUp!335 cacheDown!348))))

(declare-fun b!662882 () Bool)

(declare-fun lt!282344 () tuple3!660)

(declare-fun lt!282343 () tuple3!660)

(assert (=> b!662882 (= e!410379 (tuple3!661 (and (_1!4188 lt!282344) (_1!4188 lt!282343)) (_2!4188 lt!282343) (_3!381 lt!282343)))))

(declare-fun rulesProduceIndividualTokenMem!8 (LexerInterface!1287 List!7280 Token!2664 CacheUp!336 CacheDown!338) tuple3!660)

(declare-fun head!1383 (BalanceConc!5180) Token!2664)

(assert (=> b!662882 (= lt!282344 (rulesProduceIndividualTokenMem!8 Lexer!1285 lt!282330 (head!1383 lt!282333) cacheUp!335 cacheDown!348))))

(declare-fun tail!941 (BalanceConc!5180) BalanceConc!5180)

(assert (=> b!662882 (= lt!282343 (rulesProduceEachTokenIndividuallyMem!16 Lexer!1285 lt!282330 (tail!941 lt!282333) (_2!4188 lt!282344) (_3!381 lt!282344)))))

(assert (= (and d!226506 c!119213) b!662881))

(assert (= (and d!226506 (not c!119213)) b!662882))

(declare-fun m!929243 () Bool)

(assert (=> d!226506 m!929243))

(declare-fun m!929245 () Bool)

(assert (=> d!226506 m!929245))

(assert (=> d!226506 m!929215))

(declare-fun m!929247 () Bool)

(assert (=> b!662882 m!929247))

(assert (=> b!662882 m!929247))

(declare-fun m!929249 () Bool)

(assert (=> b!662882 m!929249))

(declare-fun m!929251 () Bool)

(assert (=> b!662882 m!929251))

(assert (=> b!662882 m!929251))

(declare-fun m!929253 () Bool)

(assert (=> b!662882 m!929253))

(assert (=> b!662852 d!226506))

(declare-fun d!226508 () Bool)

(assert (=> d!226508 true))

(assert (=> d!226508 true))

(assert (=> d!226508 true))

(assert (=> d!226508 true))

(declare-fun b!662908 () Bool)

(declare-fun e!410397 () Bool)

(declare-fun x!146772 () BalanceConc!5178)

(declare-fun tp!202440 () Bool)

(declare-fun inv!9335 (Conc!2583) Bool)

(assert (=> b!662908 (= e!410397 (and (inv!9335 (c!119209 x!146772)) tp!202440))))

(declare-fun inst!346 () Bool)

(declare-fun inv!9336 (BalanceConc!5178) Bool)

(declare-fun list!3065 (BalanceConc!5178) List!7279)

(declare-fun toCharacters!4 (KeywordValueInjection!64 TokenValue!1505) BalanceConc!5178)

(declare-fun toValue!11 (KeywordValueInjection!64 BalanceConc!5178) TokenValue!1505)

(assert (=> d!226508 (= inst!346 (=> (and (inv!9336 x!146772) e!410397) (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 x!146772))))))

(assert (= d!226508 b!662908))

(declare-fun m!929255 () Bool)

(assert (=> b!662908 m!929255))

(declare-fun m!929257 () Bool)

(assert (=> d!226508 m!929257))

(declare-fun m!929259 () Bool)

(assert (=> d!226508 m!929259))

(declare-fun m!929261 () Bool)

(assert (=> d!226508 m!929261))

(declare-fun m!929263 () Bool)

(assert (=> d!226508 m!929263))

(declare-fun m!929265 () Bool)

(assert (=> d!226508 m!929265))

(assert (=> d!226508 m!929257))

(assert (=> d!226508 m!929263))

(declare-fun res!293994 () Bool)

(declare-fun e!410398 () Bool)

(assert (=> d!226508 (=> res!293994 e!410398)))

(declare-fun x!146773 () BalanceConc!5178)

(declare-fun x!146774 () BalanceConc!5178)

(assert (=> d!226508 (= res!293994 (not (= (list!3065 x!146773) (list!3065 x!146774))))))

(declare-fun inst!347 () Bool)

(declare-fun e!410399 () Bool)

(declare-fun e!410400 () Bool)

(assert (=> d!226508 (= inst!347 (=> (and (inv!9336 x!146773) e!410399 (inv!9336 x!146774) e!410400) e!410398))))

(declare-fun b!662909 () Bool)

(assert (=> b!662909 (= e!410398 (= (toValue!11 KeywordValueInjection!65 x!146773) (toValue!11 KeywordValueInjection!65 x!146774)))))

(declare-fun b!662910 () Bool)

(declare-fun tp!202441 () Bool)

(assert (=> b!662910 (= e!410399 (and (inv!9335 (c!119209 x!146773)) tp!202441))))

(declare-fun b!662911 () Bool)

(declare-fun tp!202442 () Bool)

(assert (=> b!662911 (= e!410400 (and (inv!9335 (c!119209 x!146774)) tp!202442))))

(assert (= (and d!226508 (not res!293994)) b!662909))

(assert (= d!226508 b!662910))

(assert (= d!226508 b!662911))

(declare-fun m!929267 () Bool)

(assert (=> d!226508 m!929267))

(declare-fun m!929269 () Bool)

(assert (=> d!226508 m!929269))

(declare-fun m!929271 () Bool)

(assert (=> d!226508 m!929271))

(declare-fun m!929273 () Bool)

(assert (=> d!226508 m!929273))

(declare-fun m!929275 () Bool)

(assert (=> b!662909 m!929275))

(declare-fun m!929277 () Bool)

(assert (=> b!662909 m!929277))

(declare-fun m!929279 () Bool)

(assert (=> b!662910 m!929279))

(declare-fun m!929281 () Bool)

(assert (=> b!662911 m!929281))

(declare-fun bs!95011 () Bool)

(declare-fun neg-inst!347 () Bool)

(declare-fun s!44865 () Bool)

(assert (= bs!95011 (and neg-inst!347 s!44865)))

(assert (=> bs!95011 (=> true (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 x!146772)))))

(assert (=> m!929261 m!929257))

(assert (=> m!929261 m!929263))

(assert (=> m!929261 m!929265))

(assert (=> m!929261 s!44865))

(assert (=> m!929257 s!44865))

(declare-fun bs!95012 () Bool)

(assert (= bs!95012 (and neg-inst!347 d!226508)))

(assert (=> bs!95012 (= true inst!346)))

(declare-fun bs!95013 () Bool)

(declare-fun neg-inst!346 () Bool)

(declare-fun s!44867 () Bool)

(assert (= bs!95013 (and neg-inst!346 s!44867)))

(declare-fun res!293995 () Bool)

(declare-fun e!410401 () Bool)

(assert (=> bs!95013 (=> res!293995 e!410401)))

(assert (=> bs!95013 (= res!293995 (not (= (list!3065 x!146773) (list!3065 x!146773))))))

(assert (=> bs!95013 (=> true e!410401)))

(declare-fun b!662912 () Bool)

(assert (=> b!662912 (= e!410401 (= (toValue!11 KeywordValueInjection!65 x!146773) (toValue!11 KeywordValueInjection!65 x!146773)))))

(assert (= (and bs!95013 (not res!293995)) b!662912))

(assert (=> m!929267 s!44867))

(assert (=> m!929267 s!44867))

(declare-fun bs!95014 () Bool)

(declare-fun s!44869 () Bool)

(assert (= bs!95014 (and neg-inst!346 s!44869)))

(declare-fun res!293996 () Bool)

(declare-fun e!410402 () Bool)

(assert (=> bs!95014 (=> res!293996 e!410402)))

(assert (=> bs!95014 (= res!293996 (not (= (list!3065 x!146773) (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))))))))

(assert (=> bs!95014 (=> true e!410402)))

(declare-fun b!662913 () Bool)

(assert (=> b!662913 (= e!410402 (= (toValue!11 KeywordValueInjection!65 x!146773) (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772)))))))

(assert (= (and bs!95014 (not res!293996)) b!662913))

(declare-fun bs!95015 () Bool)

(assert (= bs!95015 (and m!929265 m!929267)))

(assert (=> bs!95015 m!929267))

(assert (=> bs!95015 m!929265))

(assert (=> bs!95015 s!44869))

(declare-fun bs!95016 () Bool)

(declare-fun s!44871 () Bool)

(assert (= bs!95016 (and neg-inst!346 s!44871)))

(declare-fun res!293997 () Bool)

(declare-fun e!410403 () Bool)

(assert (=> bs!95016 (=> res!293997 e!410403)))

(assert (=> bs!95016 (= res!293997 (not (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))))))))

(assert (=> bs!95016 (=> true e!410403)))

(declare-fun b!662914 () Bool)

(assert (=> b!662914 (= e!410403 (= (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772)))))))

(assert (= (and bs!95016 (not res!293997)) b!662914))

(assert (=> m!929265 s!44871))

(declare-fun bs!95017 () Bool)

(declare-fun s!44873 () Bool)

(assert (= bs!95017 (and neg-inst!346 s!44873)))

(declare-fun res!293998 () Bool)

(declare-fun e!410404 () Bool)

(assert (=> bs!95017 (=> res!293998 e!410404)))

(assert (=> bs!95017 (= res!293998 (not (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 x!146773))))))

(assert (=> bs!95017 (=> true e!410404)))

(declare-fun b!662915 () Bool)

(assert (=> b!662915 (= e!410404 (= (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (toValue!11 KeywordValueInjection!65 x!146773)))))

(assert (= (and bs!95017 (not res!293998)) b!662915))

(assert (=> bs!95015 m!929265))

(assert (=> bs!95015 m!929267))

(assert (=> bs!95015 s!44873))

(assert (=> m!929265 s!44871))

(declare-fun bs!95018 () Bool)

(declare-fun s!44875 () Bool)

(assert (= bs!95018 (and neg-inst!346 s!44875)))

(declare-fun res!293999 () Bool)

(declare-fun e!410405 () Bool)

(assert (=> bs!95018 (=> res!293999 e!410405)))

(assert (=> bs!95018 (= res!293999 (not (= (list!3065 x!146773) (list!3065 x!146772))))))

(assert (=> bs!95018 (=> true e!410405)))

(declare-fun b!662916 () Bool)

(assert (=> b!662916 (= e!410405 (= (toValue!11 KeywordValueInjection!65 x!146773) (toValue!11 KeywordValueInjection!65 x!146772)))))

(assert (= (and bs!95018 (not res!293999)) b!662916))

(declare-fun bs!95019 () Bool)

(assert (= bs!95019 (and m!929261 m!929267)))

(assert (=> bs!95019 m!929267))

(assert (=> bs!95019 m!929261))

(assert (=> bs!95019 s!44875))

(declare-fun bs!95020 () Bool)

(declare-fun s!44877 () Bool)

(assert (= bs!95020 (and neg-inst!346 s!44877)))

(declare-fun res!294000 () Bool)

(declare-fun e!410406 () Bool)

(assert (=> bs!95020 (=> res!294000 e!410406)))

(assert (=> bs!95020 (= res!294000 (not (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 x!146772))))))

(assert (=> bs!95020 (=> true e!410406)))

(declare-fun b!662917 () Bool)

(assert (=> b!662917 (= e!410406 (= (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (toValue!11 KeywordValueInjection!65 x!146772)))))

(assert (= (and bs!95020 (not res!294000)) b!662917))

(declare-fun bs!95021 () Bool)

(assert (= bs!95021 (and m!929261 m!929265)))

(assert (=> bs!95021 m!929265))

(assert (=> bs!95021 m!929261))

(assert (=> bs!95021 s!44877))

(declare-fun bs!95022 () Bool)

(declare-fun s!44879 () Bool)

(assert (= bs!95022 (and neg-inst!346 s!44879)))

(declare-fun res!294001 () Bool)

(declare-fun e!410407 () Bool)

(assert (=> bs!95022 (=> res!294001 e!410407)))

(assert (=> bs!95022 (= res!294001 (not (= (list!3065 x!146772) (list!3065 x!146772))))))

(assert (=> bs!95022 (=> true e!410407)))

(declare-fun b!662918 () Bool)

(assert (=> b!662918 (= e!410407 (= (toValue!11 KeywordValueInjection!65 x!146772) (toValue!11 KeywordValueInjection!65 x!146772)))))

(assert (= (and bs!95022 (not res!294001)) b!662918))

(assert (=> m!929261 s!44879))

(declare-fun bs!95023 () Bool)

(declare-fun s!44881 () Bool)

(assert (= bs!95023 (and neg-inst!346 s!44881)))

(declare-fun res!294002 () Bool)

(declare-fun e!410408 () Bool)

(assert (=> bs!95023 (=> res!294002 e!410408)))

(assert (=> bs!95023 (= res!294002 (not (= (list!3065 x!146772) (list!3065 x!146773))))))

(assert (=> bs!95023 (=> true e!410408)))

(declare-fun b!662919 () Bool)

(assert (=> b!662919 (= e!410408 (= (toValue!11 KeywordValueInjection!65 x!146772) (toValue!11 KeywordValueInjection!65 x!146773)))))

(assert (= (and bs!95023 (not res!294002)) b!662919))

(assert (=> bs!95019 m!929261))

(assert (=> bs!95019 m!929267))

(assert (=> bs!95019 s!44881))

(declare-fun bs!95024 () Bool)

(declare-fun s!44883 () Bool)

(assert (= bs!95024 (and neg-inst!346 s!44883)))

(declare-fun res!294003 () Bool)

(declare-fun e!410409 () Bool)

(assert (=> bs!95024 (=> res!294003 e!410409)))

(assert (=> bs!95024 (= res!294003 (not (= (list!3065 x!146772) (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))))))))

(assert (=> bs!95024 (=> true e!410409)))

(declare-fun b!662920 () Bool)

(assert (=> b!662920 (= e!410409 (= (toValue!11 KeywordValueInjection!65 x!146772) (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772)))))))

(assert (= (and bs!95024 (not res!294003)) b!662920))

(assert (=> bs!95021 m!929261))

(assert (=> bs!95021 m!929265))

(assert (=> bs!95021 s!44883))

(assert (=> m!929261 s!44879))

(declare-fun bs!95025 () Bool)

(assert (= bs!95025 (and m!929257 m!929267)))

(assert (=> bs!95025 s!44875))

(declare-fun bs!95026 () Bool)

(assert (= bs!95026 (and m!929257 m!929261)))

(assert (=> bs!95026 s!44879))

(declare-fun bs!95027 () Bool)

(assert (= bs!95027 (and m!929257 m!929265)))

(assert (=> bs!95027 s!44877))

(assert (=> m!929257 s!44879))

(assert (=> bs!95025 s!44881))

(assert (=> bs!95026 s!44879))

(assert (=> bs!95027 s!44883))

(assert (=> m!929257 s!44879))

(declare-fun bs!95028 () Bool)

(assert (= bs!95028 (and m!929275 m!929267)))

(assert (=> bs!95028 s!44867))

(declare-fun bs!95029 () Bool)

(assert (= bs!95029 (and m!929275 m!929261 m!929257)))

(assert (=> bs!95029 s!44881))

(declare-fun bs!95030 () Bool)

(assert (= bs!95030 (and m!929275 m!929265)))

(assert (=> bs!95030 s!44873))

(assert (=> m!929275 s!44867))

(assert (=> bs!95028 s!44867))

(assert (=> bs!95029 s!44875))

(assert (=> bs!95030 s!44869))

(assert (=> m!929275 s!44867))

(declare-fun bs!95031 () Bool)

(declare-fun s!44885 () Bool)

(assert (= bs!95031 (and neg-inst!346 s!44885)))

(declare-fun res!294004 () Bool)

(declare-fun e!410410 () Bool)

(assert (=> bs!95031 (=> res!294004 e!410410)))

(assert (=> bs!95031 (= res!294004 (not (= (list!3065 x!146773) (list!3065 x!146774))))))

(assert (=> bs!95031 (=> true e!410410)))

(declare-fun b!662921 () Bool)

(assert (=> b!662921 (= e!410410 (= (toValue!11 KeywordValueInjection!65 x!146773) (toValue!11 KeywordValueInjection!65 x!146774)))))

(assert (= (and bs!95031 (not res!294004)) b!662921))

(declare-fun bs!95032 () Bool)

(assert (= bs!95032 (and m!929269 m!929267 m!929275)))

(assert (=> bs!95032 m!929267))

(assert (=> bs!95032 m!929269))

(assert (=> bs!95032 s!44885))

(declare-fun bs!95033 () Bool)

(declare-fun s!44887 () Bool)

(assert (= bs!95033 (and neg-inst!346 s!44887)))

(declare-fun res!294005 () Bool)

(declare-fun e!410411 () Bool)

(assert (=> bs!95033 (=> res!294005 e!410411)))

(assert (=> bs!95033 (= res!294005 (not (= (list!3065 x!146772) (list!3065 x!146774))))))

(assert (=> bs!95033 (=> true e!410411)))

(declare-fun b!662922 () Bool)

(assert (=> b!662922 (= e!410411 (= (toValue!11 KeywordValueInjection!65 x!146772) (toValue!11 KeywordValueInjection!65 x!146774)))))

(assert (= (and bs!95033 (not res!294005)) b!662922))

(declare-fun bs!95034 () Bool)

(assert (= bs!95034 (and m!929269 m!929261 m!929257)))

(assert (=> bs!95034 m!929261))

(assert (=> bs!95034 m!929269))

(assert (=> bs!95034 s!44887))

(declare-fun bs!95035 () Bool)

(declare-fun s!44889 () Bool)

(assert (= bs!95035 (and neg-inst!346 s!44889)))

(declare-fun res!294006 () Bool)

(declare-fun e!410412 () Bool)

(assert (=> bs!95035 (=> res!294006 e!410412)))

(assert (=> bs!95035 (= res!294006 (not (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 x!146774))))))

(assert (=> bs!95035 (=> true e!410412)))

(declare-fun b!662923 () Bool)

(assert (=> b!662923 (= e!410412 (= (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (toValue!11 KeywordValueInjection!65 x!146774)))))

(assert (= (and bs!95035 (not res!294006)) b!662923))

(declare-fun bs!95036 () Bool)

(assert (= bs!95036 (and m!929269 m!929265)))

(assert (=> bs!95036 m!929265))

(assert (=> bs!95036 m!929269))

(assert (=> bs!95036 s!44889))

(declare-fun bs!95037 () Bool)

(declare-fun s!44891 () Bool)

(assert (= bs!95037 (and neg-inst!346 s!44891)))

(declare-fun res!294007 () Bool)

(declare-fun e!410413 () Bool)

(assert (=> bs!95037 (=> res!294007 e!410413)))

(assert (=> bs!95037 (= res!294007 (not (= (list!3065 x!146774) (list!3065 x!146774))))))

(assert (=> bs!95037 (=> true e!410413)))

(declare-fun b!662924 () Bool)

(assert (=> b!662924 (= e!410413 (= (toValue!11 KeywordValueInjection!65 x!146774) (toValue!11 KeywordValueInjection!65 x!146774)))))

(assert (= (and bs!95037 (not res!294007)) b!662924))

(assert (=> m!929269 s!44891))

(declare-fun bs!95038 () Bool)

(declare-fun s!44893 () Bool)

(assert (= bs!95038 (and neg-inst!346 s!44893)))

(declare-fun res!294008 () Bool)

(declare-fun e!410414 () Bool)

(assert (=> bs!95038 (=> res!294008 e!410414)))

(assert (=> bs!95038 (= res!294008 (not (= (list!3065 x!146774) (list!3065 x!146773))))))

(assert (=> bs!95038 (=> true e!410414)))

(declare-fun b!662925 () Bool)

(assert (=> b!662925 (= e!410414 (= (toValue!11 KeywordValueInjection!65 x!146774) (toValue!11 KeywordValueInjection!65 x!146773)))))

(assert (= (and bs!95038 (not res!294008)) b!662925))

(assert (=> bs!95032 m!929269))

(assert (=> bs!95032 m!929267))

(assert (=> bs!95032 s!44893))

(declare-fun bs!95039 () Bool)

(declare-fun s!44895 () Bool)

(assert (= bs!95039 (and neg-inst!346 s!44895)))

(declare-fun res!294009 () Bool)

(declare-fun e!410415 () Bool)

(assert (=> bs!95039 (=> res!294009 e!410415)))

(assert (=> bs!95039 (= res!294009 (not (= (list!3065 x!146774) (list!3065 x!146772))))))

(assert (=> bs!95039 (=> true e!410415)))

(declare-fun b!662926 () Bool)

(assert (=> b!662926 (= e!410415 (= (toValue!11 KeywordValueInjection!65 x!146774) (toValue!11 KeywordValueInjection!65 x!146772)))))

(assert (= (and bs!95039 (not res!294009)) b!662926))

(assert (=> bs!95034 m!929269))

(assert (=> bs!95034 m!929261))

(assert (=> bs!95034 s!44895))

(declare-fun bs!95040 () Bool)

(declare-fun s!44897 () Bool)

(assert (= bs!95040 (and neg-inst!346 s!44897)))

(declare-fun res!294010 () Bool)

(declare-fun e!410416 () Bool)

(assert (=> bs!95040 (=> res!294010 e!410416)))

(assert (=> bs!95040 (= res!294010 (not (= (list!3065 x!146774) (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))))))))

(assert (=> bs!95040 (=> true e!410416)))

(declare-fun b!662927 () Bool)

(assert (=> b!662927 (= e!410416 (= (toValue!11 KeywordValueInjection!65 x!146774) (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772)))))))

(assert (= (and bs!95040 (not res!294010)) b!662927))

(assert (=> bs!95036 m!929269))

(assert (=> bs!95036 m!929265))

(assert (=> bs!95036 s!44897))

(assert (=> m!929269 s!44891))

(declare-fun bs!95041 () Bool)

(assert (= bs!95041 (and m!929277 m!929261 m!929257)))

(assert (=> bs!95041 s!44887))

(assert (=> m!929277 s!44891))

(declare-fun bs!95042 () Bool)

(assert (= bs!95042 (and m!929277 m!929265)))

(assert (=> bs!95042 s!44889))

(declare-fun bs!95043 () Bool)

(assert (= bs!95043 (and m!929277 m!929269)))

(assert (=> bs!95043 s!44891))

(declare-fun bs!95044 () Bool)

(assert (= bs!95044 (and m!929277 m!929267 m!929275)))

(assert (=> bs!95044 s!44885))

(assert (=> bs!95041 s!44895))

(assert (=> m!929277 s!44891))

(assert (=> bs!95043 s!44891))

(assert (=> bs!95042 s!44897))

(assert (=> bs!95044 s!44893))

(declare-fun bs!95045 () Bool)

(assert (= bs!95045 (and neg-inst!346 d!226508)))

(assert (=> bs!95045 (= true inst!347)))

(declare-datatypes ((Unit!12526 0))(
  ( (Unit!12527) )
))
(declare-fun lt!282354 () Unit!12526)

(declare-fun Unit!12528 () Unit!12526)

(assert (=> d!226508 (= lt!282354 Unit!12528)))

(declare-fun lambda!20642 () Int)

(declare-fun lambda!20643 () Int)

(declare-fun lambda!20644 () Int)

(declare-fun equivClasses!531 (Int Int) Bool)

(declare-fun Forall2!259 (Int) Bool)

(assert (=> d!226508 (= (equivClasses!531 lambda!20642 lambda!20643) (Forall2!259 lambda!20644))))

(declare-fun lt!282357 () Unit!12526)

(declare-fun Unit!12529 () Unit!12526)

(assert (=> d!226508 (= lt!282357 Unit!12529)))

(assert (=> d!226508 (= (Forall2!259 lambda!20644) inst!347)))

(declare-fun lt!282356 () Unit!12526)

(declare-fun Unit!12530 () Unit!12526)

(assert (=> d!226508 (= lt!282356 Unit!12530)))

(declare-fun lambda!20641 () Int)

(declare-fun semiInverseModEq!552 (Int Int) Bool)

(declare-fun Forall!337 (Int) Bool)

(assert (=> d!226508 (= (semiInverseModEq!552 lambda!20642 lambda!20643) (Forall!337 lambda!20641))))

(declare-fun lt!282355 () Unit!12526)

(declare-fun Unit!12531 () Unit!12526)

(assert (=> d!226508 (= lt!282355 Unit!12531)))

(assert (=> d!226508 (= (Forall!337 lambda!20641) inst!346)))

(assert (=> d!226508 (= (injection!9 KeywordValueInjection!65) (TokenValueInjection!2763 lambda!20643 lambda!20642))))

(assert (= neg-inst!347 inst!346))

(assert (= neg-inst!346 inst!347))

(declare-fun m!929283 () Bool)

(assert (=> d!226508 m!929283))

(declare-fun m!929285 () Bool)

(assert (=> d!226508 m!929285))

(declare-fun m!929287 () Bool)

(assert (=> d!226508 m!929287))

(declare-fun m!929289 () Bool)

(assert (=> d!226508 m!929289))

(assert (=> d!226508 m!929289))

(assert (=> d!226508 m!929283))

(assert (=> b!662852 d!226508))

(declare-fun d!226510 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!248) Regex!1807)

(assert (=> d!226510 (= (lBracketRule!0 JsonLexer!249) (Rule!2743 (lBracketRe!0 JsonLexer!249) (String!9266 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!65)))))

(declare-fun bs!95046 () Bool)

(assert (= bs!95046 d!226510))

(declare-fun m!929291 () Bool)

(assert (=> bs!95046 m!929291))

(assert (=> bs!95046 m!929199))

(assert (=> b!662852 d!226510))

(declare-fun d!226512 () Bool)

(declare-fun dynLambda!3830 (Int BalanceConc!5178) TokenValue!1505)

(assert (=> d!226512 (= (apply!1742 (injection!9 KeywordValueInjection!65) (singletonSeq!459 #x005B)) (dynLambda!3830 (toValue!2414 (injection!9 KeywordValueInjection!65)) (singletonSeq!459 #x005B)))))

(declare-fun b_lambda!25785 () Bool)

(assert (=> (not b_lambda!25785) (not d!226512)))

(declare-fun bs!95047 () Bool)

(assert (= bs!95047 d!226512))

(assert (=> bs!95047 m!929205))

(declare-fun m!929293 () Bool)

(assert (=> bs!95047 m!929293))

(assert (=> b!662852 d!226512))

(declare-fun d!226514 () Bool)

(declare-fun e!410419 () Bool)

(assert (=> d!226514 e!410419))

(declare-fun res!294013 () Bool)

(assert (=> d!226514 (=> (not res!294013) (not e!410419))))

(declare-fun lt!282360 () BalanceConc!5178)

(assert (=> d!226514 (= res!294013 (= (list!3065 lt!282360) (Cons!7265 #x005B Nil!7265)))))

(declare-fun singleton!219 ((_ BitVec 16)) BalanceConc!5178)

(assert (=> d!226514 (= lt!282360 (singleton!219 #x005B))))

(assert (=> d!226514 (= (singletonSeq!459 #x005B) lt!282360)))

(declare-fun b!662930 () Bool)

(declare-fun isBalanced!675 (Conc!2583) Bool)

(assert (=> b!662930 (= e!410419 (isBalanced!675 (c!119209 lt!282360)))))

(assert (= (and d!226514 res!294013) b!662930))

(declare-fun bs!95048 () Bool)

(declare-fun s!44899 () Bool)

(assert (= bs!95048 (and neg-inst!346 s!44899)))

(declare-fun res!294014 () Bool)

(declare-fun e!410420 () Bool)

(assert (=> bs!95048 (=> res!294014 e!410420)))

(assert (=> bs!95048 (= res!294014 (not (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 lt!282360))))))

(assert (=> bs!95048 (=> true e!410420)))

(declare-fun b!662931 () Bool)

(assert (=> b!662931 (= e!410420 (= (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (toValue!11 KeywordValueInjection!65 lt!282360)))))

(assert (= (and bs!95048 (not res!294014)) b!662931))

(declare-fun bs!95049 () Bool)

(declare-fun m!929295 () Bool)

(assert (= bs!95049 (and m!929295 m!929265)))

(assert (=> bs!95049 m!929265))

(assert (=> bs!95049 m!929295))

(assert (=> bs!95049 s!44899))

(declare-fun bs!95050 () Bool)

(declare-fun s!44901 () Bool)

(assert (= bs!95050 (and neg-inst!346 s!44901)))

(declare-fun res!294015 () Bool)

(declare-fun e!410421 () Bool)

(assert (=> bs!95050 (=> res!294015 e!410421)))

(assert (=> bs!95050 (= res!294015 (not (= (list!3065 lt!282360) (list!3065 lt!282360))))))

(assert (=> bs!95050 (=> true e!410421)))

(declare-fun b!662932 () Bool)

(assert (=> b!662932 (= e!410421 (= (toValue!11 KeywordValueInjection!65 lt!282360) (toValue!11 KeywordValueInjection!65 lt!282360)))))

(assert (= (and bs!95050 (not res!294015)) b!662932))

(assert (=> m!929295 s!44901))

(declare-fun bs!95051 () Bool)

(declare-fun s!44903 () Bool)

(assert (= bs!95051 (and neg-inst!346 s!44903)))

(declare-fun res!294016 () Bool)

(declare-fun e!410422 () Bool)

(assert (=> bs!95051 (=> res!294016 e!410422)))

(assert (=> bs!95051 (= res!294016 (not (= (list!3065 x!146772) (list!3065 lt!282360))))))

(assert (=> bs!95051 (=> true e!410422)))

(declare-fun b!662933 () Bool)

(assert (=> b!662933 (= e!410422 (= (toValue!11 KeywordValueInjection!65 x!146772) (toValue!11 KeywordValueInjection!65 lt!282360)))))

(assert (= (and bs!95051 (not res!294016)) b!662933))

(declare-fun bs!95052 () Bool)

(assert (= bs!95052 (and m!929295 m!929261 m!929257)))

(assert (=> bs!95052 m!929261))

(assert (=> bs!95052 m!929295))

(assert (=> bs!95052 s!44903))

(declare-fun bs!95053 () Bool)

(declare-fun s!44905 () Bool)

(assert (= bs!95053 (and neg-inst!346 s!44905)))

(declare-fun res!294017 () Bool)

(declare-fun e!410423 () Bool)

(assert (=> bs!95053 (=> res!294017 e!410423)))

(assert (=> bs!95053 (= res!294017 (not (= (list!3065 x!146774) (list!3065 lt!282360))))))

(assert (=> bs!95053 (=> true e!410423)))

(declare-fun b!662934 () Bool)

(assert (=> b!662934 (= e!410423 (= (toValue!11 KeywordValueInjection!65 x!146774) (toValue!11 KeywordValueInjection!65 lt!282360)))))

(assert (= (and bs!95053 (not res!294017)) b!662934))

(declare-fun bs!95054 () Bool)

(assert (= bs!95054 (and m!929295 m!929269 m!929277)))

(assert (=> bs!95054 m!929269))

(assert (=> bs!95054 m!929295))

(assert (=> bs!95054 s!44905))

(declare-fun bs!95055 () Bool)

(declare-fun s!44907 () Bool)

(assert (= bs!95055 (and neg-inst!346 s!44907)))

(declare-fun res!294018 () Bool)

(declare-fun e!410424 () Bool)

(assert (=> bs!95055 (=> res!294018 e!410424)))

(assert (=> bs!95055 (= res!294018 (not (= (list!3065 x!146773) (list!3065 lt!282360))))))

(assert (=> bs!95055 (=> true e!410424)))

(declare-fun b!662935 () Bool)

(assert (=> b!662935 (= e!410424 (= (toValue!11 KeywordValueInjection!65 x!146773) (toValue!11 KeywordValueInjection!65 lt!282360)))))

(assert (= (and bs!95055 (not res!294018)) b!662935))

(declare-fun bs!95056 () Bool)

(assert (= bs!95056 (and m!929295 m!929267 m!929275)))

(assert (=> bs!95056 m!929267))

(assert (=> bs!95056 m!929295))

(assert (=> bs!95056 s!44907))

(declare-fun bs!95057 () Bool)

(declare-fun s!44909 () Bool)

(assert (= bs!95057 (and neg-inst!346 s!44909)))

(declare-fun res!294019 () Bool)

(declare-fun e!410425 () Bool)

(assert (=> bs!95057 (=> res!294019 e!410425)))

(assert (=> bs!95057 (= res!294019 (not (= (list!3065 lt!282360) (list!3065 x!146773))))))

(assert (=> bs!95057 (=> true e!410425)))

(declare-fun b!662936 () Bool)

(assert (=> b!662936 (= e!410425 (= (toValue!11 KeywordValueInjection!65 lt!282360) (toValue!11 KeywordValueInjection!65 x!146773)))))

(assert (= (and bs!95057 (not res!294019)) b!662936))

(assert (=> bs!95056 m!929295))

(assert (=> bs!95056 m!929267))

(assert (=> bs!95056 s!44909))

(declare-fun bs!95058 () Bool)

(declare-fun s!44911 () Bool)

(assert (= bs!95058 (and neg-inst!346 s!44911)))

(declare-fun res!294020 () Bool)

(declare-fun e!410426 () Bool)

(assert (=> bs!95058 (=> res!294020 e!410426)))

(assert (=> bs!95058 (= res!294020 (not (= (list!3065 lt!282360) (list!3065 x!146774))))))

(assert (=> bs!95058 (=> true e!410426)))

(declare-fun b!662937 () Bool)

(assert (=> b!662937 (= e!410426 (= (toValue!11 KeywordValueInjection!65 lt!282360) (toValue!11 KeywordValueInjection!65 x!146774)))))

(assert (= (and bs!95058 (not res!294020)) b!662937))

(assert (=> bs!95054 m!929295))

(assert (=> bs!95054 m!929269))

(assert (=> bs!95054 s!44911))

(assert (=> m!929295 s!44901))

(declare-fun bs!95059 () Bool)

(declare-fun s!44913 () Bool)

(assert (= bs!95059 (and neg-inst!346 s!44913)))

(declare-fun res!294021 () Bool)

(declare-fun e!410427 () Bool)

(assert (=> bs!95059 (=> res!294021 e!410427)))

(assert (=> bs!95059 (= res!294021 (not (= (list!3065 lt!282360) (list!3065 x!146772))))))

(assert (=> bs!95059 (=> true e!410427)))

(declare-fun b!662938 () Bool)

(assert (=> b!662938 (= e!410427 (= (toValue!11 KeywordValueInjection!65 lt!282360) (toValue!11 KeywordValueInjection!65 x!146772)))))

(assert (= (and bs!95059 (not res!294021)) b!662938))

(assert (=> bs!95052 m!929295))

(assert (=> bs!95052 m!929261))

(assert (=> bs!95052 s!44913))

(declare-fun bs!95060 () Bool)

(declare-fun s!44915 () Bool)

(assert (= bs!95060 (and neg-inst!346 s!44915)))

(declare-fun res!294022 () Bool)

(declare-fun e!410428 () Bool)

(assert (=> bs!95060 (=> res!294022 e!410428)))

(assert (=> bs!95060 (= res!294022 (not (= (list!3065 lt!282360) (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))))))))

(assert (=> bs!95060 (=> true e!410428)))

(declare-fun b!662939 () Bool)

(assert (=> b!662939 (= e!410428 (= (toValue!11 KeywordValueInjection!65 lt!282360) (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772)))))))

(assert (= (and bs!95060 (not res!294022)) b!662939))

(assert (=> bs!95049 m!929295))

(assert (=> bs!95049 m!929265))

(assert (=> bs!95049 s!44915))

(assert (=> d!226514 m!929295))

(declare-fun m!929297 () Bool)

(assert (=> d!226514 m!929297))

(declare-fun m!929299 () Bool)

(assert (=> b!662930 m!929299))

(assert (=> b!662852 d!226514))

(declare-fun d!226516 () Bool)

(declare-fun e!410431 () Bool)

(assert (=> d!226516 e!410431))

(declare-fun res!294025 () Bool)

(assert (=> d!226516 (=> (not res!294025) (not e!410431))))

(declare-fun lt!282363 () BalanceConc!5180)

(assert (=> d!226516 (= res!294025 (= (list!3064 lt!282363) (Cons!7267 (Token!2665 (apply!1742 (injection!9 KeywordValueInjection!65) (singletonSeq!459 #x005B)) (lBracketRule!0 JsonLexer!249) 1 (Cons!7265 #x005B Nil!7265)) Nil!7267)))))

(declare-fun singleton!220 (Token!2664) BalanceConc!5180)

(assert (=> d!226516 (= lt!282363 (singleton!220 (Token!2665 (apply!1742 (injection!9 KeywordValueInjection!65) (singletonSeq!459 #x005B)) (lBracketRule!0 JsonLexer!249) 1 (Cons!7265 #x005B Nil!7265))))))

(assert (=> d!226516 (= (singletonSeq!458 (Token!2665 (apply!1742 (injection!9 KeywordValueInjection!65) (singletonSeq!459 #x005B)) (lBracketRule!0 JsonLexer!249) 1 (Cons!7265 #x005B Nil!7265))) lt!282363)))

(declare-fun b!662942 () Bool)

(declare-fun isBalanced!676 (Conc!2584) Bool)

(assert (=> b!662942 (= e!410431 (isBalanced!676 (c!119210 lt!282363)))))

(assert (= (and d!226516 res!294025) b!662942))

(declare-fun m!929301 () Bool)

(assert (=> d!226516 m!929301))

(declare-fun m!929303 () Bool)

(assert (=> d!226516 m!929303))

(declare-fun m!929305 () Bool)

(assert (=> b!662942 m!929305))

(assert (=> b!662852 d!226516))

(declare-fun d!226518 () Bool)

(declare-fun res!294028 () Bool)

(declare-fun e!410434 () Bool)

(assert (=> d!226518 (=> (not res!294028) (not e!410434))))

(declare-fun rulesValid!517 (LexerInterface!1287 List!7280) Bool)

(assert (=> d!226518 (= res!294028 (rulesValid!517 Lexer!1285 lt!282330))))

(assert (=> d!226518 (= (rulesInvariant!1222 Lexer!1285 lt!282330) e!410434)))

(declare-fun b!662945 () Bool)

(declare-datatypes ((List!7285 0))(
  ( (Nil!7271) (Cons!7271 (h!12672 String!9265) (t!86600 List!7285)) )
))
(declare-fun noDuplicateTag!517 (LexerInterface!1287 List!7280 List!7285) Bool)

(assert (=> b!662945 (= e!410434 (noDuplicateTag!517 Lexer!1285 lt!282330 Nil!7271))))

(assert (= (and d!226518 res!294028) b!662945))

(declare-fun m!929307 () Bool)

(assert (=> d!226518 m!929307))

(declare-fun m!929309 () Bool)

(assert (=> b!662945 m!929309))

(assert (=> b!662854 d!226518))

(declare-fun d!226520 () Bool)

(assert (=> d!226520 (= (array_inv!883 (_keys!999 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) (bvsge (size!5729 (_keys!999 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!662858 d!226520))

(declare-fun d!226522 () Bool)

(assert (=> d!226522 (= (array_inv!885 (_values!984 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) (bvsge (size!5730 (_values!984 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!662858 d!226522))

(declare-fun d!226524 () Bool)

(assert (=> d!226524 (= (isEmpty!4814 lt!282330) ((_ is Nil!7266) lt!282330))))

(assert (=> start!64906 d!226524))

(declare-fun d!226526 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!248) Rule!2742)

(declare-fun integerLiteralRule!0 (JsonLexer!248) Rule!2742)

(declare-fun floatLiteralRule!0 (JsonLexer!248) Rule!2742)

(declare-fun trueRule!0 (JsonLexer!248) Rule!2742)

(declare-fun falseRule!0 (JsonLexer!248) Rule!2742)

(declare-fun nullRule!0 (JsonLexer!248) Rule!2742)

(declare-fun jsonstringRule!0 (JsonLexer!248) Rule!2742)

(declare-fun lBraceRule!0 (JsonLexer!248) Rule!2742)

(declare-fun rBraceRule!0 (JsonLexer!248) Rule!2742)

(declare-fun rBracketRule!0 (JsonLexer!248) Rule!2742)

(declare-fun colonRule!0 (JsonLexer!248) Rule!2742)

(declare-fun commaRule!0 (JsonLexer!248) Rule!2742)

(declare-fun eofRule!0 (JsonLexer!248) Rule!2742)

(assert (=> d!226526 (= (rules!109 JsonLexer!249) (Cons!7266 (whitespaceRule!0 JsonLexer!249) (Cons!7266 (integerLiteralRule!0 JsonLexer!249) (Cons!7266 (floatLiteralRule!0 JsonLexer!249) (Cons!7266 (trueRule!0 JsonLexer!249) (Cons!7266 (falseRule!0 JsonLexer!249) (Cons!7266 (nullRule!0 JsonLexer!249) (Cons!7266 (jsonstringRule!0 JsonLexer!249) (Cons!7266 (lBraceRule!0 JsonLexer!249) (Cons!7266 (rBraceRule!0 JsonLexer!249) (Cons!7266 (lBracketRule!0 JsonLexer!249) (Cons!7266 (rBracketRule!0 JsonLexer!249) (Cons!7266 (colonRule!0 JsonLexer!249) (Cons!7266 (commaRule!0 JsonLexer!249) (Cons!7266 (eofRule!0 JsonLexer!249) Nil!7266)))))))))))))))))

(declare-fun bs!95061 () Bool)

(assert (= bs!95061 d!226526))

(assert (=> bs!95061 m!929201))

(declare-fun m!929311 () Bool)

(assert (=> bs!95061 m!929311))

(declare-fun m!929313 () Bool)

(assert (=> bs!95061 m!929313))

(declare-fun m!929315 () Bool)

(assert (=> bs!95061 m!929315))

(declare-fun m!929317 () Bool)

(assert (=> bs!95061 m!929317))

(declare-fun m!929319 () Bool)

(assert (=> bs!95061 m!929319))

(declare-fun m!929321 () Bool)

(assert (=> bs!95061 m!929321))

(declare-fun m!929323 () Bool)

(assert (=> bs!95061 m!929323))

(declare-fun m!929325 () Bool)

(assert (=> bs!95061 m!929325))

(declare-fun m!929327 () Bool)

(assert (=> bs!95061 m!929327))

(declare-fun m!929329 () Bool)

(assert (=> bs!95061 m!929329))

(declare-fun m!929331 () Bool)

(assert (=> bs!95061 m!929331))

(declare-fun m!929333 () Bool)

(assert (=> bs!95061 m!929333))

(declare-fun m!929335 () Bool)

(assert (=> bs!95061 m!929335))

(assert (=> start!64906 d!226526))

(declare-fun d!226528 () Bool)

(declare-fun res!294031 () Bool)

(declare-fun e!410437 () Bool)

(assert (=> d!226528 (=> (not res!294031) (not e!410437))))

(assert (=> d!226528 (= res!294031 ((_ is HashMap!676) (cache!1063 cacheUp!335)))))

(assert (=> d!226528 (= (inv!9333 cacheUp!335) e!410437)))

(declare-fun b!662948 () Bool)

(declare-fun validCacheMapUp!52 (MutableMap!676) Bool)

(assert (=> b!662948 (= e!410437 (validCacheMapUp!52 (cache!1063 cacheUp!335)))))

(assert (= (and d!226528 res!294031) b!662948))

(declare-fun m!929337 () Bool)

(assert (=> b!662948 m!929337))

(assert (=> start!64906 d!226528))

(declare-fun d!226530 () Bool)

(declare-fun res!294034 () Bool)

(declare-fun e!410440 () Bool)

(assert (=> d!226530 (=> (not res!294034) (not e!410440))))

(assert (=> d!226530 (= res!294034 ((_ is HashMap!677) (cache!1064 cacheDown!348)))))

(assert (=> d!226530 (= (inv!9334 cacheDown!348) e!410440)))

(declare-fun b!662951 () Bool)

(declare-fun validCacheMapDown!52 (MutableMap!677) Bool)

(assert (=> b!662951 (= e!410440 (validCacheMapDown!52 (cache!1064 cacheDown!348)))))

(assert (= (and d!226530 res!294034) b!662951))

(declare-fun m!929339 () Bool)

(assert (=> b!662951 m!929339))

(assert (=> start!64906 d!226530))

(declare-fun d!226532 () Bool)

(assert (=> d!226532 (= (array_inv!883 (_keys!998 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) (bvsge (size!5729 (_keys!998 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!662845 d!226532))

(declare-fun d!226534 () Bool)

(assert (=> d!226534 (= (array_inv!884 (_values!983 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) (bvsge (size!5728 (_values!983 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!662845 d!226534))

(declare-fun bs!95062 () Bool)

(declare-fun d!226536 () Bool)

(assert (= bs!95062 (and d!226536 d!226504)))

(declare-fun lambda!20647 () Int)

(assert (=> bs!95062 (= lambda!20647 lambda!20617)))

(declare-fun bs!95063 () Bool)

(assert (= bs!95063 (and d!226536 d!226506)))

(assert (=> bs!95063 (= lambda!20647 lambda!20620)))

(declare-fun b!662960 () Bool)

(declare-fun e!410449 () Bool)

(assert (=> b!662960 (= e!410449 true)))

(declare-fun b!662959 () Bool)

(declare-fun e!410448 () Bool)

(assert (=> b!662959 (= e!410448 e!410449)))

(declare-fun b!662958 () Bool)

(declare-fun e!410447 () Bool)

(assert (=> b!662958 (= e!410447 e!410448)))

(assert (=> d!226536 e!410447))

(assert (= b!662959 b!662960))

(assert (= b!662958 b!662959))

(assert (= (and d!226536 ((_ is Cons!7266) lt!282330)) b!662958))

(assert (=> b!662960 (< (dynLambda!3827 order!5269 (toValue!2414 (transformation!1471 (h!12667 lt!282330)))) (dynLambda!3828 order!5271 lambda!20647))))

(assert (=> b!662960 (< (dynLambda!3829 order!5273 (toChars!2273 (transformation!1471 (h!12667 lt!282330)))) (dynLambda!3828 order!5271 lambda!20647))))

(assert (=> d!226536 true))

(declare-fun lt!282366 () Bool)

(assert (=> d!226536 (= lt!282366 (forall!1922 (list!3064 lt!282333) lambda!20647))))

(declare-fun e!410445 () Bool)

(assert (=> d!226536 (= lt!282366 e!410445)))

(declare-fun res!294040 () Bool)

(assert (=> d!226536 (=> res!294040 e!410445)))

(assert (=> d!226536 (= res!294040 (not ((_ is Cons!7267) (list!3064 lt!282333))))))

(assert (=> d!226536 (not (isEmpty!4814 lt!282330))))

(assert (=> d!226536 (= (rulesProduceEachTokenIndividuallyList!351 Lexer!1285 lt!282330 (list!3064 lt!282333)) lt!282366)))

(declare-fun b!662956 () Bool)

(declare-fun e!410446 () Bool)

(assert (=> b!662956 (= e!410445 e!410446)))

(declare-fun res!294039 () Bool)

(assert (=> b!662956 (=> (not res!294039) (not e!410446))))

(declare-fun rulesProduceIndividualToken!530 (LexerInterface!1287 List!7280 Token!2664) Bool)

(assert (=> b!662956 (= res!294039 (rulesProduceIndividualToken!530 Lexer!1285 lt!282330 (h!12668 (list!3064 lt!282333))))))

(declare-fun b!662957 () Bool)

(assert (=> b!662957 (= e!410446 (rulesProduceEachTokenIndividuallyList!351 Lexer!1285 lt!282330 (t!86574 (list!3064 lt!282333))))))

(assert (= (and d!226536 (not res!294040)) b!662956))

(assert (= (and b!662956 res!294039) b!662957))

(assert (=> d!226536 m!929229))

(declare-fun m!929341 () Bool)

(assert (=> d!226536 m!929341))

(assert (=> d!226536 m!929215))

(declare-fun m!929343 () Bool)

(assert (=> b!662956 m!929343))

(declare-fun m!929345 () Bool)

(assert (=> b!662957 m!929345))

(assert (=> b!662856 d!226536))

(declare-fun d!226538 () Bool)

(declare-fun list!3066 (Conc!2584) List!7281)

(assert (=> d!226538 (= (list!3064 lt!282333) (list!3066 (c!119210 lt!282333)))))

(declare-fun bs!95064 () Bool)

(assert (= bs!95064 d!226538))

(declare-fun m!929347 () Bool)

(assert (=> bs!95064 m!929347))

(assert (=> b!662856 d!226538))

(declare-fun mapValue!2800 () List!7284)

(declare-fun e!410466 () Bool)

(declare-fun b!662967 () Bool)

(declare-fun setRes!3229 () Bool)

(declare-fun tp!202453 () Bool)

(declare-fun inv!9337 (Context!438) Bool)

(assert (=> b!662967 (= e!410466 (and (inv!9337 (_2!4186 (_1!4187 (h!12671 mapValue!2800)))) setRes!3229 tp!202453))))

(declare-fun condSetEmpty!3229 () Bool)

(assert (=> b!662967 (= condSetEmpty!3229 (= (_2!4187 (h!12671 mapValue!2800)) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3229 () Bool)

(assert (=> setIsEmpty!3229 setRes!3229))

(declare-fun mapIsEmpty!2800 () Bool)

(declare-fun mapRes!2800 () Bool)

(assert (=> mapIsEmpty!2800 mapRes!2800))

(declare-fun mapNonEmpty!2800 () Bool)

(declare-fun tp!202456 () Bool)

(assert (=> mapNonEmpty!2800 (= mapRes!2800 (and tp!202456 e!410466))))

(declare-fun mapKey!2800 () (_ BitVec 32))

(declare-fun mapRest!2800 () (Array (_ BitVec 32) List!7284))

(assert (=> mapNonEmpty!2800 (= mapRest!2797 (store mapRest!2800 mapKey!2800 mapValue!2800))))

(declare-fun mapDefault!2800 () List!7284)

(declare-fun tp!202457 () Bool)

(declare-fun setRes!3230 () Bool)

(declare-fun e!410462 () Bool)

(declare-fun b!662968 () Bool)

(assert (=> b!662968 (= e!410462 (and (inv!9337 (_2!4186 (_1!4187 (h!12671 mapDefault!2800)))) setRes!3230 tp!202457))))

(declare-fun condSetEmpty!3230 () Bool)

(assert (=> b!662968 (= condSetEmpty!3230 (= (_2!4187 (h!12671 mapDefault!2800)) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setNonEmpty!3229 () Bool)

(declare-fun tp!202454 () Bool)

(declare-fun setElem!3229 () Context!438)

(assert (=> setNonEmpty!3229 (= setRes!3229 (and tp!202454 (inv!9337 setElem!3229)))))

(declare-fun setRest!3229 () (InoxSet Context!438))

(assert (=> setNonEmpty!3229 (= (_2!4187 (h!12671 mapValue!2800)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3229 true) setRest!3229))))

(declare-fun setNonEmpty!3230 () Bool)

(declare-fun tp!202455 () Bool)

(declare-fun setElem!3230 () Context!438)

(assert (=> setNonEmpty!3230 (= setRes!3230 (and tp!202455 (inv!9337 setElem!3230)))))

(declare-fun setRest!3230 () (InoxSet Context!438))

(assert (=> setNonEmpty!3230 (= (_2!4187 (h!12671 mapDefault!2800)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3230 true) setRest!3230))))

(declare-fun condMapEmpty!2800 () Bool)

(assert (=> mapNonEmpty!2796 (= condMapEmpty!2800 (= mapRest!2797 ((as const (Array (_ BitVec 32) List!7284)) mapDefault!2800)))))

(assert (=> mapNonEmpty!2796 (= tp!202426 (and e!410462 mapRes!2800))))

(declare-fun setIsEmpty!3230 () Bool)

(assert (=> setIsEmpty!3230 setRes!3230))

(assert (= (and mapNonEmpty!2796 condMapEmpty!2800) mapIsEmpty!2800))

(assert (= (and mapNonEmpty!2796 (not condMapEmpty!2800)) mapNonEmpty!2800))

(assert (= (and b!662967 condSetEmpty!3229) setIsEmpty!3229))

(assert (= (and b!662967 (not condSetEmpty!3229)) setNonEmpty!3229))

(assert (= (and mapNonEmpty!2800 ((_ is Cons!7270) mapValue!2800)) b!662967))

(assert (= (and b!662968 condSetEmpty!3230) setIsEmpty!3230))

(assert (= (and b!662968 (not condSetEmpty!3230)) setNonEmpty!3230))

(assert (= (and mapNonEmpty!2796 ((_ is Cons!7270) mapDefault!2800)) b!662968))

(declare-fun m!929349 () Bool)

(assert (=> mapNonEmpty!2800 m!929349))

(declare-fun m!929351 () Bool)

(assert (=> setNonEmpty!3230 m!929351))

(declare-fun m!929353 () Bool)

(assert (=> b!662968 m!929353))

(declare-fun m!929355 () Bool)

(assert (=> b!662967 m!929355))

(declare-fun m!929357 () Bool)

(assert (=> setNonEmpty!3229 m!929357))

(declare-fun e!410476 () Bool)

(declare-fun b!662973 () Bool)

(declare-fun tp!202462 () Bool)

(declare-fun setRes!3233 () Bool)

(assert (=> b!662973 (= e!410476 (and (inv!9337 (_2!4186 (_1!4187 (h!12671 mapValue!2796)))) setRes!3233 tp!202462))))

(declare-fun condSetEmpty!3233 () Bool)

(assert (=> b!662973 (= condSetEmpty!3233 (= (_2!4187 (h!12671 mapValue!2796)) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3233 () Bool)

(assert (=> setIsEmpty!3233 setRes!3233))

(declare-fun setNonEmpty!3233 () Bool)

(declare-fun tp!202463 () Bool)

(declare-fun setElem!3233 () Context!438)

(assert (=> setNonEmpty!3233 (= setRes!3233 (and tp!202463 (inv!9337 setElem!3233)))))

(declare-fun setRest!3233 () (InoxSet Context!438))

(assert (=> setNonEmpty!3233 (= (_2!4187 (h!12671 mapValue!2796)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3233 true) setRest!3233))))

(assert (=> mapNonEmpty!2796 (= tp!202427 e!410476)))

(assert (= (and b!662973 condSetEmpty!3233) setIsEmpty!3233))

(assert (= (and b!662973 (not condSetEmpty!3233)) setNonEmpty!3233))

(assert (= (and mapNonEmpty!2796 ((_ is Cons!7270) mapValue!2796)) b!662973))

(declare-fun m!929359 () Bool)

(assert (=> b!662973 m!929359))

(declare-fun m!929361 () Bool)

(assert (=> setNonEmpty!3233 m!929361))

(declare-fun b!662974 () Bool)

(declare-fun tp!202464 () Bool)

(declare-fun setRes!3234 () Bool)

(declare-fun e!410479 () Bool)

(assert (=> b!662974 (= e!410479 (and (inv!9337 (_2!4186 (_1!4187 (h!12671 (zeroValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))))) setRes!3234 tp!202464))))

(declare-fun condSetEmpty!3234 () Bool)

(assert (=> b!662974 (= condSetEmpty!3234 (= (_2!4187 (h!12671 (zeroValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3234 () Bool)

(assert (=> setIsEmpty!3234 setRes!3234))

(declare-fun setNonEmpty!3234 () Bool)

(declare-fun tp!202465 () Bool)

(declare-fun setElem!3234 () Context!438)

(assert (=> setNonEmpty!3234 (= setRes!3234 (and tp!202465 (inv!9337 setElem!3234)))))

(declare-fun setRest!3234 () (InoxSet Context!438))

(assert (=> setNonEmpty!3234 (= (_2!4187 (h!12671 (zeroValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3234 true) setRest!3234))))

(assert (=> b!662858 (= tp!202423 e!410479)))

(assert (= (and b!662974 condSetEmpty!3234) setIsEmpty!3234))

(assert (= (and b!662974 (not condSetEmpty!3234)) setNonEmpty!3234))

(assert (= (and b!662858 ((_ is Cons!7270) (zeroValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))) b!662974))

(declare-fun m!929363 () Bool)

(assert (=> b!662974 m!929363))

(declare-fun m!929365 () Bool)

(assert (=> setNonEmpty!3234 m!929365))

(declare-fun setRes!3235 () Bool)

(declare-fun tp!202466 () Bool)

(declare-fun b!662975 () Bool)

(declare-fun e!410482 () Bool)

(assert (=> b!662975 (= e!410482 (and (inv!9337 (_2!4186 (_1!4187 (h!12671 (minValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))))) setRes!3235 tp!202466))))

(declare-fun condSetEmpty!3235 () Bool)

(assert (=> b!662975 (= condSetEmpty!3235 (= (_2!4187 (h!12671 (minValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3235 () Bool)

(assert (=> setIsEmpty!3235 setRes!3235))

(declare-fun setNonEmpty!3235 () Bool)

(declare-fun tp!202467 () Bool)

(declare-fun setElem!3235 () Context!438)

(assert (=> setNonEmpty!3235 (= setRes!3235 (and tp!202467 (inv!9337 setElem!3235)))))

(declare-fun setRest!3235 () (InoxSet Context!438))

(assert (=> setNonEmpty!3235 (= (_2!4187 (h!12671 (minValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3235 true) setRest!3235))))

(assert (=> b!662858 (= tp!202422 e!410482)))

(assert (= (and b!662975 condSetEmpty!3235) setIsEmpty!3235))

(assert (= (and b!662975 (not condSetEmpty!3235)) setNonEmpty!3235))

(assert (= (and b!662858 ((_ is Cons!7270) (minValue!962 (v!17395 (underlying!1593 (v!17396 (underlying!1594 (cache!1064 cacheDown!348)))))))) b!662975))

(declare-fun m!929367 () Bool)

(assert (=> b!662975 m!929367))

(declare-fun m!929369 () Bool)

(assert (=> setNonEmpty!3235 m!929369))

(declare-fun setRes!3238 () Bool)

(declare-fun tp!202473 () Bool)

(declare-fun e!410490 () Bool)

(declare-fun b!662980 () Bool)

(assert (=> b!662980 (= e!410490 (and (inv!9337 (_1!4184 (_1!4185 (h!12670 (zeroValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))))) setRes!3238 tp!202473))))

(declare-fun condSetEmpty!3238 () Bool)

(assert (=> b!662980 (= condSetEmpty!3238 (= (_2!4185 (h!12670 (zeroValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3238 () Bool)

(assert (=> setIsEmpty!3238 setRes!3238))

(declare-fun setNonEmpty!3238 () Bool)

(declare-fun tp!202472 () Bool)

(declare-fun setElem!3238 () Context!438)

(assert (=> setNonEmpty!3238 (= setRes!3238 (and tp!202472 (inv!9337 setElem!3238)))))

(declare-fun setRest!3238 () (InoxSet Context!438))

(assert (=> setNonEmpty!3238 (= (_2!4185 (h!12670 (zeroValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3238 true) setRest!3238))))

(assert (=> b!662845 (= tp!202432 e!410490)))

(assert (= (and b!662980 condSetEmpty!3238) setIsEmpty!3238))

(assert (= (and b!662980 (not condSetEmpty!3238)) setNonEmpty!3238))

(assert (= (and b!662845 ((_ is Cons!7269) (zeroValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))) b!662980))

(declare-fun m!929371 () Bool)

(assert (=> b!662980 m!929371))

(declare-fun m!929373 () Bool)

(assert (=> setNonEmpty!3238 m!929373))

(declare-fun setRes!3239 () Bool)

(declare-fun e!410493 () Bool)

(declare-fun tp!202475 () Bool)

(declare-fun b!662981 () Bool)

(assert (=> b!662981 (= e!410493 (and (inv!9337 (_1!4184 (_1!4185 (h!12670 (minValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))))) setRes!3239 tp!202475))))

(declare-fun condSetEmpty!3239 () Bool)

(assert (=> b!662981 (= condSetEmpty!3239 (= (_2!4185 (h!12670 (minValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3239 () Bool)

(assert (=> setIsEmpty!3239 setRes!3239))

(declare-fun setNonEmpty!3239 () Bool)

(declare-fun tp!202474 () Bool)

(declare-fun setElem!3239 () Context!438)

(assert (=> setNonEmpty!3239 (= setRes!3239 (and tp!202474 (inv!9337 setElem!3239)))))

(declare-fun setRest!3239 () (InoxSet Context!438))

(assert (=> setNonEmpty!3239 (= (_2!4185 (h!12670 (minValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3239 true) setRest!3239))))

(assert (=> b!662845 (= tp!202430 e!410493)))

(assert (= (and b!662981 condSetEmpty!3239) setIsEmpty!3239))

(assert (= (and b!662981 (not condSetEmpty!3239)) setNonEmpty!3239))

(assert (= (and b!662845 ((_ is Cons!7269) (minValue!961 (v!17393 (underlying!1591 (v!17394 (underlying!1592 (cache!1063 cacheUp!335)))))))) b!662981))

(declare-fun m!929375 () Bool)

(assert (=> b!662981 m!929375))

(declare-fun m!929377 () Bool)

(assert (=> setNonEmpty!3239 m!929377))

(declare-fun e!410496 () Bool)

(declare-fun setRes!3240 () Bool)

(declare-fun tp!202477 () Bool)

(declare-fun b!662982 () Bool)

(assert (=> b!662982 (= e!410496 (and (inv!9337 (_1!4184 (_1!4185 (h!12670 mapDefault!2797)))) setRes!3240 tp!202477))))

(declare-fun condSetEmpty!3240 () Bool)

(assert (=> b!662982 (= condSetEmpty!3240 (= (_2!4185 (h!12670 mapDefault!2797)) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3240 () Bool)

(assert (=> setIsEmpty!3240 setRes!3240))

(declare-fun setNonEmpty!3240 () Bool)

(declare-fun tp!202476 () Bool)

(declare-fun setElem!3240 () Context!438)

(assert (=> setNonEmpty!3240 (= setRes!3240 (and tp!202476 (inv!9337 setElem!3240)))))

(declare-fun setRest!3240 () (InoxSet Context!438))

(assert (=> setNonEmpty!3240 (= (_2!4185 (h!12670 mapDefault!2797)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3240 true) setRest!3240))))

(assert (=> b!662847 (= tp!202424 e!410496)))

(assert (= (and b!662982 condSetEmpty!3240) setIsEmpty!3240))

(assert (= (and b!662982 (not condSetEmpty!3240)) setNonEmpty!3240))

(assert (= (and b!662847 ((_ is Cons!7269) mapDefault!2797)) b!662982))

(declare-fun m!929379 () Bool)

(assert (=> b!662982 m!929379))

(declare-fun m!929381 () Bool)

(assert (=> setNonEmpty!3240 m!929381))

(declare-fun tp!202478 () Bool)

(declare-fun e!410500 () Bool)

(declare-fun b!662983 () Bool)

(declare-fun setRes!3241 () Bool)

(assert (=> b!662983 (= e!410500 (and (inv!9337 (_2!4186 (_1!4187 (h!12671 mapDefault!2796)))) setRes!3241 tp!202478))))

(declare-fun condSetEmpty!3241 () Bool)

(assert (=> b!662983 (= condSetEmpty!3241 (= (_2!4187 (h!12671 mapDefault!2796)) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3241 () Bool)

(assert (=> setIsEmpty!3241 setRes!3241))

(declare-fun setNonEmpty!3241 () Bool)

(declare-fun tp!202479 () Bool)

(declare-fun setElem!3241 () Context!438)

(assert (=> setNonEmpty!3241 (= setRes!3241 (and tp!202479 (inv!9337 setElem!3241)))))

(declare-fun setRest!3241 () (InoxSet Context!438))

(assert (=> setNonEmpty!3241 (= (_2!4187 (h!12671 mapDefault!2796)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3241 true) setRest!3241))))

(assert (=> b!662853 (= tp!202425 e!410500)))

(assert (= (and b!662983 condSetEmpty!3241) setIsEmpty!3241))

(assert (= (and b!662983 (not condSetEmpty!3241)) setNonEmpty!3241))

(assert (= (and b!662853 ((_ is Cons!7270) mapDefault!2796)) b!662983))

(declare-fun m!929383 () Bool)

(assert (=> b!662983 m!929383))

(declare-fun m!929385 () Bool)

(assert (=> setNonEmpty!3241 m!929385))

(declare-fun setNonEmpty!3246 () Bool)

(declare-fun setRes!3246 () Bool)

(declare-fun tp!202491 () Bool)

(declare-fun setElem!3247 () Context!438)

(assert (=> setNonEmpty!3246 (= setRes!3246 (and tp!202491 (inv!9337 setElem!3247)))))

(declare-fun mapDefault!2803 () List!7283)

(declare-fun setRest!3246 () (InoxSet Context!438))

(assert (=> setNonEmpty!3246 (= (_2!4185 (h!12670 mapDefault!2803)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3247 true) setRest!3246))))

(declare-fun condMapEmpty!2803 () Bool)

(assert (=> mapNonEmpty!2797 (= condMapEmpty!2803 (= mapRest!2796 ((as const (Array (_ BitVec 32) List!7283)) mapDefault!2803)))))

(declare-fun e!410517 () Bool)

(declare-fun mapRes!2803 () Bool)

(assert (=> mapNonEmpty!2797 (= tp!202420 (and e!410517 mapRes!2803))))

(declare-fun e!410513 () Bool)

(declare-fun tp!202494 () Bool)

(declare-fun mapValue!2803 () List!7283)

(declare-fun setRes!3247 () Bool)

(declare-fun b!662990 () Bool)

(assert (=> b!662990 (= e!410513 (and (inv!9337 (_1!4184 (_1!4185 (h!12670 mapValue!2803)))) setRes!3247 tp!202494))))

(declare-fun condSetEmpty!3246 () Bool)

(assert (=> b!662990 (= condSetEmpty!3246 (= (_2!4185 (h!12670 mapValue!2803)) ((as const (Array Context!438 Bool)) false)))))

(declare-fun mapNonEmpty!2803 () Bool)

(declare-fun tp!202492 () Bool)

(assert (=> mapNonEmpty!2803 (= mapRes!2803 (and tp!202492 e!410513))))

(declare-fun mapKey!2803 () (_ BitVec 32))

(declare-fun mapRest!2803 () (Array (_ BitVec 32) List!7283))

(assert (=> mapNonEmpty!2803 (= mapRest!2796 (store mapRest!2803 mapKey!2803 mapValue!2803))))

(declare-fun setNonEmpty!3247 () Bool)

(declare-fun tp!202490 () Bool)

(declare-fun setElem!3246 () Context!438)

(assert (=> setNonEmpty!3247 (= setRes!3247 (and tp!202490 (inv!9337 setElem!3246)))))

(declare-fun setRest!3247 () (InoxSet Context!438))

(assert (=> setNonEmpty!3247 (= (_2!4185 (h!12670 mapValue!2803)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3246 true) setRest!3247))))

(declare-fun mapIsEmpty!2803 () Bool)

(assert (=> mapIsEmpty!2803 mapRes!2803))

(declare-fun setIsEmpty!3246 () Bool)

(assert (=> setIsEmpty!3246 setRes!3247))

(declare-fun setIsEmpty!3247 () Bool)

(assert (=> setIsEmpty!3247 setRes!3246))

(declare-fun b!662991 () Bool)

(declare-fun tp!202493 () Bool)

(assert (=> b!662991 (= e!410517 (and (inv!9337 (_1!4184 (_1!4185 (h!12670 mapDefault!2803)))) setRes!3246 tp!202493))))

(declare-fun condSetEmpty!3247 () Bool)

(assert (=> b!662991 (= condSetEmpty!3247 (= (_2!4185 (h!12670 mapDefault!2803)) ((as const (Array Context!438 Bool)) false)))))

(assert (= (and mapNonEmpty!2797 condMapEmpty!2803) mapIsEmpty!2803))

(assert (= (and mapNonEmpty!2797 (not condMapEmpty!2803)) mapNonEmpty!2803))

(assert (= (and b!662990 condSetEmpty!3246) setIsEmpty!3246))

(assert (= (and b!662990 (not condSetEmpty!3246)) setNonEmpty!3247))

(assert (= (and mapNonEmpty!2803 ((_ is Cons!7269) mapValue!2803)) b!662990))

(assert (= (and b!662991 condSetEmpty!3247) setIsEmpty!3247))

(assert (= (and b!662991 (not condSetEmpty!3247)) setNonEmpty!3246))

(assert (= (and mapNonEmpty!2797 ((_ is Cons!7269) mapDefault!2803)) b!662991))

(declare-fun m!929387 () Bool)

(assert (=> setNonEmpty!3247 m!929387))

(declare-fun m!929389 () Bool)

(assert (=> b!662990 m!929389))

(declare-fun m!929391 () Bool)

(assert (=> mapNonEmpty!2803 m!929391))

(declare-fun m!929393 () Bool)

(assert (=> b!662991 m!929393))

(declare-fun m!929395 () Bool)

(assert (=> setNonEmpty!3246 m!929395))

(declare-fun tp!202496 () Bool)

(declare-fun setRes!3248 () Bool)

(declare-fun b!662992 () Bool)

(declare-fun e!410520 () Bool)

(assert (=> b!662992 (= e!410520 (and (inv!9337 (_1!4184 (_1!4185 (h!12670 mapValue!2797)))) setRes!3248 tp!202496))))

(declare-fun condSetEmpty!3248 () Bool)

(assert (=> b!662992 (= condSetEmpty!3248 (= (_2!4185 (h!12670 mapValue!2797)) ((as const (Array Context!438 Bool)) false)))))

(declare-fun setIsEmpty!3248 () Bool)

(assert (=> setIsEmpty!3248 setRes!3248))

(declare-fun setNonEmpty!3248 () Bool)

(declare-fun tp!202495 () Bool)

(declare-fun setElem!3248 () Context!438)

(assert (=> setNonEmpty!3248 (= setRes!3248 (and tp!202495 (inv!9337 setElem!3248)))))

(declare-fun setRest!3248 () (InoxSet Context!438))

(assert (=> setNonEmpty!3248 (= (_2!4185 (h!12670 mapValue!2797)) ((_ map or) (store ((as const (Array Context!438 Bool)) false) setElem!3248 true) setRest!3248))))

(assert (=> mapNonEmpty!2797 (= tp!202428 e!410520)))

(assert (= (and b!662992 condSetEmpty!3248) setIsEmpty!3248))

(assert (= (and b!662992 (not condSetEmpty!3248)) setNonEmpty!3248))

(assert (= (and mapNonEmpty!2797 ((_ is Cons!7269) mapValue!2797)) b!662992))

(declare-fun m!929397 () Bool)

(assert (=> b!662992 m!929397))

(declare-fun m!929399 () Bool)

(assert (=> setNonEmpty!3248 m!929399))

(declare-fun b_lambda!25787 () Bool)

(assert (= b_lambda!25785 (or d!226508 b_lambda!25787)))

(declare-fun bs!95065 () Bool)

(declare-fun d!226540 () Bool)

(assert (= bs!95065 (and d!226540 d!226508)))

(assert (=> bs!95065 (= (dynLambda!3830 lambda!20643 (singletonSeq!459 #x005B)) (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B)))))

(assert (=> bs!95065 m!929205))

(declare-fun bs!95066 () Bool)

(declare-fun s!44917 () Bool)

(assert (= bs!95066 (and neg-inst!346 s!44917)))

(declare-fun res!294041 () Bool)

(declare-fun e!410522 () Bool)

(assert (=> bs!95066 (=> res!294041 e!410522)))

(assert (=> bs!95066 (= res!294041 (not (= (list!3065 x!146774) (list!3065 (singletonSeq!459 #x005B)))))))

(assert (=> bs!95066 (=> true e!410522)))

(declare-fun b!662993 () Bool)

(assert (=> b!662993 (= e!410522 (= (toValue!11 KeywordValueInjection!65 x!146774) (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B))))))

(assert (= (and bs!95066 (not res!294041)) b!662993))

(declare-fun bs!95067 () Bool)

(declare-fun m!929401 () Bool)

(assert (= bs!95067 (and m!929401 m!929269 m!929277)))

(assert (=> bs!95067 m!929269))

(declare-fun bs!95068 () Bool)

(declare-fun s!44919 () Bool)

(assert (= bs!95068 (and neg-inst!346 s!44919)))

(declare-fun res!294042 () Bool)

(declare-fun e!410523 () Bool)

(assert (=> bs!95068 (=> res!294042 e!410523)))

(assert (=> bs!95068 (= res!294042 (not (= (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (list!3065 (singletonSeq!459 #x005B)))))))

(assert (=> bs!95068 (=> true e!410523)))

(declare-fun b!662994 () Bool)

(assert (=> b!662994 (= e!410523 (= (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))) (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B))))))

(assert (= (and bs!95068 (not res!294042)) b!662994))

(declare-fun bs!95069 () Bool)

(declare-fun m!929403 () Bool)

(assert (= bs!95069 (and m!929403 m!929265)))

(assert (=> bs!95069 m!929265))

(assert (=> bs!95069 m!929403))

(assert (=> bs!95069 s!44919))

(declare-fun bs!95070 () Bool)

(declare-fun s!44921 () Bool)

(assert (= bs!95070 (and neg-inst!346 s!44921)))

(declare-fun res!294043 () Bool)

(declare-fun e!410524 () Bool)

(assert (=> bs!95070 (=> res!294043 e!410524)))

(assert (=> bs!95070 (= res!294043 (not (= (list!3065 (singletonSeq!459 #x005B)) (list!3065 (singletonSeq!459 #x005B)))))))

(assert (=> bs!95070 (=> true e!410524)))

(declare-fun b!662995 () Bool)

(assert (=> b!662995 (= e!410524 (= (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B)) (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B))))))

(assert (= (and bs!95070 (not res!294043)) b!662995))

(declare-fun bs!95071 () Bool)

(assert (= bs!95071 (and m!929403 m!929401)))

(assert (=> bs!95071 m!929403))

(assert (=> bs!95071 m!929403))

(assert (=> bs!95071 s!44921))

(declare-fun bs!95072 () Bool)

(declare-fun s!44923 () Bool)

(assert (= bs!95072 (and neg-inst!346 s!44923)))

(declare-fun res!294044 () Bool)

(declare-fun e!410525 () Bool)

(assert (=> bs!95072 (=> res!294044 e!410525)))

(assert (=> bs!95072 (= res!294044 (not (= (list!3065 lt!282360) (list!3065 (singletonSeq!459 #x005B)))))))

(assert (=> bs!95072 (=> true e!410525)))

(declare-fun b!662996 () Bool)

(assert (=> b!662996 (= e!410525 (= (toValue!11 KeywordValueInjection!65 lt!282360) (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B))))))

(assert (= (and bs!95072 (not res!294044)) b!662996))

(declare-fun bs!95073 () Bool)

(assert (= bs!95073 (and m!929403 m!929295)))

(assert (=> bs!95073 m!929295))

(assert (=> bs!95073 m!929403))

(assert (=> bs!95073 s!44923))

(assert (=> m!929403 s!44921))

(declare-fun bs!95074 () Bool)

(declare-fun s!44925 () Bool)

(assert (= bs!95074 (and neg-inst!346 s!44925)))

(declare-fun res!294045 () Bool)

(declare-fun e!410526 () Bool)

(assert (=> bs!95074 (=> res!294045 e!410526)))

(assert (=> bs!95074 (= res!294045 (not (= (list!3065 x!146773) (list!3065 (singletonSeq!459 #x005B)))))))

(assert (=> bs!95074 (=> true e!410526)))

(declare-fun b!662997 () Bool)

(assert (=> b!662997 (= e!410526 (= (toValue!11 KeywordValueInjection!65 x!146773) (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B))))))

(assert (= (and bs!95074 (not res!294045)) b!662997))

(declare-fun bs!95075 () Bool)

(assert (= bs!95075 (and m!929403 m!929267 m!929275)))

(assert (=> bs!95075 m!929267))

(assert (=> bs!95075 m!929403))

(assert (=> bs!95075 s!44925))

(declare-fun bs!95076 () Bool)

(declare-fun s!44927 () Bool)

(assert (= bs!95076 (and neg-inst!346 s!44927)))

(declare-fun res!294046 () Bool)

(declare-fun e!410527 () Bool)

(assert (=> bs!95076 (=> res!294046 e!410527)))

(assert (=> bs!95076 (= res!294046 (not (= (list!3065 x!146772) (list!3065 (singletonSeq!459 #x005B)))))))

(assert (=> bs!95076 (=> true e!410527)))

(declare-fun b!662998 () Bool)

(assert (=> b!662998 (= e!410527 (= (toValue!11 KeywordValueInjection!65 x!146772) (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B))))))

(assert (= (and bs!95076 (not res!294046)) b!662998))

(declare-fun bs!95077 () Bool)

(assert (= bs!95077 (and m!929403 m!929261 m!929257)))

(assert (=> bs!95077 m!929261))

(assert (=> bs!95077 m!929403))

(assert (=> bs!95077 s!44927))

(declare-fun bs!95078 () Bool)

(assert (= bs!95078 (and m!929403 m!929269 m!929277)))

(assert (=> bs!95078 s!44917))

(declare-fun bs!95079 () Bool)

(declare-fun s!44929 () Bool)

(assert (= bs!95079 (and neg-inst!346 s!44929)))

(declare-fun res!294047 () Bool)

(declare-fun e!410528 () Bool)

(assert (=> bs!95079 (=> res!294047 e!410528)))

(assert (=> bs!95079 (= res!294047 (not (= (list!3065 (singletonSeq!459 #x005B)) (list!3065 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772))))))))

(assert (=> bs!95079 (=> true e!410528)))

(declare-fun b!662999 () Bool)

(assert (=> b!662999 (= e!410528 (= (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B)) (toValue!11 KeywordValueInjection!65 (toCharacters!4 KeywordValueInjection!65 (toValue!11 KeywordValueInjection!65 x!146772)))))))

(assert (= (and bs!95079 (not res!294047)) b!662999))

(assert (=> bs!95069 m!929403))

(assert (=> bs!95069 m!929265))

(assert (=> bs!95069 s!44929))

(declare-fun bs!95080 () Bool)

(declare-fun s!44931 () Bool)

(assert (= bs!95080 (and neg-inst!346 s!44931)))

(declare-fun res!294048 () Bool)

(declare-fun e!410529 () Bool)

(assert (=> bs!95080 (=> res!294048 e!410529)))

(assert (=> bs!95080 (= res!294048 (not (= (list!3065 (singletonSeq!459 #x005B)) (list!3065 x!146774))))))

(assert (=> bs!95080 (=> true e!410529)))

(declare-fun b!663000 () Bool)

(assert (=> b!663000 (= e!410529 (= (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B)) (toValue!11 KeywordValueInjection!65 x!146774)))))

(assert (= (and bs!95080 (not res!294048)) b!663000))

(assert (=> bs!95078 m!929403))

(assert (=> bs!95078 m!929269))

(assert (=> bs!95078 s!44931))

(declare-fun bs!95081 () Bool)

(declare-fun s!44933 () Bool)

(assert (= bs!95081 (and neg-inst!346 s!44933)))

(declare-fun res!294049 () Bool)

(declare-fun e!410530 () Bool)

(assert (=> bs!95081 (=> res!294049 e!410530)))

(assert (=> bs!95081 (= res!294049 (not (= (list!3065 (singletonSeq!459 #x005B)) (list!3065 lt!282360))))))

(assert (=> bs!95081 (=> true e!410530)))

(declare-fun b!663001 () Bool)

(assert (=> b!663001 (= e!410530 (= (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B)) (toValue!11 KeywordValueInjection!65 lt!282360)))))

(assert (= (and bs!95081 (not res!294049)) b!663001))

(assert (=> bs!95073 m!929403))

(assert (=> bs!95073 m!929295))

(assert (=> bs!95073 s!44933))

(assert (=> bs!95071 s!44921))

(declare-fun bs!95082 () Bool)

(declare-fun s!44935 () Bool)

(assert (= bs!95082 (and neg-inst!346 s!44935)))

(declare-fun res!294050 () Bool)

(declare-fun e!410531 () Bool)

(assert (=> bs!95082 (=> res!294050 e!410531)))

(assert (=> bs!95082 (= res!294050 (not (= (list!3065 (singletonSeq!459 #x005B)) (list!3065 x!146772))))))

(assert (=> bs!95082 (=> true e!410531)))

(declare-fun b!663002 () Bool)

(assert (=> b!663002 (= e!410531 (= (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B)) (toValue!11 KeywordValueInjection!65 x!146772)))))

(assert (= (and bs!95082 (not res!294050)) b!663002))

(assert (=> bs!95077 m!929403))

(assert (=> bs!95077 m!929261))

(assert (=> bs!95077 s!44935))

(declare-fun bs!95083 () Bool)

(declare-fun s!44937 () Bool)

(assert (= bs!95083 (and neg-inst!346 s!44937)))

(declare-fun res!294051 () Bool)

(declare-fun e!410532 () Bool)

(assert (=> bs!95083 (=> res!294051 e!410532)))

(assert (=> bs!95083 (= res!294051 (not (= (list!3065 (singletonSeq!459 #x005B)) (list!3065 x!146773))))))

(assert (=> bs!95083 (=> true e!410532)))

(declare-fun b!663003 () Bool)

(assert (=> b!663003 (= e!410532 (= (toValue!11 KeywordValueInjection!65 (singletonSeq!459 #x005B)) (toValue!11 KeywordValueInjection!65 x!146773)))))

(assert (= (and bs!95083 (not res!294051)) b!663003))

(assert (=> bs!95075 m!929403))

(assert (=> bs!95075 m!929267))

(assert (=> bs!95075 s!44937))

(assert (=> m!929403 s!44921))

(assert (=> bs!95067 m!929403))

(assert (=> bs!95067 s!44917))

(declare-fun bs!95084 () Bool)

(assert (= bs!95084 m!929401))

(assert (=> bs!95084 s!44921))

(declare-fun bs!95085 () Bool)

(assert (= bs!95085 (and m!929401 m!929261 m!929257)))

(assert (=> bs!95085 s!44927))

(declare-fun bs!95086 () Bool)

(assert (= bs!95086 (and m!929401 m!929267 m!929275)))

(assert (=> bs!95086 s!44925))

(declare-fun bs!95087 () Bool)

(assert (= bs!95087 (and m!929401 m!929295)))

(assert (=> bs!95087 s!44923))

(declare-fun bs!95088 () Bool)

(assert (= bs!95088 (and m!929401 m!929265)))

(assert (=> bs!95088 s!44919))

(assert (=> bs!95084 s!44921))

(assert (=> bs!95067 s!44931))

(assert (=> bs!95085 s!44935))

(assert (=> bs!95088 s!44929))

(assert (=> bs!95086 s!44937))

(assert (=> bs!95087 s!44933))

(assert (=> bs!95065 m!929401))

(assert (=> d!226512 d!226540))

(check-sat (not d!226506) (not b_next!19249) (not bs!95053) (not b!662925) (not setNonEmpty!3238) (not bs!95023) (not setNonEmpty!3246) (not bs!95068) (not b!662927) (not setNonEmpty!3248) (not bs!95065) (not b!662911) (not b!662974) (not bs!95014) (not b!663001) (not d!226514) b_and!62977 (not b!662948) (not b!662934) (not b!662975) (not b!662956) (not b!662994) (not b!662863) (not bs!95076) (not setNonEmpty!3234) (not b!662930) (not bs!95070) (not bs!95072) (not b!662967) (not b!662991) (not b!662933) (not b!662990) (not b!662910) (not b!662872) (not b!662997) (not bs!95031) (not bs!95083) (not bs!95018) (not d!226510) (not b!662908) (not b!662938) (not bs!95051) (not b!662923) (not d!226516) b_and!62975 (not b!662996) (not b!662913) (not setNonEmpty!3230) (not b!662981) (not bs!95033) (not b!662921) (not setNonEmpty!3235) (not b!662916) (not b!662942) (not bs!95066) (not setNonEmpty!3247) (not b!662936) (not bs!95059) (not mapNonEmpty!2803) (not b!663000) (not mapNonEmpty!2800) (not b!662926) (not setNonEmpty!3240) (not b!662920) (not bs!95011) (not b!662932) (not b!662958) (not b_next!19245) (not bs!95039) (not b!662931) (not bs!95081) (not setNonEmpty!3229) (not d!226538) (not bs!95057) (not d!226526) (not bs!95060) (not d!226536) (not b!662995) (not bs!95024) (not setNonEmpty!3239) (not bs!95048) (not b!662935) (not d!226518) (not b!662882) (not setNonEmpty!3233) (not b!662914) (not b!662922) (not b!662999) (not b!662998) (not setNonEmpty!3241) (not b!662993) (not b_lambda!25787) (not bs!95013) (not b_next!19251) (not bs!95038) b_and!62979 (not bs!95037) (not bs!95074) (not bs!95050) (not b!662915) (not bs!95035) (not bs!95020) (not b!662919) (not b!662957) (not b!662937) (not b!662909) (not b!663003) (not b!662917) (not bs!95082) (not bs!95017) (not b!662968) (not b!662983) (not b!662918) (not bs!95055) (not b!662883) (not b!662912) (not d!226508) (not b!662924) b_and!62981 (not bs!95040) (not b!662945) (not bs!95022) (not bs!95058) (not b!662951) (not b!662973) (not bs!95079) (not d!226504) (not bs!95080) (not b!662939) (not b_next!19247) (not bs!95016) (not b!662992) (not b!662980) (not b!662982) (not b!663002))
(check-sat b_and!62977 b_and!62975 (not b_next!19245) (not b_next!19249) (not b_next!19251) b_and!62979 b_and!62981 (not b_next!19247))

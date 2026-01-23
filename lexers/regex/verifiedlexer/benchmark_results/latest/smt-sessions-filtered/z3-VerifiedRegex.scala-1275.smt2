; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66164 () Bool)

(assert start!66164)

(declare-fun b!692295 () Bool)

(declare-fun b_free!19669 () Bool)

(declare-fun b_next!19733 () Bool)

(assert (=> b!692295 (= b_free!19669 (not b_next!19733))))

(declare-fun tp!208827 () Bool)

(declare-fun b_and!63463 () Bool)

(assert (=> b!692295 (= tp!208827 b_and!63463)))

(declare-fun b!692284 () Bool)

(declare-fun b_free!19671 () Bool)

(declare-fun b_next!19735 () Bool)

(assert (=> b!692284 (= b_free!19671 (not b_next!19735))))

(declare-fun tp!208820 () Bool)

(declare-fun b_and!63465 () Bool)

(assert (=> b!692284 (= tp!208820 b_and!63465)))

(declare-fun b!692286 () Bool)

(declare-fun b_free!19673 () Bool)

(declare-fun b_next!19737 () Bool)

(assert (=> b!692286 (= b_free!19673 (not b_next!19737))))

(declare-fun tp!208818 () Bool)

(declare-fun b_and!63467 () Bool)

(assert (=> b!692286 (= tp!208818 b_and!63467)))

(declare-fun b!692288 () Bool)

(declare-fun b_free!19675 () Bool)

(declare-fun b_next!19739 () Bool)

(assert (=> b!692288 (= b_free!19675 (not b_next!19739))))

(declare-fun tp!208822 () Bool)

(declare-fun b_and!63469 () Bool)

(assert (=> b!692288 (= tp!208822 b_and!63469)))

(declare-fun b!692292 () Bool)

(declare-fun b_free!19677 () Bool)

(declare-fun b_next!19741 () Bool)

(assert (=> b!692292 (= b_free!19677 (not b_next!19741))))

(declare-fun tp!208809 () Bool)

(declare-fun b_and!63471 () Bool)

(assert (=> b!692292 (= tp!208809 b_and!63471)))

(declare-fun b_free!19679 () Bool)

(declare-fun b_next!19743 () Bool)

(assert (=> b!692292 (= b_free!19679 (not b_next!19743))))

(declare-fun tp!208828 () Bool)

(declare-fun b_and!63473 () Bool)

(assert (=> b!692292 (= tp!208828 b_and!63473)))

(declare-fun b!692303 () Bool)

(declare-fun b_free!19681 () Bool)

(declare-fun b_next!19745 () Bool)

(assert (=> b!692303 (= b_free!19681 (not b_next!19745))))

(declare-fun tp!208805 () Bool)

(declare-fun b_and!63475 () Bool)

(assert (=> b!692303 (= tp!208805 b_and!63475)))

(declare-fun b!692298 () Bool)

(declare-fun b_free!19683 () Bool)

(declare-fun b_next!19747 () Bool)

(assert (=> b!692298 (= b_free!19683 (not b_next!19747))))

(declare-fun tp!208810 () Bool)

(declare-fun b_and!63477 () Bool)

(assert (=> b!692298 (= tp!208810 b_and!63477)))

(declare-fun b!692265 () Bool)

(declare-fun res!313815 () Bool)

(declare-fun e!435649 () Bool)

(assert (=> b!692265 (=> (not res!313815) (not e!435649))))

(declare-datatypes ((C!4292 0))(
  ( (C!4293 (val!2376 Int)) )
))
(declare-datatypes ((List!7525 0))(
  ( (Nil!7511) (Cons!7511 (h!12912 C!4292) (t!87343 List!7525)) )
))
(declare-datatypes ((IArray!5303 0))(
  ( (IArray!5304 (innerList!2709 List!7525)) )
))
(declare-datatypes ((Regex!1845 0))(
  ( (ElementMatch!1845 (c!121613 C!4292)) (Concat!3395 (regOne!4202 Regex!1845) (regTwo!4202 Regex!1845)) (EmptyExpr!1845) (Star!1845 (reg!2174 Regex!1845)) (EmptyLang!1845) (Union!1845 (regOne!4203 Regex!1845) (regTwo!4203 Regex!1845)) )
))
(declare-datatypes ((Hashable!749 0))(
  ( (HashableExt!748 (__x!5428 Int)) )
))
(declare-datatypes ((Conc!2651 0))(
  ( (Node!2651 (left!6006 Conc!2651) (right!6336 Conc!2651) (csize!5532 Int) (cheight!2862 Int)) (Leaf!3927 (xs!5302 IArray!5303) (csize!5533 Int)) (Empty!2651) )
))
(declare-datatypes ((BalanceConc!5314 0))(
  ( (BalanceConc!5315 (c!121614 Conc!2651)) )
))
(declare-datatypes ((List!7526 0))(
  ( (Nil!7512) (Cons!7512 (h!12913 Regex!1845) (t!87344 List!7526)) )
))
(declare-datatypes ((Context!494 0))(
  ( (Context!495 (exprs!747 List!7526)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7912 0))(
  ( (tuple2!7913 (_1!4374 (InoxSet Context!494)) (_2!4374 Int)) )
))
(declare-datatypes ((tuple2!7914 0))(
  ( (tuple2!7915 (_1!4375 tuple2!7912) (_2!4375 Int)) )
))
(declare-datatypes ((array!2905 0))(
  ( (array!2906 (arr!1312 (Array (_ BitVec 32) (_ BitVec 64))) (size!6139 (_ BitVec 32))) )
))
(declare-datatypes ((List!7527 0))(
  ( (Nil!7513) (Cons!7513 (h!12914 tuple2!7914) (t!87345 List!7527)) )
))
(declare-datatypes ((array!2907 0))(
  ( (array!2908 (arr!1313 (Array (_ BitVec 32) List!7527)) (size!6140 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1554 0))(
  ( (LongMapFixedSize!1555 (defaultEntry!1133 Int) (mask!2584 (_ BitVec 32)) (extraKeys!1024 (_ BitVec 32)) (zeroValue!1034 List!7527) (minValue!1034 List!7527) (_size!1663 (_ BitVec 32)) (_keys!1071 array!2905) (_values!1056 array!2907) (_vacant!838 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3049 0))(
  ( (Cell!3050 (v!17673 LongMapFixedSize!1554)) )
))
(declare-datatypes ((MutLongMap!777 0))(
  ( (LongMap!777 (underlying!1737 Cell!3049)) (MutLongMapExt!776 (__x!5429 Int)) )
))
(declare-datatypes ((Cell!3051 0))(
  ( (Cell!3052 (v!17674 MutLongMap!777)) )
))
(declare-datatypes ((MutableMap!749 0))(
  ( (MutableMapExt!748 (__x!5430 Int)) (HashMap!749 (underlying!1738 Cell!3051) (hashF!2657 Hashable!749) (_size!1664 (_ BitVec 32)) (defaultValue!900 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!46 0))(
  ( (CacheFindLongestMatch!47 (cache!1136 MutableMap!749) (totalInput!1804 BalanceConc!5314)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!46)

(declare-fun totalInput!378 () BalanceConc!5314)

(assert (=> b!692265 (= res!313815 (= (totalInput!1804 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!692266 () Bool)

(declare-fun e!435633 () Bool)

(declare-datatypes ((List!7528 0))(
  ( (Nil!7514) (Cons!7514 (h!12915 (_ BitVec 16)) (t!87346 List!7528)) )
))
(declare-datatypes ((TokenValue!1550 0))(
  ( (FloatLiteralValue!3100 (text!11295 List!7528)) (TokenValueExt!1549 (__x!5431 Int)) (Broken!7750 (value!48560 List!7528)) (Object!1563) (End!1550) (Def!1550) (Underscore!1550) (Match!1550) (Else!1550) (Error!1550) (Case!1550) (If!1550) (Extends!1550) (Abstract!1550) (Class!1550) (Val!1550) (DelimiterValue!3100 (del!1610 List!7528)) (KeywordValue!1556 (value!48561 List!7528)) (CommentValue!3100 (value!48562 List!7528)) (WhitespaceValue!3100 (value!48563 List!7528)) (IndentationValue!1550 (value!48564 List!7528)) (String!9475) (Int32!1550) (Broken!7751 (value!48565 List!7528)) (Boolean!1551) (Unit!12655) (OperatorValue!1553 (op!1610 List!7528)) (IdentifierValue!3100 (value!48566 List!7528)) (IdentifierValue!3101 (value!48567 List!7528)) (WhitespaceValue!3101 (value!48568 List!7528)) (True!3100) (False!3100) (Broken!7752 (value!48569 List!7528)) (Broken!7753 (value!48570 List!7528)) (True!3101) (RightBrace!1550) (RightBracket!1550) (Colon!1550) (Null!1550) (Comma!1550) (LeftBracket!1550) (False!3101) (LeftBrace!1550) (ImaginaryLiteralValue!1550 (text!11296 List!7528)) (StringLiteralValue!4650 (value!48571 List!7528)) (EOFValue!1550 (value!48572 List!7528)) (IdentValue!1550 (value!48573 List!7528)) (DelimiterValue!3101 (value!48574 List!7528)) (DedentValue!1550 (value!48575 List!7528)) (NewLineValue!1550 (value!48576 List!7528)) (IntegerValue!4650 (value!48577 (_ BitVec 32)) (text!11297 List!7528)) (IntegerValue!4651 (value!48578 Int) (text!11298 List!7528)) (Times!1550) (Or!1550) (Equal!1550) (Minus!1550) (Broken!7754 (value!48579 List!7528)) (And!1550) (Div!1550) (LessEqual!1550) (Mod!1550) (Concat!3396) (Not!1550) (Plus!1550) (SpaceValue!1550 (value!48580 List!7528)) (IntegerValue!4652 (value!48581 Int) (text!11299 List!7528)) (StringLiteralValue!4651 (text!11300 List!7528)) (FloatLiteralValue!3101 (text!11301 List!7528)) (BytesLiteralValue!1550 (value!48582 List!7528)) (CommentValue!3101 (value!48583 List!7528)) (StringLiteralValue!4652 (value!48584 List!7528)) (ErrorTokenValue!1550 (msg!1611 List!7528)) )
))
(declare-datatypes ((String!9476 0))(
  ( (String!9477 (value!48585 String)) )
))
(declare-datatypes ((TokenValueInjection!2836 0))(
  ( (TokenValueInjection!2837 (toValue!2468 Int) (toChars!2327 Int)) )
))
(declare-datatypes ((Rule!2812 0))(
  ( (Rule!2813 (regex!1506 Regex!1845) (tag!1768 String!9476) (isSeparator!1506 Bool) (transformation!1506 TokenValueInjection!2836)) )
))
(declare-datatypes ((Token!2712 0))(
  ( (Token!2713 (value!48586 TokenValue!1550) (rule!2545 Rule!2812) (size!6141 Int) (originalCharacters!1781 List!7525)) )
))
(declare-datatypes ((List!7529 0))(
  ( (Nil!7515) (Cons!7515 (h!12916 Token!2712) (t!87347 List!7529)) )
))
(declare-datatypes ((IArray!5305 0))(
  ( (IArray!5306 (innerList!2710 List!7529)) )
))
(declare-datatypes ((Conc!2652 0))(
  ( (Node!2652 (left!6007 Conc!2652) (right!6337 Conc!2652) (csize!5534 Int) (cheight!2863 Int)) (Leaf!3928 (xs!5303 IArray!5305) (csize!5535 Int)) (Empty!2652) )
))
(declare-datatypes ((BalanceConc!5316 0))(
  ( (BalanceConc!5317 (c!121615 Conc!2652)) )
))
(declare-fun acc!372 () BalanceConc!5316)

(declare-fun tp!208831 () Bool)

(declare-fun inv!9628 (Conc!2652) Bool)

(assert (=> b!692266 (= e!435633 (and (inv!9628 (c!121615 acc!372)) tp!208831))))

(declare-fun b!692267 () Bool)

(declare-fun e!435644 () Bool)

(declare-fun e!435642 () Bool)

(assert (=> b!692267 (= e!435644 e!435642)))

(declare-fun res!313821 () Bool)

(assert (=> b!692267 (=> (not res!313821) (not e!435642))))

(declare-datatypes ((tuple2!7916 0))(
  ( (tuple2!7917 (_1!4376 BalanceConc!5316) (_2!4376 BalanceConc!5314)) )
))
(declare-fun lt!284938 () tuple2!7916)

(declare-fun list!3151 (BalanceConc!5316) List!7529)

(assert (=> b!692267 (= res!313821 (= (list!3151 (_1!4376 lt!284938)) (list!3151 acc!372)))))

(declare-fun treated!50 () BalanceConc!5314)

(declare-datatypes ((List!7530 0))(
  ( (Nil!7516) (Cons!7516 (h!12917 Rule!2812) (t!87348 List!7530)) )
))
(declare-fun rules!1486 () List!7530)

(declare-datatypes ((LexerInterface!1320 0))(
  ( (LexerInterfaceExt!1317 (__x!5432 Int)) (Lexer!1318) )
))
(declare-fun thiss!12529 () LexerInterface!1320)

(declare-fun lexRec!163 (LexerInterface!1320 List!7530 BalanceConc!5314) tuple2!7916)

(assert (=> b!692267 (= lt!284938 (lexRec!163 thiss!12529 rules!1486 treated!50))))

(declare-fun b!692268 () Bool)

(declare-fun res!313814 () Bool)

(declare-fun e!435655 () Bool)

(assert (=> b!692268 (=> (not res!313814) (not e!435655))))

(declare-fun rulesInvariant!1253 (LexerInterface!1320 List!7530) Bool)

(assert (=> b!692268 (= res!313814 (rulesInvariant!1253 thiss!12529 rules!1486))))

(declare-fun b!692269 () Bool)

(declare-fun e!435665 () Bool)

(declare-fun e!435636 () Bool)

(assert (=> b!692269 (= e!435665 e!435636)))

(declare-fun mapNonEmpty!3125 () Bool)

(declare-fun mapRes!3127 () Bool)

(declare-fun tp!208819 () Bool)

(declare-fun tp!208811 () Bool)

(assert (=> mapNonEmpty!3125 (= mapRes!3127 (and tp!208819 tp!208811))))

(declare-fun mapKey!3125 () (_ BitVec 32))

(declare-fun mapValue!3126 () List!7527)

(declare-fun mapRest!3127 () (Array (_ BitVec 32) List!7527))

(assert (=> mapNonEmpty!3125 (= (arr!1313 (_values!1056 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) (store mapRest!3127 mapKey!3125 mapValue!3126))))

(declare-fun b!692270 () Bool)

(declare-fun e!435654 () Bool)

(declare-fun e!435661 () Bool)

(declare-datatypes ((tuple3!720 0))(
  ( (tuple3!721 (_1!4377 Regex!1845) (_2!4377 Context!494) (_3!418 C!4292)) )
))
(declare-datatypes ((tuple2!7918 0))(
  ( (tuple2!7919 (_1!4378 tuple3!720) (_2!4378 (InoxSet Context!494))) )
))
(declare-datatypes ((List!7531 0))(
  ( (Nil!7517) (Cons!7517 (h!12918 tuple2!7918) (t!87349 List!7531)) )
))
(declare-datatypes ((array!2909 0))(
  ( (array!2910 (arr!1314 (Array (_ BitVec 32) List!7531)) (size!6142 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1556 0))(
  ( (LongMapFixedSize!1557 (defaultEntry!1134 Int) (mask!2585 (_ BitVec 32)) (extraKeys!1025 (_ BitVec 32)) (zeroValue!1035 List!7531) (minValue!1035 List!7531) (_size!1665 (_ BitVec 32)) (_keys!1072 array!2905) (_values!1057 array!2909) (_vacant!839 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3053 0))(
  ( (Cell!3054 (v!17675 LongMapFixedSize!1556)) )
))
(declare-datatypes ((MutLongMap!778 0))(
  ( (LongMap!778 (underlying!1739 Cell!3053)) (MutLongMapExt!777 (__x!5433 Int)) )
))
(declare-fun lt!284930 () MutLongMap!778)

(get-info :version)

(assert (=> b!692270 (= e!435654 (and e!435661 ((_ is LongMap!778) lt!284930)))))

(declare-datatypes ((Cell!3055 0))(
  ( (Cell!3056 (v!17676 MutLongMap!778)) )
))
(declare-datatypes ((Hashable!750 0))(
  ( (HashableExt!749 (__x!5434 Int)) )
))
(declare-datatypes ((MutableMap!750 0))(
  ( (MutableMapExt!749 (__x!5435 Int)) (HashMap!750 (underlying!1740 Cell!3055) (hashF!2658 Hashable!750) (_size!1666 (_ BitVec 32)) (defaultValue!901 Int)) )
))
(declare-datatypes ((CacheDown!392 0))(
  ( (CacheDown!393 (cache!1137 MutableMap!750)) )
))
(declare-fun cacheDown!515 () CacheDown!392)

(assert (=> b!692270 (= lt!284930 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))

(declare-fun b!692271 () Bool)

(declare-fun e!435632 () Bool)

(declare-fun e!435634 () Bool)

(declare-fun lt!284929 () MutLongMap!777)

(assert (=> b!692271 (= e!435632 (and e!435634 ((_ is LongMap!777) lt!284929)))))

(assert (=> b!692271 (= lt!284929 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))

(declare-fun b!692272 () Bool)

(declare-fun e!435650 () Bool)

(declare-fun e!435641 () Bool)

(assert (=> b!692272 (= e!435650 e!435641)))

(declare-fun b!692273 () Bool)

(declare-fun e!435652 () Bool)

(declare-fun tp!208821 () Bool)

(declare-fun mapRes!3125 () Bool)

(assert (=> b!692273 (= e!435652 (and tp!208821 mapRes!3125))))

(declare-fun condMapEmpty!3126 () Bool)

(declare-datatypes ((tuple2!7920 0))(
  ( (tuple2!7921 (_1!4379 Context!494) (_2!4379 C!4292)) )
))
(declare-datatypes ((tuple2!7922 0))(
  ( (tuple2!7923 (_1!4380 tuple2!7920) (_2!4380 (InoxSet Context!494))) )
))
(declare-datatypes ((List!7532 0))(
  ( (Nil!7518) (Cons!7518 (h!12919 tuple2!7922) (t!87350 List!7532)) )
))
(declare-datatypes ((array!2911 0))(
  ( (array!2912 (arr!1315 (Array (_ BitVec 32) List!7532)) (size!6143 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1558 0))(
  ( (LongMapFixedSize!1559 (defaultEntry!1135 Int) (mask!2586 (_ BitVec 32)) (extraKeys!1026 (_ BitVec 32)) (zeroValue!1036 List!7532) (minValue!1036 List!7532) (_size!1667 (_ BitVec 32)) (_keys!1073 array!2905) (_values!1058 array!2911) (_vacant!840 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3057 0))(
  ( (Cell!3058 (v!17677 LongMapFixedSize!1558)) )
))
(declare-datatypes ((MutLongMap!779 0))(
  ( (LongMap!779 (underlying!1741 Cell!3057)) (MutLongMapExt!778 (__x!5436 Int)) )
))
(declare-datatypes ((Hashable!751 0))(
  ( (HashableExt!750 (__x!5437 Int)) )
))
(declare-datatypes ((Cell!3059 0))(
  ( (Cell!3060 (v!17678 MutLongMap!779)) )
))
(declare-datatypes ((MutableMap!751 0))(
  ( (MutableMapExt!750 (__x!5438 Int)) (HashMap!751 (underlying!1742 Cell!3059) (hashF!2659 Hashable!751) (_size!1668 (_ BitVec 32)) (defaultValue!902 Int)) )
))
(declare-datatypes ((CacheUp!386 0))(
  ( (CacheUp!387 (cache!1138 MutableMap!751)) )
))
(declare-fun cacheUp!502 () CacheUp!386)

(declare-fun mapDefault!3127 () List!7532)

(assert (=> b!692273 (= condMapEmpty!3126 (= (arr!1315 (_values!1058 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7532)) mapDefault!3127)))))

(declare-fun b!692274 () Bool)

(declare-fun e!435630 () Bool)

(declare-fun input!870 () BalanceConc!5314)

(declare-fun tp!208808 () Bool)

(declare-fun inv!9629 (Conc!2651) Bool)

(assert (=> b!692274 (= e!435630 (and (inv!9629 (c!121614 input!870)) tp!208808))))

(declare-fun mapNonEmpty!3126 () Bool)

(declare-fun tp!208826 () Bool)

(declare-fun tp!208830 () Bool)

(assert (=> mapNonEmpty!3126 (= mapRes!3125 (and tp!208826 tp!208830))))

(declare-fun mapKey!3126 () (_ BitVec 32))

(declare-fun mapRest!3126 () (Array (_ BitVec 32) List!7532))

(declare-fun mapValue!3127 () List!7532)

(assert (=> mapNonEmpty!3126 (= (arr!1315 (_values!1058 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) (store mapRest!3126 mapKey!3126 mapValue!3127))))

(declare-fun b!692275 () Bool)

(assert (=> b!692275 (= e!435642 e!435649)))

(declare-fun res!313817 () Bool)

(assert (=> b!692275 (=> (not res!313817) (not e!435649))))

(declare-fun lt!284936 () tuple2!7916)

(declare-fun lt!284933 () tuple2!7916)

(declare-fun ++!1960 (BalanceConc!5316 BalanceConc!5316) BalanceConc!5316)

(assert (=> b!692275 (= res!313817 (= (list!3151 (_1!4376 lt!284933)) (list!3151 (++!1960 acc!372 (_1!4376 lt!284936)))))))

(assert (=> b!692275 (= lt!284936 (lexRec!163 thiss!12529 rules!1486 input!870))))

(assert (=> b!692275 (= lt!284933 (lexRec!163 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!692276 () Bool)

(declare-fun e!435658 () Bool)

(assert (=> b!692276 (= e!435661 e!435658)))

(declare-fun b!692277 () Bool)

(declare-fun e!435629 () Bool)

(declare-fun tp!208802 () Bool)

(declare-fun mapRes!3126 () Bool)

(assert (=> b!692277 (= e!435629 (and tp!208802 mapRes!3126))))

(declare-fun condMapEmpty!3125 () Bool)

(declare-fun mapDefault!3126 () List!7531)

(assert (=> b!692277 (= condMapEmpty!3125 (= (arr!1314 (_values!1057 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7531)) mapDefault!3126)))))

(declare-fun res!313824 () Bool)

(assert (=> start!66164 (=> (not res!313824) (not e!435655))))

(assert (=> start!66164 (= res!313824 ((_ is Lexer!1318) thiss!12529))))

(assert (=> start!66164 e!435655))

(declare-fun inv!9630 (BalanceConc!5316) Bool)

(assert (=> start!66164 (and (inv!9630 acc!372) e!435633)))

(declare-fun e!435662 () Bool)

(declare-fun inv!9631 (BalanceConc!5314) Bool)

(assert (=> start!66164 (and (inv!9631 treated!50) e!435662)))

(declare-fun e!435648 () Bool)

(assert (=> start!66164 (and (inv!9631 totalInput!378) e!435648)))

(assert (=> start!66164 (and (inv!9631 input!870) e!435630)))

(declare-fun e!435646 () Bool)

(assert (=> start!66164 e!435646))

(assert (=> start!66164 true))

(declare-fun inv!9632 (CacheUp!386) Bool)

(assert (=> start!66164 (and (inv!9632 cacheUp!502) e!435665)))

(declare-fun e!435639 () Bool)

(declare-fun inv!9633 (CacheDown!392) Bool)

(assert (=> start!66164 (and (inv!9633 cacheDown!515) e!435639)))

(declare-fun e!435666 () Bool)

(declare-fun inv!9634 (CacheFindLongestMatch!46) Bool)

(assert (=> start!66164 (and (inv!9634 cacheFindLongestMatch!74) e!435666)))

(declare-fun b!692278 () Bool)

(declare-fun e!435651 () Bool)

(assert (=> b!692278 (= e!435634 e!435651)))

(declare-fun mapNonEmpty!3127 () Bool)

(declare-fun tp!208817 () Bool)

(declare-fun tp!208815 () Bool)

(assert (=> mapNonEmpty!3127 (= mapRes!3126 (and tp!208817 tp!208815))))

(declare-fun mapValue!3125 () List!7531)

(declare-fun mapRest!3125 () (Array (_ BitVec 32) List!7531))

(declare-fun mapKey!3127 () (_ BitVec 32))

(assert (=> mapNonEmpty!3127 (= (arr!1314 (_values!1057 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) (store mapRest!3125 mapKey!3127 mapValue!3125))))

(declare-fun b!692279 () Bool)

(declare-fun res!313813 () Bool)

(assert (=> b!692279 (=> (not res!313813) (not e!435642))))

(declare-fun isEmpty!4880 (List!7525) Bool)

(declare-fun list!3152 (BalanceConc!5314) List!7525)

(assert (=> b!692279 (= res!313813 (isEmpty!4880 (list!3152 (_2!4376 lt!284938))))))

(declare-fun b!692280 () Bool)

(declare-fun res!313823 () Bool)

(assert (=> b!692280 (=> (not res!313823) (not e!435649))))

(declare-fun valid!665 (CacheDown!392) Bool)

(assert (=> b!692280 (= res!313823 (valid!665 cacheDown!515))))

(declare-fun b!692281 () Bool)

(declare-fun e!435653 () Bool)

(assert (=> b!692281 (= e!435649 (not e!435653))))

(declare-fun res!313816 () Bool)

(assert (=> b!692281 (=> res!313816 e!435653)))

(declare-fun lt!284932 () List!7525)

(declare-fun lt!284935 () List!7525)

(declare-fun isSuffix!130 (List!7525 List!7525) Bool)

(assert (=> b!692281 (= res!313816 (not (isSuffix!130 lt!284932 lt!284935)))))

(declare-fun lt!284928 () List!7525)

(assert (=> b!692281 (isSuffix!130 lt!284932 lt!284928)))

(declare-datatypes ((Unit!12656 0))(
  ( (Unit!12657) )
))
(declare-fun lt!284931 () Unit!12656)

(declare-fun lt!284934 () List!7525)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!130 (List!7525 List!7525) Unit!12656)

(assert (=> b!692281 (= lt!284931 (lemmaConcatTwoListThenFSndIsSuffix!130 lt!284934 lt!284932))))

(declare-fun b!692282 () Bool)

(declare-fun e!435647 () Bool)

(assert (=> b!692282 (= e!435641 e!435647)))

(declare-fun b!692283 () Bool)

(declare-fun e!435631 () Bool)

(declare-fun tp!208812 () Bool)

(assert (=> b!692283 (= e!435631 (and (inv!9629 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) tp!208812))))

(declare-fun e!435659 () Bool)

(assert (=> b!692284 (= e!435636 (and e!435659 tp!208820))))

(declare-fun mapIsEmpty!3125 () Bool)

(assert (=> mapIsEmpty!3125 mapRes!3126))

(declare-fun b!692285 () Bool)

(declare-fun res!313820 () Bool)

(assert (=> b!692285 (=> (not res!313820) (not e!435649))))

(declare-fun valid!666 (CacheUp!386) Bool)

(assert (=> b!692285 (= res!313820 (valid!666 cacheUp!502))))

(declare-fun tp!208813 () Bool)

(declare-fun tp!208816 () Bool)

(declare-fun e!435640 () Bool)

(declare-fun e!435656 () Bool)

(declare-fun array_inv!963 (array!2905) Bool)

(declare-fun array_inv!964 (array!2907) Bool)

(assert (=> b!692286 (= e!435656 (and tp!208818 tp!208816 tp!208813 (array_inv!963 (_keys!1071 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) (array_inv!964 (_values!1056 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) e!435640))))

(declare-fun b!692287 () Bool)

(declare-fun res!313818 () Bool)

(assert (=> b!692287 (=> (not res!313818) (not e!435649))))

(assert (=> b!692287 (= res!313818 (= (list!3152 (_2!4376 lt!284933)) (list!3152 (_2!4376 lt!284936))))))

(declare-fun tp!208814 () Bool)

(declare-fun tp!208823 () Bool)

(declare-fun e!435645 () Bool)

(declare-fun array_inv!965 (array!2909) Bool)

(assert (=> b!692288 (= e!435645 (and tp!208822 tp!208823 tp!208814 (array_inv!963 (_keys!1072 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) (array_inv!965 (_values!1057 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) e!435629))))

(declare-fun b!692289 () Bool)

(declare-fun lt!284937 () MutLongMap!779)

(assert (=> b!692289 (= e!435659 (and e!435650 ((_ is LongMap!779) lt!284937)))))

(assert (=> b!692289 (= lt!284937 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))

(declare-fun b!692290 () Bool)

(declare-fun e!435664 () Bool)

(declare-fun tp!208806 () Bool)

(assert (=> b!692290 (= e!435646 (and e!435664 tp!208806))))

(declare-fun e!435638 () Bool)

(declare-fun tp!208803 () Bool)

(declare-fun b!692291 () Bool)

(declare-fun inv!9624 (String!9476) Bool)

(declare-fun inv!9635 (TokenValueInjection!2836) Bool)

(assert (=> b!692291 (= e!435664 (and tp!208803 (inv!9624 (tag!1768 (h!12917 rules!1486))) (inv!9635 (transformation!1506 (h!12917 rules!1486))) e!435638))))

(assert (=> b!692292 (= e!435638 (and tp!208809 tp!208828))))

(declare-fun mapIsEmpty!3126 () Bool)

(assert (=> mapIsEmpty!3126 mapRes!3127))

(declare-fun b!692293 () Bool)

(declare-fun rulesValidInductive!520 (LexerInterface!1320 List!7530) Bool)

(assert (=> b!692293 (= e!435653 (rulesValidInductive!520 thiss!12529 rules!1486))))

(declare-fun b!692294 () Bool)

(assert (=> b!692294 (= e!435658 e!435645)))

(declare-fun e!435643 () Bool)

(assert (=> b!692295 (= e!435643 (and e!435654 tp!208827))))

(declare-fun mapIsEmpty!3127 () Bool)

(assert (=> mapIsEmpty!3127 mapRes!3125))

(declare-fun b!692296 () Bool)

(assert (=> b!692296 (= e!435651 e!435656)))

(declare-fun b!692297 () Bool)

(declare-fun tp!208829 () Bool)

(assert (=> b!692297 (= e!435648 (and (inv!9629 (c!121614 totalInput!378)) tp!208829))))

(declare-fun e!435635 () Bool)

(assert (=> b!692298 (= e!435635 (and e!435632 tp!208810))))

(declare-fun b!692299 () Bool)

(declare-fun tp!208807 () Bool)

(assert (=> b!692299 (= e!435662 (and (inv!9629 (c!121614 treated!50)) tp!208807))))

(declare-fun b!692300 () Bool)

(assert (=> b!692300 (= e!435639 e!435643)))

(declare-fun b!692301 () Bool)

(declare-fun tp!208824 () Bool)

(assert (=> b!692301 (= e!435640 (and tp!208824 mapRes!3127))))

(declare-fun condMapEmpty!3127 () Bool)

(declare-fun mapDefault!3125 () List!7527)

(assert (=> b!692301 (= condMapEmpty!3127 (= (arr!1313 (_values!1056 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7527)) mapDefault!3125)))))

(declare-fun b!692302 () Bool)

(declare-fun res!313819 () Bool)

(assert (=> b!692302 (=> (not res!313819) (not e!435649))))

(declare-fun valid!667 (CacheFindLongestMatch!46) Bool)

(assert (=> b!692302 (= res!313819 (valid!667 cacheFindLongestMatch!74))))

(declare-fun tp!208825 () Bool)

(declare-fun tp!208804 () Bool)

(declare-fun array_inv!966 (array!2911) Bool)

(assert (=> b!692303 (= e!435647 (and tp!208805 tp!208825 tp!208804 (array_inv!963 (_keys!1073 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) (array_inv!966 (_values!1058 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) e!435652))))

(declare-fun b!692304 () Bool)

(assert (=> b!692304 (= e!435655 e!435644)))

(declare-fun res!313822 () Bool)

(assert (=> b!692304 (=> (not res!313822) (not e!435644))))

(assert (=> b!692304 (= res!313822 (= lt!284935 lt!284928))))

(declare-fun ++!1961 (List!7525 List!7525) List!7525)

(assert (=> b!692304 (= lt!284928 (++!1961 lt!284934 lt!284932))))

(assert (=> b!692304 (= lt!284935 (list!3152 totalInput!378))))

(assert (=> b!692304 (= lt!284932 (list!3152 input!870))))

(assert (=> b!692304 (= lt!284934 (list!3152 treated!50))))

(declare-fun b!692305 () Bool)

(assert (=> b!692305 (= e!435666 (and e!435635 (inv!9631 (totalInput!1804 cacheFindLongestMatch!74)) e!435631))))

(declare-fun b!692306 () Bool)

(declare-fun res!313812 () Bool)

(assert (=> b!692306 (=> (not res!313812) (not e!435655))))

(declare-fun isEmpty!4881 (List!7530) Bool)

(assert (=> b!692306 (= res!313812 (not (isEmpty!4881 rules!1486)))))

(assert (= (and start!66164 res!313824) b!692306))

(assert (= (and b!692306 res!313812) b!692268))

(assert (= (and b!692268 res!313814) b!692304))

(assert (= (and b!692304 res!313822) b!692267))

(assert (= (and b!692267 res!313821) b!692279))

(assert (= (and b!692279 res!313813) b!692275))

(assert (= (and b!692275 res!313817) b!692287))

(assert (= (and b!692287 res!313818) b!692285))

(assert (= (and b!692285 res!313820) b!692280))

(assert (= (and b!692280 res!313823) b!692302))

(assert (= (and b!692302 res!313819) b!692265))

(assert (= (and b!692265 res!313815) b!692281))

(assert (= (and b!692281 (not res!313816)) b!692293))

(assert (= start!66164 b!692266))

(assert (= start!66164 b!692299))

(assert (= start!66164 b!692297))

(assert (= start!66164 b!692274))

(assert (= b!692291 b!692292))

(assert (= b!692290 b!692291))

(assert (= (and start!66164 ((_ is Cons!7516) rules!1486)) b!692290))

(assert (= (and b!692273 condMapEmpty!3126) mapIsEmpty!3127))

(assert (= (and b!692273 (not condMapEmpty!3126)) mapNonEmpty!3126))

(assert (= b!692303 b!692273))

(assert (= b!692282 b!692303))

(assert (= b!692272 b!692282))

(assert (= (and b!692289 ((_ is LongMap!779) (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))) b!692272))

(assert (= b!692284 b!692289))

(assert (= (and b!692269 ((_ is HashMap!751) (cache!1138 cacheUp!502))) b!692284))

(assert (= start!66164 b!692269))

(assert (= (and b!692277 condMapEmpty!3125) mapIsEmpty!3125))

(assert (= (and b!692277 (not condMapEmpty!3125)) mapNonEmpty!3127))

(assert (= b!692288 b!692277))

(assert (= b!692294 b!692288))

(assert (= b!692276 b!692294))

(assert (= (and b!692270 ((_ is LongMap!778) (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))) b!692276))

(assert (= b!692295 b!692270))

(assert (= (and b!692300 ((_ is HashMap!750) (cache!1137 cacheDown!515))) b!692295))

(assert (= start!66164 b!692300))

(assert (= (and b!692301 condMapEmpty!3127) mapIsEmpty!3126))

(assert (= (and b!692301 (not condMapEmpty!3127)) mapNonEmpty!3125))

(assert (= b!692286 b!692301))

(assert (= b!692296 b!692286))

(assert (= b!692278 b!692296))

(assert (= (and b!692271 ((_ is LongMap!777) (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))) b!692278))

(assert (= b!692298 b!692271))

(assert (= (and b!692305 ((_ is HashMap!749) (cache!1136 cacheFindLongestMatch!74))) b!692298))

(assert (= b!692305 b!692283))

(assert (= start!66164 b!692305))

(declare-fun m!948280 () Bool)

(assert (=> mapNonEmpty!3125 m!948280))

(declare-fun m!948282 () Bool)

(assert (=> b!692299 m!948282))

(declare-fun m!948284 () Bool)

(assert (=> b!692283 m!948284))

(declare-fun m!948286 () Bool)

(assert (=> b!692268 m!948286))

(declare-fun m!948288 () Bool)

(assert (=> mapNonEmpty!3127 m!948288))

(declare-fun m!948290 () Bool)

(assert (=> b!692303 m!948290))

(declare-fun m!948292 () Bool)

(assert (=> b!692303 m!948292))

(declare-fun m!948294 () Bool)

(assert (=> b!692267 m!948294))

(declare-fun m!948296 () Bool)

(assert (=> b!692267 m!948296))

(declare-fun m!948298 () Bool)

(assert (=> b!692267 m!948298))

(declare-fun m!948300 () Bool)

(assert (=> b!692306 m!948300))

(declare-fun m!948302 () Bool)

(assert (=> b!692291 m!948302))

(declare-fun m!948304 () Bool)

(assert (=> b!692291 m!948304))

(declare-fun m!948306 () Bool)

(assert (=> b!692281 m!948306))

(declare-fun m!948308 () Bool)

(assert (=> b!692281 m!948308))

(declare-fun m!948310 () Bool)

(assert (=> b!692281 m!948310))

(declare-fun m!948312 () Bool)

(assert (=> b!692305 m!948312))

(declare-fun m!948314 () Bool)

(assert (=> b!692266 m!948314))

(declare-fun m!948316 () Bool)

(assert (=> b!692288 m!948316))

(declare-fun m!948318 () Bool)

(assert (=> b!692288 m!948318))

(declare-fun m!948320 () Bool)

(assert (=> b!692304 m!948320))

(declare-fun m!948322 () Bool)

(assert (=> b!692304 m!948322))

(declare-fun m!948324 () Bool)

(assert (=> b!692304 m!948324))

(declare-fun m!948326 () Bool)

(assert (=> b!692304 m!948326))

(declare-fun m!948328 () Bool)

(assert (=> b!692293 m!948328))

(declare-fun m!948330 () Bool)

(assert (=> b!692280 m!948330))

(declare-fun m!948332 () Bool)

(assert (=> b!692297 m!948332))

(declare-fun m!948334 () Bool)

(assert (=> b!692302 m!948334))

(declare-fun m!948336 () Bool)

(assert (=> b!692275 m!948336))

(declare-fun m!948338 () Bool)

(assert (=> b!692275 m!948338))

(assert (=> b!692275 m!948336))

(declare-fun m!948340 () Bool)

(assert (=> b!692275 m!948340))

(declare-fun m!948342 () Bool)

(assert (=> b!692275 m!948342))

(declare-fun m!948344 () Bool)

(assert (=> b!692275 m!948344))

(declare-fun m!948346 () Bool)

(assert (=> mapNonEmpty!3126 m!948346))

(declare-fun m!948348 () Bool)

(assert (=> start!66164 m!948348))

(declare-fun m!948350 () Bool)

(assert (=> start!66164 m!948350))

(declare-fun m!948352 () Bool)

(assert (=> start!66164 m!948352))

(declare-fun m!948354 () Bool)

(assert (=> start!66164 m!948354))

(declare-fun m!948356 () Bool)

(assert (=> start!66164 m!948356))

(declare-fun m!948358 () Bool)

(assert (=> start!66164 m!948358))

(declare-fun m!948360 () Bool)

(assert (=> start!66164 m!948360))

(declare-fun m!948362 () Bool)

(assert (=> b!692279 m!948362))

(assert (=> b!692279 m!948362))

(declare-fun m!948364 () Bool)

(assert (=> b!692279 m!948364))

(declare-fun m!948366 () Bool)

(assert (=> b!692274 m!948366))

(declare-fun m!948368 () Bool)

(assert (=> b!692287 m!948368))

(declare-fun m!948370 () Bool)

(assert (=> b!692287 m!948370))

(declare-fun m!948372 () Bool)

(assert (=> b!692286 m!948372))

(declare-fun m!948374 () Bool)

(assert (=> b!692286 m!948374))

(declare-fun m!948376 () Bool)

(assert (=> b!692285 m!948376))

(check-sat (not b!692297) (not b!692291) (not b_next!19735) (not b_next!19743) (not start!66164) (not b!692283) b_and!63465 b_and!63477 (not b!692279) (not b_next!19747) (not b!692293) b_and!63469 (not b!692274) (not b!692302) (not b_next!19733) (not b!692288) (not b!692305) b_and!63463 (not b!692277) (not b_next!19745) (not b!692303) b_and!63475 (not b!692287) (not b_next!19741) (not mapNonEmpty!3126) (not b!692281) (not b!692280) (not b!692306) (not b!692299) (not b!692266) (not b!692275) (not b_next!19737) (not b_next!19739) b_and!63473 (not mapNonEmpty!3127) (not b!692267) b_and!63467 (not b!692273) (not b!692304) (not mapNonEmpty!3125) (not b!692285) (not b!692268) (not b!692286) (not b!692290) b_and!63471 (not b!692301))
(check-sat (not b_next!19733) (not b_next!19741) b_and!63473 b_and!63467 (not b_next!19735) (not b_next!19743) b_and!63465 b_and!63477 b_and!63471 (not b_next!19747) b_and!63469 b_and!63463 b_and!63475 (not b_next!19745) (not b_next!19737) (not b_next!19739))
(get-model)

(declare-fun d!232614 () Bool)

(assert (=> d!232614 (= (isEmpty!4881 rules!1486) ((_ is Nil!7516) rules!1486))))

(assert (=> b!692306 d!232614))

(declare-fun d!232616 () Bool)

(declare-fun list!3153 (Conc!2651) List!7525)

(assert (=> d!232616 (= (list!3152 (_2!4376 lt!284933)) (list!3153 (c!121614 (_2!4376 lt!284933))))))

(declare-fun bs!137376 () Bool)

(assert (= bs!137376 d!232616))

(declare-fun m!948378 () Bool)

(assert (=> bs!137376 m!948378))

(assert (=> b!692287 d!232616))

(declare-fun d!232618 () Bool)

(assert (=> d!232618 (= (list!3152 (_2!4376 lt!284936)) (list!3153 (c!121614 (_2!4376 lt!284936))))))

(declare-fun bs!137377 () Bool)

(assert (= bs!137377 d!232618))

(declare-fun m!948380 () Bool)

(assert (=> bs!137377 m!948380))

(assert (=> b!692287 d!232618))

(declare-fun d!232620 () Bool)

(assert (=> d!232620 (= (array_inv!963 (_keys!1071 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) (bvsge (size!6139 (_keys!1071 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!692286 d!232620))

(declare-fun d!232622 () Bool)

(assert (=> d!232622 (= (array_inv!964 (_values!1056 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) (bvsge (size!6140 (_values!1056 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!692286 d!232622))

(declare-fun d!232624 () Bool)

(assert (=> d!232624 (= (array_inv!963 (_keys!1072 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) (bvsge (size!6139 (_keys!1072 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!692288 d!232624))

(declare-fun d!232626 () Bool)

(assert (=> d!232626 (= (array_inv!965 (_values!1057 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) (bvsge (size!6142 (_values!1057 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!692288 d!232626))

(declare-fun d!232628 () Bool)

(declare-fun list!3154 (Conc!2652) List!7529)

(assert (=> d!232628 (= (list!3151 (_1!4376 lt!284938)) (list!3154 (c!121615 (_1!4376 lt!284938))))))

(declare-fun bs!137378 () Bool)

(assert (= bs!137378 d!232628))

(declare-fun m!948382 () Bool)

(assert (=> bs!137378 m!948382))

(assert (=> b!692267 d!232628))

(declare-fun d!232630 () Bool)

(assert (=> d!232630 (= (list!3151 acc!372) (list!3154 (c!121615 acc!372)))))

(declare-fun bs!137379 () Bool)

(assert (= bs!137379 d!232630))

(declare-fun m!948384 () Bool)

(assert (=> bs!137379 m!948384))

(assert (=> b!692267 d!232630))

(declare-fun b!692321 () Bool)

(declare-fun e!435675 () tuple2!7916)

(assert (=> b!692321 (= e!435675 (tuple2!7917 (BalanceConc!5317 Empty!2652) treated!50))))

(declare-fun b!692322 () Bool)

(declare-fun e!435678 () Bool)

(declare-fun lt!284946 () tuple2!7916)

(assert (=> b!692322 (= e!435678 (= (list!3152 (_2!4376 lt!284946)) (list!3152 treated!50)))))

(declare-fun b!692324 () Bool)

(declare-fun lt!284945 () tuple2!7916)

(declare-datatypes ((tuple2!7924 0))(
  ( (tuple2!7925 (_1!4381 Token!2712) (_2!4381 BalanceConc!5314)) )
))
(declare-datatypes ((Option!1707 0))(
  ( (None!1706) (Some!1706 (v!17679 tuple2!7924)) )
))
(declare-fun lt!284947 () Option!1707)

(declare-fun prepend!258 (BalanceConc!5316 Token!2712) BalanceConc!5316)

(assert (=> b!692324 (= e!435675 (tuple2!7917 (prepend!258 (_1!4376 lt!284945) (_1!4381 (v!17679 lt!284947))) (_2!4376 lt!284945)))))

(assert (=> b!692324 (= lt!284945 (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284947))))))

(declare-fun b!692325 () Bool)

(declare-fun e!435677 () Bool)

(assert (=> b!692325 (= e!435678 e!435677)))

(declare-fun res!313833 () Bool)

(declare-fun size!6144 (BalanceConc!5314) Int)

(assert (=> b!692325 (= res!313833 (< (size!6144 (_2!4376 lt!284946)) (size!6144 treated!50)))))

(assert (=> b!692325 (=> (not res!313833) (not e!435677))))

(declare-fun b!692326 () Bool)

(declare-fun res!313832 () Bool)

(declare-fun e!435676 () Bool)

(assert (=> b!692326 (=> (not res!313832) (not e!435676))))

(declare-datatypes ((tuple2!7926 0))(
  ( (tuple2!7927 (_1!4382 List!7529) (_2!4382 List!7525)) )
))
(declare-fun lexList!323 (LexerInterface!1320 List!7530 List!7525) tuple2!7926)

(assert (=> b!692326 (= res!313832 (= (list!3151 (_1!4376 lt!284946)) (_1!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 treated!50)))))))

(declare-fun b!692327 () Bool)

(declare-fun isEmpty!4882 (BalanceConc!5316) Bool)

(assert (=> b!692327 (= e!435677 (not (isEmpty!4882 (_1!4376 lt!284946))))))

(declare-fun b!692323 () Bool)

(assert (=> b!692323 (= e!435676 (= (list!3152 (_2!4376 lt!284946)) (_2!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 treated!50)))))))

(declare-fun d!232632 () Bool)

(assert (=> d!232632 e!435676))

(declare-fun res!313831 () Bool)

(assert (=> d!232632 (=> (not res!313831) (not e!435676))))

(assert (=> d!232632 (= res!313831 e!435678)))

(declare-fun c!121622 () Bool)

(declare-fun size!6145 (BalanceConc!5316) Int)

(assert (=> d!232632 (= c!121622 (> (size!6145 (_1!4376 lt!284946)) 0))))

(assert (=> d!232632 (= lt!284946 e!435675)))

(declare-fun c!121621 () Bool)

(assert (=> d!232632 (= c!121621 ((_ is Some!1706) lt!284947))))

(declare-fun maxPrefixZipperSequence!457 (LexerInterface!1320 List!7530 BalanceConc!5314) Option!1707)

(assert (=> d!232632 (= lt!284947 (maxPrefixZipperSequence!457 thiss!12529 rules!1486 treated!50))))

(assert (=> d!232632 (= (lexRec!163 thiss!12529 rules!1486 treated!50) lt!284946)))

(assert (= (and d!232632 c!121621) b!692324))

(assert (= (and d!232632 (not c!121621)) b!692321))

(assert (= (and d!232632 c!121622) b!692325))

(assert (= (and d!232632 (not c!121622)) b!692322))

(assert (= (and b!692325 res!313833) b!692327))

(assert (= (and d!232632 res!313831) b!692326))

(assert (= (and b!692326 res!313832) b!692323))

(declare-fun m!948386 () Bool)

(assert (=> d!232632 m!948386))

(declare-fun m!948388 () Bool)

(assert (=> d!232632 m!948388))

(declare-fun m!948390 () Bool)

(assert (=> b!692326 m!948390))

(assert (=> b!692326 m!948326))

(assert (=> b!692326 m!948326))

(declare-fun m!948392 () Bool)

(assert (=> b!692326 m!948392))

(declare-fun m!948394 () Bool)

(assert (=> b!692327 m!948394))

(declare-fun m!948396 () Bool)

(assert (=> b!692324 m!948396))

(declare-fun m!948398 () Bool)

(assert (=> b!692324 m!948398))

(declare-fun m!948400 () Bool)

(assert (=> b!692323 m!948400))

(assert (=> b!692323 m!948326))

(assert (=> b!692323 m!948326))

(assert (=> b!692323 m!948392))

(declare-fun m!948402 () Bool)

(assert (=> b!692325 m!948402))

(declare-fun m!948404 () Bool)

(assert (=> b!692325 m!948404))

(assert (=> b!692322 m!948400))

(assert (=> b!692322 m!948326))

(assert (=> b!692267 d!232632))

(declare-fun d!232634 () Bool)

(declare-fun c!121625 () Bool)

(assert (=> d!232634 (= c!121625 ((_ is Node!2652) (c!121615 acc!372)))))

(declare-fun e!435683 () Bool)

(assert (=> d!232634 (= (inv!9628 (c!121615 acc!372)) e!435683)))

(declare-fun b!692334 () Bool)

(declare-fun inv!9636 (Conc!2652) Bool)

(assert (=> b!692334 (= e!435683 (inv!9636 (c!121615 acc!372)))))

(declare-fun b!692335 () Bool)

(declare-fun e!435684 () Bool)

(assert (=> b!692335 (= e!435683 e!435684)))

(declare-fun res!313836 () Bool)

(assert (=> b!692335 (= res!313836 (not ((_ is Leaf!3928) (c!121615 acc!372))))))

(assert (=> b!692335 (=> res!313836 e!435684)))

(declare-fun b!692336 () Bool)

(declare-fun inv!9637 (Conc!2652) Bool)

(assert (=> b!692336 (= e!435684 (inv!9637 (c!121615 acc!372)))))

(assert (= (and d!232634 c!121625) b!692334))

(assert (= (and d!232634 (not c!121625)) b!692335))

(assert (= (and b!692335 (not res!313836)) b!692336))

(declare-fun m!948406 () Bool)

(assert (=> b!692334 m!948406))

(declare-fun m!948408 () Bool)

(assert (=> b!692336 m!948408))

(assert (=> b!692266 d!232634))

(declare-fun d!232636 () Bool)

(assert (=> d!232636 (= (array_inv!963 (_keys!1073 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) (bvsge (size!6139 (_keys!1073 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!692303 d!232636))

(declare-fun d!232638 () Bool)

(assert (=> d!232638 (= (array_inv!966 (_values!1058 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) (bvsge (size!6143 (_values!1058 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!692303 d!232638))

(declare-fun d!232640 () Bool)

(declare-fun res!313839 () Bool)

(declare-fun e!435687 () Bool)

(assert (=> d!232640 (=> (not res!313839) (not e!435687))))

(declare-fun rulesValid!528 (LexerInterface!1320 List!7530) Bool)

(assert (=> d!232640 (= res!313839 (rulesValid!528 thiss!12529 rules!1486))))

(assert (=> d!232640 (= (rulesInvariant!1253 thiss!12529 rules!1486) e!435687)))

(declare-fun b!692339 () Bool)

(declare-datatypes ((List!7533 0))(
  ( (Nil!7519) (Cons!7519 (h!12920 String!9476) (t!87351 List!7533)) )
))
(declare-fun noDuplicateTag!528 (LexerInterface!1320 List!7530 List!7533) Bool)

(assert (=> b!692339 (= e!435687 (noDuplicateTag!528 thiss!12529 rules!1486 Nil!7519))))

(assert (= (and d!232640 res!313839) b!692339))

(declare-fun m!948410 () Bool)

(assert (=> d!232640 m!948410))

(declare-fun m!948412 () Bool)

(assert (=> b!692339 m!948412))

(assert (=> b!692268 d!232640))

(declare-fun d!232642 () Bool)

(declare-fun isBalanced!696 (Conc!2651) Bool)

(assert (=> d!232642 (= (inv!9631 (totalInput!1804 cacheFindLongestMatch!74)) (isBalanced!696 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))

(declare-fun bs!137380 () Bool)

(assert (= bs!137380 d!232642))

(declare-fun m!948414 () Bool)

(assert (=> bs!137380 m!948414))

(assert (=> b!692305 d!232642))

(declare-fun b!692348 () Bool)

(declare-fun e!435693 () List!7525)

(assert (=> b!692348 (= e!435693 lt!284932)))

(declare-fun b!692350 () Bool)

(declare-fun res!313845 () Bool)

(declare-fun e!435692 () Bool)

(assert (=> b!692350 (=> (not res!313845) (not e!435692))))

(declare-fun lt!284950 () List!7525)

(declare-fun size!6146 (List!7525) Int)

(assert (=> b!692350 (= res!313845 (= (size!6146 lt!284950) (+ (size!6146 lt!284934) (size!6146 lt!284932))))))

(declare-fun b!692349 () Bool)

(assert (=> b!692349 (= e!435693 (Cons!7511 (h!12912 lt!284934) (++!1961 (t!87343 lt!284934) lt!284932)))))

(declare-fun b!692351 () Bool)

(assert (=> b!692351 (= e!435692 (or (not (= lt!284932 Nil!7511)) (= lt!284950 lt!284934)))))

(declare-fun d!232644 () Bool)

(assert (=> d!232644 e!435692))

(declare-fun res!313844 () Bool)

(assert (=> d!232644 (=> (not res!313844) (not e!435692))))

(declare-fun content!1186 (List!7525) (InoxSet C!4292))

(assert (=> d!232644 (= res!313844 (= (content!1186 lt!284950) ((_ map or) (content!1186 lt!284934) (content!1186 lt!284932))))))

(assert (=> d!232644 (= lt!284950 e!435693)))

(declare-fun c!121628 () Bool)

(assert (=> d!232644 (= c!121628 ((_ is Nil!7511) lt!284934))))

(assert (=> d!232644 (= (++!1961 lt!284934 lt!284932) lt!284950)))

(assert (= (and d!232644 c!121628) b!692348))

(assert (= (and d!232644 (not c!121628)) b!692349))

(assert (= (and d!232644 res!313844) b!692350))

(assert (= (and b!692350 res!313845) b!692351))

(declare-fun m!948416 () Bool)

(assert (=> b!692350 m!948416))

(declare-fun m!948418 () Bool)

(assert (=> b!692350 m!948418))

(declare-fun m!948420 () Bool)

(assert (=> b!692350 m!948420))

(declare-fun m!948422 () Bool)

(assert (=> b!692349 m!948422))

(declare-fun m!948424 () Bool)

(assert (=> d!232644 m!948424))

(declare-fun m!948426 () Bool)

(assert (=> d!232644 m!948426))

(declare-fun m!948428 () Bool)

(assert (=> d!232644 m!948428))

(assert (=> b!692304 d!232644))

(declare-fun d!232646 () Bool)

(assert (=> d!232646 (= (list!3152 totalInput!378) (list!3153 (c!121614 totalInput!378)))))

(declare-fun bs!137381 () Bool)

(assert (= bs!137381 d!232646))

(declare-fun m!948430 () Bool)

(assert (=> bs!137381 m!948430))

(assert (=> b!692304 d!232646))

(declare-fun d!232648 () Bool)

(assert (=> d!232648 (= (list!3152 input!870) (list!3153 (c!121614 input!870)))))

(declare-fun bs!137382 () Bool)

(assert (= bs!137382 d!232648))

(declare-fun m!948432 () Bool)

(assert (=> bs!137382 m!948432))

(assert (=> b!692304 d!232648))

(declare-fun d!232650 () Bool)

(assert (=> d!232650 (= (list!3152 treated!50) (list!3153 (c!121614 treated!50)))))

(declare-fun bs!137383 () Bool)

(assert (= bs!137383 d!232650))

(declare-fun m!948434 () Bool)

(assert (=> bs!137383 m!948434))

(assert (=> b!692304 d!232650))

(declare-fun d!232652 () Bool)

(declare-fun validCacheMapUp!61 (MutableMap!751) Bool)

(assert (=> d!232652 (= (valid!666 cacheUp!502) (validCacheMapUp!61 (cache!1138 cacheUp!502)))))

(declare-fun bs!137384 () Bool)

(assert (= bs!137384 d!232652))

(declare-fun m!948436 () Bool)

(assert (=> bs!137384 m!948436))

(assert (=> b!692285 d!232652))

(declare-fun d!232654 () Bool)

(declare-fun c!121631 () Bool)

(assert (=> d!232654 (= c!121631 ((_ is Node!2651) (c!121614 input!870)))))

(declare-fun e!435698 () Bool)

(assert (=> d!232654 (= (inv!9629 (c!121614 input!870)) e!435698)))

(declare-fun b!692358 () Bool)

(declare-fun inv!9638 (Conc!2651) Bool)

(assert (=> b!692358 (= e!435698 (inv!9638 (c!121614 input!870)))))

(declare-fun b!692359 () Bool)

(declare-fun e!435699 () Bool)

(assert (=> b!692359 (= e!435698 e!435699)))

(declare-fun res!313848 () Bool)

(assert (=> b!692359 (= res!313848 (not ((_ is Leaf!3927) (c!121614 input!870))))))

(assert (=> b!692359 (=> res!313848 e!435699)))

(declare-fun b!692360 () Bool)

(declare-fun inv!9639 (Conc!2651) Bool)

(assert (=> b!692360 (= e!435699 (inv!9639 (c!121614 input!870)))))

(assert (= (and d!232654 c!121631) b!692358))

(assert (= (and d!232654 (not c!121631)) b!692359))

(assert (= (and b!692359 (not res!313848)) b!692360))

(declare-fun m!948438 () Bool)

(assert (=> b!692358 m!948438))

(declare-fun m!948440 () Bool)

(assert (=> b!692360 m!948440))

(assert (=> b!692274 d!232654))

(declare-fun d!232656 () Bool)

(assert (=> d!232656 (= (inv!9624 (tag!1768 (h!12917 rules!1486))) (= (mod (str.len (value!48585 (tag!1768 (h!12917 rules!1486)))) 2) 0))))

(assert (=> b!692291 d!232656))

(declare-fun d!232658 () Bool)

(declare-fun res!313851 () Bool)

(declare-fun e!435702 () Bool)

(assert (=> d!232658 (=> (not res!313851) (not e!435702))))

(declare-fun semiInverseModEq!571 (Int Int) Bool)

(assert (=> d!232658 (= res!313851 (semiInverseModEq!571 (toChars!2327 (transformation!1506 (h!12917 rules!1486))) (toValue!2468 (transformation!1506 (h!12917 rules!1486)))))))

(assert (=> d!232658 (= (inv!9635 (transformation!1506 (h!12917 rules!1486))) e!435702)))

(declare-fun b!692363 () Bool)

(declare-fun equivClasses!546 (Int Int) Bool)

(assert (=> b!692363 (= e!435702 (equivClasses!546 (toChars!2327 (transformation!1506 (h!12917 rules!1486))) (toValue!2468 (transformation!1506 (h!12917 rules!1486)))))))

(assert (= (and d!232658 res!313851) b!692363))

(declare-fun m!948442 () Bool)

(assert (=> d!232658 m!948442))

(declare-fun m!948444 () Bool)

(assert (=> b!692363 m!948444))

(assert (=> b!692291 d!232658))

(declare-fun d!232660 () Bool)

(declare-fun c!121632 () Bool)

(assert (=> d!232660 (= c!121632 ((_ is Node!2651) (c!121614 totalInput!378)))))

(declare-fun e!435703 () Bool)

(assert (=> d!232660 (= (inv!9629 (c!121614 totalInput!378)) e!435703)))

(declare-fun b!692364 () Bool)

(assert (=> b!692364 (= e!435703 (inv!9638 (c!121614 totalInput!378)))))

(declare-fun b!692365 () Bool)

(declare-fun e!435704 () Bool)

(assert (=> b!692365 (= e!435703 e!435704)))

(declare-fun res!313852 () Bool)

(assert (=> b!692365 (= res!313852 (not ((_ is Leaf!3927) (c!121614 totalInput!378))))))

(assert (=> b!692365 (=> res!313852 e!435704)))

(declare-fun b!692366 () Bool)

(assert (=> b!692366 (= e!435704 (inv!9639 (c!121614 totalInput!378)))))

(assert (= (and d!232660 c!121632) b!692364))

(assert (= (and d!232660 (not c!121632)) b!692365))

(assert (= (and b!692365 (not res!313852)) b!692366))

(declare-fun m!948446 () Bool)

(assert (=> b!692364 m!948446))

(declare-fun m!948448 () Bool)

(assert (=> b!692366 m!948448))

(assert (=> b!692297 d!232660))

(declare-fun d!232662 () Bool)

(assert (=> d!232662 true))

(declare-fun lt!284953 () Bool)

(declare-fun lambda!21538 () Int)

(declare-fun forall!1956 (List!7530 Int) Bool)

(assert (=> d!232662 (= lt!284953 (forall!1956 rules!1486 lambda!21538))))

(declare-fun e!435709 () Bool)

(assert (=> d!232662 (= lt!284953 e!435709)))

(declare-fun res!313858 () Bool)

(assert (=> d!232662 (=> res!313858 e!435709)))

(assert (=> d!232662 (= res!313858 (not ((_ is Cons!7516) rules!1486)))))

(assert (=> d!232662 (= (rulesValidInductive!520 thiss!12529 rules!1486) lt!284953)))

(declare-fun b!692371 () Bool)

(declare-fun e!435710 () Bool)

(assert (=> b!692371 (= e!435709 e!435710)))

(declare-fun res!313857 () Bool)

(assert (=> b!692371 (=> (not res!313857) (not e!435710))))

(declare-fun ruleValid!462 (LexerInterface!1320 Rule!2812) Bool)

(assert (=> b!692371 (= res!313857 (ruleValid!462 thiss!12529 (h!12917 rules!1486)))))

(declare-fun b!692372 () Bool)

(assert (=> b!692372 (= e!435710 (rulesValidInductive!520 thiss!12529 (t!87348 rules!1486)))))

(assert (= (and d!232662 (not res!313858)) b!692371))

(assert (= (and b!692371 res!313857) b!692372))

(declare-fun m!948450 () Bool)

(assert (=> d!232662 m!948450))

(declare-fun m!948452 () Bool)

(assert (=> b!692371 m!948452))

(declare-fun m!948454 () Bool)

(assert (=> b!692372 m!948454))

(assert (=> b!692293 d!232662))

(declare-fun d!232664 () Bool)

(assert (=> d!232664 (= (list!3151 (_1!4376 lt!284933)) (list!3154 (c!121615 (_1!4376 lt!284933))))))

(declare-fun bs!137385 () Bool)

(assert (= bs!137385 d!232664))

(declare-fun m!948456 () Bool)

(assert (=> bs!137385 m!948456))

(assert (=> b!692275 d!232664))

(declare-fun b!692375 () Bool)

(declare-fun e!435711 () tuple2!7916)

(assert (=> b!692375 (= e!435711 (tuple2!7917 (BalanceConc!5317 Empty!2652) input!870))))

(declare-fun b!692376 () Bool)

(declare-fun e!435714 () Bool)

(declare-fun lt!284955 () tuple2!7916)

(assert (=> b!692376 (= e!435714 (= (list!3152 (_2!4376 lt!284955)) (list!3152 input!870)))))

(declare-fun b!692378 () Bool)

(declare-fun lt!284954 () tuple2!7916)

(declare-fun lt!284956 () Option!1707)

(assert (=> b!692378 (= e!435711 (tuple2!7917 (prepend!258 (_1!4376 lt!284954) (_1!4381 (v!17679 lt!284956))) (_2!4376 lt!284954)))))

(assert (=> b!692378 (= lt!284954 (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284956))))))

(declare-fun b!692379 () Bool)

(declare-fun e!435713 () Bool)

(assert (=> b!692379 (= e!435714 e!435713)))

(declare-fun res!313861 () Bool)

(assert (=> b!692379 (= res!313861 (< (size!6144 (_2!4376 lt!284955)) (size!6144 input!870)))))

(assert (=> b!692379 (=> (not res!313861) (not e!435713))))

(declare-fun b!692380 () Bool)

(declare-fun res!313860 () Bool)

(declare-fun e!435712 () Bool)

(assert (=> b!692380 (=> (not res!313860) (not e!435712))))

(assert (=> b!692380 (= res!313860 (= (list!3151 (_1!4376 lt!284955)) (_1!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 input!870)))))))

(declare-fun b!692381 () Bool)

(assert (=> b!692381 (= e!435713 (not (isEmpty!4882 (_1!4376 lt!284955))))))

(declare-fun b!692377 () Bool)

(assert (=> b!692377 (= e!435712 (= (list!3152 (_2!4376 lt!284955)) (_2!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 input!870)))))))

(declare-fun d!232666 () Bool)

(assert (=> d!232666 e!435712))

(declare-fun res!313859 () Bool)

(assert (=> d!232666 (=> (not res!313859) (not e!435712))))

(assert (=> d!232666 (= res!313859 e!435714)))

(declare-fun c!121634 () Bool)

(assert (=> d!232666 (= c!121634 (> (size!6145 (_1!4376 lt!284955)) 0))))

(assert (=> d!232666 (= lt!284955 e!435711)))

(declare-fun c!121633 () Bool)

(assert (=> d!232666 (= c!121633 ((_ is Some!1706) lt!284956))))

(assert (=> d!232666 (= lt!284956 (maxPrefixZipperSequence!457 thiss!12529 rules!1486 input!870))))

(assert (=> d!232666 (= (lexRec!163 thiss!12529 rules!1486 input!870) lt!284955)))

(assert (= (and d!232666 c!121633) b!692378))

(assert (= (and d!232666 (not c!121633)) b!692375))

(assert (= (and d!232666 c!121634) b!692379))

(assert (= (and d!232666 (not c!121634)) b!692376))

(assert (= (and b!692379 res!313861) b!692381))

(assert (= (and d!232666 res!313859) b!692380))

(assert (= (and b!692380 res!313860) b!692377))

(declare-fun m!948458 () Bool)

(assert (=> d!232666 m!948458))

(declare-fun m!948460 () Bool)

(assert (=> d!232666 m!948460))

(declare-fun m!948462 () Bool)

(assert (=> b!692380 m!948462))

(assert (=> b!692380 m!948324))

(assert (=> b!692380 m!948324))

(declare-fun m!948464 () Bool)

(assert (=> b!692380 m!948464))

(declare-fun m!948466 () Bool)

(assert (=> b!692381 m!948466))

(declare-fun m!948468 () Bool)

(assert (=> b!692378 m!948468))

(declare-fun m!948470 () Bool)

(assert (=> b!692378 m!948470))

(declare-fun m!948472 () Bool)

(assert (=> b!692377 m!948472))

(assert (=> b!692377 m!948324))

(assert (=> b!692377 m!948324))

(assert (=> b!692377 m!948464))

(declare-fun m!948474 () Bool)

(assert (=> b!692379 m!948474))

(declare-fun m!948476 () Bool)

(assert (=> b!692379 m!948476))

(assert (=> b!692376 m!948472))

(assert (=> b!692376 m!948324))

(assert (=> b!692275 d!232666))

(declare-fun b!692393 () Bool)

(declare-fun e!435717 () Bool)

(declare-fun lt!284959 () BalanceConc!5316)

(declare-fun ++!1962 (List!7529 List!7529) List!7529)

(assert (=> b!692393 (= e!435717 (= (list!3151 lt!284959) (++!1962 (list!3151 acc!372) (list!3151 (_1!4376 lt!284936)))))))

(declare-fun b!692392 () Bool)

(declare-fun res!313870 () Bool)

(assert (=> b!692392 (=> (not res!313870) (not e!435717))))

(declare-fun height!318 (Conc!2652) Int)

(declare-fun ++!1963 (Conc!2652 Conc!2652) Conc!2652)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!692392 (= res!313870 (>= (height!318 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))) (max!0 (height!318 (c!121615 acc!372)) (height!318 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!692391 () Bool)

(declare-fun res!313871 () Bool)

(assert (=> b!692391 (=> (not res!313871) (not e!435717))))

(assert (=> b!692391 (= res!313871 (<= (height!318 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))) (+ (max!0 (height!318 (c!121615 acc!372)) (height!318 (c!121615 (_1!4376 lt!284936)))) 1)))))

(declare-fun d!232668 () Bool)

(assert (=> d!232668 e!435717))

(declare-fun res!313873 () Bool)

(assert (=> d!232668 (=> (not res!313873) (not e!435717))))

(declare-fun appendAssocInst!133 (Conc!2652 Conc!2652) Bool)

(assert (=> d!232668 (= res!313873 (appendAssocInst!133 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))))

(assert (=> d!232668 (= lt!284959 (BalanceConc!5317 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))))))

(assert (=> d!232668 (= (++!1960 acc!372 (_1!4376 lt!284936)) lt!284959)))

(declare-fun b!692390 () Bool)

(declare-fun res!313872 () Bool)

(assert (=> b!692390 (=> (not res!313872) (not e!435717))))

(declare-fun isBalanced!697 (Conc!2652) Bool)

(assert (=> b!692390 (= res!313872 (isBalanced!697 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))))))

(assert (= (and d!232668 res!313873) b!692390))

(assert (= (and b!692390 res!313872) b!692391))

(assert (= (and b!692391 res!313871) b!692392))

(assert (= (and b!692392 res!313870) b!692393))

(declare-fun m!948478 () Bool)

(assert (=> d!232668 m!948478))

(declare-fun m!948480 () Bool)

(assert (=> d!232668 m!948480))

(declare-fun m!948482 () Bool)

(assert (=> b!692392 m!948482))

(declare-fun m!948484 () Bool)

(assert (=> b!692392 m!948484))

(assert (=> b!692392 m!948480))

(declare-fun m!948486 () Bool)

(assert (=> b!692392 m!948486))

(assert (=> b!692392 m!948480))

(assert (=> b!692392 m!948482))

(assert (=> b!692392 m!948484))

(declare-fun m!948488 () Bool)

(assert (=> b!692392 m!948488))

(declare-fun m!948490 () Bool)

(assert (=> b!692393 m!948490))

(assert (=> b!692393 m!948296))

(declare-fun m!948492 () Bool)

(assert (=> b!692393 m!948492))

(assert (=> b!692393 m!948296))

(assert (=> b!692393 m!948492))

(declare-fun m!948494 () Bool)

(assert (=> b!692393 m!948494))

(assert (=> b!692391 m!948482))

(assert (=> b!692391 m!948484))

(assert (=> b!692391 m!948480))

(assert (=> b!692391 m!948486))

(assert (=> b!692391 m!948480))

(assert (=> b!692391 m!948482))

(assert (=> b!692391 m!948484))

(assert (=> b!692391 m!948488))

(assert (=> b!692390 m!948480))

(assert (=> b!692390 m!948480))

(declare-fun m!948496 () Bool)

(assert (=> b!692390 m!948496))

(assert (=> b!692275 d!232668))

(declare-fun b!692394 () Bool)

(declare-fun e!435718 () tuple2!7916)

(assert (=> b!692394 (= e!435718 (tuple2!7917 (BalanceConc!5317 Empty!2652) totalInput!378))))

(declare-fun b!692395 () Bool)

(declare-fun e!435721 () Bool)

(declare-fun lt!284961 () tuple2!7916)

(assert (=> b!692395 (= e!435721 (= (list!3152 (_2!4376 lt!284961)) (list!3152 totalInput!378)))))

(declare-fun b!692397 () Bool)

(declare-fun lt!284960 () tuple2!7916)

(declare-fun lt!284962 () Option!1707)

(assert (=> b!692397 (= e!435718 (tuple2!7917 (prepend!258 (_1!4376 lt!284960) (_1!4381 (v!17679 lt!284962))) (_2!4376 lt!284960)))))

(assert (=> b!692397 (= lt!284960 (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284962))))))

(declare-fun b!692398 () Bool)

(declare-fun e!435720 () Bool)

(assert (=> b!692398 (= e!435721 e!435720)))

(declare-fun res!313876 () Bool)

(assert (=> b!692398 (= res!313876 (< (size!6144 (_2!4376 lt!284961)) (size!6144 totalInput!378)))))

(assert (=> b!692398 (=> (not res!313876) (not e!435720))))

(declare-fun b!692399 () Bool)

(declare-fun res!313875 () Bool)

(declare-fun e!435719 () Bool)

(assert (=> b!692399 (=> (not res!313875) (not e!435719))))

(assert (=> b!692399 (= res!313875 (= (list!3151 (_1!4376 lt!284961)) (_1!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 totalInput!378)))))))

(declare-fun b!692400 () Bool)

(assert (=> b!692400 (= e!435720 (not (isEmpty!4882 (_1!4376 lt!284961))))))

(declare-fun b!692396 () Bool)

(assert (=> b!692396 (= e!435719 (= (list!3152 (_2!4376 lt!284961)) (_2!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 totalInput!378)))))))

(declare-fun d!232670 () Bool)

(assert (=> d!232670 e!435719))

(declare-fun res!313874 () Bool)

(assert (=> d!232670 (=> (not res!313874) (not e!435719))))

(assert (=> d!232670 (= res!313874 e!435721)))

(declare-fun c!121639 () Bool)

(assert (=> d!232670 (= c!121639 (> (size!6145 (_1!4376 lt!284961)) 0))))

(assert (=> d!232670 (= lt!284961 e!435718)))

(declare-fun c!121638 () Bool)

(assert (=> d!232670 (= c!121638 ((_ is Some!1706) lt!284962))))

(assert (=> d!232670 (= lt!284962 (maxPrefixZipperSequence!457 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!232670 (= (lexRec!163 thiss!12529 rules!1486 totalInput!378) lt!284961)))

(assert (= (and d!232670 c!121638) b!692397))

(assert (= (and d!232670 (not c!121638)) b!692394))

(assert (= (and d!232670 c!121639) b!692398))

(assert (= (and d!232670 (not c!121639)) b!692395))

(assert (= (and b!692398 res!313876) b!692400))

(assert (= (and d!232670 res!313874) b!692399))

(assert (= (and b!692399 res!313875) b!692396))

(declare-fun m!948498 () Bool)

(assert (=> d!232670 m!948498))

(declare-fun m!948500 () Bool)

(assert (=> d!232670 m!948500))

(declare-fun m!948502 () Bool)

(assert (=> b!692399 m!948502))

(assert (=> b!692399 m!948322))

(assert (=> b!692399 m!948322))

(declare-fun m!948504 () Bool)

(assert (=> b!692399 m!948504))

(declare-fun m!948506 () Bool)

(assert (=> b!692400 m!948506))

(declare-fun m!948508 () Bool)

(assert (=> b!692397 m!948508))

(declare-fun m!948510 () Bool)

(assert (=> b!692397 m!948510))

(declare-fun m!948512 () Bool)

(assert (=> b!692396 m!948512))

(assert (=> b!692396 m!948322))

(assert (=> b!692396 m!948322))

(assert (=> b!692396 m!948504))

(declare-fun m!948514 () Bool)

(assert (=> b!692398 m!948514))

(declare-fun m!948516 () Bool)

(assert (=> b!692398 m!948516))

(assert (=> b!692395 m!948512))

(assert (=> b!692395 m!948322))

(assert (=> b!692275 d!232670))

(declare-fun d!232672 () Bool)

(assert (=> d!232672 (= (list!3151 (++!1960 acc!372 (_1!4376 lt!284936))) (list!3154 (c!121615 (++!1960 acc!372 (_1!4376 lt!284936)))))))

(declare-fun bs!137386 () Bool)

(assert (= bs!137386 d!232672))

(declare-fun m!948518 () Bool)

(assert (=> bs!137386 m!948518))

(assert (=> b!692275 d!232672))

(declare-fun d!232674 () Bool)

(declare-fun validCacheMapFindLongestMatch!7 (MutableMap!749 BalanceConc!5314) Bool)

(assert (=> d!232674 (= (valid!667 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!7 (cache!1136 cacheFindLongestMatch!74) (totalInput!1804 cacheFindLongestMatch!74)))))

(declare-fun bs!137387 () Bool)

(assert (= bs!137387 d!232674))

(declare-fun m!948520 () Bool)

(assert (=> bs!137387 m!948520))

(assert (=> b!692302 d!232674))

(declare-fun d!232676 () Bool)

(declare-fun c!121640 () Bool)

(assert (=> d!232676 (= c!121640 ((_ is Node!2651) (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))

(declare-fun e!435722 () Bool)

(assert (=> d!232676 (= (inv!9629 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) e!435722)))

(declare-fun b!692401 () Bool)

(assert (=> b!692401 (= e!435722 (inv!9638 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))

(declare-fun b!692402 () Bool)

(declare-fun e!435723 () Bool)

(assert (=> b!692402 (= e!435722 e!435723)))

(declare-fun res!313877 () Bool)

(assert (=> b!692402 (= res!313877 (not ((_ is Leaf!3927) (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(assert (=> b!692402 (=> res!313877 e!435723)))

(declare-fun b!692403 () Bool)

(assert (=> b!692403 (= e!435723 (inv!9639 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))

(assert (= (and d!232676 c!121640) b!692401))

(assert (= (and d!232676 (not c!121640)) b!692402))

(assert (= (and b!692402 (not res!313877)) b!692403))

(declare-fun m!948522 () Bool)

(assert (=> b!692401 m!948522))

(declare-fun m!948524 () Bool)

(assert (=> b!692403 m!948524))

(assert (=> b!692283 d!232676))

(declare-fun d!232678 () Bool)

(declare-fun res!313880 () Bool)

(declare-fun e!435726 () Bool)

(assert (=> d!232678 (=> (not res!313880) (not e!435726))))

(assert (=> d!232678 (= res!313880 ((_ is HashMap!749) (cache!1136 cacheFindLongestMatch!74)))))

(assert (=> d!232678 (= (inv!9634 cacheFindLongestMatch!74) e!435726)))

(declare-fun b!692406 () Bool)

(assert (=> b!692406 (= e!435726 (validCacheMapFindLongestMatch!7 (cache!1136 cacheFindLongestMatch!74) (totalInput!1804 cacheFindLongestMatch!74)))))

(assert (= (and d!232678 res!313880) b!692406))

(assert (=> b!692406 m!948520))

(assert (=> start!66164 d!232678))

(declare-fun d!232680 () Bool)

(assert (=> d!232680 (= (inv!9630 acc!372) (isBalanced!697 (c!121615 acc!372)))))

(declare-fun bs!137388 () Bool)

(assert (= bs!137388 d!232680))

(declare-fun m!948526 () Bool)

(assert (=> bs!137388 m!948526))

(assert (=> start!66164 d!232680))

(declare-fun d!232682 () Bool)

(assert (=> d!232682 (= (inv!9631 input!870) (isBalanced!696 (c!121614 input!870)))))

(declare-fun bs!137389 () Bool)

(assert (= bs!137389 d!232682))

(declare-fun m!948528 () Bool)

(assert (=> bs!137389 m!948528))

(assert (=> start!66164 d!232682))

(declare-fun d!232684 () Bool)

(declare-fun res!313883 () Bool)

(declare-fun e!435729 () Bool)

(assert (=> d!232684 (=> (not res!313883) (not e!435729))))

(assert (=> d!232684 (= res!313883 ((_ is HashMap!750) (cache!1137 cacheDown!515)))))

(assert (=> d!232684 (= (inv!9633 cacheDown!515) e!435729)))

(declare-fun b!692409 () Bool)

(declare-fun validCacheMapDown!61 (MutableMap!750) Bool)

(assert (=> b!692409 (= e!435729 (validCacheMapDown!61 (cache!1137 cacheDown!515)))))

(assert (= (and d!232684 res!313883) b!692409))

(declare-fun m!948530 () Bool)

(assert (=> b!692409 m!948530))

(assert (=> start!66164 d!232684))

(declare-fun d!232686 () Bool)

(assert (=> d!232686 (= (inv!9631 treated!50) (isBalanced!696 (c!121614 treated!50)))))

(declare-fun bs!137390 () Bool)

(assert (= bs!137390 d!232686))

(declare-fun m!948532 () Bool)

(assert (=> bs!137390 m!948532))

(assert (=> start!66164 d!232686))

(declare-fun d!232688 () Bool)

(declare-fun res!313886 () Bool)

(declare-fun e!435732 () Bool)

(assert (=> d!232688 (=> (not res!313886) (not e!435732))))

(assert (=> d!232688 (= res!313886 ((_ is HashMap!751) (cache!1138 cacheUp!502)))))

(assert (=> d!232688 (= (inv!9632 cacheUp!502) e!435732)))

(declare-fun b!692412 () Bool)

(assert (=> b!692412 (= e!435732 (validCacheMapUp!61 (cache!1138 cacheUp!502)))))

(assert (= (and d!232688 res!313886) b!692412))

(assert (=> b!692412 m!948436))

(assert (=> start!66164 d!232688))

(declare-fun d!232690 () Bool)

(assert (=> d!232690 (= (inv!9631 totalInput!378) (isBalanced!696 (c!121614 totalInput!378)))))

(declare-fun bs!137391 () Bool)

(assert (= bs!137391 d!232690))

(declare-fun m!948534 () Bool)

(assert (=> bs!137391 m!948534))

(assert (=> start!66164 d!232690))

(declare-fun d!232692 () Bool)

(assert (=> d!232692 (= (valid!665 cacheDown!515) (validCacheMapDown!61 (cache!1137 cacheDown!515)))))

(declare-fun bs!137392 () Bool)

(assert (= bs!137392 d!232692))

(assert (=> bs!137392 m!948530))

(assert (=> b!692280 d!232692))

(declare-fun d!232694 () Bool)

(assert (=> d!232694 (= (isEmpty!4880 (list!3152 (_2!4376 lt!284938))) ((_ is Nil!7511) (list!3152 (_2!4376 lt!284938))))))

(assert (=> b!692279 d!232694))

(declare-fun d!232696 () Bool)

(assert (=> d!232696 (= (list!3152 (_2!4376 lt!284938)) (list!3153 (c!121614 (_2!4376 lt!284938))))))

(declare-fun bs!137393 () Bool)

(assert (= bs!137393 d!232696))

(declare-fun m!948536 () Bool)

(assert (=> bs!137393 m!948536))

(assert (=> b!692279 d!232696))

(declare-fun d!232698 () Bool)

(declare-fun e!435735 () Bool)

(assert (=> d!232698 e!435735))

(declare-fun res!313889 () Bool)

(assert (=> d!232698 (=> res!313889 e!435735)))

(declare-fun lt!284965 () Bool)

(assert (=> d!232698 (= res!313889 (not lt!284965))))

(declare-fun drop!355 (List!7525 Int) List!7525)

(assert (=> d!232698 (= lt!284965 (= lt!284932 (drop!355 lt!284935 (- (size!6146 lt!284935) (size!6146 lt!284932)))))))

(assert (=> d!232698 (= (isSuffix!130 lt!284932 lt!284935) lt!284965)))

(declare-fun b!692415 () Bool)

(assert (=> b!692415 (= e!435735 (>= (size!6146 lt!284935) (size!6146 lt!284932)))))

(assert (= (and d!232698 (not res!313889)) b!692415))

(declare-fun m!948538 () Bool)

(assert (=> d!232698 m!948538))

(assert (=> d!232698 m!948420))

(declare-fun m!948540 () Bool)

(assert (=> d!232698 m!948540))

(assert (=> b!692415 m!948538))

(assert (=> b!692415 m!948420))

(assert (=> b!692281 d!232698))

(declare-fun d!232700 () Bool)

(declare-fun e!435736 () Bool)

(assert (=> d!232700 e!435736))

(declare-fun res!313890 () Bool)

(assert (=> d!232700 (=> res!313890 e!435736)))

(declare-fun lt!284966 () Bool)

(assert (=> d!232700 (= res!313890 (not lt!284966))))

(assert (=> d!232700 (= lt!284966 (= lt!284932 (drop!355 lt!284928 (- (size!6146 lt!284928) (size!6146 lt!284932)))))))

(assert (=> d!232700 (= (isSuffix!130 lt!284932 lt!284928) lt!284966)))

(declare-fun b!692416 () Bool)

(assert (=> b!692416 (= e!435736 (>= (size!6146 lt!284928) (size!6146 lt!284932)))))

(assert (= (and d!232700 (not res!313890)) b!692416))

(declare-fun m!948542 () Bool)

(assert (=> d!232700 m!948542))

(assert (=> d!232700 m!948420))

(declare-fun m!948544 () Bool)

(assert (=> d!232700 m!948544))

(assert (=> b!692416 m!948542))

(assert (=> b!692416 m!948420))

(assert (=> b!692281 d!232700))

(declare-fun d!232702 () Bool)

(assert (=> d!232702 (isSuffix!130 lt!284932 (++!1961 lt!284934 lt!284932))))

(declare-fun lt!284969 () Unit!12656)

(declare-fun choose!4696 (List!7525 List!7525) Unit!12656)

(assert (=> d!232702 (= lt!284969 (choose!4696 lt!284934 lt!284932))))

(assert (=> d!232702 (= (lemmaConcatTwoListThenFSndIsSuffix!130 lt!284934 lt!284932) lt!284969)))

(declare-fun bs!137394 () Bool)

(assert (= bs!137394 d!232702))

(assert (=> bs!137394 m!948320))

(assert (=> bs!137394 m!948320))

(declare-fun m!948546 () Bool)

(assert (=> bs!137394 m!948546))

(declare-fun m!948548 () Bool)

(assert (=> bs!137394 m!948548))

(assert (=> b!692281 d!232702))

(declare-fun d!232704 () Bool)

(declare-fun c!121641 () Bool)

(assert (=> d!232704 (= c!121641 ((_ is Node!2651) (c!121614 treated!50)))))

(declare-fun e!435737 () Bool)

(assert (=> d!232704 (= (inv!9629 (c!121614 treated!50)) e!435737)))

(declare-fun b!692417 () Bool)

(assert (=> b!692417 (= e!435737 (inv!9638 (c!121614 treated!50)))))

(declare-fun b!692418 () Bool)

(declare-fun e!435738 () Bool)

(assert (=> b!692418 (= e!435737 e!435738)))

(declare-fun res!313891 () Bool)

(assert (=> b!692418 (= res!313891 (not ((_ is Leaf!3927) (c!121614 treated!50))))))

(assert (=> b!692418 (=> res!313891 e!435738)))

(declare-fun b!692419 () Bool)

(assert (=> b!692419 (= e!435738 (inv!9639 (c!121614 treated!50)))))

(assert (= (and d!232704 c!121641) b!692417))

(assert (= (and d!232704 (not c!121641)) b!692418))

(assert (= (and b!692418 (not res!313891)) b!692419))

(declare-fun m!948550 () Bool)

(assert (=> b!692417 m!948550))

(declare-fun m!948552 () Bool)

(assert (=> b!692419 m!948552))

(assert (=> b!692299 d!232704))

(declare-fun b!692426 () Bool)

(declare-fun e!435744 () Bool)

(declare-fun setRes!3807 () Bool)

(declare-fun tp!208838 () Bool)

(assert (=> b!692426 (= e!435744 (and setRes!3807 tp!208838))))

(declare-fun condSetEmpty!3807 () Bool)

(assert (=> b!692426 (= condSetEmpty!3807 (= (_1!4374 (_1!4375 (h!12914 (zeroValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692427 () Bool)

(declare-fun e!435743 () Bool)

(declare-fun tp!208839 () Bool)

(assert (=> b!692427 (= e!435743 tp!208839)))

(declare-fun setIsEmpty!3807 () Bool)

(assert (=> setIsEmpty!3807 setRes!3807))

(assert (=> b!692286 (= tp!208816 e!435744)))

(declare-fun setElem!3807 () Context!494)

(declare-fun setNonEmpty!3807 () Bool)

(declare-fun tp!208840 () Bool)

(declare-fun inv!9640 (Context!494) Bool)

(assert (=> setNonEmpty!3807 (= setRes!3807 (and tp!208840 (inv!9640 setElem!3807) e!435743))))

(declare-fun setRest!3807 () (InoxSet Context!494))

(assert (=> setNonEmpty!3807 (= (_1!4374 (_1!4375 (h!12914 (zeroValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3807 true) setRest!3807))))

(assert (= (and b!692426 condSetEmpty!3807) setIsEmpty!3807))

(assert (= (and b!692426 (not condSetEmpty!3807)) setNonEmpty!3807))

(assert (= setNonEmpty!3807 b!692427))

(assert (= (and b!692286 ((_ is Cons!7513) (zeroValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74)))))))) b!692426))

(declare-fun m!948554 () Bool)

(assert (=> setNonEmpty!3807 m!948554))

(declare-fun b!692428 () Bool)

(declare-fun e!435746 () Bool)

(declare-fun setRes!3808 () Bool)

(declare-fun tp!208841 () Bool)

(assert (=> b!692428 (= e!435746 (and setRes!3808 tp!208841))))

(declare-fun condSetEmpty!3808 () Bool)

(assert (=> b!692428 (= condSetEmpty!3808 (= (_1!4374 (_1!4375 (h!12914 (minValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692429 () Bool)

(declare-fun e!435745 () Bool)

(declare-fun tp!208842 () Bool)

(assert (=> b!692429 (= e!435745 tp!208842)))

(declare-fun setIsEmpty!3808 () Bool)

(assert (=> setIsEmpty!3808 setRes!3808))

(assert (=> b!692286 (= tp!208813 e!435746)))

(declare-fun tp!208843 () Bool)

(declare-fun setNonEmpty!3808 () Bool)

(declare-fun setElem!3808 () Context!494)

(assert (=> setNonEmpty!3808 (= setRes!3808 (and tp!208843 (inv!9640 setElem!3808) e!435745))))

(declare-fun setRest!3808 () (InoxSet Context!494))

(assert (=> setNonEmpty!3808 (= (_1!4374 (_1!4375 (h!12914 (minValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3808 true) setRest!3808))))

(assert (= (and b!692428 condSetEmpty!3808) setIsEmpty!3808))

(assert (= (and b!692428 (not condSetEmpty!3808)) setNonEmpty!3808))

(assert (= setNonEmpty!3808 b!692429))

(assert (= (and b!692286 ((_ is Cons!7513) (minValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74)))))))) b!692428))

(declare-fun m!948556 () Bool)

(assert (=> setNonEmpty!3808 m!948556))

(declare-fun setIsEmpty!3811 () Bool)

(declare-fun setRes!3811 () Bool)

(assert (=> setIsEmpty!3811 setRes!3811))

(declare-fun b!692438 () Bool)

(declare-fun e!435753 () Bool)

(declare-fun tp!208856 () Bool)

(assert (=> b!692438 (= e!435753 tp!208856)))

(declare-fun setNonEmpty!3811 () Bool)

(declare-fun tp!208857 () Bool)

(declare-fun setElem!3811 () Context!494)

(assert (=> setNonEmpty!3811 (= setRes!3811 (and tp!208857 (inv!9640 setElem!3811) e!435753))))

(declare-fun setRest!3811 () (InoxSet Context!494))

(assert (=> setNonEmpty!3811 (= (_2!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3811 true) setRest!3811))))

(declare-fun e!435754 () Bool)

(assert (=> b!692288 (= tp!208823 e!435754)))

(declare-fun tp!208854 () Bool)

(declare-fun b!692439 () Bool)

(declare-fun tp_is_empty!3647 () Bool)

(declare-fun tp!208855 () Bool)

(declare-fun e!435755 () Bool)

(assert (=> b!692439 (= e!435754 (and tp!208855 (inv!9640 (_2!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))) e!435755 tp_is_empty!3647 setRes!3811 tp!208854))))

(declare-fun condSetEmpty!3811 () Bool)

(assert (=> b!692439 (= condSetEmpty!3811 (= (_2!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692440 () Bool)

(declare-fun tp!208858 () Bool)

(assert (=> b!692440 (= e!435755 tp!208858)))

(assert (= b!692439 b!692440))

(assert (= (and b!692439 condSetEmpty!3811) setIsEmpty!3811))

(assert (= (and b!692439 (not condSetEmpty!3811)) setNonEmpty!3811))

(assert (= setNonEmpty!3811 b!692438))

(assert (= (and b!692288 ((_ is Cons!7517) (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))) b!692439))

(declare-fun m!948558 () Bool)

(assert (=> setNonEmpty!3811 m!948558))

(declare-fun m!948560 () Bool)

(assert (=> b!692439 m!948560))

(declare-fun setIsEmpty!3812 () Bool)

(declare-fun setRes!3812 () Bool)

(assert (=> setIsEmpty!3812 setRes!3812))

(declare-fun b!692441 () Bool)

(declare-fun e!435756 () Bool)

(declare-fun tp!208861 () Bool)

(assert (=> b!692441 (= e!435756 tp!208861)))

(declare-fun tp!208862 () Bool)

(declare-fun setNonEmpty!3812 () Bool)

(declare-fun setElem!3812 () Context!494)

(assert (=> setNonEmpty!3812 (= setRes!3812 (and tp!208862 (inv!9640 setElem!3812) e!435756))))

(declare-fun setRest!3812 () (InoxSet Context!494))

(assert (=> setNonEmpty!3812 (= (_2!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3812 true) setRest!3812))))

(declare-fun e!435757 () Bool)

(assert (=> b!692288 (= tp!208814 e!435757)))

(declare-fun e!435758 () Bool)

(declare-fun tp!208859 () Bool)

(declare-fun tp!208860 () Bool)

(declare-fun b!692442 () Bool)

(assert (=> b!692442 (= e!435757 (and tp!208860 (inv!9640 (_2!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))) e!435758 tp_is_empty!3647 setRes!3812 tp!208859))))

(declare-fun condSetEmpty!3812 () Bool)

(assert (=> b!692442 (= condSetEmpty!3812 (= (_2!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692443 () Bool)

(declare-fun tp!208863 () Bool)

(assert (=> b!692443 (= e!435758 tp!208863)))

(assert (= b!692442 b!692443))

(assert (= (and b!692442 condSetEmpty!3812) setIsEmpty!3812))

(assert (= (and b!692442 (not condSetEmpty!3812)) setNonEmpty!3812))

(assert (= setNonEmpty!3812 b!692441))

(assert (= (and b!692288 ((_ is Cons!7517) (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))) b!692442))

(declare-fun m!948562 () Bool)

(assert (=> setNonEmpty!3812 m!948562))

(declare-fun m!948564 () Bool)

(assert (=> b!692442 m!948564))

(declare-fun e!435763 () Bool)

(declare-fun b!692452 () Bool)

(declare-fun tp!208871 () Bool)

(declare-fun tp!208872 () Bool)

(assert (=> b!692452 (= e!435763 (and (inv!9629 (left!6006 (c!121614 totalInput!378))) tp!208871 (inv!9629 (right!6336 (c!121614 totalInput!378))) tp!208872))))

(declare-fun b!692454 () Bool)

(declare-fun e!435764 () Bool)

(declare-fun tp!208870 () Bool)

(assert (=> b!692454 (= e!435764 tp!208870)))

(declare-fun b!692453 () Bool)

(declare-fun inv!9641 (IArray!5303) Bool)

(assert (=> b!692453 (= e!435763 (and (inv!9641 (xs!5302 (c!121614 totalInput!378))) e!435764))))

(assert (=> b!692297 (= tp!208829 (and (inv!9629 (c!121614 totalInput!378)) e!435763))))

(assert (= (and b!692297 ((_ is Node!2651) (c!121614 totalInput!378))) b!692452))

(assert (= b!692453 b!692454))

(assert (= (and b!692297 ((_ is Leaf!3927) (c!121614 totalInput!378))) b!692453))

(declare-fun m!948566 () Bool)

(assert (=> b!692452 m!948566))

(declare-fun m!948568 () Bool)

(assert (=> b!692452 m!948568))

(declare-fun m!948570 () Bool)

(assert (=> b!692453 m!948570))

(assert (=> b!692297 m!948332))

(declare-fun mapIsEmpty!3130 () Bool)

(declare-fun mapRes!3130 () Bool)

(assert (=> mapIsEmpty!3130 mapRes!3130))

(declare-fun setNonEmpty!3817 () Bool)

(declare-fun tp!208893 () Bool)

(declare-fun setRes!3818 () Bool)

(declare-fun setElem!3817 () Context!494)

(declare-fun e!435775 () Bool)

(assert (=> setNonEmpty!3817 (= setRes!3818 (and tp!208893 (inv!9640 setElem!3817) e!435775))))

(declare-fun mapValue!3130 () List!7527)

(declare-fun setRest!3817 () (InoxSet Context!494))

(assert (=> setNonEmpty!3817 (= (_1!4374 (_1!4375 (h!12914 mapValue!3130))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3817 true) setRest!3817))))

(declare-fun b!692465 () Bool)

(declare-fun e!435773 () Bool)

(declare-fun setRes!3817 () Bool)

(declare-fun tp!208887 () Bool)

(assert (=> b!692465 (= e!435773 (and setRes!3817 tp!208887))))

(declare-fun condSetEmpty!3818 () Bool)

(declare-fun mapDefault!3130 () List!7527)

(assert (=> b!692465 (= condSetEmpty!3818 (= (_1!4374 (_1!4375 (h!12914 mapDefault!3130))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun condMapEmpty!3130 () Bool)

(assert (=> mapNonEmpty!3125 (= condMapEmpty!3130 (= mapRest!3127 ((as const (Array (_ BitVec 32) List!7527)) mapDefault!3130)))))

(assert (=> mapNonEmpty!3125 (= tp!208819 (and e!435773 mapRes!3130))))

(declare-fun mapNonEmpty!3130 () Bool)

(declare-fun tp!208888 () Bool)

(declare-fun e!435774 () Bool)

(assert (=> mapNonEmpty!3130 (= mapRes!3130 (and tp!208888 e!435774))))

(declare-fun mapRest!3130 () (Array (_ BitVec 32) List!7527))

(declare-fun mapKey!3130 () (_ BitVec 32))

(assert (=> mapNonEmpty!3130 (= mapRest!3127 (store mapRest!3130 mapKey!3130 mapValue!3130))))

(declare-fun setIsEmpty!3817 () Bool)

(assert (=> setIsEmpty!3817 setRes!3817))

(declare-fun setIsEmpty!3818 () Bool)

(assert (=> setIsEmpty!3818 setRes!3818))

(declare-fun b!692466 () Bool)

(declare-fun e!435776 () Bool)

(declare-fun tp!208889 () Bool)

(assert (=> b!692466 (= e!435776 tp!208889)))

(declare-fun b!692467 () Bool)

(declare-fun tp!208891 () Bool)

(assert (=> b!692467 (= e!435774 (and setRes!3818 tp!208891))))

(declare-fun condSetEmpty!3817 () Bool)

(assert (=> b!692467 (= condSetEmpty!3817 (= (_1!4374 (_1!4375 (h!12914 mapValue!3130))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692468 () Bool)

(declare-fun tp!208892 () Bool)

(assert (=> b!692468 (= e!435775 tp!208892)))

(declare-fun tp!208890 () Bool)

(declare-fun setElem!3818 () Context!494)

(declare-fun setNonEmpty!3818 () Bool)

(assert (=> setNonEmpty!3818 (= setRes!3817 (and tp!208890 (inv!9640 setElem!3818) e!435776))))

(declare-fun setRest!3818 () (InoxSet Context!494))

(assert (=> setNonEmpty!3818 (= (_1!4374 (_1!4375 (h!12914 mapDefault!3130))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3818 true) setRest!3818))))

(assert (= (and mapNonEmpty!3125 condMapEmpty!3130) mapIsEmpty!3130))

(assert (= (and mapNonEmpty!3125 (not condMapEmpty!3130)) mapNonEmpty!3130))

(assert (= (and b!692467 condSetEmpty!3817) setIsEmpty!3818))

(assert (= (and b!692467 (not condSetEmpty!3817)) setNonEmpty!3817))

(assert (= setNonEmpty!3817 b!692468))

(assert (= (and mapNonEmpty!3130 ((_ is Cons!7513) mapValue!3130)) b!692467))

(assert (= (and b!692465 condSetEmpty!3818) setIsEmpty!3817))

(assert (= (and b!692465 (not condSetEmpty!3818)) setNonEmpty!3818))

(assert (= setNonEmpty!3818 b!692466))

(assert (= (and mapNonEmpty!3125 ((_ is Cons!7513) mapDefault!3130)) b!692465))

(declare-fun m!948572 () Bool)

(assert (=> setNonEmpty!3817 m!948572))

(declare-fun m!948574 () Bool)

(assert (=> mapNonEmpty!3130 m!948574))

(declare-fun m!948576 () Bool)

(assert (=> setNonEmpty!3818 m!948576))

(declare-fun b!692469 () Bool)

(declare-fun e!435778 () Bool)

(declare-fun setRes!3819 () Bool)

(declare-fun tp!208894 () Bool)

(assert (=> b!692469 (= e!435778 (and setRes!3819 tp!208894))))

(declare-fun condSetEmpty!3819 () Bool)

(assert (=> b!692469 (= condSetEmpty!3819 (= (_1!4374 (_1!4375 (h!12914 mapValue!3126))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692470 () Bool)

(declare-fun e!435777 () Bool)

(declare-fun tp!208895 () Bool)

(assert (=> b!692470 (= e!435777 tp!208895)))

(declare-fun setIsEmpty!3819 () Bool)

(assert (=> setIsEmpty!3819 setRes!3819))

(assert (=> mapNonEmpty!3125 (= tp!208811 e!435778)))

(declare-fun tp!208896 () Bool)

(declare-fun setNonEmpty!3819 () Bool)

(declare-fun setElem!3819 () Context!494)

(assert (=> setNonEmpty!3819 (= setRes!3819 (and tp!208896 (inv!9640 setElem!3819) e!435777))))

(declare-fun setRest!3819 () (InoxSet Context!494))

(assert (=> setNonEmpty!3819 (= (_1!4374 (_1!4375 (h!12914 mapValue!3126))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3819 true) setRest!3819))))

(assert (= (and b!692469 condSetEmpty!3819) setIsEmpty!3819))

(assert (= (and b!692469 (not condSetEmpty!3819)) setNonEmpty!3819))

(assert (= setNonEmpty!3819 b!692470))

(assert (= (and mapNonEmpty!3125 ((_ is Cons!7513) mapValue!3126)) b!692469))

(declare-fun m!948578 () Bool)

(assert (=> setNonEmpty!3819 m!948578))

(declare-fun b!692485 () Bool)

(declare-fun e!435796 () Bool)

(declare-fun tp!208928 () Bool)

(assert (=> b!692485 (= e!435796 tp!208928)))

(declare-fun e!435793 () Bool)

(declare-fun setRes!3824 () Bool)

(declare-fun mapValue!3133 () List!7531)

(declare-fun tp!208923 () Bool)

(declare-fun tp!208922 () Bool)

(declare-fun b!692486 () Bool)

(assert (=> b!692486 (= e!435793 (and tp!208922 (inv!9640 (_2!4377 (_1!4378 (h!12918 mapValue!3133)))) e!435796 tp_is_empty!3647 setRes!3824 tp!208923))))

(declare-fun condSetEmpty!3825 () Bool)

(assert (=> b!692486 (= condSetEmpty!3825 (= (_2!4378 (h!12918 mapValue!3133)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun mapIsEmpty!3133 () Bool)

(declare-fun mapRes!3133 () Bool)

(assert (=> mapIsEmpty!3133 mapRes!3133))

(declare-fun mapNonEmpty!3133 () Bool)

(declare-fun tp!208924 () Bool)

(assert (=> mapNonEmpty!3133 (= mapRes!3133 (and tp!208924 e!435793))))

(declare-fun mapKey!3133 () (_ BitVec 32))

(declare-fun mapRest!3133 () (Array (_ BitVec 32) List!7531))

(assert (=> mapNonEmpty!3133 (= mapRest!3125 (store mapRest!3133 mapKey!3133 mapValue!3133))))

(declare-fun b!692487 () Bool)

(declare-fun e!435794 () Bool)

(declare-fun tp!208919 () Bool)

(assert (=> b!692487 (= e!435794 tp!208919)))

(declare-fun setIsEmpty!3824 () Bool)

(assert (=> setIsEmpty!3824 setRes!3824))

(declare-fun setRes!3825 () Bool)

(declare-fun mapDefault!3133 () List!7531)

(declare-fun tp!208926 () Bool)

(declare-fun e!435791 () Bool)

(declare-fun tp!208921 () Bool)

(declare-fun e!435792 () Bool)

(declare-fun b!692488 () Bool)

(assert (=> b!692488 (= e!435791 (and tp!208926 (inv!9640 (_2!4377 (_1!4378 (h!12918 mapDefault!3133)))) e!435792 tp_is_empty!3647 setRes!3825 tp!208921))))

(declare-fun condSetEmpty!3824 () Bool)

(assert (=> b!692488 (= condSetEmpty!3824 (= (_2!4378 (h!12918 mapDefault!3133)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun setIsEmpty!3825 () Bool)

(assert (=> setIsEmpty!3825 setRes!3825))

(declare-fun b!692489 () Bool)

(declare-fun e!435795 () Bool)

(declare-fun tp!208927 () Bool)

(assert (=> b!692489 (= e!435795 tp!208927)))

(declare-fun setNonEmpty!3824 () Bool)

(declare-fun tp!208929 () Bool)

(declare-fun setElem!3824 () Context!494)

(assert (=> setNonEmpty!3824 (= setRes!3825 (and tp!208929 (inv!9640 setElem!3824) e!435795))))

(declare-fun setRest!3824 () (InoxSet Context!494))

(assert (=> setNonEmpty!3824 (= (_2!4378 (h!12918 mapDefault!3133)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3824 true) setRest!3824))))

(declare-fun condMapEmpty!3133 () Bool)

(assert (=> mapNonEmpty!3127 (= condMapEmpty!3133 (= mapRest!3125 ((as const (Array (_ BitVec 32) List!7531)) mapDefault!3133)))))

(assert (=> mapNonEmpty!3127 (= tp!208817 (and e!435791 mapRes!3133))))

(declare-fun setElem!3825 () Context!494)

(declare-fun setNonEmpty!3825 () Bool)

(declare-fun tp!208925 () Bool)

(assert (=> setNonEmpty!3825 (= setRes!3824 (and tp!208925 (inv!9640 setElem!3825) e!435794))))

(declare-fun setRest!3825 () (InoxSet Context!494))

(assert (=> setNonEmpty!3825 (= (_2!4378 (h!12918 mapValue!3133)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3825 true) setRest!3825))))

(declare-fun b!692490 () Bool)

(declare-fun tp!208920 () Bool)

(assert (=> b!692490 (= e!435792 tp!208920)))

(assert (= (and mapNonEmpty!3127 condMapEmpty!3133) mapIsEmpty!3133))

(assert (= (and mapNonEmpty!3127 (not condMapEmpty!3133)) mapNonEmpty!3133))

(assert (= b!692486 b!692485))

(assert (= (and b!692486 condSetEmpty!3825) setIsEmpty!3824))

(assert (= (and b!692486 (not condSetEmpty!3825)) setNonEmpty!3825))

(assert (= setNonEmpty!3825 b!692487))

(assert (= (and mapNonEmpty!3133 ((_ is Cons!7517) mapValue!3133)) b!692486))

(assert (= b!692488 b!692490))

(assert (= (and b!692488 condSetEmpty!3824) setIsEmpty!3825))

(assert (= (and b!692488 (not condSetEmpty!3824)) setNonEmpty!3824))

(assert (= setNonEmpty!3824 b!692489))

(assert (= (and mapNonEmpty!3127 ((_ is Cons!7517) mapDefault!3133)) b!692488))

(declare-fun m!948580 () Bool)

(assert (=> b!692486 m!948580))

(declare-fun m!948582 () Bool)

(assert (=> setNonEmpty!3825 m!948582))

(declare-fun m!948584 () Bool)

(assert (=> b!692488 m!948584))

(declare-fun m!948586 () Bool)

(assert (=> setNonEmpty!3824 m!948586))

(declare-fun m!948588 () Bool)

(assert (=> mapNonEmpty!3133 m!948588))

(declare-fun setIsEmpty!3826 () Bool)

(declare-fun setRes!3826 () Bool)

(assert (=> setIsEmpty!3826 setRes!3826))

(declare-fun b!692491 () Bool)

(declare-fun e!435797 () Bool)

(declare-fun tp!208932 () Bool)

(assert (=> b!692491 (= e!435797 tp!208932)))

(declare-fun setElem!3826 () Context!494)

(declare-fun tp!208933 () Bool)

(declare-fun setNonEmpty!3826 () Bool)

(assert (=> setNonEmpty!3826 (= setRes!3826 (and tp!208933 (inv!9640 setElem!3826) e!435797))))

(declare-fun setRest!3826 () (InoxSet Context!494))

(assert (=> setNonEmpty!3826 (= (_2!4378 (h!12918 mapValue!3125)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3826 true) setRest!3826))))

(declare-fun e!435798 () Bool)

(assert (=> mapNonEmpty!3127 (= tp!208815 e!435798)))

(declare-fun tp!208931 () Bool)

(declare-fun b!692492 () Bool)

(declare-fun e!435799 () Bool)

(declare-fun tp!208930 () Bool)

(assert (=> b!692492 (= e!435798 (and tp!208931 (inv!9640 (_2!4377 (_1!4378 (h!12918 mapValue!3125)))) e!435799 tp_is_empty!3647 setRes!3826 tp!208930))))

(declare-fun condSetEmpty!3826 () Bool)

(assert (=> b!692492 (= condSetEmpty!3826 (= (_2!4378 (h!12918 mapValue!3125)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692493 () Bool)

(declare-fun tp!208934 () Bool)

(assert (=> b!692493 (= e!435799 tp!208934)))

(assert (= b!692492 b!692493))

(assert (= (and b!692492 condSetEmpty!3826) setIsEmpty!3826))

(assert (= (and b!692492 (not condSetEmpty!3826)) setNonEmpty!3826))

(assert (= setNonEmpty!3826 b!692491))

(assert (= (and mapNonEmpty!3127 ((_ is Cons!7517) mapValue!3125)) b!692492))

(declare-fun m!948590 () Bool)

(assert (=> setNonEmpty!3826 m!948590))

(declare-fun m!948592 () Bool)

(assert (=> b!692492 m!948592))

(declare-fun b!692502 () Bool)

(declare-fun e!435804 () Bool)

(declare-fun tp!208942 () Bool)

(declare-fun tp!208941 () Bool)

(assert (=> b!692502 (= e!435804 (and (inv!9628 (left!6007 (c!121615 acc!372))) tp!208942 (inv!9628 (right!6337 (c!121615 acc!372))) tp!208941))))

(declare-fun b!692504 () Bool)

(declare-fun e!435805 () Bool)

(declare-fun tp!208943 () Bool)

(assert (=> b!692504 (= e!435805 tp!208943)))

(declare-fun b!692503 () Bool)

(declare-fun inv!9642 (IArray!5305) Bool)

(assert (=> b!692503 (= e!435804 (and (inv!9642 (xs!5303 (c!121615 acc!372))) e!435805))))

(assert (=> b!692266 (= tp!208831 (and (inv!9628 (c!121615 acc!372)) e!435804))))

(assert (= (and b!692266 ((_ is Node!2652) (c!121615 acc!372))) b!692502))

(assert (= b!692503 b!692504))

(assert (= (and b!692266 ((_ is Leaf!3928) (c!121615 acc!372))) b!692503))

(declare-fun m!948594 () Bool)

(assert (=> b!692502 m!948594))

(declare-fun m!948596 () Bool)

(assert (=> b!692502 m!948596))

(declare-fun m!948598 () Bool)

(assert (=> b!692503 m!948598))

(assert (=> b!692266 m!948314))

(declare-fun b!692513 () Bool)

(declare-fun setRes!3829 () Bool)

(declare-fun tp!208953 () Bool)

(declare-fun e!435813 () Bool)

(declare-fun e!435814 () Bool)

(assert (=> b!692513 (= e!435813 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))) e!435814 tp_is_empty!3647 setRes!3829 tp!208953))))

(declare-fun condSetEmpty!3829 () Bool)

(assert (=> b!692513 (= condSetEmpty!3829 (= (_2!4380 (h!12919 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692514 () Bool)

(declare-fun tp!208952 () Bool)

(assert (=> b!692514 (= e!435814 tp!208952)))

(declare-fun setNonEmpty!3829 () Bool)

(declare-fun setElem!3829 () Context!494)

(declare-fun e!435812 () Bool)

(declare-fun tp!208955 () Bool)

(assert (=> setNonEmpty!3829 (= setRes!3829 (and tp!208955 (inv!9640 setElem!3829) e!435812))))

(declare-fun setRest!3829 () (InoxSet Context!494))

(assert (=> setNonEmpty!3829 (= (_2!4380 (h!12919 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3829 true) setRest!3829))))

(declare-fun setIsEmpty!3829 () Bool)

(assert (=> setIsEmpty!3829 setRes!3829))

(declare-fun b!692515 () Bool)

(declare-fun tp!208954 () Bool)

(assert (=> b!692515 (= e!435812 tp!208954)))

(assert (=> b!692303 (= tp!208825 e!435813)))

(assert (= b!692513 b!692514))

(assert (= (and b!692513 condSetEmpty!3829) setIsEmpty!3829))

(assert (= (and b!692513 (not condSetEmpty!3829)) setNonEmpty!3829))

(assert (= setNonEmpty!3829 b!692515))

(assert (= (and b!692303 ((_ is Cons!7518) (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))) b!692513))

(declare-fun m!948600 () Bool)

(assert (=> b!692513 m!948600))

(declare-fun m!948602 () Bool)

(assert (=> setNonEmpty!3829 m!948602))

(declare-fun setRes!3830 () Bool)

(declare-fun e!435816 () Bool)

(declare-fun e!435817 () Bool)

(declare-fun tp!208957 () Bool)

(declare-fun b!692516 () Bool)

(assert (=> b!692516 (= e!435816 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))) e!435817 tp_is_empty!3647 setRes!3830 tp!208957))))

(declare-fun condSetEmpty!3830 () Bool)

(assert (=> b!692516 (= condSetEmpty!3830 (= (_2!4380 (h!12919 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692517 () Bool)

(declare-fun tp!208956 () Bool)

(assert (=> b!692517 (= e!435817 tp!208956)))

(declare-fun e!435815 () Bool)

(declare-fun setNonEmpty!3830 () Bool)

(declare-fun tp!208959 () Bool)

(declare-fun setElem!3830 () Context!494)

(assert (=> setNonEmpty!3830 (= setRes!3830 (and tp!208959 (inv!9640 setElem!3830) e!435815))))

(declare-fun setRest!3830 () (InoxSet Context!494))

(assert (=> setNonEmpty!3830 (= (_2!4380 (h!12919 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3830 true) setRest!3830))))

(declare-fun setIsEmpty!3830 () Bool)

(assert (=> setIsEmpty!3830 setRes!3830))

(declare-fun b!692518 () Bool)

(declare-fun tp!208958 () Bool)

(assert (=> b!692518 (= e!435815 tp!208958)))

(assert (=> b!692303 (= tp!208804 e!435816)))

(assert (= b!692516 b!692517))

(assert (= (and b!692516 condSetEmpty!3830) setIsEmpty!3830))

(assert (= (and b!692516 (not condSetEmpty!3830)) setNonEmpty!3830))

(assert (= setNonEmpty!3830 b!692518))

(assert (= (and b!692303 ((_ is Cons!7518) (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))) b!692516))

(declare-fun m!948604 () Bool)

(assert (=> b!692516 m!948604))

(declare-fun m!948606 () Bool)

(assert (=> setNonEmpty!3830 m!948606))

(declare-fun setIsEmpty!3831 () Bool)

(declare-fun setRes!3831 () Bool)

(assert (=> setIsEmpty!3831 setRes!3831))

(declare-fun b!692519 () Bool)

(declare-fun e!435818 () Bool)

(declare-fun tp!208962 () Bool)

(assert (=> b!692519 (= e!435818 tp!208962)))

(declare-fun setNonEmpty!3831 () Bool)

(declare-fun tp!208963 () Bool)

(declare-fun setElem!3831 () Context!494)

(assert (=> setNonEmpty!3831 (= setRes!3831 (and tp!208963 (inv!9640 setElem!3831) e!435818))))

(declare-fun setRest!3831 () (InoxSet Context!494))

(assert (=> setNonEmpty!3831 (= (_2!4378 (h!12918 mapDefault!3126)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3831 true) setRest!3831))))

(declare-fun e!435819 () Bool)

(assert (=> b!692277 (= tp!208802 e!435819)))

(declare-fun tp!208961 () Bool)

(declare-fun tp!208960 () Bool)

(declare-fun b!692520 () Bool)

(declare-fun e!435820 () Bool)

(assert (=> b!692520 (= e!435819 (and tp!208961 (inv!9640 (_2!4377 (_1!4378 (h!12918 mapDefault!3126)))) e!435820 tp_is_empty!3647 setRes!3831 tp!208960))))

(declare-fun condSetEmpty!3831 () Bool)

(assert (=> b!692520 (= condSetEmpty!3831 (= (_2!4378 (h!12918 mapDefault!3126)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692521 () Bool)

(declare-fun tp!208964 () Bool)

(assert (=> b!692521 (= e!435820 tp!208964)))

(assert (= b!692520 b!692521))

(assert (= (and b!692520 condSetEmpty!3831) setIsEmpty!3831))

(assert (= (and b!692520 (not condSetEmpty!3831)) setNonEmpty!3831))

(assert (= setNonEmpty!3831 b!692519))

(assert (= (and b!692277 ((_ is Cons!7517) mapDefault!3126)) b!692520))

(declare-fun m!948608 () Bool)

(assert (=> setNonEmpty!3831 m!948608))

(declare-fun m!948610 () Bool)

(assert (=> b!692520 m!948610))

(declare-fun b!692522 () Bool)

(declare-fun e!435822 () Bool)

(declare-fun setRes!3832 () Bool)

(declare-fun tp!208965 () Bool)

(assert (=> b!692522 (= e!435822 (and setRes!3832 tp!208965))))

(declare-fun condSetEmpty!3832 () Bool)

(assert (=> b!692522 (= condSetEmpty!3832 (= (_1!4374 (_1!4375 (h!12914 mapDefault!3125))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692523 () Bool)

(declare-fun e!435821 () Bool)

(declare-fun tp!208966 () Bool)

(assert (=> b!692523 (= e!435821 tp!208966)))

(declare-fun setIsEmpty!3832 () Bool)

(assert (=> setIsEmpty!3832 setRes!3832))

(assert (=> b!692301 (= tp!208824 e!435822)))

(declare-fun setNonEmpty!3832 () Bool)

(declare-fun tp!208967 () Bool)

(declare-fun setElem!3832 () Context!494)

(assert (=> setNonEmpty!3832 (= setRes!3832 (and tp!208967 (inv!9640 setElem!3832) e!435821))))

(declare-fun setRest!3832 () (InoxSet Context!494))

(assert (=> setNonEmpty!3832 (= (_1!4374 (_1!4375 (h!12914 mapDefault!3125))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3832 true) setRest!3832))))

(assert (= (and b!692522 condSetEmpty!3832) setIsEmpty!3832))

(assert (= (and b!692522 (not condSetEmpty!3832)) setNonEmpty!3832))

(assert (= setNonEmpty!3832 b!692523))

(assert (= (and b!692301 ((_ is Cons!7513) mapDefault!3125)) b!692522))

(declare-fun m!948612 () Bool)

(assert (=> setNonEmpty!3832 m!948612))

(declare-fun b!692524 () Bool)

(declare-fun tp!208969 () Bool)

(declare-fun e!435823 () Bool)

(declare-fun tp!208970 () Bool)

(assert (=> b!692524 (= e!435823 (and (inv!9629 (left!6006 (c!121614 input!870))) tp!208969 (inv!9629 (right!6336 (c!121614 input!870))) tp!208970))))

(declare-fun b!692526 () Bool)

(declare-fun e!435824 () Bool)

(declare-fun tp!208968 () Bool)

(assert (=> b!692526 (= e!435824 tp!208968)))

(declare-fun b!692525 () Bool)

(assert (=> b!692525 (= e!435823 (and (inv!9641 (xs!5302 (c!121614 input!870))) e!435824))))

(assert (=> b!692274 (= tp!208808 (and (inv!9629 (c!121614 input!870)) e!435823))))

(assert (= (and b!692274 ((_ is Node!2651) (c!121614 input!870))) b!692524))

(assert (= b!692525 b!692526))

(assert (= (and b!692274 ((_ is Leaf!3927) (c!121614 input!870))) b!692525))

(declare-fun m!948614 () Bool)

(assert (=> b!692524 m!948614))

(declare-fun m!948616 () Bool)

(assert (=> b!692524 m!948616))

(declare-fun m!948618 () Bool)

(assert (=> b!692525 m!948618))

(assert (=> b!692274 m!948366))

(declare-fun setRes!3833 () Bool)

(declare-fun e!435826 () Bool)

(declare-fun tp!208972 () Bool)

(declare-fun b!692527 () Bool)

(declare-fun e!435827 () Bool)

(assert (=> b!692527 (= e!435826 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 mapDefault!3127)))) e!435827 tp_is_empty!3647 setRes!3833 tp!208972))))

(declare-fun condSetEmpty!3833 () Bool)

(assert (=> b!692527 (= condSetEmpty!3833 (= (_2!4380 (h!12919 mapDefault!3127)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692528 () Bool)

(declare-fun tp!208971 () Bool)

(assert (=> b!692528 (= e!435827 tp!208971)))

(declare-fun setElem!3833 () Context!494)

(declare-fun tp!208974 () Bool)

(declare-fun e!435825 () Bool)

(declare-fun setNonEmpty!3833 () Bool)

(assert (=> setNonEmpty!3833 (= setRes!3833 (and tp!208974 (inv!9640 setElem!3833) e!435825))))

(declare-fun setRest!3833 () (InoxSet Context!494))

(assert (=> setNonEmpty!3833 (= (_2!4380 (h!12919 mapDefault!3127)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3833 true) setRest!3833))))

(declare-fun setIsEmpty!3833 () Bool)

(assert (=> setIsEmpty!3833 setRes!3833))

(declare-fun b!692529 () Bool)

(declare-fun tp!208973 () Bool)

(assert (=> b!692529 (= e!435825 tp!208973)))

(assert (=> b!692273 (= tp!208821 e!435826)))

(assert (= b!692527 b!692528))

(assert (= (and b!692527 condSetEmpty!3833) setIsEmpty!3833))

(assert (= (and b!692527 (not condSetEmpty!3833)) setNonEmpty!3833))

(assert (= setNonEmpty!3833 b!692529))

(assert (= (and b!692273 ((_ is Cons!7518) mapDefault!3127)) b!692527))

(declare-fun m!948620 () Bool)

(assert (=> b!692527 m!948620))

(declare-fun m!948622 () Bool)

(assert (=> setNonEmpty!3833 m!948622))

(declare-fun setIsEmpty!3838 () Bool)

(declare-fun setRes!3839 () Bool)

(assert (=> setIsEmpty!3838 setRes!3839))

(declare-fun b!692544 () Bool)

(declare-fun e!435840 () Bool)

(declare-fun tp!209000 () Bool)

(declare-fun e!435843 () Bool)

(declare-fun mapDefault!3136 () List!7532)

(assert (=> b!692544 (= e!435843 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 mapDefault!3136)))) e!435840 tp_is_empty!3647 setRes!3839 tp!209000))))

(declare-fun condSetEmpty!3839 () Bool)

(assert (=> b!692544 (= condSetEmpty!3839 (= (_2!4380 (h!12919 mapDefault!3136)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692545 () Bool)

(declare-fun e!435844 () Bool)

(declare-fun tp!208999 () Bool)

(assert (=> b!692545 (= e!435844 tp!208999)))

(declare-fun b!692546 () Bool)

(declare-fun tp!208995 () Bool)

(assert (=> b!692546 (= e!435840 tp!208995)))

(declare-fun setIsEmpty!3839 () Bool)

(declare-fun setRes!3838 () Bool)

(assert (=> setIsEmpty!3839 setRes!3838))

(declare-fun b!692547 () Bool)

(declare-fun e!435841 () Bool)

(declare-fun tp!208993 () Bool)

(assert (=> b!692547 (= e!435841 tp!208993)))

(declare-fun b!692548 () Bool)

(declare-fun e!435842 () Bool)

(declare-fun tp!208996 () Bool)

(assert (=> b!692548 (= e!435842 tp!208996)))

(declare-fun condMapEmpty!3136 () Bool)

(assert (=> mapNonEmpty!3126 (= condMapEmpty!3136 (= mapRest!3126 ((as const (Array (_ BitVec 32) List!7532)) mapDefault!3136)))))

(declare-fun mapRes!3136 () Bool)

(assert (=> mapNonEmpty!3126 (= tp!208826 (and e!435843 mapRes!3136))))

(declare-fun setNonEmpty!3838 () Bool)

(declare-fun tp!208994 () Bool)

(declare-fun setElem!3839 () Context!494)

(assert (=> setNonEmpty!3838 (= setRes!3838 (and tp!208994 (inv!9640 setElem!3839) e!435841))))

(declare-fun mapValue!3136 () List!7532)

(declare-fun setRest!3839 () (InoxSet Context!494))

(assert (=> setNonEmpty!3838 (= (_2!4380 (h!12919 mapValue!3136)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3839 true) setRest!3839))))

(declare-fun mapIsEmpty!3136 () Bool)

(assert (=> mapIsEmpty!3136 mapRes!3136))

(declare-fun e!435845 () Bool)

(declare-fun b!692549 () Bool)

(declare-fun tp!208997 () Bool)

(assert (=> b!692549 (= e!435845 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 mapValue!3136)))) e!435844 tp_is_empty!3647 setRes!3838 tp!208997))))

(declare-fun condSetEmpty!3838 () Bool)

(assert (=> b!692549 (= condSetEmpty!3838 (= (_2!4380 (h!12919 mapValue!3136)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun tp!208998 () Bool)

(declare-fun setNonEmpty!3839 () Bool)

(declare-fun setElem!3838 () Context!494)

(assert (=> setNonEmpty!3839 (= setRes!3839 (and tp!208998 (inv!9640 setElem!3838) e!435842))))

(declare-fun setRest!3838 () (InoxSet Context!494))

(assert (=> setNonEmpty!3839 (= (_2!4380 (h!12919 mapDefault!3136)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3838 true) setRest!3838))))

(declare-fun mapNonEmpty!3136 () Bool)

(declare-fun tp!209001 () Bool)

(assert (=> mapNonEmpty!3136 (= mapRes!3136 (and tp!209001 e!435845))))

(declare-fun mapRest!3136 () (Array (_ BitVec 32) List!7532))

(declare-fun mapKey!3136 () (_ BitVec 32))

(assert (=> mapNonEmpty!3136 (= mapRest!3126 (store mapRest!3136 mapKey!3136 mapValue!3136))))

(assert (= (and mapNonEmpty!3126 condMapEmpty!3136) mapIsEmpty!3136))

(assert (= (and mapNonEmpty!3126 (not condMapEmpty!3136)) mapNonEmpty!3136))

(assert (= b!692549 b!692545))

(assert (= (and b!692549 condSetEmpty!3838) setIsEmpty!3839))

(assert (= (and b!692549 (not condSetEmpty!3838)) setNonEmpty!3838))

(assert (= setNonEmpty!3838 b!692547))

(assert (= (and mapNonEmpty!3136 ((_ is Cons!7518) mapValue!3136)) b!692549))

(assert (= b!692544 b!692546))

(assert (= (and b!692544 condSetEmpty!3839) setIsEmpty!3838))

(assert (= (and b!692544 (not condSetEmpty!3839)) setNonEmpty!3839))

(assert (= setNonEmpty!3839 b!692548))

(assert (= (and mapNonEmpty!3126 ((_ is Cons!7518) mapDefault!3136)) b!692544))

(declare-fun m!948624 () Bool)

(assert (=> b!692544 m!948624))

(declare-fun m!948626 () Bool)

(assert (=> b!692549 m!948626))

(declare-fun m!948628 () Bool)

(assert (=> setNonEmpty!3839 m!948628))

(declare-fun m!948630 () Bool)

(assert (=> mapNonEmpty!3136 m!948630))

(declare-fun m!948632 () Bool)

(assert (=> setNonEmpty!3838 m!948632))

(declare-fun tp!209003 () Bool)

(declare-fun b!692550 () Bool)

(declare-fun e!435848 () Bool)

(declare-fun setRes!3840 () Bool)

(declare-fun e!435847 () Bool)

(assert (=> b!692550 (= e!435847 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 mapValue!3127)))) e!435848 tp_is_empty!3647 setRes!3840 tp!209003))))

(declare-fun condSetEmpty!3840 () Bool)

(assert (=> b!692550 (= condSetEmpty!3840 (= (_2!4380 (h!12919 mapValue!3127)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!692551 () Bool)

(declare-fun tp!209002 () Bool)

(assert (=> b!692551 (= e!435848 tp!209002)))

(declare-fun e!435846 () Bool)

(declare-fun tp!209005 () Bool)

(declare-fun setElem!3840 () Context!494)

(declare-fun setNonEmpty!3840 () Bool)

(assert (=> setNonEmpty!3840 (= setRes!3840 (and tp!209005 (inv!9640 setElem!3840) e!435846))))

(declare-fun setRest!3840 () (InoxSet Context!494))

(assert (=> setNonEmpty!3840 (= (_2!4380 (h!12919 mapValue!3127)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3840 true) setRest!3840))))

(declare-fun setIsEmpty!3840 () Bool)

(assert (=> setIsEmpty!3840 setRes!3840))

(declare-fun b!692552 () Bool)

(declare-fun tp!209004 () Bool)

(assert (=> b!692552 (= e!435846 tp!209004)))

(assert (=> mapNonEmpty!3126 (= tp!208830 e!435847)))

(assert (= b!692550 b!692551))

(assert (= (and b!692550 condSetEmpty!3840) setIsEmpty!3840))

(assert (= (and b!692550 (not condSetEmpty!3840)) setNonEmpty!3840))

(assert (= setNonEmpty!3840 b!692552))

(assert (= (and mapNonEmpty!3126 ((_ is Cons!7518) mapValue!3127)) b!692550))

(declare-fun m!948634 () Bool)

(assert (=> b!692550 m!948634))

(declare-fun m!948636 () Bool)

(assert (=> setNonEmpty!3840 m!948636))

(declare-fun b!692553 () Bool)

(declare-fun e!435849 () Bool)

(declare-fun tp!209008 () Bool)

(declare-fun tp!209007 () Bool)

(assert (=> b!692553 (= e!435849 (and (inv!9629 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) tp!209007 (inv!9629 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) tp!209008))))

(declare-fun b!692555 () Bool)

(declare-fun e!435850 () Bool)

(declare-fun tp!209006 () Bool)

(assert (=> b!692555 (= e!435850 tp!209006)))

(declare-fun b!692554 () Bool)

(assert (=> b!692554 (= e!435849 (and (inv!9641 (xs!5302 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) e!435850))))

(assert (=> b!692283 (= tp!208812 (and (inv!9629 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) e!435849))))

(assert (= (and b!692283 ((_ is Node!2651) (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) b!692553))

(assert (= b!692554 b!692555))

(assert (= (and b!692283 ((_ is Leaf!3927) (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) b!692554))

(declare-fun m!948638 () Bool)

(assert (=> b!692553 m!948638))

(declare-fun m!948640 () Bool)

(assert (=> b!692553 m!948640))

(declare-fun m!948642 () Bool)

(assert (=> b!692554 m!948642))

(assert (=> b!692283 m!948284))

(declare-fun b!692566 () Bool)

(declare-fun e!435853 () Bool)

(assert (=> b!692566 (= e!435853 tp_is_empty!3647)))

(assert (=> b!692291 (= tp!208803 e!435853)))

(declare-fun b!692567 () Bool)

(declare-fun tp!209022 () Bool)

(declare-fun tp!209020 () Bool)

(assert (=> b!692567 (= e!435853 (and tp!209022 tp!209020))))

(declare-fun b!692569 () Bool)

(declare-fun tp!209023 () Bool)

(declare-fun tp!209019 () Bool)

(assert (=> b!692569 (= e!435853 (and tp!209023 tp!209019))))

(declare-fun b!692568 () Bool)

(declare-fun tp!209021 () Bool)

(assert (=> b!692568 (= e!435853 tp!209021)))

(assert (= (and b!692291 ((_ is ElementMatch!1845) (regex!1506 (h!12917 rules!1486)))) b!692566))

(assert (= (and b!692291 ((_ is Concat!3395) (regex!1506 (h!12917 rules!1486)))) b!692567))

(assert (= (and b!692291 ((_ is Star!1845) (regex!1506 (h!12917 rules!1486)))) b!692568))

(assert (= (and b!692291 ((_ is Union!1845) (regex!1506 (h!12917 rules!1486)))) b!692569))

(declare-fun b!692580 () Bool)

(declare-fun b_free!19685 () Bool)

(declare-fun b_next!19749 () Bool)

(assert (=> b!692580 (= b_free!19685 (not b_next!19749))))

(declare-fun tp!209034 () Bool)

(declare-fun b_and!63479 () Bool)

(assert (=> b!692580 (= tp!209034 b_and!63479)))

(declare-fun b_free!19687 () Bool)

(declare-fun b_next!19751 () Bool)

(assert (=> b!692580 (= b_free!19687 (not b_next!19751))))

(declare-fun tp!209032 () Bool)

(declare-fun b_and!63481 () Bool)

(assert (=> b!692580 (= tp!209032 b_and!63481)))

(declare-fun e!435862 () Bool)

(assert (=> b!692580 (= e!435862 (and tp!209034 tp!209032))))

(declare-fun tp!209035 () Bool)

(declare-fun e!435864 () Bool)

(declare-fun b!692579 () Bool)

(assert (=> b!692579 (= e!435864 (and tp!209035 (inv!9624 (tag!1768 (h!12917 (t!87348 rules!1486)))) (inv!9635 (transformation!1506 (h!12917 (t!87348 rules!1486)))) e!435862))))

(declare-fun b!692578 () Bool)

(declare-fun e!435863 () Bool)

(declare-fun tp!209033 () Bool)

(assert (=> b!692578 (= e!435863 (and e!435864 tp!209033))))

(assert (=> b!692290 (= tp!208806 e!435863)))

(assert (= b!692579 b!692580))

(assert (= b!692578 b!692579))

(assert (= (and b!692290 ((_ is Cons!7516) (t!87348 rules!1486))) b!692578))

(declare-fun m!948644 () Bool)

(assert (=> b!692579 m!948644))

(declare-fun m!948646 () Bool)

(assert (=> b!692579 m!948646))

(declare-fun e!435866 () Bool)

(declare-fun tp!209037 () Bool)

(declare-fun b!692581 () Bool)

(declare-fun tp!209038 () Bool)

(assert (=> b!692581 (= e!435866 (and (inv!9629 (left!6006 (c!121614 treated!50))) tp!209037 (inv!9629 (right!6336 (c!121614 treated!50))) tp!209038))))

(declare-fun b!692583 () Bool)

(declare-fun e!435867 () Bool)

(declare-fun tp!209036 () Bool)

(assert (=> b!692583 (= e!435867 tp!209036)))

(declare-fun b!692582 () Bool)

(assert (=> b!692582 (= e!435866 (and (inv!9641 (xs!5302 (c!121614 treated!50))) e!435867))))

(assert (=> b!692299 (= tp!208807 (and (inv!9629 (c!121614 treated!50)) e!435866))))

(assert (= (and b!692299 ((_ is Node!2651) (c!121614 treated!50))) b!692581))

(assert (= b!692582 b!692583))

(assert (= (and b!692299 ((_ is Leaf!3927) (c!121614 treated!50))) b!692582))

(declare-fun m!948648 () Bool)

(assert (=> b!692581 m!948648))

(declare-fun m!948650 () Bool)

(assert (=> b!692581 m!948650))

(declare-fun m!948652 () Bool)

(assert (=> b!692582 m!948652))

(assert (=> b!692299 m!948282))

(check-sat (not b!692427) (not b!692363) (not b!692412) (not b!692417) (not b_next!19747) (not b!692360) b_and!63469 (not b!692380) (not b!692515) (not b!692467) (not b!692452) (not b!692546) (not b!692516) (not b!692442) (not b!692297) (not b!692364) (not b!692517) (not b!692567) (not d!232642) (not b!692524) (not b!692406) (not b!692527) (not b!692488) (not b!692393) (not b!692544) (not b!692519) (not b!692398) (not setNonEmpty!3807) (not d!232670) (not b!692569) (not b!692416) (not mapNonEmpty!3130) (not b!692325) (not b!692358) (not b!692274) (not b!692470) (not b!692453) (not d!232674) (not b_next!19733) (not b!692485) (not b!692371) (not d!232690) (not b!692528) (not d!232640) (not d!232696) b_and!63463 (not b!692489) (not b_next!19751) b_and!63475 (not b_next!19745) (not setNonEmpty!3829) (not b!692441) (not b_next!19741) (not d!232658) (not b!692322) (not b!692514) (not b!692376) (not b!692493) (not b!692568) (not b!692299) (not b!692327) (not setNonEmpty!3840) (not b!692266) (not b!692487) (not b!692486) (not b!692415) (not b!692409) (not b!692334) (not b!692523) (not b!692583) (not b!692379) (not setNonEmpty!3812) (not d!232698) (not b_next!19737) (not b!692428) (not b_next!19739) (not d!232618) (not d!232644) b_and!63473 (not b!692401) (not setNonEmpty!3830) (not b!692468) (not setNonEmpty!3826) (not setNonEmpty!3811) (not d!232630) (not setNonEmpty!3838) (not b_next!19749) b_and!63479 (not b!692395) (not b!692522) (not mapNonEmpty!3136) (not b!692521) (not d!232700) (not b!692429) (not b!692518) (not setNonEmpty!3839) (not d!232686) (not b!692579) (not b!692339) (not b!692551) (not d!232682) (not b!692582) (not b!692396) (not b!692349) (not b!692490) (not b!692520) (not b!692397) (not setNonEmpty!3818) b_and!63467 (not b!692326) (not b!692526) (not b!692513) (not setNonEmpty!3825) (not b!692392) (not b_next!19735) (not setNonEmpty!3832) (not b!692549) (not b!692439) (not b_next!19743) (not b!692491) (not b!692399) (not b!692492) (not d!232648) (not b!692443) tp_is_empty!3647 (not d!232668) (not d!232680) (not d!232616) (not d!232692) (not b!692547) (not d!232672) (not d!232652) (not b!692403) (not setNonEmpty!3831) (not b!692529) (not b!692553) (not b!692525) (not b!692283) (not b!692381) (not b!692366) (not b!692545) (not d!232662) (not setNonEmpty!3808) (not d!232632) (not b!692378) (not b!692336) (not b!692503) (not b!692440) (not b!692469) (not b!692548) (not d!232646) (not b!692419) (not b!692377) (not d!232664) b_and!63465 (not b!692372) (not b!692550) (not d!232702) (not b!692504) (not d!232666) (not b!692578) (not setNonEmpty!3824) b_and!63477 (not mapNonEmpty!3133) (not b!692552) (not setNonEmpty!3817) (not b!692390) (not setNonEmpty!3819) (not b!692465) (not b!692581) (not b!692554) (not b!692426) (not d!232650) b_and!63471 (not b!692466) (not b!692391) (not b!692400) (not b!692438) (not b!692454) (not b!692323) (not b!692502) (not setNonEmpty!3833) b_and!63481 (not b!692555) (not d!232628) (not b!692324) (not b!692350))
(check-sat (not b_next!19733) (not b_next!19741) b_and!63473 b_and!63467 (not b_next!19735) (not b_next!19743) b_and!63465 b_and!63477 b_and!63471 b_and!63481 (not b_next!19747) b_and!63469 b_and!63463 (not b_next!19751) b_and!63475 (not b_next!19745) (not b_next!19737) (not b_next!19739) (not b_next!19749) b_and!63479)
(get-model)

(declare-fun b!692596 () Bool)

(declare-fun e!435873 () Bool)

(declare-fun e!435872 () Bool)

(assert (=> b!692596 (= e!435873 e!435872)))

(declare-fun res!313909 () Bool)

(assert (=> b!692596 (=> (not res!313909) (not e!435872))))

(assert (=> b!692596 (= res!313909 (<= (- 1) (- (height!318 (left!6007 (c!121615 acc!372))) (height!318 (right!6337 (c!121615 acc!372))))))))

(declare-fun b!692598 () Bool)

(declare-fun res!313911 () Bool)

(assert (=> b!692598 (=> (not res!313911) (not e!435872))))

(declare-fun isEmpty!4883 (Conc!2652) Bool)

(assert (=> b!692598 (= res!313911 (not (isEmpty!4883 (left!6007 (c!121615 acc!372)))))))

(declare-fun b!692599 () Bool)

(declare-fun res!313907 () Bool)

(assert (=> b!692599 (=> (not res!313907) (not e!435872))))

(assert (=> b!692599 (= res!313907 (<= (- (height!318 (left!6007 (c!121615 acc!372))) (height!318 (right!6337 (c!121615 acc!372)))) 1))))

(declare-fun b!692600 () Bool)

(declare-fun res!313906 () Bool)

(assert (=> b!692600 (=> (not res!313906) (not e!435872))))

(assert (=> b!692600 (= res!313906 (isBalanced!697 (left!6007 (c!121615 acc!372))))))

(declare-fun b!692601 () Bool)

(declare-fun res!313908 () Bool)

(assert (=> b!692601 (=> (not res!313908) (not e!435872))))

(assert (=> b!692601 (= res!313908 (isBalanced!697 (right!6337 (c!121615 acc!372))))))

(declare-fun d!232706 () Bool)

(declare-fun res!313910 () Bool)

(assert (=> d!232706 (=> res!313910 e!435873)))

(assert (=> d!232706 (= res!313910 (not ((_ is Node!2652) (c!121615 acc!372))))))

(assert (=> d!232706 (= (isBalanced!697 (c!121615 acc!372)) e!435873)))

(declare-fun b!692597 () Bool)

(assert (=> b!692597 (= e!435872 (not (isEmpty!4883 (right!6337 (c!121615 acc!372)))))))

(assert (= (and d!232706 (not res!313910)) b!692596))

(assert (= (and b!692596 res!313909) b!692599))

(assert (= (and b!692599 res!313907) b!692600))

(assert (= (and b!692600 res!313906) b!692601))

(assert (= (and b!692601 res!313908) b!692598))

(assert (= (and b!692598 res!313911) b!692597))

(declare-fun m!948654 () Bool)

(assert (=> b!692596 m!948654))

(declare-fun m!948656 () Bool)

(assert (=> b!692596 m!948656))

(declare-fun m!948658 () Bool)

(assert (=> b!692597 m!948658))

(declare-fun m!948660 () Bool)

(assert (=> b!692598 m!948660))

(declare-fun m!948662 () Bool)

(assert (=> b!692600 m!948662))

(declare-fun m!948664 () Bool)

(assert (=> b!692601 m!948664))

(assert (=> b!692599 m!948654))

(assert (=> b!692599 m!948656))

(assert (=> d!232680 d!232706))

(declare-fun d!232708 () Bool)

(assert (=> d!232708 (= (list!3151 (_1!4376 lt!284961)) (list!3154 (c!121615 (_1!4376 lt!284961))))))

(declare-fun bs!137395 () Bool)

(assert (= bs!137395 d!232708))

(declare-fun m!948666 () Bool)

(assert (=> bs!137395 m!948666))

(assert (=> b!692399 d!232708))

(declare-fun b!692612 () Bool)

(declare-fun e!435880 () tuple2!7926)

(declare-datatypes ((tuple2!7928 0))(
  ( (tuple2!7929 (_1!4383 Token!2712) (_2!4383 List!7525)) )
))
(declare-datatypes ((Option!1708 0))(
  ( (None!1707) (Some!1707 (v!17681 tuple2!7928)) )
))
(declare-fun lt!284976 () Option!1708)

(declare-fun lt!284977 () tuple2!7926)

(assert (=> b!692612 (= e!435880 (tuple2!7927 (Cons!7515 (_1!4383 (v!17681 lt!284976)) (_1!4382 lt!284977)) (_2!4382 lt!284977)))))

(assert (=> b!692612 (= lt!284977 (lexList!323 thiss!12529 rules!1486 (_2!4383 (v!17681 lt!284976))))))

(declare-fun b!692613 () Bool)

(assert (=> b!692613 (= e!435880 (tuple2!7927 Nil!7515 (list!3152 totalInput!378)))))

(declare-fun d!232710 () Bool)

(declare-fun e!435882 () Bool)

(assert (=> d!232710 e!435882))

(declare-fun c!121647 () Bool)

(declare-fun lt!284978 () tuple2!7926)

(declare-fun size!6147 (List!7529) Int)

(assert (=> d!232710 (= c!121647 (> (size!6147 (_1!4382 lt!284978)) 0))))

(assert (=> d!232710 (= lt!284978 e!435880)))

(declare-fun c!121646 () Bool)

(assert (=> d!232710 (= c!121646 ((_ is Some!1707) lt!284976))))

(declare-fun maxPrefix!867 (LexerInterface!1320 List!7530 List!7525) Option!1708)

(assert (=> d!232710 (= lt!284976 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 totalInput!378)))))

(assert (=> d!232710 (= (lexList!323 thiss!12529 rules!1486 (list!3152 totalInput!378)) lt!284978)))

(declare-fun b!692614 () Bool)

(declare-fun e!435881 () Bool)

(assert (=> b!692614 (= e!435882 e!435881)))

(declare-fun res!313914 () Bool)

(assert (=> b!692614 (= res!313914 (< (size!6146 (_2!4382 lt!284978)) (size!6146 (list!3152 totalInput!378))))))

(assert (=> b!692614 (=> (not res!313914) (not e!435881))))

(declare-fun b!692615 () Bool)

(assert (=> b!692615 (= e!435882 (= (_2!4382 lt!284978) (list!3152 totalInput!378)))))

(declare-fun b!692616 () Bool)

(declare-fun isEmpty!4884 (List!7529) Bool)

(assert (=> b!692616 (= e!435881 (not (isEmpty!4884 (_1!4382 lt!284978))))))

(assert (= (and d!232710 c!121646) b!692612))

(assert (= (and d!232710 (not c!121646)) b!692613))

(assert (= (and d!232710 c!121647) b!692614))

(assert (= (and d!232710 (not c!121647)) b!692615))

(assert (= (and b!692614 res!313914) b!692616))

(declare-fun m!948668 () Bool)

(assert (=> b!692612 m!948668))

(declare-fun m!948670 () Bool)

(assert (=> d!232710 m!948670))

(assert (=> d!232710 m!948322))

(declare-fun m!948672 () Bool)

(assert (=> d!232710 m!948672))

(declare-fun m!948674 () Bool)

(assert (=> b!692614 m!948674))

(assert (=> b!692614 m!948322))

(declare-fun m!948676 () Bool)

(assert (=> b!692614 m!948676))

(declare-fun m!948678 () Bool)

(assert (=> b!692616 m!948678))

(assert (=> b!692399 d!232710))

(assert (=> b!692399 d!232646))

(declare-fun d!232712 () Bool)

(assert (=> d!232712 (= (height!318 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))) (ite ((_ is Empty!2652) (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))) 0 (ite ((_ is Leaf!3928) (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))) 1 (cheight!2863 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))))))))

(assert (=> b!692391 d!232712))

(declare-fun d!232714 () Bool)

(assert (=> d!232714 (= (height!318 (c!121615 (_1!4376 lt!284936))) (ite ((_ is Empty!2652) (c!121615 (_1!4376 lt!284936))) 0 (ite ((_ is Leaf!3928) (c!121615 (_1!4376 lt!284936))) 1 (cheight!2863 (c!121615 (_1!4376 lt!284936))))))))

(assert (=> b!692391 d!232714))

(declare-fun d!232716 () Bool)

(assert (=> d!232716 (= (max!0 (height!318 (c!121615 acc!372)) (height!318 (c!121615 (_1!4376 lt!284936)))) (ite (< (height!318 (c!121615 acc!372)) (height!318 (c!121615 (_1!4376 lt!284936)))) (height!318 (c!121615 (_1!4376 lt!284936))) (height!318 (c!121615 acc!372))))))

(assert (=> b!692391 d!232716))

(declare-fun b!692659 () Bool)

(declare-fun e!435912 () Conc!2652)

(declare-fun e!435908 () Conc!2652)

(assert (=> b!692659 (= e!435912 e!435908)))

(declare-fun c!121665 () Bool)

(assert (=> b!692659 (= c!121665 (= (c!121615 (_1!4376 lt!284936)) Empty!2652))))

(declare-fun b!692660 () Bool)

(declare-fun c!121667 () Bool)

(declare-fun lt!284988 () Int)

(assert (=> b!692660 (= c!121667 (and (<= (- 1) lt!284988) (<= lt!284988 1)))))

(assert (=> b!692660 (= lt!284988 (- (height!318 (c!121615 (_1!4376 lt!284936))) (height!318 (c!121615 acc!372))))))

(declare-fun e!435904 () Conc!2652)

(assert (=> b!692660 (= e!435908 e!435904)))

(declare-fun bm!43623 () Bool)

(declare-fun call!43633 () Conc!2652)

(declare-fun call!43632 () Conc!2652)

(assert (=> bm!43623 (= call!43633 call!43632)))

(declare-fun b!692661 () Bool)

(declare-fun e!435910 () Conc!2652)

(assert (=> b!692661 (= e!435910 call!43632)))

(declare-fun bm!43624 () Bool)

(declare-fun call!43630 () Conc!2652)

(declare-fun call!43634 () Conc!2652)

(assert (=> bm!43624 (= call!43630 call!43634)))

(declare-fun b!692662 () Bool)

(declare-fun e!435909 () Conc!2652)

(declare-fun e!435906 () Conc!2652)

(assert (=> b!692662 (= e!435909 e!435906)))

(declare-fun lt!284989 () Conc!2652)

(declare-fun call!43631 () Conc!2652)

(assert (=> b!692662 (= lt!284989 call!43631)))

(declare-fun c!121664 () Bool)

(declare-fun call!43637 () Int)

(declare-fun call!43643 () Int)

(assert (=> b!692662 (= c!121664 (= call!43637 (- call!43643 3)))))

(declare-fun bm!43625 () Bool)

(declare-fun call!43642 () Conc!2652)

(assert (=> bm!43625 (= call!43642 call!43630)))

(declare-fun b!692663 () Bool)

(assert (=> b!692663 (= e!435908 (c!121615 acc!372))))

(declare-fun b!692664 () Bool)

(declare-fun call!43639 () Conc!2652)

(assert (=> b!692664 (= e!435906 call!43639)))

(declare-fun bm!43626 () Bool)

(declare-fun call!43635 () Conc!2652)

(declare-fun call!43628 () Conc!2652)

(assert (=> bm!43626 (= call!43635 call!43628)))

(declare-fun b!692665 () Bool)

(declare-fun res!313925 () Bool)

(declare-fun e!435907 () Bool)

(assert (=> b!692665 (=> (not res!313925) (not e!435907))))

(declare-fun lt!284990 () Conc!2652)

(assert (=> b!692665 (= res!313925 (>= (height!318 lt!284990) (max!0 (height!318 (c!121615 acc!372)) (height!318 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!692666 () Bool)

(assert (=> b!692666 (= e!435912 (c!121615 (_1!4376 lt!284936)))))

(declare-fun bm!43627 () Bool)

(declare-fun call!43641 () Conc!2652)

(assert (=> bm!43627 (= call!43641 call!43630)))

(declare-fun b!692667 () Bool)

(assert (=> b!692667 (= e!435907 (= (list!3154 lt!284990) (++!1962 (list!3154 (c!121615 acc!372)) (list!3154 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!692668 () Bool)

(assert (=> b!692668 (= e!435904 call!43634)))

(declare-fun b!692669 () Bool)

(declare-fun c!121666 () Bool)

(declare-fun call!43638 () Int)

(assert (=> b!692669 (= c!121666 (>= call!43643 call!43638))))

(declare-fun e!435911 () Conc!2652)

(assert (=> b!692669 (= e!435911 e!435910)))

(declare-fun bm!43628 () Bool)

(declare-fun call!43640 () Conc!2652)

(assert (=> bm!43628 (= call!43639 call!43640)))

(declare-fun c!121669 () Bool)

(declare-fun bm!43629 () Bool)

(assert (=> bm!43629 (= call!43638 (height!318 (ite c!121669 (right!6337 (c!121615 acc!372)) (left!6007 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!692670 () Bool)

(declare-fun c!121668 () Bool)

(declare-fun call!43636 () Int)

(assert (=> b!692670 (= c!121668 (>= call!43636 call!43638))))

(assert (=> b!692670 (= e!435911 e!435909)))

(declare-fun bm!43630 () Bool)

(assert (=> bm!43630 (= call!43631 call!43628)))

(declare-fun b!692671 () Bool)

(assert (=> b!692671 (= e!435904 e!435911)))

(assert (=> b!692671 (= c!121669 (< lt!284988 (- 1)))))

(declare-fun bm!43631 () Bool)

(assert (=> bm!43631 (= call!43643 (height!318 (ite c!121669 (c!121615 acc!372) (right!6337 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun bm!43632 () Bool)

(declare-fun call!43629 () Conc!2652)

(assert (=> bm!43632 (= call!43629 call!43641)))

(declare-fun b!692672 () Bool)

(declare-fun e!435903 () Conc!2652)

(assert (=> b!692672 (= e!435903 call!43642)))

(declare-fun bm!43633 () Bool)

(assert (=> bm!43633 (= call!43636 (height!318 (ite c!121669 (left!6007 (c!121615 acc!372)) (c!121615 (_1!4376 lt!284936)))))))

(declare-fun b!692673 () Bool)

(assert (=> b!692673 (= e!435903 call!43642)))

(declare-fun b!692674 () Bool)

(declare-fun e!435905 () Bool)

(assert (=> b!692674 (= e!435905 (isBalanced!697 (c!121615 (_1!4376 lt!284936))))))

(declare-fun d!232718 () Bool)

(assert (=> d!232718 e!435907))

(declare-fun res!313929 () Bool)

(assert (=> d!232718 (=> (not res!313929) (not e!435907))))

(assert (=> d!232718 (= res!313929 (appendAssocInst!133 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))))

(assert (=> d!232718 (= lt!284990 e!435912)))

(declare-fun c!121670 () Bool)

(assert (=> d!232718 (= c!121670 (= (c!121615 acc!372) Empty!2652))))

(assert (=> d!232718 e!435905))

(declare-fun res!313926 () Bool)

(assert (=> d!232718 (=> (not res!313926) (not e!435905))))

(assert (=> d!232718 (= res!313926 (isBalanced!697 (c!121615 acc!372)))))

(assert (=> d!232718 (= (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))) lt!284990)))

(declare-fun b!692675 () Bool)

(declare-fun res!313928 () Bool)

(assert (=> b!692675 (=> (not res!313928) (not e!435907))))

(assert (=> b!692675 (= res!313928 (<= (height!318 lt!284990) (+ (max!0 (height!318 (c!121615 acc!372)) (height!318 (c!121615 (_1!4376 lt!284936)))) 1)))))

(declare-fun bm!43634 () Bool)

(declare-fun lt!284987 () Conc!2652)

(assert (=> bm!43634 (= call!43637 (height!318 (ite c!121669 lt!284989 lt!284987)))))

(declare-fun bm!43635 () Bool)

(assert (=> bm!43635 (= call!43632 call!43640)))

(declare-fun bm!43636 () Bool)

(assert (=> bm!43636 (= call!43628 (++!1963 (ite c!121669 (ite c!121668 (right!6337 (c!121615 acc!372)) (right!6337 (right!6337 (c!121615 acc!372)))) (c!121615 acc!372)) (ite c!121669 (c!121615 (_1!4376 lt!284936)) (ite c!121666 (left!6007 (c!121615 (_1!4376 lt!284936))) (left!6007 (left!6007 (c!121615 (_1!4376 lt!284936))))))))))

(declare-fun b!692676 () Bool)

(assert (=> b!692676 (= e!435906 call!43639)))

(declare-fun b!692677 () Bool)

(declare-fun res!313927 () Bool)

(assert (=> b!692677 (=> (not res!313927) (not e!435907))))

(assert (=> b!692677 (= res!313927 (isBalanced!697 lt!284990))))

(declare-fun b!692678 () Bool)

(assert (=> b!692678 (= e!435909 call!43641)))

(declare-fun b!692679 () Bool)

(assert (=> b!692679 (= e!435910 e!435903)))

(assert (=> b!692679 (= lt!284987 call!43635)))

(declare-fun c!121671 () Bool)

(assert (=> b!692679 (= c!121671 (= call!43637 (- call!43636 3)))))

(declare-fun bm!43637 () Bool)

(declare-fun <>!44 (Conc!2652 Conc!2652) Conc!2652)

(assert (=> bm!43637 (= call!43634 (<>!44 (ite c!121667 (c!121615 acc!372) (ite c!121669 (ite c!121668 (left!6007 (c!121615 acc!372)) (ite c!121664 (left!6007 (right!6337 (c!121615 acc!372))) (left!6007 (c!121615 acc!372)))) (ite c!121671 call!43633 lt!284987))) (ite c!121667 (c!121615 (_1!4376 lt!284936)) (ite c!121669 (ite c!121668 call!43631 (ite c!121664 lt!284989 (left!6007 (right!6337 (c!121615 acc!372))))) (ite c!121671 (right!6337 (c!121615 (_1!4376 lt!284936))) call!43633)))))))

(declare-fun bm!43638 () Bool)

(assert (=> bm!43638 (= call!43640 (<>!44 (ite c!121669 (ite c!121664 (left!6007 (c!121615 acc!372)) call!43629) (ite c!121666 call!43635 (ite c!121671 lt!284987 (right!6337 (left!6007 (c!121615 (_1!4376 lt!284936))))))) (ite c!121669 (ite c!121664 call!43629 lt!284989) (ite c!121666 (right!6337 (c!121615 (_1!4376 lt!284936))) (ite c!121671 (right!6337 (left!6007 (c!121615 (_1!4376 lt!284936)))) (right!6337 (c!121615 (_1!4376 lt!284936))))))))))

(assert (= (and d!232718 res!313926) b!692674))

(assert (= (and d!232718 c!121670) b!692666))

(assert (= (and d!232718 (not c!121670)) b!692659))

(assert (= (and b!692659 c!121665) b!692663))

(assert (= (and b!692659 (not c!121665)) b!692660))

(assert (= (and b!692660 c!121667) b!692668))

(assert (= (and b!692660 (not c!121667)) b!692671))

(assert (= (and b!692671 c!121669) b!692670))

(assert (= (and b!692671 (not c!121669)) b!692669))

(assert (= (and b!692670 c!121668) b!692678))

(assert (= (and b!692670 (not c!121668)) b!692662))

(assert (= (and b!692662 c!121664) b!692664))

(assert (= (and b!692662 (not c!121664)) b!692676))

(assert (= (or b!692664 b!692676) bm!43632))

(assert (= (or b!692664 b!692676) bm!43628))

(assert (= (or b!692678 b!692662) bm!43630))

(assert (= (or b!692678 bm!43632) bm!43627))

(assert (= (and b!692669 c!121666) b!692661))

(assert (= (and b!692669 (not c!121666)) b!692679))

(assert (= (and b!692679 c!121671) b!692672))

(assert (= (and b!692679 (not c!121671)) b!692673))

(assert (= (or b!692672 b!692673) bm!43623))

(assert (= (or b!692672 b!692673) bm!43625))

(assert (= (or b!692661 b!692679) bm!43626))

(assert (= (or b!692661 bm!43623) bm!43635))

(assert (= (or bm!43630 bm!43626) bm!43636))

(assert (= (or bm!43628 bm!43635) bm!43638))

(assert (= (or b!692670 b!692669) bm!43629))

(assert (= (or b!692662 b!692679) bm!43634))

(assert (= (or bm!43627 bm!43625) bm!43624))

(assert (= (or b!692662 b!692669) bm!43631))

(assert (= (or b!692670 b!692679) bm!43633))

(assert (= (or b!692668 bm!43624) bm!43637))

(assert (= (and d!232718 res!313929) b!692677))

(assert (= (and b!692677 res!313927) b!692675))

(assert (= (and b!692675 res!313928) b!692665))

(assert (= (and b!692665 res!313925) b!692667))

(declare-fun m!948680 () Bool)

(assert (=> bm!43631 m!948680))

(declare-fun m!948682 () Bool)

(assert (=> bm!43638 m!948682))

(declare-fun m!948684 () Bool)

(assert (=> b!692665 m!948684))

(assert (=> b!692665 m!948482))

(assert (=> b!692665 m!948484))

(assert (=> b!692665 m!948482))

(assert (=> b!692665 m!948484))

(assert (=> b!692665 m!948488))

(declare-fun m!948686 () Bool)

(assert (=> bm!43629 m!948686))

(assert (=> d!232718 m!948478))

(assert (=> d!232718 m!948526))

(declare-fun m!948688 () Bool)

(assert (=> bm!43633 m!948688))

(declare-fun m!948690 () Bool)

(assert (=> b!692667 m!948690))

(assert (=> b!692667 m!948384))

(declare-fun m!948692 () Bool)

(assert (=> b!692667 m!948692))

(assert (=> b!692667 m!948384))

(assert (=> b!692667 m!948692))

(declare-fun m!948694 () Bool)

(assert (=> b!692667 m!948694))

(declare-fun m!948696 () Bool)

(assert (=> bm!43637 m!948696))

(declare-fun m!948698 () Bool)

(assert (=> b!692674 m!948698))

(declare-fun m!948700 () Bool)

(assert (=> bm!43636 m!948700))

(assert (=> b!692675 m!948684))

(assert (=> b!692675 m!948482))

(assert (=> b!692675 m!948484))

(assert (=> b!692675 m!948482))

(assert (=> b!692675 m!948484))

(assert (=> b!692675 m!948488))

(assert (=> b!692660 m!948484))

(assert (=> b!692660 m!948482))

(declare-fun m!948702 () Bool)

(assert (=> b!692677 m!948702))

(declare-fun m!948704 () Bool)

(assert (=> bm!43634 m!948704))

(assert (=> b!692391 d!232718))

(declare-fun d!232720 () Bool)

(assert (=> d!232720 (= (height!318 (c!121615 acc!372)) (ite ((_ is Empty!2652) (c!121615 acc!372)) 0 (ite ((_ is Leaf!3928) (c!121615 acc!372)) 1 (cheight!2863 (c!121615 acc!372)))))))

(assert (=> b!692391 d!232720))

(declare-fun d!232722 () Bool)

(declare-fun lambda!21541 () Int)

(declare-fun forall!1957 (List!7526 Int) Bool)

(assert (=> d!232722 (= (inv!9640 setElem!3839) (forall!1957 (exprs!747 setElem!3839) lambda!21541))))

(declare-fun bs!137396 () Bool)

(assert (= bs!137396 d!232722))

(declare-fun m!948706 () Bool)

(assert (=> bs!137396 m!948706))

(assert (=> setNonEmpty!3838 d!232722))

(declare-fun b!692692 () Bool)

(declare-fun res!313947 () Bool)

(declare-fun e!435918 () Bool)

(assert (=> b!692692 (=> (not res!313947) (not e!435918))))

(assert (=> b!692692 (= res!313947 (isBalanced!696 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(declare-fun b!692693 () Bool)

(declare-fun res!313945 () Bool)

(assert (=> b!692693 (=> (not res!313945) (not e!435918))))

(declare-fun height!319 (Conc!2651) Int)

(assert (=> b!692693 (= res!313945 (<= (- (height!319 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) (height!319 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) 1))))

(declare-fun b!692694 () Bool)

(declare-fun isEmpty!4885 (Conc!2651) Bool)

(assert (=> b!692694 (= e!435918 (not (isEmpty!4885 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))))

(declare-fun b!692695 () Bool)

(declare-fun res!313942 () Bool)

(assert (=> b!692695 (=> (not res!313942) (not e!435918))))

(assert (=> b!692695 (= res!313942 (isBalanced!696 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(declare-fun b!692696 () Bool)

(declare-fun e!435917 () Bool)

(assert (=> b!692696 (= e!435917 e!435918)))

(declare-fun res!313944 () Bool)

(assert (=> b!692696 (=> (not res!313944) (not e!435918))))

(assert (=> b!692696 (= res!313944 (<= (- 1) (- (height!319 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) (height!319 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))))

(declare-fun d!232724 () Bool)

(declare-fun res!313946 () Bool)

(assert (=> d!232724 (=> res!313946 e!435917)))

(assert (=> d!232724 (= res!313946 (not ((_ is Node!2651) (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(assert (=> d!232724 (= (isBalanced!696 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) e!435917)))

(declare-fun b!692697 () Bool)

(declare-fun res!313943 () Bool)

(assert (=> b!692697 (=> (not res!313943) (not e!435918))))

(assert (=> b!692697 (= res!313943 (not (isEmpty!4885 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))))

(assert (= (and d!232724 (not res!313946)) b!692696))

(assert (= (and b!692696 res!313944) b!692693))

(assert (= (and b!692693 res!313945) b!692692))

(assert (= (and b!692692 res!313947) b!692695))

(assert (= (and b!692695 res!313942) b!692697))

(assert (= (and b!692697 res!313943) b!692694))

(declare-fun m!948708 () Bool)

(assert (=> b!692695 m!948708))

(declare-fun m!948710 () Bool)

(assert (=> b!692692 m!948710))

(declare-fun m!948712 () Bool)

(assert (=> b!692693 m!948712))

(declare-fun m!948714 () Bool)

(assert (=> b!692693 m!948714))

(assert (=> b!692696 m!948712))

(assert (=> b!692696 m!948714))

(declare-fun m!948716 () Bool)

(assert (=> b!692694 m!948716))

(declare-fun m!948718 () Bool)

(assert (=> b!692697 m!948718))

(assert (=> d!232642 d!232724))

(declare-fun bs!137397 () Bool)

(declare-fun d!232726 () Bool)

(assert (= bs!137397 (and d!232726 d!232722)))

(declare-fun lambda!21542 () Int)

(assert (=> bs!137397 (= lambda!21542 lambda!21541)))

(assert (=> d!232726 (= (inv!9640 setElem!3840) (forall!1957 (exprs!747 setElem!3840) lambda!21542))))

(declare-fun bs!137398 () Bool)

(assert (= bs!137398 d!232726))

(declare-fun m!948720 () Bool)

(assert (=> bs!137398 m!948720))

(assert (=> setNonEmpty!3840 d!232726))

(assert (=> b!692274 d!232654))

(declare-fun bs!137399 () Bool)

(declare-fun d!232728 () Bool)

(assert (= bs!137399 (and d!232728 d!232722)))

(declare-fun lambda!21543 () Int)

(assert (=> bs!137399 (= lambda!21543 lambda!21541)))

(declare-fun bs!137400 () Bool)

(assert (= bs!137400 (and d!232728 d!232726)))

(assert (=> bs!137400 (= lambda!21543 lambda!21542)))

(assert (=> d!232728 (= (inv!9640 setElem!3817) (forall!1957 (exprs!747 setElem!3817) lambda!21543))))

(declare-fun bs!137401 () Bool)

(assert (= bs!137401 d!232728))

(declare-fun m!948722 () Bool)

(assert (=> bs!137401 m!948722))

(assert (=> setNonEmpty!3817 d!232728))

(declare-fun d!232730 () Bool)

(declare-fun c!121674 () Bool)

(assert (=> d!232730 (= c!121674 ((_ is Nil!7511) lt!284950))))

(declare-fun e!435921 () (InoxSet C!4292))

(assert (=> d!232730 (= (content!1186 lt!284950) e!435921)))

(declare-fun b!692702 () Bool)

(assert (=> b!692702 (= e!435921 ((as const (Array C!4292 Bool)) false))))

(declare-fun b!692703 () Bool)

(assert (=> b!692703 (= e!435921 ((_ map or) (store ((as const (Array C!4292 Bool)) false) (h!12912 lt!284950) true) (content!1186 (t!87343 lt!284950))))))

(assert (= (and d!232730 c!121674) b!692702))

(assert (= (and d!232730 (not c!121674)) b!692703))

(declare-fun m!948724 () Bool)

(assert (=> b!692703 m!948724))

(declare-fun m!948726 () Bool)

(assert (=> b!692703 m!948726))

(assert (=> d!232644 d!232730))

(declare-fun d!232732 () Bool)

(declare-fun c!121675 () Bool)

(assert (=> d!232732 (= c!121675 ((_ is Nil!7511) lt!284934))))

(declare-fun e!435922 () (InoxSet C!4292))

(assert (=> d!232732 (= (content!1186 lt!284934) e!435922)))

(declare-fun b!692704 () Bool)

(assert (=> b!692704 (= e!435922 ((as const (Array C!4292 Bool)) false))))

(declare-fun b!692705 () Bool)

(assert (=> b!692705 (= e!435922 ((_ map or) (store ((as const (Array C!4292 Bool)) false) (h!12912 lt!284934) true) (content!1186 (t!87343 lt!284934))))))

(assert (= (and d!232732 c!121675) b!692704))

(assert (= (and d!232732 (not c!121675)) b!692705))

(declare-fun m!948728 () Bool)

(assert (=> b!692705 m!948728))

(declare-fun m!948730 () Bool)

(assert (=> b!692705 m!948730))

(assert (=> d!232644 d!232732))

(declare-fun d!232734 () Bool)

(declare-fun c!121676 () Bool)

(assert (=> d!232734 (= c!121676 ((_ is Nil!7511) lt!284932))))

(declare-fun e!435923 () (InoxSet C!4292))

(assert (=> d!232734 (= (content!1186 lt!284932) e!435923)))

(declare-fun b!692706 () Bool)

(assert (=> b!692706 (= e!435923 ((as const (Array C!4292 Bool)) false))))

(declare-fun b!692707 () Bool)

(assert (=> b!692707 (= e!435923 ((_ map or) (store ((as const (Array C!4292 Bool)) false) (h!12912 lt!284932) true) (content!1186 (t!87343 lt!284932))))))

(assert (= (and d!232734 c!121676) b!692706))

(assert (= (and d!232734 (not c!121676)) b!692707))

(declare-fun m!948732 () Bool)

(assert (=> b!692707 m!948732))

(declare-fun m!948734 () Bool)

(assert (=> b!692707 m!948734))

(assert (=> d!232644 d!232734))

(declare-fun d!232736 () Bool)

(declare-fun lt!284993 () Int)

(assert (=> d!232736 (= lt!284993 (size!6146 (list!3152 (_2!4376 lt!284955))))))

(declare-fun size!6148 (Conc!2651) Int)

(assert (=> d!232736 (= lt!284993 (size!6148 (c!121614 (_2!4376 lt!284955))))))

(assert (=> d!232736 (= (size!6144 (_2!4376 lt!284955)) lt!284993)))

(declare-fun bs!137402 () Bool)

(assert (= bs!137402 d!232736))

(assert (=> bs!137402 m!948472))

(assert (=> bs!137402 m!948472))

(declare-fun m!948736 () Bool)

(assert (=> bs!137402 m!948736))

(declare-fun m!948738 () Bool)

(assert (=> bs!137402 m!948738))

(assert (=> b!692379 d!232736))

(declare-fun d!232738 () Bool)

(declare-fun lt!284994 () Int)

(assert (=> d!232738 (= lt!284994 (size!6146 (list!3152 input!870)))))

(assert (=> d!232738 (= lt!284994 (size!6148 (c!121614 input!870)))))

(assert (=> d!232738 (= (size!6144 input!870) lt!284994)))

(declare-fun bs!137403 () Bool)

(assert (= bs!137403 d!232738))

(assert (=> bs!137403 m!948324))

(assert (=> bs!137403 m!948324))

(declare-fun m!948740 () Bool)

(assert (=> bs!137403 m!948740))

(declare-fun m!948742 () Bool)

(assert (=> bs!137403 m!948742))

(assert (=> b!692379 d!232738))

(declare-fun d!232740 () Bool)

(declare-fun res!313954 () Bool)

(declare-fun e!435926 () Bool)

(assert (=> d!232740 (=> (not res!313954) (not e!435926))))

(declare-fun size!6149 (Conc!2652) Int)

(assert (=> d!232740 (= res!313954 (= (csize!5534 (c!121615 acc!372)) (+ (size!6149 (left!6007 (c!121615 acc!372))) (size!6149 (right!6337 (c!121615 acc!372))))))))

(assert (=> d!232740 (= (inv!9636 (c!121615 acc!372)) e!435926)))

(declare-fun b!692714 () Bool)

(declare-fun res!313955 () Bool)

(assert (=> b!692714 (=> (not res!313955) (not e!435926))))

(assert (=> b!692714 (= res!313955 (and (not (= (left!6007 (c!121615 acc!372)) Empty!2652)) (not (= (right!6337 (c!121615 acc!372)) Empty!2652))))))

(declare-fun b!692715 () Bool)

(declare-fun res!313956 () Bool)

(assert (=> b!692715 (=> (not res!313956) (not e!435926))))

(assert (=> b!692715 (= res!313956 (= (cheight!2863 (c!121615 acc!372)) (+ (max!0 (height!318 (left!6007 (c!121615 acc!372))) (height!318 (right!6337 (c!121615 acc!372)))) 1)))))

(declare-fun b!692716 () Bool)

(assert (=> b!692716 (= e!435926 (<= 0 (cheight!2863 (c!121615 acc!372))))))

(assert (= (and d!232740 res!313954) b!692714))

(assert (= (and b!692714 res!313955) b!692715))

(assert (= (and b!692715 res!313956) b!692716))

(declare-fun m!948744 () Bool)

(assert (=> d!232740 m!948744))

(declare-fun m!948746 () Bool)

(assert (=> d!232740 m!948746))

(assert (=> b!692715 m!948654))

(assert (=> b!692715 m!948656))

(assert (=> b!692715 m!948654))

(assert (=> b!692715 m!948656))

(declare-fun m!948748 () Bool)

(assert (=> b!692715 m!948748))

(assert (=> b!692334 d!232740))

(declare-fun b!692717 () Bool)

(declare-fun res!313962 () Bool)

(declare-fun e!435928 () Bool)

(assert (=> b!692717 (=> (not res!313962) (not e!435928))))

(assert (=> b!692717 (= res!313962 (isBalanced!696 (left!6006 (c!121614 treated!50))))))

(declare-fun b!692718 () Bool)

(declare-fun res!313960 () Bool)

(assert (=> b!692718 (=> (not res!313960) (not e!435928))))

(assert (=> b!692718 (= res!313960 (<= (- (height!319 (left!6006 (c!121614 treated!50))) (height!319 (right!6336 (c!121614 treated!50)))) 1))))

(declare-fun b!692719 () Bool)

(assert (=> b!692719 (= e!435928 (not (isEmpty!4885 (right!6336 (c!121614 treated!50)))))))

(declare-fun b!692720 () Bool)

(declare-fun res!313957 () Bool)

(assert (=> b!692720 (=> (not res!313957) (not e!435928))))

(assert (=> b!692720 (= res!313957 (isBalanced!696 (right!6336 (c!121614 treated!50))))))

(declare-fun b!692721 () Bool)

(declare-fun e!435927 () Bool)

(assert (=> b!692721 (= e!435927 e!435928)))

(declare-fun res!313959 () Bool)

(assert (=> b!692721 (=> (not res!313959) (not e!435928))))

(assert (=> b!692721 (= res!313959 (<= (- 1) (- (height!319 (left!6006 (c!121614 treated!50))) (height!319 (right!6336 (c!121614 treated!50))))))))

(declare-fun d!232742 () Bool)

(declare-fun res!313961 () Bool)

(assert (=> d!232742 (=> res!313961 e!435927)))

(assert (=> d!232742 (= res!313961 (not ((_ is Node!2651) (c!121614 treated!50))))))

(assert (=> d!232742 (= (isBalanced!696 (c!121614 treated!50)) e!435927)))

(declare-fun b!692722 () Bool)

(declare-fun res!313958 () Bool)

(assert (=> b!692722 (=> (not res!313958) (not e!435928))))

(assert (=> b!692722 (= res!313958 (not (isEmpty!4885 (left!6006 (c!121614 treated!50)))))))

(assert (= (and d!232742 (not res!313961)) b!692721))

(assert (= (and b!692721 res!313959) b!692718))

(assert (= (and b!692718 res!313960) b!692717))

(assert (= (and b!692717 res!313962) b!692720))

(assert (= (and b!692720 res!313957) b!692722))

(assert (= (and b!692722 res!313958) b!692719))

(declare-fun m!948750 () Bool)

(assert (=> b!692720 m!948750))

(declare-fun m!948752 () Bool)

(assert (=> b!692717 m!948752))

(declare-fun m!948754 () Bool)

(assert (=> b!692718 m!948754))

(declare-fun m!948756 () Bool)

(assert (=> b!692718 m!948756))

(assert (=> b!692721 m!948754))

(assert (=> b!692721 m!948756))

(declare-fun m!948758 () Bool)

(assert (=> b!692719 m!948758))

(declare-fun m!948760 () Bool)

(assert (=> b!692722 m!948760))

(assert (=> d!232686 d!232742))

(declare-fun d!232744 () Bool)

(declare-fun res!313967 () Bool)

(declare-fun e!435931 () Bool)

(assert (=> d!232744 (=> (not res!313967) (not e!435931))))

(declare-fun validRegex!566 (Regex!1845) Bool)

(assert (=> d!232744 (= res!313967 (validRegex!566 (regex!1506 (h!12917 rules!1486))))))

(assert (=> d!232744 (= (ruleValid!462 thiss!12529 (h!12917 rules!1486)) e!435931)))

(declare-fun b!692727 () Bool)

(declare-fun res!313968 () Bool)

(assert (=> b!692727 (=> (not res!313968) (not e!435931))))

(declare-fun nullable!470 (Regex!1845) Bool)

(assert (=> b!692727 (= res!313968 (not (nullable!470 (regex!1506 (h!12917 rules!1486)))))))

(declare-fun b!692728 () Bool)

(assert (=> b!692728 (= e!435931 (not (= (tag!1768 (h!12917 rules!1486)) (String!9477 ""))))))

(assert (= (and d!232744 res!313967) b!692727))

(assert (= (and b!692727 res!313968) b!692728))

(declare-fun m!948762 () Bool)

(assert (=> d!232744 m!948762))

(declare-fun m!948764 () Bool)

(assert (=> b!692727 m!948764))

(assert (=> b!692371 d!232744))

(declare-fun bs!137404 () Bool)

(declare-fun d!232746 () Bool)

(assert (= bs!137404 (and d!232746 d!232722)))

(declare-fun lambda!21544 () Int)

(assert (=> bs!137404 (= lambda!21544 lambda!21541)))

(declare-fun bs!137405 () Bool)

(assert (= bs!137405 (and d!232746 d!232726)))

(assert (=> bs!137405 (= lambda!21544 lambda!21542)))

(declare-fun bs!137406 () Bool)

(assert (= bs!137406 (and d!232746 d!232728)))

(assert (=> bs!137406 (= lambda!21544 lambda!21543)))

(assert (=> d!232746 (= (inv!9640 setElem!3826) (forall!1957 (exprs!747 setElem!3826) lambda!21544))))

(declare-fun bs!137407 () Bool)

(assert (= bs!137407 d!232746))

(declare-fun m!948766 () Bool)

(assert (=> bs!137407 m!948766))

(assert (=> setNonEmpty!3826 d!232746))

(declare-fun d!232748 () Bool)

(declare-fun res!313975 () Bool)

(declare-fun e!435936 () Bool)

(assert (=> d!232748 (=> (not res!313975) (not e!435936))))

(declare-fun valid!668 (MutableMap!750) Bool)

(assert (=> d!232748 (= res!313975 (valid!668 (cache!1137 cacheDown!515)))))

(assert (=> d!232748 (= (validCacheMapDown!61 (cache!1137 cacheDown!515)) e!435936)))

(declare-fun b!692735 () Bool)

(declare-fun res!313976 () Bool)

(assert (=> b!692735 (=> (not res!313976) (not e!435936))))

(declare-fun invariantList!138 (List!7531) Bool)

(declare-datatypes ((ListMap!325 0))(
  ( (ListMap!326 (toList!503 List!7531)) )
))
(declare-fun map!1659 (MutableMap!750) ListMap!325)

(assert (=> b!692735 (= res!313976 (invariantList!138 (toList!503 (map!1659 (cache!1137 cacheDown!515)))))))

(declare-fun b!692736 () Bool)

(declare-fun lambda!21547 () Int)

(declare-fun forall!1958 (List!7531 Int) Bool)

(assert (=> b!692736 (= e!435936 (forall!1958 (toList!503 (map!1659 (cache!1137 cacheDown!515))) lambda!21547))))

(assert (= (and d!232748 res!313975) b!692735))

(assert (= (and b!692735 res!313976) b!692736))

(declare-fun m!948769 () Bool)

(assert (=> d!232748 m!948769))

(declare-fun m!948771 () Bool)

(assert (=> b!692735 m!948771))

(declare-fun m!948773 () Bool)

(assert (=> b!692735 m!948773))

(assert (=> b!692736 m!948771))

(declare-fun m!948775 () Bool)

(assert (=> b!692736 m!948775))

(assert (=> b!692409 d!232748))

(declare-fun d!232750 () Bool)

(declare-fun res!313981 () Bool)

(declare-fun e!435939 () Bool)

(assert (=> d!232750 (=> (not res!313981) (not e!435939))))

(declare-fun valid!669 (MutableMap!751) Bool)

(assert (=> d!232750 (= res!313981 (valid!669 (cache!1138 cacheUp!502)))))

(assert (=> d!232750 (= (validCacheMapUp!61 (cache!1138 cacheUp!502)) e!435939)))

(declare-fun b!692741 () Bool)

(declare-fun res!313982 () Bool)

(assert (=> b!692741 (=> (not res!313982) (not e!435939))))

(declare-fun invariantList!139 (List!7532) Bool)

(declare-datatypes ((ListMap!327 0))(
  ( (ListMap!328 (toList!504 List!7532)) )
))
(declare-fun map!1660 (MutableMap!751) ListMap!327)

(assert (=> b!692741 (= res!313982 (invariantList!139 (toList!504 (map!1660 (cache!1138 cacheUp!502)))))))

(declare-fun b!692742 () Bool)

(declare-fun lambda!21550 () Int)

(declare-fun forall!1959 (List!7532 Int) Bool)

(assert (=> b!692742 (= e!435939 (forall!1959 (toList!504 (map!1660 (cache!1138 cacheUp!502))) lambda!21550))))

(assert (= (and d!232750 res!313981) b!692741))

(assert (= (and b!692741 res!313982) b!692742))

(declare-fun m!948778 () Bool)

(assert (=> d!232750 m!948778))

(declare-fun m!948780 () Bool)

(assert (=> b!692741 m!948780))

(declare-fun m!948782 () Bool)

(assert (=> b!692741 m!948782))

(assert (=> b!692742 m!948780))

(declare-fun m!948784 () Bool)

(assert (=> b!692742 m!948784))

(assert (=> b!692412 d!232750))

(declare-fun d!232752 () Bool)

(declare-fun lt!284995 () Int)

(assert (=> d!232752 (= lt!284995 (size!6146 (list!3152 (_2!4376 lt!284946))))))

(assert (=> d!232752 (= lt!284995 (size!6148 (c!121614 (_2!4376 lt!284946))))))

(assert (=> d!232752 (= (size!6144 (_2!4376 lt!284946)) lt!284995)))

(declare-fun bs!137408 () Bool)

(assert (= bs!137408 d!232752))

(assert (=> bs!137408 m!948400))

(assert (=> bs!137408 m!948400))

(declare-fun m!948786 () Bool)

(assert (=> bs!137408 m!948786))

(declare-fun m!948788 () Bool)

(assert (=> bs!137408 m!948788))

(assert (=> b!692325 d!232752))

(declare-fun d!232754 () Bool)

(declare-fun lt!284996 () Int)

(assert (=> d!232754 (= lt!284996 (size!6146 (list!3152 treated!50)))))

(assert (=> d!232754 (= lt!284996 (size!6148 (c!121614 treated!50)))))

(assert (=> d!232754 (= (size!6144 treated!50) lt!284996)))

(declare-fun bs!137409 () Bool)

(assert (= bs!137409 d!232754))

(assert (=> bs!137409 m!948326))

(assert (=> bs!137409 m!948326))

(declare-fun m!948790 () Bool)

(assert (=> bs!137409 m!948790))

(declare-fun m!948792 () Bool)

(assert (=> bs!137409 m!948792))

(assert (=> b!692325 d!232754))

(declare-fun d!232756 () Bool)

(declare-fun lt!284999 () Int)

(assert (=> d!232756 (= lt!284999 (size!6147 (list!3151 (_1!4376 lt!284946))))))

(assert (=> d!232756 (= lt!284999 (size!6149 (c!121615 (_1!4376 lt!284946))))))

(assert (=> d!232756 (= (size!6145 (_1!4376 lt!284946)) lt!284999)))

(declare-fun bs!137410 () Bool)

(assert (= bs!137410 d!232756))

(assert (=> bs!137410 m!948390))

(assert (=> bs!137410 m!948390))

(declare-fun m!948794 () Bool)

(assert (=> bs!137410 m!948794))

(declare-fun m!948796 () Bool)

(assert (=> bs!137410 m!948796))

(assert (=> d!232632 d!232756))

(declare-fun b!692759 () Bool)

(declare-fun lt!285020 () Option!1707)

(declare-fun e!435954 () Bool)

(declare-fun get!2581 (Option!1707) tuple2!7924)

(declare-fun get!2582 (Option!1708) tuple2!7928)

(declare-fun maxPrefixZipper!208 (LexerInterface!1320 List!7530 List!7525) Option!1708)

(assert (=> b!692759 (= e!435954 (= (list!3152 (_2!4381 (get!2581 lt!285020))) (_2!4383 (get!2582 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 treated!50))))))))

(declare-fun d!232758 () Bool)

(declare-fun e!435957 () Bool)

(assert (=> d!232758 e!435957))

(declare-fun res!313998 () Bool)

(assert (=> d!232758 (=> (not res!313998) (not e!435957))))

(declare-fun isDefined!1438 (Option!1707) Bool)

(declare-fun isDefined!1439 (Option!1708) Bool)

(assert (=> d!232758 (= res!313998 (= (isDefined!1438 lt!285020) (isDefined!1439 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 treated!50)))))))

(declare-fun e!435953 () Option!1707)

(assert (=> d!232758 (= lt!285020 e!435953)))

(declare-fun c!121679 () Bool)

(assert (=> d!232758 (= c!121679 (and ((_ is Cons!7516) rules!1486) ((_ is Nil!7516) (t!87348 rules!1486))))))

(declare-fun lt!285019 () Unit!12656)

(declare-fun lt!285014 () Unit!12656)

(assert (=> d!232758 (= lt!285019 lt!285014)))

(declare-fun lt!285017 () List!7525)

(declare-fun lt!285018 () List!7525)

(declare-fun isPrefix!916 (List!7525 List!7525) Bool)

(assert (=> d!232758 (isPrefix!916 lt!285017 lt!285018)))

(declare-fun lemmaIsPrefixRefl!627 (List!7525 List!7525) Unit!12656)

(assert (=> d!232758 (= lt!285014 (lemmaIsPrefixRefl!627 lt!285017 lt!285018))))

(assert (=> d!232758 (= lt!285018 (list!3152 treated!50))))

(assert (=> d!232758 (= lt!285017 (list!3152 treated!50))))

(assert (=> d!232758 (rulesValidInductive!520 thiss!12529 rules!1486)))

(assert (=> d!232758 (= (maxPrefixZipperSequence!457 thiss!12529 rules!1486 treated!50) lt!285020)))

(declare-fun b!692760 () Bool)

(declare-fun res!313995 () Bool)

(assert (=> b!692760 (=> (not res!313995) (not e!435957))))

(declare-fun e!435956 () Bool)

(assert (=> b!692760 (= res!313995 e!435956)))

(declare-fun res!313996 () Bool)

(assert (=> b!692760 (=> res!313996 e!435956)))

(assert (=> b!692760 (= res!313996 (not (isDefined!1438 lt!285020)))))

(declare-fun b!692761 () Bool)

(declare-fun e!435952 () Bool)

(assert (=> b!692761 (= e!435952 (= (list!3152 (_2!4381 (get!2581 lt!285020))) (_2!4383 (get!2582 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 treated!50))))))))

(declare-fun call!43646 () Option!1707)

(declare-fun bm!43641 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!210 (LexerInterface!1320 Rule!2812 BalanceConc!5314) Option!1707)

(assert (=> bm!43641 (= call!43646 (maxPrefixOneRuleZipperSequence!210 thiss!12529 (h!12917 rules!1486) treated!50))))

(declare-fun b!692762 () Bool)

(declare-fun e!435955 () Bool)

(assert (=> b!692762 (= e!435955 e!435952)))

(declare-fun res!313997 () Bool)

(assert (=> b!692762 (=> (not res!313997) (not e!435952))))

(assert (=> b!692762 (= res!313997 (= (_1!4381 (get!2581 lt!285020)) (_1!4383 (get!2582 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 treated!50))))))))

(declare-fun b!692763 () Bool)

(assert (=> b!692763 (= e!435956 e!435954)))

(declare-fun res!314000 () Bool)

(assert (=> b!692763 (=> (not res!314000) (not e!435954))))

(assert (=> b!692763 (= res!314000 (= (_1!4381 (get!2581 lt!285020)) (_1!4383 (get!2582 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 treated!50))))))))

(declare-fun b!692764 () Bool)

(assert (=> b!692764 (= e!435953 call!43646)))

(declare-fun b!692765 () Bool)

(assert (=> b!692765 (= e!435957 e!435955)))

(declare-fun res!313999 () Bool)

(assert (=> b!692765 (=> res!313999 e!435955)))

(assert (=> b!692765 (= res!313999 (not (isDefined!1438 lt!285020)))))

(declare-fun b!692766 () Bool)

(declare-fun lt!285015 () Option!1707)

(declare-fun lt!285016 () Option!1707)

(assert (=> b!692766 (= e!435953 (ite (and ((_ is None!1706) lt!285015) ((_ is None!1706) lt!285016)) None!1706 (ite ((_ is None!1706) lt!285016) lt!285015 (ite ((_ is None!1706) lt!285015) lt!285016 (ite (>= (size!6141 (_1!4381 (v!17679 lt!285015))) (size!6141 (_1!4381 (v!17679 lt!285016)))) lt!285015 lt!285016)))))))

(assert (=> b!692766 (= lt!285015 call!43646)))

(assert (=> b!692766 (= lt!285016 (maxPrefixZipperSequence!457 thiss!12529 (t!87348 rules!1486) treated!50))))

(assert (= (and d!232758 c!121679) b!692764))

(assert (= (and d!232758 (not c!121679)) b!692766))

(assert (= (or b!692764 b!692766) bm!43641))

(assert (= (and d!232758 res!313998) b!692760))

(assert (= (and b!692760 (not res!313996)) b!692763))

(assert (= (and b!692763 res!314000) b!692759))

(assert (= (and b!692760 res!313995) b!692765))

(assert (= (and b!692765 (not res!313999)) b!692762))

(assert (= (and b!692762 res!313997) b!692761))

(declare-fun m!948798 () Bool)

(assert (=> b!692763 m!948798))

(assert (=> b!692763 m!948326))

(assert (=> b!692763 m!948326))

(declare-fun m!948800 () Bool)

(assert (=> b!692763 m!948800))

(assert (=> b!692763 m!948800))

(declare-fun m!948802 () Bool)

(assert (=> b!692763 m!948802))

(assert (=> b!692762 m!948798))

(assert (=> b!692762 m!948326))

(assert (=> b!692762 m!948326))

(declare-fun m!948804 () Bool)

(assert (=> b!692762 m!948804))

(assert (=> b!692762 m!948804))

(declare-fun m!948806 () Bool)

(assert (=> b!692762 m!948806))

(declare-fun m!948808 () Bool)

(assert (=> b!692760 m!948808))

(declare-fun m!948810 () Bool)

(assert (=> bm!43641 m!948810))

(declare-fun m!948812 () Bool)

(assert (=> b!692766 m!948812))

(assert (=> b!692761 m!948326))

(assert (=> b!692761 m!948804))

(declare-fun m!948814 () Bool)

(assert (=> b!692761 m!948814))

(assert (=> b!692761 m!948326))

(assert (=> b!692761 m!948798))

(assert (=> b!692761 m!948804))

(assert (=> b!692761 m!948806))

(assert (=> b!692765 m!948808))

(assert (=> b!692759 m!948326))

(assert (=> b!692759 m!948800))

(assert (=> b!692759 m!948814))

(assert (=> b!692759 m!948326))

(assert (=> b!692759 m!948798))

(assert (=> b!692759 m!948800))

(assert (=> b!692759 m!948802))

(assert (=> d!232758 m!948326))

(assert (=> d!232758 m!948800))

(assert (=> d!232758 m!948800))

(declare-fun m!948816 () Bool)

(assert (=> d!232758 m!948816))

(assert (=> d!232758 m!948808))

(declare-fun m!948818 () Bool)

(assert (=> d!232758 m!948818))

(assert (=> d!232758 m!948326))

(declare-fun m!948820 () Bool)

(assert (=> d!232758 m!948820))

(assert (=> d!232758 m!948328))

(assert (=> d!232632 d!232758))

(declare-fun d!232760 () Bool)

(assert (=> d!232760 (= (inv!9624 (tag!1768 (h!12917 (t!87348 rules!1486)))) (= (mod (str.len (value!48585 (tag!1768 (h!12917 (t!87348 rules!1486))))) 2) 0))))

(assert (=> b!692579 d!232760))

(declare-fun d!232762 () Bool)

(declare-fun res!314001 () Bool)

(declare-fun e!435958 () Bool)

(assert (=> d!232762 (=> (not res!314001) (not e!435958))))

(assert (=> d!232762 (= res!314001 (semiInverseModEq!571 (toChars!2327 (transformation!1506 (h!12917 (t!87348 rules!1486)))) (toValue!2468 (transformation!1506 (h!12917 (t!87348 rules!1486))))))))

(assert (=> d!232762 (= (inv!9635 (transformation!1506 (h!12917 (t!87348 rules!1486)))) e!435958)))

(declare-fun b!692767 () Bool)

(assert (=> b!692767 (= e!435958 (equivClasses!546 (toChars!2327 (transformation!1506 (h!12917 (t!87348 rules!1486)))) (toValue!2468 (transformation!1506 (h!12917 (t!87348 rules!1486))))))))

(assert (= (and d!232762 res!314001) b!692767))

(declare-fun m!948822 () Bool)

(assert (=> d!232762 m!948822))

(declare-fun m!948824 () Bool)

(assert (=> b!692767 m!948824))

(assert (=> b!692579 d!232762))

(declare-fun bs!137411 () Bool)

(declare-fun d!232764 () Bool)

(assert (= bs!137411 (and d!232764 d!232662)))

(declare-fun lambda!21551 () Int)

(assert (=> bs!137411 (= lambda!21551 lambda!21538)))

(assert (=> d!232764 true))

(declare-fun lt!285021 () Bool)

(assert (=> d!232764 (= lt!285021 (forall!1956 (t!87348 rules!1486) lambda!21551))))

(declare-fun e!435959 () Bool)

(assert (=> d!232764 (= lt!285021 e!435959)))

(declare-fun res!314003 () Bool)

(assert (=> d!232764 (=> res!314003 e!435959)))

(assert (=> d!232764 (= res!314003 (not ((_ is Cons!7516) (t!87348 rules!1486))))))

(assert (=> d!232764 (= (rulesValidInductive!520 thiss!12529 (t!87348 rules!1486)) lt!285021)))

(declare-fun b!692768 () Bool)

(declare-fun e!435960 () Bool)

(assert (=> b!692768 (= e!435959 e!435960)))

(declare-fun res!314002 () Bool)

(assert (=> b!692768 (=> (not res!314002) (not e!435960))))

(assert (=> b!692768 (= res!314002 (ruleValid!462 thiss!12529 (h!12917 (t!87348 rules!1486))))))

(declare-fun b!692769 () Bool)

(assert (=> b!692769 (= e!435960 (rulesValidInductive!520 thiss!12529 (t!87348 (t!87348 rules!1486))))))

(assert (= (and d!232764 (not res!314003)) b!692768))

(assert (= (and b!692768 res!314002) b!692769))

(declare-fun m!948826 () Bool)

(assert (=> d!232764 m!948826))

(declare-fun m!948828 () Bool)

(assert (=> b!692768 m!948828))

(declare-fun m!948830 () Bool)

(assert (=> b!692769 m!948830))

(assert (=> b!692372 d!232764))

(declare-fun d!232766 () Bool)

(declare-fun res!314010 () Bool)

(declare-fun e!435963 () Bool)

(assert (=> d!232766 (=> (not res!314010) (not e!435963))))

(assert (=> d!232766 (= res!314010 (= (csize!5532 (c!121614 totalInput!378)) (+ (size!6148 (left!6006 (c!121614 totalInput!378))) (size!6148 (right!6336 (c!121614 totalInput!378))))))))

(assert (=> d!232766 (= (inv!9638 (c!121614 totalInput!378)) e!435963)))

(declare-fun b!692776 () Bool)

(declare-fun res!314011 () Bool)

(assert (=> b!692776 (=> (not res!314011) (not e!435963))))

(assert (=> b!692776 (= res!314011 (and (not (= (left!6006 (c!121614 totalInput!378)) Empty!2651)) (not (= (right!6336 (c!121614 totalInput!378)) Empty!2651))))))

(declare-fun b!692777 () Bool)

(declare-fun res!314012 () Bool)

(assert (=> b!692777 (=> (not res!314012) (not e!435963))))

(assert (=> b!692777 (= res!314012 (= (cheight!2862 (c!121614 totalInput!378)) (+ (max!0 (height!319 (left!6006 (c!121614 totalInput!378))) (height!319 (right!6336 (c!121614 totalInput!378)))) 1)))))

(declare-fun b!692778 () Bool)

(assert (=> b!692778 (= e!435963 (<= 0 (cheight!2862 (c!121614 totalInput!378))))))

(assert (= (and d!232766 res!314010) b!692776))

(assert (= (and b!692776 res!314011) b!692777))

(assert (= (and b!692777 res!314012) b!692778))

(declare-fun m!948832 () Bool)

(assert (=> d!232766 m!948832))

(declare-fun m!948834 () Bool)

(assert (=> d!232766 m!948834))

(declare-fun m!948836 () Bool)

(assert (=> b!692777 m!948836))

(declare-fun m!948838 () Bool)

(assert (=> b!692777 m!948838))

(assert (=> b!692777 m!948836))

(assert (=> b!692777 m!948838))

(declare-fun m!948840 () Bool)

(assert (=> b!692777 m!948840))

(assert (=> b!692364 d!232766))

(declare-fun bs!137412 () Bool)

(declare-fun d!232768 () Bool)

(assert (= bs!137412 (and d!232768 d!232722)))

(declare-fun lambda!21552 () Int)

(assert (=> bs!137412 (= lambda!21552 lambda!21541)))

(declare-fun bs!137413 () Bool)

(assert (= bs!137413 (and d!232768 d!232726)))

(assert (=> bs!137413 (= lambda!21552 lambda!21542)))

(declare-fun bs!137414 () Bool)

(assert (= bs!137414 (and d!232768 d!232728)))

(assert (=> bs!137414 (= lambda!21552 lambda!21543)))

(declare-fun bs!137415 () Bool)

(assert (= bs!137415 (and d!232768 d!232746)))

(assert (=> bs!137415 (= lambda!21552 lambda!21544)))

(assert (=> d!232768 (= (inv!9640 setElem!3831) (forall!1957 (exprs!747 setElem!3831) lambda!21552))))

(declare-fun bs!137416 () Bool)

(assert (= bs!137416 d!232768))

(declare-fun m!948842 () Bool)

(assert (=> bs!137416 m!948842))

(assert (=> setNonEmpty!3831 d!232768))

(declare-fun bs!137417 () Bool)

(declare-fun d!232770 () Bool)

(assert (= bs!137417 (and d!232770 d!232746)))

(declare-fun lambda!21553 () Int)

(assert (=> bs!137417 (= lambda!21553 lambda!21544)))

(declare-fun bs!137418 () Bool)

(assert (= bs!137418 (and d!232770 d!232726)))

(assert (=> bs!137418 (= lambda!21553 lambda!21542)))

(declare-fun bs!137419 () Bool)

(assert (= bs!137419 (and d!232770 d!232722)))

(assert (=> bs!137419 (= lambda!21553 lambda!21541)))

(declare-fun bs!137420 () Bool)

(assert (= bs!137420 (and d!232770 d!232768)))

(assert (=> bs!137420 (= lambda!21553 lambda!21552)))

(declare-fun bs!137421 () Bool)

(assert (= bs!137421 (and d!232770 d!232728)))

(assert (=> bs!137421 (= lambda!21553 lambda!21543)))

(assert (=> d!232770 (= (inv!9640 setElem!3819) (forall!1957 (exprs!747 setElem!3819) lambda!21553))))

(declare-fun bs!137422 () Bool)

(assert (= bs!137422 d!232770))

(declare-fun m!948844 () Bool)

(assert (=> bs!137422 m!948844))

(assert (=> setNonEmpty!3819 d!232770))

(declare-fun d!232772 () Bool)

(declare-fun res!314017 () Bool)

(declare-fun e!435968 () Bool)

(assert (=> d!232772 (=> res!314017 e!435968)))

(assert (=> d!232772 (= res!314017 ((_ is Nil!7516) rules!1486))))

(assert (=> d!232772 (= (forall!1956 rules!1486 lambda!21538) e!435968)))

(declare-fun b!692783 () Bool)

(declare-fun e!435969 () Bool)

(assert (=> b!692783 (= e!435968 e!435969)))

(declare-fun res!314018 () Bool)

(assert (=> b!692783 (=> (not res!314018) (not e!435969))))

(declare-fun dynLambda!3885 (Int Rule!2812) Bool)

(assert (=> b!692783 (= res!314018 (dynLambda!3885 lambda!21538 (h!12917 rules!1486)))))

(declare-fun b!692784 () Bool)

(assert (=> b!692784 (= e!435969 (forall!1956 (t!87348 rules!1486) lambda!21538))))

(assert (= (and d!232772 (not res!314017)) b!692783))

(assert (= (and b!692783 res!314018) b!692784))

(declare-fun b_lambda!25979 () Bool)

(assert (=> (not b_lambda!25979) (not b!692783)))

(declare-fun m!948846 () Bool)

(assert (=> b!692783 m!948846))

(declare-fun m!948848 () Bool)

(assert (=> b!692784 m!948848))

(assert (=> d!232662 d!232772))

(declare-fun bs!137423 () Bool)

(declare-fun d!232774 () Bool)

(assert (= bs!137423 (and d!232774 d!232746)))

(declare-fun lambda!21554 () Int)

(assert (=> bs!137423 (= lambda!21554 lambda!21544)))

(declare-fun bs!137424 () Bool)

(assert (= bs!137424 (and d!232774 d!232726)))

(assert (=> bs!137424 (= lambda!21554 lambda!21542)))

(declare-fun bs!137425 () Bool)

(assert (= bs!137425 (and d!232774 d!232722)))

(assert (=> bs!137425 (= lambda!21554 lambda!21541)))

(declare-fun bs!137426 () Bool)

(assert (= bs!137426 (and d!232774 d!232770)))

(assert (=> bs!137426 (= lambda!21554 lambda!21553)))

(declare-fun bs!137427 () Bool)

(assert (= bs!137427 (and d!232774 d!232768)))

(assert (=> bs!137427 (= lambda!21554 lambda!21552)))

(declare-fun bs!137428 () Bool)

(assert (= bs!137428 (and d!232774 d!232728)))

(assert (=> bs!137428 (= lambda!21554 lambda!21543)))

(assert (=> d!232774 (= (inv!9640 setElem!3833) (forall!1957 (exprs!747 setElem!3833) lambda!21554))))

(declare-fun bs!137429 () Bool)

(assert (= bs!137429 d!232774))

(declare-fun m!948850 () Bool)

(assert (=> bs!137429 m!948850))

(assert (=> setNonEmpty!3833 d!232774))

(declare-fun d!232776 () Bool)

(declare-fun res!314023 () Bool)

(declare-fun e!435972 () Bool)

(assert (=> d!232776 (=> (not res!314023) (not e!435972))))

(declare-fun list!3155 (IArray!5303) List!7525)

(assert (=> d!232776 (= res!314023 (<= (size!6146 (list!3155 (xs!5302 (c!121614 input!870)))) 512))))

(assert (=> d!232776 (= (inv!9639 (c!121614 input!870)) e!435972)))

(declare-fun b!692789 () Bool)

(declare-fun res!314024 () Bool)

(assert (=> b!692789 (=> (not res!314024) (not e!435972))))

(assert (=> b!692789 (= res!314024 (= (csize!5533 (c!121614 input!870)) (size!6146 (list!3155 (xs!5302 (c!121614 input!870))))))))

(declare-fun b!692790 () Bool)

(assert (=> b!692790 (= e!435972 (and (> (csize!5533 (c!121614 input!870)) 0) (<= (csize!5533 (c!121614 input!870)) 512)))))

(assert (= (and d!232776 res!314023) b!692789))

(assert (= (and b!692789 res!314024) b!692790))

(declare-fun m!948852 () Bool)

(assert (=> d!232776 m!948852))

(assert (=> d!232776 m!948852))

(declare-fun m!948854 () Bool)

(assert (=> d!232776 m!948854))

(assert (=> b!692789 m!948852))

(assert (=> b!692789 m!948852))

(assert (=> b!692789 m!948854))

(assert (=> b!692360 d!232776))

(declare-fun d!232778 () Bool)

(assert (=> d!232778 (= (list!3152 (_2!4376 lt!284961)) (list!3153 (c!121614 (_2!4376 lt!284961))))))

(declare-fun bs!137430 () Bool)

(assert (= bs!137430 d!232778))

(declare-fun m!948856 () Bool)

(assert (=> bs!137430 m!948856))

(assert (=> b!692395 d!232778))

(assert (=> b!692395 d!232646))

(declare-fun d!232780 () Bool)

(declare-fun c!121684 () Bool)

(assert (=> d!232780 (= c!121684 ((_ is Empty!2651) (c!121614 input!870)))))

(declare-fun e!435977 () List!7525)

(assert (=> d!232780 (= (list!3153 (c!121614 input!870)) e!435977)))

(declare-fun b!692801 () Bool)

(declare-fun e!435978 () List!7525)

(assert (=> b!692801 (= e!435978 (list!3155 (xs!5302 (c!121614 input!870))))))

(declare-fun b!692799 () Bool)

(assert (=> b!692799 (= e!435977 Nil!7511)))

(declare-fun b!692802 () Bool)

(assert (=> b!692802 (= e!435978 (++!1961 (list!3153 (left!6006 (c!121614 input!870))) (list!3153 (right!6336 (c!121614 input!870)))))))

(declare-fun b!692800 () Bool)

(assert (=> b!692800 (= e!435977 e!435978)))

(declare-fun c!121685 () Bool)

(assert (=> b!692800 (= c!121685 ((_ is Leaf!3927) (c!121614 input!870)))))

(assert (= (and d!232780 c!121684) b!692799))

(assert (= (and d!232780 (not c!121684)) b!692800))

(assert (= (and b!692800 c!121685) b!692801))

(assert (= (and b!692800 (not c!121685)) b!692802))

(assert (=> b!692801 m!948852))

(declare-fun m!948858 () Bool)

(assert (=> b!692802 m!948858))

(declare-fun m!948860 () Bool)

(assert (=> b!692802 m!948860))

(assert (=> b!692802 m!948858))

(assert (=> b!692802 m!948860))

(declare-fun m!948862 () Bool)

(assert (=> b!692802 m!948862))

(assert (=> d!232648 d!232780))

(declare-fun bs!137431 () Bool)

(declare-fun d!232782 () Bool)

(assert (= bs!137431 (and d!232782 d!232746)))

(declare-fun lambda!21555 () Int)

(assert (=> bs!137431 (= lambda!21555 lambda!21544)))

(declare-fun bs!137432 () Bool)

(assert (= bs!137432 (and d!232782 d!232726)))

(assert (=> bs!137432 (= lambda!21555 lambda!21542)))

(declare-fun bs!137433 () Bool)

(assert (= bs!137433 (and d!232782 d!232774)))

(assert (=> bs!137433 (= lambda!21555 lambda!21554)))

(declare-fun bs!137434 () Bool)

(assert (= bs!137434 (and d!232782 d!232722)))

(assert (=> bs!137434 (= lambda!21555 lambda!21541)))

(declare-fun bs!137435 () Bool)

(assert (= bs!137435 (and d!232782 d!232770)))

(assert (=> bs!137435 (= lambda!21555 lambda!21553)))

(declare-fun bs!137436 () Bool)

(assert (= bs!137436 (and d!232782 d!232768)))

(assert (=> bs!137436 (= lambda!21555 lambda!21552)))

(declare-fun bs!137437 () Bool)

(assert (= bs!137437 (and d!232782 d!232728)))

(assert (=> bs!137437 (= lambda!21555 lambda!21543)))

(assert (=> d!232782 (= (inv!9640 setElem!3808) (forall!1957 (exprs!747 setElem!3808) lambda!21555))))

(declare-fun bs!137438 () Bool)

(assert (= bs!137438 d!232782))

(declare-fun m!948864 () Bool)

(assert (=> bs!137438 m!948864))

(assert (=> setNonEmpty!3808 d!232782))

(declare-fun d!232784 () Bool)

(declare-fun e!435979 () Bool)

(assert (=> d!232784 e!435979))

(declare-fun res!314025 () Bool)

(assert (=> d!232784 (=> res!314025 e!435979)))

(declare-fun lt!285022 () Bool)

(assert (=> d!232784 (= res!314025 (not lt!285022))))

(assert (=> d!232784 (= lt!285022 (= lt!284932 (drop!355 (++!1961 lt!284934 lt!284932) (- (size!6146 (++!1961 lt!284934 lt!284932)) (size!6146 lt!284932)))))))

(assert (=> d!232784 (= (isSuffix!130 lt!284932 (++!1961 lt!284934 lt!284932)) lt!285022)))

(declare-fun b!692803 () Bool)

(assert (=> b!692803 (= e!435979 (>= (size!6146 (++!1961 lt!284934 lt!284932)) (size!6146 lt!284932)))))

(assert (= (and d!232784 (not res!314025)) b!692803))

(assert (=> d!232784 m!948320))

(declare-fun m!948866 () Bool)

(assert (=> d!232784 m!948866))

(assert (=> d!232784 m!948420))

(assert (=> d!232784 m!948320))

(declare-fun m!948868 () Bool)

(assert (=> d!232784 m!948868))

(assert (=> b!692803 m!948320))

(assert (=> b!692803 m!948866))

(assert (=> b!692803 m!948420))

(assert (=> d!232702 d!232784))

(assert (=> d!232702 d!232644))

(declare-fun d!232786 () Bool)

(assert (=> d!232786 (isSuffix!130 lt!284932 (++!1961 lt!284934 lt!284932))))

(assert (=> d!232786 true))

(declare-fun _$47!200 () Unit!12656)

(assert (=> d!232786 (= (choose!4696 lt!284934 lt!284932) _$47!200)))

(declare-fun bs!137439 () Bool)

(assert (= bs!137439 d!232786))

(assert (=> bs!137439 m!948320))

(assert (=> bs!137439 m!948320))

(assert (=> bs!137439 m!948546))

(assert (=> d!232702 d!232786))

(declare-fun d!232788 () Bool)

(declare-fun c!121686 () Bool)

(assert (=> d!232788 (= c!121686 ((_ is Node!2652) (left!6007 (c!121615 acc!372))))))

(declare-fun e!435980 () Bool)

(assert (=> d!232788 (= (inv!9628 (left!6007 (c!121615 acc!372))) e!435980)))

(declare-fun b!692804 () Bool)

(assert (=> b!692804 (= e!435980 (inv!9636 (left!6007 (c!121615 acc!372))))))

(declare-fun b!692805 () Bool)

(declare-fun e!435981 () Bool)

(assert (=> b!692805 (= e!435980 e!435981)))

(declare-fun res!314026 () Bool)

(assert (=> b!692805 (= res!314026 (not ((_ is Leaf!3928) (left!6007 (c!121615 acc!372)))))))

(assert (=> b!692805 (=> res!314026 e!435981)))

(declare-fun b!692806 () Bool)

(assert (=> b!692806 (= e!435981 (inv!9637 (left!6007 (c!121615 acc!372))))))

(assert (= (and d!232788 c!121686) b!692804))

(assert (= (and d!232788 (not c!121686)) b!692805))

(assert (= (and b!692805 (not res!314026)) b!692806))

(declare-fun m!948870 () Bool)

(assert (=> b!692804 m!948870))

(declare-fun m!948872 () Bool)

(assert (=> b!692806 m!948872))

(assert (=> b!692502 d!232788))

(declare-fun d!232790 () Bool)

(declare-fun c!121687 () Bool)

(assert (=> d!232790 (= c!121687 ((_ is Node!2652) (right!6337 (c!121615 acc!372))))))

(declare-fun e!435982 () Bool)

(assert (=> d!232790 (= (inv!9628 (right!6337 (c!121615 acc!372))) e!435982)))

(declare-fun b!692807 () Bool)

(assert (=> b!692807 (= e!435982 (inv!9636 (right!6337 (c!121615 acc!372))))))

(declare-fun b!692808 () Bool)

(declare-fun e!435983 () Bool)

(assert (=> b!692808 (= e!435982 e!435983)))

(declare-fun res!314027 () Bool)

(assert (=> b!692808 (= res!314027 (not ((_ is Leaf!3928) (right!6337 (c!121615 acc!372)))))))

(assert (=> b!692808 (=> res!314027 e!435983)))

(declare-fun b!692809 () Bool)

(assert (=> b!692809 (= e!435983 (inv!9637 (right!6337 (c!121615 acc!372))))))

(assert (= (and d!232790 c!121687) b!692807))

(assert (= (and d!232790 (not c!121687)) b!692808))

(assert (= (and b!692808 (not res!314027)) b!692809))

(declare-fun m!948874 () Bool)

(assert (=> b!692807 m!948874))

(declare-fun m!948876 () Bool)

(assert (=> b!692809 m!948876))

(assert (=> b!692502 d!232790))

(assert (=> b!692299 d!232704))

(declare-fun d!232792 () Bool)

(declare-fun res!314028 () Bool)

(declare-fun e!435984 () Bool)

(assert (=> d!232792 (=> (not res!314028) (not e!435984))))

(assert (=> d!232792 (= res!314028 (<= (size!6146 (list!3155 (xs!5302 (c!121614 treated!50)))) 512))))

(assert (=> d!232792 (= (inv!9639 (c!121614 treated!50)) e!435984)))

(declare-fun b!692810 () Bool)

(declare-fun res!314029 () Bool)

(assert (=> b!692810 (=> (not res!314029) (not e!435984))))

(assert (=> b!692810 (= res!314029 (= (csize!5533 (c!121614 treated!50)) (size!6146 (list!3155 (xs!5302 (c!121614 treated!50))))))))

(declare-fun b!692811 () Bool)

(assert (=> b!692811 (= e!435984 (and (> (csize!5533 (c!121614 treated!50)) 0) (<= (csize!5533 (c!121614 treated!50)) 512)))))

(assert (= (and d!232792 res!314028) b!692810))

(assert (= (and b!692810 res!314029) b!692811))

(declare-fun m!948878 () Bool)

(assert (=> d!232792 m!948878))

(assert (=> d!232792 m!948878))

(declare-fun m!948880 () Bool)

(assert (=> d!232792 m!948880))

(assert (=> b!692810 m!948878))

(assert (=> b!692810 m!948878))

(assert (=> b!692810 m!948880))

(assert (=> b!692419 d!232792))

(declare-fun d!232794 () Bool)

(declare-fun lt!285023 () Int)

(assert (=> d!232794 (= lt!285023 (size!6146 (list!3152 (_2!4376 lt!284961))))))

(assert (=> d!232794 (= lt!285023 (size!6148 (c!121614 (_2!4376 lt!284961))))))

(assert (=> d!232794 (= (size!6144 (_2!4376 lt!284961)) lt!285023)))

(declare-fun bs!137440 () Bool)

(assert (= bs!137440 d!232794))

(assert (=> bs!137440 m!948512))

(assert (=> bs!137440 m!948512))

(declare-fun m!948882 () Bool)

(assert (=> bs!137440 m!948882))

(declare-fun m!948884 () Bool)

(assert (=> bs!137440 m!948884))

(assert (=> b!692398 d!232794))

(declare-fun d!232796 () Bool)

(declare-fun lt!285024 () Int)

(assert (=> d!232796 (= lt!285024 (size!6146 (list!3152 totalInput!378)))))

(assert (=> d!232796 (= lt!285024 (size!6148 (c!121614 totalInput!378)))))

(assert (=> d!232796 (= (size!6144 totalInput!378) lt!285024)))

(declare-fun bs!137441 () Bool)

(assert (= bs!137441 d!232796))

(assert (=> bs!137441 m!948322))

(assert (=> bs!137441 m!948322))

(assert (=> bs!137441 m!948676))

(declare-fun m!948886 () Bool)

(assert (=> bs!137441 m!948886))

(assert (=> b!692398 d!232796))

(declare-fun bs!137442 () Bool)

(declare-fun d!232798 () Bool)

(assert (= bs!137442 (and d!232798 d!232746)))

(declare-fun lambda!21556 () Int)

(assert (=> bs!137442 (= lambda!21556 lambda!21544)))

(declare-fun bs!137443 () Bool)

(assert (= bs!137443 (and d!232798 d!232726)))

(assert (=> bs!137443 (= lambda!21556 lambda!21542)))

(declare-fun bs!137444 () Bool)

(assert (= bs!137444 (and d!232798 d!232774)))

(assert (=> bs!137444 (= lambda!21556 lambda!21554)))

(declare-fun bs!137445 () Bool)

(assert (= bs!137445 (and d!232798 d!232782)))

(assert (=> bs!137445 (= lambda!21556 lambda!21555)))

(declare-fun bs!137446 () Bool)

(assert (= bs!137446 (and d!232798 d!232722)))

(assert (=> bs!137446 (= lambda!21556 lambda!21541)))

(declare-fun bs!137447 () Bool)

(assert (= bs!137447 (and d!232798 d!232770)))

(assert (=> bs!137447 (= lambda!21556 lambda!21553)))

(declare-fun bs!137448 () Bool)

(assert (= bs!137448 (and d!232798 d!232768)))

(assert (=> bs!137448 (= lambda!21556 lambda!21552)))

(declare-fun bs!137449 () Bool)

(assert (= bs!137449 (and d!232798 d!232728)))

(assert (=> bs!137449 (= lambda!21556 lambda!21543)))

(assert (=> d!232798 (= (inv!9640 setElem!3838) (forall!1957 (exprs!747 setElem!3838) lambda!21556))))

(declare-fun bs!137450 () Bool)

(assert (= bs!137450 d!232798))

(declare-fun m!948888 () Bool)

(assert (=> bs!137450 m!948888))

(assert (=> setNonEmpty!3839 d!232798))

(declare-fun b!692812 () Bool)

(declare-fun e!435986 () Bool)

(declare-fun e!435985 () Bool)

(assert (=> b!692812 (= e!435986 e!435985)))

(declare-fun res!314033 () Bool)

(assert (=> b!692812 (=> (not res!314033) (not e!435985))))

(assert (=> b!692812 (= res!314033 (<= (- 1) (- (height!318 (left!6007 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))) (height!318 (right!6337 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))))))))

(declare-fun b!692814 () Bool)

(declare-fun res!314035 () Bool)

(assert (=> b!692814 (=> (not res!314035) (not e!435985))))

(assert (=> b!692814 (= res!314035 (not (isEmpty!4883 (left!6007 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))))))))

(declare-fun b!692815 () Bool)

(declare-fun res!314031 () Bool)

(assert (=> b!692815 (=> (not res!314031) (not e!435985))))

(assert (=> b!692815 (= res!314031 (<= (- (height!318 (left!6007 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))) (height!318 (right!6337 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))))) 1))))

(declare-fun b!692816 () Bool)

(declare-fun res!314030 () Bool)

(assert (=> b!692816 (=> (not res!314030) (not e!435985))))

(assert (=> b!692816 (= res!314030 (isBalanced!697 (left!6007 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!692817 () Bool)

(declare-fun res!314032 () Bool)

(assert (=> b!692817 (=> (not res!314032) (not e!435985))))

(assert (=> b!692817 (= res!314032 (isBalanced!697 (right!6337 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))))))

(declare-fun d!232800 () Bool)

(declare-fun res!314034 () Bool)

(assert (=> d!232800 (=> res!314034 e!435986)))

(assert (=> d!232800 (= res!314034 (not ((_ is Node!2652) (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))))))))

(assert (=> d!232800 (= (isBalanced!697 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))) e!435986)))

(declare-fun b!692813 () Bool)

(assert (=> b!692813 (= e!435985 (not (isEmpty!4883 (right!6337 (++!1963 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936)))))))))

(assert (= (and d!232800 (not res!314034)) b!692812))

(assert (= (and b!692812 res!314033) b!692815))

(assert (= (and b!692815 res!314031) b!692816))

(assert (= (and b!692816 res!314030) b!692817))

(assert (= (and b!692817 res!314032) b!692814))

(assert (= (and b!692814 res!314035) b!692813))

(declare-fun m!948890 () Bool)

(assert (=> b!692812 m!948890))

(declare-fun m!948892 () Bool)

(assert (=> b!692812 m!948892))

(declare-fun m!948894 () Bool)

(assert (=> b!692813 m!948894))

(declare-fun m!948896 () Bool)

(assert (=> b!692814 m!948896))

(declare-fun m!948898 () Bool)

(assert (=> b!692816 m!948898))

(declare-fun m!948900 () Bool)

(assert (=> b!692817 m!948900))

(assert (=> b!692815 m!948890))

(assert (=> b!692815 m!948892))

(assert (=> b!692390 d!232800))

(assert (=> b!692390 d!232718))

(declare-fun d!232802 () Bool)

(declare-fun e!435989 () Bool)

(assert (=> d!232802 e!435989))

(declare-fun res!314038 () Bool)

(assert (=> d!232802 (=> (not res!314038) (not e!435989))))

(declare-fun prepend!259 (Conc!2652 Token!2712) Conc!2652)

(assert (=> d!232802 (= res!314038 (isBalanced!697 (prepend!259 (c!121615 (_1!4376 lt!284945)) (_1!4381 (v!17679 lt!284947)))))))

(declare-fun lt!285027 () BalanceConc!5316)

(assert (=> d!232802 (= lt!285027 (BalanceConc!5317 (prepend!259 (c!121615 (_1!4376 lt!284945)) (_1!4381 (v!17679 lt!284947)))))))

(assert (=> d!232802 (= (prepend!258 (_1!4376 lt!284945) (_1!4381 (v!17679 lt!284947))) lt!285027)))

(declare-fun b!692820 () Bool)

(assert (=> b!692820 (= e!435989 (= (list!3151 lt!285027) (Cons!7515 (_1!4381 (v!17679 lt!284947)) (list!3151 (_1!4376 lt!284945)))))))

(assert (= (and d!232802 res!314038) b!692820))

(declare-fun m!948902 () Bool)

(assert (=> d!232802 m!948902))

(assert (=> d!232802 m!948902))

(declare-fun m!948904 () Bool)

(assert (=> d!232802 m!948904))

(declare-fun m!948906 () Bool)

(assert (=> b!692820 m!948906))

(declare-fun m!948908 () Bool)

(assert (=> b!692820 m!948908))

(assert (=> b!692324 d!232802))

(declare-fun b!692821 () Bool)

(declare-fun e!435990 () tuple2!7916)

(assert (=> b!692821 (= e!435990 (tuple2!7917 (BalanceConc!5317 Empty!2652) (_2!4381 (v!17679 lt!284947))))))

(declare-fun b!692822 () Bool)

(declare-fun e!435993 () Bool)

(declare-fun lt!285029 () tuple2!7916)

(assert (=> b!692822 (= e!435993 (= (list!3152 (_2!4376 lt!285029)) (list!3152 (_2!4381 (v!17679 lt!284947)))))))

(declare-fun b!692824 () Bool)

(declare-fun lt!285028 () tuple2!7916)

(declare-fun lt!285030 () Option!1707)

(assert (=> b!692824 (= e!435990 (tuple2!7917 (prepend!258 (_1!4376 lt!285028) (_1!4381 (v!17679 lt!285030))) (_2!4376 lt!285028)))))

(assert (=> b!692824 (= lt!285028 (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!285030))))))

(declare-fun b!692825 () Bool)

(declare-fun e!435992 () Bool)

(assert (=> b!692825 (= e!435993 e!435992)))

(declare-fun res!314041 () Bool)

(assert (=> b!692825 (= res!314041 (< (size!6144 (_2!4376 lt!285029)) (size!6144 (_2!4381 (v!17679 lt!284947)))))))

(assert (=> b!692825 (=> (not res!314041) (not e!435992))))

(declare-fun b!692826 () Bool)

(declare-fun res!314040 () Bool)

(declare-fun e!435991 () Bool)

(assert (=> b!692826 (=> (not res!314040) (not e!435991))))

(assert (=> b!692826 (= res!314040 (= (list!3151 (_1!4376 lt!285029)) (_1!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 (_2!4381 (v!17679 lt!284947)))))))))

(declare-fun b!692827 () Bool)

(assert (=> b!692827 (= e!435992 (not (isEmpty!4882 (_1!4376 lt!285029))))))

(declare-fun b!692823 () Bool)

(assert (=> b!692823 (= e!435991 (= (list!3152 (_2!4376 lt!285029)) (_2!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 (_2!4381 (v!17679 lt!284947)))))))))

(declare-fun d!232804 () Bool)

(assert (=> d!232804 e!435991))

(declare-fun res!314039 () Bool)

(assert (=> d!232804 (=> (not res!314039) (not e!435991))))

(assert (=> d!232804 (= res!314039 e!435993)))

(declare-fun c!121690 () Bool)

(assert (=> d!232804 (= c!121690 (> (size!6145 (_1!4376 lt!285029)) 0))))

(assert (=> d!232804 (= lt!285029 e!435990)))

(declare-fun c!121689 () Bool)

(assert (=> d!232804 (= c!121689 ((_ is Some!1706) lt!285030))))

(assert (=> d!232804 (= lt!285030 (maxPrefixZipperSequence!457 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284947))))))

(assert (=> d!232804 (= (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284947))) lt!285029)))

(assert (= (and d!232804 c!121689) b!692824))

(assert (= (and d!232804 (not c!121689)) b!692821))

(assert (= (and d!232804 c!121690) b!692825))

(assert (= (and d!232804 (not c!121690)) b!692822))

(assert (= (and b!692825 res!314041) b!692827))

(assert (= (and d!232804 res!314039) b!692826))

(assert (= (and b!692826 res!314040) b!692823))

(declare-fun m!948910 () Bool)

(assert (=> d!232804 m!948910))

(declare-fun m!948912 () Bool)

(assert (=> d!232804 m!948912))

(declare-fun m!948914 () Bool)

(assert (=> b!692826 m!948914))

(declare-fun m!948916 () Bool)

(assert (=> b!692826 m!948916))

(assert (=> b!692826 m!948916))

(declare-fun m!948918 () Bool)

(assert (=> b!692826 m!948918))

(declare-fun m!948920 () Bool)

(assert (=> b!692827 m!948920))

(declare-fun m!948922 () Bool)

(assert (=> b!692824 m!948922))

(declare-fun m!948924 () Bool)

(assert (=> b!692824 m!948924))

(declare-fun m!948926 () Bool)

(assert (=> b!692823 m!948926))

(assert (=> b!692823 m!948916))

(assert (=> b!692823 m!948916))

(assert (=> b!692823 m!948918))

(declare-fun m!948928 () Bool)

(assert (=> b!692825 m!948928))

(declare-fun m!948930 () Bool)

(assert (=> b!692825 m!948930))

(assert (=> b!692822 m!948926))

(assert (=> b!692822 m!948916))

(assert (=> b!692324 d!232804))

(declare-fun d!232806 () Bool)

(assert (=> d!232806 (= (inv!9641 (xs!5302 (c!121614 totalInput!378))) (<= (size!6146 (innerList!2709 (xs!5302 (c!121614 totalInput!378)))) 2147483647))))

(declare-fun bs!137451 () Bool)

(assert (= bs!137451 d!232806))

(declare-fun m!948932 () Bool)

(assert (=> bs!137451 m!948932))

(assert (=> b!692453 d!232806))

(assert (=> b!692266 d!232634))

(declare-fun bs!137452 () Bool)

(declare-fun d!232808 () Bool)

(assert (= bs!137452 (and d!232808 d!232746)))

(declare-fun lambda!21557 () Int)

(assert (=> bs!137452 (= lambda!21557 lambda!21544)))

(declare-fun bs!137453 () Bool)

(assert (= bs!137453 (and d!232808 d!232726)))

(assert (=> bs!137453 (= lambda!21557 lambda!21542)))

(declare-fun bs!137454 () Bool)

(assert (= bs!137454 (and d!232808 d!232774)))

(assert (=> bs!137454 (= lambda!21557 lambda!21554)))

(declare-fun bs!137455 () Bool)

(assert (= bs!137455 (and d!232808 d!232798)))

(assert (=> bs!137455 (= lambda!21557 lambda!21556)))

(declare-fun bs!137456 () Bool)

(assert (= bs!137456 (and d!232808 d!232782)))

(assert (=> bs!137456 (= lambda!21557 lambda!21555)))

(declare-fun bs!137457 () Bool)

(assert (= bs!137457 (and d!232808 d!232722)))

(assert (=> bs!137457 (= lambda!21557 lambda!21541)))

(declare-fun bs!137458 () Bool)

(assert (= bs!137458 (and d!232808 d!232770)))

(assert (=> bs!137458 (= lambda!21557 lambda!21553)))

(declare-fun bs!137459 () Bool)

(assert (= bs!137459 (and d!232808 d!232768)))

(assert (=> bs!137459 (= lambda!21557 lambda!21552)))

(declare-fun bs!137460 () Bool)

(assert (= bs!137460 (and d!232808 d!232728)))

(assert (=> bs!137460 (= lambda!21557 lambda!21543)))

(assert (=> d!232808 (= (inv!9640 setElem!3825) (forall!1957 (exprs!747 setElem!3825) lambda!21557))))

(declare-fun bs!137461 () Bool)

(assert (= bs!137461 d!232808))

(declare-fun m!948934 () Bool)

(assert (=> bs!137461 m!948934))

(assert (=> setNonEmpty!3825 d!232808))

(declare-fun d!232810 () Bool)

(declare-fun res!314042 () Bool)

(declare-fun e!435994 () Bool)

(assert (=> d!232810 (=> (not res!314042) (not e!435994))))

(assert (=> d!232810 (= res!314042 (= (csize!5532 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) (+ (size!6148 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) (size!6148 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))))

(assert (=> d!232810 (= (inv!9638 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) e!435994)))

(declare-fun b!692828 () Bool)

(declare-fun res!314043 () Bool)

(assert (=> b!692828 (=> (not res!314043) (not e!435994))))

(assert (=> b!692828 (= res!314043 (and (not (= (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) Empty!2651)) (not (= (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) Empty!2651))))))

(declare-fun b!692829 () Bool)

(declare-fun res!314044 () Bool)

(assert (=> b!692829 (=> (not res!314044) (not e!435994))))

(assert (=> b!692829 (= res!314044 (= (cheight!2862 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) (+ (max!0 (height!319 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) (height!319 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) 1)))))

(declare-fun b!692830 () Bool)

(assert (=> b!692830 (= e!435994 (<= 0 (cheight!2862 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(assert (= (and d!232810 res!314042) b!692828))

(assert (= (and b!692828 res!314043) b!692829))

(assert (= (and b!692829 res!314044) b!692830))

(declare-fun m!948936 () Bool)

(assert (=> d!232810 m!948936))

(declare-fun m!948938 () Bool)

(assert (=> d!232810 m!948938))

(assert (=> b!692829 m!948712))

(assert (=> b!692829 m!948714))

(assert (=> b!692829 m!948712))

(assert (=> b!692829 m!948714))

(declare-fun m!948940 () Bool)

(assert (=> b!692829 m!948940))

(assert (=> b!692401 d!232810))

(declare-fun b!692841 () Bool)

(declare-fun e!436000 () List!7529)

(declare-fun list!3156 (IArray!5305) List!7529)

(assert (=> b!692841 (= e!436000 (list!3156 (xs!5303 (c!121615 acc!372))))))

(declare-fun b!692839 () Bool)

(declare-fun e!435999 () List!7529)

(assert (=> b!692839 (= e!435999 Nil!7515)))

(declare-fun d!232812 () Bool)

(declare-fun c!121695 () Bool)

(assert (=> d!232812 (= c!121695 ((_ is Empty!2652) (c!121615 acc!372)))))

(assert (=> d!232812 (= (list!3154 (c!121615 acc!372)) e!435999)))

(declare-fun b!692842 () Bool)

(assert (=> b!692842 (= e!436000 (++!1962 (list!3154 (left!6007 (c!121615 acc!372))) (list!3154 (right!6337 (c!121615 acc!372)))))))

(declare-fun b!692840 () Bool)

(assert (=> b!692840 (= e!435999 e!436000)))

(declare-fun c!121696 () Bool)

(assert (=> b!692840 (= c!121696 ((_ is Leaf!3928) (c!121615 acc!372)))))

(assert (= (and d!232812 c!121695) b!692839))

(assert (= (and d!232812 (not c!121695)) b!692840))

(assert (= (and b!692840 c!121696) b!692841))

(assert (= (and b!692840 (not c!121696)) b!692842))

(declare-fun m!948942 () Bool)

(assert (=> b!692841 m!948942))

(declare-fun m!948944 () Bool)

(assert (=> b!692842 m!948944))

(declare-fun m!948946 () Bool)

(assert (=> b!692842 m!948946))

(assert (=> b!692842 m!948944))

(assert (=> b!692842 m!948946))

(declare-fun m!948948 () Bool)

(assert (=> b!692842 m!948948))

(assert (=> d!232630 d!232812))

(declare-fun b!692861 () Bool)

(declare-fun e!436013 () List!7525)

(assert (=> b!692861 (= e!436013 (drop!355 (t!87343 lt!284928) (- (- (size!6146 lt!284928) (size!6146 lt!284932)) 1)))))

(declare-fun bm!43644 () Bool)

(declare-fun call!43649 () Int)

(assert (=> bm!43644 (= call!43649 (size!6146 lt!284928))))

(declare-fun b!692862 () Bool)

(declare-fun e!436012 () Bool)

(declare-fun lt!285033 () List!7525)

(declare-fun e!436014 () Int)

(assert (=> b!692862 (= e!436012 (= (size!6146 lt!285033) e!436014))))

(declare-fun c!121708 () Bool)

(assert (=> b!692862 (= c!121708 (<= (- (size!6146 lt!284928) (size!6146 lt!284932)) 0))))

(declare-fun b!692863 () Bool)

(assert (=> b!692863 (= e!436014 call!43649)))

(declare-fun b!692864 () Bool)

(declare-fun e!436015 () Int)

(assert (=> b!692864 (= e!436014 e!436015)))

(declare-fun c!121705 () Bool)

(assert (=> b!692864 (= c!121705 (>= (- (size!6146 lt!284928) (size!6146 lt!284932)) call!43649))))

(declare-fun d!232814 () Bool)

(assert (=> d!232814 e!436012))

(declare-fun res!314047 () Bool)

(assert (=> d!232814 (=> (not res!314047) (not e!436012))))

(assert (=> d!232814 (= res!314047 (= ((_ map implies) (content!1186 lt!285033) (content!1186 lt!284928)) ((as const (InoxSet C!4292)) true)))))

(declare-fun e!436011 () List!7525)

(assert (=> d!232814 (= lt!285033 e!436011)))

(declare-fun c!121707 () Bool)

(assert (=> d!232814 (= c!121707 ((_ is Nil!7511) lt!284928))))

(assert (=> d!232814 (= (drop!355 lt!284928 (- (size!6146 lt!284928) (size!6146 lt!284932))) lt!285033)))

(declare-fun b!692865 () Bool)

(assert (=> b!692865 (= e!436015 0)))

(declare-fun b!692866 () Bool)

(assert (=> b!692866 (= e!436015 (- call!43649 (- (size!6146 lt!284928) (size!6146 lt!284932))))))

(declare-fun b!692867 () Bool)

(assert (=> b!692867 (= e!436011 e!436013)))

(declare-fun c!121706 () Bool)

(assert (=> b!692867 (= c!121706 (<= (- (size!6146 lt!284928) (size!6146 lt!284932)) 0))))

(declare-fun b!692868 () Bool)

(assert (=> b!692868 (= e!436013 lt!284928)))

(declare-fun b!692869 () Bool)

(assert (=> b!692869 (= e!436011 Nil!7511)))

(assert (= (and d!232814 c!121707) b!692869))

(assert (= (and d!232814 (not c!121707)) b!692867))

(assert (= (and b!692867 c!121706) b!692868))

(assert (= (and b!692867 (not c!121706)) b!692861))

(assert (= (and d!232814 res!314047) b!692862))

(assert (= (and b!692862 c!121708) b!692863))

(assert (= (and b!692862 (not c!121708)) b!692864))

(assert (= (and b!692864 c!121705) b!692865))

(assert (= (and b!692864 (not c!121705)) b!692866))

(assert (= (or b!692863 b!692864 b!692866) bm!43644))

(declare-fun m!948950 () Bool)

(assert (=> b!692861 m!948950))

(assert (=> bm!43644 m!948542))

(declare-fun m!948952 () Bool)

(assert (=> b!692862 m!948952))

(declare-fun m!948954 () Bool)

(assert (=> d!232814 m!948954))

(declare-fun m!948956 () Bool)

(assert (=> d!232814 m!948956))

(assert (=> d!232700 d!232814))

(declare-fun d!232816 () Bool)

(declare-fun lt!285036 () Int)

(assert (=> d!232816 (>= lt!285036 0)))

(declare-fun e!436018 () Int)

(assert (=> d!232816 (= lt!285036 e!436018)))

(declare-fun c!121711 () Bool)

(assert (=> d!232816 (= c!121711 ((_ is Nil!7511) lt!284928))))

(assert (=> d!232816 (= (size!6146 lt!284928) lt!285036)))

(declare-fun b!692874 () Bool)

(assert (=> b!692874 (= e!436018 0)))

(declare-fun b!692875 () Bool)

(assert (=> b!692875 (= e!436018 (+ 1 (size!6146 (t!87343 lt!284928))))))

(assert (= (and d!232816 c!121711) b!692874))

(assert (= (and d!232816 (not c!121711)) b!692875))

(declare-fun m!948958 () Bool)

(assert (=> b!692875 m!948958))

(assert (=> d!232700 d!232816))

(declare-fun d!232818 () Bool)

(declare-fun lt!285037 () Int)

(assert (=> d!232818 (>= lt!285037 0)))

(declare-fun e!436019 () Int)

(assert (=> d!232818 (= lt!285037 e!436019)))

(declare-fun c!121712 () Bool)

(assert (=> d!232818 (= c!121712 ((_ is Nil!7511) lt!284932))))

(assert (=> d!232818 (= (size!6146 lt!284932) lt!285037)))

(declare-fun b!692876 () Bool)

(assert (=> b!692876 (= e!436019 0)))

(declare-fun b!692877 () Bool)

(assert (=> b!692877 (= e!436019 (+ 1 (size!6146 (t!87343 lt!284932))))))

(assert (= (and d!232818 c!121712) b!692876))

(assert (= (and d!232818 (not c!121712)) b!692877))

(declare-fun m!948960 () Bool)

(assert (=> b!692877 m!948960))

(assert (=> d!232700 d!232818))

(declare-fun d!232820 () Bool)

(declare-fun e!436020 () Bool)

(assert (=> d!232820 e!436020))

(declare-fun res!314048 () Bool)

(assert (=> d!232820 (=> (not res!314048) (not e!436020))))

(assert (=> d!232820 (= res!314048 (isBalanced!697 (prepend!259 (c!121615 (_1!4376 lt!284954)) (_1!4381 (v!17679 lt!284956)))))))

(declare-fun lt!285038 () BalanceConc!5316)

(assert (=> d!232820 (= lt!285038 (BalanceConc!5317 (prepend!259 (c!121615 (_1!4376 lt!284954)) (_1!4381 (v!17679 lt!284956)))))))

(assert (=> d!232820 (= (prepend!258 (_1!4376 lt!284954) (_1!4381 (v!17679 lt!284956))) lt!285038)))

(declare-fun b!692878 () Bool)

(assert (=> b!692878 (= e!436020 (= (list!3151 lt!285038) (Cons!7515 (_1!4381 (v!17679 lt!284956)) (list!3151 (_1!4376 lt!284954)))))))

(assert (= (and d!232820 res!314048) b!692878))

(declare-fun m!948962 () Bool)

(assert (=> d!232820 m!948962))

(assert (=> d!232820 m!948962))

(declare-fun m!948964 () Bool)

(assert (=> d!232820 m!948964))

(declare-fun m!948966 () Bool)

(assert (=> b!692878 m!948966))

(declare-fun m!948968 () Bool)

(assert (=> b!692878 m!948968))

(assert (=> b!692378 d!232820))

(declare-fun b!692879 () Bool)

(declare-fun e!436021 () tuple2!7916)

(assert (=> b!692879 (= e!436021 (tuple2!7917 (BalanceConc!5317 Empty!2652) (_2!4381 (v!17679 lt!284956))))))

(declare-fun b!692880 () Bool)

(declare-fun e!436024 () Bool)

(declare-fun lt!285040 () tuple2!7916)

(assert (=> b!692880 (= e!436024 (= (list!3152 (_2!4376 lt!285040)) (list!3152 (_2!4381 (v!17679 lt!284956)))))))

(declare-fun b!692882 () Bool)

(declare-fun lt!285039 () tuple2!7916)

(declare-fun lt!285041 () Option!1707)

(assert (=> b!692882 (= e!436021 (tuple2!7917 (prepend!258 (_1!4376 lt!285039) (_1!4381 (v!17679 lt!285041))) (_2!4376 lt!285039)))))

(assert (=> b!692882 (= lt!285039 (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!285041))))))

(declare-fun b!692883 () Bool)

(declare-fun e!436023 () Bool)

(assert (=> b!692883 (= e!436024 e!436023)))

(declare-fun res!314051 () Bool)

(assert (=> b!692883 (= res!314051 (< (size!6144 (_2!4376 lt!285040)) (size!6144 (_2!4381 (v!17679 lt!284956)))))))

(assert (=> b!692883 (=> (not res!314051) (not e!436023))))

(declare-fun b!692884 () Bool)

(declare-fun res!314050 () Bool)

(declare-fun e!436022 () Bool)

(assert (=> b!692884 (=> (not res!314050) (not e!436022))))

(assert (=> b!692884 (= res!314050 (= (list!3151 (_1!4376 lt!285040)) (_1!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 (_2!4381 (v!17679 lt!284956)))))))))

(declare-fun b!692885 () Bool)

(assert (=> b!692885 (= e!436023 (not (isEmpty!4882 (_1!4376 lt!285040))))))

(declare-fun b!692881 () Bool)

(assert (=> b!692881 (= e!436022 (= (list!3152 (_2!4376 lt!285040)) (_2!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 (_2!4381 (v!17679 lt!284956)))))))))

(declare-fun d!232822 () Bool)

(assert (=> d!232822 e!436022))

(declare-fun res!314049 () Bool)

(assert (=> d!232822 (=> (not res!314049) (not e!436022))))

(assert (=> d!232822 (= res!314049 e!436024)))

(declare-fun c!121714 () Bool)

(assert (=> d!232822 (= c!121714 (> (size!6145 (_1!4376 lt!285040)) 0))))

(assert (=> d!232822 (= lt!285040 e!436021)))

(declare-fun c!121713 () Bool)

(assert (=> d!232822 (= c!121713 ((_ is Some!1706) lt!285041))))

(assert (=> d!232822 (= lt!285041 (maxPrefixZipperSequence!457 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284956))))))

(assert (=> d!232822 (= (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284956))) lt!285040)))

(assert (= (and d!232822 c!121713) b!692882))

(assert (= (and d!232822 (not c!121713)) b!692879))

(assert (= (and d!232822 c!121714) b!692883))

(assert (= (and d!232822 (not c!121714)) b!692880))

(assert (= (and b!692883 res!314051) b!692885))

(assert (= (and d!232822 res!314049) b!692884))

(assert (= (and b!692884 res!314050) b!692881))

(declare-fun m!948970 () Bool)

(assert (=> d!232822 m!948970))

(declare-fun m!948972 () Bool)

(assert (=> d!232822 m!948972))

(declare-fun m!948974 () Bool)

(assert (=> b!692884 m!948974))

(declare-fun m!948976 () Bool)

(assert (=> b!692884 m!948976))

(assert (=> b!692884 m!948976))

(declare-fun m!948978 () Bool)

(assert (=> b!692884 m!948978))

(declare-fun m!948980 () Bool)

(assert (=> b!692885 m!948980))

(declare-fun m!948982 () Bool)

(assert (=> b!692882 m!948982))

(declare-fun m!948984 () Bool)

(assert (=> b!692882 m!948984))

(declare-fun m!948986 () Bool)

(assert (=> b!692881 m!948986))

(assert (=> b!692881 m!948976))

(assert (=> b!692881 m!948976))

(assert (=> b!692881 m!948978))

(declare-fun m!948988 () Bool)

(assert (=> b!692883 m!948988))

(declare-fun m!948990 () Bool)

(assert (=> b!692883 m!948990))

(assert (=> b!692880 m!948986))

(assert (=> b!692880 m!948976))

(assert (=> b!692378 d!232822))

(declare-fun b!692888 () Bool)

(declare-fun e!436026 () List!7529)

(assert (=> b!692888 (= e!436026 (list!3156 (xs!5303 (c!121615 (_1!4376 lt!284933)))))))

(declare-fun b!692886 () Bool)

(declare-fun e!436025 () List!7529)

(assert (=> b!692886 (= e!436025 Nil!7515)))

(declare-fun d!232824 () Bool)

(declare-fun c!121715 () Bool)

(assert (=> d!232824 (= c!121715 ((_ is Empty!2652) (c!121615 (_1!4376 lt!284933))))))

(assert (=> d!232824 (= (list!3154 (c!121615 (_1!4376 lt!284933))) e!436025)))

(declare-fun b!692889 () Bool)

(assert (=> b!692889 (= e!436026 (++!1962 (list!3154 (left!6007 (c!121615 (_1!4376 lt!284933)))) (list!3154 (right!6337 (c!121615 (_1!4376 lt!284933))))))))

(declare-fun b!692887 () Bool)

(assert (=> b!692887 (= e!436025 e!436026)))

(declare-fun c!121716 () Bool)

(assert (=> b!692887 (= c!121716 ((_ is Leaf!3928) (c!121615 (_1!4376 lt!284933))))))

(assert (= (and d!232824 c!121715) b!692886))

(assert (= (and d!232824 (not c!121715)) b!692887))

(assert (= (and b!692887 c!121716) b!692888))

(assert (= (and b!692887 (not c!121716)) b!692889))

(declare-fun m!948992 () Bool)

(assert (=> b!692888 m!948992))

(declare-fun m!948994 () Bool)

(assert (=> b!692889 m!948994))

(declare-fun m!948996 () Bool)

(assert (=> b!692889 m!948996))

(assert (=> b!692889 m!948994))

(assert (=> b!692889 m!948996))

(declare-fun m!948998 () Bool)

(assert (=> b!692889 m!948998))

(assert (=> d!232664 d!232824))

(declare-fun b!692895 () Bool)

(assert (=> b!692895 true))

(declare-fun d!232826 () Bool)

(declare-fun res!314056 () Bool)

(declare-fun e!436029 () Bool)

(assert (=> d!232826 (=> (not res!314056) (not e!436029))))

(declare-fun valid!670 (MutableMap!749) Bool)

(assert (=> d!232826 (= res!314056 (valid!670 (cache!1136 cacheFindLongestMatch!74)))))

(assert (=> d!232826 (= (validCacheMapFindLongestMatch!7 (cache!1136 cacheFindLongestMatch!74) (totalInput!1804 cacheFindLongestMatch!74)) e!436029)))

(declare-fun b!692894 () Bool)

(declare-fun res!314057 () Bool)

(assert (=> b!692894 (=> (not res!314057) (not e!436029))))

(declare-fun invariantList!140 (List!7527) Bool)

(declare-datatypes ((ListMap!329 0))(
  ( (ListMap!330 (toList!505 List!7527)) )
))
(declare-fun map!1661 (MutableMap!749) ListMap!329)

(assert (=> b!692894 (= res!314057 (invariantList!140 (toList!505 (map!1661 (cache!1136 cacheFindLongestMatch!74)))))))

(declare-fun lambda!21560 () Int)

(declare-fun forall!1960 (List!7527 Int) Bool)

(assert (=> b!692895 (= e!436029 (forall!1960 (toList!505 (map!1661 (cache!1136 cacheFindLongestMatch!74))) lambda!21560))))

(assert (= (and d!232826 res!314056) b!692894))

(assert (= (and b!692894 res!314057) b!692895))

(declare-fun m!949001 () Bool)

(assert (=> d!232826 m!949001))

(declare-fun m!949003 () Bool)

(assert (=> b!692894 m!949003))

(declare-fun m!949005 () Bool)

(assert (=> b!692894 m!949005))

(assert (=> b!692895 m!949003))

(declare-fun m!949007 () Bool)

(assert (=> b!692895 m!949007))

(assert (=> d!232674 d!232826))

(declare-fun d!232828 () Bool)

(assert (=> d!232828 true))

(declare-fun order!5359 () Int)

(declare-fun lambda!21563 () Int)

(declare-fun order!5357 () Int)

(declare-fun dynLambda!3886 (Int Int) Int)

(declare-fun dynLambda!3887 (Int Int) Int)

(assert (=> d!232828 (< (dynLambda!3886 order!5357 (toChars!2327 (transformation!1506 (h!12917 rules!1486)))) (dynLambda!3887 order!5359 lambda!21563))))

(assert (=> d!232828 true))

(declare-fun order!5361 () Int)

(declare-fun dynLambda!3888 (Int Int) Int)

(assert (=> d!232828 (< (dynLambda!3888 order!5361 (toValue!2468 (transformation!1506 (h!12917 rules!1486)))) (dynLambda!3887 order!5359 lambda!21563))))

(declare-fun Forall!357 (Int) Bool)

(assert (=> d!232828 (= (semiInverseModEq!571 (toChars!2327 (transformation!1506 (h!12917 rules!1486))) (toValue!2468 (transformation!1506 (h!12917 rules!1486)))) (Forall!357 lambda!21563))))

(declare-fun bs!137462 () Bool)

(assert (= bs!137462 d!232828))

(declare-fun m!949009 () Bool)

(assert (=> bs!137462 m!949009))

(assert (=> d!232658 d!232828))

(declare-fun d!232830 () Bool)

(declare-fun lt!285042 () Int)

(assert (=> d!232830 (= lt!285042 (size!6147 (list!3151 (_1!4376 lt!284961))))))

(assert (=> d!232830 (= lt!285042 (size!6149 (c!121615 (_1!4376 lt!284961))))))

(assert (=> d!232830 (= (size!6145 (_1!4376 lt!284961)) lt!285042)))

(declare-fun bs!137463 () Bool)

(assert (= bs!137463 d!232830))

(assert (=> bs!137463 m!948502))

(assert (=> bs!137463 m!948502))

(declare-fun m!949011 () Bool)

(assert (=> bs!137463 m!949011))

(declare-fun m!949013 () Bool)

(assert (=> bs!137463 m!949013))

(assert (=> d!232670 d!232830))

(declare-fun lt!285049 () Option!1707)

(declare-fun e!436032 () Bool)

(declare-fun b!692902 () Bool)

(assert (=> b!692902 (= e!436032 (= (list!3152 (_2!4381 (get!2581 lt!285049))) (_2!4383 (get!2582 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 totalInput!378))))))))

(declare-fun d!232832 () Bool)

(declare-fun e!436035 () Bool)

(assert (=> d!232832 e!436035))

(declare-fun res!314061 () Bool)

(assert (=> d!232832 (=> (not res!314061) (not e!436035))))

(assert (=> d!232832 (= res!314061 (= (isDefined!1438 lt!285049) (isDefined!1439 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 totalInput!378)))))))

(declare-fun e!436031 () Option!1707)

(assert (=> d!232832 (= lt!285049 e!436031)))

(declare-fun c!121717 () Bool)

(assert (=> d!232832 (= c!121717 (and ((_ is Cons!7516) rules!1486) ((_ is Nil!7516) (t!87348 rules!1486))))))

(declare-fun lt!285048 () Unit!12656)

(declare-fun lt!285043 () Unit!12656)

(assert (=> d!232832 (= lt!285048 lt!285043)))

(declare-fun lt!285046 () List!7525)

(declare-fun lt!285047 () List!7525)

(assert (=> d!232832 (isPrefix!916 lt!285046 lt!285047)))

(assert (=> d!232832 (= lt!285043 (lemmaIsPrefixRefl!627 lt!285046 lt!285047))))

(assert (=> d!232832 (= lt!285047 (list!3152 totalInput!378))))

(assert (=> d!232832 (= lt!285046 (list!3152 totalInput!378))))

(assert (=> d!232832 (rulesValidInductive!520 thiss!12529 rules!1486)))

(assert (=> d!232832 (= (maxPrefixZipperSequence!457 thiss!12529 rules!1486 totalInput!378) lt!285049)))

(declare-fun b!692903 () Bool)

(declare-fun res!314058 () Bool)

(assert (=> b!692903 (=> (not res!314058) (not e!436035))))

(declare-fun e!436034 () Bool)

(assert (=> b!692903 (= res!314058 e!436034)))

(declare-fun res!314059 () Bool)

(assert (=> b!692903 (=> res!314059 e!436034)))

(assert (=> b!692903 (= res!314059 (not (isDefined!1438 lt!285049)))))

(declare-fun b!692904 () Bool)

(declare-fun e!436030 () Bool)

(assert (=> b!692904 (= e!436030 (= (list!3152 (_2!4381 (get!2581 lt!285049))) (_2!4383 (get!2582 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 totalInput!378))))))))

(declare-fun call!43650 () Option!1707)

(declare-fun bm!43645 () Bool)

(assert (=> bm!43645 (= call!43650 (maxPrefixOneRuleZipperSequence!210 thiss!12529 (h!12917 rules!1486) totalInput!378))))

(declare-fun b!692905 () Bool)

(declare-fun e!436033 () Bool)

(assert (=> b!692905 (= e!436033 e!436030)))

(declare-fun res!314060 () Bool)

(assert (=> b!692905 (=> (not res!314060) (not e!436030))))

(assert (=> b!692905 (= res!314060 (= (_1!4381 (get!2581 lt!285049)) (_1!4383 (get!2582 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 totalInput!378))))))))

(declare-fun b!692906 () Bool)

(assert (=> b!692906 (= e!436034 e!436032)))

(declare-fun res!314063 () Bool)

(assert (=> b!692906 (=> (not res!314063) (not e!436032))))

(assert (=> b!692906 (= res!314063 (= (_1!4381 (get!2581 lt!285049)) (_1!4383 (get!2582 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 totalInput!378))))))))

(declare-fun b!692907 () Bool)

(assert (=> b!692907 (= e!436031 call!43650)))

(declare-fun b!692908 () Bool)

(assert (=> b!692908 (= e!436035 e!436033)))

(declare-fun res!314062 () Bool)

(assert (=> b!692908 (=> res!314062 e!436033)))

(assert (=> b!692908 (= res!314062 (not (isDefined!1438 lt!285049)))))

(declare-fun b!692909 () Bool)

(declare-fun lt!285044 () Option!1707)

(declare-fun lt!285045 () Option!1707)

(assert (=> b!692909 (= e!436031 (ite (and ((_ is None!1706) lt!285044) ((_ is None!1706) lt!285045)) None!1706 (ite ((_ is None!1706) lt!285045) lt!285044 (ite ((_ is None!1706) lt!285044) lt!285045 (ite (>= (size!6141 (_1!4381 (v!17679 lt!285044))) (size!6141 (_1!4381 (v!17679 lt!285045)))) lt!285044 lt!285045)))))))

(assert (=> b!692909 (= lt!285044 call!43650)))

(assert (=> b!692909 (= lt!285045 (maxPrefixZipperSequence!457 thiss!12529 (t!87348 rules!1486) totalInput!378))))

(assert (= (and d!232832 c!121717) b!692907))

(assert (= (and d!232832 (not c!121717)) b!692909))

(assert (= (or b!692907 b!692909) bm!43645))

(assert (= (and d!232832 res!314061) b!692903))

(assert (= (and b!692903 (not res!314059)) b!692906))

(assert (= (and b!692906 res!314063) b!692902))

(assert (= (and b!692903 res!314058) b!692908))

(assert (= (and b!692908 (not res!314062)) b!692905))

(assert (= (and b!692905 res!314060) b!692904))

(declare-fun m!949015 () Bool)

(assert (=> b!692906 m!949015))

(assert (=> b!692906 m!948322))

(assert (=> b!692906 m!948322))

(declare-fun m!949017 () Bool)

(assert (=> b!692906 m!949017))

(assert (=> b!692906 m!949017))

(declare-fun m!949019 () Bool)

(assert (=> b!692906 m!949019))

(assert (=> b!692905 m!949015))

(assert (=> b!692905 m!948322))

(assert (=> b!692905 m!948322))

(assert (=> b!692905 m!948672))

(assert (=> b!692905 m!948672))

(declare-fun m!949021 () Bool)

(assert (=> b!692905 m!949021))

(declare-fun m!949023 () Bool)

(assert (=> b!692903 m!949023))

(declare-fun m!949025 () Bool)

(assert (=> bm!43645 m!949025))

(declare-fun m!949027 () Bool)

(assert (=> b!692909 m!949027))

(assert (=> b!692904 m!948322))

(assert (=> b!692904 m!948672))

(declare-fun m!949029 () Bool)

(assert (=> b!692904 m!949029))

(assert (=> b!692904 m!948322))

(assert (=> b!692904 m!949015))

(assert (=> b!692904 m!948672))

(assert (=> b!692904 m!949021))

(assert (=> b!692908 m!949023))

(assert (=> b!692902 m!948322))

(assert (=> b!692902 m!949017))

(assert (=> b!692902 m!949029))

(assert (=> b!692902 m!948322))

(assert (=> b!692902 m!949015))

(assert (=> b!692902 m!949017))

(assert (=> b!692902 m!949019))

(assert (=> d!232832 m!948322))

(assert (=> d!232832 m!949017))

(assert (=> d!232832 m!949017))

(declare-fun m!949031 () Bool)

(assert (=> d!232832 m!949031))

(assert (=> d!232832 m!949023))

(declare-fun m!949033 () Bool)

(assert (=> d!232832 m!949033))

(assert (=> d!232832 m!948322))

(declare-fun m!949035 () Bool)

(assert (=> d!232832 m!949035))

(assert (=> d!232832 m!948328))

(assert (=> d!232670 d!232832))

(declare-fun d!232834 () Bool)

(declare-fun c!121718 () Bool)

(assert (=> d!232834 (= c!121718 ((_ is Empty!2651) (c!121614 (_2!4376 lt!284933))))))

(declare-fun e!436036 () List!7525)

(assert (=> d!232834 (= (list!3153 (c!121614 (_2!4376 lt!284933))) e!436036)))

(declare-fun b!692912 () Bool)

(declare-fun e!436037 () List!7525)

(assert (=> b!692912 (= e!436037 (list!3155 (xs!5302 (c!121614 (_2!4376 lt!284933)))))))

(declare-fun b!692910 () Bool)

(assert (=> b!692910 (= e!436036 Nil!7511)))

(declare-fun b!692913 () Bool)

(assert (=> b!692913 (= e!436037 (++!1961 (list!3153 (left!6006 (c!121614 (_2!4376 lt!284933)))) (list!3153 (right!6336 (c!121614 (_2!4376 lt!284933))))))))

(declare-fun b!692911 () Bool)

(assert (=> b!692911 (= e!436036 e!436037)))

(declare-fun c!121719 () Bool)

(assert (=> b!692911 (= c!121719 ((_ is Leaf!3927) (c!121614 (_2!4376 lt!284933))))))

(assert (= (and d!232834 c!121718) b!692910))

(assert (= (and d!232834 (not c!121718)) b!692911))

(assert (= (and b!692911 c!121719) b!692912))

(assert (= (and b!692911 (not c!121719)) b!692913))

(declare-fun m!949037 () Bool)

(assert (=> b!692912 m!949037))

(declare-fun m!949039 () Bool)

(assert (=> b!692913 m!949039))

(declare-fun m!949041 () Bool)

(assert (=> b!692913 m!949041))

(assert (=> b!692913 m!949039))

(assert (=> b!692913 m!949041))

(declare-fun m!949043 () Bool)

(assert (=> b!692913 m!949043))

(assert (=> d!232616 d!232834))

(declare-fun d!232836 () Bool)

(declare-fun lt!285050 () Int)

(assert (=> d!232836 (= lt!285050 (size!6147 (list!3151 (_1!4376 lt!284955))))))

(assert (=> d!232836 (= lt!285050 (size!6149 (c!121615 (_1!4376 lt!284955))))))

(assert (=> d!232836 (= (size!6145 (_1!4376 lt!284955)) lt!285050)))

(declare-fun bs!137464 () Bool)

(assert (= bs!137464 d!232836))

(assert (=> bs!137464 m!948462))

(assert (=> bs!137464 m!948462))

(declare-fun m!949045 () Bool)

(assert (=> bs!137464 m!949045))

(declare-fun m!949047 () Bool)

(assert (=> bs!137464 m!949047))

(assert (=> d!232666 d!232836))

(declare-fun b!692914 () Bool)

(declare-fun lt!285057 () Option!1707)

(declare-fun e!436040 () Bool)

(assert (=> b!692914 (= e!436040 (= (list!3152 (_2!4381 (get!2581 lt!285057))) (_2!4383 (get!2582 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 input!870))))))))

(declare-fun d!232838 () Bool)

(declare-fun e!436043 () Bool)

(assert (=> d!232838 e!436043))

(declare-fun res!314067 () Bool)

(assert (=> d!232838 (=> (not res!314067) (not e!436043))))

(assert (=> d!232838 (= res!314067 (= (isDefined!1438 lt!285057) (isDefined!1439 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 input!870)))))))

(declare-fun e!436039 () Option!1707)

(assert (=> d!232838 (= lt!285057 e!436039)))

(declare-fun c!121720 () Bool)

(assert (=> d!232838 (= c!121720 (and ((_ is Cons!7516) rules!1486) ((_ is Nil!7516) (t!87348 rules!1486))))))

(declare-fun lt!285056 () Unit!12656)

(declare-fun lt!285051 () Unit!12656)

(assert (=> d!232838 (= lt!285056 lt!285051)))

(declare-fun lt!285054 () List!7525)

(declare-fun lt!285055 () List!7525)

(assert (=> d!232838 (isPrefix!916 lt!285054 lt!285055)))

(assert (=> d!232838 (= lt!285051 (lemmaIsPrefixRefl!627 lt!285054 lt!285055))))

(assert (=> d!232838 (= lt!285055 (list!3152 input!870))))

(assert (=> d!232838 (= lt!285054 (list!3152 input!870))))

(assert (=> d!232838 (rulesValidInductive!520 thiss!12529 rules!1486)))

(assert (=> d!232838 (= (maxPrefixZipperSequence!457 thiss!12529 rules!1486 input!870) lt!285057)))

(declare-fun b!692915 () Bool)

(declare-fun res!314064 () Bool)

(assert (=> b!692915 (=> (not res!314064) (not e!436043))))

(declare-fun e!436042 () Bool)

(assert (=> b!692915 (= res!314064 e!436042)))

(declare-fun res!314065 () Bool)

(assert (=> b!692915 (=> res!314065 e!436042)))

(assert (=> b!692915 (= res!314065 (not (isDefined!1438 lt!285057)))))

(declare-fun b!692916 () Bool)

(declare-fun e!436038 () Bool)

(assert (=> b!692916 (= e!436038 (= (list!3152 (_2!4381 (get!2581 lt!285057))) (_2!4383 (get!2582 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 input!870))))))))

(declare-fun bm!43646 () Bool)

(declare-fun call!43651 () Option!1707)

(assert (=> bm!43646 (= call!43651 (maxPrefixOneRuleZipperSequence!210 thiss!12529 (h!12917 rules!1486) input!870))))

(declare-fun b!692917 () Bool)

(declare-fun e!436041 () Bool)

(assert (=> b!692917 (= e!436041 e!436038)))

(declare-fun res!314066 () Bool)

(assert (=> b!692917 (=> (not res!314066) (not e!436038))))

(assert (=> b!692917 (= res!314066 (= (_1!4381 (get!2581 lt!285057)) (_1!4383 (get!2582 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 input!870))))))))

(declare-fun b!692918 () Bool)

(assert (=> b!692918 (= e!436042 e!436040)))

(declare-fun res!314069 () Bool)

(assert (=> b!692918 (=> (not res!314069) (not e!436040))))

(assert (=> b!692918 (= res!314069 (= (_1!4381 (get!2581 lt!285057)) (_1!4383 (get!2582 (maxPrefixZipper!208 thiss!12529 rules!1486 (list!3152 input!870))))))))

(declare-fun b!692919 () Bool)

(assert (=> b!692919 (= e!436039 call!43651)))

(declare-fun b!692920 () Bool)

(assert (=> b!692920 (= e!436043 e!436041)))

(declare-fun res!314068 () Bool)

(assert (=> b!692920 (=> res!314068 e!436041)))

(assert (=> b!692920 (= res!314068 (not (isDefined!1438 lt!285057)))))

(declare-fun b!692921 () Bool)

(declare-fun lt!285052 () Option!1707)

(declare-fun lt!285053 () Option!1707)

(assert (=> b!692921 (= e!436039 (ite (and ((_ is None!1706) lt!285052) ((_ is None!1706) lt!285053)) None!1706 (ite ((_ is None!1706) lt!285053) lt!285052 (ite ((_ is None!1706) lt!285052) lt!285053 (ite (>= (size!6141 (_1!4381 (v!17679 lt!285052))) (size!6141 (_1!4381 (v!17679 lt!285053)))) lt!285052 lt!285053)))))))

(assert (=> b!692921 (= lt!285052 call!43651)))

(assert (=> b!692921 (= lt!285053 (maxPrefixZipperSequence!457 thiss!12529 (t!87348 rules!1486) input!870))))

(assert (= (and d!232838 c!121720) b!692919))

(assert (= (and d!232838 (not c!121720)) b!692921))

(assert (= (or b!692919 b!692921) bm!43646))

(assert (= (and d!232838 res!314067) b!692915))

(assert (= (and b!692915 (not res!314065)) b!692918))

(assert (= (and b!692918 res!314069) b!692914))

(assert (= (and b!692915 res!314064) b!692920))

(assert (= (and b!692920 (not res!314068)) b!692917))

(assert (= (and b!692917 res!314066) b!692916))

(declare-fun m!949049 () Bool)

(assert (=> b!692918 m!949049))

(assert (=> b!692918 m!948324))

(assert (=> b!692918 m!948324))

(declare-fun m!949051 () Bool)

(assert (=> b!692918 m!949051))

(assert (=> b!692918 m!949051))

(declare-fun m!949053 () Bool)

(assert (=> b!692918 m!949053))

(assert (=> b!692917 m!949049))

(assert (=> b!692917 m!948324))

(assert (=> b!692917 m!948324))

(declare-fun m!949055 () Bool)

(assert (=> b!692917 m!949055))

(assert (=> b!692917 m!949055))

(declare-fun m!949057 () Bool)

(assert (=> b!692917 m!949057))

(declare-fun m!949059 () Bool)

(assert (=> b!692915 m!949059))

(declare-fun m!949061 () Bool)

(assert (=> bm!43646 m!949061))

(declare-fun m!949063 () Bool)

(assert (=> b!692921 m!949063))

(assert (=> b!692916 m!948324))

(assert (=> b!692916 m!949055))

(declare-fun m!949065 () Bool)

(assert (=> b!692916 m!949065))

(assert (=> b!692916 m!948324))

(assert (=> b!692916 m!949049))

(assert (=> b!692916 m!949055))

(assert (=> b!692916 m!949057))

(assert (=> b!692920 m!949059))

(assert (=> b!692914 m!948324))

(assert (=> b!692914 m!949051))

(assert (=> b!692914 m!949065))

(assert (=> b!692914 m!948324))

(assert (=> b!692914 m!949049))

(assert (=> b!692914 m!949051))

(assert (=> b!692914 m!949053))

(assert (=> d!232838 m!948324))

(assert (=> d!232838 m!949051))

(assert (=> d!232838 m!949051))

(declare-fun m!949067 () Bool)

(assert (=> d!232838 m!949067))

(assert (=> d!232838 m!949059))

(declare-fun m!949069 () Bool)

(assert (=> d!232838 m!949069))

(assert (=> d!232838 m!948324))

(declare-fun m!949071 () Bool)

(assert (=> d!232838 m!949071))

(assert (=> d!232838 m!948328))

(assert (=> d!232666 d!232838))

(declare-fun b!692924 () Bool)

(declare-fun e!436045 () List!7529)

(assert (=> b!692924 (= e!436045 (list!3156 (xs!5303 (c!121615 (_1!4376 lt!284938)))))))

(declare-fun b!692922 () Bool)

(declare-fun e!436044 () List!7529)

(assert (=> b!692922 (= e!436044 Nil!7515)))

(declare-fun d!232840 () Bool)

(declare-fun c!121721 () Bool)

(assert (=> d!232840 (= c!121721 ((_ is Empty!2652) (c!121615 (_1!4376 lt!284938))))))

(assert (=> d!232840 (= (list!3154 (c!121615 (_1!4376 lt!284938))) e!436044)))

(declare-fun b!692925 () Bool)

(assert (=> b!692925 (= e!436045 (++!1962 (list!3154 (left!6007 (c!121615 (_1!4376 lt!284938)))) (list!3154 (right!6337 (c!121615 (_1!4376 lt!284938))))))))

(declare-fun b!692923 () Bool)

(assert (=> b!692923 (= e!436044 e!436045)))

(declare-fun c!121722 () Bool)

(assert (=> b!692923 (= c!121722 ((_ is Leaf!3928) (c!121615 (_1!4376 lt!284938))))))

(assert (= (and d!232840 c!121721) b!692922))

(assert (= (and d!232840 (not c!121721)) b!692923))

(assert (= (and b!692923 c!121722) b!692924))

(assert (= (and b!692923 (not c!121722)) b!692925))

(declare-fun m!949073 () Bool)

(assert (=> b!692924 m!949073))

(declare-fun m!949075 () Bool)

(assert (=> b!692925 m!949075))

(declare-fun m!949077 () Bool)

(assert (=> b!692925 m!949077))

(assert (=> b!692925 m!949075))

(assert (=> b!692925 m!949077))

(declare-fun m!949079 () Bool)

(assert (=> b!692925 m!949079))

(assert (=> d!232628 d!232840))

(declare-fun b!692926 () Bool)

(declare-fun res!314075 () Bool)

(declare-fun e!436047 () Bool)

(assert (=> b!692926 (=> (not res!314075) (not e!436047))))

(assert (=> b!692926 (= res!314075 (isBalanced!696 (left!6006 (c!121614 input!870))))))

(declare-fun b!692927 () Bool)

(declare-fun res!314073 () Bool)

(assert (=> b!692927 (=> (not res!314073) (not e!436047))))

(assert (=> b!692927 (= res!314073 (<= (- (height!319 (left!6006 (c!121614 input!870))) (height!319 (right!6336 (c!121614 input!870)))) 1))))

(declare-fun b!692928 () Bool)

(assert (=> b!692928 (= e!436047 (not (isEmpty!4885 (right!6336 (c!121614 input!870)))))))

(declare-fun b!692929 () Bool)

(declare-fun res!314070 () Bool)

(assert (=> b!692929 (=> (not res!314070) (not e!436047))))

(assert (=> b!692929 (= res!314070 (isBalanced!696 (right!6336 (c!121614 input!870))))))

(declare-fun b!692930 () Bool)

(declare-fun e!436046 () Bool)

(assert (=> b!692930 (= e!436046 e!436047)))

(declare-fun res!314072 () Bool)

(assert (=> b!692930 (=> (not res!314072) (not e!436047))))

(assert (=> b!692930 (= res!314072 (<= (- 1) (- (height!319 (left!6006 (c!121614 input!870))) (height!319 (right!6336 (c!121614 input!870))))))))

(declare-fun d!232842 () Bool)

(declare-fun res!314074 () Bool)

(assert (=> d!232842 (=> res!314074 e!436046)))

(assert (=> d!232842 (= res!314074 (not ((_ is Node!2651) (c!121614 input!870))))))

(assert (=> d!232842 (= (isBalanced!696 (c!121614 input!870)) e!436046)))

(declare-fun b!692931 () Bool)

(declare-fun res!314071 () Bool)

(assert (=> b!692931 (=> (not res!314071) (not e!436047))))

(assert (=> b!692931 (= res!314071 (not (isEmpty!4885 (left!6006 (c!121614 input!870)))))))

(assert (= (and d!232842 (not res!314074)) b!692930))

(assert (= (and b!692930 res!314072) b!692927))

(assert (= (and b!692927 res!314073) b!692926))

(assert (= (and b!692926 res!314075) b!692929))

(assert (= (and b!692929 res!314070) b!692931))

(assert (= (and b!692931 res!314071) b!692928))

(declare-fun m!949081 () Bool)

(assert (=> b!692929 m!949081))

(declare-fun m!949083 () Bool)

(assert (=> b!692926 m!949083))

(declare-fun m!949085 () Bool)

(assert (=> b!692927 m!949085))

(declare-fun m!949087 () Bool)

(assert (=> b!692927 m!949087))

(assert (=> b!692930 m!949085))

(assert (=> b!692930 m!949087))

(declare-fun m!949089 () Bool)

(assert (=> b!692928 m!949089))

(declare-fun m!949091 () Bool)

(assert (=> b!692931 m!949091))

(assert (=> d!232682 d!232842))

(declare-fun bs!137465 () Bool)

(declare-fun d!232844 () Bool)

(assert (= bs!137465 (and d!232844 d!232746)))

(declare-fun lambda!21564 () Int)

(assert (=> bs!137465 (= lambda!21564 lambda!21544)))

(declare-fun bs!137466 () Bool)

(assert (= bs!137466 (and d!232844 d!232726)))

(assert (=> bs!137466 (= lambda!21564 lambda!21542)))

(declare-fun bs!137467 () Bool)

(assert (= bs!137467 (and d!232844 d!232774)))

(assert (=> bs!137467 (= lambda!21564 lambda!21554)))

(declare-fun bs!137468 () Bool)

(assert (= bs!137468 (and d!232844 d!232798)))

(assert (=> bs!137468 (= lambda!21564 lambda!21556)))

(declare-fun bs!137469 () Bool)

(assert (= bs!137469 (and d!232844 d!232782)))

(assert (=> bs!137469 (= lambda!21564 lambda!21555)))

(declare-fun bs!137470 () Bool)

(assert (= bs!137470 (and d!232844 d!232722)))

(assert (=> bs!137470 (= lambda!21564 lambda!21541)))

(declare-fun bs!137471 () Bool)

(assert (= bs!137471 (and d!232844 d!232770)))

(assert (=> bs!137471 (= lambda!21564 lambda!21553)))

(declare-fun bs!137472 () Bool)

(assert (= bs!137472 (and d!232844 d!232768)))

(assert (=> bs!137472 (= lambda!21564 lambda!21552)))

(declare-fun bs!137473 () Bool)

(assert (= bs!137473 (and d!232844 d!232808)))

(assert (=> bs!137473 (= lambda!21564 lambda!21557)))

(declare-fun bs!137474 () Bool)

(assert (= bs!137474 (and d!232844 d!232728)))

(assert (=> bs!137474 (= lambda!21564 lambda!21543)))

(assert (=> d!232844 (= (inv!9640 (_1!4379 (_1!4380 (h!12919 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))) (forall!1957 (exprs!747 (_1!4379 (_1!4380 (h!12919 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))) lambda!21564))))

(declare-fun bs!137475 () Bool)

(assert (= bs!137475 d!232844))

(declare-fun m!949093 () Bool)

(assert (=> bs!137475 m!949093))

(assert (=> b!692513 d!232844))

(declare-fun d!232846 () Bool)

(assert (=> d!232846 (= (inv!9641 (xs!5302 (c!121614 input!870))) (<= (size!6146 (innerList!2709 (xs!5302 (c!121614 input!870)))) 2147483647))))

(declare-fun bs!137476 () Bool)

(assert (= bs!137476 d!232846))

(declare-fun m!949095 () Bool)

(assert (=> bs!137476 m!949095))

(assert (=> b!692525 d!232846))

(declare-fun d!232848 () Bool)

(declare-fun lt!285058 () Int)

(assert (=> d!232848 (>= lt!285058 0)))

(declare-fun e!436048 () Int)

(assert (=> d!232848 (= lt!285058 e!436048)))

(declare-fun c!121723 () Bool)

(assert (=> d!232848 (= c!121723 ((_ is Nil!7511) lt!284950))))

(assert (=> d!232848 (= (size!6146 lt!284950) lt!285058)))

(declare-fun b!692932 () Bool)

(assert (=> b!692932 (= e!436048 0)))

(declare-fun b!692933 () Bool)

(assert (=> b!692933 (= e!436048 (+ 1 (size!6146 (t!87343 lt!284950))))))

(assert (= (and d!232848 c!121723) b!692932))

(assert (= (and d!232848 (not c!121723)) b!692933))

(declare-fun m!949097 () Bool)

(assert (=> b!692933 m!949097))

(assert (=> b!692350 d!232848))

(declare-fun d!232850 () Bool)

(declare-fun lt!285059 () Int)

(assert (=> d!232850 (>= lt!285059 0)))

(declare-fun e!436049 () Int)

(assert (=> d!232850 (= lt!285059 e!436049)))

(declare-fun c!121724 () Bool)

(assert (=> d!232850 (= c!121724 ((_ is Nil!7511) lt!284934))))

(assert (=> d!232850 (= (size!6146 lt!284934) lt!285059)))

(declare-fun b!692934 () Bool)

(assert (=> b!692934 (= e!436049 0)))

(declare-fun b!692935 () Bool)

(assert (=> b!692935 (= e!436049 (+ 1 (size!6146 (t!87343 lt!284934))))))

(assert (= (and d!232850 c!121724) b!692934))

(assert (= (and d!232850 (not c!121724)) b!692935))

(declare-fun m!949099 () Bool)

(assert (=> b!692935 m!949099))

(assert (=> b!692350 d!232850))

(assert (=> b!692350 d!232818))

(declare-fun d!232852 () Bool)

(assert (=> d!232852 (= (inv!9641 (xs!5302 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) (<= (size!6146 (innerList!2709 (xs!5302 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) 2147483647))))

(declare-fun bs!137477 () Bool)

(assert (= bs!137477 d!232852))

(declare-fun m!949101 () Bool)

(assert (=> bs!137477 m!949101))

(assert (=> b!692554 d!232852))

(declare-fun d!232854 () Bool)

(declare-fun c!121725 () Bool)

(assert (=> d!232854 (= c!121725 ((_ is Empty!2651) (c!121614 totalInput!378)))))

(declare-fun e!436050 () List!7525)

(assert (=> d!232854 (= (list!3153 (c!121614 totalInput!378)) e!436050)))

(declare-fun b!692938 () Bool)

(declare-fun e!436051 () List!7525)

(assert (=> b!692938 (= e!436051 (list!3155 (xs!5302 (c!121614 totalInput!378))))))

(declare-fun b!692936 () Bool)

(assert (=> b!692936 (= e!436050 Nil!7511)))

(declare-fun b!692939 () Bool)

(assert (=> b!692939 (= e!436051 (++!1961 (list!3153 (left!6006 (c!121614 totalInput!378))) (list!3153 (right!6336 (c!121614 totalInput!378)))))))

(declare-fun b!692937 () Bool)

(assert (=> b!692937 (= e!436050 e!436051)))

(declare-fun c!121726 () Bool)

(assert (=> b!692937 (= c!121726 ((_ is Leaf!3927) (c!121614 totalInput!378)))))

(assert (= (and d!232854 c!121725) b!692936))

(assert (= (and d!232854 (not c!121725)) b!692937))

(assert (= (and b!692937 c!121726) b!692938))

(assert (= (and b!692937 (not c!121726)) b!692939))

(declare-fun m!949103 () Bool)

(assert (=> b!692938 m!949103))

(declare-fun m!949105 () Bool)

(assert (=> b!692939 m!949105))

(declare-fun m!949107 () Bool)

(assert (=> b!692939 m!949107))

(assert (=> b!692939 m!949105))

(assert (=> b!692939 m!949107))

(declare-fun m!949109 () Bool)

(assert (=> b!692939 m!949109))

(assert (=> d!232646 d!232854))

(declare-fun bs!137478 () Bool)

(declare-fun d!232856 () Bool)

(assert (= bs!137478 (and d!232856 d!232746)))

(declare-fun lambda!21565 () Int)

(assert (=> bs!137478 (= lambda!21565 lambda!21544)))

(declare-fun bs!137479 () Bool)

(assert (= bs!137479 (and d!232856 d!232726)))

(assert (=> bs!137479 (= lambda!21565 lambda!21542)))

(declare-fun bs!137480 () Bool)

(assert (= bs!137480 (and d!232856 d!232774)))

(assert (=> bs!137480 (= lambda!21565 lambda!21554)))

(declare-fun bs!137481 () Bool)

(assert (= bs!137481 (and d!232856 d!232798)))

(assert (=> bs!137481 (= lambda!21565 lambda!21556)))

(declare-fun bs!137482 () Bool)

(assert (= bs!137482 (and d!232856 d!232782)))

(assert (=> bs!137482 (= lambda!21565 lambda!21555)))

(declare-fun bs!137483 () Bool)

(assert (= bs!137483 (and d!232856 d!232722)))

(assert (=> bs!137483 (= lambda!21565 lambda!21541)))

(declare-fun bs!137484 () Bool)

(assert (= bs!137484 (and d!232856 d!232770)))

(assert (=> bs!137484 (= lambda!21565 lambda!21553)))

(declare-fun bs!137485 () Bool)

(assert (= bs!137485 (and d!232856 d!232844)))

(assert (=> bs!137485 (= lambda!21565 lambda!21564)))

(declare-fun bs!137486 () Bool)

(assert (= bs!137486 (and d!232856 d!232768)))

(assert (=> bs!137486 (= lambda!21565 lambda!21552)))

(declare-fun bs!137487 () Bool)

(assert (= bs!137487 (and d!232856 d!232808)))

(assert (=> bs!137487 (= lambda!21565 lambda!21557)))

(declare-fun bs!137488 () Bool)

(assert (= bs!137488 (and d!232856 d!232728)))

(assert (=> bs!137488 (= lambda!21565 lambda!21543)))

(assert (=> d!232856 (= (inv!9640 setElem!3818) (forall!1957 (exprs!747 setElem!3818) lambda!21565))))

(declare-fun bs!137489 () Bool)

(assert (= bs!137489 d!232856))

(declare-fun m!949111 () Bool)

(assert (=> bs!137489 m!949111))

(assert (=> setNonEmpty!3818 d!232856))

(declare-fun bs!137490 () Bool)

(declare-fun d!232858 () Bool)

(assert (= bs!137490 (and d!232858 d!232746)))

(declare-fun lambda!21566 () Int)

(assert (=> bs!137490 (= lambda!21566 lambda!21544)))

(declare-fun bs!137491 () Bool)

(assert (= bs!137491 (and d!232858 d!232774)))

(assert (=> bs!137491 (= lambda!21566 lambda!21554)))

(declare-fun bs!137492 () Bool)

(assert (= bs!137492 (and d!232858 d!232798)))

(assert (=> bs!137492 (= lambda!21566 lambda!21556)))

(declare-fun bs!137493 () Bool)

(assert (= bs!137493 (and d!232858 d!232782)))

(assert (=> bs!137493 (= lambda!21566 lambda!21555)))

(declare-fun bs!137494 () Bool)

(assert (= bs!137494 (and d!232858 d!232722)))

(assert (=> bs!137494 (= lambda!21566 lambda!21541)))

(declare-fun bs!137495 () Bool)

(assert (= bs!137495 (and d!232858 d!232770)))

(assert (=> bs!137495 (= lambda!21566 lambda!21553)))

(declare-fun bs!137496 () Bool)

(assert (= bs!137496 (and d!232858 d!232844)))

(assert (=> bs!137496 (= lambda!21566 lambda!21564)))

(declare-fun bs!137497 () Bool)

(assert (= bs!137497 (and d!232858 d!232768)))

(assert (=> bs!137497 (= lambda!21566 lambda!21552)))

(declare-fun bs!137498 () Bool)

(assert (= bs!137498 (and d!232858 d!232808)))

(assert (=> bs!137498 (= lambda!21566 lambda!21557)))

(declare-fun bs!137499 () Bool)

(assert (= bs!137499 (and d!232858 d!232728)))

(assert (=> bs!137499 (= lambda!21566 lambda!21543)))

(declare-fun bs!137500 () Bool)

(assert (= bs!137500 (and d!232858 d!232726)))

(assert (=> bs!137500 (= lambda!21566 lambda!21542)))

(declare-fun bs!137501 () Bool)

(assert (= bs!137501 (and d!232858 d!232856)))

(assert (=> bs!137501 (= lambda!21566 lambda!21565)))

(assert (=> d!232858 (= (inv!9640 (_2!4377 (_1!4378 (h!12918 mapDefault!3133)))) (forall!1957 (exprs!747 (_2!4377 (_1!4378 (h!12918 mapDefault!3133)))) lambda!21566))))

(declare-fun bs!137502 () Bool)

(assert (= bs!137502 d!232858))

(declare-fun m!949113 () Bool)

(assert (=> bs!137502 m!949113))

(assert (=> b!692488 d!232858))

(declare-fun d!232860 () Bool)

(assert (=> d!232860 (= (inv!9641 (xs!5302 (c!121614 treated!50))) (<= (size!6146 (innerList!2709 (xs!5302 (c!121614 treated!50)))) 2147483647))))

(declare-fun bs!137503 () Bool)

(assert (= bs!137503 d!232860))

(declare-fun m!949115 () Bool)

(assert (=> bs!137503 m!949115))

(assert (=> b!692582 d!232860))

(declare-fun bs!137504 () Bool)

(declare-fun d!232862 () Bool)

(assert (= bs!137504 (and d!232862 d!232662)))

(declare-fun lambda!21569 () Int)

(assert (=> bs!137504 (= lambda!21569 lambda!21538)))

(declare-fun bs!137505 () Bool)

(assert (= bs!137505 (and d!232862 d!232764)))

(assert (=> bs!137505 (= lambda!21569 lambda!21551)))

(assert (=> d!232862 true))

(declare-fun lt!285062 () Bool)

(assert (=> d!232862 (= lt!285062 (rulesValidInductive!520 thiss!12529 rules!1486))))

(assert (=> d!232862 (= lt!285062 (forall!1956 rules!1486 lambda!21569))))

(assert (=> d!232862 (= (rulesValid!528 thiss!12529 rules!1486) lt!285062)))

(declare-fun bs!137506 () Bool)

(assert (= bs!137506 d!232862))

(assert (=> bs!137506 m!948328))

(declare-fun m!949117 () Bool)

(assert (=> bs!137506 m!949117))

(assert (=> d!232640 d!232862))

(declare-fun d!232864 () Bool)

(declare-fun c!121727 () Bool)

(assert (=> d!232864 (= c!121727 ((_ is Node!2651) (left!6006 (c!121614 totalInput!378))))))

(declare-fun e!436052 () Bool)

(assert (=> d!232864 (= (inv!9629 (left!6006 (c!121614 totalInput!378))) e!436052)))

(declare-fun b!692940 () Bool)

(assert (=> b!692940 (= e!436052 (inv!9638 (left!6006 (c!121614 totalInput!378))))))

(declare-fun b!692941 () Bool)

(declare-fun e!436053 () Bool)

(assert (=> b!692941 (= e!436052 e!436053)))

(declare-fun res!314076 () Bool)

(assert (=> b!692941 (= res!314076 (not ((_ is Leaf!3927) (left!6006 (c!121614 totalInput!378)))))))

(assert (=> b!692941 (=> res!314076 e!436053)))

(declare-fun b!692942 () Bool)

(assert (=> b!692942 (= e!436053 (inv!9639 (left!6006 (c!121614 totalInput!378))))))

(assert (= (and d!232864 c!121727) b!692940))

(assert (= (and d!232864 (not c!121727)) b!692941))

(assert (= (and b!692941 (not res!314076)) b!692942))

(declare-fun m!949119 () Bool)

(assert (=> b!692940 m!949119))

(declare-fun m!949121 () Bool)

(assert (=> b!692942 m!949121))

(assert (=> b!692452 d!232864))

(declare-fun d!232866 () Bool)

(declare-fun c!121728 () Bool)

(assert (=> d!232866 (= c!121728 ((_ is Node!2651) (right!6336 (c!121614 totalInput!378))))))

(declare-fun e!436054 () Bool)

(assert (=> d!232866 (= (inv!9629 (right!6336 (c!121614 totalInput!378))) e!436054)))

(declare-fun b!692943 () Bool)

(assert (=> b!692943 (= e!436054 (inv!9638 (right!6336 (c!121614 totalInput!378))))))

(declare-fun b!692944 () Bool)

(declare-fun e!436055 () Bool)

(assert (=> b!692944 (= e!436054 e!436055)))

(declare-fun res!314077 () Bool)

(assert (=> b!692944 (= res!314077 (not ((_ is Leaf!3927) (right!6336 (c!121614 totalInput!378)))))))

(assert (=> b!692944 (=> res!314077 e!436055)))

(declare-fun b!692945 () Bool)

(assert (=> b!692945 (= e!436055 (inv!9639 (right!6336 (c!121614 totalInput!378))))))

(assert (= (and d!232866 c!121728) b!692943))

(assert (= (and d!232866 (not c!121728)) b!692944))

(assert (= (and b!692944 (not res!314077)) b!692945))

(declare-fun m!949123 () Bool)

(assert (=> b!692943 m!949123))

(declare-fun m!949125 () Bool)

(assert (=> b!692945 m!949125))

(assert (=> b!692452 d!232866))

(declare-fun d!232868 () Bool)

(assert (=> d!232868 (= (list!3152 (_2!4376 lt!284946)) (list!3153 (c!121614 (_2!4376 lt!284946))))))

(declare-fun bs!137507 () Bool)

(assert (= bs!137507 d!232868))

(declare-fun m!949127 () Bool)

(assert (=> bs!137507 m!949127))

(assert (=> b!692323 d!232868))

(declare-fun b!692946 () Bool)

(declare-fun e!436056 () tuple2!7926)

(declare-fun lt!285063 () Option!1708)

(declare-fun lt!285064 () tuple2!7926)

(assert (=> b!692946 (= e!436056 (tuple2!7927 (Cons!7515 (_1!4383 (v!17681 lt!285063)) (_1!4382 lt!285064)) (_2!4382 lt!285064)))))

(assert (=> b!692946 (= lt!285064 (lexList!323 thiss!12529 rules!1486 (_2!4383 (v!17681 lt!285063))))))

(declare-fun b!692947 () Bool)

(assert (=> b!692947 (= e!436056 (tuple2!7927 Nil!7515 (list!3152 treated!50)))))

(declare-fun d!232870 () Bool)

(declare-fun e!436058 () Bool)

(assert (=> d!232870 e!436058))

(declare-fun c!121730 () Bool)

(declare-fun lt!285065 () tuple2!7926)

(assert (=> d!232870 (= c!121730 (> (size!6147 (_1!4382 lt!285065)) 0))))

(assert (=> d!232870 (= lt!285065 e!436056)))

(declare-fun c!121729 () Bool)

(assert (=> d!232870 (= c!121729 ((_ is Some!1707) lt!285063))))

(assert (=> d!232870 (= lt!285063 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 treated!50)))))

(assert (=> d!232870 (= (lexList!323 thiss!12529 rules!1486 (list!3152 treated!50)) lt!285065)))

(declare-fun b!692948 () Bool)

(declare-fun e!436057 () Bool)

(assert (=> b!692948 (= e!436058 e!436057)))

(declare-fun res!314078 () Bool)

(assert (=> b!692948 (= res!314078 (< (size!6146 (_2!4382 lt!285065)) (size!6146 (list!3152 treated!50))))))

(assert (=> b!692948 (=> (not res!314078) (not e!436057))))

(declare-fun b!692949 () Bool)

(assert (=> b!692949 (= e!436058 (= (_2!4382 lt!285065) (list!3152 treated!50)))))

(declare-fun b!692950 () Bool)

(assert (=> b!692950 (= e!436057 (not (isEmpty!4884 (_1!4382 lt!285065))))))

(assert (= (and d!232870 c!121729) b!692946))

(assert (= (and d!232870 (not c!121729)) b!692947))

(assert (= (and d!232870 c!121730) b!692948))

(assert (= (and d!232870 (not c!121730)) b!692949))

(assert (= (and b!692948 res!314078) b!692950))

(declare-fun m!949129 () Bool)

(assert (=> b!692946 m!949129))

(declare-fun m!949131 () Bool)

(assert (=> d!232870 m!949131))

(assert (=> d!232870 m!948326))

(assert (=> d!232870 m!948804))

(declare-fun m!949133 () Bool)

(assert (=> b!692948 m!949133))

(assert (=> b!692948 m!948326))

(assert (=> b!692948 m!948790))

(declare-fun m!949135 () Bool)

(assert (=> b!692950 m!949135))

(assert (=> b!692323 d!232870))

(assert (=> b!692323 d!232650))

(assert (=> b!692406 d!232826))

(declare-fun d!232872 () Bool)

(assert (=> d!232872 true))

(declare-fun order!5363 () Int)

(declare-fun lambda!21572 () Int)

(declare-fun dynLambda!3889 (Int Int) Int)

(assert (=> d!232872 (< (dynLambda!3888 order!5361 (toValue!2468 (transformation!1506 (h!12917 rules!1486)))) (dynLambda!3889 order!5363 lambda!21572))))

(declare-fun Forall2!275 (Int) Bool)

(assert (=> d!232872 (= (equivClasses!546 (toChars!2327 (transformation!1506 (h!12917 rules!1486))) (toValue!2468 (transformation!1506 (h!12917 rules!1486)))) (Forall2!275 lambda!21572))))

(declare-fun bs!137508 () Bool)

(assert (= bs!137508 d!232872))

(declare-fun m!949137 () Bool)

(assert (=> bs!137508 m!949137))

(assert (=> b!692363 d!232872))

(declare-fun d!232874 () Bool)

(declare-fun e!436061 () Bool)

(assert (=> d!232874 e!436061))

(declare-fun res!314081 () Bool)

(assert (=> d!232874 (=> (not res!314081) (not e!436061))))

(assert (=> d!232874 (= res!314081 (isBalanced!697 (prepend!259 (c!121615 (_1!4376 lt!284960)) (_1!4381 (v!17679 lt!284962)))))))

(declare-fun lt!285066 () BalanceConc!5316)

(assert (=> d!232874 (= lt!285066 (BalanceConc!5317 (prepend!259 (c!121615 (_1!4376 lt!284960)) (_1!4381 (v!17679 lt!284962)))))))

(assert (=> d!232874 (= (prepend!258 (_1!4376 lt!284960) (_1!4381 (v!17679 lt!284962))) lt!285066)))

(declare-fun b!692955 () Bool)

(assert (=> b!692955 (= e!436061 (= (list!3151 lt!285066) (Cons!7515 (_1!4381 (v!17679 lt!284962)) (list!3151 (_1!4376 lt!284960)))))))

(assert (= (and d!232874 res!314081) b!692955))

(declare-fun m!949139 () Bool)

(assert (=> d!232874 m!949139))

(assert (=> d!232874 m!949139))

(declare-fun m!949141 () Bool)

(assert (=> d!232874 m!949141))

(declare-fun m!949143 () Bool)

(assert (=> b!692955 m!949143))

(declare-fun m!949145 () Bool)

(assert (=> b!692955 m!949145))

(assert (=> b!692397 d!232874))

(declare-fun b!692956 () Bool)

(declare-fun e!436062 () tuple2!7916)

(assert (=> b!692956 (= e!436062 (tuple2!7917 (BalanceConc!5317 Empty!2652) (_2!4381 (v!17679 lt!284962))))))

(declare-fun b!692957 () Bool)

(declare-fun e!436065 () Bool)

(declare-fun lt!285068 () tuple2!7916)

(assert (=> b!692957 (= e!436065 (= (list!3152 (_2!4376 lt!285068)) (list!3152 (_2!4381 (v!17679 lt!284962)))))))

(declare-fun b!692959 () Bool)

(declare-fun lt!285067 () tuple2!7916)

(declare-fun lt!285069 () Option!1707)

(assert (=> b!692959 (= e!436062 (tuple2!7917 (prepend!258 (_1!4376 lt!285067) (_1!4381 (v!17679 lt!285069))) (_2!4376 lt!285067)))))

(assert (=> b!692959 (= lt!285067 (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!285069))))))

(declare-fun b!692960 () Bool)

(declare-fun e!436064 () Bool)

(assert (=> b!692960 (= e!436065 e!436064)))

(declare-fun res!314084 () Bool)

(assert (=> b!692960 (= res!314084 (< (size!6144 (_2!4376 lt!285068)) (size!6144 (_2!4381 (v!17679 lt!284962)))))))

(assert (=> b!692960 (=> (not res!314084) (not e!436064))))

(declare-fun b!692961 () Bool)

(declare-fun res!314083 () Bool)

(declare-fun e!436063 () Bool)

(assert (=> b!692961 (=> (not res!314083) (not e!436063))))

(assert (=> b!692961 (= res!314083 (= (list!3151 (_1!4376 lt!285068)) (_1!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 (_2!4381 (v!17679 lt!284962)))))))))

(declare-fun b!692962 () Bool)

(assert (=> b!692962 (= e!436064 (not (isEmpty!4882 (_1!4376 lt!285068))))))

(declare-fun b!692958 () Bool)

(assert (=> b!692958 (= e!436063 (= (list!3152 (_2!4376 lt!285068)) (_2!4382 (lexList!323 thiss!12529 rules!1486 (list!3152 (_2!4381 (v!17679 lt!284962)))))))))

(declare-fun d!232876 () Bool)

(assert (=> d!232876 e!436063))

(declare-fun res!314082 () Bool)

(assert (=> d!232876 (=> (not res!314082) (not e!436063))))

(assert (=> d!232876 (= res!314082 e!436065)))

(declare-fun c!121732 () Bool)

(assert (=> d!232876 (= c!121732 (> (size!6145 (_1!4376 lt!285068)) 0))))

(assert (=> d!232876 (= lt!285068 e!436062)))

(declare-fun c!121731 () Bool)

(assert (=> d!232876 (= c!121731 ((_ is Some!1706) lt!285069))))

(assert (=> d!232876 (= lt!285069 (maxPrefixZipperSequence!457 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284962))))))

(assert (=> d!232876 (= (lexRec!163 thiss!12529 rules!1486 (_2!4381 (v!17679 lt!284962))) lt!285068)))

(assert (= (and d!232876 c!121731) b!692959))

(assert (= (and d!232876 (not c!121731)) b!692956))

(assert (= (and d!232876 c!121732) b!692960))

(assert (= (and d!232876 (not c!121732)) b!692957))

(assert (= (and b!692960 res!314084) b!692962))

(assert (= (and d!232876 res!314082) b!692961))

(assert (= (and b!692961 res!314083) b!692958))

(declare-fun m!949147 () Bool)

(assert (=> d!232876 m!949147))

(declare-fun m!949149 () Bool)

(assert (=> d!232876 m!949149))

(declare-fun m!949151 () Bool)

(assert (=> b!692961 m!949151))

(declare-fun m!949153 () Bool)

(assert (=> b!692961 m!949153))

(assert (=> b!692961 m!949153))

(declare-fun m!949155 () Bool)

(assert (=> b!692961 m!949155))

(declare-fun m!949157 () Bool)

(assert (=> b!692962 m!949157))

(declare-fun m!949159 () Bool)

(assert (=> b!692959 m!949159))

(declare-fun m!949161 () Bool)

(assert (=> b!692959 m!949161))

(declare-fun m!949163 () Bool)

(assert (=> b!692958 m!949163))

(assert (=> b!692958 m!949153))

(assert (=> b!692958 m!949153))

(assert (=> b!692958 m!949155))

(declare-fun m!949165 () Bool)

(assert (=> b!692960 m!949165))

(declare-fun m!949167 () Bool)

(assert (=> b!692960 m!949167))

(assert (=> b!692957 m!949163))

(assert (=> b!692957 m!949153))

(assert (=> b!692397 d!232876))

(declare-fun bs!137509 () Bool)

(declare-fun d!232878 () Bool)

(assert (= bs!137509 (and d!232878 d!232746)))

(declare-fun lambda!21573 () Int)

(assert (=> bs!137509 (= lambda!21573 lambda!21544)))

(declare-fun bs!137510 () Bool)

(assert (= bs!137510 (and d!232878 d!232774)))

(assert (=> bs!137510 (= lambda!21573 lambda!21554)))

(declare-fun bs!137511 () Bool)

(assert (= bs!137511 (and d!232878 d!232798)))

(assert (=> bs!137511 (= lambda!21573 lambda!21556)))

(declare-fun bs!137512 () Bool)

(assert (= bs!137512 (and d!232878 d!232782)))

(assert (=> bs!137512 (= lambda!21573 lambda!21555)))

(declare-fun bs!137513 () Bool)

(assert (= bs!137513 (and d!232878 d!232770)))

(assert (=> bs!137513 (= lambda!21573 lambda!21553)))

(declare-fun bs!137514 () Bool)

(assert (= bs!137514 (and d!232878 d!232844)))

(assert (=> bs!137514 (= lambda!21573 lambda!21564)))

(declare-fun bs!137515 () Bool)

(assert (= bs!137515 (and d!232878 d!232768)))

(assert (=> bs!137515 (= lambda!21573 lambda!21552)))

(declare-fun bs!137516 () Bool)

(assert (= bs!137516 (and d!232878 d!232808)))

(assert (=> bs!137516 (= lambda!21573 lambda!21557)))

(declare-fun bs!137517 () Bool)

(assert (= bs!137517 (and d!232878 d!232728)))

(assert (=> bs!137517 (= lambda!21573 lambda!21543)))

(declare-fun bs!137518 () Bool)

(assert (= bs!137518 (and d!232878 d!232726)))

(assert (=> bs!137518 (= lambda!21573 lambda!21542)))

(declare-fun bs!137519 () Bool)

(assert (= bs!137519 (and d!232878 d!232856)))

(assert (=> bs!137519 (= lambda!21573 lambda!21565)))

(declare-fun bs!137520 () Bool)

(assert (= bs!137520 (and d!232878 d!232858)))

(assert (=> bs!137520 (= lambda!21573 lambda!21566)))

(declare-fun bs!137521 () Bool)

(assert (= bs!137521 (and d!232878 d!232722)))

(assert (=> bs!137521 (= lambda!21573 lambda!21541)))

(assert (=> d!232878 (= (inv!9640 setElem!3807) (forall!1957 (exprs!747 setElem!3807) lambda!21573))))

(declare-fun bs!137522 () Bool)

(assert (= bs!137522 d!232878))

(declare-fun m!949169 () Bool)

(assert (=> bs!137522 m!949169))

(assert (=> setNonEmpty!3807 d!232878))

(declare-fun bs!137523 () Bool)

(declare-fun d!232880 () Bool)

(assert (= bs!137523 (and d!232880 d!232746)))

(declare-fun lambda!21574 () Int)

(assert (=> bs!137523 (= lambda!21574 lambda!21544)))

(declare-fun bs!137524 () Bool)

(assert (= bs!137524 (and d!232880 d!232878)))

(assert (=> bs!137524 (= lambda!21574 lambda!21573)))

(declare-fun bs!137525 () Bool)

(assert (= bs!137525 (and d!232880 d!232774)))

(assert (=> bs!137525 (= lambda!21574 lambda!21554)))

(declare-fun bs!137526 () Bool)

(assert (= bs!137526 (and d!232880 d!232798)))

(assert (=> bs!137526 (= lambda!21574 lambda!21556)))

(declare-fun bs!137527 () Bool)

(assert (= bs!137527 (and d!232880 d!232782)))

(assert (=> bs!137527 (= lambda!21574 lambda!21555)))

(declare-fun bs!137528 () Bool)

(assert (= bs!137528 (and d!232880 d!232770)))

(assert (=> bs!137528 (= lambda!21574 lambda!21553)))

(declare-fun bs!137529 () Bool)

(assert (= bs!137529 (and d!232880 d!232844)))

(assert (=> bs!137529 (= lambda!21574 lambda!21564)))

(declare-fun bs!137530 () Bool)

(assert (= bs!137530 (and d!232880 d!232768)))

(assert (=> bs!137530 (= lambda!21574 lambda!21552)))

(declare-fun bs!137531 () Bool)

(assert (= bs!137531 (and d!232880 d!232808)))

(assert (=> bs!137531 (= lambda!21574 lambda!21557)))

(declare-fun bs!137532 () Bool)

(assert (= bs!137532 (and d!232880 d!232728)))

(assert (=> bs!137532 (= lambda!21574 lambda!21543)))

(declare-fun bs!137533 () Bool)

(assert (= bs!137533 (and d!232880 d!232726)))

(assert (=> bs!137533 (= lambda!21574 lambda!21542)))

(declare-fun bs!137534 () Bool)

(assert (= bs!137534 (and d!232880 d!232856)))

(assert (=> bs!137534 (= lambda!21574 lambda!21565)))

(declare-fun bs!137535 () Bool)

(assert (= bs!137535 (and d!232880 d!232858)))

(assert (=> bs!137535 (= lambda!21574 lambda!21566)))

(declare-fun bs!137536 () Bool)

(assert (= bs!137536 (and d!232880 d!232722)))

(assert (=> bs!137536 (= lambda!21574 lambda!21541)))

(assert (=> d!232880 (= (inv!9640 (_1!4379 (_1!4380 (h!12919 mapValue!3136)))) (forall!1957 (exprs!747 (_1!4379 (_1!4380 (h!12919 mapValue!3136)))) lambda!21574))))

(declare-fun bs!137537 () Bool)

(assert (= bs!137537 d!232880))

(declare-fun m!949171 () Bool)

(assert (=> bs!137537 m!949171))

(assert (=> b!692549 d!232880))

(declare-fun b!692963 () Bool)

(declare-fun res!314090 () Bool)

(declare-fun e!436067 () Bool)

(assert (=> b!692963 (=> (not res!314090) (not e!436067))))

(assert (=> b!692963 (= res!314090 (isBalanced!696 (left!6006 (c!121614 totalInput!378))))))

(declare-fun b!692964 () Bool)

(declare-fun res!314088 () Bool)

(assert (=> b!692964 (=> (not res!314088) (not e!436067))))

(assert (=> b!692964 (= res!314088 (<= (- (height!319 (left!6006 (c!121614 totalInput!378))) (height!319 (right!6336 (c!121614 totalInput!378)))) 1))))

(declare-fun b!692965 () Bool)

(assert (=> b!692965 (= e!436067 (not (isEmpty!4885 (right!6336 (c!121614 totalInput!378)))))))

(declare-fun b!692966 () Bool)

(declare-fun res!314085 () Bool)

(assert (=> b!692966 (=> (not res!314085) (not e!436067))))

(assert (=> b!692966 (= res!314085 (isBalanced!696 (right!6336 (c!121614 totalInput!378))))))

(declare-fun b!692967 () Bool)

(declare-fun e!436066 () Bool)

(assert (=> b!692967 (= e!436066 e!436067)))

(declare-fun res!314087 () Bool)

(assert (=> b!692967 (=> (not res!314087) (not e!436067))))

(assert (=> b!692967 (= res!314087 (<= (- 1) (- (height!319 (left!6006 (c!121614 totalInput!378))) (height!319 (right!6336 (c!121614 totalInput!378))))))))

(declare-fun d!232882 () Bool)

(declare-fun res!314089 () Bool)

(assert (=> d!232882 (=> res!314089 e!436066)))

(assert (=> d!232882 (= res!314089 (not ((_ is Node!2651) (c!121614 totalInput!378))))))

(assert (=> d!232882 (= (isBalanced!696 (c!121614 totalInput!378)) e!436066)))

(declare-fun b!692968 () Bool)

(declare-fun res!314086 () Bool)

(assert (=> b!692968 (=> (not res!314086) (not e!436067))))

(assert (=> b!692968 (= res!314086 (not (isEmpty!4885 (left!6006 (c!121614 totalInput!378)))))))

(assert (= (and d!232882 (not res!314089)) b!692967))

(assert (= (and b!692967 res!314087) b!692964))

(assert (= (and b!692964 res!314088) b!692963))

(assert (= (and b!692963 res!314090) b!692966))

(assert (= (and b!692966 res!314085) b!692968))

(assert (= (and b!692968 res!314086) b!692965))

(declare-fun m!949173 () Bool)

(assert (=> b!692966 m!949173))

(declare-fun m!949175 () Bool)

(assert (=> b!692963 m!949175))

(assert (=> b!692964 m!948836))

(assert (=> b!692964 m!948838))

(assert (=> b!692967 m!948836))

(assert (=> b!692967 m!948838))

(declare-fun m!949177 () Bool)

(assert (=> b!692965 m!949177))

(declare-fun m!949179 () Bool)

(assert (=> b!692968 m!949179))

(assert (=> d!232690 d!232882))

(declare-fun d!232884 () Bool)

(declare-fun lt!285072 () Bool)

(assert (=> d!232884 (= lt!285072 (isEmpty!4884 (list!3151 (_1!4376 lt!284946))))))

(assert (=> d!232884 (= lt!285072 (isEmpty!4883 (c!121615 (_1!4376 lt!284946))))))

(assert (=> d!232884 (= (isEmpty!4882 (_1!4376 lt!284946)) lt!285072)))

(declare-fun bs!137538 () Bool)

(assert (= bs!137538 d!232884))

(assert (=> bs!137538 m!948390))

(assert (=> bs!137538 m!948390))

(declare-fun m!949181 () Bool)

(assert (=> bs!137538 m!949181))

(declare-fun m!949183 () Bool)

(assert (=> bs!137538 m!949183))

(assert (=> b!692327 d!232884))

(declare-fun bs!137539 () Bool)

(declare-fun d!232886 () Bool)

(assert (= bs!137539 (and d!232886 d!232746)))

(declare-fun lambda!21575 () Int)

(assert (=> bs!137539 (= lambda!21575 lambda!21544)))

(declare-fun bs!137540 () Bool)

(assert (= bs!137540 (and d!232886 d!232878)))

(assert (=> bs!137540 (= lambda!21575 lambda!21573)))

(declare-fun bs!137541 () Bool)

(assert (= bs!137541 (and d!232886 d!232774)))

(assert (=> bs!137541 (= lambda!21575 lambda!21554)))

(declare-fun bs!137542 () Bool)

(assert (= bs!137542 (and d!232886 d!232798)))

(assert (=> bs!137542 (= lambda!21575 lambda!21556)))

(declare-fun bs!137543 () Bool)

(assert (= bs!137543 (and d!232886 d!232782)))

(assert (=> bs!137543 (= lambda!21575 lambda!21555)))

(declare-fun bs!137544 () Bool)

(assert (= bs!137544 (and d!232886 d!232770)))

(assert (=> bs!137544 (= lambda!21575 lambda!21553)))

(declare-fun bs!137545 () Bool)

(assert (= bs!137545 (and d!232886 d!232844)))

(assert (=> bs!137545 (= lambda!21575 lambda!21564)))

(declare-fun bs!137546 () Bool)

(assert (= bs!137546 (and d!232886 d!232768)))

(assert (=> bs!137546 (= lambda!21575 lambda!21552)))

(declare-fun bs!137547 () Bool)

(assert (= bs!137547 (and d!232886 d!232808)))

(assert (=> bs!137547 (= lambda!21575 lambda!21557)))

(declare-fun bs!137548 () Bool)

(assert (= bs!137548 (and d!232886 d!232728)))

(assert (=> bs!137548 (= lambda!21575 lambda!21543)))

(declare-fun bs!137549 () Bool)

(assert (= bs!137549 (and d!232886 d!232880)))

(assert (=> bs!137549 (= lambda!21575 lambda!21574)))

(declare-fun bs!137550 () Bool)

(assert (= bs!137550 (and d!232886 d!232726)))

(assert (=> bs!137550 (= lambda!21575 lambda!21542)))

(declare-fun bs!137551 () Bool)

(assert (= bs!137551 (and d!232886 d!232856)))

(assert (=> bs!137551 (= lambda!21575 lambda!21565)))

(declare-fun bs!137552 () Bool)

(assert (= bs!137552 (and d!232886 d!232858)))

(assert (=> bs!137552 (= lambda!21575 lambda!21566)))

(declare-fun bs!137553 () Bool)

(assert (= bs!137553 (and d!232886 d!232722)))

(assert (=> bs!137553 (= lambda!21575 lambda!21541)))

(assert (=> d!232886 (= (inv!9640 setElem!3832) (forall!1957 (exprs!747 setElem!3832) lambda!21575))))

(declare-fun bs!137554 () Bool)

(assert (= bs!137554 d!232886))

(declare-fun m!949185 () Bool)

(assert (=> bs!137554 m!949185))

(assert (=> setNonEmpty!3832 d!232886))

(assert (=> d!232652 d!232750))

(declare-fun b!692971 () Bool)

(declare-fun e!436069 () List!7529)

(assert (=> b!692971 (= e!436069 (list!3156 (xs!5303 (c!121615 (++!1960 acc!372 (_1!4376 lt!284936))))))))

(declare-fun b!692969 () Bool)

(declare-fun e!436068 () List!7529)

(assert (=> b!692969 (= e!436068 Nil!7515)))

(declare-fun d!232888 () Bool)

(declare-fun c!121733 () Bool)

(assert (=> d!232888 (= c!121733 ((_ is Empty!2652) (c!121615 (++!1960 acc!372 (_1!4376 lt!284936)))))))

(assert (=> d!232888 (= (list!3154 (c!121615 (++!1960 acc!372 (_1!4376 lt!284936)))) e!436068)))

(declare-fun b!692972 () Bool)

(assert (=> b!692972 (= e!436069 (++!1962 (list!3154 (left!6007 (c!121615 (++!1960 acc!372 (_1!4376 lt!284936))))) (list!3154 (right!6337 (c!121615 (++!1960 acc!372 (_1!4376 lt!284936)))))))))

(declare-fun b!692970 () Bool)

(assert (=> b!692970 (= e!436068 e!436069)))

(declare-fun c!121734 () Bool)

(assert (=> b!692970 (= c!121734 ((_ is Leaf!3928) (c!121615 (++!1960 acc!372 (_1!4376 lt!284936)))))))

(assert (= (and d!232888 c!121733) b!692969))

(assert (= (and d!232888 (not c!121733)) b!692970))

(assert (= (and b!692970 c!121734) b!692971))

(assert (= (and b!692970 (not c!121734)) b!692972))

(declare-fun m!949187 () Bool)

(assert (=> b!692971 m!949187))

(declare-fun m!949189 () Bool)

(assert (=> b!692972 m!949189))

(declare-fun m!949191 () Bool)

(assert (=> b!692972 m!949191))

(assert (=> b!692972 m!949189))

(assert (=> b!692972 m!949191))

(declare-fun m!949193 () Bool)

(assert (=> b!692972 m!949193))

(assert (=> d!232672 d!232888))

(declare-fun d!232890 () Bool)

(assert (=> d!232890 (= (list!3151 lt!284959) (list!3154 (c!121615 lt!284959)))))

(declare-fun bs!137555 () Bool)

(assert (= bs!137555 d!232890))

(declare-fun m!949195 () Bool)

(assert (=> bs!137555 m!949195))

(assert (=> b!692393 d!232890))

(declare-fun lt!285075 () List!7529)

(declare-fun e!436075 () Bool)

(declare-fun b!692984 () Bool)

(assert (=> b!692984 (= e!436075 (or (not (= (list!3151 (_1!4376 lt!284936)) Nil!7515)) (= lt!285075 (list!3151 acc!372))))))

(declare-fun b!692981 () Bool)

(declare-fun e!436074 () List!7529)

(assert (=> b!692981 (= e!436074 (list!3151 (_1!4376 lt!284936)))))

(declare-fun b!692983 () Bool)

(declare-fun res!314095 () Bool)

(assert (=> b!692983 (=> (not res!314095) (not e!436075))))

(assert (=> b!692983 (= res!314095 (= (size!6147 lt!285075) (+ (size!6147 (list!3151 acc!372)) (size!6147 (list!3151 (_1!4376 lt!284936))))))))

(declare-fun d!232892 () Bool)

(assert (=> d!232892 e!436075))

(declare-fun res!314096 () Bool)

(assert (=> d!232892 (=> (not res!314096) (not e!436075))))

(declare-fun content!1187 (List!7529) (InoxSet Token!2712))

(assert (=> d!232892 (= res!314096 (= (content!1187 lt!285075) ((_ map or) (content!1187 (list!3151 acc!372)) (content!1187 (list!3151 (_1!4376 lt!284936))))))))

(assert (=> d!232892 (= lt!285075 e!436074)))

(declare-fun c!121737 () Bool)

(assert (=> d!232892 (= c!121737 ((_ is Nil!7515) (list!3151 acc!372)))))

(assert (=> d!232892 (= (++!1962 (list!3151 acc!372) (list!3151 (_1!4376 lt!284936))) lt!285075)))

(declare-fun b!692982 () Bool)

(assert (=> b!692982 (= e!436074 (Cons!7515 (h!12916 (list!3151 acc!372)) (++!1962 (t!87347 (list!3151 acc!372)) (list!3151 (_1!4376 lt!284936)))))))

(assert (= (and d!232892 c!121737) b!692981))

(assert (= (and d!232892 (not c!121737)) b!692982))

(assert (= (and d!232892 res!314096) b!692983))

(assert (= (and b!692983 res!314095) b!692984))

(declare-fun m!949197 () Bool)

(assert (=> b!692983 m!949197))

(assert (=> b!692983 m!948296))

(declare-fun m!949199 () Bool)

(assert (=> b!692983 m!949199))

(assert (=> b!692983 m!948492))

(declare-fun m!949201 () Bool)

(assert (=> b!692983 m!949201))

(declare-fun m!949203 () Bool)

(assert (=> d!232892 m!949203))

(assert (=> d!232892 m!948296))

(declare-fun m!949205 () Bool)

(assert (=> d!232892 m!949205))

(assert (=> d!232892 m!948492))

(declare-fun m!949207 () Bool)

(assert (=> d!232892 m!949207))

(assert (=> b!692982 m!948492))

(declare-fun m!949209 () Bool)

(assert (=> b!692982 m!949209))

(assert (=> b!692393 d!232892))

(assert (=> b!692393 d!232630))

(declare-fun d!232894 () Bool)

(assert (=> d!232894 (= (list!3151 (_1!4376 lt!284936)) (list!3154 (c!121615 (_1!4376 lt!284936))))))

(declare-fun bs!137556 () Bool)

(assert (= bs!137556 d!232894))

(assert (=> bs!137556 m!948692))

(assert (=> b!692393 d!232894))

(declare-fun b!692985 () Bool)

(declare-fun e!436078 () List!7525)

(assert (=> b!692985 (= e!436078 (drop!355 (t!87343 lt!284935) (- (- (size!6146 lt!284935) (size!6146 lt!284932)) 1)))))

(declare-fun bm!43647 () Bool)

(declare-fun call!43652 () Int)

(assert (=> bm!43647 (= call!43652 (size!6146 lt!284935))))

(declare-fun b!692986 () Bool)

(declare-fun e!436077 () Bool)

(declare-fun lt!285076 () List!7525)

(declare-fun e!436079 () Int)

(assert (=> b!692986 (= e!436077 (= (size!6146 lt!285076) e!436079))))

(declare-fun c!121741 () Bool)

(assert (=> b!692986 (= c!121741 (<= (- (size!6146 lt!284935) (size!6146 lt!284932)) 0))))

(declare-fun b!692987 () Bool)

(assert (=> b!692987 (= e!436079 call!43652)))

(declare-fun b!692988 () Bool)

(declare-fun e!436080 () Int)

(assert (=> b!692988 (= e!436079 e!436080)))

(declare-fun c!121738 () Bool)

(assert (=> b!692988 (= c!121738 (>= (- (size!6146 lt!284935) (size!6146 lt!284932)) call!43652))))

(declare-fun d!232896 () Bool)

(assert (=> d!232896 e!436077))

(declare-fun res!314097 () Bool)

(assert (=> d!232896 (=> (not res!314097) (not e!436077))))

(assert (=> d!232896 (= res!314097 (= ((_ map implies) (content!1186 lt!285076) (content!1186 lt!284935)) ((as const (InoxSet C!4292)) true)))))

(declare-fun e!436076 () List!7525)

(assert (=> d!232896 (= lt!285076 e!436076)))

(declare-fun c!121740 () Bool)

(assert (=> d!232896 (= c!121740 ((_ is Nil!7511) lt!284935))))

(assert (=> d!232896 (= (drop!355 lt!284935 (- (size!6146 lt!284935) (size!6146 lt!284932))) lt!285076)))

(declare-fun b!692989 () Bool)

(assert (=> b!692989 (= e!436080 0)))

(declare-fun b!692990 () Bool)

(assert (=> b!692990 (= e!436080 (- call!43652 (- (size!6146 lt!284935) (size!6146 lt!284932))))))

(declare-fun b!692991 () Bool)

(assert (=> b!692991 (= e!436076 e!436078)))

(declare-fun c!121739 () Bool)

(assert (=> b!692991 (= c!121739 (<= (- (size!6146 lt!284935) (size!6146 lt!284932)) 0))))

(declare-fun b!692992 () Bool)

(assert (=> b!692992 (= e!436078 lt!284935)))

(declare-fun b!692993 () Bool)

(assert (=> b!692993 (= e!436076 Nil!7511)))

(assert (= (and d!232896 c!121740) b!692993))

(assert (= (and d!232896 (not c!121740)) b!692991))

(assert (= (and b!692991 c!121739) b!692992))

(assert (= (and b!692991 (not c!121739)) b!692985))

(assert (= (and d!232896 res!314097) b!692986))

(assert (= (and b!692986 c!121741) b!692987))

(assert (= (and b!692986 (not c!121741)) b!692988))

(assert (= (and b!692988 c!121738) b!692989))

(assert (= (and b!692988 (not c!121738)) b!692990))

(assert (= (or b!692987 b!692988 b!692990) bm!43647))

(declare-fun m!949211 () Bool)

(assert (=> b!692985 m!949211))

(assert (=> bm!43647 m!948538))

(declare-fun m!949213 () Bool)

(assert (=> b!692986 m!949213))

(declare-fun m!949215 () Bool)

(assert (=> d!232896 m!949215))

(declare-fun m!949217 () Bool)

(assert (=> d!232896 m!949217))

(assert (=> d!232698 d!232896))

(declare-fun d!232898 () Bool)

(declare-fun lt!285077 () Int)

(assert (=> d!232898 (>= lt!285077 0)))

(declare-fun e!436081 () Int)

(assert (=> d!232898 (= lt!285077 e!436081)))

(declare-fun c!121742 () Bool)

(assert (=> d!232898 (= c!121742 ((_ is Nil!7511) lt!284935))))

(assert (=> d!232898 (= (size!6146 lt!284935) lt!285077)))

(declare-fun b!692994 () Bool)

(assert (=> b!692994 (= e!436081 0)))

(declare-fun b!692995 () Bool)

(assert (=> b!692995 (= e!436081 (+ 1 (size!6146 (t!87343 lt!284935))))))

(assert (= (and d!232898 c!121742) b!692994))

(assert (= (and d!232898 (not c!121742)) b!692995))

(declare-fun m!949219 () Bool)

(assert (=> b!692995 m!949219))

(assert (=> d!232698 d!232898))

(assert (=> d!232698 d!232818))

(declare-fun d!232900 () Bool)

(assert (=> d!232900 (= (list!3152 (_2!4376 lt!284955)) (list!3153 (c!121614 (_2!4376 lt!284955))))))

(declare-fun bs!137557 () Bool)

(assert (= bs!137557 d!232900))

(declare-fun m!949221 () Bool)

(assert (=> bs!137557 m!949221))

(assert (=> b!692377 d!232900))

(declare-fun b!692996 () Bool)

(declare-fun e!436082 () tuple2!7926)

(declare-fun lt!285078 () Option!1708)

(declare-fun lt!285079 () tuple2!7926)

(assert (=> b!692996 (= e!436082 (tuple2!7927 (Cons!7515 (_1!4383 (v!17681 lt!285078)) (_1!4382 lt!285079)) (_2!4382 lt!285079)))))

(assert (=> b!692996 (= lt!285079 (lexList!323 thiss!12529 rules!1486 (_2!4383 (v!17681 lt!285078))))))

(declare-fun b!692997 () Bool)

(assert (=> b!692997 (= e!436082 (tuple2!7927 Nil!7515 (list!3152 input!870)))))

(declare-fun d!232902 () Bool)

(declare-fun e!436084 () Bool)

(assert (=> d!232902 e!436084))

(declare-fun c!121744 () Bool)

(declare-fun lt!285080 () tuple2!7926)

(assert (=> d!232902 (= c!121744 (> (size!6147 (_1!4382 lt!285080)) 0))))

(assert (=> d!232902 (= lt!285080 e!436082)))

(declare-fun c!121743 () Bool)

(assert (=> d!232902 (= c!121743 ((_ is Some!1707) lt!285078))))

(assert (=> d!232902 (= lt!285078 (maxPrefix!867 thiss!12529 rules!1486 (list!3152 input!870)))))

(assert (=> d!232902 (= (lexList!323 thiss!12529 rules!1486 (list!3152 input!870)) lt!285080)))

(declare-fun b!692998 () Bool)

(declare-fun e!436083 () Bool)

(assert (=> b!692998 (= e!436084 e!436083)))

(declare-fun res!314098 () Bool)

(assert (=> b!692998 (= res!314098 (< (size!6146 (_2!4382 lt!285080)) (size!6146 (list!3152 input!870))))))

(assert (=> b!692998 (=> (not res!314098) (not e!436083))))

(declare-fun b!692999 () Bool)

(assert (=> b!692999 (= e!436084 (= (_2!4382 lt!285080) (list!3152 input!870)))))

(declare-fun b!693000 () Bool)

(assert (=> b!693000 (= e!436083 (not (isEmpty!4884 (_1!4382 lt!285080))))))

(assert (= (and d!232902 c!121743) b!692996))

(assert (= (and d!232902 (not c!121743)) b!692997))

(assert (= (and d!232902 c!121744) b!692998))

(assert (= (and d!232902 (not c!121744)) b!692999))

(assert (= (and b!692998 res!314098) b!693000))

(declare-fun m!949223 () Bool)

(assert (=> b!692996 m!949223))

(declare-fun m!949225 () Bool)

(assert (=> d!232902 m!949225))

(assert (=> d!232902 m!948324))

(assert (=> d!232902 m!949055))

(declare-fun m!949227 () Bool)

(assert (=> b!692998 m!949227))

(assert (=> b!692998 m!948324))

(assert (=> b!692998 m!948740))

(declare-fun m!949229 () Bool)

(assert (=> b!693000 m!949229))

(assert (=> b!692377 d!232902))

(assert (=> b!692377 d!232648))

(declare-fun d!232904 () Bool)

(declare-fun res!314099 () Bool)

(declare-fun e!436085 () Bool)

(assert (=> d!232904 (=> (not res!314099) (not e!436085))))

(assert (=> d!232904 (= res!314099 (<= (size!6146 (list!3155 (xs!5302 (c!121614 totalInput!378)))) 512))))

(assert (=> d!232904 (= (inv!9639 (c!121614 totalInput!378)) e!436085)))

(declare-fun b!693001 () Bool)

(declare-fun res!314100 () Bool)

(assert (=> b!693001 (=> (not res!314100) (not e!436085))))

(assert (=> b!693001 (= res!314100 (= (csize!5533 (c!121614 totalInput!378)) (size!6146 (list!3155 (xs!5302 (c!121614 totalInput!378))))))))

(declare-fun b!693002 () Bool)

(assert (=> b!693002 (= e!436085 (and (> (csize!5533 (c!121614 totalInput!378)) 0) (<= (csize!5533 (c!121614 totalInput!378)) 512)))))

(assert (= (and d!232904 res!314099) b!693001))

(assert (= (and b!693001 res!314100) b!693002))

(assert (=> d!232904 m!949103))

(assert (=> d!232904 m!949103))

(declare-fun m!949231 () Bool)

(assert (=> d!232904 m!949231))

(assert (=> b!693001 m!949103))

(assert (=> b!693001 m!949103))

(assert (=> b!693001 m!949231))

(assert (=> b!692366 d!232904))

(declare-fun bs!137558 () Bool)

(declare-fun d!232906 () Bool)

(assert (= bs!137558 (and d!232906 d!232746)))

(declare-fun lambda!21576 () Int)

(assert (=> bs!137558 (= lambda!21576 lambda!21544)))

(declare-fun bs!137559 () Bool)

(assert (= bs!137559 (and d!232906 d!232886)))

(assert (=> bs!137559 (= lambda!21576 lambda!21575)))

(declare-fun bs!137560 () Bool)

(assert (= bs!137560 (and d!232906 d!232878)))

(assert (=> bs!137560 (= lambda!21576 lambda!21573)))

(declare-fun bs!137561 () Bool)

(assert (= bs!137561 (and d!232906 d!232774)))

(assert (=> bs!137561 (= lambda!21576 lambda!21554)))

(declare-fun bs!137562 () Bool)

(assert (= bs!137562 (and d!232906 d!232798)))

(assert (=> bs!137562 (= lambda!21576 lambda!21556)))

(declare-fun bs!137563 () Bool)

(assert (= bs!137563 (and d!232906 d!232782)))

(assert (=> bs!137563 (= lambda!21576 lambda!21555)))

(declare-fun bs!137564 () Bool)

(assert (= bs!137564 (and d!232906 d!232770)))

(assert (=> bs!137564 (= lambda!21576 lambda!21553)))

(declare-fun bs!137565 () Bool)

(assert (= bs!137565 (and d!232906 d!232844)))

(assert (=> bs!137565 (= lambda!21576 lambda!21564)))

(declare-fun bs!137566 () Bool)

(assert (= bs!137566 (and d!232906 d!232768)))

(assert (=> bs!137566 (= lambda!21576 lambda!21552)))

(declare-fun bs!137567 () Bool)

(assert (= bs!137567 (and d!232906 d!232808)))

(assert (=> bs!137567 (= lambda!21576 lambda!21557)))

(declare-fun bs!137568 () Bool)

(assert (= bs!137568 (and d!232906 d!232728)))

(assert (=> bs!137568 (= lambda!21576 lambda!21543)))

(declare-fun bs!137569 () Bool)

(assert (= bs!137569 (and d!232906 d!232880)))

(assert (=> bs!137569 (= lambda!21576 lambda!21574)))

(declare-fun bs!137570 () Bool)

(assert (= bs!137570 (and d!232906 d!232726)))

(assert (=> bs!137570 (= lambda!21576 lambda!21542)))

(declare-fun bs!137571 () Bool)

(assert (= bs!137571 (and d!232906 d!232856)))

(assert (=> bs!137571 (= lambda!21576 lambda!21565)))

(declare-fun bs!137572 () Bool)

(assert (= bs!137572 (and d!232906 d!232858)))

(assert (=> bs!137572 (= lambda!21576 lambda!21566)))

(declare-fun bs!137573 () Bool)

(assert (= bs!137573 (and d!232906 d!232722)))

(assert (=> bs!137573 (= lambda!21576 lambda!21541)))

(assert (=> d!232906 (= (inv!9640 (_2!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))) (forall!1957 (exprs!747 (_2!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))) lambda!21576))))

(declare-fun bs!137574 () Bool)

(assert (= bs!137574 d!232906))

(declare-fun m!949233 () Bool)

(assert (=> bs!137574 m!949233))

(assert (=> b!692442 d!232906))

(declare-fun bs!137575 () Bool)

(declare-fun d!232908 () Bool)

(assert (= bs!137575 (and d!232908 d!232746)))

(declare-fun lambda!21577 () Int)

(assert (=> bs!137575 (= lambda!21577 lambda!21544)))

(declare-fun bs!137576 () Bool)

(assert (= bs!137576 (and d!232908 d!232886)))

(assert (=> bs!137576 (= lambda!21577 lambda!21575)))

(declare-fun bs!137577 () Bool)

(assert (= bs!137577 (and d!232908 d!232878)))

(assert (=> bs!137577 (= lambda!21577 lambda!21573)))

(declare-fun bs!137578 () Bool)

(assert (= bs!137578 (and d!232908 d!232774)))

(assert (=> bs!137578 (= lambda!21577 lambda!21554)))

(declare-fun bs!137579 () Bool)

(assert (= bs!137579 (and d!232908 d!232798)))

(assert (=> bs!137579 (= lambda!21577 lambda!21556)))

(declare-fun bs!137580 () Bool)

(assert (= bs!137580 (and d!232908 d!232782)))

(assert (=> bs!137580 (= lambda!21577 lambda!21555)))

(declare-fun bs!137581 () Bool)

(assert (= bs!137581 (and d!232908 d!232770)))

(assert (=> bs!137581 (= lambda!21577 lambda!21553)))

(declare-fun bs!137582 () Bool)

(assert (= bs!137582 (and d!232908 d!232844)))

(assert (=> bs!137582 (= lambda!21577 lambda!21564)))

(declare-fun bs!137583 () Bool)

(assert (= bs!137583 (and d!232908 d!232768)))

(assert (=> bs!137583 (= lambda!21577 lambda!21552)))

(declare-fun bs!137584 () Bool)

(assert (= bs!137584 (and d!232908 d!232808)))

(assert (=> bs!137584 (= lambda!21577 lambda!21557)))

(declare-fun bs!137585 () Bool)

(assert (= bs!137585 (and d!232908 d!232728)))

(assert (=> bs!137585 (= lambda!21577 lambda!21543)))

(declare-fun bs!137586 () Bool)

(assert (= bs!137586 (and d!232908 d!232880)))

(assert (=> bs!137586 (= lambda!21577 lambda!21574)))

(declare-fun bs!137587 () Bool)

(assert (= bs!137587 (and d!232908 d!232726)))

(assert (=> bs!137587 (= lambda!21577 lambda!21542)))

(declare-fun bs!137588 () Bool)

(assert (= bs!137588 (and d!232908 d!232906)))

(assert (=> bs!137588 (= lambda!21577 lambda!21576)))

(declare-fun bs!137589 () Bool)

(assert (= bs!137589 (and d!232908 d!232856)))

(assert (=> bs!137589 (= lambda!21577 lambda!21565)))

(declare-fun bs!137590 () Bool)

(assert (= bs!137590 (and d!232908 d!232858)))

(assert (=> bs!137590 (= lambda!21577 lambda!21566)))

(declare-fun bs!137591 () Bool)

(assert (= bs!137591 (and d!232908 d!232722)))

(assert (=> bs!137591 (= lambda!21577 lambda!21541)))

(assert (=> d!232908 (= (inv!9640 (_2!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))) (forall!1957 (exprs!747 (_2!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))) lambda!21577))))

(declare-fun bs!137592 () Bool)

(assert (= bs!137592 d!232908))

(declare-fun m!949235 () Bool)

(assert (=> bs!137592 m!949235))

(assert (=> b!692439 d!232908))

(assert (=> b!692297 d!232660))

(declare-fun d!232910 () Bool)

(declare-fun c!121745 () Bool)

(assert (=> d!232910 (= c!121745 ((_ is Empty!2651) (c!121614 (_2!4376 lt!284936))))))

(declare-fun e!436086 () List!7525)

(assert (=> d!232910 (= (list!3153 (c!121614 (_2!4376 lt!284936))) e!436086)))

(declare-fun b!693005 () Bool)

(declare-fun e!436087 () List!7525)

(assert (=> b!693005 (= e!436087 (list!3155 (xs!5302 (c!121614 (_2!4376 lt!284936)))))))

(declare-fun b!693003 () Bool)

(assert (=> b!693003 (= e!436086 Nil!7511)))

(declare-fun b!693006 () Bool)

(assert (=> b!693006 (= e!436087 (++!1961 (list!3153 (left!6006 (c!121614 (_2!4376 lt!284936)))) (list!3153 (right!6336 (c!121614 (_2!4376 lt!284936))))))))

(declare-fun b!693004 () Bool)

(assert (=> b!693004 (= e!436086 e!436087)))

(declare-fun c!121746 () Bool)

(assert (=> b!693004 (= c!121746 ((_ is Leaf!3927) (c!121614 (_2!4376 lt!284936))))))

(assert (= (and d!232910 c!121745) b!693003))

(assert (= (and d!232910 (not c!121745)) b!693004))

(assert (= (and b!693004 c!121746) b!693005))

(assert (= (and b!693004 (not c!121746)) b!693006))

(declare-fun m!949237 () Bool)

(assert (=> b!693005 m!949237))

(declare-fun m!949239 () Bool)

(assert (=> b!693006 m!949239))

(declare-fun m!949241 () Bool)

(assert (=> b!693006 m!949241))

(assert (=> b!693006 m!949239))

(assert (=> b!693006 m!949241))

(declare-fun m!949243 () Bool)

(assert (=> b!693006 m!949243))

(assert (=> d!232618 d!232910))

(declare-fun bs!137593 () Bool)

(declare-fun d!232912 () Bool)

(assert (= bs!137593 (and d!232912 d!232746)))

(declare-fun lambda!21578 () Int)

(assert (=> bs!137593 (= lambda!21578 lambda!21544)))

(declare-fun bs!137594 () Bool)

(assert (= bs!137594 (and d!232912 d!232886)))

(assert (=> bs!137594 (= lambda!21578 lambda!21575)))

(declare-fun bs!137595 () Bool)

(assert (= bs!137595 (and d!232912 d!232878)))

(assert (=> bs!137595 (= lambda!21578 lambda!21573)))

(declare-fun bs!137596 () Bool)

(assert (= bs!137596 (and d!232912 d!232774)))

(assert (=> bs!137596 (= lambda!21578 lambda!21554)))

(declare-fun bs!137597 () Bool)

(assert (= bs!137597 (and d!232912 d!232798)))

(assert (=> bs!137597 (= lambda!21578 lambda!21556)))

(declare-fun bs!137598 () Bool)

(assert (= bs!137598 (and d!232912 d!232782)))

(assert (=> bs!137598 (= lambda!21578 lambda!21555)))

(declare-fun bs!137599 () Bool)

(assert (= bs!137599 (and d!232912 d!232770)))

(assert (=> bs!137599 (= lambda!21578 lambda!21553)))

(declare-fun bs!137600 () Bool)

(assert (= bs!137600 (and d!232912 d!232844)))

(assert (=> bs!137600 (= lambda!21578 lambda!21564)))

(declare-fun bs!137601 () Bool)

(assert (= bs!137601 (and d!232912 d!232768)))

(assert (=> bs!137601 (= lambda!21578 lambda!21552)))

(declare-fun bs!137602 () Bool)

(assert (= bs!137602 (and d!232912 d!232808)))

(assert (=> bs!137602 (= lambda!21578 lambda!21557)))

(declare-fun bs!137603 () Bool)

(assert (= bs!137603 (and d!232912 d!232880)))

(assert (=> bs!137603 (= lambda!21578 lambda!21574)))

(declare-fun bs!137604 () Bool)

(assert (= bs!137604 (and d!232912 d!232726)))

(assert (=> bs!137604 (= lambda!21578 lambda!21542)))

(declare-fun bs!137605 () Bool)

(assert (= bs!137605 (and d!232912 d!232906)))

(assert (=> bs!137605 (= lambda!21578 lambda!21576)))

(declare-fun bs!137606 () Bool)

(assert (= bs!137606 (and d!232912 d!232856)))

(assert (=> bs!137606 (= lambda!21578 lambda!21565)))

(declare-fun bs!137607 () Bool)

(assert (= bs!137607 (and d!232912 d!232858)))

(assert (=> bs!137607 (= lambda!21578 lambda!21566)))

(declare-fun bs!137608 () Bool)

(assert (= bs!137608 (and d!232912 d!232722)))

(assert (=> bs!137608 (= lambda!21578 lambda!21541)))

(declare-fun bs!137609 () Bool)

(assert (= bs!137609 (and d!232912 d!232908)))

(assert (=> bs!137609 (= lambda!21578 lambda!21577)))

(declare-fun bs!137610 () Bool)

(assert (= bs!137610 (and d!232912 d!232728)))

(assert (=> bs!137610 (= lambda!21578 lambda!21543)))

(assert (=> d!232912 (= (inv!9640 setElem!3829) (forall!1957 (exprs!747 setElem!3829) lambda!21578))))

(declare-fun bs!137611 () Bool)

(assert (= bs!137611 d!232912))

(declare-fun m!949245 () Bool)

(assert (=> bs!137611 m!949245))

(assert (=> setNonEmpty!3829 d!232912))

(declare-fun bs!137612 () Bool)

(declare-fun d!232914 () Bool)

(assert (= bs!137612 (and d!232914 d!232746)))

(declare-fun lambda!21579 () Int)

(assert (=> bs!137612 (= lambda!21579 lambda!21544)))

(declare-fun bs!137613 () Bool)

(assert (= bs!137613 (and d!232914 d!232886)))

(assert (=> bs!137613 (= lambda!21579 lambda!21575)))

(declare-fun bs!137614 () Bool)

(assert (= bs!137614 (and d!232914 d!232878)))

(assert (=> bs!137614 (= lambda!21579 lambda!21573)))

(declare-fun bs!137615 () Bool)

(assert (= bs!137615 (and d!232914 d!232774)))

(assert (=> bs!137615 (= lambda!21579 lambda!21554)))

(declare-fun bs!137616 () Bool)

(assert (= bs!137616 (and d!232914 d!232798)))

(assert (=> bs!137616 (= lambda!21579 lambda!21556)))

(declare-fun bs!137617 () Bool)

(assert (= bs!137617 (and d!232914 d!232782)))

(assert (=> bs!137617 (= lambda!21579 lambda!21555)))

(declare-fun bs!137618 () Bool)

(assert (= bs!137618 (and d!232914 d!232770)))

(assert (=> bs!137618 (= lambda!21579 lambda!21553)))

(declare-fun bs!137619 () Bool)

(assert (= bs!137619 (and d!232914 d!232844)))

(assert (=> bs!137619 (= lambda!21579 lambda!21564)))

(declare-fun bs!137620 () Bool)

(assert (= bs!137620 (and d!232914 d!232768)))

(assert (=> bs!137620 (= lambda!21579 lambda!21552)))

(declare-fun bs!137621 () Bool)

(assert (= bs!137621 (and d!232914 d!232808)))

(assert (=> bs!137621 (= lambda!21579 lambda!21557)))

(declare-fun bs!137622 () Bool)

(assert (= bs!137622 (and d!232914 d!232880)))

(assert (=> bs!137622 (= lambda!21579 lambda!21574)))

(declare-fun bs!137623 () Bool)

(assert (= bs!137623 (and d!232914 d!232726)))

(assert (=> bs!137623 (= lambda!21579 lambda!21542)))

(declare-fun bs!137624 () Bool)

(assert (= bs!137624 (and d!232914 d!232906)))

(assert (=> bs!137624 (= lambda!21579 lambda!21576)))

(declare-fun bs!137625 () Bool)

(assert (= bs!137625 (and d!232914 d!232856)))

(assert (=> bs!137625 (= lambda!21579 lambda!21565)))

(declare-fun bs!137626 () Bool)

(assert (= bs!137626 (and d!232914 d!232858)))

(assert (=> bs!137626 (= lambda!21579 lambda!21566)))

(declare-fun bs!137627 () Bool)

(assert (= bs!137627 (and d!232914 d!232912)))

(assert (=> bs!137627 (= lambda!21579 lambda!21578)))

(declare-fun bs!137628 () Bool)

(assert (= bs!137628 (and d!232914 d!232722)))

(assert (=> bs!137628 (= lambda!21579 lambda!21541)))

(declare-fun bs!137629 () Bool)

(assert (= bs!137629 (and d!232914 d!232908)))

(assert (=> bs!137629 (= lambda!21579 lambda!21577)))

(declare-fun bs!137630 () Bool)

(assert (= bs!137630 (and d!232914 d!232728)))

(assert (=> bs!137630 (= lambda!21579 lambda!21543)))

(assert (=> d!232914 (= (inv!9640 (_1!4379 (_1!4380 (h!12919 mapDefault!3136)))) (forall!1957 (exprs!747 (_1!4379 (_1!4380 (h!12919 mapDefault!3136)))) lambda!21579))))

(declare-fun bs!137631 () Bool)

(assert (= bs!137631 d!232914))

(declare-fun m!949247 () Bool)

(assert (=> bs!137631 m!949247))

(assert (=> b!692544 d!232914))

(declare-fun bs!137632 () Bool)

(declare-fun d!232916 () Bool)

(assert (= bs!137632 (and d!232916 d!232746)))

(declare-fun lambda!21580 () Int)

(assert (=> bs!137632 (= lambda!21580 lambda!21544)))

(declare-fun bs!137633 () Bool)

(assert (= bs!137633 (and d!232916 d!232914)))

(assert (=> bs!137633 (= lambda!21580 lambda!21579)))

(declare-fun bs!137634 () Bool)

(assert (= bs!137634 (and d!232916 d!232886)))

(assert (=> bs!137634 (= lambda!21580 lambda!21575)))

(declare-fun bs!137635 () Bool)

(assert (= bs!137635 (and d!232916 d!232878)))

(assert (=> bs!137635 (= lambda!21580 lambda!21573)))

(declare-fun bs!137636 () Bool)

(assert (= bs!137636 (and d!232916 d!232774)))

(assert (=> bs!137636 (= lambda!21580 lambda!21554)))

(declare-fun bs!137637 () Bool)

(assert (= bs!137637 (and d!232916 d!232798)))

(assert (=> bs!137637 (= lambda!21580 lambda!21556)))

(declare-fun bs!137638 () Bool)

(assert (= bs!137638 (and d!232916 d!232782)))

(assert (=> bs!137638 (= lambda!21580 lambda!21555)))

(declare-fun bs!137639 () Bool)

(assert (= bs!137639 (and d!232916 d!232770)))

(assert (=> bs!137639 (= lambda!21580 lambda!21553)))

(declare-fun bs!137640 () Bool)

(assert (= bs!137640 (and d!232916 d!232844)))

(assert (=> bs!137640 (= lambda!21580 lambda!21564)))

(declare-fun bs!137641 () Bool)

(assert (= bs!137641 (and d!232916 d!232768)))

(assert (=> bs!137641 (= lambda!21580 lambda!21552)))

(declare-fun bs!137642 () Bool)

(assert (= bs!137642 (and d!232916 d!232808)))

(assert (=> bs!137642 (= lambda!21580 lambda!21557)))

(declare-fun bs!137643 () Bool)

(assert (= bs!137643 (and d!232916 d!232880)))

(assert (=> bs!137643 (= lambda!21580 lambda!21574)))

(declare-fun bs!137644 () Bool)

(assert (= bs!137644 (and d!232916 d!232726)))

(assert (=> bs!137644 (= lambda!21580 lambda!21542)))

(declare-fun bs!137645 () Bool)

(assert (= bs!137645 (and d!232916 d!232906)))

(assert (=> bs!137645 (= lambda!21580 lambda!21576)))

(declare-fun bs!137646 () Bool)

(assert (= bs!137646 (and d!232916 d!232856)))

(assert (=> bs!137646 (= lambda!21580 lambda!21565)))

(declare-fun bs!137647 () Bool)

(assert (= bs!137647 (and d!232916 d!232858)))

(assert (=> bs!137647 (= lambda!21580 lambda!21566)))

(declare-fun bs!137648 () Bool)

(assert (= bs!137648 (and d!232916 d!232912)))

(assert (=> bs!137648 (= lambda!21580 lambda!21578)))

(declare-fun bs!137649 () Bool)

(assert (= bs!137649 (and d!232916 d!232722)))

(assert (=> bs!137649 (= lambda!21580 lambda!21541)))

(declare-fun bs!137650 () Bool)

(assert (= bs!137650 (and d!232916 d!232908)))

(assert (=> bs!137650 (= lambda!21580 lambda!21577)))

(declare-fun bs!137651 () Bool)

(assert (= bs!137651 (and d!232916 d!232728)))

(assert (=> bs!137651 (= lambda!21580 lambda!21543)))

(assert (=> d!232916 (= (inv!9640 (_1!4379 (_1!4380 (h!12919 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))) (forall!1957 (exprs!747 (_1!4379 (_1!4380 (h!12919 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))) lambda!21580))))

(declare-fun bs!137652 () Bool)

(assert (= bs!137652 d!232916))

(declare-fun m!949249 () Bool)

(assert (=> bs!137652 m!949249))

(assert (=> b!692516 d!232916))

(assert (=> b!692416 d!232816))

(assert (=> b!692416 d!232818))

(declare-fun b!693025 () Bool)

(declare-fun e!436111 () Bool)

(declare-fun e!436109 () Bool)

(assert (=> b!693025 (= e!436111 e!436109)))

(declare-fun res!314121 () Bool)

(assert (=> b!693025 (=> res!314121 e!436109)))

(assert (=> b!693025 (= res!314121 (not ((_ is Node!2652) (c!121615 (_1!4376 lt!284936)))))))

(declare-fun b!693026 () Bool)

(declare-fun e!436113 () Bool)

(declare-fun appendAssoc!38 (List!7529 List!7529 List!7529) Bool)

(assert (=> b!693026 (= e!436113 (appendAssoc!38 (list!3154 (left!6007 (c!121615 acc!372))) (list!3154 (left!6007 (right!6337 (c!121615 acc!372)))) (++!1962 (list!3154 (right!6337 (right!6337 (c!121615 acc!372)))) (list!3154 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!693027 () Bool)

(declare-fun e!436112 () Bool)

(assert (=> b!693027 (= e!436112 e!436113)))

(declare-fun res!314123 () Bool)

(assert (=> b!693027 (=> (not res!314123) (not e!436113))))

(assert (=> b!693027 (= res!314123 (appendAssoc!38 (list!3154 (left!6007 (right!6337 (c!121615 acc!372)))) (list!3154 (right!6337 (right!6337 (c!121615 acc!372)))) (list!3154 (c!121615 (_1!4376 lt!284936)))))))

(declare-fun b!693028 () Bool)

(declare-fun e!436114 () Bool)

(assert (=> b!693028 (= e!436114 e!436112)))

(declare-fun res!314124 () Bool)

(assert (=> b!693028 (=> res!314124 e!436112)))

(assert (=> b!693028 (= res!314124 (not ((_ is Node!2652) (right!6337 (c!121615 acc!372)))))))

(declare-fun b!693029 () Bool)

(declare-fun e!436107 () Bool)

(assert (=> b!693029 (= e!436107 e!436114)))

(declare-fun res!314120 () Bool)

(assert (=> b!693029 (=> (not res!314120) (not e!436114))))

(assert (=> b!693029 (= res!314120 (appendAssoc!38 (list!3154 (left!6007 (c!121615 acc!372))) (list!3154 (right!6337 (c!121615 acc!372))) (list!3154 (c!121615 (_1!4376 lt!284936)))))))

(declare-fun b!693030 () Bool)

(declare-fun e!436110 () Bool)

(assert (=> b!693030 (= e!436109 e!436110)))

(declare-fun res!314127 () Bool)

(assert (=> b!693030 (=> (not res!314127) (not e!436110))))

(assert (=> b!693030 (= res!314127 (appendAssoc!38 (list!3154 (c!121615 acc!372)) (list!3154 (left!6007 (c!121615 (_1!4376 lt!284936)))) (list!3154 (right!6337 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!693031 () Bool)

(declare-fun e!436108 () Bool)

(assert (=> b!693031 (= e!436108 (appendAssoc!38 (++!1962 (list!3154 (c!121615 acc!372)) (list!3154 (left!6007 (left!6007 (c!121615 (_1!4376 lt!284936)))))) (list!3154 (right!6337 (left!6007 (c!121615 (_1!4376 lt!284936))))) (list!3154 (right!6337 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun b!693032 () Bool)

(declare-fun e!436106 () Bool)

(assert (=> b!693032 (= e!436106 e!436108)))

(declare-fun res!314122 () Bool)

(assert (=> b!693032 (=> (not res!314122) (not e!436108))))

(assert (=> b!693032 (= res!314122 (appendAssoc!38 (list!3154 (c!121615 acc!372)) (list!3154 (left!6007 (left!6007 (c!121615 (_1!4376 lt!284936))))) (list!3154 (right!6337 (left!6007 (c!121615 (_1!4376 lt!284936)))))))))

(declare-fun b!693033 () Bool)

(assert (=> b!693033 (= e!436110 e!436106)))

(declare-fun res!314125 () Bool)

(assert (=> b!693033 (=> res!314125 e!436106)))

(assert (=> b!693033 (= res!314125 (not ((_ is Node!2652) (left!6007 (c!121615 (_1!4376 lt!284936))))))))

(declare-fun d!232918 () Bool)

(assert (=> d!232918 e!436111))

(declare-fun res!314119 () Bool)

(assert (=> d!232918 (=> (not res!314119) (not e!436111))))

(assert (=> d!232918 (= res!314119 e!436107)))

(declare-fun res!314126 () Bool)

(assert (=> d!232918 (=> res!314126 e!436107)))

(assert (=> d!232918 (= res!314126 (not ((_ is Node!2652) (c!121615 acc!372))))))

(assert (=> d!232918 (= (appendAssocInst!133 (c!121615 acc!372) (c!121615 (_1!4376 lt!284936))) true)))

(assert (= (and d!232918 (not res!314126)) b!693029))

(assert (= (and b!693029 res!314120) b!693028))

(assert (= (and b!693028 (not res!314124)) b!693027))

(assert (= (and b!693027 res!314123) b!693026))

(assert (= (and d!232918 res!314119) b!693025))

(assert (= (and b!693025 (not res!314121)) b!693030))

(assert (= (and b!693030 res!314127) b!693033))

(assert (= (and b!693033 (not res!314125)) b!693032))

(assert (= (and b!693032 res!314122) b!693031))

(assert (=> b!693032 m!948384))

(declare-fun m!949251 () Bool)

(assert (=> b!693032 m!949251))

(declare-fun m!949253 () Bool)

(assert (=> b!693032 m!949253))

(assert (=> b!693032 m!948384))

(assert (=> b!693032 m!949251))

(assert (=> b!693032 m!949253))

(declare-fun m!949255 () Bool)

(assert (=> b!693032 m!949255))

(assert (=> b!693030 m!948384))

(declare-fun m!949257 () Bool)

(assert (=> b!693030 m!949257))

(declare-fun m!949259 () Bool)

(assert (=> b!693030 m!949259))

(assert (=> b!693030 m!948384))

(assert (=> b!693030 m!949257))

(assert (=> b!693030 m!949259))

(declare-fun m!949261 () Bool)

(assert (=> b!693030 m!949261))

(assert (=> b!693031 m!949259))

(assert (=> b!693031 m!948384))

(assert (=> b!693031 m!949251))

(declare-fun m!949263 () Bool)

(assert (=> b!693031 m!949263))

(assert (=> b!693031 m!949251))

(assert (=> b!693031 m!948384))

(assert (=> b!693031 m!949253))

(assert (=> b!693031 m!949263))

(assert (=> b!693031 m!949253))

(assert (=> b!693031 m!949259))

(declare-fun m!949265 () Bool)

(assert (=> b!693031 m!949265))

(declare-fun m!949267 () Bool)

(assert (=> b!693027 m!949267))

(declare-fun m!949269 () Bool)

(assert (=> b!693027 m!949269))

(assert (=> b!693027 m!948692))

(assert (=> b!693027 m!949267))

(assert (=> b!693027 m!949269))

(assert (=> b!693027 m!948692))

(declare-fun m!949271 () Bool)

(assert (=> b!693027 m!949271))

(assert (=> b!693029 m!948944))

(assert (=> b!693029 m!948946))

(assert (=> b!693029 m!948692))

(assert (=> b!693029 m!948944))

(assert (=> b!693029 m!948946))

(assert (=> b!693029 m!948692))

(declare-fun m!949273 () Bool)

(assert (=> b!693029 m!949273))

(assert (=> b!693026 m!949269))

(assert (=> b!693026 m!949267))

(assert (=> b!693026 m!949269))

(assert (=> b!693026 m!948692))

(declare-fun m!949275 () Bool)

(assert (=> b!693026 m!949275))

(assert (=> b!693026 m!948692))

(assert (=> b!693026 m!948944))

(assert (=> b!693026 m!948944))

(assert (=> b!693026 m!949267))

(assert (=> b!693026 m!949275))

(declare-fun m!949277 () Bool)

(assert (=> b!693026 m!949277))

(assert (=> d!232668 d!232918))

(assert (=> d!232668 d!232718))

(assert (=> d!232692 d!232748))

(declare-fun bs!137653 () Bool)

(declare-fun d!232920 () Bool)

(assert (= bs!137653 (and d!232920 d!232746)))

(declare-fun lambda!21581 () Int)

(assert (=> bs!137653 (= lambda!21581 lambda!21544)))

(declare-fun bs!137654 () Bool)

(assert (= bs!137654 (and d!232920 d!232914)))

(assert (=> bs!137654 (= lambda!21581 lambda!21579)))

(declare-fun bs!137655 () Bool)

(assert (= bs!137655 (and d!232920 d!232886)))

(assert (=> bs!137655 (= lambda!21581 lambda!21575)))

(declare-fun bs!137656 () Bool)

(assert (= bs!137656 (and d!232920 d!232774)))

(assert (=> bs!137656 (= lambda!21581 lambda!21554)))

(declare-fun bs!137657 () Bool)

(assert (= bs!137657 (and d!232920 d!232798)))

(assert (=> bs!137657 (= lambda!21581 lambda!21556)))

(declare-fun bs!137658 () Bool)

(assert (= bs!137658 (and d!232920 d!232782)))

(assert (=> bs!137658 (= lambda!21581 lambda!21555)))

(declare-fun bs!137659 () Bool)

(assert (= bs!137659 (and d!232920 d!232770)))

(assert (=> bs!137659 (= lambda!21581 lambda!21553)))

(declare-fun bs!137660 () Bool)

(assert (= bs!137660 (and d!232920 d!232844)))

(assert (=> bs!137660 (= lambda!21581 lambda!21564)))

(declare-fun bs!137661 () Bool)

(assert (= bs!137661 (and d!232920 d!232768)))

(assert (=> bs!137661 (= lambda!21581 lambda!21552)))

(declare-fun bs!137662 () Bool)

(assert (= bs!137662 (and d!232920 d!232808)))

(assert (=> bs!137662 (= lambda!21581 lambda!21557)))

(declare-fun bs!137663 () Bool)

(assert (= bs!137663 (and d!232920 d!232880)))

(assert (=> bs!137663 (= lambda!21581 lambda!21574)))

(declare-fun bs!137664 () Bool)

(assert (= bs!137664 (and d!232920 d!232726)))

(assert (=> bs!137664 (= lambda!21581 lambda!21542)))

(declare-fun bs!137665 () Bool)

(assert (= bs!137665 (and d!232920 d!232906)))

(assert (=> bs!137665 (= lambda!21581 lambda!21576)))

(declare-fun bs!137666 () Bool)

(assert (= bs!137666 (and d!232920 d!232856)))

(assert (=> bs!137666 (= lambda!21581 lambda!21565)))

(declare-fun bs!137667 () Bool)

(assert (= bs!137667 (and d!232920 d!232878)))

(assert (=> bs!137667 (= lambda!21581 lambda!21573)))

(declare-fun bs!137668 () Bool)

(assert (= bs!137668 (and d!232920 d!232916)))

(assert (=> bs!137668 (= lambda!21581 lambda!21580)))

(declare-fun bs!137669 () Bool)

(assert (= bs!137669 (and d!232920 d!232858)))

(assert (=> bs!137669 (= lambda!21581 lambda!21566)))

(declare-fun bs!137670 () Bool)

(assert (= bs!137670 (and d!232920 d!232912)))

(assert (=> bs!137670 (= lambda!21581 lambda!21578)))

(declare-fun bs!137671 () Bool)

(assert (= bs!137671 (and d!232920 d!232722)))

(assert (=> bs!137671 (= lambda!21581 lambda!21541)))

(declare-fun bs!137672 () Bool)

(assert (= bs!137672 (and d!232920 d!232908)))

(assert (=> bs!137672 (= lambda!21581 lambda!21577)))

(declare-fun bs!137673 () Bool)

(assert (= bs!137673 (and d!232920 d!232728)))

(assert (=> bs!137673 (= lambda!21581 lambda!21543)))

(assert (=> d!232920 (= (inv!9640 (_2!4377 (_1!4378 (h!12918 mapValue!3133)))) (forall!1957 (exprs!747 (_2!4377 (_1!4378 (h!12918 mapValue!3133)))) lambda!21581))))

(declare-fun bs!137674 () Bool)

(assert (= bs!137674 d!232920))

(declare-fun m!949279 () Bool)

(assert (=> bs!137674 m!949279))

(assert (=> b!692486 d!232920))

(declare-fun d!232922 () Bool)

(declare-fun c!121747 () Bool)

(assert (=> d!232922 (= c!121747 ((_ is Node!2651) (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(declare-fun e!436115 () Bool)

(assert (=> d!232922 (= (inv!9629 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) e!436115)))

(declare-fun b!693034 () Bool)

(assert (=> b!693034 (= e!436115 (inv!9638 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(declare-fun b!693035 () Bool)

(declare-fun e!436116 () Bool)

(assert (=> b!693035 (= e!436115 e!436116)))

(declare-fun res!314128 () Bool)

(assert (=> b!693035 (= res!314128 (not ((_ is Leaf!3927) (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))))

(assert (=> b!693035 (=> res!314128 e!436116)))

(declare-fun b!693036 () Bool)

(assert (=> b!693036 (= e!436116 (inv!9639 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(assert (= (and d!232922 c!121747) b!693034))

(assert (= (and d!232922 (not c!121747)) b!693035))

(assert (= (and b!693035 (not res!314128)) b!693036))

(declare-fun m!949281 () Bool)

(assert (=> b!693034 m!949281))

(declare-fun m!949283 () Bool)

(assert (=> b!693036 m!949283))

(assert (=> b!692553 d!232922))

(declare-fun d!232924 () Bool)

(declare-fun c!121748 () Bool)

(assert (=> d!232924 (= c!121748 ((_ is Node!2651) (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(declare-fun e!436117 () Bool)

(assert (=> d!232924 (= (inv!9629 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) e!436117)))

(declare-fun b!693037 () Bool)

(assert (=> b!693037 (= e!436117 (inv!9638 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(declare-fun b!693038 () Bool)

(declare-fun e!436118 () Bool)

(assert (=> b!693038 (= e!436117 e!436118)))

(declare-fun res!314129 () Bool)

(assert (=> b!693038 (= res!314129 (not ((_ is Leaf!3927) (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))))))

(assert (=> b!693038 (=> res!314129 e!436118)))

(declare-fun b!693039 () Bool)

(assert (=> b!693039 (= e!436118 (inv!9639 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))

(assert (= (and d!232924 c!121748) b!693037))

(assert (= (and d!232924 (not c!121748)) b!693038))

(assert (= (and b!693038 (not res!314129)) b!693039))

(declare-fun m!949285 () Bool)

(assert (=> b!693037 m!949285))

(declare-fun m!949287 () Bool)

(assert (=> b!693039 m!949287))

(assert (=> b!692553 d!232924))

(declare-fun b!693040 () Bool)

(declare-fun e!436120 () List!7525)

(assert (=> b!693040 (= e!436120 lt!284932)))

(declare-fun b!693042 () Bool)

(declare-fun res!314131 () Bool)

(declare-fun e!436119 () Bool)

(assert (=> b!693042 (=> (not res!314131) (not e!436119))))

(declare-fun lt!285081 () List!7525)

(assert (=> b!693042 (= res!314131 (= (size!6146 lt!285081) (+ (size!6146 (t!87343 lt!284934)) (size!6146 lt!284932))))))

(declare-fun b!693041 () Bool)

(assert (=> b!693041 (= e!436120 (Cons!7511 (h!12912 (t!87343 lt!284934)) (++!1961 (t!87343 (t!87343 lt!284934)) lt!284932)))))

(declare-fun b!693043 () Bool)

(assert (=> b!693043 (= e!436119 (or (not (= lt!284932 Nil!7511)) (= lt!285081 (t!87343 lt!284934))))))

(declare-fun d!232926 () Bool)

(assert (=> d!232926 e!436119))

(declare-fun res!314130 () Bool)

(assert (=> d!232926 (=> (not res!314130) (not e!436119))))

(assert (=> d!232926 (= res!314130 (= (content!1186 lt!285081) ((_ map or) (content!1186 (t!87343 lt!284934)) (content!1186 lt!284932))))))

(assert (=> d!232926 (= lt!285081 e!436120)))

(declare-fun c!121749 () Bool)

(assert (=> d!232926 (= c!121749 ((_ is Nil!7511) (t!87343 lt!284934)))))

(assert (=> d!232926 (= (++!1961 (t!87343 lt!284934) lt!284932) lt!285081)))

(assert (= (and d!232926 c!121749) b!693040))

(assert (= (and d!232926 (not c!121749)) b!693041))

(assert (= (and d!232926 res!314130) b!693042))

(assert (= (and b!693042 res!314131) b!693043))

(declare-fun m!949289 () Bool)

(assert (=> b!693042 m!949289))

(assert (=> b!693042 m!949099))

(assert (=> b!693042 m!948420))

(declare-fun m!949291 () Bool)

(assert (=> b!693041 m!949291))

(declare-fun m!949293 () Bool)

(assert (=> d!232926 m!949293))

(assert (=> d!232926 m!948730))

(assert (=> d!232926 m!948428))

(assert (=> b!692349 d!232926))

(assert (=> b!692283 d!232676))

(declare-fun bs!137675 () Bool)

(declare-fun d!232928 () Bool)

(assert (= bs!137675 (and d!232928 d!232746)))

(declare-fun lambda!21582 () Int)

(assert (=> bs!137675 (= lambda!21582 lambda!21544)))

(declare-fun bs!137676 () Bool)

(assert (= bs!137676 (and d!232928 d!232914)))

(assert (=> bs!137676 (= lambda!21582 lambda!21579)))

(declare-fun bs!137677 () Bool)

(assert (= bs!137677 (and d!232928 d!232886)))

(assert (=> bs!137677 (= lambda!21582 lambda!21575)))

(declare-fun bs!137678 () Bool)

(assert (= bs!137678 (and d!232928 d!232774)))

(assert (=> bs!137678 (= lambda!21582 lambda!21554)))

(declare-fun bs!137679 () Bool)

(assert (= bs!137679 (and d!232928 d!232798)))

(assert (=> bs!137679 (= lambda!21582 lambda!21556)))

(declare-fun bs!137680 () Bool)

(assert (= bs!137680 (and d!232928 d!232782)))

(assert (=> bs!137680 (= lambda!21582 lambda!21555)))

(declare-fun bs!137681 () Bool)

(assert (= bs!137681 (and d!232928 d!232770)))

(assert (=> bs!137681 (= lambda!21582 lambda!21553)))

(declare-fun bs!137682 () Bool)

(assert (= bs!137682 (and d!232928 d!232844)))

(assert (=> bs!137682 (= lambda!21582 lambda!21564)))

(declare-fun bs!137683 () Bool)

(assert (= bs!137683 (and d!232928 d!232768)))

(assert (=> bs!137683 (= lambda!21582 lambda!21552)))

(declare-fun bs!137684 () Bool)

(assert (= bs!137684 (and d!232928 d!232808)))

(assert (=> bs!137684 (= lambda!21582 lambda!21557)))

(declare-fun bs!137685 () Bool)

(assert (= bs!137685 (and d!232928 d!232920)))

(assert (=> bs!137685 (= lambda!21582 lambda!21581)))

(declare-fun bs!137686 () Bool)

(assert (= bs!137686 (and d!232928 d!232880)))

(assert (=> bs!137686 (= lambda!21582 lambda!21574)))

(declare-fun bs!137687 () Bool)

(assert (= bs!137687 (and d!232928 d!232726)))

(assert (=> bs!137687 (= lambda!21582 lambda!21542)))

(declare-fun bs!137688 () Bool)

(assert (= bs!137688 (and d!232928 d!232906)))

(assert (=> bs!137688 (= lambda!21582 lambda!21576)))

(declare-fun bs!137689 () Bool)

(assert (= bs!137689 (and d!232928 d!232856)))

(assert (=> bs!137689 (= lambda!21582 lambda!21565)))

(declare-fun bs!137690 () Bool)

(assert (= bs!137690 (and d!232928 d!232878)))

(assert (=> bs!137690 (= lambda!21582 lambda!21573)))

(declare-fun bs!137691 () Bool)

(assert (= bs!137691 (and d!232928 d!232916)))

(assert (=> bs!137691 (= lambda!21582 lambda!21580)))

(declare-fun bs!137692 () Bool)

(assert (= bs!137692 (and d!232928 d!232858)))

(assert (=> bs!137692 (= lambda!21582 lambda!21566)))

(declare-fun bs!137693 () Bool)

(assert (= bs!137693 (and d!232928 d!232912)))

(assert (=> bs!137693 (= lambda!21582 lambda!21578)))

(declare-fun bs!137694 () Bool)

(assert (= bs!137694 (and d!232928 d!232722)))

(assert (=> bs!137694 (= lambda!21582 lambda!21541)))

(declare-fun bs!137695 () Bool)

(assert (= bs!137695 (and d!232928 d!232908)))

(assert (=> bs!137695 (= lambda!21582 lambda!21577)))

(declare-fun bs!137696 () Bool)

(assert (= bs!137696 (and d!232928 d!232728)))

(assert (=> bs!137696 (= lambda!21582 lambda!21543)))

(assert (=> d!232928 (= (inv!9640 setElem!3824) (forall!1957 (exprs!747 setElem!3824) lambda!21582))))

(declare-fun bs!137697 () Bool)

(assert (= bs!137697 d!232928))

(declare-fun m!949295 () Bool)

(assert (=> bs!137697 m!949295))

(assert (=> setNonEmpty!3824 d!232928))

(declare-fun d!232930 () Bool)

(declare-fun res!314132 () Bool)

(declare-fun e!436121 () Bool)

(assert (=> d!232930 (=> (not res!314132) (not e!436121))))

(assert (=> d!232930 (= res!314132 (= (csize!5532 (c!121614 treated!50)) (+ (size!6148 (left!6006 (c!121614 treated!50))) (size!6148 (right!6336 (c!121614 treated!50))))))))

(assert (=> d!232930 (= (inv!9638 (c!121614 treated!50)) e!436121)))

(declare-fun b!693044 () Bool)

(declare-fun res!314133 () Bool)

(assert (=> b!693044 (=> (not res!314133) (not e!436121))))

(assert (=> b!693044 (= res!314133 (and (not (= (left!6006 (c!121614 treated!50)) Empty!2651)) (not (= (right!6336 (c!121614 treated!50)) Empty!2651))))))

(declare-fun b!693045 () Bool)

(declare-fun res!314134 () Bool)

(assert (=> b!693045 (=> (not res!314134) (not e!436121))))

(assert (=> b!693045 (= res!314134 (= (cheight!2862 (c!121614 treated!50)) (+ (max!0 (height!319 (left!6006 (c!121614 treated!50))) (height!319 (right!6336 (c!121614 treated!50)))) 1)))))

(declare-fun b!693046 () Bool)

(assert (=> b!693046 (= e!436121 (<= 0 (cheight!2862 (c!121614 treated!50))))))

(assert (= (and d!232930 res!314132) b!693044))

(assert (= (and b!693044 res!314133) b!693045))

(assert (= (and b!693045 res!314134) b!693046))

(declare-fun m!949297 () Bool)

(assert (=> d!232930 m!949297))

(declare-fun m!949299 () Bool)

(assert (=> d!232930 m!949299))

(assert (=> b!693045 m!948754))

(assert (=> b!693045 m!948756))

(assert (=> b!693045 m!948754))

(assert (=> b!693045 m!948756))

(declare-fun m!949301 () Bool)

(assert (=> b!693045 m!949301))

(assert (=> b!692417 d!232930))

(declare-fun d!232932 () Bool)

(declare-fun res!314139 () Bool)

(declare-fun e!436126 () Bool)

(assert (=> d!232932 (=> res!314139 e!436126)))

(assert (=> d!232932 (= res!314139 ((_ is Nil!7516) rules!1486))))

(assert (=> d!232932 (= (noDuplicateTag!528 thiss!12529 rules!1486 Nil!7519) e!436126)))

(declare-fun b!693051 () Bool)

(declare-fun e!436127 () Bool)

(assert (=> b!693051 (= e!436126 e!436127)))

(declare-fun res!314140 () Bool)

(assert (=> b!693051 (=> (not res!314140) (not e!436127))))

(declare-fun contains!1566 (List!7533 String!9476) Bool)

(assert (=> b!693051 (= res!314140 (not (contains!1566 Nil!7519 (tag!1768 (h!12917 rules!1486)))))))

(declare-fun b!693052 () Bool)

(assert (=> b!693052 (= e!436127 (noDuplicateTag!528 thiss!12529 (t!87348 rules!1486) (Cons!7519 (tag!1768 (h!12917 rules!1486)) Nil!7519)))))

(assert (= (and d!232932 (not res!314139)) b!693051))

(assert (= (and b!693051 res!314140) b!693052))

(declare-fun m!949303 () Bool)

(assert (=> b!693051 m!949303))

(declare-fun m!949305 () Bool)

(assert (=> b!693052 m!949305))

(assert (=> b!692339 d!232932))

(declare-fun d!232934 () Bool)

(declare-fun c!121750 () Bool)

(assert (=> d!232934 (= c!121750 ((_ is Node!2651) (left!6006 (c!121614 treated!50))))))

(declare-fun e!436128 () Bool)

(assert (=> d!232934 (= (inv!9629 (left!6006 (c!121614 treated!50))) e!436128)))

(declare-fun b!693053 () Bool)

(assert (=> b!693053 (= e!436128 (inv!9638 (left!6006 (c!121614 treated!50))))))

(declare-fun b!693054 () Bool)

(declare-fun e!436129 () Bool)

(assert (=> b!693054 (= e!436128 e!436129)))

(declare-fun res!314141 () Bool)

(assert (=> b!693054 (= res!314141 (not ((_ is Leaf!3927) (left!6006 (c!121614 treated!50)))))))

(assert (=> b!693054 (=> res!314141 e!436129)))

(declare-fun b!693055 () Bool)

(assert (=> b!693055 (= e!436129 (inv!9639 (left!6006 (c!121614 treated!50))))))

(assert (= (and d!232934 c!121750) b!693053))

(assert (= (and d!232934 (not c!121750)) b!693054))

(assert (= (and b!693054 (not res!314141)) b!693055))

(declare-fun m!949307 () Bool)

(assert (=> b!693053 m!949307))

(declare-fun m!949309 () Bool)

(assert (=> b!693055 m!949309))

(assert (=> b!692581 d!232934))

(declare-fun d!232936 () Bool)

(declare-fun c!121751 () Bool)

(assert (=> d!232936 (= c!121751 ((_ is Node!2651) (right!6336 (c!121614 treated!50))))))

(declare-fun e!436130 () Bool)

(assert (=> d!232936 (= (inv!9629 (right!6336 (c!121614 treated!50))) e!436130)))

(declare-fun b!693056 () Bool)

(assert (=> b!693056 (= e!436130 (inv!9638 (right!6336 (c!121614 treated!50))))))

(declare-fun b!693057 () Bool)

(declare-fun e!436131 () Bool)

(assert (=> b!693057 (= e!436130 e!436131)))

(declare-fun res!314142 () Bool)

(assert (=> b!693057 (= res!314142 (not ((_ is Leaf!3927) (right!6336 (c!121614 treated!50)))))))

(assert (=> b!693057 (=> res!314142 e!436131)))

(declare-fun b!693058 () Bool)

(assert (=> b!693058 (= e!436131 (inv!9639 (right!6336 (c!121614 treated!50))))))

(assert (= (and d!232936 c!121751) b!693056))

(assert (= (and d!232936 (not c!121751)) b!693057))

(assert (= (and b!693057 (not res!314142)) b!693058))

(declare-fun m!949311 () Bool)

(assert (=> b!693056 m!949311))

(declare-fun m!949313 () Bool)

(assert (=> b!693058 m!949313))

(assert (=> b!692581 d!232936))

(declare-fun d!232938 () Bool)

(declare-fun res!314143 () Bool)

(declare-fun e!436132 () Bool)

(assert (=> d!232938 (=> (not res!314143) (not e!436132))))

(assert (=> d!232938 (= res!314143 (= (csize!5532 (c!121614 input!870)) (+ (size!6148 (left!6006 (c!121614 input!870))) (size!6148 (right!6336 (c!121614 input!870))))))))

(assert (=> d!232938 (= (inv!9638 (c!121614 input!870)) e!436132)))

(declare-fun b!693059 () Bool)

(declare-fun res!314144 () Bool)

(assert (=> b!693059 (=> (not res!314144) (not e!436132))))

(assert (=> b!693059 (= res!314144 (and (not (= (left!6006 (c!121614 input!870)) Empty!2651)) (not (= (right!6336 (c!121614 input!870)) Empty!2651))))))

(declare-fun b!693060 () Bool)

(declare-fun res!314145 () Bool)

(assert (=> b!693060 (=> (not res!314145) (not e!436132))))

(assert (=> b!693060 (= res!314145 (= (cheight!2862 (c!121614 input!870)) (+ (max!0 (height!319 (left!6006 (c!121614 input!870))) (height!319 (right!6336 (c!121614 input!870)))) 1)))))

(declare-fun b!693061 () Bool)

(assert (=> b!693061 (= e!436132 (<= 0 (cheight!2862 (c!121614 input!870))))))

(assert (= (and d!232938 res!314143) b!693059))

(assert (= (and b!693059 res!314144) b!693060))

(assert (= (and b!693060 res!314145) b!693061))

(declare-fun m!949315 () Bool)

(assert (=> d!232938 m!949315))

(declare-fun m!949317 () Bool)

(assert (=> d!232938 m!949317))

(assert (=> b!693060 m!949085))

(assert (=> b!693060 m!949087))

(assert (=> b!693060 m!949085))

(assert (=> b!693060 m!949087))

(declare-fun m!949319 () Bool)

(assert (=> b!693060 m!949319))

(assert (=> b!692358 d!232938))

(declare-fun d!232940 () Bool)

(declare-fun c!121752 () Bool)

(assert (=> d!232940 (= c!121752 ((_ is Node!2651) (left!6006 (c!121614 input!870))))))

(declare-fun e!436133 () Bool)

(assert (=> d!232940 (= (inv!9629 (left!6006 (c!121614 input!870))) e!436133)))

(declare-fun b!693062 () Bool)

(assert (=> b!693062 (= e!436133 (inv!9638 (left!6006 (c!121614 input!870))))))

(declare-fun b!693063 () Bool)

(declare-fun e!436134 () Bool)

(assert (=> b!693063 (= e!436133 e!436134)))

(declare-fun res!314146 () Bool)

(assert (=> b!693063 (= res!314146 (not ((_ is Leaf!3927) (left!6006 (c!121614 input!870)))))))

(assert (=> b!693063 (=> res!314146 e!436134)))

(declare-fun b!693064 () Bool)

(assert (=> b!693064 (= e!436134 (inv!9639 (left!6006 (c!121614 input!870))))))

(assert (= (and d!232940 c!121752) b!693062))

(assert (= (and d!232940 (not c!121752)) b!693063))

(assert (= (and b!693063 (not res!314146)) b!693064))

(declare-fun m!949321 () Bool)

(assert (=> b!693062 m!949321))

(declare-fun m!949323 () Bool)

(assert (=> b!693064 m!949323))

(assert (=> b!692524 d!232940))

(declare-fun d!232942 () Bool)

(declare-fun c!121753 () Bool)

(assert (=> d!232942 (= c!121753 ((_ is Node!2651) (right!6336 (c!121614 input!870))))))

(declare-fun e!436135 () Bool)

(assert (=> d!232942 (= (inv!9629 (right!6336 (c!121614 input!870))) e!436135)))

(declare-fun b!693065 () Bool)

(assert (=> b!693065 (= e!436135 (inv!9638 (right!6336 (c!121614 input!870))))))

(declare-fun b!693066 () Bool)

(declare-fun e!436136 () Bool)

(assert (=> b!693066 (= e!436135 e!436136)))

(declare-fun res!314147 () Bool)

(assert (=> b!693066 (= res!314147 (not ((_ is Leaf!3927) (right!6336 (c!121614 input!870)))))))

(assert (=> b!693066 (=> res!314147 e!436136)))

(declare-fun b!693067 () Bool)

(assert (=> b!693067 (= e!436136 (inv!9639 (right!6336 (c!121614 input!870))))))

(assert (= (and d!232942 c!121753) b!693065))

(assert (= (and d!232942 (not c!121753)) b!693066))

(assert (= (and b!693066 (not res!314147)) b!693067))

(declare-fun m!949325 () Bool)

(assert (=> b!693065 m!949325))

(declare-fun m!949327 () Bool)

(assert (=> b!693067 m!949327))

(assert (=> b!692524 d!232942))

(assert (=> b!692322 d!232868))

(assert (=> b!692322 d!232650))

(declare-fun d!232944 () Bool)

(declare-fun c!121754 () Bool)

(assert (=> d!232944 (= c!121754 ((_ is Empty!2651) (c!121614 (_2!4376 lt!284938))))))

(declare-fun e!436137 () List!7525)

(assert (=> d!232944 (= (list!3153 (c!121614 (_2!4376 lt!284938))) e!436137)))

(declare-fun b!693070 () Bool)

(declare-fun e!436138 () List!7525)

(assert (=> b!693070 (= e!436138 (list!3155 (xs!5302 (c!121614 (_2!4376 lt!284938)))))))

(declare-fun b!693068 () Bool)

(assert (=> b!693068 (= e!436137 Nil!7511)))

(declare-fun b!693071 () Bool)

(assert (=> b!693071 (= e!436138 (++!1961 (list!3153 (left!6006 (c!121614 (_2!4376 lt!284938)))) (list!3153 (right!6336 (c!121614 (_2!4376 lt!284938))))))))

(declare-fun b!693069 () Bool)

(assert (=> b!693069 (= e!436137 e!436138)))

(declare-fun c!121755 () Bool)

(assert (=> b!693069 (= c!121755 ((_ is Leaf!3927) (c!121614 (_2!4376 lt!284938))))))

(assert (= (and d!232944 c!121754) b!693068))

(assert (= (and d!232944 (not c!121754)) b!693069))

(assert (= (and b!693069 c!121755) b!693070))

(assert (= (and b!693069 (not c!121755)) b!693071))

(declare-fun m!949329 () Bool)

(assert (=> b!693070 m!949329))

(declare-fun m!949331 () Bool)

(assert (=> b!693071 m!949331))

(declare-fun m!949333 () Bool)

(assert (=> b!693071 m!949333))

(assert (=> b!693071 m!949331))

(assert (=> b!693071 m!949333))

(declare-fun m!949335 () Bool)

(assert (=> b!693071 m!949335))

(assert (=> d!232696 d!232944))

(declare-fun d!232946 () Bool)

(declare-fun res!314148 () Bool)

(declare-fun e!436139 () Bool)

(assert (=> d!232946 (=> (not res!314148) (not e!436139))))

(assert (=> d!232946 (= res!314148 (<= (size!6146 (list!3155 (xs!5302 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) 512))))

(assert (=> d!232946 (= (inv!9639 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) e!436139)))

(declare-fun b!693072 () Bool)

(declare-fun res!314149 () Bool)

(assert (=> b!693072 (=> (not res!314149) (not e!436139))))

(assert (=> b!693072 (= res!314149 (= (csize!5533 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) (size!6146 (list!3155 (xs!5302 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))))))

(declare-fun b!693073 () Bool)

(assert (=> b!693073 (= e!436139 (and (> (csize!5533 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) 0) (<= (csize!5533 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))) 512)))))

(assert (= (and d!232946 res!314148) b!693072))

(assert (= (and b!693072 res!314149) b!693073))

(declare-fun m!949337 () Bool)

(assert (=> d!232946 m!949337))

(assert (=> d!232946 m!949337))

(declare-fun m!949339 () Bool)

(assert (=> d!232946 m!949339))

(assert (=> b!693072 m!949337))

(assert (=> b!693072 m!949337))

(assert (=> b!693072 m!949339))

(assert (=> b!692403 d!232946))

(declare-fun d!232948 () Bool)

(declare-fun lt!285082 () Bool)

(assert (=> d!232948 (= lt!285082 (isEmpty!4884 (list!3151 (_1!4376 lt!284961))))))

(assert (=> d!232948 (= lt!285082 (isEmpty!4883 (c!121615 (_1!4376 lt!284961))))))

(assert (=> d!232948 (= (isEmpty!4882 (_1!4376 lt!284961)) lt!285082)))

(declare-fun bs!137698 () Bool)

(assert (= bs!137698 d!232948))

(assert (=> bs!137698 m!948502))

(assert (=> bs!137698 m!948502))

(declare-fun m!949341 () Bool)

(assert (=> bs!137698 m!949341))

(declare-fun m!949343 () Bool)

(assert (=> bs!137698 m!949343))

(assert (=> b!692400 d!232948))

(declare-fun d!232950 () Bool)

(declare-fun c!121756 () Bool)

(assert (=> d!232950 (= c!121756 ((_ is Empty!2651) (c!121614 treated!50)))))

(declare-fun e!436140 () List!7525)

(assert (=> d!232950 (= (list!3153 (c!121614 treated!50)) e!436140)))

(declare-fun b!693076 () Bool)

(declare-fun e!436141 () List!7525)

(assert (=> b!693076 (= e!436141 (list!3155 (xs!5302 (c!121614 treated!50))))))

(declare-fun b!693074 () Bool)

(assert (=> b!693074 (= e!436140 Nil!7511)))

(declare-fun b!693077 () Bool)

(assert (=> b!693077 (= e!436141 (++!1961 (list!3153 (left!6006 (c!121614 treated!50))) (list!3153 (right!6336 (c!121614 treated!50)))))))

(declare-fun b!693075 () Bool)

(assert (=> b!693075 (= e!436140 e!436141)))

(declare-fun c!121757 () Bool)

(assert (=> b!693075 (= c!121757 ((_ is Leaf!3927) (c!121614 treated!50)))))

(assert (= (and d!232950 c!121756) b!693074))

(assert (= (and d!232950 (not c!121756)) b!693075))

(assert (= (and b!693075 c!121757) b!693076))

(assert (= (and b!693075 (not c!121757)) b!693077))

(assert (=> b!693076 m!948878))

(declare-fun m!949345 () Bool)

(assert (=> b!693077 m!949345))

(declare-fun m!949347 () Bool)

(assert (=> b!693077 m!949347))

(assert (=> b!693077 m!949345))

(assert (=> b!693077 m!949347))

(declare-fun m!949349 () Bool)

(assert (=> b!693077 m!949349))

(assert (=> d!232650 d!232950))

(declare-fun bs!137699 () Bool)

(declare-fun d!232952 () Bool)

(assert (= bs!137699 (and d!232952 d!232746)))

(declare-fun lambda!21583 () Int)

(assert (=> bs!137699 (= lambda!21583 lambda!21544)))

(declare-fun bs!137700 () Bool)

(assert (= bs!137700 (and d!232952 d!232914)))

(assert (=> bs!137700 (= lambda!21583 lambda!21579)))

(declare-fun bs!137701 () Bool)

(assert (= bs!137701 (and d!232952 d!232886)))

(assert (=> bs!137701 (= lambda!21583 lambda!21575)))

(declare-fun bs!137702 () Bool)

(assert (= bs!137702 (and d!232952 d!232798)))

(assert (=> bs!137702 (= lambda!21583 lambda!21556)))

(declare-fun bs!137703 () Bool)

(assert (= bs!137703 (and d!232952 d!232782)))

(assert (=> bs!137703 (= lambda!21583 lambda!21555)))

(declare-fun bs!137704 () Bool)

(assert (= bs!137704 (and d!232952 d!232770)))

(assert (=> bs!137704 (= lambda!21583 lambda!21553)))

(declare-fun bs!137705 () Bool)

(assert (= bs!137705 (and d!232952 d!232844)))

(assert (=> bs!137705 (= lambda!21583 lambda!21564)))

(declare-fun bs!137706 () Bool)

(assert (= bs!137706 (and d!232952 d!232768)))

(assert (=> bs!137706 (= lambda!21583 lambda!21552)))

(declare-fun bs!137707 () Bool)

(assert (= bs!137707 (and d!232952 d!232808)))

(assert (=> bs!137707 (= lambda!21583 lambda!21557)))

(declare-fun bs!137708 () Bool)

(assert (= bs!137708 (and d!232952 d!232920)))

(assert (=> bs!137708 (= lambda!21583 lambda!21581)))

(declare-fun bs!137709 () Bool)

(assert (= bs!137709 (and d!232952 d!232880)))

(assert (=> bs!137709 (= lambda!21583 lambda!21574)))

(declare-fun bs!137710 () Bool)

(assert (= bs!137710 (and d!232952 d!232726)))

(assert (=> bs!137710 (= lambda!21583 lambda!21542)))

(declare-fun bs!137711 () Bool)

(assert (= bs!137711 (and d!232952 d!232906)))

(assert (=> bs!137711 (= lambda!21583 lambda!21576)))

(declare-fun bs!137712 () Bool)

(assert (= bs!137712 (and d!232952 d!232856)))

(assert (=> bs!137712 (= lambda!21583 lambda!21565)))

(declare-fun bs!137713 () Bool)

(assert (= bs!137713 (and d!232952 d!232878)))

(assert (=> bs!137713 (= lambda!21583 lambda!21573)))

(declare-fun bs!137714 () Bool)

(assert (= bs!137714 (and d!232952 d!232916)))

(assert (=> bs!137714 (= lambda!21583 lambda!21580)))

(declare-fun bs!137715 () Bool)

(assert (= bs!137715 (and d!232952 d!232774)))

(assert (=> bs!137715 (= lambda!21583 lambda!21554)))

(declare-fun bs!137716 () Bool)

(assert (= bs!137716 (and d!232952 d!232928)))

(assert (=> bs!137716 (= lambda!21583 lambda!21582)))

(declare-fun bs!137717 () Bool)

(assert (= bs!137717 (and d!232952 d!232858)))

(assert (=> bs!137717 (= lambda!21583 lambda!21566)))

(declare-fun bs!137718 () Bool)

(assert (= bs!137718 (and d!232952 d!232912)))

(assert (=> bs!137718 (= lambda!21583 lambda!21578)))

(declare-fun bs!137719 () Bool)

(assert (= bs!137719 (and d!232952 d!232722)))

(assert (=> bs!137719 (= lambda!21583 lambda!21541)))

(declare-fun bs!137720 () Bool)

(assert (= bs!137720 (and d!232952 d!232908)))

(assert (=> bs!137720 (= lambda!21583 lambda!21577)))

(declare-fun bs!137721 () Bool)

(assert (= bs!137721 (and d!232952 d!232728)))

(assert (=> bs!137721 (= lambda!21583 lambda!21543)))

(assert (=> d!232952 (= (inv!9640 (_1!4379 (_1!4380 (h!12919 mapValue!3127)))) (forall!1957 (exprs!747 (_1!4379 (_1!4380 (h!12919 mapValue!3127)))) lambda!21583))))

(declare-fun bs!137722 () Bool)

(assert (= bs!137722 d!232952))

(declare-fun m!949351 () Bool)

(assert (=> bs!137722 m!949351))

(assert (=> b!692550 d!232952))

(assert (=> b!692396 d!232778))

(assert (=> b!692396 d!232710))

(assert (=> b!692396 d!232646))

(assert (=> b!692415 d!232898))

(assert (=> b!692415 d!232818))

(declare-fun d!232954 () Bool)

(assert (=> d!232954 (= (list!3151 (_1!4376 lt!284955)) (list!3154 (c!121615 (_1!4376 lt!284955))))))

(declare-fun bs!137723 () Bool)

(assert (= bs!137723 d!232954))

(declare-fun m!949353 () Bool)

(assert (=> bs!137723 m!949353))

(assert (=> b!692380 d!232954))

(assert (=> b!692380 d!232902))

(assert (=> b!692380 d!232648))

(assert (=> b!692392 d!232712))

(assert (=> b!692392 d!232714))

(assert (=> b!692392 d!232716))

(assert (=> b!692392 d!232718))

(assert (=> b!692392 d!232720))

(assert (=> b!692376 d!232900))

(assert (=> b!692376 d!232648))

(declare-fun bs!137724 () Bool)

(declare-fun d!232956 () Bool)

(assert (= bs!137724 (and d!232956 d!232746)))

(declare-fun lambda!21584 () Int)

(assert (=> bs!137724 (= lambda!21584 lambda!21544)))

(declare-fun bs!137725 () Bool)

(assert (= bs!137725 (and d!232956 d!232914)))

(assert (=> bs!137725 (= lambda!21584 lambda!21579)))

(declare-fun bs!137726 () Bool)

(assert (= bs!137726 (and d!232956 d!232886)))

(assert (=> bs!137726 (= lambda!21584 lambda!21575)))

(declare-fun bs!137727 () Bool)

(assert (= bs!137727 (and d!232956 d!232798)))

(assert (=> bs!137727 (= lambda!21584 lambda!21556)))

(declare-fun bs!137728 () Bool)

(assert (= bs!137728 (and d!232956 d!232782)))

(assert (=> bs!137728 (= lambda!21584 lambda!21555)))

(declare-fun bs!137729 () Bool)

(assert (= bs!137729 (and d!232956 d!232770)))

(assert (=> bs!137729 (= lambda!21584 lambda!21553)))

(declare-fun bs!137730 () Bool)

(assert (= bs!137730 (and d!232956 d!232844)))

(assert (=> bs!137730 (= lambda!21584 lambda!21564)))

(declare-fun bs!137731 () Bool)

(assert (= bs!137731 (and d!232956 d!232768)))

(assert (=> bs!137731 (= lambda!21584 lambda!21552)))

(declare-fun bs!137732 () Bool)

(assert (= bs!137732 (and d!232956 d!232808)))

(assert (=> bs!137732 (= lambda!21584 lambda!21557)))

(declare-fun bs!137733 () Bool)

(assert (= bs!137733 (and d!232956 d!232920)))

(assert (=> bs!137733 (= lambda!21584 lambda!21581)))

(declare-fun bs!137734 () Bool)

(assert (= bs!137734 (and d!232956 d!232880)))

(assert (=> bs!137734 (= lambda!21584 lambda!21574)))

(declare-fun bs!137735 () Bool)

(assert (= bs!137735 (and d!232956 d!232726)))

(assert (=> bs!137735 (= lambda!21584 lambda!21542)))

(declare-fun bs!137736 () Bool)

(assert (= bs!137736 (and d!232956 d!232906)))

(assert (=> bs!137736 (= lambda!21584 lambda!21576)))

(declare-fun bs!137737 () Bool)

(assert (= bs!137737 (and d!232956 d!232856)))

(assert (=> bs!137737 (= lambda!21584 lambda!21565)))

(declare-fun bs!137738 () Bool)

(assert (= bs!137738 (and d!232956 d!232878)))

(assert (=> bs!137738 (= lambda!21584 lambda!21573)))

(declare-fun bs!137739 () Bool)

(assert (= bs!137739 (and d!232956 d!232916)))

(assert (=> bs!137739 (= lambda!21584 lambda!21580)))

(declare-fun bs!137740 () Bool)

(assert (= bs!137740 (and d!232956 d!232952)))

(assert (=> bs!137740 (= lambda!21584 lambda!21583)))

(declare-fun bs!137741 () Bool)

(assert (= bs!137741 (and d!232956 d!232774)))

(assert (=> bs!137741 (= lambda!21584 lambda!21554)))

(declare-fun bs!137742 () Bool)

(assert (= bs!137742 (and d!232956 d!232928)))

(assert (=> bs!137742 (= lambda!21584 lambda!21582)))

(declare-fun bs!137743 () Bool)

(assert (= bs!137743 (and d!232956 d!232858)))

(assert (=> bs!137743 (= lambda!21584 lambda!21566)))

(declare-fun bs!137744 () Bool)

(assert (= bs!137744 (and d!232956 d!232912)))

(assert (=> bs!137744 (= lambda!21584 lambda!21578)))

(declare-fun bs!137745 () Bool)

(assert (= bs!137745 (and d!232956 d!232722)))

(assert (=> bs!137745 (= lambda!21584 lambda!21541)))

(declare-fun bs!137746 () Bool)

(assert (= bs!137746 (and d!232956 d!232908)))

(assert (=> bs!137746 (= lambda!21584 lambda!21577)))

(declare-fun bs!137747 () Bool)

(assert (= bs!137747 (and d!232956 d!232728)))

(assert (=> bs!137747 (= lambda!21584 lambda!21543)))

(assert (=> d!232956 (= (inv!9640 (_2!4377 (_1!4378 (h!12918 mapValue!3125)))) (forall!1957 (exprs!747 (_2!4377 (_1!4378 (h!12918 mapValue!3125)))) lambda!21584))))

(declare-fun bs!137748 () Bool)

(assert (= bs!137748 d!232956))

(declare-fun m!949355 () Bool)

(assert (=> bs!137748 m!949355))

(assert (=> b!692492 d!232956))

(declare-fun d!232958 () Bool)

(assert (=> d!232958 (= (list!3151 (_1!4376 lt!284946)) (list!3154 (c!121615 (_1!4376 lt!284946))))))

(declare-fun bs!137749 () Bool)

(assert (= bs!137749 d!232958))

(declare-fun m!949357 () Bool)

(assert (=> bs!137749 m!949357))

(assert (=> b!692326 d!232958))

(assert (=> b!692326 d!232870))

(assert (=> b!692326 d!232650))

(declare-fun bs!137750 () Bool)

(declare-fun d!232960 () Bool)

(assert (= bs!137750 (and d!232960 d!232746)))

(declare-fun lambda!21585 () Int)

(assert (=> bs!137750 (= lambda!21585 lambda!21544)))

(declare-fun bs!137751 () Bool)

(assert (= bs!137751 (and d!232960 d!232914)))

(assert (=> bs!137751 (= lambda!21585 lambda!21579)))

(declare-fun bs!137752 () Bool)

(assert (= bs!137752 (and d!232960 d!232956)))

(assert (=> bs!137752 (= lambda!21585 lambda!21584)))

(declare-fun bs!137753 () Bool)

(assert (= bs!137753 (and d!232960 d!232886)))

(assert (=> bs!137753 (= lambda!21585 lambda!21575)))

(declare-fun bs!137754 () Bool)

(assert (= bs!137754 (and d!232960 d!232798)))

(assert (=> bs!137754 (= lambda!21585 lambda!21556)))

(declare-fun bs!137755 () Bool)

(assert (= bs!137755 (and d!232960 d!232782)))

(assert (=> bs!137755 (= lambda!21585 lambda!21555)))

(declare-fun bs!137756 () Bool)

(assert (= bs!137756 (and d!232960 d!232770)))

(assert (=> bs!137756 (= lambda!21585 lambda!21553)))

(declare-fun bs!137757 () Bool)

(assert (= bs!137757 (and d!232960 d!232844)))

(assert (=> bs!137757 (= lambda!21585 lambda!21564)))

(declare-fun bs!137758 () Bool)

(assert (= bs!137758 (and d!232960 d!232768)))

(assert (=> bs!137758 (= lambda!21585 lambda!21552)))

(declare-fun bs!137759 () Bool)

(assert (= bs!137759 (and d!232960 d!232808)))

(assert (=> bs!137759 (= lambda!21585 lambda!21557)))

(declare-fun bs!137760 () Bool)

(assert (= bs!137760 (and d!232960 d!232920)))

(assert (=> bs!137760 (= lambda!21585 lambda!21581)))

(declare-fun bs!137761 () Bool)

(assert (= bs!137761 (and d!232960 d!232880)))

(assert (=> bs!137761 (= lambda!21585 lambda!21574)))

(declare-fun bs!137762 () Bool)

(assert (= bs!137762 (and d!232960 d!232726)))

(assert (=> bs!137762 (= lambda!21585 lambda!21542)))

(declare-fun bs!137763 () Bool)

(assert (= bs!137763 (and d!232960 d!232906)))

(assert (=> bs!137763 (= lambda!21585 lambda!21576)))

(declare-fun bs!137764 () Bool)

(assert (= bs!137764 (and d!232960 d!232856)))

(assert (=> bs!137764 (= lambda!21585 lambda!21565)))

(declare-fun bs!137765 () Bool)

(assert (= bs!137765 (and d!232960 d!232878)))

(assert (=> bs!137765 (= lambda!21585 lambda!21573)))

(declare-fun bs!137766 () Bool)

(assert (= bs!137766 (and d!232960 d!232916)))

(assert (=> bs!137766 (= lambda!21585 lambda!21580)))

(declare-fun bs!137767 () Bool)

(assert (= bs!137767 (and d!232960 d!232952)))

(assert (=> bs!137767 (= lambda!21585 lambda!21583)))

(declare-fun bs!137768 () Bool)

(assert (= bs!137768 (and d!232960 d!232774)))

(assert (=> bs!137768 (= lambda!21585 lambda!21554)))

(declare-fun bs!137769 () Bool)

(assert (= bs!137769 (and d!232960 d!232928)))

(assert (=> bs!137769 (= lambda!21585 lambda!21582)))

(declare-fun bs!137770 () Bool)

(assert (= bs!137770 (and d!232960 d!232858)))

(assert (=> bs!137770 (= lambda!21585 lambda!21566)))

(declare-fun bs!137771 () Bool)

(assert (= bs!137771 (and d!232960 d!232912)))

(assert (=> bs!137771 (= lambda!21585 lambda!21578)))

(declare-fun bs!137772 () Bool)

(assert (= bs!137772 (and d!232960 d!232722)))

(assert (=> bs!137772 (= lambda!21585 lambda!21541)))

(declare-fun bs!137773 () Bool)

(assert (= bs!137773 (and d!232960 d!232908)))

(assert (=> bs!137773 (= lambda!21585 lambda!21577)))

(declare-fun bs!137774 () Bool)

(assert (= bs!137774 (and d!232960 d!232728)))

(assert (=> bs!137774 (= lambda!21585 lambda!21543)))

(assert (=> d!232960 (= (inv!9640 (_2!4377 (_1!4378 (h!12918 mapDefault!3126)))) (forall!1957 (exprs!747 (_2!4377 (_1!4378 (h!12918 mapDefault!3126)))) lambda!21585))))

(declare-fun bs!137775 () Bool)

(assert (= bs!137775 d!232960))

(declare-fun m!949359 () Bool)

(assert (=> bs!137775 m!949359))

(assert (=> b!692520 d!232960))

(declare-fun bs!137776 () Bool)

(declare-fun d!232962 () Bool)

(assert (= bs!137776 (and d!232962 d!232746)))

(declare-fun lambda!21586 () Int)

(assert (=> bs!137776 (= lambda!21586 lambda!21544)))

(declare-fun bs!137777 () Bool)

(assert (= bs!137777 (and d!232962 d!232914)))

(assert (=> bs!137777 (= lambda!21586 lambda!21579)))

(declare-fun bs!137778 () Bool)

(assert (= bs!137778 (and d!232962 d!232956)))

(assert (=> bs!137778 (= lambda!21586 lambda!21584)))

(declare-fun bs!137779 () Bool)

(assert (= bs!137779 (and d!232962 d!232886)))

(assert (=> bs!137779 (= lambda!21586 lambda!21575)))

(declare-fun bs!137780 () Bool)

(assert (= bs!137780 (and d!232962 d!232798)))

(assert (=> bs!137780 (= lambda!21586 lambda!21556)))

(declare-fun bs!137781 () Bool)

(assert (= bs!137781 (and d!232962 d!232782)))

(assert (=> bs!137781 (= lambda!21586 lambda!21555)))

(declare-fun bs!137782 () Bool)

(assert (= bs!137782 (and d!232962 d!232960)))

(assert (=> bs!137782 (= lambda!21586 lambda!21585)))

(declare-fun bs!137783 () Bool)

(assert (= bs!137783 (and d!232962 d!232770)))

(assert (=> bs!137783 (= lambda!21586 lambda!21553)))

(declare-fun bs!137784 () Bool)

(assert (= bs!137784 (and d!232962 d!232844)))

(assert (=> bs!137784 (= lambda!21586 lambda!21564)))

(declare-fun bs!137785 () Bool)

(assert (= bs!137785 (and d!232962 d!232768)))

(assert (=> bs!137785 (= lambda!21586 lambda!21552)))

(declare-fun bs!137786 () Bool)

(assert (= bs!137786 (and d!232962 d!232808)))

(assert (=> bs!137786 (= lambda!21586 lambda!21557)))

(declare-fun bs!137787 () Bool)

(assert (= bs!137787 (and d!232962 d!232920)))

(assert (=> bs!137787 (= lambda!21586 lambda!21581)))

(declare-fun bs!137788 () Bool)

(assert (= bs!137788 (and d!232962 d!232880)))

(assert (=> bs!137788 (= lambda!21586 lambda!21574)))

(declare-fun bs!137789 () Bool)

(assert (= bs!137789 (and d!232962 d!232726)))

(assert (=> bs!137789 (= lambda!21586 lambda!21542)))

(declare-fun bs!137790 () Bool)

(assert (= bs!137790 (and d!232962 d!232906)))

(assert (=> bs!137790 (= lambda!21586 lambda!21576)))

(declare-fun bs!137791 () Bool)

(assert (= bs!137791 (and d!232962 d!232856)))

(assert (=> bs!137791 (= lambda!21586 lambda!21565)))

(declare-fun bs!137792 () Bool)

(assert (= bs!137792 (and d!232962 d!232878)))

(assert (=> bs!137792 (= lambda!21586 lambda!21573)))

(declare-fun bs!137793 () Bool)

(assert (= bs!137793 (and d!232962 d!232916)))

(assert (=> bs!137793 (= lambda!21586 lambda!21580)))

(declare-fun bs!137794 () Bool)

(assert (= bs!137794 (and d!232962 d!232952)))

(assert (=> bs!137794 (= lambda!21586 lambda!21583)))

(declare-fun bs!137795 () Bool)

(assert (= bs!137795 (and d!232962 d!232774)))

(assert (=> bs!137795 (= lambda!21586 lambda!21554)))

(declare-fun bs!137796 () Bool)

(assert (= bs!137796 (and d!232962 d!232928)))

(assert (=> bs!137796 (= lambda!21586 lambda!21582)))

(declare-fun bs!137797 () Bool)

(assert (= bs!137797 (and d!232962 d!232858)))

(assert (=> bs!137797 (= lambda!21586 lambda!21566)))

(declare-fun bs!137798 () Bool)

(assert (= bs!137798 (and d!232962 d!232912)))

(assert (=> bs!137798 (= lambda!21586 lambda!21578)))

(declare-fun bs!137799 () Bool)

(assert (= bs!137799 (and d!232962 d!232722)))

(assert (=> bs!137799 (= lambda!21586 lambda!21541)))

(declare-fun bs!137800 () Bool)

(assert (= bs!137800 (and d!232962 d!232908)))

(assert (=> bs!137800 (= lambda!21586 lambda!21577)))

(declare-fun bs!137801 () Bool)

(assert (= bs!137801 (and d!232962 d!232728)))

(assert (=> bs!137801 (= lambda!21586 lambda!21543)))

(assert (=> d!232962 (= (inv!9640 setElem!3830) (forall!1957 (exprs!747 setElem!3830) lambda!21586))))

(declare-fun bs!137802 () Bool)

(assert (= bs!137802 d!232962))

(declare-fun m!949361 () Bool)

(assert (=> bs!137802 m!949361))

(assert (=> setNonEmpty!3830 d!232962))

(declare-fun d!232964 () Bool)

(declare-fun lt!285083 () Bool)

(assert (=> d!232964 (= lt!285083 (isEmpty!4884 (list!3151 (_1!4376 lt!284955))))))

(assert (=> d!232964 (= lt!285083 (isEmpty!4883 (c!121615 (_1!4376 lt!284955))))))

(assert (=> d!232964 (= (isEmpty!4882 (_1!4376 lt!284955)) lt!285083)))

(declare-fun bs!137803 () Bool)

(assert (= bs!137803 d!232964))

(assert (=> bs!137803 m!948462))

(assert (=> bs!137803 m!948462))

(declare-fun m!949363 () Bool)

(assert (=> bs!137803 m!949363))

(declare-fun m!949365 () Bool)

(assert (=> bs!137803 m!949365))

(assert (=> b!692381 d!232964))

(declare-fun d!232966 () Bool)

(declare-fun res!314154 () Bool)

(declare-fun e!436144 () Bool)

(assert (=> d!232966 (=> (not res!314154) (not e!436144))))

(assert (=> d!232966 (= res!314154 (<= (size!6147 (list!3156 (xs!5303 (c!121615 acc!372)))) 512))))

(assert (=> d!232966 (= (inv!9637 (c!121615 acc!372)) e!436144)))

(declare-fun b!693082 () Bool)

(declare-fun res!314155 () Bool)

(assert (=> b!693082 (=> (not res!314155) (not e!436144))))

(assert (=> b!693082 (= res!314155 (= (csize!5535 (c!121615 acc!372)) (size!6147 (list!3156 (xs!5303 (c!121615 acc!372))))))))

(declare-fun b!693083 () Bool)

(assert (=> b!693083 (= e!436144 (and (> (csize!5535 (c!121615 acc!372)) 0) (<= (csize!5535 (c!121615 acc!372)) 512)))))

(assert (= (and d!232966 res!314154) b!693082))

(assert (= (and b!693082 res!314155) b!693083))

(assert (=> d!232966 m!948942))

(assert (=> d!232966 m!948942))

(declare-fun m!949367 () Bool)

(assert (=> d!232966 m!949367))

(assert (=> b!693082 m!948942))

(assert (=> b!693082 m!948942))

(assert (=> b!693082 m!949367))

(assert (=> b!692336 d!232966))

(declare-fun bs!137804 () Bool)

(declare-fun d!232968 () Bool)

(assert (= bs!137804 (and d!232968 d!232746)))

(declare-fun lambda!21587 () Int)

(assert (=> bs!137804 (= lambda!21587 lambda!21544)))

(declare-fun bs!137805 () Bool)

(assert (= bs!137805 (and d!232968 d!232914)))

(assert (=> bs!137805 (= lambda!21587 lambda!21579)))

(declare-fun bs!137806 () Bool)

(assert (= bs!137806 (and d!232968 d!232956)))

(assert (=> bs!137806 (= lambda!21587 lambda!21584)))

(declare-fun bs!137807 () Bool)

(assert (= bs!137807 (and d!232968 d!232886)))

(assert (=> bs!137807 (= lambda!21587 lambda!21575)))

(declare-fun bs!137808 () Bool)

(assert (= bs!137808 (and d!232968 d!232798)))

(assert (=> bs!137808 (= lambda!21587 lambda!21556)))

(declare-fun bs!137809 () Bool)

(assert (= bs!137809 (and d!232968 d!232782)))

(assert (=> bs!137809 (= lambda!21587 lambda!21555)))

(declare-fun bs!137810 () Bool)

(assert (= bs!137810 (and d!232968 d!232960)))

(assert (=> bs!137810 (= lambda!21587 lambda!21585)))

(declare-fun bs!137811 () Bool)

(assert (= bs!137811 (and d!232968 d!232770)))

(assert (=> bs!137811 (= lambda!21587 lambda!21553)))

(declare-fun bs!137812 () Bool)

(assert (= bs!137812 (and d!232968 d!232844)))

(assert (=> bs!137812 (= lambda!21587 lambda!21564)))

(declare-fun bs!137813 () Bool)

(assert (= bs!137813 (and d!232968 d!232768)))

(assert (=> bs!137813 (= lambda!21587 lambda!21552)))

(declare-fun bs!137814 () Bool)

(assert (= bs!137814 (and d!232968 d!232808)))

(assert (=> bs!137814 (= lambda!21587 lambda!21557)))

(declare-fun bs!137815 () Bool)

(assert (= bs!137815 (and d!232968 d!232920)))

(assert (=> bs!137815 (= lambda!21587 lambda!21581)))

(declare-fun bs!137816 () Bool)

(assert (= bs!137816 (and d!232968 d!232880)))

(assert (=> bs!137816 (= lambda!21587 lambda!21574)))

(declare-fun bs!137817 () Bool)

(assert (= bs!137817 (and d!232968 d!232726)))

(assert (=> bs!137817 (= lambda!21587 lambda!21542)))

(declare-fun bs!137818 () Bool)

(assert (= bs!137818 (and d!232968 d!232906)))

(assert (=> bs!137818 (= lambda!21587 lambda!21576)))

(declare-fun bs!137819 () Bool)

(assert (= bs!137819 (and d!232968 d!232856)))

(assert (=> bs!137819 (= lambda!21587 lambda!21565)))

(declare-fun bs!137820 () Bool)

(assert (= bs!137820 (and d!232968 d!232878)))

(assert (=> bs!137820 (= lambda!21587 lambda!21573)))

(declare-fun bs!137821 () Bool)

(assert (= bs!137821 (and d!232968 d!232916)))

(assert (=> bs!137821 (= lambda!21587 lambda!21580)))

(declare-fun bs!137822 () Bool)

(assert (= bs!137822 (and d!232968 d!232952)))

(assert (=> bs!137822 (= lambda!21587 lambda!21583)))

(declare-fun bs!137823 () Bool)

(assert (= bs!137823 (and d!232968 d!232774)))

(assert (=> bs!137823 (= lambda!21587 lambda!21554)))

(declare-fun bs!137824 () Bool)

(assert (= bs!137824 (and d!232968 d!232928)))

(assert (=> bs!137824 (= lambda!21587 lambda!21582)))

(declare-fun bs!137825 () Bool)

(assert (= bs!137825 (and d!232968 d!232962)))

(assert (=> bs!137825 (= lambda!21587 lambda!21586)))

(declare-fun bs!137826 () Bool)

(assert (= bs!137826 (and d!232968 d!232858)))

(assert (=> bs!137826 (= lambda!21587 lambda!21566)))

(declare-fun bs!137827 () Bool)

(assert (= bs!137827 (and d!232968 d!232912)))

(assert (=> bs!137827 (= lambda!21587 lambda!21578)))

(declare-fun bs!137828 () Bool)

(assert (= bs!137828 (and d!232968 d!232722)))

(assert (=> bs!137828 (= lambda!21587 lambda!21541)))

(declare-fun bs!137829 () Bool)

(assert (= bs!137829 (and d!232968 d!232908)))

(assert (=> bs!137829 (= lambda!21587 lambda!21577)))

(declare-fun bs!137830 () Bool)

(assert (= bs!137830 (and d!232968 d!232728)))

(assert (=> bs!137830 (= lambda!21587 lambda!21543)))

(assert (=> d!232968 (= (inv!9640 setElem!3812) (forall!1957 (exprs!747 setElem!3812) lambda!21587))))

(declare-fun bs!137831 () Bool)

(assert (= bs!137831 d!232968))

(declare-fun m!949369 () Bool)

(assert (=> bs!137831 m!949369))

(assert (=> setNonEmpty!3812 d!232968))

(declare-fun bs!137832 () Bool)

(declare-fun d!232970 () Bool)

(assert (= bs!137832 (and d!232970 d!232746)))

(declare-fun lambda!21588 () Int)

(assert (=> bs!137832 (= lambda!21588 lambda!21544)))

(declare-fun bs!137833 () Bool)

(assert (= bs!137833 (and d!232970 d!232914)))

(assert (=> bs!137833 (= lambda!21588 lambda!21579)))

(declare-fun bs!137834 () Bool)

(assert (= bs!137834 (and d!232970 d!232956)))

(assert (=> bs!137834 (= lambda!21588 lambda!21584)))

(declare-fun bs!137835 () Bool)

(assert (= bs!137835 (and d!232970 d!232886)))

(assert (=> bs!137835 (= lambda!21588 lambda!21575)))

(declare-fun bs!137836 () Bool)

(assert (= bs!137836 (and d!232970 d!232968)))

(assert (=> bs!137836 (= lambda!21588 lambda!21587)))

(declare-fun bs!137837 () Bool)

(assert (= bs!137837 (and d!232970 d!232798)))

(assert (=> bs!137837 (= lambda!21588 lambda!21556)))

(declare-fun bs!137838 () Bool)

(assert (= bs!137838 (and d!232970 d!232782)))

(assert (=> bs!137838 (= lambda!21588 lambda!21555)))

(declare-fun bs!137839 () Bool)

(assert (= bs!137839 (and d!232970 d!232960)))

(assert (=> bs!137839 (= lambda!21588 lambda!21585)))

(declare-fun bs!137840 () Bool)

(assert (= bs!137840 (and d!232970 d!232770)))

(assert (=> bs!137840 (= lambda!21588 lambda!21553)))

(declare-fun bs!137841 () Bool)

(assert (= bs!137841 (and d!232970 d!232844)))

(assert (=> bs!137841 (= lambda!21588 lambda!21564)))

(declare-fun bs!137842 () Bool)

(assert (= bs!137842 (and d!232970 d!232768)))

(assert (=> bs!137842 (= lambda!21588 lambda!21552)))

(declare-fun bs!137843 () Bool)

(assert (= bs!137843 (and d!232970 d!232808)))

(assert (=> bs!137843 (= lambda!21588 lambda!21557)))

(declare-fun bs!137844 () Bool)

(assert (= bs!137844 (and d!232970 d!232920)))

(assert (=> bs!137844 (= lambda!21588 lambda!21581)))

(declare-fun bs!137845 () Bool)

(assert (= bs!137845 (and d!232970 d!232880)))

(assert (=> bs!137845 (= lambda!21588 lambda!21574)))

(declare-fun bs!137846 () Bool)

(assert (= bs!137846 (and d!232970 d!232726)))

(assert (=> bs!137846 (= lambda!21588 lambda!21542)))

(declare-fun bs!137847 () Bool)

(assert (= bs!137847 (and d!232970 d!232906)))

(assert (=> bs!137847 (= lambda!21588 lambda!21576)))

(declare-fun bs!137848 () Bool)

(assert (= bs!137848 (and d!232970 d!232856)))

(assert (=> bs!137848 (= lambda!21588 lambda!21565)))

(declare-fun bs!137849 () Bool)

(assert (= bs!137849 (and d!232970 d!232878)))

(assert (=> bs!137849 (= lambda!21588 lambda!21573)))

(declare-fun bs!137850 () Bool)

(assert (= bs!137850 (and d!232970 d!232916)))

(assert (=> bs!137850 (= lambda!21588 lambda!21580)))

(declare-fun bs!137851 () Bool)

(assert (= bs!137851 (and d!232970 d!232952)))

(assert (=> bs!137851 (= lambda!21588 lambda!21583)))

(declare-fun bs!137852 () Bool)

(assert (= bs!137852 (and d!232970 d!232774)))

(assert (=> bs!137852 (= lambda!21588 lambda!21554)))

(declare-fun bs!137853 () Bool)

(assert (= bs!137853 (and d!232970 d!232928)))

(assert (=> bs!137853 (= lambda!21588 lambda!21582)))

(declare-fun bs!137854 () Bool)

(assert (= bs!137854 (and d!232970 d!232962)))

(assert (=> bs!137854 (= lambda!21588 lambda!21586)))

(declare-fun bs!137855 () Bool)

(assert (= bs!137855 (and d!232970 d!232858)))

(assert (=> bs!137855 (= lambda!21588 lambda!21566)))

(declare-fun bs!137856 () Bool)

(assert (= bs!137856 (and d!232970 d!232912)))

(assert (=> bs!137856 (= lambda!21588 lambda!21578)))

(declare-fun bs!137857 () Bool)

(assert (= bs!137857 (and d!232970 d!232722)))

(assert (=> bs!137857 (= lambda!21588 lambda!21541)))

(declare-fun bs!137858 () Bool)

(assert (= bs!137858 (and d!232970 d!232908)))

(assert (=> bs!137858 (= lambda!21588 lambda!21577)))

(declare-fun bs!137859 () Bool)

(assert (= bs!137859 (and d!232970 d!232728)))

(assert (=> bs!137859 (= lambda!21588 lambda!21543)))

(assert (=> d!232970 (= (inv!9640 setElem!3811) (forall!1957 (exprs!747 setElem!3811) lambda!21588))))

(declare-fun bs!137860 () Bool)

(assert (= bs!137860 d!232970))

(declare-fun m!949371 () Bool)

(assert (=> bs!137860 m!949371))

(assert (=> setNonEmpty!3811 d!232970))

(declare-fun d!232972 () Bool)

(assert (=> d!232972 (= (inv!9642 (xs!5303 (c!121615 acc!372))) (<= (size!6147 (innerList!2710 (xs!5303 (c!121615 acc!372)))) 2147483647))))

(declare-fun bs!137861 () Bool)

(assert (= bs!137861 d!232972))

(declare-fun m!949373 () Bool)

(assert (=> bs!137861 m!949373))

(assert (=> b!692503 d!232972))

(declare-fun bs!137862 () Bool)

(declare-fun d!232974 () Bool)

(assert (= bs!137862 (and d!232974 d!232746)))

(declare-fun lambda!21589 () Int)

(assert (=> bs!137862 (= lambda!21589 lambda!21544)))

(declare-fun bs!137863 () Bool)

(assert (= bs!137863 (and d!232974 d!232914)))

(assert (=> bs!137863 (= lambda!21589 lambda!21579)))

(declare-fun bs!137864 () Bool)

(assert (= bs!137864 (and d!232974 d!232956)))

(assert (=> bs!137864 (= lambda!21589 lambda!21584)))

(declare-fun bs!137865 () Bool)

(assert (= bs!137865 (and d!232974 d!232886)))

(assert (=> bs!137865 (= lambda!21589 lambda!21575)))

(declare-fun bs!137866 () Bool)

(assert (= bs!137866 (and d!232974 d!232968)))

(assert (=> bs!137866 (= lambda!21589 lambda!21587)))

(declare-fun bs!137867 () Bool)

(assert (= bs!137867 (and d!232974 d!232798)))

(assert (=> bs!137867 (= lambda!21589 lambda!21556)))

(declare-fun bs!137868 () Bool)

(assert (= bs!137868 (and d!232974 d!232782)))

(assert (=> bs!137868 (= lambda!21589 lambda!21555)))

(declare-fun bs!137869 () Bool)

(assert (= bs!137869 (and d!232974 d!232960)))

(assert (=> bs!137869 (= lambda!21589 lambda!21585)))

(declare-fun bs!137870 () Bool)

(assert (= bs!137870 (and d!232974 d!232770)))

(assert (=> bs!137870 (= lambda!21589 lambda!21553)))

(declare-fun bs!137871 () Bool)

(assert (= bs!137871 (and d!232974 d!232844)))

(assert (=> bs!137871 (= lambda!21589 lambda!21564)))

(declare-fun bs!137872 () Bool)

(assert (= bs!137872 (and d!232974 d!232768)))

(assert (=> bs!137872 (= lambda!21589 lambda!21552)))

(declare-fun bs!137873 () Bool)

(assert (= bs!137873 (and d!232974 d!232808)))

(assert (=> bs!137873 (= lambda!21589 lambda!21557)))

(declare-fun bs!137874 () Bool)

(assert (= bs!137874 (and d!232974 d!232920)))

(assert (=> bs!137874 (= lambda!21589 lambda!21581)))

(declare-fun bs!137875 () Bool)

(assert (= bs!137875 (and d!232974 d!232880)))

(assert (=> bs!137875 (= lambda!21589 lambda!21574)))

(declare-fun bs!137876 () Bool)

(assert (= bs!137876 (and d!232974 d!232726)))

(assert (=> bs!137876 (= lambda!21589 lambda!21542)))

(declare-fun bs!137877 () Bool)

(assert (= bs!137877 (and d!232974 d!232906)))

(assert (=> bs!137877 (= lambda!21589 lambda!21576)))

(declare-fun bs!137878 () Bool)

(assert (= bs!137878 (and d!232974 d!232856)))

(assert (=> bs!137878 (= lambda!21589 lambda!21565)))

(declare-fun bs!137879 () Bool)

(assert (= bs!137879 (and d!232974 d!232970)))

(assert (=> bs!137879 (= lambda!21589 lambda!21588)))

(declare-fun bs!137880 () Bool)

(assert (= bs!137880 (and d!232974 d!232878)))

(assert (=> bs!137880 (= lambda!21589 lambda!21573)))

(declare-fun bs!137881 () Bool)

(assert (= bs!137881 (and d!232974 d!232916)))

(assert (=> bs!137881 (= lambda!21589 lambda!21580)))

(declare-fun bs!137882 () Bool)

(assert (= bs!137882 (and d!232974 d!232952)))

(assert (=> bs!137882 (= lambda!21589 lambda!21583)))

(declare-fun bs!137883 () Bool)

(assert (= bs!137883 (and d!232974 d!232774)))

(assert (=> bs!137883 (= lambda!21589 lambda!21554)))

(declare-fun bs!137884 () Bool)

(assert (= bs!137884 (and d!232974 d!232928)))

(assert (=> bs!137884 (= lambda!21589 lambda!21582)))

(declare-fun bs!137885 () Bool)

(assert (= bs!137885 (and d!232974 d!232962)))

(assert (=> bs!137885 (= lambda!21589 lambda!21586)))

(declare-fun bs!137886 () Bool)

(assert (= bs!137886 (and d!232974 d!232858)))

(assert (=> bs!137886 (= lambda!21589 lambda!21566)))

(declare-fun bs!137887 () Bool)

(assert (= bs!137887 (and d!232974 d!232912)))

(assert (=> bs!137887 (= lambda!21589 lambda!21578)))

(declare-fun bs!137888 () Bool)

(assert (= bs!137888 (and d!232974 d!232722)))

(assert (=> bs!137888 (= lambda!21589 lambda!21541)))

(declare-fun bs!137889 () Bool)

(assert (= bs!137889 (and d!232974 d!232908)))

(assert (=> bs!137889 (= lambda!21589 lambda!21577)))

(declare-fun bs!137890 () Bool)

(assert (= bs!137890 (and d!232974 d!232728)))

(assert (=> bs!137890 (= lambda!21589 lambda!21543)))

(assert (=> d!232974 (= (inv!9640 (_1!4379 (_1!4380 (h!12919 mapDefault!3127)))) (forall!1957 (exprs!747 (_1!4379 (_1!4380 (h!12919 mapDefault!3127)))) lambda!21589))))

(declare-fun bs!137891 () Bool)

(assert (= bs!137891 d!232974))

(declare-fun m!949375 () Bool)

(assert (=> bs!137891 m!949375))

(assert (=> b!692527 d!232974))

(declare-fun tp!209040 () Bool)

(declare-fun b!693084 () Bool)

(declare-fun tp!209041 () Bool)

(declare-fun e!436145 () Bool)

(assert (=> b!693084 (= e!436145 (and (inv!9629 (left!6006 (left!6006 (c!121614 totalInput!378)))) tp!209040 (inv!9629 (right!6336 (left!6006 (c!121614 totalInput!378)))) tp!209041))))

(declare-fun b!693086 () Bool)

(declare-fun e!436146 () Bool)

(declare-fun tp!209039 () Bool)

(assert (=> b!693086 (= e!436146 tp!209039)))

(declare-fun b!693085 () Bool)

(assert (=> b!693085 (= e!436145 (and (inv!9641 (xs!5302 (left!6006 (c!121614 totalInput!378)))) e!436146))))

(assert (=> b!692452 (= tp!208871 (and (inv!9629 (left!6006 (c!121614 totalInput!378))) e!436145))))

(assert (= (and b!692452 ((_ is Node!2651) (left!6006 (c!121614 totalInput!378)))) b!693084))

(assert (= b!693085 b!693086))

(assert (= (and b!692452 ((_ is Leaf!3927) (left!6006 (c!121614 totalInput!378)))) b!693085))

(declare-fun m!949377 () Bool)

(assert (=> b!693084 m!949377))

(declare-fun m!949379 () Bool)

(assert (=> b!693084 m!949379))

(declare-fun m!949381 () Bool)

(assert (=> b!693085 m!949381))

(assert (=> b!692452 m!948566))

(declare-fun tp!209043 () Bool)

(declare-fun e!436147 () Bool)

(declare-fun b!693087 () Bool)

(declare-fun tp!209044 () Bool)

(assert (=> b!693087 (= e!436147 (and (inv!9629 (left!6006 (right!6336 (c!121614 totalInput!378)))) tp!209043 (inv!9629 (right!6336 (right!6336 (c!121614 totalInput!378)))) tp!209044))))

(declare-fun b!693089 () Bool)

(declare-fun e!436148 () Bool)

(declare-fun tp!209042 () Bool)

(assert (=> b!693089 (= e!436148 tp!209042)))

(declare-fun b!693088 () Bool)

(assert (=> b!693088 (= e!436147 (and (inv!9641 (xs!5302 (right!6336 (c!121614 totalInput!378)))) e!436148))))

(assert (=> b!692452 (= tp!208872 (and (inv!9629 (right!6336 (c!121614 totalInput!378))) e!436147))))

(assert (= (and b!692452 ((_ is Node!2651) (right!6336 (c!121614 totalInput!378)))) b!693087))

(assert (= b!693088 b!693089))

(assert (= (and b!692452 ((_ is Leaf!3927) (right!6336 (c!121614 totalInput!378)))) b!693088))

(declare-fun m!949383 () Bool)

(assert (=> b!693087 m!949383))

(declare-fun m!949385 () Bool)

(assert (=> b!693087 m!949385))

(declare-fun m!949387 () Bool)

(assert (=> b!693088 m!949387))

(assert (=> b!692452 m!948568))

(declare-fun setIsEmpty!3841 () Bool)

(declare-fun setRes!3842 () Bool)

(assert (=> setIsEmpty!3841 setRes!3842))

(declare-fun b!693090 () Bool)

(declare-fun e!436149 () Bool)

(declare-fun e!436152 () Bool)

(declare-fun tp!209052 () Bool)

(declare-fun mapDefault!3137 () List!7532)

(assert (=> b!693090 (= e!436152 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 mapDefault!3137)))) e!436149 tp_is_empty!3647 setRes!3842 tp!209052))))

(declare-fun condSetEmpty!3842 () Bool)

(assert (=> b!693090 (= condSetEmpty!3842 (= (_2!4380 (h!12919 mapDefault!3137)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693091 () Bool)

(declare-fun e!436153 () Bool)

(declare-fun tp!209051 () Bool)

(assert (=> b!693091 (= e!436153 tp!209051)))

(declare-fun b!693092 () Bool)

(declare-fun tp!209047 () Bool)

(assert (=> b!693092 (= e!436149 tp!209047)))

(declare-fun setIsEmpty!3842 () Bool)

(declare-fun setRes!3841 () Bool)

(assert (=> setIsEmpty!3842 setRes!3841))

(declare-fun b!693093 () Bool)

(declare-fun e!436150 () Bool)

(declare-fun tp!209045 () Bool)

(assert (=> b!693093 (= e!436150 tp!209045)))

(declare-fun b!693094 () Bool)

(declare-fun e!436151 () Bool)

(declare-fun tp!209048 () Bool)

(assert (=> b!693094 (= e!436151 tp!209048)))

(declare-fun condMapEmpty!3137 () Bool)

(assert (=> mapNonEmpty!3136 (= condMapEmpty!3137 (= mapRest!3136 ((as const (Array (_ BitVec 32) List!7532)) mapDefault!3137)))))

(declare-fun mapRes!3137 () Bool)

(assert (=> mapNonEmpty!3136 (= tp!209001 (and e!436152 mapRes!3137))))

(declare-fun setNonEmpty!3841 () Bool)

(declare-fun tp!209046 () Bool)

(declare-fun setElem!3842 () Context!494)

(assert (=> setNonEmpty!3841 (= setRes!3841 (and tp!209046 (inv!9640 setElem!3842) e!436150))))

(declare-fun mapValue!3137 () List!7532)

(declare-fun setRest!3842 () (InoxSet Context!494))

(assert (=> setNonEmpty!3841 (= (_2!4380 (h!12919 mapValue!3137)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3842 true) setRest!3842))))

(declare-fun mapIsEmpty!3137 () Bool)

(assert (=> mapIsEmpty!3137 mapRes!3137))

(declare-fun e!436154 () Bool)

(declare-fun b!693095 () Bool)

(declare-fun tp!209049 () Bool)

(assert (=> b!693095 (= e!436154 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 mapValue!3137)))) e!436153 tp_is_empty!3647 setRes!3841 tp!209049))))

(declare-fun condSetEmpty!3841 () Bool)

(assert (=> b!693095 (= condSetEmpty!3841 (= (_2!4380 (h!12919 mapValue!3137)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun setElem!3841 () Context!494)

(declare-fun setNonEmpty!3842 () Bool)

(declare-fun tp!209050 () Bool)

(assert (=> setNonEmpty!3842 (= setRes!3842 (and tp!209050 (inv!9640 setElem!3841) e!436151))))

(declare-fun setRest!3841 () (InoxSet Context!494))

(assert (=> setNonEmpty!3842 (= (_2!4380 (h!12919 mapDefault!3137)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3841 true) setRest!3841))))

(declare-fun mapNonEmpty!3137 () Bool)

(declare-fun tp!209053 () Bool)

(assert (=> mapNonEmpty!3137 (= mapRes!3137 (and tp!209053 e!436154))))

(declare-fun mapRest!3137 () (Array (_ BitVec 32) List!7532))

(declare-fun mapKey!3137 () (_ BitVec 32))

(assert (=> mapNonEmpty!3137 (= mapRest!3136 (store mapRest!3137 mapKey!3137 mapValue!3137))))

(assert (= (and mapNonEmpty!3136 condMapEmpty!3137) mapIsEmpty!3137))

(assert (= (and mapNonEmpty!3136 (not condMapEmpty!3137)) mapNonEmpty!3137))

(assert (= b!693095 b!693091))

(assert (= (and b!693095 condSetEmpty!3841) setIsEmpty!3842))

(assert (= (and b!693095 (not condSetEmpty!3841)) setNonEmpty!3841))

(assert (= setNonEmpty!3841 b!693093))

(assert (= (and mapNonEmpty!3137 ((_ is Cons!7518) mapValue!3137)) b!693095))

(assert (= b!693090 b!693092))

(assert (= (and b!693090 condSetEmpty!3842) setIsEmpty!3841))

(assert (= (and b!693090 (not condSetEmpty!3842)) setNonEmpty!3842))

(assert (= setNonEmpty!3842 b!693094))

(assert (= (and mapNonEmpty!3136 ((_ is Cons!7518) mapDefault!3137)) b!693090))

(declare-fun m!949389 () Bool)

(assert (=> b!693090 m!949389))

(declare-fun m!949391 () Bool)

(assert (=> b!693095 m!949391))

(declare-fun m!949393 () Bool)

(assert (=> setNonEmpty!3842 m!949393))

(declare-fun m!949395 () Bool)

(assert (=> mapNonEmpty!3137 m!949395))

(declare-fun m!949397 () Bool)

(assert (=> setNonEmpty!3841 m!949397))

(declare-fun b!693096 () Bool)

(declare-fun e!436156 () Bool)

(declare-fun setRes!3843 () Bool)

(declare-fun tp!209054 () Bool)

(assert (=> b!693096 (= e!436156 (and setRes!3843 tp!209054))))

(declare-fun condSetEmpty!3843 () Bool)

(assert (=> b!693096 (= condSetEmpty!3843 (= (_1!4374 (_1!4375 (h!12914 (t!87345 (zeroValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74)))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693097 () Bool)

(declare-fun e!436155 () Bool)

(declare-fun tp!209055 () Bool)

(assert (=> b!693097 (= e!436155 tp!209055)))

(declare-fun setIsEmpty!3843 () Bool)

(assert (=> setIsEmpty!3843 setRes!3843))

(assert (=> b!692426 (= tp!208838 e!436156)))

(declare-fun tp!209056 () Bool)

(declare-fun setElem!3843 () Context!494)

(declare-fun setNonEmpty!3843 () Bool)

(assert (=> setNonEmpty!3843 (= setRes!3843 (and tp!209056 (inv!9640 setElem!3843) e!436155))))

(declare-fun setRest!3843 () (InoxSet Context!494))

(assert (=> setNonEmpty!3843 (= (_1!4374 (_1!4375 (h!12914 (t!87345 (zeroValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74)))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3843 true) setRest!3843))))

(assert (= (and b!693096 condSetEmpty!3843) setIsEmpty!3843))

(assert (= (and b!693096 (not condSetEmpty!3843)) setNonEmpty!3843))

(assert (= setNonEmpty!3843 b!693097))

(assert (= (and b!692426 ((_ is Cons!7513) (t!87345 (zeroValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))))) b!693096))

(declare-fun m!949399 () Bool)

(assert (=> setNonEmpty!3843 m!949399))

(declare-fun condSetEmpty!3846 () Bool)

(assert (=> setNonEmpty!3838 (= condSetEmpty!3846 (= setRest!3839 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3846 () Bool)

(assert (=> setNonEmpty!3838 (= tp!208994 setRes!3846)))

(declare-fun setIsEmpty!3846 () Bool)

(assert (=> setIsEmpty!3846 setRes!3846))

(declare-fun setElem!3846 () Context!494)

(declare-fun e!436159 () Bool)

(declare-fun setNonEmpty!3846 () Bool)

(declare-fun tp!209062 () Bool)

(assert (=> setNonEmpty!3846 (= setRes!3846 (and tp!209062 (inv!9640 setElem!3846) e!436159))))

(declare-fun setRest!3846 () (InoxSet Context!494))

(assert (=> setNonEmpty!3846 (= setRest!3839 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3846 true) setRest!3846))))

(declare-fun b!693102 () Bool)

(declare-fun tp!209061 () Bool)

(assert (=> b!693102 (= e!436159 tp!209061)))

(assert (= (and setNonEmpty!3838 condSetEmpty!3846) setIsEmpty!3846))

(assert (= (and setNonEmpty!3838 (not condSetEmpty!3846)) setNonEmpty!3846))

(assert (= setNonEmpty!3846 b!693102))

(declare-fun m!949401 () Bool)

(assert (=> setNonEmpty!3846 m!949401))

(declare-fun b!693107 () Bool)

(declare-fun e!436162 () Bool)

(declare-fun tp!209067 () Bool)

(declare-fun tp!209068 () Bool)

(assert (=> b!693107 (= e!436162 (and tp!209067 tp!209068))))

(assert (=> b!692490 (= tp!208920 e!436162)))

(assert (= (and b!692490 ((_ is Cons!7512) (exprs!747 (_2!4377 (_1!4378 (h!12918 mapDefault!3133)))))) b!693107))

(declare-fun condSetEmpty!3847 () Bool)

(assert (=> setNonEmpty!3807 (= condSetEmpty!3847 (= setRest!3807 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3847 () Bool)

(assert (=> setNonEmpty!3807 (= tp!208840 setRes!3847)))

(declare-fun setIsEmpty!3847 () Bool)

(assert (=> setIsEmpty!3847 setRes!3847))

(declare-fun e!436163 () Bool)

(declare-fun setElem!3847 () Context!494)

(declare-fun tp!209070 () Bool)

(declare-fun setNonEmpty!3847 () Bool)

(assert (=> setNonEmpty!3847 (= setRes!3847 (and tp!209070 (inv!9640 setElem!3847) e!436163))))

(declare-fun setRest!3847 () (InoxSet Context!494))

(assert (=> setNonEmpty!3847 (= setRest!3807 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3847 true) setRest!3847))))

(declare-fun b!693108 () Bool)

(declare-fun tp!209069 () Bool)

(assert (=> b!693108 (= e!436163 tp!209069)))

(assert (= (and setNonEmpty!3807 condSetEmpty!3847) setIsEmpty!3847))

(assert (= (and setNonEmpty!3807 (not condSetEmpty!3847)) setNonEmpty!3847))

(assert (= setNonEmpty!3847 b!693108))

(declare-fun m!949403 () Bool)

(assert (=> setNonEmpty!3847 m!949403))

(declare-fun e!436166 () Bool)

(declare-fun b!693109 () Bool)

(declare-fun tp!209072 () Bool)

(declare-fun setRes!3848 () Bool)

(declare-fun e!436165 () Bool)

(assert (=> b!693109 (= e!436165 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (t!87350 mapValue!3136))))) e!436166 tp_is_empty!3647 setRes!3848 tp!209072))))

(declare-fun condSetEmpty!3848 () Bool)

(assert (=> b!693109 (= condSetEmpty!3848 (= (_2!4380 (h!12919 (t!87350 mapValue!3136))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693110 () Bool)

(declare-fun tp!209071 () Bool)

(assert (=> b!693110 (= e!436166 tp!209071)))

(declare-fun e!436164 () Bool)

(declare-fun tp!209074 () Bool)

(declare-fun setNonEmpty!3848 () Bool)

(declare-fun setElem!3848 () Context!494)

(assert (=> setNonEmpty!3848 (= setRes!3848 (and tp!209074 (inv!9640 setElem!3848) e!436164))))

(declare-fun setRest!3848 () (InoxSet Context!494))

(assert (=> setNonEmpty!3848 (= (_2!4380 (h!12919 (t!87350 mapValue!3136))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3848 true) setRest!3848))))

(declare-fun setIsEmpty!3848 () Bool)

(assert (=> setIsEmpty!3848 setRes!3848))

(declare-fun b!693111 () Bool)

(declare-fun tp!209073 () Bool)

(assert (=> b!693111 (= e!436164 tp!209073)))

(assert (=> b!692549 (= tp!208997 e!436165)))

(assert (= b!693109 b!693110))

(assert (= (and b!693109 condSetEmpty!3848) setIsEmpty!3848))

(assert (= (and b!693109 (not condSetEmpty!3848)) setNonEmpty!3848))

(assert (= setNonEmpty!3848 b!693111))

(assert (= (and b!692549 ((_ is Cons!7518) (t!87350 mapValue!3136))) b!693109))

(declare-fun m!949405 () Bool)

(assert (=> b!693109 m!949405))

(declare-fun m!949407 () Bool)

(assert (=> setNonEmpty!3848 m!949407))

(declare-fun condSetEmpty!3849 () Bool)

(assert (=> setNonEmpty!3840 (= condSetEmpty!3849 (= setRest!3840 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3849 () Bool)

(assert (=> setNonEmpty!3840 (= tp!209005 setRes!3849)))

(declare-fun setIsEmpty!3849 () Bool)

(assert (=> setIsEmpty!3849 setRes!3849))

(declare-fun setElem!3849 () Context!494)

(declare-fun tp!209076 () Bool)

(declare-fun e!436167 () Bool)

(declare-fun setNonEmpty!3849 () Bool)

(assert (=> setNonEmpty!3849 (= setRes!3849 (and tp!209076 (inv!9640 setElem!3849) e!436167))))

(declare-fun setRest!3849 () (InoxSet Context!494))

(assert (=> setNonEmpty!3849 (= setRest!3840 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3849 true) setRest!3849))))

(declare-fun b!693112 () Bool)

(declare-fun tp!209075 () Bool)

(assert (=> b!693112 (= e!436167 tp!209075)))

(assert (= (and setNonEmpty!3840 condSetEmpty!3849) setIsEmpty!3849))

(assert (= (and setNonEmpty!3840 (not condSetEmpty!3849)) setNonEmpty!3849))

(assert (= setNonEmpty!3849 b!693112))

(declare-fun m!949409 () Bool)

(assert (=> setNonEmpty!3849 m!949409))

(declare-fun condSetEmpty!3850 () Bool)

(assert (=> setNonEmpty!3817 (= condSetEmpty!3850 (= setRest!3817 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3850 () Bool)

(assert (=> setNonEmpty!3817 (= tp!208893 setRes!3850)))

(declare-fun setIsEmpty!3850 () Bool)

(assert (=> setIsEmpty!3850 setRes!3850))

(declare-fun e!436168 () Bool)

(declare-fun tp!209078 () Bool)

(declare-fun setElem!3850 () Context!494)

(declare-fun setNonEmpty!3850 () Bool)

(assert (=> setNonEmpty!3850 (= setRes!3850 (and tp!209078 (inv!9640 setElem!3850) e!436168))))

(declare-fun setRest!3850 () (InoxSet Context!494))

(assert (=> setNonEmpty!3850 (= setRest!3817 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3850 true) setRest!3850))))

(declare-fun b!693113 () Bool)

(declare-fun tp!209077 () Bool)

(assert (=> b!693113 (= e!436168 tp!209077)))

(assert (= (and setNonEmpty!3817 condSetEmpty!3850) setIsEmpty!3850))

(assert (= (and setNonEmpty!3817 (not condSetEmpty!3850)) setNonEmpty!3850))

(assert (= setNonEmpty!3850 b!693113))

(declare-fun m!949411 () Bool)

(assert (=> setNonEmpty!3850 m!949411))

(declare-fun condSetEmpty!3851 () Bool)

(assert (=> setNonEmpty!3832 (= condSetEmpty!3851 (= setRest!3832 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3851 () Bool)

(assert (=> setNonEmpty!3832 (= tp!208967 setRes!3851)))

(declare-fun setIsEmpty!3851 () Bool)

(assert (=> setIsEmpty!3851 setRes!3851))

(declare-fun setElem!3851 () Context!494)

(declare-fun e!436169 () Bool)

(declare-fun tp!209080 () Bool)

(declare-fun setNonEmpty!3851 () Bool)

(assert (=> setNonEmpty!3851 (= setRes!3851 (and tp!209080 (inv!9640 setElem!3851) e!436169))))

(declare-fun setRest!3851 () (InoxSet Context!494))

(assert (=> setNonEmpty!3851 (= setRest!3832 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3851 true) setRest!3851))))

(declare-fun b!693114 () Bool)

(declare-fun tp!209079 () Bool)

(assert (=> b!693114 (= e!436169 tp!209079)))

(assert (= (and setNonEmpty!3832 condSetEmpty!3851) setIsEmpty!3851))

(assert (= (and setNonEmpty!3832 (not condSetEmpty!3851)) setNonEmpty!3851))

(assert (= setNonEmpty!3851 b!693114))

(declare-fun m!949413 () Bool)

(assert (=> setNonEmpty!3851 m!949413))

(declare-fun mapIsEmpty!3138 () Bool)

(declare-fun mapRes!3138 () Bool)

(assert (=> mapIsEmpty!3138 mapRes!3138))

(declare-fun tp!209087 () Bool)

(declare-fun setRes!3853 () Bool)

(declare-fun setNonEmpty!3852 () Bool)

(declare-fun setElem!3852 () Context!494)

(declare-fun e!436172 () Bool)

(assert (=> setNonEmpty!3852 (= setRes!3853 (and tp!209087 (inv!9640 setElem!3852) e!436172))))

(declare-fun mapValue!3138 () List!7527)

(declare-fun setRest!3852 () (InoxSet Context!494))

(assert (=> setNonEmpty!3852 (= (_1!4374 (_1!4375 (h!12914 mapValue!3138))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3852 true) setRest!3852))))

(declare-fun b!693115 () Bool)

(declare-fun e!436170 () Bool)

(declare-fun setRes!3852 () Bool)

(declare-fun tp!209081 () Bool)

(assert (=> b!693115 (= e!436170 (and setRes!3852 tp!209081))))

(declare-fun condSetEmpty!3853 () Bool)

(declare-fun mapDefault!3138 () List!7527)

(assert (=> b!693115 (= condSetEmpty!3853 (= (_1!4374 (_1!4375 (h!12914 mapDefault!3138))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun condMapEmpty!3138 () Bool)

(assert (=> mapNonEmpty!3130 (= condMapEmpty!3138 (= mapRest!3130 ((as const (Array (_ BitVec 32) List!7527)) mapDefault!3138)))))

(assert (=> mapNonEmpty!3130 (= tp!208888 (and e!436170 mapRes!3138))))

(declare-fun mapNonEmpty!3138 () Bool)

(declare-fun tp!209082 () Bool)

(declare-fun e!436171 () Bool)

(assert (=> mapNonEmpty!3138 (= mapRes!3138 (and tp!209082 e!436171))))

(declare-fun mapRest!3138 () (Array (_ BitVec 32) List!7527))

(declare-fun mapKey!3138 () (_ BitVec 32))

(assert (=> mapNonEmpty!3138 (= mapRest!3130 (store mapRest!3138 mapKey!3138 mapValue!3138))))

(declare-fun setIsEmpty!3852 () Bool)

(assert (=> setIsEmpty!3852 setRes!3852))

(declare-fun setIsEmpty!3853 () Bool)

(assert (=> setIsEmpty!3853 setRes!3853))

(declare-fun b!693116 () Bool)

(declare-fun e!436173 () Bool)

(declare-fun tp!209083 () Bool)

(assert (=> b!693116 (= e!436173 tp!209083)))

(declare-fun b!693117 () Bool)

(declare-fun tp!209085 () Bool)

(assert (=> b!693117 (= e!436171 (and setRes!3853 tp!209085))))

(declare-fun condSetEmpty!3852 () Bool)

(assert (=> b!693117 (= condSetEmpty!3852 (= (_1!4374 (_1!4375 (h!12914 mapValue!3138))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693118 () Bool)

(declare-fun tp!209086 () Bool)

(assert (=> b!693118 (= e!436172 tp!209086)))

(declare-fun setElem!3853 () Context!494)

(declare-fun tp!209084 () Bool)

(declare-fun setNonEmpty!3853 () Bool)

(assert (=> setNonEmpty!3853 (= setRes!3852 (and tp!209084 (inv!9640 setElem!3853) e!436173))))

(declare-fun setRest!3853 () (InoxSet Context!494))

(assert (=> setNonEmpty!3853 (= (_1!4374 (_1!4375 (h!12914 mapDefault!3138))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3853 true) setRest!3853))))

(assert (= (and mapNonEmpty!3130 condMapEmpty!3138) mapIsEmpty!3138))

(assert (= (and mapNonEmpty!3130 (not condMapEmpty!3138)) mapNonEmpty!3138))

(assert (= (and b!693117 condSetEmpty!3852) setIsEmpty!3853))

(assert (= (and b!693117 (not condSetEmpty!3852)) setNonEmpty!3852))

(assert (= setNonEmpty!3852 b!693118))

(assert (= (and mapNonEmpty!3138 ((_ is Cons!7513) mapValue!3138)) b!693117))

(assert (= (and b!693115 condSetEmpty!3853) setIsEmpty!3852))

(assert (= (and b!693115 (not condSetEmpty!3853)) setNonEmpty!3853))

(assert (= setNonEmpty!3853 b!693116))

(assert (= (and mapNonEmpty!3130 ((_ is Cons!7513) mapDefault!3138)) b!693115))

(declare-fun m!949415 () Bool)

(assert (=> setNonEmpty!3852 m!949415))

(declare-fun m!949417 () Bool)

(assert (=> mapNonEmpty!3138 m!949417))

(declare-fun m!949419 () Bool)

(assert (=> setNonEmpty!3853 m!949419))

(declare-fun condSetEmpty!3854 () Bool)

(assert (=> setNonEmpty!3826 (= condSetEmpty!3854 (= setRest!3826 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3854 () Bool)

(assert (=> setNonEmpty!3826 (= tp!208933 setRes!3854)))

(declare-fun setIsEmpty!3854 () Bool)

(assert (=> setIsEmpty!3854 setRes!3854))

(declare-fun e!436174 () Bool)

(declare-fun setNonEmpty!3854 () Bool)

(declare-fun setElem!3854 () Context!494)

(declare-fun tp!209089 () Bool)

(assert (=> setNonEmpty!3854 (= setRes!3854 (and tp!209089 (inv!9640 setElem!3854) e!436174))))

(declare-fun setRest!3854 () (InoxSet Context!494))

(assert (=> setNonEmpty!3854 (= setRest!3826 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3854 true) setRest!3854))))

(declare-fun b!693119 () Bool)

(declare-fun tp!209088 () Bool)

(assert (=> b!693119 (= e!436174 tp!209088)))

(assert (= (and setNonEmpty!3826 condSetEmpty!3854) setIsEmpty!3854))

(assert (= (and setNonEmpty!3826 (not condSetEmpty!3854)) setNonEmpty!3854))

(assert (= setNonEmpty!3854 b!693119))

(declare-fun m!949421 () Bool)

(assert (=> setNonEmpty!3854 m!949421))

(declare-fun b!693120 () Bool)

(declare-fun e!436175 () Bool)

(declare-fun tp!209090 () Bool)

(declare-fun tp!209091 () Bool)

(assert (=> b!693120 (= e!436175 (and tp!209090 tp!209091))))

(assert (=> b!692551 (= tp!209002 e!436175)))

(assert (= (and b!692551 ((_ is Cons!7512) (exprs!747 (_1!4379 (_1!4380 (h!12919 mapValue!3127)))))) b!693120))

(declare-fun b!693125 () Bool)

(declare-fun e!436178 () Bool)

(declare-fun tp!209094 () Bool)

(assert (=> b!693125 (= e!436178 (and tp_is_empty!3647 tp!209094))))

(assert (=> b!692454 (= tp!208870 e!436178)))

(assert (= (and b!692454 ((_ is Cons!7511) (innerList!2709 (xs!5302 (c!121614 totalInput!378))))) b!693125))

(declare-fun b!693126 () Bool)

(declare-fun e!436180 () Bool)

(declare-fun setRes!3855 () Bool)

(declare-fun tp!209095 () Bool)

(assert (=> b!693126 (= e!436180 (and setRes!3855 tp!209095))))

(declare-fun condSetEmpty!3855 () Bool)

(assert (=> b!693126 (= condSetEmpty!3855 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapDefault!3125)))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693127 () Bool)

(declare-fun e!436179 () Bool)

(declare-fun tp!209096 () Bool)

(assert (=> b!693127 (= e!436179 tp!209096)))

(declare-fun setIsEmpty!3855 () Bool)

(assert (=> setIsEmpty!3855 setRes!3855))

(assert (=> b!692522 (= tp!208965 e!436180)))

(declare-fun tp!209097 () Bool)

(declare-fun setNonEmpty!3855 () Bool)

(declare-fun setElem!3855 () Context!494)

(assert (=> setNonEmpty!3855 (= setRes!3855 (and tp!209097 (inv!9640 setElem!3855) e!436179))))

(declare-fun setRest!3855 () (InoxSet Context!494))

(assert (=> setNonEmpty!3855 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapDefault!3125)))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3855 true) setRest!3855))))

(assert (= (and b!693126 condSetEmpty!3855) setIsEmpty!3855))

(assert (= (and b!693126 (not condSetEmpty!3855)) setNonEmpty!3855))

(assert (= setNonEmpty!3855 b!693127))

(assert (= (and b!692522 ((_ is Cons!7513) (t!87345 mapDefault!3125))) b!693126))

(declare-fun m!949423 () Bool)

(assert (=> setNonEmpty!3855 m!949423))

(declare-fun b!693128 () Bool)

(declare-fun e!436181 () Bool)

(declare-fun tp!209098 () Bool)

(declare-fun tp!209099 () Bool)

(assert (=> b!693128 (= e!436181 (and tp!209098 tp!209099))))

(assert (=> b!692493 (= tp!208934 e!436181)))

(assert (= (and b!692493 ((_ is Cons!7512) (exprs!747 (_2!4377 (_1!4378 (h!12918 mapValue!3125)))))) b!693128))

(declare-fun b!693129 () Bool)

(declare-fun e!436182 () Bool)

(declare-fun tp!209100 () Bool)

(declare-fun tp!209101 () Bool)

(assert (=> b!693129 (= e!436182 (and tp!209100 tp!209101))))

(assert (=> b!692466 (= tp!208889 e!436182)))

(assert (= (and b!692466 ((_ is Cons!7512) (exprs!747 setElem!3818))) b!693129))

(declare-fun b!693130 () Bool)

(declare-fun e!436183 () Bool)

(assert (=> b!693130 (= e!436183 tp_is_empty!3647)))

(assert (=> b!692442 (= tp!208860 e!436183)))

(declare-fun b!693131 () Bool)

(declare-fun tp!209105 () Bool)

(declare-fun tp!209103 () Bool)

(assert (=> b!693131 (= e!436183 (and tp!209105 tp!209103))))

(declare-fun b!693133 () Bool)

(declare-fun tp!209106 () Bool)

(declare-fun tp!209102 () Bool)

(assert (=> b!693133 (= e!436183 (and tp!209106 tp!209102))))

(declare-fun b!693132 () Bool)

(declare-fun tp!209104 () Bool)

(assert (=> b!693132 (= e!436183 tp!209104)))

(assert (= (and b!692442 ((_ is ElementMatch!1845) (_1!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693130))

(assert (= (and b!692442 ((_ is Concat!3395) (_1!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693131))

(assert (= (and b!692442 ((_ is Star!1845) (_1!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693132))

(assert (= (and b!692442 ((_ is Union!1845) (_1!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693133))

(declare-fun setIsEmpty!3856 () Bool)

(declare-fun setRes!3856 () Bool)

(assert (=> setIsEmpty!3856 setRes!3856))

(declare-fun b!693134 () Bool)

(declare-fun e!436184 () Bool)

(declare-fun tp!209109 () Bool)

(assert (=> b!693134 (= e!436184 tp!209109)))

(declare-fun setNonEmpty!3856 () Bool)

(declare-fun tp!209110 () Bool)

(declare-fun setElem!3856 () Context!494)

(assert (=> setNonEmpty!3856 (= setRes!3856 (and tp!209110 (inv!9640 setElem!3856) e!436184))))

(declare-fun setRest!3856 () (InoxSet Context!494))

(assert (=> setNonEmpty!3856 (= (_2!4378 (h!12918 (t!87349 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3856 true) setRest!3856))))

(declare-fun e!436185 () Bool)

(assert (=> b!692442 (= tp!208859 e!436185)))

(declare-fun e!436186 () Bool)

(declare-fun b!693135 () Bool)

(declare-fun tp!209107 () Bool)

(declare-fun tp!209108 () Bool)

(assert (=> b!693135 (= e!436185 (and tp!209108 (inv!9640 (_2!4377 (_1!4378 (h!12918 (t!87349 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) e!436186 tp_is_empty!3647 setRes!3856 tp!209107))))

(declare-fun condSetEmpty!3856 () Bool)

(assert (=> b!693135 (= condSetEmpty!3856 (= (_2!4378 (h!12918 (t!87349 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693136 () Bool)

(declare-fun tp!209111 () Bool)

(assert (=> b!693136 (= e!436186 tp!209111)))

(assert (= b!693135 b!693136))

(assert (= (and b!693135 condSetEmpty!3856) setIsEmpty!3856))

(assert (= (and b!693135 (not condSetEmpty!3856)) setNonEmpty!3856))

(assert (= setNonEmpty!3856 b!693134))

(assert (= (and b!692442 ((_ is Cons!7517) (t!87349 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))) b!693135))

(declare-fun m!949425 () Bool)

(assert (=> setNonEmpty!3856 m!949425))

(declare-fun m!949427 () Bool)

(assert (=> b!693135 m!949427))

(declare-fun b!693137 () Bool)

(declare-fun e!436187 () Bool)

(assert (=> b!693137 (= e!436187 tp_is_empty!3647)))

(assert (=> b!692439 (= tp!208855 e!436187)))

(declare-fun b!693138 () Bool)

(declare-fun tp!209115 () Bool)

(declare-fun tp!209113 () Bool)

(assert (=> b!693138 (= e!436187 (and tp!209115 tp!209113))))

(declare-fun b!693140 () Bool)

(declare-fun tp!209116 () Bool)

(declare-fun tp!209112 () Bool)

(assert (=> b!693140 (= e!436187 (and tp!209116 tp!209112))))

(declare-fun b!693139 () Bool)

(declare-fun tp!209114 () Bool)

(assert (=> b!693139 (= e!436187 tp!209114)))

(assert (= (and b!692439 ((_ is ElementMatch!1845) (_1!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693137))

(assert (= (and b!692439 ((_ is Concat!3395) (_1!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693138))

(assert (= (and b!692439 ((_ is Star!1845) (_1!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693139))

(assert (= (and b!692439 ((_ is Union!1845) (_1!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) b!693140))

(declare-fun setIsEmpty!3857 () Bool)

(declare-fun setRes!3857 () Bool)

(assert (=> setIsEmpty!3857 setRes!3857))

(declare-fun b!693141 () Bool)

(declare-fun e!436188 () Bool)

(declare-fun tp!209119 () Bool)

(assert (=> b!693141 (= e!436188 tp!209119)))

(declare-fun setElem!3857 () Context!494)

(declare-fun tp!209120 () Bool)

(declare-fun setNonEmpty!3857 () Bool)

(assert (=> setNonEmpty!3857 (= setRes!3857 (and tp!209120 (inv!9640 setElem!3857) e!436188))))

(declare-fun setRest!3857 () (InoxSet Context!494))

(assert (=> setNonEmpty!3857 (= (_2!4378 (h!12918 (t!87349 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3857 true) setRest!3857))))

(declare-fun e!436189 () Bool)

(assert (=> b!692439 (= tp!208854 e!436189)))

(declare-fun e!436190 () Bool)

(declare-fun b!693142 () Bool)

(declare-fun tp!209118 () Bool)

(declare-fun tp!209117 () Bool)

(assert (=> b!693142 (= e!436189 (and tp!209118 (inv!9640 (_2!4377 (_1!4378 (h!12918 (t!87349 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))))) e!436190 tp_is_empty!3647 setRes!3857 tp!209117))))

(declare-fun condSetEmpty!3857 () Bool)

(assert (=> b!693142 (= condSetEmpty!3857 (= (_2!4378 (h!12918 (t!87349 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693143 () Bool)

(declare-fun tp!209121 () Bool)

(assert (=> b!693143 (= e!436190 tp!209121)))

(assert (= b!693142 b!693143))

(assert (= (and b!693142 condSetEmpty!3857) setIsEmpty!3857))

(assert (= (and b!693142 (not condSetEmpty!3857)) setNonEmpty!3857))

(assert (= setNonEmpty!3857 b!693141))

(assert (= (and b!692439 ((_ is Cons!7517) (t!87349 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515))))))))) b!693142))

(declare-fun m!949429 () Bool)

(assert (=> setNonEmpty!3857 m!949429))

(declare-fun m!949431 () Bool)

(assert (=> b!693142 m!949431))

(declare-fun b!693144 () Bool)

(declare-fun e!436191 () Bool)

(declare-fun tp!209122 () Bool)

(declare-fun tp!209123 () Bool)

(assert (=> b!693144 (= e!436191 (and tp!209122 tp!209123))))

(assert (=> b!692521 (= tp!208964 e!436191)))

(assert (= (and b!692521 ((_ is Cons!7512) (exprs!747 (_2!4377 (_1!4378 (h!12918 mapDefault!3126)))))) b!693144))

(declare-fun b!693145 () Bool)

(declare-fun e!436193 () Bool)

(declare-fun setRes!3858 () Bool)

(declare-fun tp!209124 () Bool)

(assert (=> b!693145 (= e!436193 (and setRes!3858 tp!209124))))

(declare-fun condSetEmpty!3858 () Bool)

(assert (=> b!693145 (= condSetEmpty!3858 (= (_1!4374 (_1!4375 (h!12914 (t!87345 (minValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74)))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693146 () Bool)

(declare-fun e!436192 () Bool)

(declare-fun tp!209125 () Bool)

(assert (=> b!693146 (= e!436192 tp!209125)))

(declare-fun setIsEmpty!3858 () Bool)

(assert (=> setIsEmpty!3858 setRes!3858))

(assert (=> b!692428 (= tp!208841 e!436193)))

(declare-fun tp!209126 () Bool)

(declare-fun setNonEmpty!3858 () Bool)

(declare-fun setElem!3858 () Context!494)

(assert (=> setNonEmpty!3858 (= setRes!3858 (and tp!209126 (inv!9640 setElem!3858) e!436192))))

(declare-fun setRest!3858 () (InoxSet Context!494))

(assert (=> setNonEmpty!3858 (= (_1!4374 (_1!4375 (h!12914 (t!87345 (minValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74)))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3858 true) setRest!3858))))

(assert (= (and b!693145 condSetEmpty!3858) setIsEmpty!3858))

(assert (= (and b!693145 (not condSetEmpty!3858)) setNonEmpty!3858))

(assert (= setNonEmpty!3858 b!693146))

(assert (= (and b!692428 ((_ is Cons!7513) (t!87345 (minValue!1034 (v!17673 (underlying!1737 (v!17674 (underlying!1738 (cache!1136 cacheFindLongestMatch!74))))))))) b!693145))

(declare-fun m!949433 () Bool)

(assert (=> setNonEmpty!3858 m!949433))

(declare-fun condSetEmpty!3859 () Bool)

(assert (=> setNonEmpty!3829 (= condSetEmpty!3859 (= setRest!3829 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3859 () Bool)

(assert (=> setNonEmpty!3829 (= tp!208955 setRes!3859)))

(declare-fun setIsEmpty!3859 () Bool)

(assert (=> setIsEmpty!3859 setRes!3859))

(declare-fun setElem!3859 () Context!494)

(declare-fun setNonEmpty!3859 () Bool)

(declare-fun tp!209128 () Bool)

(declare-fun e!436194 () Bool)

(assert (=> setNonEmpty!3859 (= setRes!3859 (and tp!209128 (inv!9640 setElem!3859) e!436194))))

(declare-fun setRest!3859 () (InoxSet Context!494))

(assert (=> setNonEmpty!3859 (= setRest!3829 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3859 true) setRest!3859))))

(declare-fun b!693147 () Bool)

(declare-fun tp!209127 () Bool)

(assert (=> b!693147 (= e!436194 tp!209127)))

(assert (= (and setNonEmpty!3829 condSetEmpty!3859) setIsEmpty!3859))

(assert (= (and setNonEmpty!3829 (not condSetEmpty!3859)) setNonEmpty!3859))

(assert (= setNonEmpty!3859 b!693147))

(declare-fun m!949435 () Bool)

(assert (=> setNonEmpty!3859 m!949435))

(declare-fun b!693148 () Bool)

(declare-fun e!436200 () Bool)

(declare-fun tp!209138 () Bool)

(assert (=> b!693148 (= e!436200 tp!209138)))

(declare-fun e!436197 () Bool)

(declare-fun tp!209133 () Bool)

(declare-fun mapValue!3139 () List!7531)

(declare-fun b!693149 () Bool)

(declare-fun setRes!3860 () Bool)

(declare-fun tp!209132 () Bool)

(assert (=> b!693149 (= e!436197 (and tp!209132 (inv!9640 (_2!4377 (_1!4378 (h!12918 mapValue!3139)))) e!436200 tp_is_empty!3647 setRes!3860 tp!209133))))

(declare-fun condSetEmpty!3861 () Bool)

(assert (=> b!693149 (= condSetEmpty!3861 (= (_2!4378 (h!12918 mapValue!3139)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun mapIsEmpty!3139 () Bool)

(declare-fun mapRes!3139 () Bool)

(assert (=> mapIsEmpty!3139 mapRes!3139))

(declare-fun mapNonEmpty!3139 () Bool)

(declare-fun tp!209134 () Bool)

(assert (=> mapNonEmpty!3139 (= mapRes!3139 (and tp!209134 e!436197))))

(declare-fun mapKey!3139 () (_ BitVec 32))

(declare-fun mapRest!3139 () (Array (_ BitVec 32) List!7531))

(assert (=> mapNonEmpty!3139 (= mapRest!3133 (store mapRest!3139 mapKey!3139 mapValue!3139))))

(declare-fun b!693150 () Bool)

(declare-fun e!436198 () Bool)

(declare-fun tp!209129 () Bool)

(assert (=> b!693150 (= e!436198 tp!209129)))

(declare-fun setIsEmpty!3860 () Bool)

(assert (=> setIsEmpty!3860 setRes!3860))

(declare-fun b!693151 () Bool)

(declare-fun e!436195 () Bool)

(declare-fun tp!209136 () Bool)

(declare-fun mapDefault!3139 () List!7531)

(declare-fun setRes!3861 () Bool)

(declare-fun tp!209131 () Bool)

(declare-fun e!436196 () Bool)

(assert (=> b!693151 (= e!436195 (and tp!209136 (inv!9640 (_2!4377 (_1!4378 (h!12918 mapDefault!3139)))) e!436196 tp_is_empty!3647 setRes!3861 tp!209131))))

(declare-fun condSetEmpty!3860 () Bool)

(assert (=> b!693151 (= condSetEmpty!3860 (= (_2!4378 (h!12918 mapDefault!3139)) ((as const (Array Context!494 Bool)) false)))))

(declare-fun setIsEmpty!3861 () Bool)

(assert (=> setIsEmpty!3861 setRes!3861))

(declare-fun b!693152 () Bool)

(declare-fun e!436199 () Bool)

(declare-fun tp!209137 () Bool)

(assert (=> b!693152 (= e!436199 tp!209137)))

(declare-fun setElem!3860 () Context!494)

(declare-fun setNonEmpty!3860 () Bool)

(declare-fun tp!209139 () Bool)

(assert (=> setNonEmpty!3860 (= setRes!3861 (and tp!209139 (inv!9640 setElem!3860) e!436199))))

(declare-fun setRest!3860 () (InoxSet Context!494))

(assert (=> setNonEmpty!3860 (= (_2!4378 (h!12918 mapDefault!3139)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3860 true) setRest!3860))))

(declare-fun condMapEmpty!3139 () Bool)

(assert (=> mapNonEmpty!3133 (= condMapEmpty!3139 (= mapRest!3133 ((as const (Array (_ BitVec 32) List!7531)) mapDefault!3139)))))

(assert (=> mapNonEmpty!3133 (= tp!208924 (and e!436195 mapRes!3139))))

(declare-fun setElem!3861 () Context!494)

(declare-fun tp!209135 () Bool)

(declare-fun setNonEmpty!3861 () Bool)

(assert (=> setNonEmpty!3861 (= setRes!3860 (and tp!209135 (inv!9640 setElem!3861) e!436198))))

(declare-fun setRest!3861 () (InoxSet Context!494))

(assert (=> setNonEmpty!3861 (= (_2!4378 (h!12918 mapValue!3139)) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3861 true) setRest!3861))))

(declare-fun b!693153 () Bool)

(declare-fun tp!209130 () Bool)

(assert (=> b!693153 (= e!436196 tp!209130)))

(assert (= (and mapNonEmpty!3133 condMapEmpty!3139) mapIsEmpty!3139))

(assert (= (and mapNonEmpty!3133 (not condMapEmpty!3139)) mapNonEmpty!3139))

(assert (= b!693149 b!693148))

(assert (= (and b!693149 condSetEmpty!3861) setIsEmpty!3860))

(assert (= (and b!693149 (not condSetEmpty!3861)) setNonEmpty!3861))

(assert (= setNonEmpty!3861 b!693150))

(assert (= (and mapNonEmpty!3139 ((_ is Cons!7517) mapValue!3139)) b!693149))

(assert (= b!693151 b!693153))

(assert (= (and b!693151 condSetEmpty!3860) setIsEmpty!3861))

(assert (= (and b!693151 (not condSetEmpty!3860)) setNonEmpty!3860))

(assert (= setNonEmpty!3860 b!693152))

(assert (= (and mapNonEmpty!3133 ((_ is Cons!7517) mapDefault!3139)) b!693151))

(declare-fun m!949437 () Bool)

(assert (=> b!693149 m!949437))

(declare-fun m!949439 () Bool)

(assert (=> setNonEmpty!3861 m!949439))

(declare-fun m!949441 () Bool)

(assert (=> b!693151 m!949441))

(declare-fun m!949443 () Bool)

(assert (=> setNonEmpty!3860 m!949443))

(declare-fun m!949445 () Bool)

(assert (=> mapNonEmpty!3139 m!949445))

(declare-fun b!693154 () Bool)

(declare-fun e!436201 () Bool)

(declare-fun tp!209140 () Bool)

(declare-fun tp!209141 () Bool)

(assert (=> b!693154 (= e!436201 (and tp!209140 tp!209141))))

(assert (=> b!692468 (= tp!208892 e!436201)))

(assert (= (and b!692468 ((_ is Cons!7512) (exprs!747 setElem!3817))) b!693154))

(declare-fun b!693155 () Bool)

(declare-fun e!436202 () Bool)

(assert (=> b!693155 (= e!436202 tp_is_empty!3647)))

(assert (=> b!692579 (= tp!209035 e!436202)))

(declare-fun b!693156 () Bool)

(declare-fun tp!209145 () Bool)

(declare-fun tp!209143 () Bool)

(assert (=> b!693156 (= e!436202 (and tp!209145 tp!209143))))

(declare-fun b!693158 () Bool)

(declare-fun tp!209146 () Bool)

(declare-fun tp!209142 () Bool)

(assert (=> b!693158 (= e!436202 (and tp!209146 tp!209142))))

(declare-fun b!693157 () Bool)

(declare-fun tp!209144 () Bool)

(assert (=> b!693157 (= e!436202 tp!209144)))

(assert (= (and b!692579 ((_ is ElementMatch!1845) (regex!1506 (h!12917 (t!87348 rules!1486))))) b!693155))

(assert (= (and b!692579 ((_ is Concat!3395) (regex!1506 (h!12917 (t!87348 rules!1486))))) b!693156))

(assert (= (and b!692579 ((_ is Star!1845) (regex!1506 (h!12917 (t!87348 rules!1486))))) b!693157))

(assert (= (and b!692579 ((_ is Union!1845) (regex!1506 (h!12917 (t!87348 rules!1486))))) b!693158))

(declare-fun b!693159 () Bool)

(declare-fun e!436204 () Bool)

(declare-fun tp!209148 () Bool)

(declare-fun setRes!3862 () Bool)

(declare-fun e!436205 () Bool)

(assert (=> b!693159 (= e!436204 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (t!87350 mapDefault!3136))))) e!436205 tp_is_empty!3647 setRes!3862 tp!209148))))

(declare-fun condSetEmpty!3862 () Bool)

(assert (=> b!693159 (= condSetEmpty!3862 (= (_2!4380 (h!12919 (t!87350 mapDefault!3136))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693160 () Bool)

(declare-fun tp!209147 () Bool)

(assert (=> b!693160 (= e!436205 tp!209147)))

(declare-fun setElem!3862 () Context!494)

(declare-fun tp!209150 () Bool)

(declare-fun setNonEmpty!3862 () Bool)

(declare-fun e!436203 () Bool)

(assert (=> setNonEmpty!3862 (= setRes!3862 (and tp!209150 (inv!9640 setElem!3862) e!436203))))

(declare-fun setRest!3862 () (InoxSet Context!494))

(assert (=> setNonEmpty!3862 (= (_2!4380 (h!12919 (t!87350 mapDefault!3136))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3862 true) setRest!3862))))

(declare-fun setIsEmpty!3862 () Bool)

(assert (=> setIsEmpty!3862 setRes!3862))

(declare-fun b!693161 () Bool)

(declare-fun tp!209149 () Bool)

(assert (=> b!693161 (= e!436203 tp!209149)))

(assert (=> b!692544 (= tp!209000 e!436204)))

(assert (= b!693159 b!693160))

(assert (= (and b!693159 condSetEmpty!3862) setIsEmpty!3862))

(assert (= (and b!693159 (not condSetEmpty!3862)) setNonEmpty!3862))

(assert (= setNonEmpty!3862 b!693161))

(assert (= (and b!692544 ((_ is Cons!7518) (t!87350 mapDefault!3136))) b!693159))

(declare-fun m!949447 () Bool)

(assert (=> b!693159 m!949447))

(declare-fun m!949449 () Bool)

(assert (=> setNonEmpty!3862 m!949449))

(declare-fun e!436207 () Bool)

(declare-fun b!693162 () Bool)

(declare-fun setRes!3863 () Bool)

(declare-fun tp!209152 () Bool)

(declare-fun e!436208 () Bool)

(assert (=> b!693162 (= e!436207 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (t!87350 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))))) e!436208 tp_is_empty!3647 setRes!3863 tp!209152))))

(declare-fun condSetEmpty!3863 () Bool)

(assert (=> b!693162 (= condSetEmpty!3863 (= (_2!4380 (h!12919 (t!87350 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693163 () Bool)

(declare-fun tp!209151 () Bool)

(assert (=> b!693163 (= e!436208 tp!209151)))

(declare-fun tp!209154 () Bool)

(declare-fun setNonEmpty!3863 () Bool)

(declare-fun e!436206 () Bool)

(declare-fun setElem!3863 () Context!494)

(assert (=> setNonEmpty!3863 (= setRes!3863 (and tp!209154 (inv!9640 setElem!3863) e!436206))))

(declare-fun setRest!3863 () (InoxSet Context!494))

(assert (=> setNonEmpty!3863 (= (_2!4380 (h!12919 (t!87350 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3863 true) setRest!3863))))

(declare-fun setIsEmpty!3863 () Bool)

(assert (=> setIsEmpty!3863 setRes!3863))

(declare-fun b!693164 () Bool)

(declare-fun tp!209153 () Bool)

(assert (=> b!693164 (= e!436206 tp!209153)))

(assert (=> b!692516 (= tp!208957 e!436207)))

(assert (= b!693162 b!693163))

(assert (= (and b!693162 condSetEmpty!3863) setIsEmpty!3863))

(assert (= (and b!693162 (not condSetEmpty!3863)) setNonEmpty!3863))

(assert (= setNonEmpty!3863 b!693164))

(assert (= (and b!692516 ((_ is Cons!7518) (t!87350 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))) b!693162))

(declare-fun m!949451 () Bool)

(assert (=> b!693162 m!949451))

(declare-fun m!949453 () Bool)

(assert (=> setNonEmpty!3863 m!949453))

(declare-fun b!693165 () Bool)

(declare-fun e!436210 () Bool)

(declare-fun setRes!3864 () Bool)

(declare-fun tp!209155 () Bool)

(assert (=> b!693165 (= e!436210 (and setRes!3864 tp!209155))))

(declare-fun condSetEmpty!3864 () Bool)

(assert (=> b!693165 (= condSetEmpty!3864 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapValue!3126)))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693166 () Bool)

(declare-fun e!436209 () Bool)

(declare-fun tp!209156 () Bool)

(assert (=> b!693166 (= e!436209 tp!209156)))

(declare-fun setIsEmpty!3864 () Bool)

(assert (=> setIsEmpty!3864 setRes!3864))

(assert (=> b!692469 (= tp!208894 e!436210)))

(declare-fun setElem!3864 () Context!494)

(declare-fun tp!209157 () Bool)

(declare-fun setNonEmpty!3864 () Bool)

(assert (=> setNonEmpty!3864 (= setRes!3864 (and tp!209157 (inv!9640 setElem!3864) e!436209))))

(declare-fun setRest!3864 () (InoxSet Context!494))

(assert (=> setNonEmpty!3864 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapValue!3126)))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3864 true) setRest!3864))))

(assert (= (and b!693165 condSetEmpty!3864) setIsEmpty!3864))

(assert (= (and b!693165 (not condSetEmpty!3864)) setNonEmpty!3864))

(assert (= setNonEmpty!3864 b!693166))

(assert (= (and b!692469 ((_ is Cons!7513) (t!87345 mapValue!3126))) b!693165))

(declare-fun m!949455 () Bool)

(assert (=> setNonEmpty!3864 m!949455))

(declare-fun b!693167 () Bool)

(declare-fun e!436211 () Bool)

(declare-fun tp!209158 () Bool)

(declare-fun tp!209159 () Bool)

(assert (=> b!693167 (= e!436211 (and tp!209158 tp!209159))))

(assert (=> b!692441 (= tp!208861 e!436211)))

(assert (= (and b!692441 ((_ is Cons!7512) (exprs!747 setElem!3812))) b!693167))

(declare-fun b!693168 () Bool)

(declare-fun e!436212 () Bool)

(declare-fun tp!209160 () Bool)

(declare-fun tp!209161 () Bool)

(assert (=> b!693168 (= e!436212 (and tp!209160 tp!209161))))

(assert (=> b!692438 (= tp!208856 e!436212)))

(assert (= (and b!692438 ((_ is Cons!7512) (exprs!747 setElem!3811))) b!693168))

(declare-fun condSetEmpty!3865 () Bool)

(assert (=> setNonEmpty!3831 (= condSetEmpty!3865 (= setRest!3831 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3865 () Bool)

(assert (=> setNonEmpty!3831 (= tp!208963 setRes!3865)))

(declare-fun setIsEmpty!3865 () Bool)

(assert (=> setIsEmpty!3865 setRes!3865))

(declare-fun e!436213 () Bool)

(declare-fun setElem!3865 () Context!494)

(declare-fun setNonEmpty!3865 () Bool)

(declare-fun tp!209163 () Bool)

(assert (=> setNonEmpty!3865 (= setRes!3865 (and tp!209163 (inv!9640 setElem!3865) e!436213))))

(declare-fun setRest!3865 () (InoxSet Context!494))

(assert (=> setNonEmpty!3865 (= setRest!3831 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3865 true) setRest!3865))))

(declare-fun b!693169 () Bool)

(declare-fun tp!209162 () Bool)

(assert (=> b!693169 (= e!436213 tp!209162)))

(assert (= (and setNonEmpty!3831 condSetEmpty!3865) setIsEmpty!3865))

(assert (= (and setNonEmpty!3831 (not condSetEmpty!3865)) setNonEmpty!3865))

(assert (= setNonEmpty!3865 b!693169))

(declare-fun m!949457 () Bool)

(assert (=> setNonEmpty!3865 m!949457))

(declare-fun b!693170 () Bool)

(declare-fun e!436214 () Bool)

(declare-fun tp!209164 () Bool)

(declare-fun tp!209165 () Bool)

(assert (=> b!693170 (= e!436214 (and tp!209164 tp!209165))))

(assert (=> b!692518 (= tp!208958 e!436214)))

(assert (= (and b!692518 ((_ is Cons!7512) (exprs!747 setElem!3830))) b!693170))

(declare-fun b!693171 () Bool)

(declare-fun e!436215 () Bool)

(declare-fun tp!209166 () Bool)

(declare-fun tp!209167 () Bool)

(assert (=> b!693171 (= e!436215 (and tp!209166 tp!209167))))

(assert (=> b!692514 (= tp!208952 e!436215)))

(assert (= (and b!692514 ((_ is Cons!7512) (exprs!747 (_1!4379 (_1!4380 (h!12919 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))))) b!693171))

(declare-fun b!693172 () Bool)

(declare-fun e!436216 () Bool)

(assert (=> b!693172 (= e!436216 tp_is_empty!3647)))

(assert (=> b!692486 (= tp!208922 e!436216)))

(declare-fun b!693173 () Bool)

(declare-fun tp!209171 () Bool)

(declare-fun tp!209169 () Bool)

(assert (=> b!693173 (= e!436216 (and tp!209171 tp!209169))))

(declare-fun b!693175 () Bool)

(declare-fun tp!209172 () Bool)

(declare-fun tp!209168 () Bool)

(assert (=> b!693175 (= e!436216 (and tp!209172 tp!209168))))

(declare-fun b!693174 () Bool)

(declare-fun tp!209170 () Bool)

(assert (=> b!693174 (= e!436216 tp!209170)))

(assert (= (and b!692486 ((_ is ElementMatch!1845) (_1!4377 (_1!4378 (h!12918 mapValue!3133))))) b!693172))

(assert (= (and b!692486 ((_ is Concat!3395) (_1!4377 (_1!4378 (h!12918 mapValue!3133))))) b!693173))

(assert (= (and b!692486 ((_ is Star!1845) (_1!4377 (_1!4378 (h!12918 mapValue!3133))))) b!693174))

(assert (= (and b!692486 ((_ is Union!1845) (_1!4377 (_1!4378 (h!12918 mapValue!3133))))) b!693175))

(declare-fun setIsEmpty!3866 () Bool)

(declare-fun setRes!3866 () Bool)

(assert (=> setIsEmpty!3866 setRes!3866))

(declare-fun b!693176 () Bool)

(declare-fun e!436217 () Bool)

(declare-fun tp!209175 () Bool)

(assert (=> b!693176 (= e!436217 tp!209175)))

(declare-fun setNonEmpty!3866 () Bool)

(declare-fun tp!209176 () Bool)

(declare-fun setElem!3866 () Context!494)

(assert (=> setNonEmpty!3866 (= setRes!3866 (and tp!209176 (inv!9640 setElem!3866) e!436217))))

(declare-fun setRest!3866 () (InoxSet Context!494))

(assert (=> setNonEmpty!3866 (= (_2!4378 (h!12918 (t!87349 mapValue!3133))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3866 true) setRest!3866))))

(declare-fun e!436218 () Bool)

(assert (=> b!692486 (= tp!208923 e!436218)))

(declare-fun b!693177 () Bool)

(declare-fun tp!209174 () Bool)

(declare-fun e!436219 () Bool)

(declare-fun tp!209173 () Bool)

(assert (=> b!693177 (= e!436218 (and tp!209174 (inv!9640 (_2!4377 (_1!4378 (h!12918 (t!87349 mapValue!3133))))) e!436219 tp_is_empty!3647 setRes!3866 tp!209173))))

(declare-fun condSetEmpty!3866 () Bool)

(assert (=> b!693177 (= condSetEmpty!3866 (= (_2!4378 (h!12918 (t!87349 mapValue!3133))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693178 () Bool)

(declare-fun tp!209177 () Bool)

(assert (=> b!693178 (= e!436219 tp!209177)))

(assert (= b!693177 b!693178))

(assert (= (and b!693177 condSetEmpty!3866) setIsEmpty!3866))

(assert (= (and b!693177 (not condSetEmpty!3866)) setNonEmpty!3866))

(assert (= setNonEmpty!3866 b!693176))

(assert (= (and b!692486 ((_ is Cons!7517) (t!87349 mapValue!3133))) b!693177))

(declare-fun m!949459 () Bool)

(assert (=> setNonEmpty!3866 m!949459))

(declare-fun m!949461 () Bool)

(assert (=> b!693177 m!949461))

(declare-fun condSetEmpty!3867 () Bool)

(assert (=> setNonEmpty!3819 (= condSetEmpty!3867 (= setRest!3819 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3867 () Bool)

(assert (=> setNonEmpty!3819 (= tp!208896 setRes!3867)))

(declare-fun setIsEmpty!3867 () Bool)

(assert (=> setIsEmpty!3867 setRes!3867))

(declare-fun tp!209179 () Bool)

(declare-fun setNonEmpty!3867 () Bool)

(declare-fun e!436220 () Bool)

(declare-fun setElem!3867 () Context!494)

(assert (=> setNonEmpty!3867 (= setRes!3867 (and tp!209179 (inv!9640 setElem!3867) e!436220))))

(declare-fun setRest!3867 () (InoxSet Context!494))

(assert (=> setNonEmpty!3867 (= setRest!3819 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3867 true) setRest!3867))))

(declare-fun b!693179 () Bool)

(declare-fun tp!209178 () Bool)

(assert (=> b!693179 (= e!436220 tp!209178)))

(assert (= (and setNonEmpty!3819 condSetEmpty!3867) setIsEmpty!3867))

(assert (= (and setNonEmpty!3819 (not condSetEmpty!3867)) setNonEmpty!3867))

(assert (= setNonEmpty!3867 b!693179))

(declare-fun m!949463 () Bool)

(assert (=> setNonEmpty!3867 m!949463))

(declare-fun e!436221 () Bool)

(declare-fun tp!209182 () Bool)

(declare-fun tp!209181 () Bool)

(declare-fun b!693180 () Bool)

(assert (=> b!693180 (= e!436221 (and (inv!9629 (left!6006 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) tp!209181 (inv!9629 (right!6336 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) tp!209182))))

(declare-fun b!693182 () Bool)

(declare-fun e!436222 () Bool)

(declare-fun tp!209180 () Bool)

(assert (=> b!693182 (= e!436222 tp!209180)))

(declare-fun b!693181 () Bool)

(assert (=> b!693181 (= e!436221 (and (inv!9641 (xs!5302 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) e!436222))))

(assert (=> b!692553 (= tp!209007 (and (inv!9629 (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) e!436221))))

(assert (= (and b!692553 ((_ is Node!2651) (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) b!693180))

(assert (= b!693181 b!693182))

(assert (= (and b!692553 ((_ is Leaf!3927) (left!6006 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) b!693181))

(declare-fun m!949465 () Bool)

(assert (=> b!693180 m!949465))

(declare-fun m!949467 () Bool)

(assert (=> b!693180 m!949467))

(declare-fun m!949469 () Bool)

(assert (=> b!693181 m!949469))

(assert (=> b!692553 m!948638))

(declare-fun e!436223 () Bool)

(declare-fun b!693183 () Bool)

(declare-fun tp!209185 () Bool)

(declare-fun tp!209184 () Bool)

(assert (=> b!693183 (= e!436223 (and (inv!9629 (left!6006 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) tp!209184 (inv!9629 (right!6336 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) tp!209185))))

(declare-fun b!693185 () Bool)

(declare-fun e!436224 () Bool)

(declare-fun tp!209183 () Bool)

(assert (=> b!693185 (= e!436224 tp!209183)))

(declare-fun b!693184 () Bool)

(assert (=> b!693184 (= e!436223 (and (inv!9641 (xs!5302 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) e!436224))))

(assert (=> b!692553 (= tp!209008 (and (inv!9629 (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))) e!436223))))

(assert (= (and b!692553 ((_ is Node!2651) (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) b!693183))

(assert (= b!693184 b!693185))

(assert (= (and b!692553 ((_ is Leaf!3927) (right!6336 (c!121614 (totalInput!1804 cacheFindLongestMatch!74))))) b!693184))

(declare-fun m!949471 () Bool)

(assert (=> b!693183 m!949471))

(declare-fun m!949473 () Bool)

(assert (=> b!693183 m!949473))

(declare-fun m!949475 () Bool)

(assert (=> b!693184 m!949475))

(assert (=> b!692553 m!948640))

(declare-fun b!693186 () Bool)

(declare-fun e!436225 () Bool)

(declare-fun tp!209186 () Bool)

(assert (=> b!693186 (= e!436225 (and tp_is_empty!3647 tp!209186))))

(assert (=> b!692583 (= tp!209036 e!436225)))

(assert (= (and b!692583 ((_ is Cons!7511) (innerList!2709 (xs!5302 (c!121614 treated!50))))) b!693186))

(declare-fun b!693187 () Bool)

(declare-fun e!436226 () Bool)

(declare-fun tp!209187 () Bool)

(declare-fun tp!209188 () Bool)

(assert (=> b!693187 (= e!436226 (and tp!209187 tp!209188))))

(assert (=> b!692547 (= tp!208993 e!436226)))

(assert (= (and b!692547 ((_ is Cons!7512) (exprs!747 setElem!3839))) b!693187))

(declare-fun condSetEmpty!3868 () Bool)

(assert (=> setNonEmpty!3833 (= condSetEmpty!3868 (= setRest!3833 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3868 () Bool)

(assert (=> setNonEmpty!3833 (= tp!208974 setRes!3868)))

(declare-fun setIsEmpty!3868 () Bool)

(assert (=> setIsEmpty!3868 setRes!3868))

(declare-fun setElem!3868 () Context!494)

(declare-fun setNonEmpty!3868 () Bool)

(declare-fun tp!209190 () Bool)

(declare-fun e!436227 () Bool)

(assert (=> setNonEmpty!3868 (= setRes!3868 (and tp!209190 (inv!9640 setElem!3868) e!436227))))

(declare-fun setRest!3868 () (InoxSet Context!494))

(assert (=> setNonEmpty!3868 (= setRest!3833 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3868 true) setRest!3868))))

(declare-fun b!693188 () Bool)

(declare-fun tp!209189 () Bool)

(assert (=> b!693188 (= e!436227 tp!209189)))

(assert (= (and setNonEmpty!3833 condSetEmpty!3868) setIsEmpty!3868))

(assert (= (and setNonEmpty!3833 (not condSetEmpty!3868)) setNonEmpty!3868))

(assert (= setNonEmpty!3868 b!693188))

(declare-fun m!949477 () Bool)

(assert (=> setNonEmpty!3868 m!949477))

(declare-fun b!693189 () Bool)

(declare-fun e!436228 () Bool)

(declare-fun tp!209191 () Bool)

(assert (=> b!693189 (= e!436228 (and tp_is_empty!3647 tp!209191))))

(assert (=> b!692526 (= tp!208968 e!436228)))

(assert (= (and b!692526 ((_ is Cons!7511) (innerList!2709 (xs!5302 (c!121614 input!870))))) b!693189))

(declare-fun b!693203 () Bool)

(declare-fun b_free!19689 () Bool)

(declare-fun b_next!19753 () Bool)

(assert (=> b!693203 (= b_free!19689 (not b_next!19753))))

(declare-fun tp!209202 () Bool)

(declare-fun b_and!63483 () Bool)

(assert (=> b!693203 (= tp!209202 b_and!63483)))

(declare-fun b_free!19691 () Bool)

(declare-fun b_next!19755 () Bool)

(assert (=> b!693203 (= b_free!19691 (not b_next!19755))))

(declare-fun tp!209205 () Bool)

(declare-fun b_and!63485 () Bool)

(assert (=> b!693203 (= tp!209205 b_and!63485)))

(declare-fun e!436242 () Bool)

(assert (=> b!692504 (= tp!208943 e!436242)))

(declare-fun tp!209204 () Bool)

(declare-fun e!436243 () Bool)

(declare-fun b!693200 () Bool)

(declare-fun inv!9643 (Token!2712) Bool)

(assert (=> b!693200 (= e!436242 (and (inv!9643 (h!12916 (innerList!2710 (xs!5303 (c!121615 acc!372))))) e!436243 tp!209204))))

(declare-fun e!436241 () Bool)

(assert (=> b!693203 (= e!436241 (and tp!209202 tp!209205))))

(declare-fun e!436246 () Bool)

(declare-fun tp!209203 () Bool)

(declare-fun b!693202 () Bool)

(assert (=> b!693202 (= e!436246 (and tp!209203 (inv!9624 (tag!1768 (rule!2545 (h!12916 (innerList!2710 (xs!5303 (c!121615 acc!372))))))) (inv!9635 (transformation!1506 (rule!2545 (h!12916 (innerList!2710 (xs!5303 (c!121615 acc!372))))))) e!436241))))

(declare-fun tp!209206 () Bool)

(declare-fun b!693201 () Bool)

(declare-fun inv!21 (TokenValue!1550) Bool)

(assert (=> b!693201 (= e!436243 (and (inv!21 (value!48586 (h!12916 (innerList!2710 (xs!5303 (c!121615 acc!372)))))) e!436246 tp!209206))))

(assert (= b!693202 b!693203))

(assert (= b!693201 b!693202))

(assert (= b!693200 b!693201))

(assert (= (and b!692504 ((_ is Cons!7515) (innerList!2710 (xs!5303 (c!121615 acc!372))))) b!693200))

(declare-fun m!949479 () Bool)

(assert (=> b!693200 m!949479))

(declare-fun m!949481 () Bool)

(assert (=> b!693202 m!949481))

(declare-fun m!949483 () Bool)

(assert (=> b!693202 m!949483))

(declare-fun m!949485 () Bool)

(assert (=> b!693201 m!949485))

(declare-fun b!693204 () Bool)

(declare-fun e!436247 () Bool)

(assert (=> b!693204 (= e!436247 tp_is_empty!3647)))

(assert (=> b!692569 (= tp!209023 e!436247)))

(declare-fun b!693205 () Bool)

(declare-fun tp!209210 () Bool)

(declare-fun tp!209208 () Bool)

(assert (=> b!693205 (= e!436247 (and tp!209210 tp!209208))))

(declare-fun b!693207 () Bool)

(declare-fun tp!209211 () Bool)

(declare-fun tp!209207 () Bool)

(assert (=> b!693207 (= e!436247 (and tp!209211 tp!209207))))

(declare-fun b!693206 () Bool)

(declare-fun tp!209209 () Bool)

(assert (=> b!693206 (= e!436247 tp!209209)))

(assert (= (and b!692569 ((_ is ElementMatch!1845) (regOne!4203 (regex!1506 (h!12917 rules!1486))))) b!693204))

(assert (= (and b!692569 ((_ is Concat!3395) (regOne!4203 (regex!1506 (h!12917 rules!1486))))) b!693205))

(assert (= (and b!692569 ((_ is Star!1845) (regOne!4203 (regex!1506 (h!12917 rules!1486))))) b!693206))

(assert (= (and b!692569 ((_ is Union!1845) (regOne!4203 (regex!1506 (h!12917 rules!1486))))) b!693207))

(declare-fun b!693208 () Bool)

(declare-fun e!436248 () Bool)

(assert (=> b!693208 (= e!436248 tp_is_empty!3647)))

(assert (=> b!692569 (= tp!209019 e!436248)))

(declare-fun b!693209 () Bool)

(declare-fun tp!209215 () Bool)

(declare-fun tp!209213 () Bool)

(assert (=> b!693209 (= e!436248 (and tp!209215 tp!209213))))

(declare-fun b!693211 () Bool)

(declare-fun tp!209216 () Bool)

(declare-fun tp!209212 () Bool)

(assert (=> b!693211 (= e!436248 (and tp!209216 tp!209212))))

(declare-fun b!693210 () Bool)

(declare-fun tp!209214 () Bool)

(assert (=> b!693210 (= e!436248 tp!209214)))

(assert (= (and b!692569 ((_ is ElementMatch!1845) (regTwo!4203 (regex!1506 (h!12917 rules!1486))))) b!693208))

(assert (= (and b!692569 ((_ is Concat!3395) (regTwo!4203 (regex!1506 (h!12917 rules!1486))))) b!693209))

(assert (= (and b!692569 ((_ is Star!1845) (regTwo!4203 (regex!1506 (h!12917 rules!1486))))) b!693210))

(assert (= (and b!692569 ((_ is Union!1845) (regTwo!4203 (regex!1506 (h!12917 rules!1486))))) b!693211))

(declare-fun b!693212 () Bool)

(declare-fun e!436249 () Bool)

(declare-fun tp!209217 () Bool)

(assert (=> b!693212 (= e!436249 (and tp_is_empty!3647 tp!209217))))

(assert (=> b!692555 (= tp!209006 e!436249)))

(assert (= (and b!692555 ((_ is Cons!7511) (innerList!2709 (xs!5302 (c!121614 (totalInput!1804 cacheFindLongestMatch!74)))))) b!693212))

(declare-fun condSetEmpty!3869 () Bool)

(assert (=> setNonEmpty!3824 (= condSetEmpty!3869 (= setRest!3824 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3869 () Bool)

(assert (=> setNonEmpty!3824 (= tp!208929 setRes!3869)))

(declare-fun setIsEmpty!3869 () Bool)

(assert (=> setIsEmpty!3869 setRes!3869))

(declare-fun setElem!3869 () Context!494)

(declare-fun setNonEmpty!3869 () Bool)

(declare-fun e!436250 () Bool)

(declare-fun tp!209219 () Bool)

(assert (=> setNonEmpty!3869 (= setRes!3869 (and tp!209219 (inv!9640 setElem!3869) e!436250))))

(declare-fun setRest!3869 () (InoxSet Context!494))

(assert (=> setNonEmpty!3869 (= setRest!3824 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3869 true) setRest!3869))))

(declare-fun b!693213 () Bool)

(declare-fun tp!209218 () Bool)

(assert (=> b!693213 (= e!436250 tp!209218)))

(assert (= (and setNonEmpty!3824 condSetEmpty!3869) setIsEmpty!3869))

(assert (= (and setNonEmpty!3824 (not condSetEmpty!3869)) setNonEmpty!3869))

(assert (= setNonEmpty!3869 b!693213))

(declare-fun m!949487 () Bool)

(assert (=> setNonEmpty!3869 m!949487))

(declare-fun condSetEmpty!3870 () Bool)

(assert (=> setNonEmpty!3808 (= condSetEmpty!3870 (= setRest!3808 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3870 () Bool)

(assert (=> setNonEmpty!3808 (= tp!208843 setRes!3870)))

(declare-fun setIsEmpty!3870 () Bool)

(assert (=> setIsEmpty!3870 setRes!3870))

(declare-fun setNonEmpty!3870 () Bool)

(declare-fun tp!209221 () Bool)

(declare-fun e!436251 () Bool)

(declare-fun setElem!3870 () Context!494)

(assert (=> setNonEmpty!3870 (= setRes!3870 (and tp!209221 (inv!9640 setElem!3870) e!436251))))

(declare-fun setRest!3870 () (InoxSet Context!494))

(assert (=> setNonEmpty!3870 (= setRest!3808 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3870 true) setRest!3870))))

(declare-fun b!693214 () Bool)

(declare-fun tp!209220 () Bool)

(assert (=> b!693214 (= e!436251 tp!209220)))

(assert (= (and setNonEmpty!3808 condSetEmpty!3870) setIsEmpty!3870))

(assert (= (and setNonEmpty!3808 (not condSetEmpty!3870)) setNonEmpty!3870))

(assert (= setNonEmpty!3870 b!693214))

(declare-fun m!949489 () Bool)

(assert (=> setNonEmpty!3870 m!949489))

(declare-fun b!693215 () Bool)

(declare-fun e!436252 () Bool)

(declare-fun tp!209223 () Bool)

(declare-fun tp!209224 () Bool)

(assert (=> b!693215 (= e!436252 (and (inv!9629 (left!6006 (left!6006 (c!121614 treated!50)))) tp!209223 (inv!9629 (right!6336 (left!6006 (c!121614 treated!50)))) tp!209224))))

(declare-fun b!693217 () Bool)

(declare-fun e!436253 () Bool)

(declare-fun tp!209222 () Bool)

(assert (=> b!693217 (= e!436253 tp!209222)))

(declare-fun b!693216 () Bool)

(assert (=> b!693216 (= e!436252 (and (inv!9641 (xs!5302 (left!6006 (c!121614 treated!50)))) e!436253))))

(assert (=> b!692581 (= tp!209037 (and (inv!9629 (left!6006 (c!121614 treated!50))) e!436252))))

(assert (= (and b!692581 ((_ is Node!2651) (left!6006 (c!121614 treated!50)))) b!693215))

(assert (= b!693216 b!693217))

(assert (= (and b!692581 ((_ is Leaf!3927) (left!6006 (c!121614 treated!50)))) b!693216))

(declare-fun m!949491 () Bool)

(assert (=> b!693215 m!949491))

(declare-fun m!949493 () Bool)

(assert (=> b!693215 m!949493))

(declare-fun m!949495 () Bool)

(assert (=> b!693216 m!949495))

(assert (=> b!692581 m!948648))

(declare-fun tp!209226 () Bool)

(declare-fun tp!209227 () Bool)

(declare-fun b!693218 () Bool)

(declare-fun e!436254 () Bool)

(assert (=> b!693218 (= e!436254 (and (inv!9629 (left!6006 (right!6336 (c!121614 treated!50)))) tp!209226 (inv!9629 (right!6336 (right!6336 (c!121614 treated!50)))) tp!209227))))

(declare-fun b!693220 () Bool)

(declare-fun e!436255 () Bool)

(declare-fun tp!209225 () Bool)

(assert (=> b!693220 (= e!436255 tp!209225)))

(declare-fun b!693219 () Bool)

(assert (=> b!693219 (= e!436254 (and (inv!9641 (xs!5302 (right!6336 (c!121614 treated!50)))) e!436255))))

(assert (=> b!692581 (= tp!209038 (and (inv!9629 (right!6336 (c!121614 treated!50))) e!436254))))

(assert (= (and b!692581 ((_ is Node!2651) (right!6336 (c!121614 treated!50)))) b!693218))

(assert (= b!693219 b!693220))

(assert (= (and b!692581 ((_ is Leaf!3927) (right!6336 (c!121614 treated!50)))) b!693219))

(declare-fun m!949497 () Bool)

(assert (=> b!693218 m!949497))

(declare-fun m!949499 () Bool)

(assert (=> b!693218 m!949499))

(declare-fun m!949501 () Bool)

(assert (=> b!693219 m!949501))

(assert (=> b!692581 m!948650))

(declare-fun b!693221 () Bool)

(declare-fun e!436256 () Bool)

(declare-fun tp!209228 () Bool)

(declare-fun tp!209229 () Bool)

(assert (=> b!693221 (= e!436256 (and tp!209228 tp!209229))))

(assert (=> b!692546 (= tp!208995 e!436256)))

(assert (= (and b!692546 ((_ is Cons!7512) (exprs!747 (_1!4379 (_1!4380 (h!12919 mapDefault!3136)))))) b!693221))

(declare-fun b!693222 () Bool)

(declare-fun e!436257 () Bool)

(declare-fun tp!209230 () Bool)

(declare-fun tp!209231 () Bool)

(assert (=> b!693222 (= e!436257 (and tp!209230 tp!209231))))

(assert (=> b!692528 (= tp!208971 e!436257)))

(assert (= (and b!692528 ((_ is Cons!7512) (exprs!747 (_1!4379 (_1!4380 (h!12919 mapDefault!3127)))))) b!693222))

(declare-fun tp!209233 () Bool)

(declare-fun b!693223 () Bool)

(declare-fun tp!209234 () Bool)

(declare-fun e!436258 () Bool)

(assert (=> b!693223 (= e!436258 (and (inv!9629 (left!6006 (left!6006 (c!121614 input!870)))) tp!209233 (inv!9629 (right!6336 (left!6006 (c!121614 input!870)))) tp!209234))))

(declare-fun b!693225 () Bool)

(declare-fun e!436259 () Bool)

(declare-fun tp!209232 () Bool)

(assert (=> b!693225 (= e!436259 tp!209232)))

(declare-fun b!693224 () Bool)

(assert (=> b!693224 (= e!436258 (and (inv!9641 (xs!5302 (left!6006 (c!121614 input!870)))) e!436259))))

(assert (=> b!692524 (= tp!208969 (and (inv!9629 (left!6006 (c!121614 input!870))) e!436258))))

(assert (= (and b!692524 ((_ is Node!2651) (left!6006 (c!121614 input!870)))) b!693223))

(assert (= b!693224 b!693225))

(assert (= (and b!692524 ((_ is Leaf!3927) (left!6006 (c!121614 input!870)))) b!693224))

(declare-fun m!949503 () Bool)

(assert (=> b!693223 m!949503))

(declare-fun m!949505 () Bool)

(assert (=> b!693223 m!949505))

(declare-fun m!949507 () Bool)

(assert (=> b!693224 m!949507))

(assert (=> b!692524 m!948614))

(declare-fun e!436260 () Bool)

(declare-fun tp!209236 () Bool)

(declare-fun b!693226 () Bool)

(declare-fun tp!209237 () Bool)

(assert (=> b!693226 (= e!436260 (and (inv!9629 (left!6006 (right!6336 (c!121614 input!870)))) tp!209236 (inv!9629 (right!6336 (right!6336 (c!121614 input!870)))) tp!209237))))

(declare-fun b!693228 () Bool)

(declare-fun e!436261 () Bool)

(declare-fun tp!209235 () Bool)

(assert (=> b!693228 (= e!436261 tp!209235)))

(declare-fun b!693227 () Bool)

(assert (=> b!693227 (= e!436260 (and (inv!9641 (xs!5302 (right!6336 (c!121614 input!870)))) e!436261))))

(assert (=> b!692524 (= tp!208970 (and (inv!9629 (right!6336 (c!121614 input!870))) e!436260))))

(assert (= (and b!692524 ((_ is Node!2651) (right!6336 (c!121614 input!870)))) b!693226))

(assert (= b!693227 b!693228))

(assert (= (and b!692524 ((_ is Leaf!3927) (right!6336 (c!121614 input!870)))) b!693227))

(declare-fun m!949509 () Bool)

(assert (=> b!693226 m!949509))

(declare-fun m!949511 () Bool)

(assert (=> b!693226 m!949511))

(declare-fun m!949513 () Bool)

(assert (=> b!693227 m!949513))

(assert (=> b!692524 m!948616))

(declare-fun tp!209239 () Bool)

(declare-fun e!436262 () Bool)

(declare-fun tp!209238 () Bool)

(declare-fun b!693229 () Bool)

(assert (=> b!693229 (= e!436262 (and (inv!9628 (left!6007 (left!6007 (c!121615 acc!372)))) tp!209239 (inv!9628 (right!6337 (left!6007 (c!121615 acc!372)))) tp!209238))))

(declare-fun b!693231 () Bool)

(declare-fun e!436263 () Bool)

(declare-fun tp!209240 () Bool)

(assert (=> b!693231 (= e!436263 tp!209240)))

(declare-fun b!693230 () Bool)

(assert (=> b!693230 (= e!436262 (and (inv!9642 (xs!5303 (left!6007 (c!121615 acc!372)))) e!436263))))

(assert (=> b!692502 (= tp!208942 (and (inv!9628 (left!6007 (c!121615 acc!372))) e!436262))))

(assert (= (and b!692502 ((_ is Node!2652) (left!6007 (c!121615 acc!372)))) b!693229))

(assert (= b!693230 b!693231))

(assert (= (and b!692502 ((_ is Leaf!3928) (left!6007 (c!121615 acc!372)))) b!693230))

(declare-fun m!949515 () Bool)

(assert (=> b!693229 m!949515))

(declare-fun m!949517 () Bool)

(assert (=> b!693229 m!949517))

(declare-fun m!949519 () Bool)

(assert (=> b!693230 m!949519))

(assert (=> b!692502 m!948594))

(declare-fun b!693232 () Bool)

(declare-fun tp!209242 () Bool)

(declare-fun e!436264 () Bool)

(declare-fun tp!209241 () Bool)

(assert (=> b!693232 (= e!436264 (and (inv!9628 (left!6007 (right!6337 (c!121615 acc!372)))) tp!209242 (inv!9628 (right!6337 (right!6337 (c!121615 acc!372)))) tp!209241))))

(declare-fun b!693234 () Bool)

(declare-fun e!436265 () Bool)

(declare-fun tp!209243 () Bool)

(assert (=> b!693234 (= e!436265 tp!209243)))

(declare-fun b!693233 () Bool)

(assert (=> b!693233 (= e!436264 (and (inv!9642 (xs!5303 (right!6337 (c!121615 acc!372)))) e!436265))))

(assert (=> b!692502 (= tp!208941 (and (inv!9628 (right!6337 (c!121615 acc!372))) e!436264))))

(assert (= (and b!692502 ((_ is Node!2652) (right!6337 (c!121615 acc!372)))) b!693232))

(assert (= b!693233 b!693234))

(assert (= (and b!692502 ((_ is Leaf!3928) (right!6337 (c!121615 acc!372)))) b!693233))

(declare-fun m!949521 () Bool)

(assert (=> b!693232 m!949521))

(declare-fun m!949523 () Bool)

(assert (=> b!693232 m!949523))

(declare-fun m!949525 () Bool)

(assert (=> b!693233 m!949525))

(assert (=> b!692502 m!948596))

(declare-fun b!693235 () Bool)

(declare-fun e!436266 () Bool)

(assert (=> b!693235 (= e!436266 tp_is_empty!3647)))

(assert (=> b!692567 (= tp!209022 e!436266)))

(declare-fun b!693236 () Bool)

(declare-fun tp!209247 () Bool)

(declare-fun tp!209245 () Bool)

(assert (=> b!693236 (= e!436266 (and tp!209247 tp!209245))))

(declare-fun b!693238 () Bool)

(declare-fun tp!209248 () Bool)

(declare-fun tp!209244 () Bool)

(assert (=> b!693238 (= e!436266 (and tp!209248 tp!209244))))

(declare-fun b!693237 () Bool)

(declare-fun tp!209246 () Bool)

(assert (=> b!693237 (= e!436266 tp!209246)))

(assert (= (and b!692567 ((_ is ElementMatch!1845) (regOne!4202 (regex!1506 (h!12917 rules!1486))))) b!693235))

(assert (= (and b!692567 ((_ is Concat!3395) (regOne!4202 (regex!1506 (h!12917 rules!1486))))) b!693236))

(assert (= (and b!692567 ((_ is Star!1845) (regOne!4202 (regex!1506 (h!12917 rules!1486))))) b!693237))

(assert (= (and b!692567 ((_ is Union!1845) (regOne!4202 (regex!1506 (h!12917 rules!1486))))) b!693238))

(declare-fun b!693239 () Bool)

(declare-fun e!436267 () Bool)

(assert (=> b!693239 (= e!436267 tp_is_empty!3647)))

(assert (=> b!692567 (= tp!209020 e!436267)))

(declare-fun b!693240 () Bool)

(declare-fun tp!209252 () Bool)

(declare-fun tp!209250 () Bool)

(assert (=> b!693240 (= e!436267 (and tp!209252 tp!209250))))

(declare-fun b!693242 () Bool)

(declare-fun tp!209253 () Bool)

(declare-fun tp!209249 () Bool)

(assert (=> b!693242 (= e!436267 (and tp!209253 tp!209249))))

(declare-fun b!693241 () Bool)

(declare-fun tp!209251 () Bool)

(assert (=> b!693241 (= e!436267 tp!209251)))

(assert (= (and b!692567 ((_ is ElementMatch!1845) (regTwo!4202 (regex!1506 (h!12917 rules!1486))))) b!693239))

(assert (= (and b!692567 ((_ is Concat!3395) (regTwo!4202 (regex!1506 (h!12917 rules!1486))))) b!693240))

(assert (= (and b!692567 ((_ is Star!1845) (regTwo!4202 (regex!1506 (h!12917 rules!1486))))) b!693241))

(assert (= (and b!692567 ((_ is Union!1845) (regTwo!4202 (regex!1506 (h!12917 rules!1486))))) b!693242))

(declare-fun b!693243 () Bool)

(declare-fun e!436268 () Bool)

(declare-fun tp!209254 () Bool)

(declare-fun tp!209255 () Bool)

(assert (=> b!693243 (= e!436268 (and tp!209254 tp!209255))))

(assert (=> b!692427 (= tp!208839 e!436268)))

(assert (= (and b!692427 ((_ is Cons!7512) (exprs!747 setElem!3807))) b!693243))

(declare-fun condSetEmpty!3871 () Bool)

(assert (=> setNonEmpty!3839 (= condSetEmpty!3871 (= setRest!3838 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3871 () Bool)

(assert (=> setNonEmpty!3839 (= tp!208998 setRes!3871)))

(declare-fun setIsEmpty!3871 () Bool)

(assert (=> setIsEmpty!3871 setRes!3871))

(declare-fun tp!209257 () Bool)

(declare-fun e!436269 () Bool)

(declare-fun setElem!3871 () Context!494)

(declare-fun setNonEmpty!3871 () Bool)

(assert (=> setNonEmpty!3871 (= setRes!3871 (and tp!209257 (inv!9640 setElem!3871) e!436269))))

(declare-fun setRest!3871 () (InoxSet Context!494))

(assert (=> setNonEmpty!3871 (= setRest!3838 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3871 true) setRest!3871))))

(declare-fun b!693244 () Bool)

(declare-fun tp!209256 () Bool)

(assert (=> b!693244 (= e!436269 tp!209256)))

(assert (= (and setNonEmpty!3839 condSetEmpty!3871) setIsEmpty!3871))

(assert (= (and setNonEmpty!3839 (not condSetEmpty!3871)) setNonEmpty!3871))

(assert (= setNonEmpty!3871 b!693244))

(declare-fun m!949527 () Bool)

(assert (=> setNonEmpty!3871 m!949527))

(declare-fun b!693245 () Bool)

(declare-fun e!436270 () Bool)

(declare-fun tp!209258 () Bool)

(declare-fun tp!209259 () Bool)

(assert (=> b!693245 (= e!436270 (and tp!209258 tp!209259))))

(assert (=> b!692491 (= tp!208932 e!436270)))

(assert (= (and b!692491 ((_ is Cons!7512) (exprs!747 setElem!3826))) b!693245))

(declare-fun setRes!3872 () Bool)

(declare-fun e!436273 () Bool)

(declare-fun tp!209261 () Bool)

(declare-fun b!693246 () Bool)

(declare-fun e!436272 () Bool)

(assert (=> b!693246 (= e!436272 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (t!87350 mapValue!3127))))) e!436273 tp_is_empty!3647 setRes!3872 tp!209261))))

(declare-fun condSetEmpty!3872 () Bool)

(assert (=> b!693246 (= condSetEmpty!3872 (= (_2!4380 (h!12919 (t!87350 mapValue!3127))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693247 () Bool)

(declare-fun tp!209260 () Bool)

(assert (=> b!693247 (= e!436273 tp!209260)))

(declare-fun setElem!3872 () Context!494)

(declare-fun setNonEmpty!3872 () Bool)

(declare-fun tp!209263 () Bool)

(declare-fun e!436271 () Bool)

(assert (=> setNonEmpty!3872 (= setRes!3872 (and tp!209263 (inv!9640 setElem!3872) e!436271))))

(declare-fun setRest!3872 () (InoxSet Context!494))

(assert (=> setNonEmpty!3872 (= (_2!4380 (h!12919 (t!87350 mapValue!3127))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3872 true) setRest!3872))))

(declare-fun setIsEmpty!3872 () Bool)

(assert (=> setIsEmpty!3872 setRes!3872))

(declare-fun b!693248 () Bool)

(declare-fun tp!209262 () Bool)

(assert (=> b!693248 (= e!436271 tp!209262)))

(assert (=> b!692550 (= tp!209003 e!436272)))

(assert (= b!693246 b!693247))

(assert (= (and b!693246 condSetEmpty!3872) setIsEmpty!3872))

(assert (= (and b!693246 (not condSetEmpty!3872)) setNonEmpty!3872))

(assert (= setNonEmpty!3872 b!693248))

(assert (= (and b!692550 ((_ is Cons!7518) (t!87350 mapValue!3127))) b!693246))

(declare-fun m!949529 () Bool)

(assert (=> b!693246 m!949529))

(declare-fun m!949531 () Bool)

(assert (=> setNonEmpty!3872 m!949531))

(declare-fun condSetEmpty!3873 () Bool)

(assert (=> setNonEmpty!3825 (= condSetEmpty!3873 (= setRest!3825 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3873 () Bool)

(assert (=> setNonEmpty!3825 (= tp!208925 setRes!3873)))

(declare-fun setIsEmpty!3873 () Bool)

(assert (=> setIsEmpty!3873 setRes!3873))

(declare-fun setNonEmpty!3873 () Bool)

(declare-fun tp!209265 () Bool)

(declare-fun setElem!3873 () Context!494)

(declare-fun e!436274 () Bool)

(assert (=> setNonEmpty!3873 (= setRes!3873 (and tp!209265 (inv!9640 setElem!3873) e!436274))))

(declare-fun setRest!3873 () (InoxSet Context!494))

(assert (=> setNonEmpty!3873 (= setRest!3825 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3873 true) setRest!3873))))

(declare-fun b!693249 () Bool)

(declare-fun tp!209264 () Bool)

(assert (=> b!693249 (= e!436274 tp!209264)))

(assert (= (and setNonEmpty!3825 condSetEmpty!3873) setIsEmpty!3873))

(assert (= (and setNonEmpty!3825 (not condSetEmpty!3873)) setNonEmpty!3873))

(assert (= setNonEmpty!3873 b!693249))

(declare-fun m!949533 () Bool)

(assert (=> setNonEmpty!3873 m!949533))

(declare-fun b!693250 () Bool)

(declare-fun e!436276 () Bool)

(declare-fun setRes!3874 () Bool)

(declare-fun tp!209266 () Bool)

(assert (=> b!693250 (= e!436276 (and setRes!3874 tp!209266))))

(declare-fun condSetEmpty!3874 () Bool)

(assert (=> b!693250 (= condSetEmpty!3874 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapDefault!3130)))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693251 () Bool)

(declare-fun e!436275 () Bool)

(declare-fun tp!209267 () Bool)

(assert (=> b!693251 (= e!436275 tp!209267)))

(declare-fun setIsEmpty!3874 () Bool)

(assert (=> setIsEmpty!3874 setRes!3874))

(assert (=> b!692465 (= tp!208887 e!436276)))

(declare-fun setNonEmpty!3874 () Bool)

(declare-fun tp!209268 () Bool)

(declare-fun setElem!3874 () Context!494)

(assert (=> setNonEmpty!3874 (= setRes!3874 (and tp!209268 (inv!9640 setElem!3874) e!436275))))

(declare-fun setRest!3874 () (InoxSet Context!494))

(assert (=> setNonEmpty!3874 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapDefault!3130)))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3874 true) setRest!3874))))

(assert (= (and b!693250 condSetEmpty!3874) setIsEmpty!3874))

(assert (= (and b!693250 (not condSetEmpty!3874)) setNonEmpty!3874))

(assert (= setNonEmpty!3874 b!693251))

(assert (= (and b!692465 ((_ is Cons!7513) (t!87345 mapDefault!3130))) b!693250))

(declare-fun m!949535 () Bool)

(assert (=> setNonEmpty!3874 m!949535))

(declare-fun b!693252 () Bool)

(declare-fun e!436277 () Bool)

(declare-fun tp!209269 () Bool)

(declare-fun tp!209270 () Bool)

(assert (=> b!693252 (= e!436277 (and tp!209269 tp!209270))))

(assert (=> b!692523 (= tp!208966 e!436277)))

(assert (= (and b!692523 ((_ is Cons!7512) (exprs!747 setElem!3832))) b!693252))

(declare-fun b!693253 () Bool)

(declare-fun e!436278 () Bool)

(assert (=> b!693253 (= e!436278 tp_is_empty!3647)))

(assert (=> b!692492 (= tp!208931 e!436278)))

(declare-fun b!693254 () Bool)

(declare-fun tp!209274 () Bool)

(declare-fun tp!209272 () Bool)

(assert (=> b!693254 (= e!436278 (and tp!209274 tp!209272))))

(declare-fun b!693256 () Bool)

(declare-fun tp!209275 () Bool)

(declare-fun tp!209271 () Bool)

(assert (=> b!693256 (= e!436278 (and tp!209275 tp!209271))))

(declare-fun b!693255 () Bool)

(declare-fun tp!209273 () Bool)

(assert (=> b!693255 (= e!436278 tp!209273)))

(assert (= (and b!692492 ((_ is ElementMatch!1845) (_1!4377 (_1!4378 (h!12918 mapValue!3125))))) b!693253))

(assert (= (and b!692492 ((_ is Concat!3395) (_1!4377 (_1!4378 (h!12918 mapValue!3125))))) b!693254))

(assert (= (and b!692492 ((_ is Star!1845) (_1!4377 (_1!4378 (h!12918 mapValue!3125))))) b!693255))

(assert (= (and b!692492 ((_ is Union!1845) (_1!4377 (_1!4378 (h!12918 mapValue!3125))))) b!693256))

(declare-fun setIsEmpty!3875 () Bool)

(declare-fun setRes!3875 () Bool)

(assert (=> setIsEmpty!3875 setRes!3875))

(declare-fun b!693257 () Bool)

(declare-fun e!436279 () Bool)

(declare-fun tp!209278 () Bool)

(assert (=> b!693257 (= e!436279 tp!209278)))

(declare-fun setNonEmpty!3875 () Bool)

(declare-fun setElem!3875 () Context!494)

(declare-fun tp!209279 () Bool)

(assert (=> setNonEmpty!3875 (= setRes!3875 (and tp!209279 (inv!9640 setElem!3875) e!436279))))

(declare-fun setRest!3875 () (InoxSet Context!494))

(assert (=> setNonEmpty!3875 (= (_2!4378 (h!12918 (t!87349 mapValue!3125))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3875 true) setRest!3875))))

(declare-fun e!436280 () Bool)

(assert (=> b!692492 (= tp!208930 e!436280)))

(declare-fun b!693258 () Bool)

(declare-fun e!436281 () Bool)

(declare-fun tp!209277 () Bool)

(declare-fun tp!209276 () Bool)

(assert (=> b!693258 (= e!436280 (and tp!209277 (inv!9640 (_2!4377 (_1!4378 (h!12918 (t!87349 mapValue!3125))))) e!436281 tp_is_empty!3647 setRes!3875 tp!209276))))

(declare-fun condSetEmpty!3875 () Bool)

(assert (=> b!693258 (= condSetEmpty!3875 (= (_2!4378 (h!12918 (t!87349 mapValue!3125))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693259 () Bool)

(declare-fun tp!209280 () Bool)

(assert (=> b!693259 (= e!436281 tp!209280)))

(assert (= b!693258 b!693259))

(assert (= (and b!693258 condSetEmpty!3875) setIsEmpty!3875))

(assert (= (and b!693258 (not condSetEmpty!3875)) setNonEmpty!3875))

(assert (= setNonEmpty!3875 b!693257))

(assert (= (and b!692492 ((_ is Cons!7517) (t!87349 mapValue!3125))) b!693258))

(declare-fun m!949537 () Bool)

(assert (=> setNonEmpty!3875 m!949537))

(declare-fun m!949539 () Bool)

(assert (=> b!693258 m!949539))

(declare-fun b!693260 () Bool)

(declare-fun e!436282 () Bool)

(declare-fun tp!209281 () Bool)

(declare-fun tp!209282 () Bool)

(assert (=> b!693260 (= e!436282 (and tp!209281 tp!209282))))

(assert (=> b!692552 (= tp!209004 e!436282)))

(assert (= (and b!692552 ((_ is Cons!7512) (exprs!747 setElem!3840))) b!693260))

(declare-fun b!693261 () Bool)

(declare-fun e!436283 () Bool)

(assert (=> b!693261 (= e!436283 tp_is_empty!3647)))

(assert (=> b!692520 (= tp!208961 e!436283)))

(declare-fun b!693262 () Bool)

(declare-fun tp!209286 () Bool)

(declare-fun tp!209284 () Bool)

(assert (=> b!693262 (= e!436283 (and tp!209286 tp!209284))))

(declare-fun b!693264 () Bool)

(declare-fun tp!209287 () Bool)

(declare-fun tp!209283 () Bool)

(assert (=> b!693264 (= e!436283 (and tp!209287 tp!209283))))

(declare-fun b!693263 () Bool)

(declare-fun tp!209285 () Bool)

(assert (=> b!693263 (= e!436283 tp!209285)))

(assert (= (and b!692520 ((_ is ElementMatch!1845) (_1!4377 (_1!4378 (h!12918 mapDefault!3126))))) b!693261))

(assert (= (and b!692520 ((_ is Concat!3395) (_1!4377 (_1!4378 (h!12918 mapDefault!3126))))) b!693262))

(assert (= (and b!692520 ((_ is Star!1845) (_1!4377 (_1!4378 (h!12918 mapDefault!3126))))) b!693263))

(assert (= (and b!692520 ((_ is Union!1845) (_1!4377 (_1!4378 (h!12918 mapDefault!3126))))) b!693264))

(declare-fun setIsEmpty!3876 () Bool)

(declare-fun setRes!3876 () Bool)

(assert (=> setIsEmpty!3876 setRes!3876))

(declare-fun b!693265 () Bool)

(declare-fun e!436284 () Bool)

(declare-fun tp!209290 () Bool)

(assert (=> b!693265 (= e!436284 tp!209290)))

(declare-fun setElem!3876 () Context!494)

(declare-fun tp!209291 () Bool)

(declare-fun setNonEmpty!3876 () Bool)

(assert (=> setNonEmpty!3876 (= setRes!3876 (and tp!209291 (inv!9640 setElem!3876) e!436284))))

(declare-fun setRest!3876 () (InoxSet Context!494))

(assert (=> setNonEmpty!3876 (= (_2!4378 (h!12918 (t!87349 mapDefault!3126))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3876 true) setRest!3876))))

(declare-fun e!436285 () Bool)

(assert (=> b!692520 (= tp!208960 e!436285)))

(declare-fun e!436286 () Bool)

(declare-fun tp!209289 () Bool)

(declare-fun tp!209288 () Bool)

(declare-fun b!693266 () Bool)

(assert (=> b!693266 (= e!436285 (and tp!209289 (inv!9640 (_2!4377 (_1!4378 (h!12918 (t!87349 mapDefault!3126))))) e!436286 tp_is_empty!3647 setRes!3876 tp!209288))))

(declare-fun condSetEmpty!3876 () Bool)

(assert (=> b!693266 (= condSetEmpty!3876 (= (_2!4378 (h!12918 (t!87349 mapDefault!3126))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693267 () Bool)

(declare-fun tp!209292 () Bool)

(assert (=> b!693267 (= e!436286 tp!209292)))

(assert (= b!693266 b!693267))

(assert (= (and b!693266 condSetEmpty!3876) setIsEmpty!3876))

(assert (= (and b!693266 (not condSetEmpty!3876)) setNonEmpty!3876))

(assert (= setNonEmpty!3876 b!693265))

(assert (= (and b!692520 ((_ is Cons!7517) (t!87349 mapDefault!3126))) b!693266))

(declare-fun m!949541 () Bool)

(assert (=> setNonEmpty!3876 m!949541))

(declare-fun m!949543 () Bool)

(assert (=> b!693266 m!949543))

(declare-fun condSetEmpty!3877 () Bool)

(assert (=> setNonEmpty!3830 (= condSetEmpty!3877 (= setRest!3830 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3877 () Bool)

(assert (=> setNonEmpty!3830 (= tp!208959 setRes!3877)))

(declare-fun setIsEmpty!3877 () Bool)

(assert (=> setIsEmpty!3877 setRes!3877))

(declare-fun e!436287 () Bool)

(declare-fun setElem!3877 () Context!494)

(declare-fun tp!209294 () Bool)

(declare-fun setNonEmpty!3877 () Bool)

(assert (=> setNonEmpty!3877 (= setRes!3877 (and tp!209294 (inv!9640 setElem!3877) e!436287))))

(declare-fun setRest!3877 () (InoxSet Context!494))

(assert (=> setNonEmpty!3877 (= setRest!3830 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3877 true) setRest!3877))))

(declare-fun b!693268 () Bool)

(declare-fun tp!209293 () Bool)

(assert (=> b!693268 (= e!436287 tp!209293)))

(assert (= (and setNonEmpty!3830 condSetEmpty!3877) setIsEmpty!3877))

(assert (= (and setNonEmpty!3830 (not condSetEmpty!3877)) setNonEmpty!3877))

(assert (= setNonEmpty!3877 b!693268))

(declare-fun m!949545 () Bool)

(assert (=> setNonEmpty!3877 m!949545))

(declare-fun b!693269 () Bool)

(declare-fun e!436288 () Bool)

(declare-fun tp!209295 () Bool)

(declare-fun tp!209296 () Bool)

(assert (=> b!693269 (= e!436288 (and tp!209295 tp!209296))))

(assert (=> b!692515 (= tp!208954 e!436288)))

(assert (= (and b!692515 ((_ is Cons!7512) (exprs!747 setElem!3829))) b!693269))

(declare-fun b!693270 () Bool)

(declare-fun e!436289 () Bool)

(declare-fun tp!209297 () Bool)

(declare-fun tp!209298 () Bool)

(assert (=> b!693270 (= e!436289 (and tp!209297 tp!209298))))

(assert (=> b!692470 (= tp!208895 e!436289)))

(assert (= (and b!692470 ((_ is Cons!7512) (exprs!747 setElem!3819))) b!693270))

(declare-fun b!693271 () Bool)

(declare-fun e!436291 () Bool)

(declare-fun setRes!3878 () Bool)

(declare-fun tp!209299 () Bool)

(assert (=> b!693271 (= e!436291 (and setRes!3878 tp!209299))))

(declare-fun condSetEmpty!3878 () Bool)

(assert (=> b!693271 (= condSetEmpty!3878 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapValue!3130)))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693272 () Bool)

(declare-fun e!436290 () Bool)

(declare-fun tp!209300 () Bool)

(assert (=> b!693272 (= e!436290 tp!209300)))

(declare-fun setIsEmpty!3878 () Bool)

(assert (=> setIsEmpty!3878 setRes!3878))

(assert (=> b!692467 (= tp!208891 e!436291)))

(declare-fun tp!209301 () Bool)

(declare-fun setElem!3878 () Context!494)

(declare-fun setNonEmpty!3878 () Bool)

(assert (=> setNonEmpty!3878 (= setRes!3878 (and tp!209301 (inv!9640 setElem!3878) e!436290))))

(declare-fun setRest!3878 () (InoxSet Context!494))

(assert (=> setNonEmpty!3878 (= (_1!4374 (_1!4375 (h!12914 (t!87345 mapValue!3130)))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3878 true) setRest!3878))))

(assert (= (and b!693271 condSetEmpty!3878) setIsEmpty!3878))

(assert (= (and b!693271 (not condSetEmpty!3878)) setNonEmpty!3878))

(assert (= setNonEmpty!3878 b!693272))

(assert (= (and b!692467 ((_ is Cons!7513) (t!87345 mapValue!3130))) b!693271))

(declare-fun m!949547 () Bool)

(assert (=> setNonEmpty!3878 m!949547))

(declare-fun b!693275 () Bool)

(declare-fun b_free!19693 () Bool)

(declare-fun b_next!19757 () Bool)

(assert (=> b!693275 (= b_free!19693 (not b_next!19757))))

(declare-fun tp!209304 () Bool)

(declare-fun b_and!63487 () Bool)

(assert (=> b!693275 (= tp!209304 b_and!63487)))

(declare-fun b_free!19695 () Bool)

(declare-fun b_next!19759 () Bool)

(assert (=> b!693275 (= b_free!19695 (not b_next!19759))))

(declare-fun tp!209302 () Bool)

(declare-fun b_and!63489 () Bool)

(assert (=> b!693275 (= tp!209302 b_and!63489)))

(declare-fun e!436292 () Bool)

(assert (=> b!693275 (= e!436292 (and tp!209304 tp!209302))))

(declare-fun e!436294 () Bool)

(declare-fun tp!209305 () Bool)

(declare-fun b!693274 () Bool)

(assert (=> b!693274 (= e!436294 (and tp!209305 (inv!9624 (tag!1768 (h!12917 (t!87348 (t!87348 rules!1486))))) (inv!9635 (transformation!1506 (h!12917 (t!87348 (t!87348 rules!1486))))) e!436292))))

(declare-fun b!693273 () Bool)

(declare-fun e!436293 () Bool)

(declare-fun tp!209303 () Bool)

(assert (=> b!693273 (= e!436293 (and e!436294 tp!209303))))

(assert (=> b!692578 (= tp!209033 e!436293)))

(assert (= b!693274 b!693275))

(assert (= b!693273 b!693274))

(assert (= (and b!692578 ((_ is Cons!7516) (t!87348 (t!87348 rules!1486)))) b!693273))

(declare-fun m!949549 () Bool)

(assert (=> b!693274 m!949549))

(declare-fun m!949551 () Bool)

(assert (=> b!693274 m!949551))

(declare-fun b!693276 () Bool)

(declare-fun e!436296 () Bool)

(declare-fun tp!209306 () Bool)

(declare-fun tp!209307 () Bool)

(assert (=> b!693276 (= e!436296 (and tp!209306 tp!209307))))

(assert (=> b!692443 (= tp!208863 e!436296)))

(assert (= (and b!692443 ((_ is Cons!7512) (exprs!747 (_2!4377 (_1!4378 (h!12918 (minValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))))) b!693276))

(declare-fun b!693277 () Bool)

(declare-fun e!436297 () Bool)

(declare-fun tp!209308 () Bool)

(declare-fun tp!209309 () Bool)

(assert (=> b!693277 (= e!436297 (and tp!209308 tp!209309))))

(assert (=> b!692440 (= tp!208858 e!436297)))

(assert (= (and b!692440 ((_ is Cons!7512) (exprs!747 (_2!4377 (_1!4378 (h!12918 (zeroValue!1035 (v!17675 (underlying!1739 (v!17676 (underlying!1740 (cache!1137 cacheDown!515)))))))))))) b!693277))

(declare-fun b!693278 () Bool)

(declare-fun e!436298 () Bool)

(declare-fun tp!209310 () Bool)

(declare-fun tp!209311 () Bool)

(assert (=> b!693278 (= e!436298 (and tp!209310 tp!209311))))

(assert (=> b!692519 (= tp!208962 e!436298)))

(assert (= (and b!692519 ((_ is Cons!7512) (exprs!747 setElem!3831))) b!693278))

(declare-fun b!693279 () Bool)

(declare-fun e!436299 () Bool)

(declare-fun tp!209312 () Bool)

(declare-fun tp!209313 () Bool)

(assert (=> b!693279 (= e!436299 (and tp!209312 tp!209313))))

(assert (=> b!692517 (= tp!208956 e!436299)))

(assert (= (and b!692517 ((_ is Cons!7512) (exprs!747 (_1!4379 (_1!4380 (h!12919 (minValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502)))))))))))) b!693279))

(declare-fun tp!209315 () Bool)

(declare-fun b!693280 () Bool)

(declare-fun setRes!3879 () Bool)

(declare-fun e!436302 () Bool)

(declare-fun e!436301 () Bool)

(assert (=> b!693280 (= e!436301 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (t!87350 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))))) e!436302 tp_is_empty!3647 setRes!3879 tp!209315))))

(declare-fun condSetEmpty!3879 () Bool)

(assert (=> b!693280 (= condSetEmpty!3879 (= (_2!4380 (h!12919 (t!87350 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693281 () Bool)

(declare-fun tp!209314 () Bool)

(assert (=> b!693281 (= e!436302 tp!209314)))

(declare-fun setElem!3879 () Context!494)

(declare-fun tp!209317 () Bool)

(declare-fun setNonEmpty!3879 () Bool)

(declare-fun e!436300 () Bool)

(assert (=> setNonEmpty!3879 (= setRes!3879 (and tp!209317 (inv!9640 setElem!3879) e!436300))))

(declare-fun setRest!3879 () (InoxSet Context!494))

(assert (=> setNonEmpty!3879 (= (_2!4380 (h!12919 (t!87350 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3879 true) setRest!3879))))

(declare-fun setIsEmpty!3879 () Bool)

(assert (=> setIsEmpty!3879 setRes!3879))

(declare-fun b!693282 () Bool)

(declare-fun tp!209316 () Bool)

(assert (=> b!693282 (= e!436300 tp!209316)))

(assert (=> b!692513 (= tp!208953 e!436301)))

(assert (= b!693280 b!693281))

(assert (= (and b!693280 condSetEmpty!3879) setIsEmpty!3879))

(assert (= (and b!693280 (not condSetEmpty!3879)) setNonEmpty!3879))

(assert (= setNonEmpty!3879 b!693282))

(assert (= (and b!692513 ((_ is Cons!7518) (t!87350 (zeroValue!1036 (v!17677 (underlying!1741 (v!17678 (underlying!1742 (cache!1138 cacheUp!502))))))))) b!693280))

(declare-fun m!949553 () Bool)

(assert (=> b!693280 m!949553))

(declare-fun m!949555 () Bool)

(assert (=> setNonEmpty!3879 m!949555))

(declare-fun b!693283 () Bool)

(declare-fun e!436303 () Bool)

(declare-fun tp!209318 () Bool)

(declare-fun tp!209319 () Bool)

(assert (=> b!693283 (= e!436303 (and tp!209318 tp!209319))))

(assert (=> b!692485 (= tp!208928 e!436303)))

(assert (= (and b!692485 ((_ is Cons!7512) (exprs!747 (_2!4377 (_1!4378 (h!12918 mapValue!3133)))))) b!693283))

(declare-fun condSetEmpty!3880 () Bool)

(assert (=> setNonEmpty!3812 (= condSetEmpty!3880 (= setRest!3812 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3880 () Bool)

(assert (=> setNonEmpty!3812 (= tp!208862 setRes!3880)))

(declare-fun setIsEmpty!3880 () Bool)

(assert (=> setIsEmpty!3880 setRes!3880))

(declare-fun e!436304 () Bool)

(declare-fun setElem!3880 () Context!494)

(declare-fun setNonEmpty!3880 () Bool)

(declare-fun tp!209321 () Bool)

(assert (=> setNonEmpty!3880 (= setRes!3880 (and tp!209321 (inv!9640 setElem!3880) e!436304))))

(declare-fun setRest!3880 () (InoxSet Context!494))

(assert (=> setNonEmpty!3880 (= setRest!3812 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3880 true) setRest!3880))))

(declare-fun b!693284 () Bool)

(declare-fun tp!209320 () Bool)

(assert (=> b!693284 (= e!436304 tp!209320)))

(assert (= (and setNonEmpty!3812 condSetEmpty!3880) setIsEmpty!3880))

(assert (= (and setNonEmpty!3812 (not condSetEmpty!3880)) setNonEmpty!3880))

(assert (= setNonEmpty!3880 b!693284))

(declare-fun m!949557 () Bool)

(assert (=> setNonEmpty!3880 m!949557))

(declare-fun condSetEmpty!3881 () Bool)

(assert (=> setNonEmpty!3811 (= condSetEmpty!3881 (= setRest!3811 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3881 () Bool)

(assert (=> setNonEmpty!3811 (= tp!208857 setRes!3881)))

(declare-fun setIsEmpty!3881 () Bool)

(assert (=> setIsEmpty!3881 setRes!3881))

(declare-fun tp!209323 () Bool)

(declare-fun setNonEmpty!3881 () Bool)

(declare-fun e!436305 () Bool)

(declare-fun setElem!3881 () Context!494)

(assert (=> setNonEmpty!3881 (= setRes!3881 (and tp!209323 (inv!9640 setElem!3881) e!436305))))

(declare-fun setRest!3881 () (InoxSet Context!494))

(assert (=> setNonEmpty!3881 (= setRest!3811 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3881 true) setRest!3881))))

(declare-fun b!693285 () Bool)

(declare-fun tp!209322 () Bool)

(assert (=> b!693285 (= e!436305 tp!209322)))

(assert (= (and setNonEmpty!3811 condSetEmpty!3881) setIsEmpty!3881))

(assert (= (and setNonEmpty!3811 (not condSetEmpty!3881)) setNonEmpty!3881))

(assert (= setNonEmpty!3881 b!693285))

(declare-fun m!949559 () Bool)

(assert (=> setNonEmpty!3881 m!949559))

(declare-fun b!693286 () Bool)

(declare-fun e!436306 () Bool)

(declare-fun tp!209324 () Bool)

(declare-fun tp!209325 () Bool)

(assert (=> b!693286 (= e!436306 (and tp!209324 tp!209325))))

(assert (=> b!692529 (= tp!208973 e!436306)))

(assert (= (and b!692529 ((_ is Cons!7512) (exprs!747 setElem!3833))) b!693286))

(declare-fun b!693287 () Bool)

(declare-fun e!436307 () Bool)

(assert (=> b!693287 (= e!436307 tp_is_empty!3647)))

(assert (=> b!692568 (= tp!209021 e!436307)))

(declare-fun b!693288 () Bool)

(declare-fun tp!209329 () Bool)

(declare-fun tp!209327 () Bool)

(assert (=> b!693288 (= e!436307 (and tp!209329 tp!209327))))

(declare-fun b!693290 () Bool)

(declare-fun tp!209330 () Bool)

(declare-fun tp!209326 () Bool)

(assert (=> b!693290 (= e!436307 (and tp!209330 tp!209326))))

(declare-fun b!693289 () Bool)

(declare-fun tp!209328 () Bool)

(assert (=> b!693289 (= e!436307 tp!209328)))

(assert (= (and b!692568 ((_ is ElementMatch!1845) (reg!2174 (regex!1506 (h!12917 rules!1486))))) b!693287))

(assert (= (and b!692568 ((_ is Concat!3395) (reg!2174 (regex!1506 (h!12917 rules!1486))))) b!693288))

(assert (= (and b!692568 ((_ is Star!1845) (reg!2174 (regex!1506 (h!12917 rules!1486))))) b!693289))

(assert (= (and b!692568 ((_ is Union!1845) (reg!2174 (regex!1506 (h!12917 rules!1486))))) b!693290))

(declare-fun b!693291 () Bool)

(declare-fun e!436308 () Bool)

(declare-fun tp!209331 () Bool)

(declare-fun tp!209332 () Bool)

(assert (=> b!693291 (= e!436308 (and tp!209331 tp!209332))))

(assert (=> b!692489 (= tp!208927 e!436308)))

(assert (= (and b!692489 ((_ is Cons!7512) (exprs!747 setElem!3824))) b!693291))

(declare-fun b!693292 () Bool)

(declare-fun e!436309 () Bool)

(declare-fun tp!209333 () Bool)

(declare-fun tp!209334 () Bool)

(assert (=> b!693292 (= e!436309 (and tp!209333 tp!209334))))

(assert (=> b!692548 (= tp!208996 e!436309)))

(assert (= (and b!692548 ((_ is Cons!7512) (exprs!747 setElem!3838))) b!693292))

(declare-fun b!693293 () Bool)

(declare-fun e!436310 () Bool)

(declare-fun tp!209335 () Bool)

(declare-fun tp!209336 () Bool)

(assert (=> b!693293 (= e!436310 (and tp!209335 tp!209336))))

(assert (=> b!692487 (= tp!208919 e!436310)))

(assert (= (and b!692487 ((_ is Cons!7512) (exprs!747 setElem!3825))) b!693293))

(declare-fun condSetEmpty!3882 () Bool)

(assert (=> setNonEmpty!3818 (= condSetEmpty!3882 (= setRest!3818 ((as const (Array Context!494 Bool)) false)))))

(declare-fun setRes!3882 () Bool)

(assert (=> setNonEmpty!3818 (= tp!208890 setRes!3882)))

(declare-fun setIsEmpty!3882 () Bool)

(assert (=> setIsEmpty!3882 setRes!3882))

(declare-fun e!436311 () Bool)

(declare-fun setNonEmpty!3882 () Bool)

(declare-fun tp!209338 () Bool)

(declare-fun setElem!3882 () Context!494)

(assert (=> setNonEmpty!3882 (= setRes!3882 (and tp!209338 (inv!9640 setElem!3882) e!436311))))

(declare-fun setRest!3882 () (InoxSet Context!494))

(assert (=> setNonEmpty!3882 (= setRest!3818 ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3882 true) setRest!3882))))

(declare-fun b!693294 () Bool)

(declare-fun tp!209337 () Bool)

(assert (=> b!693294 (= e!436311 tp!209337)))

(assert (= (and setNonEmpty!3818 condSetEmpty!3882) setIsEmpty!3882))

(assert (= (and setNonEmpty!3818 (not condSetEmpty!3882)) setNonEmpty!3882))

(assert (= setNonEmpty!3882 b!693294))

(declare-fun m!949561 () Bool)

(assert (=> setNonEmpty!3882 m!949561))

(declare-fun b!693295 () Bool)

(declare-fun e!436312 () Bool)

(declare-fun tp!209339 () Bool)

(declare-fun tp!209340 () Bool)

(assert (=> b!693295 (= e!436312 (and tp!209339 tp!209340))))

(assert (=> b!692545 (= tp!208999 e!436312)))

(assert (= (and b!692545 ((_ is Cons!7512) (exprs!747 (_1!4379 (_1!4380 (h!12919 mapValue!3136)))))) b!693295))

(declare-fun tp!209342 () Bool)

(declare-fun e!436314 () Bool)

(declare-fun e!436315 () Bool)

(declare-fun setRes!3883 () Bool)

(declare-fun b!693296 () Bool)

(assert (=> b!693296 (= e!436314 (and (inv!9640 (_1!4379 (_1!4380 (h!12919 (t!87350 mapDefault!3127))))) e!436315 tp_is_empty!3647 setRes!3883 tp!209342))))

(declare-fun condSetEmpty!3883 () Bool)

(assert (=> b!693296 (= condSetEmpty!3883 (= (_2!4380 (h!12919 (t!87350 mapDefault!3127))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693297 () Bool)

(declare-fun tp!209341 () Bool)

(assert (=> b!693297 (= e!436315 tp!209341)))

(declare-fun tp!209344 () Bool)

(declare-fun e!436313 () Bool)

(declare-fun setElem!3883 () Context!494)

(declare-fun setNonEmpty!3883 () Bool)

(assert (=> setNonEmpty!3883 (= setRes!3883 (and tp!209344 (inv!9640 setElem!3883) e!436313))))

(declare-fun setRest!3883 () (InoxSet Context!494))

(assert (=> setNonEmpty!3883 (= (_2!4380 (h!12919 (t!87350 mapDefault!3127))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3883 true) setRest!3883))))

(declare-fun setIsEmpty!3883 () Bool)

(assert (=> setIsEmpty!3883 setRes!3883))

(declare-fun b!693298 () Bool)

(declare-fun tp!209343 () Bool)

(assert (=> b!693298 (= e!436313 tp!209343)))

(assert (=> b!692527 (= tp!208972 e!436314)))

(assert (= b!693296 b!693297))

(assert (= (and b!693296 condSetEmpty!3883) setIsEmpty!3883))

(assert (= (and b!693296 (not condSetEmpty!3883)) setNonEmpty!3883))

(assert (= setNonEmpty!3883 b!693298))

(assert (= (and b!692527 ((_ is Cons!7518) (t!87350 mapDefault!3127))) b!693296))

(declare-fun m!949563 () Bool)

(assert (=> b!693296 m!949563))

(declare-fun m!949565 () Bool)

(assert (=> setNonEmpty!3883 m!949565))

(declare-fun b!693299 () Bool)

(declare-fun e!436316 () Bool)

(assert (=> b!693299 (= e!436316 tp_is_empty!3647)))

(assert (=> b!692488 (= tp!208926 e!436316)))

(declare-fun b!693300 () Bool)

(declare-fun tp!209348 () Bool)

(declare-fun tp!209346 () Bool)

(assert (=> b!693300 (= e!436316 (and tp!209348 tp!209346))))

(declare-fun b!693302 () Bool)

(declare-fun tp!209349 () Bool)

(declare-fun tp!209345 () Bool)

(assert (=> b!693302 (= e!436316 (and tp!209349 tp!209345))))

(declare-fun b!693301 () Bool)

(declare-fun tp!209347 () Bool)

(assert (=> b!693301 (= e!436316 tp!209347)))

(assert (= (and b!692488 ((_ is ElementMatch!1845) (_1!4377 (_1!4378 (h!12918 mapDefault!3133))))) b!693299))

(assert (= (and b!692488 ((_ is Concat!3395) (_1!4377 (_1!4378 (h!12918 mapDefault!3133))))) b!693300))

(assert (= (and b!692488 ((_ is Star!1845) (_1!4377 (_1!4378 (h!12918 mapDefault!3133))))) b!693301))

(assert (= (and b!692488 ((_ is Union!1845) (_1!4377 (_1!4378 (h!12918 mapDefault!3133))))) b!693302))

(declare-fun setIsEmpty!3884 () Bool)

(declare-fun setRes!3884 () Bool)

(assert (=> setIsEmpty!3884 setRes!3884))

(declare-fun b!693303 () Bool)

(declare-fun e!436317 () Bool)

(declare-fun tp!209352 () Bool)

(assert (=> b!693303 (= e!436317 tp!209352)))

(declare-fun setElem!3884 () Context!494)

(declare-fun tp!209353 () Bool)

(declare-fun setNonEmpty!3884 () Bool)

(assert (=> setNonEmpty!3884 (= setRes!3884 (and tp!209353 (inv!9640 setElem!3884) e!436317))))

(declare-fun setRest!3884 () (InoxSet Context!494))

(assert (=> setNonEmpty!3884 (= (_2!4378 (h!12918 (t!87349 mapDefault!3133))) ((_ map or) (store ((as const (Array Context!494 Bool)) false) setElem!3884 true) setRest!3884))))

(declare-fun e!436318 () Bool)

(assert (=> b!692488 (= tp!208921 e!436318)))

(declare-fun e!436319 () Bool)

(declare-fun tp!209351 () Bool)

(declare-fun tp!209350 () Bool)

(declare-fun b!693304 () Bool)

(assert (=> b!693304 (= e!436318 (and tp!209351 (inv!9640 (_2!4377 (_1!4378 (h!12918 (t!87349 mapDefault!3133))))) e!436319 tp_is_empty!3647 setRes!3884 tp!209350))))

(declare-fun condSetEmpty!3884 () Bool)

(assert (=> b!693304 (= condSetEmpty!3884 (= (_2!4378 (h!12918 (t!87349 mapDefault!3133))) ((as const (Array Context!494 Bool)) false)))))

(declare-fun b!693305 () Bool)

(declare-fun tp!209354 () Bool)

(assert (=> b!693305 (= e!436319 tp!209354)))

(assert (= b!693304 b!693305))

(assert (= (and b!693304 condSetEmpty!3884) setIsEmpty!3884))

(assert (= (and b!693304 (not condSetEmpty!3884)) setNonEmpty!3884))

(assert (= setNonEmpty!3884 b!693303))

(assert (= (and b!692488 ((_ is Cons!7517) (t!87349 mapDefault!3133))) b!693304))

(declare-fun m!949567 () Bool)

(assert (=> setNonEmpty!3884 m!949567))

(declare-fun m!949569 () Bool)

(assert (=> b!693304 m!949569))

(declare-fun b!693306 () Bool)

(declare-fun e!436320 () Bool)

(declare-fun tp!209355 () Bool)

(declare-fun tp!209356 () Bool)

(assert (=> b!693306 (= e!436320 (and tp!209355 tp!209356))))

(assert (=> b!692429 (= tp!208842 e!436320)))

(assert (= (and b!692429 ((_ is Cons!7512) (exprs!747 setElem!3808))) b!693306))

(declare-fun b_lambda!25981 () Bool)

(assert (= b_lambda!25979 (or d!232662 b_lambda!25981)))

(declare-fun bs!137892 () Bool)

(declare-fun d!232976 () Bool)

(assert (= bs!137892 (and d!232976 d!232662)))

(assert (=> bs!137892 (= (dynLambda!3885 lambda!21538 (h!12917 rules!1486)) (ruleValid!462 thiss!12529 (h!12917 rules!1486)))))

(assert (=> bs!137892 m!948452))

(assert (=> b!692783 d!232976))

(check-sat (not b!693207) (not b!693284) (not d!232820) (not setNonEmpty!3869) (not b!693085) b_and!63469 (not b!692948) (not b!693126) (not d!232766) (not setNonEmpty!3884) (not setNonEmpty!3872) (not b_next!19747) (not b!692596) (not b!693286) (not setNonEmpty!3881) (not b!693273) (not b!692938) (not b!692452) (not b!692875) (not b!693026) (not b!693257) (not d!232958) (not b!693053) (not b!692826) (not b!693134) (not b!692707) (not b!693241) (not setNonEmpty!3877) (not b!693032) (not b!692959) (not b!692677) (not b!692862) (not b!693062) (not b!693096) (not b!693087) (not b!692967) (not b!692998) (not b!693206) (not b!693186) (not b!692803) (not b!692598) (not b!693077) (not b!692616) (not setNonEmpty!3865) (not b!693140) (not b!693000) (not b!692905) (not b!692971) (not b!693211) (not d!232886) (not setNonEmpty!3850) (not b!693181) (not setNonEmpty!3879) (not b!692927) (not b!693228) (not b!693041) (not b!693102) (not setNonEmpty!3883) (not b!693060) (not d!232974) (not bs!137892) (not b!693263) (not d!232856) (not b_next!19753) (not b!693188) (not b!692966) (not b!692968) (not b!693281) (not b!693131) (not d!232774) (not b!692817) (not b!693213) (not d!232920) (not b!692814) (not b!693088) (not b!693305) (not b!693276) (not d!232878) (not b!693145) (not b!692524) (not setNonEmpty!3868) (not b!692939) (not d!232966) (not setNonEmpty!3853) (not b!692931) (not bm!43638) (not b!692877) (not d!232770) (not d!232872) (not d!232832) (not b!692914) (not b!693055) (not b!692921) (not d!232782) (not setNonEmpty!3878) (not b!693183) (not b!693216) (not b!693256) (not b!693255) (not d!232952) (not d!232876) (not b!693282) (not b!693231) (not b!693111) (not d!232972) (not b_next!19733) (not b!693264) (not b!693298) (not b!692804) (not bm!43644) (not d!232962) (not b!693184) (not b!692735) (not b!693173) (not b!692958) (not b!692742) (not d!232916) (not setNonEmpty!3874) (not b!693039) (not setNonEmpty!3866) (not b!693180) (not b!693138) b_and!63463 (not b!693225) (not b!693233) (not b!693029) (not b!693285) b_and!63475 (not setNonEmpty!3863) (not d!232928) (not b_next!19745) (not b!693157) (not b!692940) (not b!693107) (not d!232796) (not b!693291) (not d!232804) (not b_next!19751) (not b!692777) (not b!692674) (not b!693218) (not b_next!19741) (not d!232960) (not b!693301) (not b!693056) (not b!692965) (not b!693064) (not setNonEmpty!3858) (not b!693202) (not b!692982) (not b!693187) (not d!232744) (not b!693036) (not b!693132) (not d!232902) (not b!692880) (not b!693154) (not b!692933) (not d!232822) (not b!693296) (not d!232754) (not b!693031) (not d!232736) (not b!692889) (not b!693165) (not b!692894) (not d!232794) (not d!232938) (not b!693265) (not b!692697) (not b!693171) (not setNonEmpty!3855) (not d!232710) (not b!692950) (not b!692760) (not b!693297) (not b!692789) (not b!692963) (not b!693300) (not b!692913) (not b_next!19737) (not b!693250) (not d!232846) (not b_next!19739) (not d!232874) (not setNonEmpty!3852) (not d!232852) (not b!692741) (not b!692824) (not b!692918) (not b!692842) (not b!693242) (not b!693150) (not b!693052) (not b!693251) (not b!693270) b_and!63473 (not b!693070) (not b!693303) (not setNonEmpty!3860) (not b!693266) (not b!692736) (not b!693133) (not d!232752) (not b!693142) (not b!693290) (not b!693141) (not mapNonEmpty!3138) (not b!693001) (not b!692972) (not b!693215) (not b!692961) (not b!692813) (not b!692600) (not d!232892) (not d!232808) (not b!693240) (not b!693245) (not b!693167) (not b!693113) (not b!692925) (not b!693221) (not b_next!19749) (not b!693037) b_and!63479 (not d!232908) (not d!232884) (not b!692964) (not b!693258) (not b!692768) (not setNonEmpty!3856) (not b!692878) (not b!693156) (not bm!43645) (not setNonEmpty!3882) (not b!692809) (not b!692614) (not setNonEmpty!3854) (not setNonEmpty!3867) (not b!692759) (not d!232956) (not b!693288) (not setNonEmpty!3842) (not b!693166) (not setNonEmpty!3841) (not b!693269) (not b!693127) (not b!693268) (not b!693200) (not d!232894) (not b!693152) (not b!693175) (not d!232768) (not b!693034) (not d!232862) (not bm!43646) (not b!693135) (not b!692665) (not b!693110) (not b!693147) (not b!692727) (not setNonEmpty!3864) (not d!232870) (not b!692829) (not b!692861) (not b!693177) (not b!692703) (not b!693226) (not b!693234) (not b!693071) (not setNonEmpty!3870) (not b!693058) (not b!693219) (not b!692926) (not b!693082) (not b!692612) (not b_next!19757) (not b!692943) (not b!693143) (not b!693244) b_and!63467 (not setNonEmpty!3876) (not b!693201) (not b!693169) (not b!692983) (not b!692675) (not b!692705) (not b!693072) (not b!692912) (not b!692920) (not b!692881) (not b!693279) (not d!232946) (not d!232836) (not b!692903) (not b!693280) (not b!693278) (not setNonEmpty!3859) (not b!692928) (not setNonEmpty!3849) (not b!692942) (not d!232954) (not b!693160) (not b!692917) (not b!693232) (not b!692909) b_and!63489 (not b!693094) (not setNonEmpty!3875) (not b!693084) (not b_next!19735) (not b!692908) (not b!693161) (not d!232868) (not b!693148) (not b!693163) (not b!693209) (not b!693294) (not d!232906) (not b_next!19743) (not b!692883) (not bm!43647) (not b!693097) (not b!692816) (not b!693115) (not b!693067) (not bm!43629) b_and!63483 (not d!232880) (not b!693223) (not b!693306) (not b!693248) (not b!693136) (not setNonEmpty!3843) (not b!692884) (not b!693212) (not b!693205) (not setNonEmpty!3851) (not b!692827) (not b!692693) (not b!692667) (not d!232930) (not b!692986) tp_is_empty!3647 (not d!232900) (not b!692904) (not b!693224) (not b!693042) (not b!693230) (not b!693125) (not b!692718) (not d!232746) (not b!693185) (not mapNonEmpty!3139) (not b!692766) (not b!693229) (not b!693129) (not b!692722) (not b!693144) (not b!692765) (not b!692945) (not b!692946) (not b!692696) (not b!692885) (not b!693112) (not b!693247) (not b!692882) (not b!692553) (not b!692929) (not b!693091) (not b!692841) (not d!232756) (not b!692930) (not b!693076) (not b!693128) (not b!693246) (not d!232762) (not d!232912) (not mapNonEmpty!3137) (not b!692762) (not b!693295) (not b!693027) (not d!232896) (not b!693086) (not b!692825) (not d!232718) (not setNonEmpty!3880) (not b!692935) (not d!232776) (not b!693214) (not setNonEmpty!3847) (not bm!43641) (not b!693254) (not d!232948) (not b!693292) (not d!232786) (not b!693090) (not b!692810) (not b!693117) (not b!692806) (not b_lambda!25981) (not b!693146) (not bm!43636) (not b!693262) b_and!63487 (not b!693114) (not b!692692) (not d!232726) (not bm!43633) (not b!693293) (not bm!43631) (not b_next!19755) (not b!693277) (not b!693006) (not b!693274) (not b!692802) (not b!692597) (not d!232750) (not d!232830) (not d!232968) (not b!693189) (not b!692960) (not b!693095) (not b!693030) (not b_next!19759) (not b!693139) (not d!232802) (not b!693217) (not b!693170) (not b!692812) (not b!693260) (not b!692995) (not b!693271) (not b!692761) (not b!692599) (not b!693178) (not b!693109) (not b!692784) (not b!693236) (not b!693304) (not setNonEmpty!3846) (not bm!43637) (not b!693238) (not d!232890) (not b!692962) (not b!693116) (not b!692715) (not b!693164) (not b!692902) (not b!693153) (not b!693176) (not d!232740) (not d!232810) (not b!693120) b_and!63465 (not b!693045) (not d!232708) (not b!693227) (not b!693249) (not d!232722) (not d!232792) (not d!232970) (not d!232914) (not b!693093) (not d!232904) (not b!692763) (not b!693259) (not b!693174) (not b!693151) (not b!692717) (not d!232860) (not d!232814) (not b!693168) b_and!63477 (not b!692660) (not b!693159) (not b!693243) (not d!232844) (not b!692957) (not bm!43634) (not b!693302) (not b!692601) (not d!232758) (not b!692985) (not b!693289) (not d!232806) (not d!232778) (not d!232784) (not b!693149) (not b!693118) (not b!692767) (not b!693005) (not b!693267) (not b!692915) (not d!232838) (not b!693108) (not b!693222) (not b!693220) (not b!693158) (not b!693237) b_and!63485 (not b!693119) (not b!692822) (not b!692721) (not d!232826) (not b!692694) (not b!692888) (not b!693252) (not d!232738) (not b!692581) (not setNonEmpty!3862) (not b!693179) (not b!693210) (not b!692719) b_and!63471 (not b!693182) (not b!693283) (not b!692720) (not setNonEmpty!3848) (not b!692906) (not b!692502) (not d!232798) (not d!232748) (not b!693272) (not setNonEmpty!3871) (not b!693065) (not setNonEmpty!3873) (not setNonEmpty!3861) (not b!692695) (not d!232926) (not b!692801) (not d!232858) (not b!692996) (not b!692916) (not b!693162) (not b!692924) (not d!232828) (not b!692820) (not d!232764) (not b!692823) b_and!63481 (not d!232964) (not b!693092) (not d!232728) (not b!692955) (not setNonEmpty!3857) (not b!692769) (not b!692807) (not b!692815) (not b!693089) (not b!692895) (not b!693051))
(check-sat (not b_next!19753) (not b_next!19733) (not b_next!19741) b_and!63473 (not b_next!19757) b_and!63467 (not b_next!19743) b_and!63483 b_and!63487 b_and!63465 b_and!63477 b_and!63481 (not b_next!19747) b_and!63469 b_and!63463 (not b_next!19751) b_and!63475 (not b_next!19745) (not b_next!19737) (not b_next!19739) (not b_next!19749) b_and!63479 (not b_next!19735) b_and!63489 (not b_next!19755) (not b_next!19759) b_and!63485 b_and!63471)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62874 () Bool)

(assert start!62874)

(declare-fun b!640491 () Bool)

(declare-fun b_free!18797 () Bool)

(declare-fun b_next!18837 () Bool)

(assert (=> b!640491 (= b_free!18797 (not b_next!18837))))

(declare-fun tp!199110 () Bool)

(declare-fun b_and!62591 () Bool)

(assert (=> b!640491 (= tp!199110 b_and!62591)))

(declare-fun b!640478 () Bool)

(declare-fun b_free!18799 () Bool)

(declare-fun b_next!18839 () Bool)

(assert (=> b!640478 (= b_free!18799 (not b_next!18839))))

(declare-fun tp!199103 () Bool)

(declare-fun b_and!62593 () Bool)

(assert (=> b!640478 (= tp!199103 b_and!62593)))

(declare-fun b!640476 () Bool)

(declare-fun b_free!18801 () Bool)

(declare-fun b_next!18841 () Bool)

(assert (=> b!640476 (= b_free!18801 (not b_next!18841))))

(declare-fun tp!199115 () Bool)

(declare-fun b_and!62595 () Bool)

(assert (=> b!640476 (= tp!199115 b_and!62595)))

(declare-fun b!640486 () Bool)

(declare-fun b_free!18803 () Bool)

(declare-fun b_next!18843 () Bool)

(assert (=> b!640486 (= b_free!18803 (not b_next!18843))))

(declare-fun tp!199114 () Bool)

(declare-fun b_and!62597 () Bool)

(assert (=> b!640486 (= tp!199114 b_and!62597)))

(declare-fun b!640473 () Bool)

(declare-fun e!391190 () Bool)

(declare-fun tp!199113 () Bool)

(declare-fun e!391183 () Bool)

(declare-datatypes ((List!6877 0))(
  ( (Nil!6863) (Cons!6863 (h!12264 (_ BitVec 16)) (t!84887 List!6877)) )
))
(declare-datatypes ((TokenValue!1412 0))(
  ( (FloatLiteralValue!2824 (text!10329 List!6877)) (TokenValueExt!1411 (__x!4890 Int)) (Broken!7060 (value!44398 List!6877)) (Object!1425) (End!1412) (Def!1412) (Underscore!1412) (Match!1412) (Else!1412) (Error!1412) (Case!1412) (If!1412) (Extends!1412) (Abstract!1412) (Class!1412) (Val!1412) (DelimiterValue!2824 (del!1472 List!6877)) (KeywordValue!1418 (value!44399 List!6877)) (CommentValue!2824 (value!44400 List!6877)) (WhitespaceValue!2824 (value!44401 List!6877)) (IndentationValue!1412 (value!44402 List!6877)) (String!8797) (Int32!1412) (Broken!7061 (value!44403 List!6877)) (Boolean!1413) (Unit!11923) (OperatorValue!1415 (op!1472 List!6877)) (IdentifierValue!2824 (value!44404 List!6877)) (IdentifierValue!2825 (value!44405 List!6877)) (WhitespaceValue!2825 (value!44406 List!6877)) (True!2824) (False!2824) (Broken!7062 (value!44407 List!6877)) (Broken!7063 (value!44408 List!6877)) (True!2825) (RightBrace!1412) (RightBracket!1412) (Colon!1412) (Null!1412) (Comma!1412) (LeftBracket!1412) (False!2825) (LeftBrace!1412) (ImaginaryLiteralValue!1412 (text!10330 List!6877)) (StringLiteralValue!4236 (value!44409 List!6877)) (EOFValue!1412 (value!44410 List!6877)) (IdentValue!1412 (value!44411 List!6877)) (DelimiterValue!2825 (value!44412 List!6877)) (DedentValue!1412 (value!44413 List!6877)) (NewLineValue!1412 (value!44414 List!6877)) (IntegerValue!4236 (value!44415 (_ BitVec 32)) (text!10331 List!6877)) (IntegerValue!4237 (value!44416 Int) (text!10332 List!6877)) (Times!1412) (Or!1412) (Equal!1412) (Minus!1412) (Broken!7064 (value!44417 List!6877)) (And!1412) (Div!1412) (LessEqual!1412) (Mod!1412) (Concat!3125) (Not!1412) (Plus!1412) (SpaceValue!1412 (value!44418 List!6877)) (IntegerValue!4238 (value!44419 Int) (text!10333 List!6877)) (StringLiteralValue!4237 (text!10334 List!6877)) (FloatLiteralValue!2825 (text!10335 List!6877)) (BytesLiteralValue!1412 (value!44420 List!6877)) (CommentValue!2825 (value!44421 List!6877)) (StringLiteralValue!4238 (value!44422 List!6877)) (ErrorTokenValue!1412 (msg!1473 List!6877)) )
))
(declare-datatypes ((Regex!1713 0))(
  ( (ElementMatch!1713 (c!117090 (_ BitVec 16))) (Concat!3126 (regOne!3938 Regex!1713) (regTwo!3938 Regex!1713)) (EmptyExpr!1713) (Star!1713 (reg!2042 Regex!1713)) (EmptyLang!1713) (Union!1713 (regOne!3939 Regex!1713) (regTwo!3939 Regex!1713)) )
))
(declare-datatypes ((String!8798 0))(
  ( (String!8799 (value!44423 String)) )
))
(declare-datatypes ((IArray!4635 0))(
  ( (IArray!4636 (innerList!2375 List!6877)) )
))
(declare-datatypes ((Conc!2317 0))(
  ( (Node!2317 (left!5463 Conc!2317) (right!5793 Conc!2317) (csize!4864 Int) (cheight!2528 Int)) (Leaf!3522 (xs!4958 IArray!4635) (csize!4865 Int)) (Empty!2317) )
))
(declare-datatypes ((BalanceConc!4646 0))(
  ( (BalanceConc!4647 (c!117091 Conc!2317)) )
))
(declare-datatypes ((TokenValueInjection!2576 0))(
  ( (TokenValueInjection!2577 (toValue!2319 Int) (toChars!2178 Int)) )
))
(declare-datatypes ((Rule!2556 0))(
  ( (Rule!2557 (regex!1378 Regex!1713) (tag!1640 String!8798) (isSeparator!1378 Bool) (transformation!1378 TokenValueInjection!2576)) )
))
(declare-datatypes ((Token!2478 0))(
  ( (Token!2479 (value!44424 TokenValue!1412) (rule!2173 Rule!2556) (size!5409 Int) (originalCharacters!1410 List!6877)) )
))
(declare-datatypes ((List!6878 0))(
  ( (Nil!6864) (Cons!6864 (h!12265 Token!2478) (t!84888 List!6878)) )
))
(declare-datatypes ((IArray!4637 0))(
  ( (IArray!4638 (innerList!2376 List!6878)) )
))
(declare-datatypes ((Conc!2318 0))(
  ( (Node!2318 (left!5464 Conc!2318) (right!5794 Conc!2318) (csize!4866 Int) (cheight!2529 Int)) (Leaf!3523 (xs!4959 IArray!4637) (csize!4867 Int)) (Empty!2318) )
))
(declare-datatypes ((List!6879 0))(
  ( (Nil!6865) (Cons!6865 (h!12266 Rule!2556) (t!84889 List!6879)) )
))
(declare-datatypes ((BalanceConc!4648 0))(
  ( (BalanceConc!4649 (c!117092 Conc!2318)) )
))
(declare-datatypes ((PrintableTokens!136 0))(
  ( (PrintableTokens!137 (rules!8210 List!6879) (tokens!1209 BalanceConc!4648)) )
))
(declare-fun printableTokens!2 () PrintableTokens!136)

(declare-fun inv!8700 (BalanceConc!4648) Bool)

(assert (=> b!640473 (= e!391183 (and tp!199113 (inv!8700 (tokens!1209 printableTokens!2)) e!391190))))

(declare-fun b!640474 () Bool)

(declare-fun e!391181 () Bool)

(declare-fun e!391173 () Bool)

(assert (=> b!640474 (= e!391181 e!391173)))

(declare-fun b!640475 () Bool)

(declare-fun e!391191 () Bool)

(declare-fun e!391182 () Bool)

(assert (=> b!640475 (= e!391191 e!391182)))

(declare-fun e!391186 () Bool)

(declare-fun tp!199102 () Bool)

(declare-fun e!391185 () Bool)

(declare-datatypes ((Hashable!637 0))(
  ( (HashableExt!636 (__x!4891 Int)) )
))
(declare-datatypes ((List!6880 0))(
  ( (Nil!6866) (Cons!6866 (h!12267 Regex!1713) (t!84890 List!6880)) )
))
(declare-datatypes ((Context!398 0))(
  ( (Context!399 (exprs!699 List!6880)) )
))
(declare-datatypes ((tuple2!7428 0))(
  ( (tuple2!7429 (_1!4048 Context!398) (_2!4048 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7430 0))(
  ( (tuple2!7431 (_1!4049 tuple2!7428) (_2!4049 (InoxSet Context!398))) )
))
(declare-datatypes ((List!6881 0))(
  ( (Nil!6867) (Cons!6867 (h!12268 tuple2!7430) (t!84891 List!6881)) )
))
(declare-datatypes ((array!2531 0))(
  ( (array!2532 (arr!1150 (Array (_ BitVec 32) List!6881)) (size!5410 (_ BitVec 32))) )
))
(declare-datatypes ((array!2533 0))(
  ( (array!2534 (arr!1151 (Array (_ BitVec 32) (_ BitVec 64))) (size!5411 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1330 0))(
  ( (LongMapFixedSize!1331 (defaultEntry!1021 Int) (mask!2401 (_ BitVec 32)) (extraKeys!912 (_ BitVec 32)) (zeroValue!922 List!6881) (minValue!922 List!6881) (_size!1439 (_ BitVec 32)) (_keys!959 array!2533) (_values!944 array!2531) (_vacant!726 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2601 0))(
  ( (Cell!2602 (v!16994 LongMapFixedSize!1330)) )
))
(declare-datatypes ((MutLongMap!665 0))(
  ( (LongMap!665 (underlying!1513 Cell!2601)) (MutLongMapExt!664 (__x!4892 Int)) )
))
(declare-datatypes ((Cell!2603 0))(
  ( (Cell!2604 (v!16995 MutLongMap!665)) )
))
(declare-datatypes ((MutableMap!637 0))(
  ( (MutableMapExt!636 (__x!4893 Int)) (HashMap!637 (underlying!1514 Cell!2603) (hashF!2545 Hashable!637) (_size!1440 (_ BitVec 32)) (defaultValue!788 Int)) )
))
(declare-datatypes ((CacheUp!298 0))(
  ( (CacheUp!299 (cache!1024 MutableMap!637)) )
))
(declare-fun cacheUp!351 () CacheUp!298)

(declare-fun tp!199117 () Bool)

(declare-fun array_inv!840 (array!2533) Bool)

(declare-fun array_inv!841 (array!2531) Bool)

(assert (=> b!640476 (= e!391186 (and tp!199115 tp!199117 tp!199102 (array_inv!840 (_keys!959 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) (array_inv!841 (_values!944 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) e!391185))))

(declare-fun b!640477 () Bool)

(declare-fun e!391178 () Bool)

(declare-fun lt!274716 () MutLongMap!665)

(get-info :version)

(assert (=> b!640477 (= e!391178 (and e!391191 ((_ is LongMap!665) lt!274716)))))

(assert (=> b!640477 (= lt!274716 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))

(declare-fun mapNonEmpty!2626 () Bool)

(declare-fun mapRes!2626 () Bool)

(declare-fun tp!199105 () Bool)

(declare-fun tp!199108 () Bool)

(assert (=> mapNonEmpty!2626 (= mapRes!2626 (and tp!199105 tp!199108))))

(declare-fun mapValue!2626 () List!6881)

(declare-fun mapRest!2627 () (Array (_ BitVec 32) List!6881))

(declare-fun mapKey!2626 () (_ BitVec 32))

(assert (=> mapNonEmpty!2626 (= (arr!1150 (_values!944 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) (store mapRest!2627 mapKey!2626 mapValue!2626))))

(declare-fun e!391187 () Bool)

(assert (=> b!640478 (= e!391187 (and e!391178 tp!199103))))

(declare-fun b!640479 () Bool)

(declare-fun e!391172 () Bool)

(declare-fun e!391180 () Bool)

(assert (=> b!640479 (= e!391172 e!391180)))

(declare-fun b!640480 () Bool)

(declare-fun e!391188 () Bool)

(declare-fun e!391177 () Bool)

(assert (=> b!640480 (= e!391188 e!391177)))

(declare-fun res!278581 () Bool)

(assert (=> b!640480 (=> (not res!278581) (not e!391177))))

(declare-fun lt!274715 () List!6879)

(declare-fun isEmpty!4699 (List!6879) Bool)

(assert (=> b!640480 (= res!278581 (not (isEmpty!4699 lt!274715)))))

(declare-datatypes ((JsonLexer!196 0))(
  ( (JsonLexer!197) )
))
(declare-fun rules!109 (JsonLexer!196) List!6879)

(assert (=> b!640480 (= lt!274715 (rules!109 JsonLexer!197))))

(declare-fun b!640481 () Bool)

(declare-fun res!278579 () Bool)

(declare-fun e!391176 () Bool)

(assert (=> b!640481 (=> res!278579 e!391176)))

(declare-datatypes ((tuple3!566 0))(
  ( (tuple3!567 (_1!4050 Regex!1713) (_2!4050 Context!398) (_3!334 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7432 0))(
  ( (tuple2!7433 (_1!4051 tuple3!566) (_2!4051 (InoxSet Context!398))) )
))
(declare-datatypes ((List!6882 0))(
  ( (Nil!6868) (Cons!6868 (h!12269 tuple2!7432) (t!84892 List!6882)) )
))
(declare-datatypes ((array!2535 0))(
  ( (array!2536 (arr!1152 (Array (_ BitVec 32) List!6882)) (size!5412 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1332 0))(
  ( (LongMapFixedSize!1333 (defaultEntry!1022 Int) (mask!2402 (_ BitVec 32)) (extraKeys!913 (_ BitVec 32)) (zeroValue!923 List!6882) (minValue!923 List!6882) (_size!1441 (_ BitVec 32)) (_keys!960 array!2533) (_values!945 array!2535) (_vacant!727 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2605 0))(
  ( (Cell!2606 (v!16996 LongMapFixedSize!1332)) )
))
(declare-datatypes ((MutLongMap!666 0))(
  ( (LongMap!666 (underlying!1515 Cell!2605)) (MutLongMapExt!665 (__x!4894 Int)) )
))
(declare-datatypes ((Cell!2607 0))(
  ( (Cell!2608 (v!16997 MutLongMap!666)) )
))
(declare-datatypes ((Hashable!638 0))(
  ( (HashableExt!637 (__x!4895 Int)) )
))
(declare-datatypes ((MutableMap!638 0))(
  ( (MutableMapExt!637 (__x!4896 Int)) (HashMap!638 (underlying!1516 Cell!2607) (hashF!2546 Hashable!638) (_size!1442 (_ BitVec 32)) (defaultValue!789 Int)) )
))
(declare-datatypes ((CacheDown!298 0))(
  ( (CacheDown!299 (cache!1025 MutableMap!638)) )
))
(declare-datatypes ((Option!1661 0))(
  ( (None!1660) (Some!1660 (v!16998 PrintableTokens!136)) )
))
(declare-datatypes ((tuple3!568 0))(
  ( (tuple3!569 (_1!4052 Option!1661) (_2!4052 CacheUp!298) (_3!335 CacheDown!298)) )
))
(declare-fun lt!274708 () tuple3!568)

(declare-fun usesJsonRules!0 (PrintableTokens!136) Bool)

(assert (=> b!640481 (= res!278579 (not (usesJsonRules!0 (v!16998 (_1!4052 lt!274708)))))))

(declare-fun b!640482 () Bool)

(declare-fun e!391175 () Bool)

(declare-fun lt!274714 () MutLongMap!666)

(assert (=> b!640482 (= e!391175 (and e!391172 ((_ is LongMap!666) lt!274714)))))

(declare-fun cacheDown!364 () CacheDown!298)

(assert (=> b!640482 (= lt!274714 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))

(declare-fun b!640483 () Bool)

(declare-fun tp!199116 () Bool)

(assert (=> b!640483 (= e!391185 (and tp!199116 mapRes!2626))))

(declare-fun condMapEmpty!2627 () Bool)

(declare-fun mapDefault!2626 () List!6881)

(assert (=> b!640483 (= condMapEmpty!2627 (= (arr!1150 (_values!944 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6881)) mapDefault!2626)))))

(declare-fun b!640484 () Bool)

(declare-fun res!278578 () Bool)

(assert (=> b!640484 (=> (not res!278578) (not e!391177))))

(declare-datatypes ((LexerInterface!1256 0))(
  ( (LexerInterfaceExt!1253 (__x!4897 Int)) (Lexer!1254) )
))
(declare-fun rulesInvariant!1191 (LexerInterface!1256 List!6879) Bool)

(assert (=> b!640484 (= res!278578 (rulesInvariant!1191 Lexer!1254 lt!274715))))

(declare-fun b!640485 () Bool)

(assert (=> b!640485 (= e!391182 e!391186)))

(declare-fun tp!199109 () Bool)

(declare-fun e!391179 () Bool)

(declare-fun tp!199111 () Bool)

(declare-fun e!391189 () Bool)

(declare-fun array_inv!842 (array!2535) Bool)

(assert (=> b!640486 (= e!391189 (and tp!199114 tp!199111 tp!199109 (array_inv!840 (_keys!960 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) (array_inv!842 (_values!945 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) e!391179))))

(declare-fun b!640487 () Bool)

(declare-fun res!278577 () Bool)

(assert (=> b!640487 (=> (not res!278577) (not e!391177))))

(assert (=> b!640487 (= res!278577 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!640488 () Bool)

(declare-fun tp!199107 () Bool)

(declare-fun inv!8701 (Conc!2318) Bool)

(assert (=> b!640488 (= e!391190 (and (inv!8701 (c!117092 (tokens!1209 printableTokens!2))) tp!199107))))

(declare-fun b!640489 () Bool)

(declare-fun lt!274713 () tuple3!568)

(assert (=> b!640489 (= e!391176 (usesJsonRules!0 (v!16998 (_1!4052 lt!274713))))))

(declare-fun b!640490 () Bool)

(declare-fun tp!199112 () Bool)

(declare-fun mapRes!2627 () Bool)

(assert (=> b!640490 (= e!391179 (and tp!199112 mapRes!2627))))

(declare-fun condMapEmpty!2626 () Bool)

(declare-fun mapDefault!2627 () List!6882)

(assert (=> b!640490 (= condMapEmpty!2626 (= (arr!1152 (_values!945 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6882)) mapDefault!2627)))))

(assert (=> b!640491 (= e!391173 (and e!391175 tp!199110))))

(declare-fun mapIsEmpty!2627 () Bool)

(assert (=> mapIsEmpty!2627 mapRes!2627))

(declare-fun b!640492 () Bool)

(declare-fun e!391171 () Bool)

(assert (=> b!640492 (= e!391171 e!391187)))

(declare-fun mapNonEmpty!2627 () Bool)

(declare-fun tp!199106 () Bool)

(declare-fun tp!199104 () Bool)

(assert (=> mapNonEmpty!2627 (= mapRes!2627 (and tp!199106 tp!199104))))

(declare-fun mapValue!2627 () List!6882)

(declare-fun mapKey!2627 () (_ BitVec 32))

(declare-fun mapRest!2626 () (Array (_ BitVec 32) List!6882))

(assert (=> mapNonEmpty!2627 (= (arr!1152 (_values!945 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) (store mapRest!2626 mapKey!2627 mapValue!2627))))

(declare-fun b!640493 () Bool)

(assert (=> b!640493 (= e!391180 e!391189)))

(declare-fun b!640494 () Bool)

(declare-fun res!278576 () Bool)

(assert (=> b!640494 (=> res!278576 e!391176)))

(declare-fun lt!274706 () tuple3!568)

(assert (=> b!640494 (= res!278576 (not (usesJsonRules!0 (v!16998 (_1!4052 lt!274706)))))))

(declare-fun b!640495 () Bool)

(assert (=> b!640495 (= e!391177 (not e!391176))))

(declare-fun res!278575 () Bool)

(assert (=> b!640495 (=> res!278575 e!391176)))

(assert (=> b!640495 (= res!278575 (or (not ((_ is Some!1660) (_1!4052 lt!274708))) (not ((_ is Some!1660) (_1!4052 lt!274706))) (not ((_ is Some!1660) (_1!4052 lt!274713)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!298 CacheDown!298) tuple3!568)

(assert (=> b!640495 (= lt!274713 (createRightBracketSeparator!0 (_2!4052 lt!274706) (_3!335 lt!274706)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!298 CacheDown!298) tuple3!568)

(assert (=> b!640495 (= lt!274706 (createLeftBracketSeparator!0 (_2!4052 lt!274708) (_3!335 lt!274708)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!298 CacheDown!298) tuple3!568)

(assert (=> b!640495 (= lt!274708 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-datatypes ((tuple2!7434 0))(
  ( (tuple2!7435 (_1!4053 Int) (_2!4053 PrintableTokens!136)) )
))
(declare-datatypes ((List!6883 0))(
  ( (Nil!6869) (Cons!6869 (h!12270 tuple2!7434) (t!84893 List!6883)) )
))
(declare-datatypes ((IArray!4639 0))(
  ( (IArray!4640 (innerList!2377 List!6883)) )
))
(declare-datatypes ((Conc!2319 0))(
  ( (Node!2319 (left!5465 Conc!2319) (right!5795 Conc!2319) (csize!4868 Int) (cheight!2530 Int)) (Leaf!3524 (xs!4960 IArray!4639) (csize!4869 Int)) (Empty!2319) )
))
(declare-datatypes ((BalanceConc!4650 0))(
  ( (BalanceConc!4651 (c!117093 Conc!2319)) )
))
(declare-fun lt!274704 () BalanceConc!4650)

(declare-fun lambda!18869 () Int)

(declare-fun lambda!18870 () Int)

(declare-datatypes ((List!6884 0))(
  ( (Nil!6870) (Cons!6870 (h!12271 PrintableTokens!136) (t!84894 List!6884)) )
))
(declare-datatypes ((IArray!4641 0))(
  ( (IArray!4642 (innerList!2378 List!6884)) )
))
(declare-datatypes ((Conc!2320 0))(
  ( (Node!2320 (left!5466 Conc!2320) (right!5796 Conc!2320) (csize!4870 Int) (cheight!2531 Int)) (Leaf!3525 (xs!4961 IArray!4641) (csize!4871 Int)) (Empty!2320) )
))
(declare-datatypes ((BalanceConc!4652 0))(
  ( (BalanceConc!4653 (c!117094 Conc!2320)) )
))
(declare-fun forall!1757 (BalanceConc!4652 Int) Bool)

(declare-fun map!1500 (BalanceConc!4650 Int) BalanceConc!4652)

(assert (=> b!640495 (forall!1757 (map!1500 lt!274704 lambda!18869) lambda!18870)))

(declare-fun lt!274712 () List!6883)

(declare-datatypes ((Unit!11924 0))(
  ( (Unit!11925) )
))
(declare-fun lt!274710 () Unit!11924)

(declare-fun mapPred!53 (List!6883 Int Int) Unit!11924)

(assert (=> b!640495 (= lt!274710 (mapPred!53 lt!274712 lambda!18869 lambda!18870))))

(declare-fun lt!274705 () Unit!11924)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6883) Unit!11924)

(assert (=> b!640495 (= lt!274705 (lemmaRemoveIdsPreservesRules!0 lt!274712))))

(declare-fun list!2909 (BalanceConc!4650) List!6883)

(assert (=> b!640495 (= lt!274712 (list!2909 lt!274704))))

(declare-fun lt!274709 () BalanceConc!4652)

(declare-fun lambda!18867 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4650) BalanceConc!4650)

(declare-fun map!1501 (BalanceConc!4652 Int) BalanceConc!4650)

(assert (=> b!640495 (= lt!274704 (sortObjectsByID!0 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!274707 () List!6884)

(declare-fun lambda!18868 () Int)

(declare-fun lt!274717 () Unit!11924)

(declare-fun mapPred!54 (List!6884 Int Int) Unit!11924)

(assert (=> b!640495 (= lt!274717 (mapPred!54 lt!274707 lambda!18867 lambda!18868))))

(declare-fun lt!274703 () Unit!11924)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6884) Unit!11924)

(assert (=> b!640495 (= lt!274703 (lemmaAddIdsPreservesRules!0 lt!274707))))

(declare-fun list!2910 (BalanceConc!4652) List!6884)

(assert (=> b!640495 (= lt!274707 (list!2910 lt!274709))))

(declare-fun lt!274711 () Int)

(declare-datatypes ((List!6885 0))(
  ( (Nil!6871) (Cons!6871 (h!12272 Int) (t!84895 List!6885)) )
))
(declare-datatypes ((IArray!4643 0))(
  ( (IArray!4644 (innerList!2379 List!6885)) )
))
(declare-datatypes ((Conc!2321 0))(
  ( (Node!2321 (left!5467 Conc!2321) (right!5797 Conc!2321) (csize!4872 Int) (cheight!2532 Int)) (Leaf!3526 (xs!4962 IArray!4643) (csize!4873 Int)) (Empty!2321) )
))
(declare-datatypes ((BalanceConc!4654 0))(
  ( (BalanceConc!4655 (c!117095 Conc!2321)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!136 Int BalanceConc!4654 BalanceConc!4652) BalanceConc!4652)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4648 Int Int BalanceConc!4654) BalanceConc!4654)

(assert (=> b!640495 (= lt!274709 (slicesMulti!0 printableTokens!2 lt!274711 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)) (BalanceConc!4653 Empty!2320)))))

(declare-fun res!278580 () Bool)

(assert (=> start!62874 (=> (not res!278580) (not e!391188))))

(assert (=> start!62874 (= res!278580 (> lt!274711 0))))

(declare-fun size!5413 (PrintableTokens!136) Int)

(assert (=> start!62874 (= lt!274711 (size!5413 printableTokens!2))))

(assert (=> start!62874 e!391188))

(declare-fun inv!8702 (PrintableTokens!136) Bool)

(assert (=> start!62874 (and (inv!8702 printableTokens!2) e!391183)))

(declare-fun inv!8703 (CacheDown!298) Bool)

(assert (=> start!62874 (and (inv!8703 cacheDown!364) e!391181)))

(declare-fun inv!8704 (CacheUp!298) Bool)

(assert (=> start!62874 (and (inv!8704 cacheUp!351) e!391171)))

(declare-fun mapIsEmpty!2626 () Bool)

(assert (=> mapIsEmpty!2626 mapRes!2626))

(assert (= (and start!62874 res!278580) b!640480))

(assert (= (and b!640480 res!278581) b!640484))

(assert (= (and b!640484 res!278578) b!640487))

(assert (= (and b!640487 res!278577) b!640495))

(assert (= (and b!640495 (not res!278575)) b!640481))

(assert (= (and b!640481 (not res!278579)) b!640494))

(assert (= (and b!640494 (not res!278576)) b!640489))

(assert (= b!640473 b!640488))

(assert (= start!62874 b!640473))

(assert (= (and b!640490 condMapEmpty!2626) mapIsEmpty!2627))

(assert (= (and b!640490 (not condMapEmpty!2626)) mapNonEmpty!2627))

(assert (= b!640486 b!640490))

(assert (= b!640493 b!640486))

(assert (= b!640479 b!640493))

(assert (= (and b!640482 ((_ is LongMap!666) (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))) b!640479))

(assert (= b!640491 b!640482))

(assert (= (and b!640474 ((_ is HashMap!638) (cache!1025 cacheDown!364))) b!640491))

(assert (= start!62874 b!640474))

(assert (= (and b!640483 condMapEmpty!2627) mapIsEmpty!2626))

(assert (= (and b!640483 (not condMapEmpty!2627)) mapNonEmpty!2626))

(assert (= b!640476 b!640483))

(assert (= b!640485 b!640476))

(assert (= b!640475 b!640485))

(assert (= (and b!640477 ((_ is LongMap!665) (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))) b!640475))

(assert (= b!640478 b!640477))

(assert (= (and b!640492 ((_ is HashMap!637) (cache!1024 cacheUp!351))) b!640478))

(assert (= start!62874 b!640492))

(declare-fun m!912219 () Bool)

(assert (=> b!640473 m!912219))

(declare-fun m!912221 () Bool)

(assert (=> b!640495 m!912221))

(declare-fun m!912223 () Bool)

(assert (=> b!640495 m!912223))

(declare-fun m!912225 () Bool)

(assert (=> b!640495 m!912225))

(declare-fun m!912227 () Bool)

(assert (=> b!640495 m!912227))

(declare-fun m!912229 () Bool)

(assert (=> b!640495 m!912229))

(declare-fun m!912231 () Bool)

(assert (=> b!640495 m!912231))

(declare-fun m!912233 () Bool)

(assert (=> b!640495 m!912233))

(declare-fun m!912235 () Bool)

(assert (=> b!640495 m!912235))

(declare-fun m!912237 () Bool)

(assert (=> b!640495 m!912237))

(declare-fun m!912239 () Bool)

(assert (=> b!640495 m!912239))

(declare-fun m!912241 () Bool)

(assert (=> b!640495 m!912241))

(declare-fun m!912243 () Bool)

(assert (=> b!640495 m!912243))

(declare-fun m!912245 () Bool)

(assert (=> b!640495 m!912245))

(assert (=> b!640495 m!912237))

(assert (=> b!640495 m!912221))

(declare-fun m!912247 () Bool)

(assert (=> b!640495 m!912247))

(assert (=> b!640495 m!912241))

(declare-fun m!912249 () Bool)

(assert (=> b!640495 m!912249))

(declare-fun m!912251 () Bool)

(assert (=> b!640487 m!912251))

(declare-fun m!912253 () Bool)

(assert (=> b!640481 m!912253))

(declare-fun m!912255 () Bool)

(assert (=> b!640480 m!912255))

(declare-fun m!912257 () Bool)

(assert (=> b!640480 m!912257))

(declare-fun m!912259 () Bool)

(assert (=> b!640494 m!912259))

(declare-fun m!912261 () Bool)

(assert (=> b!640486 m!912261))

(declare-fun m!912263 () Bool)

(assert (=> b!640486 m!912263))

(declare-fun m!912265 () Bool)

(assert (=> b!640484 m!912265))

(declare-fun m!912267 () Bool)

(assert (=> mapNonEmpty!2626 m!912267))

(declare-fun m!912269 () Bool)

(assert (=> b!640488 m!912269))

(declare-fun m!912271 () Bool)

(assert (=> start!62874 m!912271))

(declare-fun m!912273 () Bool)

(assert (=> start!62874 m!912273))

(declare-fun m!912275 () Bool)

(assert (=> start!62874 m!912275))

(declare-fun m!912277 () Bool)

(assert (=> start!62874 m!912277))

(declare-fun m!912279 () Bool)

(assert (=> mapNonEmpty!2627 m!912279))

(declare-fun m!912281 () Bool)

(assert (=> b!640476 m!912281))

(declare-fun m!912283 () Bool)

(assert (=> b!640476 m!912283))

(declare-fun m!912285 () Bool)

(assert (=> b!640489 m!912285))

(check-sat (not b!640494) (not b!640483) (not b!640490) (not b_next!18841) (not b_next!18843) (not b!640489) (not b!640484) (not b!640473) (not b!640481) (not b!640488) b_and!62597 (not b!640476) (not b_next!18837) b_and!62595 (not mapNonEmpty!2626) (not b!640486) (not b!640495) b_and!62593 (not mapNonEmpty!2627) (not b!640480) (not start!62874) (not b_next!18839) b_and!62591 (not b!640487))
(check-sat b_and!62595 b_and!62593 (not b_next!18841) (not b_next!18843) (not b_next!18839) b_and!62591 b_and!62597 (not b_next!18837))
(get-model)

(declare-fun lt!274720 () Bool)

(declare-fun d!223093 () Bool)

(declare-fun forall!1758 (List!6884 Int) Bool)

(assert (=> d!223093 (= lt!274720 (forall!1758 (list!2910 (map!1500 lt!274704 lambda!18869)) lambda!18870))))

(declare-fun forall!1759 (Conc!2320 Int) Bool)

(assert (=> d!223093 (= lt!274720 (forall!1759 (c!117094 (map!1500 lt!274704 lambda!18869)) lambda!18870))))

(assert (=> d!223093 (= (forall!1757 (map!1500 lt!274704 lambda!18869) lambda!18870) lt!274720)))

(declare-fun bs!78263 () Bool)

(assert (= bs!78263 d!223093))

(assert (=> bs!78263 m!912221))

(declare-fun m!912287 () Bool)

(assert (=> bs!78263 m!912287))

(assert (=> bs!78263 m!912287))

(declare-fun m!912289 () Bool)

(assert (=> bs!78263 m!912289))

(declare-fun m!912291 () Bool)

(assert (=> bs!78263 m!912291))

(assert (=> b!640495 d!223093))

(declare-fun bs!78264 () Bool)

(declare-fun d!223095 () Bool)

(assert (= bs!78264 (and d!223095 b!640495)))

(declare-fun lambda!18873 () Int)

(assert (=> bs!78264 (not (= lambda!18873 lambda!18868))))

(assert (=> d!223095 true))

(declare-fun order!5165 () Int)

(declare-fun order!5167 () Int)

(declare-fun dynLambda!3748 (Int Int) Int)

(declare-fun dynLambda!3749 (Int Int) Int)

(assert (=> d!223095 (< (dynLambda!3748 order!5165 lambda!18869) (dynLambda!3749 order!5167 lambda!18873))))

(assert (=> d!223095 true))

(declare-fun order!5169 () Int)

(declare-fun dynLambda!3750 (Int Int) Int)

(assert (=> d!223095 (< (dynLambda!3750 order!5169 lambda!18870) (dynLambda!3749 order!5167 lambda!18873))))

(declare-fun map!1502 (List!6883 Int) List!6884)

(assert (=> d!223095 (forall!1758 (map!1502 lt!274712 lambda!18869) lambda!18870)))

(declare-fun lt!274723 () Unit!11924)

(declare-fun choose!4632 (List!6883 Int Int) Unit!11924)

(assert (=> d!223095 (= lt!274723 (choose!4632 lt!274712 lambda!18869 lambda!18870))))

(declare-fun forall!1760 (List!6883 Int) Bool)

(assert (=> d!223095 (forall!1760 lt!274712 lambda!18873)))

(assert (=> d!223095 (= (mapPred!53 lt!274712 lambda!18869 lambda!18870) lt!274723)))

(declare-fun bs!78265 () Bool)

(assert (= bs!78265 d!223095))

(declare-fun m!912293 () Bool)

(assert (=> bs!78265 m!912293))

(assert (=> bs!78265 m!912293))

(declare-fun m!912295 () Bool)

(assert (=> bs!78265 m!912295))

(declare-fun m!912297 () Bool)

(assert (=> bs!78265 m!912297))

(declare-fun m!912299 () Bool)

(assert (=> bs!78265 m!912299))

(assert (=> b!640495 d!223095))

(declare-fun bs!78266 () Bool)

(declare-fun d!223097 () Bool)

(assert (= bs!78266 (and d!223097 b!640495)))

(declare-fun lambda!18876 () Int)

(assert (=> bs!78266 (not (= lambda!18876 lambda!18870))))

(assert (=> d!223097 true))

(declare-fun order!5171 () Int)

(declare-fun dynLambda!3751 (Int Int) Int)

(assert (=> d!223097 (< (dynLambda!3751 order!5171 lambda!18867) (dynLambda!3750 order!5169 lambda!18876))))

(assert (=> d!223097 true))

(assert (=> d!223097 (< (dynLambda!3749 order!5167 lambda!18868) (dynLambda!3750 order!5169 lambda!18876))))

(declare-fun map!1503 (List!6884 Int) List!6883)

(assert (=> d!223097 (forall!1760 (map!1503 lt!274707 lambda!18867) lambda!18868)))

(declare-fun lt!274726 () Unit!11924)

(declare-fun choose!4633 (List!6884 Int Int) Unit!11924)

(assert (=> d!223097 (= lt!274726 (choose!4633 lt!274707 lambda!18867 lambda!18868))))

(assert (=> d!223097 (forall!1758 lt!274707 lambda!18876)))

(assert (=> d!223097 (= (mapPred!54 lt!274707 lambda!18867 lambda!18868) lt!274726)))

(declare-fun bs!78267 () Bool)

(assert (= bs!78267 d!223097))

(declare-fun m!912301 () Bool)

(assert (=> bs!78267 m!912301))

(assert (=> bs!78267 m!912301))

(declare-fun m!912303 () Bool)

(assert (=> bs!78267 m!912303))

(declare-fun m!912305 () Bool)

(assert (=> bs!78267 m!912305))

(declare-fun m!912307 () Bool)

(assert (=> bs!78267 m!912307))

(assert (=> b!640495 d!223097))

(declare-fun d!223099 () Bool)

(declare-fun list!2911 (Conc!2319) List!6883)

(assert (=> d!223099 (= (list!2909 lt!274704) (list!2911 (c!117093 lt!274704)))))

(declare-fun bs!78268 () Bool)

(assert (= bs!78268 d!223099))

(declare-fun m!912309 () Bool)

(assert (=> bs!78268 m!912309))

(assert (=> b!640495 d!223099))

(declare-fun d!223101 () Bool)

(declare-fun e!391197 () Bool)

(assert (=> d!223101 e!391197))

(declare-fun res!278588 () Bool)

(assert (=> d!223101 (=> res!278588 e!391197)))

(declare-fun lt!274735 () tuple3!568)

(declare-fun isEmpty!4700 (Option!1661) Bool)

(assert (=> d!223101 (= res!278588 (isEmpty!4700 (_1!4052 lt!274735)))))

(declare-fun e!391196 () Option!1661)

(declare-datatypes ((tuple3!570 0))(
  ( (tuple3!571 (_1!4054 Bool) (_2!4054 CacheUp!298) (_3!336 CacheDown!298)) )
))
(declare-fun lt!274734 () tuple3!570)

(assert (=> d!223101 (= lt!274735 (tuple3!569 e!391196 (_2!4054 lt!274734) (_3!336 lt!274734)))))

(declare-fun c!117098 () Bool)

(assert (=> d!223101 (= c!117098 (not (_1!4054 lt!274734)))))

(declare-fun lt!274733 () BalanceConc!4648)

(declare-fun rulesProduceEachTokenIndividuallyMem!7 (LexerInterface!1256 List!6879 BalanceConc!4648 CacheUp!298 CacheDown!298) tuple3!570)

(assert (=> d!223101 (= lt!274734 (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) lt!274733 (_2!4052 lt!274708) (_3!335 lt!274708)))))

(declare-fun singletonSeq!436 (Token!2478) BalanceConc!4648)

(declare-fun apply!1631 (TokenValueInjection!2576 BalanceConc!4646) TokenValue!1412)

(declare-datatypes ((KeywordValueInjection!42 0))(
  ( (KeywordValueInjection!43) )
))
(declare-fun injection!9 (KeywordValueInjection!42) TokenValueInjection!2576)

(declare-fun singletonSeq!437 ((_ BitVec 16)) BalanceConc!4646)

(declare-fun lBracketRule!0 (JsonLexer!196) Rule!2556)

(assert (=> d!223101 (= lt!274733 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005B)) (lBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005B Nil!6863))))))

(assert (=> d!223101 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223101 (= (createLeftBracketSeparator!0 (_2!4052 lt!274708) (_3!335 lt!274708)) lt!274735)))

(declare-fun b!640510 () Bool)

(assert (=> b!640510 (= e!391196 None!1660)))

(declare-fun b!640511 () Bool)

(declare-fun printableTokensFromTokens!10 (List!6879 BalanceConc!4648) Option!1661)

(assert (=> b!640511 (= e!391196 (printableTokensFromTokens!10 (rules!109 JsonLexer!197) lt!274733))))

(declare-fun b!640512 () Bool)

(declare-fun get!2484 (Option!1661) PrintableTokens!136)

(assert (=> b!640512 (= e!391197 (usesJsonRules!0 (get!2484 (_1!4052 lt!274735))))))

(assert (= (and d!223101 c!117098) b!640510))

(assert (= (and d!223101 (not c!117098)) b!640511))

(assert (= (and d!223101 (not res!278588)) b!640512))

(declare-fun m!912311 () Bool)

(assert (=> d!223101 m!912311))

(declare-fun m!912313 () Bool)

(assert (=> d!223101 m!912313))

(assert (=> d!223101 m!912311))

(declare-fun m!912315 () Bool)

(assert (=> d!223101 m!912315))

(declare-fun m!912317 () Bool)

(assert (=> d!223101 m!912317))

(assert (=> d!223101 m!912315))

(assert (=> d!223101 m!912257))

(declare-fun m!912319 () Bool)

(assert (=> d!223101 m!912319))

(declare-fun m!912321 () Bool)

(assert (=> d!223101 m!912321))

(assert (=> d!223101 m!912257))

(declare-fun m!912323 () Bool)

(assert (=> d!223101 m!912323))

(assert (=> d!223101 m!912257))

(declare-fun m!912325 () Bool)

(assert (=> d!223101 m!912325))

(assert (=> b!640511 m!912257))

(assert (=> b!640511 m!912257))

(declare-fun m!912327 () Bool)

(assert (=> b!640511 m!912327))

(declare-fun m!912329 () Bool)

(assert (=> b!640512 m!912329))

(assert (=> b!640512 m!912329))

(declare-fun m!912331 () Bool)

(assert (=> b!640512 m!912331))

(assert (=> b!640495 d!223101))

(declare-fun bs!78269 () Bool)

(declare-fun b!640539 () Bool)

(assert (= bs!78269 (and b!640539 b!640495)))

(declare-fun lambda!18923 () Int)

(assert (=> bs!78269 (not (= lambda!18923 lambda!18868))))

(declare-fun bs!78270 () Bool)

(assert (= bs!78270 (and b!640539 d!223095)))

(assert (=> bs!78270 (not (= lambda!18923 lambda!18873))))

(declare-fun b!640556 () Bool)

(declare-fun e!391224 () Bool)

(assert (=> b!640556 (= e!391224 true)))

(declare-fun b!640555 () Bool)

(declare-fun e!391223 () Bool)

(assert (=> b!640555 (= e!391223 e!391224)))

(assert (=> b!640539 e!391223))

(assert (= b!640555 b!640556))

(assert (= b!640539 b!640555))

(declare-fun lambda!18924 () Int)

(assert (=> bs!78269 (not (= lambda!18924 lambda!18868))))

(assert (=> bs!78270 (not (= lambda!18924 lambda!18873))))

(assert (=> b!640539 (not (= lambda!18924 lambda!18923))))

(declare-fun b!640558 () Bool)

(declare-fun e!391226 () Bool)

(assert (=> b!640558 (= e!391226 true)))

(declare-fun b!640557 () Bool)

(declare-fun e!391225 () Bool)

(assert (=> b!640557 (= e!391225 e!391226)))

(assert (=> b!640539 e!391225))

(assert (= b!640557 b!640558))

(assert (= b!640539 b!640557))

(declare-fun lambda!18925 () Int)

(assert (=> bs!78269 (not (= lambda!18925 lambda!18868))))

(assert (=> bs!78270 (not (= lambda!18925 lambda!18873))))

(assert (=> b!640539 (not (= lambda!18925 lambda!18923))))

(assert (=> b!640539 (not (= lambda!18925 lambda!18924))))

(declare-fun b!640560 () Bool)

(declare-fun e!391228 () Bool)

(assert (=> b!640560 (= e!391228 true)))

(declare-fun b!640559 () Bool)

(declare-fun e!391227 () Bool)

(assert (=> b!640559 (= e!391227 e!391228)))

(assert (=> b!640539 e!391227))

(assert (= b!640559 b!640560))

(assert (= b!640539 b!640559))

(declare-fun lambda!18926 () Int)

(assert (=> bs!78269 (= lambda!18926 lambda!18868)))

(assert (=> b!640539 (not (= lambda!18926 lambda!18925))))

(assert (=> b!640539 (not (= lambda!18926 lambda!18923))))

(assert (=> bs!78270 (not (= lambda!18926 lambda!18873))))

(assert (=> b!640539 (not (= lambda!18926 lambda!18924))))

(declare-fun bs!78271 () Bool)

(declare-fun d!223103 () Bool)

(assert (= bs!78271 (and d!223103 b!640495)))

(declare-fun lambda!18927 () Int)

(assert (=> bs!78271 (= lambda!18927 lambda!18868)))

(declare-fun bs!78272 () Bool)

(assert (= bs!78272 (and d!223103 b!640539)))

(assert (=> bs!78272 (not (= lambda!18927 lambda!18925))))

(assert (=> bs!78272 (not (= lambda!18927 lambda!18923))))

(declare-fun bs!78273 () Bool)

(assert (= bs!78273 (and d!223103 d!223095)))

(assert (=> bs!78273 (not (= lambda!18927 lambda!18873))))

(assert (=> bs!78272 (not (= lambda!18927 lambda!18924))))

(assert (=> bs!78272 (= lambda!18927 lambda!18926)))

(declare-fun b!640537 () Bool)

(declare-fun e!391216 () Bool)

(declare-fun lt!274835 () List!6883)

(declare-fun size!5416 (List!6883) Int)

(declare-fun filter!131 (List!6883 Int) List!6883)

(assert (=> b!640537 (= e!391216 (< (size!5416 (filter!131 lt!274835 lambda!18925)) (size!5416 lt!274835)))))

(declare-fun b!640538 () Bool)

(assert (=> b!640538 true))

(declare-fun lt!274818 () BalanceConc!4650)

(declare-fun lt!274827 () tuple2!7434)

(declare-fun lt!274830 () Unit!11924)

(declare-fun forallContained!463 (List!6883 Int tuple2!7434) Unit!11924)

(assert (=> b!640538 (= lt!274830 (forallContained!463 (list!2909 lt!274818) lambda!18923 lt!274827))))

(declare-fun e!391214 () Unit!11924)

(declare-fun err!645 () Unit!11924)

(assert (=> b!640538 (= e!391214 err!645)))

(declare-fun b!640540 () Bool)

(assert (=> b!640540 true))

(declare-fun lt!274823 () Unit!11924)

(assert (=> b!640540 (= lt!274823 (forallContained!463 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923 lt!274827))))

(declare-fun e!391213 () Unit!11924)

(declare-fun err!644 () Unit!11924)

(assert (=> b!640540 (= e!391213 err!644)))

(declare-fun b!640541 () Bool)

(declare-fun Unit!11926 () Unit!11924)

(assert (=> b!640541 (= e!391214 Unit!11926)))

(declare-fun b!640542 () Bool)

(declare-fun e!391218 () BalanceConc!4650)

(assert (=> b!640542 (= e!391218 (map!1501 lt!274709 lambda!18867))))

(declare-fun lt!274829 () BalanceConc!4650)

(declare-fun forall!1761 (BalanceConc!4650 Int) Bool)

(assert (=> d!223103 (forall!1761 lt!274829 lambda!18927)))

(assert (=> d!223103 (= lt!274829 e!391218)))

(declare-fun c!117109 () Bool)

(declare-fun size!5417 (BalanceConc!4650) Int)

(assert (=> d!223103 (= c!117109 (<= (size!5417 (map!1501 lt!274709 lambda!18867)) 1))))

(assert (=> d!223103 (= (sortObjectsByID!0 (map!1501 lt!274709 lambda!18867)) lt!274829)))

(declare-fun lt!274819 () BalanceConc!4650)

(declare-fun lt!274832 () BalanceConc!4650)

(declare-fun ++!1839 (BalanceConc!4650 BalanceConc!4650) BalanceConc!4650)

(assert (=> b!640539 (= e!391218 (++!1839 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819) (sortObjectsByID!0 lt!274832)))))

(declare-fun apply!1632 (BalanceConc!4650 Int) tuple2!7434)

(assert (=> b!640539 (= lt!274827 (apply!1632 (map!1501 lt!274709 lambda!18867) (ite (>= (size!5417 (map!1501 lt!274709 lambda!18867)) 0) (div (size!5417 (map!1501 lt!274709 lambda!18867)) 2) (- (div (- (size!5417 (map!1501 lt!274709 lambda!18867))) 2)))))))

(declare-fun filter!132 (BalanceConc!4650 Int) BalanceConc!4650)

(assert (=> b!640539 (= lt!274818 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18923))))

(assert (=> b!640539 (= lt!274819 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18924))))

(assert (=> b!640539 (= lt!274832 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18925))))

(declare-fun c!117112 () Bool)

(declare-fun contains!1535 (BalanceConc!4650 tuple2!7434) Bool)

(assert (=> b!640539 (= c!117112 (contains!1535 lt!274818 lt!274827))))

(declare-fun lt!274833 () Unit!11924)

(assert (=> b!640539 (= lt!274833 e!391214)))

(declare-fun c!117113 () Bool)

(assert (=> b!640539 (= c!117113 (forall!1761 (map!1501 lt!274709 lambda!18867) lambda!18923))))

(declare-fun lt!274812 () Unit!11924)

(assert (=> b!640539 (= lt!274812 e!391213)))

(declare-fun lt!274841 () List!6883)

(assert (=> b!640539 (= lt!274841 (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!274822 () Unit!11924)

(declare-fun lemmaNotForallFilterShorter!11 (List!6883 Int) Unit!11924)

(assert (=> b!640539 (= lt!274822 (lemmaNotForallFilterShorter!11 lt!274841 lambda!18923))))

(declare-fun res!278593 () Bool)

(declare-fun isEmpty!4701 (List!6883) Bool)

(assert (=> b!640539 (= res!278593 (isEmpty!4701 lt!274841))))

(declare-fun e!391212 () Bool)

(assert (=> b!640539 (=> res!278593 e!391212)))

(assert (=> b!640539 e!391212))

(declare-fun lt!274817 () Unit!11924)

(assert (=> b!640539 (= lt!274817 lt!274822)))

(declare-fun c!117111 () Bool)

(assert (=> b!640539 (= c!117111 (contains!1535 lt!274832 lt!274827))))

(declare-fun lt!274825 () Unit!11924)

(declare-fun e!391215 () Unit!11924)

(assert (=> b!640539 (= lt!274825 e!391215)))

(declare-fun c!117110 () Bool)

(assert (=> b!640539 (= c!117110 (forall!1761 (map!1501 lt!274709 lambda!18867) lambda!18925))))

(declare-fun lt!274843 () Unit!11924)

(declare-fun e!391217 () Unit!11924)

(assert (=> b!640539 (= lt!274843 e!391217)))

(assert (=> b!640539 (= lt!274835 (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!274816 () Unit!11924)

(assert (=> b!640539 (= lt!274816 (lemmaNotForallFilterShorter!11 lt!274835 lambda!18925))))

(declare-fun res!278594 () Bool)

(assert (=> b!640539 (= res!278594 (isEmpty!4701 lt!274835))))

(assert (=> b!640539 (=> res!278594 e!391216)))

(assert (=> b!640539 e!391216))

(declare-fun lt!274821 () Unit!11924)

(assert (=> b!640539 (= lt!274821 lt!274816)))

(declare-fun lt!274834 () Unit!11924)

(declare-fun filterSubseq!11 (List!6883 Int) Unit!11924)

(assert (=> b!640539 (= lt!274834 (filterSubseq!11 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923))))

(declare-fun lt!274815 () Unit!11924)

(assert (=> b!640539 (= lt!274815 (filterSubseq!11 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18924))))

(declare-fun lt!274839 () Unit!11924)

(assert (=> b!640539 (= lt!274839 (filterSubseq!11 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925))))

(declare-fun lt!274831 () List!6883)

(assert (=> b!640539 (= lt!274831 (list!2909 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18923)))))

(declare-fun lt!274828 () List!6883)

(assert (=> b!640539 (= lt!274828 (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!274824 () Unit!11924)

(declare-fun lemmaForallSubseq!18 (List!6883 List!6883 Int) Unit!11924)

(assert (=> b!640539 (= lt!274824 (lemmaForallSubseq!18 lt!274831 lt!274828 lambda!18926))))

(assert (=> b!640539 (forall!1760 lt!274831 lambda!18926)))

(declare-fun lt!274813 () Unit!11924)

(assert (=> b!640539 (= lt!274813 lt!274824)))

(declare-fun lt!274820 () List!6883)

(assert (=> b!640539 (= lt!274820 (list!2909 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18924)))))

(declare-fun lt!274810 () List!6883)

(assert (=> b!640539 (= lt!274810 (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!274826 () Unit!11924)

(assert (=> b!640539 (= lt!274826 (lemmaForallSubseq!18 lt!274820 lt!274810 lambda!18926))))

(assert (=> b!640539 (forall!1760 lt!274820 lambda!18926)))

(declare-fun lt!274840 () Unit!11924)

(assert (=> b!640539 (= lt!274840 lt!274826)))

(declare-fun lt!274809 () List!6883)

(assert (=> b!640539 (= lt!274809 (list!2909 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18925)))))

(declare-fun lt!274808 () List!6883)

(assert (=> b!640539 (= lt!274808 (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!274836 () Unit!11924)

(assert (=> b!640539 (= lt!274836 (lemmaForallSubseq!18 lt!274809 lt!274808 lambda!18926))))

(assert (=> b!640539 (forall!1760 lt!274809 lambda!18926)))

(declare-fun lt!274814 () Unit!11924)

(assert (=> b!640539 (= lt!274814 lt!274836)))

(declare-fun lt!274838 () Unit!11924)

(declare-fun lemmaConcatPreservesForall!45 (List!6883 List!6883 Int) Unit!11924)

(assert (=> b!640539 (= lt!274838 (lemmaConcatPreservesForall!45 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819) lambda!18926))))

(declare-fun lt!274811 () Unit!11924)

(declare-fun ++!1840 (List!6883 List!6883) List!6883)

(assert (=> b!640539 (= lt!274811 (lemmaConcatPreservesForall!45 (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819)) (list!2909 (sortObjectsByID!0 lt!274832)) lambda!18926))))

(declare-fun b!640543 () Bool)

(declare-fun Unit!11927 () Unit!11924)

(assert (=> b!640543 (= e!391215 Unit!11927)))

(declare-fun b!640544 () Bool)

(declare-fun Unit!11928 () Unit!11924)

(assert (=> b!640544 (= e!391217 Unit!11928)))

(declare-fun b!640545 () Bool)

(assert (=> b!640545 true))

(declare-fun lt!274842 () Unit!11924)

(assert (=> b!640545 (= lt!274842 (forallContained!463 (list!2909 lt!274832) lambda!18925 lt!274827))))

(declare-fun err!643 () Unit!11924)

(assert (=> b!640545 (= e!391215 err!643)))

(declare-fun b!640546 () Bool)

(assert (=> b!640546 true))

(declare-fun lt!274837 () Unit!11924)

(assert (=> b!640546 (= lt!274837 (forallContained!463 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925 lt!274827))))

(declare-fun err!642 () Unit!11924)

(assert (=> b!640546 (= e!391217 err!642)))

(declare-fun b!640547 () Bool)

(assert (=> b!640547 (= e!391212 (< (size!5416 (filter!131 lt!274841 lambda!18923)) (size!5416 lt!274841)))))

(declare-fun b!640548 () Bool)

(declare-fun Unit!11929 () Unit!11924)

(assert (=> b!640548 (= e!391213 Unit!11929)))

(assert (= (and d!223103 c!117109) b!640542))

(assert (= (and d!223103 (not c!117109)) b!640539))

(assert (= (and b!640539 c!117112) b!640538))

(assert (= (and b!640539 (not c!117112)) b!640541))

(assert (= (and b!640539 c!117113) b!640540))

(assert (= (and b!640539 (not c!117113)) b!640548))

(assert (= (and b!640539 (not res!278593)) b!640547))

(assert (= (and b!640539 c!117111) b!640545))

(assert (= (and b!640539 (not c!117111)) b!640543))

(assert (= (and b!640539 c!117110) b!640546))

(assert (= (and b!640539 (not c!117110)) b!640544))

(assert (= (and b!640539 (not res!278594)) b!640537))

(assert (=> b!640539 m!912237))

(declare-fun m!912333 () Bool)

(assert (=> b!640539 m!912333))

(declare-fun m!912335 () Bool)

(assert (=> b!640539 m!912335))

(declare-fun m!912337 () Bool)

(assert (=> b!640539 m!912337))

(declare-fun m!912339 () Bool)

(assert (=> b!640539 m!912339))

(declare-fun m!912341 () Bool)

(assert (=> b!640539 m!912341))

(declare-fun m!912343 () Bool)

(assert (=> b!640539 m!912343))

(declare-fun m!912345 () Bool)

(assert (=> b!640539 m!912345))

(declare-fun m!912347 () Bool)

(assert (=> b!640539 m!912347))

(assert (=> b!640539 m!912337))

(declare-fun m!912349 () Bool)

(assert (=> b!640539 m!912349))

(assert (=> b!640539 m!912237))

(declare-fun m!912351 () Bool)

(assert (=> b!640539 m!912351))

(assert (=> b!640539 m!912237))

(declare-fun m!912353 () Bool)

(assert (=> b!640539 m!912353))

(assert (=> b!640539 m!912353))

(declare-fun m!912355 () Bool)

(assert (=> b!640539 m!912355))

(assert (=> b!640539 m!912353))

(declare-fun m!912357 () Bool)

(assert (=> b!640539 m!912357))

(assert (=> b!640539 m!912237))

(declare-fun m!912359 () Bool)

(assert (=> b!640539 m!912359))

(assert (=> b!640539 m!912337))

(declare-fun m!912361 () Bool)

(assert (=> b!640539 m!912361))

(declare-fun m!912363 () Bool)

(assert (=> b!640539 m!912363))

(assert (=> b!640539 m!912237))

(declare-fun m!912365 () Bool)

(assert (=> b!640539 m!912365))

(assert (=> b!640539 m!912237))

(assert (=> b!640539 m!912361))

(declare-fun m!912367 () Bool)

(assert (=> b!640539 m!912367))

(assert (=> b!640539 m!912237))

(declare-fun m!912369 () Bool)

(assert (=> b!640539 m!912369))

(declare-fun m!912371 () Bool)

(assert (=> b!640539 m!912371))

(assert (=> b!640539 m!912237))

(assert (=> b!640539 m!912361))

(assert (=> b!640539 m!912341))

(assert (=> b!640539 m!912343))

(declare-fun m!912373 () Bool)

(assert (=> b!640539 m!912373))

(declare-fun m!912375 () Bool)

(assert (=> b!640539 m!912375))

(declare-fun m!912377 () Bool)

(assert (=> b!640539 m!912377))

(assert (=> b!640539 m!912341))

(declare-fun m!912379 () Bool)

(assert (=> b!640539 m!912379))

(assert (=> b!640539 m!912373))

(assert (=> b!640539 m!912339))

(declare-fun m!912381 () Bool)

(assert (=> b!640539 m!912381))

(assert (=> b!640539 m!912237))

(declare-fun m!912383 () Bool)

(assert (=> b!640539 m!912383))

(assert (=> b!640539 m!912237))

(assert (=> b!640539 m!912369))

(assert (=> b!640539 m!912377))

(assert (=> b!640539 m!912347))

(assert (=> b!640539 m!912237))

(assert (=> b!640539 m!912351))

(assert (=> b!640539 m!912351))

(declare-fun m!912385 () Bool)

(assert (=> b!640539 m!912385))

(assert (=> b!640539 m!912377))

(declare-fun m!912387 () Bool)

(assert (=> b!640539 m!912387))

(assert (=> b!640539 m!912369))

(declare-fun m!912389 () Bool)

(assert (=> b!640539 m!912389))

(declare-fun m!912391 () Bool)

(assert (=> b!640539 m!912391))

(assert (=> b!640539 m!912343))

(declare-fun m!912393 () Bool)

(assert (=> b!640539 m!912393))

(declare-fun m!912395 () Bool)

(assert (=> b!640539 m!912395))

(assert (=> b!640539 m!912353))

(declare-fun m!912397 () Bool)

(assert (=> b!640539 m!912397))

(declare-fun m!912399 () Bool)

(assert (=> b!640539 m!912399))

(declare-fun m!912401 () Bool)

(assert (=> b!640539 m!912401))

(declare-fun m!912403 () Bool)

(assert (=> b!640539 m!912403))

(assert (=> b!640540 m!912237))

(assert (=> b!640540 m!912353))

(assert (=> b!640540 m!912353))

(declare-fun m!912405 () Bool)

(assert (=> b!640540 m!912405))

(declare-fun m!912407 () Bool)

(assert (=> d!223103 m!912407))

(assert (=> d!223103 m!912237))

(assert (=> d!223103 m!912383))

(assert (=> b!640546 m!912237))

(assert (=> b!640546 m!912353))

(assert (=> b!640546 m!912353))

(declare-fun m!912409 () Bool)

(assert (=> b!640546 m!912409))

(declare-fun m!912411 () Bool)

(assert (=> b!640547 m!912411))

(assert (=> b!640547 m!912411))

(declare-fun m!912413 () Bool)

(assert (=> b!640547 m!912413))

(declare-fun m!912415 () Bool)

(assert (=> b!640547 m!912415))

(declare-fun m!912417 () Bool)

(assert (=> b!640537 m!912417))

(assert (=> b!640537 m!912417))

(declare-fun m!912419 () Bool)

(assert (=> b!640537 m!912419))

(declare-fun m!912421 () Bool)

(assert (=> b!640537 m!912421))

(declare-fun m!912423 () Bool)

(assert (=> b!640538 m!912423))

(assert (=> b!640538 m!912423))

(declare-fun m!912425 () Bool)

(assert (=> b!640538 m!912425))

(declare-fun m!912427 () Bool)

(assert (=> b!640545 m!912427))

(assert (=> b!640545 m!912427))

(declare-fun m!912429 () Bool)

(assert (=> b!640545 m!912429))

(assert (=> b!640495 d!223103))

(declare-fun d!223105 () Bool)

(declare-fun e!391233 () Bool)

(assert (=> d!223105 e!391233))

(declare-fun res!278597 () Bool)

(assert (=> d!223105 (=> res!278597 e!391233)))

(declare-fun lt!274850 () tuple3!568)

(assert (=> d!223105 (= res!278597 (isEmpty!4700 (_1!4052 lt!274850)))))

(declare-fun e!391234 () Option!1661)

(declare-fun lt!274852 () tuple3!570)

(assert (=> d!223105 (= lt!274850 (tuple3!569 e!391234 (_2!4054 lt!274852) (_3!336 lt!274852)))))

(declare-fun c!117116 () Bool)

(assert (=> d!223105 (= c!117116 (not (_1!4054 lt!274852)))))

(declare-fun lt!274851 () BalanceConc!4648)

(assert (=> d!223105 (= lt!274852 (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) lt!274851 cacheUp!351 cacheDown!364))))

(declare-fun ++!1841 (BalanceConc!4648 BalanceConc!4648) BalanceConc!4648)

(declare-fun commaRule!0 (JsonLexer!196) Rule!2556)

(declare-datatypes ((WhitespaceValueInjection!38 0))(
  ( (WhitespaceValueInjection!39) )
))
(declare-fun injection!7 (WhitespaceValueInjection!38) TokenValueInjection!2576)

(declare-fun whitespaceRule!0 (JsonLexer!196) Rule!2556)

(assert (=> d!223105 (= lt!274851 (++!1841 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863))) (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))))))

(assert (=> d!223105 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223105 (= (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364) lt!274850)))

(declare-fun b!640567 () Bool)

(assert (=> b!640567 (= e!391234 None!1660)))

(declare-fun b!640568 () Bool)

(assert (=> b!640568 (= e!391234 (printableTokensFromTokens!10 (rules!109 JsonLexer!197) lt!274851))))

(declare-fun b!640569 () Bool)

(assert (=> b!640569 (= e!391233 (usesJsonRules!0 (get!2484 (_1!4052 lt!274850))))))

(assert (= (and d!223105 c!117116) b!640567))

(assert (= (and d!223105 (not c!117116)) b!640568))

(assert (= (and d!223105 (not res!278597)) b!640569))

(assert (=> d!223105 m!912311))

(declare-fun m!912431 () Bool)

(assert (=> d!223105 m!912431))

(declare-fun m!912433 () Bool)

(assert (=> d!223105 m!912433))

(declare-fun m!912435 () Bool)

(assert (=> d!223105 m!912435))

(declare-fun m!912437 () Bool)

(assert (=> d!223105 m!912437))

(assert (=> d!223105 m!912431))

(assert (=> d!223105 m!912257))

(declare-fun m!912439 () Bool)

(assert (=> d!223105 m!912439))

(declare-fun m!912441 () Bool)

(assert (=> d!223105 m!912441))

(declare-fun m!912443 () Bool)

(assert (=> d!223105 m!912443))

(declare-fun m!912445 () Bool)

(assert (=> d!223105 m!912445))

(assert (=> d!223105 m!912437))

(declare-fun m!912447 () Bool)

(assert (=> d!223105 m!912447))

(assert (=> d!223105 m!912257))

(assert (=> d!223105 m!912325))

(declare-fun m!912449 () Bool)

(assert (=> d!223105 m!912449))

(assert (=> d!223105 m!912433))

(assert (=> d!223105 m!912257))

(declare-fun m!912451 () Bool)

(assert (=> d!223105 m!912451))

(assert (=> d!223105 m!912445))

(assert (=> d!223105 m!912311))

(assert (=> d!223105 m!912443))

(declare-fun m!912453 () Bool)

(assert (=> d!223105 m!912453))

(assert (=> b!640568 m!912257))

(assert (=> b!640568 m!912257))

(declare-fun m!912455 () Bool)

(assert (=> b!640568 m!912455))

(declare-fun m!912457 () Bool)

(assert (=> b!640569 m!912457))

(assert (=> b!640569 m!912457))

(declare-fun m!912459 () Bool)

(assert (=> b!640569 m!912459))

(assert (=> b!640495 d!223105))

(declare-fun bs!78274 () Bool)

(declare-fun b!640581 () Bool)

(assert (= bs!78274 (and b!640581 b!640495)))

(declare-fun lambda!18932 () Int)

(assert (=> bs!78274 (= lambda!18932 lambda!18870)))

(declare-fun bs!78275 () Bool)

(assert (= bs!78275 (and b!640581 d!223097)))

(assert (=> bs!78275 (not (= lambda!18932 lambda!18876))))

(declare-fun bs!78276 () Bool)

(declare-fun d!223107 () Bool)

(assert (= bs!78276 (and d!223107 b!640495)))

(declare-fun lambda!18933 () Int)

(assert (=> bs!78276 (= lambda!18933 lambda!18870)))

(declare-fun bs!78277 () Bool)

(assert (= bs!78277 (and d!223107 d!223097)))

(assert (=> bs!78277 (not (= lambda!18933 lambda!18876))))

(declare-fun bs!78278 () Bool)

(assert (= bs!78278 (and d!223107 b!640581)))

(assert (=> bs!78278 (= lambda!18933 lambda!18932)))

(declare-fun b!640578 () Bool)

(declare-fun e!391240 () BalanceConc!4652)

(assert (=> b!640578 (= e!391240 (BalanceConc!4653 Empty!2320))))

(declare-fun lt!274867 () BalanceConc!4652)

(assert (=> d!223107 (forall!1757 lt!274867 lambda!18933)))

(assert (=> d!223107 (= lt!274867 e!391240)))

(declare-fun c!117122 () Bool)

(declare-fun size!5418 (BalanceConc!4654) Int)

(assert (=> d!223107 (= c!117122 (>= (size!5418 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))) 2))))

(assert (=> d!223107 (= (size!5413 printableTokens!2) lt!274711)))

(assert (=> d!223107 (= (slicesMulti!0 printableTokens!2 lt!274711 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)) (BalanceConc!4653 Empty!2320)) lt!274867)))

(declare-fun b!640579 () Bool)

(declare-fun e!391239 () PrintableTokens!136)

(declare-fun call!41666 () PrintableTokens!136)

(assert (=> b!640579 (= e!391239 call!41666)))

(declare-fun b!640580 () Bool)

(assert (=> b!640580 (= e!391239 call!41666)))

(declare-fun lt!274866 () PrintableTokens!136)

(declare-fun tail!904 (BalanceConc!4654) BalanceConc!4654)

(declare-fun append!216 (BalanceConc!4652 PrintableTokens!136) BalanceConc!4652)

(assert (=> b!640581 (= e!391240 (slicesMulti!0 printableTokens!2 lt!274711 (tail!904 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))) (append!216 (BalanceConc!4653 Empty!2320) lt!274866)))))

(declare-fun lt!274863 () Int)

(declare-fun apply!1633 (BalanceConc!4654 Int) Int)

(assert (=> b!640581 (= lt!274863 (apply!1633 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)) 0))))

(declare-fun lt!274865 () Int)

(assert (=> b!640581 (= lt!274865 (apply!1633 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)) 1))))

(declare-fun c!117121 () Bool)

(assert (=> b!640581 (= c!117121 (<= lt!274863 lt!274865))))

(assert (=> b!640581 (= lt!274866 e!391239)))

(declare-fun lt!274864 () Unit!11924)

(declare-fun lemmaConcatPreservesForall!46 (List!6884 List!6884 Int) Unit!11924)

(assert (=> b!640581 (= lt!274864 (lemmaConcatPreservesForall!46 (list!2910 (BalanceConc!4653 Empty!2320)) (Cons!6870 lt!274866 Nil!6870) lambda!18932))))

(declare-fun bm!41661 () Bool)

(declare-fun slice!40 (PrintableTokens!136 Int Int) PrintableTokens!136)

(assert (=> bm!41661 (= call!41666 (slice!40 printableTokens!2 (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))))))

(assert (= (and d!223107 c!117122) b!640581))

(assert (= (and d!223107 (not c!117122)) b!640578))

(assert (= (and b!640581 c!117121) b!640579))

(assert (= (and b!640581 (not c!117121)) b!640580))

(assert (= (or b!640579 b!640580) bm!41661))

(declare-fun m!912461 () Bool)

(assert (=> d!223107 m!912461))

(assert (=> d!223107 m!912241))

(declare-fun m!912463 () Bool)

(assert (=> d!223107 m!912463))

(assert (=> d!223107 m!912271))

(declare-fun m!912465 () Bool)

(assert (=> b!640581 m!912465))

(declare-fun m!912467 () Bool)

(assert (=> b!640581 m!912467))

(assert (=> b!640581 m!912241))

(declare-fun m!912469 () Bool)

(assert (=> b!640581 m!912469))

(assert (=> b!640581 m!912241))

(declare-fun m!912471 () Bool)

(assert (=> b!640581 m!912471))

(assert (=> b!640581 m!912469))

(declare-fun m!912473 () Bool)

(assert (=> b!640581 m!912473))

(assert (=> b!640581 m!912241))

(declare-fun m!912475 () Bool)

(assert (=> b!640581 m!912475))

(assert (=> b!640581 m!912465))

(declare-fun m!912477 () Bool)

(assert (=> b!640581 m!912477))

(assert (=> b!640581 m!912473))

(assert (=> b!640581 m!912477))

(declare-fun m!912479 () Bool)

(assert (=> b!640581 m!912479))

(declare-fun m!912481 () Bool)

(assert (=> bm!41661 m!912481))

(assert (=> b!640495 d!223107))

(declare-fun d!223109 () Bool)

(declare-fun e!391243 () Bool)

(assert (=> d!223109 e!391243))

(declare-fun res!278600 () Bool)

(assert (=> d!223109 (=> (not res!278600) (not e!391243))))

(declare-fun lt!274870 () BalanceConc!4652)

(assert (=> d!223109 (= res!278600 (= (list!2910 lt!274870) (map!1502 (list!2909 lt!274704) lambda!18869)))))

(declare-fun map!1504 (Conc!2319 Int) Conc!2320)

(assert (=> d!223109 (= lt!274870 (BalanceConc!4653 (map!1504 (c!117093 lt!274704) lambda!18869)))))

(assert (=> d!223109 (= (map!1500 lt!274704 lambda!18869) lt!274870)))

(declare-fun b!640584 () Bool)

(declare-fun isBalanced!612 (Conc!2320) Bool)

(assert (=> b!640584 (= e!391243 (isBalanced!612 (map!1504 (c!117093 lt!274704) lambda!18869)))))

(assert (= (and d!223109 res!278600) b!640584))

(declare-fun m!912483 () Bool)

(assert (=> d!223109 m!912483))

(assert (=> d!223109 m!912227))

(assert (=> d!223109 m!912227))

(declare-fun m!912485 () Bool)

(assert (=> d!223109 m!912485))

(declare-fun m!912487 () Bool)

(assert (=> d!223109 m!912487))

(assert (=> b!640584 m!912487))

(assert (=> b!640584 m!912487))

(declare-fun m!912489 () Bool)

(assert (=> b!640584 m!912489))

(assert (=> b!640495 d!223109))

(declare-fun d!223111 () Bool)

(declare-fun e!391248 () Bool)

(assert (=> d!223111 e!391248))

(declare-fun res!278603 () Bool)

(assert (=> d!223111 (=> res!278603 e!391248)))

(declare-fun lt!274879 () tuple3!568)

(assert (=> d!223111 (= res!278603 (isEmpty!4700 (_1!4052 lt!274879)))))

(declare-fun e!391249 () Option!1661)

(declare-fun lt!274878 () tuple3!570)

(assert (=> d!223111 (= lt!274879 (tuple3!569 e!391249 (_2!4054 lt!274878) (_3!336 lt!274878)))))

(declare-fun c!117126 () Bool)

(assert (=> d!223111 (= c!117126 (not (_1!4054 lt!274878)))))

(declare-fun lt!274877 () BalanceConc!4648)

(assert (=> d!223111 (= lt!274878 (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) lt!274877 (_2!4052 lt!274706) (_3!335 lt!274706)))))

(declare-fun rBracketRule!0 (JsonLexer!196) Rule!2556)

(assert (=> d!223111 (= lt!274877 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005D)) (rBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005D Nil!6863))))))

(assert (=> d!223111 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223111 (= (createRightBracketSeparator!0 (_2!4052 lt!274706) (_3!335 lt!274706)) lt!274879)))

(declare-fun b!640591 () Bool)

(assert (=> b!640591 (= e!391249 None!1660)))

(declare-fun b!640592 () Bool)

(assert (=> b!640592 (= e!391249 (printableTokensFromTokens!10 (rules!109 JsonLexer!197) lt!274877))))

(declare-fun b!640593 () Bool)

(assert (=> b!640593 (= e!391248 (usesJsonRules!0 (get!2484 (_1!4052 lt!274879))))))

(assert (= (and d!223111 c!117126) b!640591))

(assert (= (and d!223111 (not c!117126)) b!640592))

(assert (= (and d!223111 (not res!278603)) b!640593))

(assert (=> d!223111 m!912311))

(assert (=> d!223111 m!912257))

(declare-fun m!912491 () Bool)

(assert (=> d!223111 m!912491))

(declare-fun m!912493 () Bool)

(assert (=> d!223111 m!912493))

(assert (=> d!223111 m!912311))

(declare-fun m!912495 () Bool)

(assert (=> d!223111 m!912495))

(declare-fun m!912497 () Bool)

(assert (=> d!223111 m!912497))

(assert (=> d!223111 m!912495))

(declare-fun m!912499 () Bool)

(assert (=> d!223111 m!912499))

(assert (=> d!223111 m!912257))

(assert (=> d!223111 m!912325))

(declare-fun m!912501 () Bool)

(assert (=> d!223111 m!912501))

(assert (=> d!223111 m!912257))

(assert (=> b!640592 m!912257))

(assert (=> b!640592 m!912257))

(declare-fun m!912503 () Bool)

(assert (=> b!640592 m!912503))

(declare-fun m!912505 () Bool)

(assert (=> b!640593 m!912505))

(assert (=> b!640593 m!912505))

(declare-fun m!912507 () Bool)

(assert (=> b!640593 m!912507))

(assert (=> b!640495 d!223111))

(declare-fun bs!78279 () Bool)

(declare-fun d!223113 () Bool)

(assert (= bs!78279 (and d!223113 b!640495)))

(declare-fun lambda!18938 () Int)

(assert (=> bs!78279 (= lambda!18938 lambda!18870)))

(declare-fun bs!78280 () Bool)

(assert (= bs!78280 (and d!223113 d!223097)))

(assert (=> bs!78280 (not (= lambda!18938 lambda!18876))))

(declare-fun bs!78281 () Bool)

(assert (= bs!78281 (and d!223113 b!640581)))

(assert (=> bs!78281 (= lambda!18938 lambda!18932)))

(declare-fun bs!78282 () Bool)

(assert (= bs!78282 (and d!223113 d!223107)))

(assert (=> bs!78282 (= lambda!18938 lambda!18933)))

(declare-fun lambda!18939 () Int)

(assert (=> bs!78280 (not (= lambda!18939 lambda!18876))))

(assert (=> bs!78282 (not (= lambda!18939 lambda!18933))))

(assert (=> bs!78281 (not (= lambda!18939 lambda!18932))))

(assert (=> d!223113 (not (= lambda!18939 lambda!18938))))

(assert (=> bs!78279 (not (= lambda!18939 lambda!18870))))

(assert (=> d!223113 (forall!1758 lt!274707 lambda!18939)))

(declare-fun lt!274884 () Unit!11924)

(declare-fun e!391252 () Unit!11924)

(assert (=> d!223113 (= lt!274884 e!391252)))

(declare-fun c!117129 () Bool)

(assert (=> d!223113 (= c!117129 ((_ is Nil!6870) lt!274707))))

(assert (=> d!223113 (forall!1758 lt!274707 lambda!18938)))

(assert (=> d!223113 (= (lemmaAddIdsPreservesRules!0 lt!274707) lt!274884)))

(declare-fun b!640598 () Bool)

(declare-fun Unit!11930 () Unit!11924)

(assert (=> b!640598 (= e!391252 Unit!11930)))

(declare-fun b!640599 () Bool)

(declare-fun Unit!11931 () Unit!11924)

(assert (=> b!640599 (= e!391252 Unit!11931)))

(declare-fun lt!274885 () Unit!11924)

(assert (=> b!640599 (= lt!274885 (lemmaAddIdsPreservesRules!0 (t!84894 lt!274707)))))

(assert (= (and d!223113 c!117129) b!640598))

(assert (= (and d!223113 (not c!117129)) b!640599))

(declare-fun m!912509 () Bool)

(assert (=> d!223113 m!912509))

(declare-fun m!912511 () Bool)

(assert (=> d!223113 m!912511))

(declare-fun m!912513 () Bool)

(assert (=> b!640599 m!912513))

(assert (=> b!640495 d!223113))

(declare-fun d!223115 () Bool)

(declare-fun list!2912 (Conc!2320) List!6884)

(assert (=> d!223115 (= (list!2910 lt!274709) (list!2912 (c!117094 lt!274709)))))

(declare-fun bs!78283 () Bool)

(assert (= bs!78283 d!223115))

(declare-fun m!912515 () Bool)

(assert (=> bs!78283 m!912515))

(assert (=> b!640495 d!223115))

(declare-fun bs!78284 () Bool)

(declare-fun d!223117 () Bool)

(assert (= bs!78284 (and d!223117 b!640495)))

(declare-fun lambda!18944 () Int)

(assert (=> bs!78284 (= lambda!18944 lambda!18868)))

(declare-fun bs!78285 () Bool)

(assert (= bs!78285 (and d!223117 b!640539)))

(assert (=> bs!78285 (not (= lambda!18944 lambda!18925))))

(declare-fun bs!78286 () Bool)

(assert (= bs!78286 (and d!223117 d!223103)))

(assert (=> bs!78286 (= lambda!18944 lambda!18927)))

(assert (=> bs!78285 (not (= lambda!18944 lambda!18923))))

(declare-fun bs!78287 () Bool)

(assert (= bs!78287 (and d!223117 d!223095)))

(assert (=> bs!78287 (not (= lambda!18944 lambda!18873))))

(assert (=> bs!78285 (not (= lambda!18944 lambda!18924))))

(assert (=> bs!78285 (= lambda!18944 lambda!18926)))

(declare-fun lambda!18945 () Int)

(assert (=> bs!78284 (not (= lambda!18945 lambda!18868))))

(assert (=> bs!78285 (not (= lambda!18945 lambda!18925))))

(assert (=> bs!78286 (not (= lambda!18945 lambda!18927))))

(assert (=> bs!78285 (not (= lambda!18945 lambda!18923))))

(assert (=> bs!78287 (not (= lambda!18945 lambda!18873))))

(assert (=> d!223117 (not (= lambda!18945 lambda!18944))))

(assert (=> bs!78285 (not (= lambda!18945 lambda!18924))))

(assert (=> bs!78285 (not (= lambda!18945 lambda!18926))))

(assert (=> d!223117 (forall!1760 lt!274712 lambda!18945)))

(declare-fun lt!274890 () Unit!11924)

(declare-fun e!391255 () Unit!11924)

(assert (=> d!223117 (= lt!274890 e!391255)))

(declare-fun c!117132 () Bool)

(assert (=> d!223117 (= c!117132 ((_ is Nil!6869) lt!274712))))

(assert (=> d!223117 (forall!1760 lt!274712 lambda!18944)))

(assert (=> d!223117 (= (lemmaRemoveIdsPreservesRules!0 lt!274712) lt!274890)))

(declare-fun b!640604 () Bool)

(declare-fun Unit!11932 () Unit!11924)

(assert (=> b!640604 (= e!391255 Unit!11932)))

(declare-fun b!640605 () Bool)

(declare-fun Unit!11933 () Unit!11924)

(assert (=> b!640605 (= e!391255 Unit!11933)))

(declare-fun lt!274891 () Unit!11924)

(assert (=> b!640605 (= lt!274891 (lemmaRemoveIdsPreservesRules!0 (t!84893 lt!274712)))))

(assert (= (and d!223117 c!117132) b!640604))

(assert (= (and d!223117 (not c!117132)) b!640605))

(declare-fun m!912517 () Bool)

(assert (=> d!223117 m!912517))

(declare-fun m!912519 () Bool)

(assert (=> d!223117 m!912519))

(declare-fun m!912521 () Bool)

(assert (=> b!640605 m!912521))

(assert (=> b!640495 d!223117))

(declare-fun d!223119 () Bool)

(declare-fun e!391258 () Bool)

(assert (=> d!223119 e!391258))

(declare-fun res!278606 () Bool)

(assert (=> d!223119 (=> (not res!278606) (not e!391258))))

(declare-fun lt!274894 () BalanceConc!4650)

(assert (=> d!223119 (= res!278606 (= (list!2909 lt!274894) (map!1503 (list!2910 lt!274709) lambda!18867)))))

(declare-fun map!1505 (Conc!2320 Int) Conc!2319)

(assert (=> d!223119 (= lt!274894 (BalanceConc!4651 (map!1505 (c!117094 lt!274709) lambda!18867)))))

(assert (=> d!223119 (= (map!1501 lt!274709 lambda!18867) lt!274894)))

(declare-fun b!640608 () Bool)

(declare-fun isBalanced!613 (Conc!2319) Bool)

(assert (=> b!640608 (= e!391258 (isBalanced!613 (map!1505 (c!117094 lt!274709) lambda!18867)))))

(assert (= (and d!223119 res!278606) b!640608))

(declare-fun m!912523 () Bool)

(assert (=> d!223119 m!912523))

(assert (=> d!223119 m!912229))

(assert (=> d!223119 m!912229))

(declare-fun m!912525 () Bool)

(assert (=> d!223119 m!912525))

(declare-fun m!912527 () Bool)

(assert (=> d!223119 m!912527))

(assert (=> b!640608 m!912527))

(assert (=> b!640608 m!912527))

(declare-fun m!912529 () Bool)

(assert (=> b!640608 m!912529))

(assert (=> b!640495 d!223119))

(declare-fun b!640625 () Bool)

(assert (=> b!640625 true))

(declare-fun bs!78288 () Bool)

(declare-fun d!223121 () Bool)

(assert (= bs!78288 (and d!223121 b!640625)))

(declare-fun lambda!18951 () Int)

(declare-fun lambda!18950 () Int)

(assert (=> bs!78288 (= lambda!18951 lambda!18950)))

(assert (=> d!223121 true))

(declare-fun bm!41664 () Bool)

(declare-fun c!117140 () Bool)

(declare-fun c!117141 () Bool)

(assert (=> bm!41664 (= c!117140 c!117141)))

(declare-fun call!41669 () BalanceConc!4654)

(declare-fun e!391270 () BalanceConc!4654)

(assert (=> bm!41664 (= call!41669 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 (+ 0 1) e!391270))))

(declare-fun b!640626 () Bool)

(assert (=> b!640626 (= e!391270 (BalanceConc!4655 Empty!2321))))

(declare-fun b!640627 () Bool)

(declare-fun e!391269 () BalanceConc!4654)

(declare-fun e!391272 () BalanceConc!4654)

(assert (=> b!640627 (= e!391269 e!391272)))

(declare-fun lt!274902 () Token!2478)

(declare-fun apply!1634 (BalanceConc!4648 Int) Token!2478)

(assert (=> b!640627 (= lt!274902 (apply!1634 (tokens!1209 printableTokens!2) 0))))

(declare-fun res!278612 () Bool)

(declare-fun isKeywordValue!0 (Token!2478 TokenValue!1412) Bool)

(assert (=> b!640627 (= res!278612 (isKeywordValue!0 lt!274902 LeftBrace!1412))))

(declare-fun e!391273 () Bool)

(assert (=> b!640627 (=> res!278612 e!391273)))

(assert (=> b!640627 (= c!117141 e!391273)))

(declare-fun b!640628 () Bool)

(declare-fun append!217 (BalanceConc!4654 Int) BalanceConc!4654)

(assert (=> b!640628 (= e!391270 (append!217 (BalanceConc!4655 Empty!2321) 0))))

(declare-fun b!640629 () Bool)

(assert (=> b!640629 (= e!391269 (BalanceConc!4655 Empty!2321))))

(declare-fun b!640630 () Bool)

(assert (=> b!640630 (= e!391273 (isKeywordValue!0 lt!274902 RightBrace!1412))))

(declare-fun b!640631 () Bool)

(declare-fun e!391271 () Bool)

(declare-fun size!5419 (BalanceConc!4648) Int)

(assert (=> b!640631 (= e!391271 (<= 0 (size!5419 (tokens!1209 printableTokens!2))))))

(declare-fun b!640632 () Bool)

(assert (=> b!640632 (= e!391272 call!41669)))

(declare-fun lt!274901 () Unit!11924)

(declare-fun lemmaConcatPreservesForall!47 (List!6885 List!6885 Int) Unit!11924)

(declare-fun list!2913 (BalanceConc!4654) List!6885)

(assert (=> b!640625 (= lt!274901 (lemmaConcatPreservesForall!47 (list!2913 (BalanceConc!4655 Empty!2321)) (Cons!6871 0 Nil!6871) lambda!18950))))

(assert (=> b!640625 (= e!391272 call!41669)))

(declare-fun lt!274903 () BalanceConc!4654)

(declare-fun forall!1762 (BalanceConc!4654 Int) Bool)

(assert (=> d!223121 (forall!1762 lt!274903 lambda!18951)))

(assert (=> d!223121 (= lt!274903 e!391269)))

(declare-fun c!117142 () Bool)

(assert (=> d!223121 (= c!117142 (>= 0 (size!5419 (tokens!1209 printableTokens!2))))))

(assert (=> d!223121 e!391271))

(declare-fun res!278611 () Bool)

(assert (=> d!223121 (=> (not res!278611) (not e!391271))))

(assert (=> d!223121 (= res!278611 (>= 0 0))))

(assert (=> d!223121 (= (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)) lt!274903)))

(assert (= (and d!223121 res!278611) b!640631))

(assert (= (and d!223121 c!117142) b!640629))

(assert (= (and d!223121 (not c!117142)) b!640627))

(assert (= (and b!640627 (not res!278612)) b!640630))

(assert (= (and b!640627 c!117141) b!640625))

(assert (= (and b!640627 (not c!117141)) b!640632))

(assert (= (or b!640625 b!640632) bm!41664))

(assert (= (and bm!41664 c!117140) b!640628))

(assert (= (and bm!41664 (not c!117140)) b!640626))

(declare-fun m!912531 () Bool)

(assert (=> d!223121 m!912531))

(declare-fun m!912533 () Bool)

(assert (=> d!223121 m!912533))

(declare-fun m!912535 () Bool)

(assert (=> b!640630 m!912535))

(assert (=> b!640631 m!912533))

(declare-fun m!912537 () Bool)

(assert (=> b!640627 m!912537))

(declare-fun m!912539 () Bool)

(assert (=> b!640627 m!912539))

(declare-fun m!912541 () Bool)

(assert (=> bm!41664 m!912541))

(declare-fun m!912543 () Bool)

(assert (=> b!640628 m!912543))

(declare-fun m!912545 () Bool)

(assert (=> b!640625 m!912545))

(assert (=> b!640625 m!912545))

(declare-fun m!912547 () Bool)

(assert (=> b!640625 m!912547))

(assert (=> b!640495 d!223121))

(declare-fun d!223123 () Bool)

(assert (=> d!223123 (= (array_inv!840 (_keys!960 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) (bvsge (size!5411 (_keys!960 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!640486 d!223123))

(declare-fun d!223125 () Bool)

(assert (=> d!223125 (= (array_inv!842 (_values!945 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) (bvsge (size!5412 (_values!945 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!640486 d!223125))

(declare-fun d!223127 () Bool)

(declare-fun c!117145 () Bool)

(assert (=> d!223127 (= c!117145 ((_ is Node!2318) (c!117092 (tokens!1209 printableTokens!2))))))

(declare-fun e!391278 () Bool)

(assert (=> d!223127 (= (inv!8701 (c!117092 (tokens!1209 printableTokens!2))) e!391278)))

(declare-fun b!640641 () Bool)

(declare-fun inv!8705 (Conc!2318) Bool)

(assert (=> b!640641 (= e!391278 (inv!8705 (c!117092 (tokens!1209 printableTokens!2))))))

(declare-fun b!640642 () Bool)

(declare-fun e!391279 () Bool)

(assert (=> b!640642 (= e!391278 e!391279)))

(declare-fun res!278615 () Bool)

(assert (=> b!640642 (= res!278615 (not ((_ is Leaf!3523) (c!117092 (tokens!1209 printableTokens!2)))))))

(assert (=> b!640642 (=> res!278615 e!391279)))

(declare-fun b!640643 () Bool)

(declare-fun inv!8706 (Conc!2318) Bool)

(assert (=> b!640643 (= e!391279 (inv!8706 (c!117092 (tokens!1209 printableTokens!2))))))

(assert (= (and d!223127 c!117145) b!640641))

(assert (= (and d!223127 (not c!117145)) b!640642))

(assert (= (and b!640642 (not res!278615)) b!640643))

(declare-fun m!912549 () Bool)

(assert (=> b!640641 m!912549))

(declare-fun m!912551 () Bool)

(assert (=> b!640643 m!912551))

(assert (=> b!640488 d!223127))

(declare-fun d!223129 () Bool)

(assert (=> d!223129 (= (usesJsonRules!0 printableTokens!2) (= (rules!8210 printableTokens!2) (rules!109 JsonLexer!197)))))

(declare-fun bs!78289 () Bool)

(assert (= bs!78289 d!223129))

(assert (=> bs!78289 m!912257))

(assert (=> b!640487 d!223129))

(declare-fun d!223131 () Bool)

(assert (=> d!223131 (= (usesJsonRules!0 (v!16998 (_1!4052 lt!274713))) (= (rules!8210 (v!16998 (_1!4052 lt!274713))) (rules!109 JsonLexer!197)))))

(declare-fun bs!78290 () Bool)

(assert (= bs!78290 d!223131))

(assert (=> bs!78290 m!912257))

(assert (=> b!640489 d!223131))

(declare-fun d!223133 () Bool)

(assert (=> d!223133 (= (usesJsonRules!0 (v!16998 (_1!4052 lt!274708))) (= (rules!8210 (v!16998 (_1!4052 lt!274708))) (rules!109 JsonLexer!197)))))

(declare-fun bs!78291 () Bool)

(assert (= bs!78291 d!223133))

(assert (=> bs!78291 m!912257))

(assert (=> b!640481 d!223133))

(declare-fun d!223135 () Bool)

(assert (=> d!223135 (= (isEmpty!4699 lt!274715) ((_ is Nil!6865) lt!274715))))

(assert (=> b!640480 d!223135))

(declare-fun d!223137 () Bool)

(declare-fun integerLiteralRule!0 (JsonLexer!196) Rule!2556)

(declare-fun floatLiteralRule!0 (JsonLexer!196) Rule!2556)

(declare-fun trueRule!0 (JsonLexer!196) Rule!2556)

(declare-fun falseRule!0 (JsonLexer!196) Rule!2556)

(declare-fun nullRule!0 (JsonLexer!196) Rule!2556)

(declare-fun jsonstringRule!0 (JsonLexer!196) Rule!2556)

(declare-fun lBraceRule!0 (JsonLexer!196) Rule!2556)

(declare-fun rBraceRule!0 (JsonLexer!196) Rule!2556)

(declare-fun colonRule!0 (JsonLexer!196) Rule!2556)

(declare-fun eofRule!0 (JsonLexer!196) Rule!2556)

(assert (=> d!223137 (= (rules!109 JsonLexer!197) (Cons!6865 (whitespaceRule!0 JsonLexer!197) (Cons!6865 (integerLiteralRule!0 JsonLexer!197) (Cons!6865 (floatLiteralRule!0 JsonLexer!197) (Cons!6865 (trueRule!0 JsonLexer!197) (Cons!6865 (falseRule!0 JsonLexer!197) (Cons!6865 (nullRule!0 JsonLexer!197) (Cons!6865 (jsonstringRule!0 JsonLexer!197) (Cons!6865 (lBraceRule!0 JsonLexer!197) (Cons!6865 (rBraceRule!0 JsonLexer!197) (Cons!6865 (lBracketRule!0 JsonLexer!197) (Cons!6865 (rBracketRule!0 JsonLexer!197) (Cons!6865 (colonRule!0 JsonLexer!197) (Cons!6865 (commaRule!0 JsonLexer!197) (Cons!6865 (eofRule!0 JsonLexer!197) Nil!6865)))))))))))))))))

(declare-fun bs!78292 () Bool)

(assert (= bs!78292 d!223137))

(assert (=> bs!78292 m!912313))

(declare-fun m!912553 () Bool)

(assert (=> bs!78292 m!912553))

(assert (=> bs!78292 m!912449))

(declare-fun m!912555 () Bool)

(assert (=> bs!78292 m!912555))

(declare-fun m!912557 () Bool)

(assert (=> bs!78292 m!912557))

(declare-fun m!912559 () Bool)

(assert (=> bs!78292 m!912559))

(declare-fun m!912561 () Bool)

(assert (=> bs!78292 m!912561))

(assert (=> bs!78292 m!912451))

(declare-fun m!912563 () Bool)

(assert (=> bs!78292 m!912563))

(assert (=> bs!78292 m!912501))

(declare-fun m!912565 () Bool)

(assert (=> bs!78292 m!912565))

(declare-fun m!912567 () Bool)

(assert (=> bs!78292 m!912567))

(declare-fun m!912569 () Bool)

(assert (=> bs!78292 m!912569))

(declare-fun m!912571 () Bool)

(assert (=> bs!78292 m!912571))

(assert (=> b!640480 d!223137))

(declare-fun d!223139 () Bool)

(assert (=> d!223139 (= (size!5413 printableTokens!2) (size!5419 (tokens!1209 printableTokens!2)))))

(declare-fun bs!78293 () Bool)

(assert (= bs!78293 d!223139))

(assert (=> bs!78293 m!912533))

(assert (=> start!62874 d!223139))

(declare-fun d!223141 () Bool)

(declare-fun res!278622 () Bool)

(declare-fun e!391282 () Bool)

(assert (=> d!223141 (=> (not res!278622) (not e!391282))))

(assert (=> d!223141 (= res!278622 (not (isEmpty!4699 (rules!8210 printableTokens!2))))))

(assert (=> d!223141 (= (inv!8702 printableTokens!2) e!391282)))

(declare-fun b!640650 () Bool)

(declare-fun res!278623 () Bool)

(assert (=> b!640650 (=> (not res!278623) (not e!391282))))

(assert (=> b!640650 (= res!278623 (rulesInvariant!1191 Lexer!1254 (rules!8210 printableTokens!2)))))

(declare-fun b!640651 () Bool)

(declare-fun res!278624 () Bool)

(assert (=> b!640651 (=> (not res!278624) (not e!391282))))

(declare-fun rulesProduceEachTokenIndividually!578 (LexerInterface!1256 List!6879 BalanceConc!4648) Bool)

(assert (=> b!640651 (= res!278624 (rulesProduceEachTokenIndividually!578 Lexer!1254 (rules!8210 printableTokens!2) (tokens!1209 printableTokens!2)))))

(declare-fun b!640652 () Bool)

(declare-fun separableTokens!28 (LexerInterface!1256 BalanceConc!4648 List!6879) Bool)

(assert (=> b!640652 (= e!391282 (separableTokens!28 Lexer!1254 (tokens!1209 printableTokens!2) (rules!8210 printableTokens!2)))))

(assert (= (and d!223141 res!278622) b!640650))

(assert (= (and b!640650 res!278623) b!640651))

(assert (= (and b!640651 res!278624) b!640652))

(declare-fun m!912573 () Bool)

(assert (=> d!223141 m!912573))

(declare-fun m!912575 () Bool)

(assert (=> b!640650 m!912575))

(declare-fun m!912577 () Bool)

(assert (=> b!640651 m!912577))

(declare-fun m!912579 () Bool)

(assert (=> b!640652 m!912579))

(assert (=> start!62874 d!223141))

(declare-fun d!223143 () Bool)

(declare-fun res!278627 () Bool)

(declare-fun e!391285 () Bool)

(assert (=> d!223143 (=> (not res!278627) (not e!391285))))

(assert (=> d!223143 (= res!278627 ((_ is HashMap!638) (cache!1025 cacheDown!364)))))

(assert (=> d!223143 (= (inv!8703 cacheDown!364) e!391285)))

(declare-fun b!640655 () Bool)

(declare-fun validCacheMapDown!45 (MutableMap!638) Bool)

(assert (=> b!640655 (= e!391285 (validCacheMapDown!45 (cache!1025 cacheDown!364)))))

(assert (= (and d!223143 res!278627) b!640655))

(declare-fun m!912581 () Bool)

(assert (=> b!640655 m!912581))

(assert (=> start!62874 d!223143))

(declare-fun d!223145 () Bool)

(declare-fun res!278630 () Bool)

(declare-fun e!391288 () Bool)

(assert (=> d!223145 (=> (not res!278630) (not e!391288))))

(assert (=> d!223145 (= res!278630 ((_ is HashMap!637) (cache!1024 cacheUp!351)))))

(assert (=> d!223145 (= (inv!8704 cacheUp!351) e!391288)))

(declare-fun b!640658 () Bool)

(declare-fun validCacheMapUp!45 (MutableMap!637) Bool)

(assert (=> b!640658 (= e!391288 (validCacheMapUp!45 (cache!1024 cacheUp!351)))))

(assert (= (and d!223145 res!278630) b!640658))

(declare-fun m!912583 () Bool)

(assert (=> b!640658 m!912583))

(assert (=> start!62874 d!223145))

(declare-fun d!223147 () Bool)

(declare-fun isBalanced!614 (Conc!2318) Bool)

(assert (=> d!223147 (= (inv!8700 (tokens!1209 printableTokens!2)) (isBalanced!614 (c!117092 (tokens!1209 printableTokens!2))))))

(declare-fun bs!78294 () Bool)

(assert (= bs!78294 d!223147))

(declare-fun m!912585 () Bool)

(assert (=> bs!78294 m!912585))

(assert (=> b!640473 d!223147))

(declare-fun d!223149 () Bool)

(declare-fun res!278633 () Bool)

(declare-fun e!391291 () Bool)

(assert (=> d!223149 (=> (not res!278633) (not e!391291))))

(declare-fun rulesValid!507 (LexerInterface!1256 List!6879) Bool)

(assert (=> d!223149 (= res!278633 (rulesValid!507 Lexer!1254 lt!274715))))

(assert (=> d!223149 (= (rulesInvariant!1191 Lexer!1254 lt!274715) e!391291)))

(declare-fun b!640661 () Bool)

(declare-datatypes ((List!6886 0))(
  ( (Nil!6872) (Cons!6872 (h!12273 String!8798) (t!84942 List!6886)) )
))
(declare-fun noDuplicateTag!507 (LexerInterface!1256 List!6879 List!6886) Bool)

(assert (=> b!640661 (= e!391291 (noDuplicateTag!507 Lexer!1254 lt!274715 Nil!6872))))

(assert (= (and d!223149 res!278633) b!640661))

(declare-fun m!912587 () Bool)

(assert (=> d!223149 m!912587))

(declare-fun m!912589 () Bool)

(assert (=> b!640661 m!912589))

(assert (=> b!640484 d!223149))

(declare-fun d!223151 () Bool)

(assert (=> d!223151 (= (usesJsonRules!0 (v!16998 (_1!4052 lt!274706))) (= (rules!8210 (v!16998 (_1!4052 lt!274706))) (rules!109 JsonLexer!197)))))

(declare-fun bs!78295 () Bool)

(assert (= bs!78295 d!223151))

(assert (=> bs!78295 m!912257))

(assert (=> b!640494 d!223151))

(declare-fun d!223153 () Bool)

(assert (=> d!223153 (= (array_inv!840 (_keys!959 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) (bvsge (size!5411 (_keys!959 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!640476 d!223153))

(declare-fun d!223155 () Bool)

(assert (=> d!223155 (= (array_inv!841 (_values!944 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) (bvsge (size!5410 (_values!944 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!640476 d!223155))

(declare-fun setIsEmpty!2941 () Bool)

(declare-fun setRes!2941 () Bool)

(assert (=> setIsEmpty!2941 setRes!2941))

(declare-fun setNonEmpty!2941 () Bool)

(declare-fun tp!199132 () Bool)

(declare-fun setElem!2941 () Context!398)

(declare-fun inv!8707 (Context!398) Bool)

(assert (=> setNonEmpty!2941 (= setRes!2941 (and tp!199132 (inv!8707 setElem!2941)))))

(declare-fun mapDefault!2630 () List!6881)

(declare-fun setRest!2941 () (InoxSet Context!398))

(assert (=> setNonEmpty!2941 (= (_2!4049 (h!12268 mapDefault!2630)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2941 true) setRest!2941))))

(declare-fun mapIsEmpty!2630 () Bool)

(declare-fun mapRes!2630 () Bool)

(assert (=> mapIsEmpty!2630 mapRes!2630))

(declare-fun setRes!2942 () Bool)

(declare-fun e!391307 () Bool)

(declare-fun tp!199129 () Bool)

(declare-fun b!640668 () Bool)

(declare-fun mapValue!2630 () List!6881)

(assert (=> b!640668 (= e!391307 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 mapValue!2630)))) setRes!2942 tp!199129))))

(declare-fun condSetEmpty!2942 () Bool)

(assert (=> b!640668 (= condSetEmpty!2942 (= (_2!4049 (h!12268 mapValue!2630)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun mapNonEmpty!2630 () Bool)

(declare-fun tp!199130 () Bool)

(assert (=> mapNonEmpty!2630 (= mapRes!2630 (and tp!199130 e!391307))))

(declare-fun mapRest!2630 () (Array (_ BitVec 32) List!6881))

(declare-fun mapKey!2630 () (_ BitVec 32))

(assert (=> mapNonEmpty!2630 (= mapRest!2627 (store mapRest!2630 mapKey!2630 mapValue!2630))))

(declare-fun setNonEmpty!2942 () Bool)

(declare-fun tp!199131 () Bool)

(declare-fun setElem!2942 () Context!398)

(assert (=> setNonEmpty!2942 (= setRes!2942 (and tp!199131 (inv!8707 setElem!2942)))))

(declare-fun setRest!2942 () (InoxSet Context!398))

(assert (=> setNonEmpty!2942 (= (_2!4049 (h!12268 mapValue!2630)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2942 true) setRest!2942))))

(declare-fun condMapEmpty!2630 () Bool)

(assert (=> mapNonEmpty!2626 (= condMapEmpty!2630 (= mapRest!2627 ((as const (Array (_ BitVec 32) List!6881)) mapDefault!2630)))))

(declare-fun e!391308 () Bool)

(assert (=> mapNonEmpty!2626 (= tp!199105 (and e!391308 mapRes!2630))))

(declare-fun setIsEmpty!2942 () Bool)

(assert (=> setIsEmpty!2942 setRes!2942))

(declare-fun tp!199128 () Bool)

(declare-fun b!640669 () Bool)

(assert (=> b!640669 (= e!391308 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 mapDefault!2630)))) setRes!2941 tp!199128))))

(declare-fun condSetEmpty!2941 () Bool)

(assert (=> b!640669 (= condSetEmpty!2941 (= (_2!4049 (h!12268 mapDefault!2630)) ((as const (Array Context!398 Bool)) false)))))

(assert (= (and mapNonEmpty!2626 condMapEmpty!2630) mapIsEmpty!2630))

(assert (= (and mapNonEmpty!2626 (not condMapEmpty!2630)) mapNonEmpty!2630))

(assert (= (and b!640668 condSetEmpty!2942) setIsEmpty!2942))

(assert (= (and b!640668 (not condSetEmpty!2942)) setNonEmpty!2942))

(assert (= (and mapNonEmpty!2630 ((_ is Cons!6867) mapValue!2630)) b!640668))

(assert (= (and b!640669 condSetEmpty!2941) setIsEmpty!2941))

(assert (= (and b!640669 (not condSetEmpty!2941)) setNonEmpty!2941))

(assert (= (and mapNonEmpty!2626 ((_ is Cons!6867) mapDefault!2630)) b!640669))

(declare-fun m!912591 () Bool)

(assert (=> setNonEmpty!2942 m!912591))

(declare-fun m!912593 () Bool)

(assert (=> setNonEmpty!2941 m!912593))

(declare-fun m!912595 () Bool)

(assert (=> b!640669 m!912595))

(declare-fun m!912597 () Bool)

(assert (=> b!640668 m!912597))

(declare-fun m!912599 () Bool)

(assert (=> mapNonEmpty!2630 m!912599))

(declare-fun b!640674 () Bool)

(declare-fun setRes!2945 () Bool)

(declare-fun tp!199138 () Bool)

(declare-fun e!391317 () Bool)

(assert (=> b!640674 (= e!391317 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 mapValue!2626)))) setRes!2945 tp!199138))))

(declare-fun condSetEmpty!2945 () Bool)

(assert (=> b!640674 (= condSetEmpty!2945 (= (_2!4049 (h!12268 mapValue!2626)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2945 () Bool)

(assert (=> setIsEmpty!2945 setRes!2945))

(declare-fun setNonEmpty!2945 () Bool)

(declare-fun tp!199137 () Bool)

(declare-fun setElem!2945 () Context!398)

(assert (=> setNonEmpty!2945 (= setRes!2945 (and tp!199137 (inv!8707 setElem!2945)))))

(declare-fun setRest!2945 () (InoxSet Context!398))

(assert (=> setNonEmpty!2945 (= (_2!4049 (h!12268 mapValue!2626)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2945 true) setRest!2945))))

(assert (=> mapNonEmpty!2626 (= tp!199108 e!391317)))

(assert (= (and b!640674 condSetEmpty!2945) setIsEmpty!2945))

(assert (= (and b!640674 (not condSetEmpty!2945)) setNonEmpty!2945))

(assert (= (and mapNonEmpty!2626 ((_ is Cons!6867) mapValue!2626)) b!640674))

(declare-fun m!912601 () Bool)

(assert (=> b!640674 m!912601))

(declare-fun m!912603 () Bool)

(assert (=> setNonEmpty!2945 m!912603))

(declare-fun setRes!2948 () Bool)

(declare-fun tp!199143 () Bool)

(declare-fun b!640679 () Bool)

(declare-fun e!391326 () Bool)

(assert (=> b!640679 (= e!391326 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))))) setRes!2948 tp!199143))))

(declare-fun condSetEmpty!2948 () Bool)

(assert (=> b!640679 (= condSetEmpty!2948 (= (_2!4051 (h!12269 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2948 () Bool)

(assert (=> setIsEmpty!2948 setRes!2948))

(declare-fun setNonEmpty!2948 () Bool)

(declare-fun tp!199144 () Bool)

(declare-fun setElem!2948 () Context!398)

(assert (=> setNonEmpty!2948 (= setRes!2948 (and tp!199144 (inv!8707 setElem!2948)))))

(declare-fun setRest!2948 () (InoxSet Context!398))

(assert (=> setNonEmpty!2948 (= (_2!4051 (h!12269 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2948 true) setRest!2948))))

(assert (=> b!640486 (= tp!199111 e!391326)))

(assert (= (and b!640679 condSetEmpty!2948) setIsEmpty!2948))

(assert (= (and b!640679 (not condSetEmpty!2948)) setNonEmpty!2948))

(assert (= (and b!640486 ((_ is Cons!6868) (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))) b!640679))

(declare-fun m!912605 () Bool)

(assert (=> b!640679 m!912605))

(declare-fun m!912607 () Bool)

(assert (=> setNonEmpty!2948 m!912607))

(declare-fun tp!199145 () Bool)

(declare-fun b!640680 () Bool)

(declare-fun e!391329 () Bool)

(declare-fun setRes!2949 () Bool)

(assert (=> b!640680 (= e!391329 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))))) setRes!2949 tp!199145))))

(declare-fun condSetEmpty!2949 () Bool)

(assert (=> b!640680 (= condSetEmpty!2949 (= (_2!4051 (h!12269 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2949 () Bool)

(assert (=> setIsEmpty!2949 setRes!2949))

(declare-fun setNonEmpty!2949 () Bool)

(declare-fun tp!199146 () Bool)

(declare-fun setElem!2949 () Context!398)

(assert (=> setNonEmpty!2949 (= setRes!2949 (and tp!199146 (inv!8707 setElem!2949)))))

(declare-fun setRest!2949 () (InoxSet Context!398))

(assert (=> setNonEmpty!2949 (= (_2!4051 (h!12269 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2949 true) setRest!2949))))

(assert (=> b!640486 (= tp!199109 e!391329)))

(assert (= (and b!640680 condSetEmpty!2949) setIsEmpty!2949))

(assert (= (and b!640680 (not condSetEmpty!2949)) setNonEmpty!2949))

(assert (= (and b!640486 ((_ is Cons!6868) (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))) b!640680))

(declare-fun m!912609 () Bool)

(assert (=> b!640680 m!912609))

(declare-fun m!912611 () Bool)

(assert (=> setNonEmpty!2949 m!912611))

(declare-fun b!640689 () Bool)

(declare-fun tp!199154 () Bool)

(declare-fun e!391335 () Bool)

(declare-fun tp!199155 () Bool)

(assert (=> b!640689 (= e!391335 (and (inv!8701 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))) tp!199154 (inv!8701 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))) tp!199155))))

(declare-fun b!640691 () Bool)

(declare-fun e!391336 () Bool)

(declare-fun tp!199153 () Bool)

(assert (=> b!640691 (= e!391336 tp!199153)))

(declare-fun b!640690 () Bool)

(declare-fun inv!8708 (IArray!4637) Bool)

(assert (=> b!640690 (= e!391335 (and (inv!8708 (xs!4959 (c!117092 (tokens!1209 printableTokens!2)))) e!391336))))

(assert (=> b!640488 (= tp!199107 (and (inv!8701 (c!117092 (tokens!1209 printableTokens!2))) e!391335))))

(assert (= (and b!640488 ((_ is Node!2318) (c!117092 (tokens!1209 printableTokens!2)))) b!640689))

(assert (= b!640690 b!640691))

(assert (= (and b!640488 ((_ is Leaf!3523) (c!117092 (tokens!1209 printableTokens!2)))) b!640690))

(declare-fun m!912613 () Bool)

(assert (=> b!640689 m!912613))

(declare-fun m!912615 () Bool)

(assert (=> b!640689 m!912615))

(declare-fun m!912617 () Bool)

(assert (=> b!640690 m!912617))

(assert (=> b!640488 m!912269))

(declare-fun b!640692 () Bool)

(declare-fun e!391338 () Bool)

(declare-fun tp!199156 () Bool)

(declare-fun setRes!2950 () Bool)

(assert (=> b!640692 (= e!391338 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 mapDefault!2627)))) setRes!2950 tp!199156))))

(declare-fun condSetEmpty!2950 () Bool)

(assert (=> b!640692 (= condSetEmpty!2950 (= (_2!4051 (h!12269 mapDefault!2627)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2950 () Bool)

(assert (=> setIsEmpty!2950 setRes!2950))

(declare-fun setNonEmpty!2950 () Bool)

(declare-fun tp!199157 () Bool)

(declare-fun setElem!2950 () Context!398)

(assert (=> setNonEmpty!2950 (= setRes!2950 (and tp!199157 (inv!8707 setElem!2950)))))

(declare-fun setRest!2950 () (InoxSet Context!398))

(assert (=> setNonEmpty!2950 (= (_2!4051 (h!12269 mapDefault!2627)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2950 true) setRest!2950))))

(assert (=> b!640490 (= tp!199112 e!391338)))

(assert (= (and b!640692 condSetEmpty!2950) setIsEmpty!2950))

(assert (= (and b!640692 (not condSetEmpty!2950)) setNonEmpty!2950))

(assert (= (and b!640490 ((_ is Cons!6868) mapDefault!2627)) b!640692))

(declare-fun m!912619 () Bool)

(assert (=> b!640692 m!912619))

(declare-fun m!912621 () Bool)

(assert (=> setNonEmpty!2950 m!912621))

(declare-fun b!640703 () Bool)

(declare-fun b_free!18805 () Bool)

(declare-fun b_next!18845 () Bool)

(assert (=> b!640703 (= b_free!18805 (not b_next!18845))))

(declare-fun tp!199166 () Bool)

(declare-fun b_and!62599 () Bool)

(assert (=> b!640703 (= tp!199166 b_and!62599)))

(declare-fun b_free!18807 () Bool)

(declare-fun b_next!18847 () Bool)

(assert (=> b!640703 (= b_free!18807 (not b_next!18847))))

(declare-fun tp!199164 () Bool)

(declare-fun b_and!62601 () Bool)

(assert (=> b!640703 (= tp!199164 b_and!62601)))

(declare-fun e!391348 () Bool)

(assert (=> b!640703 (= e!391348 (and tp!199166 tp!199164))))

(declare-fun b!640702 () Bool)

(declare-fun e!391349 () Bool)

(declare-fun inv!8699 (String!8798) Bool)

(declare-fun inv!8709 (TokenValueInjection!2576) Bool)

(assert (=> b!640702 (= e!391349 (and (inv!8699 (tag!1640 (h!12266 (rules!8210 printableTokens!2)))) (inv!8709 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))) e!391348))))

(declare-fun b!640701 () Bool)

(declare-fun e!391351 () Bool)

(declare-fun tp!199165 () Bool)

(assert (=> b!640701 (= e!391351 (and e!391349 tp!199165))))

(assert (=> b!640473 (= tp!199113 e!391351)))

(assert (= b!640702 b!640703))

(assert (= b!640701 b!640702))

(assert (= (and b!640473 ((_ is Cons!6865) (rules!8210 printableTokens!2))) b!640701))

(declare-fun m!912623 () Bool)

(assert (=> b!640702 m!912623))

(declare-fun m!912625 () Bool)

(assert (=> b!640702 m!912625))

(declare-fun setRes!2956 () Bool)

(declare-fun b!640710 () Bool)

(declare-fun tp!199178 () Bool)

(declare-fun mapDefault!2633 () List!6882)

(declare-fun e!391364 () Bool)

(assert (=> b!640710 (= e!391364 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 mapDefault!2633)))) setRes!2956 tp!199178))))

(declare-fun condSetEmpty!2955 () Bool)

(assert (=> b!640710 (= condSetEmpty!2955 (= (_2!4051 (h!12269 mapDefault!2633)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setNonEmpty!2955 () Bool)

(declare-fun tp!199181 () Bool)

(declare-fun setElem!2955 () Context!398)

(assert (=> setNonEmpty!2955 (= setRes!2956 (and tp!199181 (inv!8707 setElem!2955)))))

(declare-fun setRest!2956 () (InoxSet Context!398))

(assert (=> setNonEmpty!2955 (= (_2!4051 (h!12269 mapDefault!2633)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2955 true) setRest!2956))))

(declare-fun setNonEmpty!2956 () Bool)

(declare-fun setRes!2955 () Bool)

(declare-fun tp!199177 () Bool)

(declare-fun setElem!2956 () Context!398)

(assert (=> setNonEmpty!2956 (= setRes!2955 (and tp!199177 (inv!8707 setElem!2956)))))

(declare-fun mapValue!2633 () List!6882)

(declare-fun setRest!2955 () (InoxSet Context!398))

(assert (=> setNonEmpty!2956 (= (_2!4051 (h!12269 mapValue!2633)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2956 true) setRest!2955))))

(declare-fun mapIsEmpty!2633 () Bool)

(declare-fun mapRes!2633 () Bool)

(assert (=> mapIsEmpty!2633 mapRes!2633))

(declare-fun e!391366 () Bool)

(declare-fun tp!199179 () Bool)

(declare-fun b!640711 () Bool)

(assert (=> b!640711 (= e!391366 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 mapValue!2633)))) setRes!2955 tp!199179))))

(declare-fun condSetEmpty!2956 () Bool)

(assert (=> b!640711 (= condSetEmpty!2956 (= (_2!4051 (h!12269 mapValue!2633)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun condMapEmpty!2633 () Bool)

(assert (=> mapNonEmpty!2627 (= condMapEmpty!2633 (= mapRest!2626 ((as const (Array (_ BitVec 32) List!6882)) mapDefault!2633)))))

(assert (=> mapNonEmpty!2627 (= tp!199106 (and e!391364 mapRes!2633))))

(declare-fun setIsEmpty!2955 () Bool)

(assert (=> setIsEmpty!2955 setRes!2956))

(declare-fun mapNonEmpty!2633 () Bool)

(declare-fun tp!199180 () Bool)

(assert (=> mapNonEmpty!2633 (= mapRes!2633 (and tp!199180 e!391366))))

(declare-fun mapKey!2633 () (_ BitVec 32))

(declare-fun mapRest!2633 () (Array (_ BitVec 32) List!6882))

(assert (=> mapNonEmpty!2633 (= mapRest!2626 (store mapRest!2633 mapKey!2633 mapValue!2633))))

(declare-fun setIsEmpty!2956 () Bool)

(assert (=> setIsEmpty!2956 setRes!2955))

(assert (= (and mapNonEmpty!2627 condMapEmpty!2633) mapIsEmpty!2633))

(assert (= (and mapNonEmpty!2627 (not condMapEmpty!2633)) mapNonEmpty!2633))

(assert (= (and b!640711 condSetEmpty!2956) setIsEmpty!2956))

(assert (= (and b!640711 (not condSetEmpty!2956)) setNonEmpty!2956))

(assert (= (and mapNonEmpty!2633 ((_ is Cons!6868) mapValue!2633)) b!640711))

(assert (= (and b!640710 condSetEmpty!2955) setIsEmpty!2955))

(assert (= (and b!640710 (not condSetEmpty!2955)) setNonEmpty!2955))

(assert (= (and mapNonEmpty!2627 ((_ is Cons!6868) mapDefault!2633)) b!640710))

(declare-fun m!912627 () Bool)

(assert (=> setNonEmpty!2956 m!912627))

(declare-fun m!912629 () Bool)

(assert (=> b!640711 m!912629))

(declare-fun m!912631 () Bool)

(assert (=> mapNonEmpty!2633 m!912631))

(declare-fun m!912633 () Bool)

(assert (=> setNonEmpty!2955 m!912633))

(declare-fun m!912635 () Bool)

(assert (=> b!640710 m!912635))

(declare-fun tp!199182 () Bool)

(declare-fun e!391371 () Bool)

(declare-fun setRes!2957 () Bool)

(declare-fun b!640712 () Bool)

(assert (=> b!640712 (= e!391371 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 mapValue!2627)))) setRes!2957 tp!199182))))

(declare-fun condSetEmpty!2957 () Bool)

(assert (=> b!640712 (= condSetEmpty!2957 (= (_2!4051 (h!12269 mapValue!2627)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2957 () Bool)

(assert (=> setIsEmpty!2957 setRes!2957))

(declare-fun setNonEmpty!2957 () Bool)

(declare-fun tp!199183 () Bool)

(declare-fun setElem!2957 () Context!398)

(assert (=> setNonEmpty!2957 (= setRes!2957 (and tp!199183 (inv!8707 setElem!2957)))))

(declare-fun setRest!2957 () (InoxSet Context!398))

(assert (=> setNonEmpty!2957 (= (_2!4051 (h!12269 mapValue!2627)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2957 true) setRest!2957))))

(assert (=> mapNonEmpty!2627 (= tp!199104 e!391371)))

(assert (= (and b!640712 condSetEmpty!2957) setIsEmpty!2957))

(assert (= (and b!640712 (not condSetEmpty!2957)) setNonEmpty!2957))

(assert (= (and mapNonEmpty!2627 ((_ is Cons!6868) mapValue!2627)) b!640712))

(declare-fun m!912637 () Bool)

(assert (=> b!640712 m!912637))

(declare-fun m!912639 () Bool)

(assert (=> setNonEmpty!2957 m!912639))

(declare-fun setRes!2958 () Bool)

(declare-fun b!640713 () Bool)

(declare-fun tp!199185 () Bool)

(declare-fun e!391374 () Bool)

(assert (=> b!640713 (= e!391374 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 mapDefault!2626)))) setRes!2958 tp!199185))))

(declare-fun condSetEmpty!2958 () Bool)

(assert (=> b!640713 (= condSetEmpty!2958 (= (_2!4049 (h!12268 mapDefault!2626)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2958 () Bool)

(assert (=> setIsEmpty!2958 setRes!2958))

(declare-fun setNonEmpty!2958 () Bool)

(declare-fun tp!199184 () Bool)

(declare-fun setElem!2958 () Context!398)

(assert (=> setNonEmpty!2958 (= setRes!2958 (and tp!199184 (inv!8707 setElem!2958)))))

(declare-fun setRest!2958 () (InoxSet Context!398))

(assert (=> setNonEmpty!2958 (= (_2!4049 (h!12268 mapDefault!2626)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2958 true) setRest!2958))))

(assert (=> b!640483 (= tp!199116 e!391374)))

(assert (= (and b!640713 condSetEmpty!2958) setIsEmpty!2958))

(assert (= (and b!640713 (not condSetEmpty!2958)) setNonEmpty!2958))

(assert (= (and b!640483 ((_ is Cons!6867) mapDefault!2626)) b!640713))

(declare-fun m!912641 () Bool)

(assert (=> b!640713 m!912641))

(declare-fun m!912643 () Bool)

(assert (=> setNonEmpty!2958 m!912643))

(declare-fun b!640714 () Bool)

(declare-fun e!391377 () Bool)

(declare-fun setRes!2959 () Bool)

(declare-fun tp!199187 () Bool)

(assert (=> b!640714 (= e!391377 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))))) setRes!2959 tp!199187))))

(declare-fun condSetEmpty!2959 () Bool)

(assert (=> b!640714 (= condSetEmpty!2959 (= (_2!4049 (h!12268 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2959 () Bool)

(assert (=> setIsEmpty!2959 setRes!2959))

(declare-fun setNonEmpty!2959 () Bool)

(declare-fun tp!199186 () Bool)

(declare-fun setElem!2959 () Context!398)

(assert (=> setNonEmpty!2959 (= setRes!2959 (and tp!199186 (inv!8707 setElem!2959)))))

(declare-fun setRest!2959 () (InoxSet Context!398))

(assert (=> setNonEmpty!2959 (= (_2!4049 (h!12268 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2959 true) setRest!2959))))

(assert (=> b!640476 (= tp!199117 e!391377)))

(assert (= (and b!640714 condSetEmpty!2959) setIsEmpty!2959))

(assert (= (and b!640714 (not condSetEmpty!2959)) setNonEmpty!2959))

(assert (= (and b!640476 ((_ is Cons!6867) (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))) b!640714))

(declare-fun m!912645 () Bool)

(assert (=> b!640714 m!912645))

(declare-fun m!912647 () Bool)

(assert (=> setNonEmpty!2959 m!912647))

(declare-fun setRes!2960 () Bool)

(declare-fun b!640715 () Bool)

(declare-fun tp!199189 () Bool)

(declare-fun e!391380 () Bool)

(assert (=> b!640715 (= e!391380 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))))) setRes!2960 tp!199189))))

(declare-fun condSetEmpty!2960 () Bool)

(assert (=> b!640715 (= condSetEmpty!2960 (= (_2!4049 (h!12268 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2960 () Bool)

(assert (=> setIsEmpty!2960 setRes!2960))

(declare-fun setNonEmpty!2960 () Bool)

(declare-fun tp!199188 () Bool)

(declare-fun setElem!2960 () Context!398)

(assert (=> setNonEmpty!2960 (= setRes!2960 (and tp!199188 (inv!8707 setElem!2960)))))

(declare-fun setRest!2960 () (InoxSet Context!398))

(assert (=> setNonEmpty!2960 (= (_2!4049 (h!12268 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2960 true) setRest!2960))))

(assert (=> b!640476 (= tp!199102 e!391380)))

(assert (= (and b!640715 condSetEmpty!2960) setIsEmpty!2960))

(assert (= (and b!640715 (not condSetEmpty!2960)) setNonEmpty!2960))

(assert (= (and b!640476 ((_ is Cons!6867) (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))) b!640715))

(declare-fun m!912649 () Bool)

(assert (=> b!640715 m!912649))

(declare-fun m!912651 () Bool)

(assert (=> setNonEmpty!2960 m!912651))

(check-sat (not d!223111) (not b!640627) (not setNonEmpty!2942) (not d!223101) (not b!640714) (not d!223129) (not d!223113) (not b!640650) (not d!223103) b_and!62597 (not b_next!18837) (not d!223095) b_and!62595 (not b!640592) (not b!640712) (not d!223133) (not b!640512) (not b!640625) (not b!640658) (not setNonEmpty!2955) (not b!640702) (not d!223149) (not b!640540) (not b!640701) (not d!223119) (not d!223099) (not b!640559) (not d!223137) (not setNonEmpty!2949) b_and!62601 (not b!640690) (not b!640599) b_and!62593 (not b!640545) (not b!640556) (not setNonEmpty!2956) (not b!640584) (not d!223115) (not b!640538) (not bm!41664) (not b!640713) (not setNonEmpty!2950) (not b!640608) (not b!640560) (not b_next!18841) (not d!223093) (not b!640605) (not b!640651) (not mapNonEmpty!2630) (not b_next!18847) (not b!640581) (not b_next!18845) (not mapNonEmpty!2633) (not b!640593) (not d!223141) (not b!640569) (not b!640680) (not d!223105) (not d!223147) (not b!640679) (not bm!41661) (not b!640555) (not b_next!18843) (not b!640692) (not b!640710) (not d!223097) (not b!640628) (not d!223151) (not setNonEmpty!2959) (not d!223139) (not b!640668) (not b!640558) (not b!640652) (not b!640661) (not b!640641) (not b!640546) (not d!223117) (not b!640630) (not setNonEmpty!2960) (not setNonEmpty!2948) (not b!640669) (not d!223107) (not d!223109) (not setNonEmpty!2957) (not d!223131) (not b!640547) (not b!640539) (not d!223121) (not setNonEmpty!2958) (not setNonEmpty!2945) (not b!640511) (not b!640674) (not b!640568) (not b_next!18839) (not b!640711) b_and!62591 (not b!640631) (not setNonEmpty!2941) (not b!640655) (not b!640691) (not b!640488) (not b!640689) b_and!62599 (not b!640537) (not b!640643) (not b!640557) (not b!640715))
(check-sat b_and!62595 b_and!62601 b_and!62593 (not b_next!18841) (not b_next!18843) (not b_next!18839) b_and!62591 b_and!62599 b_and!62597 (not b_next!18837) (not b_next!18847) (not b_next!18845))
(get-model)

(declare-fun d!223157 () Bool)

(declare-fun lt!274906 () Int)

(declare-fun size!5420 (List!6878) Int)

(declare-fun list!2914 (BalanceConc!4648) List!6878)

(assert (=> d!223157 (= lt!274906 (size!5420 (list!2914 (tokens!1209 printableTokens!2))))))

(declare-fun size!5421 (Conc!2318) Int)

(assert (=> d!223157 (= lt!274906 (size!5421 (c!117092 (tokens!1209 printableTokens!2))))))

(assert (=> d!223157 (= (size!5419 (tokens!1209 printableTokens!2)) lt!274906)))

(declare-fun bs!78296 () Bool)

(assert (= bs!78296 d!223157))

(declare-fun m!912653 () Bool)

(assert (=> bs!78296 m!912653))

(assert (=> bs!78296 m!912653))

(declare-fun m!912655 () Bool)

(assert (=> bs!78296 m!912655))

(declare-fun m!912657 () Bool)

(assert (=> bs!78296 m!912657))

(assert (=> b!640631 d!223157))

(declare-fun d!223159 () Bool)

(declare-fun lambda!18954 () Int)

(declare-fun forall!1763 (List!6880 Int) Bool)

(assert (=> d!223159 (= (inv!8707 setElem!2950) (forall!1763 (exprs!699 setElem!2950) lambda!18954))))

(declare-fun bs!78297 () Bool)

(assert (= bs!78297 d!223159))

(declare-fun m!912659 () Bool)

(assert (=> bs!78297 m!912659))

(assert (=> setNonEmpty!2950 d!223159))

(declare-fun d!223161 () Bool)

(assert (=> d!223161 (= (usesJsonRules!0 (get!2484 (_1!4052 lt!274879))) (= (rules!8210 (get!2484 (_1!4052 lt!274879))) (rules!109 JsonLexer!197)))))

(declare-fun bs!78298 () Bool)

(assert (= bs!78298 d!223161))

(assert (=> bs!78298 m!912257))

(assert (=> b!640593 d!223161))

(declare-fun d!223163 () Bool)

(assert (=> d!223163 (= (get!2484 (_1!4052 lt!274879)) (v!16998 (_1!4052 lt!274879)))))

(assert (=> b!640593 d!223163))

(declare-fun bs!78299 () Bool)

(declare-fun d!223165 () Bool)

(assert (= bs!78299 (and d!223165 d!223159)))

(declare-fun lambda!18955 () Int)

(assert (=> bs!78299 (= lambda!18955 lambda!18954)))

(assert (=> d!223165 (= (inv!8707 (_1!4048 (_1!4049 (h!12268 mapValue!2630)))) (forall!1763 (exprs!699 (_1!4048 (_1!4049 (h!12268 mapValue!2630)))) lambda!18955))))

(declare-fun bs!78300 () Bool)

(assert (= bs!78300 d!223165))

(declare-fun m!912661 () Bool)

(assert (=> bs!78300 m!912661))

(assert (=> b!640668 d!223165))

(declare-fun d!223167 () Bool)

(assert (=> d!223167 true))

(declare-fun lt!274909 () Bool)

(declare-fun rulesValidInductive!508 (LexerInterface!1256 List!6879) Bool)

(assert (=> d!223167 (= lt!274909 (rulesValidInductive!508 Lexer!1254 lt!274715))))

(declare-fun lambda!18958 () Int)

(declare-fun forall!1764 (List!6879 Int) Bool)

(assert (=> d!223167 (= lt!274909 (forall!1764 lt!274715 lambda!18958))))

(assert (=> d!223167 (= (rulesValid!507 Lexer!1254 lt!274715) lt!274909)))

(declare-fun bs!78301 () Bool)

(assert (= bs!78301 d!223167))

(declare-fun m!912663 () Bool)

(assert (=> bs!78301 m!912663))

(declare-fun m!912665 () Bool)

(assert (=> bs!78301 m!912665))

(assert (=> d!223149 d!223167))

(declare-fun bs!78302 () Bool)

(declare-fun d!223169 () Bool)

(assert (= bs!78302 (and d!223169 d!223159)))

(declare-fun lambda!18959 () Int)

(assert (=> bs!78302 (= lambda!18959 lambda!18954)))

(declare-fun bs!78303 () Bool)

(assert (= bs!78303 (and d!223169 d!223165)))

(assert (=> bs!78303 (= lambda!18959 lambda!18955)))

(assert (=> d!223169 (= (inv!8707 setElem!2942) (forall!1763 (exprs!699 setElem!2942) lambda!18959))))

(declare-fun bs!78304 () Bool)

(assert (= bs!78304 d!223169))

(declare-fun m!912667 () Bool)

(assert (=> bs!78304 m!912667))

(assert (=> setNonEmpty!2942 d!223169))

(declare-fun d!223171 () Bool)

(assert (=> d!223171 (= (inv!8708 (xs!4959 (c!117092 (tokens!1209 printableTokens!2)))) (<= (size!5420 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2))))) 2147483647))))

(declare-fun bs!78305 () Bool)

(assert (= bs!78305 d!223171))

(declare-fun m!912669 () Bool)

(assert (=> bs!78305 m!912669))

(assert (=> b!640690 d!223171))

(declare-fun b!640726 () Bool)

(declare-fun e!391386 () List!6883)

(assert (=> b!640726 (= e!391386 Nil!6869)))

(declare-fun b!640729 () Bool)

(declare-fun e!391387 () List!6883)

(assert (=> b!640729 (= e!391387 (++!1840 (list!2911 (left!5465 (c!117093 lt!274704))) (list!2911 (right!5795 (c!117093 lt!274704)))))))

(declare-fun d!223173 () Bool)

(declare-fun c!117150 () Bool)

(assert (=> d!223173 (= c!117150 ((_ is Empty!2319) (c!117093 lt!274704)))))

(assert (=> d!223173 (= (list!2911 (c!117093 lt!274704)) e!391386)))

(declare-fun b!640727 () Bool)

(assert (=> b!640727 (= e!391386 e!391387)))

(declare-fun c!117151 () Bool)

(assert (=> b!640727 (= c!117151 ((_ is Leaf!3524) (c!117093 lt!274704)))))

(declare-fun b!640728 () Bool)

(declare-fun list!2915 (IArray!4639) List!6883)

(assert (=> b!640728 (= e!391387 (list!2915 (xs!4960 (c!117093 lt!274704))))))

(assert (= (and d!223173 c!117150) b!640726))

(assert (= (and d!223173 (not c!117150)) b!640727))

(assert (= (and b!640727 c!117151) b!640728))

(assert (= (and b!640727 (not c!117151)) b!640729))

(declare-fun m!912671 () Bool)

(assert (=> b!640729 m!912671))

(declare-fun m!912673 () Bool)

(assert (=> b!640729 m!912673))

(assert (=> b!640729 m!912671))

(assert (=> b!640729 m!912673))

(declare-fun m!912675 () Bool)

(assert (=> b!640729 m!912675))

(declare-fun m!912677 () Bool)

(assert (=> b!640728 m!912677))

(assert (=> d!223099 d!223173))

(declare-fun b!640779 () Bool)

(declare-fun e!391435 () Bool)

(assert (=> b!640779 (= e!391435 true)))

(declare-fun b!640778 () Bool)

(declare-fun e!391434 () Bool)

(assert (=> b!640778 (= e!391434 e!391435)))

(declare-fun d!223175 () Bool)

(assert (=> d!223175 e!391434))

(assert (= b!640778 b!640779))

(assert (= d!223175 b!640778))

(declare-fun lt!275097 () List!6878)

(declare-fun lt!275112 () Int)

(declare-fun b!640758 () Bool)

(declare-fun e!391424 () Bool)

(declare-fun lt!275081 () LexerInterface!1256)

(declare-fun tokensListTwoByTwoPredicateSeparableList!8 (LexerInterface!1256 List!6878 List!6879) Bool)

(declare-fun take!10 (List!6878 Int) List!6878)

(assert (=> b!640758 (= e!391424 (tokensListTwoByTwoPredicateSeparableList!8 lt!275081 (take!10 lt!275097 lt!275112) (rules!8210 printableTokens!2)))))

(declare-fun lt!275068 () Unit!11924)

(declare-fun lt!275100 () Unit!11924)

(assert (=> b!640758 (= lt!275068 lt!275100)))

(declare-fun lt!275088 () List!6878)

(declare-fun lambda!18972 () Int)

(declare-fun forall!1765 (List!6878 Int) Bool)

(assert (=> b!640758 (forall!1765 lt!275088 lambda!18972)))

(declare-fun lemmaForallSubseq!19 (List!6878 List!6878 Int) Unit!11924)

(assert (=> b!640758 (= lt!275100 (lemmaForallSubseq!19 lt!275088 lt!275097 lambda!18972))))

(assert (=> b!640758 (= lt!275088 (take!10 lt!275097 lt!275112))))

(declare-fun b!640759 () Bool)

(declare-fun e!391420 () Bool)

(declare-fun e!391418 () Bool)

(assert (=> b!640759 (= e!391420 e!391418)))

(declare-fun res!278704 () Bool)

(assert (=> b!640759 (=> (not res!278704) (not e!391418))))

(declare-fun lt!275094 () List!6878)

(declare-fun lt!275056 () LexerInterface!1256)

(declare-fun rulesProduceIndividualToken!520 (LexerInterface!1256 List!6879 Token!2478) Bool)

(assert (=> b!640759 (= res!278704 (rulesProduceIndividualToken!520 lt!275056 (rules!8210 printableTokens!2) (h!12265 lt!275094)))))

(declare-fun e!391425 () Bool)

(declare-fun lt!275103 () LexerInterface!1256)

(declare-fun lt!275063 () List!6878)

(declare-fun b!640760 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!339 (LexerInterface!1256 List!6879 List!6878) Bool)

(assert (=> b!640760 (= e!391425 (rulesProduceEachTokenIndividuallyList!339 lt!275103 (rules!8210 printableTokens!2) (t!84888 lt!275063)))))

(declare-fun b!640761 () Bool)

(declare-fun lt!275093 () PrintableTokens!136)

(declare-fun e!391429 () Bool)

(declare-fun slice!41 (BalanceConc!4648 Int Int) BalanceConc!4648)

(assert (=> b!640761 (= e!391429 (= (list!2914 (tokens!1209 lt!275093)) (list!2914 (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))))))))

(declare-fun b!640762 () Bool)

(declare-fun e!391428 () Bool)

(assert (=> b!640762 (= e!391428 e!391425)))

(declare-fun res!278695 () Bool)

(assert (=> b!640762 (=> (not res!278695) (not e!391425))))

(assert (=> b!640762 (= res!278695 (rulesProduceIndividualToken!520 lt!275103 (rules!8210 printableTokens!2) (h!12265 lt!275063)))))

(declare-fun b!640763 () Bool)

(declare-fun e!391427 () Bool)

(declare-fun e!391421 () Bool)

(assert (=> b!640763 (= e!391427 e!391421)))

(declare-fun res!278701 () Bool)

(assert (=> b!640763 (=> (not res!278701) (not e!391421))))

(declare-fun lt!275092 () List!6878)

(assert (=> b!640763 (= res!278701 (rulesProduceIndividualToken!520 lt!275081 (rules!8210 printableTokens!2) (h!12265 lt!275092)))))

(declare-fun b!640764 () Bool)

(declare-fun e!391426 () Bool)

(declare-fun e!391422 () Bool)

(assert (=> b!640764 (= e!391426 e!391422)))

(declare-fun res!278706 () Bool)

(assert (=> b!640764 (=> (not res!278706) (not e!391422))))

(declare-fun lt!275076 () List!6878)

(declare-fun lt!275054 () LexerInterface!1256)

(assert (=> b!640764 (= res!278706 (rulesProduceIndividualToken!520 lt!275054 (rules!8210 printableTokens!2) (h!12265 lt!275076)))))

(declare-fun b!640766 () Bool)

(assert (=> b!640766 (= e!391418 (rulesProduceEachTokenIndividuallyList!339 lt!275056 (rules!8210 printableTokens!2) (t!84888 lt!275094)))))

(declare-fun b!640767 () Bool)

(assert (=> b!640767 (= e!391422 (rulesProduceEachTokenIndividuallyList!339 lt!275054 (rules!8210 printableTokens!2) (t!84888 lt!275076)))))

(declare-fun lt!275111 () List!6878)

(declare-fun b!640768 () Bool)

(declare-fun e!391416 () Bool)

(declare-fun drop!352 (List!6878 Int) List!6878)

(assert (=> b!640768 (= e!391416 (tokensListTwoByTwoPredicateSeparableList!8 lt!275056 (drop!352 lt!275111 (ite c!117121 lt!274863 lt!274865)) (rules!8210 printableTokens!2)))))

(declare-fun lt!275116 () Unit!11924)

(declare-fun lt!275098 () Unit!11924)

(assert (=> b!640768 (= lt!275116 lt!275098)))

(declare-fun lt!275123 () List!6878)

(assert (=> b!640768 (forall!1765 lt!275123 lambda!18972)))

(assert (=> b!640768 (= lt!275098 (lemmaForallSubseq!19 lt!275123 lt!275111 lambda!18972))))

(assert (=> b!640768 (= lt!275123 (drop!352 lt!275111 (ite c!117121 lt!274863 lt!274865)))))

(declare-fun lt!275058 () Unit!11924)

(declare-fun lt!275113 () Unit!11924)

(assert (=> b!640768 (= lt!275058 lt!275113)))

(declare-fun subseq!131 (List!6878 List!6878) Bool)

(assert (=> b!640768 (subseq!131 (drop!352 lt!275111 (ite c!117121 lt!274863 lt!274865)) lt!275111)))

(declare-fun lemmaDropSubseq!8 (List!6878 Int) Unit!11924)

(assert (=> b!640768 (= lt!275113 (lemmaDropSubseq!8 lt!275111 (ite c!117121 lt!274863 lt!274865)))))

(declare-fun b!640769 () Bool)

(assert (=> b!640769 (= e!391421 (rulesProduceEachTokenIndividuallyList!339 lt!275081 (rules!8210 printableTokens!2) (t!84888 lt!275092)))))

(declare-fun lt!275089 () Int)

(declare-fun lt!275124 () LexerInterface!1256)

(declare-fun b!640770 () Bool)

(declare-fun e!391417 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!12 (LexerInterface!1256 BalanceConc!4648 Int List!6879) Bool)

(assert (=> b!640770 (= e!391417 (tokensListTwoByTwoPredicateSeparable!12 lt!275124 (tokens!1209 printableTokens!2) (+ lt!275089 1) (rules!8210 printableTokens!2)))))

(declare-fun b!640771 () Bool)

(declare-fun e!391423 () Bool)

(assert (=> b!640771 (= e!391423 e!391417)))

(declare-fun res!278694 () Bool)

(assert (=> b!640771 (=> (not res!278694) (not e!391417))))

(declare-fun separableTokensPredicate!10 (LexerInterface!1256 Token!2478 Token!2478 List!6879) Bool)

(assert (=> b!640771 (= res!278694 (separableTokensPredicate!10 lt!275124 (apply!1634 (tokens!1209 printableTokens!2) lt!275089) (apply!1634 (tokens!1209 printableTokens!2) (+ lt!275089 1)) (rules!8210 printableTokens!2)))))

(declare-fun lt!275069 () Unit!11924)

(declare-fun Unit!11934 () Unit!11924)

(assert (=> b!640771 (= lt!275069 Unit!11934)))

(declare-fun size!5422 (BalanceConc!4646) Int)

(declare-fun charsOf!910 (Token!2478) BalanceConc!4646)

(assert (=> b!640771 (> (size!5422 (charsOf!910 (apply!1634 (tokens!1209 printableTokens!2) (+ lt!275089 1)))) 0)))

(declare-fun lt!275060 () Unit!11924)

(declare-fun Unit!11935 () Unit!11924)

(assert (=> b!640771 (= lt!275060 Unit!11935)))

(assert (=> b!640771 (rulesProduceIndividualToken!520 lt!275124 (rules!8210 printableTokens!2) (apply!1634 (tokens!1209 printableTokens!2) (+ lt!275089 1)))))

(declare-fun lt!275067 () Unit!11924)

(declare-fun Unit!11936 () Unit!11924)

(assert (=> b!640771 (= lt!275067 Unit!11936)))

(assert (=> b!640771 (rulesProduceIndividualToken!520 lt!275124 (rules!8210 printableTokens!2) (apply!1634 (tokens!1209 printableTokens!2) lt!275089))))

(declare-fun lt!275066 () Unit!11924)

(declare-fun lt!275064 () Unit!11924)

(assert (=> b!640771 (= lt!275066 lt!275064)))

(declare-fun lt!275082 () Token!2478)

(assert (=> b!640771 (rulesProduceIndividualToken!520 lt!275124 (rules!8210 printableTokens!2) lt!275082)))

(declare-fun lt!275070 () List!6878)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!206 (LexerInterface!1256 List!6879 List!6878 Token!2478) Unit!11924)

(assert (=> b!640771 (= lt!275064 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!206 lt!275124 (rules!8210 printableTokens!2) lt!275070 lt!275082))))

(assert (=> b!640771 (= lt!275082 (apply!1634 (tokens!1209 printableTokens!2) (+ lt!275089 1)))))

(assert (=> b!640771 (= lt!275070 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun lt!275084 () Unit!11924)

(declare-fun lt!275087 () Unit!11924)

(assert (=> b!640771 (= lt!275084 lt!275087)))

(declare-fun lt!275085 () Token!2478)

(assert (=> b!640771 (rulesProduceIndividualToken!520 lt!275124 (rules!8210 printableTokens!2) lt!275085)))

(declare-fun lt!275072 () List!6878)

(assert (=> b!640771 (= lt!275087 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!206 lt!275124 (rules!8210 printableTokens!2) lt!275072 lt!275085))))

(assert (=> b!640771 (= lt!275085 (apply!1634 (tokens!1209 printableTokens!2) lt!275089))))

(assert (=> b!640771 (= lt!275072 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun lt!275077 () Unit!11924)

(declare-fun lt!275096 () Unit!11924)

(assert (=> b!640771 (= lt!275077 lt!275096)))

(declare-fun lt!275115 () List!6878)

(declare-fun lt!275119 () Int)

(declare-fun tail!905 (List!6878) List!6878)

(assert (=> b!640771 (= (tail!905 (drop!352 lt!275115 lt!275119)) (drop!352 lt!275115 (+ lt!275119 1)))))

(declare-fun lemmaDropTail!306 (List!6878 Int) Unit!11924)

(assert (=> b!640771 (= lt!275096 (lemmaDropTail!306 lt!275115 lt!275119))))

(assert (=> b!640771 (= lt!275119 (+ lt!275089 1))))

(assert (=> b!640771 (= lt!275115 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun lt!275118 () Unit!11924)

(declare-fun lt!275095 () Unit!11924)

(assert (=> b!640771 (= lt!275118 lt!275095)))

(declare-fun lt!275090 () List!6878)

(assert (=> b!640771 (= (tail!905 (drop!352 lt!275090 lt!275089)) (drop!352 lt!275090 (+ lt!275089 1)))))

(assert (=> b!640771 (= lt!275095 (lemmaDropTail!306 lt!275090 lt!275089))))

(assert (=> b!640771 (= lt!275090 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun lt!275122 () Unit!11924)

(declare-fun lt!275075 () Unit!11924)

(assert (=> b!640771 (= lt!275122 lt!275075)))

(declare-fun lt!275062 () List!6878)

(declare-fun lt!275091 () Int)

(declare-fun head!1349 (List!6878) Token!2478)

(declare-fun apply!1635 (List!6878 Int) Token!2478)

(assert (=> b!640771 (= (head!1349 (drop!352 lt!275062 lt!275091)) (apply!1635 lt!275062 lt!275091))))

(declare-fun lemmaDropApply!318 (List!6878 Int) Unit!11924)

(assert (=> b!640771 (= lt!275075 (lemmaDropApply!318 lt!275062 lt!275091))))

(assert (=> b!640771 (= lt!275091 (+ lt!275089 1))))

(assert (=> b!640771 (= lt!275062 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun lt!275105 () Unit!11924)

(declare-fun lt!275086 () Unit!11924)

(assert (=> b!640771 (= lt!275105 lt!275086)))

(declare-fun lt!275107 () List!6878)

(assert (=> b!640771 (= (head!1349 (drop!352 lt!275107 lt!275089)) (apply!1635 lt!275107 lt!275089))))

(assert (=> b!640771 (= lt!275086 (lemmaDropApply!318 lt!275107 lt!275089))))

(assert (=> b!640771 (= lt!275107 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun e!391419 () Bool)

(declare-fun b!640765 () Bool)

(assert (=> b!640765 (= e!391419 (<= (ite c!117121 (+ lt!274865 1) (+ lt!274863 1)) (size!5419 (tokens!1209 printableTokens!2))))))

(assert (=> d!223175 e!391429))

(declare-fun res!278698 () Bool)

(assert (=> d!223175 (=> (not res!278698) (not e!391429))))

(assert (=> d!223175 (= res!278698 (= (rules!8210 lt!275093) (rules!8210 printableTokens!2)))))

(assert (=> d!223175 (= lt!275093 (PrintableTokens!137 (rules!8210 printableTokens!2) (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1)))))))

(declare-fun lt!275074 () Unit!11924)

(declare-fun lt!275108 () Unit!11924)

(assert (=> d!223175 (= lt!275074 lt!275108)))

(assert (=> d!223175 e!391424))

(declare-fun res!278702 () Bool)

(assert (=> d!223175 (=> (not res!278702) (not e!391424))))

(assert (=> d!223175 (= res!278702 (= (rulesProduceEachTokenIndividuallyList!339 lt!275081 (rules!8210 printableTokens!2) (take!10 lt!275097 lt!275112)) e!391427))))

(declare-fun res!278699 () Bool)

(assert (=> d!223175 (=> res!278699 e!391427)))

(assert (=> d!223175 (= res!278699 (not ((_ is Cons!6864) lt!275092)))))

(assert (=> d!223175 (= lt!275092 (take!10 lt!275097 lt!275112))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!8 (LexerInterface!1256 List!6878 Int List!6879) Unit!11924)

(assert (=> d!223175 (= lt!275108 (tokensListTwoByTwoPredicateSeparableTokensTakeList!8 lt!275081 lt!275097 lt!275112 (rules!8210 printableTokens!2)))))

(assert (=> d!223175 (= lt!275112 (- (ite c!117121 (+ lt!274865 1) (+ lt!274863 1)) (ite c!117121 lt!274863 lt!274865)))))

(assert (=> d!223175 (= lt!275097 (drop!352 (list!2914 (tokens!1209 printableTokens!2)) (ite c!117121 lt!274863 lt!274865)))))

(assert (=> d!223175 (= lt!275081 Lexer!1254)))

(declare-fun lt!275055 () Unit!11924)

(declare-fun lt!275120 () Unit!11924)

(assert (=> d!223175 (= lt!275055 lt!275120)))

(declare-fun lt!275099 () List!6878)

(assert (=> d!223175 (forall!1765 lt!275099 lambda!18972)))

(declare-fun lt!275065 () List!6878)

(assert (=> d!223175 (= lt!275120 (lemmaForallSubseq!19 lt!275099 lt!275065 lambda!18972))))

(assert (=> d!223175 (= lt!275065 (list!2914 (tokens!1209 printableTokens!2)))))

(assert (=> d!223175 (= lt!275099 (drop!352 (list!2914 (tokens!1209 printableTokens!2)) (ite c!117121 lt!274863 lt!274865)))))

(declare-fun lt!275114 () Unit!11924)

(declare-fun lt!275125 () Unit!11924)

(assert (=> d!223175 (= lt!275114 lt!275125)))

(declare-fun lt!275104 () List!6878)

(assert (=> d!223175 (subseq!131 (drop!352 lt!275104 (ite c!117121 lt!274863 lt!274865)) lt!275104)))

(assert (=> d!223175 (= lt!275125 (lemmaDropSubseq!8 lt!275104 (ite c!117121 lt!274863 lt!274865)))))

(assert (=> d!223175 (= lt!275104 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun lt!275110 () Unit!11924)

(declare-fun lt!275109 () Unit!11924)

(assert (=> d!223175 (= lt!275110 lt!275109)))

(assert (=> d!223175 e!391416))

(declare-fun res!278703 () Bool)

(assert (=> d!223175 (=> (not res!278703) (not e!391416))))

(assert (=> d!223175 (= res!278703 (= (rulesProduceEachTokenIndividuallyList!339 lt!275056 (rules!8210 printableTokens!2) (drop!352 lt!275111 (ite c!117121 lt!274863 lt!274865))) e!391420))))

(declare-fun res!278696 () Bool)

(assert (=> d!223175 (=> res!278696 e!391420)))

(assert (=> d!223175 (= res!278696 (not ((_ is Cons!6864) lt!275094)))))

(assert (=> d!223175 (= lt!275094 (drop!352 lt!275111 (ite c!117121 lt!274863 lt!274865)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!8 (LexerInterface!1256 List!6878 Int List!6879) Unit!11924)

(assert (=> d!223175 (= lt!275109 (tokensListTwoByTwoPredicateSeparableTokensDropList!8 lt!275056 lt!275111 (ite c!117121 lt!274863 lt!274865) (rules!8210 printableTokens!2)))))

(assert (=> d!223175 (= lt!275111 (list!2914 (tokens!1209 printableTokens!2)))))

(assert (=> d!223175 (= lt!275056 Lexer!1254)))

(declare-fun lt!275073 () Unit!11924)

(declare-fun Unit!11937 () Unit!11924)

(assert (=> d!223175 (= lt!275073 Unit!11937)))

(assert (=> d!223175 (= (tokensListTwoByTwoPredicateSeparable!12 Lexer!1254 (tokens!1209 printableTokens!2) 0 (rules!8210 printableTokens!2)) e!391423)))

(declare-fun res!278700 () Bool)

(assert (=> d!223175 (=> res!278700 e!391423)))

(assert (=> d!223175 (= res!278700 (not (< lt!275089 (- (size!5419 (tokens!1209 printableTokens!2)) 1))))))

(assert (=> d!223175 (= lt!275089 0)))

(assert (=> d!223175 (= lt!275124 Lexer!1254)))

(declare-fun lt!275106 () Unit!11924)

(declare-fun Unit!11938 () Unit!11924)

(assert (=> d!223175 (= lt!275106 Unit!11938)))

(assert (=> d!223175 (= (separableTokens!28 Lexer!1254 (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))) (rules!8210 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!12 Lexer!1254 (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))) 0 (rules!8210 printableTokens!2)))))

(declare-fun lt!275061 () Unit!11924)

(declare-fun Unit!11939 () Unit!11924)

(assert (=> d!223175 (= lt!275061 Unit!11939)))

(assert (=> d!223175 (= (rulesProduceEachTokenIndividuallyList!339 Lexer!1254 (rules!8210 printableTokens!2) (list!2914 (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))))) e!391426)))

(declare-fun res!278707 () Bool)

(assert (=> d!223175 (=> res!278707 e!391426)))

(assert (=> d!223175 (= res!278707 (not ((_ is Cons!6864) lt!275076)))))

(assert (=> d!223175 (= lt!275076 (list!2914 (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1)))))))

(assert (=> d!223175 (= lt!275054 Lexer!1254)))

(declare-fun lt!275078 () Unit!11924)

(declare-fun Unit!11940 () Unit!11924)

(assert (=> d!223175 (= lt!275078 Unit!11940)))

(declare-fun forall!1766 (BalanceConc!4648 Int) Bool)

(assert (=> d!223175 (= (rulesProduceEachTokenIndividually!578 Lexer!1254 (rules!8210 printableTokens!2) (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1)))) (forall!1766 (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))) lambda!18972))))

(declare-fun lt!275083 () Unit!11924)

(declare-fun lt!275121 () Unit!11924)

(assert (=> d!223175 (= lt!275083 lt!275121)))

(declare-fun lt!275071 () List!6878)

(assert (=> d!223175 (forall!1765 lt!275071 lambda!18972)))

(declare-fun lt!275079 () List!6878)

(assert (=> d!223175 (= lt!275121 (lemmaForallSubseq!19 lt!275071 lt!275079 lambda!18972))))

(assert (=> d!223175 (= lt!275079 (list!2914 (tokens!1209 printableTokens!2)))))

(assert (=> d!223175 (= lt!275071 (list!2914 (slice!41 (tokens!1209 printableTokens!2) (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1)))))))

(declare-fun lt!275117 () Unit!11924)

(declare-fun lt!275057 () Unit!11924)

(assert (=> d!223175 (= lt!275117 lt!275057)))

(declare-fun lt!275059 () List!6878)

(declare-fun slice!42 (List!6878 Int Int) List!6878)

(assert (=> d!223175 (subseq!131 (slice!42 lt!275059 (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))) lt!275059)))

(declare-fun lemmaSliceSubseq!8 (List!6878 Int Int) Unit!11924)

(assert (=> d!223175 (= lt!275057 (lemmaSliceSubseq!8 lt!275059 (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))))))

(assert (=> d!223175 (= lt!275059 (list!2914 (tokens!1209 printableTokens!2)))))

(declare-fun lt!275101 () Unit!11924)

(declare-fun Unit!11941 () Unit!11924)

(assert (=> d!223175 (= lt!275101 Unit!11941)))

(assert (=> d!223175 (= (rulesProduceEachTokenIndividuallyList!339 Lexer!1254 (rules!8210 printableTokens!2) (list!2914 (tokens!1209 printableTokens!2))) e!391428)))

(declare-fun res!278705 () Bool)

(assert (=> d!223175 (=> res!278705 e!391428)))

(assert (=> d!223175 (= res!278705 (not ((_ is Cons!6864) lt!275063)))))

(assert (=> d!223175 (= lt!275063 (list!2914 (tokens!1209 printableTokens!2)))))

(assert (=> d!223175 (= lt!275103 Lexer!1254)))

(declare-fun lt!275102 () Unit!11924)

(declare-fun Unit!11942 () Unit!11924)

(assert (=> d!223175 (= lt!275102 Unit!11942)))

(assert (=> d!223175 (= (rulesProduceEachTokenIndividually!578 Lexer!1254 (rules!8210 printableTokens!2) (tokens!1209 printableTokens!2)) (forall!1766 (tokens!1209 printableTokens!2) lambda!18972))))

(declare-fun lt!275080 () Unit!11924)

(declare-fun lemmaInvariant!76 (PrintableTokens!136) Unit!11924)

(assert (=> d!223175 (= lt!275080 (lemmaInvariant!76 printableTokens!2))))

(assert (=> d!223175 e!391419))

(declare-fun res!278697 () Bool)

(assert (=> d!223175 (=> (not res!278697) (not e!391419))))

(assert (=> d!223175 (= res!278697 (and (<= 0 (ite c!117121 lt!274863 lt!274865)) (<= (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1)))))))

(assert (=> d!223175 (= (slice!40 printableTokens!2 (ite c!117121 lt!274863 lt!274865) (ite c!117121 (+ lt!274865 1) (+ lt!274863 1))) lt!275093)))

(assert (= (and d!223175 res!278697) b!640765))

(assert (= (and d!223175 (not res!278705)) b!640762))

(assert (= (and b!640762 res!278695) b!640760))

(assert (= (and d!223175 (not res!278707)) b!640764))

(assert (= (and b!640764 res!278706) b!640767))

(assert (= (and d!223175 (not res!278700)) b!640771))

(assert (= (and b!640771 res!278694) b!640770))

(assert (= (and d!223175 (not res!278696)) b!640759))

(assert (= (and b!640759 res!278704) b!640766))

(assert (= (and d!223175 res!278703) b!640768))

(assert (= (and d!223175 (not res!278699)) b!640763))

(assert (= (and b!640763 res!278701) b!640769))

(assert (= (and d!223175 res!278702) b!640758))

(assert (= (and d!223175 res!278698) b!640761))

(assert (=> b!640765 m!912533))

(declare-fun m!912679 () Bool)

(assert (=> b!640759 m!912679))

(declare-fun m!912681 () Bool)

(assert (=> b!640760 m!912681))

(declare-fun m!912683 () Bool)

(assert (=> b!640761 m!912683))

(declare-fun m!912685 () Bool)

(assert (=> b!640761 m!912685))

(assert (=> b!640761 m!912685))

(declare-fun m!912687 () Bool)

(assert (=> b!640761 m!912687))

(declare-fun m!912689 () Bool)

(assert (=> b!640769 m!912689))

(declare-fun m!912691 () Bool)

(assert (=> b!640767 m!912691))

(declare-fun m!912693 () Bool)

(assert (=> b!640764 m!912693))

(declare-fun m!912695 () Bool)

(assert (=> b!640762 m!912695))

(declare-fun m!912697 () Bool)

(assert (=> b!640766 m!912697))

(declare-fun m!912699 () Bool)

(assert (=> b!640770 m!912699))

(declare-fun m!912701 () Bool)

(assert (=> b!640758 m!912701))

(assert (=> b!640758 m!912701))

(declare-fun m!912703 () Bool)

(assert (=> b!640758 m!912703))

(declare-fun m!912705 () Bool)

(assert (=> b!640758 m!912705))

(declare-fun m!912707 () Bool)

(assert (=> b!640758 m!912707))

(declare-fun m!912709 () Bool)

(assert (=> b!640763 m!912709))

(declare-fun m!912711 () Bool)

(assert (=> d!223175 m!912711))

(declare-fun m!912713 () Bool)

(assert (=> d!223175 m!912713))

(assert (=> d!223175 m!912577))

(assert (=> d!223175 m!912701))

(declare-fun m!912715 () Bool)

(assert (=> d!223175 m!912715))

(declare-fun m!912717 () Bool)

(assert (=> d!223175 m!912717))

(assert (=> d!223175 m!912701))

(declare-fun m!912719 () Bool)

(assert (=> d!223175 m!912719))

(declare-fun m!912721 () Bool)

(assert (=> d!223175 m!912721))

(declare-fun m!912723 () Bool)

(assert (=> d!223175 m!912723))

(declare-fun m!912725 () Bool)

(assert (=> d!223175 m!912725))

(declare-fun m!912727 () Bool)

(assert (=> d!223175 m!912727))

(assert (=> d!223175 m!912685))

(declare-fun m!912729 () Bool)

(assert (=> d!223175 m!912729))

(declare-fun m!912731 () Bool)

(assert (=> d!223175 m!912731))

(assert (=> d!223175 m!912653))

(declare-fun m!912733 () Bool)

(assert (=> d!223175 m!912733))

(declare-fun m!912735 () Bool)

(assert (=> d!223175 m!912735))

(assert (=> d!223175 m!912685))

(assert (=> d!223175 m!912685))

(declare-fun m!912737 () Bool)

(assert (=> d!223175 m!912737))

(declare-fun m!912739 () Bool)

(assert (=> d!223175 m!912739))

(assert (=> d!223175 m!912733))

(declare-fun m!912741 () Bool)

(assert (=> d!223175 m!912741))

(assert (=> d!223175 m!912533))

(assert (=> d!223175 m!912653))

(declare-fun m!912743 () Bool)

(assert (=> d!223175 m!912743))

(assert (=> d!223175 m!912685))

(assert (=> d!223175 m!912687))

(assert (=> d!223175 m!912653))

(declare-fun m!912745 () Bool)

(assert (=> d!223175 m!912745))

(assert (=> d!223175 m!912727))

(declare-fun m!912747 () Bool)

(assert (=> d!223175 m!912747))

(declare-fun m!912749 () Bool)

(assert (=> d!223175 m!912749))

(declare-fun m!912751 () Bool)

(assert (=> d!223175 m!912751))

(assert (=> d!223175 m!912685))

(declare-fun m!912753 () Bool)

(assert (=> d!223175 m!912753))

(assert (=> d!223175 m!912687))

(declare-fun m!912755 () Bool)

(assert (=> d!223175 m!912755))

(assert (=> d!223175 m!912685))

(declare-fun m!912757 () Bool)

(assert (=> d!223175 m!912757))

(assert (=> d!223175 m!912711))

(declare-fun m!912759 () Bool)

(assert (=> d!223175 m!912759))

(declare-fun m!912761 () Bool)

(assert (=> b!640771 m!912761))

(declare-fun m!912763 () Bool)

(assert (=> b!640771 m!912763))

(declare-fun m!912765 () Bool)

(assert (=> b!640771 m!912765))

(declare-fun m!912767 () Bool)

(assert (=> b!640771 m!912767))

(declare-fun m!912769 () Bool)

(assert (=> b!640771 m!912769))

(declare-fun m!912771 () Bool)

(assert (=> b!640771 m!912771))

(declare-fun m!912773 () Bool)

(assert (=> b!640771 m!912773))

(declare-fun m!912775 () Bool)

(assert (=> b!640771 m!912775))

(declare-fun m!912777 () Bool)

(assert (=> b!640771 m!912777))

(declare-fun m!912779 () Bool)

(assert (=> b!640771 m!912779))

(declare-fun m!912781 () Bool)

(assert (=> b!640771 m!912781))

(assert (=> b!640771 m!912653))

(assert (=> b!640771 m!912781))

(declare-fun m!912783 () Bool)

(assert (=> b!640771 m!912783))

(declare-fun m!912785 () Bool)

(assert (=> b!640771 m!912785))

(assert (=> b!640771 m!912779))

(declare-fun m!912787 () Bool)

(assert (=> b!640771 m!912787))

(declare-fun m!912789 () Bool)

(assert (=> b!640771 m!912789))

(assert (=> b!640771 m!912779))

(declare-fun m!912791 () Bool)

(assert (=> b!640771 m!912791))

(declare-fun m!912793 () Bool)

(assert (=> b!640771 m!912793))

(declare-fun m!912795 () Bool)

(assert (=> b!640771 m!912795))

(assert (=> b!640771 m!912761))

(assert (=> b!640771 m!912789))

(declare-fun m!912797 () Bool)

(assert (=> b!640771 m!912797))

(declare-fun m!912799 () Bool)

(assert (=> b!640771 m!912799))

(declare-fun m!912801 () Bool)

(assert (=> b!640771 m!912801))

(assert (=> b!640771 m!912779))

(declare-fun m!912803 () Bool)

(assert (=> b!640771 m!912803))

(declare-fun m!912805 () Bool)

(assert (=> b!640771 m!912805))

(assert (=> b!640771 m!912785))

(declare-fun m!912807 () Bool)

(assert (=> b!640771 m!912807))

(assert (=> b!640771 m!912807))

(declare-fun m!912809 () Bool)

(assert (=> b!640771 m!912809))

(assert (=> b!640771 m!912785))

(declare-fun m!912811 () Bool)

(assert (=> b!640771 m!912811))

(declare-fun m!912813 () Bool)

(assert (=> b!640771 m!912813))

(assert (=> b!640771 m!912773))

(declare-fun m!912815 () Bool)

(assert (=> b!640768 m!912815))

(declare-fun m!912817 () Bool)

(assert (=> b!640768 m!912817))

(assert (=> b!640768 m!912733))

(declare-fun m!912819 () Bool)

(assert (=> b!640768 m!912819))

(declare-fun m!912821 () Bool)

(assert (=> b!640768 m!912821))

(assert (=> b!640768 m!912733))

(assert (=> b!640768 m!912733))

(declare-fun m!912823 () Bool)

(assert (=> b!640768 m!912823))

(assert (=> bm!41661 d!223175))

(declare-fun d!223177 () Bool)

(declare-fun dynLambda!3752 (Int tuple2!7434) Bool)

(assert (=> d!223177 (dynLambda!3752 lambda!18925 lt!274827)))

(declare-fun lt!275128 () Unit!11924)

(declare-fun choose!4634 (List!6883 Int tuple2!7434) Unit!11924)

(assert (=> d!223177 (= lt!275128 (choose!4634 (list!2909 lt!274832) lambda!18925 lt!274827))))

(declare-fun e!391438 () Bool)

(assert (=> d!223177 e!391438))

(declare-fun res!278710 () Bool)

(assert (=> d!223177 (=> (not res!278710) (not e!391438))))

(assert (=> d!223177 (= res!278710 (forall!1760 (list!2909 lt!274832) lambda!18925))))

(assert (=> d!223177 (= (forallContained!463 (list!2909 lt!274832) lambda!18925 lt!274827) lt!275128)))

(declare-fun b!640782 () Bool)

(declare-fun contains!1536 (List!6883 tuple2!7434) Bool)

(assert (=> b!640782 (= e!391438 (contains!1536 (list!2909 lt!274832) lt!274827))))

(assert (= (and d!223177 res!278710) b!640782))

(declare-fun b_lambda!25261 () Bool)

(assert (=> (not b_lambda!25261) (not d!223177)))

(declare-fun m!912825 () Bool)

(assert (=> d!223177 m!912825))

(assert (=> d!223177 m!912427))

(declare-fun m!912827 () Bool)

(assert (=> d!223177 m!912827))

(assert (=> d!223177 m!912427))

(declare-fun m!912829 () Bool)

(assert (=> d!223177 m!912829))

(assert (=> b!640782 m!912427))

(declare-fun m!912831 () Bool)

(assert (=> b!640782 m!912831))

(assert (=> b!640545 d!223177))

(declare-fun d!223179 () Bool)

(assert (=> d!223179 (= (list!2909 lt!274832) (list!2911 (c!117093 lt!274832)))))

(declare-fun bs!78306 () Bool)

(assert (= bs!78306 d!223179))

(declare-fun m!912833 () Bool)

(assert (=> bs!78306 m!912833))

(assert (=> b!640545 d!223179))

(declare-fun bs!78307 () Bool)

(declare-fun d!223181 () Bool)

(assert (= bs!78307 (and d!223181 d!223159)))

(declare-fun lambda!18973 () Int)

(assert (=> bs!78307 (= lambda!18973 lambda!18954)))

(declare-fun bs!78308 () Bool)

(assert (= bs!78308 (and d!223181 d!223165)))

(assert (=> bs!78308 (= lambda!18973 lambda!18955)))

(declare-fun bs!78309 () Bool)

(assert (= bs!78309 (and d!223181 d!223169)))

(assert (=> bs!78309 (= lambda!18973 lambda!18959)))

(assert (=> d!223181 (= (inv!8707 (_1!4048 (_1!4049 (h!12268 mapDefault!2630)))) (forall!1763 (exprs!699 (_1!4048 (_1!4049 (h!12268 mapDefault!2630)))) lambda!18973))))

(declare-fun bs!78310 () Bool)

(assert (= bs!78310 d!223181))

(declare-fun m!912835 () Bool)

(assert (=> bs!78310 m!912835))

(assert (=> b!640669 d!223181))

(declare-fun d!223183 () Bool)

(declare-fun lt!275131 () Int)

(assert (=> d!223183 (>= lt!275131 0)))

(declare-fun e!391441 () Int)

(assert (=> d!223183 (= lt!275131 e!391441)))

(declare-fun c!117154 () Bool)

(assert (=> d!223183 (= c!117154 ((_ is Nil!6869) (filter!131 lt!274841 lambda!18923)))))

(assert (=> d!223183 (= (size!5416 (filter!131 lt!274841 lambda!18923)) lt!275131)))

(declare-fun b!640787 () Bool)

(assert (=> b!640787 (= e!391441 0)))

(declare-fun b!640788 () Bool)

(assert (=> b!640788 (= e!391441 (+ 1 (size!5416 (t!84893 (filter!131 lt!274841 lambda!18923)))))))

(assert (= (and d!223183 c!117154) b!640787))

(assert (= (and d!223183 (not c!117154)) b!640788))

(declare-fun m!912837 () Bool)

(assert (=> b!640788 m!912837))

(assert (=> b!640547 d!223183))

(declare-fun b!640801 () Bool)

(declare-fun e!391449 () List!6883)

(assert (=> b!640801 (= e!391449 Nil!6869)))

(declare-fun bm!41667 () Bool)

(declare-fun call!41672 () List!6883)

(assert (=> bm!41667 (= call!41672 (filter!131 (t!84893 lt!274841) lambda!18923))))

(declare-fun d!223185 () Bool)

(declare-fun e!391450 () Bool)

(assert (=> d!223185 e!391450))

(declare-fun res!278716 () Bool)

(assert (=> d!223185 (=> (not res!278716) (not e!391450))))

(declare-fun lt!275134 () List!6883)

(assert (=> d!223185 (= res!278716 (<= (size!5416 lt!275134) (size!5416 lt!274841)))))

(assert (=> d!223185 (= lt!275134 e!391449)))

(declare-fun c!117160 () Bool)

(assert (=> d!223185 (= c!117160 ((_ is Nil!6869) lt!274841))))

(assert (=> d!223185 (= (filter!131 lt!274841 lambda!18923) lt!275134)))

(declare-fun b!640802 () Bool)

(declare-fun e!391448 () List!6883)

(assert (=> b!640802 (= e!391448 (Cons!6869 (h!12270 lt!274841) call!41672))))

(declare-fun b!640803 () Bool)

(assert (=> b!640803 (= e!391449 e!391448)))

(declare-fun c!117159 () Bool)

(assert (=> b!640803 (= c!117159 (dynLambda!3752 lambda!18923 (h!12270 lt!274841)))))

(declare-fun b!640804 () Bool)

(declare-fun res!278715 () Bool)

(assert (=> b!640804 (=> (not res!278715) (not e!391450))))

(declare-fun content!1167 (List!6883) (InoxSet tuple2!7434))

(assert (=> b!640804 (= res!278715 (= ((_ map implies) (content!1167 lt!275134) (content!1167 lt!274841)) ((as const (InoxSet tuple2!7434)) true)))))

(declare-fun b!640805 () Bool)

(assert (=> b!640805 (= e!391448 call!41672)))

(declare-fun b!640806 () Bool)

(assert (=> b!640806 (= e!391450 (forall!1760 lt!275134 lambda!18923))))

(assert (= (and d!223185 c!117160) b!640801))

(assert (= (and d!223185 (not c!117160)) b!640803))

(assert (= (and b!640803 c!117159) b!640802))

(assert (= (and b!640803 (not c!117159)) b!640805))

(assert (= (or b!640802 b!640805) bm!41667))

(assert (= (and d!223185 res!278716) b!640804))

(assert (= (and b!640804 res!278715) b!640806))

(declare-fun b_lambda!25263 () Bool)

(assert (=> (not b_lambda!25263) (not b!640803)))

(declare-fun m!912839 () Bool)

(assert (=> b!640804 m!912839))

(declare-fun m!912841 () Bool)

(assert (=> b!640804 m!912841))

(declare-fun m!912843 () Bool)

(assert (=> d!223185 m!912843))

(assert (=> d!223185 m!912415))

(declare-fun m!912845 () Bool)

(assert (=> b!640806 m!912845))

(declare-fun m!912847 () Bool)

(assert (=> bm!41667 m!912847))

(declare-fun m!912849 () Bool)

(assert (=> b!640803 m!912849))

(assert (=> b!640547 d!223185))

(declare-fun d!223187 () Bool)

(declare-fun lt!275135 () Int)

(assert (=> d!223187 (>= lt!275135 0)))

(declare-fun e!391451 () Int)

(assert (=> d!223187 (= lt!275135 e!391451)))

(declare-fun c!117161 () Bool)

(assert (=> d!223187 (= c!117161 ((_ is Nil!6869) lt!274841))))

(assert (=> d!223187 (= (size!5416 lt!274841) lt!275135)))

(declare-fun b!640807 () Bool)

(assert (=> b!640807 (= e!391451 0)))

(declare-fun b!640808 () Bool)

(assert (=> b!640808 (= e!391451 (+ 1 (size!5416 (t!84893 lt!274841))))))

(assert (= (and d!223187 c!117161) b!640807))

(assert (= (and d!223187 (not c!117161)) b!640808))

(declare-fun m!912851 () Bool)

(assert (=> b!640808 m!912851))

(assert (=> b!640547 d!223187))

(declare-fun bs!78311 () Bool)

(declare-fun d!223189 () Bool)

(assert (= bs!78311 (and d!223189 d!223159)))

(declare-fun lambda!18974 () Int)

(assert (=> bs!78311 (= lambda!18974 lambda!18954)))

(declare-fun bs!78312 () Bool)

(assert (= bs!78312 (and d!223189 d!223165)))

(assert (=> bs!78312 (= lambda!18974 lambda!18955)))

(declare-fun bs!78313 () Bool)

(assert (= bs!78313 (and d!223189 d!223169)))

(assert (=> bs!78313 (= lambda!18974 lambda!18959)))

(declare-fun bs!78314 () Bool)

(assert (= bs!78314 (and d!223189 d!223181)))

(assert (=> bs!78314 (= lambda!18974 lambda!18973)))

(assert (=> d!223189 (= (inv!8707 (_1!4048 (_1!4049 (h!12268 mapDefault!2626)))) (forall!1763 (exprs!699 (_1!4048 (_1!4049 (h!12268 mapDefault!2626)))) lambda!18974))))

(declare-fun bs!78315 () Bool)

(assert (= bs!78315 d!223189))

(declare-fun m!912853 () Bool)

(assert (=> bs!78315 m!912853))

(assert (=> b!640713 d!223189))

(declare-fun d!223191 () Bool)

(declare-fun res!278721 () Bool)

(declare-fun e!391456 () Bool)

(assert (=> d!223191 (=> res!278721 e!391456)))

(assert (=> d!223191 (= res!278721 ((_ is Nil!6869) lt!274712))))

(assert (=> d!223191 (= (forall!1760 lt!274712 lambda!18945) e!391456)))

(declare-fun b!640813 () Bool)

(declare-fun e!391457 () Bool)

(assert (=> b!640813 (= e!391456 e!391457)))

(declare-fun res!278722 () Bool)

(assert (=> b!640813 (=> (not res!278722) (not e!391457))))

(assert (=> b!640813 (= res!278722 (dynLambda!3752 lambda!18945 (h!12270 lt!274712)))))

(declare-fun b!640814 () Bool)

(assert (=> b!640814 (= e!391457 (forall!1760 (t!84893 lt!274712) lambda!18945))))

(assert (= (and d!223191 (not res!278721)) b!640813))

(assert (= (and b!640813 res!278722) b!640814))

(declare-fun b_lambda!25265 () Bool)

(assert (=> (not b_lambda!25265) (not b!640813)))

(declare-fun m!912855 () Bool)

(assert (=> b!640813 m!912855))

(declare-fun m!912857 () Bool)

(assert (=> b!640814 m!912857))

(assert (=> d!223117 d!223191))

(declare-fun d!223193 () Bool)

(declare-fun res!278723 () Bool)

(declare-fun e!391458 () Bool)

(assert (=> d!223193 (=> res!278723 e!391458)))

(assert (=> d!223193 (= res!278723 ((_ is Nil!6869) lt!274712))))

(assert (=> d!223193 (= (forall!1760 lt!274712 lambda!18944) e!391458)))

(declare-fun b!640815 () Bool)

(declare-fun e!391459 () Bool)

(assert (=> b!640815 (= e!391458 e!391459)))

(declare-fun res!278724 () Bool)

(assert (=> b!640815 (=> (not res!278724) (not e!391459))))

(assert (=> b!640815 (= res!278724 (dynLambda!3752 lambda!18944 (h!12270 lt!274712)))))

(declare-fun b!640816 () Bool)

(assert (=> b!640816 (= e!391459 (forall!1760 (t!84893 lt!274712) lambda!18944))))

(assert (= (and d!223193 (not res!278723)) b!640815))

(assert (= (and b!640815 res!278724) b!640816))

(declare-fun b_lambda!25267 () Bool)

(assert (=> (not b_lambda!25267) (not b!640815)))

(declare-fun m!912859 () Bool)

(assert (=> b!640815 m!912859))

(declare-fun m!912861 () Bool)

(assert (=> b!640816 m!912861))

(assert (=> d!223117 d!223193))

(declare-fun bs!78316 () Bool)

(declare-fun d!223195 () Bool)

(assert (= bs!78316 (and d!223195 d!223165)))

(declare-fun lambda!18975 () Int)

(assert (=> bs!78316 (= lambda!18975 lambda!18955)))

(declare-fun bs!78317 () Bool)

(assert (= bs!78317 (and d!223195 d!223159)))

(assert (=> bs!78317 (= lambda!18975 lambda!18954)))

(declare-fun bs!78318 () Bool)

(assert (= bs!78318 (and d!223195 d!223189)))

(assert (=> bs!78318 (= lambda!18975 lambda!18974)))

(declare-fun bs!78319 () Bool)

(assert (= bs!78319 (and d!223195 d!223169)))

(assert (=> bs!78319 (= lambda!18975 lambda!18959)))

(declare-fun bs!78320 () Bool)

(assert (= bs!78320 (and d!223195 d!223181)))

(assert (=> bs!78320 (= lambda!18975 lambda!18973)))

(assert (=> d!223195 (= (inv!8707 setElem!2955) (forall!1763 (exprs!699 setElem!2955) lambda!18975))))

(declare-fun bs!78321 () Bool)

(assert (= bs!78321 d!223195))

(declare-fun m!912863 () Bool)

(assert (=> bs!78321 m!912863))

(assert (=> setNonEmpty!2955 d!223195))

(assert (=> d!223139 d!223157))

(declare-fun d!223197 () Bool)

(declare-fun lt!275136 () Bool)

(assert (=> d!223197 (= lt!275136 (forall!1758 (list!2910 lt!274867) lambda!18933))))

(assert (=> d!223197 (= lt!275136 (forall!1759 (c!117094 lt!274867) lambda!18933))))

(assert (=> d!223197 (= (forall!1757 lt!274867 lambda!18933) lt!275136)))

(declare-fun bs!78322 () Bool)

(assert (= bs!78322 d!223197))

(declare-fun m!912865 () Bool)

(assert (=> bs!78322 m!912865))

(assert (=> bs!78322 m!912865))

(declare-fun m!912867 () Bool)

(assert (=> bs!78322 m!912867))

(declare-fun m!912869 () Bool)

(assert (=> bs!78322 m!912869))

(assert (=> d!223107 d!223197))

(declare-fun d!223199 () Bool)

(declare-fun lt!275139 () Int)

(declare-fun size!5423 (List!6885) Int)

(assert (=> d!223199 (= lt!275139 (size!5423 (list!2913 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))

(declare-fun size!5424 (Conc!2321) Int)

(assert (=> d!223199 (= lt!275139 (size!5424 (c!117095 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))

(assert (=> d!223199 (= (size!5418 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))) lt!275139)))

(declare-fun bs!78323 () Bool)

(assert (= bs!78323 d!223199))

(assert (=> bs!78323 m!912241))

(declare-fun m!912871 () Bool)

(assert (=> bs!78323 m!912871))

(assert (=> bs!78323 m!912871))

(declare-fun m!912873 () Bool)

(assert (=> bs!78323 m!912873))

(declare-fun m!912875 () Bool)

(assert (=> bs!78323 m!912875))

(assert (=> d!223107 d!223199))

(assert (=> d!223107 d!223139))

(declare-fun bs!78324 () Bool)

(declare-fun d!223201 () Bool)

(assert (= bs!78324 (and d!223201 d!223165)))

(declare-fun lambda!18976 () Int)

(assert (=> bs!78324 (= lambda!18976 lambda!18955)))

(declare-fun bs!78325 () Bool)

(assert (= bs!78325 (and d!223201 d!223189)))

(assert (=> bs!78325 (= lambda!18976 lambda!18974)))

(declare-fun bs!78326 () Bool)

(assert (= bs!78326 (and d!223201 d!223169)))

(assert (=> bs!78326 (= lambda!18976 lambda!18959)))

(declare-fun bs!78327 () Bool)

(assert (= bs!78327 (and d!223201 d!223181)))

(assert (=> bs!78327 (= lambda!18976 lambda!18973)))

(declare-fun bs!78328 () Bool)

(assert (= bs!78328 (and d!223201 d!223159)))

(assert (=> bs!78328 (= lambda!18976 lambda!18954)))

(declare-fun bs!78329 () Bool)

(assert (= bs!78329 (and d!223201 d!223195)))

(assert (=> bs!78329 (= lambda!18976 lambda!18975)))

(assert (=> d!223201 (= (inv!8707 setElem!2958) (forall!1763 (exprs!699 setElem!2958) lambda!18976))))

(declare-fun bs!78330 () Bool)

(assert (= bs!78330 d!223201))

(declare-fun m!912877 () Bool)

(assert (=> bs!78330 m!912877))

(assert (=> setNonEmpty!2958 d!223201))

(declare-fun b!640829 () Bool)

(declare-fun e!391464 () Bool)

(declare-fun e!391465 () Bool)

(assert (=> b!640829 (= e!391464 e!391465)))

(declare-fun res!278737 () Bool)

(assert (=> b!640829 (=> (not res!278737) (not e!391465))))

(declare-fun height!282 (Conc!2320) Int)

(assert (=> b!640829 (= res!278737 (<= (- 1) (- (height!282 (left!5466 (map!1504 (c!117093 lt!274704) lambda!18869))) (height!282 (right!5796 (map!1504 (c!117093 lt!274704) lambda!18869))))))))

(declare-fun b!640830 () Bool)

(declare-fun isEmpty!4702 (Conc!2320) Bool)

(assert (=> b!640830 (= e!391465 (not (isEmpty!4702 (right!5796 (map!1504 (c!117093 lt!274704) lambda!18869)))))))

(declare-fun b!640831 () Bool)

(declare-fun res!278741 () Bool)

(assert (=> b!640831 (=> (not res!278741) (not e!391465))))

(assert (=> b!640831 (= res!278741 (not (isEmpty!4702 (left!5466 (map!1504 (c!117093 lt!274704) lambda!18869)))))))

(declare-fun b!640832 () Bool)

(declare-fun res!278740 () Bool)

(assert (=> b!640832 (=> (not res!278740) (not e!391465))))

(assert (=> b!640832 (= res!278740 (isBalanced!612 (left!5466 (map!1504 (c!117093 lt!274704) lambda!18869))))))

(declare-fun d!223203 () Bool)

(declare-fun res!278742 () Bool)

(assert (=> d!223203 (=> res!278742 e!391464)))

(assert (=> d!223203 (= res!278742 (not ((_ is Node!2320) (map!1504 (c!117093 lt!274704) lambda!18869))))))

(assert (=> d!223203 (= (isBalanced!612 (map!1504 (c!117093 lt!274704) lambda!18869)) e!391464)))

(declare-fun b!640833 () Bool)

(declare-fun res!278739 () Bool)

(assert (=> b!640833 (=> (not res!278739) (not e!391465))))

(assert (=> b!640833 (= res!278739 (isBalanced!612 (right!5796 (map!1504 (c!117093 lt!274704) lambda!18869))))))

(declare-fun b!640834 () Bool)

(declare-fun res!278738 () Bool)

(assert (=> b!640834 (=> (not res!278738) (not e!391465))))

(assert (=> b!640834 (= res!278738 (<= (- (height!282 (left!5466 (map!1504 (c!117093 lt!274704) lambda!18869))) (height!282 (right!5796 (map!1504 (c!117093 lt!274704) lambda!18869)))) 1))))

(assert (= (and d!223203 (not res!278742)) b!640829))

(assert (= (and b!640829 res!278737) b!640834))

(assert (= (and b!640834 res!278738) b!640832))

(assert (= (and b!640832 res!278740) b!640833))

(assert (= (and b!640833 res!278739) b!640831))

(assert (= (and b!640831 res!278741) b!640830))

(declare-fun m!912879 () Bool)

(assert (=> b!640829 m!912879))

(declare-fun m!912881 () Bool)

(assert (=> b!640829 m!912881))

(declare-fun m!912883 () Bool)

(assert (=> b!640830 m!912883))

(declare-fun m!912885 () Bool)

(assert (=> b!640833 m!912885))

(assert (=> b!640834 m!912879))

(assert (=> b!640834 m!912881))

(declare-fun m!912887 () Bool)

(assert (=> b!640831 m!912887))

(declare-fun m!912889 () Bool)

(assert (=> b!640832 m!912889))

(assert (=> b!640584 d!223203))

(declare-fun b!640845 () Bool)

(declare-fun e!391472 () Bool)

(declare-fun lt!275145 () Conc!2320)

(assert (=> b!640845 (= e!391472 (isBalanced!612 lt!275145))))

(declare-fun b!640846 () Bool)

(declare-fun e!391473 () Conc!2320)

(declare-fun e!391474 () Conc!2320)

(assert (=> b!640846 (= e!391473 e!391474)))

(declare-fun c!117166 () Bool)

(assert (=> b!640846 (= c!117166 ((_ is Leaf!3524) (c!117093 lt!274704)))))

(declare-fun b!640847 () Bool)

(declare-fun map!1506 (IArray!4639 Int) IArray!4641)

(assert (=> b!640847 (= e!391474 (Leaf!3525 (map!1506 (xs!4960 (c!117093 lt!274704)) lambda!18869) (csize!4869 (c!117093 lt!274704))))))

(declare-fun b!640848 () Bool)

(assert (=> b!640848 (= e!391473 Empty!2320)))

(declare-fun d!223205 () Bool)

(assert (=> d!223205 e!391472))

(declare-fun res!278745 () Bool)

(assert (=> d!223205 (=> (not res!278745) (not e!391472))))

(assert (=> d!223205 (= res!278745 (= (list!2912 lt!275145) (map!1502 (list!2911 (c!117093 lt!274704)) lambda!18869)))))

(assert (=> d!223205 (= lt!275145 e!391473)))

(declare-fun c!117167 () Bool)

(assert (=> d!223205 (= c!117167 ((_ is Empty!2319) (c!117093 lt!274704)))))

(assert (=> d!223205 (isBalanced!613 (c!117093 lt!274704))))

(assert (=> d!223205 (= (map!1504 (c!117093 lt!274704) lambda!18869) lt!275145)))

(declare-fun b!640849 () Bool)

(declare-fun lt!275144 () Unit!11924)

(declare-fun lemmaMapConcat!9 (List!6883 List!6883 Int) Unit!11924)

(assert (=> b!640849 (= lt!275144 (lemmaMapConcat!9 (list!2911 (left!5465 (c!117093 lt!274704))) (list!2911 (right!5795 (c!117093 lt!274704))) lambda!18869))))

(assert (=> b!640849 (= e!391474 (Node!2320 (map!1504 (left!5465 (c!117093 lt!274704)) lambda!18869) (map!1504 (right!5795 (c!117093 lt!274704)) lambda!18869) (csize!4868 (c!117093 lt!274704)) (cheight!2530 (c!117093 lt!274704))))))

(assert (= (and d!223205 c!117167) b!640848))

(assert (= (and d!223205 (not c!117167)) b!640846))

(assert (= (and b!640846 c!117166) b!640847))

(assert (= (and b!640846 (not c!117166)) b!640849))

(assert (= (and d!223205 res!278745) b!640845))

(declare-fun m!912891 () Bool)

(assert (=> b!640845 m!912891))

(declare-fun m!912893 () Bool)

(assert (=> b!640847 m!912893))

(declare-fun m!912895 () Bool)

(assert (=> d!223205 m!912895))

(assert (=> d!223205 m!912309))

(assert (=> d!223205 m!912309))

(declare-fun m!912897 () Bool)

(assert (=> d!223205 m!912897))

(declare-fun m!912899 () Bool)

(assert (=> d!223205 m!912899))

(assert (=> b!640849 m!912671))

(assert (=> b!640849 m!912673))

(declare-fun m!912901 () Bool)

(assert (=> b!640849 m!912901))

(declare-fun m!912903 () Bool)

(assert (=> b!640849 m!912903))

(assert (=> b!640849 m!912673))

(assert (=> b!640849 m!912671))

(declare-fun m!912905 () Bool)

(assert (=> b!640849 m!912905))

(assert (=> b!640584 d!223205))

(declare-fun bs!78331 () Bool)

(declare-fun d!223207 () Bool)

(assert (= bs!78331 (and d!223207 d!223165)))

(declare-fun lambda!18977 () Int)

(assert (=> bs!78331 (= lambda!18977 lambda!18955)))

(declare-fun bs!78332 () Bool)

(assert (= bs!78332 (and d!223207 d!223189)))

(assert (=> bs!78332 (= lambda!18977 lambda!18974)))

(declare-fun bs!78333 () Bool)

(assert (= bs!78333 (and d!223207 d!223169)))

(assert (=> bs!78333 (= lambda!18977 lambda!18959)))

(declare-fun bs!78334 () Bool)

(assert (= bs!78334 (and d!223207 d!223201)))

(assert (=> bs!78334 (= lambda!18977 lambda!18976)))

(declare-fun bs!78335 () Bool)

(assert (= bs!78335 (and d!223207 d!223181)))

(assert (=> bs!78335 (= lambda!18977 lambda!18973)))

(declare-fun bs!78336 () Bool)

(assert (= bs!78336 (and d!223207 d!223159)))

(assert (=> bs!78336 (= lambda!18977 lambda!18954)))

(declare-fun bs!78337 () Bool)

(assert (= bs!78337 (and d!223207 d!223195)))

(assert (=> bs!78337 (= lambda!18977 lambda!18975)))

(assert (=> d!223207 (= (inv!8707 (_2!4050 (_1!4051 (h!12269 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))))) (forall!1763 (exprs!699 (_2!4050 (_1!4051 (h!12269 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))))) lambda!18977))))

(declare-fun bs!78338 () Bool)

(assert (= bs!78338 d!223207))

(declare-fun m!912907 () Bool)

(assert (=> bs!78338 m!912907))

(assert (=> b!640680 d!223207))

(declare-fun d!223209 () Bool)

(declare-fun res!278750 () Bool)

(declare-fun e!391477 () Bool)

(assert (=> d!223209 (=> (not res!278750) (not e!391477))))

(declare-fun valid!591 (MutableMap!637) Bool)

(assert (=> d!223209 (= res!278750 (valid!591 (cache!1024 cacheUp!351)))))

(assert (=> d!223209 (= (validCacheMapUp!45 (cache!1024 cacheUp!351)) e!391477)))

(declare-fun b!640854 () Bool)

(declare-fun res!278751 () Bool)

(assert (=> b!640854 (=> (not res!278751) (not e!391477))))

(declare-fun invariantList!115 (List!6881) Bool)

(declare-datatypes ((ListMap!279 0))(
  ( (ListMap!280 (toList!477 List!6881)) )
))
(declare-fun map!1507 (MutableMap!637) ListMap!279)

(assert (=> b!640854 (= res!278751 (invariantList!115 (toList!477 (map!1507 (cache!1024 cacheUp!351)))))))

(declare-fun b!640855 () Bool)

(declare-fun lambda!18980 () Int)

(declare-fun forall!1767 (List!6881 Int) Bool)

(assert (=> b!640855 (= e!391477 (forall!1767 (toList!477 (map!1507 (cache!1024 cacheUp!351))) lambda!18980))))

(assert (= (and d!223209 res!278750) b!640854))

(assert (= (and b!640854 res!278751) b!640855))

(declare-fun m!912910 () Bool)

(assert (=> d!223209 m!912910))

(declare-fun m!912912 () Bool)

(assert (=> b!640854 m!912912))

(declare-fun m!912914 () Bool)

(assert (=> b!640854 m!912914))

(assert (=> b!640855 m!912912))

(declare-fun m!912916 () Bool)

(assert (=> b!640855 m!912916))

(assert (=> b!640658 d!223209))

(declare-fun bs!78339 () Bool)

(declare-fun d!223211 () Bool)

(assert (= bs!78339 (and d!223211 d!223165)))

(declare-fun lambda!18981 () Int)

(assert (=> bs!78339 (= lambda!18981 lambda!18955)))

(declare-fun bs!78340 () Bool)

(assert (= bs!78340 (and d!223211 d!223189)))

(assert (=> bs!78340 (= lambda!18981 lambda!18974)))

(declare-fun bs!78341 () Bool)

(assert (= bs!78341 (and d!223211 d!223207)))

(assert (=> bs!78341 (= lambda!18981 lambda!18977)))

(declare-fun bs!78342 () Bool)

(assert (= bs!78342 (and d!223211 d!223169)))

(assert (=> bs!78342 (= lambda!18981 lambda!18959)))

(declare-fun bs!78343 () Bool)

(assert (= bs!78343 (and d!223211 d!223201)))

(assert (=> bs!78343 (= lambda!18981 lambda!18976)))

(declare-fun bs!78344 () Bool)

(assert (= bs!78344 (and d!223211 d!223181)))

(assert (=> bs!78344 (= lambda!18981 lambda!18973)))

(declare-fun bs!78345 () Bool)

(assert (= bs!78345 (and d!223211 d!223159)))

(assert (=> bs!78345 (= lambda!18981 lambda!18954)))

(declare-fun bs!78346 () Bool)

(assert (= bs!78346 (and d!223211 d!223195)))

(assert (=> bs!78346 (= lambda!18981 lambda!18975)))

(assert (=> d!223211 (= (inv!8707 (_2!4050 (_1!4051 (h!12269 mapValue!2627)))) (forall!1763 (exprs!699 (_2!4050 (_1!4051 (h!12269 mapValue!2627)))) lambda!18981))))

(declare-fun bs!78347 () Bool)

(assert (= bs!78347 d!223211))

(declare-fun m!912918 () Bool)

(assert (=> bs!78347 m!912918))

(assert (=> b!640712 d!223211))

(declare-fun d!223213 () Bool)

(declare-fun res!278756 () Bool)

(declare-fun e!391482 () Bool)

(assert (=> d!223213 (=> res!278756 e!391482)))

(assert (=> d!223213 (= res!278756 ((_ is Nil!6870) (map!1502 lt!274712 lambda!18869)))))

(assert (=> d!223213 (= (forall!1758 (map!1502 lt!274712 lambda!18869) lambda!18870) e!391482)))

(declare-fun b!640860 () Bool)

(declare-fun e!391483 () Bool)

(assert (=> b!640860 (= e!391482 e!391483)))

(declare-fun res!278757 () Bool)

(assert (=> b!640860 (=> (not res!278757) (not e!391483))))

(declare-fun dynLambda!3753 (Int PrintableTokens!136) Bool)

(assert (=> b!640860 (= res!278757 (dynLambda!3753 lambda!18870 (h!12271 (map!1502 lt!274712 lambda!18869))))))

(declare-fun b!640861 () Bool)

(assert (=> b!640861 (= e!391483 (forall!1758 (t!84894 (map!1502 lt!274712 lambda!18869)) lambda!18870))))

(assert (= (and d!223213 (not res!278756)) b!640860))

(assert (= (and b!640860 res!278757) b!640861))

(declare-fun b_lambda!25269 () Bool)

(assert (=> (not b_lambda!25269) (not b!640860)))

(declare-fun m!912920 () Bool)

(assert (=> b!640860 m!912920))

(declare-fun m!912922 () Bool)

(assert (=> b!640861 m!912922))

(assert (=> d!223095 d!223213))

(declare-fun d!223215 () Bool)

(declare-fun lt!275148 () List!6884)

(declare-fun size!5425 (List!6884) Int)

(assert (=> d!223215 (= (size!5425 lt!275148) (size!5416 lt!274712))))

(declare-fun e!391486 () List!6884)

(assert (=> d!223215 (= lt!275148 e!391486)))

(declare-fun c!117170 () Bool)

(assert (=> d!223215 (= c!117170 ((_ is Nil!6869) lt!274712))))

(assert (=> d!223215 (= (map!1502 lt!274712 lambda!18869) lt!275148)))

(declare-fun b!640866 () Bool)

(assert (=> b!640866 (= e!391486 Nil!6870)))

(declare-fun b!640867 () Bool)

(declare-fun $colon$colon!52 (List!6884 PrintableTokens!136) List!6884)

(declare-fun dynLambda!3754 (Int tuple2!7434) PrintableTokens!136)

(assert (=> b!640867 (= e!391486 ($colon$colon!52 (map!1502 (t!84893 lt!274712) lambda!18869) (dynLambda!3754 lambda!18869 (h!12270 lt!274712))))))

(assert (= (and d!223215 c!117170) b!640866))

(assert (= (and d!223215 (not c!117170)) b!640867))

(declare-fun b_lambda!25271 () Bool)

(assert (=> (not b_lambda!25271) (not b!640867)))

(declare-fun m!912924 () Bool)

(assert (=> d!223215 m!912924))

(declare-fun m!912926 () Bool)

(assert (=> d!223215 m!912926))

(declare-fun m!912928 () Bool)

(assert (=> b!640867 m!912928))

(declare-fun m!912930 () Bool)

(assert (=> b!640867 m!912930))

(assert (=> b!640867 m!912928))

(assert (=> b!640867 m!912930))

(declare-fun m!912932 () Bool)

(assert (=> b!640867 m!912932))

(assert (=> d!223095 d!223215))

(declare-fun d!223217 () Bool)

(assert (=> d!223217 (forall!1758 (map!1502 lt!274712 lambda!18869) lambda!18870)))

(assert (=> d!223217 true))

(declare-fun _$5!142 () Unit!11924)

(assert (=> d!223217 (= (choose!4632 lt!274712 lambda!18869 lambda!18870) _$5!142)))

(declare-fun bs!78348 () Bool)

(assert (= bs!78348 d!223217))

(assert (=> bs!78348 m!912293))

(assert (=> bs!78348 m!912293))

(assert (=> bs!78348 m!912295))

(assert (=> d!223095 d!223217))

(declare-fun d!223219 () Bool)

(declare-fun res!278758 () Bool)

(declare-fun e!391487 () Bool)

(assert (=> d!223219 (=> res!278758 e!391487)))

(assert (=> d!223219 (= res!278758 ((_ is Nil!6869) lt!274712))))

(assert (=> d!223219 (= (forall!1760 lt!274712 lambda!18873) e!391487)))

(declare-fun b!640868 () Bool)

(declare-fun e!391488 () Bool)

(assert (=> b!640868 (= e!391487 e!391488)))

(declare-fun res!278759 () Bool)

(assert (=> b!640868 (=> (not res!278759) (not e!391488))))

(assert (=> b!640868 (= res!278759 (dynLambda!3752 lambda!18873 (h!12270 lt!274712)))))

(declare-fun b!640869 () Bool)

(assert (=> b!640869 (= e!391488 (forall!1760 (t!84893 lt!274712) lambda!18873))))

(assert (= (and d!223219 (not res!278758)) b!640868))

(assert (= (and b!640868 res!278759) b!640869))

(declare-fun b_lambda!25273 () Bool)

(assert (=> (not b_lambda!25273) (not b!640868)))

(declare-fun m!912934 () Bool)

(assert (=> b!640868 m!912934))

(declare-fun m!912936 () Bool)

(assert (=> b!640869 m!912936))

(assert (=> d!223095 d!223219))

(assert (=> d!223131 d!223137))

(declare-fun bs!78349 () Bool)

(declare-fun d!223221 () Bool)

(assert (= bs!78349 (and d!223221 d!223165)))

(declare-fun lambda!18982 () Int)

(assert (=> bs!78349 (= lambda!18982 lambda!18955)))

(declare-fun bs!78350 () Bool)

(assert (= bs!78350 (and d!223221 d!223189)))

(assert (=> bs!78350 (= lambda!18982 lambda!18974)))

(declare-fun bs!78351 () Bool)

(assert (= bs!78351 (and d!223221 d!223207)))

(assert (=> bs!78351 (= lambda!18982 lambda!18977)))

(declare-fun bs!78352 () Bool)

(assert (= bs!78352 (and d!223221 d!223169)))

(assert (=> bs!78352 (= lambda!18982 lambda!18959)))

(declare-fun bs!78353 () Bool)

(assert (= bs!78353 (and d!223221 d!223201)))

(assert (=> bs!78353 (= lambda!18982 lambda!18976)))

(declare-fun bs!78354 () Bool)

(assert (= bs!78354 (and d!223221 d!223181)))

(assert (=> bs!78354 (= lambda!18982 lambda!18973)))

(declare-fun bs!78355 () Bool)

(assert (= bs!78355 (and d!223221 d!223211)))

(assert (=> bs!78355 (= lambda!18982 lambda!18981)))

(declare-fun bs!78356 () Bool)

(assert (= bs!78356 (and d!223221 d!223159)))

(assert (=> bs!78356 (= lambda!18982 lambda!18954)))

(declare-fun bs!78357 () Bool)

(assert (= bs!78357 (and d!223221 d!223195)))

(assert (=> bs!78357 (= lambda!18982 lambda!18975)))

(assert (=> d!223221 (= (inv!8707 setElem!2949) (forall!1763 (exprs!699 setElem!2949) lambda!18982))))

(declare-fun bs!78358 () Bool)

(assert (= bs!78358 d!223221))

(declare-fun m!912938 () Bool)

(assert (=> bs!78358 m!912938))

(assert (=> setNonEmpty!2949 d!223221))

(declare-fun bs!78359 () Bool)

(declare-fun d!223223 () Bool)

(assert (= bs!78359 (and d!223223 d!223165)))

(declare-fun lambda!18983 () Int)

(assert (=> bs!78359 (= lambda!18983 lambda!18955)))

(declare-fun bs!78360 () Bool)

(assert (= bs!78360 (and d!223223 d!223189)))

(assert (=> bs!78360 (= lambda!18983 lambda!18974)))

(declare-fun bs!78361 () Bool)

(assert (= bs!78361 (and d!223223 d!223221)))

(assert (=> bs!78361 (= lambda!18983 lambda!18982)))

(declare-fun bs!78362 () Bool)

(assert (= bs!78362 (and d!223223 d!223207)))

(assert (=> bs!78362 (= lambda!18983 lambda!18977)))

(declare-fun bs!78363 () Bool)

(assert (= bs!78363 (and d!223223 d!223169)))

(assert (=> bs!78363 (= lambda!18983 lambda!18959)))

(declare-fun bs!78364 () Bool)

(assert (= bs!78364 (and d!223223 d!223201)))

(assert (=> bs!78364 (= lambda!18983 lambda!18976)))

(declare-fun bs!78365 () Bool)

(assert (= bs!78365 (and d!223223 d!223181)))

(assert (=> bs!78365 (= lambda!18983 lambda!18973)))

(declare-fun bs!78366 () Bool)

(assert (= bs!78366 (and d!223223 d!223211)))

(assert (=> bs!78366 (= lambda!18983 lambda!18981)))

(declare-fun bs!78367 () Bool)

(assert (= bs!78367 (and d!223223 d!223159)))

(assert (=> bs!78367 (= lambda!18983 lambda!18954)))

(declare-fun bs!78368 () Bool)

(assert (= bs!78368 (and d!223223 d!223195)))

(assert (=> bs!78368 (= lambda!18983 lambda!18975)))

(assert (=> d!223223 (= (inv!8707 setElem!2957) (forall!1763 (exprs!699 setElem!2957) lambda!18983))))

(declare-fun bs!78369 () Bool)

(assert (= bs!78369 d!223223))

(declare-fun m!912940 () Bool)

(assert (=> bs!78369 m!912940))

(assert (=> setNonEmpty!2957 d!223223))

(declare-fun d!223225 () Bool)

(declare-fun lt!275151 () Bool)

(declare-fun forall!1768 (List!6885 Int) Bool)

(assert (=> d!223225 (= lt!275151 (forall!1768 (list!2913 lt!274903) lambda!18951))))

(declare-fun forall!1769 (Conc!2321 Int) Bool)

(assert (=> d!223225 (= lt!275151 (forall!1769 (c!117095 lt!274903) lambda!18951))))

(assert (=> d!223225 (= (forall!1762 lt!274903 lambda!18951) lt!275151)))

(declare-fun bs!78370 () Bool)

(assert (= bs!78370 d!223225))

(declare-fun m!912942 () Bool)

(assert (=> bs!78370 m!912942))

(assert (=> bs!78370 m!912942))

(declare-fun m!912944 () Bool)

(assert (=> bs!78370 m!912944))

(declare-fun m!912946 () Bool)

(assert (=> bs!78370 m!912946))

(assert (=> d!223121 d!223225))

(assert (=> d!223121 d!223157))

(declare-fun d!223227 () Bool)

(declare-fun res!278760 () Bool)

(declare-fun e!391489 () Bool)

(assert (=> d!223227 (=> (not res!278760) (not e!391489))))

(assert (=> d!223227 (= res!278760 (rulesValid!507 Lexer!1254 (rules!8210 printableTokens!2)))))

(assert (=> d!223227 (= (rulesInvariant!1191 Lexer!1254 (rules!8210 printableTokens!2)) e!391489)))

(declare-fun b!640870 () Bool)

(assert (=> b!640870 (= e!391489 (noDuplicateTag!507 Lexer!1254 (rules!8210 printableTokens!2) Nil!6872))))

(assert (= (and d!223227 res!278760) b!640870))

(declare-fun m!912948 () Bool)

(assert (=> d!223227 m!912948))

(declare-fun m!912950 () Bool)

(assert (=> b!640870 m!912950))

(assert (=> b!640650 d!223227))

(assert (=> d!223105 d!223137))

(declare-fun bs!78371 () Bool)

(declare-fun d!223229 () Bool)

(assert (= bs!78371 (and d!223229 d!223175)))

(declare-fun lambda!18986 () Int)

(assert (=> bs!78371 (= (= (rules!109 JsonLexer!197) (rules!8210 printableTokens!2)) (= lambda!18986 lambda!18972))))

(declare-fun b!640887 () Bool)

(declare-fun e!391501 () Bool)

(assert (=> b!640887 (= e!391501 true)))

(declare-fun b!640886 () Bool)

(declare-fun e!391500 () Bool)

(assert (=> b!640886 (= e!391500 e!391501)))

(declare-fun b!640885 () Bool)

(declare-fun e!391499 () Bool)

(assert (=> b!640885 (= e!391499 e!391500)))

(assert (=> d!223229 e!391499))

(assert (= b!640886 b!640887))

(assert (= b!640885 b!640886))

(assert (= (and d!223229 ((_ is Cons!6865) (rules!109 JsonLexer!197))) b!640885))

(declare-fun order!5173 () Int)

(declare-fun order!5175 () Int)

(declare-fun dynLambda!3755 (Int Int) Int)

(declare-fun dynLambda!3756 (Int Int) Int)

(assert (=> b!640887 (< (dynLambda!3755 order!5173 (toValue!2319 (transformation!1378 (h!12266 (rules!109 JsonLexer!197))))) (dynLambda!3756 order!5175 lambda!18986))))

(declare-fun order!5177 () Int)

(declare-fun dynLambda!3757 (Int Int) Int)

(assert (=> b!640887 (< (dynLambda!3757 order!5177 (toChars!2178 (transformation!1378 (h!12266 (rules!109 JsonLexer!197))))) (dynLambda!3756 order!5175 lambda!18986))))

(assert (=> d!223229 true))

(declare-fun lt!275159 () tuple3!570)

(assert (=> d!223229 (= (_1!4054 lt!275159) (forall!1766 lt!274851 lambda!18986))))

(declare-fun e!391492 () tuple3!570)

(assert (=> d!223229 (= lt!275159 e!391492)))

(declare-fun c!117173 () Bool)

(declare-fun isEmpty!4703 (BalanceConc!4648) Bool)

(assert (=> d!223229 (= c!117173 (isEmpty!4703 lt!274851))))

(assert (=> d!223229 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223229 (= (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) lt!274851 cacheUp!351 cacheDown!364) lt!275159)))

(declare-fun b!640875 () Bool)

(assert (=> b!640875 (= e!391492 (tuple3!571 true cacheUp!351 cacheDown!364))))

(declare-fun b!640876 () Bool)

(declare-fun lt!275158 () tuple3!570)

(declare-fun lt!275160 () tuple3!570)

(assert (=> b!640876 (= e!391492 (tuple3!571 (and (_1!4054 lt!275158) (_1!4054 lt!275160)) (_2!4054 lt!275160) (_3!336 lt!275160)))))

(declare-fun rulesProduceIndividualTokenMem!4 (LexerInterface!1256 List!6879 Token!2478 CacheUp!298 CacheDown!298) tuple3!570)

(declare-fun head!1350 (BalanceConc!4648) Token!2478)

(assert (=> b!640876 (= lt!275158 (rulesProduceIndividualTokenMem!4 Lexer!1254 (rules!109 JsonLexer!197) (head!1350 lt!274851) cacheUp!351 cacheDown!364))))

(declare-fun tail!906 (BalanceConc!4648) BalanceConc!4648)

(assert (=> b!640876 (= lt!275160 (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) (tail!906 lt!274851) (_2!4054 lt!275158) (_3!336 lt!275158)))))

(assert (= (and d!223229 c!117173) b!640875))

(assert (= (and d!223229 (not c!117173)) b!640876))

(declare-fun m!912952 () Bool)

(assert (=> d!223229 m!912952))

(declare-fun m!912954 () Bool)

(assert (=> d!223229 m!912954))

(assert (=> d!223229 m!912257))

(assert (=> d!223229 m!912325))

(declare-fun m!912956 () Bool)

(assert (=> b!640876 m!912956))

(assert (=> b!640876 m!912257))

(assert (=> b!640876 m!912956))

(declare-fun m!912958 () Bool)

(assert (=> b!640876 m!912958))

(declare-fun m!912960 () Bool)

(assert (=> b!640876 m!912960))

(assert (=> b!640876 m!912257))

(assert (=> b!640876 m!912960))

(declare-fun m!912962 () Bool)

(assert (=> b!640876 m!912962))

(assert (=> d!223105 d!223229))

(declare-fun d!223231 () Bool)

(assert (=> d!223231 (= (isEmpty!4699 (rules!109 JsonLexer!197)) ((_ is Nil!6865) (rules!109 JsonLexer!197)))))

(assert (=> d!223105 d!223231))

(declare-fun d!223233 () Bool)

(declare-fun e!391504 () Bool)

(assert (=> d!223233 e!391504))

(declare-fun res!278763 () Bool)

(assert (=> d!223233 (=> (not res!278763) (not e!391504))))

(declare-fun lt!275163 () BalanceConc!4648)

(assert (=> d!223233 (= res!278763 (= (list!2914 lt!275163) (Cons!6864 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863)) Nil!6864)))))

(declare-fun singleton!211 (Token!2478) BalanceConc!4648)

(assert (=> d!223233 (= lt!275163 (singleton!211 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863))))))

(assert (=> d!223233 (= (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863))) lt!275163)))

(declare-fun b!640892 () Bool)

(assert (=> b!640892 (= e!391504 (isBalanced!614 (c!117092 lt!275163)))))

(assert (= (and d!223233 res!278763) b!640892))

(declare-fun m!912964 () Bool)

(assert (=> d!223233 m!912964))

(declare-fun m!912966 () Bool)

(assert (=> d!223233 m!912966))

(declare-fun m!912968 () Bool)

(assert (=> b!640892 m!912968))

(assert (=> d!223105 d!223233))

(declare-fun d!223235 () Bool)

(declare-fun e!391507 () Bool)

(assert (=> d!223235 e!391507))

(declare-fun res!278766 () Bool)

(assert (=> d!223235 (=> (not res!278766) (not e!391507))))

(declare-fun lt!275166 () BalanceConc!4646)

(declare-fun list!2916 (BalanceConc!4646) List!6877)

(assert (=> d!223235 (= res!278766 (= (list!2916 lt!275166) (Cons!6863 #x000A Nil!6863)))))

(declare-fun singleton!212 ((_ BitVec 16)) BalanceConc!4646)

(assert (=> d!223235 (= lt!275166 (singleton!212 #x000A))))

(assert (=> d!223235 (= (singletonSeq!437 #x000A) lt!275166)))

(declare-fun b!640895 () Bool)

(declare-fun isBalanced!615 (Conc!2317) Bool)

(assert (=> b!640895 (= e!391507 (isBalanced!615 (c!117091 lt!275166)))))

(assert (= (and d!223235 res!278766) b!640895))

(declare-fun m!912970 () Bool)

(assert (=> d!223235 m!912970))

(declare-fun m!912972 () Bool)

(assert (=> d!223235 m!912972))

(declare-fun m!912974 () Bool)

(assert (=> b!640895 m!912974))

(assert (=> d!223105 d!223235))

(declare-fun d!223237 () Bool)

(assert (=> d!223237 (= (isEmpty!4700 (_1!4052 lt!274850)) (not ((_ is Some!1660) (_1!4052 lt!274850))))))

(assert (=> d!223105 d!223237))

(declare-fun d!223239 () Bool)

(assert (=> d!223239 true))

(assert (=> d!223239 true))

(declare-fun lambda!19008 () Int)

(declare-fun b_next!18849 () Bool)

(assert (=> b!640703 (= b_next!18847 (or (and d!223239 (= lambda!19008 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))))) b_next!18849))))

(assert (=> d!223239 true))

(declare-fun b_next!18851 () Bool)

(declare-fun lambda!19009 () Int)

(assert (=> b!640703 (= b_next!18845 (or (and d!223239 (= lambda!19009 (toValue!2319 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))))) b_next!18851))))

(assert (=> d!223239 true))

(declare-fun b!640918 () Bool)

(declare-fun e!391522 () Bool)

(declare-fun x!140374 () BalanceConc!4646)

(declare-fun tp!199196 () Bool)

(declare-fun inv!8710 (Conc!2317) Bool)

(assert (=> b!640918 (= e!391522 (and (inv!8710 (c!117091 x!140374)) tp!199196))))

(declare-fun inst!304 () Bool)

(declare-fun inv!8711 (BalanceConc!4646) Bool)

(declare-fun toCharacters!4 (KeywordValueInjection!42 TokenValue!1412) BalanceConc!4646)

(declare-fun toValue!11 (KeywordValueInjection!42 BalanceConc!4646) TokenValue!1412)

(assert (=> d!223239 (= inst!304 (=> (and (inv!8711 x!140374) e!391522) (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140374))))))

(assert (= d!223239 b!640918))

(declare-fun m!912976 () Bool)

(assert (=> b!640918 m!912976))

(declare-fun m!912978 () Bool)

(assert (=> d!223239 m!912978))

(declare-fun m!912980 () Bool)

(assert (=> d!223239 m!912980))

(declare-fun m!912982 () Bool)

(assert (=> d!223239 m!912982))

(declare-fun m!912984 () Bool)

(assert (=> d!223239 m!912984))

(declare-fun m!912986 () Bool)

(assert (=> d!223239 m!912986))

(assert (=> d!223239 m!912980))

(assert (=> d!223239 m!912982))

(declare-fun res!278775 () Bool)

(declare-fun e!391523 () Bool)

(assert (=> d!223239 (=> res!278775 e!391523)))

(declare-fun x!140375 () BalanceConc!4646)

(declare-fun x!140376 () BalanceConc!4646)

(assert (=> d!223239 (= res!278775 (not (= (list!2916 x!140375) (list!2916 x!140376))))))

(declare-fun e!391524 () Bool)

(declare-fun e!391525 () Bool)

(declare-fun inst!305 () Bool)

(assert (=> d!223239 (= inst!305 (=> (and (inv!8711 x!140375) e!391525 (inv!8711 x!140376) e!391524) e!391523))))

(declare-fun b!640919 () Bool)

(assert (=> b!640919 (= e!391523 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 x!140376)))))

(declare-fun b!640920 () Bool)

(declare-fun tp!199197 () Bool)

(assert (=> b!640920 (= e!391525 (and (inv!8710 (c!117091 x!140375)) tp!199197))))

(declare-fun b!640921 () Bool)

(declare-fun tp!199198 () Bool)

(assert (=> b!640921 (= e!391524 (and (inv!8710 (c!117091 x!140376)) tp!199198))))

(assert (= (and d!223239 (not res!278775)) b!640919))

(assert (= d!223239 b!640920))

(assert (= d!223239 b!640921))

(declare-fun m!912988 () Bool)

(assert (=> d!223239 m!912988))

(declare-fun m!912990 () Bool)

(assert (=> d!223239 m!912990))

(declare-fun m!912992 () Bool)

(assert (=> d!223239 m!912992))

(declare-fun m!912994 () Bool)

(assert (=> d!223239 m!912994))

(declare-fun m!912996 () Bool)

(assert (=> b!640919 m!912996))

(declare-fun m!912998 () Bool)

(assert (=> b!640919 m!912998))

(declare-fun m!913000 () Bool)

(assert (=> b!640920 m!913000))

(declare-fun m!913002 () Bool)

(assert (=> b!640921 m!913002))

(declare-fun bs!78372 () Bool)

(declare-fun neg-inst!305 () Bool)

(declare-fun s!23765 () Bool)

(assert (= bs!78372 (and neg-inst!305 s!23765)))

(assert (=> bs!78372 (=> true (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140374)))))

(assert (=> m!912978 m!912980))

(assert (=> m!912978 m!912982))

(assert (=> m!912978 m!912984))

(assert (=> m!912978 s!23765))

(assert (=> m!912980 s!23765))

(declare-fun bs!78373 () Bool)

(assert (= bs!78373 (and neg-inst!305 d!223239)))

(assert (=> bs!78373 (= true inst!304)))

(declare-fun bs!78374 () Bool)

(declare-fun neg-inst!304 () Bool)

(declare-fun s!23767 () Bool)

(assert (= bs!78374 (and neg-inst!304 s!23767)))

(declare-fun res!278776 () Bool)

(declare-fun e!391526 () Bool)

(assert (=> bs!78374 (=> res!278776 e!391526)))

(assert (=> bs!78374 (= res!278776 (not (= (list!2916 lt!275166) (list!2916 lt!275166))))))

(assert (=> bs!78374 (=> true e!391526)))

(declare-fun b!640922 () Bool)

(assert (=> b!640922 (= e!391526 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78374 (not res!278776)) b!640922))

(assert (=> m!912970 s!23767))

(assert (=> m!912970 s!23767))

(declare-fun bs!78375 () Bool)

(declare-fun s!23769 () Bool)

(assert (= bs!78375 (and neg-inst!304 s!23769)))

(declare-fun res!278777 () Bool)

(declare-fun e!391527 () Bool)

(assert (=> bs!78375 (=> res!278777 e!391527)))

(assert (=> bs!78375 (= res!278777 (not (= (list!2916 x!140375) (list!2916 lt!275166))))))

(assert (=> bs!78375 (=> true e!391527)))

(declare-fun b!640923 () Bool)

(assert (=> b!640923 (= e!391527 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78375 (not res!278777)) b!640923))

(declare-fun bs!78376 () Bool)

(assert (= bs!78376 (and m!912996 m!912970)))

(assert (=> bs!78376 m!912988))

(assert (=> bs!78376 m!912970))

(assert (=> bs!78376 s!23769))

(declare-fun bs!78377 () Bool)

(declare-fun s!23771 () Bool)

(assert (= bs!78377 (and neg-inst!304 s!23771)))

(declare-fun res!278778 () Bool)

(declare-fun e!391528 () Bool)

(assert (=> bs!78377 (=> res!278778 e!391528)))

(assert (=> bs!78377 (= res!278778 (not (= (list!2916 x!140375) (list!2916 x!140375))))))

(assert (=> bs!78377 (=> true e!391528)))

(declare-fun b!640924 () Bool)

(assert (=> b!640924 (= e!391528 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78377 (not res!278778)) b!640924))

(assert (=> m!912996 m!912988))

(assert (=> m!912996 m!912988))

(assert (=> m!912996 s!23771))

(declare-fun bs!78378 () Bool)

(declare-fun s!23773 () Bool)

(assert (= bs!78378 (and neg-inst!304 s!23773)))

(declare-fun res!278779 () Bool)

(declare-fun e!391529 () Bool)

(assert (=> bs!78378 (=> res!278779 e!391529)))

(assert (=> bs!78378 (= res!278779 (not (= (list!2916 lt!275166) (list!2916 x!140375))))))

(assert (=> bs!78378 (=> true e!391529)))

(declare-fun b!640925 () Bool)

(assert (=> b!640925 (= e!391529 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78378 (not res!278779)) b!640925))

(assert (=> bs!78376 m!912970))

(assert (=> bs!78376 m!912988))

(assert (=> bs!78376 s!23773))

(assert (=> m!912996 s!23771))

(declare-fun bs!78379 () Bool)

(declare-fun s!23775 () Bool)

(assert (= bs!78379 (and neg-inst!304 s!23775)))

(declare-fun res!278780 () Bool)

(declare-fun e!391530 () Bool)

(assert (=> bs!78379 (=> res!278780 e!391530)))

(assert (=> bs!78379 (= res!278780 (not (= (list!2916 x!140376) (list!2916 lt!275166))))))

(assert (=> bs!78379 (=> true e!391530)))

(declare-fun b!640926 () Bool)

(assert (=> b!640926 (= e!391530 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78379 (not res!278780)) b!640926))

(declare-fun bs!78380 () Bool)

(assert (= bs!78380 (and m!912998 m!912970)))

(assert (=> bs!78380 m!912990))

(assert (=> bs!78380 m!912970))

(assert (=> bs!78380 s!23775))

(declare-fun bs!78381 () Bool)

(declare-fun s!23777 () Bool)

(assert (= bs!78381 (and neg-inst!304 s!23777)))

(declare-fun res!278781 () Bool)

(declare-fun e!391531 () Bool)

(assert (=> bs!78381 (=> res!278781 e!391531)))

(assert (=> bs!78381 (= res!278781 (not (= (list!2916 x!140376) (list!2916 x!140375))))))

(assert (=> bs!78381 (=> true e!391531)))

(declare-fun b!640927 () Bool)

(assert (=> b!640927 (= e!391531 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78381 (not res!278781)) b!640927))

(declare-fun bs!78382 () Bool)

(assert (= bs!78382 (and m!912998 m!912996)))

(assert (=> bs!78382 m!912990))

(assert (=> bs!78382 m!912988))

(assert (=> bs!78382 s!23777))

(declare-fun bs!78383 () Bool)

(declare-fun s!23779 () Bool)

(assert (= bs!78383 (and neg-inst!304 s!23779)))

(declare-fun res!278782 () Bool)

(declare-fun e!391532 () Bool)

(assert (=> bs!78383 (=> res!278782 e!391532)))

(assert (=> bs!78383 (= res!278782 (not (= (list!2916 x!140376) (list!2916 x!140376))))))

(assert (=> bs!78383 (=> true e!391532)))

(declare-fun b!640928 () Bool)

(assert (=> b!640928 (= e!391532 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78383 (not res!278782)) b!640928))

(assert (=> m!912998 m!912990))

(assert (=> m!912998 m!912990))

(assert (=> m!912998 s!23779))

(declare-fun bs!78384 () Bool)

(declare-fun s!23781 () Bool)

(assert (= bs!78384 (and neg-inst!304 s!23781)))

(declare-fun res!278783 () Bool)

(declare-fun e!391533 () Bool)

(assert (=> bs!78384 (=> res!278783 e!391533)))

(assert (=> bs!78384 (= res!278783 (not (= (list!2916 lt!275166) (list!2916 x!140376))))))

(assert (=> bs!78384 (=> true e!391533)))

(declare-fun b!640929 () Bool)

(assert (=> b!640929 (= e!391533 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78384 (not res!278783)) b!640929))

(assert (=> bs!78380 m!912970))

(assert (=> bs!78380 m!912990))

(assert (=> bs!78380 s!23781))

(declare-fun bs!78385 () Bool)

(declare-fun s!23783 () Bool)

(assert (= bs!78385 (and neg-inst!304 s!23783)))

(declare-fun res!278784 () Bool)

(declare-fun e!391534 () Bool)

(assert (=> bs!78385 (=> res!278784 e!391534)))

(assert (=> bs!78385 (= res!278784 (not (= (list!2916 x!140375) (list!2916 x!140376))))))

(assert (=> bs!78385 (=> true e!391534)))

(declare-fun b!640930 () Bool)

(assert (=> b!640930 (= e!391534 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78385 (not res!278784)) b!640930))

(assert (=> bs!78382 m!912988))

(assert (=> bs!78382 m!912990))

(assert (=> bs!78382 s!23783))

(assert (=> m!912998 s!23779))

(declare-fun bs!78386 () Bool)

(assert (= bs!78386 (and m!912988 m!912970)))

(assert (=> bs!78386 s!23769))

(declare-fun bs!78387 () Bool)

(assert (= bs!78387 (and m!912988 m!912998)))

(assert (=> bs!78387 s!23783))

(declare-fun bs!78388 () Bool)

(assert (= bs!78388 (and m!912988 m!912996)))

(assert (=> bs!78388 s!23771))

(assert (=> m!912988 s!23771))

(assert (=> bs!78386 s!23773))

(assert (=> bs!78387 s!23777))

(assert (=> bs!78388 s!23771))

(assert (=> m!912988 s!23771))

(declare-fun bs!78389 () Bool)

(declare-fun s!23785 () Bool)

(assert (= bs!78389 (and neg-inst!304 s!23785)))

(declare-fun res!278785 () Bool)

(declare-fun e!391535 () Bool)

(assert (=> bs!78389 (=> res!278785 e!391535)))

(assert (=> bs!78389 (= res!278785 (not (= (list!2916 x!140374) (list!2916 lt!275166))))))

(assert (=> bs!78389 (=> true e!391535)))

(declare-fun b!640931 () Bool)

(assert (=> b!640931 (= e!391535 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78389 (not res!278785)) b!640931))

(declare-fun bs!78390 () Bool)

(assert (= bs!78390 (and m!912978 m!912970)))

(assert (=> bs!78390 m!912978))

(assert (=> bs!78390 m!912970))

(assert (=> bs!78390 s!23785))

(declare-fun bs!78391 () Bool)

(declare-fun s!23787 () Bool)

(assert (= bs!78391 (and neg-inst!304 s!23787)))

(declare-fun res!278786 () Bool)

(declare-fun e!391536 () Bool)

(assert (=> bs!78391 (=> res!278786 e!391536)))

(assert (=> bs!78391 (= res!278786 (not (= (list!2916 x!140374) (list!2916 x!140376))))))

(assert (=> bs!78391 (=> true e!391536)))

(declare-fun b!640932 () Bool)

(assert (=> b!640932 (= e!391536 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78391 (not res!278786)) b!640932))

(declare-fun bs!78392 () Bool)

(assert (= bs!78392 (and m!912978 m!912998)))

(assert (=> bs!78392 m!912978))

(assert (=> bs!78392 m!912990))

(assert (=> bs!78392 s!23787))

(declare-fun bs!78393 () Bool)

(declare-fun s!23789 () Bool)

(assert (= bs!78393 (and neg-inst!304 s!23789)))

(declare-fun res!278787 () Bool)

(declare-fun e!391537 () Bool)

(assert (=> bs!78393 (=> res!278787 e!391537)))

(assert (=> bs!78393 (= res!278787 (not (= (list!2916 x!140374) (list!2916 x!140375))))))

(assert (=> bs!78393 (=> true e!391537)))

(declare-fun b!640933 () Bool)

(assert (=> b!640933 (= e!391537 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78393 (not res!278787)) b!640933))

(declare-fun bs!78394 () Bool)

(assert (= bs!78394 (and m!912978 m!912996 m!912988)))

(assert (=> bs!78394 m!912978))

(assert (=> bs!78394 m!912988))

(assert (=> bs!78394 s!23789))

(declare-fun bs!78395 () Bool)

(declare-fun s!23791 () Bool)

(assert (= bs!78395 (and neg-inst!304 s!23791)))

(declare-fun res!278788 () Bool)

(declare-fun e!391538 () Bool)

(assert (=> bs!78395 (=> res!278788 e!391538)))

(assert (=> bs!78395 (= res!278788 (not (= (list!2916 x!140374) (list!2916 x!140374))))))

(assert (=> bs!78395 (=> true e!391538)))

(declare-fun b!640934 () Bool)

(assert (=> b!640934 (= e!391538 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78395 (not res!278788)) b!640934))

(assert (=> m!912978 s!23791))

(declare-fun bs!78396 () Bool)

(declare-fun s!23793 () Bool)

(assert (= bs!78396 (and neg-inst!304 s!23793)))

(declare-fun res!278789 () Bool)

(declare-fun e!391539 () Bool)

(assert (=> bs!78396 (=> res!278789 e!391539)))

(assert (=> bs!78396 (= res!278789 (not (= (list!2916 lt!275166) (list!2916 x!140374))))))

(assert (=> bs!78396 (=> true e!391539)))

(declare-fun b!640935 () Bool)

(assert (=> b!640935 (= e!391539 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78396 (not res!278789)) b!640935))

(assert (=> bs!78390 m!912970))

(assert (=> bs!78390 m!912978))

(assert (=> bs!78390 s!23793))

(declare-fun bs!78397 () Bool)

(declare-fun s!23795 () Bool)

(assert (= bs!78397 (and neg-inst!304 s!23795)))

(declare-fun res!278790 () Bool)

(declare-fun e!391540 () Bool)

(assert (=> bs!78397 (=> res!278790 e!391540)))

(assert (=> bs!78397 (= res!278790 (not (= (list!2916 x!140376) (list!2916 x!140374))))))

(assert (=> bs!78397 (=> true e!391540)))

(declare-fun b!640936 () Bool)

(assert (=> b!640936 (= e!391540 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78397 (not res!278790)) b!640936))

(assert (=> bs!78392 m!912990))

(assert (=> bs!78392 m!912978))

(assert (=> bs!78392 s!23795))

(declare-fun bs!78398 () Bool)

(declare-fun s!23797 () Bool)

(assert (= bs!78398 (and neg-inst!304 s!23797)))

(declare-fun res!278791 () Bool)

(declare-fun e!391541 () Bool)

(assert (=> bs!78398 (=> res!278791 e!391541)))

(assert (=> bs!78398 (= res!278791 (not (= (list!2916 x!140375) (list!2916 x!140374))))))

(assert (=> bs!78398 (=> true e!391541)))

(declare-fun b!640937 () Bool)

(assert (=> b!640937 (= e!391541 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78398 (not res!278791)) b!640937))

(assert (=> bs!78394 m!912988))

(assert (=> bs!78394 m!912978))

(assert (=> bs!78394 s!23797))

(assert (=> m!912978 s!23791))

(declare-fun bs!78399 () Bool)

(assert (= bs!78399 (and m!912980 m!912998)))

(assert (=> bs!78399 s!23787))

(declare-fun bs!78400 () Bool)

(assert (= bs!78400 (and m!912980 m!912970)))

(assert (=> bs!78400 s!23785))

(declare-fun bs!78401 () Bool)

(assert (= bs!78401 (and m!912980 m!912996 m!912988)))

(assert (=> bs!78401 s!23789))

(declare-fun bs!78402 () Bool)

(assert (= bs!78402 (and m!912980 m!912978)))

(assert (=> bs!78402 s!23791))

(assert (=> m!912980 s!23791))

(assert (=> bs!78399 s!23795))

(assert (=> bs!78401 s!23797))

(assert (=> bs!78400 s!23793))

(assert (=> bs!78402 s!23791))

(assert (=> m!912980 s!23791))

(declare-fun bs!78403 () Bool)

(assert (= bs!78403 (and m!912990 m!912996 m!912988)))

(assert (=> bs!78403 s!23777))

(declare-fun bs!78404 () Bool)

(assert (= bs!78404 (and m!912990 m!912978 m!912980)))

(assert (=> bs!78404 s!23795))

(declare-fun bs!78405 () Bool)

(assert (= bs!78405 (and m!912990 m!912998)))

(assert (=> bs!78405 s!23779))

(assert (=> m!912990 s!23779))

(declare-fun bs!78406 () Bool)

(assert (= bs!78406 (and m!912990 m!912970)))

(assert (=> bs!78406 s!23775))

(assert (=> bs!78406 s!23781))

(assert (=> bs!78404 s!23787))

(assert (=> m!912990 s!23779))

(assert (=> bs!78403 s!23783))

(assert (=> bs!78405 s!23779))

(declare-fun bs!78407 () Bool)

(declare-fun s!23799 () Bool)

(assert (= bs!78407 (and neg-inst!304 s!23799)))

(declare-fun res!278792 () Bool)

(declare-fun e!391542 () Bool)

(assert (=> bs!78407 (=> res!278792 e!391542)))

(assert (=> bs!78407 (= res!278792 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78407 (=> true e!391542)))

(declare-fun b!640938 () Bool)

(assert (=> b!640938 (= e!391542 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78407 (not res!278792)) b!640938))

(assert (=> m!912984 s!23799))

(declare-fun bs!78408 () Bool)

(declare-fun s!23801 () Bool)

(assert (= bs!78408 (and neg-inst!304 s!23801)))

(declare-fun res!278793 () Bool)

(declare-fun e!391543 () Bool)

(assert (=> bs!78408 (=> res!278793 e!391543)))

(assert (=> bs!78408 (= res!278793 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140376))))))

(assert (=> bs!78408 (=> true e!391543)))

(declare-fun b!640939 () Bool)

(assert (=> b!640939 (= e!391543 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78408 (not res!278793)) b!640939))

(declare-fun bs!78409 () Bool)

(assert (= bs!78409 (and m!912984 m!912998 m!912990)))

(assert (=> bs!78409 m!912984))

(assert (=> bs!78409 m!912990))

(assert (=> bs!78409 s!23801))

(declare-fun bs!78410 () Bool)

(declare-fun s!23803 () Bool)

(assert (= bs!78410 (and neg-inst!304 s!23803)))

(declare-fun res!278794 () Bool)

(declare-fun e!391544 () Bool)

(assert (=> bs!78410 (=> res!278794 e!391544)))

(assert (=> bs!78410 (= res!278794 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140374))))))

(assert (=> bs!78410 (=> true e!391544)))

(declare-fun b!640940 () Bool)

(assert (=> b!640940 (= e!391544 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78410 (not res!278794)) b!640940))

(declare-fun bs!78411 () Bool)

(assert (= bs!78411 (and m!912984 m!912978 m!912980)))

(assert (=> bs!78411 m!912984))

(assert (=> bs!78411 m!912978))

(assert (=> bs!78411 s!23803))

(declare-fun bs!78412 () Bool)

(declare-fun s!23805 () Bool)

(assert (= bs!78412 (and neg-inst!304 s!23805)))

(declare-fun res!278795 () Bool)

(declare-fun e!391545 () Bool)

(assert (=> bs!78412 (=> res!278795 e!391545)))

(assert (=> bs!78412 (= res!278795 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140375))))))

(assert (=> bs!78412 (=> true e!391545)))

(declare-fun b!640941 () Bool)

(assert (=> b!640941 (= e!391545 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78412 (not res!278795)) b!640941))

(declare-fun bs!78413 () Bool)

(assert (= bs!78413 (and m!912984 m!912996 m!912988)))

(assert (=> bs!78413 m!912984))

(assert (=> bs!78413 m!912988))

(assert (=> bs!78413 s!23805))

(declare-fun bs!78414 () Bool)

(declare-fun s!23807 () Bool)

(assert (= bs!78414 (and neg-inst!304 s!23807)))

(declare-fun res!278796 () Bool)

(declare-fun e!391546 () Bool)

(assert (=> bs!78414 (=> res!278796 e!391546)))

(assert (=> bs!78414 (= res!278796 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275166))))))

(assert (=> bs!78414 (=> true e!391546)))

(declare-fun b!640942 () Bool)

(assert (=> b!640942 (= e!391546 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78414 (not res!278796)) b!640942))

(declare-fun bs!78415 () Bool)

(assert (= bs!78415 (and m!912984 m!912970)))

(assert (=> bs!78415 m!912984))

(assert (=> bs!78415 m!912970))

(assert (=> bs!78415 s!23807))

(declare-fun bs!78416 () Bool)

(declare-fun s!23809 () Bool)

(assert (= bs!78416 (and neg-inst!304 s!23809)))

(declare-fun res!278797 () Bool)

(declare-fun e!391547 () Bool)

(assert (=> bs!78416 (=> res!278797 e!391547)))

(assert (=> bs!78416 (= res!278797 (not (= (list!2916 x!140375) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78416 (=> true e!391547)))

(declare-fun b!640943 () Bool)

(assert (=> b!640943 (= e!391547 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78416 (not res!278797)) b!640943))

(assert (=> bs!78413 m!912988))

(assert (=> bs!78413 m!912984))

(assert (=> bs!78413 s!23809))

(assert (=> m!912984 s!23799))

(declare-fun bs!78417 () Bool)

(declare-fun s!23811 () Bool)

(assert (= bs!78417 (and neg-inst!304 s!23811)))

(declare-fun res!278798 () Bool)

(declare-fun e!391548 () Bool)

(assert (=> bs!78417 (=> res!278798 e!391548)))

(assert (=> bs!78417 (= res!278798 (not (= (list!2916 lt!275166) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78417 (=> true e!391548)))

(declare-fun b!640944 () Bool)

(assert (=> b!640944 (= e!391548 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78417 (not res!278798)) b!640944))

(assert (=> bs!78415 m!912970))

(assert (=> bs!78415 m!912984))

(assert (=> bs!78415 s!23811))

(declare-fun bs!78418 () Bool)

(declare-fun s!23813 () Bool)

(assert (= bs!78418 (and neg-inst!304 s!23813)))

(declare-fun res!278799 () Bool)

(declare-fun e!391549 () Bool)

(assert (=> bs!78418 (=> res!278799 e!391549)))

(assert (=> bs!78418 (= res!278799 (not (= (list!2916 x!140374) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78418 (=> true e!391549)))

(declare-fun b!640945 () Bool)

(assert (=> b!640945 (= e!391549 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78418 (not res!278799)) b!640945))

(assert (=> bs!78411 m!912978))

(assert (=> bs!78411 m!912984))

(assert (=> bs!78411 s!23813))

(declare-fun bs!78419 () Bool)

(declare-fun s!23815 () Bool)

(assert (= bs!78419 (and neg-inst!304 s!23815)))

(declare-fun res!278800 () Bool)

(declare-fun e!391550 () Bool)

(assert (=> bs!78419 (=> res!278800 e!391550)))

(assert (=> bs!78419 (= res!278800 (not (= (list!2916 x!140376) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78419 (=> true e!391550)))

(declare-fun b!640946 () Bool)

(assert (=> b!640946 (= e!391550 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78419 (not res!278800)) b!640946))

(assert (=> bs!78409 m!912990))

(assert (=> bs!78409 m!912984))

(assert (=> bs!78409 s!23815))

(declare-fun bs!78420 () Bool)

(assert (= bs!78420 (and neg-inst!304 d!223239)))

(assert (=> bs!78420 (= true inst!305)))

(declare-fun lt!275177 () Unit!11924)

(declare-fun Unit!11943 () Unit!11924)

(assert (=> d!223239 (= lt!275177 Unit!11943)))

(declare-fun lambda!19010 () Int)

(declare-fun equivClasses!525 (Int Int) Bool)

(declare-fun Forall2!255 (Int) Bool)

(assert (=> d!223239 (= (equivClasses!525 lambda!19008 lambda!19009) (Forall2!255 lambda!19010))))

(declare-fun lt!275176 () Unit!11924)

(declare-fun Unit!11944 () Unit!11924)

(assert (=> d!223239 (= lt!275176 Unit!11944)))

(assert (=> d!223239 (= (Forall2!255 lambda!19010) inst!305)))

(declare-fun lt!275175 () Unit!11924)

(declare-fun Unit!11945 () Unit!11924)

(assert (=> d!223239 (= lt!275175 Unit!11945)))

(declare-fun lambda!19007 () Int)

(declare-fun semiInverseModEq!546 (Int Int) Bool)

(declare-fun Forall!333 (Int) Bool)

(assert (=> d!223239 (= (semiInverseModEq!546 lambda!19008 lambda!19009) (Forall!333 lambda!19007))))

(declare-fun lt!275178 () Unit!11924)

(declare-fun Unit!11946 () Unit!11924)

(assert (=> d!223239 (= lt!275178 Unit!11946)))

(assert (=> d!223239 (= (Forall!333 lambda!19007) inst!304)))

(assert (=> d!223239 (= (injection!9 KeywordValueInjection!43) (TokenValueInjection!2577 lambda!19009 lambda!19008))))

(assert (= neg-inst!305 inst!304))

(assert (= neg-inst!304 inst!305))

(declare-fun m!913004 () Bool)

(assert (=> d!223239 m!913004))

(declare-fun m!913006 () Bool)

(assert (=> d!223239 m!913006))

(declare-fun m!913008 () Bool)

(assert (=> d!223239 m!913008))

(assert (=> d!223239 m!913004))

(declare-fun m!913010 () Bool)

(assert (=> d!223239 m!913010))

(assert (=> d!223239 m!913006))

(assert (=> d!223105 d!223239))

(declare-fun d!223241 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223241 (= (whitespaceRule!0 JsonLexer!197) (Rule!2557 (wsCharRe!0 JsonLexer!197) (String!8799 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!39)))))

(declare-fun bs!78421 () Bool)

(assert (= bs!78421 d!223241))

(declare-fun m!913012 () Bool)

(assert (=> bs!78421 m!913012))

(assert (=> bs!78421 m!912431))

(assert (=> d!223105 d!223241))

(declare-fun bs!78422 () Bool)

(declare-fun d!223243 () Bool)

(assert (= bs!78422 (and d!223243 d!223239)))

(declare-fun lambda!19031 () Int)

(assert (=> bs!78422 (not (= lambda!19031 lambda!19007))))

(assert (=> d!223243 true))

(declare-fun lambda!19032 () Int)

(assert (=> bs!78422 (not (= lambda!19032 lambda!19008))))

(assert (=> d!223243 true))

(declare-fun b_next!18853 () Bool)

(assert (=> b!640703 (= b_next!18849 (or (and d!223243 (= lambda!19032 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))))) b_next!18853))))

(declare-fun lambda!19033 () Int)

(assert (=> bs!78422 (not (= lambda!19033 lambda!19009))))

(assert (=> d!223243 true))

(declare-fun b_next!18855 () Bool)

(assert (=> b!640703 (= b_next!18851 (or (and d!223243 (= lambda!19033 (toValue!2319 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))))) b_next!18855))))

(declare-fun lambda!19034 () Int)

(assert (=> bs!78422 (not (= lambda!19034 lambda!19010))))

(assert (=> d!223243 true))

(declare-fun b!640969 () Bool)

(declare-fun e!391565 () Bool)

(declare-fun x!140419 () BalanceConc!4646)

(declare-fun tp!199205 () Bool)

(assert (=> b!640969 (= e!391565 (and (inv!8710 (c!117091 x!140419)) tp!199205))))

(declare-fun inst!310 () Bool)

(declare-fun toCharacters!2 (WhitespaceValueInjection!38 TokenValue!1412) BalanceConc!4646)

(declare-fun toValue!9 (WhitespaceValueInjection!38 BalanceConc!4646) TokenValue!1412)

(assert (=> d!223243 (= inst!310 (=> (and (inv!8711 x!140419) e!391565) (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140419))))))

(assert (= d!223243 b!640969))

(declare-fun m!913014 () Bool)

(assert (=> b!640969 m!913014))

(declare-fun m!913016 () Bool)

(assert (=> d!223243 m!913016))

(declare-fun m!913018 () Bool)

(assert (=> d!223243 m!913018))

(declare-fun bs!78423 () Bool)

(declare-fun s!23817 () Bool)

(assert (= bs!78423 (and neg-inst!304 s!23817)))

(declare-fun res!278809 () Bool)

(declare-fun e!391566 () Bool)

(assert (=> bs!78423 (=> res!278809 e!391566)))

(assert (=> bs!78423 (= res!278809 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140375))))))

(assert (=> bs!78423 (=> true e!391566)))

(declare-fun b!640970 () Bool)

(assert (=> b!640970 (= e!391566 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78423 (not res!278809)) b!640970))

(declare-fun bs!78424 () Bool)

(declare-fun m!913020 () Bool)

(assert (= bs!78424 (and m!913020 m!912996 m!912988)))

(assert (=> bs!78424 m!913020))

(assert (=> bs!78424 m!912988))

(assert (=> bs!78424 s!23817))

(declare-fun bs!78425 () Bool)

(declare-fun s!23819 () Bool)

(assert (= bs!78425 (and neg-inst!304 s!23819)))

(declare-fun res!278810 () Bool)

(declare-fun e!391567 () Bool)

(assert (=> bs!78425 (=> res!278810 e!391567)))

(assert (=> bs!78425 (= res!278810 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140376))))))

(assert (=> bs!78425 (=> true e!391567)))

(declare-fun b!640971 () Bool)

(assert (=> b!640971 (= e!391567 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78425 (not res!278810)) b!640971))

(declare-fun bs!78426 () Bool)

(assert (= bs!78426 (and m!913020 m!912998 m!912990)))

(assert (=> bs!78426 m!913020))

(assert (=> bs!78426 m!912990))

(assert (=> bs!78426 s!23819))

(declare-fun bs!78427 () Bool)

(declare-fun s!23821 () Bool)

(assert (= bs!78427 (and neg-inst!304 s!23821)))

(declare-fun res!278811 () Bool)

(declare-fun e!391568 () Bool)

(assert (=> bs!78427 (=> res!278811 e!391568)))

(assert (=> bs!78427 (= res!278811 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78427 (=> true e!391568)))

(declare-fun b!640972 () Bool)

(assert (=> b!640972 (= e!391568 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78427 (not res!278811)) b!640972))

(assert (=> m!913020 s!23821))

(declare-fun bs!78428 () Bool)

(declare-fun s!23823 () Bool)

(assert (= bs!78428 (and neg-inst!304 s!23823)))

(declare-fun res!278812 () Bool)

(declare-fun e!391569 () Bool)

(assert (=> bs!78428 (=> res!278812 e!391569)))

(assert (=> bs!78428 (= res!278812 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78428 (=> true e!391569)))

(declare-fun b!640973 () Bool)

(assert (=> b!640973 (= e!391569 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78428 (not res!278812)) b!640973))

(declare-fun bs!78429 () Bool)

(assert (= bs!78429 (and m!913020 m!912984)))

(assert (=> bs!78429 m!913020))

(assert (=> bs!78429 m!912984))

(assert (=> bs!78429 s!23823))

(declare-fun bs!78430 () Bool)

(declare-fun s!23825 () Bool)

(assert (= bs!78430 (and neg-inst!304 s!23825)))

(declare-fun res!278813 () Bool)

(declare-fun e!391570 () Bool)

(assert (=> bs!78430 (=> res!278813 e!391570)))

(assert (=> bs!78430 (= res!278813 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275166))))))

(assert (=> bs!78430 (=> true e!391570)))

(declare-fun b!640974 () Bool)

(assert (=> b!640974 (= e!391570 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78430 (not res!278813)) b!640974))

(declare-fun bs!78431 () Bool)

(assert (= bs!78431 (and m!913020 m!912970)))

(assert (=> bs!78431 m!913020))

(assert (=> bs!78431 m!912970))

(assert (=> bs!78431 s!23825))

(declare-fun bs!78432 () Bool)

(declare-fun s!23827 () Bool)

(assert (= bs!78432 (and neg-inst!304 s!23827)))

(declare-fun res!278814 () Bool)

(declare-fun e!391571 () Bool)

(assert (=> bs!78432 (=> res!278814 e!391571)))

(assert (=> bs!78432 (= res!278814 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140374))))))

(assert (=> bs!78432 (=> true e!391571)))

(declare-fun b!640975 () Bool)

(assert (=> b!640975 (= e!391571 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78432 (not res!278814)) b!640975))

(declare-fun bs!78433 () Bool)

(assert (= bs!78433 (and m!913020 m!912978 m!912980)))

(assert (=> bs!78433 m!913020))

(assert (=> bs!78433 m!912978))

(assert (=> bs!78433 s!23827))

(declare-fun bs!78434 () Bool)

(declare-fun s!23829 () Bool)

(assert (= bs!78434 (and neg-inst!304 s!23829)))

(declare-fun res!278815 () Bool)

(declare-fun e!391572 () Bool)

(assert (=> bs!78434 (=> res!278815 e!391572)))

(assert (=> bs!78434 (= res!278815 (not (= (list!2916 lt!275166) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78434 (=> true e!391572)))

(declare-fun b!640976 () Bool)

(assert (=> b!640976 (= e!391572 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78434 (not res!278815)) b!640976))

(assert (=> bs!78431 m!912970))

(assert (=> bs!78431 m!913020))

(assert (=> bs!78431 s!23829))

(declare-fun bs!78435 () Bool)

(declare-fun s!23831 () Bool)

(assert (= bs!78435 (and neg-inst!304 s!23831)))

(declare-fun res!278816 () Bool)

(declare-fun e!391573 () Bool)

(assert (=> bs!78435 (=> res!278816 e!391573)))

(assert (=> bs!78435 (= res!278816 (not (= (list!2916 x!140375) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78435 (=> true e!391573)))

(declare-fun b!640977 () Bool)

(assert (=> b!640977 (= e!391573 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78435 (not res!278816)) b!640977))

(assert (=> bs!78424 m!912988))

(assert (=> bs!78424 m!913020))

(assert (=> bs!78424 s!23831))

(assert (=> m!913020 s!23821))

(declare-fun bs!78436 () Bool)

(declare-fun s!23833 () Bool)

(assert (= bs!78436 (and neg-inst!304 s!23833)))

(declare-fun res!278817 () Bool)

(declare-fun e!391574 () Bool)

(assert (=> bs!78436 (=> res!278817 e!391574)))

(assert (=> bs!78436 (= res!278817 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78436 (=> true e!391574)))

(declare-fun b!640978 () Bool)

(assert (=> b!640978 (= e!391574 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78436 (not res!278817)) b!640978))

(assert (=> bs!78429 m!912984))

(assert (=> bs!78429 m!913020))

(assert (=> bs!78429 s!23833))

(declare-fun bs!78437 () Bool)

(declare-fun s!23835 () Bool)

(assert (= bs!78437 (and neg-inst!304 s!23835)))

(declare-fun res!278818 () Bool)

(declare-fun e!391575 () Bool)

(assert (=> bs!78437 (=> res!278818 e!391575)))

(assert (=> bs!78437 (= res!278818 (not (= (list!2916 x!140376) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78437 (=> true e!391575)))

(declare-fun b!640979 () Bool)

(assert (=> b!640979 (= e!391575 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78437 (not res!278818)) b!640979))

(assert (=> bs!78426 m!912990))

(assert (=> bs!78426 m!913020))

(assert (=> bs!78426 s!23835))

(declare-fun bs!78438 () Bool)

(declare-fun s!23837 () Bool)

(assert (= bs!78438 (and neg-inst!304 s!23837)))

(declare-fun res!278819 () Bool)

(declare-fun e!391576 () Bool)

(assert (=> bs!78438 (=> res!278819 e!391576)))

(assert (=> bs!78438 (= res!278819 (not (= (list!2916 x!140374) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78438 (=> true e!391576)))

(declare-fun b!640980 () Bool)

(assert (=> b!640980 (= e!391576 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78438 (not res!278819)) b!640980))

(assert (=> bs!78433 m!912978))

(assert (=> bs!78433 m!913020))

(assert (=> bs!78433 s!23837))

(assert (=> d!223243 m!913020))

(declare-fun m!913022 () Bool)

(assert (=> d!223243 m!913022))

(declare-fun bs!78439 () Bool)

(declare-fun s!23839 () Bool)

(assert (= bs!78439 (and neg-inst!304 s!23839)))

(declare-fun res!278820 () Bool)

(declare-fun e!391577 () Bool)

(assert (=> bs!78439 (=> res!278820 e!391577)))

(assert (=> bs!78439 (= res!278820 (not (= (list!2916 x!140419) (list!2916 lt!275166))))))

(assert (=> bs!78439 (=> true e!391577)))

(declare-fun b!640981 () Bool)

(assert (=> b!640981 (= e!391577 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78439 (not res!278820)) b!640981))

(declare-fun bs!78440 () Bool)

(declare-fun m!913024 () Bool)

(assert (= bs!78440 (and m!913024 m!912970)))

(assert (=> bs!78440 m!913024))

(assert (=> bs!78440 m!912970))

(assert (=> bs!78440 s!23839))

(declare-fun bs!78441 () Bool)

(declare-fun s!23841 () Bool)

(assert (= bs!78441 (and neg-inst!304 s!23841)))

(declare-fun res!278821 () Bool)

(declare-fun e!391578 () Bool)

(assert (=> bs!78441 (=> res!278821 e!391578)))

(assert (=> bs!78441 (= res!278821 (not (= (list!2916 x!140419) (list!2916 x!140375))))))

(assert (=> bs!78441 (=> true e!391578)))

(declare-fun b!640982 () Bool)

(assert (=> b!640982 (= e!391578 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78441 (not res!278821)) b!640982))

(declare-fun bs!78442 () Bool)

(assert (= bs!78442 (and m!913024 m!912996 m!912988)))

(assert (=> bs!78442 m!913024))

(assert (=> bs!78442 m!912988))

(assert (=> bs!78442 s!23841))

(declare-fun bs!78443 () Bool)

(declare-fun s!23843 () Bool)

(assert (= bs!78443 (and neg-inst!304 s!23843)))

(declare-fun res!278822 () Bool)

(declare-fun e!391579 () Bool)

(assert (=> bs!78443 (=> res!278822 e!391579)))

(assert (=> bs!78443 (= res!278822 (not (= (list!2916 x!140419) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78443 (=> true e!391579)))

(declare-fun b!640983 () Bool)

(assert (=> b!640983 (= e!391579 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78443 (not res!278822)) b!640983))

(declare-fun bs!78444 () Bool)

(assert (= bs!78444 (and m!913024 m!912984)))

(assert (=> bs!78444 m!913024))

(assert (=> bs!78444 m!912984))

(assert (=> bs!78444 s!23843))

(declare-fun bs!78445 () Bool)

(declare-fun s!23845 () Bool)

(assert (= bs!78445 (and neg-inst!304 s!23845)))

(declare-fun res!278823 () Bool)

(declare-fun e!391580 () Bool)

(assert (=> bs!78445 (=> res!278823 e!391580)))

(assert (=> bs!78445 (= res!278823 (not (= (list!2916 x!140419) (list!2916 x!140376))))))

(assert (=> bs!78445 (=> true e!391580)))

(declare-fun b!640984 () Bool)

(assert (=> b!640984 (= e!391580 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78445 (not res!278823)) b!640984))

(declare-fun bs!78446 () Bool)

(assert (= bs!78446 (and m!913024 m!912998 m!912990)))

(assert (=> bs!78446 m!913024))

(assert (=> bs!78446 m!912990))

(assert (=> bs!78446 s!23845))

(declare-fun bs!78447 () Bool)

(declare-fun s!23847 () Bool)

(assert (= bs!78447 (and neg-inst!304 s!23847)))

(declare-fun res!278824 () Bool)

(declare-fun e!391581 () Bool)

(assert (=> bs!78447 (=> res!278824 e!391581)))

(assert (=> bs!78447 (= res!278824 (not (= (list!2916 x!140419) (list!2916 x!140419))))))

(assert (=> bs!78447 (=> true e!391581)))

(declare-fun b!640985 () Bool)

(assert (=> b!640985 (= e!391581 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78447 (not res!278824)) b!640985))

(assert (=> m!913024 s!23847))

(declare-fun bs!78448 () Bool)

(declare-fun s!23849 () Bool)

(assert (= bs!78448 (and neg-inst!304 s!23849)))

(declare-fun res!278825 () Bool)

(declare-fun e!391582 () Bool)

(assert (=> bs!78448 (=> res!278825 e!391582)))

(assert (=> bs!78448 (= res!278825 (not (= (list!2916 x!140419) (list!2916 x!140374))))))

(assert (=> bs!78448 (=> true e!391582)))

(declare-fun b!640986 () Bool)

(assert (=> b!640986 (= e!391582 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78448 (not res!278825)) b!640986))

(declare-fun bs!78449 () Bool)

(assert (= bs!78449 (and m!913024 m!912978 m!912980)))

(assert (=> bs!78449 m!913024))

(assert (=> bs!78449 m!912978))

(assert (=> bs!78449 s!23849))

(declare-fun bs!78450 () Bool)

(declare-fun s!23851 () Bool)

(assert (= bs!78450 (and neg-inst!304 s!23851)))

(declare-fun res!278826 () Bool)

(declare-fun e!391583 () Bool)

(assert (=> bs!78450 (=> res!278826 e!391583)))

(assert (=> bs!78450 (= res!278826 (not (= (list!2916 x!140419) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78450 (=> true e!391583)))

(declare-fun b!640987 () Bool)

(assert (=> b!640987 (= e!391583 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78450 (not res!278826)) b!640987))

(declare-fun bs!78451 () Bool)

(assert (= bs!78451 (and m!913024 m!913020)))

(assert (=> bs!78451 m!913024))

(assert (=> bs!78451 m!913020))

(assert (=> bs!78451 s!23851))

(declare-fun bs!78452 () Bool)

(declare-fun s!23853 () Bool)

(assert (= bs!78452 (and neg-inst!304 s!23853)))

(declare-fun res!278827 () Bool)

(declare-fun e!391584 () Bool)

(assert (=> bs!78452 (=> res!278827 e!391584)))

(assert (=> bs!78452 (= res!278827 (not (= (list!2916 x!140376) (list!2916 x!140419))))))

(assert (=> bs!78452 (=> true e!391584)))

(declare-fun b!640988 () Bool)

(assert (=> b!640988 (= e!391584 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78452 (not res!278827)) b!640988))

(assert (=> bs!78446 m!912990))

(assert (=> bs!78446 m!913024))

(assert (=> bs!78446 s!23853))

(declare-fun bs!78453 () Bool)

(declare-fun s!23855 () Bool)

(assert (= bs!78453 (and neg-inst!304 s!23855)))

(declare-fun res!278828 () Bool)

(declare-fun e!391585 () Bool)

(assert (=> bs!78453 (=> res!278828 e!391585)))

(assert (=> bs!78453 (= res!278828 (not (= (list!2916 x!140375) (list!2916 x!140419))))))

(assert (=> bs!78453 (=> true e!391585)))

(declare-fun b!640989 () Bool)

(assert (=> b!640989 (= e!391585 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78453 (not res!278828)) b!640989))

(assert (=> bs!78442 m!912988))

(assert (=> bs!78442 m!913024))

(assert (=> bs!78442 s!23855))

(assert (=> m!913024 s!23847))

(declare-fun bs!78454 () Bool)

(declare-fun s!23857 () Bool)

(assert (= bs!78454 (and neg-inst!304 s!23857)))

(declare-fun res!278829 () Bool)

(declare-fun e!391586 () Bool)

(assert (=> bs!78454 (=> res!278829 e!391586)))

(assert (=> bs!78454 (= res!278829 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140419))))))

(assert (=> bs!78454 (=> true e!391586)))

(declare-fun b!640990 () Bool)

(assert (=> b!640990 (= e!391586 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78454 (not res!278829)) b!640990))

(assert (=> bs!78451 m!913020))

(assert (=> bs!78451 m!913024))

(assert (=> bs!78451 s!23857))

(declare-fun bs!78455 () Bool)

(declare-fun s!23859 () Bool)

(assert (= bs!78455 (and neg-inst!304 s!23859)))

(declare-fun res!278830 () Bool)

(declare-fun e!391587 () Bool)

(assert (=> bs!78455 (=> res!278830 e!391587)))

(assert (=> bs!78455 (= res!278830 (not (= (list!2916 x!140374) (list!2916 x!140419))))))

(assert (=> bs!78455 (=> true e!391587)))

(declare-fun b!640991 () Bool)

(assert (=> b!640991 (= e!391587 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78455 (not res!278830)) b!640991))

(assert (=> bs!78449 m!912978))

(assert (=> bs!78449 m!913024))

(assert (=> bs!78449 s!23859))

(declare-fun bs!78456 () Bool)

(declare-fun s!23861 () Bool)

(assert (= bs!78456 (and neg-inst!304 s!23861)))

(declare-fun res!278831 () Bool)

(declare-fun e!391588 () Bool)

(assert (=> bs!78456 (=> res!278831 e!391588)))

(assert (=> bs!78456 (= res!278831 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140419))))))

(assert (=> bs!78456 (=> true e!391588)))

(declare-fun b!640992 () Bool)

(assert (=> b!640992 (= e!391588 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78456 (not res!278831)) b!640992))

(assert (=> bs!78444 m!912984))

(assert (=> bs!78444 m!913024))

(assert (=> bs!78444 s!23861))

(declare-fun bs!78457 () Bool)

(declare-fun s!23863 () Bool)

(assert (= bs!78457 (and neg-inst!304 s!23863)))

(declare-fun res!278832 () Bool)

(declare-fun e!391589 () Bool)

(assert (=> bs!78457 (=> res!278832 e!391589)))

(assert (=> bs!78457 (= res!278832 (not (= (list!2916 lt!275166) (list!2916 x!140419))))))

(assert (=> bs!78457 (=> true e!391589)))

(declare-fun b!640993 () Bool)

(assert (=> b!640993 (= e!391589 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78457 (not res!278832)) b!640993))

(assert (=> bs!78440 m!912970))

(assert (=> bs!78440 m!913024))

(assert (=> bs!78440 s!23863))

(assert (=> d!223243 m!913024))

(assert (=> d!223243 m!913016))

(assert (=> d!223243 m!913018))

(declare-fun res!278833 () Bool)

(declare-fun e!391590 () Bool)

(assert (=> d!223243 (=> res!278833 e!391590)))

(declare-fun x!140420 () BalanceConc!4646)

(declare-fun x!140421 () BalanceConc!4646)

(assert (=> d!223243 (= res!278833 (not (= (list!2916 x!140420) (list!2916 x!140421))))))

(declare-fun inst!311 () Bool)

(declare-fun e!391592 () Bool)

(declare-fun e!391591 () Bool)

(assert (=> d!223243 (= inst!311 (=> (and (inv!8711 x!140420) e!391591 (inv!8711 x!140421) e!391592) e!391590))))

(declare-fun b!640994 () Bool)

(assert (=> b!640994 (= e!391590 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(declare-fun b!640995 () Bool)

(declare-fun tp!199207 () Bool)

(assert (=> b!640995 (= e!391591 (and (inv!8710 (c!117091 x!140420)) tp!199207))))

(declare-fun b!640996 () Bool)

(declare-fun tp!199206 () Bool)

(assert (=> b!640996 (= e!391592 (and (inv!8710 (c!117091 x!140421)) tp!199206))))

(assert (= (and d!223243 (not res!278833)) b!640994))

(assert (= d!223243 b!640995))

(assert (= d!223243 b!640996))

(declare-fun bs!78458 () Bool)

(declare-fun s!23865 () Bool)

(assert (= bs!78458 (and neg-inst!304 s!23865)))

(declare-fun res!278834 () Bool)

(declare-fun e!391593 () Bool)

(assert (=> bs!78458 (=> res!278834 e!391593)))

(assert (=> bs!78458 (= res!278834 (not (= (list!2916 x!140420) (list!2916 x!140374))))))

(assert (=> bs!78458 (=> true e!391593)))

(declare-fun b!640997 () Bool)

(assert (=> b!640997 (= e!391593 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78458 (not res!278834)) b!640997))

(declare-fun bs!78459 () Bool)

(declare-fun m!913026 () Bool)

(assert (= bs!78459 (and m!913026 m!912978 m!912980)))

(assert (=> bs!78459 m!913026))

(assert (=> bs!78459 m!912978))

(assert (=> bs!78459 s!23865))

(declare-fun bs!78460 () Bool)

(declare-fun s!23867 () Bool)

(assert (= bs!78460 (and neg-inst!304 s!23867)))

(declare-fun res!278835 () Bool)

(declare-fun e!391594 () Bool)

(assert (=> bs!78460 (=> res!278835 e!391594)))

(assert (=> bs!78460 (= res!278835 (not (= (list!2916 x!140420) (list!2916 x!140375))))))

(assert (=> bs!78460 (=> true e!391594)))

(declare-fun b!640998 () Bool)

(assert (=> b!640998 (= e!391594 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78460 (not res!278835)) b!640998))

(declare-fun bs!78461 () Bool)

(assert (= bs!78461 (and m!913026 m!912996 m!912988)))

(assert (=> bs!78461 m!913026))

(assert (=> bs!78461 m!912988))

(assert (=> bs!78461 s!23867))

(declare-fun bs!78462 () Bool)

(declare-fun s!23869 () Bool)

(assert (= bs!78462 (and neg-inst!304 s!23869)))

(declare-fun res!278836 () Bool)

(declare-fun e!391595 () Bool)

(assert (=> bs!78462 (=> res!278836 e!391595)))

(assert (=> bs!78462 (= res!278836 (not (= (list!2916 x!140420) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78462 (=> true e!391595)))

(declare-fun b!640999 () Bool)

(assert (=> b!640999 (= e!391595 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78462 (not res!278836)) b!640999))

(declare-fun bs!78463 () Bool)

(assert (= bs!78463 (and m!913026 m!913020)))

(assert (=> bs!78463 m!913026))

(assert (=> bs!78463 m!913020))

(assert (=> bs!78463 s!23869))

(declare-fun bs!78464 () Bool)

(declare-fun s!23871 () Bool)

(assert (= bs!78464 (and neg-inst!304 s!23871)))

(declare-fun res!278837 () Bool)

(declare-fun e!391596 () Bool)

(assert (=> bs!78464 (=> res!278837 e!391596)))

(assert (=> bs!78464 (= res!278837 (not (= (list!2916 x!140420) (list!2916 x!140420))))))

(assert (=> bs!78464 (=> true e!391596)))

(declare-fun b!641000 () Bool)

(assert (=> b!641000 (= e!391596 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78464 (not res!278837)) b!641000))

(assert (=> m!913026 s!23871))

(declare-fun bs!78465 () Bool)

(declare-fun s!23873 () Bool)

(assert (= bs!78465 (and neg-inst!304 s!23873)))

(declare-fun res!278838 () Bool)

(declare-fun e!391597 () Bool)

(assert (=> bs!78465 (=> res!278838 e!391597)))

(assert (=> bs!78465 (= res!278838 (not (= (list!2916 x!140420) (list!2916 x!140419))))))

(assert (=> bs!78465 (=> true e!391597)))

(declare-fun b!641001 () Bool)

(assert (=> b!641001 (= e!391597 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78465 (not res!278838)) b!641001))

(declare-fun bs!78466 () Bool)

(assert (= bs!78466 (and m!913026 m!913024)))

(assert (=> bs!78466 m!913026))

(assert (=> bs!78466 m!913024))

(assert (=> bs!78466 s!23873))

(declare-fun bs!78467 () Bool)

(declare-fun s!23875 () Bool)

(assert (= bs!78467 (and neg-inst!304 s!23875)))

(declare-fun res!278839 () Bool)

(declare-fun e!391598 () Bool)

(assert (=> bs!78467 (=> res!278839 e!391598)))

(assert (=> bs!78467 (= res!278839 (not (= (list!2916 x!140420) (list!2916 x!140376))))))

(assert (=> bs!78467 (=> true e!391598)))

(declare-fun b!641002 () Bool)

(assert (=> b!641002 (= e!391598 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78467 (not res!278839)) b!641002))

(declare-fun bs!78468 () Bool)

(assert (= bs!78468 (and m!913026 m!912998 m!912990)))

(assert (=> bs!78468 m!913026))

(assert (=> bs!78468 m!912990))

(assert (=> bs!78468 s!23875))

(declare-fun bs!78469 () Bool)

(declare-fun s!23877 () Bool)

(assert (= bs!78469 (and neg-inst!304 s!23877)))

(declare-fun res!278840 () Bool)

(declare-fun e!391599 () Bool)

(assert (=> bs!78469 (=> res!278840 e!391599)))

(assert (=> bs!78469 (= res!278840 (not (= (list!2916 x!140420) (list!2916 lt!275166))))))

(assert (=> bs!78469 (=> true e!391599)))

(declare-fun b!641003 () Bool)

(assert (=> b!641003 (= e!391599 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78469 (not res!278840)) b!641003))

(declare-fun bs!78470 () Bool)

(assert (= bs!78470 (and m!913026 m!912970)))

(assert (=> bs!78470 m!913026))

(assert (=> bs!78470 m!912970))

(assert (=> bs!78470 s!23877))

(declare-fun bs!78471 () Bool)

(declare-fun s!23879 () Bool)

(assert (= bs!78471 (and neg-inst!304 s!23879)))

(declare-fun res!278841 () Bool)

(declare-fun e!391600 () Bool)

(assert (=> bs!78471 (=> res!278841 e!391600)))

(assert (=> bs!78471 (= res!278841 (not (= (list!2916 x!140420) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78471 (=> true e!391600)))

(declare-fun b!641004 () Bool)

(assert (=> b!641004 (= e!391600 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78471 (not res!278841)) b!641004))

(declare-fun bs!78472 () Bool)

(assert (= bs!78472 (and m!913026 m!912984)))

(assert (=> bs!78472 m!913026))

(assert (=> bs!78472 m!912984))

(assert (=> bs!78472 s!23879))

(declare-fun bs!78473 () Bool)

(declare-fun s!23881 () Bool)

(assert (= bs!78473 (and neg-inst!304 s!23881)))

(declare-fun res!278842 () Bool)

(declare-fun e!391601 () Bool)

(assert (=> bs!78473 (=> res!278842 e!391601)))

(assert (=> bs!78473 (= res!278842 (not (= (list!2916 lt!275166) (list!2916 x!140420))))))

(assert (=> bs!78473 (=> true e!391601)))

(declare-fun b!641005 () Bool)

(assert (=> b!641005 (= e!391601 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78473 (not res!278842)) b!641005))

(assert (=> bs!78470 m!912970))

(assert (=> bs!78470 m!913026))

(assert (=> bs!78470 s!23881))

(declare-fun bs!78474 () Bool)

(declare-fun s!23883 () Bool)

(assert (= bs!78474 (and neg-inst!304 s!23883)))

(declare-fun res!278843 () Bool)

(declare-fun e!391602 () Bool)

(assert (=> bs!78474 (=> res!278843 e!391602)))

(assert (=> bs!78474 (= res!278843 (not (= (list!2916 x!140376) (list!2916 x!140420))))))

(assert (=> bs!78474 (=> true e!391602)))

(declare-fun b!641006 () Bool)

(assert (=> b!641006 (= e!391602 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78474 (not res!278843)) b!641006))

(assert (=> bs!78468 m!912990))

(assert (=> bs!78468 m!913026))

(assert (=> bs!78468 s!23883))

(declare-fun bs!78475 () Bool)

(declare-fun s!23885 () Bool)

(assert (= bs!78475 (and neg-inst!304 s!23885)))

(declare-fun res!278844 () Bool)

(declare-fun e!391603 () Bool)

(assert (=> bs!78475 (=> res!278844 e!391603)))

(assert (=> bs!78475 (= res!278844 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140420))))))

(assert (=> bs!78475 (=> true e!391603)))

(declare-fun b!641007 () Bool)

(assert (=> b!641007 (= e!391603 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78475 (not res!278844)) b!641007))

(assert (=> bs!78472 m!912984))

(assert (=> bs!78472 m!913026))

(assert (=> bs!78472 s!23885))

(declare-fun bs!78476 () Bool)

(declare-fun s!23887 () Bool)

(assert (= bs!78476 (and neg-inst!304 s!23887)))

(declare-fun res!278845 () Bool)

(declare-fun e!391604 () Bool)

(assert (=> bs!78476 (=> res!278845 e!391604)))

(assert (=> bs!78476 (= res!278845 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140420))))))

(assert (=> bs!78476 (=> true e!391604)))

(declare-fun b!641008 () Bool)

(assert (=> b!641008 (= e!391604 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78476 (not res!278845)) b!641008))

(assert (=> bs!78463 m!913020))

(assert (=> bs!78463 m!913026))

(assert (=> bs!78463 s!23887))

(declare-fun bs!78477 () Bool)

(declare-fun s!23889 () Bool)

(assert (= bs!78477 (and neg-inst!304 s!23889)))

(declare-fun res!278846 () Bool)

(declare-fun e!391605 () Bool)

(assert (=> bs!78477 (=> res!278846 e!391605)))

(assert (=> bs!78477 (= res!278846 (not (= (list!2916 x!140419) (list!2916 x!140420))))))

(assert (=> bs!78477 (=> true e!391605)))

(declare-fun b!641009 () Bool)

(assert (=> b!641009 (= e!391605 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78477 (not res!278846)) b!641009))

(assert (=> bs!78466 m!913024))

(assert (=> bs!78466 m!913026))

(assert (=> bs!78466 s!23889))

(declare-fun bs!78478 () Bool)

(declare-fun s!23891 () Bool)

(assert (= bs!78478 (and neg-inst!304 s!23891)))

(declare-fun res!278847 () Bool)

(declare-fun e!391606 () Bool)

(assert (=> bs!78478 (=> res!278847 e!391606)))

(assert (=> bs!78478 (= res!278847 (not (= (list!2916 x!140374) (list!2916 x!140420))))))

(assert (=> bs!78478 (=> true e!391606)))

(declare-fun b!641010 () Bool)

(assert (=> b!641010 (= e!391606 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78478 (not res!278847)) b!641010))

(assert (=> bs!78459 m!912978))

(assert (=> bs!78459 m!913026))

(assert (=> bs!78459 s!23891))

(declare-fun bs!78479 () Bool)

(declare-fun s!23893 () Bool)

(assert (= bs!78479 (and neg-inst!304 s!23893)))

(declare-fun res!278848 () Bool)

(declare-fun e!391607 () Bool)

(assert (=> bs!78479 (=> res!278848 e!391607)))

(assert (=> bs!78479 (= res!278848 (not (= (list!2916 x!140375) (list!2916 x!140420))))))

(assert (=> bs!78479 (=> true e!391607)))

(declare-fun b!641011 () Bool)

(assert (=> b!641011 (= e!391607 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78479 (not res!278848)) b!641011))

(assert (=> bs!78461 m!912988))

(assert (=> bs!78461 m!913026))

(assert (=> bs!78461 s!23893))

(assert (=> m!913026 s!23871))

(assert (=> d!223243 m!913026))

(declare-fun bs!78480 () Bool)

(declare-fun s!23895 () Bool)

(assert (= bs!78480 (and neg-inst!304 s!23895)))

(declare-fun res!278849 () Bool)

(declare-fun e!391608 () Bool)

(assert (=> bs!78480 (=> res!278849 e!391608)))

(assert (=> bs!78480 (= res!278849 (not (= (list!2916 x!140421) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78480 (=> true e!391608)))

(declare-fun b!641012 () Bool)

(assert (=> b!641012 (= e!391608 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78480 (not res!278849)) b!641012))

(declare-fun bs!78481 () Bool)

(declare-fun m!913028 () Bool)

(assert (= bs!78481 (and m!913028 m!913020)))

(assert (=> bs!78481 m!913028))

(assert (=> bs!78481 m!913020))

(assert (=> bs!78481 s!23895))

(declare-fun bs!78482 () Bool)

(declare-fun s!23897 () Bool)

(assert (= bs!78482 (and neg-inst!304 s!23897)))

(declare-fun res!278850 () Bool)

(declare-fun e!391609 () Bool)

(assert (=> bs!78482 (=> res!278850 e!391609)))

(assert (=> bs!78482 (= res!278850 (not (= (list!2916 x!140421) (list!2916 x!140421))))))

(assert (=> bs!78482 (=> true e!391609)))

(declare-fun b!641013 () Bool)

(assert (=> b!641013 (= e!391609 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78482 (not res!278850)) b!641013))

(assert (=> m!913028 s!23897))

(declare-fun bs!78483 () Bool)

(declare-fun s!23899 () Bool)

(assert (= bs!78483 (and neg-inst!304 s!23899)))

(declare-fun res!278851 () Bool)

(declare-fun e!391610 () Bool)

(assert (=> bs!78483 (=> res!278851 e!391610)))

(assert (=> bs!78483 (= res!278851 (not (= (list!2916 x!140421) (list!2916 x!140419))))))

(assert (=> bs!78483 (=> true e!391610)))

(declare-fun b!641014 () Bool)

(assert (=> b!641014 (= e!391610 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78483 (not res!278851)) b!641014))

(declare-fun bs!78484 () Bool)

(assert (= bs!78484 (and m!913028 m!913024)))

(assert (=> bs!78484 m!913028))

(assert (=> bs!78484 m!913024))

(assert (=> bs!78484 s!23899))

(declare-fun bs!78485 () Bool)

(declare-fun s!23901 () Bool)

(assert (= bs!78485 (and neg-inst!304 s!23901)))

(declare-fun res!278852 () Bool)

(declare-fun e!391611 () Bool)

(assert (=> bs!78485 (=> res!278852 e!391611)))

(assert (=> bs!78485 (= res!278852 (not (= (list!2916 x!140421) (list!2916 x!140376))))))

(assert (=> bs!78485 (=> true e!391611)))

(declare-fun b!641015 () Bool)

(assert (=> b!641015 (= e!391611 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78485 (not res!278852)) b!641015))

(declare-fun bs!78486 () Bool)

(assert (= bs!78486 (and m!913028 m!912998 m!912990)))

(assert (=> bs!78486 m!913028))

(assert (=> bs!78486 m!912990))

(assert (=> bs!78486 s!23901))

(declare-fun bs!78487 () Bool)

(declare-fun s!23903 () Bool)

(assert (= bs!78487 (and neg-inst!304 s!23903)))

(declare-fun res!278853 () Bool)

(declare-fun e!391612 () Bool)

(assert (=> bs!78487 (=> res!278853 e!391612)))

(assert (=> bs!78487 (= res!278853 (not (= (list!2916 x!140421) (list!2916 x!140420))))))

(assert (=> bs!78487 (=> true e!391612)))

(declare-fun b!641016 () Bool)

(assert (=> b!641016 (= e!391612 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78487 (not res!278853)) b!641016))

(declare-fun bs!78488 () Bool)

(assert (= bs!78488 (and m!913028 m!913026)))

(assert (=> bs!78488 m!913028))

(assert (=> bs!78488 m!913026))

(assert (=> bs!78488 s!23903))

(declare-fun bs!78489 () Bool)

(declare-fun s!23905 () Bool)

(assert (= bs!78489 (and neg-inst!304 s!23905)))

(declare-fun res!278854 () Bool)

(declare-fun e!391613 () Bool)

(assert (=> bs!78489 (=> res!278854 e!391613)))

(assert (=> bs!78489 (= res!278854 (not (= (list!2916 x!140421) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78489 (=> true e!391613)))

(declare-fun b!641017 () Bool)

(assert (=> b!641017 (= e!391613 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78489 (not res!278854)) b!641017))

(declare-fun bs!78490 () Bool)

(assert (= bs!78490 (and m!913028 m!912984)))

(assert (=> bs!78490 m!913028))

(assert (=> bs!78490 m!912984))

(assert (=> bs!78490 s!23905))

(declare-fun bs!78491 () Bool)

(declare-fun s!23907 () Bool)

(assert (= bs!78491 (and neg-inst!304 s!23907)))

(declare-fun res!278855 () Bool)

(declare-fun e!391614 () Bool)

(assert (=> bs!78491 (=> res!278855 e!391614)))

(assert (=> bs!78491 (= res!278855 (not (= (list!2916 x!140421) (list!2916 x!140374))))))

(assert (=> bs!78491 (=> true e!391614)))

(declare-fun b!641018 () Bool)

(assert (=> b!641018 (= e!391614 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78491 (not res!278855)) b!641018))

(declare-fun bs!78492 () Bool)

(assert (= bs!78492 (and m!913028 m!912978 m!912980)))

(assert (=> bs!78492 m!913028))

(assert (=> bs!78492 m!912978))

(assert (=> bs!78492 s!23907))

(declare-fun bs!78493 () Bool)

(declare-fun s!23909 () Bool)

(assert (= bs!78493 (and neg-inst!304 s!23909)))

(declare-fun res!278856 () Bool)

(declare-fun e!391615 () Bool)

(assert (=> bs!78493 (=> res!278856 e!391615)))

(assert (=> bs!78493 (= res!278856 (not (= (list!2916 x!140421) (list!2916 x!140375))))))

(assert (=> bs!78493 (=> true e!391615)))

(declare-fun b!641019 () Bool)

(assert (=> b!641019 (= e!391615 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78493 (not res!278856)) b!641019))

(declare-fun bs!78494 () Bool)

(assert (= bs!78494 (and m!913028 m!912996 m!912988)))

(assert (=> bs!78494 m!913028))

(assert (=> bs!78494 m!912988))

(assert (=> bs!78494 s!23909))

(declare-fun bs!78495 () Bool)

(declare-fun s!23911 () Bool)

(assert (= bs!78495 (and neg-inst!304 s!23911)))

(declare-fun res!278857 () Bool)

(declare-fun e!391616 () Bool)

(assert (=> bs!78495 (=> res!278857 e!391616)))

(assert (=> bs!78495 (= res!278857 (not (= (list!2916 x!140421) (list!2916 lt!275166))))))

(assert (=> bs!78495 (=> true e!391616)))

(declare-fun b!641020 () Bool)

(assert (=> b!641020 (= e!391616 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78495 (not res!278857)) b!641020))

(declare-fun bs!78496 () Bool)

(assert (= bs!78496 (and m!913028 m!912970)))

(assert (=> bs!78496 m!913028))

(assert (=> bs!78496 m!912970))

(assert (=> bs!78496 s!23911))

(assert (=> m!913028 s!23897))

(declare-fun bs!78497 () Bool)

(declare-fun s!23913 () Bool)

(assert (= bs!78497 (and neg-inst!304 s!23913)))

(declare-fun res!278858 () Bool)

(declare-fun e!391617 () Bool)

(assert (=> bs!78497 (=> res!278858 e!391617)))

(assert (=> bs!78497 (= res!278858 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140421))))))

(assert (=> bs!78497 (=> true e!391617)))

(declare-fun b!641021 () Bool)

(assert (=> b!641021 (= e!391617 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78497 (not res!278858)) b!641021))

(assert (=> bs!78490 m!912984))

(assert (=> bs!78490 m!913028))

(assert (=> bs!78490 s!23913))

(declare-fun bs!78498 () Bool)

(declare-fun s!23915 () Bool)

(assert (= bs!78498 (and neg-inst!304 s!23915)))

(declare-fun res!278859 () Bool)

(declare-fun e!391618 () Bool)

(assert (=> bs!78498 (=> res!278859 e!391618)))

(assert (=> bs!78498 (= res!278859 (not (= (list!2916 x!140419) (list!2916 x!140421))))))

(assert (=> bs!78498 (=> true e!391618)))

(declare-fun b!641022 () Bool)

(assert (=> b!641022 (= e!391618 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78498 (not res!278859)) b!641022))

(assert (=> bs!78484 m!913024))

(assert (=> bs!78484 m!913028))

(assert (=> bs!78484 s!23915))

(declare-fun bs!78499 () Bool)

(declare-fun s!23917 () Bool)

(assert (= bs!78499 (and neg-inst!304 s!23917)))

(declare-fun res!278860 () Bool)

(declare-fun e!391619 () Bool)

(assert (=> bs!78499 (=> res!278860 e!391619)))

(assert (=> bs!78499 (= res!278860 (not (= (list!2916 x!140376) (list!2916 x!140421))))))

(assert (=> bs!78499 (=> true e!391619)))

(declare-fun b!641023 () Bool)

(assert (=> b!641023 (= e!391619 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78499 (not res!278860)) b!641023))

(assert (=> bs!78486 m!912990))

(assert (=> bs!78486 m!913028))

(assert (=> bs!78486 s!23917))

(declare-fun bs!78500 () Bool)

(declare-fun s!23919 () Bool)

(assert (= bs!78500 (and neg-inst!304 s!23919)))

(declare-fun res!278861 () Bool)

(declare-fun e!391620 () Bool)

(assert (=> bs!78500 (=> res!278861 e!391620)))

(assert (=> bs!78500 (= res!278861 (not (= (list!2916 x!140374) (list!2916 x!140421))))))

(assert (=> bs!78500 (=> true e!391620)))

(declare-fun b!641024 () Bool)

(assert (=> b!641024 (= e!391620 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78500 (not res!278861)) b!641024))

(assert (=> bs!78492 m!912978))

(assert (=> bs!78492 m!913028))

(assert (=> bs!78492 s!23919))

(declare-fun bs!78501 () Bool)

(declare-fun s!23921 () Bool)

(assert (= bs!78501 (and neg-inst!304 s!23921)))

(declare-fun res!278862 () Bool)

(declare-fun e!391621 () Bool)

(assert (=> bs!78501 (=> res!278862 e!391621)))

(assert (=> bs!78501 (= res!278862 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140421))))))

(assert (=> bs!78501 (=> true e!391621)))

(declare-fun b!641025 () Bool)

(assert (=> b!641025 (= e!391621 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78501 (not res!278862)) b!641025))

(assert (=> bs!78481 m!913020))

(assert (=> bs!78481 m!913028))

(assert (=> bs!78481 s!23921))

(declare-fun bs!78502 () Bool)

(declare-fun s!23923 () Bool)

(assert (= bs!78502 (and neg-inst!304 s!23923)))

(declare-fun res!278863 () Bool)

(declare-fun e!391622 () Bool)

(assert (=> bs!78502 (=> res!278863 e!391622)))

(assert (=> bs!78502 (= res!278863 (not (= (list!2916 x!140420) (list!2916 x!140421))))))

(assert (=> bs!78502 (=> true e!391622)))

(declare-fun b!641026 () Bool)

(assert (=> b!641026 (= e!391622 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78502 (not res!278863)) b!641026))

(assert (=> bs!78488 m!913026))

(assert (=> bs!78488 m!913028))

(assert (=> bs!78488 s!23923))

(declare-fun bs!78503 () Bool)

(declare-fun s!23925 () Bool)

(assert (= bs!78503 (and neg-inst!304 s!23925)))

(declare-fun res!278864 () Bool)

(declare-fun e!391623 () Bool)

(assert (=> bs!78503 (=> res!278864 e!391623)))

(assert (=> bs!78503 (= res!278864 (not (= (list!2916 lt!275166) (list!2916 x!140421))))))

(assert (=> bs!78503 (=> true e!391623)))

(declare-fun b!641027 () Bool)

(assert (=> b!641027 (= e!391623 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78503 (not res!278864)) b!641027))

(assert (=> bs!78496 m!912970))

(assert (=> bs!78496 m!913028))

(assert (=> bs!78496 s!23925))

(declare-fun bs!78504 () Bool)

(declare-fun s!23927 () Bool)

(assert (= bs!78504 (and neg-inst!304 s!23927)))

(declare-fun res!278865 () Bool)

(declare-fun e!391624 () Bool)

(assert (=> bs!78504 (=> res!278865 e!391624)))

(assert (=> bs!78504 (= res!278865 (not (= (list!2916 x!140375) (list!2916 x!140421))))))

(assert (=> bs!78504 (=> true e!391624)))

(declare-fun b!641028 () Bool)

(assert (=> b!641028 (= e!391624 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78504 (not res!278865)) b!641028))

(assert (=> bs!78494 m!912988))

(assert (=> bs!78494 m!913028))

(assert (=> bs!78494 s!23927))

(assert (=> d!223243 m!913028))

(declare-fun m!913030 () Bool)

(assert (=> d!223243 m!913030))

(declare-fun m!913032 () Bool)

(assert (=> d!223243 m!913032))

(declare-fun m!913034 () Bool)

(assert (=> b!640994 m!913034))

(declare-fun m!913036 () Bool)

(assert (=> b!640994 m!913036))

(declare-fun m!913038 () Bool)

(assert (=> b!640995 m!913038))

(declare-fun m!913040 () Bool)

(assert (=> b!640996 m!913040))

(declare-fun bs!78505 () Bool)

(declare-fun neg-inst!310 () Bool)

(declare-fun s!23929 () Bool)

(assert (= bs!78505 (and neg-inst!310 s!23929)))

(assert (=> bs!78505 (=> true (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140419)))))

(assert (=> m!913016 m!913018))

(assert (=> m!913016 m!913020))

(assert (=> m!913016 m!913024))

(assert (=> m!913016 s!23929))

(assert (=> m!913024 s!23929))

(declare-fun bs!78506 () Bool)

(assert (= bs!78506 (and neg-inst!310 d!223243)))

(assert (=> bs!78506 (= true inst!310)))

(declare-fun bs!78507 () Bool)

(declare-fun neg-inst!311 () Bool)

(declare-fun s!23931 () Bool)

(assert (= bs!78507 (and neg-inst!311 s!23931)))

(declare-fun res!278866 () Bool)

(declare-fun e!391625 () Bool)

(assert (=> bs!78507 (=> res!278866 e!391625)))

(assert (=> bs!78507 (= res!278866 (not (= (list!2916 x!140420) (list!2916 x!140420))))))

(assert (=> bs!78507 (=> true e!391625)))

(declare-fun b!641029 () Bool)

(assert (=> b!641029 (= e!391625 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78507 (not res!278866)) b!641029))

(assert (=> m!913026 s!23931))

(assert (=> m!913026 s!23931))

(declare-fun bs!78508 () Bool)

(declare-fun s!23933 () Bool)

(assert (= bs!78508 (and neg-inst!311 s!23933)))

(declare-fun res!278867 () Bool)

(declare-fun e!391626 () Bool)

(assert (=> bs!78508 (=> res!278867 e!391626)))

(assert (=> bs!78508 (= res!278867 (not (= (list!2916 x!140419) (list!2916 x!140420))))))

(assert (=> bs!78508 (=> true e!391626)))

(declare-fun b!641030 () Bool)

(assert (=> b!641030 (= e!391626 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78508 (not res!278867)) b!641030))

(declare-fun bs!78509 () Bool)

(assert (= bs!78509 (and m!913016 m!913026)))

(assert (=> bs!78509 m!913024))

(assert (=> bs!78509 m!913026))

(assert (=> bs!78509 s!23933))

(declare-fun bs!78510 () Bool)

(declare-fun s!23935 () Bool)

(assert (= bs!78510 (and neg-inst!311 s!23935)))

(declare-fun res!278868 () Bool)

(declare-fun e!391627 () Bool)

(assert (=> bs!78510 (=> res!278868 e!391627)))

(assert (=> bs!78510 (= res!278868 (not (= (list!2916 x!140419) (list!2916 x!140419))))))

(assert (=> bs!78510 (=> true e!391627)))

(declare-fun b!641031 () Bool)

(assert (=> b!641031 (= e!391627 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78510 (not res!278868)) b!641031))

(assert (=> m!913016 m!913024))

(assert (=> m!913016 m!913024))

(assert (=> m!913016 s!23935))

(declare-fun bs!78511 () Bool)

(declare-fun s!23937 () Bool)

(assert (= bs!78511 (and neg-inst!311 s!23937)))

(declare-fun res!278869 () Bool)

(declare-fun e!391628 () Bool)

(assert (=> bs!78511 (=> res!278869 e!391628)))

(assert (=> bs!78511 (= res!278869 (not (= (list!2916 x!140420) (list!2916 x!140419))))))

(assert (=> bs!78511 (=> true e!391628)))

(declare-fun b!641032 () Bool)

(assert (=> b!641032 (= e!391628 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78511 (not res!278869)) b!641032))

(assert (=> bs!78509 m!913026))

(assert (=> bs!78509 m!913024))

(assert (=> bs!78509 s!23937))

(assert (=> m!913016 s!23935))

(declare-fun bs!78512 () Bool)

(declare-fun s!23939 () Bool)

(assert (= bs!78512 (and neg-inst!311 s!23939)))

(declare-fun res!278870 () Bool)

(declare-fun e!391629 () Bool)

(assert (=> bs!78512 (=> res!278870 e!391629)))

(assert (=> bs!78512 (= res!278870 (not (= (list!2916 lt!275166) (list!2916 x!140419))))))

(assert (=> bs!78512 (=> true e!391629)))

(declare-fun b!641033 () Bool)

(assert (=> b!641033 (= e!391629 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78512 (not res!278870)) b!641033))

(declare-fun bs!78513 () Bool)

(assert (= bs!78513 (and m!912970 m!913016)))

(assert (=> bs!78513 m!912970))

(assert (=> bs!78513 m!913024))

(assert (=> bs!78513 s!23939))

(declare-fun bs!78514 () Bool)

(declare-fun s!23941 () Bool)

(assert (= bs!78514 (and neg-inst!311 s!23941)))

(declare-fun res!278871 () Bool)

(declare-fun e!391630 () Bool)

(assert (=> bs!78514 (=> res!278871 e!391630)))

(assert (=> bs!78514 (= res!278871 (not (= (list!2916 lt!275166) (list!2916 x!140420))))))

(assert (=> bs!78514 (=> true e!391630)))

(declare-fun b!641034 () Bool)

(assert (=> b!641034 (= e!391630 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78514 (not res!278871)) b!641034))

(assert (=> bs!78470 m!912970))

(assert (=> bs!78470 m!913026))

(assert (=> bs!78470 s!23941))

(declare-fun bs!78515 () Bool)

(declare-fun s!23943 () Bool)

(assert (= bs!78515 (and neg-inst!311 s!23943)))

(declare-fun res!278872 () Bool)

(declare-fun e!391631 () Bool)

(assert (=> bs!78515 (=> res!278872 e!391631)))

(assert (=> bs!78515 (= res!278872 (not (= (list!2916 lt!275166) (list!2916 lt!275166))))))

(assert (=> bs!78515 (=> true e!391631)))

(declare-fun b!641035 () Bool)

(assert (=> b!641035 (= e!391631 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78515 (not res!278872)) b!641035))

(assert (=> m!912970 s!23943))

(declare-fun bs!78516 () Bool)

(declare-fun s!23945 () Bool)

(assert (= bs!78516 (and neg-inst!311 s!23945)))

(declare-fun res!278873 () Bool)

(declare-fun e!391632 () Bool)

(assert (=> bs!78516 (=> res!278873 e!391632)))

(assert (=> bs!78516 (= res!278873 (not (= (list!2916 x!140419) (list!2916 lt!275166))))))

(assert (=> bs!78516 (=> true e!391632)))

(declare-fun b!641036 () Bool)

(assert (=> b!641036 (= e!391632 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78516 (not res!278873)) b!641036))

(assert (=> bs!78513 m!913024))

(assert (=> bs!78513 m!912970))

(assert (=> bs!78513 s!23945))

(declare-fun bs!78517 () Bool)

(declare-fun s!23947 () Bool)

(assert (= bs!78517 (and neg-inst!311 s!23947)))

(declare-fun res!278874 () Bool)

(declare-fun e!391633 () Bool)

(assert (=> bs!78517 (=> res!278874 e!391633)))

(assert (=> bs!78517 (= res!278874 (not (= (list!2916 x!140420) (list!2916 lt!275166))))))

(assert (=> bs!78517 (=> true e!391633)))

(declare-fun b!641037 () Bool)

(assert (=> b!641037 (= e!391633 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78517 (not res!278874)) b!641037))

(assert (=> bs!78470 m!913026))

(assert (=> bs!78470 m!912970))

(assert (=> bs!78470 s!23947))

(assert (=> m!912970 s!23943))

(declare-fun bs!78518 () Bool)

(declare-fun s!23949 () Bool)

(assert (= bs!78518 (and neg-inst!311 s!23949)))

(declare-fun res!278875 () Bool)

(declare-fun e!391634 () Bool)

(assert (=> bs!78518 (=> res!278875 e!391634)))

(assert (=> bs!78518 (= res!278875 (not (= (list!2916 x!140375) (list!2916 x!140419))))))

(assert (=> bs!78518 (=> true e!391634)))

(declare-fun b!641038 () Bool)

(assert (=> b!641038 (= e!391634 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78518 (not res!278875)) b!641038))

(declare-fun bs!78519 () Bool)

(assert (= bs!78519 (and m!912988 m!913016)))

(assert (=> bs!78519 m!912988))

(assert (=> bs!78519 m!913024))

(assert (=> bs!78519 s!23949))

(declare-fun bs!78520 () Bool)

(declare-fun s!23951 () Bool)

(assert (= bs!78520 (and neg-inst!311 s!23951)))

(declare-fun res!278876 () Bool)

(declare-fun e!391635 () Bool)

(assert (=> bs!78520 (=> res!278876 e!391635)))

(assert (=> bs!78520 (= res!278876 (not (= (list!2916 x!140375) (list!2916 lt!275166))))))

(assert (=> bs!78520 (=> true e!391635)))

(declare-fun b!641039 () Bool)

(assert (=> b!641039 (= e!391635 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78520 (not res!278876)) b!641039))

(assert (=> bs!78386 m!912988))

(assert (=> bs!78386 m!912970))

(assert (=> bs!78386 s!23951))

(declare-fun bs!78521 () Bool)

(declare-fun s!23953 () Bool)

(assert (= bs!78521 (and neg-inst!311 s!23953)))

(declare-fun res!278877 () Bool)

(declare-fun e!391636 () Bool)

(assert (=> bs!78521 (=> res!278877 e!391636)))

(assert (=> bs!78521 (= res!278877 (not (= (list!2916 x!140375) (list!2916 x!140420))))))

(assert (=> bs!78521 (=> true e!391636)))

(declare-fun b!641040 () Bool)

(assert (=> b!641040 (= e!391636 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78521 (not res!278877)) b!641040))

(declare-fun bs!78522 () Bool)

(assert (= bs!78522 (and m!912988 m!913026)))

(assert (=> bs!78522 m!912988))

(assert (=> bs!78522 m!913026))

(assert (=> bs!78522 s!23953))

(declare-fun bs!78523 () Bool)

(declare-fun s!23955 () Bool)

(assert (= bs!78523 (and neg-inst!311 s!23955)))

(declare-fun res!278878 () Bool)

(declare-fun e!391637 () Bool)

(assert (=> bs!78523 (=> res!278878 e!391637)))

(assert (=> bs!78523 (= res!278878 (not (= (list!2916 x!140375) (list!2916 x!140375))))))

(assert (=> bs!78523 (=> true e!391637)))

(declare-fun b!641041 () Bool)

(assert (=> b!641041 (= e!391637 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78523 (not res!278878)) b!641041))

(assert (=> m!912988 s!23955))

(declare-fun bs!78524 () Bool)

(declare-fun s!23957 () Bool)

(assert (= bs!78524 (and neg-inst!311 s!23957)))

(declare-fun res!278879 () Bool)

(declare-fun e!391638 () Bool)

(assert (=> bs!78524 (=> res!278879 e!391638)))

(assert (=> bs!78524 (= res!278879 (not (= (list!2916 x!140419) (list!2916 x!140375))))))

(assert (=> bs!78524 (=> true e!391638)))

(declare-fun b!641042 () Bool)

(assert (=> b!641042 (= e!391638 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78524 (not res!278879)) b!641042))

(assert (=> bs!78519 m!913024))

(assert (=> bs!78519 m!912988))

(assert (=> bs!78519 s!23957))

(declare-fun bs!78525 () Bool)

(declare-fun s!23959 () Bool)

(assert (= bs!78525 (and neg-inst!311 s!23959)))

(declare-fun res!278880 () Bool)

(declare-fun e!391639 () Bool)

(assert (=> bs!78525 (=> res!278880 e!391639)))

(assert (=> bs!78525 (= res!278880 (not (= (list!2916 lt!275166) (list!2916 x!140375))))))

(assert (=> bs!78525 (=> true e!391639)))

(declare-fun b!641043 () Bool)

(assert (=> b!641043 (= e!391639 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78525 (not res!278880)) b!641043))

(assert (=> bs!78386 m!912970))

(assert (=> bs!78386 m!912988))

(assert (=> bs!78386 s!23959))

(declare-fun bs!78526 () Bool)

(declare-fun s!23961 () Bool)

(assert (= bs!78526 (and neg-inst!311 s!23961)))

(declare-fun res!278881 () Bool)

(declare-fun e!391640 () Bool)

(assert (=> bs!78526 (=> res!278881 e!391640)))

(assert (=> bs!78526 (= res!278881 (not (= (list!2916 x!140420) (list!2916 x!140375))))))

(assert (=> bs!78526 (=> true e!391640)))

(declare-fun b!641044 () Bool)

(assert (=> b!641044 (= e!391640 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78526 (not res!278881)) b!641044))

(assert (=> bs!78522 m!913026))

(assert (=> bs!78522 m!912988))

(assert (=> bs!78522 s!23961))

(assert (=> m!912988 s!23955))

(assert (=> bs!78440 s!23945))

(declare-fun bs!78527 () Bool)

(assert (= bs!78527 (and m!913024 m!912988)))

(assert (=> bs!78527 s!23957))

(assert (=> m!913024 s!23935))

(assert (=> bs!78466 s!23933))

(declare-fun bs!78528 () Bool)

(assert (= bs!78528 (and m!913024 m!913016)))

(assert (=> bs!78528 s!23935))

(assert (=> bs!78440 s!23939))

(assert (=> bs!78466 s!23937))

(assert (=> m!913024 s!23935))

(assert (=> bs!78528 s!23935))

(assert (=> bs!78527 s!23949))

(declare-fun bs!78529 () Bool)

(declare-fun s!23963 () Bool)

(assert (= bs!78529 (and neg-inst!311 s!23963)))

(declare-fun res!278882 () Bool)

(declare-fun e!391641 () Bool)

(assert (=> bs!78529 (=> res!278882 e!391641)))

(assert (=> bs!78529 (= res!278882 (not (= (list!2916 x!140374) (list!2916 x!140374))))))

(assert (=> bs!78529 (=> true e!391641)))

(declare-fun b!641045 () Bool)

(assert (=> b!641045 (= e!391641 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78529 (not res!278882)) b!641045))

(assert (=> m!912978 s!23963))

(declare-fun bs!78530 () Bool)

(declare-fun s!23965 () Bool)

(assert (= bs!78530 (and neg-inst!311 s!23965)))

(declare-fun res!278883 () Bool)

(declare-fun e!391642 () Bool)

(assert (=> bs!78530 (=> res!278883 e!391642)))

(assert (=> bs!78530 (= res!278883 (not (= (list!2916 x!140374) (list!2916 x!140419))))))

(assert (=> bs!78530 (=> true e!391642)))

(declare-fun b!641046 () Bool)

(assert (=> b!641046 (= e!391642 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78530 (not res!278883)) b!641046))

(declare-fun bs!78531 () Bool)

(assert (= bs!78531 (and m!912978 m!913016 m!913024)))

(assert (=> bs!78531 m!912978))

(assert (=> bs!78531 m!913024))

(assert (=> bs!78531 s!23965))

(declare-fun bs!78532 () Bool)

(declare-fun s!23967 () Bool)

(assert (= bs!78532 (and neg-inst!311 s!23967)))

(declare-fun res!278884 () Bool)

(declare-fun e!391643 () Bool)

(assert (=> bs!78532 (=> res!278884 e!391643)))

(assert (=> bs!78532 (= res!278884 (not (= (list!2916 x!140374) (list!2916 x!140375))))))

(assert (=> bs!78532 (=> true e!391643)))

(declare-fun b!641047 () Bool)

(assert (=> b!641047 (= e!391643 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78532 (not res!278884)) b!641047))

(declare-fun bs!78533 () Bool)

(assert (= bs!78533 (and m!912978 m!912988)))

(assert (=> bs!78533 m!912978))

(assert (=> bs!78533 m!912988))

(assert (=> bs!78533 s!23967))

(declare-fun bs!78534 () Bool)

(declare-fun s!23969 () Bool)

(assert (= bs!78534 (and neg-inst!311 s!23969)))

(declare-fun res!278885 () Bool)

(declare-fun e!391644 () Bool)

(assert (=> bs!78534 (=> res!278885 e!391644)))

(assert (=> bs!78534 (= res!278885 (not (= (list!2916 x!140374) (list!2916 lt!275166))))))

(assert (=> bs!78534 (=> true e!391644)))

(declare-fun b!641048 () Bool)

(assert (=> b!641048 (= e!391644 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78534 (not res!278885)) b!641048))

(assert (=> bs!78390 m!912978))

(assert (=> bs!78390 m!912970))

(assert (=> bs!78390 s!23969))

(declare-fun bs!78535 () Bool)

(declare-fun s!23971 () Bool)

(assert (= bs!78535 (and neg-inst!311 s!23971)))

(declare-fun res!278886 () Bool)

(declare-fun e!391645 () Bool)

(assert (=> bs!78535 (=> res!278886 e!391645)))

(assert (=> bs!78535 (= res!278886 (not (= (list!2916 x!140374) (list!2916 x!140420))))))

(assert (=> bs!78535 (=> true e!391645)))

(declare-fun b!641049 () Bool)

(assert (=> b!641049 (= e!391645 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78535 (not res!278886)) b!641049))

(declare-fun bs!78536 () Bool)

(assert (= bs!78536 (and m!912978 m!913026)))

(assert (=> bs!78536 m!912978))

(assert (=> bs!78536 m!913026))

(assert (=> bs!78536 s!23971))

(assert (=> m!912978 s!23963))

(declare-fun bs!78537 () Bool)

(declare-fun s!23973 () Bool)

(assert (= bs!78537 (and neg-inst!311 s!23973)))

(declare-fun res!278887 () Bool)

(declare-fun e!391646 () Bool)

(assert (=> bs!78537 (=> res!278887 e!391646)))

(assert (=> bs!78537 (= res!278887 (not (= (list!2916 lt!275166) (list!2916 x!140374))))))

(assert (=> bs!78537 (=> true e!391646)))

(declare-fun b!641050 () Bool)

(assert (=> b!641050 (= e!391646 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78537 (not res!278887)) b!641050))

(assert (=> bs!78390 m!912970))

(assert (=> bs!78390 m!912978))

(assert (=> bs!78390 s!23973))

(declare-fun bs!78538 () Bool)

(declare-fun s!23975 () Bool)

(assert (= bs!78538 (and neg-inst!311 s!23975)))

(declare-fun res!278888 () Bool)

(declare-fun e!391647 () Bool)

(assert (=> bs!78538 (=> res!278888 e!391647)))

(assert (=> bs!78538 (= res!278888 (not (= (list!2916 x!140420) (list!2916 x!140374))))))

(assert (=> bs!78538 (=> true e!391647)))

(declare-fun b!641051 () Bool)

(assert (=> b!641051 (= e!391647 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78538 (not res!278888)) b!641051))

(assert (=> bs!78536 m!913026))

(assert (=> bs!78536 m!912978))

(assert (=> bs!78536 s!23975))

(declare-fun bs!78539 () Bool)

(declare-fun s!23977 () Bool)

(assert (= bs!78539 (and neg-inst!311 s!23977)))

(declare-fun res!278889 () Bool)

(declare-fun e!391648 () Bool)

(assert (=> bs!78539 (=> res!278889 e!391648)))

(assert (=> bs!78539 (= res!278889 (not (= (list!2916 x!140419) (list!2916 x!140374))))))

(assert (=> bs!78539 (=> true e!391648)))

(declare-fun b!641052 () Bool)

(assert (=> b!641052 (= e!391648 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78539 (not res!278889)) b!641052))

(assert (=> bs!78531 m!913024))

(assert (=> bs!78531 m!912978))

(assert (=> bs!78531 s!23977))

(declare-fun bs!78540 () Bool)

(declare-fun s!23979 () Bool)

(assert (= bs!78540 (and neg-inst!311 s!23979)))

(declare-fun res!278890 () Bool)

(declare-fun e!391649 () Bool)

(assert (=> bs!78540 (=> res!278890 e!391649)))

(assert (=> bs!78540 (= res!278890 (not (= (list!2916 x!140375) (list!2916 x!140374))))))

(assert (=> bs!78540 (=> true e!391649)))

(declare-fun b!641053 () Bool)

(assert (=> b!641053 (= e!391649 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78540 (not res!278890)) b!641053))

(assert (=> bs!78533 m!912988))

(assert (=> bs!78533 m!912978))

(assert (=> bs!78533 s!23979))

(declare-fun bs!78541 () Bool)

(declare-fun s!23981 () Bool)

(assert (= bs!78541 (and neg-inst!311 s!23981)))

(declare-fun res!278891 () Bool)

(declare-fun e!391650 () Bool)

(assert (=> bs!78541 (=> res!278891 e!391650)))

(assert (=> bs!78541 (= res!278891 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140374))))))

(assert (=> bs!78541 (=> true e!391650)))

(declare-fun b!641054 () Bool)

(assert (=> b!641054 (= e!391650 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78541 (not res!278891)) b!641054))

(declare-fun bs!78542 () Bool)

(assert (= bs!78542 (and m!913020 m!912978)))

(assert (=> bs!78542 m!913020))

(assert (=> bs!78542 m!912978))

(assert (=> bs!78542 s!23981))

(declare-fun bs!78543 () Bool)

(declare-fun s!23983 () Bool)

(assert (= bs!78543 (and neg-inst!311 s!23983)))

(declare-fun res!278892 () Bool)

(declare-fun e!391651 () Bool)

(assert (=> bs!78543 (=> res!278892 e!391651)))

(assert (=> bs!78543 (= res!278892 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140375))))))

(assert (=> bs!78543 (=> true e!391651)))

(declare-fun b!641055 () Bool)

(assert (=> b!641055 (= e!391651 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78543 (not res!278892)) b!641055))

(declare-fun bs!78544 () Bool)

(assert (= bs!78544 (and m!913020 m!912988)))

(assert (=> bs!78544 m!913020))

(assert (=> bs!78544 m!912988))

(assert (=> bs!78544 s!23983))

(declare-fun bs!78545 () Bool)

(declare-fun s!23985 () Bool)

(assert (= bs!78545 (and neg-inst!311 s!23985)))

(declare-fun res!278893 () Bool)

(declare-fun e!391652 () Bool)

(assert (=> bs!78545 (=> res!278893 e!391652)))

(assert (=> bs!78545 (= res!278893 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78545 (=> true e!391652)))

(declare-fun b!641056 () Bool)

(assert (=> b!641056 (= e!391652 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78545 (not res!278893)) b!641056))

(assert (=> m!913020 s!23985))

(declare-fun bs!78546 () Bool)

(declare-fun s!23987 () Bool)

(assert (= bs!78546 (and neg-inst!311 s!23987)))

(declare-fun res!278894 () Bool)

(declare-fun e!391653 () Bool)

(assert (=> bs!78546 (=> res!278894 e!391653)))

(assert (=> bs!78546 (= res!278894 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140420))))))

(assert (=> bs!78546 (=> true e!391653)))

(declare-fun b!641057 () Bool)

(assert (=> b!641057 (= e!391653 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78546 (not res!278894)) b!641057))

(assert (=> bs!78463 m!913020))

(assert (=> bs!78463 m!913026))

(assert (=> bs!78463 s!23987))

(declare-fun bs!78547 () Bool)

(declare-fun s!23989 () Bool)

(assert (= bs!78547 (and neg-inst!311 s!23989)))

(declare-fun res!278895 () Bool)

(declare-fun e!391654 () Bool)

(assert (=> bs!78547 (=> res!278895 e!391654)))

(assert (=> bs!78547 (= res!278895 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275166))))))

(assert (=> bs!78547 (=> true e!391654)))

(declare-fun b!641058 () Bool)

(assert (=> b!641058 (= e!391654 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78547 (not res!278895)) b!641058))

(assert (=> bs!78431 m!913020))

(assert (=> bs!78431 m!912970))

(assert (=> bs!78431 s!23989))

(declare-fun bs!78548 () Bool)

(declare-fun s!23991 () Bool)

(assert (= bs!78548 (and neg-inst!311 s!23991)))

(declare-fun res!278896 () Bool)

(declare-fun e!391655 () Bool)

(assert (=> bs!78548 (=> res!278896 e!391655)))

(assert (=> bs!78548 (= res!278896 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140419))))))

(assert (=> bs!78548 (=> true e!391655)))

(declare-fun b!641059 () Bool)

(assert (=> b!641059 (= e!391655 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78548 (not res!278896)) b!641059))

(declare-fun bs!78549 () Bool)

(assert (= bs!78549 (and m!913020 m!913016 m!913024)))

(assert (=> bs!78549 m!913020))

(assert (=> bs!78549 m!913024))

(assert (=> bs!78549 s!23991))

(declare-fun bs!78550 () Bool)

(declare-fun s!23993 () Bool)

(assert (= bs!78550 (and neg-inst!311 s!23993)))

(declare-fun res!278897 () Bool)

(declare-fun e!391656 () Bool)

(assert (=> bs!78550 (=> res!278897 e!391656)))

(assert (=> bs!78550 (= res!278897 (not (= (list!2916 x!140375) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78550 (=> true e!391656)))

(declare-fun b!641060 () Bool)

(assert (=> b!641060 (= e!391656 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78550 (not res!278897)) b!641060))

(assert (=> bs!78544 m!912988))

(assert (=> bs!78544 m!913020))

(assert (=> bs!78544 s!23993))

(assert (=> m!913020 s!23985))

(declare-fun bs!78551 () Bool)

(declare-fun s!23995 () Bool)

(assert (= bs!78551 (and neg-inst!311 s!23995)))

(declare-fun res!278898 () Bool)

(declare-fun e!391657 () Bool)

(assert (=> bs!78551 (=> res!278898 e!391657)))

(assert (=> bs!78551 (= res!278898 (not (= (list!2916 x!140374) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78551 (=> true e!391657)))

(declare-fun b!641061 () Bool)

(assert (=> b!641061 (= e!391657 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78551 (not res!278898)) b!641061))

(assert (=> bs!78542 m!912978))

(assert (=> bs!78542 m!913020))

(assert (=> bs!78542 s!23995))

(declare-fun bs!78552 () Bool)

(declare-fun s!23997 () Bool)

(assert (= bs!78552 (and neg-inst!311 s!23997)))

(declare-fun res!278899 () Bool)

(declare-fun e!391658 () Bool)

(assert (=> bs!78552 (=> res!278899 e!391658)))

(assert (=> bs!78552 (= res!278899 (not (= (list!2916 lt!275166) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78552 (=> true e!391658)))

(declare-fun b!641062 () Bool)

(assert (=> b!641062 (= e!391658 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78552 (not res!278899)) b!641062))

(assert (=> bs!78431 m!912970))

(assert (=> bs!78431 m!913020))

(assert (=> bs!78431 s!23997))

(declare-fun bs!78553 () Bool)

(declare-fun s!23999 () Bool)

(assert (= bs!78553 (and neg-inst!311 s!23999)))

(declare-fun res!278900 () Bool)

(declare-fun e!391659 () Bool)

(assert (=> bs!78553 (=> res!278900 e!391659)))

(assert (=> bs!78553 (= res!278900 (not (= (list!2916 x!140420) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78553 (=> true e!391659)))

(declare-fun b!641063 () Bool)

(assert (=> b!641063 (= e!391659 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78553 (not res!278900)) b!641063))

(assert (=> bs!78463 m!913026))

(assert (=> bs!78463 m!913020))

(assert (=> bs!78463 s!23999))

(declare-fun bs!78554 () Bool)

(declare-fun s!24001 () Bool)

(assert (= bs!78554 (and neg-inst!311 s!24001)))

(declare-fun res!278901 () Bool)

(declare-fun e!391660 () Bool)

(assert (=> bs!78554 (=> res!278901 e!391660)))

(assert (=> bs!78554 (= res!278901 (not (= (list!2916 x!140419) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78554 (=> true e!391660)))

(declare-fun b!641064 () Bool)

(assert (=> b!641064 (= e!391660 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78554 (not res!278901)) b!641064))

(assert (=> bs!78549 m!913024))

(assert (=> bs!78549 m!913020))

(assert (=> bs!78549 s!24001))

(declare-fun bs!78555 () Bool)

(declare-fun s!24003 () Bool)

(assert (= bs!78555 (and neg-inst!311 s!24003)))

(declare-fun res!278902 () Bool)

(declare-fun e!391661 () Bool)

(assert (=> bs!78555 (=> res!278902 e!391661)))

(assert (=> bs!78555 (= res!278902 (not (= (list!2916 x!140376) (list!2916 x!140376))))))

(assert (=> bs!78555 (=> true e!391661)))

(declare-fun b!641065 () Bool)

(assert (=> b!641065 (= e!391661 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78555 (not res!278902)) b!641065))

(assert (=> m!912990 s!24003))

(declare-fun bs!78556 () Bool)

(declare-fun s!24005 () Bool)

(assert (= bs!78556 (and neg-inst!311 s!24005)))

(declare-fun res!278903 () Bool)

(declare-fun e!391662 () Bool)

(assert (=> bs!78556 (=> res!278903 e!391662)))

(assert (=> bs!78556 (= res!278903 (not (= (list!2916 x!140376) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78556 (=> true e!391662)))

(declare-fun b!641066 () Bool)

(assert (=> b!641066 (= e!391662 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78556 (not res!278903)) b!641066))

(declare-fun bs!78557 () Bool)

(assert (= bs!78557 (and m!912990 m!913020)))

(assert (=> bs!78557 m!912990))

(assert (=> bs!78557 m!913020))

(assert (=> bs!78557 s!24005))

(declare-fun bs!78558 () Bool)

(declare-fun s!24007 () Bool)

(assert (= bs!78558 (and neg-inst!311 s!24007)))

(declare-fun res!278904 () Bool)

(declare-fun e!391663 () Bool)

(assert (=> bs!78558 (=> res!278904 e!391663)))

(assert (=> bs!78558 (= res!278904 (not (= (list!2916 x!140376) (list!2916 x!140374))))))

(assert (=> bs!78558 (=> true e!391663)))

(declare-fun b!641067 () Bool)

(assert (=> b!641067 (= e!391663 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78558 (not res!278904)) b!641067))

(declare-fun bs!78559 () Bool)

(assert (= bs!78559 (and m!912990 m!912978)))

(assert (=> bs!78559 m!912990))

(assert (=> bs!78559 m!912978))

(assert (=> bs!78559 s!24007))

(declare-fun bs!78560 () Bool)

(declare-fun s!24009 () Bool)

(assert (= bs!78560 (and neg-inst!311 s!24009)))

(declare-fun res!278905 () Bool)

(declare-fun e!391664 () Bool)

(assert (=> bs!78560 (=> res!278905 e!391664)))

(assert (=> bs!78560 (= res!278905 (not (= (list!2916 x!140376) (list!2916 x!140420))))))

(assert (=> bs!78560 (=> true e!391664)))

(declare-fun b!641068 () Bool)

(assert (=> b!641068 (= e!391664 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78560 (not res!278905)) b!641068))

(declare-fun bs!78561 () Bool)

(assert (= bs!78561 (and m!912990 m!913026)))

(assert (=> bs!78561 m!912990))

(assert (=> bs!78561 m!913026))

(assert (=> bs!78561 s!24009))

(declare-fun bs!78562 () Bool)

(declare-fun s!24011 () Bool)

(assert (= bs!78562 (and neg-inst!311 s!24011)))

(declare-fun res!278906 () Bool)

(declare-fun e!391665 () Bool)

(assert (=> bs!78562 (=> res!278906 e!391665)))

(assert (=> bs!78562 (= res!278906 (not (= (list!2916 x!140376) (list!2916 x!140419))))))

(assert (=> bs!78562 (=> true e!391665)))

(declare-fun b!641069 () Bool)

(assert (=> b!641069 (= e!391665 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78562 (not res!278906)) b!641069))

(declare-fun bs!78563 () Bool)

(assert (= bs!78563 (and m!912990 m!913016 m!913024)))

(assert (=> bs!78563 m!912990))

(assert (=> bs!78563 m!913024))

(assert (=> bs!78563 s!24011))

(declare-fun bs!78564 () Bool)

(declare-fun s!24013 () Bool)

(assert (= bs!78564 (and neg-inst!311 s!24013)))

(declare-fun res!278907 () Bool)

(declare-fun e!391666 () Bool)

(assert (=> bs!78564 (=> res!278907 e!391666)))

(assert (=> bs!78564 (= res!278907 (not (= (list!2916 x!140376) (list!2916 lt!275166))))))

(assert (=> bs!78564 (=> true e!391666)))

(declare-fun b!641070 () Bool)

(assert (=> b!641070 (= e!391666 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78564 (not res!278907)) b!641070))

(assert (=> bs!78406 m!912990))

(assert (=> bs!78406 m!912970))

(assert (=> bs!78406 s!24013))

(declare-fun bs!78565 () Bool)

(declare-fun s!24015 () Bool)

(assert (= bs!78565 (and neg-inst!311 s!24015)))

(declare-fun res!278908 () Bool)

(declare-fun e!391667 () Bool)

(assert (=> bs!78565 (=> res!278908 e!391667)))

(assert (=> bs!78565 (= res!278908 (not (= (list!2916 x!140376) (list!2916 x!140375))))))

(assert (=> bs!78565 (=> true e!391667)))

(declare-fun b!641071 () Bool)

(assert (=> b!641071 (= e!391667 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78565 (not res!278908)) b!641071))

(declare-fun bs!78566 () Bool)

(assert (= bs!78566 (and m!912990 m!912988)))

(assert (=> bs!78566 m!912990))

(assert (=> bs!78566 m!912988))

(assert (=> bs!78566 s!24015))

(declare-fun bs!78567 () Bool)

(declare-fun s!24017 () Bool)

(assert (= bs!78567 (and neg-inst!311 s!24017)))

(declare-fun res!278909 () Bool)

(declare-fun e!391668 () Bool)

(assert (=> bs!78567 (=> res!278909 e!391668)))

(assert (=> bs!78567 (= res!278909 (not (= (list!2916 x!140420) (list!2916 x!140376))))))

(assert (=> bs!78567 (=> true e!391668)))

(declare-fun b!641072 () Bool)

(assert (=> b!641072 (= e!391668 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78567 (not res!278909)) b!641072))

(assert (=> bs!78561 m!913026))

(assert (=> bs!78561 m!912990))

(assert (=> bs!78561 s!24017))

(declare-fun bs!78568 () Bool)

(declare-fun s!24019 () Bool)

(assert (= bs!78568 (and neg-inst!311 s!24019)))

(declare-fun res!278910 () Bool)

(declare-fun e!391669 () Bool)

(assert (=> bs!78568 (=> res!278910 e!391669)))

(assert (=> bs!78568 (= res!278910 (not (= (list!2916 lt!275166) (list!2916 x!140376))))))

(assert (=> bs!78568 (=> true e!391669)))

(declare-fun b!641073 () Bool)

(assert (=> b!641073 (= e!391669 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78568 (not res!278910)) b!641073))

(assert (=> bs!78406 m!912970))

(assert (=> bs!78406 m!912990))

(assert (=> bs!78406 s!24019))

(declare-fun bs!78569 () Bool)

(declare-fun s!24021 () Bool)

(assert (= bs!78569 (and neg-inst!311 s!24021)))

(declare-fun res!278911 () Bool)

(declare-fun e!391670 () Bool)

(assert (=> bs!78569 (=> res!278911 e!391670)))

(assert (=> bs!78569 (= res!278911 (not (= (list!2916 x!140375) (list!2916 x!140376))))))

(assert (=> bs!78569 (=> true e!391670)))

(declare-fun b!641074 () Bool)

(assert (=> b!641074 (= e!391670 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78569 (not res!278911)) b!641074))

(assert (=> bs!78566 m!912988))

(assert (=> bs!78566 m!912990))

(assert (=> bs!78566 s!24021))

(assert (=> m!912990 s!24003))

(declare-fun bs!78570 () Bool)

(declare-fun s!24023 () Bool)

(assert (= bs!78570 (and neg-inst!311 s!24023)))

(declare-fun res!278912 () Bool)

(declare-fun e!391671 () Bool)

(assert (=> bs!78570 (=> res!278912 e!391671)))

(assert (=> bs!78570 (= res!278912 (not (= (list!2916 x!140419) (list!2916 x!140376))))))

(assert (=> bs!78570 (=> true e!391671)))

(declare-fun b!641075 () Bool)

(assert (=> b!641075 (= e!391671 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78570 (not res!278912)) b!641075))

(assert (=> bs!78563 m!913024))

(assert (=> bs!78563 m!912990))

(assert (=> bs!78563 s!24023))

(declare-fun bs!78571 () Bool)

(declare-fun s!24025 () Bool)

(assert (= bs!78571 (and neg-inst!311 s!24025)))

(declare-fun res!278913 () Bool)

(declare-fun e!391672 () Bool)

(assert (=> bs!78571 (=> res!278913 e!391672)))

(assert (=> bs!78571 (= res!278913 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140376))))))

(assert (=> bs!78571 (=> true e!391672)))

(declare-fun b!641076 () Bool)

(assert (=> b!641076 (= e!391672 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78571 (not res!278913)) b!641076))

(assert (=> bs!78557 m!913020))

(assert (=> bs!78557 m!912990))

(assert (=> bs!78557 s!24025))

(declare-fun bs!78572 () Bool)

(declare-fun s!24027 () Bool)

(assert (= bs!78572 (and neg-inst!311 s!24027)))

(declare-fun res!278914 () Bool)

(declare-fun e!391673 () Bool)

(assert (=> bs!78572 (=> res!278914 e!391673)))

(assert (=> bs!78572 (= res!278914 (not (= (list!2916 x!140374) (list!2916 x!140376))))))

(assert (=> bs!78572 (=> true e!391673)))

(declare-fun b!641077 () Bool)

(assert (=> b!641077 (= e!391673 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78572 (not res!278914)) b!641077))

(assert (=> bs!78559 m!912978))

(assert (=> bs!78559 m!912990))

(assert (=> bs!78559 s!24027))

(declare-fun bs!78573 () Bool)

(assert (= bs!78573 (and m!913034 m!913020)))

(assert (=> bs!78573 s!23999))

(declare-fun bs!78574 () Bool)

(assert (= bs!78574 (and m!913034 m!912978)))

(assert (=> bs!78574 s!23975))

(declare-fun bs!78575 () Bool)

(assert (= bs!78575 (and m!913034 m!913026)))

(assert (=> bs!78575 s!23931))

(assert (=> m!913034 s!23931))

(declare-fun bs!78576 () Bool)

(assert (= bs!78576 (and m!913034 m!912970)))

(assert (=> bs!78576 s!23947))

(declare-fun bs!78577 () Bool)

(assert (= bs!78577 (and m!913034 m!912990)))

(assert (=> bs!78577 s!24017))

(declare-fun bs!78578 () Bool)

(assert (= bs!78578 (and m!913034 m!913016 m!913024)))

(assert (=> bs!78578 s!23937))

(declare-fun bs!78579 () Bool)

(assert (= bs!78579 (and m!913034 m!912988)))

(assert (=> bs!78579 s!23961))

(assert (=> bs!78574 s!23971))

(assert (=> bs!78577 s!24009))

(assert (=> bs!78579 s!23953))

(assert (=> bs!78575 s!23931))

(assert (=> m!913034 s!23931))

(assert (=> bs!78573 s!23987))

(assert (=> bs!78576 s!23941))

(assert (=> bs!78578 s!23933))

(declare-fun bs!78580 () Bool)

(declare-fun s!24029 () Bool)

(assert (= bs!78580 (and neg-inst!311 s!24029)))

(declare-fun res!278915 () Bool)

(declare-fun e!391674 () Bool)

(assert (=> bs!78580 (=> res!278915 e!391674)))

(assert (=> bs!78580 (= res!278915 (not (= (list!2916 x!140421) (list!2916 x!140420))))))

(assert (=> bs!78580 (=> true e!391674)))

(declare-fun b!641078 () Bool)

(assert (=> b!641078 (= e!391674 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78580 (not res!278915)) b!641078))

(declare-fun bs!78581 () Bool)

(assert (= bs!78581 (and m!913028 m!913026 m!913034)))

(assert (=> bs!78581 m!913028))

(assert (=> bs!78581 m!913026))

(assert (=> bs!78581 s!24029))

(declare-fun bs!78582 () Bool)

(declare-fun s!24031 () Bool)

(assert (= bs!78582 (and neg-inst!311 s!24031)))

(declare-fun res!278916 () Bool)

(declare-fun e!391675 () Bool)

(assert (=> bs!78582 (=> res!278916 e!391675)))

(assert (=> bs!78582 (= res!278916 (not (= (list!2916 x!140421) (list!2916 lt!275166))))))

(assert (=> bs!78582 (=> true e!391675)))

(declare-fun b!641079 () Bool)

(assert (=> b!641079 (= e!391675 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78582 (not res!278916)) b!641079))

(assert (=> bs!78496 m!913028))

(assert (=> bs!78496 m!912970))

(assert (=> bs!78496 s!24031))

(declare-fun bs!78583 () Bool)

(declare-fun s!24033 () Bool)

(assert (= bs!78583 (and neg-inst!311 s!24033)))

(declare-fun res!278917 () Bool)

(declare-fun e!391676 () Bool)

(assert (=> bs!78583 (=> res!278917 e!391676)))

(assert (=> bs!78583 (= res!278917 (not (= (list!2916 x!140421) (list!2916 x!140421))))))

(assert (=> bs!78583 (=> true e!391676)))

(declare-fun b!641080 () Bool)

(assert (=> b!641080 (= e!391676 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78583 (not res!278917)) b!641080))

(assert (=> m!913028 s!24033))

(declare-fun bs!78584 () Bool)

(declare-fun s!24035 () Bool)

(assert (= bs!78584 (and neg-inst!311 s!24035)))

(declare-fun res!278918 () Bool)

(declare-fun e!391677 () Bool)

(assert (=> bs!78584 (=> res!278918 e!391677)))

(assert (=> bs!78584 (= res!278918 (not (= (list!2916 x!140421) (list!2916 x!140419))))))

(assert (=> bs!78584 (=> true e!391677)))

(declare-fun b!641081 () Bool)

(assert (=> b!641081 (= e!391677 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78584 (not res!278918)) b!641081))

(declare-fun bs!78585 () Bool)

(assert (= bs!78585 (and m!913028 m!913016 m!913024)))

(assert (=> bs!78585 m!913028))

(assert (=> bs!78585 m!913024))

(assert (=> bs!78585 s!24035))

(declare-fun bs!78586 () Bool)

(declare-fun s!24037 () Bool)

(assert (= bs!78586 (and neg-inst!311 s!24037)))

(declare-fun res!278919 () Bool)

(declare-fun e!391678 () Bool)

(assert (=> bs!78586 (=> res!278919 e!391678)))

(assert (=> bs!78586 (= res!278919 (not (= (list!2916 x!140421) (list!2916 x!140375))))))

(assert (=> bs!78586 (=> true e!391678)))

(declare-fun b!641082 () Bool)

(assert (=> b!641082 (= e!391678 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78586 (not res!278919)) b!641082))

(declare-fun bs!78587 () Bool)

(assert (= bs!78587 (and m!913028 m!912988)))

(assert (=> bs!78587 m!913028))

(assert (=> bs!78587 m!912988))

(assert (=> bs!78587 s!24037))

(declare-fun bs!78588 () Bool)

(declare-fun s!24039 () Bool)

(assert (= bs!78588 (and neg-inst!311 s!24039)))

(declare-fun res!278920 () Bool)

(declare-fun e!391679 () Bool)

(assert (=> bs!78588 (=> res!278920 e!391679)))

(assert (=> bs!78588 (= res!278920 (not (= (list!2916 x!140421) (list!2916 x!140376))))))

(assert (=> bs!78588 (=> true e!391679)))

(declare-fun b!641083 () Bool)

(assert (=> b!641083 (= e!391679 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78588 (not res!278920)) b!641083))

(declare-fun bs!78589 () Bool)

(assert (= bs!78589 (and m!913028 m!912990)))

(assert (=> bs!78589 m!913028))

(assert (=> bs!78589 m!912990))

(assert (=> bs!78589 s!24039))

(declare-fun bs!78590 () Bool)

(declare-fun s!24041 () Bool)

(assert (= bs!78590 (and neg-inst!311 s!24041)))

(declare-fun res!278921 () Bool)

(declare-fun e!391680 () Bool)

(assert (=> bs!78590 (=> res!278921 e!391680)))

(assert (=> bs!78590 (= res!278921 (not (= (list!2916 x!140421) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78590 (=> true e!391680)))

(declare-fun b!641084 () Bool)

(assert (=> b!641084 (= e!391680 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78590 (not res!278921)) b!641084))

(assert (=> bs!78481 m!913028))

(assert (=> bs!78481 m!913020))

(assert (=> bs!78481 s!24041))

(declare-fun bs!78591 () Bool)

(declare-fun s!24043 () Bool)

(assert (= bs!78591 (and neg-inst!311 s!24043)))

(declare-fun res!278922 () Bool)

(declare-fun e!391681 () Bool)

(assert (=> bs!78591 (=> res!278922 e!391681)))

(assert (=> bs!78591 (= res!278922 (not (= (list!2916 x!140421) (list!2916 x!140374))))))

(assert (=> bs!78591 (=> true e!391681)))

(declare-fun b!641085 () Bool)

(assert (=> b!641085 (= e!391681 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78591 (not res!278922)) b!641085))

(declare-fun bs!78592 () Bool)

(assert (= bs!78592 (and m!913028 m!912978)))

(assert (=> bs!78592 m!913028))

(assert (=> bs!78592 m!912978))

(assert (=> bs!78592 s!24043))

(declare-fun bs!78593 () Bool)

(declare-fun s!24045 () Bool)

(assert (= bs!78593 (and neg-inst!311 s!24045)))

(declare-fun res!278923 () Bool)

(declare-fun e!391682 () Bool)

(assert (=> bs!78593 (=> res!278923 e!391682)))

(assert (=> bs!78593 (= res!278923 (not (= (list!2916 x!140375) (list!2916 x!140421))))))

(assert (=> bs!78593 (=> true e!391682)))

(declare-fun b!641086 () Bool)

(assert (=> b!641086 (= e!391682 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78593 (not res!278923)) b!641086))

(assert (=> bs!78587 m!912988))

(assert (=> bs!78587 m!913028))

(assert (=> bs!78587 s!24045))

(declare-fun bs!78594 () Bool)

(declare-fun s!24047 () Bool)

(assert (= bs!78594 (and neg-inst!311 s!24047)))

(declare-fun res!278924 () Bool)

(declare-fun e!391683 () Bool)

(assert (=> bs!78594 (=> res!278924 e!391683)))

(assert (=> bs!78594 (= res!278924 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 x!140421))))))

(assert (=> bs!78594 (=> true e!391683)))

(declare-fun b!641087 () Bool)

(assert (=> b!641087 (= e!391683 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78594 (not res!278924)) b!641087))

(assert (=> bs!78481 m!913020))

(assert (=> bs!78481 m!913028))

(assert (=> bs!78481 s!24047))

(declare-fun bs!78595 () Bool)

(declare-fun s!24049 () Bool)

(assert (= bs!78595 (and neg-inst!311 s!24049)))

(declare-fun res!278925 () Bool)

(declare-fun e!391684 () Bool)

(assert (=> bs!78595 (=> res!278925 e!391684)))

(assert (=> bs!78595 (= res!278925 (not (= (list!2916 x!140419) (list!2916 x!140421))))))

(assert (=> bs!78595 (=> true e!391684)))

(declare-fun b!641088 () Bool)

(assert (=> b!641088 (= e!391684 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78595 (not res!278925)) b!641088))

(assert (=> bs!78585 m!913024))

(assert (=> bs!78585 m!913028))

(assert (=> bs!78585 s!24049))

(declare-fun bs!78596 () Bool)

(declare-fun s!24051 () Bool)

(assert (= bs!78596 (and neg-inst!311 s!24051)))

(declare-fun res!278926 () Bool)

(declare-fun e!391685 () Bool)

(assert (=> bs!78596 (=> res!278926 e!391685)))

(assert (=> bs!78596 (= res!278926 (not (= (list!2916 x!140374) (list!2916 x!140421))))))

(assert (=> bs!78596 (=> true e!391685)))

(declare-fun b!641089 () Bool)

(assert (=> b!641089 (= e!391685 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78596 (not res!278926)) b!641089))

(assert (=> bs!78592 m!912978))

(assert (=> bs!78592 m!913028))

(assert (=> bs!78592 s!24051))

(assert (=> m!913028 s!24033))

(declare-fun bs!78597 () Bool)

(declare-fun s!24053 () Bool)

(assert (= bs!78597 (and neg-inst!311 s!24053)))

(declare-fun res!278927 () Bool)

(declare-fun e!391686 () Bool)

(assert (=> bs!78597 (=> res!278927 e!391686)))

(assert (=> bs!78597 (= res!278927 (not (= (list!2916 lt!275166) (list!2916 x!140421))))))

(assert (=> bs!78597 (=> true e!391686)))

(declare-fun b!641090 () Bool)

(assert (=> b!641090 (= e!391686 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78597 (not res!278927)) b!641090))

(assert (=> bs!78496 m!912970))

(assert (=> bs!78496 m!913028))

(assert (=> bs!78496 s!24053))

(declare-fun bs!78598 () Bool)

(declare-fun s!24055 () Bool)

(assert (= bs!78598 (and neg-inst!311 s!24055)))

(declare-fun res!278928 () Bool)

(declare-fun e!391687 () Bool)

(assert (=> bs!78598 (=> res!278928 e!391687)))

(assert (=> bs!78598 (= res!278928 (not (= (list!2916 x!140376) (list!2916 x!140421))))))

(assert (=> bs!78598 (=> true e!391687)))

(declare-fun b!641091 () Bool)

(assert (=> b!641091 (= e!391687 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78598 (not res!278928)) b!641091))

(assert (=> bs!78589 m!912990))

(assert (=> bs!78589 m!913028))

(assert (=> bs!78589 s!24055))

(declare-fun bs!78599 () Bool)

(declare-fun s!24057 () Bool)

(assert (= bs!78599 (and neg-inst!311 s!24057)))

(declare-fun res!278929 () Bool)

(declare-fun e!391688 () Bool)

(assert (=> bs!78599 (=> res!278929 e!391688)))

(assert (=> bs!78599 (= res!278929 (not (= (list!2916 x!140420) (list!2916 x!140421))))))

(assert (=> bs!78599 (=> true e!391688)))

(declare-fun b!641092 () Bool)

(assert (=> b!641092 (= e!391688 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78599 (not res!278929)) b!641092))

(assert (=> bs!78581 m!913026))

(assert (=> bs!78581 m!913028))

(assert (=> bs!78581 s!24057))

(declare-fun bs!78600 () Bool)

(assert (= bs!78600 (and m!913036 m!912970)))

(assert (=> bs!78600 s!24031))

(declare-fun bs!78601 () Bool)

(assert (= bs!78601 (and m!913036 m!913016 m!913024)))

(assert (=> bs!78601 s!24035))

(declare-fun bs!78602 () Bool)

(assert (= bs!78602 (and m!913036 m!912990)))

(assert (=> bs!78602 s!24039))

(declare-fun bs!78603 () Bool)

(assert (= bs!78603 (and m!913036 m!913026 m!913034)))

(assert (=> bs!78603 s!24029))

(assert (=> m!913036 s!24033))

(declare-fun bs!78604 () Bool)

(assert (= bs!78604 (and m!913036 m!913028)))

(assert (=> bs!78604 s!24033))

(declare-fun bs!78605 () Bool)

(assert (= bs!78605 (and m!913036 m!912988)))

(assert (=> bs!78605 s!24037))

(declare-fun bs!78606 () Bool)

(assert (= bs!78606 (and m!913036 m!913020)))

(assert (=> bs!78606 s!24041))

(declare-fun bs!78607 () Bool)

(assert (= bs!78607 (and m!913036 m!912978)))

(assert (=> bs!78607 s!24043))

(assert (=> bs!78605 s!24045))

(assert (=> bs!78606 s!24047))

(assert (=> bs!78602 s!24055))

(assert (=> bs!78601 s!24049))

(assert (=> bs!78603 s!24057))

(assert (=> m!913036 s!24033))

(assert (=> bs!78604 s!24033))

(assert (=> bs!78600 s!24053))

(assert (=> bs!78607 s!24051))

(declare-fun bs!78608 () Bool)

(declare-fun s!24059 () Bool)

(assert (= bs!78608 (and neg-inst!311 s!24059)))

(declare-fun res!278930 () Bool)

(declare-fun e!391689 () Bool)

(assert (=> bs!78608 (=> res!278930 e!391689)))

(assert (=> bs!78608 (= res!278930 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140375))))))

(assert (=> bs!78608 (=> true e!391689)))

(declare-fun b!641093 () Bool)

(assert (=> b!641093 (= e!391689 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78608 (not res!278930)) b!641093))

(declare-fun bs!78609 () Bool)

(assert (= bs!78609 (and m!912984 m!912988)))

(assert (=> bs!78609 m!912984))

(assert (=> bs!78609 m!912988))

(assert (=> bs!78609 s!24059))

(declare-fun bs!78610 () Bool)

(declare-fun s!24061 () Bool)

(assert (= bs!78610 (and neg-inst!311 s!24061)))

(declare-fun res!278931 () Bool)

(declare-fun e!391690 () Bool)

(assert (=> bs!78610 (=> res!278931 e!391690)))

(assert (=> bs!78610 (= res!278931 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140376))))))

(assert (=> bs!78610 (=> true e!391690)))

(declare-fun b!641094 () Bool)

(assert (=> b!641094 (= e!391690 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78610 (not res!278931)) b!641094))

(declare-fun bs!78611 () Bool)

(assert (= bs!78611 (and m!912984 m!912990)))

(assert (=> bs!78611 m!912984))

(assert (=> bs!78611 m!912990))

(assert (=> bs!78611 s!24061))

(declare-fun bs!78612 () Bool)

(declare-fun s!24063 () Bool)

(assert (= bs!78612 (and neg-inst!311 s!24063)))

(declare-fun res!278932 () Bool)

(declare-fun e!391691 () Bool)

(assert (=> bs!78612 (=> res!278932 e!391691)))

(assert (=> bs!78612 (= res!278932 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275166))))))

(assert (=> bs!78612 (=> true e!391691)))

(declare-fun b!641095 () Bool)

(assert (=> b!641095 (= e!391691 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78612 (not res!278932)) b!641095))

(assert (=> bs!78415 m!912984))

(assert (=> bs!78415 m!912970))

(assert (=> bs!78415 s!24063))

(declare-fun bs!78613 () Bool)

(declare-fun s!24065 () Bool)

(assert (= bs!78613 (and neg-inst!311 s!24065)))

(declare-fun res!278933 () Bool)

(declare-fun e!391692 () Bool)

(assert (=> bs!78613 (=> res!278933 e!391692)))

(assert (=> bs!78613 (= res!278933 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140421))))))

(assert (=> bs!78613 (=> true e!391692)))

(declare-fun b!641096 () Bool)

(assert (=> b!641096 (= e!391692 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78613 (not res!278933)) b!641096))

(declare-fun bs!78614 () Bool)

(assert (= bs!78614 (and m!912984 m!913028 m!913036)))

(assert (=> bs!78614 m!912984))

(assert (=> bs!78614 m!913028))

(assert (=> bs!78614 s!24065))

(declare-fun bs!78615 () Bool)

(declare-fun s!24067 () Bool)

(assert (= bs!78615 (and neg-inst!311 s!24067)))

(declare-fun res!278934 () Bool)

(declare-fun e!391693 () Bool)

(assert (=> bs!78615 (=> res!278934 e!391693)))

(assert (=> bs!78615 (= res!278934 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78615 (=> true e!391693)))

(declare-fun b!641097 () Bool)

(assert (=> b!641097 (= e!391693 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78615 (not res!278934)) b!641097))

(assert (=> m!912984 s!24067))

(declare-fun bs!78616 () Bool)

(declare-fun s!24069 () Bool)

(assert (= bs!78616 (and neg-inst!311 s!24069)))

(declare-fun res!278935 () Bool)

(declare-fun e!391694 () Bool)

(assert (=> bs!78616 (=> res!278935 e!391694)))

(assert (=> bs!78616 (= res!278935 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140420))))))

(assert (=> bs!78616 (=> true e!391694)))

(declare-fun b!641098 () Bool)

(assert (=> b!641098 (= e!391694 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78616 (not res!278935)) b!641098))

(declare-fun bs!78617 () Bool)

(assert (= bs!78617 (and m!912984 m!913026 m!913034)))

(assert (=> bs!78617 m!912984))

(assert (=> bs!78617 m!913026))

(assert (=> bs!78617 s!24069))

(declare-fun bs!78618 () Bool)

(declare-fun s!24071 () Bool)

(assert (= bs!78618 (and neg-inst!311 s!24071)))

(declare-fun res!278936 () Bool)

(declare-fun e!391695 () Bool)

(assert (=> bs!78618 (=> res!278936 e!391695)))

(assert (=> bs!78618 (= res!278936 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140374))))))

(assert (=> bs!78618 (=> true e!391695)))

(declare-fun b!641099 () Bool)

(assert (=> b!641099 (= e!391695 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78618 (not res!278936)) b!641099))

(declare-fun bs!78619 () Bool)

(assert (= bs!78619 (and m!912984 m!912978)))

(assert (=> bs!78619 m!912984))

(assert (=> bs!78619 m!912978))

(assert (=> bs!78619 s!24071))

(declare-fun bs!78620 () Bool)

(declare-fun s!24073 () Bool)

(assert (= bs!78620 (and neg-inst!311 s!24073)))

(declare-fun res!278937 () Bool)

(declare-fun e!391696 () Bool)

(assert (=> bs!78620 (=> res!278937 e!391696)))

(assert (=> bs!78620 (= res!278937 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78620 (=> true e!391696)))

(declare-fun b!641100 () Bool)

(assert (=> b!641100 (= e!391696 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78620 (not res!278937)) b!641100))

(assert (=> bs!78429 m!912984))

(assert (=> bs!78429 m!913020))

(assert (=> bs!78429 s!24073))

(declare-fun bs!78621 () Bool)

(declare-fun s!24075 () Bool)

(assert (= bs!78621 (and neg-inst!311 s!24075)))

(declare-fun res!278938 () Bool)

(declare-fun e!391697 () Bool)

(assert (=> bs!78621 (=> res!278938 e!391697)))

(assert (=> bs!78621 (= res!278938 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 x!140419))))))

(assert (=> bs!78621 (=> true e!391697)))

(declare-fun b!641101 () Bool)

(assert (=> b!641101 (= e!391697 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78621 (not res!278938)) b!641101))

(declare-fun bs!78622 () Bool)

(assert (= bs!78622 (and m!912984 m!913016 m!913024)))

(assert (=> bs!78622 m!912984))

(assert (=> bs!78622 m!913024))

(assert (=> bs!78622 s!24075))

(declare-fun bs!78623 () Bool)

(declare-fun s!24077 () Bool)

(assert (= bs!78623 (and neg-inst!311 s!24077)))

(declare-fun res!278939 () Bool)

(declare-fun e!391698 () Bool)

(assert (=> bs!78623 (=> res!278939 e!391698)))

(assert (=> bs!78623 (= res!278939 (not (= (list!2916 x!140374) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78623 (=> true e!391698)))

(declare-fun b!641102 () Bool)

(assert (=> b!641102 (= e!391698 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78623 (not res!278939)) b!641102))

(assert (=> bs!78619 m!912978))

(assert (=> bs!78619 m!912984))

(assert (=> bs!78619 s!24077))

(declare-fun bs!78624 () Bool)

(declare-fun s!24079 () Bool)

(assert (= bs!78624 (and neg-inst!311 s!24079)))

(declare-fun res!278940 () Bool)

(declare-fun e!391699 () Bool)

(assert (=> bs!78624 (=> res!278940 e!391699)))

(assert (=> bs!78624 (= res!278940 (not (= (list!2916 x!140421) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78624 (=> true e!391699)))

(declare-fun b!641103 () Bool)

(assert (=> b!641103 (= e!391699 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78624 (not res!278940)) b!641103))

(assert (=> bs!78614 m!913028))

(assert (=> bs!78614 m!912984))

(assert (=> bs!78614 s!24079))

(declare-fun bs!78625 () Bool)

(declare-fun s!24081 () Bool)

(assert (= bs!78625 (and neg-inst!311 s!24081)))

(declare-fun res!278941 () Bool)

(declare-fun e!391700 () Bool)

(assert (=> bs!78625 (=> res!278941 e!391700)))

(assert (=> bs!78625 (= res!278941 (not (= (list!2916 lt!275166) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78625 (=> true e!391700)))

(declare-fun b!641104 () Bool)

(assert (=> b!641104 (= e!391700 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78625 (not res!278941)) b!641104))

(assert (=> bs!78415 m!912970))

(assert (=> bs!78415 m!912984))

(assert (=> bs!78415 s!24081))

(declare-fun bs!78626 () Bool)

(declare-fun s!24083 () Bool)

(assert (= bs!78626 (and neg-inst!311 s!24083)))

(declare-fun res!278942 () Bool)

(declare-fun e!391701 () Bool)

(assert (=> bs!78626 (=> res!278942 e!391701)))

(assert (=> bs!78626 (= res!278942 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78626 (=> true e!391701)))

(declare-fun b!641105 () Bool)

(assert (=> b!641105 (= e!391701 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78626 (not res!278942)) b!641105))

(assert (=> bs!78429 m!913020))

(assert (=> bs!78429 m!912984))

(assert (=> bs!78429 s!24083))

(declare-fun bs!78627 () Bool)

(declare-fun s!24085 () Bool)

(assert (= bs!78627 (and neg-inst!311 s!24085)))

(declare-fun res!278943 () Bool)

(declare-fun e!391702 () Bool)

(assert (=> bs!78627 (=> res!278943 e!391702)))

(assert (=> bs!78627 (= res!278943 (not (= (list!2916 x!140420) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78627 (=> true e!391702)))

(declare-fun b!641106 () Bool)

(assert (=> b!641106 (= e!391702 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78627 (not res!278943)) b!641106))

(assert (=> bs!78617 m!913026))

(assert (=> bs!78617 m!912984))

(assert (=> bs!78617 s!24085))

(declare-fun bs!78628 () Bool)

(declare-fun s!24087 () Bool)

(assert (= bs!78628 (and neg-inst!311 s!24087)))

(declare-fun res!278944 () Bool)

(declare-fun e!391703 () Bool)

(assert (=> bs!78628 (=> res!278944 e!391703)))

(assert (=> bs!78628 (= res!278944 (not (= (list!2916 x!140376) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78628 (=> true e!391703)))

(declare-fun b!641107 () Bool)

(assert (=> b!641107 (= e!391703 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78628 (not res!278944)) b!641107))

(assert (=> bs!78611 m!912990))

(assert (=> bs!78611 m!912984))

(assert (=> bs!78611 s!24087))

(declare-fun bs!78629 () Bool)

(declare-fun s!24089 () Bool)

(assert (= bs!78629 (and neg-inst!311 s!24089)))

(declare-fun res!278945 () Bool)

(declare-fun e!391704 () Bool)

(assert (=> bs!78629 (=> res!278945 e!391704)))

(assert (=> bs!78629 (= res!278945 (not (= (list!2916 x!140375) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78629 (=> true e!391704)))

(declare-fun b!641108 () Bool)

(assert (=> b!641108 (= e!391704 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78629 (not res!278945)) b!641108))

(assert (=> bs!78609 m!912988))

(assert (=> bs!78609 m!912984))

(assert (=> bs!78609 s!24089))

(declare-fun bs!78630 () Bool)

(declare-fun s!24091 () Bool)

(assert (= bs!78630 (and neg-inst!311 s!24091)))

(declare-fun res!278946 () Bool)

(declare-fun e!391705 () Bool)

(assert (=> bs!78630 (=> res!278946 e!391705)))

(assert (=> bs!78630 (= res!278946 (not (= (list!2916 x!140419) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78630 (=> true e!391705)))

(declare-fun b!641109 () Bool)

(assert (=> b!641109 (= e!391705 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78630 (not res!278946)) b!641109))

(assert (=> bs!78622 m!913024))

(assert (=> bs!78622 m!912984))

(assert (=> bs!78622 s!24091))

(assert (=> m!912984 s!24067))

(declare-fun bs!78631 () Bool)

(assert (= bs!78631 (and neg-inst!311 d!223243)))

(assert (=> bs!78631 (= true inst!311)))

(declare-fun lt!275188 () Unit!11924)

(declare-fun Unit!11947 () Unit!11924)

(assert (=> d!223243 (= lt!275188 Unit!11947)))

(assert (=> d!223243 (= (equivClasses!525 lambda!19032 lambda!19033) (Forall2!255 lambda!19034))))

(declare-fun lt!275187 () Unit!11924)

(declare-fun Unit!11948 () Unit!11924)

(assert (=> d!223243 (= lt!275187 Unit!11948)))

(assert (=> d!223243 (= (Forall2!255 lambda!19034) inst!311)))

(declare-fun lt!275190 () Unit!11924)

(declare-fun Unit!11949 () Unit!11924)

(assert (=> d!223243 (= lt!275190 Unit!11949)))

(assert (=> d!223243 (= (semiInverseModEq!546 lambda!19032 lambda!19033) (Forall!333 lambda!19031))))

(declare-fun lt!275189 () Unit!11924)

(declare-fun Unit!11950 () Unit!11924)

(assert (=> d!223243 (= lt!275189 Unit!11950)))

(assert (=> d!223243 (= (Forall!333 lambda!19031) inst!310)))

(assert (=> d!223243 (= (injection!7 WhitespaceValueInjection!39) (TokenValueInjection!2577 lambda!19033 lambda!19032))))

(assert (= neg-inst!310 inst!310))

(assert (= neg-inst!311 inst!311))

(declare-fun m!913042 () Bool)

(assert (=> d!223243 m!913042))

(declare-fun m!913044 () Bool)

(assert (=> d!223243 m!913044))

(declare-fun m!913046 () Bool)

(assert (=> d!223243 m!913046))

(declare-fun m!913048 () Bool)

(assert (=> d!223243 m!913048))

(assert (=> d!223243 m!913042))

(assert (=> d!223243 m!913046))

(assert (=> d!223105 d!223243))

(declare-fun d!223245 () Bool)

(declare-fun dynLambda!3758 (Int BalanceConc!4646) TokenValue!1412)

(assert (=> d!223245 (= (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (dynLambda!3758 (toValue!2319 (injection!7 WhitespaceValueInjection!39)) (singletonSeq!437 #x000A)))))

(declare-fun b_lambda!25275 () Bool)

(assert (=> (not b_lambda!25275) (not d!223245)))

(declare-fun bs!78632 () Bool)

(assert (= bs!78632 d!223245))

(assert (=> bs!78632 m!912433))

(declare-fun m!913050 () Bool)

(assert (=> bs!78632 m!913050))

(assert (=> d!223105 d!223245))

(declare-fun d!223247 () Bool)

(declare-fun e!391706 () Bool)

(assert (=> d!223247 e!391706))

(declare-fun res!278947 () Bool)

(assert (=> d!223247 (=> (not res!278947) (not e!391706))))

(declare-fun lt!275191 () BalanceConc!4648)

(assert (=> d!223247 (= res!278947 (= (list!2914 lt!275191) (Cons!6864 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)) Nil!6864)))))

(assert (=> d!223247 (= lt!275191 (singleton!211 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863))))))

(assert (=> d!223247 (= (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863))) lt!275191)))

(declare-fun b!641110 () Bool)

(assert (=> b!641110 (= e!391706 (isBalanced!614 (c!117092 lt!275191)))))

(assert (= (and d!223247 res!278947) b!641110))

(declare-fun m!913052 () Bool)

(assert (=> d!223247 m!913052))

(declare-fun m!913054 () Bool)

(assert (=> d!223247 m!913054))

(declare-fun m!913056 () Bool)

(assert (=> b!641110 m!913056))

(assert (=> d!223105 d!223247))

(declare-fun b!641122 () Bool)

(declare-fun e!391709 () Bool)

(declare-fun lt!275194 () BalanceConc!4648)

(declare-fun ++!1842 (List!6878 List!6878) List!6878)

(assert (=> b!641122 (= e!391709 (= (list!2914 lt!275194) (++!1842 (list!2914 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863)))) (list!2914 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))))))))

(declare-fun d!223249 () Bool)

(assert (=> d!223249 e!391709))

(declare-fun res!278958 () Bool)

(assert (=> d!223249 (=> (not res!278958) (not e!391709))))

(declare-fun appendAssocInst!120 (Conc!2318 Conc!2318) Bool)

(assert (=> d!223249 (= res!278958 (appendAssocInst!120 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863)))) (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863))))))))

(declare-fun ++!1843 (Conc!2318 Conc!2318) Conc!2318)

(assert (=> d!223249 (= lt!275194 (BalanceConc!4649 (++!1843 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863)))) (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))))))))

(assert (=> d!223249 (= (++!1841 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863))) (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))) lt!275194)))

(declare-fun b!641120 () Bool)

(declare-fun res!278957 () Bool)

(assert (=> b!641120 (=> (not res!278957) (not e!391709))))

(declare-fun height!283 (Conc!2318) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!641120 (= res!278957 (<= (height!283 (++!1843 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863)))) (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))))) (+ (max!0 (height!283 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863))))) (height!283 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))))) 1)))))

(declare-fun b!641121 () Bool)

(declare-fun res!278959 () Bool)

(assert (=> b!641121 (=> (not res!278959) (not e!391709))))

(assert (=> b!641121 (= res!278959 (>= (height!283 (++!1843 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863)))) (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))))) (max!0 (height!283 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863))))) (height!283 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863))))))))))

(declare-fun b!641119 () Bool)

(declare-fun res!278956 () Bool)

(assert (=> b!641119 (=> (not res!278956) (not e!391709))))

(assert (=> b!641119 (= res!278956 (isBalanced!614 (++!1843 (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (commaRule!0 JsonLexer!197) 1 (Cons!6863 #x002C Nil!6863)))) (c!117092 (singletonSeq!436 (Token!2479 (apply!1631 (injection!7 WhitespaceValueInjection!39) (singletonSeq!437 #x000A)) (whitespaceRule!0 JsonLexer!197) 1 (Cons!6863 #x000A Nil!6863)))))))))

(assert (= (and d!223249 res!278958) b!641119))

(assert (= (and b!641119 res!278956) b!641120))

(assert (= (and b!641120 res!278957) b!641121))

(assert (= (and b!641121 res!278959) b!641122))

(declare-fun m!913058 () Bool)

(assert (=> b!641120 m!913058))

(declare-fun m!913060 () Bool)

(assert (=> b!641120 m!913060))

(declare-fun m!913062 () Bool)

(assert (=> b!641120 m!913062))

(declare-fun m!913064 () Bool)

(assert (=> b!641120 m!913064))

(assert (=> b!641120 m!913058))

(assert (=> b!641120 m!913062))

(assert (=> b!641120 m!913064))

(declare-fun m!913066 () Bool)

(assert (=> b!641120 m!913066))

(assert (=> b!641121 m!913058))

(assert (=> b!641121 m!913060))

(assert (=> b!641121 m!913062))

(assert (=> b!641121 m!913064))

(assert (=> b!641121 m!913058))

(assert (=> b!641121 m!913062))

(assert (=> b!641121 m!913064))

(assert (=> b!641121 m!913066))

(declare-fun m!913068 () Bool)

(assert (=> d!223249 m!913068))

(assert (=> d!223249 m!913058))

(assert (=> b!641119 m!913058))

(assert (=> b!641119 m!913058))

(declare-fun m!913070 () Bool)

(assert (=> b!641119 m!913070))

(declare-fun m!913072 () Bool)

(assert (=> b!641122 m!913072))

(assert (=> b!641122 m!912445))

(declare-fun m!913074 () Bool)

(assert (=> b!641122 m!913074))

(assert (=> b!641122 m!912437))

(declare-fun m!913076 () Bool)

(assert (=> b!641122 m!913076))

(assert (=> b!641122 m!913074))

(assert (=> b!641122 m!913076))

(declare-fun m!913078 () Bool)

(assert (=> b!641122 m!913078))

(assert (=> d!223105 d!223249))

(declare-fun d!223251 () Bool)

(declare-fun commaRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223251 (= (commaRule!0 JsonLexer!197) (Rule!2557 (commaRe!0 JsonLexer!197) (String!8799 "ccoommmmaa") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78633 () Bool)

(assert (= bs!78633 d!223251))

(declare-fun m!913080 () Bool)

(assert (=> bs!78633 m!913080))

(assert (=> bs!78633 m!912311))

(assert (=> d!223105 d!223251))

(declare-fun d!223253 () Bool)

(declare-fun e!391710 () Bool)

(assert (=> d!223253 e!391710))

(declare-fun res!278960 () Bool)

(assert (=> d!223253 (=> (not res!278960) (not e!391710))))

(declare-fun lt!275195 () BalanceConc!4646)

(assert (=> d!223253 (= res!278960 (= (list!2916 lt!275195) (Cons!6863 #x002C Nil!6863)))))

(assert (=> d!223253 (= lt!275195 (singleton!212 #x002C))))

(assert (=> d!223253 (= (singletonSeq!437 #x002C) lt!275195)))

(declare-fun b!641123 () Bool)

(assert (=> b!641123 (= e!391710 (isBalanced!615 (c!117091 lt!275195)))))

(assert (= (and d!223253 res!278960) b!641123))

(declare-fun bs!78634 () Bool)

(declare-fun s!24093 () Bool)

(assert (= bs!78634 (and neg-inst!304 s!24093)))

(declare-fun res!278961 () Bool)

(declare-fun e!391711 () Bool)

(assert (=> bs!78634 (=> res!278961 e!391711)))

(assert (=> bs!78634 (= res!278961 (not (= (list!2916 lt!275195) (list!2916 x!140420))))))

(assert (=> bs!78634 (=> true e!391711)))

(declare-fun b!641124 () Bool)

(assert (=> b!641124 (= e!391711 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78634 (not res!278961)) b!641124))

(declare-fun bs!78635 () Bool)

(declare-fun m!913082 () Bool)

(assert (= bs!78635 (and m!913082 m!913026)))

(assert (=> bs!78635 m!913082))

(assert (=> bs!78635 m!913026))

(assert (=> bs!78635 s!24093))

(declare-fun bs!78636 () Bool)

(declare-fun s!24095 () Bool)

(assert (= bs!78636 (and neg-inst!304 s!24095)))

(declare-fun res!278962 () Bool)

(declare-fun e!391712 () Bool)

(assert (=> bs!78636 (=> res!278962 e!391712)))

(assert (=> bs!78636 (= res!278962 (not (= (list!2916 lt!275195) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78636 (=> true e!391712)))

(declare-fun b!641125 () Bool)

(assert (=> b!641125 (= e!391712 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78636 (not res!278962)) b!641125))

(declare-fun bs!78637 () Bool)

(assert (= bs!78637 (and m!913082 m!912984)))

(assert (=> bs!78637 m!913082))

(assert (=> bs!78637 m!912984))

(assert (=> bs!78637 s!24095))

(declare-fun bs!78638 () Bool)

(declare-fun s!24097 () Bool)

(assert (= bs!78638 (and neg-inst!304 s!24097)))

(declare-fun res!278963 () Bool)

(declare-fun e!391713 () Bool)

(assert (=> bs!78638 (=> res!278963 e!391713)))

(assert (=> bs!78638 (= res!278963 (not (= (list!2916 lt!275195) (list!2916 x!140374))))))

(assert (=> bs!78638 (=> true e!391713)))

(declare-fun b!641126 () Bool)

(assert (=> b!641126 (= e!391713 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78638 (not res!278963)) b!641126))

(declare-fun bs!78639 () Bool)

(assert (= bs!78639 (and m!913082 m!912978 m!912980)))

(assert (=> bs!78639 m!913082))

(assert (=> bs!78639 m!912978))

(assert (=> bs!78639 s!24097))

(declare-fun bs!78640 () Bool)

(declare-fun s!24099 () Bool)

(assert (= bs!78640 (and neg-inst!304 s!24099)))

(declare-fun res!278964 () Bool)

(declare-fun e!391714 () Bool)

(assert (=> bs!78640 (=> res!278964 e!391714)))

(assert (=> bs!78640 (= res!278964 (not (= (list!2916 lt!275195) (list!2916 x!140421))))))

(assert (=> bs!78640 (=> true e!391714)))

(declare-fun b!641127 () Bool)

(assert (=> b!641127 (= e!391714 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78640 (not res!278964)) b!641127))

(declare-fun bs!78641 () Bool)

(assert (= bs!78641 (and m!913082 m!913028)))

(assert (=> bs!78641 m!913082))

(assert (=> bs!78641 m!913028))

(assert (=> bs!78641 s!24099))

(declare-fun bs!78642 () Bool)

(declare-fun s!24101 () Bool)

(assert (= bs!78642 (and neg-inst!304 s!24101)))

(declare-fun res!278965 () Bool)

(declare-fun e!391715 () Bool)

(assert (=> bs!78642 (=> res!278965 e!391715)))

(assert (=> bs!78642 (= res!278965 (not (= (list!2916 lt!275195) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78642 (=> true e!391715)))

(declare-fun b!641128 () Bool)

(assert (=> b!641128 (= e!391715 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78642 (not res!278965)) b!641128))

(declare-fun bs!78643 () Bool)

(assert (= bs!78643 (and m!913082 m!913020)))

(assert (=> bs!78643 m!913082))

(assert (=> bs!78643 m!913020))

(assert (=> bs!78643 s!24101))

(declare-fun bs!78644 () Bool)

(declare-fun s!24103 () Bool)

(assert (= bs!78644 (and neg-inst!304 s!24103)))

(declare-fun res!278966 () Bool)

(declare-fun e!391716 () Bool)

(assert (=> bs!78644 (=> res!278966 e!391716)))

(assert (=> bs!78644 (= res!278966 (not (= (list!2916 lt!275195) (list!2916 lt!275166))))))

(assert (=> bs!78644 (=> true e!391716)))

(declare-fun b!641129 () Bool)

(assert (=> b!641129 (= e!391716 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78644 (not res!278966)) b!641129))

(declare-fun bs!78645 () Bool)

(assert (= bs!78645 (and m!913082 m!912970)))

(assert (=> bs!78645 m!913082))

(assert (=> bs!78645 m!912970))

(assert (=> bs!78645 s!24103))

(declare-fun bs!78646 () Bool)

(declare-fun s!24105 () Bool)

(assert (= bs!78646 (and neg-inst!304 s!24105)))

(declare-fun res!278967 () Bool)

(declare-fun e!391717 () Bool)

(assert (=> bs!78646 (=> res!278967 e!391717)))

(assert (=> bs!78646 (= res!278967 (not (= (list!2916 lt!275195) (list!2916 x!140375))))))

(assert (=> bs!78646 (=> true e!391717)))

(declare-fun b!641130 () Bool)

(assert (=> b!641130 (= e!391717 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78646 (not res!278967)) b!641130))

(declare-fun bs!78647 () Bool)

(assert (= bs!78647 (and m!913082 m!912996 m!912988)))

(assert (=> bs!78647 m!913082))

(assert (=> bs!78647 m!912988))

(assert (=> bs!78647 s!24105))

(declare-fun bs!78648 () Bool)

(declare-fun s!24107 () Bool)

(assert (= bs!78648 (and neg-inst!304 s!24107)))

(declare-fun res!278968 () Bool)

(declare-fun e!391718 () Bool)

(assert (=> bs!78648 (=> res!278968 e!391718)))

(assert (=> bs!78648 (= res!278968 (not (= (list!2916 lt!275195) (list!2916 x!140376))))))

(assert (=> bs!78648 (=> true e!391718)))

(declare-fun b!641131 () Bool)

(assert (=> b!641131 (= e!391718 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78648 (not res!278968)) b!641131))

(declare-fun bs!78649 () Bool)

(assert (= bs!78649 (and m!913082 m!912998 m!912990)))

(assert (=> bs!78649 m!913082))

(assert (=> bs!78649 m!912990))

(assert (=> bs!78649 s!24107))

(declare-fun bs!78650 () Bool)

(declare-fun s!24109 () Bool)

(assert (= bs!78650 (and neg-inst!304 s!24109)))

(declare-fun res!278969 () Bool)

(declare-fun e!391719 () Bool)

(assert (=> bs!78650 (=> res!278969 e!391719)))

(assert (=> bs!78650 (= res!278969 (not (= (list!2916 lt!275195) (list!2916 lt!275195))))))

(assert (=> bs!78650 (=> true e!391719)))

(declare-fun b!641132 () Bool)

(assert (=> b!641132 (= e!391719 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78650 (not res!278969)) b!641132))

(assert (=> m!913082 s!24109))

(declare-fun bs!78651 () Bool)

(declare-fun s!24111 () Bool)

(assert (= bs!78651 (and neg-inst!304 s!24111)))

(declare-fun res!278970 () Bool)

(declare-fun e!391720 () Bool)

(assert (=> bs!78651 (=> res!278970 e!391720)))

(assert (=> bs!78651 (= res!278970 (not (= (list!2916 lt!275195) (list!2916 x!140419))))))

(assert (=> bs!78651 (=> true e!391720)))

(declare-fun b!641133 () Bool)

(assert (=> b!641133 (= e!391720 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78651 (not res!278970)) b!641133))

(declare-fun bs!78652 () Bool)

(assert (= bs!78652 (and m!913082 m!913024)))

(assert (=> bs!78652 m!913082))

(assert (=> bs!78652 m!913024))

(assert (=> bs!78652 s!24111))

(declare-fun bs!78653 () Bool)

(declare-fun s!24113 () Bool)

(assert (= bs!78653 (and neg-inst!304 s!24113)))

(declare-fun res!278971 () Bool)

(declare-fun e!391721 () Bool)

(assert (=> bs!78653 (=> res!278971 e!391721)))

(assert (=> bs!78653 (= res!278971 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275195))))))

(assert (=> bs!78653 (=> true e!391721)))

(declare-fun b!641134 () Bool)

(assert (=> b!641134 (= e!391721 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78653 (not res!278971)) b!641134))

(assert (=> bs!78643 m!913020))

(assert (=> bs!78643 m!913082))

(assert (=> bs!78643 s!24113))

(declare-fun bs!78654 () Bool)

(declare-fun s!24115 () Bool)

(assert (= bs!78654 (and neg-inst!304 s!24115)))

(declare-fun res!278972 () Bool)

(declare-fun e!391722 () Bool)

(assert (=> bs!78654 (=> res!278972 e!391722)))

(assert (=> bs!78654 (= res!278972 (not (= (list!2916 x!140376) (list!2916 lt!275195))))))

(assert (=> bs!78654 (=> true e!391722)))

(declare-fun b!641135 () Bool)

(assert (=> b!641135 (= e!391722 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78654 (not res!278972)) b!641135))

(assert (=> bs!78649 m!912990))

(assert (=> bs!78649 m!913082))

(assert (=> bs!78649 s!24115))

(assert (=> m!913082 s!24109))

(declare-fun bs!78655 () Bool)

(declare-fun s!24117 () Bool)

(assert (= bs!78655 (and neg-inst!304 s!24117)))

(declare-fun res!278973 () Bool)

(declare-fun e!391723 () Bool)

(assert (=> bs!78655 (=> res!278973 e!391723)))

(assert (=> bs!78655 (= res!278973 (not (= (list!2916 x!140420) (list!2916 lt!275195))))))

(assert (=> bs!78655 (=> true e!391723)))

(declare-fun b!641136 () Bool)

(assert (=> b!641136 (= e!391723 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78655 (not res!278973)) b!641136))

(assert (=> bs!78635 m!913026))

(assert (=> bs!78635 m!913082))

(assert (=> bs!78635 s!24117))

(declare-fun bs!78656 () Bool)

(declare-fun s!24119 () Bool)

(assert (= bs!78656 (and neg-inst!304 s!24119)))

(declare-fun res!278974 () Bool)

(declare-fun e!391724 () Bool)

(assert (=> bs!78656 (=> res!278974 e!391724)))

(assert (=> bs!78656 (= res!278974 (not (= (list!2916 x!140419) (list!2916 lt!275195))))))

(assert (=> bs!78656 (=> true e!391724)))

(declare-fun b!641137 () Bool)

(assert (=> b!641137 (= e!391724 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78656 (not res!278974)) b!641137))

(assert (=> bs!78652 m!913024))

(assert (=> bs!78652 m!913082))

(assert (=> bs!78652 s!24119))

(declare-fun bs!78657 () Bool)

(declare-fun s!24121 () Bool)

(assert (= bs!78657 (and neg-inst!304 s!24121)))

(declare-fun res!278975 () Bool)

(declare-fun e!391725 () Bool)

(assert (=> bs!78657 (=> res!278975 e!391725)))

(assert (=> bs!78657 (= res!278975 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275195))))))

(assert (=> bs!78657 (=> true e!391725)))

(declare-fun b!641138 () Bool)

(assert (=> b!641138 (= e!391725 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78657 (not res!278975)) b!641138))

(assert (=> bs!78637 m!912984))

(assert (=> bs!78637 m!913082))

(assert (=> bs!78637 s!24121))

(declare-fun bs!78658 () Bool)

(declare-fun s!24123 () Bool)

(assert (= bs!78658 (and neg-inst!304 s!24123)))

(declare-fun res!278976 () Bool)

(declare-fun e!391726 () Bool)

(assert (=> bs!78658 (=> res!278976 e!391726)))

(assert (=> bs!78658 (= res!278976 (not (= (list!2916 x!140374) (list!2916 lt!275195))))))

(assert (=> bs!78658 (=> true e!391726)))

(declare-fun b!641139 () Bool)

(assert (=> b!641139 (= e!391726 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78658 (not res!278976)) b!641139))

(assert (=> bs!78639 m!912978))

(assert (=> bs!78639 m!913082))

(assert (=> bs!78639 s!24123))

(declare-fun bs!78659 () Bool)

(declare-fun s!24125 () Bool)

(assert (= bs!78659 (and neg-inst!304 s!24125)))

(declare-fun res!278977 () Bool)

(declare-fun e!391727 () Bool)

(assert (=> bs!78659 (=> res!278977 e!391727)))

(assert (=> bs!78659 (= res!278977 (not (= (list!2916 x!140421) (list!2916 lt!275195))))))

(assert (=> bs!78659 (=> true e!391727)))

(declare-fun b!641140 () Bool)

(assert (=> b!641140 (= e!391727 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78659 (not res!278977)) b!641140))

(assert (=> bs!78641 m!913028))

(assert (=> bs!78641 m!913082))

(assert (=> bs!78641 s!24125))

(declare-fun bs!78660 () Bool)

(declare-fun s!24127 () Bool)

(assert (= bs!78660 (and neg-inst!304 s!24127)))

(declare-fun res!278978 () Bool)

(declare-fun e!391728 () Bool)

(assert (=> bs!78660 (=> res!278978 e!391728)))

(assert (=> bs!78660 (= res!278978 (not (= (list!2916 lt!275166) (list!2916 lt!275195))))))

(assert (=> bs!78660 (=> true e!391728)))

(declare-fun b!641141 () Bool)

(assert (=> b!641141 (= e!391728 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78660 (not res!278978)) b!641141))

(assert (=> bs!78645 m!912970))

(assert (=> bs!78645 m!913082))

(assert (=> bs!78645 s!24127))

(declare-fun bs!78661 () Bool)

(declare-fun s!24129 () Bool)

(assert (= bs!78661 (and neg-inst!304 s!24129)))

(declare-fun res!278979 () Bool)

(declare-fun e!391729 () Bool)

(assert (=> bs!78661 (=> res!278979 e!391729)))

(assert (=> bs!78661 (= res!278979 (not (= (list!2916 x!140375) (list!2916 lt!275195))))))

(assert (=> bs!78661 (=> true e!391729)))

(declare-fun b!641142 () Bool)

(assert (=> b!641142 (= e!391729 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78661 (not res!278979)) b!641142))

(assert (=> bs!78647 m!912988))

(assert (=> bs!78647 m!913082))

(assert (=> bs!78647 s!24129))

(declare-fun bs!78662 () Bool)

(declare-fun s!24131 () Bool)

(assert (= bs!78662 (and neg-inst!311 s!24131)))

(declare-fun res!278980 () Bool)

(declare-fun e!391730 () Bool)

(assert (=> bs!78662 (=> res!278980 e!391730)))

(assert (=> bs!78662 (= res!278980 (not (= (list!2916 lt!275195) (list!2916 x!140421))))))

(assert (=> bs!78662 (=> true e!391730)))

(declare-fun b!641143 () Bool)

(assert (=> b!641143 (= e!391730 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78662 (not res!278980)) b!641143))

(declare-fun bs!78663 () Bool)

(assert (= bs!78663 (and m!913082 m!913028 m!913036)))

(assert (=> bs!78663 m!913082))

(assert (=> bs!78663 m!913028))

(assert (=> bs!78663 s!24131))

(declare-fun bs!78664 () Bool)

(declare-fun s!24133 () Bool)

(assert (= bs!78664 (and neg-inst!311 s!24133)))

(declare-fun res!278981 () Bool)

(declare-fun e!391731 () Bool)

(assert (=> bs!78664 (=> res!278981 e!391731)))

(assert (=> bs!78664 (= res!278981 (not (= (list!2916 lt!275195) (list!2916 lt!275195))))))

(assert (=> bs!78664 (=> true e!391731)))

(declare-fun b!641144 () Bool)

(assert (=> b!641144 (= e!391731 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78664 (not res!278981)) b!641144))

(assert (=> m!913082 s!24133))

(declare-fun bs!78665 () Bool)

(declare-fun s!24135 () Bool)

(assert (= bs!78665 (and neg-inst!311 s!24135)))

(declare-fun res!278982 () Bool)

(declare-fun e!391732 () Bool)

(assert (=> bs!78665 (=> res!278982 e!391732)))

(assert (=> bs!78665 (= res!278982 (not (= (list!2916 lt!275195) (list!2916 x!140420))))))

(assert (=> bs!78665 (=> true e!391732)))

(declare-fun b!641145 () Bool)

(assert (=> b!641145 (= e!391732 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78665 (not res!278982)) b!641145))

(declare-fun bs!78666 () Bool)

(assert (= bs!78666 (and m!913082 m!913026 m!913034)))

(assert (=> bs!78666 m!913082))

(assert (=> bs!78666 m!913026))

(assert (=> bs!78666 s!24135))

(declare-fun bs!78667 () Bool)

(declare-fun s!24137 () Bool)

(assert (= bs!78667 (and neg-inst!311 s!24137)))

(declare-fun res!278983 () Bool)

(declare-fun e!391733 () Bool)

(assert (=> bs!78667 (=> res!278983 e!391733)))

(assert (=> bs!78667 (= res!278983 (not (= (list!2916 lt!275195) (list!2916 lt!275166))))))

(assert (=> bs!78667 (=> true e!391733)))

(declare-fun b!641146 () Bool)

(assert (=> b!641146 (= e!391733 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78667 (not res!278983)) b!641146))

(assert (=> bs!78645 m!913082))

(assert (=> bs!78645 m!912970))

(assert (=> bs!78645 s!24137))

(declare-fun bs!78668 () Bool)

(declare-fun s!24139 () Bool)

(assert (= bs!78668 (and neg-inst!311 s!24139)))

(declare-fun res!278984 () Bool)

(declare-fun e!391734 () Bool)

(assert (=> bs!78668 (=> res!278984 e!391734)))

(assert (=> bs!78668 (= res!278984 (not (= (list!2916 lt!275195) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78668 (=> true e!391734)))

(declare-fun b!641147 () Bool)

(assert (=> b!641147 (= e!391734 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78668 (not res!278984)) b!641147))

(assert (=> bs!78643 m!913082))

(assert (=> bs!78643 m!913020))

(assert (=> bs!78643 s!24139))

(declare-fun bs!78669 () Bool)

(declare-fun s!24141 () Bool)

(assert (= bs!78669 (and neg-inst!311 s!24141)))

(declare-fun res!278985 () Bool)

(declare-fun e!391735 () Bool)

(assert (=> bs!78669 (=> res!278985 e!391735)))

(assert (=> bs!78669 (= res!278985 (not (= (list!2916 lt!275195) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78669 (=> true e!391735)))

(declare-fun b!641148 () Bool)

(assert (=> b!641148 (= e!391735 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78669 (not res!278985)) b!641148))

(assert (=> bs!78637 m!913082))

(assert (=> bs!78637 m!912984))

(assert (=> bs!78637 s!24141))

(declare-fun bs!78670 () Bool)

(declare-fun s!24143 () Bool)

(assert (= bs!78670 (and neg-inst!311 s!24143)))

(declare-fun res!278986 () Bool)

(declare-fun e!391736 () Bool)

(assert (=> bs!78670 (=> res!278986 e!391736)))

(assert (=> bs!78670 (= res!278986 (not (= (list!2916 lt!275195) (list!2916 x!140374))))))

(assert (=> bs!78670 (=> true e!391736)))

(declare-fun b!641149 () Bool)

(assert (=> b!641149 (= e!391736 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78670 (not res!278986)) b!641149))

(declare-fun bs!78671 () Bool)

(assert (= bs!78671 (and m!913082 m!912978)))

(assert (=> bs!78671 m!913082))

(assert (=> bs!78671 m!912978))

(assert (=> bs!78671 s!24143))

(declare-fun bs!78672 () Bool)

(declare-fun s!24145 () Bool)

(assert (= bs!78672 (and neg-inst!311 s!24145)))

(declare-fun res!278987 () Bool)

(declare-fun e!391737 () Bool)

(assert (=> bs!78672 (=> res!278987 e!391737)))

(assert (=> bs!78672 (= res!278987 (not (= (list!2916 lt!275195) (list!2916 x!140375))))))

(assert (=> bs!78672 (=> true e!391737)))

(declare-fun b!641150 () Bool)

(assert (=> b!641150 (= e!391737 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78672 (not res!278987)) b!641150))

(declare-fun bs!78673 () Bool)

(assert (= bs!78673 (and m!913082 m!912988)))

(assert (=> bs!78673 m!913082))

(assert (=> bs!78673 m!912988))

(assert (=> bs!78673 s!24145))

(declare-fun bs!78674 () Bool)

(declare-fun s!24147 () Bool)

(assert (= bs!78674 (and neg-inst!311 s!24147)))

(declare-fun res!278988 () Bool)

(declare-fun e!391738 () Bool)

(assert (=> bs!78674 (=> res!278988 e!391738)))

(assert (=> bs!78674 (= res!278988 (not (= (list!2916 lt!275195) (list!2916 x!140419))))))

(assert (=> bs!78674 (=> true e!391738)))

(declare-fun b!641151 () Bool)

(assert (=> b!641151 (= e!391738 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78674 (not res!278988)) b!641151))

(declare-fun bs!78675 () Bool)

(assert (= bs!78675 (and m!913082 m!913016 m!913024)))

(assert (=> bs!78675 m!913082))

(assert (=> bs!78675 m!913024))

(assert (=> bs!78675 s!24147))

(declare-fun bs!78676 () Bool)

(declare-fun s!24149 () Bool)

(assert (= bs!78676 (and neg-inst!311 s!24149)))

(declare-fun res!278989 () Bool)

(declare-fun e!391739 () Bool)

(assert (=> bs!78676 (=> res!278989 e!391739)))

(assert (=> bs!78676 (= res!278989 (not (= (list!2916 lt!275195) (list!2916 x!140376))))))

(assert (=> bs!78676 (=> true e!391739)))

(declare-fun b!641152 () Bool)

(assert (=> b!641152 (= e!391739 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78676 (not res!278989)) b!641152))

(declare-fun bs!78677 () Bool)

(assert (= bs!78677 (and m!913082 m!912990)))

(assert (=> bs!78677 m!913082))

(assert (=> bs!78677 m!912990))

(assert (=> bs!78677 s!24149))

(declare-fun bs!78678 () Bool)

(declare-fun s!24151 () Bool)

(assert (= bs!78678 (and neg-inst!311 s!24151)))

(declare-fun res!278990 () Bool)

(declare-fun e!391740 () Bool)

(assert (=> bs!78678 (=> res!278990 e!391740)))

(assert (=> bs!78678 (= res!278990 (not (= (list!2916 lt!275166) (list!2916 lt!275195))))))

(assert (=> bs!78678 (=> true e!391740)))

(declare-fun b!641153 () Bool)

(assert (=> b!641153 (= e!391740 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78678 (not res!278990)) b!641153))

(assert (=> bs!78645 m!912970))

(assert (=> bs!78645 m!913082))

(assert (=> bs!78645 s!24151))

(assert (=> m!913082 s!24133))

(declare-fun bs!78679 () Bool)

(declare-fun s!24153 () Bool)

(assert (= bs!78679 (and neg-inst!311 s!24153)))

(declare-fun res!278991 () Bool)

(declare-fun e!391741 () Bool)

(assert (=> bs!78679 (=> res!278991 e!391741)))

(assert (=> bs!78679 (= res!278991 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275195))))))

(assert (=> bs!78679 (=> true e!391741)))

(declare-fun b!641154 () Bool)

(assert (=> b!641154 (= e!391741 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78679 (not res!278991)) b!641154))

(assert (=> bs!78643 m!913020))

(assert (=> bs!78643 m!913082))

(assert (=> bs!78643 s!24153))

(declare-fun bs!78680 () Bool)

(declare-fun s!24155 () Bool)

(assert (= bs!78680 (and neg-inst!311 s!24155)))

(declare-fun res!278992 () Bool)

(declare-fun e!391742 () Bool)

(assert (=> bs!78680 (=> res!278992 e!391742)))

(assert (=> bs!78680 (= res!278992 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275195))))))

(assert (=> bs!78680 (=> true e!391742)))

(declare-fun b!641155 () Bool)

(assert (=> b!641155 (= e!391742 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78680 (not res!278992)) b!641155))

(assert (=> bs!78637 m!912984))

(assert (=> bs!78637 m!913082))

(assert (=> bs!78637 s!24155))

(declare-fun bs!78681 () Bool)

(declare-fun s!24157 () Bool)

(assert (= bs!78681 (and neg-inst!311 s!24157)))

(declare-fun res!278993 () Bool)

(declare-fun e!391743 () Bool)

(assert (=> bs!78681 (=> res!278993 e!391743)))

(assert (=> bs!78681 (= res!278993 (not (= (list!2916 x!140376) (list!2916 lt!275195))))))

(assert (=> bs!78681 (=> true e!391743)))

(declare-fun b!641156 () Bool)

(assert (=> b!641156 (= e!391743 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78681 (not res!278993)) b!641156))

(assert (=> bs!78677 m!912990))

(assert (=> bs!78677 m!913082))

(assert (=> bs!78677 s!24157))

(declare-fun bs!78682 () Bool)

(declare-fun s!24159 () Bool)

(assert (= bs!78682 (and neg-inst!311 s!24159)))

(declare-fun res!278994 () Bool)

(declare-fun e!391744 () Bool)

(assert (=> bs!78682 (=> res!278994 e!391744)))

(assert (=> bs!78682 (= res!278994 (not (= (list!2916 x!140374) (list!2916 lt!275195))))))

(assert (=> bs!78682 (=> true e!391744)))

(declare-fun b!641157 () Bool)

(assert (=> b!641157 (= e!391744 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78682 (not res!278994)) b!641157))

(assert (=> bs!78671 m!912978))

(assert (=> bs!78671 m!913082))

(assert (=> bs!78671 s!24159))

(declare-fun bs!78683 () Bool)

(declare-fun s!24161 () Bool)

(assert (= bs!78683 (and neg-inst!311 s!24161)))

(declare-fun res!278995 () Bool)

(declare-fun e!391745 () Bool)

(assert (=> bs!78683 (=> res!278995 e!391745)))

(assert (=> bs!78683 (= res!278995 (not (= (list!2916 x!140420) (list!2916 lt!275195))))))

(assert (=> bs!78683 (=> true e!391745)))

(declare-fun b!641158 () Bool)

(assert (=> b!641158 (= e!391745 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78683 (not res!278995)) b!641158))

(assert (=> bs!78666 m!913026))

(assert (=> bs!78666 m!913082))

(assert (=> bs!78666 s!24161))

(declare-fun bs!78684 () Bool)

(declare-fun s!24163 () Bool)

(assert (= bs!78684 (and neg-inst!311 s!24163)))

(declare-fun res!278996 () Bool)

(declare-fun e!391746 () Bool)

(assert (=> bs!78684 (=> res!278996 e!391746)))

(assert (=> bs!78684 (= res!278996 (not (= (list!2916 x!140421) (list!2916 lt!275195))))))

(assert (=> bs!78684 (=> true e!391746)))

(declare-fun b!641159 () Bool)

(assert (=> b!641159 (= e!391746 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78684 (not res!278996)) b!641159))

(assert (=> bs!78663 m!913028))

(assert (=> bs!78663 m!913082))

(assert (=> bs!78663 s!24163))

(declare-fun bs!78685 () Bool)

(declare-fun s!24165 () Bool)

(assert (= bs!78685 (and neg-inst!311 s!24165)))

(declare-fun res!278997 () Bool)

(declare-fun e!391747 () Bool)

(assert (=> bs!78685 (=> res!278997 e!391747)))

(assert (=> bs!78685 (= res!278997 (not (= (list!2916 x!140375) (list!2916 lt!275195))))))

(assert (=> bs!78685 (=> true e!391747)))

(declare-fun b!641160 () Bool)

(assert (=> b!641160 (= e!391747 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78685 (not res!278997)) b!641160))

(assert (=> bs!78673 m!912988))

(assert (=> bs!78673 m!913082))

(assert (=> bs!78673 s!24165))

(declare-fun bs!78686 () Bool)

(declare-fun s!24167 () Bool)

(assert (= bs!78686 (and neg-inst!311 s!24167)))

(declare-fun res!278998 () Bool)

(declare-fun e!391748 () Bool)

(assert (=> bs!78686 (=> res!278998 e!391748)))

(assert (=> bs!78686 (= res!278998 (not (= (list!2916 x!140419) (list!2916 lt!275195))))))

(assert (=> bs!78686 (=> true e!391748)))

(declare-fun b!641161 () Bool)

(assert (=> b!641161 (= e!391748 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78686 (not res!278998)) b!641161))

(assert (=> bs!78675 m!913024))

(assert (=> bs!78675 m!913082))

(assert (=> bs!78675 s!24167))

(assert (=> d!223253 m!913082))

(declare-fun m!913084 () Bool)

(assert (=> d!223253 m!913084))

(declare-fun m!913086 () Bool)

(assert (=> b!641123 m!913086))

(assert (=> d!223105 d!223253))

(declare-fun d!223255 () Bool)

(assert (=> d!223255 (= (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x002C)) (dynLambda!3758 (toValue!2319 (injection!9 KeywordValueInjection!43)) (singletonSeq!437 #x002C)))))

(declare-fun b_lambda!25277 () Bool)

(assert (=> (not b_lambda!25277) (not d!223255)))

(declare-fun bs!78687 () Bool)

(assert (= bs!78687 d!223255))

(assert (=> bs!78687 m!912443))

(declare-fun m!913088 () Bool)

(assert (=> bs!78687 m!913088))

(assert (=> d!223105 d!223255))

(declare-fun b!641174 () Bool)

(declare-fun e!391754 () Bool)

(declare-fun isEmpty!4704 (Conc!2318) Bool)

(assert (=> b!641174 (= e!391754 (not (isEmpty!4704 (right!5794 (c!117092 (tokens!1209 printableTokens!2))))))))

(declare-fun b!641175 () Bool)

(declare-fun res!279012 () Bool)

(assert (=> b!641175 (=> (not res!279012) (not e!391754))))

(assert (=> b!641175 (= res!279012 (<= (- (height!283 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))) (height!283 (right!5794 (c!117092 (tokens!1209 printableTokens!2))))) 1))))

(declare-fun b!641176 () Bool)

(declare-fun e!391753 () Bool)

(assert (=> b!641176 (= e!391753 e!391754)))

(declare-fun res!279013 () Bool)

(assert (=> b!641176 (=> (not res!279013) (not e!391754))))

(assert (=> b!641176 (= res!279013 (<= (- 1) (- (height!283 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))) (height!283 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))))))))

(declare-fun b!641177 () Bool)

(declare-fun res!279011 () Bool)

(assert (=> b!641177 (=> (not res!279011) (not e!391754))))

(assert (=> b!641177 (= res!279011 (not (isEmpty!4704 (left!5464 (c!117092 (tokens!1209 printableTokens!2))))))))

(declare-fun b!641178 () Bool)

(declare-fun res!279015 () Bool)

(assert (=> b!641178 (=> (not res!279015) (not e!391754))))

(assert (=> b!641178 (= res!279015 (isBalanced!614 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))))))

(declare-fun d!223257 () Bool)

(declare-fun res!279016 () Bool)

(assert (=> d!223257 (=> res!279016 e!391753)))

(assert (=> d!223257 (= res!279016 (not ((_ is Node!2318) (c!117092 (tokens!1209 printableTokens!2)))))))

(assert (=> d!223257 (= (isBalanced!614 (c!117092 (tokens!1209 printableTokens!2))) e!391753)))

(declare-fun b!641179 () Bool)

(declare-fun res!279014 () Bool)

(assert (=> b!641179 (=> (not res!279014) (not e!391754))))

(assert (=> b!641179 (= res!279014 (isBalanced!614 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))))))

(assert (= (and d!223257 (not res!279016)) b!641176))

(assert (= (and b!641176 res!279013) b!641175))

(assert (= (and b!641175 res!279012) b!641178))

(assert (= (and b!641178 res!279015) b!641179))

(assert (= (and b!641179 res!279014) b!641177))

(assert (= (and b!641177 res!279011) b!641174))

(declare-fun m!913090 () Bool)

(assert (=> b!641178 m!913090))

(declare-fun m!913092 () Bool)

(assert (=> b!641175 m!913092))

(declare-fun m!913094 () Bool)

(assert (=> b!641175 m!913094))

(assert (=> b!641176 m!913092))

(assert (=> b!641176 m!913094))

(declare-fun m!913096 () Bool)

(assert (=> b!641179 m!913096))

(declare-fun m!913098 () Bool)

(assert (=> b!641174 m!913098))

(declare-fun m!913100 () Bool)

(assert (=> b!641177 m!913100))

(assert (=> d!223147 d!223257))

(declare-fun d!223259 () Bool)

(assert (=> d!223259 (= (separableTokens!28 Lexer!1254 (tokens!1209 printableTokens!2) (rules!8210 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!12 Lexer!1254 (tokens!1209 printableTokens!2) 0 (rules!8210 printableTokens!2)))))

(declare-fun bs!78688 () Bool)

(assert (= bs!78688 d!223259))

(assert (=> bs!78688 m!912719))

(assert (=> b!640652 d!223259))

(declare-fun d!223261 () Bool)

(declare-fun res!279021 () Bool)

(declare-fun e!391759 () Bool)

(assert (=> d!223261 (=> res!279021 e!391759)))

(assert (=> d!223261 (= res!279021 ((_ is Nil!6865) lt!274715))))

(assert (=> d!223261 (= (noDuplicateTag!507 Lexer!1254 lt!274715 Nil!6872) e!391759)))

(declare-fun b!641184 () Bool)

(declare-fun e!391760 () Bool)

(assert (=> b!641184 (= e!391759 e!391760)))

(declare-fun res!279022 () Bool)

(assert (=> b!641184 (=> (not res!279022) (not e!391760))))

(declare-fun contains!1537 (List!6886 String!8798) Bool)

(assert (=> b!641184 (= res!279022 (not (contains!1537 Nil!6872 (tag!1640 (h!12266 lt!274715)))))))

(declare-fun b!641185 () Bool)

(assert (=> b!641185 (= e!391760 (noDuplicateTag!507 Lexer!1254 (t!84889 lt!274715) (Cons!6872 (tag!1640 (h!12266 lt!274715)) Nil!6872)))))

(assert (= (and d!223261 (not res!279021)) b!641184))

(assert (= (and b!641184 res!279022) b!641185))

(declare-fun m!913102 () Bool)

(assert (=> b!641184 m!913102))

(declare-fun m!913104 () Bool)

(assert (=> b!641185 m!913104))

(assert (=> b!640661 d!223261))

(declare-fun d!223263 () Bool)

(assert (=> d!223263 (= (usesJsonRules!0 (get!2484 (_1!4052 lt!274735))) (= (rules!8210 (get!2484 (_1!4052 lt!274735))) (rules!109 JsonLexer!197)))))

(declare-fun bs!78689 () Bool)

(assert (= bs!78689 d!223263))

(assert (=> bs!78689 m!912257))

(assert (=> b!640512 d!223263))

(declare-fun d!223265 () Bool)

(assert (=> d!223265 (= (get!2484 (_1!4052 lt!274735)) (v!16998 (_1!4052 lt!274735)))))

(assert (=> b!640512 d!223265))

(declare-fun b!641194 () Bool)

(declare-fun e!391769 () Option!1661)

(assert (=> b!641194 (= e!391769 (Some!1660 (PrintableTokens!137 (rules!109 JsonLexer!197) lt!274851)))))

(declare-fun b!641197 () Bool)

(declare-fun e!391767 () Bool)

(declare-fun lt!275198 () Option!1661)

(assert (=> b!641197 (= e!391767 (= (tokens!1209 (get!2484 lt!275198)) lt!274851))))

(declare-fun b!641195 () Bool)

(assert (=> b!641195 (= e!391769 None!1660)))

(declare-fun b!641196 () Bool)

(declare-fun e!391768 () Bool)

(assert (=> b!641196 (= e!391768 e!391767)))

(declare-fun res!279027 () Bool)

(assert (=> b!641196 (=> (not res!279027) (not e!391767))))

(assert (=> b!641196 (= res!279027 (= (rules!8210 (get!2484 lt!275198)) (rules!109 JsonLexer!197)))))

(declare-fun d!223267 () Bool)

(assert (=> d!223267 e!391768))

(declare-fun res!279028 () Bool)

(assert (=> d!223267 (=> res!279028 e!391768)))

(assert (=> d!223267 (= res!279028 (isEmpty!4700 lt!275198))))

(assert (=> d!223267 (= lt!275198 e!391769)))

(declare-fun c!117188 () Bool)

(assert (=> d!223267 (= c!117188 (separableTokens!28 Lexer!1254 lt!274851 (rules!109 JsonLexer!197)))))

(assert (=> d!223267 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223267 (= (printableTokensFromTokens!10 (rules!109 JsonLexer!197) lt!274851) lt!275198)))

(assert (= (and d!223267 c!117188) b!641194))

(assert (= (and d!223267 (not c!117188)) b!641195))

(assert (= (and d!223267 (not res!279028)) b!641196))

(assert (= (and b!641196 res!279027) b!641197))

(declare-fun m!913106 () Bool)

(assert (=> b!641197 m!913106))

(assert (=> b!641196 m!913106))

(declare-fun m!913108 () Bool)

(assert (=> d!223267 m!913108))

(assert (=> d!223267 m!912257))

(declare-fun m!913110 () Bool)

(assert (=> d!223267 m!913110))

(assert (=> d!223267 m!912257))

(assert (=> d!223267 m!912325))

(assert (=> b!640568 d!223267))

(assert (=> b!640568 d!223137))

(declare-fun bs!78690 () Bool)

(declare-fun b!641198 () Bool)

(assert (= bs!78690 (and b!641198 b!640625)))

(declare-fun lambda!19035 () Int)

(assert (=> bs!78690 (= lambda!19035 lambda!18950)))

(declare-fun bs!78691 () Bool)

(assert (= bs!78691 (and b!641198 d!223121)))

(assert (=> bs!78691 (= lambda!19035 lambda!18951)))

(assert (=> b!641198 true))

(declare-fun bs!78692 () Bool)

(declare-fun d!223269 () Bool)

(assert (= bs!78692 (and d!223269 b!640625)))

(declare-fun lambda!19036 () Int)

(assert (=> bs!78692 (= lambda!19036 lambda!18950)))

(declare-fun bs!78693 () Bool)

(assert (= bs!78693 (and d!223269 d!223121)))

(assert (=> bs!78693 (= lambda!19036 lambda!18951)))

(declare-fun bs!78694 () Bool)

(assert (= bs!78694 (and d!223269 b!641198)))

(assert (=> bs!78694 (= lambda!19036 lambda!19035)))

(assert (=> d!223269 true))

(declare-fun bm!41668 () Bool)

(declare-fun c!117189 () Bool)

(declare-fun c!117190 () Bool)

(assert (=> bm!41668 (= c!117189 c!117190)))

(declare-fun call!41673 () BalanceConc!4654)

(declare-fun e!391771 () BalanceConc!4654)

(assert (=> bm!41668 (= call!41673 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 (+ 0 1 1) e!391771))))

(declare-fun b!641199 () Bool)

(assert (=> b!641199 (= e!391771 e!391270)))

(declare-fun b!641200 () Bool)

(declare-fun e!391770 () BalanceConc!4654)

(declare-fun e!391773 () BalanceConc!4654)

(assert (=> b!641200 (= e!391770 e!391773)))

(declare-fun lt!275200 () Token!2478)

(assert (=> b!641200 (= lt!275200 (apply!1634 (tokens!1209 printableTokens!2) (+ 0 1)))))

(declare-fun res!279030 () Bool)

(assert (=> b!641200 (= res!279030 (isKeywordValue!0 lt!275200 LeftBrace!1412))))

(declare-fun e!391774 () Bool)

(assert (=> b!641200 (=> res!279030 e!391774)))

(assert (=> b!641200 (= c!117190 e!391774)))

(declare-fun b!641201 () Bool)

(assert (=> b!641201 (= e!391771 (append!217 e!391270 (+ 0 1)))))

(declare-fun b!641202 () Bool)

(assert (=> b!641202 (= e!391770 e!391270)))

(declare-fun b!641203 () Bool)

(assert (=> b!641203 (= e!391774 (isKeywordValue!0 lt!275200 RightBrace!1412))))

(declare-fun b!641204 () Bool)

(declare-fun e!391772 () Bool)

(assert (=> b!641204 (= e!391772 (<= (+ 0 1) (size!5419 (tokens!1209 printableTokens!2))))))

(declare-fun b!641205 () Bool)

(assert (=> b!641205 (= e!391773 call!41673)))

(declare-fun lt!275199 () Unit!11924)

(assert (=> b!641198 (= lt!275199 (lemmaConcatPreservesForall!47 (list!2913 e!391270) (Cons!6871 (+ 0 1) Nil!6871) lambda!19035))))

(assert (=> b!641198 (= e!391773 call!41673)))

(declare-fun lt!275201 () BalanceConc!4654)

(assert (=> d!223269 (forall!1762 lt!275201 lambda!19036)))

(assert (=> d!223269 (= lt!275201 e!391770)))

(declare-fun c!117191 () Bool)

(assert (=> d!223269 (= c!117191 (>= (+ 0 1) (size!5419 (tokens!1209 printableTokens!2))))))

(assert (=> d!223269 e!391772))

(declare-fun res!279029 () Bool)

(assert (=> d!223269 (=> (not res!279029) (not e!391772))))

(assert (=> d!223269 (= res!279029 (>= (+ 0 1) 0))))

(assert (=> d!223269 (= (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 (+ 0 1) e!391270) lt!275201)))

(assert (= (and d!223269 res!279029) b!641204))

(assert (= (and d!223269 c!117191) b!641202))

(assert (= (and d!223269 (not c!117191)) b!641200))

(assert (= (and b!641200 (not res!279030)) b!641203))

(assert (= (and b!641200 c!117190) b!641198))

(assert (= (and b!641200 (not c!117190)) b!641205))

(assert (= (or b!641198 b!641205) bm!41668))

(assert (= (and bm!41668 c!117189) b!641201))

(assert (= (and bm!41668 (not c!117189)) b!641199))

(declare-fun m!913112 () Bool)

(assert (=> d!223269 m!913112))

(assert (=> d!223269 m!912533))

(declare-fun m!913114 () Bool)

(assert (=> b!641203 m!913114))

(assert (=> b!641204 m!912533))

(declare-fun m!913116 () Bool)

(assert (=> b!641200 m!913116))

(declare-fun m!913118 () Bool)

(assert (=> b!641200 m!913118))

(declare-fun m!913120 () Bool)

(assert (=> bm!41668 m!913120))

(declare-fun m!913122 () Bool)

(assert (=> b!641201 m!913122))

(declare-fun m!913124 () Bool)

(assert (=> b!641198 m!913124))

(assert (=> b!641198 m!913124))

(declare-fun m!913126 () Bool)

(assert (=> b!641198 m!913126))

(assert (=> bm!41664 d!223269))

(declare-fun bs!78695 () Bool)

(declare-fun d!223271 () Bool)

(assert (= bs!78695 (and d!223271 d!223165)))

(declare-fun lambda!19037 () Int)

(assert (=> bs!78695 (= lambda!19037 lambda!18955)))

(declare-fun bs!78696 () Bool)

(assert (= bs!78696 (and d!223271 d!223223)))

(assert (=> bs!78696 (= lambda!19037 lambda!18983)))

(declare-fun bs!78697 () Bool)

(assert (= bs!78697 (and d!223271 d!223189)))

(assert (=> bs!78697 (= lambda!19037 lambda!18974)))

(declare-fun bs!78698 () Bool)

(assert (= bs!78698 (and d!223271 d!223221)))

(assert (=> bs!78698 (= lambda!19037 lambda!18982)))

(declare-fun bs!78699 () Bool)

(assert (= bs!78699 (and d!223271 d!223207)))

(assert (=> bs!78699 (= lambda!19037 lambda!18977)))

(declare-fun bs!78700 () Bool)

(assert (= bs!78700 (and d!223271 d!223169)))

(assert (=> bs!78700 (= lambda!19037 lambda!18959)))

(declare-fun bs!78701 () Bool)

(assert (= bs!78701 (and d!223271 d!223201)))

(assert (=> bs!78701 (= lambda!19037 lambda!18976)))

(declare-fun bs!78702 () Bool)

(assert (= bs!78702 (and d!223271 d!223181)))

(assert (=> bs!78702 (= lambda!19037 lambda!18973)))

(declare-fun bs!78703 () Bool)

(assert (= bs!78703 (and d!223271 d!223211)))

(assert (=> bs!78703 (= lambda!19037 lambda!18981)))

(declare-fun bs!78704 () Bool)

(assert (= bs!78704 (and d!223271 d!223159)))

(assert (=> bs!78704 (= lambda!19037 lambda!18954)))

(declare-fun bs!78705 () Bool)

(assert (= bs!78705 (and d!223271 d!223195)))

(assert (=> bs!78705 (= lambda!19037 lambda!18975)))

(assert (=> d!223271 (= (inv!8707 (_1!4048 (_1!4049 (h!12268 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))))) (forall!1763 (exprs!699 (_1!4048 (_1!4049 (h!12268 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))))) lambda!19037))))

(declare-fun bs!78706 () Bool)

(assert (= bs!78706 d!223271))

(declare-fun m!913128 () Bool)

(assert (=> bs!78706 m!913128))

(assert (=> b!640715 d!223271))

(declare-fun d!223273 () Bool)

(declare-fun lt!275204 () Token!2478)

(assert (=> d!223273 (= lt!275204 (apply!1635 (list!2914 (tokens!1209 printableTokens!2)) 0))))

(declare-fun apply!1636 (Conc!2318 Int) Token!2478)

(assert (=> d!223273 (= lt!275204 (apply!1636 (c!117092 (tokens!1209 printableTokens!2)) 0))))

(declare-fun e!391777 () Bool)

(assert (=> d!223273 e!391777))

(declare-fun res!279033 () Bool)

(assert (=> d!223273 (=> (not res!279033) (not e!391777))))

(assert (=> d!223273 (= res!279033 (<= 0 0))))

(assert (=> d!223273 (= (apply!1634 (tokens!1209 printableTokens!2) 0) lt!275204)))

(declare-fun b!641208 () Bool)

(assert (=> b!641208 (= e!391777 (< 0 (size!5419 (tokens!1209 printableTokens!2))))))

(assert (= (and d!223273 res!279033) b!641208))

(assert (=> d!223273 m!912653))

(assert (=> d!223273 m!912653))

(declare-fun m!913130 () Bool)

(assert (=> d!223273 m!913130))

(declare-fun m!913132 () Bool)

(assert (=> d!223273 m!913132))

(assert (=> b!641208 m!912533))

(assert (=> b!640627 d!223273))

(declare-fun d!223275 () Bool)

(declare-fun choose!511 (Token!2478 TokenValue!1412) Bool)

(assert (=> d!223275 (= (isKeywordValue!0 lt!274902 LeftBrace!1412) (choose!511 lt!274902 LeftBrace!1412))))

(declare-fun bs!78707 () Bool)

(assert (= bs!78707 d!223275))

(declare-fun m!913134 () Bool)

(assert (=> bs!78707 m!913134))

(assert (=> b!640627 d!223275))

(declare-fun d!223277 () Bool)

(declare-fun lt!275205 () Int)

(assert (=> d!223277 (>= lt!275205 0)))

(declare-fun e!391778 () Int)

(assert (=> d!223277 (= lt!275205 e!391778)))

(declare-fun c!117192 () Bool)

(assert (=> d!223277 (= c!117192 ((_ is Nil!6869) (filter!131 lt!274835 lambda!18925)))))

(assert (=> d!223277 (= (size!5416 (filter!131 lt!274835 lambda!18925)) lt!275205)))

(declare-fun b!641209 () Bool)

(assert (=> b!641209 (= e!391778 0)))

(declare-fun b!641210 () Bool)

(assert (=> b!641210 (= e!391778 (+ 1 (size!5416 (t!84893 (filter!131 lt!274835 lambda!18925)))))))

(assert (= (and d!223277 c!117192) b!641209))

(assert (= (and d!223277 (not c!117192)) b!641210))

(declare-fun m!913136 () Bool)

(assert (=> b!641210 m!913136))

(assert (=> b!640537 d!223277))

(declare-fun b!641211 () Bool)

(declare-fun e!391780 () List!6883)

(assert (=> b!641211 (= e!391780 Nil!6869)))

(declare-fun bm!41669 () Bool)

(declare-fun call!41674 () List!6883)

(assert (=> bm!41669 (= call!41674 (filter!131 (t!84893 lt!274835) lambda!18925))))

(declare-fun d!223279 () Bool)

(declare-fun e!391781 () Bool)

(assert (=> d!223279 e!391781))

(declare-fun res!279035 () Bool)

(assert (=> d!223279 (=> (not res!279035) (not e!391781))))

(declare-fun lt!275206 () List!6883)

(assert (=> d!223279 (= res!279035 (<= (size!5416 lt!275206) (size!5416 lt!274835)))))

(assert (=> d!223279 (= lt!275206 e!391780)))

(declare-fun c!117194 () Bool)

(assert (=> d!223279 (= c!117194 ((_ is Nil!6869) lt!274835))))

(assert (=> d!223279 (= (filter!131 lt!274835 lambda!18925) lt!275206)))

(declare-fun b!641212 () Bool)

(declare-fun e!391779 () List!6883)

(assert (=> b!641212 (= e!391779 (Cons!6869 (h!12270 lt!274835) call!41674))))

(declare-fun b!641213 () Bool)

(assert (=> b!641213 (= e!391780 e!391779)))

(declare-fun c!117193 () Bool)

(assert (=> b!641213 (= c!117193 (dynLambda!3752 lambda!18925 (h!12270 lt!274835)))))

(declare-fun b!641214 () Bool)

(declare-fun res!279034 () Bool)

(assert (=> b!641214 (=> (not res!279034) (not e!391781))))

(assert (=> b!641214 (= res!279034 (= ((_ map implies) (content!1167 lt!275206) (content!1167 lt!274835)) ((as const (InoxSet tuple2!7434)) true)))))

(declare-fun b!641215 () Bool)

(assert (=> b!641215 (= e!391779 call!41674)))

(declare-fun b!641216 () Bool)

(assert (=> b!641216 (= e!391781 (forall!1760 lt!275206 lambda!18925))))

(assert (= (and d!223279 c!117194) b!641211))

(assert (= (and d!223279 (not c!117194)) b!641213))

(assert (= (and b!641213 c!117193) b!641212))

(assert (= (and b!641213 (not c!117193)) b!641215))

(assert (= (or b!641212 b!641215) bm!41669))

(assert (= (and d!223279 res!279035) b!641214))

(assert (= (and b!641214 res!279034) b!641216))

(declare-fun b_lambda!25279 () Bool)

(assert (=> (not b_lambda!25279) (not b!641213)))

(declare-fun m!913138 () Bool)

(assert (=> b!641214 m!913138))

(declare-fun m!913140 () Bool)

(assert (=> b!641214 m!913140))

(declare-fun m!913142 () Bool)

(assert (=> d!223279 m!913142))

(assert (=> d!223279 m!912421))

(declare-fun m!913144 () Bool)

(assert (=> b!641216 m!913144))

(declare-fun m!913146 () Bool)

(assert (=> bm!41669 m!913146))

(declare-fun m!913148 () Bool)

(assert (=> b!641213 m!913148))

(assert (=> b!640537 d!223279))

(declare-fun d!223281 () Bool)

(declare-fun lt!275207 () Int)

(assert (=> d!223281 (>= lt!275207 0)))

(declare-fun e!391782 () Int)

(assert (=> d!223281 (= lt!275207 e!391782)))

(declare-fun c!117195 () Bool)

(assert (=> d!223281 (= c!117195 ((_ is Nil!6869) lt!274835))))

(assert (=> d!223281 (= (size!5416 lt!274835) lt!275207)))

(declare-fun b!641217 () Bool)

(assert (=> b!641217 (= e!391782 0)))

(declare-fun b!641218 () Bool)

(assert (=> b!641218 (= e!391782 (+ 1 (size!5416 (t!84893 lt!274835))))))

(assert (= (and d!223281 c!117195) b!641217))

(assert (= (and d!223281 (not c!117195)) b!641218))

(declare-fun m!913150 () Bool)

(assert (=> b!641218 m!913150))

(assert (=> b!640537 d!223281))

(declare-fun bs!78708 () Bool)

(declare-fun b!641221 () Bool)

(assert (= bs!78708 (and b!641221 b!640495)))

(declare-fun lambda!19038 () Int)

(assert (=> bs!78708 (not (= lambda!19038 lambda!18868))))

(declare-fun bs!78709 () Bool)

(assert (= bs!78709 (and b!641221 b!640539)))

(assert (=> bs!78709 (not (= lambda!19038 lambda!18925))))

(declare-fun bs!78710 () Bool)

(assert (= bs!78710 (and b!641221 d!223103)))

(assert (=> bs!78710 (not (= lambda!19038 lambda!18927))))

(declare-fun lt!275227 () tuple2!7434)

(assert (=> bs!78709 (= (= (_1!4053 lt!275227) (_1!4053 lt!274827)) (= lambda!19038 lambda!18923))))

(declare-fun bs!78711 () Bool)

(assert (= bs!78711 (and b!641221 d!223095)))

(assert (=> bs!78711 (not (= lambda!19038 lambda!18873))))

(declare-fun bs!78712 () Bool)

(assert (= bs!78712 (and b!641221 d!223117)))

(assert (=> bs!78712 (not (= lambda!19038 lambda!18944))))

(assert (=> bs!78709 (not (= lambda!19038 lambda!18924))))

(assert (=> bs!78712 (not (= lambda!19038 lambda!18945))))

(assert (=> bs!78709 (not (= lambda!19038 lambda!18926))))

(declare-fun b!641232 () Bool)

(declare-fun e!391791 () Bool)

(assert (=> b!641232 (= e!391791 true)))

(declare-fun b!641231 () Bool)

(declare-fun e!391790 () Bool)

(assert (=> b!641231 (= e!391790 e!391791)))

(assert (=> b!641221 e!391790))

(assert (= b!641231 b!641232))

(assert (= b!641221 b!641231))

(declare-fun lambda!19039 () Int)

(assert (=> bs!78708 (not (= lambda!19039 lambda!18868))))

(assert (=> b!641221 (not (= lambda!19039 lambda!19038))))

(assert (=> bs!78709 (not (= lambda!19039 lambda!18925))))

(assert (=> bs!78710 (not (= lambda!19039 lambda!18927))))

(assert (=> bs!78709 (not (= lambda!19039 lambda!18923))))

(assert (=> bs!78711 (not (= lambda!19039 lambda!18873))))

(assert (=> bs!78712 (not (= lambda!19039 lambda!18944))))

(assert (=> bs!78709 (= (= (_1!4053 lt!275227) (_1!4053 lt!274827)) (= lambda!19039 lambda!18924))))

(assert (=> bs!78712 (not (= lambda!19039 lambda!18945))))

(assert (=> bs!78709 (not (= lambda!19039 lambda!18926))))

(declare-fun b!641234 () Bool)

(declare-fun e!391793 () Bool)

(assert (=> b!641234 (= e!391793 true)))

(declare-fun b!641233 () Bool)

(declare-fun e!391792 () Bool)

(assert (=> b!641233 (= e!391792 e!391793)))

(assert (=> b!641221 e!391792))

(assert (= b!641233 b!641234))

(assert (= b!641221 b!641233))

(declare-fun lambda!19040 () Int)

(assert (=> bs!78708 (not (= lambda!19040 lambda!18868))))

(assert (=> b!641221 (not (= lambda!19040 lambda!19038))))

(assert (=> bs!78709 (= (= (_1!4053 lt!275227) (_1!4053 lt!274827)) (= lambda!19040 lambda!18925))))

(assert (=> bs!78710 (not (= lambda!19040 lambda!18927))))

(assert (=> bs!78709 (not (= lambda!19040 lambda!18923))))

(assert (=> bs!78711 (not (= lambda!19040 lambda!18873))))

(assert (=> bs!78712 (not (= lambda!19040 lambda!18944))))

(assert (=> bs!78709 (not (= lambda!19040 lambda!18924))))

(assert (=> bs!78712 (not (= lambda!19040 lambda!18945))))

(assert (=> bs!78709 (not (= lambda!19040 lambda!18926))))

(assert (=> b!641221 (not (= lambda!19040 lambda!19039))))

(declare-fun b!641236 () Bool)

(declare-fun e!391795 () Bool)

(assert (=> b!641236 (= e!391795 true)))

(declare-fun b!641235 () Bool)

(declare-fun e!391794 () Bool)

(assert (=> b!641235 (= e!391794 e!391795)))

(assert (=> b!641221 e!391794))

(assert (= b!641235 b!641236))

(assert (= b!641221 b!641235))

(declare-fun lambda!19041 () Int)

(assert (=> bs!78708 (= lambda!19041 lambda!18868)))

(assert (=> b!641221 (not (= lambda!19041 lambda!19038))))

(assert (=> bs!78709 (not (= lambda!19041 lambda!18925))))

(assert (=> bs!78710 (= lambda!19041 lambda!18927)))

(assert (=> bs!78711 (not (= lambda!19041 lambda!18873))))

(assert (=> bs!78712 (= lambda!19041 lambda!18944)))

(assert (=> bs!78709 (not (= lambda!19041 lambda!18924))))

(assert (=> bs!78712 (not (= lambda!19041 lambda!18945))))

(assert (=> b!641221 (not (= lambda!19041 lambda!19040))))

(assert (=> bs!78709 (not (= lambda!19041 lambda!18923))))

(assert (=> bs!78709 (= lambda!19041 lambda!18926)))

(assert (=> b!641221 (not (= lambda!19041 lambda!19039))))

(declare-fun bs!78713 () Bool)

(declare-fun d!223283 () Bool)

(assert (= bs!78713 (and d!223283 b!640495)))

(declare-fun lambda!19042 () Int)

(assert (=> bs!78713 (= lambda!19042 lambda!18868)))

(declare-fun bs!78714 () Bool)

(assert (= bs!78714 (and d!223283 b!641221)))

(assert (=> bs!78714 (not (= lambda!19042 lambda!19038))))

(declare-fun bs!78715 () Bool)

(assert (= bs!78715 (and d!223283 b!640539)))

(assert (=> bs!78715 (not (= lambda!19042 lambda!18925))))

(assert (=> bs!78714 (= lambda!19042 lambda!19041)))

(declare-fun bs!78716 () Bool)

(assert (= bs!78716 (and d!223283 d!223103)))

(assert (=> bs!78716 (= lambda!19042 lambda!18927)))

(declare-fun bs!78717 () Bool)

(assert (= bs!78717 (and d!223283 d!223095)))

(assert (=> bs!78717 (not (= lambda!19042 lambda!18873))))

(declare-fun bs!78718 () Bool)

(assert (= bs!78718 (and d!223283 d!223117)))

(assert (=> bs!78718 (= lambda!19042 lambda!18944)))

(assert (=> bs!78715 (not (= lambda!19042 lambda!18924))))

(assert (=> bs!78718 (not (= lambda!19042 lambda!18945))))

(assert (=> bs!78714 (not (= lambda!19042 lambda!19040))))

(assert (=> bs!78715 (not (= lambda!19042 lambda!18923))))

(assert (=> bs!78715 (= lambda!19042 lambda!18926)))

(assert (=> bs!78714 (not (= lambda!19042 lambda!19039))))

(declare-fun b!641219 () Bool)

(declare-fun e!391787 () Bool)

(declare-fun lt!275235 () List!6883)

(assert (=> b!641219 (= e!391787 (< (size!5416 (filter!131 lt!275235 lambda!19040)) (size!5416 lt!275235)))))

(declare-fun b!641220 () Bool)

(assert (=> b!641220 true))

(declare-fun lt!275230 () Unit!11924)

(declare-fun lt!275218 () BalanceConc!4650)

(assert (=> b!641220 (= lt!275230 (forallContained!463 (list!2909 lt!275218) lambda!19038 lt!275227))))

(declare-fun e!391785 () Unit!11924)

(declare-fun err!649 () Unit!11924)

(assert (=> b!641220 (= e!391785 err!649)))

(declare-fun b!641222 () Bool)

(assert (=> b!641222 true))

(declare-fun lt!275223 () Unit!11924)

(assert (=> b!641222 (= lt!275223 (forallContained!463 (list!2909 lt!274832) lambda!19038 lt!275227))))

(declare-fun e!391784 () Unit!11924)

(declare-fun err!648 () Unit!11924)

(assert (=> b!641222 (= e!391784 err!648)))

(declare-fun b!641223 () Bool)

(declare-fun Unit!11951 () Unit!11924)

(assert (=> b!641223 (= e!391785 Unit!11951)))

(declare-fun b!641224 () Bool)

(declare-fun e!391789 () BalanceConc!4650)

(assert (=> b!641224 (= e!391789 lt!274832)))

(declare-fun lt!275229 () BalanceConc!4650)

(assert (=> d!223283 (forall!1761 lt!275229 lambda!19042)))

(assert (=> d!223283 (= lt!275229 e!391789)))

(declare-fun c!117196 () Bool)

(assert (=> d!223283 (= c!117196 (<= (size!5417 lt!274832) 1))))

(assert (=> d!223283 (= (sortObjectsByID!0 lt!274832) lt!275229)))

(declare-fun lt!275219 () BalanceConc!4650)

(declare-fun lt!275232 () BalanceConc!4650)

(assert (=> b!641221 (= e!391789 (++!1839 (++!1839 (sortObjectsByID!0 lt!275218) lt!275219) (sortObjectsByID!0 lt!275232)))))

(assert (=> b!641221 (= lt!275227 (apply!1632 lt!274832 (ite (>= (size!5417 lt!274832) 0) (div (size!5417 lt!274832) 2) (- (div (- (size!5417 lt!274832)) 2)))))))

(assert (=> b!641221 (= lt!275218 (filter!132 lt!274832 lambda!19038))))

(assert (=> b!641221 (= lt!275219 (filter!132 lt!274832 lambda!19039))))

(assert (=> b!641221 (= lt!275232 (filter!132 lt!274832 lambda!19040))))

(declare-fun c!117199 () Bool)

(assert (=> b!641221 (= c!117199 (contains!1535 lt!275218 lt!275227))))

(declare-fun lt!275233 () Unit!11924)

(assert (=> b!641221 (= lt!275233 e!391785)))

(declare-fun c!117200 () Bool)

(assert (=> b!641221 (= c!117200 (forall!1761 lt!274832 lambda!19038))))

(declare-fun lt!275212 () Unit!11924)

(assert (=> b!641221 (= lt!275212 e!391784)))

(declare-fun lt!275241 () List!6883)

(assert (=> b!641221 (= lt!275241 (list!2909 lt!274832))))

(declare-fun lt!275222 () Unit!11924)

(assert (=> b!641221 (= lt!275222 (lemmaNotForallFilterShorter!11 lt!275241 lambda!19038))))

(declare-fun res!279036 () Bool)

(assert (=> b!641221 (= res!279036 (isEmpty!4701 lt!275241))))

(declare-fun e!391783 () Bool)

(assert (=> b!641221 (=> res!279036 e!391783)))

(assert (=> b!641221 e!391783))

(declare-fun lt!275217 () Unit!11924)

(assert (=> b!641221 (= lt!275217 lt!275222)))

(declare-fun c!117198 () Bool)

(assert (=> b!641221 (= c!117198 (contains!1535 lt!275232 lt!275227))))

(declare-fun lt!275225 () Unit!11924)

(declare-fun e!391786 () Unit!11924)

(assert (=> b!641221 (= lt!275225 e!391786)))

(declare-fun c!117197 () Bool)

(assert (=> b!641221 (= c!117197 (forall!1761 lt!274832 lambda!19040))))

(declare-fun lt!275243 () Unit!11924)

(declare-fun e!391788 () Unit!11924)

(assert (=> b!641221 (= lt!275243 e!391788)))

(assert (=> b!641221 (= lt!275235 (list!2909 lt!274832))))

(declare-fun lt!275216 () Unit!11924)

(assert (=> b!641221 (= lt!275216 (lemmaNotForallFilterShorter!11 lt!275235 lambda!19040))))

(declare-fun res!279037 () Bool)

(assert (=> b!641221 (= res!279037 (isEmpty!4701 lt!275235))))

(assert (=> b!641221 (=> res!279037 e!391787)))

(assert (=> b!641221 e!391787))

(declare-fun lt!275221 () Unit!11924)

(assert (=> b!641221 (= lt!275221 lt!275216)))

(declare-fun lt!275234 () Unit!11924)

(assert (=> b!641221 (= lt!275234 (filterSubseq!11 (list!2909 lt!274832) lambda!19038))))

(declare-fun lt!275215 () Unit!11924)

(assert (=> b!641221 (= lt!275215 (filterSubseq!11 (list!2909 lt!274832) lambda!19039))))

(declare-fun lt!275239 () Unit!11924)

(assert (=> b!641221 (= lt!275239 (filterSubseq!11 (list!2909 lt!274832) lambda!19040))))

(declare-fun lt!275231 () List!6883)

(assert (=> b!641221 (= lt!275231 (list!2909 (filter!132 lt!274832 lambda!19038)))))

(declare-fun lt!275228 () List!6883)

(assert (=> b!641221 (= lt!275228 (list!2909 lt!274832))))

(declare-fun lt!275224 () Unit!11924)

(assert (=> b!641221 (= lt!275224 (lemmaForallSubseq!18 lt!275231 lt!275228 lambda!19041))))

(assert (=> b!641221 (forall!1760 lt!275231 lambda!19041)))

(declare-fun lt!275213 () Unit!11924)

(assert (=> b!641221 (= lt!275213 lt!275224)))

(declare-fun lt!275220 () List!6883)

(assert (=> b!641221 (= lt!275220 (list!2909 (filter!132 lt!274832 lambda!19039)))))

(declare-fun lt!275210 () List!6883)

(assert (=> b!641221 (= lt!275210 (list!2909 lt!274832))))

(declare-fun lt!275226 () Unit!11924)

(assert (=> b!641221 (= lt!275226 (lemmaForallSubseq!18 lt!275220 lt!275210 lambda!19041))))

(assert (=> b!641221 (forall!1760 lt!275220 lambda!19041)))

(declare-fun lt!275240 () Unit!11924)

(assert (=> b!641221 (= lt!275240 lt!275226)))

(declare-fun lt!275209 () List!6883)

(assert (=> b!641221 (= lt!275209 (list!2909 (filter!132 lt!274832 lambda!19040)))))

(declare-fun lt!275208 () List!6883)

(assert (=> b!641221 (= lt!275208 (list!2909 lt!274832))))

(declare-fun lt!275236 () Unit!11924)

(assert (=> b!641221 (= lt!275236 (lemmaForallSubseq!18 lt!275209 lt!275208 lambda!19041))))

(assert (=> b!641221 (forall!1760 lt!275209 lambda!19041)))

(declare-fun lt!275214 () Unit!11924)

(assert (=> b!641221 (= lt!275214 lt!275236)))

(declare-fun lt!275238 () Unit!11924)

(assert (=> b!641221 (= lt!275238 (lemmaConcatPreservesForall!45 (list!2909 (sortObjectsByID!0 lt!275218)) (list!2909 lt!275219) lambda!19041))))

(declare-fun lt!275211 () Unit!11924)

(assert (=> b!641221 (= lt!275211 (lemmaConcatPreservesForall!45 (++!1840 (list!2909 (sortObjectsByID!0 lt!275218)) (list!2909 lt!275219)) (list!2909 (sortObjectsByID!0 lt!275232)) lambda!19041))))

(declare-fun b!641225 () Bool)

(declare-fun Unit!11952 () Unit!11924)

(assert (=> b!641225 (= e!391786 Unit!11952)))

(declare-fun b!641226 () Bool)

(declare-fun Unit!11953 () Unit!11924)

(assert (=> b!641226 (= e!391788 Unit!11953)))

(declare-fun b!641227 () Bool)

(assert (=> b!641227 true))

(declare-fun lt!275242 () Unit!11924)

(assert (=> b!641227 (= lt!275242 (forallContained!463 (list!2909 lt!275232) lambda!19040 lt!275227))))

(declare-fun err!647 () Unit!11924)

(assert (=> b!641227 (= e!391786 err!647)))

(declare-fun b!641228 () Bool)

(assert (=> b!641228 true))

(declare-fun lt!275237 () Unit!11924)

(assert (=> b!641228 (= lt!275237 (forallContained!463 (list!2909 lt!274832) lambda!19040 lt!275227))))

(declare-fun err!646 () Unit!11924)

(assert (=> b!641228 (= e!391788 err!646)))

(declare-fun b!641229 () Bool)

(assert (=> b!641229 (= e!391783 (< (size!5416 (filter!131 lt!275241 lambda!19038)) (size!5416 lt!275241)))))

(declare-fun b!641230 () Bool)

(declare-fun Unit!11954 () Unit!11924)

(assert (=> b!641230 (= e!391784 Unit!11954)))

(assert (= (and d!223283 c!117196) b!641224))

(assert (= (and d!223283 (not c!117196)) b!641221))

(assert (= (and b!641221 c!117199) b!641220))

(assert (= (and b!641221 (not c!117199)) b!641223))

(assert (= (and b!641221 c!117200) b!641222))

(assert (= (and b!641221 (not c!117200)) b!641230))

(assert (= (and b!641221 (not res!279036)) b!641229))

(assert (= (and b!641221 c!117198) b!641227))

(assert (= (and b!641221 (not c!117198)) b!641225))

(assert (= (and b!641221 c!117197) b!641228))

(assert (= (and b!641221 (not c!117197)) b!641226))

(assert (= (and b!641221 (not res!279037)) b!641219))

(declare-fun m!913152 () Bool)

(assert (=> b!641221 m!913152))

(declare-fun m!913154 () Bool)

(assert (=> b!641221 m!913154))

(declare-fun m!913156 () Bool)

(assert (=> b!641221 m!913156))

(declare-fun m!913158 () Bool)

(assert (=> b!641221 m!913158))

(declare-fun m!913160 () Bool)

(assert (=> b!641221 m!913160))

(declare-fun m!913162 () Bool)

(assert (=> b!641221 m!913162))

(declare-fun m!913164 () Bool)

(assert (=> b!641221 m!913164))

(declare-fun m!913166 () Bool)

(assert (=> b!641221 m!913166))

(assert (=> b!641221 m!913156))

(declare-fun m!913168 () Bool)

(assert (=> b!641221 m!913168))

(declare-fun m!913170 () Bool)

(assert (=> b!641221 m!913170))

(assert (=> b!641221 m!912427))

(assert (=> b!641221 m!912427))

(declare-fun m!913172 () Bool)

(assert (=> b!641221 m!913172))

(assert (=> b!641221 m!912427))

(declare-fun m!913174 () Bool)

(assert (=> b!641221 m!913174))

(declare-fun m!913176 () Bool)

(assert (=> b!641221 m!913176))

(assert (=> b!641221 m!913156))

(declare-fun m!913178 () Bool)

(assert (=> b!641221 m!913178))

(declare-fun m!913180 () Bool)

(assert (=> b!641221 m!913180))

(declare-fun m!913182 () Bool)

(assert (=> b!641221 m!913182))

(assert (=> b!641221 m!913178))

(declare-fun m!913184 () Bool)

(assert (=> b!641221 m!913184))

(declare-fun m!913186 () Bool)

(assert (=> b!641221 m!913186))

(declare-fun m!913188 () Bool)

(assert (=> b!641221 m!913188))

(assert (=> b!641221 m!913178))

(assert (=> b!641221 m!913160))

(assert (=> b!641221 m!913162))

(declare-fun m!913190 () Bool)

(assert (=> b!641221 m!913190))

(declare-fun m!913192 () Bool)

(assert (=> b!641221 m!913192))

(declare-fun m!913194 () Bool)

(assert (=> b!641221 m!913194))

(assert (=> b!641221 m!913160))

(declare-fun m!913196 () Bool)

(assert (=> b!641221 m!913196))

(assert (=> b!641221 m!913190))

(assert (=> b!641221 m!913158))

(declare-fun m!913198 () Bool)

(assert (=> b!641221 m!913198))

(declare-fun m!913200 () Bool)

(assert (=> b!641221 m!913200))

(assert (=> b!641221 m!913186))

(assert (=> b!641221 m!913194))

(assert (=> b!641221 m!913166))

(assert (=> b!641221 m!913170))

(assert (=> b!641221 m!913170))

(declare-fun m!913202 () Bool)

(assert (=> b!641221 m!913202))

(assert (=> b!641221 m!913194))

(declare-fun m!913204 () Bool)

(assert (=> b!641221 m!913204))

(assert (=> b!641221 m!913186))

(declare-fun m!913206 () Bool)

(assert (=> b!641221 m!913206))

(declare-fun m!913208 () Bool)

(assert (=> b!641221 m!913208))

(assert (=> b!641221 m!913162))

(declare-fun m!913210 () Bool)

(assert (=> b!641221 m!913210))

(declare-fun m!913212 () Bool)

(assert (=> b!641221 m!913212))

(assert (=> b!641221 m!912427))

(declare-fun m!913214 () Bool)

(assert (=> b!641221 m!913214))

(declare-fun m!913216 () Bool)

(assert (=> b!641221 m!913216))

(declare-fun m!913218 () Bool)

(assert (=> b!641221 m!913218))

(declare-fun m!913220 () Bool)

(assert (=> b!641221 m!913220))

(assert (=> b!641222 m!912427))

(assert (=> b!641222 m!912427))

(declare-fun m!913222 () Bool)

(assert (=> b!641222 m!913222))

(declare-fun m!913224 () Bool)

(assert (=> d!223283 m!913224))

(assert (=> d!223283 m!913200))

(assert (=> b!641228 m!912427))

(assert (=> b!641228 m!912427))

(declare-fun m!913226 () Bool)

(assert (=> b!641228 m!913226))

(declare-fun m!913228 () Bool)

(assert (=> b!641229 m!913228))

(assert (=> b!641229 m!913228))

(declare-fun m!913230 () Bool)

(assert (=> b!641229 m!913230))

(declare-fun m!913232 () Bool)

(assert (=> b!641229 m!913232))

(declare-fun m!913234 () Bool)

(assert (=> b!641219 m!913234))

(assert (=> b!641219 m!913234))

(declare-fun m!913236 () Bool)

(assert (=> b!641219 m!913236))

(declare-fun m!913238 () Bool)

(assert (=> b!641219 m!913238))

(declare-fun m!913240 () Bool)

(assert (=> b!641220 m!913240))

(assert (=> b!641220 m!913240))

(declare-fun m!913242 () Bool)

(assert (=> b!641220 m!913242))

(declare-fun m!913244 () Bool)

(assert (=> b!641227 m!913244))

(assert (=> b!641227 m!913244))

(declare-fun m!913246 () Bool)

(assert (=> b!641227 m!913246))

(assert (=> b!640539 d!223283))

(declare-fun d!223285 () Bool)

(assert (=> d!223285 (forall!1760 lt!274820 lambda!18926)))

(declare-fun lt!275246 () Unit!11924)

(declare-fun choose!4635 (List!6883 List!6883 Int) Unit!11924)

(assert (=> d!223285 (= lt!275246 (choose!4635 lt!274820 lt!274810 lambda!18926))))

(assert (=> d!223285 (forall!1760 lt!274810 lambda!18926)))

(assert (=> d!223285 (= (lemmaForallSubseq!18 lt!274820 lt!274810 lambda!18926) lt!275246)))

(declare-fun bs!78719 () Bool)

(assert (= bs!78719 d!223285))

(assert (=> bs!78719 m!912395))

(declare-fun m!913248 () Bool)

(assert (=> bs!78719 m!913248))

(declare-fun m!913250 () Bool)

(assert (=> bs!78719 m!913250))

(assert (=> b!640539 d!223285))

(declare-fun bs!78720 () Bool)

(declare-fun b!641239 () Bool)

(assert (= bs!78720 (and b!641239 b!640495)))

(declare-fun lambda!19043 () Int)

(assert (=> bs!78720 (not (= lambda!19043 lambda!18868))))

(declare-fun bs!78721 () Bool)

(assert (= bs!78721 (and b!641239 b!641221)))

(declare-fun lt!275266 () tuple2!7434)

(assert (=> bs!78721 (= (= (_1!4053 lt!275266) (_1!4053 lt!275227)) (= lambda!19043 lambda!19038))))

(assert (=> bs!78721 (not (= lambda!19043 lambda!19041))))

(declare-fun bs!78722 () Bool)

(assert (= bs!78722 (and b!641239 d!223103)))

(assert (=> bs!78722 (not (= lambda!19043 lambda!18927))))

(declare-fun bs!78723 () Bool)

(assert (= bs!78723 (and b!641239 d!223095)))

(assert (=> bs!78723 (not (= lambda!19043 lambda!18873))))

(declare-fun bs!78724 () Bool)

(assert (= bs!78724 (and b!641239 d!223117)))

(assert (=> bs!78724 (not (= lambda!19043 lambda!18944))))

(declare-fun bs!78725 () Bool)

(assert (= bs!78725 (and b!641239 b!640539)))

(assert (=> bs!78725 (not (= lambda!19043 lambda!18924))))

(assert (=> bs!78724 (not (= lambda!19043 lambda!18945))))

(assert (=> bs!78725 (not (= lambda!19043 lambda!18925))))

(declare-fun bs!78726 () Bool)

(assert (= bs!78726 (and b!641239 d!223283)))

(assert (=> bs!78726 (not (= lambda!19043 lambda!19042))))

(assert (=> bs!78721 (not (= lambda!19043 lambda!19040))))

(assert (=> bs!78725 (= (= (_1!4053 lt!275266) (_1!4053 lt!274827)) (= lambda!19043 lambda!18923))))

(assert (=> bs!78725 (not (= lambda!19043 lambda!18926))))

(assert (=> bs!78721 (not (= lambda!19043 lambda!19039))))

(declare-fun b!641250 () Bool)

(declare-fun e!391804 () Bool)

(assert (=> b!641250 (= e!391804 true)))

(declare-fun b!641249 () Bool)

(declare-fun e!391803 () Bool)

(assert (=> b!641249 (= e!391803 e!391804)))

(assert (=> b!641239 e!391803))

(assert (= b!641249 b!641250))

(assert (= b!641239 b!641249))

(declare-fun lambda!19044 () Int)

(assert (=> bs!78720 (not (= lambda!19044 lambda!18868))))

(assert (=> bs!78721 (not (= lambda!19044 lambda!19038))))

(assert (=> bs!78721 (not (= lambda!19044 lambda!19041))))

(assert (=> bs!78722 (not (= lambda!19044 lambda!18927))))

(assert (=> b!641239 (not (= lambda!19044 lambda!19043))))

(assert (=> bs!78723 (not (= lambda!19044 lambda!18873))))

(assert (=> bs!78724 (not (= lambda!19044 lambda!18944))))

(assert (=> bs!78725 (= (= (_1!4053 lt!275266) (_1!4053 lt!274827)) (= lambda!19044 lambda!18924))))

(assert (=> bs!78724 (not (= lambda!19044 lambda!18945))))

(assert (=> bs!78725 (not (= lambda!19044 lambda!18925))))

(assert (=> bs!78726 (not (= lambda!19044 lambda!19042))))

(assert (=> bs!78721 (not (= lambda!19044 lambda!19040))))

(assert (=> bs!78725 (not (= lambda!19044 lambda!18923))))

(assert (=> bs!78725 (not (= lambda!19044 lambda!18926))))

(assert (=> bs!78721 (= (= (_1!4053 lt!275266) (_1!4053 lt!275227)) (= lambda!19044 lambda!19039))))

(declare-fun b!641252 () Bool)

(declare-fun e!391806 () Bool)

(assert (=> b!641252 (= e!391806 true)))

(declare-fun b!641251 () Bool)

(declare-fun e!391805 () Bool)

(assert (=> b!641251 (= e!391805 e!391806)))

(assert (=> b!641239 e!391805))

(assert (= b!641251 b!641252))

(assert (= b!641239 b!641251))

(declare-fun lambda!19045 () Int)

(assert (=> bs!78720 (not (= lambda!19045 lambda!18868))))

(assert (=> bs!78721 (not (= lambda!19045 lambda!19038))))

(assert (=> bs!78721 (not (= lambda!19045 lambda!19041))))

(assert (=> bs!78722 (not (= lambda!19045 lambda!18927))))

(assert (=> b!641239 (not (= lambda!19045 lambda!19043))))

(assert (=> bs!78723 (not (= lambda!19045 lambda!18873))))

(assert (=> bs!78724 (not (= lambda!19045 lambda!18944))))

(assert (=> bs!78725 (not (= lambda!19045 lambda!18924))))

(assert (=> bs!78724 (not (= lambda!19045 lambda!18945))))

(assert (=> b!641239 (not (= lambda!19045 lambda!19044))))

(assert (=> bs!78725 (= (= (_1!4053 lt!275266) (_1!4053 lt!274827)) (= lambda!19045 lambda!18925))))

(assert (=> bs!78726 (not (= lambda!19045 lambda!19042))))

(assert (=> bs!78721 (= (= (_1!4053 lt!275266) (_1!4053 lt!275227)) (= lambda!19045 lambda!19040))))

(assert (=> bs!78725 (not (= lambda!19045 lambda!18923))))

(assert (=> bs!78725 (not (= lambda!19045 lambda!18926))))

(assert (=> bs!78721 (not (= lambda!19045 lambda!19039))))

(declare-fun b!641254 () Bool)

(declare-fun e!391808 () Bool)

(assert (=> b!641254 (= e!391808 true)))

(declare-fun b!641253 () Bool)

(declare-fun e!391807 () Bool)

(assert (=> b!641253 (= e!391807 e!391808)))

(assert (=> b!641239 e!391807))

(assert (= b!641253 b!641254))

(assert (= b!641239 b!641253))

(declare-fun lambda!19046 () Int)

(assert (=> bs!78720 (= lambda!19046 lambda!18868)))

(assert (=> bs!78721 (not (= lambda!19046 lambda!19038))))

(assert (=> bs!78721 (= lambda!19046 lambda!19041)))

(assert (=> bs!78722 (= lambda!19046 lambda!18927)))

(assert (=> b!641239 (not (= lambda!19046 lambda!19043))))

(assert (=> bs!78723 (not (= lambda!19046 lambda!18873))))

(assert (=> bs!78724 (= lambda!19046 lambda!18944)))

(assert (=> bs!78725 (not (= lambda!19046 lambda!18924))))

(assert (=> bs!78724 (not (= lambda!19046 lambda!18945))))

(assert (=> b!641239 (not (= lambda!19046 lambda!19044))))

(assert (=> bs!78725 (not (= lambda!19046 lambda!18925))))

(assert (=> bs!78726 (= lambda!19046 lambda!19042)))

(assert (=> bs!78721 (not (= lambda!19046 lambda!19040))))

(assert (=> bs!78725 (not (= lambda!19046 lambda!18923))))

(assert (=> bs!78725 (= lambda!19046 lambda!18926)))

(assert (=> bs!78721 (not (= lambda!19046 lambda!19039))))

(assert (=> b!641239 (not (= lambda!19046 lambda!19045))))

(declare-fun bs!78727 () Bool)

(declare-fun d!223287 () Bool)

(assert (= bs!78727 (and d!223287 b!640495)))

(declare-fun lambda!19047 () Int)

(assert (=> bs!78727 (= lambda!19047 lambda!18868)))

(declare-fun bs!78728 () Bool)

(assert (= bs!78728 (and d!223287 b!641221)))

(assert (=> bs!78728 (not (= lambda!19047 lambda!19038))))

(assert (=> bs!78728 (= lambda!19047 lambda!19041)))

(declare-fun bs!78729 () Bool)

(assert (= bs!78729 (and d!223287 d!223103)))

(assert (=> bs!78729 (= lambda!19047 lambda!18927)))

(declare-fun bs!78730 () Bool)

(assert (= bs!78730 (and d!223287 b!641239)))

(assert (=> bs!78730 (not (= lambda!19047 lambda!19043))))

(declare-fun bs!78731 () Bool)

(assert (= bs!78731 (and d!223287 d!223095)))

(assert (=> bs!78731 (not (= lambda!19047 lambda!18873))))

(declare-fun bs!78732 () Bool)

(assert (= bs!78732 (and d!223287 d!223117)))

(assert (=> bs!78732 (= lambda!19047 lambda!18944)))

(declare-fun bs!78733 () Bool)

(assert (= bs!78733 (and d!223287 b!640539)))

(assert (=> bs!78733 (not (= lambda!19047 lambda!18924))))

(assert (=> bs!78732 (not (= lambda!19047 lambda!18945))))

(assert (=> bs!78730 (not (= lambda!19047 lambda!19044))))

(assert (=> bs!78730 (= lambda!19047 lambda!19046)))

(assert (=> bs!78733 (not (= lambda!19047 lambda!18925))))

(declare-fun bs!78734 () Bool)

(assert (= bs!78734 (and d!223287 d!223283)))

(assert (=> bs!78734 (= lambda!19047 lambda!19042)))

(assert (=> bs!78728 (not (= lambda!19047 lambda!19040))))

(assert (=> bs!78733 (not (= lambda!19047 lambda!18923))))

(assert (=> bs!78733 (= lambda!19047 lambda!18926)))

(assert (=> bs!78728 (not (= lambda!19047 lambda!19039))))

(assert (=> bs!78730 (not (= lambda!19047 lambda!19045))))

(declare-fun b!641237 () Bool)

(declare-fun e!391800 () Bool)

(declare-fun lt!275274 () List!6883)

(assert (=> b!641237 (= e!391800 (< (size!5416 (filter!131 lt!275274 lambda!19045)) (size!5416 lt!275274)))))

(declare-fun b!641238 () Bool)

(assert (=> b!641238 true))

(declare-fun lt!275269 () Unit!11924)

(declare-fun lt!275257 () BalanceConc!4650)

(assert (=> b!641238 (= lt!275269 (forallContained!463 (list!2909 lt!275257) lambda!19043 lt!275266))))

(declare-fun e!391798 () Unit!11924)

(declare-fun err!653 () Unit!11924)

(assert (=> b!641238 (= e!391798 err!653)))

(declare-fun b!641240 () Bool)

(assert (=> b!641240 true))

(declare-fun lt!275262 () Unit!11924)

(assert (=> b!641240 (= lt!275262 (forallContained!463 (list!2909 lt!274818) lambda!19043 lt!275266))))

(declare-fun e!391797 () Unit!11924)

(declare-fun err!652 () Unit!11924)

(assert (=> b!641240 (= e!391797 err!652)))

(declare-fun b!641241 () Bool)

(declare-fun Unit!11955 () Unit!11924)

(assert (=> b!641241 (= e!391798 Unit!11955)))

(declare-fun b!641242 () Bool)

(declare-fun e!391802 () BalanceConc!4650)

(assert (=> b!641242 (= e!391802 lt!274818)))

(declare-fun lt!275268 () BalanceConc!4650)

(assert (=> d!223287 (forall!1761 lt!275268 lambda!19047)))

(assert (=> d!223287 (= lt!275268 e!391802)))

(declare-fun c!117201 () Bool)

(assert (=> d!223287 (= c!117201 (<= (size!5417 lt!274818) 1))))

(assert (=> d!223287 (= (sortObjectsByID!0 lt!274818) lt!275268)))

(declare-fun lt!275258 () BalanceConc!4650)

(declare-fun lt!275271 () BalanceConc!4650)

(assert (=> b!641239 (= e!391802 (++!1839 (++!1839 (sortObjectsByID!0 lt!275257) lt!275258) (sortObjectsByID!0 lt!275271)))))

(assert (=> b!641239 (= lt!275266 (apply!1632 lt!274818 (ite (>= (size!5417 lt!274818) 0) (div (size!5417 lt!274818) 2) (- (div (- (size!5417 lt!274818)) 2)))))))

(assert (=> b!641239 (= lt!275257 (filter!132 lt!274818 lambda!19043))))

(assert (=> b!641239 (= lt!275258 (filter!132 lt!274818 lambda!19044))))

(assert (=> b!641239 (= lt!275271 (filter!132 lt!274818 lambda!19045))))

(declare-fun c!117204 () Bool)

(assert (=> b!641239 (= c!117204 (contains!1535 lt!275257 lt!275266))))

(declare-fun lt!275272 () Unit!11924)

(assert (=> b!641239 (= lt!275272 e!391798)))

(declare-fun c!117205 () Bool)

(assert (=> b!641239 (= c!117205 (forall!1761 lt!274818 lambda!19043))))

(declare-fun lt!275251 () Unit!11924)

(assert (=> b!641239 (= lt!275251 e!391797)))

(declare-fun lt!275280 () List!6883)

(assert (=> b!641239 (= lt!275280 (list!2909 lt!274818))))

(declare-fun lt!275261 () Unit!11924)

(assert (=> b!641239 (= lt!275261 (lemmaNotForallFilterShorter!11 lt!275280 lambda!19043))))

(declare-fun res!279038 () Bool)

(assert (=> b!641239 (= res!279038 (isEmpty!4701 lt!275280))))

(declare-fun e!391796 () Bool)

(assert (=> b!641239 (=> res!279038 e!391796)))

(assert (=> b!641239 e!391796))

(declare-fun lt!275256 () Unit!11924)

(assert (=> b!641239 (= lt!275256 lt!275261)))

(declare-fun c!117203 () Bool)

(assert (=> b!641239 (= c!117203 (contains!1535 lt!275271 lt!275266))))

(declare-fun lt!275264 () Unit!11924)

(declare-fun e!391799 () Unit!11924)

(assert (=> b!641239 (= lt!275264 e!391799)))

(declare-fun c!117202 () Bool)

(assert (=> b!641239 (= c!117202 (forall!1761 lt!274818 lambda!19045))))

(declare-fun lt!275282 () Unit!11924)

(declare-fun e!391801 () Unit!11924)

(assert (=> b!641239 (= lt!275282 e!391801)))

(assert (=> b!641239 (= lt!275274 (list!2909 lt!274818))))

(declare-fun lt!275255 () Unit!11924)

(assert (=> b!641239 (= lt!275255 (lemmaNotForallFilterShorter!11 lt!275274 lambda!19045))))

(declare-fun res!279039 () Bool)

(assert (=> b!641239 (= res!279039 (isEmpty!4701 lt!275274))))

(assert (=> b!641239 (=> res!279039 e!391800)))

(assert (=> b!641239 e!391800))

(declare-fun lt!275260 () Unit!11924)

(assert (=> b!641239 (= lt!275260 lt!275255)))

(declare-fun lt!275273 () Unit!11924)

(assert (=> b!641239 (= lt!275273 (filterSubseq!11 (list!2909 lt!274818) lambda!19043))))

(declare-fun lt!275254 () Unit!11924)

(assert (=> b!641239 (= lt!275254 (filterSubseq!11 (list!2909 lt!274818) lambda!19044))))

(declare-fun lt!275278 () Unit!11924)

(assert (=> b!641239 (= lt!275278 (filterSubseq!11 (list!2909 lt!274818) lambda!19045))))

(declare-fun lt!275270 () List!6883)

(assert (=> b!641239 (= lt!275270 (list!2909 (filter!132 lt!274818 lambda!19043)))))

(declare-fun lt!275267 () List!6883)

(assert (=> b!641239 (= lt!275267 (list!2909 lt!274818))))

(declare-fun lt!275263 () Unit!11924)

(assert (=> b!641239 (= lt!275263 (lemmaForallSubseq!18 lt!275270 lt!275267 lambda!19046))))

(assert (=> b!641239 (forall!1760 lt!275270 lambda!19046)))

(declare-fun lt!275252 () Unit!11924)

(assert (=> b!641239 (= lt!275252 lt!275263)))

(declare-fun lt!275259 () List!6883)

(assert (=> b!641239 (= lt!275259 (list!2909 (filter!132 lt!274818 lambda!19044)))))

(declare-fun lt!275249 () List!6883)

(assert (=> b!641239 (= lt!275249 (list!2909 lt!274818))))

(declare-fun lt!275265 () Unit!11924)

(assert (=> b!641239 (= lt!275265 (lemmaForallSubseq!18 lt!275259 lt!275249 lambda!19046))))

(assert (=> b!641239 (forall!1760 lt!275259 lambda!19046)))

(declare-fun lt!275279 () Unit!11924)

(assert (=> b!641239 (= lt!275279 lt!275265)))

(declare-fun lt!275248 () List!6883)

(assert (=> b!641239 (= lt!275248 (list!2909 (filter!132 lt!274818 lambda!19045)))))

(declare-fun lt!275247 () List!6883)

(assert (=> b!641239 (= lt!275247 (list!2909 lt!274818))))

(declare-fun lt!275275 () Unit!11924)

(assert (=> b!641239 (= lt!275275 (lemmaForallSubseq!18 lt!275248 lt!275247 lambda!19046))))

(assert (=> b!641239 (forall!1760 lt!275248 lambda!19046)))

(declare-fun lt!275253 () Unit!11924)

(assert (=> b!641239 (= lt!275253 lt!275275)))

(declare-fun lt!275277 () Unit!11924)

(assert (=> b!641239 (= lt!275277 (lemmaConcatPreservesForall!45 (list!2909 (sortObjectsByID!0 lt!275257)) (list!2909 lt!275258) lambda!19046))))

(declare-fun lt!275250 () Unit!11924)

(assert (=> b!641239 (= lt!275250 (lemmaConcatPreservesForall!45 (++!1840 (list!2909 (sortObjectsByID!0 lt!275257)) (list!2909 lt!275258)) (list!2909 (sortObjectsByID!0 lt!275271)) lambda!19046))))

(declare-fun b!641243 () Bool)

(declare-fun Unit!11956 () Unit!11924)

(assert (=> b!641243 (= e!391799 Unit!11956)))

(declare-fun b!641244 () Bool)

(declare-fun Unit!11957 () Unit!11924)

(assert (=> b!641244 (= e!391801 Unit!11957)))

(declare-fun b!641245 () Bool)

(assert (=> b!641245 true))

(declare-fun lt!275281 () Unit!11924)

(assert (=> b!641245 (= lt!275281 (forallContained!463 (list!2909 lt!275271) lambda!19045 lt!275266))))

(declare-fun err!651 () Unit!11924)

(assert (=> b!641245 (= e!391799 err!651)))

(declare-fun b!641246 () Bool)

(assert (=> b!641246 true))

(declare-fun lt!275276 () Unit!11924)

(assert (=> b!641246 (= lt!275276 (forallContained!463 (list!2909 lt!274818) lambda!19045 lt!275266))))

(declare-fun err!650 () Unit!11924)

(assert (=> b!641246 (= e!391801 err!650)))

(declare-fun b!641247 () Bool)

(assert (=> b!641247 (= e!391796 (< (size!5416 (filter!131 lt!275280 lambda!19043)) (size!5416 lt!275280)))))

(declare-fun b!641248 () Bool)

(declare-fun Unit!11958 () Unit!11924)

(assert (=> b!641248 (= e!391797 Unit!11958)))

(assert (= (and d!223287 c!117201) b!641242))

(assert (= (and d!223287 (not c!117201)) b!641239))

(assert (= (and b!641239 c!117204) b!641238))

(assert (= (and b!641239 (not c!117204)) b!641241))

(assert (= (and b!641239 c!117205) b!641240))

(assert (= (and b!641239 (not c!117205)) b!641248))

(assert (= (and b!641239 (not res!279038)) b!641247))

(assert (= (and b!641239 c!117203) b!641245))

(assert (= (and b!641239 (not c!117203)) b!641243))

(assert (= (and b!641239 c!117202) b!641246))

(assert (= (and b!641239 (not c!117202)) b!641244))

(assert (= (and b!641239 (not res!279039)) b!641237))

(declare-fun m!913252 () Bool)

(assert (=> b!641239 m!913252))

(declare-fun m!913254 () Bool)

(assert (=> b!641239 m!913254))

(declare-fun m!913256 () Bool)

(assert (=> b!641239 m!913256))

(declare-fun m!913258 () Bool)

(assert (=> b!641239 m!913258))

(declare-fun m!913260 () Bool)

(assert (=> b!641239 m!913260))

(declare-fun m!913262 () Bool)

(assert (=> b!641239 m!913262))

(declare-fun m!913264 () Bool)

(assert (=> b!641239 m!913264))

(declare-fun m!913266 () Bool)

(assert (=> b!641239 m!913266))

(assert (=> b!641239 m!913256))

(declare-fun m!913268 () Bool)

(assert (=> b!641239 m!913268))

(declare-fun m!913270 () Bool)

(assert (=> b!641239 m!913270))

(assert (=> b!641239 m!912423))

(assert (=> b!641239 m!912423))

(declare-fun m!913272 () Bool)

(assert (=> b!641239 m!913272))

(assert (=> b!641239 m!912423))

(declare-fun m!913274 () Bool)

(assert (=> b!641239 m!913274))

(declare-fun m!913276 () Bool)

(assert (=> b!641239 m!913276))

(assert (=> b!641239 m!913256))

(declare-fun m!913278 () Bool)

(assert (=> b!641239 m!913278))

(declare-fun m!913280 () Bool)

(assert (=> b!641239 m!913280))

(declare-fun m!913282 () Bool)

(assert (=> b!641239 m!913282))

(assert (=> b!641239 m!913278))

(declare-fun m!913284 () Bool)

(assert (=> b!641239 m!913284))

(declare-fun m!913286 () Bool)

(assert (=> b!641239 m!913286))

(declare-fun m!913288 () Bool)

(assert (=> b!641239 m!913288))

(assert (=> b!641239 m!913278))

(assert (=> b!641239 m!913260))

(assert (=> b!641239 m!913262))

(declare-fun m!913290 () Bool)

(assert (=> b!641239 m!913290))

(declare-fun m!913292 () Bool)

(assert (=> b!641239 m!913292))

(declare-fun m!913294 () Bool)

(assert (=> b!641239 m!913294))

(assert (=> b!641239 m!913260))

(declare-fun m!913296 () Bool)

(assert (=> b!641239 m!913296))

(assert (=> b!641239 m!913290))

(assert (=> b!641239 m!913258))

(declare-fun m!913298 () Bool)

(assert (=> b!641239 m!913298))

(declare-fun m!913300 () Bool)

(assert (=> b!641239 m!913300))

(assert (=> b!641239 m!913286))

(assert (=> b!641239 m!913294))

(assert (=> b!641239 m!913266))

(assert (=> b!641239 m!913270))

(assert (=> b!641239 m!913270))

(declare-fun m!913302 () Bool)

(assert (=> b!641239 m!913302))

(assert (=> b!641239 m!913294))

(declare-fun m!913304 () Bool)

(assert (=> b!641239 m!913304))

(assert (=> b!641239 m!913286))

(declare-fun m!913306 () Bool)

(assert (=> b!641239 m!913306))

(declare-fun m!913308 () Bool)

(assert (=> b!641239 m!913308))

(assert (=> b!641239 m!913262))

(declare-fun m!913310 () Bool)

(assert (=> b!641239 m!913310))

(declare-fun m!913312 () Bool)

(assert (=> b!641239 m!913312))

(assert (=> b!641239 m!912423))

(declare-fun m!913314 () Bool)

(assert (=> b!641239 m!913314))

(declare-fun m!913316 () Bool)

(assert (=> b!641239 m!913316))

(declare-fun m!913318 () Bool)

(assert (=> b!641239 m!913318))

(declare-fun m!913320 () Bool)

(assert (=> b!641239 m!913320))

(assert (=> b!641240 m!912423))

(assert (=> b!641240 m!912423))

(declare-fun m!913322 () Bool)

(assert (=> b!641240 m!913322))

(declare-fun m!913324 () Bool)

(assert (=> d!223287 m!913324))

(assert (=> d!223287 m!913300))

(assert (=> b!641246 m!912423))

(assert (=> b!641246 m!912423))

(declare-fun m!913326 () Bool)

(assert (=> b!641246 m!913326))

(declare-fun m!913328 () Bool)

(assert (=> b!641247 m!913328))

(assert (=> b!641247 m!913328))

(declare-fun m!913330 () Bool)

(assert (=> b!641247 m!913330))

(declare-fun m!913332 () Bool)

(assert (=> b!641247 m!913332))

(declare-fun m!913334 () Bool)

(assert (=> b!641237 m!913334))

(assert (=> b!641237 m!913334))

(declare-fun m!913336 () Bool)

(assert (=> b!641237 m!913336))

(declare-fun m!913338 () Bool)

(assert (=> b!641237 m!913338))

(declare-fun m!913340 () Bool)

(assert (=> b!641238 m!913340))

(assert (=> b!641238 m!913340))

(declare-fun m!913342 () Bool)

(assert (=> b!641238 m!913342))

(declare-fun m!913344 () Bool)

(assert (=> b!641245 m!913344))

(assert (=> b!641245 m!913344))

(declare-fun m!913346 () Bool)

(assert (=> b!641245 m!913346))

(assert (=> b!640539 d!223287))

(declare-fun d!223289 () Bool)

(assert (=> d!223289 (= (list!2909 (sortObjectsByID!0 lt!274832)) (list!2911 (c!117093 (sortObjectsByID!0 lt!274832))))))

(declare-fun bs!78735 () Bool)

(assert (= bs!78735 d!223289))

(declare-fun m!913348 () Bool)

(assert (=> bs!78735 m!913348))

(assert (=> b!640539 d!223289))

(declare-fun d!223291 () Bool)

(assert (=> d!223291 (forall!1760 lt!274809 lambda!18926)))

(declare-fun lt!275283 () Unit!11924)

(assert (=> d!223291 (= lt!275283 (choose!4635 lt!274809 lt!274808 lambda!18926))))

(assert (=> d!223291 (forall!1760 lt!274808 lambda!18926)))

(assert (=> d!223291 (= (lemmaForallSubseq!18 lt!274809 lt!274808 lambda!18926) lt!275283)))

(declare-fun bs!78736 () Bool)

(assert (= bs!78736 d!223291))

(assert (=> bs!78736 m!912403))

(declare-fun m!913350 () Bool)

(assert (=> bs!78736 m!913350))

(declare-fun m!913352 () Bool)

(assert (=> bs!78736 m!913352))

(assert (=> b!640539 d!223291))

(declare-fun d!223293 () Bool)

(declare-fun e!391811 () Bool)

(assert (=> d!223293 e!391811))

(declare-fun res!279042 () Bool)

(assert (=> d!223293 (=> res!279042 e!391811)))

(assert (=> d!223293 (= res!279042 (isEmpty!4701 lt!274841))))

(declare-fun lt!275286 () Unit!11924)

(declare-fun choose!4636 (List!6883 Int) Unit!11924)

(assert (=> d!223293 (= lt!275286 (choose!4636 lt!274841 lambda!18923))))

(assert (=> d!223293 (not (forall!1760 lt!274841 lambda!18923))))

(assert (=> d!223293 (= (lemmaNotForallFilterShorter!11 lt!274841 lambda!18923) lt!275286)))

(declare-fun b!641257 () Bool)

(assert (=> b!641257 (= e!391811 (< (size!5416 (filter!131 lt!274841 lambda!18923)) (size!5416 lt!274841)))))

(assert (= (and d!223293 (not res!279042)) b!641257))

(assert (=> d!223293 m!912379))

(declare-fun m!913354 () Bool)

(assert (=> d!223293 m!913354))

(declare-fun m!913356 () Bool)

(assert (=> d!223293 m!913356))

(assert (=> b!641257 m!912411))

(assert (=> b!641257 m!912411))

(assert (=> b!641257 m!912413))

(assert (=> b!641257 m!912415))

(assert (=> b!640539 d!223293))

(declare-fun d!223295 () Bool)

(declare-fun lt!275289 () Bool)

(assert (=> d!223295 (= lt!275289 (contains!1536 (list!2909 lt!274832) lt!274827))))

(declare-fun contains!1538 (Conc!2319 tuple2!7434) Bool)

(assert (=> d!223295 (= lt!275289 (contains!1538 (c!117093 lt!274832) lt!274827))))

(assert (=> d!223295 (= (contains!1535 lt!274832 lt!274827) lt!275289)))

(declare-fun bs!78737 () Bool)

(assert (= bs!78737 d!223295))

(assert (=> bs!78737 m!912427))

(assert (=> bs!78737 m!912427))

(assert (=> bs!78737 m!912831))

(declare-fun m!913358 () Bool)

(assert (=> bs!78737 m!913358))

(assert (=> b!640539 d!223295))

(declare-fun d!223297 () Bool)

(declare-fun subseq!132 (List!6883 List!6883) Bool)

(assert (=> d!223297 (subseq!132 (filter!131 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923) (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!275292 () Unit!11924)

(declare-fun choose!4637 (List!6883 Int) Unit!11924)

(assert (=> d!223297 (= lt!275292 (choose!4637 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923))))

(assert (=> d!223297 (= (filterSubseq!11 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923) lt!275292)))

(declare-fun bs!78738 () Bool)

(assert (= bs!78738 d!223297))

(assert (=> bs!78738 m!912353))

(declare-fun m!913360 () Bool)

(assert (=> bs!78738 m!913360))

(assert (=> bs!78738 m!913360))

(assert (=> bs!78738 m!912353))

(declare-fun m!913362 () Bool)

(assert (=> bs!78738 m!913362))

(assert (=> bs!78738 m!912353))

(declare-fun m!913364 () Bool)

(assert (=> bs!78738 m!913364))

(assert (=> b!640539 d!223297))

(declare-fun d!223299 () Bool)

(assert (=> d!223299 (= (isEmpty!4701 lt!274841) ((_ is Nil!6869) lt!274841))))

(assert (=> b!640539 d!223299))

(declare-fun d!223301 () Bool)

(declare-fun lt!275295 () Int)

(assert (=> d!223301 (= lt!275295 (size!5416 (list!2909 (map!1501 lt!274709 lambda!18867))))))

(declare-fun size!5426 (Conc!2319) Int)

(assert (=> d!223301 (= lt!275295 (size!5426 (c!117093 (map!1501 lt!274709 lambda!18867))))))

(assert (=> d!223301 (= (size!5417 (map!1501 lt!274709 lambda!18867)) lt!275295)))

(declare-fun bs!78739 () Bool)

(assert (= bs!78739 d!223301))

(assert (=> bs!78739 m!912237))

(assert (=> bs!78739 m!912353))

(assert (=> bs!78739 m!912353))

(declare-fun m!913366 () Bool)

(assert (=> bs!78739 m!913366))

(declare-fun m!913368 () Bool)

(assert (=> bs!78739 m!913368))

(assert (=> b!640539 d!223301))

(declare-fun d!223303 () Bool)

(assert (=> d!223303 (forall!1760 lt!274831 lambda!18926)))

(declare-fun lt!275296 () Unit!11924)

(assert (=> d!223303 (= lt!275296 (choose!4635 lt!274831 lt!274828 lambda!18926))))

(assert (=> d!223303 (forall!1760 lt!274828 lambda!18926)))

(assert (=> d!223303 (= (lemmaForallSubseq!18 lt!274831 lt!274828 lambda!18926) lt!275296)))

(declare-fun bs!78740 () Bool)

(assert (= bs!78740 d!223303))

(assert (=> bs!78740 m!912375))

(declare-fun m!913370 () Bool)

(assert (=> bs!78740 m!913370))

(declare-fun m!913372 () Bool)

(assert (=> bs!78740 m!913372))

(assert (=> b!640539 d!223303))

(declare-fun d!223305 () Bool)

(assert (=> d!223305 (forall!1760 (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819)) lambda!18926)))

(declare-fun lt!275299 () Unit!11924)

(declare-fun choose!4638 (List!6883 List!6883 Int) Unit!11924)

(assert (=> d!223305 (= lt!275299 (choose!4638 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819) lambda!18926))))

(assert (=> d!223305 (forall!1760 (list!2909 (sortObjectsByID!0 lt!274818)) lambda!18926)))

(assert (=> d!223305 (= (lemmaConcatPreservesForall!45 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819) lambda!18926) lt!275299)))

(declare-fun bs!78741 () Bool)

(assert (= bs!78741 d!223305))

(assert (=> bs!78741 m!912341))

(assert (=> bs!78741 m!912343))

(assert (=> bs!78741 m!912373))

(assert (=> bs!78741 m!912373))

(declare-fun m!913374 () Bool)

(assert (=> bs!78741 m!913374))

(assert (=> bs!78741 m!912341))

(assert (=> bs!78741 m!912343))

(declare-fun m!913376 () Bool)

(assert (=> bs!78741 m!913376))

(assert (=> bs!78741 m!912341))

(declare-fun m!913378 () Bool)

(assert (=> bs!78741 m!913378))

(assert (=> b!640539 d!223305))

(declare-fun d!223307 () Bool)

(declare-fun lt!275300 () Bool)

(assert (=> d!223307 (= lt!275300 (contains!1536 (list!2909 lt!274818) lt!274827))))

(assert (=> d!223307 (= lt!275300 (contains!1538 (c!117093 lt!274818) lt!274827))))

(assert (=> d!223307 (= (contains!1535 lt!274818 lt!274827) lt!275300)))

(declare-fun bs!78742 () Bool)

(assert (= bs!78742 d!223307))

(assert (=> bs!78742 m!912423))

(assert (=> bs!78742 m!912423))

(declare-fun m!913380 () Bool)

(assert (=> bs!78742 m!913380))

(declare-fun m!913382 () Bool)

(assert (=> bs!78742 m!913382))

(assert (=> b!640539 d!223307))

(declare-fun d!223309 () Bool)

(assert (=> d!223309 (= (list!2909 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18925)) (list!2911 (c!117093 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18925))))))

(declare-fun bs!78743 () Bool)

(assert (= bs!78743 d!223309))

(declare-fun m!913384 () Bool)

(assert (=> bs!78743 m!913384))

(assert (=> b!640539 d!223309))

(declare-fun d!223311 () Bool)

(assert (=> d!223311 (= (isEmpty!4701 lt!274835) ((_ is Nil!6869) lt!274835))))

(assert (=> b!640539 d!223311))

(declare-fun d!223313 () Bool)

(declare-fun e!391812 () Bool)

(assert (=> d!223313 e!391812))

(declare-fun res!279043 () Bool)

(assert (=> d!223313 (=> res!279043 e!391812)))

(assert (=> d!223313 (= res!279043 (isEmpty!4701 lt!274835))))

(declare-fun lt!275301 () Unit!11924)

(assert (=> d!223313 (= lt!275301 (choose!4636 lt!274835 lambda!18925))))

(assert (=> d!223313 (not (forall!1760 lt!274835 lambda!18925))))

(assert (=> d!223313 (= (lemmaNotForallFilterShorter!11 lt!274835 lambda!18925) lt!275301)))

(declare-fun b!641258 () Bool)

(assert (=> b!641258 (= e!391812 (< (size!5416 (filter!131 lt!274835 lambda!18925)) (size!5416 lt!274835)))))

(assert (= (and d!223313 (not res!279043)) b!641258))

(assert (=> d!223313 m!912393))

(declare-fun m!913386 () Bool)

(assert (=> d!223313 m!913386))

(declare-fun m!913388 () Bool)

(assert (=> d!223313 m!913388))

(assert (=> b!641258 m!912417))

(assert (=> b!641258 m!912417))

(assert (=> b!641258 m!912419))

(assert (=> b!641258 m!912421))

(assert (=> b!640539 d!223313))

(declare-fun d!223315 () Bool)

(declare-fun res!279044 () Bool)

(declare-fun e!391813 () Bool)

(assert (=> d!223315 (=> res!279044 e!391813)))

(assert (=> d!223315 (= res!279044 ((_ is Nil!6869) lt!274809))))

(assert (=> d!223315 (= (forall!1760 lt!274809 lambda!18926) e!391813)))

(declare-fun b!641259 () Bool)

(declare-fun e!391814 () Bool)

(assert (=> b!641259 (= e!391813 e!391814)))

(declare-fun res!279045 () Bool)

(assert (=> b!641259 (=> (not res!279045) (not e!391814))))

(assert (=> b!641259 (= res!279045 (dynLambda!3752 lambda!18926 (h!12270 lt!274809)))))

(declare-fun b!641260 () Bool)

(assert (=> b!641260 (= e!391814 (forall!1760 (t!84893 lt!274809) lambda!18926))))

(assert (= (and d!223315 (not res!279044)) b!641259))

(assert (= (and b!641259 res!279045) b!641260))

(declare-fun b_lambda!25281 () Bool)

(assert (=> (not b_lambda!25281) (not b!641259)))

(declare-fun m!913390 () Bool)

(assert (=> b!641259 m!913390))

(declare-fun m!913392 () Bool)

(assert (=> b!641260 m!913392))

(assert (=> b!640539 d!223315))

(declare-fun d!223317 () Bool)

(declare-fun lt!275304 () Bool)

(assert (=> d!223317 (= lt!275304 (forall!1760 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925))))

(declare-fun forall!1770 (Conc!2319 Int) Bool)

(assert (=> d!223317 (= lt!275304 (forall!1770 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18925))))

(assert (=> d!223317 (= (forall!1761 (map!1501 lt!274709 lambda!18867) lambda!18925) lt!275304)))

(declare-fun bs!78744 () Bool)

(assert (= bs!78744 d!223317))

(assert (=> bs!78744 m!912237))

(assert (=> bs!78744 m!912353))

(assert (=> bs!78744 m!912353))

(declare-fun m!913394 () Bool)

(assert (=> bs!78744 m!913394))

(declare-fun m!913396 () Bool)

(assert (=> bs!78744 m!913396))

(assert (=> b!640539 d!223317))

(declare-fun d!223319 () Bool)

(assert (=> d!223319 (= (list!2909 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18923)) (list!2911 (c!117093 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18923))))))

(declare-fun bs!78745 () Bool)

(assert (= bs!78745 d!223319))

(declare-fun m!913398 () Bool)

(assert (=> bs!78745 m!913398))

(assert (=> b!640539 d!223319))

(declare-fun d!223321 () Bool)

(assert (=> d!223321 (subseq!132 (filter!131 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925) (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!275305 () Unit!11924)

(assert (=> d!223321 (= lt!275305 (choose!4637 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925))))

(assert (=> d!223321 (= (filterSubseq!11 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925) lt!275305)))

(declare-fun bs!78746 () Bool)

(assert (= bs!78746 d!223321))

(assert (=> bs!78746 m!912353))

(declare-fun m!913400 () Bool)

(assert (=> bs!78746 m!913400))

(assert (=> bs!78746 m!913400))

(assert (=> bs!78746 m!912353))

(declare-fun m!913402 () Bool)

(assert (=> bs!78746 m!913402))

(assert (=> bs!78746 m!912353))

(declare-fun m!913404 () Bool)

(assert (=> bs!78746 m!913404))

(assert (=> b!640539 d!223321))

(declare-fun d!223323 () Bool)

(declare-fun lt!275306 () Bool)

(assert (=> d!223323 (= lt!275306 (forall!1760 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923))))

(assert (=> d!223323 (= lt!275306 (forall!1770 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18923))))

(assert (=> d!223323 (= (forall!1761 (map!1501 lt!274709 lambda!18867) lambda!18923) lt!275306)))

(declare-fun bs!78747 () Bool)

(assert (= bs!78747 d!223323))

(assert (=> bs!78747 m!912237))

(assert (=> bs!78747 m!912353))

(assert (=> bs!78747 m!912353))

(declare-fun m!913406 () Bool)

(assert (=> bs!78747 m!913406))

(declare-fun m!913408 () Bool)

(assert (=> bs!78747 m!913408))

(assert (=> b!640539 d!223323))

(declare-fun d!223325 () Bool)

(assert (=> d!223325 (= (list!2909 (map!1501 lt!274709 lambda!18867)) (list!2911 (c!117093 (map!1501 lt!274709 lambda!18867))))))

(declare-fun bs!78748 () Bool)

(assert (= bs!78748 d!223325))

(declare-fun m!913410 () Bool)

(assert (=> bs!78748 m!913410))

(assert (=> b!640539 d!223325))

(declare-fun d!223327 () Bool)

(assert (=> d!223327 (subseq!132 (filter!131 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18924) (list!2909 (map!1501 lt!274709 lambda!18867)))))

(declare-fun lt!275307 () Unit!11924)

(assert (=> d!223327 (= lt!275307 (choose!4637 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18924))))

(assert (=> d!223327 (= (filterSubseq!11 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18924) lt!275307)))

(declare-fun bs!78749 () Bool)

(assert (= bs!78749 d!223327))

(assert (=> bs!78749 m!912353))

(declare-fun m!913412 () Bool)

(assert (=> bs!78749 m!913412))

(assert (=> bs!78749 m!913412))

(assert (=> bs!78749 m!912353))

(declare-fun m!913414 () Bool)

(assert (=> bs!78749 m!913414))

(assert (=> bs!78749 m!912353))

(declare-fun m!913416 () Bool)

(assert (=> bs!78749 m!913416))

(assert (=> b!640539 d!223327))

(declare-fun b!641269 () Bool)

(declare-fun res!279055 () Bool)

(declare-fun e!391817 () Bool)

(assert (=> b!641269 (=> (not res!279055) (not e!391817))))

(declare-fun ++!1844 (Conc!2319 Conc!2319) Conc!2319)

(assert (=> b!641269 (= res!279055 (isBalanced!613 (++!1844 (c!117093 (sortObjectsByID!0 lt!274818)) (c!117093 lt!274819))))))

(declare-fun d!223329 () Bool)

(assert (=> d!223329 e!391817))

(declare-fun res!279054 () Bool)

(assert (=> d!223329 (=> (not res!279054) (not e!391817))))

(declare-fun appendAssocInst!121 (Conc!2319 Conc!2319) Bool)

(assert (=> d!223329 (= res!279054 (appendAssocInst!121 (c!117093 (sortObjectsByID!0 lt!274818)) (c!117093 lt!274819)))))

(declare-fun lt!275310 () BalanceConc!4650)

(assert (=> d!223329 (= lt!275310 (BalanceConc!4651 (++!1844 (c!117093 (sortObjectsByID!0 lt!274818)) (c!117093 lt!274819))))))

(assert (=> d!223329 (= (++!1839 (sortObjectsByID!0 lt!274818) lt!274819) lt!275310)))

(declare-fun b!641271 () Bool)

(declare-fun res!279057 () Bool)

(assert (=> b!641271 (=> (not res!279057) (not e!391817))))

(declare-fun height!284 (Conc!2319) Int)

(assert (=> b!641271 (= res!279057 (>= (height!284 (++!1844 (c!117093 (sortObjectsByID!0 lt!274818)) (c!117093 lt!274819))) (max!0 (height!284 (c!117093 (sortObjectsByID!0 lt!274818))) (height!284 (c!117093 lt!274819)))))))

(declare-fun b!641272 () Bool)

(assert (=> b!641272 (= e!391817 (= (list!2909 lt!275310) (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819))))))

(declare-fun b!641270 () Bool)

(declare-fun res!279056 () Bool)

(assert (=> b!641270 (=> (not res!279056) (not e!391817))))

(assert (=> b!641270 (= res!279056 (<= (height!284 (++!1844 (c!117093 (sortObjectsByID!0 lt!274818)) (c!117093 lt!274819))) (+ (max!0 (height!284 (c!117093 (sortObjectsByID!0 lt!274818))) (height!284 (c!117093 lt!274819))) 1)))))

(assert (= (and d!223329 res!279054) b!641269))

(assert (= (and b!641269 res!279055) b!641270))

(assert (= (and b!641270 res!279056) b!641271))

(assert (= (and b!641271 res!279057) b!641272))

(declare-fun m!913418 () Bool)

(assert (=> b!641269 m!913418))

(assert (=> b!641269 m!913418))

(declare-fun m!913420 () Bool)

(assert (=> b!641269 m!913420))

(declare-fun m!913422 () Bool)

(assert (=> b!641271 m!913422))

(declare-fun m!913424 () Bool)

(assert (=> b!641271 m!913424))

(declare-fun m!913426 () Bool)

(assert (=> b!641271 m!913426))

(assert (=> b!641271 m!913418))

(assert (=> b!641271 m!913418))

(declare-fun m!913428 () Bool)

(assert (=> b!641271 m!913428))

(assert (=> b!641271 m!913424))

(assert (=> b!641271 m!913422))

(declare-fun m!913430 () Bool)

(assert (=> d!223329 m!913430))

(assert (=> d!223329 m!913418))

(assert (=> b!641270 m!913422))

(assert (=> b!641270 m!913424))

(assert (=> b!641270 m!913426))

(assert (=> b!641270 m!913418))

(assert (=> b!641270 m!913418))

(assert (=> b!641270 m!913428))

(assert (=> b!641270 m!913424))

(assert (=> b!641270 m!913422))

(declare-fun m!913432 () Bool)

(assert (=> b!641272 m!913432))

(assert (=> b!641272 m!912377))

(assert (=> b!641272 m!912341))

(assert (=> b!641272 m!912343))

(assert (=> b!641272 m!912341))

(assert (=> b!641272 m!912343))

(assert (=> b!641272 m!912373))

(assert (=> b!640539 d!223329))

(declare-fun d!223331 () Bool)

(declare-fun e!391820 () Bool)

(assert (=> d!223331 e!391820))

(declare-fun res!279060 () Bool)

(assert (=> d!223331 (=> (not res!279060) (not e!391820))))

(declare-fun filter!133 (Conc!2319 Int) Conc!2319)

(assert (=> d!223331 (= res!279060 (isBalanced!613 (filter!133 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18925)))))

(declare-fun lt!275313 () BalanceConc!4650)

(assert (=> d!223331 (= lt!275313 (BalanceConc!4651 (filter!133 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18925)))))

(assert (=> d!223331 (= (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18925) lt!275313)))

(declare-fun b!641275 () Bool)

(assert (=> b!641275 (= e!391820 (= (list!2909 lt!275313) (filter!131 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925)))))

(assert (= (and d!223331 res!279060) b!641275))

(declare-fun m!913434 () Bool)

(assert (=> d!223331 m!913434))

(assert (=> d!223331 m!913434))

(declare-fun m!913436 () Bool)

(assert (=> d!223331 m!913436))

(declare-fun m!913438 () Bool)

(assert (=> b!641275 m!913438))

(assert (=> b!641275 m!912237))

(assert (=> b!641275 m!912353))

(assert (=> b!641275 m!912353))

(assert (=> b!641275 m!913400))

(assert (=> b!640539 d!223331))

(declare-fun b!641276 () Bool)

(declare-fun res!279062 () Bool)

(declare-fun e!391821 () Bool)

(assert (=> b!641276 (=> (not res!279062) (not e!391821))))

(assert (=> b!641276 (= res!279062 (isBalanced!613 (++!1844 (c!117093 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819)) (c!117093 (sortObjectsByID!0 lt!274832)))))))

(declare-fun d!223333 () Bool)

(assert (=> d!223333 e!391821))

(declare-fun res!279061 () Bool)

(assert (=> d!223333 (=> (not res!279061) (not e!391821))))

(assert (=> d!223333 (= res!279061 (appendAssocInst!121 (c!117093 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819)) (c!117093 (sortObjectsByID!0 lt!274832))))))

(declare-fun lt!275314 () BalanceConc!4650)

(assert (=> d!223333 (= lt!275314 (BalanceConc!4651 (++!1844 (c!117093 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819)) (c!117093 (sortObjectsByID!0 lt!274832)))))))

(assert (=> d!223333 (= (++!1839 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819) (sortObjectsByID!0 lt!274832)) lt!275314)))

(declare-fun b!641278 () Bool)

(declare-fun res!279064 () Bool)

(assert (=> b!641278 (=> (not res!279064) (not e!391821))))

(assert (=> b!641278 (= res!279064 (>= (height!284 (++!1844 (c!117093 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819)) (c!117093 (sortObjectsByID!0 lt!274832)))) (max!0 (height!284 (c!117093 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819))) (height!284 (c!117093 (sortObjectsByID!0 lt!274832))))))))

(declare-fun b!641279 () Bool)

(assert (=> b!641279 (= e!391821 (= (list!2909 lt!275314) (++!1840 (list!2909 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819)) (list!2909 (sortObjectsByID!0 lt!274832)))))))

(declare-fun b!641277 () Bool)

(declare-fun res!279063 () Bool)

(assert (=> b!641277 (=> (not res!279063) (not e!391821))))

(assert (=> b!641277 (= res!279063 (<= (height!284 (++!1844 (c!117093 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819)) (c!117093 (sortObjectsByID!0 lt!274832)))) (+ (max!0 (height!284 (c!117093 (++!1839 (sortObjectsByID!0 lt!274818) lt!274819))) (height!284 (c!117093 (sortObjectsByID!0 lt!274832)))) 1)))))

(assert (= (and d!223333 res!279061) b!641276))

(assert (= (and b!641276 res!279062) b!641277))

(assert (= (and b!641277 res!279063) b!641278))

(assert (= (and b!641278 res!279064) b!641279))

(declare-fun m!913440 () Bool)

(assert (=> b!641276 m!913440))

(assert (=> b!641276 m!913440))

(declare-fun m!913442 () Bool)

(assert (=> b!641276 m!913442))

(declare-fun m!913444 () Bool)

(assert (=> b!641278 m!913444))

(declare-fun m!913446 () Bool)

(assert (=> b!641278 m!913446))

(declare-fun m!913448 () Bool)

(assert (=> b!641278 m!913448))

(assert (=> b!641278 m!913440))

(assert (=> b!641278 m!913440))

(declare-fun m!913450 () Bool)

(assert (=> b!641278 m!913450))

(assert (=> b!641278 m!913446))

(assert (=> b!641278 m!913444))

(declare-fun m!913452 () Bool)

(assert (=> d!223333 m!913452))

(assert (=> d!223333 m!913440))

(assert (=> b!641277 m!913444))

(assert (=> b!641277 m!913446))

(assert (=> b!641277 m!913448))

(assert (=> b!641277 m!913440))

(assert (=> b!641277 m!913440))

(assert (=> b!641277 m!913450))

(assert (=> b!641277 m!913446))

(assert (=> b!641277 m!913444))

(declare-fun m!913454 () Bool)

(assert (=> b!641279 m!913454))

(assert (=> b!641279 m!912347))

(declare-fun m!913456 () Bool)

(assert (=> b!641279 m!913456))

(assert (=> b!641279 m!912337))

(assert (=> b!641279 m!912339))

(assert (=> b!641279 m!913456))

(assert (=> b!641279 m!912339))

(declare-fun m!913458 () Bool)

(assert (=> b!641279 m!913458))

(assert (=> b!640539 d!223333))

(declare-fun d!223335 () Bool)

(declare-fun e!391822 () Bool)

(assert (=> d!223335 e!391822))

(declare-fun res!279065 () Bool)

(assert (=> d!223335 (=> (not res!279065) (not e!391822))))

(assert (=> d!223335 (= res!279065 (isBalanced!613 (filter!133 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18924)))))

(declare-fun lt!275315 () BalanceConc!4650)

(assert (=> d!223335 (= lt!275315 (BalanceConc!4651 (filter!133 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18924)))))

(assert (=> d!223335 (= (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18924) lt!275315)))

(declare-fun b!641280 () Bool)

(assert (=> b!641280 (= e!391822 (= (list!2909 lt!275315) (filter!131 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18924)))))

(assert (= (and d!223335 res!279065) b!641280))

(declare-fun m!913460 () Bool)

(assert (=> d!223335 m!913460))

(assert (=> d!223335 m!913460))

(declare-fun m!913462 () Bool)

(assert (=> d!223335 m!913462))

(declare-fun m!913464 () Bool)

(assert (=> b!641280 m!913464))

(assert (=> b!641280 m!912237))

(assert (=> b!641280 m!912353))

(assert (=> b!641280 m!912353))

(assert (=> b!641280 m!913412))

(assert (=> b!640539 d!223335))

(declare-fun d!223337 () Bool)

(assert (=> d!223337 (= (list!2909 (sortObjectsByID!0 lt!274818)) (list!2911 (c!117093 (sortObjectsByID!0 lt!274818))))))

(declare-fun bs!78750 () Bool)

(assert (= bs!78750 d!223337))

(declare-fun m!913466 () Bool)

(assert (=> bs!78750 m!913466))

(assert (=> b!640539 d!223337))

(declare-fun d!223339 () Bool)

(declare-fun res!279066 () Bool)

(declare-fun e!391823 () Bool)

(assert (=> d!223339 (=> res!279066 e!391823)))

(assert (=> d!223339 (= res!279066 ((_ is Nil!6869) lt!274820))))

(assert (=> d!223339 (= (forall!1760 lt!274820 lambda!18926) e!391823)))

(declare-fun b!641281 () Bool)

(declare-fun e!391824 () Bool)

(assert (=> b!641281 (= e!391823 e!391824)))

(declare-fun res!279067 () Bool)

(assert (=> b!641281 (=> (not res!279067) (not e!391824))))

(assert (=> b!641281 (= res!279067 (dynLambda!3752 lambda!18926 (h!12270 lt!274820)))))

(declare-fun b!641282 () Bool)

(assert (=> b!641282 (= e!391824 (forall!1760 (t!84893 lt!274820) lambda!18926))))

(assert (= (and d!223339 (not res!279066)) b!641281))

(assert (= (and b!641281 res!279067) b!641282))

(declare-fun b_lambda!25283 () Bool)

(assert (=> (not b_lambda!25283) (not b!641281)))

(declare-fun m!913468 () Bool)

(assert (=> b!641281 m!913468))

(declare-fun m!913470 () Bool)

(assert (=> b!641282 m!913470))

(assert (=> b!640539 d!223339))

(declare-fun d!223341 () Bool)

(assert (=> d!223341 (forall!1760 (++!1840 (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819)) (list!2909 (sortObjectsByID!0 lt!274832))) lambda!18926)))

(declare-fun lt!275316 () Unit!11924)

(assert (=> d!223341 (= lt!275316 (choose!4638 (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819)) (list!2909 (sortObjectsByID!0 lt!274832)) lambda!18926))))

(assert (=> d!223341 (forall!1760 (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819)) lambda!18926)))

(assert (=> d!223341 (= (lemmaConcatPreservesForall!45 (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819)) (list!2909 (sortObjectsByID!0 lt!274832)) lambda!18926) lt!275316)))

(declare-fun bs!78751 () Bool)

(assert (= bs!78751 d!223341))

(assert (=> bs!78751 m!912373))

(assert (=> bs!78751 m!912339))

(declare-fun m!913472 () Bool)

(assert (=> bs!78751 m!913472))

(assert (=> bs!78751 m!913472))

(declare-fun m!913474 () Bool)

(assert (=> bs!78751 m!913474))

(assert (=> bs!78751 m!912373))

(assert (=> bs!78751 m!912339))

(declare-fun m!913476 () Bool)

(assert (=> bs!78751 m!913476))

(assert (=> bs!78751 m!912373))

(assert (=> bs!78751 m!913374))

(assert (=> b!640539 d!223341))

(declare-fun d!223343 () Bool)

(assert (=> d!223343 (= (list!2909 lt!274819) (list!2911 (c!117093 lt!274819)))))

(declare-fun bs!78752 () Bool)

(assert (= bs!78752 d!223343))

(declare-fun m!913478 () Bool)

(assert (=> bs!78752 m!913478))

(assert (=> b!640539 d!223343))

(declare-fun d!223345 () Bool)

(declare-fun lt!275319 () tuple2!7434)

(declare-fun apply!1637 (List!6883 Int) tuple2!7434)

(assert (=> d!223345 (= lt!275319 (apply!1637 (list!2909 (map!1501 lt!274709 lambda!18867)) (ite (>= (size!5417 (map!1501 lt!274709 lambda!18867)) 0) (div (size!5417 (map!1501 lt!274709 lambda!18867)) 2) (- (div (- (size!5417 (map!1501 lt!274709 lambda!18867))) 2)))))))

(declare-fun apply!1638 (Conc!2319 Int) tuple2!7434)

(assert (=> d!223345 (= lt!275319 (apply!1638 (c!117093 (map!1501 lt!274709 lambda!18867)) (ite (>= (size!5417 (map!1501 lt!274709 lambda!18867)) 0) (div (size!5417 (map!1501 lt!274709 lambda!18867)) 2) (- (div (- (size!5417 (map!1501 lt!274709 lambda!18867))) 2)))))))

(declare-fun e!391827 () Bool)

(assert (=> d!223345 e!391827))

(declare-fun res!279070 () Bool)

(assert (=> d!223345 (=> (not res!279070) (not e!391827))))

(assert (=> d!223345 (= res!279070 (<= 0 (ite (>= (size!5417 (map!1501 lt!274709 lambda!18867)) 0) (div (size!5417 (map!1501 lt!274709 lambda!18867)) 2) (- (div (- (size!5417 (map!1501 lt!274709 lambda!18867))) 2)))))))

(assert (=> d!223345 (= (apply!1632 (map!1501 lt!274709 lambda!18867) (ite (>= (size!5417 (map!1501 lt!274709 lambda!18867)) 0) (div (size!5417 (map!1501 lt!274709 lambda!18867)) 2) (- (div (- (size!5417 (map!1501 lt!274709 lambda!18867))) 2)))) lt!275319)))

(declare-fun b!641285 () Bool)

(assert (=> b!641285 (= e!391827 (< (ite (>= (size!5417 (map!1501 lt!274709 lambda!18867)) 0) (div (size!5417 (map!1501 lt!274709 lambda!18867)) 2) (- (div (- (size!5417 (map!1501 lt!274709 lambda!18867))) 2))) (size!5417 (map!1501 lt!274709 lambda!18867))))))

(assert (= (and d!223345 res!279070) b!641285))

(assert (=> d!223345 m!912237))

(assert (=> d!223345 m!912353))

(assert (=> d!223345 m!912353))

(declare-fun m!913480 () Bool)

(assert (=> d!223345 m!913480))

(declare-fun m!913482 () Bool)

(assert (=> d!223345 m!913482))

(assert (=> b!641285 m!912237))

(assert (=> b!641285 m!912383))

(assert (=> b!640539 d!223345))

(declare-fun e!391833 () Bool)

(declare-fun b!641297 () Bool)

(declare-fun lt!275322 () List!6883)

(assert (=> b!641297 (= e!391833 (or (not (= (list!2909 lt!274819) Nil!6869)) (= lt!275322 (list!2909 (sortObjectsByID!0 lt!274818)))))))

(declare-fun d!223347 () Bool)

(assert (=> d!223347 e!391833))

(declare-fun res!279076 () Bool)

(assert (=> d!223347 (=> (not res!279076) (not e!391833))))

(assert (=> d!223347 (= res!279076 (= (content!1167 lt!275322) ((_ map or) (content!1167 (list!2909 (sortObjectsByID!0 lt!274818))) (content!1167 (list!2909 lt!274819)))))))

(declare-fun e!391832 () List!6883)

(assert (=> d!223347 (= lt!275322 e!391832)))

(declare-fun c!117212 () Bool)

(assert (=> d!223347 (= c!117212 ((_ is Nil!6869) (list!2909 (sortObjectsByID!0 lt!274818))))))

(assert (=> d!223347 (= (++!1840 (list!2909 (sortObjectsByID!0 lt!274818)) (list!2909 lt!274819)) lt!275322)))

(declare-fun b!641296 () Bool)

(declare-fun res!279075 () Bool)

(assert (=> b!641296 (=> (not res!279075) (not e!391833))))

(assert (=> b!641296 (= res!279075 (= (size!5416 lt!275322) (+ (size!5416 (list!2909 (sortObjectsByID!0 lt!274818))) (size!5416 (list!2909 lt!274819)))))))

(declare-fun b!641294 () Bool)

(assert (=> b!641294 (= e!391832 (list!2909 lt!274819))))

(declare-fun b!641295 () Bool)

(assert (=> b!641295 (= e!391832 (Cons!6869 (h!12270 (list!2909 (sortObjectsByID!0 lt!274818))) (++!1840 (t!84893 (list!2909 (sortObjectsByID!0 lt!274818))) (list!2909 lt!274819))))))

(assert (= (and d!223347 c!117212) b!641294))

(assert (= (and d!223347 (not c!117212)) b!641295))

(assert (= (and d!223347 res!279076) b!641296))

(assert (= (and b!641296 res!279075) b!641297))

(declare-fun m!913484 () Bool)

(assert (=> d!223347 m!913484))

(assert (=> d!223347 m!912341))

(declare-fun m!913486 () Bool)

(assert (=> d!223347 m!913486))

(assert (=> d!223347 m!912343))

(declare-fun m!913488 () Bool)

(assert (=> d!223347 m!913488))

(declare-fun m!913490 () Bool)

(assert (=> b!641296 m!913490))

(assert (=> b!641296 m!912341))

(declare-fun m!913492 () Bool)

(assert (=> b!641296 m!913492))

(assert (=> b!641296 m!912343))

(declare-fun m!913494 () Bool)

(assert (=> b!641296 m!913494))

(assert (=> b!641295 m!912343))

(declare-fun m!913496 () Bool)

(assert (=> b!641295 m!913496))

(assert (=> b!640539 d!223347))

(declare-fun d!223349 () Bool)

(declare-fun e!391834 () Bool)

(assert (=> d!223349 e!391834))

(declare-fun res!279077 () Bool)

(assert (=> d!223349 (=> (not res!279077) (not e!391834))))

(assert (=> d!223349 (= res!279077 (isBalanced!613 (filter!133 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18923)))))

(declare-fun lt!275323 () BalanceConc!4650)

(assert (=> d!223349 (= lt!275323 (BalanceConc!4651 (filter!133 (c!117093 (map!1501 lt!274709 lambda!18867)) lambda!18923)))))

(assert (=> d!223349 (= (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18923) lt!275323)))

(declare-fun b!641298 () Bool)

(assert (=> b!641298 (= e!391834 (= (list!2909 lt!275323) (filter!131 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923)))))

(assert (= (and d!223349 res!279077) b!641298))

(declare-fun m!913498 () Bool)

(assert (=> d!223349 m!913498))

(assert (=> d!223349 m!913498))

(declare-fun m!913500 () Bool)

(assert (=> d!223349 m!913500))

(declare-fun m!913502 () Bool)

(assert (=> b!641298 m!913502))

(assert (=> b!641298 m!912237))

(assert (=> b!641298 m!912353))

(assert (=> b!641298 m!912353))

(assert (=> b!641298 m!913360))

(assert (=> b!640539 d!223349))

(declare-fun d!223351 () Bool)

(declare-fun res!279078 () Bool)

(declare-fun e!391835 () Bool)

(assert (=> d!223351 (=> res!279078 e!391835)))

(assert (=> d!223351 (= res!279078 ((_ is Nil!6869) lt!274831))))

(assert (=> d!223351 (= (forall!1760 lt!274831 lambda!18926) e!391835)))

(declare-fun b!641299 () Bool)

(declare-fun e!391836 () Bool)

(assert (=> b!641299 (= e!391835 e!391836)))

(declare-fun res!279079 () Bool)

(assert (=> b!641299 (=> (not res!279079) (not e!391836))))

(assert (=> b!641299 (= res!279079 (dynLambda!3752 lambda!18926 (h!12270 lt!274831)))))

(declare-fun b!641300 () Bool)

(assert (=> b!641300 (= e!391836 (forall!1760 (t!84893 lt!274831) lambda!18926))))

(assert (= (and d!223351 (not res!279078)) b!641299))

(assert (= (and b!641299 res!279079) b!641300))

(declare-fun b_lambda!25285 () Bool)

(assert (=> (not b_lambda!25285) (not b!641299)))

(declare-fun m!913504 () Bool)

(assert (=> b!641299 m!913504))

(declare-fun m!913506 () Bool)

(assert (=> b!641300 m!913506))

(assert (=> b!640539 d!223351))

(declare-fun d!223353 () Bool)

(assert (=> d!223353 (= (list!2909 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18924)) (list!2911 (c!117093 (filter!132 (map!1501 lt!274709 lambda!18867) lambda!18924))))))

(declare-fun bs!78753 () Bool)

(assert (= bs!78753 d!223353))

(declare-fun m!913508 () Bool)

(assert (=> bs!78753 m!913508))

(assert (=> b!640539 d!223353))

(declare-fun bs!78754 () Bool)

(declare-fun d!223355 () Bool)

(assert (= bs!78754 (and d!223355 d!223165)))

(declare-fun lambda!19048 () Int)

(assert (=> bs!78754 (= lambda!19048 lambda!18955)))

(declare-fun bs!78755 () Bool)

(assert (= bs!78755 (and d!223355 d!223223)))

(assert (=> bs!78755 (= lambda!19048 lambda!18983)))

(declare-fun bs!78756 () Bool)

(assert (= bs!78756 (and d!223355 d!223189)))

(assert (=> bs!78756 (= lambda!19048 lambda!18974)))

(declare-fun bs!78757 () Bool)

(assert (= bs!78757 (and d!223355 d!223221)))

(assert (=> bs!78757 (= lambda!19048 lambda!18982)))

(declare-fun bs!78758 () Bool)

(assert (= bs!78758 (and d!223355 d!223207)))

(assert (=> bs!78758 (= lambda!19048 lambda!18977)))

(declare-fun bs!78759 () Bool)

(assert (= bs!78759 (and d!223355 d!223201)))

(assert (=> bs!78759 (= lambda!19048 lambda!18976)))

(declare-fun bs!78760 () Bool)

(assert (= bs!78760 (and d!223355 d!223181)))

(assert (=> bs!78760 (= lambda!19048 lambda!18973)))

(declare-fun bs!78761 () Bool)

(assert (= bs!78761 (and d!223355 d!223211)))

(assert (=> bs!78761 (= lambda!19048 lambda!18981)))

(declare-fun bs!78762 () Bool)

(assert (= bs!78762 (and d!223355 d!223159)))

(assert (=> bs!78762 (= lambda!19048 lambda!18954)))

(declare-fun bs!78763 () Bool)

(assert (= bs!78763 (and d!223355 d!223195)))

(assert (=> bs!78763 (= lambda!19048 lambda!18975)))

(declare-fun bs!78764 () Bool)

(assert (= bs!78764 (and d!223355 d!223271)))

(assert (=> bs!78764 (= lambda!19048 lambda!19037)))

(declare-fun bs!78765 () Bool)

(assert (= bs!78765 (and d!223355 d!223169)))

(assert (=> bs!78765 (= lambda!19048 lambda!18959)))

(assert (=> d!223355 (= (inv!8707 setElem!2960) (forall!1763 (exprs!699 setElem!2960) lambda!19048))))

(declare-fun bs!78766 () Bool)

(assert (= bs!78766 d!223355))

(declare-fun m!913510 () Bool)

(assert (=> bs!78766 m!913510))

(assert (=> setNonEmpty!2960 d!223355))

(declare-fun d!223357 () Bool)

(declare-fun c!117217 () Bool)

(assert (=> d!223357 (= c!117217 ((_ is Empty!2320) (c!117094 lt!274709)))))

(declare-fun e!391841 () List!6884)

(assert (=> d!223357 (= (list!2912 (c!117094 lt!274709)) e!391841)))

(declare-fun b!641309 () Bool)

(assert (=> b!641309 (= e!391841 Nil!6870)))

(declare-fun b!641311 () Bool)

(declare-fun e!391842 () List!6884)

(declare-fun list!2917 (IArray!4641) List!6884)

(assert (=> b!641311 (= e!391842 (list!2917 (xs!4961 (c!117094 lt!274709))))))

(declare-fun b!641312 () Bool)

(declare-fun ++!1845 (List!6884 List!6884) List!6884)

(assert (=> b!641312 (= e!391842 (++!1845 (list!2912 (left!5466 (c!117094 lt!274709))) (list!2912 (right!5796 (c!117094 lt!274709)))))))

(declare-fun b!641310 () Bool)

(assert (=> b!641310 (= e!391841 e!391842)))

(declare-fun c!117218 () Bool)

(assert (=> b!641310 (= c!117218 ((_ is Leaf!3525) (c!117094 lt!274709)))))

(assert (= (and d!223357 c!117217) b!641309))

(assert (= (and d!223357 (not c!117217)) b!641310))

(assert (= (and b!641310 c!117218) b!641311))

(assert (= (and b!641310 (not c!117218)) b!641312))

(declare-fun m!913512 () Bool)

(assert (=> b!641311 m!913512))

(declare-fun m!913514 () Bool)

(assert (=> b!641312 m!913514))

(declare-fun m!913516 () Bool)

(assert (=> b!641312 m!913516))

(assert (=> b!641312 m!913514))

(assert (=> b!641312 m!913516))

(declare-fun m!913518 () Bool)

(assert (=> b!641312 m!913518))

(assert (=> d!223115 d!223357))

(declare-fun bs!78767 () Bool)

(declare-fun d!223359 () Bool)

(assert (= bs!78767 (and d!223359 d!223165)))

(declare-fun lambda!19049 () Int)

(assert (=> bs!78767 (= lambda!19049 lambda!18955)))

(declare-fun bs!78768 () Bool)

(assert (= bs!78768 (and d!223359 d!223355)))

(assert (=> bs!78768 (= lambda!19049 lambda!19048)))

(declare-fun bs!78769 () Bool)

(assert (= bs!78769 (and d!223359 d!223223)))

(assert (=> bs!78769 (= lambda!19049 lambda!18983)))

(declare-fun bs!78770 () Bool)

(assert (= bs!78770 (and d!223359 d!223189)))

(assert (=> bs!78770 (= lambda!19049 lambda!18974)))

(declare-fun bs!78771 () Bool)

(assert (= bs!78771 (and d!223359 d!223221)))

(assert (=> bs!78771 (= lambda!19049 lambda!18982)))

(declare-fun bs!78772 () Bool)

(assert (= bs!78772 (and d!223359 d!223207)))

(assert (=> bs!78772 (= lambda!19049 lambda!18977)))

(declare-fun bs!78773 () Bool)

(assert (= bs!78773 (and d!223359 d!223201)))

(assert (=> bs!78773 (= lambda!19049 lambda!18976)))

(declare-fun bs!78774 () Bool)

(assert (= bs!78774 (and d!223359 d!223181)))

(assert (=> bs!78774 (= lambda!19049 lambda!18973)))

(declare-fun bs!78775 () Bool)

(assert (= bs!78775 (and d!223359 d!223211)))

(assert (=> bs!78775 (= lambda!19049 lambda!18981)))

(declare-fun bs!78776 () Bool)

(assert (= bs!78776 (and d!223359 d!223159)))

(assert (=> bs!78776 (= lambda!19049 lambda!18954)))

(declare-fun bs!78777 () Bool)

(assert (= bs!78777 (and d!223359 d!223195)))

(assert (=> bs!78777 (= lambda!19049 lambda!18975)))

(declare-fun bs!78778 () Bool)

(assert (= bs!78778 (and d!223359 d!223271)))

(assert (=> bs!78778 (= lambda!19049 lambda!19037)))

(declare-fun bs!78779 () Bool)

(assert (= bs!78779 (and d!223359 d!223169)))

(assert (=> bs!78779 (= lambda!19049 lambda!18959)))

(assert (=> d!223359 (= (inv!8707 (_2!4050 (_1!4051 (h!12269 mapDefault!2627)))) (forall!1763 (exprs!699 (_2!4050 (_1!4051 (h!12269 mapDefault!2627)))) lambda!19049))))

(declare-fun bs!78780 () Bool)

(assert (= bs!78780 d!223359))

(declare-fun m!913520 () Bool)

(assert (=> bs!78780 m!913520))

(assert (=> b!640692 d!223359))

(declare-fun bs!78781 () Bool)

(declare-fun d!223361 () Bool)

(assert (= bs!78781 (and d!223361 d!223165)))

(declare-fun lambda!19050 () Int)

(assert (=> bs!78781 (= lambda!19050 lambda!18955)))

(declare-fun bs!78782 () Bool)

(assert (= bs!78782 (and d!223361 d!223355)))

(assert (=> bs!78782 (= lambda!19050 lambda!19048)))

(declare-fun bs!78783 () Bool)

(assert (= bs!78783 (and d!223361 d!223223)))

(assert (=> bs!78783 (= lambda!19050 lambda!18983)))

(declare-fun bs!78784 () Bool)

(assert (= bs!78784 (and d!223361 d!223189)))

(assert (=> bs!78784 (= lambda!19050 lambda!18974)))

(declare-fun bs!78785 () Bool)

(assert (= bs!78785 (and d!223361 d!223221)))

(assert (=> bs!78785 (= lambda!19050 lambda!18982)))

(declare-fun bs!78786 () Bool)

(assert (= bs!78786 (and d!223361 d!223207)))

(assert (=> bs!78786 (= lambda!19050 lambda!18977)))

(declare-fun bs!78787 () Bool)

(assert (= bs!78787 (and d!223361 d!223201)))

(assert (=> bs!78787 (= lambda!19050 lambda!18976)))

(declare-fun bs!78788 () Bool)

(assert (= bs!78788 (and d!223361 d!223359)))

(assert (=> bs!78788 (= lambda!19050 lambda!19049)))

(declare-fun bs!78789 () Bool)

(assert (= bs!78789 (and d!223361 d!223181)))

(assert (=> bs!78789 (= lambda!19050 lambda!18973)))

(declare-fun bs!78790 () Bool)

(assert (= bs!78790 (and d!223361 d!223211)))

(assert (=> bs!78790 (= lambda!19050 lambda!18981)))

(declare-fun bs!78791 () Bool)

(assert (= bs!78791 (and d!223361 d!223159)))

(assert (=> bs!78791 (= lambda!19050 lambda!18954)))

(declare-fun bs!78792 () Bool)

(assert (= bs!78792 (and d!223361 d!223195)))

(assert (=> bs!78792 (= lambda!19050 lambda!18975)))

(declare-fun bs!78793 () Bool)

(assert (= bs!78793 (and d!223361 d!223271)))

(assert (=> bs!78793 (= lambda!19050 lambda!19037)))

(declare-fun bs!78794 () Bool)

(assert (= bs!78794 (and d!223361 d!223169)))

(assert (=> bs!78794 (= lambda!19050 lambda!18959)))

(assert (=> d!223361 (= (inv!8707 setElem!2941) (forall!1763 (exprs!699 setElem!2941) lambda!19050))))

(declare-fun bs!78795 () Bool)

(assert (= bs!78795 d!223361))

(declare-fun m!913522 () Bool)

(assert (=> bs!78795 m!913522))

(assert (=> setNonEmpty!2941 d!223361))

(assert (=> d!223151 d!223137))

(declare-fun d!223363 () Bool)

(declare-fun res!279084 () Bool)

(declare-fun e!391845 () Bool)

(assert (=> d!223363 (=> (not res!279084) (not e!391845))))

(declare-fun list!2918 (IArray!4637) List!6878)

(assert (=> d!223363 (= res!279084 (<= (size!5420 (list!2918 (xs!4959 (c!117092 (tokens!1209 printableTokens!2))))) 512))))

(assert (=> d!223363 (= (inv!8706 (c!117092 (tokens!1209 printableTokens!2))) e!391845)))

(declare-fun b!641317 () Bool)

(declare-fun res!279085 () Bool)

(assert (=> b!641317 (=> (not res!279085) (not e!391845))))

(assert (=> b!641317 (= res!279085 (= (csize!4867 (c!117092 (tokens!1209 printableTokens!2))) (size!5420 (list!2918 (xs!4959 (c!117092 (tokens!1209 printableTokens!2)))))))))

(declare-fun b!641318 () Bool)

(assert (=> b!641318 (= e!391845 (and (> (csize!4867 (c!117092 (tokens!1209 printableTokens!2))) 0) (<= (csize!4867 (c!117092 (tokens!1209 printableTokens!2))) 512)))))

(assert (= (and d!223363 res!279084) b!641317))

(assert (= (and b!641317 res!279085) b!641318))

(declare-fun m!913524 () Bool)

(assert (=> d!223363 m!913524))

(assert (=> d!223363 m!913524))

(declare-fun m!913526 () Bool)

(assert (=> d!223363 m!913526))

(assert (=> b!641317 m!913524))

(assert (=> b!641317 m!913524))

(assert (=> b!641317 m!913526))

(assert (=> b!640643 d!223363))

(declare-fun bs!78796 () Bool)

(declare-fun d!223365 () Bool)

(assert (= bs!78796 (and d!223365 d!223165)))

(declare-fun lambda!19051 () Int)

(assert (=> bs!78796 (= lambda!19051 lambda!18955)))

(declare-fun bs!78797 () Bool)

(assert (= bs!78797 (and d!223365 d!223355)))

(assert (=> bs!78797 (= lambda!19051 lambda!19048)))

(declare-fun bs!78798 () Bool)

(assert (= bs!78798 (and d!223365 d!223223)))

(assert (=> bs!78798 (= lambda!19051 lambda!18983)))

(declare-fun bs!78799 () Bool)

(assert (= bs!78799 (and d!223365 d!223189)))

(assert (=> bs!78799 (= lambda!19051 lambda!18974)))

(declare-fun bs!78800 () Bool)

(assert (= bs!78800 (and d!223365 d!223221)))

(assert (=> bs!78800 (= lambda!19051 lambda!18982)))

(declare-fun bs!78801 () Bool)

(assert (= bs!78801 (and d!223365 d!223207)))

(assert (=> bs!78801 (= lambda!19051 lambda!18977)))

(declare-fun bs!78802 () Bool)

(assert (= bs!78802 (and d!223365 d!223201)))

(assert (=> bs!78802 (= lambda!19051 lambda!18976)))

(declare-fun bs!78803 () Bool)

(assert (= bs!78803 (and d!223365 d!223181)))

(assert (=> bs!78803 (= lambda!19051 lambda!18973)))

(declare-fun bs!78804 () Bool)

(assert (= bs!78804 (and d!223365 d!223211)))

(assert (=> bs!78804 (= lambda!19051 lambda!18981)))

(declare-fun bs!78805 () Bool)

(assert (= bs!78805 (and d!223365 d!223159)))

(assert (=> bs!78805 (= lambda!19051 lambda!18954)))

(declare-fun bs!78806 () Bool)

(assert (= bs!78806 (and d!223365 d!223195)))

(assert (=> bs!78806 (= lambda!19051 lambda!18975)))

(declare-fun bs!78807 () Bool)

(assert (= bs!78807 (and d!223365 d!223271)))

(assert (=> bs!78807 (= lambda!19051 lambda!19037)))

(declare-fun bs!78808 () Bool)

(assert (= bs!78808 (and d!223365 d!223169)))

(assert (=> bs!78808 (= lambda!19051 lambda!18959)))

(declare-fun bs!78809 () Bool)

(assert (= bs!78809 (and d!223365 d!223361)))

(assert (=> bs!78809 (= lambda!19051 lambda!19050)))

(declare-fun bs!78810 () Bool)

(assert (= bs!78810 (and d!223365 d!223359)))

(assert (=> bs!78810 (= lambda!19051 lambda!19049)))

(assert (=> d!223365 (= (inv!8707 (_1!4048 (_1!4049 (h!12268 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))))) (forall!1763 (exprs!699 (_1!4048 (_1!4049 (h!12268 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351)))))))))) lambda!19051))))

(declare-fun bs!78811 () Bool)

(assert (= bs!78811 d!223365))

(declare-fun m!913528 () Bool)

(assert (=> bs!78811 m!913528))

(assert (=> b!640714 d!223365))

(assert (=> b!640488 d!223127))

(declare-fun d!223367 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!196) Regex!1713)

(declare-datatypes ((StringLiteralValueInjection!56 0))(
  ( (StringLiteralValueInjection!57) )
))
(declare-fun injection!8 (StringLiteralValueInjection!56) TokenValueInjection!2576)

(assert (=> d!223367 (= (jsonstringRule!0 JsonLexer!197) (Rule!2557 (jsonStringRe!0 JsonLexer!197) (String!8799 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!57)))))

(declare-fun bs!78812 () Bool)

(assert (= bs!78812 d!223367))

(declare-fun m!913530 () Bool)

(assert (=> bs!78812 m!913530))

(declare-fun m!913532 () Bool)

(assert (=> bs!78812 m!913532))

(assert (=> d!223137 d!223367))

(declare-fun d!223369 () Bool)

(declare-fun falseRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223369 (= (falseRule!0 JsonLexer!197) (Rule!2557 (falseRe!0 JsonLexer!197) (String!8799 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78813 () Bool)

(assert (= bs!78813 d!223369))

(declare-fun m!913534 () Bool)

(assert (=> bs!78813 m!913534))

(assert (=> bs!78813 m!912311))

(assert (=> d!223137 d!223369))

(declare-fun d!223371 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223371 (= (lBracketRule!0 JsonLexer!197) (Rule!2557 (lBracketRe!0 JsonLexer!197) (String!8799 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78814 () Bool)

(assert (= bs!78814 d!223371))

(declare-fun m!913536 () Bool)

(assert (=> bs!78814 m!913536))

(assert (=> bs!78814 m!912311))

(assert (=> d!223137 d!223371))

(declare-fun d!223373 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223373 (= (rBracketRule!0 JsonLexer!197) (Rule!2557 (rBracketRe!0 JsonLexer!197) (String!8799 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78815 () Bool)

(assert (= bs!78815 d!223373))

(declare-fun m!913538 () Bool)

(assert (=> bs!78815 m!913538))

(assert (=> bs!78815 m!912311))

(assert (=> d!223137 d!223373))

(declare-fun d!223375 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223375 (= (lBraceRule!0 JsonLexer!197) (Rule!2557 (lBraceRe!0 JsonLexer!197) (String!8799 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78816 () Bool)

(assert (= bs!78816 d!223375))

(declare-fun m!913540 () Bool)

(assert (=> bs!78816 m!913540))

(assert (=> bs!78816 m!912311))

(assert (=> d!223137 d!223375))

(declare-fun d!223377 () Bool)

(declare-fun nullRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223377 (= (nullRule!0 JsonLexer!197) (Rule!2557 (nullRe!0 JsonLexer!197) (String!8799 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78817 () Bool)

(assert (= bs!78817 d!223377))

(declare-fun m!913542 () Bool)

(assert (=> bs!78817 m!913542))

(assert (=> bs!78817 m!912311))

(assert (=> d!223137 d!223377))

(assert (=> d!223137 d!223251))

(declare-fun d!223379 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223379 (= (rBraceRule!0 JsonLexer!197) (Rule!2557 (rBraceRe!0 JsonLexer!197) (String!8799 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78818 () Bool)

(assert (= bs!78818 d!223379))

(declare-fun m!913544 () Bool)

(assert (=> bs!78818 m!913544))

(assert (=> bs!78818 m!912311))

(assert (=> d!223137 d!223379))

(assert (=> d!223137 d!223241))

(declare-fun d!223381 () Bool)

(declare-fun eofRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223381 (= (eofRule!0 JsonLexer!197) (Rule!2557 (eofRe!0 JsonLexer!197) (String!8799 "eeooff") false (injection!7 WhitespaceValueInjection!39)))))

(declare-fun bs!78819 () Bool)

(assert (= bs!78819 d!223381))

(declare-fun m!913546 () Bool)

(assert (=> bs!78819 m!913546))

(assert (=> bs!78819 m!912431))

(assert (=> d!223137 d!223381))

(declare-fun d!223383 () Bool)

(declare-fun trueRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223383 (= (trueRule!0 JsonLexer!197) (Rule!2557 (trueRe!0 JsonLexer!197) (String!8799 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78820 () Bool)

(assert (= bs!78820 d!223383))

(declare-fun m!913548 () Bool)

(assert (=> bs!78820 m!913548))

(assert (=> bs!78820 m!912311))

(assert (=> d!223137 d!223383))

(declare-fun d!223385 () Bool)

(declare-fun colonRe!0 (JsonLexer!196) Regex!1713)

(assert (=> d!223385 (= (colonRule!0 JsonLexer!197) (Rule!2557 (colonRe!0 JsonLexer!197) (String!8799 "ccoolloonn") false (injection!9 KeywordValueInjection!43)))))

(declare-fun bs!78821 () Bool)

(assert (= bs!78821 d!223385))

(declare-fun m!913550 () Bool)

(assert (=> bs!78821 m!913550))

(assert (=> bs!78821 m!912311))

(assert (=> d!223137 d!223385))

(declare-fun d!223387 () Bool)

(declare-fun intRe!0 (JsonLexer!196) Regex!1713)

(declare-datatypes ((IntegerValueInjection!36 0))(
  ( (IntegerValueInjection!37) )
))
(declare-fun injection!5 (IntegerValueInjection!36) TokenValueInjection!2576)

(assert (=> d!223387 (= (integerLiteralRule!0 JsonLexer!197) (Rule!2557 (intRe!0 JsonLexer!197) (String!8799 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!37)))))

(declare-fun bs!78822 () Bool)

(assert (= bs!78822 d!223387))

(declare-fun m!913552 () Bool)

(assert (=> bs!78822 m!913552))

(declare-fun m!913554 () Bool)

(assert (=> bs!78822 m!913554))

(assert (=> d!223137 d!223387))

(declare-fun d!223389 () Bool)

(declare-fun floatRe!0 (JsonLexer!196) Regex!1713)

(declare-datatypes ((FloatLiteralValueInjection!32 0))(
  ( (FloatLiteralValueInjection!33) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!32) TokenValueInjection!2576)

(assert (=> d!223389 (= (floatLiteralRule!0 JsonLexer!197) (Rule!2557 (floatRe!0 JsonLexer!197) (String!8799 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!33)))))

(declare-fun bs!78823 () Bool)

(assert (= bs!78823 d!223389))

(declare-fun m!913556 () Bool)

(assert (=> bs!78823 m!913556))

(declare-fun m!913558 () Bool)

(assert (=> bs!78823 m!913558))

(assert (=> d!223137 d!223389))

(declare-fun d!223391 () Bool)

(declare-fun c!117219 () Bool)

(assert (=> d!223391 (= c!117219 ((_ is Node!2318) (left!5464 (c!117092 (tokens!1209 printableTokens!2)))))))

(declare-fun e!391846 () Bool)

(assert (=> d!223391 (= (inv!8701 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))) e!391846)))

(declare-fun b!641319 () Bool)

(assert (=> b!641319 (= e!391846 (inv!8705 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))))))

(declare-fun b!641320 () Bool)

(declare-fun e!391847 () Bool)

(assert (=> b!641320 (= e!391846 e!391847)))

(declare-fun res!279086 () Bool)

(assert (=> b!641320 (= res!279086 (not ((_ is Leaf!3523) (left!5464 (c!117092 (tokens!1209 printableTokens!2))))))))

(assert (=> b!641320 (=> res!279086 e!391847)))

(declare-fun b!641321 () Bool)

(assert (=> b!641321 (= e!391847 (inv!8706 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))))))

(assert (= (and d!223391 c!117219) b!641319))

(assert (= (and d!223391 (not c!117219)) b!641320))

(assert (= (and b!641320 (not res!279086)) b!641321))

(declare-fun m!913560 () Bool)

(assert (=> b!641319 m!913560))

(declare-fun m!913562 () Bool)

(assert (=> b!641321 m!913562))

(assert (=> b!640689 d!223391))

(declare-fun d!223393 () Bool)

(declare-fun c!117220 () Bool)

(assert (=> d!223393 (= c!117220 ((_ is Node!2318) (right!5794 (c!117092 (tokens!1209 printableTokens!2)))))))

(declare-fun e!391848 () Bool)

(assert (=> d!223393 (= (inv!8701 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))) e!391848)))

(declare-fun b!641322 () Bool)

(assert (=> b!641322 (= e!391848 (inv!8705 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))))))

(declare-fun b!641323 () Bool)

(declare-fun e!391849 () Bool)

(assert (=> b!641323 (= e!391848 e!391849)))

(declare-fun res!279087 () Bool)

(assert (=> b!641323 (= res!279087 (not ((_ is Leaf!3523) (right!5794 (c!117092 (tokens!1209 printableTokens!2))))))))

(assert (=> b!641323 (=> res!279087 e!391849)))

(declare-fun b!641324 () Bool)

(assert (=> b!641324 (= e!391849 (inv!8706 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))))))

(assert (= (and d!223393 c!117220) b!641322))

(assert (= (and d!223393 (not c!117220)) b!641323))

(assert (= (and b!641323 (not res!279087)) b!641324))

(declare-fun m!913564 () Bool)

(assert (=> b!641322 m!913564))

(declare-fun m!913566 () Bool)

(assert (=> b!641324 m!913566))

(assert (=> b!640689 d!223393))

(declare-fun b!641337 () Bool)

(declare-fun res!279101 () Bool)

(declare-fun e!391855 () Bool)

(assert (=> b!641337 (=> (not res!279101) (not e!391855))))

(declare-fun isEmpty!4705 (Conc!2319) Bool)

(assert (=> b!641337 (= res!279101 (not (isEmpty!4705 (left!5465 (map!1505 (c!117094 lt!274709) lambda!18867)))))))

(declare-fun b!641338 () Bool)

(assert (=> b!641338 (= e!391855 (not (isEmpty!4705 (right!5795 (map!1505 (c!117094 lt!274709) lambda!18867)))))))

(declare-fun d!223395 () Bool)

(declare-fun res!279104 () Bool)

(declare-fun e!391854 () Bool)

(assert (=> d!223395 (=> res!279104 e!391854)))

(assert (=> d!223395 (= res!279104 (not ((_ is Node!2319) (map!1505 (c!117094 lt!274709) lambda!18867))))))

(assert (=> d!223395 (= (isBalanced!613 (map!1505 (c!117094 lt!274709) lambda!18867)) e!391854)))

(declare-fun b!641339 () Bool)

(assert (=> b!641339 (= e!391854 e!391855)))

(declare-fun res!279103 () Bool)

(assert (=> b!641339 (=> (not res!279103) (not e!391855))))

(assert (=> b!641339 (= res!279103 (<= (- 1) (- (height!284 (left!5465 (map!1505 (c!117094 lt!274709) lambda!18867))) (height!284 (right!5795 (map!1505 (c!117094 lt!274709) lambda!18867))))))))

(declare-fun b!641340 () Bool)

(declare-fun res!279100 () Bool)

(assert (=> b!641340 (=> (not res!279100) (not e!391855))))

(assert (=> b!641340 (= res!279100 (isBalanced!613 (right!5795 (map!1505 (c!117094 lt!274709) lambda!18867))))))

(declare-fun b!641341 () Bool)

(declare-fun res!279105 () Bool)

(assert (=> b!641341 (=> (not res!279105) (not e!391855))))

(assert (=> b!641341 (= res!279105 (isBalanced!613 (left!5465 (map!1505 (c!117094 lt!274709) lambda!18867))))))

(declare-fun b!641342 () Bool)

(declare-fun res!279102 () Bool)

(assert (=> b!641342 (=> (not res!279102) (not e!391855))))

(assert (=> b!641342 (= res!279102 (<= (- (height!284 (left!5465 (map!1505 (c!117094 lt!274709) lambda!18867))) (height!284 (right!5795 (map!1505 (c!117094 lt!274709) lambda!18867)))) 1))))

(assert (= (and d!223395 (not res!279104)) b!641339))

(assert (= (and b!641339 res!279103) b!641342))

(assert (= (and b!641342 res!279102) b!641341))

(assert (= (and b!641341 res!279105) b!641340))

(assert (= (and b!641340 res!279100) b!641337))

(assert (= (and b!641337 res!279101) b!641338))

(declare-fun m!913568 () Bool)

(assert (=> b!641339 m!913568))

(declare-fun m!913570 () Bool)

(assert (=> b!641339 m!913570))

(declare-fun m!913572 () Bool)

(assert (=> b!641340 m!913572))

(declare-fun m!913574 () Bool)

(assert (=> b!641338 m!913574))

(declare-fun m!913576 () Bool)

(assert (=> b!641337 m!913576))

(assert (=> b!641342 m!913568))

(assert (=> b!641342 m!913570))

(declare-fun m!913578 () Bool)

(assert (=> b!641341 m!913578))

(assert (=> b!640608 d!223395))

(declare-fun b!641353 () Bool)

(declare-fun e!391864 () Conc!2319)

(declare-fun map!1508 (IArray!4641 Int) IArray!4639)

(assert (=> b!641353 (= e!391864 (Leaf!3524 (map!1508 (xs!4961 (c!117094 lt!274709)) lambda!18867) (csize!4871 (c!117094 lt!274709))))))

(declare-fun b!641354 () Bool)

(declare-fun e!391862 () Conc!2319)

(assert (=> b!641354 (= e!391862 e!391864)))

(declare-fun c!117226 () Bool)

(assert (=> b!641354 (= c!117226 ((_ is Leaf!3525) (c!117094 lt!274709)))))

(declare-fun b!641355 () Bool)

(assert (=> b!641355 (= e!391862 Empty!2319)))

(declare-fun d!223397 () Bool)

(declare-fun e!391863 () Bool)

(assert (=> d!223397 e!391863))

(declare-fun res!279108 () Bool)

(assert (=> d!223397 (=> (not res!279108) (not e!391863))))

(declare-fun lt!275329 () Conc!2319)

(assert (=> d!223397 (= res!279108 (= (list!2911 lt!275329) (map!1503 (list!2912 (c!117094 lt!274709)) lambda!18867)))))

(assert (=> d!223397 (= lt!275329 e!391862)))

(declare-fun c!117225 () Bool)

(assert (=> d!223397 (= c!117225 ((_ is Empty!2320) (c!117094 lt!274709)))))

(assert (=> d!223397 (isBalanced!612 (c!117094 lt!274709))))

(assert (=> d!223397 (= (map!1505 (c!117094 lt!274709) lambda!18867) lt!275329)))

(declare-fun b!641356 () Bool)

(declare-fun lt!275328 () Unit!11924)

(declare-fun lemmaMapConcat!10 (List!6884 List!6884 Int) Unit!11924)

(assert (=> b!641356 (= lt!275328 (lemmaMapConcat!10 (list!2912 (left!5466 (c!117094 lt!274709))) (list!2912 (right!5796 (c!117094 lt!274709))) lambda!18867))))

(assert (=> b!641356 (= e!391864 (Node!2319 (map!1505 (left!5466 (c!117094 lt!274709)) lambda!18867) (map!1505 (right!5796 (c!117094 lt!274709)) lambda!18867) (csize!4870 (c!117094 lt!274709)) (cheight!2531 (c!117094 lt!274709))))))

(declare-fun b!641357 () Bool)

(assert (=> b!641357 (= e!391863 (isBalanced!613 lt!275329))))

(assert (= (and d!223397 c!117225) b!641355))

(assert (= (and d!223397 (not c!117225)) b!641354))

(assert (= (and b!641354 c!117226) b!641353))

(assert (= (and b!641354 (not c!117226)) b!641356))

(assert (= (and d!223397 res!279108) b!641357))

(declare-fun m!913580 () Bool)

(assert (=> b!641353 m!913580))

(declare-fun m!913582 () Bool)

(assert (=> d!223397 m!913582))

(assert (=> d!223397 m!912515))

(assert (=> d!223397 m!912515))

(declare-fun m!913584 () Bool)

(assert (=> d!223397 m!913584))

(declare-fun m!913586 () Bool)

(assert (=> d!223397 m!913586))

(declare-fun m!913588 () Bool)

(assert (=> b!641356 m!913588))

(assert (=> b!641356 m!913514))

(assert (=> b!641356 m!913516))

(declare-fun m!913590 () Bool)

(assert (=> b!641356 m!913590))

(assert (=> b!641356 m!913514))

(declare-fun m!913592 () Bool)

(assert (=> b!641356 m!913592))

(assert (=> b!641356 m!913516))

(declare-fun m!913594 () Bool)

(assert (=> b!641357 m!913594))

(assert (=> b!640608 d!223397))

(declare-fun bs!78824 () Bool)

(declare-fun d!223399 () Bool)

(assert (= bs!78824 (and d!223399 d!223165)))

(declare-fun lambda!19052 () Int)

(assert (=> bs!78824 (= lambda!19052 lambda!18955)))

(declare-fun bs!78825 () Bool)

(assert (= bs!78825 (and d!223399 d!223355)))

(assert (=> bs!78825 (= lambda!19052 lambda!19048)))

(declare-fun bs!78826 () Bool)

(assert (= bs!78826 (and d!223399 d!223189)))

(assert (=> bs!78826 (= lambda!19052 lambda!18974)))

(declare-fun bs!78827 () Bool)

(assert (= bs!78827 (and d!223399 d!223221)))

(assert (=> bs!78827 (= lambda!19052 lambda!18982)))

(declare-fun bs!78828 () Bool)

(assert (= bs!78828 (and d!223399 d!223207)))

(assert (=> bs!78828 (= lambda!19052 lambda!18977)))

(declare-fun bs!78829 () Bool)

(assert (= bs!78829 (and d!223399 d!223201)))

(assert (=> bs!78829 (= lambda!19052 lambda!18976)))

(declare-fun bs!78830 () Bool)

(assert (= bs!78830 (and d!223399 d!223181)))

(assert (=> bs!78830 (= lambda!19052 lambda!18973)))

(declare-fun bs!78831 () Bool)

(assert (= bs!78831 (and d!223399 d!223211)))

(assert (=> bs!78831 (= lambda!19052 lambda!18981)))

(declare-fun bs!78832 () Bool)

(assert (= bs!78832 (and d!223399 d!223159)))

(assert (=> bs!78832 (= lambda!19052 lambda!18954)))

(declare-fun bs!78833 () Bool)

(assert (= bs!78833 (and d!223399 d!223195)))

(assert (=> bs!78833 (= lambda!19052 lambda!18975)))

(declare-fun bs!78834 () Bool)

(assert (= bs!78834 (and d!223399 d!223223)))

(assert (=> bs!78834 (= lambda!19052 lambda!18983)))

(declare-fun bs!78835 () Bool)

(assert (= bs!78835 (and d!223399 d!223365)))

(assert (=> bs!78835 (= lambda!19052 lambda!19051)))

(declare-fun bs!78836 () Bool)

(assert (= bs!78836 (and d!223399 d!223271)))

(assert (=> bs!78836 (= lambda!19052 lambda!19037)))

(declare-fun bs!78837 () Bool)

(assert (= bs!78837 (and d!223399 d!223169)))

(assert (=> bs!78837 (= lambda!19052 lambda!18959)))

(declare-fun bs!78838 () Bool)

(assert (= bs!78838 (and d!223399 d!223361)))

(assert (=> bs!78838 (= lambda!19052 lambda!19050)))

(declare-fun bs!78839 () Bool)

(assert (= bs!78839 (and d!223399 d!223359)))

(assert (=> bs!78839 (= lambda!19052 lambda!19049)))

(assert (=> d!223399 (= (inv!8707 setElem!2959) (forall!1763 (exprs!699 setElem!2959) lambda!19052))))

(declare-fun bs!78840 () Bool)

(assert (= bs!78840 d!223399))

(declare-fun m!913596 () Bool)

(assert (=> bs!78840 m!913596))

(assert (=> setNonEmpty!2959 d!223399))

(declare-fun d!223401 () Bool)

(declare-fun lt!275332 () Int)

(declare-fun apply!1639 (List!6885 Int) Int)

(assert (=> d!223401 (= lt!275332 (apply!1639 (list!2913 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))) 0))))

(declare-fun apply!1640 (Conc!2321 Int) Int)

(assert (=> d!223401 (= lt!275332 (apply!1640 (c!117095 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))) 0))))

(declare-fun e!391867 () Bool)

(assert (=> d!223401 e!391867))

(declare-fun res!279111 () Bool)

(assert (=> d!223401 (=> (not res!279111) (not e!391867))))

(assert (=> d!223401 (= res!279111 (<= 0 0))))

(assert (=> d!223401 (= (apply!1633 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)) 0) lt!275332)))

(declare-fun b!641360 () Bool)

(assert (=> b!641360 (= e!391867 (< 0 (size!5418 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))

(assert (= (and d!223401 res!279111) b!641360))

(assert (=> d!223401 m!912241))

(assert (=> d!223401 m!912871))

(assert (=> d!223401 m!912871))

(declare-fun m!913598 () Bool)

(assert (=> d!223401 m!913598))

(declare-fun m!913600 () Bool)

(assert (=> d!223401 m!913600))

(assert (=> b!641360 m!912241))

(assert (=> b!641360 m!912463))

(assert (=> b!640581 d!223401))

(declare-fun d!223403 () Bool)

(declare-fun e!391870 () Bool)

(assert (=> d!223403 e!391870))

(declare-fun res!279114 () Bool)

(assert (=> d!223403 (=> (not res!279114) (not e!391870))))

(declare-fun isBalanced!616 (Conc!2321) Bool)

(declare-fun tail!907 (Conc!2321) Conc!2321)

(assert (=> d!223403 (= res!279114 (isBalanced!616 (tail!907 (c!117095 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))))

(declare-fun lt!275335 () BalanceConc!4654)

(assert (=> d!223403 (= lt!275335 (BalanceConc!4655 (tail!907 (c!117095 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))))

(declare-fun isEmpty!4706 (BalanceConc!4654) Bool)

(assert (=> d!223403 (not (isEmpty!4706 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))

(assert (=> d!223403 (= (tail!904 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))) lt!275335)))

(declare-fun b!641363 () Bool)

(declare-fun tail!908 (List!6885) List!6885)

(assert (=> b!641363 (= e!391870 (= (list!2913 lt!275335) (tail!908 (list!2913 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))))

(assert (= (and d!223403 res!279114) b!641363))

(declare-fun m!913602 () Bool)

(assert (=> d!223403 m!913602))

(assert (=> d!223403 m!913602))

(declare-fun m!913604 () Bool)

(assert (=> d!223403 m!913604))

(assert (=> d!223403 m!912469))

(declare-fun m!913606 () Bool)

(assert (=> d!223403 m!913606))

(declare-fun m!913608 () Bool)

(assert (=> b!641363 m!913608))

(assert (=> b!641363 m!912469))

(declare-fun m!913610 () Bool)

(assert (=> b!641363 m!913610))

(assert (=> b!641363 m!913610))

(declare-fun m!913612 () Bool)

(assert (=> b!641363 m!913612))

(assert (=> b!640581 d!223403))

(declare-fun d!223405 () Bool)

(declare-fun e!391873 () Bool)

(assert (=> d!223405 e!391873))

(declare-fun res!279117 () Bool)

(assert (=> d!223405 (=> (not res!279117) (not e!391873))))

(declare-fun append!218 (Conc!2320 PrintableTokens!136) Conc!2320)

(assert (=> d!223405 (= res!279117 (isBalanced!612 (append!218 (c!117094 (BalanceConc!4653 Empty!2320)) lt!274866)))))

(declare-fun lt!275338 () BalanceConc!4652)

(assert (=> d!223405 (= lt!275338 (BalanceConc!4653 (append!218 (c!117094 (BalanceConc!4653 Empty!2320)) lt!274866)))))

(assert (=> d!223405 (= (append!216 (BalanceConc!4653 Empty!2320) lt!274866) lt!275338)))

(declare-fun b!641366 () Bool)

(declare-fun $colon+!45 (List!6884 PrintableTokens!136) List!6884)

(assert (=> b!641366 (= e!391873 (= (list!2910 lt!275338) ($colon+!45 (list!2910 (BalanceConc!4653 Empty!2320)) lt!274866)))))

(assert (= (and d!223405 res!279117) b!641366))

(declare-fun m!913614 () Bool)

(assert (=> d!223405 m!913614))

(assert (=> d!223405 m!913614))

(declare-fun m!913616 () Bool)

(assert (=> d!223405 m!913616))

(declare-fun m!913618 () Bool)

(assert (=> b!641366 m!913618))

(assert (=> b!641366 m!912465))

(assert (=> b!641366 m!912465))

(declare-fun m!913620 () Bool)

(assert (=> b!641366 m!913620))

(assert (=> b!640581 d!223405))

(declare-fun bs!78841 () Bool)

(declare-fun b!641370 () Bool)

(assert (= bs!78841 (and b!641370 d!223097)))

(declare-fun lambda!19053 () Int)

(assert (=> bs!78841 (not (= lambda!19053 lambda!18876))))

(declare-fun bs!78842 () Bool)

(assert (= bs!78842 (and b!641370 d!223107)))

(assert (=> bs!78842 (= lambda!19053 lambda!18933)))

(declare-fun bs!78843 () Bool)

(assert (= bs!78843 (and b!641370 b!640581)))

(assert (=> bs!78843 (= lambda!19053 lambda!18932)))

(declare-fun bs!78844 () Bool)

(assert (= bs!78844 (and b!641370 d!223113)))

(assert (=> bs!78844 (= lambda!19053 lambda!18938)))

(declare-fun bs!78845 () Bool)

(assert (= bs!78845 (and b!641370 b!640495)))

(assert (=> bs!78845 (= lambda!19053 lambda!18870)))

(assert (=> bs!78844 (not (= lambda!19053 lambda!18939))))

(declare-fun bs!78846 () Bool)

(declare-fun d!223407 () Bool)

(assert (= bs!78846 (and d!223407 d!223097)))

(declare-fun lambda!19054 () Int)

(assert (=> bs!78846 (not (= lambda!19054 lambda!18876))))

(declare-fun bs!78847 () Bool)

(assert (= bs!78847 (and d!223407 d!223107)))

(assert (=> bs!78847 (= lambda!19054 lambda!18933)))

(declare-fun bs!78848 () Bool)

(assert (= bs!78848 (and d!223407 b!640581)))

(assert (=> bs!78848 (= lambda!19054 lambda!18932)))

(declare-fun bs!78849 () Bool)

(assert (= bs!78849 (and d!223407 b!641370)))

(assert (=> bs!78849 (= lambda!19054 lambda!19053)))

(declare-fun bs!78850 () Bool)

(assert (= bs!78850 (and d!223407 d!223113)))

(assert (=> bs!78850 (= lambda!19054 lambda!18938)))

(declare-fun bs!78851 () Bool)

(assert (= bs!78851 (and d!223407 b!640495)))

(assert (=> bs!78851 (= lambda!19054 lambda!18870)))

(assert (=> bs!78850 (not (= lambda!19054 lambda!18939))))

(declare-fun b!641367 () Bool)

(declare-fun e!391875 () BalanceConc!4652)

(assert (=> b!641367 (= e!391875 (append!216 (BalanceConc!4653 Empty!2320) lt!274866))))

(declare-fun lt!275343 () BalanceConc!4652)

(assert (=> d!223407 (forall!1757 lt!275343 lambda!19054)))

(assert (=> d!223407 (= lt!275343 e!391875)))

(declare-fun c!117230 () Bool)

(assert (=> d!223407 (= c!117230 (>= (size!5418 (tail!904 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))))) 2))))

(assert (=> d!223407 (= (size!5413 printableTokens!2) lt!274711)))

(assert (=> d!223407 (= (slicesMulti!0 printableTokens!2 lt!274711 (tail!904 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))) (append!216 (BalanceConc!4653 Empty!2320) lt!274866)) lt!275343)))

(declare-fun b!641368 () Bool)

(declare-fun e!391874 () PrintableTokens!136)

(declare-fun call!41675 () PrintableTokens!136)

(assert (=> b!641368 (= e!391874 call!41675)))

(declare-fun b!641369 () Bool)

(assert (=> b!641369 (= e!391874 call!41675)))

(declare-fun lt!275342 () PrintableTokens!136)

(assert (=> b!641370 (= e!391875 (slicesMulti!0 printableTokens!2 lt!274711 (tail!904 (tail!904 (tail!904 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))) (append!216 (append!216 (BalanceConc!4653 Empty!2320) lt!274866) lt!275342)))))

(declare-fun lt!275339 () Int)

(assert (=> b!641370 (= lt!275339 (apply!1633 (tail!904 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))) 0))))

(declare-fun lt!275341 () Int)

(assert (=> b!641370 (= lt!275341 (apply!1633 (tail!904 (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))) 1))))

(declare-fun c!117229 () Bool)

(assert (=> b!641370 (= c!117229 (<= lt!275339 lt!275341))))

(assert (=> b!641370 (= lt!275342 e!391874)))

(declare-fun lt!275340 () Unit!11924)

(assert (=> b!641370 (= lt!275340 (lemmaConcatPreservesForall!46 (list!2910 (append!216 (BalanceConc!4653 Empty!2320) lt!274866)) (Cons!6870 lt!275342 Nil!6870) lambda!19053))))

(declare-fun bm!41670 () Bool)

(assert (=> bm!41670 (= call!41675 (slice!40 printableTokens!2 (ite c!117229 lt!275339 lt!275341) (ite c!117229 (+ lt!275341 1) (+ lt!275339 1))))))

(assert (= (and d!223407 c!117230) b!641370))

(assert (= (and d!223407 (not c!117230)) b!641367))

(assert (= (and b!641370 c!117229) b!641368))

(assert (= (and b!641370 (not c!117229)) b!641369))

(assert (= (or b!641368 b!641369) bm!41670))

(declare-fun m!913622 () Bool)

(assert (=> d!223407 m!913622))

(assert (=> d!223407 m!912473))

(declare-fun m!913624 () Bool)

(assert (=> d!223407 m!913624))

(assert (=> d!223407 m!912271))

(declare-fun m!913626 () Bool)

(assert (=> b!641370 m!913626))

(declare-fun m!913628 () Bool)

(assert (=> b!641370 m!913628))

(assert (=> b!641370 m!912473))

(declare-fun m!913630 () Bool)

(assert (=> b!641370 m!913630))

(assert (=> b!641370 m!912473))

(declare-fun m!913632 () Bool)

(assert (=> b!641370 m!913632))

(assert (=> b!641370 m!913630))

(declare-fun m!913634 () Bool)

(assert (=> b!641370 m!913634))

(assert (=> b!641370 m!912473))

(declare-fun m!913636 () Bool)

(assert (=> b!641370 m!913636))

(assert (=> b!641370 m!912477))

(assert (=> b!641370 m!913626))

(assert (=> b!641370 m!912477))

(declare-fun m!913638 () Bool)

(assert (=> b!641370 m!913638))

(assert (=> b!641370 m!913634))

(assert (=> b!641370 m!913638))

(declare-fun m!913640 () Bool)

(assert (=> b!641370 m!913640))

(declare-fun m!913642 () Bool)

(assert (=> bm!41670 m!913642))

(assert (=> b!640581 d!223407))

(declare-fun d!223409 () Bool)

(assert (=> d!223409 (= (list!2910 (BalanceConc!4653 Empty!2320)) (list!2912 (c!117094 (BalanceConc!4653 Empty!2320))))))

(declare-fun bs!78852 () Bool)

(assert (= bs!78852 d!223409))

(declare-fun m!913644 () Bool)

(assert (=> bs!78852 m!913644))

(assert (=> b!640581 d!223409))

(declare-fun d!223411 () Bool)

(declare-fun lt!275344 () Int)

(assert (=> d!223411 (= lt!275344 (apply!1639 (list!2913 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))) 1))))

(assert (=> d!223411 (= lt!275344 (apply!1640 (c!117095 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))) 1))))

(declare-fun e!391876 () Bool)

(assert (=> d!223411 e!391876))

(declare-fun res!279118 () Bool)

(assert (=> d!223411 (=> (not res!279118) (not e!391876))))

(assert (=> d!223411 (= res!279118 (<= 0 1))))

(assert (=> d!223411 (= (apply!1633 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)) 1) lt!275344)))

(declare-fun b!641371 () Bool)

(assert (=> b!641371 (= e!391876 (< 1 (size!5418 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321)))))))

(assert (= (and d!223411 res!279118) b!641371))

(assert (=> d!223411 m!912241))

(assert (=> d!223411 m!912871))

(assert (=> d!223411 m!912871))

(declare-fun m!913646 () Bool)

(assert (=> d!223411 m!913646))

(declare-fun m!913648 () Bool)

(assert (=> d!223411 m!913648))

(assert (=> b!641371 m!912241))

(assert (=> b!641371 m!912463))

(assert (=> b!640581 d!223411))

(declare-fun d!223413 () Bool)

(declare-fun e!391877 () Bool)

(assert (=> d!223413 e!391877))

(declare-fun res!279119 () Bool)

(assert (=> d!223413 (=> (not res!279119) (not e!391877))))

(assert (=> d!223413 (= res!279119 (isBalanced!616 (tail!907 (c!117095 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))))))))

(declare-fun lt!275345 () BalanceConc!4654)

(assert (=> d!223413 (= lt!275345 (BalanceConc!4655 (tail!907 (c!117095 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))))))))

(assert (=> d!223413 (not (isEmpty!4706 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))))))

(assert (=> d!223413 (= (tail!904 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))) lt!275345)))

(declare-fun b!641372 () Bool)

(assert (=> b!641372 (= e!391877 (= (list!2913 lt!275345) (tail!908 (list!2913 (indicesOfOpenBraces!0 (tokens!1209 printableTokens!2) lt!274711 0 (BalanceConc!4655 Empty!2321))))))))

(assert (= (and d!223413 res!279119) b!641372))

(declare-fun m!913650 () Bool)

(assert (=> d!223413 m!913650))

(assert (=> d!223413 m!913650))

(declare-fun m!913652 () Bool)

(assert (=> d!223413 m!913652))

(assert (=> d!223413 m!912241))

(declare-fun m!913654 () Bool)

(assert (=> d!223413 m!913654))

(declare-fun m!913656 () Bool)

(assert (=> b!641372 m!913656))

(assert (=> b!641372 m!912241))

(assert (=> b!641372 m!912871))

(assert (=> b!641372 m!912871))

(declare-fun m!913658 () Bool)

(assert (=> b!641372 m!913658))

(assert (=> b!640581 d!223413))

(declare-fun d!223415 () Bool)

(assert (=> d!223415 (forall!1758 (++!1845 (list!2910 (BalanceConc!4653 Empty!2320)) (Cons!6870 lt!274866 Nil!6870)) lambda!18932)))

(declare-fun lt!275348 () Unit!11924)

(declare-fun choose!4639 (List!6884 List!6884 Int) Unit!11924)

(assert (=> d!223415 (= lt!275348 (choose!4639 (list!2910 (BalanceConc!4653 Empty!2320)) (Cons!6870 lt!274866 Nil!6870) lambda!18932))))

(assert (=> d!223415 (forall!1758 (list!2910 (BalanceConc!4653 Empty!2320)) lambda!18932)))

(assert (=> d!223415 (= (lemmaConcatPreservesForall!46 (list!2910 (BalanceConc!4653 Empty!2320)) (Cons!6870 lt!274866 Nil!6870) lambda!18932) lt!275348)))

(declare-fun bs!78853 () Bool)

(assert (= bs!78853 d!223415))

(assert (=> bs!78853 m!912465))

(declare-fun m!913660 () Bool)

(assert (=> bs!78853 m!913660))

(assert (=> bs!78853 m!913660))

(declare-fun m!913662 () Bool)

(assert (=> bs!78853 m!913662))

(assert (=> bs!78853 m!912465))

(declare-fun m!913664 () Bool)

(assert (=> bs!78853 m!913664))

(assert (=> bs!78853 m!912465))

(declare-fun m!913666 () Bool)

(assert (=> bs!78853 m!913666))

(assert (=> b!640581 d!223415))

(declare-fun d!223417 () Bool)

(declare-fun res!279120 () Bool)

(declare-fun e!391878 () Bool)

(assert (=> d!223417 (=> res!279120 e!391878)))

(assert (=> d!223417 (= res!279120 ((_ is Nil!6869) (map!1503 lt!274707 lambda!18867)))))

(assert (=> d!223417 (= (forall!1760 (map!1503 lt!274707 lambda!18867) lambda!18868) e!391878)))

(declare-fun b!641373 () Bool)

(declare-fun e!391879 () Bool)

(assert (=> b!641373 (= e!391878 e!391879)))

(declare-fun res!279121 () Bool)

(assert (=> b!641373 (=> (not res!279121) (not e!391879))))

(assert (=> b!641373 (= res!279121 (dynLambda!3752 lambda!18868 (h!12270 (map!1503 lt!274707 lambda!18867))))))

(declare-fun b!641374 () Bool)

(assert (=> b!641374 (= e!391879 (forall!1760 (t!84893 (map!1503 lt!274707 lambda!18867)) lambda!18868))))

(assert (= (and d!223417 (not res!279120)) b!641373))

(assert (= (and b!641373 res!279121) b!641374))

(declare-fun b_lambda!25287 () Bool)

(assert (=> (not b_lambda!25287) (not b!641373)))

(declare-fun m!913668 () Bool)

(assert (=> b!641373 m!913668))

(declare-fun m!913670 () Bool)

(assert (=> b!641374 m!913670))

(assert (=> d!223097 d!223417))

(declare-fun d!223419 () Bool)

(declare-fun lt!275351 () List!6883)

(assert (=> d!223419 (= (size!5416 lt!275351) (size!5425 lt!274707))))

(declare-fun e!391882 () List!6883)

(assert (=> d!223419 (= lt!275351 e!391882)))

(declare-fun c!117233 () Bool)

(assert (=> d!223419 (= c!117233 ((_ is Nil!6870) lt!274707))))

(assert (=> d!223419 (= (map!1503 lt!274707 lambda!18867) lt!275351)))

(declare-fun b!641379 () Bool)

(assert (=> b!641379 (= e!391882 Nil!6869)))

(declare-fun b!641380 () Bool)

(declare-fun $colon$colon!53 (List!6883 tuple2!7434) List!6883)

(declare-fun dynLambda!3759 (Int PrintableTokens!136) tuple2!7434)

(assert (=> b!641380 (= e!391882 ($colon$colon!53 (map!1503 (t!84894 lt!274707) lambda!18867) (dynLambda!3759 lambda!18867 (h!12271 lt!274707))))))

(assert (= (and d!223419 c!117233) b!641379))

(assert (= (and d!223419 (not c!117233)) b!641380))

(declare-fun b_lambda!25289 () Bool)

(assert (=> (not b_lambda!25289) (not b!641380)))

(declare-fun m!913672 () Bool)

(assert (=> d!223419 m!913672))

(declare-fun m!913674 () Bool)

(assert (=> d!223419 m!913674))

(declare-fun m!913676 () Bool)

(assert (=> b!641380 m!913676))

(declare-fun m!913678 () Bool)

(assert (=> b!641380 m!913678))

(assert (=> b!641380 m!913676))

(assert (=> b!641380 m!913678))

(declare-fun m!913680 () Bool)

(assert (=> b!641380 m!913680))

(assert (=> d!223097 d!223419))

(declare-fun d!223421 () Bool)

(assert (=> d!223421 (forall!1760 (map!1503 lt!274707 lambda!18867) lambda!18868)))

(assert (=> d!223421 true))

(declare-fun _$5!145 () Unit!11924)

(assert (=> d!223421 (= (choose!4633 lt!274707 lambda!18867 lambda!18868) _$5!145)))

(declare-fun bs!78854 () Bool)

(assert (= bs!78854 d!223421))

(assert (=> bs!78854 m!912301))

(assert (=> bs!78854 m!912301))

(assert (=> bs!78854 m!912303))

(assert (=> d!223097 d!223421))

(declare-fun d!223423 () Bool)

(declare-fun res!279122 () Bool)

(declare-fun e!391883 () Bool)

(assert (=> d!223423 (=> res!279122 e!391883)))

(assert (=> d!223423 (= res!279122 ((_ is Nil!6870) lt!274707))))

(assert (=> d!223423 (= (forall!1758 lt!274707 lambda!18876) e!391883)))

(declare-fun b!641381 () Bool)

(declare-fun e!391884 () Bool)

(assert (=> b!641381 (= e!391883 e!391884)))

(declare-fun res!279123 () Bool)

(assert (=> b!641381 (=> (not res!279123) (not e!391884))))

(assert (=> b!641381 (= res!279123 (dynLambda!3753 lambda!18876 (h!12271 lt!274707)))))

(declare-fun b!641382 () Bool)

(assert (=> b!641382 (= e!391884 (forall!1758 (t!84894 lt!274707) lambda!18876))))

(assert (= (and d!223423 (not res!279122)) b!641381))

(assert (= (and b!641381 res!279123) b!641382))

(declare-fun b_lambda!25291 () Bool)

(assert (=> (not b_lambda!25291) (not b!641381)))

(declare-fun m!913682 () Bool)

(assert (=> b!641381 m!913682))

(declare-fun m!913684 () Bool)

(assert (=> b!641382 m!913684))

(assert (=> d!223097 d!223423))

(declare-fun bs!78855 () Bool)

(declare-fun d!223425 () Bool)

(assert (= bs!78855 (and d!223425 d!223165)))

(declare-fun lambda!19055 () Int)

(assert (=> bs!78855 (= lambda!19055 lambda!18955)))

(declare-fun bs!78856 () Bool)

(assert (= bs!78856 (and d!223425 d!223355)))

(assert (=> bs!78856 (= lambda!19055 lambda!19048)))

(declare-fun bs!78857 () Bool)

(assert (= bs!78857 (and d!223425 d!223189)))

(assert (=> bs!78857 (= lambda!19055 lambda!18974)))

(declare-fun bs!78858 () Bool)

(assert (= bs!78858 (and d!223425 d!223221)))

(assert (=> bs!78858 (= lambda!19055 lambda!18982)))

(declare-fun bs!78859 () Bool)

(assert (= bs!78859 (and d!223425 d!223207)))

(assert (=> bs!78859 (= lambda!19055 lambda!18977)))

(declare-fun bs!78860 () Bool)

(assert (= bs!78860 (and d!223425 d!223201)))

(assert (=> bs!78860 (= lambda!19055 lambda!18976)))

(declare-fun bs!78861 () Bool)

(assert (= bs!78861 (and d!223425 d!223399)))

(assert (=> bs!78861 (= lambda!19055 lambda!19052)))

(declare-fun bs!78862 () Bool)

(assert (= bs!78862 (and d!223425 d!223181)))

(assert (=> bs!78862 (= lambda!19055 lambda!18973)))

(declare-fun bs!78863 () Bool)

(assert (= bs!78863 (and d!223425 d!223211)))

(assert (=> bs!78863 (= lambda!19055 lambda!18981)))

(declare-fun bs!78864 () Bool)

(assert (= bs!78864 (and d!223425 d!223159)))

(assert (=> bs!78864 (= lambda!19055 lambda!18954)))

(declare-fun bs!78865 () Bool)

(assert (= bs!78865 (and d!223425 d!223195)))

(assert (=> bs!78865 (= lambda!19055 lambda!18975)))

(declare-fun bs!78866 () Bool)

(assert (= bs!78866 (and d!223425 d!223223)))

(assert (=> bs!78866 (= lambda!19055 lambda!18983)))

(declare-fun bs!78867 () Bool)

(assert (= bs!78867 (and d!223425 d!223365)))

(assert (=> bs!78867 (= lambda!19055 lambda!19051)))

(declare-fun bs!78868 () Bool)

(assert (= bs!78868 (and d!223425 d!223271)))

(assert (=> bs!78868 (= lambda!19055 lambda!19037)))

(declare-fun bs!78869 () Bool)

(assert (= bs!78869 (and d!223425 d!223169)))

(assert (=> bs!78869 (= lambda!19055 lambda!18959)))

(declare-fun bs!78870 () Bool)

(assert (= bs!78870 (and d!223425 d!223361)))

(assert (=> bs!78870 (= lambda!19055 lambda!19050)))

(declare-fun bs!78871 () Bool)

(assert (= bs!78871 (and d!223425 d!223359)))

(assert (=> bs!78871 (= lambda!19055 lambda!19049)))

(assert (=> d!223425 (= (inv!8707 (_2!4050 (_1!4051 (h!12269 mapDefault!2633)))) (forall!1763 (exprs!699 (_2!4050 (_1!4051 (h!12269 mapDefault!2633)))) lambda!19055))))

(declare-fun bs!78872 () Bool)

(assert (= bs!78872 d!223425))

(declare-fun m!913686 () Bool)

(assert (=> bs!78872 m!913686))

(assert (=> b!640710 d!223425))

(declare-fun d!223427 () Bool)

(assert (=> d!223427 (dynLambda!3752 lambda!18925 lt!274827)))

(declare-fun lt!275352 () Unit!11924)

(assert (=> d!223427 (= lt!275352 (choose!4634 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925 lt!274827))))

(declare-fun e!391885 () Bool)

(assert (=> d!223427 e!391885))

(declare-fun res!279124 () Bool)

(assert (=> d!223427 (=> (not res!279124) (not e!391885))))

(assert (=> d!223427 (= res!279124 (forall!1760 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925))))

(assert (=> d!223427 (= (forallContained!463 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18925 lt!274827) lt!275352)))

(declare-fun b!641383 () Bool)

(assert (=> b!641383 (= e!391885 (contains!1536 (list!2909 (map!1501 lt!274709 lambda!18867)) lt!274827))))

(assert (= (and d!223427 res!279124) b!641383))

(declare-fun b_lambda!25293 () Bool)

(assert (=> (not b_lambda!25293) (not d!223427)))

(assert (=> d!223427 m!912825))

(assert (=> d!223427 m!912353))

(declare-fun m!913688 () Bool)

(assert (=> d!223427 m!913688))

(assert (=> d!223427 m!912353))

(assert (=> d!223427 m!913394))

(assert (=> b!641383 m!912353))

(declare-fun m!913690 () Bool)

(assert (=> b!641383 m!913690))

(assert (=> b!640546 d!223427))

(assert (=> b!640546 d!223325))

(declare-fun d!223429 () Bool)

(assert (=> d!223429 (= (list!2909 lt!274894) (list!2911 (c!117093 lt!274894)))))

(declare-fun bs!78873 () Bool)

(assert (= bs!78873 d!223429))

(declare-fun m!913692 () Bool)

(assert (=> bs!78873 m!913692))

(assert (=> d!223119 d!223429))

(declare-fun d!223431 () Bool)

(declare-fun lt!275353 () List!6883)

(assert (=> d!223431 (= (size!5416 lt!275353) (size!5425 (list!2910 lt!274709)))))

(declare-fun e!391886 () List!6883)

(assert (=> d!223431 (= lt!275353 e!391886)))

(declare-fun c!117234 () Bool)

(assert (=> d!223431 (= c!117234 ((_ is Nil!6870) (list!2910 lt!274709)))))

(assert (=> d!223431 (= (map!1503 (list!2910 lt!274709) lambda!18867) lt!275353)))

(declare-fun b!641384 () Bool)

(assert (=> b!641384 (= e!391886 Nil!6869)))

(declare-fun b!641385 () Bool)

(assert (=> b!641385 (= e!391886 ($colon$colon!53 (map!1503 (t!84894 (list!2910 lt!274709)) lambda!18867) (dynLambda!3759 lambda!18867 (h!12271 (list!2910 lt!274709)))))))

(assert (= (and d!223431 c!117234) b!641384))

(assert (= (and d!223431 (not c!117234)) b!641385))

(declare-fun b_lambda!25295 () Bool)

(assert (=> (not b_lambda!25295) (not b!641385)))

(declare-fun m!913694 () Bool)

(assert (=> d!223431 m!913694))

(assert (=> d!223431 m!912229))

(declare-fun m!913696 () Bool)

(assert (=> d!223431 m!913696))

(declare-fun m!913698 () Bool)

(assert (=> b!641385 m!913698))

(declare-fun m!913700 () Bool)

(assert (=> b!641385 m!913700))

(assert (=> b!641385 m!913698))

(assert (=> b!641385 m!913700))

(declare-fun m!913702 () Bool)

(assert (=> b!641385 m!913702))

(assert (=> d!223119 d!223431))

(assert (=> d!223119 d!223115))

(assert (=> d!223119 d!223397))

(assert (=> d!223129 d!223137))

(declare-fun bs!78874 () Bool)

(declare-fun d!223433 () Bool)

(assert (= bs!78874 (and d!223433 d!223097)))

(declare-fun lambda!19056 () Int)

(assert (=> bs!78874 (not (= lambda!19056 lambda!18876))))

(declare-fun bs!78875 () Bool)

(assert (= bs!78875 (and d!223433 d!223107)))

(assert (=> bs!78875 (= lambda!19056 lambda!18933)))

(declare-fun bs!78876 () Bool)

(assert (= bs!78876 (and d!223433 b!640581)))

(assert (=> bs!78876 (= lambda!19056 lambda!18932)))

(declare-fun bs!78877 () Bool)

(assert (= bs!78877 (and d!223433 b!641370)))

(assert (=> bs!78877 (= lambda!19056 lambda!19053)))

(declare-fun bs!78878 () Bool)

(assert (= bs!78878 (and d!223433 d!223113)))

(assert (=> bs!78878 (= lambda!19056 lambda!18938)))

(declare-fun bs!78879 () Bool)

(assert (= bs!78879 (and d!223433 d!223407)))

(assert (=> bs!78879 (= lambda!19056 lambda!19054)))

(declare-fun bs!78880 () Bool)

(assert (= bs!78880 (and d!223433 b!640495)))

(assert (=> bs!78880 (= lambda!19056 lambda!18870)))

(assert (=> bs!78878 (not (= lambda!19056 lambda!18939))))

(declare-fun lambda!19057 () Int)

(assert (=> bs!78874 (not (= lambda!19057 lambda!18876))))

(assert (=> bs!78875 (not (= lambda!19057 lambda!18933))))

(assert (=> bs!78877 (not (= lambda!19057 lambda!19053))))

(assert (=> bs!78878 (not (= lambda!19057 lambda!18938))))

(assert (=> bs!78879 (not (= lambda!19057 lambda!19054))))

(assert (=> bs!78880 (not (= lambda!19057 lambda!18870))))

(assert (=> bs!78878 (= lambda!19057 lambda!18939)))

(assert (=> bs!78876 (not (= lambda!19057 lambda!18932))))

(assert (=> d!223433 (not (= lambda!19057 lambda!19056))))

(assert (=> d!223433 (forall!1758 (t!84894 lt!274707) lambda!19057)))

(declare-fun lt!275354 () Unit!11924)

(declare-fun e!391887 () Unit!11924)

(assert (=> d!223433 (= lt!275354 e!391887)))

(declare-fun c!117235 () Bool)

(assert (=> d!223433 (= c!117235 ((_ is Nil!6870) (t!84894 lt!274707)))))

(assert (=> d!223433 (forall!1758 (t!84894 lt!274707) lambda!19056)))

(assert (=> d!223433 (= (lemmaAddIdsPreservesRules!0 (t!84894 lt!274707)) lt!275354)))

(declare-fun b!641386 () Bool)

(declare-fun Unit!11959 () Unit!11924)

(assert (=> b!641386 (= e!391887 Unit!11959)))

(declare-fun b!641387 () Bool)

(declare-fun Unit!11960 () Unit!11924)

(assert (=> b!641387 (= e!391887 Unit!11960)))

(declare-fun lt!275355 () Unit!11924)

(assert (=> b!641387 (= lt!275355 (lemmaAddIdsPreservesRules!0 (t!84894 (t!84894 lt!274707))))))

(assert (= (and d!223433 c!117235) b!641386))

(assert (= (and d!223433 (not c!117235)) b!641387))

(declare-fun m!913704 () Bool)

(assert (=> d!223433 m!913704))

(declare-fun m!913706 () Bool)

(assert (=> d!223433 m!913706))

(declare-fun m!913708 () Bool)

(assert (=> b!641387 m!913708))

(assert (=> b!640599 d!223433))

(declare-fun bs!78881 () Bool)

(declare-fun d!223435 () Bool)

(assert (= bs!78881 (and d!223435 d!223425)))

(declare-fun lambda!19058 () Int)

(assert (=> bs!78881 (= lambda!19058 lambda!19055)))

(declare-fun bs!78882 () Bool)

(assert (= bs!78882 (and d!223435 d!223165)))

(assert (=> bs!78882 (= lambda!19058 lambda!18955)))

(declare-fun bs!78883 () Bool)

(assert (= bs!78883 (and d!223435 d!223355)))

(assert (=> bs!78883 (= lambda!19058 lambda!19048)))

(declare-fun bs!78884 () Bool)

(assert (= bs!78884 (and d!223435 d!223189)))

(assert (=> bs!78884 (= lambda!19058 lambda!18974)))

(declare-fun bs!78885 () Bool)

(assert (= bs!78885 (and d!223435 d!223221)))

(assert (=> bs!78885 (= lambda!19058 lambda!18982)))

(declare-fun bs!78886 () Bool)

(assert (= bs!78886 (and d!223435 d!223207)))

(assert (=> bs!78886 (= lambda!19058 lambda!18977)))

(declare-fun bs!78887 () Bool)

(assert (= bs!78887 (and d!223435 d!223201)))

(assert (=> bs!78887 (= lambda!19058 lambda!18976)))

(declare-fun bs!78888 () Bool)

(assert (= bs!78888 (and d!223435 d!223399)))

(assert (=> bs!78888 (= lambda!19058 lambda!19052)))

(declare-fun bs!78889 () Bool)

(assert (= bs!78889 (and d!223435 d!223181)))

(assert (=> bs!78889 (= lambda!19058 lambda!18973)))

(declare-fun bs!78890 () Bool)

(assert (= bs!78890 (and d!223435 d!223211)))

(assert (=> bs!78890 (= lambda!19058 lambda!18981)))

(declare-fun bs!78891 () Bool)

(assert (= bs!78891 (and d!223435 d!223159)))

(assert (=> bs!78891 (= lambda!19058 lambda!18954)))

(declare-fun bs!78892 () Bool)

(assert (= bs!78892 (and d!223435 d!223195)))

(assert (=> bs!78892 (= lambda!19058 lambda!18975)))

(declare-fun bs!78893 () Bool)

(assert (= bs!78893 (and d!223435 d!223223)))

(assert (=> bs!78893 (= lambda!19058 lambda!18983)))

(declare-fun bs!78894 () Bool)

(assert (= bs!78894 (and d!223435 d!223365)))

(assert (=> bs!78894 (= lambda!19058 lambda!19051)))

(declare-fun bs!78895 () Bool)

(assert (= bs!78895 (and d!223435 d!223271)))

(assert (=> bs!78895 (= lambda!19058 lambda!19037)))

(declare-fun bs!78896 () Bool)

(assert (= bs!78896 (and d!223435 d!223169)))

(assert (=> bs!78896 (= lambda!19058 lambda!18959)))

(declare-fun bs!78897 () Bool)

(assert (= bs!78897 (and d!223435 d!223361)))

(assert (=> bs!78897 (= lambda!19058 lambda!19050)))

(declare-fun bs!78898 () Bool)

(assert (= bs!78898 (and d!223435 d!223359)))

(assert (=> bs!78898 (= lambda!19058 lambda!19049)))

(assert (=> d!223435 (= (inv!8707 setElem!2956) (forall!1763 (exprs!699 setElem!2956) lambda!19058))))

(declare-fun bs!78899 () Bool)

(assert (= bs!78899 d!223435))

(declare-fun m!913710 () Bool)

(assert (=> bs!78899 m!913710))

(assert (=> setNonEmpty!2956 d!223435))

(declare-fun bs!78900 () Bool)

(declare-fun d!223437 () Bool)

(assert (= bs!78900 (and d!223437 d!223425)))

(declare-fun lambda!19059 () Int)

(assert (=> bs!78900 (= lambda!19059 lambda!19055)))

(declare-fun bs!78901 () Bool)

(assert (= bs!78901 (and d!223437 d!223165)))

(assert (=> bs!78901 (= lambda!19059 lambda!18955)))

(declare-fun bs!78902 () Bool)

(assert (= bs!78902 (and d!223437 d!223355)))

(assert (=> bs!78902 (= lambda!19059 lambda!19048)))

(declare-fun bs!78903 () Bool)

(assert (= bs!78903 (and d!223437 d!223189)))

(assert (=> bs!78903 (= lambda!19059 lambda!18974)))

(declare-fun bs!78904 () Bool)

(assert (= bs!78904 (and d!223437 d!223221)))

(assert (=> bs!78904 (= lambda!19059 lambda!18982)))

(declare-fun bs!78905 () Bool)

(assert (= bs!78905 (and d!223437 d!223207)))

(assert (=> bs!78905 (= lambda!19059 lambda!18977)))

(declare-fun bs!78906 () Bool)

(assert (= bs!78906 (and d!223437 d!223201)))

(assert (=> bs!78906 (= lambda!19059 lambda!18976)))

(declare-fun bs!78907 () Bool)

(assert (= bs!78907 (and d!223437 d!223181)))

(assert (=> bs!78907 (= lambda!19059 lambda!18973)))

(declare-fun bs!78908 () Bool)

(assert (= bs!78908 (and d!223437 d!223211)))

(assert (=> bs!78908 (= lambda!19059 lambda!18981)))

(declare-fun bs!78909 () Bool)

(assert (= bs!78909 (and d!223437 d!223159)))

(assert (=> bs!78909 (= lambda!19059 lambda!18954)))

(declare-fun bs!78910 () Bool)

(assert (= bs!78910 (and d!223437 d!223195)))

(assert (=> bs!78910 (= lambda!19059 lambda!18975)))

(declare-fun bs!78911 () Bool)

(assert (= bs!78911 (and d!223437 d!223223)))

(assert (=> bs!78911 (= lambda!19059 lambda!18983)))

(declare-fun bs!78912 () Bool)

(assert (= bs!78912 (and d!223437 d!223365)))

(assert (=> bs!78912 (= lambda!19059 lambda!19051)))

(declare-fun bs!78913 () Bool)

(assert (= bs!78913 (and d!223437 d!223271)))

(assert (=> bs!78913 (= lambda!19059 lambda!19037)))

(declare-fun bs!78914 () Bool)

(assert (= bs!78914 (and d!223437 d!223169)))

(assert (=> bs!78914 (= lambda!19059 lambda!18959)))

(declare-fun bs!78915 () Bool)

(assert (= bs!78915 (and d!223437 d!223361)))

(assert (=> bs!78915 (= lambda!19059 lambda!19050)))

(declare-fun bs!78916 () Bool)

(assert (= bs!78916 (and d!223437 d!223359)))

(assert (=> bs!78916 (= lambda!19059 lambda!19049)))

(declare-fun bs!78917 () Bool)

(assert (= bs!78917 (and d!223437 d!223435)))

(assert (=> bs!78917 (= lambda!19059 lambda!19058)))

(declare-fun bs!78918 () Bool)

(assert (= bs!78918 (and d!223437 d!223399)))

(assert (=> bs!78918 (= lambda!19059 lambda!19052)))

(assert (=> d!223437 (= (inv!8707 (_2!4050 (_1!4051 (h!12269 mapValue!2633)))) (forall!1763 (exprs!699 (_2!4050 (_1!4051 (h!12269 mapValue!2633)))) lambda!19059))))

(declare-fun bs!78919 () Bool)

(assert (= bs!78919 d!223437))

(declare-fun m!913712 () Bool)

(assert (=> bs!78919 m!913712))

(assert (=> b!640711 d!223437))

(declare-fun d!223439 () Bool)

(assert (=> d!223439 (= (isEmpty!4699 (rules!8210 printableTokens!2)) ((_ is Nil!6865) (rules!8210 printableTokens!2)))))

(assert (=> d!223141 d!223439))

(assert (=> d!223101 d!223137))

(assert (=> d!223101 d!223231))

(assert (=> d!223101 d!223239))

(declare-fun d!223441 () Bool)

(assert (=> d!223441 (= (isEmpty!4700 (_1!4052 lt!274735)) (not ((_ is Some!1660) (_1!4052 lt!274735))))))

(assert (=> d!223101 d!223441))

(declare-fun d!223443 () Bool)

(assert (=> d!223443 (= (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005B)) (dynLambda!3758 (toValue!2319 (injection!9 KeywordValueInjection!43)) (singletonSeq!437 #x005B)))))

(declare-fun b_lambda!25297 () Bool)

(assert (=> (not b_lambda!25297) (not d!223443)))

(declare-fun bs!78920 () Bool)

(assert (= bs!78920 d!223443))

(assert (=> bs!78920 m!912315))

(declare-fun m!913714 () Bool)

(assert (=> bs!78920 m!913714))

(assert (=> d!223101 d!223443))

(assert (=> d!223101 d!223371))

(declare-fun bs!78921 () Bool)

(declare-fun d!223445 () Bool)

(assert (= bs!78921 (and d!223445 d!223175)))

(declare-fun lambda!19060 () Int)

(assert (=> bs!78921 (= (= (rules!109 JsonLexer!197) (rules!8210 printableTokens!2)) (= lambda!19060 lambda!18972))))

(declare-fun bs!78922 () Bool)

(assert (= bs!78922 (and d!223445 d!223229)))

(assert (=> bs!78922 (= lambda!19060 lambda!18986)))

(declare-fun b!641392 () Bool)

(declare-fun e!391891 () Bool)

(assert (=> b!641392 (= e!391891 true)))

(declare-fun b!641391 () Bool)

(declare-fun e!391890 () Bool)

(assert (=> b!641391 (= e!391890 e!391891)))

(declare-fun b!641390 () Bool)

(declare-fun e!391889 () Bool)

(assert (=> b!641390 (= e!391889 e!391890)))

(assert (=> d!223445 e!391889))

(assert (= b!641391 b!641392))

(assert (= b!641390 b!641391))

(assert (= (and d!223445 ((_ is Cons!6865) (rules!109 JsonLexer!197))) b!641390))

(assert (=> b!641392 (< (dynLambda!3755 order!5173 (toValue!2319 (transformation!1378 (h!12266 (rules!109 JsonLexer!197))))) (dynLambda!3756 order!5175 lambda!19060))))

(assert (=> b!641392 (< (dynLambda!3757 order!5177 (toChars!2178 (transformation!1378 (h!12266 (rules!109 JsonLexer!197))))) (dynLambda!3756 order!5175 lambda!19060))))

(assert (=> d!223445 true))

(declare-fun lt!275357 () tuple3!570)

(assert (=> d!223445 (= (_1!4054 lt!275357) (forall!1766 lt!274733 lambda!19060))))

(declare-fun e!391888 () tuple3!570)

(assert (=> d!223445 (= lt!275357 e!391888)))

(declare-fun c!117237 () Bool)

(assert (=> d!223445 (= c!117237 (isEmpty!4703 lt!274733))))

(assert (=> d!223445 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223445 (= (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) lt!274733 (_2!4052 lt!274708) (_3!335 lt!274708)) lt!275357)))

(declare-fun b!641388 () Bool)

(assert (=> b!641388 (= e!391888 (tuple3!571 true (_2!4052 lt!274708) (_3!335 lt!274708)))))

(declare-fun b!641389 () Bool)

(declare-fun lt!275356 () tuple3!570)

(declare-fun lt!275358 () tuple3!570)

(assert (=> b!641389 (= e!391888 (tuple3!571 (and (_1!4054 lt!275356) (_1!4054 lt!275358)) (_2!4054 lt!275358) (_3!336 lt!275358)))))

(assert (=> b!641389 (= lt!275356 (rulesProduceIndividualTokenMem!4 Lexer!1254 (rules!109 JsonLexer!197) (head!1350 lt!274733) (_2!4052 lt!274708) (_3!335 lt!274708)))))

(assert (=> b!641389 (= lt!275358 (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) (tail!906 lt!274733) (_2!4054 lt!275356) (_3!336 lt!275356)))))

(assert (= (and d!223445 c!117237) b!641388))

(assert (= (and d!223445 (not c!117237)) b!641389))

(declare-fun m!913716 () Bool)

(assert (=> d!223445 m!913716))

(declare-fun m!913718 () Bool)

(assert (=> d!223445 m!913718))

(assert (=> d!223445 m!912257))

(assert (=> d!223445 m!912325))

(declare-fun m!913720 () Bool)

(assert (=> b!641389 m!913720))

(assert (=> b!641389 m!912257))

(assert (=> b!641389 m!913720))

(declare-fun m!913722 () Bool)

(assert (=> b!641389 m!913722))

(declare-fun m!913724 () Bool)

(assert (=> b!641389 m!913724))

(assert (=> b!641389 m!912257))

(assert (=> b!641389 m!913724))

(declare-fun m!913726 () Bool)

(assert (=> b!641389 m!913726))

(assert (=> d!223101 d!223445))

(declare-fun d!223447 () Bool)

(declare-fun e!391892 () Bool)

(assert (=> d!223447 e!391892))

(declare-fun res!279125 () Bool)

(assert (=> d!223447 (=> (not res!279125) (not e!391892))))

(declare-fun lt!275359 () BalanceConc!4646)

(assert (=> d!223447 (= res!279125 (= (list!2916 lt!275359) (Cons!6863 #x005B Nil!6863)))))

(assert (=> d!223447 (= lt!275359 (singleton!212 #x005B))))

(assert (=> d!223447 (= (singletonSeq!437 #x005B) lt!275359)))

(declare-fun b!641393 () Bool)

(assert (=> b!641393 (= e!391892 (isBalanced!615 (c!117091 lt!275359)))))

(assert (= (and d!223447 res!279125) b!641393))

(declare-fun bs!78923 () Bool)

(declare-fun s!24169 () Bool)

(assert (= bs!78923 (and neg-inst!304 s!24169)))

(declare-fun res!279126 () Bool)

(declare-fun e!391893 () Bool)

(assert (=> bs!78923 (=> res!279126 e!391893)))

(assert (=> bs!78923 (= res!279126 (not (= (list!2916 lt!275359) (list!2916 x!140376))))))

(assert (=> bs!78923 (=> true e!391893)))

(declare-fun b!641394 () Bool)

(assert (=> b!641394 (= e!391893 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!78923 (not res!279126)) b!641394))

(declare-fun bs!78924 () Bool)

(declare-fun m!913728 () Bool)

(assert (= bs!78924 (and m!913728 m!912998 m!912990)))

(assert (=> bs!78924 m!913728))

(assert (=> bs!78924 m!912990))

(assert (=> bs!78924 s!24169))

(declare-fun bs!78925 () Bool)

(declare-fun s!24171 () Bool)

(assert (= bs!78925 (and neg-inst!304 s!24171)))

(declare-fun res!279127 () Bool)

(declare-fun e!391894 () Bool)

(assert (=> bs!78925 (=> res!279127 e!391894)))

(assert (=> bs!78925 (= res!279127 (not (= (list!2916 lt!275359) (list!2916 x!140375))))))

(assert (=> bs!78925 (=> true e!391894)))

(declare-fun b!641395 () Bool)

(assert (=> b!641395 (= e!391894 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!78925 (not res!279127)) b!641395))

(declare-fun bs!78926 () Bool)

(assert (= bs!78926 (and m!913728 m!912996 m!912988)))

(assert (=> bs!78926 m!913728))

(assert (=> bs!78926 m!912988))

(assert (=> bs!78926 s!24171))

(declare-fun bs!78927 () Bool)

(declare-fun s!24173 () Bool)

(assert (= bs!78927 (and neg-inst!304 s!24173)))

(declare-fun res!279128 () Bool)

(declare-fun e!391895 () Bool)

(assert (=> bs!78927 (=> res!279128 e!391895)))

(assert (=> bs!78927 (= res!279128 (not (= (list!2916 lt!275359) (list!2916 lt!275359))))))

(assert (=> bs!78927 (=> true e!391895)))

(declare-fun b!641396 () Bool)

(assert (=> b!641396 (= e!391895 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78927 (not res!279128)) b!641396))

(assert (=> m!913728 s!24173))

(declare-fun bs!78928 () Bool)

(declare-fun s!24175 () Bool)

(assert (= bs!78928 (and neg-inst!304 s!24175)))

(declare-fun res!279129 () Bool)

(declare-fun e!391896 () Bool)

(assert (=> bs!78928 (=> res!279129 e!391896)))

(assert (=> bs!78928 (= res!279129 (not (= (list!2916 lt!275359) (list!2916 x!140421))))))

(assert (=> bs!78928 (=> true e!391896)))

(declare-fun b!641397 () Bool)

(assert (=> b!641397 (= e!391896 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!78928 (not res!279129)) b!641397))

(declare-fun bs!78929 () Bool)

(assert (= bs!78929 (and m!913728 m!913028)))

(assert (=> bs!78929 m!913728))

(assert (=> bs!78929 m!913028))

(assert (=> bs!78929 s!24175))

(declare-fun bs!78930 () Bool)

(declare-fun s!24177 () Bool)

(assert (= bs!78930 (and neg-inst!304 s!24177)))

(declare-fun res!279130 () Bool)

(declare-fun e!391897 () Bool)

(assert (=> bs!78930 (=> res!279130 e!391897)))

(assert (=> bs!78930 (= res!279130 (not (= (list!2916 lt!275359) (list!2916 lt!275166))))))

(assert (=> bs!78930 (=> true e!391897)))

(declare-fun b!641398 () Bool)

(assert (=> b!641398 (= e!391897 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!78930 (not res!279130)) b!641398))

(declare-fun bs!78931 () Bool)

(assert (= bs!78931 (and m!913728 m!912970)))

(assert (=> bs!78931 m!913728))

(assert (=> bs!78931 m!912970))

(assert (=> bs!78931 s!24177))

(declare-fun bs!78932 () Bool)

(declare-fun s!24179 () Bool)

(assert (= bs!78932 (and neg-inst!304 s!24179)))

(declare-fun res!279131 () Bool)

(declare-fun e!391898 () Bool)

(assert (=> bs!78932 (=> res!279131 e!391898)))

(assert (=> bs!78932 (= res!279131 (not (= (list!2916 lt!275359) (list!2916 x!140420))))))

(assert (=> bs!78932 (=> true e!391898)))

(declare-fun b!641399 () Bool)

(assert (=> b!641399 (= e!391898 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!78932 (not res!279131)) b!641399))

(declare-fun bs!78933 () Bool)

(assert (= bs!78933 (and m!913728 m!913026)))

(assert (=> bs!78933 m!913728))

(assert (=> bs!78933 m!913026))

(assert (=> bs!78933 s!24179))

(declare-fun bs!78934 () Bool)

(declare-fun s!24181 () Bool)

(assert (= bs!78934 (and neg-inst!304 s!24181)))

(declare-fun res!279132 () Bool)

(declare-fun e!391899 () Bool)

(assert (=> bs!78934 (=> res!279132 e!391899)))

(assert (=> bs!78934 (= res!279132 (not (= (list!2916 lt!275359) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78934 (=> true e!391899)))

(declare-fun b!641400 () Bool)

(assert (=> b!641400 (= e!391899 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78934 (not res!279132)) b!641400))

(declare-fun bs!78935 () Bool)

(assert (= bs!78935 (and m!913728 m!913020)))

(assert (=> bs!78935 m!913728))

(assert (=> bs!78935 m!913020))

(assert (=> bs!78935 s!24181))

(declare-fun bs!78936 () Bool)

(declare-fun s!24183 () Bool)

(assert (= bs!78936 (and neg-inst!304 s!24183)))

(declare-fun res!279133 () Bool)

(declare-fun e!391900 () Bool)

(assert (=> bs!78936 (=> res!279133 e!391900)))

(assert (=> bs!78936 (= res!279133 (not (= (list!2916 lt!275359) (list!2916 x!140419))))))

(assert (=> bs!78936 (=> true e!391900)))

(declare-fun b!641401 () Bool)

(assert (=> b!641401 (= e!391900 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!78936 (not res!279133)) b!641401))

(declare-fun bs!78937 () Bool)

(assert (= bs!78937 (and m!913728 m!913024)))

(assert (=> bs!78937 m!913728))

(assert (=> bs!78937 m!913024))

(assert (=> bs!78937 s!24183))

(declare-fun bs!78938 () Bool)

(declare-fun s!24185 () Bool)

(assert (= bs!78938 (and neg-inst!304 s!24185)))

(declare-fun res!279134 () Bool)

(declare-fun e!391901 () Bool)

(assert (=> bs!78938 (=> res!279134 e!391901)))

(assert (=> bs!78938 (= res!279134 (not (= (list!2916 lt!275359) (list!2916 x!140374))))))

(assert (=> bs!78938 (=> true e!391901)))

(declare-fun b!641402 () Bool)

(assert (=> b!641402 (= e!391901 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!78938 (not res!279134)) b!641402))

(declare-fun bs!78939 () Bool)

(assert (= bs!78939 (and m!913728 m!912978 m!912980)))

(assert (=> bs!78939 m!913728))

(assert (=> bs!78939 m!912978))

(assert (=> bs!78939 s!24185))

(declare-fun bs!78940 () Bool)

(declare-fun s!24187 () Bool)

(assert (= bs!78940 (and neg-inst!304 s!24187)))

(declare-fun res!279135 () Bool)

(declare-fun e!391902 () Bool)

(assert (=> bs!78940 (=> res!279135 e!391902)))

(assert (=> bs!78940 (= res!279135 (not (= (list!2916 lt!275359) (list!2916 lt!275195))))))

(assert (=> bs!78940 (=> true e!391902)))

(declare-fun b!641403 () Bool)

(assert (=> b!641403 (= e!391902 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!78940 (not res!279135)) b!641403))

(declare-fun bs!78941 () Bool)

(assert (= bs!78941 (and m!913728 m!913082)))

(assert (=> bs!78941 m!913728))

(assert (=> bs!78941 m!913082))

(assert (=> bs!78941 s!24187))

(declare-fun bs!78942 () Bool)

(declare-fun s!24189 () Bool)

(assert (= bs!78942 (and neg-inst!304 s!24189)))

(declare-fun res!279136 () Bool)

(declare-fun e!391903 () Bool)

(assert (=> bs!78942 (=> res!279136 e!391903)))

(assert (=> bs!78942 (= res!279136 (not (= (list!2916 lt!275359) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78942 (=> true e!391903)))

(declare-fun b!641404 () Bool)

(assert (=> b!641404 (= e!391903 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78942 (not res!279136)) b!641404))

(declare-fun bs!78943 () Bool)

(assert (= bs!78943 (and m!913728 m!912984)))

(assert (=> bs!78943 m!913728))

(assert (=> bs!78943 m!912984))

(assert (=> bs!78943 s!24189))

(declare-fun bs!78944 () Bool)

(declare-fun s!24191 () Bool)

(assert (= bs!78944 (and neg-inst!304 s!24191)))

(declare-fun res!279137 () Bool)

(declare-fun e!391904 () Bool)

(assert (=> bs!78944 (=> res!279137 e!391904)))

(assert (=> bs!78944 (= res!279137 (not (= (list!2916 x!140419) (list!2916 lt!275359))))))

(assert (=> bs!78944 (=> true e!391904)))

(declare-fun b!641405 () Bool)

(assert (=> b!641405 (= e!391904 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78944 (not res!279137)) b!641405))

(assert (=> bs!78937 m!913024))

(assert (=> bs!78937 m!913728))

(assert (=> bs!78937 s!24191))

(declare-fun bs!78945 () Bool)

(declare-fun s!24193 () Bool)

(assert (= bs!78945 (and neg-inst!304 s!24193)))

(declare-fun res!279138 () Bool)

(declare-fun e!391905 () Bool)

(assert (=> bs!78945 (=> res!279138 e!391905)))

(assert (=> bs!78945 (= res!279138 (not (= (list!2916 x!140376) (list!2916 lt!275359))))))

(assert (=> bs!78945 (=> true e!391905)))

(declare-fun b!641406 () Bool)

(assert (=> b!641406 (= e!391905 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78945 (not res!279138)) b!641406))

(assert (=> bs!78924 m!912990))

(assert (=> bs!78924 m!913728))

(assert (=> bs!78924 s!24193))

(declare-fun bs!78946 () Bool)

(declare-fun s!24195 () Bool)

(assert (= bs!78946 (and neg-inst!304 s!24195)))

(declare-fun res!279139 () Bool)

(declare-fun e!391906 () Bool)

(assert (=> bs!78946 (=> res!279139 e!391906)))

(assert (=> bs!78946 (= res!279139 (not (= (list!2916 lt!275166) (list!2916 lt!275359))))))

(assert (=> bs!78946 (=> true e!391906)))

(declare-fun b!641407 () Bool)

(assert (=> b!641407 (= e!391906 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78946 (not res!279139)) b!641407))

(assert (=> bs!78931 m!912970))

(assert (=> bs!78931 m!913728))

(assert (=> bs!78931 s!24195))

(declare-fun bs!78947 () Bool)

(declare-fun s!24197 () Bool)

(assert (= bs!78947 (and neg-inst!304 s!24197)))

(declare-fun res!279140 () Bool)

(declare-fun e!391907 () Bool)

(assert (=> bs!78947 (=> res!279140 e!391907)))

(assert (=> bs!78947 (= res!279140 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275359))))))

(assert (=> bs!78947 (=> true e!391907)))

(declare-fun b!641408 () Bool)

(assert (=> b!641408 (= e!391907 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78947 (not res!279140)) b!641408))

(assert (=> bs!78935 m!913020))

(assert (=> bs!78935 m!913728))

(assert (=> bs!78935 s!24197))

(declare-fun bs!78948 () Bool)

(declare-fun s!24199 () Bool)

(assert (= bs!78948 (and neg-inst!304 s!24199)))

(declare-fun res!279141 () Bool)

(declare-fun e!391908 () Bool)

(assert (=> bs!78948 (=> res!279141 e!391908)))

(assert (=> bs!78948 (= res!279141 (not (= (list!2916 x!140375) (list!2916 lt!275359))))))

(assert (=> bs!78948 (=> true e!391908)))

(declare-fun b!641409 () Bool)

(assert (=> b!641409 (= e!391908 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78948 (not res!279141)) b!641409))

(assert (=> bs!78926 m!912988))

(assert (=> bs!78926 m!913728))

(assert (=> bs!78926 s!24199))

(assert (=> m!913728 s!24173))

(declare-fun bs!78949 () Bool)

(declare-fun s!24201 () Bool)

(assert (= bs!78949 (and neg-inst!304 s!24201)))

(declare-fun res!279142 () Bool)

(declare-fun e!391909 () Bool)

(assert (=> bs!78949 (=> res!279142 e!391909)))

(assert (=> bs!78949 (= res!279142 (not (= (list!2916 x!140421) (list!2916 lt!275359))))))

(assert (=> bs!78949 (=> true e!391909)))

(declare-fun b!641410 () Bool)

(assert (=> b!641410 (= e!391909 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78949 (not res!279142)) b!641410))

(assert (=> bs!78929 m!913028))

(assert (=> bs!78929 m!913728))

(assert (=> bs!78929 s!24201))

(declare-fun bs!78950 () Bool)

(declare-fun s!24203 () Bool)

(assert (= bs!78950 (and neg-inst!304 s!24203)))

(declare-fun res!279143 () Bool)

(declare-fun e!391910 () Bool)

(assert (=> bs!78950 (=> res!279143 e!391910)))

(assert (=> bs!78950 (= res!279143 (not (= (list!2916 x!140374) (list!2916 lt!275359))))))

(assert (=> bs!78950 (=> true e!391910)))

(declare-fun b!641411 () Bool)

(assert (=> b!641411 (= e!391910 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78950 (not res!279143)) b!641411))

(assert (=> bs!78939 m!912978))

(assert (=> bs!78939 m!913728))

(assert (=> bs!78939 s!24203))

(declare-fun bs!78951 () Bool)

(declare-fun s!24205 () Bool)

(assert (= bs!78951 (and neg-inst!304 s!24205)))

(declare-fun res!279144 () Bool)

(declare-fun e!391911 () Bool)

(assert (=> bs!78951 (=> res!279144 e!391911)))

(assert (=> bs!78951 (= res!279144 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275359))))))

(assert (=> bs!78951 (=> true e!391911)))

(declare-fun b!641412 () Bool)

(assert (=> b!641412 (= e!391911 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78951 (not res!279144)) b!641412))

(assert (=> bs!78943 m!912984))

(assert (=> bs!78943 m!913728))

(assert (=> bs!78943 s!24205))

(declare-fun bs!78952 () Bool)

(declare-fun s!24207 () Bool)

(assert (= bs!78952 (and neg-inst!304 s!24207)))

(declare-fun res!279145 () Bool)

(declare-fun e!391912 () Bool)

(assert (=> bs!78952 (=> res!279145 e!391912)))

(assert (=> bs!78952 (= res!279145 (not (= (list!2916 x!140420) (list!2916 lt!275359))))))

(assert (=> bs!78952 (=> true e!391912)))

(declare-fun b!641413 () Bool)

(assert (=> b!641413 (= e!391912 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78952 (not res!279145)) b!641413))

(assert (=> bs!78933 m!913026))

(assert (=> bs!78933 m!913728))

(assert (=> bs!78933 s!24207))

(declare-fun bs!78953 () Bool)

(declare-fun s!24209 () Bool)

(assert (= bs!78953 (and neg-inst!304 s!24209)))

(declare-fun res!279146 () Bool)

(declare-fun e!391913 () Bool)

(assert (=> bs!78953 (=> res!279146 e!391913)))

(assert (=> bs!78953 (= res!279146 (not (= (list!2916 lt!275195) (list!2916 lt!275359))))))

(assert (=> bs!78953 (=> true e!391913)))

(declare-fun b!641414 () Bool)

(assert (=> b!641414 (= e!391913 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!78953 (not res!279146)) b!641414))

(assert (=> bs!78941 m!913082))

(assert (=> bs!78941 m!913728))

(assert (=> bs!78941 s!24209))

(declare-fun bs!78954 () Bool)

(declare-fun s!24211 () Bool)

(assert (= bs!78954 (and neg-inst!311 s!24211)))

(declare-fun res!279147 () Bool)

(declare-fun e!391914 () Bool)

(assert (=> bs!78954 (=> res!279147 e!391914)))

(assert (=> bs!78954 (= res!279147 (not (= (list!2916 lt!275359) (list!2916 x!140374))))))

(assert (=> bs!78954 (=> true e!391914)))

(declare-fun b!641415 () Bool)

(assert (=> b!641415 (= e!391914 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!78954 (not res!279147)) b!641415))

(declare-fun bs!78955 () Bool)

(assert (= bs!78955 (and m!913728 m!912978)))

(assert (=> bs!78955 m!913728))

(assert (=> bs!78955 m!912978))

(assert (=> bs!78955 s!24211))

(declare-fun bs!78956 () Bool)

(declare-fun s!24213 () Bool)

(assert (= bs!78956 (and neg-inst!311 s!24213)))

(declare-fun res!279148 () Bool)

(declare-fun e!391915 () Bool)

(assert (=> bs!78956 (=> res!279148 e!391915)))

(assert (=> bs!78956 (= res!279148 (not (= (list!2916 lt!275359) (list!2916 x!140375))))))

(assert (=> bs!78956 (=> true e!391915)))

(declare-fun b!641416 () Bool)

(assert (=> b!641416 (= e!391915 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!78956 (not res!279148)) b!641416))

(declare-fun bs!78957 () Bool)

(assert (= bs!78957 (and m!913728 m!912988)))

(assert (=> bs!78957 m!913728))

(assert (=> bs!78957 m!912988))

(assert (=> bs!78957 s!24213))

(declare-fun bs!78958 () Bool)

(declare-fun s!24215 () Bool)

(assert (= bs!78958 (and neg-inst!311 s!24215)))

(declare-fun res!279149 () Bool)

(declare-fun e!391916 () Bool)

(assert (=> bs!78958 (=> res!279149 e!391916)))

(assert (=> bs!78958 (= res!279149 (not (= (list!2916 lt!275359) (list!2916 lt!275166))))))

(assert (=> bs!78958 (=> true e!391916)))

(declare-fun b!641417 () Bool)

(assert (=> b!641417 (= e!391916 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!78958 (not res!279149)) b!641417))

(assert (=> bs!78931 m!913728))

(assert (=> bs!78931 m!912970))

(assert (=> bs!78931 s!24215))

(declare-fun bs!78959 () Bool)

(declare-fun s!24217 () Bool)

(assert (= bs!78959 (and neg-inst!311 s!24217)))

(declare-fun res!279150 () Bool)

(declare-fun e!391917 () Bool)

(assert (=> bs!78959 (=> res!279150 e!391917)))

(assert (=> bs!78959 (= res!279150 (not (= (list!2916 lt!275359) (list!2916 x!140420))))))

(assert (=> bs!78959 (=> true e!391917)))

(declare-fun b!641418 () Bool)

(assert (=> b!641418 (= e!391917 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!78959 (not res!279150)) b!641418))

(declare-fun bs!78960 () Bool)

(assert (= bs!78960 (and m!913728 m!913026 m!913034)))

(assert (=> bs!78960 m!913728))

(assert (=> bs!78960 m!913026))

(assert (=> bs!78960 s!24217))

(declare-fun bs!78961 () Bool)

(declare-fun s!24219 () Bool)

(assert (= bs!78961 (and neg-inst!311 s!24219)))

(declare-fun res!279151 () Bool)

(declare-fun e!391918 () Bool)

(assert (=> bs!78961 (=> res!279151 e!391918)))

(assert (=> bs!78961 (= res!279151 (not (= (list!2916 lt!275359) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!78961 (=> true e!391918)))

(declare-fun b!641419 () Bool)

(assert (=> b!641419 (= e!391918 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!78961 (not res!279151)) b!641419))

(assert (=> bs!78935 m!913728))

(assert (=> bs!78935 m!913020))

(assert (=> bs!78935 s!24219))

(declare-fun bs!78962 () Bool)

(declare-fun s!24221 () Bool)

(assert (= bs!78962 (and neg-inst!311 s!24221)))

(declare-fun res!279152 () Bool)

(declare-fun e!391919 () Bool)

(assert (=> bs!78962 (=> res!279152 e!391919)))

(assert (=> bs!78962 (= res!279152 (not (= (list!2916 lt!275359) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!78962 (=> true e!391919)))

(declare-fun b!641420 () Bool)

(assert (=> b!641420 (= e!391919 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!78962 (not res!279152)) b!641420))

(assert (=> bs!78943 m!913728))

(assert (=> bs!78943 m!912984))

(assert (=> bs!78943 s!24221))

(declare-fun bs!78963 () Bool)

(declare-fun s!24223 () Bool)

(assert (= bs!78963 (and neg-inst!311 s!24223)))

(declare-fun res!279153 () Bool)

(declare-fun e!391920 () Bool)

(assert (=> bs!78963 (=> res!279153 e!391920)))

(assert (=> bs!78963 (= res!279153 (not (= (list!2916 lt!275359) (list!2916 lt!275359))))))

(assert (=> bs!78963 (=> true e!391920)))

(declare-fun b!641421 () Bool)

(assert (=> b!641421 (= e!391920 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78963 (not res!279153)) b!641421))

(assert (=> m!913728 s!24223))

(declare-fun bs!78964 () Bool)

(declare-fun s!24225 () Bool)

(assert (= bs!78964 (and neg-inst!311 s!24225)))

(declare-fun res!279154 () Bool)

(declare-fun e!391921 () Bool)

(assert (=> bs!78964 (=> res!279154 e!391921)))

(assert (=> bs!78964 (= res!279154 (not (= (list!2916 lt!275359) (list!2916 x!140419))))))

(assert (=> bs!78964 (=> true e!391921)))

(declare-fun b!641422 () Bool)

(assert (=> b!641422 (= e!391921 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!78964 (not res!279154)) b!641422))

(declare-fun bs!78965 () Bool)

(assert (= bs!78965 (and m!913728 m!913016 m!913024)))

(assert (=> bs!78965 m!913728))

(assert (=> bs!78965 m!913024))

(assert (=> bs!78965 s!24225))

(declare-fun bs!78966 () Bool)

(declare-fun s!24227 () Bool)

(assert (= bs!78966 (and neg-inst!311 s!24227)))

(declare-fun res!279155 () Bool)

(declare-fun e!391922 () Bool)

(assert (=> bs!78966 (=> res!279155 e!391922)))

(assert (=> bs!78966 (= res!279155 (not (= (list!2916 lt!275359) (list!2916 x!140421))))))

(assert (=> bs!78966 (=> true e!391922)))

(declare-fun b!641423 () Bool)

(assert (=> b!641423 (= e!391922 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!78966 (not res!279155)) b!641423))

(declare-fun bs!78967 () Bool)

(assert (= bs!78967 (and m!913728 m!913028 m!913036)))

(assert (=> bs!78967 m!913728))

(assert (=> bs!78967 m!913028))

(assert (=> bs!78967 s!24227))

(declare-fun bs!78968 () Bool)

(declare-fun s!24229 () Bool)

(assert (= bs!78968 (and neg-inst!311 s!24229)))

(declare-fun res!279156 () Bool)

(declare-fun e!391923 () Bool)

(assert (=> bs!78968 (=> res!279156 e!391923)))

(assert (=> bs!78968 (= res!279156 (not (= (list!2916 lt!275359) (list!2916 lt!275195))))))

(assert (=> bs!78968 (=> true e!391923)))

(declare-fun b!641424 () Bool)

(assert (=> b!641424 (= e!391923 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!78968 (not res!279156)) b!641424))

(assert (=> bs!78941 m!913728))

(assert (=> bs!78941 m!913082))

(assert (=> bs!78941 s!24229))

(declare-fun bs!78969 () Bool)

(declare-fun s!24231 () Bool)

(assert (= bs!78969 (and neg-inst!311 s!24231)))

(declare-fun res!279157 () Bool)

(declare-fun e!391924 () Bool)

(assert (=> bs!78969 (=> res!279157 e!391924)))

(assert (=> bs!78969 (= res!279157 (not (= (list!2916 lt!275359) (list!2916 x!140376))))))

(assert (=> bs!78969 (=> true e!391924)))

(declare-fun b!641425 () Bool)

(assert (=> b!641425 (= e!391924 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!78969 (not res!279157)) b!641425))

(declare-fun bs!78970 () Bool)

(assert (= bs!78970 (and m!913728 m!912990)))

(assert (=> bs!78970 m!913728))

(assert (=> bs!78970 m!912990))

(assert (=> bs!78970 s!24231))

(assert (=> m!913728 s!24223))

(declare-fun bs!78971 () Bool)

(declare-fun s!24233 () Bool)

(assert (= bs!78971 (and neg-inst!311 s!24233)))

(declare-fun res!279158 () Bool)

(declare-fun e!391925 () Bool)

(assert (=> bs!78971 (=> res!279158 e!391925)))

(assert (=> bs!78971 (= res!279158 (not (= (list!2916 x!140375) (list!2916 lt!275359))))))

(assert (=> bs!78971 (=> true e!391925)))

(declare-fun b!641426 () Bool)

(assert (=> b!641426 (= e!391925 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78971 (not res!279158)) b!641426))

(assert (=> bs!78957 m!912988))

(assert (=> bs!78957 m!913728))

(assert (=> bs!78957 s!24233))

(declare-fun bs!78972 () Bool)

(declare-fun s!24235 () Bool)

(assert (= bs!78972 (and neg-inst!311 s!24235)))

(declare-fun res!279159 () Bool)

(declare-fun e!391926 () Bool)

(assert (=> bs!78972 (=> res!279159 e!391926)))

(assert (=> bs!78972 (= res!279159 (not (= (list!2916 x!140421) (list!2916 lt!275359))))))

(assert (=> bs!78972 (=> true e!391926)))

(declare-fun b!641427 () Bool)

(assert (=> b!641427 (= e!391926 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78972 (not res!279159)) b!641427))

(assert (=> bs!78967 m!913028))

(assert (=> bs!78967 m!913728))

(assert (=> bs!78967 s!24235))

(declare-fun bs!78973 () Bool)

(declare-fun s!24237 () Bool)

(assert (= bs!78973 (and neg-inst!311 s!24237)))

(declare-fun res!279160 () Bool)

(declare-fun e!391927 () Bool)

(assert (=> bs!78973 (=> res!279160 e!391927)))

(assert (=> bs!78973 (= res!279160 (not (= (list!2916 x!140420) (list!2916 lt!275359))))))

(assert (=> bs!78973 (=> true e!391927)))

(declare-fun b!641428 () Bool)

(assert (=> b!641428 (= e!391927 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78973 (not res!279160)) b!641428))

(assert (=> bs!78960 m!913026))

(assert (=> bs!78960 m!913728))

(assert (=> bs!78960 s!24237))

(declare-fun bs!78974 () Bool)

(declare-fun s!24239 () Bool)

(assert (= bs!78974 (and neg-inst!311 s!24239)))

(declare-fun res!279161 () Bool)

(declare-fun e!391928 () Bool)

(assert (=> bs!78974 (=> res!279161 e!391928)))

(assert (=> bs!78974 (= res!279161 (not (= (list!2916 x!140419) (list!2916 lt!275359))))))

(assert (=> bs!78974 (=> true e!391928)))

(declare-fun b!641429 () Bool)

(assert (=> b!641429 (= e!391928 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78974 (not res!279161)) b!641429))

(assert (=> bs!78965 m!913024))

(assert (=> bs!78965 m!913728))

(assert (=> bs!78965 s!24239))

(declare-fun bs!78975 () Bool)

(declare-fun s!24241 () Bool)

(assert (= bs!78975 (and neg-inst!311 s!24241)))

(declare-fun res!279162 () Bool)

(declare-fun e!391929 () Bool)

(assert (=> bs!78975 (=> res!279162 e!391929)))

(assert (=> bs!78975 (= res!279162 (not (= (list!2916 lt!275166) (list!2916 lt!275359))))))

(assert (=> bs!78975 (=> true e!391929)))

(declare-fun b!641430 () Bool)

(assert (=> b!641430 (= e!391929 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78975 (not res!279162)) b!641430))

(assert (=> bs!78931 m!912970))

(assert (=> bs!78931 m!913728))

(assert (=> bs!78931 s!24241))

(declare-fun bs!78976 () Bool)

(declare-fun s!24243 () Bool)

(assert (= bs!78976 (and neg-inst!311 s!24243)))

(declare-fun res!279163 () Bool)

(declare-fun e!391930 () Bool)

(assert (=> bs!78976 (=> res!279163 e!391930)))

(assert (=> bs!78976 (= res!279163 (not (= (list!2916 x!140376) (list!2916 lt!275359))))))

(assert (=> bs!78976 (=> true e!391930)))

(declare-fun b!641431 () Bool)

(assert (=> b!641431 (= e!391930 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78976 (not res!279163)) b!641431))

(assert (=> bs!78970 m!912990))

(assert (=> bs!78970 m!913728))

(assert (=> bs!78970 s!24243))

(declare-fun bs!78977 () Bool)

(declare-fun s!24245 () Bool)

(assert (= bs!78977 (and neg-inst!311 s!24245)))

(declare-fun res!279164 () Bool)

(declare-fun e!391931 () Bool)

(assert (=> bs!78977 (=> res!279164 e!391931)))

(assert (=> bs!78977 (= res!279164 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275359))))))

(assert (=> bs!78977 (=> true e!391931)))

(declare-fun b!641432 () Bool)

(assert (=> b!641432 (= e!391931 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78977 (not res!279164)) b!641432))

(assert (=> bs!78935 m!913020))

(assert (=> bs!78935 m!913728))

(assert (=> bs!78935 s!24245))

(declare-fun bs!78978 () Bool)

(declare-fun s!24247 () Bool)

(assert (= bs!78978 (and neg-inst!311 s!24247)))

(declare-fun res!279165 () Bool)

(declare-fun e!391932 () Bool)

(assert (=> bs!78978 (=> res!279165 e!391932)))

(assert (=> bs!78978 (= res!279165 (not (= (list!2916 x!140374) (list!2916 lt!275359))))))

(assert (=> bs!78978 (=> true e!391932)))

(declare-fun b!641433 () Bool)

(assert (=> b!641433 (= e!391932 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78978 (not res!279165)) b!641433))

(assert (=> bs!78955 m!912978))

(assert (=> bs!78955 m!913728))

(assert (=> bs!78955 s!24247))

(declare-fun bs!78979 () Bool)

(declare-fun s!24249 () Bool)

(assert (= bs!78979 (and neg-inst!311 s!24249)))

(declare-fun res!279166 () Bool)

(declare-fun e!391933 () Bool)

(assert (=> bs!78979 (=> res!279166 e!391933)))

(assert (=> bs!78979 (= res!279166 (not (= (list!2916 lt!275195) (list!2916 lt!275359))))))

(assert (=> bs!78979 (=> true e!391933)))

(declare-fun b!641434 () Bool)

(assert (=> b!641434 (= e!391933 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78979 (not res!279166)) b!641434))

(assert (=> bs!78941 m!913082))

(assert (=> bs!78941 m!913728))

(assert (=> bs!78941 s!24249))

(declare-fun bs!78980 () Bool)

(declare-fun s!24251 () Bool)

(assert (= bs!78980 (and neg-inst!311 s!24251)))

(declare-fun res!279167 () Bool)

(declare-fun e!391934 () Bool)

(assert (=> bs!78980 (=> res!279167 e!391934)))

(assert (=> bs!78980 (= res!279167 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275359))))))

(assert (=> bs!78980 (=> true e!391934)))

(declare-fun b!641435 () Bool)

(assert (=> b!641435 (= e!391934 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!78980 (not res!279167)) b!641435))

(assert (=> bs!78943 m!912984))

(assert (=> bs!78943 m!913728))

(assert (=> bs!78943 s!24251))

(assert (=> d!223447 m!913728))

(declare-fun m!913730 () Bool)

(assert (=> d!223447 m!913730))

(declare-fun m!913732 () Bool)

(assert (=> b!641393 m!913732))

(assert (=> d!223101 d!223447))

(declare-fun d!223449 () Bool)

(declare-fun e!391935 () Bool)

(assert (=> d!223449 e!391935))

(declare-fun res!279168 () Bool)

(assert (=> d!223449 (=> (not res!279168) (not e!391935))))

(declare-fun lt!275360 () BalanceConc!4648)

(assert (=> d!223449 (= res!279168 (= (list!2914 lt!275360) (Cons!6864 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005B)) (lBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005B Nil!6863)) Nil!6864)))))

(assert (=> d!223449 (= lt!275360 (singleton!211 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005B)) (lBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005B Nil!6863))))))

(assert (=> d!223449 (= (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005B)) (lBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005B Nil!6863))) lt!275360)))

(declare-fun b!641436 () Bool)

(assert (=> b!641436 (= e!391935 (isBalanced!614 (c!117092 lt!275360)))))

(assert (= (and d!223449 res!279168) b!641436))

(declare-fun m!913734 () Bool)

(assert (=> d!223449 m!913734))

(declare-fun m!913736 () Bool)

(assert (=> d!223449 m!913736))

(declare-fun m!913738 () Bool)

(assert (=> b!641436 m!913738))

(assert (=> d!223101 d!223449))

(declare-fun bs!78981 () Bool)

(declare-fun d!223451 () Bool)

(assert (= bs!78981 (and d!223451 d!223425)))

(declare-fun lambda!19061 () Int)

(assert (=> bs!78981 (= lambda!19061 lambda!19055)))

(declare-fun bs!78982 () Bool)

(assert (= bs!78982 (and d!223451 d!223165)))

(assert (=> bs!78982 (= lambda!19061 lambda!18955)))

(declare-fun bs!78983 () Bool)

(assert (= bs!78983 (and d!223451 d!223355)))

(assert (=> bs!78983 (= lambda!19061 lambda!19048)))

(declare-fun bs!78984 () Bool)

(assert (= bs!78984 (and d!223451 d!223189)))

(assert (=> bs!78984 (= lambda!19061 lambda!18974)))

(declare-fun bs!78985 () Bool)

(assert (= bs!78985 (and d!223451 d!223221)))

(assert (=> bs!78985 (= lambda!19061 lambda!18982)))

(declare-fun bs!78986 () Bool)

(assert (= bs!78986 (and d!223451 d!223207)))

(assert (=> bs!78986 (= lambda!19061 lambda!18977)))

(declare-fun bs!78987 () Bool)

(assert (= bs!78987 (and d!223451 d!223201)))

(assert (=> bs!78987 (= lambda!19061 lambda!18976)))

(declare-fun bs!78988 () Bool)

(assert (= bs!78988 (and d!223451 d!223181)))

(assert (=> bs!78988 (= lambda!19061 lambda!18973)))

(declare-fun bs!78989 () Bool)

(assert (= bs!78989 (and d!223451 d!223437)))

(assert (=> bs!78989 (= lambda!19061 lambda!19059)))

(declare-fun bs!78990 () Bool)

(assert (= bs!78990 (and d!223451 d!223211)))

(assert (=> bs!78990 (= lambda!19061 lambda!18981)))

(declare-fun bs!78991 () Bool)

(assert (= bs!78991 (and d!223451 d!223159)))

(assert (=> bs!78991 (= lambda!19061 lambda!18954)))

(declare-fun bs!78992 () Bool)

(assert (= bs!78992 (and d!223451 d!223195)))

(assert (=> bs!78992 (= lambda!19061 lambda!18975)))

(declare-fun bs!78993 () Bool)

(assert (= bs!78993 (and d!223451 d!223223)))

(assert (=> bs!78993 (= lambda!19061 lambda!18983)))

(declare-fun bs!78994 () Bool)

(assert (= bs!78994 (and d!223451 d!223365)))

(assert (=> bs!78994 (= lambda!19061 lambda!19051)))

(declare-fun bs!78995 () Bool)

(assert (= bs!78995 (and d!223451 d!223271)))

(assert (=> bs!78995 (= lambda!19061 lambda!19037)))

(declare-fun bs!78996 () Bool)

(assert (= bs!78996 (and d!223451 d!223169)))

(assert (=> bs!78996 (= lambda!19061 lambda!18959)))

(declare-fun bs!78997 () Bool)

(assert (= bs!78997 (and d!223451 d!223361)))

(assert (=> bs!78997 (= lambda!19061 lambda!19050)))

(declare-fun bs!78998 () Bool)

(assert (= bs!78998 (and d!223451 d!223359)))

(assert (=> bs!78998 (= lambda!19061 lambda!19049)))

(declare-fun bs!78999 () Bool)

(assert (= bs!78999 (and d!223451 d!223435)))

(assert (=> bs!78999 (= lambda!19061 lambda!19058)))

(declare-fun bs!79000 () Bool)

(assert (= bs!79000 (and d!223451 d!223399)))

(assert (=> bs!79000 (= lambda!19061 lambda!19052)))

(assert (=> d!223451 (= (inv!8707 (_1!4048 (_1!4049 (h!12268 mapValue!2626)))) (forall!1763 (exprs!699 (_1!4048 (_1!4049 (h!12268 mapValue!2626)))) lambda!19061))))

(declare-fun bs!79001 () Bool)

(assert (= bs!79001 d!223451))

(declare-fun m!913740 () Bool)

(assert (=> bs!79001 m!913740))

(assert (=> b!640674 d!223451))

(declare-fun b!641437 () Bool)

(declare-fun e!391938 () Option!1661)

(assert (=> b!641437 (= e!391938 (Some!1660 (PrintableTokens!137 (rules!109 JsonLexer!197) lt!274733)))))

(declare-fun b!641440 () Bool)

(declare-fun e!391936 () Bool)

(declare-fun lt!275361 () Option!1661)

(assert (=> b!641440 (= e!391936 (= (tokens!1209 (get!2484 lt!275361)) lt!274733))))

(declare-fun b!641438 () Bool)

(assert (=> b!641438 (= e!391938 None!1660)))

(declare-fun b!641439 () Bool)

(declare-fun e!391937 () Bool)

(assert (=> b!641439 (= e!391937 e!391936)))

(declare-fun res!279169 () Bool)

(assert (=> b!641439 (=> (not res!279169) (not e!391936))))

(assert (=> b!641439 (= res!279169 (= (rules!8210 (get!2484 lt!275361)) (rules!109 JsonLexer!197)))))

(declare-fun d!223453 () Bool)

(assert (=> d!223453 e!391937))

(declare-fun res!279170 () Bool)

(assert (=> d!223453 (=> res!279170 e!391937)))

(assert (=> d!223453 (= res!279170 (isEmpty!4700 lt!275361))))

(assert (=> d!223453 (= lt!275361 e!391938)))

(declare-fun c!117239 () Bool)

(assert (=> d!223453 (= c!117239 (separableTokens!28 Lexer!1254 lt!274733 (rules!109 JsonLexer!197)))))

(assert (=> d!223453 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223453 (= (printableTokensFromTokens!10 (rules!109 JsonLexer!197) lt!274733) lt!275361)))

(assert (= (and d!223453 c!117239) b!641437))

(assert (= (and d!223453 (not c!117239)) b!641438))

(assert (= (and d!223453 (not res!279170)) b!641439))

(assert (= (and b!641439 res!279169) b!641440))

(declare-fun m!913742 () Bool)

(assert (=> b!641440 m!913742))

(assert (=> b!641439 m!913742))

(declare-fun m!913744 () Bool)

(assert (=> d!223453 m!913744))

(assert (=> d!223453 m!912257))

(declare-fun m!913746 () Bool)

(assert (=> d!223453 m!913746))

(assert (=> d!223453 m!912257))

(assert (=> d!223453 m!912325))

(assert (=> b!640511 d!223453))

(assert (=> b!640511 d!223137))

(declare-fun d!223455 () Bool)

(assert (=> d!223455 (= (list!2910 lt!274870) (list!2912 (c!117094 lt!274870)))))

(declare-fun bs!79002 () Bool)

(assert (= bs!79002 d!223455))

(declare-fun m!913748 () Bool)

(assert (=> bs!79002 m!913748))

(assert (=> d!223109 d!223455))

(declare-fun d!223457 () Bool)

(declare-fun lt!275362 () List!6884)

(assert (=> d!223457 (= (size!5425 lt!275362) (size!5416 (list!2909 lt!274704)))))

(declare-fun e!391939 () List!6884)

(assert (=> d!223457 (= lt!275362 e!391939)))

(declare-fun c!117240 () Bool)

(assert (=> d!223457 (= c!117240 ((_ is Nil!6869) (list!2909 lt!274704)))))

(assert (=> d!223457 (= (map!1502 (list!2909 lt!274704) lambda!18869) lt!275362)))

(declare-fun b!641441 () Bool)

(assert (=> b!641441 (= e!391939 Nil!6870)))

(declare-fun b!641442 () Bool)

(assert (=> b!641442 (= e!391939 ($colon$colon!52 (map!1502 (t!84893 (list!2909 lt!274704)) lambda!18869) (dynLambda!3754 lambda!18869 (h!12270 (list!2909 lt!274704)))))))

(assert (= (and d!223457 c!117240) b!641441))

(assert (= (and d!223457 (not c!117240)) b!641442))

(declare-fun b_lambda!25299 () Bool)

(assert (=> (not b_lambda!25299) (not b!641442)))

(declare-fun m!913750 () Bool)

(assert (=> d!223457 m!913750))

(assert (=> d!223457 m!912227))

(declare-fun m!913752 () Bool)

(assert (=> d!223457 m!913752))

(declare-fun m!913754 () Bool)

(assert (=> b!641442 m!913754))

(declare-fun m!913756 () Bool)

(assert (=> b!641442 m!913756))

(assert (=> b!641442 m!913754))

(assert (=> b!641442 m!913756))

(declare-fun m!913758 () Bool)

(assert (=> b!641442 m!913758))

(assert (=> d!223109 d!223457))

(assert (=> d!223109 d!223099))

(assert (=> d!223109 d!223205))

(declare-fun bs!79003 () Bool)

(declare-fun d!223459 () Bool)

(assert (= bs!79003 (and d!223459 d!223425)))

(declare-fun lambda!19062 () Int)

(assert (=> bs!79003 (= lambda!19062 lambda!19055)))

(declare-fun bs!79004 () Bool)

(assert (= bs!79004 (and d!223459 d!223165)))

(assert (=> bs!79004 (= lambda!19062 lambda!18955)))

(declare-fun bs!79005 () Bool)

(assert (= bs!79005 (and d!223459 d!223355)))

(assert (=> bs!79005 (= lambda!19062 lambda!19048)))

(declare-fun bs!79006 () Bool)

(assert (= bs!79006 (and d!223459 d!223221)))

(assert (=> bs!79006 (= lambda!19062 lambda!18982)))

(declare-fun bs!79007 () Bool)

(assert (= bs!79007 (and d!223459 d!223207)))

(assert (=> bs!79007 (= lambda!19062 lambda!18977)))

(declare-fun bs!79008 () Bool)

(assert (= bs!79008 (and d!223459 d!223201)))

(assert (=> bs!79008 (= lambda!19062 lambda!18976)))

(declare-fun bs!79009 () Bool)

(assert (= bs!79009 (and d!223459 d!223181)))

(assert (=> bs!79009 (= lambda!19062 lambda!18973)))

(declare-fun bs!79010 () Bool)

(assert (= bs!79010 (and d!223459 d!223437)))

(assert (=> bs!79010 (= lambda!19062 lambda!19059)))

(declare-fun bs!79011 () Bool)

(assert (= bs!79011 (and d!223459 d!223211)))

(assert (=> bs!79011 (= lambda!19062 lambda!18981)))

(declare-fun bs!79012 () Bool)

(assert (= bs!79012 (and d!223459 d!223159)))

(assert (=> bs!79012 (= lambda!19062 lambda!18954)))

(declare-fun bs!79013 () Bool)

(assert (= bs!79013 (and d!223459 d!223195)))

(assert (=> bs!79013 (= lambda!19062 lambda!18975)))

(declare-fun bs!79014 () Bool)

(assert (= bs!79014 (and d!223459 d!223223)))

(assert (=> bs!79014 (= lambda!19062 lambda!18983)))

(declare-fun bs!79015 () Bool)

(assert (= bs!79015 (and d!223459 d!223365)))

(assert (=> bs!79015 (= lambda!19062 lambda!19051)))

(declare-fun bs!79016 () Bool)

(assert (= bs!79016 (and d!223459 d!223451)))

(assert (=> bs!79016 (= lambda!19062 lambda!19061)))

(declare-fun bs!79017 () Bool)

(assert (= bs!79017 (and d!223459 d!223189)))

(assert (=> bs!79017 (= lambda!19062 lambda!18974)))

(declare-fun bs!79018 () Bool)

(assert (= bs!79018 (and d!223459 d!223271)))

(assert (=> bs!79018 (= lambda!19062 lambda!19037)))

(declare-fun bs!79019 () Bool)

(assert (= bs!79019 (and d!223459 d!223169)))

(assert (=> bs!79019 (= lambda!19062 lambda!18959)))

(declare-fun bs!79020 () Bool)

(assert (= bs!79020 (and d!223459 d!223361)))

(assert (=> bs!79020 (= lambda!19062 lambda!19050)))

(declare-fun bs!79021 () Bool)

(assert (= bs!79021 (and d!223459 d!223359)))

(assert (=> bs!79021 (= lambda!19062 lambda!19049)))

(declare-fun bs!79022 () Bool)

(assert (= bs!79022 (and d!223459 d!223435)))

(assert (=> bs!79022 (= lambda!19062 lambda!19058)))

(declare-fun bs!79023 () Bool)

(assert (= bs!79023 (and d!223459 d!223399)))

(assert (=> bs!79023 (= lambda!19062 lambda!19052)))

(assert (=> d!223459 (= (inv!8707 setElem!2945) (forall!1763 (exprs!699 setElem!2945) lambda!19062))))

(declare-fun bs!79024 () Bool)

(assert (= bs!79024 d!223459))

(declare-fun m!913760 () Bool)

(assert (=> bs!79024 m!913760))

(assert (=> setNonEmpty!2945 d!223459))

(assert (=> d!223133 d!223137))

(declare-fun bs!79025 () Bool)

(declare-fun d!223461 () Bool)

(assert (= bs!79025 (and d!223461 d!223175)))

(declare-fun lambda!19067 () Int)

(assert (=> bs!79025 (= lambda!19067 lambda!18972)))

(declare-fun bs!79026 () Bool)

(assert (= bs!79026 (and d!223461 d!223229)))

(assert (=> bs!79026 (= (= (rules!8210 printableTokens!2) (rules!109 JsonLexer!197)) (= lambda!19067 lambda!18986))))

(declare-fun bs!79027 () Bool)

(assert (= bs!79027 (and d!223461 d!223445)))

(assert (=> bs!79027 (= (= (rules!8210 printableTokens!2) (rules!109 JsonLexer!197)) (= lambda!19067 lambda!19060))))

(declare-fun b!641448 () Bool)

(declare-fun e!391945 () Bool)

(assert (=> b!641448 (= e!391945 true)))

(declare-fun b!641447 () Bool)

(declare-fun e!391944 () Bool)

(assert (=> b!641447 (= e!391944 e!391945)))

(declare-fun b!641446 () Bool)

(declare-fun e!391943 () Bool)

(assert (=> b!641446 (= e!391943 e!391944)))

(assert (=> d!223461 e!391943))

(assert (= b!641447 b!641448))

(assert (= b!641446 b!641447))

(assert (= (and d!223461 ((_ is Cons!6865) (rules!8210 printableTokens!2))) b!641446))

(assert (=> b!641448 (< (dynLambda!3755 order!5173 (toValue!2319 (transformation!1378 (h!12266 (rules!8210 printableTokens!2))))) (dynLambda!3756 order!5175 lambda!19067))))

(assert (=> b!641448 (< (dynLambda!3757 order!5177 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 printableTokens!2))))) (dynLambda!3756 order!5175 lambda!19067))))

(assert (=> d!223461 true))

(declare-fun e!391942 () Bool)

(assert (=> d!223461 e!391942))

(declare-fun res!279173 () Bool)

(assert (=> d!223461 (=> (not res!279173) (not e!391942))))

(declare-fun lt!275365 () Bool)

(assert (=> d!223461 (= res!279173 (= lt!275365 (forall!1765 (list!2914 (tokens!1209 printableTokens!2)) lambda!19067)))))

(assert (=> d!223461 (= lt!275365 (forall!1766 (tokens!1209 printableTokens!2) lambda!19067))))

(assert (=> d!223461 (not (isEmpty!4699 (rules!8210 printableTokens!2)))))

(assert (=> d!223461 (= (rulesProduceEachTokenIndividually!578 Lexer!1254 (rules!8210 printableTokens!2) (tokens!1209 printableTokens!2)) lt!275365)))

(declare-fun b!641445 () Bool)

(assert (=> b!641445 (= e!391942 (= lt!275365 (rulesProduceEachTokenIndividuallyList!339 Lexer!1254 (rules!8210 printableTokens!2) (list!2914 (tokens!1209 printableTokens!2)))))))

(assert (= (and d!223461 res!279173) b!641445))

(assert (=> d!223461 m!912653))

(assert (=> d!223461 m!912653))

(declare-fun m!913762 () Bool)

(assert (=> d!223461 m!913762))

(declare-fun m!913764 () Bool)

(assert (=> d!223461 m!913764))

(assert (=> d!223461 m!912573))

(assert (=> b!641445 m!912653))

(assert (=> b!641445 m!912653))

(assert (=> b!641445 m!912743))

(assert (=> b!640651 d!223461))

(declare-fun d!223463 () Bool)

(declare-fun ++!1846 (List!6885 List!6885) List!6885)

(assert (=> d!223463 (forall!1768 (++!1846 (list!2913 (BalanceConc!4655 Empty!2321)) (Cons!6871 0 Nil!6871)) lambda!18950)))

(declare-fun lt!275368 () Unit!11924)

(declare-fun choose!4640 (List!6885 List!6885 Int) Unit!11924)

(assert (=> d!223463 (= lt!275368 (choose!4640 (list!2913 (BalanceConc!4655 Empty!2321)) (Cons!6871 0 Nil!6871) lambda!18950))))

(assert (=> d!223463 (forall!1768 (list!2913 (BalanceConc!4655 Empty!2321)) lambda!18950)))

(assert (=> d!223463 (= (lemmaConcatPreservesForall!47 (list!2913 (BalanceConc!4655 Empty!2321)) (Cons!6871 0 Nil!6871) lambda!18950) lt!275368)))

(declare-fun bs!79028 () Bool)

(assert (= bs!79028 d!223463))

(assert (=> bs!79028 m!912545))

(declare-fun m!913766 () Bool)

(assert (=> bs!79028 m!913766))

(assert (=> bs!79028 m!913766))

(declare-fun m!913768 () Bool)

(assert (=> bs!79028 m!913768))

(assert (=> bs!79028 m!912545))

(declare-fun m!913770 () Bool)

(assert (=> bs!79028 m!913770))

(assert (=> bs!79028 m!912545))

(declare-fun m!913772 () Bool)

(assert (=> bs!79028 m!913772))

(assert (=> b!640625 d!223463))

(declare-fun d!223465 () Bool)

(declare-fun list!2919 (Conc!2321) List!6885)

(assert (=> d!223465 (= (list!2913 (BalanceConc!4655 Empty!2321)) (list!2919 (c!117095 (BalanceConc!4655 Empty!2321))))))

(declare-fun bs!79029 () Bool)

(assert (= bs!79029 d!223465))

(declare-fun m!913774 () Bool)

(assert (=> bs!79029 m!913774))

(assert (=> b!640625 d!223465))

(declare-fun bs!79030 () Bool)

(declare-fun d!223467 () Bool)

(assert (= bs!79030 (and d!223467 b!640495)))

(declare-fun lambda!19068 () Int)

(assert (=> bs!79030 (= lambda!19068 lambda!18868)))

(declare-fun bs!79031 () Bool)

(assert (= bs!79031 (and d!223467 b!641221)))

(assert (=> bs!79031 (not (= lambda!19068 lambda!19038))))

(assert (=> bs!79031 (= lambda!19068 lambda!19041)))

(declare-fun bs!79032 () Bool)

(assert (= bs!79032 (and d!223467 d!223103)))

(assert (=> bs!79032 (= lambda!19068 lambda!18927)))

(declare-fun bs!79033 () Bool)

(assert (= bs!79033 (and d!223467 b!641239)))

(assert (=> bs!79033 (not (= lambda!19068 lambda!19043))))

(declare-fun bs!79034 () Bool)

(assert (= bs!79034 (and d!223467 d!223095)))

(assert (=> bs!79034 (not (= lambda!19068 lambda!18873))))

(declare-fun bs!79035 () Bool)

(assert (= bs!79035 (and d!223467 d!223117)))

(assert (=> bs!79035 (= lambda!19068 lambda!18944)))

(declare-fun bs!79036 () Bool)

(assert (= bs!79036 (and d!223467 b!640539)))

(assert (=> bs!79036 (not (= lambda!19068 lambda!18924))))

(assert (=> bs!79035 (not (= lambda!19068 lambda!18945))))

(declare-fun bs!79037 () Bool)

(assert (= bs!79037 (and d!223467 d!223287)))

(assert (=> bs!79037 (= lambda!19068 lambda!19047)))

(assert (=> bs!79033 (not (= lambda!19068 lambda!19044))))

(assert (=> bs!79033 (= lambda!19068 lambda!19046)))

(assert (=> bs!79036 (not (= lambda!19068 lambda!18925))))

(declare-fun bs!79038 () Bool)

(assert (= bs!79038 (and d!223467 d!223283)))

(assert (=> bs!79038 (= lambda!19068 lambda!19042)))

(assert (=> bs!79031 (not (= lambda!19068 lambda!19040))))

(assert (=> bs!79036 (not (= lambda!19068 lambda!18923))))

(assert (=> bs!79036 (= lambda!19068 lambda!18926)))

(assert (=> bs!79031 (not (= lambda!19068 lambda!19039))))

(assert (=> bs!79033 (not (= lambda!19068 lambda!19045))))

(declare-fun lambda!19069 () Int)

(assert (=> d!223467 (not (= lambda!19069 lambda!19068))))

(assert (=> bs!79030 (not (= lambda!19069 lambda!18868))))

(assert (=> bs!79031 (not (= lambda!19069 lambda!19038))))

(assert (=> bs!79031 (not (= lambda!19069 lambda!19041))))

(assert (=> bs!79032 (not (= lambda!19069 lambda!18927))))

(assert (=> bs!79033 (not (= lambda!19069 lambda!19043))))

(assert (=> bs!79034 (not (= lambda!19069 lambda!18873))))

(assert (=> bs!79035 (not (= lambda!19069 lambda!18944))))

(assert (=> bs!79036 (not (= lambda!19069 lambda!18924))))

(assert (=> bs!79035 (= lambda!19069 lambda!18945)))

(assert (=> bs!79037 (not (= lambda!19069 lambda!19047))))

(assert (=> bs!79033 (not (= lambda!19069 lambda!19044))))

(assert (=> bs!79033 (not (= lambda!19069 lambda!19046))))

(assert (=> bs!79036 (not (= lambda!19069 lambda!18925))))

(assert (=> bs!79038 (not (= lambda!19069 lambda!19042))))

(assert (=> bs!79031 (not (= lambda!19069 lambda!19040))))

(assert (=> bs!79036 (not (= lambda!19069 lambda!18923))))

(assert (=> bs!79036 (not (= lambda!19069 lambda!18926))))

(assert (=> bs!79031 (not (= lambda!19069 lambda!19039))))

(assert (=> bs!79033 (not (= lambda!19069 lambda!19045))))

(assert (=> d!223467 (forall!1760 (t!84893 lt!274712) lambda!19069)))

(declare-fun lt!275369 () Unit!11924)

(declare-fun e!391946 () Unit!11924)

(assert (=> d!223467 (= lt!275369 e!391946)))

(declare-fun c!117241 () Bool)

(assert (=> d!223467 (= c!117241 ((_ is Nil!6869) (t!84893 lt!274712)))))

(assert (=> d!223467 (forall!1760 (t!84893 lt!274712) lambda!19068)))

(assert (=> d!223467 (= (lemmaRemoveIdsPreservesRules!0 (t!84893 lt!274712)) lt!275369)))

(declare-fun b!641449 () Bool)

(declare-fun Unit!11961 () Unit!11924)

(assert (=> b!641449 (= e!391946 Unit!11961)))

(declare-fun b!641450 () Bool)

(declare-fun Unit!11962 () Unit!11924)

(assert (=> b!641450 (= e!391946 Unit!11962)))

(declare-fun lt!275370 () Unit!11924)

(assert (=> b!641450 (= lt!275370 (lemmaRemoveIdsPreservesRules!0 (t!84893 (t!84893 lt!274712))))))

(assert (= (and d!223467 c!117241) b!641449))

(assert (= (and d!223467 (not c!117241)) b!641450))

(declare-fun m!913776 () Bool)

(assert (=> d!223467 m!913776))

(declare-fun m!913778 () Bool)

(assert (=> d!223467 m!913778))

(declare-fun m!913780 () Bool)

(assert (=> b!641450 m!913780))

(assert (=> b!640605 d!223467))

(declare-fun bs!79039 () Bool)

(declare-fun d!223469 () Bool)

(assert (= bs!79039 (and d!223469 d!223425)))

(declare-fun lambda!19070 () Int)

(assert (=> bs!79039 (= lambda!19070 lambda!19055)))

(declare-fun bs!79040 () Bool)

(assert (= bs!79040 (and d!223469 d!223165)))

(assert (=> bs!79040 (= lambda!19070 lambda!18955)))

(declare-fun bs!79041 () Bool)

(assert (= bs!79041 (and d!223469 d!223355)))

(assert (=> bs!79041 (= lambda!19070 lambda!19048)))

(declare-fun bs!79042 () Bool)

(assert (= bs!79042 (and d!223469 d!223221)))

(assert (=> bs!79042 (= lambda!19070 lambda!18982)))

(declare-fun bs!79043 () Bool)

(assert (= bs!79043 (and d!223469 d!223207)))

(assert (=> bs!79043 (= lambda!19070 lambda!18977)))

(declare-fun bs!79044 () Bool)

(assert (= bs!79044 (and d!223469 d!223201)))

(assert (=> bs!79044 (= lambda!19070 lambda!18976)))

(declare-fun bs!79045 () Bool)

(assert (= bs!79045 (and d!223469 d!223181)))

(assert (=> bs!79045 (= lambda!19070 lambda!18973)))

(declare-fun bs!79046 () Bool)

(assert (= bs!79046 (and d!223469 d!223437)))

(assert (=> bs!79046 (= lambda!19070 lambda!19059)))

(declare-fun bs!79047 () Bool)

(assert (= bs!79047 (and d!223469 d!223211)))

(assert (=> bs!79047 (= lambda!19070 lambda!18981)))

(declare-fun bs!79048 () Bool)

(assert (= bs!79048 (and d!223469 d!223159)))

(assert (=> bs!79048 (= lambda!19070 lambda!18954)))

(declare-fun bs!79049 () Bool)

(assert (= bs!79049 (and d!223469 d!223459)))

(assert (=> bs!79049 (= lambda!19070 lambda!19062)))

(declare-fun bs!79050 () Bool)

(assert (= bs!79050 (and d!223469 d!223195)))

(assert (=> bs!79050 (= lambda!19070 lambda!18975)))

(declare-fun bs!79051 () Bool)

(assert (= bs!79051 (and d!223469 d!223223)))

(assert (=> bs!79051 (= lambda!19070 lambda!18983)))

(declare-fun bs!79052 () Bool)

(assert (= bs!79052 (and d!223469 d!223365)))

(assert (=> bs!79052 (= lambda!19070 lambda!19051)))

(declare-fun bs!79053 () Bool)

(assert (= bs!79053 (and d!223469 d!223451)))

(assert (=> bs!79053 (= lambda!19070 lambda!19061)))

(declare-fun bs!79054 () Bool)

(assert (= bs!79054 (and d!223469 d!223189)))

(assert (=> bs!79054 (= lambda!19070 lambda!18974)))

(declare-fun bs!79055 () Bool)

(assert (= bs!79055 (and d!223469 d!223271)))

(assert (=> bs!79055 (= lambda!19070 lambda!19037)))

(declare-fun bs!79056 () Bool)

(assert (= bs!79056 (and d!223469 d!223169)))

(assert (=> bs!79056 (= lambda!19070 lambda!18959)))

(declare-fun bs!79057 () Bool)

(assert (= bs!79057 (and d!223469 d!223361)))

(assert (=> bs!79057 (= lambda!19070 lambda!19050)))

(declare-fun bs!79058 () Bool)

(assert (= bs!79058 (and d!223469 d!223359)))

(assert (=> bs!79058 (= lambda!19070 lambda!19049)))

(declare-fun bs!79059 () Bool)

(assert (= bs!79059 (and d!223469 d!223435)))

(assert (=> bs!79059 (= lambda!19070 lambda!19058)))

(declare-fun bs!79060 () Bool)

(assert (= bs!79060 (and d!223469 d!223399)))

(assert (=> bs!79060 (= lambda!19070 lambda!19052)))

(assert (=> d!223469 (= (inv!8707 (_2!4050 (_1!4051 (h!12269 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))))) (forall!1763 (exprs!699 (_2!4050 (_1!4051 (h!12269 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364)))))))))) lambda!19070))))

(declare-fun bs!79061 () Bool)

(assert (= bs!79061 d!223469))

(declare-fun m!913782 () Bool)

(assert (=> bs!79061 m!913782))

(assert (=> b!640679 d!223469))

(declare-fun d!223471 () Bool)

(declare-fun res!279180 () Bool)

(declare-fun e!391951 () Bool)

(assert (=> d!223471 (=> (not res!279180) (not e!391951))))

(declare-fun valid!592 (MutableMap!638) Bool)

(assert (=> d!223471 (= res!279180 (valid!592 (cache!1025 cacheDown!364)))))

(assert (=> d!223471 (= (validCacheMapDown!45 (cache!1025 cacheDown!364)) e!391951)))

(declare-fun b!641457 () Bool)

(declare-fun res!279181 () Bool)

(assert (=> b!641457 (=> (not res!279181) (not e!391951))))

(declare-fun invariantList!116 (List!6882) Bool)

(declare-datatypes ((ListMap!281 0))(
  ( (ListMap!282 (toList!478 List!6882)) )
))
(declare-fun map!1509 (MutableMap!638) ListMap!281)

(assert (=> b!641457 (= res!279181 (invariantList!116 (toList!478 (map!1509 (cache!1025 cacheDown!364)))))))

(declare-fun b!641458 () Bool)

(declare-fun lambda!19073 () Int)

(declare-fun forall!1771 (List!6882 Int) Bool)

(assert (=> b!641458 (= e!391951 (forall!1771 (toList!478 (map!1509 (cache!1025 cacheDown!364))) lambda!19073))))

(assert (= (and d!223471 res!279180) b!641457))

(assert (= (and b!641457 res!279181) b!641458))

(declare-fun m!913785 () Bool)

(assert (=> d!223471 m!913785))

(declare-fun m!913787 () Bool)

(assert (=> b!641457 m!913787))

(declare-fun m!913789 () Bool)

(assert (=> b!641457 m!913789))

(assert (=> b!641458 m!913787))

(declare-fun m!913791 () Bool)

(assert (=> b!641458 m!913791))

(assert (=> b!640655 d!223471))

(declare-fun d!223473 () Bool)

(declare-fun res!279182 () Bool)

(declare-fun e!391952 () Bool)

(assert (=> d!223473 (=> res!279182 e!391952)))

(assert (=> d!223473 (= res!279182 ((_ is Nil!6870) (list!2910 (map!1500 lt!274704 lambda!18869))))))

(assert (=> d!223473 (= (forall!1758 (list!2910 (map!1500 lt!274704 lambda!18869)) lambda!18870) e!391952)))

(declare-fun b!641459 () Bool)

(declare-fun e!391953 () Bool)

(assert (=> b!641459 (= e!391952 e!391953)))

(declare-fun res!279183 () Bool)

(assert (=> b!641459 (=> (not res!279183) (not e!391953))))

(assert (=> b!641459 (= res!279183 (dynLambda!3753 lambda!18870 (h!12271 (list!2910 (map!1500 lt!274704 lambda!18869)))))))

(declare-fun b!641460 () Bool)

(assert (=> b!641460 (= e!391953 (forall!1758 (t!84894 (list!2910 (map!1500 lt!274704 lambda!18869))) lambda!18870))))

(assert (= (and d!223473 (not res!279182)) b!641459))

(assert (= (and b!641459 res!279183) b!641460))

(declare-fun b_lambda!25301 () Bool)

(assert (=> (not b_lambda!25301) (not b!641459)))

(declare-fun m!913793 () Bool)

(assert (=> b!641459 m!913793))

(declare-fun m!913795 () Bool)

(assert (=> b!641460 m!913795))

(assert (=> d!223093 d!223473))

(declare-fun d!223475 () Bool)

(assert (=> d!223475 (= (list!2910 (map!1500 lt!274704 lambda!18869)) (list!2912 (c!117094 (map!1500 lt!274704 lambda!18869))))))

(declare-fun bs!79062 () Bool)

(assert (= bs!79062 d!223475))

(declare-fun m!913797 () Bool)

(assert (=> bs!79062 m!913797))

(assert (=> d!223093 d!223475))

(declare-fun lt!275375 () Bool)

(declare-fun d!223477 () Bool)

(assert (=> d!223477 (= lt!275375 (forall!1758 (list!2912 (c!117094 (map!1500 lt!274704 lambda!18869))) lambda!18870))))

(declare-fun e!391960 () Bool)

(assert (=> d!223477 (= lt!275375 e!391960)))

(declare-fun res!279188 () Bool)

(assert (=> d!223477 (=> res!279188 e!391960)))

(assert (=> d!223477 (= res!279188 ((_ is Empty!2320) (c!117094 (map!1500 lt!274704 lambda!18869))))))

(assert (=> d!223477 (= (forall!1759 (c!117094 (map!1500 lt!274704 lambda!18869)) lambda!18870) lt!275375)))

(declare-fun e!391961 () Bool)

(declare-fun b!641470 () Bool)

(declare-fun forall!1772 (IArray!4641 Int) Bool)

(assert (=> b!641470 (= e!391961 (forall!1772 (xs!4961 (c!117094 (map!1500 lt!274704 lambda!18869))) lambda!18870))))

(declare-fun e!391962 () Bool)

(declare-fun b!641472 () Bool)

(assert (=> b!641472 (= e!391962 (forall!1759 (right!5796 (c!117094 (map!1500 lt!274704 lambda!18869))) lambda!18870))))

(declare-fun b!641469 () Bool)

(assert (=> b!641469 (= e!391960 e!391961)))

(declare-fun c!117244 () Bool)

(assert (=> b!641469 (= c!117244 ((_ is Leaf!3525) (c!117094 (map!1500 lt!274704 lambda!18869))))))

(declare-fun b!641471 () Bool)

(assert (=> b!641471 (= e!391961 e!391962)))

(declare-fun lt!275376 () Unit!11924)

(declare-fun lemmaForallConcat!46 (List!6884 List!6884 Int) Unit!11924)

(assert (=> b!641471 (= lt!275376 (lemmaForallConcat!46 (list!2912 (left!5466 (c!117094 (map!1500 lt!274704 lambda!18869)))) (list!2912 (right!5796 (c!117094 (map!1500 lt!274704 lambda!18869)))) lambda!18870))))

(declare-fun res!279189 () Bool)

(assert (=> b!641471 (= res!279189 (forall!1759 (left!5466 (c!117094 (map!1500 lt!274704 lambda!18869))) lambda!18870))))

(assert (=> b!641471 (=> (not res!279189) (not e!391962))))

(assert (= (and d!223477 (not res!279188)) b!641469))

(assert (= (and b!641469 c!117244) b!641470))

(assert (= (and b!641469 (not c!117244)) b!641471))

(assert (= (and b!641471 res!279189) b!641472))

(assert (=> d!223477 m!913797))

(assert (=> d!223477 m!913797))

(declare-fun m!913799 () Bool)

(assert (=> d!223477 m!913799))

(declare-fun m!913801 () Bool)

(assert (=> b!641470 m!913801))

(declare-fun m!913803 () Bool)

(assert (=> b!641472 m!913803))

(declare-fun m!913805 () Bool)

(assert (=> b!641471 m!913805))

(declare-fun m!913807 () Bool)

(assert (=> b!641471 m!913807))

(assert (=> b!641471 m!913805))

(assert (=> b!641471 m!913807))

(declare-fun m!913809 () Bool)

(assert (=> b!641471 m!913809))

(declare-fun m!913811 () Bool)

(assert (=> b!641471 m!913811))

(assert (=> d!223093 d!223477))

(declare-fun d!223479 () Bool)

(declare-fun lt!275377 () Bool)

(assert (=> d!223479 (= lt!275377 (forall!1760 (list!2909 lt!274829) lambda!18927))))

(assert (=> d!223479 (= lt!275377 (forall!1770 (c!117093 lt!274829) lambda!18927))))

(assert (=> d!223479 (= (forall!1761 lt!274829 lambda!18927) lt!275377)))

(declare-fun bs!79063 () Bool)

(assert (= bs!79063 d!223479))

(declare-fun m!913813 () Bool)

(assert (=> bs!79063 m!913813))

(assert (=> bs!79063 m!913813))

(declare-fun m!913815 () Bool)

(assert (=> bs!79063 m!913815))

(declare-fun m!913817 () Bool)

(assert (=> bs!79063 m!913817))

(assert (=> d!223103 d!223479))

(assert (=> d!223103 d!223301))

(declare-fun bs!79064 () Bool)

(declare-fun d!223481 () Bool)

(assert (= bs!79064 (and d!223481 d!223425)))

(declare-fun lambda!19074 () Int)

(assert (=> bs!79064 (= lambda!19074 lambda!19055)))

(declare-fun bs!79065 () Bool)

(assert (= bs!79065 (and d!223481 d!223165)))

(assert (=> bs!79065 (= lambda!19074 lambda!18955)))

(declare-fun bs!79066 () Bool)

(assert (= bs!79066 (and d!223481 d!223355)))

(assert (=> bs!79066 (= lambda!19074 lambda!19048)))

(declare-fun bs!79067 () Bool)

(assert (= bs!79067 (and d!223481 d!223221)))

(assert (=> bs!79067 (= lambda!19074 lambda!18982)))

(declare-fun bs!79068 () Bool)

(assert (= bs!79068 (and d!223481 d!223207)))

(assert (=> bs!79068 (= lambda!19074 lambda!18977)))

(declare-fun bs!79069 () Bool)

(assert (= bs!79069 (and d!223481 d!223201)))

(assert (=> bs!79069 (= lambda!19074 lambda!18976)))

(declare-fun bs!79070 () Bool)

(assert (= bs!79070 (and d!223481 d!223181)))

(assert (=> bs!79070 (= lambda!19074 lambda!18973)))

(declare-fun bs!79071 () Bool)

(assert (= bs!79071 (and d!223481 d!223437)))

(assert (=> bs!79071 (= lambda!19074 lambda!19059)))

(declare-fun bs!79072 () Bool)

(assert (= bs!79072 (and d!223481 d!223211)))

(assert (=> bs!79072 (= lambda!19074 lambda!18981)))

(declare-fun bs!79073 () Bool)

(assert (= bs!79073 (and d!223481 d!223159)))

(assert (=> bs!79073 (= lambda!19074 lambda!18954)))

(declare-fun bs!79074 () Bool)

(assert (= bs!79074 (and d!223481 d!223459)))

(assert (=> bs!79074 (= lambda!19074 lambda!19062)))

(declare-fun bs!79075 () Bool)

(assert (= bs!79075 (and d!223481 d!223195)))

(assert (=> bs!79075 (= lambda!19074 lambda!18975)))

(declare-fun bs!79076 () Bool)

(assert (= bs!79076 (and d!223481 d!223469)))

(assert (=> bs!79076 (= lambda!19074 lambda!19070)))

(declare-fun bs!79077 () Bool)

(assert (= bs!79077 (and d!223481 d!223223)))

(assert (=> bs!79077 (= lambda!19074 lambda!18983)))

(declare-fun bs!79078 () Bool)

(assert (= bs!79078 (and d!223481 d!223365)))

(assert (=> bs!79078 (= lambda!19074 lambda!19051)))

(declare-fun bs!79079 () Bool)

(assert (= bs!79079 (and d!223481 d!223451)))

(assert (=> bs!79079 (= lambda!19074 lambda!19061)))

(declare-fun bs!79080 () Bool)

(assert (= bs!79080 (and d!223481 d!223189)))

(assert (=> bs!79080 (= lambda!19074 lambda!18974)))

(declare-fun bs!79081 () Bool)

(assert (= bs!79081 (and d!223481 d!223271)))

(assert (=> bs!79081 (= lambda!19074 lambda!19037)))

(declare-fun bs!79082 () Bool)

(assert (= bs!79082 (and d!223481 d!223169)))

(assert (=> bs!79082 (= lambda!19074 lambda!18959)))

(declare-fun bs!79083 () Bool)

(assert (= bs!79083 (and d!223481 d!223361)))

(assert (=> bs!79083 (= lambda!19074 lambda!19050)))

(declare-fun bs!79084 () Bool)

(assert (= bs!79084 (and d!223481 d!223359)))

(assert (=> bs!79084 (= lambda!19074 lambda!19049)))

(declare-fun bs!79085 () Bool)

(assert (= bs!79085 (and d!223481 d!223435)))

(assert (=> bs!79085 (= lambda!19074 lambda!19058)))

(declare-fun bs!79086 () Bool)

(assert (= bs!79086 (and d!223481 d!223399)))

(assert (=> bs!79086 (= lambda!19074 lambda!19052)))

(assert (=> d!223481 (= (inv!8707 setElem!2948) (forall!1763 (exprs!699 setElem!2948) lambda!19074))))

(declare-fun bs!79087 () Bool)

(assert (= bs!79087 d!223481))

(declare-fun m!913819 () Bool)

(assert (=> bs!79087 m!913819))

(assert (=> setNonEmpty!2948 d!223481))

(declare-fun d!223483 () Bool)

(assert (=> d!223483 (= (usesJsonRules!0 (get!2484 (_1!4052 lt!274850))) (= (rules!8210 (get!2484 (_1!4052 lt!274850))) (rules!109 JsonLexer!197)))))

(declare-fun bs!79088 () Bool)

(assert (= bs!79088 d!223483))

(assert (=> bs!79088 m!912257))

(assert (=> b!640569 d!223483))

(declare-fun d!223485 () Bool)

(assert (=> d!223485 (= (get!2484 (_1!4052 lt!274850)) (v!16998 (_1!4052 lt!274850)))))

(assert (=> b!640569 d!223485))

(assert (=> d!223111 d!223231))

(assert (=> d!223111 d!223239))

(declare-fun d!223487 () Bool)

(assert (=> d!223487 (= (isEmpty!4700 (_1!4052 lt!274879)) (not ((_ is Some!1660) (_1!4052 lt!274879))))))

(assert (=> d!223111 d!223487))

(assert (=> d!223111 d!223373))

(declare-fun d!223489 () Bool)

(assert (=> d!223489 (= (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005D)) (dynLambda!3758 (toValue!2319 (injection!9 KeywordValueInjection!43)) (singletonSeq!437 #x005D)))))

(declare-fun b_lambda!25303 () Bool)

(assert (=> (not b_lambda!25303) (not d!223489)))

(declare-fun bs!79089 () Bool)

(assert (= bs!79089 d!223489))

(assert (=> bs!79089 m!912495))

(declare-fun m!913821 () Bool)

(assert (=> bs!79089 m!913821))

(assert (=> d!223111 d!223489))

(declare-fun bs!79090 () Bool)

(declare-fun d!223491 () Bool)

(assert (= bs!79090 (and d!223491 d!223175)))

(declare-fun lambda!19075 () Int)

(assert (=> bs!79090 (= (= (rules!109 JsonLexer!197) (rules!8210 printableTokens!2)) (= lambda!19075 lambda!18972))))

(declare-fun bs!79091 () Bool)

(assert (= bs!79091 (and d!223491 d!223229)))

(assert (=> bs!79091 (= lambda!19075 lambda!18986)))

(declare-fun bs!79092 () Bool)

(assert (= bs!79092 (and d!223491 d!223445)))

(assert (=> bs!79092 (= lambda!19075 lambda!19060)))

(declare-fun bs!79093 () Bool)

(assert (= bs!79093 (and d!223491 d!223461)))

(assert (=> bs!79093 (= (= (rules!109 JsonLexer!197) (rules!8210 printableTokens!2)) (= lambda!19075 lambda!19067))))

(declare-fun b!641477 () Bool)

(declare-fun e!391966 () Bool)

(assert (=> b!641477 (= e!391966 true)))

(declare-fun b!641476 () Bool)

(declare-fun e!391965 () Bool)

(assert (=> b!641476 (= e!391965 e!391966)))

(declare-fun b!641475 () Bool)

(declare-fun e!391964 () Bool)

(assert (=> b!641475 (= e!391964 e!391965)))

(assert (=> d!223491 e!391964))

(assert (= b!641476 b!641477))

(assert (= b!641475 b!641476))

(assert (= (and d!223491 ((_ is Cons!6865) (rules!109 JsonLexer!197))) b!641475))

(assert (=> b!641477 (< (dynLambda!3755 order!5173 (toValue!2319 (transformation!1378 (h!12266 (rules!109 JsonLexer!197))))) (dynLambda!3756 order!5175 lambda!19075))))

(assert (=> b!641477 (< (dynLambda!3757 order!5177 (toChars!2178 (transformation!1378 (h!12266 (rules!109 JsonLexer!197))))) (dynLambda!3756 order!5175 lambda!19075))))

(assert (=> d!223491 true))

(declare-fun lt!275379 () tuple3!570)

(assert (=> d!223491 (= (_1!4054 lt!275379) (forall!1766 lt!274877 lambda!19075))))

(declare-fun e!391963 () tuple3!570)

(assert (=> d!223491 (= lt!275379 e!391963)))

(declare-fun c!117246 () Bool)

(assert (=> d!223491 (= c!117246 (isEmpty!4703 lt!274877))))

(assert (=> d!223491 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223491 (= (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) lt!274877 (_2!4052 lt!274706) (_3!335 lt!274706)) lt!275379)))

(declare-fun b!641473 () Bool)

(assert (=> b!641473 (= e!391963 (tuple3!571 true (_2!4052 lt!274706) (_3!335 lt!274706)))))

(declare-fun b!641474 () Bool)

(declare-fun lt!275378 () tuple3!570)

(declare-fun lt!275380 () tuple3!570)

(assert (=> b!641474 (= e!391963 (tuple3!571 (and (_1!4054 lt!275378) (_1!4054 lt!275380)) (_2!4054 lt!275380) (_3!336 lt!275380)))))

(assert (=> b!641474 (= lt!275378 (rulesProduceIndividualTokenMem!4 Lexer!1254 (rules!109 JsonLexer!197) (head!1350 lt!274877) (_2!4052 lt!274706) (_3!335 lt!274706)))))

(assert (=> b!641474 (= lt!275380 (rulesProduceEachTokenIndividuallyMem!7 Lexer!1254 (rules!109 JsonLexer!197) (tail!906 lt!274877) (_2!4054 lt!275378) (_3!336 lt!275378)))))

(assert (= (and d!223491 c!117246) b!641473))

(assert (= (and d!223491 (not c!117246)) b!641474))

(declare-fun m!913823 () Bool)

(assert (=> d!223491 m!913823))

(declare-fun m!913825 () Bool)

(assert (=> d!223491 m!913825))

(assert (=> d!223491 m!912257))

(assert (=> d!223491 m!912325))

(declare-fun m!913827 () Bool)

(assert (=> b!641474 m!913827))

(assert (=> b!641474 m!912257))

(assert (=> b!641474 m!913827))

(declare-fun m!913829 () Bool)

(assert (=> b!641474 m!913829))

(declare-fun m!913831 () Bool)

(assert (=> b!641474 m!913831))

(assert (=> b!641474 m!912257))

(assert (=> b!641474 m!913831))

(declare-fun m!913833 () Bool)

(assert (=> b!641474 m!913833))

(assert (=> d!223111 d!223491))

(declare-fun d!223493 () Bool)

(declare-fun e!391967 () Bool)

(assert (=> d!223493 e!391967))

(declare-fun res!279190 () Bool)

(assert (=> d!223493 (=> (not res!279190) (not e!391967))))

(declare-fun lt!275381 () BalanceConc!4648)

(assert (=> d!223493 (= res!279190 (= (list!2914 lt!275381) (Cons!6864 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005D)) (rBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005D Nil!6863)) Nil!6864)))))

(assert (=> d!223493 (= lt!275381 (singleton!211 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005D)) (rBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005D Nil!6863))))))

(assert (=> d!223493 (= (singletonSeq!436 (Token!2479 (apply!1631 (injection!9 KeywordValueInjection!43) (singletonSeq!437 #x005D)) (rBracketRule!0 JsonLexer!197) 1 (Cons!6863 #x005D Nil!6863))) lt!275381)))

(declare-fun b!641478 () Bool)

(assert (=> b!641478 (= e!391967 (isBalanced!614 (c!117092 lt!275381)))))

(assert (= (and d!223493 res!279190) b!641478))

(declare-fun m!913835 () Bool)

(assert (=> d!223493 m!913835))

(declare-fun m!913837 () Bool)

(assert (=> d!223493 m!913837))

(declare-fun m!913839 () Bool)

(assert (=> b!641478 m!913839))

(assert (=> d!223111 d!223493))

(declare-fun d!223495 () Bool)

(declare-fun e!391968 () Bool)

(assert (=> d!223495 e!391968))

(declare-fun res!279191 () Bool)

(assert (=> d!223495 (=> (not res!279191) (not e!391968))))

(declare-fun lt!275382 () BalanceConc!4646)

(assert (=> d!223495 (= res!279191 (= (list!2916 lt!275382) (Cons!6863 #x005D Nil!6863)))))

(assert (=> d!223495 (= lt!275382 (singleton!212 #x005D))))

(assert (=> d!223495 (= (singletonSeq!437 #x005D) lt!275382)))

(declare-fun b!641479 () Bool)

(assert (=> b!641479 (= e!391968 (isBalanced!615 (c!117091 lt!275382)))))

(assert (= (and d!223495 res!279191) b!641479))

(declare-fun bs!79094 () Bool)

(declare-fun s!24253 () Bool)

(assert (= bs!79094 (and neg-inst!304 s!24253)))

(declare-fun res!279192 () Bool)

(declare-fun e!391969 () Bool)

(assert (=> bs!79094 (=> res!279192 e!391969)))

(assert (=> bs!79094 (= res!279192 (not (= (list!2916 lt!275382) (list!2916 lt!275359))))))

(assert (=> bs!79094 (=> true e!391969)))

(declare-fun b!641480 () Bool)

(assert (=> b!641480 (= e!391969 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!79094 (not res!279192)) b!641480))

(declare-fun bs!79095 () Bool)

(declare-fun m!913841 () Bool)

(assert (= bs!79095 (and m!913841 m!913728)))

(assert (=> bs!79095 m!913841))

(assert (=> bs!79095 m!913728))

(assert (=> bs!79095 s!24253))

(declare-fun bs!79096 () Bool)

(declare-fun s!24255 () Bool)

(assert (= bs!79096 (and neg-inst!304 s!24255)))

(declare-fun res!279193 () Bool)

(declare-fun e!391970 () Bool)

(assert (=> bs!79096 (=> res!279193 e!391970)))

(assert (=> bs!79096 (= res!279193 (not (= (list!2916 lt!275382) (list!2916 x!140421))))))

(assert (=> bs!79096 (=> true e!391970)))

(declare-fun b!641481 () Bool)

(assert (=> b!641481 (= e!391970 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!79096 (not res!279193)) b!641481))

(declare-fun bs!79097 () Bool)

(assert (= bs!79097 (and m!913841 m!913028)))

(assert (=> bs!79097 m!913841))

(assert (=> bs!79097 m!913028))

(assert (=> bs!79097 s!24255))

(declare-fun bs!79098 () Bool)

(declare-fun s!24257 () Bool)

(assert (= bs!79098 (and neg-inst!304 s!24257)))

(declare-fun res!279194 () Bool)

(declare-fun e!391971 () Bool)

(assert (=> bs!79098 (=> res!279194 e!391971)))

(assert (=> bs!79098 (= res!279194 (not (= (list!2916 lt!275382) (list!2916 x!140374))))))

(assert (=> bs!79098 (=> true e!391971)))

(declare-fun b!641482 () Bool)

(assert (=> b!641482 (= e!391971 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!79098 (not res!279194)) b!641482))

(declare-fun bs!79099 () Bool)

(assert (= bs!79099 (and m!913841 m!912978 m!912980)))

(assert (=> bs!79099 m!913841))

(assert (=> bs!79099 m!912978))

(assert (=> bs!79099 s!24257))

(declare-fun bs!79100 () Bool)

(declare-fun s!24259 () Bool)

(assert (= bs!79100 (and neg-inst!304 s!24259)))

(declare-fun res!279195 () Bool)

(declare-fun e!391972 () Bool)

(assert (=> bs!79100 (=> res!279195 e!391972)))

(assert (=> bs!79100 (= res!279195 (not (= (list!2916 lt!275382) (list!2916 lt!275166))))))

(assert (=> bs!79100 (=> true e!391972)))

(declare-fun b!641483 () Bool)

(assert (=> b!641483 (= e!391972 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!79100 (not res!279195)) b!641483))

(declare-fun bs!79101 () Bool)

(assert (= bs!79101 (and m!913841 m!912970)))

(assert (=> bs!79101 m!913841))

(assert (=> bs!79101 m!912970))

(assert (=> bs!79101 s!24259))

(declare-fun bs!79102 () Bool)

(declare-fun s!24261 () Bool)

(assert (= bs!79102 (and neg-inst!304 s!24261)))

(declare-fun res!279196 () Bool)

(declare-fun e!391973 () Bool)

(assert (=> bs!79102 (=> res!279196 e!391973)))

(assert (=> bs!79102 (= res!279196 (not (= (list!2916 lt!275382) (list!2916 lt!275382))))))

(assert (=> bs!79102 (=> true e!391973)))

(declare-fun b!641484 () Bool)

(assert (=> b!641484 (= e!391973 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79102 (not res!279196)) b!641484))

(assert (=> m!913841 s!24261))

(declare-fun bs!79103 () Bool)

(declare-fun s!24263 () Bool)

(assert (= bs!79103 (and neg-inst!304 s!24263)))

(declare-fun res!279197 () Bool)

(declare-fun e!391974 () Bool)

(assert (=> bs!79103 (=> res!279197 e!391974)))

(assert (=> bs!79103 (= res!279197 (not (= (list!2916 lt!275382) (list!2916 x!140420))))))

(assert (=> bs!79103 (=> true e!391974)))

(declare-fun b!641485 () Bool)

(assert (=> b!641485 (= e!391974 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!79103 (not res!279197)) b!641485))

(declare-fun bs!79104 () Bool)

(assert (= bs!79104 (and m!913841 m!913026)))

(assert (=> bs!79104 m!913841))

(assert (=> bs!79104 m!913026))

(assert (=> bs!79104 s!24263))

(declare-fun bs!79105 () Bool)

(declare-fun s!24265 () Bool)

(assert (= bs!79105 (and neg-inst!304 s!24265)))

(declare-fun res!279198 () Bool)

(declare-fun e!391975 () Bool)

(assert (=> bs!79105 (=> res!279198 e!391975)))

(assert (=> bs!79105 (= res!279198 (not (= (list!2916 lt!275382) (list!2916 x!140419))))))

(assert (=> bs!79105 (=> true e!391975)))

(declare-fun b!641486 () Bool)

(assert (=> b!641486 (= e!391975 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!79105 (not res!279198)) b!641486))

(declare-fun bs!79106 () Bool)

(assert (= bs!79106 (and m!913841 m!913024)))

(assert (=> bs!79106 m!913841))

(assert (=> bs!79106 m!913024))

(assert (=> bs!79106 s!24265))

(declare-fun bs!79107 () Bool)

(declare-fun s!24267 () Bool)

(assert (= bs!79107 (and neg-inst!304 s!24267)))

(declare-fun res!279199 () Bool)

(declare-fun e!391976 () Bool)

(assert (=> bs!79107 (=> res!279199 e!391976)))

(assert (=> bs!79107 (= res!279199 (not (= (list!2916 lt!275382) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79107 (=> true e!391976)))

(declare-fun b!641487 () Bool)

(assert (=> b!641487 (= e!391976 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79107 (not res!279199)) b!641487))

(declare-fun bs!79108 () Bool)

(assert (= bs!79108 (and m!913841 m!912984)))

(assert (=> bs!79108 m!913841))

(assert (=> bs!79108 m!912984))

(assert (=> bs!79108 s!24267))

(declare-fun bs!79109 () Bool)

(declare-fun s!24269 () Bool)

(assert (= bs!79109 (and neg-inst!304 s!24269)))

(declare-fun res!279200 () Bool)

(declare-fun e!391977 () Bool)

(assert (=> bs!79109 (=> res!279200 e!391977)))

(assert (=> bs!79109 (= res!279200 (not (= (list!2916 lt!275382) (list!2916 x!140376))))))

(assert (=> bs!79109 (=> true e!391977)))

(declare-fun b!641488 () Bool)

(assert (=> b!641488 (= e!391977 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!79109 (not res!279200)) b!641488))

(declare-fun bs!79110 () Bool)

(assert (= bs!79110 (and m!913841 m!912998 m!912990)))

(assert (=> bs!79110 m!913841))

(assert (=> bs!79110 m!912990))

(assert (=> bs!79110 s!24269))

(declare-fun bs!79111 () Bool)

(declare-fun s!24271 () Bool)

(assert (= bs!79111 (and neg-inst!304 s!24271)))

(declare-fun res!279201 () Bool)

(declare-fun e!391978 () Bool)

(assert (=> bs!79111 (=> res!279201 e!391978)))

(assert (=> bs!79111 (= res!279201 (not (= (list!2916 lt!275382) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79111 (=> true e!391978)))

(declare-fun b!641489 () Bool)

(assert (=> b!641489 (= e!391978 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79111 (not res!279201)) b!641489))

(declare-fun bs!79112 () Bool)

(assert (= bs!79112 (and m!913841 m!913020)))

(assert (=> bs!79112 m!913841))

(assert (=> bs!79112 m!913020))

(assert (=> bs!79112 s!24271))

(declare-fun bs!79113 () Bool)

(declare-fun s!24273 () Bool)

(assert (= bs!79113 (and neg-inst!304 s!24273)))

(declare-fun res!279202 () Bool)

(declare-fun e!391979 () Bool)

(assert (=> bs!79113 (=> res!279202 e!391979)))

(assert (=> bs!79113 (= res!279202 (not (= (list!2916 lt!275382) (list!2916 x!140375))))))

(assert (=> bs!79113 (=> true e!391979)))

(declare-fun b!641490 () Bool)

(assert (=> b!641490 (= e!391979 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!79113 (not res!279202)) b!641490))

(declare-fun bs!79114 () Bool)

(assert (= bs!79114 (and m!913841 m!912996 m!912988)))

(assert (=> bs!79114 m!913841))

(assert (=> bs!79114 m!912988))

(assert (=> bs!79114 s!24273))

(declare-fun bs!79115 () Bool)

(declare-fun s!24275 () Bool)

(assert (= bs!79115 (and neg-inst!304 s!24275)))

(declare-fun res!279203 () Bool)

(declare-fun e!391980 () Bool)

(assert (=> bs!79115 (=> res!279203 e!391980)))

(assert (=> bs!79115 (= res!279203 (not (= (list!2916 lt!275382) (list!2916 lt!275195))))))

(assert (=> bs!79115 (=> true e!391980)))

(declare-fun b!641491 () Bool)

(assert (=> b!641491 (= e!391980 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!79115 (not res!279203)) b!641491))

(declare-fun bs!79116 () Bool)

(assert (= bs!79116 (and m!913841 m!913082)))

(assert (=> bs!79116 m!913841))

(assert (=> bs!79116 m!913082))

(assert (=> bs!79116 s!24275))

(declare-fun bs!79117 () Bool)

(declare-fun s!24277 () Bool)

(assert (= bs!79117 (and neg-inst!304 s!24277)))

(declare-fun res!279204 () Bool)

(declare-fun e!391981 () Bool)

(assert (=> bs!79117 (=> res!279204 e!391981)))

(assert (=> bs!79117 (= res!279204 (not (= (list!2916 x!140374) (list!2916 lt!275382))))))

(assert (=> bs!79117 (=> true e!391981)))

(declare-fun b!641492 () Bool)

(assert (=> b!641492 (= e!391981 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79117 (not res!279204)) b!641492))

(assert (=> bs!79099 m!912978))

(assert (=> bs!79099 m!913841))

(assert (=> bs!79099 s!24277))

(declare-fun bs!79118 () Bool)

(declare-fun s!24279 () Bool)

(assert (= bs!79118 (and neg-inst!304 s!24279)))

(declare-fun res!279205 () Bool)

(declare-fun e!391982 () Bool)

(assert (=> bs!79118 (=> res!279205 e!391982)))

(assert (=> bs!79118 (= res!279205 (not (= (list!2916 lt!275359) (list!2916 lt!275382))))))

(assert (=> bs!79118 (=> true e!391982)))

(declare-fun b!641493 () Bool)

(assert (=> b!641493 (= e!391982 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79118 (not res!279205)) b!641493))

(assert (=> bs!79095 m!913728))

(assert (=> bs!79095 m!913841))

(assert (=> bs!79095 s!24279))

(declare-fun bs!79119 () Bool)

(declare-fun s!24281 () Bool)

(assert (= bs!79119 (and neg-inst!304 s!24281)))

(declare-fun res!279206 () Bool)

(declare-fun e!391983 () Bool)

(assert (=> bs!79119 (=> res!279206 e!391983)))

(assert (=> bs!79119 (= res!279206 (not (= (list!2916 x!140375) (list!2916 lt!275382))))))

(assert (=> bs!79119 (=> true e!391983)))

(declare-fun b!641494 () Bool)

(assert (=> b!641494 (= e!391983 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79119 (not res!279206)) b!641494))

(assert (=> bs!79114 m!912988))

(assert (=> bs!79114 m!913841))

(assert (=> bs!79114 s!24281))

(declare-fun bs!79120 () Bool)

(declare-fun s!24283 () Bool)

(assert (= bs!79120 (and neg-inst!304 s!24283)))

(declare-fun res!279207 () Bool)

(declare-fun e!391984 () Bool)

(assert (=> bs!79120 (=> res!279207 e!391984)))

(assert (=> bs!79120 (= res!279207 (not (= (list!2916 x!140376) (list!2916 lt!275382))))))

(assert (=> bs!79120 (=> true e!391984)))

(declare-fun b!641495 () Bool)

(assert (=> b!641495 (= e!391984 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79120 (not res!279207)) b!641495))

(assert (=> bs!79110 m!912990))

(assert (=> bs!79110 m!913841))

(assert (=> bs!79110 s!24283))

(declare-fun bs!79121 () Bool)

(declare-fun s!24285 () Bool)

(assert (= bs!79121 (and neg-inst!304 s!24285)))

(declare-fun res!279208 () Bool)

(declare-fun e!391985 () Bool)

(assert (=> bs!79121 (=> res!279208 e!391985)))

(assert (=> bs!79121 (= res!279208 (not (= (list!2916 lt!275195) (list!2916 lt!275382))))))

(assert (=> bs!79121 (=> true e!391985)))

(declare-fun b!641496 () Bool)

(assert (=> b!641496 (= e!391985 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79121 (not res!279208)) b!641496))

(assert (=> bs!79116 m!913082))

(assert (=> bs!79116 m!913841))

(assert (=> bs!79116 s!24285))

(declare-fun bs!79122 () Bool)

(declare-fun s!24287 () Bool)

(assert (= bs!79122 (and neg-inst!304 s!24287)))

(declare-fun res!279209 () Bool)

(declare-fun e!391986 () Bool)

(assert (=> bs!79122 (=> res!279209 e!391986)))

(assert (=> bs!79122 (= res!279209 (not (= (list!2916 x!140419) (list!2916 lt!275382))))))

(assert (=> bs!79122 (=> true e!391986)))

(declare-fun b!641497 () Bool)

(assert (=> b!641497 (= e!391986 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79122 (not res!279209)) b!641497))

(assert (=> bs!79106 m!913024))

(assert (=> bs!79106 m!913841))

(assert (=> bs!79106 s!24287))

(assert (=> m!913841 s!24261))

(declare-fun bs!79123 () Bool)

(declare-fun s!24289 () Bool)

(assert (= bs!79123 (and neg-inst!304 s!24289)))

(declare-fun res!279210 () Bool)

(declare-fun e!391987 () Bool)

(assert (=> bs!79123 (=> res!279210 e!391987)))

(assert (=> bs!79123 (= res!279210 (not (= (list!2916 x!140420) (list!2916 lt!275382))))))

(assert (=> bs!79123 (=> true e!391987)))

(declare-fun b!641498 () Bool)

(assert (=> b!641498 (= e!391987 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79123 (not res!279210)) b!641498))

(assert (=> bs!79104 m!913026))

(assert (=> bs!79104 m!913841))

(assert (=> bs!79104 s!24289))

(declare-fun bs!79124 () Bool)

(declare-fun s!24291 () Bool)

(assert (= bs!79124 (and neg-inst!304 s!24291)))

(declare-fun res!279211 () Bool)

(declare-fun e!391988 () Bool)

(assert (=> bs!79124 (=> res!279211 e!391988)))

(assert (=> bs!79124 (= res!279211 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275382))))))

(assert (=> bs!79124 (=> true e!391988)))

(declare-fun b!641499 () Bool)

(assert (=> b!641499 (= e!391988 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79124 (not res!279211)) b!641499))

(assert (=> bs!79108 m!912984))

(assert (=> bs!79108 m!913841))

(assert (=> bs!79108 s!24291))

(declare-fun bs!79125 () Bool)

(declare-fun s!24293 () Bool)

(assert (= bs!79125 (and neg-inst!304 s!24293)))

(declare-fun res!279212 () Bool)

(declare-fun e!391989 () Bool)

(assert (=> bs!79125 (=> res!279212 e!391989)))

(assert (=> bs!79125 (= res!279212 (not (= (list!2916 lt!275166) (list!2916 lt!275382))))))

(assert (=> bs!79125 (=> true e!391989)))

(declare-fun b!641500 () Bool)

(assert (=> b!641500 (= e!391989 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79125 (not res!279212)) b!641500))

(assert (=> bs!79101 m!912970))

(assert (=> bs!79101 m!913841))

(assert (=> bs!79101 s!24293))

(declare-fun bs!79126 () Bool)

(declare-fun s!24295 () Bool)

(assert (= bs!79126 (and neg-inst!304 s!24295)))

(declare-fun res!279213 () Bool)

(declare-fun e!391990 () Bool)

(assert (=> bs!79126 (=> res!279213 e!391990)))

(assert (=> bs!79126 (= res!279213 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275382))))))

(assert (=> bs!79126 (=> true e!391990)))

(declare-fun b!641501 () Bool)

(assert (=> b!641501 (= e!391990 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79126 (not res!279213)) b!641501))

(assert (=> bs!79112 m!913020))

(assert (=> bs!79112 m!913841))

(assert (=> bs!79112 s!24295))

(declare-fun bs!79127 () Bool)

(declare-fun s!24297 () Bool)

(assert (= bs!79127 (and neg-inst!304 s!24297)))

(declare-fun res!279214 () Bool)

(declare-fun e!391991 () Bool)

(assert (=> bs!79127 (=> res!279214 e!391991)))

(assert (=> bs!79127 (= res!279214 (not (= (list!2916 x!140421) (list!2916 lt!275382))))))

(assert (=> bs!79127 (=> true e!391991)))

(declare-fun b!641502 () Bool)

(assert (=> b!641502 (= e!391991 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79127 (not res!279214)) b!641502))

(assert (=> bs!79097 m!913028))

(assert (=> bs!79097 m!913841))

(assert (=> bs!79097 s!24297))

(declare-fun bs!79128 () Bool)

(declare-fun s!24299 () Bool)

(assert (= bs!79128 (and neg-inst!311 s!24299)))

(declare-fun res!279215 () Bool)

(declare-fun e!391992 () Bool)

(assert (=> bs!79128 (=> res!279215 e!391992)))

(assert (=> bs!79128 (= res!279215 (not (= (list!2916 lt!275382) (list!2916 lt!275166))))))

(assert (=> bs!79128 (=> true e!391992)))

(declare-fun b!641503 () Bool)

(assert (=> b!641503 (= e!391992 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!79128 (not res!279215)) b!641503))

(assert (=> bs!79101 m!913841))

(assert (=> bs!79101 m!912970))

(assert (=> bs!79101 s!24299))

(declare-fun bs!79129 () Bool)

(declare-fun s!24301 () Bool)

(assert (= bs!79129 (and neg-inst!311 s!24301)))

(declare-fun res!279216 () Bool)

(declare-fun e!391993 () Bool)

(assert (=> bs!79129 (=> res!279216 e!391993)))

(assert (=> bs!79129 (= res!279216 (not (= (list!2916 lt!275382) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79129 (=> true e!391993)))

(declare-fun b!641504 () Bool)

(assert (=> b!641504 (= e!391993 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79129 (not res!279216)) b!641504))

(assert (=> bs!79108 m!913841))

(assert (=> bs!79108 m!912984))

(assert (=> bs!79108 s!24301))

(declare-fun bs!79130 () Bool)

(declare-fun s!24303 () Bool)

(assert (= bs!79130 (and neg-inst!311 s!24303)))

(declare-fun res!279217 () Bool)

(declare-fun e!391994 () Bool)

(assert (=> bs!79130 (=> res!279217 e!391994)))

(assert (=> bs!79130 (= res!279217 (not (= (list!2916 lt!275382) (list!2916 x!140421))))))

(assert (=> bs!79130 (=> true e!391994)))

(declare-fun b!641505 () Bool)

(assert (=> b!641505 (= e!391994 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!79130 (not res!279217)) b!641505))

(declare-fun bs!79131 () Bool)

(assert (= bs!79131 (and m!913841 m!913028 m!913036)))

(assert (=> bs!79131 m!913841))

(assert (=> bs!79131 m!913028))

(assert (=> bs!79131 s!24303))

(declare-fun bs!79132 () Bool)

(declare-fun s!24305 () Bool)

(assert (= bs!79132 (and neg-inst!311 s!24305)))

(declare-fun res!279218 () Bool)

(declare-fun e!391995 () Bool)

(assert (=> bs!79132 (=> res!279218 e!391995)))

(assert (=> bs!79132 (= res!279218 (not (= (list!2916 lt!275382) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79132 (=> true e!391995)))

(declare-fun b!641506 () Bool)

(assert (=> b!641506 (= e!391995 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79132 (not res!279218)) b!641506))

(assert (=> bs!79112 m!913841))

(assert (=> bs!79112 m!913020))

(assert (=> bs!79112 s!24305))

(declare-fun bs!79133 () Bool)

(declare-fun s!24307 () Bool)

(assert (= bs!79133 (and neg-inst!311 s!24307)))

(declare-fun res!279219 () Bool)

(declare-fun e!391996 () Bool)

(assert (=> bs!79133 (=> res!279219 e!391996)))

(assert (=> bs!79133 (= res!279219 (not (= (list!2916 lt!275382) (list!2916 lt!275195))))))

(assert (=> bs!79133 (=> true e!391996)))

(declare-fun b!641507 () Bool)

(assert (=> b!641507 (= e!391996 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!79133 (not res!279219)) b!641507))

(assert (=> bs!79116 m!913841))

(assert (=> bs!79116 m!913082))

(assert (=> bs!79116 s!24307))

(declare-fun bs!79134 () Bool)

(declare-fun s!24309 () Bool)

(assert (= bs!79134 (and neg-inst!311 s!24309)))

(declare-fun res!279220 () Bool)

(declare-fun e!391997 () Bool)

(assert (=> bs!79134 (=> res!279220 e!391997)))

(assert (=> bs!79134 (= res!279220 (not (= (list!2916 lt!275382) (list!2916 lt!275359))))))

(assert (=> bs!79134 (=> true e!391997)))

(declare-fun b!641508 () Bool)

(assert (=> b!641508 (= e!391997 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!79134 (not res!279220)) b!641508))

(assert (=> bs!79095 m!913841))

(assert (=> bs!79095 m!913728))

(assert (=> bs!79095 s!24309))

(declare-fun bs!79135 () Bool)

(declare-fun s!24311 () Bool)

(assert (= bs!79135 (and neg-inst!311 s!24311)))

(declare-fun res!279221 () Bool)

(declare-fun e!391998 () Bool)

(assert (=> bs!79135 (=> res!279221 e!391998)))

(assert (=> bs!79135 (= res!279221 (not (= (list!2916 lt!275382) (list!2916 x!140374))))))

(assert (=> bs!79135 (=> true e!391998)))

(declare-fun b!641509 () Bool)

(assert (=> b!641509 (= e!391998 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!79135 (not res!279221)) b!641509))

(declare-fun bs!79136 () Bool)

(assert (= bs!79136 (and m!913841 m!912978)))

(assert (=> bs!79136 m!913841))

(assert (=> bs!79136 m!912978))

(assert (=> bs!79136 s!24311))

(declare-fun bs!79137 () Bool)

(declare-fun s!24313 () Bool)

(assert (= bs!79137 (and neg-inst!311 s!24313)))

(declare-fun res!279222 () Bool)

(declare-fun e!391999 () Bool)

(assert (=> bs!79137 (=> res!279222 e!391999)))

(assert (=> bs!79137 (= res!279222 (not (= (list!2916 lt!275382) (list!2916 x!140420))))))

(assert (=> bs!79137 (=> true e!391999)))

(declare-fun b!641510 () Bool)

(assert (=> b!641510 (= e!391999 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!79137 (not res!279222)) b!641510))

(declare-fun bs!79138 () Bool)

(assert (= bs!79138 (and m!913841 m!913026 m!913034)))

(assert (=> bs!79138 m!913841))

(assert (=> bs!79138 m!913026))

(assert (=> bs!79138 s!24313))

(declare-fun bs!79139 () Bool)

(declare-fun s!24315 () Bool)

(assert (= bs!79139 (and neg-inst!311 s!24315)))

(declare-fun res!279223 () Bool)

(declare-fun e!392000 () Bool)

(assert (=> bs!79139 (=> res!279223 e!392000)))

(assert (=> bs!79139 (= res!279223 (not (= (list!2916 lt!275382) (list!2916 x!140376))))))

(assert (=> bs!79139 (=> true e!392000)))

(declare-fun b!641511 () Bool)

(assert (=> b!641511 (= e!392000 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!79139 (not res!279223)) b!641511))

(declare-fun bs!79140 () Bool)

(assert (= bs!79140 (and m!913841 m!912990)))

(assert (=> bs!79140 m!913841))

(assert (=> bs!79140 m!912990))

(assert (=> bs!79140 s!24315))

(declare-fun bs!79141 () Bool)

(declare-fun s!24317 () Bool)

(assert (= bs!79141 (and neg-inst!311 s!24317)))

(declare-fun res!279224 () Bool)

(declare-fun e!392001 () Bool)

(assert (=> bs!79141 (=> res!279224 e!392001)))

(assert (=> bs!79141 (= res!279224 (not (= (list!2916 lt!275382) (list!2916 lt!275382))))))

(assert (=> bs!79141 (=> true e!392001)))

(declare-fun b!641512 () Bool)

(assert (=> b!641512 (= e!392001 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79141 (not res!279224)) b!641512))

(assert (=> m!913841 s!24317))

(declare-fun bs!79142 () Bool)

(declare-fun s!24319 () Bool)

(assert (= bs!79142 (and neg-inst!311 s!24319)))

(declare-fun res!279225 () Bool)

(declare-fun e!392002 () Bool)

(assert (=> bs!79142 (=> res!279225 e!392002)))

(assert (=> bs!79142 (= res!279225 (not (= (list!2916 lt!275382) (list!2916 x!140375))))))

(assert (=> bs!79142 (=> true e!392002)))

(declare-fun b!641513 () Bool)

(assert (=> b!641513 (= e!392002 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!79142 (not res!279225)) b!641513))

(declare-fun bs!79143 () Bool)

(assert (= bs!79143 (and m!913841 m!912988)))

(assert (=> bs!79143 m!913841))

(assert (=> bs!79143 m!912988))

(assert (=> bs!79143 s!24319))

(declare-fun bs!79144 () Bool)

(declare-fun s!24321 () Bool)

(assert (= bs!79144 (and neg-inst!311 s!24321)))

(declare-fun res!279226 () Bool)

(declare-fun e!392003 () Bool)

(assert (=> bs!79144 (=> res!279226 e!392003)))

(assert (=> bs!79144 (= res!279226 (not (= (list!2916 lt!275382) (list!2916 x!140419))))))

(assert (=> bs!79144 (=> true e!392003)))

(declare-fun b!641514 () Bool)

(assert (=> b!641514 (= e!392003 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!79144 (not res!279226)) b!641514))

(declare-fun bs!79145 () Bool)

(assert (= bs!79145 (and m!913841 m!913016 m!913024)))

(assert (=> bs!79145 m!913841))

(assert (=> bs!79145 m!913024))

(assert (=> bs!79145 s!24321))

(declare-fun bs!79146 () Bool)

(declare-fun s!24323 () Bool)

(assert (= bs!79146 (and neg-inst!311 s!24323)))

(declare-fun res!279227 () Bool)

(declare-fun e!392004 () Bool)

(assert (=> bs!79146 (=> res!279227 e!392004)))

(assert (=> bs!79146 (= res!279227 (not (= (list!2916 lt!275195) (list!2916 lt!275382))))))

(assert (=> bs!79146 (=> true e!392004)))

(declare-fun b!641515 () Bool)

(assert (=> b!641515 (= e!392004 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79146 (not res!279227)) b!641515))

(assert (=> bs!79116 m!913082))

(assert (=> bs!79116 m!913841))

(assert (=> bs!79116 s!24323))

(declare-fun bs!79147 () Bool)

(declare-fun s!24325 () Bool)

(assert (= bs!79147 (and neg-inst!311 s!24325)))

(declare-fun res!279228 () Bool)

(declare-fun e!392005 () Bool)

(assert (=> bs!79147 (=> res!279228 e!392005)))

(assert (=> bs!79147 (= res!279228 (not (= (list!2916 x!140420) (list!2916 lt!275382))))))

(assert (=> bs!79147 (=> true e!392005)))

(declare-fun b!641516 () Bool)

(assert (=> b!641516 (= e!392005 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79147 (not res!279228)) b!641516))

(assert (=> bs!79138 m!913026))

(assert (=> bs!79138 m!913841))

(assert (=> bs!79138 s!24325))

(declare-fun bs!79148 () Bool)

(declare-fun s!24327 () Bool)

(assert (= bs!79148 (and neg-inst!311 s!24327)))

(declare-fun res!279229 () Bool)

(declare-fun e!392006 () Bool)

(assert (=> bs!79148 (=> res!279229 e!392006)))

(assert (=> bs!79148 (= res!279229 (not (= (list!2916 x!140375) (list!2916 lt!275382))))))

(assert (=> bs!79148 (=> true e!392006)))

(declare-fun b!641517 () Bool)

(assert (=> b!641517 (= e!392006 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79148 (not res!279229)) b!641517))

(assert (=> bs!79143 m!912988))

(assert (=> bs!79143 m!913841))

(assert (=> bs!79143 s!24327))

(declare-fun bs!79149 () Bool)

(declare-fun s!24329 () Bool)

(assert (= bs!79149 (and neg-inst!311 s!24329)))

(declare-fun res!279230 () Bool)

(declare-fun e!392007 () Bool)

(assert (=> bs!79149 (=> res!279230 e!392007)))

(assert (=> bs!79149 (= res!279230 (not (= (list!2916 lt!275166) (list!2916 lt!275382))))))

(assert (=> bs!79149 (=> true e!392007)))

(declare-fun b!641518 () Bool)

(assert (=> b!641518 (= e!392007 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79149 (not res!279230)) b!641518))

(assert (=> bs!79101 m!912970))

(assert (=> bs!79101 m!913841))

(assert (=> bs!79101 s!24329))

(declare-fun bs!79150 () Bool)

(declare-fun s!24331 () Bool)

(assert (= bs!79150 (and neg-inst!311 s!24331)))

(declare-fun res!279231 () Bool)

(declare-fun e!392008 () Bool)

(assert (=> bs!79150 (=> res!279231 e!392008)))

(assert (=> bs!79150 (= res!279231 (not (= (list!2916 x!140419) (list!2916 lt!275382))))))

(assert (=> bs!79150 (=> true e!392008)))

(declare-fun b!641519 () Bool)

(assert (=> b!641519 (= e!392008 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79150 (not res!279231)) b!641519))

(assert (=> bs!79145 m!913024))

(assert (=> bs!79145 m!913841))

(assert (=> bs!79145 s!24331))

(declare-fun bs!79151 () Bool)

(declare-fun s!24333 () Bool)

(assert (= bs!79151 (and neg-inst!311 s!24333)))

(declare-fun res!279232 () Bool)

(declare-fun e!392009 () Bool)

(assert (=> bs!79151 (=> res!279232 e!392009)))

(assert (=> bs!79151 (= res!279232 (not (= (list!2916 x!140376) (list!2916 lt!275382))))))

(assert (=> bs!79151 (=> true e!392009)))

(declare-fun b!641520 () Bool)

(assert (=> b!641520 (= e!392009 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79151 (not res!279232)) b!641520))

(assert (=> bs!79140 m!912990))

(assert (=> bs!79140 m!913841))

(assert (=> bs!79140 s!24333))

(declare-fun bs!79152 () Bool)

(declare-fun s!24335 () Bool)

(assert (= bs!79152 (and neg-inst!311 s!24335)))

(declare-fun res!279233 () Bool)

(declare-fun e!392010 () Bool)

(assert (=> bs!79152 (=> res!279233 e!392010)))

(assert (=> bs!79152 (= res!279233 (not (= (list!2916 lt!275359) (list!2916 lt!275382))))))

(assert (=> bs!79152 (=> true e!392010)))

(declare-fun b!641521 () Bool)

(assert (=> b!641521 (= e!392010 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79152 (not res!279233)) b!641521))

(assert (=> bs!79095 m!913728))

(assert (=> bs!79095 m!913841))

(assert (=> bs!79095 s!24335))

(declare-fun bs!79153 () Bool)

(declare-fun s!24337 () Bool)

(assert (= bs!79153 (and neg-inst!311 s!24337)))

(declare-fun res!279234 () Bool)

(declare-fun e!392011 () Bool)

(assert (=> bs!79153 (=> res!279234 e!392011)))

(assert (=> bs!79153 (= res!279234 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 lt!275382))))))

(assert (=> bs!79153 (=> true e!392011)))

(declare-fun b!641522 () Bool)

(assert (=> b!641522 (= e!392011 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79153 (not res!279234)) b!641522))

(assert (=> bs!79112 m!913020))

(assert (=> bs!79112 m!913841))

(assert (=> bs!79112 s!24337))

(assert (=> m!913841 s!24317))

(declare-fun bs!79154 () Bool)

(declare-fun s!24339 () Bool)

(assert (= bs!79154 (and neg-inst!311 s!24339)))

(declare-fun res!279235 () Bool)

(declare-fun e!392012 () Bool)

(assert (=> bs!79154 (=> res!279235 e!392012)))

(assert (=> bs!79154 (= res!279235 (not (= (list!2916 x!140421) (list!2916 lt!275382))))))

(assert (=> bs!79154 (=> true e!392012)))

(declare-fun b!641523 () Bool)

(assert (=> b!641523 (= e!392012 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79154 (not res!279235)) b!641523))

(assert (=> bs!79131 m!913028))

(assert (=> bs!79131 m!913841))

(assert (=> bs!79131 s!24339))

(declare-fun bs!79155 () Bool)

(declare-fun s!24341 () Bool)

(assert (= bs!79155 (and neg-inst!311 s!24341)))

(declare-fun res!279236 () Bool)

(declare-fun e!392013 () Bool)

(assert (=> bs!79155 (=> res!279236 e!392013)))

(assert (=> bs!79155 (= res!279236 (not (= (list!2916 x!140374) (list!2916 lt!275382))))))

(assert (=> bs!79155 (=> true e!392013)))

(declare-fun b!641524 () Bool)

(assert (=> b!641524 (= e!392013 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79155 (not res!279236)) b!641524))

(assert (=> bs!79136 m!912978))

(assert (=> bs!79136 m!913841))

(assert (=> bs!79136 s!24341))

(declare-fun bs!79156 () Bool)

(declare-fun s!24343 () Bool)

(assert (= bs!79156 (and neg-inst!311 s!24343)))

(declare-fun res!279237 () Bool)

(declare-fun e!392014 () Bool)

(assert (=> bs!79156 (=> res!279237 e!392014)))

(assert (=> bs!79156 (= res!279237 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 lt!275382))))))

(assert (=> bs!79156 (=> true e!392014)))

(declare-fun b!641525 () Bool)

(assert (=> b!641525 (= e!392014 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79156 (not res!279237)) b!641525))

(assert (=> bs!79108 m!912984))

(assert (=> bs!79108 m!913841))

(assert (=> bs!79108 s!24343))

(assert (=> d!223495 m!913841))

(declare-fun m!913843 () Bool)

(assert (=> d!223495 m!913843))

(declare-fun m!913845 () Bool)

(assert (=> b!641479 m!913845))

(assert (=> d!223111 d!223495))

(assert (=> d!223111 d!223137))

(declare-fun d!223497 () Bool)

(assert (=> d!223497 (= (inv!8699 (tag!1640 (h!12266 (rules!8210 printableTokens!2)))) (= (mod (str.len (value!44423 (tag!1640 (h!12266 (rules!8210 printableTokens!2))))) 2) 0))))

(assert (=> b!640702 d!223497))

(declare-fun d!223499 () Bool)

(declare-fun res!279240 () Bool)

(declare-fun e!392017 () Bool)

(assert (=> d!223499 (=> (not res!279240) (not e!392017))))

(assert (=> d!223499 (= res!279240 (semiInverseModEq!546 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))) (toValue!2319 (transformation!1378 (h!12266 (rules!8210 printableTokens!2))))))))

(assert (=> d!223499 (= (inv!8709 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))) e!392017)))

(declare-fun b!641528 () Bool)

(assert (=> b!641528 (= e!392017 (equivClasses!525 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 printableTokens!2)))) (toValue!2319 (transformation!1378 (h!12266 (rules!8210 printableTokens!2))))))))

(assert (= (and d!223499 res!279240) b!641528))

(declare-fun m!913847 () Bool)

(assert (=> d!223499 m!913847))

(declare-fun m!913849 () Bool)

(assert (=> b!641528 m!913849))

(assert (=> b!640702 d!223499))

(declare-fun d!223501 () Bool)

(assert (=> d!223501 (dynLambda!3752 lambda!18923 lt!274827)))

(declare-fun lt!275383 () Unit!11924)

(assert (=> d!223501 (= lt!275383 (choose!4634 (list!2909 lt!274818) lambda!18923 lt!274827))))

(declare-fun e!392018 () Bool)

(assert (=> d!223501 e!392018))

(declare-fun res!279241 () Bool)

(assert (=> d!223501 (=> (not res!279241) (not e!392018))))

(assert (=> d!223501 (= res!279241 (forall!1760 (list!2909 lt!274818) lambda!18923))))

(assert (=> d!223501 (= (forallContained!463 (list!2909 lt!274818) lambda!18923 lt!274827) lt!275383)))

(declare-fun b!641529 () Bool)

(assert (=> b!641529 (= e!392018 (contains!1536 (list!2909 lt!274818) lt!274827))))

(assert (= (and d!223501 res!279241) b!641529))

(declare-fun b_lambda!25305 () Bool)

(assert (=> (not b_lambda!25305) (not d!223501)))

(declare-fun m!913851 () Bool)

(assert (=> d!223501 m!913851))

(assert (=> d!223501 m!912423))

(declare-fun m!913853 () Bool)

(assert (=> d!223501 m!913853))

(assert (=> d!223501 m!912423))

(declare-fun m!913855 () Bool)

(assert (=> d!223501 m!913855))

(assert (=> b!641529 m!912423))

(assert (=> b!641529 m!913380))

(assert (=> b!640538 d!223501))

(declare-fun d!223503 () Bool)

(assert (=> d!223503 (= (list!2909 lt!274818) (list!2911 (c!117093 lt!274818)))))

(declare-fun bs!79157 () Bool)

(assert (= bs!79157 d!223503))

(declare-fun m!913857 () Bool)

(assert (=> bs!79157 m!913857))

(assert (=> b!640538 d!223503))

(declare-fun d!223505 () Bool)

(declare-fun e!392021 () Bool)

(assert (=> d!223505 e!392021))

(declare-fun res!279244 () Bool)

(assert (=> d!223505 (=> (not res!279244) (not e!392021))))

(declare-fun append!219 (Conc!2321 Int) Conc!2321)

(assert (=> d!223505 (= res!279244 (isBalanced!616 (append!219 (c!117095 (BalanceConc!4655 Empty!2321)) 0)))))

(declare-fun lt!275386 () BalanceConc!4654)

(assert (=> d!223505 (= lt!275386 (BalanceConc!4655 (append!219 (c!117095 (BalanceConc!4655 Empty!2321)) 0)))))

(assert (=> d!223505 (= (append!217 (BalanceConc!4655 Empty!2321) 0) lt!275386)))

(declare-fun b!641532 () Bool)

(declare-fun $colon+!46 (List!6885 Int) List!6885)

(assert (=> b!641532 (= e!392021 (= (list!2913 lt!275386) ($colon+!46 (list!2913 (BalanceConc!4655 Empty!2321)) 0)))))

(assert (= (and d!223505 res!279244) b!641532))

(declare-fun m!913859 () Bool)

(assert (=> d!223505 m!913859))

(assert (=> d!223505 m!913859))

(declare-fun m!913861 () Bool)

(assert (=> d!223505 m!913861))

(declare-fun m!913863 () Bool)

(assert (=> b!641532 m!913863))

(assert (=> b!641532 m!912545))

(assert (=> b!641532 m!912545))

(declare-fun m!913865 () Bool)

(assert (=> b!641532 m!913865))

(assert (=> b!640628 d!223505))

(declare-fun b!641533 () Bool)

(declare-fun e!392024 () Option!1661)

(assert (=> b!641533 (= e!392024 (Some!1660 (PrintableTokens!137 (rules!109 JsonLexer!197) lt!274877)))))

(declare-fun b!641536 () Bool)

(declare-fun e!392022 () Bool)

(declare-fun lt!275387 () Option!1661)

(assert (=> b!641536 (= e!392022 (= (tokens!1209 (get!2484 lt!275387)) lt!274877))))

(declare-fun b!641534 () Bool)

(assert (=> b!641534 (= e!392024 None!1660)))

(declare-fun b!641535 () Bool)

(declare-fun e!392023 () Bool)

(assert (=> b!641535 (= e!392023 e!392022)))

(declare-fun res!279245 () Bool)

(assert (=> b!641535 (=> (not res!279245) (not e!392022))))

(assert (=> b!641535 (= res!279245 (= (rules!8210 (get!2484 lt!275387)) (rules!109 JsonLexer!197)))))

(declare-fun d!223507 () Bool)

(assert (=> d!223507 e!392023))

(declare-fun res!279246 () Bool)

(assert (=> d!223507 (=> res!279246 e!392023)))

(assert (=> d!223507 (= res!279246 (isEmpty!4700 lt!275387))))

(assert (=> d!223507 (= lt!275387 e!392024)))

(declare-fun c!117249 () Bool)

(assert (=> d!223507 (= c!117249 (separableTokens!28 Lexer!1254 lt!274877 (rules!109 JsonLexer!197)))))

(assert (=> d!223507 (not (isEmpty!4699 (rules!109 JsonLexer!197)))))

(assert (=> d!223507 (= (printableTokensFromTokens!10 (rules!109 JsonLexer!197) lt!274877) lt!275387)))

(assert (= (and d!223507 c!117249) b!641533))

(assert (= (and d!223507 (not c!117249)) b!641534))

(assert (= (and d!223507 (not res!279246)) b!641535))

(assert (= (and b!641535 res!279245) b!641536))

(declare-fun m!913867 () Bool)

(assert (=> b!641536 m!913867))

(assert (=> b!641535 m!913867))

(declare-fun m!913869 () Bool)

(assert (=> d!223507 m!913869))

(assert (=> d!223507 m!912257))

(declare-fun m!913871 () Bool)

(assert (=> d!223507 m!913871))

(assert (=> d!223507 m!912257))

(assert (=> d!223507 m!912325))

(assert (=> b!640592 d!223507))

(assert (=> b!640592 d!223137))

(declare-fun d!223509 () Bool)

(assert (=> d!223509 (dynLambda!3752 lambda!18923 lt!274827)))

(declare-fun lt!275388 () Unit!11924)

(assert (=> d!223509 (= lt!275388 (choose!4634 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923 lt!274827))))

(declare-fun e!392025 () Bool)

(assert (=> d!223509 e!392025))

(declare-fun res!279247 () Bool)

(assert (=> d!223509 (=> (not res!279247) (not e!392025))))

(assert (=> d!223509 (= res!279247 (forall!1760 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923))))

(assert (=> d!223509 (= (forallContained!463 (list!2909 (map!1501 lt!274709 lambda!18867)) lambda!18923 lt!274827) lt!275388)))

(declare-fun b!641537 () Bool)

(assert (=> b!641537 (= e!392025 (contains!1536 (list!2909 (map!1501 lt!274709 lambda!18867)) lt!274827))))

(assert (= (and d!223509 res!279247) b!641537))

(declare-fun b_lambda!25307 () Bool)

(assert (=> (not b_lambda!25307) (not d!223509)))

(assert (=> d!223509 m!913851))

(assert (=> d!223509 m!912353))

(declare-fun m!913873 () Bool)

(assert (=> d!223509 m!913873))

(assert (=> d!223509 m!912353))

(assert (=> d!223509 m!913406))

(assert (=> b!641537 m!912353))

(assert (=> b!641537 m!913690))

(assert (=> b!640540 d!223509))

(assert (=> b!640540 d!223325))

(declare-fun d!223511 () Bool)

(assert (=> d!223511 (= (isKeywordValue!0 lt!274902 RightBrace!1412) (choose!511 lt!274902 RightBrace!1412))))

(declare-fun bs!79158 () Bool)

(assert (= bs!79158 d!223511))

(declare-fun m!913875 () Bool)

(assert (=> bs!79158 m!913875))

(assert (=> b!640630 d!223511))

(declare-fun d!223513 () Bool)

(declare-fun res!279254 () Bool)

(declare-fun e!392028 () Bool)

(assert (=> d!223513 (=> (not res!279254) (not e!392028))))

(assert (=> d!223513 (= res!279254 (= (csize!4866 (c!117092 (tokens!1209 printableTokens!2))) (+ (size!5421 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))) (size!5421 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))))))))

(assert (=> d!223513 (= (inv!8705 (c!117092 (tokens!1209 printableTokens!2))) e!392028)))

(declare-fun b!641544 () Bool)

(declare-fun res!279255 () Bool)

(assert (=> b!641544 (=> (not res!279255) (not e!392028))))

(assert (=> b!641544 (= res!279255 (and (not (= (left!5464 (c!117092 (tokens!1209 printableTokens!2))) Empty!2318)) (not (= (right!5794 (c!117092 (tokens!1209 printableTokens!2))) Empty!2318))))))

(declare-fun b!641545 () Bool)

(declare-fun res!279256 () Bool)

(assert (=> b!641545 (=> (not res!279256) (not e!392028))))

(assert (=> b!641545 (= res!279256 (= (cheight!2529 (c!117092 (tokens!1209 printableTokens!2))) (+ (max!0 (height!283 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))) (height!283 (right!5794 (c!117092 (tokens!1209 printableTokens!2))))) 1)))))

(declare-fun b!641546 () Bool)

(assert (=> b!641546 (= e!392028 (<= 0 (cheight!2529 (c!117092 (tokens!1209 printableTokens!2)))))))

(assert (= (and d!223513 res!279254) b!641544))

(assert (= (and b!641544 res!279255) b!641545))

(assert (= (and b!641545 res!279256) b!641546))

(declare-fun m!913877 () Bool)

(assert (=> d!223513 m!913877))

(declare-fun m!913879 () Bool)

(assert (=> d!223513 m!913879))

(assert (=> b!641545 m!913092))

(assert (=> b!641545 m!913094))

(assert (=> b!641545 m!913092))

(assert (=> b!641545 m!913094))

(declare-fun m!913881 () Bool)

(assert (=> b!641545 m!913881))

(assert (=> b!640641 d!223513))

(declare-fun d!223515 () Bool)

(declare-fun res!279257 () Bool)

(declare-fun e!392029 () Bool)

(assert (=> d!223515 (=> res!279257 e!392029)))

(assert (=> d!223515 (= res!279257 ((_ is Nil!6870) lt!274707))))

(assert (=> d!223515 (= (forall!1758 lt!274707 lambda!18939) e!392029)))

(declare-fun b!641547 () Bool)

(declare-fun e!392030 () Bool)

(assert (=> b!641547 (= e!392029 e!392030)))

(declare-fun res!279258 () Bool)

(assert (=> b!641547 (=> (not res!279258) (not e!392030))))

(assert (=> b!641547 (= res!279258 (dynLambda!3753 lambda!18939 (h!12271 lt!274707)))))

(declare-fun b!641548 () Bool)

(assert (=> b!641548 (= e!392030 (forall!1758 (t!84894 lt!274707) lambda!18939))))

(assert (= (and d!223515 (not res!279257)) b!641547))

(assert (= (and b!641547 res!279258) b!641548))

(declare-fun b_lambda!25309 () Bool)

(assert (=> (not b_lambda!25309) (not b!641547)))

(declare-fun m!913883 () Bool)

(assert (=> b!641547 m!913883))

(declare-fun m!913885 () Bool)

(assert (=> b!641548 m!913885))

(assert (=> d!223113 d!223515))

(declare-fun d!223517 () Bool)

(declare-fun res!279259 () Bool)

(declare-fun e!392031 () Bool)

(assert (=> d!223517 (=> res!279259 e!392031)))

(assert (=> d!223517 (= res!279259 ((_ is Nil!6870) lt!274707))))

(assert (=> d!223517 (= (forall!1758 lt!274707 lambda!18938) e!392031)))

(declare-fun b!641549 () Bool)

(declare-fun e!392032 () Bool)

(assert (=> b!641549 (= e!392031 e!392032)))

(declare-fun res!279260 () Bool)

(assert (=> b!641549 (=> (not res!279260) (not e!392032))))

(assert (=> b!641549 (= res!279260 (dynLambda!3753 lambda!18938 (h!12271 lt!274707)))))

(declare-fun b!641550 () Bool)

(assert (=> b!641550 (= e!392032 (forall!1758 (t!84894 lt!274707) lambda!18938))))

(assert (= (and d!223517 (not res!279259)) b!641549))

(assert (= (and b!641549 res!279260) b!641550))

(declare-fun b_lambda!25311 () Bool)

(assert (=> (not b_lambda!25311) (not b!641549)))

(declare-fun m!913887 () Bool)

(assert (=> b!641549 m!913887))

(declare-fun m!913889 () Bool)

(assert (=> b!641550 m!913889))

(assert (=> d!223113 d!223517))

(declare-fun condSetEmpty!2963 () Bool)

(assert (=> setNonEmpty!2950 (= condSetEmpty!2963 (= setRest!2950 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2963 () Bool)

(assert (=> setNonEmpty!2950 (= tp!199157 setRes!2963)))

(declare-fun setIsEmpty!2963 () Bool)

(assert (=> setIsEmpty!2963 setRes!2963))

(declare-fun setNonEmpty!2963 () Bool)

(declare-fun tp!199210 () Bool)

(declare-fun setElem!2963 () Context!398)

(assert (=> setNonEmpty!2963 (= setRes!2963 (and tp!199210 (inv!8707 setElem!2963)))))

(declare-fun setRest!2963 () (InoxSet Context!398))

(assert (=> setNonEmpty!2963 (= setRest!2950 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2963 true) setRest!2963))))

(assert (= (and setNonEmpty!2950 condSetEmpty!2963) setIsEmpty!2963))

(assert (= (and setNonEmpty!2950 (not condSetEmpty!2963)) setNonEmpty!2963))

(declare-fun m!913891 () Bool)

(assert (=> setNonEmpty!2963 m!913891))

(declare-fun setRes!2964 () Bool)

(declare-fun e!392037 () Bool)

(declare-fun tp!199212 () Bool)

(declare-fun b!641553 () Bool)

(assert (=> b!641553 (= e!392037 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (t!84891 mapValue!2630))))) setRes!2964 tp!199212))))

(declare-fun condSetEmpty!2964 () Bool)

(assert (=> b!641553 (= condSetEmpty!2964 (= (_2!4049 (h!12268 (t!84891 mapValue!2630))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2964 () Bool)

(assert (=> setIsEmpty!2964 setRes!2964))

(declare-fun setNonEmpty!2964 () Bool)

(declare-fun tp!199211 () Bool)

(declare-fun setElem!2964 () Context!398)

(assert (=> setNonEmpty!2964 (= setRes!2964 (and tp!199211 (inv!8707 setElem!2964)))))

(declare-fun setRest!2964 () (InoxSet Context!398))

(assert (=> setNonEmpty!2964 (= (_2!4049 (h!12268 (t!84891 mapValue!2630))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2964 true) setRest!2964))))

(assert (=> b!640668 (= tp!199129 e!392037)))

(assert (= (and b!641553 condSetEmpty!2964) setIsEmpty!2964))

(assert (= (and b!641553 (not condSetEmpty!2964)) setNonEmpty!2964))

(assert (= (and b!640668 ((_ is Cons!6867) (t!84891 mapValue!2630))) b!641553))

(declare-fun m!913893 () Bool)

(assert (=> b!641553 m!913893))

(declare-fun m!913895 () Bool)

(assert (=> setNonEmpty!2964 m!913895))

(declare-fun condSetEmpty!2965 () Bool)

(assert (=> setNonEmpty!2942 (= condSetEmpty!2965 (= setRest!2942 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2965 () Bool)

(assert (=> setNonEmpty!2942 (= tp!199131 setRes!2965)))

(declare-fun setIsEmpty!2965 () Bool)

(assert (=> setIsEmpty!2965 setRes!2965))

(declare-fun setNonEmpty!2965 () Bool)

(declare-fun tp!199213 () Bool)

(declare-fun setElem!2965 () Context!398)

(assert (=> setNonEmpty!2965 (= setRes!2965 (and tp!199213 (inv!8707 setElem!2965)))))

(declare-fun setRest!2965 () (InoxSet Context!398))

(assert (=> setNonEmpty!2965 (= setRest!2942 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2965 true) setRest!2965))))

(assert (= (and setNonEmpty!2942 condSetEmpty!2965) setIsEmpty!2965))

(assert (= (and setNonEmpty!2942 (not condSetEmpty!2965)) setNonEmpty!2965))

(declare-fun m!913897 () Bool)

(assert (=> setNonEmpty!2965 m!913897))

(declare-fun b!641564 () Bool)

(declare-fun e!392048 () Bool)

(assert (=> b!641564 (= e!392048 true)))

(declare-fun b!641563 () Bool)

(declare-fun e!392047 () Bool)

(assert (=> b!641563 (= e!392047 e!392048)))

(declare-fun b!641562 () Bool)

(declare-fun e!392046 () Bool)

(assert (=> b!641562 (= e!392046 e!392047)))

(assert (=> b!640555 e!392046))

(assert (= b!641563 b!641564))

(assert (= b!641562 b!641563))

(assert (= (and b!640555 ((_ is Cons!6865) (rules!8210 (_2!4053 lt!274827)))) b!641562))

(assert (=> b!641564 (< (dynLambda!3755 order!5173 (toValue!2319 (transformation!1378 (h!12266 (rules!8210 (_2!4053 lt!274827)))))) (dynLambda!3749 order!5167 lambda!18923))))

(assert (=> b!641564 (< (dynLambda!3757 order!5177 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 (_2!4053 lt!274827)))))) (dynLambda!3749 order!5167 lambda!18923))))

(declare-fun setRes!2966 () Bool)

(declare-fun b!641565 () Bool)

(declare-fun tp!199215 () Bool)

(declare-fun e!392050 () Bool)

(assert (=> b!641565 (= e!392050 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (t!84891 mapDefault!2630))))) setRes!2966 tp!199215))))

(declare-fun condSetEmpty!2966 () Bool)

(assert (=> b!641565 (= condSetEmpty!2966 (= (_2!4049 (h!12268 (t!84891 mapDefault!2630))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2966 () Bool)

(assert (=> setIsEmpty!2966 setRes!2966))

(declare-fun setNonEmpty!2966 () Bool)

(declare-fun tp!199214 () Bool)

(declare-fun setElem!2966 () Context!398)

(assert (=> setNonEmpty!2966 (= setRes!2966 (and tp!199214 (inv!8707 setElem!2966)))))

(declare-fun setRest!2966 () (InoxSet Context!398))

(assert (=> setNonEmpty!2966 (= (_2!4049 (h!12268 (t!84891 mapDefault!2630))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2966 true) setRest!2966))))

(assert (=> b!640669 (= tp!199128 e!392050)))

(assert (= (and b!641565 condSetEmpty!2966) setIsEmpty!2966))

(assert (= (and b!641565 (not condSetEmpty!2966)) setNonEmpty!2966))

(assert (= (and b!640669 ((_ is Cons!6867) (t!84891 mapDefault!2630))) b!641565))

(declare-fun m!913899 () Bool)

(assert (=> b!641565 m!913899))

(declare-fun m!913901 () Bool)

(assert (=> setNonEmpty!2966 m!913901))

(declare-fun tp!199217 () Bool)

(declare-fun e!392053 () Bool)

(declare-fun setRes!2967 () Bool)

(declare-fun b!641566 () Bool)

(assert (=> b!641566 (= e!392053 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (t!84891 mapDefault!2626))))) setRes!2967 tp!199217))))

(declare-fun condSetEmpty!2967 () Bool)

(assert (=> b!641566 (= condSetEmpty!2967 (= (_2!4049 (h!12268 (t!84891 mapDefault!2626))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2967 () Bool)

(assert (=> setIsEmpty!2967 setRes!2967))

(declare-fun setNonEmpty!2967 () Bool)

(declare-fun tp!199216 () Bool)

(declare-fun setElem!2967 () Context!398)

(assert (=> setNonEmpty!2967 (= setRes!2967 (and tp!199216 (inv!8707 setElem!2967)))))

(declare-fun setRest!2967 () (InoxSet Context!398))

(assert (=> setNonEmpty!2967 (= (_2!4049 (h!12268 (t!84891 mapDefault!2626))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2967 true) setRest!2967))))

(assert (=> b!640713 (= tp!199185 e!392053)))

(assert (= (and b!641566 condSetEmpty!2967) setIsEmpty!2967))

(assert (= (and b!641566 (not condSetEmpty!2967)) setNonEmpty!2967))

(assert (= (and b!640713 ((_ is Cons!6867) (t!84891 mapDefault!2626))) b!641566))

(declare-fun m!913903 () Bool)

(assert (=> b!641566 m!913903))

(declare-fun m!913905 () Bool)

(assert (=> setNonEmpty!2967 m!913905))

(declare-fun condSetEmpty!2968 () Bool)

(assert (=> setNonEmpty!2955 (= condSetEmpty!2968 (= setRest!2956 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2968 () Bool)

(assert (=> setNonEmpty!2955 (= tp!199181 setRes!2968)))

(declare-fun setIsEmpty!2968 () Bool)

(assert (=> setIsEmpty!2968 setRes!2968))

(declare-fun setNonEmpty!2968 () Bool)

(declare-fun tp!199218 () Bool)

(declare-fun setElem!2968 () Context!398)

(assert (=> setNonEmpty!2968 (= setRes!2968 (and tp!199218 (inv!8707 setElem!2968)))))

(declare-fun setRest!2968 () (InoxSet Context!398))

(assert (=> setNonEmpty!2968 (= setRest!2956 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2968 true) setRest!2968))))

(assert (= (and setNonEmpty!2955 condSetEmpty!2968) setIsEmpty!2968))

(assert (= (and setNonEmpty!2955 (not condSetEmpty!2968)) setNonEmpty!2968))

(declare-fun m!913907 () Bool)

(assert (=> setNonEmpty!2968 m!913907))

(declare-fun condSetEmpty!2969 () Bool)

(assert (=> setNonEmpty!2958 (= condSetEmpty!2969 (= setRest!2958 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2969 () Bool)

(assert (=> setNonEmpty!2958 (= tp!199184 setRes!2969)))

(declare-fun setIsEmpty!2969 () Bool)

(assert (=> setIsEmpty!2969 setRes!2969))

(declare-fun setNonEmpty!2969 () Bool)

(declare-fun tp!199219 () Bool)

(declare-fun setElem!2969 () Context!398)

(assert (=> setNonEmpty!2969 (= setRes!2969 (and tp!199219 (inv!8707 setElem!2969)))))

(declare-fun setRest!2969 () (InoxSet Context!398))

(assert (=> setNonEmpty!2969 (= setRest!2958 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2969 true) setRest!2969))))

(assert (= (and setNonEmpty!2958 condSetEmpty!2969) setIsEmpty!2969))

(assert (= (and setNonEmpty!2958 (not condSetEmpty!2969)) setNonEmpty!2969))

(declare-fun m!913909 () Bool)

(assert (=> setNonEmpty!2969 m!913909))

(declare-fun e!392058 () Bool)

(declare-fun tp!199220 () Bool)

(declare-fun b!641567 () Bool)

(declare-fun setRes!2970 () Bool)

(assert (=> b!641567 (= e!392058 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (t!84892 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))))) setRes!2970 tp!199220))))

(declare-fun condSetEmpty!2970 () Bool)

(assert (=> b!641567 (= condSetEmpty!2970 (= (_2!4051 (h!12269 (t!84892 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2970 () Bool)

(assert (=> setIsEmpty!2970 setRes!2970))

(declare-fun setNonEmpty!2970 () Bool)

(declare-fun tp!199221 () Bool)

(declare-fun setElem!2970 () Context!398)

(assert (=> setNonEmpty!2970 (= setRes!2970 (and tp!199221 (inv!8707 setElem!2970)))))

(declare-fun setRest!2970 () (InoxSet Context!398))

(assert (=> setNonEmpty!2970 (= (_2!4051 (h!12269 (t!84892 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2970 true) setRest!2970))))

(assert (=> b!640680 (= tp!199145 e!392058)))

(assert (= (and b!641567 condSetEmpty!2970) setIsEmpty!2970))

(assert (= (and b!641567 (not condSetEmpty!2970)) setNonEmpty!2970))

(assert (= (and b!640680 ((_ is Cons!6868) (t!84892 (minValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))) b!641567))

(declare-fun m!913911 () Bool)

(assert (=> b!641567 m!913911))

(declare-fun m!913913 () Bool)

(assert (=> setNonEmpty!2970 m!913913))

(declare-fun setRes!2972 () Bool)

(declare-fun tp!199223 () Bool)

(declare-fun e!392060 () Bool)

(declare-fun mapDefault!2634 () List!6882)

(declare-fun b!641568 () Bool)

(assert (=> b!641568 (= e!392060 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 mapDefault!2634)))) setRes!2972 tp!199223))))

(declare-fun condSetEmpty!2971 () Bool)

(assert (=> b!641568 (= condSetEmpty!2971 (= (_2!4051 (h!12269 mapDefault!2634)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setNonEmpty!2971 () Bool)

(declare-fun tp!199226 () Bool)

(declare-fun setElem!2971 () Context!398)

(assert (=> setNonEmpty!2971 (= setRes!2972 (and tp!199226 (inv!8707 setElem!2971)))))

(declare-fun setRest!2972 () (InoxSet Context!398))

(assert (=> setNonEmpty!2971 (= (_2!4051 (h!12269 mapDefault!2634)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2971 true) setRest!2972))))

(declare-fun setNonEmpty!2972 () Bool)

(declare-fun setRes!2971 () Bool)

(declare-fun tp!199222 () Bool)

(declare-fun setElem!2972 () Context!398)

(assert (=> setNonEmpty!2972 (= setRes!2971 (and tp!199222 (inv!8707 setElem!2972)))))

(declare-fun mapValue!2634 () List!6882)

(declare-fun setRest!2971 () (InoxSet Context!398))

(assert (=> setNonEmpty!2972 (= (_2!4051 (h!12269 mapValue!2634)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2972 true) setRest!2971))))

(declare-fun mapIsEmpty!2634 () Bool)

(declare-fun mapRes!2634 () Bool)

(assert (=> mapIsEmpty!2634 mapRes!2634))

(declare-fun e!392062 () Bool)

(declare-fun tp!199224 () Bool)

(declare-fun b!641569 () Bool)

(assert (=> b!641569 (= e!392062 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 mapValue!2634)))) setRes!2971 tp!199224))))

(declare-fun condSetEmpty!2972 () Bool)

(assert (=> b!641569 (= condSetEmpty!2972 (= (_2!4051 (h!12269 mapValue!2634)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun condMapEmpty!2634 () Bool)

(assert (=> mapNonEmpty!2633 (= condMapEmpty!2634 (= mapRest!2633 ((as const (Array (_ BitVec 32) List!6882)) mapDefault!2634)))))

(assert (=> mapNonEmpty!2633 (= tp!199180 (and e!392060 mapRes!2634))))

(declare-fun setIsEmpty!2971 () Bool)

(assert (=> setIsEmpty!2971 setRes!2972))

(declare-fun mapNonEmpty!2634 () Bool)

(declare-fun tp!199225 () Bool)

(assert (=> mapNonEmpty!2634 (= mapRes!2634 (and tp!199225 e!392062))))

(declare-fun mapRest!2634 () (Array (_ BitVec 32) List!6882))

(declare-fun mapKey!2634 () (_ BitVec 32))

(assert (=> mapNonEmpty!2634 (= mapRest!2633 (store mapRest!2634 mapKey!2634 mapValue!2634))))

(declare-fun setIsEmpty!2972 () Bool)

(assert (=> setIsEmpty!2972 setRes!2971))

(assert (= (and mapNonEmpty!2633 condMapEmpty!2634) mapIsEmpty!2634))

(assert (= (and mapNonEmpty!2633 (not condMapEmpty!2634)) mapNonEmpty!2634))

(assert (= (and b!641569 condSetEmpty!2972) setIsEmpty!2972))

(assert (= (and b!641569 (not condSetEmpty!2972)) setNonEmpty!2972))

(assert (= (and mapNonEmpty!2634 ((_ is Cons!6868) mapValue!2634)) b!641569))

(assert (= (and b!641568 condSetEmpty!2971) setIsEmpty!2971))

(assert (= (and b!641568 (not condSetEmpty!2971)) setNonEmpty!2971))

(assert (= (and mapNonEmpty!2633 ((_ is Cons!6868) mapDefault!2634)) b!641568))

(declare-fun m!913915 () Bool)

(assert (=> setNonEmpty!2972 m!913915))

(declare-fun m!913917 () Bool)

(assert (=> b!641569 m!913917))

(declare-fun m!913919 () Bool)

(assert (=> mapNonEmpty!2634 m!913919))

(declare-fun m!913921 () Bool)

(assert (=> setNonEmpty!2971 m!913921))

(declare-fun m!913923 () Bool)

(assert (=> b!641568 m!913923))

(declare-fun b!641572 () Bool)

(declare-fun e!392068 () Bool)

(assert (=> b!641572 (= e!392068 true)))

(declare-fun b!641571 () Bool)

(declare-fun e!392067 () Bool)

(assert (=> b!641571 (= e!392067 e!392068)))

(declare-fun b!641570 () Bool)

(declare-fun e!392066 () Bool)

(assert (=> b!641570 (= e!392066 e!392067)))

(assert (=> b!640557 e!392066))

(assert (= b!641571 b!641572))

(assert (= b!641570 b!641571))

(assert (= (and b!640557 ((_ is Cons!6865) (rules!8210 (_2!4053 lt!274827)))) b!641570))

(assert (=> b!641572 (< (dynLambda!3755 order!5173 (toValue!2319 (transformation!1378 (h!12266 (rules!8210 (_2!4053 lt!274827)))))) (dynLambda!3749 order!5167 lambda!18924))))

(assert (=> b!641572 (< (dynLambda!3757 order!5177 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 (_2!4053 lt!274827)))))) (dynLambda!3749 order!5167 lambda!18924))))

(declare-fun e!392070 () Bool)

(declare-fun tp!199227 () Bool)

(declare-fun setRes!2973 () Bool)

(declare-fun b!641573 () Bool)

(assert (=> b!641573 (= e!392070 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (t!84892 mapValue!2627))))) setRes!2973 tp!199227))))

(declare-fun condSetEmpty!2973 () Bool)

(assert (=> b!641573 (= condSetEmpty!2973 (= (_2!4051 (h!12269 (t!84892 mapValue!2627))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2973 () Bool)

(assert (=> setIsEmpty!2973 setRes!2973))

(declare-fun setNonEmpty!2973 () Bool)

(declare-fun tp!199228 () Bool)

(declare-fun setElem!2973 () Context!398)

(assert (=> setNonEmpty!2973 (= setRes!2973 (and tp!199228 (inv!8707 setElem!2973)))))

(declare-fun setRest!2973 () (InoxSet Context!398))

(assert (=> setNonEmpty!2973 (= (_2!4051 (h!12269 (t!84892 mapValue!2627))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2973 true) setRest!2973))))

(assert (=> b!640712 (= tp!199182 e!392070)))

(assert (= (and b!641573 condSetEmpty!2973) setIsEmpty!2973))

(assert (= (and b!641573 (not condSetEmpty!2973)) setNonEmpty!2973))

(assert (= (and b!640712 ((_ is Cons!6868) (t!84892 mapValue!2627))) b!641573))

(declare-fun m!913925 () Bool)

(assert (=> b!641573 m!913925))

(declare-fun m!913927 () Bool)

(assert (=> setNonEmpty!2973 m!913927))

(declare-fun condSetEmpty!2974 () Bool)

(assert (=> setNonEmpty!2949 (= condSetEmpty!2974 (= setRest!2949 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2974 () Bool)

(assert (=> setNonEmpty!2949 (= tp!199146 setRes!2974)))

(declare-fun setIsEmpty!2974 () Bool)

(assert (=> setIsEmpty!2974 setRes!2974))

(declare-fun setNonEmpty!2974 () Bool)

(declare-fun tp!199229 () Bool)

(declare-fun setElem!2974 () Context!398)

(assert (=> setNonEmpty!2974 (= setRes!2974 (and tp!199229 (inv!8707 setElem!2974)))))

(declare-fun setRest!2974 () (InoxSet Context!398))

(assert (=> setNonEmpty!2974 (= setRest!2949 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2974 true) setRest!2974))))

(assert (= (and setNonEmpty!2949 condSetEmpty!2974) setIsEmpty!2974))

(assert (= (and setNonEmpty!2949 (not condSetEmpty!2974)) setNonEmpty!2974))

(declare-fun m!913929 () Bool)

(assert (=> setNonEmpty!2974 m!913929))

(declare-fun condSetEmpty!2975 () Bool)

(assert (=> setNonEmpty!2957 (= condSetEmpty!2975 (= setRest!2957 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2975 () Bool)

(assert (=> setNonEmpty!2957 (= tp!199183 setRes!2975)))

(declare-fun setIsEmpty!2975 () Bool)

(assert (=> setIsEmpty!2975 setRes!2975))

(declare-fun setNonEmpty!2975 () Bool)

(declare-fun tp!199230 () Bool)

(declare-fun setElem!2975 () Context!398)

(assert (=> setNonEmpty!2975 (= setRes!2975 (and tp!199230 (inv!8707 setElem!2975)))))

(declare-fun setRest!2975 () (InoxSet Context!398))

(assert (=> setNonEmpty!2975 (= setRest!2957 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2975 true) setRest!2975))))

(assert (= (and setNonEmpty!2957 condSetEmpty!2975) setIsEmpty!2975))

(assert (= (and setNonEmpty!2957 (not condSetEmpty!2975)) setNonEmpty!2975))

(declare-fun m!913931 () Bool)

(assert (=> setNonEmpty!2975 m!913931))

(declare-fun b!641588 () Bool)

(declare-fun e!392091 () Bool)

(declare-fun lt!275394 () MutLongMap!666)

(assert (=> b!641588 (= e!392091 ((_ is LongMap!666) lt!275394))))

(assert (=> b!641588 (= lt!275394 (v!16997 (underlying!1516 (cache!1025 (_3!335 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))))))

(declare-fun b!641589 () Bool)

(declare-fun e!392086 () Bool)

(declare-fun e!392089 () Bool)

(assert (=> b!641589 (= e!392086 e!392089)))

(declare-fun b!641590 () Bool)

(declare-fun e!392088 () Bool)

(declare-fun e!392087 () Bool)

(assert (=> b!641590 (= e!392088 e!392087)))

(declare-fun e!392090 () Bool)

(assert (=> d!223105 (= true (and e!392090 e!392088))))

(declare-fun b!641591 () Bool)

(assert (=> b!641591 (= e!392090 e!392086)))

(declare-fun b!641592 () Bool)

(declare-fun lt!275393 () MutLongMap!665)

(assert (=> b!641592 (= e!392089 ((_ is LongMap!665) lt!275393))))

(assert (=> b!641592 (= lt!275393 (v!16995 (underlying!1514 (cache!1024 (_2!4052 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))))))

(declare-fun b!641593 () Bool)

(assert (=> b!641593 (= e!392087 e!392091)))

(assert (= b!641589 b!641592))

(assert (= (and b!641591 ((_ is HashMap!637) (cache!1024 (_2!4052 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))) b!641589))

(assert (= d!223105 b!641591))

(assert (= b!641593 b!641588))

(assert (= (and b!641590 ((_ is HashMap!638) (cache!1025 (_3!335 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))) b!641593))

(assert (= d!223105 b!641590))

(declare-fun b!641602 () Bool)

(declare-fun e!392096 () Bool)

(assert (=> b!641602 (= e!392096 true)))

(declare-fun b!641604 () Bool)

(declare-fun e!392097 () Bool)

(assert (=> b!641604 (= e!392097 true)))

(declare-fun b!641603 () Bool)

(assert (=> b!641603 (= e!392096 e!392097)))

(assert (=> b!640560 e!392096))

(assert (= (and b!640560 ((_ is Node!2318) (c!117092 (tokens!1209 (_2!4053 lt!274827))))) b!641602))

(assert (= b!641603 b!641604))

(assert (= (and b!640560 ((_ is Leaf!3523) (c!117092 (tokens!1209 (_2!4053 lt!274827))))) b!641603))

(declare-fun b!641605 () Bool)

(declare-fun setRes!2976 () Bool)

(declare-fun e!392099 () Bool)

(declare-fun tp!199232 () Bool)

(assert (=> b!641605 (= e!392099 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (t!84891 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))))) setRes!2976 tp!199232))))

(declare-fun condSetEmpty!2976 () Bool)

(assert (=> b!641605 (= condSetEmpty!2976 (= (_2!4049 (h!12268 (t!84891 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2976 () Bool)

(assert (=> setIsEmpty!2976 setRes!2976))

(declare-fun setNonEmpty!2976 () Bool)

(declare-fun tp!199231 () Bool)

(declare-fun setElem!2976 () Context!398)

(assert (=> setNonEmpty!2976 (= setRes!2976 (and tp!199231 (inv!8707 setElem!2976)))))

(declare-fun setRest!2976 () (InoxSet Context!398))

(assert (=> setNonEmpty!2976 (= (_2!4049 (h!12268 (t!84891 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2976 true) setRest!2976))))

(assert (=> b!640715 (= tp!199189 e!392099)))

(assert (= (and b!641605 condSetEmpty!2976) setIsEmpty!2976))

(assert (= (and b!641605 (not condSetEmpty!2976)) setNonEmpty!2976))

(assert (= (and b!640715 ((_ is Cons!6867) (t!84891 (minValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))) b!641605))

(declare-fun m!913933 () Bool)

(assert (=> b!641605 m!913933))

(declare-fun m!913935 () Bool)

(assert (=> setNonEmpty!2976 m!913935))

(declare-fun b_free!18809 () Bool)

(declare-fun b_next!18857 () Bool)

(declare-fun b!641608 () Bool)

(assert (=> b!641608 (= b_free!18809 (and (or (not d!223239) (not (= lambda!19009 (toValue!2319 (transformation!1378 (h!12266 (t!84889 (rules!8210 printableTokens!2)))))))) (or (not d!223243) (not (= lambda!19033 (toValue!2319 (transformation!1378 (h!12266 (t!84889 (rules!8210 printableTokens!2)))))))) (not b_next!18857)))))

(declare-fun tp!199235 () Bool)

(declare-fun b_and!62603 () Bool)

(assert (=> b!641608 (= tp!199235 b_and!62603)))

(declare-fun b_next!18859 () Bool)

(declare-fun b_free!18811 () Bool)

(assert (=> b!641608 (= b_free!18811 (and (or (not d!223239) (not (= lambda!19008 (toChars!2178 (transformation!1378 (h!12266 (t!84889 (rules!8210 printableTokens!2)))))))) (or (not d!223243) (not (= lambda!19032 (toChars!2178 (transformation!1378 (h!12266 (t!84889 (rules!8210 printableTokens!2)))))))) (not b_next!18859)))))

(declare-fun tp!199233 () Bool)

(declare-fun b_and!62605 () Bool)

(assert (=> b!641608 (= tp!199233 b_and!62605)))

(declare-fun e!392101 () Bool)

(assert (=> b!641608 (= e!392101 (and tp!199235 tp!199233))))

(declare-fun b!641607 () Bool)

(declare-fun e!392102 () Bool)

(assert (=> b!641607 (= e!392102 (and (inv!8699 (tag!1640 (h!12266 (t!84889 (rules!8210 printableTokens!2))))) (inv!8709 (transformation!1378 (h!12266 (t!84889 (rules!8210 printableTokens!2))))) e!392101))))

(declare-fun b!641606 () Bool)

(declare-fun e!392104 () Bool)

(declare-fun tp!199234 () Bool)

(assert (=> b!641606 (= e!392104 (and e!392102 tp!199234))))

(assert (=> b!640701 (= tp!199165 e!392104)))

(assert (= b!641607 b!641608))

(assert (= b!641606 b!641607))

(assert (= (and b!640701 ((_ is Cons!6865) (t!84889 (rules!8210 printableTokens!2)))) b!641606))

(declare-fun m!913937 () Bool)

(assert (=> b!641607 m!913937))

(declare-fun m!913939 () Bool)

(assert (=> b!641607 m!913939))

(declare-fun condSetEmpty!2977 () Bool)

(assert (=> setNonEmpty!2960 (= condSetEmpty!2977 (= setRest!2960 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2977 () Bool)

(assert (=> setNonEmpty!2960 (= tp!199188 setRes!2977)))

(declare-fun setIsEmpty!2977 () Bool)

(assert (=> setIsEmpty!2977 setRes!2977))

(declare-fun setNonEmpty!2977 () Bool)

(declare-fun tp!199236 () Bool)

(declare-fun setElem!2977 () Context!398)

(assert (=> setNonEmpty!2977 (= setRes!2977 (and tp!199236 (inv!8707 setElem!2977)))))

(declare-fun setRest!2977 () (InoxSet Context!398))

(assert (=> setNonEmpty!2977 (= setRest!2960 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2977 true) setRest!2977))))

(assert (= (and setNonEmpty!2960 condSetEmpty!2977) setIsEmpty!2977))

(assert (= (and setNonEmpty!2960 (not condSetEmpty!2977)) setNonEmpty!2977))

(declare-fun m!913941 () Bool)

(assert (=> setNonEmpty!2977 m!913941))

(declare-fun tp!199237 () Bool)

(declare-fun setRes!2978 () Bool)

(declare-fun e!392107 () Bool)

(declare-fun b!641609 () Bool)

(assert (=> b!641609 (= e!392107 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (t!84892 mapDefault!2627))))) setRes!2978 tp!199237))))

(declare-fun condSetEmpty!2978 () Bool)

(assert (=> b!641609 (= condSetEmpty!2978 (= (_2!4051 (h!12269 (t!84892 mapDefault!2627))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2978 () Bool)

(assert (=> setIsEmpty!2978 setRes!2978))

(declare-fun setNonEmpty!2978 () Bool)

(declare-fun tp!199238 () Bool)

(declare-fun setElem!2978 () Context!398)

(assert (=> setNonEmpty!2978 (= setRes!2978 (and tp!199238 (inv!8707 setElem!2978)))))

(declare-fun setRest!2978 () (InoxSet Context!398))

(assert (=> setNonEmpty!2978 (= (_2!4051 (h!12269 (t!84892 mapDefault!2627))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2978 true) setRest!2978))))

(assert (=> b!640692 (= tp!199156 e!392107)))

(assert (= (and b!641609 condSetEmpty!2978) setIsEmpty!2978))

(assert (= (and b!641609 (not condSetEmpty!2978)) setNonEmpty!2978))

(assert (= (and b!640692 ((_ is Cons!6868) (t!84892 mapDefault!2627))) b!641609))

(declare-fun m!913943 () Bool)

(assert (=> b!641609 m!913943))

(declare-fun m!913945 () Bool)

(assert (=> setNonEmpty!2978 m!913945))

(declare-fun condSetEmpty!2979 () Bool)

(assert (=> setNonEmpty!2941 (= condSetEmpty!2979 (= setRest!2941 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2979 () Bool)

(assert (=> setNonEmpty!2941 (= tp!199132 setRes!2979)))

(declare-fun setIsEmpty!2979 () Bool)

(assert (=> setIsEmpty!2979 setRes!2979))

(declare-fun setNonEmpty!2979 () Bool)

(declare-fun tp!199239 () Bool)

(declare-fun setElem!2979 () Context!398)

(assert (=> setNonEmpty!2979 (= setRes!2979 (and tp!199239 (inv!8707 setElem!2979)))))

(declare-fun setRest!2979 () (InoxSet Context!398))

(assert (=> setNonEmpty!2979 (= setRest!2941 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2979 true) setRest!2979))))

(assert (= (and setNonEmpty!2941 condSetEmpty!2979) setIsEmpty!2979))

(assert (= (and setNonEmpty!2941 (not condSetEmpty!2979)) setNonEmpty!2979))

(declare-fun m!913947 () Bool)

(assert (=> setNonEmpty!2979 m!913947))

(declare-fun setRes!2980 () Bool)

(declare-fun e!392111 () Bool)

(declare-fun tp!199241 () Bool)

(declare-fun b!641610 () Bool)

(assert (=> b!641610 (= e!392111 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (t!84891 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))))) setRes!2980 tp!199241))))

(declare-fun condSetEmpty!2980 () Bool)

(assert (=> b!641610 (= condSetEmpty!2980 (= (_2!4049 (h!12268 (t!84891 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2980 () Bool)

(assert (=> setIsEmpty!2980 setRes!2980))

(declare-fun setNonEmpty!2980 () Bool)

(declare-fun tp!199240 () Bool)

(declare-fun setElem!2980 () Context!398)

(assert (=> setNonEmpty!2980 (= setRes!2980 (and tp!199240 (inv!8707 setElem!2980)))))

(declare-fun setRest!2980 () (InoxSet Context!398))

(assert (=> setNonEmpty!2980 (= (_2!4049 (h!12268 (t!84891 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2980 true) setRest!2980))))

(assert (=> b!640714 (= tp!199187 e!392111)))

(assert (= (and b!641610 condSetEmpty!2980) setIsEmpty!2980))

(assert (= (and b!641610 (not condSetEmpty!2980)) setNonEmpty!2980))

(assert (= (and b!640714 ((_ is Cons!6867) (t!84891 (zeroValue!922 (v!16994 (underlying!1513 (v!16995 (underlying!1514 (cache!1024 cacheUp!351))))))))) b!641610))

(declare-fun m!913949 () Bool)

(assert (=> b!641610 m!913949))

(declare-fun m!913951 () Bool)

(assert (=> setNonEmpty!2980 m!913951))

(declare-fun b!641611 () Bool)

(declare-fun tp!199243 () Bool)

(declare-fun tp!199244 () Bool)

(declare-fun e!392113 () Bool)

(assert (=> b!641611 (= e!392113 (and (inv!8701 (left!5464 (left!5464 (c!117092 (tokens!1209 printableTokens!2))))) tp!199243 (inv!8701 (right!5794 (left!5464 (c!117092 (tokens!1209 printableTokens!2))))) tp!199244))))

(declare-fun b!641613 () Bool)

(declare-fun e!392114 () Bool)

(declare-fun tp!199242 () Bool)

(assert (=> b!641613 (= e!392114 tp!199242)))

(declare-fun b!641612 () Bool)

(assert (=> b!641612 (= e!392113 (and (inv!8708 (xs!4959 (left!5464 (c!117092 (tokens!1209 printableTokens!2))))) e!392114))))

(assert (=> b!640689 (= tp!199154 (and (inv!8701 (left!5464 (c!117092 (tokens!1209 printableTokens!2)))) e!392113))))

(assert (= (and b!640689 ((_ is Node!2318) (left!5464 (c!117092 (tokens!1209 printableTokens!2))))) b!641611))

(assert (= b!641612 b!641613))

(assert (= (and b!640689 ((_ is Leaf!3523) (left!5464 (c!117092 (tokens!1209 printableTokens!2))))) b!641612))

(declare-fun m!913953 () Bool)

(assert (=> b!641611 m!913953))

(declare-fun m!913955 () Bool)

(assert (=> b!641611 m!913955))

(declare-fun m!913957 () Bool)

(assert (=> b!641612 m!913957))

(assert (=> b!640689 m!912613))

(declare-fun tp!199247 () Bool)

(declare-fun tp!199246 () Bool)

(declare-fun b!641614 () Bool)

(declare-fun e!392115 () Bool)

(assert (=> b!641614 (= e!392115 (and (inv!8701 (left!5464 (right!5794 (c!117092 (tokens!1209 printableTokens!2))))) tp!199246 (inv!8701 (right!5794 (right!5794 (c!117092 (tokens!1209 printableTokens!2))))) tp!199247))))

(declare-fun b!641616 () Bool)

(declare-fun e!392116 () Bool)

(declare-fun tp!199245 () Bool)

(assert (=> b!641616 (= e!392116 tp!199245)))

(declare-fun b!641615 () Bool)

(assert (=> b!641615 (= e!392115 (and (inv!8708 (xs!4959 (right!5794 (c!117092 (tokens!1209 printableTokens!2))))) e!392116))))

(assert (=> b!640689 (= tp!199155 (and (inv!8701 (right!5794 (c!117092 (tokens!1209 printableTokens!2)))) e!392115))))

(assert (= (and b!640689 ((_ is Node!2318) (right!5794 (c!117092 (tokens!1209 printableTokens!2))))) b!641614))

(assert (= b!641615 b!641616))

(assert (= (and b!640689 ((_ is Leaf!3523) (right!5794 (c!117092 (tokens!1209 printableTokens!2))))) b!641615))

(declare-fun m!913959 () Bool)

(assert (=> b!641614 m!913959))

(declare-fun m!913961 () Bool)

(assert (=> b!641614 m!913961))

(declare-fun m!913963 () Bool)

(assert (=> b!641615 m!913963))

(assert (=> b!640689 m!912615))

(declare-fun condSetEmpty!2981 () Bool)

(assert (=> setNonEmpty!2959 (= condSetEmpty!2981 (= setRest!2959 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2981 () Bool)

(assert (=> setNonEmpty!2959 (= tp!199186 setRes!2981)))

(declare-fun setIsEmpty!2981 () Bool)

(assert (=> setIsEmpty!2981 setRes!2981))

(declare-fun setNonEmpty!2981 () Bool)

(declare-fun tp!199248 () Bool)

(declare-fun setElem!2981 () Context!398)

(assert (=> setNonEmpty!2981 (= setRes!2981 (and tp!199248 (inv!8707 setElem!2981)))))

(declare-fun setRest!2981 () (InoxSet Context!398))

(assert (=> setNonEmpty!2981 (= setRest!2959 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2981 true) setRest!2981))))

(assert (= (and setNonEmpty!2959 condSetEmpty!2981) setIsEmpty!2981))

(assert (= (and setNonEmpty!2959 (not condSetEmpty!2981)) setNonEmpty!2981))

(declare-fun m!913965 () Bool)

(assert (=> setNonEmpty!2981 m!913965))

(declare-fun setIsEmpty!2982 () Bool)

(declare-fun setRes!2982 () Bool)

(assert (=> setIsEmpty!2982 setRes!2982))

(declare-fun setNonEmpty!2982 () Bool)

(declare-fun tp!199253 () Bool)

(declare-fun setElem!2982 () Context!398)

(assert (=> setNonEmpty!2982 (= setRes!2982 (and tp!199253 (inv!8707 setElem!2982)))))

(declare-fun mapDefault!2635 () List!6881)

(declare-fun setRest!2982 () (InoxSet Context!398))

(assert (=> setNonEmpty!2982 (= (_2!4049 (h!12268 mapDefault!2635)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2982 true) setRest!2982))))

(declare-fun mapIsEmpty!2635 () Bool)

(declare-fun mapRes!2635 () Bool)

(assert (=> mapIsEmpty!2635 mapRes!2635))

(declare-fun setRes!2983 () Bool)

(declare-fun b!641617 () Bool)

(declare-fun tp!199250 () Bool)

(declare-fun e!392121 () Bool)

(declare-fun mapValue!2635 () List!6881)

(assert (=> b!641617 (= e!392121 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 mapValue!2635)))) setRes!2983 tp!199250))))

(declare-fun condSetEmpty!2983 () Bool)

(assert (=> b!641617 (= condSetEmpty!2983 (= (_2!4049 (h!12268 mapValue!2635)) ((as const (Array Context!398 Bool)) false)))))

(declare-fun mapNonEmpty!2635 () Bool)

(declare-fun tp!199251 () Bool)

(assert (=> mapNonEmpty!2635 (= mapRes!2635 (and tp!199251 e!392121))))

(declare-fun mapRest!2635 () (Array (_ BitVec 32) List!6881))

(declare-fun mapKey!2635 () (_ BitVec 32))

(assert (=> mapNonEmpty!2635 (= mapRest!2630 (store mapRest!2635 mapKey!2635 mapValue!2635))))

(declare-fun setNonEmpty!2983 () Bool)

(declare-fun tp!199252 () Bool)

(declare-fun setElem!2983 () Context!398)

(assert (=> setNonEmpty!2983 (= setRes!2983 (and tp!199252 (inv!8707 setElem!2983)))))

(declare-fun setRest!2983 () (InoxSet Context!398))

(assert (=> setNonEmpty!2983 (= (_2!4049 (h!12268 mapValue!2635)) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2983 true) setRest!2983))))

(declare-fun condMapEmpty!2635 () Bool)

(assert (=> mapNonEmpty!2630 (= condMapEmpty!2635 (= mapRest!2630 ((as const (Array (_ BitVec 32) List!6881)) mapDefault!2635)))))

(declare-fun e!392122 () Bool)

(assert (=> mapNonEmpty!2630 (= tp!199130 (and e!392122 mapRes!2635))))

(declare-fun setIsEmpty!2983 () Bool)

(assert (=> setIsEmpty!2983 setRes!2983))

(declare-fun tp!199249 () Bool)

(declare-fun b!641618 () Bool)

(assert (=> b!641618 (= e!392122 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 mapDefault!2635)))) setRes!2982 tp!199249))))

(declare-fun condSetEmpty!2982 () Bool)

(assert (=> b!641618 (= condSetEmpty!2982 (= (_2!4049 (h!12268 mapDefault!2635)) ((as const (Array Context!398 Bool)) false)))))

(assert (= (and mapNonEmpty!2630 condMapEmpty!2635) mapIsEmpty!2635))

(assert (= (and mapNonEmpty!2630 (not condMapEmpty!2635)) mapNonEmpty!2635))

(assert (= (and b!641617 condSetEmpty!2983) setIsEmpty!2983))

(assert (= (and b!641617 (not condSetEmpty!2983)) setNonEmpty!2983))

(assert (= (and mapNonEmpty!2635 ((_ is Cons!6867) mapValue!2635)) b!641617))

(assert (= (and b!641618 condSetEmpty!2982) setIsEmpty!2982))

(assert (= (and b!641618 (not condSetEmpty!2982)) setNonEmpty!2982))

(assert (= (and mapNonEmpty!2630 ((_ is Cons!6867) mapDefault!2635)) b!641618))

(declare-fun m!913967 () Bool)

(assert (=> setNonEmpty!2983 m!913967))

(declare-fun m!913969 () Bool)

(assert (=> setNonEmpty!2982 m!913969))

(declare-fun m!913971 () Bool)

(assert (=> b!641618 m!913971))

(declare-fun m!913973 () Bool)

(assert (=> b!641617 m!913973))

(declare-fun m!913975 () Bool)

(assert (=> mapNonEmpty!2635 m!913975))

(declare-fun b!641632 () Bool)

(declare-fun b_next!18861 () Bool)

(declare-fun b_free!18813 () Bool)

(assert (=> b!641632 (= b_free!18813 (and (or (not d!223239) (not (= lambda!19009 (toValue!2319 (transformation!1378 (rule!2173 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2))))))))))) (or (not d!223243) (not (= lambda!19033 (toValue!2319 (transformation!1378 (rule!2173 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2))))))))))) (not b_next!18861)))))

(declare-fun tp!199260 () Bool)

(declare-fun b_and!62607 () Bool)

(assert (=> b!641632 (= tp!199260 b_and!62607)))

(declare-fun b_next!18863 () Bool)

(declare-fun b_free!18815 () Bool)

(assert (=> b!641632 (= b_free!18815 (and (or (not d!223239) (not (= lambda!19008 (toChars!2178 (transformation!1378 (rule!2173 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2))))))))))) (or (not d!223243) (not (= lambda!19032 (toChars!2178 (transformation!1378 (rule!2173 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2))))))))))) (not b_next!18863)))))

(declare-fun tp!199261 () Bool)

(declare-fun b_and!62609 () Bool)

(assert (=> b!641632 (= tp!199261 b_and!62609)))

(declare-fun e!392139 () Bool)

(assert (=> b!640691 (= tp!199153 e!392139)))

(declare-fun b!641631 () Bool)

(declare-fun e!392140 () Bool)

(declare-fun e!392138 () Bool)

(assert (=> b!641631 (= e!392140 (and (inv!8699 (tag!1640 (rule!2173 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2)))))))) (inv!8709 (transformation!1378 (rule!2173 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2)))))))) e!392138))))

(declare-fun b!641630 () Bool)

(declare-fun e!392137 () Bool)

(declare-fun inv!21 (TokenValue!1412) Bool)

(assert (=> b!641630 (= e!392137 (and (inv!21 (value!44424 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2))))))) e!392140))))

(assert (=> b!641632 (= e!392138 (and tp!199260 tp!199261))))

(declare-fun b!641629 () Bool)

(declare-fun tp!199262 () Bool)

(declare-fun inv!8712 (Token!2478) Bool)

(assert (=> b!641629 (= e!392139 (and (inv!8712 (h!12265 (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2)))))) e!392137 tp!199262))))

(assert (= b!641631 b!641632))

(assert (= b!641630 b!641631))

(assert (= b!641629 b!641630))

(assert (= (and b!640691 ((_ is Cons!6864) (innerList!2376 (xs!4959 (c!117092 (tokens!1209 printableTokens!2)))))) b!641629))

(declare-fun m!913977 () Bool)

(assert (=> b!641631 m!913977))

(declare-fun m!913979 () Bool)

(assert (=> b!641631 m!913979))

(declare-fun m!913981 () Bool)

(assert (=> b!641630 m!913981))

(declare-fun m!913983 () Bool)

(assert (=> b!641629 m!913983))

(declare-fun b!641633 () Bool)

(declare-fun e!392142 () Bool)

(assert (=> b!641633 (= e!392142 true)))

(declare-fun b!641635 () Bool)

(declare-fun e!392143 () Bool)

(assert (=> b!641635 (= e!392143 true)))

(declare-fun b!641634 () Bool)

(assert (=> b!641634 (= e!392142 e!392143)))

(assert (=> b!640556 e!392142))

(assert (= (and b!640556 ((_ is Node!2318) (c!117092 (tokens!1209 (_2!4053 lt!274827))))) b!641633))

(assert (= b!641634 b!641635))

(assert (= (and b!640556 ((_ is Leaf!3523) (c!117092 (tokens!1209 (_2!4053 lt!274827))))) b!641634))

(declare-fun setRes!2984 () Bool)

(declare-fun e!392145 () Bool)

(declare-fun b!641636 () Bool)

(declare-fun tp!199263 () Bool)

(assert (=> b!641636 (= e!392145 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (t!84892 mapDefault!2633))))) setRes!2984 tp!199263))))

(declare-fun condSetEmpty!2984 () Bool)

(assert (=> b!641636 (= condSetEmpty!2984 (= (_2!4051 (h!12269 (t!84892 mapDefault!2633))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2984 () Bool)

(assert (=> setIsEmpty!2984 setRes!2984))

(declare-fun setNonEmpty!2984 () Bool)

(declare-fun tp!199264 () Bool)

(declare-fun setElem!2984 () Context!398)

(assert (=> setNonEmpty!2984 (= setRes!2984 (and tp!199264 (inv!8707 setElem!2984)))))

(declare-fun setRest!2984 () (InoxSet Context!398))

(assert (=> setNonEmpty!2984 (= (_2!4051 (h!12269 (t!84892 mapDefault!2633))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2984 true) setRest!2984))))

(assert (=> b!640710 (= tp!199178 e!392145)))

(assert (= (and b!641636 condSetEmpty!2984) setIsEmpty!2984))

(assert (= (and b!641636 (not condSetEmpty!2984)) setNonEmpty!2984))

(assert (= (and b!640710 ((_ is Cons!6868) (t!84892 mapDefault!2633))) b!641636))

(declare-fun m!913985 () Bool)

(assert (=> b!641636 m!913985))

(declare-fun m!913987 () Bool)

(assert (=> setNonEmpty!2984 m!913987))

(declare-fun condSetEmpty!2985 () Bool)

(assert (=> setNonEmpty!2956 (= condSetEmpty!2985 (= setRest!2955 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2985 () Bool)

(assert (=> setNonEmpty!2956 (= tp!199177 setRes!2985)))

(declare-fun setIsEmpty!2985 () Bool)

(assert (=> setIsEmpty!2985 setRes!2985))

(declare-fun setNonEmpty!2985 () Bool)

(declare-fun tp!199265 () Bool)

(declare-fun setElem!2985 () Context!398)

(assert (=> setNonEmpty!2985 (= setRes!2985 (and tp!199265 (inv!8707 setElem!2985)))))

(declare-fun setRest!2985 () (InoxSet Context!398))

(assert (=> setNonEmpty!2985 (= setRest!2955 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2985 true) setRest!2985))))

(assert (= (and setNonEmpty!2956 condSetEmpty!2985) setIsEmpty!2985))

(assert (= (and setNonEmpty!2956 (not condSetEmpty!2985)) setNonEmpty!2985))

(declare-fun m!913989 () Bool)

(assert (=> setNonEmpty!2985 m!913989))

(declare-fun b!641637 () Bool)

(declare-fun setRes!2986 () Bool)

(declare-fun tp!199266 () Bool)

(declare-fun e!392149 () Bool)

(assert (=> b!641637 (= e!392149 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (t!84892 mapValue!2633))))) setRes!2986 tp!199266))))

(declare-fun condSetEmpty!2986 () Bool)

(assert (=> b!641637 (= condSetEmpty!2986 (= (_2!4051 (h!12269 (t!84892 mapValue!2633))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2986 () Bool)

(assert (=> setIsEmpty!2986 setRes!2986))

(declare-fun setNonEmpty!2986 () Bool)

(declare-fun tp!199267 () Bool)

(declare-fun setElem!2986 () Context!398)

(assert (=> setNonEmpty!2986 (= setRes!2986 (and tp!199267 (inv!8707 setElem!2986)))))

(declare-fun setRest!2986 () (InoxSet Context!398))

(assert (=> setNonEmpty!2986 (= (_2!4051 (h!12269 (t!84892 mapValue!2633))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2986 true) setRest!2986))))

(assert (=> b!640711 (= tp!199179 e!392149)))

(assert (= (and b!641637 condSetEmpty!2986) setIsEmpty!2986))

(assert (= (and b!641637 (not condSetEmpty!2986)) setNonEmpty!2986))

(assert (= (and b!640711 ((_ is Cons!6868) (t!84892 mapValue!2633))) b!641637))

(declare-fun m!913991 () Bool)

(assert (=> b!641637 m!913991))

(declare-fun m!913993 () Bool)

(assert (=> setNonEmpty!2986 m!913993))

(declare-fun b!641638 () Bool)

(declare-fun e!392156 () Bool)

(declare-fun lt!275396 () MutLongMap!666)

(assert (=> b!641638 (= e!392156 ((_ is LongMap!666) lt!275396))))

(assert (=> b!641638 (= lt!275396 (v!16997 (underlying!1516 (cache!1025 (_3!335 (createLeftBracketSeparator!0 (_2!4052 lt!274708) (_3!335 lt!274708)))))))))

(declare-fun b!641639 () Bool)

(declare-fun e!392151 () Bool)

(declare-fun e!392154 () Bool)

(assert (=> b!641639 (= e!392151 e!392154)))

(declare-fun b!641640 () Bool)

(declare-fun e!392153 () Bool)

(declare-fun e!392152 () Bool)

(assert (=> b!641640 (= e!392153 e!392152)))

(declare-fun e!392155 () Bool)

(assert (=> d!223101 (= true (and e!392155 e!392153))))

(declare-fun b!641641 () Bool)

(assert (=> b!641641 (= e!392155 e!392151)))

(declare-fun b!641642 () Bool)

(declare-fun lt!275395 () MutLongMap!665)

(assert (=> b!641642 (= e!392154 ((_ is LongMap!665) lt!275395))))

(assert (=> b!641642 (= lt!275395 (v!16995 (underlying!1514 (cache!1024 (_2!4052 (createLeftBracketSeparator!0 (_2!4052 lt!274708) (_3!335 lt!274708)))))))))

(declare-fun b!641643 () Bool)

(assert (=> b!641643 (= e!392152 e!392156)))

(assert (= b!641639 b!641642))

(assert (= (and b!641641 ((_ is HashMap!637) (cache!1024 (_2!4052 (createLeftBracketSeparator!0 (_2!4052 lt!274708) (_3!335 lt!274708)))))) b!641639))

(assert (= d!223101 b!641641))

(assert (= b!641643 b!641638))

(assert (= (and b!641640 ((_ is HashMap!638) (cache!1025 (_3!335 (createLeftBracketSeparator!0 (_2!4052 lt!274708) (_3!335 lt!274708)))))) b!641643))

(assert (= d!223101 b!641640))

(declare-fun b!641644 () Bool)

(declare-fun e!392157 () Bool)

(assert (=> b!641644 (= e!392157 true)))

(declare-fun b!641646 () Bool)

(declare-fun e!392158 () Bool)

(assert (=> b!641646 (= e!392158 true)))

(declare-fun b!641645 () Bool)

(assert (=> b!641645 (= e!392157 e!392158)))

(assert (=> b!640558 e!392157))

(assert (= (and b!640558 ((_ is Node!2318) (c!117092 (tokens!1209 (_2!4053 lt!274827))))) b!641644))

(assert (= b!641645 b!641646))

(assert (= (and b!640558 ((_ is Leaf!3523) (c!117092 (tokens!1209 (_2!4053 lt!274827))))) b!641645))

(declare-fun b!641647 () Bool)

(declare-fun e!392160 () Bool)

(declare-fun tp!199269 () Bool)

(declare-fun setRes!2987 () Bool)

(assert (=> b!641647 (= e!392160 (and (inv!8707 (_1!4048 (_1!4049 (h!12268 (t!84891 mapValue!2626))))) setRes!2987 tp!199269))))

(declare-fun condSetEmpty!2987 () Bool)

(assert (=> b!641647 (= condSetEmpty!2987 (= (_2!4049 (h!12268 (t!84891 mapValue!2626))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2987 () Bool)

(assert (=> setIsEmpty!2987 setRes!2987))

(declare-fun setNonEmpty!2987 () Bool)

(declare-fun tp!199268 () Bool)

(declare-fun setElem!2987 () Context!398)

(assert (=> setNonEmpty!2987 (= setRes!2987 (and tp!199268 (inv!8707 setElem!2987)))))

(declare-fun setRest!2987 () (InoxSet Context!398))

(assert (=> setNonEmpty!2987 (= (_2!4049 (h!12268 (t!84891 mapValue!2626))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2987 true) setRest!2987))))

(assert (=> b!640674 (= tp!199138 e!392160)))

(assert (= (and b!641647 condSetEmpty!2987) setIsEmpty!2987))

(assert (= (and b!641647 (not condSetEmpty!2987)) setNonEmpty!2987))

(assert (= (and b!640674 ((_ is Cons!6867) (t!84891 mapValue!2626))) b!641647))

(declare-fun m!913995 () Bool)

(assert (=> b!641647 m!913995))

(declare-fun m!913997 () Bool)

(assert (=> setNonEmpty!2987 m!913997))

(declare-fun condSetEmpty!2988 () Bool)

(assert (=> setNonEmpty!2945 (= condSetEmpty!2988 (= setRest!2945 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2988 () Bool)

(assert (=> setNonEmpty!2945 (= tp!199137 setRes!2988)))

(declare-fun setIsEmpty!2988 () Bool)

(assert (=> setIsEmpty!2988 setRes!2988))

(declare-fun setNonEmpty!2988 () Bool)

(declare-fun tp!199270 () Bool)

(declare-fun setElem!2988 () Context!398)

(assert (=> setNonEmpty!2988 (= setRes!2988 (and tp!199270 (inv!8707 setElem!2988)))))

(declare-fun setRest!2988 () (InoxSet Context!398))

(assert (=> setNonEmpty!2988 (= setRest!2945 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2988 true) setRest!2988))))

(assert (= (and setNonEmpty!2945 condSetEmpty!2988) setIsEmpty!2988))

(assert (= (and setNonEmpty!2945 (not condSetEmpty!2988)) setNonEmpty!2988))

(declare-fun m!913999 () Bool)

(assert (=> setNonEmpty!2988 m!913999))

(declare-fun tp!199271 () Bool)

(declare-fun e!392164 () Bool)

(declare-fun b!641648 () Bool)

(declare-fun setRes!2989 () Bool)

(assert (=> b!641648 (= e!392164 (and (inv!8707 (_2!4050 (_1!4051 (h!12269 (t!84892 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))))) setRes!2989 tp!199271))))

(declare-fun condSetEmpty!2989 () Bool)

(assert (=> b!641648 (= condSetEmpty!2989 (= (_2!4051 (h!12269 (t!84892 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))) ((as const (Array Context!398 Bool)) false)))))

(declare-fun setIsEmpty!2989 () Bool)

(assert (=> setIsEmpty!2989 setRes!2989))

(declare-fun setNonEmpty!2989 () Bool)

(declare-fun tp!199272 () Bool)

(declare-fun setElem!2989 () Context!398)

(assert (=> setNonEmpty!2989 (= setRes!2989 (and tp!199272 (inv!8707 setElem!2989)))))

(declare-fun setRest!2989 () (InoxSet Context!398))

(assert (=> setNonEmpty!2989 (= (_2!4051 (h!12269 (t!84892 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))) ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2989 true) setRest!2989))))

(assert (=> b!640679 (= tp!199143 e!392164)))

(assert (= (and b!641648 condSetEmpty!2989) setIsEmpty!2989))

(assert (= (and b!641648 (not condSetEmpty!2989)) setNonEmpty!2989))

(assert (= (and b!640679 ((_ is Cons!6868) (t!84892 (zeroValue!923 (v!16996 (underlying!1515 (v!16997 (underlying!1516 (cache!1025 cacheDown!364))))))))) b!641648))

(declare-fun m!914001 () Bool)

(assert (=> b!641648 m!914001))

(declare-fun m!914003 () Bool)

(assert (=> setNonEmpty!2989 m!914003))

(declare-fun b!641651 () Bool)

(declare-fun e!392168 () Bool)

(assert (=> b!641651 (= e!392168 true)))

(declare-fun b!641650 () Bool)

(declare-fun e!392167 () Bool)

(assert (=> b!641650 (= e!392167 e!392168)))

(declare-fun b!641649 () Bool)

(declare-fun e!392166 () Bool)

(assert (=> b!641649 (= e!392166 e!392167)))

(assert (=> b!640559 e!392166))

(assert (= b!641650 b!641651))

(assert (= b!641649 b!641650))

(assert (= (and b!640559 ((_ is Cons!6865) (rules!8210 (_2!4053 lt!274827)))) b!641649))

(assert (=> b!641651 (< (dynLambda!3755 order!5173 (toValue!2319 (transformation!1378 (h!12266 (rules!8210 (_2!4053 lt!274827)))))) (dynLambda!3749 order!5167 lambda!18925))))

(assert (=> b!641651 (< (dynLambda!3757 order!5177 (toChars!2178 (transformation!1378 (h!12266 (rules!8210 (_2!4053 lt!274827)))))) (dynLambda!3749 order!5167 lambda!18925))))

(declare-fun condSetEmpty!2990 () Bool)

(assert (=> setNonEmpty!2948 (= condSetEmpty!2990 (= setRest!2948 ((as const (Array Context!398 Bool)) false)))))

(declare-fun setRes!2990 () Bool)

(assert (=> setNonEmpty!2948 (= tp!199144 setRes!2990)))

(declare-fun setIsEmpty!2990 () Bool)

(assert (=> setIsEmpty!2990 setRes!2990))

(declare-fun setNonEmpty!2990 () Bool)

(declare-fun tp!199273 () Bool)

(declare-fun setElem!2990 () Context!398)

(assert (=> setNonEmpty!2990 (= setRes!2990 (and tp!199273 (inv!8707 setElem!2990)))))

(declare-fun setRest!2990 () (InoxSet Context!398))

(assert (=> setNonEmpty!2990 (= setRest!2948 ((_ map or) (store ((as const (Array Context!398 Bool)) false) setElem!2990 true) setRest!2990))))

(assert (= (and setNonEmpty!2948 condSetEmpty!2990) setIsEmpty!2990))

(assert (= (and setNonEmpty!2948 (not condSetEmpty!2990)) setNonEmpty!2990))

(declare-fun m!914005 () Bool)

(assert (=> setNonEmpty!2990 m!914005))

(declare-fun b!641652 () Bool)

(declare-fun e!392175 () Bool)

(declare-fun lt!275398 () MutLongMap!666)

(assert (=> b!641652 (= e!392175 ((_ is LongMap!666) lt!275398))))

(assert (=> b!641652 (= lt!275398 (v!16997 (underlying!1516 (cache!1025 (_3!335 (createRightBracketSeparator!0 (_2!4052 lt!274706) (_3!335 lt!274706)))))))))

(declare-fun b!641653 () Bool)

(declare-fun e!392170 () Bool)

(declare-fun e!392173 () Bool)

(assert (=> b!641653 (= e!392170 e!392173)))

(declare-fun b!641654 () Bool)

(declare-fun e!392172 () Bool)

(declare-fun e!392171 () Bool)

(assert (=> b!641654 (= e!392172 e!392171)))

(declare-fun e!392174 () Bool)

(assert (=> d!223111 (= true (and e!392174 e!392172))))

(declare-fun b!641655 () Bool)

(assert (=> b!641655 (= e!392174 e!392170)))

(declare-fun b!641656 () Bool)

(declare-fun lt!275397 () MutLongMap!665)

(assert (=> b!641656 (= e!392173 ((_ is LongMap!665) lt!275397))))

(assert (=> b!641656 (= lt!275397 (v!16995 (underlying!1514 (cache!1024 (_2!4052 (createRightBracketSeparator!0 (_2!4052 lt!274706) (_3!335 lt!274706)))))))))

(declare-fun b!641657 () Bool)

(assert (=> b!641657 (= e!392171 e!392175)))

(assert (= b!641653 b!641656))

(assert (= (and b!641655 ((_ is HashMap!637) (cache!1024 (_2!4052 (createRightBracketSeparator!0 (_2!4052 lt!274706) (_3!335 lt!274706)))))) b!641653))

(assert (= d!223111 b!641655))

(assert (= b!641657 b!641652))

(assert (= (and b!641654 ((_ is HashMap!638) (cache!1025 (_3!335 (createRightBracketSeparator!0 (_2!4052 lt!274706) (_3!335 lt!274706)))))) b!641657))

(assert (= d!223111 b!641654))

(declare-fun b_lambda!25313 () Bool)

(assert (= b_lambda!25305 (or b!640539 b_lambda!25313)))

(declare-fun bs!79159 () Bool)

(declare-fun d!223519 () Bool)

(assert (= bs!79159 (and d!223519 b!640539)))

(assert (=> bs!79159 (= (dynLambda!3752 lambda!18923 lt!274827) (< (_1!4053 lt!274827) (_1!4053 lt!274827)))))

(assert (=> d!223501 d!223519))

(declare-fun b_lambda!25315 () Bool)

(assert (= b_lambda!25269 (or b!640495 b_lambda!25315)))

(declare-fun bs!79160 () Bool)

(declare-fun d!223521 () Bool)

(assert (= bs!79160 (and d!223521 b!640495)))

(assert (=> bs!79160 (= (dynLambda!3753 lambda!18870 (h!12271 (map!1502 lt!274712 lambda!18869))) (usesJsonRules!0 (h!12271 (map!1502 lt!274712 lambda!18869))))))

(declare-fun m!914007 () Bool)

(assert (=> bs!79160 m!914007))

(assert (=> b!640860 d!223521))

(declare-fun b_lambda!25317 () Bool)

(assert (= b_lambda!25309 (or d!223113 b_lambda!25317)))

(declare-fun bs!79161 () Bool)

(declare-fun d!223523 () Bool)

(assert (= bs!79161 (and d!223523 d!223113)))

(declare-fun addId!0 (PrintableTokens!136) tuple2!7434)

(assert (=> bs!79161 (= (dynLambda!3753 lambda!18939 (h!12271 lt!274707)) (usesJsonRules!0 (_2!4053 (addId!0 (h!12271 lt!274707)))))))

(declare-fun m!914009 () Bool)

(assert (=> bs!79161 m!914009))

(declare-fun m!914011 () Bool)

(assert (=> bs!79161 m!914011))

(assert (=> b!641547 d!223523))

(declare-fun b_lambda!25319 () Bool)

(assert (= b_lambda!25299 (or b!640495 b_lambda!25319)))

(declare-fun bs!79162 () Bool)

(declare-fun d!223525 () Bool)

(assert (= bs!79162 (and d!223525 b!640495)))

(declare-fun removeId!0 (tuple2!7434) PrintableTokens!136)

(assert (=> bs!79162 (= (dynLambda!3754 lambda!18869 (h!12270 (list!2909 lt!274704))) (removeId!0 (h!12270 (list!2909 lt!274704))))))

(declare-fun m!914013 () Bool)

(assert (=> bs!79162 m!914013))

(assert (=> b!641442 d!223525))

(declare-fun b_lambda!25321 () Bool)

(assert (= b_lambda!25261 (or b!640539 b_lambda!25321)))

(declare-fun bs!79163 () Bool)

(declare-fun d!223527 () Bool)

(assert (= bs!79163 (and d!223527 b!640539)))

(assert (=> bs!79163 (= (dynLambda!3752 lambda!18925 lt!274827) (> (_1!4053 lt!274827) (_1!4053 lt!274827)))))

(assert (=> d!223177 d!223527))

(declare-fun b_lambda!25323 () Bool)

(assert (= b_lambda!25291 (or d!223097 b_lambda!25323)))

(declare-fun bs!79164 () Bool)

(declare-fun d!223529 () Bool)

(assert (= bs!79164 (and d!223529 d!223097)))

(assert (=> bs!79164 (= (dynLambda!3753 lambda!18876 (h!12271 lt!274707)) (dynLambda!3752 lambda!18868 (dynLambda!3759 lambda!18867 (h!12271 lt!274707))))))

(declare-fun b_lambda!25365 () Bool)

(assert (=> (not b_lambda!25365) (not bs!79164)))

(declare-fun b_lambda!25367 () Bool)

(assert (=> (not b_lambda!25367) (not bs!79164)))

(assert (=> bs!79164 m!913678))

(assert (=> bs!79164 m!913678))

(declare-fun m!914015 () Bool)

(assert (=> bs!79164 m!914015))

(assert (=> b!641381 d!223529))

(declare-fun b_lambda!25325 () Bool)

(assert (= b_lambda!25287 (or b!640495 b_lambda!25325)))

(declare-fun bs!79165 () Bool)

(declare-fun d!223531 () Bool)

(assert (= bs!79165 (and d!223531 b!640495)))

(assert (=> bs!79165 (= (dynLambda!3752 lambda!18868 (h!12270 (map!1503 lt!274707 lambda!18867))) (usesJsonRules!0 (_2!4053 (h!12270 (map!1503 lt!274707 lambda!18867)))))))

(declare-fun m!914017 () Bool)

(assert (=> bs!79165 m!914017))

(assert (=> b!641373 d!223531))

(declare-fun b_lambda!25327 () Bool)

(assert (= b_lambda!25289 (or b!640495 b_lambda!25327)))

(declare-fun bs!79166 () Bool)

(declare-fun d!223533 () Bool)

(assert (= bs!79166 (and d!223533 b!640495)))

(assert (=> bs!79166 (= (dynLambda!3759 lambda!18867 (h!12271 lt!274707)) (addId!0 (h!12271 lt!274707)))))

(assert (=> bs!79166 m!914009))

(assert (=> b!641380 d!223533))

(declare-fun b_lambda!25329 () Bool)

(assert (= b_lambda!25271 (or b!640495 b_lambda!25329)))

(declare-fun bs!79167 () Bool)

(declare-fun d!223535 () Bool)

(assert (= bs!79167 (and d!223535 b!640495)))

(assert (=> bs!79167 (= (dynLambda!3754 lambda!18869 (h!12270 lt!274712)) (removeId!0 (h!12270 lt!274712)))))

(declare-fun m!914019 () Bool)

(assert (=> bs!79167 m!914019))

(assert (=> b!640867 d!223535))

(declare-fun b_lambda!25331 () Bool)

(assert (= b_lambda!25273 (or d!223095 b_lambda!25331)))

(declare-fun bs!79168 () Bool)

(declare-fun d!223537 () Bool)

(assert (= bs!79168 (and d!223537 d!223095)))

(assert (=> bs!79168 (= (dynLambda!3752 lambda!18873 (h!12270 lt!274712)) (dynLambda!3753 lambda!18870 (dynLambda!3754 lambda!18869 (h!12270 lt!274712))))))

(declare-fun b_lambda!25369 () Bool)

(assert (=> (not b_lambda!25369) (not bs!79168)))

(declare-fun b_lambda!25371 () Bool)

(assert (=> (not b_lambda!25371) (not bs!79168)))

(assert (=> bs!79168 m!912930))

(assert (=> bs!79168 m!912930))

(declare-fun m!914021 () Bool)

(assert (=> bs!79168 m!914021))

(assert (=> b!640868 d!223537))

(declare-fun b_lambda!25333 () Bool)

(assert (= b_lambda!25281 (or b!640539 b_lambda!25333)))

(declare-fun bs!79169 () Bool)

(declare-fun d!223539 () Bool)

(assert (= bs!79169 (and d!223539 b!640539)))

(assert (=> bs!79169 (= (dynLambda!3752 lambda!18926 (h!12270 lt!274809)) (usesJsonRules!0 (_2!4053 (h!12270 lt!274809))))))

(declare-fun m!914023 () Bool)

(assert (=> bs!79169 m!914023))

(assert (=> b!641259 d!223539))

(declare-fun b_lambda!25335 () Bool)

(assert (= b_lambda!25277 (or d!223239 b_lambda!25335)))

(declare-fun bs!79170 () Bool)

(declare-fun d!223541 () Bool)

(assert (= bs!79170 (and d!223541 d!223239)))

(assert (=> bs!79170 (= (dynLambda!3758 lambda!19009 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)))))

(assert (=> bs!79170 m!912443))

(declare-fun bs!79171 () Bool)

(declare-fun s!24346 () Bool)

(assert (= bs!79171 (and neg-inst!304 s!24346)))

(declare-fun res!279261 () Bool)

(declare-fun e!392176 () Bool)

(assert (=> bs!79171 (=> res!279261 e!392176)))

(assert (=> bs!79171 (= res!279261 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275166))))))

(assert (=> bs!79171 (=> true e!392176)))

(declare-fun b!641658 () Bool)

(assert (=> b!641658 (= e!392176 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!79171 (not res!279261)) b!641658))

(declare-fun bs!79172 () Bool)

(declare-fun s!24348 () Bool)

(assert (= bs!79172 (and neg-inst!304 s!24348)))

(declare-fun res!279262 () Bool)

(declare-fun e!392177 () Bool)

(assert (=> bs!79172 (=> res!279262 e!392177)))

(assert (=> bs!79172 (= res!279262 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275359))))))

(assert (=> bs!79172 (=> true e!392177)))

(declare-fun b!641659 () Bool)

(assert (=> b!641659 (= e!392177 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!79172 (not res!279262)) b!641659))

(declare-fun bs!79173 () Bool)

(declare-fun m!914027 () Bool)

(assert (= bs!79173 (and m!914027 m!913728)))

(assert (=> bs!79173 m!914027))

(assert (=> bs!79173 m!913728))

(assert (=> bs!79173 s!24348))

(declare-fun bs!79174 () Bool)

(declare-fun s!24350 () Bool)

(assert (= bs!79174 (and neg-inst!304 s!24350)))

(declare-fun res!279263 () Bool)

(declare-fun e!392178 () Bool)

(assert (=> bs!79174 (=> res!279263 e!392178)))

(assert (=> bs!79174 (= res!279263 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140420))))))

(assert (=> bs!79174 (=> true e!392178)))

(declare-fun b!641660 () Bool)

(assert (=> b!641660 (= e!392178 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!79174 (not res!279263)) b!641660))

(declare-fun bs!79175 () Bool)

(assert (= bs!79175 (and m!914027 m!913026)))

(assert (=> bs!79175 m!914027))

(assert (=> bs!79175 m!913026))

(assert (=> bs!79175 s!24350))

(declare-fun bs!79176 () Bool)

(declare-fun s!24352 () Bool)

(assert (= bs!79176 (and neg-inst!304 s!24352)))

(declare-fun res!279264 () Bool)

(declare-fun e!392179 () Bool)

(assert (=> bs!79176 (=> res!279264 e!392179)))

(assert (=> bs!79176 (= res!279264 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140374))))))

(assert (=> bs!79176 (=> true e!392179)))

(declare-fun b!641661 () Bool)

(assert (=> b!641661 (= e!392179 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!79176 (not res!279264)) b!641661))

(declare-fun bs!79177 () Bool)

(assert (= bs!79177 (and m!914027 m!912978 m!912980)))

(assert (=> bs!79177 m!914027))

(assert (=> bs!79177 m!912978))

(assert (=> bs!79177 s!24352))

(declare-fun bs!79178 () Bool)

(declare-fun s!24354 () Bool)

(assert (= bs!79178 (and neg-inst!304 s!24354)))

(declare-fun res!279265 () Bool)

(declare-fun e!392180 () Bool)

(assert (=> bs!79178 (=> res!279265 e!392180)))

(assert (=> bs!79178 (= res!279265 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79178 (=> true e!392180)))

(declare-fun b!641662 () Bool)

(assert (=> b!641662 (= e!392180 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79178 (not res!279265)) b!641662))

(declare-fun bs!79179 () Bool)

(assert (= bs!79179 (and m!914027 m!912984)))

(assert (=> bs!79179 m!914027))

(assert (=> bs!79179 m!912984))

(assert (=> bs!79179 s!24354))

(declare-fun bs!79180 () Bool)

(declare-fun s!24356 () Bool)

(assert (= bs!79180 (and neg-inst!304 s!24356)))

(declare-fun res!279266 () Bool)

(declare-fun e!392181 () Bool)

(assert (=> bs!79180 (=> res!279266 e!392181)))

(assert (=> bs!79180 (= res!279266 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140421))))))

(assert (=> bs!79180 (=> true e!392181)))

(declare-fun b!641663 () Bool)

(assert (=> b!641663 (= e!392181 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!79180 (not res!279266)) b!641663))

(declare-fun bs!79181 () Bool)

(assert (= bs!79181 (and m!914027 m!913028)))

(assert (=> bs!79181 m!914027))

(assert (=> bs!79181 m!913028))

(assert (=> bs!79181 s!24356))

(declare-fun bs!79182 () Bool)

(declare-fun s!24358 () Bool)

(assert (= bs!79182 (and neg-inst!304 s!24358)))

(declare-fun res!279267 () Bool)

(declare-fun e!392182 () Bool)

(assert (=> bs!79182 (=> res!279267 e!392182)))

(assert (=> bs!79182 (= res!279267 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79182 (=> true e!392182)))

(declare-fun b!641664 () Bool)

(assert (=> b!641664 (= e!392182 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79182 (not res!279267)) b!641664))

(declare-fun bs!79183 () Bool)

(assert (= bs!79183 (and m!914027 m!913020)))

(assert (=> bs!79183 m!914027))

(assert (=> bs!79183 m!913020))

(assert (=> bs!79183 s!24358))

(declare-fun bs!79184 () Bool)

(declare-fun s!24360 () Bool)

(assert (= bs!79184 (and neg-inst!304 s!24360)))

(declare-fun res!279268 () Bool)

(declare-fun e!392183 () Bool)

(assert (=> bs!79184 (=> res!279268 e!392183)))

(assert (=> bs!79184 (= res!279268 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79184 (=> true e!392183)))

(declare-fun b!641665 () Bool)

(assert (=> b!641665 (= e!392183 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79184 (not res!279268)) b!641665))

(assert (=> m!914027 s!24360))

(declare-fun bs!79185 () Bool)

(declare-fun s!24362 () Bool)

(assert (= bs!79185 (and neg-inst!304 s!24362)))

(declare-fun res!279269 () Bool)

(declare-fun e!392184 () Bool)

(assert (=> bs!79185 (=> res!279269 e!392184)))

(assert (=> bs!79185 (= res!279269 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140376))))))

(assert (=> bs!79185 (=> true e!392184)))

(declare-fun b!641666 () Bool)

(assert (=> b!641666 (= e!392184 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!79185 (not res!279269)) b!641666))

(declare-fun bs!79186 () Bool)

(assert (= bs!79186 (and m!914027 m!912998 m!912990)))

(assert (=> bs!79186 m!914027))

(assert (=> bs!79186 m!912990))

(assert (=> bs!79186 s!24362))

(declare-fun bs!79187 () Bool)

(declare-fun s!24364 () Bool)

(assert (= bs!79187 (and neg-inst!304 s!24364)))

(declare-fun res!279270 () Bool)

(declare-fun e!392185 () Bool)

(assert (=> bs!79187 (=> res!279270 e!392185)))

(assert (=> bs!79187 (= res!279270 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140419))))))

(assert (=> bs!79187 (=> true e!392185)))

(declare-fun b!641667 () Bool)

(assert (=> b!641667 (= e!392185 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!79187 (not res!279270)) b!641667))

(declare-fun bs!79188 () Bool)

(assert (= bs!79188 (and m!914027 m!913024)))

(assert (=> bs!79188 m!914027))

(assert (=> bs!79188 m!913024))

(assert (=> bs!79188 s!24364))

(declare-fun bs!79189 () Bool)

(declare-fun m!914025 () Bool)

(assert (= bs!79189 (and m!914027 m!914025)))

(assert (=> bs!79189 s!24360))

(declare-fun bs!79190 () Bool)

(declare-fun s!24366 () Bool)

(assert (= bs!79190 (and neg-inst!304 s!24366)))

(declare-fun res!279271 () Bool)

(declare-fun e!392186 () Bool)

(assert (=> bs!79190 (=> res!279271 e!392186)))

(assert (=> bs!79190 (= res!279271 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275382))))))

(assert (=> bs!79190 (=> true e!392186)))

(declare-fun b!641668 () Bool)

(assert (=> b!641668 (= e!392186 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79190 (not res!279271)) b!641668))

(declare-fun bs!79191 () Bool)

(assert (= bs!79191 (and m!914027 m!913841)))

(assert (=> bs!79191 m!914027))

(assert (=> bs!79191 m!913841))

(assert (=> bs!79191 s!24366))

(declare-fun bs!79192 () Bool)

(declare-fun s!24368 () Bool)

(assert (= bs!79192 (and neg-inst!304 s!24368)))

(declare-fun res!279272 () Bool)

(declare-fun e!392187 () Bool)

(assert (=> bs!79192 (=> res!279272 e!392187)))

(assert (=> bs!79192 (= res!279272 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140375))))))

(assert (=> bs!79192 (=> true e!392187)))

(declare-fun b!641669 () Bool)

(assert (=> b!641669 (= e!392187 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!79192 (not res!279272)) b!641669))

(declare-fun bs!79193 () Bool)

(assert (= bs!79193 (and m!914027 m!912996 m!912988)))

(assert (=> bs!79193 m!914027))

(assert (=> bs!79193 m!912988))

(assert (=> bs!79193 s!24368))

(declare-fun bs!79194 () Bool)

(assert (= bs!79194 (and m!914027 m!912970)))

(assert (=> bs!79194 s!24346))

(declare-fun bs!79195 () Bool)

(declare-fun s!24370 () Bool)

(assert (= bs!79195 (and neg-inst!304 s!24370)))

(declare-fun res!279273 () Bool)

(declare-fun e!392188 () Bool)

(assert (=> bs!79195 (=> res!279273 e!392188)))

(assert (=> bs!79195 (= res!279273 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275195))))))

(assert (=> bs!79195 (=> true e!392188)))

(declare-fun b!641670 () Bool)

(assert (=> b!641670 (= e!392188 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!79195 (not res!279273)) b!641670))

(declare-fun bs!79196 () Bool)

(assert (= bs!79196 (and m!914027 m!913082)))

(assert (=> bs!79196 m!914027))

(assert (=> bs!79196 m!913082))

(assert (=> bs!79196 s!24370))

(declare-fun bs!79197 () Bool)

(declare-fun s!24372 () Bool)

(assert (= bs!79197 (and neg-inst!304 s!24372)))

(declare-fun res!279274 () Bool)

(declare-fun e!392189 () Bool)

(assert (=> bs!79197 (=> res!279274 e!392189)))

(assert (=> bs!79197 (= res!279274 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79197 (=> true e!392189)))

(declare-fun b!641671 () Bool)

(assert (=> b!641671 (= e!392189 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79197 (not res!279274)) b!641671))

(assert (=> bs!79173 m!913728))

(assert (=> bs!79173 m!914027))

(assert (=> bs!79173 s!24372))

(declare-fun bs!79198 () Bool)

(declare-fun s!24374 () Bool)

(assert (= bs!79198 (and neg-inst!304 s!24374)))

(declare-fun res!279275 () Bool)

(declare-fun e!392190 () Bool)

(assert (=> bs!79198 (=> res!279275 e!392190)))

(assert (=> bs!79198 (= res!279275 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79198 (=> true e!392190)))

(declare-fun b!641672 () Bool)

(assert (=> b!641672 (= e!392190 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79198 (not res!279275)) b!641672))

(assert (=> bs!79196 m!913082))

(assert (=> bs!79196 m!914027))

(assert (=> bs!79196 s!24374))

(declare-fun bs!79199 () Bool)

(declare-fun s!24376 () Bool)

(assert (= bs!79199 (and neg-inst!304 s!24376)))

(declare-fun res!279276 () Bool)

(declare-fun e!392191 () Bool)

(assert (=> bs!79199 (=> res!279276 e!392191)))

(assert (=> bs!79199 (= res!279276 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79199 (=> true e!392191)))

(declare-fun b!641673 () Bool)

(assert (=> b!641673 (= e!392191 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79199 (not res!279276)) b!641673))

(assert (=> bs!79191 m!913841))

(assert (=> bs!79191 m!914027))

(assert (=> bs!79191 s!24376))

(declare-fun bs!79200 () Bool)

(declare-fun s!24378 () Bool)

(assert (= bs!79200 (and neg-inst!304 s!24378)))

(declare-fun res!279277 () Bool)

(declare-fun e!392192 () Bool)

(assert (=> bs!79200 (=> res!279277 e!392192)))

(assert (=> bs!79200 (= res!279277 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79200 (=> true e!392192)))

(declare-fun b!641674 () Bool)

(assert (=> b!641674 (= e!392192 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79200 (not res!279277)) b!641674))

(assert (=> bs!79181 m!913028))

(assert (=> bs!79181 m!914027))

(assert (=> bs!79181 s!24378))

(declare-fun bs!79201 () Bool)

(declare-fun s!24380 () Bool)

(assert (= bs!79201 (and neg-inst!304 s!24380)))

(declare-fun res!279278 () Bool)

(declare-fun e!392193 () Bool)

(assert (=> bs!79201 (=> res!279278 e!392193)))

(assert (=> bs!79201 (= res!279278 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79201 (=> true e!392193)))

(declare-fun b!641675 () Bool)

(assert (=> b!641675 (= e!392193 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79201 (not res!279278)) b!641675))

(assert (=> bs!79193 m!912988))

(assert (=> bs!79193 m!914027))

(assert (=> bs!79193 s!24380))

(declare-fun bs!79202 () Bool)

(declare-fun s!24382 () Bool)

(assert (= bs!79202 (and neg-inst!304 s!24382)))

(declare-fun res!279279 () Bool)

(declare-fun e!392194 () Bool)

(assert (=> bs!79202 (=> res!279279 e!392194)))

(assert (=> bs!79202 (= res!279279 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79202 (=> true e!392194)))

(declare-fun b!641676 () Bool)

(assert (=> b!641676 (= e!392194 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79202 (not res!279279)) b!641676))

(assert (=> bs!79175 m!913026))

(assert (=> bs!79175 m!914027))

(assert (=> bs!79175 s!24382))

(declare-fun bs!79203 () Bool)

(declare-fun s!24384 () Bool)

(assert (= bs!79203 (and neg-inst!304 s!24384)))

(declare-fun res!279280 () Bool)

(declare-fun e!392195 () Bool)

(assert (=> bs!79203 (=> res!279280 e!392195)))

(assert (=> bs!79203 (= res!279280 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79203 (=> true e!392195)))

(declare-fun b!641677 () Bool)

(assert (=> b!641677 (= e!392195 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79203 (not res!279280)) b!641677))

(assert (=> bs!79179 m!912984))

(assert (=> bs!79179 m!914027))

(assert (=> bs!79179 s!24384))

(declare-fun bs!79204 () Bool)

(declare-fun s!24386 () Bool)

(assert (= bs!79204 (and neg-inst!304 s!24386)))

(declare-fun res!279281 () Bool)

(declare-fun e!392196 () Bool)

(assert (=> bs!79204 (=> res!279281 e!392196)))

(assert (=> bs!79204 (= res!279281 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79204 (=> true e!392196)))

(declare-fun b!641678 () Bool)

(assert (=> b!641678 (= e!392196 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79204 (not res!279281)) b!641678))

(assert (=> bs!79183 m!913020))

(assert (=> bs!79183 m!914027))

(assert (=> bs!79183 s!24386))

(declare-fun bs!79205 () Bool)

(declare-fun s!24388 () Bool)

(assert (= bs!79205 (and neg-inst!304 s!24388)))

(declare-fun res!279282 () Bool)

(declare-fun e!392197 () Bool)

(assert (=> bs!79205 (=> res!279282 e!392197)))

(assert (=> bs!79205 (= res!279282 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79205 (=> true e!392197)))

(declare-fun b!641679 () Bool)

(assert (=> b!641679 (= e!392197 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79205 (not res!279282)) b!641679))

(assert (=> bs!79186 m!912990))

(assert (=> bs!79186 m!914027))

(assert (=> bs!79186 s!24388))

(assert (=> bs!79189 s!24360))

(declare-fun bs!79206 () Bool)

(declare-fun s!24390 () Bool)

(assert (= bs!79206 (and neg-inst!304 s!24390)))

(declare-fun res!279283 () Bool)

(declare-fun e!392198 () Bool)

(assert (=> bs!79206 (=> res!279283 e!392198)))

(assert (=> bs!79206 (= res!279283 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79206 (=> true e!392198)))

(declare-fun b!641680 () Bool)

(assert (=> b!641680 (= e!392198 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79206 (not res!279283)) b!641680))

(assert (=> bs!79194 m!912970))

(assert (=> bs!79194 m!914027))

(assert (=> bs!79194 s!24390))

(declare-fun bs!79207 () Bool)

(declare-fun s!24392 () Bool)

(assert (= bs!79207 (and neg-inst!304 s!24392)))

(declare-fun res!279284 () Bool)

(declare-fun e!392199 () Bool)

(assert (=> bs!79207 (=> res!279284 e!392199)))

(assert (=> bs!79207 (= res!279284 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79207 (=> true e!392199)))

(declare-fun b!641681 () Bool)

(assert (=> b!641681 (= e!392199 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79207 (not res!279284)) b!641681))

(assert (=> bs!79177 m!912978))

(assert (=> bs!79177 m!914027))

(assert (=> bs!79177 s!24392))

(assert (=> m!914027 s!24360))

(declare-fun bs!79208 () Bool)

(declare-fun s!24394 () Bool)

(assert (= bs!79208 (and neg-inst!304 s!24394)))

(declare-fun res!279285 () Bool)

(declare-fun e!392200 () Bool)

(assert (=> bs!79208 (=> res!279285 e!392200)))

(assert (=> bs!79208 (= res!279285 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79208 (=> true e!392200)))

(declare-fun b!641682 () Bool)

(assert (=> b!641682 (= e!392200 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79208 (not res!279285)) b!641682))

(assert (=> bs!79188 m!913024))

(assert (=> bs!79188 m!914027))

(assert (=> bs!79188 s!24394))

(declare-fun bs!79209 () Bool)

(declare-fun s!24396 () Bool)

(assert (= bs!79209 (and neg-inst!311 s!24396)))

(declare-fun res!279286 () Bool)

(declare-fun e!392201 () Bool)

(assert (=> bs!79209 (=> res!279286 e!392201)))

(assert (=> bs!79209 (= res!279286 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140421))))))

(assert (=> bs!79209 (=> true e!392201)))

(declare-fun b!641683 () Bool)

(assert (=> b!641683 (= e!392201 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!79209 (not res!279286)) b!641683))

(declare-fun bs!79210 () Bool)

(assert (= bs!79210 (and m!914027 m!913028 m!913036)))

(assert (=> bs!79210 m!914027))

(assert (=> bs!79210 m!913028))

(assert (=> bs!79210 s!24396))

(declare-fun bs!79211 () Bool)

(declare-fun s!24398 () Bool)

(assert (= bs!79211 (and neg-inst!311 s!24398)))

(declare-fun res!279287 () Bool)

(declare-fun e!392202 () Bool)

(assert (=> bs!79211 (=> res!279287 e!392202)))

(assert (=> bs!79211 (= res!279287 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140419))))))

(assert (=> bs!79211 (=> true e!392202)))

(declare-fun b!641684 () Bool)

(assert (=> b!641684 (= e!392202 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!79211 (not res!279287)) b!641684))

(declare-fun bs!79212 () Bool)

(assert (= bs!79212 (and m!914027 m!913016 m!913024)))

(assert (=> bs!79212 m!914027))

(assert (=> bs!79212 m!913024))

(assert (=> bs!79212 s!24398))

(declare-fun bs!79213 () Bool)

(declare-fun s!24400 () Bool)

(assert (= bs!79213 (and neg-inst!311 s!24400)))

(declare-fun res!279288 () Bool)

(declare-fun e!392203 () Bool)

(assert (=> bs!79213 (=> res!279288 e!392203)))

(assert (=> bs!79213 (= res!279288 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79213 (=> true e!392203)))

(declare-fun b!641685 () Bool)

(assert (=> b!641685 (= e!392203 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79213 (not res!279288)) b!641685))

(assert (=> m!914027 s!24400))

(declare-fun bs!79214 () Bool)

(declare-fun s!24402 () Bool)

(assert (= bs!79214 (and neg-inst!311 s!24402)))

(declare-fun res!279289 () Bool)

(declare-fun e!392204 () Bool)

(assert (=> bs!79214 (=> res!279289 e!392204)))

(assert (=> bs!79214 (= res!279289 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140376))))))

(assert (=> bs!79214 (=> true e!392204)))

(declare-fun b!641686 () Bool)

(assert (=> b!641686 (= e!392204 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!79214 (not res!279289)) b!641686))

(declare-fun bs!79215 () Bool)

(assert (= bs!79215 (and m!914027 m!912990)))

(assert (=> bs!79215 m!914027))

(assert (=> bs!79215 m!912990))

(assert (=> bs!79215 s!24402))

(declare-fun bs!79216 () Bool)

(declare-fun s!24404 () Bool)

(assert (= bs!79216 (and neg-inst!311 s!24404)))

(declare-fun res!279290 () Bool)

(declare-fun e!392205 () Bool)

(assert (=> bs!79216 (=> res!279290 e!392205)))

(assert (=> bs!79216 (= res!279290 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275166))))))

(assert (=> bs!79216 (=> true e!392205)))

(declare-fun b!641687 () Bool)

(assert (=> b!641687 (= e!392205 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!79216 (not res!279290)) b!641687))

(assert (=> bs!79194 m!914027))

(assert (=> bs!79194 m!912970))

(assert (=> bs!79194 s!24404))

(declare-fun bs!79217 () Bool)

(declare-fun s!24406 () Bool)

(assert (= bs!79217 (and neg-inst!311 s!24406)))

(declare-fun res!279291 () Bool)

(declare-fun e!392206 () Bool)

(assert (=> bs!79217 (=> res!279291 e!392206)))

(assert (=> bs!79217 (= res!279291 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140420))))))

(assert (=> bs!79217 (=> true e!392206)))

(declare-fun b!641688 () Bool)

(assert (=> b!641688 (= e!392206 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!79217 (not res!279291)) b!641688))

(declare-fun bs!79218 () Bool)

(assert (= bs!79218 (and m!914027 m!913026 m!913034)))

(assert (=> bs!79218 m!914027))

(assert (=> bs!79218 m!913026))

(assert (=> bs!79218 s!24406))

(declare-fun bs!79219 () Bool)

(declare-fun s!24408 () Bool)

(assert (= bs!79219 (and neg-inst!311 s!24408)))

(declare-fun res!279292 () Bool)

(declare-fun e!392207 () Bool)

(assert (=> bs!79219 (=> res!279292 e!392207)))

(assert (=> bs!79219 (= res!279292 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140374))))))

(assert (=> bs!79219 (=> true e!392207)))

(declare-fun b!641689 () Bool)

(assert (=> b!641689 (= e!392207 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!79219 (not res!279292)) b!641689))

(declare-fun bs!79220 () Bool)

(assert (= bs!79220 (and m!914027 m!912978)))

(assert (=> bs!79220 m!914027))

(assert (=> bs!79220 m!912978))

(assert (=> bs!79220 s!24408))

(declare-fun bs!79221 () Bool)

(declare-fun s!24410 () Bool)

(assert (= bs!79221 (and neg-inst!311 s!24410)))

(declare-fun res!279293 () Bool)

(declare-fun e!392208 () Bool)

(assert (=> bs!79221 (=> res!279293 e!392208)))

(assert (=> bs!79221 (= res!279293 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275359))))))

(assert (=> bs!79221 (=> true e!392208)))

(declare-fun b!641690 () Bool)

(assert (=> b!641690 (= e!392208 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!79221 (not res!279293)) b!641690))

(assert (=> bs!79173 m!914027))

(assert (=> bs!79173 m!913728))

(assert (=> bs!79173 s!24410))

(declare-fun bs!79222 () Bool)

(declare-fun s!24412 () Bool)

(assert (= bs!79222 (and neg-inst!311 s!24412)))

(declare-fun res!279294 () Bool)

(declare-fun e!392209 () Bool)

(assert (=> bs!79222 (=> res!279294 e!392209)))

(assert (=> bs!79222 (= res!279294 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275195))))))

(assert (=> bs!79222 (=> true e!392209)))

(declare-fun b!641691 () Bool)

(assert (=> b!641691 (= e!392209 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!79222 (not res!279294)) b!641691))

(assert (=> bs!79196 m!914027))

(assert (=> bs!79196 m!913082))

(assert (=> bs!79196 s!24412))

(declare-fun bs!79223 () Bool)

(declare-fun s!24414 () Bool)

(assert (= bs!79223 (and neg-inst!311 s!24414)))

(declare-fun res!279295 () Bool)

(declare-fun e!392210 () Bool)

(assert (=> bs!79223 (=> res!279295 e!392210)))

(assert (=> bs!79223 (= res!279295 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79223 (=> true e!392210)))

(declare-fun b!641692 () Bool)

(assert (=> b!641692 (= e!392210 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79223 (not res!279295)) b!641692))

(assert (=> bs!79183 m!914027))

(assert (=> bs!79183 m!913020))

(assert (=> bs!79183 s!24414))

(declare-fun bs!79224 () Bool)

(declare-fun s!24416 () Bool)

(assert (= bs!79224 (and neg-inst!311 s!24416)))

(declare-fun res!279296 () Bool)

(declare-fun e!392211 () Bool)

(assert (=> bs!79224 (=> res!279296 e!392211)))

(assert (=> bs!79224 (= res!279296 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 lt!275382))))))

(assert (=> bs!79224 (=> true e!392211)))

(declare-fun b!641693 () Bool)

(assert (=> b!641693 (= e!392211 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79224 (not res!279296)) b!641693))

(assert (=> bs!79191 m!914027))

(assert (=> bs!79191 m!913841))

(assert (=> bs!79191 s!24416))

(declare-fun bs!79225 () Bool)

(declare-fun s!24418 () Bool)

(assert (= bs!79225 (and neg-inst!311 s!24418)))

(declare-fun res!279297 () Bool)

(declare-fun e!392212 () Bool)

(assert (=> bs!79225 (=> res!279297 e!392212)))

(assert (=> bs!79225 (= res!279297 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 x!140375))))))

(assert (=> bs!79225 (=> true e!392212)))

(declare-fun b!641694 () Bool)

(assert (=> b!641694 (= e!392212 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!79225 (not res!279297)) b!641694))

(declare-fun bs!79226 () Bool)

(assert (= bs!79226 (and m!914027 m!912988)))

(assert (=> bs!79226 m!914027))

(assert (=> bs!79226 m!912988))

(assert (=> bs!79226 s!24418))

(declare-fun bs!79227 () Bool)

(declare-fun s!24420 () Bool)

(assert (= bs!79227 (and neg-inst!311 s!24420)))

(declare-fun res!279298 () Bool)

(declare-fun e!392213 () Bool)

(assert (=> bs!79227 (=> res!279298 e!392213)))

(assert (=> bs!79227 (= res!279298 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79227 (=> true e!392213)))

(declare-fun b!641695 () Bool)

(assert (=> b!641695 (= e!392213 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79227 (not res!279298)) b!641695))

(assert (=> bs!79179 m!914027))

(assert (=> bs!79179 m!912984))

(assert (=> bs!79179 s!24420))

(declare-fun bs!79228 () Bool)

(declare-fun s!24422 () Bool)

(assert (= bs!79228 (and neg-inst!311 s!24422)))

(declare-fun res!279299 () Bool)

(declare-fun e!392214 () Bool)

(assert (=> bs!79228 (=> res!279299 e!392214)))

(assert (=> bs!79228 (= res!279299 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79228 (=> true e!392214)))

(declare-fun b!641696 () Bool)

(assert (=> b!641696 (= e!392214 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79228 (not res!279299)) b!641696))

(assert (=> bs!79191 m!913841))

(assert (=> bs!79191 m!914027))

(assert (=> bs!79191 s!24422))

(declare-fun bs!79229 () Bool)

(declare-fun s!24424 () Bool)

(assert (= bs!79229 (and neg-inst!311 s!24424)))

(declare-fun res!279300 () Bool)

(declare-fun e!392215 () Bool)

(assert (=> bs!79229 (=> res!279300 e!392215)))

(assert (=> bs!79229 (= res!279300 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79229 (=> true e!392215)))

(declare-fun b!641697 () Bool)

(assert (=> b!641697 (= e!392215 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79229 (not res!279300)) b!641697))

(assert (=> bs!79226 m!912988))

(assert (=> bs!79226 m!914027))

(assert (=> bs!79226 s!24424))

(declare-fun bs!79230 () Bool)

(declare-fun s!24426 () Bool)

(assert (= bs!79230 (and neg-inst!311 s!24426)))

(declare-fun res!279301 () Bool)

(declare-fun e!392216 () Bool)

(assert (=> bs!79230 (=> res!279301 e!392216)))

(assert (=> bs!79230 (= res!279301 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79230 (=> true e!392216)))

(declare-fun b!641698 () Bool)

(assert (=> b!641698 (= e!392216 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79230 (not res!279301)) b!641698))

(assert (=> bs!79212 m!913024))

(assert (=> bs!79212 m!914027))

(assert (=> bs!79212 s!24426))

(declare-fun bs!79231 () Bool)

(declare-fun s!24428 () Bool)

(assert (= bs!79231 (and neg-inst!311 s!24428)))

(declare-fun res!279302 () Bool)

(declare-fun e!392217 () Bool)

(assert (=> bs!79231 (=> res!279302 e!392217)))

(assert (=> bs!79231 (= res!279302 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79231 (=> true e!392217)))

(declare-fun b!641699 () Bool)

(assert (=> b!641699 (= e!392217 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79231 (not res!279302)) b!641699))

(assert (=> bs!79179 m!912984))

(assert (=> bs!79179 m!914027))

(assert (=> bs!79179 s!24428))

(declare-fun bs!79232 () Bool)

(declare-fun s!24430 () Bool)

(assert (= bs!79232 (and neg-inst!311 s!24430)))

(declare-fun res!279303 () Bool)

(declare-fun e!392218 () Bool)

(assert (=> bs!79232 (=> res!279303 e!392218)))

(assert (=> bs!79232 (= res!279303 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79232 (=> true e!392218)))

(declare-fun b!641700 () Bool)

(assert (=> b!641700 (= e!392218 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79232 (not res!279303)) b!641700))

(assert (=> bs!79173 m!913728))

(assert (=> bs!79173 m!914027))

(assert (=> bs!79173 s!24430))

(declare-fun bs!79233 () Bool)

(declare-fun s!24432 () Bool)

(assert (= bs!79233 (and neg-inst!311 s!24432)))

(declare-fun res!279304 () Bool)

(declare-fun e!392219 () Bool)

(assert (=> bs!79233 (=> res!279304 e!392219)))

(assert (=> bs!79233 (= res!279304 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79233 (=> true e!392219)))

(declare-fun b!641701 () Bool)

(assert (=> b!641701 (= e!392219 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79233 (not res!279304)) b!641701))

(assert (=> bs!79210 m!913028))

(assert (=> bs!79210 m!914027))

(assert (=> bs!79210 s!24432))

(declare-fun bs!79234 () Bool)

(declare-fun s!24434 () Bool)

(assert (= bs!79234 (and neg-inst!311 s!24434)))

(declare-fun res!279305 () Bool)

(declare-fun e!392220 () Bool)

(assert (=> bs!79234 (=> res!279305 e!392220)))

(assert (=> bs!79234 (= res!279305 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79234 (=> true e!392220)))

(declare-fun b!641702 () Bool)

(assert (=> b!641702 (= e!392220 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79234 (not res!279305)) b!641702))

(assert (=> bs!79218 m!913026))

(assert (=> bs!79218 m!914027))

(assert (=> bs!79218 s!24434))

(declare-fun bs!79235 () Bool)

(declare-fun s!24436 () Bool)

(assert (= bs!79235 (and neg-inst!311 s!24436)))

(declare-fun res!279306 () Bool)

(declare-fun e!392221 () Bool)

(assert (=> bs!79235 (=> res!279306 e!392221)))

(assert (=> bs!79235 (= res!279306 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79235 (=> true e!392221)))

(declare-fun b!641703 () Bool)

(assert (=> b!641703 (= e!392221 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79235 (not res!279306)) b!641703))

(assert (=> bs!79196 m!913082))

(assert (=> bs!79196 m!914027))

(assert (=> bs!79196 s!24436))

(assert (=> m!914027 s!24400))

(declare-fun bs!79236 () Bool)

(declare-fun s!24438 () Bool)

(assert (= bs!79236 (and neg-inst!311 s!24438)))

(declare-fun res!279307 () Bool)

(declare-fun e!392222 () Bool)

(assert (=> bs!79236 (=> res!279307 e!392222)))

(assert (=> bs!79236 (= res!279307 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79236 (=> true e!392222)))

(declare-fun b!641704 () Bool)

(assert (=> b!641704 (= e!392222 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79236 (not res!279307)) b!641704))

(assert (=> bs!79215 m!912990))

(assert (=> bs!79215 m!914027))

(assert (=> bs!79215 s!24438))

(declare-fun bs!79237 () Bool)

(declare-fun s!24440 () Bool)

(assert (= bs!79237 (and neg-inst!311 s!24440)))

(declare-fun res!279308 () Bool)

(declare-fun e!392223 () Bool)

(assert (=> bs!79237 (=> res!279308 e!392223)))

(assert (=> bs!79237 (= res!279308 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79237 (=> true e!392223)))

(declare-fun b!641705 () Bool)

(assert (=> b!641705 (= e!392223 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79237 (not res!279308)) b!641705))

(assert (=> bs!79183 m!913020))

(assert (=> bs!79183 m!914027))

(assert (=> bs!79183 s!24440))

(declare-fun bs!79238 () Bool)

(declare-fun s!24442 () Bool)

(assert (= bs!79238 (and neg-inst!311 s!24442)))

(declare-fun res!279309 () Bool)

(declare-fun e!392224 () Bool)

(assert (=> bs!79238 (=> res!279309 e!392224)))

(assert (=> bs!79238 (= res!279309 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79238 (=> true e!392224)))

(declare-fun b!641706 () Bool)

(assert (=> b!641706 (= e!392224 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79238 (not res!279309)) b!641706))

(assert (=> bs!79220 m!912978))

(assert (=> bs!79220 m!914027))

(assert (=> bs!79220 s!24442))

(declare-fun bs!79239 () Bool)

(declare-fun s!24444 () Bool)

(assert (= bs!79239 (and neg-inst!311 s!24444)))

(declare-fun res!279310 () Bool)

(declare-fun e!392225 () Bool)

(assert (=> bs!79239 (=> res!279310 e!392225)))

(assert (=> bs!79239 (= res!279310 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79239 (=> true e!392225)))

(declare-fun b!641707 () Bool)

(assert (=> b!641707 (= e!392225 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79239 (not res!279310)) b!641707))

(assert (=> bs!79194 m!912970))

(assert (=> bs!79194 m!914027))

(assert (=> bs!79194 s!24444))

(declare-fun bs!79240 () Bool)

(assert (= bs!79240 (and m!914025 m!912970)))

(assert (=> bs!79240 m!914027))

(assert (=> bs!79240 m!912970))

(assert (=> bs!79240 s!24346))

(declare-fun bs!79241 () Bool)

(assert (= bs!79241 (and m!914025 m!912998 m!912990)))

(assert (=> bs!79241 s!24362))

(declare-fun bs!79242 () Bool)

(assert (= bs!79242 (and m!914025 m!912996 m!912988)))

(assert (=> bs!79242 s!24368))

(declare-fun bs!79243 () Bool)

(assert (= bs!79243 (and m!914025 m!913082)))

(assert (=> bs!79243 s!24370))

(declare-fun bs!79244 () Bool)

(assert (= bs!79244 (and m!914025 m!913026)))

(assert (=> bs!79244 s!24350))

(declare-fun bs!79245 () Bool)

(assert (= bs!79245 (and m!914025 m!912984)))

(assert (=> bs!79245 s!24354))

(declare-fun bs!79246 () Bool)

(assert (= bs!79246 m!914025))

(assert (=> bs!79246 s!24360))

(declare-fun bs!79247 () Bool)

(assert (= bs!79247 (and m!914025 m!913728)))

(assert (=> bs!79247 s!24348))

(declare-fun bs!79248 () Bool)

(assert (= bs!79248 (and m!914025 m!913020)))

(assert (=> bs!79248 s!24358))

(declare-fun bs!79249 () Bool)

(assert (= bs!79249 (and m!914025 m!913841)))

(assert (=> bs!79249 s!24366))

(declare-fun bs!79250 () Bool)

(assert (= bs!79250 (and m!914025 m!913028)))

(assert (=> bs!79250 s!24356))

(declare-fun bs!79251 () Bool)

(assert (= bs!79251 (and m!914025 m!912978 m!912980)))

(assert (=> bs!79251 s!24352))

(declare-fun bs!79252 () Bool)

(assert (= bs!79252 (and m!914025 m!913024)))

(assert (=> bs!79252 s!24364))

(assert (=> bs!79250 s!24378))

(assert (=> bs!79244 s!24382))

(assert (=> bs!79241 s!24388))

(assert (=> bs!79251 s!24392))

(assert (=> bs!79243 s!24374))

(assert (=> bs!79246 s!24360))

(assert (=> bs!79240 s!24390))

(assert (=> bs!79252 s!24394))

(assert (=> bs!79242 s!24380))

(assert (=> bs!79245 s!24384))

(assert (=> bs!79249 s!24376))

(assert (=> bs!79248 s!24386))

(assert (=> bs!79247 s!24372))

(assert (=> bs!79170 m!914025))

(assert (=> d!223255 d!223541))

(declare-fun b_lambda!25337 () Bool)

(assert (= b_lambda!25279 (or b!640539 b_lambda!25337)))

(declare-fun bs!79253 () Bool)

(declare-fun d!223543 () Bool)

(assert (= bs!79253 (and d!223543 b!640539)))

(assert (=> bs!79253 (= (dynLambda!3752 lambda!18925 (h!12270 lt!274835)) (> (_1!4053 (h!12270 lt!274835)) (_1!4053 lt!274827)))))

(assert (=> b!641213 d!223543))

(declare-fun b_lambda!25339 () Bool)

(assert (= b_lambda!25275 (or d!223243 b_lambda!25339)))

(declare-fun bs!79254 () Bool)

(declare-fun d!223545 () Bool)

(assert (= bs!79254 (and d!223545 d!223243)))

(assert (=> bs!79254 (= (dynLambda!3758 lambda!19033 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)))))

(assert (=> bs!79254 m!912433))

(declare-fun bs!79255 () Bool)

(declare-fun s!24446 () Bool)

(assert (= bs!79255 (and neg-inst!311 s!24446)))

(declare-fun res!279311 () Bool)

(declare-fun e!392226 () Bool)

(assert (=> bs!79255 (=> res!279311 e!392226)))

(assert (=> bs!79255 (= res!279311 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275195))))))

(assert (=> bs!79255 (=> true e!392226)))

(declare-fun b!641708 () Bool)

(assert (=> b!641708 (= e!392226 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!79255 (not res!279311)) b!641708))

(declare-fun bs!79256 () Bool)

(declare-fun s!24448 () Bool)

(assert (= bs!79256 (and neg-inst!304 s!24448)))

(declare-fun res!279312 () Bool)

(declare-fun e!392227 () Bool)

(assert (=> bs!79256 (=> res!279312 e!392227)))

(assert (=> bs!79256 (= res!279312 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275359))))))

(assert (=> bs!79256 (=> true e!392227)))

(declare-fun b!641709 () Bool)

(assert (=> b!641709 (= e!392227 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!79256 (not res!279312)) b!641709))

(declare-fun bs!79257 () Bool)

(declare-fun m!914031 () Bool)

(assert (= bs!79257 (and m!914031 m!913728)))

(assert (=> bs!79257 m!914031))

(assert (=> bs!79257 m!913728))

(assert (=> bs!79257 s!24448))

(declare-fun bs!79258 () Bool)

(declare-fun s!24450 () Bool)

(assert (= bs!79258 (and neg-inst!304 s!24450)))

(declare-fun res!279313 () Bool)

(declare-fun e!392228 () Bool)

(assert (=> bs!79258 (=> res!279313 e!392228)))

(assert (=> bs!79258 (= res!279313 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140420))))))

(assert (=> bs!79258 (=> true e!392228)))

(declare-fun b!641710 () Bool)

(assert (=> b!641710 (= e!392228 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!79258 (not res!279313)) b!641710))

(declare-fun bs!79259 () Bool)

(assert (= bs!79259 (and m!914031 m!913026)))

(assert (=> bs!79259 m!914031))

(assert (=> bs!79259 m!913026))

(assert (=> bs!79259 s!24450))

(declare-fun bs!79260 () Bool)

(declare-fun s!24452 () Bool)

(assert (= bs!79260 (and neg-inst!304 s!24452)))

(declare-fun res!279314 () Bool)

(declare-fun e!392229 () Bool)

(assert (=> bs!79260 (=> res!279314 e!392229)))

(assert (=> bs!79260 (= res!279314 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140375))))))

(assert (=> bs!79260 (=> true e!392229)))

(declare-fun b!641711 () Bool)

(assert (=> b!641711 (= e!392229 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!79260 (not res!279314)) b!641711))

(declare-fun bs!79261 () Bool)

(assert (= bs!79261 (and m!914031 m!912996 m!912988)))

(assert (=> bs!79261 m!914031))

(assert (=> bs!79261 m!912988))

(assert (=> bs!79261 s!24452))

(declare-fun bs!79262 () Bool)

(declare-fun s!24454 () Bool)

(assert (= bs!79262 (and neg-inst!304 s!24454)))

(declare-fun res!279315 () Bool)

(declare-fun e!392230 () Bool)

(assert (=> bs!79262 (=> res!279315 e!392230)))

(assert (=> bs!79262 (= res!279315 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140374))))))

(assert (=> bs!79262 (=> true e!392230)))

(declare-fun b!641712 () Bool)

(assert (=> b!641712 (= e!392230 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!79262 (not res!279315)) b!641712))

(declare-fun bs!79263 () Bool)

(assert (= bs!79263 (and m!914031 m!912978 m!912980)))

(assert (=> bs!79263 m!914031))

(assert (=> bs!79263 m!912978))

(assert (=> bs!79263 s!24454))

(declare-fun bs!79264 () Bool)

(declare-fun s!24456 () Bool)

(assert (= bs!79264 (and neg-inst!304 s!24456)))

(declare-fun res!279316 () Bool)

(declare-fun e!392231 () Bool)

(assert (=> bs!79264 (=> res!279316 e!392231)))

(assert (=> bs!79264 (= res!279316 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275195))))))

(assert (=> bs!79264 (=> true e!392231)))

(declare-fun b!641713 () Bool)

(assert (=> b!641713 (= e!392231 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!79264 (not res!279316)) b!641713))

(declare-fun bs!79265 () Bool)

(assert (= bs!79265 (and m!914031 m!913082)))

(assert (=> bs!79265 m!914031))

(assert (=> bs!79265 m!913082))

(assert (=> bs!79265 s!24456))

(declare-fun bs!79266 () Bool)

(declare-fun s!24458 () Bool)

(assert (= bs!79266 (and neg-inst!304 s!24458)))

(declare-fun res!279317 () Bool)

(declare-fun e!392232 () Bool)

(assert (=> bs!79266 (=> res!279317 e!392232)))

(assert (=> bs!79266 (= res!279317 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79266 (=> true e!392232)))

(declare-fun b!641714 () Bool)

(assert (=> b!641714 (= e!392232 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79266 (not res!279317)) b!641714))

(assert (=> m!914031 s!24458))

(declare-fun bs!79267 () Bool)

(declare-fun s!24460 () Bool)

(assert (= bs!79267 (and neg-inst!304 s!24460)))

(declare-fun res!279318 () Bool)

(declare-fun e!392233 () Bool)

(assert (=> bs!79267 (=> res!279318 e!392233)))

(assert (=> bs!79267 (= res!279318 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140419))))))

(assert (=> bs!79267 (=> true e!392233)))

(declare-fun b!641715 () Bool)

(assert (=> b!641715 (= e!392233 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!79267 (not res!279318)) b!641715))

(declare-fun bs!79268 () Bool)

(assert (= bs!79268 (and m!914031 m!913024)))

(assert (=> bs!79268 m!914031))

(assert (=> bs!79268 m!913024))

(assert (=> bs!79268 s!24460))

(declare-fun bs!79269 () Bool)

(declare-fun s!24462 () Bool)

(assert (= bs!79269 (and neg-inst!304 s!24462)))

(declare-fun res!279319 () Bool)

(declare-fun e!392234 () Bool)

(assert (=> bs!79269 (=> res!279319 e!392234)))

(assert (=> bs!79269 (= res!279319 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140421))))))

(assert (=> bs!79269 (=> true e!392234)))

(declare-fun b!641716 () Bool)

(assert (=> b!641716 (= e!392234 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!79269 (not res!279319)) b!641716))

(declare-fun bs!79270 () Bool)

(assert (= bs!79270 (and m!914031 m!913028)))

(assert (=> bs!79270 m!914031))

(assert (=> bs!79270 m!913028))

(assert (=> bs!79270 s!24462))

(declare-fun bs!79271 () Bool)

(declare-fun s!24464 () Bool)

(assert (= bs!79271 (and neg-inst!304 s!24464)))

(declare-fun res!279320 () Bool)

(declare-fun e!392235 () Bool)

(assert (=> bs!79271 (=> res!279320 e!392235)))

(assert (=> bs!79271 (= res!279320 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79271 (=> true e!392235)))

(declare-fun b!641717 () Bool)

(assert (=> b!641717 (= e!392235 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79271 (not res!279320)) b!641717))

(declare-fun bs!79272 () Bool)

(assert (= bs!79272 (and m!914031 m!912984)))

(assert (=> bs!79272 m!914031))

(assert (=> bs!79272 m!912984))

(assert (=> bs!79272 s!24464))

(declare-fun bs!79273 () Bool)

(declare-fun s!24466 () Bool)

(assert (= bs!79273 (and neg-inst!304 s!24466)))

(declare-fun res!279321 () Bool)

(declare-fun e!392236 () Bool)

(assert (=> bs!79273 (=> res!279321 e!392236)))

(assert (=> bs!79273 (= res!279321 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275382))))))

(assert (=> bs!79273 (=> true e!392236)))

(declare-fun b!641718 () Bool)

(assert (=> b!641718 (= e!392236 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79273 (not res!279321)) b!641718))

(declare-fun bs!79274 () Bool)

(assert (= bs!79274 (and m!914031 m!913841)))

(assert (=> bs!79274 m!914031))

(assert (=> bs!79274 m!913841))

(assert (=> bs!79274 s!24466))

(declare-fun bs!79275 () Bool)

(declare-fun s!24468 () Bool)

(assert (= bs!79275 (and neg-inst!304 s!24468)))

(declare-fun res!279322 () Bool)

(declare-fun e!392237 () Bool)

(assert (=> bs!79275 (=> res!279322 e!392237)))

(assert (=> bs!79275 (= res!279322 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79275 (=> true e!392237)))

(declare-fun b!641719 () Bool)

(assert (=> b!641719 (= e!392237 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79275 (not res!279322)) b!641719))

(declare-fun bs!79276 () Bool)

(assert (= bs!79276 (and m!914031 m!914025 m!914027)))

(assert (=> bs!79276 m!914031))

(assert (=> bs!79276 m!914027))

(assert (=> bs!79276 s!24468))

(declare-fun bs!79277 () Bool)

(declare-fun s!24470 () Bool)

(assert (= bs!79277 (and neg-inst!304 s!24470)))

(declare-fun res!279323 () Bool)

(declare-fun e!392238 () Bool)

(assert (=> bs!79277 (=> res!279323 e!392238)))

(assert (=> bs!79277 (= res!279323 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79277 (=> true e!392238)))

(declare-fun b!641720 () Bool)

(assert (=> b!641720 (= e!392238 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79277 (not res!279323)) b!641720))

(declare-fun bs!79278 () Bool)

(assert (= bs!79278 (and m!914031 m!913020)))

(assert (=> bs!79278 m!914031))

(assert (=> bs!79278 m!913020))

(assert (=> bs!79278 s!24470))

(declare-fun bs!79279 () Bool)

(declare-fun s!24472 () Bool)

(assert (= bs!79279 (and neg-inst!304 s!24472)))

(declare-fun res!279324 () Bool)

(declare-fun e!392239 () Bool)

(assert (=> bs!79279 (=> res!279324 e!392239)))

(assert (=> bs!79279 (= res!279324 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275166))))))

(assert (=> bs!79279 (=> true e!392239)))

(declare-fun b!641721 () Bool)

(assert (=> b!641721 (= e!392239 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!79279 (not res!279324)) b!641721))

(declare-fun bs!79280 () Bool)

(assert (= bs!79280 (and m!914031 m!912970)))

(assert (=> bs!79280 m!914031))

(assert (=> bs!79280 m!912970))

(assert (=> bs!79280 s!24472))

(declare-fun bs!79281 () Bool)

(declare-fun s!24474 () Bool)

(assert (= bs!79281 (and neg-inst!304 s!24474)))

(declare-fun res!279325 () Bool)

(declare-fun e!392240 () Bool)

(assert (=> bs!79281 (=> res!279325 e!392240)))

(assert (=> bs!79281 (= res!279325 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140376))))))

(assert (=> bs!79281 (=> true e!392240)))

(declare-fun b!641722 () Bool)

(assert (=> b!641722 (= e!392240 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!79281 (not res!279325)) b!641722))

(declare-fun bs!79282 () Bool)

(assert (= bs!79282 (and m!914031 m!912998 m!912990)))

(assert (=> bs!79282 m!914031))

(assert (=> bs!79282 m!912990))

(assert (=> bs!79282 s!24474))

(declare-fun bs!79283 () Bool)

(declare-fun s!24476 () Bool)

(assert (= bs!79283 (and neg-inst!304 s!24476)))

(declare-fun res!279326 () Bool)

(declare-fun e!392241 () Bool)

(assert (=> bs!79283 (=> res!279326 e!392241)))

(assert (=> bs!79283 (= res!279326 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79283 (=> true e!392241)))

(declare-fun b!641723 () Bool)

(assert (=> b!641723 (= e!392241 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79283 (not res!279326)) b!641723))

(assert (=> bs!79259 m!913026))

(assert (=> bs!79259 m!914031))

(assert (=> bs!79259 s!24476))

(declare-fun bs!79284 () Bool)

(declare-fun s!24478 () Bool)

(assert (= bs!79284 (and neg-inst!304 s!24478)))

(declare-fun res!279327 () Bool)

(declare-fun e!392242 () Bool)

(assert (=> bs!79284 (=> res!279327 e!392242)))

(assert (=> bs!79284 (= res!279327 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79284 (=> true e!392242)))

(declare-fun b!641724 () Bool)

(assert (=> b!641724 (= e!392242 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79284 (not res!279327)) b!641724))

(assert (=> bs!79280 m!912970))

(assert (=> bs!79280 m!914031))

(assert (=> bs!79280 s!24478))

(declare-fun bs!79285 () Bool)

(declare-fun s!24480 () Bool)

(assert (= bs!79285 (and neg-inst!304 s!24480)))

(declare-fun res!279328 () Bool)

(declare-fun e!392243 () Bool)

(assert (=> bs!79285 (=> res!279328 e!392243)))

(assert (=> bs!79285 (= res!279328 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79285 (=> true e!392243)))

(declare-fun b!641725 () Bool)

(assert (=> b!641725 (= e!392243 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79285 (not res!279328)) b!641725))

(assert (=> bs!79282 m!912990))

(assert (=> bs!79282 m!914031))

(assert (=> bs!79282 s!24480))

(declare-fun bs!79286 () Bool)

(declare-fun s!24482 () Bool)

(assert (= bs!79286 (and neg-inst!304 s!24482)))

(declare-fun res!279329 () Bool)

(declare-fun e!392244 () Bool)

(assert (=> bs!79286 (=> res!279329 e!392244)))

(assert (=> bs!79286 (= res!279329 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79286 (=> true e!392244)))

(declare-fun b!641726 () Bool)

(assert (=> b!641726 (= e!392244 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79286 (not res!279329)) b!641726))

(assert (=> bs!79261 m!912988))

(assert (=> bs!79261 m!914031))

(assert (=> bs!79261 s!24482))

(assert (=> m!914031 s!24458))

(declare-fun bs!79287 () Bool)

(declare-fun s!24484 () Bool)

(assert (= bs!79287 (and neg-inst!304 s!24484)))

(declare-fun res!279330 () Bool)

(declare-fun e!392245 () Bool)

(assert (=> bs!79287 (=> res!279330 e!392245)))

(assert (=> bs!79287 (= res!279330 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79287 (=> true e!392245)))

(declare-fun b!641727 () Bool)

(assert (=> b!641727 (= e!392245 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79287 (not res!279330)) b!641727))

(assert (=> bs!79274 m!913841))

(assert (=> bs!79274 m!914031))

(assert (=> bs!79274 s!24484))

(declare-fun bs!79288 () Bool)

(declare-fun s!24486 () Bool)

(assert (= bs!79288 (and neg-inst!304 s!24486)))

(declare-fun res!279331 () Bool)

(declare-fun e!392246 () Bool)

(assert (=> bs!79288 (=> res!279331 e!392246)))

(assert (=> bs!79288 (= res!279331 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79288 (=> true e!392246)))

(declare-fun b!641728 () Bool)

(assert (=> b!641728 (= e!392246 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79288 (not res!279331)) b!641728))

(assert (=> bs!79265 m!913082))

(assert (=> bs!79265 m!914031))

(assert (=> bs!79265 s!24486))

(declare-fun bs!79289 () Bool)

(declare-fun s!24488 () Bool)

(assert (= bs!79289 (and neg-inst!304 s!24488)))

(declare-fun res!279332 () Bool)

(declare-fun e!392247 () Bool)

(assert (=> bs!79289 (=> res!279332 e!392247)))

(assert (=> bs!79289 (= res!279332 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79289 (=> true e!392247)))

(declare-fun b!641729 () Bool)

(assert (=> b!641729 (= e!392247 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79289 (not res!279332)) b!641729))

(assert (=> bs!79263 m!912978))

(assert (=> bs!79263 m!914031))

(assert (=> bs!79263 s!24488))

(declare-fun bs!79290 () Bool)

(declare-fun s!24490 () Bool)

(assert (= bs!79290 (and neg-inst!304 s!24490)))

(declare-fun res!279333 () Bool)

(declare-fun e!392248 () Bool)

(assert (=> bs!79290 (=> res!279333 e!392248)))

(assert (=> bs!79290 (= res!279333 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79290 (=> true e!392248)))

(declare-fun b!641730 () Bool)

(assert (=> b!641730 (= e!392248 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79290 (not res!279333)) b!641730))

(assert (=> bs!79268 m!913024))

(assert (=> bs!79268 m!914031))

(assert (=> bs!79268 s!24490))

(declare-fun bs!79291 () Bool)

(declare-fun s!24492 () Bool)

(assert (= bs!79291 (and neg-inst!304 s!24492)))

(declare-fun res!279334 () Bool)

(declare-fun e!392249 () Bool)

(assert (=> bs!79291 (=> res!279334 e!392249)))

(assert (=> bs!79291 (= res!279334 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79291 (=> true e!392249)))

(declare-fun b!641731 () Bool)

(assert (=> b!641731 (= e!392249 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79291 (not res!279334)) b!641731))

(assert (=> bs!79270 m!913028))

(assert (=> bs!79270 m!914031))

(assert (=> bs!79270 s!24492))

(declare-fun bs!79292 () Bool)

(declare-fun s!24494 () Bool)

(assert (= bs!79292 (and neg-inst!304 s!24494)))

(declare-fun res!279335 () Bool)

(declare-fun e!392250 () Bool)

(assert (=> bs!79292 (=> res!279335 e!392250)))

(assert (=> bs!79292 (= res!279335 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79292 (=> true e!392250)))

(declare-fun b!641732 () Bool)

(assert (=> b!641732 (= e!392250 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79292 (not res!279335)) b!641732))

(assert (=> bs!79272 m!912984))

(assert (=> bs!79272 m!914031))

(assert (=> bs!79272 s!24494))

(declare-fun bs!79293 () Bool)

(declare-fun s!24496 () Bool)

(assert (= bs!79293 (and neg-inst!304 s!24496)))

(declare-fun res!279336 () Bool)

(declare-fun e!392251 () Bool)

(assert (=> bs!79293 (=> res!279336 e!392251)))

(assert (=> bs!79293 (= res!279336 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79293 (=> true e!392251)))

(declare-fun b!641733 () Bool)

(assert (=> b!641733 (= e!392251 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79293 (not res!279336)) b!641733))

(assert (=> bs!79278 m!913020))

(assert (=> bs!79278 m!914031))

(assert (=> bs!79278 s!24496))

(declare-fun bs!79294 () Bool)

(declare-fun s!24498 () Bool)

(assert (= bs!79294 (and neg-inst!304 s!24498)))

(declare-fun res!279337 () Bool)

(declare-fun e!392252 () Bool)

(assert (=> bs!79294 (=> res!279337 e!392252)))

(assert (=> bs!79294 (= res!279337 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79294 (=> true e!392252)))

(declare-fun b!641734 () Bool)

(assert (=> b!641734 (= e!392252 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79294 (not res!279337)) b!641734))

(assert (=> bs!79276 m!914027))

(assert (=> bs!79276 m!914031))

(assert (=> bs!79276 s!24498))

(declare-fun bs!79295 () Bool)

(declare-fun s!24500 () Bool)

(assert (= bs!79295 (and neg-inst!304 s!24500)))

(declare-fun res!279338 () Bool)

(declare-fun e!392253 () Bool)

(assert (=> bs!79295 (=> res!279338 e!392253)))

(assert (=> bs!79295 (= res!279338 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79295 (=> true e!392253)))

(declare-fun b!641735 () Bool)

(assert (=> b!641735 (= e!392253 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79295 (not res!279338)) b!641735))

(assert (=> bs!79257 m!913728))

(assert (=> bs!79257 m!914031))

(assert (=> bs!79257 s!24500))

(declare-fun bs!79296 () Bool)

(declare-fun s!24502 () Bool)

(assert (= bs!79296 (and neg-inst!311 s!24502)))

(declare-fun res!279339 () Bool)

(declare-fun e!392254 () Bool)

(assert (=> bs!79296 (=> res!279339 e!392254)))

(assert (=> bs!79296 (= res!279339 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79296 (=> true e!392254)))

(declare-fun b!641736 () Bool)

(assert (=> b!641736 (= e!392254 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79296 (not res!279339)) b!641736))

(assert (=> bs!79272 m!914031))

(assert (=> bs!79272 m!912984))

(assert (=> bs!79272 s!24502))

(declare-fun bs!79297 () Bool)

(declare-fun s!24504 () Bool)

(assert (= bs!79297 (and neg-inst!311 s!24504)))

(declare-fun res!279340 () Bool)

(declare-fun e!392255 () Bool)

(assert (=> bs!79297 (=> res!279340 e!392255)))

(assert (=> bs!79297 (= res!279340 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140420))))))

(assert (=> bs!79297 (=> true e!392255)))

(declare-fun b!641737 () Bool)

(assert (=> b!641737 (= e!392255 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!79297 (not res!279340)) b!641737))

(declare-fun bs!79298 () Bool)

(assert (= bs!79298 (and m!914031 m!913026 m!913034)))

(assert (=> bs!79298 m!914031))

(assert (=> bs!79298 m!913026))

(assert (=> bs!79298 s!24504))

(declare-fun bs!79299 () Bool)

(declare-fun s!24506 () Bool)

(assert (= bs!79299 (and neg-inst!311 s!24506)))

(declare-fun res!279341 () Bool)

(declare-fun e!392256 () Bool)

(assert (=> bs!79299 (=> res!279341 e!392256)))

(assert (=> bs!79299 (= res!279341 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275382))))))

(assert (=> bs!79299 (=> true e!392256)))

(declare-fun b!641738 () Bool)

(assert (=> b!641738 (= e!392256 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79299 (not res!279341)) b!641738))

(assert (=> bs!79274 m!914031))

(assert (=> bs!79274 m!913841))

(assert (=> bs!79274 s!24506))

(declare-fun bs!79300 () Bool)

(declare-fun s!24508 () Bool)

(assert (= bs!79300 (and neg-inst!311 s!24508)))

(declare-fun res!279342 () Bool)

(declare-fun e!392257 () Bool)

(assert (=> bs!79300 (=> res!279342 e!392257)))

(assert (=> bs!79300 (= res!279342 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140374))))))

(assert (=> bs!79300 (=> true e!392257)))

(declare-fun b!641739 () Bool)

(assert (=> b!641739 (= e!392257 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!79300 (not res!279342)) b!641739))

(declare-fun bs!79301 () Bool)

(assert (= bs!79301 (and m!914031 m!912978)))

(assert (=> bs!79301 m!914031))

(assert (=> bs!79301 m!912978))

(assert (=> bs!79301 s!24508))

(declare-fun bs!79302 () Bool)

(declare-fun s!24510 () Bool)

(assert (= bs!79302 (and neg-inst!311 s!24510)))

(declare-fun res!279343 () Bool)

(declare-fun e!392258 () Bool)

(assert (=> bs!79302 (=> res!279343 e!392258)))

(assert (=> bs!79302 (= res!279343 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79302 (=> true e!392258)))

(declare-fun b!641740 () Bool)

(assert (=> b!641740 (= e!392258 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79302 (not res!279343)) b!641740))

(assert (=> bs!79278 m!914031))

(assert (=> bs!79278 m!913020))

(assert (=> bs!79278 s!24510))

(declare-fun bs!79303 () Bool)

(declare-fun s!24512 () Bool)

(assert (= bs!79303 (and neg-inst!311 s!24512)))

(declare-fun res!279344 () Bool)

(declare-fun e!392259 () Bool)

(assert (=> bs!79303 (=> res!279344 e!392259)))

(assert (=> bs!79303 (= res!279344 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140376))))))

(assert (=> bs!79303 (=> true e!392259)))

(declare-fun b!641741 () Bool)

(assert (=> b!641741 (= e!392259 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!79303 (not res!279344)) b!641741))

(declare-fun bs!79304 () Bool)

(assert (= bs!79304 (and m!914031 m!912990)))

(assert (=> bs!79304 m!914031))

(assert (=> bs!79304 m!912990))

(assert (=> bs!79304 s!24512))

(declare-fun bs!79305 () Bool)

(declare-fun s!24514 () Bool)

(assert (= bs!79305 (and neg-inst!311 s!24514)))

(declare-fun res!279345 () Bool)

(declare-fun e!392260 () Bool)

(assert (=> bs!79305 (=> res!279345 e!392260)))

(assert (=> bs!79305 (= res!279345 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140419))))))

(assert (=> bs!79305 (=> true e!392260)))

(declare-fun b!641742 () Bool)

(assert (=> b!641742 (= e!392260 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!79305 (not res!279345)) b!641742))

(declare-fun bs!79306 () Bool)

(assert (= bs!79306 (and m!914031 m!913016 m!913024)))

(assert (=> bs!79306 m!914031))

(assert (=> bs!79306 m!913024))

(assert (=> bs!79306 s!24514))

(declare-fun bs!79307 () Bool)

(declare-fun s!24516 () Bool)

(assert (= bs!79307 (and neg-inst!311 s!24516)))

(declare-fun res!279346 () Bool)

(declare-fun e!392261 () Bool)

(assert (=> bs!79307 (=> res!279346 e!392261)))

(assert (=> bs!79307 (= res!279346 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79307 (=> true e!392261)))

(declare-fun b!641743 () Bool)

(assert (=> b!641743 (= e!392261 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79307 (not res!279346)) b!641743))

(assert (=> m!914031 s!24516))

(declare-fun bs!79308 () Bool)

(declare-fun s!24518 () Bool)

(assert (= bs!79308 (and neg-inst!311 s!24518)))

(declare-fun res!279347 () Bool)

(declare-fun e!392262 () Bool)

(assert (=> bs!79308 (=> res!279347 e!392262)))

(assert (=> bs!79308 (= res!279347 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79308 (=> true e!392262)))

(declare-fun b!641744 () Bool)

(assert (=> b!641744 (= e!392262 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79308 (not res!279347)) b!641744))

(declare-fun bs!79309 () Bool)

(assert (= bs!79309 (and m!914031 m!914027)))

(assert (=> bs!79309 m!914031))

(assert (=> bs!79309 m!914027))

(assert (=> bs!79309 s!24518))

(declare-fun bs!79310 () Bool)

(declare-fun s!24520 () Bool)

(assert (= bs!79310 (and neg-inst!311 s!24520)))

(declare-fun res!279348 () Bool)

(declare-fun e!392263 () Bool)

(assert (=> bs!79310 (=> res!279348 e!392263)))

(assert (=> bs!79310 (= res!279348 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140375))))))

(assert (=> bs!79310 (=> true e!392263)))

(declare-fun b!641745 () Bool)

(assert (=> b!641745 (= e!392263 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!79310 (not res!279348)) b!641745))

(declare-fun bs!79311 () Bool)

(assert (= bs!79311 (and m!914031 m!912988)))

(assert (=> bs!79311 m!914031))

(assert (=> bs!79311 m!912988))

(assert (=> bs!79311 s!24520))

(declare-fun bs!79312 () Bool)

(declare-fun s!24522 () Bool)

(assert (= bs!79312 (and neg-inst!311 s!24522)))

(declare-fun res!279349 () Bool)

(declare-fun e!392264 () Bool)

(assert (=> bs!79312 (=> res!279349 e!392264)))

(assert (=> bs!79312 (= res!279349 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275166))))))

(assert (=> bs!79312 (=> true e!392264)))

(declare-fun b!641746 () Bool)

(assert (=> b!641746 (= e!392264 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!79312 (not res!279349)) b!641746))

(assert (=> bs!79280 m!914031))

(assert (=> bs!79280 m!912970))

(assert (=> bs!79280 s!24522))

(assert (=> bs!79265 s!24446))

(declare-fun bs!79313 () Bool)

(declare-fun s!24524 () Bool)

(assert (= bs!79313 (and neg-inst!311 s!24524)))

(declare-fun res!279350 () Bool)

(declare-fun e!392265 () Bool)

(assert (=> bs!79313 (=> res!279350 e!392265)))

(assert (=> bs!79313 (= res!279350 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 lt!275359))))))

(assert (=> bs!79313 (=> true e!392265)))

(declare-fun b!641747 () Bool)

(assert (=> b!641747 (= e!392265 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!79313 (not res!279350)) b!641747))

(assert (=> bs!79257 m!914031))

(assert (=> bs!79257 m!913728))

(assert (=> bs!79257 s!24524))

(declare-fun bs!79314 () Bool)

(declare-fun m!914029 () Bool)

(assert (= bs!79314 (and m!914031 m!914029)))

(assert (=> bs!79314 s!24516))

(declare-fun bs!79315 () Bool)

(declare-fun s!24526 () Bool)

(assert (= bs!79315 (and neg-inst!311 s!24526)))

(declare-fun res!279351 () Bool)

(declare-fun e!392266 () Bool)

(assert (=> bs!79315 (=> res!279351 e!392266)))

(assert (=> bs!79315 (= res!279351 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 x!140421))))))

(assert (=> bs!79315 (=> true e!392266)))

(declare-fun b!641748 () Bool)

(assert (=> b!641748 (= e!392266 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!79315 (not res!279351)) b!641748))

(declare-fun bs!79316 () Bool)

(assert (= bs!79316 (and m!914031 m!913028 m!913036)))

(assert (=> bs!79316 m!914031))

(assert (=> bs!79316 m!913028))

(assert (=> bs!79316 s!24526))

(declare-fun bs!79317 () Bool)

(declare-fun s!24528 () Bool)

(assert (= bs!79317 (and neg-inst!311 s!24528)))

(declare-fun res!279352 () Bool)

(declare-fun e!392267 () Bool)

(assert (=> bs!79317 (=> res!279352 e!392267)))

(assert (=> bs!79317 (= res!279352 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79317 (=> true e!392267)))

(declare-fun b!641749 () Bool)

(assert (=> b!641749 (= e!392267 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79317 (not res!279352)) b!641749))

(assert (=> bs!79272 m!912984))

(assert (=> bs!79272 m!914031))

(assert (=> bs!79272 s!24528))

(declare-fun bs!79318 () Bool)

(declare-fun s!24530 () Bool)

(assert (= bs!79318 (and neg-inst!311 s!24530)))

(declare-fun res!279353 () Bool)

(declare-fun e!392268 () Bool)

(assert (=> bs!79318 (=> res!279353 e!392268)))

(assert (=> bs!79318 (= res!279353 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79318 (=> true e!392268)))

(declare-fun b!641750 () Bool)

(assert (=> b!641750 (= e!392268 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79318 (not res!279353)) b!641750))

(assert (=> bs!79265 m!913082))

(assert (=> bs!79265 m!914031))

(assert (=> bs!79265 s!24530))

(declare-fun bs!79319 () Bool)

(declare-fun s!24532 () Bool)

(assert (= bs!79319 (and neg-inst!311 s!24532)))

(declare-fun res!279354 () Bool)

(declare-fun e!392269 () Bool)

(assert (=> bs!79319 (=> res!279354 e!392269)))

(assert (=> bs!79319 (= res!279354 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79319 (=> true e!392269)))

(declare-fun b!641751 () Bool)

(assert (=> b!641751 (= e!392269 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79319 (not res!279354)) b!641751))

(assert (=> bs!79316 m!913028))

(assert (=> bs!79316 m!914031))

(assert (=> bs!79316 s!24532))

(declare-fun bs!79320 () Bool)

(declare-fun s!24534 () Bool)

(assert (= bs!79320 (and neg-inst!311 s!24534)))

(declare-fun res!279355 () Bool)

(declare-fun e!392270 () Bool)

(assert (=> bs!79320 (=> res!279355 e!392270)))

(assert (=> bs!79320 (= res!279355 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79320 (=> true e!392270)))

(declare-fun b!641752 () Bool)

(assert (=> b!641752 (= e!392270 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79320 (not res!279355)) b!641752))

(assert (=> bs!79274 m!913841))

(assert (=> bs!79274 m!914031))

(assert (=> bs!79274 s!24534))

(declare-fun bs!79321 () Bool)

(declare-fun s!24536 () Bool)

(assert (= bs!79321 (and neg-inst!311 s!24536)))

(declare-fun res!279356 () Bool)

(declare-fun e!392271 () Bool)

(assert (=> bs!79321 (=> res!279356 e!392271)))

(assert (=> bs!79321 (= res!279356 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79321 (=> true e!392271)))

(declare-fun b!641753 () Bool)

(assert (=> b!641753 (= e!392271 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79321 (not res!279356)) b!641753))

(assert (=> bs!79311 m!912988))

(assert (=> bs!79311 m!914031))

(assert (=> bs!79311 s!24536))

(declare-fun bs!79322 () Bool)

(declare-fun s!24538 () Bool)

(assert (= bs!79322 (and neg-inst!311 s!24538)))

(declare-fun res!279357 () Bool)

(declare-fun e!392272 () Bool)

(assert (=> bs!79322 (=> res!279357 e!392272)))

(assert (=> bs!79322 (= res!279357 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79322 (=> true e!392272)))

(declare-fun b!641754 () Bool)

(assert (=> b!641754 (= e!392272 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79322 (not res!279357)) b!641754))

(assert (=> bs!79309 m!914027))

(assert (=> bs!79309 m!914031))

(assert (=> bs!79309 s!24538))

(declare-fun bs!79323 () Bool)

(declare-fun s!24540 () Bool)

(assert (= bs!79323 (and neg-inst!311 s!24540)))

(declare-fun res!279358 () Bool)

(declare-fun e!392273 () Bool)

(assert (=> bs!79323 (=> res!279358 e!392273)))

(assert (=> bs!79323 (= res!279358 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79323 (=> true e!392273)))

(declare-fun b!641755 () Bool)

(assert (=> b!641755 (= e!392273 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79323 (not res!279358)) b!641755))

(assert (=> bs!79257 m!913728))

(assert (=> bs!79257 m!914031))

(assert (=> bs!79257 s!24540))

(declare-fun bs!79324 () Bool)

(declare-fun s!24542 () Bool)

(assert (= bs!79324 (and neg-inst!311 s!24542)))

(declare-fun res!279359 () Bool)

(declare-fun e!392274 () Bool)

(assert (=> bs!79324 (=> res!279359 e!392274)))

(assert (=> bs!79324 (= res!279359 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79324 (=> true e!392274)))

(declare-fun b!641756 () Bool)

(assert (=> b!641756 (= e!392274 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79324 (not res!279359)) b!641756))

(assert (=> bs!79301 m!912978))

(assert (=> bs!79301 m!914031))

(assert (=> bs!79301 s!24542))

(assert (=> bs!79314 s!24516))

(declare-fun bs!79325 () Bool)

(declare-fun s!24544 () Bool)

(assert (= bs!79325 (and neg-inst!311 s!24544)))

(declare-fun res!279360 () Bool)

(declare-fun e!392275 () Bool)

(assert (=> bs!79325 (=> res!279360 e!392275)))

(assert (=> bs!79325 (= res!279360 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79325 (=> true e!392275)))

(declare-fun b!641757 () Bool)

(assert (=> b!641757 (= e!392275 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79325 (not res!279360)) b!641757))

(assert (=> bs!79278 m!913020))

(assert (=> bs!79278 m!914031))

(assert (=> bs!79278 s!24544))

(declare-fun bs!79326 () Bool)

(declare-fun s!24546 () Bool)

(assert (= bs!79326 (and neg-inst!311 s!24546)))

(declare-fun res!279361 () Bool)

(declare-fun e!392276 () Bool)

(assert (=> bs!79326 (=> res!279361 e!392276)))

(assert (=> bs!79326 (= res!279361 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79326 (=> true e!392276)))

(declare-fun b!641758 () Bool)

(assert (=> b!641758 (= e!392276 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79326 (not res!279361)) b!641758))

(assert (=> bs!79298 m!913026))

(assert (=> bs!79298 m!914031))

(assert (=> bs!79298 s!24546))

(assert (=> m!914031 s!24516))

(declare-fun bs!79327 () Bool)

(declare-fun s!24548 () Bool)

(assert (= bs!79327 (and neg-inst!311 s!24548)))

(declare-fun res!279362 () Bool)

(declare-fun e!392277 () Bool)

(assert (=> bs!79327 (=> res!279362 e!392277)))

(assert (=> bs!79327 (= res!279362 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79327 (=> true e!392277)))

(declare-fun b!641759 () Bool)

(assert (=> b!641759 (= e!392277 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79327 (not res!279362)) b!641759))

(assert (=> bs!79306 m!913024))

(assert (=> bs!79306 m!914031))

(assert (=> bs!79306 s!24548))

(declare-fun bs!79328 () Bool)

(declare-fun s!24550 () Bool)

(assert (= bs!79328 (and neg-inst!311 s!24550)))

(declare-fun res!279363 () Bool)

(declare-fun e!392278 () Bool)

(assert (=> bs!79328 (=> res!279363 e!392278)))

(assert (=> bs!79328 (= res!279363 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79328 (=> true e!392278)))

(declare-fun b!641760 () Bool)

(assert (=> b!641760 (= e!392278 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79328 (not res!279363)) b!641760))

(assert (=> bs!79304 m!912990))

(assert (=> bs!79304 m!914031))

(assert (=> bs!79304 s!24550))

(declare-fun bs!79329 () Bool)

(declare-fun s!24552 () Bool)

(assert (= bs!79329 (and neg-inst!311 s!24552)))

(declare-fun res!279364 () Bool)

(declare-fun e!392279 () Bool)

(assert (=> bs!79329 (=> res!279364 e!392279)))

(assert (=> bs!79329 (= res!279364 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79329 (=> true e!392279)))

(declare-fun b!641761 () Bool)

(assert (=> b!641761 (= e!392279 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79329 (not res!279364)) b!641761))

(assert (=> bs!79280 m!912970))

(assert (=> bs!79280 m!914031))

(assert (=> bs!79280 s!24552))

(declare-fun bs!79330 () Bool)

(assert (= bs!79330 (and m!914029 m!913082)))

(assert (=> bs!79330 m!914031))

(assert (=> bs!79330 m!913082))

(assert (=> bs!79330 s!24446))

(declare-fun bs!79331 () Bool)

(assert (= bs!79331 (and m!914029 m!914027)))

(assert (=> bs!79331 s!24518))

(declare-fun bs!79332 () Bool)

(assert (= bs!79332 (and m!914029 m!912978)))

(assert (=> bs!79332 s!24508))

(declare-fun bs!79333 () Bool)

(assert (= bs!79333 (and m!914029 m!913728)))

(assert (=> bs!79333 s!24524))

(declare-fun bs!79334 () Bool)

(assert (= bs!79334 (and m!914029 m!912970)))

(assert (=> bs!79334 s!24522))

(declare-fun bs!79335 () Bool)

(assert (= bs!79335 (and m!914029 m!912984)))

(assert (=> bs!79335 s!24502))

(declare-fun bs!79336 () Bool)

(assert (= bs!79336 (and m!914029 m!913028 m!913036)))

(assert (=> bs!79336 s!24526))

(declare-fun bs!79337 () Bool)

(assert (= bs!79337 m!914029))

(assert (=> bs!79337 s!24516))

(declare-fun bs!79338 () Bool)

(assert (= bs!79338 (and m!914029 m!912990)))

(assert (=> bs!79338 s!24512))

(declare-fun bs!79339 () Bool)

(assert (= bs!79339 (and m!914029 m!913016 m!913024)))

(assert (=> bs!79339 s!24514))

(declare-fun bs!79340 () Bool)

(assert (= bs!79340 (and m!914029 m!912988)))

(assert (=> bs!79340 s!24520))

(declare-fun bs!79341 () Bool)

(assert (= bs!79341 (and m!914029 m!913841)))

(assert (=> bs!79341 s!24506))

(declare-fun bs!79342 () Bool)

(assert (= bs!79342 (and m!914029 m!913020)))

(assert (=> bs!79342 s!24510))

(declare-fun bs!79343 () Bool)

(assert (= bs!79343 (and m!914029 m!913026 m!913034)))

(assert (=> bs!79343 s!24504))

(assert (=> bs!79342 s!24544))

(assert (=> bs!79332 s!24542))

(assert (=> bs!79335 s!24528))

(assert (=> bs!79338 s!24550))

(assert (=> bs!79334 s!24552))

(assert (=> bs!79339 s!24548))

(assert (=> bs!79337 s!24516))

(assert (=> bs!79340 s!24536))

(assert (=> bs!79336 s!24532))

(assert (=> bs!79333 s!24540))

(assert (=> bs!79330 s!24530))

(assert (=> bs!79343 s!24546))

(assert (=> bs!79341 s!24534))

(assert (=> bs!79331 s!24538))

(assert (=> bs!79254 m!914029))

(assert (=> d!223245 d!223545))

(declare-fun b_lambda!25341 () Bool)

(assert (= b_lambda!25303 (or d!223239 b_lambda!25341)))

(declare-fun bs!79344 () Bool)

(declare-fun d!223547 () Bool)

(assert (= bs!79344 (and d!223547 d!223239)))

(assert (=> bs!79344 (= (dynLambda!3758 lambda!19009 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)))))

(assert (=> bs!79344 m!912495))

(declare-fun bs!79345 () Bool)

(declare-fun s!24554 () Bool)

(assert (= bs!79345 (and neg-inst!304 s!24554)))

(declare-fun res!279365 () Bool)

(declare-fun e!392280 () Bool)

(assert (=> bs!79345 (=> res!279365 e!392280)))

(assert (=> bs!79345 (= res!279365 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140374))))))

(assert (=> bs!79345 (=> true e!392280)))

(declare-fun b!641762 () Bool)

(assert (=> b!641762 (= e!392280 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!79345 (not res!279365)) b!641762))

(declare-fun bs!79346 () Bool)

(declare-fun s!24556 () Bool)

(assert (= bs!79346 (and neg-inst!304 s!24556)))

(declare-fun res!279366 () Bool)

(declare-fun e!392281 () Bool)

(assert (=> bs!79346 (=> res!279366 e!392281)))

(assert (=> bs!79346 (= res!279366 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140375))))))

(assert (=> bs!79346 (=> true e!392281)))

(declare-fun b!641763 () Bool)

(assert (=> b!641763 (= e!392281 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!79346 (not res!279366)) b!641763))

(declare-fun bs!79347 () Bool)

(declare-fun m!914035 () Bool)

(assert (= bs!79347 (and m!914035 m!912996 m!912988)))

(assert (=> bs!79347 m!914035))

(assert (=> bs!79347 m!912988))

(assert (=> bs!79347 s!24556))

(declare-fun bs!79348 () Bool)

(declare-fun s!24558 () Bool)

(assert (= bs!79348 (and neg-inst!304 s!24558)))

(declare-fun res!279367 () Bool)

(declare-fun e!392282 () Bool)

(assert (=> bs!79348 (=> res!279367 e!392282)))

(assert (=> bs!79348 (= res!279367 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275382))))))

(assert (=> bs!79348 (=> true e!392282)))

(declare-fun b!641764 () Bool)

(assert (=> b!641764 (= e!392282 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79348 (not res!279367)) b!641764))

(declare-fun bs!79349 () Bool)

(assert (= bs!79349 (and m!914035 m!913841)))

(assert (=> bs!79349 m!914035))

(assert (=> bs!79349 m!913841))

(assert (=> bs!79349 s!24558))

(declare-fun bs!79350 () Bool)

(declare-fun s!24560 () Bool)

(assert (= bs!79350 (and neg-inst!304 s!24560)))

(declare-fun res!279368 () Bool)

(declare-fun e!392283 () Bool)

(assert (=> bs!79350 (=> res!279368 e!392283)))

(assert (=> bs!79350 (= res!279368 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79350 (=> true e!392283)))

(declare-fun b!641765 () Bool)

(assert (=> b!641765 (= e!392283 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79350 (not res!279368)) b!641765))

(assert (=> m!914035 s!24560))

(declare-fun bs!79351 () Bool)

(declare-fun s!24562 () Bool)

(assert (= bs!79351 (and neg-inst!304 s!24562)))

(declare-fun res!279369 () Bool)

(declare-fun e!392284 () Bool)

(assert (=> bs!79351 (=> res!279369 e!392284)))

(assert (=> bs!79351 (= res!279369 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79351 (=> true e!392284)))

(declare-fun b!641766 () Bool)

(assert (=> b!641766 (= e!392284 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79351 (not res!279369)) b!641766))

(declare-fun bs!79352 () Bool)

(assert (= bs!79352 (and m!914035 m!914031)))

(assert (=> bs!79352 m!914035))

(assert (=> bs!79352 m!914031))

(assert (=> bs!79352 s!24562))

(declare-fun bs!79353 () Bool)

(declare-fun s!24564 () Bool)

(assert (= bs!79353 (and neg-inst!304 s!24564)))

(declare-fun res!279370 () Bool)

(declare-fun e!392285 () Bool)

(assert (=> bs!79353 (=> res!279370 e!392285)))

(assert (=> bs!79353 (= res!279370 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79353 (=> true e!392285)))

(declare-fun b!641767 () Bool)

(assert (=> b!641767 (= e!392285 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79353 (not res!279370)) b!641767))

(declare-fun bs!79354 () Bool)

(assert (= bs!79354 (and m!914035 m!913020)))

(assert (=> bs!79354 m!914035))

(assert (=> bs!79354 m!913020))

(assert (=> bs!79354 s!24564))

(declare-fun bs!79355 () Bool)

(declare-fun s!24566 () Bool)

(assert (= bs!79355 (and neg-inst!304 s!24566)))

(declare-fun res!279371 () Bool)

(declare-fun e!392286 () Bool)

(assert (=> bs!79355 (=> res!279371 e!392286)))

(assert (=> bs!79355 (= res!279371 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79355 (=> true e!392286)))

(declare-fun b!641768 () Bool)

(assert (=> b!641768 (= e!392286 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79355 (not res!279371)) b!641768))

(declare-fun bs!79356 () Bool)

(assert (= bs!79356 (and m!914035 m!912984)))

(assert (=> bs!79356 m!914035))

(assert (=> bs!79356 m!912984))

(assert (=> bs!79356 s!24566))

(declare-fun bs!79357 () Bool)

(declare-fun s!24568 () Bool)

(assert (= bs!79357 (and neg-inst!304 s!24568)))

(declare-fun res!279372 () Bool)

(declare-fun e!392287 () Bool)

(assert (=> bs!79357 (=> res!279372 e!392287)))

(assert (=> bs!79357 (= res!279372 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275166))))))

(assert (=> bs!79357 (=> true e!392287)))

(declare-fun b!641769 () Bool)

(assert (=> b!641769 (= e!392287 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!79357 (not res!279372)) b!641769))

(declare-fun bs!79358 () Bool)

(assert (= bs!79358 (and m!914035 m!912970)))

(assert (=> bs!79358 m!914035))

(assert (=> bs!79358 m!912970))

(assert (=> bs!79358 s!24568))

(declare-fun bs!79359 () Bool)

(declare-fun s!24570 () Bool)

(assert (= bs!79359 (and neg-inst!304 s!24570)))

(declare-fun res!279373 () Bool)

(declare-fun e!392288 () Bool)

(assert (=> bs!79359 (=> res!279373 e!392288)))

(assert (=> bs!79359 (= res!279373 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140420))))))

(assert (=> bs!79359 (=> true e!392288)))

(declare-fun b!641770 () Bool)

(assert (=> b!641770 (= e!392288 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!79359 (not res!279373)) b!641770))

(declare-fun bs!79360 () Bool)

(assert (= bs!79360 (and m!914035 m!913026)))

(assert (=> bs!79360 m!914035))

(assert (=> bs!79360 m!913026))

(assert (=> bs!79360 s!24570))

(declare-fun bs!79361 () Bool)

(assert (= bs!79361 (and m!914035 m!912978 m!912980)))

(assert (=> bs!79361 s!24554))

(declare-fun bs!79362 () Bool)

(declare-fun m!914033 () Bool)

(assert (= bs!79362 (and m!914035 m!914033)))

(assert (=> bs!79362 s!24560))

(declare-fun bs!79363 () Bool)

(declare-fun s!24572 () Bool)

(assert (= bs!79363 (and neg-inst!304 s!24572)))

(declare-fun res!279374 () Bool)

(declare-fun e!392289 () Bool)

(assert (=> bs!79363 (=> res!279374 e!392289)))

(assert (=> bs!79363 (= res!279374 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140376))))))

(assert (=> bs!79363 (=> true e!392289)))

(declare-fun b!641771 () Bool)

(assert (=> b!641771 (= e!392289 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!79363 (not res!279374)) b!641771))

(declare-fun bs!79364 () Bool)

(assert (= bs!79364 (and m!914035 m!912998 m!912990)))

(assert (=> bs!79364 m!914035))

(assert (=> bs!79364 m!912990))

(assert (=> bs!79364 s!24572))

(declare-fun bs!79365 () Bool)

(declare-fun s!24574 () Bool)

(assert (= bs!79365 (and neg-inst!304 s!24574)))

(declare-fun res!279375 () Bool)

(declare-fun e!392290 () Bool)

(assert (=> bs!79365 (=> res!279375 e!392290)))

(assert (=> bs!79365 (= res!279375 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140419))))))

(assert (=> bs!79365 (=> true e!392290)))

(declare-fun b!641772 () Bool)

(assert (=> b!641772 (= e!392290 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!79365 (not res!279375)) b!641772))

(declare-fun bs!79366 () Bool)

(assert (= bs!79366 (and m!914035 m!913024)))

(assert (=> bs!79366 m!914035))

(assert (=> bs!79366 m!913024))

(assert (=> bs!79366 s!24574))

(declare-fun bs!79367 () Bool)

(declare-fun s!24576 () Bool)

(assert (= bs!79367 (and neg-inst!304 s!24576)))

(declare-fun res!279376 () Bool)

(declare-fun e!392291 () Bool)

(assert (=> bs!79367 (=> res!279376 e!392291)))

(assert (=> bs!79367 (= res!279376 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140421))))))

(assert (=> bs!79367 (=> true e!392291)))

(declare-fun b!641773 () Bool)

(assert (=> b!641773 (= e!392291 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!79367 (not res!279376)) b!641773))

(declare-fun bs!79368 () Bool)

(assert (= bs!79368 (and m!914035 m!913028)))

(assert (=> bs!79368 m!914035))

(assert (=> bs!79368 m!913028))

(assert (=> bs!79368 s!24576))

(declare-fun bs!79369 () Bool)

(declare-fun s!24578 () Bool)

(assert (= bs!79369 (and neg-inst!304 s!24578)))

(declare-fun res!279377 () Bool)

(declare-fun e!392292 () Bool)

(assert (=> bs!79369 (=> res!279377 e!392292)))

(assert (=> bs!79369 (= res!279377 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79369 (=> true e!392292)))

(declare-fun b!641774 () Bool)

(assert (=> b!641774 (= e!392292 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79369 (not res!279377)) b!641774))

(declare-fun bs!79370 () Bool)

(assert (= bs!79370 (and m!914035 m!914025 m!914027)))

(assert (=> bs!79370 m!914035))

(assert (=> bs!79370 m!914027))

(assert (=> bs!79370 s!24578))

(declare-fun bs!79371 () Bool)

(declare-fun s!24580 () Bool)

(assert (= bs!79371 (and neg-inst!304 s!24580)))

(declare-fun res!279378 () Bool)

(declare-fun e!392293 () Bool)

(assert (=> bs!79371 (=> res!279378 e!392293)))

(assert (=> bs!79371 (= res!279378 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275359))))))

(assert (=> bs!79371 (=> true e!392293)))

(declare-fun b!641775 () Bool)

(assert (=> b!641775 (= e!392293 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!79371 (not res!279378)) b!641775))

(declare-fun bs!79372 () Bool)

(assert (= bs!79372 (and m!914035 m!913728)))

(assert (=> bs!79372 m!914035))

(assert (=> bs!79372 m!913728))

(assert (=> bs!79372 s!24580))

(declare-fun bs!79373 () Bool)

(declare-fun s!24582 () Bool)

(assert (= bs!79373 (and neg-inst!304 s!24582)))

(declare-fun res!279379 () Bool)

(declare-fun e!392294 () Bool)

(assert (=> bs!79373 (=> res!279379 e!392294)))

(assert (=> bs!79373 (= res!279379 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275195))))))

(assert (=> bs!79373 (=> true e!392294)))

(declare-fun b!641776 () Bool)

(assert (=> b!641776 (= e!392294 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!79373 (not res!279379)) b!641776))

(declare-fun bs!79374 () Bool)

(assert (= bs!79374 (and m!914035 m!913082)))

(assert (=> bs!79374 m!914035))

(assert (=> bs!79374 m!913082))

(assert (=> bs!79374 s!24582))

(declare-fun bs!79375 () Bool)

(declare-fun s!24584 () Bool)

(assert (= bs!79375 (and neg-inst!304 s!24584)))

(declare-fun res!279380 () Bool)

(declare-fun e!392295 () Bool)

(assert (=> bs!79375 (=> res!279380 e!392295)))

(assert (=> bs!79375 (= res!279380 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79375 (=> true e!392295)))

(declare-fun b!641777 () Bool)

(assert (=> b!641777 (= e!392295 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79375 (not res!279380)) b!641777))

(assert (=> bs!79356 m!912984))

(assert (=> bs!79356 m!914035))

(assert (=> bs!79356 s!24584))

(declare-fun bs!79376 () Bool)

(declare-fun s!24586 () Bool)

(assert (= bs!79376 (and neg-inst!304 s!24586)))

(declare-fun res!279381 () Bool)

(declare-fun e!392296 () Bool)

(assert (=> bs!79376 (=> res!279381 e!392296)))

(assert (=> bs!79376 (= res!279381 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79376 (=> true e!392296)))

(declare-fun b!641778 () Bool)

(assert (=> b!641778 (= e!392296 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79376 (not res!279381)) b!641778))

(assert (=> bs!79347 m!912988))

(assert (=> bs!79347 m!914035))

(assert (=> bs!79347 s!24586))

(declare-fun bs!79377 () Bool)

(declare-fun s!24588 () Bool)

(assert (= bs!79377 (and neg-inst!304 s!24588)))

(declare-fun res!279382 () Bool)

(declare-fun e!392297 () Bool)

(assert (=> bs!79377 (=> res!279382 e!392297)))

(assert (=> bs!79377 (= res!279382 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79377 (=> true e!392297)))

(declare-fun b!641779 () Bool)

(assert (=> b!641779 (= e!392297 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79377 (not res!279382)) b!641779))

(assert (=> bs!79368 m!913028))

(assert (=> bs!79368 m!914035))

(assert (=> bs!79368 s!24588))

(assert (=> bs!79362 s!24560))

(declare-fun bs!79378 () Bool)

(declare-fun s!24590 () Bool)

(assert (= bs!79378 (and neg-inst!304 s!24590)))

(declare-fun res!279383 () Bool)

(declare-fun e!392298 () Bool)

(assert (=> bs!79378 (=> res!279383 e!392298)))

(assert (=> bs!79378 (= res!279383 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79378 (=> true e!392298)))

(declare-fun b!641780 () Bool)

(assert (=> b!641780 (= e!392298 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79378 (not res!279383)) b!641780))

(assert (=> bs!79364 m!912990))

(assert (=> bs!79364 m!914035))

(assert (=> bs!79364 s!24590))

(declare-fun bs!79379 () Bool)

(declare-fun s!24592 () Bool)

(assert (= bs!79379 (and neg-inst!304 s!24592)))

(declare-fun res!279384 () Bool)

(declare-fun e!392299 () Bool)

(assert (=> bs!79379 (=> res!279384 e!392299)))

(assert (=> bs!79379 (= res!279384 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79379 (=> true e!392299)))

(declare-fun b!641781 () Bool)

(assert (=> b!641781 (= e!392299 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79379 (not res!279384)) b!641781))

(assert (=> bs!79372 m!913728))

(assert (=> bs!79372 m!914035))

(assert (=> bs!79372 s!24592))

(declare-fun bs!79380 () Bool)

(declare-fun s!24594 () Bool)

(assert (= bs!79380 (and neg-inst!304 s!24594)))

(declare-fun res!279385 () Bool)

(declare-fun e!392300 () Bool)

(assert (=> bs!79380 (=> res!279385 e!392300)))

(assert (=> bs!79380 (= res!279385 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79380 (=> true e!392300)))

(declare-fun b!641782 () Bool)

(assert (=> b!641782 (= e!392300 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79380 (not res!279385)) b!641782))

(assert (=> bs!79358 m!912970))

(assert (=> bs!79358 m!914035))

(assert (=> bs!79358 s!24594))

(declare-fun bs!79381 () Bool)

(declare-fun s!24596 () Bool)

(assert (= bs!79381 (and neg-inst!304 s!24596)))

(declare-fun res!279386 () Bool)

(declare-fun e!392301 () Bool)

(assert (=> bs!79381 (=> res!279386 e!392301)))

(assert (=> bs!79381 (= res!279386 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79381 (=> true e!392301)))

(declare-fun b!641783 () Bool)

(assert (=> b!641783 (= e!392301 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79381 (not res!279386)) b!641783))

(assert (=> bs!79352 m!914031))

(assert (=> bs!79352 m!914035))

(assert (=> bs!79352 s!24596))

(declare-fun bs!79382 () Bool)

(declare-fun s!24598 () Bool)

(assert (= bs!79382 (and neg-inst!304 s!24598)))

(declare-fun res!279387 () Bool)

(declare-fun e!392302 () Bool)

(assert (=> bs!79382 (=> res!279387 e!392302)))

(assert (=> bs!79382 (= res!279387 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79382 (=> true e!392302)))

(declare-fun b!641784 () Bool)

(assert (=> b!641784 (= e!392302 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79382 (not res!279387)) b!641784))

(assert (=> bs!79366 m!913024))

(assert (=> bs!79366 m!914035))

(assert (=> bs!79366 s!24598))

(assert (=> m!914035 s!24560))

(declare-fun bs!79383 () Bool)

(declare-fun s!24600 () Bool)

(assert (= bs!79383 (and neg-inst!304 s!24600)))

(declare-fun res!279388 () Bool)

(declare-fun e!392303 () Bool)

(assert (=> bs!79383 (=> res!279388 e!392303)))

(assert (=> bs!79383 (= res!279388 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79383 (=> true e!392303)))

(declare-fun b!641785 () Bool)

(assert (=> b!641785 (= e!392303 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79383 (not res!279388)) b!641785))

(assert (=> bs!79374 m!913082))

(assert (=> bs!79374 m!914035))

(assert (=> bs!79374 s!24600))

(declare-fun bs!79384 () Bool)

(declare-fun s!24602 () Bool)

(assert (= bs!79384 (and neg-inst!304 s!24602)))

(declare-fun res!279389 () Bool)

(declare-fun e!392304 () Bool)

(assert (=> bs!79384 (=> res!279389 e!392304)))

(assert (=> bs!79384 (= res!279389 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79384 (=> true e!392304)))

(declare-fun b!641786 () Bool)

(assert (=> b!641786 (= e!392304 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79384 (not res!279389)) b!641786))

(assert (=> bs!79354 m!913020))

(assert (=> bs!79354 m!914035))

(assert (=> bs!79354 s!24602))

(declare-fun bs!79385 () Bool)

(declare-fun s!24604 () Bool)

(assert (= bs!79385 (and neg-inst!304 s!24604)))

(declare-fun res!279390 () Bool)

(declare-fun e!392305 () Bool)

(assert (=> bs!79385 (=> res!279390 e!392305)))

(assert (=> bs!79385 (= res!279390 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79385 (=> true e!392305)))

(declare-fun b!641787 () Bool)

(assert (=> b!641787 (= e!392305 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79385 (not res!279390)) b!641787))

(assert (=> bs!79361 m!912978))

(assert (=> bs!79361 m!914035))

(assert (=> bs!79361 s!24604))

(declare-fun bs!79386 () Bool)

(declare-fun s!24606 () Bool)

(assert (= bs!79386 (and neg-inst!304 s!24606)))

(declare-fun res!279391 () Bool)

(declare-fun e!392306 () Bool)

(assert (=> bs!79386 (=> res!279391 e!392306)))

(assert (=> bs!79386 (= res!279391 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79386 (=> true e!392306)))

(declare-fun b!641788 () Bool)

(assert (=> b!641788 (= e!392306 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79386 (not res!279391)) b!641788))

(assert (=> bs!79349 m!913841))

(assert (=> bs!79349 m!914035))

(assert (=> bs!79349 s!24606))

(declare-fun bs!79387 () Bool)

(declare-fun s!24608 () Bool)

(assert (= bs!79387 (and neg-inst!304 s!24608)))

(declare-fun res!279392 () Bool)

(declare-fun e!392307 () Bool)

(assert (=> bs!79387 (=> res!279392 e!392307)))

(assert (=> bs!79387 (= res!279392 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79387 (=> true e!392307)))

(declare-fun b!641789 () Bool)

(assert (=> b!641789 (= e!392307 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79387 (not res!279392)) b!641789))

(assert (=> bs!79360 m!913026))

(assert (=> bs!79360 m!914035))

(assert (=> bs!79360 s!24608))

(declare-fun bs!79388 () Bool)

(declare-fun s!24610 () Bool)

(assert (= bs!79388 (and neg-inst!304 s!24610)))

(declare-fun res!279393 () Bool)

(declare-fun e!392308 () Bool)

(assert (=> bs!79388 (=> res!279393 e!392308)))

(assert (=> bs!79388 (= res!279393 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79388 (=> true e!392308)))

(declare-fun b!641790 () Bool)

(assert (=> b!641790 (= e!392308 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79388 (not res!279393)) b!641790))

(assert (=> bs!79370 m!914027))

(assert (=> bs!79370 m!914035))

(assert (=> bs!79370 s!24610))

(declare-fun bs!79389 () Bool)

(declare-fun s!24612 () Bool)

(assert (= bs!79389 (and neg-inst!311 s!24612)))

(declare-fun res!279394 () Bool)

(declare-fun e!392309 () Bool)

(assert (=> bs!79389 (=> res!279394 e!392309)))

(assert (=> bs!79389 (= res!279394 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140375))))))

(assert (=> bs!79389 (=> true e!392309)))

(declare-fun b!641791 () Bool)

(assert (=> b!641791 (= e!392309 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!79389 (not res!279394)) b!641791))

(declare-fun bs!79390 () Bool)

(assert (= bs!79390 (and m!914035 m!912988)))

(assert (=> bs!79390 m!914035))

(assert (=> bs!79390 m!912988))

(assert (=> bs!79390 s!24612))

(declare-fun bs!79391 () Bool)

(declare-fun s!24614 () Bool)

(assert (= bs!79391 (and neg-inst!311 s!24614)))

(declare-fun res!279395 () Bool)

(declare-fun e!392310 () Bool)

(assert (=> bs!79391 (=> res!279395 e!392310)))

(assert (=> bs!79391 (= res!279395 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140374))))))

(assert (=> bs!79391 (=> true e!392310)))

(declare-fun b!641792 () Bool)

(assert (=> b!641792 (= e!392310 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!79391 (not res!279395)) b!641792))

(declare-fun bs!79392 () Bool)

(assert (= bs!79392 (and m!914035 m!912978)))

(assert (=> bs!79392 m!914035))

(assert (=> bs!79392 m!912978))

(assert (=> bs!79392 s!24614))

(declare-fun bs!79393 () Bool)

(declare-fun s!24616 () Bool)

(assert (= bs!79393 (and neg-inst!311 s!24616)))

(declare-fun res!279396 () Bool)

(declare-fun e!392311 () Bool)

(assert (=> bs!79393 (=> res!279396 e!392311)))

(assert (=> bs!79393 (= res!279396 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140376))))))

(assert (=> bs!79393 (=> true e!392311)))

(declare-fun b!641793 () Bool)

(assert (=> b!641793 (= e!392311 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!79393 (not res!279396)) b!641793))

(declare-fun bs!79394 () Bool)

(assert (= bs!79394 (and m!914035 m!912990)))

(assert (=> bs!79394 m!914035))

(assert (=> bs!79394 m!912990))

(assert (=> bs!79394 s!24616))

(declare-fun bs!79395 () Bool)

(declare-fun s!24618 () Bool)

(assert (= bs!79395 (and neg-inst!311 s!24618)))

(declare-fun res!279397 () Bool)

(declare-fun e!392312 () Bool)

(assert (=> bs!79395 (=> res!279397 e!392312)))

(assert (=> bs!79395 (= res!279397 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275382))))))

(assert (=> bs!79395 (=> true e!392312)))

(declare-fun b!641794 () Bool)

(assert (=> b!641794 (= e!392312 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79395 (not res!279397)) b!641794))

(assert (=> bs!79349 m!914035))

(assert (=> bs!79349 m!913841))

(assert (=> bs!79349 s!24618))

(declare-fun bs!79396 () Bool)

(declare-fun s!24620 () Bool)

(assert (= bs!79396 (and neg-inst!311 s!24620)))

(declare-fun res!279398 () Bool)

(declare-fun e!392313 () Bool)

(assert (=> bs!79396 (=> res!279398 e!392313)))

(assert (=> bs!79396 (= res!279398 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275195))))))

(assert (=> bs!79396 (=> true e!392313)))

(declare-fun b!641795 () Bool)

(assert (=> b!641795 (= e!392313 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!79396 (not res!279398)) b!641795))

(assert (=> bs!79374 m!914035))

(assert (=> bs!79374 m!913082))

(assert (=> bs!79374 s!24620))

(declare-fun bs!79397 () Bool)

(declare-fun s!24622 () Bool)

(assert (= bs!79397 (and neg-inst!311 s!24622)))

(declare-fun res!279399 () Bool)

(declare-fun e!392314 () Bool)

(assert (=> bs!79397 (=> res!279399 e!392314)))

(assert (=> bs!79397 (= res!279399 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140419))))))

(assert (=> bs!79397 (=> true e!392314)))

(declare-fun b!641796 () Bool)

(assert (=> b!641796 (= e!392314 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!79397 (not res!279399)) b!641796))

(declare-fun bs!79398 () Bool)

(assert (= bs!79398 (and m!914035 m!913016 m!913024)))

(assert (=> bs!79398 m!914035))

(assert (=> bs!79398 m!913024))

(assert (=> bs!79398 s!24622))

(declare-fun bs!79399 () Bool)

(declare-fun s!24624 () Bool)

(assert (= bs!79399 (and neg-inst!311 s!24624)))

(declare-fun res!279400 () Bool)

(declare-fun e!392315 () Bool)

(assert (=> bs!79399 (=> res!279400 e!392315)))

(assert (=> bs!79399 (= res!279400 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275359))))))

(assert (=> bs!79399 (=> true e!392315)))

(declare-fun b!641797 () Bool)

(assert (=> b!641797 (= e!392315 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!79399 (not res!279400)) b!641797))

(assert (=> bs!79372 m!914035))

(assert (=> bs!79372 m!913728))

(assert (=> bs!79372 s!24624))

(declare-fun bs!79400 () Bool)

(declare-fun s!24626 () Bool)

(assert (= bs!79400 (and neg-inst!311 s!24626)))

(declare-fun res!279401 () Bool)

(declare-fun e!392316 () Bool)

(assert (=> bs!79400 (=> res!279401 e!392316)))

(assert (=> bs!79400 (= res!279401 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140420))))))

(assert (=> bs!79400 (=> true e!392316)))

(declare-fun b!641798 () Bool)

(assert (=> b!641798 (= e!392316 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!79400 (not res!279401)) b!641798))

(declare-fun bs!79401 () Bool)

(assert (= bs!79401 (and m!914035 m!913026 m!913034)))

(assert (=> bs!79401 m!914035))

(assert (=> bs!79401 m!913026))

(assert (=> bs!79401 s!24626))

(declare-fun bs!79402 () Bool)

(declare-fun s!24628 () Bool)

(assert (= bs!79402 (and neg-inst!311 s!24628)))

(declare-fun res!279402 () Bool)

(declare-fun e!392317 () Bool)

(assert (=> bs!79402 (=> res!279402 e!392317)))

(assert (=> bs!79402 (= res!279402 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 x!140421))))))

(assert (=> bs!79402 (=> true e!392317)))

(declare-fun b!641799 () Bool)

(assert (=> b!641799 (= e!392317 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!79402 (not res!279402)) b!641799))

(declare-fun bs!79403 () Bool)

(assert (= bs!79403 (and m!914035 m!913028 m!913036)))

(assert (=> bs!79403 m!914035))

(assert (=> bs!79403 m!913028))

(assert (=> bs!79403 s!24628))

(declare-fun bs!79404 () Bool)

(declare-fun s!24630 () Bool)

(assert (= bs!79404 (and neg-inst!311 s!24630)))

(declare-fun res!279403 () Bool)

(declare-fun e!392318 () Bool)

(assert (=> bs!79404 (=> res!279403 e!392318)))

(assert (=> bs!79404 (= res!279403 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79404 (=> true e!392318)))

(declare-fun b!641800 () Bool)

(assert (=> b!641800 (= e!392318 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79404 (not res!279403)) b!641800))

(assert (=> bs!79354 m!914035))

(assert (=> bs!79354 m!913020))

(assert (=> bs!79354 s!24630))

(declare-fun bs!79405 () Bool)

(declare-fun s!24632 () Bool)

(assert (= bs!79405 (and neg-inst!311 s!24632)))

(declare-fun res!279404 () Bool)

(declare-fun e!392319 () Bool)

(assert (=> bs!79405 (=> res!279404 e!392319)))

(assert (=> bs!79405 (= res!279404 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79405 (=> true e!392319)))

(declare-fun b!641801 () Bool)

(assert (=> b!641801 (= e!392319 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79405 (not res!279404)) b!641801))

(assert (=> m!914035 s!24632))

(declare-fun bs!79406 () Bool)

(declare-fun s!24634 () Bool)

(assert (= bs!79406 (and neg-inst!311 s!24634)))

(declare-fun res!279405 () Bool)

(declare-fun e!392320 () Bool)

(assert (=> bs!79406 (=> res!279405 e!392320)))

(assert (=> bs!79406 (= res!279405 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79406 (=> true e!392320)))

(declare-fun b!641802 () Bool)

(assert (=> b!641802 (= e!392320 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79406 (not res!279405)) b!641802))

(declare-fun bs!79407 () Bool)

(assert (= bs!79407 (and m!914035 m!914027)))

(assert (=> bs!79407 m!914035))

(assert (=> bs!79407 m!914027))

(assert (=> bs!79407 s!24634))

(declare-fun bs!79408 () Bool)

(declare-fun s!24636 () Bool)

(assert (= bs!79408 (and neg-inst!311 s!24636)))

(declare-fun res!279406 () Bool)

(declare-fun e!392321 () Bool)

(assert (=> bs!79408 (=> res!279406 e!392321)))

(assert (=> bs!79408 (= res!279406 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 lt!275166))))))

(assert (=> bs!79408 (=> true e!392321)))

(declare-fun b!641803 () Bool)

(assert (=> b!641803 (= e!392321 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!79408 (not res!279406)) b!641803))

(assert (=> bs!79358 m!914035))

(assert (=> bs!79358 m!912970))

(assert (=> bs!79358 s!24636))

(declare-fun bs!79409 () Bool)

(declare-fun s!24638 () Bool)

(assert (= bs!79409 (and neg-inst!311 s!24638)))

(declare-fun res!279407 () Bool)

(declare-fun e!392322 () Bool)

(assert (=> bs!79409 (=> res!279407 e!392322)))

(assert (=> bs!79409 (= res!279407 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79409 (=> true e!392322)))

(declare-fun b!641804 () Bool)

(assert (=> b!641804 (= e!392322 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79409 (not res!279407)) b!641804))

(declare-fun bs!79410 () Bool)

(assert (= bs!79410 (and m!914035 m!914029 m!914031)))

(assert (=> bs!79410 m!914035))

(assert (=> bs!79410 m!914031))

(assert (=> bs!79410 s!24638))

(declare-fun bs!79411 () Bool)

(declare-fun s!24640 () Bool)

(assert (= bs!79411 (and neg-inst!311 s!24640)))

(declare-fun res!279408 () Bool)

(declare-fun e!392323 () Bool)

(assert (=> bs!79411 (=> res!279408 e!392323)))

(assert (=> bs!79411 (= res!279408 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79411 (=> true e!392323)))

(declare-fun b!641805 () Bool)

(assert (=> b!641805 (= e!392323 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79411 (not res!279408)) b!641805))

(assert (=> bs!79356 m!914035))

(assert (=> bs!79356 m!912984))

(assert (=> bs!79356 s!24640))

(declare-fun bs!79412 () Bool)

(declare-fun s!24642 () Bool)

(assert (= bs!79412 (and neg-inst!311 s!24642)))

(declare-fun res!279409 () Bool)

(declare-fun e!392324 () Bool)

(assert (=> bs!79412 (=> res!279409 e!392324)))

(assert (=> bs!79412 (= res!279409 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79412 (=> true e!392324)))

(declare-fun b!641806 () Bool)

(assert (=> b!641806 (= e!392324 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79412 (not res!279409)) b!641806))

(assert (=> bs!79372 m!913728))

(assert (=> bs!79372 m!914035))

(assert (=> bs!79372 s!24642))

(declare-fun bs!79413 () Bool)

(declare-fun s!24644 () Bool)

(assert (= bs!79413 (and neg-inst!311 s!24644)))

(declare-fun res!279410 () Bool)

(declare-fun e!392325 () Bool)

(assert (=> bs!79413 (=> res!279410 e!392325)))

(assert (=> bs!79413 (= res!279410 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79413 (=> true e!392325)))

(declare-fun b!641807 () Bool)

(assert (=> b!641807 (= e!392325 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79413 (not res!279410)) b!641807))

(assert (=> bs!79403 m!913028))

(assert (=> bs!79403 m!914035))

(assert (=> bs!79403 s!24644))

(declare-fun bs!79414 () Bool)

(declare-fun s!24646 () Bool)

(assert (= bs!79414 (and neg-inst!311 s!24646)))

(declare-fun res!279411 () Bool)

(declare-fun e!392326 () Bool)

(assert (=> bs!79414 (=> res!279411 e!392326)))

(assert (=> bs!79414 (= res!279411 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79414 (=> true e!392326)))

(declare-fun b!641808 () Bool)

(assert (=> b!641808 (= e!392326 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79414 (not res!279411)) b!641808))

(assert (=> bs!79354 m!913020))

(assert (=> bs!79354 m!914035))

(assert (=> bs!79354 s!24646))

(declare-fun bs!79415 () Bool)

(declare-fun s!24648 () Bool)

(assert (= bs!79415 (and neg-inst!311 s!24648)))

(declare-fun res!279412 () Bool)

(declare-fun e!392327 () Bool)

(assert (=> bs!79415 (=> res!279412 e!392327)))

(assert (=> bs!79415 (= res!279412 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79415 (=> true e!392327)))

(declare-fun b!641809 () Bool)

(assert (=> b!641809 (= e!392327 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79415 (not res!279412)) b!641809))

(assert (=> bs!79410 m!914031))

(assert (=> bs!79410 m!914035))

(assert (=> bs!79410 s!24648))

(declare-fun bs!79416 () Bool)

(declare-fun s!24650 () Bool)

(assert (= bs!79416 (and neg-inst!311 s!24650)))

(declare-fun res!279413 () Bool)

(declare-fun e!392328 () Bool)

(assert (=> bs!79416 (=> res!279413 e!392328)))

(assert (=> bs!79416 (= res!279413 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79416 (=> true e!392328)))

(declare-fun b!641810 () Bool)

(assert (=> b!641810 (= e!392328 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79416 (not res!279413)) b!641810))

(assert (=> bs!79392 m!912978))

(assert (=> bs!79392 m!914035))

(assert (=> bs!79392 s!24650))

(declare-fun bs!79417 () Bool)

(declare-fun s!24652 () Bool)

(assert (= bs!79417 (and neg-inst!311 s!24652)))

(declare-fun res!279414 () Bool)

(declare-fun e!392329 () Bool)

(assert (=> bs!79417 (=> res!279414 e!392329)))

(assert (=> bs!79417 (= res!279414 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79417 (=> true e!392329)))

(declare-fun b!641811 () Bool)

(assert (=> b!641811 (= e!392329 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79417 (not res!279414)) b!641811))

(assert (=> bs!79349 m!913841))

(assert (=> bs!79349 m!914035))

(assert (=> bs!79349 s!24652))

(assert (=> m!914035 s!24632))

(declare-fun bs!79418 () Bool)

(declare-fun s!24654 () Bool)

(assert (= bs!79418 (and neg-inst!311 s!24654)))

(declare-fun res!279415 () Bool)

(declare-fun e!392330 () Bool)

(assert (=> bs!79418 (=> res!279415 e!392330)))

(assert (=> bs!79418 (= res!279415 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79418 (=> true e!392330)))

(declare-fun b!641812 () Bool)

(assert (=> b!641812 (= e!392330 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79418 (not res!279415)) b!641812))

(assert (=> bs!79374 m!913082))

(assert (=> bs!79374 m!914035))

(assert (=> bs!79374 s!24654))

(declare-fun bs!79419 () Bool)

(declare-fun s!24656 () Bool)

(assert (= bs!79419 (and neg-inst!311 s!24656)))

(declare-fun res!279416 () Bool)

(declare-fun e!392331 () Bool)

(assert (=> bs!79419 (=> res!279416 e!392331)))

(assert (=> bs!79419 (= res!279416 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79419 (=> true e!392331)))

(declare-fun b!641813 () Bool)

(assert (=> b!641813 (= e!392331 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79419 (not res!279416)) b!641813))

(assert (=> bs!79398 m!913024))

(assert (=> bs!79398 m!914035))

(assert (=> bs!79398 s!24656))

(declare-fun bs!79420 () Bool)

(declare-fun s!24658 () Bool)

(assert (= bs!79420 (and neg-inst!311 s!24658)))

(declare-fun res!279417 () Bool)

(declare-fun e!392332 () Bool)

(assert (=> bs!79420 (=> res!279417 e!392332)))

(assert (=> bs!79420 (= res!279417 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79420 (=> true e!392332)))

(declare-fun b!641814 () Bool)

(assert (=> b!641814 (= e!392332 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79420 (not res!279417)) b!641814))

(assert (=> bs!79407 m!914027))

(assert (=> bs!79407 m!914035))

(assert (=> bs!79407 s!24658))

(declare-fun bs!79421 () Bool)

(declare-fun s!24660 () Bool)

(assert (= bs!79421 (and neg-inst!311 s!24660)))

(declare-fun res!279418 () Bool)

(declare-fun e!392333 () Bool)

(assert (=> bs!79421 (=> res!279418 e!392333)))

(assert (=> bs!79421 (= res!279418 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79421 (=> true e!392333)))

(declare-fun b!641815 () Bool)

(assert (=> b!641815 (= e!392333 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79421 (not res!279418)) b!641815))

(assert (=> bs!79394 m!912990))

(assert (=> bs!79394 m!914035))

(assert (=> bs!79394 s!24660))

(declare-fun bs!79422 () Bool)

(declare-fun s!24662 () Bool)

(assert (= bs!79422 (and neg-inst!311 s!24662)))

(declare-fun res!279419 () Bool)

(declare-fun e!392334 () Bool)

(assert (=> bs!79422 (=> res!279419 e!392334)))

(assert (=> bs!79422 (= res!279419 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79422 (=> true e!392334)))

(declare-fun b!641816 () Bool)

(assert (=> b!641816 (= e!392334 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79422 (not res!279419)) b!641816))

(assert (=> bs!79358 m!912970))

(assert (=> bs!79358 m!914035))

(assert (=> bs!79358 s!24662))

(declare-fun bs!79423 () Bool)

(declare-fun s!24664 () Bool)

(assert (= bs!79423 (and neg-inst!311 s!24664)))

(declare-fun res!279420 () Bool)

(declare-fun e!392335 () Bool)

(assert (=> bs!79423 (=> res!279420 e!392335)))

(assert (=> bs!79423 (= res!279420 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79423 (=> true e!392335)))

(declare-fun b!641817 () Bool)

(assert (=> b!641817 (= e!392335 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79423 (not res!279420)) b!641817))

(assert (=> bs!79390 m!912988))

(assert (=> bs!79390 m!914035))

(assert (=> bs!79390 s!24664))

(declare-fun bs!79424 () Bool)

(declare-fun s!24666 () Bool)

(assert (= bs!79424 (and neg-inst!311 s!24666)))

(declare-fun res!279421 () Bool)

(declare-fun e!392336 () Bool)

(assert (=> bs!79424 (=> res!279421 e!392336)))

(assert (=> bs!79424 (= res!279421 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79424 (=> true e!392336)))

(declare-fun b!641818 () Bool)

(assert (=> b!641818 (= e!392336 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79424 (not res!279421)) b!641818))

(assert (=> bs!79356 m!912984))

(assert (=> bs!79356 m!914035))

(assert (=> bs!79356 s!24666))

(declare-fun bs!79425 () Bool)

(declare-fun s!24668 () Bool)

(assert (= bs!79425 (and neg-inst!311 s!24668)))

(declare-fun res!279422 () Bool)

(declare-fun e!392337 () Bool)

(assert (=> bs!79425 (=> res!279422 e!392337)))

(assert (=> bs!79425 (= res!279422 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79425 (=> true e!392337)))

(declare-fun b!641819 () Bool)

(assert (=> b!641819 (= e!392337 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79425 (not res!279422)) b!641819))

(assert (=> bs!79401 m!913026))

(assert (=> bs!79401 m!914035))

(assert (=> bs!79401 s!24668))

(declare-fun bs!79426 () Bool)

(assert (= bs!79426 (and m!914033 m!912978 m!912980)))

(assert (=> bs!79426 m!914035))

(assert (=> bs!79426 m!912978))

(assert (=> bs!79426 s!24554))

(declare-fun bs!79427 () Bool)

(assert (= bs!79427 (and m!914033 m!912998 m!912990)))

(assert (=> bs!79427 s!24572))

(declare-fun bs!79428 () Bool)

(assert (= bs!79428 (and m!914033 m!914025 m!914027)))

(assert (=> bs!79428 s!24578))

(declare-fun bs!79429 () Bool)

(assert (= bs!79429 (and m!914033 m!913082)))

(assert (=> bs!79429 s!24582))

(declare-fun bs!79430 () Bool)

(assert (= bs!79430 (and m!914033 m!912970)))

(assert (=> bs!79430 s!24568))

(declare-fun bs!79431 () Bool)

(assert (= bs!79431 (and m!914033 m!912996 m!912988)))

(assert (=> bs!79431 s!24556))

(declare-fun bs!79432 () Bool)

(assert (= bs!79432 (and m!914033 m!913841)))

(assert (=> bs!79432 s!24558))

(declare-fun bs!79433 () Bool)

(assert (= bs!79433 (and m!914033 m!913028)))

(assert (=> bs!79433 s!24576))

(declare-fun bs!79434 () Bool)

(assert (= bs!79434 (and m!914033 m!912984)))

(assert (=> bs!79434 s!24566))

(declare-fun bs!79435 () Bool)

(assert (= bs!79435 (and m!914033 m!914031)))

(assert (=> bs!79435 s!24562))

(declare-fun bs!79436 () Bool)

(assert (= bs!79436 (and m!914033 m!913728)))

(assert (=> bs!79436 s!24580))

(declare-fun bs!79437 () Bool)

(assert (= bs!79437 (and m!914033 m!913024)))

(assert (=> bs!79437 s!24574))

(declare-fun bs!79438 () Bool)

(assert (= bs!79438 m!914033))

(assert (=> bs!79438 s!24560))

(declare-fun bs!79439 () Bool)

(assert (= bs!79439 (and m!914033 m!913026)))

(assert (=> bs!79439 s!24570))

(declare-fun bs!79440 () Bool)

(assert (= bs!79440 (and m!914033 m!913020)))

(assert (=> bs!79440 s!24564))

(assert (=> bs!79440 s!24602))

(assert (=> bs!79431 s!24586))

(assert (=> bs!79428 s!24610))

(assert (=> bs!79438 s!24560))

(assert (=> bs!79427 s!24590))

(assert (=> bs!79437 s!24598))

(assert (=> bs!79435 s!24596))

(assert (=> bs!79426 s!24604))

(assert (=> bs!79436 s!24592))

(assert (=> bs!79429 s!24600))

(assert (=> bs!79434 s!24584))

(assert (=> bs!79430 s!24594))

(assert (=> bs!79432 s!24606))

(assert (=> bs!79439 s!24608))

(assert (=> bs!79433 s!24588))

(assert (=> bs!79344 m!914033))

(assert (=> d!223489 d!223547))

(declare-fun b_lambda!25343 () Bool)

(assert (= b_lambda!25293 (or b!640539 b_lambda!25343)))

(assert (=> d!223427 d!223527))

(declare-fun b_lambda!25345 () Bool)

(assert (= b_lambda!25295 (or b!640495 b_lambda!25345)))

(declare-fun bs!79441 () Bool)

(declare-fun d!223549 () Bool)

(assert (= bs!79441 (and d!223549 b!640495)))

(assert (=> bs!79441 (= (dynLambda!3759 lambda!18867 (h!12271 (list!2910 lt!274709))) (addId!0 (h!12271 (list!2910 lt!274709))))))

(declare-fun m!914037 () Bool)

(assert (=> bs!79441 m!914037))

(assert (=> b!641385 d!223549))

(declare-fun b_lambda!25347 () Bool)

(assert (= b_lambda!25267 (or d!223117 b_lambda!25347)))

(declare-fun bs!79442 () Bool)

(declare-fun d!223551 () Bool)

(assert (= bs!79442 (and d!223551 d!223117)))

(assert (=> bs!79442 (= (dynLambda!3752 lambda!18944 (h!12270 lt!274712)) (usesJsonRules!0 (_2!4053 (h!12270 lt!274712))))))

(declare-fun m!914039 () Bool)

(assert (=> bs!79442 m!914039))

(assert (=> b!640815 d!223551))

(declare-fun b_lambda!25349 () Bool)

(assert (= b_lambda!25265 (or d!223117 b_lambda!25349)))

(declare-fun bs!79443 () Bool)

(declare-fun d!223553 () Bool)

(assert (= bs!79443 (and d!223553 d!223117)))

(assert (=> bs!79443 (= (dynLambda!3752 lambda!18945 (h!12270 lt!274712)) (usesJsonRules!0 (removeId!0 (h!12270 lt!274712))))))

(assert (=> bs!79443 m!914019))

(assert (=> bs!79443 m!914019))

(declare-fun m!914041 () Bool)

(assert (=> bs!79443 m!914041))

(assert (=> b!640813 d!223553))

(declare-fun b_lambda!25351 () Bool)

(assert (= b_lambda!25285 (or b!640539 b_lambda!25351)))

(declare-fun bs!79444 () Bool)

(declare-fun d!223555 () Bool)

(assert (= bs!79444 (and d!223555 b!640539)))

(assert (=> bs!79444 (= (dynLambda!3752 lambda!18926 (h!12270 lt!274831)) (usesJsonRules!0 (_2!4053 (h!12270 lt!274831))))))

(declare-fun m!914043 () Bool)

(assert (=> bs!79444 m!914043))

(assert (=> b!641299 d!223555))

(declare-fun b_lambda!25353 () Bool)

(assert (= b_lambda!25297 (or d!223239 b_lambda!25353)))

(declare-fun bs!79445 () Bool)

(declare-fun d!223557 () Bool)

(assert (= bs!79445 (and d!223557 d!223239)))

(assert (=> bs!79445 (= (dynLambda!3758 lambda!19009 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)))))

(assert (=> bs!79445 m!912315))

(declare-fun bs!79446 () Bool)

(declare-fun s!24670 () Bool)

(assert (= bs!79446 (and neg-inst!304 s!24670)))

(declare-fun res!279423 () Bool)

(declare-fun e!392338 () Bool)

(assert (=> bs!79446 (=> res!279423 e!392338)))

(assert (=> bs!79446 (= res!279423 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140376))))))

(assert (=> bs!79446 (=> true e!392338)))

(declare-fun b!641820 () Bool)

(assert (=> b!641820 (= e!392338 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 x!140376)))))

(assert (= (and bs!79446 (not res!279423)) b!641820))

(declare-fun bs!79447 () Bool)

(declare-fun s!24672 () Bool)

(assert (= bs!79447 (and neg-inst!304 s!24672)))

(declare-fun res!279424 () Bool)

(declare-fun e!392339 () Bool)

(assert (=> bs!79447 (=> res!279424 e!392339)))

(assert (=> bs!79447 (= res!279424 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79447 (=> true e!392339)))

(declare-fun b!641821 () Bool)

(assert (=> b!641821 (= e!392339 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79447 (not res!279424)) b!641821))

(declare-fun bs!79448 () Bool)

(declare-fun m!914047 () Bool)

(assert (= bs!79448 (and m!914047 m!913020)))

(assert (=> bs!79448 m!914047))

(assert (=> bs!79448 m!913020))

(assert (=> bs!79448 s!24672))

(declare-fun bs!79449 () Bool)

(declare-fun s!24674 () Bool)

(assert (= bs!79449 (and neg-inst!304 s!24674)))

(declare-fun res!279425 () Bool)

(declare-fun e!392340 () Bool)

(assert (=> bs!79449 (=> res!279425 e!392340)))

(assert (=> bs!79449 (= res!279425 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79449 (=> true e!392340)))

(declare-fun b!641822 () Bool)

(assert (=> b!641822 (= e!392340 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79449 (not res!279425)) b!641822))

(declare-fun bs!79450 () Bool)

(declare-fun m!914045 () Bool)

(assert (= bs!79450 (and m!914047 m!914045)))

(assert (=> bs!79450 m!914047))

(assert (=> bs!79450 m!914047))

(assert (=> bs!79450 s!24674))

(declare-fun bs!79451 () Bool)

(declare-fun s!24676 () Bool)

(assert (= bs!79451 (and neg-inst!304 s!24676)))

(declare-fun res!279426 () Bool)

(declare-fun e!392341 () Bool)

(assert (=> bs!79451 (=> res!279426 e!392341)))

(assert (=> bs!79451 (= res!279426 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140374))))))

(assert (=> bs!79451 (=> true e!392341)))

(declare-fun b!641823 () Bool)

(assert (=> b!641823 (= e!392341 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 x!140374)))))

(assert (= (and bs!79451 (not res!279426)) b!641823))

(declare-fun bs!79452 () Bool)

(assert (= bs!79452 (and m!914047 m!912978 m!912980)))

(assert (=> bs!79452 m!914047))

(assert (=> bs!79452 m!912978))

(assert (=> bs!79452 s!24676))

(declare-fun bs!79453 () Bool)

(declare-fun s!24678 () Bool)

(assert (= bs!79453 (and neg-inst!304 s!24678)))

(declare-fun res!279427 () Bool)

(declare-fun e!392342 () Bool)

(assert (=> bs!79453 (=> res!279427 e!392342)))

(assert (=> bs!79453 (= res!279427 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140419))))))

(assert (=> bs!79453 (=> true e!392342)))

(declare-fun b!641824 () Bool)

(assert (=> b!641824 (= e!392342 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 x!140419)))))

(assert (= (and bs!79453 (not res!279427)) b!641824))

(declare-fun bs!79454 () Bool)

(assert (= bs!79454 (and m!914047 m!913024)))

(assert (=> bs!79454 m!914047))

(assert (=> bs!79454 m!913024))

(assert (=> bs!79454 s!24678))

(declare-fun bs!79455 () Bool)

(declare-fun s!24680 () Bool)

(assert (= bs!79455 (and neg-inst!304 s!24680)))

(declare-fun res!279428 () Bool)

(declare-fun e!392343 () Bool)

(assert (=> bs!79455 (=> res!279428 e!392343)))

(assert (=> bs!79455 (= res!279428 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79455 (=> true e!392343)))

(declare-fun b!641825 () Bool)

(assert (=> b!641825 (= e!392343 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79455 (not res!279428)) b!641825))

(declare-fun bs!79456 () Bool)

(assert (= bs!79456 (and m!914047 m!912984)))

(assert (=> bs!79456 m!914047))

(assert (=> bs!79456 m!912984))

(assert (=> bs!79456 s!24680))

(declare-fun bs!79457 () Bool)

(declare-fun s!24682 () Bool)

(assert (= bs!79457 (and neg-inst!304 s!24682)))

(declare-fun res!279429 () Bool)

(declare-fun e!392344 () Bool)

(assert (=> bs!79457 (=> res!279429 e!392344)))

(assert (=> bs!79457 (= res!279429 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140420))))))

(assert (=> bs!79457 (=> true e!392344)))

(declare-fun b!641826 () Bool)

(assert (=> b!641826 (= e!392344 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 x!140420)))))

(assert (= (and bs!79457 (not res!279429)) b!641826))

(declare-fun bs!79458 () Bool)

(assert (= bs!79458 (and m!914047 m!913026)))

(assert (=> bs!79458 m!914047))

(assert (=> bs!79458 m!913026))

(assert (=> bs!79458 s!24682))

(declare-fun bs!79459 () Bool)

(declare-fun s!24684 () Bool)

(assert (= bs!79459 (and neg-inst!304 s!24684)))

(declare-fun res!279430 () Bool)

(declare-fun e!392345 () Bool)

(assert (=> bs!79459 (=> res!279430 e!392345)))

(assert (=> bs!79459 (= res!279430 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275359))))))

(assert (=> bs!79459 (=> true e!392345)))

(declare-fun b!641827 () Bool)

(assert (=> b!641827 (= e!392345 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 lt!275359)))))

(assert (= (and bs!79459 (not res!279430)) b!641827))

(declare-fun bs!79460 () Bool)

(assert (= bs!79460 (and m!914047 m!913728)))

(assert (=> bs!79460 m!914047))

(assert (=> bs!79460 m!913728))

(assert (=> bs!79460 s!24684))

(declare-fun bs!79461 () Bool)

(declare-fun s!24686 () Bool)

(assert (= bs!79461 (and neg-inst!304 s!24686)))

(declare-fun res!279431 () Bool)

(declare-fun e!392346 () Bool)

(assert (=> bs!79461 (=> res!279431 e!392346)))

(assert (=> bs!79461 (= res!279431 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140375))))))

(assert (=> bs!79461 (=> true e!392346)))

(declare-fun b!641828 () Bool)

(assert (=> b!641828 (= e!392346 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 x!140375)))))

(assert (= (and bs!79461 (not res!279431)) b!641828))

(declare-fun bs!79462 () Bool)

(assert (= bs!79462 (and m!914047 m!912996 m!912988)))

(assert (=> bs!79462 m!914047))

(assert (=> bs!79462 m!912988))

(assert (=> bs!79462 s!24686))

(declare-fun bs!79463 () Bool)

(declare-fun s!24688 () Bool)

(assert (= bs!79463 (and neg-inst!304 s!24688)))

(declare-fun res!279432 () Bool)

(declare-fun e!392347 () Bool)

(assert (=> bs!79463 (=> res!279432 e!392347)))

(assert (=> bs!79463 (= res!279432 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275166))))))

(assert (=> bs!79463 (=> true e!392347)))

(declare-fun b!641829 () Bool)

(assert (=> b!641829 (= e!392347 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 lt!275166)))))

(assert (= (and bs!79463 (not res!279432)) b!641829))

(declare-fun bs!79464 () Bool)

(assert (= bs!79464 (and m!914047 m!912970)))

(assert (=> bs!79464 m!914047))

(assert (=> bs!79464 m!912970))

(assert (=> bs!79464 s!24688))

(declare-fun bs!79465 () Bool)

(declare-fun s!24690 () Bool)

(assert (= bs!79465 (and neg-inst!304 s!24690)))

(declare-fun res!279433 () Bool)

(declare-fun e!392348 () Bool)

(assert (=> bs!79465 (=> res!279433 e!392348)))

(assert (=> bs!79465 (= res!279433 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140421))))))

(assert (=> bs!79465 (=> true e!392348)))

(declare-fun b!641830 () Bool)

(assert (=> b!641830 (= e!392348 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 x!140421)))))

(assert (= (and bs!79465 (not res!279433)) b!641830))

(declare-fun bs!79466 () Bool)

(assert (= bs!79466 (and m!914047 m!913028)))

(assert (=> bs!79466 m!914047))

(assert (=> bs!79466 m!913028))

(assert (=> bs!79466 s!24690))

(declare-fun bs!79467 () Bool)

(declare-fun s!24692 () Bool)

(assert (= bs!79467 (and neg-inst!304 s!24692)))

(declare-fun res!279434 () Bool)

(declare-fun e!392349 () Bool)

(assert (=> bs!79467 (=> res!279434 e!392349)))

(assert (=> bs!79467 (= res!279434 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79467 (=> true e!392349)))

(declare-fun b!641831 () Bool)

(assert (=> b!641831 (= e!392349 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79467 (not res!279434)) b!641831))

(declare-fun bs!79468 () Bool)

(assert (= bs!79468 (and m!914047 m!914025 m!914027)))

(assert (=> bs!79468 m!914047))

(assert (=> bs!79468 m!914027))

(assert (=> bs!79468 s!24692))

(declare-fun bs!79469 () Bool)

(assert (= bs!79469 (and m!914047 m!912998 m!912990)))

(assert (=> bs!79469 s!24670))

(declare-fun bs!79470 () Bool)

(declare-fun s!24694 () Bool)

(assert (= bs!79470 (and neg-inst!304 s!24694)))

(declare-fun res!279435 () Bool)

(declare-fun e!392350 () Bool)

(assert (=> bs!79470 (=> res!279435 e!392350)))

(assert (=> bs!79470 (= res!279435 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275195))))))

(assert (=> bs!79470 (=> true e!392350)))

(declare-fun b!641832 () Bool)

(assert (=> b!641832 (= e!392350 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 lt!275195)))))

(assert (= (and bs!79470 (not res!279435)) b!641832))

(declare-fun bs!79471 () Bool)

(assert (= bs!79471 (and m!914047 m!913082)))

(assert (=> bs!79471 m!914047))

(assert (=> bs!79471 m!913082))

(assert (=> bs!79471 s!24694))

(declare-fun bs!79472 () Bool)

(declare-fun s!24696 () Bool)

(assert (= bs!79472 (and neg-inst!304 s!24696)))

(declare-fun res!279436 () Bool)

(declare-fun e!392351 () Bool)

(assert (=> bs!79472 (=> res!279436 e!392351)))

(assert (=> bs!79472 (= res!279436 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79472 (=> true e!392351)))

(declare-fun b!641833 () Bool)

(assert (=> b!641833 (= e!392351 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79472 (not res!279436)) b!641833))

(declare-fun bs!79473 () Bool)

(assert (= bs!79473 (and m!914047 m!914031)))

(assert (=> bs!79473 m!914047))

(assert (=> bs!79473 m!914031))

(assert (=> bs!79473 s!24696))

(declare-fun bs!79474 () Bool)

(declare-fun s!24698 () Bool)

(assert (= bs!79474 (and neg-inst!304 s!24698)))

(declare-fun res!279437 () Bool)

(declare-fun e!392352 () Bool)

(assert (=> bs!79474 (=> res!279437 e!392352)))

(assert (=> bs!79474 (= res!279437 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79474 (=> true e!392352)))

(declare-fun b!641834 () Bool)

(assert (=> b!641834 (= e!392352 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79474 (not res!279437)) b!641834))

(declare-fun bs!79475 () Bool)

(assert (= bs!79475 (and m!914047 m!914033 m!914035)))

(assert (=> bs!79475 m!914047))

(assert (=> bs!79475 m!914035))

(assert (=> bs!79475 s!24698))

(declare-fun bs!79476 () Bool)

(declare-fun s!24700 () Bool)

(assert (= bs!79476 (and neg-inst!304 s!24700)))

(declare-fun res!279438 () Bool)

(declare-fun e!392353 () Bool)

(assert (=> bs!79476 (=> res!279438 e!392353)))

(assert (=> bs!79476 (= res!279438 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275382))))))

(assert (=> bs!79476 (=> true e!392353)))

(declare-fun b!641835 () Bool)

(assert (=> b!641835 (= e!392353 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B)) (toValue!11 KeywordValueInjection!43 lt!275382)))))

(assert (= (and bs!79476 (not res!279438)) b!641835))

(declare-fun bs!79477 () Bool)

(assert (= bs!79477 (and m!914047 m!913841)))

(assert (=> bs!79477 m!914047))

(assert (=> bs!79477 m!913841))

(assert (=> bs!79477 s!24700))

(assert (=> m!914047 s!24674))

(declare-fun bs!79478 () Bool)

(declare-fun s!24702 () Bool)

(assert (= bs!79478 (and neg-inst!304 s!24702)))

(declare-fun res!279439 () Bool)

(declare-fun e!392354 () Bool)

(assert (=> bs!79478 (=> res!279439 e!392354)))

(assert (=> bs!79478 (= res!279439 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79478 (=> true e!392354)))

(declare-fun b!641836 () Bool)

(assert (=> b!641836 (= e!392354 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x000A)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79478 (not res!279439)) b!641836))

(assert (=> bs!79473 m!914031))

(assert (=> bs!79473 m!914047))

(assert (=> bs!79473 s!24702))

(declare-fun bs!79479 () Bool)

(declare-fun s!24704 () Bool)

(assert (= bs!79479 (and neg-inst!304 s!24704)))

(declare-fun res!279440 () Bool)

(declare-fun e!392355 () Bool)

(assert (=> bs!79479 (=> res!279440 e!392355)))

(assert (=> bs!79479 (= res!279440 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79479 (=> true e!392355)))

(declare-fun b!641837 () Bool)

(assert (=> b!641837 (= e!392355 (= (toValue!11 KeywordValueInjection!43 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79479 (not res!279440)) b!641837))

(assert (=> bs!79456 m!912984))

(assert (=> bs!79456 m!914047))

(assert (=> bs!79456 s!24704))

(declare-fun bs!79480 () Bool)

(declare-fun s!24706 () Bool)

(assert (= bs!79480 (and neg-inst!304 s!24706)))

(declare-fun res!279441 () Bool)

(declare-fun e!392356 () Bool)

(assert (=> bs!79480 (=> res!279441 e!392356)))

(assert (=> bs!79480 (= res!279441 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79480 (=> true e!392356)))

(declare-fun b!641838 () Bool)

(assert (=> b!641838 (= e!392356 (= (toValue!11 KeywordValueInjection!43 x!140420) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79480 (not res!279441)) b!641838))

(assert (=> bs!79458 m!913026))

(assert (=> bs!79458 m!914047))

(assert (=> bs!79458 s!24706))

(declare-fun bs!79481 () Bool)

(declare-fun s!24708 () Bool)

(assert (= bs!79481 (and neg-inst!304 s!24708)))

(declare-fun res!279442 () Bool)

(declare-fun e!392357 () Bool)

(assert (=> bs!79481 (=> res!279442 e!392357)))

(assert (=> bs!79481 (= res!279442 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79481 (=> true e!392357)))

(declare-fun b!641839 () Bool)

(assert (=> b!641839 (= e!392357 (= (toValue!11 KeywordValueInjection!43 x!140374) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79481 (not res!279442)) b!641839))

(assert (=> bs!79452 m!912978))

(assert (=> bs!79452 m!914047))

(assert (=> bs!79452 s!24708))

(declare-fun bs!79482 () Bool)

(declare-fun s!24710 () Bool)

(assert (= bs!79482 (and neg-inst!304 s!24710)))

(declare-fun res!279443 () Bool)

(declare-fun e!392358 () Bool)

(assert (=> bs!79482 (=> res!279443 e!392358)))

(assert (=> bs!79482 (= res!279443 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79482 (=> true e!392358)))

(declare-fun b!641840 () Bool)

(assert (=> b!641840 (= e!392358 (= (toValue!11 KeywordValueInjection!43 lt!275166) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79482 (not res!279443)) b!641840))

(assert (=> bs!79464 m!912970))

(assert (=> bs!79464 m!914047))

(assert (=> bs!79464 s!24710))

(declare-fun bs!79483 () Bool)

(declare-fun s!24712 () Bool)

(assert (= bs!79483 (and neg-inst!304 s!24712)))

(declare-fun res!279444 () Bool)

(declare-fun e!392359 () Bool)

(assert (=> bs!79483 (=> res!279444 e!392359)))

(assert (=> bs!79483 (= res!279444 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79483 (=> true e!392359)))

(declare-fun b!641841 () Bool)

(assert (=> b!641841 (= e!392359 (= (toValue!11 KeywordValueInjection!43 lt!275359) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79483 (not res!279444)) b!641841))

(assert (=> bs!79460 m!913728))

(assert (=> bs!79460 m!914047))

(assert (=> bs!79460 s!24712))

(declare-fun bs!79484 () Bool)

(declare-fun s!24714 () Bool)

(assert (= bs!79484 (and neg-inst!304 s!24714)))

(declare-fun res!279445 () Bool)

(declare-fun e!392360 () Bool)

(assert (=> bs!79484 (=> res!279445 e!392360)))

(assert (=> bs!79484 (= res!279445 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79484 (=> true e!392360)))

(declare-fun b!641842 () Bool)

(assert (=> b!641842 (= e!392360 (= (toValue!11 KeywordValueInjection!43 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79484 (not res!279445)) b!641842))

(assert (=> bs!79448 m!913020))

(assert (=> bs!79448 m!914047))

(assert (=> bs!79448 s!24714))

(declare-fun bs!79485 () Bool)

(declare-fun s!24716 () Bool)

(assert (= bs!79485 (and neg-inst!304 s!24716)))

(declare-fun res!279446 () Bool)

(declare-fun e!392361 () Bool)

(assert (=> bs!79485 (=> res!279446 e!392361)))

(assert (=> bs!79485 (= res!279446 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79485 (=> true e!392361)))

(declare-fun b!641843 () Bool)

(assert (=> b!641843 (= e!392361 (= (toValue!11 KeywordValueInjection!43 x!140419) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79485 (not res!279446)) b!641843))

(assert (=> bs!79454 m!913024))

(assert (=> bs!79454 m!914047))

(assert (=> bs!79454 s!24716))

(declare-fun bs!79486 () Bool)

(declare-fun s!24718 () Bool)

(assert (= bs!79486 (and neg-inst!304 s!24718)))

(declare-fun res!279447 () Bool)

(declare-fun e!392362 () Bool)

(assert (=> bs!79486 (=> res!279447 e!392362)))

(assert (=> bs!79486 (= res!279447 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79486 (=> true e!392362)))

(declare-fun b!641844 () Bool)

(assert (=> b!641844 (= e!392362 (= (toValue!11 KeywordValueInjection!43 x!140375) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79486 (not res!279447)) b!641844))

(assert (=> bs!79462 m!912988))

(assert (=> bs!79462 m!914047))

(assert (=> bs!79462 s!24718))

(assert (=> m!914047 s!24674))

(declare-fun bs!79487 () Bool)

(declare-fun s!24720 () Bool)

(assert (= bs!79487 (and neg-inst!304 s!24720)))

(declare-fun res!279448 () Bool)

(declare-fun e!392363 () Bool)

(assert (=> bs!79487 (=> res!279448 e!392363)))

(assert (=> bs!79487 (= res!279448 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79487 (=> true e!392363)))

(declare-fun b!641845 () Bool)

(assert (=> b!641845 (= e!392363 (= (toValue!11 KeywordValueInjection!43 x!140376) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79487 (not res!279448)) b!641845))

(assert (=> bs!79469 m!912990))

(assert (=> bs!79469 m!914047))

(assert (=> bs!79469 s!24720))

(assert (=> bs!79450 s!24674))

(declare-fun bs!79488 () Bool)

(declare-fun s!24722 () Bool)

(assert (= bs!79488 (and neg-inst!304 s!24722)))

(declare-fun res!279449 () Bool)

(declare-fun e!392364 () Bool)

(assert (=> bs!79488 (=> res!279449 e!392364)))

(assert (=> bs!79488 (= res!279449 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79488 (=> true e!392364)))

(declare-fun b!641846 () Bool)

(assert (=> b!641846 (= e!392364 (= (toValue!11 KeywordValueInjection!43 lt!275382) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79488 (not res!279449)) b!641846))

(assert (=> bs!79477 m!913841))

(assert (=> bs!79477 m!914047))

(assert (=> bs!79477 s!24722))

(declare-fun bs!79489 () Bool)

(declare-fun s!24724 () Bool)

(assert (= bs!79489 (and neg-inst!304 s!24724)))

(declare-fun res!279450 () Bool)

(declare-fun e!392365 () Bool)

(assert (=> bs!79489 (=> res!279450 e!392365)))

(assert (=> bs!79489 (= res!279450 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79489 (=> true e!392365)))

(declare-fun b!641847 () Bool)

(assert (=> b!641847 (= e!392365 (= (toValue!11 KeywordValueInjection!43 x!140421) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79489 (not res!279450)) b!641847))

(assert (=> bs!79466 m!913028))

(assert (=> bs!79466 m!914047))

(assert (=> bs!79466 s!24724))

(declare-fun bs!79490 () Bool)

(declare-fun s!24726 () Bool)

(assert (= bs!79490 (and neg-inst!304 s!24726)))

(declare-fun res!279451 () Bool)

(declare-fun e!392366 () Bool)

(assert (=> bs!79490 (=> res!279451 e!392366)))

(assert (=> bs!79490 (= res!279451 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79490 (=> true e!392366)))

(declare-fun b!641848 () Bool)

(assert (=> b!641848 (= e!392366 (= (toValue!11 KeywordValueInjection!43 lt!275195) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79490 (not res!279451)) b!641848))

(assert (=> bs!79471 m!913082))

(assert (=> bs!79471 m!914047))

(assert (=> bs!79471 s!24726))

(declare-fun bs!79491 () Bool)

(declare-fun s!24728 () Bool)

(assert (= bs!79491 (and neg-inst!304 s!24728)))

(declare-fun res!279452 () Bool)

(declare-fun e!392367 () Bool)

(assert (=> bs!79491 (=> res!279452 e!392367)))

(assert (=> bs!79491 (= res!279452 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79491 (=> true e!392367)))

(declare-fun b!641849 () Bool)

(assert (=> b!641849 (= e!392367 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005D)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79491 (not res!279452)) b!641849))

(assert (=> bs!79475 m!914035))

(assert (=> bs!79475 m!914047))

(assert (=> bs!79475 s!24728))

(declare-fun bs!79492 () Bool)

(declare-fun s!24730 () Bool)

(assert (= bs!79492 (and neg-inst!304 s!24730)))

(declare-fun res!279453 () Bool)

(declare-fun e!392368 () Bool)

(assert (=> bs!79492 (=> res!279453 e!392368)))

(assert (=> bs!79492 (= res!279453 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79492 (=> true e!392368)))

(declare-fun b!641850 () Bool)

(assert (=> b!641850 (= e!392368 (= (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x002C)) (toValue!11 KeywordValueInjection!43 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79492 (not res!279453)) b!641850))

(assert (=> bs!79468 m!914027))

(assert (=> bs!79468 m!914047))

(assert (=> bs!79468 s!24730))

(declare-fun bs!79493 () Bool)

(declare-fun s!24732 () Bool)

(assert (= bs!79493 (and neg-inst!311 s!24732)))

(declare-fun res!279454 () Bool)

(declare-fun e!392369 () Bool)

(assert (=> bs!79493 (=> res!279454 e!392369)))

(assert (=> bs!79493 (= res!279454 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275195))))))

(assert (=> bs!79493 (=> true e!392369)))

(declare-fun b!641851 () Bool)

(assert (=> b!641851 (= e!392369 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 lt!275195)))))

(assert (= (and bs!79493 (not res!279454)) b!641851))

(assert (=> bs!79471 m!914047))

(assert (=> bs!79471 m!913082))

(assert (=> bs!79471 s!24732))

(declare-fun bs!79494 () Bool)

(declare-fun s!24734 () Bool)

(assert (= bs!79494 (and neg-inst!311 s!24734)))

(declare-fun res!279455 () Bool)

(declare-fun e!392370 () Bool)

(assert (=> bs!79494 (=> res!279455 e!392370)))

(assert (=> bs!79494 (= res!279455 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140419))))))

(assert (=> bs!79494 (=> true e!392370)))

(declare-fun b!641852 () Bool)

(assert (=> b!641852 (= e!392370 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 x!140419)))))

(assert (= (and bs!79494 (not res!279455)) b!641852))

(declare-fun bs!79495 () Bool)

(assert (= bs!79495 (and m!914047 m!913016 m!913024)))

(assert (=> bs!79495 m!914047))

(assert (=> bs!79495 m!913024))

(assert (=> bs!79495 s!24734))

(declare-fun bs!79496 () Bool)

(declare-fun s!24736 () Bool)

(assert (= bs!79496 (and neg-inst!311 s!24736)))

(declare-fun res!279456 () Bool)

(declare-fun e!392371 () Bool)

(assert (=> bs!79496 (=> res!279456 e!392371)))

(assert (=> bs!79496 (= res!279456 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140374))))))

(assert (=> bs!79496 (=> true e!392371)))

(declare-fun b!641853 () Bool)

(assert (=> b!641853 (= e!392371 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 x!140374)))))

(assert (= (and bs!79496 (not res!279456)) b!641853))

(declare-fun bs!79497 () Bool)

(assert (= bs!79497 (and m!914047 m!912978)))

(assert (=> bs!79497 m!914047))

(assert (=> bs!79497 m!912978))

(assert (=> bs!79497 s!24736))

(declare-fun bs!79498 () Bool)

(declare-fun s!24738 () Bool)

(assert (= bs!79498 (and neg-inst!311 s!24738)))

(declare-fun res!279457 () Bool)

(declare-fun e!392372 () Bool)

(assert (=> bs!79498 (=> res!279457 e!392372)))

(assert (=> bs!79498 (= res!279457 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140420))))))

(assert (=> bs!79498 (=> true e!392372)))

(declare-fun b!641854 () Bool)

(assert (=> b!641854 (= e!392372 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 x!140420)))))

(assert (= (and bs!79498 (not res!279457)) b!641854))

(declare-fun bs!79499 () Bool)

(assert (= bs!79499 (and m!914047 m!913026 m!913034)))

(assert (=> bs!79499 m!914047))

(assert (=> bs!79499 m!913026))

(assert (=> bs!79499 s!24738))

(declare-fun bs!79500 () Bool)

(declare-fun s!24740 () Bool)

(assert (= bs!79500 (and neg-inst!311 s!24740)))

(declare-fun res!279458 () Bool)

(declare-fun e!392373 () Bool)

(assert (=> bs!79500 (=> res!279458 e!392373)))

(assert (=> bs!79500 (= res!279458 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140376))))))

(assert (=> bs!79500 (=> true e!392373)))

(declare-fun b!641855 () Bool)

(assert (=> b!641855 (= e!392373 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 x!140376)))))

(assert (= (and bs!79500 (not res!279458)) b!641855))

(declare-fun bs!79501 () Bool)

(assert (= bs!79501 (and m!914047 m!912990)))

(assert (=> bs!79501 m!914047))

(assert (=> bs!79501 m!912990))

(assert (=> bs!79501 s!24740))

(declare-fun bs!79502 () Bool)

(declare-fun s!24742 () Bool)

(assert (= bs!79502 (and neg-inst!311 s!24742)))

(declare-fun res!279459 () Bool)

(declare-fun e!392374 () Bool)

(assert (=> bs!79502 (=> res!279459 e!392374)))

(assert (=> bs!79502 (= res!279459 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140421))))))

(assert (=> bs!79502 (=> true e!392374)))

(declare-fun b!641856 () Bool)

(assert (=> b!641856 (= e!392374 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 x!140421)))))

(assert (= (and bs!79502 (not res!279459)) b!641856))

(declare-fun bs!79503 () Bool)

(assert (= bs!79503 (and m!914047 m!913028 m!913036)))

(assert (=> bs!79503 m!914047))

(assert (=> bs!79503 m!913028))

(assert (=> bs!79503 s!24742))

(declare-fun bs!79504 () Bool)

(declare-fun s!24744 () Bool)

(assert (= bs!79504 (and neg-inst!311 s!24744)))

(declare-fun res!279460 () Bool)

(declare-fun e!392375 () Bool)

(assert (=> bs!79504 (=> res!279460 e!392375)))

(assert (=> bs!79504 (= res!279460 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x005D)))))))

(assert (=> bs!79504 (=> true e!392375)))

(declare-fun b!641857 () Bool)

(assert (=> b!641857 (= e!392375 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D))))))

(assert (= (and bs!79504 (not res!279460)) b!641857))

(declare-fun bs!79505 () Bool)

(assert (= bs!79505 (and m!914047 m!914035)))

(assert (=> bs!79505 m!914047))

(assert (=> bs!79505 m!914035))

(assert (=> bs!79505 s!24744))

(declare-fun bs!79506 () Bool)

(declare-fun s!24746 () Bool)

(assert (= bs!79506 (and neg-inst!311 s!24746)))

(declare-fun res!279461 () Bool)

(declare-fun e!392376 () Bool)

(assert (=> bs!79506 (=> res!279461 e!392376)))

(assert (=> bs!79506 (= res!279461 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))))))))

(assert (=> bs!79506 (=> true e!392376)))

(declare-fun b!641858 () Bool)

(assert (=> b!641858 (= e!392376 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374)))))))

(assert (= (and bs!79506 (not res!279461)) b!641858))

(assert (=> bs!79456 m!914047))

(assert (=> bs!79456 m!912984))

(assert (=> bs!79456 s!24746))

(declare-fun bs!79507 () Bool)

(declare-fun s!24748 () Bool)

(assert (= bs!79507 (and neg-inst!311 s!24748)))

(declare-fun res!279462 () Bool)

(declare-fun e!392377 () Bool)

(assert (=> bs!79507 (=> res!279462 e!392377)))

(assert (=> bs!79507 (= res!279462 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275359))))))

(assert (=> bs!79507 (=> true e!392377)))

(declare-fun b!641859 () Bool)

(assert (=> b!641859 (= e!392377 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 lt!275359)))))

(assert (= (and bs!79507 (not res!279462)) b!641859))

(assert (=> bs!79460 m!914047))

(assert (=> bs!79460 m!913728))

(assert (=> bs!79460 s!24748))

(declare-fun bs!79508 () Bool)

(declare-fun s!24750 () Bool)

(assert (= bs!79508 (and neg-inst!311 s!24750)))

(declare-fun res!279463 () Bool)

(declare-fun e!392378 () Bool)

(assert (=> bs!79508 (=> res!279463 e!392378)))

(assert (=> bs!79508 (= res!279463 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275166))))))

(assert (=> bs!79508 (=> true e!392378)))

(declare-fun b!641860 () Bool)

(assert (=> b!641860 (= e!392378 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 lt!275166)))))

(assert (= (and bs!79508 (not res!279463)) b!641860))

(assert (=> bs!79464 m!914047))

(assert (=> bs!79464 m!912970))

(assert (=> bs!79464 s!24750))

(declare-fun bs!79509 () Bool)

(declare-fun s!24752 () Bool)

(assert (= bs!79509 (and neg-inst!311 s!24752)))

(declare-fun res!279464 () Bool)

(declare-fun e!392379 () Bool)

(assert (=> bs!79509 (=> res!279464 e!392379)))

(assert (=> bs!79509 (= res!279464 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x002C)))))))

(assert (=> bs!79509 (=> true e!392379)))

(declare-fun b!641861 () Bool)

(assert (=> b!641861 (= e!392379 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C))))))

(assert (= (and bs!79509 (not res!279464)) b!641861))

(declare-fun bs!79510 () Bool)

(assert (= bs!79510 (and m!914047 m!914027)))

(assert (=> bs!79510 m!914047))

(assert (=> bs!79510 m!914027))

(assert (=> bs!79510 s!24752))

(declare-fun bs!79511 () Bool)

(declare-fun s!24754 () Bool)

(assert (= bs!79511 (and neg-inst!311 s!24754)))

(declare-fun res!279465 () Bool)

(declare-fun e!392380 () Bool)

(assert (=> bs!79511 (=> res!279465 e!392380)))

(assert (=> bs!79511 (= res!279465 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 x!140375))))))

(assert (=> bs!79511 (=> true e!392380)))

(declare-fun b!641862 () Bool)

(assert (=> b!641862 (= e!392380 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 x!140375)))))

(assert (= (and bs!79511 (not res!279465)) b!641862))

(declare-fun bs!79512 () Bool)

(assert (= bs!79512 (and m!914047 m!912988)))

(assert (=> bs!79512 m!914047))

(assert (=> bs!79512 m!912988))

(assert (=> bs!79512 s!24754))

(declare-fun bs!79513 () Bool)

(declare-fun s!24756 () Bool)

(assert (= bs!79513 (and neg-inst!311 s!24756)))

(declare-fun res!279466 () Bool)

(declare-fun e!392381 () Bool)

(assert (=> bs!79513 (=> res!279466 e!392381)))

(assert (=> bs!79513 (= res!279466 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))))))))

(assert (=> bs!79513 (=> true e!392381)))

(declare-fun b!641863 () Bool)

(assert (=> b!641863 (= e!392381 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419)))))))

(assert (= (and bs!79513 (not res!279466)) b!641863))

(assert (=> bs!79448 m!914047))

(assert (=> bs!79448 m!913020))

(assert (=> bs!79448 s!24756))

(declare-fun bs!79514 () Bool)

(declare-fun s!24758 () Bool)

(assert (= bs!79514 (and neg-inst!311 s!24758)))

(declare-fun res!279467 () Bool)

(declare-fun e!392382 () Bool)

(assert (=> bs!79514 (=> res!279467 e!392382)))

(assert (=> bs!79514 (= res!279467 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 lt!275382))))))

(assert (=> bs!79514 (=> true e!392382)))

(declare-fun b!641864 () Bool)

(assert (=> b!641864 (= e!392382 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 lt!275382)))))

(assert (= (and bs!79514 (not res!279467)) b!641864))

(assert (=> bs!79477 m!914047))

(assert (=> bs!79477 m!913841))

(assert (=> bs!79477 s!24758))

(declare-fun bs!79515 () Bool)

(declare-fun s!24760 () Bool)

(assert (= bs!79515 (and neg-inst!311 s!24760)))

(declare-fun res!279468 () Bool)

(declare-fun e!392383 () Bool)

(assert (=> bs!79515 (=> res!279468 e!392383)))

(assert (=> bs!79515 (= res!279468 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x000A)))))))

(assert (=> bs!79515 (=> true e!392383)))

(declare-fun b!641865 () Bool)

(assert (=> b!641865 (= e!392383 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A))))))

(assert (= (and bs!79515 (not res!279468)) b!641865))

(declare-fun bs!79516 () Bool)

(assert (= bs!79516 (and m!914047 m!914029 m!914031)))

(assert (=> bs!79516 m!914047))

(assert (=> bs!79516 m!914031))

(assert (=> bs!79516 s!24760))

(declare-fun bs!79517 () Bool)

(declare-fun s!24762 () Bool)

(assert (= bs!79517 (and neg-inst!311 s!24762)))

(declare-fun res!279469 () Bool)

(declare-fun e!392384 () Bool)

(assert (=> bs!79517 (=> res!279469 e!392384)))

(assert (=> bs!79517 (= res!279469 (not (= (list!2916 (singletonSeq!437 #x005B)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79517 (=> true e!392384)))

(declare-fun b!641866 () Bool)

(assert (=> b!641866 (= e!392384 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79517 (not res!279469)) b!641866))

(assert (=> m!914047 s!24762))

(declare-fun bs!79518 () Bool)

(declare-fun s!24764 () Bool)

(assert (= bs!79518 (and neg-inst!311 s!24764)))

(declare-fun res!279470 () Bool)

(declare-fun e!392385 () Bool)

(assert (=> bs!79518 (=> res!279470 e!392385)))

(assert (=> bs!79518 (= res!279470 (not (= (list!2916 lt!275382) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79518 (=> true e!392385)))

(declare-fun b!641867 () Bool)

(assert (=> b!641867 (= e!392385 (= (toValue!9 WhitespaceValueInjection!39 lt!275382) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79518 (not res!279470)) b!641867))

(assert (=> bs!79477 m!913841))

(assert (=> bs!79477 m!914047))

(assert (=> bs!79477 s!24764))

(declare-fun bs!79519 () Bool)

(declare-fun s!24766 () Bool)

(assert (= bs!79519 (and neg-inst!311 s!24766)))

(declare-fun res!279471 () Bool)

(declare-fun e!392386 () Bool)

(assert (=> bs!79519 (=> res!279471 e!392386)))

(assert (=> bs!79519 (= res!279471 (not (= (list!2916 x!140375) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79519 (=> true e!392386)))

(declare-fun b!641868 () Bool)

(assert (=> b!641868 (= e!392386 (= (toValue!9 WhitespaceValueInjection!39 x!140375) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79519 (not res!279471)) b!641868))

(assert (=> bs!79512 m!912988))

(assert (=> bs!79512 m!914047))

(assert (=> bs!79512 s!24766))

(declare-fun bs!79520 () Bool)

(declare-fun s!24768 () Bool)

(assert (= bs!79520 (and neg-inst!311 s!24768)))

(declare-fun res!279472 () Bool)

(declare-fun e!392387 () Bool)

(assert (=> bs!79520 (=> res!279472 e!392387)))

(assert (=> bs!79520 (= res!279472 (not (= (list!2916 x!140376) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79520 (=> true e!392387)))

(declare-fun b!641869 () Bool)

(assert (=> b!641869 (= e!392387 (= (toValue!9 WhitespaceValueInjection!39 x!140376) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79520 (not res!279472)) b!641869))

(assert (=> bs!79501 m!912990))

(assert (=> bs!79501 m!914047))

(assert (=> bs!79501 s!24768))

(assert (=> m!914047 s!24762))

(declare-fun bs!79521 () Bool)

(declare-fun s!24770 () Bool)

(assert (= bs!79521 (and neg-inst!311 s!24770)))

(declare-fun res!279473 () Bool)

(declare-fun e!392388 () Bool)

(assert (=> bs!79521 (=> res!279473 e!392388)))

(assert (=> bs!79521 (= res!279473 (not (= (list!2916 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79521 (=> true e!392388)))

(declare-fun b!641870 () Bool)

(assert (=> b!641870 (= e!392388 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!4 KeywordValueInjection!43 (toValue!11 KeywordValueInjection!43 x!140374))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79521 (not res!279473)) b!641870))

(assert (=> bs!79456 m!912984))

(assert (=> bs!79456 m!914047))

(assert (=> bs!79456 s!24770))

(declare-fun bs!79522 () Bool)

(declare-fun s!24772 () Bool)

(assert (= bs!79522 (and neg-inst!311 s!24772)))

(declare-fun res!279474 () Bool)

(declare-fun e!392389 () Bool)

(assert (=> bs!79522 (=> res!279474 e!392389)))

(assert (=> bs!79522 (= res!279474 (not (= (list!2916 (singletonSeq!437 #x002C)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79522 (=> true e!392389)))

(declare-fun b!641871 () Bool)

(assert (=> b!641871 (= e!392389 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x002C)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79522 (not res!279474)) b!641871))

(assert (=> bs!79510 m!914027))

(assert (=> bs!79510 m!914047))

(assert (=> bs!79510 s!24772))

(declare-fun bs!79523 () Bool)

(declare-fun s!24774 () Bool)

(assert (= bs!79523 (and neg-inst!311 s!24774)))

(declare-fun res!279475 () Bool)

(declare-fun e!392390 () Bool)

(assert (=> bs!79523 (=> res!279475 e!392390)))

(assert (=> bs!79523 (= res!279475 (not (= (list!2916 (singletonSeq!437 #x005D)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79523 (=> true e!392390)))

(declare-fun b!641872 () Bool)

(assert (=> b!641872 (= e!392390 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005D)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79523 (not res!279475)) b!641872))

(assert (=> bs!79505 m!914035))

(assert (=> bs!79505 m!914047))

(assert (=> bs!79505 s!24774))

(declare-fun bs!79524 () Bool)

(declare-fun s!24776 () Bool)

(assert (= bs!79524 (and neg-inst!311 s!24776)))

(declare-fun res!279476 () Bool)

(declare-fun e!392391 () Bool)

(assert (=> bs!79524 (=> res!279476 e!392391)))

(assert (=> bs!79524 (= res!279476 (not (= (list!2916 x!140420) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79524 (=> true e!392391)))

(declare-fun b!641873 () Bool)

(assert (=> b!641873 (= e!392391 (= (toValue!9 WhitespaceValueInjection!39 x!140420) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79524 (not res!279476)) b!641873))

(assert (=> bs!79499 m!913026))

(assert (=> bs!79499 m!914047))

(assert (=> bs!79499 s!24776))

(declare-fun bs!79525 () Bool)

(declare-fun s!24778 () Bool)

(assert (= bs!79525 (and neg-inst!311 s!24778)))

(declare-fun res!279477 () Bool)

(declare-fun e!392392 () Bool)

(assert (=> bs!79525 (=> res!279477 e!392392)))

(assert (=> bs!79525 (= res!279477 (not (= (list!2916 x!140421) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79525 (=> true e!392392)))

(declare-fun b!641874 () Bool)

(assert (=> b!641874 (= e!392392 (= (toValue!9 WhitespaceValueInjection!39 x!140421) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79525 (not res!279477)) b!641874))

(assert (=> bs!79503 m!913028))

(assert (=> bs!79503 m!914047))

(assert (=> bs!79503 s!24778))

(declare-fun bs!79526 () Bool)

(declare-fun s!24780 () Bool)

(assert (= bs!79526 (and neg-inst!311 s!24780)))

(declare-fun res!279478 () Bool)

(declare-fun e!392393 () Bool)

(assert (=> bs!79526 (=> res!279478 e!392393)))

(assert (=> bs!79526 (= res!279478 (not (= (list!2916 x!140374) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79526 (=> true e!392393)))

(declare-fun b!641875 () Bool)

(assert (=> b!641875 (= e!392393 (= (toValue!9 WhitespaceValueInjection!39 x!140374) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79526 (not res!279478)) b!641875))

(assert (=> bs!79497 m!912978))

(assert (=> bs!79497 m!914047))

(assert (=> bs!79497 s!24780))

(declare-fun bs!79527 () Bool)

(declare-fun s!24782 () Bool)

(assert (= bs!79527 (and neg-inst!311 s!24782)))

(declare-fun res!279479 () Bool)

(declare-fun e!392394 () Bool)

(assert (=> bs!79527 (=> res!279479 e!392394)))

(assert (=> bs!79527 (= res!279479 (not (= (list!2916 lt!275195) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79527 (=> true e!392394)))

(declare-fun b!641876 () Bool)

(assert (=> b!641876 (= e!392394 (= (toValue!9 WhitespaceValueInjection!39 lt!275195) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79527 (not res!279479)) b!641876))

(assert (=> bs!79471 m!913082))

(assert (=> bs!79471 m!914047))

(assert (=> bs!79471 s!24782))

(declare-fun bs!79528 () Bool)

(declare-fun s!24784 () Bool)

(assert (= bs!79528 (and neg-inst!311 s!24784)))

(declare-fun res!279480 () Bool)

(declare-fun e!392395 () Bool)

(assert (=> bs!79528 (=> res!279480 e!392395)))

(assert (=> bs!79528 (= res!279480 (not (= (list!2916 x!140419) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79528 (=> true e!392395)))

(declare-fun b!641877 () Bool)

(assert (=> b!641877 (= e!392395 (= (toValue!9 WhitespaceValueInjection!39 x!140419) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79528 (not res!279480)) b!641877))

(assert (=> bs!79495 m!913024))

(assert (=> bs!79495 m!914047))

(assert (=> bs!79495 s!24784))

(declare-fun bs!79529 () Bool)

(declare-fun s!24786 () Bool)

(assert (= bs!79529 (and neg-inst!311 s!24786)))

(declare-fun res!279481 () Bool)

(declare-fun e!392396 () Bool)

(assert (=> bs!79529 (=> res!279481 e!392396)))

(assert (=> bs!79529 (= res!279481 (not (= (list!2916 (singletonSeq!437 #x000A)) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79529 (=> true e!392396)))

(declare-fun b!641878 () Bool)

(assert (=> b!641878 (= e!392396 (= (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x000A)) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79529 (not res!279481)) b!641878))

(assert (=> bs!79516 m!914031))

(assert (=> bs!79516 m!914047))

(assert (=> bs!79516 s!24786))

(declare-fun bs!79530 () Bool)

(declare-fun s!24788 () Bool)

(assert (= bs!79530 (and neg-inst!311 s!24788)))

(declare-fun res!279482 () Bool)

(declare-fun e!392397 () Bool)

(assert (=> bs!79530 (=> res!279482 e!392397)))

(assert (=> bs!79530 (= res!279482 (not (= (list!2916 lt!275166) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79530 (=> true e!392397)))

(declare-fun b!641879 () Bool)

(assert (=> b!641879 (= e!392397 (= (toValue!9 WhitespaceValueInjection!39 lt!275166) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79530 (not res!279482)) b!641879))

(assert (=> bs!79464 m!912970))

(assert (=> bs!79464 m!914047))

(assert (=> bs!79464 s!24788))

(declare-fun bs!79531 () Bool)

(declare-fun s!24790 () Bool)

(assert (= bs!79531 (and neg-inst!311 s!24790)))

(declare-fun res!279483 () Bool)

(declare-fun e!392398 () Bool)

(assert (=> bs!79531 (=> res!279483 e!392398)))

(assert (=> bs!79531 (= res!279483 (not (= (list!2916 lt!275359) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79531 (=> true e!392398)))

(declare-fun b!641880 () Bool)

(assert (=> b!641880 (= e!392398 (= (toValue!9 WhitespaceValueInjection!39 lt!275359) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79531 (not res!279483)) b!641880))

(assert (=> bs!79460 m!913728))

(assert (=> bs!79460 m!914047))

(assert (=> bs!79460 s!24790))

(declare-fun bs!79532 () Bool)

(declare-fun s!24792 () Bool)

(assert (= bs!79532 (and neg-inst!311 s!24792)))

(declare-fun res!279484 () Bool)

(declare-fun e!392399 () Bool)

(assert (=> bs!79532 (=> res!279484 e!392399)))

(assert (=> bs!79532 (= res!279484 (not (= (list!2916 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (list!2916 (singletonSeq!437 #x005B)))))))

(assert (=> bs!79532 (=> true e!392399)))

(declare-fun b!641881 () Bool)

(assert (=> b!641881 (= e!392399 (= (toValue!9 WhitespaceValueInjection!39 (toCharacters!2 WhitespaceValueInjection!39 (toValue!9 WhitespaceValueInjection!39 x!140419))) (toValue!9 WhitespaceValueInjection!39 (singletonSeq!437 #x005B))))))

(assert (= (and bs!79532 (not res!279484)) b!641881))

(assert (=> bs!79448 m!913020))

(assert (=> bs!79448 m!914047))

(assert (=> bs!79448 s!24792))

(declare-fun bs!79533 () Bool)

(assert (= bs!79533 (and m!914045 m!912998 m!912990)))

(assert (=> bs!79533 m!914047))

(assert (=> bs!79533 m!912990))

(assert (=> bs!79533 s!24670))

(declare-fun bs!79534 () Bool)

(assert (= bs!79534 (and m!914045 m!912996 m!912988)))

(assert (=> bs!79534 s!24686))

(declare-fun bs!79535 () Bool)

(assert (= bs!79535 (and m!914045 m!913082)))

(assert (=> bs!79535 s!24694))

(declare-fun bs!79536 () Bool)

(assert (= bs!79536 (and m!914045 m!912970)))

(assert (=> bs!79536 s!24688))

(declare-fun bs!79537 () Bool)

(assert (= bs!79537 (and m!914045 m!913020)))

(assert (=> bs!79537 s!24672))

(declare-fun bs!79538 () Bool)

(assert (= bs!79538 (and m!914045 m!914033 m!914035)))

(assert (=> bs!79538 s!24698))

(declare-fun bs!79539 () Bool)

(assert (= bs!79539 (and m!914045 m!913841)))

(assert (=> bs!79539 s!24700))

(declare-fun bs!79540 () Bool)

(assert (= bs!79540 (and m!914045 m!913728)))

(assert (=> bs!79540 s!24684))

(declare-fun bs!79541 () Bool)

(assert (= bs!79541 (and m!914045 m!914031)))

(assert (=> bs!79541 s!24696))

(declare-fun bs!79542 () Bool)

(assert (= bs!79542 (and m!914045 m!912984)))

(assert (=> bs!79542 s!24680))

(declare-fun bs!79543 () Bool)

(assert (= bs!79543 (and m!914045 m!913026)))

(assert (=> bs!79543 s!24682))

(declare-fun bs!79544 () Bool)

(assert (= bs!79544 (and m!914045 m!913028)))

(assert (=> bs!79544 s!24690))

(declare-fun bs!79545 () Bool)

(assert (= bs!79545 (and m!914045 m!913024)))

(assert (=> bs!79545 s!24678))

(declare-fun bs!79546 () Bool)

(assert (= bs!79546 m!914045))

(assert (=> bs!79546 s!24674))

(declare-fun bs!79547 () Bool)

(assert (= bs!79547 (and m!914045 m!914025 m!914027)))

(assert (=> bs!79547 s!24692))

(declare-fun bs!79548 () Bool)

(assert (= bs!79548 (and m!914045 m!912978 m!912980)))

(assert (=> bs!79548 s!24676))

(assert (=> bs!79535 s!24726))

(assert (=> bs!79536 s!24710))

(assert (=> bs!79538 s!24728))

(assert (=> bs!79544 s!24724))

(assert (=> bs!79533 s!24720))

(assert (=> bs!79542 s!24704))

(assert (=> bs!79541 s!24702))

(assert (=> bs!79546 s!24674))

(assert (=> bs!79543 s!24706))

(assert (=> bs!79540 s!24712))

(assert (=> bs!79545 s!24716))

(assert (=> bs!79534 s!24718))

(assert (=> bs!79539 s!24722))

(assert (=> bs!79547 s!24730))

(assert (=> bs!79537 s!24714))

(assert (=> bs!79548 s!24708))

(assert (=> bs!79445 m!914045))

(assert (=> d!223443 d!223557))

(declare-fun b_lambda!25355 () Bool)

(assert (= b_lambda!25307 (or b!640539 b_lambda!25355)))

(assert (=> d!223509 d!223519))

(declare-fun b_lambda!25357 () Bool)

(assert (= b_lambda!25263 (or b!640539 b_lambda!25357)))

(declare-fun bs!79549 () Bool)

(declare-fun d!223559 () Bool)

(assert (= bs!79549 (and d!223559 b!640539)))

(assert (=> bs!79549 (= (dynLambda!3752 lambda!18923 (h!12270 lt!274841)) (< (_1!4053 (h!12270 lt!274841)) (_1!4053 lt!274827)))))

(assert (=> b!640803 d!223559))

(declare-fun b_lambda!25359 () Bool)

(assert (= b_lambda!25301 (or b!640495 b_lambda!25359)))

(declare-fun bs!79550 () Bool)

(declare-fun d!223561 () Bool)

(assert (= bs!79550 (and d!223561 b!640495)))

(assert (=> bs!79550 (= (dynLambda!3753 lambda!18870 (h!12271 (list!2910 (map!1500 lt!274704 lambda!18869)))) (usesJsonRules!0 (h!12271 (list!2910 (map!1500 lt!274704 lambda!18869)))))))

(declare-fun m!914049 () Bool)

(assert (=> bs!79550 m!914049))

(assert (=> b!641459 d!223561))

(declare-fun b_lambda!25361 () Bool)

(assert (= b_lambda!25311 (or d!223113 b_lambda!25361)))

(declare-fun bs!79551 () Bool)

(declare-fun d!223563 () Bool)

(assert (= bs!79551 (and d!223563 d!223113)))

(assert (=> bs!79551 (= (dynLambda!3753 lambda!18938 (h!12271 lt!274707)) (usesJsonRules!0 (h!12271 lt!274707)))))

(declare-fun m!914051 () Bool)

(assert (=> bs!79551 m!914051))

(assert (=> b!641549 d!223563))

(declare-fun b_lambda!25363 () Bool)

(assert (= b_lambda!25283 (or b!640539 b_lambda!25363)))

(declare-fun bs!79552 () Bool)

(declare-fun d!223565 () Bool)

(assert (= bs!79552 (and d!223565 b!640539)))

(assert (=> bs!79552 (= (dynLambda!3752 lambda!18926 (h!12270 lt!274820)) (usesJsonRules!0 (_2!4053 (h!12270 lt!274820))))))

(declare-fun m!914053 () Bool)

(assert (=> bs!79552 m!914053))

(assert (=> b!641281 d!223565))

(check-sat (not bs!79288) (not bs!79515) (not b!641496) (not b!641271) (not bs!78441) b_and!62597 (not bs!79254) (not bs!79094) (not bs!79124) (not b!641082) (not d!223437) (not b!641153) (not b!641260) (not b!640972) (not b!640990) (not d!223389) (not b_lambda!25317) (not b!641814) (not b!641708) (not b!641387) (not b!641142) (not b!641231) (not b!641491) (not bs!79139) (not bs!78418) (not bs!79404) (not d!223287) (not b!641647) (not b!641760) (not b!641429) (not bs!79208) (not bs!78398) (not bs!79256) (not bs!79391) (not bs!79420) (not d!223435) (not bs!79384) (not b!641269) (not b_next!18837) (not bs!78948) (not setNonEmpty!2980) (not d!223421) (not b!641834) (not b!641789) (not bs!79176) (not d!223511) (not bs!79127) (not bs!78947) (not bs!79506) (not bs!78676) (not d!223341) (not bs!79200) b_and!62595 (not b!640940) (not bs!79266) (not bs!78501) (not bs!79122) (not b!641131) (not b!641417) (not bs!78473) (not bs!78569) (not b!640932) (not b!641174) (not b!641759) (not b!641515) (not bs!78564) (not b!640935) (not bs!79271) (not b!640980) (not bs!79262) (not b!641681) (not bs!78613) (not bs!79319) (not bs!79530) (not b_lambda!25313) (not bs!79353) (not setNonEmpty!2965) (not bs!79418) (not b!640936) (not b!641363) (not bs!79486) (not b!641766) (not b!641804) (not bs!79154) (not bs!79478) (not d!223297) (not bs!78925) (not b!641410) (not b!641072) (not b!641523) (not bs!79161) (not bs!78514) (not b!641483) (not b!641673) b_and!62609 (not b!641495) (not bs!79125) (not bs!79508) (not b!640937) (not b!641084) (not bs!79419) (not bs!79494) (not b!640944) (not b!641047) (not b!640766) (not d!223347) (not bs!78396) (not d!223455) (not b!641610) (not bs!79406) (not d!223431) (not b!641276) (not b!641682) (not b!641475) (not b!641428) (not bs!79493) (not bs!79327) (not b!641690) (not b!641748) (not bs!78591) (not bs!78475) (not bs!78436) (not b!641357) (not bs!79487) (not b!641083) (not b!641445) (not bs!79413) (not bs!79318) (not bs!79229) (not b!641433) (not b!641130) (not d!223399) (not b!641138) (not b!641865) (not bs!79483) (not bs!78612) (not b!641771) (not bs!79414) (not bs!78453) (not b!641872) (not bs!78595) (not b!640974) (not b!641214) (not b!641093) (not b!640987) (not b!641218) (not b!641133) (not bs!79213) (not b!641877) (not b!641201) (not b!641787) (not b!640728) (not d!223313) (not mapNonEmpty!2634) (not bs!79402) (not bs!79421) (not bs!78944) (not b!641879) (not b!641066) (not b!641006) (not bs!78378) (not bs!78674) (not b!640759) (not b!641670) (not d!223307) (not d!223493) (not bs!79509) (not b!641277) (not bs!79123) (not bs!78975) (not b!641041) (not d!223467) (not b_lambda!25315) (not bs!78650) (not bs!79521) (not b!641338) (not b!641422) (not d!223217) (not b!641159) (not b!641780) (not b!641060) (not b!641090) (not b!641724) (not bs!78952) (not setNonEmpty!2979) (not b!641430) (not bs!79225) (not b!640991) (not d!223225) (not b!641434) (not bs!79237) (not b!641689) (not b!641094) (not b!641092) (not b!640985) (not bs!78469) (not bs!79113) (not b!641607) (not b_lambda!25355) (not b!641854) (not b!641758) (not b!641725) (not b!641280) (not bs!78654) (not b!641808) (not bs!79198) (not b!641768) (not bs!79449) (not b!641562) (not bs!79317) (not b!641254) (not b!640767) (not b!641149) (not b!641370) (not b!641075) (not b!641122) (not b!641004) (not b!641300) (not d!223461) (not b!641700) (not bs!79528) (not b!641440) (not b!641418) (not b!641185) (not bs!78521) (not b!641567) (not bs!79461) (not bs!78471) (not b!641646) (not b!641490) (not b!641258) (not bs!79185) (not bs!78432) (not bs!78504) (not b!641857) (not d!223303) (not setNonEmpty!2989) (not d!223477) (not b!640779) (not b!641816) (not b!641698) (not bs!79103) (not bs!78448) (not b!641829) (not bs!79120) (not bs!78648) (not b!641148) (not b!641078) (not b!641853) (not b_lambda!25337) (not b!641425) (not d!223205) (not bs!78664) (not b!640997) (not bs!78417) (not bs!79151) (not bs!79300) b_and!62603 (not d!223293) (not bs!79142) (not b!641003) (not b!640931) (not b!641398) (not b!641730) (not bs!78661) (not b!640921) (not bs!79445) (not b!641407) (not b!641064) (not b!641055) (not b!641832) (not bs!78372) (not b!641393) (not b!640761) (not d!223309) (not bs!79476) (not b!641431) (not bs!79153) (not bs!79502) (not b!641474) (not bs!78979) (not b!641161) (not bs!78508) (not b!640924) (not b!641158) (not b!641842) (not d!223359) (not bs!79174) (not bs!78537) (not b!641703) (not b!641742) (not bs!79267) (not b!641109) (not bs!78435) (not bs!78558) (not b!641039) (not b!641844) (not b_next!18853) (not b!641219) (not b!641106) (not b!641772) (not bs!78616) (not b!641176) (not b!641203) (not bs!78571) (not b!641311) (not bs!79409) (not b!641727) (not bs!78408) (not b!640973) (not bs!79411) (not bs!79223) (not b!641612) (not setNonEmpty!2976) (not b!640830) (not bs!79148) (not d!223223) (not bs!78599) (not d!223241) (not bs!79442) (not b!641250) b_and!62601 (not b!641419) (not b!641027) (not bs!79523) (not b!641061) (not b!641779) (not b!640996) (not b!641522) (not b!641606) (not b!641770) (not b!641684) (not b!641341) (not b!641843) (not b!641380) (not bs!78681) (not b_lambda!25371) (not b!641029) (not bs!78582) (not bs!79467) b_and!62593 (not d!223233) (not bs!78476) (not b!640869) b_and!62607 (not bs!78954) (not bs!79160) (not b!640861) (not bs!79132) (not bs!79222) (not d!223177) (not b!641127) (not d!223383) (not bs!79496) (not bs!78546) (not setNonEmpty!2981) (not bs!79111) (not bs!79320) (not bs!78976) (not bs!78530) (not bs!78685) (not bs!79291) (not d!223403) (not b!641221) (not b!641528) (not d!223279) (not bs!78389) (not bs!79293) (not b!641518) (not bs!78510) (not bs!79323) (not bs!78524) (not b!640831) (not b!640834) (not bs!78539) (not b!641757) (not b!641396) (not bs!79325) (not bs!79233) (not bm!41669) (not b!641861) (not bs!78588) (not bs!79166) (not bs!78495) (not bs!78556) (not bs!78438) (not bs!79399) (not bs!79371) (not b!640729) (not bs!79286) (not d!223291) (not b!641630) (not bs!79205) (not b!641204) (not b!640999) (not b!641761) (not b!641794) (not d!223385) (not bs!79201) (not bs!79199) (not bs!78518) (not d!223331) (not b!641529) (not b!641157) (not b!641312) (not bs!78467) (not bs!79209) (not b!641080) (not bs!78457) (not b!641532) (not bs!79491) (not bs!79359) (not bs!79295) (not b!641057) (not bs!79100) (not b!641239) (not d!223457) (not b!641701) (not d!223343) (not b!641178) (not b!641321) (not b!641662) (not bs!79388) (not bs!78430) (not b!641659) (not b!641671) (not b!641839) (not bs!78500) (not setNonEmpty!2964) (not b!641010) (not b!641694) (not b!641279) (not bs!78548) (not b!641525) (not b!641566) (not b!640926) (not b!641446) (not b!641247) (not b!641062) (not bs!79230) (not b!641848) (not b!641790) (not b!641786) (not b!641810) (not bs!79107) (not bs!79482) (not b!641569) (not bs!78456) (not setNonEmpty!2990) (not b!641110) (not b!641054) (not b!641119) (not b!641413) (not b!641397) (not b!640969) (not bs!78497) (not b!641845) (not bs!78657) (not b!641605) (not b!641693) (not b!641016) (not b!641792) (not d!223271) (not b!641210) (not b!641736) (not bs!79345) (not bs!78562) (not b_lambda!25329) (not setNonEmpty!2971) (not b!641849) (not d!223295) (not bs!78503) (not bs!78525) (not b_next!18861) (not bs!79441) (not b!640979) (not bs!79518) (not b!641669) (not b!641535) (not b!641519) (not b!641753) (not b!641658) (not bs!78458) (not b!641322) (not d!223447) (not b!641691) (not bs!79214) (not b!641394) (not b!641470) (not b!640788) (not b!641069) (not b!641337) (not b!641821) (not bs!79369) (not b!641867) (not bs!78477) (not b!641841) (not b!641143) (not b!641056) (not b_next!18841) (not b!641472) (not bs!79307) (not d!223337) (not d!223333) (not b!641793) (not b!641087) (not b!641227) (not d!223407) (not bs!79348) (not b!641875) (not b!641702) (not bs!78934) (not b!641053) (not bs!79146) (not bs!79488) (not bs!79098) (not b!640892) (not b!641503) (not b!641200) (not bs!78653) (not b!641800) (not d!223211) (not b_lambda!25345) (not bs!78568) (not b!641372) (not b!641048) (not d!223445) (not d!223327) (not bs!79277) (not b!641222) (not bs!78538) (not bs!78942) (not b!641015) (not b!641499) (not bs!78672) (not b!640993) (not b!641421) (not b!641778) (not d!223505) (not b!641858) (not bs!78483) (not b!641077) (not bs!78465) (not b!641869) (not b!641091) (not b!641749) (not b!641124) (not bs!78951) (not d!223365) (not b!641678) (not b!641442) (not b!640977) (not bs!78540) (not bs!79221) (not bs!78554) (not b!641228) (not bs!79481) (not bs!79470) (not b!640971) (not bs!78379) (not b!641234) (not b!641508) (not bs!79443) (not d!223157) (not b!640925) (not b!641450) (not b!641550) (not b_lambda!25333) (not setNonEmpty!2977) (not bs!78427) (not bs!79375) (not b!641068) (not bs!78445) (not bs!78516) (not b!641385) (not b!640945) (not b!641102) (not bs!79514) (not bs!78464) (not bs!78946) (not b!641881) (not b!641722) (not bs!79292) (not d!223325) (not bs!79315) (not bs!79281) (not b!640923) (not b!641034) (not bs!78629) (not bs!78667) (not b!640847) (not b!641416) (not b!641744) (not b!641728) (not b!641008) (not b!641017) (not bs!79121) (not b!641012) (not d!223175) (not b!641762) (not b!640855) (not bs!79412) (not bs!79451) (not bs!79152) (not b!641063) (not b!641282) (not b!641629) (not bs!78966) (not bs!79367) (not b!641458) (not b!641666) (not b!641812) (not b!641125) (not b!641677) (not bs!78381) (not d!223251) (not bs!78532) (not bs!79484) (not d!223453) (not b!640918) (not d!223273) (not b!641545) (not b!640984) (not b!641426) (not bs!79232) (not bs!79357) (not bs!78487) (not b!641862) (not bs!78541) (not b_lambda!25327) (not d!223353) (not bs!79377) (not bs!78507) (not b!641649) (not b!641802) (not b!641141) (not b!641249) (not b!641030) (not b!641755) (not bs!78593) (not d!223201) (not bs!78620) (not bs!79285) (not b!641236) (not b!641697) (not b!641717) (not d!223355) (not b!641864) (not bs!78553) (not bs!78551) (not b!641390) (not b!641145) (not b!641636) (not bs!79459) (not b!641712) (not bs!79204) (not bs!79182) (not b!640927) (not b!641021) (not b!641498) (not b!641680) (not bs!78618) (not bs!79283) (not b!640832) (not bs!79500) (not b!641389) (not bs!79238) (not bs!78397) (not b!640769) (not bs!78419) (not b!641506) (not b!641513) (not d!223305) (not bs!79126) (not b!641866) (not b!640885) (not b!641270) (not bs!79297) (not b!641745) (not setNonEmpty!2975) (not b!641795) (not bs!79378) (not bs!78964) (not d!223373) (not b!641081) (not b!641719) (not bs!79294) (not b!641197) (not b!640764) (not setNonEmpty!2985) (not bs!78938) (not b!641238) (not bs!78932) (not b!641617) (not d!223491) (not b!641129) (not b!641699) (not b!641032) (not d!223459) (not b!641411) (not b!641784) (not bs!79167) (not bs!78478) (not b!641128) (not b!641860) (not b!641486) (not b!641820) (not bs!78928) (not b!641502) (not bs!78407) (not bs!78505) (not d!223221) (not b!641537) (not bs!78686) (not b!641233) (not b!641366) (not bm!41670) (not b!641198) (not b!641747) (not b!641245) (not bs!79513) (not b!641399) (not setNonEmpty!2963) (not b!641140) (not bs!78479) (not setNonEmpty!2969) (not bs!78597) (not b!641132) (not bs!78962) (not b!641746) (not bs!78428) (not b!641611) (not bs!79393) (not bs!79130) (not b!640995) (not b!640929) (not bs!79385) (not b!641850) (not b!641735) (not bs!78655) (not b!641105) (not bs!78454) (not bs!78491) (not b!641177) (not b!641065) (not bs!79383) (not bs!79239) (not b!641688) (not b!641014) (not b!641520) (not bs!78391) b_and!62605 (not b!641360) (not b!641815) (not b!641134) (not b!641876) (not setNonEmpty!2987) (not bs!79480) (not bs!78956) (not b!641604) (not b!641406) (not bs!78949) (not bs!79169) (not b!641741) (not d!223349) (not bs!79216) (not b!641687) (not b!641436) (not bs!78623) (not b!641339) (not b!641668) (not b!641781) (not bs!79224) (not bs!78646) (not b!641024) (not bs!78610) (not b!641602) (not b!641120) (not b!641846) (not b!641665) (not setNonEmpty!2986) (not b!641051) (not b!641257) (not setNonEmpty!2973) (not bs!78923) (not b!641067) (not b!641797) (not b!641507) (not bs!79405) (not d!223335) (not b!641521) (not bs!79527) (not bs!79117) (not bs!79455) (not b!641484) (not b!641763) (not b!641500) (not b!641011) (not bs!78493) (not bs!79423) (not d!223369) (not bs!79328) (not bs!79350) (not b!641874) (not b!640778) (not bs!79310) (not bs!79532) (not bs!79255) (not bs!78662) (not b_next!18843) (not d!223285) (not b!641002) (not b!641711) (not d!223411) (not d!223167) (not b!640770) (not b!640934) (not b!641085) (not b!640976) (not bs!78529) (not b!641663) (not b!641615) (not bs!79260) (not b!641139) (not mapNonEmpty!2635) (not b_lambda!25367) (not bs!78535) (not bs!79381) (not bs!78511) (not bs!79526) (not bs!78550) (not b!641672) (not bs!78680) (not b!640845) (not d!223289) (not bs!78679) (not bs!78499) (not d!223247) (not bs!79389) (not bs!79195) (not b_next!18855) (not b!640771) (not bs!79109) (not b!641737) (not bs!79529) (not b!641137) (not b!641817) (not b!641826) (not b!640975) (not bs!78594) (not bs!79190) (not bs!78656) (not b!640758) (not bs!78410) (not b!641099) (not b!641838) (not bs!79550) (not b_lambda!25323) (not bs!79329) (not b!641480) (not b!641079) (not bs!78977) (not bs!78627) (not b!641706) (not b!641487) (not bs!79453) (not b!640939) (not b!641767) (not b!641868) (not bs!78434) (not d!223503) (not d!223415) (not b!641833) (not b!640933) (not b!641154) (not b_lambda!25331) (not b!640763) (not b!641709) (not bs!78668) (not d!223371) (not bs!78598) (not setNonEmpty!2972) (not b!641695) (not bs!79119) (not bs!79522) (not b!641685) (not b!641013) (not d!223207) (not b!640876) (not b!641852) (not d!223381) (not bs!78485) (not bs!78462) (not bs!79231) (not d!223215) (not b!641721) (not b!641716) (not bs!79324) (not bs!78640) (not bs!78460) (not b!641101) (not d!223469) (not b!641049) (not bs!78567) (not b!641729) (not b!641095) (not d!223329) (not b!640994) (not bs!78455) (not b!641675) (not b!641489) (not b!641825) (not d!223471) (not bs!79355) (not b!641509) (not d!223179) (not b!640978) (not b!641514) (not b!641773) (not bs!79128) (not setNonEmpty!2966) (not b!641232) (not bs!78498) (not b!640768) (not b_lambda!25341) (not d!223475) (not b!641136) (not b!641423) (not b!641415) (not bs!79474) (not b!641824) (not b!641414) (not b!641237) (not bs!79287) (not bs!78978) (not bs!78961) (not d!223319) (not setNonEmpty!2982) (not b!641609) (not bs!79296) (not bs!79422) (not b!641785) (not d!223465) (not bs!79463) (not bs!79498) (not b!641229) (not b!641705) (not bs!79206) (not b!640942) (not bs!79400) (not b!641517) (not d!223159) (not bs!79396) (not b!641042) (not d!223479) (not b!641782) (not b!641342) (not b!641813) (not b!641000) (not b!641340) (not b!641798) (not d!223361) (not b!641796) (not b!641807) (not bs!79133) (not b!641836) (not b!641382) (not b!641096) (not bs!78586) (not bs!79531) (not bs!79129) (not bm!41667) (not b!641272) (not b!641150) (not bs!78489) (not d!223195) (not bs!79326) (not bs!79115) (not bs!79524) (not b!641035) (not bs!78584) (not b!641160) (not b!641743) (not d!223301) (not b_lambda!25347) (not b!640922) (not bs!78375) (not b!641511) (not d!223185) (not b!641409) (not b!641296) (not bs!79302) (not bs!79472) (not setNonEmpty!2968) (not d!223229) (not bs!79305) (not b!640867) (not d!223227) (not b!641033) (not b!641799) (not bs!78626) (not bs!79322) (not b!641783) (not b!641754) (not bs!79118) (not bs!78565) (not b!641856) (not bs!78452) (not d!223171) (not bs!79258) (not bs!79346) (not b!641765) (not b!641878) (not b!641613) (not bs!78395) (not bs!78502) (not b!641135) (not bs!79141) (not b!641251) (not b!641252) (not d!223379) (not bs!79321) (not b!641151) (not bs!78596) (not bs!78443) (not b!641278) (not b!641175) (not bs!78936) (not bs!78414) (not bs!78684) (not bs!78665) (not b!641152) (not b!641837) (not b!641732) (not b!641001) (not b!641494) (not b!640849) (not b!641633) (not b!641827) (not b!641019) (not bs!79147) (not setNonEmpty!2978) (not bs!79397) (not bs!79485) (not b!641870) (not b!641383) (not b!641457) (not b!641146) (not bs!78590) (not b!641536) (not bs!78377) (not b!641803) (not bs!78953) (not bs!79096) (not bs!79382) (not bs!79192) (not b!641769) (not b!640814) (not b!641220) (not b!641501) (not d!223253) (not b!640992) (not bs!79517) (not bs!78512) (not b!640982) (not d!223397) (not b!641819) (not b!641240) (not b!641570) (not bs!78552) (not b!641144) (not b!640760) (not bs!79264) (not b!641275) (not bs!78940) (not b!641324) (not b!641058) (not b!641155) (not b!641026) (not bs!79171) (not b!641644) (not bs!78545) (not d!223401) (not b!641740) (not bs!79417) (not b!641683) (not b!641481) (not b!641805) (not setNonEmpty!2974) (not b!641009) (not b!641505) (not b!641871) (not bs!78959) (not d!223321) (not b!641616) (not b!641420) (not b!641733) (not bs!78958) (not bs!78572) (not b!640943) (not bs!79312) (not bs!78526) (not bs!79551) (not bs!78963) (not b!641395) (not b!641707) (not bs!78972) (not b!641704) (not b!641823) (not bs!78412) (not b_lambda!25339) (not b!641147) (not bs!79236) (not bs!78682) (not d!223161) (not bs!79217) (not b_lambda!25365) (not b!641811) (not b!641038) (not b!640804) (not bs!78384) (not b!641088) (not bs!79149) (not bs!78669) (not b_lambda!25357) (not bs!78659) (not bs!79447) (not bs!79416) (not b!641478) (not bs!78624) (not b!641822) (not bs!79184) (not b!641731) (not b!641830) (not b!641764) (not b!641750) (not bs!79408) (not b!641873) (not b!641801) (not bs!79227) (not b!641734) (not bs!78517) (not b!641479) (not bs!78583) (not bs!79425) (not b!641045) (not b!641614) (not bs!78385) (not bs!78683) (not b!641089) (not b!641073) (not bs!78423) (not bs!79207) (not bs!78969) (not bs!79299) (not b!641631) (not bs!79520) (not d!223509) (not b!641667) (not b!641751) (not d!223425) (not d!223209) (not bs!79284) (not b!640854) (not b!641100) (not bs!79479) (not bs!79275) (not b!641253) (not d!223451) (not bs!78474) (not b!641512) (not d!223267) (not b!641123) (not bs!79415) (not bs!79180) (not b!641025) (not b!641097) (not b!640941) (not b_lambda!25353) (not d!223259) (not bs!79211) (not b!641859) (not b!641022) (not bs!78971) (not b!641050) (not setNonEmpty!2983) (not b!641713) (not b!641806) (not bs!79150) (not bs!79235) (not b!641739) (not b!640928) (not d!223507) (not bs!79273) (not b!641847) (not b!641285) (not b!641788) (not b!641179) (not b_next!18859) (not b!641405) (not b!641070) (not bs!79525) (not b!641432) (not bs!79395) (not b!641482) (not b_lambda!25343) (not b!641184) (not b!641235) (not b!641246) (not b_lambda!25369) (not bs!78416) (not b!640930) (not b!641493) (not b!641752) (not b!641565) (not bs!79178) (not b!641018) (not b_next!18863) (not bs!78945) (not bs!78437) (not b!641028) (not bs!79172) (not bs!79289) (not bs!78450) (not bs!79290) (not b!641403) (not bs!78950) (not bs!78651) (not setNonEmpty!2988) (not d!223495) (not b!641439) (not d!223199) (not d!223235) (not bs!79552) (not bs!78636) (not b!641121) (not b!641723) (not b!641660) (not b!641664) (not bs!78660) (not bs!79303) (not bs!78555) (not b!640983) (not bs!78630) (not b!641492) (not d!223429) (not b!641353) (not b!641524) (not bs!78515) (not bs!78393) (not b!640816) (not b!641295) (not b_lambda!25361) (not b!640806) (not bs!79156) (not bs!79492) (not d!223483) (not bs!79465) (not b!641371) (not b!641374) (not b!641076) (not b!640919) (not d!223427) (not b!641710) (not bs!78644) (not bs!78642) (not b!641637) (not d!223243) (not b!641126) (not b!641103) (not b!641648) (not b!641880) (not b!641424) (not b!641676) (not bs!78570) (not bs!79219) (not b!641510) (not b!641031) (not bs!78560) (not d!223433) (not b!640920) (not bs!79313) (not b!641548) (not b!641828) (not bs!78520) (not b!641023) (not b!640981) (not bs!78634) (not bs!78547) (not bs!79203) (not d!223449) (not b!641756) (not b_lambda!25319) (not bs!79490) (not b_lambda!25351) (not b!641661) (not d!223501) (not bs!79228) (not bs!78580) (not d!223197) (not bs!79170) (not bs!79363) (not b!640970) (not d!223317) (not b!641412) (not setNonEmpty!2984) (not bs!79144) (not b_lambda!25335) (not b!641809) (not b!641208) (not bs!79444) (not b!641059) (not b!640782) (not b!641738) (not b!641791) (not b!640808) (not b!641679) (not b_lambda!25349) (not b!641216) (not b!641108) (not b!640765) (not d!223409) (not b!641037) (not bs!79234) (not b!641036) (not b!641402) (not b!641104) (not bs!79380) (not d!223181) (not bs!78482) (not bs!78425) (not b!641408) (not bs!79386) (not bs!78974) (not bs!79507) (not b!641692) (not b!641471) (not b!641726) (not bs!78523) (not b!641714) (not d!223413) (not bs!78927) (not b_next!18839) (not b!641427) (not b!641086) (not b!641020) (not b_next!18857) (not bs!78968) (not b!641156) (not bs!79511) (not bs!78670) (not b!641715) (not b!641618) (not b!640946) (not d!223375) (not d!223363) (not b!640986) (not d!223367) (not b!641851) (not bs!79162) (not b!640988) (not bs!79137) (not b_lambda!25325) (not bs!79504) (not bs!78625) (not b!641553) (not bs!78973) (not b!640829) (not d!223499) (not b!641074) (not b!641098) b_and!62591 (not b!641005) (not bs!78374) (not bs!78534) (not bs!79279) (not b!641404) (not bs!78621) (not b!641776) (not bs!79424) (not bs!79351) (not bs!79134) (not d!223419) (not bs!79165) (not bs!79202) (not b!641863) (not d!223189) (not bs!78628) (not b!641775) (not b!641007) (not bs!78608) (not bs!79365) (not b!641401) (not b!640762) (not b!641319) (not d!223481) (not b!641573) (not b!640998) (not b!641635) (not bs!79373) (not b!641855) (not bs!79187) (not b!641488) (not d!223275) (not b!640833) (not b!641317) (not b!641298) (not bs!78447) (not bs!79105) (not b!641043) (not d!223345) (not bs!78678) (not b_lambda!25363) (not b!641840) (not d!223263) (not b!641774) (not d!223387) (not bs!79155) (not bs!79344) (not b!641831) (not bs!78638) (not bs!78930) (not b!640989) (not bs!78543) (not b!641674) (not b!641516) (not bs!79102) (not bs!79376) (not b!641835) (not b_lambda!25321) (not b!641485) (not b!640689) (not b!641356) (not b!641040) b_and!62599 (not b!641460) (not bs!78439) (not bs!78658) (not bs!79519) (not d!223165) (not b_lambda!25359) (not b!641718) (not bs!79308) (not bs!78480) (not bs!79197) (not d!223249) (not bs!78980) (not setNonEmpty!2967) (not d!223377) (not bs!79446) (not b!641777) (not b!641052) (not bs!79379) (not d!223283) (not b!641071) (not bs!79135) (not bm!41668) (not d!223323) (not b!641696) (not b!641720) (not setNonEmpty!2970) (not b!641044) (not d!223513) (not b!641196) (not b!641046) (not d!223169) (not b!641568) (not d!223463) (not b!641107) (not b!641504) (not b!641497) (not b!640938) (not d!223405) (not b!640870) (not bs!79457) (not bs!79269) (not b!641686) (not bs!79489) (not b!641435) (not b!640895) (not b!641818) (not d!223269) (not d!223239) (not b!641400) (not bs!79387) (not bs!78615) (not bs!78383))
(check-sat b_and!62603 b_and!62605 (not b_next!18843) (not b_next!18855) b_and!62591 b_and!62599 b_and!62597 (not b_next!18837) b_and!62595 b_and!62609 b_and!62601 (not b_next!18853) b_and!62593 b_and!62607 (not b_next!18861) (not b_next!18841) (not b_next!18863) (not b_next!18859) (not b_next!18839) (not b_next!18857))

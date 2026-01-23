; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61962 () Bool)

(assert start!61962)

(declare-fun b!632483 () Bool)

(declare-fun b_free!18509 () Bool)

(declare-fun b_next!18525 () Bool)

(assert (=> b!632483 (= b_free!18509 (not b_next!18525))))

(declare-fun tp!196978 () Bool)

(declare-fun b_and!62303 () Bool)

(assert (=> b!632483 (= tp!196978 b_and!62303)))

(declare-fun b!632480 () Bool)

(declare-fun b_free!18511 () Bool)

(declare-fun b_next!18527 () Bool)

(assert (=> b!632480 (= b_free!18511 (not b_next!18527))))

(declare-fun tp!196988 () Bool)

(declare-fun b_and!62305 () Bool)

(assert (=> b!632480 (= tp!196988 b_and!62305)))

(declare-fun b!632486 () Bool)

(declare-fun b_free!18513 () Bool)

(declare-fun b_next!18529 () Bool)

(assert (=> b!632486 (= b_free!18513 (not b_next!18529))))

(declare-fun tp!196981 () Bool)

(declare-fun b_and!62307 () Bool)

(assert (=> b!632486 (= tp!196981 b_and!62307)))

(declare-fun b!632497 () Bool)

(declare-fun b_free!18515 () Bool)

(declare-fun b_next!18531 () Bool)

(assert (=> b!632497 (= b_free!18515 (not b_next!18531))))

(declare-fun tp!196980 () Bool)

(declare-fun b_and!62309 () Bool)

(assert (=> b!632497 (= tp!196980 b_and!62309)))

(declare-fun b!632479 () Bool)

(declare-fun e!384072 () Bool)

(declare-fun tp!196987 () Bool)

(declare-fun mapRes!2404 () Bool)

(assert (=> b!632479 (= e!384072 (and tp!196987 mapRes!2404))))

(declare-fun condMapEmpty!2405 () Bool)

(declare-datatypes ((Regex!1683 0))(
  ( (ElementMatch!1683 (c!116164 (_ BitVec 16))) (Concat!3066 (regOne!3878 Regex!1683) (regTwo!3878 Regex!1683)) (EmptyExpr!1683) (Star!1683 (reg!2012 Regex!1683)) (EmptyLang!1683) (Union!1683 (regOne!3879 Regex!1683) (regTwo!3879 Regex!1683)) )
))
(declare-datatypes ((List!6639 0))(
  ( (Nil!6625) (Cons!6625 (h!12026 Regex!1683) (t!83518 List!6639)) )
))
(declare-datatypes ((Context!338 0))(
  ( (Context!339 (exprs!669 List!6639)) )
))
(declare-datatypes ((tuple3!434 0))(
  ( (tuple3!435 (_1!3873 Regex!1683) (_2!3873 Context!338) (_3!268 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7210 0))(
  ( (tuple2!7211 (_1!3874 tuple3!434) (_2!3874 (InoxSet Context!338))) )
))
(declare-datatypes ((List!6640 0))(
  ( (Nil!6626) (Cons!6626 (h!12027 tuple2!7210) (t!83519 List!6640)) )
))
(declare-datatypes ((array!2341 0))(
  ( (array!2342 (arr!1064 (Array (_ BitVec 32) List!6640)) (size!5215 (_ BitVec 32))) )
))
(declare-datatypes ((array!2343 0))(
  ( (array!2344 (arr!1065 (Array (_ BitVec 32) (_ BitVec 64))) (size!5216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1218 0))(
  ( (LongMapFixedSize!1219 (defaultEntry!965 Int) (mask!2330 (_ BitVec 32)) (extraKeys!856 (_ BitVec 32)) (zeroValue!866 List!6640) (minValue!866 List!6640) (_size!1327 (_ BitVec 32)) (_keys!903 array!2343) (_values!888 array!2341) (_vacant!670 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2377 0))(
  ( (Cell!2378 (v!16707 LongMapFixedSize!1218)) )
))
(declare-datatypes ((MutLongMap!609 0))(
  ( (LongMap!609 (underlying!1401 Cell!2377)) (MutLongMapExt!608 (__x!4670 Int)) )
))
(declare-datatypes ((Cell!2379 0))(
  ( (Cell!2380 (v!16708 MutLongMap!609)) )
))
(declare-datatypes ((Hashable!581 0))(
  ( (HashableExt!580 (__x!4671 Int)) )
))
(declare-datatypes ((MutableMap!581 0))(
  ( (MutableMapExt!580 (__x!4672 Int)) (HashMap!581 (underlying!1402 Cell!2379) (hashF!2489 Hashable!581) (_size!1328 (_ BitVec 32)) (defaultValue!732 Int)) )
))
(declare-datatypes ((CacheDown!240 0))(
  ( (CacheDown!241 (cache!968 MutableMap!581)) )
))
(declare-fun cacheDown!364 () CacheDown!240)

(declare-fun mapDefault!2405 () List!6640)

(assert (=> b!632479 (= condMapEmpty!2405 (= (arr!1064 (_values!888 (v!16707 (underlying!1401 (v!16708 (underlying!1402 (cache!968 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6640)) mapDefault!2405)))))

(declare-fun e!384065 () Bool)

(declare-fun e!384074 () Bool)

(assert (=> b!632480 (= e!384065 (and e!384074 tp!196988))))

(declare-fun b!632481 () Bool)

(declare-fun e!384077 () Bool)

(declare-fun e!384081 () Bool)

(assert (=> b!632481 (= e!384077 e!384081)))

(declare-fun b!632482 () Bool)

(declare-fun res!274297 () Bool)

(declare-fun e!384076 () Bool)

(assert (=> b!632482 (=> (not res!274297) (not e!384076))))

(declare-datatypes ((List!6641 0))(
  ( (Nil!6627) (Cons!6627 (h!12028 (_ BitVec 16)) (t!83520 List!6641)) )
))
(declare-datatypes ((TokenValue!1383 0))(
  ( (FloatLiteralValue!2766 (text!10126 List!6641)) (TokenValueExt!1382 (__x!4673 Int)) (Broken!6915 (value!43571 List!6641)) (Object!1396) (End!1383) (Def!1383) (Underscore!1383) (Match!1383) (Else!1383) (Error!1383) (Case!1383) (If!1383) (Extends!1383) (Abstract!1383) (Class!1383) (Val!1383) (DelimiterValue!2766 (del!1443 List!6641)) (KeywordValue!1389 (value!43572 List!6641)) (CommentValue!2766 (value!43573 List!6641)) (WhitespaceValue!2766 (value!43574 List!6641)) (IndentationValue!1383 (value!43575 List!6641)) (String!8650) (Int32!1383) (Broken!6916 (value!43576 List!6641)) (Boolean!1384) (Unit!11693) (OperatorValue!1386 (op!1443 List!6641)) (IdentifierValue!2766 (value!43577 List!6641)) (IdentifierValue!2767 (value!43578 List!6641)) (WhitespaceValue!2767 (value!43579 List!6641)) (True!2766) (False!2766) (Broken!6917 (value!43580 List!6641)) (Broken!6918 (value!43581 List!6641)) (True!2767) (RightBrace!1383) (RightBracket!1383) (Colon!1383) (Null!1383) (Comma!1383) (LeftBracket!1383) (False!2767) (LeftBrace!1383) (ImaginaryLiteralValue!1383 (text!10127 List!6641)) (StringLiteralValue!4149 (value!43582 List!6641)) (EOFValue!1383 (value!43583 List!6641)) (IdentValue!1383 (value!43584 List!6641)) (DelimiterValue!2767 (value!43585 List!6641)) (DedentValue!1383 (value!43586 List!6641)) (NewLineValue!1383 (value!43587 List!6641)) (IntegerValue!4149 (value!43588 (_ BitVec 32)) (text!10128 List!6641)) (IntegerValue!4150 (value!43589 Int) (text!10129 List!6641)) (Times!1383) (Or!1383) (Equal!1383) (Minus!1383) (Broken!6919 (value!43590 List!6641)) (And!1383) (Div!1383) (LessEqual!1383) (Mod!1383) (Concat!3067) (Not!1383) (Plus!1383) (SpaceValue!1383 (value!43591 List!6641)) (IntegerValue!4151 (value!43592 Int) (text!10130 List!6641)) (StringLiteralValue!4150 (text!10131 List!6641)) (FloatLiteralValue!2767 (text!10132 List!6641)) (BytesLiteralValue!1383 (value!43593 List!6641)) (CommentValue!2767 (value!43594 List!6641)) (StringLiteralValue!4151 (value!43595 List!6641)) (ErrorTokenValue!1383 (msg!1444 List!6641)) )
))
(declare-datatypes ((String!8651 0))(
  ( (String!8652 (value!43596 String)) )
))
(declare-datatypes ((IArray!4401 0))(
  ( (IArray!4402 (innerList!2258 List!6641)) )
))
(declare-datatypes ((Conc!2200 0))(
  ( (Node!2200 (left!5319 Conc!2200) (right!5649 Conc!2200) (csize!4630 Int) (cheight!2411 Int)) (Leaf!3390 (xs!4841 IArray!4401) (csize!4631 Int)) (Empty!2200) )
))
(declare-datatypes ((BalanceConc!4412 0))(
  ( (BalanceConc!4413 (c!116165 Conc!2200)) )
))
(declare-datatypes ((TokenValueInjection!2518 0))(
  ( (TokenValueInjection!2519 (toValue!2290 Int) (toChars!2149 Int)) )
))
(declare-datatypes ((Rule!2498 0))(
  ( (Rule!2499 (regex!1349 Regex!1683) (tag!1611 String!8651) (isSeparator!1349 Bool) (transformation!1349 TokenValueInjection!2518)) )
))
(declare-datatypes ((Token!2422 0))(
  ( (Token!2423 (value!43597 TokenValue!1383) (rule!2145 Rule!2498) (size!5217 Int) (originalCharacters!1382 List!6641)) )
))
(declare-datatypes ((List!6642 0))(
  ( (Nil!6628) (Cons!6628 (h!12029 Token!2422) (t!83521 List!6642)) )
))
(declare-datatypes ((IArray!4403 0))(
  ( (IArray!4404 (innerList!2259 List!6642)) )
))
(declare-datatypes ((Conc!2201 0))(
  ( (Node!2201 (left!5320 Conc!2201) (right!5650 Conc!2201) (csize!4632 Int) (cheight!2412 Int)) (Leaf!3391 (xs!4842 IArray!4403) (csize!4633 Int)) (Empty!2201) )
))
(declare-datatypes ((List!6643 0))(
  ( (Nil!6629) (Cons!6629 (h!12030 Rule!2498) (t!83522 List!6643)) )
))
(declare-datatypes ((BalanceConc!4414 0))(
  ( (BalanceConc!4415 (c!116166 Conc!2201)) )
))
(declare-datatypes ((PrintableTokens!80 0))(
  ( (PrintableTokens!81 (rules!8159 List!6643) (tokens!1172 BalanceConc!4414)) )
))
(declare-fun printableTokens!2 () PrintableTokens!80)

(declare-fun usesJsonRules!0 (PrintableTokens!80) Bool)

(assert (=> b!632482 (= res!274297 (usesJsonRules!0 printableTokens!2))))

(declare-fun tp!196984 () Bool)

(declare-fun tp!196991 () Bool)

(declare-fun array_inv!776 (array!2343) Bool)

(declare-fun array_inv!777 (array!2341) Bool)

(assert (=> b!632483 (= e!384081 (and tp!196978 tp!196991 tp!196984 (array_inv!776 (_keys!903 (v!16707 (underlying!1401 (v!16708 (underlying!1402 (cache!968 cacheDown!364))))))) (array_inv!777 (_values!888 (v!16707 (underlying!1401 (v!16708 (underlying!1402 (cache!968 cacheDown!364))))))) e!384072))))

(declare-fun b!632484 () Bool)

(assert (=> b!632484 (= e!384076 (not true))))

(declare-datatypes ((tuple2!7212 0))(
  ( (tuple2!7213 (_1!3875 Context!338) (_2!3875 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7214 0))(
  ( (tuple2!7215 (_1!3876 tuple2!7212) (_2!3876 (InoxSet Context!338))) )
))
(declare-datatypes ((List!6644 0))(
  ( (Nil!6630) (Cons!6630 (h!12031 tuple2!7214) (t!83523 List!6644)) )
))
(declare-datatypes ((Hashable!582 0))(
  ( (HashableExt!581 (__x!4674 Int)) )
))
(declare-datatypes ((array!2345 0))(
  ( (array!2346 (arr!1066 (Array (_ BitVec 32) List!6644)) (size!5218 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1220 0))(
  ( (LongMapFixedSize!1221 (defaultEntry!966 Int) (mask!2331 (_ BitVec 32)) (extraKeys!857 (_ BitVec 32)) (zeroValue!867 List!6644) (minValue!867 List!6644) (_size!1329 (_ BitVec 32)) (_keys!904 array!2343) (_values!889 array!2345) (_vacant!671 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2381 0))(
  ( (Cell!2382 (v!16709 LongMapFixedSize!1220)) )
))
(declare-datatypes ((MutLongMap!610 0))(
  ( (LongMap!610 (underlying!1403 Cell!2381)) (MutLongMapExt!609 (__x!4675 Int)) )
))
(declare-datatypes ((Cell!2383 0))(
  ( (Cell!2384 (v!16710 MutLongMap!610)) )
))
(declare-datatypes ((MutableMap!582 0))(
  ( (MutableMapExt!581 (__x!4676 Int)) (HashMap!582 (underlying!1404 Cell!2383) (hashF!2490 Hashable!582) (_size!1330 (_ BitVec 32)) (defaultValue!733 Int)) )
))
(declare-datatypes ((CacheUp!244 0))(
  ( (CacheUp!245 (cache!969 MutableMap!582)) )
))
(declare-datatypes ((Option!1635 0))(
  ( (None!1634) (Some!1634 (v!16711 PrintableTokens!80)) )
))
(declare-datatypes ((tuple3!436 0))(
  ( (tuple3!437 (_1!3877 Option!1635) (_2!3877 CacheUp!244) (_3!269 CacheDown!240)) )
))
(declare-fun lt!269881 () tuple3!436)

(declare-fun lt!269883 () tuple3!436)

(declare-fun createLeftBracketSeparator!0 (CacheUp!244 CacheDown!240) tuple3!436)

(assert (=> b!632484 (= lt!269881 (createLeftBracketSeparator!0 (_2!3877 lt!269883) (_3!269 lt!269883)))))

(declare-fun cacheUp!351 () CacheUp!244)

(declare-fun createCommaNewLineSeparator!0 (CacheUp!244 CacheDown!240) tuple3!436)

(assert (=> b!632484 (= lt!269883 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-datatypes ((tuple2!7216 0))(
  ( (tuple2!7217 (_1!3878 Int) (_2!3878 PrintableTokens!80)) )
))
(declare-datatypes ((List!6645 0))(
  ( (Nil!6631) (Cons!6631 (h!12032 tuple2!7216) (t!83524 List!6645)) )
))
(declare-datatypes ((IArray!4405 0))(
  ( (IArray!4406 (innerList!2260 List!6645)) )
))
(declare-datatypes ((Conc!2202 0))(
  ( (Node!2202 (left!5321 Conc!2202) (right!5651 Conc!2202) (csize!4634 Int) (cheight!2413 Int)) (Leaf!3392 (xs!4843 IArray!4405) (csize!4635 Int)) (Empty!2202) )
))
(declare-datatypes ((BalanceConc!4416 0))(
  ( (BalanceConc!4417 (c!116167 Conc!2202)) )
))
(declare-fun lt!269879 () BalanceConc!4416)

(declare-fun lambda!17401 () Int)

(declare-fun lambda!17402 () Int)

(declare-datatypes ((List!6646 0))(
  ( (Nil!6632) (Cons!6632 (h!12033 PrintableTokens!80) (t!83525 List!6646)) )
))
(declare-datatypes ((IArray!4407 0))(
  ( (IArray!4408 (innerList!2261 List!6646)) )
))
(declare-datatypes ((Conc!2203 0))(
  ( (Node!2203 (left!5322 Conc!2203) (right!5652 Conc!2203) (csize!4636 Int) (cheight!2414 Int)) (Leaf!3393 (xs!4844 IArray!4407) (csize!4637 Int)) (Empty!2203) )
))
(declare-datatypes ((BalanceConc!4418 0))(
  ( (BalanceConc!4419 (c!116168 Conc!2203)) )
))
(declare-fun forall!1677 (BalanceConc!4418 Int) Bool)

(declare-fun map!1409 (BalanceConc!4416 Int) BalanceConc!4418)

(assert (=> b!632484 (forall!1677 (map!1409 lt!269879 lambda!17401) lambda!17402)))

(declare-fun lt!269884 () List!6645)

(declare-datatypes ((Unit!11694 0))(
  ( (Unit!11695) )
))
(declare-fun lt!269882 () Unit!11694)

(declare-fun mapPred!13 (List!6645 Int Int) Unit!11694)

(assert (=> b!632484 (= lt!269882 (mapPred!13 lt!269884 lambda!17401 lambda!17402))))

(declare-fun lt!269875 () Unit!11694)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6645) Unit!11694)

(assert (=> b!632484 (= lt!269875 (lemmaRemoveIdsPreservesRules!0 lt!269884))))

(declare-fun list!2825 (BalanceConc!4416) List!6645)

(assert (=> b!632484 (= lt!269884 (list!2825 lt!269879))))

(declare-fun lt!269871 () BalanceConc!4418)

(declare-fun lambda!17399 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4416) BalanceConc!4416)

(declare-fun map!1410 (BalanceConc!4418 Int) BalanceConc!4416)

(assert (=> b!632484 (= lt!269879 (sortObjectsByID!0 (map!1410 lt!269871 lambda!17399)))))

(declare-fun lambda!17400 () Int)

(declare-fun lt!269873 () Unit!11694)

(declare-fun lt!269876 () List!6646)

(declare-fun mapPred!14 (List!6646 Int Int) Unit!11694)

(assert (=> b!632484 (= lt!269873 (mapPred!14 lt!269876 lambda!17399 lambda!17400))))

(declare-fun lt!269872 () Unit!11694)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6646) Unit!11694)

(assert (=> b!632484 (= lt!269872 (lemmaAddIdsPreservesRules!0 lt!269876))))

(declare-fun list!2826 (BalanceConc!4418) List!6646)

(assert (=> b!632484 (= lt!269876 (list!2826 lt!269871))))

(declare-fun lt!269878 () Int)

(declare-datatypes ((List!6647 0))(
  ( (Nil!6633) (Cons!6633 (h!12034 Int) (t!83526 List!6647)) )
))
(declare-datatypes ((IArray!4409 0))(
  ( (IArray!4410 (innerList!2262 List!6647)) )
))
(declare-datatypes ((Conc!2204 0))(
  ( (Node!2204 (left!5323 Conc!2204) (right!5653 Conc!2204) (csize!4638 Int) (cheight!2415 Int)) (Leaf!3394 (xs!4845 IArray!4409) (csize!4639 Int)) (Empty!2204) )
))
(declare-datatypes ((BalanceConc!4420 0))(
  ( (BalanceConc!4421 (c!116169 Conc!2204)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!80 Int BalanceConc!4420 BalanceConc!4418) BalanceConc!4418)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4414 Int Int BalanceConc!4420) BalanceConc!4420)

(assert (=> b!632484 (= lt!269871 (slicesMulti!0 printableTokens!2 lt!269878 (indicesOfOpenBraces!0 (tokens!1172 printableTokens!2) lt!269878 0 (BalanceConc!4421 Empty!2204)) (BalanceConc!4419 Empty!2203)))))

(declare-fun mapNonEmpty!2404 () Bool)

(declare-fun mapRes!2405 () Bool)

(declare-fun tp!196985 () Bool)

(declare-fun tp!196990 () Bool)

(assert (=> mapNonEmpty!2404 (= mapRes!2405 (and tp!196985 tp!196990))))

(declare-fun mapValue!2404 () List!6644)

(declare-fun mapKey!2405 () (_ BitVec 32))

(declare-fun mapRest!2405 () (Array (_ BitVec 32) List!6644))

(assert (=> mapNonEmpty!2404 (= (arr!1066 (_values!889 (v!16709 (underlying!1403 (v!16710 (underlying!1404 (cache!969 cacheUp!351))))))) (store mapRest!2405 mapKey!2405 mapValue!2404))))

(declare-fun mapNonEmpty!2405 () Bool)

(declare-fun tp!196992 () Bool)

(declare-fun tp!196983 () Bool)

(assert (=> mapNonEmpty!2405 (= mapRes!2404 (and tp!196992 tp!196983))))

(declare-fun mapKey!2404 () (_ BitVec 32))

(declare-fun mapRest!2404 () (Array (_ BitVec 32) List!6640))

(declare-fun mapValue!2405 () List!6640)

(assert (=> mapNonEmpty!2405 (= (arr!1064 (_values!888 (v!16707 (underlying!1401 (v!16708 (underlying!1402 (cache!968 cacheDown!364))))))) (store mapRest!2404 mapKey!2404 mapValue!2405))))

(declare-fun res!274299 () Bool)

(declare-fun e!384066 () Bool)

(assert (=> start!61962 (=> (not res!274299) (not e!384066))))

(assert (=> start!61962 (= res!274299 (> lt!269878 0))))

(declare-fun size!5219 (PrintableTokens!80) Int)

(assert (=> start!61962 (= lt!269878 (size!5219 printableTokens!2))))

(assert (=> start!61962 e!384066))

(declare-fun e!384069 () Bool)

(declare-fun inv!8521 (PrintableTokens!80) Bool)

(assert (=> start!61962 (and (inv!8521 printableTokens!2) e!384069)))

(declare-fun e!384078 () Bool)

(declare-fun inv!8522 (CacheDown!240) Bool)

(assert (=> start!61962 (and (inv!8522 cacheDown!364) e!384078)))

(declare-fun e!384083 () Bool)

(declare-fun inv!8523 (CacheUp!244) Bool)

(assert (=> start!61962 (and (inv!8523 cacheUp!351) e!384083)))

(declare-fun b!632485 () Bool)

(declare-fun e!384071 () Bool)

(assert (=> b!632485 (= e!384071 e!384077)))

(declare-fun e!384080 () Bool)

(declare-fun e!384068 () Bool)

(assert (=> b!632486 (= e!384080 (and e!384068 tp!196981))))

(declare-fun b!632487 () Bool)

(declare-fun res!274298 () Bool)

(assert (=> b!632487 (=> (not res!274298) (not e!384076))))

(declare-fun lt!269874 () List!6643)

(declare-datatypes ((LexerInterface!1233 0))(
  ( (LexerInterfaceExt!1230 (__x!4677 Int)) (Lexer!1231) )
))
(declare-fun rulesInvariant!1168 (LexerInterface!1233 List!6643) Bool)

(assert (=> b!632487 (= res!274298 (rulesInvariant!1168 Lexer!1231 lt!269874))))

(declare-fun b!632488 () Bool)

(declare-fun e!384073 () Bool)

(declare-fun tp!196986 () Bool)

(assert (=> b!632488 (= e!384073 (and tp!196986 mapRes!2405))))

(declare-fun condMapEmpty!2404 () Bool)

(declare-fun mapDefault!2404 () List!6644)

(assert (=> b!632488 (= condMapEmpty!2404 (= (arr!1066 (_values!889 (v!16709 (underlying!1403 (v!16710 (underlying!1404 (cache!969 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6644)) mapDefault!2404)))))

(declare-fun b!632489 () Bool)

(declare-fun e!384067 () Bool)

(declare-fun tp!196979 () Bool)

(declare-fun inv!8524 (Conc!2201) Bool)

(assert (=> b!632489 (= e!384067 (and (inv!8524 (c!116166 (tokens!1172 printableTokens!2))) tp!196979))))

(declare-fun b!632490 () Bool)

(assert (=> b!632490 (= e!384066 e!384076)))

(declare-fun res!274296 () Bool)

(assert (=> b!632490 (=> (not res!274296) (not e!384076))))

(declare-fun isEmpty!4636 (List!6643) Bool)

(assert (=> b!632490 (= res!274296 (not (isEmpty!4636 lt!269874)))))

(declare-datatypes ((JsonLexer!152 0))(
  ( (JsonLexer!153) )
))
(declare-fun rules!109 (JsonLexer!152) List!6643)

(assert (=> b!632490 (= lt!269874 (rules!109 JsonLexer!153))))

(declare-fun b!632491 () Bool)

(declare-fun e!384084 () Bool)

(declare-fun lt!269880 () MutLongMap!610)

(get-info :version)

(assert (=> b!632491 (= e!384074 (and e!384084 ((_ is LongMap!610) lt!269880)))))

(assert (=> b!632491 (= lt!269880 (v!16710 (underlying!1404 (cache!969 cacheUp!351))))))

(declare-fun tp!196982 () Bool)

(declare-fun b!632492 () Bool)

(declare-fun inv!8525 (BalanceConc!4414) Bool)

(assert (=> b!632492 (= e!384069 (and tp!196982 (inv!8525 (tokens!1172 printableTokens!2)) e!384067))))

(declare-fun mapIsEmpty!2404 () Bool)

(assert (=> mapIsEmpty!2404 mapRes!2405))

(declare-fun b!632493 () Bool)

(assert (=> b!632493 (= e!384078 e!384080)))

(declare-fun b!632494 () Bool)

(declare-fun e!384079 () Bool)

(declare-fun e!384070 () Bool)

(assert (=> b!632494 (= e!384079 e!384070)))

(declare-fun b!632495 () Bool)

(declare-fun lt!269877 () MutLongMap!609)

(assert (=> b!632495 (= e!384068 (and e!384071 ((_ is LongMap!609) lt!269877)))))

(assert (=> b!632495 (= lt!269877 (v!16708 (underlying!1402 (cache!968 cacheDown!364))))))

(declare-fun b!632496 () Bool)

(assert (=> b!632496 (= e!384084 e!384079)))

(declare-fun mapIsEmpty!2405 () Bool)

(assert (=> mapIsEmpty!2405 mapRes!2404))

(declare-fun tp!196989 () Bool)

(declare-fun tp!196993 () Bool)

(declare-fun array_inv!778 (array!2345) Bool)

(assert (=> b!632497 (= e!384070 (and tp!196980 tp!196989 tp!196993 (array_inv!776 (_keys!904 (v!16709 (underlying!1403 (v!16710 (underlying!1404 (cache!969 cacheUp!351))))))) (array_inv!778 (_values!889 (v!16709 (underlying!1403 (v!16710 (underlying!1404 (cache!969 cacheUp!351))))))) e!384073))))

(declare-fun b!632498 () Bool)

(assert (=> b!632498 (= e!384083 e!384065)))

(assert (= (and start!61962 res!274299) b!632490))

(assert (= (and b!632490 res!274296) b!632487))

(assert (= (and b!632487 res!274298) b!632482))

(assert (= (and b!632482 res!274297) b!632484))

(assert (= b!632492 b!632489))

(assert (= start!61962 b!632492))

(assert (= (and b!632479 condMapEmpty!2405) mapIsEmpty!2405))

(assert (= (and b!632479 (not condMapEmpty!2405)) mapNonEmpty!2405))

(assert (= b!632483 b!632479))

(assert (= b!632481 b!632483))

(assert (= b!632485 b!632481))

(assert (= (and b!632495 ((_ is LongMap!609) (v!16708 (underlying!1402 (cache!968 cacheDown!364))))) b!632485))

(assert (= b!632486 b!632495))

(assert (= (and b!632493 ((_ is HashMap!581) (cache!968 cacheDown!364))) b!632486))

(assert (= start!61962 b!632493))

(assert (= (and b!632488 condMapEmpty!2404) mapIsEmpty!2404))

(assert (= (and b!632488 (not condMapEmpty!2404)) mapNonEmpty!2404))

(assert (= b!632497 b!632488))

(assert (= b!632494 b!632497))

(assert (= b!632496 b!632494))

(assert (= (and b!632491 ((_ is LongMap!610) (v!16710 (underlying!1404 (cache!969 cacheUp!351))))) b!632496))

(assert (= b!632480 b!632491))

(assert (= (and b!632498 ((_ is HashMap!582) (cache!969 cacheUp!351))) b!632480))

(assert (= start!61962 b!632498))

(declare-fun m!903163 () Bool)

(assert (=> b!632482 m!903163))

(declare-fun m!903165 () Bool)

(assert (=> b!632487 m!903165))

(declare-fun m!903167 () Bool)

(assert (=> b!632483 m!903167))

(declare-fun m!903169 () Bool)

(assert (=> b!632483 m!903169))

(declare-fun m!903171 () Bool)

(assert (=> start!61962 m!903171))

(declare-fun m!903173 () Bool)

(assert (=> start!61962 m!903173))

(declare-fun m!903175 () Bool)

(assert (=> start!61962 m!903175))

(declare-fun m!903177 () Bool)

(assert (=> start!61962 m!903177))

(declare-fun m!903179 () Bool)

(assert (=> b!632492 m!903179))

(declare-fun m!903181 () Bool)

(assert (=> b!632484 m!903181))

(declare-fun m!903183 () Bool)

(assert (=> b!632484 m!903183))

(declare-fun m!903185 () Bool)

(assert (=> b!632484 m!903185))

(declare-fun m!903187 () Bool)

(assert (=> b!632484 m!903187))

(declare-fun m!903189 () Bool)

(assert (=> b!632484 m!903189))

(declare-fun m!903191 () Bool)

(assert (=> b!632484 m!903191))

(declare-fun m!903193 () Bool)

(assert (=> b!632484 m!903193))

(declare-fun m!903195 () Bool)

(assert (=> b!632484 m!903195))

(declare-fun m!903197 () Bool)

(assert (=> b!632484 m!903197))

(assert (=> b!632484 m!903181))

(declare-fun m!903199 () Bool)

(assert (=> b!632484 m!903199))

(declare-fun m!903201 () Bool)

(assert (=> b!632484 m!903201))

(assert (=> b!632484 m!903197))

(declare-fun m!903203 () Bool)

(assert (=> b!632484 m!903203))

(declare-fun m!903205 () Bool)

(assert (=> b!632484 m!903205))

(assert (=> b!632484 m!903191))

(declare-fun m!903207 () Bool)

(assert (=> b!632484 m!903207))

(declare-fun m!903209 () Bool)

(assert (=> mapNonEmpty!2404 m!903209))

(declare-fun m!903211 () Bool)

(assert (=> b!632497 m!903211))

(declare-fun m!903213 () Bool)

(assert (=> b!632497 m!903213))

(declare-fun m!903215 () Bool)

(assert (=> b!632490 m!903215))

(declare-fun m!903217 () Bool)

(assert (=> b!632490 m!903217))

(declare-fun m!903219 () Bool)

(assert (=> mapNonEmpty!2405 m!903219))

(declare-fun m!903221 () Bool)

(assert (=> b!632489 m!903221))

(check-sat (not b_next!18531) (not b!632490) (not b_next!18525) (not b!632488) (not start!61962) (not b!632479) (not b!632483) (not mapNonEmpty!2405) (not b!632482) (not b_next!18529) b_and!62305 b_and!62303 b_and!62307 (not b!632497) (not b!632484) (not b!632487) b_and!62309 (not b!632489) (not b!632492) (not mapNonEmpty!2404) (not b_next!18527))
(check-sat b_and!62309 (not b_next!18531) (not b_next!18525) (not b_next!18529) b_and!62305 b_and!62303 b_and!62307 (not b_next!18527))

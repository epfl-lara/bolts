; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62272 () Bool)

(assert start!62272)

(declare-fun b!635755 () Bool)

(declare-fun b_free!18621 () Bool)

(declare-fun b_next!18645 () Bool)

(assert (=> b!635755 (= b_free!18621 (not b_next!18645))))

(declare-fun tp!197789 () Bool)

(declare-fun b_and!62415 () Bool)

(assert (=> b!635755 (= tp!197789 b_and!62415)))

(declare-fun b!635745 () Bool)

(declare-fun b_free!18623 () Bool)

(declare-fun b_next!18647 () Bool)

(assert (=> b!635745 (= b_free!18623 (not b_next!18647))))

(declare-fun tp!197790 () Bool)

(declare-fun b_and!62417 () Bool)

(assert (=> b!635745 (= tp!197790 b_and!62417)))

(declare-fun b!635753 () Bool)

(declare-fun b_free!18625 () Bool)

(declare-fun b_next!18649 () Bool)

(assert (=> b!635753 (= b_free!18625 (not b_next!18649))))

(declare-fun tp!197785 () Bool)

(declare-fun b_and!62419 () Bool)

(assert (=> b!635753 (= tp!197785 b_and!62419)))

(declare-fun b!635740 () Bool)

(declare-fun b_free!18627 () Bool)

(declare-fun b_next!18651 () Bool)

(assert (=> b!635740 (= b_free!18627 (not b_next!18651))))

(declare-fun tp!197795 () Bool)

(declare-fun b_and!62421 () Bool)

(assert (=> b!635740 (= tp!197795 b_and!62421)))

(declare-fun b!635731 () Bool)

(declare-fun res!276220 () Bool)

(declare-fun e!386968 () Bool)

(assert (=> b!635731 (=> (not res!276220) (not e!386968))))

(declare-datatypes ((List!6731 0))(
  ( (Nil!6717) (Cons!6717 (h!12118 (_ BitVec 16)) (t!84037 List!6731)) )
))
(declare-datatypes ((TokenValue!1394 0))(
  ( (FloatLiteralValue!2788 (text!10203 List!6731)) (TokenValueExt!1393 (__x!4752 Int)) (Broken!6970 (value!43886 List!6731)) (Object!1407) (End!1394) (Def!1394) (Underscore!1394) (Match!1394) (Else!1394) (Error!1394) (Case!1394) (If!1394) (Extends!1394) (Abstract!1394) (Class!1394) (Val!1394) (DelimiterValue!2788 (del!1454 List!6731)) (KeywordValue!1400 (value!43887 List!6731)) (CommentValue!2788 (value!43888 List!6731)) (WhitespaceValue!2788 (value!43889 List!6731)) (IndentationValue!1394 (value!43890 List!6731)) (String!8707) (Int32!1394) (Broken!6971 (value!43891 List!6731)) (Boolean!1395) (Unit!11791) (OperatorValue!1397 (op!1454 List!6731)) (IdentifierValue!2788 (value!43892 List!6731)) (IdentifierValue!2789 (value!43893 List!6731)) (WhitespaceValue!2789 (value!43894 List!6731)) (True!2788) (False!2788) (Broken!6972 (value!43895 List!6731)) (Broken!6973 (value!43896 List!6731)) (True!2789) (RightBrace!1394) (RightBracket!1394) (Colon!1394) (Null!1394) (Comma!1394) (LeftBracket!1394) (False!2789) (LeftBrace!1394) (ImaginaryLiteralValue!1394 (text!10204 List!6731)) (StringLiteralValue!4182 (value!43897 List!6731)) (EOFValue!1394 (value!43898 List!6731)) (IdentValue!1394 (value!43899 List!6731)) (DelimiterValue!2789 (value!43900 List!6731)) (DedentValue!1394 (value!43901 List!6731)) (NewLineValue!1394 (value!43902 List!6731)) (IntegerValue!4182 (value!43903 (_ BitVec 32)) (text!10205 List!6731)) (IntegerValue!4183 (value!43904 Int) (text!10206 List!6731)) (Times!1394) (Or!1394) (Equal!1394) (Minus!1394) (Broken!6974 (value!43905 List!6731)) (And!1394) (Div!1394) (LessEqual!1394) (Mod!1394) (Concat!3089) (Not!1394) (Plus!1394) (SpaceValue!1394 (value!43906 List!6731)) (IntegerValue!4184 (value!43907 Int) (text!10207 List!6731)) (StringLiteralValue!4183 (text!10208 List!6731)) (FloatLiteralValue!2789 (text!10209 List!6731)) (BytesLiteralValue!1394 (value!43908 List!6731)) (CommentValue!2789 (value!43909 List!6731)) (StringLiteralValue!4184 (value!43910 List!6731)) (ErrorTokenValue!1394 (msg!1455 List!6731)) )
))
(declare-datatypes ((Regex!1695 0))(
  ( (ElementMatch!1695 (c!116480 (_ BitVec 16))) (Concat!3090 (regOne!3902 Regex!1695) (regTwo!3902 Regex!1695)) (EmptyExpr!1695) (Star!1695 (reg!2024 Regex!1695)) (EmptyLang!1695) (Union!1695 (regOne!3903 Regex!1695) (regTwo!3903 Regex!1695)) )
))
(declare-datatypes ((String!8708 0))(
  ( (String!8709 (value!43911 String)) )
))
(declare-datatypes ((IArray!4493 0))(
  ( (IArray!4494 (innerList!2304 List!6731)) )
))
(declare-datatypes ((Conc!2246 0))(
  ( (Node!2246 (left!5375 Conc!2246) (right!5705 Conc!2246) (csize!4722 Int) (cheight!2457 Int)) (Leaf!3442 (xs!4887 IArray!4493) (csize!4723 Int)) (Empty!2246) )
))
(declare-datatypes ((BalanceConc!4504 0))(
  ( (BalanceConc!4505 (c!116481 Conc!2246)) )
))
(declare-datatypes ((TokenValueInjection!2540 0))(
  ( (TokenValueInjection!2541 (toValue!2301 Int) (toChars!2160 Int)) )
))
(declare-datatypes ((Rule!2520 0))(
  ( (Rule!2521 (regex!1360 Regex!1695) (tag!1622 String!8708) (isSeparator!1360 Bool) (transformation!1360 TokenValueInjection!2540)) )
))
(declare-datatypes ((List!6732 0))(
  ( (Nil!6718) (Cons!6718 (h!12119 Rule!2520) (t!84038 List!6732)) )
))
(declare-fun lt!271633 () List!6732)

(declare-datatypes ((LexerInterface!1241 0))(
  ( (LexerInterfaceExt!1238 (__x!4753 Int)) (Lexer!1239) )
))
(declare-fun rulesInvariant!1176 (LexerInterface!1241 List!6732) Bool)

(assert (=> b!635731 (= res!276220 (rulesInvariant!1176 Lexer!1239 lt!271633))))

(declare-fun b!635732 () Bool)

(declare-fun e!386959 () Bool)

(assert (=> b!635732 (= e!386959 true)))

(declare-fun lt!271632 () Bool)

(declare-datatypes ((Token!2444 0))(
  ( (Token!2445 (value!43912 TokenValue!1394) (rule!2156 Rule!2520) (size!5286 Int) (originalCharacters!1393 List!6731)) )
))
(declare-datatypes ((List!6733 0))(
  ( (Nil!6719) (Cons!6719 (h!12120 Token!2444) (t!84039 List!6733)) )
))
(declare-datatypes ((IArray!4495 0))(
  ( (IArray!4496 (innerList!2305 List!6733)) )
))
(declare-datatypes ((Conc!2247 0))(
  ( (Node!2247 (left!5376 Conc!2247) (right!5706 Conc!2247) (csize!4724 Int) (cheight!2458 Int)) (Leaf!3443 (xs!4888 IArray!4495) (csize!4725 Int)) (Empty!2247) )
))
(declare-datatypes ((BalanceConc!4506 0))(
  ( (BalanceConc!4507 (c!116482 Conc!2247)) )
))
(declare-datatypes ((PrintableTokens!102 0))(
  ( (PrintableTokens!103 (rules!8180 List!6732) (tokens!1188 BalanceConc!4506)) )
))
(declare-datatypes ((Option!1644 0))(
  ( (None!1643) (Some!1643 (v!16819 PrintableTokens!102)) )
))
(declare-fun lt!271646 () Option!1644)

(declare-fun usesJsonRules!0 (PrintableTokens!102) Bool)

(assert (=> b!635732 (= lt!271632 (usesJsonRules!0 (v!16819 lt!271646)))))

(declare-fun mapNonEmpty!2490 () Bool)

(declare-fun mapRes!2490 () Bool)

(declare-fun tp!197784 () Bool)

(declare-fun tp!197786 () Bool)

(assert (=> mapNonEmpty!2490 (= mapRes!2490 (and tp!197784 tp!197786))))

(declare-fun mapKey!2490 () (_ BitVec 32))

(declare-datatypes ((List!6734 0))(
  ( (Nil!6720) (Cons!6720 (h!12121 Regex!1695) (t!84040 List!6734)) )
))
(declare-datatypes ((Context!362 0))(
  ( (Context!363 (exprs!681 List!6734)) )
))
(declare-datatypes ((tuple2!7286 0))(
  ( (tuple2!7287 (_1!3934 Context!362) (_2!3934 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7288 0))(
  ( (tuple2!7289 (_1!3935 tuple2!7286) (_2!3935 (InoxSet Context!362))) )
))
(declare-datatypes ((List!6735 0))(
  ( (Nil!6721) (Cons!6721 (h!12122 tuple2!7288) (t!84041 List!6735)) )
))
(declare-fun mapRest!2490 () (Array (_ BitVec 32) List!6735))

(declare-fun mapValue!2490 () List!6735)

(declare-datatypes ((Hashable!602 0))(
  ( (HashableExt!601 (__x!4754 Int)) )
))
(declare-datatypes ((array!2413 0))(
  ( (array!2414 (arr!1097 (Array (_ BitVec 32) List!6735)) (size!5287 (_ BitVec 32))) )
))
(declare-datatypes ((array!2415 0))(
  ( (array!2416 (arr!1098 (Array (_ BitVec 32) (_ BitVec 64))) (size!5288 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1260 0))(
  ( (LongMapFixedSize!1261 (defaultEntry!986 Int) (mask!2357 (_ BitVec 32)) (extraKeys!877 (_ BitVec 32)) (zeroValue!887 List!6735) (minValue!887 List!6735) (_size!1369 (_ BitVec 32)) (_keys!924 array!2415) (_values!909 array!2413) (_vacant!691 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2461 0))(
  ( (Cell!2462 (v!16820 LongMapFixedSize!1260)) )
))
(declare-datatypes ((MutLongMap!630 0))(
  ( (LongMap!630 (underlying!1443 Cell!2461)) (MutLongMapExt!629 (__x!4755 Int)) )
))
(declare-datatypes ((Cell!2463 0))(
  ( (Cell!2464 (v!16821 MutLongMap!630)) )
))
(declare-datatypes ((MutableMap!602 0))(
  ( (MutableMapExt!601 (__x!4756 Int)) (HashMap!602 (underlying!1444 Cell!2463) (hashF!2510 Hashable!602) (_size!1370 (_ BitVec 32)) (defaultValue!753 Int)) )
))
(declare-datatypes ((CacheUp!262 0))(
  ( (CacheUp!263 (cache!989 MutableMap!602)) )
))
(declare-fun cacheUp!351 () CacheUp!262)

(assert (=> mapNonEmpty!2490 (= (arr!1097 (_values!909 (v!16820 (underlying!1443 (v!16821 (underlying!1444 (cache!989 cacheUp!351))))))) (store mapRest!2490 mapKey!2490 mapValue!2490))))

(declare-fun b!635733 () Bool)

(declare-fun e!386958 () Bool)

(assert (=> b!635733 (= e!386958 e!386968)))

(declare-fun res!276224 () Bool)

(assert (=> b!635733 (=> (not res!276224) (not e!386968))))

(declare-fun isEmpty!4656 (List!6732) Bool)

(assert (=> b!635733 (= res!276224 (not (isEmpty!4656 lt!271633)))))

(declare-datatypes ((JsonLexer!166 0))(
  ( (JsonLexer!167) )
))
(declare-fun rules!109 (JsonLexer!166) List!6732)

(assert (=> b!635733 (= lt!271633 (rules!109 JsonLexer!167))))

(declare-fun b!635734 () Bool)

(declare-fun e!386949 () Bool)

(assert (=> b!635734 (= e!386949 e!386959)))

(declare-fun res!276222 () Bool)

(assert (=> b!635734 (=> res!276222 e!386959)))

(get-info :version)

(assert (=> b!635734 (= res!276222 (not ((_ is Some!1643) lt!271646)))))

(declare-datatypes ((tuple2!7290 0))(
  ( (tuple2!7291 (_1!3936 Int) (_2!3936 PrintableTokens!102)) )
))
(declare-datatypes ((List!6736 0))(
  ( (Nil!6722) (Cons!6722 (h!12123 tuple2!7290) (t!84042 List!6736)) )
))
(declare-datatypes ((IArray!4497 0))(
  ( (IArray!4498 (innerList!2306 List!6736)) )
))
(declare-datatypes ((Conc!2248 0))(
  ( (Node!2248 (left!5377 Conc!2248) (right!5707 Conc!2248) (csize!4726 Int) (cheight!2459 Int)) (Leaf!3444 (xs!4889 IArray!4497) (csize!4727 Int)) (Empty!2248) )
))
(declare-datatypes ((BalanceConc!4508 0))(
  ( (BalanceConc!4509 (c!116483 Conc!2248)) )
))
(declare-fun lt!271630 () BalanceConc!4508)

(declare-fun lambda!17943 () Int)

(declare-datatypes ((tuple3!480 0))(
  ( (tuple3!481 (_1!3937 Regex!1695) (_2!3937 Context!362) (_3!291 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7292 0))(
  ( (tuple2!7293 (_1!3938 tuple3!480) (_2!3938 (InoxSet Context!362))) )
))
(declare-datatypes ((List!6737 0))(
  ( (Nil!6723) (Cons!6723 (h!12124 tuple2!7292) (t!84043 List!6737)) )
))
(declare-datatypes ((array!2417 0))(
  ( (array!2418 (arr!1099 (Array (_ BitVec 32) List!6737)) (size!5289 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1262 0))(
  ( (LongMapFixedSize!1263 (defaultEntry!987 Int) (mask!2358 (_ BitVec 32)) (extraKeys!878 (_ BitVec 32)) (zeroValue!888 List!6737) (minValue!888 List!6737) (_size!1371 (_ BitVec 32)) (_keys!925 array!2415) (_values!910 array!2417) (_vacant!692 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2465 0))(
  ( (Cell!2466 (v!16822 LongMapFixedSize!1262)) )
))
(declare-datatypes ((MutLongMap!631 0))(
  ( (LongMap!631 (underlying!1445 Cell!2465)) (MutLongMapExt!630 (__x!4757 Int)) )
))
(declare-datatypes ((Cell!2467 0))(
  ( (Cell!2468 (v!16823 MutLongMap!631)) )
))
(declare-datatypes ((Hashable!603 0))(
  ( (HashableExt!602 (__x!4758 Int)) )
))
(declare-datatypes ((MutableMap!603 0))(
  ( (MutableMapExt!602 (__x!4759 Int)) (HashMap!603 (underlying!1446 Cell!2467) (hashF!2511 Hashable!603) (_size!1372 (_ BitVec 32)) (defaultValue!754 Int)) )
))
(declare-datatypes ((CacheDown!264 0))(
  ( (CacheDown!265 (cache!990 MutableMap!603)) )
))
(declare-datatypes ((tuple3!482 0))(
  ( (tuple3!483 (_1!3939 Option!1644) (_2!3939 CacheUp!262) (_3!292 CacheDown!264)) )
))
(declare-fun lt!271639 () tuple3!482)

(declare-datatypes ((List!6738 0))(
  ( (Nil!6724) (Cons!6724 (h!12125 PrintableTokens!102) (t!84044 List!6738)) )
))
(declare-datatypes ((IArray!4499 0))(
  ( (IArray!4500 (innerList!2307 List!6738)) )
))
(declare-datatypes ((Conc!2249 0))(
  ( (Node!2249 (left!5378 Conc!2249) (right!5708 Conc!2249) (csize!4728 Int) (cheight!2460 Int)) (Leaf!3445 (xs!4890 IArray!4499) (csize!4729 Int)) (Empty!2249) )
))
(declare-datatypes ((BalanceConc!4510 0))(
  ( (BalanceConc!4511 (c!116484 Conc!2249)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4510 PrintableTokens!102 PrintableTokens!102) Option!1644)

(declare-fun map!1443 (BalanceConc!4508 Int) BalanceConc!4510)

(declare-fun emptyPrintableTokens!5 (List!6732) PrintableTokens!102)

(assert (=> b!635734 (= lt!271646 (recombineSlicesWithSep!0 (map!1443 lt!271630 lambda!17943) (v!16819 (_1!3939 lt!271639)) (emptyPrintableTokens!5 lt!271633)))))

(declare-fun mapIsEmpty!2490 () Bool)

(assert (=> mapIsEmpty!2490 mapRes!2490))

(declare-fun b!635735 () Bool)

(declare-fun e!386969 () Bool)

(declare-fun e!386952 () Bool)

(assert (=> b!635735 (= e!386969 e!386952)))

(declare-fun res!276227 () Bool)

(assert (=> start!62272 (=> (not res!276227) (not e!386958))))

(declare-fun lt!271631 () Int)

(assert (=> start!62272 (= res!276227 (> lt!271631 0))))

(declare-fun printableTokens!2 () PrintableTokens!102)

(declare-fun size!5290 (PrintableTokens!102) Int)

(assert (=> start!62272 (= lt!271631 (size!5290 printableTokens!2))))

(assert (=> start!62272 e!386958))

(declare-fun e!386960 () Bool)

(declare-fun inv!8584 (PrintableTokens!102) Bool)

(assert (=> start!62272 (and (inv!8584 printableTokens!2) e!386960)))

(declare-fun cacheDown!364 () CacheDown!264)

(declare-fun e!386967 () Bool)

(declare-fun inv!8585 (CacheDown!264) Bool)

(assert (=> start!62272 (and (inv!8585 cacheDown!364) e!386967)))

(declare-fun e!386953 () Bool)

(declare-fun inv!8586 (CacheUp!262) Bool)

(assert (=> start!62272 (and (inv!8586 cacheUp!351) e!386953)))

(declare-fun b!635736 () Bool)

(declare-fun res!276226 () Bool)

(assert (=> b!635736 (=> res!276226 e!386949)))

(assert (=> b!635736 (= res!276226 (not (usesJsonRules!0 (v!16819 (_1!3939 lt!271639)))))))

(declare-fun b!635737 () Bool)

(declare-fun e!386956 () Bool)

(declare-fun e!386965 () Bool)

(assert (=> b!635737 (= e!386956 e!386965)))

(declare-fun b!635738 () Bool)

(declare-fun e!386948 () Bool)

(assert (=> b!635738 (= e!386965 e!386948)))

(declare-fun b!635739 () Bool)

(assert (=> b!635739 (= e!386968 (not e!386949))))

(declare-fun res!276225 () Bool)

(assert (=> b!635739 (=> res!276225 e!386949)))

(declare-fun lt!271636 () tuple3!482)

(declare-fun lt!271640 () tuple3!482)

(assert (=> b!635739 (= res!276225 (or (not ((_ is Some!1643) (_1!3939 lt!271639))) (not ((_ is Some!1643) (_1!3939 lt!271636))) (not ((_ is Some!1643) (_1!3939 lt!271640)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!262 CacheDown!264) tuple3!482)

(assert (=> b!635739 (= lt!271640 (createRightBracketSeparator!0 (_2!3939 lt!271636) (_3!292 lt!271636)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!262 CacheDown!264) tuple3!482)

(assert (=> b!635739 (= lt!271636 (createLeftBracketSeparator!0 (_2!3939 lt!271639) (_3!292 lt!271639)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!262 CacheDown!264) tuple3!482)

(assert (=> b!635739 (= lt!271639 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!17944 () Int)

(declare-fun forall!1705 (BalanceConc!4510 Int) Bool)

(assert (=> b!635739 (forall!1705 (map!1443 lt!271630 lambda!17943) lambda!17944)))

(declare-fun lt!271644 () List!6736)

(declare-datatypes ((Unit!11792 0))(
  ( (Unit!11793) )
))
(declare-fun lt!271645 () Unit!11792)

(declare-fun mapPred!29 (List!6736 Int Int) Unit!11792)

(assert (=> b!635739 (= lt!271645 (mapPred!29 lt!271644 lambda!17943 lambda!17944))))

(declare-fun lt!271643 () Unit!11792)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6736) Unit!11792)

(assert (=> b!635739 (= lt!271643 (lemmaRemoveIdsPreservesRules!0 lt!271644))))

(declare-fun list!2853 (BalanceConc!4508) List!6736)

(assert (=> b!635739 (= lt!271644 (list!2853 lt!271630))))

(declare-fun lt!271637 () BalanceConc!4510)

(declare-fun lambda!17941 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4508) BalanceConc!4508)

(declare-fun map!1444 (BalanceConc!4510 Int) BalanceConc!4508)

(assert (=> b!635739 (= lt!271630 (sortObjectsByID!0 (map!1444 lt!271637 lambda!17941)))))

(declare-fun lt!271642 () List!6738)

(declare-fun lt!271641 () Unit!11792)

(declare-fun lambda!17942 () Int)

(declare-fun mapPred!30 (List!6738 Int Int) Unit!11792)

(assert (=> b!635739 (= lt!271641 (mapPred!30 lt!271642 lambda!17941 lambda!17942))))

(declare-fun lt!271638 () Unit!11792)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6738) Unit!11792)

(assert (=> b!635739 (= lt!271638 (lemmaAddIdsPreservesRules!0 lt!271642))))

(declare-fun list!2854 (BalanceConc!4510) List!6738)

(assert (=> b!635739 (= lt!271642 (list!2854 lt!271637))))

(declare-datatypes ((List!6739 0))(
  ( (Nil!6725) (Cons!6725 (h!12126 Int) (t!84045 List!6739)) )
))
(declare-datatypes ((IArray!4501 0))(
  ( (IArray!4502 (innerList!2308 List!6739)) )
))
(declare-datatypes ((Conc!2250 0))(
  ( (Node!2250 (left!5379 Conc!2250) (right!5709 Conc!2250) (csize!4730 Int) (cheight!2461 Int)) (Leaf!3446 (xs!4891 IArray!4501) (csize!4731 Int)) (Empty!2250) )
))
(declare-datatypes ((BalanceConc!4512 0))(
  ( (BalanceConc!4513 (c!116485 Conc!2250)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!102 Int BalanceConc!4512 BalanceConc!4510) BalanceConc!4510)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4506 Int Int BalanceConc!4512) BalanceConc!4512)

(assert (=> b!635739 (= lt!271637 (slicesMulti!0 printableTokens!2 lt!271631 (indicesOfOpenBraces!0 (tokens!1188 printableTokens!2) lt!271631 0 (BalanceConc!4513 Empty!2250)) (BalanceConc!4511 Empty!2249)))))

(declare-fun mapIsEmpty!2491 () Bool)

(declare-fun mapRes!2491 () Bool)

(assert (=> mapIsEmpty!2491 mapRes!2491))

(declare-fun e!386964 () Bool)

(declare-fun e!386954 () Bool)

(assert (=> b!635740 (= e!386964 (and e!386954 tp!197795))))

(declare-fun mapNonEmpty!2491 () Bool)

(declare-fun tp!197796 () Bool)

(declare-fun tp!197791 () Bool)

(assert (=> mapNonEmpty!2491 (= mapRes!2491 (and tp!197796 tp!197791))))

(declare-fun mapKey!2491 () (_ BitVec 32))

(declare-fun mapRest!2491 () (Array (_ BitVec 32) List!6737))

(declare-fun mapValue!2491 () List!6737)

(assert (=> mapNonEmpty!2491 (= (arr!1099 (_values!910 (v!16822 (underlying!1445 (v!16823 (underlying!1446 (cache!990 cacheDown!364))))))) (store mapRest!2491 mapKey!2491 mapValue!2491))))

(declare-fun b!635741 () Bool)

(declare-fun e!386962 () Bool)

(declare-fun tp!197793 () Bool)

(assert (=> b!635741 (= e!386962 (and tp!197793 mapRes!2491))))

(declare-fun condMapEmpty!2490 () Bool)

(declare-fun mapDefault!2491 () List!6737)

(assert (=> b!635741 (= condMapEmpty!2490 (= (arr!1099 (_values!910 (v!16822 (underlying!1445 (v!16823 (underlying!1446 (cache!990 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6737)) mapDefault!2491)))))

(declare-fun e!386950 () Bool)

(declare-fun b!635742 () Bool)

(declare-fun tp!197797 () Bool)

(declare-fun inv!8587 (BalanceConc!4506) Bool)

(assert (=> b!635742 (= e!386960 (and tp!197797 (inv!8587 (tokens!1188 printableTokens!2)) e!386950))))

(declare-fun b!635743 () Bool)

(declare-fun tp!197792 () Bool)

(declare-fun inv!8588 (Conc!2247) Bool)

(assert (=> b!635743 (= e!386950 (and (inv!8588 (c!116482 (tokens!1188 printableTokens!2))) tp!197792))))

(declare-fun b!635744 () Bool)

(declare-fun lt!271635 () MutLongMap!630)

(assert (=> b!635744 (= e!386954 (and e!386956 ((_ is LongMap!630) lt!271635)))))

(assert (=> b!635744 (= lt!271635 (v!16821 (underlying!1444 (cache!989 cacheUp!351))))))

(declare-fun e!386955 () Bool)

(declare-fun e!386951 () Bool)

(assert (=> b!635745 (= e!386955 (and e!386951 tp!197790))))

(declare-fun b!635746 () Bool)

(declare-fun res!276219 () Bool)

(assert (=> b!635746 (=> (not res!276219) (not e!386968))))

(assert (=> b!635746 (= res!276219 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!635747 () Bool)

(declare-fun res!276223 () Bool)

(assert (=> b!635747 (=> res!276223 e!386949)))

(assert (=> b!635747 (= res!276223 (not (usesJsonRules!0 (v!16819 (_1!3939 lt!271640)))))))

(declare-fun b!635748 () Bool)

(assert (=> b!635748 (= e!386967 e!386955)))

(declare-fun b!635749 () Bool)

(declare-fun e!386966 () Bool)

(declare-fun tp!197788 () Bool)

(assert (=> b!635749 (= e!386966 (and tp!197788 mapRes!2490))))

(declare-fun condMapEmpty!2491 () Bool)

(declare-fun mapDefault!2490 () List!6735)

(assert (=> b!635749 (= condMapEmpty!2491 (= (arr!1097 (_values!909 (v!16820 (underlying!1443 (v!16821 (underlying!1444 (cache!989 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6735)) mapDefault!2490)))))

(declare-fun b!635750 () Bool)

(declare-fun e!386957 () Bool)

(declare-fun lt!271634 () MutLongMap!631)

(assert (=> b!635750 (= e!386951 (and e!386957 ((_ is LongMap!631) lt!271634)))))

(assert (=> b!635750 (= lt!271634 (v!16823 (underlying!1446 (cache!990 cacheDown!364))))))

(declare-fun b!635751 () Bool)

(declare-fun res!276221 () Bool)

(assert (=> b!635751 (=> res!276221 e!386949)))

(assert (=> b!635751 (= res!276221 (not (usesJsonRules!0 (v!16819 (_1!3939 lt!271636)))))))

(declare-fun b!635752 () Bool)

(assert (=> b!635752 (= e!386957 e!386969)))

(declare-fun tp!197782 () Bool)

(declare-fun tp!197794 () Bool)

(declare-fun array_inv!798 (array!2415) Bool)

(declare-fun array_inv!799 (array!2413) Bool)

(assert (=> b!635753 (= e!386948 (and tp!197785 tp!197782 tp!197794 (array_inv!798 (_keys!924 (v!16820 (underlying!1443 (v!16821 (underlying!1444 (cache!989 cacheUp!351))))))) (array_inv!799 (_values!909 (v!16820 (underlying!1443 (v!16821 (underlying!1444 (cache!989 cacheUp!351))))))) e!386966))))

(declare-fun b!635754 () Bool)

(assert (=> b!635754 (= e!386953 e!386964)))

(declare-fun tp!197783 () Bool)

(declare-fun tp!197787 () Bool)

(declare-fun array_inv!800 (array!2417) Bool)

(assert (=> b!635755 (= e!386952 (and tp!197789 tp!197787 tp!197783 (array_inv!798 (_keys!925 (v!16822 (underlying!1445 (v!16823 (underlying!1446 (cache!990 cacheDown!364))))))) (array_inv!800 (_values!910 (v!16822 (underlying!1445 (v!16823 (underlying!1446 (cache!990 cacheDown!364))))))) e!386962))))

(assert (= (and start!62272 res!276227) b!635733))

(assert (= (and b!635733 res!276224) b!635731))

(assert (= (and b!635731 res!276220) b!635746))

(assert (= (and b!635746 res!276219) b!635739))

(assert (= (and b!635739 (not res!276225)) b!635736))

(assert (= (and b!635736 (not res!276226)) b!635751))

(assert (= (and b!635751 (not res!276221)) b!635747))

(assert (= (and b!635747 (not res!276223)) b!635734))

(assert (= (and b!635734 (not res!276222)) b!635732))

(assert (= b!635742 b!635743))

(assert (= start!62272 b!635742))

(assert (= (and b!635741 condMapEmpty!2490) mapIsEmpty!2491))

(assert (= (and b!635741 (not condMapEmpty!2490)) mapNonEmpty!2491))

(assert (= b!635755 b!635741))

(assert (= b!635735 b!635755))

(assert (= b!635752 b!635735))

(assert (= (and b!635750 ((_ is LongMap!631) (v!16823 (underlying!1446 (cache!990 cacheDown!364))))) b!635752))

(assert (= b!635745 b!635750))

(assert (= (and b!635748 ((_ is HashMap!603) (cache!990 cacheDown!364))) b!635745))

(assert (= start!62272 b!635748))

(assert (= (and b!635749 condMapEmpty!2491) mapIsEmpty!2490))

(assert (= (and b!635749 (not condMapEmpty!2491)) mapNonEmpty!2490))

(assert (= b!635753 b!635749))

(assert (= b!635738 b!635753))

(assert (= b!635737 b!635738))

(assert (= (and b!635744 ((_ is LongMap!630) (v!16821 (underlying!1444 (cache!989 cacheUp!351))))) b!635737))

(assert (= b!635740 b!635744))

(assert (= (and b!635754 ((_ is HashMap!602) (cache!989 cacheUp!351))) b!635740))

(assert (= start!62272 b!635754))

(declare-fun m!906459 () Bool)

(assert (=> mapNonEmpty!2490 m!906459))

(declare-fun m!906461 () Bool)

(assert (=> b!635739 m!906461))

(declare-fun m!906463 () Bool)

(assert (=> b!635739 m!906463))

(declare-fun m!906465 () Bool)

(assert (=> b!635739 m!906465))

(declare-fun m!906467 () Bool)

(assert (=> b!635739 m!906467))

(declare-fun m!906469 () Bool)

(assert (=> b!635739 m!906469))

(declare-fun m!906471 () Bool)

(assert (=> b!635739 m!906471))

(assert (=> b!635739 m!906467))

(declare-fun m!906473 () Bool)

(assert (=> b!635739 m!906473))

(declare-fun m!906475 () Bool)

(assert (=> b!635739 m!906475))

(declare-fun m!906477 () Bool)

(assert (=> b!635739 m!906477))

(declare-fun m!906479 () Bool)

(assert (=> b!635739 m!906479))

(declare-fun m!906481 () Bool)

(assert (=> b!635739 m!906481))

(declare-fun m!906483 () Bool)

(assert (=> b!635739 m!906483))

(declare-fun m!906485 () Bool)

(assert (=> b!635739 m!906485))

(assert (=> b!635739 m!906477))

(declare-fun m!906487 () Bool)

(assert (=> b!635739 m!906487))

(declare-fun m!906489 () Bool)

(assert (=> b!635739 m!906489))

(assert (=> b!635739 m!906469))

(declare-fun m!906491 () Bool)

(assert (=> b!635731 m!906491))

(declare-fun m!906493 () Bool)

(assert (=> b!635746 m!906493))

(declare-fun m!906495 () Bool)

(assert (=> b!635733 m!906495))

(declare-fun m!906497 () Bool)

(assert (=> b!635733 m!906497))

(declare-fun m!906499 () Bool)

(assert (=> b!635753 m!906499))

(declare-fun m!906501 () Bool)

(assert (=> b!635753 m!906501))

(declare-fun m!906503 () Bool)

(assert (=> b!635755 m!906503))

(declare-fun m!906505 () Bool)

(assert (=> b!635755 m!906505))

(declare-fun m!906507 () Bool)

(assert (=> mapNonEmpty!2491 m!906507))

(assert (=> b!635734 m!906469))

(declare-fun m!906509 () Bool)

(assert (=> b!635734 m!906509))

(assert (=> b!635734 m!906469))

(assert (=> b!635734 m!906509))

(declare-fun m!906511 () Bool)

(assert (=> b!635734 m!906511))

(declare-fun m!906513 () Bool)

(assert (=> b!635736 m!906513))

(declare-fun m!906515 () Bool)

(assert (=> b!635742 m!906515))

(declare-fun m!906517 () Bool)

(assert (=> b!635732 m!906517))

(declare-fun m!906519 () Bool)

(assert (=> b!635751 m!906519))

(declare-fun m!906521 () Bool)

(assert (=> b!635743 m!906521))

(declare-fun m!906523 () Bool)

(assert (=> b!635747 m!906523))

(declare-fun m!906525 () Bool)

(assert (=> start!62272 m!906525))

(declare-fun m!906527 () Bool)

(assert (=> start!62272 m!906527))

(declare-fun m!906529 () Bool)

(assert (=> start!62272 m!906529))

(declare-fun m!906531 () Bool)

(assert (=> start!62272 m!906531))

(check-sat b_and!62421 (not b!635731) (not b!635751) (not b!635733) (not mapNonEmpty!2490) (not b!635734) (not b!635753) b_and!62419 (not b_next!18651) (not b!635736) (not b!635749) (not b_next!18649) (not mapNonEmpty!2491) b_and!62415 (not b_next!18645) (not b!635755) (not b!635746) (not b!635742) (not b!635732) b_and!62417 (not b!635747) (not b!635739) (not b_next!18647) (not b!635741) (not start!62272) (not b!635743))
(check-sat b_and!62421 (not b_next!18651) (not b_next!18649) b_and!62415 (not b_next!18645) b_and!62419 b_and!62417 (not b_next!18647))

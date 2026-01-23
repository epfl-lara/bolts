; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63406 () Bool)

(assert start!63406)

(declare-fun b!646894 () Bool)

(declare-fun b_free!18873 () Bool)

(declare-fun b_next!18929 () Bool)

(assert (=> b!646894 (= b_free!18873 (not b_next!18929))))

(declare-fun tp!199777 () Bool)

(declare-fun b_and!62667 () Bool)

(assert (=> b!646894 (= tp!199777 b_and!62667)))

(declare-fun b!646895 () Bool)

(declare-fun b_free!18875 () Bool)

(declare-fun b_next!18931 () Bool)

(assert (=> b!646895 (= b_free!18875 (not b_next!18931))))

(declare-fun tp!199786 () Bool)

(declare-fun b_and!62669 () Bool)

(assert (=> b!646895 (= tp!199786 b_and!62669)))

(declare-fun b!646882 () Bool)

(declare-fun b_free!18877 () Bool)

(declare-fun b_next!18933 () Bool)

(assert (=> b!646882 (= b_free!18877 (not b_next!18933))))

(declare-fun tp!199789 () Bool)

(declare-fun b_and!62671 () Bool)

(assert (=> b!646882 (= tp!199789 b_and!62671)))

(declare-fun b!646879 () Bool)

(declare-fun b_free!18879 () Bool)

(declare-fun b_next!18935 () Bool)

(assert (=> b!646879 (= b_free!18879 (not b_next!18935))))

(declare-fun tp!199784 () Bool)

(declare-fun b_and!62673 () Bool)

(assert (=> b!646879 (= tp!199784 b_and!62673)))

(declare-fun b!646876 () Bool)

(declare-fun e!397042 () Bool)

(declare-fun e!397041 () Bool)

(assert (=> b!646876 (= e!397042 (not e!397041))))

(declare-fun res!283367 () Bool)

(assert (=> b!646876 (=> res!283367 e!397041)))

(declare-datatypes ((Regex!1719 0))(
  ( (ElementMatch!1719 (c!117579 (_ BitVec 16))) (Concat!3137 (regOne!3950 Regex!1719) (regTwo!3950 Regex!1719)) (EmptyExpr!1719) (Star!1719 (reg!2048 Regex!1719)) (EmptyLang!1719) (Union!1719 (regOne!3951 Regex!1719) (regTwo!3951 Regex!1719)) )
))
(declare-datatypes ((String!8827 0))(
  ( (String!8828 (value!44569 String)) )
))
(declare-datatypes ((List!6930 0))(
  ( (Nil!6916) (Cons!6916 (h!12317 (_ BitVec 16)) (t!85334 List!6930)) )
))
(declare-datatypes ((TokenValue!1418 0))(
  ( (FloatLiteralValue!2836 (text!10371 List!6930)) (TokenValueExt!1417 (__x!4932 Int)) (Broken!7090 (value!44570 List!6930)) (Object!1431) (End!1418) (Def!1418) (Underscore!1418) (Match!1418) (Else!1418) (Error!1418) (Case!1418) (If!1418) (Extends!1418) (Abstract!1418) (Class!1418) (Val!1418) (DelimiterValue!2836 (del!1478 List!6930)) (KeywordValue!1424 (value!44571 List!6930)) (CommentValue!2836 (value!44572 List!6930)) (WhitespaceValue!2836 (value!44573 List!6930)) (IndentationValue!1418 (value!44574 List!6930)) (String!8829) (Int32!1418) (Broken!7091 (value!44575 List!6930)) (Boolean!1419) (Unit!12087) (OperatorValue!1421 (op!1478 List!6930)) (IdentifierValue!2836 (value!44576 List!6930)) (IdentifierValue!2837 (value!44577 List!6930)) (WhitespaceValue!2837 (value!44578 List!6930)) (True!2836) (False!2836) (Broken!7092 (value!44579 List!6930)) (Broken!7093 (value!44580 List!6930)) (True!2837) (RightBrace!1418) (RightBracket!1418) (Colon!1418) (Null!1418) (Comma!1418) (LeftBracket!1418) (False!2837) (LeftBrace!1418) (ImaginaryLiteralValue!1418 (text!10372 List!6930)) (StringLiteralValue!4254 (value!44581 List!6930)) (EOFValue!1418 (value!44582 List!6930)) (IdentValue!1418 (value!44583 List!6930)) (DelimiterValue!2837 (value!44584 List!6930)) (DedentValue!1418 (value!44585 List!6930)) (NewLineValue!1418 (value!44586 List!6930)) (IntegerValue!4254 (value!44587 (_ BitVec 32)) (text!10373 List!6930)) (IntegerValue!4255 (value!44588 Int) (text!10374 List!6930)) (Times!1418) (Or!1418) (Equal!1418) (Minus!1418) (Broken!7094 (value!44589 List!6930)) (And!1418) (Div!1418) (LessEqual!1418) (Mod!1418) (Concat!3138) (Not!1418) (Plus!1418) (SpaceValue!1418 (value!44590 List!6930)) (IntegerValue!4256 (value!44591 Int) (text!10375 List!6930)) (StringLiteralValue!4255 (text!10376 List!6930)) (FloatLiteralValue!2837 (text!10377 List!6930)) (BytesLiteralValue!1418 (value!44592 List!6930)) (CommentValue!2837 (value!44593 List!6930)) (StringLiteralValue!4256 (value!44594 List!6930)) (ErrorTokenValue!1418 (msg!1479 List!6930)) )
))
(declare-datatypes ((IArray!4689 0))(
  ( (IArray!4690 (innerList!2402 List!6930)) )
))
(declare-datatypes ((Conc!2344 0))(
  ( (Node!2344 (left!5499 Conc!2344) (right!5829 Conc!2344) (csize!4918 Int) (cheight!2555 Int)) (Leaf!3552 (xs!4985 IArray!4689) (csize!4919 Int)) (Empty!2344) )
))
(declare-datatypes ((BalanceConc!4700 0))(
  ( (BalanceConc!4701 (c!117580 Conc!2344)) )
))
(declare-datatypes ((TokenValueInjection!2588 0))(
  ( (TokenValueInjection!2589 (toValue!2325 Int) (toChars!2184 Int)) )
))
(declare-datatypes ((Rule!2568 0))(
  ( (Rule!2569 (regex!1384 Regex!1719) (tag!1646 String!8827) (isSeparator!1384 Bool) (transformation!1384 TokenValueInjection!2588)) )
))
(declare-datatypes ((List!6931 0))(
  ( (Nil!6917) (Cons!6917 (h!12318 Regex!1719) (t!85335 List!6931)) )
))
(declare-datatypes ((Context!410 0))(
  ( (Context!411 (exprs!705 List!6931)) )
))
(declare-datatypes ((tuple2!7478 0))(
  ( (tuple2!7479 (_1!4087 Context!410) (_2!4087 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7480 0))(
  ( (tuple2!7481 (_1!4088 tuple2!7478) (_2!4088 (InoxSet Context!410))) )
))
(declare-datatypes ((List!6932 0))(
  ( (Nil!6918) (Cons!6918 (h!12319 tuple2!7480) (t!85336 List!6932)) )
))
(declare-datatypes ((Token!2490 0))(
  ( (Token!2491 (value!44595 TokenValue!1418) (rule!2179 Rule!2568) (size!5470 Int) (originalCharacters!1416 List!6930)) )
))
(declare-datatypes ((List!6933 0))(
  ( (Nil!6919) (Cons!6919 (h!12320 Rule!2568) (t!85337 List!6933)) )
))
(declare-datatypes ((List!6934 0))(
  ( (Nil!6920) (Cons!6920 (h!12321 Token!2490) (t!85338 List!6934)) )
))
(declare-datatypes ((IArray!4691 0))(
  ( (IArray!4692 (innerList!2403 List!6934)) )
))
(declare-datatypes ((Conc!2345 0))(
  ( (Node!2345 (left!5500 Conc!2345) (right!5830 Conc!2345) (csize!4920 Int) (cheight!2556 Int)) (Leaf!3553 (xs!4986 IArray!4691) (csize!4921 Int)) (Empty!2345) )
))
(declare-datatypes ((BalanceConc!4702 0))(
  ( (BalanceConc!4703 (c!117581 Conc!2345)) )
))
(declare-datatypes ((PrintableTokens!148 0))(
  ( (PrintableTokens!149 (rules!8232 List!6933) (tokens!1223 BalanceConc!4702)) )
))
(declare-datatypes ((Hashable!648 0))(
  ( (HashableExt!647 (__x!4933 Int)) )
))
(declare-datatypes ((array!2574 0))(
  ( (array!2575 (arr!1167 (Array (_ BitVec 32) List!6932)) (size!5471 (_ BitVec 32))) )
))
(declare-datatypes ((array!2576 0))(
  ( (array!2577 (arr!1168 (Array (_ BitVec 32) (_ BitVec 64))) (size!5472 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1352 0))(
  ( (LongMapFixedSize!1353 (defaultEntry!1032 Int) (mask!2415 (_ BitVec 32)) (extraKeys!923 (_ BitVec 32)) (zeroValue!933 List!6932) (minValue!933 List!6932) (_size!1461 (_ BitVec 32)) (_keys!970 array!2576) (_values!955 array!2574) (_vacant!737 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2645 0))(
  ( (Cell!2646 (v!17120 LongMapFixedSize!1352)) )
))
(declare-datatypes ((MutLongMap!676 0))(
  ( (LongMap!676 (underlying!1535 Cell!2645)) (MutLongMapExt!675 (__x!4934 Int)) )
))
(declare-datatypes ((Cell!2647 0))(
  ( (Cell!2648 (v!17121 MutLongMap!676)) )
))
(declare-datatypes ((MutableMap!648 0))(
  ( (MutableMapExt!647 (__x!4935 Int)) (HashMap!648 (underlying!1536 Cell!2647) (hashF!2556 Hashable!648) (_size!1462 (_ BitVec 32)) (defaultValue!799 Int)) )
))
(declare-datatypes ((CacheUp!308 0))(
  ( (CacheUp!309 (cache!1035 MutableMap!648)) )
))
(declare-datatypes ((tuple3!594 0))(
  ( (tuple3!595 (_1!4089 Regex!1719) (_2!4089 Context!410) (_3!348 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7482 0))(
  ( (tuple2!7483 (_1!4090 tuple3!594) (_2!4090 (InoxSet Context!410))) )
))
(declare-datatypes ((List!6935 0))(
  ( (Nil!6921) (Cons!6921 (h!12322 tuple2!7482) (t!85339 List!6935)) )
))
(declare-datatypes ((array!2578 0))(
  ( (array!2579 (arr!1169 (Array (_ BitVec 32) List!6935)) (size!5473 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1354 0))(
  ( (LongMapFixedSize!1355 (defaultEntry!1033 Int) (mask!2416 (_ BitVec 32)) (extraKeys!924 (_ BitVec 32)) (zeroValue!934 List!6935) (minValue!934 List!6935) (_size!1463 (_ BitVec 32)) (_keys!971 array!2576) (_values!956 array!2578) (_vacant!738 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2649 0))(
  ( (Cell!2650 (v!17122 LongMapFixedSize!1354)) )
))
(declare-datatypes ((MutLongMap!677 0))(
  ( (LongMap!677 (underlying!1537 Cell!2649)) (MutLongMapExt!676 (__x!4936 Int)) )
))
(declare-datatypes ((Cell!2651 0))(
  ( (Cell!2652 (v!17123 MutLongMap!677)) )
))
(declare-datatypes ((Hashable!649 0))(
  ( (HashableExt!648 (__x!4937 Int)) )
))
(declare-datatypes ((MutableMap!649 0))(
  ( (MutableMapExt!648 (__x!4938 Int)) (HashMap!649 (underlying!1538 Cell!2651) (hashF!2557 Hashable!649) (_size!1464 (_ BitVec 32)) (defaultValue!800 Int)) )
))
(declare-datatypes ((CacheDown!310 0))(
  ( (CacheDown!311 (cache!1036 MutableMap!649)) )
))
(declare-datatypes ((Option!1667 0))(
  ( (None!1666) (Some!1666 (v!17124 PrintableTokens!148)) )
))
(declare-datatypes ((tuple3!596 0))(
  ( (tuple3!597 (_1!4091 Option!1667) (_2!4091 CacheUp!308) (_3!349 CacheDown!310)) )
))
(declare-fun lt!277128 () tuple3!596)

(declare-fun lt!277131 () tuple3!596)

(declare-fun lt!277124 () tuple3!596)

(get-info :version)

(assert (=> b!646876 (= res!283367 (or (not ((_ is Some!1666) (_1!4091 lt!277131))) (not ((_ is Some!1666) (_1!4091 lt!277128))) (not ((_ is Some!1666) (_1!4091 lt!277124)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!308 CacheDown!310) tuple3!596)

(assert (=> b!646876 (= lt!277124 (createRightBracketSeparator!0 (_2!4091 lt!277128) (_3!349 lt!277128)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!308 CacheDown!310) tuple3!596)

(assert (=> b!646876 (= lt!277128 (createLeftBracketSeparator!0 (_2!4091 lt!277131) (_3!349 lt!277131)))))

(declare-fun cacheUp!351 () CacheUp!308)

(declare-fun cacheDown!364 () CacheDown!310)

(declare-fun createCommaNewLineSeparator!0 (CacheUp!308 CacheDown!310) tuple3!596)

(assert (=> b!646876 (= lt!277131 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-datatypes ((tuple2!7484 0))(
  ( (tuple2!7485 (_1!4092 Int) (_2!4092 PrintableTokens!148)) )
))
(declare-datatypes ((List!6936 0))(
  ( (Nil!6922) (Cons!6922 (h!12323 tuple2!7484) (t!85340 List!6936)) )
))
(declare-datatypes ((IArray!4693 0))(
  ( (IArray!4694 (innerList!2404 List!6936)) )
))
(declare-datatypes ((Conc!2346 0))(
  ( (Node!2346 (left!5501 Conc!2346) (right!5831 Conc!2346) (csize!4922 Int) (cheight!2557 Int)) (Leaf!3554 (xs!4987 IArray!4693) (csize!4923 Int)) (Empty!2346) )
))
(declare-datatypes ((BalanceConc!4704 0))(
  ( (BalanceConc!4705 (c!117582 Conc!2346)) )
))
(declare-fun lt!277118 () BalanceConc!4704)

(declare-fun lambda!19487 () Int)

(declare-fun lambda!19488 () Int)

(declare-datatypes ((List!6937 0))(
  ( (Nil!6923) (Cons!6923 (h!12324 PrintableTokens!148) (t!85341 List!6937)) )
))
(declare-datatypes ((IArray!4695 0))(
  ( (IArray!4696 (innerList!2405 List!6937)) )
))
(declare-datatypes ((Conc!2347 0))(
  ( (Node!2347 (left!5502 Conc!2347) (right!5832 Conc!2347) (csize!4924 Int) (cheight!2558 Int)) (Leaf!3555 (xs!4988 IArray!4695) (csize!4925 Int)) (Empty!2347) )
))
(declare-datatypes ((BalanceConc!4706 0))(
  ( (BalanceConc!4707 (c!117583 Conc!2347)) )
))
(declare-fun forall!1797 (BalanceConc!4706 Int) Bool)

(declare-fun map!1533 (BalanceConc!4704 Int) BalanceConc!4706)

(assert (=> b!646876 (forall!1797 (map!1533 lt!277118 lambda!19487) lambda!19488)))

(declare-datatypes ((Unit!12088 0))(
  ( (Unit!12089) )
))
(declare-fun lt!277123 () Unit!12088)

(declare-fun lt!277126 () List!6936)

(declare-fun mapPred!63 (List!6936 Int Int) Unit!12088)

(assert (=> b!646876 (= lt!277123 (mapPred!63 lt!277126 lambda!19487 lambda!19488))))

(declare-fun lt!277116 () Unit!12088)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6936) Unit!12088)

(assert (=> b!646876 (= lt!277116 (lemmaRemoveIdsPreservesRules!0 lt!277126))))

(declare-fun list!2944 (BalanceConc!4704) List!6936)

(assert (=> b!646876 (= lt!277126 (list!2944 lt!277118))))

(declare-fun lt!277129 () BalanceConc!4706)

(declare-fun lambda!19485 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4704) BalanceConc!4704)

(declare-fun map!1534 (BalanceConc!4706 Int) BalanceConc!4704)

(assert (=> b!646876 (= lt!277118 (sortObjectsByID!0 (map!1534 lt!277129 lambda!19485)))))

(declare-fun lambda!19486 () Int)

(declare-fun lt!277122 () List!6937)

(declare-fun lt!277127 () Unit!12088)

(declare-fun mapPred!64 (List!6937 Int Int) Unit!12088)

(assert (=> b!646876 (= lt!277127 (mapPred!64 lt!277122 lambda!19485 lambda!19486))))

(declare-fun lt!277130 () Unit!12088)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6937) Unit!12088)

(assert (=> b!646876 (= lt!277130 (lemmaAddIdsPreservesRules!0 lt!277122))))

(declare-fun list!2945 (BalanceConc!4706) List!6937)

(assert (=> b!646876 (= lt!277122 (list!2945 lt!277129))))

(declare-fun printableTokens!2 () PrintableTokens!148)

(declare-fun lt!277115 () Int)

(declare-datatypes ((List!6938 0))(
  ( (Nil!6924) (Cons!6924 (h!12325 Int) (t!85342 List!6938)) )
))
(declare-datatypes ((IArray!4697 0))(
  ( (IArray!4698 (innerList!2406 List!6938)) )
))
(declare-datatypes ((Conc!2348 0))(
  ( (Node!2348 (left!5503 Conc!2348) (right!5833 Conc!2348) (csize!4926 Int) (cheight!2559 Int)) (Leaf!3556 (xs!4989 IArray!4697) (csize!4927 Int)) (Empty!2348) )
))
(declare-datatypes ((BalanceConc!4708 0))(
  ( (BalanceConc!4709 (c!117584 Conc!2348)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!148 Int BalanceConc!4708 BalanceConc!4706) BalanceConc!4706)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4702 Int Int BalanceConc!4708) BalanceConc!4708)

(assert (=> b!646876 (= lt!277129 (slicesMulti!0 printableTokens!2 lt!277115 (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 0 (BalanceConc!4709 Empty!2348)) (BalanceConc!4707 Empty!2347)))))

(declare-fun b!646877 () Bool)

(declare-fun e!397027 () Bool)

(declare-fun e!397039 () Bool)

(declare-fun lt!277114 () MutLongMap!676)

(assert (=> b!646877 (= e!397027 (and e!397039 ((_ is LongMap!676) lt!277114)))))

(assert (=> b!646877 (= lt!277114 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))

(declare-fun b!646878 () Bool)

(declare-fun res!283369 () Bool)

(assert (=> b!646878 (=> res!283369 e!397041)))

(declare-fun usesJsonRules!0 (PrintableTokens!148) Bool)

(assert (=> b!646878 (= res!283369 (not (usesJsonRules!0 (v!17124 (_1!4091 lt!277131)))))))

(declare-fun e!397038 () Bool)

(declare-fun e!397033 () Bool)

(assert (=> b!646879 (= e!397038 (and e!397033 tp!199784))))

(declare-fun mapIsEmpty!2684 () Bool)

(declare-fun mapRes!2685 () Bool)

(assert (=> mapIsEmpty!2684 mapRes!2685))

(declare-fun b!646880 () Bool)

(declare-fun res!283366 () Bool)

(assert (=> b!646880 (=> (not res!283366) (not e!397042))))

(assert (=> b!646880 (= res!283366 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!646881 () Bool)

(declare-fun e!397043 () Bool)

(declare-fun e!397045 () Bool)

(assert (=> b!646881 (= e!397043 e!397045)))

(declare-fun e!397037 () Bool)

(declare-fun e!397028 () Bool)

(declare-fun tp!199782 () Bool)

(declare-fun tp!199788 () Bool)

(declare-fun array_inv!851 (array!2576) Bool)

(declare-fun array_inv!852 (array!2578) Bool)

(assert (=> b!646882 (= e!397028 (and tp!199789 tp!199782 tp!199788 (array_inv!851 (_keys!971 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) (array_inv!852 (_values!956 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) e!397037))))

(declare-fun mapNonEmpty!2685 () Bool)

(declare-fun mapRes!2684 () Bool)

(declare-fun tp!199779 () Bool)

(declare-fun tp!199774 () Bool)

(assert (=> mapNonEmpty!2685 (= mapRes!2684 (and tp!199779 tp!199774))))

(declare-fun mapValue!2684 () List!6932)

(declare-fun mapKey!2684 () (_ BitVec 32))

(declare-fun mapRest!2685 () (Array (_ BitVec 32) List!6932))

(assert (=> mapNonEmpty!2685 (= (arr!1167 (_values!955 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) (store mapRest!2685 mapKey!2684 mapValue!2684))))

(declare-fun b!646883 () Bool)

(declare-fun res!283368 () Bool)

(declare-fun e!397032 () Bool)

(assert (=> b!646883 (=> res!283368 e!397032)))

(declare-fun lt!277125 () List!6933)

(declare-fun lt!277117 () Option!1667)

(assert (=> b!646883 (= res!283368 (not (= lt!277125 (rules!8232 (v!17124 lt!277117)))))))

(declare-fun b!646884 () Bool)

(declare-fun tp!199785 () Bool)

(assert (=> b!646884 (= e!397037 (and tp!199785 mapRes!2685))))

(declare-fun condMapEmpty!2685 () Bool)

(declare-fun mapDefault!2684 () List!6935)

(assert (=> b!646884 (= condMapEmpty!2685 (= (arr!1169 (_values!956 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6935)) mapDefault!2684)))))

(declare-fun b!646885 () Bool)

(declare-fun e!397048 () Bool)

(declare-fun tp!199787 () Bool)

(assert (=> b!646885 (= e!397048 (and tp!199787 mapRes!2684))))

(declare-fun condMapEmpty!2684 () Bool)

(declare-fun mapDefault!2685 () List!6932)

(assert (=> b!646885 (= condMapEmpty!2684 (= (arr!1167 (_values!955 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6932)) mapDefault!2685)))))

(declare-fun b!646886 () Bool)

(declare-fun e!397031 () Bool)

(declare-fun tp!199781 () Bool)

(declare-fun inv!8749 (Conc!2345) Bool)

(assert (=> b!646886 (= e!397031 (and (inv!8749 (c!117581 (tokens!1223 printableTokens!2))) tp!199781))))

(declare-fun mapIsEmpty!2685 () Bool)

(assert (=> mapIsEmpty!2685 mapRes!2684))

(declare-fun b!646887 () Bool)

(declare-fun e!397026 () Bool)

(assert (=> b!646887 (= e!397026 e!397042)))

(declare-fun res!283373 () Bool)

(assert (=> b!646887 (=> (not res!283373) (not e!397042))))

(declare-fun isEmpty!4727 (List!6933) Bool)

(assert (=> b!646887 (= res!283373 (not (isEmpty!4727 lt!277125)))))

(declare-datatypes ((JsonLexer!204 0))(
  ( (JsonLexer!205) )
))
(declare-fun rules!109 (JsonLexer!204) List!6933)

(assert (=> b!646887 (= lt!277125 (rules!109 JsonLexer!205))))

(declare-fun mapNonEmpty!2684 () Bool)

(declare-fun tp!199778 () Bool)

(declare-fun tp!199780 () Bool)

(assert (=> mapNonEmpty!2684 (= mapRes!2685 (and tp!199778 tp!199780))))

(declare-fun mapRest!2684 () (Array (_ BitVec 32) List!6935))

(declare-fun mapValue!2685 () List!6935)

(declare-fun mapKey!2685 () (_ BitVec 32))

(assert (=> mapNonEmpty!2684 (= (arr!1169 (_values!956 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) (store mapRest!2684 mapKey!2685 mapValue!2685))))

(declare-fun res!283371 () Bool)

(assert (=> start!63406 (=> (not res!283371) (not e!397026))))

(assert (=> start!63406 (= res!283371 (> lt!277115 0))))

(declare-fun size!5474 (PrintableTokens!148) Int)

(assert (=> start!63406 (= lt!277115 (size!5474 printableTokens!2))))

(assert (=> start!63406 e!397026))

(declare-fun e!397034 () Bool)

(declare-fun inv!8750 (PrintableTokens!148) Bool)

(assert (=> start!63406 (and (inv!8750 printableTokens!2) e!397034)))

(declare-fun e!397047 () Bool)

(declare-fun inv!8751 (CacheDown!310) Bool)

(assert (=> start!63406 (and (inv!8751 cacheDown!364) e!397047)))

(declare-fun e!397046 () Bool)

(declare-fun inv!8752 (CacheUp!308) Bool)

(assert (=> start!63406 (and (inv!8752 cacheUp!351) e!397046)))

(declare-fun b!646888 () Bool)

(declare-fun e!397049 () Bool)

(declare-fun e!397036 () Bool)

(assert (=> b!646888 (= e!397049 e!397036)))

(declare-fun res!283377 () Bool)

(assert (=> b!646888 (=> res!283377 e!397036)))

(assert (=> b!646888 (= res!283377 (not ((_ is Some!1666) lt!277117)))))

(declare-fun lt!277121 () Option!1667)

(declare-fun encloseInSep!0 (PrintableTokens!148 PrintableTokens!148 PrintableTokens!148) Option!1667)

(assert (=> b!646888 (= lt!277117 (encloseInSep!0 (v!17124 lt!277121) (v!17124 (_1!4091 lt!277128)) (v!17124 (_1!4091 lt!277124))))))

(declare-fun b!646889 () Bool)

(declare-fun res!283376 () Bool)

(assert (=> b!646889 (=> res!283376 e!397041)))

(assert (=> b!646889 (= res!283376 (not (usesJsonRules!0 (v!17124 (_1!4091 lt!277124)))))))

(declare-fun b!646890 () Bool)

(declare-fun e!397030 () Bool)

(assert (=> b!646890 (= e!397039 e!397030)))

(declare-fun b!646891 () Bool)

(declare-fun e!397035 () Bool)

(assert (=> b!646891 (= e!397046 e!397035)))

(declare-fun lt!277120 () BalanceConc!4700)

(declare-fun b!646892 () Bool)

(declare-fun list!2946 (BalanceConc!4702) List!6934)

(declare-datatypes ((tuple2!7486 0))(
  ( (tuple2!7487 (_1!4093 BalanceConc!4702) (_2!4093 BalanceConc!4700)) )
))
(declare-datatypes ((LexerInterface!1259 0))(
  ( (LexerInterfaceExt!1256 (__x!4939 Int)) (Lexer!1257) )
))
(declare-fun lex!582 (LexerInterface!1259 List!6933 BalanceConc!4700) tuple2!7486)

(assert (=> b!646892 (= e!397032 (= (list!2946 (_1!4093 (lex!582 Lexer!1257 lt!277125 lt!277120))) (list!2946 (tokens!1223 (v!17124 lt!277117)))))))

(declare-fun b!646893 () Bool)

(assert (=> b!646893 (= e!397036 e!397032)))

(declare-fun res!283374 () Bool)

(assert (=> b!646893 (=> res!283374 e!397032)))

(assert (=> b!646893 (= res!283374 (not (usesJsonRules!0 (v!17124 lt!277117))))))

(declare-fun print!508 (PrintableTokens!148) BalanceConc!4700)

(assert (=> b!646893 (= lt!277120 (print!508 (v!17124 lt!277117)))))

(assert (=> b!646894 (= e!397035 (and e!397027 tp!199777))))

(declare-fun e!397029 () Bool)

(declare-fun tp!199775 () Bool)

(declare-fun tp!199776 () Bool)

(declare-fun array_inv!853 (array!2574) Bool)

(assert (=> b!646895 (= e!397029 (and tp!199786 tp!199775 tp!199776 (array_inv!851 (_keys!970 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) (array_inv!853 (_values!955 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) e!397048))))

(declare-fun b!646896 () Bool)

(assert (=> b!646896 (= e!397041 e!397049)))

(declare-fun res!283372 () Bool)

(assert (=> b!646896 (=> res!283372 e!397049)))

(assert (=> b!646896 (= res!283372 (not ((_ is Some!1666) lt!277121)))))

(declare-fun recombineSlicesWithSep!0 (BalanceConc!4706 PrintableTokens!148 PrintableTokens!148) Option!1667)

(declare-fun emptyPrintableTokens!16 (List!6933) PrintableTokens!148)

(assert (=> b!646896 (= lt!277121 (recombineSlicesWithSep!0 (map!1533 lt!277118 lambda!19487) (v!17124 (_1!4091 lt!277131)) (emptyPrintableTokens!16 lt!277125)))))

(declare-fun b!646897 () Bool)

(assert (=> b!646897 (= e!397045 e!397028)))

(declare-fun b!646898 () Bool)

(assert (=> b!646898 (= e!397047 e!397038)))

(declare-fun b!646899 () Bool)

(declare-fun lt!277119 () MutLongMap!677)

(assert (=> b!646899 (= e!397033 (and e!397043 ((_ is LongMap!677) lt!277119)))))

(assert (=> b!646899 (= lt!277119 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))

(declare-fun b!646900 () Bool)

(declare-fun res!283370 () Bool)

(assert (=> b!646900 (=> res!283370 e!397041)))

(assert (=> b!646900 (= res!283370 (not (usesJsonRules!0 (v!17124 (_1!4091 lt!277128)))))))

(declare-fun b!646901 () Bool)

(declare-fun res!283375 () Bool)

(assert (=> b!646901 (=> (not res!283375) (not e!397042))))

(declare-fun rulesInvariant!1194 (LexerInterface!1259 List!6933) Bool)

(assert (=> b!646901 (= res!283375 (rulesInvariant!1194 Lexer!1257 lt!277125))))

(declare-fun b!646902 () Bool)

(assert (=> b!646902 (= e!397030 e!397029)))

(declare-fun b!646903 () Bool)

(declare-fun tp!199783 () Bool)

(declare-fun inv!8753 (BalanceConc!4702) Bool)

(assert (=> b!646903 (= e!397034 (and tp!199783 (inv!8753 (tokens!1223 printableTokens!2)) e!397031))))

(assert (= (and start!63406 res!283371) b!646887))

(assert (= (and b!646887 res!283373) b!646901))

(assert (= (and b!646901 res!283375) b!646880))

(assert (= (and b!646880 res!283366) b!646876))

(assert (= (and b!646876 (not res!283367)) b!646878))

(assert (= (and b!646878 (not res!283369)) b!646900))

(assert (= (and b!646900 (not res!283370)) b!646889))

(assert (= (and b!646889 (not res!283376)) b!646896))

(assert (= (and b!646896 (not res!283372)) b!646888))

(assert (= (and b!646888 (not res!283377)) b!646893))

(assert (= (and b!646893 (not res!283374)) b!646883))

(assert (= (and b!646883 (not res!283368)) b!646892))

(assert (= b!646903 b!646886))

(assert (= start!63406 b!646903))

(assert (= (and b!646884 condMapEmpty!2685) mapIsEmpty!2684))

(assert (= (and b!646884 (not condMapEmpty!2685)) mapNonEmpty!2684))

(assert (= b!646882 b!646884))

(assert (= b!646897 b!646882))

(assert (= b!646881 b!646897))

(assert (= (and b!646899 ((_ is LongMap!677) (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))) b!646881))

(assert (= b!646879 b!646899))

(assert (= (and b!646898 ((_ is HashMap!649) (cache!1036 cacheDown!364))) b!646879))

(assert (= start!63406 b!646898))

(assert (= (and b!646885 condMapEmpty!2684) mapIsEmpty!2685))

(assert (= (and b!646885 (not condMapEmpty!2684)) mapNonEmpty!2685))

(assert (= b!646895 b!646885))

(assert (= b!646902 b!646895))

(assert (= b!646890 b!646902))

(assert (= (and b!646877 ((_ is LongMap!676) (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))) b!646890))

(assert (= b!646894 b!646877))

(assert (= (and b!646891 ((_ is HashMap!648) (cache!1035 cacheUp!351))) b!646894))

(assert (= start!63406 b!646891))

(declare-fun m!917307 () Bool)

(assert (=> b!646895 m!917307))

(declare-fun m!917309 () Bool)

(assert (=> b!646895 m!917309))

(declare-fun m!917311 () Bool)

(assert (=> b!646887 m!917311))

(declare-fun m!917313 () Bool)

(assert (=> b!646887 m!917313))

(declare-fun m!917315 () Bool)

(assert (=> b!646886 m!917315))

(declare-fun m!917317 () Bool)

(assert (=> b!646900 m!917317))

(declare-fun m!917319 () Bool)

(assert (=> b!646893 m!917319))

(declare-fun m!917321 () Bool)

(assert (=> b!646893 m!917321))

(declare-fun m!917323 () Bool)

(assert (=> b!646888 m!917323))

(declare-fun m!917325 () Bool)

(assert (=> b!646901 m!917325))

(declare-fun m!917327 () Bool)

(assert (=> start!63406 m!917327))

(declare-fun m!917329 () Bool)

(assert (=> start!63406 m!917329))

(declare-fun m!917331 () Bool)

(assert (=> start!63406 m!917331))

(declare-fun m!917333 () Bool)

(assert (=> start!63406 m!917333))

(declare-fun m!917335 () Bool)

(assert (=> mapNonEmpty!2685 m!917335))

(declare-fun m!917337 () Bool)

(assert (=> b!646903 m!917337))

(declare-fun m!917339 () Bool)

(assert (=> b!646882 m!917339))

(declare-fun m!917341 () Bool)

(assert (=> b!646882 m!917341))

(declare-fun m!917343 () Bool)

(assert (=> mapNonEmpty!2684 m!917343))

(declare-fun m!917345 () Bool)

(assert (=> b!646876 m!917345))

(declare-fun m!917347 () Bool)

(assert (=> b!646876 m!917347))

(declare-fun m!917349 () Bool)

(assert (=> b!646876 m!917349))

(declare-fun m!917351 () Bool)

(assert (=> b!646876 m!917351))

(declare-fun m!917353 () Bool)

(assert (=> b!646876 m!917353))

(declare-fun m!917355 () Bool)

(assert (=> b!646876 m!917355))

(declare-fun m!917357 () Bool)

(assert (=> b!646876 m!917357))

(declare-fun m!917359 () Bool)

(assert (=> b!646876 m!917359))

(declare-fun m!917361 () Bool)

(assert (=> b!646876 m!917361))

(declare-fun m!917363 () Bool)

(assert (=> b!646876 m!917363))

(declare-fun m!917365 () Bool)

(assert (=> b!646876 m!917365))

(assert (=> b!646876 m!917353))

(declare-fun m!917367 () Bool)

(assert (=> b!646876 m!917367))

(assert (=> b!646876 m!917345))

(assert (=> b!646876 m!917361))

(declare-fun m!917369 () Bool)

(assert (=> b!646876 m!917369))

(declare-fun m!917371 () Bool)

(assert (=> b!646876 m!917371))

(declare-fun m!917373 () Bool)

(assert (=> b!646876 m!917373))

(declare-fun m!917375 () Bool)

(assert (=> b!646892 m!917375))

(declare-fun m!917377 () Bool)

(assert (=> b!646892 m!917377))

(declare-fun m!917379 () Bool)

(assert (=> b!646892 m!917379))

(declare-fun m!917381 () Bool)

(assert (=> b!646878 m!917381))

(declare-fun m!917383 () Bool)

(assert (=> b!646889 m!917383))

(assert (=> b!646896 m!917353))

(declare-fun m!917385 () Bool)

(assert (=> b!646896 m!917385))

(assert (=> b!646896 m!917353))

(assert (=> b!646896 m!917385))

(declare-fun m!917387 () Bool)

(assert (=> b!646896 m!917387))

(declare-fun m!917389 () Bool)

(assert (=> b!646880 m!917389))

(check-sat (not b!646901) (not b!646880) (not b!646896) (not b!646885) (not b_next!18929) (not mapNonEmpty!2685) (not b!646893) (not b!646892) (not b!646900) (not b!646889) (not b!646886) b_and!62673 (not b!646884) (not b!646882) (not b!646895) (not b_next!18933) (not b_next!18935) (not mapNonEmpty!2684) (not start!63406) b_and!62667 (not b!646876) b_and!62671 (not b!646878) b_and!62669 (not b!646887) (not b!646888) (not b!646903) (not b_next!18931))
(check-sat b_and!62673 (not b_next!18933) (not b_next!18935) (not b_next!18929) b_and!62667 (not b_next!18931) b_and!62671 b_and!62669)
(get-model)

(declare-fun d!224178 () Bool)

(assert (=> d!224178 (= (array_inv!851 (_keys!971 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) (bvsge (size!5472 (_keys!971 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!646882 d!224178))

(declare-fun d!224180 () Bool)

(assert (=> d!224180 (= (array_inv!852 (_values!956 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) (bvsge (size!5473 (_values!956 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!646882 d!224180))

(declare-fun d!224182 () Bool)

(assert (=> d!224182 (= (usesJsonRules!0 (v!17124 lt!277117)) (= (rules!8232 (v!17124 lt!277117)) (rules!109 JsonLexer!205)))))

(declare-fun bs!84512 () Bool)

(assert (= bs!84512 d!224182))

(assert (=> bs!84512 m!917313))

(assert (=> b!646893 d!224182))

(declare-fun d!224184 () Bool)

(declare-fun e!397052 () Bool)

(assert (=> d!224184 e!397052))

(declare-fun res!283382 () Bool)

(assert (=> d!224184 (=> (not res!283382) (not e!397052))))

(declare-fun lt!277136 () BalanceConc!4700)

(assert (=> d!224184 (= res!283382 (= (list!2946 (_1!4093 (lex!582 Lexer!1257 (rules!8232 (v!17124 lt!277117)) lt!277136))) (list!2946 (tokens!1223 (v!17124 lt!277117)))))))

(declare-fun print!509 (LexerInterface!1259 BalanceConc!4702) BalanceConc!4700)

(assert (=> d!224184 (= lt!277136 (print!509 Lexer!1257 (tokens!1223 (v!17124 lt!277117))))))

(declare-fun lt!277137 () Unit!12088)

(declare-fun theoremInvertabilityWhenTokenListSeparable!6 (LexerInterface!1259 List!6933 List!6934) Unit!12088)

(assert (=> d!224184 (= lt!277137 (theoremInvertabilityWhenTokenListSeparable!6 Lexer!1257 (rules!8232 (v!17124 lt!277117)) (list!2946 (tokens!1223 (v!17124 lt!277117)))))))

(assert (=> d!224184 (= (print!508 (v!17124 lt!277117)) lt!277136)))

(declare-fun b!646906 () Bool)

(declare-fun isEmpty!4728 (List!6930) Bool)

(declare-fun list!2947 (BalanceConc!4700) List!6930)

(assert (=> b!646906 (= e!397052 (isEmpty!4728 (list!2947 (_2!4093 (lex!582 Lexer!1257 (rules!8232 (v!17124 lt!277117)) lt!277136)))))))

(assert (= (and d!224184 res!283382) b!646906))

(assert (=> d!224184 m!917379))

(declare-fun m!917391 () Bool)

(assert (=> d!224184 m!917391))

(declare-fun m!917393 () Bool)

(assert (=> d!224184 m!917393))

(declare-fun m!917395 () Bool)

(assert (=> d!224184 m!917395))

(declare-fun m!917397 () Bool)

(assert (=> d!224184 m!917397))

(assert (=> d!224184 m!917379))

(assert (=> b!646906 m!917393))

(declare-fun m!917399 () Bool)

(assert (=> b!646906 m!917399))

(assert (=> b!646906 m!917399))

(declare-fun m!917401 () Bool)

(assert (=> b!646906 m!917401))

(assert (=> b!646893 d!224184))

(declare-fun d!224186 () Bool)

(declare-fun list!2948 (Conc!2345) List!6934)

(assert (=> d!224186 (= (list!2946 (_1!4093 (lex!582 Lexer!1257 lt!277125 lt!277120))) (list!2948 (c!117581 (_1!4093 (lex!582 Lexer!1257 lt!277125 lt!277120)))))))

(declare-fun bs!84513 () Bool)

(assert (= bs!84513 d!224186))

(declare-fun m!917403 () Bool)

(assert (=> bs!84513 m!917403))

(assert (=> b!646892 d!224186))

(declare-fun b!646917 () Bool)

(declare-fun e!397059 () Bool)

(declare-fun lt!277140 () tuple2!7486)

(declare-fun isEmpty!4729 (BalanceConc!4702) Bool)

(assert (=> b!646917 (= e!397059 (not (isEmpty!4729 (_1!4093 lt!277140))))))

(declare-fun d!224188 () Bool)

(declare-fun e!397061 () Bool)

(assert (=> d!224188 e!397061))

(declare-fun res!283389 () Bool)

(assert (=> d!224188 (=> (not res!283389) (not e!397061))))

(declare-fun e!397060 () Bool)

(assert (=> d!224188 (= res!283389 e!397060)))

(declare-fun c!117588 () Bool)

(declare-fun size!5477 (BalanceConc!4702) Int)

(assert (=> d!224188 (= c!117588 (> (size!5477 (_1!4093 lt!277140)) 0))))

(declare-fun lexTailRecV2!278 (LexerInterface!1259 List!6933 BalanceConc!4700 BalanceConc!4700 BalanceConc!4700 BalanceConc!4702) tuple2!7486)

(assert (=> d!224188 (= lt!277140 (lexTailRecV2!278 Lexer!1257 lt!277125 lt!277120 (BalanceConc!4701 Empty!2344) lt!277120 (BalanceConc!4703 Empty!2345)))))

(assert (=> d!224188 (= (lex!582 Lexer!1257 lt!277125 lt!277120) lt!277140)))

(declare-fun b!646918 () Bool)

(assert (=> b!646918 (= e!397060 (= (_2!4093 lt!277140) lt!277120))))

(declare-fun b!646919 () Bool)

(declare-datatypes ((tuple2!7488 0))(
  ( (tuple2!7489 (_1!4094 List!6934) (_2!4094 List!6930)) )
))
(declare-fun lexList!316 (LexerInterface!1259 List!6933 List!6930) tuple2!7488)

(assert (=> b!646919 (= e!397061 (= (list!2947 (_2!4093 lt!277140)) (_2!4094 (lexList!316 Lexer!1257 lt!277125 (list!2947 lt!277120)))))))

(declare-fun b!646920 () Bool)

(assert (=> b!646920 (= e!397060 e!397059)))

(declare-fun res!283390 () Bool)

(declare-fun size!5478 (BalanceConc!4700) Int)

(assert (=> b!646920 (= res!283390 (< (size!5478 (_2!4093 lt!277140)) (size!5478 lt!277120)))))

(assert (=> b!646920 (=> (not res!283390) (not e!397059))))

(declare-fun b!646921 () Bool)

(declare-fun res!283391 () Bool)

(assert (=> b!646921 (=> (not res!283391) (not e!397061))))

(assert (=> b!646921 (= res!283391 (= (list!2946 (_1!4093 lt!277140)) (_1!4094 (lexList!316 Lexer!1257 lt!277125 (list!2947 lt!277120)))))))

(assert (= (and d!224188 c!117588) b!646920))

(assert (= (and d!224188 (not c!117588)) b!646918))

(assert (= (and b!646920 res!283390) b!646917))

(assert (= (and d!224188 res!283389) b!646921))

(assert (= (and b!646921 res!283391) b!646919))

(declare-fun m!917405 () Bool)

(assert (=> d!224188 m!917405))

(declare-fun m!917407 () Bool)

(assert (=> d!224188 m!917407))

(declare-fun m!917409 () Bool)

(assert (=> b!646920 m!917409))

(declare-fun m!917411 () Bool)

(assert (=> b!646920 m!917411))

(declare-fun m!917413 () Bool)

(assert (=> b!646917 m!917413))

(declare-fun m!917415 () Bool)

(assert (=> b!646921 m!917415))

(declare-fun m!917417 () Bool)

(assert (=> b!646921 m!917417))

(assert (=> b!646921 m!917417))

(declare-fun m!917419 () Bool)

(assert (=> b!646921 m!917419))

(declare-fun m!917421 () Bool)

(assert (=> b!646919 m!917421))

(assert (=> b!646919 m!917417))

(assert (=> b!646919 m!917417))

(assert (=> b!646919 m!917419))

(assert (=> b!646892 d!224188))

(declare-fun d!224190 () Bool)

(assert (=> d!224190 (= (list!2946 (tokens!1223 (v!17124 lt!277117))) (list!2948 (c!117581 (tokens!1223 (v!17124 lt!277117)))))))

(declare-fun bs!84514 () Bool)

(assert (= bs!84514 d!224190))

(declare-fun m!917423 () Bool)

(assert (=> bs!84514 m!917423))

(assert (=> b!646892 d!224190))

(declare-fun d!224192 () Bool)

(declare-fun isBalanced!625 (Conc!2345) Bool)

(assert (=> d!224192 (= (inv!8753 (tokens!1223 printableTokens!2)) (isBalanced!625 (c!117581 (tokens!1223 printableTokens!2))))))

(declare-fun bs!84515 () Bool)

(assert (= bs!84515 d!224192))

(declare-fun m!917425 () Bool)

(assert (=> bs!84515 m!917425))

(assert (=> b!646903 d!224192))

(declare-fun d!224194 () Bool)

(declare-fun lt!277143 () Bool)

(declare-fun forall!1798 (List!6937 Int) Bool)

(assert (=> d!224194 (= lt!277143 (forall!1798 (list!2945 (map!1533 lt!277118 lambda!19487)) lambda!19488))))

(declare-fun forall!1799 (Conc!2347 Int) Bool)

(assert (=> d!224194 (= lt!277143 (forall!1799 (c!117583 (map!1533 lt!277118 lambda!19487)) lambda!19488))))

(assert (=> d!224194 (= (forall!1797 (map!1533 lt!277118 lambda!19487) lambda!19488) lt!277143)))

(declare-fun bs!84516 () Bool)

(assert (= bs!84516 d!224194))

(assert (=> bs!84516 m!917353))

(declare-fun m!917427 () Bool)

(assert (=> bs!84516 m!917427))

(assert (=> bs!84516 m!917427))

(declare-fun m!917429 () Bool)

(assert (=> bs!84516 m!917429))

(declare-fun m!917431 () Bool)

(assert (=> bs!84516 m!917431))

(assert (=> b!646876 d!224194))

(declare-fun d!224196 () Bool)

(declare-fun e!397064 () Bool)

(assert (=> d!224196 e!397064))

(declare-fun res!283394 () Bool)

(assert (=> d!224196 (=> (not res!283394) (not e!397064))))

(declare-fun lt!277146 () BalanceConc!4706)

(declare-fun map!1535 (List!6936 Int) List!6937)

(assert (=> d!224196 (= res!283394 (= (list!2945 lt!277146) (map!1535 (list!2944 lt!277118) lambda!19487)))))

(declare-fun map!1536 (Conc!2346 Int) Conc!2347)

(assert (=> d!224196 (= lt!277146 (BalanceConc!4707 (map!1536 (c!117582 lt!277118) lambda!19487)))))

(assert (=> d!224196 (= (map!1533 lt!277118 lambda!19487) lt!277146)))

(declare-fun b!646924 () Bool)

(declare-fun isBalanced!626 (Conc!2347) Bool)

(assert (=> b!646924 (= e!397064 (isBalanced!626 (map!1536 (c!117582 lt!277118) lambda!19487)))))

(assert (= (and d!224196 res!283394) b!646924))

(declare-fun m!917433 () Bool)

(assert (=> d!224196 m!917433))

(assert (=> d!224196 m!917365))

(assert (=> d!224196 m!917365))

(declare-fun m!917435 () Bool)

(assert (=> d!224196 m!917435))

(declare-fun m!917437 () Bool)

(assert (=> d!224196 m!917437))

(assert (=> b!646924 m!917437))

(assert (=> b!646924 m!917437))

(declare-fun m!917439 () Bool)

(assert (=> b!646924 m!917439))

(assert (=> b!646876 d!224196))

(declare-fun bs!84517 () Bool)

(declare-fun b!646935 () Bool)

(assert (= bs!84517 (and b!646935 b!646876)))

(declare-fun lambda!19493 () Int)

(assert (=> bs!84517 (= lambda!19493 lambda!19488)))

(declare-fun bs!84518 () Bool)

(declare-fun d!224198 () Bool)

(assert (= bs!84518 (and d!224198 b!646876)))

(declare-fun lambda!19494 () Int)

(assert (=> bs!84518 (= lambda!19494 lambda!19488)))

(declare-fun bs!84519 () Bool)

(assert (= bs!84519 (and d!224198 b!646935)))

(assert (=> bs!84519 (= lambda!19494 lambda!19493)))

(declare-fun lt!277158 () BalanceConc!4706)

(assert (=> d!224198 (forall!1797 lt!277158 lambda!19494)))

(declare-fun e!397070 () BalanceConc!4706)

(assert (=> d!224198 (= lt!277158 e!397070)))

(declare-fun c!117594 () Bool)

(declare-fun size!5479 (BalanceConc!4708) Int)

(assert (=> d!224198 (= c!117594 (>= (size!5479 (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 0 (BalanceConc!4709 Empty!2348))) 2))))

(assert (=> d!224198 (= (size!5474 printableTokens!2) lt!277115)))

(assert (=> d!224198 (= (slicesMulti!0 printableTokens!2 lt!277115 (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 0 (BalanceConc!4709 Empty!2348)) (BalanceConc!4707 Empty!2347)) lt!277158)))

(declare-fun b!646933 () Bool)

(declare-fun e!397069 () PrintableTokens!148)

(declare-fun call!41958 () PrintableTokens!148)

(assert (=> b!646933 (= e!397069 call!41958)))

(declare-fun lt!277160 () Int)

(declare-fun bm!41953 () Bool)

(declare-fun lt!277157 () Int)

(declare-fun c!117595 () Bool)

(declare-fun slice!47 (PrintableTokens!148 Int Int) PrintableTokens!148)

(assert (=> bm!41953 (= call!41958 (slice!47 printableTokens!2 (ite c!117595 lt!277157 lt!277160) (ite c!117595 (+ lt!277160 1) (+ lt!277157 1))))))

(declare-fun b!646934 () Bool)

(assert (=> b!646934 (= e!397069 call!41958)))

(declare-fun lt!277161 () PrintableTokens!148)

(declare-fun tail!919 (BalanceConc!4708) BalanceConc!4708)

(declare-fun append!228 (BalanceConc!4706 PrintableTokens!148) BalanceConc!4706)

(assert (=> b!646935 (= e!397070 (slicesMulti!0 printableTokens!2 lt!277115 (tail!919 (tail!919 (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 0 (BalanceConc!4709 Empty!2348)))) (append!228 (BalanceConc!4707 Empty!2347) lt!277161)))))

(declare-fun apply!1656 (BalanceConc!4708 Int) Int)

(assert (=> b!646935 (= lt!277157 (apply!1656 (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 0 (BalanceConc!4709 Empty!2348)) 0))))

(assert (=> b!646935 (= lt!277160 (apply!1656 (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 0 (BalanceConc!4709 Empty!2348)) 1))))

(assert (=> b!646935 (= c!117595 (<= lt!277157 lt!277160))))

(assert (=> b!646935 (= lt!277161 e!397069)))

(declare-fun lt!277159 () Unit!12088)

(declare-fun lemmaConcatPreservesForall!54 (List!6937 List!6937 Int) Unit!12088)

(assert (=> b!646935 (= lt!277159 (lemmaConcatPreservesForall!54 (list!2945 (BalanceConc!4707 Empty!2347)) (Cons!6923 lt!277161 Nil!6923) lambda!19493))))

(declare-fun b!646936 () Bool)

(assert (=> b!646936 (= e!397070 (BalanceConc!4707 Empty!2347))))

(assert (= (and d!224198 c!117594) b!646935))

(assert (= (and d!224198 (not c!117594)) b!646936))

(assert (= (and b!646935 c!117595) b!646933))

(assert (= (and b!646935 (not c!117595)) b!646934))

(assert (= (or b!646933 b!646934) bm!41953))

(declare-fun m!917441 () Bool)

(assert (=> d!224198 m!917441))

(assert (=> d!224198 m!917345))

(declare-fun m!917443 () Bool)

(assert (=> d!224198 m!917443))

(assert (=> d!224198 m!917327))

(declare-fun m!917445 () Bool)

(assert (=> bm!41953 m!917445))

(assert (=> b!646935 m!917345))

(declare-fun m!917447 () Bool)

(assert (=> b!646935 m!917447))

(declare-fun m!917449 () Bool)

(assert (=> b!646935 m!917449))

(declare-fun m!917451 () Bool)

(assert (=> b!646935 m!917451))

(declare-fun m!917453 () Bool)

(assert (=> b!646935 m!917453))

(assert (=> b!646935 m!917451))

(assert (=> b!646935 m!917345))

(declare-fun m!917455 () Bool)

(assert (=> b!646935 m!917455))

(assert (=> b!646935 m!917345))

(declare-fun m!917457 () Bool)

(assert (=> b!646935 m!917457))

(assert (=> b!646935 m!917457))

(assert (=> b!646935 m!917449))

(declare-fun m!917459 () Bool)

(assert (=> b!646935 m!917459))

(assert (=> b!646935 m!917459))

(declare-fun m!917461 () Bool)

(assert (=> b!646935 m!917461))

(assert (=> b!646876 d!224198))

(declare-fun d!224200 () Bool)

(declare-fun e!397073 () Bool)

(assert (=> d!224200 e!397073))

(declare-fun res!283397 () Bool)

(assert (=> d!224200 (=> (not res!283397) (not e!397073))))

(declare-fun lt!277164 () BalanceConc!4704)

(declare-fun map!1537 (List!6937 Int) List!6936)

(assert (=> d!224200 (= res!283397 (= (list!2944 lt!277164) (map!1537 (list!2945 lt!277129) lambda!19485)))))

(declare-fun map!1538 (Conc!2347 Int) Conc!2346)

(assert (=> d!224200 (= lt!277164 (BalanceConc!4705 (map!1538 (c!117583 lt!277129) lambda!19485)))))

(assert (=> d!224200 (= (map!1534 lt!277129 lambda!19485) lt!277164)))

(declare-fun b!646939 () Bool)

(declare-fun isBalanced!627 (Conc!2346) Bool)

(assert (=> b!646939 (= e!397073 (isBalanced!627 (map!1538 (c!117583 lt!277129) lambda!19485)))))

(assert (= (and d!224200 res!283397) b!646939))

(declare-fun m!917463 () Bool)

(assert (=> d!224200 m!917463))

(assert (=> d!224200 m!917349))

(assert (=> d!224200 m!917349))

(declare-fun m!917465 () Bool)

(assert (=> d!224200 m!917465))

(declare-fun m!917467 () Bool)

(assert (=> d!224200 m!917467))

(assert (=> b!646939 m!917467))

(assert (=> b!646939 m!917467))

(declare-fun m!917469 () Bool)

(assert (=> b!646939 m!917469))

(assert (=> b!646876 d!224200))

(declare-fun bs!84520 () Bool)

(declare-fun d!224202 () Bool)

(assert (= bs!84520 (and d!224202 b!646876)))

(declare-fun lambda!19499 () Int)

(assert (=> bs!84520 (= lambda!19499 lambda!19486)))

(declare-fun lambda!19500 () Int)

(assert (=> bs!84520 (not (= lambda!19500 lambda!19486))))

(assert (=> d!224202 (not (= lambda!19500 lambda!19499))))

(declare-fun forall!1800 (List!6936 Int) Bool)

(assert (=> d!224202 (forall!1800 lt!277126 lambda!19500)))

(declare-fun lt!277169 () Unit!12088)

(declare-fun e!397076 () Unit!12088)

(assert (=> d!224202 (= lt!277169 e!397076)))

(declare-fun c!117599 () Bool)

(assert (=> d!224202 (= c!117599 ((_ is Nil!6922) lt!277126))))

(assert (=> d!224202 (forall!1800 lt!277126 lambda!19499)))

(assert (=> d!224202 (= (lemmaRemoveIdsPreservesRules!0 lt!277126) lt!277169)))

(declare-fun b!646944 () Bool)

(declare-fun Unit!12090 () Unit!12088)

(assert (=> b!646944 (= e!397076 Unit!12090)))

(declare-fun b!646945 () Bool)

(declare-fun Unit!12091 () Unit!12088)

(assert (=> b!646945 (= e!397076 Unit!12091)))

(declare-fun lt!277170 () Unit!12088)

(assert (=> b!646945 (= lt!277170 (lemmaRemoveIdsPreservesRules!0 (t!85340 lt!277126)))))

(assert (= (and d!224202 c!117599) b!646944))

(assert (= (and d!224202 (not c!117599)) b!646945))

(declare-fun m!917471 () Bool)

(assert (=> d!224202 m!917471))

(declare-fun m!917473 () Bool)

(assert (=> d!224202 m!917473))

(declare-fun m!917475 () Bool)

(assert (=> b!646945 m!917475))

(assert (=> b!646876 d!224202))

(declare-fun bs!84521 () Bool)

(declare-fun d!224204 () Bool)

(assert (= bs!84521 (and d!224204 b!646876)))

(declare-fun lambda!19503 () Int)

(assert (=> bs!84521 (not (= lambda!19503 lambda!19486))))

(declare-fun bs!84522 () Bool)

(assert (= bs!84522 (and d!224204 d!224202)))

(assert (=> bs!84522 (not (= lambda!19503 lambda!19499))))

(assert (=> bs!84522 (not (= lambda!19503 lambda!19500))))

(assert (=> d!224204 true))

(declare-fun order!5203 () Int)

(declare-fun order!5201 () Int)

(declare-fun dynLambda!3776 (Int Int) Int)

(declare-fun dynLambda!3777 (Int Int) Int)

(assert (=> d!224204 (< (dynLambda!3776 order!5201 lambda!19487) (dynLambda!3777 order!5203 lambda!19503))))

(assert (=> d!224204 true))

(declare-fun order!5205 () Int)

(declare-fun dynLambda!3778 (Int Int) Int)

(assert (=> d!224204 (< (dynLambda!3778 order!5205 lambda!19488) (dynLambda!3777 order!5203 lambda!19503))))

(assert (=> d!224204 (forall!1798 (map!1535 lt!277126 lambda!19487) lambda!19488)))

(declare-fun lt!277173 () Unit!12088)

(declare-fun choose!4652 (List!6936 Int Int) Unit!12088)

(assert (=> d!224204 (= lt!277173 (choose!4652 lt!277126 lambda!19487 lambda!19488))))

(assert (=> d!224204 (forall!1800 lt!277126 lambda!19503)))

(assert (=> d!224204 (= (mapPred!63 lt!277126 lambda!19487 lambda!19488) lt!277173)))

(declare-fun bs!84523 () Bool)

(assert (= bs!84523 d!224204))

(declare-fun m!917477 () Bool)

(assert (=> bs!84523 m!917477))

(assert (=> bs!84523 m!917477))

(declare-fun m!917479 () Bool)

(assert (=> bs!84523 m!917479))

(declare-fun m!917481 () Bool)

(assert (=> bs!84523 m!917481))

(declare-fun m!917483 () Bool)

(assert (=> bs!84523 m!917483))

(assert (=> b!646876 d!224204))

(declare-fun bs!84524 () Bool)

(declare-fun d!224206 () Bool)

(assert (= bs!84524 (and d!224206 b!646876)))

(declare-fun lambda!19506 () Int)

(assert (=> bs!84524 (not (= lambda!19506 lambda!19488))))

(declare-fun bs!84525 () Bool)

(assert (= bs!84525 (and d!224206 b!646935)))

(assert (=> bs!84525 (not (= lambda!19506 lambda!19493))))

(declare-fun bs!84526 () Bool)

(assert (= bs!84526 (and d!224206 d!224198)))

(assert (=> bs!84526 (not (= lambda!19506 lambda!19494))))

(assert (=> d!224206 true))

(declare-fun order!5207 () Int)

(declare-fun dynLambda!3779 (Int Int) Int)

(assert (=> d!224206 (< (dynLambda!3779 order!5207 lambda!19485) (dynLambda!3778 order!5205 lambda!19506))))

(assert (=> d!224206 true))

(assert (=> d!224206 (< (dynLambda!3777 order!5203 lambda!19486) (dynLambda!3778 order!5205 lambda!19506))))

(assert (=> d!224206 (forall!1800 (map!1537 lt!277122 lambda!19485) lambda!19486)))

(declare-fun lt!277176 () Unit!12088)

(declare-fun choose!4653 (List!6937 Int Int) Unit!12088)

(assert (=> d!224206 (= lt!277176 (choose!4653 lt!277122 lambda!19485 lambda!19486))))

(assert (=> d!224206 (forall!1798 lt!277122 lambda!19506)))

(assert (=> d!224206 (= (mapPred!64 lt!277122 lambda!19485 lambda!19486) lt!277176)))

(declare-fun bs!84527 () Bool)

(assert (= bs!84527 d!224206))

(declare-fun m!917485 () Bool)

(assert (=> bs!84527 m!917485))

(assert (=> bs!84527 m!917485))

(declare-fun m!917487 () Bool)

(assert (=> bs!84527 m!917487))

(declare-fun m!917489 () Bool)

(assert (=> bs!84527 m!917489))

(declare-fun m!917491 () Bool)

(assert (=> bs!84527 m!917491))

(assert (=> b!646876 d!224206))

(declare-fun d!224208 () Bool)

(declare-fun e!397082 () Bool)

(assert (=> d!224208 e!397082))

(declare-fun res!283400 () Bool)

(assert (=> d!224208 (=> res!283400 e!397082)))

(declare-fun lt!277185 () tuple3!596)

(declare-fun isEmpty!4730 (Option!1667) Bool)

(assert (=> d!224208 (= res!283400 (isEmpty!4730 (_1!4091 lt!277185)))))

(declare-fun e!397081 () Option!1667)

(declare-datatypes ((tuple3!598 0))(
  ( (tuple3!599 (_1!4095 Bool) (_2!4095 CacheUp!308) (_3!350 CacheDown!310)) )
))
(declare-fun lt!277184 () tuple3!598)

(assert (=> d!224208 (= lt!277185 (tuple3!597 e!397081 (_2!4095 lt!277184) (_3!350 lt!277184)))))

(declare-fun c!117602 () Bool)

(assert (=> d!224208 (= c!117602 (not (_1!4095 lt!277184)))))

(declare-fun lt!277183 () BalanceConc!4702)

(declare-fun rulesProduceEachTokenIndividuallyMem!10 (LexerInterface!1259 List!6933 BalanceConc!4702 CacheUp!308 CacheDown!310) tuple3!598)

(assert (=> d!224208 (= lt!277184 (rulesProduceEachTokenIndividuallyMem!10 Lexer!1257 (rules!109 JsonLexer!205) lt!277183 cacheUp!351 cacheDown!364))))

(declare-fun ++!1859 (BalanceConc!4702 BalanceConc!4702) BalanceConc!4702)

(declare-fun singletonSeq!442 (Token!2490) BalanceConc!4702)

(declare-fun apply!1657 (TokenValueInjection!2588 BalanceConc!4700) TokenValue!1418)

(declare-datatypes ((KeywordValueInjection!48 0))(
  ( (KeywordValueInjection!49) )
))
(declare-fun injection!9 (KeywordValueInjection!48) TokenValueInjection!2588)

(declare-fun singletonSeq!443 ((_ BitVec 16)) BalanceConc!4700)

(declare-fun commaRule!0 (JsonLexer!204) Rule!2568)

(declare-datatypes ((WhitespaceValueInjection!44 0))(
  ( (WhitespaceValueInjection!45) )
))
(declare-fun injection!7 (WhitespaceValueInjection!44) TokenValueInjection!2588)

(declare-fun whitespaceRule!0 (JsonLexer!204) Rule!2568)

(assert (=> d!224208 (= lt!277183 (++!1859 (singletonSeq!442 (Token!2491 (apply!1657 (injection!9 KeywordValueInjection!49) (singletonSeq!443 #x002C)) (commaRule!0 JsonLexer!205) 1 (Cons!6916 #x002C Nil!6916))) (singletonSeq!442 (Token!2491 (apply!1657 (injection!7 WhitespaceValueInjection!45) (singletonSeq!443 #x000A)) (whitespaceRule!0 JsonLexer!205) 1 (Cons!6916 #x000A Nil!6916)))))))

(assert (=> d!224208 (not (isEmpty!4727 (rules!109 JsonLexer!205)))))

(assert (=> d!224208 (= (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364) lt!277185)))

(declare-fun b!646960 () Bool)

(assert (=> b!646960 (= e!397081 None!1666)))

(declare-fun b!646961 () Bool)

(declare-fun printableTokensFromTokens!13 (List!6933 BalanceConc!4702) Option!1667)

(assert (=> b!646961 (= e!397081 (printableTokensFromTokens!13 (rules!109 JsonLexer!205) lt!277183))))

(declare-fun b!646962 () Bool)

(declare-fun get!2491 (Option!1667) PrintableTokens!148)

(assert (=> b!646962 (= e!397082 (usesJsonRules!0 (get!2491 (_1!4091 lt!277185))))))

(assert (= (and d!224208 c!117602) b!646960))

(assert (= (and d!224208 (not c!117602)) b!646961))

(assert (= (and d!224208 (not res!283400)) b!646962))

(declare-fun m!917493 () Bool)

(assert (=> d!224208 m!917493))

(declare-fun m!917495 () Bool)

(assert (=> d!224208 m!917495))

(declare-fun m!917497 () Bool)

(assert (=> d!224208 m!917497))

(declare-fun m!917499 () Bool)

(assert (=> d!224208 m!917499))

(declare-fun m!917501 () Bool)

(assert (=> d!224208 m!917501))

(declare-fun m!917503 () Bool)

(assert (=> d!224208 m!917503))

(assert (=> d!224208 m!917495))

(declare-fun m!917505 () Bool)

(assert (=> d!224208 m!917505))

(declare-fun m!917507 () Bool)

(assert (=> d!224208 m!917507))

(assert (=> d!224208 m!917501))

(declare-fun m!917509 () Bool)

(assert (=> d!224208 m!917509))

(assert (=> d!224208 m!917313))

(declare-fun m!917511 () Bool)

(assert (=> d!224208 m!917511))

(assert (=> d!224208 m!917313))

(declare-fun m!917513 () Bool)

(assert (=> d!224208 m!917513))

(declare-fun m!917515 () Bool)

(assert (=> d!224208 m!917515))

(assert (=> d!224208 m!917497))

(assert (=> d!224208 m!917313))

(declare-fun m!917517 () Bool)

(assert (=> d!224208 m!917517))

(assert (=> d!224208 m!917507))

(assert (=> d!224208 m!917493))

(assert (=> d!224208 m!917505))

(declare-fun m!917519 () Bool)

(assert (=> d!224208 m!917519))

(assert (=> b!646961 m!917313))

(assert (=> b!646961 m!917313))

(declare-fun m!917521 () Bool)

(assert (=> b!646961 m!917521))

(declare-fun m!917523 () Bool)

(assert (=> b!646962 m!917523))

(assert (=> b!646962 m!917523))

(declare-fun m!917525 () Bool)

(assert (=> b!646962 m!917525))

(assert (=> b!646876 d!224208))

(declare-fun d!224210 () Bool)

(declare-fun list!2949 (Conc!2347) List!6937)

(assert (=> d!224210 (= (list!2945 lt!277129) (list!2949 (c!117583 lt!277129)))))

(declare-fun bs!84528 () Bool)

(assert (= bs!84528 d!224210))

(declare-fun m!917527 () Bool)

(assert (=> bs!84528 m!917527))

(assert (=> b!646876 d!224210))

(declare-fun b!646985 () Bool)

(assert (=> b!646985 true))

(declare-fun bs!84529 () Bool)

(declare-fun d!224212 () Bool)

(assert (= bs!84529 (and d!224212 b!646985)))

(declare-fun lambda!19512 () Int)

(declare-fun lambda!19511 () Int)

(assert (=> bs!84529 (= lambda!19512 lambda!19511)))

(assert (=> d!224212 true))

(declare-fun bm!41956 () Bool)

(declare-fun c!117610 () Bool)

(declare-fun c!117611 () Bool)

(assert (=> bm!41956 (= c!117610 c!117611)))

(declare-fun e!397096 () BalanceConc!4708)

(declare-fun call!41961 () BalanceConc!4708)

(assert (=> bm!41956 (= call!41961 (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 (+ 0 1) e!397096))))

(declare-fun b!646980 () Bool)

(declare-fun append!229 (BalanceConc!4708 Int) BalanceConc!4708)

(assert (=> b!646980 (= e!397096 (append!229 (BalanceConc!4709 Empty!2348) 0))))

(declare-fun b!646981 () Bool)

(declare-fun e!397097 () Bool)

(assert (=> b!646981 (= e!397097 (<= 0 (size!5477 (tokens!1223 printableTokens!2))))))

(declare-fun b!646982 () Bool)

(declare-fun e!397093 () Bool)

(declare-fun lt!277192 () Token!2490)

(declare-fun isKeywordValue!0 (Token!2490 TokenValue!1418) Bool)

(assert (=> b!646982 (= e!397093 (isKeywordValue!0 lt!277192 RightBrace!1418))))

(declare-fun b!646983 () Bool)

(declare-fun e!397095 () BalanceConc!4708)

(assert (=> b!646983 (= e!397095 call!41961)))

(declare-fun b!646984 () Bool)

(declare-fun e!397094 () BalanceConc!4708)

(assert (=> b!646984 (= e!397094 e!397095)))

(declare-fun apply!1658 (BalanceConc!4702 Int) Token!2490)

(assert (=> b!646984 (= lt!277192 (apply!1658 (tokens!1223 printableTokens!2) 0))))

(declare-fun res!283405 () Bool)

(assert (=> b!646984 (= res!283405 (isKeywordValue!0 lt!277192 LeftBrace!1418))))

(assert (=> b!646984 (=> res!283405 e!397093)))

(assert (=> b!646984 (= c!117611 e!397093)))

(declare-fun lt!277194 () Unit!12088)

(declare-fun lemmaConcatPreservesForall!55 (List!6938 List!6938 Int) Unit!12088)

(declare-fun list!2950 (BalanceConc!4708) List!6938)

(assert (=> b!646985 (= lt!277194 (lemmaConcatPreservesForall!55 (list!2950 (BalanceConc!4709 Empty!2348)) (Cons!6924 0 Nil!6924) lambda!19511))))

(assert (=> b!646985 (= e!397095 call!41961)))

(declare-fun b!646986 () Bool)

(assert (=> b!646986 (= e!397094 (BalanceConc!4709 Empty!2348))))

(declare-fun b!646979 () Bool)

(assert (=> b!646979 (= e!397096 (BalanceConc!4709 Empty!2348))))

(declare-fun lt!277193 () BalanceConc!4708)

(declare-fun forall!1801 (BalanceConc!4708 Int) Bool)

(assert (=> d!224212 (forall!1801 lt!277193 lambda!19512)))

(assert (=> d!224212 (= lt!277193 e!397094)))

(declare-fun c!117609 () Bool)

(assert (=> d!224212 (= c!117609 (>= 0 (size!5477 (tokens!1223 printableTokens!2))))))

(assert (=> d!224212 e!397097))

(declare-fun res!283406 () Bool)

(assert (=> d!224212 (=> (not res!283406) (not e!397097))))

(assert (=> d!224212 (= res!283406 (>= 0 0))))

(assert (=> d!224212 (= (indicesOfOpenBraces!0 (tokens!1223 printableTokens!2) lt!277115 0 (BalanceConc!4709 Empty!2348)) lt!277193)))

(assert (= (and d!224212 res!283406) b!646981))

(assert (= (and d!224212 c!117609) b!646986))

(assert (= (and d!224212 (not c!117609)) b!646984))

(assert (= (and b!646984 (not res!283405)) b!646982))

(assert (= (and b!646984 c!117611) b!646985))

(assert (= (and b!646984 (not c!117611)) b!646983))

(assert (= (or b!646985 b!646983) bm!41956))

(assert (= (and bm!41956 c!117610) b!646980))

(assert (= (and bm!41956 (not c!117610)) b!646979))

(declare-fun m!917529 () Bool)

(assert (=> b!646981 m!917529))

(declare-fun m!917531 () Bool)

(assert (=> b!646982 m!917531))

(declare-fun m!917533 () Bool)

(assert (=> b!646984 m!917533))

(declare-fun m!917535 () Bool)

(assert (=> b!646984 m!917535))

(declare-fun m!917537 () Bool)

(assert (=> b!646985 m!917537))

(assert (=> b!646985 m!917537))

(declare-fun m!917539 () Bool)

(assert (=> b!646985 m!917539))

(declare-fun m!917541 () Bool)

(assert (=> b!646980 m!917541))

(declare-fun m!917543 () Bool)

(assert (=> bm!41956 m!917543))

(declare-fun m!917545 () Bool)

(assert (=> d!224212 m!917545))

(assert (=> d!224212 m!917529))

(assert (=> b!646876 d!224212))

(declare-fun bs!84530 () Bool)

(declare-fun d!224214 () Bool)

(assert (= bs!84530 (and d!224214 b!646876)))

(declare-fun lambda!19517 () Int)

(assert (=> bs!84530 (= lambda!19517 lambda!19488)))

(declare-fun bs!84531 () Bool)

(assert (= bs!84531 (and d!224214 b!646935)))

(assert (=> bs!84531 (= lambda!19517 lambda!19493)))

(declare-fun bs!84532 () Bool)

(assert (= bs!84532 (and d!224214 d!224198)))

(assert (=> bs!84532 (= lambda!19517 lambda!19494)))

(declare-fun bs!84533 () Bool)

(assert (= bs!84533 (and d!224214 d!224206)))

(assert (=> bs!84533 (not (= lambda!19517 lambda!19506))))

(declare-fun lambda!19518 () Int)

(assert (=> bs!84532 (not (= lambda!19518 lambda!19494))))

(assert (=> bs!84530 (not (= lambda!19518 lambda!19488))))

(assert (=> bs!84533 (not (= lambda!19518 lambda!19506))))

(assert (=> bs!84531 (not (= lambda!19518 lambda!19493))))

(assert (=> d!224214 (not (= lambda!19518 lambda!19517))))

(assert (=> d!224214 (forall!1798 lt!277122 lambda!19518)))

(declare-fun lt!277199 () Unit!12088)

(declare-fun e!397100 () Unit!12088)

(assert (=> d!224214 (= lt!277199 e!397100)))

(declare-fun c!117614 () Bool)

(assert (=> d!224214 (= c!117614 ((_ is Nil!6923) lt!277122))))

(assert (=> d!224214 (forall!1798 lt!277122 lambda!19517)))

(assert (=> d!224214 (= (lemmaAddIdsPreservesRules!0 lt!277122) lt!277199)))

(declare-fun b!646993 () Bool)

(declare-fun Unit!12092 () Unit!12088)

(assert (=> b!646993 (= e!397100 Unit!12092)))

(declare-fun b!646994 () Bool)

(declare-fun Unit!12093 () Unit!12088)

(assert (=> b!646994 (= e!397100 Unit!12093)))

(declare-fun lt!277200 () Unit!12088)

(assert (=> b!646994 (= lt!277200 (lemmaAddIdsPreservesRules!0 (t!85341 lt!277122)))))

(assert (= (and d!224214 c!117614) b!646993))

(assert (= (and d!224214 (not c!117614)) b!646994))

(declare-fun m!917547 () Bool)

(assert (=> d!224214 m!917547))

(declare-fun m!917549 () Bool)

(assert (=> d!224214 m!917549))

(declare-fun m!917551 () Bool)

(assert (=> b!646994 m!917551))

(assert (=> b!646876 d!224214))

(declare-fun bs!84534 () Bool)

(declare-fun b!647026 () Bool)

(assert (= bs!84534 (and b!647026 b!646876)))

(declare-fun lambda!19565 () Int)

(assert (=> bs!84534 (not (= lambda!19565 lambda!19486))))

(declare-fun bs!84535 () Bool)

(assert (= bs!84535 (and b!647026 d!224202)))

(assert (=> bs!84535 (not (= lambda!19565 lambda!19499))))

(assert (=> bs!84535 (not (= lambda!19565 lambda!19500))))

(declare-fun bs!84536 () Bool)

(assert (= bs!84536 (and b!647026 d!224204)))

(assert (=> bs!84536 (not (= lambda!19565 lambda!19503))))

(declare-fun b!647038 () Bool)

(declare-fun e!397127 () Bool)

(assert (=> b!647038 (= e!397127 true)))

(declare-fun b!647037 () Bool)

(declare-fun e!397126 () Bool)

(assert (=> b!647037 (= e!397126 e!397127)))

(assert (=> b!647026 e!397126))

(assert (= b!647037 b!647038))

(assert (= b!647026 b!647037))

(declare-fun lambda!19566 () Int)

(assert (=> b!647026 (not (= lambda!19566 lambda!19565))))

(assert (=> bs!84536 (not (= lambda!19566 lambda!19503))))

(assert (=> bs!84534 (not (= lambda!19566 lambda!19486))))

(assert (=> bs!84535 (not (= lambda!19566 lambda!19500))))

(assert (=> bs!84535 (not (= lambda!19566 lambda!19499))))

(declare-fun b!647040 () Bool)

(declare-fun e!397129 () Bool)

(assert (=> b!647040 (= e!397129 true)))

(declare-fun b!647039 () Bool)

(declare-fun e!397128 () Bool)

(assert (=> b!647039 (= e!397128 e!397129)))

(assert (=> b!647026 e!397128))

(assert (= b!647039 b!647040))

(assert (= b!647026 b!647039))

(declare-fun lambda!19567 () Int)

(assert (=> b!647026 (not (= lambda!19567 lambda!19565))))

(assert (=> b!647026 (not (= lambda!19567 lambda!19566))))

(assert (=> bs!84536 (not (= lambda!19567 lambda!19503))))

(assert (=> bs!84534 (not (= lambda!19567 lambda!19486))))

(assert (=> bs!84535 (not (= lambda!19567 lambda!19500))))

(assert (=> bs!84535 (not (= lambda!19567 lambda!19499))))

(declare-fun b!647042 () Bool)

(declare-fun e!397131 () Bool)

(assert (=> b!647042 (= e!397131 true)))

(declare-fun b!647041 () Bool)

(declare-fun e!397130 () Bool)

(assert (=> b!647041 (= e!397130 e!397131)))

(assert (=> b!647026 e!397130))

(assert (= b!647041 b!647042))

(assert (= b!647026 b!647041))

(declare-fun lambda!19568 () Int)

(assert (=> b!647026 (not (= lambda!19568 lambda!19567))))

(assert (=> b!647026 (not (= lambda!19568 lambda!19565))))

(assert (=> b!647026 (not (= lambda!19568 lambda!19566))))

(assert (=> bs!84536 (not (= lambda!19568 lambda!19503))))

(assert (=> bs!84534 (= lambda!19568 lambda!19486)))

(assert (=> bs!84535 (not (= lambda!19568 lambda!19500))))

(assert (=> bs!84535 (= lambda!19568 lambda!19499)))

(declare-fun bs!84537 () Bool)

(declare-fun d!224216 () Bool)

(assert (= bs!84537 (and d!224216 b!647026)))

(declare-fun lambda!19569 () Int)

(assert (=> bs!84537 (= lambda!19569 lambda!19568)))

(assert (=> bs!84537 (not (= lambda!19569 lambda!19567))))

(assert (=> bs!84537 (not (= lambda!19569 lambda!19565))))

(assert (=> bs!84537 (not (= lambda!19569 lambda!19566))))

(declare-fun bs!84538 () Bool)

(assert (= bs!84538 (and d!224216 d!224204)))

(assert (=> bs!84538 (not (= lambda!19569 lambda!19503))))

(declare-fun bs!84539 () Bool)

(assert (= bs!84539 (and d!224216 b!646876)))

(assert (=> bs!84539 (= lambda!19569 lambda!19486)))

(declare-fun bs!84540 () Bool)

(assert (= bs!84540 (and d!224216 d!224202)))

(assert (=> bs!84540 (not (= lambda!19569 lambda!19500))))

(assert (=> bs!84540 (= lambda!19569 lambda!19499)))

(declare-fun lt!277280 () BalanceConc!4704)

(declare-fun forall!1802 (BalanceConc!4704 Int) Bool)

(assert (=> d!224216 (forall!1802 lt!277280 lambda!19569)))

(declare-fun e!397120 () BalanceConc!4704)

(assert (=> d!224216 (= lt!277280 e!397120)))

(declare-fun c!117625 () Bool)

(declare-fun size!5480 (BalanceConc!4704) Int)

(assert (=> d!224216 (= c!117625 (<= (size!5480 (map!1534 lt!277129 lambda!19485)) 1))))

(assert (=> d!224216 (= (sortObjectsByID!0 (map!1534 lt!277129 lambda!19485)) lt!277280)))

(declare-fun b!647019 () Bool)

(assert (=> b!647019 true))

(declare-fun lt!277279 () Unit!12088)

(declare-fun lt!277288 () tuple2!7484)

(declare-fun forallContained!466 (List!6936 Int tuple2!7484) Unit!12088)

(assert (=> b!647019 (= lt!277279 (forallContained!466 (list!2944 (map!1534 lt!277129 lambda!19485)) lambda!19567 lt!277288))))

(declare-fun e!397117 () Unit!12088)

(declare-fun err!696 () Unit!12088)

(assert (=> b!647019 (= e!397117 err!696)))

(declare-fun b!647020 () Bool)

(assert (=> b!647020 true))

(declare-fun lt!277283 () BalanceConc!4704)

(declare-fun lt!277287 () Unit!12088)

(assert (=> b!647020 (= lt!277287 (forallContained!466 (list!2944 lt!277283) lambda!19565 lt!277288))))

(declare-fun e!397118 () Unit!12088)

(declare-fun err!695 () Unit!12088)

(assert (=> b!647020 (= e!397118 err!695)))

(declare-fun b!647021 () Bool)

(declare-fun e!397116 () Bool)

(declare-fun lt!277290 () List!6936)

(declare-fun size!5481 (List!6936) Int)

(declare-fun filter!139 (List!6936 Int) List!6936)

(assert (=> b!647021 (= e!397116 (< (size!5481 (filter!139 lt!277290 lambda!19565)) (size!5481 lt!277290)))))

(declare-fun b!647022 () Bool)

(declare-fun Unit!12094 () Unit!12088)

(assert (=> b!647022 (= e!397118 Unit!12094)))

(declare-fun b!647023 () Bool)

(declare-fun e!397121 () Unit!12088)

(declare-fun Unit!12095 () Unit!12088)

(assert (=> b!647023 (= e!397121 Unit!12095)))

(declare-fun b!647024 () Bool)

(declare-fun e!397115 () Bool)

(declare-fun lt!277304 () List!6936)

(assert (=> b!647024 (= e!397115 (< (size!5481 (filter!139 lt!277304 lambda!19567)) (size!5481 lt!277304)))))

(declare-fun b!647025 () Bool)

(declare-fun Unit!12096 () Unit!12088)

(assert (=> b!647025 (= e!397117 Unit!12096)))

(declare-fun lt!277301 () BalanceConc!4704)

(declare-fun lt!277286 () BalanceConc!4704)

(declare-fun ++!1860 (BalanceConc!4704 BalanceConc!4704) BalanceConc!4704)

(assert (=> b!647026 (= e!397120 (++!1860 (++!1860 (sortObjectsByID!0 lt!277283) lt!277301) (sortObjectsByID!0 lt!277286)))))

(declare-fun apply!1659 (BalanceConc!4704 Int) tuple2!7484)

(assert (=> b!647026 (= lt!277288 (apply!1659 (map!1534 lt!277129 lambda!19485) (ite (>= (size!5480 (map!1534 lt!277129 lambda!19485)) 0) (div (size!5480 (map!1534 lt!277129 lambda!19485)) 2) (- (div (- (size!5480 (map!1534 lt!277129 lambda!19485))) 2)))))))

(declare-fun filter!140 (BalanceConc!4704 Int) BalanceConc!4704)

(assert (=> b!647026 (= lt!277283 (filter!140 (map!1534 lt!277129 lambda!19485) lambda!19565))))

(assert (=> b!647026 (= lt!277301 (filter!140 (map!1534 lt!277129 lambda!19485) lambda!19566))))

(assert (=> b!647026 (= lt!277286 (filter!140 (map!1534 lt!277129 lambda!19485) lambda!19567))))

(declare-fun c!117627 () Bool)

(declare-fun contains!1544 (BalanceConc!4704 tuple2!7484) Bool)

(assert (=> b!647026 (= c!117627 (contains!1544 lt!277283 lt!277288))))

(declare-fun lt!277297 () Unit!12088)

(assert (=> b!647026 (= lt!277297 e!397118)))

(declare-fun c!117626 () Bool)

(assert (=> b!647026 (= c!117626 (forall!1802 (map!1534 lt!277129 lambda!19485) lambda!19565))))

(declare-fun lt!277306 () Unit!12088)

(assert (=> b!647026 (= lt!277306 e!397121)))

(assert (=> b!647026 (= lt!277290 (list!2944 (map!1534 lt!277129 lambda!19485)))))

(declare-fun lt!277307 () Unit!12088)

(declare-fun lemmaNotForallFilterShorter!14 (List!6936 Int) Unit!12088)

(assert (=> b!647026 (= lt!277307 (lemmaNotForallFilterShorter!14 lt!277290 lambda!19565))))

(declare-fun res!283412 () Bool)

(declare-fun isEmpty!4731 (List!6936) Bool)

(assert (=> b!647026 (= res!283412 (isEmpty!4731 lt!277290))))

(assert (=> b!647026 (=> res!283412 e!397116)))

(assert (=> b!647026 e!397116))

(declare-fun lt!277308 () Unit!12088)

(assert (=> b!647026 (= lt!277308 lt!277307)))

(declare-fun c!117629 () Bool)

(assert (=> b!647026 (= c!117629 (contains!1544 lt!277286 lt!277288))))

(declare-fun lt!277302 () Unit!12088)

(declare-fun e!397119 () Unit!12088)

(assert (=> b!647026 (= lt!277302 e!397119)))

(declare-fun c!117628 () Bool)

(assert (=> b!647026 (= c!117628 (forall!1802 (map!1534 lt!277129 lambda!19485) lambda!19567))))

(declare-fun lt!277276 () Unit!12088)

(assert (=> b!647026 (= lt!277276 e!397117)))

(assert (=> b!647026 (= lt!277304 (list!2944 (map!1534 lt!277129 lambda!19485)))))

(declare-fun lt!277294 () Unit!12088)

(assert (=> b!647026 (= lt!277294 (lemmaNotForallFilterShorter!14 lt!277304 lambda!19567))))

(declare-fun res!283411 () Bool)

(assert (=> b!647026 (= res!283411 (isEmpty!4731 lt!277304))))

(assert (=> b!647026 (=> res!283411 e!397115)))

(assert (=> b!647026 e!397115))

(declare-fun lt!277273 () Unit!12088)

(assert (=> b!647026 (= lt!277273 lt!277294)))

(declare-fun lt!277275 () Unit!12088)

(declare-fun filterSubseq!14 (List!6936 Int) Unit!12088)

(assert (=> b!647026 (= lt!277275 (filterSubseq!14 (list!2944 (map!1534 lt!277129 lambda!19485)) lambda!19565))))

(declare-fun lt!277274 () Unit!12088)

(assert (=> b!647026 (= lt!277274 (filterSubseq!14 (list!2944 (map!1534 lt!277129 lambda!19485)) lambda!19566))))

(declare-fun lt!277289 () Unit!12088)

(assert (=> b!647026 (= lt!277289 (filterSubseq!14 (list!2944 (map!1534 lt!277129 lambda!19485)) lambda!19567))))

(declare-fun lt!277291 () List!6936)

(assert (=> b!647026 (= lt!277291 (list!2944 (filter!140 (map!1534 lt!277129 lambda!19485) lambda!19565)))))

(declare-fun lt!277278 () List!6936)

(assert (=> b!647026 (= lt!277278 (list!2944 (map!1534 lt!277129 lambda!19485)))))

(declare-fun lt!277282 () Unit!12088)

(declare-fun lemmaForallSubseq!23 (List!6936 List!6936 Int) Unit!12088)

(assert (=> b!647026 (= lt!277282 (lemmaForallSubseq!23 lt!277291 lt!277278 lambda!19568))))

(assert (=> b!647026 (forall!1800 lt!277291 lambda!19568)))

(declare-fun lt!277277 () Unit!12088)

(assert (=> b!647026 (= lt!277277 lt!277282)))

(declare-fun lt!277281 () List!6936)

(assert (=> b!647026 (= lt!277281 (list!2944 (filter!140 (map!1534 lt!277129 lambda!19485) lambda!19566)))))

(declare-fun lt!277285 () List!6936)

(assert (=> b!647026 (= lt!277285 (list!2944 (map!1534 lt!277129 lambda!19485)))))

(declare-fun lt!277298 () Unit!12088)

(assert (=> b!647026 (= lt!277298 (lemmaForallSubseq!23 lt!277281 lt!277285 lambda!19568))))

(assert (=> b!647026 (forall!1800 lt!277281 lambda!19568)))

(declare-fun lt!277303 () Unit!12088)

(assert (=> b!647026 (= lt!277303 lt!277298)))

(declare-fun lt!277295 () List!6936)

(assert (=> b!647026 (= lt!277295 (list!2944 (filter!140 (map!1534 lt!277129 lambda!19485) lambda!19567)))))

(declare-fun lt!277300 () List!6936)

(assert (=> b!647026 (= lt!277300 (list!2944 (map!1534 lt!277129 lambda!19485)))))

(declare-fun lt!277296 () Unit!12088)

(assert (=> b!647026 (= lt!277296 (lemmaForallSubseq!23 lt!277295 lt!277300 lambda!19568))))

(assert (=> b!647026 (forall!1800 lt!277295 lambda!19568)))

(declare-fun lt!277284 () Unit!12088)

(assert (=> b!647026 (= lt!277284 lt!277296)))

(declare-fun lt!277293 () Unit!12088)

(declare-fun lemmaConcatPreservesForall!56 (List!6936 List!6936 Int) Unit!12088)

(assert (=> b!647026 (= lt!277293 (lemmaConcatPreservesForall!56 (list!2944 (sortObjectsByID!0 lt!277283)) (list!2944 lt!277301) lambda!19568))))

(declare-fun lt!277305 () Unit!12088)

(declare-fun ++!1861 (List!6936 List!6936) List!6936)

(assert (=> b!647026 (= lt!277305 (lemmaConcatPreservesForall!56 (++!1861 (list!2944 (sortObjectsByID!0 lt!277283)) (list!2944 lt!277301)) (list!2944 (sortObjectsByID!0 lt!277286)) lambda!19568))))

(declare-fun b!647027 () Bool)

(assert (=> b!647027 (= e!397120 (map!1534 lt!277129 lambda!19485))))

(declare-fun b!647028 () Bool)

(declare-fun Unit!12097 () Unit!12088)

(assert (=> b!647028 (= e!397119 Unit!12097)))

(declare-fun b!647029 () Bool)

(assert (=> b!647029 true))

(declare-fun lt!277299 () Unit!12088)

(assert (=> b!647029 (= lt!277299 (forallContained!466 (list!2944 (map!1534 lt!277129 lambda!19485)) lambda!19565 lt!277288))))

(declare-fun err!694 () Unit!12088)

(assert (=> b!647029 (= e!397121 err!694)))

(declare-fun b!647030 () Bool)

(assert (=> b!647030 true))

(declare-fun lt!277292 () Unit!12088)

(assert (=> b!647030 (= lt!277292 (forallContained!466 (list!2944 lt!277286) lambda!19567 lt!277288))))

(declare-fun err!697 () Unit!12088)

(assert (=> b!647030 (= e!397119 err!697)))

(assert (= (and d!224216 c!117625) b!647027))

(assert (= (and d!224216 (not c!117625)) b!647026))

(assert (= (and b!647026 c!117627) b!647020))

(assert (= (and b!647026 (not c!117627)) b!647022))

(assert (= (and b!647026 c!117626) b!647029))

(assert (= (and b!647026 (not c!117626)) b!647023))

(assert (= (and b!647026 (not res!283412)) b!647021))

(assert (= (and b!647026 c!117629) b!647030))

(assert (= (and b!647026 (not c!117629)) b!647028))

(assert (= (and b!647026 c!117628) b!647019))

(assert (= (and b!647026 (not c!117628)) b!647025))

(assert (= (and b!647026 (not res!283411)) b!647024))

(declare-fun m!917553 () Bool)

(assert (=> b!647024 m!917553))

(assert (=> b!647024 m!917553))

(declare-fun m!917555 () Bool)

(assert (=> b!647024 m!917555))

(declare-fun m!917557 () Bool)

(assert (=> b!647024 m!917557))

(declare-fun m!917559 () Bool)

(assert (=> b!647021 m!917559))

(assert (=> b!647021 m!917559))

(declare-fun m!917561 () Bool)

(assert (=> b!647021 m!917561))

(declare-fun m!917563 () Bool)

(assert (=> b!647021 m!917563))

(declare-fun m!917565 () Bool)

(assert (=> d!224216 m!917565))

(assert (=> d!224216 m!917361))

(declare-fun m!917567 () Bool)

(assert (=> d!224216 m!917567))

(declare-fun m!917569 () Bool)

(assert (=> b!647020 m!917569))

(assert (=> b!647020 m!917569))

(declare-fun m!917571 () Bool)

(assert (=> b!647020 m!917571))

(assert (=> b!647029 m!917361))

(declare-fun m!917573 () Bool)

(assert (=> b!647029 m!917573))

(assert (=> b!647029 m!917573))

(declare-fun m!917575 () Bool)

(assert (=> b!647029 m!917575))

(assert (=> b!647019 m!917361))

(assert (=> b!647019 m!917573))

(assert (=> b!647019 m!917573))

(declare-fun m!917577 () Bool)

(assert (=> b!647019 m!917577))

(declare-fun m!917579 () Bool)

(assert (=> b!647026 m!917579))

(declare-fun m!917581 () Bool)

(assert (=> b!647026 m!917581))

(declare-fun m!917583 () Bool)

(assert (=> b!647026 m!917583))

(declare-fun m!917585 () Bool)

(assert (=> b!647026 m!917585))

(assert (=> b!647026 m!917361))

(assert (=> b!647026 m!917573))

(declare-fun m!917587 () Bool)

(assert (=> b!647026 m!917587))

(assert (=> b!647026 m!917361))

(declare-fun m!917589 () Bool)

(assert (=> b!647026 m!917589))

(assert (=> b!647026 m!917361))

(declare-fun m!917591 () Bool)

(assert (=> b!647026 m!917591))

(declare-fun m!917593 () Bool)

(assert (=> b!647026 m!917593))

(declare-fun m!917595 () Bool)

(assert (=> b!647026 m!917595))

(declare-fun m!917597 () Bool)

(assert (=> b!647026 m!917597))

(declare-fun m!917599 () Bool)

(assert (=> b!647026 m!917599))

(declare-fun m!917601 () Bool)

(assert (=> b!647026 m!917601))

(declare-fun m!917603 () Bool)

(assert (=> b!647026 m!917603))

(assert (=> b!647026 m!917581))

(assert (=> b!647026 m!917597))

(assert (=> b!647026 m!917603))

(declare-fun m!917605 () Bool)

(assert (=> b!647026 m!917605))

(declare-fun m!917607 () Bool)

(assert (=> b!647026 m!917607))

(declare-fun m!917609 () Bool)

(assert (=> b!647026 m!917609))

(assert (=> b!647026 m!917573))

(declare-fun m!917611 () Bool)

(assert (=> b!647026 m!917611))

(declare-fun m!917613 () Bool)

(assert (=> b!647026 m!917613))

(assert (=> b!647026 m!917573))

(declare-fun m!917615 () Bool)

(assert (=> b!647026 m!917615))

(assert (=> b!647026 m!917595))

(declare-fun m!917617 () Bool)

(assert (=> b!647026 m!917617))

(declare-fun m!917619 () Bool)

(assert (=> b!647026 m!917619))

(declare-fun m!917621 () Bool)

(assert (=> b!647026 m!917621))

(assert (=> b!647026 m!917361))

(assert (=> b!647026 m!917619))

(assert (=> b!647026 m!917573))

(declare-fun m!917623 () Bool)

(assert (=> b!647026 m!917623))

(assert (=> b!647026 m!917617))

(assert (=> b!647026 m!917609))

(declare-fun m!917625 () Bool)

(assert (=> b!647026 m!917625))

(assert (=> b!647026 m!917361))

(assert (=> b!647026 m!917567))

(assert (=> b!647026 m!917361))

(declare-fun m!917627 () Bool)

(assert (=> b!647026 m!917627))

(declare-fun m!917629 () Bool)

(assert (=> b!647026 m!917629))

(assert (=> b!647026 m!917617))

(assert (=> b!647026 m!917609))

(assert (=> b!647026 m!917579))

(declare-fun m!917631 () Bool)

(assert (=> b!647026 m!917631))

(declare-fun m!917633 () Bool)

(assert (=> b!647026 m!917633))

(declare-fun m!917635 () Bool)

(assert (=> b!647026 m!917635))

(assert (=> b!647026 m!917361))

(assert (=> b!647026 m!917633))

(assert (=> b!647026 m!917603))

(declare-fun m!917637 () Bool)

(assert (=> b!647026 m!917637))

(assert (=> b!647026 m!917361))

(assert (=> b!647026 m!917627))

(declare-fun m!917639 () Bool)

(assert (=> b!647026 m!917639))

(assert (=> b!647026 m!917361))

(declare-fun m!917641 () Bool)

(assert (=> b!647026 m!917641))

(assert (=> b!647026 m!917361))

(assert (=> b!647026 m!917633))

(assert (=> b!647026 m!917595))

(declare-fun m!917643 () Bool)

(assert (=> b!647026 m!917643))

(assert (=> b!647026 m!917627))

(declare-fun m!917645 () Bool)

(assert (=> b!647026 m!917645))

(assert (=> b!647026 m!917361))

(assert (=> b!647026 m!917619))

(declare-fun m!917647 () Bool)

(assert (=> b!647030 m!917647))

(assert (=> b!647030 m!917647))

(declare-fun m!917649 () Bool)

(assert (=> b!647030 m!917649))

(assert (=> b!646876 d!224216))

(declare-fun d!224218 () Bool)

(declare-fun list!2951 (Conc!2346) List!6936)

(assert (=> d!224218 (= (list!2944 lt!277118) (list!2951 (c!117582 lt!277118)))))

(declare-fun bs!84541 () Bool)

(assert (= bs!84541 d!224218))

(declare-fun m!917651 () Bool)

(assert (=> bs!84541 m!917651))

(assert (=> b!646876 d!224218))

(declare-fun d!224220 () Bool)

(declare-fun e!397137 () Bool)

(assert (=> d!224220 e!397137))

(declare-fun res!283415 () Bool)

(assert (=> d!224220 (=> res!283415 e!397137)))

(declare-fun lt!277317 () tuple3!596)

(assert (=> d!224220 (= res!283415 (isEmpty!4730 (_1!4091 lt!277317)))))

(declare-fun e!397136 () Option!1667)

(declare-fun lt!277315 () tuple3!598)

(assert (=> d!224220 (= lt!277317 (tuple3!597 e!397136 (_2!4095 lt!277315) (_3!350 lt!277315)))))

(declare-fun c!117632 () Bool)

(assert (=> d!224220 (= c!117632 (not (_1!4095 lt!277315)))))

(declare-fun lt!277316 () BalanceConc!4702)

(assert (=> d!224220 (= lt!277315 (rulesProduceEachTokenIndividuallyMem!10 Lexer!1257 (rules!109 JsonLexer!205) lt!277316 (_2!4091 lt!277131) (_3!349 lt!277131)))))

(declare-fun lBracketRule!0 (JsonLexer!204) Rule!2568)

(assert (=> d!224220 (= lt!277316 (singletonSeq!442 (Token!2491 (apply!1657 (injection!9 KeywordValueInjection!49) (singletonSeq!443 #x005B)) (lBracketRule!0 JsonLexer!205) 1 (Cons!6916 #x005B Nil!6916))))))

(assert (=> d!224220 (not (isEmpty!4727 (rules!109 JsonLexer!205)))))

(assert (=> d!224220 (= (createLeftBracketSeparator!0 (_2!4091 lt!277131) (_3!349 lt!277131)) lt!277317)))

(declare-fun b!647049 () Bool)

(assert (=> b!647049 (= e!397136 None!1666)))

(declare-fun b!647050 () Bool)

(assert (=> b!647050 (= e!397136 (printableTokensFromTokens!13 (rules!109 JsonLexer!205) lt!277316))))

(declare-fun b!647051 () Bool)

(assert (=> b!647051 (= e!397137 (usesJsonRules!0 (get!2491 (_1!4091 lt!277317))))))

(assert (= (and d!224220 c!117632) b!647049))

(assert (= (and d!224220 (not c!117632)) b!647050))

(assert (= (and d!224220 (not res!283415)) b!647051))

(declare-fun m!917653 () Bool)

(assert (=> d!224220 m!917653))

(assert (=> d!224220 m!917493))

(declare-fun m!917655 () Bool)

(assert (=> d!224220 m!917655))

(assert (=> d!224220 m!917313))

(declare-fun m!917657 () Bool)

(assert (=> d!224220 m!917657))

(assert (=> d!224220 m!917493))

(declare-fun m!917659 () Bool)

(assert (=> d!224220 m!917659))

(declare-fun m!917661 () Bool)

(assert (=> d!224220 m!917661))

(assert (=> d!224220 m!917659))

(assert (=> d!224220 m!917313))

(declare-fun m!917663 () Bool)

(assert (=> d!224220 m!917663))

(assert (=> d!224220 m!917313))

(assert (=> d!224220 m!917511))

(assert (=> b!647050 m!917313))

(assert (=> b!647050 m!917313))

(declare-fun m!917665 () Bool)

(assert (=> b!647050 m!917665))

(declare-fun m!917667 () Bool)

(assert (=> b!647051 m!917667))

(assert (=> b!647051 m!917667))

(declare-fun m!917669 () Bool)

(assert (=> b!647051 m!917669))

(assert (=> b!646876 d!224220))

(declare-fun d!224222 () Bool)

(declare-fun e!397142 () Bool)

(assert (=> d!224222 e!397142))

(declare-fun res!283418 () Bool)

(assert (=> d!224222 (=> res!283418 e!397142)))

(declare-fun lt!277326 () tuple3!596)

(assert (=> d!224222 (= res!283418 (isEmpty!4730 (_1!4091 lt!277326)))))

(declare-fun e!397143 () Option!1667)

(declare-fun lt!277325 () tuple3!598)

(assert (=> d!224222 (= lt!277326 (tuple3!597 e!397143 (_2!4095 lt!277325) (_3!350 lt!277325)))))

(declare-fun c!117635 () Bool)

(assert (=> d!224222 (= c!117635 (not (_1!4095 lt!277325)))))

(declare-fun lt!277324 () BalanceConc!4702)

(assert (=> d!224222 (= lt!277325 (rulesProduceEachTokenIndividuallyMem!10 Lexer!1257 (rules!109 JsonLexer!205) lt!277324 (_2!4091 lt!277128) (_3!349 lt!277128)))))

(declare-fun rBracketRule!0 (JsonLexer!204) Rule!2568)

(assert (=> d!224222 (= lt!277324 (singletonSeq!442 (Token!2491 (apply!1657 (injection!9 KeywordValueInjection!49) (singletonSeq!443 #x005D)) (rBracketRule!0 JsonLexer!205) 1 (Cons!6916 #x005D Nil!6916))))))

(assert (=> d!224222 (not (isEmpty!4727 (rules!109 JsonLexer!205)))))

(assert (=> d!224222 (= (createRightBracketSeparator!0 (_2!4091 lt!277128) (_3!349 lt!277128)) lt!277326)))

(declare-fun b!647058 () Bool)

(assert (=> b!647058 (= e!397143 None!1666)))

(declare-fun b!647059 () Bool)

(assert (=> b!647059 (= e!397143 (printableTokensFromTokens!13 (rules!109 JsonLexer!205) lt!277324))))

(declare-fun b!647060 () Bool)

(assert (=> b!647060 (= e!397142 (usesJsonRules!0 (get!2491 (_1!4091 lt!277326))))))

(assert (= (and d!224222 c!117635) b!647058))

(assert (= (and d!224222 (not c!117635)) b!647059))

(assert (= (and d!224222 (not res!283418)) b!647060))

(assert (=> d!224222 m!917493))

(assert (=> d!224222 m!917493))

(declare-fun m!917671 () Bool)

(assert (=> d!224222 m!917671))

(declare-fun m!917673 () Bool)

(assert (=> d!224222 m!917673))

(assert (=> d!224222 m!917671))

(declare-fun m!917675 () Bool)

(assert (=> d!224222 m!917675))

(declare-fun m!917677 () Bool)

(assert (=> d!224222 m!917677))

(assert (=> d!224222 m!917313))

(declare-fun m!917679 () Bool)

(assert (=> d!224222 m!917679))

(assert (=> d!224222 m!917313))

(assert (=> d!224222 m!917511))

(declare-fun m!917681 () Bool)

(assert (=> d!224222 m!917681))

(assert (=> d!224222 m!917313))

(assert (=> b!647059 m!917313))

(assert (=> b!647059 m!917313))

(declare-fun m!917683 () Bool)

(assert (=> b!647059 m!917683))

(declare-fun m!917685 () Bool)

(assert (=> b!647060 m!917685))

(assert (=> b!647060 m!917685))

(declare-fun m!917687 () Bool)

(assert (=> b!647060 m!917687))

(assert (=> b!646876 d!224222))

(declare-fun d!224224 () Bool)

(declare-fun c!117638 () Bool)

(assert (=> d!224224 (= c!117638 ((_ is Node!2345) (c!117581 (tokens!1223 printableTokens!2))))))

(declare-fun e!397148 () Bool)

(assert (=> d!224224 (= (inv!8749 (c!117581 (tokens!1223 printableTokens!2))) e!397148)))

(declare-fun b!647067 () Bool)

(declare-fun inv!8754 (Conc!2345) Bool)

(assert (=> b!647067 (= e!397148 (inv!8754 (c!117581 (tokens!1223 printableTokens!2))))))

(declare-fun b!647068 () Bool)

(declare-fun e!397149 () Bool)

(assert (=> b!647068 (= e!397148 e!397149)))

(declare-fun res!283421 () Bool)

(assert (=> b!647068 (= res!283421 (not ((_ is Leaf!3553) (c!117581 (tokens!1223 printableTokens!2)))))))

(assert (=> b!647068 (=> res!283421 e!397149)))

(declare-fun b!647069 () Bool)

(declare-fun inv!8755 (Conc!2345) Bool)

(assert (=> b!647069 (= e!397149 (inv!8755 (c!117581 (tokens!1223 printableTokens!2))))))

(assert (= (and d!224224 c!117638) b!647067))

(assert (= (and d!224224 (not c!117638)) b!647068))

(assert (= (and b!647068 (not res!283421)) b!647069))

(declare-fun m!917689 () Bool)

(assert (=> b!647067 m!917689))

(declare-fun m!917691 () Bool)

(assert (=> b!647069 m!917691))

(assert (=> b!646886 d!224224))

(declare-fun d!224226 () Bool)

(assert (=> d!224226 (= (array_inv!851 (_keys!970 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) (bvsge (size!5472 (_keys!970 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!646895 d!224226))

(declare-fun d!224228 () Bool)

(assert (=> d!224228 (= (array_inv!853 (_values!955 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) (bvsge (size!5471 (_values!955 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!646895 d!224228))

(declare-fun bs!84542 () Bool)

(declare-fun d!224230 () Bool)

(assert (= bs!84542 (and d!224230 d!224198)))

(declare-fun lambda!19572 () Int)

(assert (=> bs!84542 (= lambda!19572 lambda!19494)))

(declare-fun bs!84543 () Bool)

(assert (= bs!84543 (and d!224230 d!224214)))

(assert (=> bs!84543 (not (= lambda!19572 lambda!19518))))

(declare-fun bs!84544 () Bool)

(assert (= bs!84544 (and d!224230 b!646876)))

(assert (=> bs!84544 (= lambda!19572 lambda!19488)))

(declare-fun bs!84545 () Bool)

(assert (= bs!84545 (and d!224230 d!224206)))

(assert (=> bs!84545 (not (= lambda!19572 lambda!19506))))

(declare-fun bs!84546 () Bool)

(assert (= bs!84546 (and d!224230 b!646935)))

(assert (=> bs!84546 (= lambda!19572 lambda!19493)))

(assert (=> bs!84543 (= lambda!19572 lambda!19517)))

(declare-fun call!41970 () BalanceConc!4706)

(declare-fun lt!277337 () Option!1667)

(declare-fun c!117649 () Bool)

(declare-fun call!41972 () Option!1667)

(declare-fun bm!41965 () Bool)

(declare-fun lt!277335 () Option!1667)

(assert (=> bm!41965 (= call!41972 (recombineSlicesWithSep!0 call!41970 (v!17124 (_1!4091 lt!277131)) (ite c!117649 (v!17124 lt!277335) (v!17124 lt!277337))))))

(declare-fun b!647092 () Bool)

(declare-fun e!397162 () Bool)

(declare-fun lt!277338 () Option!1667)

(assert (=> b!647092 (= e!397162 (usesJsonRules!0 (get!2491 lt!277338)))))

(declare-fun b!647093 () Bool)

(declare-fun e!397167 () Option!1667)

(assert (=> b!647093 (= e!397167 None!1666)))

(declare-fun b!647094 () Bool)

(declare-fun e!397164 () Option!1667)

(assert (=> b!647094 (= e!397164 (Some!1666 (emptyPrintableTokens!16 lt!277125)))))

(declare-fun b!647095 () Bool)

(declare-fun e!397163 () Option!1667)

(declare-fun e!397166 () Option!1667)

(assert (=> b!647095 (= e!397163 e!397166)))

(declare-fun call!41971 () Option!1667)

(assert (=> b!647095 (= lt!277337 call!41971)))

(declare-fun c!117651 () Bool)

(assert (=> b!647095 (= c!117651 ((_ is Some!1666) lt!277337))))

(declare-fun bm!41966 () Bool)

(declare-fun lt!277336 () Option!1667)

(declare-fun call!41973 () PrintableTokens!148)

(declare-fun append!230 (PrintableTokens!148 PrintableTokens!148) Option!1667)

(assert (=> bm!41966 (= call!41971 (append!230 (emptyPrintableTokens!16 lt!277125) (ite c!117649 call!41973 (v!17124 lt!277336))))))

(declare-fun b!647096 () Bool)

(assert (=> b!647096 (= e!397166 None!1666)))

(declare-fun b!647097 () Bool)

(declare-fun c!117650 () Bool)

(assert (=> b!647097 (= c!117650 ((_ is Some!1666) lt!277335))))

(assert (=> b!647097 (= lt!277335 call!41971)))

(declare-fun e!397165 () Option!1667)

(assert (=> b!647097 (= e!397165 e!397167)))

(declare-fun b!647098 () Bool)

(declare-fun c!117652 () Bool)

(assert (=> b!647098 (= c!117652 ((_ is Some!1666) lt!277336))))

(assert (=> b!647098 (= lt!277336 (append!230 call!41973 (v!17124 (_1!4091 lt!277131))))))

(assert (=> b!647098 (= e!397165 e!397163)))

(declare-fun b!647099 () Bool)

(assert (=> b!647099 (= e!397166 call!41972)))

(declare-fun bm!41967 () Bool)

(declare-fun head!1359 (BalanceConc!4706) PrintableTokens!148)

(assert (=> bm!41967 (= call!41973 (head!1359 (map!1533 lt!277118 lambda!19487)))))

(assert (=> d!224230 e!397162))

(declare-fun res!283424 () Bool)

(assert (=> d!224230 (=> res!283424 e!397162)))

(assert (=> d!224230 (= res!283424 (isEmpty!4730 lt!277338))))

(assert (=> d!224230 (= lt!277338 e!397164)))

(declare-fun c!117653 () Bool)

(declare-fun isEmpty!4732 (BalanceConc!4706) Bool)

(assert (=> d!224230 (= c!117653 (isEmpty!4732 (map!1533 lt!277118 lambda!19487)))))

(assert (=> d!224230 (forall!1797 (map!1533 lt!277118 lambda!19487) lambda!19572)))

(assert (=> d!224230 (= (recombineSlicesWithSep!0 (map!1533 lt!277118 lambda!19487) (v!17124 (_1!4091 lt!277131)) (emptyPrintableTokens!16 lt!277125)) lt!277338)))

(declare-fun b!647100 () Bool)

(assert (=> b!647100 (= e!397164 e!397165)))

(declare-fun size!5482 (BalanceConc!4706) Int)

(assert (=> b!647100 (= c!117649 (= (size!5482 (map!1533 lt!277118 lambda!19487)) 1))))

(declare-fun b!647101 () Bool)

(assert (=> b!647101 (= e!397163 None!1666)))

(declare-fun b!647102 () Bool)

(assert (=> b!647102 (= e!397167 call!41972)))

(declare-fun bm!41968 () Bool)

(declare-fun tail!920 (BalanceConc!4706) BalanceConc!4706)

(assert (=> bm!41968 (= call!41970 (tail!920 (map!1533 lt!277118 lambda!19487)))))

(assert (= (and d!224230 c!117653) b!647094))

(assert (= (and d!224230 (not c!117653)) b!647100))

(assert (= (and b!647100 c!117649) b!647097))

(assert (= (and b!647100 (not c!117649)) b!647098))

(assert (= (and b!647097 c!117650) b!647102))

(assert (= (and b!647097 (not c!117650)) b!647093))

(assert (= (and b!647098 c!117652) b!647095))

(assert (= (and b!647098 (not c!117652)) b!647101))

(assert (= (and b!647095 c!117651) b!647099))

(assert (= (and b!647095 (not c!117651)) b!647096))

(assert (= (or b!647097 b!647098) bm!41967))

(assert (= (or b!647102 b!647099) bm!41968))

(assert (= (or b!647097 b!647095) bm!41966))

(assert (= (or b!647102 b!647099) bm!41965))

(assert (= (and d!224230 (not res!283424)) b!647092))

(declare-fun m!917693 () Bool)

(assert (=> b!647092 m!917693))

(assert (=> b!647092 m!917693))

(declare-fun m!917695 () Bool)

(assert (=> b!647092 m!917695))

(assert (=> bm!41968 m!917353))

(declare-fun m!917697 () Bool)

(assert (=> bm!41968 m!917697))

(declare-fun m!917699 () Bool)

(assert (=> d!224230 m!917699))

(assert (=> d!224230 m!917353))

(declare-fun m!917701 () Bool)

(assert (=> d!224230 m!917701))

(assert (=> d!224230 m!917353))

(declare-fun m!917703 () Bool)

(assert (=> d!224230 m!917703))

(assert (=> bm!41966 m!917385))

(declare-fun m!917705 () Bool)

(assert (=> bm!41966 m!917705))

(declare-fun m!917707 () Bool)

(assert (=> b!647098 m!917707))

(assert (=> bm!41967 m!917353))

(declare-fun m!917709 () Bool)

(assert (=> bm!41967 m!917709))

(declare-fun m!917711 () Bool)

(assert (=> bm!41965 m!917711))

(assert (=> b!647100 m!917353))

(declare-fun m!917713 () Bool)

(assert (=> b!647100 m!917713))

(assert (=> b!646896 d!224230))

(assert (=> b!646896 d!224196))

(declare-fun d!224232 () Bool)

(assert (=> d!224232 (isEmpty!4729 (BalanceConc!4703 Empty!2345))))

(assert (=> d!224232 (not (isEmpty!4727 lt!277125))))

(assert (=> d!224232 (= (emptyPrintableTokens!16 lt!277125) (PrintableTokens!149 lt!277125 (BalanceConc!4703 Empty!2345)))))

(declare-fun bs!84547 () Bool)

(assert (= bs!84547 d!224232))

(declare-fun m!917715 () Bool)

(assert (=> bs!84547 m!917715))

(assert (=> bs!84547 m!917311))

(assert (=> b!646896 d!224232))

(declare-fun d!224234 () Bool)

(assert (=> d!224234 (= (usesJsonRules!0 (v!17124 (_1!4091 lt!277131))) (= (rules!8232 (v!17124 (_1!4091 lt!277131))) (rules!109 JsonLexer!205)))))

(declare-fun bs!84548 () Bool)

(assert (= bs!84548 d!224234))

(assert (=> bs!84548 m!917313))

(assert (=> b!646878 d!224234))

(declare-fun d!224236 () Bool)

(assert (=> d!224236 (= (isEmpty!4727 lt!277125) ((_ is Nil!6919) lt!277125))))

(assert (=> b!646887 d!224236))

(declare-fun d!224238 () Bool)

(declare-fun integerLiteralRule!0 (JsonLexer!204) Rule!2568)

(declare-fun floatLiteralRule!0 (JsonLexer!204) Rule!2568)

(declare-fun trueRule!0 (JsonLexer!204) Rule!2568)

(declare-fun falseRule!0 (JsonLexer!204) Rule!2568)

(declare-fun nullRule!0 (JsonLexer!204) Rule!2568)

(declare-fun jsonstringRule!0 (JsonLexer!204) Rule!2568)

(declare-fun lBraceRule!0 (JsonLexer!204) Rule!2568)

(declare-fun rBraceRule!0 (JsonLexer!204) Rule!2568)

(declare-fun colonRule!0 (JsonLexer!204) Rule!2568)

(declare-fun eofRule!0 (JsonLexer!204) Rule!2568)

(assert (=> d!224238 (= (rules!109 JsonLexer!205) (Cons!6919 (whitespaceRule!0 JsonLexer!205) (Cons!6919 (integerLiteralRule!0 JsonLexer!205) (Cons!6919 (floatLiteralRule!0 JsonLexer!205) (Cons!6919 (trueRule!0 JsonLexer!205) (Cons!6919 (falseRule!0 JsonLexer!205) (Cons!6919 (nullRule!0 JsonLexer!205) (Cons!6919 (jsonstringRule!0 JsonLexer!205) (Cons!6919 (lBraceRule!0 JsonLexer!205) (Cons!6919 (rBraceRule!0 JsonLexer!205) (Cons!6919 (lBracketRule!0 JsonLexer!205) (Cons!6919 (rBracketRule!0 JsonLexer!205) (Cons!6919 (colonRule!0 JsonLexer!205) (Cons!6919 (commaRule!0 JsonLexer!205) (Cons!6919 (eofRule!0 JsonLexer!205) Nil!6919)))))))))))))))))

(declare-fun bs!84549 () Bool)

(assert (= bs!84549 d!224238))

(declare-fun m!917717 () Bool)

(assert (=> bs!84549 m!917717))

(declare-fun m!917719 () Bool)

(assert (=> bs!84549 m!917719))

(assert (=> bs!84549 m!917655))

(assert (=> bs!84549 m!917517))

(declare-fun m!917721 () Bool)

(assert (=> bs!84549 m!917721))

(declare-fun m!917723 () Bool)

(assert (=> bs!84549 m!917723))

(declare-fun m!917725 () Bool)

(assert (=> bs!84549 m!917725))

(assert (=> bs!84549 m!917515))

(assert (=> bs!84549 m!917681))

(declare-fun m!917727 () Bool)

(assert (=> bs!84549 m!917727))

(declare-fun m!917729 () Bool)

(assert (=> bs!84549 m!917729))

(declare-fun m!917731 () Bool)

(assert (=> bs!84549 m!917731))

(declare-fun m!917733 () Bool)

(assert (=> bs!84549 m!917733))

(declare-fun m!917735 () Bool)

(assert (=> bs!84549 m!917735))

(assert (=> b!646887 d!224238))

(declare-fun d!224240 () Bool)

(assert (=> d!224240 (= (usesJsonRules!0 printableTokens!2) (= (rules!8232 printableTokens!2) (rules!109 JsonLexer!205)))))

(declare-fun bs!84550 () Bool)

(assert (= bs!84550 d!224240))

(assert (=> bs!84550 m!917313))

(assert (=> b!646880 d!224240))

(declare-fun d!224242 () Bool)

(assert (=> d!224242 (= (size!5474 printableTokens!2) (size!5477 (tokens!1223 printableTokens!2)))))

(declare-fun bs!84551 () Bool)

(assert (= bs!84551 d!224242))

(assert (=> bs!84551 m!917529))

(assert (=> start!63406 d!224242))

(declare-fun d!224244 () Bool)

(declare-fun res!283431 () Bool)

(declare-fun e!397170 () Bool)

(assert (=> d!224244 (=> (not res!283431) (not e!397170))))

(assert (=> d!224244 (= res!283431 (not (isEmpty!4727 (rules!8232 printableTokens!2))))))

(assert (=> d!224244 (= (inv!8750 printableTokens!2) e!397170)))

(declare-fun b!647109 () Bool)

(declare-fun res!283432 () Bool)

(assert (=> b!647109 (=> (not res!283432) (not e!397170))))

(assert (=> b!647109 (= res!283432 (rulesInvariant!1194 Lexer!1257 (rules!8232 printableTokens!2)))))

(declare-fun b!647110 () Bool)

(declare-fun res!283433 () Bool)

(assert (=> b!647110 (=> (not res!283433) (not e!397170))))

(declare-fun rulesProduceEachTokenIndividually!581 (LexerInterface!1259 List!6933 BalanceConc!4702) Bool)

(assert (=> b!647110 (= res!283433 (rulesProduceEachTokenIndividually!581 Lexer!1257 (rules!8232 printableTokens!2) (tokens!1223 printableTokens!2)))))

(declare-fun b!647111 () Bool)

(declare-fun separableTokens!31 (LexerInterface!1259 BalanceConc!4702 List!6933) Bool)

(assert (=> b!647111 (= e!397170 (separableTokens!31 Lexer!1257 (tokens!1223 printableTokens!2) (rules!8232 printableTokens!2)))))

(assert (= (and d!224244 res!283431) b!647109))

(assert (= (and b!647109 res!283432) b!647110))

(assert (= (and b!647110 res!283433) b!647111))

(declare-fun m!917737 () Bool)

(assert (=> d!224244 m!917737))

(declare-fun m!917739 () Bool)

(assert (=> b!647109 m!917739))

(declare-fun m!917741 () Bool)

(assert (=> b!647110 m!917741))

(declare-fun m!917743 () Bool)

(assert (=> b!647111 m!917743))

(assert (=> start!63406 d!224244))

(declare-fun d!224246 () Bool)

(declare-fun res!283436 () Bool)

(declare-fun e!397173 () Bool)

(assert (=> d!224246 (=> (not res!283436) (not e!397173))))

(assert (=> d!224246 (= res!283436 ((_ is HashMap!649) (cache!1036 cacheDown!364)))))

(assert (=> d!224246 (= (inv!8751 cacheDown!364) e!397173)))

(declare-fun b!647114 () Bool)

(declare-fun validCacheMapDown!48 (MutableMap!649) Bool)

(assert (=> b!647114 (= e!397173 (validCacheMapDown!48 (cache!1036 cacheDown!364)))))

(assert (= (and d!224246 res!283436) b!647114))

(declare-fun m!917745 () Bool)

(assert (=> b!647114 m!917745))

(assert (=> start!63406 d!224246))

(declare-fun d!224248 () Bool)

(declare-fun res!283439 () Bool)

(declare-fun e!397176 () Bool)

(assert (=> d!224248 (=> (not res!283439) (not e!397176))))

(assert (=> d!224248 (= res!283439 ((_ is HashMap!648) (cache!1035 cacheUp!351)))))

(assert (=> d!224248 (= (inv!8752 cacheUp!351) e!397176)))

(declare-fun b!647117 () Bool)

(declare-fun validCacheMapUp!48 (MutableMap!648) Bool)

(assert (=> b!647117 (= e!397176 (validCacheMapUp!48 (cache!1035 cacheUp!351)))))

(assert (= (and d!224248 res!283439) b!647117))

(declare-fun m!917747 () Bool)

(assert (=> b!647117 m!917747))

(assert (=> start!63406 d!224248))

(declare-fun d!224250 () Bool)

(assert (=> d!224250 (= (usesJsonRules!0 (v!17124 (_1!4091 lt!277124))) (= (rules!8232 (v!17124 (_1!4091 lt!277124))) (rules!109 JsonLexer!205)))))

(declare-fun bs!84552 () Bool)

(assert (= bs!84552 d!224250))

(assert (=> bs!84552 m!917313))

(assert (=> b!646889 d!224250))

(declare-fun d!224252 () Bool)

(declare-fun e!397182 () Bool)

(assert (=> d!224252 e!397182))

(declare-fun res!283442 () Bool)

(assert (=> d!224252 (=> res!283442 e!397182)))

(declare-fun lt!277346 () Option!1667)

(assert (=> d!224252 (= res!283442 (isEmpty!4730 lt!277346))))

(declare-fun e!397181 () Option!1667)

(assert (=> d!224252 (= lt!277346 e!397181)))

(declare-fun c!117656 () Bool)

(declare-fun lt!277345 () Option!1667)

(assert (=> d!224252 (= c!117656 ((_ is Some!1666) lt!277345))))

(assert (=> d!224252 (= lt!277345 (append!230 (v!17124 (_1!4091 lt!277128)) (v!17124 lt!277121)))))

(assert (=> d!224252 (usesJsonRules!0 (v!17124 lt!277121))))

(assert (=> d!224252 (= (encloseInSep!0 (v!17124 lt!277121) (v!17124 (_1!4091 lt!277128)) (v!17124 (_1!4091 lt!277124))) lt!277346)))

(declare-fun b!647124 () Bool)

(declare-fun lt!277347 () Option!1667)

(assert (=> b!647124 (= e!397181 (ite ((_ is Some!1666) lt!277347) lt!277347 None!1666))))

(assert (=> b!647124 (= lt!277347 (append!230 (v!17124 lt!277345) (v!17124 (_1!4091 lt!277124))))))

(declare-fun b!647125 () Bool)

(assert (=> b!647125 (= e!397181 None!1666)))

(declare-fun b!647126 () Bool)

(assert (=> b!647126 (= e!397182 (usesJsonRules!0 (get!2491 lt!277346)))))

(assert (= (and d!224252 c!117656) b!647124))

(assert (= (and d!224252 (not c!117656)) b!647125))

(assert (= (and d!224252 (not res!283442)) b!647126))

(declare-fun m!917749 () Bool)

(assert (=> d!224252 m!917749))

(declare-fun m!917751 () Bool)

(assert (=> d!224252 m!917751))

(declare-fun m!917753 () Bool)

(assert (=> d!224252 m!917753))

(declare-fun m!917755 () Bool)

(assert (=> b!647124 m!917755))

(declare-fun m!917757 () Bool)

(assert (=> b!647126 m!917757))

(assert (=> b!647126 m!917757))

(declare-fun m!917759 () Bool)

(assert (=> b!647126 m!917759))

(assert (=> b!646888 d!224252))

(declare-fun d!224254 () Bool)

(declare-fun res!283445 () Bool)

(declare-fun e!397185 () Bool)

(assert (=> d!224254 (=> (not res!283445) (not e!397185))))

(declare-fun rulesValid!510 (LexerInterface!1259 List!6933) Bool)

(assert (=> d!224254 (= res!283445 (rulesValid!510 Lexer!1257 lt!277125))))

(assert (=> d!224254 (= (rulesInvariant!1194 Lexer!1257 lt!277125) e!397185)))

(declare-fun b!647129 () Bool)

(declare-datatypes ((List!6939 0))(
  ( (Nil!6925) (Cons!6925 (h!12326 String!8827) (t!85389 List!6939)) )
))
(declare-fun noDuplicateTag!510 (LexerInterface!1259 List!6933 List!6939) Bool)

(assert (=> b!647129 (= e!397185 (noDuplicateTag!510 Lexer!1257 lt!277125 Nil!6925))))

(assert (= (and d!224254 res!283445) b!647129))

(declare-fun m!917761 () Bool)

(assert (=> d!224254 m!917761))

(declare-fun m!917763 () Bool)

(assert (=> b!647129 m!917763))

(assert (=> b!646901 d!224254))

(declare-fun d!224256 () Bool)

(assert (=> d!224256 (= (usesJsonRules!0 (v!17124 (_1!4091 lt!277128))) (= (rules!8232 (v!17124 (_1!4091 lt!277128))) (rules!109 JsonLexer!205)))))

(declare-fun bs!84553 () Bool)

(assert (= bs!84553 d!224256))

(assert (=> bs!84553 m!917313))

(assert (=> b!646900 d!224256))

(declare-fun setNonEmpty!3073 () Bool)

(declare-fun setRes!3074 () Bool)

(declare-fun tp!199803 () Bool)

(declare-fun setElem!3073 () Context!410)

(declare-fun inv!8756 (Context!410) Bool)

(assert (=> setNonEmpty!3073 (= setRes!3074 (and tp!199803 (inv!8756 setElem!3073)))))

(declare-fun mapValue!2688 () List!6932)

(declare-fun setRest!3074 () (InoxSet Context!410))

(assert (=> setNonEmpty!3073 (= (_2!4088 (h!12319 mapValue!2688)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3073 true) setRest!3074))))

(declare-fun e!397202 () Bool)

(declare-fun b!647136 () Bool)

(declare-fun tp!199802 () Bool)

(assert (=> b!647136 (= e!397202 (and (inv!8756 (_1!4087 (_1!4088 (h!12319 mapValue!2688)))) setRes!3074 tp!199802))))

(declare-fun condSetEmpty!3074 () Bool)

(assert (=> b!647136 (= condSetEmpty!3074 (= (_2!4088 (h!12319 mapValue!2688)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setNonEmpty!3074 () Bool)

(declare-fun setRes!3073 () Bool)

(declare-fun tp!199801 () Bool)

(declare-fun setElem!3074 () Context!410)

(assert (=> setNonEmpty!3074 (= setRes!3073 (and tp!199801 (inv!8756 setElem!3074)))))

(declare-fun mapDefault!2688 () List!6932)

(declare-fun setRest!3073 () (InoxSet Context!410))

(assert (=> setNonEmpty!3074 (= (_2!4088 (h!12319 mapDefault!2688)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3074 true) setRest!3073))))

(declare-fun condMapEmpty!2688 () Bool)

(assert (=> mapNonEmpty!2685 (= condMapEmpty!2688 (= mapRest!2685 ((as const (Array (_ BitVec 32) List!6932)) mapDefault!2688)))))

(declare-fun e!397198 () Bool)

(declare-fun mapRes!2688 () Bool)

(assert (=> mapNonEmpty!2685 (= tp!199779 (and e!397198 mapRes!2688))))

(declare-fun mapNonEmpty!2688 () Bool)

(declare-fun tp!199800 () Bool)

(assert (=> mapNonEmpty!2688 (= mapRes!2688 (and tp!199800 e!397202))))

(declare-fun mapKey!2688 () (_ BitVec 32))

(declare-fun mapRest!2688 () (Array (_ BitVec 32) List!6932))

(assert (=> mapNonEmpty!2688 (= mapRest!2685 (store mapRest!2688 mapKey!2688 mapValue!2688))))

(declare-fun b!647137 () Bool)

(declare-fun tp!199804 () Bool)

(assert (=> b!647137 (= e!397198 (and (inv!8756 (_1!4087 (_1!4088 (h!12319 mapDefault!2688)))) setRes!3073 tp!199804))))

(declare-fun condSetEmpty!3073 () Bool)

(assert (=> b!647137 (= condSetEmpty!3073 (= (_2!4088 (h!12319 mapDefault!2688)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3073 () Bool)

(assert (=> setIsEmpty!3073 setRes!3074))

(declare-fun setIsEmpty!3074 () Bool)

(assert (=> setIsEmpty!3074 setRes!3073))

(declare-fun mapIsEmpty!2688 () Bool)

(assert (=> mapIsEmpty!2688 mapRes!2688))

(assert (= (and mapNonEmpty!2685 condMapEmpty!2688) mapIsEmpty!2688))

(assert (= (and mapNonEmpty!2685 (not condMapEmpty!2688)) mapNonEmpty!2688))

(assert (= (and b!647136 condSetEmpty!3074) setIsEmpty!3073))

(assert (= (and b!647136 (not condSetEmpty!3074)) setNonEmpty!3073))

(assert (= (and mapNonEmpty!2688 ((_ is Cons!6918) mapValue!2688)) b!647136))

(assert (= (and b!647137 condSetEmpty!3073) setIsEmpty!3074))

(assert (= (and b!647137 (not condSetEmpty!3073)) setNonEmpty!3074))

(assert (= (and mapNonEmpty!2685 ((_ is Cons!6918) mapDefault!2688)) b!647137))

(declare-fun m!917765 () Bool)

(assert (=> setNonEmpty!3073 m!917765))

(declare-fun m!917767 () Bool)

(assert (=> b!647137 m!917767))

(declare-fun m!917769 () Bool)

(assert (=> b!647136 m!917769))

(declare-fun m!917771 () Bool)

(assert (=> mapNonEmpty!2688 m!917771))

(declare-fun m!917773 () Bool)

(assert (=> setNonEmpty!3074 m!917773))

(declare-fun tp!199810 () Bool)

(declare-fun b!647142 () Bool)

(declare-fun setRes!3077 () Bool)

(declare-fun e!397212 () Bool)

(assert (=> b!647142 (= e!397212 (and (inv!8756 (_1!4087 (_1!4088 (h!12319 mapValue!2684)))) setRes!3077 tp!199810))))

(declare-fun condSetEmpty!3077 () Bool)

(assert (=> b!647142 (= condSetEmpty!3077 (= (_2!4088 (h!12319 mapValue!2684)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3077 () Bool)

(assert (=> setIsEmpty!3077 setRes!3077))

(declare-fun setNonEmpty!3077 () Bool)

(declare-fun tp!199809 () Bool)

(declare-fun setElem!3077 () Context!410)

(assert (=> setNonEmpty!3077 (= setRes!3077 (and tp!199809 (inv!8756 setElem!3077)))))

(declare-fun setRest!3077 () (InoxSet Context!410))

(assert (=> setNonEmpty!3077 (= (_2!4088 (h!12319 mapValue!2684)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3077 true) setRest!3077))))

(assert (=> mapNonEmpty!2685 (= tp!199774 e!397212)))

(assert (= (and b!647142 condSetEmpty!3077) setIsEmpty!3077))

(assert (= (and b!647142 (not condSetEmpty!3077)) setNonEmpty!3077))

(assert (= (and mapNonEmpty!2685 ((_ is Cons!6918) mapValue!2684)) b!647142))

(declare-fun m!917775 () Bool)

(assert (=> b!647142 m!917775))

(declare-fun m!917777 () Bool)

(assert (=> setNonEmpty!3077 m!917777))

(declare-fun e!397220 () Bool)

(declare-fun tp!199816 () Bool)

(declare-fun setRes!3080 () Bool)

(declare-fun b!647147 () Bool)

(assert (=> b!647147 (= e!397220 (and (inv!8756 (_2!4089 (_1!4090 (h!12322 (zeroValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))))) setRes!3080 tp!199816))))

(declare-fun condSetEmpty!3080 () Bool)

(assert (=> b!647147 (= condSetEmpty!3080 (= (_2!4090 (h!12322 (zeroValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3080 () Bool)

(assert (=> setIsEmpty!3080 setRes!3080))

(declare-fun setNonEmpty!3080 () Bool)

(declare-fun tp!199815 () Bool)

(declare-fun setElem!3080 () Context!410)

(assert (=> setNonEmpty!3080 (= setRes!3080 (and tp!199815 (inv!8756 setElem!3080)))))

(declare-fun setRest!3080 () (InoxSet Context!410))

(assert (=> setNonEmpty!3080 (= (_2!4090 (h!12322 (zeroValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3080 true) setRest!3080))))

(assert (=> b!646882 (= tp!199782 e!397220)))

(assert (= (and b!647147 condSetEmpty!3080) setIsEmpty!3080))

(assert (= (and b!647147 (not condSetEmpty!3080)) setNonEmpty!3080))

(assert (= (and b!646882 ((_ is Cons!6921) (zeroValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))) b!647147))

(declare-fun m!917779 () Bool)

(assert (=> b!647147 m!917779))

(declare-fun m!917781 () Bool)

(assert (=> setNonEmpty!3080 m!917781))

(declare-fun e!397223 () Bool)

(declare-fun b!647148 () Bool)

(declare-fun tp!199818 () Bool)

(declare-fun setRes!3081 () Bool)

(assert (=> b!647148 (= e!397223 (and (inv!8756 (_2!4089 (_1!4090 (h!12322 (minValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))))) setRes!3081 tp!199818))))

(declare-fun condSetEmpty!3081 () Bool)

(assert (=> b!647148 (= condSetEmpty!3081 (= (_2!4090 (h!12322 (minValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3081 () Bool)

(assert (=> setIsEmpty!3081 setRes!3081))

(declare-fun setNonEmpty!3081 () Bool)

(declare-fun tp!199817 () Bool)

(declare-fun setElem!3081 () Context!410)

(assert (=> setNonEmpty!3081 (= setRes!3081 (and tp!199817 (inv!8756 setElem!3081)))))

(declare-fun setRest!3081 () (InoxSet Context!410))

(assert (=> setNonEmpty!3081 (= (_2!4090 (h!12322 (minValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3081 true) setRest!3081))))

(assert (=> b!646882 (= tp!199788 e!397223)))

(assert (= (and b!647148 condSetEmpty!3081) setIsEmpty!3081))

(assert (= (and b!647148 (not condSetEmpty!3081)) setNonEmpty!3081))

(assert (= (and b!646882 ((_ is Cons!6921) (minValue!934 (v!17122 (underlying!1537 (v!17123 (underlying!1538 (cache!1036 cacheDown!364)))))))) b!647148))

(declare-fun m!917783 () Bool)

(assert (=> b!647148 m!917783))

(declare-fun m!917785 () Bool)

(assert (=> setNonEmpty!3081 m!917785))

(declare-fun b!647159 () Bool)

(declare-fun b_free!18881 () Bool)

(declare-fun b_next!18937 () Bool)

(assert (=> b!647159 (= b_free!18881 (not b_next!18937))))

(declare-fun tp!199825 () Bool)

(declare-fun b_and!62675 () Bool)

(assert (=> b!647159 (= tp!199825 b_and!62675)))

(declare-fun b_free!18883 () Bool)

(declare-fun b_next!18939 () Bool)

(assert (=> b!647159 (= b_free!18883 (not b_next!18939))))

(declare-fun tp!199826 () Bool)

(declare-fun b_and!62677 () Bool)

(assert (=> b!647159 (= tp!199826 b_and!62677)))

(declare-fun e!397233 () Bool)

(assert (=> b!647159 (= e!397233 (and tp!199825 tp!199826))))

(declare-fun b!647158 () Bool)

(declare-fun e!397234 () Bool)

(declare-fun inv!8747 (String!8827) Bool)

(declare-fun inv!8757 (TokenValueInjection!2588) Bool)

(assert (=> b!647158 (= e!397234 (and (inv!8747 (tag!1646 (h!12320 (rules!8232 printableTokens!2)))) (inv!8757 (transformation!1384 (h!12320 (rules!8232 printableTokens!2)))) e!397233))))

(declare-fun b!647157 () Bool)

(declare-fun e!397236 () Bool)

(declare-fun tp!199827 () Bool)

(assert (=> b!647157 (= e!397236 (and e!397234 tp!199827))))

(assert (=> b!646903 (= tp!199783 e!397236)))

(assert (= b!647158 b!647159))

(assert (= b!647157 b!647158))

(assert (= (and b!646903 ((_ is Cons!6919) (rules!8232 printableTokens!2))) b!647157))

(declare-fun m!917787 () Bool)

(assert (=> b!647158 m!917787))

(declare-fun m!917789 () Bool)

(assert (=> b!647158 m!917789))

(declare-fun setRes!3082 () Bool)

(declare-fun b!647160 () Bool)

(declare-fun tp!199829 () Bool)

(declare-fun e!397238 () Bool)

(assert (=> b!647160 (= e!397238 (and (inv!8756 (_2!4089 (_1!4090 (h!12322 mapDefault!2684)))) setRes!3082 tp!199829))))

(declare-fun condSetEmpty!3082 () Bool)

(assert (=> b!647160 (= condSetEmpty!3082 (= (_2!4090 (h!12322 mapDefault!2684)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3082 () Bool)

(assert (=> setIsEmpty!3082 setRes!3082))

(declare-fun setNonEmpty!3082 () Bool)

(declare-fun tp!199828 () Bool)

(declare-fun setElem!3082 () Context!410)

(assert (=> setNonEmpty!3082 (= setRes!3082 (and tp!199828 (inv!8756 setElem!3082)))))

(declare-fun setRest!3082 () (InoxSet Context!410))

(assert (=> setNonEmpty!3082 (= (_2!4090 (h!12322 mapDefault!2684)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3082 true) setRest!3082))))

(assert (=> b!646884 (= tp!199785 e!397238)))

(assert (= (and b!647160 condSetEmpty!3082) setIsEmpty!3082))

(assert (= (and b!647160 (not condSetEmpty!3082)) setNonEmpty!3082))

(assert (= (and b!646884 ((_ is Cons!6921) mapDefault!2684)) b!647160))

(declare-fun m!917791 () Bool)

(assert (=> b!647160 m!917791))

(declare-fun m!917793 () Bool)

(assert (=> setNonEmpty!3082 m!917793))

(declare-fun setIsEmpty!3087 () Bool)

(declare-fun setRes!3088 () Bool)

(assert (=> setIsEmpty!3087 setRes!3088))

(declare-fun mapIsEmpty!2691 () Bool)

(declare-fun mapRes!2691 () Bool)

(assert (=> mapIsEmpty!2691 mapRes!2691))

(declare-fun mapNonEmpty!2691 () Bool)

(declare-fun tp!199842 () Bool)

(declare-fun e!397252 () Bool)

(assert (=> mapNonEmpty!2691 (= mapRes!2691 (and tp!199842 e!397252))))

(declare-fun mapKey!2691 () (_ BitVec 32))

(declare-fun mapValue!2691 () List!6935)

(declare-fun mapRest!2691 () (Array (_ BitVec 32) List!6935))

(assert (=> mapNonEmpty!2691 (= mapRest!2684 (store mapRest!2691 mapKey!2691 mapValue!2691))))

(declare-fun setNonEmpty!3087 () Bool)

(declare-fun setRes!3087 () Bool)

(declare-fun tp!199841 () Bool)

(declare-fun setElem!3087 () Context!410)

(assert (=> setNonEmpty!3087 (= setRes!3087 (and tp!199841 (inv!8756 setElem!3087)))))

(declare-fun mapDefault!2691 () List!6935)

(declare-fun setRest!3088 () (InoxSet Context!410))

(assert (=> setNonEmpty!3087 (= (_2!4090 (h!12322 mapDefault!2691)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3087 true) setRest!3088))))

(declare-fun setIsEmpty!3088 () Bool)

(assert (=> setIsEmpty!3088 setRes!3087))

(declare-fun b!647167 () Bool)

(declare-fun e!397255 () Bool)

(declare-fun tp!199840 () Bool)

(assert (=> b!647167 (= e!397255 (and (inv!8756 (_2!4089 (_1!4090 (h!12322 mapDefault!2691)))) setRes!3087 tp!199840))))

(declare-fun condSetEmpty!3088 () Bool)

(assert (=> b!647167 (= condSetEmpty!3088 (= (_2!4090 (h!12322 mapDefault!2691)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun tp!199843 () Bool)

(declare-fun b!647168 () Bool)

(assert (=> b!647168 (= e!397252 (and (inv!8756 (_2!4089 (_1!4090 (h!12322 mapValue!2691)))) setRes!3088 tp!199843))))

(declare-fun condSetEmpty!3087 () Bool)

(assert (=> b!647168 (= condSetEmpty!3087 (= (_2!4090 (h!12322 mapValue!2691)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setNonEmpty!3088 () Bool)

(declare-fun tp!199844 () Bool)

(declare-fun setElem!3088 () Context!410)

(assert (=> setNonEmpty!3088 (= setRes!3088 (and tp!199844 (inv!8756 setElem!3088)))))

(declare-fun setRest!3087 () (InoxSet Context!410))

(assert (=> setNonEmpty!3088 (= (_2!4090 (h!12322 mapValue!2691)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3088 true) setRest!3087))))

(declare-fun condMapEmpty!2691 () Bool)

(assert (=> mapNonEmpty!2684 (= condMapEmpty!2691 (= mapRest!2684 ((as const (Array (_ BitVec 32) List!6935)) mapDefault!2691)))))

(assert (=> mapNonEmpty!2684 (= tp!199778 (and e!397255 mapRes!2691))))

(assert (= (and mapNonEmpty!2684 condMapEmpty!2691) mapIsEmpty!2691))

(assert (= (and mapNonEmpty!2684 (not condMapEmpty!2691)) mapNonEmpty!2691))

(assert (= (and b!647168 condSetEmpty!3087) setIsEmpty!3087))

(assert (= (and b!647168 (not condSetEmpty!3087)) setNonEmpty!3088))

(assert (= (and mapNonEmpty!2691 ((_ is Cons!6921) mapValue!2691)) b!647168))

(assert (= (and b!647167 condSetEmpty!3088) setIsEmpty!3088))

(assert (= (and b!647167 (not condSetEmpty!3088)) setNonEmpty!3087))

(assert (= (and mapNonEmpty!2684 ((_ is Cons!6921) mapDefault!2691)) b!647167))

(declare-fun m!917795 () Bool)

(assert (=> b!647167 m!917795))

(declare-fun m!917797 () Bool)

(assert (=> b!647168 m!917797))

(declare-fun m!917799 () Bool)

(assert (=> mapNonEmpty!2691 m!917799))

(declare-fun m!917801 () Bool)

(assert (=> setNonEmpty!3088 m!917801))

(declare-fun m!917803 () Bool)

(assert (=> setNonEmpty!3087 m!917803))

(declare-fun tp!199846 () Bool)

(declare-fun setRes!3089 () Bool)

(declare-fun e!397259 () Bool)

(declare-fun b!647169 () Bool)

(assert (=> b!647169 (= e!397259 (and (inv!8756 (_2!4089 (_1!4090 (h!12322 mapValue!2685)))) setRes!3089 tp!199846))))

(declare-fun condSetEmpty!3089 () Bool)

(assert (=> b!647169 (= condSetEmpty!3089 (= (_2!4090 (h!12322 mapValue!2685)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3089 () Bool)

(assert (=> setIsEmpty!3089 setRes!3089))

(declare-fun setNonEmpty!3089 () Bool)

(declare-fun tp!199845 () Bool)

(declare-fun setElem!3089 () Context!410)

(assert (=> setNonEmpty!3089 (= setRes!3089 (and tp!199845 (inv!8756 setElem!3089)))))

(declare-fun setRest!3089 () (InoxSet Context!410))

(assert (=> setNonEmpty!3089 (= (_2!4090 (h!12322 mapValue!2685)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3089 true) setRest!3089))))

(assert (=> mapNonEmpty!2684 (= tp!199780 e!397259)))

(assert (= (and b!647169 condSetEmpty!3089) setIsEmpty!3089))

(assert (= (and b!647169 (not condSetEmpty!3089)) setNonEmpty!3089))

(assert (= (and mapNonEmpty!2684 ((_ is Cons!6921) mapValue!2685)) b!647169))

(declare-fun m!917805 () Bool)

(assert (=> b!647169 m!917805))

(declare-fun m!917807 () Bool)

(assert (=> setNonEmpty!3089 m!917807))

(declare-fun e!397265 () Bool)

(declare-fun b!647178 () Bool)

(declare-fun tp!199855 () Bool)

(declare-fun tp!199854 () Bool)

(assert (=> b!647178 (= e!397265 (and (inv!8749 (left!5500 (c!117581 (tokens!1223 printableTokens!2)))) tp!199854 (inv!8749 (right!5830 (c!117581 (tokens!1223 printableTokens!2)))) tp!199855))))

(declare-fun b!647180 () Bool)

(declare-fun e!397266 () Bool)

(declare-fun tp!199853 () Bool)

(assert (=> b!647180 (= e!397266 tp!199853)))

(declare-fun b!647179 () Bool)

(declare-fun inv!8758 (IArray!4691) Bool)

(assert (=> b!647179 (= e!397265 (and (inv!8758 (xs!4986 (c!117581 (tokens!1223 printableTokens!2)))) e!397266))))

(assert (=> b!646886 (= tp!199781 (and (inv!8749 (c!117581 (tokens!1223 printableTokens!2))) e!397265))))

(assert (= (and b!646886 ((_ is Node!2345) (c!117581 (tokens!1223 printableTokens!2)))) b!647178))

(assert (= b!647179 b!647180))

(assert (= (and b!646886 ((_ is Leaf!3553) (c!117581 (tokens!1223 printableTokens!2)))) b!647179))

(declare-fun m!917809 () Bool)

(assert (=> b!647178 m!917809))

(declare-fun m!917811 () Bool)

(assert (=> b!647178 m!917811))

(declare-fun m!917813 () Bool)

(assert (=> b!647179 m!917813))

(assert (=> b!646886 m!917315))

(declare-fun tp!199857 () Bool)

(declare-fun b!647181 () Bool)

(declare-fun setRes!3090 () Bool)

(declare-fun e!397269 () Bool)

(assert (=> b!647181 (= e!397269 (and (inv!8756 (_1!4087 (_1!4088 (h!12319 mapDefault!2685)))) setRes!3090 tp!199857))))

(declare-fun condSetEmpty!3090 () Bool)

(assert (=> b!647181 (= condSetEmpty!3090 (= (_2!4088 (h!12319 mapDefault!2685)) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3090 () Bool)

(assert (=> setIsEmpty!3090 setRes!3090))

(declare-fun setNonEmpty!3090 () Bool)

(declare-fun tp!199856 () Bool)

(declare-fun setElem!3090 () Context!410)

(assert (=> setNonEmpty!3090 (= setRes!3090 (and tp!199856 (inv!8756 setElem!3090)))))

(declare-fun setRest!3090 () (InoxSet Context!410))

(assert (=> setNonEmpty!3090 (= (_2!4088 (h!12319 mapDefault!2685)) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3090 true) setRest!3090))))

(assert (=> b!646885 (= tp!199787 e!397269)))

(assert (= (and b!647181 condSetEmpty!3090) setIsEmpty!3090))

(assert (= (and b!647181 (not condSetEmpty!3090)) setNonEmpty!3090))

(assert (= (and b!646885 ((_ is Cons!6918) mapDefault!2685)) b!647181))

(declare-fun m!917815 () Bool)

(assert (=> b!647181 m!917815))

(declare-fun m!917817 () Bool)

(assert (=> setNonEmpty!3090 m!917817))

(declare-fun tp!199859 () Bool)

(declare-fun setRes!3091 () Bool)

(declare-fun b!647182 () Bool)

(declare-fun e!397272 () Bool)

(assert (=> b!647182 (= e!397272 (and (inv!8756 (_1!4087 (_1!4088 (h!12319 (zeroValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))))) setRes!3091 tp!199859))))

(declare-fun condSetEmpty!3091 () Bool)

(assert (=> b!647182 (= condSetEmpty!3091 (= (_2!4088 (h!12319 (zeroValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3091 () Bool)

(assert (=> setIsEmpty!3091 setRes!3091))

(declare-fun setNonEmpty!3091 () Bool)

(declare-fun tp!199858 () Bool)

(declare-fun setElem!3091 () Context!410)

(assert (=> setNonEmpty!3091 (= setRes!3091 (and tp!199858 (inv!8756 setElem!3091)))))

(declare-fun setRest!3091 () (InoxSet Context!410))

(assert (=> setNonEmpty!3091 (= (_2!4088 (h!12319 (zeroValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3091 true) setRest!3091))))

(assert (=> b!646895 (= tp!199775 e!397272)))

(assert (= (and b!647182 condSetEmpty!3091) setIsEmpty!3091))

(assert (= (and b!647182 (not condSetEmpty!3091)) setNonEmpty!3091))

(assert (= (and b!646895 ((_ is Cons!6918) (zeroValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))) b!647182))

(declare-fun m!917819 () Bool)

(assert (=> b!647182 m!917819))

(declare-fun m!917821 () Bool)

(assert (=> setNonEmpty!3091 m!917821))

(declare-fun b!647183 () Bool)

(declare-fun tp!199861 () Bool)

(declare-fun setRes!3092 () Bool)

(declare-fun e!397275 () Bool)

(assert (=> b!647183 (= e!397275 (and (inv!8756 (_1!4087 (_1!4088 (h!12319 (minValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))))) setRes!3092 tp!199861))))

(declare-fun condSetEmpty!3092 () Bool)

(assert (=> b!647183 (= condSetEmpty!3092 (= (_2!4088 (h!12319 (minValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))) ((as const (Array Context!410 Bool)) false)))))

(declare-fun setIsEmpty!3092 () Bool)

(assert (=> setIsEmpty!3092 setRes!3092))

(declare-fun setNonEmpty!3092 () Bool)

(declare-fun tp!199860 () Bool)

(declare-fun setElem!3092 () Context!410)

(assert (=> setNonEmpty!3092 (= setRes!3092 (and tp!199860 (inv!8756 setElem!3092)))))

(declare-fun setRest!3092 () (InoxSet Context!410))

(assert (=> setNonEmpty!3092 (= (_2!4088 (h!12319 (minValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!410 Bool)) false) setElem!3092 true) setRest!3092))))

(assert (=> b!646895 (= tp!199776 e!397275)))

(assert (= (and b!647183 condSetEmpty!3092) setIsEmpty!3092))

(assert (= (and b!647183 (not condSetEmpty!3092)) setNonEmpty!3092))

(assert (= (and b!646895 ((_ is Cons!6918) (minValue!933 (v!17120 (underlying!1535 (v!17121 (underlying!1536 (cache!1035 cacheUp!351)))))))) b!647183))

(declare-fun m!917823 () Bool)

(assert (=> b!647183 m!917823))

(declare-fun m!917825 () Bool)

(assert (=> setNonEmpty!3092 m!917825))

(check-sat (not mapNonEmpty!2691) (not b!646919) (not d!224218) (not d!224202) (not setNonEmpty!3080) (not d!224214) (not b!647180) (not b!647167) (not d!224194) (not b!647157) (not b!647042) (not d!224192) (not bm!41968) (not setNonEmpty!3088) (not d!224254) (not setNonEmpty!3073) (not bm!41965) (not d!224200) (not b!646886) (not b!647051) b_and!62673 (not b!647178) (not b!647041) (not d!224182) (not b!646984) (not d!224204) (not b!647029) (not d!224212) (not b!646939) (not d!224230) (not b!646921) (not b!647067) (not setNonEmpty!3077) (not b!647148) (not d!224238) (not b!647111) (not d!224222) (not setNonEmpty!3091) (not b!647020) (not b!647050) (not b!646981) (not setNonEmpty!3081) (not d!224250) (not setNonEmpty!3092) (not setNonEmpty!3082) (not b!647126) (not b!646920) (not b!647024) (not d!224256) (not b!647109) (not d!224240) (not d!224208) (not b_next!18933) (not bm!41953) (not b!646917) (not b!647039) (not mapNonEmpty!2688) (not b!647160) (not b!646945) (not b!647158) (not b!647182) (not b_next!18935) (not b!647147) (not b!647037) (not b!646994) (not b!647183) (not b!647114) (not d!224244) (not b!646985) (not b_next!18929) (not b!647040) (not b!647026) (not d!224234) (not b!647092) (not d!224198) (not d!224216) (not d!224196) (not b!647136) (not d!224210) (not bm!41966) (not b!647019) (not d!224242) (not b!647100) (not d!224186) (not bm!41956) (not b!647030) (not d!224188) (not b!647181) (not b!646961) (not d!224232) (not setNonEmpty!3090) (not d!224252) (not b!647110) (not b!646982) b_and!62667 (not setNonEmpty!3074) (not setNonEmpty!3087) (not b!646924) b_and!62675 b_and!62671 (not d!224220) (not d!224184) (not b!646935) b_and!62669 b_and!62677 (not b!646906) (not b!647169) (not b!647124) (not b!647059) (not setNonEmpty!3089) (not b!647142) (not d!224206) (not b!647069) (not b!646962) (not b!647129) (not b!647021) (not b!647179) (not b!647098) (not b!647137) (not b!647117) (not bm!41967) (not b_next!18937) (not b!647038) (not b!647060) (not b_next!18931) (not d!224190) (not b_next!18939) (not b!646980) (not b!647168))
(check-sat b_and!62673 (not b_next!18933) (not b_next!18935) (not b_next!18929) b_and!62667 b_and!62675 b_and!62677 (not b_next!18937) (not b_next!18931) (not b_next!18939) b_and!62671 b_and!62669)

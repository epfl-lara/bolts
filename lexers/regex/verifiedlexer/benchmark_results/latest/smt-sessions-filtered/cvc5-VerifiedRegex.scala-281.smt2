; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!5984 () Bool)

(assert start!5984)

(declare-fun b!76782 () Bool)

(declare-fun b_free!2445 () Bool)

(declare-fun b_next!2445 () Bool)

(assert (=> b!76782 (= b_free!2445 (not b_next!2445))))

(declare-fun tp!49625 () Bool)

(declare-fun b_and!3503 () Bool)

(assert (=> b!76782 (= tp!49625 b_and!3503)))

(declare-fun b_free!2447 () Bool)

(declare-fun b_next!2447 () Bool)

(assert (=> b!76782 (= b_free!2447 (not b_next!2447))))

(declare-fun tp!49626 () Bool)

(declare-fun b_and!3505 () Bool)

(assert (=> b!76782 (= tp!49626 b_and!3505)))

(declare-fun res!40136 () Bool)

(declare-fun e!42901 () Bool)

(assert (=> start!5984 (=> (not res!40136) (not e!42901))))

(declare-datatypes ((LexerInterface!184 0))(
  ( (LexerInterfaceExt!181 (__x!1659 Int)) (Lexer!182) )
))
(declare-fun thiss!19403 () LexerInterface!184)

(assert (=> start!5984 (= res!40136 (is-Lexer!182 thiss!19403))))

(assert (=> start!5984 e!42901))

(assert (=> start!5984 true))

(declare-fun e!42898 () Bool)

(assert (=> start!5984 e!42898))

(declare-fun e!42900 () Bool)

(assert (=> start!5984 e!42900))

(declare-fun b!76781 () Bool)

(declare-fun e!42902 () Bool)

(declare-datatypes ((C!1642 0))(
  ( (C!1643 (val!428 Int)) )
))
(declare-datatypes ((List!1342 0))(
  ( (Nil!1336) (Cons!1336 (h!6733 C!1642) (t!20121 List!1342)) )
))
(declare-datatypes ((IArray!773 0))(
  ( (IArray!774 (innerList!444 List!1342)) )
))
(declare-datatypes ((Conc!386 0))(
  ( (Node!386 (left!1013 Conc!386) (right!1343 Conc!386) (csize!1002 Int) (cheight!597 Int)) (Leaf!668 (xs!2965 IArray!773) (csize!1003 Int)) (Empty!386) )
))
(declare-datatypes ((BalanceConc!776 0))(
  ( (BalanceConc!777 (c!19742 Conc!386)) )
))
(declare-datatypes ((Regex!360 0))(
  ( (ElementMatch!360 (c!19743 C!1642)) (Concat!642 (regOne!1232 Regex!360) (regTwo!1232 Regex!360)) (EmptyExpr!360) (Star!360 (reg!689 Regex!360)) (EmptyLang!360) (Union!360 (regOne!1233 Regex!360) (regTwo!1233 Regex!360)) )
))
(declare-datatypes ((String!1803 0))(
  ( (String!1804 (value!11193 String)) )
))
(declare-datatypes ((List!1343 0))(
  ( (Nil!1337) (Cons!1337 (h!6734 (_ BitVec 16)) (t!20122 List!1343)) )
))
(declare-datatypes ((TokenValue!282 0))(
  ( (FloatLiteralValue!564 (text!2419 List!1343)) (TokenValueExt!281 (__x!1660 Int)) (Broken!1410 (value!11194 List!1343)) (Object!287) (End!282) (Def!282) (Underscore!282) (Match!282) (Else!282) (Error!282) (Case!282) (If!282) (Extends!282) (Abstract!282) (Class!282) (Val!282) (DelimiterValue!564 (del!342 List!1343)) (KeywordValue!288 (value!11195 List!1343)) (CommentValue!564 (value!11196 List!1343)) (WhitespaceValue!564 (value!11197 List!1343)) (IndentationValue!282 (value!11198 List!1343)) (String!1805) (Int32!282) (Broken!1411 (value!11199 List!1343)) (Boolean!283) (Unit!804) (OperatorValue!285 (op!342 List!1343)) (IdentifierValue!564 (value!11200 List!1343)) (IdentifierValue!565 (value!11201 List!1343)) (WhitespaceValue!565 (value!11202 List!1343)) (True!564) (False!564) (Broken!1412 (value!11203 List!1343)) (Broken!1413 (value!11204 List!1343)) (True!565) (RightBrace!282) (RightBracket!282) (Colon!282) (Null!282) (Comma!282) (LeftBracket!282) (False!565) (LeftBrace!282) (ImaginaryLiteralValue!282 (text!2420 List!1343)) (StringLiteralValue!846 (value!11205 List!1343)) (EOFValue!282 (value!11206 List!1343)) (IdentValue!282 (value!11207 List!1343)) (DelimiterValue!565 (value!11208 List!1343)) (DedentValue!282 (value!11209 List!1343)) (NewLineValue!282 (value!11210 List!1343)) (IntegerValue!846 (value!11211 (_ BitVec 32)) (text!2421 List!1343)) (IntegerValue!847 (value!11212 Int) (text!2422 List!1343)) (Times!282) (Or!282) (Equal!282) (Minus!282) (Broken!1414 (value!11213 List!1343)) (And!282) (Div!282) (LessEqual!282) (Mod!282) (Concat!643) (Not!282) (Plus!282) (SpaceValue!282 (value!11214 List!1343)) (IntegerValue!848 (value!11215 Int) (text!2423 List!1343)) (StringLiteralValue!847 (text!2424 List!1343)) (FloatLiteralValue!565 (text!2425 List!1343)) (BytesLiteralValue!282 (value!11216 List!1343)) (CommentValue!565 (value!11217 List!1343)) (StringLiteralValue!848 (value!11218 List!1343)) (ErrorTokenValue!282 (msg!343 List!1343)) )
))
(declare-datatypes ((TokenValueInjection!388 0))(
  ( (TokenValueInjection!389 (toValue!799 Int) (toChars!658 Int)) )
))
(declare-datatypes ((Rule!384 0))(
  ( (Rule!385 (regex!292 Regex!360) (tag!470 String!1803) (isSeparator!292 Bool) (transformation!292 TokenValueInjection!388)) )
))
(declare-datatypes ((List!1344 0))(
  ( (Nil!1338) (Cons!1338 (h!6735 Rule!384) (t!20123 List!1344)) )
))
(declare-fun rules!2471 () List!1344)

(declare-fun rulesValidInductive!27 (LexerInterface!184 List!1344) Bool)

(assert (=> b!76781 (= e!42902 (not (rulesValidInductive!27 thiss!19403 rules!2471)))))

(declare-datatypes ((Token!344 0))(
  ( (Token!345 (value!11219 TokenValue!282) (rule!769 Rule!384) (size!1174 Int) (originalCharacters!343 List!1342)) )
))
(declare-datatypes ((List!1345 0))(
  ( (Nil!1339) (Cons!1339 (h!6736 Token!344) (t!20124 List!1345)) )
))
(declare-fun lt!15264 () List!1345)

(declare-fun lt!15268 () List!1342)

(declare-fun lt!15267 () List!1342)

(declare-datatypes ((IArray!775 0))(
  ( (IArray!776 (innerList!445 List!1345)) )
))
(declare-datatypes ((Conc!387 0))(
  ( (Node!387 (left!1014 Conc!387) (right!1344 Conc!387) (csize!1004 Int) (cheight!598 Int)) (Leaf!669 (xs!2966 IArray!775) (csize!1005 Int)) (Empty!387) )
))
(declare-datatypes ((BalanceConc!778 0))(
  ( (BalanceConc!779 (c!19744 Conc!387)) )
))
(declare-datatypes ((tuple2!1316 0))(
  ( (tuple2!1317 (_1!865 BalanceConc!778) (_2!865 BalanceConc!776)) )
))
(declare-fun lt!15266 () tuple2!1316)

(declare-datatypes ((tuple2!1318 0))(
  ( (tuple2!1319 (_1!866 List!1345) (_2!866 List!1342)) )
))
(declare-fun list!412 (BalanceConc!778) List!1345)

(declare-fun tail!99 (List!1345) List!1345)

(assert (=> b!76781 (= (tuple2!1319 (list!412 (_1!865 lt!15266)) lt!15267) (tuple2!1319 (tail!99 lt!15264) lt!15268))))

(declare-datatypes ((Unit!805 0))(
  ( (Unit!806) )
))
(declare-fun lt!15263 () Unit!805)

(declare-fun input!2238 () List!1342)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!3 (LexerInterface!184 List!1344 List!1342 List!1345 List!1342) Unit!805)

(assert (=> b!76781 (= lt!15263 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!3 thiss!19403 rules!2471 input!2238 lt!15264 lt!15268))))

(declare-fun lt!15262 () tuple2!1316)

(declare-fun list!413 (BalanceConc!776) List!1342)

(assert (=> b!76781 (= lt!15268 (list!413 (_2!865 lt!15262)))))

(declare-fun lt!15260 () List!1342)

(declare-datatypes ((tuple2!1320 0))(
  ( (tuple2!1321 (_1!867 Token!344) (_2!867 List!1342)) )
))
(declare-fun lt!15265 () tuple2!1320)

(declare-fun ++!111 (List!1342 List!1342) List!1342)

(assert (=> b!76781 (= (++!111 lt!15260 lt!15267) (_2!867 lt!15265))))

(assert (=> b!76781 (= lt!15267 (list!413 (_2!865 lt!15266)))))

(declare-fun print!23 (LexerInterface!184 BalanceConc!778) BalanceConc!776)

(assert (=> b!76781 (= lt!15260 (list!413 (print!23 thiss!19403 (_1!865 lt!15266))))))

(declare-fun lex!92 (LexerInterface!184 List!1344 BalanceConc!776) tuple2!1316)

(declare-fun seqFromList!96 (List!1342) BalanceConc!776)

(assert (=> b!76781 (= lt!15266 (lex!92 thiss!19403 rules!2471 (seqFromList!96 (_2!867 lt!15265))))))

(declare-fun lt!15261 () Unit!805)

(declare-fun theoremInvertFromString!7 (LexerInterface!184 List!1344 List!1342) Unit!805)

(assert (=> b!76781 (= lt!15261 (theoremInvertFromString!7 thiss!19403 rules!2471 (_2!867 lt!15265)))))

(declare-datatypes ((Option!95 0))(
  ( (None!94) (Some!94 (v!12745 tuple2!1320)) )
))
(declare-fun get!327 (Option!95) tuple2!1320)

(declare-fun maxPrefix!28 (LexerInterface!184 List!1344 List!1342) Option!95)

(assert (=> b!76781 (= lt!15265 (get!327 (maxPrefix!28 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!41 (BalanceConc!778 Token!344) BalanceConc!778)

(declare-fun seqFromList!97 (List!1345) BalanceConc!778)

(assert (=> b!76781 (= lt!15264 (list!412 (prepend!41 (seqFromList!97 (t!20124 lt!15264)) (h!6736 lt!15264))))))

(declare-fun lt!15269 () Unit!805)

(declare-fun seqFromListBHdTlConstructive!15 (Token!344 List!1345 BalanceConc!778) Unit!805)

(assert (=> b!76781 (= lt!15269 (seqFromListBHdTlConstructive!15 (h!6736 lt!15264) (t!20124 lt!15264) (_1!865 lt!15262)))))

(declare-fun e!42896 () Bool)

(assert (=> b!76782 (= e!42896 (and tp!49625 tp!49626))))

(declare-fun b!76783 () Bool)

(declare-fun tp_is_empty!643 () Bool)

(declare-fun tp!49629 () Bool)

(assert (=> b!76783 (= e!42900 (and tp_is_empty!643 tp!49629))))

(declare-fun b!76784 () Bool)

(declare-fun e!42895 () Bool)

(declare-fun tp!49628 () Bool)

(assert (=> b!76784 (= e!42898 (and e!42895 tp!49628))))

(declare-fun b!76785 () Bool)

(declare-fun res!40135 () Bool)

(assert (=> b!76785 (=> (not res!40135) (not e!42901))))

(declare-fun rulesInvariant!178 (LexerInterface!184 List!1344) Bool)

(assert (=> b!76785 (= res!40135 (rulesInvariant!178 thiss!19403 rules!2471))))

(declare-fun tp!49627 () Bool)

(declare-fun b!76786 () Bool)

(declare-fun inv!1709 (String!1803) Bool)

(declare-fun inv!1712 (TokenValueInjection!388) Bool)

(assert (=> b!76786 (= e!42895 (and tp!49627 (inv!1709 (tag!470 (h!6735 rules!2471))) (inv!1712 (transformation!292 (h!6735 rules!2471))) e!42896))))

(declare-fun b!76787 () Bool)

(declare-fun e!42897 () Bool)

(assert (=> b!76787 (= e!42901 e!42897)))

(declare-fun res!40134 () Bool)

(assert (=> b!76787 (=> (not res!40134) (not e!42897))))

(declare-fun isEmpty!392 (BalanceConc!776) Bool)

(assert (=> b!76787 (= res!40134 (not (isEmpty!392 (_2!865 lt!15262))))))

(assert (=> b!76787 (= lt!15262 (lex!92 thiss!19403 rules!2471 (seqFromList!96 input!2238)))))

(declare-fun b!76788 () Bool)

(declare-fun res!40133 () Bool)

(assert (=> b!76788 (=> (not res!40133) (not e!42901))))

(declare-fun isEmpty!393 (List!1344) Bool)

(assert (=> b!76788 (= res!40133 (not (isEmpty!393 rules!2471)))))

(declare-fun b!76789 () Bool)

(assert (=> b!76789 (= e!42897 e!42902)))

(declare-fun res!40137 () Bool)

(assert (=> b!76789 (=> (not res!40137) (not e!42902))))

(declare-fun lt!15259 () Bool)

(assert (=> b!76789 (= res!40137 (and (or lt!15259 (not (is-Nil!1339 (t!20124 lt!15264)))) (not lt!15259)))))

(assert (=> b!76789 (= lt!15259 (not (is-Cons!1339 lt!15264)))))

(assert (=> b!76789 (= lt!15264 (list!412 (_1!865 lt!15262)))))

(assert (= (and start!5984 res!40136) b!76788))

(assert (= (and b!76788 res!40133) b!76785))

(assert (= (and b!76785 res!40135) b!76787))

(assert (= (and b!76787 res!40134) b!76789))

(assert (= (and b!76789 res!40137) b!76781))

(assert (= b!76786 b!76782))

(assert (= b!76784 b!76786))

(assert (= (and start!5984 (is-Cons!1338 rules!2471)) b!76784))

(assert (= (and start!5984 (is-Cons!1336 input!2238)) b!76783))

(declare-fun m!48922 () Bool)

(assert (=> b!76788 m!48922))

(declare-fun m!48924 () Bool)

(assert (=> b!76789 m!48924))

(declare-fun m!48926 () Bool)

(assert (=> b!76786 m!48926))

(declare-fun m!48928 () Bool)

(assert (=> b!76786 m!48928))

(declare-fun m!48930 () Bool)

(assert (=> b!76785 m!48930))

(declare-fun m!48932 () Bool)

(assert (=> b!76781 m!48932))

(assert (=> b!76781 m!48932))

(declare-fun m!48934 () Bool)

(assert (=> b!76781 m!48934))

(declare-fun m!48936 () Bool)

(assert (=> b!76781 m!48936))

(declare-fun m!48938 () Bool)

(assert (=> b!76781 m!48938))

(declare-fun m!48940 () Bool)

(assert (=> b!76781 m!48940))

(declare-fun m!48942 () Bool)

(assert (=> b!76781 m!48942))

(declare-fun m!48944 () Bool)

(assert (=> b!76781 m!48944))

(declare-fun m!48946 () Bool)

(assert (=> b!76781 m!48946))

(declare-fun m!48948 () Bool)

(assert (=> b!76781 m!48948))

(assert (=> b!76781 m!48936))

(declare-fun m!48950 () Bool)

(assert (=> b!76781 m!48950))

(declare-fun m!48952 () Bool)

(assert (=> b!76781 m!48952))

(declare-fun m!48954 () Bool)

(assert (=> b!76781 m!48954))

(assert (=> b!76781 m!48952))

(declare-fun m!48956 () Bool)

(assert (=> b!76781 m!48956))

(assert (=> b!76781 m!48956))

(assert (=> b!76781 m!48940))

(declare-fun m!48958 () Bool)

(assert (=> b!76781 m!48958))

(declare-fun m!48960 () Bool)

(assert (=> b!76781 m!48960))

(declare-fun m!48962 () Bool)

(assert (=> b!76781 m!48962))

(declare-fun m!48964 () Bool)

(assert (=> b!76781 m!48964))

(declare-fun m!48966 () Bool)

(assert (=> b!76781 m!48966))

(declare-fun m!48968 () Bool)

(assert (=> b!76787 m!48968))

(declare-fun m!48970 () Bool)

(assert (=> b!76787 m!48970))

(assert (=> b!76787 m!48970))

(declare-fun m!48972 () Bool)

(assert (=> b!76787 m!48972))

(push 1)

(assert tp_is_empty!643)

(assert b_and!3503)

(assert (not b_next!2445))

(assert (not b!76781))

(assert b_and!3505)

(assert (not b_next!2447))

(assert (not b!76784))

(assert (not b!76787))

(assert (not b!76788))

(assert (not b!76783))

(assert (not b!76785))

(assert (not b!76786))

(assert (not b!76789))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3505)

(assert b_and!3503)

(assert (not b_next!2447))

(assert (not b_next!2445))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13646 () Bool)

(declare-fun lt!15305 () Bool)

(declare-fun isEmpty!396 (List!1342) Bool)

(assert (=> d!13646 (= lt!15305 (isEmpty!396 (list!413 (_2!865 lt!15262))))))

(declare-fun isEmpty!397 (Conc!386) Bool)

(assert (=> d!13646 (= lt!15305 (isEmpty!397 (c!19742 (_2!865 lt!15262))))))

(assert (=> d!13646 (= (isEmpty!392 (_2!865 lt!15262)) lt!15305)))

(declare-fun bs!7965 () Bool)

(assert (= bs!7965 d!13646))

(assert (=> bs!7965 m!48962))

(assert (=> bs!7965 m!48962))

(declare-fun m!49026 () Bool)

(assert (=> bs!7965 m!49026))

(declare-fun m!49028 () Bool)

(assert (=> bs!7965 m!49028))

(assert (=> b!76787 d!13646))

(declare-fun d!13652 () Bool)

(declare-fun e!42939 () Bool)

(assert (=> d!13652 e!42939))

(declare-fun res!40175 () Bool)

(assert (=> d!13652 (=> (not res!40175) (not e!42939))))

(declare-fun e!42940 () Bool)

(assert (=> d!13652 (= res!40175 e!42940)))

(declare-fun c!19751 () Bool)

(declare-fun lt!15311 () tuple2!1316)

(declare-fun size!1176 (BalanceConc!778) Int)

(assert (=> d!13652 (= c!19751 (> (size!1176 (_1!865 lt!15311)) 0))))

(declare-fun lexTailRecV2!32 (LexerInterface!184 List!1344 BalanceConc!776 BalanceConc!776 BalanceConc!776 BalanceConc!778) tuple2!1316)

(assert (=> d!13652 (= lt!15311 (lexTailRecV2!32 thiss!19403 rules!2471 (seqFromList!96 input!2238) (BalanceConc!777 Empty!386) (seqFromList!96 input!2238) (BalanceConc!779 Empty!387)))))

(assert (=> d!13652 (= (lex!92 thiss!19403 rules!2471 (seqFromList!96 input!2238)) lt!15311)))

(declare-fun b!76833 () Bool)

(declare-fun e!42941 () Bool)

(assert (=> b!76833 (= e!42940 e!42941)))

(declare-fun res!40173 () Bool)

(declare-fun size!1177 (BalanceConc!776) Int)

(assert (=> b!76833 (= res!40173 (< (size!1177 (_2!865 lt!15311)) (size!1177 (seqFromList!96 input!2238))))))

(assert (=> b!76833 (=> (not res!40173) (not e!42941))))

(declare-fun b!76834 () Bool)

(declare-fun res!40174 () Bool)

(assert (=> b!76834 (=> (not res!40174) (not e!42939))))

(declare-fun lexList!35 (LexerInterface!184 List!1344 List!1342) tuple2!1318)

(assert (=> b!76834 (= res!40174 (= (list!412 (_1!865 lt!15311)) (_1!866 (lexList!35 thiss!19403 rules!2471 (list!413 (seqFromList!96 input!2238))))))))

(declare-fun b!76835 () Bool)

(declare-fun isEmpty!398 (BalanceConc!778) Bool)

(assert (=> b!76835 (= e!42941 (not (isEmpty!398 (_1!865 lt!15311))))))

(declare-fun b!76836 () Bool)

(assert (=> b!76836 (= e!42940 (= (_2!865 lt!15311) (seqFromList!96 input!2238)))))

(declare-fun b!76837 () Bool)

(assert (=> b!76837 (= e!42939 (= (list!413 (_2!865 lt!15311)) (_2!866 (lexList!35 thiss!19403 rules!2471 (list!413 (seqFromList!96 input!2238))))))))

(assert (= (and d!13652 c!19751) b!76833))

(assert (= (and d!13652 (not c!19751)) b!76836))

(assert (= (and b!76833 res!40173) b!76835))

(assert (= (and d!13652 res!40175) b!76834))

(assert (= (and b!76834 res!40174) b!76837))

(declare-fun m!49044 () Bool)

(assert (=> b!76837 m!49044))

(assert (=> b!76837 m!48970))

(declare-fun m!49046 () Bool)

(assert (=> b!76837 m!49046))

(assert (=> b!76837 m!49046))

(declare-fun m!49048 () Bool)

(assert (=> b!76837 m!49048))

(declare-fun m!49050 () Bool)

(assert (=> b!76834 m!49050))

(assert (=> b!76834 m!48970))

(assert (=> b!76834 m!49046))

(assert (=> b!76834 m!49046))

(assert (=> b!76834 m!49048))

(declare-fun m!49052 () Bool)

(assert (=> d!13652 m!49052))

(assert (=> d!13652 m!48970))

(assert (=> d!13652 m!48970))

(declare-fun m!49054 () Bool)

(assert (=> d!13652 m!49054))

(declare-fun m!49056 () Bool)

(assert (=> b!76833 m!49056))

(assert (=> b!76833 m!48970))

(declare-fun m!49058 () Bool)

(assert (=> b!76833 m!49058))

(declare-fun m!49060 () Bool)

(assert (=> b!76835 m!49060))

(assert (=> b!76787 d!13652))

(declare-fun d!13662 () Bool)

(declare-fun fromListB!29 (List!1342) BalanceConc!776)

(assert (=> d!13662 (= (seqFromList!96 input!2238) (fromListB!29 input!2238))))

(declare-fun bs!7968 () Bool)

(assert (= bs!7968 d!13662))

(declare-fun m!49062 () Bool)

(assert (=> bs!7968 m!49062))

(assert (=> b!76787 d!13662))

(declare-fun d!13664 () Bool)

(assert (=> d!13664 (= (isEmpty!393 rules!2471) (is-Nil!1338 rules!2471))))

(assert (=> b!76788 d!13664))

(declare-fun d!13666 () Bool)

(declare-fun list!416 (Conc!387) List!1345)

(assert (=> d!13666 (= (list!412 (_1!865 lt!15262)) (list!416 (c!19744 (_1!865 lt!15262))))))

(declare-fun bs!7969 () Bool)

(assert (= bs!7969 d!13666))

(declare-fun m!49064 () Bool)

(assert (=> bs!7969 m!49064))

(assert (=> b!76789 d!13666))

(declare-fun d!13668 () Bool)

(declare-fun res!40178 () Bool)

(declare-fun e!42944 () Bool)

(assert (=> d!13668 (=> (not res!40178) (not e!42944))))

(declare-fun rulesValid!54 (LexerInterface!184 List!1344) Bool)

(assert (=> d!13668 (= res!40178 (rulesValid!54 thiss!19403 rules!2471))))

(assert (=> d!13668 (= (rulesInvariant!178 thiss!19403 rules!2471) e!42944)))

(declare-fun b!76840 () Bool)

(declare-datatypes ((List!1350 0))(
  ( (Nil!1344) (Cons!1344 (h!6741 String!1803) (t!20129 List!1350)) )
))
(declare-fun noDuplicateTag!54 (LexerInterface!184 List!1344 List!1350) Bool)

(assert (=> b!76840 (= e!42944 (noDuplicateTag!54 thiss!19403 rules!2471 Nil!1344))))

(assert (= (and d!13668 res!40178) b!76840))

(declare-fun m!49066 () Bool)

(assert (=> d!13668 m!49066))

(declare-fun m!49068 () Bool)

(assert (=> b!76840 m!49068))

(assert (=> b!76785 d!13668))

(declare-fun d!13670 () Bool)

(assert (=> d!13670 (= (inv!1709 (tag!470 (h!6735 rules!2471))) (= (mod (str.len (value!11193 (tag!470 (h!6735 rules!2471)))) 2) 0))))

(assert (=> b!76786 d!13670))

(declare-fun d!13672 () Bool)

(declare-fun res!40181 () Bool)

(declare-fun e!42947 () Bool)

(assert (=> d!13672 (=> (not res!40181) (not e!42947))))

(declare-fun semiInverseModEq!46 (Int Int) Bool)

(assert (=> d!13672 (= res!40181 (semiInverseModEq!46 (toChars!658 (transformation!292 (h!6735 rules!2471))) (toValue!799 (transformation!292 (h!6735 rules!2471)))))))

(assert (=> d!13672 (= (inv!1712 (transformation!292 (h!6735 rules!2471))) e!42947)))

(declare-fun b!76843 () Bool)

(declare-fun equivClasses!42 (Int Int) Bool)

(assert (=> b!76843 (= e!42947 (equivClasses!42 (toChars!658 (transformation!292 (h!6735 rules!2471))) (toValue!799 (transformation!292 (h!6735 rules!2471)))))))

(assert (= (and d!13672 res!40181) b!76843))

(declare-fun m!49070 () Bool)

(assert (=> d!13672 m!49070))

(declare-fun m!49072 () Bool)

(assert (=> b!76843 m!49072))

(assert (=> b!76786 d!13672))

(declare-fun b!76862 () Bool)

(declare-fun res!40201 () Bool)

(declare-fun e!42955 () Bool)

(assert (=> b!76862 (=> (not res!40201) (not e!42955))))

(declare-fun lt!15324 () Option!95)

(declare-fun charsOf!31 (Token!344) BalanceConc!776)

(assert (=> b!76862 (= res!40201 (= (list!413 (charsOf!31 (_1!867 (get!327 lt!15324)))) (originalCharacters!343 (_1!867 (get!327 lt!15324)))))))

(declare-fun b!76863 () Bool)

(declare-fun e!42956 () Option!95)

(declare-fun call!3651 () Option!95)

(assert (=> b!76863 (= e!42956 call!3651)))

(declare-fun b!76864 () Bool)

(declare-fun res!40202 () Bool)

(assert (=> b!76864 (=> (not res!40202) (not e!42955))))

(assert (=> b!76864 (= res!40202 (= (++!111 (list!413 (charsOf!31 (_1!867 (get!327 lt!15324)))) (_2!867 (get!327 lt!15324))) input!2238))))

(declare-fun bm!3646 () Bool)

(declare-fun maxPrefixOneRule!8 (LexerInterface!184 Rule!384 List!1342) Option!95)

(assert (=> bm!3646 (= call!3651 (maxPrefixOneRule!8 thiss!19403 (h!6735 rules!2471) input!2238))))

(declare-fun b!76865 () Bool)

(declare-fun res!40198 () Bool)

(assert (=> b!76865 (=> (not res!40198) (not e!42955))))

(declare-fun matchR!12 (Regex!360 List!1342) Bool)

(assert (=> b!76865 (= res!40198 (matchR!12 (regex!292 (rule!769 (_1!867 (get!327 lt!15324)))) (list!413 (charsOf!31 (_1!867 (get!327 lt!15324))))))))

(declare-fun b!76866 () Bool)

(declare-fun e!42954 () Bool)

(assert (=> b!76866 (= e!42954 e!42955)))

(declare-fun res!40199 () Bool)

(assert (=> b!76866 (=> (not res!40199) (not e!42955))))

(declare-fun isDefined!20 (Option!95) Bool)

(assert (=> b!76866 (= res!40199 (isDefined!20 lt!15324))))

(declare-fun b!76867 () Bool)

(declare-fun res!40197 () Bool)

(assert (=> b!76867 (=> (not res!40197) (not e!42955))))

(declare-fun apply!176 (TokenValueInjection!388 BalanceConc!776) TokenValue!282)

(assert (=> b!76867 (= res!40197 (= (value!11219 (_1!867 (get!327 lt!15324))) (apply!176 (transformation!292 (rule!769 (_1!867 (get!327 lt!15324)))) (seqFromList!96 (originalCharacters!343 (_1!867 (get!327 lt!15324)))))))))

(declare-fun b!76868 () Bool)

(declare-fun res!40196 () Bool)

(assert (=> b!76868 (=> (not res!40196) (not e!42955))))

(declare-fun size!1178 (List!1342) Int)

(assert (=> b!76868 (= res!40196 (< (size!1178 (_2!867 (get!327 lt!15324))) (size!1178 input!2238)))))

(declare-fun d!13674 () Bool)

(assert (=> d!13674 e!42954))

(declare-fun res!40200 () Bool)

(assert (=> d!13674 (=> res!40200 e!42954)))

(declare-fun isEmpty!399 (Option!95) Bool)

(assert (=> d!13674 (= res!40200 (isEmpty!399 lt!15324))))

(assert (=> d!13674 (= lt!15324 e!42956)))

(declare-fun c!19754 () Bool)

(assert (=> d!13674 (= c!19754 (and (is-Cons!1338 rules!2471) (is-Nil!1338 (t!20123 rules!2471))))))

(declare-fun lt!15326 () Unit!805)

(declare-fun lt!15325 () Unit!805)

(assert (=> d!13674 (= lt!15326 lt!15325)))

(declare-fun isPrefix!11 (List!1342 List!1342) Bool)

(assert (=> d!13674 (isPrefix!11 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!11 (List!1342 List!1342) Unit!805)

(assert (=> d!13674 (= lt!15325 (lemmaIsPrefixRefl!11 input!2238 input!2238))))

(assert (=> d!13674 (rulesValidInductive!27 thiss!19403 rules!2471)))

(assert (=> d!13674 (= (maxPrefix!28 thiss!19403 rules!2471 input!2238) lt!15324)))

(declare-fun b!76869 () Bool)

(declare-fun lt!15322 () Option!95)

(declare-fun lt!15323 () Option!95)

(assert (=> b!76869 (= e!42956 (ite (and (is-None!94 lt!15322) (is-None!94 lt!15323)) None!94 (ite (is-None!94 lt!15323) lt!15322 (ite (is-None!94 lt!15322) lt!15323 (ite (>= (size!1174 (_1!867 (v!12745 lt!15322))) (size!1174 (_1!867 (v!12745 lt!15323)))) lt!15322 lt!15323)))))))

(assert (=> b!76869 (= lt!15322 call!3651)))

(assert (=> b!76869 (= lt!15323 (maxPrefix!28 thiss!19403 (t!20123 rules!2471) input!2238))))

(declare-fun b!76870 () Bool)

(declare-fun contains!198 (List!1344 Rule!384) Bool)

(assert (=> b!76870 (= e!42955 (contains!198 rules!2471 (rule!769 (_1!867 (get!327 lt!15324)))))))

(assert (= (and d!13674 c!19754) b!76863))

(assert (= (and d!13674 (not c!19754)) b!76869))

(assert (= (or b!76863 b!76869) bm!3646))

(assert (= (and d!13674 (not res!40200)) b!76866))

(assert (= (and b!76866 res!40199) b!76862))

(assert (= (and b!76862 res!40201) b!76868))

(assert (= (and b!76868 res!40196) b!76864))

(assert (= (and b!76864 res!40202) b!76867))

(assert (= (and b!76867 res!40197) b!76865))

(assert (= (and b!76865 res!40198) b!76870))

(declare-fun m!49074 () Bool)

(assert (=> b!76864 m!49074))

(declare-fun m!49076 () Bool)

(assert (=> b!76864 m!49076))

(assert (=> b!76864 m!49076))

(declare-fun m!49078 () Bool)

(assert (=> b!76864 m!49078))

(assert (=> b!76864 m!49078))

(declare-fun m!49080 () Bool)

(assert (=> b!76864 m!49080))

(declare-fun m!49082 () Bool)

(assert (=> b!76869 m!49082))

(assert (=> b!76870 m!49074))

(declare-fun m!49084 () Bool)

(assert (=> b!76870 m!49084))

(assert (=> b!76862 m!49074))

(assert (=> b!76862 m!49076))

(assert (=> b!76862 m!49076))

(assert (=> b!76862 m!49078))

(declare-fun m!49086 () Bool)

(assert (=> bm!3646 m!49086))

(declare-fun m!49088 () Bool)

(assert (=> b!76866 m!49088))

(assert (=> b!76865 m!49074))

(assert (=> b!76865 m!49076))

(assert (=> b!76865 m!49076))

(assert (=> b!76865 m!49078))

(assert (=> b!76865 m!49078))

(declare-fun m!49090 () Bool)

(assert (=> b!76865 m!49090))

(assert (=> b!76868 m!49074))

(declare-fun m!49092 () Bool)

(assert (=> b!76868 m!49092))

(declare-fun m!49094 () Bool)

(assert (=> b!76868 m!49094))

(declare-fun m!49096 () Bool)

(assert (=> d!13674 m!49096))

(declare-fun m!49098 () Bool)

(assert (=> d!13674 m!49098))

(declare-fun m!49100 () Bool)

(assert (=> d!13674 m!49100))

(assert (=> d!13674 m!48964))

(assert (=> b!76867 m!49074))

(declare-fun m!49102 () Bool)

(assert (=> b!76867 m!49102))

(assert (=> b!76867 m!49102))

(declare-fun m!49104 () Bool)

(assert (=> b!76867 m!49104))

(assert (=> b!76781 d!13674))

(declare-fun d!13676 () Bool)

(declare-fun e!42957 () Bool)

(assert (=> d!13676 e!42957))

(declare-fun res!40205 () Bool)

(assert (=> d!13676 (=> (not res!40205) (not e!42957))))

(declare-fun e!42958 () Bool)

(assert (=> d!13676 (= res!40205 e!42958)))

(declare-fun c!19755 () Bool)

(declare-fun lt!15327 () tuple2!1316)

(assert (=> d!13676 (= c!19755 (> (size!1176 (_1!865 lt!15327)) 0))))

(assert (=> d!13676 (= lt!15327 (lexTailRecV2!32 thiss!19403 rules!2471 (seqFromList!96 (_2!867 lt!15265)) (BalanceConc!777 Empty!386) (seqFromList!96 (_2!867 lt!15265)) (BalanceConc!779 Empty!387)))))

(assert (=> d!13676 (= (lex!92 thiss!19403 rules!2471 (seqFromList!96 (_2!867 lt!15265))) lt!15327)))

(declare-fun b!76871 () Bool)

(declare-fun e!42959 () Bool)

(assert (=> b!76871 (= e!42958 e!42959)))

(declare-fun res!40203 () Bool)

(assert (=> b!76871 (= res!40203 (< (size!1177 (_2!865 lt!15327)) (size!1177 (seqFromList!96 (_2!867 lt!15265)))))))

(assert (=> b!76871 (=> (not res!40203) (not e!42959))))

(declare-fun b!76872 () Bool)

(declare-fun res!40204 () Bool)

(assert (=> b!76872 (=> (not res!40204) (not e!42957))))

(assert (=> b!76872 (= res!40204 (= (list!412 (_1!865 lt!15327)) (_1!866 (lexList!35 thiss!19403 rules!2471 (list!413 (seqFromList!96 (_2!867 lt!15265)))))))))

(declare-fun b!76873 () Bool)

(assert (=> b!76873 (= e!42959 (not (isEmpty!398 (_1!865 lt!15327))))))

(declare-fun b!76874 () Bool)

(assert (=> b!76874 (= e!42958 (= (_2!865 lt!15327) (seqFromList!96 (_2!867 lt!15265))))))

(declare-fun b!76875 () Bool)

(assert (=> b!76875 (= e!42957 (= (list!413 (_2!865 lt!15327)) (_2!866 (lexList!35 thiss!19403 rules!2471 (list!413 (seqFromList!96 (_2!867 lt!15265)))))))))

(assert (= (and d!13676 c!19755) b!76871))

(assert (= (and d!13676 (not c!19755)) b!76874))

(assert (= (and b!76871 res!40203) b!76873))

(assert (= (and d!13676 res!40205) b!76872))

(assert (= (and b!76872 res!40204) b!76875))

(declare-fun m!49106 () Bool)

(assert (=> b!76875 m!49106))

(assert (=> b!76875 m!48952))

(declare-fun m!49108 () Bool)

(assert (=> b!76875 m!49108))

(assert (=> b!76875 m!49108))

(declare-fun m!49110 () Bool)

(assert (=> b!76875 m!49110))

(declare-fun m!49112 () Bool)

(assert (=> b!76872 m!49112))

(assert (=> b!76872 m!48952))

(assert (=> b!76872 m!49108))

(assert (=> b!76872 m!49108))

(assert (=> b!76872 m!49110))

(declare-fun m!49114 () Bool)

(assert (=> d!13676 m!49114))

(assert (=> d!13676 m!48952))

(assert (=> d!13676 m!48952))

(declare-fun m!49116 () Bool)

(assert (=> d!13676 m!49116))

(declare-fun m!49118 () Bool)

(assert (=> b!76871 m!49118))

(assert (=> b!76871 m!48952))

(declare-fun m!49120 () Bool)

(assert (=> b!76871 m!49120))

(declare-fun m!49122 () Bool)

(assert (=> b!76873 m!49122))

(assert (=> b!76781 d!13676))

(declare-fun d!13678 () Bool)

(declare-fun lt!15330 () BalanceConc!776)

(declare-fun printList!7 (LexerInterface!184 List!1345) List!1342)

(assert (=> d!13678 (= (list!413 lt!15330) (printList!7 thiss!19403 (list!412 (_1!865 lt!15266))))))

(declare-fun printTailRec!7 (LexerInterface!184 BalanceConc!778 Int BalanceConc!776) BalanceConc!776)

(assert (=> d!13678 (= lt!15330 (printTailRec!7 thiss!19403 (_1!865 lt!15266) 0 (BalanceConc!777 Empty!386)))))

(assert (=> d!13678 (= (print!23 thiss!19403 (_1!865 lt!15266)) lt!15330)))

(declare-fun bs!7970 () Bool)

(assert (= bs!7970 d!13678))

(declare-fun m!49124 () Bool)

(assert (=> bs!7970 m!49124))

(assert (=> bs!7970 m!48946))

(assert (=> bs!7970 m!48946))

(declare-fun m!49126 () Bool)

(assert (=> bs!7970 m!49126))

(declare-fun m!49128 () Bool)

(assert (=> bs!7970 m!49128))

(assert (=> b!76781 d!13678))

(declare-fun d!13680 () Bool)

(assert (=> d!13680 true))

(declare-fun lt!15366 () Bool)

(declare-fun lambda!1404 () Int)

(declare-fun forall!182 (List!1344 Int) Bool)

(assert (=> d!13680 (= lt!15366 (forall!182 rules!2471 lambda!1404))))

(declare-fun e!42995 () Bool)

(assert (=> d!13680 (= lt!15366 e!42995)))

(declare-fun res!40254 () Bool)

(assert (=> d!13680 (=> res!40254 e!42995)))

(assert (=> d!13680 (= res!40254 (not (is-Cons!1338 rules!2471)))))

(assert (=> d!13680 (= (rulesValidInductive!27 thiss!19403 rules!2471) lt!15366)))

(declare-fun b!76943 () Bool)

(declare-fun e!42996 () Bool)

(assert (=> b!76943 (= e!42995 e!42996)))

(declare-fun res!40253 () Bool)

(assert (=> b!76943 (=> (not res!40253) (not e!42996))))

(declare-fun ruleValid!14 (LexerInterface!184 Rule!384) Bool)

(assert (=> b!76943 (= res!40253 (ruleValid!14 thiss!19403 (h!6735 rules!2471)))))

(declare-fun b!76944 () Bool)

(assert (=> b!76944 (= e!42996 (rulesValidInductive!27 thiss!19403 (t!20123 rules!2471)))))

(assert (= (and d!13680 (not res!40254)) b!76943))

(assert (= (and b!76943 res!40253) b!76944))

(declare-fun m!49242 () Bool)

(assert (=> d!13680 m!49242))

(declare-fun m!49244 () Bool)

(assert (=> b!76943 m!49244))

(declare-fun m!49246 () Bool)

(assert (=> b!76944 m!49246))

(assert (=> b!76781 d!13680))

(declare-fun d!13708 () Bool)

(assert (=> d!13708 (= (list!412 (_1!865 lt!15266)) (list!416 (c!19744 (_1!865 lt!15266))))))

(declare-fun bs!7979 () Bool)

(assert (= bs!7979 d!13708))

(declare-fun m!49248 () Bool)

(assert (=> bs!7979 m!49248))

(assert (=> b!76781 d!13708))

(declare-fun d!13710 () Bool)

(assert (=> d!13710 (= (tail!99 lt!15264) (t!20124 lt!15264))))

(assert (=> b!76781 d!13710))

(declare-fun d!13712 () Bool)

(declare-fun e!42999 () Bool)

(assert (=> d!13712 e!42999))

(declare-fun res!40257 () Bool)

(assert (=> d!13712 (=> (not res!40257) (not e!42999))))

(declare-fun isBalanced!72 (Conc!387) Bool)

(declare-fun prepend!43 (Conc!387 Token!344) Conc!387)

(assert (=> d!13712 (= res!40257 (isBalanced!72 (prepend!43 (c!19744 (seqFromList!97 (t!20124 lt!15264))) (h!6736 lt!15264))))))

(declare-fun lt!15369 () BalanceConc!778)

(assert (=> d!13712 (= lt!15369 (BalanceConc!779 (prepend!43 (c!19744 (seqFromList!97 (t!20124 lt!15264))) (h!6736 lt!15264))))))

(assert (=> d!13712 (= (prepend!41 (seqFromList!97 (t!20124 lt!15264)) (h!6736 lt!15264)) lt!15369)))

(declare-fun b!76949 () Bool)

(assert (=> b!76949 (= e!42999 (= (list!412 lt!15369) (Cons!1339 (h!6736 lt!15264) (list!412 (seqFromList!97 (t!20124 lt!15264))))))))

(assert (= (and d!13712 res!40257) b!76949))

(declare-fun m!49250 () Bool)

(assert (=> d!13712 m!49250))

(assert (=> d!13712 m!49250))

(declare-fun m!49252 () Bool)

(assert (=> d!13712 m!49252))

(declare-fun m!49254 () Bool)

(assert (=> b!76949 m!49254))

(assert (=> b!76949 m!48956))

(declare-fun m!49256 () Bool)

(assert (=> b!76949 m!49256))

(assert (=> b!76781 d!13712))

(declare-fun d!13714 () Bool)

(assert (=> d!13714 (= (list!412 (_1!865 lt!15262)) (list!412 (prepend!41 (seqFromList!97 (t!20124 lt!15264)) (h!6736 lt!15264))))))

(declare-fun lt!15372 () Unit!805)

(declare-fun choose!1261 (Token!344 List!1345 BalanceConc!778) Unit!805)

(assert (=> d!13714 (= lt!15372 (choose!1261 (h!6736 lt!15264) (t!20124 lt!15264) (_1!865 lt!15262)))))

(declare-fun $colon$colon!13 (List!1345 Token!344) List!1345)

(assert (=> d!13714 (= (list!412 (_1!865 lt!15262)) (list!412 (seqFromList!97 ($colon$colon!13 (t!20124 lt!15264) (h!6736 lt!15264)))))))

(assert (=> d!13714 (= (seqFromListBHdTlConstructive!15 (h!6736 lt!15264) (t!20124 lt!15264) (_1!865 lt!15262)) lt!15372)))

(declare-fun bs!7980 () Bool)

(assert (= bs!7980 d!13714))

(declare-fun m!49258 () Bool)

(assert (=> bs!7980 m!49258))

(assert (=> bs!7980 m!48924))

(assert (=> bs!7980 m!48956))

(assert (=> bs!7980 m!49258))

(declare-fun m!49260 () Bool)

(assert (=> bs!7980 m!49260))

(assert (=> bs!7980 m!48956))

(assert (=> bs!7980 m!48940))

(assert (=> bs!7980 m!48940))

(assert (=> bs!7980 m!48942))

(declare-fun m!49262 () Bool)

(assert (=> bs!7980 m!49262))

(assert (=> bs!7980 m!49260))

(declare-fun m!49264 () Bool)

(assert (=> bs!7980 m!49264))

(assert (=> b!76781 d!13714))

(declare-fun d!13716 () Bool)

(declare-fun list!417 (Conc!386) List!1342)

(assert (=> d!13716 (= (list!413 (_2!865 lt!15262)) (list!417 (c!19742 (_2!865 lt!15262))))))

(declare-fun bs!7981 () Bool)

(assert (= bs!7981 d!13716))

(declare-fun m!49266 () Bool)

(assert (=> bs!7981 m!49266))

(assert (=> b!76781 d!13716))

(declare-fun d!13718 () Bool)

(assert (=> d!13718 (= (get!327 (maxPrefix!28 thiss!19403 rules!2471 input!2238)) (v!12745 (maxPrefix!28 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!76781 d!13718))

(declare-fun b!76959 () Bool)

(declare-fun e!43004 () List!1342)

(assert (=> b!76959 (= e!43004 (Cons!1336 (h!6733 lt!15260) (++!111 (t!20121 lt!15260) lt!15267)))))

(declare-fun b!76958 () Bool)

(assert (=> b!76958 (= e!43004 lt!15267)))

(declare-fun b!76961 () Bool)

(declare-fun lt!15375 () List!1342)

(declare-fun e!43005 () Bool)

(assert (=> b!76961 (= e!43005 (or (not (= lt!15267 Nil!1336)) (= lt!15375 lt!15260)))))

(declare-fun d!13720 () Bool)

(assert (=> d!13720 e!43005))

(declare-fun res!40262 () Bool)

(assert (=> d!13720 (=> (not res!40262) (not e!43005))))

(declare-fun content!60 (List!1342) (Set C!1642))

(assert (=> d!13720 (= res!40262 (= (content!60 lt!15375) (set.union (content!60 lt!15260) (content!60 lt!15267))))))

(assert (=> d!13720 (= lt!15375 e!43004)))

(declare-fun c!19769 () Bool)

(assert (=> d!13720 (= c!19769 (is-Nil!1336 lt!15260))))

(assert (=> d!13720 (= (++!111 lt!15260 lt!15267) lt!15375)))

(declare-fun b!76960 () Bool)

(declare-fun res!40263 () Bool)

(assert (=> b!76960 (=> (not res!40263) (not e!43005))))

(assert (=> b!76960 (= res!40263 (= (size!1178 lt!15375) (+ (size!1178 lt!15260) (size!1178 lt!15267))))))

(assert (= (and d!13720 c!19769) b!76958))

(assert (= (and d!13720 (not c!19769)) b!76959))

(assert (= (and d!13720 res!40262) b!76960))

(assert (= (and b!76960 res!40263) b!76961))

(declare-fun m!49268 () Bool)

(assert (=> b!76959 m!49268))

(declare-fun m!49270 () Bool)

(assert (=> d!13720 m!49270))

(declare-fun m!49272 () Bool)

(assert (=> d!13720 m!49272))

(declare-fun m!49274 () Bool)

(assert (=> d!13720 m!49274))

(declare-fun m!49276 () Bool)

(assert (=> b!76960 m!49276))

(declare-fun m!49278 () Bool)

(assert (=> b!76960 m!49278))

(declare-fun m!49280 () Bool)

(assert (=> b!76960 m!49280))

(assert (=> b!76781 d!13720))

(declare-fun d!13722 () Bool)

(declare-fun lt!15381 () tuple2!1316)

(assert (=> d!13722 (= (++!111 (list!413 (print!23 thiss!19403 (_1!865 lt!15381))) (list!413 (_2!865 lt!15381))) (_2!867 lt!15265))))

(assert (=> d!13722 (= lt!15381 (lex!92 thiss!19403 rules!2471 (seqFromList!96 (_2!867 lt!15265))))))

(declare-fun lt!15380 () Unit!805)

(declare-fun choose!1262 (LexerInterface!184 List!1344 List!1342) Unit!805)

(assert (=> d!13722 (= lt!15380 (choose!1262 thiss!19403 rules!2471 (_2!867 lt!15265)))))

(assert (=> d!13722 (not (isEmpty!393 rules!2471))))

(assert (=> d!13722 (= (theoremInvertFromString!7 thiss!19403 rules!2471 (_2!867 lt!15265)) lt!15380)))

(declare-fun bs!7982 () Bool)

(assert (= bs!7982 d!13722))

(assert (=> bs!7982 m!48952))

(assert (=> bs!7982 m!48952))

(assert (=> bs!7982 m!48954))

(declare-fun m!49282 () Bool)

(assert (=> bs!7982 m!49282))

(declare-fun m!49284 () Bool)

(assert (=> bs!7982 m!49284))

(declare-fun m!49286 () Bool)

(assert (=> bs!7982 m!49286))

(assert (=> bs!7982 m!49282))

(assert (=> bs!7982 m!49284))

(assert (=> bs!7982 m!49286))

(declare-fun m!49288 () Bool)

(assert (=> bs!7982 m!49288))

(assert (=> bs!7982 m!48922))

(declare-fun m!49290 () Bool)

(assert (=> bs!7982 m!49290))

(assert (=> b!76781 d!13722))

(declare-fun d!13724 () Bool)

(assert (=> d!13724 (= (seqFromList!96 (_2!867 lt!15265)) (fromListB!29 (_2!867 lt!15265)))))

(declare-fun bs!7983 () Bool)

(assert (= bs!7983 d!13724))

(declare-fun m!49292 () Bool)

(assert (=> bs!7983 m!49292))

(assert (=> b!76781 d!13724))

(declare-fun d!13726 () Bool)

(assert (=> d!13726 (= (list!413 (print!23 thiss!19403 (_1!865 lt!15266))) (list!417 (c!19742 (print!23 thiss!19403 (_1!865 lt!15266)))))))

(declare-fun bs!7984 () Bool)

(assert (= bs!7984 d!13726))

(declare-fun m!49294 () Bool)

(assert (=> bs!7984 m!49294))

(assert (=> b!76781 d!13726))

(declare-fun d!13728 () Bool)

(assert (=> d!13728 (= (list!413 (_2!865 lt!15266)) (list!417 (c!19742 (_2!865 lt!15266))))))

(declare-fun bs!7985 () Bool)

(assert (= bs!7985 d!13728))

(declare-fun m!49296 () Bool)

(assert (=> bs!7985 m!49296))

(assert (=> b!76781 d!13728))

(declare-fun d!13730 () Bool)

(declare-fun fromListB!30 (List!1345) BalanceConc!778)

(assert (=> d!13730 (= (seqFromList!97 (t!20124 lt!15264)) (fromListB!30 (t!20124 lt!15264)))))

(declare-fun bs!7986 () Bool)

(assert (= bs!7986 d!13730))

(declare-fun m!49298 () Bool)

(assert (=> bs!7986 m!49298))

(assert (=> b!76781 d!13730))

(declare-fun d!13732 () Bool)

(declare-fun lt!15387 () tuple2!1316)

(assert (=> d!13732 (= (tuple2!1319 (list!412 (_1!865 lt!15387)) (list!413 (_2!865 lt!15387))) (tuple2!1319 (tail!99 lt!15264) lt!15268))))

(assert (=> d!13732 (= lt!15387 (lex!92 thiss!19403 rules!2471 (seqFromList!96 (_2!867 (get!327 (maxPrefix!28 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!15386 () Unit!805)

(declare-fun choose!1263 (LexerInterface!184 List!1344 List!1342 List!1345 List!1342) Unit!805)

(assert (=> d!13732 (= lt!15386 (choose!1263 thiss!19403 rules!2471 input!2238 lt!15264 lt!15268))))

(assert (=> d!13732 (rulesInvariant!178 thiss!19403 rules!2471)))

(assert (=> d!13732 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!3 thiss!19403 rules!2471 input!2238 lt!15264 lt!15268) lt!15386)))

(declare-fun bs!7987 () Bool)

(assert (= bs!7987 d!13732))

(assert (=> bs!7987 m!48938))

(declare-fun m!49300 () Bool)

(assert (=> bs!7987 m!49300))

(declare-fun m!49302 () Bool)

(assert (=> bs!7987 m!49302))

(declare-fun m!49304 () Bool)

(assert (=> bs!7987 m!49304))

(assert (=> bs!7987 m!48932))

(declare-fun m!49306 () Bool)

(assert (=> bs!7987 m!49306))

(assert (=> bs!7987 m!48932))

(assert (=> bs!7987 m!48934))

(assert (=> bs!7987 m!49300))

(declare-fun m!49308 () Bool)

(assert (=> bs!7987 m!49308))

(assert (=> bs!7987 m!48930))

(assert (=> b!76781 d!13732))

(declare-fun d!13734 () Bool)

(assert (=> d!13734 (= (list!412 (prepend!41 (seqFromList!97 (t!20124 lt!15264)) (h!6736 lt!15264))) (list!416 (c!19744 (prepend!41 (seqFromList!97 (t!20124 lt!15264)) (h!6736 lt!15264)))))))

(declare-fun bs!7988 () Bool)

(assert (= bs!7988 d!13734))

(declare-fun m!49310 () Bool)

(assert (=> bs!7988 m!49310))

(assert (=> b!76781 d!13734))

(declare-fun b!76966 () Bool)

(declare-fun e!43008 () Bool)

(declare-fun tp!49647 () Bool)

(assert (=> b!76966 (= e!43008 (and tp_is_empty!643 tp!49647))))

(assert (=> b!76783 (= tp!49629 e!43008)))

(assert (= (and b!76783 (is-Cons!1336 (t!20121 input!2238))) b!76966))

(declare-fun b!76977 () Bool)

(declare-fun b_free!2453 () Bool)

(declare-fun b_next!2453 () Bool)

(assert (=> b!76977 (= b_free!2453 (not b_next!2453))))

(declare-fun tp!49656 () Bool)

(declare-fun b_and!3511 () Bool)

(assert (=> b!76977 (= tp!49656 b_and!3511)))

(declare-fun b_free!2455 () Bool)

(declare-fun b_next!2455 () Bool)

(assert (=> b!76977 (= b_free!2455 (not b_next!2455))))

(declare-fun tp!49657 () Bool)

(declare-fun b_and!3513 () Bool)

(assert (=> b!76977 (= tp!49657 b_and!3513)))

(declare-fun e!43019 () Bool)

(assert (=> b!76977 (= e!43019 (and tp!49656 tp!49657))))

(declare-fun tp!49658 () Bool)

(declare-fun e!43018 () Bool)

(declare-fun b!76976 () Bool)

(assert (=> b!76976 (= e!43018 (and tp!49658 (inv!1709 (tag!470 (h!6735 (t!20123 rules!2471)))) (inv!1712 (transformation!292 (h!6735 (t!20123 rules!2471)))) e!43019))))

(declare-fun b!76975 () Bool)

(declare-fun e!43017 () Bool)

(declare-fun tp!49659 () Bool)

(assert (=> b!76975 (= e!43017 (and e!43018 tp!49659))))

(assert (=> b!76784 (= tp!49628 e!43017)))

(assert (= b!76976 b!76977))

(assert (= b!76975 b!76976))

(assert (= (and b!76784 (is-Cons!1338 (t!20123 rules!2471))) b!76975))

(declare-fun m!49312 () Bool)

(assert (=> b!76976 m!49312))

(declare-fun m!49314 () Bool)

(assert (=> b!76976 m!49314))

(declare-fun b!76989 () Bool)

(declare-fun e!43023 () Bool)

(declare-fun tp!49672 () Bool)

(declare-fun tp!49670 () Bool)

(assert (=> b!76989 (= e!43023 (and tp!49672 tp!49670))))

(declare-fun b!76991 () Bool)

(declare-fun tp!49674 () Bool)

(declare-fun tp!49671 () Bool)

(assert (=> b!76991 (= e!43023 (and tp!49674 tp!49671))))

(declare-fun b!76990 () Bool)

(declare-fun tp!49673 () Bool)

(assert (=> b!76990 (= e!43023 tp!49673)))

(assert (=> b!76786 (= tp!49627 e!43023)))

(declare-fun b!76988 () Bool)

(assert (=> b!76988 (= e!43023 tp_is_empty!643)))

(assert (= (and b!76786 (is-ElementMatch!360 (regex!292 (h!6735 rules!2471)))) b!76988))

(assert (= (and b!76786 (is-Concat!642 (regex!292 (h!6735 rules!2471)))) b!76989))

(assert (= (and b!76786 (is-Star!360 (regex!292 (h!6735 rules!2471)))) b!76990))

(assert (= (and b!76786 (is-Union!360 (regex!292 (h!6735 rules!2471)))) b!76991))

(push 1)

(assert (not d!13680))

(assert (not b!76870))

(assert (not b!76837))

(assert (not b!76875))

(assert b_and!3505)

(assert (not d!13716))

(assert (not d!13662))

(assert (not b!76862))

(assert (not d!13728))

(assert (not b!76867))

(assert (not d!13726))

(assert (not d!13646))

(assert (not b!76990))

(assert tp_is_empty!643)

(assert b_and!3511)

(assert (not d!13722))

(assert (not d!13678))

(assert (not b!76976))

(assert (not d!13724))

(assert (not d!13732))

(assert b_and!3503)

(assert (not b!76960))

(assert (not b!76991))

(assert (not bm!3646))

(assert (not b!76843))

(assert (not b!76872))

(assert (not b_next!2445))

(assert (not b!76869))

(assert (not b!76989))

(assert (not b!76866))

(assert (not d!13652))

(assert (not b!76871))

(assert (not d!13666))

(assert (not d!13708))

(assert (not b!76943))

(assert (not b!76835))

(assert (not b_next!2455))

(assert (not d!13672))

(assert (not b!76868))

(assert (not b_next!2447))

(assert (not b!76944))

(assert (not b!76864))

(assert (not b!76949))

(assert (not d!13730))

(assert (not d!13734))

(assert (not d!13712))

(assert (not b!76840))

(assert (not b!76834))

(assert (not d!13714))

(assert (not b!76833))

(assert (not d!13676))

(assert b_and!3513)

(assert (not b_next!2453))

(assert (not d!13668))

(assert (not b!76966))

(assert (not d!13720))

(assert (not d!13674))

(assert (not b!76975))

(assert (not b!76873))

(assert (not b!76959))

(assert (not b!76865))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3511)

(assert b_and!3503)

(assert (not b_next!2445))

(assert (not b_next!2455))

(assert b_and!3505)

(assert (not b_next!2447))

(assert b_and!3513)

(assert (not b_next!2453))

(check-sat)

(pop 1)


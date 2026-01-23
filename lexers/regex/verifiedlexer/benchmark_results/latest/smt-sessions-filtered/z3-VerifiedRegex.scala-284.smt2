; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6294 () Bool)

(assert start!6294)

(declare-fun b!78036 () Bool)

(declare-fun b_free!2497 () Bool)

(declare-fun b_next!2497 () Bool)

(assert (=> b!78036 (= b_free!2497 (not b_next!2497))))

(declare-fun tp!49928 () Bool)

(declare-fun b_and!3571 () Bool)

(assert (=> b!78036 (= tp!49928 b_and!3571)))

(declare-fun b_free!2499 () Bool)

(declare-fun b_next!2499 () Bool)

(assert (=> b!78036 (= b_free!2499 (not b_next!2499))))

(declare-fun tp!49926 () Bool)

(declare-fun b_and!3573 () Bool)

(assert (=> b!78036 (= tp!49926 b_and!3573)))

(declare-fun b!78030 () Bool)

(declare-fun e!43650 () Bool)

(declare-fun e!43648 () Bool)

(declare-fun tp!49930 () Bool)

(assert (=> b!78030 (= e!43650 (and e!43648 tp!49930))))

(declare-fun b!78032 () Bool)

(declare-fun res!40740 () Bool)

(declare-fun e!43645 () Bool)

(assert (=> b!78032 (=> (not res!40740) (not e!43645))))

(declare-datatypes ((LexerInterface!191 0))(
  ( (LexerInterfaceExt!188 (__x!1673 Int)) (Lexer!189) )
))
(declare-fun thiss!19403 () LexerInterface!191)

(declare-datatypes ((C!1656 0))(
  ( (C!1657 (val!435 Int)) )
))
(declare-datatypes ((List!1374 0))(
  ( (Nil!1368) (Cons!1368 (h!6765 C!1656) (t!20189 List!1374)) )
))
(declare-datatypes ((IArray!801 0))(
  ( (IArray!802 (innerList!458 List!1374)) )
))
(declare-datatypes ((Conc!400 0))(
  ( (Node!400 (left!1038 Conc!400) (right!1368 Conc!400) (csize!1030 Int) (cheight!611 Int)) (Leaf!685 (xs!2979 IArray!801) (csize!1031 Int)) (Empty!400) )
))
(declare-datatypes ((BalanceConc!804 0))(
  ( (BalanceConc!805 (c!19968 Conc!400)) )
))
(declare-datatypes ((Regex!367 0))(
  ( (ElementMatch!367 (c!19969 C!1656)) (Concat!656 (regOne!1246 Regex!367) (regTwo!1246 Regex!367)) (EmptyExpr!367) (Star!367 (reg!696 Regex!367)) (EmptyLang!367) (Union!367 (regOne!1247 Regex!367) (regTwo!1247 Regex!367)) )
))
(declare-datatypes ((String!1836 0))(
  ( (String!1837 (value!11391 String)) )
))
(declare-datatypes ((List!1375 0))(
  ( (Nil!1369) (Cons!1369 (h!6766 (_ BitVec 16)) (t!20190 List!1375)) )
))
(declare-datatypes ((TokenValue!289 0))(
  ( (FloatLiteralValue!578 (text!2468 List!1375)) (TokenValueExt!288 (__x!1674 Int)) (Broken!1445 (value!11392 List!1375)) (Object!294) (End!289) (Def!289) (Underscore!289) (Match!289) (Else!289) (Error!289) (Case!289) (If!289) (Extends!289) (Abstract!289) (Class!289) (Val!289) (DelimiterValue!578 (del!349 List!1375)) (KeywordValue!295 (value!11393 List!1375)) (CommentValue!578 (value!11394 List!1375)) (WhitespaceValue!578 (value!11395 List!1375)) (IndentationValue!289 (value!11396 List!1375)) (String!1838) (Int32!289) (Broken!1446 (value!11397 List!1375)) (Boolean!290) (Unit!833) (OperatorValue!292 (op!349 List!1375)) (IdentifierValue!578 (value!11398 List!1375)) (IdentifierValue!579 (value!11399 List!1375)) (WhitespaceValue!579 (value!11400 List!1375)) (True!578) (False!578) (Broken!1447 (value!11401 List!1375)) (Broken!1448 (value!11402 List!1375)) (True!579) (RightBrace!289) (RightBracket!289) (Colon!289) (Null!289) (Comma!289) (LeftBracket!289) (False!579) (LeftBrace!289) (ImaginaryLiteralValue!289 (text!2469 List!1375)) (StringLiteralValue!867 (value!11403 List!1375)) (EOFValue!289 (value!11404 List!1375)) (IdentValue!289 (value!11405 List!1375)) (DelimiterValue!579 (value!11406 List!1375)) (DedentValue!289 (value!11407 List!1375)) (NewLineValue!289 (value!11408 List!1375)) (IntegerValue!867 (value!11409 (_ BitVec 32)) (text!2470 List!1375)) (IntegerValue!868 (value!11410 Int) (text!2471 List!1375)) (Times!289) (Or!289) (Equal!289) (Minus!289) (Broken!1449 (value!11411 List!1375)) (And!289) (Div!289) (LessEqual!289) (Mod!289) (Concat!657) (Not!289) (Plus!289) (SpaceValue!289 (value!11412 List!1375)) (IntegerValue!869 (value!11413 Int) (text!2472 List!1375)) (StringLiteralValue!868 (text!2473 List!1375)) (FloatLiteralValue!579 (text!2474 List!1375)) (BytesLiteralValue!289 (value!11414 List!1375)) (CommentValue!579 (value!11415 List!1375)) (StringLiteralValue!869 (value!11416 List!1375)) (ErrorTokenValue!289 (msg!350 List!1375)) )
))
(declare-datatypes ((TokenValueInjection!402 0))(
  ( (TokenValueInjection!403 (toValue!810 Int) (toChars!669 Int)) )
))
(declare-datatypes ((Rule!398 0))(
  ( (Rule!399 (regex!299 Regex!367) (tag!477 String!1836) (isSeparator!299 Bool) (transformation!299 TokenValueInjection!402)) )
))
(declare-datatypes ((List!1376 0))(
  ( (Nil!1370) (Cons!1370 (h!6767 Rule!398) (t!20191 List!1376)) )
))
(declare-fun rules!2471 () List!1376)

(declare-fun rulesInvariant!185 (LexerInterface!191 List!1376) Bool)

(assert (=> b!78032 (= res!40740 (rulesInvariant!185 thiss!19403 rules!2471))))

(declare-fun b!78033 () Bool)

(declare-fun res!40743 () Bool)

(assert (=> b!78033 (=> (not res!40743) (not e!43645))))

(declare-fun isEmpty!426 (List!1376) Bool)

(assert (=> b!78033 (= res!40743 (not (isEmpty!426 rules!2471)))))

(declare-fun b!78034 () Bool)

(declare-fun e!43646 () Bool)

(assert (=> b!78034 (= e!43646 (not true))))

(declare-fun lt!16212 () List!1374)

(declare-datatypes ((Token!358 0))(
  ( (Token!359 (value!11417 TokenValue!289) (rule!778 Rule!398) (size!1199 Int) (originalCharacters!350 List!1374)) )
))
(declare-datatypes ((tuple2!1366 0))(
  ( (tuple2!1367 (_1!890 Token!358) (_2!890 List!1374)) )
))
(declare-fun lt!16217 () tuple2!1366)

(declare-fun list!438 (BalanceConc!804) List!1374)

(declare-fun charsOf!36 (Token!358) BalanceConc!804)

(assert (=> b!78034 (= lt!16212 (list!438 (charsOf!36 (_1!890 lt!16217))))))

(declare-fun lt!16218 () List!1374)

(declare-datatypes ((List!1377 0))(
  ( (Nil!1371) (Cons!1371 (h!6768 Token!358) (t!20192 List!1377)) )
))
(declare-datatypes ((IArray!803 0))(
  ( (IArray!804 (innerList!459 List!1377)) )
))
(declare-datatypes ((Conc!401 0))(
  ( (Node!401 (left!1039 Conc!401) (right!1369 Conc!401) (csize!1032 Int) (cheight!612 Int)) (Leaf!686 (xs!2980 IArray!803) (csize!1033 Int)) (Empty!401) )
))
(declare-datatypes ((BalanceConc!806 0))(
  ( (BalanceConc!807 (c!19970 Conc!401)) )
))
(declare-datatypes ((tuple2!1368 0))(
  ( (tuple2!1369 (_1!891 BalanceConc!806) (_2!891 BalanceConc!804)) )
))
(declare-fun lt!16216 () tuple2!1368)

(declare-fun lt!16214 () List!1374)

(declare-fun lt!16207 () List!1377)

(declare-datatypes ((tuple2!1370 0))(
  ( (tuple2!1371 (_1!892 List!1377) (_2!892 List!1374)) )
))
(declare-fun list!439 (BalanceConc!806) List!1377)

(declare-fun tail!108 (List!1377) List!1377)

(assert (=> b!78034 (= (tuple2!1371 (list!439 (_1!891 lt!16216)) lt!16218) (tuple2!1371 (tail!108 lt!16207) lt!16214))))

(declare-datatypes ((Unit!834 0))(
  ( (Unit!835) )
))
(declare-fun lt!16211 () Unit!834)

(declare-fun input!2238 () List!1374)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!10 (LexerInterface!191 List!1376 List!1374 List!1377 List!1374) Unit!834)

(assert (=> b!78034 (= lt!16211 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!10 thiss!19403 rules!2471 input!2238 lt!16207 lt!16214))))

(declare-fun lt!16210 () tuple2!1368)

(assert (=> b!78034 (= lt!16214 (list!438 (_2!891 lt!16210)))))

(declare-fun lt!16213 () List!1374)

(declare-fun ++!124 (List!1374 List!1374) List!1374)

(assert (=> b!78034 (= (++!124 lt!16213 lt!16218) (_2!890 lt!16217))))

(assert (=> b!78034 (= lt!16218 (list!438 (_2!891 lt!16216)))))

(declare-fun print!30 (LexerInterface!191 BalanceConc!806) BalanceConc!804)

(assert (=> b!78034 (= lt!16213 (list!438 (print!30 thiss!19403 (_1!891 lt!16216))))))

(declare-fun lex!99 (LexerInterface!191 List!1376 BalanceConc!804) tuple2!1368)

(declare-fun seqFromList!110 (List!1374) BalanceConc!804)

(assert (=> b!78034 (= lt!16216 (lex!99 thiss!19403 rules!2471 (seqFromList!110 (_2!890 lt!16217))))))

(declare-fun lt!16215 () Unit!834)

(declare-fun theoremInvertFromString!14 (LexerInterface!191 List!1376 List!1374) Unit!834)

(assert (=> b!78034 (= lt!16215 (theoremInvertFromString!14 thiss!19403 rules!2471 (_2!890 lt!16217)))))

(declare-datatypes ((Option!104 0))(
  ( (None!103) (Some!103 (v!12768 tuple2!1366)) )
))
(declare-fun get!337 (Option!104) tuple2!1366)

(declare-fun maxPrefix!35 (LexerInterface!191 List!1376 List!1374) Option!104)

(assert (=> b!78034 (= lt!16217 (get!337 (maxPrefix!35 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!52 (BalanceConc!806 Token!358) BalanceConc!806)

(declare-fun seqFromList!111 (List!1377) BalanceConc!806)

(assert (=> b!78034 (= lt!16207 (list!439 (prepend!52 (seqFromList!111 (t!20192 lt!16207)) (h!6768 lt!16207))))))

(declare-fun lt!16209 () Unit!834)

(declare-fun seqFromListBHdTlConstructive!22 (Token!358 List!1377 BalanceConc!806) Unit!834)

(assert (=> b!78034 (= lt!16209 (seqFromListBHdTlConstructive!22 (h!6768 lt!16207) (t!20192 lt!16207) (_1!891 lt!16210)))))

(declare-fun b!78035 () Bool)

(declare-fun e!43649 () Bool)

(assert (=> b!78035 (= e!43645 e!43649)))

(declare-fun res!40739 () Bool)

(assert (=> b!78035 (=> (not res!40739) (not e!43649))))

(declare-fun isEmpty!427 (BalanceConc!804) Bool)

(assert (=> b!78035 (= res!40739 (not (isEmpty!427 (_2!891 lt!16210))))))

(assert (=> b!78035 (= lt!16210 (lex!99 thiss!19403 rules!2471 (seqFromList!110 input!2238)))))

(declare-fun e!43647 () Bool)

(assert (=> b!78036 (= e!43647 (and tp!49928 tp!49926))))

(declare-fun b!78037 () Bool)

(declare-fun e!43651 () Bool)

(declare-fun tp_is_empty!657 () Bool)

(declare-fun tp!49929 () Bool)

(assert (=> b!78037 (= e!43651 (and tp_is_empty!657 tp!49929))))

(declare-fun b!78038 () Bool)

(assert (=> b!78038 (= e!43649 e!43646)))

(declare-fun res!40741 () Bool)

(assert (=> b!78038 (=> (not res!40741) (not e!43646))))

(declare-fun lt!16208 () Bool)

(get-info :version)

(assert (=> b!78038 (= res!40741 (and (or lt!16208 (not ((_ is Nil!1371) (t!20192 lt!16207)))) (not lt!16208)))))

(assert (=> b!78038 (= lt!16208 (not ((_ is Cons!1371) lt!16207)))))

(assert (=> b!78038 (= lt!16207 (list!439 (_1!891 lt!16210)))))

(declare-fun tp!49927 () Bool)

(declare-fun b!78031 () Bool)

(declare-fun inv!1730 (String!1836) Bool)

(declare-fun inv!1732 (TokenValueInjection!402) Bool)

(assert (=> b!78031 (= e!43648 (and tp!49927 (inv!1730 (tag!477 (h!6767 rules!2471))) (inv!1732 (transformation!299 (h!6767 rules!2471))) e!43647))))

(declare-fun res!40742 () Bool)

(assert (=> start!6294 (=> (not res!40742) (not e!43645))))

(assert (=> start!6294 (= res!40742 ((_ is Lexer!189) thiss!19403))))

(assert (=> start!6294 e!43645))

(assert (=> start!6294 true))

(assert (=> start!6294 e!43650))

(assert (=> start!6294 e!43651))

(assert (= (and start!6294 res!40742) b!78033))

(assert (= (and b!78033 res!40743) b!78032))

(assert (= (and b!78032 res!40740) b!78035))

(assert (= (and b!78035 res!40739) b!78038))

(assert (= (and b!78038 res!40741) b!78034))

(assert (= b!78031 b!78036))

(assert (= b!78030 b!78031))

(assert (= (and start!6294 ((_ is Cons!1370) rules!2471)) b!78030))

(assert (= (and start!6294 ((_ is Cons!1368) input!2238)) b!78037))

(declare-fun m!51188 () Bool)

(assert (=> b!78034 m!51188))

(declare-fun m!51190 () Bool)

(assert (=> b!78034 m!51190))

(assert (=> b!78034 m!51190))

(declare-fun m!51192 () Bool)

(assert (=> b!78034 m!51192))

(assert (=> b!78034 m!51188))

(declare-fun m!51194 () Bool)

(assert (=> b!78034 m!51194))

(declare-fun m!51196 () Bool)

(assert (=> b!78034 m!51196))

(declare-fun m!51198 () Bool)

(assert (=> b!78034 m!51198))

(declare-fun m!51200 () Bool)

(assert (=> b!78034 m!51200))

(declare-fun m!51202 () Bool)

(assert (=> b!78034 m!51202))

(declare-fun m!51204 () Bool)

(assert (=> b!78034 m!51204))

(declare-fun m!51206 () Bool)

(assert (=> b!78034 m!51206))

(declare-fun m!51208 () Bool)

(assert (=> b!78034 m!51208))

(declare-fun m!51210 () Bool)

(assert (=> b!78034 m!51210))

(declare-fun m!51212 () Bool)

(assert (=> b!78034 m!51212))

(assert (=> b!78034 m!51198))

(declare-fun m!51214 () Bool)

(assert (=> b!78034 m!51214))

(declare-fun m!51216 () Bool)

(assert (=> b!78034 m!51216))

(declare-fun m!51218 () Bool)

(assert (=> b!78034 m!51218))

(assert (=> b!78034 m!51202))

(declare-fun m!51220 () Bool)

(assert (=> b!78034 m!51220))

(assert (=> b!78034 m!51196))

(assert (=> b!78034 m!51208))

(declare-fun m!51222 () Bool)

(assert (=> b!78034 m!51222))

(declare-fun m!51224 () Bool)

(assert (=> b!78034 m!51224))

(declare-fun m!51226 () Bool)

(assert (=> b!78033 m!51226))

(declare-fun m!51228 () Bool)

(assert (=> b!78035 m!51228))

(declare-fun m!51230 () Bool)

(assert (=> b!78035 m!51230))

(assert (=> b!78035 m!51230))

(declare-fun m!51232 () Bool)

(assert (=> b!78035 m!51232))

(declare-fun m!51234 () Bool)

(assert (=> b!78032 m!51234))

(declare-fun m!51236 () Bool)

(assert (=> b!78031 m!51236))

(declare-fun m!51238 () Bool)

(assert (=> b!78031 m!51238))

(declare-fun m!51240 () Bool)

(assert (=> b!78038 m!51240))

(check-sat (not b!78033) b_and!3573 (not b_next!2497) (not b!78030) (not b!78035) (not b!78031) b_and!3571 (not b!78032) tp_is_empty!657 (not b!78037) (not b!78034) (not b_next!2499) (not b!78038))
(check-sat b_and!3573 b_and!3571 (not b_next!2499) (not b_next!2497))

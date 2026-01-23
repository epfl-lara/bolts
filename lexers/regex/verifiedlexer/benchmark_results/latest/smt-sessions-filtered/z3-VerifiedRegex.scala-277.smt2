; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5794 () Bool)

(assert start!5794)

(declare-fun b!75925 () Bool)

(declare-fun b_free!2401 () Bool)

(declare-fun b_next!2401 () Bool)

(assert (=> b!75925 (= b_free!2401 (not b_next!2401))))

(declare-fun tp!49386 () Bool)

(declare-fun b_and!3443 () Bool)

(assert (=> b!75925 (= tp!49386 b_and!3443)))

(declare-fun b_free!2403 () Bool)

(declare-fun b_next!2403 () Bool)

(assert (=> b!75925 (= b_free!2403 (not b_next!2403))))

(declare-fun tp!49388 () Bool)

(declare-fun b_and!3445 () Bool)

(assert (=> b!75925 (= tp!49388 b_and!3445)))

(declare-fun tp!49384 () Bool)

(declare-datatypes ((C!1628 0))(
  ( (C!1629 (val!421 Int)) )
))
(declare-datatypes ((List!1312 0))(
  ( (Nil!1306) (Cons!1306 (h!6703 C!1628) (t!20057 List!1312)) )
))
(declare-datatypes ((IArray!745 0))(
  ( (IArray!746 (innerList!430 List!1312)) )
))
(declare-datatypes ((Conc!372 0))(
  ( (Node!372 (left!991 Conc!372) (right!1321 Conc!372) (csize!974 Int) (cheight!583 Int)) (Leaf!650 (xs!2951 IArray!745) (csize!975 Int)) (Empty!372) )
))
(declare-datatypes ((BalanceConc!748 0))(
  ( (BalanceConc!749 (c!19610 Conc!372)) )
))
(declare-datatypes ((Regex!353 0))(
  ( (ElementMatch!353 (c!19611 C!1628)) (Concat!628 (regOne!1218 Regex!353) (regTwo!1218 Regex!353)) (EmptyExpr!353) (Star!353 (reg!682 Regex!353)) (EmptyLang!353) (Union!353 (regOne!1219 Regex!353) (regTwo!1219 Regex!353)) )
))
(declare-datatypes ((String!1766 0))(
  ( (String!1767 (value!10992 String)) )
))
(declare-datatypes ((List!1313 0))(
  ( (Nil!1307) (Cons!1307 (h!6704 (_ BitVec 16)) (t!20058 List!1313)) )
))
(declare-datatypes ((TokenValue!275 0))(
  ( (FloatLiteralValue!550 (text!2370 List!1313)) (TokenValueExt!274 (__x!1645 Int)) (Broken!1375 (value!10993 List!1313)) (Object!280) (End!275) (Def!275) (Underscore!275) (Match!275) (Else!275) (Error!275) (Case!275) (If!275) (Extends!275) (Abstract!275) (Class!275) (Val!275) (DelimiterValue!550 (del!335 List!1313)) (KeywordValue!281 (value!10994 List!1313)) (CommentValue!550 (value!10995 List!1313)) (WhitespaceValue!550 (value!10996 List!1313)) (IndentationValue!275 (value!10997 List!1313)) (String!1768) (Int32!275) (Broken!1376 (value!10998 List!1313)) (Boolean!276) (Unit!779) (OperatorValue!278 (op!335 List!1313)) (IdentifierValue!550 (value!10999 List!1313)) (IdentifierValue!551 (value!11000 List!1313)) (WhitespaceValue!551 (value!11001 List!1313)) (True!550) (False!550) (Broken!1377 (value!11002 List!1313)) (Broken!1378 (value!11003 List!1313)) (True!551) (RightBrace!275) (RightBracket!275) (Colon!275) (Null!275) (Comma!275) (LeftBracket!275) (False!551) (LeftBrace!275) (ImaginaryLiteralValue!275 (text!2371 List!1313)) (StringLiteralValue!825 (value!11004 List!1313)) (EOFValue!275 (value!11005 List!1313)) (IdentValue!275 (value!11006 List!1313)) (DelimiterValue!551 (value!11007 List!1313)) (DedentValue!275 (value!11008 List!1313)) (NewLineValue!275 (value!11009 List!1313)) (IntegerValue!825 (value!11010 (_ BitVec 32)) (text!2372 List!1313)) (IntegerValue!826 (value!11011 Int) (text!2373 List!1313)) (Times!275) (Or!275) (Equal!275) (Minus!275) (Broken!1379 (value!11012 List!1313)) (And!275) (Div!275) (LessEqual!275) (Mod!275) (Concat!629) (Not!275) (Plus!275) (SpaceValue!275 (value!11013 List!1313)) (IntegerValue!827 (value!11014 Int) (text!2374 List!1313)) (StringLiteralValue!826 (text!2375 List!1313)) (FloatLiteralValue!551 (text!2376 List!1313)) (BytesLiteralValue!275 (value!11015 List!1313)) (CommentValue!551 (value!11016 List!1313)) (StringLiteralValue!827 (value!11017 List!1313)) (ErrorTokenValue!275 (msg!336 List!1313)) )
))
(declare-datatypes ((TokenValueInjection!374 0))(
  ( (TokenValueInjection!375 (toValue!788 Int) (toChars!647 Int)) )
))
(declare-datatypes ((Rule!370 0))(
  ( (Rule!371 (regex!285 Regex!353) (tag!463 String!1766) (isSeparator!285 Bool) (transformation!285 TokenValueInjection!374)) )
))
(declare-datatypes ((List!1314 0))(
  ( (Nil!1308) (Cons!1308 (h!6705 Rule!370) (t!20059 List!1314)) )
))
(declare-fun rules!2471 () List!1314)

(declare-fun e!42367 () Bool)

(declare-fun e!42369 () Bool)

(declare-fun b!75924 () Bool)

(declare-fun inv!1687 (String!1766) Bool)

(declare-fun inv!1689 (TokenValueInjection!374) Bool)

(assert (=> b!75924 (= e!42367 (and tp!49384 (inv!1687 (tag!463 (h!6705 rules!2471))) (inv!1689 (transformation!285 (h!6705 rules!2471))) e!42369))))

(assert (=> b!75925 (= e!42369 (and tp!49386 tp!49388))))

(declare-fun b!75926 () Bool)

(declare-fun e!42364 () Bool)

(declare-fun tp_is_empty!629 () Bool)

(declare-fun tp!49387 () Bool)

(assert (=> b!75926 (= e!42364 (and tp_is_empty!629 tp!49387))))

(declare-fun b!75927 () Bool)

(declare-fun res!39683 () Bool)

(declare-fun e!42366 () Bool)

(assert (=> b!75927 (=> (not res!39683) (not e!42366))))

(declare-datatypes ((LexerInterface!177 0))(
  ( (LexerInterfaceExt!174 (__x!1646 Int)) (Lexer!175) )
))
(declare-fun thiss!19403 () LexerInterface!177)

(declare-fun rulesInvariant!171 (LexerInterface!177 List!1314) Bool)

(assert (=> b!75927 (= res!39683 (rulesInvariant!171 thiss!19403 rules!2471))))

(declare-fun b!75928 () Bool)

(declare-fun e!42363 () Bool)

(assert (=> b!75928 (= e!42366 e!42363)))

(declare-fun res!39685 () Bool)

(assert (=> b!75928 (=> (not res!39685) (not e!42363))))

(declare-datatypes ((Token!330 0))(
  ( (Token!331 (value!11018 TokenValue!275) (rule!760 Rule!370) (size!1153 Int) (originalCharacters!336 List!1312)) )
))
(declare-datatypes ((List!1315 0))(
  ( (Nil!1309) (Cons!1309 (h!6706 Token!330) (t!20060 List!1315)) )
))
(declare-datatypes ((IArray!747 0))(
  ( (IArray!748 (innerList!431 List!1315)) )
))
(declare-datatypes ((Conc!373 0))(
  ( (Node!373 (left!992 Conc!373) (right!1322 Conc!373) (csize!976 Int) (cheight!584 Int)) (Leaf!651 (xs!2952 IArray!747) (csize!977 Int)) (Empty!373) )
))
(declare-datatypes ((BalanceConc!750 0))(
  ( (BalanceConc!751 (c!19612 Conc!373)) )
))
(declare-datatypes ((tuple2!1272 0))(
  ( (tuple2!1273 (_1!843 BalanceConc!750) (_2!843 BalanceConc!748)) )
))
(declare-fun lt!14670 () tuple2!1272)

(declare-fun isEmpty!366 (BalanceConc!748) Bool)

(assert (=> b!75928 (= res!39685 (not (isEmpty!366 (_2!843 lt!14670))))))

(declare-fun input!2238 () List!1312)

(declare-fun lex!85 (LexerInterface!177 List!1314 BalanceConc!748) tuple2!1272)

(declare-fun seqFromList!82 (List!1312) BalanceConc!748)

(assert (=> b!75928 (= lt!14670 (lex!85 thiss!19403 rules!2471 (seqFromList!82 input!2238)))))

(declare-fun e!42370 () Bool)

(declare-fun b!75929 () Bool)

(declare-datatypes ((tuple2!1274 0))(
  ( (tuple2!1275 (_1!844 Token!330) (_2!844 List!1312)) )
))
(declare-datatypes ((Option!86 0))(
  ( (None!85) (Some!85 (v!12730 tuple2!1274)) )
))
(declare-fun isDefined!19 (Option!86) Bool)

(declare-fun maxPrefix!21 (LexerInterface!177 List!1314 List!1312) Option!86)

(assert (=> b!75929 (= e!42370 (not (isDefined!19 (maxPrefix!21 thiss!19403 rules!2471 input!2238))))))

(declare-fun lt!14667 () List!1315)

(declare-fun list!393 (BalanceConc!750) List!1315)

(declare-fun prepend!32 (BalanceConc!750 Token!330) BalanceConc!750)

(declare-fun seqFromList!83 (List!1315) BalanceConc!750)

(assert (=> b!75929 (= lt!14667 (list!393 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667))))))

(declare-datatypes ((Unit!780 0))(
  ( (Unit!781) )
))
(declare-fun lt!14668 () Unit!780)

(declare-fun seqFromListBHdTlConstructive!8 (Token!330 List!1315 BalanceConc!750) Unit!780)

(assert (=> b!75929 (= lt!14668 (seqFromListBHdTlConstructive!8 (h!6706 lt!14667) (t!20060 lt!14667) (_1!843 lt!14670)))))

(declare-fun b!75930 () Bool)

(assert (=> b!75930 (= e!42363 e!42370)))

(declare-fun res!39684 () Bool)

(assert (=> b!75930 (=> (not res!39684) (not e!42370))))

(declare-fun lt!14669 () Bool)

(get-info :version)

(assert (=> b!75930 (= res!39684 (and (or lt!14669 (not ((_ is Nil!1309) (t!20060 lt!14667)))) (not lt!14669)))))

(assert (=> b!75930 (= lt!14669 (not ((_ is Cons!1309) lt!14667)))))

(assert (=> b!75930 (= lt!14667 (list!393 (_1!843 lt!14670)))))

(declare-fun b!75931 () Bool)

(declare-fun e!42365 () Bool)

(declare-fun tp!49385 () Bool)

(assert (=> b!75931 (= e!42365 (and e!42367 tp!49385))))

(declare-fun b!75932 () Bool)

(declare-fun res!39687 () Bool)

(assert (=> b!75932 (=> (not res!39687) (not e!42366))))

(declare-fun isEmpty!367 (List!1314) Bool)

(assert (=> b!75932 (= res!39687 (not (isEmpty!367 rules!2471)))))

(declare-fun res!39686 () Bool)

(assert (=> start!5794 (=> (not res!39686) (not e!42366))))

(assert (=> start!5794 (= res!39686 ((_ is Lexer!175) thiss!19403))))

(assert (=> start!5794 e!42366))

(assert (=> start!5794 true))

(assert (=> start!5794 e!42365))

(assert (=> start!5794 e!42364))

(assert (= (and start!5794 res!39686) b!75932))

(assert (= (and b!75932 res!39687) b!75927))

(assert (= (and b!75927 res!39683) b!75928))

(assert (= (and b!75928 res!39685) b!75930))

(assert (= (and b!75930 res!39684) b!75929))

(assert (= b!75924 b!75925))

(assert (= b!75931 b!75924))

(assert (= (and start!5794 ((_ is Cons!1308) rules!2471)) b!75931))

(assert (= (and start!5794 ((_ is Cons!1306) input!2238)) b!75926))

(declare-fun m!47778 () Bool)

(assert (=> b!75930 m!47778))

(declare-fun m!47780 () Bool)

(assert (=> b!75929 m!47780))

(declare-fun m!47782 () Bool)

(assert (=> b!75929 m!47782))

(declare-fun m!47784 () Bool)

(assert (=> b!75929 m!47784))

(assert (=> b!75929 m!47782))

(declare-fun m!47786 () Bool)

(assert (=> b!75929 m!47786))

(assert (=> b!75929 m!47780))

(declare-fun m!47788 () Bool)

(assert (=> b!75929 m!47788))

(declare-fun m!47790 () Bool)

(assert (=> b!75929 m!47790))

(assert (=> b!75929 m!47788))

(declare-fun m!47792 () Bool)

(assert (=> b!75924 m!47792))

(declare-fun m!47794 () Bool)

(assert (=> b!75924 m!47794))

(declare-fun m!47796 () Bool)

(assert (=> b!75928 m!47796))

(declare-fun m!47798 () Bool)

(assert (=> b!75928 m!47798))

(assert (=> b!75928 m!47798))

(declare-fun m!47800 () Bool)

(assert (=> b!75928 m!47800))

(declare-fun m!47802 () Bool)

(assert (=> b!75932 m!47802))

(declare-fun m!47804 () Bool)

(assert (=> b!75927 m!47804))

(check-sat (not b_next!2403) (not b!75927) b_and!3443 (not b!75932) (not b!75926) (not b!75928) b_and!3445 (not b!75931) (not b!75929) (not b!75930) (not b!75924) tp_is_empty!629 (not b_next!2401))
(check-sat b_and!3445 b_and!3443 (not b_next!2403) (not b_next!2401))
(get-model)

(declare-fun d!13394 () Bool)

(assert (=> d!13394 (= (isEmpty!367 rules!2471) ((_ is Nil!1308) rules!2471))))

(assert (=> b!75932 d!13394))

(declare-fun d!13396 () Bool)

(declare-fun res!39696 () Bool)

(declare-fun e!42373 () Bool)

(assert (=> d!13396 (=> (not res!39696) (not e!42373))))

(declare-fun rulesValid!52 (LexerInterface!177 List!1314) Bool)

(assert (=> d!13396 (= res!39696 (rulesValid!52 thiss!19403 rules!2471))))

(assert (=> d!13396 (= (rulesInvariant!171 thiss!19403 rules!2471) e!42373)))

(declare-fun b!75935 () Bool)

(declare-datatypes ((List!1316 0))(
  ( (Nil!1310) (Cons!1310 (h!6707 String!1766) (t!20061 List!1316)) )
))
(declare-fun noDuplicateTag!52 (LexerInterface!177 List!1314 List!1316) Bool)

(assert (=> b!75935 (= e!42373 (noDuplicateTag!52 thiss!19403 rules!2471 Nil!1310))))

(assert (= (and d!13396 res!39696) b!75935))

(declare-fun m!47806 () Bool)

(assert (=> d!13396 m!47806))

(declare-fun m!47808 () Bool)

(assert (=> b!75935 m!47808))

(assert (=> b!75927 d!13396))

(declare-fun d!13402 () Bool)

(declare-fun lt!14673 () Bool)

(declare-fun isEmpty!368 (List!1312) Bool)

(declare-fun list!394 (BalanceConc!748) List!1312)

(assert (=> d!13402 (= lt!14673 (isEmpty!368 (list!394 (_2!843 lt!14670))))))

(declare-fun isEmpty!369 (Conc!372) Bool)

(assert (=> d!13402 (= lt!14673 (isEmpty!369 (c!19610 (_2!843 lt!14670))))))

(assert (=> d!13402 (= (isEmpty!366 (_2!843 lt!14670)) lt!14673)))

(declare-fun bs!7899 () Bool)

(assert (= bs!7899 d!13402))

(declare-fun m!47810 () Bool)

(assert (=> bs!7899 m!47810))

(assert (=> bs!7899 m!47810))

(declare-fun m!47812 () Bool)

(assert (=> bs!7899 m!47812))

(declare-fun m!47814 () Bool)

(assert (=> bs!7899 m!47814))

(assert (=> b!75928 d!13402))

(declare-fun b!75982 () Bool)

(declare-fun e!42398 () Bool)

(declare-fun e!42399 () Bool)

(assert (=> b!75982 (= e!42398 e!42399)))

(declare-fun res!39733 () Bool)

(declare-fun lt!14700 () tuple2!1272)

(declare-fun size!1154 (BalanceConc!748) Int)

(assert (=> b!75982 (= res!39733 (< (size!1154 (_2!843 lt!14700)) (size!1154 (seqFromList!82 input!2238))))))

(assert (=> b!75982 (=> (not res!39733) (not e!42399))))

(declare-fun d!13404 () Bool)

(declare-fun e!42400 () Bool)

(assert (=> d!13404 e!42400))

(declare-fun res!39734 () Bool)

(assert (=> d!13404 (=> (not res!39734) (not e!42400))))

(assert (=> d!13404 (= res!39734 e!42398)))

(declare-fun c!19619 () Bool)

(declare-fun size!1155 (BalanceConc!750) Int)

(assert (=> d!13404 (= c!19619 (> (size!1155 (_1!843 lt!14700)) 0))))

(declare-fun lexTailRecV2!30 (LexerInterface!177 List!1314 BalanceConc!748 BalanceConc!748 BalanceConc!748 BalanceConc!750) tuple2!1272)

(assert (=> d!13404 (= lt!14700 (lexTailRecV2!30 thiss!19403 rules!2471 (seqFromList!82 input!2238) (BalanceConc!749 Empty!372) (seqFromList!82 input!2238) (BalanceConc!751 Empty!373)))))

(assert (=> d!13404 (= (lex!85 thiss!19403 rules!2471 (seqFromList!82 input!2238)) lt!14700)))

(declare-fun b!75983 () Bool)

(declare-datatypes ((tuple2!1276 0))(
  ( (tuple2!1277 (_1!845 List!1315) (_2!845 List!1312)) )
))
(declare-fun lexList!33 (LexerInterface!177 List!1314 List!1312) tuple2!1276)

(assert (=> b!75983 (= e!42400 (= (list!394 (_2!843 lt!14700)) (_2!845 (lexList!33 thiss!19403 rules!2471 (list!394 (seqFromList!82 input!2238))))))))

(declare-fun b!75984 () Bool)

(declare-fun isEmpty!370 (BalanceConc!750) Bool)

(assert (=> b!75984 (= e!42399 (not (isEmpty!370 (_1!843 lt!14700))))))

(declare-fun b!75985 () Bool)

(declare-fun res!39735 () Bool)

(assert (=> b!75985 (=> (not res!39735) (not e!42400))))

(assert (=> b!75985 (= res!39735 (= (list!393 (_1!843 lt!14700)) (_1!845 (lexList!33 thiss!19403 rules!2471 (list!394 (seqFromList!82 input!2238))))))))

(declare-fun b!75986 () Bool)

(assert (=> b!75986 (= e!42398 (= (_2!843 lt!14700) (seqFromList!82 input!2238)))))

(assert (= (and d!13404 c!19619) b!75982))

(assert (= (and d!13404 (not c!19619)) b!75986))

(assert (= (and b!75982 res!39733) b!75984))

(assert (= (and d!13404 res!39734) b!75985))

(assert (= (and b!75985 res!39735) b!75983))

(declare-fun m!47888 () Bool)

(assert (=> b!75985 m!47888))

(assert (=> b!75985 m!47798))

(declare-fun m!47890 () Bool)

(assert (=> b!75985 m!47890))

(assert (=> b!75985 m!47890))

(declare-fun m!47892 () Bool)

(assert (=> b!75985 m!47892))

(declare-fun m!47894 () Bool)

(assert (=> b!75984 m!47894))

(declare-fun m!47896 () Bool)

(assert (=> b!75982 m!47896))

(assert (=> b!75982 m!47798))

(declare-fun m!47898 () Bool)

(assert (=> b!75982 m!47898))

(declare-fun m!47900 () Bool)

(assert (=> d!13404 m!47900))

(assert (=> d!13404 m!47798))

(assert (=> d!13404 m!47798))

(declare-fun m!47902 () Bool)

(assert (=> d!13404 m!47902))

(declare-fun m!47904 () Bool)

(assert (=> b!75983 m!47904))

(assert (=> b!75983 m!47798))

(assert (=> b!75983 m!47890))

(assert (=> b!75983 m!47890))

(assert (=> b!75983 m!47892))

(assert (=> b!75928 d!13404))

(declare-fun d!13428 () Bool)

(declare-fun fromListB!25 (List!1312) BalanceConc!748)

(assert (=> d!13428 (= (seqFromList!82 input!2238) (fromListB!25 input!2238))))

(declare-fun bs!7906 () Bool)

(assert (= bs!7906 d!13428))

(declare-fun m!47906 () Bool)

(assert (=> bs!7906 m!47906))

(assert (=> b!75928 d!13428))

(declare-fun b!76005 () Bool)

(declare-fun e!42408 () Bool)

(declare-fun lt!14714 () Option!86)

(declare-fun contains!194 (List!1314 Rule!370) Bool)

(declare-fun get!317 (Option!86) tuple2!1274)

(assert (=> b!76005 (= e!42408 (contains!194 rules!2471 (rule!760 (_1!844 (get!317 lt!14714)))))))

(declare-fun b!76006 () Bool)

(declare-fun res!39755 () Bool)

(assert (=> b!76006 (=> (not res!39755) (not e!42408))))

(declare-fun charsOf!29 (Token!330) BalanceConc!748)

(assert (=> b!76006 (= res!39755 (= (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))) (originalCharacters!336 (_1!844 (get!317 lt!14714)))))))

(declare-fun b!76007 () Bool)

(declare-fun e!42409 () Option!86)

(declare-fun call!3640 () Option!86)

(assert (=> b!76007 (= e!42409 call!3640)))

(declare-fun b!76008 () Bool)

(declare-fun res!39750 () Bool)

(assert (=> b!76008 (=> (not res!39750) (not e!42408))))

(declare-fun apply!174 (TokenValueInjection!374 BalanceConc!748) TokenValue!275)

(assert (=> b!76008 (= res!39750 (= (value!11018 (_1!844 (get!317 lt!14714))) (apply!174 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))) (seqFromList!82 (originalCharacters!336 (_1!844 (get!317 lt!14714)))))))))

(declare-fun bm!3635 () Bool)

(declare-fun maxPrefixOneRule!6 (LexerInterface!177 Rule!370 List!1312) Option!86)

(assert (=> bm!3635 (= call!3640 (maxPrefixOneRule!6 thiss!19403 (h!6705 rules!2471) input!2238))))

(declare-fun b!76009 () Bool)

(declare-fun e!42407 () Bool)

(assert (=> b!76009 (= e!42407 e!42408)))

(declare-fun res!39756 () Bool)

(assert (=> b!76009 (=> (not res!39756) (not e!42408))))

(assert (=> b!76009 (= res!39756 (isDefined!19 lt!14714))))

(declare-fun b!76010 () Bool)

(declare-fun res!39751 () Bool)

(assert (=> b!76010 (=> (not res!39751) (not e!42408))))

(declare-fun size!1156 (List!1312) Int)

(assert (=> b!76010 (= res!39751 (< (size!1156 (_2!844 (get!317 lt!14714))) (size!1156 input!2238)))))

(declare-fun b!76012 () Bool)

(declare-fun res!39752 () Bool)

(assert (=> b!76012 (=> (not res!39752) (not e!42408))))

(declare-fun ++!99 (List!1312 List!1312) List!1312)

(assert (=> b!76012 (= res!39752 (= (++!99 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))) (_2!844 (get!317 lt!14714))) input!2238))))

(declare-fun b!76013 () Bool)

(declare-fun lt!14713 () Option!86)

(declare-fun lt!14711 () Option!86)

(assert (=> b!76013 (= e!42409 (ite (and ((_ is None!85) lt!14713) ((_ is None!85) lt!14711)) None!85 (ite ((_ is None!85) lt!14711) lt!14713 (ite ((_ is None!85) lt!14713) lt!14711 (ite (>= (size!1153 (_1!844 (v!12730 lt!14713))) (size!1153 (_1!844 (v!12730 lt!14711)))) lt!14713 lt!14711)))))))

(assert (=> b!76013 (= lt!14713 call!3640)))

(assert (=> b!76013 (= lt!14711 (maxPrefix!21 thiss!19403 (t!20059 rules!2471) input!2238))))

(declare-fun d!13430 () Bool)

(assert (=> d!13430 e!42407))

(declare-fun res!39753 () Bool)

(assert (=> d!13430 (=> res!39753 e!42407)))

(declare-fun isEmpty!371 (Option!86) Bool)

(assert (=> d!13430 (= res!39753 (isEmpty!371 lt!14714))))

(assert (=> d!13430 (= lt!14714 e!42409)))

(declare-fun c!19622 () Bool)

(assert (=> d!13430 (= c!19622 (and ((_ is Cons!1308) rules!2471) ((_ is Nil!1308) (t!20059 rules!2471))))))

(declare-fun lt!14715 () Unit!780)

(declare-fun lt!14712 () Unit!780)

(assert (=> d!13430 (= lt!14715 lt!14712)))

(declare-fun isPrefix!9 (List!1312 List!1312) Bool)

(assert (=> d!13430 (isPrefix!9 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!9 (List!1312 List!1312) Unit!780)

(assert (=> d!13430 (= lt!14712 (lemmaIsPrefixRefl!9 input!2238 input!2238))))

(declare-fun rulesValidInductive!25 (LexerInterface!177 List!1314) Bool)

(assert (=> d!13430 (rulesValidInductive!25 thiss!19403 rules!2471)))

(assert (=> d!13430 (= (maxPrefix!21 thiss!19403 rules!2471 input!2238) lt!14714)))

(declare-fun b!76011 () Bool)

(declare-fun res!39754 () Bool)

(assert (=> b!76011 (=> (not res!39754) (not e!42408))))

(declare-fun matchR!10 (Regex!353 List!1312) Bool)

(assert (=> b!76011 (= res!39754 (matchR!10 (regex!285 (rule!760 (_1!844 (get!317 lt!14714)))) (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))))))

(assert (= (and d!13430 c!19622) b!76007))

(assert (= (and d!13430 (not c!19622)) b!76013))

(assert (= (or b!76007 b!76013) bm!3635))

(assert (= (and d!13430 (not res!39753)) b!76009))

(assert (= (and b!76009 res!39756) b!76006))

(assert (= (and b!76006 res!39755) b!76010))

(assert (= (and b!76010 res!39751) b!76012))

(assert (= (and b!76012 res!39752) b!76008))

(assert (= (and b!76008 res!39750) b!76011))

(assert (= (and b!76011 res!39754) b!76005))

(declare-fun m!47908 () Bool)

(assert (=> d!13430 m!47908))

(declare-fun m!47910 () Bool)

(assert (=> d!13430 m!47910))

(declare-fun m!47912 () Bool)

(assert (=> d!13430 m!47912))

(declare-fun m!47914 () Bool)

(assert (=> d!13430 m!47914))

(declare-fun m!47916 () Bool)

(assert (=> b!76006 m!47916))

(declare-fun m!47918 () Bool)

(assert (=> b!76006 m!47918))

(assert (=> b!76006 m!47918))

(declare-fun m!47920 () Bool)

(assert (=> b!76006 m!47920))

(assert (=> b!76008 m!47916))

(declare-fun m!47922 () Bool)

(assert (=> b!76008 m!47922))

(assert (=> b!76008 m!47922))

(declare-fun m!47924 () Bool)

(assert (=> b!76008 m!47924))

(assert (=> b!76011 m!47916))

(assert (=> b!76011 m!47918))

(assert (=> b!76011 m!47918))

(assert (=> b!76011 m!47920))

(assert (=> b!76011 m!47920))

(declare-fun m!47926 () Bool)

(assert (=> b!76011 m!47926))

(assert (=> b!76005 m!47916))

(declare-fun m!47928 () Bool)

(assert (=> b!76005 m!47928))

(declare-fun m!47930 () Bool)

(assert (=> b!76009 m!47930))

(assert (=> b!76012 m!47916))

(assert (=> b!76012 m!47918))

(assert (=> b!76012 m!47918))

(assert (=> b!76012 m!47920))

(assert (=> b!76012 m!47920))

(declare-fun m!47932 () Bool)

(assert (=> b!76012 m!47932))

(declare-fun m!47934 () Bool)

(assert (=> b!76013 m!47934))

(assert (=> b!76010 m!47916))

(declare-fun m!47936 () Bool)

(assert (=> b!76010 m!47936))

(declare-fun m!47938 () Bool)

(assert (=> b!76010 m!47938))

(declare-fun m!47940 () Bool)

(assert (=> bm!3635 m!47940))

(assert (=> b!75929 d!13430))

(declare-fun d!13432 () Bool)

(assert (=> d!13432 (= (isDefined!19 (maxPrefix!21 thiss!19403 rules!2471 input!2238)) (not (isEmpty!371 (maxPrefix!21 thiss!19403 rules!2471 input!2238))))))

(declare-fun bs!7907 () Bool)

(assert (= bs!7907 d!13432))

(assert (=> bs!7907 m!47788))

(declare-fun m!47942 () Bool)

(assert (=> bs!7907 m!47942))

(assert (=> b!75929 d!13432))

(declare-fun d!13434 () Bool)

(declare-fun fromListB!27 (List!1315) BalanceConc!750)

(assert (=> d!13434 (= (seqFromList!83 (t!20060 lt!14667)) (fromListB!27 (t!20060 lt!14667)))))

(declare-fun bs!7908 () Bool)

(assert (= bs!7908 d!13434))

(declare-fun m!47944 () Bool)

(assert (=> bs!7908 m!47944))

(assert (=> b!75929 d!13434))

(declare-fun d!13436 () Bool)

(declare-fun list!396 (Conc!373) List!1315)

(assert (=> d!13436 (= (list!393 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667))) (list!396 (c!19612 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667)))))))

(declare-fun bs!7909 () Bool)

(assert (= bs!7909 d!13436))

(declare-fun m!47946 () Bool)

(assert (=> bs!7909 m!47946))

(assert (=> b!75929 d!13436))

(declare-fun d!13438 () Bool)

(assert (=> d!13438 (= (list!393 (_1!843 lt!14670)) (list!393 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667))))))

(declare-fun lt!14718 () Unit!780)

(declare-fun choose!1258 (Token!330 List!1315 BalanceConc!750) Unit!780)

(assert (=> d!13438 (= lt!14718 (choose!1258 (h!6706 lt!14667) (t!20060 lt!14667) (_1!843 lt!14670)))))

(declare-fun $colon$colon!12 (List!1315 Token!330) List!1315)

(assert (=> d!13438 (= (list!393 (_1!843 lt!14670)) (list!393 (seqFromList!83 ($colon$colon!12 (t!20060 lt!14667) (h!6706 lt!14667)))))))

(assert (=> d!13438 (= (seqFromListBHdTlConstructive!8 (h!6706 lt!14667) (t!20060 lt!14667) (_1!843 lt!14670)) lt!14718)))

(declare-fun bs!7910 () Bool)

(assert (= bs!7910 d!13438))

(declare-fun m!47948 () Bool)

(assert (=> bs!7910 m!47948))

(declare-fun m!47950 () Bool)

(assert (=> bs!7910 m!47950))

(assert (=> bs!7910 m!47782))

(assert (=> bs!7910 m!47786))

(assert (=> bs!7910 m!47780))

(declare-fun m!47952 () Bool)

(assert (=> bs!7910 m!47952))

(assert (=> bs!7910 m!47950))

(declare-fun m!47954 () Bool)

(assert (=> bs!7910 m!47954))

(assert (=> bs!7910 m!47948))

(assert (=> bs!7910 m!47778))

(assert (=> bs!7910 m!47780))

(assert (=> bs!7910 m!47782))

(assert (=> b!75929 d!13438))

(declare-fun d!13440 () Bool)

(declare-fun e!42412 () Bool)

(assert (=> d!13440 e!42412))

(declare-fun res!39759 () Bool)

(assert (=> d!13440 (=> (not res!39759) (not e!42412))))

(declare-fun isBalanced!69 (Conc!373) Bool)

(declare-fun prepend!34 (Conc!373 Token!330) Conc!373)

(assert (=> d!13440 (= res!39759 (isBalanced!69 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667))))))

(declare-fun lt!14721 () BalanceConc!750)

(assert (=> d!13440 (= lt!14721 (BalanceConc!751 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667))))))

(assert (=> d!13440 (= (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667)) lt!14721)))

(declare-fun b!76016 () Bool)

(assert (=> b!76016 (= e!42412 (= (list!393 lt!14721) (Cons!1309 (h!6706 lt!14667) (list!393 (seqFromList!83 (t!20060 lt!14667))))))))

(assert (= (and d!13440 res!39759) b!76016))

(declare-fun m!47956 () Bool)

(assert (=> d!13440 m!47956))

(assert (=> d!13440 m!47956))

(declare-fun m!47958 () Bool)

(assert (=> d!13440 m!47958))

(declare-fun m!47960 () Bool)

(assert (=> b!76016 m!47960))

(assert (=> b!76016 m!47780))

(declare-fun m!47962 () Bool)

(assert (=> b!76016 m!47962))

(assert (=> b!75929 d!13440))

(declare-fun d!13442 () Bool)

(assert (=> d!13442 (= (inv!1687 (tag!463 (h!6705 rules!2471))) (= (mod (str.len (value!10992 (tag!463 (h!6705 rules!2471)))) 2) 0))))

(assert (=> b!75924 d!13442))

(declare-fun d!13444 () Bool)

(declare-fun res!39762 () Bool)

(declare-fun e!42415 () Bool)

(assert (=> d!13444 (=> (not res!39762) (not e!42415))))

(declare-fun semiInverseModEq!45 (Int Int) Bool)

(assert (=> d!13444 (= res!39762 (semiInverseModEq!45 (toChars!647 (transformation!285 (h!6705 rules!2471))) (toValue!788 (transformation!285 (h!6705 rules!2471)))))))

(assert (=> d!13444 (= (inv!1689 (transformation!285 (h!6705 rules!2471))) e!42415)))

(declare-fun b!76019 () Bool)

(declare-fun equivClasses!41 (Int Int) Bool)

(assert (=> b!76019 (= e!42415 (equivClasses!41 (toChars!647 (transformation!285 (h!6705 rules!2471))) (toValue!788 (transformation!285 (h!6705 rules!2471)))))))

(assert (= (and d!13444 res!39762) b!76019))

(declare-fun m!47964 () Bool)

(assert (=> d!13444 m!47964))

(declare-fun m!47966 () Bool)

(assert (=> b!76019 m!47966))

(assert (=> b!75924 d!13444))

(declare-fun d!13446 () Bool)

(assert (=> d!13446 (= (list!393 (_1!843 lt!14670)) (list!396 (c!19612 (_1!843 lt!14670))))))

(declare-fun bs!7911 () Bool)

(assert (= bs!7911 d!13446))

(declare-fun m!47968 () Bool)

(assert (=> bs!7911 m!47968))

(assert (=> b!75930 d!13446))

(declare-fun b!76030 () Bool)

(declare-fun b_free!2405 () Bool)

(declare-fun b_next!2405 () Bool)

(assert (=> b!76030 (= b_free!2405 (not b_next!2405))))

(declare-fun tp!49400 () Bool)

(declare-fun b_and!3447 () Bool)

(assert (=> b!76030 (= tp!49400 b_and!3447)))

(declare-fun b_free!2407 () Bool)

(declare-fun b_next!2407 () Bool)

(assert (=> b!76030 (= b_free!2407 (not b_next!2407))))

(declare-fun tp!49398 () Bool)

(declare-fun b_and!3449 () Bool)

(assert (=> b!76030 (= tp!49398 b_and!3449)))

(declare-fun e!42424 () Bool)

(assert (=> b!76030 (= e!42424 (and tp!49400 tp!49398))))

(declare-fun b!76029 () Bool)

(declare-fun tp!49399 () Bool)

(declare-fun e!42425 () Bool)

(assert (=> b!76029 (= e!42425 (and tp!49399 (inv!1687 (tag!463 (h!6705 (t!20059 rules!2471)))) (inv!1689 (transformation!285 (h!6705 (t!20059 rules!2471)))) e!42424))))

(declare-fun b!76028 () Bool)

(declare-fun e!42426 () Bool)

(declare-fun tp!49397 () Bool)

(assert (=> b!76028 (= e!42426 (and e!42425 tp!49397))))

(assert (=> b!75931 (= tp!49385 e!42426)))

(assert (= b!76029 b!76030))

(assert (= b!76028 b!76029))

(assert (= (and b!75931 ((_ is Cons!1308) (t!20059 rules!2471))) b!76028))

(declare-fun m!47970 () Bool)

(assert (=> b!76029 m!47970))

(declare-fun m!47972 () Bool)

(assert (=> b!76029 m!47972))

(declare-fun b!76035 () Bool)

(declare-fun e!42430 () Bool)

(declare-fun tp!49403 () Bool)

(assert (=> b!76035 (= e!42430 (and tp_is_empty!629 tp!49403))))

(assert (=> b!75926 (= tp!49387 e!42430)))

(assert (= (and b!75926 ((_ is Cons!1306) (t!20057 input!2238))) b!76035))

(declare-fun b!76049 () Bool)

(declare-fun e!42433 () Bool)

(declare-fun tp!49417 () Bool)

(declare-fun tp!49415 () Bool)

(assert (=> b!76049 (= e!42433 (and tp!49417 tp!49415))))

(declare-fun b!76048 () Bool)

(declare-fun tp!49416 () Bool)

(assert (=> b!76048 (= e!42433 tp!49416)))

(declare-fun b!76047 () Bool)

(declare-fun tp!49414 () Bool)

(declare-fun tp!49418 () Bool)

(assert (=> b!76047 (= e!42433 (and tp!49414 tp!49418))))

(declare-fun b!76046 () Bool)

(assert (=> b!76046 (= e!42433 tp_is_empty!629)))

(assert (=> b!75924 (= tp!49384 e!42433)))

(assert (= (and b!75924 ((_ is ElementMatch!353) (regex!285 (h!6705 rules!2471)))) b!76046))

(assert (= (and b!75924 ((_ is Concat!628) (regex!285 (h!6705 rules!2471)))) b!76047))

(assert (= (and b!75924 ((_ is Star!353) (regex!285 (h!6705 rules!2471)))) b!76048))

(assert (= (and b!75924 ((_ is Union!353) (regex!285 (h!6705 rules!2471)))) b!76049))

(check-sat (not d!13402) (not b!76019) (not b!75985) (not b!76012) (not b_next!2407) (not d!13428) (not b!76006) (not d!13396) (not b!76028) (not d!13436) (not b!76035) (not b_next!2405) (not b!76011) (not b!75983) (not d!13446) (not b!75982) (not b_next!2403) b_and!3449 (not bm!3635) (not b!76013) (not b!75935) (not b!76010) (not b!76008) (not d!13440) (not d!13430) b_and!3443 (not b!76048) (not b!76009) (not b!76047) (not b!76029) (not b!76016) b_and!3445 (not d!13444) (not b!75984) (not d!13434) (not d!13432) (not b!76049) (not d!13438) (not b!76005) tp_is_empty!629 (not b_next!2401) b_and!3447 (not d!13404))
(check-sat (not b_next!2405) (not b_next!2403) b_and!3449 (not b_next!2407) b_and!3443 b_and!3445 (not b_next!2401) b_and!3447)
(get-model)

(declare-fun d!13450 () Bool)

(assert (=> d!13450 true))

(declare-fun lambda!1383 () Int)

(declare-fun order!493 () Int)

(declare-fun order!495 () Int)

(declare-fun dynLambda!304 (Int Int) Int)

(declare-fun dynLambda!305 (Int Int) Int)

(assert (=> d!13450 (< (dynLambda!304 order!493 (toChars!647 (transformation!285 (h!6705 rules!2471)))) (dynLambda!305 order!495 lambda!1383))))

(assert (=> d!13450 true))

(declare-fun order!497 () Int)

(declare-fun dynLambda!307 (Int Int) Int)

(assert (=> d!13450 (< (dynLambda!307 order!497 (toValue!788 (transformation!285 (h!6705 rules!2471)))) (dynLambda!305 order!495 lambda!1383))))

(declare-fun Forall!36 (Int) Bool)

(assert (=> d!13450 (= (semiInverseModEq!45 (toChars!647 (transformation!285 (h!6705 rules!2471))) (toValue!788 (transformation!285 (h!6705 rules!2471)))) (Forall!36 lambda!1383))))

(declare-fun bs!7914 () Bool)

(assert (= bs!7914 d!13450))

(declare-fun m!48000 () Bool)

(assert (=> bs!7914 m!48000))

(assert (=> d!13444 d!13450))

(declare-fun d!13456 () Bool)

(declare-fun lt!14730 () Bool)

(declare-fun isEmpty!376 (List!1315) Bool)

(assert (=> d!13456 (= lt!14730 (isEmpty!376 (list!393 (_1!843 lt!14700))))))

(declare-fun isEmpty!377 (Conc!373) Bool)

(assert (=> d!13456 (= lt!14730 (isEmpty!377 (c!19612 (_1!843 lt!14700))))))

(assert (=> d!13456 (= (isEmpty!370 (_1!843 lt!14700)) lt!14730)))

(declare-fun bs!7915 () Bool)

(assert (= bs!7915 d!13456))

(assert (=> bs!7915 m!47888))

(assert (=> bs!7915 m!47888))

(declare-fun m!48002 () Bool)

(assert (=> bs!7915 m!48002))

(declare-fun m!48004 () Bool)

(assert (=> bs!7915 m!48004))

(assert (=> b!75984 d!13456))

(declare-fun d!13458 () Bool)

(assert (=> d!13458 true))

(declare-fun lt!14733 () Bool)

(assert (=> d!13458 (= lt!14733 (rulesValidInductive!25 thiss!19403 rules!2471))))

(declare-fun lambda!1389 () Int)

(declare-fun forall!181 (List!1314 Int) Bool)

(assert (=> d!13458 (= lt!14733 (forall!181 rules!2471 lambda!1389))))

(assert (=> d!13458 (= (rulesValid!52 thiss!19403 rules!2471) lt!14733)))

(declare-fun bs!7917 () Bool)

(assert (= bs!7917 d!13458))

(assert (=> bs!7917 m!47914))

(declare-fun m!48012 () Bool)

(assert (=> bs!7917 m!48012))

(assert (=> d!13396 d!13458))

(declare-fun d!13466 () Bool)

(assert (=> d!13466 (= (list!393 lt!14721) (list!396 (c!19612 lt!14721)))))

(declare-fun bs!7918 () Bool)

(assert (= bs!7918 d!13466))

(declare-fun m!48014 () Bool)

(assert (=> bs!7918 m!48014))

(assert (=> b!76016 d!13466))

(declare-fun d!13468 () Bool)

(assert (=> d!13468 (= (list!393 (seqFromList!83 (t!20060 lt!14667))) (list!396 (c!19612 (seqFromList!83 (t!20060 lt!14667)))))))

(declare-fun bs!7919 () Bool)

(assert (= bs!7919 d!13468))

(declare-fun m!48016 () Bool)

(assert (=> bs!7919 m!48016))

(assert (=> b!76016 d!13468))

(declare-fun d!13470 () Bool)

(declare-fun e!42470 () Bool)

(assert (=> d!13470 e!42470))

(declare-fun res!39788 () Bool)

(assert (=> d!13470 (=> (not res!39788) (not e!42470))))

(declare-fun lt!14736 () BalanceConc!748)

(assert (=> d!13470 (= res!39788 (= (list!394 lt!14736) input!2238))))

(declare-fun fromList!14 (List!1312) Conc!372)

(assert (=> d!13470 (= lt!14736 (BalanceConc!749 (fromList!14 input!2238)))))

(assert (=> d!13470 (= (fromListB!25 input!2238) lt!14736)))

(declare-fun b!76122 () Bool)

(declare-fun isBalanced!70 (Conc!372) Bool)

(assert (=> b!76122 (= e!42470 (isBalanced!70 (fromList!14 input!2238)))))

(assert (= (and d!13470 res!39788) b!76122))

(declare-fun m!48030 () Bool)

(assert (=> d!13470 m!48030))

(declare-fun m!48032 () Bool)

(assert (=> d!13470 m!48032))

(assert (=> b!76122 m!48032))

(assert (=> b!76122 m!48032))

(declare-fun m!48034 () Bool)

(assert (=> b!76122 m!48034))

(assert (=> d!13428 d!13470))

(declare-fun d!13478 () Bool)

(assert (=> d!13478 (= (list!393 (_1!843 lt!14700)) (list!396 (c!19612 (_1!843 lt!14700))))))

(declare-fun bs!7922 () Bool)

(assert (= bs!7922 d!13478))

(declare-fun m!48036 () Bool)

(assert (=> bs!7922 m!48036))

(assert (=> b!75985 d!13478))

(declare-fun b!76142 () Bool)

(declare-fun e!42487 () Bool)

(declare-fun lt!14755 () tuple2!1276)

(assert (=> b!76142 (= e!42487 (= (_2!845 lt!14755) (list!394 (seqFromList!82 input!2238))))))

(declare-fun b!76144 () Bool)

(declare-fun e!42486 () tuple2!1276)

(declare-fun lt!14753 () Option!86)

(declare-fun lt!14754 () tuple2!1276)

(assert (=> b!76144 (= e!42486 (tuple2!1277 (Cons!1309 (_1!844 (v!12730 lt!14753)) (_1!845 lt!14754)) (_2!845 lt!14754)))))

(assert (=> b!76144 (= lt!14754 (lexList!33 thiss!19403 rules!2471 (_2!844 (v!12730 lt!14753))))))

(declare-fun b!76145 () Bool)

(declare-fun e!42488 () Bool)

(assert (=> b!76145 (= e!42487 e!42488)))

(declare-fun res!39800 () Bool)

(assert (=> b!76145 (= res!39800 (< (size!1156 (_2!845 lt!14755)) (size!1156 (list!394 (seqFromList!82 input!2238)))))))

(assert (=> b!76145 (=> (not res!39800) (not e!42488))))

(declare-fun b!76146 () Bool)

(assert (=> b!76146 (= e!42486 (tuple2!1277 Nil!1309 (list!394 (seqFromList!82 input!2238))))))

(declare-fun d!13480 () Bool)

(assert (=> d!13480 e!42487))

(declare-fun c!19639 () Bool)

(declare-fun size!1160 (List!1315) Int)

(assert (=> d!13480 (= c!19639 (> (size!1160 (_1!845 lt!14755)) 0))))

(assert (=> d!13480 (= lt!14755 e!42486)))

(declare-fun c!19640 () Bool)

(assert (=> d!13480 (= c!19640 ((_ is Some!85) lt!14753))))

(assert (=> d!13480 (= lt!14753 (maxPrefix!21 thiss!19403 rules!2471 (list!394 (seqFromList!82 input!2238))))))

(assert (=> d!13480 (= (lexList!33 thiss!19403 rules!2471 (list!394 (seqFromList!82 input!2238))) lt!14755)))

(declare-fun b!76143 () Bool)

(assert (=> b!76143 (= e!42488 (not (isEmpty!376 (_1!845 lt!14755))))))

(assert (= (and d!13480 c!19640) b!76144))

(assert (= (and d!13480 (not c!19640)) b!76146))

(assert (= (and d!13480 c!19639) b!76145))

(assert (= (and d!13480 (not c!19639)) b!76142))

(assert (= (and b!76145 res!39800) b!76143))

(declare-fun m!48060 () Bool)

(assert (=> b!76144 m!48060))

(declare-fun m!48062 () Bool)

(assert (=> b!76145 m!48062))

(assert (=> b!76145 m!47890))

(declare-fun m!48064 () Bool)

(assert (=> b!76145 m!48064))

(declare-fun m!48066 () Bool)

(assert (=> d!13480 m!48066))

(assert (=> d!13480 m!47890))

(declare-fun m!48068 () Bool)

(assert (=> d!13480 m!48068))

(declare-fun m!48070 () Bool)

(assert (=> b!76143 m!48070))

(assert (=> b!75985 d!13480))

(declare-fun d!13494 () Bool)

(declare-fun list!399 (Conc!372) List!1312)

(assert (=> d!13494 (= (list!394 (seqFromList!82 input!2238)) (list!399 (c!19610 (seqFromList!82 input!2238))))))

(declare-fun bs!7926 () Bool)

(assert (= bs!7926 d!13494))

(declare-fun m!48072 () Bool)

(assert (=> bs!7926 m!48072))

(assert (=> b!75985 d!13494))

(declare-fun b!76160 () Bool)

(declare-fun e!42494 () List!1315)

(declare-fun ++!102 (List!1315 List!1315) List!1315)

(assert (=> b!76160 (= e!42494 (++!102 (list!396 (left!992 (c!19612 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667))))) (list!396 (right!1322 (c!19612 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667)))))))))

(declare-fun b!76159 () Bool)

(declare-fun list!400 (IArray!747) List!1315)

(assert (=> b!76159 (= e!42494 (list!400 (xs!2952 (c!19612 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667))))))))

(declare-fun b!76157 () Bool)

(declare-fun e!42493 () List!1315)

(assert (=> b!76157 (= e!42493 Nil!1309)))

(declare-fun d!13496 () Bool)

(declare-fun c!19645 () Bool)

(assert (=> d!13496 (= c!19645 ((_ is Empty!373) (c!19612 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667)))))))

(assert (=> d!13496 (= (list!396 (c!19612 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667)))) e!42493)))

(declare-fun b!76158 () Bool)

(assert (=> b!76158 (= e!42493 e!42494)))

(declare-fun c!19646 () Bool)

(assert (=> b!76158 (= c!19646 ((_ is Leaf!651) (c!19612 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667)))))))

(assert (= (and d!13496 c!19645) b!76157))

(assert (= (and d!13496 (not c!19645)) b!76158))

(assert (= (and b!76158 c!19646) b!76159))

(assert (= (and b!76158 (not c!19646)) b!76160))

(declare-fun m!48074 () Bool)

(assert (=> b!76160 m!48074))

(declare-fun m!48076 () Bool)

(assert (=> b!76160 m!48076))

(assert (=> b!76160 m!48074))

(assert (=> b!76160 m!48076))

(declare-fun m!48078 () Bool)

(assert (=> b!76160 m!48078))

(declare-fun m!48080 () Bool)

(assert (=> b!76159 m!48080))

(assert (=> d!13436 d!13496))

(declare-fun d!13498 () Bool)

(assert (=> d!13498 (= (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))) (list!399 (c!19610 (charsOf!29 (_1!844 (get!317 lt!14714))))))))

(declare-fun bs!7927 () Bool)

(assert (= bs!7927 d!13498))

(declare-fun m!48082 () Bool)

(assert (=> bs!7927 m!48082))

(assert (=> b!76006 d!13498))

(declare-fun d!13500 () Bool)

(declare-fun lt!14764 () BalanceConc!748)

(assert (=> d!13500 (= (list!394 lt!14764) (originalCharacters!336 (_1!844 (get!317 lt!14714))))))

(declare-fun dynLambda!309 (Int TokenValue!275) BalanceConc!748)

(assert (=> d!13500 (= lt!14764 (dynLambda!309 (toChars!647 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714))))) (value!11018 (_1!844 (get!317 lt!14714)))))))

(assert (=> d!13500 (= (charsOf!29 (_1!844 (get!317 lt!14714))) lt!14764)))

(declare-fun b_lambda!865 () Bool)

(assert (=> (not b_lambda!865) (not d!13500)))

(declare-fun t!20066 () Bool)

(declare-fun tb!2355 () Bool)

(assert (=> (and b!75925 (= (toChars!647 (transformation!285 (h!6705 rules!2471))) (toChars!647 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))))) t!20066) tb!2355))

(declare-fun b!76178 () Bool)

(declare-fun e!42506 () Bool)

(declare-fun tp!49451 () Bool)

(declare-fun inv!1690 (Conc!372) Bool)

(assert (=> b!76178 (= e!42506 (and (inv!1690 (c!19610 (dynLambda!309 (toChars!647 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714))))) (value!11018 (_1!844 (get!317 lt!14714)))))) tp!49451))))

(declare-fun result!3348 () Bool)

(declare-fun inv!1691 (BalanceConc!748) Bool)

(assert (=> tb!2355 (= result!3348 (and (inv!1691 (dynLambda!309 (toChars!647 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714))))) (value!11018 (_1!844 (get!317 lt!14714))))) e!42506))))

(assert (= tb!2355 b!76178))

(declare-fun m!48094 () Bool)

(assert (=> b!76178 m!48094))

(declare-fun m!48096 () Bool)

(assert (=> tb!2355 m!48096))

(assert (=> d!13500 t!20066))

(declare-fun b_and!3455 () Bool)

(assert (= b_and!3445 (and (=> t!20066 result!3348) b_and!3455)))

(declare-fun t!20068 () Bool)

(declare-fun tb!2357 () Bool)

(assert (=> (and b!76030 (= (toChars!647 (transformation!285 (h!6705 (t!20059 rules!2471)))) (toChars!647 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))))) t!20068) tb!2357))

(declare-fun result!3352 () Bool)

(assert (= result!3352 result!3348))

(assert (=> d!13500 t!20068))

(declare-fun b_and!3457 () Bool)

(assert (= b_and!3449 (and (=> t!20068 result!3352) b_and!3457)))

(declare-fun m!48100 () Bool)

(assert (=> d!13500 m!48100))

(declare-fun m!48102 () Bool)

(assert (=> d!13500 m!48102))

(assert (=> b!76006 d!13500))

(declare-fun d!13506 () Bool)

(assert (=> d!13506 (= (get!317 lt!14714) (v!12730 lt!14714))))

(assert (=> b!76006 d!13506))

(declare-fun d!13510 () Bool)

(declare-fun lt!14773 () Int)

(assert (=> d!13510 (= lt!14773 (size!1156 (list!394 (_2!843 lt!14700))))))

(declare-fun size!1163 (Conc!372) Int)

(assert (=> d!13510 (= lt!14773 (size!1163 (c!19610 (_2!843 lt!14700))))))

(assert (=> d!13510 (= (size!1154 (_2!843 lt!14700)) lt!14773)))

(declare-fun bs!7931 () Bool)

(assert (= bs!7931 d!13510))

(assert (=> bs!7931 m!47904))

(assert (=> bs!7931 m!47904))

(declare-fun m!48110 () Bool)

(assert (=> bs!7931 m!48110))

(declare-fun m!48112 () Bool)

(assert (=> bs!7931 m!48112))

(assert (=> b!75982 d!13510))

(declare-fun d!13516 () Bool)

(declare-fun lt!14774 () Int)

(assert (=> d!13516 (= lt!14774 (size!1156 (list!394 (seqFromList!82 input!2238))))))

(assert (=> d!13516 (= lt!14774 (size!1163 (c!19610 (seqFromList!82 input!2238))))))

(assert (=> d!13516 (= (size!1154 (seqFromList!82 input!2238)) lt!14774)))

(declare-fun bs!7933 () Bool)

(assert (= bs!7933 d!13516))

(assert (=> bs!7933 m!47798))

(assert (=> bs!7933 m!47890))

(assert (=> bs!7933 m!47890))

(assert (=> bs!7933 m!48064))

(declare-fun m!48116 () Bool)

(assert (=> bs!7933 m!48116))

(assert (=> b!75982 d!13516))

(declare-fun d!13520 () Bool)

(declare-fun lt!14780 () Int)

(assert (=> d!13520 (= lt!14780 (size!1160 (list!393 (_1!843 lt!14700))))))

(declare-fun size!1164 (Conc!373) Int)

(assert (=> d!13520 (= lt!14780 (size!1164 (c!19612 (_1!843 lt!14700))))))

(assert (=> d!13520 (= (size!1155 (_1!843 lt!14700)) lt!14780)))

(declare-fun bs!7934 () Bool)

(assert (= bs!7934 d!13520))

(assert (=> bs!7934 m!47888))

(assert (=> bs!7934 m!47888))

(declare-fun m!48118 () Bool)

(assert (=> bs!7934 m!48118))

(declare-fun m!48120 () Bool)

(assert (=> bs!7934 m!48120))

(assert (=> d!13404 d!13520))

(declare-fun d!13522 () Bool)

(declare-fun e!42556 () Bool)

(assert (=> d!13522 e!42556))

(declare-fun res!39864 () Bool)

(assert (=> d!13522 (=> (not res!39864) (not e!42556))))

(declare-fun lt!14916 () tuple2!1272)

(declare-fun lexRec!19 (LexerInterface!177 List!1314 BalanceConc!748) tuple2!1272)

(assert (=> d!13522 (= res!39864 (= (list!393 (_1!843 lt!14916)) (list!393 (_1!843 (lexRec!19 thiss!19403 rules!2471 (seqFromList!82 input!2238))))))))

(declare-fun e!42555 () tuple2!1272)

(assert (=> d!13522 (= lt!14916 e!42555)))

(declare-fun c!19670 () Bool)

(declare-datatypes ((tuple2!1280 0))(
  ( (tuple2!1281 (_1!847 Token!330) (_2!847 BalanceConc!748)) )
))
(declare-datatypes ((Option!87 0))(
  ( (None!86) (Some!86 (v!12737 tuple2!1280)) )
))
(declare-fun lt!14908 () Option!87)

(assert (=> d!13522 (= c!19670 ((_ is Some!86) lt!14908))))

(declare-fun maxPrefixZipperSequenceV2!14 (LexerInterface!177 List!1314 BalanceConc!748 BalanceConc!748) Option!87)

(assert (=> d!13522 (= lt!14908 (maxPrefixZipperSequenceV2!14 thiss!19403 rules!2471 (seqFromList!82 input!2238) (seqFromList!82 input!2238)))))

(declare-fun lt!14912 () Unit!780)

(declare-fun lt!14897 () Unit!780)

(assert (=> d!13522 (= lt!14912 lt!14897)))

(declare-fun lt!14892 () List!1312)

(declare-fun lt!14885 () List!1312)

(declare-fun isSuffix!14 (List!1312 List!1312) Bool)

(assert (=> d!13522 (isSuffix!14 lt!14892 (++!99 lt!14885 lt!14892))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!14 (List!1312 List!1312) Unit!780)

(assert (=> d!13522 (= lt!14897 (lemmaConcatTwoListThenFSndIsSuffix!14 lt!14885 lt!14892))))

(assert (=> d!13522 (= lt!14892 (list!394 (seqFromList!82 input!2238)))))

(assert (=> d!13522 (= lt!14885 (list!394 (BalanceConc!749 Empty!372)))))

(assert (=> d!13522 (= (lexTailRecV2!30 thiss!19403 rules!2471 (seqFromList!82 input!2238) (BalanceConc!749 Empty!372) (seqFromList!82 input!2238) (BalanceConc!751 Empty!373)) lt!14916)))

(declare-fun b!76274 () Bool)

(declare-fun e!42554 () tuple2!1272)

(assert (=> b!76274 (= e!42554 (tuple2!1273 (BalanceConc!751 Empty!373) (seqFromList!82 input!2238)))))

(declare-fun b!76275 () Bool)

(declare-fun lt!14917 () BalanceConc!748)

(declare-fun append!20 (BalanceConc!750 Token!330) BalanceConc!750)

(assert (=> b!76275 (= e!42555 (lexTailRecV2!30 thiss!19403 rules!2471 (seqFromList!82 input!2238) lt!14917 (_2!847 (v!12737 lt!14908)) (append!20 (BalanceConc!751 Empty!373) (_1!847 (v!12737 lt!14908)))))))

(declare-fun lt!14899 () tuple2!1272)

(assert (=> b!76275 (= lt!14899 (lexRec!19 thiss!19403 rules!2471 (_2!847 (v!12737 lt!14908))))))

(declare-fun lt!14905 () List!1312)

(assert (=> b!76275 (= lt!14905 (list!394 (BalanceConc!749 Empty!372)))))

(declare-fun lt!14907 () List!1312)

(assert (=> b!76275 (= lt!14907 (list!394 (charsOf!29 (_1!847 (v!12737 lt!14908)))))))

(declare-fun lt!14902 () List!1312)

(assert (=> b!76275 (= lt!14902 (list!394 (_2!847 (v!12737 lt!14908))))))

(declare-fun lt!14887 () Unit!780)

(declare-fun lemmaConcatAssociativity!32 (List!1312 List!1312 List!1312) Unit!780)

(assert (=> b!76275 (= lt!14887 (lemmaConcatAssociativity!32 lt!14905 lt!14907 lt!14902))))

(assert (=> b!76275 (= (++!99 (++!99 lt!14905 lt!14907) lt!14902) (++!99 lt!14905 (++!99 lt!14907 lt!14902)))))

(declare-fun lt!14893 () Unit!780)

(assert (=> b!76275 (= lt!14893 lt!14887)))

(declare-fun lt!14906 () Option!87)

(declare-fun maxPrefixZipperSequence!17 (LexerInterface!177 List!1314 BalanceConc!748) Option!87)

(assert (=> b!76275 (= lt!14906 (maxPrefixZipperSequence!17 thiss!19403 rules!2471 (seqFromList!82 input!2238)))))

(declare-fun c!19669 () Bool)

(assert (=> b!76275 (= c!19669 ((_ is Some!86) lt!14906))))

(assert (=> b!76275 (= (lexRec!19 thiss!19403 rules!2471 (seqFromList!82 input!2238)) e!42554)))

(declare-fun lt!14888 () Unit!780)

(declare-fun Unit!782 () Unit!780)

(assert (=> b!76275 (= lt!14888 Unit!782)))

(declare-fun lt!14890 () List!1315)

(assert (=> b!76275 (= lt!14890 (list!393 (BalanceConc!751 Empty!373)))))

(declare-fun lt!14886 () List!1315)

(assert (=> b!76275 (= lt!14886 (Cons!1309 (_1!847 (v!12737 lt!14908)) Nil!1309))))

(declare-fun lt!14894 () List!1315)

(assert (=> b!76275 (= lt!14894 (list!393 (_1!843 lt!14899)))))

(declare-fun lt!14904 () Unit!780)

(declare-fun lemmaConcatAssociativity!33 (List!1315 List!1315 List!1315) Unit!780)

(assert (=> b!76275 (= lt!14904 (lemmaConcatAssociativity!33 lt!14890 lt!14886 lt!14894))))

(assert (=> b!76275 (= (++!102 (++!102 lt!14890 lt!14886) lt!14894) (++!102 lt!14890 (++!102 lt!14886 lt!14894)))))

(declare-fun lt!14910 () Unit!780)

(assert (=> b!76275 (= lt!14910 lt!14904)))

(declare-fun lt!14889 () List!1312)

(assert (=> b!76275 (= lt!14889 (++!99 (list!394 (BalanceConc!749 Empty!372)) (list!394 (charsOf!29 (_1!847 (v!12737 lt!14908))))))))

(declare-fun lt!14903 () List!1312)

(assert (=> b!76275 (= lt!14903 (list!394 (_2!847 (v!12737 lt!14908))))))

(declare-fun lt!14898 () List!1315)

(assert (=> b!76275 (= lt!14898 (list!393 (append!20 (BalanceConc!751 Empty!373) (_1!847 (v!12737 lt!14908)))))))

(declare-fun lt!14900 () Unit!780)

(declare-fun lemmaLexThenLexPrefix!14 (LexerInterface!177 List!1314 List!1312 List!1312 List!1315 List!1315 List!1312) Unit!780)

(assert (=> b!76275 (= lt!14900 (lemmaLexThenLexPrefix!14 thiss!19403 rules!2471 lt!14889 lt!14903 lt!14898 (list!393 (_1!843 lt!14899)) (list!394 (_2!843 lt!14899))))))

(assert (=> b!76275 (= (lexList!33 thiss!19403 rules!2471 lt!14889) (tuple2!1277 lt!14898 Nil!1306))))

(declare-fun lt!14915 () Unit!780)

(assert (=> b!76275 (= lt!14915 lt!14900)))

(declare-fun lt!14913 () BalanceConc!748)

(declare-fun ++!103 (BalanceConc!748 BalanceConc!748) BalanceConc!748)

(assert (=> b!76275 (= lt!14913 (++!103 (BalanceConc!749 Empty!372) (charsOf!29 (_1!847 (v!12737 lt!14908)))))))

(declare-fun lt!14896 () Option!87)

(assert (=> b!76275 (= lt!14896 (maxPrefixZipperSequence!17 thiss!19403 rules!2471 lt!14913))))

(declare-fun c!19671 () Bool)

(assert (=> b!76275 (= c!19671 ((_ is Some!86) lt!14896))))

(declare-fun e!42553 () tuple2!1272)

(assert (=> b!76275 (= (lexRec!19 thiss!19403 rules!2471 (++!103 (BalanceConc!749 Empty!372) (charsOf!29 (_1!847 (v!12737 lt!14908))))) e!42553)))

(declare-fun lt!14901 () Unit!780)

(declare-fun Unit!783 () Unit!780)

(assert (=> b!76275 (= lt!14901 Unit!783)))

(assert (=> b!76275 (= lt!14917 (++!103 (BalanceConc!749 Empty!372) (charsOf!29 (_1!847 (v!12737 lt!14908)))))))

(declare-fun lt!14909 () List!1312)

(assert (=> b!76275 (= lt!14909 (list!394 lt!14917))))

(declare-fun lt!14895 () List!1312)

(assert (=> b!76275 (= lt!14895 (list!394 (_2!847 (v!12737 lt!14908))))))

(declare-fun lt!14914 () Unit!780)

(assert (=> b!76275 (= lt!14914 (lemmaConcatTwoListThenFSndIsSuffix!14 lt!14909 lt!14895))))

(assert (=> b!76275 (isSuffix!14 lt!14895 (++!99 lt!14909 lt!14895))))

(declare-fun lt!14911 () Unit!780)

(assert (=> b!76275 (= lt!14911 lt!14914)))

(declare-fun b!76276 () Bool)

(assert (=> b!76276 (= e!42555 (tuple2!1273 (BalanceConc!751 Empty!373) (seqFromList!82 input!2238)))))

(declare-fun lt!14891 () tuple2!1272)

(declare-fun b!76277 () Bool)

(assert (=> b!76277 (= lt!14891 (lexRec!19 thiss!19403 rules!2471 (_2!847 (v!12737 lt!14906))))))

(assert (=> b!76277 (= e!42554 (tuple2!1273 (prepend!32 (_1!843 lt!14891) (_1!847 (v!12737 lt!14906))) (_2!843 lt!14891)))))

(declare-fun b!76278 () Bool)

(assert (=> b!76278 (= e!42556 (= (list!394 (_2!843 lt!14916)) (list!394 (_2!843 (lexRec!19 thiss!19403 rules!2471 (seqFromList!82 input!2238))))))))

(declare-fun b!76279 () Bool)

(declare-fun lt!14884 () tuple2!1272)

(assert (=> b!76279 (= lt!14884 (lexRec!19 thiss!19403 rules!2471 (_2!847 (v!12737 lt!14896))))))

(assert (=> b!76279 (= e!42553 (tuple2!1273 (prepend!32 (_1!843 lt!14884) (_1!847 (v!12737 lt!14896))) (_2!843 lt!14884)))))

(declare-fun b!76280 () Bool)

(assert (=> b!76280 (= e!42553 (tuple2!1273 (BalanceConc!751 Empty!373) lt!14913))))

(assert (= (and d!13522 c!19670) b!76275))

(assert (= (and d!13522 (not c!19670)) b!76276))

(assert (= (and b!76275 c!19669) b!76277))

(assert (= (and b!76275 (not c!19669)) b!76274))

(assert (= (and b!76275 c!19671) b!76279))

(assert (= (and b!76275 (not c!19671)) b!76280))

(assert (= (and d!13522 res!39864) b!76278))

(declare-fun m!48260 () Bool)

(assert (=> b!76278 m!48260))

(assert (=> b!76278 m!47798))

(declare-fun m!48262 () Bool)

(assert (=> b!76278 m!48262))

(declare-fun m!48264 () Bool)

(assert (=> b!76278 m!48264))

(assert (=> d!13522 m!47798))

(assert (=> d!13522 m!47890))

(assert (=> d!13522 m!47798))

(assert (=> d!13522 m!47798))

(declare-fun m!48266 () Bool)

(assert (=> d!13522 m!48266))

(declare-fun m!48268 () Bool)

(assert (=> d!13522 m!48268))

(declare-fun m!48270 () Bool)

(assert (=> d!13522 m!48270))

(declare-fun m!48272 () Bool)

(assert (=> d!13522 m!48272))

(declare-fun m!48274 () Bool)

(assert (=> d!13522 m!48274))

(assert (=> d!13522 m!48268))

(declare-fun m!48276 () Bool)

(assert (=> d!13522 m!48276))

(declare-fun m!48278 () Bool)

(assert (=> d!13522 m!48278))

(assert (=> d!13522 m!47798))

(assert (=> d!13522 m!48262))

(declare-fun m!48280 () Bool)

(assert (=> b!76277 m!48280))

(declare-fun m!48282 () Bool)

(assert (=> b!76277 m!48282))

(assert (=> b!76275 m!48272))

(declare-fun m!48284 () Bool)

(assert (=> b!76275 m!48284))

(declare-fun m!48286 () Bool)

(assert (=> b!76275 m!48286))

(declare-fun m!48288 () Bool)

(assert (=> b!76275 m!48288))

(declare-fun m!48290 () Bool)

(assert (=> b!76275 m!48290))

(declare-fun m!48292 () Bool)

(assert (=> b!76275 m!48292))

(assert (=> b!76275 m!48288))

(declare-fun m!48294 () Bool)

(assert (=> b!76275 m!48294))

(declare-fun m!48296 () Bool)

(assert (=> b!76275 m!48296))

(declare-fun m!48298 () Bool)

(assert (=> b!76275 m!48298))

(assert (=> b!76275 m!48298))

(declare-fun m!48300 () Bool)

(assert (=> b!76275 m!48300))

(declare-fun m!48302 () Bool)

(assert (=> b!76275 m!48302))

(declare-fun m!48304 () Bool)

(assert (=> b!76275 m!48304))

(declare-fun m!48306 () Bool)

(assert (=> b!76275 m!48306))

(declare-fun m!48308 () Bool)

(assert (=> b!76275 m!48308))

(declare-fun m!48310 () Bool)

(assert (=> b!76275 m!48310))

(declare-fun m!48312 () Bool)

(assert (=> b!76275 m!48312))

(declare-fun m!48314 () Bool)

(assert (=> b!76275 m!48314))

(assert (=> b!76275 m!48304))

(declare-fun m!48316 () Bool)

(assert (=> b!76275 m!48316))

(declare-fun m!48318 () Bool)

(assert (=> b!76275 m!48318))

(declare-fun m!48320 () Bool)

(assert (=> b!76275 m!48320))

(assert (=> b!76275 m!48314))

(declare-fun m!48322 () Bool)

(assert (=> b!76275 m!48322))

(assert (=> b!76275 m!47798))

(assert (=> b!76275 m!48298))

(declare-fun m!48324 () Bool)

(assert (=> b!76275 m!48324))

(declare-fun m!48326 () Bool)

(assert (=> b!76275 m!48326))

(declare-fun m!48328 () Bool)

(assert (=> b!76275 m!48328))

(assert (=> b!76275 m!48272))

(declare-fun m!48330 () Bool)

(assert (=> b!76275 m!48330))

(declare-fun m!48332 () Bool)

(assert (=> b!76275 m!48332))

(declare-fun m!48334 () Bool)

(assert (=> b!76275 m!48334))

(assert (=> b!76275 m!48334))

(assert (=> b!76275 m!48284))

(declare-fun m!48336 () Bool)

(assert (=> b!76275 m!48336))

(assert (=> b!76275 m!48316))

(assert (=> b!76275 m!48330))

(assert (=> b!76275 m!47798))

(assert (=> b!76275 m!48262))

(declare-fun m!48338 () Bool)

(assert (=> b!76275 m!48338))

(assert (=> b!76275 m!48296))

(declare-fun m!48340 () Bool)

(assert (=> b!76275 m!48340))

(declare-fun m!48342 () Bool)

(assert (=> b!76275 m!48342))

(assert (=> b!76275 m!48334))

(assert (=> b!76275 m!48308))

(assert (=> b!76275 m!48338))

(assert (=> b!76275 m!47798))

(declare-fun m!48344 () Bool)

(assert (=> b!76275 m!48344))

(declare-fun m!48346 () Bool)

(assert (=> b!76279 m!48346))

(declare-fun m!48348 () Bool)

(assert (=> b!76279 m!48348))

(assert (=> d!13404 d!13522))

(declare-fun d!13548 () Bool)

(declare-fun lt!14920 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!57 (List!1314) (InoxSet Rule!370))

(assert (=> d!13548 (= lt!14920 (select (content!57 rules!2471) (rule!760 (_1!844 (get!317 lt!14714)))))))

(declare-fun e!42561 () Bool)

(assert (=> d!13548 (= lt!14920 e!42561)))

(declare-fun res!39870 () Bool)

(assert (=> d!13548 (=> (not res!39870) (not e!42561))))

(assert (=> d!13548 (= res!39870 ((_ is Cons!1308) rules!2471))))

(assert (=> d!13548 (= (contains!194 rules!2471 (rule!760 (_1!844 (get!317 lt!14714)))) lt!14920)))

(declare-fun b!76285 () Bool)

(declare-fun e!42562 () Bool)

(assert (=> b!76285 (= e!42561 e!42562)))

(declare-fun res!39869 () Bool)

(assert (=> b!76285 (=> res!39869 e!42562)))

(assert (=> b!76285 (= res!39869 (= (h!6705 rules!2471) (rule!760 (_1!844 (get!317 lt!14714)))))))

(declare-fun b!76286 () Bool)

(assert (=> b!76286 (= e!42562 (contains!194 (t!20059 rules!2471) (rule!760 (_1!844 (get!317 lt!14714)))))))

(assert (= (and d!13548 res!39870) b!76285))

(assert (= (and b!76285 (not res!39869)) b!76286))

(declare-fun m!48350 () Bool)

(assert (=> d!13548 m!48350))

(declare-fun m!48352 () Bool)

(assert (=> d!13548 m!48352))

(declare-fun m!48354 () Bool)

(assert (=> b!76286 m!48354))

(assert (=> b!76005 d!13548))

(assert (=> b!76005 d!13506))

(declare-fun d!13550 () Bool)

(assert (=> d!13550 (= (list!394 (_2!843 lt!14700)) (list!399 (c!19610 (_2!843 lt!14700))))))

(declare-fun bs!7939 () Bool)

(assert (= bs!7939 d!13550))

(declare-fun m!48356 () Bool)

(assert (=> bs!7939 m!48356))

(assert (=> b!75983 d!13550))

(assert (=> b!75983 d!13480))

(assert (=> b!75983 d!13494))

(declare-fun d!13552 () Bool)

(declare-fun res!39875 () Bool)

(declare-fun e!42567 () Bool)

(assert (=> d!13552 (=> res!39875 e!42567)))

(assert (=> d!13552 (= res!39875 ((_ is Nil!1308) rules!2471))))

(assert (=> d!13552 (= (noDuplicateTag!52 thiss!19403 rules!2471 Nil!1310) e!42567)))

(declare-fun b!76291 () Bool)

(declare-fun e!42568 () Bool)

(assert (=> b!76291 (= e!42567 e!42568)))

(declare-fun res!39876 () Bool)

(assert (=> b!76291 (=> (not res!39876) (not e!42568))))

(declare-fun contains!196 (List!1316 String!1766) Bool)

(assert (=> b!76291 (= res!39876 (not (contains!196 Nil!1310 (tag!463 (h!6705 rules!2471)))))))

(declare-fun b!76292 () Bool)

(assert (=> b!76292 (= e!42568 (noDuplicateTag!52 thiss!19403 (t!20059 rules!2471) (Cons!1310 (tag!463 (h!6705 rules!2471)) Nil!1310)))))

(assert (= (and d!13552 (not res!39875)) b!76291))

(assert (= (and b!76291 res!39876) b!76292))

(declare-fun m!48358 () Bool)

(assert (=> b!76291 m!48358))

(declare-fun m!48360 () Bool)

(assert (=> b!76292 m!48360))

(assert (=> b!75935 d!13552))

(declare-fun d!13554 () Bool)

(assert (=> d!13554 (= (isEmpty!368 (list!394 (_2!843 lt!14670))) ((_ is Nil!1306) (list!394 (_2!843 lt!14670))))))

(assert (=> d!13402 d!13554))

(declare-fun d!13556 () Bool)

(assert (=> d!13556 (= (list!394 (_2!843 lt!14670)) (list!399 (c!19610 (_2!843 lt!14670))))))

(declare-fun bs!7940 () Bool)

(assert (= bs!7940 d!13556))

(declare-fun m!48362 () Bool)

(assert (=> bs!7940 m!48362))

(assert (=> d!13402 d!13556))

(declare-fun d!13558 () Bool)

(declare-fun lt!14923 () Bool)

(assert (=> d!13558 (= lt!14923 (isEmpty!368 (list!399 (c!19610 (_2!843 lt!14670)))))))

(assert (=> d!13558 (= lt!14923 (= (size!1163 (c!19610 (_2!843 lt!14670))) 0))))

(assert (=> d!13558 (= (isEmpty!369 (c!19610 (_2!843 lt!14670))) lt!14923)))

(declare-fun bs!7941 () Bool)

(assert (= bs!7941 d!13558))

(assert (=> bs!7941 m!48362))

(assert (=> bs!7941 m!48362))

(declare-fun m!48364 () Bool)

(assert (=> bs!7941 m!48364))

(declare-fun m!48366 () Bool)

(assert (=> bs!7941 m!48366))

(assert (=> d!13402 d!13558))

(declare-fun d!13560 () Bool)

(assert (=> d!13560 true))

(declare-fun order!505 () Int)

(declare-fun lambda!1392 () Int)

(declare-fun dynLambda!311 (Int Int) Int)

(assert (=> d!13560 (< (dynLambda!307 order!497 (toValue!788 (transformation!285 (h!6705 rules!2471)))) (dynLambda!311 order!505 lambda!1392))))

(declare-fun Forall2!24 (Int) Bool)

(assert (=> d!13560 (= (equivClasses!41 (toChars!647 (transformation!285 (h!6705 rules!2471))) (toValue!788 (transformation!285 (h!6705 rules!2471)))) (Forall2!24 lambda!1392))))

(declare-fun bs!7942 () Bool)

(assert (= bs!7942 d!13560))

(declare-fun m!48368 () Bool)

(assert (=> bs!7942 m!48368))

(assert (=> b!76019 d!13560))

(declare-fun b!76317 () Bool)

(declare-fun res!39893 () Bool)

(declare-fun e!42582 () Bool)

(assert (=> b!76317 (=> (not res!39893) (not e!42582))))

(declare-fun lt!14950 () Option!86)

(assert (=> b!76317 (= res!39893 (= (value!11018 (_1!844 (get!317 lt!14950))) (apply!174 (transformation!285 (rule!760 (_1!844 (get!317 lt!14950)))) (seqFromList!82 (originalCharacters!336 (_1!844 (get!317 lt!14950)))))))))

(declare-fun d!13562 () Bool)

(declare-fun e!42581 () Bool)

(assert (=> d!13562 e!42581))

(declare-fun res!39899 () Bool)

(assert (=> d!13562 (=> res!39899 e!42581)))

(assert (=> d!13562 (= res!39899 (isEmpty!371 lt!14950))))

(declare-fun e!42579 () Option!86)

(assert (=> d!13562 (= lt!14950 e!42579)))

(declare-fun c!19674 () Bool)

(declare-datatypes ((tuple2!1284 0))(
  ( (tuple2!1285 (_1!849 List!1312) (_2!849 List!1312)) )
))
(declare-fun lt!14948 () tuple2!1284)

(assert (=> d!13562 (= c!19674 (isEmpty!368 (_1!849 lt!14948)))))

(declare-fun findLongestMatch!4 (Regex!353 List!1312) tuple2!1284)

(assert (=> d!13562 (= lt!14948 (findLongestMatch!4 (regex!285 (h!6705 rules!2471)) input!2238))))

(declare-fun ruleValid!13 (LexerInterface!177 Rule!370) Bool)

(assert (=> d!13562 (ruleValid!13 thiss!19403 (h!6705 rules!2471))))

(assert (=> d!13562 (= (maxPrefixOneRule!6 thiss!19403 (h!6705 rules!2471) input!2238) lt!14950)))

(declare-fun b!76318 () Bool)

(assert (=> b!76318 (= e!42579 (Some!85 (tuple2!1275 (Token!331 (apply!174 (transformation!285 (h!6705 rules!2471)) (seqFromList!82 (_1!849 lt!14948))) (h!6705 rules!2471) (size!1154 (seqFromList!82 (_1!849 lt!14948))) (_1!849 lt!14948)) (_2!849 lt!14948))))))

(declare-fun lt!14946 () Unit!780)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!6 (Regex!353 List!1312) Unit!780)

(assert (=> b!76318 (= lt!14946 (longestMatchIsAcceptedByMatchOrIsEmpty!6 (regex!285 (h!6705 rules!2471)) input!2238))))

(declare-fun res!39898 () Bool)

(declare-fun findLongestMatchInner!5 (Regex!353 List!1312 Int List!1312 List!1312 Int) tuple2!1284)

(assert (=> b!76318 (= res!39898 (isEmpty!368 (_1!849 (findLongestMatchInner!5 (regex!285 (h!6705 rules!2471)) Nil!1306 (size!1156 Nil!1306) input!2238 input!2238 (size!1156 input!2238)))))))

(declare-fun e!42580 () Bool)

(assert (=> b!76318 (=> res!39898 e!42580)))

(assert (=> b!76318 e!42580))

(declare-fun lt!14949 () Unit!780)

(assert (=> b!76318 (= lt!14949 lt!14946)))

(declare-fun lt!14947 () Unit!780)

(declare-fun lemmaSemiInverse!4 (TokenValueInjection!374 BalanceConc!748) Unit!780)

(assert (=> b!76318 (= lt!14947 (lemmaSemiInverse!4 (transformation!285 (h!6705 rules!2471)) (seqFromList!82 (_1!849 lt!14948))))))

(declare-fun b!76319 () Bool)

(assert (=> b!76319 (= e!42581 e!42582)))

(declare-fun res!39894 () Bool)

(assert (=> b!76319 (=> (not res!39894) (not e!42582))))

(assert (=> b!76319 (= res!39894 (matchR!10 (regex!285 (h!6705 rules!2471)) (list!394 (charsOf!29 (_1!844 (get!317 lt!14950))))))))

(declare-fun b!76320 () Bool)

(assert (=> b!76320 (= e!42582 (= (size!1153 (_1!844 (get!317 lt!14950))) (size!1156 (originalCharacters!336 (_1!844 (get!317 lt!14950))))))))

(declare-fun b!76321 () Bool)

(declare-fun res!39897 () Bool)

(assert (=> b!76321 (=> (not res!39897) (not e!42582))))

(assert (=> b!76321 (= res!39897 (= (++!99 (list!394 (charsOf!29 (_1!844 (get!317 lt!14950)))) (_2!844 (get!317 lt!14950))) input!2238))))

(declare-fun b!76322 () Bool)

(declare-fun res!39896 () Bool)

(assert (=> b!76322 (=> (not res!39896) (not e!42582))))

(assert (=> b!76322 (= res!39896 (< (size!1156 (_2!844 (get!317 lt!14950))) (size!1156 input!2238)))))

(declare-fun b!76323 () Bool)

(assert (=> b!76323 (= e!42580 (matchR!10 (regex!285 (h!6705 rules!2471)) (_1!849 (findLongestMatchInner!5 (regex!285 (h!6705 rules!2471)) Nil!1306 (size!1156 Nil!1306) input!2238 input!2238 (size!1156 input!2238)))))))

(declare-fun b!76324 () Bool)

(assert (=> b!76324 (= e!42579 None!85)))

(declare-fun b!76325 () Bool)

(declare-fun res!39895 () Bool)

(assert (=> b!76325 (=> (not res!39895) (not e!42582))))

(assert (=> b!76325 (= res!39895 (= (rule!760 (_1!844 (get!317 lt!14950))) (h!6705 rules!2471)))))

(assert (= (and d!13562 c!19674) b!76324))

(assert (= (and d!13562 (not c!19674)) b!76318))

(assert (= (and b!76318 (not res!39898)) b!76323))

(assert (= (and d!13562 (not res!39899)) b!76319))

(assert (= (and b!76319 res!39894) b!76321))

(assert (= (and b!76321 res!39897) b!76322))

(assert (= (and b!76322 res!39896) b!76325))

(assert (= (and b!76325 res!39895) b!76317))

(assert (= (and b!76317 res!39893) b!76320))

(declare-fun m!48370 () Bool)

(assert (=> b!76318 m!48370))

(assert (=> b!76318 m!48370))

(assert (=> b!76318 m!47938))

(declare-fun m!48372 () Bool)

(assert (=> b!76318 m!48372))

(declare-fun m!48374 () Bool)

(assert (=> b!76318 m!48374))

(assert (=> b!76318 m!48374))

(declare-fun m!48376 () Bool)

(assert (=> b!76318 m!48376))

(assert (=> b!76318 m!48374))

(declare-fun m!48378 () Bool)

(assert (=> b!76318 m!48378))

(assert (=> b!76318 m!48374))

(declare-fun m!48380 () Bool)

(assert (=> b!76318 m!48380))

(assert (=> b!76318 m!47938))

(declare-fun m!48382 () Bool)

(assert (=> b!76318 m!48382))

(declare-fun m!48384 () Bool)

(assert (=> b!76318 m!48384))

(declare-fun m!48386 () Bool)

(assert (=> b!76321 m!48386))

(declare-fun m!48388 () Bool)

(assert (=> b!76321 m!48388))

(assert (=> b!76321 m!48388))

(declare-fun m!48390 () Bool)

(assert (=> b!76321 m!48390))

(assert (=> b!76321 m!48390))

(declare-fun m!48392 () Bool)

(assert (=> b!76321 m!48392))

(assert (=> b!76325 m!48386))

(assert (=> b!76323 m!48370))

(assert (=> b!76323 m!47938))

(assert (=> b!76323 m!48370))

(assert (=> b!76323 m!47938))

(assert (=> b!76323 m!48372))

(declare-fun m!48394 () Bool)

(assert (=> b!76323 m!48394))

(assert (=> b!76322 m!48386))

(declare-fun m!48396 () Bool)

(assert (=> b!76322 m!48396))

(assert (=> b!76322 m!47938))

(assert (=> b!76317 m!48386))

(declare-fun m!48398 () Bool)

(assert (=> b!76317 m!48398))

(assert (=> b!76317 m!48398))

(declare-fun m!48400 () Bool)

(assert (=> b!76317 m!48400))

(declare-fun m!48402 () Bool)

(assert (=> d!13562 m!48402))

(declare-fun m!48404 () Bool)

(assert (=> d!13562 m!48404))

(declare-fun m!48406 () Bool)

(assert (=> d!13562 m!48406))

(declare-fun m!48408 () Bool)

(assert (=> d!13562 m!48408))

(assert (=> b!76320 m!48386))

(declare-fun m!48410 () Bool)

(assert (=> b!76320 m!48410))

(assert (=> b!76319 m!48386))

(assert (=> b!76319 m!48388))

(assert (=> b!76319 m!48388))

(assert (=> b!76319 m!48390))

(assert (=> b!76319 m!48390))

(declare-fun m!48412 () Bool)

(assert (=> b!76319 m!48412))

(assert (=> bm!3635 d!13562))

(assert (=> b!76008 d!13506))

(declare-fun d!13564 () Bool)

(declare-fun dynLambda!312 (Int BalanceConc!748) TokenValue!275)

(assert (=> d!13564 (= (apply!174 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))) (seqFromList!82 (originalCharacters!336 (_1!844 (get!317 lt!14714))))) (dynLambda!312 (toValue!788 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714))))) (seqFromList!82 (originalCharacters!336 (_1!844 (get!317 lt!14714))))))))

(declare-fun b_lambda!869 () Bool)

(assert (=> (not b_lambda!869) (not d!13564)))

(declare-fun t!20078 () Bool)

(declare-fun tb!2363 () Bool)

(assert (=> (and b!75925 (= (toValue!788 (transformation!285 (h!6705 rules!2471))) (toValue!788 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))))) t!20078) tb!2363))

(declare-fun result!3360 () Bool)

(declare-fun inv!21 (TokenValue!275) Bool)

(assert (=> tb!2363 (= result!3360 (inv!21 (dynLambda!312 (toValue!788 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714))))) (seqFromList!82 (originalCharacters!336 (_1!844 (get!317 lt!14714)))))))))

(declare-fun m!48414 () Bool)

(assert (=> tb!2363 m!48414))

(assert (=> d!13564 t!20078))

(declare-fun b_and!3463 () Bool)

(assert (= b_and!3443 (and (=> t!20078 result!3360) b_and!3463)))

(declare-fun t!20080 () Bool)

(declare-fun tb!2365 () Bool)

(assert (=> (and b!76030 (= (toValue!788 (transformation!285 (h!6705 (t!20059 rules!2471)))) (toValue!788 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))))) t!20080) tb!2365))

(declare-fun result!3364 () Bool)

(assert (= result!3364 result!3360))

(assert (=> d!13564 t!20080))

(declare-fun b_and!3465 () Bool)

(assert (= b_and!3447 (and (=> t!20080 result!3364) b_and!3465)))

(assert (=> d!13564 m!47922))

(declare-fun m!48416 () Bool)

(assert (=> d!13564 m!48416))

(assert (=> b!76008 d!13564))

(declare-fun d!13566 () Bool)

(assert (=> d!13566 (= (seqFromList!82 (originalCharacters!336 (_1!844 (get!317 lt!14714)))) (fromListB!25 (originalCharacters!336 (_1!844 (get!317 lt!14714)))))))

(declare-fun bs!7943 () Bool)

(assert (= bs!7943 d!13566))

(declare-fun m!48418 () Bool)

(assert (=> bs!7943 m!48418))

(assert (=> b!76008 d!13566))

(declare-fun b!76352 () Bool)

(declare-fun res!39916 () Bool)

(declare-fun e!42598 () Bool)

(assert (=> b!76352 (=> (not res!39916) (not e!42598))))

(declare-fun height!24 (Conc!373) Int)

(assert (=> b!76352 (= res!39916 (<= (- (height!24 (left!992 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667)))) (height!24 (right!1322 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667))))) 1))))

(declare-fun b!76353 () Bool)

(declare-fun res!39915 () Bool)

(assert (=> b!76353 (=> (not res!39915) (not e!42598))))

(assert (=> b!76353 (= res!39915 (isBalanced!69 (right!1322 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667)))))))

(declare-fun b!76354 () Bool)

(assert (=> b!76354 (= e!42598 (not (isEmpty!377 (right!1322 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667))))))))

(declare-fun b!76355 () Bool)

(declare-fun res!39918 () Bool)

(assert (=> b!76355 (=> (not res!39918) (not e!42598))))

(assert (=> b!76355 (= res!39918 (not (isEmpty!377 (left!992 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667))))))))

(declare-fun b!76356 () Bool)

(declare-fun res!39914 () Bool)

(assert (=> b!76356 (=> (not res!39914) (not e!42598))))

(assert (=> b!76356 (= res!39914 (isBalanced!69 (left!992 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667)))))))

(declare-fun b!76357 () Bool)

(declare-fun e!42599 () Bool)

(assert (=> b!76357 (= e!42599 e!42598)))

(declare-fun res!39917 () Bool)

(assert (=> b!76357 (=> (not res!39917) (not e!42598))))

(assert (=> b!76357 (= res!39917 (<= (- 1) (- (height!24 (left!992 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667)))) (height!24 (right!1322 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667)))))))))

(declare-fun d!13568 () Bool)

(declare-fun res!39919 () Bool)

(assert (=> d!13568 (=> res!39919 e!42599)))

(assert (=> d!13568 (= res!39919 (not ((_ is Node!373) (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667)))))))

(assert (=> d!13568 (= (isBalanced!69 (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667))) e!42599)))

(assert (= (and d!13568 (not res!39919)) b!76357))

(assert (= (and b!76357 res!39917) b!76352))

(assert (= (and b!76352 res!39916) b!76356))

(assert (= (and b!76356 res!39914) b!76353))

(assert (= (and b!76353 res!39915) b!76355))

(assert (= (and b!76355 res!39918) b!76354))

(declare-fun m!48420 () Bool)

(assert (=> b!76352 m!48420))

(declare-fun m!48422 () Bool)

(assert (=> b!76352 m!48422))

(declare-fun m!48424 () Bool)

(assert (=> b!76355 m!48424))

(assert (=> b!76357 m!48420))

(assert (=> b!76357 m!48422))

(declare-fun m!48426 () Bool)

(assert (=> b!76354 m!48426))

(declare-fun m!48428 () Bool)

(assert (=> b!76356 m!48428))

(declare-fun m!48430 () Bool)

(assert (=> b!76353 m!48430))

(assert (=> d!13440 d!13568))

(declare-fun d!13570 () Bool)

(declare-fun e!42606 () Bool)

(assert (=> d!13570 e!42606))

(declare-fun res!39923 () Bool)

(assert (=> d!13570 (=> (not res!39923) (not e!42606))))

(declare-fun lt!15043 () Conc!373)

(assert (=> d!13570 (= res!39923 (isBalanced!69 lt!15043))))

(declare-fun ++!105 (Conc!373 Conc!373) Conc!373)

(declare-fun fill!9 (Int Token!330) IArray!747)

(assert (=> d!13570 (= lt!15043 (++!105 (Leaf!651 (fill!9 1 (h!6706 lt!14667)) 1) (c!19612 (seqFromList!83 (t!20060 lt!14667)))))))

(assert (=> d!13570 (isBalanced!69 (c!19612 (seqFromList!83 (t!20060 lt!14667))))))

(assert (=> d!13570 (= (prepend!34 (c!19612 (seqFromList!83 (t!20060 lt!14667))) (h!6706 lt!14667)) lt!15043)))

(declare-fun b!76367 () Bool)

(assert (=> b!76367 (= e!42606 (= (list!396 lt!15043) (Cons!1309 (h!6706 lt!14667) (list!396 (c!19612 (seqFromList!83 (t!20060 lt!14667)))))))))

(assert (= (and d!13570 res!39923) b!76367))

(declare-fun m!48522 () Bool)

(assert (=> d!13570 m!48522))

(declare-fun m!48524 () Bool)

(assert (=> d!13570 m!48524))

(declare-fun m!48526 () Bool)

(assert (=> d!13570 m!48526))

(declare-fun m!48528 () Bool)

(assert (=> d!13570 m!48528))

(declare-fun m!48530 () Bool)

(assert (=> b!76367 m!48530))

(assert (=> b!76367 m!48016))

(assert (=> d!13440 d!13570))

(declare-fun d!13574 () Bool)

(assert (=> d!13574 (= (isEmpty!371 (maxPrefix!21 thiss!19403 rules!2471 input!2238)) (not ((_ is Some!85) (maxPrefix!21 thiss!19403 rules!2471 input!2238))))))

(assert (=> d!13432 d!13574))

(declare-fun b!76400 () Bool)

(declare-fun e!42624 () Bool)

(declare-fun e!42625 () Bool)

(assert (=> b!76400 (= e!42624 e!42625)))

(declare-fun c!19691 () Bool)

(assert (=> b!76400 (= c!19691 ((_ is EmptyLang!353) (regex!285 (rule!760 (_1!844 (get!317 lt!14714))))))))

(declare-fun b!76402 () Bool)

(declare-fun res!39943 () Bool)

(declare-fun e!42628 () Bool)

(assert (=> b!76402 (=> (not res!39943) (not e!42628))))

(declare-fun call!3644 () Bool)

(assert (=> b!76402 (= res!39943 (not call!3644))))

(declare-fun b!76403 () Bool)

(declare-fun e!42629 () Bool)

(declare-fun e!42626 () Bool)

(assert (=> b!76403 (= e!42629 e!42626)))

(declare-fun res!39946 () Bool)

(assert (=> b!76403 (=> res!39946 e!42626)))

(assert (=> b!76403 (= res!39946 call!3644)))

(declare-fun b!76404 () Bool)

(declare-fun res!39942 () Bool)

(assert (=> b!76404 (=> res!39942 e!42626)))

(declare-fun tail!95 (List!1312) List!1312)

(assert (=> b!76404 (= res!39942 (not (isEmpty!368 (tail!95 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))))))))

(declare-fun b!76405 () Bool)

(declare-fun e!42623 () Bool)

(assert (=> b!76405 (= e!42623 e!42629)))

(declare-fun res!39948 () Bool)

(assert (=> b!76405 (=> (not res!39948) (not e!42629))))

(declare-fun lt!15046 () Bool)

(assert (=> b!76405 (= res!39948 (not lt!15046))))

(declare-fun d!13576 () Bool)

(assert (=> d!13576 e!42624))

(declare-fun c!19692 () Bool)

(assert (=> d!13576 (= c!19692 ((_ is EmptyExpr!353) (regex!285 (rule!760 (_1!844 (get!317 lt!14714))))))))

(declare-fun e!42627 () Bool)

(assert (=> d!13576 (= lt!15046 e!42627)))

(declare-fun c!19690 () Bool)

(assert (=> d!13576 (= c!19690 (isEmpty!368 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))))))

(declare-fun validRegex!34 (Regex!353) Bool)

(assert (=> d!13576 (validRegex!34 (regex!285 (rule!760 (_1!844 (get!317 lt!14714)))))))

(assert (=> d!13576 (= (matchR!10 (regex!285 (rule!760 (_1!844 (get!317 lt!14714)))) (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))) lt!15046)))

(declare-fun b!76401 () Bool)

(assert (=> b!76401 (= e!42625 (not lt!15046))))

(declare-fun b!76406 () Bool)

(declare-fun head!411 (List!1312) C!1628)

(assert (=> b!76406 (= e!42628 (= (head!411 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))) (c!19611 (regex!285 (rule!760 (_1!844 (get!317 lt!14714)))))))))

(declare-fun b!76407 () Bool)

(declare-fun res!39944 () Bool)

(assert (=> b!76407 (=> res!39944 e!42623)))

(assert (=> b!76407 (= res!39944 (not ((_ is ElementMatch!353) (regex!285 (rule!760 (_1!844 (get!317 lt!14714)))))))))

(assert (=> b!76407 (= e!42625 e!42623)))

(declare-fun b!76408 () Bool)

(assert (=> b!76408 (= e!42624 (= lt!15046 call!3644))))

(declare-fun b!76409 () Bool)

(declare-fun res!39947 () Bool)

(assert (=> b!76409 (=> res!39947 e!42623)))

(assert (=> b!76409 (= res!39947 e!42628)))

(declare-fun res!39945 () Bool)

(assert (=> b!76409 (=> (not res!39945) (not e!42628))))

(assert (=> b!76409 (= res!39945 lt!15046)))

(declare-fun b!76410 () Bool)

(declare-fun derivativeStep!9 (Regex!353 C!1628) Regex!353)

(assert (=> b!76410 (= e!42627 (matchR!10 (derivativeStep!9 (regex!285 (rule!760 (_1!844 (get!317 lt!14714)))) (head!411 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))))) (tail!95 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))))))))

(declare-fun b!76411 () Bool)

(assert (=> b!76411 (= e!42626 (not (= (head!411 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))) (c!19611 (regex!285 (rule!760 (_1!844 (get!317 lt!14714))))))))))

(declare-fun bm!3639 () Bool)

(assert (=> bm!3639 (= call!3644 (isEmpty!368 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))))))

(declare-fun b!76412 () Bool)

(declare-fun nullable!27 (Regex!353) Bool)

(assert (=> b!76412 (= e!42627 (nullable!27 (regex!285 (rule!760 (_1!844 (get!317 lt!14714))))))))

(declare-fun b!76413 () Bool)

(declare-fun res!39949 () Bool)

(assert (=> b!76413 (=> (not res!39949) (not e!42628))))

(assert (=> b!76413 (= res!39949 (isEmpty!368 (tail!95 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))))))))

(assert (= (and d!13576 c!19690) b!76412))

(assert (= (and d!13576 (not c!19690)) b!76410))

(assert (= (and d!13576 c!19692) b!76408))

(assert (= (and d!13576 (not c!19692)) b!76400))

(assert (= (and b!76400 c!19691) b!76401))

(assert (= (and b!76400 (not c!19691)) b!76407))

(assert (= (and b!76407 (not res!39944)) b!76409))

(assert (= (and b!76409 res!39945) b!76402))

(assert (= (and b!76402 res!39943) b!76413))

(assert (= (and b!76413 res!39949) b!76406))

(assert (= (and b!76409 (not res!39947)) b!76405))

(assert (= (and b!76405 res!39948) b!76403))

(assert (= (and b!76403 (not res!39946)) b!76404))

(assert (= (and b!76404 (not res!39942)) b!76411))

(assert (= (or b!76408 b!76402 b!76403) bm!3639))

(assert (=> b!76411 m!47920))

(declare-fun m!48538 () Bool)

(assert (=> b!76411 m!48538))

(assert (=> b!76413 m!47920))

(declare-fun m!48540 () Bool)

(assert (=> b!76413 m!48540))

(assert (=> b!76413 m!48540))

(declare-fun m!48542 () Bool)

(assert (=> b!76413 m!48542))

(assert (=> b!76410 m!47920))

(assert (=> b!76410 m!48538))

(assert (=> b!76410 m!48538))

(declare-fun m!48544 () Bool)

(assert (=> b!76410 m!48544))

(assert (=> b!76410 m!47920))

(assert (=> b!76410 m!48540))

(assert (=> b!76410 m!48544))

(assert (=> b!76410 m!48540))

(declare-fun m!48546 () Bool)

(assert (=> b!76410 m!48546))

(assert (=> b!76404 m!47920))

(assert (=> b!76404 m!48540))

(assert (=> b!76404 m!48540))

(assert (=> b!76404 m!48542))

(assert (=> d!13576 m!47920))

(declare-fun m!48548 () Bool)

(assert (=> d!13576 m!48548))

(declare-fun m!48552 () Bool)

(assert (=> d!13576 m!48552))

(assert (=> bm!3639 m!47920))

(assert (=> bm!3639 m!48548))

(assert (=> b!76406 m!47920))

(assert (=> b!76406 m!48538))

(declare-fun m!48554 () Bool)

(assert (=> b!76412 m!48554))

(assert (=> b!76011 d!13576))

(assert (=> b!76011 d!13506))

(assert (=> b!76011 d!13498))

(assert (=> b!76011 d!13500))

(declare-fun d!13590 () Bool)

(declare-fun lt!15049 () Int)

(assert (=> d!13590 (>= lt!15049 0)))

(declare-fun e!42639 () Int)

(assert (=> d!13590 (= lt!15049 e!42639)))

(declare-fun c!19695 () Bool)

(assert (=> d!13590 (= c!19695 ((_ is Nil!1306) (_2!844 (get!317 lt!14714))))))

(assert (=> d!13590 (= (size!1156 (_2!844 (get!317 lt!14714))) lt!15049)))

(declare-fun b!76424 () Bool)

(assert (=> b!76424 (= e!42639 0)))

(declare-fun b!76425 () Bool)

(assert (=> b!76425 (= e!42639 (+ 1 (size!1156 (t!20057 (_2!844 (get!317 lt!14714))))))))

(assert (= (and d!13590 c!19695) b!76424))

(assert (= (and d!13590 (not c!19695)) b!76425))

(declare-fun m!48560 () Bool)

(assert (=> b!76425 m!48560))

(assert (=> b!76010 d!13590))

(assert (=> b!76010 d!13506))

(declare-fun d!13596 () Bool)

(declare-fun lt!15050 () Int)

(assert (=> d!13596 (>= lt!15050 0)))

(declare-fun e!42640 () Int)

(assert (=> d!13596 (= lt!15050 e!42640)))

(declare-fun c!19696 () Bool)

(assert (=> d!13596 (= c!19696 ((_ is Nil!1306) input!2238))))

(assert (=> d!13596 (= (size!1156 input!2238) lt!15050)))

(declare-fun b!76426 () Bool)

(assert (=> b!76426 (= e!42640 0)))

(declare-fun b!76427 () Bool)

(assert (=> b!76427 (= e!42640 (+ 1 (size!1156 (t!20057 input!2238))))))

(assert (= (and d!13596 c!19696) b!76426))

(assert (= (and d!13596 (not c!19696)) b!76427))

(declare-fun m!48562 () Bool)

(assert (=> b!76427 m!48562))

(assert (=> b!76010 d!13596))

(declare-fun d!13598 () Bool)

(assert (=> d!13598 (= ($colon$colon!12 (t!20060 lt!14667) (h!6706 lt!14667)) (Cons!1309 (h!6706 lt!14667) (t!20060 lt!14667)))))

(assert (=> d!13438 d!13598))

(declare-fun d!13600 () Bool)

(assert (=> d!13600 (= (list!393 (_1!843 lt!14670)) (list!393 (prepend!32 (seqFromList!83 (t!20060 lt!14667)) (h!6706 lt!14667))))))

(assert (=> d!13600 true))

(declare-fun _$1!9844 () Unit!780)

(assert (=> d!13600 (= (choose!1258 (h!6706 lt!14667) (t!20060 lt!14667) (_1!843 lt!14670)) _$1!9844)))

(declare-fun bs!7949 () Bool)

(assert (= bs!7949 d!13600))

(assert (=> bs!7949 m!47778))

(assert (=> bs!7949 m!47780))

(assert (=> bs!7949 m!47780))

(assert (=> bs!7949 m!47782))

(assert (=> bs!7949 m!47782))

(assert (=> bs!7949 m!47786))

(assert (=> d!13438 d!13600))

(assert (=> d!13438 d!13446))

(declare-fun d!13604 () Bool)

(assert (=> d!13604 (= (list!393 (seqFromList!83 ($colon$colon!12 (t!20060 lt!14667) (h!6706 lt!14667)))) (list!396 (c!19612 (seqFromList!83 ($colon$colon!12 (t!20060 lt!14667) (h!6706 lt!14667))))))))

(declare-fun bs!7950 () Bool)

(assert (= bs!7950 d!13604))

(declare-fun m!48568 () Bool)

(assert (=> bs!7950 m!48568))

(assert (=> d!13438 d!13604))

(declare-fun d!13606 () Bool)

(assert (=> d!13606 (= (seqFromList!83 ($colon$colon!12 (t!20060 lt!14667) (h!6706 lt!14667))) (fromListB!27 ($colon$colon!12 (t!20060 lt!14667) (h!6706 lt!14667))))))

(declare-fun bs!7951 () Bool)

(assert (= bs!7951 d!13606))

(assert (=> bs!7951 m!47948))

(declare-fun m!48570 () Bool)

(assert (=> bs!7951 m!48570))

(assert (=> d!13438 d!13606))

(assert (=> d!13438 d!13440))

(assert (=> d!13438 d!13434))

(assert (=> d!13438 d!13436))

(declare-fun d!13608 () Bool)

(assert (=> d!13608 (= (isDefined!19 lt!14714) (not (isEmpty!371 lt!14714)))))

(declare-fun bs!7952 () Bool)

(assert (= bs!7952 d!13608))

(assert (=> bs!7952 m!47908))

(assert (=> b!76009 d!13608))

(declare-fun b!76430 () Bool)

(declare-fun e!42644 () Bool)

(declare-fun lt!15054 () Option!86)

(assert (=> b!76430 (= e!42644 (contains!194 (t!20059 rules!2471) (rule!760 (_1!844 (get!317 lt!15054)))))))

(declare-fun b!76431 () Bool)

(declare-fun res!39961 () Bool)

(assert (=> b!76431 (=> (not res!39961) (not e!42644))))

(assert (=> b!76431 (= res!39961 (= (list!394 (charsOf!29 (_1!844 (get!317 lt!15054)))) (originalCharacters!336 (_1!844 (get!317 lt!15054)))))))

(declare-fun b!76432 () Bool)

(declare-fun e!42645 () Option!86)

(declare-fun call!3645 () Option!86)

(assert (=> b!76432 (= e!42645 call!3645)))

(declare-fun b!76433 () Bool)

(declare-fun res!39956 () Bool)

(assert (=> b!76433 (=> (not res!39956) (not e!42644))))

(assert (=> b!76433 (= res!39956 (= (value!11018 (_1!844 (get!317 lt!15054))) (apply!174 (transformation!285 (rule!760 (_1!844 (get!317 lt!15054)))) (seqFromList!82 (originalCharacters!336 (_1!844 (get!317 lt!15054)))))))))

(declare-fun bm!3640 () Bool)

(assert (=> bm!3640 (= call!3645 (maxPrefixOneRule!6 thiss!19403 (h!6705 (t!20059 rules!2471)) input!2238))))

(declare-fun b!76434 () Bool)

(declare-fun e!42643 () Bool)

(assert (=> b!76434 (= e!42643 e!42644)))

(declare-fun res!39962 () Bool)

(assert (=> b!76434 (=> (not res!39962) (not e!42644))))

(assert (=> b!76434 (= res!39962 (isDefined!19 lt!15054))))

(declare-fun b!76435 () Bool)

(declare-fun res!39957 () Bool)

(assert (=> b!76435 (=> (not res!39957) (not e!42644))))

(assert (=> b!76435 (= res!39957 (< (size!1156 (_2!844 (get!317 lt!15054))) (size!1156 input!2238)))))

(declare-fun b!76437 () Bool)

(declare-fun res!39958 () Bool)

(assert (=> b!76437 (=> (not res!39958) (not e!42644))))

(assert (=> b!76437 (= res!39958 (= (++!99 (list!394 (charsOf!29 (_1!844 (get!317 lt!15054)))) (_2!844 (get!317 lt!15054))) input!2238))))

(declare-fun b!76438 () Bool)

(declare-fun lt!15053 () Option!86)

(declare-fun lt!15051 () Option!86)

(assert (=> b!76438 (= e!42645 (ite (and ((_ is None!85) lt!15053) ((_ is None!85) lt!15051)) None!85 (ite ((_ is None!85) lt!15051) lt!15053 (ite ((_ is None!85) lt!15053) lt!15051 (ite (>= (size!1153 (_1!844 (v!12730 lt!15053))) (size!1153 (_1!844 (v!12730 lt!15051)))) lt!15053 lt!15051)))))))

(assert (=> b!76438 (= lt!15053 call!3645)))

(assert (=> b!76438 (= lt!15051 (maxPrefix!21 thiss!19403 (t!20059 (t!20059 rules!2471)) input!2238))))

(declare-fun d!13610 () Bool)

(assert (=> d!13610 e!42643))

(declare-fun res!39959 () Bool)

(assert (=> d!13610 (=> res!39959 e!42643)))

(assert (=> d!13610 (= res!39959 (isEmpty!371 lt!15054))))

(assert (=> d!13610 (= lt!15054 e!42645)))

(declare-fun c!19697 () Bool)

(assert (=> d!13610 (= c!19697 (and ((_ is Cons!1308) (t!20059 rules!2471)) ((_ is Nil!1308) (t!20059 (t!20059 rules!2471)))))))

(declare-fun lt!15055 () Unit!780)

(declare-fun lt!15052 () Unit!780)

(assert (=> d!13610 (= lt!15055 lt!15052)))

(assert (=> d!13610 (isPrefix!9 input!2238 input!2238)))

(assert (=> d!13610 (= lt!15052 (lemmaIsPrefixRefl!9 input!2238 input!2238))))

(assert (=> d!13610 (rulesValidInductive!25 thiss!19403 (t!20059 rules!2471))))

(assert (=> d!13610 (= (maxPrefix!21 thiss!19403 (t!20059 rules!2471) input!2238) lt!15054)))

(declare-fun b!76436 () Bool)

(declare-fun res!39960 () Bool)

(assert (=> b!76436 (=> (not res!39960) (not e!42644))))

(assert (=> b!76436 (= res!39960 (matchR!10 (regex!285 (rule!760 (_1!844 (get!317 lt!15054)))) (list!394 (charsOf!29 (_1!844 (get!317 lt!15054))))))))

(assert (= (and d!13610 c!19697) b!76432))

(assert (= (and d!13610 (not c!19697)) b!76438))

(assert (= (or b!76432 b!76438) bm!3640))

(assert (= (and d!13610 (not res!39959)) b!76434))

(assert (= (and b!76434 res!39962) b!76431))

(assert (= (and b!76431 res!39961) b!76435))

(assert (= (and b!76435 res!39957) b!76437))

(assert (= (and b!76437 res!39958) b!76433))

(assert (= (and b!76433 res!39956) b!76436))

(assert (= (and b!76436 res!39960) b!76430))

(declare-fun m!48572 () Bool)

(assert (=> d!13610 m!48572))

(assert (=> d!13610 m!47910))

(assert (=> d!13610 m!47912))

(declare-fun m!48574 () Bool)

(assert (=> d!13610 m!48574))

(declare-fun m!48576 () Bool)

(assert (=> b!76431 m!48576))

(declare-fun m!48578 () Bool)

(assert (=> b!76431 m!48578))

(assert (=> b!76431 m!48578))

(declare-fun m!48580 () Bool)

(assert (=> b!76431 m!48580))

(assert (=> b!76433 m!48576))

(declare-fun m!48582 () Bool)

(assert (=> b!76433 m!48582))

(assert (=> b!76433 m!48582))

(declare-fun m!48584 () Bool)

(assert (=> b!76433 m!48584))

(assert (=> b!76436 m!48576))

(assert (=> b!76436 m!48578))

(assert (=> b!76436 m!48578))

(assert (=> b!76436 m!48580))

(assert (=> b!76436 m!48580))

(declare-fun m!48586 () Bool)

(assert (=> b!76436 m!48586))

(assert (=> b!76430 m!48576))

(declare-fun m!48588 () Bool)

(assert (=> b!76430 m!48588))

(declare-fun m!48590 () Bool)

(assert (=> b!76434 m!48590))

(assert (=> b!76437 m!48576))

(assert (=> b!76437 m!48578))

(assert (=> b!76437 m!48578))

(assert (=> b!76437 m!48580))

(assert (=> b!76437 m!48580))

(declare-fun m!48592 () Bool)

(assert (=> b!76437 m!48592))

(declare-fun m!48594 () Bool)

(assert (=> b!76438 m!48594))

(assert (=> b!76435 m!48576))

(declare-fun m!48596 () Bool)

(assert (=> b!76435 m!48596))

(assert (=> b!76435 m!47938))

(declare-fun m!48598 () Bool)

(assert (=> bm!3640 m!48598))

(assert (=> b!76013 d!13610))

(declare-fun d!13612 () Bool)

(assert (=> d!13612 (= (inv!1687 (tag!463 (h!6705 (t!20059 rules!2471)))) (= (mod (str.len (value!10992 (tag!463 (h!6705 (t!20059 rules!2471))))) 2) 0))))

(assert (=> b!76029 d!13612))

(declare-fun d!13614 () Bool)

(declare-fun res!39979 () Bool)

(declare-fun e!42660 () Bool)

(assert (=> d!13614 (=> (not res!39979) (not e!42660))))

(assert (=> d!13614 (= res!39979 (semiInverseModEq!45 (toChars!647 (transformation!285 (h!6705 (t!20059 rules!2471)))) (toValue!788 (transformation!285 (h!6705 (t!20059 rules!2471))))))))

(assert (=> d!13614 (= (inv!1689 (transformation!285 (h!6705 (t!20059 rules!2471)))) e!42660)))

(declare-fun b!76467 () Bool)

(assert (=> b!76467 (= e!42660 (equivClasses!41 (toChars!647 (transformation!285 (h!6705 (t!20059 rules!2471)))) (toValue!788 (transformation!285 (h!6705 (t!20059 rules!2471))))))))

(assert (= (and d!13614 res!39979) b!76467))

(declare-fun m!48600 () Bool)

(assert (=> d!13614 m!48600))

(declare-fun m!48602 () Bool)

(assert (=> b!76467 m!48602))

(assert (=> b!76029 d!13614))

(declare-fun b!76493 () Bool)

(declare-fun e!42672 () Bool)

(declare-fun lt!15061 () List!1312)

(assert (=> b!76493 (= e!42672 (or (not (= (_2!844 (get!317 lt!14714)) Nil!1306)) (= lt!15061 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))))))))

(declare-fun d!13616 () Bool)

(assert (=> d!13616 e!42672))

(declare-fun res!39992 () Bool)

(assert (=> d!13616 (=> (not res!39992) (not e!42672))))

(declare-fun content!59 (List!1312) (InoxSet C!1628))

(assert (=> d!13616 (= res!39992 (= (content!59 lt!15061) ((_ map or) (content!59 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))) (content!59 (_2!844 (get!317 lt!14714))))))))

(declare-fun e!42673 () List!1312)

(assert (=> d!13616 (= lt!15061 e!42673)))

(declare-fun c!19709 () Bool)

(assert (=> d!13616 (= c!19709 ((_ is Nil!1306) (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))))))

(assert (=> d!13616 (= (++!99 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714)))) (_2!844 (get!317 lt!14714))) lt!15061)))

(declare-fun b!76490 () Bool)

(assert (=> b!76490 (= e!42673 (_2!844 (get!317 lt!14714)))))

(declare-fun b!76491 () Bool)

(assert (=> b!76491 (= e!42673 (Cons!1306 (h!6703 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))) (++!99 (t!20057 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))) (_2!844 (get!317 lt!14714)))))))

(declare-fun b!76492 () Bool)

(declare-fun res!39993 () Bool)

(assert (=> b!76492 (=> (not res!39993) (not e!42672))))

(assert (=> b!76492 (= res!39993 (= (size!1156 lt!15061) (+ (size!1156 (list!394 (charsOf!29 (_1!844 (get!317 lt!14714))))) (size!1156 (_2!844 (get!317 lt!14714))))))))

(assert (= (and d!13616 c!19709) b!76490))

(assert (= (and d!13616 (not c!19709)) b!76491))

(assert (= (and d!13616 res!39992) b!76492))

(assert (= (and b!76492 res!39993) b!76493))

(declare-fun m!48620 () Bool)

(assert (=> d!13616 m!48620))

(assert (=> d!13616 m!47920))

(declare-fun m!48622 () Bool)

(assert (=> d!13616 m!48622))

(declare-fun m!48624 () Bool)

(assert (=> d!13616 m!48624))

(declare-fun m!48626 () Bool)

(assert (=> b!76491 m!48626))

(declare-fun m!48628 () Bool)

(assert (=> b!76492 m!48628))

(assert (=> b!76492 m!47920))

(declare-fun m!48630 () Bool)

(assert (=> b!76492 m!48630))

(assert (=> b!76492 m!47936))

(assert (=> b!76012 d!13616))

(assert (=> b!76012 d!13498))

(assert (=> b!76012 d!13500))

(assert (=> b!76012 d!13506))

(declare-fun d!13622 () Bool)

(assert (=> d!13622 (= (isEmpty!371 lt!14714) (not ((_ is Some!85) lt!14714)))))

(assert (=> d!13430 d!13622))

(declare-fun b!76517 () Bool)

(declare-fun e!42689 () Bool)

(assert (=> b!76517 (= e!42689 (>= (size!1156 input!2238) (size!1156 input!2238)))))

(declare-fun b!76514 () Bool)

(declare-fun e!42691 () Bool)

(declare-fun e!42690 () Bool)

(assert (=> b!76514 (= e!42691 e!42690)))

(declare-fun res!40017 () Bool)

(assert (=> b!76514 (=> (not res!40017) (not e!42690))))

(assert (=> b!76514 (= res!40017 (not ((_ is Nil!1306) input!2238)))))

(declare-fun b!76515 () Bool)

(declare-fun res!40016 () Bool)

(assert (=> b!76515 (=> (not res!40016) (not e!42690))))

(assert (=> b!76515 (= res!40016 (= (head!411 input!2238) (head!411 input!2238)))))

(declare-fun b!76516 () Bool)

(assert (=> b!76516 (= e!42690 (isPrefix!9 (tail!95 input!2238) (tail!95 input!2238)))))

(declare-fun d!13624 () Bool)

(assert (=> d!13624 e!42689))

(declare-fun res!40014 () Bool)

(assert (=> d!13624 (=> res!40014 e!42689)))

(declare-fun lt!15067 () Bool)

(assert (=> d!13624 (= res!40014 (not lt!15067))))

(assert (=> d!13624 (= lt!15067 e!42691)))

(declare-fun res!40015 () Bool)

(assert (=> d!13624 (=> res!40015 e!42691)))

(assert (=> d!13624 (= res!40015 ((_ is Nil!1306) input!2238))))

(assert (=> d!13624 (= (isPrefix!9 input!2238 input!2238) lt!15067)))

(assert (= (and d!13624 (not res!40015)) b!76514))

(assert (= (and b!76514 res!40017) b!76515))

(assert (= (and b!76515 res!40016) b!76516))

(assert (= (and d!13624 (not res!40014)) b!76517))

(assert (=> b!76517 m!47938))

(assert (=> b!76517 m!47938))

(declare-fun m!48638 () Bool)

(assert (=> b!76515 m!48638))

(assert (=> b!76515 m!48638))

(declare-fun m!48640 () Bool)

(assert (=> b!76516 m!48640))

(assert (=> b!76516 m!48640))

(assert (=> b!76516 m!48640))

(assert (=> b!76516 m!48640))

(declare-fun m!48642 () Bool)

(assert (=> b!76516 m!48642))

(assert (=> d!13430 d!13624))

(declare-fun d!13628 () Bool)

(assert (=> d!13628 (isPrefix!9 input!2238 input!2238)))

(declare-fun lt!15073 () Unit!780)

(declare-fun choose!1259 (List!1312 List!1312) Unit!780)

(assert (=> d!13628 (= lt!15073 (choose!1259 input!2238 input!2238))))

(assert (=> d!13628 (= (lemmaIsPrefixRefl!9 input!2238 input!2238) lt!15073)))

(declare-fun bs!7954 () Bool)

(assert (= bs!7954 d!13628))

(assert (=> bs!7954 m!47910))

(declare-fun m!48646 () Bool)

(assert (=> bs!7954 m!48646))

(assert (=> d!13430 d!13628))

(declare-fun bs!7956 () Bool)

(declare-fun d!13632 () Bool)

(assert (= bs!7956 (and d!13632 d!13458)))

(declare-fun lambda!1401 () Int)

(assert (=> bs!7956 (= lambda!1401 lambda!1389)))

(assert (=> d!13632 true))

(declare-fun lt!15079 () Bool)

(assert (=> d!13632 (= lt!15079 (forall!181 rules!2471 lambda!1401))))

(declare-fun e!42702 () Bool)

(assert (=> d!13632 (= lt!15079 e!42702)))

(declare-fun res!40029 () Bool)

(assert (=> d!13632 (=> res!40029 e!42702)))

(assert (=> d!13632 (= res!40029 (not ((_ is Cons!1308) rules!2471)))))

(assert (=> d!13632 (= (rulesValidInductive!25 thiss!19403 rules!2471) lt!15079)))

(declare-fun b!76528 () Bool)

(declare-fun e!42703 () Bool)

(assert (=> b!76528 (= e!42702 e!42703)))

(declare-fun res!40028 () Bool)

(assert (=> b!76528 (=> (not res!40028) (not e!42703))))

(assert (=> b!76528 (= res!40028 (ruleValid!13 thiss!19403 (h!6705 rules!2471)))))

(declare-fun b!76529 () Bool)

(assert (=> b!76529 (= e!42703 (rulesValidInductive!25 thiss!19403 (t!20059 rules!2471)))))

(assert (= (and d!13632 (not res!40029)) b!76528))

(assert (= (and b!76528 res!40028) b!76529))

(declare-fun m!48650 () Bool)

(assert (=> d!13632 m!48650))

(assert (=> b!76528 m!48408))

(assert (=> b!76529 m!48574))

(assert (=> d!13430 d!13632))

(declare-fun d!13636 () Bool)

(declare-fun e!42715 () Bool)

(assert (=> d!13636 e!42715))

(declare-fun res!40032 () Bool)

(assert (=> d!13636 (=> (not res!40032) (not e!42715))))

(declare-fun lt!15086 () BalanceConc!750)

(assert (=> d!13636 (= res!40032 (= (list!393 lt!15086) (t!20060 lt!14667)))))

(declare-fun fromList!17 (List!1315) Conc!373)

(assert (=> d!13636 (= lt!15086 (BalanceConc!751 (fromList!17 (t!20060 lt!14667))))))

(assert (=> d!13636 (= (fromListB!27 (t!20060 lt!14667)) lt!15086)))

(declare-fun b!76557 () Bool)

(assert (=> b!76557 (= e!42715 (isBalanced!69 (fromList!17 (t!20060 lt!14667))))))

(assert (= (and d!13636 res!40032) b!76557))

(declare-fun m!48656 () Bool)

(assert (=> d!13636 m!48656))

(declare-fun m!48658 () Bool)

(assert (=> d!13636 m!48658))

(assert (=> b!76557 m!48658))

(assert (=> b!76557 m!48658))

(declare-fun m!48660 () Bool)

(assert (=> b!76557 m!48660))

(assert (=> d!13434 d!13636))

(declare-fun b!76564 () Bool)

(declare-fun e!42721 () List!1315)

(assert (=> b!76564 (= e!42721 (++!102 (list!396 (left!992 (c!19612 (_1!843 lt!14670)))) (list!396 (right!1322 (c!19612 (_1!843 lt!14670))))))))

(declare-fun b!76563 () Bool)

(assert (=> b!76563 (= e!42721 (list!400 (xs!2952 (c!19612 (_1!843 lt!14670)))))))

(declare-fun b!76561 () Bool)

(declare-fun e!42720 () List!1315)

(assert (=> b!76561 (= e!42720 Nil!1309)))

(declare-fun d!13640 () Bool)

(declare-fun c!19715 () Bool)

(assert (=> d!13640 (= c!19715 ((_ is Empty!373) (c!19612 (_1!843 lt!14670))))))

(assert (=> d!13640 (= (list!396 (c!19612 (_1!843 lt!14670))) e!42720)))

(declare-fun b!76562 () Bool)

(assert (=> b!76562 (= e!42720 e!42721)))

(declare-fun c!19716 () Bool)

(assert (=> b!76562 (= c!19716 ((_ is Leaf!651) (c!19612 (_1!843 lt!14670))))))

(assert (= (and d!13640 c!19715) b!76561))

(assert (= (and d!13640 (not c!19715)) b!76562))

(assert (= (and b!76562 c!19716) b!76563))

(assert (= (and b!76562 (not c!19716)) b!76564))

(declare-fun m!48662 () Bool)

(assert (=> b!76564 m!48662))

(declare-fun m!48664 () Bool)

(assert (=> b!76564 m!48664))

(assert (=> b!76564 m!48662))

(assert (=> b!76564 m!48664))

(declare-fun m!48666 () Bool)

(assert (=> b!76564 m!48666))

(declare-fun m!48668 () Bool)

(assert (=> b!76563 m!48668))

(assert (=> d!13446 d!13640))

(declare-fun b!76570 () Bool)

(declare-fun e!42722 () Bool)

(declare-fun tp!49485 () Bool)

(declare-fun tp!49481 () Bool)

(assert (=> b!76570 (= e!42722 (and tp!49485 tp!49481))))

(declare-fun b!76568 () Bool)

(declare-fun tp!49483 () Bool)

(assert (=> b!76568 (= e!42722 tp!49483)))

(declare-fun b!76566 () Bool)

(declare-fun tp!49480 () Bool)

(declare-fun tp!49487 () Bool)

(assert (=> b!76566 (= e!42722 (and tp!49480 tp!49487))))

(declare-fun b!76565 () Bool)

(assert (=> b!76565 (= e!42722 tp_is_empty!629)))

(assert (=> b!76049 (= tp!49417 e!42722)))

(assert (= (and b!76049 ((_ is ElementMatch!353) (regOne!1219 (regex!285 (h!6705 rules!2471))))) b!76565))

(assert (= (and b!76049 ((_ is Concat!628) (regOne!1219 (regex!285 (h!6705 rules!2471))))) b!76566))

(assert (= (and b!76049 ((_ is Star!353) (regOne!1219 (regex!285 (h!6705 rules!2471))))) b!76568))

(assert (= (and b!76049 ((_ is Union!353) (regOne!1219 (regex!285 (h!6705 rules!2471))))) b!76570))

(declare-fun b!76580 () Bool)

(declare-fun e!42725 () Bool)

(declare-fun tp!49498 () Bool)

(declare-fun tp!49496 () Bool)

(assert (=> b!76580 (= e!42725 (and tp!49498 tp!49496))))

(declare-fun b!76579 () Bool)

(declare-fun tp!49497 () Bool)

(assert (=> b!76579 (= e!42725 tp!49497)))

(declare-fun b!76578 () Bool)

(declare-fun tp!49495 () Bool)

(declare-fun tp!49499 () Bool)

(assert (=> b!76578 (= e!42725 (and tp!49495 tp!49499))))

(declare-fun b!76577 () Bool)

(assert (=> b!76577 (= e!42725 tp_is_empty!629)))

(assert (=> b!76049 (= tp!49415 e!42725)))

(assert (= (and b!76049 ((_ is ElementMatch!353) (regTwo!1219 (regex!285 (h!6705 rules!2471))))) b!76577))

(assert (= (and b!76049 ((_ is Concat!628) (regTwo!1219 (regex!285 (h!6705 rules!2471))))) b!76578))

(assert (= (and b!76049 ((_ is Star!353) (regTwo!1219 (regex!285 (h!6705 rules!2471))))) b!76579))

(assert (= (and b!76049 ((_ is Union!353) (regTwo!1219 (regex!285 (h!6705 rules!2471))))) b!76580))

(declare-fun b!76581 () Bool)

(declare-fun e!42726 () Bool)

(declare-fun tp!49500 () Bool)

(assert (=> b!76581 (= e!42726 (and tp_is_empty!629 tp!49500))))

(assert (=> b!76035 (= tp!49403 e!42726)))

(assert (= (and b!76035 ((_ is Cons!1306) (t!20057 (t!20057 input!2238)))) b!76581))

(declare-fun b!76585 () Bool)

(declare-fun e!42727 () Bool)

(declare-fun tp!49504 () Bool)

(declare-fun tp!49502 () Bool)

(assert (=> b!76585 (= e!42727 (and tp!49504 tp!49502))))

(declare-fun b!76584 () Bool)

(declare-fun tp!49503 () Bool)

(assert (=> b!76584 (= e!42727 tp!49503)))

(declare-fun b!76583 () Bool)

(declare-fun tp!49501 () Bool)

(declare-fun tp!49505 () Bool)

(assert (=> b!76583 (= e!42727 (and tp!49501 tp!49505))))

(declare-fun b!76582 () Bool)

(assert (=> b!76582 (= e!42727 tp_is_empty!629)))

(assert (=> b!76029 (= tp!49399 e!42727)))

(assert (= (and b!76029 ((_ is ElementMatch!353) (regex!285 (h!6705 (t!20059 rules!2471))))) b!76582))

(assert (= (and b!76029 ((_ is Concat!628) (regex!285 (h!6705 (t!20059 rules!2471))))) b!76583))

(assert (= (and b!76029 ((_ is Star!353) (regex!285 (h!6705 (t!20059 rules!2471))))) b!76584))

(assert (= (and b!76029 ((_ is Union!353) (regex!285 (h!6705 (t!20059 rules!2471))))) b!76585))

(declare-fun b!76589 () Bool)

(declare-fun e!42728 () Bool)

(declare-fun tp!49509 () Bool)

(declare-fun tp!49507 () Bool)

(assert (=> b!76589 (= e!42728 (and tp!49509 tp!49507))))

(declare-fun b!76588 () Bool)

(declare-fun tp!49508 () Bool)

(assert (=> b!76588 (= e!42728 tp!49508)))

(declare-fun b!76587 () Bool)

(declare-fun tp!49506 () Bool)

(declare-fun tp!49510 () Bool)

(assert (=> b!76587 (= e!42728 (and tp!49506 tp!49510))))

(declare-fun b!76586 () Bool)

(assert (=> b!76586 (= e!42728 tp_is_empty!629)))

(assert (=> b!76048 (= tp!49416 e!42728)))

(assert (= (and b!76048 ((_ is ElementMatch!353) (reg!682 (regex!285 (h!6705 rules!2471))))) b!76586))

(assert (= (and b!76048 ((_ is Concat!628) (reg!682 (regex!285 (h!6705 rules!2471))))) b!76587))

(assert (= (and b!76048 ((_ is Star!353) (reg!682 (regex!285 (h!6705 rules!2471))))) b!76588))

(assert (= (and b!76048 ((_ is Union!353) (reg!682 (regex!285 (h!6705 rules!2471))))) b!76589))

(declare-fun b!76592 () Bool)

(declare-fun b_free!2417 () Bool)

(declare-fun b_next!2417 () Bool)

(assert (=> b!76592 (= b_free!2417 (not b_next!2417))))

(declare-fun tb!2375 () Bool)

(declare-fun t!20094 () Bool)

(assert (=> (and b!76592 (= (toValue!788 (transformation!285 (h!6705 (t!20059 (t!20059 rules!2471))))) (toValue!788 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))))) t!20094) tb!2375))

(declare-fun result!3376 () Bool)

(assert (= result!3376 result!3360))

(assert (=> d!13564 t!20094))

(declare-fun tp!49514 () Bool)

(declare-fun b_and!3475 () Bool)

(assert (=> b!76592 (= tp!49514 (and (=> t!20094 result!3376) b_and!3475))))

(declare-fun b_free!2419 () Bool)

(declare-fun b_next!2419 () Bool)

(assert (=> b!76592 (= b_free!2419 (not b_next!2419))))

(declare-fun tb!2377 () Bool)

(declare-fun t!20096 () Bool)

(assert (=> (and b!76592 (= (toChars!647 (transformation!285 (h!6705 (t!20059 (t!20059 rules!2471))))) (toChars!647 (transformation!285 (rule!760 (_1!844 (get!317 lt!14714)))))) t!20096) tb!2377))

(declare-fun result!3378 () Bool)

(assert (= result!3378 result!3348))

(assert (=> d!13500 t!20096))

(declare-fun b_and!3477 () Bool)

(declare-fun tp!49512 () Bool)

(assert (=> b!76592 (= tp!49512 (and (=> t!20096 result!3378) b_and!3477))))

(declare-fun e!42729 () Bool)

(assert (=> b!76592 (= e!42729 (and tp!49514 tp!49512))))

(declare-fun b!76591 () Bool)

(declare-fun e!42730 () Bool)

(declare-fun tp!49513 () Bool)

(assert (=> b!76591 (= e!42730 (and tp!49513 (inv!1687 (tag!463 (h!6705 (t!20059 (t!20059 rules!2471))))) (inv!1689 (transformation!285 (h!6705 (t!20059 (t!20059 rules!2471))))) e!42729))))

(declare-fun b!76590 () Bool)

(declare-fun e!42731 () Bool)

(declare-fun tp!49511 () Bool)

(assert (=> b!76590 (= e!42731 (and e!42730 tp!49511))))

(assert (=> b!76028 (= tp!49397 e!42731)))

(assert (= b!76591 b!76592))

(assert (= b!76590 b!76591))

(assert (= (and b!76028 ((_ is Cons!1308) (t!20059 (t!20059 rules!2471)))) b!76590))

(declare-fun m!48674 () Bool)

(assert (=> b!76591 m!48674))

(declare-fun m!48676 () Bool)

(assert (=> b!76591 m!48676))

(declare-fun b!76596 () Bool)

(declare-fun e!42733 () Bool)

(declare-fun tp!49518 () Bool)

(declare-fun tp!49516 () Bool)

(assert (=> b!76596 (= e!42733 (and tp!49518 tp!49516))))

(declare-fun b!76595 () Bool)

(declare-fun tp!49517 () Bool)

(assert (=> b!76595 (= e!42733 tp!49517)))

(declare-fun b!76594 () Bool)

(declare-fun tp!49515 () Bool)

(declare-fun tp!49519 () Bool)

(assert (=> b!76594 (= e!42733 (and tp!49515 tp!49519))))

(declare-fun b!76593 () Bool)

(assert (=> b!76593 (= e!42733 tp_is_empty!629)))

(assert (=> b!76047 (= tp!49414 e!42733)))

(assert (= (and b!76047 ((_ is ElementMatch!353) (regOne!1218 (regex!285 (h!6705 rules!2471))))) b!76593))

(assert (= (and b!76047 ((_ is Concat!628) (regOne!1218 (regex!285 (h!6705 rules!2471))))) b!76594))

(assert (= (and b!76047 ((_ is Star!353) (regOne!1218 (regex!285 (h!6705 rules!2471))))) b!76595))

(assert (= (and b!76047 ((_ is Union!353) (regOne!1218 (regex!285 (h!6705 rules!2471))))) b!76596))

(declare-fun b!76600 () Bool)

(declare-fun e!42734 () Bool)

(declare-fun tp!49523 () Bool)

(declare-fun tp!49521 () Bool)

(assert (=> b!76600 (= e!42734 (and tp!49523 tp!49521))))

(declare-fun b!76599 () Bool)

(declare-fun tp!49522 () Bool)

(assert (=> b!76599 (= e!42734 tp!49522)))

(declare-fun b!76598 () Bool)

(declare-fun tp!49520 () Bool)

(declare-fun tp!49524 () Bool)

(assert (=> b!76598 (= e!42734 (and tp!49520 tp!49524))))

(declare-fun b!76597 () Bool)

(assert (=> b!76597 (= e!42734 tp_is_empty!629)))

(assert (=> b!76047 (= tp!49418 e!42734)))

(assert (= (and b!76047 ((_ is ElementMatch!353) (regTwo!1218 (regex!285 (h!6705 rules!2471))))) b!76597))

(assert (= (and b!76047 ((_ is Concat!628) (regTwo!1218 (regex!285 (h!6705 rules!2471))))) b!76598))

(assert (= (and b!76047 ((_ is Star!353) (regTwo!1218 (regex!285 (h!6705 rules!2471))))) b!76599))

(assert (= (and b!76047 ((_ is Union!353) (regTwo!1218 (regex!285 (h!6705 rules!2471))))) b!76600))

(check-sat (not b!76159) (not d!13510) (not b!76515) (not b_next!2405) (not d!13548) b_and!3457 (not b!76433) (not b!76122) (not tb!2355) (not b!76580) (not d!13628) (not d!13550) (not b_next!2419) (not d!13604) (not b_next!2403) (not b!76406) (not b!76600) (not d!13520) (not b!76517) (not b!76352) (not d!13562) (not b_lambda!869) (not b!76278) (not d!13636) (not b!76581) (not d!13558) (not b!76583) (not b!76564) (not b!76413) (not b!76354) (not b!76412) (not b!76568) (not tb!2363) (not b!76528) (not b!76594) (not b!76277) (not b!76291) (not b!76587) (not d!13560) (not d!13522) (not d!13516) (not b!76437) (not b_lambda!865) (not b!76178) (not b!76319) (not b!76411) (not d!13458) (not b_next!2407) (not b!76589) (not d!13600) b_and!3477 (not d!13456) (not b!76570) (not b!76529) b_and!3463 (not b!76595) (not b!76317) (not b!76557) (not b!76160) (not b!76438) (not b!76325) (not b!76588) (not b!76367) (not b!76566) (not d!13468) (not d!13616) (not b_next!2417) (not b!76434) (not b!76275) (not b!76590) (not b!76467) (not bm!3639) b_and!3465 (not b!76427) (not b!76321) (not b!76357) (not b!76492) (not d!13498) (not d!13632) (not d!13500) (not d!13480) b_and!3475 (not d!13566) b_and!3455 (not b!76591) (not d!13608) (not b!76596) (not b!76404) (not b!76355) (not d!13606) (not b!76430) (not b!76279) (not b!76286) (not b!76431) (not d!13450) (not b!76353) (not d!13576) (not b!76143) (not d!13494) (not d!13478) (not b!76563) (not d!13570) (not d!13466) (not b!76598) (not b!76599) (not b!76491) (not b!76585) (not b!76322) (not b!76144) (not d!13470) (not b!76516) (not b!76410) (not d!13556) (not d!13614) (not b!76320) (not b!76425) (not b!76579) (not b!76356) (not b!76323) (not b!76578) tp_is_empty!629 (not b_next!2401) (not b!76584) (not b!76145) (not b!76435) (not d!13610) (not bm!3640) (not b!76292) (not b!76318) (not b!76436))
(check-sat (not b_next!2419) (not b_next!2403) (not b_next!2407) b_and!3477 b_and!3463 (not b_next!2417) b_and!3465 (not b_next!2401) (not b_next!2405) b_and!3457 b_and!3475 b_and!3455)

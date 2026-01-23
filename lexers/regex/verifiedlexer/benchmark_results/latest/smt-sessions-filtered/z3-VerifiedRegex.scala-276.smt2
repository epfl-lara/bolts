; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5790 () Bool)

(assert start!5790)

(declare-fun b!75874 () Bool)

(declare-fun b_free!2393 () Bool)

(declare-fun b_next!2393 () Bool)

(assert (=> b!75874 (= b_free!2393 (not b_next!2393))))

(declare-fun tp!49356 () Bool)

(declare-fun b_and!3435 () Bool)

(assert (=> b!75874 (= tp!49356 b_and!3435)))

(declare-fun b_free!2395 () Bool)

(declare-fun b_next!2395 () Bool)

(assert (=> b!75874 (= b_free!2395 (not b_next!2395))))

(declare-fun tp!49358 () Bool)

(declare-fun b_and!3437 () Bool)

(assert (=> b!75874 (= tp!49358 b_and!3437)))

(declare-fun b!75870 () Bool)

(declare-fun e!42317 () Bool)

(declare-fun e!42321 () Bool)

(assert (=> b!75870 (= e!42317 e!42321)))

(declare-fun res!39655 () Bool)

(assert (=> b!75870 (=> (not res!39655) (not e!42321))))

(declare-datatypes ((C!1624 0))(
  ( (C!1625 (val!419 Int)) )
))
(declare-datatypes ((List!1304 0))(
  ( (Nil!1298) (Cons!1298 (h!6695 C!1624) (t!20049 List!1304)) )
))
(declare-datatypes ((IArray!737 0))(
  ( (IArray!738 (innerList!426 List!1304)) )
))
(declare-datatypes ((Conc!368 0))(
  ( (Node!368 (left!986 Conc!368) (right!1316 Conc!368) (csize!966 Int) (cheight!579 Int)) (Leaf!645 (xs!2947 IArray!737) (csize!967 Int)) (Empty!368) )
))
(declare-datatypes ((BalanceConc!740 0))(
  ( (BalanceConc!741 (c!19602 Conc!368)) )
))
(declare-datatypes ((List!1305 0))(
  ( (Nil!1299) (Cons!1299 (h!6696 (_ BitVec 16)) (t!20050 List!1305)) )
))
(declare-datatypes ((TokenValue!273 0))(
  ( (FloatLiteralValue!546 (text!2356 List!1305)) (TokenValueExt!272 (__x!1641 Int)) (Broken!1365 (value!10935 List!1305)) (Object!278) (End!273) (Def!273) (Underscore!273) (Match!273) (Else!273) (Error!273) (Case!273) (If!273) (Extends!273) (Abstract!273) (Class!273) (Val!273) (DelimiterValue!546 (del!333 List!1305)) (KeywordValue!279 (value!10936 List!1305)) (CommentValue!546 (value!10937 List!1305)) (WhitespaceValue!546 (value!10938 List!1305)) (IndentationValue!273 (value!10939 List!1305)) (String!1756) (Int32!273) (Broken!1366 (value!10940 List!1305)) (Boolean!274) (Unit!773) (OperatorValue!276 (op!333 List!1305)) (IdentifierValue!546 (value!10941 List!1305)) (IdentifierValue!547 (value!10942 List!1305)) (WhitespaceValue!547 (value!10943 List!1305)) (True!546) (False!546) (Broken!1367 (value!10944 List!1305)) (Broken!1368 (value!10945 List!1305)) (True!547) (RightBrace!273) (RightBracket!273) (Colon!273) (Null!273) (Comma!273) (LeftBracket!273) (False!547) (LeftBrace!273) (ImaginaryLiteralValue!273 (text!2357 List!1305)) (StringLiteralValue!819 (value!10946 List!1305)) (EOFValue!273 (value!10947 List!1305)) (IdentValue!273 (value!10948 List!1305)) (DelimiterValue!547 (value!10949 List!1305)) (DedentValue!273 (value!10950 List!1305)) (NewLineValue!273 (value!10951 List!1305)) (IntegerValue!819 (value!10952 (_ BitVec 32)) (text!2358 List!1305)) (IntegerValue!820 (value!10953 Int) (text!2359 List!1305)) (Times!273) (Or!273) (Equal!273) (Minus!273) (Broken!1369 (value!10954 List!1305)) (And!273) (Div!273) (LessEqual!273) (Mod!273) (Concat!624) (Not!273) (Plus!273) (SpaceValue!273 (value!10955 List!1305)) (IntegerValue!821 (value!10956 Int) (text!2360 List!1305)) (StringLiteralValue!820 (text!2361 List!1305)) (FloatLiteralValue!547 (text!2362 List!1305)) (BytesLiteralValue!273 (value!10957 List!1305)) (CommentValue!547 (value!10958 List!1305)) (StringLiteralValue!821 (value!10959 List!1305)) (ErrorTokenValue!273 (msg!334 List!1305)) )
))
(declare-datatypes ((Regex!351 0))(
  ( (ElementMatch!351 (c!19603 C!1624)) (Concat!625 (regOne!1214 Regex!351) (regTwo!1214 Regex!351)) (EmptyExpr!351) (Star!351 (reg!680 Regex!351)) (EmptyLang!351) (Union!351 (regOne!1215 Regex!351) (regTwo!1215 Regex!351)) )
))
(declare-datatypes ((String!1757 0))(
  ( (String!1758 (value!10960 String)) )
))
(declare-datatypes ((TokenValueInjection!370 0))(
  ( (TokenValueInjection!371 (toValue!786 Int) (toChars!645 Int)) )
))
(declare-datatypes ((Rule!366 0))(
  ( (Rule!367 (regex!283 Regex!351) (tag!461 String!1757) (isSeparator!283 Bool) (transformation!283 TokenValueInjection!370)) )
))
(declare-datatypes ((Token!326 0))(
  ( (Token!327 (value!10961 TokenValue!273) (rule!758 Rule!366) (size!1151 Int) (originalCharacters!334 List!1304)) )
))
(declare-datatypes ((List!1306 0))(
  ( (Nil!1300) (Cons!1300 (h!6697 Token!326) (t!20051 List!1306)) )
))
(declare-datatypes ((IArray!739 0))(
  ( (IArray!740 (innerList!427 List!1306)) )
))
(declare-datatypes ((Conc!369 0))(
  ( (Node!369 (left!987 Conc!369) (right!1317 Conc!369) (csize!968 Int) (cheight!580 Int)) (Leaf!646 (xs!2948 IArray!739) (csize!969 Int)) (Empty!369) )
))
(declare-datatypes ((BalanceConc!742 0))(
  ( (BalanceConc!743 (c!19604 Conc!369)) )
))
(declare-datatypes ((tuple2!1266 0))(
  ( (tuple2!1267 (_1!840 BalanceConc!742) (_2!840 BalanceConc!740)) )
))
(declare-fun lt!14646 () tuple2!1266)

(declare-fun isEmpty!362 (BalanceConc!740) Bool)

(assert (=> b!75870 (= res!39655 (not (isEmpty!362 (_2!840 lt!14646))))))

(declare-datatypes ((LexerInterface!175 0))(
  ( (LexerInterfaceExt!172 (__x!1642 Int)) (Lexer!173) )
))
(declare-fun thiss!19403 () LexerInterface!175)

(declare-datatypes ((List!1307 0))(
  ( (Nil!1301) (Cons!1301 (h!6698 Rule!366) (t!20052 List!1307)) )
))
(declare-fun rules!2471 () List!1307)

(declare-fun input!2238 () List!1304)

(declare-fun lex!83 (LexerInterface!175 List!1307 BalanceConc!740) tuple2!1266)

(declare-fun seqFromList!78 (List!1304) BalanceConc!740)

(assert (=> b!75870 (= lt!14646 (lex!83 thiss!19403 rules!2471 (seqFromList!78 input!2238)))))

(declare-fun b!75871 () Bool)

(declare-fun e!42319 () Bool)

(assert (=> b!75871 (= e!42321 e!42319)))

(declare-fun res!39656 () Bool)

(assert (=> b!75871 (=> (not res!39656) (not e!42319))))

(declare-fun lt!14642 () Bool)

(declare-fun lt!14645 () List!1306)

(get-info :version)

(assert (=> b!75871 (= res!39656 (and (or lt!14642 (not ((_ is Nil!1300) (t!20051 lt!14645)))) (not lt!14642)))))

(assert (=> b!75871 (= lt!14642 (not ((_ is Cons!1300) lt!14645)))))

(declare-fun list!391 (BalanceConc!742) List!1306)

(assert (=> b!75871 (= lt!14645 (list!391 (_1!840 lt!14646)))))

(declare-fun b!75872 () Bool)

(declare-fun res!39654 () Bool)

(assert (=> b!75872 (=> (not res!39654) (not e!42317))))

(declare-fun rulesInvariant!169 (LexerInterface!175 List!1307) Bool)

(assert (=> b!75872 (= res!39654 (rulesInvariant!169 thiss!19403 rules!2471))))

(declare-fun b!75873 () Bool)

(declare-fun e!42318 () Bool)

(declare-fun tp_is_empty!625 () Bool)

(declare-fun tp!49357 () Bool)

(assert (=> b!75873 (= e!42318 (and tp_is_empty!625 tp!49357))))

(declare-fun e!42316 () Bool)

(assert (=> b!75874 (= e!42316 (and tp!49356 tp!49358))))

(declare-fun b!75875 () Bool)

(declare-fun res!39653 () Bool)

(assert (=> b!75875 (=> (not res!39653) (not e!42317))))

(declare-fun isEmpty!363 (List!1307) Bool)

(assert (=> b!75875 (= res!39653 (not (isEmpty!363 rules!2471)))))

(declare-fun tp!49354 () Bool)

(declare-fun b!75876 () Bool)

(declare-fun e!42320 () Bool)

(declare-fun inv!1682 (String!1757) Bool)

(declare-fun inv!1684 (TokenValueInjection!370) Bool)

(assert (=> b!75876 (= e!42320 (and tp!49354 (inv!1682 (tag!461 (h!6698 rules!2471))) (inv!1684 (transformation!283 (h!6698 rules!2471))) e!42316))))

(declare-fun res!39657 () Bool)

(assert (=> start!5790 (=> (not res!39657) (not e!42317))))

(assert (=> start!5790 (= res!39657 ((_ is Lexer!173) thiss!19403))))

(assert (=> start!5790 e!42317))

(assert (=> start!5790 true))

(declare-fun e!42315 () Bool)

(assert (=> start!5790 e!42315))

(assert (=> start!5790 e!42318))

(declare-fun b!75877 () Bool)

(declare-fun tp!49355 () Bool)

(assert (=> b!75877 (= e!42315 (and e!42320 tp!49355))))

(declare-fun b!75878 () Bool)

(assert (=> b!75878 (= e!42319 (not true))))

(declare-fun lt!14644 () Bool)

(declare-fun rulesValidInductive!24 (LexerInterface!175 List!1307) Bool)

(assert (=> b!75878 (= lt!14644 (rulesValidInductive!24 thiss!19403 rules!2471))))

(declare-fun prepend!30 (BalanceConc!742 Token!326) BalanceConc!742)

(declare-fun seqFromList!79 (List!1306) BalanceConc!742)

(assert (=> b!75878 (= lt!14645 (list!391 (prepend!30 (seqFromList!79 (t!20051 lt!14645)) (h!6697 lt!14645))))))

(declare-datatypes ((Unit!774 0))(
  ( (Unit!775) )
))
(declare-fun lt!14643 () Unit!774)

(declare-fun seqFromListBHdTlConstructive!6 (Token!326 List!1306 BalanceConc!742) Unit!774)

(assert (=> b!75878 (= lt!14643 (seqFromListBHdTlConstructive!6 (h!6697 lt!14645) (t!20051 lt!14645) (_1!840 lt!14646)))))

(assert (= (and start!5790 res!39657) b!75875))

(assert (= (and b!75875 res!39653) b!75872))

(assert (= (and b!75872 res!39654) b!75870))

(assert (= (and b!75870 res!39655) b!75871))

(assert (= (and b!75871 res!39656) b!75878))

(assert (= b!75876 b!75874))

(assert (= b!75877 b!75876))

(assert (= (and start!5790 ((_ is Cons!1301) rules!2471)) b!75877))

(assert (= (and start!5790 ((_ is Cons!1298) input!2238)) b!75873))

(declare-fun m!47724 () Bool)

(assert (=> b!75878 m!47724))

(declare-fun m!47726 () Bool)

(assert (=> b!75878 m!47726))

(declare-fun m!47728 () Bool)

(assert (=> b!75878 m!47728))

(declare-fun m!47730 () Bool)

(assert (=> b!75878 m!47730))

(assert (=> b!75878 m!47726))

(assert (=> b!75878 m!47728))

(declare-fun m!47732 () Bool)

(assert (=> b!75878 m!47732))

(declare-fun m!47734 () Bool)

(assert (=> b!75870 m!47734))

(declare-fun m!47736 () Bool)

(assert (=> b!75870 m!47736))

(assert (=> b!75870 m!47736))

(declare-fun m!47738 () Bool)

(assert (=> b!75870 m!47738))

(declare-fun m!47740 () Bool)

(assert (=> b!75871 m!47740))

(declare-fun m!47742 () Bool)

(assert (=> b!75876 m!47742))

(declare-fun m!47744 () Bool)

(assert (=> b!75876 m!47744))

(declare-fun m!47746 () Bool)

(assert (=> b!75875 m!47746))

(declare-fun m!47748 () Bool)

(assert (=> b!75872 m!47748))

(check-sat (not b!75875) b_and!3435 (not b!75871) tp_is_empty!625 (not b_next!2395) (not b!75870) (not b!75876) (not b!75872) (not b!75878) (not b!75877) (not b!75873) (not b_next!2393) b_and!3437)
(check-sat b_and!3437 b_and!3435 (not b_next!2395) (not b_next!2393))

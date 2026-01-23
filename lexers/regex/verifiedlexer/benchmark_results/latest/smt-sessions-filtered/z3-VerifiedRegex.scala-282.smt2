; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6070 () Bool)

(assert start!6070)

(declare-fun b!77077 () Bool)

(declare-fun b_free!2465 () Bool)

(declare-fun b_next!2465 () Bool)

(assert (=> b!77077 (= b_free!2465 (not b_next!2465))))

(declare-fun tp!49730 () Bool)

(declare-fun b_and!3523 () Bool)

(assert (=> b!77077 (= tp!49730 b_and!3523)))

(declare-fun b_free!2467 () Bool)

(declare-fun b_next!2467 () Bool)

(assert (=> b!77077 (= b_free!2467 (not b_next!2467))))

(declare-fun tp!49731 () Bool)

(declare-fun b_and!3525 () Bool)

(assert (=> b!77077 (= tp!49731 b_and!3525)))

(declare-fun b!77074 () Bool)

(declare-fun e!43093 () Bool)

(declare-fun e!43089 () Bool)

(assert (=> b!77074 (= e!43093 e!43089)))

(declare-fun res!40294 () Bool)

(assert (=> b!77074 (=> (not res!40294) (not e!43089))))

(declare-fun lt!15462 () Bool)

(declare-datatypes ((C!1648 0))(
  ( (C!1649 (val!431 Int)) )
))
(declare-datatypes ((List!1356 0))(
  ( (Nil!1350) (Cons!1350 (h!6747 C!1648) (t!20135 List!1356)) )
))
(declare-datatypes ((IArray!785 0))(
  ( (IArray!786 (innerList!450 List!1356)) )
))
(declare-datatypes ((Conc!392 0))(
  ( (Node!392 (left!1024 Conc!392) (right!1354 Conc!392) (csize!1014 Int) (cheight!603 Int)) (Leaf!675 (xs!2971 IArray!785) (csize!1015 Int)) (Empty!392) )
))
(declare-datatypes ((BalanceConc!788 0))(
  ( (BalanceConc!789 (c!19776 Conc!392)) )
))
(declare-datatypes ((List!1357 0))(
  ( (Nil!1351) (Cons!1351 (h!6748 (_ BitVec 16)) (t!20136 List!1357)) )
))
(declare-datatypes ((TokenValue!285 0))(
  ( (FloatLiteralValue!570 (text!2440 List!1357)) (TokenValueExt!284 (__x!1665 Int)) (Broken!1425 (value!11277 List!1357)) (Object!290) (End!285) (Def!285) (Underscore!285) (Match!285) (Else!285) (Error!285) (Case!285) (If!285) (Extends!285) (Abstract!285) (Class!285) (Val!285) (DelimiterValue!570 (del!345 List!1357)) (KeywordValue!291 (value!11278 List!1357)) (CommentValue!570 (value!11279 List!1357)) (WhitespaceValue!570 (value!11280 List!1357)) (IndentationValue!285 (value!11281 List!1357)) (String!1816) (Int32!285) (Broken!1426 (value!11282 List!1357)) (Boolean!286) (Unit!813) (OperatorValue!288 (op!345 List!1357)) (IdentifierValue!570 (value!11283 List!1357)) (IdentifierValue!571 (value!11284 List!1357)) (WhitespaceValue!571 (value!11285 List!1357)) (True!570) (False!570) (Broken!1427 (value!11286 List!1357)) (Broken!1428 (value!11287 List!1357)) (True!571) (RightBrace!285) (RightBracket!285) (Colon!285) (Null!285) (Comma!285) (LeftBracket!285) (False!571) (LeftBrace!285) (ImaginaryLiteralValue!285 (text!2441 List!1357)) (StringLiteralValue!855 (value!11288 List!1357)) (EOFValue!285 (value!11289 List!1357)) (IdentValue!285 (value!11290 List!1357)) (DelimiterValue!571 (value!11291 List!1357)) (DedentValue!285 (value!11292 List!1357)) (NewLineValue!285 (value!11293 List!1357)) (IntegerValue!855 (value!11294 (_ BitVec 32)) (text!2442 List!1357)) (IntegerValue!856 (value!11295 Int) (text!2443 List!1357)) (Times!285) (Or!285) (Equal!285) (Minus!285) (Broken!1429 (value!11296 List!1357)) (And!285) (Div!285) (LessEqual!285) (Mod!285) (Concat!648) (Not!285) (Plus!285) (SpaceValue!285 (value!11297 List!1357)) (IntegerValue!857 (value!11298 Int) (text!2444 List!1357)) (StringLiteralValue!856 (text!2445 List!1357)) (FloatLiteralValue!571 (text!2446 List!1357)) (BytesLiteralValue!285 (value!11299 List!1357)) (CommentValue!571 (value!11300 List!1357)) (StringLiteralValue!857 (value!11301 List!1357)) (ErrorTokenValue!285 (msg!346 List!1357)) )
))
(declare-datatypes ((Regex!363 0))(
  ( (ElementMatch!363 (c!19777 C!1648)) (Concat!649 (regOne!1238 Regex!363) (regTwo!1238 Regex!363)) (EmptyExpr!363) (Star!363 (reg!692 Regex!363)) (EmptyLang!363) (Union!363 (regOne!1239 Regex!363) (regTwo!1239 Regex!363)) )
))
(declare-datatypes ((String!1817 0))(
  ( (String!1818 (value!11302 String)) )
))
(declare-datatypes ((TokenValueInjection!394 0))(
  ( (TokenValueInjection!395 (toValue!802 Int) (toChars!661 Int)) )
))
(declare-datatypes ((Rule!390 0))(
  ( (Rule!391 (regex!295 Regex!363) (tag!473 String!1817) (isSeparator!295 Bool) (transformation!295 TokenValueInjection!394)) )
))
(declare-datatypes ((Token!350 0))(
  ( (Token!351 (value!11303 TokenValue!285) (rule!772 Rule!390) (size!1183 Int) (originalCharacters!346 List!1356)) )
))
(declare-datatypes ((List!1358 0))(
  ( (Nil!1352) (Cons!1352 (h!6749 Token!350) (t!20137 List!1358)) )
))
(declare-fun lt!15471 () List!1358)

(get-info :version)

(assert (=> b!77074 (= res!40294 (and (or lt!15462 (not ((_ is Nil!1352) (t!20137 lt!15471)))) (not lt!15462)))))

(assert (=> b!77074 (= lt!15462 (not ((_ is Cons!1352) lt!15471)))))

(declare-datatypes ((IArray!787 0))(
  ( (IArray!788 (innerList!451 List!1358)) )
))
(declare-datatypes ((Conc!393 0))(
  ( (Node!393 (left!1025 Conc!393) (right!1355 Conc!393) (csize!1016 Int) (cheight!604 Int)) (Leaf!676 (xs!2972 IArray!787) (csize!1017 Int)) (Empty!393) )
))
(declare-datatypes ((BalanceConc!790 0))(
  ( (BalanceConc!791 (c!19778 Conc!393)) )
))
(declare-datatypes ((tuple2!1334 0))(
  ( (tuple2!1335 (_1!874 BalanceConc!790) (_2!874 BalanceConc!788)) )
))
(declare-fun lt!15461 () tuple2!1334)

(declare-fun list!422 (BalanceConc!790) List!1358)

(assert (=> b!77074 (= lt!15471 (list!422 (_1!874 lt!15461)))))

(declare-fun b!77075 () Bool)

(declare-fun e!43087 () Bool)

(assert (=> b!77075 (= e!43087 e!43093)))

(declare-fun res!40296 () Bool)

(assert (=> b!77075 (=> (not res!40296) (not e!43093))))

(declare-fun isEmpty!406 (BalanceConc!788) Bool)

(assert (=> b!77075 (= res!40296 (not (isEmpty!406 (_2!874 lt!15461))))))

(declare-datatypes ((LexerInterface!187 0))(
  ( (LexerInterfaceExt!184 (__x!1666 Int)) (Lexer!185) )
))
(declare-fun thiss!19403 () LexerInterface!187)

(declare-datatypes ((List!1359 0))(
  ( (Nil!1353) (Cons!1353 (h!6750 Rule!390) (t!20138 List!1359)) )
))
(declare-fun rules!2471 () List!1359)

(declare-fun input!2238 () List!1356)

(declare-fun lex!95 (LexerInterface!187 List!1359 BalanceConc!788) tuple2!1334)

(declare-fun seqFromList!102 (List!1356) BalanceConc!788)

(assert (=> b!77075 (= lt!15461 (lex!95 thiss!19403 rules!2471 (seqFromList!102 input!2238)))))

(declare-fun b!77076 () Bool)

(assert (=> b!77076 (= e!43089 (not true))))

(declare-fun lt!15465 () Bool)

(declare-fun rulesValidInductive!30 (LexerInterface!187 List!1359) Bool)

(assert (=> b!77076 (= lt!15465 (rulesValidInductive!30 thiss!19403 rules!2471))))

(declare-fun lt!15466 () List!1356)

(declare-fun lt!15467 () tuple2!1334)

(declare-fun lt!15468 () List!1356)

(declare-datatypes ((tuple2!1336 0))(
  ( (tuple2!1337 (_1!875 List!1358) (_2!875 List!1356)) )
))
(declare-fun tail!102 (List!1358) List!1358)

(assert (=> b!77076 (= (tuple2!1337 (list!422 (_1!874 lt!15467)) lt!15466) (tuple2!1337 (tail!102 lt!15471) lt!15468))))

(declare-datatypes ((Unit!814 0))(
  ( (Unit!815) )
))
(declare-fun lt!15472 () Unit!814)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!6 (LexerInterface!187 List!1359 List!1356 List!1358 List!1356) Unit!814)

(assert (=> b!77076 (= lt!15472 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!6 thiss!19403 rules!2471 input!2238 lt!15471 lt!15468))))

(declare-fun list!423 (BalanceConc!788) List!1356)

(assert (=> b!77076 (= lt!15468 (list!423 (_2!874 lt!15461)))))

(declare-fun lt!15470 () List!1356)

(declare-datatypes ((tuple2!1338 0))(
  ( (tuple2!1339 (_1!876 Token!350) (_2!876 List!1356)) )
))
(declare-fun lt!15469 () tuple2!1338)

(declare-fun ++!114 (List!1356 List!1356) List!1356)

(assert (=> b!77076 (= (++!114 lt!15470 lt!15466) (_2!876 lt!15469))))

(assert (=> b!77076 (= lt!15466 (list!423 (_2!874 lt!15467)))))

(declare-fun print!26 (LexerInterface!187 BalanceConc!790) BalanceConc!788)

(assert (=> b!77076 (= lt!15470 (list!423 (print!26 thiss!19403 (_1!874 lt!15467))))))

(assert (=> b!77076 (= lt!15467 (lex!95 thiss!19403 rules!2471 (seqFromList!102 (_2!876 lt!15469))))))

(declare-fun lt!15463 () Unit!814)

(declare-fun theoremInvertFromString!10 (LexerInterface!187 List!1359 List!1356) Unit!814)

(assert (=> b!77076 (= lt!15463 (theoremInvertFromString!10 thiss!19403 rules!2471 (_2!876 lt!15469)))))

(declare-datatypes ((Option!98 0))(
  ( (None!97) (Some!97 (v!12752 tuple2!1338)) )
))
(declare-fun get!331 (Option!98) tuple2!1338)

(declare-fun maxPrefix!31 (LexerInterface!187 List!1359 List!1356) Option!98)

(assert (=> b!77076 (= lt!15469 (get!331 (maxPrefix!31 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!46 (BalanceConc!790 Token!350) BalanceConc!790)

(declare-fun seqFromList!103 (List!1358) BalanceConc!790)

(assert (=> b!77076 (= lt!15471 (list!422 (prepend!46 (seqFromList!103 (t!20137 lt!15471)) (h!6749 lt!15471))))))

(declare-fun lt!15464 () Unit!814)

(declare-fun seqFromListBHdTlConstructive!18 (Token!350 List!1358 BalanceConc!790) Unit!814)

(assert (=> b!77076 (= lt!15464 (seqFromListBHdTlConstructive!18 (h!6749 lt!15471) (t!20137 lt!15471) (_1!874 lt!15461)))))

(declare-fun res!40295 () Bool)

(assert (=> start!6070 (=> (not res!40295) (not e!43087))))

(assert (=> start!6070 (= res!40295 ((_ is Lexer!185) thiss!19403))))

(assert (=> start!6070 e!43087))

(assert (=> start!6070 true))

(declare-fun e!43094 () Bool)

(assert (=> start!6070 e!43094))

(declare-fun e!43092 () Bool)

(assert (=> start!6070 e!43092))

(declare-fun e!43091 () Bool)

(assert (=> b!77077 (= e!43091 (and tp!49730 tp!49731))))

(declare-fun b!77078 () Bool)

(declare-fun tp_is_empty!649 () Bool)

(declare-fun tp!49732 () Bool)

(assert (=> b!77078 (= e!43092 (and tp_is_empty!649 tp!49732))))

(declare-fun b!77079 () Bool)

(declare-fun tp!49733 () Bool)

(declare-fun e!43088 () Bool)

(declare-fun inv!1716 (String!1817) Bool)

(declare-fun inv!1718 (TokenValueInjection!394) Bool)

(assert (=> b!77079 (= e!43088 (and tp!49733 (inv!1716 (tag!473 (h!6750 rules!2471))) (inv!1718 (transformation!295 (h!6750 rules!2471))) e!43091))))

(declare-fun b!77080 () Bool)

(declare-fun res!40298 () Bool)

(assert (=> b!77080 (=> (not res!40298) (not e!43087))))

(declare-fun rulesInvariant!181 (LexerInterface!187 List!1359) Bool)

(assert (=> b!77080 (= res!40298 (rulesInvariant!181 thiss!19403 rules!2471))))

(declare-fun b!77081 () Bool)

(declare-fun res!40297 () Bool)

(assert (=> b!77081 (=> (not res!40297) (not e!43087))))

(declare-fun isEmpty!407 (List!1359) Bool)

(assert (=> b!77081 (= res!40297 (not (isEmpty!407 rules!2471)))))

(declare-fun b!77082 () Bool)

(declare-fun tp!49734 () Bool)

(assert (=> b!77082 (= e!43094 (and e!43088 tp!49734))))

(assert (= (and start!6070 res!40295) b!77081))

(assert (= (and b!77081 res!40297) b!77080))

(assert (= (and b!77080 res!40298) b!77075))

(assert (= (and b!77075 res!40296) b!77074))

(assert (= (and b!77074 res!40294) b!77076))

(assert (= b!77079 b!77077))

(assert (= b!77082 b!77079))

(assert (= (and start!6070 ((_ is Cons!1353) rules!2471)) b!77082))

(assert (= (and start!6070 ((_ is Cons!1350) input!2238)) b!77078))

(declare-fun m!49406 () Bool)

(assert (=> b!77076 m!49406))

(declare-fun m!49408 () Bool)

(assert (=> b!77076 m!49408))

(assert (=> b!77076 m!49408))

(declare-fun m!49410 () Bool)

(assert (=> b!77076 m!49410))

(declare-fun m!49412 () Bool)

(assert (=> b!77076 m!49412))

(declare-fun m!49414 () Bool)

(assert (=> b!77076 m!49414))

(declare-fun m!49416 () Bool)

(assert (=> b!77076 m!49416))

(declare-fun m!49418 () Bool)

(assert (=> b!77076 m!49418))

(declare-fun m!49420 () Bool)

(assert (=> b!77076 m!49420))

(assert (=> b!77076 m!49414))

(declare-fun m!49422 () Bool)

(assert (=> b!77076 m!49422))

(declare-fun m!49424 () Bool)

(assert (=> b!77076 m!49424))

(declare-fun m!49426 () Bool)

(assert (=> b!77076 m!49426))

(declare-fun m!49428 () Bool)

(assert (=> b!77076 m!49428))

(declare-fun m!49430 () Bool)

(assert (=> b!77076 m!49430))

(assert (=> b!77076 m!49418))

(declare-fun m!49432 () Bool)

(assert (=> b!77076 m!49432))

(assert (=> b!77076 m!49426))

(assert (=> b!77076 m!49422))

(declare-fun m!49434 () Bool)

(assert (=> b!77076 m!49434))

(declare-fun m!49436 () Bool)

(assert (=> b!77076 m!49436))

(declare-fun m!49438 () Bool)

(assert (=> b!77076 m!49438))

(declare-fun m!49440 () Bool)

(assert (=> b!77076 m!49440))

(declare-fun m!49442 () Bool)

(assert (=> b!77081 m!49442))

(declare-fun m!49444 () Bool)

(assert (=> b!77080 m!49444))

(declare-fun m!49446 () Bool)

(assert (=> b!77074 m!49446))

(declare-fun m!49448 () Bool)

(assert (=> b!77079 m!49448))

(declare-fun m!49450 () Bool)

(assert (=> b!77079 m!49450))

(declare-fun m!49452 () Bool)

(assert (=> b!77075 m!49452))

(declare-fun m!49454 () Bool)

(assert (=> b!77075 m!49454))

(assert (=> b!77075 m!49454))

(declare-fun m!49456 () Bool)

(assert (=> b!77075 m!49456))

(check-sat b_and!3525 (not b_next!2467) (not b!77075) (not b!77074) (not b_next!2465) (not b!77082) (not b!77078) tp_is_empty!649 b_and!3523 (not b!77079) (not b!77076) (not b!77080) (not b!77081))
(check-sat b_and!3525 b_and!3523 (not b_next!2467) (not b_next!2465))

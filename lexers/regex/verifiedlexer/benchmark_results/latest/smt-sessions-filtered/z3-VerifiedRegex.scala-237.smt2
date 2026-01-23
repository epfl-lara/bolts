; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3626 () Bool)

(assert start!3626)

(declare-fun b!50348 () Bool)

(declare-fun b_free!1533 () Bool)

(declare-fun b_next!1533 () Bool)

(assert (=> b!50348 (= b_free!1533 (not b_next!1533))))

(declare-fun tp!33380 () Bool)

(declare-fun b_and!1575 () Bool)

(assert (=> b!50348 (= tp!33380 b_and!1575)))

(declare-fun b_free!1535 () Bool)

(declare-fun b_next!1535 () Bool)

(assert (=> b!50348 (= b_free!1535 (not b_next!1535))))

(declare-fun tp!33377 () Bool)

(declare-fun b_and!1577 () Bool)

(assert (=> b!50348 (= tp!33377 b_and!1577)))

(declare-fun b!50345 () Bool)

(declare-fun e!29493 () Bool)

(declare-fun e!29497 () Bool)

(assert (=> b!50345 (= e!29493 (not e!29497))))

(declare-fun res!33078 () Bool)

(assert (=> b!50345 (=> res!33078 e!29497)))

(declare-datatypes ((List!966 0))(
  ( (Nil!960) (Cons!960 (h!6357 (_ BitVec 16)) (t!17169 List!966)) )
))
(declare-datatypes ((TokenValue!195 0))(
  ( (FloatLiteralValue!390 (text!1810 List!966)) (TokenValueExt!194 (__x!1485 Int)) (Broken!975 (value!8714 List!966)) (Object!200) (End!195) (Def!195) (Underscore!195) (Match!195) (Else!195) (Error!195) (Case!195) (If!195) (Extends!195) (Abstract!195) (Class!195) (Val!195) (DelimiterValue!390 (del!255 List!966)) (KeywordValue!201 (value!8715 List!966)) (CommentValue!390 (value!8716 List!966)) (WhitespaceValue!390 (value!8717 List!966)) (IndentationValue!195 (value!8718 List!966)) (String!1366) (Int32!195) (Broken!976 (value!8719 List!966)) (Boolean!196) (Unit!535) (OperatorValue!198 (op!255 List!966)) (IdentifierValue!390 (value!8720 List!966)) (IdentifierValue!391 (value!8721 List!966)) (WhitespaceValue!391 (value!8722 List!966)) (True!390) (False!390) (Broken!977 (value!8723 List!966)) (Broken!978 (value!8724 List!966)) (True!391) (RightBrace!195) (RightBracket!195) (Colon!195) (Null!195) (Comma!195) (LeftBracket!195) (False!391) (LeftBrace!195) (ImaginaryLiteralValue!195 (text!1811 List!966)) (StringLiteralValue!585 (value!8725 List!966)) (EOFValue!195 (value!8726 List!966)) (IdentValue!195 (value!8727 List!966)) (DelimiterValue!391 (value!8728 List!966)) (DedentValue!195 (value!8729 List!966)) (NewLineValue!195 (value!8730 List!966)) (IntegerValue!585 (value!8731 (_ BitVec 32)) (text!1812 List!966)) (IntegerValue!586 (value!8732 Int) (text!1813 List!966)) (Times!195) (Or!195) (Equal!195) (Minus!195) (Broken!979 (value!8733 List!966)) (And!195) (Div!195) (LessEqual!195) (Mod!195) (Concat!468) (Not!195) (Plus!195) (SpaceValue!195 (value!8734 List!966)) (IntegerValue!587 (value!8735 Int) (text!1814 List!966)) (StringLiteralValue!586 (text!1815 List!966)) (FloatLiteralValue!391 (text!1816 List!966)) (BytesLiteralValue!195 (value!8736 List!966)) (CommentValue!391 (value!8737 List!966)) (StringLiteralValue!587 (value!8738 List!966)) (ErrorTokenValue!195 (msg!256 List!966)) )
))
(declare-datatypes ((C!1468 0))(
  ( (C!1469 (val!341 Int)) )
))
(declare-datatypes ((Regex!273 0))(
  ( (ElementMatch!273 (c!16603 C!1468)) (Concat!469 (regOne!1058 Regex!273) (regTwo!1058 Regex!273)) (EmptyExpr!273) (Star!273 (reg!602 Regex!273)) (EmptyLang!273) (Union!273 (regOne!1059 Regex!273) (regTwo!1059 Regex!273)) )
))
(declare-datatypes ((String!1367 0))(
  ( (String!1368 (value!8739 String)) )
))
(declare-datatypes ((List!967 0))(
  ( (Nil!961) (Cons!961 (h!6358 C!1468) (t!17170 List!967)) )
))
(declare-datatypes ((IArray!429 0))(
  ( (IArray!430 (innerList!272 List!967)) )
))
(declare-datatypes ((Conc!214 0))(
  ( (Node!214 (left!729 Conc!214) (right!1059 Conc!214) (csize!658 Int) (cheight!425 Int)) (Leaf!452 (xs!2793 IArray!429) (csize!659 Int)) (Empty!214) )
))
(declare-datatypes ((BalanceConc!432 0))(
  ( (BalanceConc!433 (c!16604 Conc!214)) )
))
(declare-datatypes ((TokenValueInjection!214 0))(
  ( (TokenValueInjection!215 (toValue!684 Int) (toChars!543 Int)) )
))
(declare-datatypes ((Rule!210 0))(
  ( (Rule!211 (regex!205 Regex!273) (tag!383 String!1367) (isSeparator!205 Bool) (transformation!205 TokenValueInjection!214)) )
))
(declare-datatypes ((Token!174 0))(
  ( (Token!175 (value!8740 TokenValue!195) (rule!680 Rule!210) (size!909 Int) (originalCharacters!258 List!967)) )
))
(declare-datatypes ((List!968 0))(
  ( (Nil!962) (Cons!962 (h!6359 Token!174) (t!17171 List!968)) )
))
(declare-datatypes ((IArray!431 0))(
  ( (IArray!432 (innerList!273 List!968)) )
))
(declare-datatypes ((Conc!215 0))(
  ( (Node!215 (left!730 Conc!215) (right!1060 Conc!215) (csize!660 Int) (cheight!426 Int)) (Leaf!453 (xs!2794 IArray!431) (csize!661 Int)) (Empty!215) )
))
(declare-datatypes ((BalanceConc!434 0))(
  ( (BalanceConc!435 (c!16605 Conc!215)) )
))
(declare-fun v!6227 () BalanceConc!434)

(declare-fun lt!8352 () Token!174)

(declare-fun contains!76 (BalanceConc!434 Token!174) Bool)

(assert (=> b!50345 (= res!33078 (not (contains!76 v!6227 lt!8352)))))

(declare-fun from!821 () Int)

(declare-fun apply!60 (BalanceConc!434 Int) Token!174)

(assert (=> b!50345 (= lt!8352 (apply!60 v!6227 from!821))))

(declare-fun lt!8349 () List!968)

(declare-fun lt!8355 () List!968)

(declare-fun tail!47 (List!968) List!968)

(declare-fun drop!22 (List!968 Int) List!968)

(assert (=> b!50345 (= (tail!47 lt!8349) (drop!22 lt!8355 (+ 2 from!821)))))

(declare-datatypes ((Unit!536 0))(
  ( (Unit!537) )
))
(declare-fun lt!8359 () Unit!536)

(declare-fun lemmaDropTail!18 (List!968 Int) Unit!536)

(assert (=> b!50345 (= lt!8359 (lemmaDropTail!18 lt!8355 (+ 1 from!821)))))

(declare-fun lt!8354 () List!968)

(assert (=> b!50345 (= (tail!47 lt!8354) lt!8349)))

(declare-fun lt!8360 () Unit!536)

(assert (=> b!50345 (= lt!8360 (lemmaDropTail!18 lt!8355 from!821))))

(declare-fun head!362 (List!968) Token!174)

(declare-fun apply!61 (List!968 Int) Token!174)

(assert (=> b!50345 (= (head!362 lt!8349) (apply!61 lt!8355 (+ 1 from!821)))))

(assert (=> b!50345 (= lt!8349 (drop!22 lt!8355 (+ 1 from!821)))))

(declare-fun lt!8357 () Unit!536)

(declare-fun lemmaDropApply!22 (List!968 Int) Unit!536)

(assert (=> b!50345 (= lt!8357 (lemmaDropApply!22 lt!8355 (+ 1 from!821)))))

(assert (=> b!50345 (= (head!362 lt!8354) (apply!61 lt!8355 from!821))))

(assert (=> b!50345 (= lt!8354 (drop!22 lt!8355 from!821))))

(declare-fun lt!8358 () Unit!536)

(assert (=> b!50345 (= lt!8358 (lemmaDropApply!22 lt!8355 from!821))))

(declare-fun list!246 (BalanceConc!434) List!968)

(assert (=> b!50345 (= lt!8355 (list!246 v!6227))))

(declare-fun b!50346 () Bool)

(declare-fun res!33074 () Bool)

(assert (=> b!50346 (=> (not res!33074) (not e!29493))))

(declare-datatypes ((LexerInterface!97 0))(
  ( (LexerInterfaceExt!94 (__x!1486 Int)) (Lexer!95) )
))
(declare-fun thiss!11059 () LexerInterface!97)

(declare-datatypes ((List!969 0))(
  ( (Nil!963) (Cons!963 (h!6360 Rule!210) (t!17172 List!969)) )
))
(declare-fun rules!1069 () List!969)

(declare-fun rulesProduceEachTokenIndividually!35 (LexerInterface!97 List!969 BalanceConc!434) Bool)

(assert (=> b!50346 (= res!33074 (rulesProduceEachTokenIndividually!35 thiss!11059 rules!1069 v!6227))))

(declare-fun tp!33376 () Bool)

(declare-fun e!29492 () Bool)

(declare-fun b!50347 () Bool)

(declare-fun e!29494 () Bool)

(declare-fun inv!1274 (String!1367) Bool)

(declare-fun inv!1278 (TokenValueInjection!214) Bool)

(assert (=> b!50347 (= e!29492 (and tp!33376 (inv!1274 (tag!383 (h!6360 rules!1069))) (inv!1278 (transformation!205 (h!6360 rules!1069))) e!29494))))

(assert (=> b!50348 (= e!29494 (and tp!33380 tp!33377))))

(declare-fun b!50349 () Bool)

(declare-fun e!29489 () Bool)

(assert (=> b!50349 (= e!29489 true)))

(declare-fun lt!8353 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!32 (LexerInterface!97 List!969 List!968) Bool)

(assert (=> b!50349 (= lt!8353 (rulesProduceEachTokenIndividuallyList!32 thiss!11059 rules!1069 lt!8355))))

(declare-fun rulesProduceIndividualToken!16 (LexerInterface!97 List!969 Token!174) Bool)

(assert (=> b!50349 (rulesProduceIndividualToken!16 thiss!11059 rules!1069 lt!8352)))

(declare-fun lt!8351 () Unit!536)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!4 (LexerInterface!97 List!969 List!968 Token!174) Unit!536)

(assert (=> b!50349 (= lt!8351 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!4 thiss!11059 rules!1069 lt!8355 lt!8352))))

(declare-fun res!33072 () Bool)

(declare-fun e!29491 () Bool)

(assert (=> start!3626 (=> (not res!33072) (not e!29491))))

(get-info :version)

(assert (=> start!3626 (= res!33072 (and ((_ is Lexer!95) thiss!11059) (>= from!821 0)))))

(assert (=> start!3626 e!29491))

(assert (=> start!3626 true))

(declare-fun e!29496 () Bool)

(declare-fun inv!1279 (BalanceConc!434) Bool)

(assert (=> start!3626 (and (inv!1279 v!6227) e!29496)))

(declare-fun e!29495 () Bool)

(assert (=> start!3626 e!29495))

(declare-fun b!50350 () Bool)

(assert (=> b!50350 (= e!29497 e!29489)))

(declare-fun res!33077 () Bool)

(assert (=> b!50350 (=> res!33077 e!29489)))

(declare-fun lt!8356 () Token!174)

(assert (=> b!50350 (= res!33077 (not (contains!76 v!6227 lt!8356)))))

(assert (=> b!50350 (= lt!8356 (apply!60 v!6227 (+ 1 from!821)))))

(declare-fun b!50351 () Bool)

(declare-fun tp!33378 () Bool)

(assert (=> b!50351 (= e!29495 (and e!29492 tp!33378))))

(declare-fun b!50352 () Bool)

(declare-fun res!33073 () Bool)

(assert (=> b!50352 (=> res!33073 e!29489)))

(declare-fun contains!77 (List!968 Token!174) Bool)

(assert (=> b!50352 (= res!33073 (not (contains!77 lt!8355 lt!8356)))))

(declare-fun b!50353 () Bool)

(declare-fun res!33079 () Bool)

(assert (=> b!50353 (=> res!33079 e!29497)))

(assert (=> b!50353 (= res!33079 (not (contains!77 lt!8355 lt!8352)))))

(declare-fun b!50354 () Bool)

(declare-fun tp!33379 () Bool)

(declare-fun inv!1280 (Conc!215) Bool)

(assert (=> b!50354 (= e!29496 (and (inv!1280 (c!16605 v!6227)) tp!33379))))

(declare-fun b!50355 () Bool)

(declare-fun res!33071 () Bool)

(assert (=> b!50355 (=> (not res!33071) (not e!29493))))

(declare-fun rulesInvariant!91 (LexerInterface!97 List!969) Bool)

(assert (=> b!50355 (= res!33071 (rulesInvariant!91 thiss!11059 rules!1069))))

(declare-fun b!50356 () Bool)

(declare-fun res!33080 () Bool)

(assert (=> b!50356 (=> (not res!33080) (not e!29493))))

(declare-fun isEmpty!191 (List!969) Bool)

(assert (=> b!50356 (= res!33080 (not (isEmpty!191 rules!1069)))))

(declare-fun b!50357 () Bool)

(declare-fun res!33075 () Bool)

(assert (=> b!50357 (=> (not res!33075) (not e!29493))))

(declare-fun lt!8350 () Int)

(assert (=> b!50357 (= res!33075 (< from!821 (- lt!8350 1)))))

(declare-fun b!50358 () Bool)

(assert (=> b!50358 (= e!29491 e!29493)))

(declare-fun res!33076 () Bool)

(assert (=> b!50358 (=> (not res!33076) (not e!29493))))

(assert (=> b!50358 (= res!33076 (<= from!821 lt!8350))))

(declare-fun size!910 (BalanceConc!434) Int)

(assert (=> b!50358 (= lt!8350 (size!910 v!6227))))

(assert (= (and start!3626 res!33072) b!50358))

(assert (= (and b!50358 res!33076) b!50356))

(assert (= (and b!50356 res!33080) b!50355))

(assert (= (and b!50355 res!33071) b!50346))

(assert (= (and b!50346 res!33074) b!50357))

(assert (= (and b!50357 res!33075) b!50345))

(assert (= (and b!50345 (not res!33078)) b!50353))

(assert (= (and b!50353 (not res!33079)) b!50350))

(assert (= (and b!50350 (not res!33077)) b!50352))

(assert (= (and b!50352 (not res!33073)) b!50349))

(assert (= start!3626 b!50354))

(assert (= b!50347 b!50348))

(assert (= b!50351 b!50347))

(assert (= (and start!3626 ((_ is Cons!963) rules!1069)) b!50351))

(declare-fun m!24388 () Bool)

(assert (=> b!50353 m!24388))

(declare-fun m!24390 () Bool)

(assert (=> b!50354 m!24390))

(declare-fun m!24392 () Bool)

(assert (=> b!50358 m!24392))

(declare-fun m!24394 () Bool)

(assert (=> b!50345 m!24394))

(declare-fun m!24396 () Bool)

(assert (=> b!50345 m!24396))

(declare-fun m!24398 () Bool)

(assert (=> b!50345 m!24398))

(declare-fun m!24400 () Bool)

(assert (=> b!50345 m!24400))

(declare-fun m!24402 () Bool)

(assert (=> b!50345 m!24402))

(declare-fun m!24404 () Bool)

(assert (=> b!50345 m!24404))

(declare-fun m!24406 () Bool)

(assert (=> b!50345 m!24406))

(declare-fun m!24408 () Bool)

(assert (=> b!50345 m!24408))

(declare-fun m!24410 () Bool)

(assert (=> b!50345 m!24410))

(declare-fun m!24412 () Bool)

(assert (=> b!50345 m!24412))

(declare-fun m!24414 () Bool)

(assert (=> b!50345 m!24414))

(declare-fun m!24416 () Bool)

(assert (=> b!50345 m!24416))

(declare-fun m!24418 () Bool)

(assert (=> b!50345 m!24418))

(declare-fun m!24420 () Bool)

(assert (=> b!50345 m!24420))

(declare-fun m!24422 () Bool)

(assert (=> b!50345 m!24422))

(declare-fun m!24424 () Bool)

(assert (=> b!50345 m!24424))

(declare-fun m!24426 () Bool)

(assert (=> b!50349 m!24426))

(declare-fun m!24428 () Bool)

(assert (=> b!50349 m!24428))

(declare-fun m!24430 () Bool)

(assert (=> b!50349 m!24430))

(declare-fun m!24432 () Bool)

(assert (=> b!50346 m!24432))

(declare-fun m!24434 () Bool)

(assert (=> b!50347 m!24434))

(declare-fun m!24436 () Bool)

(assert (=> b!50347 m!24436))

(declare-fun m!24438 () Bool)

(assert (=> start!3626 m!24438))

(declare-fun m!24440 () Bool)

(assert (=> b!50356 m!24440))

(declare-fun m!24442 () Bool)

(assert (=> b!50355 m!24442))

(declare-fun m!24444 () Bool)

(assert (=> b!50352 m!24444))

(declare-fun m!24446 () Bool)

(assert (=> b!50350 m!24446))

(declare-fun m!24448 () Bool)

(assert (=> b!50350 m!24448))

(check-sat (not b!50356) b_and!1575 (not b!50353) (not b!50352) (not b_next!1535) (not b!50347) (not b!50346) (not b!50355) (not b!50354) (not b!50349) (not b!50345) (not start!3626) (not b_next!1533) (not b!50351) (not b!50358) b_and!1577 (not b!50350))
(check-sat b_and!1577 b_and!1575 (not b_next!1533) (not b_next!1535))

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!109872 () Bool)

(assert start!109872)

(declare-fun b!1230741 () Bool)

(declare-fun b_free!29601 () Bool)

(declare-fun b_next!30305 () Bool)

(assert (=> b!1230741 (= b_free!29601 (not b_next!30305))))

(declare-fun tp!351297 () Bool)

(declare-fun b_and!84625 () Bool)

(assert (=> b!1230741 (= tp!351297 b_and!84625)))

(declare-fun b_free!29603 () Bool)

(declare-fun b_next!30307 () Bool)

(assert (=> b!1230741 (= b_free!29603 (not b_next!30307))))

(declare-fun tp!351289 () Bool)

(declare-fun b_and!84627 () Bool)

(assert (=> b!1230741 (= tp!351289 b_and!84627)))

(declare-fun b!1230736 () Bool)

(declare-fun b_free!29605 () Bool)

(declare-fun b_next!30309 () Bool)

(assert (=> b!1230736 (= b_free!29605 (not b_next!30309))))

(declare-fun tp!351294 () Bool)

(declare-fun b_and!84629 () Bool)

(assert (=> b!1230736 (= tp!351294 b_and!84629)))

(declare-fun b_free!29607 () Bool)

(declare-fun b_next!30311 () Bool)

(assert (=> b!1230736 (= b_free!29607 (not b_next!30311))))

(declare-fun tp!351288 () Bool)

(declare-fun b_and!84631 () Bool)

(assert (=> b!1230736 (= tp!351288 b_and!84631)))

(declare-fun e!788394 () Bool)

(declare-fun tp!351290 () Bool)

(declare-fun b!1230720 () Bool)

(declare-datatypes ((List!12563 0))(
  ( (Nil!12505) (Cons!12505 (h!17906 (_ BitVec 16)) (t!115403 List!12563)) )
))
(declare-datatypes ((TokenValue!2224 0))(
  ( (FloatLiteralValue!4448 (text!16013 List!12563)) (TokenValueExt!2223 (__x!8163 Int)) (Broken!11120 (value!70018 List!12563)) (Object!2281) (End!2224) (Def!2224) (Underscore!2224) (Match!2224) (Else!2224) (Error!2224) (Case!2224) (If!2224) (Extends!2224) (Abstract!2224) (Class!2224) (Val!2224) (DelimiterValue!4448 (del!2284 List!12563)) (KeywordValue!2230 (value!70019 List!12563)) (CommentValue!4448 (value!70020 List!12563)) (WhitespaceValue!4448 (value!70021 List!12563)) (IndentationValue!2224 (value!70022 List!12563)) (String!15253) (Int32!2224) (Broken!11121 (value!70023 List!12563)) (Boolean!2225) (Unit!18786) (OperatorValue!2227 (op!2284 List!12563)) (IdentifierValue!4448 (value!70024 List!12563)) (IdentifierValue!4449 (value!70025 List!12563)) (WhitespaceValue!4449 (value!70026 List!12563)) (True!4448) (False!4448) (Broken!11122 (value!70027 List!12563)) (Broken!11123 (value!70028 List!12563)) (True!4449) (RightBrace!2224) (RightBracket!2224) (Colon!2224) (Null!2224) (Comma!2224) (LeftBracket!2224) (False!4449) (LeftBrace!2224) (ImaginaryLiteralValue!2224 (text!16014 List!12563)) (StringLiteralValue!6672 (value!70029 List!12563)) (EOFValue!2224 (value!70030 List!12563)) (IdentValue!2224 (value!70031 List!12563)) (DelimiterValue!4449 (value!70032 List!12563)) (DedentValue!2224 (value!70033 List!12563)) (NewLineValue!2224 (value!70034 List!12563)) (IntegerValue!6672 (value!70035 (_ BitVec 32)) (text!16015 List!12563)) (IntegerValue!6673 (value!70036 Int) (text!16016 List!12563)) (Times!2224) (Or!2224) (Equal!2224) (Minus!2224) (Broken!11124 (value!70037 List!12563)) (And!2224) (Div!2224) (LessEqual!2224) (Mod!2224) (Concat!5650) (Not!2224) (Plus!2224) (SpaceValue!2224 (value!70038 List!12563)) (IntegerValue!6674 (value!70039 Int) (text!16017 List!12563)) (StringLiteralValue!6673 (text!16018 List!12563)) (FloatLiteralValue!4449 (text!16019 List!12563)) (BytesLiteralValue!2224 (value!70040 List!12563)) (CommentValue!4449 (value!70041 List!12563)) (StringLiteralValue!6674 (value!70042 List!12563)) (ErrorTokenValue!2224 (msg!2285 List!12563)) )
))
(declare-datatypes ((C!7170 0))(
  ( (C!7171 (val!4115 Int)) )
))
(declare-datatypes ((List!12564 0))(
  ( (Nil!12506) (Cons!12506 (h!17907 C!7170) (t!115404 List!12564)) )
))
(declare-datatypes ((IArray!8193 0))(
  ( (IArray!8194 (innerList!4154 List!12564)) )
))
(declare-datatypes ((Conc!4094 0))(
  ( (Node!4094 (left!10772 Conc!4094) (right!11102 Conc!4094) (csize!8418 Int) (cheight!4305 Int)) (Leaf!6321 (xs!6805 IArray!8193) (csize!8419 Int)) (Empty!4094) )
))
(declare-datatypes ((Regex!3426 0))(
  ( (ElementMatch!3426 (c!205877 C!7170)) (Concat!5651 (regOne!7364 Regex!3426) (regTwo!7364 Regex!3426)) (EmptyExpr!3426) (Star!3426 (reg!3755 Regex!3426)) (EmptyLang!3426) (Union!3426 (regOne!7365 Regex!3426) (regTwo!7365 Regex!3426)) )
))
(declare-datatypes ((String!15254 0))(
  ( (String!15255 (value!70043 String)) )
))
(declare-datatypes ((BalanceConc!8120 0))(
  ( (BalanceConc!8121 (c!205878 Conc!4094)) )
))
(declare-datatypes ((TokenValueInjection!4144 0))(
  ( (TokenValueInjection!4145 (toValue!3297 Int) (toChars!3156 Int)) )
))
(declare-datatypes ((Rule!4112 0))(
  ( (Rule!4113 (regex!2156 Regex!3426) (tag!2418 String!15254) (isSeparator!2156 Bool) (transformation!2156 TokenValueInjection!4144)) )
))
(declare-datatypes ((List!12565 0))(
  ( (Nil!12507) (Cons!12507 (h!17908 Rule!4112) (t!115405 List!12565)) )
))
(declare-fun rules!2728 () List!12565)

(declare-fun e!788380 () Bool)

(declare-fun inv!16721 (String!15254) Bool)

(declare-fun inv!16724 (TokenValueInjection!4144) Bool)

(assert (=> b!1230720 (= e!788394 (and tp!351290 (inv!16721 (tag!2418 (h!17908 rules!2728))) (inv!16724 (transformation!2156 (h!17908 rules!2728))) e!788380))))

(declare-datatypes ((LexerInterface!1851 0))(
  ( (LexerInterfaceExt!1848 (__x!8164 Int)) (Lexer!1849) )
))
(declare-fun thiss!20528 () LexerInterface!1851)

(declare-fun e!788377 () Bool)

(declare-datatypes ((Token!3974 0))(
  ( (Token!3975 (value!70044 TokenValue!2224) (rule!3585 Rule!4112) (size!9889 Int) (originalCharacters!2710 List!12564)) )
))
(declare-datatypes ((tuple2!12388 0))(
  ( (tuple2!12389 (_1!7041 Token!3974) (_2!7041 List!12564)) )
))
(declare-fun lt!419369 () tuple2!12388)

(declare-fun b!1230721 () Bool)

(declare-datatypes ((List!12566 0))(
  ( (Nil!12508) (Cons!12508 (h!17909 Token!3974) (t!115406 List!12566)) )
))
(declare-fun tokens!556 () List!12566)

(declare-datatypes ((tuple2!12390 0))(
  ( (tuple2!12391 (_1!7042 List!12566) (_2!7042 List!12564)) )
))
(declare-fun lexList!481 (LexerInterface!1851 List!12565 List!12564) tuple2!12390)

(assert (=> b!1230721 (= e!788377 (not (= (_1!7042 (lexList!481 thiss!20528 rules!2728 (_2!7041 lt!419369))) (t!115406 tokens!556))))))

(declare-fun b!1230722 () Bool)

(declare-fun res!551584 () Bool)

(declare-fun e!788376 () Bool)

(assert (=> b!1230722 (=> (not res!551584) (not e!788376))))

(declare-fun lt!419365 () List!12564)

(declare-fun matchR!1541 (Regex!3426 List!12564) Bool)

(assert (=> b!1230722 (= res!551584 (matchR!1541 (regex!2156 (rule!3585 (_1!7041 lt!419369))) lt!419365))))

(declare-fun b!1230723 () Bool)

(declare-fun res!551587 () Bool)

(declare-fun e!788386 () Bool)

(assert (=> b!1230723 (=> (not res!551587) (not e!788386))))

(declare-fun isEmpty!7465 (List!12565) Bool)

(assert (=> b!1230723 (= res!551587 (not (isEmpty!7465 rules!2728)))))

(declare-fun b!1230724 () Bool)

(declare-datatypes ((Unit!18787 0))(
  ( (Unit!18788) )
))
(declare-fun e!788390 () Unit!18787)

(declare-fun Unit!18789 () Unit!18787)

(assert (=> b!1230724 (= e!788390 Unit!18789)))

(declare-fun b!1230725 () Bool)

(assert (=> b!1230725 (= e!788376 e!788377)))

(declare-fun res!551593 () Bool)

(assert (=> b!1230725 (=> (not res!551593) (not e!788377))))

(declare-fun lt!419368 () Bool)

(assert (=> b!1230725 (= res!551593 (not lt!419368))))

(declare-fun lt!419363 () Unit!18787)

(assert (=> b!1230725 (= lt!419363 e!788390)))

(declare-fun c!205876 () Bool)

(assert (=> b!1230725 (= c!205876 lt!419368)))

(declare-fun rulesProduceIndividualToken!845 (LexerInterface!1851 List!12565 Token!3974) Bool)

(assert (=> b!1230725 (= lt!419368 (not (rulesProduceIndividualToken!845 thiss!20528 rules!2728 (h!17909 tokens!556))))))

(declare-fun tp!351291 () Bool)

(declare-fun e!788391 () Bool)

(declare-fun b!1230726 () Bool)

(declare-fun e!788384 () Bool)

(declare-fun inv!16725 (Token!3974) Bool)

(assert (=> b!1230726 (= e!788391 (and (inv!16725 (h!17909 tokens!556)) e!788384 tp!351291))))

(declare-fun e!788393 () Bool)

(declare-fun b!1230727 () Bool)

(declare-fun e!788383 () Bool)

(declare-fun tp!351295 () Bool)

(assert (=> b!1230727 (= e!788393 (and tp!351295 (inv!16721 (tag!2418 (rule!3585 (h!17909 tokens!556)))) (inv!16724 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) e!788383))))

(declare-fun b!1230728 () Bool)

(declare-fun Unit!18790 () Unit!18787)

(assert (=> b!1230728 (= e!788390 Unit!18790)))

(declare-fun lt!419366 () List!12566)

(assert (=> b!1230728 (= lt!419366 (Cons!12508 (h!17909 tokens!556) Nil!12508))))

(declare-fun lt!419371 () Unit!18787)

(declare-fun lt!419364 () List!12564)

(declare-fun lt!419362 () tuple2!12390)

(declare-fun lemmaLexThenLexPrefix!165 (LexerInterface!1851 List!12565 List!12564 List!12564 List!12566 List!12566 List!12564) Unit!18787)

(assert (=> b!1230728 (= lt!419371 (lemmaLexThenLexPrefix!165 thiss!20528 rules!2728 lt!419364 (_2!7041 lt!419369) lt!419366 (_1!7042 (lexList!481 thiss!20528 rules!2728 (_2!7041 lt!419369))) (_2!7042 lt!419362)))))

(declare-fun res!551586 () Bool)

(assert (=> b!1230728 (= res!551586 (= (lexList!481 thiss!20528 rules!2728 lt!419364) (tuple2!12391 lt!419366 Nil!12506)))))

(declare-fun e!788378 () Bool)

(assert (=> b!1230728 (=> (not res!551586) (not e!788378))))

(assert (=> b!1230728 e!788378))

(declare-fun b!1230729 () Bool)

(declare-fun res!551588 () Bool)

(assert (=> b!1230729 (=> (not res!551588) (not e!788376))))

(declare-fun input!2346 () List!12564)

(declare-fun ++!3200 (List!12564 List!12564) List!12564)

(assert (=> b!1230729 (= res!551588 (= (++!3200 lt!419364 (_2!7041 lt!419369)) input!2346))))

(declare-fun b!1230730 () Bool)

(declare-fun e!788388 () Bool)

(assert (=> b!1230730 (= e!788386 e!788388)))

(declare-fun res!551591 () Bool)

(assert (=> b!1230730 (=> (not res!551591) (not e!788388))))

(assert (=> b!1230730 (= res!551591 (and (= (_1!7042 lt!419362) tokens!556) (not (is-Nil!12508 tokens!556))))))

(assert (=> b!1230730 (= lt!419362 (lexList!481 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1230731 () Bool)

(declare-fun e!788379 () Bool)

(assert (=> b!1230731 (= e!788388 e!788379)))

(declare-fun res!551592 () Bool)

(assert (=> b!1230731 (=> (not res!551592) (not e!788379))))

(declare-datatypes ((Option!2520 0))(
  ( (None!2519) (Some!2519 (v!20676 tuple2!12388)) )
))
(declare-fun lt!419372 () Option!2520)

(declare-fun isDefined!2156 (Option!2520) Bool)

(assert (=> b!1230731 (= res!551592 (isDefined!2156 lt!419372))))

(declare-fun maxPrefix!973 (LexerInterface!1851 List!12565 List!12564) Option!2520)

(assert (=> b!1230731 (= lt!419372 (maxPrefix!973 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1230732 () Bool)

(declare-fun e!788392 () Bool)

(declare-fun tp!351292 () Bool)

(assert (=> b!1230732 (= e!788392 (and e!788394 tp!351292))))

(declare-fun b!1230733 () Bool)

(declare-fun e!788382 () Bool)

(declare-fun e!788385 () Bool)

(assert (=> b!1230733 (= e!788382 e!788385)))

(declare-fun res!551583 () Bool)

(assert (=> b!1230733 (=> (not res!551583) (not e!788385))))

(declare-fun lt!419367 () BalanceConc!8120)

(declare-fun lt!419370 () BalanceConc!8120)

(assert (=> b!1230733 (= res!551583 (= lt!419367 lt!419370))))

(declare-fun charsOf!1160 (Token!3974) BalanceConc!8120)

(assert (=> b!1230733 (= lt!419370 (charsOf!1160 (h!17909 tokens!556)))))

(assert (=> b!1230733 (= lt!419367 (charsOf!1160 (_1!7041 lt!419369)))))

(declare-fun res!551585 () Bool)

(assert (=> start!109872 (=> (not res!551585) (not e!788386))))

(assert (=> start!109872 (= res!551585 (is-Lexer!1849 thiss!20528))))

(assert (=> start!109872 e!788386))

(assert (=> start!109872 true))

(assert (=> start!109872 e!788392))

(assert (=> start!109872 e!788391))

(declare-fun e!788387 () Bool)

(assert (=> start!109872 e!788387))

(declare-fun b!1230734 () Bool)

(declare-fun tp!351296 () Bool)

(declare-fun inv!21 (TokenValue!2224) Bool)

(assert (=> b!1230734 (= e!788384 (and (inv!21 (value!70044 (h!17909 tokens!556))) e!788393 tp!351296))))

(declare-fun b!1230735 () Bool)

(assert (=> b!1230735 (= e!788385 e!788376)))

(declare-fun res!551594 () Bool)

(assert (=> b!1230735 (=> (not res!551594) (not e!788376))))

(assert (=> b!1230735 (= res!551594 (= lt!419365 lt!419364))))

(declare-fun list!4633 (BalanceConc!8120) List!12564)

(assert (=> b!1230735 (= lt!419364 (list!4633 lt!419370))))

(assert (=> b!1230735 (= lt!419365 (list!4633 lt!419367))))

(assert (=> b!1230736 (= e!788380 (and tp!351294 tp!351288))))

(declare-fun b!1230737 () Bool)

(assert (=> b!1230737 (= e!788379 e!788382)))

(declare-fun res!551589 () Bool)

(assert (=> b!1230737 (=> (not res!551589) (not e!788382))))

(assert (=> b!1230737 (= res!551589 (= (_1!7041 lt!419369) (h!17909 tokens!556)))))

(declare-fun get!4114 (Option!2520) tuple2!12388)

(assert (=> b!1230737 (= lt!419369 (get!4114 lt!419372))))

(declare-fun b!1230738 () Bool)

(assert (=> b!1230738 (= e!788378 false)))

(declare-fun b!1230739 () Bool)

(declare-fun tp_is_empty!6373 () Bool)

(declare-fun tp!351293 () Bool)

(assert (=> b!1230739 (= e!788387 (and tp_is_empty!6373 tp!351293))))

(declare-fun b!1230740 () Bool)

(declare-fun res!551590 () Bool)

(assert (=> b!1230740 (=> (not res!551590) (not e!788386))))

(declare-fun rulesInvariant!1725 (LexerInterface!1851 List!12565) Bool)

(assert (=> b!1230740 (= res!551590 (rulesInvariant!1725 thiss!20528 rules!2728))))

(assert (=> b!1230741 (= e!788383 (and tp!351297 tp!351289))))

(assert (= (and start!109872 res!551585) b!1230723))

(assert (= (and b!1230723 res!551587) b!1230740))

(assert (= (and b!1230740 res!551590) b!1230730))

(assert (= (and b!1230730 res!551591) b!1230731))

(assert (= (and b!1230731 res!551592) b!1230737))

(assert (= (and b!1230737 res!551589) b!1230733))

(assert (= (and b!1230733 res!551583) b!1230735))

(assert (= (and b!1230735 res!551594) b!1230729))

(assert (= (and b!1230729 res!551588) b!1230722))

(assert (= (and b!1230722 res!551584) b!1230725))

(assert (= (and b!1230725 c!205876) b!1230728))

(assert (= (and b!1230725 (not c!205876)) b!1230724))

(assert (= (and b!1230728 res!551586) b!1230738))

(assert (= (and b!1230725 res!551593) b!1230721))

(assert (= b!1230720 b!1230736))

(assert (= b!1230732 b!1230720))

(assert (= (and start!109872 (is-Cons!12507 rules!2728)) b!1230732))

(assert (= b!1230727 b!1230741))

(assert (= b!1230734 b!1230727))

(assert (= b!1230726 b!1230734))

(assert (= (and start!109872 (is-Cons!12508 tokens!556)) b!1230726))

(assert (= (and start!109872 (is-Cons!12506 input!2346)) b!1230739))

(declare-fun m!1406547 () Bool)

(assert (=> b!1230733 m!1406547))

(declare-fun m!1406549 () Bool)

(assert (=> b!1230733 m!1406549))

(declare-fun m!1406551 () Bool)

(assert (=> b!1230727 m!1406551))

(declare-fun m!1406553 () Bool)

(assert (=> b!1230727 m!1406553))

(declare-fun m!1406555 () Bool)

(assert (=> b!1230723 m!1406555))

(declare-fun m!1406557 () Bool)

(assert (=> b!1230725 m!1406557))

(declare-fun m!1406559 () Bool)

(assert (=> b!1230735 m!1406559))

(declare-fun m!1406561 () Bool)

(assert (=> b!1230735 m!1406561))

(declare-fun m!1406563 () Bool)

(assert (=> b!1230734 m!1406563))

(declare-fun m!1406565 () Bool)

(assert (=> b!1230720 m!1406565))

(declare-fun m!1406567 () Bool)

(assert (=> b!1230720 m!1406567))

(declare-fun m!1406569 () Bool)

(assert (=> b!1230740 m!1406569))

(declare-fun m!1406571 () Bool)

(assert (=> b!1230729 m!1406571))

(declare-fun m!1406573 () Bool)

(assert (=> b!1230722 m!1406573))

(declare-fun m!1406575 () Bool)

(assert (=> b!1230730 m!1406575))

(declare-fun m!1406577 () Bool)

(assert (=> b!1230728 m!1406577))

(declare-fun m!1406579 () Bool)

(assert (=> b!1230728 m!1406579))

(declare-fun m!1406581 () Bool)

(assert (=> b!1230728 m!1406581))

(declare-fun m!1406583 () Bool)

(assert (=> b!1230726 m!1406583))

(declare-fun m!1406585 () Bool)

(assert (=> b!1230737 m!1406585))

(assert (=> b!1230721 m!1406577))

(declare-fun m!1406587 () Bool)

(assert (=> b!1230731 m!1406587))

(declare-fun m!1406589 () Bool)

(assert (=> b!1230731 m!1406589))

(push 1)

(assert (not b!1230722))

(assert (not b!1230735))

(assert (not b!1230729))

(assert (not b_next!30305))

(assert b_and!84625)

(assert b_and!84627)

(assert (not b!1230740))

(assert (not b!1230730))

(assert (not b!1230721))

(assert tp_is_empty!6373)

(assert (not b!1230731))

(assert b_and!84629)

(assert (not b!1230737))

(assert (not b!1230728))

(assert (not b_next!30311))

(assert (not b_next!30309))

(assert (not b!1230733))

(assert b_and!84631)

(assert (not b!1230739))

(assert (not b_next!30307))

(assert (not b!1230723))

(assert (not b!1230720))

(assert (not b!1230732))

(assert (not b!1230726))

(assert (not b!1230734))

(assert (not b!1230725))

(assert (not b!1230727))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30309))

(assert (not b_next!30305))

(assert b_and!84625)

(assert b_and!84627)

(assert b_and!84629)

(assert (not b_next!30311))

(assert b_and!84631)

(assert (not b_next!30307))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!352441 () Bool)

(declare-fun list!4635 (Conc!4094) List!12564)

(assert (=> d!352441 (= (list!4633 lt!419370) (list!4635 (c!205878 lt!419370)))))

(declare-fun bs!289539 () Bool)

(assert (= bs!289539 d!352441))

(declare-fun m!1406635 () Bool)

(assert (=> bs!289539 m!1406635))

(assert (=> b!1230735 d!352441))

(declare-fun d!352443 () Bool)

(assert (=> d!352443 (= (list!4633 lt!419367) (list!4635 (c!205878 lt!419367)))))

(declare-fun bs!289540 () Bool)

(assert (= bs!289540 d!352443))

(declare-fun m!1406637 () Bool)

(assert (=> bs!289540 m!1406637))

(assert (=> b!1230735 d!352443))

(declare-fun d!352445 () Bool)

(declare-fun lt!419408 () BalanceConc!8120)

(assert (=> d!352445 (= (list!4633 lt!419408) (originalCharacters!2710 (h!17909 tokens!556)))))

(declare-fun dynLambda!5469 (Int TokenValue!2224) BalanceConc!8120)

(assert (=> d!352445 (= lt!419408 (dynLambda!5469 (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (value!70044 (h!17909 tokens!556))))))

(assert (=> d!352445 (= (charsOf!1160 (h!17909 tokens!556)) lt!419408)))

(declare-fun b_lambda!36399 () Bool)

(assert (=> (not b_lambda!36399) (not d!352445)))

(declare-fun t!115412 () Bool)

(declare-fun tb!68873 () Bool)

(assert (=> (and b!1230741 (= (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556))))) t!115412) tb!68873))

(declare-fun b!1230812 () Bool)

(declare-fun e!788457 () Bool)

(declare-fun tp!351330 () Bool)

(declare-fun inv!16728 (Conc!4094) Bool)

(assert (=> b!1230812 (= e!788457 (and (inv!16728 (c!205878 (dynLambda!5469 (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (value!70044 (h!17909 tokens!556))))) tp!351330))))

(declare-fun result!83092 () Bool)

(declare-fun inv!16729 (BalanceConc!8120) Bool)

(assert (=> tb!68873 (= result!83092 (and (inv!16729 (dynLambda!5469 (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (value!70044 (h!17909 tokens!556)))) e!788457))))

(assert (= tb!68873 b!1230812))

(declare-fun m!1406639 () Bool)

(assert (=> b!1230812 m!1406639))

(declare-fun m!1406641 () Bool)

(assert (=> tb!68873 m!1406641))

(assert (=> d!352445 t!115412))

(declare-fun b_and!84641 () Bool)

(assert (= b_and!84627 (and (=> t!115412 result!83092) b_and!84641)))

(declare-fun tb!68875 () Bool)

(declare-fun t!115414 () Bool)

(assert (=> (and b!1230736 (= (toChars!3156 (transformation!2156 (h!17908 rules!2728))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556))))) t!115414) tb!68875))

(declare-fun result!83096 () Bool)

(assert (= result!83096 result!83092))

(assert (=> d!352445 t!115414))

(declare-fun b_and!84643 () Bool)

(assert (= b_and!84631 (and (=> t!115414 result!83096) b_and!84643)))

(declare-fun m!1406643 () Bool)

(assert (=> d!352445 m!1406643))

(declare-fun m!1406645 () Bool)

(assert (=> d!352445 m!1406645))

(assert (=> b!1230733 d!352445))

(declare-fun d!352447 () Bool)

(declare-fun lt!419409 () BalanceConc!8120)

(assert (=> d!352447 (= (list!4633 lt!419409) (originalCharacters!2710 (_1!7041 lt!419369)))))

(assert (=> d!352447 (= lt!419409 (dynLambda!5469 (toChars!3156 (transformation!2156 (rule!3585 (_1!7041 lt!419369)))) (value!70044 (_1!7041 lt!419369))))))

(assert (=> d!352447 (= (charsOf!1160 (_1!7041 lt!419369)) lt!419409)))

(declare-fun b_lambda!36401 () Bool)

(assert (=> (not b_lambda!36401) (not d!352447)))

(declare-fun tb!68877 () Bool)

(declare-fun t!115416 () Bool)

(assert (=> (and b!1230741 (= (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (toChars!3156 (transformation!2156 (rule!3585 (_1!7041 lt!419369))))) t!115416) tb!68877))

(declare-fun b!1230813 () Bool)

(declare-fun e!788458 () Bool)

(declare-fun tp!351331 () Bool)

(assert (=> b!1230813 (= e!788458 (and (inv!16728 (c!205878 (dynLambda!5469 (toChars!3156 (transformation!2156 (rule!3585 (_1!7041 lt!419369)))) (value!70044 (_1!7041 lt!419369))))) tp!351331))))

(declare-fun result!83098 () Bool)

(assert (=> tb!68877 (= result!83098 (and (inv!16729 (dynLambda!5469 (toChars!3156 (transformation!2156 (rule!3585 (_1!7041 lt!419369)))) (value!70044 (_1!7041 lt!419369)))) e!788458))))

(assert (= tb!68877 b!1230813))

(declare-fun m!1406647 () Bool)

(assert (=> b!1230813 m!1406647))

(declare-fun m!1406649 () Bool)

(assert (=> tb!68877 m!1406649))

(assert (=> d!352447 t!115416))

(declare-fun b_and!84645 () Bool)

(assert (= b_and!84641 (and (=> t!115416 result!83098) b_and!84645)))

(declare-fun tb!68879 () Bool)

(declare-fun t!115418 () Bool)

(assert (=> (and b!1230736 (= (toChars!3156 (transformation!2156 (h!17908 rules!2728))) (toChars!3156 (transformation!2156 (rule!3585 (_1!7041 lt!419369))))) t!115418) tb!68879))

(declare-fun result!83100 () Bool)

(assert (= result!83100 result!83098))

(assert (=> d!352447 t!115418))

(declare-fun b_and!84647 () Bool)

(assert (= b_and!84643 (and (=> t!115418 result!83100) b_and!84647)))

(declare-fun m!1406651 () Bool)

(assert (=> d!352447 m!1406651))

(declare-fun m!1406653 () Bool)

(assert (=> d!352447 m!1406653))

(assert (=> b!1230733 d!352447))

(declare-fun b!1230824 () Bool)

(declare-fun e!788467 () Bool)

(declare-fun inv!15 (TokenValue!2224) Bool)

(assert (=> b!1230824 (= e!788467 (inv!15 (value!70044 (h!17909 tokens!556))))))

(declare-fun b!1230826 () Bool)

(declare-fun e!788466 () Bool)

(declare-fun e!788465 () Bool)

(assert (=> b!1230826 (= e!788466 e!788465)))

(declare-fun c!205889 () Bool)

(assert (=> b!1230826 (= c!205889 (is-IntegerValue!6673 (value!70044 (h!17909 tokens!556))))))

(declare-fun b!1230827 () Bool)

(declare-fun inv!16 (TokenValue!2224) Bool)

(assert (=> b!1230827 (= e!788466 (inv!16 (value!70044 (h!17909 tokens!556))))))

(declare-fun b!1230828 () Bool)

(declare-fun res!551638 () Bool)

(assert (=> b!1230828 (=> res!551638 e!788467)))

(assert (=> b!1230828 (= res!551638 (not (is-IntegerValue!6674 (value!70044 (h!17909 tokens!556)))))))

(assert (=> b!1230828 (= e!788465 e!788467)))

(declare-fun b!1230825 () Bool)

(declare-fun inv!17 (TokenValue!2224) Bool)

(assert (=> b!1230825 (= e!788465 (inv!17 (value!70044 (h!17909 tokens!556))))))

(declare-fun d!352449 () Bool)

(declare-fun c!205890 () Bool)

(assert (=> d!352449 (= c!205890 (is-IntegerValue!6672 (value!70044 (h!17909 tokens!556))))))

(assert (=> d!352449 (= (inv!21 (value!70044 (h!17909 tokens!556))) e!788466)))

(assert (= (and d!352449 c!205890) b!1230827))

(assert (= (and d!352449 (not c!205890)) b!1230826))

(assert (= (and b!1230826 c!205889) b!1230825))

(assert (= (and b!1230826 (not c!205889)) b!1230828))

(assert (= (and b!1230828 (not res!551638)) b!1230824))

(declare-fun m!1406655 () Bool)

(assert (=> b!1230824 m!1406655))

(declare-fun m!1406657 () Bool)

(assert (=> b!1230827 m!1406657))

(declare-fun m!1406659 () Bool)

(assert (=> b!1230825 m!1406659))

(assert (=> b!1230734 d!352449))

(declare-fun d!352451 () Bool)

(assert (=> d!352451 (= (isEmpty!7465 rules!2728) (is-Nil!12507 rules!2728))))

(assert (=> b!1230723 d!352451))

(declare-fun b!1230839 () Bool)

(declare-fun e!788476 () tuple2!12390)

(assert (=> b!1230839 (= e!788476 (tuple2!12391 Nil!12508 (_2!7041 lt!419369)))))

(declare-fun b!1230840 () Bool)

(declare-fun lt!419416 () Option!2520)

(declare-fun lt!419417 () tuple2!12390)

(assert (=> b!1230840 (= e!788476 (tuple2!12391 (Cons!12508 (_1!7041 (v!20676 lt!419416)) (_1!7042 lt!419417)) (_2!7042 lt!419417)))))

(assert (=> b!1230840 (= lt!419417 (lexList!481 thiss!20528 rules!2728 (_2!7041 (v!20676 lt!419416))))))

(declare-fun d!352453 () Bool)

(declare-fun e!788475 () Bool)

(assert (=> d!352453 e!788475))

(declare-fun c!205896 () Bool)

(declare-fun lt!419418 () tuple2!12390)

(declare-fun size!9891 (List!12566) Int)

(assert (=> d!352453 (= c!205896 (> (size!9891 (_1!7042 lt!419418)) 0))))

(assert (=> d!352453 (= lt!419418 e!788476)))

(declare-fun c!205895 () Bool)

(assert (=> d!352453 (= c!205895 (is-Some!2519 lt!419416))))

(assert (=> d!352453 (= lt!419416 (maxPrefix!973 thiss!20528 rules!2728 (_2!7041 lt!419369)))))

(assert (=> d!352453 (= (lexList!481 thiss!20528 rules!2728 (_2!7041 lt!419369)) lt!419418)))

(declare-fun b!1230841 () Bool)

(declare-fun e!788474 () Bool)

(declare-fun isEmpty!7467 (List!12566) Bool)

(assert (=> b!1230841 (= e!788474 (not (isEmpty!7467 (_1!7042 lt!419418))))))

(declare-fun b!1230842 () Bool)

(assert (=> b!1230842 (= e!788475 e!788474)))

(declare-fun res!551641 () Bool)

(declare-fun size!9892 (List!12564) Int)

(assert (=> b!1230842 (= res!551641 (< (size!9892 (_2!7042 lt!419418)) (size!9892 (_2!7041 lt!419369))))))

(assert (=> b!1230842 (=> (not res!551641) (not e!788474))))

(declare-fun b!1230843 () Bool)

(assert (=> b!1230843 (= e!788475 (= (_2!7042 lt!419418) (_2!7041 lt!419369)))))

(assert (= (and d!352453 c!205895) b!1230840))

(assert (= (and d!352453 (not c!205895)) b!1230839))

(assert (= (and d!352453 c!205896) b!1230842))

(assert (= (and d!352453 (not c!205896)) b!1230843))

(assert (= (and b!1230842 res!551641) b!1230841))

(declare-fun m!1406661 () Bool)

(assert (=> b!1230840 m!1406661))

(declare-fun m!1406663 () Bool)

(assert (=> d!352453 m!1406663))

(declare-fun m!1406665 () Bool)

(assert (=> d!352453 m!1406665))

(declare-fun m!1406667 () Bool)

(assert (=> b!1230841 m!1406667))

(declare-fun m!1406669 () Bool)

(assert (=> b!1230842 m!1406669))

(declare-fun m!1406671 () Bool)

(assert (=> b!1230842 m!1406671))

(assert (=> b!1230721 d!352453))

(declare-fun b!1230872 () Bool)

(declare-fun e!788496 () Bool)

(declare-fun lt!419421 () Bool)

(declare-fun call!85346 () Bool)

(assert (=> b!1230872 (= e!788496 (= lt!419421 call!85346))))

(declare-fun b!1230873 () Bool)

(declare-fun e!788492 () Bool)

(assert (=> b!1230873 (= e!788496 e!788492)))

(declare-fun c!205904 () Bool)

(assert (=> b!1230873 (= c!205904 (is-EmptyLang!3426 (regex!2156 (rule!3585 (_1!7041 lt!419369)))))))

(declare-fun b!1230874 () Bool)

(declare-fun e!788494 () Bool)

(declare-fun nullable!1065 (Regex!3426) Bool)

(assert (=> b!1230874 (= e!788494 (nullable!1065 (regex!2156 (rule!3585 (_1!7041 lt!419369)))))))

(declare-fun d!352457 () Bool)

(assert (=> d!352457 e!788496))

(declare-fun c!205903 () Bool)

(assert (=> d!352457 (= c!205903 (is-EmptyExpr!3426 (regex!2156 (rule!3585 (_1!7041 lt!419369)))))))

(assert (=> d!352457 (= lt!419421 e!788494)))

(declare-fun c!205905 () Bool)

(declare-fun isEmpty!7468 (List!12564) Bool)

(assert (=> d!352457 (= c!205905 (isEmpty!7468 lt!419365))))

(declare-fun validRegex!1462 (Regex!3426) Bool)

(assert (=> d!352457 (validRegex!1462 (regex!2156 (rule!3585 (_1!7041 lt!419369))))))

(assert (=> d!352457 (= (matchR!1541 (regex!2156 (rule!3585 (_1!7041 lt!419369))) lt!419365) lt!419421)))

(declare-fun b!1230875 () Bool)

(declare-fun res!551661 () Bool)

(declare-fun e!788495 () Bool)

(assert (=> b!1230875 (=> res!551661 e!788495)))

(assert (=> b!1230875 (= res!551661 (not (is-ElementMatch!3426 (regex!2156 (rule!3585 (_1!7041 lt!419369))))))))

(assert (=> b!1230875 (= e!788492 e!788495)))

(declare-fun b!1230876 () Bool)

(declare-fun res!551659 () Bool)

(declare-fun e!788497 () Bool)

(assert (=> b!1230876 (=> (not res!551659) (not e!788497))))

(declare-fun tail!1796 (List!12564) List!12564)

(assert (=> b!1230876 (= res!551659 (isEmpty!7468 (tail!1796 lt!419365)))))

(declare-fun b!1230877 () Bool)

(declare-fun head!2164 (List!12564) C!7170)

(assert (=> b!1230877 (= e!788497 (= (head!2164 lt!419365) (c!205877 (regex!2156 (rule!3585 (_1!7041 lt!419369))))))))

(declare-fun b!1230878 () Bool)

(declare-fun derivativeStep!858 (Regex!3426 C!7170) Regex!3426)

(assert (=> b!1230878 (= e!788494 (matchR!1541 (derivativeStep!858 (regex!2156 (rule!3585 (_1!7041 lt!419369))) (head!2164 lt!419365)) (tail!1796 lt!419365)))))

(declare-fun b!1230879 () Bool)

(declare-fun res!551665 () Bool)

(assert (=> b!1230879 (=> (not res!551665) (not e!788497))))

(assert (=> b!1230879 (= res!551665 (not call!85346))))

(declare-fun b!1230880 () Bool)

(declare-fun e!788491 () Bool)

(assert (=> b!1230880 (= e!788491 (not (= (head!2164 lt!419365) (c!205877 (regex!2156 (rule!3585 (_1!7041 lt!419369)))))))))

(declare-fun b!1230881 () Bool)

(declare-fun res!551662 () Bool)

(assert (=> b!1230881 (=> res!551662 e!788495)))

(assert (=> b!1230881 (= res!551662 e!788497)))

(declare-fun res!551664 () Bool)

(assert (=> b!1230881 (=> (not res!551664) (not e!788497))))

(assert (=> b!1230881 (= res!551664 lt!419421)))

(declare-fun b!1230882 () Bool)

(declare-fun e!788493 () Bool)

(assert (=> b!1230882 (= e!788493 e!788491)))

(declare-fun res!551663 () Bool)

(assert (=> b!1230882 (=> res!551663 e!788491)))

(assert (=> b!1230882 (= res!551663 call!85346)))

(declare-fun b!1230883 () Bool)

(assert (=> b!1230883 (= e!788492 (not lt!419421))))

(declare-fun b!1230884 () Bool)

(assert (=> b!1230884 (= e!788495 e!788493)))

(declare-fun res!551660 () Bool)

(assert (=> b!1230884 (=> (not res!551660) (not e!788493))))

(assert (=> b!1230884 (= res!551660 (not lt!419421))))

(declare-fun bm!85341 () Bool)

(assert (=> bm!85341 (= call!85346 (isEmpty!7468 lt!419365))))

(declare-fun b!1230885 () Bool)

(declare-fun res!551658 () Bool)

(assert (=> b!1230885 (=> res!551658 e!788491)))

(assert (=> b!1230885 (= res!551658 (not (isEmpty!7468 (tail!1796 lt!419365))))))

(assert (= (and d!352457 c!205905) b!1230874))

(assert (= (and d!352457 (not c!205905)) b!1230878))

(assert (= (and d!352457 c!205903) b!1230872))

(assert (= (and d!352457 (not c!205903)) b!1230873))

(assert (= (and b!1230873 c!205904) b!1230883))

(assert (= (and b!1230873 (not c!205904)) b!1230875))

(assert (= (and b!1230875 (not res!551661)) b!1230881))

(assert (= (and b!1230881 res!551664) b!1230879))

(assert (= (and b!1230879 res!551665) b!1230876))

(assert (= (and b!1230876 res!551659) b!1230877))

(assert (= (and b!1230881 (not res!551662)) b!1230884))

(assert (= (and b!1230884 res!551660) b!1230882))

(assert (= (and b!1230882 (not res!551663)) b!1230885))

(assert (= (and b!1230885 (not res!551658)) b!1230880))

(assert (= (or b!1230872 b!1230879 b!1230882) bm!85341))

(declare-fun m!1406673 () Bool)

(assert (=> b!1230878 m!1406673))

(assert (=> b!1230878 m!1406673))

(declare-fun m!1406675 () Bool)

(assert (=> b!1230878 m!1406675))

(declare-fun m!1406677 () Bool)

(assert (=> b!1230878 m!1406677))

(assert (=> b!1230878 m!1406675))

(assert (=> b!1230878 m!1406677))

(declare-fun m!1406679 () Bool)

(assert (=> b!1230878 m!1406679))

(declare-fun m!1406681 () Bool)

(assert (=> d!352457 m!1406681))

(declare-fun m!1406683 () Bool)

(assert (=> d!352457 m!1406683))

(assert (=> b!1230885 m!1406677))

(assert (=> b!1230885 m!1406677))

(declare-fun m!1406685 () Bool)

(assert (=> b!1230885 m!1406685))

(assert (=> b!1230880 m!1406673))

(assert (=> b!1230877 m!1406673))

(declare-fun m!1406687 () Bool)

(assert (=> b!1230874 m!1406687))

(assert (=> bm!85341 m!1406681))

(assert (=> b!1230876 m!1406677))

(assert (=> b!1230876 m!1406677))

(assert (=> b!1230876 m!1406685))

(assert (=> b!1230722 d!352457))

(declare-fun d!352459 () Bool)

(assert (=> d!352459 (= (inv!16721 (tag!2418 (h!17908 rules!2728))) (= (mod (str.len (value!70043 (tag!2418 (h!17908 rules!2728)))) 2) 0))))

(assert (=> b!1230720 d!352459))

(declare-fun d!352461 () Bool)

(declare-fun res!551668 () Bool)

(declare-fun e!788500 () Bool)

(assert (=> d!352461 (=> (not res!551668) (not e!788500))))

(declare-fun semiInverseModEq!793 (Int Int) Bool)

(assert (=> d!352461 (= res!551668 (semiInverseModEq!793 (toChars!3156 (transformation!2156 (h!17908 rules!2728))) (toValue!3297 (transformation!2156 (h!17908 rules!2728)))))))

(assert (=> d!352461 (= (inv!16724 (transformation!2156 (h!17908 rules!2728))) e!788500)))

(declare-fun b!1230888 () Bool)

(declare-fun equivClasses!760 (Int Int) Bool)

(assert (=> b!1230888 (= e!788500 (equivClasses!760 (toChars!3156 (transformation!2156 (h!17908 rules!2728))) (toValue!3297 (transformation!2156 (h!17908 rules!2728)))))))

(assert (= (and d!352461 res!551668) b!1230888))

(declare-fun m!1406689 () Bool)

(assert (=> d!352461 m!1406689))

(declare-fun m!1406691 () Bool)

(assert (=> b!1230888 m!1406691))

(assert (=> b!1230720 d!352461))

(declare-fun d!352463 () Bool)

(declare-fun isEmpty!7469 (Option!2520) Bool)

(assert (=> d!352463 (= (isDefined!2156 lt!419372) (not (isEmpty!7469 lt!419372)))))

(declare-fun bs!289541 () Bool)

(assert (= bs!289541 d!352463))

(declare-fun m!1406693 () Bool)

(assert (=> bs!289541 m!1406693))

(assert (=> b!1230731 d!352463))

(declare-fun b!1230907 () Bool)

(declare-fun res!551687 () Bool)

(declare-fun e!788509 () Bool)

(assert (=> b!1230907 (=> (not res!551687) (not e!788509))))

(declare-fun lt!419435 () Option!2520)

(assert (=> b!1230907 (= res!551687 (< (size!9892 (_2!7041 (get!4114 lt!419435))) (size!9892 input!2346)))))

(declare-fun d!352465 () Bool)

(declare-fun e!788507 () Bool)

(assert (=> d!352465 e!788507))

(declare-fun res!551686 () Bool)

(assert (=> d!352465 (=> res!551686 e!788507)))

(assert (=> d!352465 (= res!551686 (isEmpty!7469 lt!419435))))

(declare-fun e!788508 () Option!2520)

(assert (=> d!352465 (= lt!419435 e!788508)))

(declare-fun c!205908 () Bool)

(assert (=> d!352465 (= c!205908 (and (is-Cons!12507 rules!2728) (is-Nil!12507 (t!115405 rules!2728))))))

(declare-fun lt!419438 () Unit!18787)

(declare-fun lt!419437 () Unit!18787)

(assert (=> d!352465 (= lt!419438 lt!419437)))

(declare-fun isPrefix!1043 (List!12564 List!12564) Bool)

(assert (=> d!352465 (isPrefix!1043 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!736 (List!12564 List!12564) Unit!18787)

(assert (=> d!352465 (= lt!419437 (lemmaIsPrefixRefl!736 input!2346 input!2346))))

(declare-fun rulesValidInductive!679 (LexerInterface!1851 List!12565) Bool)

(assert (=> d!352465 (rulesValidInductive!679 thiss!20528 rules!2728)))

(assert (=> d!352465 (= (maxPrefix!973 thiss!20528 rules!2728 input!2346) lt!419435)))

(declare-fun b!1230908 () Bool)

(assert (=> b!1230908 (= e!788507 e!788509)))

(declare-fun res!551685 () Bool)

(assert (=> b!1230908 (=> (not res!551685) (not e!788509))))

(assert (=> b!1230908 (= res!551685 (isDefined!2156 lt!419435))))

(declare-fun b!1230909 () Bool)

(declare-fun res!551683 () Bool)

(assert (=> b!1230909 (=> (not res!551683) (not e!788509))))

(assert (=> b!1230909 (= res!551683 (matchR!1541 (regex!2156 (rule!3585 (_1!7041 (get!4114 lt!419435)))) (list!4633 (charsOf!1160 (_1!7041 (get!4114 lt!419435))))))))

(declare-fun b!1230910 () Bool)

(declare-fun lt!419439 () Option!2520)

(declare-fun lt!419436 () Option!2520)

(assert (=> b!1230910 (= e!788508 (ite (and (is-None!2519 lt!419439) (is-None!2519 lt!419436)) None!2519 (ite (is-None!2519 lt!419436) lt!419439 (ite (is-None!2519 lt!419439) lt!419436 (ite (>= (size!9889 (_1!7041 (v!20676 lt!419439))) (size!9889 (_1!7041 (v!20676 lt!419436)))) lt!419439 lt!419436)))))))

(declare-fun call!85349 () Option!2520)

(assert (=> b!1230910 (= lt!419439 call!85349)))

(assert (=> b!1230910 (= lt!419436 (maxPrefix!973 thiss!20528 (t!115405 rules!2728) input!2346))))

(declare-fun b!1230911 () Bool)

(declare-fun contains!2102 (List!12565 Rule!4112) Bool)

(assert (=> b!1230911 (= e!788509 (contains!2102 rules!2728 (rule!3585 (_1!7041 (get!4114 lt!419435)))))))

(declare-fun b!1230912 () Bool)

(declare-fun res!551689 () Bool)

(assert (=> b!1230912 (=> (not res!551689) (not e!788509))))

(assert (=> b!1230912 (= res!551689 (= (list!4633 (charsOf!1160 (_1!7041 (get!4114 lt!419435)))) (originalCharacters!2710 (_1!7041 (get!4114 lt!419435)))))))

(declare-fun b!1230913 () Bool)

(declare-fun res!551688 () Bool)

(assert (=> b!1230913 (=> (not res!551688) (not e!788509))))

(declare-fun apply!2680 (TokenValueInjection!4144 BalanceConc!8120) TokenValue!2224)

(declare-fun seqFromList!1566 (List!12564) BalanceConc!8120)

(assert (=> b!1230913 (= res!551688 (= (value!70044 (_1!7041 (get!4114 lt!419435))) (apply!2680 (transformation!2156 (rule!3585 (_1!7041 (get!4114 lt!419435)))) (seqFromList!1566 (originalCharacters!2710 (_1!7041 (get!4114 lt!419435)))))))))

(declare-fun b!1230914 () Bool)

(declare-fun res!551684 () Bool)

(assert (=> b!1230914 (=> (not res!551684) (not e!788509))))

(assert (=> b!1230914 (= res!551684 (= (++!3200 (list!4633 (charsOf!1160 (_1!7041 (get!4114 lt!419435)))) (_2!7041 (get!4114 lt!419435))) input!2346))))

(declare-fun bm!85344 () Bool)

(declare-fun maxPrefixOneRule!562 (LexerInterface!1851 Rule!4112 List!12564) Option!2520)

(assert (=> bm!85344 (= call!85349 (maxPrefixOneRule!562 thiss!20528 (h!17908 rules!2728) input!2346))))

(declare-fun b!1230915 () Bool)

(assert (=> b!1230915 (= e!788508 call!85349)))

(assert (= (and d!352465 c!205908) b!1230915))

(assert (= (and d!352465 (not c!205908)) b!1230910))

(assert (= (or b!1230915 b!1230910) bm!85344))

(assert (= (and d!352465 (not res!551686)) b!1230908))

(assert (= (and b!1230908 res!551685) b!1230912))

(assert (= (and b!1230912 res!551689) b!1230907))

(assert (= (and b!1230907 res!551687) b!1230914))

(assert (= (and b!1230914 res!551684) b!1230913))

(assert (= (and b!1230913 res!551688) b!1230909))

(assert (= (and b!1230909 res!551683) b!1230911))

(declare-fun m!1406697 () Bool)

(assert (=> b!1230907 m!1406697))

(declare-fun m!1406699 () Bool)

(assert (=> b!1230907 m!1406699))

(declare-fun m!1406701 () Bool)

(assert (=> b!1230907 m!1406701))

(assert (=> b!1230909 m!1406697))

(declare-fun m!1406703 () Bool)

(assert (=> b!1230909 m!1406703))

(assert (=> b!1230909 m!1406703))

(declare-fun m!1406705 () Bool)

(assert (=> b!1230909 m!1406705))

(assert (=> b!1230909 m!1406705))

(declare-fun m!1406707 () Bool)

(assert (=> b!1230909 m!1406707))

(assert (=> b!1230911 m!1406697))

(declare-fun m!1406709 () Bool)

(assert (=> b!1230911 m!1406709))

(declare-fun m!1406711 () Bool)

(assert (=> d!352465 m!1406711))

(declare-fun m!1406713 () Bool)

(assert (=> d!352465 m!1406713))

(declare-fun m!1406715 () Bool)

(assert (=> d!352465 m!1406715))

(declare-fun m!1406717 () Bool)

(assert (=> d!352465 m!1406717))

(declare-fun m!1406719 () Bool)

(assert (=> bm!85344 m!1406719))

(declare-fun m!1406721 () Bool)

(assert (=> b!1230908 m!1406721))

(declare-fun m!1406723 () Bool)

(assert (=> b!1230910 m!1406723))

(assert (=> b!1230914 m!1406697))

(assert (=> b!1230914 m!1406703))

(assert (=> b!1230914 m!1406703))

(assert (=> b!1230914 m!1406705))

(assert (=> b!1230914 m!1406705))

(declare-fun m!1406725 () Bool)

(assert (=> b!1230914 m!1406725))

(assert (=> b!1230913 m!1406697))

(declare-fun m!1406727 () Bool)

(assert (=> b!1230913 m!1406727))

(assert (=> b!1230913 m!1406727))

(declare-fun m!1406729 () Bool)

(assert (=> b!1230913 m!1406729))

(assert (=> b!1230912 m!1406697))

(assert (=> b!1230912 m!1406703))

(assert (=> b!1230912 m!1406703))

(assert (=> b!1230912 m!1406705))

(assert (=> b!1230731 d!352465))

(declare-fun d!352469 () Bool)

(declare-fun res!551692 () Bool)

(declare-fun e!788512 () Bool)

(assert (=> d!352469 (=> (not res!551692) (not e!788512))))

(declare-fun rulesValid!780 (LexerInterface!1851 List!12565) Bool)

(assert (=> d!352469 (= res!551692 (rulesValid!780 thiss!20528 rules!2728))))

(assert (=> d!352469 (= (rulesInvariant!1725 thiss!20528 rules!2728) e!788512)))

(declare-fun b!1230918 () Bool)

(declare-datatypes ((List!12571 0))(
  ( (Nil!12513) (Cons!12513 (h!17914 String!15254) (t!115437 List!12571)) )
))
(declare-fun noDuplicateTag!780 (LexerInterface!1851 List!12565 List!12571) Bool)

(assert (=> b!1230918 (= e!788512 (noDuplicateTag!780 thiss!20528 rules!2728 Nil!12513))))

(assert (= (and d!352469 res!551692) b!1230918))

(declare-fun m!1406731 () Bool)

(assert (=> d!352469 m!1406731))

(declare-fun m!1406733 () Bool)

(assert (=> b!1230918 m!1406733))

(assert (=> b!1230740 d!352469))

(declare-fun d!352471 () Bool)

(declare-fun e!788518 () Bool)

(assert (=> d!352471 e!788518))

(declare-fun res!551698 () Bool)

(assert (=> d!352471 (=> (not res!551698) (not e!788518))))

(declare-fun lt!419442 () List!12564)

(declare-fun content!1789 (List!12564) (Set C!7170))

(assert (=> d!352471 (= res!551698 (= (content!1789 lt!419442) (set.union (content!1789 lt!419364) (content!1789 (_2!7041 lt!419369)))))))

(declare-fun e!788517 () List!12564)

(assert (=> d!352471 (= lt!419442 e!788517)))

(declare-fun c!205911 () Bool)

(assert (=> d!352471 (= c!205911 (is-Nil!12506 lt!419364))))

(assert (=> d!352471 (= (++!3200 lt!419364 (_2!7041 lt!419369)) lt!419442)))

(declare-fun b!1230929 () Bool)

(declare-fun res!551697 () Bool)

(assert (=> b!1230929 (=> (not res!551697) (not e!788518))))

(assert (=> b!1230929 (= res!551697 (= (size!9892 lt!419442) (+ (size!9892 lt!419364) (size!9892 (_2!7041 lt!419369)))))))

(declare-fun b!1230927 () Bool)

(assert (=> b!1230927 (= e!788517 (_2!7041 lt!419369))))

(declare-fun b!1230930 () Bool)

(assert (=> b!1230930 (= e!788518 (or (not (= (_2!7041 lt!419369) Nil!12506)) (= lt!419442 lt!419364)))))

(declare-fun b!1230928 () Bool)

(assert (=> b!1230928 (= e!788517 (Cons!12506 (h!17907 lt!419364) (++!3200 (t!115404 lt!419364) (_2!7041 lt!419369))))))

(assert (= (and d!352471 c!205911) b!1230927))

(assert (= (and d!352471 (not c!205911)) b!1230928))

(assert (= (and d!352471 res!551698) b!1230929))

(assert (= (and b!1230929 res!551697) b!1230930))

(declare-fun m!1406735 () Bool)

(assert (=> d!352471 m!1406735))

(declare-fun m!1406737 () Bool)

(assert (=> d!352471 m!1406737))

(declare-fun m!1406739 () Bool)

(assert (=> d!352471 m!1406739))

(declare-fun m!1406741 () Bool)

(assert (=> b!1230929 m!1406741))

(declare-fun m!1406743 () Bool)

(assert (=> b!1230929 m!1406743))

(assert (=> b!1230929 m!1406671))

(declare-fun m!1406745 () Bool)

(assert (=> b!1230928 m!1406745))

(assert (=> b!1230729 d!352471))

(declare-fun b!1230931 () Bool)

(declare-fun e!788521 () tuple2!12390)

(assert (=> b!1230931 (= e!788521 (tuple2!12391 Nil!12508 input!2346))))

(declare-fun b!1230932 () Bool)

(declare-fun lt!419443 () Option!2520)

(declare-fun lt!419444 () tuple2!12390)

(assert (=> b!1230932 (= e!788521 (tuple2!12391 (Cons!12508 (_1!7041 (v!20676 lt!419443)) (_1!7042 lt!419444)) (_2!7042 lt!419444)))))

(assert (=> b!1230932 (= lt!419444 (lexList!481 thiss!20528 rules!2728 (_2!7041 (v!20676 lt!419443))))))

(declare-fun d!352473 () Bool)

(declare-fun e!788520 () Bool)

(assert (=> d!352473 e!788520))

(declare-fun c!205913 () Bool)

(declare-fun lt!419445 () tuple2!12390)

(assert (=> d!352473 (= c!205913 (> (size!9891 (_1!7042 lt!419445)) 0))))

(assert (=> d!352473 (= lt!419445 e!788521)))

(declare-fun c!205912 () Bool)

(assert (=> d!352473 (= c!205912 (is-Some!2519 lt!419443))))

(assert (=> d!352473 (= lt!419443 (maxPrefix!973 thiss!20528 rules!2728 input!2346))))

(assert (=> d!352473 (= (lexList!481 thiss!20528 rules!2728 input!2346) lt!419445)))

(declare-fun b!1230933 () Bool)

(declare-fun e!788519 () Bool)

(assert (=> b!1230933 (= e!788519 (not (isEmpty!7467 (_1!7042 lt!419445))))))

(declare-fun b!1230934 () Bool)

(assert (=> b!1230934 (= e!788520 e!788519)))

(declare-fun res!551699 () Bool)

(assert (=> b!1230934 (= res!551699 (< (size!9892 (_2!7042 lt!419445)) (size!9892 input!2346)))))

(assert (=> b!1230934 (=> (not res!551699) (not e!788519))))

(declare-fun b!1230935 () Bool)

(assert (=> b!1230935 (= e!788520 (= (_2!7042 lt!419445) input!2346))))

(assert (= (and d!352473 c!205912) b!1230932))

(assert (= (and d!352473 (not c!205912)) b!1230931))

(assert (= (and d!352473 c!205913) b!1230934))

(assert (= (and d!352473 (not c!205913)) b!1230935))

(assert (= (and b!1230934 res!551699) b!1230933))

(declare-fun m!1406747 () Bool)

(assert (=> b!1230932 m!1406747))

(declare-fun m!1406749 () Bool)

(assert (=> d!352473 m!1406749))

(assert (=> d!352473 m!1406589))

(declare-fun m!1406751 () Bool)

(assert (=> b!1230933 m!1406751))

(declare-fun m!1406753 () Bool)

(assert (=> b!1230934 m!1406753))

(assert (=> b!1230934 m!1406701))

(assert (=> b!1230730 d!352473))

(declare-fun d!352475 () Bool)

(assert (=> d!352475 (= (lexList!481 thiss!20528 rules!2728 lt!419364) (tuple2!12391 lt!419366 Nil!12506))))

(declare-fun lt!419460 () Unit!18787)

(declare-fun choose!7831 (LexerInterface!1851 List!12565 List!12564 List!12564 List!12566 List!12566 List!12564) Unit!18787)

(assert (=> d!352475 (= lt!419460 (choose!7831 thiss!20528 rules!2728 lt!419364 (_2!7041 lt!419369) lt!419366 (_1!7042 (lexList!481 thiss!20528 rules!2728 (_2!7041 lt!419369))) (_2!7042 lt!419362)))))

(assert (=> d!352475 (not (isEmpty!7465 rules!2728))))

(assert (=> d!352475 (= (lemmaLexThenLexPrefix!165 thiss!20528 rules!2728 lt!419364 (_2!7041 lt!419369) lt!419366 (_1!7042 (lexList!481 thiss!20528 rules!2728 (_2!7041 lt!419369))) (_2!7042 lt!419362)) lt!419460)))

(declare-fun bs!289543 () Bool)

(assert (= bs!289543 d!352475))

(assert (=> bs!289543 m!1406581))

(declare-fun m!1406779 () Bool)

(assert (=> bs!289543 m!1406779))

(assert (=> bs!289543 m!1406555))

(assert (=> b!1230728 d!352475))

(assert (=> b!1230728 d!352453))

(declare-fun b!1230956 () Bool)

(declare-fun e!788536 () tuple2!12390)

(assert (=> b!1230956 (= e!788536 (tuple2!12391 Nil!12508 lt!419364))))

(declare-fun b!1230957 () Bool)

(declare-fun lt!419461 () Option!2520)

(declare-fun lt!419462 () tuple2!12390)

(assert (=> b!1230957 (= e!788536 (tuple2!12391 (Cons!12508 (_1!7041 (v!20676 lt!419461)) (_1!7042 lt!419462)) (_2!7042 lt!419462)))))

(assert (=> b!1230957 (= lt!419462 (lexList!481 thiss!20528 rules!2728 (_2!7041 (v!20676 lt!419461))))))

(declare-fun d!352481 () Bool)

(declare-fun e!788535 () Bool)

(assert (=> d!352481 e!788535))

(declare-fun c!205923 () Bool)

(declare-fun lt!419463 () tuple2!12390)

(assert (=> d!352481 (= c!205923 (> (size!9891 (_1!7042 lt!419463)) 0))))

(assert (=> d!352481 (= lt!419463 e!788536)))

(declare-fun c!205922 () Bool)

(assert (=> d!352481 (= c!205922 (is-Some!2519 lt!419461))))

(assert (=> d!352481 (= lt!419461 (maxPrefix!973 thiss!20528 rules!2728 lt!419364))))

(assert (=> d!352481 (= (lexList!481 thiss!20528 rules!2728 lt!419364) lt!419463)))

(declare-fun b!1230958 () Bool)

(declare-fun e!788534 () Bool)

(assert (=> b!1230958 (= e!788534 (not (isEmpty!7467 (_1!7042 lt!419463))))))

(declare-fun b!1230959 () Bool)

(assert (=> b!1230959 (= e!788535 e!788534)))

(declare-fun res!551704 () Bool)

(assert (=> b!1230959 (= res!551704 (< (size!9892 (_2!7042 lt!419463)) (size!9892 lt!419364)))))

(assert (=> b!1230959 (=> (not res!551704) (not e!788534))))

(declare-fun b!1230960 () Bool)

(assert (=> b!1230960 (= e!788535 (= (_2!7042 lt!419463) lt!419364))))

(assert (= (and d!352481 c!205922) b!1230957))

(assert (= (and d!352481 (not c!205922)) b!1230956))

(assert (= (and d!352481 c!205923) b!1230959))

(assert (= (and d!352481 (not c!205923)) b!1230960))

(assert (= (and b!1230959 res!551704) b!1230958))

(declare-fun m!1406781 () Bool)

(assert (=> b!1230957 m!1406781))

(declare-fun m!1406783 () Bool)

(assert (=> d!352481 m!1406783))

(declare-fun m!1406785 () Bool)

(assert (=> d!352481 m!1406785))

(declare-fun m!1406787 () Bool)

(assert (=> b!1230958 m!1406787))

(declare-fun m!1406789 () Bool)

(assert (=> b!1230959 m!1406789))

(assert (=> b!1230959 m!1406743))

(assert (=> b!1230728 d!352481))

(declare-fun d!352483 () Bool)

(assert (=> d!352483 (= (get!4114 lt!419372) (v!20676 lt!419372))))

(assert (=> b!1230737 d!352483))

(declare-fun d!352485 () Bool)

(assert (=> d!352485 (= (inv!16721 (tag!2418 (rule!3585 (h!17909 tokens!556)))) (= (mod (str.len (value!70043 (tag!2418 (rule!3585 (h!17909 tokens!556))))) 2) 0))))

(assert (=> b!1230727 d!352485))

(declare-fun d!352487 () Bool)

(declare-fun res!551705 () Bool)

(declare-fun e!788537 () Bool)

(assert (=> d!352487 (=> (not res!551705) (not e!788537))))

(assert (=> d!352487 (= res!551705 (semiInverseModEq!793 (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (toValue!3297 (transformation!2156 (rule!3585 (h!17909 tokens!556))))))))

(assert (=> d!352487 (= (inv!16724 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) e!788537)))

(declare-fun b!1230961 () Bool)

(assert (=> b!1230961 (= e!788537 (equivClasses!760 (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (toValue!3297 (transformation!2156 (rule!3585 (h!17909 tokens!556))))))))

(assert (= (and d!352487 res!551705) b!1230961))

(declare-fun m!1406791 () Bool)

(assert (=> d!352487 m!1406791))

(declare-fun m!1406793 () Bool)

(assert (=> b!1230961 m!1406793))

(assert (=> b!1230727 d!352487))

(declare-fun d!352489 () Bool)

(declare-fun lt!419472 () Bool)

(declare-fun e!788549 () Bool)

(assert (=> d!352489 (= lt!419472 e!788549)))

(declare-fun res!551719 () Bool)

(assert (=> d!352489 (=> (not res!551719) (not e!788549))))

(declare-datatypes ((IArray!8197 0))(
  ( (IArray!8198 (innerList!4156 List!12566)) )
))
(declare-datatypes ((Conc!4096 0))(
  ( (Node!4096 (left!10774 Conc!4096) (right!11104 Conc!4096) (csize!8422 Int) (cheight!4307 Int)) (Leaf!6323 (xs!6807 IArray!8197) (csize!8423 Int)) (Empty!4096) )
))
(declare-datatypes ((BalanceConc!8124 0))(
  ( (BalanceConc!8125 (c!205941 Conc!4096)) )
))
(declare-fun list!4636 (BalanceConc!8124) List!12566)

(declare-datatypes ((tuple2!12396 0))(
  ( (tuple2!12397 (_1!7045 BalanceConc!8124) (_2!7045 BalanceConc!8120)) )
))
(declare-fun lex!757 (LexerInterface!1851 List!12565 BalanceConc!8120) tuple2!12396)

(declare-fun print!694 (LexerInterface!1851 BalanceConc!8124) BalanceConc!8120)

(declare-fun singletonSeq!742 (Token!3974) BalanceConc!8124)

(assert (=> d!352489 (= res!551719 (= (list!4636 (_1!7045 (lex!757 thiss!20528 rules!2728 (print!694 thiss!20528 (singletonSeq!742 (h!17909 tokens!556)))))) (list!4636 (singletonSeq!742 (h!17909 tokens!556)))))))

(declare-fun e!788548 () Bool)

(assert (=> d!352489 (= lt!419472 e!788548)))

(declare-fun res!551718 () Bool)

(assert (=> d!352489 (=> (not res!551718) (not e!788548))))

(declare-fun lt!419471 () tuple2!12396)

(declare-fun size!9893 (BalanceConc!8124) Int)

(assert (=> d!352489 (= res!551718 (= (size!9893 (_1!7045 lt!419471)) 1))))

(assert (=> d!352489 (= lt!419471 (lex!757 thiss!20528 rules!2728 (print!694 thiss!20528 (singletonSeq!742 (h!17909 tokens!556)))))))

(assert (=> d!352489 (not (isEmpty!7465 rules!2728))))

(assert (=> d!352489 (= (rulesProduceIndividualToken!845 thiss!20528 rules!2728 (h!17909 tokens!556)) lt!419472)))

(declare-fun b!1230980 () Bool)

(declare-fun res!551720 () Bool)

(assert (=> b!1230980 (=> (not res!551720) (not e!788548))))

(declare-fun apply!2681 (BalanceConc!8124 Int) Token!3974)

(assert (=> b!1230980 (= res!551720 (= (apply!2681 (_1!7045 lt!419471) 0) (h!17909 tokens!556)))))

(declare-fun b!1230981 () Bool)

(declare-fun isEmpty!7470 (BalanceConc!8120) Bool)

(assert (=> b!1230981 (= e!788548 (isEmpty!7470 (_2!7045 lt!419471)))))

(declare-fun b!1230982 () Bool)

(assert (=> b!1230982 (= e!788549 (isEmpty!7470 (_2!7045 (lex!757 thiss!20528 rules!2728 (print!694 thiss!20528 (singletonSeq!742 (h!17909 tokens!556)))))))))

(assert (= (and d!352489 res!551718) b!1230980))

(assert (= (and b!1230980 res!551720) b!1230981))

(assert (= (and d!352489 res!551719) b!1230982))

(declare-fun m!1406805 () Bool)

(assert (=> d!352489 m!1406805))

(declare-fun m!1406807 () Bool)

(assert (=> d!352489 m!1406807))

(declare-fun m!1406809 () Bool)

(assert (=> d!352489 m!1406809))

(declare-fun m!1406811 () Bool)

(assert (=> d!352489 m!1406811))

(declare-fun m!1406813 () Bool)

(assert (=> d!352489 m!1406813))

(assert (=> d!352489 m!1406805))

(assert (=> d!352489 m!1406809))

(declare-fun m!1406815 () Bool)

(assert (=> d!352489 m!1406815))

(assert (=> d!352489 m!1406555))

(assert (=> d!352489 m!1406805))

(declare-fun m!1406817 () Bool)

(assert (=> b!1230980 m!1406817))

(declare-fun m!1406819 () Bool)

(assert (=> b!1230981 m!1406819))

(assert (=> b!1230982 m!1406805))

(assert (=> b!1230982 m!1406805))

(assert (=> b!1230982 m!1406809))

(assert (=> b!1230982 m!1406809))

(assert (=> b!1230982 m!1406811))

(declare-fun m!1406821 () Bool)

(assert (=> b!1230982 m!1406821))

(assert (=> b!1230725 d!352489))

(declare-fun d!352493 () Bool)

(declare-fun res!551725 () Bool)

(declare-fun e!788552 () Bool)

(assert (=> d!352493 (=> (not res!551725) (not e!788552))))

(assert (=> d!352493 (= res!551725 (not (isEmpty!7468 (originalCharacters!2710 (h!17909 tokens!556)))))))

(assert (=> d!352493 (= (inv!16725 (h!17909 tokens!556)) e!788552)))

(declare-fun b!1230987 () Bool)

(declare-fun res!551726 () Bool)

(assert (=> b!1230987 (=> (not res!551726) (not e!788552))))

(assert (=> b!1230987 (= res!551726 (= (originalCharacters!2710 (h!17909 tokens!556)) (list!4633 (dynLambda!5469 (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))) (value!70044 (h!17909 tokens!556))))))))

(declare-fun b!1230988 () Bool)

(assert (=> b!1230988 (= e!788552 (= (size!9889 (h!17909 tokens!556)) (size!9892 (originalCharacters!2710 (h!17909 tokens!556)))))))

(assert (= (and d!352493 res!551725) b!1230987))

(assert (= (and b!1230987 res!551726) b!1230988))

(declare-fun b_lambda!36403 () Bool)

(assert (=> (not b_lambda!36403) (not b!1230987)))

(assert (=> b!1230987 t!115412))

(declare-fun b_and!84649 () Bool)

(assert (= b_and!84645 (and (=> t!115412 result!83092) b_and!84649)))

(assert (=> b!1230987 t!115414))

(declare-fun b_and!84651 () Bool)

(assert (= b_and!84647 (and (=> t!115414 result!83096) b_and!84651)))

(declare-fun m!1406823 () Bool)

(assert (=> d!352493 m!1406823))

(assert (=> b!1230987 m!1406645))

(assert (=> b!1230987 m!1406645))

(declare-fun m!1406825 () Bool)

(assert (=> b!1230987 m!1406825))

(declare-fun m!1406827 () Bool)

(assert (=> b!1230988 m!1406827))

(assert (=> b!1230726 d!352493))

(declare-fun b!1230993 () Bool)

(declare-fun e!788555 () Bool)

(declare-fun tp!351334 () Bool)

(assert (=> b!1230993 (= e!788555 (and tp_is_empty!6373 tp!351334))))

(assert (=> b!1230734 (= tp!351296 e!788555)))

(assert (= (and b!1230734 (is-Cons!12506 (originalCharacters!2710 (h!17909 tokens!556)))) b!1230993))

(declare-fun b!1230994 () Bool)

(declare-fun e!788556 () Bool)

(declare-fun tp!351335 () Bool)

(assert (=> b!1230994 (= e!788556 (and tp_is_empty!6373 tp!351335))))

(assert (=> b!1230739 (= tp!351293 e!788556)))

(assert (= (and b!1230739 (is-Cons!12506 (t!115404 input!2346))) b!1230994))

(declare-fun b!1231005 () Bool)

(declare-fun b_free!29617 () Bool)

(declare-fun b_next!30321 () Bool)

(assert (=> b!1231005 (= b_free!29617 (not b_next!30321))))

(declare-fun tp!351344 () Bool)

(declare-fun b_and!84653 () Bool)

(assert (=> b!1231005 (= tp!351344 b_and!84653)))

(declare-fun b_free!29619 () Bool)

(declare-fun b_next!30323 () Bool)

(assert (=> b!1231005 (= b_free!29619 (not b_next!30323))))

(declare-fun t!115421 () Bool)

(declare-fun tb!68881 () Bool)

(assert (=> (and b!1231005 (= (toChars!3156 (transformation!2156 (h!17908 (t!115405 rules!2728)))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556))))) t!115421) tb!68881))

(declare-fun result!83106 () Bool)

(assert (= result!83106 result!83092))

(assert (=> d!352445 t!115421))

(declare-fun tb!68883 () Bool)

(declare-fun t!115423 () Bool)

(assert (=> (and b!1231005 (= (toChars!3156 (transformation!2156 (h!17908 (t!115405 rules!2728)))) (toChars!3156 (transformation!2156 (rule!3585 (_1!7041 lt!419369))))) t!115423) tb!68883))

(declare-fun result!83108 () Bool)

(assert (= result!83108 result!83098))

(assert (=> d!352447 t!115423))

(assert (=> b!1230987 t!115421))

(declare-fun b_and!84655 () Bool)

(declare-fun tp!351345 () Bool)

(assert (=> b!1231005 (= tp!351345 (and (=> t!115421 result!83106) (=> t!115423 result!83108) b_and!84655))))

(declare-fun e!788565 () Bool)

(assert (=> b!1231005 (= e!788565 (and tp!351344 tp!351345))))

(declare-fun b!1231004 () Bool)

(declare-fun e!788568 () Bool)

(declare-fun tp!351346 () Bool)

(assert (=> b!1231004 (= e!788568 (and tp!351346 (inv!16721 (tag!2418 (h!17908 (t!115405 rules!2728)))) (inv!16724 (transformation!2156 (h!17908 (t!115405 rules!2728)))) e!788565))))

(declare-fun b!1231003 () Bool)

(declare-fun e!788567 () Bool)

(declare-fun tp!351347 () Bool)

(assert (=> b!1231003 (= e!788567 (and e!788568 tp!351347))))

(assert (=> b!1230732 (= tp!351292 e!788567)))

(assert (= b!1231004 b!1231005))

(assert (= b!1231003 b!1231004))

(assert (= (and b!1230732 (is-Cons!12507 (t!115405 rules!2728))) b!1231003))

(declare-fun m!1406829 () Bool)

(assert (=> b!1231004 m!1406829))

(declare-fun m!1406831 () Bool)

(assert (=> b!1231004 m!1406831))

(declare-fun b!1231016 () Bool)

(declare-fun e!788571 () Bool)

(assert (=> b!1231016 (= e!788571 tp_is_empty!6373)))

(declare-fun b!1231018 () Bool)

(declare-fun tp!351358 () Bool)

(assert (=> b!1231018 (= e!788571 tp!351358)))

(assert (=> b!1230727 (= tp!351295 e!788571)))

(declare-fun b!1231017 () Bool)

(declare-fun tp!351362 () Bool)

(declare-fun tp!351360 () Bool)

(assert (=> b!1231017 (= e!788571 (and tp!351362 tp!351360))))

(declare-fun b!1231019 () Bool)

(declare-fun tp!351359 () Bool)

(declare-fun tp!351361 () Bool)

(assert (=> b!1231019 (= e!788571 (and tp!351359 tp!351361))))

(assert (= (and b!1230727 (is-ElementMatch!3426 (regex!2156 (rule!3585 (h!17909 tokens!556))))) b!1231016))

(assert (= (and b!1230727 (is-Concat!5651 (regex!2156 (rule!3585 (h!17909 tokens!556))))) b!1231017))

(assert (= (and b!1230727 (is-Star!3426 (regex!2156 (rule!3585 (h!17909 tokens!556))))) b!1231018))

(assert (= (and b!1230727 (is-Union!3426 (regex!2156 (rule!3585 (h!17909 tokens!556))))) b!1231019))

(declare-fun b!1231020 () Bool)

(declare-fun e!788572 () Bool)

(assert (=> b!1231020 (= e!788572 tp_is_empty!6373)))

(declare-fun b!1231022 () Bool)

(declare-fun tp!351363 () Bool)

(assert (=> b!1231022 (= e!788572 tp!351363)))

(assert (=> b!1230720 (= tp!351290 e!788572)))

(declare-fun b!1231021 () Bool)

(declare-fun tp!351367 () Bool)

(declare-fun tp!351365 () Bool)

(assert (=> b!1231021 (= e!788572 (and tp!351367 tp!351365))))

(declare-fun b!1231023 () Bool)

(declare-fun tp!351364 () Bool)

(declare-fun tp!351366 () Bool)

(assert (=> b!1231023 (= e!788572 (and tp!351364 tp!351366))))

(assert (= (and b!1230720 (is-ElementMatch!3426 (regex!2156 (h!17908 rules!2728)))) b!1231020))

(assert (= (and b!1230720 (is-Concat!5651 (regex!2156 (h!17908 rules!2728)))) b!1231021))

(assert (= (and b!1230720 (is-Star!3426 (regex!2156 (h!17908 rules!2728)))) b!1231022))

(assert (= (and b!1230720 (is-Union!3426 (regex!2156 (h!17908 rules!2728)))) b!1231023))

(declare-fun b!1231037 () Bool)

(declare-fun b_free!29621 () Bool)

(declare-fun b_next!30325 () Bool)

(assert (=> b!1231037 (= b_free!29621 (not b_next!30325))))

(declare-fun tp!351378 () Bool)

(declare-fun b_and!84657 () Bool)

(assert (=> b!1231037 (= tp!351378 b_and!84657)))

(declare-fun b_free!29623 () Bool)

(declare-fun b_next!30327 () Bool)

(assert (=> b!1231037 (= b_free!29623 (not b_next!30327))))

(declare-fun t!115425 () Bool)

(declare-fun tb!68885 () Bool)

(assert (=> (and b!1231037 (= (toChars!3156 (transformation!2156 (rule!3585 (h!17909 (t!115406 tokens!556))))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556))))) t!115425) tb!68885))

(declare-fun result!83114 () Bool)

(assert (= result!83114 result!83092))

(assert (=> d!352445 t!115425))

(declare-fun t!115427 () Bool)

(declare-fun tb!68887 () Bool)

(assert (=> (and b!1231037 (= (toChars!3156 (transformation!2156 (rule!3585 (h!17909 (t!115406 tokens!556))))) (toChars!3156 (transformation!2156 (rule!3585 (_1!7041 lt!419369))))) t!115427) tb!68887))

(declare-fun result!83116 () Bool)

(assert (= result!83116 result!83098))

(assert (=> d!352447 t!115427))

(assert (=> b!1230987 t!115425))

(declare-fun b_and!84659 () Bool)

(declare-fun tp!351381 () Bool)

(assert (=> b!1231037 (= tp!351381 (and (=> t!115425 result!83114) (=> t!115427 result!83116) b_and!84659))))

(declare-fun e!788586 () Bool)

(declare-fun e!788590 () Bool)

(declare-fun tp!351382 () Bool)

(declare-fun b!1231034 () Bool)

(assert (=> b!1231034 (= e!788590 (and (inv!16725 (h!17909 (t!115406 tokens!556))) e!788586 tp!351382))))

(assert (=> b!1230726 (= tp!351291 e!788590)))

(declare-fun e!788587 () Bool)

(declare-fun tp!351380 () Bool)

(declare-fun e!788588 () Bool)

(declare-fun b!1231036 () Bool)

(assert (=> b!1231036 (= e!788588 (and tp!351380 (inv!16721 (tag!2418 (rule!3585 (h!17909 (t!115406 tokens!556))))) (inv!16724 (transformation!2156 (rule!3585 (h!17909 (t!115406 tokens!556))))) e!788587))))

(declare-fun tp!351379 () Bool)

(declare-fun b!1231035 () Bool)

(assert (=> b!1231035 (= e!788586 (and (inv!21 (value!70044 (h!17909 (t!115406 tokens!556)))) e!788588 tp!351379))))

(assert (=> b!1231037 (= e!788587 (and tp!351378 tp!351381))))

(assert (= b!1231036 b!1231037))

(assert (= b!1231035 b!1231036))

(assert (= b!1231034 b!1231035))

(assert (= (and b!1230726 (is-Cons!12508 (t!115406 tokens!556))) b!1231034))

(declare-fun m!1406833 () Bool)

(assert (=> b!1231034 m!1406833))

(declare-fun m!1406835 () Bool)

(assert (=> b!1231036 m!1406835))

(declare-fun m!1406837 () Bool)

(assert (=> b!1231036 m!1406837))

(declare-fun m!1406839 () Bool)

(assert (=> b!1231035 m!1406839))

(declare-fun b_lambda!36405 () Bool)

(assert (= b_lambda!36403 (or (and b!1230741 b_free!29603) (and b!1230736 b_free!29607 (= (toChars!3156 (transformation!2156 (h!17908 rules!2728))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))))) (and b!1231005 b_free!29619 (= (toChars!3156 (transformation!2156 (h!17908 (t!115405 rules!2728)))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))))) (and b!1231037 b_free!29623 (= (toChars!3156 (transformation!2156 (rule!3585 (h!17909 (t!115406 tokens!556))))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))))) b_lambda!36405)))

(declare-fun b_lambda!36407 () Bool)

(assert (= b_lambda!36399 (or (and b!1230741 b_free!29603) (and b!1230736 b_free!29607 (= (toChars!3156 (transformation!2156 (h!17908 rules!2728))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))))) (and b!1231005 b_free!29619 (= (toChars!3156 (transformation!2156 (h!17908 (t!115405 rules!2728)))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))))) (and b!1231037 b_free!29623 (= (toChars!3156 (transformation!2156 (rule!3585 (h!17909 (t!115406 tokens!556))))) (toChars!3156 (transformation!2156 (rule!3585 (h!17909 tokens!556)))))) b_lambda!36407)))

(push 1)

(assert (not b!1230911))

(assert (not b!1231003))

(assert (not d!352471))

(assert (not d!352453))

(assert (not b!1230824))

(assert (not b_lambda!36407))

(assert (not b!1230812))

(assert (not b!1230918))

(assert (not b_lambda!36401))

(assert (not b!1231019))

(assert (not b!1231018))

(assert (not b_next!30309))

(assert (not b!1230907))

(assert b_and!84657)

(assert (not b!1231022))

(assert b_and!84659)

(assert (not b_next!30305))

(assert (not b!1231023))

(assert (not b!1230909))

(assert b_and!84625)

(assert (not b!1230908))

(assert (not b_next!30307))

(assert (not b!1230928))

(assert (not b_lambda!36405))

(assert (not b!1230910))

(assert (not b_next!30325))

(assert (not b!1230934))

(assert (not b!1230929))

(assert (not b!1230981))

(assert (not b!1230959))

(assert (not b!1231017))

(assert (not tb!68877))

(assert (not d!352469))

(assert (not b!1230994))

(assert (not b_next!30327))

(assert (not b!1230842))

(assert (not b!1230961))

(assert (not b!1230980))

(assert (not d!352465))

(assert (not d!352481))

(assert b_and!84653)

(assert (not b!1230827))

(assert (not b!1230840))

(assert (not b!1230982))

(assert (not d!352447))

(assert (not b!1231004))

(assert (not bm!85344))

(assert b_and!84651)

(assert (not b!1230988))

(assert (not b!1230914))

(assert (not b!1230825))

(assert (not b!1231035))

(assert b_and!84649)

(assert (not d!352457))

(assert (not d!352493))

(assert (not b!1230957))

(assert (not b!1230877))

(assert b_and!84655)

(assert (not d!352473))

(assert (not b!1230813))

(assert (not b!1230913))

(assert (not bm!85341))

(assert (not b!1230841))

(assert (not d!352463))

(assert (not b!1231034))

(assert (not b!1230932))

(assert (not b!1230888))

(assert (not d!352487))

(assert (not d!352475))

(assert (not b_next!30323))

(assert (not tb!68873))

(assert (not b!1230912))

(assert (not d!352443))

(assert (not b_next!30321))

(assert (not d!352445))

(assert (not b!1230874))

(assert (not b!1230993))

(assert (not b!1230876))

(assert (not b!1230880))

(assert tp_is_empty!6373)

(assert (not b!1230933))

(assert (not d!352489))

(assert (not b!1230958))

(assert (not b!1231036))

(assert (not b!1230987))

(assert b_and!84629)

(assert (not b!1230885))

(assert (not d!352461))

(assert (not b!1231021))

(assert (not d!352441))

(assert (not b!1230878))

(assert (not b_next!30311))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30309))

(assert b_and!84657)

(assert b_and!84625)

(assert (not b_next!30307))

(assert (not b_next!30325))

(assert (not b_next!30327))

(assert b_and!84653)

(assert b_and!84651)

(assert b_and!84649)

(assert b_and!84655)

(assert (not b_next!30323))

(assert (not b_next!30321))

(assert b_and!84629)

(assert (not b_next!30311))

(assert b_and!84659)

(assert (not b_next!30305))

(check-sat)

(pop 1)


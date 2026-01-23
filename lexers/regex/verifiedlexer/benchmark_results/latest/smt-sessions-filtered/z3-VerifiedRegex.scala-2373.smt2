; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118650 () Bool)

(assert start!118650)

(declare-fun b!1334084 () Bool)

(declare-fun b_free!32363 () Bool)

(declare-fun b_next!33067 () Bool)

(assert (=> b!1334084 (= b_free!32363 (not b_next!33067))))

(declare-fun tp!385761 () Bool)

(declare-fun b_and!89127 () Bool)

(assert (=> b!1334084 (= tp!385761 b_and!89127)))

(declare-fun b_free!32365 () Bool)

(declare-fun b_next!33069 () Bool)

(assert (=> b!1334084 (= b_free!32365 (not b_next!33069))))

(declare-fun tp!385770 () Bool)

(declare-fun b_and!89129 () Bool)

(assert (=> b!1334084 (= tp!385770 b_and!89129)))

(declare-fun b!1334102 () Bool)

(declare-fun b_free!32367 () Bool)

(declare-fun b_next!33071 () Bool)

(assert (=> b!1334102 (= b_free!32367 (not b_next!33071))))

(declare-fun tp!385768 () Bool)

(declare-fun b_and!89131 () Bool)

(assert (=> b!1334102 (= tp!385768 b_and!89131)))

(declare-fun b_free!32369 () Bool)

(declare-fun b_next!33073 () Bool)

(assert (=> b!1334102 (= b_free!32369 (not b_next!33073))))

(declare-fun tp!385769 () Bool)

(declare-fun b_and!89133 () Bool)

(assert (=> b!1334102 (= tp!385769 b_and!89133)))

(declare-fun b!1334105 () Bool)

(declare-fun b_free!32371 () Bool)

(declare-fun b_next!33075 () Bool)

(assert (=> b!1334105 (= b_free!32371 (not b_next!33075))))

(declare-fun tp!385764 () Bool)

(declare-fun b_and!89135 () Bool)

(assert (=> b!1334105 (= tp!385764 b_and!89135)))

(declare-fun b_free!32373 () Bool)

(declare-fun b_next!33077 () Bool)

(assert (=> b!1334105 (= b_free!32373 (not b_next!33077))))

(declare-fun tp!385771 () Bool)

(declare-fun b_and!89137 () Bool)

(assert (=> b!1334105 (= tp!385771 b_and!89137)))

(declare-fun b!1334085 () Bool)

(assert (=> b!1334085 true))

(assert (=> b!1334085 true))

(declare-fun b!1334099 () Bool)

(assert (=> b!1334099 true))

(declare-fun b!1334067 () Bool)

(assert (=> b!1334067 true))

(declare-fun bs!331816 () Bool)

(declare-fun b!1334061 () Bool)

(assert (= bs!331816 (and b!1334061 b!1334067)))

(declare-fun lambda!55907 () Int)

(declare-fun lambda!55906 () Int)

(assert (=> bs!331816 (not (= lambda!55907 lambda!55906))))

(assert (=> b!1334061 true))

(declare-fun b!1334060 () Bool)

(declare-fun res!601651 () Bool)

(declare-fun e!854604 () Bool)

(assert (=> b!1334060 (=> (not res!601651) (not e!854604))))

(declare-datatypes ((List!13660 0))(
  ( (Nil!13594) (Cons!13594 (h!18995 (_ BitVec 16)) (t!119105 List!13660)) )
))
(declare-datatypes ((TokenValue!2445 0))(
  ( (FloatLiteralValue!4890 (text!17560 List!13660)) (TokenValueExt!2444 (__x!8719 Int)) (Broken!12225 (value!76724 List!13660)) (Object!2510) (End!2445) (Def!2445) (Underscore!2445) (Match!2445) (Else!2445) (Error!2445) (Case!2445) (If!2445) (Extends!2445) (Abstract!2445) (Class!2445) (Val!2445) (DelimiterValue!4890 (del!2505 List!13660)) (KeywordValue!2451 (value!76725 List!13660)) (CommentValue!4890 (value!76726 List!13660)) (WhitespaceValue!4890 (value!76727 List!13660)) (IndentationValue!2445 (value!76728 List!13660)) (String!16460) (Int32!2445) (Broken!12226 (value!76729 List!13660)) (Boolean!2446) (Unit!19740) (OperatorValue!2448 (op!2505 List!13660)) (IdentifierValue!4890 (value!76730 List!13660)) (IdentifierValue!4891 (value!76731 List!13660)) (WhitespaceValue!4891 (value!76732 List!13660)) (True!4890) (False!4890) (Broken!12227 (value!76733 List!13660)) (Broken!12228 (value!76734 List!13660)) (True!4891) (RightBrace!2445) (RightBracket!2445) (Colon!2445) (Null!2445) (Comma!2445) (LeftBracket!2445) (False!4891) (LeftBrace!2445) (ImaginaryLiteralValue!2445 (text!17561 List!13660)) (StringLiteralValue!7335 (value!76735 List!13660)) (EOFValue!2445 (value!76736 List!13660)) (IdentValue!2445 (value!76737 List!13660)) (DelimiterValue!4891 (value!76738 List!13660)) (DedentValue!2445 (value!76739 List!13660)) (NewLineValue!2445 (value!76740 List!13660)) (IntegerValue!7335 (value!76741 (_ BitVec 32)) (text!17562 List!13660)) (IntegerValue!7336 (value!76742 Int) (text!17563 List!13660)) (Times!2445) (Or!2445) (Equal!2445) (Minus!2445) (Broken!12229 (value!76743 List!13660)) (And!2445) (Div!2445) (LessEqual!2445) (Mod!2445) (Concat!6114) (Not!2445) (Plus!2445) (SpaceValue!2445 (value!76744 List!13660)) (IntegerValue!7337 (value!76745 Int) (text!17564 List!13660)) (StringLiteralValue!7336 (text!17565 List!13660)) (FloatLiteralValue!4891 (text!17566 List!13660)) (BytesLiteralValue!2445 (value!76746 List!13660)) (CommentValue!4891 (value!76747 List!13660)) (StringLiteralValue!7337 (value!76748 List!13660)) (ErrorTokenValue!2445 (msg!2506 List!13660)) )
))
(declare-datatypes ((C!7628 0))(
  ( (C!7629 (val!4374 Int)) )
))
(declare-datatypes ((List!13661 0))(
  ( (Nil!13595) (Cons!13595 (h!18996 C!7628) (t!119106 List!13661)) )
))
(declare-datatypes ((IArray!8965 0))(
  ( (IArray!8966 (innerList!4540 List!13661)) )
))
(declare-datatypes ((Conc!4480 0))(
  ( (Node!4480 (left!11675 Conc!4480) (right!12005 Conc!4480) (csize!9190 Int) (cheight!4691 Int)) (Leaf!6854 (xs!7195 IArray!8965) (csize!9191 Int)) (Empty!4480) )
))
(declare-datatypes ((BalanceConc!8900 0))(
  ( (BalanceConc!8901 (c!218492 Conc!4480)) )
))
(declare-datatypes ((Regex!3669 0))(
  ( (ElementMatch!3669 (c!218493 C!7628)) (Concat!6115 (regOne!7850 Regex!3669) (regTwo!7850 Regex!3669)) (EmptyExpr!3669) (Star!3669 (reg!3998 Regex!3669)) (EmptyLang!3669) (Union!3669 (regOne!7851 Regex!3669) (regTwo!7851 Regex!3669)) )
))
(declare-datatypes ((String!16461 0))(
  ( (String!16462 (value!76749 String)) )
))
(declare-datatypes ((TokenValueInjection!4550 0))(
  ( (TokenValueInjection!4551 (toValue!3586 Int) (toChars!3445 Int)) )
))
(declare-datatypes ((Rule!4510 0))(
  ( (Rule!4511 (regex!2355 Regex!3669) (tag!2617 String!16461) (isSeparator!2355 Bool) (transformation!2355 TokenValueInjection!4550)) )
))
(declare-datatypes ((List!13662 0))(
  ( (Nil!13596) (Cons!13596 (h!18997 Rule!4510) (t!119107 List!13662)) )
))
(declare-fun rules!2550 () List!13662)

(declare-fun sepAndNonSepRulesDisjointChars!728 (List!13662 List!13662) Bool)

(assert (=> b!1334060 (= res!601651 (sepAndNonSepRulesDisjointChars!728 rules!2550 rules!2550))))

(declare-fun e!854603 () Bool)

(declare-fun e!854606 () Bool)

(assert (=> b!1334061 (= e!854603 e!854606)))

(declare-fun res!601636 () Bool)

(assert (=> b!1334061 (=> res!601636 e!854606)))

(declare-datatypes ((Token!4372 0))(
  ( (Token!4373 (value!76750 TokenValue!2445) (rule!4100 Rule!4510) (size!11064 Int) (originalCharacters!3217 List!13661)) )
))
(declare-fun t1!34 () Token!4372)

(declare-fun lt!441846 () List!13661)

(declare-fun matchR!1671 (Regex!3669 List!13661) Bool)

(assert (=> b!1334061 (= res!601636 (not (matchR!1671 (regex!2355 (rule!4100 t1!34)) lt!441846)))))

(declare-datatypes ((Unit!19741 0))(
  ( (Unit!19742) )
))
(declare-fun lt!441855 () Unit!19741)

(declare-fun t2!34 () Token!4372)

(declare-fun forallContained!606 (List!13662 Int Rule!4510) Unit!19741)

(assert (=> b!1334061 (= lt!441855 (forallContained!606 rules!2550 lambda!55907 (rule!4100 t2!34)))))

(declare-fun lt!441854 () Unit!19741)

(assert (=> b!1334061 (= lt!441854 (forallContained!606 rules!2550 lambda!55907 (rule!4100 t1!34)))))

(declare-fun lt!441845 () Unit!19741)

(declare-fun lt!441863 () Rule!4510)

(assert (=> b!1334061 (= lt!441845 (forallContained!606 rules!2550 lambda!55907 lt!441863))))

(declare-fun bm!90115 () Bool)

(declare-fun call!90133 () Bool)

(declare-fun call!90121 () Bool)

(assert (=> bm!90115 (= call!90133 call!90121)))

(declare-fun b!1334062 () Bool)

(declare-fun res!601630 () Bool)

(declare-fun e!854594 () Bool)

(assert (=> b!1334062 (=> res!601630 e!854594)))

(declare-datatypes ((LexerInterface!2050 0))(
  ( (LexerInterfaceExt!2047 (__x!8720 Int)) (Lexer!2048) )
))
(declare-fun thiss!19762 () LexerInterface!2050)

(declare-datatypes ((List!13663 0))(
  ( (Nil!13597) (Cons!13597 (h!18998 Token!4372) (t!119108 List!13663)) )
))
(declare-fun lt!441871 () List!13663)

(declare-fun lt!441881 () BalanceConc!8900)

(declare-datatypes ((tuple2!13250 0))(
  ( (tuple2!13251 (_1!7511 List!13663) (_2!7511 List!13661)) )
))
(declare-fun lexList!588 (LexerInterface!2050 List!13662 List!13661) tuple2!13250)

(declare-fun list!5162 (BalanceConc!8900) List!13661)

(assert (=> b!1334062 (= res!601630 (not (= (lexList!588 thiss!19762 rules!2550 (list!5162 lt!441881)) (tuple2!13251 lt!441871 Nil!13595))))))

(declare-fun b!1334063 () Bool)

(declare-fun e!854609 () Bool)

(assert (=> b!1334063 (= e!854609 e!854594)))

(declare-fun res!601655 () Bool)

(assert (=> b!1334063 (=> res!601655 e!854594)))

(declare-datatypes ((IArray!8967 0))(
  ( (IArray!8968 (innerList!4541 List!13663)) )
))
(declare-datatypes ((Conc!4481 0))(
  ( (Node!4481 (left!11676 Conc!4481) (right!12006 Conc!4481) (csize!9192 Int) (cheight!4692 Int)) (Leaf!6855 (xs!7196 IArray!8967) (csize!9193 Int)) (Empty!4481) )
))
(declare-datatypes ((BalanceConc!8902 0))(
  ( (BalanceConc!8903 (c!218494 Conc!4481)) )
))
(declare-datatypes ((tuple2!13252 0))(
  ( (tuple2!13253 (_1!7512 BalanceConc!8902) (_2!7512 BalanceConc!8900)) )
))
(declare-fun lt!441878 () tuple2!13252)

(declare-fun list!5163 (BalanceConc!8902) List!13663)

(assert (=> b!1334063 (= res!601655 (not (= (list!5163 (_1!7512 lt!441878)) lt!441871)))))

(assert (=> b!1334063 (= lt!441871 (Cons!13597 t2!34 Nil!13597))))

(declare-fun lex!885 (LexerInterface!2050 List!13662 BalanceConc!8900) tuple2!13252)

(assert (=> b!1334063 (= lt!441878 (lex!885 thiss!19762 rules!2550 lt!441881))))

(declare-fun print!824 (LexerInterface!2050 BalanceConc!8902) BalanceConc!8900)

(declare-fun singletonSeq!954 (Token!4372) BalanceConc!8902)

(assert (=> b!1334063 (= lt!441881 (print!824 thiss!19762 (singletonSeq!954 t2!34)))))

(declare-fun b!1334064 () Bool)

(declare-fun res!601665 () Bool)

(declare-fun e!854602 () Bool)

(assert (=> b!1334064 (=> (not res!601665) (not e!854602))))

(declare-fun rulesInvariant!1920 (LexerInterface!2050 List!13662) Bool)

(assert (=> b!1334064 (= res!601665 (rulesInvariant!1920 thiss!19762 rules!2550))))

(declare-fun bm!90117 () Bool)

(declare-fun call!90125 () List!13661)

(declare-fun call!90128 () List!13661)

(assert (=> bm!90117 (= call!90125 call!90128)))

(declare-fun b!1334065 () Bool)

(declare-fun e!854588 () Bool)

(declare-fun e!854591 () Bool)

(assert (=> b!1334065 (= e!854588 e!854591)))

(declare-fun res!601644 () Bool)

(assert (=> b!1334065 (=> res!601644 e!854591)))

(declare-fun lt!441869 () List!13661)

(declare-fun lt!441851 () List!13661)

(declare-fun ++!3472 (List!13661 List!13661) List!13661)

(declare-fun getSuffix!525 (List!13661 List!13661) List!13661)

(assert (=> b!1334065 (= res!601644 (not (= lt!441869 (++!3472 lt!441851 (getSuffix!525 lt!441869 lt!441851)))))))

(declare-fun lambda!55903 () Int)

(declare-fun pickWitness!132 (Int) List!13661)

(assert (=> b!1334065 (= lt!441869 (pickWitness!132 lambda!55903))))

(declare-fun b!1334066 () Bool)

(declare-fun e!854608 () Unit!19741)

(declare-fun e!854584 () Unit!19741)

(assert (=> b!1334066 (= e!854608 e!854584)))

(declare-fun c!218488 () Bool)

(assert (=> b!1334066 (= c!218488 (isSeparator!2355 (rule!4100 t1!34)))))

(declare-fun e!854578 () Bool)

(declare-fun e!854577 () Bool)

(assert (=> b!1334067 (= e!854578 e!854577)))

(declare-fun res!601638 () Bool)

(assert (=> b!1334067 (=> res!601638 e!854577)))

(declare-fun exists!412 (List!13662 Int) Bool)

(assert (=> b!1334067 (= res!601638 (not (exists!412 rules!2550 lambda!55906)))))

(assert (=> b!1334067 (exists!412 rules!2550 lambda!55906)))

(declare-fun lt!441861 () Unit!19741)

(declare-fun lambda!55904 () Int)

(declare-fun lt!441876 () Regex!3669)

(declare-fun lemmaMapContains!98 (List!13662 Int Regex!3669) Unit!19741)

(assert (=> b!1334067 (= lt!441861 (lemmaMapContains!98 rules!2550 lambda!55904 lt!441876))))

(declare-fun b!1334068 () Bool)

(assert (=> b!1334068 (= e!854602 e!854604)))

(declare-fun res!601654 () Bool)

(assert (=> b!1334068 (=> (not res!601654) (not e!854604))))

(declare-fun lt!441864 () BalanceConc!8900)

(declare-fun size!11065 (BalanceConc!8900) Int)

(assert (=> b!1334068 (= res!601654 (> (size!11065 lt!441864) 0))))

(declare-fun charsOf!1327 (Token!4372) BalanceConc!8900)

(assert (=> b!1334068 (= lt!441864 (charsOf!1327 t2!34))))

(declare-fun b!1334069 () Bool)

(declare-fun e!854580 () Unit!19741)

(declare-fun Unit!19743 () Unit!19741)

(assert (=> b!1334069 (= e!854580 Unit!19743)))

(declare-fun b!1334070 () Bool)

(declare-fun e!854593 () Bool)

(assert (=> b!1334070 e!854593))

(declare-fun res!601658 () Bool)

(assert (=> b!1334070 (=> (not res!601658) (not e!854593))))

(declare-fun call!90129 () Bool)

(assert (=> b!1334070 (= res!601658 (not call!90129))))

(declare-fun lt!441877 () Unit!19741)

(declare-fun call!90130 () Unit!19741)

(assert (=> b!1334070 (= lt!441877 call!90130)))

(assert (=> b!1334070 (not call!90133)))

(declare-fun lt!441865 () Unit!19741)

(declare-fun call!90120 () Unit!19741)

(assert (=> b!1334070 (= lt!441865 call!90120)))

(declare-fun Unit!19744 () Unit!19741)

(assert (=> b!1334070 (= e!854584 Unit!19744)))

(declare-fun b!1334071 () Bool)

(declare-fun e!854581 () Bool)

(assert (=> b!1334071 e!854581))

(declare-fun res!601631 () Bool)

(assert (=> b!1334071 (=> (not res!601631) (not e!854581))))

(declare-fun call!90126 () Bool)

(assert (=> b!1334071 (= res!601631 (not call!90126))))

(declare-fun lt!441873 () Unit!19741)

(declare-fun call!90132 () Unit!19741)

(assert (=> b!1334071 (= lt!441873 call!90132)))

(declare-fun call!90124 () Bool)

(assert (=> b!1334071 (not call!90124)))

(declare-fun lt!441858 () Unit!19741)

(declare-fun call!90131 () Unit!19741)

(assert (=> b!1334071 (= lt!441858 call!90131)))

(declare-fun e!854600 () Unit!19741)

(declare-fun Unit!19745 () Unit!19741)

(assert (=> b!1334071 (= e!854600 Unit!19745)))

(declare-fun b!1334072 () Bool)

(assert (=> b!1334072 (= e!854594 e!854603)))

(declare-fun res!601629 () Bool)

(assert (=> b!1334072 (=> res!601629 e!854603)))

(declare-fun lt!441856 () List!13661)

(declare-datatypes ((tuple2!13254 0))(
  ( (tuple2!13255 (_1!7513 Token!4372) (_2!7513 List!13661)) )
))
(declare-datatypes ((Option!2626 0))(
  ( (None!2625) (Some!2625 (v!21262 tuple2!13254)) )
))
(declare-fun maxPrefix!1060 (LexerInterface!2050 List!13662 List!13661) Option!2626)

(assert (=> b!1334072 (= res!601629 (not (= (maxPrefix!1060 thiss!19762 rules!2550 lt!441856) (Some!2625 (tuple2!13255 t2!34 Nil!13595)))))))

(assert (=> b!1334072 (= lt!441856 (list!5162 lt!441864))))

(declare-fun bm!90118 () Bool)

(declare-fun call!90123 () Unit!19741)

(assert (=> bm!90118 (= call!90132 call!90123)))

(declare-fun b!1334073 () Bool)

(declare-fun res!601663 () Bool)

(declare-fun e!854587 () Bool)

(assert (=> b!1334073 (=> res!601663 e!854587)))

(declare-fun lt!441879 () C!7628)

(declare-fun contains!2481 (List!13661 C!7628) Bool)

(assert (=> b!1334073 (= res!601663 (not (contains!2481 lt!441869 lt!441879)))))

(declare-fun b!1334074 () Bool)

(declare-fun e!854579 () Bool)

(assert (=> b!1334074 (= e!854579 false)))

(declare-fun b!1334075 () Bool)

(declare-fun res!601635 () Bool)

(assert (=> b!1334075 (=> res!601635 e!854587)))

(declare-fun lt!441850 () C!7628)

(assert (=> b!1334075 (= res!601635 (not (contains!2481 lt!441869 lt!441850)))))

(declare-fun b!1334076 () Bool)

(declare-fun e!854574 () Unit!19741)

(declare-fun Unit!19746 () Unit!19741)

(assert (=> b!1334076 (= e!854574 Unit!19746)))

(declare-fun lt!441867 () Unit!19741)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!166 (Regex!3669 List!13661 C!7628) Unit!19741)

(declare-fun head!2361 (List!13661) C!7628)

(assert (=> b!1334076 (= lt!441867 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!166 (regex!2355 (rule!4100 t1!34)) lt!441846 (head!2361 lt!441846)))))

(assert (=> b!1334076 false))

(declare-fun b!1334077 () Bool)

(declare-fun res!601650 () Bool)

(assert (=> b!1334077 (=> res!601650 e!854594)))

(declare-fun isEmpty!8106 (BalanceConc!8900) Bool)

(assert (=> b!1334077 (= res!601650 (not (isEmpty!8106 (_2!7512 lt!441878))))))

(declare-fun c!218487 () Bool)

(declare-fun c!218489 () Bool)

(declare-fun bm!90119 () Bool)

(assert (=> bm!90119 (= call!90123 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!166 lt!441876 lt!441869 (ite c!218487 (ite c!218488 lt!441850 lt!441879) (ite c!218489 lt!441879 lt!441850))))))

(declare-fun b!1334078 () Bool)

(declare-fun res!601649 () Bool)

(assert (=> b!1334078 (=> res!601649 e!854603)))

(declare-fun contains!2482 (List!13662 Rule!4510) Bool)

(assert (=> b!1334078 (= res!601649 (not (contains!2482 rules!2550 (rule!4100 t2!34))))))

(declare-fun e!854573 () Bool)

(declare-fun tp!385767 () Bool)

(declare-fun e!854585 () Bool)

(declare-fun b!1334079 () Bool)

(declare-fun inv!17924 (String!16461) Bool)

(declare-fun inv!17927 (TokenValueInjection!4550) Bool)

(assert (=> b!1334079 (= e!854573 (and tp!385767 (inv!17924 (tag!2617 (rule!4100 t2!34))) (inv!17927 (transformation!2355 (rule!4100 t2!34))) e!854585))))

(declare-fun b!1334080 () Bool)

(declare-fun e!854592 () Bool)

(assert (=> b!1334080 e!854592))

(declare-fun res!601646 () Bool)

(assert (=> b!1334080 (=> (not res!601646) (not e!854592))))

(assert (=> b!1334080 (= res!601646 (not call!90129))))

(declare-fun lt!441848 () Unit!19741)

(assert (=> b!1334080 (= lt!441848 call!90130)))

(assert (=> b!1334080 (not call!90133)))

(declare-fun lt!441875 () Unit!19741)

(assert (=> b!1334080 (= lt!441875 call!90120)))

(declare-fun Unit!19747 () Unit!19741)

(assert (=> b!1334080 (= e!854584 Unit!19747)))

(declare-fun b!1334081 () Bool)

(declare-fun res!601660 () Bool)

(assert (=> b!1334081 (=> res!601660 e!854609)))

(declare-fun lt!441860 () List!13663)

(declare-fun lt!441882 () BalanceConc!8900)

(assert (=> b!1334081 (= res!601660 (not (= (lexList!588 thiss!19762 rules!2550 (list!5162 lt!441882)) (tuple2!13251 lt!441860 Nil!13595))))))

(declare-fun b!1334082 () Bool)

(declare-fun res!601632 () Bool)

(assert (=> b!1334082 (=> res!601632 e!854587)))

(assert (=> b!1334082 (= res!601632 (not (contains!2481 lt!441851 lt!441850)))))

(declare-fun bm!90120 () Bool)

(assert (=> bm!90120 (= call!90124 call!90121)))

(declare-fun b!1334083 () Bool)

(declare-fun e!854598 () Bool)

(assert (=> b!1334083 (= e!854604 e!854598)))

(declare-fun res!601627 () Bool)

(assert (=> b!1334083 (=> (not res!601627) (not e!854598))))

(declare-fun lt!441866 () Regex!3669)

(declare-fun prefixMatch!182 (Regex!3669 List!13661) Bool)

(assert (=> b!1334083 (= res!601627 (prefixMatch!182 lt!441866 lt!441851))))

(declare-fun rulesRegex!240 (LexerInterface!2050 List!13662) Regex!3669)

(assert (=> b!1334083 (= lt!441866 (rulesRegex!240 thiss!19762 rules!2550))))

(assert (=> b!1334083 (= lt!441851 (++!3472 lt!441846 (Cons!13595 lt!441850 Nil!13595)))))

(declare-fun apply!3165 (BalanceConc!8900 Int) C!7628)

(assert (=> b!1334083 (= lt!441850 (apply!3165 lt!441864 0))))

(declare-fun lt!441849 () BalanceConc!8900)

(assert (=> b!1334083 (= lt!441846 (list!5162 lt!441849))))

(assert (=> b!1334083 (= lt!441849 (charsOf!1327 t1!34))))

(declare-fun e!854610 () Bool)

(assert (=> b!1334084 (= e!854610 (and tp!385761 tp!385770))))

(declare-fun bm!90121 () Bool)

(declare-fun usedCharacters!220 (Regex!3669) List!13661)

(assert (=> bm!90121 (= call!90128 (usedCharacters!220 (regex!2355 lt!441863)))))

(assert (=> b!1334085 (= e!854598 (not e!854588))))

(declare-fun res!601661 () Bool)

(assert (=> b!1334085 (=> res!601661 e!854588)))

(declare-fun Exists!827 (Int) Bool)

(assert (=> b!1334085 (= res!601661 (not (Exists!827 lambda!55903)))))

(assert (=> b!1334085 (Exists!827 lambda!55903)))

(declare-fun lt!441872 () Unit!19741)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!145 (Regex!3669 List!13661) Unit!19741)

(assert (=> b!1334085 (= lt!441872 (lemmaPrefixMatchThenExistsStringThatMatches!145 lt!441866 lt!441851))))

(declare-fun b!1334086 () Bool)

(declare-fun res!601662 () Bool)

(assert (=> b!1334086 (=> (not res!601662) (not e!854602))))

(declare-fun rulesProduceIndividualToken!1019 (LexerInterface!2050 List!13662 Token!4372) Bool)

(assert (=> b!1334086 (= res!601662 (rulesProduceIndividualToken!1019 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1334087 () Bool)

(declare-fun e!854596 () Bool)

(assert (=> b!1334087 (= e!854606 e!854596)))

(declare-fun res!601641 () Bool)

(assert (=> b!1334087 (=> res!601641 e!854596)))

(declare-fun lt!441844 () Bool)

(assert (=> b!1334087 (= res!601641 lt!441844)))

(declare-fun lt!441847 () Unit!19741)

(assert (=> b!1334087 (= lt!441847 e!854574)))

(declare-fun c!218490 () Bool)

(assert (=> b!1334087 (= c!218490 lt!441844)))

(assert (=> b!1334087 (= lt!441844 (not (contains!2481 (usedCharacters!220 (regex!2355 (rule!4100 t1!34))) lt!441879)))))

(declare-fun b!1334088 () Bool)

(assert (=> b!1334088 (= e!854591 e!854587)))

(declare-fun res!601648 () Bool)

(assert (=> b!1334088 (=> res!601648 e!854587)))

(assert (=> b!1334088 (= res!601648 (not (contains!2481 lt!441851 lt!441879)))))

(assert (=> b!1334088 (= lt!441879 (apply!3165 lt!441849 0))))

(declare-fun bm!90122 () Bool)

(declare-fun call!90127 () Bool)

(assert (=> bm!90122 (= call!90129 call!90127)))

(declare-fun b!1334089 () Bool)

(declare-fun e!854599 () Bool)

(declare-fun e!854601 () Bool)

(declare-fun tp!385766 () Bool)

(assert (=> b!1334089 (= e!854599 (and e!854601 tp!385766))))

(declare-fun b!1334090 () Bool)

(declare-fun Unit!19748 () Unit!19741)

(assert (=> b!1334090 (= e!854580 Unit!19748)))

(declare-fun lt!441859 () Unit!19741)

(assert (=> b!1334090 (= lt!441859 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!166 (regex!2355 (rule!4100 t2!34)) lt!441856 (head!2361 lt!441856)))))

(assert (=> b!1334090 false))

(declare-fun b!1334091 () Bool)

(declare-fun res!601645 () Bool)

(assert (=> b!1334091 (=> (not res!601645) (not e!854602))))

(assert (=> b!1334091 (= res!601645 (not (= (isSeparator!2355 (rule!4100 t1!34)) (isSeparator!2355 (rule!4100 t2!34)))))))

(declare-fun bm!90123 () Bool)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!10 (LexerInterface!2050 List!13662 List!13662 Rule!4510 Rule!4510 C!7628) Unit!19741)

(assert (=> bm!90123 (= call!90131 (lemmaNonSepRuleNotContainsCharContainedInASepRule!10 thiss!19762 rules!2550 rules!2550 lt!441863 (ite c!218489 (rule!4100 t1!34) (rule!4100 t2!34)) (ite c!218489 lt!441879 lt!441850)))))

(declare-fun b!1334092 () Bool)

(declare-fun res!601656 () Bool)

(assert (=> b!1334092 (=> res!601656 e!854603)))

(assert (=> b!1334092 (= res!601656 (not (contains!2482 rules!2550 lt!441863)))))

(declare-fun e!854582 () Bool)

(declare-fun b!1334093 () Bool)

(declare-fun e!854607 () Bool)

(declare-fun tp!385763 () Bool)

(declare-fun inv!21 (TokenValue!2445) Bool)

(assert (=> b!1334093 (= e!854607 (and (inv!21 (value!76750 t1!34)) e!854582 tp!385763))))

(declare-fun b!1334094 () Bool)

(assert (=> b!1334094 (= e!854577 e!854609)))

(declare-fun res!601653 () Bool)

(assert (=> b!1334094 (=> res!601653 e!854609)))

(declare-fun lt!441868 () tuple2!13252)

(assert (=> b!1334094 (= res!601653 (not (= (list!5163 (_1!7512 lt!441868)) lt!441860)))))

(assert (=> b!1334094 (= lt!441860 (Cons!13597 t1!34 Nil!13597))))

(assert (=> b!1334094 (= lt!441868 (lex!885 thiss!19762 rules!2550 lt!441882))))

(assert (=> b!1334094 (= lt!441882 (print!824 thiss!19762 (singletonSeq!954 t1!34)))))

(declare-fun getWitness!304 (List!13662 Int) Rule!4510)

(assert (=> b!1334094 (= lt!441863 (getWitness!304 rules!2550 lambda!55906))))

(declare-fun call!90122 () List!13661)

(declare-fun bm!90124 () Bool)

(assert (=> bm!90124 (= call!90121 (contains!2481 (ite c!218487 call!90122 call!90125) (ite c!218487 (ite c!218488 lt!441850 lt!441879) (ite c!218489 lt!441879 lt!441850))))))

(declare-fun b!1334095 () Bool)

(declare-fun e!854597 () Bool)

(assert (=> b!1334095 (= e!854597 true)))

(declare-fun lt!441870 () Unit!19741)

(assert (=> b!1334095 (= lt!441870 e!854608)))

(assert (=> b!1334095 (= c!218487 (isSeparator!2355 lt!441863))))

(assert (=> b!1334095 (= (regex!2355 lt!441863) lt!441876)))

(declare-fun b!1334096 () Bool)

(declare-fun res!601637 () Bool)

(assert (=> b!1334096 (=> res!601637 e!854609)))

(assert (=> b!1334096 (= res!601637 (not (contains!2482 rules!2550 (rule!4100 t1!34))))))

(declare-fun bm!90125 () Bool)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!118 (LexerInterface!2050 List!13662 List!13662 Rule!4510 Rule!4510 C!7628) Unit!19741)

(assert (=> bm!90125 (= call!90120 (lemmaSepRuleNotContainsCharContainedInANonSepRule!118 thiss!19762 rules!2550 rules!2550 (ite c!218488 (rule!4100 t2!34) (rule!4100 t1!34)) lt!441863 (ite c!218488 lt!441850 lt!441879)))))

(declare-fun b!1334097 () Bool)

(declare-fun e!854589 () Bool)

(assert (=> b!1334097 (= e!854589 e!854578)))

(declare-fun res!601639 () Bool)

(assert (=> b!1334097 (=> res!601639 e!854578)))

(declare-datatypes ((List!13664 0))(
  ( (Nil!13598) (Cons!13598 (h!18999 Regex!3669) (t!119109 List!13664)) )
))
(declare-fun contains!2483 (List!13664 Regex!3669) Bool)

(declare-fun map!2999 (List!13662 Int) List!13664)

(assert (=> b!1334097 (= res!601639 (not (contains!2483 (map!2999 rules!2550 lambda!55904) lt!441876)))))

(declare-fun lambda!55905 () Int)

(declare-fun getWitness!305 (List!13664 Int) Regex!3669)

(assert (=> b!1334097 (= lt!441876 (getWitness!305 (map!2999 rules!2550 lambda!55904) lambda!55905))))

(declare-fun b!1334098 () Bool)

(assert (=> b!1334098 (= e!854608 e!854600)))

(assert (=> b!1334098 (= c!218489 (isSeparator!2355 (rule!4100 t1!34)))))

(assert (=> b!1334099 (= e!854587 e!854589)))

(declare-fun res!601657 () Bool)

(assert (=> b!1334099 (=> res!601657 e!854589)))

(declare-fun exists!413 (List!13664 Int) Bool)

(assert (=> b!1334099 (= res!601657 (not (exists!413 (map!2999 rules!2550 lambda!55904) lambda!55905)))))

(declare-fun lt!441862 () List!13664)

(assert (=> b!1334099 (exists!413 lt!441862 lambda!55905)))

(declare-fun lt!441852 () Unit!19741)

(declare-fun matchRGenUnionSpec!106 (Regex!3669 List!13664 List!13661) Unit!19741)

(assert (=> b!1334099 (= lt!441852 (matchRGenUnionSpec!106 lt!441866 lt!441862 lt!441869))))

(assert (=> b!1334099 (= lt!441862 (map!2999 rules!2550 lambda!55904))))

(declare-fun b!1334100 () Bool)

(declare-fun res!601643 () Bool)

(assert (=> b!1334100 (=> (not res!601643) (not e!854604))))

(declare-fun separableTokensPredicate!333 (LexerInterface!2050 Token!4372 Token!4372 List!13662) Bool)

(assert (=> b!1334100 (= res!601643 (not (separableTokensPredicate!333 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1334101 () Bool)

(declare-fun res!601659 () Bool)

(assert (=> b!1334101 (=> (not res!601659) (not e!854602))))

(assert (=> b!1334101 (= res!601659 (rulesProduceIndividualToken!1019 thiss!19762 rules!2550 t2!34))))

(declare-fun bm!90116 () Bool)

(assert (=> bm!90116 (= call!90126 call!90127)))

(declare-fun res!601640 () Bool)

(assert (=> start!118650 (=> (not res!601640) (not e!854602))))

(get-info :version)

(assert (=> start!118650 (= res!601640 ((_ is Lexer!2048) thiss!19762))))

(assert (=> start!118650 e!854602))

(assert (=> start!118650 true))

(assert (=> start!118650 e!854599))

(declare-fun inv!17928 (Token!4372) Bool)

(assert (=> start!118650 (and (inv!17928 t1!34) e!854607)))

(declare-fun e!854586 () Bool)

(assert (=> start!118650 (and (inv!17928 t2!34) e!854586)))

(assert (=> b!1334102 (= e!854585 (and tp!385768 tp!385769))))

(declare-fun b!1334103 () Bool)

(declare-fun res!601634 () Bool)

(assert (=> b!1334103 (=> (not res!601634) (not e!854602))))

(declare-fun isEmpty!8107 (List!13662) Bool)

(assert (=> b!1334103 (= res!601634 (not (isEmpty!8107 rules!2550)))))

(declare-fun b!1334104 () Bool)

(declare-fun tp!385762 () Bool)

(declare-fun e!854583 () Bool)

(assert (=> b!1334104 (= e!854582 (and tp!385762 (inv!17924 (tag!2617 (rule!4100 t1!34))) (inv!17927 (transformation!2355 (rule!4100 t1!34))) e!854583))))

(declare-fun bm!90126 () Bool)

(assert (=> bm!90126 (= call!90127 (matchR!1671 lt!441876 lt!441869))))

(assert (=> b!1334105 (= e!854583 (and tp!385764 tp!385771))))

(declare-fun b!1334106 () Bool)

(assert (=> b!1334106 e!854579))

(declare-fun res!601652 () Bool)

(assert (=> b!1334106 (=> (not res!601652) (not e!854579))))

(assert (=> b!1334106 (= res!601652 (not call!90126))))

(declare-fun lt!441853 () Unit!19741)

(assert (=> b!1334106 (= lt!441853 call!90132)))

(assert (=> b!1334106 (not call!90124)))

(declare-fun lt!441874 () Unit!19741)

(assert (=> b!1334106 (= lt!441874 call!90131)))

(declare-fun Unit!19749 () Unit!19741)

(assert (=> b!1334106 (= e!854600 Unit!19749)))

(declare-fun tp!385772 () Bool)

(declare-fun b!1334107 () Bool)

(assert (=> b!1334107 (= e!854601 (and tp!385772 (inv!17924 (tag!2617 (h!18997 rules!2550))) (inv!17927 (transformation!2355 (h!18997 rules!2550))) e!854610))))

(declare-fun bm!90127 () Bool)

(assert (=> bm!90127 (= call!90122 call!90128)))

(declare-fun b!1334108 () Bool)

(declare-fun Unit!19750 () Unit!19741)

(assert (=> b!1334108 (= e!854574 Unit!19750)))

(declare-fun b!1334109 () Bool)

(assert (=> b!1334109 (= e!854596 e!854597)))

(declare-fun res!601633 () Bool)

(assert (=> b!1334109 (=> res!601633 e!854597)))

(declare-fun lt!441880 () Bool)

(assert (=> b!1334109 (= res!601633 lt!441880)))

(declare-fun lt!441857 () Unit!19741)

(assert (=> b!1334109 (= lt!441857 e!854580)))

(declare-fun c!218491 () Bool)

(assert (=> b!1334109 (= c!218491 lt!441880)))

(assert (=> b!1334109 (= lt!441880 (not (contains!2481 (usedCharacters!220 (regex!2355 (rule!4100 t2!34))) lt!441850)))))

(declare-fun b!1334110 () Bool)

(assert (=> b!1334110 (= e!854592 false)))

(declare-fun b!1334111 () Bool)

(declare-fun res!601642 () Bool)

(assert (=> b!1334111 (=> res!601642 e!854587)))

(assert (=> b!1334111 (= res!601642 (not (matchR!1671 lt!441866 lt!441869)))))

(declare-fun b!1334112 () Bool)

(assert (=> b!1334112 (= e!854593 false)))

(declare-fun b!1334113 () Bool)

(declare-fun tp!385765 () Bool)

(assert (=> b!1334113 (= e!854586 (and (inv!21 (value!76750 t2!34)) e!854573 tp!385765))))

(declare-fun bm!90128 () Bool)

(assert (=> bm!90128 (= call!90130 call!90123)))

(declare-fun b!1334114 () Bool)

(assert (=> b!1334114 (= e!854581 false)))

(declare-fun b!1334115 () Bool)

(declare-fun res!601647 () Bool)

(assert (=> b!1334115 (=> res!601647 e!854609)))

(assert (=> b!1334115 (= res!601647 (not (isEmpty!8106 (_2!7512 lt!441868))))))

(declare-fun b!1334116 () Bool)

(declare-fun res!601628 () Bool)

(assert (=> b!1334116 (=> res!601628 e!854609)))

(assert (=> b!1334116 (= res!601628 (not (= (maxPrefix!1060 thiss!19762 rules!2550 lt!441846) (Some!2625 (tuple2!13255 t1!34 Nil!13595)))))))

(declare-fun b!1334117 () Bool)

(declare-fun res!601664 () Bool)

(assert (=> b!1334117 (=> res!601664 e!854606)))

(assert (=> b!1334117 (= res!601664 (not (matchR!1671 (regex!2355 (rule!4100 t2!34)) lt!441856)))))

(assert (= (and start!118650 res!601640) b!1334103))

(assert (= (and b!1334103 res!601634) b!1334064))

(assert (= (and b!1334064 res!601665) b!1334086))

(assert (= (and b!1334086 res!601662) b!1334101))

(assert (= (and b!1334101 res!601659) b!1334091))

(assert (= (and b!1334091 res!601645) b!1334068))

(assert (= (and b!1334068 res!601654) b!1334060))

(assert (= (and b!1334060 res!601651) b!1334100))

(assert (= (and b!1334100 res!601643) b!1334083))

(assert (= (and b!1334083 res!601627) b!1334085))

(assert (= (and b!1334085 (not res!601661)) b!1334065))

(assert (= (and b!1334065 (not res!601644)) b!1334088))

(assert (= (and b!1334088 (not res!601648)) b!1334073))

(assert (= (and b!1334073 (not res!601663)) b!1334082))

(assert (= (and b!1334082 (not res!601632)) b!1334075))

(assert (= (and b!1334075 (not res!601635)) b!1334111))

(assert (= (and b!1334111 (not res!601642)) b!1334099))

(assert (= (and b!1334099 (not res!601657)) b!1334097))

(assert (= (and b!1334097 (not res!601639)) b!1334067))

(assert (= (and b!1334067 (not res!601638)) b!1334094))

(assert (= (and b!1334094 (not res!601653)) b!1334115))

(assert (= (and b!1334115 (not res!601647)) b!1334081))

(assert (= (and b!1334081 (not res!601660)) b!1334116))

(assert (= (and b!1334116 (not res!601628)) b!1334096))

(assert (= (and b!1334096 (not res!601637)) b!1334063))

(assert (= (and b!1334063 (not res!601655)) b!1334077))

(assert (= (and b!1334077 (not res!601650)) b!1334062))

(assert (= (and b!1334062 (not res!601630)) b!1334072))

(assert (= (and b!1334072 (not res!601629)) b!1334078))

(assert (= (and b!1334078 (not res!601649)) b!1334092))

(assert (= (and b!1334092 (not res!601656)) b!1334061))

(assert (= (and b!1334061 (not res!601636)) b!1334117))

(assert (= (and b!1334117 (not res!601664)) b!1334087))

(assert (= (and b!1334087 c!218490) b!1334076))

(assert (= (and b!1334087 (not c!218490)) b!1334108))

(assert (= (and b!1334087 (not res!601641)) b!1334109))

(assert (= (and b!1334109 c!218491) b!1334090))

(assert (= (and b!1334109 (not c!218491)) b!1334069))

(assert (= (and b!1334109 (not res!601633)) b!1334095))

(assert (= (and b!1334095 c!218487) b!1334066))

(assert (= (and b!1334095 (not c!218487)) b!1334098))

(assert (= (and b!1334066 c!218488) b!1334080))

(assert (= (and b!1334066 (not c!218488)) b!1334070))

(assert (= (and b!1334080 res!601646) b!1334110))

(assert (= (and b!1334070 res!601658) b!1334112))

(assert (= (or b!1334080 b!1334070) bm!90122))

(assert (= (or b!1334080 b!1334070) bm!90127))

(assert (= (or b!1334080 b!1334070) bm!90128))

(assert (= (or b!1334080 b!1334070) bm!90125))

(assert (= (or b!1334080 b!1334070) bm!90115))

(assert (= (and b!1334098 c!218489) b!1334106))

(assert (= (and b!1334098 (not c!218489)) b!1334071))

(assert (= (and b!1334106 res!601652) b!1334074))

(assert (= (and b!1334071 res!601631) b!1334114))

(assert (= (or b!1334106 b!1334071) bm!90123))

(assert (= (or b!1334106 b!1334071) bm!90118))

(assert (= (or b!1334106 b!1334071) bm!90116))

(assert (= (or b!1334106 b!1334071) bm!90117))

(assert (= (or b!1334106 b!1334071) bm!90120))

(assert (= (or bm!90115 bm!90120) bm!90124))

(assert (= (or bm!90122 bm!90116) bm!90126))

(assert (= (or bm!90128 bm!90118) bm!90119))

(assert (= (or bm!90127 bm!90117) bm!90121))

(assert (= b!1334107 b!1334084))

(assert (= b!1334089 b!1334107))

(assert (= (and start!118650 ((_ is Cons!13596) rules!2550)) b!1334089))

(assert (= b!1334104 b!1334105))

(assert (= b!1334093 b!1334104))

(assert (= start!118650 b!1334093))

(assert (= b!1334079 b!1334102))

(assert (= b!1334113 b!1334079))

(assert (= start!118650 b!1334113))

(declare-fun m!1491337 () Bool)

(assert (=> b!1334072 m!1491337))

(declare-fun m!1491339 () Bool)

(assert (=> b!1334072 m!1491339))

(declare-fun m!1491341 () Bool)

(assert (=> b!1334103 m!1491341))

(declare-fun m!1491343 () Bool)

(assert (=> b!1334077 m!1491343))

(declare-fun m!1491345 () Bool)

(assert (=> b!1334076 m!1491345))

(assert (=> b!1334076 m!1491345))

(declare-fun m!1491347 () Bool)

(assert (=> b!1334076 m!1491347))

(declare-fun m!1491349 () Bool)

(assert (=> b!1334068 m!1491349))

(declare-fun m!1491351 () Bool)

(assert (=> b!1334068 m!1491351))

(declare-fun m!1491353 () Bool)

(assert (=> b!1334092 m!1491353))

(declare-fun m!1491355 () Bool)

(assert (=> b!1334062 m!1491355))

(assert (=> b!1334062 m!1491355))

(declare-fun m!1491357 () Bool)

(assert (=> b!1334062 m!1491357))

(declare-fun m!1491359 () Bool)

(assert (=> b!1334085 m!1491359))

(assert (=> b!1334085 m!1491359))

(declare-fun m!1491361 () Bool)

(assert (=> b!1334085 m!1491361))

(declare-fun m!1491363 () Bool)

(assert (=> b!1334082 m!1491363))

(declare-fun m!1491365 () Bool)

(assert (=> b!1334065 m!1491365))

(assert (=> b!1334065 m!1491365))

(declare-fun m!1491367 () Bool)

(assert (=> b!1334065 m!1491367))

(declare-fun m!1491369 () Bool)

(assert (=> b!1334065 m!1491369))

(declare-fun m!1491371 () Bool)

(assert (=> b!1334104 m!1491371))

(declare-fun m!1491373 () Bool)

(assert (=> b!1334104 m!1491373))

(declare-fun m!1491375 () Bool)

(assert (=> bm!90123 m!1491375))

(declare-fun m!1491377 () Bool)

(assert (=> b!1334063 m!1491377))

(declare-fun m!1491379 () Bool)

(assert (=> b!1334063 m!1491379))

(declare-fun m!1491381 () Bool)

(assert (=> b!1334063 m!1491381))

(assert (=> b!1334063 m!1491381))

(declare-fun m!1491383 () Bool)

(assert (=> b!1334063 m!1491383))

(declare-fun m!1491385 () Bool)

(assert (=> bm!90125 m!1491385))

(declare-fun m!1491387 () Bool)

(assert (=> b!1334107 m!1491387))

(declare-fun m!1491389 () Bool)

(assert (=> b!1334107 m!1491389))

(declare-fun m!1491391 () Bool)

(assert (=> b!1334079 m!1491391))

(declare-fun m!1491393 () Bool)

(assert (=> b!1334079 m!1491393))

(declare-fun m!1491395 () Bool)

(assert (=> b!1334099 m!1491395))

(declare-fun m!1491397 () Bool)

(assert (=> b!1334099 m!1491397))

(declare-fun m!1491399 () Bool)

(assert (=> b!1334099 m!1491399))

(assert (=> b!1334099 m!1491395))

(assert (=> b!1334099 m!1491395))

(declare-fun m!1491401 () Bool)

(assert (=> b!1334099 m!1491401))

(declare-fun m!1491403 () Bool)

(assert (=> b!1334094 m!1491403))

(declare-fun m!1491405 () Bool)

(assert (=> b!1334094 m!1491405))

(declare-fun m!1491407 () Bool)

(assert (=> b!1334094 m!1491407))

(declare-fun m!1491409 () Bool)

(assert (=> b!1334094 m!1491409))

(assert (=> b!1334094 m!1491407))

(declare-fun m!1491411 () Bool)

(assert (=> b!1334094 m!1491411))

(declare-fun m!1491413 () Bool)

(assert (=> b!1334087 m!1491413))

(assert (=> b!1334087 m!1491413))

(declare-fun m!1491415 () Bool)

(assert (=> b!1334087 m!1491415))

(declare-fun m!1491417 () Bool)

(assert (=> b!1334083 m!1491417))

(declare-fun m!1491419 () Bool)

(assert (=> b!1334083 m!1491419))

(declare-fun m!1491421 () Bool)

(assert (=> b!1334083 m!1491421))

(declare-fun m!1491423 () Bool)

(assert (=> b!1334083 m!1491423))

(declare-fun m!1491425 () Bool)

(assert (=> b!1334083 m!1491425))

(declare-fun m!1491427 () Bool)

(assert (=> b!1334083 m!1491427))

(declare-fun m!1491429 () Bool)

(assert (=> b!1334117 m!1491429))

(declare-fun m!1491431 () Bool)

(assert (=> b!1334075 m!1491431))

(declare-fun m!1491433 () Bool)

(assert (=> b!1334116 m!1491433))

(declare-fun m!1491435 () Bool)

(assert (=> b!1334061 m!1491435))

(declare-fun m!1491437 () Bool)

(assert (=> b!1334061 m!1491437))

(declare-fun m!1491439 () Bool)

(assert (=> b!1334061 m!1491439))

(declare-fun m!1491441 () Bool)

(assert (=> b!1334061 m!1491441))

(declare-fun m!1491443 () Bool)

(assert (=> b!1334093 m!1491443))

(declare-fun m!1491445 () Bool)

(assert (=> bm!90119 m!1491445))

(declare-fun m!1491447 () Bool)

(assert (=> b!1334096 m!1491447))

(declare-fun m!1491449 () Bool)

(assert (=> bm!90121 m!1491449))

(declare-fun m!1491451 () Bool)

(assert (=> b!1334100 m!1491451))

(declare-fun m!1491453 () Bool)

(assert (=> b!1334101 m!1491453))

(declare-fun m!1491455 () Bool)

(assert (=> b!1334113 m!1491455))

(declare-fun m!1491457 () Bool)

(assert (=> b!1334060 m!1491457))

(declare-fun m!1491459 () Bool)

(assert (=> b!1334109 m!1491459))

(assert (=> b!1334109 m!1491459))

(declare-fun m!1491461 () Bool)

(assert (=> b!1334109 m!1491461))

(declare-fun m!1491463 () Bool)

(assert (=> bm!90126 m!1491463))

(declare-fun m!1491465 () Bool)

(assert (=> b!1334067 m!1491465))

(assert (=> b!1334067 m!1491465))

(declare-fun m!1491467 () Bool)

(assert (=> b!1334067 m!1491467))

(declare-fun m!1491469 () Bool)

(assert (=> b!1334090 m!1491469))

(assert (=> b!1334090 m!1491469))

(declare-fun m!1491471 () Bool)

(assert (=> b!1334090 m!1491471))

(declare-fun m!1491473 () Bool)

(assert (=> b!1334111 m!1491473))

(declare-fun m!1491475 () Bool)

(assert (=> b!1334073 m!1491475))

(declare-fun m!1491477 () Bool)

(assert (=> b!1334081 m!1491477))

(assert (=> b!1334081 m!1491477))

(declare-fun m!1491479 () Bool)

(assert (=> b!1334081 m!1491479))

(declare-fun m!1491481 () Bool)

(assert (=> b!1334078 m!1491481))

(assert (=> b!1334097 m!1491395))

(assert (=> b!1334097 m!1491395))

(declare-fun m!1491483 () Bool)

(assert (=> b!1334097 m!1491483))

(assert (=> b!1334097 m!1491395))

(assert (=> b!1334097 m!1491395))

(declare-fun m!1491485 () Bool)

(assert (=> b!1334097 m!1491485))

(declare-fun m!1491487 () Bool)

(assert (=> b!1334064 m!1491487))

(declare-fun m!1491489 () Bool)

(assert (=> b!1334088 m!1491489))

(declare-fun m!1491491 () Bool)

(assert (=> b!1334088 m!1491491))

(declare-fun m!1491493 () Bool)

(assert (=> start!118650 m!1491493))

(declare-fun m!1491495 () Bool)

(assert (=> start!118650 m!1491495))

(declare-fun m!1491497 () Bool)

(assert (=> b!1334086 m!1491497))

(declare-fun m!1491499 () Bool)

(assert (=> bm!90124 m!1491499))

(declare-fun m!1491501 () Bool)

(assert (=> b!1334115 m!1491501))

(check-sat b_and!89133 (not b!1334090) (not b!1334096) (not b!1334060) (not b!1334077) (not b!1334082) (not b!1334113) b_and!89127 (not b!1334103) (not b_next!33067) (not b!1334092) (not b!1334087) (not b_next!33077) (not b!1334088) (not bm!90126) (not b!1334097) (not b!1334081) (not b_next!33075) (not b!1334063) (not b_next!33073) (not b!1334116) b_and!89129 (not b!1334099) (not b!1334075) b_and!89137 (not b!1334094) (not bm!90119) (not b!1334100) (not b!1334065) (not b!1334076) (not b!1334062) (not b!1334115) (not b!1334061) (not bm!90123) (not b!1334067) (not b!1334101) (not b!1334089) (not b!1334086) (not b!1334085) (not b!1334083) (not b!1334072) (not b!1334068) (not b!1334111) (not b!1334104) (not b!1334073) (not b_next!33069) b_and!89131 (not b!1334109) (not b_next!33071) (not bm!90124) (not bm!90121) (not b!1334078) (not b!1334079) (not start!118650) (not b!1334093) b_and!89135 (not b!1334064) (not b!1334117) (not bm!90125) (not b!1334107))
(check-sat b_and!89133 (not b_next!33075) (not b_next!33073) b_and!89129 b_and!89137 b_and!89127 (not b_next!33067) (not b_next!33071) b_and!89135 (not b_next!33077) (not b_next!33069) b_and!89131)

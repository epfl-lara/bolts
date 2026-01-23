; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16382 () Bool)

(assert start!16382)

(declare-fun b!153080 () Bool)

(declare-fun b_free!5609 () Bool)

(declare-fun b_next!5609 () Bool)

(assert (=> b!153080 (= b_free!5609 (not b_next!5609))))

(declare-fun tp!79374 () Bool)

(declare-fun b_and!8953 () Bool)

(assert (=> b!153080 (= tp!79374 b_and!8953)))

(declare-fun b_free!5611 () Bool)

(declare-fun b_next!5611 () Bool)

(assert (=> b!153080 (= b_free!5611 (not b_next!5611))))

(declare-fun tp!79370 () Bool)

(declare-fun b_and!8955 () Bool)

(assert (=> b!153080 (= tp!79370 b_and!8955)))

(declare-fun b!153075 () Bool)

(declare-fun b_free!5613 () Bool)

(declare-fun b_next!5613 () Bool)

(assert (=> b!153075 (= b_free!5613 (not b_next!5613))))

(declare-fun tp!79379 () Bool)

(declare-fun b_and!8957 () Bool)

(assert (=> b!153075 (= tp!79379 b_and!8957)))

(declare-fun b_free!5615 () Bool)

(declare-fun b_next!5615 () Bool)

(assert (=> b!153075 (= b_free!5615 (not b_next!5615))))

(declare-fun tp!79377 () Bool)

(declare-fun b_and!8959 () Bool)

(assert (=> b!153075 (= tp!79377 b_and!8959)))

(declare-fun b!153081 () Bool)

(declare-fun b_free!5617 () Bool)

(declare-fun b_next!5617 () Bool)

(assert (=> b!153081 (= b_free!5617 (not b_next!5617))))

(declare-fun tp!79369 () Bool)

(declare-fun b_and!8961 () Bool)

(assert (=> b!153081 (= tp!79369 b_and!8961)))

(declare-fun b_free!5619 () Bool)

(declare-fun b_next!5619 () Bool)

(assert (=> b!153081 (= b_free!5619 (not b_next!5619))))

(declare-fun tp!79378 () Bool)

(declare-fun b_and!8963 () Bool)

(assert (=> b!153081 (= tp!79378 b_and!8963)))

(declare-fun b!153063 () Bool)

(declare-fun res!69999 () Bool)

(declare-fun e!91597 () Bool)

(assert (=> b!153063 (=> (not res!69999) (not e!91597))))

(declare-datatypes ((LexerInterface!347 0))(
  ( (LexerInterfaceExt!344 (__x!2453 Int)) (Lexer!345) )
))
(declare-fun thiss!17480 () LexerInterface!347)

(declare-datatypes ((List!2659 0))(
  ( (Nil!2649) (Cons!2649 (h!8046 (_ BitVec 16)) (t!25059 List!2659)) )
))
(declare-datatypes ((TokenValue!483 0))(
  ( (FloatLiteralValue!966 (text!3826 List!2659)) (TokenValueExt!482 (__x!2454 Int)) (Broken!2415 (value!17428 List!2659)) (Object!492) (End!483) (Def!483) (Underscore!483) (Match!483) (Else!483) (Error!483) (Case!483) (If!483) (Extends!483) (Abstract!483) (Class!483) (Val!483) (DelimiterValue!966 (del!543 List!2659)) (KeywordValue!489 (value!17429 List!2659)) (CommentValue!966 (value!17430 List!2659)) (WhitespaceValue!966 (value!17431 List!2659)) (IndentationValue!483 (value!17432 List!2659)) (String!3494) (Int32!483) (Broken!2416 (value!17433 List!2659)) (Boolean!484) (Unit!2047) (OperatorValue!486 (op!543 List!2659)) (IdentifierValue!966 (value!17434 List!2659)) (IdentifierValue!967 (value!17435 List!2659)) (WhitespaceValue!967 (value!17436 List!2659)) (True!966) (False!966) (Broken!2417 (value!17437 List!2659)) (Broken!2418 (value!17438 List!2659)) (True!967) (RightBrace!483) (RightBracket!483) (Colon!483) (Null!483) (Comma!483) (LeftBracket!483) (False!967) (LeftBrace!483) (ImaginaryLiteralValue!483 (text!3827 List!2659)) (StringLiteralValue!1449 (value!17439 List!2659)) (EOFValue!483 (value!17440 List!2659)) (IdentValue!483 (value!17441 List!2659)) (DelimiterValue!967 (value!17442 List!2659)) (DedentValue!483 (value!17443 List!2659)) (NewLineValue!483 (value!17444 List!2659)) (IntegerValue!1449 (value!17445 (_ BitVec 32)) (text!3828 List!2659)) (IntegerValue!1450 (value!17446 Int) (text!3829 List!2659)) (Times!483) (Or!483) (Equal!483) (Minus!483) (Broken!2419 (value!17447 List!2659)) (And!483) (Div!483) (LessEqual!483) (Mod!483) (Concat!1168) (Not!483) (Plus!483) (SpaceValue!483 (value!17448 List!2659)) (IntegerValue!1451 (value!17449 Int) (text!3830 List!2659)) (StringLiteralValue!1450 (text!3831 List!2659)) (FloatLiteralValue!967 (text!3832 List!2659)) (BytesLiteralValue!483 (value!17450 List!2659)) (CommentValue!967 (value!17451 List!2659)) (StringLiteralValue!1451 (value!17452 List!2659)) (ErrorTokenValue!483 (msg!544 List!2659)) )
))
(declare-datatypes ((C!2292 0))(
  ( (C!2293 (val!1032 Int)) )
))
(declare-datatypes ((List!2660 0))(
  ( (Nil!2650) (Cons!2650 (h!8047 C!2292) (t!25060 List!2660)) )
))
(declare-datatypes ((IArray!1489 0))(
  ( (IArray!1490 (innerList!802 List!2660)) )
))
(declare-datatypes ((Conc!744 0))(
  ( (Node!744 (left!2001 Conc!744) (right!2331 Conc!744) (csize!1718 Int) (cheight!955 Int)) (Leaf!1314 (xs!3339 IArray!1489) (csize!1719 Int)) (Empty!744) )
))
(declare-datatypes ((BalanceConc!1496 0))(
  ( (BalanceConc!1497 (c!30873 Conc!744)) )
))
(declare-datatypes ((TokenValueInjection!738 0))(
  ( (TokenValueInjection!739 (toValue!1100 Int) (toChars!959 Int)) )
))
(declare-datatypes ((String!3495 0))(
  ( (String!3496 (value!17453 String)) )
))
(declare-datatypes ((Regex!685 0))(
  ( (ElementMatch!685 (c!30874 C!2292)) (Concat!1169 (regOne!1882 Regex!685) (regTwo!1882 Regex!685)) (EmptyExpr!685) (Star!685 (reg!1014 Regex!685)) (EmptyLang!685) (Union!685 (regOne!1883 Regex!685) (regTwo!1883 Regex!685)) )
))
(declare-datatypes ((Rule!722 0))(
  ( (Rule!723 (regex!461 Regex!685) (tag!639 String!3495) (isSeparator!461 Bool) (transformation!461 TokenValueInjection!738)) )
))
(declare-datatypes ((List!2661 0))(
  ( (Nil!2651) (Cons!2651 (h!8048 Rule!722) (t!25061 List!2661)) )
))
(declare-fun rules!1920 () List!2661)

(declare-fun rulesInvariant!313 (LexerInterface!347 List!2661) Bool)

(assert (=> b!153063 (= res!69999 (rulesInvariant!313 thiss!17480 rules!1920))))

(declare-datatypes ((Token!666 0))(
  ( (Token!667 (value!17454 TokenValue!483) (rule!968 Rule!722) (size!2257 Int) (originalCharacters!504 List!2660)) )
))
(declare-datatypes ((List!2662 0))(
  ( (Nil!2652) (Cons!2652 (h!8049 Token!666) (t!25062 List!2662)) )
))
(declare-fun tokens!465 () List!2662)

(declare-fun e!91581 () Bool)

(declare-fun e!91582 () Bool)

(declare-fun tp!79375 () Bool)

(declare-fun b!153064 () Bool)

(declare-fun inv!3447 (String!3495) Bool)

(declare-fun inv!3450 (TokenValueInjection!738) Bool)

(assert (=> b!153064 (= e!91582 (and tp!79375 (inv!3447 (tag!639 (rule!968 (h!8049 tokens!465)))) (inv!3450 (transformation!461 (rule!968 (h!8049 tokens!465)))) e!91581))))

(declare-fun b!153065 () Bool)

(declare-fun e!91592 () Bool)

(assert (=> b!153065 (= e!91597 e!91592)))

(declare-fun res!70001 () Bool)

(assert (=> b!153065 (=> (not res!70001) (not e!91592))))

(declare-datatypes ((IArray!1491 0))(
  ( (IArray!1492 (innerList!803 List!2662)) )
))
(declare-datatypes ((Conc!745 0))(
  ( (Node!745 (left!2002 Conc!745) (right!2332 Conc!745) (csize!1720 Int) (cheight!956 Int)) (Leaf!1315 (xs!3340 IArray!1491) (csize!1721 Int)) (Empty!745) )
))
(declare-datatypes ((BalanceConc!1498 0))(
  ( (BalanceConc!1499 (c!30875 Conc!745)) )
))
(declare-fun lt!44908 () BalanceConc!1498)

(declare-fun rulesProduceEachTokenIndividually!139 (LexerInterface!347 List!2661 BalanceConc!1498) Bool)

(assert (=> b!153065 (= res!70001 (rulesProduceEachTokenIndividually!139 thiss!17480 rules!1920 lt!44908))))

(declare-fun seqFromList!299 (List!2662) BalanceConc!1498)

(assert (=> b!153065 (= lt!44908 (seqFromList!299 tokens!465))))

(declare-fun b!153067 () Bool)

(declare-fun res!70000 () Bool)

(assert (=> b!153067 (=> (not res!70000) (not e!91597))))

(declare-fun isEmpty!1052 (List!2661) Bool)

(assert (=> b!153067 (= res!70000 (not (isEmpty!1052 rules!1920)))))

(declare-fun b!153068 () Bool)

(declare-fun res!70002 () Bool)

(assert (=> b!153068 (=> (not res!70002) (not e!91592))))

(declare-fun separatorToken!170 () Token!666)

(declare-fun rulesProduceIndividualToken!96 (LexerInterface!347 List!2661 Token!666) Bool)

(assert (=> b!153068 (= res!70002 (rulesProduceIndividualToken!96 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!91593 () Bool)

(declare-fun e!91584 () Bool)

(declare-fun tp!79367 () Bool)

(declare-fun b!153069 () Bool)

(declare-fun inv!3451 (Token!666) Bool)

(assert (=> b!153069 (= e!91584 (and (inv!3451 (h!8049 tokens!465)) e!91593 tp!79367))))

(declare-fun e!91591 () Bool)

(declare-fun e!91594 () Bool)

(declare-fun b!153070 () Bool)

(declare-fun tp!79376 () Bool)

(declare-fun inv!21 (TokenValue!483) Bool)

(assert (=> b!153070 (= e!91594 (and (inv!21 (value!17454 separatorToken!170)) e!91591 tp!79376))))

(declare-fun b!153071 () Bool)

(declare-fun res!69996 () Bool)

(assert (=> b!153071 (=> (not res!69996) (not e!91592))))

(get-info :version)

(assert (=> b!153071 (= res!69996 ((_ is Cons!2652) tokens!465))))

(declare-fun b!153072 () Bool)

(declare-fun res!70007 () Bool)

(assert (=> b!153072 (=> (not res!70007) (not e!91592))))

(assert (=> b!153072 (= res!70007 (isSeparator!461 (rule!968 separatorToken!170)))))

(declare-fun tp!79368 () Bool)

(declare-fun b!153073 () Bool)

(assert (=> b!153073 (= e!91593 (and (inv!21 (value!17454 (h!8049 tokens!465))) e!91582 tp!79368))))

(declare-fun b!153074 () Bool)

(declare-fun e!91596 () Bool)

(assert (=> b!153074 (= e!91596 false)))

(declare-fun e!91595 () Bool)

(assert (=> b!153075 (= e!91595 (and tp!79379 tp!79377))))

(declare-fun b!153076 () Bool)

(declare-fun e!91585 () Bool)

(assert (=> b!153076 (= e!91592 e!91585)))

(declare-fun res!69998 () Bool)

(assert (=> b!153076 (=> (not res!69998) (not e!91585))))

(declare-fun lt!44905 () List!2660)

(declare-fun lt!44904 () List!2660)

(assert (=> b!153076 (= res!69998 (= lt!44905 lt!44904))))

(declare-fun list!935 (BalanceConc!1496) List!2660)

(declare-fun printWithSeparatorTokenWhenNeededRec!30 (LexerInterface!347 List!2661 BalanceConc!1498 Token!666 Int) BalanceConc!1496)

(assert (=> b!153076 (= lt!44904 (list!935 (printWithSeparatorTokenWhenNeededRec!30 thiss!17480 rules!1920 lt!44908 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!40 (LexerInterface!347 List!2661 List!2662 Token!666) List!2660)

(assert (=> b!153076 (= lt!44905 (printWithSeparatorTokenWhenNeededList!40 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!153077 () Bool)

(declare-fun e!91586 () Bool)

(declare-fun e!91587 () Bool)

(declare-fun tp!79371 () Bool)

(assert (=> b!153077 (= e!91586 (and e!91587 tp!79371))))

(declare-fun tp!79372 () Bool)

(declare-fun b!153078 () Bool)

(declare-fun e!91588 () Bool)

(assert (=> b!153078 (= e!91587 (and tp!79372 (inv!3447 (tag!639 (h!8048 rules!1920))) (inv!3450 (transformation!461 (h!8048 rules!1920))) e!91588))))

(declare-fun tp!79373 () Bool)

(declare-fun b!153079 () Bool)

(assert (=> b!153079 (= e!91591 (and tp!79373 (inv!3447 (tag!639 (rule!968 separatorToken!170))) (inv!3450 (transformation!461 (rule!968 separatorToken!170))) e!91595))))

(assert (=> b!153080 (= e!91581 (and tp!79374 tp!79370))))

(assert (=> b!153081 (= e!91588 (and tp!79369 tp!79378))))

(declare-fun b!153082 () Bool)

(declare-fun res!70005 () Bool)

(assert (=> b!153082 (=> (not res!70005) (not e!91592))))

(declare-fun lambda!3994 () Int)

(declare-fun forall!457 (List!2662 Int) Bool)

(assert (=> b!153082 (= res!70005 (forall!457 tokens!465 lambda!3994))))

(declare-fun b!153083 () Bool)

(assert (=> b!153083 (= e!91585 e!91596)))

(declare-fun res!69997 () Bool)

(assert (=> b!153083 (=> (not res!69997) (not e!91596))))

(declare-fun rulesProduceEachTokenIndividuallyList!87 (LexerInterface!347 List!2661 List!2662) Bool)

(assert (=> b!153083 (= res!69997 (rulesProduceEachTokenIndividuallyList!87 thiss!17480 rules!1920 (t!25062 tokens!465)))))

(declare-fun lt!44906 () List!2660)

(declare-fun charsOf!116 (Token!666) BalanceConc!1496)

(assert (=> b!153083 (= lt!44906 (list!935 (charsOf!116 (h!8049 tokens!465))))))

(declare-fun lt!44907 () List!2660)

(declare-fun ++!572 (List!2660 List!2660) List!2660)

(assert (=> b!153083 (= lt!44907 (++!572 (list!935 (charsOf!116 separatorToken!170)) (printWithSeparatorTokenWhenNeededList!40 thiss!17480 rules!1920 (t!25062 tokens!465) separatorToken!170)))))

(declare-fun b!153084 () Bool)

(declare-fun res!70004 () Bool)

(assert (=> b!153084 (=> (not res!70004) (not e!91592))))

(declare-fun sepAndNonSepRulesDisjointChars!50 (List!2661 List!2661) Bool)

(assert (=> b!153084 (= res!70004 (sepAndNonSepRulesDisjointChars!50 rules!1920 rules!1920))))

(declare-fun b!153066 () Bool)

(declare-fun res!70003 () Bool)

(assert (=> b!153066 (=> (not res!70003) (not e!91585))))

(declare-fun seqFromList!300 (List!2660) BalanceConc!1496)

(assert (=> b!153066 (= res!70003 (= (list!935 (seqFromList!300 lt!44905)) lt!44904))))

(declare-fun res!70006 () Bool)

(assert (=> start!16382 (=> (not res!70006) (not e!91597))))

(assert (=> start!16382 (= res!70006 ((_ is Lexer!345) thiss!17480))))

(assert (=> start!16382 e!91597))

(assert (=> start!16382 true))

(assert (=> start!16382 e!91586))

(assert (=> start!16382 (and (inv!3451 separatorToken!170) e!91594)))

(assert (=> start!16382 e!91584))

(assert (= (and start!16382 res!70006) b!153067))

(assert (= (and b!153067 res!70000) b!153063))

(assert (= (and b!153063 res!69999) b!153065))

(assert (= (and b!153065 res!70001) b!153068))

(assert (= (and b!153068 res!70002) b!153072))

(assert (= (and b!153072 res!70007) b!153082))

(assert (= (and b!153082 res!70005) b!153084))

(assert (= (and b!153084 res!70004) b!153071))

(assert (= (and b!153071 res!69996) b!153076))

(assert (= (and b!153076 res!69998) b!153066))

(assert (= (and b!153066 res!70003) b!153083))

(assert (= (and b!153083 res!69997) b!153074))

(assert (= b!153078 b!153081))

(assert (= b!153077 b!153078))

(assert (= (and start!16382 ((_ is Cons!2651) rules!1920)) b!153077))

(assert (= b!153079 b!153075))

(assert (= b!153070 b!153079))

(assert (= start!16382 b!153070))

(assert (= b!153064 b!153080))

(assert (= b!153073 b!153064))

(assert (= b!153069 b!153073))

(assert (= (and start!16382 ((_ is Cons!2652) tokens!465)) b!153069))

(declare-fun m!138001 () Bool)

(assert (=> b!153084 m!138001))

(declare-fun m!138003 () Bool)

(assert (=> b!153066 m!138003))

(assert (=> b!153066 m!138003))

(declare-fun m!138005 () Bool)

(assert (=> b!153066 m!138005))

(declare-fun m!138007 () Bool)

(assert (=> b!153082 m!138007))

(declare-fun m!138009 () Bool)

(assert (=> b!153078 m!138009))

(declare-fun m!138011 () Bool)

(assert (=> b!153078 m!138011))

(declare-fun m!138013 () Bool)

(assert (=> start!16382 m!138013))

(declare-fun m!138015 () Bool)

(assert (=> b!153063 m!138015))

(declare-fun m!138017 () Bool)

(assert (=> b!153073 m!138017))

(declare-fun m!138019 () Bool)

(assert (=> b!153076 m!138019))

(assert (=> b!153076 m!138019))

(declare-fun m!138021 () Bool)

(assert (=> b!153076 m!138021))

(declare-fun m!138023 () Bool)

(assert (=> b!153076 m!138023))

(declare-fun m!138025 () Bool)

(assert (=> b!153079 m!138025))

(declare-fun m!138027 () Bool)

(assert (=> b!153079 m!138027))

(declare-fun m!138029 () Bool)

(assert (=> b!153064 m!138029))

(declare-fun m!138031 () Bool)

(assert (=> b!153064 m!138031))

(declare-fun m!138033 () Bool)

(assert (=> b!153070 m!138033))

(declare-fun m!138035 () Bool)

(assert (=> b!153065 m!138035))

(declare-fun m!138037 () Bool)

(assert (=> b!153065 m!138037))

(declare-fun m!138039 () Bool)

(assert (=> b!153068 m!138039))

(declare-fun m!138041 () Bool)

(assert (=> b!153067 m!138041))

(declare-fun m!138043 () Bool)

(assert (=> b!153069 m!138043))

(declare-fun m!138045 () Bool)

(assert (=> b!153083 m!138045))

(declare-fun m!138047 () Bool)

(assert (=> b!153083 m!138047))

(declare-fun m!138049 () Bool)

(assert (=> b!153083 m!138049))

(declare-fun m!138051 () Bool)

(assert (=> b!153083 m!138051))

(assert (=> b!153083 m!138049))

(assert (=> b!153083 m!138051))

(assert (=> b!153083 m!138045))

(declare-fun m!138053 () Bool)

(assert (=> b!153083 m!138053))

(declare-fun m!138055 () Bool)

(assert (=> b!153083 m!138055))

(declare-fun m!138057 () Bool)

(assert (=> b!153083 m!138057))

(assert (=> b!153083 m!138055))

(check-sat b_and!8959 (not b!153079) (not b_next!5617) (not b_next!5609) (not b!153064) (not b!153082) (not b_next!5615) (not b!153068) (not b_next!5619) (not b_next!5611) (not b!153063) (not b!153076) b_and!8955 b_and!8953 (not b!153077) b_and!8957 (not b!153070) (not b!153078) b_and!8961 (not b!153066) b_and!8963 (not b!153083) (not b!153067) (not b_next!5613) (not b!153069) (not b!153084) (not start!16382) (not b!153065) (not b!153073))
(check-sat b_and!8959 (not b_next!5617) (not b_next!5609) b_and!8953 b_and!8957 b_and!8961 b_and!8963 (not b_next!5615) (not b_next!5619) (not b_next!5613) (not b_next!5611) b_and!8955)

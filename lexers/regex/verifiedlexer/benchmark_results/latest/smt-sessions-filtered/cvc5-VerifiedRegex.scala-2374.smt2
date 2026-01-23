; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!118652 () Bool)

(assert start!118652)

(declare-fun b!1334169 () Bool)

(declare-fun b_free!32375 () Bool)

(declare-fun b_next!33079 () Bool)

(assert (=> b!1334169 (= b_free!32375 (not b_next!33079))))

(declare-fun tp!385805 () Bool)

(declare-fun b_and!89139 () Bool)

(assert (=> b!1334169 (= tp!385805 b_and!89139)))

(declare-fun b_free!32377 () Bool)

(declare-fun b_next!33081 () Bool)

(assert (=> b!1334169 (= b_free!32377 (not b_next!33081))))

(declare-fun tp!385803 () Bool)

(declare-fun b_and!89141 () Bool)

(assert (=> b!1334169 (= tp!385803 b_and!89141)))

(declare-fun b!1334163 () Bool)

(declare-fun b_free!32379 () Bool)

(declare-fun b_next!33083 () Bool)

(assert (=> b!1334163 (= b_free!32379 (not b_next!33083))))

(declare-fun tp!385801 () Bool)

(declare-fun b_and!89143 () Bool)

(assert (=> b!1334163 (= tp!385801 b_and!89143)))

(declare-fun b_free!32381 () Bool)

(declare-fun b_next!33085 () Bool)

(assert (=> b!1334163 (= b_free!32381 (not b_next!33085))))

(declare-fun tp!385800 () Bool)

(declare-fun b_and!89145 () Bool)

(assert (=> b!1334163 (= tp!385800 b_and!89145)))

(declare-fun b!1334172 () Bool)

(declare-fun b_free!32383 () Bool)

(declare-fun b_next!33087 () Bool)

(assert (=> b!1334172 (= b_free!32383 (not b_next!33087))))

(declare-fun tp!385799 () Bool)

(declare-fun b_and!89147 () Bool)

(assert (=> b!1334172 (= tp!385799 b_and!89147)))

(declare-fun b_free!32385 () Bool)

(declare-fun b_next!33089 () Bool)

(assert (=> b!1334172 (= b_free!32385 (not b_next!33089))))

(declare-fun tp!385802 () Bool)

(declare-fun b_and!89149 () Bool)

(assert (=> b!1334172 (= tp!385802 b_and!89149)))

(declare-fun e!854645 () Bool)

(assert (=> b!1334163 (= e!854645 (and tp!385801 tp!385800))))

(declare-fun b!1334164 () Bool)

(declare-fun res!601683 () Bool)

(declare-fun e!854643 () Bool)

(assert (=> b!1334164 (=> (not res!601683) (not e!854643))))

(declare-datatypes ((List!13665 0))(
  ( (Nil!13599) (Cons!13599 (h!19000 (_ BitVec 16)) (t!119110 List!13665)) )
))
(declare-datatypes ((TokenValue!2446 0))(
  ( (FloatLiteralValue!4892 (text!17567 List!13665)) (TokenValueExt!2445 (__x!8721 Int)) (Broken!12230 (value!76754 List!13665)) (Object!2511) (End!2446) (Def!2446) (Underscore!2446) (Match!2446) (Else!2446) (Error!2446) (Case!2446) (If!2446) (Extends!2446) (Abstract!2446) (Class!2446) (Val!2446) (DelimiterValue!4892 (del!2506 List!13665)) (KeywordValue!2452 (value!76755 List!13665)) (CommentValue!4892 (value!76756 List!13665)) (WhitespaceValue!4892 (value!76757 List!13665)) (IndentationValue!2446 (value!76758 List!13665)) (String!16467) (Int32!2446) (Broken!12231 (value!76759 List!13665)) (Boolean!2447) (Unit!19751) (OperatorValue!2449 (op!2506 List!13665)) (IdentifierValue!4892 (value!76760 List!13665)) (IdentifierValue!4893 (value!76761 List!13665)) (WhitespaceValue!4893 (value!76762 List!13665)) (True!4892) (False!4892) (Broken!12232 (value!76763 List!13665)) (Broken!12233 (value!76764 List!13665)) (True!4893) (RightBrace!2446) (RightBracket!2446) (Colon!2446) (Null!2446) (Comma!2446) (LeftBracket!2446) (False!4893) (LeftBrace!2446) (ImaginaryLiteralValue!2446 (text!17568 List!13665)) (StringLiteralValue!7338 (value!76765 List!13665)) (EOFValue!2446 (value!76766 List!13665)) (IdentValue!2446 (value!76767 List!13665)) (DelimiterValue!4893 (value!76768 List!13665)) (DedentValue!2446 (value!76769 List!13665)) (NewLineValue!2446 (value!76770 List!13665)) (IntegerValue!7338 (value!76771 (_ BitVec 32)) (text!17569 List!13665)) (IntegerValue!7339 (value!76772 Int) (text!17570 List!13665)) (Times!2446) (Or!2446) (Equal!2446) (Minus!2446) (Broken!12234 (value!76773 List!13665)) (And!2446) (Div!2446) (LessEqual!2446) (Mod!2446) (Concat!6116) (Not!2446) (Plus!2446) (SpaceValue!2446 (value!76774 List!13665)) (IntegerValue!7340 (value!76775 Int) (text!17571 List!13665)) (StringLiteralValue!7339 (text!17572 List!13665)) (FloatLiteralValue!4893 (text!17573 List!13665)) (BytesLiteralValue!2446 (value!76776 List!13665)) (CommentValue!4893 (value!76777 List!13665)) (StringLiteralValue!7340 (value!76778 List!13665)) (ErrorTokenValue!2446 (msg!2507 List!13665)) )
))
(declare-datatypes ((C!7630 0))(
  ( (C!7631 (val!4375 Int)) )
))
(declare-datatypes ((List!13666 0))(
  ( (Nil!13600) (Cons!13600 (h!19001 C!7630) (t!119111 List!13666)) )
))
(declare-datatypes ((IArray!8969 0))(
  ( (IArray!8970 (innerList!4542 List!13666)) )
))
(declare-datatypes ((String!16468 0))(
  ( (String!16469 (value!76779 String)) )
))
(declare-datatypes ((Conc!4482 0))(
  ( (Node!4482 (left!11678 Conc!4482) (right!12008 Conc!4482) (csize!9194 Int) (cheight!4693 Int)) (Leaf!6857 (xs!7197 IArray!8969) (csize!9195 Int)) (Empty!4482) )
))
(declare-datatypes ((BalanceConc!8904 0))(
  ( (BalanceConc!8905 (c!218495 Conc!4482)) )
))
(declare-datatypes ((Regex!3670 0))(
  ( (ElementMatch!3670 (c!218496 C!7630)) (Concat!6117 (regOne!7852 Regex!3670) (regTwo!7852 Regex!3670)) (EmptyExpr!3670) (Star!3670 (reg!3999 Regex!3670)) (EmptyLang!3670) (Union!3670 (regOne!7853 Regex!3670) (regTwo!7853 Regex!3670)) )
))
(declare-datatypes ((TokenValueInjection!4552 0))(
  ( (TokenValueInjection!4553 (toValue!3587 Int) (toChars!3446 Int)) )
))
(declare-datatypes ((Rule!4512 0))(
  ( (Rule!4513 (regex!2356 Regex!3670) (tag!2618 String!16468) (isSeparator!2356 Bool) (transformation!2356 TokenValueInjection!4552)) )
))
(declare-datatypes ((List!13667 0))(
  ( (Nil!13601) (Cons!13601 (h!19002 Rule!4512) (t!119112 List!13667)) )
))
(declare-fun rules!2550 () List!13667)

(declare-fun isEmpty!8108 (List!13667) Bool)

(assert (=> b!1334164 (= res!601683 (not (isEmpty!8108 rules!2550)))))

(declare-fun b!1334165 () Bool)

(declare-fun e!854644 () Bool)

(declare-fun e!854653 () Bool)

(declare-fun tp!385808 () Bool)

(assert (=> b!1334165 (= e!854644 (and e!854653 tp!385808))))

(declare-fun b!1334166 () Bool)

(declare-fun res!601687 () Bool)

(assert (=> b!1334166 (=> (not res!601687) (not e!854643))))

(declare-datatypes ((Token!4374 0))(
  ( (Token!4375 (value!76780 TokenValue!2446) (rule!4101 Rule!4512) (size!11066 Int) (originalCharacters!3218 List!13666)) )
))
(declare-fun t1!34 () Token!4374)

(declare-datatypes ((LexerInterface!2051 0))(
  ( (LexerInterfaceExt!2048 (__x!8722 Int)) (Lexer!2049) )
))
(declare-fun thiss!19762 () LexerInterface!2051)

(declare-fun rulesProduceIndividualToken!1020 (LexerInterface!2051 List!13667 Token!4374) Bool)

(assert (=> b!1334166 (= res!601687 (rulesProduceIndividualToken!1020 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1334167 () Bool)

(declare-fun res!601689 () Bool)

(assert (=> b!1334167 (=> (not res!601689) (not e!854643))))

(declare-fun rulesInvariant!1921 (LexerInterface!2051 List!13667) Bool)

(assert (=> b!1334167 (= res!601689 (rulesInvariant!1921 thiss!19762 rules!2550))))

(declare-fun e!854650 () Bool)

(declare-fun b!1334168 () Bool)

(declare-fun e!854646 () Bool)

(declare-fun tp!385806 () Bool)

(declare-fun inv!17929 (String!16468) Bool)

(declare-fun inv!17932 (TokenValueInjection!4552) Bool)

(assert (=> b!1334168 (= e!854650 (and tp!385806 (inv!17929 (tag!2618 (rule!4101 t1!34))) (inv!17932 (transformation!2356 (rule!4101 t1!34))) e!854646))))

(assert (=> b!1334169 (= e!854646 (and tp!385805 tp!385803))))

(declare-fun b!1334170 () Bool)

(declare-fun res!601682 () Bool)

(assert (=> b!1334170 (=> (not res!601682) (not e!854643))))

(declare-fun t2!34 () Token!4374)

(declare-fun size!11067 (BalanceConc!8904) Int)

(declare-fun charsOf!1328 (Token!4374) BalanceConc!8904)

(assert (=> b!1334170 (= res!601682 (> (size!11067 (charsOf!1328 t2!34)) 0))))

(declare-fun b!1334171 () Bool)

(declare-fun res!601688 () Bool)

(assert (=> b!1334171 (=> (not res!601688) (not e!854643))))

(assert (=> b!1334171 (= res!601688 (rulesProduceIndividualToken!1020 thiss!19762 rules!2550 t2!34))))

(declare-fun res!601686 () Bool)

(assert (=> start!118652 (=> (not res!601686) (not e!854643))))

(assert (=> start!118652 (= res!601686 (is-Lexer!2049 thiss!19762))))

(assert (=> start!118652 e!854643))

(assert (=> start!118652 true))

(assert (=> start!118652 e!854644))

(declare-fun e!854648 () Bool)

(declare-fun inv!17933 (Token!4374) Bool)

(assert (=> start!118652 (and (inv!17933 t1!34) e!854648)))

(declare-fun e!854652 () Bool)

(assert (=> start!118652 (and (inv!17933 t2!34) e!854652)))

(declare-fun b!1334162 () Bool)

(declare-fun res!601684 () Bool)

(assert (=> b!1334162 (=> (not res!601684) (not e!854643))))

(declare-fun sepAndNonSepRulesDisjointChars!729 (List!13667 List!13667) Bool)

(assert (=> b!1334162 (= res!601684 (sepAndNonSepRulesDisjointChars!729 rules!2550 rules!2550))))

(declare-fun e!854642 () Bool)

(assert (=> b!1334172 (= e!854642 (and tp!385799 tp!385802))))

(declare-fun b!1334173 () Bool)

(declare-fun tp!385807 () Bool)

(declare-fun inv!21 (TokenValue!2446) Bool)

(assert (=> b!1334173 (= e!854648 (and (inv!21 (value!76780 t1!34)) e!854650 tp!385807))))

(declare-fun e!854641 () Bool)

(declare-fun b!1334174 () Bool)

(declare-fun tp!385798 () Bool)

(assert (=> b!1334174 (= e!854641 (and tp!385798 (inv!17929 (tag!2618 (rule!4101 t2!34))) (inv!17932 (transformation!2356 (rule!4101 t2!34))) e!854645))))

(declare-fun b!1334175 () Bool)

(declare-fun res!601685 () Bool)

(assert (=> b!1334175 (=> (not res!601685) (not e!854643))))

(assert (=> b!1334175 (= res!601685 (not (= (isSeparator!2356 (rule!4101 t1!34)) (isSeparator!2356 (rule!4101 t2!34)))))))

(declare-fun b!1334176 () Bool)

(assert (=> b!1334176 (= e!854643 false)))

(declare-fun lt!441885 () Bool)

(declare-fun separableTokensPredicate!334 (LexerInterface!2051 Token!4374 Token!4374 List!13667) Bool)

(assert (=> b!1334176 (= lt!441885 (separableTokensPredicate!334 thiss!19762 t1!34 t2!34 rules!2550))))

(declare-fun b!1334177 () Bool)

(declare-fun tp!385797 () Bool)

(assert (=> b!1334177 (= e!854652 (and (inv!21 (value!76780 t2!34)) e!854641 tp!385797))))

(declare-fun tp!385804 () Bool)

(declare-fun b!1334178 () Bool)

(assert (=> b!1334178 (= e!854653 (and tp!385804 (inv!17929 (tag!2618 (h!19002 rules!2550))) (inv!17932 (transformation!2356 (h!19002 rules!2550))) e!854642))))

(assert (= (and start!118652 res!601686) b!1334164))

(assert (= (and b!1334164 res!601683) b!1334167))

(assert (= (and b!1334167 res!601689) b!1334166))

(assert (= (and b!1334166 res!601687) b!1334171))

(assert (= (and b!1334171 res!601688) b!1334175))

(assert (= (and b!1334175 res!601685) b!1334170))

(assert (= (and b!1334170 res!601682) b!1334162))

(assert (= (and b!1334162 res!601684) b!1334176))

(assert (= b!1334178 b!1334172))

(assert (= b!1334165 b!1334178))

(assert (= (and start!118652 (is-Cons!13601 rules!2550)) b!1334165))

(assert (= b!1334168 b!1334169))

(assert (= b!1334173 b!1334168))

(assert (= start!118652 b!1334173))

(assert (= b!1334174 b!1334163))

(assert (= b!1334177 b!1334174))

(assert (= start!118652 b!1334177))

(declare-fun m!1491503 () Bool)

(assert (=> b!1334174 m!1491503))

(declare-fun m!1491505 () Bool)

(assert (=> b!1334174 m!1491505))

(declare-fun m!1491507 () Bool)

(assert (=> b!1334173 m!1491507))

(declare-fun m!1491509 () Bool)

(assert (=> b!1334170 m!1491509))

(assert (=> b!1334170 m!1491509))

(declare-fun m!1491511 () Bool)

(assert (=> b!1334170 m!1491511))

(declare-fun m!1491513 () Bool)

(assert (=> b!1334176 m!1491513))

(declare-fun m!1491515 () Bool)

(assert (=> start!118652 m!1491515))

(declare-fun m!1491517 () Bool)

(assert (=> start!118652 m!1491517))

(declare-fun m!1491519 () Bool)

(assert (=> b!1334178 m!1491519))

(declare-fun m!1491521 () Bool)

(assert (=> b!1334178 m!1491521))

(declare-fun m!1491523 () Bool)

(assert (=> b!1334164 m!1491523))

(declare-fun m!1491525 () Bool)

(assert (=> b!1334171 m!1491525))

(declare-fun m!1491527 () Bool)

(assert (=> b!1334162 m!1491527))

(declare-fun m!1491529 () Bool)

(assert (=> b!1334177 m!1491529))

(declare-fun m!1491531 () Bool)

(assert (=> b!1334166 m!1491531))

(declare-fun m!1491533 () Bool)

(assert (=> b!1334167 m!1491533))

(declare-fun m!1491535 () Bool)

(assert (=> b!1334168 m!1491535))

(declare-fun m!1491537 () Bool)

(assert (=> b!1334168 m!1491537))

(push 1)

(assert (not b_next!33087))

(assert b_and!89141)

(assert (not b_next!33081))

(assert (not b!1334166))

(assert b_and!89149)

(assert (not b!1334176))

(assert (not b!1334177))

(assert (not b_next!33089))

(assert (not b!1334174))

(assert (not b!1334171))

(assert (not b!1334178))

(assert (not b!1334168))

(assert b_and!89147)

(assert (not b_next!33083))

(assert (not b!1334165))

(assert (not start!118652))

(assert b_and!89145)

(assert (not b!1334173))

(assert (not b!1334164))

(assert (not b!1334162))

(assert (not b!1334170))

(assert (not b!1334167))

(assert b_and!89139)

(assert (not b_next!33079))

(assert b_and!89143)

(assert (not b_next!33085))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!33087))

(assert b_and!89141)

(assert (not b_next!33081))

(assert b_and!89145)

(assert b_and!89149)

(assert (not b_next!33089))

(assert b_and!89147)

(assert (not b_next!33083))

(assert b_and!89139)

(assert (not b_next!33079))

(assert b_and!89143)

(assert (not b_next!33085))

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16386 () Bool)

(assert start!16386)

(declare-fun b!153190 () Bool)

(declare-fun b_free!5633 () Bool)

(declare-fun b_next!5633 () Bool)

(assert (=> b!153190 (= b_free!5633 (not b_next!5633))))

(declare-fun tp!79448 () Bool)

(declare-fun b_and!8977 () Bool)

(assert (=> b!153190 (= tp!79448 b_and!8977)))

(declare-fun b_free!5635 () Bool)

(declare-fun b_next!5635 () Bool)

(assert (=> b!153190 (= b_free!5635 (not b_next!5635))))

(declare-fun tp!79454 () Bool)

(declare-fun b_and!8979 () Bool)

(assert (=> b!153190 (= tp!79454 b_and!8979)))

(declare-fun b!153196 () Bool)

(declare-fun b_free!5637 () Bool)

(declare-fun b_next!5637 () Bool)

(assert (=> b!153196 (= b_free!5637 (not b_next!5637))))

(declare-fun tp!79447 () Bool)

(declare-fun b_and!8981 () Bool)

(assert (=> b!153196 (= tp!79447 b_and!8981)))

(declare-fun b_free!5639 () Bool)

(declare-fun b_next!5639 () Bool)

(assert (=> b!153196 (= b_free!5639 (not b_next!5639))))

(declare-fun tp!79456 () Bool)

(declare-fun b_and!8983 () Bool)

(assert (=> b!153196 (= tp!79456 b_and!8983)))

(declare-fun b!153207 () Bool)

(declare-fun b_free!5641 () Bool)

(declare-fun b_next!5641 () Bool)

(assert (=> b!153207 (= b_free!5641 (not b_next!5641))))

(declare-fun tp!79455 () Bool)

(declare-fun b_and!8985 () Bool)

(assert (=> b!153207 (= tp!79455 b_and!8985)))

(declare-fun b_free!5643 () Bool)

(declare-fun b_next!5643 () Bool)

(assert (=> b!153207 (= b_free!5643 (not b_next!5643))))

(declare-fun tp!79446 () Bool)

(declare-fun b_and!8987 () Bool)

(assert (=> b!153207 (= tp!79446 b_and!8987)))

(declare-fun res!70065 () Bool)

(declare-fun e!91698 () Bool)

(assert (=> start!16386 (=> (not res!70065) (not e!91698))))

(declare-datatypes ((LexerInterface!349 0))(
  ( (LexerInterfaceExt!346 (__x!2457 Int)) (Lexer!347) )
))
(declare-fun thiss!17480 () LexerInterface!349)

(get-info :version)

(assert (=> start!16386 (= res!70065 ((_ is Lexer!347) thiss!17480))))

(assert (=> start!16386 e!91698))

(assert (=> start!16386 true))

(declare-fun e!91690 () Bool)

(assert (=> start!16386 e!91690))

(declare-datatypes ((List!2667 0))(
  ( (Nil!2657) (Cons!2657 (h!8054 (_ BitVec 16)) (t!25067 List!2667)) )
))
(declare-datatypes ((TokenValue!485 0))(
  ( (FloatLiteralValue!970 (text!3840 List!2667)) (TokenValueExt!484 (__x!2458 Int)) (Broken!2425 (value!17485 List!2667)) (Object!494) (End!485) (Def!485) (Underscore!485) (Match!485) (Else!485) (Error!485) (Case!485) (If!485) (Extends!485) (Abstract!485) (Class!485) (Val!485) (DelimiterValue!970 (del!545 List!2667)) (KeywordValue!491 (value!17486 List!2667)) (CommentValue!970 (value!17487 List!2667)) (WhitespaceValue!970 (value!17488 List!2667)) (IndentationValue!485 (value!17489 List!2667)) (String!3504) (Int32!485) (Broken!2426 (value!17490 List!2667)) (Boolean!486) (Unit!2051) (OperatorValue!488 (op!545 List!2667)) (IdentifierValue!970 (value!17491 List!2667)) (IdentifierValue!971 (value!17492 List!2667)) (WhitespaceValue!971 (value!17493 List!2667)) (True!970) (False!970) (Broken!2427 (value!17494 List!2667)) (Broken!2428 (value!17495 List!2667)) (True!971) (RightBrace!485) (RightBracket!485) (Colon!485) (Null!485) (Comma!485) (LeftBracket!485) (False!971) (LeftBrace!485) (ImaginaryLiteralValue!485 (text!3841 List!2667)) (StringLiteralValue!1455 (value!17496 List!2667)) (EOFValue!485 (value!17497 List!2667)) (IdentValue!485 (value!17498 List!2667)) (DelimiterValue!971 (value!17499 List!2667)) (DedentValue!485 (value!17500 List!2667)) (NewLineValue!485 (value!17501 List!2667)) (IntegerValue!1455 (value!17502 (_ BitVec 32)) (text!3842 List!2667)) (IntegerValue!1456 (value!17503 Int) (text!3843 List!2667)) (Times!485) (Or!485) (Equal!485) (Minus!485) (Broken!2429 (value!17504 List!2667)) (And!485) (Div!485) (LessEqual!485) (Mod!485) (Concat!1172) (Not!485) (Plus!485) (SpaceValue!485 (value!17505 List!2667)) (IntegerValue!1457 (value!17506 Int) (text!3844 List!2667)) (StringLiteralValue!1456 (text!3845 List!2667)) (FloatLiteralValue!971 (text!3846 List!2667)) (BytesLiteralValue!485 (value!17507 List!2667)) (CommentValue!971 (value!17508 List!2667)) (StringLiteralValue!1457 (value!17509 List!2667)) (ErrorTokenValue!485 (msg!546 List!2667)) )
))
(declare-datatypes ((C!2296 0))(
  ( (C!2297 (val!1034 Int)) )
))
(declare-datatypes ((List!2668 0))(
  ( (Nil!2658) (Cons!2658 (h!8055 C!2296) (t!25068 List!2668)) )
))
(declare-datatypes ((IArray!1497 0))(
  ( (IArray!1498 (innerList!806 List!2668)) )
))
(declare-datatypes ((Conc!748 0))(
  ( (Node!748 (left!2006 Conc!748) (right!2336 Conc!748) (csize!1726 Int) (cheight!959 Int)) (Leaf!1319 (xs!3343 IArray!1497) (csize!1727 Int)) (Empty!748) )
))
(declare-datatypes ((BalanceConc!1504 0))(
  ( (BalanceConc!1505 (c!30881 Conc!748)) )
))
(declare-datatypes ((TokenValueInjection!742 0))(
  ( (TokenValueInjection!743 (toValue!1102 Int) (toChars!961 Int)) )
))
(declare-datatypes ((String!3505 0))(
  ( (String!3506 (value!17510 String)) )
))
(declare-datatypes ((Regex!687 0))(
  ( (ElementMatch!687 (c!30882 C!2296)) (Concat!1173 (regOne!1886 Regex!687) (regTwo!1886 Regex!687)) (EmptyExpr!687) (Star!687 (reg!1016 Regex!687)) (EmptyLang!687) (Union!687 (regOne!1887 Regex!687) (regTwo!1887 Regex!687)) )
))
(declare-datatypes ((Rule!726 0))(
  ( (Rule!727 (regex!463 Regex!687) (tag!641 String!3505) (isSeparator!463 Bool) (transformation!463 TokenValueInjection!742)) )
))
(declare-datatypes ((Token!670 0))(
  ( (Token!671 (value!17511 TokenValue!485) (rule!970 Rule!726) (size!2259 Int) (originalCharacters!506 List!2668)) )
))
(declare-fun separatorToken!170 () Token!670)

(declare-fun e!91697 () Bool)

(declare-fun inv!3457 (Token!670) Bool)

(assert (=> start!16386 (and (inv!3457 separatorToken!170) e!91697)))

(declare-fun e!91701 () Bool)

(assert (=> start!16386 e!91701))

(declare-fun e!91699 () Bool)

(assert (=> b!153190 (= e!91699 (and tp!79448 tp!79454))))

(declare-fun b!153191 () Bool)

(declare-fun e!91693 () Bool)

(assert (=> b!153191 (= e!91698 e!91693)))

(declare-fun res!70067 () Bool)

(assert (=> b!153191 (=> (not res!70067) (not e!91693))))

(declare-datatypes ((List!2669 0))(
  ( (Nil!2659) (Cons!2659 (h!8056 Rule!726) (t!25069 List!2669)) )
))
(declare-fun rules!1920 () List!2669)

(declare-datatypes ((List!2670 0))(
  ( (Nil!2660) (Cons!2660 (h!8057 Token!670) (t!25070 List!2670)) )
))
(declare-datatypes ((IArray!1499 0))(
  ( (IArray!1500 (innerList!807 List!2670)) )
))
(declare-datatypes ((Conc!749 0))(
  ( (Node!749 (left!2007 Conc!749) (right!2337 Conc!749) (csize!1728 Int) (cheight!960 Int)) (Leaf!1320 (xs!3344 IArray!1499) (csize!1729 Int)) (Empty!749) )
))
(declare-datatypes ((BalanceConc!1506 0))(
  ( (BalanceConc!1507 (c!30883 Conc!749)) )
))
(declare-fun lt!44956 () BalanceConc!1506)

(declare-fun rulesProduceEachTokenIndividually!141 (LexerInterface!349 List!2669 BalanceConc!1506) Bool)

(assert (=> b!153191 (= res!70067 (rulesProduceEachTokenIndividually!141 thiss!17480 rules!1920 lt!44956))))

(declare-fun tokens!465 () List!2670)

(declare-fun seqFromList!303 (List!2670) BalanceConc!1506)

(assert (=> b!153191 (= lt!44956 (seqFromList!303 tokens!465))))

(declare-fun b!153192 () Bool)

(declare-fun res!70072 () Bool)

(declare-fun e!91700 () Bool)

(assert (=> b!153192 (=> (not res!70072) (not e!91700))))

(declare-fun lt!44954 () List!2668)

(declare-fun lt!44952 () List!2668)

(declare-fun list!937 (BalanceConc!1504) List!2668)

(declare-fun seqFromList!304 (List!2668) BalanceConc!1504)

(assert (=> b!153192 (= res!70072 (= (list!937 (seqFromList!304 lt!44954)) lt!44952))))

(declare-fun b!153193 () Bool)

(declare-fun res!70068 () Bool)

(assert (=> b!153193 (=> (not res!70068) (not e!91693))))

(declare-fun rulesProduceIndividualToken!98 (LexerInterface!349 List!2669 Token!670) Bool)

(assert (=> b!153193 (= res!70068 (rulesProduceIndividualToken!98 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!153194 () Bool)

(declare-fun e!91689 () Bool)

(declare-fun tp!79445 () Bool)

(declare-fun inv!3454 (String!3505) Bool)

(declare-fun inv!3458 (TokenValueInjection!742) Bool)

(assert (=> b!153194 (= e!91689 (and tp!79445 (inv!3454 (tag!641 (h!8056 rules!1920))) (inv!3458 (transformation!463 (h!8056 rules!1920))) e!91699))))

(declare-fun b!153195 () Bool)

(declare-fun res!70071 () Bool)

(assert (=> b!153195 (=> (not res!70071) (not e!91693))))

(assert (=> b!153195 (= res!70071 (isSeparator!463 (rule!970 separatorToken!170)))))

(declare-fun e!91703 () Bool)

(assert (=> b!153196 (= e!91703 (and tp!79447 tp!79456))))

(declare-fun b!153197 () Bool)

(declare-fun res!70069 () Bool)

(assert (=> b!153197 (=> (not res!70069) (not e!91698))))

(declare-fun rulesInvariant!315 (LexerInterface!349 List!2669) Bool)

(assert (=> b!153197 (= res!70069 (rulesInvariant!315 thiss!17480 rules!1920))))

(declare-fun b!153198 () Bool)

(declare-fun res!70073 () Bool)

(assert (=> b!153198 (=> (not res!70073) (not e!91693))))

(assert (=> b!153198 (= res!70073 ((_ is Cons!2660) tokens!465))))

(declare-fun b!153199 () Bool)

(declare-fun e!91692 () Bool)

(declare-fun tp!79457 () Bool)

(assert (=> b!153199 (= e!91692 (and tp!79457 (inv!3454 (tag!641 (rule!970 separatorToken!170))) (inv!3458 (transformation!463 (rule!970 separatorToken!170))) e!91703))))

(declare-fun b!153200 () Bool)

(declare-fun tp!79452 () Bool)

(assert (=> b!153200 (= e!91690 (and e!91689 tp!79452))))

(declare-fun b!153201 () Bool)

(declare-fun res!70070 () Bool)

(assert (=> b!153201 (=> (not res!70070) (not e!91693))))

(declare-fun lambda!4000 () Int)

(declare-fun forall!459 (List!2670 Int) Bool)

(assert (=> b!153201 (= res!70070 (forall!459 tokens!465 lambda!4000))))

(declare-fun b!153202 () Bool)

(declare-fun res!70064 () Bool)

(assert (=> b!153202 (=> (not res!70064) (not e!91698))))

(declare-fun isEmpty!1054 (List!2669) Bool)

(assert (=> b!153202 (= res!70064 (not (isEmpty!1054 rules!1920)))))

(declare-fun tp!79450 () Bool)

(declare-fun b!153203 () Bool)

(declare-fun inv!21 (TokenValue!485) Bool)

(assert (=> b!153203 (= e!91697 (and (inv!21 (value!17511 separatorToken!170)) e!91692 tp!79450))))

(declare-fun e!91694 () Bool)

(declare-fun tp!79451 () Bool)

(declare-fun e!91688 () Bool)

(declare-fun b!153204 () Bool)

(assert (=> b!153204 (= e!91694 (and (inv!21 (value!17511 (h!8057 tokens!465))) e!91688 tp!79451))))

(declare-fun tp!79453 () Bool)

(declare-fun b!153205 () Bool)

(assert (=> b!153205 (= e!91701 (and (inv!3457 (h!8057 tokens!465)) e!91694 tp!79453))))

(declare-fun b!153206 () Bool)

(assert (=> b!153206 (= e!91693 e!91700)))

(declare-fun res!70066 () Bool)

(assert (=> b!153206 (=> (not res!70066) (not e!91700))))

(assert (=> b!153206 (= res!70066 (= lt!44954 lt!44952))))

(declare-fun printWithSeparatorTokenWhenNeededRec!32 (LexerInterface!349 List!2669 BalanceConc!1506 Token!670 Int) BalanceConc!1504)

(assert (=> b!153206 (= lt!44952 (list!937 (printWithSeparatorTokenWhenNeededRec!32 thiss!17480 rules!1920 lt!44956 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!42 (LexerInterface!349 List!2669 List!2670 Token!670) List!2668)

(assert (=> b!153206 (= lt!44954 (printWithSeparatorTokenWhenNeededList!42 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!91696 () Bool)

(assert (=> b!153207 (= e!91696 (and tp!79455 tp!79446))))

(declare-fun b!153208 () Bool)

(assert (=> b!153208 (= e!91700 (not true))))

(declare-fun lt!44950 () List!2668)

(declare-fun lt!44949 () List!2668)

(declare-fun lt!44955 () List!2668)

(declare-fun lt!44953 () List!2668)

(declare-fun ++!574 (List!2668 List!2668) List!2668)

(assert (=> b!153208 (= (++!574 (++!574 lt!44950 lt!44949) lt!44953) (++!574 lt!44950 lt!44955))))

(declare-datatypes ((Unit!2052 0))(
  ( (Unit!2053) )
))
(declare-fun lt!44951 () Unit!2052)

(declare-fun lemmaConcatAssociativity!144 (List!2668 List!2668 List!2668) Unit!2052)

(assert (=> b!153208 (= lt!44951 (lemmaConcatAssociativity!144 lt!44950 lt!44949 lt!44953))))

(declare-fun charsOf!118 (Token!670) BalanceConc!1504)

(assert (=> b!153208 (= lt!44950 (list!937 (charsOf!118 (h!8057 tokens!465))))))

(assert (=> b!153208 (= lt!44955 (++!574 lt!44949 lt!44953))))

(assert (=> b!153208 (= lt!44953 (printWithSeparatorTokenWhenNeededList!42 thiss!17480 rules!1920 (t!25070 tokens!465) separatorToken!170))))

(assert (=> b!153208 (= lt!44949 (list!937 (charsOf!118 separatorToken!170)))))

(declare-fun b!153209 () Bool)

(declare-fun tp!79449 () Bool)

(assert (=> b!153209 (= e!91688 (and tp!79449 (inv!3454 (tag!641 (rule!970 (h!8057 tokens!465)))) (inv!3458 (transformation!463 (rule!970 (h!8057 tokens!465)))) e!91696))))

(declare-fun b!153210 () Bool)

(declare-fun res!70063 () Bool)

(assert (=> b!153210 (=> (not res!70063) (not e!91693))))

(declare-fun sepAndNonSepRulesDisjointChars!52 (List!2669 List!2669) Bool)

(assert (=> b!153210 (= res!70063 (sepAndNonSepRulesDisjointChars!52 rules!1920 rules!1920))))

(assert (= (and start!16386 res!70065) b!153202))

(assert (= (and b!153202 res!70064) b!153197))

(assert (= (and b!153197 res!70069) b!153191))

(assert (= (and b!153191 res!70067) b!153193))

(assert (= (and b!153193 res!70068) b!153195))

(assert (= (and b!153195 res!70071) b!153201))

(assert (= (and b!153201 res!70070) b!153210))

(assert (= (and b!153210 res!70063) b!153198))

(assert (= (and b!153198 res!70073) b!153206))

(assert (= (and b!153206 res!70066) b!153192))

(assert (= (and b!153192 res!70072) b!153208))

(assert (= b!153194 b!153190))

(assert (= b!153200 b!153194))

(assert (= (and start!16386 ((_ is Cons!2659) rules!1920)) b!153200))

(assert (= b!153199 b!153196))

(assert (= b!153203 b!153199))

(assert (= start!16386 b!153203))

(assert (= b!153209 b!153207))

(assert (= b!153204 b!153209))

(assert (= b!153205 b!153204))

(assert (= (and start!16386 ((_ is Cons!2660) tokens!465)) b!153205))

(declare-fun m!138123 () Bool)

(assert (=> b!153193 m!138123))

(declare-fun m!138125 () Bool)

(assert (=> b!153202 m!138125))

(declare-fun m!138127 () Bool)

(assert (=> b!153208 m!138127))

(declare-fun m!138129 () Bool)

(assert (=> b!153208 m!138129))

(declare-fun m!138131 () Bool)

(assert (=> b!153208 m!138131))

(declare-fun m!138133 () Bool)

(assert (=> b!153208 m!138133))

(declare-fun m!138135 () Bool)

(assert (=> b!153208 m!138135))

(declare-fun m!138137 () Bool)

(assert (=> b!153208 m!138137))

(assert (=> b!153208 m!138127))

(declare-fun m!138139 () Bool)

(assert (=> b!153208 m!138139))

(assert (=> b!153208 m!138133))

(declare-fun m!138141 () Bool)

(assert (=> b!153208 m!138141))

(assert (=> b!153208 m!138141))

(declare-fun m!138143 () Bool)

(assert (=> b!153208 m!138143))

(declare-fun m!138145 () Bool)

(assert (=> b!153208 m!138145))

(declare-fun m!138147 () Bool)

(assert (=> b!153192 m!138147))

(assert (=> b!153192 m!138147))

(declare-fun m!138149 () Bool)

(assert (=> b!153192 m!138149))

(declare-fun m!138151 () Bool)

(assert (=> b!153199 m!138151))

(declare-fun m!138153 () Bool)

(assert (=> b!153199 m!138153))

(declare-fun m!138155 () Bool)

(assert (=> b!153204 m!138155))

(declare-fun m!138157 () Bool)

(assert (=> b!153197 m!138157))

(declare-fun m!138159 () Bool)

(assert (=> b!153206 m!138159))

(assert (=> b!153206 m!138159))

(declare-fun m!138161 () Bool)

(assert (=> b!153206 m!138161))

(declare-fun m!138163 () Bool)

(assert (=> b!153206 m!138163))

(declare-fun m!138165 () Bool)

(assert (=> b!153203 m!138165))

(declare-fun m!138167 () Bool)

(assert (=> b!153210 m!138167))

(declare-fun m!138169 () Bool)

(assert (=> b!153194 m!138169))

(declare-fun m!138171 () Bool)

(assert (=> b!153194 m!138171))

(declare-fun m!138173 () Bool)

(assert (=> start!16386 m!138173))

(declare-fun m!138175 () Bool)

(assert (=> b!153209 m!138175))

(declare-fun m!138177 () Bool)

(assert (=> b!153209 m!138177))

(declare-fun m!138179 () Bool)

(assert (=> b!153205 m!138179))

(declare-fun m!138181 () Bool)

(assert (=> b!153191 m!138181))

(declare-fun m!138183 () Bool)

(assert (=> b!153191 m!138183))

(declare-fun m!138185 () Bool)

(assert (=> b!153201 m!138185))

(check-sat (not b!153192) b_and!8983 (not b!153201) (not b!153206) (not b!153200) (not b!153194) (not b_next!5633) b_and!8987 (not start!16386) (not b!153199) (not b!153191) (not b!153210) (not b_next!5637) (not b_next!5639) (not b_next!5641) b_and!8979 (not b!153209) (not b!153193) (not b!153208) (not b!153203) b_and!8977 b_and!8985 (not b!153205) (not b!153202) (not b!153204) (not b_next!5635) b_and!8981 (not b!153197) (not b_next!5643))
(check-sat b_and!8983 (not b_next!5633) b_and!8987 (not b_next!5635) (not b_next!5637) (not b_next!5639) (not b_next!5641) b_and!8979 b_and!8977 b_and!8985 b_and!8981 (not b_next!5643))

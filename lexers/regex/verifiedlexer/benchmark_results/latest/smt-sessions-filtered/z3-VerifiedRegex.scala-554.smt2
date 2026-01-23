; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15454 () Bool)

(assert start!15454)

(declare-fun b!145835 () Bool)

(declare-fun b_free!5105 () Bool)

(declare-fun b_next!5105 () Bool)

(assert (=> b!145835 (= b_free!5105 (not b_next!5105))))

(declare-fun tp!76805 () Bool)

(declare-fun b_and!7913 () Bool)

(assert (=> b!145835 (= tp!76805 b_and!7913)))

(declare-fun b_free!5107 () Bool)

(declare-fun b_next!5107 () Bool)

(assert (=> b!145835 (= b_free!5107 (not b_next!5107))))

(declare-fun tp!76803 () Bool)

(declare-fun b_and!7915 () Bool)

(assert (=> b!145835 (= tp!76803 b_and!7915)))

(declare-fun b!145831 () Bool)

(declare-fun b_free!5109 () Bool)

(declare-fun b_next!5109 () Bool)

(assert (=> b!145831 (= b_free!5109 (not b_next!5109))))

(declare-fun tp!76807 () Bool)

(declare-fun b_and!7917 () Bool)

(assert (=> b!145831 (= tp!76807 b_and!7917)))

(declare-fun b_free!5111 () Bool)

(declare-fun b_next!5111 () Bool)

(assert (=> b!145831 (= b_free!5111 (not b_next!5111))))

(declare-fun tp!76806 () Bool)

(declare-fun b_and!7919 () Bool)

(assert (=> b!145831 (= tp!76806 b_and!7919)))

(declare-fun b!145845 () Bool)

(declare-fun b_free!5113 () Bool)

(declare-fun b_next!5113 () Bool)

(assert (=> b!145845 (= b_free!5113 (not b_next!5113))))

(declare-fun tp!76811 () Bool)

(declare-fun b_and!7921 () Bool)

(assert (=> b!145845 (= tp!76811 b_and!7921)))

(declare-fun b_free!5115 () Bool)

(declare-fun b_next!5115 () Bool)

(assert (=> b!145845 (= b_free!5115 (not b_next!5115))))

(declare-fun tp!76800 () Bool)

(declare-fun b_and!7923 () Bool)

(assert (=> b!145845 (= tp!76800 b_and!7923)))

(declare-fun e!86564 () Bool)

(assert (=> b!145831 (= e!86564 (and tp!76807 tp!76806))))

(declare-fun b!145832 () Bool)

(declare-fun e!86566 () Bool)

(declare-fun e!86570 () Bool)

(assert (=> b!145832 (= e!86566 e!86570)))

(declare-fun res!67203 () Bool)

(assert (=> b!145832 (=> (not res!67203) (not e!86570))))

(declare-datatypes ((List!2527 0))(
  ( (Nil!2517) (Cons!2517 (h!7914 (_ BitVec 16)) (t!24135 List!2527)) )
))
(declare-datatypes ((TokenValue!453 0))(
  ( (FloatLiteralValue!906 (text!3616 List!2527)) (TokenValueExt!452 (__x!2393 Int)) (Broken!2265 (value!16573 List!2527)) (Object!462) (End!453) (Def!453) (Underscore!453) (Match!453) (Else!453) (Error!453) (Case!453) (If!453) (Extends!453) (Abstract!453) (Class!453) (Val!453) (DelimiterValue!906 (del!513 List!2527)) (KeywordValue!459 (value!16574 List!2527)) (CommentValue!906 (value!16575 List!2527)) (WhitespaceValue!906 (value!16576 List!2527)) (IndentationValue!453 (value!16577 List!2527)) (String!3344) (Int32!453) (Broken!2266 (value!16578 List!2527)) (Boolean!454) (Unit!1873) (OperatorValue!456 (op!513 List!2527)) (IdentifierValue!906 (value!16579 List!2527)) (IdentifierValue!907 (value!16580 List!2527)) (WhitespaceValue!907 (value!16581 List!2527)) (True!906) (False!906) (Broken!2267 (value!16582 List!2527)) (Broken!2268 (value!16583 List!2527)) (True!907) (RightBrace!453) (RightBracket!453) (Colon!453) (Null!453) (Comma!453) (LeftBracket!453) (False!907) (LeftBrace!453) (ImaginaryLiteralValue!453 (text!3617 List!2527)) (StringLiteralValue!1359 (value!16584 List!2527)) (EOFValue!453 (value!16585 List!2527)) (IdentValue!453 (value!16586 List!2527)) (DelimiterValue!907 (value!16587 List!2527)) (DedentValue!453 (value!16588 List!2527)) (NewLineValue!453 (value!16589 List!2527)) (IntegerValue!1359 (value!16590 (_ BitVec 32)) (text!3618 List!2527)) (IntegerValue!1360 (value!16591 Int) (text!3619 List!2527)) (Times!453) (Or!453) (Equal!453) (Minus!453) (Broken!2269 (value!16592 List!2527)) (And!453) (Div!453) (LessEqual!453) (Mod!453) (Concat!1108) (Not!453) (Plus!453) (SpaceValue!453 (value!16593 List!2527)) (IntegerValue!1361 (value!16594 Int) (text!3620 List!2527)) (StringLiteralValue!1360 (text!3621 List!2527)) (FloatLiteralValue!907 (text!3622 List!2527)) (BytesLiteralValue!453 (value!16595 List!2527)) (CommentValue!907 (value!16596 List!2527)) (StringLiteralValue!1361 (value!16597 List!2527)) (ErrorTokenValue!453 (msg!514 List!2527)) )
))
(declare-datatypes ((C!2232 0))(
  ( (C!2233 (val!1002 Int)) )
))
(declare-datatypes ((List!2528 0))(
  ( (Nil!2518) (Cons!2518 (h!7915 C!2232) (t!24136 List!2528)) )
))
(declare-datatypes ((IArray!1369 0))(
  ( (IArray!1370 (innerList!742 List!2528)) )
))
(declare-datatypes ((Conc!684 0))(
  ( (Node!684 (left!1902 Conc!684) (right!2232 Conc!684) (csize!1598 Int) (cheight!895 Int)) (Leaf!1239 (xs!3279 IArray!1369) (csize!1599 Int)) (Empty!684) )
))
(declare-datatypes ((BalanceConc!1376 0))(
  ( (BalanceConc!1377 (c!29797 Conc!684)) )
))
(declare-datatypes ((Regex!655 0))(
  ( (ElementMatch!655 (c!29798 C!2232)) (Concat!1109 (regOne!1822 Regex!655) (regTwo!1822 Regex!655)) (EmptyExpr!655) (Star!655 (reg!984 Regex!655)) (EmptyLang!655) (Union!655 (regOne!1823 Regex!655) (regTwo!1823 Regex!655)) )
))
(declare-datatypes ((String!3345 0))(
  ( (String!3346 (value!16598 String)) )
))
(declare-datatypes ((TokenValueInjection!678 0))(
  ( (TokenValueInjection!679 (toValue!1058 Int) (toChars!917 Int)) )
))
(declare-datatypes ((Rule!662 0))(
  ( (Rule!663 (regex!431 Regex!655) (tag!609 String!3345) (isSeparator!431 Bool) (transformation!431 TokenValueInjection!678)) )
))
(declare-datatypes ((Token!606 0))(
  ( (Token!607 (value!16599 TokenValue!453) (rule!938 Rule!662) (size!2176 Int) (originalCharacters!474 List!2528)) )
))
(declare-datatypes ((List!2529 0))(
  ( (Nil!2519) (Cons!2519 (h!7916 Token!606) (t!24137 List!2529)) )
))
(declare-datatypes ((IArray!1371 0))(
  ( (IArray!1372 (innerList!743 List!2529)) )
))
(declare-datatypes ((Conc!685 0))(
  ( (Node!685 (left!1903 Conc!685) (right!2233 Conc!685) (csize!1600 Int) (cheight!896 Int)) (Leaf!1240 (xs!3280 IArray!1371) (csize!1601 Int)) (Empty!685) )
))
(declare-datatypes ((BalanceConc!1378 0))(
  ( (BalanceConc!1379 (c!29799 Conc!685)) )
))
(declare-fun lt!42124 () BalanceConc!1378)

(declare-fun size!2177 (BalanceConc!1378) Int)

(assert (=> b!145832 (= res!67203 (<= 0 (size!2177 lt!42124)))))

(declare-fun separatorToken!170 () Token!606)

(declare-fun lt!42122 () List!2528)

(declare-fun tokens!465 () List!2529)

(declare-datatypes ((List!2530 0))(
  ( (Nil!2520) (Cons!2520 (h!7917 Rule!662) (t!24138 List!2530)) )
))
(declare-fun rules!1920 () List!2530)

(declare-datatypes ((LexerInterface!317 0))(
  ( (LexerInterfaceExt!314 (__x!2394 Int)) (Lexer!315) )
))
(declare-fun thiss!17480 () LexerInterface!317)

(declare-fun printWithSeparatorTokenWhenNeededList!10 (LexerInterface!317 List!2530 List!2529 Token!606) List!2528)

(assert (=> b!145832 (= lt!42122 (printWithSeparatorTokenWhenNeededList!10 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!76802 () Bool)

(declare-fun e!86562 () Bool)

(declare-fun e!86557 () Bool)

(declare-fun b!145833 () Bool)

(declare-fun inv!3300 (String!3345) Bool)

(declare-fun inv!3303 (TokenValueInjection!678) Bool)

(assert (=> b!145833 (= e!86562 (and tp!76802 (inv!3300 (tag!609 (h!7917 rules!1920))) (inv!3303 (transformation!431 (h!7917 rules!1920))) e!86557))))

(declare-fun e!86565 () Bool)

(declare-fun tp!76801 () Bool)

(declare-fun b!145834 () Bool)

(declare-fun e!86568 () Bool)

(declare-fun inv!21 (TokenValue!453) Bool)

(assert (=> b!145834 (= e!86565 (and (inv!21 (value!16599 (h!7916 tokens!465))) e!86568 tp!76801))))

(declare-fun b!145836 () Bool)

(declare-fun res!67204 () Bool)

(assert (=> b!145836 (=> (not res!67204) (not e!86566))))

(assert (=> b!145836 (= res!67204 (isSeparator!431 (rule!938 separatorToken!170)))))

(declare-fun b!145837 () Bool)

(assert (=> b!145837 (= e!86570 false)))

(declare-fun lt!42123 () Bool)

(declare-fun lambda!3576 () Int)

(declare-fun forall!398 (BalanceConc!1378 Int) Bool)

(assert (=> b!145837 (= lt!42123 (forall!398 lt!42124 lambda!3576))))

(declare-fun tp!76804 () Bool)

(declare-fun b!145838 () Bool)

(assert (=> b!145838 (= e!86568 (and tp!76804 (inv!3300 (tag!609 (rule!938 (h!7916 tokens!465)))) (inv!3303 (transformation!431 (rule!938 (h!7916 tokens!465)))) e!86564))))

(declare-fun b!145839 () Bool)

(declare-fun res!67205 () Bool)

(declare-fun e!86559 () Bool)

(assert (=> b!145839 (=> (not res!67205) (not e!86559))))

(declare-fun isEmpty!980 (List!2530) Bool)

(assert (=> b!145839 (= res!67205 (not (isEmpty!980 rules!1920)))))

(declare-fun e!86569 () Bool)

(declare-fun tp!76809 () Bool)

(declare-fun b!145840 () Bool)

(declare-fun inv!3304 (Token!606) Bool)

(assert (=> b!145840 (= e!86569 (and (inv!3304 (h!7916 tokens!465)) e!86565 tp!76809))))

(declare-fun b!145841 () Bool)

(declare-fun res!67206 () Bool)

(assert (=> b!145841 (=> (not res!67206) (not e!86559))))

(declare-fun rulesInvariant!283 (LexerInterface!317 List!2530) Bool)

(assert (=> b!145841 (= res!67206 (rulesInvariant!283 thiss!17480 rules!1920))))

(declare-fun b!145842 () Bool)

(declare-fun res!67199 () Bool)

(assert (=> b!145842 (=> (not res!67199) (not e!86566))))

(declare-fun forall!399 (List!2529 Int) Bool)

(assert (=> b!145842 (= res!67199 (forall!399 tokens!465 lambda!3576))))

(declare-fun b!145843 () Bool)

(assert (=> b!145843 (= e!86559 e!86566)))

(declare-fun res!67201 () Bool)

(assert (=> b!145843 (=> (not res!67201) (not e!86566))))

(declare-fun rulesProduceEachTokenIndividually!109 (LexerInterface!317 List!2530 BalanceConc!1378) Bool)

(assert (=> b!145843 (= res!67201 (rulesProduceEachTokenIndividually!109 thiss!17480 rules!1920 lt!42124))))

(declare-fun seqFromList!248 (List!2529) BalanceConc!1378)

(assert (=> b!145843 (= lt!42124 (seqFromList!248 tokens!465))))

(declare-fun b!145844 () Bool)

(declare-fun res!67208 () Bool)

(assert (=> b!145844 (=> (not res!67208) (not e!86566))))

(declare-fun rulesProduceIndividualToken!66 (LexerInterface!317 List!2530 Token!606) Bool)

(assert (=> b!145844 (= res!67208 (rulesProduceIndividualToken!66 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!145845 (= e!86557 (and tp!76811 tp!76800))))

(declare-fun b!145846 () Bool)

(declare-fun res!67200 () Bool)

(assert (=> b!145846 (=> (not res!67200) (not e!86566))))

(declare-fun sepAndNonSepRulesDisjointChars!20 (List!2530 List!2530) Bool)

(assert (=> b!145846 (= res!67200 (sepAndNonSepRulesDisjointChars!20 rules!1920 rules!1920))))

(declare-fun e!86563 () Bool)

(assert (=> b!145835 (= e!86563 (and tp!76805 tp!76803))))

(declare-fun res!67202 () Bool)

(assert (=> start!15454 (=> (not res!67202) (not e!86559))))

(get-info :version)

(assert (=> start!15454 (= res!67202 ((_ is Lexer!315) thiss!17480))))

(assert (=> start!15454 e!86559))

(assert (=> start!15454 true))

(declare-fun e!86556 () Bool)

(assert (=> start!15454 e!86556))

(declare-fun e!86561 () Bool)

(assert (=> start!15454 (and (inv!3304 separatorToken!170) e!86561)))

(assert (=> start!15454 e!86569))

(declare-fun e!86555 () Bool)

(declare-fun b!145847 () Bool)

(declare-fun tp!76799 () Bool)

(assert (=> b!145847 (= e!86561 (and (inv!21 (value!16599 separatorToken!170)) e!86555 tp!76799))))

(declare-fun b!145848 () Bool)

(declare-fun res!67207 () Bool)

(assert (=> b!145848 (=> (not res!67207) (not e!86566))))

(assert (=> b!145848 (= res!67207 ((_ is Cons!2519) tokens!465))))

(declare-fun tp!76808 () Bool)

(declare-fun b!145849 () Bool)

(assert (=> b!145849 (= e!86555 (and tp!76808 (inv!3300 (tag!609 (rule!938 separatorToken!170))) (inv!3303 (transformation!431 (rule!938 separatorToken!170))) e!86563))))

(declare-fun b!145850 () Bool)

(declare-fun tp!76810 () Bool)

(assert (=> b!145850 (= e!86556 (and e!86562 tp!76810))))

(assert (= (and start!15454 res!67202) b!145839))

(assert (= (and b!145839 res!67205) b!145841))

(assert (= (and b!145841 res!67206) b!145843))

(assert (= (and b!145843 res!67201) b!145844))

(assert (= (and b!145844 res!67208) b!145836))

(assert (= (and b!145836 res!67204) b!145842))

(assert (= (and b!145842 res!67199) b!145846))

(assert (= (and b!145846 res!67200) b!145848))

(assert (= (and b!145848 res!67207) b!145832))

(assert (= (and b!145832 res!67203) b!145837))

(assert (= b!145833 b!145845))

(assert (= b!145850 b!145833))

(assert (= (and start!15454 ((_ is Cons!2520) rules!1920)) b!145850))

(assert (= b!145849 b!145835))

(assert (= b!145847 b!145849))

(assert (= start!15454 b!145847))

(assert (= b!145838 b!145831))

(assert (= b!145834 b!145838))

(assert (= b!145840 b!145834))

(assert (= (and start!15454 ((_ is Cons!2519) tokens!465)) b!145840))

(declare-fun m!128643 () Bool)

(assert (=> b!145844 m!128643))

(declare-fun m!128645 () Bool)

(assert (=> b!145846 m!128645))

(declare-fun m!128647 () Bool)

(assert (=> b!145838 m!128647))

(declare-fun m!128649 () Bool)

(assert (=> b!145838 m!128649))

(declare-fun m!128651 () Bool)

(assert (=> b!145841 m!128651))

(declare-fun m!128653 () Bool)

(assert (=> b!145849 m!128653))

(declare-fun m!128655 () Bool)

(assert (=> b!145849 m!128655))

(declare-fun m!128657 () Bool)

(assert (=> b!145847 m!128657))

(declare-fun m!128659 () Bool)

(assert (=> b!145837 m!128659))

(declare-fun m!128661 () Bool)

(assert (=> b!145832 m!128661))

(declare-fun m!128663 () Bool)

(assert (=> b!145832 m!128663))

(declare-fun m!128665 () Bool)

(assert (=> b!145833 m!128665))

(declare-fun m!128667 () Bool)

(assert (=> b!145833 m!128667))

(declare-fun m!128669 () Bool)

(assert (=> start!15454 m!128669))

(declare-fun m!128671 () Bool)

(assert (=> b!145840 m!128671))

(declare-fun m!128673 () Bool)

(assert (=> b!145839 m!128673))

(declare-fun m!128675 () Bool)

(assert (=> b!145834 m!128675))

(declare-fun m!128677 () Bool)

(assert (=> b!145843 m!128677))

(declare-fun m!128679 () Bool)

(assert (=> b!145843 m!128679))

(declare-fun m!128681 () Bool)

(assert (=> b!145842 m!128681))

(check-sat (not b!145832) (not b!145850) b_and!7913 (not b!145834) b_and!7921 (not b!145833) (not b!145844) (not b_next!5105) (not b!145842) (not b_next!5107) (not b!145847) (not b_next!5113) (not b_next!5111) b_and!7917 b_and!7919 (not b!145843) (not b!145837) (not b!145839) (not start!15454) (not b!145846) (not b!145840) (not b!145838) (not b_next!5115) (not b_next!5109) b_and!7915 (not b!145849) (not b!145841) b_and!7923)
(check-sat b_and!7913 b_and!7921 (not b_next!5105) b_and!7915 (not b_next!5107) b_and!7923 (not b_next!5113) (not b_next!5111) b_and!7917 b_and!7919 (not b_next!5115) (not b_next!5109))

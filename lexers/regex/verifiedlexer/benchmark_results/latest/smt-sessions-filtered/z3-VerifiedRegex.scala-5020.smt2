; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253830 () Bool)

(assert start!253830)

(declare-fun b!2611144 () Bool)

(declare-fun b_free!73429 () Bool)

(declare-fun b_next!74133 () Bool)

(assert (=> b!2611144 (= b_free!73429 (not b_next!74133))))

(declare-fun tp!829600 () Bool)

(declare-fun b_and!190995 () Bool)

(assert (=> b!2611144 (= tp!829600 b_and!190995)))

(declare-fun b_free!73431 () Bool)

(declare-fun b_next!74135 () Bool)

(assert (=> b!2611144 (= b_free!73431 (not b_next!74135))))

(declare-fun tp!829598 () Bool)

(declare-fun b_and!190997 () Bool)

(assert (=> b!2611144 (= tp!829598 b_and!190997)))

(declare-fun b!2611146 () Bool)

(declare-fun b_free!73433 () Bool)

(declare-fun b_next!74137 () Bool)

(assert (=> b!2611146 (= b_free!73433 (not b_next!74137))))

(declare-fun tp!829593 () Bool)

(declare-fun b_and!190999 () Bool)

(assert (=> b!2611146 (= tp!829593 b_and!190999)))

(declare-fun b_free!73435 () Bool)

(declare-fun b_next!74139 () Bool)

(assert (=> b!2611146 (= b_free!73435 (not b_next!74139))))

(declare-fun tp!829595 () Bool)

(declare-fun b_and!191001 () Bool)

(assert (=> b!2611146 (= tp!829595 b_and!191001)))

(declare-fun bs!473899 () Bool)

(declare-fun b!2611147 () Bool)

(declare-fun b!2611153 () Bool)

(assert (= bs!473899 (and b!2611147 b!2611153)))

(declare-fun lambda!97726 () Int)

(declare-fun lambda!97725 () Int)

(assert (=> bs!473899 (not (= lambda!97726 lambda!97725))))

(declare-fun b!2611168 () Bool)

(declare-fun e!1647556 () Bool)

(assert (=> b!2611168 (= e!1647556 true)))

(declare-fun b!2611167 () Bool)

(declare-fun e!1647555 () Bool)

(assert (=> b!2611167 (= e!1647555 e!1647556)))

(declare-fun b!2611166 () Bool)

(declare-fun e!1647554 () Bool)

(assert (=> b!2611166 (= e!1647554 e!1647555)))

(assert (=> b!2611147 e!1647554))

(assert (= b!2611167 b!2611168))

(assert (= b!2611166 b!2611167))

(declare-datatypes ((List!30271 0))(
  ( (Nil!30171) (Cons!30171 (h!35591 (_ BitVec 16)) (t!214112 List!30271)) )
))
(declare-datatypes ((C!15568 0))(
  ( (C!15569 (val!9718 Int)) )
))
(declare-datatypes ((Regex!7705 0))(
  ( (ElementMatch!7705 (c!419692 C!15568)) (Concat!12488 (regOne!15922 Regex!7705) (regTwo!15922 Regex!7705)) (EmptyExpr!7705) (Star!7705 (reg!8034 Regex!7705)) (EmptyLang!7705) (Union!7705 (regOne!15923 Regex!7705) (regTwo!15923 Regex!7705)) )
))
(declare-datatypes ((TokenValue!4783 0))(
  ( (FloatLiteralValue!9566 (text!33926 List!30271)) (TokenValueExt!4782 (__x!19399 Int)) (Broken!23915 (value!147567 List!30271)) (Object!4882) (End!4783) (Def!4783) (Underscore!4783) (Match!4783) (Else!4783) (Error!4783) (Case!4783) (If!4783) (Extends!4783) (Abstract!4783) (Class!4783) (Val!4783) (DelimiterValue!9566 (del!4843 List!30271)) (KeywordValue!4789 (value!147568 List!30271)) (CommentValue!9566 (value!147569 List!30271)) (WhitespaceValue!9566 (value!147570 List!30271)) (IndentationValue!4783 (value!147571 List!30271)) (String!33798) (Int32!4783) (Broken!23916 (value!147572 List!30271)) (Boolean!4784) (Unit!44148) (OperatorValue!4786 (op!4843 List!30271)) (IdentifierValue!9566 (value!147573 List!30271)) (IdentifierValue!9567 (value!147574 List!30271)) (WhitespaceValue!9567 (value!147575 List!30271)) (True!9566) (False!9566) (Broken!23917 (value!147576 List!30271)) (Broken!23918 (value!147577 List!30271)) (True!9567) (RightBrace!4783) (RightBracket!4783) (Colon!4783) (Null!4783) (Comma!4783) (LeftBracket!4783) (False!9567) (LeftBrace!4783) (ImaginaryLiteralValue!4783 (text!33927 List!30271)) (StringLiteralValue!14349 (value!147578 List!30271)) (EOFValue!4783 (value!147579 List!30271)) (IdentValue!4783 (value!147580 List!30271)) (DelimiterValue!9567 (value!147581 List!30271)) (DedentValue!4783 (value!147582 List!30271)) (NewLineValue!4783 (value!147583 List!30271)) (IntegerValue!14349 (value!147584 (_ BitVec 32)) (text!33928 List!30271)) (IntegerValue!14350 (value!147585 Int) (text!33929 List!30271)) (Times!4783) (Or!4783) (Equal!4783) (Minus!4783) (Broken!23919 (value!147586 List!30271)) (And!4783) (Div!4783) (LessEqual!4783) (Mod!4783) (Concat!12489) (Not!4783) (Plus!4783) (SpaceValue!4783 (value!147587 List!30271)) (IntegerValue!14351 (value!147588 Int) (text!33930 List!30271)) (StringLiteralValue!14350 (text!33931 List!30271)) (FloatLiteralValue!9567 (text!33932 List!30271)) (BytesLiteralValue!4783 (value!147589 List!30271)) (CommentValue!9567 (value!147590 List!30271)) (StringLiteralValue!14351 (value!147591 List!30271)) (ErrorTokenValue!4783 (msg!4844 List!30271)) )
))
(declare-datatypes ((List!30272 0))(
  ( (Nil!30172) (Cons!30172 (h!35592 C!15568) (t!214113 List!30272)) )
))
(declare-datatypes ((IArray!18733 0))(
  ( (IArray!18734 (innerList!9424 List!30272)) )
))
(declare-datatypes ((Conc!9364 0))(
  ( (Node!9364 (left!23212 Conc!9364) (right!23542 Conc!9364) (csize!18958 Int) (cheight!9575 Int)) (Leaf!14385 (xs!12348 IArray!18733) (csize!18959 Int)) (Empty!9364) )
))
(declare-datatypes ((BalanceConc!18342 0))(
  ( (BalanceConc!18343 (c!419693 Conc!9364)) )
))
(declare-datatypes ((TokenValueInjection!9006 0))(
  ( (TokenValueInjection!9007 (toValue!6463 Int) (toChars!6322 Int)) )
))
(declare-datatypes ((String!33799 0))(
  ( (String!33800 (value!147592 String)) )
))
(declare-datatypes ((Rule!8922 0))(
  ( (Rule!8923 (regex!4561 Regex!7705) (tag!5051 String!33799) (isSeparator!4561 Bool) (transformation!4561 TokenValueInjection!9006)) )
))
(declare-datatypes ((List!30273 0))(
  ( (Nil!30173) (Cons!30173 (h!35593 Rule!8922) (t!214114 List!30273)) )
))
(declare-fun rules!1726 () List!30273)

(get-info :version)

(assert (= (and b!2611147 ((_ is Cons!30173) rules!1726)) b!2611166))

(declare-fun order!16035 () Int)

(declare-fun order!16037 () Int)

(declare-fun dynLambda!12775 (Int Int) Int)

(declare-fun dynLambda!12776 (Int Int) Int)

(assert (=> b!2611168 (< (dynLambda!12775 order!16035 (toValue!6463 (transformation!4561 (h!35593 rules!1726)))) (dynLambda!12776 order!16037 lambda!97726))))

(declare-fun order!16039 () Int)

(declare-fun dynLambda!12777 (Int Int) Int)

(assert (=> b!2611168 (< (dynLambda!12777 order!16039 (toChars!6322 (transformation!4561 (h!35593 rules!1726)))) (dynLambda!12776 order!16037 lambda!97726))))

(assert (=> b!2611147 true))

(declare-fun b!2611138 () Bool)

(declare-fun res!1099101 () Bool)

(declare-fun e!1647541 () Bool)

(assert (=> b!2611138 (=> (not res!1099101) (not e!1647541))))

(declare-fun isEmpty!17238 (List!30273) Bool)

(assert (=> b!2611138 (= res!1099101 (not (isEmpty!17238 rules!1726)))))

(declare-fun b!2611139 () Bool)

(declare-fun e!1647544 () Bool)

(assert (=> b!2611139 (= e!1647544 true)))

(declare-fun lt!917493 () Bool)

(declare-datatypes ((Token!8592 0))(
  ( (Token!8593 (value!147593 TokenValue!4783) (rule!6931 Rule!8922) (size!23360 Int) (originalCharacters!5327 List!30272)) )
))
(declare-datatypes ((List!30274 0))(
  ( (Nil!30174) (Cons!30174 (h!35594 Token!8592) (t!214115 List!30274)) )
))
(declare-datatypes ((IArray!18735 0))(
  ( (IArray!18736 (innerList!9425 List!30274)) )
))
(declare-datatypes ((Conc!9365 0))(
  ( (Node!9365 (left!23213 Conc!9365) (right!23543 Conc!9365) (csize!18960 Int) (cheight!9576 Int)) (Leaf!14386 (xs!12349 IArray!18735) (csize!18961 Int)) (Empty!9365) )
))
(declare-datatypes ((BalanceConc!18344 0))(
  ( (BalanceConc!18345 (c!419694 Conc!9365)) )
))
(declare-fun v!6381 () BalanceConc!18344)

(declare-fun forall!6257 (BalanceConc!18344 Int) Bool)

(assert (=> b!2611139 (= lt!917493 (forall!6257 v!6381 lambda!97725))))

(declare-fun e!1647533 () Bool)

(declare-fun tp!829596 () Bool)

(declare-fun separatorToken!156 () Token!8592)

(declare-fun e!1647543 () Bool)

(declare-fun b!2611140 () Bool)

(declare-fun inv!21 (TokenValue!4783) Bool)

(assert (=> b!2611140 (= e!1647543 (and (inv!21 (value!147593 separatorToken!156)) e!1647533 tp!829596))))

(declare-fun b!2611141 () Bool)

(declare-fun res!1099105 () Bool)

(assert (=> b!2611141 (=> (not res!1099105) (not e!1647541))))

(declare-datatypes ((LexerInterface!4158 0))(
  ( (LexerInterfaceExt!4155 (__x!19400 Int)) (Lexer!4156) )
))
(declare-fun thiss!14197 () LexerInterface!4158)

(declare-fun rulesProduceIndividualToken!1870 (LexerInterface!4158 List!30273 Token!8592) Bool)

(assert (=> b!2611141 (= res!1099105 (rulesProduceIndividualToken!1870 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2611143 () Bool)

(declare-fun res!1099106 () Bool)

(assert (=> b!2611143 (=> (not res!1099106) (not e!1647541))))

(assert (=> b!2611143 (= res!1099106 (isSeparator!4561 (rule!6931 separatorToken!156)))))

(declare-fun e!1647545 () Bool)

(assert (=> b!2611144 (= e!1647545 (and tp!829600 tp!829598))))

(declare-fun b!2611145 () Bool)

(declare-fun res!1099109 () Bool)

(assert (=> b!2611145 (=> (not res!1099109) (not e!1647541))))

(declare-fun sepAndNonSepRulesDisjointChars!1134 (List!30273 List!30273) Bool)

(assert (=> b!2611145 (= res!1099109 (sepAndNonSepRulesDisjointChars!1134 rules!1726 rules!1726))))

(declare-fun e!1647534 () Bool)

(assert (=> b!2611146 (= e!1647534 (and tp!829593 tp!829595))))

(declare-fun e!1647539 () Bool)

(assert (=> b!2611147 (= e!1647539 e!1647544)))

(declare-fun res!1099104 () Bool)

(assert (=> b!2611147 (=> res!1099104 e!1647544)))

(declare-fun from!862 () Int)

(declare-fun lt!917497 () Int)

(assert (=> b!2611147 (= res!1099104 (or (< (+ 1 from!862) 0) (> (+ 1 from!862) lt!917497)))))

(declare-datatypes ((Unit!44149 0))(
  ( (Unit!44150) )
))
(declare-fun lt!917495 () Unit!44149)

(declare-fun lt!917494 () Token!8592)

(declare-fun lt!917498 () List!30274)

(declare-fun forallContained!917 (List!30274 Int Token!8592) Unit!44149)

(assert (=> b!2611147 (= lt!917495 (forallContained!917 lt!917498 lambda!97726 lt!917494))))

(declare-fun b!2611148 () Bool)

(declare-fun res!1099103 () Bool)

(assert (=> b!2611148 (=> (not res!1099103) (not e!1647541))))

(declare-fun rulesProduceEachTokenIndividually!978 (LexerInterface!4158 List!30273 BalanceConc!18344) Bool)

(assert (=> b!2611148 (= res!1099103 (rulesProduceEachTokenIndividually!978 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2611149 () Bool)

(declare-fun e!1647547 () Bool)

(assert (=> b!2611149 (= e!1647547 (not e!1647539))))

(declare-fun res!1099111 () Bool)

(assert (=> b!2611149 (=> res!1099111 e!1647539)))

(declare-fun contains!5598 (BalanceConc!18344 Token!8592) Bool)

(assert (=> b!2611149 (= res!1099111 (not (contains!5598 v!6381 lt!917494)))))

(declare-fun apply!7084 (BalanceConc!18344 Int) Token!8592)

(assert (=> b!2611149 (= lt!917494 (apply!7084 v!6381 from!862))))

(declare-fun lt!917491 () List!30274)

(declare-fun tail!4194 (List!30274) List!30274)

(declare-fun drop!1557 (List!30274 Int) List!30274)

(assert (=> b!2611149 (= (tail!4194 lt!917491) (drop!1557 lt!917498 (+ 1 from!862)))))

(declare-fun lt!917499 () Unit!44149)

(declare-fun lemmaDropTail!746 (List!30274 Int) Unit!44149)

(assert (=> b!2611149 (= lt!917499 (lemmaDropTail!746 lt!917498 from!862))))

(declare-fun head!5956 (List!30274) Token!8592)

(declare-fun apply!7085 (List!30274 Int) Token!8592)

(assert (=> b!2611149 (= (head!5956 lt!917491) (apply!7085 lt!917498 from!862))))

(assert (=> b!2611149 (= lt!917491 (drop!1557 lt!917498 from!862))))

(declare-fun lt!917492 () Unit!44149)

(declare-fun lemmaDropApply!772 (List!30274 Int) Unit!44149)

(assert (=> b!2611149 (= lt!917492 (lemmaDropApply!772 lt!917498 from!862))))

(declare-fun b!2611142 () Bool)

(declare-fun tp!829592 () Bool)

(declare-fun inv!40827 (String!33799) Bool)

(declare-fun inv!40832 (TokenValueInjection!9006) Bool)

(assert (=> b!2611142 (= e!1647533 (and tp!829592 (inv!40827 (tag!5051 (rule!6931 separatorToken!156))) (inv!40832 (transformation!4561 (rule!6931 separatorToken!156))) e!1647545))))

(declare-fun res!1099113 () Bool)

(declare-fun e!1647537 () Bool)

(assert (=> start!253830 (=> (not res!1099113) (not e!1647537))))

(assert (=> start!253830 (= res!1099113 (and ((_ is Lexer!4156) thiss!14197) (>= from!862 0)))))

(assert (=> start!253830 e!1647537))

(assert (=> start!253830 true))

(declare-fun e!1647538 () Bool)

(assert (=> start!253830 e!1647538))

(declare-fun inv!40833 (Token!8592) Bool)

(assert (=> start!253830 (and (inv!40833 separatorToken!156) e!1647543)))

(declare-fun e!1647542 () Bool)

(declare-fun inv!40834 (BalanceConc!18344) Bool)

(assert (=> start!253830 (and (inv!40834 v!6381) e!1647542)))

(declare-fun b!2611150 () Bool)

(declare-fun tp!829599 () Bool)

(declare-fun e!1647546 () Bool)

(assert (=> b!2611150 (= e!1647546 (and tp!829599 (inv!40827 (tag!5051 (h!35593 rules!1726))) (inv!40832 (transformation!4561 (h!35593 rules!1726))) e!1647534))))

(declare-fun b!2611151 () Bool)

(declare-fun res!1099112 () Bool)

(assert (=> b!2611151 (=> (not res!1099112) (not e!1647541))))

(declare-fun rulesInvariant!3658 (LexerInterface!4158 List!30273) Bool)

(assert (=> b!2611151 (= res!1099112 (rulesInvariant!3658 thiss!14197 rules!1726))))

(declare-fun b!2611152 () Bool)

(declare-fun tp!829594 () Bool)

(declare-fun inv!40835 (Conc!9365) Bool)

(assert (=> b!2611152 (= e!1647542 (and (inv!40835 (c!419694 v!6381)) tp!829594))))

(declare-fun res!1099107 () Bool)

(assert (=> b!2611153 (=> (not res!1099107) (not e!1647541))))

(assert (=> b!2611153 (= res!1099107 (forall!6257 v!6381 lambda!97725))))

(declare-fun b!2611154 () Bool)

(assert (=> b!2611154 (= e!1647541 e!1647547)))

(declare-fun res!1099110 () Bool)

(assert (=> b!2611154 (=> (not res!1099110) (not e!1647547))))

(assert (=> b!2611154 (= res!1099110 (< from!862 lt!917497))))

(declare-fun lt!917496 () Unit!44149)

(declare-fun lemmaContentSubsetPreservesForall!230 (List!30274 List!30274 Int) Unit!44149)

(declare-fun dropList!864 (BalanceConc!18344 Int) List!30274)

(assert (=> b!2611154 (= lt!917496 (lemmaContentSubsetPreservesForall!230 lt!917498 (dropList!864 v!6381 from!862) lambda!97725))))

(declare-fun list!11323 (BalanceConc!18344) List!30274)

(assert (=> b!2611154 (= lt!917498 (list!11323 v!6381))))

(declare-fun b!2611155 () Bool)

(assert (=> b!2611155 (= e!1647537 e!1647541)))

(declare-fun res!1099102 () Bool)

(assert (=> b!2611155 (=> (not res!1099102) (not e!1647541))))

(assert (=> b!2611155 (= res!1099102 (<= from!862 lt!917497))))

(declare-fun size!23361 (BalanceConc!18344) Int)

(assert (=> b!2611155 (= lt!917497 (size!23361 v!6381))))

(declare-fun b!2611156 () Bool)

(declare-fun tp!829597 () Bool)

(assert (=> b!2611156 (= e!1647538 (and e!1647546 tp!829597))))

(declare-fun b!2611157 () Bool)

(declare-fun res!1099108 () Bool)

(assert (=> b!2611157 (=> res!1099108 e!1647539)))

(declare-fun contains!5599 (List!30274 Token!8592) Bool)

(assert (=> b!2611157 (= res!1099108 (not (contains!5599 lt!917498 lt!917494)))))

(assert (= (and start!253830 res!1099113) b!2611155))

(assert (= (and b!2611155 res!1099102) b!2611138))

(assert (= (and b!2611138 res!1099101) b!2611151))

(assert (= (and b!2611151 res!1099112) b!2611148))

(assert (= (and b!2611148 res!1099103) b!2611141))

(assert (= (and b!2611141 res!1099105) b!2611143))

(assert (= (and b!2611143 res!1099106) b!2611153))

(assert (= (and b!2611153 res!1099107) b!2611145))

(assert (= (and b!2611145 res!1099109) b!2611154))

(assert (= (and b!2611154 res!1099110) b!2611149))

(assert (= (and b!2611149 (not res!1099111)) b!2611157))

(assert (= (and b!2611157 (not res!1099108)) b!2611147))

(assert (= (and b!2611147 (not res!1099104)) b!2611139))

(assert (= b!2611150 b!2611146))

(assert (= b!2611156 b!2611150))

(assert (= (and start!253830 ((_ is Cons!30173) rules!1726)) b!2611156))

(assert (= b!2611142 b!2611144))

(assert (= b!2611140 b!2611142))

(assert (= start!253830 b!2611140))

(assert (= start!253830 b!2611152))

(declare-fun m!2945643 () Bool)

(assert (=> b!2611151 m!2945643))

(declare-fun m!2945645 () Bool)

(assert (=> b!2611150 m!2945645))

(declare-fun m!2945647 () Bool)

(assert (=> b!2611150 m!2945647))

(declare-fun m!2945649 () Bool)

(assert (=> b!2611157 m!2945649))

(declare-fun m!2945651 () Bool)

(assert (=> b!2611145 m!2945651))

(declare-fun m!2945653 () Bool)

(assert (=> b!2611154 m!2945653))

(assert (=> b!2611154 m!2945653))

(declare-fun m!2945655 () Bool)

(assert (=> b!2611154 m!2945655))

(declare-fun m!2945657 () Bool)

(assert (=> b!2611154 m!2945657))

(declare-fun m!2945659 () Bool)

(assert (=> b!2611139 m!2945659))

(declare-fun m!2945661 () Bool)

(assert (=> b!2611152 m!2945661))

(declare-fun m!2945663 () Bool)

(assert (=> b!2611140 m!2945663))

(declare-fun m!2945665 () Bool)

(assert (=> b!2611147 m!2945665))

(declare-fun m!2945667 () Bool)

(assert (=> b!2611148 m!2945667))

(declare-fun m!2945669 () Bool)

(assert (=> b!2611149 m!2945669))

(declare-fun m!2945671 () Bool)

(assert (=> b!2611149 m!2945671))

(declare-fun m!2945673 () Bool)

(assert (=> b!2611149 m!2945673))

(declare-fun m!2945675 () Bool)

(assert (=> b!2611149 m!2945675))

(declare-fun m!2945677 () Bool)

(assert (=> b!2611149 m!2945677))

(declare-fun m!2945679 () Bool)

(assert (=> b!2611149 m!2945679))

(declare-fun m!2945681 () Bool)

(assert (=> b!2611149 m!2945681))

(declare-fun m!2945683 () Bool)

(assert (=> b!2611149 m!2945683))

(declare-fun m!2945685 () Bool)

(assert (=> b!2611149 m!2945685))

(declare-fun m!2945687 () Bool)

(assert (=> b!2611141 m!2945687))

(declare-fun m!2945689 () Bool)

(assert (=> b!2611138 m!2945689))

(declare-fun m!2945691 () Bool)

(assert (=> b!2611142 m!2945691))

(declare-fun m!2945693 () Bool)

(assert (=> b!2611142 m!2945693))

(declare-fun m!2945695 () Bool)

(assert (=> b!2611155 m!2945695))

(assert (=> b!2611153 m!2945659))

(declare-fun m!2945697 () Bool)

(assert (=> start!253830 m!2945697))

(declare-fun m!2945699 () Bool)

(assert (=> start!253830 m!2945699))

(check-sat (not b!2611149) (not b!2611139) (not b!2611145) (not b!2611155) b_and!191001 (not b!2611156) (not b!2611147) (not b_next!74137) (not b!2611151) (not b_next!74133) (not b!2611154) (not b_next!74135) (not b!2611166) (not b!2611142) (not b!2611138) (not b!2611153) b_and!190995 (not b!2611150) (not b!2611148) (not b!2611140) (not start!253830) (not b!2611157) (not b!2611141) b_and!190999 b_and!190997 (not b_next!74139) (not b!2611152))
(check-sat b_and!191001 b_and!190995 (not b_next!74137) b_and!190999 (not b_next!74133) (not b_next!74135) b_and!190997 (not b_next!74139))

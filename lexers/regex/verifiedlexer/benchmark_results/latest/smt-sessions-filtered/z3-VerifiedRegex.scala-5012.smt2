; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253694 () Bool)

(assert start!253694)

(declare-fun b!2609769 () Bool)

(declare-fun b_free!73293 () Bool)

(declare-fun b_next!73997 () Bool)

(assert (=> b!2609769 (= b_free!73293 (not b_next!73997))))

(declare-fun tp!829073 () Bool)

(declare-fun b_and!190851 () Bool)

(assert (=> b!2609769 (= tp!829073 b_and!190851)))

(declare-fun b_free!73295 () Bool)

(declare-fun b_next!73999 () Bool)

(assert (=> b!2609769 (= b_free!73295 (not b_next!73999))))

(declare-fun tp!829068 () Bool)

(declare-fun b_and!190853 () Bool)

(assert (=> b!2609769 (= tp!829068 b_and!190853)))

(declare-fun b!2609765 () Bool)

(declare-fun b_free!73297 () Bool)

(declare-fun b_next!74001 () Bool)

(assert (=> b!2609765 (= b_free!73297 (not b_next!74001))))

(declare-fun tp!829070 () Bool)

(declare-fun b_and!190855 () Bool)

(assert (=> b!2609765 (= tp!829070 b_and!190855)))

(declare-fun b_free!73299 () Bool)

(declare-fun b_next!74003 () Bool)

(assert (=> b!2609765 (= b_free!73299 (not b_next!74003))))

(declare-fun tp!829069 () Bool)

(declare-fun b_and!190857 () Bool)

(assert (=> b!2609765 (= tp!829069 b_and!190857)))

(declare-fun b!2609758 () Bool)

(declare-fun res!1098395 () Bool)

(declare-fun e!1646532 () Bool)

(assert (=> b!2609758 (=> (not res!1098395) (not e!1646532))))

(declare-datatypes ((C!15536 0))(
  ( (C!15537 (val!9702 Int)) )
))
(declare-datatypes ((List!30205 0))(
  ( (Nil!30105) (Cons!30105 (h!35525 (_ BitVec 16)) (t!213972 List!30205)) )
))
(declare-datatypes ((TokenValue!4767 0))(
  ( (FloatLiteralValue!9534 (text!33814 List!30205)) (TokenValueExt!4766 (__x!19367 Int)) (Broken!23835 (value!147111 List!30205)) (Object!4866) (End!4767) (Def!4767) (Underscore!4767) (Match!4767) (Else!4767) (Error!4767) (Case!4767) (If!4767) (Extends!4767) (Abstract!4767) (Class!4767) (Val!4767) (DelimiterValue!9534 (del!4827 List!30205)) (KeywordValue!4773 (value!147112 List!30205)) (CommentValue!9534 (value!147113 List!30205)) (WhitespaceValue!9534 (value!147114 List!30205)) (IndentationValue!4767 (value!147115 List!30205)) (String!33718) (Int32!4767) (Broken!23836 (value!147116 List!30205)) (Boolean!4768) (Unit!44100) (OperatorValue!4770 (op!4827 List!30205)) (IdentifierValue!9534 (value!147117 List!30205)) (IdentifierValue!9535 (value!147118 List!30205)) (WhitespaceValue!9535 (value!147119 List!30205)) (True!9534) (False!9534) (Broken!23837 (value!147120 List!30205)) (Broken!23838 (value!147121 List!30205)) (True!9535) (RightBrace!4767) (RightBracket!4767) (Colon!4767) (Null!4767) (Comma!4767) (LeftBracket!4767) (False!9535) (LeftBrace!4767) (ImaginaryLiteralValue!4767 (text!33815 List!30205)) (StringLiteralValue!14301 (value!147122 List!30205)) (EOFValue!4767 (value!147123 List!30205)) (IdentValue!4767 (value!147124 List!30205)) (DelimiterValue!9535 (value!147125 List!30205)) (DedentValue!4767 (value!147126 List!30205)) (NewLineValue!4767 (value!147127 List!30205)) (IntegerValue!14301 (value!147128 (_ BitVec 32)) (text!33816 List!30205)) (IntegerValue!14302 (value!147129 Int) (text!33817 List!30205)) (Times!4767) (Or!4767) (Equal!4767) (Minus!4767) (Broken!23839 (value!147130 List!30205)) (And!4767) (Div!4767) (LessEqual!4767) (Mod!4767) (Concat!12456) (Not!4767) (Plus!4767) (SpaceValue!4767 (value!147131 List!30205)) (IntegerValue!14303 (value!147132 Int) (text!33818 List!30205)) (StringLiteralValue!14302 (text!33819 List!30205)) (FloatLiteralValue!9535 (text!33820 List!30205)) (BytesLiteralValue!4767 (value!147133 List!30205)) (CommentValue!9535 (value!147134 List!30205)) (StringLiteralValue!14303 (value!147135 List!30205)) (ErrorTokenValue!4767 (msg!4828 List!30205)) )
))
(declare-datatypes ((Regex!7689 0))(
  ( (ElementMatch!7689 (c!419588 C!15536)) (Concat!12457 (regOne!15890 Regex!7689) (regTwo!15890 Regex!7689)) (EmptyExpr!7689) (Star!7689 (reg!8018 Regex!7689)) (EmptyLang!7689) (Union!7689 (regOne!15891 Regex!7689) (regTwo!15891 Regex!7689)) )
))
(declare-datatypes ((String!33719 0))(
  ( (String!33720 (value!147136 String)) )
))
(declare-datatypes ((List!30206 0))(
  ( (Nil!30106) (Cons!30106 (h!35526 C!15536) (t!213973 List!30206)) )
))
(declare-datatypes ((IArray!18669 0))(
  ( (IArray!18670 (innerList!9392 List!30206)) )
))
(declare-datatypes ((Conc!9332 0))(
  ( (Node!9332 (left!23152 Conc!9332) (right!23482 Conc!9332) (csize!18894 Int) (cheight!9543 Int)) (Leaf!14345 (xs!12316 IArray!18669) (csize!18895 Int)) (Empty!9332) )
))
(declare-datatypes ((BalanceConc!18278 0))(
  ( (BalanceConc!18279 (c!419589 Conc!9332)) )
))
(declare-datatypes ((TokenValueInjection!8974 0))(
  ( (TokenValueInjection!8975 (toValue!6447 Int) (toChars!6306 Int)) )
))
(declare-datatypes ((Rule!8890 0))(
  ( (Rule!8891 (regex!4545 Regex!7689) (tag!5035 String!33719) (isSeparator!4545 Bool) (transformation!4545 TokenValueInjection!8974)) )
))
(declare-datatypes ((Token!8560 0))(
  ( (Token!8561 (value!147137 TokenValue!4767) (rule!6915 Rule!8890) (size!23322 Int) (originalCharacters!5311 List!30206)) )
))
(declare-datatypes ((List!30207 0))(
  ( (Nil!30107) (Cons!30107 (h!35527 Token!8560) (t!213974 List!30207)) )
))
(declare-datatypes ((IArray!18671 0))(
  ( (IArray!18672 (innerList!9393 List!30207)) )
))
(declare-datatypes ((Conc!9333 0))(
  ( (Node!9333 (left!23153 Conc!9333) (right!23483 Conc!9333) (csize!18896 Int) (cheight!9544 Int)) (Leaf!14346 (xs!12317 IArray!18671) (csize!18897 Int)) (Empty!9333) )
))
(declare-datatypes ((BalanceConc!18280 0))(
  ( (BalanceConc!18281 (c!419590 Conc!9333)) )
))
(declare-fun v!6381 () BalanceConc!18280)

(declare-fun lambda!97598 () Int)

(declare-fun forall!6237 (BalanceConc!18280 Int) Bool)

(assert (=> b!2609758 (= res!1098395 (forall!6237 v!6381 lambda!97598))))

(declare-fun b!2609759 () Bool)

(declare-fun e!1646535 () Bool)

(assert (=> b!2609759 (= e!1646535 e!1646532)))

(declare-fun res!1098391 () Bool)

(assert (=> b!2609759 (=> (not res!1098391) (not e!1646532))))

(declare-fun from!862 () Int)

(declare-fun lt!917048 () Int)

(assert (=> b!2609759 (= res!1098391 (<= from!862 lt!917048))))

(declare-fun size!23323 (BalanceConc!18280) Int)

(assert (=> b!2609759 (= lt!917048 (size!23323 v!6381))))

(declare-fun b!2609760 () Bool)

(declare-fun e!1646538 () Bool)

(declare-fun e!1646536 () Bool)

(declare-fun tp!829071 () Bool)

(assert (=> b!2609760 (= e!1646538 (and e!1646536 tp!829071))))

(declare-fun b!2609761 () Bool)

(declare-fun res!1098399 () Bool)

(assert (=> b!2609761 (=> (not res!1098399) (not e!1646532))))

(declare-datatypes ((LexerInterface!4142 0))(
  ( (LexerInterfaceExt!4139 (__x!19368 Int)) (Lexer!4140) )
))
(declare-fun thiss!14197 () LexerInterface!4142)

(declare-datatypes ((List!30208 0))(
  ( (Nil!30108) (Cons!30108 (h!35528 Rule!8890) (t!213975 List!30208)) )
))
(declare-fun rules!1726 () List!30208)

(declare-fun rulesProduceEachTokenIndividually!962 (LexerInterface!4142 List!30208 BalanceConc!18280) Bool)

(assert (=> b!2609761 (= res!1098399 (rulesProduceEachTokenIndividually!962 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2609762 () Bool)

(declare-fun e!1646530 () Bool)

(assert (=> b!2609762 (= e!1646532 e!1646530)))

(declare-fun res!1098396 () Bool)

(assert (=> b!2609762 (=> (not res!1098396) (not e!1646530))))

(assert (=> b!2609762 (= res!1098396 (< from!862 lt!917048))))

(declare-fun lt!917049 () List!30207)

(declare-datatypes ((Unit!44101 0))(
  ( (Unit!44102) )
))
(declare-fun lt!917051 () Unit!44101)

(declare-fun lemmaContentSubsetPreservesForall!214 (List!30207 List!30207 Int) Unit!44101)

(declare-fun dropList!848 (BalanceConc!18280 Int) List!30207)

(assert (=> b!2609762 (= lt!917051 (lemmaContentSubsetPreservesForall!214 lt!917049 (dropList!848 v!6381 from!862) lambda!97598))))

(declare-fun list!11303 (BalanceConc!18280) List!30207)

(assert (=> b!2609762 (= lt!917049 (list!11303 v!6381))))

(declare-fun tp!829072 () Bool)

(declare-fun e!1646531 () Bool)

(declare-fun b!2609763 () Bool)

(declare-fun separatorToken!156 () Token!8560)

(declare-fun e!1646533 () Bool)

(declare-fun inv!40729 (String!33719) Bool)

(declare-fun inv!40734 (TokenValueInjection!8974) Bool)

(assert (=> b!2609763 (= e!1646531 (and tp!829072 (inv!40729 (tag!5035 (rule!6915 separatorToken!156))) (inv!40734 (transformation!4545 (rule!6915 separatorToken!156))) e!1646533))))

(declare-fun b!2609764 () Bool)

(assert (=> b!2609764 (= e!1646530 (not (<= 0 from!862)))))

(declare-fun lt!917050 () List!30207)

(declare-fun tail!4178 (List!30207) List!30207)

(declare-fun drop!1541 (List!30207 Int) List!30207)

(assert (=> b!2609764 (= (tail!4178 lt!917050) (drop!1541 lt!917049 (+ 1 from!862)))))

(declare-fun lt!917052 () Unit!44101)

(declare-fun lemmaDropTail!730 (List!30207 Int) Unit!44101)

(assert (=> b!2609764 (= lt!917052 (lemmaDropTail!730 lt!917049 from!862))))

(declare-fun head!5940 (List!30207) Token!8560)

(declare-fun apply!7051 (List!30207 Int) Token!8560)

(assert (=> b!2609764 (= (head!5940 lt!917050) (apply!7051 lt!917049 from!862))))

(assert (=> b!2609764 (= lt!917050 (drop!1541 lt!917049 from!862))))

(declare-fun lt!917053 () Unit!44101)

(declare-fun lemmaDropApply!756 (List!30207 Int) Unit!44101)

(assert (=> b!2609764 (= lt!917053 (lemmaDropApply!756 lt!917049 from!862))))

(assert (=> b!2609765 (= e!1646533 (and tp!829070 tp!829069))))

(declare-fun b!2609767 () Bool)

(declare-fun res!1098400 () Bool)

(assert (=> b!2609767 (=> (not res!1098400) (not e!1646532))))

(declare-fun rulesInvariant!3642 (LexerInterface!4142 List!30208) Bool)

(assert (=> b!2609767 (= res!1098400 (rulesInvariant!3642 thiss!14197 rules!1726))))

(declare-fun b!2609768 () Bool)

(declare-fun res!1098394 () Bool)

(assert (=> b!2609768 (=> (not res!1098394) (not e!1646532))))

(declare-fun isEmpty!17218 (List!30208) Bool)

(assert (=> b!2609768 (= res!1098394 (not (isEmpty!17218 rules!1726)))))

(declare-fun e!1646529 () Bool)

(assert (=> b!2609769 (= e!1646529 (and tp!829073 tp!829068))))

(declare-fun b!2609770 () Bool)

(declare-fun tp!829074 () Bool)

(assert (=> b!2609770 (= e!1646536 (and tp!829074 (inv!40729 (tag!5035 (h!35528 rules!1726))) (inv!40734 (transformation!4545 (h!35528 rules!1726))) e!1646529))))

(declare-fun b!2609771 () Bool)

(declare-fun e!1646539 () Bool)

(declare-fun tp!829066 () Bool)

(declare-fun inv!40735 (Conc!9333) Bool)

(assert (=> b!2609771 (= e!1646539 (and (inv!40735 (c!419590 v!6381)) tp!829066))))

(declare-fun b!2609772 () Bool)

(declare-fun res!1098392 () Bool)

(assert (=> b!2609772 (=> (not res!1098392) (not e!1646532))))

(declare-fun sepAndNonSepRulesDisjointChars!1118 (List!30208 List!30208) Bool)

(assert (=> b!2609772 (= res!1098392 (sepAndNonSepRulesDisjointChars!1118 rules!1726 rules!1726))))

(declare-fun res!1098397 () Bool)

(assert (=> start!253694 (=> (not res!1098397) (not e!1646535))))

(get-info :version)

(assert (=> start!253694 (= res!1098397 (and ((_ is Lexer!4140) thiss!14197) (>= from!862 0)))))

(assert (=> start!253694 e!1646535))

(assert (=> start!253694 true))

(assert (=> start!253694 e!1646538))

(declare-fun e!1646528 () Bool)

(declare-fun inv!40736 (Token!8560) Bool)

(assert (=> start!253694 (and (inv!40736 separatorToken!156) e!1646528)))

(declare-fun inv!40737 (BalanceConc!18280) Bool)

(assert (=> start!253694 (and (inv!40737 v!6381) e!1646539)))

(declare-fun b!2609766 () Bool)

(declare-fun tp!829067 () Bool)

(declare-fun inv!21 (TokenValue!4767) Bool)

(assert (=> b!2609766 (= e!1646528 (and (inv!21 (value!147137 separatorToken!156)) e!1646531 tp!829067))))

(declare-fun b!2609773 () Bool)

(declare-fun res!1098398 () Bool)

(assert (=> b!2609773 (=> (not res!1098398) (not e!1646532))))

(assert (=> b!2609773 (= res!1098398 (isSeparator!4545 (rule!6915 separatorToken!156)))))

(declare-fun b!2609774 () Bool)

(declare-fun res!1098393 () Bool)

(assert (=> b!2609774 (=> (not res!1098393) (not e!1646532))))

(declare-fun rulesProduceIndividualToken!1854 (LexerInterface!4142 List!30208 Token!8560) Bool)

(assert (=> b!2609774 (= res!1098393 (rulesProduceIndividualToken!1854 thiss!14197 rules!1726 separatorToken!156))))

(assert (= (and start!253694 res!1098397) b!2609759))

(assert (= (and b!2609759 res!1098391) b!2609768))

(assert (= (and b!2609768 res!1098394) b!2609767))

(assert (= (and b!2609767 res!1098400) b!2609761))

(assert (= (and b!2609761 res!1098399) b!2609774))

(assert (= (and b!2609774 res!1098393) b!2609773))

(assert (= (and b!2609773 res!1098398) b!2609758))

(assert (= (and b!2609758 res!1098395) b!2609772))

(assert (= (and b!2609772 res!1098392) b!2609762))

(assert (= (and b!2609762 res!1098396) b!2609764))

(assert (= b!2609770 b!2609769))

(assert (= b!2609760 b!2609770))

(assert (= (and start!253694 ((_ is Cons!30108) rules!1726)) b!2609760))

(assert (= b!2609763 b!2609765))

(assert (= b!2609766 b!2609763))

(assert (= start!253694 b!2609766))

(assert (= start!253694 b!2609771))

(declare-fun m!2944451 () Bool)

(assert (=> start!253694 m!2944451))

(declare-fun m!2944453 () Bool)

(assert (=> start!253694 m!2944453))

(declare-fun m!2944455 () Bool)

(assert (=> b!2609759 m!2944455))

(declare-fun m!2944457 () Bool)

(assert (=> b!2609770 m!2944457))

(declare-fun m!2944459 () Bool)

(assert (=> b!2609770 m!2944459))

(declare-fun m!2944461 () Bool)

(assert (=> b!2609772 m!2944461))

(declare-fun m!2944463 () Bool)

(assert (=> b!2609774 m!2944463))

(declare-fun m!2944465 () Bool)

(assert (=> b!2609758 m!2944465))

(declare-fun m!2944467 () Bool)

(assert (=> b!2609761 m!2944467))

(declare-fun m!2944469 () Bool)

(assert (=> b!2609763 m!2944469))

(declare-fun m!2944471 () Bool)

(assert (=> b!2609763 m!2944471))

(declare-fun m!2944473 () Bool)

(assert (=> b!2609762 m!2944473))

(assert (=> b!2609762 m!2944473))

(declare-fun m!2944475 () Bool)

(assert (=> b!2609762 m!2944475))

(declare-fun m!2944477 () Bool)

(assert (=> b!2609762 m!2944477))

(declare-fun m!2944479 () Bool)

(assert (=> b!2609764 m!2944479))

(declare-fun m!2944481 () Bool)

(assert (=> b!2609764 m!2944481))

(declare-fun m!2944483 () Bool)

(assert (=> b!2609764 m!2944483))

(declare-fun m!2944485 () Bool)

(assert (=> b!2609764 m!2944485))

(declare-fun m!2944487 () Bool)

(assert (=> b!2609764 m!2944487))

(declare-fun m!2944489 () Bool)

(assert (=> b!2609764 m!2944489))

(declare-fun m!2944491 () Bool)

(assert (=> b!2609764 m!2944491))

(declare-fun m!2944493 () Bool)

(assert (=> b!2609767 m!2944493))

(declare-fun m!2944495 () Bool)

(assert (=> b!2609768 m!2944495))

(declare-fun m!2944497 () Bool)

(assert (=> b!2609771 m!2944497))

(declare-fun m!2944499 () Bool)

(assert (=> b!2609766 m!2944499))

(check-sat (not b!2609760) (not b!2609768) b_and!190857 (not b!2609761) (not b!2609766) (not b!2609764) (not b!2609759) (not b!2609770) (not b_next!73999) b_and!190853 (not b_next!74001) (not start!253694) b_and!190851 (not b!2609763) (not b_next!74003) (not b_next!73997) b_and!190855 (not b!2609758) (not b!2609774) (not b!2609771) (not b!2609767) (not b!2609772) (not b!2609762))
(check-sat b_and!190851 (not b_next!74003) b_and!190857 (not b_next!73999) b_and!190853 (not b_next!74001) (not b_next!73997) b_and!190855)

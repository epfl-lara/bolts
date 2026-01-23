; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75690 () Bool)

(assert start!75690)

(declare-fun b!848150 () Bool)

(declare-fun b_free!25569 () Bool)

(declare-fun b_next!25633 () Bool)

(assert (=> b!848150 (= b_free!25569 (not b_next!25633))))

(declare-fun tp!267064 () Bool)

(declare-fun b_and!73997 () Bool)

(assert (=> b!848150 (= tp!267064 b_and!73997)))

(declare-fun b_free!25571 () Bool)

(declare-fun b_next!25635 () Bool)

(assert (=> b!848150 (= b_free!25571 (not b_next!25635))))

(declare-fun tp!267059 () Bool)

(declare-fun b_and!73999 () Bool)

(assert (=> b!848150 (= tp!267059 b_and!73999)))

(declare-fun b!848158 () Bool)

(declare-fun b_free!25573 () Bool)

(declare-fun b_next!25637 () Bool)

(assert (=> b!848158 (= b_free!25573 (not b_next!25637))))

(declare-fun tp!267063 () Bool)

(declare-fun b_and!74001 () Bool)

(assert (=> b!848158 (= tp!267063 b_and!74001)))

(declare-fun b_free!25575 () Bool)

(declare-fun b_next!25639 () Bool)

(assert (=> b!848158 (= b_free!25575 (not b_next!25639))))

(declare-fun tp!267069 () Bool)

(declare-fun b_and!74003 () Bool)

(assert (=> b!848158 (= tp!267069 b_and!74003)))

(declare-fun b!848140 () Bool)

(declare-fun b_free!25577 () Bool)

(declare-fun b_next!25641 () Bool)

(assert (=> b!848140 (= b_free!25577 (not b_next!25641))))

(declare-fun tp!267058 () Bool)

(declare-fun b_and!74005 () Bool)

(assert (=> b!848140 (= tp!267058 b_and!74005)))

(declare-fun b_free!25579 () Bool)

(declare-fun b_next!25643 () Bool)

(assert (=> b!848140 (= b_free!25579 (not b_next!25643))))

(declare-fun tp!267060 () Bool)

(declare-fun b_and!74007 () Bool)

(assert (=> b!848140 (= tp!267060 b_and!74007)))

(declare-fun b!848136 () Bool)

(declare-fun res!387729 () Bool)

(declare-fun e!558147 () Bool)

(assert (=> b!848136 (=> (not res!387729) (not e!558147))))

(declare-datatypes ((List!9162 0))(
  ( (Nil!9146) (Cons!9146 (h!14547 (_ BitVec 16)) (t!94854 List!9162)) )
))
(declare-datatypes ((TokenValue!1782 0))(
  ( (FloatLiteralValue!3564 (text!12919 List!9162)) (TokenValueExt!1781 (__x!7295 Int)) (Broken!8910 (value!55579 List!9162)) (Object!1797) (End!1782) (Def!1782) (Underscore!1782) (Match!1782) (Else!1782) (Error!1782) (Case!1782) (If!1782) (Extends!1782) (Abstract!1782) (Class!1782) (Val!1782) (DelimiterValue!3564 (del!1842 List!9162)) (KeywordValue!1788 (value!55580 List!9162)) (CommentValue!3564 (value!55581 List!9162)) (WhitespaceValue!3564 (value!55582 List!9162)) (IndentationValue!1782 (value!55583 List!9162)) (String!10807) (Int32!1782) (Broken!8911 (value!55584 List!9162)) (Boolean!1783) (Unit!13622) (OperatorValue!1785 (op!1842 List!9162)) (IdentifierValue!3564 (value!55585 List!9162)) (IdentifierValue!3565 (value!55586 List!9162)) (WhitespaceValue!3565 (value!55587 List!9162)) (True!3564) (False!3564) (Broken!8912 (value!55588 List!9162)) (Broken!8913 (value!55589 List!9162)) (True!3565) (RightBrace!1782) (RightBracket!1782) (Colon!1782) (Null!1782) (Comma!1782) (LeftBracket!1782) (False!3565) (LeftBrace!1782) (ImaginaryLiteralValue!1782 (text!12920 List!9162)) (StringLiteralValue!5346 (value!55590 List!9162)) (EOFValue!1782 (value!55591 List!9162)) (IdentValue!1782 (value!55592 List!9162)) (DelimiterValue!3565 (value!55593 List!9162)) (DedentValue!1782 (value!55594 List!9162)) (NewLineValue!1782 (value!55595 List!9162)) (IntegerValue!5346 (value!55596 (_ BitVec 32)) (text!12921 List!9162)) (IntegerValue!5347 (value!55597 Int) (text!12922 List!9162)) (Times!1782) (Or!1782) (Equal!1782) (Minus!1782) (Broken!8914 (value!55598 List!9162)) (And!1782) (Div!1782) (LessEqual!1782) (Mod!1782) (Concat!3931) (Not!1782) (Plus!1782) (SpaceValue!1782 (value!55599 List!9162)) (IntegerValue!5348 (value!55600 Int) (text!12923 List!9162)) (StringLiteralValue!5347 (text!12924 List!9162)) (FloatLiteralValue!3565 (text!12925 List!9162)) (BytesLiteralValue!1782 (value!55601 List!9162)) (CommentValue!3565 (value!55602 List!9162)) (StringLiteralValue!5348 (value!55603 List!9162)) (ErrorTokenValue!1782 (msg!1843 List!9162)) )
))
(declare-datatypes ((C!4868 0))(
  ( (C!4869 (val!2682 Int)) )
))
(declare-datatypes ((Regex!2149 0))(
  ( (ElementMatch!2149 (c!137814 C!4868)) (Concat!3932 (regOne!4810 Regex!2149) (regTwo!4810 Regex!2149)) (EmptyExpr!2149) (Star!2149 (reg!2478 Regex!2149)) (EmptyLang!2149) (Union!2149 (regOne!4811 Regex!2149) (regTwo!4811 Regex!2149)) )
))
(declare-datatypes ((String!10808 0))(
  ( (String!10809 (value!55604 String)) )
))
(declare-datatypes ((List!9163 0))(
  ( (Nil!9147) (Cons!9147 (h!14548 C!4868) (t!94855 List!9163)) )
))
(declare-datatypes ((IArray!6069 0))(
  ( (IArray!6070 (innerList!3092 List!9163)) )
))
(declare-datatypes ((Conc!3032 0))(
  ( (Node!3032 (left!6771 Conc!3032) (right!7101 Conc!3032) (csize!6294 Int) (cheight!3243 Int)) (Leaf!4478 (xs!5721 IArray!6069) (csize!6295 Int)) (Empty!3032) )
))
(declare-datatypes ((BalanceConc!6078 0))(
  ( (BalanceConc!6079 (c!137815 Conc!3032)) )
))
(declare-datatypes ((TokenValueInjection!3264 0))(
  ( (TokenValueInjection!3265 (toValue!2745 Int) (toChars!2604 Int)) )
))
(declare-datatypes ((Rule!3232 0))(
  ( (Rule!3233 (regex!1716 Regex!2149) (tag!1978 String!10808) (isSeparator!1716 Bool) (transformation!1716 TokenValueInjection!3264)) )
))
(declare-datatypes ((Token!3098 0))(
  ( (Token!3099 (value!55605 TokenValue!1782) (rule!3139 Rule!3232) (size!7621 Int) (originalCharacters!2272 List!9163)) )
))
(declare-datatypes ((List!9164 0))(
  ( (Nil!9148) (Cons!9148 (h!14549 Token!3098) (t!94856 List!9164)) )
))
(declare-fun l!5107 () List!9164)

(declare-fun lambda!25280 () Int)

(declare-fun forall!2145 (List!9164 Int) Bool)

(assert (=> b!848136 (= res!387729 (forall!2145 l!5107 lambda!25280))))

(declare-fun e!558128 () Bool)

(declare-fun b!848137 () Bool)

(declare-fun tp!267066 () Bool)

(declare-fun e!558142 () Bool)

(declare-fun inv!11627 (Token!3098) Bool)

(assert (=> b!848137 (= e!558142 (and (inv!11627 (h!14549 l!5107)) e!558128 tp!267066))))

(declare-fun b!848139 () Bool)

(declare-fun e!558131 () Bool)

(declare-fun e!558145 () Bool)

(declare-fun tp!267067 () Bool)

(assert (=> b!848139 (= e!558131 (and e!558145 tp!267067))))

(declare-fun e!558143 () Bool)

(assert (=> b!848140 (= e!558143 (and tp!267058 tp!267060))))

(declare-fun b!848141 () Bool)

(declare-fun tp!267070 () Bool)

(declare-fun e!558135 () Bool)

(declare-fun e!558139 () Bool)

(declare-fun inv!11624 (String!10808) Bool)

(declare-fun inv!11628 (TokenValueInjection!3264) Bool)

(assert (=> b!848141 (= e!558139 (and tp!267070 (inv!11624 (tag!1978 (rule!3139 (h!14549 l!5107)))) (inv!11628 (transformation!1716 (rule!3139 (h!14549 l!5107)))) e!558135))))

(declare-fun b!848142 () Bool)

(declare-fun res!387724 () Bool)

(assert (=> b!848142 (=> (not res!387724) (not e!558147))))

(declare-fun separatorToken!297 () Token!3098)

(assert (=> b!848142 (= res!387724 (isSeparator!1716 (rule!3139 separatorToken!297)))))

(declare-fun b!848143 () Bool)

(declare-fun res!387727 () Bool)

(declare-fun e!558146 () Bool)

(assert (=> b!848143 (=> res!387727 e!558146)))

(declare-fun lt!321339 () List!9164)

(assert (=> b!848143 (= res!387727 (not (= (h!14549 (t!94856 lt!321339)) separatorToken!297)))))

(declare-fun e!558140 () Bool)

(declare-fun b!848144 () Bool)

(declare-fun tp!267061 () Bool)

(declare-fun e!558137 () Bool)

(declare-fun inv!21 (TokenValue!1782) Bool)

(assert (=> b!848144 (= e!558137 (and (inv!21 (value!55605 separatorToken!297)) e!558140 tp!267061))))

(declare-datatypes ((List!9165 0))(
  ( (Nil!9149) (Cons!9149 (h!14550 Rule!3232) (t!94857 List!9165)) )
))
(declare-fun rules!2621 () List!9165)

(declare-datatypes ((LexerInterface!1518 0))(
  ( (LexerInterfaceExt!1515 (__x!7296 Int)) (Lexer!1516) )
))
(declare-fun thiss!20117 () LexerInterface!1518)

(declare-fun lt!321342 () List!9164)

(declare-fun e!558141 () Bool)

(declare-fun b!848145 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!40 (LexerInterface!1518 List!9164 List!9165) Bool)

(assert (=> b!848145 (= e!558141 (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 lt!321342 rules!2621))))

(declare-fun tp!267068 () Bool)

(declare-fun b!848146 () Bool)

(assert (=> b!848146 (= e!558128 (and (inv!21 (value!55605 (h!14549 l!5107))) e!558139 tp!267068))))

(declare-fun b!848147 () Bool)

(declare-fun res!387728 () Bool)

(assert (=> b!848147 (=> (not res!387728) (not e!558147))))

(declare-fun rulesProduceIndividualToken!582 (LexerInterface!1518 List!9165 Token!3098) Bool)

(assert (=> b!848147 (= res!387728 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun tp!267062 () Bool)

(declare-fun b!848148 () Bool)

(declare-fun e!558130 () Bool)

(assert (=> b!848148 (= e!558145 (and tp!267062 (inv!11624 (tag!1978 (h!14550 rules!2621))) (inv!11628 (transformation!1716 (h!14550 rules!2621))) e!558130))))

(declare-fun b!848149 () Bool)

(declare-fun res!387723 () Bool)

(assert (=> b!848149 (=> (not res!387723) (not e!558147))))

(declare-fun rulesProduceEachTokenIndividuallyList!406 (LexerInterface!1518 List!9165 List!9164) Bool)

(assert (=> b!848149 (= res!387723 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 l!5107))))

(assert (=> b!848150 (= e!558130 (and tp!267064 tp!267059))))

(declare-fun res!387722 () Bool)

(assert (=> start!75690 (=> (not res!387722) (not e!558147))))

(get-info :version)

(assert (=> start!75690 (= res!387722 ((_ is Lexer!1516) thiss!20117))))

(assert (=> start!75690 e!558147))

(assert (=> start!75690 true))

(assert (=> start!75690 e!558131))

(assert (=> start!75690 e!558142))

(assert (=> start!75690 (and (inv!11627 separatorToken!297) e!558137)))

(declare-fun tp!267065 () Bool)

(declare-fun b!848138 () Bool)

(assert (=> b!848138 (= e!558140 (and tp!267065 (inv!11624 (tag!1978 (rule!3139 separatorToken!297))) (inv!11628 (transformation!1716 (rule!3139 separatorToken!297))) e!558143))))

(declare-fun b!848151 () Bool)

(declare-fun res!387726 () Bool)

(assert (=> b!848151 (=> (not res!387726) (not e!558147))))

(declare-fun isEmpty!5400 (List!9165) Bool)

(assert (=> b!848151 (= res!387726 (not (isEmpty!5400 rules!2621)))))

(declare-fun b!848152 () Bool)

(declare-fun e!558138 () Bool)

(assert (=> b!848152 (= e!558146 e!558138)))

(declare-fun res!387719 () Bool)

(assert (=> b!848152 (=> res!387719 e!558138)))

(declare-fun isEmpty!5401 (List!9164) Bool)

(assert (=> b!848152 (= res!387719 (isEmpty!5401 (t!94856 (t!94856 lt!321339))))))

(assert (=> b!848152 e!558141))

(declare-fun res!387725 () Bool)

(assert (=> b!848152 (=> (not res!387725) (not e!558141))))

(assert (=> b!848152 (= res!387725 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 lt!321342))))

(declare-fun lt!321345 () List!9164)

(declare-datatypes ((Unit!13623 0))(
  ( (Unit!13624) )
))
(declare-fun lt!321343 () Unit!13623)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!48 (LexerInterface!1518 List!9165 List!9164 Token!3098) Unit!13623)

(assert (=> b!848152 (= lt!321343 (withSeparatorTokenListPreservesRulesProduceTokens!48 thiss!20117 rules!2621 lt!321345 separatorToken!297))))

(declare-fun lt!321347 () Unit!13623)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!24 (LexerInterface!1518 List!9165 List!9164 Token!3098) Unit!13623)

(assert (=> b!848152 (= lt!321347 (printWithSeparatorTokenImpliesSeparableTokensList!24 thiss!20117 rules!2621 lt!321345 separatorToken!297))))

(declare-fun separableTokensPredicate!58 (LexerInterface!1518 Token!3098 Token!3098 List!9165) Bool)

(assert (=> b!848152 (separableTokensPredicate!58 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621)))

(declare-fun lt!321346 () Unit!13623)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!40 (LexerInterface!1518 Token!3098 Token!3098 List!9165) Unit!13623)

(assert (=> b!848152 (= lt!321346 (lemmaTokensOfDifferentKindsAreSeparable!40 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621))))

(declare-fun b!848153 () Bool)

(declare-fun res!387718 () Bool)

(assert (=> b!848153 (=> (not res!387718) (not e!558147))))

(declare-fun sepAndNonSepRulesDisjointChars!516 (List!9165 List!9165) Bool)

(assert (=> b!848153 (= res!387718 (sepAndNonSepRulesDisjointChars!516 rules!2621 rules!2621))))

(declare-fun b!848154 () Bool)

(declare-fun e!558133 () Bool)

(assert (=> b!848154 (= e!558133 e!558146)))

(declare-fun res!387730 () Bool)

(assert (=> b!848154 (=> res!387730 e!558146)))

(assert (=> b!848154 (= res!387730 (not (= (t!94856 (t!94856 lt!321339)) lt!321342)))))

(declare-fun withSeparatorTokenList!48 (LexerInterface!1518 List!9164 Token!3098) List!9164)

(assert (=> b!848154 (= lt!321342 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))

(declare-fun tail!1034 (List!9164) List!9164)

(assert (=> b!848154 (= lt!321345 (tail!1034 l!5107))))

(declare-fun b!848155 () Bool)

(declare-fun res!387721 () Bool)

(assert (=> b!848155 (=> res!387721 e!558146)))

(declare-fun head!1476 (List!9164) Token!3098)

(assert (=> b!848155 (= res!387721 (not (= (head!1476 l!5107) (h!14549 lt!321339))))))

(declare-fun b!848156 () Bool)

(declare-datatypes ((IArray!6071 0))(
  ( (IArray!6072 (innerList!3093 List!9164)) )
))
(declare-datatypes ((Conc!3033 0))(
  ( (Node!3033 (left!6772 Conc!3033) (right!7102 Conc!3033) (csize!6296 Int) (cheight!3244 Int)) (Leaf!4479 (xs!5722 IArray!6071) (csize!6297 Int)) (Empty!3033) )
))
(declare-datatypes ((BalanceConc!6080 0))(
  ( (BalanceConc!6081 (c!137816 Conc!3033)) )
))
(declare-fun rulesProduceEachTokenIndividually!607 (LexerInterface!1518 List!9165 BalanceConc!6080) Bool)

(declare-fun seqFromList!1522 (List!9164) BalanceConc!6080)

(assert (=> b!848156 (= e!558138 (rulesProduceEachTokenIndividually!607 thiss!20117 rules!2621 (seqFromList!1522 lt!321339)))))

(declare-fun lt!321340 () Token!3098)

(assert (=> b!848156 (separableTokensPredicate!58 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621)))

(declare-fun lt!321341 () Unit!13623)

(assert (=> b!848156 (= lt!321341 (lemmaTokensOfDifferentKindsAreSeparable!40 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621))))

(assert (=> b!848156 (= lt!321340 (head!1476 (t!94856 (t!94856 lt!321339))))))

(declare-fun b!848157 () Bool)

(declare-fun res!387720 () Bool)

(assert (=> b!848157 (=> (not res!387720) (not e!558147))))

(declare-fun rulesInvariant!1394 (LexerInterface!1518 List!9165) Bool)

(assert (=> b!848157 (= res!387720 (rulesInvariant!1394 thiss!20117 rules!2621))))

(assert (=> b!848158 (= e!558135 (and tp!267063 tp!267069))))

(declare-fun b!848159 () Bool)

(assert (=> b!848159 (= e!558147 (not e!558133))))

(declare-fun res!387731 () Bool)

(assert (=> b!848159 (=> res!387731 e!558133)))

(assert (=> b!848159 (= res!387731 (or (not ((_ is Cons!9148) lt!321339)) (not ((_ is Cons!9148) (t!94856 lt!321339)))))))

(assert (=> b!848159 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 lt!321339)))

(assert (=> b!848159 (= lt!321339 (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!321344 () Unit!13623)

(assert (=> b!848159 (= lt!321344 (withSeparatorTokenListPreservesRulesProduceTokens!48 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (= (and start!75690 res!387722) b!848151))

(assert (= (and b!848151 res!387726) b!848157))

(assert (= (and b!848157 res!387720) b!848149))

(assert (= (and b!848149 res!387723) b!848147))

(assert (= (and b!848147 res!387728) b!848142))

(assert (= (and b!848142 res!387724) b!848136))

(assert (= (and b!848136 res!387729) b!848153))

(assert (= (and b!848153 res!387718) b!848159))

(assert (= (and b!848159 (not res!387731)) b!848154))

(assert (= (and b!848154 (not res!387730)) b!848155))

(assert (= (and b!848155 (not res!387721)) b!848143))

(assert (= (and b!848143 (not res!387727)) b!848152))

(assert (= (and b!848152 res!387725) b!848145))

(assert (= (and b!848152 (not res!387719)) b!848156))

(assert (= b!848148 b!848150))

(assert (= b!848139 b!848148))

(assert (= (and start!75690 ((_ is Cons!9149) rules!2621)) b!848139))

(assert (= b!848141 b!848158))

(assert (= b!848146 b!848141))

(assert (= b!848137 b!848146))

(assert (= (and start!75690 ((_ is Cons!9148) l!5107)) b!848137))

(assert (= b!848138 b!848140))

(assert (= b!848144 b!848138))

(assert (= start!75690 b!848144))

(declare-fun m!1084801 () Bool)

(assert (=> b!848152 m!1084801))

(declare-fun m!1084803 () Bool)

(assert (=> b!848152 m!1084803))

(declare-fun m!1084805 () Bool)

(assert (=> b!848152 m!1084805))

(declare-fun m!1084807 () Bool)

(assert (=> b!848152 m!1084807))

(declare-fun m!1084809 () Bool)

(assert (=> b!848152 m!1084809))

(declare-fun m!1084811 () Bool)

(assert (=> b!848152 m!1084811))

(declare-fun m!1084813 () Bool)

(assert (=> b!848144 m!1084813))

(declare-fun m!1084815 () Bool)

(assert (=> start!75690 m!1084815))

(declare-fun m!1084817 () Bool)

(assert (=> b!848136 m!1084817))

(declare-fun m!1084819 () Bool)

(assert (=> b!848156 m!1084819))

(declare-fun m!1084821 () Bool)

(assert (=> b!848156 m!1084821))

(declare-fun m!1084823 () Bool)

(assert (=> b!848156 m!1084823))

(assert (=> b!848156 m!1084821))

(declare-fun m!1084825 () Bool)

(assert (=> b!848156 m!1084825))

(declare-fun m!1084827 () Bool)

(assert (=> b!848156 m!1084827))

(declare-fun m!1084829 () Bool)

(assert (=> b!848145 m!1084829))

(declare-fun m!1084831 () Bool)

(assert (=> b!848138 m!1084831))

(declare-fun m!1084833 () Bool)

(assert (=> b!848138 m!1084833))

(declare-fun m!1084835 () Bool)

(assert (=> b!848137 m!1084835))

(declare-fun m!1084837 () Bool)

(assert (=> b!848153 m!1084837))

(declare-fun m!1084839 () Bool)

(assert (=> b!848146 m!1084839))

(declare-fun m!1084841 () Bool)

(assert (=> b!848157 m!1084841))

(declare-fun m!1084843 () Bool)

(assert (=> b!848159 m!1084843))

(declare-fun m!1084845 () Bool)

(assert (=> b!848159 m!1084845))

(declare-fun m!1084847 () Bool)

(assert (=> b!848159 m!1084847))

(declare-fun m!1084849 () Bool)

(assert (=> b!848141 m!1084849))

(declare-fun m!1084851 () Bool)

(assert (=> b!848141 m!1084851))

(declare-fun m!1084853 () Bool)

(assert (=> b!848155 m!1084853))

(declare-fun m!1084855 () Bool)

(assert (=> b!848149 m!1084855))

(declare-fun m!1084857 () Bool)

(assert (=> b!848151 m!1084857))

(declare-fun m!1084859 () Bool)

(assert (=> b!848154 m!1084859))

(declare-fun m!1084861 () Bool)

(assert (=> b!848154 m!1084861))

(declare-fun m!1084863 () Bool)

(assert (=> b!848147 m!1084863))

(declare-fun m!1084865 () Bool)

(assert (=> b!848148 m!1084865))

(declare-fun m!1084867 () Bool)

(assert (=> b!848148 m!1084867))

(check-sat (not b!848151) (not b!848148) (not b!848144) (not b_next!25635) (not b!848154) b_and!73999 (not b!848147) (not b!848156) (not b!848157) (not b!848139) (not b!848145) (not b!848159) b_and!74003 (not start!75690) (not b!848141) b_and!73997 b_and!74001 (not b_next!25633) (not b_next!25637) (not b!848137) (not b!848152) (not b!848136) (not b_next!25641) (not b_next!25639) (not b!848153) b_and!74007 (not b!848149) (not b_next!25643) (not b!848146) b_and!74005 (not b!848155) (not b!848138))
(check-sat (not b_next!25637) (not b_next!25635) b_and!73999 b_and!74007 (not b_next!25643) b_and!74005 b_and!74003 b_and!73997 b_and!74001 (not b_next!25633) (not b_next!25641) (not b_next!25639))
(get-model)

(declare-fun d!264242 () Bool)

(assert (=> d!264242 (= (isEmpty!5400 rules!2621) ((_ is Nil!9149) rules!2621))))

(assert (=> b!848151 d!264242))

(declare-fun d!264244 () Bool)

(assert (=> d!264244 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))

(declare-fun lt!321359 () Unit!13623)

(declare-fun choose!5008 (LexerInterface!1518 List!9165 List!9164 Token!3098) Unit!13623)

(assert (=> d!264244 (= lt!321359 (choose!5008 thiss!20117 rules!2621 lt!321345 separatorToken!297))))

(assert (=> d!264244 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264244 (= (withSeparatorTokenListPreservesRulesProduceTokens!48 thiss!20117 rules!2621 lt!321345 separatorToken!297) lt!321359)))

(declare-fun bs!230701 () Bool)

(assert (= bs!230701 d!264244))

(assert (=> bs!230701 m!1084859))

(assert (=> bs!230701 m!1084859))

(declare-fun m!1084899 () Bool)

(assert (=> bs!230701 m!1084899))

(declare-fun m!1084901 () Bool)

(assert (=> bs!230701 m!1084901))

(assert (=> bs!230701 m!1084857))

(assert (=> b!848152 d!264244))

(declare-fun d!264260 () Bool)

(assert (=> d!264260 (separableTokensPredicate!58 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621)))

(declare-fun lt!321362 () Unit!13623)

(declare-fun choose!5009 (LexerInterface!1518 Token!3098 Token!3098 List!9165) Unit!13623)

(assert (=> d!264260 (= lt!321362 (choose!5009 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621))))

(assert (=> d!264260 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264260 (= (lemmaTokensOfDifferentKindsAreSeparable!40 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621) lt!321362)))

(declare-fun bs!230702 () Bool)

(assert (= bs!230702 d!264260))

(assert (=> bs!230702 m!1084811))

(declare-fun m!1084903 () Bool)

(assert (=> bs!230702 m!1084903))

(assert (=> bs!230702 m!1084857))

(assert (=> b!848152 d!264260))

(declare-fun bs!230704 () Bool)

(declare-fun d!264262 () Bool)

(assert (= bs!230704 (and d!264262 b!848136)))

(declare-fun lambda!25286 () Int)

(assert (=> bs!230704 (not (= lambda!25286 lambda!25280))))

(declare-fun b!848214 () Bool)

(declare-fun e!558184 () Bool)

(assert (=> b!848214 (= e!558184 true)))

(declare-fun b!848213 () Bool)

(declare-fun e!558183 () Bool)

(assert (=> b!848213 (= e!558183 e!558184)))

(declare-fun b!848212 () Bool)

(declare-fun e!558182 () Bool)

(assert (=> b!848212 (= e!558182 e!558183)))

(assert (=> d!264262 e!558182))

(assert (= b!848213 b!848214))

(assert (= b!848212 b!848213))

(assert (= (and d!264262 ((_ is Cons!9149) rules!2621)) b!848212))

(declare-fun order!5843 () Int)

(declare-fun order!5845 () Int)

(declare-fun dynLambda!4248 (Int Int) Int)

(declare-fun dynLambda!4249 (Int Int) Int)

(assert (=> b!848214 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25286))))

(declare-fun order!5847 () Int)

(declare-fun dynLambda!4250 (Int Int) Int)

(assert (=> b!848214 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25286))))

(assert (=> d!264262 true))

(declare-fun lt!321368 () Bool)

(assert (=> d!264262 (= lt!321368 (forall!2145 lt!321342 lambda!25286))))

(declare-fun e!558174 () Bool)

(assert (=> d!264262 (= lt!321368 e!558174)))

(declare-fun res!387769 () Bool)

(assert (=> d!264262 (=> res!387769 e!558174)))

(assert (=> d!264262 (= res!387769 (not ((_ is Cons!9148) lt!321342)))))

(assert (=> d!264262 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264262 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 lt!321342) lt!321368)))

(declare-fun b!848202 () Bool)

(declare-fun e!558175 () Bool)

(assert (=> b!848202 (= e!558174 e!558175)))

(declare-fun res!387768 () Bool)

(assert (=> b!848202 (=> (not res!387768) (not e!558175))))

(assert (=> b!848202 (= res!387768 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321342)))))

(declare-fun b!848203 () Bool)

(assert (=> b!848203 (= e!558175 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 lt!321342)))))

(assert (= (and d!264262 (not res!387769)) b!848202))

(assert (= (and b!848202 res!387768) b!848203))

(declare-fun m!1084911 () Bool)

(assert (=> d!264262 m!1084911))

(assert (=> d!264262 m!1084857))

(declare-fun m!1084913 () Bool)

(assert (=> b!848202 m!1084913))

(declare-fun m!1084915 () Bool)

(assert (=> b!848203 m!1084915))

(assert (=> b!848152 d!264262))

(declare-fun d!264266 () Bool)

(assert (=> d!264266 (= (isEmpty!5401 (t!94856 (t!94856 lt!321339))) ((_ is Nil!9148) (t!94856 (t!94856 lt!321339))))))

(assert (=> b!848152 d!264266))

(declare-fun d!264268 () Bool)

(declare-fun prefixMatchZipperSequence!27 (Regex!2149 BalanceConc!6078) Bool)

(declare-fun rulesRegex!20 (LexerInterface!1518 List!9165) Regex!2149)

(declare-fun ++!2368 (BalanceConc!6078 BalanceConc!6078) BalanceConc!6078)

(declare-fun charsOf!987 (Token!3098) BalanceConc!6078)

(declare-fun singletonSeq!532 (C!4868) BalanceConc!6078)

(declare-fun apply!1866 (BalanceConc!6078 Int) C!4868)

(assert (=> d!264268 (= (separableTokensPredicate!58 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621) (not (prefixMatchZipperSequence!27 (rulesRegex!20 thiss!20117 rules!2621) (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))))))

(declare-fun bs!230705 () Bool)

(assert (= bs!230705 d!264268))

(declare-fun m!1084917 () Bool)

(assert (=> bs!230705 m!1084917))

(declare-fun m!1084919 () Bool)

(assert (=> bs!230705 m!1084919))

(declare-fun m!1084921 () Bool)

(assert (=> bs!230705 m!1084921))

(declare-fun m!1084923 () Bool)

(assert (=> bs!230705 m!1084923))

(declare-fun m!1084925 () Bool)

(assert (=> bs!230705 m!1084925))

(assert (=> bs!230705 m!1084919))

(declare-fun m!1084927 () Bool)

(assert (=> bs!230705 m!1084927))

(assert (=> bs!230705 m!1084917))

(declare-fun m!1084929 () Bool)

(assert (=> bs!230705 m!1084929))

(assert (=> bs!230705 m!1084925))

(assert (=> bs!230705 m!1084923))

(assert (=> bs!230705 m!1084927))

(assert (=> bs!230705 m!1084929))

(assert (=> b!848152 d!264268))

(declare-fun e!558196 () Bool)

(declare-fun b!848236 () Bool)

(assert (=> b!848236 (= e!558196 (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297) rules!2621))))

(declare-fun lt!321381 () Unit!13623)

(declare-fun lt!321383 () Unit!13623)

(assert (=> b!848236 (= lt!321381 lt!321383)))

(assert (=> b!848236 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))

(assert (=> b!848236 (= lt!321383 (withSeparatorTokenListPreservesRulesProduceTokens!48 thiss!20117 rules!2621 lt!321345 separatorToken!297))))

(declare-fun b!848237 () Bool)

(declare-fun res!387792 () Bool)

(assert (=> b!848237 (=> (not res!387792) (not e!558196))))

(assert (=> b!848237 (= res!387792 (rulesInvariant!1394 thiss!20117 rules!2621))))

(declare-fun b!848238 () Bool)

(declare-fun res!387789 () Bool)

(assert (=> b!848238 (=> (not res!387789) (not e!558196))))

(assert (=> b!848238 (= res!387789 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 lt!321345))))

(declare-fun b!848239 () Bool)

(declare-fun res!387793 () Bool)

(assert (=> b!848239 (=> (not res!387793) (not e!558196))))

(assert (=> b!848239 (= res!387793 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun d!264270 () Bool)

(assert (=> d!264270 e!558196))

(declare-fun res!387791 () Bool)

(assert (=> d!264270 (=> (not res!387791) (not e!558196))))

(assert (=> d!264270 (= res!387791 ((_ is Lexer!1516) thiss!20117))))

(declare-fun lt!321382 () Unit!13623)

(declare-fun choose!5010 (LexerInterface!1518 List!9165 List!9164 Token!3098) Unit!13623)

(assert (=> d!264270 (= lt!321382 (choose!5010 thiss!20117 rules!2621 lt!321345 separatorToken!297))))

(assert (=> d!264270 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264270 (= (printWithSeparatorTokenImpliesSeparableTokensList!24 thiss!20117 rules!2621 lt!321345 separatorToken!297) lt!321382)))

(declare-fun b!848240 () Bool)

(declare-fun res!387790 () Bool)

(assert (=> b!848240 (=> (not res!387790) (not e!558196))))

(assert (=> b!848240 (= res!387790 (isSeparator!1716 (rule!3139 separatorToken!297)))))

(assert (= (and d!264270 res!387791) b!848237))

(assert (= (and b!848237 res!387792) b!848238))

(assert (= (and b!848238 res!387789) b!848239))

(assert (= (and b!848239 res!387793) b!848240))

(assert (= (and b!848240 res!387790) b!848236))

(declare-fun m!1084943 () Bool)

(assert (=> d!264270 m!1084943))

(assert (=> d!264270 m!1084857))

(assert (=> b!848237 m!1084841))

(assert (=> b!848239 m!1084863))

(assert (=> b!848236 m!1084859))

(assert (=> b!848236 m!1084859))

(declare-fun m!1084945 () Bool)

(assert (=> b!848236 m!1084945))

(assert (=> b!848236 m!1084859))

(assert (=> b!848236 m!1084899))

(assert (=> b!848236 m!1084809))

(declare-fun m!1084947 () Bool)

(assert (=> b!848238 m!1084947))

(assert (=> b!848152 d!264270))

(declare-fun d!264282 () Bool)

(assert (=> d!264282 (= (inv!11624 (tag!1978 (rule!3139 (h!14549 l!5107)))) (= (mod (str.len (value!55604 (tag!1978 (rule!3139 (h!14549 l!5107))))) 2) 0))))

(assert (=> b!848141 d!264282))

(declare-fun d!264284 () Bool)

(declare-fun res!387796 () Bool)

(declare-fun e!558199 () Bool)

(assert (=> d!264284 (=> (not res!387796) (not e!558199))))

(declare-fun semiInverseModEq!666 (Int Int) Bool)

(assert (=> d!264284 (= res!387796 (semiInverseModEq!666 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))))))

(assert (=> d!264284 (= (inv!11628 (transformation!1716 (rule!3139 (h!14549 l!5107)))) e!558199)))

(declare-fun b!848243 () Bool)

(declare-fun equivClasses!633 (Int Int) Bool)

(assert (=> b!848243 (= e!558199 (equivClasses!633 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))))))

(assert (= (and d!264284 res!387796) b!848243))

(declare-fun m!1084949 () Bool)

(assert (=> d!264284 m!1084949))

(declare-fun m!1084951 () Bool)

(assert (=> b!848243 m!1084951))

(assert (=> b!848141 d!264284))

(declare-fun d!264286 () Bool)

(assert (=> d!264286 (= (inv!11624 (tag!1978 (h!14550 rules!2621))) (= (mod (str.len (value!55604 (tag!1978 (h!14550 rules!2621)))) 2) 0))))

(assert (=> b!848148 d!264286))

(declare-fun d!264288 () Bool)

(declare-fun res!387797 () Bool)

(declare-fun e!558200 () Bool)

(assert (=> d!264288 (=> (not res!387797) (not e!558200))))

(assert (=> d!264288 (= res!387797 (semiInverseModEq!666 (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toValue!2745 (transformation!1716 (h!14550 rules!2621)))))))

(assert (=> d!264288 (= (inv!11628 (transformation!1716 (h!14550 rules!2621))) e!558200)))

(declare-fun b!848244 () Bool)

(assert (=> b!848244 (= e!558200 (equivClasses!633 (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toValue!2745 (transformation!1716 (h!14550 rules!2621)))))))

(assert (= (and d!264288 res!387797) b!848244))

(declare-fun m!1084953 () Bool)

(assert (=> d!264288 m!1084953))

(declare-fun m!1084955 () Bool)

(assert (=> b!848244 m!1084955))

(assert (=> b!848148 d!264288))

(declare-fun d!264290 () Bool)

(declare-fun res!387802 () Bool)

(declare-fun e!558203 () Bool)

(assert (=> d!264290 (=> (not res!387802) (not e!558203))))

(declare-fun isEmpty!5404 (List!9163) Bool)

(assert (=> d!264290 (= res!387802 (not (isEmpty!5404 (originalCharacters!2272 (h!14549 l!5107)))))))

(assert (=> d!264290 (= (inv!11627 (h!14549 l!5107)) e!558203)))

(declare-fun b!848249 () Bool)

(declare-fun res!387803 () Bool)

(assert (=> b!848249 (=> (not res!387803) (not e!558203))))

(declare-fun list!3589 (BalanceConc!6078) List!9163)

(declare-fun dynLambda!4252 (Int TokenValue!1782) BalanceConc!6078)

(assert (=> b!848249 (= res!387803 (= (originalCharacters!2272 (h!14549 l!5107)) (list!3589 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))))))

(declare-fun b!848250 () Bool)

(declare-fun size!7625 (List!9163) Int)

(assert (=> b!848250 (= e!558203 (= (size!7621 (h!14549 l!5107)) (size!7625 (originalCharacters!2272 (h!14549 l!5107)))))))

(assert (= (and d!264290 res!387802) b!848249))

(assert (= (and b!848249 res!387803) b!848250))

(declare-fun b_lambda!28113 () Bool)

(assert (=> (not b_lambda!28113) (not b!848249)))

(declare-fun t!94863 () Bool)

(declare-fun tb!59105 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) t!94863) tb!59105))

(declare-fun b!848255 () Bool)

(declare-fun e!558206 () Bool)

(declare-fun tp!267073 () Bool)

(declare-fun inv!11631 (Conc!3032) Bool)

(assert (=> b!848255 (= e!558206 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))) tp!267073))))

(declare-fun result!68518 () Bool)

(declare-fun inv!11632 (BalanceConc!6078) Bool)

(assert (=> tb!59105 (= result!68518 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))) e!558206))))

(assert (= tb!59105 b!848255))

(declare-fun m!1084957 () Bool)

(assert (=> b!848255 m!1084957))

(declare-fun m!1084959 () Bool)

(assert (=> tb!59105 m!1084959))

(assert (=> b!848249 t!94863))

(declare-fun b_and!74009 () Bool)

(assert (= b_and!73999 (and (=> t!94863 result!68518) b_and!74009)))

(declare-fun t!94865 () Bool)

(declare-fun tb!59107 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) t!94865) tb!59107))

(declare-fun result!68522 () Bool)

(assert (= result!68522 result!68518))

(assert (=> b!848249 t!94865))

(declare-fun b_and!74011 () Bool)

(assert (= b_and!74003 (and (=> t!94865 result!68522) b_and!74011)))

(declare-fun tb!59109 () Bool)

(declare-fun t!94867 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) t!94867) tb!59109))

(declare-fun result!68524 () Bool)

(assert (= result!68524 result!68518))

(assert (=> b!848249 t!94867))

(declare-fun b_and!74013 () Bool)

(assert (= b_and!74007 (and (=> t!94867 result!68524) b_and!74013)))

(declare-fun m!1084961 () Bool)

(assert (=> d!264290 m!1084961))

(declare-fun m!1084963 () Bool)

(assert (=> b!848249 m!1084963))

(assert (=> b!848249 m!1084963))

(declare-fun m!1084965 () Bool)

(assert (=> b!848249 m!1084965))

(declare-fun m!1084967 () Bool)

(assert (=> b!848250 m!1084967))

(assert (=> b!848137 d!264290))

(declare-fun d!264292 () Bool)

(assert (=> d!264292 (= (inv!11624 (tag!1978 (rule!3139 separatorToken!297))) (= (mod (str.len (value!55604 (tag!1978 (rule!3139 separatorToken!297)))) 2) 0))))

(assert (=> b!848138 d!264292))

(declare-fun d!264294 () Bool)

(declare-fun res!387804 () Bool)

(declare-fun e!558207 () Bool)

(assert (=> d!264294 (=> (not res!387804) (not e!558207))))

(assert (=> d!264294 (= res!387804 (semiInverseModEq!666 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297)))))))

(assert (=> d!264294 (= (inv!11628 (transformation!1716 (rule!3139 separatorToken!297))) e!558207)))

(declare-fun b!848256 () Bool)

(assert (=> b!848256 (= e!558207 (equivClasses!633 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297)))))))

(assert (= (and d!264294 res!387804) b!848256))

(declare-fun m!1084969 () Bool)

(assert (=> d!264294 m!1084969))

(declare-fun m!1084971 () Bool)

(assert (=> b!848256 m!1084971))

(assert (=> b!848138 d!264294))

(declare-fun bs!230708 () Bool)

(declare-fun d!264296 () Bool)

(assert (= bs!230708 (and d!264296 b!848136)))

(declare-fun lambda!25287 () Int)

(assert (=> bs!230708 (not (= lambda!25287 lambda!25280))))

(declare-fun bs!230709 () Bool)

(assert (= bs!230709 (and d!264296 d!264262)))

(assert (=> bs!230709 (= lambda!25287 lambda!25286)))

(declare-fun b!848263 () Bool)

(declare-fun e!558216 () Bool)

(assert (=> b!848263 (= e!558216 true)))

(declare-fun b!848262 () Bool)

(declare-fun e!558215 () Bool)

(assert (=> b!848262 (= e!558215 e!558216)))

(declare-fun b!848261 () Bool)

(declare-fun e!558214 () Bool)

(assert (=> b!848261 (= e!558214 e!558215)))

(assert (=> d!264296 e!558214))

(assert (= b!848262 b!848263))

(assert (= b!848261 b!848262))

(assert (= (and d!264296 ((_ is Cons!9149) rules!2621)) b!848261))

(assert (=> b!848263 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25287))))

(assert (=> b!848263 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25287))))

(assert (=> d!264296 true))

(declare-fun lt!321392 () Bool)

(assert (=> d!264296 (= lt!321392 (forall!2145 lt!321339 lambda!25287))))

(declare-fun e!558210 () Bool)

(assert (=> d!264296 (= lt!321392 e!558210)))

(declare-fun res!387808 () Bool)

(assert (=> d!264296 (=> res!387808 e!558210)))

(assert (=> d!264296 (= res!387808 (not ((_ is Cons!9148) lt!321339)))))

(assert (=> d!264296 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264296 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 lt!321339) lt!321392)))

(declare-fun b!848259 () Bool)

(declare-fun e!558211 () Bool)

(assert (=> b!848259 (= e!558210 e!558211)))

(declare-fun res!387807 () Bool)

(assert (=> b!848259 (=> (not res!387807) (not e!558211))))

(assert (=> b!848259 (= res!387807 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321339)))))

(declare-fun b!848260 () Bool)

(assert (=> b!848260 (= e!558211 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 lt!321339)))))

(assert (= (and d!264296 (not res!387808)) b!848259))

(assert (= (and b!848259 res!387807) b!848260))

(declare-fun m!1084973 () Bool)

(assert (=> d!264296 m!1084973))

(assert (=> d!264296 m!1084857))

(declare-fun m!1084975 () Bool)

(assert (=> b!848259 m!1084975))

(declare-fun m!1084977 () Bool)

(assert (=> b!848260 m!1084977))

(assert (=> b!848159 d!264296))

(declare-fun e!558238 () List!9163)

(declare-fun e!558240 () Bool)

(declare-fun b!848294 () Bool)

(declare-fun printList!470 (LexerInterface!1518 List!9164) List!9163)

(declare-fun $colon$colon!83 (List!9164 Token!3098) List!9164)

(assert (=> b!848294 (= e!558240 (= (printList!470 thiss!20117 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107))) e!558238))))

(declare-fun c!137824 () Bool)

(declare-fun lt!321425 () List!9164)

(assert (=> b!848294 (= c!137824 ((_ is Cons!9148) lt!321425))))

(assert (=> b!848294 (= lt!321425 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107)))))

(declare-fun b!848295 () Bool)

(declare-fun res!387829 () Bool)

(declare-fun e!558241 () Bool)

(assert (=> b!848295 (=> (not res!387829) (not e!558241))))

(assert (=> b!848295 (= res!387829 e!558240)))

(declare-fun res!387827 () Bool)

(assert (=> b!848295 (=> res!387827 e!558240)))

(assert (=> b!848295 (= res!387827 (not ((_ is Cons!9148) l!5107)))))

(declare-fun b!848296 () Bool)

(declare-fun e!558242 () Bool)

(assert (=> b!848296 (= e!558241 e!558242)))

(declare-fun res!387830 () Bool)

(assert (=> b!848296 (=> res!387830 e!558242)))

(assert (=> b!848296 (= res!387830 (not ((_ is Cons!9148) l!5107)))))

(declare-fun d!264298 () Bool)

(declare-fun lt!321430 () List!9164)

(declare-fun printWithSeparatorTokenList!28 (LexerInterface!1518 List!9164 Token!3098) List!9163)

(assert (=> d!264298 (= (printList!470 thiss!20117 lt!321430) (printWithSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!558239 () List!9164)

(assert (=> d!264298 (= lt!321430 e!558239)))

(declare-fun c!137823 () Bool)

(assert (=> d!264298 (= c!137823 ((_ is Cons!9148) l!5107))))

(assert (=> d!264298 e!558241))

(declare-fun res!387828 () Bool)

(assert (=> d!264298 (=> (not res!387828) (not e!558241))))

(assert (=> d!264298 (= res!387828 (isSeparator!1716 (rule!3139 separatorToken!297)))))

(assert (=> d!264298 (= (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297) lt!321430)))

(declare-fun b!848297 () Bool)

(declare-fun e!558237 () List!9163)

(assert (=> b!848297 (= e!558237 Nil!9147)))

(declare-fun b!848298 () Bool)

(declare-fun ++!2370 (List!9163 List!9163) List!9163)

(assert (=> b!848298 (= e!558238 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321425))) (printList!470 thiss!20117 (t!94856 lt!321425))))))

(declare-fun b!848299 () Bool)

(declare-fun lt!321427 () List!9164)

(assert (=> b!848299 (= e!558237 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321427))) (printList!470 thiss!20117 (t!94856 lt!321427))))))

(declare-fun b!848300 () Bool)

(assert (=> b!848300 (= e!558242 (= (printList!470 thiss!20117 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297)) e!558237))))

(declare-fun c!137825 () Bool)

(assert (=> b!848300 (= c!137825 ((_ is Cons!9148) lt!321427))))

(assert (=> b!848300 (= lt!321427 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!848301 () Bool)

(assert (=> b!848301 (= e!558239 Nil!9148)))

(declare-fun b!848302 () Bool)

(assert (=> b!848302 (= e!558239 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107)))))

(declare-fun lt!321424 () List!9163)

(assert (=> b!848302 (= lt!321424 (list!3589 (charsOf!987 (h!14549 l!5107))))))

(declare-fun lt!321426 () List!9163)

(assert (=> b!848302 (= lt!321426 (list!3589 (charsOf!987 separatorToken!297)))))

(declare-fun lt!321429 () List!9163)

(assert (=> b!848302 (= lt!321429 (printList!470 thiss!20117 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297)))))

(declare-fun lt!321428 () Unit!13623)

(declare-fun lemmaConcatAssociativity!745 (List!9163 List!9163 List!9163) Unit!13623)

(assert (=> b!848302 (= lt!321428 (lemmaConcatAssociativity!745 lt!321424 lt!321426 lt!321429))))

(assert (=> b!848302 (= (++!2370 (++!2370 lt!321424 lt!321426) lt!321429) (++!2370 lt!321424 (++!2370 lt!321426 lt!321429)))))

(declare-fun lt!321423 () Unit!13623)

(assert (=> b!848302 (= lt!321423 lt!321428)))

(declare-fun b!848303 () Bool)

(assert (=> b!848303 (= e!558238 Nil!9147)))

(assert (= (and d!264298 res!387828) b!848295))

(assert (= (and b!848295 (not res!387827)) b!848294))

(assert (= (and b!848294 c!137824) b!848298))

(assert (= (and b!848294 (not c!137824)) b!848303))

(assert (= (and b!848295 res!387829) b!848296))

(assert (= (and b!848296 (not res!387830)) b!848300))

(assert (= (and b!848300 c!137825) b!848299))

(assert (= (and b!848300 (not c!137825)) b!848297))

(assert (= (and d!264298 c!137823) b!848302))

(assert (= (and d!264298 (not c!137823)) b!848301))

(declare-fun m!1085011 () Bool)

(assert (=> d!264298 m!1085011))

(declare-fun m!1085013 () Bool)

(assert (=> d!264298 m!1085013))

(declare-fun m!1085015 () Bool)

(assert (=> b!848302 m!1085015))

(declare-fun m!1085017 () Bool)

(assert (=> b!848302 m!1085017))

(declare-fun m!1085019 () Bool)

(assert (=> b!848302 m!1085019))

(declare-fun m!1085021 () Bool)

(assert (=> b!848302 m!1085021))

(declare-fun m!1085023 () Bool)

(assert (=> b!848302 m!1085023))

(declare-fun m!1085025 () Bool)

(assert (=> b!848302 m!1085025))

(declare-fun m!1085027 () Bool)

(assert (=> b!848302 m!1085027))

(declare-fun m!1085029 () Bool)

(assert (=> b!848302 m!1085029))

(declare-fun m!1085031 () Bool)

(assert (=> b!848302 m!1085031))

(declare-fun m!1085033 () Bool)

(assert (=> b!848302 m!1085033))

(assert (=> b!848302 m!1085027))

(assert (=> b!848302 m!1085023))

(assert (=> b!848302 m!1085017))

(declare-fun m!1085035 () Bool)

(assert (=> b!848302 m!1085035))

(assert (=> b!848302 m!1085033))

(declare-fun m!1085037 () Bool)

(assert (=> b!848302 m!1085037))

(assert (=> b!848302 m!1085015))

(declare-fun m!1085039 () Bool)

(assert (=> b!848302 m!1085039))

(assert (=> b!848302 m!1085027))

(assert (=> b!848302 m!1085019))

(assert (=> b!848294 m!1085027))

(assert (=> b!848294 m!1085027))

(assert (=> b!848294 m!1085023))

(assert (=> b!848294 m!1085023))

(assert (=> b!848294 m!1085025))

(assert (=> b!848294 m!1085025))

(declare-fun m!1085041 () Bool)

(assert (=> b!848294 m!1085041))

(declare-fun m!1085043 () Bool)

(assert (=> b!848298 m!1085043))

(assert (=> b!848298 m!1085043))

(declare-fun m!1085045 () Bool)

(assert (=> b!848298 m!1085045))

(declare-fun m!1085047 () Bool)

(assert (=> b!848298 m!1085047))

(assert (=> b!848298 m!1085045))

(assert (=> b!848298 m!1085047))

(declare-fun m!1085049 () Bool)

(assert (=> b!848298 m!1085049))

(declare-fun m!1085051 () Bool)

(assert (=> b!848299 m!1085051))

(assert (=> b!848299 m!1085051))

(declare-fun m!1085053 () Bool)

(assert (=> b!848299 m!1085053))

(declare-fun m!1085055 () Bool)

(assert (=> b!848299 m!1085055))

(assert (=> b!848299 m!1085053))

(assert (=> b!848299 m!1085055))

(declare-fun m!1085057 () Bool)

(assert (=> b!848299 m!1085057))

(assert (=> b!848300 m!1085027))

(assert (=> b!848300 m!1085027))

(assert (=> b!848300 m!1085023))

(assert (=> b!848300 m!1085023))

(declare-fun m!1085059 () Bool)

(assert (=> b!848300 m!1085059))

(assert (=> b!848159 d!264298))

(declare-fun d!264316 () Bool)

(assert (=> d!264316 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!321431 () Unit!13623)

(assert (=> d!264316 (= lt!321431 (choose!5008 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!264316 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264316 (= (withSeparatorTokenListPreservesRulesProduceTokens!48 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!321431)))

(declare-fun bs!230713 () Bool)

(assert (= bs!230713 d!264316))

(assert (=> bs!230713 m!1084845))

(assert (=> bs!230713 m!1084845))

(declare-fun m!1085061 () Bool)

(assert (=> bs!230713 m!1085061))

(declare-fun m!1085063 () Bool)

(assert (=> bs!230713 m!1085063))

(assert (=> bs!230713 m!1084857))

(assert (=> b!848159 d!264316))

(declare-fun bs!230714 () Bool)

(declare-fun d!264318 () Bool)

(assert (= bs!230714 (and d!264318 b!848136)))

(declare-fun lambda!25288 () Int)

(assert (=> bs!230714 (not (= lambda!25288 lambda!25280))))

(declare-fun bs!230715 () Bool)

(assert (= bs!230715 (and d!264318 d!264262)))

(assert (=> bs!230715 (= lambda!25288 lambda!25286)))

(declare-fun bs!230716 () Bool)

(assert (= bs!230716 (and d!264318 d!264296)))

(assert (=> bs!230716 (= lambda!25288 lambda!25287)))

(declare-fun b!848308 () Bool)

(declare-fun e!558247 () Bool)

(assert (=> b!848308 (= e!558247 true)))

(declare-fun b!848307 () Bool)

(declare-fun e!558246 () Bool)

(assert (=> b!848307 (= e!558246 e!558247)))

(declare-fun b!848306 () Bool)

(declare-fun e!558245 () Bool)

(assert (=> b!848306 (= e!558245 e!558246)))

(assert (=> d!264318 e!558245))

(assert (= b!848307 b!848308))

(assert (= b!848306 b!848307))

(assert (= (and d!264318 ((_ is Cons!9149) rules!2621)) b!848306))

(assert (=> b!848308 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25288))))

(assert (=> b!848308 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25288))))

(assert (=> d!264318 true))

(declare-fun lt!321432 () Bool)

(assert (=> d!264318 (= lt!321432 (forall!2145 l!5107 lambda!25288))))

(declare-fun e!558243 () Bool)

(assert (=> d!264318 (= lt!321432 e!558243)))

(declare-fun res!387832 () Bool)

(assert (=> d!264318 (=> res!387832 e!558243)))

(assert (=> d!264318 (= res!387832 (not ((_ is Cons!9148) l!5107)))))

(assert (=> d!264318 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264318 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 l!5107) lt!321432)))

(declare-fun b!848304 () Bool)

(declare-fun e!558244 () Bool)

(assert (=> b!848304 (= e!558243 e!558244)))

(declare-fun res!387831 () Bool)

(assert (=> b!848304 (=> (not res!387831) (not e!558244))))

(assert (=> b!848304 (= res!387831 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 l!5107)))))

(declare-fun b!848305 () Bool)

(assert (=> b!848305 (= e!558244 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 l!5107)))))

(assert (= (and d!264318 (not res!387832)) b!848304))

(assert (= (and b!848304 res!387831) b!848305))

(declare-fun m!1085065 () Bool)

(assert (=> d!264318 m!1085065))

(assert (=> d!264318 m!1084857))

(declare-fun m!1085067 () Bool)

(assert (=> b!848304 m!1085067))

(declare-fun m!1085069 () Bool)

(assert (=> b!848305 m!1085069))

(assert (=> b!848149 d!264318))

(declare-fun d!264320 () Bool)

(assert (=> d!264320 (= (head!1476 (t!94856 (t!94856 lt!321339))) (h!14549 (t!94856 (t!94856 lt!321339))))))

(assert (=> b!848156 d!264320))

(declare-fun d!264322 () Bool)

(declare-fun fromListB!669 (List!9164) BalanceConc!6080)

(assert (=> d!264322 (= (seqFromList!1522 lt!321339) (fromListB!669 lt!321339))))

(declare-fun bs!230717 () Bool)

(assert (= bs!230717 d!264322))

(declare-fun m!1085071 () Bool)

(assert (=> bs!230717 m!1085071))

(assert (=> b!848156 d!264322))

(declare-fun d!264324 () Bool)

(assert (=> d!264324 (= (separableTokensPredicate!58 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621) (not (prefixMatchZipperSequence!27 (rulesRegex!20 thiss!20117 rules!2621) (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))))))

(declare-fun bs!230718 () Bool)

(assert (= bs!230718 d!264324))

(assert (=> bs!230718 m!1084917))

(declare-fun m!1085073 () Bool)

(assert (=> bs!230718 m!1085073))

(declare-fun m!1085075 () Bool)

(assert (=> bs!230718 m!1085075))

(assert (=> bs!230718 m!1084927))

(declare-fun m!1085077 () Bool)

(assert (=> bs!230718 m!1085077))

(assert (=> bs!230718 m!1085073))

(declare-fun m!1085079 () Bool)

(assert (=> bs!230718 m!1085079))

(assert (=> bs!230718 m!1084917))

(declare-fun m!1085081 () Bool)

(assert (=> bs!230718 m!1085081))

(assert (=> bs!230718 m!1085077))

(assert (=> bs!230718 m!1084927))

(assert (=> bs!230718 m!1085079))

(assert (=> bs!230718 m!1085081))

(assert (=> b!848156 d!264324))

(declare-fun d!264326 () Bool)

(assert (=> d!264326 (separableTokensPredicate!58 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621)))

(declare-fun lt!321433 () Unit!13623)

(assert (=> d!264326 (= lt!321433 (choose!5009 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621))))

(assert (=> d!264326 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264326 (= (lemmaTokensOfDifferentKindsAreSeparable!40 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621) lt!321433)))

(declare-fun bs!230719 () Bool)

(assert (= bs!230719 d!264326))

(assert (=> bs!230719 m!1084823))

(declare-fun m!1085083 () Bool)

(assert (=> bs!230719 m!1085083))

(assert (=> bs!230719 m!1084857))

(assert (=> b!848156 d!264326))

(declare-fun bs!230722 () Bool)

(declare-fun d!264328 () Bool)

(assert (= bs!230722 (and d!264328 b!848136)))

(declare-fun lambda!25298 () Int)

(assert (=> bs!230722 (not (= lambda!25298 lambda!25280))))

(declare-fun bs!230723 () Bool)

(assert (= bs!230723 (and d!264328 d!264262)))

(assert (=> bs!230723 (= lambda!25298 lambda!25286)))

(declare-fun bs!230724 () Bool)

(assert (= bs!230724 (and d!264328 d!264296)))

(assert (=> bs!230724 (= lambda!25298 lambda!25287)))

(declare-fun bs!230725 () Bool)

(assert (= bs!230725 (and d!264328 d!264318)))

(assert (=> bs!230725 (= lambda!25298 lambda!25288)))

(declare-fun b!848335 () Bool)

(declare-fun e!558268 () Bool)

(assert (=> b!848335 (= e!558268 true)))

(declare-fun b!848334 () Bool)

(declare-fun e!558267 () Bool)

(assert (=> b!848334 (= e!558267 e!558268)))

(declare-fun b!848333 () Bool)

(declare-fun e!558266 () Bool)

(assert (=> b!848333 (= e!558266 e!558267)))

(assert (=> d!264328 e!558266))

(assert (= b!848334 b!848335))

(assert (= b!848333 b!848334))

(assert (= (and d!264328 ((_ is Cons!9149) rules!2621)) b!848333))

(assert (=> b!848335 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25298))))

(assert (=> b!848335 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25298))))

(assert (=> d!264328 true))

(declare-fun e!558265 () Bool)

(assert (=> d!264328 e!558265))

(declare-fun res!387841 () Bool)

(assert (=> d!264328 (=> (not res!387841) (not e!558265))))

(declare-fun lt!321439 () Bool)

(declare-fun list!3590 (BalanceConc!6080) List!9164)

(assert (=> d!264328 (= res!387841 (= lt!321439 (forall!2145 (list!3590 (seqFromList!1522 lt!321339)) lambda!25298)))))

(declare-fun forall!2147 (BalanceConc!6080 Int) Bool)

(assert (=> d!264328 (= lt!321439 (forall!2147 (seqFromList!1522 lt!321339) lambda!25298))))

(assert (=> d!264328 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264328 (= (rulesProduceEachTokenIndividually!607 thiss!20117 rules!2621 (seqFromList!1522 lt!321339)) lt!321439)))

(declare-fun b!848332 () Bool)

(assert (=> b!848332 (= e!558265 (= lt!321439 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (list!3590 (seqFromList!1522 lt!321339)))))))

(assert (= (and d!264328 res!387841) b!848332))

(assert (=> d!264328 m!1084821))

(declare-fun m!1085099 () Bool)

(assert (=> d!264328 m!1085099))

(assert (=> d!264328 m!1085099))

(declare-fun m!1085101 () Bool)

(assert (=> d!264328 m!1085101))

(assert (=> d!264328 m!1084821))

(declare-fun m!1085103 () Bool)

(assert (=> d!264328 m!1085103))

(assert (=> d!264328 m!1084857))

(assert (=> b!848332 m!1084821))

(assert (=> b!848332 m!1085099))

(assert (=> b!848332 m!1085099))

(declare-fun m!1085105 () Bool)

(assert (=> b!848332 m!1085105))

(assert (=> b!848156 d!264328))

(declare-fun d!264334 () Bool)

(declare-fun res!387871 () Bool)

(declare-fun e!558301 () Bool)

(assert (=> d!264334 (=> res!387871 e!558301)))

(assert (=> d!264334 (= res!387871 (or (not ((_ is Cons!9148) lt!321342)) (not ((_ is Cons!9148) (t!94856 lt!321342)))))))

(assert (=> d!264334 (= (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 lt!321342 rules!2621) e!558301)))

(declare-fun b!848386 () Bool)

(declare-fun e!558302 () Bool)

(assert (=> b!848386 (= e!558301 e!558302)))

(declare-fun res!387872 () Bool)

(assert (=> b!848386 (=> (not res!387872) (not e!558302))))

(assert (=> b!848386 (= res!387872 (separableTokensPredicate!58 thiss!20117 (h!14549 lt!321342) (h!14549 (t!94856 lt!321342)) rules!2621))))

(declare-fun lt!321477 () Unit!13623)

(declare-fun Unit!13628 () Unit!13623)

(assert (=> b!848386 (= lt!321477 Unit!13628)))

(declare-fun size!7626 (BalanceConc!6078) Int)

(assert (=> b!848386 (> (size!7626 (charsOf!987 (h!14549 (t!94856 lt!321342)))) 0)))

(declare-fun lt!321481 () Unit!13623)

(declare-fun Unit!13629 () Unit!13623)

(assert (=> b!848386 (= lt!321481 Unit!13629)))

(assert (=> b!848386 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 lt!321342)))))

(declare-fun lt!321479 () Unit!13623)

(declare-fun Unit!13630 () Unit!13623)

(assert (=> b!848386 (= lt!321479 Unit!13630)))

(assert (=> b!848386 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321342))))

(declare-fun lt!321482 () Unit!13623)

(declare-fun lt!321480 () Unit!13623)

(assert (=> b!848386 (= lt!321482 lt!321480)))

(assert (=> b!848386 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 lt!321342)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 (LexerInterface!1518 List!9165 List!9164 Token!3098) Unit!13623)

(assert (=> b!848386 (= lt!321480 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 lt!321342 (h!14549 (t!94856 lt!321342))))))

(declare-fun lt!321478 () Unit!13623)

(declare-fun lt!321476 () Unit!13623)

(assert (=> b!848386 (= lt!321478 lt!321476)))

(assert (=> b!848386 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321342))))

(assert (=> b!848386 (= lt!321476 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 lt!321342 (h!14549 lt!321342)))))

(declare-fun b!848387 () Bool)

(assert (=> b!848387 (= e!558302 (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))) rules!2621))))

(assert (= (and d!264334 (not res!387871)) b!848386))

(assert (= (and b!848386 res!387872) b!848387))

(declare-fun m!1085147 () Bool)

(assert (=> b!848386 m!1085147))

(declare-fun m!1085149 () Bool)

(assert (=> b!848386 m!1085149))

(assert (=> b!848386 m!1084913))

(declare-fun m!1085151 () Bool)

(assert (=> b!848386 m!1085151))

(assert (=> b!848386 m!1085147))

(declare-fun m!1085153 () Bool)

(assert (=> b!848386 m!1085153))

(declare-fun m!1085155 () Bool)

(assert (=> b!848386 m!1085155))

(declare-fun m!1085157 () Bool)

(assert (=> b!848386 m!1085157))

(declare-fun m!1085159 () Bool)

(assert (=> b!848387 m!1085159))

(assert (=> b!848145 d!264334))

(declare-fun b!848399 () Bool)

(declare-fun e!558311 () Bool)

(declare-fun inv!16 (TokenValue!1782) Bool)

(assert (=> b!848399 (= e!558311 (inv!16 (value!55605 (h!14549 l!5107))))))

(declare-fun b!848400 () Bool)

(declare-fun e!558310 () Bool)

(assert (=> b!848400 (= e!558311 e!558310)))

(declare-fun c!137844 () Bool)

(assert (=> b!848400 (= c!137844 ((_ is IntegerValue!5347) (value!55605 (h!14549 l!5107))))))

(declare-fun b!848398 () Bool)

(declare-fun res!387875 () Bool)

(declare-fun e!558309 () Bool)

(assert (=> b!848398 (=> res!387875 e!558309)))

(assert (=> b!848398 (= res!387875 (not ((_ is IntegerValue!5348) (value!55605 (h!14549 l!5107)))))))

(assert (=> b!848398 (= e!558310 e!558309)))

(declare-fun d!264346 () Bool)

(declare-fun c!137845 () Bool)

(assert (=> d!264346 (= c!137845 ((_ is IntegerValue!5346) (value!55605 (h!14549 l!5107))))))

(assert (=> d!264346 (= (inv!21 (value!55605 (h!14549 l!5107))) e!558311)))

(declare-fun b!848401 () Bool)

(declare-fun inv!15 (TokenValue!1782) Bool)

(assert (=> b!848401 (= e!558309 (inv!15 (value!55605 (h!14549 l!5107))))))

(declare-fun b!848402 () Bool)

(declare-fun inv!17 (TokenValue!1782) Bool)

(assert (=> b!848402 (= e!558310 (inv!17 (value!55605 (h!14549 l!5107))))))

(assert (= (and d!264346 c!137845) b!848399))

(assert (= (and d!264346 (not c!137845)) b!848400))

(assert (= (and b!848400 c!137844) b!848402))

(assert (= (and b!848400 (not c!137844)) b!848398))

(assert (= (and b!848398 (not res!387875)) b!848401))

(declare-fun m!1085161 () Bool)

(assert (=> b!848399 m!1085161))

(declare-fun m!1085163 () Bool)

(assert (=> b!848401 m!1085163))

(declare-fun m!1085165 () Bool)

(assert (=> b!848402 m!1085165))

(assert (=> b!848146 d!264346))

(declare-fun d!264348 () Bool)

(declare-fun res!387884 () Bool)

(declare-fun e!558322 () Bool)

(assert (=> d!264348 (=> res!387884 e!558322)))

(assert (=> d!264348 (= res!387884 ((_ is Nil!9148) l!5107))))

(assert (=> d!264348 (= (forall!2145 l!5107 lambda!25280) e!558322)))

(declare-fun b!848417 () Bool)

(declare-fun e!558323 () Bool)

(assert (=> b!848417 (= e!558322 e!558323)))

(declare-fun res!387885 () Bool)

(assert (=> b!848417 (=> (not res!387885) (not e!558323))))

(declare-fun dynLambda!4253 (Int Token!3098) Bool)

(assert (=> b!848417 (= res!387885 (dynLambda!4253 lambda!25280 (h!14549 l!5107)))))

(declare-fun b!848418 () Bool)

(assert (=> b!848418 (= e!558323 (forall!2145 (t!94856 l!5107) lambda!25280))))

(assert (= (and d!264348 (not res!387884)) b!848417))

(assert (= (and b!848417 res!387885) b!848418))

(declare-fun b_lambda!28117 () Bool)

(assert (=> (not b_lambda!28117) (not b!848417)))

(declare-fun m!1085167 () Bool)

(assert (=> b!848417 m!1085167))

(declare-fun m!1085169 () Bool)

(assert (=> b!848418 m!1085169))

(assert (=> b!848136 d!264348))

(declare-fun d!264350 () Bool)

(declare-fun res!387888 () Bool)

(declare-fun e!558326 () Bool)

(assert (=> d!264350 (=> (not res!387888) (not e!558326))))

(declare-fun rulesValid!597 (LexerInterface!1518 List!9165) Bool)

(assert (=> d!264350 (= res!387888 (rulesValid!597 thiss!20117 rules!2621))))

(assert (=> d!264350 (= (rulesInvariant!1394 thiss!20117 rules!2621) e!558326)))

(declare-fun b!848421 () Bool)

(declare-datatypes ((List!9167 0))(
  ( (Nil!9151) (Cons!9151 (h!14552 String!10808) (t!94913 List!9167)) )
))
(declare-fun noDuplicateTag!597 (LexerInterface!1518 List!9165 List!9167) Bool)

(assert (=> b!848421 (= e!558326 (noDuplicateTag!597 thiss!20117 rules!2621 Nil!9151))))

(assert (= (and d!264350 res!387888) b!848421))

(declare-fun m!1085221 () Bool)

(assert (=> d!264350 m!1085221))

(declare-fun m!1085223 () Bool)

(assert (=> b!848421 m!1085223))

(assert (=> b!848157 d!264350))

(declare-fun d!264356 () Bool)

(declare-fun lt!321507 () Bool)

(declare-fun e!558389 () Bool)

(assert (=> d!264356 (= lt!321507 e!558389)))

(declare-fun res!387905 () Bool)

(assert (=> d!264356 (=> (not res!387905) (not e!558389))))

(declare-datatypes ((tuple2!10364 0))(
  ( (tuple2!10365 (_1!6008 BalanceConc!6080) (_2!6008 BalanceConc!6078)) )
))
(declare-fun lex!614 (LexerInterface!1518 List!9165 BalanceConc!6078) tuple2!10364)

(declare-fun print!551 (LexerInterface!1518 BalanceConc!6080) BalanceConc!6078)

(declare-fun singletonSeq!533 (Token!3098) BalanceConc!6080)

(assert (=> d!264356 (= res!387905 (= (list!3590 (_1!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297))))) (list!3590 (singletonSeq!533 separatorToken!297))))))

(declare-fun e!558388 () Bool)

(assert (=> d!264356 (= lt!321507 e!558388)))

(declare-fun res!387907 () Bool)

(assert (=> d!264356 (=> (not res!387907) (not e!558388))))

(declare-fun lt!321506 () tuple2!10364)

(declare-fun size!7627 (BalanceConc!6080) Int)

(assert (=> d!264356 (= res!387907 (= (size!7627 (_1!6008 lt!321506)) 1))))

(assert (=> d!264356 (= lt!321506 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297))))))

(assert (=> d!264356 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264356 (= (rulesProduceIndividualToken!582 thiss!20117 rules!2621 separatorToken!297) lt!321507)))

(declare-fun b!848504 () Bool)

(declare-fun res!387906 () Bool)

(assert (=> b!848504 (=> (not res!387906) (not e!558388))))

(declare-fun apply!1867 (BalanceConc!6080 Int) Token!3098)

(assert (=> b!848504 (= res!387906 (= (apply!1867 (_1!6008 lt!321506) 0) separatorToken!297))))

(declare-fun b!848505 () Bool)

(declare-fun isEmpty!5405 (BalanceConc!6078) Bool)

(assert (=> b!848505 (= e!558388 (isEmpty!5405 (_2!6008 lt!321506)))))

(declare-fun b!848506 () Bool)

(assert (=> b!848506 (= e!558389 (isEmpty!5405 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297))))))))

(assert (= (and d!264356 res!387907) b!848504))

(assert (= (and b!848504 res!387906) b!848505))

(assert (= (and d!264356 res!387905) b!848506))

(declare-fun m!1085311 () Bool)

(assert (=> d!264356 m!1085311))

(declare-fun m!1085313 () Bool)

(assert (=> d!264356 m!1085313))

(assert (=> d!264356 m!1084857))

(declare-fun m!1085315 () Bool)

(assert (=> d!264356 m!1085315))

(assert (=> d!264356 m!1085311))

(declare-fun m!1085317 () Bool)

(assert (=> d!264356 m!1085317))

(assert (=> d!264356 m!1085315))

(declare-fun m!1085319 () Bool)

(assert (=> d!264356 m!1085319))

(assert (=> d!264356 m!1085315))

(declare-fun m!1085321 () Bool)

(assert (=> d!264356 m!1085321))

(declare-fun m!1085323 () Bool)

(assert (=> b!848504 m!1085323))

(declare-fun m!1085325 () Bool)

(assert (=> b!848505 m!1085325))

(assert (=> b!848506 m!1085315))

(assert (=> b!848506 m!1085315))

(assert (=> b!848506 m!1085311))

(assert (=> b!848506 m!1085311))

(assert (=> b!848506 m!1085313))

(declare-fun m!1085327 () Bool)

(assert (=> b!848506 m!1085327))

(assert (=> b!848147 d!264356))

(declare-fun d!264368 () Bool)

(declare-fun res!387912 () Bool)

(declare-fun e!558394 () Bool)

(assert (=> d!264368 (=> res!387912 e!558394)))

(assert (=> d!264368 (= res!387912 (not ((_ is Cons!9149) rules!2621)))))

(assert (=> d!264368 (= (sepAndNonSepRulesDisjointChars!516 rules!2621 rules!2621) e!558394)))

(declare-fun b!848511 () Bool)

(declare-fun e!558395 () Bool)

(assert (=> b!848511 (= e!558394 e!558395)))

(declare-fun res!387913 () Bool)

(assert (=> b!848511 (=> (not res!387913) (not e!558395))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!233 (Rule!3232 List!9165) Bool)

(assert (=> b!848511 (= res!387913 (ruleDisjointCharsFromAllFromOtherType!233 (h!14550 rules!2621) rules!2621))))

(declare-fun b!848512 () Bool)

(assert (=> b!848512 (= e!558395 (sepAndNonSepRulesDisjointChars!516 rules!2621 (t!94857 rules!2621)))))

(assert (= (and d!264368 (not res!387912)) b!848511))

(assert (= (and b!848511 res!387913) b!848512))

(declare-fun m!1085329 () Bool)

(assert (=> b!848511 m!1085329))

(declare-fun m!1085331 () Bool)

(assert (=> b!848512 m!1085331))

(assert (=> b!848153 d!264368))

(declare-fun e!558397 () List!9163)

(declare-fun e!558399 () Bool)

(declare-fun b!848513 () Bool)

(assert (=> b!848513 (= e!558399 (= (printList!470 thiss!20117 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345))) e!558397))))

(declare-fun c!137853 () Bool)

(declare-fun lt!321510 () List!9164)

(assert (=> b!848513 (= c!137853 ((_ is Cons!9148) lt!321510))))

(assert (=> b!848513 (= lt!321510 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345)))))

(declare-fun b!848514 () Bool)

(declare-fun res!387916 () Bool)

(declare-fun e!558400 () Bool)

(assert (=> b!848514 (=> (not res!387916) (not e!558400))))

(assert (=> b!848514 (= res!387916 e!558399)))

(declare-fun res!387914 () Bool)

(assert (=> b!848514 (=> res!387914 e!558399)))

(assert (=> b!848514 (= res!387914 (not ((_ is Cons!9148) lt!321345)))))

(declare-fun b!848515 () Bool)

(declare-fun e!558401 () Bool)

(assert (=> b!848515 (= e!558400 e!558401)))

(declare-fun res!387917 () Bool)

(assert (=> b!848515 (=> res!387917 e!558401)))

(assert (=> b!848515 (= res!387917 (not ((_ is Cons!9148) lt!321345)))))

(declare-fun lt!321515 () List!9164)

(declare-fun d!264370 () Bool)

(assert (=> d!264370 (= (printList!470 thiss!20117 lt!321515) (printWithSeparatorTokenList!28 thiss!20117 lt!321345 separatorToken!297))))

(declare-fun e!558398 () List!9164)

(assert (=> d!264370 (= lt!321515 e!558398)))

(declare-fun c!137852 () Bool)

(assert (=> d!264370 (= c!137852 ((_ is Cons!9148) lt!321345))))

(assert (=> d!264370 e!558400))

(declare-fun res!387915 () Bool)

(assert (=> d!264370 (=> (not res!387915) (not e!558400))))

(assert (=> d!264370 (= res!387915 (isSeparator!1716 (rule!3139 separatorToken!297)))))

(assert (=> d!264370 (= (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297) lt!321515)))

(declare-fun b!848516 () Bool)

(declare-fun e!558396 () List!9163)

(assert (=> b!848516 (= e!558396 Nil!9147)))

(declare-fun b!848517 () Bool)

(assert (=> b!848517 (= e!558397 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321510))) (printList!470 thiss!20117 (t!94856 lt!321510))))))

(declare-fun b!848518 () Bool)

(declare-fun lt!321512 () List!9164)

(assert (=> b!848518 (= e!558396 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321512))) (printList!470 thiss!20117 (t!94856 lt!321512))))))

(declare-fun b!848519 () Bool)

(assert (=> b!848519 (= e!558401 (= (printList!470 thiss!20117 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297)) e!558396))))

(declare-fun c!137854 () Bool)

(assert (=> b!848519 (= c!137854 ((_ is Cons!9148) lt!321512))))

(assert (=> b!848519 (= lt!321512 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297))))

(declare-fun b!848520 () Bool)

(assert (=> b!848520 (= e!558398 Nil!9148)))

(declare-fun b!848521 () Bool)

(assert (=> b!848521 (= e!558398 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345)))))

(declare-fun lt!321509 () List!9163)

(assert (=> b!848521 (= lt!321509 (list!3589 (charsOf!987 (h!14549 lt!321345))))))

(declare-fun lt!321511 () List!9163)

(assert (=> b!848521 (= lt!321511 (list!3589 (charsOf!987 separatorToken!297)))))

(declare-fun lt!321514 () List!9163)

(assert (=> b!848521 (= lt!321514 (printList!470 thiss!20117 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297)))))

(declare-fun lt!321513 () Unit!13623)

(assert (=> b!848521 (= lt!321513 (lemmaConcatAssociativity!745 lt!321509 lt!321511 lt!321514))))

(assert (=> b!848521 (= (++!2370 (++!2370 lt!321509 lt!321511) lt!321514) (++!2370 lt!321509 (++!2370 lt!321511 lt!321514)))))

(declare-fun lt!321508 () Unit!13623)

(assert (=> b!848521 (= lt!321508 lt!321513)))

(declare-fun b!848522 () Bool)

(assert (=> b!848522 (= e!558397 Nil!9147)))

(assert (= (and d!264370 res!387915) b!848514))

(assert (= (and b!848514 (not res!387914)) b!848513))

(assert (= (and b!848513 c!137853) b!848517))

(assert (= (and b!848513 (not c!137853)) b!848522))

(assert (= (and b!848514 res!387916) b!848515))

(assert (= (and b!848515 (not res!387917)) b!848519))

(assert (= (and b!848519 c!137854) b!848518))

(assert (= (and b!848519 (not c!137854)) b!848516))

(assert (= (and d!264370 c!137852) b!848521))

(assert (= (and d!264370 (not c!137852)) b!848520))

(declare-fun m!1085333 () Bool)

(assert (=> d!264370 m!1085333))

(declare-fun m!1085335 () Bool)

(assert (=> d!264370 m!1085335))

(declare-fun m!1085337 () Bool)

(assert (=> b!848521 m!1085337))

(assert (=> b!848521 m!1085017))

(declare-fun m!1085339 () Bool)

(assert (=> b!848521 m!1085339))

(declare-fun m!1085341 () Bool)

(assert (=> b!848521 m!1085341))

(declare-fun m!1085343 () Bool)

(assert (=> b!848521 m!1085343))

(declare-fun m!1085345 () Bool)

(assert (=> b!848521 m!1085345))

(declare-fun m!1085347 () Bool)

(assert (=> b!848521 m!1085347))

(declare-fun m!1085349 () Bool)

(assert (=> b!848521 m!1085349))

(declare-fun m!1085351 () Bool)

(assert (=> b!848521 m!1085351))

(declare-fun m!1085353 () Bool)

(assert (=> b!848521 m!1085353))

(assert (=> b!848521 m!1085347))

(assert (=> b!848521 m!1085343))

(assert (=> b!848521 m!1085017))

(assert (=> b!848521 m!1085035))

(assert (=> b!848521 m!1085353))

(declare-fun m!1085355 () Bool)

(assert (=> b!848521 m!1085355))

(assert (=> b!848521 m!1085337))

(declare-fun m!1085357 () Bool)

(assert (=> b!848521 m!1085357))

(assert (=> b!848521 m!1085347))

(assert (=> b!848521 m!1085339))

(assert (=> b!848513 m!1085347))

(assert (=> b!848513 m!1085347))

(assert (=> b!848513 m!1085343))

(assert (=> b!848513 m!1085343))

(assert (=> b!848513 m!1085345))

(assert (=> b!848513 m!1085345))

(declare-fun m!1085359 () Bool)

(assert (=> b!848513 m!1085359))

(declare-fun m!1085361 () Bool)

(assert (=> b!848517 m!1085361))

(assert (=> b!848517 m!1085361))

(declare-fun m!1085363 () Bool)

(assert (=> b!848517 m!1085363))

(declare-fun m!1085365 () Bool)

(assert (=> b!848517 m!1085365))

(assert (=> b!848517 m!1085363))

(assert (=> b!848517 m!1085365))

(declare-fun m!1085367 () Bool)

(assert (=> b!848517 m!1085367))

(declare-fun m!1085369 () Bool)

(assert (=> b!848518 m!1085369))

(assert (=> b!848518 m!1085369))

(declare-fun m!1085371 () Bool)

(assert (=> b!848518 m!1085371))

(declare-fun m!1085373 () Bool)

(assert (=> b!848518 m!1085373))

(assert (=> b!848518 m!1085371))

(assert (=> b!848518 m!1085373))

(declare-fun m!1085375 () Bool)

(assert (=> b!848518 m!1085375))

(assert (=> b!848519 m!1085347))

(assert (=> b!848519 m!1085347))

(assert (=> b!848519 m!1085343))

(assert (=> b!848519 m!1085343))

(declare-fun m!1085377 () Bool)

(assert (=> b!848519 m!1085377))

(assert (=> b!848154 d!264370))

(declare-fun d!264372 () Bool)

(assert (=> d!264372 (= (tail!1034 l!5107) (t!94856 l!5107))))

(assert (=> b!848154 d!264372))

(declare-fun b!848524 () Bool)

(declare-fun e!558404 () Bool)

(assert (=> b!848524 (= e!558404 (inv!16 (value!55605 separatorToken!297)))))

(declare-fun b!848525 () Bool)

(declare-fun e!558403 () Bool)

(assert (=> b!848525 (= e!558404 e!558403)))

(declare-fun c!137855 () Bool)

(assert (=> b!848525 (= c!137855 ((_ is IntegerValue!5347) (value!55605 separatorToken!297)))))

(declare-fun b!848523 () Bool)

(declare-fun res!387918 () Bool)

(declare-fun e!558402 () Bool)

(assert (=> b!848523 (=> res!387918 e!558402)))

(assert (=> b!848523 (= res!387918 (not ((_ is IntegerValue!5348) (value!55605 separatorToken!297))))))

(assert (=> b!848523 (= e!558403 e!558402)))

(declare-fun d!264374 () Bool)

(declare-fun c!137856 () Bool)

(assert (=> d!264374 (= c!137856 ((_ is IntegerValue!5346) (value!55605 separatorToken!297)))))

(assert (=> d!264374 (= (inv!21 (value!55605 separatorToken!297)) e!558404)))

(declare-fun b!848526 () Bool)

(assert (=> b!848526 (= e!558402 (inv!15 (value!55605 separatorToken!297)))))

(declare-fun b!848527 () Bool)

(assert (=> b!848527 (= e!558403 (inv!17 (value!55605 separatorToken!297)))))

(assert (= (and d!264374 c!137856) b!848524))

(assert (= (and d!264374 (not c!137856)) b!848525))

(assert (= (and b!848525 c!137855) b!848527))

(assert (= (and b!848525 (not c!137855)) b!848523))

(assert (= (and b!848523 (not res!387918)) b!848526))

(declare-fun m!1085379 () Bool)

(assert (=> b!848524 m!1085379))

(declare-fun m!1085381 () Bool)

(assert (=> b!848526 m!1085381))

(declare-fun m!1085383 () Bool)

(assert (=> b!848527 m!1085383))

(assert (=> b!848144 d!264374))

(declare-fun d!264376 () Bool)

(declare-fun res!387919 () Bool)

(declare-fun e!558405 () Bool)

(assert (=> d!264376 (=> (not res!387919) (not e!558405))))

(assert (=> d!264376 (= res!387919 (not (isEmpty!5404 (originalCharacters!2272 separatorToken!297))))))

(assert (=> d!264376 (= (inv!11627 separatorToken!297) e!558405)))

(declare-fun b!848528 () Bool)

(declare-fun res!387920 () Bool)

(assert (=> b!848528 (=> (not res!387920) (not e!558405))))

(assert (=> b!848528 (= res!387920 (= (originalCharacters!2272 separatorToken!297) (list!3589 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))))))

(declare-fun b!848529 () Bool)

(assert (=> b!848529 (= e!558405 (= (size!7621 separatorToken!297) (size!7625 (originalCharacters!2272 separatorToken!297))))))

(assert (= (and d!264376 res!387919) b!848528))

(assert (= (and b!848528 res!387920) b!848529))

(declare-fun b_lambda!28127 () Bool)

(assert (=> (not b_lambda!28127) (not b!848528)))

(declare-fun t!94900 () Bool)

(declare-fun tb!59131 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) t!94900) tb!59131))

(declare-fun b!848530 () Bool)

(declare-fun e!558406 () Bool)

(declare-fun tp!267134 () Bool)

(assert (=> b!848530 (= e!558406 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))) tp!267134))))

(declare-fun result!68556 () Bool)

(assert (=> tb!59131 (= result!68556 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))) e!558406))))

(assert (= tb!59131 b!848530))

(declare-fun m!1085385 () Bool)

(assert (=> b!848530 m!1085385))

(declare-fun m!1085387 () Bool)

(assert (=> tb!59131 m!1085387))

(assert (=> b!848528 t!94900))

(declare-fun b_and!74035 () Bool)

(assert (= b_and!74009 (and (=> t!94900 result!68556) b_and!74035)))

(declare-fun tb!59133 () Bool)

(declare-fun t!94902 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) t!94902) tb!59133))

(declare-fun result!68558 () Bool)

(assert (= result!68558 result!68556))

(assert (=> b!848528 t!94902))

(declare-fun b_and!74037 () Bool)

(assert (= b_and!74011 (and (=> t!94902 result!68558) b_and!74037)))

(declare-fun t!94904 () Bool)

(declare-fun tb!59135 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) t!94904) tb!59135))

(declare-fun result!68560 () Bool)

(assert (= result!68560 result!68556))

(assert (=> b!848528 t!94904))

(declare-fun b_and!74039 () Bool)

(assert (= b_and!74013 (and (=> t!94904 result!68560) b_and!74039)))

(declare-fun m!1085389 () Bool)

(assert (=> d!264376 m!1085389))

(declare-fun m!1085391 () Bool)

(assert (=> b!848528 m!1085391))

(assert (=> b!848528 m!1085391))

(declare-fun m!1085393 () Bool)

(assert (=> b!848528 m!1085393))

(declare-fun m!1085395 () Bool)

(assert (=> b!848529 m!1085395))

(assert (=> start!75690 d!264376))

(declare-fun d!264378 () Bool)

(assert (=> d!264378 (= (head!1476 l!5107) (h!14549 l!5107))))

(assert (=> b!848155 d!264378))

(declare-fun b!848541 () Bool)

(declare-fun e!558409 () Bool)

(declare-fun tp_is_empty!3965 () Bool)

(assert (=> b!848541 (= e!558409 tp_is_empty!3965)))

(assert (=> b!848141 (= tp!267070 e!558409)))

(declare-fun b!848544 () Bool)

(declare-fun tp!267146 () Bool)

(declare-fun tp!267149 () Bool)

(assert (=> b!848544 (= e!558409 (and tp!267146 tp!267149))))

(declare-fun b!848542 () Bool)

(declare-fun tp!267145 () Bool)

(declare-fun tp!267148 () Bool)

(assert (=> b!848542 (= e!558409 (and tp!267145 tp!267148))))

(declare-fun b!848543 () Bool)

(declare-fun tp!267147 () Bool)

(assert (=> b!848543 (= e!558409 tp!267147)))

(assert (= (and b!848141 ((_ is ElementMatch!2149) (regex!1716 (rule!3139 (h!14549 l!5107))))) b!848541))

(assert (= (and b!848141 ((_ is Concat!3932) (regex!1716 (rule!3139 (h!14549 l!5107))))) b!848542))

(assert (= (and b!848141 ((_ is Star!2149) (regex!1716 (rule!3139 (h!14549 l!5107))))) b!848543))

(assert (= (and b!848141 ((_ is Union!2149) (regex!1716 (rule!3139 (h!14549 l!5107))))) b!848544))

(declare-fun b!848545 () Bool)

(declare-fun e!558410 () Bool)

(assert (=> b!848545 (= e!558410 tp_is_empty!3965)))

(assert (=> b!848148 (= tp!267062 e!558410)))

(declare-fun b!848548 () Bool)

(declare-fun tp!267151 () Bool)

(declare-fun tp!267154 () Bool)

(assert (=> b!848548 (= e!558410 (and tp!267151 tp!267154))))

(declare-fun b!848546 () Bool)

(declare-fun tp!267150 () Bool)

(declare-fun tp!267153 () Bool)

(assert (=> b!848546 (= e!558410 (and tp!267150 tp!267153))))

(declare-fun b!848547 () Bool)

(declare-fun tp!267152 () Bool)

(assert (=> b!848547 (= e!558410 tp!267152)))

(assert (= (and b!848148 ((_ is ElementMatch!2149) (regex!1716 (h!14550 rules!2621)))) b!848545))

(assert (= (and b!848148 ((_ is Concat!3932) (regex!1716 (h!14550 rules!2621)))) b!848546))

(assert (= (and b!848148 ((_ is Star!2149) (regex!1716 (h!14550 rules!2621)))) b!848547))

(assert (= (and b!848148 ((_ is Union!2149) (regex!1716 (h!14550 rules!2621)))) b!848548))

(declare-fun b!848562 () Bool)

(declare-fun b_free!25589 () Bool)

(declare-fun b_next!25653 () Bool)

(assert (=> b!848562 (= b_free!25589 (not b_next!25653))))

(declare-fun tp!267167 () Bool)

(declare-fun b_and!74041 () Bool)

(assert (=> b!848562 (= tp!267167 b_and!74041)))

(declare-fun b_free!25591 () Bool)

(declare-fun b_next!25655 () Bool)

(assert (=> b!848562 (= b_free!25591 (not b_next!25655))))

(declare-fun t!94906 () Bool)

(declare-fun tb!59137 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) t!94906) tb!59137))

(declare-fun result!68566 () Bool)

(assert (= result!68566 result!68518))

(assert (=> b!848249 t!94906))

(declare-fun t!94908 () Bool)

(declare-fun tb!59139 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) t!94908) tb!59139))

(declare-fun result!68568 () Bool)

(assert (= result!68568 result!68556))

(assert (=> b!848528 t!94908))

(declare-fun b_and!74043 () Bool)

(declare-fun tp!267165 () Bool)

(assert (=> b!848562 (= tp!267165 (and (=> t!94906 result!68566) (=> t!94908 result!68568) b_and!74043))))

(declare-fun e!558427 () Bool)

(assert (=> b!848562 (= e!558427 (and tp!267167 tp!267165))))

(declare-fun tp!267166 () Bool)

(declare-fun b!848561 () Bool)

(declare-fun e!558424 () Bool)

(assert (=> b!848561 (= e!558424 (and tp!267166 (inv!11624 (tag!1978 (rule!3139 (h!14549 (t!94856 l!5107))))) (inv!11628 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) e!558427))))

(declare-fun e!558425 () Bool)

(assert (=> b!848137 (= tp!267066 e!558425)))

(declare-fun tp!267168 () Bool)

(declare-fun e!558428 () Bool)

(declare-fun b!848560 () Bool)

(assert (=> b!848560 (= e!558428 (and (inv!21 (value!55605 (h!14549 (t!94856 l!5107)))) e!558424 tp!267168))))

(declare-fun b!848559 () Bool)

(declare-fun tp!267169 () Bool)

(assert (=> b!848559 (= e!558425 (and (inv!11627 (h!14549 (t!94856 l!5107))) e!558428 tp!267169))))

(assert (= b!848561 b!848562))

(assert (= b!848560 b!848561))

(assert (= b!848559 b!848560))

(assert (= (and b!848137 ((_ is Cons!9148) (t!94856 l!5107))) b!848559))

(declare-fun m!1085397 () Bool)

(assert (=> b!848561 m!1085397))

(declare-fun m!1085399 () Bool)

(assert (=> b!848561 m!1085399))

(declare-fun m!1085401 () Bool)

(assert (=> b!848560 m!1085401))

(declare-fun m!1085403 () Bool)

(assert (=> b!848559 m!1085403))

(declare-fun b!848563 () Bool)

(declare-fun e!558429 () Bool)

(assert (=> b!848563 (= e!558429 tp_is_empty!3965)))

(assert (=> b!848138 (= tp!267065 e!558429)))

(declare-fun b!848566 () Bool)

(declare-fun tp!267171 () Bool)

(declare-fun tp!267174 () Bool)

(assert (=> b!848566 (= e!558429 (and tp!267171 tp!267174))))

(declare-fun b!848564 () Bool)

(declare-fun tp!267170 () Bool)

(declare-fun tp!267173 () Bool)

(assert (=> b!848564 (= e!558429 (and tp!267170 tp!267173))))

(declare-fun b!848565 () Bool)

(declare-fun tp!267172 () Bool)

(assert (=> b!848565 (= e!558429 tp!267172)))

(assert (= (and b!848138 ((_ is ElementMatch!2149) (regex!1716 (rule!3139 separatorToken!297)))) b!848563))

(assert (= (and b!848138 ((_ is Concat!3932) (regex!1716 (rule!3139 separatorToken!297)))) b!848564))

(assert (= (and b!848138 ((_ is Star!2149) (regex!1716 (rule!3139 separatorToken!297)))) b!848565))

(assert (= (and b!848138 ((_ is Union!2149) (regex!1716 (rule!3139 separatorToken!297)))) b!848566))

(declare-fun b!848577 () Bool)

(declare-fun b_free!25593 () Bool)

(declare-fun b_next!25657 () Bool)

(assert (=> b!848577 (= b_free!25593 (not b_next!25657))))

(declare-fun tp!267186 () Bool)

(declare-fun b_and!74045 () Bool)

(assert (=> b!848577 (= tp!267186 b_and!74045)))

(declare-fun b_free!25595 () Bool)

(declare-fun b_next!25659 () Bool)

(assert (=> b!848577 (= b_free!25595 (not b_next!25659))))

(declare-fun t!94910 () Bool)

(declare-fun tb!59141 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) t!94910) tb!59141))

(declare-fun result!68572 () Bool)

(assert (= result!68572 result!68518))

(assert (=> b!848249 t!94910))

(declare-fun t!94912 () Bool)

(declare-fun tb!59143 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) t!94912) tb!59143))

(declare-fun result!68574 () Bool)

(assert (= result!68574 result!68556))

(assert (=> b!848528 t!94912))

(declare-fun tp!267185 () Bool)

(declare-fun b_and!74047 () Bool)

(assert (=> b!848577 (= tp!267185 (and (=> t!94910 result!68572) (=> t!94912 result!68574) b_and!74047))))

(declare-fun e!558439 () Bool)

(assert (=> b!848577 (= e!558439 (and tp!267186 tp!267185))))

(declare-fun e!558440 () Bool)

(declare-fun b!848576 () Bool)

(declare-fun tp!267184 () Bool)

(assert (=> b!848576 (= e!558440 (and tp!267184 (inv!11624 (tag!1978 (h!14550 (t!94857 rules!2621)))) (inv!11628 (transformation!1716 (h!14550 (t!94857 rules!2621)))) e!558439))))

(declare-fun b!848575 () Bool)

(declare-fun e!558438 () Bool)

(declare-fun tp!267183 () Bool)

(assert (=> b!848575 (= e!558438 (and e!558440 tp!267183))))

(assert (=> b!848139 (= tp!267067 e!558438)))

(assert (= b!848576 b!848577))

(assert (= b!848575 b!848576))

(assert (= (and b!848139 ((_ is Cons!9149) (t!94857 rules!2621))) b!848575))

(declare-fun m!1085405 () Bool)

(assert (=> b!848576 m!1085405))

(declare-fun m!1085407 () Bool)

(assert (=> b!848576 m!1085407))

(declare-fun b!848582 () Bool)

(declare-fun e!558444 () Bool)

(declare-fun tp!267189 () Bool)

(assert (=> b!848582 (= e!558444 (and tp_is_empty!3965 tp!267189))))

(assert (=> b!848146 (= tp!267068 e!558444)))

(assert (= (and b!848146 ((_ is Cons!9147) (originalCharacters!2272 (h!14549 l!5107)))) b!848582))

(declare-fun b!848583 () Bool)

(declare-fun e!558445 () Bool)

(declare-fun tp!267190 () Bool)

(assert (=> b!848583 (= e!558445 (and tp_is_empty!3965 tp!267190))))

(assert (=> b!848144 (= tp!267061 e!558445)))

(assert (= (and b!848144 ((_ is Cons!9147) (originalCharacters!2272 separatorToken!297))) b!848583))

(declare-fun b_lambda!28129 () Bool)

(assert (= b_lambda!28127 (or (and b!848577 b_free!25595 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!848562 b_free!25591 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!848158 b_free!25575 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!848150 b_free!25571 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!848140 b_free!25579) b_lambda!28129)))

(declare-fun b_lambda!28131 () Bool)

(assert (= b_lambda!28113 (or (and b!848140 b_free!25579 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!848562 b_free!25591 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!848150 b_free!25571 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!848158 b_free!25575) (and b!848577 b_free!25595 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) b_lambda!28131)))

(declare-fun b_lambda!28133 () Bool)

(assert (= b_lambda!28117 (or b!848136 b_lambda!28133)))

(declare-fun bs!230735 () Bool)

(declare-fun d!264380 () Bool)

(assert (= bs!230735 (and d!264380 b!848136)))

(assert (=> bs!230735 (= (dynLambda!4253 lambda!25280 (h!14549 l!5107)) (not (isSeparator!1716 (rule!3139 (h!14549 l!5107)))))))

(assert (=> b!848417 d!264380))

(check-sat (not b_next!25635) (not b!848543) (not b!848333) (not b!848202) (not b!848513) (not d!264316) (not d!264318) (not b!848261) (not d!264328) b_and!73997 b_and!74001 (not b!848519) (not b_next!25633) (not b_next!25655) (not b!848203) (not b!848238) (not b_lambda!28131) (not b!848294) (not b!848544) (not d!264376) b_and!74039 b_and!74043 (not b!848560) (not b!848255) (not d!264294) (not b_next!25637) (not d!264284) (not b!848306) (not b!848547) (not d!264290) (not b!848239) (not b!848399) (not b!848387) (not b!848561) (not d!264298) (not d!264260) (not b!848332) (not b!848305) (not b!848529) (not b_next!25641) (not b_next!25639) (not d!264370) (not b!848527) b_and!74041 (not d!264244) (not b!848212) (not d!264350) (not b!848524) b_and!74037 (not b!848583) (not d!264262) (not b!848526) (not d!264322) (not b!848518) (not b!848559) (not b!848512) (not b!848244) (not b!848575) b_and!74045 (not b_next!25657) (not b!848546) (not b!848249) (not b!848402) (not b!848566) (not b_lambda!28133) (not b!848564) (not d!264324) (not b!848250) (not b!848582) (not b!848576) (not d!264288) (not b!848565) (not b!848421) (not b!848401) (not b!848260) (not b!848511) (not b!848542) (not b!848300) (not b!848530) (not tb!59105) (not b_next!25643) (not d!264270) (not b!848418) b_and!74035 (not b!848504) b_and!74047 (not b!848386) (not b!848299) (not b!848302) (not b!848548) (not b!848506) (not b!848517) (not b!848236) (not b!848298) b_and!74005 (not b!848259) (not b_lambda!28129) (not b!848521) (not b_next!25653) (not d!264268) tp_is_empty!3965 (not tb!59131) (not b!848528) (not b!848304) (not b!848256) (not b!848505) (not d!264356) (not b_next!25659) (not b!848243) (not d!264296) (not b!848237) (not d!264326))
(check-sat (not b_next!25655) (not b_next!25637) (not b_next!25635) b_and!74041 b_and!74037 b_and!74047 (not b_next!25659) b_and!73997 b_and!74001 (not b_next!25633) b_and!74039 b_and!74043 (not b_next!25641) (not b_next!25639) b_and!74045 (not b_next!25657) (not b_next!25643) b_and!74035 b_and!74005 (not b_next!25653))
(get-model)

(declare-fun d!264388 () Bool)

(declare-fun res!387931 () Bool)

(declare-fun e!558448 () Bool)

(assert (=> d!264388 (=> res!387931 e!558448)))

(assert (=> d!264388 (= res!387931 ((_ is Nil!9148) lt!321342))))

(assert (=> d!264388 (= (forall!2145 lt!321342 lambda!25286) e!558448)))

(declare-fun b!848586 () Bool)

(declare-fun e!558449 () Bool)

(assert (=> b!848586 (= e!558448 e!558449)))

(declare-fun res!387932 () Bool)

(assert (=> b!848586 (=> (not res!387932) (not e!558449))))

(assert (=> b!848586 (= res!387932 (dynLambda!4253 lambda!25286 (h!14549 lt!321342)))))

(declare-fun b!848587 () Bool)

(assert (=> b!848587 (= e!558449 (forall!2145 (t!94856 lt!321342) lambda!25286))))

(assert (= (and d!264388 (not res!387931)) b!848586))

(assert (= (and b!848586 res!387932) b!848587))

(declare-fun b_lambda!28137 () Bool)

(assert (=> (not b_lambda!28137) (not b!848586)))

(declare-fun m!1085413 () Bool)

(assert (=> b!848586 m!1085413))

(declare-fun m!1085415 () Bool)

(assert (=> b!848587 m!1085415))

(assert (=> d!264262 d!264388))

(assert (=> d!264262 d!264242))

(declare-fun d!264390 () Bool)

(assert (=> d!264390 (= (isEmpty!5404 (originalCharacters!2272 separatorToken!297)) ((_ is Nil!9147) (originalCharacters!2272 separatorToken!297)))))

(assert (=> d!264376 d!264390))

(declare-fun d!264392 () Bool)

(assert (=> d!264392 true))

(declare-fun lambda!25303 () Int)

(declare-fun order!5849 () Int)

(declare-fun dynLambda!4254 (Int Int) Int)

(assert (=> d!264392 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))) (dynLambda!4254 order!5849 lambda!25303))))

(declare-fun Forall2!316 (Int) Bool)

(assert (=> d!264392 (= (equivClasses!633 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))) (Forall2!316 lambda!25303))))

(declare-fun bs!230738 () Bool)

(assert (= bs!230738 d!264392))

(declare-fun m!1085445 () Bool)

(assert (=> bs!230738 m!1085445))

(assert (=> b!848243 d!264392))

(declare-fun d!264398 () Bool)

(declare-fun e!558456 () Bool)

(assert (=> d!264398 e!558456))

(declare-fun res!387940 () Bool)

(assert (=> d!264398 (=> (not res!387940) (not e!558456))))

(declare-fun lt!321523 () BalanceConc!6080)

(assert (=> d!264398 (= res!387940 (= (list!3590 lt!321523) lt!321339))))

(declare-fun fromList!309 (List!9164) Conc!3033)

(assert (=> d!264398 (= lt!321523 (BalanceConc!6081 (fromList!309 lt!321339)))))

(assert (=> d!264398 (= (fromListB!669 lt!321339) lt!321523)))

(declare-fun b!848597 () Bool)

(declare-fun isBalanced!822 (Conc!3033) Bool)

(assert (=> b!848597 (= e!558456 (isBalanced!822 (fromList!309 lt!321339)))))

(assert (= (and d!264398 res!387940) b!848597))

(declare-fun m!1085453 () Bool)

(assert (=> d!264398 m!1085453))

(declare-fun m!1085455 () Bool)

(assert (=> d!264398 m!1085455))

(assert (=> b!848597 m!1085455))

(assert (=> b!848597 m!1085455))

(declare-fun m!1085457 () Bool)

(assert (=> b!848597 m!1085457))

(assert (=> d!264322 d!264398))

(declare-fun d!264402 () Bool)

(declare-fun res!387945 () Bool)

(declare-fun e!558461 () Bool)

(assert (=> d!264402 (=> res!387945 e!558461)))

(assert (=> d!264402 (= res!387945 ((_ is Nil!9149) rules!2621))))

(assert (=> d!264402 (= (noDuplicateTag!597 thiss!20117 rules!2621 Nil!9151) e!558461)))

(declare-fun b!848602 () Bool)

(declare-fun e!558462 () Bool)

(assert (=> b!848602 (= e!558461 e!558462)))

(declare-fun res!387946 () Bool)

(assert (=> b!848602 (=> (not res!387946) (not e!558462))))

(declare-fun contains!1693 (List!9167 String!10808) Bool)

(assert (=> b!848602 (= res!387946 (not (contains!1693 Nil!9151 (tag!1978 (h!14550 rules!2621)))))))

(declare-fun b!848603 () Bool)

(assert (=> b!848603 (= e!558462 (noDuplicateTag!597 thiss!20117 (t!94857 rules!2621) (Cons!9151 (tag!1978 (h!14550 rules!2621)) Nil!9151)))))

(assert (= (and d!264402 (not res!387945)) b!848602))

(assert (= (and b!848602 res!387946) b!848603))

(declare-fun m!1085459 () Bool)

(assert (=> b!848602 m!1085459))

(declare-fun m!1085461 () Bool)

(assert (=> b!848603 m!1085461))

(assert (=> b!848421 d!264402))

(declare-fun d!264404 () Bool)

(declare-fun lt!321525 () Bool)

(declare-fun e!558464 () Bool)

(assert (=> d!264404 (= lt!321525 e!558464)))

(declare-fun res!387947 () Bool)

(assert (=> d!264404 (=> (not res!387947) (not e!558464))))

(assert (=> d!264404 (= res!387947 (= (list!3590 (_1!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 lt!321339)))))) (list!3590 (singletonSeq!533 (h!14549 lt!321339)))))))

(declare-fun e!558463 () Bool)

(assert (=> d!264404 (= lt!321525 e!558463)))

(declare-fun res!387949 () Bool)

(assert (=> d!264404 (=> (not res!387949) (not e!558463))))

(declare-fun lt!321524 () tuple2!10364)

(assert (=> d!264404 (= res!387949 (= (size!7627 (_1!6008 lt!321524)) 1))))

(assert (=> d!264404 (= lt!321524 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 lt!321339)))))))

(assert (=> d!264404 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264404 (= (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321339)) lt!321525)))

(declare-fun b!848604 () Bool)

(declare-fun res!387948 () Bool)

(assert (=> b!848604 (=> (not res!387948) (not e!558463))))

(assert (=> b!848604 (= res!387948 (= (apply!1867 (_1!6008 lt!321524) 0) (h!14549 lt!321339)))))

(declare-fun b!848605 () Bool)

(assert (=> b!848605 (= e!558463 (isEmpty!5405 (_2!6008 lt!321524)))))

(declare-fun b!848606 () Bool)

(assert (=> b!848606 (= e!558464 (isEmpty!5405 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 lt!321339)))))))))

(assert (= (and d!264404 res!387949) b!848604))

(assert (= (and b!848604 res!387948) b!848605))

(assert (= (and d!264404 res!387947) b!848606))

(declare-fun m!1085463 () Bool)

(assert (=> d!264404 m!1085463))

(declare-fun m!1085465 () Bool)

(assert (=> d!264404 m!1085465))

(assert (=> d!264404 m!1084857))

(declare-fun m!1085467 () Bool)

(assert (=> d!264404 m!1085467))

(assert (=> d!264404 m!1085463))

(declare-fun m!1085469 () Bool)

(assert (=> d!264404 m!1085469))

(assert (=> d!264404 m!1085467))

(declare-fun m!1085471 () Bool)

(assert (=> d!264404 m!1085471))

(assert (=> d!264404 m!1085467))

(declare-fun m!1085473 () Bool)

(assert (=> d!264404 m!1085473))

(declare-fun m!1085475 () Bool)

(assert (=> b!848604 m!1085475))

(declare-fun m!1085477 () Bool)

(assert (=> b!848605 m!1085477))

(assert (=> b!848606 m!1085467))

(assert (=> b!848606 m!1085467))

(assert (=> b!848606 m!1085463))

(assert (=> b!848606 m!1085463))

(assert (=> b!848606 m!1085465))

(declare-fun m!1085479 () Bool)

(assert (=> b!848606 m!1085479))

(assert (=> b!848259 d!264404))

(declare-fun d!264406 () Bool)

(assert (=> d!264406 (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297) rules!2621)))

(declare-fun lt!321530 () Unit!13623)

(declare-fun lt!321531 () Unit!13623)

(assert (=> d!264406 (= lt!321530 lt!321531)))

(assert (=> d!264406 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))

(assert (=> d!264406 (= lt!321531 (withSeparatorTokenListPreservesRulesProduceTokens!48 thiss!20117 rules!2621 lt!321345 separatorToken!297))))

(assert (=> d!264406 true))

(declare-fun _$39!205 () Unit!13623)

(assert (=> d!264406 (= (choose!5010 thiss!20117 rules!2621 lt!321345 separatorToken!297) _$39!205)))

(declare-fun bs!230739 () Bool)

(assert (= bs!230739 d!264406))

(assert (=> bs!230739 m!1084859))

(assert (=> bs!230739 m!1084859))

(assert (=> bs!230739 m!1084945))

(assert (=> bs!230739 m!1084859))

(assert (=> bs!230739 m!1084899))

(assert (=> bs!230739 m!1084809))

(assert (=> d!264270 d!264406))

(assert (=> d!264270 d!264242))

(assert (=> d!264326 d!264324))

(declare-fun d!264408 () Bool)

(assert (=> d!264408 (separableTokensPredicate!58 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621)))

(assert (=> d!264408 true))

(declare-fun _$37!211 () Unit!13623)

(assert (=> d!264408 (= (choose!5009 thiss!20117 (h!14549 (t!94856 lt!321339)) lt!321340 rules!2621) _$37!211)))

(declare-fun bs!230747 () Bool)

(assert (= bs!230747 d!264408))

(assert (=> bs!230747 m!1084823))

(assert (=> d!264326 d!264408))

(assert (=> d!264326 d!264242))

(declare-fun d!264420 () Bool)

(declare-fun res!387955 () Bool)

(declare-fun e!558473 () Bool)

(assert (=> d!264420 (=> res!387955 e!558473)))

(assert (=> d!264420 (= res!387955 (or (not ((_ is Cons!9148) (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))) (not ((_ is Cons!9148) (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))))))))

(assert (=> d!264420 (= (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))) rules!2621) e!558473)))

(declare-fun b!848616 () Bool)

(declare-fun e!558474 () Bool)

(assert (=> b!848616 (= e!558473 e!558474)))

(declare-fun res!387956 () Bool)

(assert (=> b!848616 (=> (not res!387956) (not e!558474))))

(assert (=> b!848616 (= res!387956 (separableTokensPredicate!58 thiss!20117 (h!14549 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342)))) (h!14549 (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))) rules!2621))))

(declare-fun lt!321543 () Unit!13623)

(declare-fun Unit!13631 () Unit!13623)

(assert (=> b!848616 (= lt!321543 Unit!13631)))

(assert (=> b!848616 (> (size!7626 (charsOf!987 (h!14549 (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))))) 0)))

(declare-fun lt!321547 () Unit!13623)

(declare-fun Unit!13632 () Unit!13623)

(assert (=> b!848616 (= lt!321547 Unit!13632)))

(assert (=> b!848616 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))))))

(declare-fun lt!321545 () Unit!13623)

(declare-fun Unit!13633 () Unit!13623)

(assert (=> b!848616 (= lt!321545 Unit!13633)))

(assert (=> b!848616 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342)))))))

(declare-fun lt!321548 () Unit!13623)

(declare-fun lt!321546 () Unit!13623)

(assert (=> b!848616 (= lt!321548 lt!321546)))

(assert (=> b!848616 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))))))

(assert (=> b!848616 (= lt!321546 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))) (h!14549 (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342)))))))))

(declare-fun lt!321544 () Unit!13623)

(declare-fun lt!321542 () Unit!13623)

(assert (=> b!848616 (= lt!321544 lt!321542)))

(assert (=> b!848616 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342)))))))

(assert (=> b!848616 (= lt!321542 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))) (h!14549 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))))))

(declare-fun b!848617 () Bool)

(assert (=> b!848617 (= e!558474 (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 (Cons!9148 (h!14549 (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342))))) (t!94856 (t!94856 (Cons!9148 (h!14549 (t!94856 lt!321342)) (t!94856 (t!94856 lt!321342)))))) rules!2621))))

(assert (= (and d!264420 (not res!387955)) b!848616))

(assert (= (and b!848616 res!387956) b!848617))

(declare-fun m!1085517 () Bool)

(assert (=> b!848616 m!1085517))

(declare-fun m!1085519 () Bool)

(assert (=> b!848616 m!1085519))

(declare-fun m!1085521 () Bool)

(assert (=> b!848616 m!1085521))

(declare-fun m!1085523 () Bool)

(assert (=> b!848616 m!1085523))

(assert (=> b!848616 m!1085517))

(declare-fun m!1085525 () Bool)

(assert (=> b!848616 m!1085525))

(declare-fun m!1085527 () Bool)

(assert (=> b!848616 m!1085527))

(declare-fun m!1085529 () Bool)

(assert (=> b!848616 m!1085529))

(declare-fun m!1085531 () Bool)

(assert (=> b!848617 m!1085531))

(assert (=> b!848387 d!264420))

(declare-fun bs!230748 () Bool)

(declare-fun d!264422 () Bool)

(assert (= bs!230748 (and d!264422 d!264262)))

(declare-fun lambda!25305 () Int)

(assert (=> bs!230748 (= lambda!25305 lambda!25286)))

(declare-fun bs!230749 () Bool)

(assert (= bs!230749 (and d!264422 d!264296)))

(assert (=> bs!230749 (= lambda!25305 lambda!25287)))

(declare-fun bs!230750 () Bool)

(assert (= bs!230750 (and d!264422 d!264328)))

(assert (=> bs!230750 (= lambda!25305 lambda!25298)))

(declare-fun bs!230751 () Bool)

(assert (= bs!230751 (and d!264422 d!264318)))

(assert (=> bs!230751 (= lambda!25305 lambda!25288)))

(declare-fun bs!230752 () Bool)

(assert (= bs!230752 (and d!264422 b!848136)))

(assert (=> bs!230752 (not (= lambda!25305 lambda!25280))))

(declare-fun b!848622 () Bool)

(declare-fun e!558479 () Bool)

(assert (=> b!848622 (= e!558479 true)))

(declare-fun b!848621 () Bool)

(declare-fun e!558478 () Bool)

(assert (=> b!848621 (= e!558478 e!558479)))

(declare-fun b!848620 () Bool)

(declare-fun e!558477 () Bool)

(assert (=> b!848620 (= e!558477 e!558478)))

(assert (=> d!264422 e!558477))

(assert (= b!848621 b!848622))

(assert (= b!848620 b!848621))

(assert (= (and d!264422 ((_ is Cons!9149) rules!2621)) b!848620))

(assert (=> b!848622 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25305))))

(assert (=> b!848622 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25305))))

(assert (=> d!264422 true))

(declare-fun lt!321549 () Bool)

(assert (=> d!264422 (= lt!321549 (forall!2145 (t!94856 l!5107) lambda!25305))))

(declare-fun e!558475 () Bool)

(assert (=> d!264422 (= lt!321549 e!558475)))

(declare-fun res!387958 () Bool)

(assert (=> d!264422 (=> res!387958 e!558475)))

(assert (=> d!264422 (= res!387958 (not ((_ is Cons!9148) (t!94856 l!5107))))))

(assert (=> d!264422 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264422 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 l!5107)) lt!321549)))

(declare-fun b!848618 () Bool)

(declare-fun e!558476 () Bool)

(assert (=> b!848618 (= e!558475 e!558476)))

(declare-fun res!387957 () Bool)

(assert (=> b!848618 (=> (not res!387957) (not e!558476))))

(assert (=> b!848618 (= res!387957 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 l!5107))))))

(declare-fun b!848619 () Bool)

(assert (=> b!848619 (= e!558476 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 (t!94856 l!5107))))))

(assert (= (and d!264422 (not res!387958)) b!848618))

(assert (= (and b!848618 res!387957) b!848619))

(declare-fun m!1085533 () Bool)

(assert (=> d!264422 m!1085533))

(assert (=> d!264422 m!1084857))

(declare-fun m!1085535 () Bool)

(assert (=> b!848618 m!1085535))

(declare-fun m!1085537 () Bool)

(assert (=> b!848619 m!1085537))

(assert (=> b!848305 d!264422))

(declare-fun bs!230753 () Bool)

(declare-fun d!264424 () Bool)

(assert (= bs!230753 (and d!264424 d!264262)))

(declare-fun lambda!25306 () Int)

(assert (=> bs!230753 (= lambda!25306 lambda!25286)))

(declare-fun bs!230754 () Bool)

(assert (= bs!230754 (and d!264424 d!264296)))

(assert (=> bs!230754 (= lambda!25306 lambda!25287)))

(declare-fun bs!230755 () Bool)

(assert (= bs!230755 (and d!264424 d!264328)))

(assert (=> bs!230755 (= lambda!25306 lambda!25298)))

(declare-fun bs!230756 () Bool)

(assert (= bs!230756 (and d!264424 d!264318)))

(assert (=> bs!230756 (= lambda!25306 lambda!25288)))

(declare-fun bs!230757 () Bool)

(assert (= bs!230757 (and d!264424 b!848136)))

(assert (=> bs!230757 (not (= lambda!25306 lambda!25280))))

(declare-fun bs!230758 () Bool)

(assert (= bs!230758 (and d!264424 d!264422)))

(assert (=> bs!230758 (= lambda!25306 lambda!25305)))

(declare-fun b!848627 () Bool)

(declare-fun e!558484 () Bool)

(assert (=> b!848627 (= e!558484 true)))

(declare-fun b!848626 () Bool)

(declare-fun e!558483 () Bool)

(assert (=> b!848626 (= e!558483 e!558484)))

(declare-fun b!848625 () Bool)

(declare-fun e!558482 () Bool)

(assert (=> b!848625 (= e!558482 e!558483)))

(assert (=> d!264424 e!558482))

(assert (= b!848626 b!848627))

(assert (= b!848625 b!848626))

(assert (= (and d!264424 ((_ is Cons!9149) rules!2621)) b!848625))

(assert (=> b!848627 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25306))))

(assert (=> b!848627 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25306))))

(assert (=> d!264424 true))

(declare-fun lt!321550 () Bool)

(assert (=> d!264424 (= lt!321550 (forall!2145 (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297) lambda!25306))))

(declare-fun e!558480 () Bool)

(assert (=> d!264424 (= lt!321550 e!558480)))

(declare-fun res!387960 () Bool)

(assert (=> d!264424 (=> res!387960 e!558480)))

(assert (=> d!264424 (= res!387960 (not ((_ is Cons!9148) (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!264424 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264424 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297)) lt!321550)))

(declare-fun b!848623 () Bool)

(declare-fun e!558481 () Bool)

(assert (=> b!848623 (= e!558480 e!558481)))

(declare-fun res!387959 () Bool)

(assert (=> b!848623 (=> (not res!387959) (not e!558481))))

(assert (=> b!848623 (= res!387959 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!848624 () Bool)

(assert (=> b!848624 (= e!558481 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!264424 (not res!387960)) b!848623))

(assert (= (and b!848623 res!387959) b!848624))

(assert (=> d!264424 m!1084845))

(declare-fun m!1085539 () Bool)

(assert (=> d!264424 m!1085539))

(assert (=> d!264424 m!1084857))

(declare-fun m!1085541 () Bool)

(assert (=> b!848623 m!1085541))

(declare-fun m!1085543 () Bool)

(assert (=> b!848624 m!1085543))

(assert (=> d!264316 d!264424))

(assert (=> d!264316 d!264298))

(declare-fun d!264426 () Bool)

(assert (=> d!264426 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!264426 true))

(declare-fun _$32!314 () Unit!13623)

(assert (=> d!264426 (= (choose!5008 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!314)))

(declare-fun bs!230762 () Bool)

(assert (= bs!230762 d!264426))

(assert (=> bs!230762 m!1084845))

(assert (=> bs!230762 m!1084845))

(assert (=> bs!230762 m!1085061))

(assert (=> d!264316 d!264426))

(assert (=> d!264316 d!264242))

(declare-fun d!264442 () Bool)

(declare-fun list!3591 (Conc!3032) List!9163)

(assert (=> d!264442 (= (list!3589 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))) (list!3591 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))))))

(declare-fun bs!230764 () Bool)

(assert (= bs!230764 d!264442))

(declare-fun m!1085599 () Bool)

(assert (=> bs!230764 m!1085599))

(assert (=> b!848528 d!264442))

(declare-fun d!264448 () Bool)

(declare-fun c!137865 () Bool)

(assert (=> d!264448 (= c!137865 ((_ is Cons!9148) lt!321515))))

(declare-fun e!558505 () List!9163)

(assert (=> d!264448 (= (printList!470 thiss!20117 lt!321515) e!558505)))

(declare-fun b!848658 () Bool)

(assert (=> b!848658 (= e!558505 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321515))) (printList!470 thiss!20117 (t!94856 lt!321515))))))

(declare-fun b!848659 () Bool)

(assert (=> b!848659 (= e!558505 Nil!9147)))

(assert (= (and d!264448 c!137865) b!848658))

(assert (= (and d!264448 (not c!137865)) b!848659))

(declare-fun m!1085601 () Bool)

(assert (=> b!848658 m!1085601))

(assert (=> b!848658 m!1085601))

(declare-fun m!1085603 () Bool)

(assert (=> b!848658 m!1085603))

(declare-fun m!1085607 () Bool)

(assert (=> b!848658 m!1085607))

(assert (=> b!848658 m!1085603))

(assert (=> b!848658 m!1085607))

(declare-fun m!1085611 () Bool)

(assert (=> b!848658 m!1085611))

(assert (=> d!264370 d!264448))

(declare-fun d!264450 () Bool)

(declare-fun c!137871 () Bool)

(assert (=> d!264450 (= c!137871 ((_ is Cons!9148) lt!321345))))

(declare-fun e!558514 () List!9163)

(assert (=> d!264450 (= (printWithSeparatorTokenList!28 thiss!20117 lt!321345 separatorToken!297) e!558514)))

(declare-fun b!848674 () Bool)

(assert (=> b!848674 (= e!558514 (++!2370 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321345))) (list!3589 (charsOf!987 separatorToken!297))) (printWithSeparatorTokenList!28 thiss!20117 (t!94856 lt!321345) separatorToken!297)))))

(declare-fun b!848675 () Bool)

(assert (=> b!848675 (= e!558514 Nil!9147)))

(assert (= (and d!264450 c!137871) b!848674))

(assert (= (and d!264450 (not c!137871)) b!848675))

(assert (=> b!848674 m!1085337))

(assert (=> b!848674 m!1085357))

(assert (=> b!848674 m!1085357))

(assert (=> b!848674 m!1085035))

(declare-fun m!1085645 () Bool)

(assert (=> b!848674 m!1085645))

(assert (=> b!848674 m!1085337))

(assert (=> b!848674 m!1085017))

(assert (=> b!848674 m!1085035))

(assert (=> b!848674 m!1085645))

(declare-fun m!1085653 () Bool)

(assert (=> b!848674 m!1085653))

(declare-fun m!1085657 () Bool)

(assert (=> b!848674 m!1085657))

(assert (=> b!848674 m!1085653))

(assert (=> b!848674 m!1085017))

(assert (=> d!264370 d!264450))

(declare-fun d!264458 () Bool)

(declare-fun res!387979 () Bool)

(declare-fun e!558515 () Bool)

(assert (=> d!264458 (=> res!387979 e!558515)))

(assert (=> d!264458 (= res!387979 ((_ is Nil!9148) (list!3590 (seqFromList!1522 lt!321339))))))

(assert (=> d!264458 (= (forall!2145 (list!3590 (seqFromList!1522 lt!321339)) lambda!25298) e!558515)))

(declare-fun b!848676 () Bool)

(declare-fun e!558516 () Bool)

(assert (=> b!848676 (= e!558515 e!558516)))

(declare-fun res!387980 () Bool)

(assert (=> b!848676 (=> (not res!387980) (not e!558516))))

(assert (=> b!848676 (= res!387980 (dynLambda!4253 lambda!25298 (h!14549 (list!3590 (seqFromList!1522 lt!321339)))))))

(declare-fun b!848677 () Bool)

(assert (=> b!848677 (= e!558516 (forall!2145 (t!94856 (list!3590 (seqFromList!1522 lt!321339))) lambda!25298))))

(assert (= (and d!264458 (not res!387979)) b!848676))

(assert (= (and b!848676 res!387980) b!848677))

(declare-fun b_lambda!28141 () Bool)

(assert (=> (not b_lambda!28141) (not b!848676)))

(declare-fun m!1085669 () Bool)

(assert (=> b!848676 m!1085669))

(declare-fun m!1085671 () Bool)

(assert (=> b!848677 m!1085671))

(assert (=> d!264328 d!264458))

(declare-fun d!264462 () Bool)

(declare-fun list!3592 (Conc!3033) List!9164)

(assert (=> d!264462 (= (list!3590 (seqFromList!1522 lt!321339)) (list!3592 (c!137816 (seqFromList!1522 lt!321339))))))

(declare-fun bs!230765 () Bool)

(assert (= bs!230765 d!264462))

(declare-fun m!1085673 () Bool)

(assert (=> bs!230765 m!1085673))

(assert (=> d!264328 d!264462))

(declare-fun d!264464 () Bool)

(declare-fun lt!321573 () Bool)

(assert (=> d!264464 (= lt!321573 (forall!2145 (list!3590 (seqFromList!1522 lt!321339)) lambda!25298))))

(declare-fun forall!2148 (Conc!3033 Int) Bool)

(assert (=> d!264464 (= lt!321573 (forall!2148 (c!137816 (seqFromList!1522 lt!321339)) lambda!25298))))

(assert (=> d!264464 (= (forall!2147 (seqFromList!1522 lt!321339) lambda!25298) lt!321573)))

(declare-fun bs!230767 () Bool)

(assert (= bs!230767 d!264464))

(assert (=> bs!230767 m!1084821))

(assert (=> bs!230767 m!1085099))

(assert (=> bs!230767 m!1085099))

(assert (=> bs!230767 m!1085101))

(declare-fun m!1085677 () Bool)

(assert (=> bs!230767 m!1085677))

(assert (=> d!264328 d!264464))

(assert (=> d!264328 d!264242))

(declare-fun d!264468 () Bool)

(declare-fun res!387984 () Bool)

(declare-fun e!558519 () Bool)

(assert (=> d!264468 (=> res!387984 e!558519)))

(assert (=> d!264468 (= res!387984 ((_ is Nil!9148) (t!94856 l!5107)))))

(assert (=> d!264468 (= (forall!2145 (t!94856 l!5107) lambda!25280) e!558519)))

(declare-fun b!848685 () Bool)

(declare-fun e!558520 () Bool)

(assert (=> b!848685 (= e!558519 e!558520)))

(declare-fun res!387985 () Bool)

(assert (=> b!848685 (=> (not res!387985) (not e!558520))))

(assert (=> b!848685 (= res!387985 (dynLambda!4253 lambda!25280 (h!14549 (t!94856 l!5107))))))

(declare-fun b!848686 () Bool)

(assert (=> b!848686 (= e!558520 (forall!2145 (t!94856 (t!94856 l!5107)) lambda!25280))))

(assert (= (and d!264468 (not res!387984)) b!848685))

(assert (= (and b!848685 res!387985) b!848686))

(declare-fun b_lambda!28143 () Bool)

(assert (=> (not b_lambda!28143) (not b!848685)))

(declare-fun m!1085679 () Bool)

(assert (=> b!848685 m!1085679))

(declare-fun m!1085681 () Bool)

(assert (=> b!848686 m!1085681))

(assert (=> b!848418 d!264468))

(declare-fun d!264470 () Bool)

(declare-fun charsToBigInt!1 (List!9162) Int)

(assert (=> d!264470 (= (inv!17 (value!55605 (h!14549 l!5107))) (= (charsToBigInt!1 (text!12922 (value!55605 (h!14549 l!5107)))) (value!55597 (value!55605 (h!14549 l!5107)))))))

(declare-fun bs!230768 () Bool)

(assert (= bs!230768 d!264470))

(declare-fun m!1085701 () Bool)

(assert (=> bs!230768 m!1085701))

(assert (=> b!848402 d!264470))

(declare-fun e!558532 () Bool)

(declare-fun lt!321581 () BalanceConc!6078)

(declare-fun b!848710 () Bool)

(assert (=> b!848710 (= e!558532 (= (list!3589 lt!321581) (++!2370 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321339)))) (list!3589 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))))))

(declare-fun d!264474 () Bool)

(assert (=> d!264474 e!558532))

(declare-fun res!388000 () Bool)

(assert (=> d!264474 (=> (not res!388000) (not e!558532))))

(declare-fun appendAssocInst!193 (Conc!3032 Conc!3032) Bool)

(assert (=> d!264474 (= res!388000 (appendAssocInst!193 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339)))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0)))))))

(declare-fun ++!2371 (Conc!3032 Conc!3032) Conc!3032)

(assert (=> d!264474 (= lt!321581 (BalanceConc!6079 (++!2371 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339)))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))))))

(assert (=> d!264474 (= (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))) lt!321581)))

(declare-fun b!848708 () Bool)

(declare-fun res!388003 () Bool)

(assert (=> b!848708 (=> (not res!388003) (not e!558532))))

(declare-fun height!397 (Conc!3032) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!848708 (= res!388003 (<= (height!397 (++!2371 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339)))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))) (+ (max!0 (height!397 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339))))) (height!397 (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))) 1)))))

(declare-fun b!848707 () Bool)

(declare-fun res!388002 () Bool)

(assert (=> b!848707 (=> (not res!388002) (not e!558532))))

(declare-fun isBalanced!823 (Conc!3032) Bool)

(assert (=> b!848707 (= res!388002 (isBalanced!823 (++!2371 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339)))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))))))

(declare-fun b!848709 () Bool)

(declare-fun res!388001 () Bool)

(assert (=> b!848709 (=> (not res!388001) (not e!558532))))

(assert (=> b!848709 (= res!388001 (>= (height!397 (++!2371 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339)))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))) (max!0 (height!397 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339))))) (height!397 (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0)))))))))

(assert (= (and d!264474 res!388000) b!848707))

(assert (= (and b!848707 res!388002) b!848708))

(assert (= (and b!848708 res!388003) b!848709))

(assert (= (and b!848709 res!388001) b!848710))

(declare-fun m!1085715 () Bool)

(assert (=> b!848709 m!1085715))

(declare-fun m!1085717 () Bool)

(assert (=> b!848709 m!1085717))

(declare-fun m!1085719 () Bool)

(assert (=> b!848709 m!1085719))

(assert (=> b!848709 m!1085719))

(assert (=> b!848709 m!1085715))

(declare-fun m!1085721 () Bool)

(assert (=> b!848709 m!1085721))

(assert (=> b!848709 m!1085717))

(declare-fun m!1085723 () Bool)

(assert (=> b!848709 m!1085723))

(declare-fun m!1085725 () Bool)

(assert (=> d!264474 m!1085725))

(assert (=> d!264474 m!1085717))

(declare-fun m!1085727 () Bool)

(assert (=> b!848710 m!1085727))

(assert (=> b!848710 m!1084927))

(declare-fun m!1085729 () Bool)

(assert (=> b!848710 m!1085729))

(assert (=> b!848710 m!1085077))

(declare-fun m!1085731 () Bool)

(assert (=> b!848710 m!1085731))

(assert (=> b!848710 m!1085729))

(assert (=> b!848710 m!1085731))

(declare-fun m!1085733 () Bool)

(assert (=> b!848710 m!1085733))

(assert (=> b!848708 m!1085715))

(assert (=> b!848708 m!1085717))

(assert (=> b!848708 m!1085719))

(assert (=> b!848708 m!1085719))

(assert (=> b!848708 m!1085715))

(assert (=> b!848708 m!1085721))

(assert (=> b!848708 m!1085717))

(assert (=> b!848708 m!1085723))

(assert (=> b!848707 m!1085717))

(assert (=> b!848707 m!1085717))

(declare-fun m!1085737 () Bool)

(assert (=> b!848707 m!1085737))

(assert (=> d!264324 d!264474))

(declare-fun d!264480 () Bool)

(declare-fun lt!321588 () BalanceConc!6078)

(assert (=> d!264480 (= (list!3589 lt!321588) (originalCharacters!2272 lt!321340))))

(assert (=> d!264480 (= lt!321588 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 lt!321340))) (value!55605 lt!321340)))))

(assert (=> d!264480 (= (charsOf!987 lt!321340) lt!321588)))

(declare-fun b_lambda!28147 () Bool)

(assert (=> (not b_lambda!28147) (not d!264480)))

(declare-fun t!94937 () Bool)

(declare-fun tb!59165 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 lt!321340)))) t!94937) tb!59165))

(declare-fun b!848712 () Bool)

(declare-fun e!558534 () Bool)

(declare-fun tp!267193 () Bool)

(assert (=> b!848712 (= e!558534 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 lt!321340))) (value!55605 lt!321340)))) tp!267193))))

(declare-fun result!68598 () Bool)

(assert (=> tb!59165 (= result!68598 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 lt!321340))) (value!55605 lt!321340))) e!558534))))

(assert (= tb!59165 b!848712))

(declare-fun m!1085751 () Bool)

(assert (=> b!848712 m!1085751))

(declare-fun m!1085753 () Bool)

(assert (=> tb!59165 m!1085753))

(assert (=> d!264480 t!94937))

(declare-fun b_and!74069 () Bool)

(assert (= b_and!74035 (and (=> t!94937 result!68598) b_and!74069)))

(declare-fun t!94939 () Bool)

(declare-fun tb!59167 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 lt!321340)))) t!94939) tb!59167))

(declare-fun result!68600 () Bool)

(assert (= result!68600 result!68598))

(assert (=> d!264480 t!94939))

(declare-fun b_and!74071 () Bool)

(assert (= b_and!74039 (and (=> t!94939 result!68600) b_and!74071)))

(declare-fun tb!59169 () Bool)

(declare-fun t!94941 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 lt!321340)))) t!94941) tb!59169))

(declare-fun result!68602 () Bool)

(assert (= result!68602 result!68598))

(assert (=> d!264480 t!94941))

(declare-fun b_and!74073 () Bool)

(assert (= b_and!74037 (and (=> t!94941 result!68602) b_and!74073)))

(declare-fun tb!59171 () Bool)

(declare-fun t!94943 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 lt!321340)))) t!94943) tb!59171))

(declare-fun result!68604 () Bool)

(assert (= result!68604 result!68598))

(assert (=> d!264480 t!94943))

(declare-fun b_and!74075 () Bool)

(assert (= b_and!74043 (and (=> t!94943 result!68604) b_and!74075)))

(declare-fun tb!59173 () Bool)

(declare-fun t!94945 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 lt!321340)))) t!94945) tb!59173))

(declare-fun result!68606 () Bool)

(assert (= result!68606 result!68598))

(assert (=> d!264480 t!94945))

(declare-fun b_and!74077 () Bool)

(assert (= b_and!74047 (and (=> t!94945 result!68606) b_and!74077)))

(declare-fun m!1085755 () Bool)

(assert (=> d!264480 m!1085755))

(declare-fun m!1085757 () Bool)

(assert (=> d!264480 m!1085757))

(assert (=> d!264324 d!264480))

(declare-fun lt!321619 () Bool)

(declare-fun d!264486 () Bool)

(declare-fun prefixMatch!7 (Regex!2149 List!9163) Bool)

(assert (=> d!264486 (= lt!321619 (prefixMatch!7 (rulesRegex!20 thiss!20117 rules!2621) (list!3589 (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!9168 0))(
  ( (Nil!9152) (Cons!9152 (h!14553 Regex!2149) (t!95218 List!9168)) )
))
(declare-datatypes ((Context!864 0))(
  ( (Context!865 (exprs!932 List!9168)) )
))
(declare-fun prefixMatchZipperSequence!28 ((InoxSet Context!864) BalanceConc!6078 Int) Bool)

(declare-fun focus!27 (Regex!2149) (InoxSet Context!864))

(assert (=> d!264486 (= lt!321619 (prefixMatchZipperSequence!28 (focus!27 (rulesRegex!20 thiss!20117 rules!2621)) (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))) 0))))

(declare-fun lt!321615 () Unit!13623)

(declare-fun lt!321623 () Unit!13623)

(assert (=> d!264486 (= lt!321615 lt!321623)))

(declare-fun lt!321618 () (InoxSet Context!864))

(declare-fun lt!321616 () List!9163)

(declare-fun prefixMatchZipper!7 ((InoxSet Context!864) List!9163) Bool)

(assert (=> d!264486 (= (prefixMatch!7 (rulesRegex!20 thiss!20117 rules!2621) lt!321616) (prefixMatchZipper!7 lt!321618 lt!321616))))

(declare-datatypes ((List!9169 0))(
  ( (Nil!9153) (Cons!9153 (h!14554 Context!864) (t!95219 List!9169)) )
))
(declare-fun lt!321620 () List!9169)

(declare-fun prefixMatchZipperRegexEquiv!7 ((InoxSet Context!864) List!9169 Regex!2149 List!9163) Unit!13623)

(assert (=> d!264486 (= lt!321623 (prefixMatchZipperRegexEquiv!7 lt!321618 lt!321620 (rulesRegex!20 thiss!20117 rules!2621) lt!321616))))

(assert (=> d!264486 (= lt!321616 (list!3589 (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0)))))))

(declare-fun toList!573 ((InoxSet Context!864)) List!9169)

(assert (=> d!264486 (= lt!321620 (toList!573 (focus!27 (rulesRegex!20 thiss!20117 rules!2621))))))

(assert (=> d!264486 (= lt!321618 (focus!27 (rulesRegex!20 thiss!20117 rules!2621)))))

(declare-fun lt!321621 () Unit!13623)

(declare-fun lt!321624 () Unit!13623)

(assert (=> d!264486 (= lt!321621 lt!321624)))

(declare-fun lt!321617 () Int)

(declare-fun lt!321622 () (InoxSet Context!864))

(declare-fun dropList!269 (BalanceConc!6078 Int) List!9163)

(assert (=> d!264486 (= (prefixMatchZipper!7 lt!321622 (dropList!269 (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))) lt!321617)) (prefixMatchZipperSequence!28 lt!321622 (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))) lt!321617))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!7 ((InoxSet Context!864) BalanceConc!6078 Int) Unit!13623)

(assert (=> d!264486 (= lt!321624 (lemmaprefixMatchZipperSequenceEquivalent!7 lt!321622 (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0))) lt!321617))))

(assert (=> d!264486 (= lt!321617 0)))

(assert (=> d!264486 (= lt!321622 (focus!27 (rulesRegex!20 thiss!20117 rules!2621)))))

(declare-fun validRegex!657 (Regex!2149) Bool)

(assert (=> d!264486 (validRegex!657 (rulesRegex!20 thiss!20117 rules!2621))))

(assert (=> d!264486 (= (prefixMatchZipperSequence!27 (rulesRegex!20 thiss!20117 rules!2621) (++!2368 (charsOf!987 (h!14549 (t!94856 lt!321339))) (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0)))) lt!321619)))

(declare-fun bs!230770 () Bool)

(assert (= bs!230770 d!264486))

(assert (=> bs!230770 m!1084917))

(declare-fun m!1085787 () Bool)

(assert (=> bs!230770 m!1085787))

(assert (=> bs!230770 m!1085073))

(declare-fun m!1085789 () Bool)

(assert (=> bs!230770 m!1085789))

(assert (=> bs!230770 m!1084917))

(declare-fun m!1085791 () Bool)

(assert (=> bs!230770 m!1085791))

(declare-fun m!1085793 () Bool)

(assert (=> bs!230770 m!1085793))

(assert (=> bs!230770 m!1085073))

(declare-fun m!1085795 () Bool)

(assert (=> bs!230770 m!1085795))

(assert (=> bs!230770 m!1085073))

(declare-fun m!1085797 () Bool)

(assert (=> bs!230770 m!1085797))

(assert (=> bs!230770 m!1085073))

(declare-fun m!1085799 () Bool)

(assert (=> bs!230770 m!1085799))

(assert (=> bs!230770 m!1084917))

(declare-fun m!1085801 () Bool)

(assert (=> bs!230770 m!1085801))

(assert (=> bs!230770 m!1085801))

(assert (=> bs!230770 m!1085073))

(declare-fun m!1085803 () Bool)

(assert (=> bs!230770 m!1085803))

(assert (=> bs!230770 m!1084917))

(declare-fun m!1085805 () Bool)

(assert (=> bs!230770 m!1085805))

(assert (=> bs!230770 m!1085801))

(declare-fun m!1085807 () Bool)

(assert (=> bs!230770 m!1085807))

(assert (=> bs!230770 m!1084917))

(assert (=> bs!230770 m!1085789))

(declare-fun m!1085809 () Bool)

(assert (=> bs!230770 m!1085809))

(assert (=> bs!230770 m!1085795))

(declare-fun m!1085811 () Bool)

(assert (=> bs!230770 m!1085811))

(assert (=> d!264324 d!264486))

(declare-fun d!264492 () Bool)

(declare-fun lt!321627 () Unit!13623)

(declare-fun lemma!9 (List!9165 LexerInterface!1518 List!9165) Unit!13623)

(assert (=> d!264492 (= lt!321627 (lemma!9 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!25318 () Int)

(declare-fun generalisedUnion!13 (List!9168) Regex!2149)

(declare-fun map!1899 (List!9165 Int) List!9168)

(assert (=> d!264492 (= (rulesRegex!20 thiss!20117 rules!2621) (generalisedUnion!13 (map!1899 rules!2621 lambda!25318)))))

(declare-fun bs!230771 () Bool)

(assert (= bs!230771 d!264492))

(declare-fun m!1085813 () Bool)

(assert (=> bs!230771 m!1085813))

(declare-fun m!1085815 () Bool)

(assert (=> bs!230771 m!1085815))

(assert (=> bs!230771 m!1085815))

(declare-fun m!1085817 () Bool)

(assert (=> bs!230771 m!1085817))

(assert (=> d!264324 d!264492))

(declare-fun d!264494 () Bool)

(declare-fun lt!321630 () C!4868)

(declare-fun apply!1868 (List!9163 Int) C!4868)

(assert (=> d!264494 (= lt!321630 (apply!1868 (list!3589 (charsOf!987 lt!321340)) 0))))

(declare-fun apply!1869 (Conc!3032 Int) C!4868)

(assert (=> d!264494 (= lt!321630 (apply!1869 (c!137815 (charsOf!987 lt!321340)) 0))))

(declare-fun e!558543 () Bool)

(assert (=> d!264494 e!558543))

(declare-fun res!388021 () Bool)

(assert (=> d!264494 (=> (not res!388021) (not e!558543))))

(assert (=> d!264494 (= res!388021 (<= 0 0))))

(assert (=> d!264494 (= (apply!1866 (charsOf!987 lt!321340) 0) lt!321630)))

(declare-fun b!848730 () Bool)

(assert (=> b!848730 (= e!558543 (< 0 (size!7626 (charsOf!987 lt!321340))))))

(assert (= (and d!264494 res!388021) b!848730))

(assert (=> d!264494 m!1085079))

(declare-fun m!1085819 () Bool)

(assert (=> d!264494 m!1085819))

(assert (=> d!264494 m!1085819))

(declare-fun m!1085821 () Bool)

(assert (=> d!264494 m!1085821))

(declare-fun m!1085823 () Bool)

(assert (=> d!264494 m!1085823))

(assert (=> b!848730 m!1085079))

(declare-fun m!1085825 () Bool)

(assert (=> b!848730 m!1085825))

(assert (=> d!264324 d!264494))

(declare-fun d!264496 () Bool)

(declare-fun e!558546 () Bool)

(assert (=> d!264496 e!558546))

(declare-fun res!388024 () Bool)

(assert (=> d!264496 (=> (not res!388024) (not e!558546))))

(declare-fun lt!321663 () BalanceConc!6078)

(assert (=> d!264496 (= res!388024 (= (list!3589 lt!321663) (Cons!9147 (apply!1866 (charsOf!987 lt!321340) 0) Nil!9147)))))

(declare-fun singleton!251 (C!4868) BalanceConc!6078)

(assert (=> d!264496 (= lt!321663 (singleton!251 (apply!1866 (charsOf!987 lt!321340) 0)))))

(assert (=> d!264496 (= (singletonSeq!532 (apply!1866 (charsOf!987 lt!321340) 0)) lt!321663)))

(declare-fun b!848733 () Bool)

(assert (=> b!848733 (= e!558546 (isBalanced!823 (c!137815 lt!321663)))))

(assert (= (and d!264496 res!388024) b!848733))

(declare-fun m!1085827 () Bool)

(assert (=> d!264496 m!1085827))

(assert (=> d!264496 m!1085081))

(declare-fun m!1085829 () Bool)

(assert (=> d!264496 m!1085829))

(declare-fun m!1085831 () Bool)

(assert (=> b!848733 m!1085831))

(assert (=> d!264324 d!264496))

(declare-fun d!264498 () Bool)

(declare-fun lt!321664 () BalanceConc!6078)

(assert (=> d!264498 (= (list!3589 lt!321664) (originalCharacters!2272 (h!14549 (t!94856 lt!321339))))))

(assert (=> d!264498 (= lt!321664 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339))))) (value!55605 (h!14549 (t!94856 lt!321339)))))))

(assert (=> d!264498 (= (charsOf!987 (h!14549 (t!94856 lt!321339))) lt!321664)))

(declare-fun b_lambda!28149 () Bool)

(assert (=> (not b_lambda!28149) (not d!264498)))

(declare-fun tb!59175 () Bool)

(declare-fun t!94949 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339)))))) t!94949) tb!59175))

(declare-fun b!848734 () Bool)

(declare-fun e!558547 () Bool)

(declare-fun tp!267194 () Bool)

(assert (=> b!848734 (= e!558547 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339))))) (value!55605 (h!14549 (t!94856 lt!321339)))))) tp!267194))))

(declare-fun result!68608 () Bool)

(assert (=> tb!59175 (= result!68608 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339))))) (value!55605 (h!14549 (t!94856 lt!321339))))) e!558547))))

(assert (= tb!59175 b!848734))

(declare-fun m!1085843 () Bool)

(assert (=> b!848734 m!1085843))

(declare-fun m!1085847 () Bool)

(assert (=> tb!59175 m!1085847))

(assert (=> d!264498 t!94949))

(declare-fun b_and!74079 () Bool)

(assert (= b_and!74073 (and (=> t!94949 result!68608) b_and!74079)))

(declare-fun tb!59177 () Bool)

(declare-fun t!94951 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339)))))) t!94951) tb!59177))

(declare-fun result!68610 () Bool)

(assert (= result!68610 result!68608))

(assert (=> d!264498 t!94951))

(declare-fun b_and!74081 () Bool)

(assert (= b_and!74071 (and (=> t!94951 result!68610) b_and!74081)))

(declare-fun tb!59179 () Bool)

(declare-fun t!94953 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339)))))) t!94953) tb!59179))

(declare-fun result!68612 () Bool)

(assert (= result!68612 result!68608))

(assert (=> d!264498 t!94953))

(declare-fun b_and!74083 () Bool)

(assert (= b_and!74069 (and (=> t!94953 result!68612) b_and!74083)))

(declare-fun t!94955 () Bool)

(declare-fun tb!59181 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339)))))) t!94955) tb!59181))

(declare-fun result!68614 () Bool)

(assert (= result!68614 result!68608))

(assert (=> d!264498 t!94955))

(declare-fun b_and!74085 () Bool)

(assert (= b_and!74075 (and (=> t!94955 result!68614) b_and!74085)))

(declare-fun tb!59183 () Bool)

(declare-fun t!94957 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339)))))) t!94957) tb!59183))

(declare-fun result!68616 () Bool)

(assert (= result!68616 result!68608))

(assert (=> d!264498 t!94957))

(declare-fun b_and!74087 () Bool)

(assert (= b_and!74077 (and (=> t!94957 result!68616) b_and!74087)))

(declare-fun m!1085859 () Bool)

(assert (=> d!264498 m!1085859))

(declare-fun m!1085863 () Bool)

(assert (=> d!264498 m!1085863))

(assert (=> d!264324 d!264498))

(declare-fun d!264500 () Bool)

(declare-fun charsToInt!0 (List!9162) (_ BitVec 32))

(assert (=> d!264500 (= (inv!16 (value!55605 separatorToken!297)) (= (charsToInt!0 (text!12921 (value!55605 separatorToken!297))) (value!55596 (value!55605 separatorToken!297))))))

(declare-fun bs!230773 () Bool)

(assert (= bs!230773 d!264500))

(declare-fun m!1085871 () Bool)

(assert (=> bs!230773 m!1085871))

(assert (=> b!848524 d!264500))

(declare-fun b!848753 () Bool)

(declare-fun e!558557 () List!9163)

(assert (=> b!848753 (= e!558557 (Cons!9147 (h!14548 (list!3589 (charsOf!987 (h!14549 lt!321512)))) (++!2370 (t!94855 (list!3589 (charsOf!987 (h!14549 lt!321512)))) (printList!470 thiss!20117 (t!94856 lt!321512)))))))

(declare-fun b!848754 () Bool)

(declare-fun res!388034 () Bool)

(declare-fun e!558558 () Bool)

(assert (=> b!848754 (=> (not res!388034) (not e!558558))))

(declare-fun lt!321670 () List!9163)

(assert (=> b!848754 (= res!388034 (= (size!7625 lt!321670) (+ (size!7625 (list!3589 (charsOf!987 (h!14549 lt!321512)))) (size!7625 (printList!470 thiss!20117 (t!94856 lt!321512))))))))

(declare-fun b!848752 () Bool)

(assert (=> b!848752 (= e!558557 (printList!470 thiss!20117 (t!94856 lt!321512)))))

(declare-fun b!848755 () Bool)

(assert (=> b!848755 (= e!558558 (or (not (= (printList!470 thiss!20117 (t!94856 lt!321512)) Nil!9147)) (= lt!321670 (list!3589 (charsOf!987 (h!14549 lt!321512))))))))

(declare-fun d!264504 () Bool)

(assert (=> d!264504 e!558558))

(declare-fun res!388033 () Bool)

(assert (=> d!264504 (=> (not res!388033) (not e!558558))))

(declare-fun content!1339 (List!9163) (InoxSet C!4868))

(assert (=> d!264504 (= res!388033 (= (content!1339 lt!321670) ((_ map or) (content!1339 (list!3589 (charsOf!987 (h!14549 lt!321512)))) (content!1339 (printList!470 thiss!20117 (t!94856 lt!321512))))))))

(assert (=> d!264504 (= lt!321670 e!558557)))

(declare-fun c!137885 () Bool)

(assert (=> d!264504 (= c!137885 ((_ is Nil!9147) (list!3589 (charsOf!987 (h!14549 lt!321512)))))))

(assert (=> d!264504 (= (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321512))) (printList!470 thiss!20117 (t!94856 lt!321512))) lt!321670)))

(assert (= (and d!264504 c!137885) b!848752))

(assert (= (and d!264504 (not c!137885)) b!848753))

(assert (= (and d!264504 res!388033) b!848754))

(assert (= (and b!848754 res!388034) b!848755))

(assert (=> b!848753 m!1085373))

(declare-fun m!1085877 () Bool)

(assert (=> b!848753 m!1085877))

(declare-fun m!1085879 () Bool)

(assert (=> b!848754 m!1085879))

(assert (=> b!848754 m!1085371))

(declare-fun m!1085881 () Bool)

(assert (=> b!848754 m!1085881))

(assert (=> b!848754 m!1085373))

(declare-fun m!1085883 () Bool)

(assert (=> b!848754 m!1085883))

(declare-fun m!1085885 () Bool)

(assert (=> d!264504 m!1085885))

(assert (=> d!264504 m!1085371))

(declare-fun m!1085887 () Bool)

(assert (=> d!264504 m!1085887))

(assert (=> d!264504 m!1085373))

(declare-fun m!1085891 () Bool)

(assert (=> d!264504 m!1085891))

(assert (=> b!848518 d!264504))

(declare-fun d!264508 () Bool)

(assert (=> d!264508 (= (list!3589 (charsOf!987 (h!14549 lt!321512))) (list!3591 (c!137815 (charsOf!987 (h!14549 lt!321512)))))))

(declare-fun bs!230774 () Bool)

(assert (= bs!230774 d!264508))

(declare-fun m!1085901 () Bool)

(assert (=> bs!230774 m!1085901))

(assert (=> b!848518 d!264508))

(declare-fun d!264510 () Bool)

(declare-fun lt!321672 () BalanceConc!6078)

(assert (=> d!264510 (= (list!3589 lt!321672) (originalCharacters!2272 (h!14549 lt!321512)))))

(assert (=> d!264510 (= lt!321672 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512)))) (value!55605 (h!14549 lt!321512))))))

(assert (=> d!264510 (= (charsOf!987 (h!14549 lt!321512)) lt!321672)))

(declare-fun b_lambda!28153 () Bool)

(assert (=> (not b_lambda!28153) (not d!264510)))

(declare-fun t!94969 () Bool)

(declare-fun tb!59195 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512))))) t!94969) tb!59195))

(declare-fun b!848760 () Bool)

(declare-fun e!558561 () Bool)

(declare-fun tp!267196 () Bool)

(assert (=> b!848760 (= e!558561 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512)))) (value!55605 (h!14549 lt!321512))))) tp!267196))))

(declare-fun result!68628 () Bool)

(assert (=> tb!59195 (= result!68628 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512)))) (value!55605 (h!14549 lt!321512)))) e!558561))))

(assert (= tb!59195 b!848760))

(declare-fun m!1085907 () Bool)

(assert (=> b!848760 m!1085907))

(declare-fun m!1085909 () Bool)

(assert (=> tb!59195 m!1085909))

(assert (=> d!264510 t!94969))

(declare-fun b_and!74099 () Bool)

(assert (= b_and!74087 (and (=> t!94969 result!68628) b_and!74099)))

(declare-fun t!94971 () Bool)

(declare-fun tb!59197 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512))))) t!94971) tb!59197))

(declare-fun result!68630 () Bool)

(assert (= result!68630 result!68628))

(assert (=> d!264510 t!94971))

(declare-fun b_and!74101 () Bool)

(assert (= b_and!74085 (and (=> t!94971 result!68630) b_and!74101)))

(declare-fun t!94973 () Bool)

(declare-fun tb!59199 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512))))) t!94973) tb!59199))

(declare-fun result!68632 () Bool)

(assert (= result!68632 result!68628))

(assert (=> d!264510 t!94973))

(declare-fun b_and!74103 () Bool)

(assert (= b_and!74079 (and (=> t!94973 result!68632) b_and!74103)))

(declare-fun t!94975 () Bool)

(declare-fun tb!59201 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512))))) t!94975) tb!59201))

(declare-fun result!68634 () Bool)

(assert (= result!68634 result!68628))

(assert (=> d!264510 t!94975))

(declare-fun b_and!74105 () Bool)

(assert (= b_and!74083 (and (=> t!94975 result!68634) b_and!74105)))

(declare-fun t!94977 () Bool)

(declare-fun tb!59203 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512))))) t!94977) tb!59203))

(declare-fun result!68636 () Bool)

(assert (= result!68636 result!68628))

(assert (=> d!264510 t!94977))

(declare-fun b_and!74107 () Bool)

(assert (= b_and!74081 (and (=> t!94977 result!68636) b_and!74107)))

(declare-fun m!1085911 () Bool)

(assert (=> d!264510 m!1085911))

(declare-fun m!1085913 () Bool)

(assert (=> d!264510 m!1085913))

(assert (=> b!848518 d!264510))

(declare-fun d!264514 () Bool)

(declare-fun c!137887 () Bool)

(assert (=> d!264514 (= c!137887 ((_ is Cons!9148) (t!94856 lt!321512)))))

(declare-fun e!558562 () List!9163)

(assert (=> d!264514 (= (printList!470 thiss!20117 (t!94856 lt!321512)) e!558562)))

(declare-fun b!848761 () Bool)

(assert (=> b!848761 (= e!558562 (++!2370 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321512)))) (printList!470 thiss!20117 (t!94856 (t!94856 lt!321512)))))))

(declare-fun b!848762 () Bool)

(assert (=> b!848762 (= e!558562 Nil!9147)))

(assert (= (and d!264514 c!137887) b!848761))

(assert (= (and d!264514 (not c!137887)) b!848762))

(declare-fun m!1085917 () Bool)

(assert (=> b!848761 m!1085917))

(assert (=> b!848761 m!1085917))

(declare-fun m!1085919 () Bool)

(assert (=> b!848761 m!1085919))

(declare-fun m!1085921 () Bool)

(assert (=> b!848761 m!1085921))

(assert (=> b!848761 m!1085919))

(assert (=> b!848761 m!1085921))

(declare-fun m!1085923 () Bool)

(assert (=> b!848761 m!1085923))

(assert (=> b!848518 d!264514))

(declare-fun d!264518 () Bool)

(declare-fun lt!321675 () Bool)

(declare-fun e!558565 () Bool)

(assert (=> d!264518 (= lt!321675 e!558565)))

(declare-fun res!388037 () Bool)

(assert (=> d!264518 (=> (not res!388037) (not e!558565))))

(assert (=> d!264518 (= res!388037 (= (list!3590 (_1!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 lt!321342)))))) (list!3590 (singletonSeq!533 (h!14549 lt!321342)))))))

(declare-fun e!558564 () Bool)

(assert (=> d!264518 (= lt!321675 e!558564)))

(declare-fun res!388039 () Bool)

(assert (=> d!264518 (=> (not res!388039) (not e!558564))))

(declare-fun lt!321674 () tuple2!10364)

(assert (=> d!264518 (= res!388039 (= (size!7627 (_1!6008 lt!321674)) 1))))

(assert (=> d!264518 (= lt!321674 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 lt!321342)))))))

(assert (=> d!264518 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264518 (= (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321342)) lt!321675)))

(declare-fun b!848764 () Bool)

(declare-fun res!388038 () Bool)

(assert (=> b!848764 (=> (not res!388038) (not e!558564))))

(assert (=> b!848764 (= res!388038 (= (apply!1867 (_1!6008 lt!321674) 0) (h!14549 lt!321342)))))

(declare-fun b!848765 () Bool)

(assert (=> b!848765 (= e!558564 (isEmpty!5405 (_2!6008 lt!321674)))))

(declare-fun b!848766 () Bool)

(assert (=> b!848766 (= e!558565 (isEmpty!5405 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 lt!321342)))))))))

(assert (= (and d!264518 res!388039) b!848764))

(assert (= (and b!848764 res!388038) b!848765))

(assert (= (and d!264518 res!388037) b!848766))

(declare-fun m!1085933 () Bool)

(assert (=> d!264518 m!1085933))

(declare-fun m!1085937 () Bool)

(assert (=> d!264518 m!1085937))

(assert (=> d!264518 m!1084857))

(declare-fun m!1085941 () Bool)

(assert (=> d!264518 m!1085941))

(assert (=> d!264518 m!1085933))

(declare-fun m!1085945 () Bool)

(assert (=> d!264518 m!1085945))

(assert (=> d!264518 m!1085941))

(declare-fun m!1085949 () Bool)

(assert (=> d!264518 m!1085949))

(assert (=> d!264518 m!1085941))

(declare-fun m!1085951 () Bool)

(assert (=> d!264518 m!1085951))

(declare-fun m!1085953 () Bool)

(assert (=> b!848764 m!1085953))

(declare-fun m!1085955 () Bool)

(assert (=> b!848765 m!1085955))

(assert (=> b!848766 m!1085941))

(assert (=> b!848766 m!1085941))

(assert (=> b!848766 m!1085933))

(assert (=> b!848766 m!1085933))

(assert (=> b!848766 m!1085937))

(declare-fun m!1085959 () Bool)

(assert (=> b!848766 m!1085959))

(assert (=> b!848202 d!264518))

(declare-fun b!848772 () Bool)

(declare-fun e!558568 () List!9163)

(assert (=> b!848772 (= e!558568 (Cons!9147 (h!14548 (list!3589 (charsOf!987 (h!14549 lt!321425)))) (++!2370 (t!94855 (list!3589 (charsOf!987 (h!14549 lt!321425)))) (printList!470 thiss!20117 (t!94856 lt!321425)))))))

(declare-fun b!848773 () Bool)

(declare-fun res!388041 () Bool)

(declare-fun e!558569 () Bool)

(assert (=> b!848773 (=> (not res!388041) (not e!558569))))

(declare-fun lt!321676 () List!9163)

(assert (=> b!848773 (= res!388041 (= (size!7625 lt!321676) (+ (size!7625 (list!3589 (charsOf!987 (h!14549 lt!321425)))) (size!7625 (printList!470 thiss!20117 (t!94856 lt!321425))))))))

(declare-fun b!848771 () Bool)

(assert (=> b!848771 (= e!558568 (printList!470 thiss!20117 (t!94856 lt!321425)))))

(declare-fun b!848774 () Bool)

(assert (=> b!848774 (= e!558569 (or (not (= (printList!470 thiss!20117 (t!94856 lt!321425)) Nil!9147)) (= lt!321676 (list!3589 (charsOf!987 (h!14549 lt!321425))))))))

(declare-fun d!264524 () Bool)

(assert (=> d!264524 e!558569))

(declare-fun res!388040 () Bool)

(assert (=> d!264524 (=> (not res!388040) (not e!558569))))

(assert (=> d!264524 (= res!388040 (= (content!1339 lt!321676) ((_ map or) (content!1339 (list!3589 (charsOf!987 (h!14549 lt!321425)))) (content!1339 (printList!470 thiss!20117 (t!94856 lt!321425))))))))

(assert (=> d!264524 (= lt!321676 e!558568)))

(declare-fun c!137890 () Bool)

(assert (=> d!264524 (= c!137890 ((_ is Nil!9147) (list!3589 (charsOf!987 (h!14549 lt!321425)))))))

(assert (=> d!264524 (= (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321425))) (printList!470 thiss!20117 (t!94856 lt!321425))) lt!321676)))

(assert (= (and d!264524 c!137890) b!848771))

(assert (= (and d!264524 (not c!137890)) b!848772))

(assert (= (and d!264524 res!388040) b!848773))

(assert (= (and b!848773 res!388041) b!848774))

(assert (=> b!848772 m!1085047))

(declare-fun m!1085967 () Bool)

(assert (=> b!848772 m!1085967))

(declare-fun m!1085969 () Bool)

(assert (=> b!848773 m!1085969))

(assert (=> b!848773 m!1085045))

(declare-fun m!1085971 () Bool)

(assert (=> b!848773 m!1085971))

(assert (=> b!848773 m!1085047))

(declare-fun m!1085973 () Bool)

(assert (=> b!848773 m!1085973))

(declare-fun m!1085975 () Bool)

(assert (=> d!264524 m!1085975))

(assert (=> d!264524 m!1085045))

(declare-fun m!1085977 () Bool)

(assert (=> d!264524 m!1085977))

(assert (=> d!264524 m!1085047))

(declare-fun m!1085979 () Bool)

(assert (=> d!264524 m!1085979))

(assert (=> b!848298 d!264524))

(declare-fun d!264528 () Bool)

(assert (=> d!264528 (= (list!3589 (charsOf!987 (h!14549 lt!321425))) (list!3591 (c!137815 (charsOf!987 (h!14549 lt!321425)))))))

(declare-fun bs!230776 () Bool)

(assert (= bs!230776 d!264528))

(declare-fun m!1085981 () Bool)

(assert (=> bs!230776 m!1085981))

(assert (=> b!848298 d!264528))

(declare-fun d!264530 () Bool)

(declare-fun lt!321677 () BalanceConc!6078)

(assert (=> d!264530 (= (list!3589 lt!321677) (originalCharacters!2272 (h!14549 lt!321425)))))

(assert (=> d!264530 (= lt!321677 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425)))) (value!55605 (h!14549 lt!321425))))))

(assert (=> d!264530 (= (charsOf!987 (h!14549 lt!321425)) lt!321677)))

(declare-fun b_lambda!28157 () Bool)

(assert (=> (not b_lambda!28157) (not d!264530)))

(declare-fun t!94989 () Bool)

(declare-fun tb!59215 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425))))) t!94989) tb!59215))

(declare-fun b!848775 () Bool)

(declare-fun e!558570 () Bool)

(declare-fun tp!267198 () Bool)

(assert (=> b!848775 (= e!558570 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425)))) (value!55605 (h!14549 lt!321425))))) tp!267198))))

(declare-fun result!68648 () Bool)

(assert (=> tb!59215 (= result!68648 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425)))) (value!55605 (h!14549 lt!321425)))) e!558570))))

(assert (= tb!59215 b!848775))

(declare-fun m!1085983 () Bool)

(assert (=> b!848775 m!1085983))

(declare-fun m!1085985 () Bool)

(assert (=> tb!59215 m!1085985))

(assert (=> d!264530 t!94989))

(declare-fun b_and!74119 () Bool)

(assert (= b_and!74105 (and (=> t!94989 result!68648) b_and!74119)))

(declare-fun tb!59217 () Bool)

(declare-fun t!94991 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425))))) t!94991) tb!59217))

(declare-fun result!68650 () Bool)

(assert (= result!68650 result!68648))

(assert (=> d!264530 t!94991))

(declare-fun b_and!74121 () Bool)

(assert (= b_and!74107 (and (=> t!94991 result!68650) b_and!74121)))

(declare-fun t!94993 () Bool)

(declare-fun tb!59219 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425))))) t!94993) tb!59219))

(declare-fun result!68652 () Bool)

(assert (= result!68652 result!68648))

(assert (=> d!264530 t!94993))

(declare-fun b_and!74123 () Bool)

(assert (= b_and!74103 (and (=> t!94993 result!68652) b_and!74123)))

(declare-fun t!94995 () Bool)

(declare-fun tb!59221 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425))))) t!94995) tb!59221))

(declare-fun result!68654 () Bool)

(assert (= result!68654 result!68648))

(assert (=> d!264530 t!94995))

(declare-fun b_and!74125 () Bool)

(assert (= b_and!74101 (and (=> t!94995 result!68654) b_and!74125)))

(declare-fun t!94997 () Bool)

(declare-fun tb!59223 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425))))) t!94997) tb!59223))

(declare-fun result!68656 () Bool)

(assert (= result!68656 result!68648))

(assert (=> d!264530 t!94997))

(declare-fun b_and!74127 () Bool)

(assert (= b_and!74099 (and (=> t!94997 result!68656) b_and!74127)))

(declare-fun m!1085987 () Bool)

(assert (=> d!264530 m!1085987))

(declare-fun m!1085989 () Bool)

(assert (=> d!264530 m!1085989))

(assert (=> b!848298 d!264530))

(declare-fun d!264532 () Bool)

(declare-fun c!137893 () Bool)

(assert (=> d!264532 (= c!137893 ((_ is Cons!9148) (t!94856 lt!321425)))))

(declare-fun e!558573 () List!9163)

(assert (=> d!264532 (= (printList!470 thiss!20117 (t!94856 lt!321425)) e!558573)))

(declare-fun b!848780 () Bool)

(assert (=> b!848780 (= e!558573 (++!2370 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321425)))) (printList!470 thiss!20117 (t!94856 (t!94856 lt!321425)))))))

(declare-fun b!848781 () Bool)

(assert (=> b!848781 (= e!558573 Nil!9147)))

(assert (= (and d!264532 c!137893) b!848780))

(assert (= (and d!264532 (not c!137893)) b!848781))

(declare-fun m!1085991 () Bool)

(assert (=> b!848780 m!1085991))

(assert (=> b!848780 m!1085991))

(declare-fun m!1085993 () Bool)

(assert (=> b!848780 m!1085993))

(declare-fun m!1085995 () Bool)

(assert (=> b!848780 m!1085995))

(assert (=> b!848780 m!1085993))

(assert (=> b!848780 m!1085995))

(declare-fun m!1085997 () Bool)

(assert (=> b!848780 m!1085997))

(assert (=> b!848298 d!264532))

(declare-fun d!264534 () Bool)

(assert (=> d!264534 true))

(declare-fun lambda!25321 () Int)

(declare-fun order!5853 () Int)

(declare-fun dynLambda!4256 (Int Int) Int)

(assert (=> d!264534 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4256 order!5853 lambda!25321))))

(assert (=> d!264534 true))

(assert (=> d!264534 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4256 order!5853 lambda!25321))))

(declare-fun Forall!407 (Int) Bool)

(assert (=> d!264534 (= (semiInverseModEq!666 (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (Forall!407 lambda!25321))))

(declare-fun bs!230777 () Bool)

(assert (= bs!230777 d!264534))

(declare-fun m!1086009 () Bool)

(assert (=> bs!230777 m!1086009))

(assert (=> d!264288 d!264534))

(declare-fun c!137896 () Bool)

(declare-fun d!264540 () Bool)

(assert (=> d!264540 (= c!137896 ((_ is Cons!9148) ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107))))))

(declare-fun e!558577 () List!9163)

(assert (=> d!264540 (= (printList!470 thiss!20117 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107))) e!558577)))

(declare-fun b!848790 () Bool)

(assert (=> b!848790 (= e!558577 (++!2370 (list!3589 (charsOf!987 (h!14549 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107))))) (printList!470 thiss!20117 (t!94856 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107))))))))

(declare-fun b!848791 () Bool)

(assert (=> b!848791 (= e!558577 Nil!9147)))

(assert (= (and d!264540 c!137896) b!848790))

(assert (= (and d!264540 (not c!137896)) b!848791))

(declare-fun m!1086011 () Bool)

(assert (=> b!848790 m!1086011))

(assert (=> b!848790 m!1086011))

(declare-fun m!1086013 () Bool)

(assert (=> b!848790 m!1086013))

(declare-fun m!1086015 () Bool)

(assert (=> b!848790 m!1086015))

(assert (=> b!848790 m!1086013))

(assert (=> b!848790 m!1086015))

(declare-fun m!1086017 () Bool)

(assert (=> b!848790 m!1086017))

(assert (=> b!848294 d!264540))

(declare-fun d!264542 () Bool)

(assert (=> d!264542 (= ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (h!14549 l!5107)) (Cons!9148 (h!14549 l!5107) ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!848294 d!264542))

(declare-fun d!264544 () Bool)

(assert (=> d!264544 (= ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297) (Cons!9148 separatorToken!297 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297)))))

(assert (=> b!848294 d!264544))

(declare-fun e!558582 () List!9163)

(declare-fun b!848795 () Bool)

(declare-fun e!558584 () Bool)

(assert (=> b!848795 (= e!558584 (= (printList!470 thiss!20117 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 l!5107)) separatorToken!297) separatorToken!297) (h!14549 (t!94856 l!5107)))) e!558582))))

(declare-fun c!137898 () Bool)

(declare-fun lt!321683 () List!9164)

(assert (=> b!848795 (= c!137898 ((_ is Cons!9148) lt!321683))))

(assert (=> b!848795 (= lt!321683 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 l!5107)) separatorToken!297) separatorToken!297) (h!14549 (t!94856 l!5107))))))

(declare-fun b!848796 () Bool)

(declare-fun res!388049 () Bool)

(declare-fun e!558585 () Bool)

(assert (=> b!848796 (=> (not res!388049) (not e!558585))))

(assert (=> b!848796 (= res!388049 e!558584)))

(declare-fun res!388047 () Bool)

(assert (=> b!848796 (=> res!388047 e!558584)))

(assert (=> b!848796 (= res!388047 (not ((_ is Cons!9148) (t!94856 l!5107))))))

(declare-fun b!848797 () Bool)

(declare-fun e!558586 () Bool)

(assert (=> b!848797 (= e!558585 e!558586)))

(declare-fun res!388050 () Bool)

(assert (=> b!848797 (=> res!388050 e!558586)))

(assert (=> b!848797 (= res!388050 (not ((_ is Cons!9148) (t!94856 l!5107))))))

(declare-fun d!264546 () Bool)

(declare-fun lt!321688 () List!9164)

(assert (=> d!264546 (= (printList!470 thiss!20117 lt!321688) (printWithSeparatorTokenList!28 thiss!20117 (t!94856 l!5107) separatorToken!297))))

(declare-fun e!558583 () List!9164)

(assert (=> d!264546 (= lt!321688 e!558583)))

(declare-fun c!137897 () Bool)

(assert (=> d!264546 (= c!137897 ((_ is Cons!9148) (t!94856 l!5107)))))

(assert (=> d!264546 e!558585))

(declare-fun res!388048 () Bool)

(assert (=> d!264546 (=> (not res!388048) (not e!558585))))

(assert (=> d!264546 (= res!388048 (isSeparator!1716 (rule!3139 separatorToken!297)))))

(assert (=> d!264546 (= (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) lt!321688)))

(declare-fun b!848798 () Bool)

(declare-fun e!558581 () List!9163)

(assert (=> b!848798 (= e!558581 Nil!9147)))

(declare-fun b!848799 () Bool)

(assert (=> b!848799 (= e!558582 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321683))) (printList!470 thiss!20117 (t!94856 lt!321683))))))

(declare-fun b!848800 () Bool)

(declare-fun lt!321685 () List!9164)

(assert (=> b!848800 (= e!558581 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321685))) (printList!470 thiss!20117 (t!94856 lt!321685))))))

(declare-fun b!848801 () Bool)

(assert (=> b!848801 (= e!558586 (= (printList!470 thiss!20117 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 l!5107)) separatorToken!297) separatorToken!297)) e!558581))))

(declare-fun c!137899 () Bool)

(assert (=> b!848801 (= c!137899 ((_ is Cons!9148) lt!321685))))

(assert (=> b!848801 (= lt!321685 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!848802 () Bool)

(assert (=> b!848802 (= e!558583 Nil!9148)))

(declare-fun b!848803 () Bool)

(assert (=> b!848803 (= e!558583 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 l!5107)) separatorToken!297) separatorToken!297) (h!14549 (t!94856 l!5107))))))

(declare-fun lt!321682 () List!9163)

(assert (=> b!848803 (= lt!321682 (list!3589 (charsOf!987 (h!14549 (t!94856 l!5107)))))))

(declare-fun lt!321684 () List!9163)

(assert (=> b!848803 (= lt!321684 (list!3589 (charsOf!987 separatorToken!297)))))

(declare-fun lt!321687 () List!9163)

(assert (=> b!848803 (= lt!321687 (printList!470 thiss!20117 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 l!5107)) separatorToken!297)))))

(declare-fun lt!321686 () Unit!13623)

(assert (=> b!848803 (= lt!321686 (lemmaConcatAssociativity!745 lt!321682 lt!321684 lt!321687))))

(assert (=> b!848803 (= (++!2370 (++!2370 lt!321682 lt!321684) lt!321687) (++!2370 lt!321682 (++!2370 lt!321684 lt!321687)))))

(declare-fun lt!321681 () Unit!13623)

(assert (=> b!848803 (= lt!321681 lt!321686)))

(declare-fun b!848804 () Bool)

(assert (=> b!848804 (= e!558582 Nil!9147)))

(assert (= (and d!264546 res!388048) b!848796))

(assert (= (and b!848796 (not res!388047)) b!848795))

(assert (= (and b!848795 c!137898) b!848799))

(assert (= (and b!848795 (not c!137898)) b!848804))

(assert (= (and b!848796 res!388049) b!848797))

(assert (= (and b!848797 (not res!388050)) b!848801))

(assert (= (and b!848801 c!137899) b!848800))

(assert (= (and b!848801 (not c!137899)) b!848798))

(assert (= (and d!264546 c!137897) b!848803))

(assert (= (and d!264546 (not c!137897)) b!848802))

(declare-fun m!1086037 () Bool)

(assert (=> d!264546 m!1086037))

(declare-fun m!1086039 () Bool)

(assert (=> d!264546 m!1086039))

(declare-fun m!1086041 () Bool)

(assert (=> b!848803 m!1086041))

(assert (=> b!848803 m!1085017))

(declare-fun m!1086045 () Bool)

(assert (=> b!848803 m!1086045))

(declare-fun m!1086049 () Bool)

(assert (=> b!848803 m!1086049))

(declare-fun m!1086053 () Bool)

(assert (=> b!848803 m!1086053))

(declare-fun m!1086055 () Bool)

(assert (=> b!848803 m!1086055))

(declare-fun m!1086057 () Bool)

(assert (=> b!848803 m!1086057))

(declare-fun m!1086061 () Bool)

(assert (=> b!848803 m!1086061))

(declare-fun m!1086063 () Bool)

(assert (=> b!848803 m!1086063))

(declare-fun m!1086065 () Bool)

(assert (=> b!848803 m!1086065))

(assert (=> b!848803 m!1086057))

(assert (=> b!848803 m!1086053))

(assert (=> b!848803 m!1085017))

(assert (=> b!848803 m!1085035))

(assert (=> b!848803 m!1086065))

(declare-fun m!1086067 () Bool)

(assert (=> b!848803 m!1086067))

(assert (=> b!848803 m!1086041))

(declare-fun m!1086069 () Bool)

(assert (=> b!848803 m!1086069))

(assert (=> b!848803 m!1086057))

(assert (=> b!848803 m!1086045))

(assert (=> b!848795 m!1086057))

(assert (=> b!848795 m!1086057))

(assert (=> b!848795 m!1086053))

(assert (=> b!848795 m!1086053))

(assert (=> b!848795 m!1086055))

(assert (=> b!848795 m!1086055))

(declare-fun m!1086071 () Bool)

(assert (=> b!848795 m!1086071))

(declare-fun m!1086073 () Bool)

(assert (=> b!848799 m!1086073))

(assert (=> b!848799 m!1086073))

(declare-fun m!1086075 () Bool)

(assert (=> b!848799 m!1086075))

(declare-fun m!1086077 () Bool)

(assert (=> b!848799 m!1086077))

(assert (=> b!848799 m!1086075))

(assert (=> b!848799 m!1086077))

(declare-fun m!1086079 () Bool)

(assert (=> b!848799 m!1086079))

(declare-fun m!1086081 () Bool)

(assert (=> b!848800 m!1086081))

(assert (=> b!848800 m!1086081))

(declare-fun m!1086083 () Bool)

(assert (=> b!848800 m!1086083))

(declare-fun m!1086085 () Bool)

(assert (=> b!848800 m!1086085))

(assert (=> b!848800 m!1086083))

(assert (=> b!848800 m!1086085))

(declare-fun m!1086087 () Bool)

(assert (=> b!848800 m!1086087))

(assert (=> b!848801 m!1086057))

(assert (=> b!848801 m!1086057))

(assert (=> b!848801 m!1086053))

(assert (=> b!848801 m!1086053))

(declare-fun m!1086089 () Bool)

(assert (=> b!848801 m!1086089))

(assert (=> b!848294 d!264546))

(declare-fun d!264558 () Bool)

(declare-fun charsToBigInt!0 (List!9162 Int) Int)

(assert (=> d!264558 (= (inv!15 (value!55605 separatorToken!297)) (= (charsToBigInt!0 (text!12923 (value!55605 separatorToken!297)) 0) (value!55600 (value!55605 separatorToken!297))))))

(declare-fun bs!230778 () Bool)

(assert (= bs!230778 d!264558))

(declare-fun m!1086135 () Bool)

(assert (=> bs!230778 m!1086135))

(assert (=> b!848526 d!264558))

(declare-fun d!264562 () Bool)

(declare-fun c!137909 () Bool)

(assert (=> d!264562 (= c!137909 ((_ is Node!3032) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))))))

(declare-fun e!558602 () Bool)

(assert (=> d!264562 (= (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))) e!558602)))

(declare-fun b!848831 () Bool)

(declare-fun inv!11635 (Conc!3032) Bool)

(assert (=> b!848831 (= e!558602 (inv!11635 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))))))

(declare-fun b!848832 () Bool)

(declare-fun e!558603 () Bool)

(assert (=> b!848832 (= e!558602 e!558603)))

(declare-fun res!388059 () Bool)

(assert (=> b!848832 (= res!388059 (not ((_ is Leaf!4478) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))))))))

(assert (=> b!848832 (=> res!388059 e!558603)))

(declare-fun b!848833 () Bool)

(declare-fun inv!11636 (Conc!3032) Bool)

(assert (=> b!848833 (= e!558603 (inv!11636 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))))))

(assert (= (and d!264562 c!137909) b!848831))

(assert (= (and d!264562 (not c!137909)) b!848832))

(assert (= (and b!848832 (not res!388059)) b!848833))

(declare-fun m!1086145 () Bool)

(assert (=> b!848831 m!1086145))

(declare-fun m!1086147 () Bool)

(assert (=> b!848833 m!1086147))

(assert (=> b!848530 d!264562))

(assert (=> b!848239 d!264356))

(declare-fun c!137910 () Bool)

(declare-fun d!264568 () Bool)

(assert (=> d!264568 (= c!137910 ((_ is Cons!9148) (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297)))))

(declare-fun e!558604 () List!9163)

(assert (=> d!264568 (= (printList!470 thiss!20117 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297)) e!558604)))

(declare-fun b!848834 () Bool)

(assert (=> b!848834 (= e!558604 (++!2370 (list!3589 (charsOf!987 (h!14549 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297)))) (printList!470 thiss!20117 (t!94856 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297)))))))

(declare-fun b!848835 () Bool)

(assert (=> b!848835 (= e!558604 Nil!9147)))

(assert (= (and d!264568 c!137910) b!848834))

(assert (= (and d!264568 (not c!137910)) b!848835))

(declare-fun m!1086163 () Bool)

(assert (=> b!848834 m!1086163))

(assert (=> b!848834 m!1086163))

(declare-fun m!1086165 () Bool)

(assert (=> b!848834 m!1086165))

(declare-fun m!1086169 () Bool)

(assert (=> b!848834 m!1086169))

(assert (=> b!848834 m!1086165))

(assert (=> b!848834 m!1086169))

(declare-fun m!1086171 () Bool)

(assert (=> b!848834 m!1086171))

(assert (=> b!848302 d!264568))

(declare-fun d!264574 () Bool)

(assert (=> d!264574 (= (++!2370 (++!2370 lt!321424 lt!321426) lt!321429) (++!2370 lt!321424 (++!2370 lt!321426 lt!321429)))))

(declare-fun lt!321704 () Unit!13623)

(declare-fun choose!5012 (List!9163 List!9163 List!9163) Unit!13623)

(assert (=> d!264574 (= lt!321704 (choose!5012 lt!321424 lt!321426 lt!321429))))

(assert (=> d!264574 (= (lemmaConcatAssociativity!745 lt!321424 lt!321426 lt!321429) lt!321704)))

(declare-fun bs!230782 () Bool)

(assert (= bs!230782 d!264574))

(assert (=> bs!230782 m!1085033))

(assert (=> bs!230782 m!1085019))

(assert (=> bs!230782 m!1085033))

(assert (=> bs!230782 m!1085037))

(assert (=> bs!230782 m!1085019))

(assert (=> bs!230782 m!1085021))

(declare-fun m!1086189 () Bool)

(assert (=> bs!230782 m!1086189))

(assert (=> b!848302 d!264574))

(declare-fun d!264580 () Bool)

(declare-fun lt!321707 () BalanceConc!6078)

(assert (=> d!264580 (= (list!3589 lt!321707) (originalCharacters!2272 separatorToken!297))))

(assert (=> d!264580 (= lt!321707 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))))

(assert (=> d!264580 (= (charsOf!987 separatorToken!297) lt!321707)))

(declare-fun b_lambda!28163 () Bool)

(assert (=> (not b_lambda!28163) (not d!264580)))

(assert (=> d!264580 t!94912))

(declare-fun b_and!74139 () Bool)

(assert (= b_and!74127 (and (=> t!94912 result!68574) b_and!74139)))

(assert (=> d!264580 t!94902))

(declare-fun b_and!74141 () Bool)

(assert (= b_and!74123 (and (=> t!94902 result!68558) b_and!74141)))

(assert (=> d!264580 t!94900))

(declare-fun b_and!74143 () Bool)

(assert (= b_and!74119 (and (=> t!94900 result!68556) b_and!74143)))

(assert (=> d!264580 t!94904))

(declare-fun b_and!74145 () Bool)

(assert (= b_and!74121 (and (=> t!94904 result!68560) b_and!74145)))

(assert (=> d!264580 t!94908))

(declare-fun b_and!74147 () Bool)

(assert (= b_and!74125 (and (=> t!94908 result!68568) b_and!74147)))

(declare-fun m!1086191 () Bool)

(assert (=> d!264580 m!1086191))

(assert (=> d!264580 m!1085391))

(assert (=> b!848302 d!264580))

(declare-fun b!848844 () Bool)

(declare-fun e!558609 () List!9163)

(assert (=> b!848844 (= e!558609 (Cons!9147 (h!14548 lt!321424) (++!2370 (t!94855 lt!321424) (++!2370 lt!321426 lt!321429))))))

(declare-fun b!848845 () Bool)

(declare-fun res!388061 () Bool)

(declare-fun e!558610 () Bool)

(assert (=> b!848845 (=> (not res!388061) (not e!558610))))

(declare-fun lt!321708 () List!9163)

(assert (=> b!848845 (= res!388061 (= (size!7625 lt!321708) (+ (size!7625 lt!321424) (size!7625 (++!2370 lt!321426 lt!321429)))))))

(declare-fun b!848843 () Bool)

(assert (=> b!848843 (= e!558609 (++!2370 lt!321426 lt!321429))))

(declare-fun b!848846 () Bool)

(assert (=> b!848846 (= e!558610 (or (not (= (++!2370 lt!321426 lt!321429) Nil!9147)) (= lt!321708 lt!321424)))))

(declare-fun d!264582 () Bool)

(assert (=> d!264582 e!558610))

(declare-fun res!388060 () Bool)

(assert (=> d!264582 (=> (not res!388060) (not e!558610))))

(assert (=> d!264582 (= res!388060 (= (content!1339 lt!321708) ((_ map or) (content!1339 lt!321424) (content!1339 (++!2370 lt!321426 lt!321429)))))))

(assert (=> d!264582 (= lt!321708 e!558609)))

(declare-fun c!137914 () Bool)

(assert (=> d!264582 (= c!137914 ((_ is Nil!9147) lt!321424))))

(assert (=> d!264582 (= (++!2370 lt!321424 (++!2370 lt!321426 lt!321429)) lt!321708)))

(assert (= (and d!264582 c!137914) b!848843))

(assert (= (and d!264582 (not c!137914)) b!848844))

(assert (= (and d!264582 res!388060) b!848845))

(assert (= (and b!848845 res!388061) b!848846))

(assert (=> b!848844 m!1085033))

(declare-fun m!1086195 () Bool)

(assert (=> b!848844 m!1086195))

(declare-fun m!1086197 () Bool)

(assert (=> b!848845 m!1086197))

(declare-fun m!1086199 () Bool)

(assert (=> b!848845 m!1086199))

(assert (=> b!848845 m!1085033))

(declare-fun m!1086201 () Bool)

(assert (=> b!848845 m!1086201))

(declare-fun m!1086203 () Bool)

(assert (=> d!264582 m!1086203))

(declare-fun m!1086205 () Bool)

(assert (=> d!264582 m!1086205))

(assert (=> d!264582 m!1085033))

(declare-fun m!1086207 () Bool)

(assert (=> d!264582 m!1086207))

(assert (=> b!848302 d!264582))

(declare-fun d!264586 () Bool)

(assert (=> d!264586 (= (list!3589 (charsOf!987 separatorToken!297)) (list!3591 (c!137815 (charsOf!987 separatorToken!297))))))

(declare-fun bs!230783 () Bool)

(assert (= bs!230783 d!264586))

(declare-fun m!1086209 () Bool)

(assert (=> bs!230783 m!1086209))

(assert (=> b!848302 d!264586))

(declare-fun d!264588 () Bool)

(assert (=> d!264588 (= (list!3589 (charsOf!987 (h!14549 l!5107))) (list!3591 (c!137815 (charsOf!987 (h!14549 l!5107)))))))

(declare-fun bs!230784 () Bool)

(assert (= bs!230784 d!264588))

(declare-fun m!1086211 () Bool)

(assert (=> bs!230784 m!1086211))

(assert (=> b!848302 d!264588))

(assert (=> b!848302 d!264542))

(declare-fun d!264590 () Bool)

(declare-fun lt!321711 () BalanceConc!6078)

(assert (=> d!264590 (= (list!3589 lt!321711) (originalCharacters!2272 (h!14549 l!5107)))))

(assert (=> d!264590 (= lt!321711 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))))

(assert (=> d!264590 (= (charsOf!987 (h!14549 l!5107)) lt!321711)))

(declare-fun b_lambda!28165 () Bool)

(assert (=> (not b_lambda!28165) (not d!264590)))

(assert (=> d!264590 t!94863))

(declare-fun b_and!74149 () Bool)

(assert (= b_and!74143 (and (=> t!94863 result!68518) b_and!74149)))

(assert (=> d!264590 t!94867))

(declare-fun b_and!74151 () Bool)

(assert (= b_and!74145 (and (=> t!94867 result!68524) b_and!74151)))

(assert (=> d!264590 t!94865))

(declare-fun b_and!74153 () Bool)

(assert (= b_and!74141 (and (=> t!94865 result!68522) b_and!74153)))

(assert (=> d!264590 t!94910))

(declare-fun b_and!74155 () Bool)

(assert (= b_and!74139 (and (=> t!94910 result!68572) b_and!74155)))

(assert (=> d!264590 t!94906))

(declare-fun b_and!74157 () Bool)

(assert (= b_and!74147 (and (=> t!94906 result!68566) b_and!74157)))

(declare-fun m!1086213 () Bool)

(assert (=> d!264590 m!1086213))

(assert (=> d!264590 m!1084963))

(assert (=> b!848302 d!264590))

(declare-fun b!848855 () Bool)

(declare-fun e!558617 () List!9163)

(assert (=> b!848855 (= e!558617 (Cons!9147 (h!14548 lt!321426) (++!2370 (t!94855 lt!321426) lt!321429)))))

(declare-fun b!848856 () Bool)

(declare-fun res!388065 () Bool)

(declare-fun e!558618 () Bool)

(assert (=> b!848856 (=> (not res!388065) (not e!558618))))

(declare-fun lt!321712 () List!9163)

(assert (=> b!848856 (= res!388065 (= (size!7625 lt!321712) (+ (size!7625 lt!321426) (size!7625 lt!321429))))))

(declare-fun b!848854 () Bool)

(assert (=> b!848854 (= e!558617 lt!321429)))

(declare-fun b!848857 () Bool)

(assert (=> b!848857 (= e!558618 (or (not (= lt!321429 Nil!9147)) (= lt!321712 lt!321426)))))

(declare-fun d!264592 () Bool)

(assert (=> d!264592 e!558618))

(declare-fun res!388064 () Bool)

(assert (=> d!264592 (=> (not res!388064) (not e!558618))))

(assert (=> d!264592 (= res!388064 (= (content!1339 lt!321712) ((_ map or) (content!1339 lt!321426) (content!1339 lt!321429))))))

(assert (=> d!264592 (= lt!321712 e!558617)))

(declare-fun c!137916 () Bool)

(assert (=> d!264592 (= c!137916 ((_ is Nil!9147) lt!321426))))

(assert (=> d!264592 (= (++!2370 lt!321426 lt!321429) lt!321712)))

(assert (= (and d!264592 c!137916) b!848854))

(assert (= (and d!264592 (not c!137916)) b!848855))

(assert (= (and d!264592 res!388064) b!848856))

(assert (= (and b!848856 res!388065) b!848857))

(declare-fun m!1086215 () Bool)

(assert (=> b!848855 m!1086215))

(declare-fun m!1086217 () Bool)

(assert (=> b!848856 m!1086217))

(declare-fun m!1086219 () Bool)

(assert (=> b!848856 m!1086219))

(declare-fun m!1086221 () Bool)

(assert (=> b!848856 m!1086221))

(declare-fun m!1086223 () Bool)

(assert (=> d!264592 m!1086223))

(declare-fun m!1086225 () Bool)

(assert (=> d!264592 m!1086225))

(declare-fun m!1086227 () Bool)

(assert (=> d!264592 m!1086227))

(assert (=> b!848302 d!264592))

(assert (=> b!848302 d!264544))

(assert (=> b!848302 d!264546))

(declare-fun b!848859 () Bool)

(declare-fun e!558619 () List!9163)

(assert (=> b!848859 (= e!558619 (Cons!9147 (h!14548 lt!321424) (++!2370 (t!94855 lt!321424) lt!321426)))))

(declare-fun b!848860 () Bool)

(declare-fun res!388067 () Bool)

(declare-fun e!558620 () Bool)

(assert (=> b!848860 (=> (not res!388067) (not e!558620))))

(declare-fun lt!321713 () List!9163)

(assert (=> b!848860 (= res!388067 (= (size!7625 lt!321713) (+ (size!7625 lt!321424) (size!7625 lt!321426))))))

(declare-fun b!848858 () Bool)

(assert (=> b!848858 (= e!558619 lt!321426)))

(declare-fun b!848861 () Bool)

(assert (=> b!848861 (= e!558620 (or (not (= lt!321426 Nil!9147)) (= lt!321713 lt!321424)))))

(declare-fun d!264594 () Bool)

(assert (=> d!264594 e!558620))

(declare-fun res!388066 () Bool)

(assert (=> d!264594 (=> (not res!388066) (not e!558620))))

(assert (=> d!264594 (= res!388066 (= (content!1339 lt!321713) ((_ map or) (content!1339 lt!321424) (content!1339 lt!321426))))))

(assert (=> d!264594 (= lt!321713 e!558619)))

(declare-fun c!137917 () Bool)

(assert (=> d!264594 (= c!137917 ((_ is Nil!9147) lt!321424))))

(assert (=> d!264594 (= (++!2370 lt!321424 lt!321426) lt!321713)))

(assert (= (and d!264594 c!137917) b!848858))

(assert (= (and d!264594 (not c!137917)) b!848859))

(assert (= (and d!264594 res!388066) b!848860))

(assert (= (and b!848860 res!388067) b!848861))

(declare-fun m!1086235 () Bool)

(assert (=> b!848859 m!1086235))

(declare-fun m!1086237 () Bool)

(assert (=> b!848860 m!1086237))

(assert (=> b!848860 m!1086199))

(assert (=> b!848860 m!1086219))

(declare-fun m!1086239 () Bool)

(assert (=> d!264594 m!1086239))

(assert (=> d!264594 m!1086205))

(assert (=> d!264594 m!1086225))

(assert (=> b!848302 d!264594))

(declare-fun b!848863 () Bool)

(declare-fun e!558621 () List!9163)

(assert (=> b!848863 (= e!558621 (Cons!9147 (h!14548 (++!2370 lt!321424 lt!321426)) (++!2370 (t!94855 (++!2370 lt!321424 lt!321426)) lt!321429)))))

(declare-fun b!848864 () Bool)

(declare-fun res!388069 () Bool)

(declare-fun e!558622 () Bool)

(assert (=> b!848864 (=> (not res!388069) (not e!558622))))

(declare-fun lt!321714 () List!9163)

(assert (=> b!848864 (= res!388069 (= (size!7625 lt!321714) (+ (size!7625 (++!2370 lt!321424 lt!321426)) (size!7625 lt!321429))))))

(declare-fun b!848862 () Bool)

(assert (=> b!848862 (= e!558621 lt!321429)))

(declare-fun b!848865 () Bool)

(assert (=> b!848865 (= e!558622 (or (not (= lt!321429 Nil!9147)) (= lt!321714 (++!2370 lt!321424 lt!321426))))))

(declare-fun d!264598 () Bool)

(assert (=> d!264598 e!558622))

(declare-fun res!388068 () Bool)

(assert (=> d!264598 (=> (not res!388068) (not e!558622))))

(assert (=> d!264598 (= res!388068 (= (content!1339 lt!321714) ((_ map or) (content!1339 (++!2370 lt!321424 lt!321426)) (content!1339 lt!321429))))))

(assert (=> d!264598 (= lt!321714 e!558621)))

(declare-fun c!137918 () Bool)

(assert (=> d!264598 (= c!137918 ((_ is Nil!9147) (++!2370 lt!321424 lt!321426)))))

(assert (=> d!264598 (= (++!2370 (++!2370 lt!321424 lt!321426) lt!321429) lt!321714)))

(assert (= (and d!264598 c!137918) b!848862))

(assert (= (and d!264598 (not c!137918)) b!848863))

(assert (= (and d!264598 res!388068) b!848864))

(assert (= (and b!848864 res!388069) b!848865))

(declare-fun m!1086241 () Bool)

(assert (=> b!848863 m!1086241))

(declare-fun m!1086243 () Bool)

(assert (=> b!848864 m!1086243))

(assert (=> b!848864 m!1085019))

(declare-fun m!1086245 () Bool)

(assert (=> b!848864 m!1086245))

(assert (=> b!848864 m!1086221))

(declare-fun m!1086247 () Bool)

(assert (=> d!264598 m!1086247))

(assert (=> d!264598 m!1085019))

(declare-fun m!1086249 () Bool)

(assert (=> d!264598 m!1086249))

(assert (=> d!264598 m!1086227))

(assert (=> b!848302 d!264598))

(declare-fun d!264600 () Bool)

(assert (=> d!264600 true))

(declare-fun lt!321717 () Bool)

(declare-fun rulesValidInductive!605 (LexerInterface!1518 List!9165) Bool)

(assert (=> d!264600 (= lt!321717 (rulesValidInductive!605 thiss!20117 rules!2621))))

(declare-fun lambda!25326 () Int)

(declare-fun forall!2150 (List!9165 Int) Bool)

(assert (=> d!264600 (= lt!321717 (forall!2150 rules!2621 lambda!25326))))

(assert (=> d!264600 (= (rulesValid!597 thiss!20117 rules!2621) lt!321717)))

(declare-fun bs!230794 () Bool)

(assert (= bs!230794 d!264600))

(declare-fun m!1086255 () Bool)

(assert (=> bs!230794 m!1086255))

(declare-fun m!1086257 () Bool)

(assert (=> bs!230794 m!1086257))

(assert (=> d!264350 d!264600))

(declare-fun lt!321720 () Bool)

(declare-fun d!264606 () Bool)

(assert (=> d!264606 (= lt!321720 (isEmpty!5404 (list!3589 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)))))))))

(declare-fun isEmpty!5406 (Conc!3032) Bool)

(assert (=> d!264606 (= lt!321720 (isEmpty!5406 (c!137815 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)))))))))

(assert (=> d!264606 (= (isEmpty!5405 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297))))) lt!321720)))

(declare-fun bs!230795 () Bool)

(assert (= bs!230795 d!264606))

(declare-fun m!1086259 () Bool)

(assert (=> bs!230795 m!1086259))

(assert (=> bs!230795 m!1086259))

(declare-fun m!1086261 () Bool)

(assert (=> bs!230795 m!1086261))

(declare-fun m!1086263 () Bool)

(assert (=> bs!230795 m!1086263))

(assert (=> b!848506 d!264606))

(declare-fun b!848878 () Bool)

(declare-fun lt!321729 () tuple2!10364)

(declare-fun e!558631 () Bool)

(declare-datatypes ((tuple2!10366 0))(
  ( (tuple2!10367 (_1!6009 List!9164) (_2!6009 List!9163)) )
))
(declare-fun lexList!383 (LexerInterface!1518 List!9165 List!9163) tuple2!10366)

(assert (=> b!848878 (= e!558631 (= (list!3589 (_2!6008 lt!321729)) (_2!6009 (lexList!383 thiss!20117 rules!2621 (list!3589 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)))))))))

(declare-fun e!558630 () Bool)

(declare-fun b!848879 () Bool)

(assert (=> b!848879 (= e!558630 (= (_2!6008 lt!321729) (print!551 thiss!20117 (singletonSeq!533 separatorToken!297))))))

(declare-fun b!848880 () Bool)

(declare-fun res!388076 () Bool)

(assert (=> b!848880 (=> (not res!388076) (not e!558631))))

(assert (=> b!848880 (= res!388076 (= (list!3590 (_1!6008 lt!321729)) (_1!6009 (lexList!383 thiss!20117 rules!2621 (list!3589 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)))))))))

(declare-fun b!848881 () Bool)

(declare-fun e!558629 () Bool)

(declare-fun isEmpty!5407 (BalanceConc!6080) Bool)

(assert (=> b!848881 (= e!558629 (not (isEmpty!5407 (_1!6008 lt!321729))))))

(declare-fun d!264608 () Bool)

(assert (=> d!264608 e!558631))

(declare-fun res!388078 () Bool)

(assert (=> d!264608 (=> (not res!388078) (not e!558631))))

(assert (=> d!264608 (= res!388078 e!558630)))

(declare-fun c!137921 () Bool)

(assert (=> d!264608 (= c!137921 (> (size!7627 (_1!6008 lt!321729)) 0))))

(declare-fun lexTailRecV2!290 (LexerInterface!1518 List!9165 BalanceConc!6078 BalanceConc!6078 BalanceConc!6078 BalanceConc!6080) tuple2!10364)

(assert (=> d!264608 (= lt!321729 (lexTailRecV2!290 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)) (BalanceConc!6079 Empty!3032) (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)) (BalanceConc!6081 Empty!3033)))))

(assert (=> d!264608 (= (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297))) lt!321729)))

(declare-fun b!848882 () Bool)

(assert (=> b!848882 (= e!558630 e!558629)))

(declare-fun res!388077 () Bool)

(assert (=> b!848882 (= res!388077 (< (size!7626 (_2!6008 lt!321729)) (size!7626 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)))))))

(assert (=> b!848882 (=> (not res!388077) (not e!558629))))

(assert (= (and d!264608 c!137921) b!848882))

(assert (= (and d!264608 (not c!137921)) b!848879))

(assert (= (and b!848882 res!388077) b!848881))

(assert (= (and d!264608 res!388078) b!848880))

(assert (= (and b!848880 res!388076) b!848878))

(declare-fun m!1086279 () Bool)

(assert (=> b!848882 m!1086279))

(assert (=> b!848882 m!1085311))

(declare-fun m!1086281 () Bool)

(assert (=> b!848882 m!1086281))

(declare-fun m!1086283 () Bool)

(assert (=> b!848878 m!1086283))

(assert (=> b!848878 m!1085311))

(declare-fun m!1086285 () Bool)

(assert (=> b!848878 m!1086285))

(assert (=> b!848878 m!1086285))

(declare-fun m!1086287 () Bool)

(assert (=> b!848878 m!1086287))

(declare-fun m!1086289 () Bool)

(assert (=> d!264608 m!1086289))

(assert (=> d!264608 m!1085311))

(assert (=> d!264608 m!1085311))

(declare-fun m!1086291 () Bool)

(assert (=> d!264608 m!1086291))

(declare-fun m!1086293 () Bool)

(assert (=> b!848880 m!1086293))

(assert (=> b!848880 m!1085311))

(assert (=> b!848880 m!1086285))

(assert (=> b!848880 m!1086285))

(assert (=> b!848880 m!1086287))

(declare-fun m!1086295 () Bool)

(assert (=> b!848881 m!1086295))

(assert (=> b!848506 d!264608))

(declare-fun d!264616 () Bool)

(declare-fun lt!321735 () BalanceConc!6078)

(assert (=> d!264616 (= (list!3589 lt!321735) (printList!470 thiss!20117 (list!3590 (singletonSeq!533 separatorToken!297))))))

(declare-fun printTailRec!465 (LexerInterface!1518 BalanceConc!6080 Int BalanceConc!6078) BalanceConc!6078)

(assert (=> d!264616 (= lt!321735 (printTailRec!465 thiss!20117 (singletonSeq!533 separatorToken!297) 0 (BalanceConc!6079 Empty!3032)))))

(assert (=> d!264616 (= (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)) lt!321735)))

(declare-fun bs!230800 () Bool)

(assert (= bs!230800 d!264616))

(declare-fun m!1086317 () Bool)

(assert (=> bs!230800 m!1086317))

(assert (=> bs!230800 m!1085315))

(assert (=> bs!230800 m!1085321))

(assert (=> bs!230800 m!1085321))

(declare-fun m!1086319 () Bool)

(assert (=> bs!230800 m!1086319))

(assert (=> bs!230800 m!1085315))

(declare-fun m!1086321 () Bool)

(assert (=> bs!230800 m!1086321))

(assert (=> b!848506 d!264616))

(declare-fun d!264622 () Bool)

(declare-fun e!558650 () Bool)

(assert (=> d!264622 e!558650))

(declare-fun res!388095 () Bool)

(assert (=> d!264622 (=> (not res!388095) (not e!558650))))

(declare-fun lt!321742 () BalanceConc!6080)

(assert (=> d!264622 (= res!388095 (= (list!3590 lt!321742) (Cons!9148 separatorToken!297 Nil!9148)))))

(declare-fun singleton!253 (Token!3098) BalanceConc!6080)

(assert (=> d!264622 (= lt!321742 (singleton!253 separatorToken!297))))

(assert (=> d!264622 (= (singletonSeq!533 separatorToken!297) lt!321742)))

(declare-fun b!848910 () Bool)

(assert (=> b!848910 (= e!558650 (isBalanced!822 (c!137816 lt!321742)))))

(assert (= (and d!264622 res!388095) b!848910))

(declare-fun m!1086343 () Bool)

(assert (=> d!264622 m!1086343))

(declare-fun m!1086347 () Bool)

(assert (=> d!264622 m!1086347))

(declare-fun m!1086349 () Bool)

(assert (=> b!848910 m!1086349))

(assert (=> b!848506 d!264622))

(declare-fun d!264630 () Bool)

(declare-fun lt!321747 () Int)

(assert (=> d!264630 (>= lt!321747 0)))

(declare-fun e!558653 () Int)

(assert (=> d!264630 (= lt!321747 e!558653)))

(declare-fun c!137929 () Bool)

(assert (=> d!264630 (= c!137929 ((_ is Nil!9147) (originalCharacters!2272 (h!14549 l!5107))))))

(assert (=> d!264630 (= (size!7625 (originalCharacters!2272 (h!14549 l!5107))) lt!321747)))

(declare-fun b!848915 () Bool)

(assert (=> b!848915 (= e!558653 0)))

(declare-fun b!848916 () Bool)

(assert (=> b!848916 (= e!558653 (+ 1 (size!7625 (t!94855 (originalCharacters!2272 (h!14549 l!5107))))))))

(assert (= (and d!264630 c!137929) b!848915))

(assert (= (and d!264630 (not c!137929)) b!848916))

(declare-fun m!1086357 () Bool)

(assert (=> b!848916 m!1086357))

(assert (=> b!848250 d!264630))

(declare-fun d!264634 () Bool)

(declare-fun res!388096 () Bool)

(declare-fun e!558654 () Bool)

(assert (=> d!264634 (=> res!388096 e!558654)))

(assert (=> d!264634 (= res!388096 ((_ is Nil!9148) l!5107))))

(assert (=> d!264634 (= (forall!2145 l!5107 lambda!25288) e!558654)))

(declare-fun b!848917 () Bool)

(declare-fun e!558655 () Bool)

(assert (=> b!848917 (= e!558654 e!558655)))

(declare-fun res!388097 () Bool)

(assert (=> b!848917 (=> (not res!388097) (not e!558655))))

(assert (=> b!848917 (= res!388097 (dynLambda!4253 lambda!25288 (h!14549 l!5107)))))

(declare-fun b!848918 () Bool)

(assert (=> b!848918 (= e!558655 (forall!2145 (t!94856 l!5107) lambda!25288))))

(assert (= (and d!264634 (not res!388096)) b!848917))

(assert (= (and b!848917 res!388097) b!848918))

(declare-fun b_lambda!28169 () Bool)

(assert (=> (not b_lambda!28169) (not b!848917)))

(declare-fun m!1086361 () Bool)

(assert (=> b!848917 m!1086361))

(declare-fun m!1086363 () Bool)

(assert (=> b!848918 m!1086363))

(assert (=> d!264318 d!264634))

(assert (=> d!264318 d!264242))

(declare-fun d!264638 () Bool)

(declare-fun c!137936 () Bool)

(assert (=> d!264638 (= c!137936 (and ((_ is Cons!9149) rules!2621) (not (= (isSeparator!1716 (h!14550 rules!2621)) (isSeparator!1716 (h!14550 rules!2621))))))))

(declare-fun e!558674 () Bool)

(assert (=> d!264638 (= (ruleDisjointCharsFromAllFromOtherType!233 (h!14550 rules!2621) rules!2621) e!558674)))

(declare-fun b!848945 () Bool)

(declare-fun e!558673 () Bool)

(declare-fun call!50492 () Bool)

(assert (=> b!848945 (= e!558673 call!50492)))

(declare-fun bm!50487 () Bool)

(assert (=> bm!50487 (= call!50492 (ruleDisjointCharsFromAllFromOtherType!233 (h!14550 rules!2621) (t!94857 rules!2621)))))

(declare-fun b!848946 () Bool)

(declare-fun e!558672 () Bool)

(assert (=> b!848946 (= e!558674 e!558672)))

(declare-fun res!388112 () Bool)

(assert (=> b!848946 (= res!388112 (not ((_ is Cons!9149) rules!2621)))))

(assert (=> b!848946 (=> res!388112 e!558672)))

(declare-fun b!848947 () Bool)

(assert (=> b!848947 (= e!558674 e!558673)))

(declare-fun res!388113 () Bool)

(declare-fun rulesUseDisjointChars!113 (Rule!3232 Rule!3232) Bool)

(assert (=> b!848947 (= res!388113 (rulesUseDisjointChars!113 (h!14550 rules!2621) (h!14550 rules!2621)))))

(assert (=> b!848947 (=> (not res!388113) (not e!558673))))

(declare-fun b!848948 () Bool)

(assert (=> b!848948 (= e!558672 call!50492)))

(assert (= (and d!264638 c!137936) b!848947))

(assert (= (and d!264638 (not c!137936)) b!848946))

(assert (= (and b!848947 res!388113) b!848945))

(assert (= (and b!848946 (not res!388112)) b!848948))

(assert (= (or b!848945 b!848948) bm!50487))

(declare-fun m!1086425 () Bool)

(assert (=> bm!50487 m!1086425))

(declare-fun m!1086427 () Bool)

(assert (=> b!848947 m!1086427))

(assert (=> b!848511 d!264638))

(declare-fun d!264666 () Bool)

(declare-fun res!388114 () Bool)

(declare-fun e!558675 () Bool)

(assert (=> d!264666 (=> (not res!388114) (not e!558675))))

(assert (=> d!264666 (= res!388114 (not (isEmpty!5404 (originalCharacters!2272 (h!14549 (t!94856 l!5107))))))))

(assert (=> d!264666 (= (inv!11627 (h!14549 (t!94856 l!5107))) e!558675)))

(declare-fun b!848949 () Bool)

(declare-fun res!388115 () Bool)

(assert (=> b!848949 (=> (not res!388115) (not e!558675))))

(assert (=> b!848949 (= res!388115 (= (originalCharacters!2272 (h!14549 (t!94856 l!5107))) (list!3589 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (value!55605 (h!14549 (t!94856 l!5107)))))))))

(declare-fun b!848950 () Bool)

(assert (=> b!848950 (= e!558675 (= (size!7621 (h!14549 (t!94856 l!5107))) (size!7625 (originalCharacters!2272 (h!14549 (t!94856 l!5107))))))))

(assert (= (and d!264666 res!388114) b!848949))

(assert (= (and b!848949 res!388115) b!848950))

(declare-fun b_lambda!28175 () Bool)

(assert (=> (not b_lambda!28175) (not b!848949)))

(declare-fun tb!59245 () Bool)

(declare-fun t!95022 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) t!95022) tb!59245))

(declare-fun b!848951 () Bool)

(declare-fun e!558676 () Bool)

(declare-fun tp!267201 () Bool)

(assert (=> b!848951 (= e!558676 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (value!55605 (h!14549 (t!94856 l!5107)))))) tp!267201))))

(declare-fun result!68678 () Bool)

(assert (=> tb!59245 (= result!68678 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (value!55605 (h!14549 (t!94856 l!5107))))) e!558676))))

(assert (= tb!59245 b!848951))

(declare-fun m!1086429 () Bool)

(assert (=> b!848951 m!1086429))

(declare-fun m!1086431 () Bool)

(assert (=> tb!59245 m!1086431))

(assert (=> b!848949 t!95022))

(declare-fun b_and!74189 () Bool)

(assert (= b_and!74155 (and (=> t!95022 result!68678) b_and!74189)))

(declare-fun t!95024 () Bool)

(declare-fun tb!59247 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) t!95024) tb!59247))

(declare-fun result!68680 () Bool)

(assert (= result!68680 result!68678))

(assert (=> b!848949 t!95024))

(declare-fun b_and!74191 () Bool)

(assert (= b_and!74157 (and (=> t!95024 result!68680) b_and!74191)))

(declare-fun t!95026 () Bool)

(declare-fun tb!59249 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) t!95026) tb!59249))

(declare-fun result!68682 () Bool)

(assert (= result!68682 result!68678))

(assert (=> b!848949 t!95026))

(declare-fun b_and!74193 () Bool)

(assert (= b_and!74149 (and (=> t!95026 result!68682) b_and!74193)))

(declare-fun t!95028 () Bool)

(declare-fun tb!59251 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) t!95028) tb!59251))

(declare-fun result!68684 () Bool)

(assert (= result!68684 result!68678))

(assert (=> b!848949 t!95028))

(declare-fun b_and!74195 () Bool)

(assert (= b_and!74151 (and (=> t!95028 result!68684) b_and!74195)))

(declare-fun t!95030 () Bool)

(declare-fun tb!59253 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) t!95030) tb!59253))

(declare-fun result!68686 () Bool)

(assert (= result!68686 result!68678))

(assert (=> b!848949 t!95030))

(declare-fun b_and!74197 () Bool)

(assert (= b_and!74153 (and (=> t!95030 result!68686) b_and!74197)))

(declare-fun m!1086433 () Bool)

(assert (=> d!264666 m!1086433))

(declare-fun m!1086435 () Bool)

(assert (=> b!848949 m!1086435))

(assert (=> b!848949 m!1086435))

(declare-fun m!1086437 () Bool)

(assert (=> b!848949 m!1086437))

(declare-fun m!1086439 () Bool)

(assert (=> b!848950 m!1086439))

(assert (=> b!848559 d!264666))

(assert (=> b!848237 d!264350))

(declare-fun bs!230804 () Bool)

(declare-fun d!264668 () Bool)

(assert (= bs!230804 (and d!264668 d!264392)))

(declare-fun lambda!25327 () Int)

(assert (=> bs!230804 (= (= (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))) (= lambda!25327 lambda!25303))))

(assert (=> d!264668 true))

(assert (=> d!264668 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297)))) (dynLambda!4254 order!5849 lambda!25327))))

(assert (=> d!264668 (= (equivClasses!633 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297)))) (Forall2!316 lambda!25327))))

(declare-fun bs!230805 () Bool)

(assert (= bs!230805 d!264668))

(declare-fun m!1086441 () Bool)

(assert (=> bs!230805 m!1086441))

(assert (=> b!848256 d!264668))

(declare-fun d!264670 () Bool)

(declare-fun c!137939 () Bool)

(assert (=> d!264670 (= c!137939 ((_ is Cons!9148) ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!558683 () List!9163)

(assert (=> d!264670 (= (printList!470 thiss!20117 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297)) e!558683)))

(declare-fun b!848960 () Bool)

(assert (=> b!848960 (= e!558683 (++!2370 (list!3589 (charsOf!987 (h!14549 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297)))) (printList!470 thiss!20117 (t!94856 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!848961 () Bool)

(assert (=> b!848961 (= e!558683 Nil!9147)))

(assert (= (and d!264670 c!137939) b!848960))

(assert (= (and d!264670 (not c!137939)) b!848961))

(declare-fun m!1086443 () Bool)

(assert (=> b!848960 m!1086443))

(assert (=> b!848960 m!1086443))

(declare-fun m!1086445 () Bool)

(assert (=> b!848960 m!1086445))

(declare-fun m!1086447 () Bool)

(assert (=> b!848960 m!1086447))

(assert (=> b!848960 m!1086445))

(assert (=> b!848960 m!1086447))

(declare-fun m!1086449 () Bool)

(assert (=> b!848960 m!1086449))

(assert (=> b!848300 d!264670))

(assert (=> b!848300 d!264544))

(assert (=> b!848300 d!264546))

(declare-fun d!264672 () Bool)

(declare-fun lt!321758 () Token!3098)

(declare-fun apply!1872 (List!9164 Int) Token!3098)

(assert (=> d!264672 (= lt!321758 (apply!1872 (list!3590 (_1!6008 lt!321506)) 0))))

(declare-fun apply!1873 (Conc!3033 Int) Token!3098)

(assert (=> d!264672 (= lt!321758 (apply!1873 (c!137816 (_1!6008 lt!321506)) 0))))

(declare-fun e!558696 () Bool)

(assert (=> d!264672 e!558696))

(declare-fun res!388127 () Bool)

(assert (=> d!264672 (=> (not res!388127) (not e!558696))))

(assert (=> d!264672 (= res!388127 (<= 0 0))))

(assert (=> d!264672 (= (apply!1867 (_1!6008 lt!321506) 0) lt!321758)))

(declare-fun b!848976 () Bool)

(assert (=> b!848976 (= e!558696 (< 0 (size!7627 (_1!6008 lt!321506))))))

(assert (= (and d!264672 res!388127) b!848976))

(declare-fun m!1086461 () Bool)

(assert (=> d!264672 m!1086461))

(assert (=> d!264672 m!1086461))

(declare-fun m!1086465 () Bool)

(assert (=> d!264672 m!1086465))

(declare-fun m!1086467 () Bool)

(assert (=> d!264672 m!1086467))

(assert (=> b!848976 m!1085319))

(assert (=> b!848504 d!264672))

(declare-fun d!264680 () Bool)

(declare-fun c!137942 () Bool)

(assert (=> d!264680 (= c!137942 ((_ is Node!3032) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))))))

(declare-fun e!558697 () Bool)

(assert (=> d!264680 (= (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))) e!558697)))

(declare-fun b!848977 () Bool)

(assert (=> b!848977 (= e!558697 (inv!11635 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))))))

(declare-fun b!848978 () Bool)

(declare-fun e!558698 () Bool)

(assert (=> b!848978 (= e!558697 e!558698)))

(declare-fun res!388128 () Bool)

(assert (=> b!848978 (= res!388128 (not ((_ is Leaf!4478) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))))))))

(assert (=> b!848978 (=> res!388128 e!558698)))

(declare-fun b!848979 () Bool)

(assert (=> b!848979 (= e!558698 (inv!11636 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))))))

(assert (= (and d!264680 c!137942) b!848977))

(assert (= (and d!264680 (not c!137942)) b!848978))

(assert (= (and b!848978 (not res!388128)) b!848979))

(declare-fun m!1086473 () Bool)

(assert (=> b!848977 m!1086473))

(declare-fun m!1086475 () Bool)

(assert (=> b!848979 m!1086475))

(assert (=> b!848255 d!264680))

(declare-fun d!264684 () Bool)

(declare-fun lt!321760 () BalanceConc!6078)

(assert (=> d!264684 (= (list!3589 lt!321760) (originalCharacters!2272 (h!14549 (t!94856 lt!321342))))))

(assert (=> d!264684 (= lt!321760 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342))))) (value!55605 (h!14549 (t!94856 lt!321342)))))))

(assert (=> d!264684 (= (charsOf!987 (h!14549 (t!94856 lt!321342))) lt!321760)))

(declare-fun b_lambda!28177 () Bool)

(assert (=> (not b_lambda!28177) (not d!264684)))

(declare-fun t!95032 () Bool)

(declare-fun tb!59255 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342)))))) t!95032) tb!59255))

(declare-fun b!848985 () Bool)

(declare-fun e!558704 () Bool)

(declare-fun tp!267202 () Bool)

(assert (=> b!848985 (= e!558704 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342))))) (value!55605 (h!14549 (t!94856 lt!321342)))))) tp!267202))))

(declare-fun result!68688 () Bool)

(assert (=> tb!59255 (= result!68688 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342))))) (value!55605 (h!14549 (t!94856 lt!321342))))) e!558704))))

(assert (= tb!59255 b!848985))

(declare-fun m!1086477 () Bool)

(assert (=> b!848985 m!1086477))

(declare-fun m!1086479 () Bool)

(assert (=> tb!59255 m!1086479))

(assert (=> d!264684 t!95032))

(declare-fun b_and!74199 () Bool)

(assert (= b_and!74197 (and (=> t!95032 result!68688) b_and!74199)))

(declare-fun t!95034 () Bool)

(declare-fun tb!59257 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342)))))) t!95034) tb!59257))

(declare-fun result!68690 () Bool)

(assert (= result!68690 result!68688))

(assert (=> d!264684 t!95034))

(declare-fun b_and!74201 () Bool)

(assert (= b_and!74193 (and (=> t!95034 result!68690) b_and!74201)))

(declare-fun t!95036 () Bool)

(declare-fun tb!59259 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342)))))) t!95036) tb!59259))

(declare-fun result!68692 () Bool)

(assert (= result!68692 result!68688))

(assert (=> d!264684 t!95036))

(declare-fun b_and!74203 () Bool)

(assert (= b_and!74189 (and (=> t!95036 result!68692) b_and!74203)))

(declare-fun tb!59261 () Bool)

(declare-fun t!95038 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342)))))) t!95038) tb!59261))

(declare-fun result!68694 () Bool)

(assert (= result!68694 result!68688))

(assert (=> d!264684 t!95038))

(declare-fun b_and!74205 () Bool)

(assert (= b_and!74191 (and (=> t!95038 result!68694) b_and!74205)))

(declare-fun tb!59263 () Bool)

(declare-fun t!95040 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342)))))) t!95040) tb!59263))

(declare-fun result!68696 () Bool)

(assert (= result!68696 result!68688))

(assert (=> d!264684 t!95040))

(declare-fun b_and!74207 () Bool)

(assert (= b_and!74195 (and (=> t!95040 result!68696) b_and!74207)))

(declare-fun m!1086481 () Bool)

(assert (=> d!264684 m!1086481))

(declare-fun m!1086483 () Bool)

(assert (=> d!264684 m!1086483))

(assert (=> b!848386 d!264684))

(declare-fun d!264686 () Bool)

(declare-fun lt!321763 () Int)

(assert (=> d!264686 (= lt!321763 (size!7625 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321342))))))))

(declare-fun size!7629 (Conc!3032) Int)

(assert (=> d!264686 (= lt!321763 (size!7629 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321342))))))))

(assert (=> d!264686 (= (size!7626 (charsOf!987 (h!14549 (t!94856 lt!321342)))) lt!321763)))

(declare-fun bs!230822 () Bool)

(assert (= bs!230822 d!264686))

(assert (=> bs!230822 m!1085147))

(declare-fun m!1086491 () Bool)

(assert (=> bs!230822 m!1086491))

(assert (=> bs!230822 m!1086491))

(declare-fun m!1086493 () Bool)

(assert (=> bs!230822 m!1086493))

(declare-fun m!1086495 () Bool)

(assert (=> bs!230822 m!1086495))

(assert (=> b!848386 d!264686))

(declare-fun d!264690 () Bool)

(assert (=> d!264690 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 lt!321342)))))

(declare-fun lt!321778 () Unit!13623)

(declare-fun choose!5013 (LexerInterface!1518 List!9165 List!9164 Token!3098) Unit!13623)

(assert (=> d!264690 (= lt!321778 (choose!5013 thiss!20117 rules!2621 lt!321342 (h!14549 (t!94856 lt!321342))))))

(assert (=> d!264690 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264690 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 lt!321342 (h!14549 (t!94856 lt!321342))) lt!321778)))

(declare-fun bs!230852 () Bool)

(assert (= bs!230852 d!264690))

(assert (=> bs!230852 m!1085157))

(declare-fun m!1086561 () Bool)

(assert (=> bs!230852 m!1086561))

(assert (=> bs!230852 m!1084857))

(assert (=> b!848386 d!264690))

(assert (=> b!848386 d!264518))

(declare-fun d!264722 () Bool)

(assert (=> d!264722 (= (separableTokensPredicate!58 thiss!20117 (h!14549 lt!321342) (h!14549 (t!94856 lt!321342)) rules!2621) (not (prefixMatchZipperSequence!27 (rulesRegex!20 thiss!20117 rules!2621) (++!2368 (charsOf!987 (h!14549 lt!321342)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321342))) 0))))))))

(declare-fun bs!230853 () Bool)

(assert (= bs!230853 d!264722))

(assert (=> bs!230853 m!1084917))

(declare-fun m!1086563 () Bool)

(assert (=> bs!230853 m!1086563))

(declare-fun m!1086565 () Bool)

(assert (=> bs!230853 m!1086565))

(declare-fun m!1086567 () Bool)

(assert (=> bs!230853 m!1086567))

(declare-fun m!1086569 () Bool)

(assert (=> bs!230853 m!1086569))

(assert (=> bs!230853 m!1086563))

(assert (=> bs!230853 m!1085147))

(assert (=> bs!230853 m!1084917))

(declare-fun m!1086571 () Bool)

(assert (=> bs!230853 m!1086571))

(assert (=> bs!230853 m!1086569))

(assert (=> bs!230853 m!1086567))

(assert (=> bs!230853 m!1085147))

(assert (=> bs!230853 m!1086571))

(assert (=> b!848386 d!264722))

(declare-fun d!264724 () Bool)

(assert (=> d!264724 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321342))))

(declare-fun lt!321779 () Unit!13623)

(assert (=> d!264724 (= lt!321779 (choose!5013 thiss!20117 rules!2621 lt!321342 (h!14549 lt!321342)))))

(assert (=> d!264724 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264724 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 lt!321342 (h!14549 lt!321342)) lt!321779)))

(declare-fun bs!230854 () Bool)

(assert (= bs!230854 d!264724))

(assert (=> bs!230854 m!1084913))

(declare-fun m!1086573 () Bool)

(assert (=> bs!230854 m!1086573))

(assert (=> bs!230854 m!1084857))

(assert (=> b!848386 d!264724))

(declare-fun d!264726 () Bool)

(declare-fun lt!321781 () Bool)

(declare-fun e!558726 () Bool)

(assert (=> d!264726 (= lt!321781 e!558726)))

(declare-fun res!388143 () Bool)

(assert (=> d!264726 (=> (not res!388143) (not e!558726))))

(assert (=> d!264726 (= res!388143 (= (list!3590 (_1!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 (t!94856 lt!321342))))))) (list!3590 (singletonSeq!533 (h!14549 (t!94856 lt!321342))))))))

(declare-fun e!558725 () Bool)

(assert (=> d!264726 (= lt!321781 e!558725)))

(declare-fun res!388145 () Bool)

(assert (=> d!264726 (=> (not res!388145) (not e!558725))))

(declare-fun lt!321780 () tuple2!10364)

(assert (=> d!264726 (= res!388145 (= (size!7627 (_1!6008 lt!321780)) 1))))

(assert (=> d!264726 (= lt!321780 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 (t!94856 lt!321342))))))))

(assert (=> d!264726 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264726 (= (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 lt!321342))) lt!321781)))

(declare-fun b!849010 () Bool)

(declare-fun res!388144 () Bool)

(assert (=> b!849010 (=> (not res!388144) (not e!558725))))

(assert (=> b!849010 (= res!388144 (= (apply!1867 (_1!6008 lt!321780) 0) (h!14549 (t!94856 lt!321342))))))

(declare-fun b!849011 () Bool)

(assert (=> b!849011 (= e!558725 (isEmpty!5405 (_2!6008 lt!321780)))))

(declare-fun b!849012 () Bool)

(assert (=> b!849012 (= e!558726 (isEmpty!5405 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 (t!94856 lt!321342))))))))))

(assert (= (and d!264726 res!388145) b!849010))

(assert (= (and b!849010 res!388144) b!849011))

(assert (= (and d!264726 res!388143) b!849012))

(declare-fun m!1086575 () Bool)

(assert (=> d!264726 m!1086575))

(declare-fun m!1086577 () Bool)

(assert (=> d!264726 m!1086577))

(assert (=> d!264726 m!1084857))

(declare-fun m!1086579 () Bool)

(assert (=> d!264726 m!1086579))

(assert (=> d!264726 m!1086575))

(declare-fun m!1086581 () Bool)

(assert (=> d!264726 m!1086581))

(assert (=> d!264726 m!1086579))

(declare-fun m!1086583 () Bool)

(assert (=> d!264726 m!1086583))

(assert (=> d!264726 m!1086579))

(declare-fun m!1086585 () Bool)

(assert (=> d!264726 m!1086585))

(declare-fun m!1086587 () Bool)

(assert (=> b!849010 m!1086587))

(declare-fun m!1086589 () Bool)

(assert (=> b!849011 m!1086589))

(assert (=> b!849012 m!1086579))

(assert (=> b!849012 m!1086579))

(assert (=> b!849012 m!1086575))

(assert (=> b!849012 m!1086575))

(assert (=> b!849012 m!1086577))

(declare-fun m!1086591 () Bool)

(assert (=> b!849012 m!1086591))

(assert (=> b!848386 d!264726))

(declare-fun d!264728 () Bool)

(assert (=> d!264728 (= (inv!11624 (tag!1978 (rule!3139 (h!14549 (t!94856 l!5107))))) (= (mod (str.len (value!55604 (tag!1978 (rule!3139 (h!14549 (t!94856 l!5107)))))) 2) 0))))

(assert (=> b!848561 d!264728))

(declare-fun d!264730 () Bool)

(declare-fun res!388146 () Bool)

(declare-fun e!558727 () Bool)

(assert (=> d!264730 (=> (not res!388146) (not e!558727))))

(assert (=> d!264730 (= res!388146 (semiInverseModEq!666 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))))))

(assert (=> d!264730 (= (inv!11628 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) e!558727)))

(declare-fun b!849013 () Bool)

(assert (=> b!849013 (= e!558727 (equivClasses!633 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))))))

(assert (= (and d!264730 res!388146) b!849013))

(declare-fun m!1086593 () Bool)

(assert (=> d!264730 m!1086593))

(declare-fun m!1086595 () Bool)

(assert (=> b!849013 m!1086595))

(assert (=> b!848561 d!264730))

(declare-fun d!264732 () Bool)

(assert (=> d!264732 (= (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))) (isBalanced!823 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))))))

(declare-fun bs!230855 () Bool)

(assert (= bs!230855 d!264732))

(declare-fun m!1086597 () Bool)

(assert (=> bs!230855 m!1086597))

(assert (=> tb!59105 d!264732))

(declare-fun d!264734 () Bool)

(declare-fun lt!321783 () Bool)

(declare-fun e!558729 () Bool)

(assert (=> d!264734 (= lt!321783 e!558729)))

(declare-fun res!388147 () Bool)

(assert (=> d!264734 (=> (not res!388147) (not e!558729))))

(assert (=> d!264734 (= res!388147 (= (list!3590 (_1!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 l!5107)))))) (list!3590 (singletonSeq!533 (h!14549 l!5107)))))))

(declare-fun e!558728 () Bool)

(assert (=> d!264734 (= lt!321783 e!558728)))

(declare-fun res!388149 () Bool)

(assert (=> d!264734 (=> (not res!388149) (not e!558728))))

(declare-fun lt!321782 () tuple2!10364)

(assert (=> d!264734 (= res!388149 (= (size!7627 (_1!6008 lt!321782)) 1))))

(assert (=> d!264734 (= lt!321782 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 l!5107)))))))

(assert (=> d!264734 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264734 (= (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 l!5107)) lt!321783)))

(declare-fun b!849014 () Bool)

(declare-fun res!388148 () Bool)

(assert (=> b!849014 (=> (not res!388148) (not e!558728))))

(assert (=> b!849014 (= res!388148 (= (apply!1867 (_1!6008 lt!321782) 0) (h!14549 l!5107)))))

(declare-fun b!849015 () Bool)

(assert (=> b!849015 (= e!558728 (isEmpty!5405 (_2!6008 lt!321782)))))

(declare-fun b!849016 () Bool)

(assert (=> b!849016 (= e!558729 (isEmpty!5405 (_2!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 (h!14549 l!5107)))))))))

(assert (= (and d!264734 res!388149) b!849014))

(assert (= (and b!849014 res!388148) b!849015))

(assert (= (and d!264734 res!388147) b!849016))

(declare-fun m!1086599 () Bool)

(assert (=> d!264734 m!1086599))

(declare-fun m!1086601 () Bool)

(assert (=> d!264734 m!1086601))

(assert (=> d!264734 m!1084857))

(declare-fun m!1086603 () Bool)

(assert (=> d!264734 m!1086603))

(assert (=> d!264734 m!1086599))

(declare-fun m!1086605 () Bool)

(assert (=> d!264734 m!1086605))

(assert (=> d!264734 m!1086603))

(declare-fun m!1086607 () Bool)

(assert (=> d!264734 m!1086607))

(assert (=> d!264734 m!1086603))

(declare-fun m!1086609 () Bool)

(assert (=> d!264734 m!1086609))

(declare-fun m!1086611 () Bool)

(assert (=> b!849014 m!1086611))

(declare-fun m!1086613 () Bool)

(assert (=> b!849015 m!1086613))

(assert (=> b!849016 m!1086603))

(assert (=> b!849016 m!1086603))

(assert (=> b!849016 m!1086599))

(assert (=> b!849016 m!1086599))

(assert (=> b!849016 m!1086601))

(declare-fun m!1086615 () Bool)

(assert (=> b!849016 m!1086615))

(assert (=> b!848304 d!264734))

(declare-fun bs!230856 () Bool)

(declare-fun d!264736 () Bool)

(assert (= bs!230856 (and d!264736 d!264262)))

(declare-fun lambda!25336 () Int)

(assert (=> bs!230856 (= lambda!25336 lambda!25286)))

(declare-fun bs!230857 () Bool)

(assert (= bs!230857 (and d!264736 d!264296)))

(assert (=> bs!230857 (= lambda!25336 lambda!25287)))

(declare-fun bs!230858 () Bool)

(assert (= bs!230858 (and d!264736 d!264328)))

(assert (=> bs!230858 (= lambda!25336 lambda!25298)))

(declare-fun bs!230859 () Bool)

(assert (= bs!230859 (and d!264736 d!264318)))

(assert (=> bs!230859 (= lambda!25336 lambda!25288)))

(declare-fun bs!230860 () Bool)

(assert (= bs!230860 (and d!264736 b!848136)))

(assert (=> bs!230860 (not (= lambda!25336 lambda!25280))))

(declare-fun bs!230861 () Bool)

(assert (= bs!230861 (and d!264736 d!264422)))

(assert (=> bs!230861 (= lambda!25336 lambda!25305)))

(declare-fun bs!230862 () Bool)

(assert (= bs!230862 (and d!264736 d!264424)))

(assert (=> bs!230862 (= lambda!25336 lambda!25306)))

(declare-fun b!849021 () Bool)

(declare-fun e!558734 () Bool)

(assert (=> b!849021 (= e!558734 true)))

(declare-fun b!849020 () Bool)

(declare-fun e!558733 () Bool)

(assert (=> b!849020 (= e!558733 e!558734)))

(declare-fun b!849019 () Bool)

(declare-fun e!558732 () Bool)

(assert (=> b!849019 (= e!558732 e!558733)))

(assert (=> d!264736 e!558732))

(assert (= b!849020 b!849021))

(assert (= b!849019 b!849020))

(assert (= (and d!264736 ((_ is Cons!9149) rules!2621)) b!849019))

(assert (=> b!849021 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25336))))

(assert (=> b!849021 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25336))))

(assert (=> d!264736 true))

(declare-fun lt!321784 () Bool)

(assert (=> d!264736 (= lt!321784 (forall!2145 (t!94856 lt!321339) lambda!25336))))

(declare-fun e!558730 () Bool)

(assert (=> d!264736 (= lt!321784 e!558730)))

(declare-fun res!388151 () Bool)

(assert (=> d!264736 (=> res!388151 e!558730)))

(assert (=> d!264736 (= res!388151 (not ((_ is Cons!9148) (t!94856 lt!321339))))))

(assert (=> d!264736 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264736 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 lt!321339)) lt!321784)))

(declare-fun b!849017 () Bool)

(declare-fun e!558731 () Bool)

(assert (=> b!849017 (= e!558730 e!558731)))

(declare-fun res!388150 () Bool)

(assert (=> b!849017 (=> (not res!388150) (not e!558731))))

(assert (=> b!849017 (= res!388150 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 lt!321339))))))

(declare-fun b!849018 () Bool)

(assert (=> b!849018 (= e!558731 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 (t!94856 lt!321339))))))

(assert (= (and d!264736 (not res!388151)) b!849017))

(assert (= (and b!849017 res!388150) b!849018))

(declare-fun m!1086617 () Bool)

(assert (=> d!264736 m!1086617))

(assert (=> d!264736 m!1084857))

(declare-fun m!1086619 () Bool)

(assert (=> b!849017 m!1086619))

(declare-fun m!1086621 () Bool)

(assert (=> b!849018 m!1086621))

(assert (=> b!848260 d!264736))

(declare-fun bs!230863 () Bool)

(declare-fun d!264738 () Bool)

(assert (= bs!230863 (and d!264738 d!264262)))

(declare-fun lambda!25337 () Int)

(assert (=> bs!230863 (= lambda!25337 lambda!25286)))

(declare-fun bs!230864 () Bool)

(assert (= bs!230864 (and d!264738 d!264296)))

(assert (=> bs!230864 (= lambda!25337 lambda!25287)))

(declare-fun bs!230865 () Bool)

(assert (= bs!230865 (and d!264738 d!264328)))

(assert (=> bs!230865 (= lambda!25337 lambda!25298)))

(declare-fun bs!230866 () Bool)

(assert (= bs!230866 (and d!264738 d!264736)))

(assert (=> bs!230866 (= lambda!25337 lambda!25336)))

(declare-fun bs!230867 () Bool)

(assert (= bs!230867 (and d!264738 d!264318)))

(assert (=> bs!230867 (= lambda!25337 lambda!25288)))

(declare-fun bs!230868 () Bool)

(assert (= bs!230868 (and d!264738 b!848136)))

(assert (=> bs!230868 (not (= lambda!25337 lambda!25280))))

(declare-fun bs!230869 () Bool)

(assert (= bs!230869 (and d!264738 d!264422)))

(assert (=> bs!230869 (= lambda!25337 lambda!25305)))

(declare-fun bs!230870 () Bool)

(assert (= bs!230870 (and d!264738 d!264424)))

(assert (=> bs!230870 (= lambda!25337 lambda!25306)))

(declare-fun b!849026 () Bool)

(declare-fun e!558739 () Bool)

(assert (=> b!849026 (= e!558739 true)))

(declare-fun b!849025 () Bool)

(declare-fun e!558738 () Bool)

(assert (=> b!849025 (= e!558738 e!558739)))

(declare-fun b!849024 () Bool)

(declare-fun e!558737 () Bool)

(assert (=> b!849024 (= e!558737 e!558738)))

(assert (=> d!264738 e!558737))

(assert (= b!849025 b!849026))

(assert (= b!849024 b!849025))

(assert (= (and d!264738 ((_ is Cons!9149) rules!2621)) b!849024))

(assert (=> b!849026 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25337))))

(assert (=> b!849026 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25337))))

(assert (=> d!264738 true))

(declare-fun lt!321785 () Bool)

(assert (=> d!264738 (= lt!321785 (forall!2145 (list!3590 (seqFromList!1522 lt!321339)) lambda!25337))))

(declare-fun e!558735 () Bool)

(assert (=> d!264738 (= lt!321785 e!558735)))

(declare-fun res!388153 () Bool)

(assert (=> d!264738 (=> res!388153 e!558735)))

(assert (=> d!264738 (= res!388153 (not ((_ is Cons!9148) (list!3590 (seqFromList!1522 lt!321339)))))))

(assert (=> d!264738 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264738 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (list!3590 (seqFromList!1522 lt!321339))) lt!321785)))

(declare-fun b!849022 () Bool)

(declare-fun e!558736 () Bool)

(assert (=> b!849022 (= e!558735 e!558736)))

(declare-fun res!388152 () Bool)

(assert (=> b!849022 (=> (not res!388152) (not e!558736))))

(assert (=> b!849022 (= res!388152 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (list!3590 (seqFromList!1522 lt!321339)))))))

(declare-fun b!849023 () Bool)

(assert (=> b!849023 (= e!558736 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 (list!3590 (seqFromList!1522 lt!321339)))))))

(assert (= (and d!264738 (not res!388153)) b!849022))

(assert (= (and b!849022 res!388152) b!849023))

(assert (=> d!264738 m!1085099))

(declare-fun m!1086623 () Bool)

(assert (=> d!264738 m!1086623))

(assert (=> d!264738 m!1084857))

(declare-fun m!1086625 () Bool)

(assert (=> b!849022 m!1086625))

(declare-fun m!1086627 () Bool)

(assert (=> b!849023 m!1086627))

(assert (=> b!848332 d!264738))

(assert (=> b!848332 d!264462))

(declare-fun d!264740 () Bool)

(declare-fun lt!321786 () Int)

(assert (=> d!264740 (>= lt!321786 0)))

(declare-fun e!558740 () Int)

(assert (=> d!264740 (= lt!321786 e!558740)))

(declare-fun c!137945 () Bool)

(assert (=> d!264740 (= c!137945 ((_ is Nil!9147) (originalCharacters!2272 separatorToken!297)))))

(assert (=> d!264740 (= (size!7625 (originalCharacters!2272 separatorToken!297)) lt!321786)))

(declare-fun b!849027 () Bool)

(assert (=> b!849027 (= e!558740 0)))

(declare-fun b!849028 () Bool)

(assert (=> b!849028 (= e!558740 (+ 1 (size!7625 (t!94855 (originalCharacters!2272 separatorToken!297)))))))

(assert (= (and d!264740 c!137945) b!849027))

(assert (= (and d!264740 (not c!137945)) b!849028))

(declare-fun m!1086629 () Bool)

(assert (=> b!849028 m!1086629))

(assert (=> b!848529 d!264740))

(declare-fun d!264742 () Bool)

(declare-fun c!137946 () Bool)

(assert (=> d!264742 (= c!137946 ((_ is Cons!9148) lt!321430))))

(declare-fun e!558741 () List!9163)

(assert (=> d!264742 (= (printList!470 thiss!20117 lt!321430) e!558741)))

(declare-fun b!849029 () Bool)

(assert (=> b!849029 (= e!558741 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321430))) (printList!470 thiss!20117 (t!94856 lt!321430))))))

(declare-fun b!849030 () Bool)

(assert (=> b!849030 (= e!558741 Nil!9147)))

(assert (= (and d!264742 c!137946) b!849029))

(assert (= (and d!264742 (not c!137946)) b!849030))

(declare-fun m!1086631 () Bool)

(assert (=> b!849029 m!1086631))

(assert (=> b!849029 m!1086631))

(declare-fun m!1086633 () Bool)

(assert (=> b!849029 m!1086633))

(declare-fun m!1086635 () Bool)

(assert (=> b!849029 m!1086635))

(assert (=> b!849029 m!1086633))

(assert (=> b!849029 m!1086635))

(declare-fun m!1086637 () Bool)

(assert (=> b!849029 m!1086637))

(assert (=> d!264298 d!264742))

(declare-fun d!264744 () Bool)

(declare-fun c!137947 () Bool)

(assert (=> d!264744 (= c!137947 ((_ is Cons!9148) l!5107))))

(declare-fun e!558742 () List!9163)

(assert (=> d!264744 (= (printWithSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297) e!558742)))

(declare-fun b!849031 () Bool)

(assert (=> b!849031 (= e!558742 (++!2370 (++!2370 (list!3589 (charsOf!987 (h!14549 l!5107))) (list!3589 (charsOf!987 separatorToken!297))) (printWithSeparatorTokenList!28 thiss!20117 (t!94856 l!5107) separatorToken!297)))))

(declare-fun b!849032 () Bool)

(assert (=> b!849032 (= e!558742 Nil!9147)))

(assert (= (and d!264744 c!137947) b!849031))

(assert (= (and d!264744 (not c!137947)) b!849032))

(assert (=> b!849031 m!1085015))

(assert (=> b!849031 m!1085039))

(assert (=> b!849031 m!1085039))

(assert (=> b!849031 m!1085035))

(declare-fun m!1086639 () Bool)

(assert (=> b!849031 m!1086639))

(assert (=> b!849031 m!1085015))

(assert (=> b!849031 m!1085017))

(assert (=> b!849031 m!1085035))

(assert (=> b!849031 m!1086639))

(assert (=> b!849031 m!1086039))

(declare-fun m!1086641 () Bool)

(assert (=> b!849031 m!1086641))

(assert (=> b!849031 m!1086039))

(assert (=> b!849031 m!1085017))

(assert (=> d!264298 d!264744))

(declare-fun d!264746 () Bool)

(declare-fun c!137948 () Bool)

(assert (=> d!264746 (= c!137948 ((_ is Cons!9148) ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345))))))

(declare-fun e!558743 () List!9163)

(assert (=> d!264746 (= (printList!470 thiss!20117 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345))) e!558743)))

(declare-fun b!849033 () Bool)

(assert (=> b!849033 (= e!558743 (++!2370 (list!3589 (charsOf!987 (h!14549 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345))))) (printList!470 thiss!20117 (t!94856 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345))))))))

(declare-fun b!849034 () Bool)

(assert (=> b!849034 (= e!558743 Nil!9147)))

(assert (= (and d!264746 c!137948) b!849033))

(assert (= (and d!264746 (not c!137948)) b!849034))

(declare-fun m!1086643 () Bool)

(assert (=> b!849033 m!1086643))

(assert (=> b!849033 m!1086643))

(declare-fun m!1086645 () Bool)

(assert (=> b!849033 m!1086645))

(declare-fun m!1086647 () Bool)

(assert (=> b!849033 m!1086647))

(assert (=> b!849033 m!1086645))

(assert (=> b!849033 m!1086647))

(declare-fun m!1086649 () Bool)

(assert (=> b!849033 m!1086649))

(assert (=> b!848513 d!264746))

(declare-fun d!264748 () Bool)

(assert (=> d!264748 (= ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (h!14549 lt!321345)) (Cons!9148 (h!14549 lt!321345) ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297)))))

(assert (=> b!848513 d!264748))

(declare-fun d!264750 () Bool)

(assert (=> d!264750 (= ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297) (Cons!9148 separatorToken!297 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297)))))

(assert (=> b!848513 d!264750))

(declare-fun e!558745 () List!9163)

(declare-fun b!849035 () Bool)

(declare-fun e!558747 () Bool)

(assert (=> b!849035 (= e!558747 (= (printList!470 thiss!20117 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 lt!321345)) separatorToken!297) separatorToken!297) (h!14549 (t!94856 lt!321345)))) e!558745))))

(declare-fun c!137950 () Bool)

(declare-fun lt!321789 () List!9164)

(assert (=> b!849035 (= c!137950 ((_ is Cons!9148) lt!321789))))

(assert (=> b!849035 (= lt!321789 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 lt!321345)) separatorToken!297) separatorToken!297) (h!14549 (t!94856 lt!321345))))))

(declare-fun b!849036 () Bool)

(declare-fun res!388156 () Bool)

(declare-fun e!558748 () Bool)

(assert (=> b!849036 (=> (not res!388156) (not e!558748))))

(assert (=> b!849036 (= res!388156 e!558747)))

(declare-fun res!388154 () Bool)

(assert (=> b!849036 (=> res!388154 e!558747)))

(assert (=> b!849036 (= res!388154 (not ((_ is Cons!9148) (t!94856 lt!321345))))))

(declare-fun b!849037 () Bool)

(declare-fun e!558749 () Bool)

(assert (=> b!849037 (= e!558748 e!558749)))

(declare-fun res!388157 () Bool)

(assert (=> b!849037 (=> res!388157 e!558749)))

(assert (=> b!849037 (= res!388157 (not ((_ is Cons!9148) (t!94856 lt!321345))))))

(declare-fun lt!321794 () List!9164)

(declare-fun d!264752 () Bool)

(assert (=> d!264752 (= (printList!470 thiss!20117 lt!321794) (printWithSeparatorTokenList!28 thiss!20117 (t!94856 lt!321345) separatorToken!297))))

(declare-fun e!558746 () List!9164)

(assert (=> d!264752 (= lt!321794 e!558746)))

(declare-fun c!137949 () Bool)

(assert (=> d!264752 (= c!137949 ((_ is Cons!9148) (t!94856 lt!321345)))))

(assert (=> d!264752 e!558748))

(declare-fun res!388155 () Bool)

(assert (=> d!264752 (=> (not res!388155) (not e!558748))))

(assert (=> d!264752 (= res!388155 (isSeparator!1716 (rule!3139 separatorToken!297)))))

(assert (=> d!264752 (= (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) lt!321794)))

(declare-fun b!849038 () Bool)

(declare-fun e!558744 () List!9163)

(assert (=> b!849038 (= e!558744 Nil!9147)))

(declare-fun b!849039 () Bool)

(assert (=> b!849039 (= e!558745 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321789))) (printList!470 thiss!20117 (t!94856 lt!321789))))))

(declare-fun b!849040 () Bool)

(declare-fun lt!321791 () List!9164)

(assert (=> b!849040 (= e!558744 (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321791))) (printList!470 thiss!20117 (t!94856 lt!321791))))))

(declare-fun b!849041 () Bool)

(assert (=> b!849041 (= e!558749 (= (printList!470 thiss!20117 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 lt!321345)) separatorToken!297) separatorToken!297)) e!558744))))

(declare-fun c!137951 () Bool)

(assert (=> b!849041 (= c!137951 ((_ is Cons!9148) lt!321791))))

(assert (=> b!849041 (= lt!321791 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 lt!321345)) separatorToken!297) separatorToken!297))))

(declare-fun b!849042 () Bool)

(assert (=> b!849042 (= e!558746 Nil!9148)))

(declare-fun b!849043 () Bool)

(assert (=> b!849043 (= e!558746 ($colon$colon!83 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 lt!321345)) separatorToken!297) separatorToken!297) (h!14549 (t!94856 lt!321345))))))

(declare-fun lt!321788 () List!9163)

(assert (=> b!849043 (= lt!321788 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321345)))))))

(declare-fun lt!321790 () List!9163)

(assert (=> b!849043 (= lt!321790 (list!3589 (charsOf!987 separatorToken!297)))))

(declare-fun lt!321793 () List!9163)

(assert (=> b!849043 (= lt!321793 (printList!470 thiss!20117 (withSeparatorTokenList!48 thiss!20117 (t!94856 (t!94856 lt!321345)) separatorToken!297)))))

(declare-fun lt!321792 () Unit!13623)

(assert (=> b!849043 (= lt!321792 (lemmaConcatAssociativity!745 lt!321788 lt!321790 lt!321793))))

(assert (=> b!849043 (= (++!2370 (++!2370 lt!321788 lt!321790) lt!321793) (++!2370 lt!321788 (++!2370 lt!321790 lt!321793)))))

(declare-fun lt!321787 () Unit!13623)

(assert (=> b!849043 (= lt!321787 lt!321792)))

(declare-fun b!849044 () Bool)

(assert (=> b!849044 (= e!558745 Nil!9147)))

(assert (= (and d!264752 res!388155) b!849036))

(assert (= (and b!849036 (not res!388154)) b!849035))

(assert (= (and b!849035 c!137950) b!849039))

(assert (= (and b!849035 (not c!137950)) b!849044))

(assert (= (and b!849036 res!388156) b!849037))

(assert (= (and b!849037 (not res!388157)) b!849041))

(assert (= (and b!849041 c!137951) b!849040))

(assert (= (and b!849041 (not c!137951)) b!849038))

(assert (= (and d!264752 c!137949) b!849043))

(assert (= (and d!264752 (not c!137949)) b!849042))

(declare-fun m!1086651 () Bool)

(assert (=> d!264752 m!1086651))

(assert (=> d!264752 m!1085653))

(declare-fun m!1086653 () Bool)

(assert (=> b!849043 m!1086653))

(assert (=> b!849043 m!1085017))

(declare-fun m!1086655 () Bool)

(assert (=> b!849043 m!1086655))

(declare-fun m!1086657 () Bool)

(assert (=> b!849043 m!1086657))

(declare-fun m!1086659 () Bool)

(assert (=> b!849043 m!1086659))

(declare-fun m!1086661 () Bool)

(assert (=> b!849043 m!1086661))

(declare-fun m!1086663 () Bool)

(assert (=> b!849043 m!1086663))

(declare-fun m!1086665 () Bool)

(assert (=> b!849043 m!1086665))

(declare-fun m!1086667 () Bool)

(assert (=> b!849043 m!1086667))

(declare-fun m!1086669 () Bool)

(assert (=> b!849043 m!1086669))

(assert (=> b!849043 m!1086663))

(assert (=> b!849043 m!1086659))

(assert (=> b!849043 m!1085017))

(assert (=> b!849043 m!1085035))

(assert (=> b!849043 m!1086669))

(declare-fun m!1086671 () Bool)

(assert (=> b!849043 m!1086671))

(assert (=> b!849043 m!1086653))

(declare-fun m!1086673 () Bool)

(assert (=> b!849043 m!1086673))

(assert (=> b!849043 m!1086663))

(assert (=> b!849043 m!1086655))

(assert (=> b!849035 m!1086663))

(assert (=> b!849035 m!1086663))

(assert (=> b!849035 m!1086659))

(assert (=> b!849035 m!1086659))

(assert (=> b!849035 m!1086661))

(assert (=> b!849035 m!1086661))

(declare-fun m!1086675 () Bool)

(assert (=> b!849035 m!1086675))

(declare-fun m!1086677 () Bool)

(assert (=> b!849039 m!1086677))

(assert (=> b!849039 m!1086677))

(declare-fun m!1086679 () Bool)

(assert (=> b!849039 m!1086679))

(declare-fun m!1086681 () Bool)

(assert (=> b!849039 m!1086681))

(assert (=> b!849039 m!1086679))

(assert (=> b!849039 m!1086681))

(declare-fun m!1086683 () Bool)

(assert (=> b!849039 m!1086683))

(declare-fun m!1086685 () Bool)

(assert (=> b!849040 m!1086685))

(assert (=> b!849040 m!1086685))

(declare-fun m!1086687 () Bool)

(assert (=> b!849040 m!1086687))

(declare-fun m!1086689 () Bool)

(assert (=> b!849040 m!1086689))

(assert (=> b!849040 m!1086687))

(assert (=> b!849040 m!1086689))

(declare-fun m!1086691 () Bool)

(assert (=> b!849040 m!1086691))

(assert (=> b!849041 m!1086663))

(assert (=> b!849041 m!1086663))

(assert (=> b!849041 m!1086659))

(assert (=> b!849041 m!1086659))

(declare-fun m!1086693 () Bool)

(assert (=> b!849041 m!1086693))

(assert (=> b!848513 d!264752))

(assert (=> d!264260 d!264268))

(declare-fun d!264754 () Bool)

(assert (=> d!264754 (separableTokensPredicate!58 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621)))

(assert (=> d!264754 true))

(declare-fun _$37!215 () Unit!13623)

(assert (=> d!264754 (= (choose!5009 thiss!20117 (h!14549 lt!321339) (h!14549 (t!94856 lt!321339)) rules!2621) _$37!215)))

(declare-fun bs!230871 () Bool)

(assert (= bs!230871 d!264754))

(assert (=> bs!230871 m!1084811))

(assert (=> d!264260 d!264754))

(assert (=> d!264260 d!264242))

(declare-fun b!849046 () Bool)

(declare-fun e!558750 () List!9163)

(assert (=> b!849046 (= e!558750 (Cons!9147 (h!14548 (list!3589 (charsOf!987 (h!14549 lt!321510)))) (++!2370 (t!94855 (list!3589 (charsOf!987 (h!14549 lt!321510)))) (printList!470 thiss!20117 (t!94856 lt!321510)))))))

(declare-fun b!849047 () Bool)

(declare-fun res!388159 () Bool)

(declare-fun e!558751 () Bool)

(assert (=> b!849047 (=> (not res!388159) (not e!558751))))

(declare-fun lt!321795 () List!9163)

(assert (=> b!849047 (= res!388159 (= (size!7625 lt!321795) (+ (size!7625 (list!3589 (charsOf!987 (h!14549 lt!321510)))) (size!7625 (printList!470 thiss!20117 (t!94856 lt!321510))))))))

(declare-fun b!849045 () Bool)

(assert (=> b!849045 (= e!558750 (printList!470 thiss!20117 (t!94856 lt!321510)))))

(declare-fun b!849048 () Bool)

(assert (=> b!849048 (= e!558751 (or (not (= (printList!470 thiss!20117 (t!94856 lt!321510)) Nil!9147)) (= lt!321795 (list!3589 (charsOf!987 (h!14549 lt!321510))))))))

(declare-fun d!264756 () Bool)

(assert (=> d!264756 e!558751))

(declare-fun res!388158 () Bool)

(assert (=> d!264756 (=> (not res!388158) (not e!558751))))

(assert (=> d!264756 (= res!388158 (= (content!1339 lt!321795) ((_ map or) (content!1339 (list!3589 (charsOf!987 (h!14549 lt!321510)))) (content!1339 (printList!470 thiss!20117 (t!94856 lt!321510))))))))

(assert (=> d!264756 (= lt!321795 e!558750)))

(declare-fun c!137952 () Bool)

(assert (=> d!264756 (= c!137952 ((_ is Nil!9147) (list!3589 (charsOf!987 (h!14549 lt!321510)))))))

(assert (=> d!264756 (= (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321510))) (printList!470 thiss!20117 (t!94856 lt!321510))) lt!321795)))

(assert (= (and d!264756 c!137952) b!849045))

(assert (= (and d!264756 (not c!137952)) b!849046))

(assert (= (and d!264756 res!388158) b!849047))

(assert (= (and b!849047 res!388159) b!849048))

(assert (=> b!849046 m!1085365))

(declare-fun m!1086695 () Bool)

(assert (=> b!849046 m!1086695))

(declare-fun m!1086697 () Bool)

(assert (=> b!849047 m!1086697))

(assert (=> b!849047 m!1085363))

(declare-fun m!1086699 () Bool)

(assert (=> b!849047 m!1086699))

(assert (=> b!849047 m!1085365))

(declare-fun m!1086701 () Bool)

(assert (=> b!849047 m!1086701))

(declare-fun m!1086703 () Bool)

(assert (=> d!264756 m!1086703))

(assert (=> d!264756 m!1085363))

(declare-fun m!1086705 () Bool)

(assert (=> d!264756 m!1086705))

(assert (=> d!264756 m!1085365))

(declare-fun m!1086707 () Bool)

(assert (=> d!264756 m!1086707))

(assert (=> b!848517 d!264756))

(declare-fun d!264758 () Bool)

(assert (=> d!264758 (= (list!3589 (charsOf!987 (h!14549 lt!321510))) (list!3591 (c!137815 (charsOf!987 (h!14549 lt!321510)))))))

(declare-fun bs!230872 () Bool)

(assert (= bs!230872 d!264758))

(declare-fun m!1086709 () Bool)

(assert (=> bs!230872 m!1086709))

(assert (=> b!848517 d!264758))

(declare-fun d!264760 () Bool)

(declare-fun lt!321796 () BalanceConc!6078)

(assert (=> d!264760 (= (list!3589 lt!321796) (originalCharacters!2272 (h!14549 lt!321510)))))

(assert (=> d!264760 (= lt!321796 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510)))) (value!55605 (h!14549 lt!321510))))))

(assert (=> d!264760 (= (charsOf!987 (h!14549 lt!321510)) lt!321796)))

(declare-fun b_lambda!28183 () Bool)

(assert (=> (not b_lambda!28183) (not d!264760)))

(declare-fun tb!59265 () Bool)

(declare-fun t!95043 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510))))) t!95043) tb!59265))

(declare-fun b!849049 () Bool)

(declare-fun e!558752 () Bool)

(declare-fun tp!267203 () Bool)

(assert (=> b!849049 (= e!558752 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510)))) (value!55605 (h!14549 lt!321510))))) tp!267203))))

(declare-fun result!68698 () Bool)

(assert (=> tb!59265 (= result!68698 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510)))) (value!55605 (h!14549 lt!321510)))) e!558752))))

(assert (= tb!59265 b!849049))

(declare-fun m!1086711 () Bool)

(assert (=> b!849049 m!1086711))

(declare-fun m!1086713 () Bool)

(assert (=> tb!59265 m!1086713))

(assert (=> d!264760 t!95043))

(declare-fun b_and!74209 () Bool)

(assert (= b_and!74199 (and (=> t!95043 result!68698) b_and!74209)))

(declare-fun t!95045 () Bool)

(declare-fun tb!59267 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510))))) t!95045) tb!59267))

(declare-fun result!68700 () Bool)

(assert (= result!68700 result!68698))

(assert (=> d!264760 t!95045))

(declare-fun b_and!74211 () Bool)

(assert (= b_and!74203 (and (=> t!95045 result!68700) b_and!74211)))

(declare-fun tb!59269 () Bool)

(declare-fun t!95047 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510))))) t!95047) tb!59269))

(declare-fun result!68702 () Bool)

(assert (= result!68702 result!68698))

(assert (=> d!264760 t!95047))

(declare-fun b_and!74213 () Bool)

(assert (= b_and!74205 (and (=> t!95047 result!68702) b_and!74213)))

(declare-fun t!95049 () Bool)

(declare-fun tb!59271 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510))))) t!95049) tb!59271))

(declare-fun result!68704 () Bool)

(assert (= result!68704 result!68698))

(assert (=> d!264760 t!95049))

(declare-fun b_and!74215 () Bool)

(assert (= b_and!74201 (and (=> t!95049 result!68704) b_and!74215)))

(declare-fun tb!59273 () Bool)

(declare-fun t!95051 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510))))) t!95051) tb!59273))

(declare-fun result!68706 () Bool)

(assert (= result!68706 result!68698))

(assert (=> d!264760 t!95051))

(declare-fun b_and!74217 () Bool)

(assert (= b_and!74207 (and (=> t!95051 result!68706) b_and!74217)))

(declare-fun m!1086715 () Bool)

(assert (=> d!264760 m!1086715))

(declare-fun m!1086717 () Bool)

(assert (=> d!264760 m!1086717))

(assert (=> b!848517 d!264760))

(declare-fun d!264762 () Bool)

(declare-fun c!137953 () Bool)

(assert (=> d!264762 (= c!137953 ((_ is Cons!9148) (t!94856 lt!321510)))))

(declare-fun e!558753 () List!9163)

(assert (=> d!264762 (= (printList!470 thiss!20117 (t!94856 lt!321510)) e!558753)))

(declare-fun b!849050 () Bool)

(assert (=> b!849050 (= e!558753 (++!2370 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321510)))) (printList!470 thiss!20117 (t!94856 (t!94856 lt!321510)))))))

(declare-fun b!849051 () Bool)

(assert (=> b!849051 (= e!558753 Nil!9147)))

(assert (= (and d!264762 c!137953) b!849050))

(assert (= (and d!264762 (not c!137953)) b!849051))

(declare-fun m!1086719 () Bool)

(assert (=> b!849050 m!1086719))

(assert (=> b!849050 m!1086719))

(declare-fun m!1086721 () Bool)

(assert (=> b!849050 m!1086721))

(declare-fun m!1086723 () Bool)

(assert (=> b!849050 m!1086723))

(assert (=> b!849050 m!1086721))

(assert (=> b!849050 m!1086723))

(declare-fun m!1086725 () Bool)

(assert (=> b!849050 m!1086725))

(assert (=> b!848517 d!264762))

(declare-fun d!264764 () Bool)

(assert (=> d!264764 (= (inv!16 (value!55605 (h!14549 l!5107))) (= (charsToInt!0 (text!12921 (value!55605 (h!14549 l!5107)))) (value!55596 (value!55605 (h!14549 l!5107)))))))

(declare-fun bs!230873 () Bool)

(assert (= bs!230873 d!264764))

(declare-fun m!1086727 () Bool)

(assert (=> bs!230873 m!1086727))

(assert (=> b!848399 d!264764))

(declare-fun d!264766 () Bool)

(assert (=> d!264766 (= (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))) (isBalanced!823 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))))))

(declare-fun bs!230874 () Bool)

(assert (= bs!230874 d!264766))

(declare-fun m!1086729 () Bool)

(assert (=> bs!230874 m!1086729))

(assert (=> tb!59131 d!264766))

(declare-fun bs!230875 () Bool)

(declare-fun d!264768 () Bool)

(assert (= bs!230875 (and d!264768 d!264392)))

(declare-fun lambda!25338 () Int)

(assert (=> bs!230875 (= (= (toValue!2745 (transformation!1716 (h!14550 rules!2621))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))) (= lambda!25338 lambda!25303))))

(declare-fun bs!230876 () Bool)

(assert (= bs!230876 (and d!264768 d!264668)))

(assert (=> bs!230876 (= (= (toValue!2745 (transformation!1716 (h!14550 rules!2621))) (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297)))) (= lambda!25338 lambda!25327))))

(assert (=> d!264768 true))

(assert (=> d!264768 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4254 order!5849 lambda!25338))))

(assert (=> d!264768 (= (equivClasses!633 (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (Forall2!316 lambda!25338))))

(declare-fun bs!230877 () Bool)

(assert (= bs!230877 d!264768))

(declare-fun m!1086731 () Bool)

(assert (=> bs!230877 m!1086731))

(assert (=> b!848244 d!264768))

(declare-fun c!137954 () Bool)

(declare-fun d!264770 () Bool)

(assert (=> d!264770 (= c!137954 ((_ is Cons!9148) ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297)))))

(declare-fun e!558754 () List!9163)

(assert (=> d!264770 (= (printList!470 thiss!20117 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297)) e!558754)))

(declare-fun b!849052 () Bool)

(assert (=> b!849052 (= e!558754 (++!2370 (list!3589 (charsOf!987 (h!14549 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297)))) (printList!470 thiss!20117 (t!94856 ($colon$colon!83 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297) separatorToken!297)))))))

(declare-fun b!849053 () Bool)

(assert (=> b!849053 (= e!558754 Nil!9147)))

(assert (= (and d!264770 c!137954) b!849052))

(assert (= (and d!264770 (not c!137954)) b!849053))

(declare-fun m!1086733 () Bool)

(assert (=> b!849052 m!1086733))

(assert (=> b!849052 m!1086733))

(declare-fun m!1086735 () Bool)

(assert (=> b!849052 m!1086735))

(declare-fun m!1086737 () Bool)

(assert (=> b!849052 m!1086737))

(assert (=> b!849052 m!1086735))

(assert (=> b!849052 m!1086737))

(declare-fun m!1086739 () Bool)

(assert (=> b!849052 m!1086739))

(assert (=> b!848519 d!264770))

(assert (=> b!848519 d!264750))

(assert (=> b!848519 d!264752))

(declare-fun bs!230878 () Bool)

(declare-fun d!264772 () Bool)

(assert (= bs!230878 (and d!264772 d!264534)))

(declare-fun lambda!25339 () Int)

(assert (=> bs!230878 (= (and (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (= (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297))) (toValue!2745 (transformation!1716 (h!14550 rules!2621))))) (= lambda!25339 lambda!25321))))

(assert (=> d!264772 true))

(assert (=> d!264772 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) (dynLambda!4256 order!5853 lambda!25339))))

(assert (=> d!264772 true))

(assert (=> d!264772 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297)))) (dynLambda!4256 order!5853 lambda!25339))))

(assert (=> d!264772 (= (semiInverseModEq!666 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297)))) (Forall!407 lambda!25339))))

(declare-fun bs!230879 () Bool)

(assert (= bs!230879 d!264772))

(declare-fun m!1086741 () Bool)

(assert (=> bs!230879 m!1086741))

(assert (=> d!264294 d!264772))

(declare-fun d!264774 () Bool)

(assert (=> d!264774 (= (inv!15 (value!55605 (h!14549 l!5107))) (= (charsToBigInt!0 (text!12923 (value!55605 (h!14549 l!5107))) 0) (value!55600 (value!55605 (h!14549 l!5107)))))))

(declare-fun bs!230880 () Bool)

(assert (= bs!230880 d!264774))

(declare-fun m!1086743 () Bool)

(assert (=> bs!230880 m!1086743))

(assert (=> b!848401 d!264774))

(declare-fun d!264776 () Bool)

(assert (=> d!264776 (= (list!3589 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))) (list!3591 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))))))

(declare-fun bs!230881 () Bool)

(assert (= bs!230881 d!264776))

(declare-fun m!1086745 () Bool)

(assert (=> bs!230881 m!1086745))

(assert (=> b!848249 d!264776))

(declare-fun d!264778 () Bool)

(assert (=> d!264778 (= (inv!17 (value!55605 separatorToken!297)) (= (charsToBigInt!1 (text!12922 (value!55605 separatorToken!297))) (value!55597 (value!55605 separatorToken!297))))))

(declare-fun bs!230882 () Bool)

(assert (= bs!230882 d!264778))

(declare-fun m!1086747 () Bool)

(assert (=> bs!230882 m!1086747))

(assert (=> b!848527 d!264778))

(assert (=> d!264356 d!264616))

(declare-fun d!264780 () Bool)

(declare-fun lt!321799 () Int)

(declare-fun size!7632 (List!9164) Int)

(assert (=> d!264780 (= lt!321799 (size!7632 (list!3590 (_1!6008 lt!321506))))))

(declare-fun size!7633 (Conc!3033) Int)

(assert (=> d!264780 (= lt!321799 (size!7633 (c!137816 (_1!6008 lt!321506))))))

(assert (=> d!264780 (= (size!7627 (_1!6008 lt!321506)) lt!321799)))

(declare-fun bs!230883 () Bool)

(assert (= bs!230883 d!264780))

(assert (=> bs!230883 m!1086461))

(assert (=> bs!230883 m!1086461))

(declare-fun m!1086749 () Bool)

(assert (=> bs!230883 m!1086749))

(declare-fun m!1086751 () Bool)

(assert (=> bs!230883 m!1086751))

(assert (=> d!264356 d!264780))

(assert (=> d!264356 d!264608))

(declare-fun d!264782 () Bool)

(assert (=> d!264782 (= (list!3590 (_1!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297))))) (list!3592 (c!137816 (_1!6008 (lex!614 thiss!20117 rules!2621 (print!551 thiss!20117 (singletonSeq!533 separatorToken!297)))))))))

(declare-fun bs!230884 () Bool)

(assert (= bs!230884 d!264782))

(declare-fun m!1086753 () Bool)

(assert (=> bs!230884 m!1086753))

(assert (=> d!264356 d!264782))

(assert (=> d!264356 d!264242))

(declare-fun d!264784 () Bool)

(assert (=> d!264784 (= (list!3590 (singletonSeq!533 separatorToken!297)) (list!3592 (c!137816 (singletonSeq!533 separatorToken!297))))))

(declare-fun bs!230885 () Bool)

(assert (= bs!230885 d!264784))

(declare-fun m!1086755 () Bool)

(assert (=> bs!230885 m!1086755))

(assert (=> d!264356 d!264784))

(assert (=> d!264356 d!264622))

(declare-fun bs!230886 () Bool)

(declare-fun d!264786 () Bool)

(assert (= bs!230886 (and d!264786 d!264262)))

(declare-fun lambda!25340 () Int)

(assert (=> bs!230886 (= lambda!25340 lambda!25286)))

(declare-fun bs!230887 () Bool)

(assert (= bs!230887 (and d!264786 d!264296)))

(assert (=> bs!230887 (= lambda!25340 lambda!25287)))

(declare-fun bs!230888 () Bool)

(assert (= bs!230888 (and d!264786 d!264328)))

(assert (=> bs!230888 (= lambda!25340 lambda!25298)))

(declare-fun bs!230889 () Bool)

(assert (= bs!230889 (and d!264786 d!264318)))

(assert (=> bs!230889 (= lambda!25340 lambda!25288)))

(declare-fun bs!230890 () Bool)

(assert (= bs!230890 (and d!264786 b!848136)))

(assert (=> bs!230890 (not (= lambda!25340 lambda!25280))))

(declare-fun bs!230891 () Bool)

(assert (= bs!230891 (and d!264786 d!264422)))

(assert (=> bs!230891 (= lambda!25340 lambda!25305)))

(declare-fun bs!230892 () Bool)

(assert (= bs!230892 (and d!264786 d!264424)))

(assert (=> bs!230892 (= lambda!25340 lambda!25306)))

(declare-fun bs!230893 () Bool)

(assert (= bs!230893 (and d!264786 d!264736)))

(assert (=> bs!230893 (= lambda!25340 lambda!25336)))

(declare-fun bs!230894 () Bool)

(assert (= bs!230894 (and d!264786 d!264738)))

(assert (=> bs!230894 (= lambda!25340 lambda!25337)))

(declare-fun b!849058 () Bool)

(declare-fun e!558759 () Bool)

(assert (=> b!849058 (= e!558759 true)))

(declare-fun b!849057 () Bool)

(declare-fun e!558758 () Bool)

(assert (=> b!849057 (= e!558758 e!558759)))

(declare-fun b!849056 () Bool)

(declare-fun e!558757 () Bool)

(assert (=> b!849056 (= e!558757 e!558758)))

(assert (=> d!264786 e!558757))

(assert (= b!849057 b!849058))

(assert (= b!849056 b!849057))

(assert (= (and d!264786 ((_ is Cons!9149) rules!2621)) b!849056))

(assert (=> b!849058 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25340))))

(assert (=> b!849058 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25340))))

(assert (=> d!264786 true))

(declare-fun lt!321800 () Bool)

(assert (=> d!264786 (= lt!321800 (forall!2145 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297) lambda!25340))))

(declare-fun e!558755 () Bool)

(assert (=> d!264786 (= lt!321800 e!558755)))

(declare-fun res!388161 () Bool)

(assert (=> d!264786 (=> res!388161 e!558755)))

(assert (=> d!264786 (= res!388161 (not ((_ is Cons!9148) (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))))

(assert (=> d!264786 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264786 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297)) lt!321800)))

(declare-fun b!849054 () Bool)

(declare-fun e!558756 () Bool)

(assert (=> b!849054 (= e!558755 e!558756)))

(declare-fun res!388160 () Bool)

(assert (=> b!849054 (=> (not res!388160) (not e!558756))))

(assert (=> b!849054 (= res!388160 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))))

(declare-fun b!849055 () Bool)

(assert (=> b!849055 (= e!558756 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))))

(assert (= (and d!264786 (not res!388161)) b!849054))

(assert (= (and b!849054 res!388160) b!849055))

(assert (=> d!264786 m!1084859))

(declare-fun m!1086757 () Bool)

(assert (=> d!264786 m!1086757))

(assert (=> d!264786 m!1084857))

(declare-fun m!1086759 () Bool)

(assert (=> b!849054 m!1086759))

(declare-fun m!1086761 () Bool)

(assert (=> b!849055 m!1086761))

(assert (=> d!264244 d!264786))

(assert (=> d!264244 d!264370))

(declare-fun d!264788 () Bool)

(assert (=> d!264788 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))

(assert (=> d!264788 true))

(declare-fun _$32!316 () Unit!13623)

(assert (=> d!264788 (= (choose!5008 thiss!20117 rules!2621 lt!321345 separatorToken!297) _$32!316)))

(declare-fun bs!230895 () Bool)

(assert (= bs!230895 d!264788))

(assert (=> bs!230895 m!1084859))

(assert (=> bs!230895 m!1084859))

(assert (=> bs!230895 m!1084899))

(assert (=> d!264244 d!264788))

(assert (=> d!264244 d!264242))

(declare-fun bs!230896 () Bool)

(declare-fun d!264790 () Bool)

(assert (= bs!230896 (and d!264790 d!264534)))

(declare-fun lambda!25341 () Int)

(assert (=> bs!230896 (= (and (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (= (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toValue!2745 (transformation!1716 (h!14550 rules!2621))))) (= lambda!25341 lambda!25321))))

(declare-fun bs!230897 () Bool)

(assert (= bs!230897 (and d!264790 d!264772)))

(assert (=> bs!230897 (= (and (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) (= (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toValue!2745 (transformation!1716 (rule!3139 separatorToken!297))))) (= lambda!25341 lambda!25339))))

(assert (=> d!264790 true))

(assert (=> d!264790 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) (dynLambda!4256 order!5853 lambda!25341))))

(assert (=> d!264790 true))

(assert (=> d!264790 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))) (dynLambda!4256 order!5853 lambda!25341))))

(assert (=> d!264790 (= (semiInverseModEq!666 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toValue!2745 (transformation!1716 (rule!3139 (h!14549 l!5107))))) (Forall!407 lambda!25341))))

(declare-fun bs!230898 () Bool)

(assert (= bs!230898 d!264790))

(declare-fun m!1086763 () Bool)

(assert (=> bs!230898 m!1086763))

(assert (=> d!264284 d!264790))

(declare-fun d!264792 () Bool)

(declare-fun res!388162 () Bool)

(declare-fun e!558760 () Bool)

(assert (=> d!264792 (=> res!388162 e!558760)))

(assert (=> d!264792 (= res!388162 ((_ is Nil!9148) lt!321339))))

(assert (=> d!264792 (= (forall!2145 lt!321339 lambda!25287) e!558760)))

(declare-fun b!849059 () Bool)

(declare-fun e!558761 () Bool)

(assert (=> b!849059 (= e!558760 e!558761)))

(declare-fun res!388163 () Bool)

(assert (=> b!849059 (=> (not res!388163) (not e!558761))))

(assert (=> b!849059 (= res!388163 (dynLambda!4253 lambda!25287 (h!14549 lt!321339)))))

(declare-fun b!849060 () Bool)

(assert (=> b!849060 (= e!558761 (forall!2145 (t!94856 lt!321339) lambda!25287))))

(assert (= (and d!264792 (not res!388162)) b!849059))

(assert (= (and b!849059 res!388163) b!849060))

(declare-fun b_lambda!28185 () Bool)

(assert (=> (not b_lambda!28185) (not b!849059)))

(declare-fun m!1086765 () Bool)

(assert (=> b!849059 m!1086765))

(declare-fun m!1086767 () Bool)

(assert (=> b!849060 m!1086767))

(assert (=> d!264296 d!264792))

(assert (=> d!264296 d!264242))

(assert (=> b!848521 d!264748))

(assert (=> b!848521 d!264752))

(declare-fun d!264794 () Bool)

(assert (=> d!264794 (= (++!2370 (++!2370 lt!321509 lt!321511) lt!321514) (++!2370 lt!321509 (++!2370 lt!321511 lt!321514)))))

(declare-fun lt!321801 () Unit!13623)

(assert (=> d!264794 (= lt!321801 (choose!5012 lt!321509 lt!321511 lt!321514))))

(assert (=> d!264794 (= (lemmaConcatAssociativity!745 lt!321509 lt!321511 lt!321514) lt!321801)))

(declare-fun bs!230899 () Bool)

(assert (= bs!230899 d!264794))

(assert (=> bs!230899 m!1085353))

(assert (=> bs!230899 m!1085339))

(assert (=> bs!230899 m!1085353))

(assert (=> bs!230899 m!1085355))

(assert (=> bs!230899 m!1085339))

(assert (=> bs!230899 m!1085341))

(declare-fun m!1086769 () Bool)

(assert (=> bs!230899 m!1086769))

(assert (=> b!848521 d!264794))

(declare-fun d!264796 () Bool)

(declare-fun c!137955 () Bool)

(assert (=> d!264796 (= c!137955 ((_ is Cons!9148) (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297)))))

(declare-fun e!558762 () List!9163)

(assert (=> d!264796 (= (printList!470 thiss!20117 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297)) e!558762)))

(declare-fun b!849061 () Bool)

(assert (=> b!849061 (= e!558762 (++!2370 (list!3589 (charsOf!987 (h!14549 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297)))) (printList!470 thiss!20117 (t!94856 (withSeparatorTokenList!48 thiss!20117 (t!94856 lt!321345) separatorToken!297)))))))

(declare-fun b!849062 () Bool)

(assert (=> b!849062 (= e!558762 Nil!9147)))

(assert (= (and d!264796 c!137955) b!849061))

(assert (= (and d!264796 (not c!137955)) b!849062))

(declare-fun m!1086771 () Bool)

(assert (=> b!849061 m!1086771))

(assert (=> b!849061 m!1086771))

(declare-fun m!1086773 () Bool)

(assert (=> b!849061 m!1086773))

(declare-fun m!1086775 () Bool)

(assert (=> b!849061 m!1086775))

(assert (=> b!849061 m!1086773))

(assert (=> b!849061 m!1086775))

(declare-fun m!1086777 () Bool)

(assert (=> b!849061 m!1086777))

(assert (=> b!848521 d!264796))

(assert (=> b!848521 d!264580))

(declare-fun b!849064 () Bool)

(declare-fun e!558763 () List!9163)

(assert (=> b!849064 (= e!558763 (Cons!9147 (h!14548 lt!321509) (++!2370 (t!94855 lt!321509) lt!321511)))))

(declare-fun b!849065 () Bool)

(declare-fun res!388165 () Bool)

(declare-fun e!558764 () Bool)

(assert (=> b!849065 (=> (not res!388165) (not e!558764))))

(declare-fun lt!321802 () List!9163)

(assert (=> b!849065 (= res!388165 (= (size!7625 lt!321802) (+ (size!7625 lt!321509) (size!7625 lt!321511))))))

(declare-fun b!849063 () Bool)

(assert (=> b!849063 (= e!558763 lt!321511)))

(declare-fun b!849066 () Bool)

(assert (=> b!849066 (= e!558764 (or (not (= lt!321511 Nil!9147)) (= lt!321802 lt!321509)))))

(declare-fun d!264798 () Bool)

(assert (=> d!264798 e!558764))

(declare-fun res!388164 () Bool)

(assert (=> d!264798 (=> (not res!388164) (not e!558764))))

(assert (=> d!264798 (= res!388164 (= (content!1339 lt!321802) ((_ map or) (content!1339 lt!321509) (content!1339 lt!321511))))))

(assert (=> d!264798 (= lt!321802 e!558763)))

(declare-fun c!137956 () Bool)

(assert (=> d!264798 (= c!137956 ((_ is Nil!9147) lt!321509))))

(assert (=> d!264798 (= (++!2370 lt!321509 lt!321511) lt!321802)))

(assert (= (and d!264798 c!137956) b!849063))

(assert (= (and d!264798 (not c!137956)) b!849064))

(assert (= (and d!264798 res!388164) b!849065))

(assert (= (and b!849065 res!388165) b!849066))

(declare-fun m!1086779 () Bool)

(assert (=> b!849064 m!1086779))

(declare-fun m!1086781 () Bool)

(assert (=> b!849065 m!1086781))

(declare-fun m!1086783 () Bool)

(assert (=> b!849065 m!1086783))

(declare-fun m!1086785 () Bool)

(assert (=> b!849065 m!1086785))

(declare-fun m!1086787 () Bool)

(assert (=> d!264798 m!1086787))

(declare-fun m!1086789 () Bool)

(assert (=> d!264798 m!1086789))

(declare-fun m!1086791 () Bool)

(assert (=> d!264798 m!1086791))

(assert (=> b!848521 d!264798))

(declare-fun d!264800 () Bool)

(declare-fun lt!321803 () BalanceConc!6078)

(assert (=> d!264800 (= (list!3589 lt!321803) (originalCharacters!2272 (h!14549 lt!321345)))))

(assert (=> d!264800 (= lt!321803 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345)))) (value!55605 (h!14549 lt!321345))))))

(assert (=> d!264800 (= (charsOf!987 (h!14549 lt!321345)) lt!321803)))

(declare-fun b_lambda!28187 () Bool)

(assert (=> (not b_lambda!28187) (not d!264800)))

(declare-fun t!95053 () Bool)

(declare-fun tb!59275 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345))))) t!95053) tb!59275))

(declare-fun b!849067 () Bool)

(declare-fun e!558765 () Bool)

(declare-fun tp!267204 () Bool)

(assert (=> b!849067 (= e!558765 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345)))) (value!55605 (h!14549 lt!321345))))) tp!267204))))

(declare-fun result!68708 () Bool)

(assert (=> tb!59275 (= result!68708 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345)))) (value!55605 (h!14549 lt!321345)))) e!558765))))

(assert (= tb!59275 b!849067))

(declare-fun m!1086793 () Bool)

(assert (=> b!849067 m!1086793))

(declare-fun m!1086795 () Bool)

(assert (=> tb!59275 m!1086795))

(assert (=> d!264800 t!95053))

(declare-fun b_and!74219 () Bool)

(assert (= b_and!74217 (and (=> t!95053 result!68708) b_and!74219)))

(declare-fun t!95055 () Bool)

(declare-fun tb!59277 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345))))) t!95055) tb!59277))

(declare-fun result!68710 () Bool)

(assert (= result!68710 result!68708))

(assert (=> d!264800 t!95055))

(declare-fun b_and!74221 () Bool)

(assert (= b_and!74215 (and (=> t!95055 result!68710) b_and!74221)))

(declare-fun t!95057 () Bool)

(declare-fun tb!59279 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345))))) t!95057) tb!59279))

(declare-fun result!68712 () Bool)

(assert (= result!68712 result!68708))

(assert (=> d!264800 t!95057))

(declare-fun b_and!74223 () Bool)

(assert (= b_and!74213 (and (=> t!95057 result!68712) b_and!74223)))

(declare-fun t!95059 () Bool)

(declare-fun tb!59281 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345))))) t!95059) tb!59281))

(declare-fun result!68714 () Bool)

(assert (= result!68714 result!68708))

(assert (=> d!264800 t!95059))

(declare-fun b_and!74225 () Bool)

(assert (= b_and!74209 (and (=> t!95059 result!68714) b_and!74225)))

(declare-fun tb!59283 () Bool)

(declare-fun t!95061 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345))))) t!95061) tb!59283))

(declare-fun result!68716 () Bool)

(assert (= result!68716 result!68708))

(assert (=> d!264800 t!95061))

(declare-fun b_and!74227 () Bool)

(assert (= b_and!74211 (and (=> t!95061 result!68716) b_and!74227)))

(declare-fun m!1086797 () Bool)

(assert (=> d!264800 m!1086797))

(declare-fun m!1086799 () Bool)

(assert (=> d!264800 m!1086799))

(assert (=> b!848521 d!264800))

(declare-fun b!849069 () Bool)

(declare-fun e!558766 () List!9163)

(assert (=> b!849069 (= e!558766 (Cons!9147 (h!14548 lt!321511) (++!2370 (t!94855 lt!321511) lt!321514)))))

(declare-fun b!849070 () Bool)

(declare-fun res!388167 () Bool)

(declare-fun e!558767 () Bool)

(assert (=> b!849070 (=> (not res!388167) (not e!558767))))

(declare-fun lt!321804 () List!9163)

(assert (=> b!849070 (= res!388167 (= (size!7625 lt!321804) (+ (size!7625 lt!321511) (size!7625 lt!321514))))))

(declare-fun b!849068 () Bool)

(assert (=> b!849068 (= e!558766 lt!321514)))

(declare-fun b!849071 () Bool)

(assert (=> b!849071 (= e!558767 (or (not (= lt!321514 Nil!9147)) (= lt!321804 lt!321511)))))

(declare-fun d!264802 () Bool)

(assert (=> d!264802 e!558767))

(declare-fun res!388166 () Bool)

(assert (=> d!264802 (=> (not res!388166) (not e!558767))))

(assert (=> d!264802 (= res!388166 (= (content!1339 lt!321804) ((_ map or) (content!1339 lt!321511) (content!1339 lt!321514))))))

(assert (=> d!264802 (= lt!321804 e!558766)))

(declare-fun c!137957 () Bool)

(assert (=> d!264802 (= c!137957 ((_ is Nil!9147) lt!321511))))

(assert (=> d!264802 (= (++!2370 lt!321511 lt!321514) lt!321804)))

(assert (= (and d!264802 c!137957) b!849068))

(assert (= (and d!264802 (not c!137957)) b!849069))

(assert (= (and d!264802 res!388166) b!849070))

(assert (= (and b!849070 res!388167) b!849071))

(declare-fun m!1086801 () Bool)

(assert (=> b!849069 m!1086801))

(declare-fun m!1086803 () Bool)

(assert (=> b!849070 m!1086803))

(assert (=> b!849070 m!1086785))

(declare-fun m!1086805 () Bool)

(assert (=> b!849070 m!1086805))

(declare-fun m!1086807 () Bool)

(assert (=> d!264802 m!1086807))

(assert (=> d!264802 m!1086791))

(declare-fun m!1086809 () Bool)

(assert (=> d!264802 m!1086809))

(assert (=> b!848521 d!264802))

(assert (=> b!848521 d!264750))

(declare-fun d!264804 () Bool)

(assert (=> d!264804 (= (list!3589 (charsOf!987 (h!14549 lt!321345))) (list!3591 (c!137815 (charsOf!987 (h!14549 lt!321345)))))))

(declare-fun bs!230900 () Bool)

(assert (= bs!230900 d!264804))

(declare-fun m!1086811 () Bool)

(assert (=> bs!230900 m!1086811))

(assert (=> b!848521 d!264804))

(declare-fun b!849073 () Bool)

(declare-fun e!558768 () List!9163)

(assert (=> b!849073 (= e!558768 (Cons!9147 (h!14548 lt!321509) (++!2370 (t!94855 lt!321509) (++!2370 lt!321511 lt!321514))))))

(declare-fun b!849074 () Bool)

(declare-fun res!388169 () Bool)

(declare-fun e!558769 () Bool)

(assert (=> b!849074 (=> (not res!388169) (not e!558769))))

(declare-fun lt!321805 () List!9163)

(assert (=> b!849074 (= res!388169 (= (size!7625 lt!321805) (+ (size!7625 lt!321509) (size!7625 (++!2370 lt!321511 lt!321514)))))))

(declare-fun b!849072 () Bool)

(assert (=> b!849072 (= e!558768 (++!2370 lt!321511 lt!321514))))

(declare-fun b!849075 () Bool)

(assert (=> b!849075 (= e!558769 (or (not (= (++!2370 lt!321511 lt!321514) Nil!9147)) (= lt!321805 lt!321509)))))

(declare-fun d!264806 () Bool)

(assert (=> d!264806 e!558769))

(declare-fun res!388168 () Bool)

(assert (=> d!264806 (=> (not res!388168) (not e!558769))))

(assert (=> d!264806 (= res!388168 (= (content!1339 lt!321805) ((_ map or) (content!1339 lt!321509) (content!1339 (++!2370 lt!321511 lt!321514)))))))

(assert (=> d!264806 (= lt!321805 e!558768)))

(declare-fun c!137958 () Bool)

(assert (=> d!264806 (= c!137958 ((_ is Nil!9147) lt!321509))))

(assert (=> d!264806 (= (++!2370 lt!321509 (++!2370 lt!321511 lt!321514)) lt!321805)))

(assert (= (and d!264806 c!137958) b!849072))

(assert (= (and d!264806 (not c!137958)) b!849073))

(assert (= (and d!264806 res!388168) b!849074))

(assert (= (and b!849074 res!388169) b!849075))

(assert (=> b!849073 m!1085353))

(declare-fun m!1086813 () Bool)

(assert (=> b!849073 m!1086813))

(declare-fun m!1086815 () Bool)

(assert (=> b!849074 m!1086815))

(assert (=> b!849074 m!1086783))

(assert (=> b!849074 m!1085353))

(declare-fun m!1086817 () Bool)

(assert (=> b!849074 m!1086817))

(declare-fun m!1086819 () Bool)

(assert (=> d!264806 m!1086819))

(assert (=> d!264806 m!1086789))

(assert (=> d!264806 m!1085353))

(declare-fun m!1086821 () Bool)

(assert (=> d!264806 m!1086821))

(assert (=> b!848521 d!264806))

(declare-fun b!849077 () Bool)

(declare-fun e!558770 () List!9163)

(assert (=> b!849077 (= e!558770 (Cons!9147 (h!14548 (++!2370 lt!321509 lt!321511)) (++!2370 (t!94855 (++!2370 lt!321509 lt!321511)) lt!321514)))))

(declare-fun b!849078 () Bool)

(declare-fun res!388171 () Bool)

(declare-fun e!558771 () Bool)

(assert (=> b!849078 (=> (not res!388171) (not e!558771))))

(declare-fun lt!321806 () List!9163)

(assert (=> b!849078 (= res!388171 (= (size!7625 lt!321806) (+ (size!7625 (++!2370 lt!321509 lt!321511)) (size!7625 lt!321514))))))

(declare-fun b!849076 () Bool)

(assert (=> b!849076 (= e!558770 lt!321514)))

(declare-fun b!849079 () Bool)

(assert (=> b!849079 (= e!558771 (or (not (= lt!321514 Nil!9147)) (= lt!321806 (++!2370 lt!321509 lt!321511))))))

(declare-fun d!264808 () Bool)

(assert (=> d!264808 e!558771))

(declare-fun res!388170 () Bool)

(assert (=> d!264808 (=> (not res!388170) (not e!558771))))

(assert (=> d!264808 (= res!388170 (= (content!1339 lt!321806) ((_ map or) (content!1339 (++!2370 lt!321509 lt!321511)) (content!1339 lt!321514))))))

(assert (=> d!264808 (= lt!321806 e!558770)))

(declare-fun c!137959 () Bool)

(assert (=> d!264808 (= c!137959 ((_ is Nil!9147) (++!2370 lt!321509 lt!321511)))))

(assert (=> d!264808 (= (++!2370 (++!2370 lt!321509 lt!321511) lt!321514) lt!321806)))

(assert (= (and d!264808 c!137959) b!849076))

(assert (= (and d!264808 (not c!137959)) b!849077))

(assert (= (and d!264808 res!388170) b!849078))

(assert (= (and b!849078 res!388171) b!849079))

(declare-fun m!1086823 () Bool)

(assert (=> b!849077 m!1086823))

(declare-fun m!1086825 () Bool)

(assert (=> b!849078 m!1086825))

(assert (=> b!849078 m!1085339))

(declare-fun m!1086827 () Bool)

(assert (=> b!849078 m!1086827))

(assert (=> b!849078 m!1086805))

(declare-fun m!1086829 () Bool)

(assert (=> d!264808 m!1086829))

(assert (=> d!264808 m!1085339))

(declare-fun m!1086831 () Bool)

(assert (=> d!264808 m!1086831))

(assert (=> d!264808 m!1086809))

(assert (=> b!848521 d!264808))

(assert (=> b!848521 d!264586))

(declare-fun d!264810 () Bool)

(declare-fun e!558772 () Bool)

(assert (=> d!264810 e!558772))

(declare-fun res!388172 () Bool)

(assert (=> d!264810 (=> (not res!388172) (not e!558772))))

(declare-fun lt!321807 () BalanceConc!6078)

(assert (=> d!264810 (= res!388172 (= (list!3589 lt!321807) (Cons!9147 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0) Nil!9147)))))

(assert (=> d!264810 (= lt!321807 (singleton!251 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0)))))

(assert (=> d!264810 (= (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0)) lt!321807)))

(declare-fun b!849080 () Bool)

(assert (=> b!849080 (= e!558772 (isBalanced!823 (c!137815 lt!321807)))))

(assert (= (and d!264810 res!388172) b!849080))

(declare-fun m!1086833 () Bool)

(assert (=> d!264810 m!1086833))

(assert (=> d!264810 m!1084929))

(declare-fun m!1086835 () Bool)

(assert (=> d!264810 m!1086835))

(declare-fun m!1086837 () Bool)

(assert (=> b!849080 m!1086837))

(assert (=> d!264268 d!264810))

(declare-fun b!849084 () Bool)

(declare-fun e!558773 () Bool)

(declare-fun lt!321808 () BalanceConc!6078)

(assert (=> b!849084 (= e!558773 (= (list!3589 lt!321808) (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321339))) (list!3589 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))))))

(declare-fun d!264812 () Bool)

(assert (=> d!264812 e!558773))

(declare-fun res!388173 () Bool)

(assert (=> d!264812 (=> (not res!388173) (not e!558773))))

(assert (=> d!264812 (= res!388173 (appendAssocInst!193 (c!137815 (charsOf!987 (h!14549 lt!321339))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0)))))))

(assert (=> d!264812 (= lt!321808 (BalanceConc!6079 (++!2371 (c!137815 (charsOf!987 (h!14549 lt!321339))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))))))

(assert (=> d!264812 (= (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))) lt!321808)))

(declare-fun b!849082 () Bool)

(declare-fun res!388176 () Bool)

(assert (=> b!849082 (=> (not res!388176) (not e!558773))))

(assert (=> b!849082 (= res!388176 (<= (height!397 (++!2371 (c!137815 (charsOf!987 (h!14549 lt!321339))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))) (+ (max!0 (height!397 (c!137815 (charsOf!987 (h!14549 lt!321339)))) (height!397 (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))) 1)))))

(declare-fun b!849081 () Bool)

(declare-fun res!388175 () Bool)

(assert (=> b!849081 (=> (not res!388175) (not e!558773))))

(assert (=> b!849081 (= res!388175 (isBalanced!823 (++!2371 (c!137815 (charsOf!987 (h!14549 lt!321339))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))))))

(declare-fun b!849083 () Bool)

(declare-fun res!388174 () Bool)

(assert (=> b!849083 (=> (not res!388174) (not e!558773))))

(assert (=> b!849083 (= res!388174 (>= (height!397 (++!2371 (c!137815 (charsOf!987 (h!14549 lt!321339))) (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))) (max!0 (height!397 (c!137815 (charsOf!987 (h!14549 lt!321339)))) (height!397 (c!137815 (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0)))))))))

(assert (= (and d!264812 res!388173) b!849081))

(assert (= (and b!849081 res!388175) b!849082))

(assert (= (and b!849082 res!388176) b!849083))

(assert (= (and b!849083 res!388174) b!849084))

(declare-fun m!1086839 () Bool)

(assert (=> b!849083 m!1086839))

(declare-fun m!1086841 () Bool)

(assert (=> b!849083 m!1086841))

(declare-fun m!1086843 () Bool)

(assert (=> b!849083 m!1086843))

(assert (=> b!849083 m!1086843))

(assert (=> b!849083 m!1086839))

(declare-fun m!1086845 () Bool)

(assert (=> b!849083 m!1086845))

(assert (=> b!849083 m!1086841))

(declare-fun m!1086847 () Bool)

(assert (=> b!849083 m!1086847))

(declare-fun m!1086849 () Bool)

(assert (=> d!264812 m!1086849))

(assert (=> d!264812 m!1086841))

(declare-fun m!1086851 () Bool)

(assert (=> b!849084 m!1086851))

(assert (=> b!849084 m!1084923))

(declare-fun m!1086853 () Bool)

(assert (=> b!849084 m!1086853))

(assert (=> b!849084 m!1084925))

(declare-fun m!1086855 () Bool)

(assert (=> b!849084 m!1086855))

(assert (=> b!849084 m!1086853))

(assert (=> b!849084 m!1086855))

(declare-fun m!1086857 () Bool)

(assert (=> b!849084 m!1086857))

(assert (=> b!849082 m!1086839))

(assert (=> b!849082 m!1086841))

(assert (=> b!849082 m!1086843))

(assert (=> b!849082 m!1086843))

(assert (=> b!849082 m!1086839))

(assert (=> b!849082 m!1086845))

(assert (=> b!849082 m!1086841))

(assert (=> b!849082 m!1086847))

(assert (=> b!849081 m!1086841))

(assert (=> b!849081 m!1086841))

(declare-fun m!1086859 () Bool)

(assert (=> b!849081 m!1086859))

(assert (=> d!264268 d!264812))

(declare-fun d!264814 () Bool)

(declare-fun lt!321809 () BalanceConc!6078)

(assert (=> d!264814 (= (list!3589 lt!321809) (originalCharacters!2272 (h!14549 lt!321339)))))

(assert (=> d!264814 (= lt!321809 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339)))) (value!55605 (h!14549 lt!321339))))))

(assert (=> d!264814 (= (charsOf!987 (h!14549 lt!321339)) lt!321809)))

(declare-fun b_lambda!28189 () Bool)

(assert (=> (not b_lambda!28189) (not d!264814)))

(declare-fun t!95063 () Bool)

(declare-fun tb!59285 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339))))) t!95063) tb!59285))

(declare-fun b!849085 () Bool)

(declare-fun e!558774 () Bool)

(declare-fun tp!267205 () Bool)

(assert (=> b!849085 (= e!558774 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339)))) (value!55605 (h!14549 lt!321339))))) tp!267205))))

(declare-fun result!68718 () Bool)

(assert (=> tb!59285 (= result!68718 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339)))) (value!55605 (h!14549 lt!321339)))) e!558774))))

(assert (= tb!59285 b!849085))

(declare-fun m!1086861 () Bool)

(assert (=> b!849085 m!1086861))

(declare-fun m!1086863 () Bool)

(assert (=> tb!59285 m!1086863))

(assert (=> d!264814 t!95063))

(declare-fun b_and!74229 () Bool)

(assert (= b_and!74227 (and (=> t!95063 result!68718) b_and!74229)))

(declare-fun tb!59287 () Bool)

(declare-fun t!95065 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339))))) t!95065) tb!59287))

(declare-fun result!68720 () Bool)

(assert (= result!68720 result!68718))

(assert (=> d!264814 t!95065))

(declare-fun b_and!74231 () Bool)

(assert (= b_and!74219 (and (=> t!95065 result!68720) b_and!74231)))

(declare-fun t!95067 () Bool)

(declare-fun tb!59289 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339))))) t!95067) tb!59289))

(declare-fun result!68722 () Bool)

(assert (= result!68722 result!68718))

(assert (=> d!264814 t!95067))

(declare-fun b_and!74233 () Bool)

(assert (= b_and!74221 (and (=> t!95067 result!68722) b_and!74233)))

(declare-fun tb!59291 () Bool)

(declare-fun t!95069 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339))))) t!95069) tb!59291))

(declare-fun result!68724 () Bool)

(assert (= result!68724 result!68718))

(assert (=> d!264814 t!95069))

(declare-fun b_and!74235 () Bool)

(assert (= b_and!74225 (and (=> t!95069 result!68724) b_and!74235)))

(declare-fun tb!59293 () Bool)

(declare-fun t!95071 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339))))) t!95071) tb!59293))

(declare-fun result!68726 () Bool)

(assert (= result!68726 result!68718))

(assert (=> d!264814 t!95071))

(declare-fun b_and!74237 () Bool)

(assert (= b_and!74223 (and (=> t!95071 result!68726) b_and!74237)))

(declare-fun m!1086865 () Bool)

(assert (=> d!264814 m!1086865))

(declare-fun m!1086867 () Bool)

(assert (=> d!264814 m!1086867))

(assert (=> d!264268 d!264814))

(declare-fun d!264816 () Bool)

(declare-fun lt!321814 () Bool)

(assert (=> d!264816 (= lt!321814 (prefixMatch!7 (rulesRegex!20 thiss!20117 rules!2621) (list!3589 (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))))))))

(assert (=> d!264816 (= lt!321814 (prefixMatchZipperSequence!28 (focus!27 (rulesRegex!20 thiss!20117 rules!2621)) (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))) 0))))

(declare-fun lt!321810 () Unit!13623)

(declare-fun lt!321818 () Unit!13623)

(assert (=> d!264816 (= lt!321810 lt!321818)))

(declare-fun lt!321813 () (InoxSet Context!864))

(declare-fun lt!321811 () List!9163)

(assert (=> d!264816 (= (prefixMatch!7 (rulesRegex!20 thiss!20117 rules!2621) lt!321811) (prefixMatchZipper!7 lt!321813 lt!321811))))

(declare-fun lt!321815 () List!9169)

(assert (=> d!264816 (= lt!321818 (prefixMatchZipperRegexEquiv!7 lt!321813 lt!321815 (rulesRegex!20 thiss!20117 rules!2621) lt!321811))))

(assert (=> d!264816 (= lt!321811 (list!3589 (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0)))))))

(assert (=> d!264816 (= lt!321815 (toList!573 (focus!27 (rulesRegex!20 thiss!20117 rules!2621))))))

(assert (=> d!264816 (= lt!321813 (focus!27 (rulesRegex!20 thiss!20117 rules!2621)))))

(declare-fun lt!321816 () Unit!13623)

(declare-fun lt!321819 () Unit!13623)

(assert (=> d!264816 (= lt!321816 lt!321819)))

(declare-fun lt!321817 () (InoxSet Context!864))

(declare-fun lt!321812 () Int)

(assert (=> d!264816 (= (prefixMatchZipper!7 lt!321817 (dropList!269 (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))) lt!321812)) (prefixMatchZipperSequence!28 lt!321817 (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))) lt!321812))))

(assert (=> d!264816 (= lt!321819 (lemmaprefixMatchZipperSequenceEquivalent!7 lt!321817 (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0))) lt!321812))))

(assert (=> d!264816 (= lt!321812 0)))

(assert (=> d!264816 (= lt!321817 (focus!27 (rulesRegex!20 thiss!20117 rules!2621)))))

(assert (=> d!264816 (validRegex!657 (rulesRegex!20 thiss!20117 rules!2621))))

(assert (=> d!264816 (= (prefixMatchZipperSequence!27 (rulesRegex!20 thiss!20117 rules!2621) (++!2368 (charsOf!987 (h!14549 lt!321339)) (singletonSeq!532 (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0)))) lt!321814)))

(declare-fun bs!230901 () Bool)

(assert (= bs!230901 d!264816))

(assert (=> bs!230901 m!1084917))

(declare-fun m!1086869 () Bool)

(assert (=> bs!230901 m!1086869))

(assert (=> bs!230901 m!1084919))

(declare-fun m!1086871 () Bool)

(assert (=> bs!230901 m!1086871))

(assert (=> bs!230901 m!1084917))

(declare-fun m!1086873 () Bool)

(assert (=> bs!230901 m!1086873))

(declare-fun m!1086875 () Bool)

(assert (=> bs!230901 m!1086875))

(assert (=> bs!230901 m!1084919))

(declare-fun m!1086877 () Bool)

(assert (=> bs!230901 m!1086877))

(assert (=> bs!230901 m!1084919))

(declare-fun m!1086879 () Bool)

(assert (=> bs!230901 m!1086879))

(assert (=> bs!230901 m!1084919))

(declare-fun m!1086881 () Bool)

(assert (=> bs!230901 m!1086881))

(assert (=> bs!230901 m!1084917))

(assert (=> bs!230901 m!1085801))

(assert (=> bs!230901 m!1085801))

(assert (=> bs!230901 m!1084919))

(declare-fun m!1086883 () Bool)

(assert (=> bs!230901 m!1086883))

(assert (=> bs!230901 m!1084917))

(assert (=> bs!230901 m!1085805))

(assert (=> bs!230901 m!1085801))

(assert (=> bs!230901 m!1085807))

(assert (=> bs!230901 m!1084917))

(assert (=> bs!230901 m!1086871))

(declare-fun m!1086885 () Bool)

(assert (=> bs!230901 m!1086885))

(assert (=> bs!230901 m!1086877))

(declare-fun m!1086887 () Bool)

(assert (=> bs!230901 m!1086887))

(assert (=> d!264268 d!264816))

(assert (=> d!264268 d!264492))

(assert (=> d!264268 d!264498))

(declare-fun d!264818 () Bool)

(declare-fun lt!321820 () C!4868)

(assert (=> d!264818 (= lt!321820 (apply!1868 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321339)))) 0))))

(assert (=> d!264818 (= lt!321820 (apply!1869 (c!137815 (charsOf!987 (h!14549 (t!94856 lt!321339)))) 0))))

(declare-fun e!558775 () Bool)

(assert (=> d!264818 e!558775))

(declare-fun res!388177 () Bool)

(assert (=> d!264818 (=> (not res!388177) (not e!558775))))

(assert (=> d!264818 (= res!388177 (<= 0 0))))

(assert (=> d!264818 (= (apply!1866 (charsOf!987 (h!14549 (t!94856 lt!321339))) 0) lt!321820)))

(declare-fun b!849086 () Bool)

(assert (=> b!849086 (= e!558775 (< 0 (size!7626 (charsOf!987 (h!14549 (t!94856 lt!321339))))))))

(assert (= (and d!264818 res!388177) b!849086))

(assert (=> d!264818 m!1084927))

(assert (=> d!264818 m!1085729))

(assert (=> d!264818 m!1085729))

(declare-fun m!1086889 () Bool)

(assert (=> d!264818 m!1086889))

(declare-fun m!1086891 () Bool)

(assert (=> d!264818 m!1086891))

(assert (=> b!849086 m!1084927))

(declare-fun m!1086893 () Bool)

(assert (=> b!849086 m!1086893))

(assert (=> d!264268 d!264818))

(declare-fun bs!230902 () Bool)

(declare-fun d!264820 () Bool)

(assert (= bs!230902 (and d!264820 d!264262)))

(declare-fun lambda!25342 () Int)

(assert (=> bs!230902 (= lambda!25342 lambda!25286)))

(declare-fun bs!230903 () Bool)

(assert (= bs!230903 (and d!264820 d!264296)))

(assert (=> bs!230903 (= lambda!25342 lambda!25287)))

(declare-fun bs!230904 () Bool)

(assert (= bs!230904 (and d!264820 d!264328)))

(assert (=> bs!230904 (= lambda!25342 lambda!25298)))

(declare-fun bs!230905 () Bool)

(assert (= bs!230905 (and d!264820 d!264318)))

(assert (=> bs!230905 (= lambda!25342 lambda!25288)))

(declare-fun bs!230906 () Bool)

(assert (= bs!230906 (and d!264820 b!848136)))

(assert (=> bs!230906 (not (= lambda!25342 lambda!25280))))

(declare-fun bs!230907 () Bool)

(assert (= bs!230907 (and d!264820 d!264422)))

(assert (=> bs!230907 (= lambda!25342 lambda!25305)))

(declare-fun bs!230908 () Bool)

(assert (= bs!230908 (and d!264820 d!264736)))

(assert (=> bs!230908 (= lambda!25342 lambda!25336)))

(declare-fun bs!230909 () Bool)

(assert (= bs!230909 (and d!264820 d!264738)))

(assert (=> bs!230909 (= lambda!25342 lambda!25337)))

(declare-fun bs!230910 () Bool)

(assert (= bs!230910 (and d!264820 d!264786)))

(assert (=> bs!230910 (= lambda!25342 lambda!25340)))

(declare-fun bs!230911 () Bool)

(assert (= bs!230911 (and d!264820 d!264424)))

(assert (=> bs!230911 (= lambda!25342 lambda!25306)))

(declare-fun b!849091 () Bool)

(declare-fun e!558780 () Bool)

(assert (=> b!849091 (= e!558780 true)))

(declare-fun b!849090 () Bool)

(declare-fun e!558779 () Bool)

(assert (=> b!849090 (= e!558779 e!558780)))

(declare-fun b!849089 () Bool)

(declare-fun e!558778 () Bool)

(assert (=> b!849089 (= e!558778 e!558779)))

(assert (=> d!264820 e!558778))

(assert (= b!849090 b!849091))

(assert (= b!849089 b!849090))

(assert (= (and d!264820 ((_ is Cons!9149) rules!2621)) b!849089))

(assert (=> b!849091 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25342))))

(assert (=> b!849091 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25342))))

(assert (=> d!264820 true))

(declare-fun lt!321821 () Bool)

(assert (=> d!264820 (= lt!321821 (forall!2145 lt!321345 lambda!25342))))

(declare-fun e!558776 () Bool)

(assert (=> d!264820 (= lt!321821 e!558776)))

(declare-fun res!388179 () Bool)

(assert (=> d!264820 (=> res!388179 e!558776)))

(assert (=> d!264820 (= res!388179 (not ((_ is Cons!9148) lt!321345)))))

(assert (=> d!264820 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264820 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 lt!321345) lt!321821)))

(declare-fun b!849087 () Bool)

(declare-fun e!558777 () Bool)

(assert (=> b!849087 (= e!558776 e!558777)))

(declare-fun res!388178 () Bool)

(assert (=> b!849087 (=> (not res!388178) (not e!558777))))

(assert (=> b!849087 (= res!388178 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321345)))))

(declare-fun b!849088 () Bool)

(assert (=> b!849088 (= e!558777 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 lt!321345)))))

(assert (= (and d!264820 (not res!388179)) b!849087))

(assert (= (and b!849087 res!388178) b!849088))

(declare-fun m!1086895 () Bool)

(assert (=> d!264820 m!1086895))

(assert (=> d!264820 m!1084857))

(declare-fun m!1086897 () Bool)

(assert (=> b!849087 m!1086897))

(declare-fun m!1086899 () Bool)

(assert (=> b!849088 m!1086899))

(assert (=> b!848238 d!264820))

(declare-fun d!264822 () Bool)

(assert (=> d!264822 (= (inv!11624 (tag!1978 (h!14550 (t!94857 rules!2621)))) (= (mod (str.len (value!55604 (tag!1978 (h!14550 (t!94857 rules!2621))))) 2) 0))))

(assert (=> b!848576 d!264822))

(declare-fun d!264824 () Bool)

(declare-fun res!388180 () Bool)

(declare-fun e!558781 () Bool)

(assert (=> d!264824 (=> (not res!388180) (not e!558781))))

(assert (=> d!264824 (= res!388180 (semiInverseModEq!666 (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toValue!2745 (transformation!1716 (h!14550 (t!94857 rules!2621))))))))

(assert (=> d!264824 (= (inv!11628 (transformation!1716 (h!14550 (t!94857 rules!2621)))) e!558781)))

(declare-fun b!849092 () Bool)

(assert (=> b!849092 (= e!558781 (equivClasses!633 (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toValue!2745 (transformation!1716 (h!14550 (t!94857 rules!2621))))))))

(assert (= (and d!264824 res!388180) b!849092))

(declare-fun m!1086901 () Bool)

(assert (=> d!264824 m!1086901))

(declare-fun m!1086903 () Bool)

(assert (=> b!849092 m!1086903))

(assert (=> b!848576 d!264824))

(declare-fun d!264826 () Bool)

(assert (=> d!264826 (= (isEmpty!5404 (originalCharacters!2272 (h!14549 l!5107))) ((_ is Nil!9147) (originalCharacters!2272 (h!14549 l!5107))))))

(assert (=> d!264290 d!264826))

(declare-fun bs!230912 () Bool)

(declare-fun d!264828 () Bool)

(assert (= bs!230912 (and d!264828 d!264262)))

(declare-fun lambda!25343 () Int)

(assert (=> bs!230912 (= lambda!25343 lambda!25286)))

(declare-fun bs!230913 () Bool)

(assert (= bs!230913 (and d!264828 d!264296)))

(assert (=> bs!230913 (= lambda!25343 lambda!25287)))

(declare-fun bs!230914 () Bool)

(assert (= bs!230914 (and d!264828 d!264328)))

(assert (=> bs!230914 (= lambda!25343 lambda!25298)))

(declare-fun bs!230915 () Bool)

(assert (= bs!230915 (and d!264828 d!264820)))

(assert (=> bs!230915 (= lambda!25343 lambda!25342)))

(declare-fun bs!230916 () Bool)

(assert (= bs!230916 (and d!264828 d!264318)))

(assert (=> bs!230916 (= lambda!25343 lambda!25288)))

(declare-fun bs!230917 () Bool)

(assert (= bs!230917 (and d!264828 b!848136)))

(assert (=> bs!230917 (not (= lambda!25343 lambda!25280))))

(declare-fun bs!230918 () Bool)

(assert (= bs!230918 (and d!264828 d!264422)))

(assert (=> bs!230918 (= lambda!25343 lambda!25305)))

(declare-fun bs!230919 () Bool)

(assert (= bs!230919 (and d!264828 d!264736)))

(assert (=> bs!230919 (= lambda!25343 lambda!25336)))

(declare-fun bs!230920 () Bool)

(assert (= bs!230920 (and d!264828 d!264738)))

(assert (=> bs!230920 (= lambda!25343 lambda!25337)))

(declare-fun bs!230921 () Bool)

(assert (= bs!230921 (and d!264828 d!264786)))

(assert (=> bs!230921 (= lambda!25343 lambda!25340)))

(declare-fun bs!230922 () Bool)

(assert (= bs!230922 (and d!264828 d!264424)))

(assert (=> bs!230922 (= lambda!25343 lambda!25306)))

(declare-fun b!849097 () Bool)

(declare-fun e!558786 () Bool)

(assert (=> b!849097 (= e!558786 true)))

(declare-fun b!849096 () Bool)

(declare-fun e!558785 () Bool)

(assert (=> b!849096 (= e!558785 e!558786)))

(declare-fun b!849095 () Bool)

(declare-fun e!558784 () Bool)

(assert (=> b!849095 (= e!558784 e!558785)))

(assert (=> d!264828 e!558784))

(assert (= b!849096 b!849097))

(assert (= b!849095 b!849096))

(assert (= (and d!264828 ((_ is Cons!9149) rules!2621)) b!849095))

(assert (=> b!849097 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25343))))

(assert (=> b!849097 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 rules!2621)))) (dynLambda!4249 order!5845 lambda!25343))))

(assert (=> d!264828 true))

(declare-fun lt!321822 () Bool)

(assert (=> d!264828 (= lt!321822 (forall!2145 (t!94856 lt!321342) lambda!25343))))

(declare-fun e!558782 () Bool)

(assert (=> d!264828 (= lt!321822 e!558782)))

(declare-fun res!388182 () Bool)

(assert (=> d!264828 (=> res!388182 e!558782)))

(assert (=> d!264828 (= res!388182 (not ((_ is Cons!9148) (t!94856 lt!321342))))))

(assert (=> d!264828 (not (isEmpty!5400 rules!2621))))

(assert (=> d!264828 (= (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 lt!321342)) lt!321822)))

(declare-fun b!849093 () Bool)

(declare-fun e!558783 () Bool)

(assert (=> b!849093 (= e!558782 e!558783)))

(declare-fun res!388181 () Bool)

(assert (=> b!849093 (=> (not res!388181) (not e!558783))))

(assert (=> b!849093 (= res!388181 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 lt!321342))))))

(declare-fun b!849094 () Bool)

(assert (=> b!849094 (= e!558783 (rulesProduceEachTokenIndividuallyList!406 thiss!20117 rules!2621 (t!94856 (t!94856 lt!321342))))))

(assert (= (and d!264828 (not res!388182)) b!849093))

(assert (= (and b!849093 res!388181) b!849094))

(declare-fun m!1086905 () Bool)

(assert (=> d!264828 m!1086905))

(assert (=> d!264828 m!1084857))

(assert (=> b!849093 m!1085157))

(declare-fun m!1086907 () Bool)

(assert (=> b!849094 m!1086907))

(assert (=> b!848203 d!264828))

(declare-fun d!264830 () Bool)

(declare-fun res!388183 () Bool)

(declare-fun e!558787 () Bool)

(assert (=> d!264830 (=> res!388183 e!558787)))

(assert (=> d!264830 (= res!388183 (not ((_ is Cons!9149) (t!94857 rules!2621))))))

(assert (=> d!264830 (= (sepAndNonSepRulesDisjointChars!516 rules!2621 (t!94857 rules!2621)) e!558787)))

(declare-fun b!849098 () Bool)

(declare-fun e!558788 () Bool)

(assert (=> b!849098 (= e!558787 e!558788)))

(declare-fun res!388184 () Bool)

(assert (=> b!849098 (=> (not res!388184) (not e!558788))))

(assert (=> b!849098 (= res!388184 (ruleDisjointCharsFromAllFromOtherType!233 (h!14550 (t!94857 rules!2621)) rules!2621))))

(declare-fun b!849099 () Bool)

(assert (=> b!849099 (= e!558788 (sepAndNonSepRulesDisjointChars!516 rules!2621 (t!94857 (t!94857 rules!2621))))))

(assert (= (and d!264830 (not res!388183)) b!849098))

(assert (= (and b!849098 res!388184) b!849099))

(declare-fun m!1086909 () Bool)

(assert (=> b!849098 m!1086909))

(declare-fun m!1086911 () Bool)

(assert (=> b!849099 m!1086911))

(assert (=> b!848512 d!264830))

(declare-fun b!849101 () Bool)

(declare-fun e!558791 () Bool)

(assert (=> b!849101 (= e!558791 (inv!16 (value!55605 (h!14549 (t!94856 l!5107)))))))

(declare-fun b!849102 () Bool)

(declare-fun e!558790 () Bool)

(assert (=> b!849102 (= e!558791 e!558790)))

(declare-fun c!137960 () Bool)

(assert (=> b!849102 (= c!137960 ((_ is IntegerValue!5347) (value!55605 (h!14549 (t!94856 l!5107)))))))

(declare-fun b!849100 () Bool)

(declare-fun res!388185 () Bool)

(declare-fun e!558789 () Bool)

(assert (=> b!849100 (=> res!388185 e!558789)))

(assert (=> b!849100 (= res!388185 (not ((_ is IntegerValue!5348) (value!55605 (h!14549 (t!94856 l!5107))))))))

(assert (=> b!849100 (= e!558790 e!558789)))

(declare-fun d!264832 () Bool)

(declare-fun c!137961 () Bool)

(assert (=> d!264832 (= c!137961 ((_ is IntegerValue!5346) (value!55605 (h!14549 (t!94856 l!5107)))))))

(assert (=> d!264832 (= (inv!21 (value!55605 (h!14549 (t!94856 l!5107)))) e!558791)))

(declare-fun b!849103 () Bool)

(assert (=> b!849103 (= e!558789 (inv!15 (value!55605 (h!14549 (t!94856 l!5107)))))))

(declare-fun b!849104 () Bool)

(assert (=> b!849104 (= e!558790 (inv!17 (value!55605 (h!14549 (t!94856 l!5107)))))))

(assert (= (and d!264832 c!137961) b!849101))

(assert (= (and d!264832 (not c!137961)) b!849102))

(assert (= (and b!849102 c!137960) b!849104))

(assert (= (and b!849102 (not c!137960)) b!849100))

(assert (= (and b!849100 (not res!388185)) b!849103))

(declare-fun m!1086913 () Bool)

(assert (=> b!849101 m!1086913))

(declare-fun m!1086915 () Bool)

(assert (=> b!849103 m!1086915))

(declare-fun m!1086917 () Bool)

(assert (=> b!849104 m!1086917))

(assert (=> b!848560 d!264832))

(declare-fun d!264834 () Bool)

(declare-fun res!388186 () Bool)

(declare-fun e!558792 () Bool)

(assert (=> d!264834 (=> res!388186 e!558792)))

(assert (=> d!264834 (= res!388186 (or (not ((_ is Cons!9148) (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))) (not ((_ is Cons!9148) (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))))))

(assert (=> d!264834 (= (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297) rules!2621) e!558792)))

(declare-fun b!849105 () Bool)

(declare-fun e!558793 () Bool)

(assert (=> b!849105 (= e!558792 e!558793)))

(declare-fun res!388187 () Bool)

(assert (=> b!849105 (=> (not res!388187) (not e!558793))))

(assert (=> b!849105 (= res!388187 (separableTokensPredicate!58 thiss!20117 (h!14549 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297)) (h!14549 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))) rules!2621))))

(declare-fun lt!321830 () Unit!13623)

(declare-fun Unit!13640 () Unit!13623)

(assert (=> b!849105 (= lt!321830 Unit!13640)))

(assert (=> b!849105 (> (size!7626 (charsOf!987 (h!14549 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))) 0)))

(declare-fun lt!321834 () Unit!13623)

(declare-fun Unit!13641 () Unit!13623)

(assert (=> b!849105 (= lt!321834 Unit!13641)))

(assert (=> b!849105 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))))

(declare-fun lt!321832 () Unit!13623)

(declare-fun Unit!13642 () Unit!13623)

(assert (=> b!849105 (= lt!321832 Unit!13642)))

(assert (=> b!849105 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297)))))

(declare-fun lt!321835 () Unit!13623)

(declare-fun lt!321833 () Unit!13623)

(assert (=> b!849105 (= lt!321835 lt!321833)))

(assert (=> b!849105 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))))

(assert (=> b!849105 (= lt!321833 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297) (h!14549 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297)))))))

(declare-fun lt!321831 () Unit!13623)

(declare-fun lt!321829 () Unit!13623)

(assert (=> b!849105 (= lt!321831 lt!321829)))

(assert (=> b!849105 (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297)))))

(assert (=> b!849105 (= lt!321829 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!228 thiss!20117 rules!2621 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297) (h!14549 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))))))

(declare-fun b!849106 () Bool)

(assert (=> b!849106 (= e!558793 (tokensListTwoByTwoPredicateSeparableList!40 thiss!20117 (Cons!9148 (h!14549 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297))) (t!94856 (t!94856 (withSeparatorTokenList!48 thiss!20117 lt!321345 separatorToken!297)))) rules!2621))))

(assert (= (and d!264834 (not res!388186)) b!849105))

(assert (= (and b!849105 res!388187) b!849106))

(declare-fun m!1086923 () Bool)

(assert (=> b!849105 m!1086923))

(declare-fun m!1086927 () Bool)

(assert (=> b!849105 m!1086927))

(assert (=> b!849105 m!1086759))

(assert (=> b!849105 m!1084859))

(declare-fun m!1086935 () Bool)

(assert (=> b!849105 m!1086935))

(assert (=> b!849105 m!1086923))

(assert (=> b!849105 m!1084859))

(declare-fun m!1086939 () Bool)

(assert (=> b!849105 m!1086939))

(declare-fun m!1086941 () Bool)

(assert (=> b!849105 m!1086941))

(declare-fun m!1086945 () Bool)

(assert (=> b!849105 m!1086945))

(declare-fun m!1086947 () Bool)

(assert (=> b!849106 m!1086947))

(assert (=> b!848236 d!264834))

(assert (=> b!848236 d!264370))

(assert (=> b!848236 d!264786))

(assert (=> b!848236 d!264244))

(declare-fun b!849112 () Bool)

(declare-fun e!558796 () List!9163)

(assert (=> b!849112 (= e!558796 (Cons!9147 (h!14548 (list!3589 (charsOf!987 (h!14549 lt!321427)))) (++!2370 (t!94855 (list!3589 (charsOf!987 (h!14549 lt!321427)))) (printList!470 thiss!20117 (t!94856 lt!321427)))))))

(declare-fun b!849113 () Bool)

(declare-fun res!388191 () Bool)

(declare-fun e!558797 () Bool)

(assert (=> b!849113 (=> (not res!388191) (not e!558797))))

(declare-fun lt!321838 () List!9163)

(assert (=> b!849113 (= res!388191 (= (size!7625 lt!321838) (+ (size!7625 (list!3589 (charsOf!987 (h!14549 lt!321427)))) (size!7625 (printList!470 thiss!20117 (t!94856 lt!321427))))))))

(declare-fun b!849111 () Bool)

(assert (=> b!849111 (= e!558796 (printList!470 thiss!20117 (t!94856 lt!321427)))))

(declare-fun b!849114 () Bool)

(assert (=> b!849114 (= e!558797 (or (not (= (printList!470 thiss!20117 (t!94856 lt!321427)) Nil!9147)) (= lt!321838 (list!3589 (charsOf!987 (h!14549 lt!321427))))))))

(declare-fun d!264842 () Bool)

(assert (=> d!264842 e!558797))

(declare-fun res!388190 () Bool)

(assert (=> d!264842 (=> (not res!388190) (not e!558797))))

(assert (=> d!264842 (= res!388190 (= (content!1339 lt!321838) ((_ map or) (content!1339 (list!3589 (charsOf!987 (h!14549 lt!321427)))) (content!1339 (printList!470 thiss!20117 (t!94856 lt!321427))))))))

(assert (=> d!264842 (= lt!321838 e!558796)))

(declare-fun c!137963 () Bool)

(assert (=> d!264842 (= c!137963 ((_ is Nil!9147) (list!3589 (charsOf!987 (h!14549 lt!321427)))))))

(assert (=> d!264842 (= (++!2370 (list!3589 (charsOf!987 (h!14549 lt!321427))) (printList!470 thiss!20117 (t!94856 lt!321427))) lt!321838)))

(assert (= (and d!264842 c!137963) b!849111))

(assert (= (and d!264842 (not c!137963)) b!849112))

(assert (= (and d!264842 res!388190) b!849113))

(assert (= (and b!849113 res!388191) b!849114))

(assert (=> b!849112 m!1085055))

(declare-fun m!1086953 () Bool)

(assert (=> b!849112 m!1086953))

(declare-fun m!1086955 () Bool)

(assert (=> b!849113 m!1086955))

(assert (=> b!849113 m!1085053))

(declare-fun m!1086957 () Bool)

(assert (=> b!849113 m!1086957))

(assert (=> b!849113 m!1085055))

(declare-fun m!1086959 () Bool)

(assert (=> b!849113 m!1086959))

(declare-fun m!1086961 () Bool)

(assert (=> d!264842 m!1086961))

(assert (=> d!264842 m!1085053))

(declare-fun m!1086963 () Bool)

(assert (=> d!264842 m!1086963))

(assert (=> d!264842 m!1085055))

(declare-fun m!1086965 () Bool)

(assert (=> d!264842 m!1086965))

(assert (=> b!848299 d!264842))

(declare-fun d!264844 () Bool)

(assert (=> d!264844 (= (list!3589 (charsOf!987 (h!14549 lt!321427))) (list!3591 (c!137815 (charsOf!987 (h!14549 lt!321427)))))))

(declare-fun bs!230925 () Bool)

(assert (= bs!230925 d!264844))

(declare-fun m!1086967 () Bool)

(assert (=> bs!230925 m!1086967))

(assert (=> b!848299 d!264844))

(declare-fun d!264846 () Bool)

(declare-fun lt!321839 () BalanceConc!6078)

(assert (=> d!264846 (= (list!3589 lt!321839) (originalCharacters!2272 (h!14549 lt!321427)))))

(assert (=> d!264846 (= lt!321839 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427)))) (value!55605 (h!14549 lt!321427))))))

(assert (=> d!264846 (= (charsOf!987 (h!14549 lt!321427)) lt!321839)))

(declare-fun b_lambda!28193 () Bool)

(assert (=> (not b_lambda!28193) (not d!264846)))

(declare-fun tb!59305 () Bool)

(declare-fun t!95083 () Bool)

(assert (=> (and b!848562 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427))))) t!95083) tb!59305))

(declare-fun b!849118 () Bool)

(declare-fun e!558800 () Bool)

(declare-fun tp!267207 () Bool)

(assert (=> b!849118 (= e!558800 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427)))) (value!55605 (h!14549 lt!321427))))) tp!267207))))

(declare-fun result!68738 () Bool)

(assert (=> tb!59305 (= result!68738 (and (inv!11632 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427)))) (value!55605 (h!14549 lt!321427)))) e!558800))))

(assert (= tb!59305 b!849118))

(declare-fun m!1086979 () Bool)

(assert (=> b!849118 m!1086979))

(declare-fun m!1086983 () Bool)

(assert (=> tb!59305 m!1086983))

(assert (=> d!264846 t!95083))

(declare-fun b_and!74249 () Bool)

(assert (= b_and!74237 (and (=> t!95083 result!68738) b_and!74249)))

(declare-fun tb!59307 () Bool)

(declare-fun t!95085 () Bool)

(assert (=> (and b!848140 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427))))) t!95085) tb!59307))

(declare-fun result!68740 () Bool)

(assert (= result!68740 result!68738))

(assert (=> d!264846 t!95085))

(declare-fun b_and!74251 () Bool)

(assert (= b_and!74231 (and (=> t!95085 result!68740) b_and!74251)))

(declare-fun t!95087 () Bool)

(declare-fun tb!59309 () Bool)

(assert (=> (and b!848158 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427))))) t!95087) tb!59309))

(declare-fun result!68742 () Bool)

(assert (= result!68742 result!68738))

(assert (=> d!264846 t!95087))

(declare-fun b_and!74253 () Bool)

(assert (= b_and!74235 (and (=> t!95087 result!68742) b_and!74253)))

(declare-fun t!95089 () Bool)

(declare-fun tb!59311 () Bool)

(assert (=> (and b!848577 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427))))) t!95089) tb!59311))

(declare-fun result!68744 () Bool)

(assert (= result!68744 result!68738))

(assert (=> d!264846 t!95089))

(declare-fun b_and!74255 () Bool)

(assert (= b_and!74229 (and (=> t!95089 result!68744) b_and!74255)))

(declare-fun tb!59313 () Bool)

(declare-fun t!95091 () Bool)

(assert (=> (and b!848150 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427))))) t!95091) tb!59313))

(declare-fun result!68746 () Bool)

(assert (= result!68746 result!68738))

(assert (=> d!264846 t!95091))

(declare-fun b_and!74257 () Bool)

(assert (= b_and!74233 (and (=> t!95091 result!68746) b_and!74257)))

(declare-fun m!1086985 () Bool)

(assert (=> d!264846 m!1086985))

(declare-fun m!1086987 () Bool)

(assert (=> d!264846 m!1086987))

(assert (=> b!848299 d!264846))

(declare-fun d!264854 () Bool)

(declare-fun c!137965 () Bool)

(assert (=> d!264854 (= c!137965 ((_ is Cons!9148) (t!94856 lt!321427)))))

(declare-fun e!558801 () List!9163)

(assert (=> d!264854 (= (printList!470 thiss!20117 (t!94856 lt!321427)) e!558801)))

(declare-fun b!849119 () Bool)

(assert (=> b!849119 (= e!558801 (++!2370 (list!3589 (charsOf!987 (h!14549 (t!94856 lt!321427)))) (printList!470 thiss!20117 (t!94856 (t!94856 lt!321427)))))))

(declare-fun b!849120 () Bool)

(assert (=> b!849120 (= e!558801 Nil!9147)))

(assert (= (and d!264854 c!137965) b!849119))

(assert (= (and d!264854 (not c!137965)) b!849120))

(declare-fun m!1086989 () Bool)

(assert (=> b!849119 m!1086989))

(assert (=> b!849119 m!1086989))

(declare-fun m!1086991 () Bool)

(assert (=> b!849119 m!1086991))

(declare-fun m!1086993 () Bool)

(assert (=> b!849119 m!1086993))

(assert (=> b!849119 m!1086991))

(assert (=> b!849119 m!1086993))

(declare-fun m!1086995 () Bool)

(assert (=> b!849119 m!1086995))

(assert (=> b!848299 d!264854))

(declare-fun d!264856 () Bool)

(declare-fun lt!321840 () Bool)

(assert (=> d!264856 (= lt!321840 (isEmpty!5404 (list!3589 (_2!6008 lt!321506))))))

(assert (=> d!264856 (= lt!321840 (isEmpty!5406 (c!137815 (_2!6008 lt!321506))))))

(assert (=> d!264856 (= (isEmpty!5405 (_2!6008 lt!321506)) lt!321840)))

(declare-fun bs!230927 () Bool)

(assert (= bs!230927 d!264856))

(declare-fun m!1086997 () Bool)

(assert (=> bs!230927 m!1086997))

(assert (=> bs!230927 m!1086997))

(declare-fun m!1086999 () Bool)

(assert (=> bs!230927 m!1086999))

(declare-fun m!1087001 () Bool)

(assert (=> bs!230927 m!1087001))

(assert (=> b!848505 d!264856))

(declare-fun b!849121 () Bool)

(declare-fun e!558802 () Bool)

(assert (=> b!849121 (= e!558802 tp_is_empty!3965)))

(assert (=> b!848543 (= tp!267147 e!558802)))

(declare-fun b!849124 () Bool)

(declare-fun tp!267209 () Bool)

(declare-fun tp!267212 () Bool)

(assert (=> b!849124 (= e!558802 (and tp!267209 tp!267212))))

(declare-fun b!849122 () Bool)

(declare-fun tp!267208 () Bool)

(declare-fun tp!267211 () Bool)

(assert (=> b!849122 (= e!558802 (and tp!267208 tp!267211))))

(declare-fun b!849123 () Bool)

(declare-fun tp!267210 () Bool)

(assert (=> b!849123 (= e!558802 tp!267210)))

(assert (= (and b!848543 ((_ is ElementMatch!2149) (reg!2478 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849121))

(assert (= (and b!848543 ((_ is Concat!3932) (reg!2478 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849122))

(assert (= (and b!848543 ((_ is Star!2149) (reg!2478 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849123))

(assert (= (and b!848543 ((_ is Union!2149) (reg!2478 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849124))

(declare-fun b!849125 () Bool)

(declare-fun e!558803 () Bool)

(assert (=> b!849125 (= e!558803 tp_is_empty!3965)))

(assert (=> b!848542 (= tp!267145 e!558803)))

(declare-fun b!849128 () Bool)

(declare-fun tp!267214 () Bool)

(declare-fun tp!267217 () Bool)

(assert (=> b!849128 (= e!558803 (and tp!267214 tp!267217))))

(declare-fun b!849126 () Bool)

(declare-fun tp!267213 () Bool)

(declare-fun tp!267216 () Bool)

(assert (=> b!849126 (= e!558803 (and tp!267213 tp!267216))))

(declare-fun b!849127 () Bool)

(declare-fun tp!267215 () Bool)

(assert (=> b!849127 (= e!558803 tp!267215)))

(assert (= (and b!848542 ((_ is ElementMatch!2149) (regOne!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849125))

(assert (= (and b!848542 ((_ is Concat!3932) (regOne!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849126))

(assert (= (and b!848542 ((_ is Star!2149) (regOne!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849127))

(assert (= (and b!848542 ((_ is Union!2149) (regOne!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849128))

(declare-fun b!849129 () Bool)

(declare-fun e!558804 () Bool)

(assert (=> b!849129 (= e!558804 tp_is_empty!3965)))

(assert (=> b!848542 (= tp!267148 e!558804)))

(declare-fun b!849132 () Bool)

(declare-fun tp!267219 () Bool)

(declare-fun tp!267222 () Bool)

(assert (=> b!849132 (= e!558804 (and tp!267219 tp!267222))))

(declare-fun b!849130 () Bool)

(declare-fun tp!267218 () Bool)

(declare-fun tp!267221 () Bool)

(assert (=> b!849130 (= e!558804 (and tp!267218 tp!267221))))

(declare-fun b!849131 () Bool)

(declare-fun tp!267220 () Bool)

(assert (=> b!849131 (= e!558804 tp!267220)))

(assert (= (and b!848542 ((_ is ElementMatch!2149) (regTwo!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849129))

(assert (= (and b!848542 ((_ is Concat!3932) (regTwo!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849130))

(assert (= (and b!848542 ((_ is Star!2149) (regTwo!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849131))

(assert (= (and b!848542 ((_ is Union!2149) (regTwo!4810 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849132))

(declare-fun b!849133 () Bool)

(declare-fun e!558805 () Bool)

(assert (=> b!849133 (= e!558805 tp_is_empty!3965)))

(assert (=> b!848561 (= tp!267166 e!558805)))

(declare-fun b!849136 () Bool)

(declare-fun tp!267224 () Bool)

(declare-fun tp!267227 () Bool)

(assert (=> b!849136 (= e!558805 (and tp!267224 tp!267227))))

(declare-fun b!849134 () Bool)

(declare-fun tp!267223 () Bool)

(declare-fun tp!267226 () Bool)

(assert (=> b!849134 (= e!558805 (and tp!267223 tp!267226))))

(declare-fun b!849135 () Bool)

(declare-fun tp!267225 () Bool)

(assert (=> b!849135 (= e!558805 tp!267225)))

(assert (= (and b!848561 ((_ is ElementMatch!2149) (regex!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) b!849133))

(assert (= (and b!848561 ((_ is Concat!3932) (regex!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) b!849134))

(assert (= (and b!848561 ((_ is Star!2149) (regex!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) b!849135))

(assert (= (and b!848561 ((_ is Union!2149) (regex!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) b!849136))

(declare-fun b!849137 () Bool)

(declare-fun e!558806 () Bool)

(declare-fun tp!267228 () Bool)

(assert (=> b!849137 (= e!558806 (and tp_is_empty!3965 tp!267228))))

(assert (=> b!848583 (= tp!267190 e!558806)))

(assert (= (and b!848583 ((_ is Cons!9147) (t!94855 (originalCharacters!2272 separatorToken!297)))) b!849137))

(declare-fun b!849138 () Bool)

(declare-fun e!558807 () Bool)

(assert (=> b!849138 (= e!558807 tp_is_empty!3965)))

(assert (=> b!848566 (= tp!267171 e!558807)))

(declare-fun b!849141 () Bool)

(declare-fun tp!267230 () Bool)

(declare-fun tp!267233 () Bool)

(assert (=> b!849141 (= e!558807 (and tp!267230 tp!267233))))

(declare-fun b!849139 () Bool)

(declare-fun tp!267229 () Bool)

(declare-fun tp!267232 () Bool)

(assert (=> b!849139 (= e!558807 (and tp!267229 tp!267232))))

(declare-fun b!849140 () Bool)

(declare-fun tp!267231 () Bool)

(assert (=> b!849140 (= e!558807 tp!267231)))

(assert (= (and b!848566 ((_ is ElementMatch!2149) (regOne!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849138))

(assert (= (and b!848566 ((_ is Concat!3932) (regOne!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849139))

(assert (= (and b!848566 ((_ is Star!2149) (regOne!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849140))

(assert (= (and b!848566 ((_ is Union!2149) (regOne!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849141))

(declare-fun b!849142 () Bool)

(declare-fun e!558808 () Bool)

(assert (=> b!849142 (= e!558808 tp_is_empty!3965)))

(assert (=> b!848566 (= tp!267174 e!558808)))

(declare-fun b!849145 () Bool)

(declare-fun tp!267235 () Bool)

(declare-fun tp!267238 () Bool)

(assert (=> b!849145 (= e!558808 (and tp!267235 tp!267238))))

(declare-fun b!849143 () Bool)

(declare-fun tp!267234 () Bool)

(declare-fun tp!267237 () Bool)

(assert (=> b!849143 (= e!558808 (and tp!267234 tp!267237))))

(declare-fun b!849144 () Bool)

(declare-fun tp!267236 () Bool)

(assert (=> b!849144 (= e!558808 tp!267236)))

(assert (= (and b!848566 ((_ is ElementMatch!2149) (regTwo!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849142))

(assert (= (and b!848566 ((_ is Concat!3932) (regTwo!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849143))

(assert (= (and b!848566 ((_ is Star!2149) (regTwo!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849144))

(assert (= (and b!848566 ((_ is Union!2149) (regTwo!4811 (regex!1716 (rule!3139 separatorToken!297))))) b!849145))

(declare-fun b!849146 () Bool)

(declare-fun e!558809 () Bool)

(assert (=> b!849146 (= e!558809 tp_is_empty!3965)))

(assert (=> b!848565 (= tp!267172 e!558809)))

(declare-fun b!849149 () Bool)

(declare-fun tp!267240 () Bool)

(declare-fun tp!267243 () Bool)

(assert (=> b!849149 (= e!558809 (and tp!267240 tp!267243))))

(declare-fun b!849147 () Bool)

(declare-fun tp!267239 () Bool)

(declare-fun tp!267242 () Bool)

(assert (=> b!849147 (= e!558809 (and tp!267239 tp!267242))))

(declare-fun b!849148 () Bool)

(declare-fun tp!267241 () Bool)

(assert (=> b!849148 (= e!558809 tp!267241)))

(assert (= (and b!848565 ((_ is ElementMatch!2149) (reg!2478 (regex!1716 (rule!3139 separatorToken!297))))) b!849146))

(assert (= (and b!848565 ((_ is Concat!3932) (reg!2478 (regex!1716 (rule!3139 separatorToken!297))))) b!849147))

(assert (= (and b!848565 ((_ is Star!2149) (reg!2478 (regex!1716 (rule!3139 separatorToken!297))))) b!849148))

(assert (= (and b!848565 ((_ is Union!2149) (reg!2478 (regex!1716 (rule!3139 separatorToken!297))))) b!849149))

(declare-fun b!849150 () Bool)

(declare-fun e!558810 () Bool)

(assert (=> b!849150 (= e!558810 tp_is_empty!3965)))

(assert (=> b!848544 (= tp!267146 e!558810)))

(declare-fun b!849153 () Bool)

(declare-fun tp!267245 () Bool)

(declare-fun tp!267248 () Bool)

(assert (=> b!849153 (= e!558810 (and tp!267245 tp!267248))))

(declare-fun b!849151 () Bool)

(declare-fun tp!267244 () Bool)

(declare-fun tp!267247 () Bool)

(assert (=> b!849151 (= e!558810 (and tp!267244 tp!267247))))

(declare-fun b!849152 () Bool)

(declare-fun tp!267246 () Bool)

(assert (=> b!849152 (= e!558810 tp!267246)))

(assert (= (and b!848544 ((_ is ElementMatch!2149) (regOne!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849150))

(assert (= (and b!848544 ((_ is Concat!3932) (regOne!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849151))

(assert (= (and b!848544 ((_ is Star!2149) (regOne!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849152))

(assert (= (and b!848544 ((_ is Union!2149) (regOne!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849153))

(declare-fun b!849154 () Bool)

(declare-fun e!558811 () Bool)

(assert (=> b!849154 (= e!558811 tp_is_empty!3965)))

(assert (=> b!848544 (= tp!267149 e!558811)))

(declare-fun b!849157 () Bool)

(declare-fun tp!267250 () Bool)

(declare-fun tp!267253 () Bool)

(assert (=> b!849157 (= e!558811 (and tp!267250 tp!267253))))

(declare-fun b!849155 () Bool)

(declare-fun tp!267249 () Bool)

(declare-fun tp!267252 () Bool)

(assert (=> b!849155 (= e!558811 (and tp!267249 tp!267252))))

(declare-fun b!849156 () Bool)

(declare-fun tp!267251 () Bool)

(assert (=> b!849156 (= e!558811 tp!267251)))

(assert (= (and b!848544 ((_ is ElementMatch!2149) (regTwo!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849154))

(assert (= (and b!848544 ((_ is Concat!3932) (regTwo!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849155))

(assert (= (and b!848544 ((_ is Star!2149) (regTwo!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849156))

(assert (= (and b!848544 ((_ is Union!2149) (regTwo!4811 (regex!1716 (rule!3139 (h!14549 l!5107)))))) b!849157))

(declare-fun b!849160 () Bool)

(declare-fun e!558814 () Bool)

(assert (=> b!849160 (= e!558814 true)))

(declare-fun b!849159 () Bool)

(declare-fun e!558813 () Bool)

(assert (=> b!849159 (= e!558813 e!558814)))

(declare-fun b!849158 () Bool)

(declare-fun e!558812 () Bool)

(assert (=> b!849158 (= e!558812 e!558813)))

(assert (=> b!848333 e!558812))

(assert (= b!849159 b!849160))

(assert (= b!849158 b!849159))

(assert (= (and b!848333 ((_ is Cons!9149) (t!94857 rules!2621))) b!849158))

(assert (=> b!849160 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25298))))

(assert (=> b!849160 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25298))))

(declare-fun b!849163 () Bool)

(declare-fun e!558817 () Bool)

(assert (=> b!849163 (= e!558817 true)))

(declare-fun b!849162 () Bool)

(declare-fun e!558816 () Bool)

(assert (=> b!849162 (= e!558816 e!558817)))

(declare-fun b!849161 () Bool)

(declare-fun e!558815 () Bool)

(assert (=> b!849161 (= e!558815 e!558816)))

(assert (=> b!848306 e!558815))

(assert (= b!849162 b!849163))

(assert (= b!849161 b!849162))

(assert (= (and b!848306 ((_ is Cons!9149) (t!94857 rules!2621))) b!849161))

(assert (=> b!849163 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25288))))

(assert (=> b!849163 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25288))))

(declare-fun b!849164 () Bool)

(declare-fun e!558820 () Bool)

(assert (=> b!849164 (= e!558820 tp_is_empty!3965)))

(assert (=> b!848547 (= tp!267152 e!558820)))

(declare-fun b!849169 () Bool)

(declare-fun tp!267255 () Bool)

(declare-fun tp!267258 () Bool)

(assert (=> b!849169 (= e!558820 (and tp!267255 tp!267258))))

(declare-fun b!849167 () Bool)

(declare-fun tp!267254 () Bool)

(declare-fun tp!267257 () Bool)

(assert (=> b!849167 (= e!558820 (and tp!267254 tp!267257))))

(declare-fun b!849168 () Bool)

(declare-fun tp!267256 () Bool)

(assert (=> b!849168 (= e!558820 tp!267256)))

(assert (= (and b!848547 ((_ is ElementMatch!2149) (reg!2478 (regex!1716 (h!14550 rules!2621))))) b!849164))

(assert (= (and b!848547 ((_ is Concat!3932) (reg!2478 (regex!1716 (h!14550 rules!2621))))) b!849167))

(assert (= (and b!848547 ((_ is Star!2149) (reg!2478 (regex!1716 (h!14550 rules!2621))))) b!849168))

(assert (= (and b!848547 ((_ is Union!2149) (reg!2478 (regex!1716 (h!14550 rules!2621))))) b!849169))

(declare-fun b!849170 () Bool)

(declare-fun e!558821 () Bool)

(assert (=> b!849170 (= e!558821 tp_is_empty!3965)))

(assert (=> b!848546 (= tp!267150 e!558821)))

(declare-fun b!849173 () Bool)

(declare-fun tp!267260 () Bool)

(declare-fun tp!267263 () Bool)

(assert (=> b!849173 (= e!558821 (and tp!267260 tp!267263))))

(declare-fun b!849171 () Bool)

(declare-fun tp!267259 () Bool)

(declare-fun tp!267262 () Bool)

(assert (=> b!849171 (= e!558821 (and tp!267259 tp!267262))))

(declare-fun b!849172 () Bool)

(declare-fun tp!267261 () Bool)

(assert (=> b!849172 (= e!558821 tp!267261)))

(assert (= (and b!848546 ((_ is ElementMatch!2149) (regOne!4810 (regex!1716 (h!14550 rules!2621))))) b!849170))

(assert (= (and b!848546 ((_ is Concat!3932) (regOne!4810 (regex!1716 (h!14550 rules!2621))))) b!849171))

(assert (= (and b!848546 ((_ is Star!2149) (regOne!4810 (regex!1716 (h!14550 rules!2621))))) b!849172))

(assert (= (and b!848546 ((_ is Union!2149) (regOne!4810 (regex!1716 (h!14550 rules!2621))))) b!849173))

(declare-fun b!849174 () Bool)

(declare-fun e!558822 () Bool)

(assert (=> b!849174 (= e!558822 tp_is_empty!3965)))

(assert (=> b!848546 (= tp!267153 e!558822)))

(declare-fun b!849177 () Bool)

(declare-fun tp!267265 () Bool)

(declare-fun tp!267268 () Bool)

(assert (=> b!849177 (= e!558822 (and tp!267265 tp!267268))))

(declare-fun b!849175 () Bool)

(declare-fun tp!267264 () Bool)

(declare-fun tp!267267 () Bool)

(assert (=> b!849175 (= e!558822 (and tp!267264 tp!267267))))

(declare-fun b!849176 () Bool)

(declare-fun tp!267266 () Bool)

(assert (=> b!849176 (= e!558822 tp!267266)))

(assert (= (and b!848546 ((_ is ElementMatch!2149) (regTwo!4810 (regex!1716 (h!14550 rules!2621))))) b!849174))

(assert (= (and b!848546 ((_ is Concat!3932) (regTwo!4810 (regex!1716 (h!14550 rules!2621))))) b!849175))

(assert (= (and b!848546 ((_ is Star!2149) (regTwo!4810 (regex!1716 (h!14550 rules!2621))))) b!849176))

(assert (= (and b!848546 ((_ is Union!2149) (regTwo!4810 (regex!1716 (h!14550 rules!2621))))) b!849177))

(declare-fun b!849180 () Bool)

(declare-fun e!558825 () Bool)

(assert (=> b!849180 (= e!558825 true)))

(declare-fun b!849179 () Bool)

(declare-fun e!558824 () Bool)

(assert (=> b!849179 (= e!558824 e!558825)))

(declare-fun b!849178 () Bool)

(declare-fun e!558823 () Bool)

(assert (=> b!849178 (= e!558823 e!558824)))

(assert (=> b!848212 e!558823))

(assert (= b!849179 b!849180))

(assert (= b!849178 b!849179))

(assert (= (and b!848212 ((_ is Cons!9149) (t!94857 rules!2621))) b!849178))

(assert (=> b!849180 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25286))))

(assert (=> b!849180 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25286))))

(declare-fun b!849181 () Bool)

(declare-fun e!558826 () Bool)

(assert (=> b!849181 (= e!558826 tp_is_empty!3965)))

(assert (=> b!848548 (= tp!267151 e!558826)))

(declare-fun b!849184 () Bool)

(declare-fun tp!267270 () Bool)

(declare-fun tp!267273 () Bool)

(assert (=> b!849184 (= e!558826 (and tp!267270 tp!267273))))

(declare-fun b!849182 () Bool)

(declare-fun tp!267269 () Bool)

(declare-fun tp!267272 () Bool)

(assert (=> b!849182 (= e!558826 (and tp!267269 tp!267272))))

(declare-fun b!849183 () Bool)

(declare-fun tp!267271 () Bool)

(assert (=> b!849183 (= e!558826 tp!267271)))

(assert (= (and b!848548 ((_ is ElementMatch!2149) (regOne!4811 (regex!1716 (h!14550 rules!2621))))) b!849181))

(assert (= (and b!848548 ((_ is Concat!3932) (regOne!4811 (regex!1716 (h!14550 rules!2621))))) b!849182))

(assert (= (and b!848548 ((_ is Star!2149) (regOne!4811 (regex!1716 (h!14550 rules!2621))))) b!849183))

(assert (= (and b!848548 ((_ is Union!2149) (regOne!4811 (regex!1716 (h!14550 rules!2621))))) b!849184))

(declare-fun b!849186 () Bool)

(declare-fun e!558828 () Bool)

(assert (=> b!849186 (= e!558828 tp_is_empty!3965)))

(assert (=> b!848548 (= tp!267154 e!558828)))

(declare-fun b!849189 () Bool)

(declare-fun tp!267275 () Bool)

(declare-fun tp!267278 () Bool)

(assert (=> b!849189 (= e!558828 (and tp!267275 tp!267278))))

(declare-fun b!849187 () Bool)

(declare-fun tp!267274 () Bool)

(declare-fun tp!267277 () Bool)

(assert (=> b!849187 (= e!558828 (and tp!267274 tp!267277))))

(declare-fun b!849188 () Bool)

(declare-fun tp!267276 () Bool)

(assert (=> b!849188 (= e!558828 tp!267276)))

(assert (= (and b!848548 ((_ is ElementMatch!2149) (regTwo!4811 (regex!1716 (h!14550 rules!2621))))) b!849186))

(assert (= (and b!848548 ((_ is Concat!3932) (regTwo!4811 (regex!1716 (h!14550 rules!2621))))) b!849187))

(assert (= (and b!848548 ((_ is Star!2149) (regTwo!4811 (regex!1716 (h!14550 rules!2621))))) b!849188))

(assert (= (and b!848548 ((_ is Union!2149) (regTwo!4811 (regex!1716 (h!14550 rules!2621))))) b!849189))

(declare-fun e!558838 () Bool)

(declare-fun tp!267285 () Bool)

(declare-fun tp!267286 () Bool)

(declare-fun b!849203 () Bool)

(assert (=> b!849203 (= e!558838 (and (inv!11631 (left!6771 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))))) tp!267285 (inv!11631 (right!7101 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))))) tp!267286))))

(declare-fun b!849205 () Bool)

(declare-fun e!558839 () Bool)

(declare-fun tp!267287 () Bool)

(assert (=> b!849205 (= e!558839 tp!267287)))

(declare-fun b!849204 () Bool)

(declare-fun inv!11637 (IArray!6069) Bool)

(assert (=> b!849204 (= e!558838 (and (inv!11637 (xs!5721 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))))) e!558839))))

(assert (=> b!848530 (= tp!267134 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297)))) e!558838))))

(assert (= (and b!848530 ((_ is Node!3032) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))))) b!849203))

(assert (= b!849204 b!849205))

(assert (= (and b!848530 ((_ is Leaf!4478) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (value!55605 separatorToken!297))))) b!849204))

(declare-fun m!1087007 () Bool)

(assert (=> b!849203 m!1087007))

(declare-fun m!1087009 () Bool)

(assert (=> b!849203 m!1087009))

(declare-fun m!1087011 () Bool)

(assert (=> b!849204 m!1087011))

(assert (=> b!848530 m!1085385))

(declare-fun b!849206 () Bool)

(declare-fun e!558840 () Bool)

(assert (=> b!849206 (= e!558840 tp_is_empty!3965)))

(assert (=> b!848576 (= tp!267184 e!558840)))

(declare-fun b!849209 () Bool)

(declare-fun tp!267289 () Bool)

(declare-fun tp!267292 () Bool)

(assert (=> b!849209 (= e!558840 (and tp!267289 tp!267292))))

(declare-fun b!849207 () Bool)

(declare-fun tp!267288 () Bool)

(declare-fun tp!267291 () Bool)

(assert (=> b!849207 (= e!558840 (and tp!267288 tp!267291))))

(declare-fun b!849208 () Bool)

(declare-fun tp!267290 () Bool)

(assert (=> b!849208 (= e!558840 tp!267290)))

(assert (= (and b!848576 ((_ is ElementMatch!2149) (regex!1716 (h!14550 (t!94857 rules!2621))))) b!849206))

(assert (= (and b!848576 ((_ is Concat!3932) (regex!1716 (h!14550 (t!94857 rules!2621))))) b!849207))

(assert (= (and b!848576 ((_ is Star!2149) (regex!1716 (h!14550 (t!94857 rules!2621))))) b!849208))

(assert (= (and b!848576 ((_ is Union!2149) (regex!1716 (h!14550 (t!94857 rules!2621))))) b!849209))

(declare-fun b!849212 () Bool)

(declare-fun b_free!25597 () Bool)

(declare-fun b_next!25661 () Bool)

(assert (=> b!849212 (= b_free!25597 (not b_next!25661))))

(declare-fun tp!267296 () Bool)

(declare-fun b_and!74259 () Bool)

(assert (=> b!849212 (= tp!267296 b_and!74259)))

(declare-fun b_free!25599 () Bool)

(declare-fun b_next!25663 () Bool)

(assert (=> b!849212 (= b_free!25599 (not b_next!25663))))

(declare-fun t!95093 () Bool)

(declare-fun tb!59315 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) t!95093) tb!59315))

(declare-fun result!68750 () Bool)

(assert (= result!68750 result!68556))

(assert (=> b!848528 t!95093))

(declare-fun t!95095 () Bool)

(declare-fun tb!59317 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339))))) t!95095) tb!59317))

(declare-fun result!68752 () Bool)

(assert (= result!68752 result!68718))

(assert (=> d!264814 t!95095))

(declare-fun t!95097 () Bool)

(declare-fun tb!59319 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342)))))) t!95097) tb!59319))

(declare-fun result!68754 () Bool)

(assert (= result!68754 result!68688))

(assert (=> d!264684 t!95097))

(declare-fun t!95099 () Bool)

(declare-fun tb!59321 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425))))) t!95099) tb!59321))

(declare-fun result!68756 () Bool)

(assert (= result!68756 result!68648))

(assert (=> d!264530 t!95099))

(declare-fun tb!59323 () Bool)

(declare-fun t!95101 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) t!95101) tb!59323))

(declare-fun result!68758 () Bool)

(assert (= result!68758 result!68678))

(assert (=> b!848949 t!95101))

(declare-fun t!95103 () Bool)

(declare-fun tb!59325 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339)))))) t!95103) tb!59325))

(declare-fun result!68760 () Bool)

(assert (= result!68760 result!68608))

(assert (=> d!264498 t!95103))

(declare-fun tb!59327 () Bool)

(declare-fun t!95105 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345))))) t!95105) tb!59327))

(declare-fun result!68762 () Bool)

(assert (= result!68762 result!68708))

(assert (=> d!264800 t!95105))

(declare-fun t!95107 () Bool)

(declare-fun tb!59329 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) t!95107) tb!59329))

(declare-fun result!68764 () Bool)

(assert (= result!68764 result!68518))

(assert (=> d!264590 t!95107))

(assert (=> d!264580 t!95093))

(assert (=> b!848249 t!95107))

(declare-fun tb!59331 () Bool)

(declare-fun t!95109 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 lt!321340)))) t!95109) tb!59331))

(declare-fun result!68766 () Bool)

(assert (= result!68766 result!68598))

(assert (=> d!264480 t!95109))

(declare-fun t!95111 () Bool)

(declare-fun tb!59333 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427))))) t!95111) tb!59333))

(declare-fun result!68768 () Bool)

(assert (= result!68768 result!68738))

(assert (=> d!264846 t!95111))

(declare-fun t!95113 () Bool)

(declare-fun tb!59335 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510))))) t!95113) tb!59335))

(declare-fun result!68770 () Bool)

(assert (= result!68770 result!68698))

(assert (=> d!264760 t!95113))

(declare-fun tb!59337 () Bool)

(declare-fun t!95115 () Bool)

(assert (=> (and b!849212 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512))))) t!95115) tb!59337))

(declare-fun result!68772 () Bool)

(assert (= result!68772 result!68628))

(assert (=> d!264510 t!95115))

(declare-fun b_and!74261 () Bool)

(declare-fun tp!267295 () Bool)

(assert (=> b!849212 (= tp!267295 (and (=> t!95097 result!68754) (=> t!95103 result!68760) (=> t!95105 result!68762) (=> t!95101 result!68758) (=> t!95111 result!68768) (=> t!95113 result!68770) (=> t!95109 result!68766) (=> t!95095 result!68752) (=> t!95093 result!68750) (=> t!95099 result!68756) (=> t!95115 result!68772) (=> t!95107 result!68764) b_and!74261))))

(declare-fun e!558842 () Bool)

(assert (=> b!849212 (= e!558842 (and tp!267296 tp!267295))))

(declare-fun e!558843 () Bool)

(declare-fun b!849211 () Bool)

(declare-fun tp!267294 () Bool)

(assert (=> b!849211 (= e!558843 (and tp!267294 (inv!11624 (tag!1978 (h!14550 (t!94857 (t!94857 rules!2621))))) (inv!11628 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) e!558842))))

(declare-fun b!849210 () Bool)

(declare-fun e!558841 () Bool)

(declare-fun tp!267293 () Bool)

(assert (=> b!849210 (= e!558841 (and e!558843 tp!267293))))

(assert (=> b!848575 (= tp!267183 e!558841)))

(assert (= b!849211 b!849212))

(assert (= b!849210 b!849211))

(assert (= (and b!848575 ((_ is Cons!9149) (t!94857 (t!94857 rules!2621)))) b!849210))

(declare-fun m!1087023 () Bool)

(assert (=> b!849211 m!1087023))

(declare-fun m!1087025 () Bool)

(assert (=> b!849211 m!1087025))

(declare-fun b!849217 () Bool)

(declare-fun e!558847 () Bool)

(declare-fun tp!267297 () Bool)

(assert (=> b!849217 (= e!558847 (and tp_is_empty!3965 tp!267297))))

(assert (=> b!848560 (= tp!267168 e!558847)))

(assert (= (and b!848560 ((_ is Cons!9147) (originalCharacters!2272 (h!14549 (t!94856 l!5107))))) b!849217))

(declare-fun b!849221 () Bool)

(declare-fun b_free!25601 () Bool)

(declare-fun b_next!25665 () Bool)

(assert (=> b!849221 (= b_free!25601 (not b_next!25665))))

(declare-fun tp!267300 () Bool)

(declare-fun b_and!74263 () Bool)

(assert (=> b!849221 (= tp!267300 b_and!74263)))

(declare-fun b_free!25603 () Bool)

(declare-fun b_next!25667 () Bool)

(assert (=> b!849221 (= b_free!25603 (not b_next!25667))))

(declare-fun tb!59339 () Bool)

(declare-fun t!95117 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297)))) t!95117) tb!59339))

(declare-fun result!68774 () Bool)

(assert (= result!68774 result!68556))

(assert (=> b!848528 t!95117))

(declare-fun t!95119 () Bool)

(declare-fun tb!59341 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321339))))) t!95119) tb!59341))

(declare-fun result!68776 () Bool)

(assert (= result!68776 result!68718))

(assert (=> d!264814 t!95119))

(declare-fun tb!59343 () Bool)

(declare-fun t!95121 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321342)))))) t!95121) tb!59343))

(declare-fun result!68778 () Bool)

(assert (= result!68778 result!68688))

(assert (=> d!264684 t!95121))

(declare-fun t!95123 () Bool)

(declare-fun tb!59345 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321425))))) t!95123) tb!59345))

(declare-fun result!68780 () Bool)

(assert (= result!68780 result!68648))

(assert (=> d!264530 t!95123))

(declare-fun t!95125 () Bool)

(declare-fun tb!59347 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107)))))) t!95125) tb!59347))

(declare-fun result!68782 () Bool)

(assert (= result!68782 result!68678))

(assert (=> b!848949 t!95125))

(declare-fun tb!59349 () Bool)

(declare-fun t!95127 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 lt!321339)))))) t!95127) tb!59349))

(declare-fun result!68784 () Bool)

(assert (= result!68784 result!68608))

(assert (=> d!264498 t!95127))

(declare-fun tb!59351 () Bool)

(declare-fun t!95129 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321345))))) t!95129) tb!59351))

(declare-fun result!68786 () Bool)

(assert (= result!68786 result!68708))

(assert (=> d!264800 t!95129))

(declare-fun t!95131 () Bool)

(declare-fun tb!59353 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107))))) t!95131) tb!59353))

(declare-fun result!68788 () Bool)

(assert (= result!68788 result!68518))

(assert (=> d!264590 t!95131))

(assert (=> d!264580 t!95117))

(assert (=> b!848249 t!95131))

(declare-fun t!95133 () Bool)

(declare-fun tb!59355 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 lt!321340)))) t!95133) tb!59355))

(declare-fun result!68790 () Bool)

(assert (= result!68790 result!68598))

(assert (=> d!264480 t!95133))

(declare-fun tb!59357 () Bool)

(declare-fun t!95135 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321427))))) t!95135) tb!59357))

(declare-fun result!68792 () Bool)

(assert (= result!68792 result!68738))

(assert (=> d!264846 t!95135))

(declare-fun tb!59359 () Bool)

(declare-fun t!95137 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321510))))) t!95137) tb!59359))

(declare-fun result!68794 () Bool)

(assert (= result!68794 result!68698))

(assert (=> d!264760 t!95137))

(declare-fun t!95139 () Bool)

(declare-fun tb!59361 () Bool)

(assert (=> (and b!849221 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 lt!321512))))) t!95139) tb!59361))

(declare-fun result!68796 () Bool)

(assert (= result!68796 result!68628))

(assert (=> d!264510 t!95139))

(declare-fun tp!267298 () Bool)

(declare-fun b_and!74265 () Bool)

(assert (=> b!849221 (= tp!267298 (and (=> t!95133 result!68790) (=> t!95135 result!68792) (=> t!95137 result!68794) (=> t!95129 result!68786) (=> t!95127 result!68784) (=> t!95139 result!68796) (=> t!95131 result!68788) (=> t!95117 result!68774) (=> t!95125 result!68782) (=> t!95123 result!68780) (=> t!95119 result!68776) (=> t!95121 result!68778) b_and!74265))))

(declare-fun e!558852 () Bool)

(assert (=> b!849221 (= e!558852 (and tp!267300 tp!267298))))

(declare-fun b!849220 () Bool)

(declare-fun tp!267299 () Bool)

(declare-fun e!558849 () Bool)

(assert (=> b!849220 (= e!558849 (and tp!267299 (inv!11624 (tag!1978 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (inv!11628 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) e!558852))))

(declare-fun e!558850 () Bool)

(assert (=> b!848559 (= tp!267169 e!558850)))

(declare-fun b!849219 () Bool)

(declare-fun e!558853 () Bool)

(declare-fun tp!267301 () Bool)

(assert (=> b!849219 (= e!558853 (and (inv!21 (value!55605 (h!14549 (t!94856 (t!94856 l!5107))))) e!558849 tp!267301))))

(declare-fun tp!267302 () Bool)

(declare-fun b!849218 () Bool)

(assert (=> b!849218 (= e!558850 (and (inv!11627 (h!14549 (t!94856 (t!94856 l!5107)))) e!558853 tp!267302))))

(assert (= b!849220 b!849221))

(assert (= b!849219 b!849220))

(assert (= b!849218 b!849219))

(assert (= (and b!848559 ((_ is Cons!9148) (t!94856 (t!94856 l!5107)))) b!849218))

(declare-fun m!1087055 () Bool)

(assert (=> b!849220 m!1087055))

(declare-fun m!1087061 () Bool)

(assert (=> b!849220 m!1087061))

(declare-fun m!1087065 () Bool)

(assert (=> b!849219 m!1087065))

(declare-fun m!1087067 () Bool)

(assert (=> b!849218 m!1087067))

(declare-fun b!849232 () Bool)

(declare-fun e!558860 () Bool)

(assert (=> b!849232 (= e!558860 true)))

(declare-fun b!849231 () Bool)

(declare-fun e!558859 () Bool)

(assert (=> b!849231 (= e!558859 e!558860)))

(declare-fun b!849230 () Bool)

(declare-fun e!558858 () Bool)

(assert (=> b!849230 (= e!558858 e!558859)))

(assert (=> b!848261 e!558858))

(assert (= b!849231 b!849232))

(assert (= b!849230 b!849231))

(assert (= (and b!848261 ((_ is Cons!9149) (t!94857 rules!2621))) b!849230))

(assert (=> b!849232 (< (dynLambda!4248 order!5843 (toValue!2745 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25287))))

(assert (=> b!849232 (< (dynLambda!4250 order!5847 (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621))))) (dynLambda!4249 order!5845 lambda!25287))))

(declare-fun b!849237 () Bool)

(declare-fun e!558863 () Bool)

(assert (=> b!849237 (= e!558863 tp_is_empty!3965)))

(assert (=> b!848564 (= tp!267170 e!558863)))

(declare-fun b!849240 () Bool)

(declare-fun tp!267304 () Bool)

(declare-fun tp!267307 () Bool)

(assert (=> b!849240 (= e!558863 (and tp!267304 tp!267307))))

(declare-fun b!849238 () Bool)

(declare-fun tp!267303 () Bool)

(declare-fun tp!267306 () Bool)

(assert (=> b!849238 (= e!558863 (and tp!267303 tp!267306))))

(declare-fun b!849239 () Bool)

(declare-fun tp!267305 () Bool)

(assert (=> b!849239 (= e!558863 tp!267305)))

(assert (= (and b!848564 ((_ is ElementMatch!2149) (regOne!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849237))

(assert (= (and b!848564 ((_ is Concat!3932) (regOne!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849238))

(assert (= (and b!848564 ((_ is Star!2149) (regOne!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849239))

(assert (= (and b!848564 ((_ is Union!2149) (regOne!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849240))

(declare-fun b!849241 () Bool)

(declare-fun e!558864 () Bool)

(assert (=> b!849241 (= e!558864 tp_is_empty!3965)))

(assert (=> b!848564 (= tp!267173 e!558864)))

(declare-fun b!849244 () Bool)

(declare-fun tp!267309 () Bool)

(declare-fun tp!267312 () Bool)

(assert (=> b!849244 (= e!558864 (and tp!267309 tp!267312))))

(declare-fun b!849242 () Bool)

(declare-fun tp!267308 () Bool)

(declare-fun tp!267311 () Bool)

(assert (=> b!849242 (= e!558864 (and tp!267308 tp!267311))))

(declare-fun b!849243 () Bool)

(declare-fun tp!267310 () Bool)

(assert (=> b!849243 (= e!558864 tp!267310)))

(assert (= (and b!848564 ((_ is ElementMatch!2149) (regTwo!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849241))

(assert (= (and b!848564 ((_ is Concat!3932) (regTwo!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849242))

(assert (= (and b!848564 ((_ is Star!2149) (regTwo!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849243))

(assert (= (and b!848564 ((_ is Union!2149) (regTwo!4810 (regex!1716 (rule!3139 separatorToken!297))))) b!849244))

(declare-fun tp!267313 () Bool)

(declare-fun b!849245 () Bool)

(declare-fun tp!267314 () Bool)

(declare-fun e!558865 () Bool)

(assert (=> b!849245 (= e!558865 (and (inv!11631 (left!6771 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))))) tp!267313 (inv!11631 (right!7101 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))))) tp!267314))))

(declare-fun b!849247 () Bool)

(declare-fun e!558866 () Bool)

(declare-fun tp!267315 () Bool)

(assert (=> b!849247 (= e!558866 tp!267315)))

(declare-fun b!849246 () Bool)

(assert (=> b!849246 (= e!558865 (and (inv!11637 (xs!5721 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))))) e!558866))))

(assert (=> b!848255 (= tp!267073 (and (inv!11631 (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107))))) e!558865))))

(assert (= (and b!848255 ((_ is Node!3032) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))))) b!849245))

(assert (= b!849246 b!849247))

(assert (= (and b!848255 ((_ is Leaf!4478) (c!137815 (dynLambda!4252 (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (value!55605 (h!14549 l!5107)))))) b!849246))

(declare-fun m!1087081 () Bool)

(assert (=> b!849245 m!1087081))

(declare-fun m!1087083 () Bool)

(assert (=> b!849245 m!1087083))

(declare-fun m!1087085 () Bool)

(assert (=> b!849246 m!1087085))

(assert (=> b!848255 m!1084957))

(declare-fun b!849248 () Bool)

(declare-fun e!558867 () Bool)

(declare-fun tp!267316 () Bool)

(assert (=> b!849248 (= e!558867 (and tp_is_empty!3965 tp!267316))))

(assert (=> b!848582 (= tp!267189 e!558867)))

(assert (= (and b!848582 ((_ is Cons!9147) (t!94855 (originalCharacters!2272 (h!14549 l!5107))))) b!849248))

(declare-fun b_lambda!28197 () Bool)

(assert (= b_lambda!28143 (or b!848136 b_lambda!28197)))

(declare-fun bs!230944 () Bool)

(declare-fun d!264880 () Bool)

(assert (= bs!230944 (and d!264880 b!848136)))

(assert (=> bs!230944 (= (dynLambda!4253 lambda!25280 (h!14549 (t!94856 l!5107))) (not (isSeparator!1716 (rule!3139 (h!14549 (t!94856 l!5107))))))))

(assert (=> b!848685 d!264880))

(declare-fun b_lambda!28199 () Bool)

(assert (= b_lambda!28163 (or (and b!848577 b_free!25595 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!849212 b_free!25599 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!848158 b_free!25575 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!848150 b_free!25571 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!848140 b_free!25579) (and b!848562 b_free!25591 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) (and b!849221 b_free!25603 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))))) b_lambda!28199)))

(declare-fun b_lambda!28201 () Bool)

(assert (= b_lambda!28169 (or d!264318 b_lambda!28201)))

(declare-fun bs!230945 () Bool)

(declare-fun d!264882 () Bool)

(assert (= bs!230945 (and d!264882 d!264318)))

(assert (=> bs!230945 (= (dynLambda!4253 lambda!25288 (h!14549 l!5107)) (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 l!5107)))))

(assert (=> bs!230945 m!1085067))

(assert (=> b!848917 d!264882))

(declare-fun b_lambda!28203 () Bool)

(assert (= b_lambda!28141 (or d!264328 b_lambda!28203)))

(declare-fun bs!230946 () Bool)

(declare-fun d!264884 () Bool)

(assert (= bs!230946 (and d!264884 d!264328)))

(assert (=> bs!230946 (= (dynLambda!4253 lambda!25298 (h!14549 (list!3590 (seqFromList!1522 lt!321339)))) (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 (list!3590 (seqFromList!1522 lt!321339)))))))

(assert (=> bs!230946 m!1086625))

(assert (=> b!848676 d!264884))

(declare-fun b_lambda!28205 () Bool)

(assert (= b_lambda!28185 (or d!264296 b_lambda!28205)))

(declare-fun bs!230947 () Bool)

(declare-fun d!264888 () Bool)

(assert (= bs!230947 (and d!264888 d!264296)))

(assert (=> bs!230947 (= (dynLambda!4253 lambda!25287 (h!14549 lt!321339)) (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321339)))))

(assert (=> bs!230947 m!1084975))

(assert (=> b!849059 d!264888))

(declare-fun b_lambda!28207 () Bool)

(assert (= b_lambda!28175 (or (and b!848577 b_free!25595 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))))) (and b!848158 b_free!25575 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))))) (and b!849212 b_free!25599 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))))) (and b!849221 b_free!25603 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))))) (and b!848150 b_free!25571 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))))) (and b!848140 b_free!25579 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))))) (and b!848562 b_free!25591) b_lambda!28207)))

(declare-fun b_lambda!28209 () Bool)

(assert (= b_lambda!28165 (or (and b!848140 b_free!25579 (= (toChars!2604 (transformation!1716 (rule!3139 separatorToken!297))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!848562 b_free!25591 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 l!5107))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!849221 b_free!25603 (= (toChars!2604 (transformation!1716 (rule!3139 (h!14549 (t!94856 (t!94856 l!5107)))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!848150 b_free!25571 (= (toChars!2604 (transformation!1716 (h!14550 rules!2621))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!848158 b_free!25575) (and b!848577 b_free!25595 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 rules!2621)))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) (and b!849212 b_free!25599 (= (toChars!2604 (transformation!1716 (h!14550 (t!94857 (t!94857 rules!2621))))) (toChars!2604 (transformation!1716 (rule!3139 (h!14549 l!5107)))))) b_lambda!28209)))

(declare-fun b_lambda!28211 () Bool)

(assert (= b_lambda!28137 (or d!264262 b_lambda!28211)))

(declare-fun bs!230948 () Bool)

(declare-fun d!264890 () Bool)

(assert (= bs!230948 (and d!264890 d!264262)))

(assert (=> bs!230948 (= (dynLambda!4253 lambda!25286 (h!14549 lt!321342)) (rulesProduceIndividualToken!582 thiss!20117 rules!2621 (h!14549 lt!321342)))))

(assert (=> bs!230948 m!1084913))

(assert (=> b!848586 d!264890))

(check-sat (not tb!59195) (not b!848606) (not b!848801) (not b!848979) (not b!849080) (not b!848625) (not d!264530) (not b!848950) (not b_lambda!28197) (not d!264480) (not b!848620) (not d!264470) (not b!849014) b_and!74265 (not b!848800) (not b!848686) (not b!849182) (not d!264500) (not b!848844) (not d!264782) (not b!849155) (not tb!59305) (not b!848916) (not d!264738) (not b!849128) (not b!849064) b_and!74253 (not b!848604) (not tb!59255) b_and!73997 (not b!849151) (not b!849243) (not b!848960) b_and!74001 (not b!849244) (not b!849178) (not b_next!25633) (not d!264608) (not d!264758) (not b!849055) (not d!264794) (not b_lambda!28147) (not b!849187) (not b!848765) (not b_next!25655) (not b!848859) (not b!848707) (not d!264586) (not b!848882) (not b!849104) (not b!849013) (not b!848734) (not b_lambda!28131) (not b!849152) (not d!264788) (not d!264756) (not b!848803) (not b!849010) (not d!264406) (not b!849093) (not b_next!25661) (not b!848951) b_and!74257 (not b!848860) (not b!848709) (not b!849099) (not b!848730) (not b!848881) (not b!849065) b_and!74249 (not b!848760) (not b!848976) (not b!849156) (not b!848255) (not b!849248) (not d!264780) (not b!849046) (not d!264534) (not tb!59175) (not d!264814) (not b!849177) (not d!264464) (not b!849220) (not b!849211) (not b!849127) (not b!848597) (not d!264524) (not b!849070) (not b_next!25637) (not d!264806) (not d!264588) (not d!264804) (not b!848833) (not b!849209) (not b!849016) (not d!264810) (not b!849069) (not b!848910) b_and!74263 (not d!264528) (not b_next!25635) (not b!849171) (not d!264558) (not b!849126) (not b!849134) (not b_next!25667) (not b!848616) (not d!264800) (not b!849039) (not d!264486) (not d!264724) (not d!264600) (not b!849210) (not d!264818) (not b!849218) (not b!848845) (not bs!230945) (not b!849061) (not b!849204) (not d!264510) (not b!849094) (not b!849105) (not b!848617) (not b!849086) (not d!264816) (not b!848775) (not d!264668) (not b!849143) (not d!264622) (not b_lambda!28211) (not b_lambda!28153) (not b_lambda!28209) (not d!264592) (not d!264442) (not b!849103) (not b_next!25665) (not b!849183) (not tb!59285) (not b_lambda!28189) (not b!849119) (not b!848780) (not b!849113) (not b!849040) (not b!849112) (not b_lambda!28201) (not d!264798) (not b!848605) (not b!848977) (not b!849101) (not d!264582) (not b!849169) (not b!848831) (not b!849060) (not d!264732) (not b_lambda!28157) (not b!849050) (not b!849083) (not b!849208) (not b!849028) (not b!849056) (not b!849029) (not b_next!25641) (not b_next!25639) (not d!264820) (not d!264422) (not d!264786) (not b!849189) (not d!264808) b_and!74041 (not b!849158) (not b!849081) (not b_lambda!28199) (not b!848878) (not d!264846) (not b!848863) (not d!264802) (not b!849145) (not b_lambda!28205) (not b!849087) (not b!848754) (not b!849095) (not d!264424) (not bs!230947) (not b_lambda!28207) (not b!849132) (not b!849017) (not b!848918) (not b!849153) (not b!849131) (not d!264594) (not b!848790) (not b!849089) b_and!74261 (not b!848710) (not b!849022) (not b!849122) (not b!849012) (not bm!50487) (not d!264498) (not b!849147) (not d!264684) (not d!264404) (not b!849088) (not b_next!25657) (not b!848949) (not bs!230948) (not b!849118) (not b!849184) b_and!74045 (not d!264474) (not b!848799) (not d!264574) (not d!264494) (not b!849149) (not d!264462) (not b!849092) (not d!264776) (not b!849203) (not d!264784) (not b!849043) (not b!849073) (not b!849219) (not b!848708) (not d!264392) b_and!74251 (not tb!59215) (not d!264752) (not b!849175) (not d!264812) (not b!849246) (not b!849098) (not b!849240) (not d!264768) (not b_lambda!28133) (not b!849144) (not d!264764) (not b!848712) (not d!264736) (not b!849018) (not b!849041) (not b!849067) (not b!849205) (not b_lambda!28193) (not b!849168) (not b!848985) (not b!848677) (not b!849130) (not d!264734) (not b!849217) (not b!849207) (not b!849157) (not d!264760) (not d!264690) (not b!849242) (not tb!59265) (not b!849136) (not b!848674) (not d!264778) (not b!848587) (not d!264580) (not d!264408) (not b!849239) (not d!264546) (not b!849031) (not b!849078) (not b!849054) (not b!849023) (not b!848753) (not b!848772) (not b!849188) (not b!849141) (not d!264790) (not d!264686) (not b!848733) (not b!848856) (not d!264492) (not b!849173) (not b!848619) (not b!848795) (not b!849167) (not b!848530) (not b!848658) (not d!264772) (not b!848947) (not d!264672) (not tb!59245) (not b!848864) (not d!264590) (not d!264828) (not b!849245) (not d!264616) (not b_next!25643) (not b!849238) (not d!264598) (not b_lambda!28203) (not b!849139) (not b!849172) (not b!848855) (not d!264426) (not b!849084) (not b!849161) (not b!849052) (not tb!59275) (not b_next!25663) (not b_lambda!28183) (not b!849085) (not b!848618) (not b!849230) (not b!849024) (not b!849011) (not b!849077) (not b!848880) b_and!74005 (not b!849247) (not b_lambda!28129) (not b_next!25653) (not b!848764) (not b!849049) (not b!849135) (not b!849015) (not b!849074) tp_is_empty!3965 (not b!849148) (not b!848602) (not b!848603) (not b_lambda!28177) (not b!849047) (not d!264844) (not b!849137) (not d!264754) (not b!849140) (not b!849176) (not d!264730) (not b!848761) (not b!849035) (not b!849123) (not d!264856) (not b!849019) (not d!264842) (not d!264726) (not b!849082) (not b!849124) (not d!264666) (not b!848834) (not b!849033) b_and!74255 (not d!264824) (not b_next!25659) (not b_lambda!28187) (not bs!230946) (not b!848766) (not d!264774) (not d!264504) (not b!848623) (not d!264496) (not d!264722) (not tb!59165) (not d!264766) (not d!264518) (not d!264606) (not d!264508) b_and!74259 (not b!849106) (not b!848624) (not b_lambda!28149) (not b!848773) (not d!264398))
(check-sat b_and!74265 b_and!74253 (not b_next!25655) b_and!74249 (not b_next!25637) (not b_next!25665) b_and!74041 b_and!74261 b_and!74251 (not b_next!25643) (not b_next!25663) b_and!74259 b_and!73997 b_and!74001 (not b_next!25633) (not b_next!25661) b_and!74257 (not b_next!25667) b_and!74263 (not b_next!25635) (not b_next!25641) (not b_next!25639) b_and!74045 (not b_next!25657) b_and!74005 (not b_next!25653) b_and!74255 (not b_next!25659))

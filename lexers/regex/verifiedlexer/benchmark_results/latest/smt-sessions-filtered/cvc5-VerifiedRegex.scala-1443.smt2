; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!75380 () Bool)

(assert start!75380)

(declare-fun b!846121 () Bool)

(declare-fun b_free!25461 () Bool)

(declare-fun b_next!25525 () Bool)

(assert (=> b!846121 (= b_free!25461 (not b_next!25525))))

(declare-fun tp!266389 () Bool)

(declare-fun b_and!73609 () Bool)

(assert (=> b!846121 (= tp!266389 b_and!73609)))

(declare-fun b_free!25463 () Bool)

(declare-fun b_next!25527 () Bool)

(assert (=> b!846121 (= b_free!25463 (not b_next!25527))))

(declare-fun tp!266391 () Bool)

(declare-fun b_and!73611 () Bool)

(assert (=> b!846121 (= tp!266391 b_and!73611)))

(declare-fun b!846129 () Bool)

(declare-fun b_free!25465 () Bool)

(declare-fun b_next!25529 () Bool)

(assert (=> b!846129 (= b_free!25465 (not b_next!25529))))

(declare-fun tp!266382 () Bool)

(declare-fun b_and!73613 () Bool)

(assert (=> b!846129 (= tp!266382 b_and!73613)))

(declare-fun b_free!25467 () Bool)

(declare-fun b_next!25531 () Bool)

(assert (=> b!846129 (= b_free!25467 (not b_next!25531))))

(declare-fun tp!266380 () Bool)

(declare-fun b_and!73615 () Bool)

(assert (=> b!846129 (= tp!266380 b_and!73615)))

(declare-fun b!846113 () Bool)

(declare-fun b_free!25469 () Bool)

(declare-fun b_next!25533 () Bool)

(assert (=> b!846113 (= b_free!25469 (not b_next!25533))))

(declare-fun tp!266383 () Bool)

(declare-fun b_and!73617 () Bool)

(assert (=> b!846113 (= tp!266383 b_and!73617)))

(declare-fun b_free!25471 () Bool)

(declare-fun b_next!25535 () Bool)

(assert (=> b!846113 (= b_free!25471 (not b_next!25535))))

(declare-fun tp!266390 () Bool)

(declare-fun b_and!73619 () Bool)

(assert (=> b!846113 (= tp!266390 b_and!73619)))

(declare-fun e!556759 () Bool)

(declare-datatypes ((List!9134 0))(
  ( (Nil!9118) (Cons!9118 (h!14519 (_ BitVec 16)) (t!94428 List!9134)) )
))
(declare-datatypes ((TokenValue!1777 0))(
  ( (FloatLiteralValue!3554 (text!12884 List!9134)) (TokenValueExt!1776 (__x!7285 Int)) (Broken!8885 (value!55438 List!9134)) (Object!1792) (End!1777) (Def!1777) (Underscore!1777) (Match!1777) (Else!1777) (Error!1777) (Case!1777) (If!1777) (Extends!1777) (Abstract!1777) (Class!1777) (Val!1777) (DelimiterValue!3554 (del!1837 List!9134)) (KeywordValue!1783 (value!55439 List!9134)) (CommentValue!3554 (value!55440 List!9134)) (WhitespaceValue!3554 (value!55441 List!9134)) (IndentationValue!1777 (value!55442 List!9134)) (String!10784) (Int32!1777) (Broken!8886 (value!55443 List!9134)) (Boolean!1778) (Unit!13583) (OperatorValue!1780 (op!1837 List!9134)) (IdentifierValue!3554 (value!55444 List!9134)) (IdentifierValue!3555 (value!55445 List!9134)) (WhitespaceValue!3555 (value!55446 List!9134)) (True!3554) (False!3554) (Broken!8887 (value!55447 List!9134)) (Broken!8888 (value!55448 List!9134)) (True!3555) (RightBrace!1777) (RightBracket!1777) (Colon!1777) (Null!1777) (Comma!1777) (LeftBracket!1777) (False!3555) (LeftBrace!1777) (ImaginaryLiteralValue!1777 (text!12885 List!9134)) (StringLiteralValue!5331 (value!55449 List!9134)) (EOFValue!1777 (value!55450 List!9134)) (IdentValue!1777 (value!55451 List!9134)) (DelimiterValue!3555 (value!55452 List!9134)) (DedentValue!1777 (value!55453 List!9134)) (NewLineValue!1777 (value!55454 List!9134)) (IntegerValue!5331 (value!55455 (_ BitVec 32)) (text!12886 List!9134)) (IntegerValue!5332 (value!55456 Int) (text!12887 List!9134)) (Times!1777) (Or!1777) (Equal!1777) (Minus!1777) (Broken!8889 (value!55457 List!9134)) (And!1777) (Div!1777) (LessEqual!1777) (Mod!1777) (Concat!3921) (Not!1777) (Plus!1777) (SpaceValue!1777 (value!55458 List!9134)) (IntegerValue!5333 (value!55459 Int) (text!12888 List!9134)) (StringLiteralValue!5332 (text!12889 List!9134)) (FloatLiteralValue!3555 (text!12890 List!9134)) (BytesLiteralValue!1777 (value!55460 List!9134)) (CommentValue!3555 (value!55461 List!9134)) (StringLiteralValue!5333 (value!55462 List!9134)) (ErrorTokenValue!1777 (msg!1838 List!9134)) )
))
(declare-datatypes ((C!4858 0))(
  ( (C!4859 (val!2677 Int)) )
))
(declare-datatypes ((Regex!2144 0))(
  ( (ElementMatch!2144 (c!137595 C!4858)) (Concat!3922 (regOne!4800 Regex!2144) (regTwo!4800 Regex!2144)) (EmptyExpr!2144) (Star!2144 (reg!2473 Regex!2144)) (EmptyLang!2144) (Union!2144 (regOne!4801 Regex!2144) (regTwo!4801 Regex!2144)) )
))
(declare-datatypes ((String!10785 0))(
  ( (String!10786 (value!55463 String)) )
))
(declare-datatypes ((List!9135 0))(
  ( (Nil!9119) (Cons!9119 (h!14520 C!4858) (t!94429 List!9135)) )
))
(declare-datatypes ((IArray!6049 0))(
  ( (IArray!6050 (innerList!3082 List!9135)) )
))
(declare-datatypes ((Conc!3022 0))(
  ( (Node!3022 (left!6751 Conc!3022) (right!7081 Conc!3022) (csize!6274 Int) (cheight!3233 Int)) (Leaf!4466 (xs!5711 IArray!6049) (csize!6275 Int)) (Empty!3022) )
))
(declare-datatypes ((BalanceConc!6058 0))(
  ( (BalanceConc!6059 (c!137596 Conc!3022)) )
))
(declare-datatypes ((TokenValueInjection!3254 0))(
  ( (TokenValueInjection!3255 (toValue!2736 Int) (toChars!2595 Int)) )
))
(declare-datatypes ((Rule!3222 0))(
  ( (Rule!3223 (regex!1711 Regex!2144) (tag!1973 String!10785) (isSeparator!1711 Bool) (transformation!1711 TokenValueInjection!3254)) )
))
(declare-datatypes ((Token!3088 0))(
  ( (Token!3089 (value!55464 TokenValue!1777) (rule!3134 Rule!3222) (size!7598 Int) (originalCharacters!2267 List!9135)) )
))
(declare-datatypes ((List!9136 0))(
  ( (Nil!9120) (Cons!9120 (h!14521 Token!3088) (t!94430 List!9136)) )
))
(declare-fun l!5107 () List!9136)

(declare-fun e!556756 () Bool)

(declare-fun b!846110 () Bool)

(declare-fun tp!266386 () Bool)

(declare-fun inv!21 (TokenValue!1777) Bool)

(assert (=> b!846110 (= e!556756 (and (inv!21 (value!55464 (h!14521 l!5107))) e!556759 tp!266386))))

(declare-fun res!386802 () Bool)

(declare-fun e!556750 () Bool)

(assert (=> start!75380 (=> (not res!386802) (not e!556750))))

(declare-datatypes ((LexerInterface!1513 0))(
  ( (LexerInterfaceExt!1510 (__x!7286 Int)) (Lexer!1511) )
))
(declare-fun thiss!20117 () LexerInterface!1513)

(assert (=> start!75380 (= res!386802 (is-Lexer!1511 thiss!20117))))

(assert (=> start!75380 e!556750))

(assert (=> start!75380 true))

(declare-fun e!556758 () Bool)

(assert (=> start!75380 e!556758))

(declare-fun e!556752 () Bool)

(assert (=> start!75380 e!556752))

(declare-fun separatorToken!297 () Token!3088)

(declare-fun e!556753 () Bool)

(declare-fun inv!11597 (Token!3088) Bool)

(assert (=> start!75380 (and (inv!11597 separatorToken!297) e!556753)))

(declare-fun e!556746 () Bool)

(declare-datatypes ((List!9137 0))(
  ( (Nil!9121) (Cons!9121 (h!14522 Rule!3222) (t!94431 List!9137)) )
))
(declare-fun rules!2621 () List!9137)

(declare-fun lt!320492 () Token!3088)

(declare-fun b!846111 () Bool)

(declare-fun rulesProduceIndividualToken!577 (LexerInterface!1513 List!9137 Token!3088) Bool)

(assert (=> b!846111 (= e!556746 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 lt!320492))))

(declare-fun b!846112 () Bool)

(declare-fun e!556745 () Bool)

(assert (=> b!846112 (= e!556750 (not e!556745))))

(declare-fun res!386800 () Bool)

(assert (=> b!846112 (=> res!386800 e!556745)))

(declare-fun lt!320491 () List!9136)

(assert (=> b!846112 (= res!386800 (or (not (is-Cons!9120 lt!320491)) (not (is-Cons!9120 (t!94430 lt!320491)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!401 (LexerInterface!1513 List!9137 List!9136) Bool)

(assert (=> b!846112 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 lt!320491)))

(declare-fun withSeparatorTokenList!43 (LexerInterface!1513 List!9136 Token!3088) List!9136)

(assert (=> b!846112 (= lt!320491 (withSeparatorTokenList!43 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13584 0))(
  ( (Unit!13585) )
))
(declare-fun lt!320497 () Unit!13584)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!43 (LexerInterface!1513 List!9137 List!9136 Token!3088) Unit!13584)

(assert (=> b!846112 (= lt!320497 (withSeparatorTokenListPreservesRulesProduceTokens!43 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!556762 () Bool)

(assert (=> b!846113 (= e!556762 (and tp!266383 tp!266390))))

(declare-fun b!846114 () Bool)

(declare-fun tp!266387 () Bool)

(assert (=> b!846114 (= e!556752 (and (inv!11597 (h!14521 l!5107)) e!556756 tp!266387))))

(declare-fun b!846115 () Bool)

(declare-fun res!386813 () Bool)

(assert (=> b!846115 (=> (not res!386813) (not e!556750))))

(assert (=> b!846115 (= res!386813 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!846116 () Bool)

(declare-fun res!386808 () Bool)

(assert (=> b!846116 (=> (not res!386808) (not e!556750))))

(assert (=> b!846116 (= res!386808 (isSeparator!1711 (rule!3134 separatorToken!297)))))

(declare-fun b!846117 () Bool)

(declare-fun res!386804 () Bool)

(assert (=> b!846117 (=> (not res!386804) (not e!556750))))

(assert (=> b!846117 (= res!386804 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 l!5107))))

(declare-fun tp!266381 () Bool)

(declare-fun e!556757 () Bool)

(declare-fun e!556764 () Bool)

(declare-fun b!846118 () Bool)

(declare-fun inv!11594 (String!10785) Bool)

(declare-fun inv!11598 (TokenValueInjection!3254) Bool)

(assert (=> b!846118 (= e!556764 (and tp!266381 (inv!11594 (tag!1973 (rule!3134 separatorToken!297))) (inv!11598 (transformation!1711 (rule!3134 separatorToken!297))) e!556757))))

(declare-fun b!846119 () Bool)

(declare-fun res!386810 () Bool)

(assert (=> b!846119 (=> (not res!386810) (not e!556750))))

(declare-fun isEmpty!5378 (List!9137) Bool)

(assert (=> b!846119 (= res!386810 (not (isEmpty!5378 rules!2621)))))

(declare-fun b!846120 () Bool)

(declare-fun res!386799 () Bool)

(declare-fun e!556755 () Bool)

(assert (=> b!846120 (=> res!386799 e!556755)))

(declare-fun head!1471 (List!9136) Token!3088)

(assert (=> b!846120 (= res!386799 (not (= (head!1471 l!5107) (h!14521 lt!320491))))))

(assert (=> b!846121 (= e!556757 (and tp!266389 tp!266391))))

(declare-fun b!846122 () Bool)

(declare-fun e!556754 () Bool)

(assert (=> b!846122 (= e!556755 e!556754)))

(declare-fun res!386803 () Bool)

(assert (=> b!846122 (=> res!386803 e!556754)))

(declare-fun isEmpty!5379 (List!9136) Bool)

(assert (=> b!846122 (= res!386803 (isEmpty!5379 (t!94430 (t!94430 lt!320491))))))

(declare-fun e!556748 () Bool)

(assert (=> b!846122 e!556748))

(declare-fun res!386801 () Bool)

(assert (=> b!846122 (=> (not res!386801) (not e!556748))))

(declare-fun lt!320494 () List!9136)

(assert (=> b!846122 (= res!386801 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 lt!320494))))

(declare-fun lt!320496 () List!9136)

(declare-fun lt!320498 () Unit!13584)

(assert (=> b!846122 (= lt!320498 (withSeparatorTokenListPreservesRulesProduceTokens!43 thiss!20117 rules!2621 lt!320496 separatorToken!297))))

(declare-fun lt!320490 () Unit!13584)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!19 (LexerInterface!1513 List!9137 List!9136 Token!3088) Unit!13584)

(assert (=> b!846122 (= lt!320490 (printWithSeparatorTokenImpliesSeparableTokensList!19 thiss!20117 rules!2621 lt!320496 separatorToken!297))))

(declare-fun separableTokensPredicate!53 (LexerInterface!1513 Token!3088 Token!3088 List!9137) Bool)

(assert (=> b!846122 (separableTokensPredicate!53 thiss!20117 (h!14521 lt!320491) (h!14521 (t!94430 lt!320491)) rules!2621)))

(declare-fun lt!320495 () Unit!13584)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!35 (LexerInterface!1513 Token!3088 Token!3088 List!9137) Unit!13584)

(assert (=> b!846122 (= lt!320495 (lemmaTokensOfDifferentKindsAreSeparable!35 thiss!20117 (h!14521 lt!320491) (h!14521 (t!94430 lt!320491)) rules!2621))))

(declare-fun b!846123 () Bool)

(declare-fun res!386807 () Bool)

(assert (=> b!846123 (=> (not res!386807) (not e!556750))))

(declare-fun lambda!25201 () Int)

(declare-fun forall!2138 (List!9136 Int) Bool)

(assert (=> b!846123 (= res!386807 (forall!2138 l!5107 lambda!25201))))

(declare-fun tp!266384 () Bool)

(declare-fun e!556744 () Bool)

(declare-fun b!846124 () Bool)

(assert (=> b!846124 (= e!556744 (and tp!266384 (inv!11594 (tag!1973 (h!14522 rules!2621))) (inv!11598 (transformation!1711 (h!14522 rules!2621))) e!556762))))

(declare-fun b!846125 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!35 (LexerInterface!1513 List!9136 List!9137) Bool)

(assert (=> b!846125 (= e!556748 (tokensListTwoByTwoPredicateSeparableList!35 thiss!20117 lt!320494 rules!2621))))

(declare-fun e!556749 () Bool)

(declare-fun b!846126 () Bool)

(declare-fun tp!266385 () Bool)

(assert (=> b!846126 (= e!556759 (and tp!266385 (inv!11594 (tag!1973 (rule!3134 (h!14521 l!5107)))) (inv!11598 (transformation!1711 (rule!3134 (h!14521 l!5107)))) e!556749))))

(declare-fun b!846127 () Bool)

(declare-fun res!386809 () Bool)

(assert (=> b!846127 (=> (not res!386809) (not e!556750))))

(declare-fun rulesInvariant!1389 (LexerInterface!1513 List!9137) Bool)

(assert (=> b!846127 (= res!386809 (rulesInvariant!1389 thiss!20117 rules!2621))))

(declare-fun b!846128 () Bool)

(declare-fun tp!266379 () Bool)

(assert (=> b!846128 (= e!556758 (and e!556744 tp!266379))))

(assert (=> b!846129 (= e!556749 (and tp!266382 tp!266380))))

(declare-fun b!846130 () Bool)

(assert (=> b!846130 (= e!556745 e!556755)))

(declare-fun res!386805 () Bool)

(assert (=> b!846130 (=> res!386805 e!556755)))

(assert (=> b!846130 (= res!386805 (not (= (t!94430 (t!94430 lt!320491)) lt!320494)))))

(assert (=> b!846130 (= lt!320494 (withSeparatorTokenList!43 thiss!20117 lt!320496 separatorToken!297))))

(declare-fun tail!1029 (List!9136) List!9136)

(assert (=> b!846130 (= lt!320496 (tail!1029 l!5107))))

(declare-fun b!846131 () Bool)

(declare-fun res!386806 () Bool)

(assert (=> b!846131 (=> res!386806 e!556755)))

(assert (=> b!846131 (= res!386806 (not (= (h!14521 (t!94430 lt!320491)) separatorToken!297)))))

(declare-fun b!846132 () Bool)

(assert (=> b!846132 (= e!556754 e!556746)))

(declare-fun res!386811 () Bool)

(assert (=> b!846132 (=> res!386811 e!556746)))

(assert (=> b!846132 (= res!386811 (not (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 (t!94430 lt!320491)))))))

(assert (=> b!846132 (separableTokensPredicate!53 thiss!20117 (h!14521 (t!94430 lt!320491)) lt!320492 rules!2621)))

(declare-fun lt!320493 () Unit!13584)

(assert (=> b!846132 (= lt!320493 (lemmaTokensOfDifferentKindsAreSeparable!35 thiss!20117 (h!14521 (t!94430 lt!320491)) lt!320492 rules!2621))))

(assert (=> b!846132 (= lt!320492 (head!1471 (t!94430 (t!94430 lt!320491))))))

(declare-fun tp!266388 () Bool)

(declare-fun b!846133 () Bool)

(assert (=> b!846133 (= e!556753 (and (inv!21 (value!55464 separatorToken!297)) e!556764 tp!266388))))

(declare-fun b!846134 () Bool)

(declare-fun res!386812 () Bool)

(assert (=> b!846134 (=> (not res!386812) (not e!556750))))

(declare-fun sepAndNonSepRulesDisjointChars!511 (List!9137 List!9137) Bool)

(assert (=> b!846134 (= res!386812 (sepAndNonSepRulesDisjointChars!511 rules!2621 rules!2621))))

(assert (= (and start!75380 res!386802) b!846119))

(assert (= (and b!846119 res!386810) b!846127))

(assert (= (and b!846127 res!386809) b!846117))

(assert (= (and b!846117 res!386804) b!846115))

(assert (= (and b!846115 res!386813) b!846116))

(assert (= (and b!846116 res!386808) b!846123))

(assert (= (and b!846123 res!386807) b!846134))

(assert (= (and b!846134 res!386812) b!846112))

(assert (= (and b!846112 (not res!386800)) b!846130))

(assert (= (and b!846130 (not res!386805)) b!846120))

(assert (= (and b!846120 (not res!386799)) b!846131))

(assert (= (and b!846131 (not res!386806)) b!846122))

(assert (= (and b!846122 res!386801) b!846125))

(assert (= (and b!846122 (not res!386803)) b!846132))

(assert (= (and b!846132 (not res!386811)) b!846111))

(assert (= b!846124 b!846113))

(assert (= b!846128 b!846124))

(assert (= (and start!75380 (is-Cons!9121 rules!2621)) b!846128))

(assert (= b!846126 b!846129))

(assert (= b!846110 b!846126))

(assert (= b!846114 b!846110))

(assert (= (and start!75380 (is-Cons!9120 l!5107)) b!846114))

(assert (= b!846118 b!846121))

(assert (= b!846133 b!846118))

(assert (= start!75380 b!846133))

(declare-fun m!1081217 () Bool)

(assert (=> b!846122 m!1081217))

(declare-fun m!1081219 () Bool)

(assert (=> b!846122 m!1081219))

(declare-fun m!1081221 () Bool)

(assert (=> b!846122 m!1081221))

(declare-fun m!1081223 () Bool)

(assert (=> b!846122 m!1081223))

(declare-fun m!1081225 () Bool)

(assert (=> b!846122 m!1081225))

(declare-fun m!1081227 () Bool)

(assert (=> b!846122 m!1081227))

(declare-fun m!1081229 () Bool)

(assert (=> b!846115 m!1081229))

(declare-fun m!1081231 () Bool)

(assert (=> b!846127 m!1081231))

(declare-fun m!1081233 () Bool)

(assert (=> b!846111 m!1081233))

(declare-fun m!1081235 () Bool)

(assert (=> b!846114 m!1081235))

(declare-fun m!1081237 () Bool)

(assert (=> b!846133 m!1081237))

(declare-fun m!1081239 () Bool)

(assert (=> b!846130 m!1081239))

(declare-fun m!1081241 () Bool)

(assert (=> b!846130 m!1081241))

(declare-fun m!1081243 () Bool)

(assert (=> b!846117 m!1081243))

(declare-fun m!1081245 () Bool)

(assert (=> b!846124 m!1081245))

(declare-fun m!1081247 () Bool)

(assert (=> b!846124 m!1081247))

(declare-fun m!1081249 () Bool)

(assert (=> b!846125 m!1081249))

(declare-fun m!1081251 () Bool)

(assert (=> b!846123 m!1081251))

(declare-fun m!1081253 () Bool)

(assert (=> b!846112 m!1081253))

(declare-fun m!1081255 () Bool)

(assert (=> b!846112 m!1081255))

(declare-fun m!1081257 () Bool)

(assert (=> b!846112 m!1081257))

(declare-fun m!1081259 () Bool)

(assert (=> start!75380 m!1081259))

(declare-fun m!1081261 () Bool)

(assert (=> b!846118 m!1081261))

(declare-fun m!1081263 () Bool)

(assert (=> b!846118 m!1081263))

(declare-fun m!1081265 () Bool)

(assert (=> b!846134 m!1081265))

(declare-fun m!1081267 () Bool)

(assert (=> b!846119 m!1081267))

(declare-fun m!1081269 () Bool)

(assert (=> b!846110 m!1081269))

(declare-fun m!1081271 () Bool)

(assert (=> b!846126 m!1081271))

(declare-fun m!1081273 () Bool)

(assert (=> b!846126 m!1081273))

(declare-fun m!1081275 () Bool)

(assert (=> b!846132 m!1081275))

(declare-fun m!1081277 () Bool)

(assert (=> b!846132 m!1081277))

(declare-fun m!1081279 () Bool)

(assert (=> b!846132 m!1081279))

(declare-fun m!1081281 () Bool)

(assert (=> b!846132 m!1081281))

(declare-fun m!1081283 () Bool)

(assert (=> b!846120 m!1081283))

(push 1)

(assert (not b!846123))

(assert (not b!846117))

(assert (not b!846128))

(assert (not b!846126))

(assert (not b_next!25525))

(assert (not b!846133))

(assert (not b_next!25529))

(assert (not b!846115))

(assert (not b_next!25527))

(assert (not b_next!25535))

(assert b_and!73617)

(assert b_and!73619)

(assert (not b!846118))

(assert (not start!75380))

(assert (not b!846122))

(assert (not b!846124))

(assert (not b!846110))

(assert (not b!846111))

(assert (not b!846127))

(assert (not b!846119))

(assert (not b!846112))

(assert (not b_next!25533))

(assert (not b!846134))

(assert b_and!73609)

(assert (not b!846120))

(assert (not b!846130))

(assert b_and!73613)

(assert (not b!846132))

(assert (not b!846114))

(assert (not b!846125))

(assert b_and!73615)

(assert (not b_next!25531))

(assert b_and!73611)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25533))

(assert (not b_next!25525))

(assert (not b_next!25529))

(assert b_and!73609)

(assert (not b_next!25527))

(assert b_and!73613)

(assert b_and!73615)

(assert (not b_next!25535))

(assert b_and!73617)

(assert b_and!73619)

(assert (not b_next!25531))

(assert b_and!73611)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!263336 () Bool)

(assert (=> d!263336 (= (inv!11594 (tag!1973 (rule!3134 (h!14521 l!5107)))) (= (mod (str.len (value!55463 (tag!1973 (rule!3134 (h!14521 l!5107))))) 2) 0))))

(assert (=> b!846126 d!263336))

(declare-fun d!263338 () Bool)

(declare-fun res!386865 () Bool)

(declare-fun e!556830 () Bool)

(assert (=> d!263338 (=> (not res!386865) (not e!556830))))

(declare-fun semiInverseModEq!661 (Int Int) Bool)

(assert (=> d!263338 (= res!386865 (semiInverseModEq!661 (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (toValue!2736 (transformation!1711 (rule!3134 (h!14521 l!5107))))))))

(assert (=> d!263338 (= (inv!11598 (transformation!1711 (rule!3134 (h!14521 l!5107)))) e!556830)))

(declare-fun b!846212 () Bool)

(declare-fun equivClasses!628 (Int Int) Bool)

(assert (=> b!846212 (= e!556830 (equivClasses!628 (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (toValue!2736 (transformation!1711 (rule!3134 (h!14521 l!5107))))))))

(assert (= (and d!263338 res!386865) b!846212))

(declare-fun m!1081353 () Bool)

(assert (=> d!263338 m!1081353))

(declare-fun m!1081355 () Bool)

(assert (=> b!846212 m!1081355))

(assert (=> b!846126 d!263338))

(declare-fun d!263340 () Bool)

(declare-fun res!386869 () Bool)

(declare-fun e!556833 () Bool)

(assert (=> d!263340 (=> (not res!386869) (not e!556833))))

(declare-fun rulesValid!592 (LexerInterface!1513 List!9137) Bool)

(assert (=> d!263340 (= res!386869 (rulesValid!592 thiss!20117 rules!2621))))

(assert (=> d!263340 (= (rulesInvariant!1389 thiss!20117 rules!2621) e!556833)))

(declare-fun b!846215 () Bool)

(declare-datatypes ((List!9142 0))(
  ( (Nil!9126) (Cons!9126 (h!14527 String!10785) (t!94468 List!9142)) )
))
(declare-fun noDuplicateTag!592 (LexerInterface!1513 List!9137 List!9142) Bool)

(assert (=> b!846215 (= e!556833 (noDuplicateTag!592 thiss!20117 rules!2621 Nil!9126))))

(assert (= (and d!263340 res!386869) b!846215))

(declare-fun m!1081357 () Bool)

(assert (=> d!263340 m!1081357))

(declare-fun m!1081359 () Bool)

(assert (=> b!846215 m!1081359))

(assert (=> b!846127 d!263340))

(declare-fun bs!230424 () Bool)

(declare-fun d!263342 () Bool)

(assert (= bs!230424 (and d!263342 b!846123)))

(declare-fun lambda!25207 () Int)

(assert (=> bs!230424 (not (= lambda!25207 lambda!25201))))

(declare-fun b!846278 () Bool)

(declare-fun e!556883 () Bool)

(assert (=> b!846278 (= e!556883 true)))

(declare-fun b!846277 () Bool)

(declare-fun e!556882 () Bool)

(assert (=> b!846277 (= e!556882 e!556883)))

(declare-fun b!846276 () Bool)

(declare-fun e!556881 () Bool)

(assert (=> b!846276 (= e!556881 e!556882)))

(assert (=> d!263342 e!556881))

(assert (= b!846277 b!846278))

(assert (= b!846276 b!846277))

(assert (= (and d!263342 (is-Cons!9121 rules!2621)) b!846276))

(declare-fun order!5805 () Int)

(declare-fun order!5807 () Int)

(declare-fun dynLambda!4220 (Int Int) Int)

(declare-fun dynLambda!4221 (Int Int) Int)

(assert (=> b!846278 (< (dynLambda!4220 order!5805 (toValue!2736 (transformation!1711 (h!14522 rules!2621)))) (dynLambda!4221 order!5807 lambda!25207))))

(declare-fun order!5809 () Int)

(declare-fun dynLambda!4222 (Int Int) Int)

(assert (=> b!846278 (< (dynLambda!4222 order!5809 (toChars!2595 (transformation!1711 (h!14522 rules!2621)))) (dynLambda!4221 order!5807 lambda!25207))))

(assert (=> d!263342 true))

(declare-fun lt!320530 () Bool)

(assert (=> d!263342 (= lt!320530 (forall!2138 l!5107 lambda!25207))))

(declare-fun e!556874 () Bool)

(assert (=> d!263342 (= lt!320530 e!556874)))

(declare-fun res!386906 () Bool)

(assert (=> d!263342 (=> res!386906 e!556874)))

(assert (=> d!263342 (= res!386906 (not (is-Cons!9120 l!5107)))))

(assert (=> d!263342 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263342 (= (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 l!5107) lt!320530)))

(declare-fun b!846266 () Bool)

(declare-fun e!556873 () Bool)

(assert (=> b!846266 (= e!556874 e!556873)))

(declare-fun res!386905 () Bool)

(assert (=> b!846266 (=> (not res!386905) (not e!556873))))

(assert (=> b!846266 (= res!386905 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 l!5107)))))

(declare-fun b!846267 () Bool)

(assert (=> b!846267 (= e!556873 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 (t!94430 l!5107)))))

(assert (= (and d!263342 (not res!386906)) b!846266))

(assert (= (and b!846266 res!386905) b!846267))

(declare-fun m!1081395 () Bool)

(assert (=> d!263342 m!1081395))

(assert (=> d!263342 m!1081267))

(declare-fun m!1081397 () Bool)

(assert (=> b!846266 m!1081397))

(declare-fun m!1081399 () Bool)

(assert (=> b!846267 m!1081399))

(assert (=> b!846117 d!263342))

(declare-fun d!263362 () Bool)

(declare-fun res!386911 () Bool)

(declare-fun e!556888 () Bool)

(assert (=> d!263362 (=> res!386911 e!556888)))

(assert (=> d!263362 (= res!386911 (not (is-Cons!9121 rules!2621)))))

(assert (=> d!263362 (= (sepAndNonSepRulesDisjointChars!511 rules!2621 rules!2621) e!556888)))

(declare-fun b!846285 () Bool)

(declare-fun e!556889 () Bool)

(assert (=> b!846285 (= e!556888 e!556889)))

(declare-fun res!386912 () Bool)

(assert (=> b!846285 (=> (not res!386912) (not e!556889))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!228 (Rule!3222 List!9137) Bool)

(assert (=> b!846285 (= res!386912 (ruleDisjointCharsFromAllFromOtherType!228 (h!14522 rules!2621) rules!2621))))

(declare-fun b!846286 () Bool)

(assert (=> b!846286 (= e!556889 (sepAndNonSepRulesDisjointChars!511 rules!2621 (t!94431 rules!2621)))))

(assert (= (and d!263362 (not res!386911)) b!846285))

(assert (= (and b!846285 res!386912) b!846286))

(declare-fun m!1081401 () Bool)

(assert (=> b!846285 m!1081401))

(declare-fun m!1081403 () Bool)

(assert (=> b!846286 m!1081403))

(assert (=> b!846134 d!263362))

(declare-fun d!263364 () Bool)

(assert (=> d!263364 (= (inv!11594 (tag!1973 (h!14522 rules!2621))) (= (mod (str.len (value!55463 (tag!1973 (h!14522 rules!2621)))) 2) 0))))

(assert (=> b!846124 d!263364))

(declare-fun d!263366 () Bool)

(declare-fun res!386913 () Bool)

(declare-fun e!556890 () Bool)

(assert (=> d!263366 (=> (not res!386913) (not e!556890))))

(assert (=> d!263366 (= res!386913 (semiInverseModEq!661 (toChars!2595 (transformation!1711 (h!14522 rules!2621))) (toValue!2736 (transformation!1711 (h!14522 rules!2621)))))))

(assert (=> d!263366 (= (inv!11598 (transformation!1711 (h!14522 rules!2621))) e!556890)))

(declare-fun b!846287 () Bool)

(assert (=> b!846287 (= e!556890 (equivClasses!628 (toChars!2595 (transformation!1711 (h!14522 rules!2621))) (toValue!2736 (transformation!1711 (h!14522 rules!2621)))))))

(assert (= (and d!263366 res!386913) b!846287))

(declare-fun m!1081405 () Bool)

(assert (=> d!263366 m!1081405))

(declare-fun m!1081407 () Bool)

(assert (=> b!846287 m!1081407))

(assert (=> b!846124 d!263366))

(declare-fun d!263368 () Bool)

(declare-fun res!386918 () Bool)

(declare-fun e!556893 () Bool)

(assert (=> d!263368 (=> (not res!386918) (not e!556893))))

(declare-fun isEmpty!5382 (List!9135) Bool)

(assert (=> d!263368 (= res!386918 (not (isEmpty!5382 (originalCharacters!2267 (h!14521 l!5107)))))))

(assert (=> d!263368 (= (inv!11597 (h!14521 l!5107)) e!556893)))

(declare-fun b!846292 () Bool)

(declare-fun res!386919 () Bool)

(assert (=> b!846292 (=> (not res!386919) (not e!556893))))

(declare-fun list!3575 (BalanceConc!6058) List!9135)

(declare-fun dynLambda!4223 (Int TokenValue!1777) BalanceConc!6058)

(assert (=> b!846292 (= res!386919 (= (originalCharacters!2267 (h!14521 l!5107)) (list!3575 (dynLambda!4223 (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (value!55464 (h!14521 l!5107))))))))

(declare-fun b!846293 () Bool)

(declare-fun size!7600 (List!9135) Int)

(assert (=> b!846293 (= e!556893 (= (size!7598 (h!14521 l!5107)) (size!7600 (originalCharacters!2267 (h!14521 l!5107)))))))

(assert (= (and d!263368 res!386918) b!846292))

(assert (= (and b!846292 res!386919) b!846293))

(declare-fun b_lambda!27971 () Bool)

(assert (=> (not b_lambda!27971) (not b!846292)))

(declare-fun tb!58735 () Bool)

(declare-fun t!94447 () Bool)

(assert (=> (and b!846121 (= (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107))))) t!94447) tb!58735))

(declare-fun b!846298 () Bool)

(declare-fun e!556896 () Bool)

(declare-fun tp!266436 () Bool)

(declare-fun inv!11601 (Conc!3022) Bool)

(assert (=> b!846298 (= e!556896 (and (inv!11601 (c!137596 (dynLambda!4223 (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (value!55464 (h!14521 l!5107))))) tp!266436))))

(declare-fun result!68106 () Bool)

(declare-fun inv!11602 (BalanceConc!6058) Bool)

(assert (=> tb!58735 (= result!68106 (and (inv!11602 (dynLambda!4223 (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (value!55464 (h!14521 l!5107)))) e!556896))))

(assert (= tb!58735 b!846298))

(declare-fun m!1081409 () Bool)

(assert (=> b!846298 m!1081409))

(declare-fun m!1081411 () Bool)

(assert (=> tb!58735 m!1081411))

(assert (=> b!846292 t!94447))

(declare-fun b_and!73639 () Bool)

(assert (= b_and!73611 (and (=> t!94447 result!68106) b_and!73639)))

(declare-fun t!94449 () Bool)

(declare-fun tb!58737 () Bool)

(assert (=> (and b!846129 (= (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107))))) t!94449) tb!58737))

(declare-fun result!68110 () Bool)

(assert (= result!68110 result!68106))

(assert (=> b!846292 t!94449))

(declare-fun b_and!73641 () Bool)

(assert (= b_and!73615 (and (=> t!94449 result!68110) b_and!73641)))

(declare-fun t!94451 () Bool)

(declare-fun tb!58739 () Bool)

(assert (=> (and b!846113 (= (toChars!2595 (transformation!1711 (h!14522 rules!2621))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107))))) t!94451) tb!58739))

(declare-fun result!68112 () Bool)

(assert (= result!68112 result!68106))

(assert (=> b!846292 t!94451))

(declare-fun b_and!73643 () Bool)

(assert (= b_and!73619 (and (=> t!94451 result!68112) b_and!73643)))

(declare-fun m!1081413 () Bool)

(assert (=> d!263368 m!1081413))

(declare-fun m!1081415 () Bool)

(assert (=> b!846292 m!1081415))

(assert (=> b!846292 m!1081415))

(declare-fun m!1081417 () Bool)

(assert (=> b!846292 m!1081417))

(declare-fun m!1081419 () Bool)

(assert (=> b!846293 m!1081419))

(assert (=> b!846114 d!263368))

(declare-fun d!263370 () Bool)

(declare-fun res!386924 () Bool)

(declare-fun e!556901 () Bool)

(assert (=> d!263370 (=> res!386924 e!556901)))

(assert (=> d!263370 (= res!386924 (or (not (is-Cons!9120 lt!320494)) (not (is-Cons!9120 (t!94430 lt!320494)))))))

(assert (=> d!263370 (= (tokensListTwoByTwoPredicateSeparableList!35 thiss!20117 lt!320494 rules!2621) e!556901)))

(declare-fun b!846303 () Bool)

(declare-fun e!556902 () Bool)

(assert (=> b!846303 (= e!556901 e!556902)))

(declare-fun res!386925 () Bool)

(assert (=> b!846303 (=> (not res!386925) (not e!556902))))

(assert (=> b!846303 (= res!386925 (separableTokensPredicate!53 thiss!20117 (h!14521 lt!320494) (h!14521 (t!94430 lt!320494)) rules!2621))))

(declare-fun lt!320548 () Unit!13584)

(declare-fun Unit!13589 () Unit!13584)

(assert (=> b!846303 (= lt!320548 Unit!13589)))

(declare-fun size!7601 (BalanceConc!6058) Int)

(declare-fun charsOf!982 (Token!3088) BalanceConc!6058)

(assert (=> b!846303 (> (size!7601 (charsOf!982 (h!14521 (t!94430 lt!320494)))) 0)))

(declare-fun lt!320550 () Unit!13584)

(declare-fun Unit!13590 () Unit!13584)

(assert (=> b!846303 (= lt!320550 Unit!13590)))

(assert (=> b!846303 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 (t!94430 lt!320494)))))

(declare-fun lt!320551 () Unit!13584)

(declare-fun Unit!13591 () Unit!13584)

(assert (=> b!846303 (= lt!320551 Unit!13591)))

(assert (=> b!846303 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 lt!320494))))

(declare-fun lt!320547 () Unit!13584)

(declare-fun lt!320549 () Unit!13584)

(assert (=> b!846303 (= lt!320547 lt!320549)))

(assert (=> b!846303 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 (t!94430 lt!320494)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!223 (LexerInterface!1513 List!9137 List!9136 Token!3088) Unit!13584)

(assert (=> b!846303 (= lt!320549 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!223 thiss!20117 rules!2621 lt!320494 (h!14521 (t!94430 lt!320494))))))

(declare-fun lt!320545 () Unit!13584)

(declare-fun lt!320546 () Unit!13584)

(assert (=> b!846303 (= lt!320545 lt!320546)))

(assert (=> b!846303 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 lt!320494))))

(assert (=> b!846303 (= lt!320546 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!223 thiss!20117 rules!2621 lt!320494 (h!14521 lt!320494)))))

(declare-fun b!846304 () Bool)

(assert (=> b!846304 (= e!556902 (tokensListTwoByTwoPredicateSeparableList!35 thiss!20117 (Cons!9120 (h!14521 (t!94430 lt!320494)) (t!94430 (t!94430 lt!320494))) rules!2621))))

(assert (= (and d!263370 (not res!386924)) b!846303))

(assert (= (and b!846303 res!386925) b!846304))

(declare-fun m!1081421 () Bool)

(assert (=> b!846303 m!1081421))

(declare-fun m!1081423 () Bool)

(assert (=> b!846303 m!1081423))

(declare-fun m!1081425 () Bool)

(assert (=> b!846303 m!1081425))

(declare-fun m!1081427 () Bool)

(assert (=> b!846303 m!1081427))

(declare-fun m!1081429 () Bool)

(assert (=> b!846303 m!1081429))

(assert (=> b!846303 m!1081427))

(declare-fun m!1081431 () Bool)

(assert (=> b!846303 m!1081431))

(declare-fun m!1081433 () Bool)

(assert (=> b!846303 m!1081433))

(declare-fun m!1081435 () Bool)

(assert (=> b!846304 m!1081435))

(assert (=> b!846125 d!263370))

(declare-fun d!263372 () Bool)

(declare-fun lt!320559 () Bool)

(declare-fun e!556923 () Bool)

(assert (=> d!263372 (= lt!320559 e!556923)))

(declare-fun res!386936 () Bool)

(assert (=> d!263372 (=> (not res!386936) (not e!556923))))

(declare-datatypes ((IArray!6053 0))(
  ( (IArray!6054 (innerList!3084 List!9136)) )
))
(declare-datatypes ((Conc!3024 0))(
  ( (Node!3024 (left!6757 Conc!3024) (right!7087 Conc!3024) (csize!6278 Int) (cheight!3235 Int)) (Leaf!4468 (xs!5713 IArray!6053) (csize!6279 Int)) (Empty!3024) )
))
(declare-datatypes ((BalanceConc!6062 0))(
  ( (BalanceConc!6063 (c!137637 Conc!3024)) )
))
(declare-fun list!3576 (BalanceConc!6062) List!9136)

(declare-datatypes ((tuple2!10350 0))(
  ( (tuple2!10351 (_1!6001 BalanceConc!6062) (_2!6001 BalanceConc!6058)) )
))
(declare-fun lex!609 (LexerInterface!1513 List!9137 BalanceConc!6058) tuple2!10350)

(declare-fun print!546 (LexerInterface!1513 BalanceConc!6062) BalanceConc!6058)

(declare-fun singletonSeq!522 (Token!3088) BalanceConc!6062)

(assert (=> d!263372 (= res!386936 (= (list!3576 (_1!6001 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 separatorToken!297))))) (list!3576 (singletonSeq!522 separatorToken!297))))))

(declare-fun e!556924 () Bool)

(assert (=> d!263372 (= lt!320559 e!556924)))

(declare-fun res!386938 () Bool)

(assert (=> d!263372 (=> (not res!386938) (not e!556924))))

(declare-fun lt!320558 () tuple2!10350)

(declare-fun size!7602 (BalanceConc!6062) Int)

(assert (=> d!263372 (= res!386938 (= (size!7602 (_1!6001 lt!320558)) 1))))

(assert (=> d!263372 (= lt!320558 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 separatorToken!297))))))

(assert (=> d!263372 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263372 (= (rulesProduceIndividualToken!577 thiss!20117 rules!2621 separatorToken!297) lt!320559)))

(declare-fun b!846331 () Bool)

(declare-fun res!386937 () Bool)

(assert (=> b!846331 (=> (not res!386937) (not e!556924))))

(declare-fun apply!1848 (BalanceConc!6062 Int) Token!3088)

(assert (=> b!846331 (= res!386937 (= (apply!1848 (_1!6001 lt!320558) 0) separatorToken!297))))

(declare-fun b!846332 () Bool)

(declare-fun isEmpty!5383 (BalanceConc!6058) Bool)

(assert (=> b!846332 (= e!556924 (isEmpty!5383 (_2!6001 lt!320558)))))

(declare-fun b!846333 () Bool)

(assert (=> b!846333 (= e!556923 (isEmpty!5383 (_2!6001 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 separatorToken!297))))))))

(assert (= (and d!263372 res!386938) b!846331))

(assert (= (and b!846331 res!386937) b!846332))

(assert (= (and d!263372 res!386936) b!846333))

(assert (=> d!263372 m!1081267))

(declare-fun m!1081449 () Bool)

(assert (=> d!263372 m!1081449))

(declare-fun m!1081451 () Bool)

(assert (=> d!263372 m!1081451))

(declare-fun m!1081453 () Bool)

(assert (=> d!263372 m!1081453))

(assert (=> d!263372 m!1081449))

(declare-fun m!1081455 () Bool)

(assert (=> d!263372 m!1081455))

(assert (=> d!263372 m!1081451))

(declare-fun m!1081457 () Bool)

(assert (=> d!263372 m!1081457))

(assert (=> d!263372 m!1081449))

(declare-fun m!1081459 () Bool)

(assert (=> d!263372 m!1081459))

(declare-fun m!1081461 () Bool)

(assert (=> b!846331 m!1081461))

(declare-fun m!1081463 () Bool)

(assert (=> b!846332 m!1081463))

(assert (=> b!846333 m!1081449))

(assert (=> b!846333 m!1081449))

(assert (=> b!846333 m!1081451))

(assert (=> b!846333 m!1081451))

(assert (=> b!846333 m!1081457))

(declare-fun m!1081465 () Bool)

(assert (=> b!846333 m!1081465))

(assert (=> b!846115 d!263372))

(declare-fun b!846344 () Bool)

(declare-fun e!556933 () Bool)

(declare-fun inv!17 (TokenValue!1777) Bool)

(assert (=> b!846344 (= e!556933 (inv!17 (value!55464 (h!14521 l!5107))))))

(declare-fun b!846345 () Bool)

(declare-fun e!556932 () Bool)

(declare-fun inv!16 (TokenValue!1777) Bool)

(assert (=> b!846345 (= e!556932 (inv!16 (value!55464 (h!14521 l!5107))))))

(declare-fun b!846346 () Bool)

(assert (=> b!846346 (= e!556932 e!556933)))

(declare-fun c!137610 () Bool)

(assert (=> b!846346 (= c!137610 (is-IntegerValue!5332 (value!55464 (h!14521 l!5107))))))

(declare-fun b!846347 () Bool)

(declare-fun res!386941 () Bool)

(declare-fun e!556931 () Bool)

(assert (=> b!846347 (=> res!386941 e!556931)))

(assert (=> b!846347 (= res!386941 (not (is-IntegerValue!5333 (value!55464 (h!14521 l!5107)))))))

(assert (=> b!846347 (= e!556933 e!556931)))

(declare-fun d!263380 () Bool)

(declare-fun c!137609 () Bool)

(assert (=> d!263380 (= c!137609 (is-IntegerValue!5331 (value!55464 (h!14521 l!5107))))))

(assert (=> d!263380 (= (inv!21 (value!55464 (h!14521 l!5107))) e!556932)))

(declare-fun b!846348 () Bool)

(declare-fun inv!15 (TokenValue!1777) Bool)

(assert (=> b!846348 (= e!556931 (inv!15 (value!55464 (h!14521 l!5107))))))

(assert (= (and d!263380 c!137609) b!846345))

(assert (= (and d!263380 (not c!137609)) b!846346))

(assert (= (and b!846346 c!137610) b!846344))

(assert (= (and b!846346 (not c!137610)) b!846347))

(assert (= (and b!846347 (not res!386941)) b!846348))

(declare-fun m!1081467 () Bool)

(assert (=> b!846344 m!1081467))

(declare-fun m!1081469 () Bool)

(assert (=> b!846345 m!1081469))

(declare-fun m!1081471 () Bool)

(assert (=> b!846348 m!1081471))

(assert (=> b!846110 d!263380))

(declare-fun d!263382 () Bool)

(declare-fun lt!320561 () Bool)

(declare-fun e!556934 () Bool)

(assert (=> d!263382 (= lt!320561 e!556934)))

(declare-fun res!386942 () Bool)

(assert (=> d!263382 (=> (not res!386942) (not e!556934))))

(assert (=> d!263382 (= res!386942 (= (list!3576 (_1!6001 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 (h!14521 (t!94430 lt!320491))))))) (list!3576 (singletonSeq!522 (h!14521 (t!94430 lt!320491))))))))

(declare-fun e!556935 () Bool)

(assert (=> d!263382 (= lt!320561 e!556935)))

(declare-fun res!386944 () Bool)

(assert (=> d!263382 (=> (not res!386944) (not e!556935))))

(declare-fun lt!320560 () tuple2!10350)

(assert (=> d!263382 (= res!386944 (= (size!7602 (_1!6001 lt!320560)) 1))))

(assert (=> d!263382 (= lt!320560 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 (h!14521 (t!94430 lt!320491))))))))

(assert (=> d!263382 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263382 (= (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 (t!94430 lt!320491))) lt!320561)))

(declare-fun b!846349 () Bool)

(declare-fun res!386943 () Bool)

(assert (=> b!846349 (=> (not res!386943) (not e!556935))))

(assert (=> b!846349 (= res!386943 (= (apply!1848 (_1!6001 lt!320560) 0) (h!14521 (t!94430 lt!320491))))))

(declare-fun b!846350 () Bool)

(assert (=> b!846350 (= e!556935 (isEmpty!5383 (_2!6001 lt!320560)))))

(declare-fun b!846351 () Bool)

(assert (=> b!846351 (= e!556934 (isEmpty!5383 (_2!6001 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 (h!14521 (t!94430 lt!320491))))))))))

(assert (= (and d!263382 res!386944) b!846349))

(assert (= (and b!846349 res!386943) b!846350))

(assert (= (and d!263382 res!386942) b!846351))

(assert (=> d!263382 m!1081267))

(declare-fun m!1081473 () Bool)

(assert (=> d!263382 m!1081473))

(declare-fun m!1081475 () Bool)

(assert (=> d!263382 m!1081475))

(declare-fun m!1081477 () Bool)

(assert (=> d!263382 m!1081477))

(assert (=> d!263382 m!1081473))

(declare-fun m!1081479 () Bool)

(assert (=> d!263382 m!1081479))

(assert (=> d!263382 m!1081475))

(declare-fun m!1081481 () Bool)

(assert (=> d!263382 m!1081481))

(assert (=> d!263382 m!1081473))

(declare-fun m!1081483 () Bool)

(assert (=> d!263382 m!1081483))

(declare-fun m!1081485 () Bool)

(assert (=> b!846349 m!1081485))

(declare-fun m!1081487 () Bool)

(assert (=> b!846350 m!1081487))

(assert (=> b!846351 m!1081473))

(assert (=> b!846351 m!1081473))

(assert (=> b!846351 m!1081475))

(assert (=> b!846351 m!1081475))

(assert (=> b!846351 m!1081481))

(declare-fun m!1081489 () Bool)

(assert (=> b!846351 m!1081489))

(assert (=> b!846132 d!263382))

(declare-fun d!263384 () Bool)

(declare-fun prefixMatchZipperSequence!20 (Regex!2144 BalanceConc!6058) Bool)

(declare-fun rulesRegex!15 (LexerInterface!1513 List!9137) Regex!2144)

(declare-fun ++!2357 (BalanceConc!6058 BalanceConc!6058) BalanceConc!6058)

(declare-fun singletonSeq!523 (C!4858) BalanceConc!6058)

(declare-fun apply!1849 (BalanceConc!6058 Int) C!4858)

(assert (=> d!263384 (= (separableTokensPredicate!53 thiss!20117 (h!14521 (t!94430 lt!320491)) lt!320492 rules!2621) (not (prefixMatchZipperSequence!20 (rulesRegex!15 thiss!20117 rules!2621) (++!2357 (charsOf!982 (h!14521 (t!94430 lt!320491))) (singletonSeq!523 (apply!1849 (charsOf!982 lt!320492) 0))))))))

(declare-fun bs!230428 () Bool)

(assert (= bs!230428 d!263384))

(declare-fun m!1081491 () Bool)

(assert (=> bs!230428 m!1081491))

(declare-fun m!1081493 () Bool)

(assert (=> bs!230428 m!1081493))

(declare-fun m!1081495 () Bool)

(assert (=> bs!230428 m!1081495))

(declare-fun m!1081497 () Bool)

(assert (=> bs!230428 m!1081497))

(assert (=> bs!230428 m!1081493))

(assert (=> bs!230428 m!1081491))

(declare-fun m!1081499 () Bool)

(assert (=> bs!230428 m!1081499))

(declare-fun m!1081501 () Bool)

(assert (=> bs!230428 m!1081501))

(assert (=> bs!230428 m!1081501))

(assert (=> bs!230428 m!1081497))

(declare-fun m!1081503 () Bool)

(assert (=> bs!230428 m!1081503))

(assert (=> bs!230428 m!1081499))

(assert (=> bs!230428 m!1081495))

(assert (=> b!846132 d!263384))

(declare-fun d!263386 () Bool)

(assert (=> d!263386 (separableTokensPredicate!53 thiss!20117 (h!14521 (t!94430 lt!320491)) lt!320492 rules!2621)))

(declare-fun lt!320564 () Unit!13584)

(declare-fun choose!4989 (LexerInterface!1513 Token!3088 Token!3088 List!9137) Unit!13584)

(assert (=> d!263386 (= lt!320564 (choose!4989 thiss!20117 (h!14521 (t!94430 lt!320491)) lt!320492 rules!2621))))

(assert (=> d!263386 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263386 (= (lemmaTokensOfDifferentKindsAreSeparable!35 thiss!20117 (h!14521 (t!94430 lt!320491)) lt!320492 rules!2621) lt!320564)))

(declare-fun bs!230429 () Bool)

(assert (= bs!230429 d!263386))

(assert (=> bs!230429 m!1081277))

(declare-fun m!1081505 () Bool)

(assert (=> bs!230429 m!1081505))

(assert (=> bs!230429 m!1081267))

(assert (=> b!846132 d!263386))

(declare-fun d!263388 () Bool)

(assert (=> d!263388 (= (head!1471 (t!94430 (t!94430 lt!320491))) (h!14521 (t!94430 (t!94430 lt!320491))))))

(assert (=> b!846132 d!263388))

(declare-fun d!263390 () Bool)

(declare-fun lt!320566 () Bool)

(declare-fun e!556936 () Bool)

(assert (=> d!263390 (= lt!320566 e!556936)))

(declare-fun res!386945 () Bool)

(assert (=> d!263390 (=> (not res!386945) (not e!556936))))

(assert (=> d!263390 (= res!386945 (= (list!3576 (_1!6001 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 lt!320492))))) (list!3576 (singletonSeq!522 lt!320492))))))

(declare-fun e!556937 () Bool)

(assert (=> d!263390 (= lt!320566 e!556937)))

(declare-fun res!386947 () Bool)

(assert (=> d!263390 (=> (not res!386947) (not e!556937))))

(declare-fun lt!320565 () tuple2!10350)

(assert (=> d!263390 (= res!386947 (= (size!7602 (_1!6001 lt!320565)) 1))))

(assert (=> d!263390 (= lt!320565 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 lt!320492))))))

(assert (=> d!263390 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263390 (= (rulesProduceIndividualToken!577 thiss!20117 rules!2621 lt!320492) lt!320566)))

(declare-fun b!846352 () Bool)

(declare-fun res!386946 () Bool)

(assert (=> b!846352 (=> (not res!386946) (not e!556937))))

(assert (=> b!846352 (= res!386946 (= (apply!1848 (_1!6001 lt!320565) 0) lt!320492))))

(declare-fun b!846353 () Bool)

(assert (=> b!846353 (= e!556937 (isEmpty!5383 (_2!6001 lt!320565)))))

(declare-fun b!846354 () Bool)

(assert (=> b!846354 (= e!556936 (isEmpty!5383 (_2!6001 (lex!609 thiss!20117 rules!2621 (print!546 thiss!20117 (singletonSeq!522 lt!320492))))))))

(assert (= (and d!263390 res!386947) b!846352))

(assert (= (and b!846352 res!386946) b!846353))

(assert (= (and d!263390 res!386945) b!846354))

(assert (=> d!263390 m!1081267))

(declare-fun m!1081507 () Bool)

(assert (=> d!263390 m!1081507))

(declare-fun m!1081509 () Bool)

(assert (=> d!263390 m!1081509))

(declare-fun m!1081511 () Bool)

(assert (=> d!263390 m!1081511))

(assert (=> d!263390 m!1081507))

(declare-fun m!1081513 () Bool)

(assert (=> d!263390 m!1081513))

(assert (=> d!263390 m!1081509))

(declare-fun m!1081515 () Bool)

(assert (=> d!263390 m!1081515))

(assert (=> d!263390 m!1081507))

(declare-fun m!1081517 () Bool)

(assert (=> d!263390 m!1081517))

(declare-fun m!1081519 () Bool)

(assert (=> b!846352 m!1081519))

(declare-fun m!1081521 () Bool)

(assert (=> b!846353 m!1081521))

(assert (=> b!846354 m!1081507))

(assert (=> b!846354 m!1081507))

(assert (=> b!846354 m!1081509))

(assert (=> b!846354 m!1081509))

(assert (=> b!846354 m!1081515))

(declare-fun m!1081523 () Bool)

(assert (=> b!846354 m!1081523))

(assert (=> b!846111 d!263390))

(declare-fun bs!230430 () Bool)

(declare-fun d!263392 () Bool)

(assert (= bs!230430 (and d!263392 b!846123)))

(declare-fun lambda!25212 () Int)

(assert (=> bs!230430 (not (= lambda!25212 lambda!25201))))

(declare-fun bs!230431 () Bool)

(assert (= bs!230431 (and d!263392 d!263342)))

(assert (=> bs!230431 (= lambda!25212 lambda!25207)))

(declare-fun b!846359 () Bool)

(declare-fun e!556942 () Bool)

(assert (=> b!846359 (= e!556942 true)))

(declare-fun b!846358 () Bool)

(declare-fun e!556941 () Bool)

(assert (=> b!846358 (= e!556941 e!556942)))

(declare-fun b!846357 () Bool)

(declare-fun e!556940 () Bool)

(assert (=> b!846357 (= e!556940 e!556941)))

(assert (=> d!263392 e!556940))

(assert (= b!846358 b!846359))

(assert (= b!846357 b!846358))

(assert (= (and d!263392 (is-Cons!9121 rules!2621)) b!846357))

(assert (=> b!846359 (< (dynLambda!4220 order!5805 (toValue!2736 (transformation!1711 (h!14522 rules!2621)))) (dynLambda!4221 order!5807 lambda!25212))))

(assert (=> b!846359 (< (dynLambda!4222 order!5809 (toChars!2595 (transformation!1711 (h!14522 rules!2621)))) (dynLambda!4221 order!5807 lambda!25212))))

(assert (=> d!263392 true))

(declare-fun lt!320567 () Bool)

(assert (=> d!263392 (= lt!320567 (forall!2138 lt!320494 lambda!25212))))

(declare-fun e!556939 () Bool)

(assert (=> d!263392 (= lt!320567 e!556939)))

(declare-fun res!386949 () Bool)

(assert (=> d!263392 (=> res!386949 e!556939)))

(assert (=> d!263392 (= res!386949 (not (is-Cons!9120 lt!320494)))))

(assert (=> d!263392 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263392 (= (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 lt!320494) lt!320567)))

(declare-fun b!846355 () Bool)

(declare-fun e!556938 () Bool)

(assert (=> b!846355 (= e!556939 e!556938)))

(declare-fun res!386948 () Bool)

(assert (=> b!846355 (=> (not res!386948) (not e!556938))))

(assert (=> b!846355 (= res!386948 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 lt!320494)))))

(declare-fun b!846356 () Bool)

(assert (=> b!846356 (= e!556938 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 (t!94430 lt!320494)))))

(assert (= (and d!263392 (not res!386949)) b!846355))

(assert (= (and b!846355 res!386948) b!846356))

(declare-fun m!1081525 () Bool)

(assert (=> d!263392 m!1081525))

(assert (=> d!263392 m!1081267))

(assert (=> b!846355 m!1081421))

(declare-fun m!1081527 () Bool)

(assert (=> b!846356 m!1081527))

(assert (=> b!846122 d!263392))

(declare-fun d!263394 () Bool)

(assert (=> d!263394 (= (isEmpty!5379 (t!94430 (t!94430 lt!320491))) (is-Nil!9120 (t!94430 (t!94430 lt!320491))))))

(assert (=> b!846122 d!263394))

(declare-fun b!846370 () Bool)

(declare-fun res!386960 () Bool)

(declare-fun e!556945 () Bool)

(assert (=> b!846370 (=> (not res!386960) (not e!556945))))

(assert (=> b!846370 (= res!386960 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 lt!320496))))

(declare-fun b!846371 () Bool)

(declare-fun res!386962 () Bool)

(assert (=> b!846371 (=> (not res!386962) (not e!556945))))

(assert (=> b!846371 (= res!386962 (isSeparator!1711 (rule!3134 separatorToken!297)))))

(declare-fun b!846372 () Bool)

(declare-fun res!386964 () Bool)

(assert (=> b!846372 (=> (not res!386964) (not e!556945))))

(assert (=> b!846372 (= res!386964 (rulesInvariant!1389 thiss!20117 rules!2621))))

(declare-fun b!846373 () Bool)

(assert (=> b!846373 (= e!556945 (tokensListTwoByTwoPredicateSeparableList!35 thiss!20117 (withSeparatorTokenList!43 thiss!20117 lt!320496 separatorToken!297) rules!2621))))

(declare-fun lt!320579 () Unit!13584)

(declare-fun lt!320577 () Unit!13584)

(assert (=> b!846373 (= lt!320579 lt!320577)))

(assert (=> b!846373 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 (withSeparatorTokenList!43 thiss!20117 lt!320496 separatorToken!297))))

(assert (=> b!846373 (= lt!320577 (withSeparatorTokenListPreservesRulesProduceTokens!43 thiss!20117 rules!2621 lt!320496 separatorToken!297))))

(declare-fun d!263396 () Bool)

(assert (=> d!263396 e!556945))

(declare-fun res!386961 () Bool)

(assert (=> d!263396 (=> (not res!386961) (not e!556945))))

(assert (=> d!263396 (= res!386961 (is-Lexer!1511 thiss!20117))))

(declare-fun lt!320578 () Unit!13584)

(declare-fun choose!4990 (LexerInterface!1513 List!9137 List!9136 Token!3088) Unit!13584)

(assert (=> d!263396 (= lt!320578 (choose!4990 thiss!20117 rules!2621 lt!320496 separatorToken!297))))

(assert (=> d!263396 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263396 (= (printWithSeparatorTokenImpliesSeparableTokensList!19 thiss!20117 rules!2621 lt!320496 separatorToken!297) lt!320578)))

(declare-fun b!846374 () Bool)

(declare-fun res!386963 () Bool)

(assert (=> b!846374 (=> (not res!386963) (not e!556945))))

(assert (=> b!846374 (= res!386963 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 separatorToken!297))))

(assert (= (and d!263396 res!386961) b!846372))

(assert (= (and b!846372 res!386964) b!846370))

(assert (= (and b!846370 res!386960) b!846374))

(assert (= (and b!846374 res!386963) b!846371))

(assert (= (and b!846371 res!386962) b!846373))

(assert (=> b!846372 m!1081231))

(declare-fun m!1081533 () Bool)

(assert (=> d!263396 m!1081533))

(assert (=> d!263396 m!1081267))

(assert (=> b!846373 m!1081239))

(assert (=> b!846373 m!1081239))

(declare-fun m!1081535 () Bool)

(assert (=> b!846373 m!1081535))

(assert (=> b!846373 m!1081239))

(declare-fun m!1081537 () Bool)

(assert (=> b!846373 m!1081537))

(assert (=> b!846373 m!1081225))

(declare-fun m!1081539 () Bool)

(assert (=> b!846370 m!1081539))

(assert (=> b!846374 m!1081229))

(assert (=> b!846122 d!263396))

(declare-fun d!263400 () Bool)

(assert (=> d!263400 (= (separableTokensPredicate!53 thiss!20117 (h!14521 lt!320491) (h!14521 (t!94430 lt!320491)) rules!2621) (not (prefixMatchZipperSequence!20 (rulesRegex!15 thiss!20117 rules!2621) (++!2357 (charsOf!982 (h!14521 lt!320491)) (singletonSeq!523 (apply!1849 (charsOf!982 (h!14521 (t!94430 lt!320491))) 0))))))))

(declare-fun bs!230433 () Bool)

(assert (= bs!230433 d!263400))

(assert (=> bs!230433 m!1081493))

(declare-fun m!1081541 () Bool)

(assert (=> bs!230433 m!1081541))

(declare-fun m!1081543 () Bool)

(assert (=> bs!230433 m!1081543))

(declare-fun m!1081545 () Bool)

(assert (=> bs!230433 m!1081545))

(assert (=> bs!230433 m!1081541))

(assert (=> bs!230433 m!1081493))

(declare-fun m!1081547 () Bool)

(assert (=> bs!230433 m!1081547))

(assert (=> bs!230433 m!1081501))

(assert (=> bs!230433 m!1081501))

(assert (=> bs!230433 m!1081545))

(declare-fun m!1081549 () Bool)

(assert (=> bs!230433 m!1081549))

(assert (=> bs!230433 m!1081547))

(assert (=> bs!230433 m!1081543))

(assert (=> b!846122 d!263400))

(declare-fun d!263402 () Bool)

(assert (=> d!263402 (separableTokensPredicate!53 thiss!20117 (h!14521 lt!320491) (h!14521 (t!94430 lt!320491)) rules!2621)))

(declare-fun lt!320580 () Unit!13584)

(assert (=> d!263402 (= lt!320580 (choose!4989 thiss!20117 (h!14521 lt!320491) (h!14521 (t!94430 lt!320491)) rules!2621))))

(assert (=> d!263402 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263402 (= (lemmaTokensOfDifferentKindsAreSeparable!35 thiss!20117 (h!14521 lt!320491) (h!14521 (t!94430 lt!320491)) rules!2621) lt!320580)))

(declare-fun bs!230434 () Bool)

(assert (= bs!230434 d!263402))

(assert (=> bs!230434 m!1081221))

(declare-fun m!1081551 () Bool)

(assert (=> bs!230434 m!1081551))

(assert (=> bs!230434 m!1081267))

(assert (=> b!846122 d!263402))

(declare-fun d!263404 () Bool)

(assert (=> d!263404 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 (withSeparatorTokenList!43 thiss!20117 lt!320496 separatorToken!297))))

(declare-fun lt!320595 () Unit!13584)

(declare-fun choose!4991 (LexerInterface!1513 List!9137 List!9136 Token!3088) Unit!13584)

(assert (=> d!263404 (= lt!320595 (choose!4991 thiss!20117 rules!2621 lt!320496 separatorToken!297))))

(assert (=> d!263404 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263404 (= (withSeparatorTokenListPreservesRulesProduceTokens!43 thiss!20117 rules!2621 lt!320496 separatorToken!297) lt!320595)))

(declare-fun bs!230437 () Bool)

(assert (= bs!230437 d!263404))

(assert (=> bs!230437 m!1081239))

(assert (=> bs!230437 m!1081239))

(assert (=> bs!230437 m!1081537))

(declare-fun m!1081575 () Bool)

(assert (=> bs!230437 m!1081575))

(assert (=> bs!230437 m!1081267))

(assert (=> b!846122 d!263404))

(declare-fun d!263412 () Bool)

(declare-fun res!386980 () Bool)

(declare-fun e!556949 () Bool)

(assert (=> d!263412 (=> (not res!386980) (not e!556949))))

(assert (=> d!263412 (= res!386980 (not (isEmpty!5382 (originalCharacters!2267 separatorToken!297))))))

(assert (=> d!263412 (= (inv!11597 separatorToken!297) e!556949)))

(declare-fun b!846390 () Bool)

(declare-fun res!386981 () Bool)

(assert (=> b!846390 (=> (not res!386981) (not e!556949))))

(assert (=> b!846390 (= res!386981 (= (originalCharacters!2267 separatorToken!297) (list!3575 (dynLambda!4223 (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (value!55464 separatorToken!297)))))))

(declare-fun b!846391 () Bool)

(assert (=> b!846391 (= e!556949 (= (size!7598 separatorToken!297) (size!7600 (originalCharacters!2267 separatorToken!297))))))

(assert (= (and d!263412 res!386980) b!846390))

(assert (= (and b!846390 res!386981) b!846391))

(declare-fun b_lambda!27973 () Bool)

(assert (=> (not b_lambda!27973) (not b!846390)))

(declare-fun t!94454 () Bool)

(declare-fun tb!58741 () Bool)

(assert (=> (and b!846121 (= (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297)))) t!94454) tb!58741))

(declare-fun b!846392 () Bool)

(declare-fun e!556950 () Bool)

(declare-fun tp!266437 () Bool)

(assert (=> b!846392 (= e!556950 (and (inv!11601 (c!137596 (dynLambda!4223 (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (value!55464 separatorToken!297)))) tp!266437))))

(declare-fun result!68114 () Bool)

(assert (=> tb!58741 (= result!68114 (and (inv!11602 (dynLambda!4223 (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (value!55464 separatorToken!297))) e!556950))))

(assert (= tb!58741 b!846392))

(declare-fun m!1081577 () Bool)

(assert (=> b!846392 m!1081577))

(declare-fun m!1081579 () Bool)

(assert (=> tb!58741 m!1081579))

(assert (=> b!846390 t!94454))

(declare-fun b_and!73645 () Bool)

(assert (= b_and!73639 (and (=> t!94454 result!68114) b_and!73645)))

(declare-fun t!94456 () Bool)

(declare-fun tb!58743 () Bool)

(assert (=> (and b!846129 (= (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297)))) t!94456) tb!58743))

(declare-fun result!68116 () Bool)

(assert (= result!68116 result!68114))

(assert (=> b!846390 t!94456))

(declare-fun b_and!73647 () Bool)

(assert (= b_and!73641 (and (=> t!94456 result!68116) b_and!73647)))

(declare-fun t!94458 () Bool)

(declare-fun tb!58745 () Bool)

(assert (=> (and b!846113 (= (toChars!2595 (transformation!1711 (h!14522 rules!2621))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297)))) t!94458) tb!58745))

(declare-fun result!68118 () Bool)

(assert (= result!68118 result!68114))

(assert (=> b!846390 t!94458))

(declare-fun b_and!73649 () Bool)

(assert (= b_and!73643 (and (=> t!94458 result!68118) b_and!73649)))

(declare-fun m!1081581 () Bool)

(assert (=> d!263412 m!1081581))

(declare-fun m!1081583 () Bool)

(assert (=> b!846390 m!1081583))

(assert (=> b!846390 m!1081583))

(declare-fun m!1081585 () Bool)

(assert (=> b!846390 m!1081585))

(declare-fun m!1081587 () Bool)

(assert (=> b!846391 m!1081587))

(assert (=> start!75380 d!263412))

(declare-fun b!846393 () Bool)

(declare-fun e!556953 () Bool)

(assert (=> b!846393 (= e!556953 (inv!17 (value!55464 separatorToken!297)))))

(declare-fun b!846394 () Bool)

(declare-fun e!556952 () Bool)

(assert (=> b!846394 (= e!556952 (inv!16 (value!55464 separatorToken!297)))))

(declare-fun b!846395 () Bool)

(assert (=> b!846395 (= e!556952 e!556953)))

(declare-fun c!137612 () Bool)

(assert (=> b!846395 (= c!137612 (is-IntegerValue!5332 (value!55464 separatorToken!297)))))

(declare-fun b!846396 () Bool)

(declare-fun res!386982 () Bool)

(declare-fun e!556951 () Bool)

(assert (=> b!846396 (=> res!386982 e!556951)))

(assert (=> b!846396 (= res!386982 (not (is-IntegerValue!5333 (value!55464 separatorToken!297))))))

(assert (=> b!846396 (= e!556953 e!556951)))

(declare-fun d!263414 () Bool)

(declare-fun c!137611 () Bool)

(assert (=> d!263414 (= c!137611 (is-IntegerValue!5331 (value!55464 separatorToken!297)))))

(assert (=> d!263414 (= (inv!21 (value!55464 separatorToken!297)) e!556952)))

(declare-fun b!846397 () Bool)

(assert (=> b!846397 (= e!556951 (inv!15 (value!55464 separatorToken!297)))))

(assert (= (and d!263414 c!137611) b!846394))

(assert (= (and d!263414 (not c!137611)) b!846395))

(assert (= (and b!846395 c!137612) b!846393))

(assert (= (and b!846395 (not c!137612)) b!846396))

(assert (= (and b!846396 (not res!386982)) b!846397))

(declare-fun m!1081589 () Bool)

(assert (=> b!846393 m!1081589))

(declare-fun m!1081591 () Bool)

(assert (=> b!846394 m!1081591))

(declare-fun m!1081593 () Bool)

(assert (=> b!846397 m!1081593))

(assert (=> b!846133 d!263414))

(declare-fun bs!230438 () Bool)

(declare-fun d!263416 () Bool)

(assert (= bs!230438 (and d!263416 b!846123)))

(declare-fun lambda!25213 () Int)

(assert (=> bs!230438 (not (= lambda!25213 lambda!25201))))

(declare-fun bs!230439 () Bool)

(assert (= bs!230439 (and d!263416 d!263342)))

(assert (=> bs!230439 (= lambda!25213 lambda!25207)))

(declare-fun bs!230440 () Bool)

(assert (= bs!230440 (and d!263416 d!263392)))

(assert (=> bs!230440 (= lambda!25213 lambda!25212)))

(declare-fun b!846402 () Bool)

(declare-fun e!556958 () Bool)

(assert (=> b!846402 (= e!556958 true)))

(declare-fun b!846401 () Bool)

(declare-fun e!556957 () Bool)

(assert (=> b!846401 (= e!556957 e!556958)))

(declare-fun b!846400 () Bool)

(declare-fun e!556956 () Bool)

(assert (=> b!846400 (= e!556956 e!556957)))

(assert (=> d!263416 e!556956))

(assert (= b!846401 b!846402))

(assert (= b!846400 b!846401))

(assert (= (and d!263416 (is-Cons!9121 rules!2621)) b!846400))

(assert (=> b!846402 (< (dynLambda!4220 order!5805 (toValue!2736 (transformation!1711 (h!14522 rules!2621)))) (dynLambda!4221 order!5807 lambda!25213))))

(assert (=> b!846402 (< (dynLambda!4222 order!5809 (toChars!2595 (transformation!1711 (h!14522 rules!2621)))) (dynLambda!4221 order!5807 lambda!25213))))

(assert (=> d!263416 true))

(declare-fun lt!320596 () Bool)

(assert (=> d!263416 (= lt!320596 (forall!2138 lt!320491 lambda!25213))))

(declare-fun e!556955 () Bool)

(assert (=> d!263416 (= lt!320596 e!556955)))

(declare-fun res!386984 () Bool)

(assert (=> d!263416 (=> res!386984 e!556955)))

(assert (=> d!263416 (= res!386984 (not (is-Cons!9120 lt!320491)))))

(assert (=> d!263416 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263416 (= (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 lt!320491) lt!320596)))

(declare-fun b!846398 () Bool)

(declare-fun e!556954 () Bool)

(assert (=> b!846398 (= e!556955 e!556954)))

(declare-fun res!386983 () Bool)

(assert (=> b!846398 (=> (not res!386983) (not e!556954))))

(assert (=> b!846398 (= res!386983 (rulesProduceIndividualToken!577 thiss!20117 rules!2621 (h!14521 lt!320491)))))

(declare-fun b!846399 () Bool)

(assert (=> b!846399 (= e!556954 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 (t!94430 lt!320491)))))

(assert (= (and d!263416 (not res!386984)) b!846398))

(assert (= (and b!846398 res!386983) b!846399))

(declare-fun m!1081595 () Bool)

(assert (=> d!263416 m!1081595))

(assert (=> d!263416 m!1081267))

(declare-fun m!1081597 () Bool)

(assert (=> b!846398 m!1081597))

(declare-fun m!1081599 () Bool)

(assert (=> b!846399 m!1081599))

(assert (=> b!846112 d!263416))

(declare-fun b!846423 () Bool)

(declare-fun e!556973 () List!9135)

(declare-fun lt!320618 () List!9136)

(declare-fun ++!2358 (List!9135 List!9135) List!9135)

(declare-fun printList!465 (LexerInterface!1513 List!9136) List!9135)

(assert (=> b!846423 (= e!556973 (++!2358 (list!3575 (charsOf!982 (h!14521 lt!320618))) (printList!465 thiss!20117 (t!94430 lt!320618))))))

(declare-fun d!263418 () Bool)

(declare-fun lt!320619 () List!9136)

(declare-fun printWithSeparatorTokenList!23 (LexerInterface!1513 List!9136 Token!3088) List!9135)

(assert (=> d!263418 (= (printList!465 thiss!20117 lt!320619) (printWithSeparatorTokenList!23 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!556974 () List!9136)

(assert (=> d!263418 (= lt!320619 e!556974)))

(declare-fun c!137619 () Bool)

(assert (=> d!263418 (= c!137619 (is-Cons!9120 l!5107))))

(declare-fun e!556976 () Bool)

(assert (=> d!263418 e!556976))

(declare-fun res!386993 () Bool)

(assert (=> d!263418 (=> (not res!386993) (not e!556976))))

(assert (=> d!263418 (= res!386993 (isSeparator!1711 (rule!3134 separatorToken!297)))))

(assert (=> d!263418 (= (withSeparatorTokenList!43 thiss!20117 l!5107 separatorToken!297) lt!320619)))

(declare-fun b!846424 () Bool)

(declare-fun e!556972 () List!9135)

(assert (=> b!846424 (= e!556972 Nil!9119)))

(declare-fun b!846425 () Bool)

(declare-fun res!386994 () Bool)

(assert (=> b!846425 (=> (not res!386994) (not e!556976))))

(declare-fun e!556971 () Bool)

(assert (=> b!846425 (= res!386994 e!556971)))

(declare-fun res!386995 () Bool)

(assert (=> b!846425 (=> res!386995 e!556971)))

(assert (=> b!846425 (= res!386995 (not (is-Cons!9120 l!5107)))))

(declare-fun e!556975 () Bool)

(declare-fun b!846426 () Bool)

(declare-fun $colon$colon!78 (List!9136 Token!3088) List!9136)

(assert (=> b!846426 (= e!556975 (= (printList!465 thiss!20117 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 l!5107) separatorToken!297) separatorToken!297)) e!556972))))

(declare-fun c!137621 () Bool)

(declare-fun lt!320617 () List!9136)

(assert (=> b!846426 (= c!137621 (is-Cons!9120 lt!320617))))

(assert (=> b!846426 (= lt!320617 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!846427 () Bool)

(assert (=> b!846427 (= e!556971 (= (printList!465 thiss!20117 ($colon$colon!78 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 l!5107) separatorToken!297) separatorToken!297) (h!14521 l!5107))) e!556973))))

(declare-fun c!137620 () Bool)

(assert (=> b!846427 (= c!137620 (is-Cons!9120 lt!320618))))

(assert (=> b!846427 (= lt!320618 ($colon$colon!78 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 l!5107) separatorToken!297) separatorToken!297) (h!14521 l!5107)))))

(declare-fun b!846428 () Bool)

(assert (=> b!846428 (= e!556976 e!556975)))

(declare-fun res!386996 () Bool)

(assert (=> b!846428 (=> res!386996 e!556975)))

(assert (=> b!846428 (= res!386996 (not (is-Cons!9120 l!5107)))))

(declare-fun b!846429 () Bool)

(assert (=> b!846429 (= e!556973 Nil!9119)))

(declare-fun b!846430 () Bool)

(assert (=> b!846430 (= e!556974 Nil!9120)))

(declare-fun b!846431 () Bool)

(assert (=> b!846431 (= e!556972 (++!2358 (list!3575 (charsOf!982 (h!14521 lt!320617))) (printList!465 thiss!20117 (t!94430 lt!320617))))))

(declare-fun b!846432 () Bool)

(assert (=> b!846432 (= e!556974 ($colon$colon!78 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 l!5107) separatorToken!297) separatorToken!297) (h!14521 l!5107)))))

(declare-fun lt!320616 () List!9135)

(assert (=> b!846432 (= lt!320616 (list!3575 (charsOf!982 (h!14521 l!5107))))))

(declare-fun lt!320615 () List!9135)

(assert (=> b!846432 (= lt!320615 (list!3575 (charsOf!982 separatorToken!297)))))

(declare-fun lt!320614 () List!9135)

(assert (=> b!846432 (= lt!320614 (printList!465 thiss!20117 (withSeparatorTokenList!43 thiss!20117 (t!94430 l!5107) separatorToken!297)))))

(declare-fun lt!320620 () Unit!13584)

(declare-fun lemmaConcatAssociativity!740 (List!9135 List!9135 List!9135) Unit!13584)

(assert (=> b!846432 (= lt!320620 (lemmaConcatAssociativity!740 lt!320616 lt!320615 lt!320614))))

(assert (=> b!846432 (= (++!2358 (++!2358 lt!320616 lt!320615) lt!320614) (++!2358 lt!320616 (++!2358 lt!320615 lt!320614)))))

(declare-fun lt!320613 () Unit!13584)

(assert (=> b!846432 (= lt!320613 lt!320620)))

(assert (= (and d!263418 res!386993) b!846425))

(assert (= (and b!846425 (not res!386995)) b!846427))

(assert (= (and b!846427 c!137620) b!846423))

(assert (= (and b!846427 (not c!137620)) b!846429))

(assert (= (and b!846425 res!386994) b!846428))

(assert (= (and b!846428 (not res!386996)) b!846426))

(assert (= (and b!846426 c!137621) b!846431))

(assert (= (and b!846426 (not c!137621)) b!846424))

(assert (= (and d!263418 c!137619) b!846432))

(assert (= (and d!263418 (not c!137619)) b!846430))

(declare-fun m!1081601 () Bool)

(assert (=> b!846431 m!1081601))

(assert (=> b!846431 m!1081601))

(declare-fun m!1081603 () Bool)

(assert (=> b!846431 m!1081603))

(declare-fun m!1081605 () Bool)

(assert (=> b!846431 m!1081605))

(assert (=> b!846431 m!1081603))

(assert (=> b!846431 m!1081605))

(declare-fun m!1081607 () Bool)

(assert (=> b!846431 m!1081607))

(declare-fun m!1081609 () Bool)

(assert (=> b!846426 m!1081609))

(assert (=> b!846426 m!1081609))

(declare-fun m!1081611 () Bool)

(assert (=> b!846426 m!1081611))

(assert (=> b!846426 m!1081611))

(declare-fun m!1081613 () Bool)

(assert (=> b!846426 m!1081613))

(declare-fun m!1081615 () Bool)

(assert (=> d!263418 m!1081615))

(declare-fun m!1081617 () Bool)

(assert (=> d!263418 m!1081617))

(declare-fun m!1081619 () Bool)

(assert (=> b!846432 m!1081619))

(declare-fun m!1081621 () Bool)

(assert (=> b!846432 m!1081621))

(assert (=> b!846432 m!1081609))

(assert (=> b!846432 m!1081609))

(declare-fun m!1081623 () Bool)

(assert (=> b!846432 m!1081623))

(declare-fun m!1081625 () Bool)

(assert (=> b!846432 m!1081625))

(declare-fun m!1081627 () Bool)

(assert (=> b!846432 m!1081627))

(declare-fun m!1081629 () Bool)

(assert (=> b!846432 m!1081629))

(assert (=> b!846432 m!1081619))

(declare-fun m!1081631 () Bool)

(assert (=> b!846432 m!1081631))

(declare-fun m!1081633 () Bool)

(assert (=> b!846432 m!1081633))

(assert (=> b!846432 m!1081625))

(declare-fun m!1081635 () Bool)

(assert (=> b!846432 m!1081635))

(declare-fun m!1081637 () Bool)

(assert (=> b!846432 m!1081637))

(assert (=> b!846432 m!1081611))

(declare-fun m!1081639 () Bool)

(assert (=> b!846432 m!1081639))

(assert (=> b!846432 m!1081635))

(assert (=> b!846432 m!1081609))

(assert (=> b!846432 m!1081611))

(assert (=> b!846432 m!1081631))

(declare-fun m!1081641 () Bool)

(assert (=> b!846423 m!1081641))

(assert (=> b!846423 m!1081641))

(declare-fun m!1081643 () Bool)

(assert (=> b!846423 m!1081643))

(declare-fun m!1081645 () Bool)

(assert (=> b!846423 m!1081645))

(assert (=> b!846423 m!1081643))

(assert (=> b!846423 m!1081645))

(declare-fun m!1081647 () Bool)

(assert (=> b!846423 m!1081647))

(assert (=> b!846427 m!1081609))

(assert (=> b!846427 m!1081609))

(assert (=> b!846427 m!1081611))

(assert (=> b!846427 m!1081611))

(assert (=> b!846427 m!1081639))

(assert (=> b!846427 m!1081639))

(declare-fun m!1081649 () Bool)

(assert (=> b!846427 m!1081649))

(assert (=> b!846112 d!263418))

(declare-fun d!263420 () Bool)

(assert (=> d!263420 (rulesProduceEachTokenIndividuallyList!401 thiss!20117 rules!2621 (withSeparatorTokenList!43 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320621 () Unit!13584)

(assert (=> d!263420 (= lt!320621 (choose!4991 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!263420 (not (isEmpty!5378 rules!2621))))

(assert (=> d!263420 (= (withSeparatorTokenListPreservesRulesProduceTokens!43 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!320621)))

(declare-fun bs!230441 () Bool)

(assert (= bs!230441 d!263420))

(assert (=> bs!230441 m!1081255))

(assert (=> bs!230441 m!1081255))

(declare-fun m!1081651 () Bool)

(assert (=> bs!230441 m!1081651))

(declare-fun m!1081653 () Bool)

(assert (=> bs!230441 m!1081653))

(assert (=> bs!230441 m!1081267))

(assert (=> b!846112 d!263420))

(declare-fun d!263422 () Bool)

(declare-fun res!387001 () Bool)

(declare-fun e!556981 () Bool)

(assert (=> d!263422 (=> res!387001 e!556981)))

(assert (=> d!263422 (= res!387001 (is-Nil!9120 l!5107))))

(assert (=> d!263422 (= (forall!2138 l!5107 lambda!25201) e!556981)))

(declare-fun b!846437 () Bool)

(declare-fun e!556982 () Bool)

(assert (=> b!846437 (= e!556981 e!556982)))

(declare-fun res!387002 () Bool)

(assert (=> b!846437 (=> (not res!387002) (not e!556982))))

(declare-fun dynLambda!4226 (Int Token!3088) Bool)

(assert (=> b!846437 (= res!387002 (dynLambda!4226 lambda!25201 (h!14521 l!5107)))))

(declare-fun b!846438 () Bool)

(assert (=> b!846438 (= e!556982 (forall!2138 (t!94430 l!5107) lambda!25201))))

(assert (= (and d!263422 (not res!387001)) b!846437))

(assert (= (and b!846437 res!387002) b!846438))

(declare-fun b_lambda!27975 () Bool)

(assert (=> (not b_lambda!27975) (not b!846437)))

(declare-fun m!1081655 () Bool)

(assert (=> b!846437 m!1081655))

(declare-fun m!1081657 () Bool)

(assert (=> b!846438 m!1081657))

(assert (=> b!846123 d!263422))

(declare-fun d!263424 () Bool)

(assert (=> d!263424 (= (inv!11594 (tag!1973 (rule!3134 separatorToken!297))) (= (mod (str.len (value!55463 (tag!1973 (rule!3134 separatorToken!297)))) 2) 0))))

(assert (=> b!846118 d!263424))

(declare-fun d!263426 () Bool)

(declare-fun res!387003 () Bool)

(declare-fun e!556983 () Bool)

(assert (=> d!263426 (=> (not res!387003) (not e!556983))))

(assert (=> d!263426 (= res!387003 (semiInverseModEq!661 (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (toValue!2736 (transformation!1711 (rule!3134 separatorToken!297)))))))

(assert (=> d!263426 (= (inv!11598 (transformation!1711 (rule!3134 separatorToken!297))) e!556983)))

(declare-fun b!846439 () Bool)

(assert (=> b!846439 (= e!556983 (equivClasses!628 (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (toValue!2736 (transformation!1711 (rule!3134 separatorToken!297)))))))

(assert (= (and d!263426 res!387003) b!846439))

(declare-fun m!1081659 () Bool)

(assert (=> d!263426 m!1081659))

(declare-fun m!1081661 () Bool)

(assert (=> b!846439 m!1081661))

(assert (=> b!846118 d!263426))

(declare-fun d!263428 () Bool)

(assert (=> d!263428 (= (isEmpty!5378 rules!2621) (is-Nil!9121 rules!2621))))

(assert (=> b!846119 d!263428))

(declare-fun b!846440 () Bool)

(declare-fun e!556986 () List!9135)

(declare-fun lt!320627 () List!9136)

(assert (=> b!846440 (= e!556986 (++!2358 (list!3575 (charsOf!982 (h!14521 lt!320627))) (printList!465 thiss!20117 (t!94430 lt!320627))))))

(declare-fun lt!320628 () List!9136)

(declare-fun d!263430 () Bool)

(assert (=> d!263430 (= (printList!465 thiss!20117 lt!320628) (printWithSeparatorTokenList!23 thiss!20117 lt!320496 separatorToken!297))))

(declare-fun e!556987 () List!9136)

(assert (=> d!263430 (= lt!320628 e!556987)))

(declare-fun c!137622 () Bool)

(assert (=> d!263430 (= c!137622 (is-Cons!9120 lt!320496))))

(declare-fun e!556989 () Bool)

(assert (=> d!263430 e!556989))

(declare-fun res!387004 () Bool)

(assert (=> d!263430 (=> (not res!387004) (not e!556989))))

(assert (=> d!263430 (= res!387004 (isSeparator!1711 (rule!3134 separatorToken!297)))))

(assert (=> d!263430 (= (withSeparatorTokenList!43 thiss!20117 lt!320496 separatorToken!297) lt!320628)))

(declare-fun b!846441 () Bool)

(declare-fun e!556985 () List!9135)

(assert (=> b!846441 (= e!556985 Nil!9119)))

(declare-fun b!846442 () Bool)

(declare-fun res!387005 () Bool)

(assert (=> b!846442 (=> (not res!387005) (not e!556989))))

(declare-fun e!556984 () Bool)

(assert (=> b!846442 (= res!387005 e!556984)))

(declare-fun res!387006 () Bool)

(assert (=> b!846442 (=> res!387006 e!556984)))

(assert (=> b!846442 (= res!387006 (not (is-Cons!9120 lt!320496)))))

(declare-fun e!556988 () Bool)

(declare-fun b!846443 () Bool)

(assert (=> b!846443 (= e!556988 (= (printList!465 thiss!20117 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 lt!320496) separatorToken!297) separatorToken!297)) e!556985))))

(declare-fun c!137624 () Bool)

(declare-fun lt!320626 () List!9136)

(assert (=> b!846443 (= c!137624 (is-Cons!9120 lt!320626))))

(assert (=> b!846443 (= lt!320626 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 lt!320496) separatorToken!297) separatorToken!297))))

(declare-fun b!846444 () Bool)

(assert (=> b!846444 (= e!556984 (= (printList!465 thiss!20117 ($colon$colon!78 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 lt!320496) separatorToken!297) separatorToken!297) (h!14521 lt!320496))) e!556986))))

(declare-fun c!137623 () Bool)

(assert (=> b!846444 (= c!137623 (is-Cons!9120 lt!320627))))

(assert (=> b!846444 (= lt!320627 ($colon$colon!78 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 lt!320496) separatorToken!297) separatorToken!297) (h!14521 lt!320496)))))

(declare-fun b!846445 () Bool)

(assert (=> b!846445 (= e!556989 e!556988)))

(declare-fun res!387007 () Bool)

(assert (=> b!846445 (=> res!387007 e!556988)))

(assert (=> b!846445 (= res!387007 (not (is-Cons!9120 lt!320496)))))

(declare-fun b!846446 () Bool)

(assert (=> b!846446 (= e!556986 Nil!9119)))

(declare-fun b!846447 () Bool)

(assert (=> b!846447 (= e!556987 Nil!9120)))

(declare-fun b!846448 () Bool)

(assert (=> b!846448 (= e!556985 (++!2358 (list!3575 (charsOf!982 (h!14521 lt!320626))) (printList!465 thiss!20117 (t!94430 lt!320626))))))

(declare-fun b!846449 () Bool)

(assert (=> b!846449 (= e!556987 ($colon$colon!78 ($colon$colon!78 (withSeparatorTokenList!43 thiss!20117 (t!94430 lt!320496) separatorToken!297) separatorToken!297) (h!14521 lt!320496)))))

(declare-fun lt!320625 () List!9135)

(assert (=> b!846449 (= lt!320625 (list!3575 (charsOf!982 (h!14521 lt!320496))))))

(declare-fun lt!320624 () List!9135)

(assert (=> b!846449 (= lt!320624 (list!3575 (charsOf!982 separatorToken!297)))))

(declare-fun lt!320623 () List!9135)

(assert (=> b!846449 (= lt!320623 (printList!465 thiss!20117 (withSeparatorTokenList!43 thiss!20117 (t!94430 lt!320496) separatorToken!297)))))

(declare-fun lt!320629 () Unit!13584)

(assert (=> b!846449 (= lt!320629 (lemmaConcatAssociativity!740 lt!320625 lt!320624 lt!320623))))

(assert (=> b!846449 (= (++!2358 (++!2358 lt!320625 lt!320624) lt!320623) (++!2358 lt!320625 (++!2358 lt!320624 lt!320623)))))

(declare-fun lt!320622 () Unit!13584)

(assert (=> b!846449 (= lt!320622 lt!320629)))

(assert (= (and d!263430 res!387004) b!846442))

(assert (= (and b!846442 (not res!387006)) b!846444))

(assert (= (and b!846444 c!137623) b!846440))

(assert (= (and b!846444 (not c!137623)) b!846446))

(assert (= (and b!846442 res!387005) b!846445))

(assert (= (and b!846445 (not res!387007)) b!846443))

(assert (= (and b!846443 c!137624) b!846448))

(assert (= (and b!846443 (not c!137624)) b!846441))

(assert (= (and d!263430 c!137622) b!846449))

(assert (= (and d!263430 (not c!137622)) b!846447))

(declare-fun m!1081663 () Bool)

(assert (=> b!846448 m!1081663))

(assert (=> b!846448 m!1081663))

(declare-fun m!1081665 () Bool)

(assert (=> b!846448 m!1081665))

(declare-fun m!1081667 () Bool)

(assert (=> b!846448 m!1081667))

(assert (=> b!846448 m!1081665))

(assert (=> b!846448 m!1081667))

(declare-fun m!1081669 () Bool)

(assert (=> b!846448 m!1081669))

(declare-fun m!1081671 () Bool)

(assert (=> b!846443 m!1081671))

(assert (=> b!846443 m!1081671))

(declare-fun m!1081673 () Bool)

(assert (=> b!846443 m!1081673))

(assert (=> b!846443 m!1081673))

(declare-fun m!1081675 () Bool)

(assert (=> b!846443 m!1081675))

(declare-fun m!1081677 () Bool)

(assert (=> d!263430 m!1081677))

(declare-fun m!1081679 () Bool)

(assert (=> d!263430 m!1081679))

(assert (=> b!846449 m!1081619))

(assert (=> b!846449 m!1081621))

(assert (=> b!846449 m!1081671))

(assert (=> b!846449 m!1081671))

(declare-fun m!1081681 () Bool)

(assert (=> b!846449 m!1081681))

(declare-fun m!1081683 () Bool)

(assert (=> b!846449 m!1081683))

(declare-fun m!1081685 () Bool)

(assert (=> b!846449 m!1081685))

(declare-fun m!1081687 () Bool)

(assert (=> b!846449 m!1081687))

(assert (=> b!846449 m!1081619))

(declare-fun m!1081689 () Bool)

(assert (=> b!846449 m!1081689))

(declare-fun m!1081691 () Bool)

(assert (=> b!846449 m!1081691))

(assert (=> b!846449 m!1081683))

(declare-fun m!1081693 () Bool)

(assert (=> b!846449 m!1081693))

(declare-fun m!1081695 () Bool)

(assert (=> b!846449 m!1081695))

(assert (=> b!846449 m!1081673))

(declare-fun m!1081697 () Bool)

(assert (=> b!846449 m!1081697))

(assert (=> b!846449 m!1081693))

(assert (=> b!846449 m!1081671))

(assert (=> b!846449 m!1081673))

(assert (=> b!846449 m!1081689))

(declare-fun m!1081699 () Bool)

(assert (=> b!846440 m!1081699))

(assert (=> b!846440 m!1081699))

(declare-fun m!1081701 () Bool)

(assert (=> b!846440 m!1081701))

(declare-fun m!1081703 () Bool)

(assert (=> b!846440 m!1081703))

(assert (=> b!846440 m!1081701))

(assert (=> b!846440 m!1081703))

(declare-fun m!1081705 () Bool)

(assert (=> b!846440 m!1081705))

(assert (=> b!846444 m!1081671))

(assert (=> b!846444 m!1081671))

(assert (=> b!846444 m!1081673))

(assert (=> b!846444 m!1081673))

(assert (=> b!846444 m!1081697))

(assert (=> b!846444 m!1081697))

(declare-fun m!1081707 () Bool)

(assert (=> b!846444 m!1081707))

(assert (=> b!846130 d!263430))

(declare-fun d!263432 () Bool)

(assert (=> d!263432 (= (tail!1029 l!5107) (t!94430 l!5107))))

(assert (=> b!846130 d!263432))

(declare-fun d!263434 () Bool)

(assert (=> d!263434 (= (head!1471 l!5107) (h!14521 l!5107))))

(assert (=> b!846120 d!263434))

(declare-fun e!556992 () Bool)

(assert (=> b!846126 (= tp!266385 e!556992)))

(declare-fun b!846461 () Bool)

(declare-fun tp!266452 () Bool)

(declare-fun tp!266449 () Bool)

(assert (=> b!846461 (= e!556992 (and tp!266452 tp!266449))))

(declare-fun b!846462 () Bool)

(declare-fun tp!266450 () Bool)

(assert (=> b!846462 (= e!556992 tp!266450)))

(declare-fun b!846463 () Bool)

(declare-fun tp!266448 () Bool)

(declare-fun tp!266451 () Bool)

(assert (=> b!846463 (= e!556992 (and tp!266448 tp!266451))))

(declare-fun b!846460 () Bool)

(declare-fun tp_is_empty!3955 () Bool)

(assert (=> b!846460 (= e!556992 tp_is_empty!3955)))

(assert (= (and b!846126 (is-ElementMatch!2144 (regex!1711 (rule!3134 (h!14521 l!5107))))) b!846460))

(assert (= (and b!846126 (is-Concat!3922 (regex!1711 (rule!3134 (h!14521 l!5107))))) b!846461))

(assert (= (and b!846126 (is-Star!2144 (regex!1711 (rule!3134 (h!14521 l!5107))))) b!846462))

(assert (= (and b!846126 (is-Union!2144 (regex!1711 (rule!3134 (h!14521 l!5107))))) b!846463))

(declare-fun b!846474 () Bool)

(declare-fun b_free!25485 () Bool)

(declare-fun b_next!25549 () Bool)

(assert (=> b!846474 (= b_free!25485 (not b_next!25549))))

(declare-fun tp!266463 () Bool)

(declare-fun b_and!73651 () Bool)

(assert (=> b!846474 (= tp!266463 b_and!73651)))

(declare-fun b_free!25487 () Bool)

(declare-fun b_next!25551 () Bool)

(assert (=> b!846474 (= b_free!25487 (not b_next!25551))))

(declare-fun tb!58747 () Bool)

(declare-fun t!94460 () Bool)

(assert (=> (and b!846474 (= (toChars!2595 (transformation!1711 (h!14522 (t!94431 rules!2621)))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107))))) t!94460) tb!58747))

(declare-fun result!68124 () Bool)

(assert (= result!68124 result!68106))

(assert (=> b!846292 t!94460))

(declare-fun tb!58749 () Bool)

(declare-fun t!94462 () Bool)

(assert (=> (and b!846474 (= (toChars!2595 (transformation!1711 (h!14522 (t!94431 rules!2621)))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297)))) t!94462) tb!58749))

(declare-fun result!68126 () Bool)

(assert (= result!68126 result!68114))

(assert (=> b!846390 t!94462))

(declare-fun b_and!73653 () Bool)

(declare-fun tp!266464 () Bool)

(assert (=> b!846474 (= tp!266464 (and (=> t!94460 result!68124) (=> t!94462 result!68126) b_and!73653))))

(declare-fun e!557001 () Bool)

(assert (=> b!846474 (= e!557001 (and tp!266463 tp!266464))))

(declare-fun tp!266462 () Bool)

(declare-fun e!557003 () Bool)

(declare-fun b!846473 () Bool)

(assert (=> b!846473 (= e!557003 (and tp!266462 (inv!11594 (tag!1973 (h!14522 (t!94431 rules!2621)))) (inv!11598 (transformation!1711 (h!14522 (t!94431 rules!2621)))) e!557001))))

(declare-fun b!846472 () Bool)

(declare-fun e!557002 () Bool)

(declare-fun tp!266461 () Bool)

(assert (=> b!846472 (= e!557002 (and e!557003 tp!266461))))

(assert (=> b!846128 (= tp!266379 e!557002)))

(assert (= b!846473 b!846474))

(assert (= b!846472 b!846473))

(assert (= (and b!846128 (is-Cons!9121 (t!94431 rules!2621))) b!846472))

(declare-fun m!1081709 () Bool)

(assert (=> b!846473 m!1081709))

(declare-fun m!1081711 () Bool)

(assert (=> b!846473 m!1081711))

(declare-fun e!557005 () Bool)

(assert (=> b!846124 (= tp!266384 e!557005)))

(declare-fun b!846476 () Bool)

(declare-fun tp!266469 () Bool)

(declare-fun tp!266466 () Bool)

(assert (=> b!846476 (= e!557005 (and tp!266469 tp!266466))))

(declare-fun b!846477 () Bool)

(declare-fun tp!266467 () Bool)

(assert (=> b!846477 (= e!557005 tp!266467)))

(declare-fun b!846478 () Bool)

(declare-fun tp!266465 () Bool)

(declare-fun tp!266468 () Bool)

(assert (=> b!846478 (= e!557005 (and tp!266465 tp!266468))))

(declare-fun b!846475 () Bool)

(assert (=> b!846475 (= e!557005 tp_is_empty!3955)))

(assert (= (and b!846124 (is-ElementMatch!2144 (regex!1711 (h!14522 rules!2621)))) b!846475))

(assert (= (and b!846124 (is-Concat!3922 (regex!1711 (h!14522 rules!2621)))) b!846476))

(assert (= (and b!846124 (is-Star!2144 (regex!1711 (h!14522 rules!2621)))) b!846477))

(assert (= (and b!846124 (is-Union!2144 (regex!1711 (h!14522 rules!2621)))) b!846478))

(declare-fun b!846498 () Bool)

(declare-fun b_free!25489 () Bool)

(declare-fun b_next!25553 () Bool)

(assert (=> b!846498 (= b_free!25489 (not b_next!25553))))

(declare-fun tp!266481 () Bool)

(declare-fun b_and!73655 () Bool)

(assert (=> b!846498 (= tp!266481 b_and!73655)))

(declare-fun b_free!25491 () Bool)

(declare-fun b_next!25555 () Bool)

(assert (=> b!846498 (= b_free!25491 (not b_next!25555))))

(declare-fun t!94465 () Bool)

(declare-fun tb!58751 () Bool)

(assert (=> (and b!846498 (= (toChars!2595 (transformation!1711 (rule!3134 (h!14521 (t!94430 l!5107))))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107))))) t!94465) tb!58751))

(declare-fun result!68130 () Bool)

(assert (= result!68130 result!68106))

(assert (=> b!846292 t!94465))

(declare-fun tb!58753 () Bool)

(declare-fun t!94467 () Bool)

(assert (=> (and b!846498 (= (toChars!2595 (transformation!1711 (rule!3134 (h!14521 (t!94430 l!5107))))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297)))) t!94467) tb!58753))

(declare-fun result!68132 () Bool)

(assert (= result!68132 result!68114))

(assert (=> b!846390 t!94467))

(declare-fun tp!266484 () Bool)

(declare-fun b_and!73657 () Bool)

(assert (=> b!846498 (= tp!266484 (and (=> t!94465 result!68130) (=> t!94467 result!68132) b_and!73657))))

(declare-fun e!557024 () Bool)

(assert (=> b!846498 (= e!557024 (and tp!266481 tp!266484))))

(declare-fun e!557023 () Bool)

(declare-fun b!846496 () Bool)

(declare-fun tp!266480 () Bool)

(declare-fun e!557027 () Bool)

(assert (=> b!846496 (= e!557027 (and (inv!21 (value!55464 (h!14521 (t!94430 l!5107)))) e!557023 tp!266480))))

(declare-fun e!557022 () Bool)

(declare-fun b!846495 () Bool)

(declare-fun tp!266482 () Bool)

(assert (=> b!846495 (= e!557022 (and (inv!11597 (h!14521 (t!94430 l!5107))) e!557027 tp!266482))))

(declare-fun b!846497 () Bool)

(declare-fun tp!266483 () Bool)

(assert (=> b!846497 (= e!557023 (and tp!266483 (inv!11594 (tag!1973 (rule!3134 (h!14521 (t!94430 l!5107))))) (inv!11598 (transformation!1711 (rule!3134 (h!14521 (t!94430 l!5107))))) e!557024))))

(assert (=> b!846114 (= tp!266387 e!557022)))

(assert (= b!846497 b!846498))

(assert (= b!846496 b!846497))

(assert (= b!846495 b!846496))

(assert (= (and b!846114 (is-Cons!9120 (t!94430 l!5107))) b!846495))

(declare-fun m!1081713 () Bool)

(assert (=> b!846496 m!1081713))

(declare-fun m!1081715 () Bool)

(assert (=> b!846495 m!1081715))

(declare-fun m!1081717 () Bool)

(assert (=> b!846497 m!1081717))

(declare-fun m!1081719 () Bool)

(assert (=> b!846497 m!1081719))

(declare-fun b!846503 () Bool)

(declare-fun e!557032 () Bool)

(declare-fun tp!266487 () Bool)

(assert (=> b!846503 (= e!557032 (and tp_is_empty!3955 tp!266487))))

(assert (=> b!846110 (= tp!266386 e!557032)))

(assert (= (and b!846110 (is-Cons!9119 (originalCharacters!2267 (h!14521 l!5107)))) b!846503))

(declare-fun b!846507 () Bool)

(declare-fun e!557033 () Bool)

(declare-fun tp!266488 () Bool)

(assert (=> b!846507 (= e!557033 (and tp_is_empty!3955 tp!266488))))

(assert (=> b!846133 (= tp!266388 e!557033)))

(assert (= (and b!846133 (is-Cons!9119 (originalCharacters!2267 separatorToken!297))) b!846507))

(declare-fun e!557034 () Bool)

(assert (=> b!846118 (= tp!266381 e!557034)))

(declare-fun b!846509 () Bool)

(declare-fun tp!266493 () Bool)

(declare-fun tp!266490 () Bool)

(assert (=> b!846509 (= e!557034 (and tp!266493 tp!266490))))

(declare-fun b!846510 () Bool)

(declare-fun tp!266491 () Bool)

(assert (=> b!846510 (= e!557034 tp!266491)))

(declare-fun b!846511 () Bool)

(declare-fun tp!266489 () Bool)

(declare-fun tp!266492 () Bool)

(assert (=> b!846511 (= e!557034 (and tp!266489 tp!266492))))

(declare-fun b!846508 () Bool)

(assert (=> b!846508 (= e!557034 tp_is_empty!3955)))

(assert (= (and b!846118 (is-ElementMatch!2144 (regex!1711 (rule!3134 separatorToken!297)))) b!846508))

(assert (= (and b!846118 (is-Concat!3922 (regex!1711 (rule!3134 separatorToken!297)))) b!846509))

(assert (= (and b!846118 (is-Star!2144 (regex!1711 (rule!3134 separatorToken!297)))) b!846510))

(assert (= (and b!846118 (is-Union!2144 (regex!1711 (rule!3134 separatorToken!297)))) b!846511))

(declare-fun b_lambda!27977 () Bool)

(assert (= b_lambda!27975 (or b!846123 b_lambda!27977)))

(declare-fun bs!230442 () Bool)

(declare-fun d!263436 () Bool)

(assert (= bs!230442 (and d!263436 b!846123)))

(assert (=> bs!230442 (= (dynLambda!4226 lambda!25201 (h!14521 l!5107)) (not (isSeparator!1711 (rule!3134 (h!14521 l!5107)))))))

(assert (=> b!846437 d!263436))

(declare-fun b_lambda!27979 () Bool)

(assert (= b_lambda!27973 (or (and b!846129 b_free!25467 (= (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))))) (and b!846474 b_free!25487 (= (toChars!2595 (transformation!1711 (h!14522 (t!94431 rules!2621)))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))))) (and b!846121 b_free!25463) (and b!846498 b_free!25491 (= (toChars!2595 (transformation!1711 (rule!3134 (h!14521 (t!94430 l!5107))))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))))) (and b!846113 b_free!25471 (= (toChars!2595 (transformation!1711 (h!14522 rules!2621))) (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))))) b_lambda!27979)))

(declare-fun b_lambda!27981 () Bool)

(assert (= b_lambda!27971 (or (and b!846121 b_free!25463 (= (toChars!2595 (transformation!1711 (rule!3134 separatorToken!297))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))))) (and b!846129 b_free!25467) (and b!846474 b_free!25487 (= (toChars!2595 (transformation!1711 (h!14522 (t!94431 rules!2621)))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))))) (and b!846498 b_free!25491 (= (toChars!2595 (transformation!1711 (rule!3134 (h!14521 (t!94430 l!5107))))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))))) (and b!846113 b_free!25471 (= (toChars!2595 (transformation!1711 (h!14522 rules!2621))) (toChars!2595 (transformation!1711 (rule!3134 (h!14521 l!5107)))))) b_lambda!27981)))

(push 1)

(assert (not b!846349))

(assert (not b!846443))

(assert (not b!846461))

(assert (not d!263396))

(assert b_and!73645)

(assert b_and!73655)

(assert (not d!263382))

(assert (not b!846503))

(assert (not b!846292))

(assert (not b!846357))

(assert b_and!73653)

(assert (not b!846353))

(assert (not b!846444))

(assert (not b!846304))

(assert (not b!846356))

(assert (not b!846477))

(assert (not b_next!25533))

(assert (not b!846507))

(assert (not d!263392))

(assert (not b!846373))

(assert (not b!846432))

(assert (not d!263368))

(assert (not b!846212))

(assert (not d!263386))

(assert (not b!846449))

(assert (not b!846351))

(assert (not b!846478))

(assert (not b!846496))

(assert (not d!263340))

(assert (not b!846285))

(assert (not b!846510))

(assert (not b!846392))

(assert (not d!263342))

(assert (not b!846431))

(assert (not b!846287))

(assert (not b_next!25551))

(assert (not b!846293))

(assert (not b_lambda!27977))

(assert (not d!263418))

(assert (not b_next!25525))

(assert (not b!846400))

(assert (not b_next!25555))

(assert (not b!846390))

(assert (not b!846511))

(assert (not b!846298))

(assert (not b!846344))

(assert (not d!263390))

(assert (not b!846448))

(assert (not d!263412))

(assert (not b_next!25529))

(assert (not d!263384))

(assert (not b!846393))

(assert (not b!846509))

(assert (not b!846394))

(assert b_and!73609)

(assert (not b!846370))

(assert (not b!846426))

(assert (not b!846267))

(assert b_and!73657)

(assert (not b!846348))

(assert (not b!846345))

(assert (not b!846462))

(assert (not d!263420))

(assert (not b!846463))

(assert (not d!263372))

(assert (not tb!58741))

(assert (not b_next!25527))

(assert (not b!846439))

(assert (not b!846391))

(assert (not b!846276))

(assert (not b!846215))

(assert (not b!846495))

(assert b_and!73613)

(assert (not b!846333))

(assert (not b!846472))

(assert (not b!846399))

(assert (not b!846372))

(assert (not b!846354))

(assert (not b_lambda!27981))

(assert (not b_next!25553))

(assert (not b!846266))

(assert (not tb!58735))

(assert (not d!263402))

(assert (not d!263404))

(assert (not b_next!25549))

(assert (not d!263416))

(assert (not b!846423))

(assert (not b_next!25535))

(assert b_and!73649)

(assert (not b!846303))

(assert (not b!846438))

(assert (not b!846352))

(assert (not d!263426))

(assert (not b!846476))

(assert (not d!263430))

(assert b_and!73617)

(assert (not d!263338))

(assert (not b_lambda!27979))

(assert b_and!73651)

(assert (not d!263400))

(assert (not b!846332))

(assert (not b!846397))

(assert (not b!846286))

(assert (not b!846497))

(assert (not b!846427))

(assert (not b!846331))

(assert (not b!846374))

(assert b_and!73647)

(assert (not d!263366))

(assert (not b!846473))

(assert tp_is_empty!3955)

(assert (not b!846440))

(assert (not b_next!25531))

(assert (not b!846355))

(assert (not b!846350))

(assert (not b!846398))

(check-sat)

(pop 1)

(push 1)

(assert b_and!73653)

(assert (not b_next!25533))

(assert (not b_next!25551))

(assert (not b_next!25525))

(assert (not b_next!25555))

(assert (not b_next!25529))

(assert b_and!73609)

(assert b_and!73657)

(assert (not b_next!25527))

(assert b_and!73613)

(assert (not b_next!25553))

(assert b_and!73649)

(assert b_and!73617)

(assert b_and!73651)

(assert b_and!73647)

(assert (not b_next!25531))

(assert b_and!73645)

(assert b_and!73655)

(assert (not b_next!25549))

(assert (not b_next!25535))

(check-sat)

(pop 1)


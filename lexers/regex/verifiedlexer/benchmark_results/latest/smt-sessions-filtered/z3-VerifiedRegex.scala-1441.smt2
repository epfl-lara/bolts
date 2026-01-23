; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75374 () Bool)

(assert start!75374)

(declare-fun b!845911 () Bool)

(declare-fun b_free!25425 () Bool)

(declare-fun b_next!25489 () Bool)

(assert (=> b!845911 (= b_free!25425 (not b_next!25489))))

(declare-fun tp!266263 () Bool)

(declare-fun b_and!73573 () Bool)

(assert (=> b!845911 (= tp!266263 b_and!73573)))

(declare-fun b_free!25427 () Bool)

(declare-fun b_next!25491 () Bool)

(assert (=> b!845911 (= b_free!25427 (not b_next!25491))))

(declare-fun tp!266271 () Bool)

(declare-fun b_and!73575 () Bool)

(assert (=> b!845911 (= tp!266271 b_and!73575)))

(declare-fun b!845895 () Bool)

(declare-fun b_free!25429 () Bool)

(declare-fun b_next!25493 () Bool)

(assert (=> b!845895 (= b_free!25429 (not b_next!25493))))

(declare-fun tp!266268 () Bool)

(declare-fun b_and!73577 () Bool)

(assert (=> b!845895 (= tp!266268 b_and!73577)))

(declare-fun b_free!25431 () Bool)

(declare-fun b_next!25495 () Bool)

(assert (=> b!845895 (= b_free!25431 (not b_next!25495))))

(declare-fun tp!266267 () Bool)

(declare-fun b_and!73579 () Bool)

(assert (=> b!845895 (= tp!266267 b_and!73579)))

(declare-fun b!845896 () Bool)

(declare-fun b_free!25433 () Bool)

(declare-fun b_next!25497 () Bool)

(assert (=> b!845896 (= b_free!25433 (not b_next!25497))))

(declare-fun tp!266265 () Bool)

(declare-fun b_and!73581 () Bool)

(assert (=> b!845896 (= tp!266265 b_and!73581)))

(declare-fun b_free!25435 () Bool)

(declare-fun b_next!25499 () Bool)

(assert (=> b!845896 (= b_free!25435 (not b_next!25499))))

(declare-fun tp!266273 () Bool)

(declare-fun b_and!73583 () Bool)

(assert (=> b!845896 (= tp!266273 b_and!73583)))

(declare-fun tp!266264 () Bool)

(declare-fun e!556563 () Bool)

(declare-datatypes ((List!9122 0))(
  ( (Nil!9106) (Cons!9106 (h!14507 (_ BitVec 16)) (t!94416 List!9122)) )
))
(declare-datatypes ((TokenValue!1774 0))(
  ( (FloatLiteralValue!3548 (text!12863 List!9122)) (TokenValueExt!1773 (__x!7279 Int)) (Broken!8870 (value!55351 List!9122)) (Object!1789) (End!1774) (Def!1774) (Underscore!1774) (Match!1774) (Else!1774) (Error!1774) (Case!1774) (If!1774) (Extends!1774) (Abstract!1774) (Class!1774) (Val!1774) (DelimiterValue!3548 (del!1834 List!9122)) (KeywordValue!1780 (value!55352 List!9122)) (CommentValue!3548 (value!55353 List!9122)) (WhitespaceValue!3548 (value!55354 List!9122)) (IndentationValue!1774 (value!55355 List!9122)) (String!10767) (Int32!1774) (Broken!8871 (value!55356 List!9122)) (Boolean!1775) (Unit!13574) (OperatorValue!1777 (op!1834 List!9122)) (IdentifierValue!3548 (value!55357 List!9122)) (IdentifierValue!3549 (value!55358 List!9122)) (WhitespaceValue!3549 (value!55359 List!9122)) (True!3548) (False!3548) (Broken!8872 (value!55360 List!9122)) (Broken!8873 (value!55361 List!9122)) (True!3549) (RightBrace!1774) (RightBracket!1774) (Colon!1774) (Null!1774) (Comma!1774) (LeftBracket!1774) (False!3549) (LeftBrace!1774) (ImaginaryLiteralValue!1774 (text!12864 List!9122)) (StringLiteralValue!5322 (value!55362 List!9122)) (EOFValue!1774 (value!55363 List!9122)) (IdentValue!1774 (value!55364 List!9122)) (DelimiterValue!3549 (value!55365 List!9122)) (DedentValue!1774 (value!55366 List!9122)) (NewLineValue!1774 (value!55367 List!9122)) (IntegerValue!5322 (value!55368 (_ BitVec 32)) (text!12865 List!9122)) (IntegerValue!5323 (value!55369 Int) (text!12866 List!9122)) (Times!1774) (Or!1774) (Equal!1774) (Minus!1774) (Broken!8874 (value!55370 List!9122)) (And!1774) (Div!1774) (LessEqual!1774) (Mod!1774) (Concat!3915) (Not!1774) (Plus!1774) (SpaceValue!1774 (value!55371 List!9122)) (IntegerValue!5324 (value!55372 Int) (text!12867 List!9122)) (StringLiteralValue!5323 (text!12868 List!9122)) (FloatLiteralValue!3549 (text!12869 List!9122)) (BytesLiteralValue!1774 (value!55373 List!9122)) (CommentValue!3549 (value!55374 List!9122)) (StringLiteralValue!5324 (value!55375 List!9122)) (ErrorTokenValue!1774 (msg!1835 List!9122)) )
))
(declare-datatypes ((C!4852 0))(
  ( (C!4853 (val!2674 Int)) )
))
(declare-datatypes ((Regex!2141 0))(
  ( (ElementMatch!2141 (c!137589 C!4852)) (Concat!3916 (regOne!4794 Regex!2141) (regTwo!4794 Regex!2141)) (EmptyExpr!2141) (Star!2141 (reg!2470 Regex!2141)) (EmptyLang!2141) (Union!2141 (regOne!4795 Regex!2141) (regTwo!4795 Regex!2141)) )
))
(declare-datatypes ((String!10768 0))(
  ( (String!10769 (value!55376 String)) )
))
(declare-datatypes ((List!9123 0))(
  ( (Nil!9107) (Cons!9107 (h!14508 C!4852) (t!94417 List!9123)) )
))
(declare-datatypes ((IArray!6043 0))(
  ( (IArray!6044 (innerList!3079 List!9123)) )
))
(declare-datatypes ((Conc!3019 0))(
  ( (Node!3019 (left!6746 Conc!3019) (right!7076 Conc!3019) (csize!6268 Int) (cheight!3230 Int)) (Leaf!4461 (xs!5708 IArray!6043) (csize!6269 Int)) (Empty!3019) )
))
(declare-datatypes ((BalanceConc!6052 0))(
  ( (BalanceConc!6053 (c!137590 Conc!3019)) )
))
(declare-datatypes ((TokenValueInjection!3248 0))(
  ( (TokenValueInjection!3249 (toValue!2733 Int) (toChars!2592 Int)) )
))
(declare-datatypes ((Rule!3216 0))(
  ( (Rule!3217 (regex!1708 Regex!2141) (tag!1970 String!10768) (isSeparator!1708 Bool) (transformation!1708 TokenValueInjection!3248)) )
))
(declare-datatypes ((List!9124 0))(
  ( (Nil!9108) (Cons!9108 (h!14509 Rule!3216) (t!94418 List!9124)) )
))
(declare-fun rules!2621 () List!9124)

(declare-fun e!556576 () Bool)

(declare-fun b!845892 () Bool)

(declare-fun inv!11582 (String!10768) Bool)

(declare-fun inv!11585 (TokenValueInjection!3248) Bool)

(assert (=> b!845892 (= e!556576 (and tp!266264 (inv!11582 (tag!1970 (h!14509 rules!2621))) (inv!11585 (transformation!1708 (h!14509 rules!2621))) e!556563))))

(declare-fun e!556574 () Bool)

(declare-fun b!845893 () Bool)

(declare-fun tp!266274 () Bool)

(declare-fun e!556577 () Bool)

(declare-datatypes ((Token!3082 0))(
  ( (Token!3083 (value!55377 TokenValue!1774) (rule!3131 Rule!3216) (size!7595 Int) (originalCharacters!2264 List!9123)) )
))
(declare-fun separatorToken!297 () Token!3082)

(assert (=> b!845893 (= e!556574 (and tp!266274 (inv!11582 (tag!1970 (rule!3131 separatorToken!297))) (inv!11585 (transformation!1708 (rule!3131 separatorToken!297))) e!556577))))

(declare-fun b!845894 () Bool)

(declare-fun res!386671 () Bool)

(declare-fun e!556568 () Bool)

(assert (=> b!845894 (=> res!386671 e!556568)))

(declare-datatypes ((List!9125 0))(
  ( (Nil!9109) (Cons!9109 (h!14510 Token!3082) (t!94419 List!9125)) )
))
(declare-fun l!5107 () List!9125)

(declare-fun lt!320410 () List!9125)

(declare-fun head!1468 (List!9125) Token!3082)

(assert (=> b!845894 (= res!386671 (not (= (head!1468 l!5107) (h!14510 lt!320410))))))

(assert (=> b!845895 (= e!556577 (and tp!266268 tp!266267))))

(declare-fun e!556580 () Bool)

(assert (=> b!845896 (= e!556580 (and tp!266265 tp!266273))))

(declare-fun b!845897 () Bool)

(declare-fun res!386680 () Bool)

(declare-fun e!556571 () Bool)

(assert (=> b!845897 (=> (not res!386680) (not e!556571))))

(declare-fun sepAndNonSepRulesDisjointChars!508 (List!9124 List!9124) Bool)

(assert (=> b!845897 (= res!386680 (sepAndNonSepRulesDisjointChars!508 rules!2621 rules!2621))))

(declare-fun tp!266269 () Bool)

(declare-fun e!556570 () Bool)

(declare-fun b!845898 () Bool)

(assert (=> b!845898 (= e!556570 (and tp!266269 (inv!11582 (tag!1970 (rule!3131 (h!14510 l!5107)))) (inv!11585 (transformation!1708 (rule!3131 (h!14510 l!5107)))) e!556580))))

(declare-fun e!556572 () Bool)

(declare-fun b!845899 () Bool)

(declare-fun lt!320413 () List!9125)

(declare-datatypes ((LexerInterface!1510 0))(
  ( (LexerInterfaceExt!1507 (__x!7280 Int)) (Lexer!1508) )
))
(declare-fun thiss!20117 () LexerInterface!1510)

(declare-fun tokensListTwoByTwoPredicateSeparableList!32 (LexerInterface!1510 List!9125 List!9124) Bool)

(assert (=> b!845899 (= e!556572 (tokensListTwoByTwoPredicateSeparableList!32 thiss!20117 lt!320413 rules!2621))))

(declare-fun b!845900 () Bool)

(declare-fun e!556575 () Bool)

(declare-fun e!556565 () Bool)

(declare-fun tp!266266 () Bool)

(declare-fun inv!11586 (Token!3082) Bool)

(assert (=> b!845900 (= e!556575 (and (inv!11586 (h!14510 l!5107)) e!556565 tp!266266))))

(declare-fun b!845901 () Bool)

(declare-fun e!556562 () Bool)

(assert (=> b!845901 (= e!556571 (not e!556562))))

(declare-fun res!386679 () Bool)

(assert (=> b!845901 (=> res!386679 e!556562)))

(get-info :version)

(assert (=> b!845901 (= res!386679 (or (not ((_ is Cons!9109) lt!320410)) (not ((_ is Cons!9109) (t!94419 lt!320410)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!398 (LexerInterface!1510 List!9124 List!9125) Bool)

(assert (=> b!845901 (rulesProduceEachTokenIndividuallyList!398 thiss!20117 rules!2621 lt!320410)))

(declare-fun withSeparatorTokenList!40 (LexerInterface!1510 List!9125 Token!3082) List!9125)

(assert (=> b!845901 (= lt!320410 (withSeparatorTokenList!40 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13575 0))(
  ( (Unit!13576) )
))
(declare-fun lt!320409 () Unit!13575)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!40 (LexerInterface!1510 List!9124 List!9125 Token!3082) Unit!13575)

(assert (=> b!845901 (= lt!320409 (withSeparatorTokenListPreservesRulesProduceTokens!40 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!845902 () Bool)

(declare-fun res!386678 () Bool)

(assert (=> b!845902 (=> (not res!386678) (not e!556571))))

(assert (=> b!845902 (= res!386678 (isSeparator!1708 (rule!3131 separatorToken!297)))))

(declare-fun b!845903 () Bool)

(declare-fun e!556564 () Bool)

(assert (=> b!845903 (= e!556568 e!556564)))

(declare-fun res!386681 () Bool)

(assert (=> b!845903 (=> res!386681 e!556564)))

(declare-fun isEmpty!5372 (List!9125) Bool)

(assert (=> b!845903 (= res!386681 (isEmpty!5372 (t!94419 (t!94419 lt!320410))))))

(assert (=> b!845903 e!556572))

(declare-fun res!386684 () Bool)

(assert (=> b!845903 (=> (not res!386684) (not e!556572))))

(assert (=> b!845903 (= res!386684 (rulesProduceEachTokenIndividuallyList!398 thiss!20117 rules!2621 lt!320413))))

(declare-fun lt!320411 () List!9125)

(declare-fun lt!320417 () Unit!13575)

(assert (=> b!845903 (= lt!320417 (withSeparatorTokenListPreservesRulesProduceTokens!40 thiss!20117 rules!2621 lt!320411 separatorToken!297))))

(declare-fun lt!320412 () Unit!13575)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!16 (LexerInterface!1510 List!9124 List!9125 Token!3082) Unit!13575)

(assert (=> b!845903 (= lt!320412 (printWithSeparatorTokenImpliesSeparableTokensList!16 thiss!20117 rules!2621 lt!320411 separatorToken!297))))

(declare-fun separableTokensPredicate!50 (LexerInterface!1510 Token!3082 Token!3082 List!9124) Bool)

(assert (=> b!845903 (separableTokensPredicate!50 thiss!20117 (h!14510 lt!320410) (h!14510 (t!94419 lt!320410)) rules!2621)))

(declare-fun lt!320414 () Unit!13575)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!32 (LexerInterface!1510 Token!3082 Token!3082 List!9124) Unit!13575)

(assert (=> b!845903 (= lt!320414 (lemmaTokensOfDifferentKindsAreSeparable!32 thiss!20117 (h!14510 lt!320410) (h!14510 (t!94419 lt!320410)) rules!2621))))

(declare-fun b!845904 () Bool)

(declare-fun res!386674 () Bool)

(assert (=> b!845904 (=> (not res!386674) (not e!556571))))

(declare-fun isEmpty!5373 (List!9124) Bool)

(assert (=> b!845904 (= res!386674 (not (isEmpty!5373 rules!2621)))))

(declare-fun b!845905 () Bool)

(assert (=> b!845905 (= e!556562 e!556568)))

(declare-fun res!386676 () Bool)

(assert (=> b!845905 (=> res!386676 e!556568)))

(assert (=> b!845905 (= res!386676 (not (= (t!94419 (t!94419 lt!320410)) lt!320413)))))

(assert (=> b!845905 (= lt!320413 (withSeparatorTokenList!40 thiss!20117 lt!320411 separatorToken!297))))

(declare-fun tail!1026 (List!9125) List!9125)

(assert (=> b!845905 (= lt!320411 (tail!1026 l!5107))))

(declare-fun tp!266270 () Bool)

(declare-fun b!845906 () Bool)

(declare-fun inv!21 (TokenValue!1774) Bool)

(assert (=> b!845906 (= e!556565 (and (inv!21 (value!55377 (h!14510 l!5107))) e!556570 tp!266270))))

(declare-fun b!845907 () Bool)

(assert (=> b!845907 (= e!556564 true)))

(declare-fun lt!320415 () Token!3082)

(assert (=> b!845907 (separableTokensPredicate!50 thiss!20117 (h!14510 (t!94419 lt!320410)) lt!320415 rules!2621)))

(declare-fun lt!320416 () Unit!13575)

(assert (=> b!845907 (= lt!320416 (lemmaTokensOfDifferentKindsAreSeparable!32 thiss!20117 (h!14510 (t!94419 lt!320410)) lt!320415 rules!2621))))

(assert (=> b!845907 (= lt!320415 (head!1468 (t!94419 (t!94419 lt!320410))))))

(declare-fun b!845908 () Bool)

(declare-fun res!386677 () Bool)

(assert (=> b!845908 (=> (not res!386677) (not e!556571))))

(declare-fun lambda!25192 () Int)

(declare-fun forall!2135 (List!9125 Int) Bool)

(assert (=> b!845908 (= res!386677 (forall!2135 l!5107 lambda!25192))))

(declare-fun b!845909 () Bool)

(declare-fun res!386675 () Bool)

(assert (=> b!845909 (=> (not res!386675) (not e!556571))))

(assert (=> b!845909 (= res!386675 (rulesProduceEachTokenIndividuallyList!398 thiss!20117 rules!2621 l!5107))))

(declare-fun b!845910 () Bool)

(declare-fun res!386682 () Bool)

(assert (=> b!845910 (=> (not res!386682) (not e!556571))))

(declare-fun rulesProduceIndividualToken!574 (LexerInterface!1510 List!9124 Token!3082) Bool)

(assert (=> b!845910 (= res!386682 (rulesProduceIndividualToken!574 thiss!20117 rules!2621 separatorToken!297))))

(assert (=> b!845911 (= e!556563 (and tp!266263 tp!266271))))

(declare-fun res!386683 () Bool)

(assert (=> start!75374 (=> (not res!386683) (not e!556571))))

(assert (=> start!75374 (= res!386683 ((_ is Lexer!1508) thiss!20117))))

(assert (=> start!75374 e!556571))

(assert (=> start!75374 true))

(declare-fun e!556569 () Bool)

(assert (=> start!75374 e!556569))

(assert (=> start!75374 e!556575))

(declare-fun e!556566 () Bool)

(assert (=> start!75374 (and (inv!11586 separatorToken!297) e!556566)))

(declare-fun tp!266272 () Bool)

(declare-fun b!845912 () Bool)

(assert (=> b!845912 (= e!556566 (and (inv!21 (value!55377 separatorToken!297)) e!556574 tp!266272))))

(declare-fun b!845913 () Bool)

(declare-fun res!386672 () Bool)

(assert (=> b!845913 (=> res!386672 e!556568)))

(assert (=> b!845913 (= res!386672 (not (= (h!14510 (t!94419 lt!320410)) separatorToken!297)))))

(declare-fun b!845914 () Bool)

(declare-fun tp!266262 () Bool)

(assert (=> b!845914 (= e!556569 (and e!556576 tp!266262))))

(declare-fun b!845915 () Bool)

(declare-fun res!386673 () Bool)

(assert (=> b!845915 (=> (not res!386673) (not e!556571))))

(declare-fun rulesInvariant!1386 (LexerInterface!1510 List!9124) Bool)

(assert (=> b!845915 (= res!386673 (rulesInvariant!1386 thiss!20117 rules!2621))))

(assert (= (and start!75374 res!386683) b!845904))

(assert (= (and b!845904 res!386674) b!845915))

(assert (= (and b!845915 res!386673) b!845909))

(assert (= (and b!845909 res!386675) b!845910))

(assert (= (and b!845910 res!386682) b!845902))

(assert (= (and b!845902 res!386678) b!845908))

(assert (= (and b!845908 res!386677) b!845897))

(assert (= (and b!845897 res!386680) b!845901))

(assert (= (and b!845901 (not res!386679)) b!845905))

(assert (= (and b!845905 (not res!386676)) b!845894))

(assert (= (and b!845894 (not res!386671)) b!845913))

(assert (= (and b!845913 (not res!386672)) b!845903))

(assert (= (and b!845903 res!386684) b!845899))

(assert (= (and b!845903 (not res!386681)) b!845907))

(assert (= b!845892 b!845911))

(assert (= b!845914 b!845892))

(assert (= (and start!75374 ((_ is Cons!9108) rules!2621)) b!845914))

(assert (= b!845898 b!845896))

(assert (= b!845906 b!845898))

(assert (= b!845900 b!845906))

(assert (= (and start!75374 ((_ is Cons!9109) l!5107)) b!845900))

(assert (= b!845893 b!845895))

(assert (= b!845912 b!845893))

(assert (= start!75374 b!845912))

(declare-fun m!1081021 () Bool)

(assert (=> b!845912 m!1081021))

(declare-fun m!1081023 () Bool)

(assert (=> b!845906 m!1081023))

(declare-fun m!1081025 () Bool)

(assert (=> b!845910 m!1081025))

(declare-fun m!1081027 () Bool)

(assert (=> b!845898 m!1081027))

(declare-fun m!1081029 () Bool)

(assert (=> b!845898 m!1081029))

(declare-fun m!1081031 () Bool)

(assert (=> b!845915 m!1081031))

(declare-fun m!1081033 () Bool)

(assert (=> b!845892 m!1081033))

(declare-fun m!1081035 () Bool)

(assert (=> b!845892 m!1081035))

(declare-fun m!1081037 () Bool)

(assert (=> b!845893 m!1081037))

(declare-fun m!1081039 () Bool)

(assert (=> b!845893 m!1081039))

(declare-fun m!1081041 () Bool)

(assert (=> b!845908 m!1081041))

(declare-fun m!1081043 () Bool)

(assert (=> b!845903 m!1081043))

(declare-fun m!1081045 () Bool)

(assert (=> b!845903 m!1081045))

(declare-fun m!1081047 () Bool)

(assert (=> b!845903 m!1081047))

(declare-fun m!1081049 () Bool)

(assert (=> b!845903 m!1081049))

(declare-fun m!1081051 () Bool)

(assert (=> b!845903 m!1081051))

(declare-fun m!1081053 () Bool)

(assert (=> b!845903 m!1081053))

(declare-fun m!1081055 () Bool)

(assert (=> b!845894 m!1081055))

(declare-fun m!1081057 () Bool)

(assert (=> b!845904 m!1081057))

(declare-fun m!1081059 () Bool)

(assert (=> b!845905 m!1081059))

(declare-fun m!1081061 () Bool)

(assert (=> b!845905 m!1081061))

(declare-fun m!1081063 () Bool)

(assert (=> b!845897 m!1081063))

(declare-fun m!1081065 () Bool)

(assert (=> start!75374 m!1081065))

(declare-fun m!1081067 () Bool)

(assert (=> b!845907 m!1081067))

(declare-fun m!1081069 () Bool)

(assert (=> b!845907 m!1081069))

(declare-fun m!1081071 () Bool)

(assert (=> b!845907 m!1081071))

(declare-fun m!1081073 () Bool)

(assert (=> b!845899 m!1081073))

(declare-fun m!1081075 () Bool)

(assert (=> b!845909 m!1081075))

(declare-fun m!1081077 () Bool)

(assert (=> b!845901 m!1081077))

(declare-fun m!1081079 () Bool)

(assert (=> b!845901 m!1081079))

(declare-fun m!1081081 () Bool)

(assert (=> b!845901 m!1081081))

(declare-fun m!1081083 () Bool)

(assert (=> b!845900 m!1081083))

(check-sat (not b!845908) (not b!845903) (not b!845898) (not b!845915) (not b!845905) (not b!845900) (not b_next!25495) (not b_next!25489) (not b!845893) (not b_next!25499) (not b!845912) (not b!845909) b_and!73581 (not b!845897) (not b!845907) (not b!845899) (not b!845901) (not b!845906) (not b!845894) b_and!73579 (not b_next!25497) b_and!73575 (not b!845892) (not b_next!25493) (not b!845904) b_and!73577 (not b_next!25491) b_and!73573 (not b!845914) (not b!845910) (not start!75374) b_and!73583)
(check-sat b_and!73581 (not b_next!25495) b_and!73575 (not b_next!25489) (not b_next!25493) (not b_next!25499) b_and!73573 b_and!73583 b_and!73579 (not b_next!25497) b_and!73577 (not b_next!25491))

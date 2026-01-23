; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75378 () Bool)

(assert start!75378)

(declare-fun b!846040 () Bool)

(declare-fun b_free!25449 () Bool)

(declare-fun b_next!25513 () Bool)

(assert (=> b!846040 (= b_free!25449 (not b_next!25513))))

(declare-fun tp!266344 () Bool)

(declare-fun b_and!73597 () Bool)

(assert (=> b!846040 (= tp!266344 b_and!73597)))

(declare-fun b_free!25451 () Bool)

(declare-fun b_next!25515 () Bool)

(assert (=> b!846040 (= b_free!25451 (not b_next!25515))))

(declare-fun tp!266352 () Bool)

(declare-fun b_and!73599 () Bool)

(assert (=> b!846040 (= tp!266352 b_and!73599)))

(declare-fun b!846047 () Bool)

(declare-fun b_free!25453 () Bool)

(declare-fun b_next!25517 () Bool)

(assert (=> b!846047 (= b_free!25453 (not b_next!25517))))

(declare-fun tp!266342 () Bool)

(declare-fun b_and!73601 () Bool)

(assert (=> b!846047 (= tp!266342 b_and!73601)))

(declare-fun b_free!25455 () Bool)

(declare-fun b_next!25519 () Bool)

(assert (=> b!846047 (= b_free!25455 (not b_next!25519))))

(declare-fun tp!266349 () Bool)

(declare-fun b_and!73603 () Bool)

(assert (=> b!846047 (= tp!266349 b_and!73603)))

(declare-fun b!846045 () Bool)

(declare-fun b_free!25457 () Bool)

(declare-fun b_next!25521 () Bool)

(assert (=> b!846045 (= b_free!25457 (not b_next!25521))))

(declare-fun tp!266343 () Bool)

(declare-fun b_and!73605 () Bool)

(assert (=> b!846045 (= tp!266343 b_and!73605)))

(declare-fun b_free!25459 () Bool)

(declare-fun b_next!25523 () Bool)

(assert (=> b!846045 (= b_free!25459 (not b_next!25523))))

(declare-fun tp!266345 () Bool)

(declare-fun b_and!73607 () Bool)

(assert (=> b!846045 (= tp!266345 b_and!73607)))

(declare-fun b!846036 () Bool)

(declare-fun e!556693 () Bool)

(declare-fun e!556682 () Bool)

(assert (=> b!846036 (= e!556693 e!556682)))

(declare-fun res!386761 () Bool)

(assert (=> b!846036 (=> res!386761 e!556682)))

(declare-datatypes ((List!9130 0))(
  ( (Nil!9114) (Cons!9114 (h!14515 (_ BitVec 16)) (t!94424 List!9130)) )
))
(declare-datatypes ((TokenValue!1776 0))(
  ( (FloatLiteralValue!3552 (text!12877 List!9130)) (TokenValueExt!1775 (__x!7283 Int)) (Broken!8880 (value!55408 List!9130)) (Object!1791) (End!1776) (Def!1776) (Underscore!1776) (Match!1776) (Else!1776) (Error!1776) (Case!1776) (If!1776) (Extends!1776) (Abstract!1776) (Class!1776) (Val!1776) (DelimiterValue!3552 (del!1836 List!9130)) (KeywordValue!1782 (value!55409 List!9130)) (CommentValue!3552 (value!55410 List!9130)) (WhitespaceValue!3552 (value!55411 List!9130)) (IndentationValue!1776 (value!55412 List!9130)) (String!10777) (Int32!1776) (Broken!8881 (value!55413 List!9130)) (Boolean!1777) (Unit!13580) (OperatorValue!1779 (op!1836 List!9130)) (IdentifierValue!3552 (value!55414 List!9130)) (IdentifierValue!3553 (value!55415 List!9130)) (WhitespaceValue!3553 (value!55416 List!9130)) (True!3552) (False!3552) (Broken!8882 (value!55417 List!9130)) (Broken!8883 (value!55418 List!9130)) (True!3553) (RightBrace!1776) (RightBracket!1776) (Colon!1776) (Null!1776) (Comma!1776) (LeftBracket!1776) (False!3553) (LeftBrace!1776) (ImaginaryLiteralValue!1776 (text!12878 List!9130)) (StringLiteralValue!5328 (value!55419 List!9130)) (EOFValue!1776 (value!55420 List!9130)) (IdentValue!1776 (value!55421 List!9130)) (DelimiterValue!3553 (value!55422 List!9130)) (DedentValue!1776 (value!55423 List!9130)) (NewLineValue!1776 (value!55424 List!9130)) (IntegerValue!5328 (value!55425 (_ BitVec 32)) (text!12879 List!9130)) (IntegerValue!5329 (value!55426 Int) (text!12880 List!9130)) (Times!1776) (Or!1776) (Equal!1776) (Minus!1776) (Broken!8884 (value!55427 List!9130)) (And!1776) (Div!1776) (LessEqual!1776) (Mod!1776) (Concat!3919) (Not!1776) (Plus!1776) (SpaceValue!1776 (value!55428 List!9130)) (IntegerValue!5330 (value!55429 Int) (text!12881 List!9130)) (StringLiteralValue!5329 (text!12882 List!9130)) (FloatLiteralValue!3553 (text!12883 List!9130)) (BytesLiteralValue!1776 (value!55430 List!9130)) (CommentValue!3553 (value!55431 List!9130)) (StringLiteralValue!5330 (value!55432 List!9130)) (ErrorTokenValue!1776 (msg!1837 List!9130)) )
))
(declare-datatypes ((C!4856 0))(
  ( (C!4857 (val!2676 Int)) )
))
(declare-datatypes ((Regex!2143 0))(
  ( (ElementMatch!2143 (c!137593 C!4856)) (Concat!3920 (regOne!4798 Regex!2143) (regTwo!4798 Regex!2143)) (EmptyExpr!2143) (Star!2143 (reg!2472 Regex!2143)) (EmptyLang!2143) (Union!2143 (regOne!4799 Regex!2143) (regTwo!4799 Regex!2143)) )
))
(declare-datatypes ((String!10778 0))(
  ( (String!10779 (value!55433 String)) )
))
(declare-datatypes ((List!9131 0))(
  ( (Nil!9115) (Cons!9115 (h!14516 C!4856) (t!94425 List!9131)) )
))
(declare-datatypes ((IArray!6047 0))(
  ( (IArray!6048 (innerList!3081 List!9131)) )
))
(declare-datatypes ((Conc!3021 0))(
  ( (Node!3021 (left!6749 Conc!3021) (right!7079 Conc!3021) (csize!6272 Int) (cheight!3232 Int)) (Leaf!4464 (xs!5710 IArray!6047) (csize!6273 Int)) (Empty!3021) )
))
(declare-datatypes ((BalanceConc!6056 0))(
  ( (BalanceConc!6057 (c!137594 Conc!3021)) )
))
(declare-datatypes ((TokenValueInjection!3252 0))(
  ( (TokenValueInjection!3253 (toValue!2735 Int) (toChars!2594 Int)) )
))
(declare-datatypes ((Rule!3220 0))(
  ( (Rule!3221 (regex!1710 Regex!2143) (tag!1972 String!10778) (isSeparator!1710 Bool) (transformation!1710 TokenValueInjection!3252)) )
))
(declare-datatypes ((Token!3086 0))(
  ( (Token!3087 (value!55434 TokenValue!1776) (rule!3133 Rule!3220) (size!7597 Int) (originalCharacters!2266 List!9131)) )
))
(declare-datatypes ((List!9132 0))(
  ( (Nil!9116) (Cons!9116 (h!14517 Token!3086) (t!94426 List!9132)) )
))
(declare-fun lt!320468 () List!9132)

(declare-fun isEmpty!5376 (List!9132) Bool)

(assert (=> b!846036 (= res!386761 (isEmpty!5376 (t!94426 (t!94426 lt!320468))))))

(declare-fun e!556692 () Bool)

(assert (=> b!846036 e!556692))

(declare-fun res!386762 () Bool)

(assert (=> b!846036 (=> (not res!386762) (not e!556692))))

(declare-fun lt!320471 () List!9132)

(declare-datatypes ((List!9133 0))(
  ( (Nil!9117) (Cons!9117 (h!14518 Rule!3220) (t!94427 List!9133)) )
))
(declare-fun rules!2621 () List!9133)

(declare-datatypes ((LexerInterface!1512 0))(
  ( (LexerInterfaceExt!1509 (__x!7284 Int)) (Lexer!1510) )
))
(declare-fun thiss!20117 () LexerInterface!1512)

(declare-fun rulesProduceEachTokenIndividuallyList!400 (LexerInterface!1512 List!9133 List!9132) Bool)

(assert (=> b!846036 (= res!386762 (rulesProduceEachTokenIndividuallyList!400 thiss!20117 rules!2621 lt!320471))))

(declare-fun separatorToken!297 () Token!3086)

(declare-fun lt!320465 () List!9132)

(declare-datatypes ((Unit!13581 0))(
  ( (Unit!13582) )
))
(declare-fun lt!320469 () Unit!13581)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!42 (LexerInterface!1512 List!9133 List!9132 Token!3086) Unit!13581)

(assert (=> b!846036 (= lt!320469 (withSeparatorTokenListPreservesRulesProduceTokens!42 thiss!20117 rules!2621 lt!320465 separatorToken!297))))

(declare-fun lt!320467 () Unit!13581)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!18 (LexerInterface!1512 List!9133 List!9132 Token!3086) Unit!13581)

(assert (=> b!846036 (= lt!320467 (printWithSeparatorTokenImpliesSeparableTokensList!18 thiss!20117 rules!2621 lt!320465 separatorToken!297))))

(declare-fun separableTokensPredicate!52 (LexerInterface!1512 Token!3086 Token!3086 List!9133) Bool)

(assert (=> b!846036 (separableTokensPredicate!52 thiss!20117 (h!14517 lt!320468) (h!14517 (t!94426 lt!320468)) rules!2621)))

(declare-fun lt!320470 () Unit!13581)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!34 (LexerInterface!1512 Token!3086 Token!3086 List!9133) Unit!13581)

(assert (=> b!846036 (= lt!320470 (lemmaTokensOfDifferentKindsAreSeparable!34 thiss!20117 (h!14517 lt!320468) (h!14517 (t!94426 lt!320468)) rules!2621))))

(declare-fun b!846037 () Bool)

(declare-fun res!386766 () Bool)

(declare-fun e!556697 () Bool)

(assert (=> b!846037 (=> (not res!386766) (not e!556697))))

(declare-fun rulesProduceIndividualToken!576 (LexerInterface!1512 List!9133 Token!3086) Bool)

(assert (=> b!846037 (= res!386766 (rulesProduceIndividualToken!576 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!846038 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!34 (LexerInterface!1512 List!9132 List!9133) Bool)

(assert (=> b!846038 (= e!556692 (tokensListTwoByTwoPredicateSeparableList!34 thiss!20117 lt!320471 rules!2621))))

(declare-fun b!846039 () Bool)

(declare-fun res!386763 () Bool)

(assert (=> b!846039 (=> (not res!386763) (not e!556697))))

(declare-fun l!5107 () List!9132)

(declare-fun lambda!25198 () Int)

(declare-fun forall!2137 (List!9132 Int) Bool)

(assert (=> b!846039 (= res!386763 (forall!2137 l!5107 lambda!25198))))

(declare-fun e!556700 () Bool)

(assert (=> b!846040 (= e!556700 (and tp!266344 tp!266352))))

(declare-fun e!556694 () Bool)

(declare-fun b!846041 () Bool)

(declare-fun tp!266350 () Bool)

(declare-fun e!556688 () Bool)

(declare-fun inv!11589 (String!10778) Bool)

(declare-fun inv!11592 (TokenValueInjection!3252) Bool)

(assert (=> b!846041 (= e!556694 (and tp!266350 (inv!11589 (tag!1972 (h!14518 rules!2621))) (inv!11592 (transformation!1710 (h!14518 rules!2621))) e!556688))))

(declare-fun b!846042 () Bool)

(assert (=> b!846042 (= e!556682 (rulesProduceIndividualToken!576 thiss!20117 rules!2621 (h!14517 (t!94426 lt!320468))))))

(declare-fun lt!320466 () Token!3086)

(assert (=> b!846042 (separableTokensPredicate!52 thiss!20117 (h!14517 (t!94426 lt!320468)) lt!320466 rules!2621)))

(declare-fun lt!320463 () Unit!13581)

(assert (=> b!846042 (= lt!320463 (lemmaTokensOfDifferentKindsAreSeparable!34 thiss!20117 (h!14517 (t!94426 lt!320468)) lt!320466 rules!2621))))

(declare-fun head!1470 (List!9132) Token!3086)

(assert (=> b!846042 (= lt!320466 (head!1470 (t!94426 (t!94426 lt!320468))))))

(declare-fun b!846043 () Bool)

(declare-fun tp!266341 () Bool)

(declare-fun e!556683 () Bool)

(assert (=> b!846043 (= e!556683 (and tp!266341 (inv!11589 (tag!1972 (rule!3133 separatorToken!297))) (inv!11592 (transformation!1710 (rule!3133 separatorToken!297))) e!556700))))

(declare-fun b!846044 () Bool)

(declare-fun res!386759 () Bool)

(assert (=> b!846044 (=> res!386759 e!556693)))

(assert (=> b!846044 (= res!386759 (not (= (h!14517 (t!94426 lt!320468)) separatorToken!297)))))

(declare-fun e!556695 () Bool)

(assert (=> b!846045 (= e!556695 (and tp!266343 tp!266345))))

(declare-fun b!846046 () Bool)

(declare-fun res!386767 () Bool)

(assert (=> b!846046 (=> (not res!386767) (not e!556697))))

(declare-fun isEmpty!5377 (List!9133) Bool)

(assert (=> b!846046 (= res!386767 (not (isEmpty!5377 rules!2621)))))

(assert (=> b!846047 (= e!556688 (and tp!266342 tp!266349))))

(declare-fun b!846048 () Bool)

(declare-fun res!386758 () Bool)

(assert (=> b!846048 (=> (not res!386758) (not e!556697))))

(assert (=> b!846048 (= res!386758 (isSeparator!1710 (rule!3133 separatorToken!297)))))

(declare-fun b!846049 () Bool)

(declare-fun res!386757 () Bool)

(assert (=> b!846049 (=> (not res!386757) (not e!556697))))

(declare-fun rulesInvariant!1388 (LexerInterface!1512 List!9133) Bool)

(assert (=> b!846049 (= res!386757 (rulesInvariant!1388 thiss!20117 rules!2621))))

(declare-fun e!556687 () Bool)

(declare-fun b!846050 () Bool)

(declare-fun tp!266340 () Bool)

(assert (=> b!846050 (= e!556687 (and tp!266340 (inv!11589 (tag!1972 (rule!3133 (h!14517 l!5107)))) (inv!11592 (transformation!1710 (rule!3133 (h!14517 l!5107)))) e!556695))))

(declare-fun res!386760 () Bool)

(assert (=> start!75378 (=> (not res!386760) (not e!556697))))

(get-info :version)

(assert (=> start!75378 (= res!386760 ((_ is Lexer!1510) thiss!20117))))

(assert (=> start!75378 e!556697))

(assert (=> start!75378 true))

(declare-fun e!556696 () Bool)

(assert (=> start!75378 e!556696))

(declare-fun e!556689 () Bool)

(assert (=> start!75378 e!556689))

(declare-fun e!556685 () Bool)

(declare-fun inv!11593 (Token!3086) Bool)

(assert (=> start!75378 (and (inv!11593 separatorToken!297) e!556685)))

(declare-fun b!846051 () Bool)

(declare-fun e!556699 () Bool)

(declare-fun tp!266348 () Bool)

(assert (=> b!846051 (= e!556689 (and (inv!11593 (h!14517 l!5107)) e!556699 tp!266348))))

(declare-fun b!846052 () Bool)

(declare-fun e!556701 () Bool)

(assert (=> b!846052 (= e!556697 (not e!556701))))

(declare-fun res!386756 () Bool)

(assert (=> b!846052 (=> res!386756 e!556701)))

(assert (=> b!846052 (= res!386756 (or (not ((_ is Cons!9116) lt!320468)) (not ((_ is Cons!9116) (t!94426 lt!320468)))))))

(assert (=> b!846052 (rulesProduceEachTokenIndividuallyList!400 thiss!20117 rules!2621 lt!320468)))

(declare-fun withSeparatorTokenList!42 (LexerInterface!1512 List!9132 Token!3086) List!9132)

(assert (=> b!846052 (= lt!320468 (withSeparatorTokenList!42 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320464 () Unit!13581)

(assert (=> b!846052 (= lt!320464 (withSeparatorTokenListPreservesRulesProduceTokens!42 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!266347 () Bool)

(declare-fun b!846053 () Bool)

(declare-fun inv!21 (TokenValue!1776) Bool)

(assert (=> b!846053 (= e!556685 (and (inv!21 (value!55434 separatorToken!297)) e!556683 tp!266347))))

(declare-fun b!846054 () Bool)

(declare-fun res!386755 () Bool)

(assert (=> b!846054 (=> (not res!386755) (not e!556697))))

(declare-fun sepAndNonSepRulesDisjointChars!510 (List!9133 List!9133) Bool)

(assert (=> b!846054 (= res!386755 (sepAndNonSepRulesDisjointChars!510 rules!2621 rules!2621))))

(declare-fun tp!266351 () Bool)

(declare-fun b!846055 () Bool)

(assert (=> b!846055 (= e!556699 (and (inv!21 (value!55434 (h!14517 l!5107))) e!556687 tp!266351))))

(declare-fun b!846056 () Bool)

(assert (=> b!846056 (= e!556701 e!556693)))

(declare-fun res!386765 () Bool)

(assert (=> b!846056 (=> res!386765 e!556693)))

(assert (=> b!846056 (= res!386765 (not (= (t!94426 (t!94426 lt!320468)) lt!320471)))))

(assert (=> b!846056 (= lt!320471 (withSeparatorTokenList!42 thiss!20117 lt!320465 separatorToken!297))))

(declare-fun tail!1028 (List!9132) List!9132)

(assert (=> b!846056 (= lt!320465 (tail!1028 l!5107))))

(declare-fun b!846057 () Bool)

(declare-fun res!386764 () Bool)

(assert (=> b!846057 (=> (not res!386764) (not e!556697))))

(assert (=> b!846057 (= res!386764 (rulesProduceEachTokenIndividuallyList!400 thiss!20117 rules!2621 l!5107))))

(declare-fun b!846058 () Bool)

(declare-fun tp!266346 () Bool)

(assert (=> b!846058 (= e!556696 (and e!556694 tp!266346))))

(declare-fun b!846059 () Bool)

(declare-fun res!386768 () Bool)

(assert (=> b!846059 (=> res!386768 e!556693)))

(assert (=> b!846059 (= res!386768 (not (= (head!1470 l!5107) (h!14517 lt!320468))))))

(assert (= (and start!75378 res!386760) b!846046))

(assert (= (and b!846046 res!386767) b!846049))

(assert (= (and b!846049 res!386757) b!846057))

(assert (= (and b!846057 res!386764) b!846037))

(assert (= (and b!846037 res!386766) b!846048))

(assert (= (and b!846048 res!386758) b!846039))

(assert (= (and b!846039 res!386763) b!846054))

(assert (= (and b!846054 res!386755) b!846052))

(assert (= (and b!846052 (not res!386756)) b!846056))

(assert (= (and b!846056 (not res!386765)) b!846059))

(assert (= (and b!846059 (not res!386768)) b!846044))

(assert (= (and b!846044 (not res!386759)) b!846036))

(assert (= (and b!846036 res!386762) b!846038))

(assert (= (and b!846036 (not res!386761)) b!846042))

(assert (= b!846041 b!846047))

(assert (= b!846058 b!846041))

(assert (= (and start!75378 ((_ is Cons!9117) rules!2621)) b!846058))

(assert (= b!846050 b!846045))

(assert (= b!846055 b!846050))

(assert (= b!846051 b!846055))

(assert (= (and start!75378 ((_ is Cons!9116) l!5107)) b!846051))

(assert (= b!846043 b!846040))

(assert (= b!846053 b!846043))

(assert (= start!75378 b!846053))

(declare-fun m!1081151 () Bool)

(assert (=> b!846059 m!1081151))

(declare-fun m!1081153 () Bool)

(assert (=> b!846055 m!1081153))

(declare-fun m!1081155 () Bool)

(assert (=> b!846039 m!1081155))

(declare-fun m!1081157 () Bool)

(assert (=> b!846050 m!1081157))

(declare-fun m!1081159 () Bool)

(assert (=> b!846050 m!1081159))

(declare-fun m!1081161 () Bool)

(assert (=> b!846056 m!1081161))

(declare-fun m!1081163 () Bool)

(assert (=> b!846056 m!1081163))

(declare-fun m!1081165 () Bool)

(assert (=> start!75378 m!1081165))

(declare-fun m!1081167 () Bool)

(assert (=> b!846057 m!1081167))

(declare-fun m!1081169 () Bool)

(assert (=> b!846042 m!1081169))

(declare-fun m!1081171 () Bool)

(assert (=> b!846042 m!1081171))

(declare-fun m!1081173 () Bool)

(assert (=> b!846042 m!1081173))

(declare-fun m!1081175 () Bool)

(assert (=> b!846042 m!1081175))

(declare-fun m!1081177 () Bool)

(assert (=> b!846053 m!1081177))

(declare-fun m!1081179 () Bool)

(assert (=> b!846049 m!1081179))

(declare-fun m!1081181 () Bool)

(assert (=> b!846036 m!1081181))

(declare-fun m!1081183 () Bool)

(assert (=> b!846036 m!1081183))

(declare-fun m!1081185 () Bool)

(assert (=> b!846036 m!1081185))

(declare-fun m!1081187 () Bool)

(assert (=> b!846036 m!1081187))

(declare-fun m!1081189 () Bool)

(assert (=> b!846036 m!1081189))

(declare-fun m!1081191 () Bool)

(assert (=> b!846036 m!1081191))

(declare-fun m!1081193 () Bool)

(assert (=> b!846037 m!1081193))

(declare-fun m!1081195 () Bool)

(assert (=> b!846043 m!1081195))

(declare-fun m!1081197 () Bool)

(assert (=> b!846043 m!1081197))

(declare-fun m!1081199 () Bool)

(assert (=> b!846046 m!1081199))

(declare-fun m!1081201 () Bool)

(assert (=> b!846041 m!1081201))

(declare-fun m!1081203 () Bool)

(assert (=> b!846041 m!1081203))

(declare-fun m!1081205 () Bool)

(assert (=> b!846054 m!1081205))

(declare-fun m!1081207 () Bool)

(assert (=> b!846051 m!1081207))

(declare-fun m!1081209 () Bool)

(assert (=> b!846038 m!1081209))

(declare-fun m!1081211 () Bool)

(assert (=> b!846052 m!1081211))

(declare-fun m!1081213 () Bool)

(assert (=> b!846052 m!1081213))

(declare-fun m!1081215 () Bool)

(assert (=> b!846052 m!1081215))

(check-sat (not b!846051) (not b!846041) b_and!73607 (not b_next!25519) (not b!846036) (not b!846042) (not b!846050) b_and!73601 b_and!73597 (not b!846059) (not b!846058) b_and!73599 b_and!73603 (not b!846054) b_and!73605 (not b!846043) (not b_next!25513) (not b!846053) (not b_next!25517) (not b_next!25515) (not b!846057) (not b!846037) (not b!846038) (not b_next!25523) (not b!846049) (not b!846055) (not b!846056) (not b!846052) (not b!846039) (not b_next!25521) (not start!75378) (not b!846046))
(check-sat (not b_next!25513) (not b_next!25517) (not b_next!25515) (not b_next!25523) b_and!73607 (not b_next!25521) (not b_next!25519) b_and!73601 b_and!73597 b_and!73599 b_and!73603 b_and!73605)

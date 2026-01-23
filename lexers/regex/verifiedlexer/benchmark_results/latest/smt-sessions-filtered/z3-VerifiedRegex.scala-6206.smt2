; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300042 () Bool)

(assert start!300042)

(declare-fun b!3197407 () Bool)

(declare-fun b_free!84921 () Bool)

(declare-fun b_next!85625 () Bool)

(assert (=> b!3197407 (= b_free!84921 (not b_next!85625))))

(declare-fun tp!1010920 () Bool)

(declare-fun b_and!212335 () Bool)

(assert (=> b!3197407 (= tp!1010920 b_and!212335)))

(declare-fun b_free!84923 () Bool)

(declare-fun b_next!85627 () Bool)

(assert (=> b!3197407 (= b_free!84923 (not b_next!85627))))

(declare-fun tp!1010916 () Bool)

(declare-fun b_and!212337 () Bool)

(assert (=> b!3197407 (= tp!1010916 b_and!212337)))

(declare-fun b!3197411 () Bool)

(declare-fun b_free!84925 () Bool)

(declare-fun b_next!85629 () Bool)

(assert (=> b!3197411 (= b_free!84925 (not b_next!85629))))

(declare-fun tp!1010928 () Bool)

(declare-fun b_and!212339 () Bool)

(assert (=> b!3197411 (= tp!1010928 b_and!212339)))

(declare-fun b_free!84927 () Bool)

(declare-fun b_next!85631 () Bool)

(assert (=> b!3197411 (= b_free!84927 (not b_next!85631))))

(declare-fun tp!1010918 () Bool)

(declare-fun b_and!212341 () Bool)

(assert (=> b!3197411 (= tp!1010918 b_and!212341)))

(declare-fun b!3197387 () Bool)

(declare-fun b_free!84929 () Bool)

(declare-fun b_next!85633 () Bool)

(assert (=> b!3197387 (= b_free!84929 (not b_next!85633))))

(declare-fun tp!1010917 () Bool)

(declare-fun b_and!212343 () Bool)

(assert (=> b!3197387 (= tp!1010917 b_and!212343)))

(declare-fun b_free!84931 () Bool)

(declare-fun b_next!85635 () Bool)

(assert (=> b!3197387 (= b_free!84931 (not b_next!85635))))

(declare-fun tp!1010923 () Bool)

(declare-fun b_and!212345 () Bool)

(assert (=> b!3197387 (= tp!1010923 b_and!212345)))

(declare-fun b!3197385 () Bool)

(declare-fun res!1300891 () Bool)

(declare-fun e!1993302 () Bool)

(assert (=> b!3197385 (=> (not res!1300891) (not e!1993302))))

(declare-datatypes ((C!20088 0))(
  ( (C!20089 (val!12092 Int)) )
))
(declare-datatypes ((Regex!9951 0))(
  ( (ElementMatch!9951 (c!536748 C!20088)) (Concat!15373 (regOne!20414 Regex!9951) (regTwo!20414 Regex!9951)) (EmptyExpr!9951) (Star!9951 (reg!10280 Regex!9951)) (EmptyLang!9951) (Union!9951 (regOne!20415 Regex!9951) (regTwo!20415 Regex!9951)) )
))
(declare-datatypes ((List!36166 0))(
  ( (Nil!36042) (Cons!36042 (h!41462 (_ BitVec 16)) (t!236993 List!36166)) )
))
(declare-datatypes ((TokenValue!5422 0))(
  ( (FloatLiteralValue!10844 (text!38399 List!36166)) (TokenValueExt!5421 (__x!23061 Int)) (Broken!27110 (value!168406 List!36166)) (Object!5545) (End!5422) (Def!5422) (Underscore!5422) (Match!5422) (Else!5422) (Error!5422) (Case!5422) (If!5422) (Extends!5422) (Abstract!5422) (Class!5422) (Val!5422) (DelimiterValue!10844 (del!5482 List!36166)) (KeywordValue!5428 (value!168407 List!36166)) (CommentValue!10844 (value!168408 List!36166)) (WhitespaceValue!10844 (value!168409 List!36166)) (IndentationValue!5422 (value!168410 List!36166)) (String!40443) (Int32!5422) (Broken!27111 (value!168411 List!36166)) (Boolean!5423) (Unit!50441) (OperatorValue!5425 (op!5482 List!36166)) (IdentifierValue!10844 (value!168412 List!36166)) (IdentifierValue!10845 (value!168413 List!36166)) (WhitespaceValue!10845 (value!168414 List!36166)) (True!10844) (False!10844) (Broken!27112 (value!168415 List!36166)) (Broken!27113 (value!168416 List!36166)) (True!10845) (RightBrace!5422) (RightBracket!5422) (Colon!5422) (Null!5422) (Comma!5422) (LeftBracket!5422) (False!10845) (LeftBrace!5422) (ImaginaryLiteralValue!5422 (text!38400 List!36166)) (StringLiteralValue!16266 (value!168417 List!36166)) (EOFValue!5422 (value!168418 List!36166)) (IdentValue!5422 (value!168419 List!36166)) (DelimiterValue!10845 (value!168420 List!36166)) (DedentValue!5422 (value!168421 List!36166)) (NewLineValue!5422 (value!168422 List!36166)) (IntegerValue!16266 (value!168423 (_ BitVec 32)) (text!38401 List!36166)) (IntegerValue!16267 (value!168424 Int) (text!38402 List!36166)) (Times!5422) (Or!5422) (Equal!5422) (Minus!5422) (Broken!27114 (value!168425 List!36166)) (And!5422) (Div!5422) (LessEqual!5422) (Mod!5422) (Concat!15374) (Not!5422) (Plus!5422) (SpaceValue!5422 (value!168426 List!36166)) (IntegerValue!16268 (value!168427 Int) (text!38403 List!36166)) (StringLiteralValue!16267 (text!38404 List!36166)) (FloatLiteralValue!10845 (text!38405 List!36166)) (BytesLiteralValue!5422 (value!168428 List!36166)) (CommentValue!10845 (value!168429 List!36166)) (StringLiteralValue!16268 (value!168430 List!36166)) (ErrorTokenValue!5422 (msg!5483 List!36166)) )
))
(declare-datatypes ((List!36167 0))(
  ( (Nil!36043) (Cons!36043 (h!41463 C!20088) (t!236994 List!36167)) )
))
(declare-datatypes ((IArray!21523 0))(
  ( (IArray!21524 (innerList!10819 List!36167)) )
))
(declare-datatypes ((Conc!10759 0))(
  ( (Node!10759 (left!28009 Conc!10759) (right!28339 Conc!10759) (csize!21748 Int) (cheight!10970 Int)) (Leaf!16966 (xs!13877 IArray!21523) (csize!21749 Int)) (Empty!10759) )
))
(declare-datatypes ((BalanceConc!21132 0))(
  ( (BalanceConc!21133 (c!536749 Conc!10759)) )
))
(declare-datatypes ((String!40444 0))(
  ( (String!40445 (value!168431 String)) )
))
(declare-datatypes ((TokenValueInjection!10272 0))(
  ( (TokenValueInjection!10273 (toValue!7264 Int) (toChars!7123 Int)) )
))
(declare-datatypes ((Rule!10184 0))(
  ( (Rule!10185 (regex!5192 Regex!9951) (tag!5712 String!40444) (isSeparator!5192 Bool) (transformation!5192 TokenValueInjection!10272)) )
))
(declare-datatypes ((Token!9750 0))(
  ( (Token!9751 (value!168432 TokenValue!5422) (rule!7626 Rule!10184) (size!27144 Int) (originalCharacters!5906 List!36167)) )
))
(declare-datatypes ((List!36168 0))(
  ( (Nil!36044) (Cons!36044 (h!41464 Token!9750) (t!236995 List!36168)) )
))
(declare-fun tokens!494 () List!36168)

(declare-datatypes ((LexerInterface!4781 0))(
  ( (LexerInterfaceExt!4778 (__x!23062 Int)) (Lexer!4779) )
))
(declare-fun thiss!18206 () LexerInterface!4781)

(declare-datatypes ((List!36169 0))(
  ( (Nil!36045) (Cons!36045 (h!41465 Rule!10184) (t!236996 List!36169)) )
))
(declare-fun rules!2135 () List!36169)

(declare-datatypes ((IArray!21525 0))(
  ( (IArray!21526 (innerList!10820 List!36168)) )
))
(declare-datatypes ((Conc!10760 0))(
  ( (Node!10760 (left!28010 Conc!10760) (right!28340 Conc!10760) (csize!21750 Int) (cheight!10971 Int)) (Leaf!16967 (xs!13878 IArray!21525) (csize!21751 Int)) (Empty!10760) )
))
(declare-datatypes ((BalanceConc!21134 0))(
  ( (BalanceConc!21135 (c!536750 Conc!10760)) )
))
(declare-fun rulesProduceEachTokenIndividually!1232 (LexerInterface!4781 List!36169 BalanceConc!21134) Bool)

(declare-fun seqFromList!3455 (List!36168) BalanceConc!21134)

(assert (=> b!3197385 (= res!1300891 (rulesProduceEachTokenIndividually!1232 thiss!18206 rules!2135 (seqFromList!3455 tokens!494)))))

(declare-fun e!1993306 () Bool)

(declare-fun e!1993314 () Bool)

(declare-fun b!3197386 () Bool)

(declare-fun tp!1010924 () Bool)

(declare-fun inv!48890 (String!40444) Bool)

(declare-fun inv!48893 (TokenValueInjection!10272) Bool)

(assert (=> b!3197386 (= e!1993314 (and tp!1010924 (inv!48890 (tag!5712 (rule!7626 (h!41464 tokens!494)))) (inv!48893 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) e!1993306))))

(declare-fun e!1993299 () Bool)

(assert (=> b!3197387 (= e!1993299 (and tp!1010917 tp!1010923))))

(declare-fun b!3197388 () Bool)

(declare-fun e!1993319 () Bool)

(declare-fun e!1993308 () Bool)

(assert (=> b!3197388 (= e!1993319 e!1993308)))

(declare-fun res!1300903 () Bool)

(assert (=> b!3197388 (=> res!1300903 e!1993308)))

(declare-fun lt!1077699 () BalanceConc!21132)

(declare-fun isEmpty!20130 (BalanceConc!21134) Bool)

(declare-datatypes ((tuple2!35410 0))(
  ( (tuple2!35411 (_1!20839 BalanceConc!21134) (_2!20839 BalanceConc!21132)) )
))
(declare-fun lex!2111 (LexerInterface!4781 List!36169 BalanceConc!21132) tuple2!35410)

(assert (=> b!3197388 (= res!1300903 (isEmpty!20130 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699))))))

(declare-fun lt!1077706 () List!36167)

(declare-fun seqFromList!3456 (List!36167) BalanceConc!21132)

(assert (=> b!3197388 (= lt!1077699 (seqFromList!3456 lt!1077706))))

(declare-fun b!3197389 () Bool)

(declare-fun e!1993317 () Bool)

(declare-fun lt!1077697 () Rule!10184)

(assert (=> b!3197389 (= e!1993317 (= (rule!7626 (h!41464 tokens!494)) lt!1077697))))

(declare-fun b!3197390 () Bool)

(declare-fun e!1993318 () Bool)

(assert (=> b!3197390 (= e!1993308 e!1993318)))

(declare-fun res!1300887 () Bool)

(assert (=> b!3197390 (=> res!1300887 e!1993318)))

(assert (=> b!3197390 (= res!1300887 (or (isSeparator!5192 (rule!7626 (h!41464 tokens!494))) (isSeparator!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))))

(declare-datatypes ((Unit!50442 0))(
  ( (Unit!50443) )
))
(declare-fun lt!1077702 () Unit!50442)

(declare-fun lambda!117051 () Int)

(declare-fun forallContained!1163 (List!36168 Int Token!9750) Unit!50442)

(assert (=> b!3197390 (= lt!1077702 (forallContained!1163 tokens!494 lambda!117051 (h!41464 (t!236995 tokens!494))))))

(declare-fun lt!1077690 () Unit!50442)

(assert (=> b!3197390 (= lt!1077690 (forallContained!1163 tokens!494 lambda!117051 (h!41464 tokens!494)))))

(declare-fun b!3197391 () Bool)

(declare-fun res!1300885 () Bool)

(assert (=> b!3197391 (=> (not res!1300885) (not e!1993302))))

(declare-fun rulesInvariant!4178 (LexerInterface!4781 List!36169) Bool)

(assert (=> b!3197391 (= res!1300885 (rulesInvariant!4178 thiss!18206 rules!2135))))

(declare-fun b!3197392 () Bool)

(declare-fun res!1300900 () Bool)

(assert (=> b!3197392 (=> (not res!1300900) (not e!1993302))))

(declare-fun sepAndNonSepRulesDisjointChars!1386 (List!36169 List!36169) Bool)

(assert (=> b!3197392 (= res!1300900 (sepAndNonSepRulesDisjointChars!1386 rules!2135 rules!2135))))

(declare-fun e!1993312 () Bool)

(declare-fun e!1993297 () Bool)

(declare-fun tp!1010927 () Bool)

(declare-fun b!3197393 () Bool)

(declare-fun inv!48894 (Token!9750) Bool)

(assert (=> b!3197393 (= e!1993312 (and (inv!48894 (h!41464 tokens!494)) e!1993297 tp!1010927))))

(declare-fun e!1993311 () Bool)

(declare-fun e!1993307 () Bool)

(declare-fun separatorToken!241 () Token!9750)

(declare-fun b!3197394 () Bool)

(declare-fun tp!1010922 () Bool)

(assert (=> b!3197394 (= e!1993311 (and tp!1010922 (inv!48890 (tag!5712 (rule!7626 separatorToken!241))) (inv!48893 (transformation!5192 (rule!7626 separatorToken!241))) e!1993307))))

(declare-fun b!3197395 () Bool)

(declare-fun res!1300888 () Bool)

(assert (=> b!3197395 (=> res!1300888 e!1993319)))

(declare-fun rulesProduceIndividualToken!2273 (LexerInterface!4781 List!36169 Token!9750) Bool)

(assert (=> b!3197395 (= res!1300888 (not (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 (h!41464 tokens!494))))))

(declare-fun b!3197396 () Bool)

(declare-fun e!1993296 () Bool)

(assert (=> b!3197396 (= e!1993302 (not e!1993296))))

(declare-fun res!1300890 () Bool)

(assert (=> b!3197396 (=> res!1300890 e!1993296)))

(declare-fun lt!1077687 () List!36167)

(declare-fun lt!1077695 () List!36167)

(assert (=> b!3197396 (= res!1300890 (not (= lt!1077687 lt!1077695)))))

(declare-fun printList!1331 (LexerInterface!4781 List!36168) List!36167)

(assert (=> b!3197396 (= lt!1077695 (printList!1331 thiss!18206 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))

(declare-fun lt!1077700 () BalanceConc!21132)

(declare-fun list!12809 (BalanceConc!21132) List!36167)

(assert (=> b!3197396 (= lt!1077687 (list!12809 lt!1077700))))

(declare-fun lt!1077704 () BalanceConc!21134)

(declare-fun printTailRec!1278 (LexerInterface!4781 BalanceConc!21134 Int BalanceConc!21132) BalanceConc!21132)

(assert (=> b!3197396 (= lt!1077700 (printTailRec!1278 thiss!18206 lt!1077704 0 (BalanceConc!21133 Empty!10759)))))

(declare-fun print!1846 (LexerInterface!4781 BalanceConc!21134) BalanceConc!21132)

(assert (=> b!3197396 (= lt!1077700 (print!1846 thiss!18206 lt!1077704))))

(declare-fun singletonSeq!2288 (Token!9750) BalanceConc!21134)

(assert (=> b!3197396 (= lt!1077704 (singletonSeq!2288 (h!41464 tokens!494)))))

(declare-fun b!3197397 () Bool)

(declare-fun res!1300884 () Bool)

(assert (=> b!3197397 (=> (not res!1300884) (not e!1993302))))

(declare-fun isEmpty!20131 (List!36169) Bool)

(assert (=> b!3197397 (= res!1300884 (not (isEmpty!20131 rules!2135)))))

(declare-fun tp!1010925 () Bool)

(declare-fun b!3197399 () Bool)

(declare-fun inv!21 (TokenValue!5422) Bool)

(assert (=> b!3197399 (= e!1993297 (and (inv!21 (value!168432 (h!41464 tokens!494))) e!1993314 tp!1010925))))

(declare-fun b!3197400 () Bool)

(declare-fun e!1993321 () Bool)

(declare-fun e!1993320 () Bool)

(assert (=> b!3197400 (= e!1993321 e!1993320)))

(declare-fun res!1300893 () Bool)

(assert (=> b!3197400 (=> res!1300893 e!1993320)))

(declare-fun lt!1077694 () List!36167)

(declare-fun lt!1077698 () List!36167)

(assert (=> b!3197400 (= res!1300893 (not (= lt!1077694 lt!1077698)))))

(declare-fun lt!1077696 () List!36167)

(declare-fun lt!1077693 () List!36167)

(declare-fun ++!8630 (List!36167 List!36167) List!36167)

(assert (=> b!3197400 (= lt!1077698 (++!8630 (++!8630 lt!1077706 lt!1077696) lt!1077693))))

(declare-fun b!3197401 () Bool)

(declare-fun e!1993304 () Bool)

(assert (=> b!3197401 (= e!1993304 (not (= lt!1077696 Nil!36043)))))

(declare-fun b!3197402 () Bool)

(assert (=> b!3197402 (= e!1993318 e!1993321)))

(declare-fun res!1300904 () Bool)

(assert (=> b!3197402 (=> res!1300904 e!1993321)))

(declare-fun charsOf!3208 (Token!9750) BalanceConc!21132)

(declare-fun printWithSeparatorTokenList!126 (LexerInterface!4781 List!36168 Token!9750) List!36167)

(assert (=> b!3197402 (= res!1300904 (not (= lt!1077693 (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1077685 () List!36167)

(assert (=> b!3197402 (= lt!1077685 (++!8630 lt!1077696 lt!1077693))))

(assert (=> b!3197402 (= lt!1077696 (list!12809 (charsOf!3208 separatorToken!241)))))

(assert (=> b!3197402 (= lt!1077693 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241))))

(assert (=> b!3197402 (= lt!1077694 (printWithSeparatorTokenList!126 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3197403 () Bool)

(declare-fun e!1993303 () Bool)

(assert (=> b!3197403 (= e!1993303 e!1993317)))

(declare-fun res!1300894 () Bool)

(assert (=> b!3197403 (=> (not res!1300894) (not e!1993317))))

(declare-fun matchR!4585 (Regex!9951 List!36167) Bool)

(assert (=> b!3197403 (= res!1300894 (matchR!4585 (regex!5192 lt!1077697) lt!1077706))))

(declare-datatypes ((Option!7077 0))(
  ( (None!7076) (Some!7076 (v!35596 Rule!10184)) )
))
(declare-fun lt!1077689 () Option!7077)

(declare-fun get!11463 (Option!7077) Rule!10184)

(assert (=> b!3197403 (= lt!1077697 (get!11463 lt!1077689))))

(declare-fun b!3197404 () Bool)

(declare-fun res!1300898 () Bool)

(assert (=> b!3197404 (=> (not res!1300898) (not e!1993302))))

(get-info :version)

(assert (=> b!3197404 (= res!1300898 (and (not ((_ is Nil!36044) tokens!494)) (not ((_ is Nil!36044) (t!236995 tokens!494)))))))

(declare-fun b!3197405 () Bool)

(declare-fun res!1300892 () Bool)

(assert (=> b!3197405 (=> (not res!1300892) (not e!1993302))))

(declare-fun forall!7338 (List!36168 Int) Bool)

(assert (=> b!3197405 (= res!1300892 (forall!7338 tokens!494 lambda!117051))))

(declare-fun b!3197406 () Bool)

(declare-fun e!1993310 () Bool)

(declare-fun e!1993301 () Bool)

(assert (=> b!3197406 (= e!1993310 e!1993301)))

(declare-fun res!1300901 () Bool)

(assert (=> b!3197406 (=> (not res!1300901) (not e!1993301))))

(declare-fun lt!1077705 () Rule!10184)

(assert (=> b!3197406 (= res!1300901 (matchR!4585 (regex!5192 lt!1077705) lt!1077696))))

(declare-fun lt!1077692 () Option!7077)

(assert (=> b!3197406 (= lt!1077705 (get!11463 lt!1077692))))

(assert (=> b!3197407 (= e!1993307 (and tp!1010920 tp!1010916))))

(declare-fun b!3197408 () Bool)

(assert (=> b!3197408 (= e!1993296 e!1993319)))

(declare-fun res!1300902 () Bool)

(assert (=> b!3197408 (=> res!1300902 e!1993319)))

(assert (=> b!3197408 (= res!1300902 (or (not (= lt!1077695 lt!1077706)) (not (= lt!1077687 lt!1077706))))))

(assert (=> b!3197408 (= lt!1077706 (list!12809 (charsOf!3208 (h!41464 tokens!494))))))

(declare-fun b!3197409 () Bool)

(declare-fun e!1993295 () Bool)

(assert (=> b!3197409 (= e!1993295 e!1993304)))

(declare-fun res!1300895 () Bool)

(assert (=> b!3197409 (=> res!1300895 e!1993304)))

(declare-fun contains!6403 (List!36167 C!20088) Bool)

(declare-fun usedCharacters!508 (Regex!9951) List!36167)

(declare-fun head!7005 (List!36167) C!20088)

(assert (=> b!3197409 (= res!1300895 (contains!6403 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241))) (head!7005 lt!1077696)))))

(assert (=> b!3197409 e!1993310))

(declare-fun res!1300896 () Bool)

(assert (=> b!3197409 (=> (not res!1300896) (not e!1993310))))

(declare-fun isDefined!5520 (Option!7077) Bool)

(assert (=> b!3197409 (= res!1300896 (isDefined!5520 lt!1077692))))

(declare-fun getRuleFromTag!897 (LexerInterface!4781 List!36169 String!40444) Option!7077)

(assert (=> b!3197409 (= lt!1077692 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))))

(declare-fun lt!1077684 () Unit!50442)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!897 (LexerInterface!4781 List!36169 List!36167 Token!9750) Unit!50442)

(assert (=> b!3197409 (= lt!1077684 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!897 thiss!18206 rules!2135 lt!1077696 separatorToken!241))))

(declare-datatypes ((tuple2!35412 0))(
  ( (tuple2!35413 (_1!20840 Token!9750) (_2!20840 List!36167)) )
))
(declare-datatypes ((Option!7078 0))(
  ( (None!7077) (Some!7077 (v!35597 tuple2!35412)) )
))
(declare-fun maxPrefixOneRule!1560 (LexerInterface!4781 Rule!10184 List!36167) Option!7078)

(declare-fun apply!8122 (TokenValueInjection!10272 BalanceConc!21132) TokenValue!5422)

(declare-fun size!27145 (List!36167) Int)

(assert (=> b!3197409 (= (maxPrefixOneRule!1560 thiss!18206 (rule!7626 (h!41464 tokens!494)) lt!1077706) (Some!7077 (tuple2!35413 (Token!9751 (apply!8122 (transformation!5192 (rule!7626 (h!41464 tokens!494))) lt!1077699) (rule!7626 (h!41464 tokens!494)) (size!27145 lt!1077706) lt!1077706) Nil!36043)))))

(declare-fun lt!1077701 () Unit!50442)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!673 (LexerInterface!4781 List!36169 List!36167 List!36167 List!36167 Rule!10184) Unit!50442)

(assert (=> b!3197409 (= lt!1077701 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!673 thiss!18206 rules!2135 lt!1077706 lt!1077706 Nil!36043 (rule!7626 (h!41464 tokens!494))))))

(assert (=> b!3197409 e!1993303))

(declare-fun res!1300899 () Bool)

(assert (=> b!3197409 (=> (not res!1300899) (not e!1993303))))

(assert (=> b!3197409 (= res!1300899 (isDefined!5520 lt!1077689))))

(assert (=> b!3197409 (= lt!1077689 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun lt!1077691 () Unit!50442)

(assert (=> b!3197409 (= lt!1077691 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!897 thiss!18206 rules!2135 lt!1077706 (h!41464 tokens!494)))))

(declare-fun lt!1077686 () Unit!50442)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!820 (LexerInterface!4781 List!36169 List!36168 Token!9750) Unit!50442)

(assert (=> b!3197409 (= lt!1077686 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!820 thiss!18206 rules!2135 tokens!494 (h!41464 tokens!494)))))

(declare-fun b!3197410 () Bool)

(assert (=> b!3197410 (= e!1993301 (= (rule!7626 separatorToken!241) lt!1077705))))

(assert (=> b!3197411 (= e!1993306 (and tp!1010928 tp!1010918))))

(declare-fun b!3197412 () Bool)

(declare-fun res!1300897 () Bool)

(assert (=> b!3197412 (=> (not res!1300897) (not e!1993302))))

(assert (=> b!3197412 (= res!1300897 (isSeparator!5192 (rule!7626 separatorToken!241)))))

(declare-fun tp!1010919 () Bool)

(declare-fun e!1993316 () Bool)

(declare-fun b!3197413 () Bool)

(assert (=> b!3197413 (= e!1993316 (and tp!1010919 (inv!48890 (tag!5712 (h!41465 rules!2135))) (inv!48893 (transformation!5192 (h!41465 rules!2135))) e!1993299))))

(declare-fun b!3197414 () Bool)

(declare-fun res!1300905 () Bool)

(assert (=> b!3197414 (=> (not res!1300905) (not e!1993302))))

(assert (=> b!3197414 (= res!1300905 (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun res!1300886 () Bool)

(assert (=> start!300042 (=> (not res!1300886) (not e!1993302))))

(assert (=> start!300042 (= res!1300886 ((_ is Lexer!4779) thiss!18206))))

(assert (=> start!300042 e!1993302))

(assert (=> start!300042 true))

(declare-fun e!1993309 () Bool)

(assert (=> start!300042 e!1993309))

(assert (=> start!300042 e!1993312))

(declare-fun e!1993313 () Bool)

(assert (=> start!300042 (and (inv!48894 separatorToken!241) e!1993313)))

(declare-fun b!3197398 () Bool)

(declare-fun tp!1010926 () Bool)

(assert (=> b!3197398 (= e!1993313 (and (inv!21 (value!168432 separatorToken!241)) e!1993311 tp!1010926))))

(declare-fun b!3197415 () Bool)

(assert (=> b!3197415 (= e!1993320 e!1993295)))

(declare-fun res!1300889 () Bool)

(assert (=> b!3197415 (=> res!1300889 e!1993295)))

(declare-fun lt!1077703 () List!36167)

(assert (=> b!3197415 (= res!1300889 (not (= lt!1077694 lt!1077703)))))

(assert (=> b!3197415 (= lt!1077698 lt!1077703)))

(assert (=> b!3197415 (= lt!1077703 (++!8630 lt!1077706 lt!1077685))))

(declare-fun lt!1077688 () Unit!50442)

(declare-fun lemmaConcatAssociativity!1708 (List!36167 List!36167 List!36167) Unit!50442)

(assert (=> b!3197415 (= lt!1077688 (lemmaConcatAssociativity!1708 lt!1077706 lt!1077696 lt!1077693))))

(declare-fun b!3197416 () Bool)

(declare-fun tp!1010921 () Bool)

(assert (=> b!3197416 (= e!1993309 (and e!1993316 tp!1010921))))

(assert (= (and start!300042 res!1300886) b!3197397))

(assert (= (and b!3197397 res!1300884) b!3197391))

(assert (= (and b!3197391 res!1300885) b!3197385))

(assert (= (and b!3197385 res!1300891) b!3197414))

(assert (= (and b!3197414 res!1300905) b!3197412))

(assert (= (and b!3197412 res!1300897) b!3197405))

(assert (= (and b!3197405 res!1300892) b!3197392))

(assert (= (and b!3197392 res!1300900) b!3197404))

(assert (= (and b!3197404 res!1300898) b!3197396))

(assert (= (and b!3197396 (not res!1300890)) b!3197408))

(assert (= (and b!3197408 (not res!1300902)) b!3197395))

(assert (= (and b!3197395 (not res!1300888)) b!3197388))

(assert (= (and b!3197388 (not res!1300903)) b!3197390))

(assert (= (and b!3197390 (not res!1300887)) b!3197402))

(assert (= (and b!3197402 (not res!1300904)) b!3197400))

(assert (= (and b!3197400 (not res!1300893)) b!3197415))

(assert (= (and b!3197415 (not res!1300889)) b!3197409))

(assert (= (and b!3197409 res!1300899) b!3197403))

(assert (= (and b!3197403 res!1300894) b!3197389))

(assert (= (and b!3197409 res!1300896) b!3197406))

(assert (= (and b!3197406 res!1300901) b!3197410))

(assert (= (and b!3197409 (not res!1300895)) b!3197401))

(assert (= b!3197413 b!3197387))

(assert (= b!3197416 b!3197413))

(assert (= (and start!300042 ((_ is Cons!36045) rules!2135)) b!3197416))

(assert (= b!3197386 b!3197411))

(assert (= b!3197399 b!3197386))

(assert (= b!3197393 b!3197399))

(assert (= (and start!300042 ((_ is Cons!36044) tokens!494)) b!3197393))

(assert (= b!3197394 b!3197407))

(assert (= b!3197398 b!3197394))

(assert (= start!300042 b!3197398))

(declare-fun m!3458263 () Bool)

(assert (=> start!300042 m!3458263))

(declare-fun m!3458265 () Bool)

(assert (=> b!3197390 m!3458265))

(declare-fun m!3458267 () Bool)

(assert (=> b!3197390 m!3458267))

(declare-fun m!3458269 () Bool)

(assert (=> b!3197394 m!3458269))

(declare-fun m!3458271 () Bool)

(assert (=> b!3197394 m!3458271))

(declare-fun m!3458273 () Bool)

(assert (=> b!3197391 m!3458273))

(declare-fun m!3458275 () Bool)

(assert (=> b!3197400 m!3458275))

(assert (=> b!3197400 m!3458275))

(declare-fun m!3458277 () Bool)

(assert (=> b!3197400 m!3458277))

(declare-fun m!3458279 () Bool)

(assert (=> b!3197392 m!3458279))

(declare-fun m!3458281 () Bool)

(assert (=> b!3197386 m!3458281))

(declare-fun m!3458283 () Bool)

(assert (=> b!3197386 m!3458283))

(declare-fun m!3458285 () Bool)

(assert (=> b!3197405 m!3458285))

(declare-fun m!3458287 () Bool)

(assert (=> b!3197403 m!3458287))

(declare-fun m!3458289 () Bool)

(assert (=> b!3197403 m!3458289))

(declare-fun m!3458291 () Bool)

(assert (=> b!3197397 m!3458291))

(declare-fun m!3458293 () Bool)

(assert (=> b!3197408 m!3458293))

(assert (=> b!3197408 m!3458293))

(declare-fun m!3458295 () Bool)

(assert (=> b!3197408 m!3458295))

(declare-fun m!3458297 () Bool)

(assert (=> b!3197413 m!3458297))

(declare-fun m!3458299 () Bool)

(assert (=> b!3197413 m!3458299))

(declare-fun m!3458301 () Bool)

(assert (=> b!3197393 m!3458301))

(declare-fun m!3458303 () Bool)

(assert (=> b!3197388 m!3458303))

(declare-fun m!3458305 () Bool)

(assert (=> b!3197388 m!3458305))

(declare-fun m!3458307 () Bool)

(assert (=> b!3197388 m!3458307))

(declare-fun m!3458309 () Bool)

(assert (=> b!3197395 m!3458309))

(declare-fun m!3458311 () Bool)

(assert (=> b!3197398 m!3458311))

(declare-fun m!3458313 () Bool)

(assert (=> b!3197409 m!3458313))

(declare-fun m!3458315 () Bool)

(assert (=> b!3197409 m!3458315))

(declare-fun m!3458317 () Bool)

(assert (=> b!3197409 m!3458317))

(declare-fun m!3458319 () Bool)

(assert (=> b!3197409 m!3458319))

(assert (=> b!3197409 m!3458317))

(declare-fun m!3458321 () Bool)

(assert (=> b!3197409 m!3458321))

(declare-fun m!3458323 () Bool)

(assert (=> b!3197409 m!3458323))

(declare-fun m!3458325 () Bool)

(assert (=> b!3197409 m!3458325))

(declare-fun m!3458327 () Bool)

(assert (=> b!3197409 m!3458327))

(declare-fun m!3458329 () Bool)

(assert (=> b!3197409 m!3458329))

(assert (=> b!3197409 m!3458321))

(declare-fun m!3458331 () Bool)

(assert (=> b!3197409 m!3458331))

(declare-fun m!3458333 () Bool)

(assert (=> b!3197409 m!3458333))

(declare-fun m!3458335 () Bool)

(assert (=> b!3197409 m!3458335))

(declare-fun m!3458337 () Bool)

(assert (=> b!3197409 m!3458337))

(declare-fun m!3458339 () Bool)

(assert (=> b!3197409 m!3458339))

(declare-fun m!3458341 () Bool)

(assert (=> b!3197396 m!3458341))

(declare-fun m!3458343 () Bool)

(assert (=> b!3197396 m!3458343))

(declare-fun m!3458345 () Bool)

(assert (=> b!3197396 m!3458345))

(declare-fun m!3458347 () Bool)

(assert (=> b!3197396 m!3458347))

(declare-fun m!3458349 () Bool)

(assert (=> b!3197396 m!3458349))

(declare-fun m!3458351 () Bool)

(assert (=> b!3197415 m!3458351))

(declare-fun m!3458353 () Bool)

(assert (=> b!3197415 m!3458353))

(declare-fun m!3458355 () Bool)

(assert (=> b!3197399 m!3458355))

(declare-fun m!3458357 () Bool)

(assert (=> b!3197402 m!3458357))

(declare-fun m!3458359 () Bool)

(assert (=> b!3197402 m!3458359))

(declare-fun m!3458361 () Bool)

(assert (=> b!3197402 m!3458361))

(declare-fun m!3458363 () Bool)

(assert (=> b!3197402 m!3458363))

(declare-fun m!3458365 () Bool)

(assert (=> b!3197402 m!3458365))

(declare-fun m!3458367 () Bool)

(assert (=> b!3197402 m!3458367))

(assert (=> b!3197402 m!3458361))

(assert (=> b!3197402 m!3458357))

(declare-fun m!3458369 () Bool)

(assert (=> b!3197402 m!3458369))

(assert (=> b!3197402 m!3458363))

(declare-fun m!3458371 () Bool)

(assert (=> b!3197402 m!3458371))

(assert (=> b!3197402 m!3458359))

(assert (=> b!3197402 m!3458369))

(declare-fun m!3458373 () Bool)

(assert (=> b!3197402 m!3458373))

(declare-fun m!3458375 () Bool)

(assert (=> b!3197402 m!3458375))

(declare-fun m!3458377 () Bool)

(assert (=> b!3197406 m!3458377))

(declare-fun m!3458379 () Bool)

(assert (=> b!3197406 m!3458379))

(declare-fun m!3458381 () Bool)

(assert (=> b!3197385 m!3458381))

(assert (=> b!3197385 m!3458381))

(declare-fun m!3458383 () Bool)

(assert (=> b!3197385 m!3458383))

(declare-fun m!3458385 () Bool)

(assert (=> b!3197414 m!3458385))

(check-sat (not b!3197398) b_and!212343 (not b_next!85629) (not b!3197386) (not b!3197408) (not b!3197393) (not b!3197402) (not b!3197388) (not b!3197385) b_and!212341 (not b!3197415) (not b!3197399) (not start!300042) (not b!3197390) (not b!3197414) (not b!3197391) (not b!3197405) (not b_next!85625) (not b!3197409) b_and!212335 (not b!3197403) b_and!212345 (not b!3197416) (not b!3197392) (not b_next!85627) (not b_next!85631) (not b!3197396) (not b!3197395) (not b!3197413) (not b_next!85635) b_and!212339 b_and!212337 (not b!3197394) (not b!3197406) (not b_next!85633) (not b!3197400) (not b!3197397))
(check-sat b_and!212343 b_and!212345 (not b_next!85629) b_and!212337 (not b_next!85633) b_and!212341 (not b_next!85625) b_and!212335 (not b_next!85627) (not b_next!85631) (not b_next!85635) b_and!212339)
(get-model)

(declare-fun d!874589 () Bool)

(declare-fun e!1993327 () Bool)

(assert (=> d!874589 e!1993327))

(declare-fun res!1300918 () Bool)

(assert (=> d!874589 (=> (not res!1300918) (not e!1993327))))

(declare-fun lt!1077709 () List!36167)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4869 (List!36167) (InoxSet C!20088))

(assert (=> d!874589 (= res!1300918 (= (content!4869 lt!1077709) ((_ map or) (content!4869 lt!1077706) (content!4869 lt!1077685))))))

(declare-fun e!1993328 () List!36167)

(assert (=> d!874589 (= lt!1077709 e!1993328)))

(declare-fun c!536753 () Bool)

(assert (=> d!874589 (= c!536753 ((_ is Nil!36043) lt!1077706))))

(assert (=> d!874589 (= (++!8630 lt!1077706 lt!1077685) lt!1077709)))

(declare-fun b!3197427 () Bool)

(declare-fun res!1300919 () Bool)

(assert (=> b!3197427 (=> (not res!1300919) (not e!1993327))))

(assert (=> b!3197427 (= res!1300919 (= (size!27145 lt!1077709) (+ (size!27145 lt!1077706) (size!27145 lt!1077685))))))

(declare-fun b!3197426 () Bool)

(assert (=> b!3197426 (= e!1993328 (Cons!36043 (h!41463 lt!1077706) (++!8630 (t!236994 lt!1077706) lt!1077685)))))

(declare-fun b!3197428 () Bool)

(assert (=> b!3197428 (= e!1993327 (or (not (= lt!1077685 Nil!36043)) (= lt!1077709 lt!1077706)))))

(declare-fun b!3197425 () Bool)

(assert (=> b!3197425 (= e!1993328 lt!1077685)))

(assert (= (and d!874589 c!536753) b!3197425))

(assert (= (and d!874589 (not c!536753)) b!3197426))

(assert (= (and d!874589 res!1300918) b!3197427))

(assert (= (and b!3197427 res!1300919) b!3197428))

(declare-fun m!3458387 () Bool)

(assert (=> d!874589 m!3458387))

(declare-fun m!3458389 () Bool)

(assert (=> d!874589 m!3458389))

(declare-fun m!3458391 () Bool)

(assert (=> d!874589 m!3458391))

(declare-fun m!3458393 () Bool)

(assert (=> b!3197427 m!3458393))

(assert (=> b!3197427 m!3458337))

(declare-fun m!3458395 () Bool)

(assert (=> b!3197427 m!3458395))

(declare-fun m!3458397 () Bool)

(assert (=> b!3197426 m!3458397))

(assert (=> b!3197415 d!874589))

(declare-fun d!874591 () Bool)

(assert (=> d!874591 (= (++!8630 (++!8630 lt!1077706 lt!1077696) lt!1077693) (++!8630 lt!1077706 (++!8630 lt!1077696 lt!1077693)))))

(declare-fun lt!1077712 () Unit!50442)

(declare-fun choose!18659 (List!36167 List!36167 List!36167) Unit!50442)

(assert (=> d!874591 (= lt!1077712 (choose!18659 lt!1077706 lt!1077696 lt!1077693))))

(assert (=> d!874591 (= (lemmaConcatAssociativity!1708 lt!1077706 lt!1077696 lt!1077693) lt!1077712)))

(declare-fun bs!540680 () Bool)

(assert (= bs!540680 d!874591))

(assert (=> bs!540680 m!3458375))

(declare-fun m!3458399 () Bool)

(assert (=> bs!540680 m!3458399))

(assert (=> bs!540680 m!3458275))

(assert (=> bs!540680 m!3458275))

(assert (=> bs!540680 m!3458277))

(assert (=> bs!540680 m!3458375))

(declare-fun m!3458401 () Bool)

(assert (=> bs!540680 m!3458401))

(assert (=> b!3197415 d!874591))

(declare-fun d!874593 () Bool)

(assert (=> d!874593 (= (inv!48890 (tag!5712 (rule!7626 separatorToken!241))) (= (mod (str.len (value!168431 (tag!5712 (rule!7626 separatorToken!241)))) 2) 0))))

(assert (=> b!3197394 d!874593))

(declare-fun d!874595 () Bool)

(declare-fun res!1300922 () Bool)

(declare-fun e!1993331 () Bool)

(assert (=> d!874595 (=> (not res!1300922) (not e!1993331))))

(declare-fun semiInverseModEq!2148 (Int Int) Bool)

(assert (=> d!874595 (= res!1300922 (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241)))))))

(assert (=> d!874595 (= (inv!48893 (transformation!5192 (rule!7626 separatorToken!241))) e!1993331)))

(declare-fun b!3197431 () Bool)

(declare-fun equivClasses!2047 (Int Int) Bool)

(assert (=> b!3197431 (= e!1993331 (equivClasses!2047 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241)))))))

(assert (= (and d!874595 res!1300922) b!3197431))

(declare-fun m!3458403 () Bool)

(assert (=> d!874595 m!3458403))

(declare-fun m!3458405 () Bool)

(assert (=> b!3197431 m!3458405))

(assert (=> b!3197394 d!874595))

(declare-fun d!874597 () Bool)

(declare-fun lt!1077727 () Bool)

(declare-fun e!1993351 () Bool)

(assert (=> d!874597 (= lt!1077727 e!1993351)))

(declare-fun res!1300951 () Bool)

(assert (=> d!874597 (=> (not res!1300951) (not e!1993351))))

(declare-fun list!12810 (BalanceConc!21134) List!36168)

(assert (=> d!874597 (= res!1300951 (= (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241))))) (list!12810 (singletonSeq!2288 separatorToken!241))))))

(declare-fun e!1993352 () Bool)

(assert (=> d!874597 (= lt!1077727 e!1993352)))

(declare-fun res!1300949 () Bool)

(assert (=> d!874597 (=> (not res!1300949) (not e!1993352))))

(declare-fun lt!1077726 () tuple2!35410)

(declare-fun size!27146 (BalanceConc!21134) Int)

(assert (=> d!874597 (= res!1300949 (= (size!27146 (_1!20839 lt!1077726)) 1))))

(assert (=> d!874597 (= lt!1077726 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241))))))

(assert (=> d!874597 (not (isEmpty!20131 rules!2135))))

(assert (=> d!874597 (= (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 separatorToken!241) lt!1077727)))

(declare-fun b!3197464 () Bool)

(declare-fun res!1300950 () Bool)

(assert (=> b!3197464 (=> (not res!1300950) (not e!1993352))))

(declare-fun apply!8123 (BalanceConc!21134 Int) Token!9750)

(assert (=> b!3197464 (= res!1300950 (= (apply!8123 (_1!20839 lt!1077726) 0) separatorToken!241))))

(declare-fun b!3197465 () Bool)

(declare-fun isEmpty!20132 (BalanceConc!21132) Bool)

(assert (=> b!3197465 (= e!1993352 (isEmpty!20132 (_2!20839 lt!1077726)))))

(declare-fun b!3197466 () Bool)

(assert (=> b!3197466 (= e!1993351 (isEmpty!20132 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241))))))))

(assert (= (and d!874597 res!1300949) b!3197464))

(assert (= (and b!3197464 res!1300950) b!3197465))

(assert (= (and d!874597 res!1300951) b!3197466))

(declare-fun m!3458445 () Bool)

(assert (=> d!874597 m!3458445))

(declare-fun m!3458447 () Bool)

(assert (=> d!874597 m!3458447))

(assert (=> d!874597 m!3458291))

(declare-fun m!3458449 () Bool)

(assert (=> d!874597 m!3458449))

(declare-fun m!3458451 () Bool)

(assert (=> d!874597 m!3458451))

(declare-fun m!3458453 () Bool)

(assert (=> d!874597 m!3458453))

(assert (=> d!874597 m!3458445))

(assert (=> d!874597 m!3458453))

(assert (=> d!874597 m!3458453))

(declare-fun m!3458455 () Bool)

(assert (=> d!874597 m!3458455))

(declare-fun m!3458457 () Bool)

(assert (=> b!3197464 m!3458457))

(declare-fun m!3458459 () Bool)

(assert (=> b!3197465 m!3458459))

(assert (=> b!3197466 m!3458453))

(assert (=> b!3197466 m!3458453))

(assert (=> b!3197466 m!3458445))

(assert (=> b!3197466 m!3458445))

(assert (=> b!3197466 m!3458447))

(declare-fun m!3458461 () Bool)

(assert (=> b!3197466 m!3458461))

(assert (=> b!3197414 d!874597))

(declare-fun d!874615 () Bool)

(declare-fun res!1300956 () Bool)

(declare-fun e!1993355 () Bool)

(assert (=> d!874615 (=> (not res!1300956) (not e!1993355))))

(declare-fun isEmpty!20133 (List!36167) Bool)

(assert (=> d!874615 (= res!1300956 (not (isEmpty!20133 (originalCharacters!5906 (h!41464 tokens!494)))))))

(assert (=> d!874615 (= (inv!48894 (h!41464 tokens!494)) e!1993355)))

(declare-fun b!3197471 () Bool)

(declare-fun res!1300957 () Bool)

(assert (=> b!3197471 (=> (not res!1300957) (not e!1993355))))

(declare-fun dynLambda!14514 (Int TokenValue!5422) BalanceConc!21132)

(assert (=> b!3197471 (= res!1300957 (= (originalCharacters!5906 (h!41464 tokens!494)) (list!12809 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))))))

(declare-fun b!3197472 () Bool)

(assert (=> b!3197472 (= e!1993355 (= (size!27144 (h!41464 tokens!494)) (size!27145 (originalCharacters!5906 (h!41464 tokens!494)))))))

(assert (= (and d!874615 res!1300956) b!3197471))

(assert (= (and b!3197471 res!1300957) b!3197472))

(declare-fun b_lambda!87317 () Bool)

(assert (=> (not b_lambda!87317) (not b!3197471)))

(declare-fun tb!156457 () Bool)

(declare-fun t!237005 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237005) tb!156457))

(declare-fun b!3197477 () Bool)

(declare-fun e!1993358 () Bool)

(declare-fun tp!1010934 () Bool)

(declare-fun inv!48895 (Conc!10759) Bool)

(assert (=> b!3197477 (= e!1993358 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))) tp!1010934))))

(declare-fun result!198716 () Bool)

(declare-fun inv!48896 (BalanceConc!21132) Bool)

(assert (=> tb!156457 (= result!198716 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))) e!1993358))))

(assert (= tb!156457 b!3197477))

(declare-fun m!3458463 () Bool)

(assert (=> b!3197477 m!3458463))

(declare-fun m!3458465 () Bool)

(assert (=> tb!156457 m!3458465))

(assert (=> b!3197471 t!237005))

(declare-fun b_and!212353 () Bool)

(assert (= b_and!212337 (and (=> t!237005 result!198716) b_and!212353)))

(declare-fun t!237007 () Bool)

(declare-fun tb!156459 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237007) tb!156459))

(declare-fun result!198720 () Bool)

(assert (= result!198720 result!198716))

(assert (=> b!3197471 t!237007))

(declare-fun b_and!212355 () Bool)

(assert (= b_and!212341 (and (=> t!237007 result!198720) b_and!212355)))

(declare-fun t!237009 () Bool)

(declare-fun tb!156461 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237009) tb!156461))

(declare-fun result!198722 () Bool)

(assert (= result!198722 result!198716))

(assert (=> b!3197471 t!237009))

(declare-fun b_and!212357 () Bool)

(assert (= b_and!212345 (and (=> t!237009 result!198722) b_and!212357)))

(declare-fun m!3458467 () Bool)

(assert (=> d!874615 m!3458467))

(declare-fun m!3458469 () Bool)

(assert (=> b!3197471 m!3458469))

(assert (=> b!3197471 m!3458469))

(declare-fun m!3458471 () Bool)

(assert (=> b!3197471 m!3458471))

(declare-fun m!3458473 () Bool)

(assert (=> b!3197472 m!3458473))

(assert (=> b!3197393 d!874615))

(declare-fun d!874617 () Bool)

(declare-fun res!1300960 () Bool)

(declare-fun e!1993361 () Bool)

(assert (=> d!874617 (=> (not res!1300960) (not e!1993361))))

(declare-fun rulesValid!1908 (LexerInterface!4781 List!36169) Bool)

(assert (=> d!874617 (= res!1300960 (rulesValid!1908 thiss!18206 rules!2135))))

(assert (=> d!874617 (= (rulesInvariant!4178 thiss!18206 rules!2135) e!1993361)))

(declare-fun b!3197480 () Bool)

(declare-datatypes ((List!36170 0))(
  ( (Nil!36046) (Cons!36046 (h!41466 String!40444) (t!237091 List!36170)) )
))
(declare-fun noDuplicateTag!1904 (LexerInterface!4781 List!36169 List!36170) Bool)

(assert (=> b!3197480 (= e!1993361 (noDuplicateTag!1904 thiss!18206 rules!2135 Nil!36046))))

(assert (= (and d!874617 res!1300960) b!3197480))

(declare-fun m!3458475 () Bool)

(assert (=> d!874617 m!3458475))

(declare-fun m!3458477 () Bool)

(assert (=> b!3197480 m!3458477))

(assert (=> b!3197391 d!874617))

(declare-fun d!874619 () Bool)

(assert (=> d!874619 (= (inv!48890 (tag!5712 (h!41465 rules!2135))) (= (mod (str.len (value!168431 (tag!5712 (h!41465 rules!2135)))) 2) 0))))

(assert (=> b!3197413 d!874619))

(declare-fun d!874621 () Bool)

(declare-fun res!1300961 () Bool)

(declare-fun e!1993362 () Bool)

(assert (=> d!874621 (=> (not res!1300961) (not e!1993362))))

(assert (=> d!874621 (= res!1300961 (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (h!41465 rules!2135)))))))

(assert (=> d!874621 (= (inv!48893 (transformation!5192 (h!41465 rules!2135))) e!1993362)))

(declare-fun b!3197481 () Bool)

(assert (=> b!3197481 (= e!1993362 (equivClasses!2047 (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (h!41465 rules!2135)))))))

(assert (= (and d!874621 res!1300961) b!3197481))

(declare-fun m!3458479 () Bool)

(assert (=> d!874621 m!3458479))

(declare-fun m!3458481 () Bool)

(assert (=> b!3197481 m!3458481))

(assert (=> b!3197413 d!874621))

(declare-fun d!874623 () Bool)

(declare-fun res!1300966 () Bool)

(declare-fun e!1993367 () Bool)

(assert (=> d!874623 (=> res!1300966 e!1993367)))

(assert (=> d!874623 (= res!1300966 (not ((_ is Cons!36045) rules!2135)))))

(assert (=> d!874623 (= (sepAndNonSepRulesDisjointChars!1386 rules!2135 rules!2135) e!1993367)))

(declare-fun b!3197486 () Bool)

(declare-fun e!1993368 () Bool)

(assert (=> b!3197486 (= e!1993367 e!1993368)))

(declare-fun res!1300967 () Bool)

(assert (=> b!3197486 (=> (not res!1300967) (not e!1993368))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!584 (Rule!10184 List!36169) Bool)

(assert (=> b!3197486 (= res!1300967 (ruleDisjointCharsFromAllFromOtherType!584 (h!41465 rules!2135) rules!2135))))

(declare-fun b!3197487 () Bool)

(assert (=> b!3197487 (= e!1993368 (sepAndNonSepRulesDisjointChars!1386 rules!2135 (t!236996 rules!2135)))))

(assert (= (and d!874623 (not res!1300966)) b!3197486))

(assert (= (and b!3197486 res!1300967) b!3197487))

(declare-fun m!3458483 () Bool)

(assert (=> b!3197486 m!3458483))

(declare-fun m!3458485 () Bool)

(assert (=> b!3197487 m!3458485))

(assert (=> b!3197392 d!874623))

(declare-fun d!874625 () Bool)

(declare-fun dynLambda!14516 (Int Token!9750) Bool)

(assert (=> d!874625 (dynLambda!14516 lambda!117051 (h!41464 (t!236995 tokens!494)))))

(declare-fun lt!1077730 () Unit!50442)

(declare-fun choose!18661 (List!36168 Int Token!9750) Unit!50442)

(assert (=> d!874625 (= lt!1077730 (choose!18661 tokens!494 lambda!117051 (h!41464 (t!236995 tokens!494))))))

(declare-fun e!1993371 () Bool)

(assert (=> d!874625 e!1993371))

(declare-fun res!1300970 () Bool)

(assert (=> d!874625 (=> (not res!1300970) (not e!1993371))))

(assert (=> d!874625 (= res!1300970 (forall!7338 tokens!494 lambda!117051))))

(assert (=> d!874625 (= (forallContained!1163 tokens!494 lambda!117051 (h!41464 (t!236995 tokens!494))) lt!1077730)))

(declare-fun b!3197490 () Bool)

(declare-fun contains!6404 (List!36168 Token!9750) Bool)

(assert (=> b!3197490 (= e!1993371 (contains!6404 tokens!494 (h!41464 (t!236995 tokens!494))))))

(assert (= (and d!874625 res!1300970) b!3197490))

(declare-fun b_lambda!87319 () Bool)

(assert (=> (not b_lambda!87319) (not d!874625)))

(declare-fun m!3458487 () Bool)

(assert (=> d!874625 m!3458487))

(declare-fun m!3458489 () Bool)

(assert (=> d!874625 m!3458489))

(assert (=> d!874625 m!3458285))

(declare-fun m!3458491 () Bool)

(assert (=> b!3197490 m!3458491))

(assert (=> b!3197390 d!874625))

(declare-fun d!874627 () Bool)

(assert (=> d!874627 (dynLambda!14516 lambda!117051 (h!41464 tokens!494))))

(declare-fun lt!1077731 () Unit!50442)

(assert (=> d!874627 (= lt!1077731 (choose!18661 tokens!494 lambda!117051 (h!41464 tokens!494)))))

(declare-fun e!1993372 () Bool)

(assert (=> d!874627 e!1993372))

(declare-fun res!1300971 () Bool)

(assert (=> d!874627 (=> (not res!1300971) (not e!1993372))))

(assert (=> d!874627 (= res!1300971 (forall!7338 tokens!494 lambda!117051))))

(assert (=> d!874627 (= (forallContained!1163 tokens!494 lambda!117051 (h!41464 tokens!494)) lt!1077731)))

(declare-fun b!3197491 () Bool)

(assert (=> b!3197491 (= e!1993372 (contains!6404 tokens!494 (h!41464 tokens!494)))))

(assert (= (and d!874627 res!1300971) b!3197491))

(declare-fun b_lambda!87321 () Bool)

(assert (=> (not b_lambda!87321) (not d!874627)))

(declare-fun m!3458493 () Bool)

(assert (=> d!874627 m!3458493))

(declare-fun m!3458495 () Bool)

(assert (=> d!874627 m!3458495))

(assert (=> d!874627 m!3458285))

(declare-fun m!3458497 () Bool)

(assert (=> b!3197491 m!3458497))

(assert (=> b!3197390 d!874627))

(declare-fun d!874629 () Bool)

(declare-fun dynLambda!14517 (Int BalanceConc!21132) TokenValue!5422)

(assert (=> d!874629 (= (apply!8122 (transformation!5192 (rule!7626 (h!41464 tokens!494))) lt!1077699) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699))))

(declare-fun b_lambda!87323 () Bool)

(assert (=> (not b_lambda!87323) (not d!874629)))

(declare-fun tb!156463 () Bool)

(declare-fun t!237011 () Bool)

(assert (=> (and b!3197407 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237011) tb!156463))

(declare-fun result!198724 () Bool)

(assert (=> tb!156463 (= result!198724 (inv!21 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699)))))

(declare-fun m!3458499 () Bool)

(assert (=> tb!156463 m!3458499))

(assert (=> d!874629 t!237011))

(declare-fun b_and!212359 () Bool)

(assert (= b_and!212335 (and (=> t!237011 result!198724) b_and!212359)))

(declare-fun t!237013 () Bool)

(declare-fun tb!156465 () Bool)

(assert (=> (and b!3197411 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237013) tb!156465))

(declare-fun result!198728 () Bool)

(assert (= result!198728 result!198724))

(assert (=> d!874629 t!237013))

(declare-fun b_and!212361 () Bool)

(assert (= b_and!212339 (and (=> t!237013 result!198728) b_and!212361)))

(declare-fun t!237015 () Bool)

(declare-fun tb!156467 () Bool)

(assert (=> (and b!3197387 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237015) tb!156467))

(declare-fun result!198730 () Bool)

(assert (= result!198730 result!198724))

(assert (=> d!874629 t!237015))

(declare-fun b_and!212363 () Bool)

(assert (= b_and!212343 (and (=> t!237015 result!198730) b_and!212363)))

(declare-fun m!3458501 () Bool)

(assert (=> d!874629 m!3458501))

(assert (=> b!3197409 d!874629))

(declare-fun b!3197558 () Bool)

(declare-fun e!1993413 () Bool)

(declare-datatypes ((tuple2!35414 0))(
  ( (tuple2!35415 (_1!20841 List!36167) (_2!20841 List!36167)) )
))
(declare-fun findLongestMatchInner!824 (Regex!9951 List!36167 Int List!36167 List!36167 Int) tuple2!35414)

(assert (=> b!3197558 (= e!1993413 (matchR!4585 (regex!5192 (rule!7626 (h!41464 tokens!494))) (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))

(declare-fun b!3197559 () Bool)

(declare-fun e!1993416 () Option!7078)

(declare-fun lt!1077755 () tuple2!35414)

(declare-fun size!27148 (BalanceConc!21132) Int)

(assert (=> b!3197559 (= e!1993416 (Some!7077 (tuple2!35413 (Token!9751 (apply!8122 (transformation!5192 (rule!7626 (h!41464 tokens!494))) (seqFromList!3456 (_1!20841 lt!1077755))) (rule!7626 (h!41464 tokens!494)) (size!27148 (seqFromList!3456 (_1!20841 lt!1077755))) (_1!20841 lt!1077755)) (_2!20841 lt!1077755))))))

(declare-fun lt!1077753 () Unit!50442)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!797 (Regex!9951 List!36167) Unit!50442)

(assert (=> b!3197559 (= lt!1077753 (longestMatchIsAcceptedByMatchOrIsEmpty!797 (regex!5192 (rule!7626 (h!41464 tokens!494))) lt!1077706))))

(declare-fun res!1301014 () Bool)

(assert (=> b!3197559 (= res!1301014 (isEmpty!20133 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))

(assert (=> b!3197559 (=> res!1301014 e!1993413)))

(assert (=> b!3197559 e!1993413))

(declare-fun lt!1077752 () Unit!50442)

(assert (=> b!3197559 (= lt!1077752 lt!1077753)))

(declare-fun lt!1077756 () Unit!50442)

(declare-fun lemmaSemiInverse!1168 (TokenValueInjection!10272 BalanceConc!21132) Unit!50442)

(assert (=> b!3197559 (= lt!1077756 (lemmaSemiInverse!1168 (transformation!5192 (rule!7626 (h!41464 tokens!494))) (seqFromList!3456 (_1!20841 lt!1077755))))))

(declare-fun d!874631 () Bool)

(declare-fun e!1993415 () Bool)

(assert (=> d!874631 e!1993415))

(declare-fun res!1301012 () Bool)

(assert (=> d!874631 (=> res!1301012 e!1993415)))

(declare-fun lt!1077754 () Option!7078)

(declare-fun isEmpty!20137 (Option!7078) Bool)

(assert (=> d!874631 (= res!1301012 (isEmpty!20137 lt!1077754))))

(assert (=> d!874631 (= lt!1077754 e!1993416)))

(declare-fun c!536770 () Bool)

(assert (=> d!874631 (= c!536770 (isEmpty!20133 (_1!20841 lt!1077755)))))

(declare-fun findLongestMatch!739 (Regex!9951 List!36167) tuple2!35414)

(assert (=> d!874631 (= lt!1077755 (findLongestMatch!739 (regex!5192 (rule!7626 (h!41464 tokens!494))) lt!1077706))))

(declare-fun ruleValid!1637 (LexerInterface!4781 Rule!10184) Bool)

(assert (=> d!874631 (ruleValid!1637 thiss!18206 (rule!7626 (h!41464 tokens!494)))))

(assert (=> d!874631 (= (maxPrefixOneRule!1560 thiss!18206 (rule!7626 (h!41464 tokens!494)) lt!1077706) lt!1077754)))

(declare-fun b!3197560 () Bool)

(declare-fun res!1301010 () Bool)

(declare-fun e!1993414 () Bool)

(assert (=> b!3197560 (=> (not res!1301010) (not e!1993414))))

(declare-fun get!11464 (Option!7078) tuple2!35412)

(assert (=> b!3197560 (= res!1301010 (= (rule!7626 (_1!20840 (get!11464 lt!1077754))) (rule!7626 (h!41464 tokens!494))))))

(declare-fun b!3197561 () Bool)

(declare-fun res!1301009 () Bool)

(assert (=> b!3197561 (=> (not res!1301009) (not e!1993414))))

(assert (=> b!3197561 (= res!1301009 (< (size!27145 (_2!20840 (get!11464 lt!1077754))) (size!27145 lt!1077706)))))

(declare-fun b!3197562 () Bool)

(assert (=> b!3197562 (= e!1993415 e!1993414)))

(declare-fun res!1301011 () Bool)

(assert (=> b!3197562 (=> (not res!1301011) (not e!1993414))))

(assert (=> b!3197562 (= res!1301011 (matchR!4585 (regex!5192 (rule!7626 (h!41464 tokens!494))) (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))))))

(declare-fun b!3197563 () Bool)

(declare-fun res!1301013 () Bool)

(assert (=> b!3197563 (=> (not res!1301013) (not e!1993414))))

(assert (=> b!3197563 (= res!1301013 (= (value!168432 (_1!20840 (get!11464 lt!1077754))) (apply!8122 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))) (seqFromList!3456 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754)))))))))

(declare-fun b!3197564 () Bool)

(assert (=> b!3197564 (= e!1993414 (= (size!27144 (_1!20840 (get!11464 lt!1077754))) (size!27145 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754))))))))

(declare-fun b!3197565 () Bool)

(assert (=> b!3197565 (= e!1993416 None!7077)))

(declare-fun b!3197566 () Bool)

(declare-fun res!1301008 () Bool)

(assert (=> b!3197566 (=> (not res!1301008) (not e!1993414))))

(assert (=> b!3197566 (= res!1301008 (= (++!8630 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754)))) (_2!20840 (get!11464 lt!1077754))) lt!1077706))))

(assert (= (and d!874631 c!536770) b!3197565))

(assert (= (and d!874631 (not c!536770)) b!3197559))

(assert (= (and b!3197559 (not res!1301014)) b!3197558))

(assert (= (and d!874631 (not res!1301012)) b!3197562))

(assert (= (and b!3197562 res!1301011) b!3197566))

(assert (= (and b!3197566 res!1301008) b!3197561))

(assert (= (and b!3197561 res!1301009) b!3197560))

(assert (= (and b!3197560 res!1301010) b!3197563))

(assert (= (and b!3197563 res!1301013) b!3197564))

(declare-fun m!3458607 () Bool)

(assert (=> b!3197560 m!3458607))

(assert (=> b!3197562 m!3458607))

(declare-fun m!3458609 () Bool)

(assert (=> b!3197562 m!3458609))

(assert (=> b!3197562 m!3458609))

(declare-fun m!3458611 () Bool)

(assert (=> b!3197562 m!3458611))

(assert (=> b!3197562 m!3458611))

(declare-fun m!3458613 () Bool)

(assert (=> b!3197562 m!3458613))

(assert (=> b!3197563 m!3458607))

(declare-fun m!3458615 () Bool)

(assert (=> b!3197563 m!3458615))

(assert (=> b!3197563 m!3458615))

(declare-fun m!3458617 () Bool)

(assert (=> b!3197563 m!3458617))

(assert (=> b!3197566 m!3458607))

(assert (=> b!3197566 m!3458609))

(assert (=> b!3197566 m!3458609))

(assert (=> b!3197566 m!3458611))

(assert (=> b!3197566 m!3458611))

(declare-fun m!3458619 () Bool)

(assert (=> b!3197566 m!3458619))

(declare-fun m!3458621 () Bool)

(assert (=> b!3197558 m!3458621))

(assert (=> b!3197558 m!3458337))

(assert (=> b!3197558 m!3458621))

(assert (=> b!3197558 m!3458337))

(declare-fun m!3458623 () Bool)

(assert (=> b!3197558 m!3458623))

(declare-fun m!3458625 () Bool)

(assert (=> b!3197558 m!3458625))

(assert (=> b!3197561 m!3458607))

(declare-fun m!3458627 () Bool)

(assert (=> b!3197561 m!3458627))

(assert (=> b!3197561 m!3458337))

(declare-fun m!3458629 () Bool)

(assert (=> d!874631 m!3458629))

(declare-fun m!3458631 () Bool)

(assert (=> d!874631 m!3458631))

(declare-fun m!3458633 () Bool)

(assert (=> d!874631 m!3458633))

(declare-fun m!3458635 () Bool)

(assert (=> d!874631 m!3458635))

(assert (=> b!3197559 m!3458337))

(declare-fun m!3458637 () Bool)

(assert (=> b!3197559 m!3458637))

(declare-fun m!3458639 () Bool)

(assert (=> b!3197559 m!3458639))

(declare-fun m!3458641 () Bool)

(assert (=> b!3197559 m!3458641))

(assert (=> b!3197559 m!3458639))

(declare-fun m!3458643 () Bool)

(assert (=> b!3197559 m!3458643))

(assert (=> b!3197559 m!3458621))

(assert (=> b!3197559 m!3458639))

(assert (=> b!3197559 m!3458621))

(assert (=> b!3197559 m!3458337))

(assert (=> b!3197559 m!3458623))

(assert (=> b!3197559 m!3458639))

(declare-fun m!3458645 () Bool)

(assert (=> b!3197559 m!3458645))

(declare-fun m!3458647 () Bool)

(assert (=> b!3197559 m!3458647))

(assert (=> b!3197564 m!3458607))

(declare-fun m!3458649 () Bool)

(assert (=> b!3197564 m!3458649))

(assert (=> b!3197409 d!874631))

(declare-fun b!3197579 () Bool)

(declare-fun lt!1077765 () Unit!50442)

(declare-fun lt!1077763 () Unit!50442)

(assert (=> b!3197579 (= lt!1077765 lt!1077763)))

(assert (=> b!3197579 (rulesInvariant!4178 thiss!18206 (t!236996 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!343 (LexerInterface!4781 Rule!10184 List!36169) Unit!50442)

(assert (=> b!3197579 (= lt!1077763 (lemmaInvariantOnRulesThenOnTail!343 thiss!18206 (h!41465 rules!2135) (t!236996 rules!2135)))))

(declare-fun e!1993425 () Option!7077)

(assert (=> b!3197579 (= e!1993425 (getRuleFromTag!897 thiss!18206 (t!236996 rules!2135) (tag!5712 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun b!3197580 () Bool)

(declare-fun e!1993426 () Bool)

(declare-fun e!1993427 () Bool)

(assert (=> b!3197580 (= e!1993426 e!1993427)))

(declare-fun res!1301020 () Bool)

(assert (=> b!3197580 (=> (not res!1301020) (not e!1993427))))

(declare-fun lt!1077764 () Option!7077)

(declare-fun contains!6405 (List!36169 Rule!10184) Bool)

(assert (=> b!3197580 (= res!1301020 (contains!6405 rules!2135 (get!11463 lt!1077764)))))

(declare-fun b!3197581 () Bool)

(declare-fun e!1993428 () Option!7077)

(assert (=> b!3197581 (= e!1993428 (Some!7076 (h!41465 rules!2135)))))

(declare-fun b!3197582 () Bool)

(assert (=> b!3197582 (= e!1993428 e!1993425)))

(declare-fun c!536776 () Bool)

(assert (=> b!3197582 (= c!536776 (and ((_ is Cons!36045) rules!2135) (not (= (tag!5712 (h!41465 rules!2135)) (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))

(declare-fun d!874663 () Bool)

(assert (=> d!874663 e!1993426))

(declare-fun res!1301019 () Bool)

(assert (=> d!874663 (=> res!1301019 e!1993426)))

(declare-fun isEmpty!20138 (Option!7077) Bool)

(assert (=> d!874663 (= res!1301019 (isEmpty!20138 lt!1077764))))

(assert (=> d!874663 (= lt!1077764 e!1993428)))

(declare-fun c!536775 () Bool)

(assert (=> d!874663 (= c!536775 (and ((_ is Cons!36045) rules!2135) (= (tag!5712 (h!41465 rules!2135)) (tag!5712 (rule!7626 (h!41464 tokens!494))))))))

(assert (=> d!874663 (rulesInvariant!4178 thiss!18206 rules!2135)))

(assert (=> d!874663 (= (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))) lt!1077764)))

(declare-fun b!3197583 () Bool)

(assert (=> b!3197583 (= e!1993425 None!7076)))

(declare-fun b!3197584 () Bool)

(assert (=> b!3197584 (= e!1993427 (= (tag!5712 (get!11463 lt!1077764)) (tag!5712 (rule!7626 (h!41464 tokens!494)))))))

(assert (= (and d!874663 c!536775) b!3197581))

(assert (= (and d!874663 (not c!536775)) b!3197582))

(assert (= (and b!3197582 c!536776) b!3197579))

(assert (= (and b!3197582 (not c!536776)) b!3197583))

(assert (= (and d!874663 (not res!1301019)) b!3197580))

(assert (= (and b!3197580 res!1301020) b!3197584))

(declare-fun m!3458651 () Bool)

(assert (=> b!3197579 m!3458651))

(declare-fun m!3458653 () Bool)

(assert (=> b!3197579 m!3458653))

(declare-fun m!3458655 () Bool)

(assert (=> b!3197579 m!3458655))

(declare-fun m!3458657 () Bool)

(assert (=> b!3197580 m!3458657))

(assert (=> b!3197580 m!3458657))

(declare-fun m!3458659 () Bool)

(assert (=> b!3197580 m!3458659))

(declare-fun m!3458661 () Bool)

(assert (=> d!874663 m!3458661))

(assert (=> d!874663 m!3458273))

(assert (=> b!3197584 m!3458657))

(assert (=> b!3197409 d!874663))

(declare-fun d!874665 () Bool)

(declare-fun e!1993431 () Bool)

(assert (=> d!874665 e!1993431))

(declare-fun res!1301025 () Bool)

(assert (=> d!874665 (=> (not res!1301025) (not e!1993431))))

(assert (=> d!874665 (= res!1301025 (isDefined!5520 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))))))

(declare-fun lt!1077768 () Unit!50442)

(declare-fun choose!18662 (LexerInterface!4781 List!36169 List!36167 Token!9750) Unit!50442)

(assert (=> d!874665 (= lt!1077768 (choose!18662 thiss!18206 rules!2135 lt!1077696 separatorToken!241))))

(assert (=> d!874665 (rulesInvariant!4178 thiss!18206 rules!2135)))

(assert (=> d!874665 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!897 thiss!18206 rules!2135 lt!1077696 separatorToken!241) lt!1077768)))

(declare-fun b!3197589 () Bool)

(declare-fun res!1301026 () Bool)

(assert (=> b!3197589 (=> (not res!1301026) (not e!1993431))))

(assert (=> b!3197589 (= res!1301026 (matchR!4585 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))) (list!12809 (charsOf!3208 separatorToken!241))))))

(declare-fun b!3197590 () Bool)

(assert (=> b!3197590 (= e!1993431 (= (rule!7626 separatorToken!241) (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))))))

(assert (= (and d!874665 res!1301025) b!3197589))

(assert (= (and b!3197589 res!1301026) b!3197590))

(assert (=> d!874665 m!3458339))

(assert (=> d!874665 m!3458339))

(declare-fun m!3458663 () Bool)

(assert (=> d!874665 m!3458663))

(declare-fun m!3458665 () Bool)

(assert (=> d!874665 m!3458665))

(assert (=> d!874665 m!3458273))

(assert (=> b!3197589 m!3458339))

(declare-fun m!3458667 () Bool)

(assert (=> b!3197589 m!3458667))

(assert (=> b!3197589 m!3458363))

(assert (=> b!3197589 m!3458371))

(assert (=> b!3197589 m!3458339))

(assert (=> b!3197589 m!3458371))

(declare-fun m!3458669 () Bool)

(assert (=> b!3197589 m!3458669))

(assert (=> b!3197589 m!3458363))

(assert (=> b!3197590 m!3458339))

(assert (=> b!3197590 m!3458339))

(assert (=> b!3197590 m!3458667))

(assert (=> b!3197409 d!874665))

(declare-fun d!874667 () Bool)

(assert (=> d!874667 (= (head!7005 lt!1077696) (h!41463 lt!1077696))))

(assert (=> b!3197409 d!874667))

(declare-fun d!874669 () Bool)

(assert (=> d!874669 (= (maxPrefixOneRule!1560 thiss!18206 (rule!7626 (h!41464 tokens!494)) lt!1077706) (Some!7077 (tuple2!35413 (Token!9751 (apply!8122 (transformation!5192 (rule!7626 (h!41464 tokens!494))) (seqFromList!3456 lt!1077706)) (rule!7626 (h!41464 tokens!494)) (size!27145 lt!1077706) lt!1077706) Nil!36043)))))

(declare-fun lt!1077771 () Unit!50442)

(declare-fun choose!18663 (LexerInterface!4781 List!36169 List!36167 List!36167 List!36167 Rule!10184) Unit!50442)

(assert (=> d!874669 (= lt!1077771 (choose!18663 thiss!18206 rules!2135 lt!1077706 lt!1077706 Nil!36043 (rule!7626 (h!41464 tokens!494))))))

(assert (=> d!874669 (not (isEmpty!20131 rules!2135))))

(assert (=> d!874669 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!673 thiss!18206 rules!2135 lt!1077706 lt!1077706 Nil!36043 (rule!7626 (h!41464 tokens!494))) lt!1077771)))

(declare-fun bs!540686 () Bool)

(assert (= bs!540686 d!874669))

(declare-fun m!3458671 () Bool)

(assert (=> bs!540686 m!3458671))

(assert (=> bs!540686 m!3458307))

(declare-fun m!3458673 () Bool)

(assert (=> bs!540686 m!3458673))

(assert (=> bs!540686 m!3458291))

(assert (=> bs!540686 m!3458333))

(assert (=> bs!540686 m!3458307))

(assert (=> bs!540686 m!3458337))

(assert (=> b!3197409 d!874669))

(declare-fun d!874671 () Bool)

(assert (=> d!874671 (= (isDefined!5520 lt!1077689) (not (isEmpty!20138 lt!1077689)))))

(declare-fun bs!540687 () Bool)

(assert (= bs!540687 d!874671))

(declare-fun m!3458675 () Bool)

(assert (=> bs!540687 m!3458675))

(assert (=> b!3197409 d!874671))

(declare-fun b!3197607 () Bool)

(declare-fun e!1993443 () List!36167)

(declare-fun call!231577 () List!36167)

(assert (=> b!3197607 (= e!1993443 call!231577)))

(declare-fun d!874673 () Bool)

(declare-fun c!536786 () Bool)

(assert (=> d!874673 (= c!536786 (or ((_ is EmptyExpr!9951) (regex!5192 (rule!7626 separatorToken!241))) ((_ is EmptyLang!9951) (regex!5192 (rule!7626 separatorToken!241)))))))

(declare-fun e!1993441 () List!36167)

(assert (=> d!874673 (= (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241))) e!1993441)))

(declare-fun b!3197608 () Bool)

(declare-fun c!536788 () Bool)

(assert (=> b!3197608 (= c!536788 ((_ is Star!9951) (regex!5192 (rule!7626 separatorToken!241))))))

(declare-fun e!1993440 () List!36167)

(declare-fun e!1993442 () List!36167)

(assert (=> b!3197608 (= e!1993440 e!1993442)))

(declare-fun bm!231570 () Bool)

(declare-fun call!231578 () List!36167)

(declare-fun c!536785 () Bool)

(assert (=> bm!231570 (= call!231578 (usedCharacters!508 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))))))

(declare-fun b!3197609 () Bool)

(assert (=> b!3197609 (= e!1993441 Nil!36043)))

(declare-fun bm!231571 () Bool)

(declare-fun call!231575 () List!36167)

(assert (=> bm!231571 (= call!231577 (++!8630 (ite c!536785 call!231575 call!231578) (ite c!536785 call!231578 call!231575)))))

(declare-fun call!231576 () List!36167)

(declare-fun bm!231572 () Bool)

(assert (=> bm!231572 (= call!231576 (usedCharacters!508 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))))))

(declare-fun b!3197610 () Bool)

(assert (=> b!3197610 (= e!1993440 (Cons!36043 (c!536748 (regex!5192 (rule!7626 separatorToken!241))) Nil!36043))))

(declare-fun bm!231573 () Bool)

(assert (=> bm!231573 (= call!231575 call!231576)))

(declare-fun b!3197611 () Bool)

(assert (=> b!3197611 (= e!1993442 call!231576)))

(declare-fun b!3197612 () Bool)

(assert (=> b!3197612 (= e!1993441 e!1993440)))

(declare-fun c!536787 () Bool)

(assert (=> b!3197612 (= c!536787 ((_ is ElementMatch!9951) (regex!5192 (rule!7626 separatorToken!241))))))

(declare-fun b!3197613 () Bool)

(assert (=> b!3197613 (= e!1993443 call!231577)))

(declare-fun b!3197614 () Bool)

(assert (=> b!3197614 (= e!1993442 e!1993443)))

(assert (=> b!3197614 (= c!536785 ((_ is Union!9951) (regex!5192 (rule!7626 separatorToken!241))))))

(assert (= (and d!874673 c!536786) b!3197609))

(assert (= (and d!874673 (not c!536786)) b!3197612))

(assert (= (and b!3197612 c!536787) b!3197610))

(assert (= (and b!3197612 (not c!536787)) b!3197608))

(assert (= (and b!3197608 c!536788) b!3197611))

(assert (= (and b!3197608 (not c!536788)) b!3197614))

(assert (= (and b!3197614 c!536785) b!3197613))

(assert (= (and b!3197614 (not c!536785)) b!3197607))

(assert (= (or b!3197613 b!3197607) bm!231570))

(assert (= (or b!3197613 b!3197607) bm!231573))

(assert (= (or b!3197613 b!3197607) bm!231571))

(assert (= (or b!3197611 bm!231573) bm!231572))

(declare-fun m!3458677 () Bool)

(assert (=> bm!231570 m!3458677))

(declare-fun m!3458679 () Bool)

(assert (=> bm!231571 m!3458679))

(declare-fun m!3458681 () Bool)

(assert (=> bm!231572 m!3458681))

(assert (=> b!3197409 d!874673))

(declare-fun d!874675 () Bool)

(assert (=> d!874675 (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 (h!41464 tokens!494))))

(declare-fun lt!1077783 () Unit!50442)

(declare-fun choose!18664 (LexerInterface!4781 List!36169 List!36168 Token!9750) Unit!50442)

(assert (=> d!874675 (= lt!1077783 (choose!18664 thiss!18206 rules!2135 tokens!494 (h!41464 tokens!494)))))

(assert (=> d!874675 (not (isEmpty!20131 rules!2135))))

(assert (=> d!874675 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!820 thiss!18206 rules!2135 tokens!494 (h!41464 tokens!494)) lt!1077783)))

(declare-fun bs!540688 () Bool)

(assert (= bs!540688 d!874675))

(assert (=> bs!540688 m!3458309))

(declare-fun m!3458715 () Bool)

(assert (=> bs!540688 m!3458715))

(assert (=> bs!540688 m!3458291))

(assert (=> b!3197409 d!874675))

(declare-fun d!874683 () Bool)

(declare-fun lt!1077786 () Int)

(assert (=> d!874683 (>= lt!1077786 0)))

(declare-fun e!1993473 () Int)

(assert (=> d!874683 (= lt!1077786 e!1993473)))

(declare-fun c!536800 () Bool)

(assert (=> d!874683 (= c!536800 ((_ is Nil!36043) lt!1077706))))

(assert (=> d!874683 (= (size!27145 lt!1077706) lt!1077786)))

(declare-fun b!3197670 () Bool)

(assert (=> b!3197670 (= e!1993473 0)))

(declare-fun b!3197671 () Bool)

(assert (=> b!3197671 (= e!1993473 (+ 1 (size!27145 (t!236994 lt!1077706))))))

(assert (= (and d!874683 c!536800) b!3197670))

(assert (= (and d!874683 (not c!536800)) b!3197671))

(declare-fun m!3458717 () Bool)

(assert (=> b!3197671 m!3458717))

(assert (=> b!3197409 d!874683))

(declare-fun d!874685 () Bool)

(assert (=> d!874685 (= (isDefined!5520 lt!1077692) (not (isEmpty!20138 lt!1077692)))))

(declare-fun bs!540689 () Bool)

(assert (= bs!540689 d!874685))

(declare-fun m!3458719 () Bool)

(assert (=> bs!540689 m!3458719))

(assert (=> b!3197409 d!874685))

(declare-fun b!3197672 () Bool)

(declare-fun lt!1077789 () Unit!50442)

(declare-fun lt!1077787 () Unit!50442)

(assert (=> b!3197672 (= lt!1077789 lt!1077787)))

(assert (=> b!3197672 (rulesInvariant!4178 thiss!18206 (t!236996 rules!2135))))

(assert (=> b!3197672 (= lt!1077787 (lemmaInvariantOnRulesThenOnTail!343 thiss!18206 (h!41465 rules!2135) (t!236996 rules!2135)))))

(declare-fun e!1993474 () Option!7077)

(assert (=> b!3197672 (= e!1993474 (getRuleFromTag!897 thiss!18206 (t!236996 rules!2135) (tag!5712 (rule!7626 separatorToken!241))))))

(declare-fun b!3197673 () Bool)

(declare-fun e!1993475 () Bool)

(declare-fun e!1993476 () Bool)

(assert (=> b!3197673 (= e!1993475 e!1993476)))

(declare-fun res!1301061 () Bool)

(assert (=> b!3197673 (=> (not res!1301061) (not e!1993476))))

(declare-fun lt!1077788 () Option!7077)

(assert (=> b!3197673 (= res!1301061 (contains!6405 rules!2135 (get!11463 lt!1077788)))))

(declare-fun b!3197674 () Bool)

(declare-fun e!1993477 () Option!7077)

(assert (=> b!3197674 (= e!1993477 (Some!7076 (h!41465 rules!2135)))))

(declare-fun b!3197675 () Bool)

(assert (=> b!3197675 (= e!1993477 e!1993474)))

(declare-fun c!536802 () Bool)

(assert (=> b!3197675 (= c!536802 (and ((_ is Cons!36045) rules!2135) (not (= (tag!5712 (h!41465 rules!2135)) (tag!5712 (rule!7626 separatorToken!241))))))))

(declare-fun d!874687 () Bool)

(assert (=> d!874687 e!1993475))

(declare-fun res!1301060 () Bool)

(assert (=> d!874687 (=> res!1301060 e!1993475)))

(assert (=> d!874687 (= res!1301060 (isEmpty!20138 lt!1077788))))

(assert (=> d!874687 (= lt!1077788 e!1993477)))

(declare-fun c!536801 () Bool)

(assert (=> d!874687 (= c!536801 (and ((_ is Cons!36045) rules!2135) (= (tag!5712 (h!41465 rules!2135)) (tag!5712 (rule!7626 separatorToken!241)))))))

(assert (=> d!874687 (rulesInvariant!4178 thiss!18206 rules!2135)))

(assert (=> d!874687 (= (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))) lt!1077788)))

(declare-fun b!3197676 () Bool)

(assert (=> b!3197676 (= e!1993474 None!7076)))

(declare-fun b!3197677 () Bool)

(assert (=> b!3197677 (= e!1993476 (= (tag!5712 (get!11463 lt!1077788)) (tag!5712 (rule!7626 separatorToken!241))))))

(assert (= (and d!874687 c!536801) b!3197674))

(assert (= (and d!874687 (not c!536801)) b!3197675))

(assert (= (and b!3197675 c!536802) b!3197672))

(assert (= (and b!3197675 (not c!536802)) b!3197676))

(assert (= (and d!874687 (not res!1301060)) b!3197673))

(assert (= (and b!3197673 res!1301061) b!3197677))

(assert (=> b!3197672 m!3458651))

(assert (=> b!3197672 m!3458653))

(declare-fun m!3458721 () Bool)

(assert (=> b!3197672 m!3458721))

(declare-fun m!3458723 () Bool)

(assert (=> b!3197673 m!3458723))

(assert (=> b!3197673 m!3458723))

(declare-fun m!3458725 () Bool)

(assert (=> b!3197673 m!3458725))

(declare-fun m!3458727 () Bool)

(assert (=> d!874687 m!3458727))

(assert (=> d!874687 m!3458273))

(assert (=> b!3197677 m!3458723))

(assert (=> b!3197409 d!874687))

(declare-fun d!874689 () Bool)

(declare-fun e!1993478 () Bool)

(assert (=> d!874689 e!1993478))

(declare-fun res!1301062 () Bool)

(assert (=> d!874689 (=> (not res!1301062) (not e!1993478))))

(assert (=> d!874689 (= res!1301062 (isDefined!5520 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))))))

(declare-fun lt!1077790 () Unit!50442)

(assert (=> d!874689 (= lt!1077790 (choose!18662 thiss!18206 rules!2135 lt!1077706 (h!41464 tokens!494)))))

(assert (=> d!874689 (rulesInvariant!4178 thiss!18206 rules!2135)))

(assert (=> d!874689 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!897 thiss!18206 rules!2135 lt!1077706 (h!41464 tokens!494)) lt!1077790)))

(declare-fun b!3197678 () Bool)

(declare-fun res!1301063 () Bool)

(assert (=> b!3197678 (=> (not res!1301063) (not e!1993478))))

(assert (=> b!3197678 (= res!1301063 (matchR!4585 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))) (list!12809 (charsOf!3208 (h!41464 tokens!494)))))))

(declare-fun b!3197679 () Bool)

(assert (=> b!3197679 (= e!1993478 (= (rule!7626 (h!41464 tokens!494)) (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))

(assert (= (and d!874689 res!1301062) b!3197678))

(assert (= (and b!3197678 res!1301063) b!3197679))

(assert (=> d!874689 m!3458325))

(assert (=> d!874689 m!3458325))

(declare-fun m!3458729 () Bool)

(assert (=> d!874689 m!3458729))

(declare-fun m!3458731 () Bool)

(assert (=> d!874689 m!3458731))

(assert (=> d!874689 m!3458273))

(assert (=> b!3197678 m!3458325))

(declare-fun m!3458733 () Bool)

(assert (=> b!3197678 m!3458733))

(assert (=> b!3197678 m!3458293))

(assert (=> b!3197678 m!3458295))

(assert (=> b!3197678 m!3458325))

(assert (=> b!3197678 m!3458295))

(declare-fun m!3458735 () Bool)

(assert (=> b!3197678 m!3458735))

(assert (=> b!3197678 m!3458293))

(assert (=> b!3197679 m!3458325))

(assert (=> b!3197679 m!3458325))

(assert (=> b!3197679 m!3458733))

(assert (=> b!3197409 d!874689))

(declare-fun d!874691 () Bool)

(declare-fun lt!1077793 () Bool)

(assert (=> d!874691 (= lt!1077793 (select (content!4869 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))) (head!7005 lt!1077696)))))

(declare-fun e!1993483 () Bool)

(assert (=> d!874691 (= lt!1077793 e!1993483)))

(declare-fun res!1301069 () Bool)

(assert (=> d!874691 (=> (not res!1301069) (not e!1993483))))

(assert (=> d!874691 (= res!1301069 ((_ is Cons!36043) (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))))))

(assert (=> d!874691 (= (contains!6403 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241))) (head!7005 lt!1077696)) lt!1077793)))

(declare-fun b!3197684 () Bool)

(declare-fun e!1993484 () Bool)

(assert (=> b!3197684 (= e!1993483 e!1993484)))

(declare-fun res!1301068 () Bool)

(assert (=> b!3197684 (=> res!1301068 e!1993484)))

(assert (=> b!3197684 (= res!1301068 (= (h!41463 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))) (head!7005 lt!1077696)))))

(declare-fun b!3197685 () Bool)

(assert (=> b!3197685 (= e!1993484 (contains!6403 (t!236994 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))) (head!7005 lt!1077696)))))

(assert (= (and d!874691 res!1301069) b!3197684))

(assert (= (and b!3197684 (not res!1301068)) b!3197685))

(assert (=> d!874691 m!3458317))

(declare-fun m!3458737 () Bool)

(assert (=> d!874691 m!3458737))

(assert (=> d!874691 m!3458321))

(declare-fun m!3458739 () Bool)

(assert (=> d!874691 m!3458739))

(assert (=> b!3197685 m!3458321))

(declare-fun m!3458741 () Bool)

(assert (=> b!3197685 m!3458741))

(assert (=> b!3197409 d!874691))

(declare-fun lt!1077796 () Bool)

(declare-fun d!874693 () Bool)

(declare-fun isEmpty!20140 (List!36168) Bool)

(assert (=> d!874693 (= lt!1077796 (isEmpty!20140 (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699)))))))

(declare-fun isEmpty!20141 (Conc!10760) Bool)

(assert (=> d!874693 (= lt!1077796 (isEmpty!20141 (c!536750 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699)))))))

(assert (=> d!874693 (= (isEmpty!20130 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699))) lt!1077796)))

(declare-fun bs!540690 () Bool)

(assert (= bs!540690 d!874693))

(declare-fun m!3458743 () Bool)

(assert (=> bs!540690 m!3458743))

(assert (=> bs!540690 m!3458743))

(declare-fun m!3458745 () Bool)

(assert (=> bs!540690 m!3458745))

(declare-fun m!3458747 () Bool)

(assert (=> bs!540690 m!3458747))

(assert (=> b!3197388 d!874693))

(declare-fun b!3197696 () Bool)

(declare-fun lt!1077801 () tuple2!35410)

(declare-fun e!1993492 () Bool)

(declare-datatypes ((tuple2!35418 0))(
  ( (tuple2!35419 (_1!20843 List!36168) (_2!20843 List!36167)) )
))
(declare-fun lexList!1307 (LexerInterface!4781 List!36169 List!36167) tuple2!35418)

(assert (=> b!3197696 (= e!1993492 (= (list!12809 (_2!20839 lt!1077801)) (_2!20843 (lexList!1307 thiss!18206 rules!2135 (list!12809 lt!1077699)))))))

(declare-fun b!3197697 () Bool)

(declare-fun res!1301078 () Bool)

(assert (=> b!3197697 (=> (not res!1301078) (not e!1993492))))

(assert (=> b!3197697 (= res!1301078 (= (list!12810 (_1!20839 lt!1077801)) (_1!20843 (lexList!1307 thiss!18206 rules!2135 (list!12809 lt!1077699)))))))

(declare-fun b!3197698 () Bool)

(declare-fun e!1993491 () Bool)

(assert (=> b!3197698 (= e!1993491 (= (_2!20839 lt!1077801) lt!1077699))))

(declare-fun b!3197699 () Bool)

(declare-fun e!1993493 () Bool)

(assert (=> b!3197699 (= e!1993491 e!1993493)))

(declare-fun res!1301077 () Bool)

(assert (=> b!3197699 (= res!1301077 (< (size!27148 (_2!20839 lt!1077801)) (size!27148 lt!1077699)))))

(assert (=> b!3197699 (=> (not res!1301077) (not e!1993493))))

(declare-fun b!3197700 () Bool)

(assert (=> b!3197700 (= e!1993493 (not (isEmpty!20130 (_1!20839 lt!1077801))))))

(declare-fun d!874695 () Bool)

(assert (=> d!874695 e!1993492))

(declare-fun res!1301076 () Bool)

(assert (=> d!874695 (=> (not res!1301076) (not e!1993492))))

(assert (=> d!874695 (= res!1301076 e!1993491)))

(declare-fun c!536805 () Bool)

(assert (=> d!874695 (= c!536805 (> (size!27146 (_1!20839 lt!1077801)) 0))))

(declare-fun lexTailRecV2!927 (LexerInterface!4781 List!36169 BalanceConc!21132 BalanceConc!21132 BalanceConc!21132 BalanceConc!21134) tuple2!35410)

(assert (=> d!874695 (= lt!1077801 (lexTailRecV2!927 thiss!18206 rules!2135 lt!1077699 (BalanceConc!21133 Empty!10759) lt!1077699 (BalanceConc!21135 Empty!10760)))))

(assert (=> d!874695 (= (lex!2111 thiss!18206 rules!2135 lt!1077699) lt!1077801)))

(assert (= (and d!874695 c!536805) b!3197699))

(assert (= (and d!874695 (not c!536805)) b!3197698))

(assert (= (and b!3197699 res!1301077) b!3197700))

(assert (= (and d!874695 res!1301076) b!3197697))

(assert (= (and b!3197697 res!1301078) b!3197696))

(declare-fun m!3458749 () Bool)

(assert (=> d!874695 m!3458749))

(declare-fun m!3458751 () Bool)

(assert (=> d!874695 m!3458751))

(declare-fun m!3458753 () Bool)

(assert (=> b!3197696 m!3458753))

(declare-fun m!3458755 () Bool)

(assert (=> b!3197696 m!3458755))

(assert (=> b!3197696 m!3458755))

(declare-fun m!3458757 () Bool)

(assert (=> b!3197696 m!3458757))

(declare-fun m!3458759 () Bool)

(assert (=> b!3197699 m!3458759))

(declare-fun m!3458761 () Bool)

(assert (=> b!3197699 m!3458761))

(declare-fun m!3458763 () Bool)

(assert (=> b!3197700 m!3458763))

(declare-fun m!3458765 () Bool)

(assert (=> b!3197697 m!3458765))

(assert (=> b!3197697 m!3458755))

(assert (=> b!3197697 m!3458755))

(assert (=> b!3197697 m!3458757))

(assert (=> b!3197388 d!874695))

(declare-fun d!874697 () Bool)

(declare-fun fromListB!1528 (List!36167) BalanceConc!21132)

(assert (=> d!874697 (= (seqFromList!3456 lt!1077706) (fromListB!1528 lt!1077706))))

(declare-fun bs!540691 () Bool)

(assert (= bs!540691 d!874697))

(declare-fun m!3458767 () Bool)

(assert (=> bs!540691 m!3458767))

(assert (=> b!3197388 d!874697))

(declare-fun d!874699 () Bool)

(assert (=> d!874699 (= (inv!48890 (tag!5712 (rule!7626 (h!41464 tokens!494)))) (= (mod (str.len (value!168431 (tag!5712 (rule!7626 (h!41464 tokens!494))))) 2) 0))))

(assert (=> b!3197386 d!874699))

(declare-fun d!874701 () Bool)

(declare-fun res!1301079 () Bool)

(declare-fun e!1993494 () Bool)

(assert (=> d!874701 (=> (not res!1301079) (not e!1993494))))

(assert (=> d!874701 (= res!1301079 (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))))))

(assert (=> d!874701 (= (inv!48893 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) e!1993494)))

(declare-fun b!3197701 () Bool)

(assert (=> b!3197701 (= e!1993494 (equivClasses!2047 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))))))

(assert (= (and d!874701 res!1301079) b!3197701))

(declare-fun m!3458769 () Bool)

(assert (=> d!874701 m!3458769))

(declare-fun m!3458771 () Bool)

(assert (=> b!3197701 m!3458771))

(assert (=> b!3197386 d!874701))

(declare-fun d!874703 () Bool)

(declare-fun list!12813 (Conc!10759) List!36167)

(assert (=> d!874703 (= (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12813 (c!536749 (charsOf!3208 (h!41464 tokens!494)))))))

(declare-fun bs!540692 () Bool)

(assert (= bs!540692 d!874703))

(declare-fun m!3458773 () Bool)

(assert (=> bs!540692 m!3458773))

(assert (=> b!3197408 d!874703))

(declare-fun d!874705 () Bool)

(declare-fun lt!1077804 () BalanceConc!21132)

(assert (=> d!874705 (= (list!12809 lt!1077804) (originalCharacters!5906 (h!41464 tokens!494)))))

(assert (=> d!874705 (= lt!1077804 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))))

(assert (=> d!874705 (= (charsOf!3208 (h!41464 tokens!494)) lt!1077804)))

(declare-fun b_lambda!87329 () Bool)

(assert (=> (not b_lambda!87329) (not d!874705)))

(assert (=> d!874705 t!237005))

(declare-fun b_and!212377 () Bool)

(assert (= b_and!212353 (and (=> t!237005 result!198716) b_and!212377)))

(assert (=> d!874705 t!237007))

(declare-fun b_and!212379 () Bool)

(assert (= b_and!212355 (and (=> t!237007 result!198720) b_and!212379)))

(assert (=> d!874705 t!237009))

(declare-fun b_and!212381 () Bool)

(assert (= b_and!212357 (and (=> t!237009 result!198722) b_and!212381)))

(declare-fun m!3458775 () Bool)

(assert (=> d!874705 m!3458775))

(assert (=> d!874705 m!3458469))

(assert (=> b!3197408 d!874705))

(declare-fun d!874707 () Bool)

(declare-fun res!1301080 () Bool)

(declare-fun e!1993495 () Bool)

(assert (=> d!874707 (=> (not res!1301080) (not e!1993495))))

(assert (=> d!874707 (= res!1301080 (not (isEmpty!20133 (originalCharacters!5906 separatorToken!241))))))

(assert (=> d!874707 (= (inv!48894 separatorToken!241) e!1993495)))

(declare-fun b!3197702 () Bool)

(declare-fun res!1301081 () Bool)

(assert (=> b!3197702 (=> (not res!1301081) (not e!1993495))))

(assert (=> b!3197702 (= res!1301081 (= (originalCharacters!5906 separatorToken!241) (list!12809 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))))))

(declare-fun b!3197703 () Bool)

(assert (=> b!3197703 (= e!1993495 (= (size!27144 separatorToken!241) (size!27145 (originalCharacters!5906 separatorToken!241))))))

(assert (= (and d!874707 res!1301080) b!3197702))

(assert (= (and b!3197702 res!1301081) b!3197703))

(declare-fun b_lambda!87331 () Bool)

(assert (=> (not b_lambda!87331) (not b!3197702)))

(declare-fun t!237033 () Bool)

(declare-fun tb!156481 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) t!237033) tb!156481))

(declare-fun b!3197704 () Bool)

(declare-fun e!1993496 () Bool)

(declare-fun tp!1010937 () Bool)

(assert (=> b!3197704 (= e!1993496 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))) tp!1010937))))

(declare-fun result!198744 () Bool)

(assert (=> tb!156481 (= result!198744 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))) e!1993496))))

(assert (= tb!156481 b!3197704))

(declare-fun m!3458777 () Bool)

(assert (=> b!3197704 m!3458777))

(declare-fun m!3458779 () Bool)

(assert (=> tb!156481 m!3458779))

(assert (=> b!3197702 t!237033))

(declare-fun b_and!212383 () Bool)

(assert (= b_and!212377 (and (=> t!237033 result!198744) b_and!212383)))

(declare-fun t!237035 () Bool)

(declare-fun tb!156483 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) t!237035) tb!156483))

(declare-fun result!198746 () Bool)

(assert (= result!198746 result!198744))

(assert (=> b!3197702 t!237035))

(declare-fun b_and!212385 () Bool)

(assert (= b_and!212379 (and (=> t!237035 result!198746) b_and!212385)))

(declare-fun tb!156485 () Bool)

(declare-fun t!237037 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) t!237037) tb!156485))

(declare-fun result!198748 () Bool)

(assert (= result!198748 result!198744))

(assert (=> b!3197702 t!237037))

(declare-fun b_and!212387 () Bool)

(assert (= b_and!212381 (and (=> t!237037 result!198748) b_and!212387)))

(declare-fun m!3458781 () Bool)

(assert (=> d!874707 m!3458781))

(declare-fun m!3458783 () Bool)

(assert (=> b!3197702 m!3458783))

(assert (=> b!3197702 m!3458783))

(declare-fun m!3458785 () Bool)

(assert (=> b!3197702 m!3458785))

(declare-fun m!3458787 () Bool)

(assert (=> b!3197703 m!3458787))

(assert (=> start!300042 d!874707))

(declare-fun b!3197733 () Bool)

(declare-fun res!1301099 () Bool)

(declare-fun e!1993517 () Bool)

(assert (=> b!3197733 (=> res!1301099 e!1993517)))

(assert (=> b!3197733 (= res!1301099 (not ((_ is ElementMatch!9951) (regex!5192 lt!1077705))))))

(declare-fun e!1993516 () Bool)

(assert (=> b!3197733 (= e!1993516 e!1993517)))

(declare-fun b!3197734 () Bool)

(declare-fun e!1993515 () Bool)

(assert (=> b!3197734 (= e!1993517 e!1993515)))

(declare-fun res!1301100 () Bool)

(assert (=> b!3197734 (=> (not res!1301100) (not e!1993515))))

(declare-fun lt!1077807 () Bool)

(assert (=> b!3197734 (= res!1301100 (not lt!1077807))))

(declare-fun b!3197735 () Bool)

(declare-fun res!1301102 () Bool)

(declare-fun e!1993512 () Bool)

(assert (=> b!3197735 (=> res!1301102 e!1993512)))

(declare-fun tail!5199 (List!36167) List!36167)

(assert (=> b!3197735 (= res!1301102 (not (isEmpty!20133 (tail!5199 lt!1077696))))))

(declare-fun b!3197736 () Bool)

(declare-fun e!1993511 () Bool)

(assert (=> b!3197736 (= e!1993511 e!1993516)))

(declare-fun c!536812 () Bool)

(assert (=> b!3197736 (= c!536812 ((_ is EmptyLang!9951) (regex!5192 lt!1077705)))))

(declare-fun b!3197737 () Bool)

(declare-fun e!1993514 () Bool)

(declare-fun derivativeStep!2945 (Regex!9951 C!20088) Regex!9951)

(assert (=> b!3197737 (= e!1993514 (matchR!4585 (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696)) (tail!5199 lt!1077696)))))

(declare-fun d!874709 () Bool)

(assert (=> d!874709 e!1993511))

(declare-fun c!536813 () Bool)

(assert (=> d!874709 (= c!536813 ((_ is EmptyExpr!9951) (regex!5192 lt!1077705)))))

(assert (=> d!874709 (= lt!1077807 e!1993514)))

(declare-fun c!536814 () Bool)

(assert (=> d!874709 (= c!536814 (isEmpty!20133 lt!1077696))))

(declare-fun validRegex!4544 (Regex!9951) Bool)

(assert (=> d!874709 (validRegex!4544 (regex!5192 lt!1077705))))

(assert (=> d!874709 (= (matchR!4585 (regex!5192 lt!1077705) lt!1077696) lt!1077807)))

(declare-fun b!3197738 () Bool)

(declare-fun e!1993513 () Bool)

(assert (=> b!3197738 (= e!1993513 (= (head!7005 lt!1077696) (c!536748 (regex!5192 lt!1077705))))))

(declare-fun b!3197739 () Bool)

(assert (=> b!3197739 (= e!1993516 (not lt!1077807))))

(declare-fun b!3197740 () Bool)

(declare-fun res!1301101 () Bool)

(assert (=> b!3197740 (=> (not res!1301101) (not e!1993513))))

(declare-fun call!231584 () Bool)

(assert (=> b!3197740 (= res!1301101 (not call!231584))))

(declare-fun b!3197741 () Bool)

(declare-fun nullable!3392 (Regex!9951) Bool)

(assert (=> b!3197741 (= e!1993514 (nullable!3392 (regex!5192 lt!1077705)))))

(declare-fun b!3197742 () Bool)

(assert (=> b!3197742 (= e!1993511 (= lt!1077807 call!231584))))

(declare-fun bm!231579 () Bool)

(assert (=> bm!231579 (= call!231584 (isEmpty!20133 lt!1077696))))

(declare-fun b!3197743 () Bool)

(declare-fun res!1301098 () Bool)

(assert (=> b!3197743 (=> (not res!1301098) (not e!1993513))))

(assert (=> b!3197743 (= res!1301098 (isEmpty!20133 (tail!5199 lt!1077696)))))

(declare-fun b!3197744 () Bool)

(declare-fun res!1301105 () Bool)

(assert (=> b!3197744 (=> res!1301105 e!1993517)))

(assert (=> b!3197744 (= res!1301105 e!1993513)))

(declare-fun res!1301104 () Bool)

(assert (=> b!3197744 (=> (not res!1301104) (not e!1993513))))

(assert (=> b!3197744 (= res!1301104 lt!1077807)))

(declare-fun b!3197745 () Bool)

(assert (=> b!3197745 (= e!1993515 e!1993512)))

(declare-fun res!1301103 () Bool)

(assert (=> b!3197745 (=> res!1301103 e!1993512)))

(assert (=> b!3197745 (= res!1301103 call!231584)))

(declare-fun b!3197746 () Bool)

(assert (=> b!3197746 (= e!1993512 (not (= (head!7005 lt!1077696) (c!536748 (regex!5192 lt!1077705)))))))

(assert (= (and d!874709 c!536814) b!3197741))

(assert (= (and d!874709 (not c!536814)) b!3197737))

(assert (= (and d!874709 c!536813) b!3197742))

(assert (= (and d!874709 (not c!536813)) b!3197736))

(assert (= (and b!3197736 c!536812) b!3197739))

(assert (= (and b!3197736 (not c!536812)) b!3197733))

(assert (= (and b!3197733 (not res!1301099)) b!3197744))

(assert (= (and b!3197744 res!1301104) b!3197740))

(assert (= (and b!3197740 res!1301101) b!3197743))

(assert (= (and b!3197743 res!1301098) b!3197738))

(assert (= (and b!3197744 (not res!1301105)) b!3197734))

(assert (= (and b!3197734 res!1301100) b!3197745))

(assert (= (and b!3197745 (not res!1301103)) b!3197735))

(assert (= (and b!3197735 (not res!1301102)) b!3197746))

(assert (= (or b!3197742 b!3197740 b!3197745) bm!231579))

(declare-fun m!3458789 () Bool)

(assert (=> b!3197741 m!3458789))

(declare-fun m!3458791 () Bool)

(assert (=> b!3197735 m!3458791))

(assert (=> b!3197735 m!3458791))

(declare-fun m!3458793 () Bool)

(assert (=> b!3197735 m!3458793))

(assert (=> b!3197738 m!3458321))

(assert (=> b!3197746 m!3458321))

(assert (=> b!3197737 m!3458321))

(assert (=> b!3197737 m!3458321))

(declare-fun m!3458795 () Bool)

(assert (=> b!3197737 m!3458795))

(assert (=> b!3197737 m!3458791))

(assert (=> b!3197737 m!3458795))

(assert (=> b!3197737 m!3458791))

(declare-fun m!3458797 () Bool)

(assert (=> b!3197737 m!3458797))

(assert (=> b!3197743 m!3458791))

(assert (=> b!3197743 m!3458791))

(assert (=> b!3197743 m!3458793))

(declare-fun m!3458799 () Bool)

(assert (=> d!874709 m!3458799))

(declare-fun m!3458801 () Bool)

(assert (=> d!874709 m!3458801))

(assert (=> bm!231579 m!3458799))

(assert (=> b!3197406 d!874709))

(declare-fun d!874711 () Bool)

(assert (=> d!874711 (= (get!11463 lt!1077692) (v!35596 lt!1077692))))

(assert (=> b!3197406 d!874711))

(declare-fun bs!540696 () Bool)

(declare-fun d!874713 () Bool)

(assert (= bs!540696 (and d!874713 b!3197405)))

(declare-fun lambda!117061 () Int)

(assert (=> bs!540696 (not (= lambda!117061 lambda!117051))))

(declare-fun b!3197842 () Bool)

(declare-fun e!1993580 () Bool)

(assert (=> b!3197842 (= e!1993580 true)))

(declare-fun b!3197841 () Bool)

(declare-fun e!1993579 () Bool)

(assert (=> b!3197841 (= e!1993579 e!1993580)))

(declare-fun b!3197840 () Bool)

(declare-fun e!1993578 () Bool)

(assert (=> b!3197840 (= e!1993578 e!1993579)))

(assert (=> d!874713 e!1993578))

(assert (= b!3197841 b!3197842))

(assert (= b!3197840 b!3197841))

(assert (= (and d!874713 ((_ is Cons!36045) rules!2135)) b!3197840))

(declare-fun order!18331 () Int)

(declare-fun order!18329 () Int)

(declare-fun dynLambda!14522 (Int Int) Int)

(declare-fun dynLambda!14523 (Int Int) Int)

(assert (=> b!3197842 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (h!41465 rules!2135)))) (dynLambda!14523 order!18331 lambda!117061))))

(declare-fun order!18333 () Int)

(declare-fun dynLambda!14524 (Int Int) Int)

(assert (=> b!3197842 (< (dynLambda!14524 order!18333 (toChars!7123 (transformation!5192 (h!41465 rules!2135)))) (dynLambda!14523 order!18331 lambda!117061))))

(assert (=> d!874713 true))

(declare-fun e!1993571 () Bool)

(assert (=> d!874713 e!1993571))

(declare-fun res!1301149 () Bool)

(assert (=> d!874713 (=> (not res!1301149) (not e!1993571))))

(declare-fun lt!1077846 () Bool)

(assert (=> d!874713 (= res!1301149 (= lt!1077846 (forall!7338 (list!12810 (seqFromList!3455 tokens!494)) lambda!117061)))))

(declare-fun forall!7340 (BalanceConc!21134 Int) Bool)

(assert (=> d!874713 (= lt!1077846 (forall!7340 (seqFromList!3455 tokens!494) lambda!117061))))

(assert (=> d!874713 (not (isEmpty!20131 rules!2135))))

(assert (=> d!874713 (= (rulesProduceEachTokenIndividually!1232 thiss!18206 rules!2135 (seqFromList!3455 tokens!494)) lt!1077846)))

(declare-fun b!3197831 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1719 (LexerInterface!4781 List!36169 List!36168) Bool)

(assert (=> b!3197831 (= e!1993571 (= lt!1077846 (rulesProduceEachTokenIndividuallyList!1719 thiss!18206 rules!2135 (list!12810 (seqFromList!3455 tokens!494)))))))

(assert (= (and d!874713 res!1301149) b!3197831))

(assert (=> d!874713 m!3458381))

(declare-fun m!3458901 () Bool)

(assert (=> d!874713 m!3458901))

(assert (=> d!874713 m!3458901))

(declare-fun m!3458903 () Bool)

(assert (=> d!874713 m!3458903))

(assert (=> d!874713 m!3458381))

(declare-fun m!3458905 () Bool)

(assert (=> d!874713 m!3458905))

(assert (=> d!874713 m!3458291))

(assert (=> b!3197831 m!3458381))

(assert (=> b!3197831 m!3458901))

(assert (=> b!3197831 m!3458901))

(declare-fun m!3458907 () Bool)

(assert (=> b!3197831 m!3458907))

(assert (=> b!3197385 d!874713))

(declare-fun d!874735 () Bool)

(declare-fun fromListB!1530 (List!36168) BalanceConc!21134)

(assert (=> d!874735 (= (seqFromList!3455 tokens!494) (fromListB!1530 tokens!494))))

(declare-fun bs!540697 () Bool)

(assert (= bs!540697 d!874735))

(declare-fun m!3458909 () Bool)

(assert (=> bs!540697 m!3458909))

(assert (=> b!3197385 d!874735))

(declare-fun d!874737 () Bool)

(declare-fun res!1301160 () Bool)

(declare-fun e!1993588 () Bool)

(assert (=> d!874737 (=> res!1301160 e!1993588)))

(assert (=> d!874737 (= res!1301160 ((_ is Nil!36044) tokens!494))))

(assert (=> d!874737 (= (forall!7338 tokens!494 lambda!117051) e!1993588)))

(declare-fun b!3197855 () Bool)

(declare-fun e!1993589 () Bool)

(assert (=> b!3197855 (= e!1993588 e!1993589)))

(declare-fun res!1301161 () Bool)

(assert (=> b!3197855 (=> (not res!1301161) (not e!1993589))))

(assert (=> b!3197855 (= res!1301161 (dynLambda!14516 lambda!117051 (h!41464 tokens!494)))))

(declare-fun b!3197856 () Bool)

(assert (=> b!3197856 (= e!1993589 (forall!7338 (t!236995 tokens!494) lambda!117051))))

(assert (= (and d!874737 (not res!1301160)) b!3197855))

(assert (= (and b!3197855 res!1301161) b!3197856))

(declare-fun b_lambda!87335 () Bool)

(assert (=> (not b_lambda!87335) (not b!3197855)))

(assert (=> b!3197855 m!3458493))

(declare-fun m!3458919 () Bool)

(assert (=> b!3197856 m!3458919))

(assert (=> b!3197405 d!874737))

(declare-fun b!3197859 () Bool)

(declare-fun res!1301165 () Bool)

(declare-fun e!1993597 () Bool)

(assert (=> b!3197859 (=> res!1301165 e!1993597)))

(assert (=> b!3197859 (= res!1301165 (not ((_ is ElementMatch!9951) (regex!5192 lt!1077697))))))

(declare-fun e!1993596 () Bool)

(assert (=> b!3197859 (= e!1993596 e!1993597)))

(declare-fun b!3197860 () Bool)

(declare-fun e!1993595 () Bool)

(assert (=> b!3197860 (= e!1993597 e!1993595)))

(declare-fun res!1301166 () Bool)

(assert (=> b!3197860 (=> (not res!1301166) (not e!1993595))))

(declare-fun lt!1077851 () Bool)

(assert (=> b!3197860 (= res!1301166 (not lt!1077851))))

(declare-fun b!3197861 () Bool)

(declare-fun res!1301168 () Bool)

(declare-fun e!1993592 () Bool)

(assert (=> b!3197861 (=> res!1301168 e!1993592)))

(assert (=> b!3197861 (= res!1301168 (not (isEmpty!20133 (tail!5199 lt!1077706))))))

(declare-fun b!3197862 () Bool)

(declare-fun e!1993591 () Bool)

(assert (=> b!3197862 (= e!1993591 e!1993596)))

(declare-fun c!536829 () Bool)

(assert (=> b!3197862 (= c!536829 ((_ is EmptyLang!9951) (regex!5192 lt!1077697)))))

(declare-fun b!3197863 () Bool)

(declare-fun e!1993594 () Bool)

(assert (=> b!3197863 (= e!1993594 (matchR!4585 (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706)) (tail!5199 lt!1077706)))))

(declare-fun d!874741 () Bool)

(assert (=> d!874741 e!1993591))

(declare-fun c!536830 () Bool)

(assert (=> d!874741 (= c!536830 ((_ is EmptyExpr!9951) (regex!5192 lt!1077697)))))

(assert (=> d!874741 (= lt!1077851 e!1993594)))

(declare-fun c!536831 () Bool)

(assert (=> d!874741 (= c!536831 (isEmpty!20133 lt!1077706))))

(assert (=> d!874741 (validRegex!4544 (regex!5192 lt!1077697))))

(assert (=> d!874741 (= (matchR!4585 (regex!5192 lt!1077697) lt!1077706) lt!1077851)))

(declare-fun b!3197864 () Bool)

(declare-fun e!1993593 () Bool)

(assert (=> b!3197864 (= e!1993593 (= (head!7005 lt!1077706) (c!536748 (regex!5192 lt!1077697))))))

(declare-fun b!3197865 () Bool)

(assert (=> b!3197865 (= e!1993596 (not lt!1077851))))

(declare-fun b!3197866 () Bool)

(declare-fun res!1301167 () Bool)

(assert (=> b!3197866 (=> (not res!1301167) (not e!1993593))))

(declare-fun call!231585 () Bool)

(assert (=> b!3197866 (= res!1301167 (not call!231585))))

(declare-fun b!3197867 () Bool)

(assert (=> b!3197867 (= e!1993594 (nullable!3392 (regex!5192 lt!1077697)))))

(declare-fun b!3197868 () Bool)

(assert (=> b!3197868 (= e!1993591 (= lt!1077851 call!231585))))

(declare-fun bm!231580 () Bool)

(assert (=> bm!231580 (= call!231585 (isEmpty!20133 lt!1077706))))

(declare-fun b!3197869 () Bool)

(declare-fun res!1301164 () Bool)

(assert (=> b!3197869 (=> (not res!1301164) (not e!1993593))))

(assert (=> b!3197869 (= res!1301164 (isEmpty!20133 (tail!5199 lt!1077706)))))

(declare-fun b!3197870 () Bool)

(declare-fun res!1301171 () Bool)

(assert (=> b!3197870 (=> res!1301171 e!1993597)))

(assert (=> b!3197870 (= res!1301171 e!1993593)))

(declare-fun res!1301170 () Bool)

(assert (=> b!3197870 (=> (not res!1301170) (not e!1993593))))

(assert (=> b!3197870 (= res!1301170 lt!1077851)))

(declare-fun b!3197871 () Bool)

(assert (=> b!3197871 (= e!1993595 e!1993592)))

(declare-fun res!1301169 () Bool)

(assert (=> b!3197871 (=> res!1301169 e!1993592)))

(assert (=> b!3197871 (= res!1301169 call!231585)))

(declare-fun b!3197872 () Bool)

(assert (=> b!3197872 (= e!1993592 (not (= (head!7005 lt!1077706) (c!536748 (regex!5192 lt!1077697)))))))

(assert (= (and d!874741 c!536831) b!3197867))

(assert (= (and d!874741 (not c!536831)) b!3197863))

(assert (= (and d!874741 c!536830) b!3197868))

(assert (= (and d!874741 (not c!536830)) b!3197862))

(assert (= (and b!3197862 c!536829) b!3197865))

(assert (= (and b!3197862 (not c!536829)) b!3197859))

(assert (= (and b!3197859 (not res!1301165)) b!3197870))

(assert (= (and b!3197870 res!1301170) b!3197866))

(assert (= (and b!3197866 res!1301167) b!3197869))

(assert (= (and b!3197869 res!1301164) b!3197864))

(assert (= (and b!3197870 (not res!1301171)) b!3197860))

(assert (= (and b!3197860 res!1301166) b!3197871))

(assert (= (and b!3197871 (not res!1301169)) b!3197861))

(assert (= (and b!3197861 (not res!1301168)) b!3197872))

(assert (= (or b!3197868 b!3197866 b!3197871) bm!231580))

(declare-fun m!3458931 () Bool)

(assert (=> b!3197867 m!3458931))

(declare-fun m!3458933 () Bool)

(assert (=> b!3197861 m!3458933))

(assert (=> b!3197861 m!3458933))

(declare-fun m!3458935 () Bool)

(assert (=> b!3197861 m!3458935))

(declare-fun m!3458937 () Bool)

(assert (=> b!3197864 m!3458937))

(assert (=> b!3197872 m!3458937))

(assert (=> b!3197863 m!3458937))

(assert (=> b!3197863 m!3458937))

(declare-fun m!3458939 () Bool)

(assert (=> b!3197863 m!3458939))

(assert (=> b!3197863 m!3458933))

(assert (=> b!3197863 m!3458939))

(assert (=> b!3197863 m!3458933))

(declare-fun m!3458941 () Bool)

(assert (=> b!3197863 m!3458941))

(assert (=> b!3197869 m!3458933))

(assert (=> b!3197869 m!3458933))

(assert (=> b!3197869 m!3458935))

(declare-fun m!3458943 () Bool)

(assert (=> d!874741 m!3458943))

(declare-fun m!3458945 () Bool)

(assert (=> d!874741 m!3458945))

(assert (=> bm!231580 m!3458943))

(assert (=> b!3197403 d!874741))

(declare-fun d!874747 () Bool)

(assert (=> d!874747 (= (get!11463 lt!1077689) (v!35596 lt!1077689))))

(assert (=> b!3197403 d!874747))

(declare-fun d!874749 () Bool)

(declare-fun c!536842 () Bool)

(assert (=> d!874749 (= c!536842 ((_ is Cons!36044) tokens!494))))

(declare-fun e!1993608 () List!36167)

(assert (=> d!874749 (= (printWithSeparatorTokenList!126 thiss!18206 tokens!494 separatorToken!241) e!1993608)))

(declare-fun b!3197893 () Bool)

(assert (=> b!3197893 (= e!1993608 (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241)))))

(declare-fun b!3197894 () Bool)

(assert (=> b!3197894 (= e!1993608 Nil!36043)))

(assert (= (and d!874749 c!536842) b!3197893))

(assert (= (and d!874749 (not c!536842)) b!3197894))

(assert (=> b!3197893 m!3458295))

(assert (=> b!3197893 m!3458371))

(declare-fun m!3458947 () Bool)

(assert (=> b!3197893 m!3458947))

(assert (=> b!3197893 m!3458367))

(assert (=> b!3197893 m!3458947))

(assert (=> b!3197893 m!3458367))

(declare-fun m!3458949 () Bool)

(assert (=> b!3197893 m!3458949))

(assert (=> b!3197893 m!3458293))

(assert (=> b!3197893 m!3458295))

(assert (=> b!3197893 m!3458363))

(assert (=> b!3197893 m!3458363))

(assert (=> b!3197893 m!3458371))

(assert (=> b!3197893 m!3458293))

(assert (=> b!3197402 d!874749))

(declare-fun d!874751 () Bool)

(declare-fun e!1993609 () Bool)

(assert (=> d!874751 e!1993609))

(declare-fun res!1301172 () Bool)

(assert (=> d!874751 (=> (not res!1301172) (not e!1993609))))

(declare-fun lt!1077852 () List!36167)

(assert (=> d!874751 (= res!1301172 (= (content!4869 lt!1077852) ((_ map or) (content!4869 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) (content!4869 lt!1077696))))))

(declare-fun e!1993610 () List!36167)

(assert (=> d!874751 (= lt!1077852 e!1993610)))

(declare-fun c!536843 () Bool)

(assert (=> d!874751 (= c!536843 ((_ is Nil!36043) (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))

(assert (=> d!874751 (= (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696) lt!1077852)))

(declare-fun b!3197897 () Bool)

(declare-fun res!1301173 () Bool)

(assert (=> b!3197897 (=> (not res!1301173) (not e!1993609))))

(assert (=> b!3197897 (= res!1301173 (= (size!27145 lt!1077852) (+ (size!27145 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) (size!27145 lt!1077696))))))

(declare-fun b!3197896 () Bool)

(assert (=> b!3197896 (= e!1993610 (Cons!36043 (h!41463 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) (++!8630 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) lt!1077696)))))

(declare-fun b!3197898 () Bool)

(assert (=> b!3197898 (= e!1993609 (or (not (= lt!1077696 Nil!36043)) (= lt!1077852 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))))))

(declare-fun b!3197895 () Bool)

(assert (=> b!3197895 (= e!1993610 lt!1077696)))

(assert (= (and d!874751 c!536843) b!3197895))

(assert (= (and d!874751 (not c!536843)) b!3197896))

(assert (= (and d!874751 res!1301172) b!3197897))

(assert (= (and b!3197897 res!1301173) b!3197898))

(declare-fun m!3458951 () Bool)

(assert (=> d!874751 m!3458951))

(assert (=> d!874751 m!3458357))

(declare-fun m!3458953 () Bool)

(assert (=> d!874751 m!3458953))

(declare-fun m!3458955 () Bool)

(assert (=> d!874751 m!3458955))

(declare-fun m!3458957 () Bool)

(assert (=> b!3197897 m!3458957))

(assert (=> b!3197897 m!3458357))

(declare-fun m!3458959 () Bool)

(assert (=> b!3197897 m!3458959))

(declare-fun m!3458961 () Bool)

(assert (=> b!3197897 m!3458961))

(declare-fun m!3458963 () Bool)

(assert (=> b!3197896 m!3458963))

(assert (=> b!3197402 d!874751))

(declare-fun d!874753 () Bool)

(declare-fun e!1993611 () Bool)

(assert (=> d!874753 e!1993611))

(declare-fun res!1301174 () Bool)

(assert (=> d!874753 (=> (not res!1301174) (not e!1993611))))

(declare-fun lt!1077853 () List!36167)

(assert (=> d!874753 (= res!1301174 (= (content!4869 lt!1077853) ((_ map or) (content!4869 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) (content!4869 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(declare-fun e!1993612 () List!36167)

(assert (=> d!874753 (= lt!1077853 e!1993612)))

(declare-fun c!536844 () Bool)

(assert (=> d!874753 (= c!536844 ((_ is Nil!36043) (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)))))

(assert (=> d!874753 (= (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)) lt!1077853)))

(declare-fun b!3197901 () Bool)

(declare-fun res!1301175 () Bool)

(assert (=> b!3197901 (=> (not res!1301175) (not e!1993611))))

(assert (=> b!3197901 (= res!1301175 (= (size!27145 lt!1077853) (+ (size!27145 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) (size!27145 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(declare-fun b!3197900 () Bool)

(assert (=> b!3197900 (= e!1993612 (Cons!36043 (h!41463 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) (++!8630 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241))))))

(declare-fun b!3197902 () Bool)

(assert (=> b!3197902 (= e!1993611 (or (not (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241) Nil!36043)) (= lt!1077853 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696))))))

(declare-fun b!3197899 () Bool)

(assert (=> b!3197899 (= e!1993612 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241))))

(assert (= (and d!874753 c!536844) b!3197899))

(assert (= (and d!874753 (not c!536844)) b!3197900))

(assert (= (and d!874753 res!1301174) b!3197901))

(assert (= (and b!3197901 res!1301175) b!3197902))

(declare-fun m!3458965 () Bool)

(assert (=> d!874753 m!3458965))

(assert (=> d!874753 m!3458359))

(declare-fun m!3458967 () Bool)

(assert (=> d!874753 m!3458967))

(assert (=> d!874753 m!3458369))

(declare-fun m!3458969 () Bool)

(assert (=> d!874753 m!3458969))

(declare-fun m!3458971 () Bool)

(assert (=> b!3197901 m!3458971))

(assert (=> b!3197901 m!3458359))

(declare-fun m!3458973 () Bool)

(assert (=> b!3197901 m!3458973))

(assert (=> b!3197901 m!3458369))

(declare-fun m!3458975 () Bool)

(assert (=> b!3197901 m!3458975))

(assert (=> b!3197900 m!3458369))

(declare-fun m!3458977 () Bool)

(assert (=> b!3197900 m!3458977))

(assert (=> b!3197402 d!874753))

(declare-fun d!874755 () Bool)

(declare-fun lt!1077854 () BalanceConc!21132)

(assert (=> d!874755 (= (list!12809 lt!1077854) (originalCharacters!5906 separatorToken!241))))

(assert (=> d!874755 (= lt!1077854 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))))

(assert (=> d!874755 (= (charsOf!3208 separatorToken!241) lt!1077854)))

(declare-fun b_lambda!87337 () Bool)

(assert (=> (not b_lambda!87337) (not d!874755)))

(assert (=> d!874755 t!237033))

(declare-fun b_and!212389 () Bool)

(assert (= b_and!212383 (and (=> t!237033 result!198744) b_and!212389)))

(assert (=> d!874755 t!237035))

(declare-fun b_and!212391 () Bool)

(assert (= b_and!212385 (and (=> t!237035 result!198746) b_and!212391)))

(assert (=> d!874755 t!237037))

(declare-fun b_and!212393 () Bool)

(assert (= b_and!212387 (and (=> t!237037 result!198748) b_and!212393)))

(declare-fun m!3458979 () Bool)

(assert (=> d!874755 m!3458979))

(assert (=> d!874755 m!3458783))

(assert (=> b!3197402 d!874755))

(declare-fun d!874757 () Bool)

(declare-fun c!536849 () Bool)

(assert (=> d!874757 (= c!536849 ((_ is Cons!36044) (t!236995 (t!236995 tokens!494))))))

(declare-fun e!1993617 () List!36167)

(assert (=> d!874757 (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241) e!1993617)))

(declare-fun b!3197911 () Bool)

(assert (=> b!3197911 (= e!1993617 (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241)))))

(declare-fun b!3197912 () Bool)

(assert (=> b!3197912 (= e!1993617 Nil!36043)))

(assert (= (and d!874757 c!536849) b!3197911))

(assert (= (and d!874757 (not c!536849)) b!3197912))

(declare-fun m!3458981 () Bool)

(assert (=> b!3197911 m!3458981))

(assert (=> b!3197911 m!3458371))

(declare-fun m!3458983 () Bool)

(assert (=> b!3197911 m!3458983))

(declare-fun m!3458985 () Bool)

(assert (=> b!3197911 m!3458985))

(assert (=> b!3197911 m!3458983))

(assert (=> b!3197911 m!3458985))

(declare-fun m!3458993 () Bool)

(assert (=> b!3197911 m!3458993))

(declare-fun m!3458995 () Bool)

(assert (=> b!3197911 m!3458995))

(assert (=> b!3197911 m!3458981))

(assert (=> b!3197911 m!3458363))

(assert (=> b!3197911 m!3458363))

(assert (=> b!3197911 m!3458371))

(assert (=> b!3197911 m!3458995))

(assert (=> b!3197402 d!874757))

(declare-fun d!874761 () Bool)

(declare-fun c!536850 () Bool)

(assert (=> d!874761 (= c!536850 ((_ is Cons!36044) (t!236995 tokens!494)))))

(declare-fun e!1993618 () List!36167)

(assert (=> d!874761 (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241) e!1993618)))

(declare-fun b!3197913 () Bool)

(assert (=> b!3197913 (= e!1993618 (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))

(declare-fun b!3197914 () Bool)

(assert (=> b!3197914 (= e!1993618 Nil!36043)))

(assert (= (and d!874761 c!536850) b!3197913))

(assert (= (and d!874761 (not c!536850)) b!3197914))

(assert (=> b!3197913 m!3458357))

(assert (=> b!3197913 m!3458371))

(declare-fun m!3458999 () Bool)

(assert (=> b!3197913 m!3458999))

(assert (=> b!3197913 m!3458369))

(assert (=> b!3197913 m!3458999))

(assert (=> b!3197913 m!3458369))

(declare-fun m!3459001 () Bool)

(assert (=> b!3197913 m!3459001))

(assert (=> b!3197913 m!3458361))

(assert (=> b!3197913 m!3458357))

(assert (=> b!3197913 m!3458363))

(assert (=> b!3197913 m!3458363))

(assert (=> b!3197913 m!3458371))

(assert (=> b!3197913 m!3458361))

(assert (=> b!3197402 d!874761))

(declare-fun d!874765 () Bool)

(assert (=> d!874765 (= (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12813 (c!536749 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))

(declare-fun bs!540700 () Bool)

(assert (= bs!540700 d!874765))

(declare-fun m!3459003 () Bool)

(assert (=> bs!540700 m!3459003))

(assert (=> b!3197402 d!874765))

(declare-fun d!874767 () Bool)

(declare-fun e!1993619 () Bool)

(assert (=> d!874767 e!1993619))

(declare-fun res!1301176 () Bool)

(assert (=> d!874767 (=> (not res!1301176) (not e!1993619))))

(declare-fun lt!1077855 () List!36167)

(assert (=> d!874767 (= res!1301176 (= (content!4869 lt!1077855) ((_ map or) (content!4869 lt!1077696) (content!4869 lt!1077693))))))

(declare-fun e!1993620 () List!36167)

(assert (=> d!874767 (= lt!1077855 e!1993620)))

(declare-fun c!536851 () Bool)

(assert (=> d!874767 (= c!536851 ((_ is Nil!36043) lt!1077696))))

(assert (=> d!874767 (= (++!8630 lt!1077696 lt!1077693) lt!1077855)))

(declare-fun b!3197917 () Bool)

(declare-fun res!1301177 () Bool)

(assert (=> b!3197917 (=> (not res!1301177) (not e!1993619))))

(assert (=> b!3197917 (= res!1301177 (= (size!27145 lt!1077855) (+ (size!27145 lt!1077696) (size!27145 lt!1077693))))))

(declare-fun b!3197916 () Bool)

(assert (=> b!3197916 (= e!1993620 (Cons!36043 (h!41463 lt!1077696) (++!8630 (t!236994 lt!1077696) lt!1077693)))))

(declare-fun b!3197918 () Bool)

(assert (=> b!3197918 (= e!1993619 (or (not (= lt!1077693 Nil!36043)) (= lt!1077855 lt!1077696)))))

(declare-fun b!3197915 () Bool)

(assert (=> b!3197915 (= e!1993620 lt!1077693)))

(assert (= (and d!874767 c!536851) b!3197915))

(assert (= (and d!874767 (not c!536851)) b!3197916))

(assert (= (and d!874767 res!1301176) b!3197917))

(assert (= (and b!3197917 res!1301177) b!3197918))

(declare-fun m!3459005 () Bool)

(assert (=> d!874767 m!3459005))

(assert (=> d!874767 m!3458955))

(declare-fun m!3459007 () Bool)

(assert (=> d!874767 m!3459007))

(declare-fun m!3459009 () Bool)

(assert (=> b!3197917 m!3459009))

(assert (=> b!3197917 m!3458961))

(declare-fun m!3459011 () Bool)

(assert (=> b!3197917 m!3459011))

(declare-fun m!3459013 () Bool)

(assert (=> b!3197916 m!3459013))

(assert (=> b!3197402 d!874767))

(declare-fun d!874769 () Bool)

(assert (=> d!874769 (= (list!12809 (charsOf!3208 separatorToken!241)) (list!12813 (c!536749 (charsOf!3208 separatorToken!241))))))

(declare-fun bs!540701 () Bool)

(assert (= bs!540701 d!874769))

(declare-fun m!3459015 () Bool)

(assert (=> bs!540701 m!3459015))

(assert (=> b!3197402 d!874769))

(declare-fun d!874771 () Bool)

(declare-fun lt!1077858 () BalanceConc!21132)

(assert (=> d!874771 (= (list!12809 lt!1077858) (originalCharacters!5906 (h!41464 (t!236995 tokens!494))))))

(assert (=> d!874771 (= lt!1077858 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))))

(assert (=> d!874771 (= (charsOf!3208 (h!41464 (t!236995 tokens!494))) lt!1077858)))

(declare-fun b_lambda!87339 () Bool)

(assert (=> (not b_lambda!87339) (not d!874771)))

(declare-fun tb!156487 () Bool)

(declare-fun t!237046 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) t!237046) tb!156487))

(declare-fun b!3197923 () Bool)

(declare-fun e!1993625 () Bool)

(declare-fun tp!1010938 () Bool)

(assert (=> b!3197923 (= e!1993625 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))) tp!1010938))))

(declare-fun result!198750 () Bool)

(assert (=> tb!156487 (= result!198750 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))) e!1993625))))

(assert (= tb!156487 b!3197923))

(declare-fun m!3459017 () Bool)

(assert (=> b!3197923 m!3459017))

(declare-fun m!3459019 () Bool)

(assert (=> tb!156487 m!3459019))

(assert (=> d!874771 t!237046))

(declare-fun b_and!212395 () Bool)

(assert (= b_and!212389 (and (=> t!237046 result!198750) b_and!212395)))

(declare-fun t!237048 () Bool)

(declare-fun tb!156489 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) t!237048) tb!156489))

(declare-fun result!198752 () Bool)

(assert (= result!198752 result!198750))

(assert (=> d!874771 t!237048))

(declare-fun b_and!212397 () Bool)

(assert (= b_and!212391 (and (=> t!237048 result!198752) b_and!212397)))

(declare-fun tb!156491 () Bool)

(declare-fun t!237050 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) t!237050) tb!156491))

(declare-fun result!198754 () Bool)

(assert (= result!198754 result!198750))

(assert (=> d!874771 t!237050))

(declare-fun b_and!212399 () Bool)

(assert (= b_and!212393 (and (=> t!237050 result!198754) b_and!212399)))

(declare-fun m!3459021 () Bool)

(assert (=> d!874771 m!3459021))

(declare-fun m!3459023 () Bool)

(assert (=> d!874771 m!3459023))

(assert (=> b!3197402 d!874771))

(declare-fun b!3197938 () Bool)

(declare-fun e!1993639 () Bool)

(declare-fun inv!17 (TokenValue!5422) Bool)

(assert (=> b!3197938 (= e!1993639 (inv!17 (value!168432 (h!41464 tokens!494))))))

(declare-fun b!3197939 () Bool)

(declare-fun e!1993637 () Bool)

(assert (=> b!3197939 (= e!1993637 e!1993639)))

(declare-fun c!536856 () Bool)

(assert (=> b!3197939 (= c!536856 ((_ is IntegerValue!16267) (value!168432 (h!41464 tokens!494))))))

(declare-fun b!3197940 () Bool)

(declare-fun res!1301186 () Bool)

(declare-fun e!1993638 () Bool)

(assert (=> b!3197940 (=> res!1301186 e!1993638)))

(assert (=> b!3197940 (= res!1301186 (not ((_ is IntegerValue!16268) (value!168432 (h!41464 tokens!494)))))))

(assert (=> b!3197940 (= e!1993639 e!1993638)))

(declare-fun b!3197941 () Bool)

(declare-fun inv!16 (TokenValue!5422) Bool)

(assert (=> b!3197941 (= e!1993637 (inv!16 (value!168432 (h!41464 tokens!494))))))

(declare-fun b!3197942 () Bool)

(declare-fun inv!15 (TokenValue!5422) Bool)

(assert (=> b!3197942 (= e!1993638 (inv!15 (value!168432 (h!41464 tokens!494))))))

(declare-fun d!874773 () Bool)

(declare-fun c!536857 () Bool)

(assert (=> d!874773 (= c!536857 ((_ is IntegerValue!16266) (value!168432 (h!41464 tokens!494))))))

(assert (=> d!874773 (= (inv!21 (value!168432 (h!41464 tokens!494))) e!1993637)))

(assert (= (and d!874773 c!536857) b!3197941))

(assert (= (and d!874773 (not c!536857)) b!3197939))

(assert (= (and b!3197939 c!536856) b!3197938))

(assert (= (and b!3197939 (not c!536856)) b!3197940))

(assert (= (and b!3197940 (not res!1301186)) b!3197942))

(declare-fun m!3459035 () Bool)

(assert (=> b!3197938 m!3459035))

(declare-fun m!3459037 () Bool)

(assert (=> b!3197941 m!3459037))

(declare-fun m!3459039 () Bool)

(assert (=> b!3197942 m!3459039))

(assert (=> b!3197399 d!874773))

(declare-fun d!874779 () Bool)

(declare-fun e!1993640 () Bool)

(assert (=> d!874779 e!1993640))

(declare-fun res!1301187 () Bool)

(assert (=> d!874779 (=> (not res!1301187) (not e!1993640))))

(declare-fun lt!1077860 () List!36167)

(assert (=> d!874779 (= res!1301187 (= (content!4869 lt!1077860) ((_ map or) (content!4869 (++!8630 lt!1077706 lt!1077696)) (content!4869 lt!1077693))))))

(declare-fun e!1993641 () List!36167)

(assert (=> d!874779 (= lt!1077860 e!1993641)))

(declare-fun c!536858 () Bool)

(assert (=> d!874779 (= c!536858 ((_ is Nil!36043) (++!8630 lt!1077706 lt!1077696)))))

(assert (=> d!874779 (= (++!8630 (++!8630 lt!1077706 lt!1077696) lt!1077693) lt!1077860)))

(declare-fun b!3197945 () Bool)

(declare-fun res!1301188 () Bool)

(assert (=> b!3197945 (=> (not res!1301188) (not e!1993640))))

(assert (=> b!3197945 (= res!1301188 (= (size!27145 lt!1077860) (+ (size!27145 (++!8630 lt!1077706 lt!1077696)) (size!27145 lt!1077693))))))

(declare-fun b!3197944 () Bool)

(assert (=> b!3197944 (= e!1993641 (Cons!36043 (h!41463 (++!8630 lt!1077706 lt!1077696)) (++!8630 (t!236994 (++!8630 lt!1077706 lt!1077696)) lt!1077693)))))

(declare-fun b!3197946 () Bool)

(assert (=> b!3197946 (= e!1993640 (or (not (= lt!1077693 Nil!36043)) (= lt!1077860 (++!8630 lt!1077706 lt!1077696))))))

(declare-fun b!3197943 () Bool)

(assert (=> b!3197943 (= e!1993641 lt!1077693)))

(assert (= (and d!874779 c!536858) b!3197943))

(assert (= (and d!874779 (not c!536858)) b!3197944))

(assert (= (and d!874779 res!1301187) b!3197945))

(assert (= (and b!3197945 res!1301188) b!3197946))

(declare-fun m!3459041 () Bool)

(assert (=> d!874779 m!3459041))

(assert (=> d!874779 m!3458275))

(declare-fun m!3459043 () Bool)

(assert (=> d!874779 m!3459043))

(assert (=> d!874779 m!3459007))

(declare-fun m!3459045 () Bool)

(assert (=> b!3197945 m!3459045))

(assert (=> b!3197945 m!3458275))

(declare-fun m!3459047 () Bool)

(assert (=> b!3197945 m!3459047))

(assert (=> b!3197945 m!3459011))

(declare-fun m!3459049 () Bool)

(assert (=> b!3197944 m!3459049))

(assert (=> b!3197400 d!874779))

(declare-fun d!874781 () Bool)

(declare-fun e!1993642 () Bool)

(assert (=> d!874781 e!1993642))

(declare-fun res!1301189 () Bool)

(assert (=> d!874781 (=> (not res!1301189) (not e!1993642))))

(declare-fun lt!1077861 () List!36167)

(assert (=> d!874781 (= res!1301189 (= (content!4869 lt!1077861) ((_ map or) (content!4869 lt!1077706) (content!4869 lt!1077696))))))

(declare-fun e!1993643 () List!36167)

(assert (=> d!874781 (= lt!1077861 e!1993643)))

(declare-fun c!536859 () Bool)

(assert (=> d!874781 (= c!536859 ((_ is Nil!36043) lt!1077706))))

(assert (=> d!874781 (= (++!8630 lt!1077706 lt!1077696) lt!1077861)))

(declare-fun b!3197949 () Bool)

(declare-fun res!1301190 () Bool)

(assert (=> b!3197949 (=> (not res!1301190) (not e!1993642))))

(assert (=> b!3197949 (= res!1301190 (= (size!27145 lt!1077861) (+ (size!27145 lt!1077706) (size!27145 lt!1077696))))))

(declare-fun b!3197948 () Bool)

(assert (=> b!3197948 (= e!1993643 (Cons!36043 (h!41463 lt!1077706) (++!8630 (t!236994 lt!1077706) lt!1077696)))))

(declare-fun b!3197950 () Bool)

(assert (=> b!3197950 (= e!1993642 (or (not (= lt!1077696 Nil!36043)) (= lt!1077861 lt!1077706)))))

(declare-fun b!3197947 () Bool)

(assert (=> b!3197947 (= e!1993643 lt!1077696)))

(assert (= (and d!874781 c!536859) b!3197947))

(assert (= (and d!874781 (not c!536859)) b!3197948))

(assert (= (and d!874781 res!1301189) b!3197949))

(assert (= (and b!3197949 res!1301190) b!3197950))

(declare-fun m!3459051 () Bool)

(assert (=> d!874781 m!3459051))

(assert (=> d!874781 m!3458389))

(assert (=> d!874781 m!3458955))

(declare-fun m!3459053 () Bool)

(assert (=> b!3197949 m!3459053))

(assert (=> b!3197949 m!3458337))

(assert (=> b!3197949 m!3458961))

(declare-fun m!3459055 () Bool)

(assert (=> b!3197948 m!3459055))

(assert (=> b!3197400 d!874781))

(declare-fun b!3197951 () Bool)

(declare-fun e!1993646 () Bool)

(assert (=> b!3197951 (= e!1993646 (inv!17 (value!168432 separatorToken!241)))))

(declare-fun b!3197952 () Bool)

(declare-fun e!1993644 () Bool)

(assert (=> b!3197952 (= e!1993644 e!1993646)))

(declare-fun c!536860 () Bool)

(assert (=> b!3197952 (= c!536860 ((_ is IntegerValue!16267) (value!168432 separatorToken!241)))))

(declare-fun b!3197953 () Bool)

(declare-fun res!1301191 () Bool)

(declare-fun e!1993645 () Bool)

(assert (=> b!3197953 (=> res!1301191 e!1993645)))

(assert (=> b!3197953 (= res!1301191 (not ((_ is IntegerValue!16268) (value!168432 separatorToken!241))))))

(assert (=> b!3197953 (= e!1993646 e!1993645)))

(declare-fun b!3197954 () Bool)

(assert (=> b!3197954 (= e!1993644 (inv!16 (value!168432 separatorToken!241)))))

(declare-fun b!3197955 () Bool)

(assert (=> b!3197955 (= e!1993645 (inv!15 (value!168432 separatorToken!241)))))

(declare-fun d!874783 () Bool)

(declare-fun c!536861 () Bool)

(assert (=> d!874783 (= c!536861 ((_ is IntegerValue!16266) (value!168432 separatorToken!241)))))

(assert (=> d!874783 (= (inv!21 (value!168432 separatorToken!241)) e!1993644)))

(assert (= (and d!874783 c!536861) b!3197954))

(assert (= (and d!874783 (not c!536861)) b!3197952))

(assert (= (and b!3197952 c!536860) b!3197951))

(assert (= (and b!3197952 (not c!536860)) b!3197953))

(assert (= (and b!3197953 (not res!1301191)) b!3197955))

(declare-fun m!3459057 () Bool)

(assert (=> b!3197951 m!3459057))

(declare-fun m!3459059 () Bool)

(assert (=> b!3197954 m!3459059))

(declare-fun m!3459061 () Bool)

(assert (=> b!3197955 m!3459061))

(assert (=> b!3197398 d!874783))

(declare-fun d!874785 () Bool)

(assert (=> d!874785 (= (isEmpty!20131 rules!2135) ((_ is Nil!36045) rules!2135))))

(assert (=> b!3197397 d!874785))

(declare-fun d!874787 () Bool)

(declare-fun lt!1077863 () Bool)

(declare-fun e!1993647 () Bool)

(assert (=> d!874787 (= lt!1077863 e!1993647)))

(declare-fun res!1301194 () Bool)

(assert (=> d!874787 (=> (not res!1301194) (not e!1993647))))

(assert (=> d!874787 (= res!1301194 (= (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)))))) (list!12810 (singletonSeq!2288 (h!41464 tokens!494)))))))

(declare-fun e!1993648 () Bool)

(assert (=> d!874787 (= lt!1077863 e!1993648)))

(declare-fun res!1301192 () Bool)

(assert (=> d!874787 (=> (not res!1301192) (not e!1993648))))

(declare-fun lt!1077862 () tuple2!35410)

(assert (=> d!874787 (= res!1301192 (= (size!27146 (_1!20839 lt!1077862)) 1))))

(assert (=> d!874787 (= lt!1077862 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)))))))

(assert (=> d!874787 (not (isEmpty!20131 rules!2135))))

(assert (=> d!874787 (= (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 (h!41464 tokens!494)) lt!1077863)))

(declare-fun b!3197956 () Bool)

(declare-fun res!1301193 () Bool)

(assert (=> b!3197956 (=> (not res!1301193) (not e!1993648))))

(assert (=> b!3197956 (= res!1301193 (= (apply!8123 (_1!20839 lt!1077862) 0) (h!41464 tokens!494)))))

(declare-fun b!3197957 () Bool)

(assert (=> b!3197957 (= e!1993648 (isEmpty!20132 (_2!20839 lt!1077862)))))

(declare-fun b!3197958 () Bool)

(assert (=> b!3197958 (= e!1993647 (isEmpty!20132 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)))))))))

(assert (= (and d!874787 res!1301192) b!3197956))

(assert (= (and b!3197956 res!1301193) b!3197957))

(assert (= (and d!874787 res!1301194) b!3197958))

(declare-fun m!3459063 () Bool)

(assert (=> d!874787 m!3459063))

(declare-fun m!3459065 () Bool)

(assert (=> d!874787 m!3459065))

(assert (=> d!874787 m!3458291))

(declare-fun m!3459067 () Bool)

(assert (=> d!874787 m!3459067))

(declare-fun m!3459069 () Bool)

(assert (=> d!874787 m!3459069))

(assert (=> d!874787 m!3458343))

(assert (=> d!874787 m!3459063))

(assert (=> d!874787 m!3458343))

(assert (=> d!874787 m!3458343))

(declare-fun m!3459071 () Bool)

(assert (=> d!874787 m!3459071))

(declare-fun m!3459073 () Bool)

(assert (=> b!3197956 m!3459073))

(declare-fun m!3459075 () Bool)

(assert (=> b!3197957 m!3459075))

(assert (=> b!3197958 m!3458343))

(assert (=> b!3197958 m!3458343))

(assert (=> b!3197958 m!3459063))

(assert (=> b!3197958 m!3459063))

(assert (=> b!3197958 m!3459065))

(declare-fun m!3459077 () Bool)

(assert (=> b!3197958 m!3459077))

(assert (=> b!3197395 d!874787))

(declare-fun d!874789 () Bool)

(declare-fun lt!1077870 () BalanceConc!21132)

(assert (=> d!874789 (= (list!12809 lt!1077870) (printList!1331 thiss!18206 (list!12810 lt!1077704)))))

(assert (=> d!874789 (= lt!1077870 (printTailRec!1278 thiss!18206 lt!1077704 0 (BalanceConc!21133 Empty!10759)))))

(assert (=> d!874789 (= (print!1846 thiss!18206 lt!1077704) lt!1077870)))

(declare-fun bs!540703 () Bool)

(assert (= bs!540703 d!874789))

(declare-fun m!3459099 () Bool)

(assert (=> bs!540703 m!3459099))

(declare-fun m!3459101 () Bool)

(assert (=> bs!540703 m!3459101))

(assert (=> bs!540703 m!3459101))

(declare-fun m!3459103 () Bool)

(assert (=> bs!540703 m!3459103))

(assert (=> bs!540703 m!3458349))

(assert (=> b!3197396 d!874789))

(declare-fun d!874797 () Bool)

(assert (=> d!874797 (= (list!12809 lt!1077700) (list!12813 (c!536749 lt!1077700)))))

(declare-fun bs!540704 () Bool)

(assert (= bs!540704 d!874797))

(declare-fun m!3459105 () Bool)

(assert (=> bs!540704 m!3459105))

(assert (=> b!3197396 d!874797))

(declare-fun d!874799 () Bool)

(declare-fun lt!1077892 () BalanceConc!21132)

(declare-fun printListTailRec!554 (LexerInterface!4781 List!36168 List!36167) List!36167)

(declare-fun dropList!1071 (BalanceConc!21134 Int) List!36168)

(assert (=> d!874799 (= (list!12809 lt!1077892) (printListTailRec!554 thiss!18206 (dropList!1071 lt!1077704 0) (list!12809 (BalanceConc!21133 Empty!10759))))))

(declare-fun e!1993673 () BalanceConc!21132)

(assert (=> d!874799 (= lt!1077892 e!1993673)))

(declare-fun c!536873 () Bool)

(assert (=> d!874799 (= c!536873 (>= 0 (size!27146 lt!1077704)))))

(declare-fun e!1993674 () Bool)

(assert (=> d!874799 e!1993674))

(declare-fun res!1301213 () Bool)

(assert (=> d!874799 (=> (not res!1301213) (not e!1993674))))

(assert (=> d!874799 (= res!1301213 (>= 0 0))))

(assert (=> d!874799 (= (printTailRec!1278 thiss!18206 lt!1077704 0 (BalanceConc!21133 Empty!10759)) lt!1077892)))

(declare-fun b!3197999 () Bool)

(assert (=> b!3197999 (= e!1993674 (<= 0 (size!27146 lt!1077704)))))

(declare-fun b!3198000 () Bool)

(assert (=> b!3198000 (= e!1993673 (BalanceConc!21133 Empty!10759))))

(declare-fun b!3198001 () Bool)

(declare-fun ++!8631 (BalanceConc!21132 BalanceConc!21132) BalanceConc!21132)

(assert (=> b!3198001 (= e!1993673 (printTailRec!1278 thiss!18206 lt!1077704 (+ 0 1) (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (apply!8123 lt!1077704 0)))))))

(declare-fun lt!1077887 () List!36168)

(assert (=> b!3198001 (= lt!1077887 (list!12810 lt!1077704))))

(declare-fun lt!1077888 () Unit!50442)

(declare-fun lemmaDropApply!1030 (List!36168 Int) Unit!50442)

(assert (=> b!3198001 (= lt!1077888 (lemmaDropApply!1030 lt!1077887 0))))

(declare-fun head!7006 (List!36168) Token!9750)

(declare-fun drop!1854 (List!36168 Int) List!36168)

(declare-fun apply!8125 (List!36168 Int) Token!9750)

(assert (=> b!3198001 (= (head!7006 (drop!1854 lt!1077887 0)) (apply!8125 lt!1077887 0))))

(declare-fun lt!1077886 () Unit!50442)

(assert (=> b!3198001 (= lt!1077886 lt!1077888)))

(declare-fun lt!1077890 () List!36168)

(assert (=> b!3198001 (= lt!1077890 (list!12810 lt!1077704))))

(declare-fun lt!1077889 () Unit!50442)

(declare-fun lemmaDropTail!914 (List!36168 Int) Unit!50442)

(assert (=> b!3198001 (= lt!1077889 (lemmaDropTail!914 lt!1077890 0))))

(declare-fun tail!5200 (List!36168) List!36168)

(assert (=> b!3198001 (= (tail!5200 (drop!1854 lt!1077890 0)) (drop!1854 lt!1077890 (+ 0 1)))))

(declare-fun lt!1077891 () Unit!50442)

(assert (=> b!3198001 (= lt!1077891 lt!1077889)))

(assert (= (and d!874799 res!1301213) b!3197999))

(assert (= (and d!874799 c!536873) b!3198000))

(assert (= (and d!874799 (not c!536873)) b!3198001))

(declare-fun m!3459127 () Bool)

(assert (=> d!874799 m!3459127))

(declare-fun m!3459129 () Bool)

(assert (=> d!874799 m!3459129))

(declare-fun m!3459131 () Bool)

(assert (=> d!874799 m!3459131))

(assert (=> d!874799 m!3459129))

(assert (=> d!874799 m!3459127))

(declare-fun m!3459133 () Bool)

(assert (=> d!874799 m!3459133))

(declare-fun m!3459135 () Bool)

(assert (=> d!874799 m!3459135))

(assert (=> b!3197999 m!3459135))

(declare-fun m!3459137 () Bool)

(assert (=> b!3198001 m!3459137))

(declare-fun m!3459139 () Bool)

(assert (=> b!3198001 m!3459139))

(declare-fun m!3459141 () Bool)

(assert (=> b!3198001 m!3459141))

(assert (=> b!3198001 m!3459137))

(declare-fun m!3459143 () Bool)

(assert (=> b!3198001 m!3459143))

(declare-fun m!3459145 () Bool)

(assert (=> b!3198001 m!3459145))

(declare-fun m!3459147 () Bool)

(assert (=> b!3198001 m!3459147))

(assert (=> b!3198001 m!3459101))

(declare-fun m!3459149 () Bool)

(assert (=> b!3198001 m!3459149))

(declare-fun m!3459151 () Bool)

(assert (=> b!3198001 m!3459151))

(assert (=> b!3198001 m!3459147))

(assert (=> b!3198001 m!3459141))

(assert (=> b!3198001 m!3459145))

(declare-fun m!3459153 () Bool)

(assert (=> b!3198001 m!3459153))

(declare-fun m!3459155 () Bool)

(assert (=> b!3198001 m!3459155))

(declare-fun m!3459157 () Bool)

(assert (=> b!3198001 m!3459157))

(declare-fun m!3459159 () Bool)

(assert (=> b!3198001 m!3459159))

(assert (=> b!3198001 m!3459155))

(assert (=> b!3197396 d!874799))

(declare-fun d!874811 () Bool)

(declare-fun e!1993681 () Bool)

(assert (=> d!874811 e!1993681))

(declare-fun res!1301218 () Bool)

(assert (=> d!874811 (=> (not res!1301218) (not e!1993681))))

(declare-fun lt!1077909 () BalanceConc!21134)

(assert (=> d!874811 (= res!1301218 (= (list!12810 lt!1077909) (Cons!36044 (h!41464 tokens!494) Nil!36044)))))

(declare-fun singleton!987 (Token!9750) BalanceConc!21134)

(assert (=> d!874811 (= lt!1077909 (singleton!987 (h!41464 tokens!494)))))

(assert (=> d!874811 (= (singletonSeq!2288 (h!41464 tokens!494)) lt!1077909)))

(declare-fun b!3198010 () Bool)

(declare-fun isBalanced!3204 (Conc!10760) Bool)

(assert (=> b!3198010 (= e!1993681 (isBalanced!3204 (c!536750 lt!1077909)))))

(assert (= (and d!874811 res!1301218) b!3198010))

(declare-fun m!3459161 () Bool)

(assert (=> d!874811 m!3459161))

(declare-fun m!3459163 () Bool)

(assert (=> d!874811 m!3459163))

(declare-fun m!3459165 () Bool)

(assert (=> b!3198010 m!3459165))

(assert (=> b!3197396 d!874811))

(declare-fun d!874813 () Bool)

(declare-fun c!536879 () Bool)

(assert (=> d!874813 (= c!536879 ((_ is Cons!36044) (Cons!36044 (h!41464 tokens!494) Nil!36044)))))

(declare-fun e!1993686 () List!36167)

(assert (=> d!874813 (= (printList!1331 thiss!18206 (Cons!36044 (h!41464 tokens!494) Nil!36044)) e!1993686)))

(declare-fun b!3198018 () Bool)

(assert (=> b!3198018 (= e!1993686 (++!8630 (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))) (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))))

(declare-fun b!3198019 () Bool)

(assert (=> b!3198019 (= e!1993686 Nil!36043)))

(assert (= (and d!874813 c!536879) b!3198018))

(assert (= (and d!874813 (not c!536879)) b!3198019))

(declare-fun m!3459167 () Bool)

(assert (=> b!3198018 m!3459167))

(assert (=> b!3198018 m!3459167))

(declare-fun m!3459169 () Bool)

(assert (=> b!3198018 m!3459169))

(declare-fun m!3459175 () Bool)

(assert (=> b!3198018 m!3459175))

(assert (=> b!3198018 m!3459169))

(assert (=> b!3198018 m!3459175))

(declare-fun m!3459183 () Bool)

(assert (=> b!3198018 m!3459183))

(assert (=> b!3197396 d!874813))

(declare-fun b!3198024 () Bool)

(declare-fun e!1993689 () Bool)

(declare-fun tp_is_empty!17283 () Bool)

(declare-fun tp!1010941 () Bool)

(assert (=> b!3198024 (= e!1993689 (and tp_is_empty!17283 tp!1010941))))

(assert (=> b!3197399 (= tp!1010925 e!1993689)))

(assert (= (and b!3197399 ((_ is Cons!36043) (originalCharacters!5906 (h!41464 tokens!494)))) b!3198024))

(declare-fun b!3198037 () Bool)

(declare-fun e!1993692 () Bool)

(declare-fun tp!1010953 () Bool)

(assert (=> b!3198037 (= e!1993692 tp!1010953)))

(declare-fun b!3198035 () Bool)

(assert (=> b!3198035 (= e!1993692 tp_is_empty!17283)))

(declare-fun b!3198038 () Bool)

(declare-fun tp!1010954 () Bool)

(declare-fun tp!1010952 () Bool)

(assert (=> b!3198038 (= e!1993692 (and tp!1010954 tp!1010952))))

(declare-fun b!3198036 () Bool)

(declare-fun tp!1010956 () Bool)

(declare-fun tp!1010955 () Bool)

(assert (=> b!3198036 (= e!1993692 (and tp!1010956 tp!1010955))))

(assert (=> b!3197394 (= tp!1010922 e!1993692)))

(assert (= (and b!3197394 ((_ is ElementMatch!9951) (regex!5192 (rule!7626 separatorToken!241)))) b!3198035))

(assert (= (and b!3197394 ((_ is Concat!15373) (regex!5192 (rule!7626 separatorToken!241)))) b!3198036))

(assert (= (and b!3197394 ((_ is Star!9951) (regex!5192 (rule!7626 separatorToken!241)))) b!3198037))

(assert (= (and b!3197394 ((_ is Union!9951) (regex!5192 (rule!7626 separatorToken!241)))) b!3198038))

(declare-fun b!3198049 () Bool)

(declare-fun b_free!84933 () Bool)

(declare-fun b_next!85637 () Bool)

(assert (=> b!3198049 (= b_free!84933 (not b_next!85637))))

(declare-fun t!237059 () Bool)

(declare-fun tb!156499 () Bool)

(assert (=> (and b!3198049 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237059) tb!156499))

(declare-fun result!198770 () Bool)

(assert (= result!198770 result!198724))

(assert (=> d!874629 t!237059))

(declare-fun b_and!212419 () Bool)

(declare-fun tp!1010966 () Bool)

(assert (=> b!3198049 (= tp!1010966 (and (=> t!237059 result!198770) b_and!212419))))

(declare-fun b_free!84935 () Bool)

(declare-fun b_next!85639 () Bool)

(assert (=> b!3198049 (= b_free!84935 (not b_next!85639))))

(declare-fun t!237061 () Bool)

(declare-fun tb!156501 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237061) tb!156501))

(declare-fun result!198772 () Bool)

(assert (= result!198772 result!198716))

(assert (=> b!3197471 t!237061))

(declare-fun tb!156503 () Bool)

(declare-fun t!237063 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) t!237063) tb!156503))

(declare-fun result!198774 () Bool)

(assert (= result!198774 result!198744))

(assert (=> b!3197702 t!237063))

(assert (=> d!874705 t!237061))

(assert (=> d!874755 t!237063))

(declare-fun t!237065 () Bool)

(declare-fun tb!156505 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) t!237065) tb!156505))

(declare-fun result!198776 () Bool)

(assert (= result!198776 result!198750))

(assert (=> d!874771 t!237065))

(declare-fun tp!1010968 () Bool)

(declare-fun b_and!212421 () Bool)

(assert (=> b!3198049 (= tp!1010968 (and (=> t!237063 result!198774) (=> t!237061 result!198772) (=> t!237065 result!198776) b_and!212421))))

(declare-fun e!1993702 () Bool)

(assert (=> b!3198049 (= e!1993702 (and tp!1010966 tp!1010968))))

(declare-fun e!1993704 () Bool)

(declare-fun b!3198048 () Bool)

(declare-fun tp!1010965 () Bool)

(assert (=> b!3198048 (= e!1993704 (and tp!1010965 (inv!48890 (tag!5712 (h!41465 (t!236996 rules!2135)))) (inv!48893 (transformation!5192 (h!41465 (t!236996 rules!2135)))) e!1993702))))

(declare-fun b!3198047 () Bool)

(declare-fun e!1993703 () Bool)

(declare-fun tp!1010967 () Bool)

(assert (=> b!3198047 (= e!1993703 (and e!1993704 tp!1010967))))

(assert (=> b!3197416 (= tp!1010921 e!1993703)))

(assert (= b!3198048 b!3198049))

(assert (= b!3198047 b!3198048))

(assert (= (and b!3197416 ((_ is Cons!36045) (t!236996 rules!2135))) b!3198047))

(declare-fun m!3459211 () Bool)

(assert (=> b!3198048 m!3459211))

(declare-fun m!3459213 () Bool)

(assert (=> b!3198048 m!3459213))

(declare-fun b!3198050 () Bool)

(declare-fun e!1993705 () Bool)

(declare-fun tp!1010969 () Bool)

(assert (=> b!3198050 (= e!1993705 (and tp_is_empty!17283 tp!1010969))))

(assert (=> b!3197398 (= tp!1010926 e!1993705)))

(assert (= (and b!3197398 ((_ is Cons!36043) (originalCharacters!5906 separatorToken!241))) b!3198050))

(declare-fun b!3198064 () Bool)

(declare-fun b_free!84937 () Bool)

(declare-fun b_next!85641 () Bool)

(assert (=> b!3198064 (= b_free!84937 (not b_next!85641))))

(declare-fun t!237067 () Bool)

(declare-fun tb!156507 () Bool)

(assert (=> (and b!3198064 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237067) tb!156507))

(declare-fun result!198780 () Bool)

(assert (= result!198780 result!198724))

(assert (=> d!874629 t!237067))

(declare-fun tp!1010984 () Bool)

(declare-fun b_and!212423 () Bool)

(assert (=> b!3198064 (= tp!1010984 (and (=> t!237067 result!198780) b_and!212423))))

(declare-fun b_free!84939 () Bool)

(declare-fun b_next!85643 () Bool)

(assert (=> b!3198064 (= b_free!84939 (not b_next!85643))))

(declare-fun t!237069 () Bool)

(declare-fun tb!156509 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237069) tb!156509))

(declare-fun result!198782 () Bool)

(assert (= result!198782 result!198716))

(assert (=> b!3197471 t!237069))

(declare-fun t!237071 () Bool)

(declare-fun tb!156511 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) t!237071) tb!156511))

(declare-fun result!198784 () Bool)

(assert (= result!198784 result!198744))

(assert (=> b!3197702 t!237071))

(assert (=> d!874705 t!237069))

(assert (=> d!874755 t!237071))

(declare-fun t!237073 () Bool)

(declare-fun tb!156513 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) t!237073) tb!156513))

(declare-fun result!198786 () Bool)

(assert (= result!198786 result!198750))

(assert (=> d!874771 t!237073))

(declare-fun tp!1010982 () Bool)

(declare-fun b_and!212425 () Bool)

(assert (=> b!3198064 (= tp!1010982 (and (=> t!237071 result!198784) (=> t!237069 result!198782) (=> t!237073 result!198786) b_and!212425))))

(declare-fun e!1993722 () Bool)

(assert (=> b!3197393 (= tp!1010927 e!1993722)))

(declare-fun b!3198061 () Bool)

(declare-fun tp!1010983 () Bool)

(declare-fun e!1993718 () Bool)

(assert (=> b!3198061 (= e!1993722 (and (inv!48894 (h!41464 (t!236995 tokens!494))) e!1993718 tp!1010983))))

(declare-fun e!1993723 () Bool)

(assert (=> b!3198064 (= e!1993723 (and tp!1010984 tp!1010982))))

(declare-fun tp!1010980 () Bool)

(declare-fun b!3198063 () Bool)

(declare-fun e!1993720 () Bool)

(assert (=> b!3198063 (= e!1993720 (and tp!1010980 (inv!48890 (tag!5712 (rule!7626 (h!41464 (t!236995 tokens!494))))) (inv!48893 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) e!1993723))))

(declare-fun b!3198062 () Bool)

(declare-fun tp!1010981 () Bool)

(assert (=> b!3198062 (= e!1993718 (and (inv!21 (value!168432 (h!41464 (t!236995 tokens!494)))) e!1993720 tp!1010981))))

(assert (= b!3198063 b!3198064))

(assert (= b!3198062 b!3198063))

(assert (= b!3198061 b!3198062))

(assert (= (and b!3197393 ((_ is Cons!36044) (t!236995 tokens!494))) b!3198061))

(declare-fun m!3459215 () Bool)

(assert (=> b!3198061 m!3459215))

(declare-fun m!3459217 () Bool)

(assert (=> b!3198063 m!3459217))

(declare-fun m!3459219 () Bool)

(assert (=> b!3198063 m!3459219))

(declare-fun m!3459221 () Bool)

(assert (=> b!3198062 m!3459221))

(declare-fun b!3198067 () Bool)

(declare-fun e!1993724 () Bool)

(declare-fun tp!1010986 () Bool)

(assert (=> b!3198067 (= e!1993724 tp!1010986)))

(declare-fun b!3198065 () Bool)

(assert (=> b!3198065 (= e!1993724 tp_is_empty!17283)))

(declare-fun b!3198068 () Bool)

(declare-fun tp!1010987 () Bool)

(declare-fun tp!1010985 () Bool)

(assert (=> b!3198068 (= e!1993724 (and tp!1010987 tp!1010985))))

(declare-fun b!3198066 () Bool)

(declare-fun tp!1010989 () Bool)

(declare-fun tp!1010988 () Bool)

(assert (=> b!3198066 (= e!1993724 (and tp!1010989 tp!1010988))))

(assert (=> b!3197386 (= tp!1010924 e!1993724)))

(assert (= (and b!3197386 ((_ is ElementMatch!9951) (regex!5192 (rule!7626 (h!41464 tokens!494))))) b!3198065))

(assert (= (and b!3197386 ((_ is Concat!15373) (regex!5192 (rule!7626 (h!41464 tokens!494))))) b!3198066))

(assert (= (and b!3197386 ((_ is Star!9951) (regex!5192 (rule!7626 (h!41464 tokens!494))))) b!3198067))

(assert (= (and b!3197386 ((_ is Union!9951) (regex!5192 (rule!7626 (h!41464 tokens!494))))) b!3198068))

(declare-fun b!3198071 () Bool)

(declare-fun e!1993725 () Bool)

(declare-fun tp!1010991 () Bool)

(assert (=> b!3198071 (= e!1993725 tp!1010991)))

(declare-fun b!3198069 () Bool)

(assert (=> b!3198069 (= e!1993725 tp_is_empty!17283)))

(declare-fun b!3198072 () Bool)

(declare-fun tp!1010992 () Bool)

(declare-fun tp!1010990 () Bool)

(assert (=> b!3198072 (= e!1993725 (and tp!1010992 tp!1010990))))

(declare-fun b!3198070 () Bool)

(declare-fun tp!1010994 () Bool)

(declare-fun tp!1010993 () Bool)

(assert (=> b!3198070 (= e!1993725 (and tp!1010994 tp!1010993))))

(assert (=> b!3197413 (= tp!1010919 e!1993725)))

(assert (= (and b!3197413 ((_ is ElementMatch!9951) (regex!5192 (h!41465 rules!2135)))) b!3198069))

(assert (= (and b!3197413 ((_ is Concat!15373) (regex!5192 (h!41465 rules!2135)))) b!3198070))

(assert (= (and b!3197413 ((_ is Star!9951) (regex!5192 (h!41465 rules!2135)))) b!3198071))

(assert (= (and b!3197413 ((_ is Union!9951) (regex!5192 (h!41465 rules!2135)))) b!3198072))

(declare-fun b_lambda!87347 () Bool)

(assert (= b_lambda!87317 (or (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198064 b_free!84939 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197411 b_free!84927) (and b!3197407 b_free!84923 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) b_lambda!87347)))

(declare-fun b_lambda!87349 () Bool)

(assert (= b_lambda!87323 (or (and b!3198049 b_free!84933 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197387 b_free!84929 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197411 b_free!84925) (and b!3197407 b_free!84921 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198064 b_free!84937 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) b_lambda!87349)))

(declare-fun b_lambda!87351 () Bool)

(assert (= b_lambda!87339 (or (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3197411 b_free!84927 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3198064 b_free!84939) (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3197407 b_free!84923 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) b_lambda!87351)))

(declare-fun b_lambda!87353 () Bool)

(assert (= b_lambda!87329 (or (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198064 b_free!84939 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197411 b_free!84927) (and b!3197407 b_free!84923 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) b_lambda!87353)))

(declare-fun b_lambda!87355 () Bool)

(assert (= b_lambda!87335 (or b!3197405 b_lambda!87355)))

(declare-fun bs!540707 () Bool)

(declare-fun d!874817 () Bool)

(assert (= bs!540707 (and d!874817 b!3197405)))

(assert (=> bs!540707 (= (dynLambda!14516 lambda!117051 (h!41464 tokens!494)) (not (isSeparator!5192 (rule!7626 (h!41464 tokens!494)))))))

(assert (=> b!3197855 d!874817))

(declare-fun b_lambda!87357 () Bool)

(assert (= b_lambda!87321 (or b!3197405 b_lambda!87357)))

(assert (=> d!874627 d!874817))

(declare-fun b_lambda!87359 () Bool)

(assert (= b_lambda!87331 (or (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) (and b!3197407 b_free!84923) (and b!3197411 b_free!84927 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) (and b!3198064 b_free!84939 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) b_lambda!87359)))

(declare-fun b_lambda!87361 () Bool)

(assert (= b_lambda!87319 (or b!3197405 b_lambda!87361)))

(declare-fun bs!540709 () Bool)

(declare-fun d!874823 () Bool)

(assert (= bs!540709 (and d!874823 b!3197405)))

(assert (=> bs!540709 (= (dynLambda!14516 lambda!117051 (h!41464 (t!236995 tokens!494))) (not (isSeparator!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))))

(assert (=> d!874625 d!874823))

(declare-fun b_lambda!87363 () Bool)

(assert (= b_lambda!87337 (or (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) (and b!3197407 b_free!84923) (and b!3197411 b_free!84927 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) (and b!3198064 b_free!84939 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))))) b_lambda!87363)))

(check-sat (not b!3197490) (not d!874771) (not b!3198050) (not b!3197957) (not b!3197958) (not b_lambda!87355) (not b_lambda!87351) (not d!874617) (not d!874735) (not d!874741) b_and!212421 (not b_next!85637) (not b!3197867) (not b!3197917) (not b!3198067) (not b!3198047) (not d!874663) (not b!3197673) (not b!3197558) (not b!3197735) (not b!3197481) (not d!874753) (not d!874675) (not b!3197913) b_and!212399 (not b!3197677) (not b!3198071) (not tb!156487) (not b!3197941) (not b!3197945) (not b_next!85625) (not d!874687) (not b!3197938) (not b!3197869) (not b!3197477) (not b!3197589) (not tb!156481) (not b!3197559) (not b!3198024) (not b!3197426) (not d!874811) (not b!3197948) b_and!212425 (not b!3197696) (not b!3198048) (not b!3197486) (not d!874595) (not bm!231579) (not b!3197685) (not b_lambda!87357) (not b!3197580) (not b_lambda!87353) (not b_lambda!87363) (not d!874769) (not b!3197672) (not b!3197746) (not b!3197831) (not d!874621) (not b!3197840) (not d!874597) (not b!3197864) (not b!3197861) (not b_next!85629) (not b!3197923) (not b!3197999) (not d!874779) (not b!3197743) (not b!3198063) (not b!3197487) (not d!874615) b_and!212361 (not d!874685) b_and!212363 (not bm!231570) (not d!874789) (not b!3197942) (not d!874591) (not d!874755) (not d!874625) (not d!874781) b_and!212397 (not b!3197471) (not b!3197702) (not b!3197590) (not d!874689) (not d!874703) (not b_next!85627) b_and!212419 (not b_next!85631) (not b!3197699) (not b!3197896) (not b!3197491) (not b!3198061) (not d!874709) (not b!3197427) (not b!3197738) (not b!3197954) (not d!874669) (not b!3197678) (not b_next!85643) (not b!3198010) (not b!3197900) (not b!3197741) (not b!3197466) (not b_next!85635) (not b!3198062) (not tb!156463) (not d!874707) (not d!874797) (not b!3197956) (not b!3197697) (not d!874751) (not d!874701) (not b!3198036) (not b!3198066) (not b!3197480) (not b_lambda!87359) (not b!3197901) (not d!874765) (not b_lambda!87349) (not b!3197472) (not d!874799) (not b!3197561) (not b!3198072) (not b!3198018) (not d!874695) (not d!874627) (not b!3197951) (not d!874671) (not b!3197560) (not b!3197563) (not b!3197671) (not bm!231572) (not d!874691) (not b!3197944) (not tb!156457) (not b!3197737) (not d!874767) (not b!3197566) (not b!3197679) (not b!3197562) (not bm!231571) (not d!874589) (not b!3197431) (not b_next!85641) b_and!212423 (not b!3197704) (not b!3197911) (not b_lambda!87347) (not b!3197701) (not b!3197872) (not b_next!85633) b_and!212395 (not b!3197464) (not d!874631) (not b!3197949) (not b!3198068) (not bm!231580) (not b_next!85639) b_and!212359 (not b!3197700) (not b!3198001) (not d!874693) (not b!3197863) (not b!3198038) (not d!874665) (not b!3197916) (not b!3198070) (not b!3197703) (not b!3197955) (not b!3197856) (not b!3197564) (not b!3197893) (not b!3197584) (not b_lambda!87361) (not d!874697) (not b!3197897) (not b!3198037) (not b!3197465) (not d!874705) (not d!874787) (not d!874713) tp_is_empty!17283 (not b!3197579))
(check-sat b_and!212399 (not b_next!85625) b_and!212425 (not b_next!85629) b_and!212397 (not b_next!85643) (not b_next!85635) (not b_next!85633) b_and!212395 b_and!212421 (not b_next!85637) b_and!212361 b_and!212363 (not b_next!85627) b_and!212419 (not b_next!85631) (not b_next!85641) b_and!212423 (not b_next!85639) b_and!212359)
(get-model)

(declare-fun d!874845 () Bool)

(assert (=> d!874845 (= (isEmpty!20133 lt!1077696) ((_ is Nil!36043) lt!1077696))))

(assert (=> bm!231579 d!874845))

(declare-fun d!874847 () Bool)

(declare-fun lt!1077929 () Bool)

(assert (=> d!874847 (= lt!1077929 (isEmpty!20140 (list!12810 (_1!20839 lt!1077801))))))

(assert (=> d!874847 (= lt!1077929 (isEmpty!20141 (c!536750 (_1!20839 lt!1077801))))))

(assert (=> d!874847 (= (isEmpty!20130 (_1!20839 lt!1077801)) lt!1077929)))

(declare-fun bs!540712 () Bool)

(assert (= bs!540712 d!874847))

(assert (=> bs!540712 m!3458765))

(assert (=> bs!540712 m!3458765))

(declare-fun m!3459291 () Bool)

(assert (=> bs!540712 m!3459291))

(declare-fun m!3459293 () Bool)

(assert (=> bs!540712 m!3459293))

(assert (=> b!3197700 d!874847))

(declare-fun d!874849 () Bool)

(declare-fun e!1993783 () Bool)

(assert (=> d!874849 e!1993783))

(declare-fun res!1301233 () Bool)

(assert (=> d!874849 (=> (not res!1301233) (not e!1993783))))

(declare-fun lt!1077930 () List!36167)

(assert (=> d!874849 (= res!1301233 (= (content!4869 lt!1077930) ((_ map or) (content!4869 (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (content!4869 (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))))))

(declare-fun e!1993784 () List!36167)

(assert (=> d!874849 (= lt!1077930 e!1993784)))

(declare-fun c!536887 () Bool)

(assert (=> d!874849 (= c!536887 ((_ is Nil!36043) (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))))))

(assert (=> d!874849 (= (++!8630 (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))) (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044)))) lt!1077930)))

(declare-fun b!3198155 () Bool)

(declare-fun res!1301234 () Bool)

(assert (=> b!3198155 (=> (not res!1301234) (not e!1993783))))

(assert (=> b!3198155 (= res!1301234 (= (size!27145 lt!1077930) (+ (size!27145 (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (size!27145 (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))))))

(declare-fun b!3198154 () Bool)

(assert (=> b!3198154 (= e!1993784 (Cons!36043 (h!41463 (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (++!8630 (t!236994 (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044))))))))

(declare-fun b!3198156 () Bool)

(assert (=> b!3198156 (= e!1993783 (or (not (= (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044))) Nil!36043)) (= lt!1077930 (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))))))

(declare-fun b!3198153 () Bool)

(assert (=> b!3198153 (= e!1993784 (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044))))))

(assert (= (and d!874849 c!536887) b!3198153))

(assert (= (and d!874849 (not c!536887)) b!3198154))

(assert (= (and d!874849 res!1301233) b!3198155))

(assert (= (and b!3198155 res!1301234) b!3198156))

(declare-fun m!3459295 () Bool)

(assert (=> d!874849 m!3459295))

(assert (=> d!874849 m!3459169))

(declare-fun m!3459297 () Bool)

(assert (=> d!874849 m!3459297))

(assert (=> d!874849 m!3459175))

(declare-fun m!3459299 () Bool)

(assert (=> d!874849 m!3459299))

(declare-fun m!3459301 () Bool)

(assert (=> b!3198155 m!3459301))

(assert (=> b!3198155 m!3459169))

(declare-fun m!3459303 () Bool)

(assert (=> b!3198155 m!3459303))

(assert (=> b!3198155 m!3459175))

(declare-fun m!3459305 () Bool)

(assert (=> b!3198155 m!3459305))

(assert (=> b!3198154 m!3459175))

(declare-fun m!3459307 () Bool)

(assert (=> b!3198154 m!3459307))

(assert (=> b!3198018 d!874849))

(declare-fun d!874851 () Bool)

(assert (=> d!874851 (= (list!12809 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))) (list!12813 (c!536749 (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))))))

(declare-fun bs!540713 () Bool)

(assert (= bs!540713 d!874851))

(declare-fun m!3459309 () Bool)

(assert (=> bs!540713 m!3459309))

(assert (=> b!3198018 d!874851))

(declare-fun d!874853 () Bool)

(declare-fun lt!1077931 () BalanceConc!21132)

(assert (=> d!874853 (= (list!12809 lt!1077931) (originalCharacters!5906 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))))

(assert (=> d!874853 (= lt!1077931 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (value!168432 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))))

(assert (=> d!874853 (= (charsOf!3208 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))) lt!1077931)))

(declare-fun b_lambda!87387 () Bool)

(assert (=> (not b_lambda!87387) (not d!874853)))

(declare-fun tb!156531 () Bool)

(declare-fun t!237094 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) t!237094) tb!156531))

(declare-fun b!3198157 () Bool)

(declare-fun e!1993785 () Bool)

(declare-fun tp!1011051 () Bool)

(assert (=> b!3198157 (= e!1993785 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (value!168432 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) tp!1011051))))

(declare-fun result!198812 () Bool)

(assert (=> tb!156531 (= result!198812 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (value!168432 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) e!1993785))))

(assert (= tb!156531 b!3198157))

(declare-fun m!3459311 () Bool)

(assert (=> b!3198157 m!3459311))

(declare-fun m!3459313 () Bool)

(assert (=> tb!156531 m!3459313))

(assert (=> d!874853 t!237094))

(declare-fun b_and!212435 () Bool)

(assert (= b_and!212399 (and (=> t!237094 result!198812) b_and!212435)))

(declare-fun t!237096 () Bool)

(declare-fun tb!156533 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) t!237096) tb!156533))

(declare-fun result!198814 () Bool)

(assert (= result!198814 result!198812))

(assert (=> d!874853 t!237096))

(declare-fun b_and!212437 () Bool)

(assert (= b_and!212425 (and (=> t!237096 result!198814) b_and!212437)))

(declare-fun t!237098 () Bool)

(declare-fun tb!156535 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) t!237098) tb!156535))

(declare-fun result!198816 () Bool)

(assert (= result!198816 result!198812))

(assert (=> d!874853 t!237098))

(declare-fun b_and!212439 () Bool)

(assert (= b_and!212395 (and (=> t!237098 result!198816) b_and!212439)))

(declare-fun tb!156537 () Bool)

(declare-fun t!237100 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) t!237100) tb!156537))

(declare-fun result!198818 () Bool)

(assert (= result!198818 result!198812))

(assert (=> d!874853 t!237100))

(declare-fun b_and!212441 () Bool)

(assert (= b_and!212421 (and (=> t!237100 result!198818) b_and!212441)))

(declare-fun t!237102 () Bool)

(declare-fun tb!156539 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) t!237102) tb!156539))

(declare-fun result!198820 () Bool)

(assert (= result!198820 result!198812))

(assert (=> d!874853 t!237102))

(declare-fun b_and!212443 () Bool)

(assert (= b_and!212397 (and (=> t!237102 result!198820) b_and!212443)))

(declare-fun m!3459315 () Bool)

(assert (=> d!874853 m!3459315))

(declare-fun m!3459317 () Bool)

(assert (=> d!874853 m!3459317))

(assert (=> b!3198018 d!874853))

(declare-fun d!874855 () Bool)

(declare-fun c!536888 () Bool)

(assert (=> d!874855 (= c!536888 ((_ is Cons!36044) (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044))))))

(declare-fun e!1993786 () List!36167)

(assert (=> d!874855 (= (printList!1331 thiss!18206 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044))) e!1993786)))

(declare-fun b!3198158 () Bool)

(assert (=> b!3198158 (= e!1993786 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044))))) (printList!1331 thiss!18206 (t!236995 (t!236995 (Cons!36044 (h!41464 tokens!494) Nil!36044))))))))

(declare-fun b!3198159 () Bool)

(assert (=> b!3198159 (= e!1993786 Nil!36043)))

(assert (= (and d!874855 c!536888) b!3198158))

(assert (= (and d!874855 (not c!536888)) b!3198159))

(declare-fun m!3459319 () Bool)

(assert (=> b!3198158 m!3459319))

(assert (=> b!3198158 m!3459319))

(declare-fun m!3459321 () Bool)

(assert (=> b!3198158 m!3459321))

(declare-fun m!3459323 () Bool)

(assert (=> b!3198158 m!3459323))

(assert (=> b!3198158 m!3459321))

(assert (=> b!3198158 m!3459323))

(declare-fun m!3459325 () Bool)

(assert (=> b!3198158 m!3459325))

(assert (=> b!3198018 d!874855))

(declare-fun b!3198168 () Bool)

(declare-fun e!1993794 () Bool)

(declare-fun call!231601 () Bool)

(assert (=> b!3198168 (= e!1993794 call!231601)))

(declare-fun b!3198169 () Bool)

(declare-fun e!1993793 () Bool)

(assert (=> b!3198169 (= e!1993793 e!1993794)))

(declare-fun res!1301240 () Bool)

(assert (=> b!3198169 (= res!1301240 (not ((_ is Cons!36045) rules!2135)))))

(assert (=> b!3198169 (=> res!1301240 e!1993794)))

(declare-fun bm!231596 () Bool)

(assert (=> bm!231596 (= call!231601 (ruleDisjointCharsFromAllFromOtherType!584 (h!41465 rules!2135) (t!236996 rules!2135)))))

(declare-fun b!3198171 () Bool)

(declare-fun e!1993795 () Bool)

(assert (=> b!3198171 (= e!1993795 call!231601)))

(declare-fun b!3198170 () Bool)

(assert (=> b!3198170 (= e!1993793 e!1993795)))

(declare-fun res!1301239 () Bool)

(declare-fun rulesUseDisjointChars!264 (Rule!10184 Rule!10184) Bool)

(assert (=> b!3198170 (= res!1301239 (rulesUseDisjointChars!264 (h!41465 rules!2135) (h!41465 rules!2135)))))

(assert (=> b!3198170 (=> (not res!1301239) (not e!1993795))))

(declare-fun d!874857 () Bool)

(declare-fun c!536891 () Bool)

(assert (=> d!874857 (= c!536891 (and ((_ is Cons!36045) rules!2135) (not (= (isSeparator!5192 (h!41465 rules!2135)) (isSeparator!5192 (h!41465 rules!2135))))))))

(assert (=> d!874857 (= (ruleDisjointCharsFromAllFromOtherType!584 (h!41465 rules!2135) rules!2135) e!1993793)))

(assert (= (and d!874857 c!536891) b!3198170))

(assert (= (and d!874857 (not c!536891)) b!3198169))

(assert (= (and b!3198170 res!1301239) b!3198171))

(assert (= (and b!3198169 (not res!1301240)) b!3198168))

(assert (= (or b!3198171 b!3198168) bm!231596))

(declare-fun m!3459327 () Bool)

(assert (=> bm!231596 m!3459327))

(declare-fun m!3459329 () Bool)

(assert (=> b!3198170 m!3459329))

(assert (=> b!3197486 d!874857))

(declare-fun d!874859 () Bool)

(declare-fun e!1993796 () Bool)

(assert (=> d!874859 e!1993796))

(declare-fun res!1301241 () Bool)

(assert (=> d!874859 (=> (not res!1301241) (not e!1993796))))

(declare-fun lt!1077932 () List!36167)

(assert (=> d!874859 (= res!1301241 (= (content!4869 lt!1077932) ((_ map or) (content!4869 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))) (content!4869 (_2!20840 (get!11464 lt!1077754))))))))

(declare-fun e!1993797 () List!36167)

(assert (=> d!874859 (= lt!1077932 e!1993797)))

(declare-fun c!536892 () Bool)

(assert (=> d!874859 (= c!536892 ((_ is Nil!36043) (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))))))

(assert (=> d!874859 (= (++!8630 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754)))) (_2!20840 (get!11464 lt!1077754))) lt!1077932)))

(declare-fun b!3198174 () Bool)

(declare-fun res!1301242 () Bool)

(assert (=> b!3198174 (=> (not res!1301242) (not e!1993796))))

(assert (=> b!3198174 (= res!1301242 (= (size!27145 lt!1077932) (+ (size!27145 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))) (size!27145 (_2!20840 (get!11464 lt!1077754))))))))

(declare-fun b!3198173 () Bool)

(assert (=> b!3198173 (= e!1993797 (Cons!36043 (h!41463 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))) (++!8630 (t!236994 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))) (_2!20840 (get!11464 lt!1077754)))))))

(declare-fun b!3198175 () Bool)

(assert (=> b!3198175 (= e!1993796 (or (not (= (_2!20840 (get!11464 lt!1077754)) Nil!36043)) (= lt!1077932 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754)))))))))

(declare-fun b!3198172 () Bool)

(assert (=> b!3198172 (= e!1993797 (_2!20840 (get!11464 lt!1077754)))))

(assert (= (and d!874859 c!536892) b!3198172))

(assert (= (and d!874859 (not c!536892)) b!3198173))

(assert (= (and d!874859 res!1301241) b!3198174))

(assert (= (and b!3198174 res!1301242) b!3198175))

(declare-fun m!3459331 () Bool)

(assert (=> d!874859 m!3459331))

(assert (=> d!874859 m!3458611))

(declare-fun m!3459333 () Bool)

(assert (=> d!874859 m!3459333))

(declare-fun m!3459335 () Bool)

(assert (=> d!874859 m!3459335))

(declare-fun m!3459337 () Bool)

(assert (=> b!3198174 m!3459337))

(assert (=> b!3198174 m!3458611))

(declare-fun m!3459339 () Bool)

(assert (=> b!3198174 m!3459339))

(assert (=> b!3198174 m!3458627))

(declare-fun m!3459341 () Bool)

(assert (=> b!3198173 m!3459341))

(assert (=> b!3197566 d!874859))

(declare-fun d!874861 () Bool)

(assert (=> d!874861 (= (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754)))) (list!12813 (c!536749 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))))))

(declare-fun bs!540714 () Bool)

(assert (= bs!540714 d!874861))

(declare-fun m!3459343 () Bool)

(assert (=> bs!540714 m!3459343))

(assert (=> b!3197566 d!874861))

(declare-fun d!874863 () Bool)

(declare-fun lt!1077933 () BalanceConc!21132)

(assert (=> d!874863 (= (list!12809 lt!1077933) (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754))))))

(assert (=> d!874863 (= lt!1077933 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754))))) (value!168432 (_1!20840 (get!11464 lt!1077754)))))))

(assert (=> d!874863 (= (charsOf!3208 (_1!20840 (get!11464 lt!1077754))) lt!1077933)))

(declare-fun b_lambda!87389 () Bool)

(assert (=> (not b_lambda!87389) (not d!874863)))

(declare-fun tb!156541 () Bool)

(declare-fun t!237104 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237104) tb!156541))

(declare-fun b!3198176 () Bool)

(declare-fun e!1993798 () Bool)

(declare-fun tp!1011052 () Bool)

(assert (=> b!3198176 (= e!1993798 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754))))) (value!168432 (_1!20840 (get!11464 lt!1077754)))))) tp!1011052))))

(declare-fun result!198822 () Bool)

(assert (=> tb!156541 (= result!198822 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754))))) (value!168432 (_1!20840 (get!11464 lt!1077754))))) e!1993798))))

(assert (= tb!156541 b!3198176))

(declare-fun m!3459345 () Bool)

(assert (=> b!3198176 m!3459345))

(declare-fun m!3459347 () Bool)

(assert (=> tb!156541 m!3459347))

(assert (=> d!874863 t!237104))

(declare-fun b_and!212445 () Bool)

(assert (= b_and!212439 (and (=> t!237104 result!198822) b_and!212445)))

(declare-fun tb!156543 () Bool)

(declare-fun t!237106 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237106) tb!156543))

(declare-fun result!198824 () Bool)

(assert (= result!198824 result!198822))

(assert (=> d!874863 t!237106))

(declare-fun b_and!212447 () Bool)

(assert (= b_and!212437 (and (=> t!237106 result!198824) b_and!212447)))

(declare-fun t!237108 () Bool)

(declare-fun tb!156545 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237108) tb!156545))

(declare-fun result!198826 () Bool)

(assert (= result!198826 result!198822))

(assert (=> d!874863 t!237108))

(declare-fun b_and!212449 () Bool)

(assert (= b_and!212441 (and (=> t!237108 result!198826) b_and!212449)))

(declare-fun t!237110 () Bool)

(declare-fun tb!156547 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237110) tb!156547))

(declare-fun result!198828 () Bool)

(assert (= result!198828 result!198822))

(assert (=> d!874863 t!237110))

(declare-fun b_and!212451 () Bool)

(assert (= b_and!212435 (and (=> t!237110 result!198828) b_and!212451)))

(declare-fun tb!156549 () Bool)

(declare-fun t!237112 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237112) tb!156549))

(declare-fun result!198830 () Bool)

(assert (= result!198830 result!198822))

(assert (=> d!874863 t!237112))

(declare-fun b_and!212453 () Bool)

(assert (= b_and!212443 (and (=> t!237112 result!198830) b_and!212453)))

(declare-fun m!3459349 () Bool)

(assert (=> d!874863 m!3459349))

(declare-fun m!3459351 () Bool)

(assert (=> d!874863 m!3459351))

(assert (=> b!3197566 d!874863))

(declare-fun d!874865 () Bool)

(assert (=> d!874865 (= (get!11464 lt!1077754) (v!35597 lt!1077754))))

(assert (=> b!3197566 d!874865))

(declare-fun d!874867 () Bool)

(declare-fun c!536895 () Bool)

(assert (=> d!874867 (= c!536895 ((_ is Nil!36043) (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))))))

(declare-fun e!1993801 () (InoxSet C!20088))

(assert (=> d!874867 (= (content!4869 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))) e!1993801)))

(declare-fun b!3198181 () Bool)

(assert (=> b!3198181 (= e!1993801 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3198182 () Bool)

(assert (=> b!3198182 (= e!1993801 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))) true) (content!4869 (t!236994 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))))))))

(assert (= (and d!874867 c!536895) b!3198181))

(assert (= (and d!874867 (not c!536895)) b!3198182))

(declare-fun m!3459353 () Bool)

(assert (=> b!3198182 m!3459353))

(declare-fun m!3459355 () Bool)

(assert (=> b!3198182 m!3459355))

(assert (=> d!874691 d!874867))

(declare-fun d!874869 () Bool)

(declare-fun c!536898 () Bool)

(assert (=> d!874869 (= c!536898 ((_ is Node!10759) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))))))

(declare-fun e!1993806 () Bool)

(assert (=> d!874869 (= (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))) e!1993806)))

(declare-fun b!3198189 () Bool)

(declare-fun inv!48899 (Conc!10759) Bool)

(assert (=> b!3198189 (= e!1993806 (inv!48899 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))))))

(declare-fun b!3198190 () Bool)

(declare-fun e!1993807 () Bool)

(assert (=> b!3198190 (= e!1993806 e!1993807)))

(declare-fun res!1301245 () Bool)

(assert (=> b!3198190 (= res!1301245 (not ((_ is Leaf!16966) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))))))))

(assert (=> b!3198190 (=> res!1301245 e!1993807)))

(declare-fun b!3198191 () Bool)

(declare-fun inv!48900 (Conc!10759) Bool)

(assert (=> b!3198191 (= e!1993807 (inv!48900 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))))))

(assert (= (and d!874869 c!536898) b!3198189))

(assert (= (and d!874869 (not c!536898)) b!3198190))

(assert (= (and b!3198190 (not res!1301245)) b!3198191))

(declare-fun m!3459357 () Bool)

(assert (=> b!3198189 m!3459357))

(declare-fun m!3459359 () Bool)

(assert (=> b!3198191 m!3459359))

(assert (=> b!3197923 d!874869))

(declare-fun b!3198192 () Bool)

(declare-fun res!1301247 () Bool)

(declare-fun e!1993814 () Bool)

(assert (=> b!3198192 (=> res!1301247 e!1993814)))

(assert (=> b!3198192 (= res!1301247 (not ((_ is ElementMatch!9951) (regex!5192 (rule!7626 (h!41464 tokens!494))))))))

(declare-fun e!1993813 () Bool)

(assert (=> b!3198192 (= e!1993813 e!1993814)))

(declare-fun b!3198193 () Bool)

(declare-fun e!1993812 () Bool)

(assert (=> b!3198193 (= e!1993814 e!1993812)))

(declare-fun res!1301248 () Bool)

(assert (=> b!3198193 (=> (not res!1301248) (not e!1993812))))

(declare-fun lt!1077934 () Bool)

(assert (=> b!3198193 (= res!1301248 (not lt!1077934))))

(declare-fun b!3198194 () Bool)

(declare-fun res!1301250 () Bool)

(declare-fun e!1993809 () Bool)

(assert (=> b!3198194 (=> res!1301250 e!1993809)))

(assert (=> b!3198194 (= res!1301250 (not (isEmpty!20133 (tail!5199 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))))))))

(declare-fun b!3198195 () Bool)

(declare-fun e!1993808 () Bool)

(assert (=> b!3198195 (= e!1993808 e!1993813)))

(declare-fun c!536899 () Bool)

(assert (=> b!3198195 (= c!536899 ((_ is EmptyLang!9951) (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun b!3198196 () Bool)

(declare-fun e!1993811 () Bool)

(assert (=> b!3198196 (= e!1993811 (matchR!4585 (derivativeStep!2945 (regex!5192 (rule!7626 (h!41464 tokens!494))) (head!7005 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754)))))) (tail!5199 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754)))))))))

(declare-fun d!874871 () Bool)

(assert (=> d!874871 e!1993808))

(declare-fun c!536900 () Bool)

(assert (=> d!874871 (= c!536900 ((_ is EmptyExpr!9951) (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(assert (=> d!874871 (= lt!1077934 e!1993811)))

(declare-fun c!536901 () Bool)

(assert (=> d!874871 (= c!536901 (isEmpty!20133 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))))))

(assert (=> d!874871 (validRegex!4544 (regex!5192 (rule!7626 (h!41464 tokens!494))))))

(assert (=> d!874871 (= (matchR!4585 (regex!5192 (rule!7626 (h!41464 tokens!494))) (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))) lt!1077934)))

(declare-fun b!3198197 () Bool)

(declare-fun e!1993810 () Bool)

(assert (=> b!3198197 (= e!1993810 (= (head!7005 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))) (c!536748 (regex!5192 (rule!7626 (h!41464 tokens!494))))))))

(declare-fun b!3198198 () Bool)

(assert (=> b!3198198 (= e!1993813 (not lt!1077934))))

(declare-fun b!3198199 () Bool)

(declare-fun res!1301249 () Bool)

(assert (=> b!3198199 (=> (not res!1301249) (not e!1993810))))

(declare-fun call!231602 () Bool)

(assert (=> b!3198199 (= res!1301249 (not call!231602))))

(declare-fun b!3198200 () Bool)

(assert (=> b!3198200 (= e!1993811 (nullable!3392 (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun b!3198201 () Bool)

(assert (=> b!3198201 (= e!1993808 (= lt!1077934 call!231602))))

(declare-fun bm!231597 () Bool)

(assert (=> bm!231597 (= call!231602 (isEmpty!20133 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))))))

(declare-fun b!3198202 () Bool)

(declare-fun res!1301246 () Bool)

(assert (=> b!3198202 (=> (not res!1301246) (not e!1993810))))

(assert (=> b!3198202 (= res!1301246 (isEmpty!20133 (tail!5199 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754)))))))))

(declare-fun b!3198203 () Bool)

(declare-fun res!1301253 () Bool)

(assert (=> b!3198203 (=> res!1301253 e!1993814)))

(assert (=> b!3198203 (= res!1301253 e!1993810)))

(declare-fun res!1301252 () Bool)

(assert (=> b!3198203 (=> (not res!1301252) (not e!1993810))))

(assert (=> b!3198203 (= res!1301252 lt!1077934)))

(declare-fun b!3198204 () Bool)

(assert (=> b!3198204 (= e!1993812 e!1993809)))

(declare-fun res!1301251 () Bool)

(assert (=> b!3198204 (=> res!1301251 e!1993809)))

(assert (=> b!3198204 (= res!1301251 call!231602)))

(declare-fun b!3198205 () Bool)

(assert (=> b!3198205 (= e!1993809 (not (= (head!7005 (list!12809 (charsOf!3208 (_1!20840 (get!11464 lt!1077754))))) (c!536748 (regex!5192 (rule!7626 (h!41464 tokens!494)))))))))

(assert (= (and d!874871 c!536901) b!3198200))

(assert (= (and d!874871 (not c!536901)) b!3198196))

(assert (= (and d!874871 c!536900) b!3198201))

(assert (= (and d!874871 (not c!536900)) b!3198195))

(assert (= (and b!3198195 c!536899) b!3198198))

(assert (= (and b!3198195 (not c!536899)) b!3198192))

(assert (= (and b!3198192 (not res!1301247)) b!3198203))

(assert (= (and b!3198203 res!1301252) b!3198199))

(assert (= (and b!3198199 res!1301249) b!3198202))

(assert (= (and b!3198202 res!1301246) b!3198197))

(assert (= (and b!3198203 (not res!1301253)) b!3198193))

(assert (= (and b!3198193 res!1301248) b!3198204))

(assert (= (and b!3198204 (not res!1301251)) b!3198194))

(assert (= (and b!3198194 (not res!1301250)) b!3198205))

(assert (= (or b!3198201 b!3198199 b!3198204) bm!231597))

(declare-fun m!3459361 () Bool)

(assert (=> b!3198200 m!3459361))

(assert (=> b!3198194 m!3458611))

(declare-fun m!3459363 () Bool)

(assert (=> b!3198194 m!3459363))

(assert (=> b!3198194 m!3459363))

(declare-fun m!3459365 () Bool)

(assert (=> b!3198194 m!3459365))

(assert (=> b!3198197 m!3458611))

(declare-fun m!3459367 () Bool)

(assert (=> b!3198197 m!3459367))

(assert (=> b!3198205 m!3458611))

(assert (=> b!3198205 m!3459367))

(assert (=> b!3198196 m!3458611))

(assert (=> b!3198196 m!3459367))

(assert (=> b!3198196 m!3459367))

(declare-fun m!3459369 () Bool)

(assert (=> b!3198196 m!3459369))

(assert (=> b!3198196 m!3458611))

(assert (=> b!3198196 m!3459363))

(assert (=> b!3198196 m!3459369))

(assert (=> b!3198196 m!3459363))

(declare-fun m!3459371 () Bool)

(assert (=> b!3198196 m!3459371))

(assert (=> b!3198202 m!3458611))

(assert (=> b!3198202 m!3459363))

(assert (=> b!3198202 m!3459363))

(assert (=> b!3198202 m!3459365))

(assert (=> d!874871 m!3458611))

(declare-fun m!3459373 () Bool)

(assert (=> d!874871 m!3459373))

(declare-fun m!3459375 () Bool)

(assert (=> d!874871 m!3459375))

(assert (=> bm!231597 m!3458611))

(assert (=> bm!231597 m!3459373))

(assert (=> b!3197562 d!874871))

(assert (=> b!3197562 d!874861))

(assert (=> b!3197562 d!874863))

(assert (=> b!3197562 d!874865))

(declare-fun b!3198206 () Bool)

(declare-fun e!1993817 () Bool)

(assert (=> b!3198206 (= e!1993817 (inv!17 (value!168432 (h!41464 (t!236995 tokens!494)))))))

(declare-fun b!3198207 () Bool)

(declare-fun e!1993815 () Bool)

(assert (=> b!3198207 (= e!1993815 e!1993817)))

(declare-fun c!536902 () Bool)

(assert (=> b!3198207 (= c!536902 ((_ is IntegerValue!16267) (value!168432 (h!41464 (t!236995 tokens!494)))))))

(declare-fun b!3198208 () Bool)

(declare-fun res!1301254 () Bool)

(declare-fun e!1993816 () Bool)

(assert (=> b!3198208 (=> res!1301254 e!1993816)))

(assert (=> b!3198208 (= res!1301254 (not ((_ is IntegerValue!16268) (value!168432 (h!41464 (t!236995 tokens!494))))))))

(assert (=> b!3198208 (= e!1993817 e!1993816)))

(declare-fun b!3198209 () Bool)

(assert (=> b!3198209 (= e!1993815 (inv!16 (value!168432 (h!41464 (t!236995 tokens!494)))))))

(declare-fun b!3198210 () Bool)

(assert (=> b!3198210 (= e!1993816 (inv!15 (value!168432 (h!41464 (t!236995 tokens!494)))))))

(declare-fun d!874873 () Bool)

(declare-fun c!536903 () Bool)

(assert (=> d!874873 (= c!536903 ((_ is IntegerValue!16266) (value!168432 (h!41464 (t!236995 tokens!494)))))))

(assert (=> d!874873 (= (inv!21 (value!168432 (h!41464 (t!236995 tokens!494)))) e!1993815)))

(assert (= (and d!874873 c!536903) b!3198209))

(assert (= (and d!874873 (not c!536903)) b!3198207))

(assert (= (and b!3198207 c!536902) b!3198206))

(assert (= (and b!3198207 (not c!536902)) b!3198208))

(assert (= (and b!3198208 (not res!1301254)) b!3198210))

(declare-fun m!3459377 () Bool)

(assert (=> b!3198206 m!3459377))

(declare-fun m!3459379 () Bool)

(assert (=> b!3198209 m!3459379))

(declare-fun m!3459381 () Bool)

(assert (=> b!3198210 m!3459381))

(assert (=> b!3198062 d!874873))

(assert (=> b!3197893 d!874705))

(assert (=> b!3197893 d!874703))

(declare-fun d!874875 () Bool)

(declare-fun e!1993818 () Bool)

(assert (=> d!874875 e!1993818))

(declare-fun res!1301255 () Bool)

(assert (=> d!874875 (=> (not res!1301255) (not e!1993818))))

(declare-fun lt!1077935 () List!36167)

(assert (=> d!874875 (= res!1301255 (= (content!4869 lt!1077935) ((_ map or) (content!4869 (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241)))) (content!4869 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241)))))))

(declare-fun e!1993819 () List!36167)

(assert (=> d!874875 (= lt!1077935 e!1993819)))

(declare-fun c!536904 () Bool)

(assert (=> d!874875 (= c!536904 ((_ is Nil!36043) (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241)))))))

(assert (=> d!874875 (= (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241)) lt!1077935)))

(declare-fun b!3198213 () Bool)

(declare-fun res!1301256 () Bool)

(assert (=> b!3198213 (=> (not res!1301256) (not e!1993818))))

(assert (=> b!3198213 (= res!1301256 (= (size!27145 lt!1077935) (+ (size!27145 (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241)))) (size!27145 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241)))))))

(declare-fun b!3198212 () Bool)

(assert (=> b!3198212 (= e!1993819 (Cons!36043 (h!41463 (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241)))) (++!8630 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241)))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241))))))

(declare-fun b!3198214 () Bool)

(assert (=> b!3198214 (= e!1993818 (or (not (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241) Nil!36043)) (= lt!1077935 (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3198211 () Bool)

(assert (=> b!3198211 (= e!1993819 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 tokens!494) separatorToken!241))))

(assert (= (and d!874875 c!536904) b!3198211))

(assert (= (and d!874875 (not c!536904)) b!3198212))

(assert (= (and d!874875 res!1301255) b!3198213))

(assert (= (and b!3198213 res!1301256) b!3198214))

(declare-fun m!3459383 () Bool)

(assert (=> d!874875 m!3459383))

(assert (=> d!874875 m!3458947))

(declare-fun m!3459385 () Bool)

(assert (=> d!874875 m!3459385))

(assert (=> d!874875 m!3458367))

(declare-fun m!3459387 () Bool)

(assert (=> d!874875 m!3459387))

(declare-fun m!3459389 () Bool)

(assert (=> b!3198213 m!3459389))

(assert (=> b!3198213 m!3458947))

(declare-fun m!3459391 () Bool)

(assert (=> b!3198213 m!3459391))

(assert (=> b!3198213 m!3458367))

(declare-fun m!3459393 () Bool)

(assert (=> b!3198213 m!3459393))

(assert (=> b!3198212 m!3458367))

(declare-fun m!3459395 () Bool)

(assert (=> b!3198212 m!3459395))

(assert (=> b!3197893 d!874875))

(assert (=> b!3197893 d!874755))

(assert (=> b!3197893 d!874769))

(declare-fun d!874877 () Bool)

(declare-fun e!1993820 () Bool)

(assert (=> d!874877 e!1993820))

(declare-fun res!1301257 () Bool)

(assert (=> d!874877 (=> (not res!1301257) (not e!1993820))))

(declare-fun lt!1077936 () List!36167)

(assert (=> d!874877 (= res!1301257 (= (content!4869 lt!1077936) ((_ map or) (content!4869 (list!12809 (charsOf!3208 (h!41464 tokens!494)))) (content!4869 (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun e!1993821 () List!36167)

(assert (=> d!874877 (= lt!1077936 e!1993821)))

(declare-fun c!536905 () Bool)

(assert (=> d!874877 (= c!536905 ((_ is Nil!36043) (list!12809 (charsOf!3208 (h!41464 tokens!494)))))))

(assert (=> d!874877 (= (++!8630 (list!12809 (charsOf!3208 (h!41464 tokens!494))) (list!12809 (charsOf!3208 separatorToken!241))) lt!1077936)))

(declare-fun b!3198217 () Bool)

(declare-fun res!1301258 () Bool)

(assert (=> b!3198217 (=> (not res!1301258) (not e!1993820))))

(assert (=> b!3198217 (= res!1301258 (= (size!27145 lt!1077936) (+ (size!27145 (list!12809 (charsOf!3208 (h!41464 tokens!494)))) (size!27145 (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3198216 () Bool)

(assert (=> b!3198216 (= e!1993821 (Cons!36043 (h!41463 (list!12809 (charsOf!3208 (h!41464 tokens!494)))) (++!8630 (t!236994 (list!12809 (charsOf!3208 (h!41464 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241)))))))

(declare-fun b!3198218 () Bool)

(assert (=> b!3198218 (= e!1993820 (or (not (= (list!12809 (charsOf!3208 separatorToken!241)) Nil!36043)) (= lt!1077936 (list!12809 (charsOf!3208 (h!41464 tokens!494))))))))

(declare-fun b!3198215 () Bool)

(assert (=> b!3198215 (= e!1993821 (list!12809 (charsOf!3208 separatorToken!241)))))

(assert (= (and d!874877 c!536905) b!3198215))

(assert (= (and d!874877 (not c!536905)) b!3198216))

(assert (= (and d!874877 res!1301257) b!3198217))

(assert (= (and b!3198217 res!1301258) b!3198218))

(declare-fun m!3459397 () Bool)

(assert (=> d!874877 m!3459397))

(assert (=> d!874877 m!3458295))

(declare-fun m!3459399 () Bool)

(assert (=> d!874877 m!3459399))

(assert (=> d!874877 m!3458371))

(declare-fun m!3459401 () Bool)

(assert (=> d!874877 m!3459401))

(declare-fun m!3459403 () Bool)

(assert (=> b!3198217 m!3459403))

(assert (=> b!3198217 m!3458295))

(declare-fun m!3459405 () Bool)

(assert (=> b!3198217 m!3459405))

(assert (=> b!3198217 m!3458371))

(declare-fun m!3459407 () Bool)

(assert (=> b!3198217 m!3459407))

(assert (=> b!3198216 m!3458371))

(declare-fun m!3459409 () Bool)

(assert (=> b!3198216 m!3459409))

(assert (=> b!3197893 d!874877))

(assert (=> b!3197893 d!874761))

(declare-fun d!874879 () Bool)

(declare-fun lt!1077939 () Bool)

(declare-fun content!4871 (List!36168) (InoxSet Token!9750))

(assert (=> d!874879 (= lt!1077939 (select (content!4871 tokens!494) (h!41464 tokens!494)))))

(declare-fun e!1993826 () Bool)

(assert (=> d!874879 (= lt!1077939 e!1993826)))

(declare-fun res!1301264 () Bool)

(assert (=> d!874879 (=> (not res!1301264) (not e!1993826))))

(assert (=> d!874879 (= res!1301264 ((_ is Cons!36044) tokens!494))))

(assert (=> d!874879 (= (contains!6404 tokens!494 (h!41464 tokens!494)) lt!1077939)))

(declare-fun b!3198223 () Bool)

(declare-fun e!1993827 () Bool)

(assert (=> b!3198223 (= e!1993826 e!1993827)))

(declare-fun res!1301263 () Bool)

(assert (=> b!3198223 (=> res!1301263 e!1993827)))

(assert (=> b!3198223 (= res!1301263 (= (h!41464 tokens!494) (h!41464 tokens!494)))))

(declare-fun b!3198224 () Bool)

(assert (=> b!3198224 (= e!1993827 (contains!6404 (t!236995 tokens!494) (h!41464 tokens!494)))))

(assert (= (and d!874879 res!1301264) b!3198223))

(assert (= (and b!3198223 (not res!1301263)) b!3198224))

(declare-fun m!3459411 () Bool)

(assert (=> d!874879 m!3459411))

(declare-fun m!3459413 () Bool)

(assert (=> d!874879 m!3459413))

(declare-fun m!3459415 () Bool)

(assert (=> b!3198224 m!3459415))

(assert (=> b!3197491 d!874879))

(declare-fun d!874881 () Bool)

(assert (=> d!874881 (= (head!7005 lt!1077706) (h!41463 lt!1077706))))

(assert (=> b!3197872 d!874881))

(declare-fun d!874883 () Bool)

(assert (=> d!874883 (= (isEmpty!20133 lt!1077706) ((_ is Nil!36043) lt!1077706))))

(assert (=> bm!231580 d!874883))

(declare-fun d!874885 () Bool)

(declare-fun lt!1077942 () Bool)

(assert (=> d!874885 (= lt!1077942 (isEmpty!20133 (list!12809 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))))))))))

(declare-fun isEmpty!20144 (Conc!10759) Bool)

(assert (=> d!874885 (= lt!1077942 (isEmpty!20144 (c!536749 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))))))))))

(assert (=> d!874885 (= (isEmpty!20132 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)))))) lt!1077942)))

(declare-fun bs!540715 () Bool)

(assert (= bs!540715 d!874885))

(declare-fun m!3459417 () Bool)

(assert (=> bs!540715 m!3459417))

(assert (=> bs!540715 m!3459417))

(declare-fun m!3459419 () Bool)

(assert (=> bs!540715 m!3459419))

(declare-fun m!3459421 () Bool)

(assert (=> bs!540715 m!3459421))

(assert (=> b!3197958 d!874885))

(declare-fun lt!1077943 () tuple2!35410)

(declare-fun b!3198225 () Bool)

(declare-fun e!1993829 () Bool)

(assert (=> b!3198225 (= e!1993829 (= (list!12809 (_2!20839 lt!1077943)) (_2!20843 (lexList!1307 thiss!18206 rules!2135 (list!12809 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))))))))))

(declare-fun b!3198226 () Bool)

(declare-fun res!1301267 () Bool)

(assert (=> b!3198226 (=> (not res!1301267) (not e!1993829))))

(assert (=> b!3198226 (= res!1301267 (= (list!12810 (_1!20839 lt!1077943)) (_1!20843 (lexList!1307 thiss!18206 rules!2135 (list!12809 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))))))))))

(declare-fun e!1993828 () Bool)

(declare-fun b!3198227 () Bool)

(assert (=> b!3198227 (= e!1993828 (= (_2!20839 lt!1077943) (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)))))))

(declare-fun b!3198228 () Bool)

(declare-fun e!1993830 () Bool)

(assert (=> b!3198228 (= e!1993828 e!1993830)))

(declare-fun res!1301266 () Bool)

(assert (=> b!3198228 (= res!1301266 (< (size!27148 (_2!20839 lt!1077943)) (size!27148 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))))))))

(assert (=> b!3198228 (=> (not res!1301266) (not e!1993830))))

(declare-fun b!3198229 () Bool)

(assert (=> b!3198229 (= e!1993830 (not (isEmpty!20130 (_1!20839 lt!1077943))))))

(declare-fun d!874887 () Bool)

(assert (=> d!874887 e!1993829))

(declare-fun res!1301265 () Bool)

(assert (=> d!874887 (=> (not res!1301265) (not e!1993829))))

(assert (=> d!874887 (= res!1301265 e!1993828)))

(declare-fun c!536906 () Bool)

(assert (=> d!874887 (= c!536906 (> (size!27146 (_1!20839 lt!1077943)) 0))))

(assert (=> d!874887 (= lt!1077943 (lexTailRecV2!927 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))) (BalanceConc!21133 Empty!10759) (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))) (BalanceConc!21135 Empty!10760)))))

(assert (=> d!874887 (= (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)))) lt!1077943)))

(assert (= (and d!874887 c!536906) b!3198228))

(assert (= (and d!874887 (not c!536906)) b!3198227))

(assert (= (and b!3198228 res!1301266) b!3198229))

(assert (= (and d!874887 res!1301265) b!3198226))

(assert (= (and b!3198226 res!1301267) b!3198225))

(declare-fun m!3459423 () Bool)

(assert (=> d!874887 m!3459423))

(assert (=> d!874887 m!3459063))

(assert (=> d!874887 m!3459063))

(declare-fun m!3459425 () Bool)

(assert (=> d!874887 m!3459425))

(declare-fun m!3459427 () Bool)

(assert (=> b!3198225 m!3459427))

(assert (=> b!3198225 m!3459063))

(declare-fun m!3459429 () Bool)

(assert (=> b!3198225 m!3459429))

(assert (=> b!3198225 m!3459429))

(declare-fun m!3459431 () Bool)

(assert (=> b!3198225 m!3459431))

(declare-fun m!3459433 () Bool)

(assert (=> b!3198228 m!3459433))

(assert (=> b!3198228 m!3459063))

(declare-fun m!3459435 () Bool)

(assert (=> b!3198228 m!3459435))

(declare-fun m!3459437 () Bool)

(assert (=> b!3198229 m!3459437))

(declare-fun m!3459439 () Bool)

(assert (=> b!3198226 m!3459439))

(assert (=> b!3198226 m!3459063))

(assert (=> b!3198226 m!3459429))

(assert (=> b!3198226 m!3459429))

(assert (=> b!3198226 m!3459431))

(assert (=> b!3197958 d!874887))

(declare-fun d!874889 () Bool)

(declare-fun lt!1077944 () BalanceConc!21132)

(assert (=> d!874889 (= (list!12809 lt!1077944) (printList!1331 thiss!18206 (list!12810 (singletonSeq!2288 (h!41464 tokens!494)))))))

(assert (=> d!874889 (= lt!1077944 (printTailRec!1278 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)) 0 (BalanceConc!21133 Empty!10759)))))

(assert (=> d!874889 (= (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))) lt!1077944)))

(declare-fun bs!540716 () Bool)

(assert (= bs!540716 d!874889))

(declare-fun m!3459441 () Bool)

(assert (=> bs!540716 m!3459441))

(assert (=> bs!540716 m!3458343))

(assert (=> bs!540716 m!3459071))

(assert (=> bs!540716 m!3459071))

(declare-fun m!3459443 () Bool)

(assert (=> bs!540716 m!3459443))

(assert (=> bs!540716 m!3458343))

(declare-fun m!3459445 () Bool)

(assert (=> bs!540716 m!3459445))

(assert (=> b!3197958 d!874889))

(assert (=> b!3197958 d!874811))

(declare-fun d!874891 () Bool)

(declare-fun e!1993831 () Bool)

(assert (=> d!874891 e!1993831))

(declare-fun res!1301268 () Bool)

(assert (=> d!874891 (=> (not res!1301268) (not e!1993831))))

(declare-fun lt!1077945 () List!36167)

(assert (=> d!874891 (= res!1301268 (= (content!4869 lt!1077945) ((_ map or) (content!4869 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) (content!4869 (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun e!1993832 () List!36167)

(assert (=> d!874891 (= lt!1077945 e!1993832)))

(declare-fun c!536907 () Bool)

(assert (=> d!874891 (= c!536907 ((_ is Nil!36043) (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))

(assert (=> d!874891 (= (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241))) lt!1077945)))

(declare-fun b!3198232 () Bool)

(declare-fun res!1301269 () Bool)

(assert (=> b!3198232 (=> (not res!1301269) (not e!1993831))))

(assert (=> b!3198232 (= res!1301269 (= (size!27145 lt!1077945) (+ (size!27145 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) (size!27145 (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3198231 () Bool)

(assert (=> b!3198231 (= e!1993832 (Cons!36043 (h!41463 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) (++!8630 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241)))))))

(declare-fun b!3198233 () Bool)

(assert (=> b!3198233 (= e!1993831 (or (not (= (list!12809 (charsOf!3208 separatorToken!241)) Nil!36043)) (= lt!1077945 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))))))

(declare-fun b!3198230 () Bool)

(assert (=> b!3198230 (= e!1993832 (list!12809 (charsOf!3208 separatorToken!241)))))

(assert (= (and d!874891 c!536907) b!3198230))

(assert (= (and d!874891 (not c!536907)) b!3198231))

(assert (= (and d!874891 res!1301268) b!3198232))

(assert (= (and b!3198232 res!1301269) b!3198233))

(declare-fun m!3459447 () Bool)

(assert (=> d!874891 m!3459447))

(assert (=> d!874891 m!3458357))

(assert (=> d!874891 m!3458953))

(assert (=> d!874891 m!3458371))

(assert (=> d!874891 m!3459401))

(declare-fun m!3459449 () Bool)

(assert (=> b!3198232 m!3459449))

(assert (=> b!3198232 m!3458357))

(assert (=> b!3198232 m!3458959))

(assert (=> b!3198232 m!3458371))

(assert (=> b!3198232 m!3459407))

(assert (=> b!3198231 m!3458371))

(declare-fun m!3459451 () Bool)

(assert (=> b!3198231 m!3459451))

(assert (=> b!3197913 d!874891))

(assert (=> b!3197913 d!874757))

(assert (=> b!3197913 d!874755))

(assert (=> b!3197913 d!874765))

(declare-fun d!874893 () Bool)

(declare-fun e!1993833 () Bool)

(assert (=> d!874893 e!1993833))

(declare-fun res!1301270 () Bool)

(assert (=> d!874893 (=> (not res!1301270) (not e!1993833))))

(declare-fun lt!1077946 () List!36167)

(assert (=> d!874893 (= res!1301270 (= (content!4869 lt!1077946) ((_ map or) (content!4869 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241)))) (content!4869 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(declare-fun e!1993834 () List!36167)

(assert (=> d!874893 (= lt!1077946 e!1993834)))

(declare-fun c!536908 () Bool)

(assert (=> d!874893 (= c!536908 ((_ is Nil!36043) (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241)))))))

(assert (=> d!874893 (= (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)) lt!1077946)))

(declare-fun b!3198236 () Bool)

(declare-fun res!1301271 () Bool)

(assert (=> b!3198236 (=> (not res!1301271) (not e!1993833))))

(assert (=> b!3198236 (= res!1301271 (= (size!27145 lt!1077946) (+ (size!27145 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241)))) (size!27145 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(declare-fun b!3198235 () Bool)

(assert (=> b!3198235 (= e!1993834 (Cons!36043 (h!41463 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241)))) (++!8630 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241)))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241))))))

(declare-fun b!3198237 () Bool)

(assert (=> b!3198237 (= e!1993833 (or (not (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241) Nil!36043)) (= lt!1077946 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3198234 () Bool)

(assert (=> b!3198234 (= e!1993834 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241))))

(assert (= (and d!874893 c!536908) b!3198234))

(assert (= (and d!874893 (not c!536908)) b!3198235))

(assert (= (and d!874893 res!1301270) b!3198236))

(assert (= (and b!3198236 res!1301271) b!3198237))

(declare-fun m!3459453 () Bool)

(assert (=> d!874893 m!3459453))

(assert (=> d!874893 m!3458999))

(declare-fun m!3459455 () Bool)

(assert (=> d!874893 m!3459455))

(assert (=> d!874893 m!3458369))

(assert (=> d!874893 m!3458969))

(declare-fun m!3459457 () Bool)

(assert (=> b!3198236 m!3459457))

(assert (=> b!3198236 m!3458999))

(declare-fun m!3459459 () Bool)

(assert (=> b!3198236 m!3459459))

(assert (=> b!3198236 m!3458369))

(assert (=> b!3198236 m!3458975))

(assert (=> b!3198235 m!3458369))

(declare-fun m!3459461 () Bool)

(assert (=> b!3198235 m!3459461))

(assert (=> b!3197913 d!874893))

(assert (=> b!3197913 d!874769))

(assert (=> b!3197913 d!874771))

(declare-fun d!874895 () Bool)

(declare-fun e!1993835 () Bool)

(assert (=> d!874895 e!1993835))

(declare-fun res!1301272 () Bool)

(assert (=> d!874895 (=> (not res!1301272) (not e!1993835))))

(declare-fun lt!1077947 () List!36167)

(assert (=> d!874895 (= res!1301272 (= (content!4869 lt!1077947) ((_ map or) (content!4869 lt!1077706) (content!4869 (++!8630 lt!1077696 lt!1077693)))))))

(declare-fun e!1993836 () List!36167)

(assert (=> d!874895 (= lt!1077947 e!1993836)))

(declare-fun c!536909 () Bool)

(assert (=> d!874895 (= c!536909 ((_ is Nil!36043) lt!1077706))))

(assert (=> d!874895 (= (++!8630 lt!1077706 (++!8630 lt!1077696 lt!1077693)) lt!1077947)))

(declare-fun b!3198240 () Bool)

(declare-fun res!1301273 () Bool)

(assert (=> b!3198240 (=> (not res!1301273) (not e!1993835))))

(assert (=> b!3198240 (= res!1301273 (= (size!27145 lt!1077947) (+ (size!27145 lt!1077706) (size!27145 (++!8630 lt!1077696 lt!1077693)))))))

(declare-fun b!3198239 () Bool)

(assert (=> b!3198239 (= e!1993836 (Cons!36043 (h!41463 lt!1077706) (++!8630 (t!236994 lt!1077706) (++!8630 lt!1077696 lt!1077693))))))

(declare-fun b!3198241 () Bool)

(assert (=> b!3198241 (= e!1993835 (or (not (= (++!8630 lt!1077696 lt!1077693) Nil!36043)) (= lt!1077947 lt!1077706)))))

(declare-fun b!3198238 () Bool)

(assert (=> b!3198238 (= e!1993836 (++!8630 lt!1077696 lt!1077693))))

(assert (= (and d!874895 c!536909) b!3198238))

(assert (= (and d!874895 (not c!536909)) b!3198239))

(assert (= (and d!874895 res!1301272) b!3198240))

(assert (= (and b!3198240 res!1301273) b!3198241))

(declare-fun m!3459463 () Bool)

(assert (=> d!874895 m!3459463))

(assert (=> d!874895 m!3458389))

(assert (=> d!874895 m!3458375))

(declare-fun m!3459465 () Bool)

(assert (=> d!874895 m!3459465))

(declare-fun m!3459467 () Bool)

(assert (=> b!3198240 m!3459467))

(assert (=> b!3198240 m!3458337))

(assert (=> b!3198240 m!3458375))

(declare-fun m!3459469 () Bool)

(assert (=> b!3198240 m!3459469))

(assert (=> b!3198239 m!3458375))

(declare-fun m!3459471 () Bool)

(assert (=> b!3198239 m!3459471))

(assert (=> d!874591 d!874895))

(declare-fun d!874897 () Bool)

(assert (=> d!874897 (= (++!8630 (++!8630 lt!1077706 lt!1077696) lt!1077693) (++!8630 lt!1077706 (++!8630 lt!1077696 lt!1077693)))))

(assert (=> d!874897 true))

(declare-fun _$52!1509 () Unit!50442)

(assert (=> d!874897 (= (choose!18659 lt!1077706 lt!1077696 lt!1077693) _$52!1509)))

(declare-fun bs!540717 () Bool)

(assert (= bs!540717 d!874897))

(assert (=> bs!540717 m!3458275))

(assert (=> bs!540717 m!3458275))

(assert (=> bs!540717 m!3458277))

(assert (=> bs!540717 m!3458375))

(assert (=> bs!540717 m!3458375))

(assert (=> bs!540717 m!3458399))

(assert (=> d!874591 d!874897))

(assert (=> d!874591 d!874781))

(assert (=> d!874591 d!874767))

(assert (=> d!874591 d!874779))

(declare-fun d!874899 () Bool)

(assert (=> d!874899 (= (isEmpty!20133 (tail!5199 lt!1077696)) ((_ is Nil!36043) (tail!5199 lt!1077696)))))

(assert (=> b!3197735 d!874899))

(declare-fun d!874901 () Bool)

(assert (=> d!874901 (= (tail!5199 lt!1077696) (t!236994 lt!1077696))))

(assert (=> b!3197735 d!874901))

(declare-fun d!874903 () Bool)

(assert (=> d!874903 (= (list!12809 (_2!20839 lt!1077801)) (list!12813 (c!536749 (_2!20839 lt!1077801))))))

(declare-fun bs!540718 () Bool)

(assert (= bs!540718 d!874903))

(declare-fun m!3459473 () Bool)

(assert (=> bs!540718 m!3459473))

(assert (=> b!3197696 d!874903))

(declare-fun b!3198252 () Bool)

(declare-fun e!1993845 () Bool)

(declare-fun lt!1077954 () tuple2!35418)

(assert (=> b!3198252 (= e!1993845 (not (isEmpty!20140 (_1!20843 lt!1077954))))))

(declare-fun d!874905 () Bool)

(declare-fun e!1993844 () Bool)

(assert (=> d!874905 e!1993844))

(declare-fun c!536914 () Bool)

(declare-fun size!27150 (List!36168) Int)

(assert (=> d!874905 (= c!536914 (> (size!27150 (_1!20843 lt!1077954)) 0))))

(declare-fun e!1993843 () tuple2!35418)

(assert (=> d!874905 (= lt!1077954 e!1993843)))

(declare-fun c!536915 () Bool)

(declare-fun lt!1077956 () Option!7078)

(assert (=> d!874905 (= c!536915 ((_ is Some!7077) lt!1077956))))

(declare-fun maxPrefix!2438 (LexerInterface!4781 List!36169 List!36167) Option!7078)

(assert (=> d!874905 (= lt!1077956 (maxPrefix!2438 thiss!18206 rules!2135 (list!12809 lt!1077699)))))

(assert (=> d!874905 (= (lexList!1307 thiss!18206 rules!2135 (list!12809 lt!1077699)) lt!1077954)))

(declare-fun b!3198253 () Bool)

(declare-fun lt!1077955 () tuple2!35418)

(assert (=> b!3198253 (= e!1993843 (tuple2!35419 (Cons!36044 (_1!20840 (v!35597 lt!1077956)) (_1!20843 lt!1077955)) (_2!20843 lt!1077955)))))

(assert (=> b!3198253 (= lt!1077955 (lexList!1307 thiss!18206 rules!2135 (_2!20840 (v!35597 lt!1077956))))))

(declare-fun b!3198254 () Bool)

(assert (=> b!3198254 (= e!1993843 (tuple2!35419 Nil!36044 (list!12809 lt!1077699)))))

(declare-fun b!3198255 () Bool)

(assert (=> b!3198255 (= e!1993844 (= (_2!20843 lt!1077954) (list!12809 lt!1077699)))))

(declare-fun b!3198256 () Bool)

(assert (=> b!3198256 (= e!1993844 e!1993845)))

(declare-fun res!1301276 () Bool)

(assert (=> b!3198256 (= res!1301276 (< (size!27145 (_2!20843 lt!1077954)) (size!27145 (list!12809 lt!1077699))))))

(assert (=> b!3198256 (=> (not res!1301276) (not e!1993845))))

(assert (= (and d!874905 c!536915) b!3198253))

(assert (= (and d!874905 (not c!536915)) b!3198254))

(assert (= (and d!874905 c!536914) b!3198256))

(assert (= (and d!874905 (not c!536914)) b!3198255))

(assert (= (and b!3198256 res!1301276) b!3198252))

(declare-fun m!3459475 () Bool)

(assert (=> b!3198252 m!3459475))

(declare-fun m!3459477 () Bool)

(assert (=> d!874905 m!3459477))

(assert (=> d!874905 m!3458755))

(declare-fun m!3459479 () Bool)

(assert (=> d!874905 m!3459479))

(declare-fun m!3459481 () Bool)

(assert (=> b!3198253 m!3459481))

(declare-fun m!3459483 () Bool)

(assert (=> b!3198256 m!3459483))

(assert (=> b!3198256 m!3458755))

(declare-fun m!3459485 () Bool)

(assert (=> b!3198256 m!3459485))

(assert (=> b!3197696 d!874905))

(declare-fun d!874907 () Bool)

(assert (=> d!874907 (= (list!12809 lt!1077699) (list!12813 (c!536749 lt!1077699)))))

(declare-fun bs!540719 () Bool)

(assert (= bs!540719 d!874907))

(declare-fun m!3459487 () Bool)

(assert (=> bs!540719 m!3459487))

(assert (=> b!3197696 d!874907))

(declare-fun d!874909 () Bool)

(declare-fun lt!1077957 () Int)

(assert (=> d!874909 (>= lt!1077957 0)))

(declare-fun e!1993846 () Int)

(assert (=> d!874909 (= lt!1077957 e!1993846)))

(declare-fun c!536916 () Bool)

(assert (=> d!874909 (= c!536916 ((_ is Nil!36043) lt!1077853))))

(assert (=> d!874909 (= (size!27145 lt!1077853) lt!1077957)))

(declare-fun b!3198257 () Bool)

(assert (=> b!3198257 (= e!1993846 0)))

(declare-fun b!3198258 () Bool)

(assert (=> b!3198258 (= e!1993846 (+ 1 (size!27145 (t!236994 lt!1077853))))))

(assert (= (and d!874909 c!536916) b!3198257))

(assert (= (and d!874909 (not c!536916)) b!3198258))

(declare-fun m!3459489 () Bool)

(assert (=> b!3198258 m!3459489))

(assert (=> b!3197901 d!874909))

(declare-fun d!874911 () Bool)

(declare-fun lt!1077958 () Int)

(assert (=> d!874911 (>= lt!1077958 0)))

(declare-fun e!1993847 () Int)

(assert (=> d!874911 (= lt!1077958 e!1993847)))

(declare-fun c!536917 () Bool)

(assert (=> d!874911 (= c!536917 ((_ is Nil!36043) (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)))))

(assert (=> d!874911 (= (size!27145 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) lt!1077958)))

(declare-fun b!3198259 () Bool)

(assert (=> b!3198259 (= e!1993847 0)))

(declare-fun b!3198260 () Bool)

(assert (=> b!3198260 (= e!1993847 (+ 1 (size!27145 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)))))))

(assert (= (and d!874911 c!536917) b!3198259))

(assert (= (and d!874911 (not c!536917)) b!3198260))

(declare-fun m!3459491 () Bool)

(assert (=> b!3198260 m!3459491))

(assert (=> b!3197901 d!874911))

(declare-fun d!874913 () Bool)

(declare-fun lt!1077959 () Int)

(assert (=> d!874913 (>= lt!1077959 0)))

(declare-fun e!1993848 () Int)

(assert (=> d!874913 (= lt!1077959 e!1993848)))

(declare-fun c!536918 () Bool)

(assert (=> d!874913 (= c!536918 ((_ is Nil!36043) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))

(assert (=> d!874913 (= (size!27145 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)) lt!1077959)))

(declare-fun b!3198261 () Bool)

(assert (=> b!3198261 (= e!1993848 0)))

(declare-fun b!3198262 () Bool)

(assert (=> b!3198262 (= e!1993848 (+ 1 (size!27145 (t!236994 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(assert (= (and d!874913 c!536918) b!3198261))

(assert (= (and d!874913 (not c!536918)) b!3198262))

(declare-fun m!3459493 () Bool)

(assert (=> b!3198262 m!3459493))

(assert (=> b!3197901 d!874913))

(declare-fun d!874915 () Bool)

(declare-fun res!1301277 () Bool)

(declare-fun e!1993849 () Bool)

(assert (=> d!874915 (=> (not res!1301277) (not e!1993849))))

(assert (=> d!874915 (= res!1301277 (rulesValid!1908 thiss!18206 (t!236996 rules!2135)))))

(assert (=> d!874915 (= (rulesInvariant!4178 thiss!18206 (t!236996 rules!2135)) e!1993849)))

(declare-fun b!3198263 () Bool)

(assert (=> b!3198263 (= e!1993849 (noDuplicateTag!1904 thiss!18206 (t!236996 rules!2135) Nil!36046))))

(assert (= (and d!874915 res!1301277) b!3198263))

(declare-fun m!3459495 () Bool)

(assert (=> d!874915 m!3459495))

(declare-fun m!3459497 () Bool)

(assert (=> b!3198263 m!3459497))

(assert (=> b!3197579 d!874915))

(declare-fun d!874917 () Bool)

(assert (=> d!874917 (rulesInvariant!4178 thiss!18206 (t!236996 rules!2135))))

(declare-fun lt!1077962 () Unit!50442)

(declare-fun choose!18669 (LexerInterface!4781 Rule!10184 List!36169) Unit!50442)

(assert (=> d!874917 (= lt!1077962 (choose!18669 thiss!18206 (h!41465 rules!2135) (t!236996 rules!2135)))))

(assert (=> d!874917 (rulesInvariant!4178 thiss!18206 (Cons!36045 (h!41465 rules!2135) (t!236996 rules!2135)))))

(assert (=> d!874917 (= (lemmaInvariantOnRulesThenOnTail!343 thiss!18206 (h!41465 rules!2135) (t!236996 rules!2135)) lt!1077962)))

(declare-fun bs!540720 () Bool)

(assert (= bs!540720 d!874917))

(assert (=> bs!540720 m!3458651))

(declare-fun m!3459499 () Bool)

(assert (=> bs!540720 m!3459499))

(declare-fun m!3459501 () Bool)

(assert (=> bs!540720 m!3459501))

(assert (=> b!3197579 d!874917))

(declare-fun b!3198264 () Bool)

(declare-fun lt!1077965 () Unit!50442)

(declare-fun lt!1077963 () Unit!50442)

(assert (=> b!3198264 (= lt!1077965 lt!1077963)))

(assert (=> b!3198264 (rulesInvariant!4178 thiss!18206 (t!236996 (t!236996 rules!2135)))))

(assert (=> b!3198264 (= lt!1077963 (lemmaInvariantOnRulesThenOnTail!343 thiss!18206 (h!41465 (t!236996 rules!2135)) (t!236996 (t!236996 rules!2135))))))

(declare-fun e!1993850 () Option!7077)

(assert (=> b!3198264 (= e!1993850 (getRuleFromTag!897 thiss!18206 (t!236996 (t!236996 rules!2135)) (tag!5712 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun b!3198265 () Bool)

(declare-fun e!1993851 () Bool)

(declare-fun e!1993852 () Bool)

(assert (=> b!3198265 (= e!1993851 e!1993852)))

(declare-fun res!1301279 () Bool)

(assert (=> b!3198265 (=> (not res!1301279) (not e!1993852))))

(declare-fun lt!1077964 () Option!7077)

(assert (=> b!3198265 (= res!1301279 (contains!6405 (t!236996 rules!2135) (get!11463 lt!1077964)))))

(declare-fun b!3198266 () Bool)

(declare-fun e!1993853 () Option!7077)

(assert (=> b!3198266 (= e!1993853 (Some!7076 (h!41465 (t!236996 rules!2135))))))

(declare-fun b!3198267 () Bool)

(assert (=> b!3198267 (= e!1993853 e!1993850)))

(declare-fun c!536920 () Bool)

(assert (=> b!3198267 (= c!536920 (and ((_ is Cons!36045) (t!236996 rules!2135)) (not (= (tag!5712 (h!41465 (t!236996 rules!2135))) (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))

(declare-fun d!874919 () Bool)

(assert (=> d!874919 e!1993851))

(declare-fun res!1301278 () Bool)

(assert (=> d!874919 (=> res!1301278 e!1993851)))

(assert (=> d!874919 (= res!1301278 (isEmpty!20138 lt!1077964))))

(assert (=> d!874919 (= lt!1077964 e!1993853)))

(declare-fun c!536919 () Bool)

(assert (=> d!874919 (= c!536919 (and ((_ is Cons!36045) (t!236996 rules!2135)) (= (tag!5712 (h!41465 (t!236996 rules!2135))) (tag!5712 (rule!7626 (h!41464 tokens!494))))))))

(assert (=> d!874919 (rulesInvariant!4178 thiss!18206 (t!236996 rules!2135))))

(assert (=> d!874919 (= (getRuleFromTag!897 thiss!18206 (t!236996 rules!2135) (tag!5712 (rule!7626 (h!41464 tokens!494)))) lt!1077964)))

(declare-fun b!3198268 () Bool)

(assert (=> b!3198268 (= e!1993850 None!7076)))

(declare-fun b!3198269 () Bool)

(assert (=> b!3198269 (= e!1993852 (= (tag!5712 (get!11463 lt!1077964)) (tag!5712 (rule!7626 (h!41464 tokens!494)))))))

(assert (= (and d!874919 c!536919) b!3198266))

(assert (= (and d!874919 (not c!536919)) b!3198267))

(assert (= (and b!3198267 c!536920) b!3198264))

(assert (= (and b!3198267 (not c!536920)) b!3198268))

(assert (= (and d!874919 (not res!1301278)) b!3198265))

(assert (= (and b!3198265 res!1301279) b!3198269))

(declare-fun m!3459503 () Bool)

(assert (=> b!3198264 m!3459503))

(declare-fun m!3459505 () Bool)

(assert (=> b!3198264 m!3459505))

(declare-fun m!3459507 () Bool)

(assert (=> b!3198264 m!3459507))

(declare-fun m!3459509 () Bool)

(assert (=> b!3198265 m!3459509))

(assert (=> b!3198265 m!3459509))

(declare-fun m!3459511 () Bool)

(assert (=> b!3198265 m!3459511))

(declare-fun m!3459513 () Bool)

(assert (=> d!874919 m!3459513))

(assert (=> d!874919 m!3458651))

(assert (=> b!3198269 m!3459509))

(assert (=> b!3197579 d!874919))

(declare-fun d!874921 () Bool)

(assert (=> d!874921 (= (list!12809 lt!1077854) (list!12813 (c!536749 lt!1077854)))))

(declare-fun bs!540721 () Bool)

(assert (= bs!540721 d!874921))

(declare-fun m!3459515 () Bool)

(assert (=> bs!540721 m!3459515))

(assert (=> d!874755 d!874921))

(declare-fun d!874923 () Bool)

(declare-fun list!12814 (Conc!10760) List!36168)

(assert (=> d!874923 (= (list!12810 (singletonSeq!2288 separatorToken!241)) (list!12814 (c!536750 (singletonSeq!2288 separatorToken!241))))))

(declare-fun bs!540722 () Bool)

(assert (= bs!540722 d!874923))

(declare-fun m!3459517 () Bool)

(assert (=> bs!540722 m!3459517))

(assert (=> d!874597 d!874923))

(declare-fun d!874925 () Bool)

(declare-fun e!1993854 () Bool)

(assert (=> d!874925 e!1993854))

(declare-fun res!1301280 () Bool)

(assert (=> d!874925 (=> (not res!1301280) (not e!1993854))))

(declare-fun lt!1077966 () BalanceConc!21134)

(assert (=> d!874925 (= res!1301280 (= (list!12810 lt!1077966) (Cons!36044 separatorToken!241 Nil!36044)))))

(assert (=> d!874925 (= lt!1077966 (singleton!987 separatorToken!241))))

(assert (=> d!874925 (= (singletonSeq!2288 separatorToken!241) lt!1077966)))

(declare-fun b!3198270 () Bool)

(assert (=> b!3198270 (= e!1993854 (isBalanced!3204 (c!536750 lt!1077966)))))

(assert (= (and d!874925 res!1301280) b!3198270))

(declare-fun m!3459519 () Bool)

(assert (=> d!874925 m!3459519))

(declare-fun m!3459521 () Bool)

(assert (=> d!874925 m!3459521))

(declare-fun m!3459523 () Bool)

(assert (=> b!3198270 m!3459523))

(assert (=> d!874597 d!874925))

(declare-fun d!874927 () Bool)

(declare-fun lt!1077967 () BalanceConc!21132)

(assert (=> d!874927 (= (list!12809 lt!1077967) (printList!1331 thiss!18206 (list!12810 (singletonSeq!2288 separatorToken!241))))))

(assert (=> d!874927 (= lt!1077967 (printTailRec!1278 thiss!18206 (singletonSeq!2288 separatorToken!241) 0 (BalanceConc!21133 Empty!10759)))))

(assert (=> d!874927 (= (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)) lt!1077967)))

(declare-fun bs!540723 () Bool)

(assert (= bs!540723 d!874927))

(declare-fun m!3459525 () Bool)

(assert (=> bs!540723 m!3459525))

(assert (=> bs!540723 m!3458453))

(assert (=> bs!540723 m!3458455))

(assert (=> bs!540723 m!3458455))

(declare-fun m!3459527 () Bool)

(assert (=> bs!540723 m!3459527))

(assert (=> bs!540723 m!3458453))

(declare-fun m!3459529 () Bool)

(assert (=> bs!540723 m!3459529))

(assert (=> d!874597 d!874927))

(assert (=> d!874597 d!874785))

(declare-fun e!1993856 () Bool)

(declare-fun b!3198271 () Bool)

(declare-fun lt!1077968 () tuple2!35410)

(assert (=> b!3198271 (= e!1993856 (= (list!12809 (_2!20839 lt!1077968)) (_2!20843 (lexList!1307 thiss!18206 rules!2135 (list!12809 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)))))))))

(declare-fun b!3198272 () Bool)

(declare-fun res!1301283 () Bool)

(assert (=> b!3198272 (=> (not res!1301283) (not e!1993856))))

(assert (=> b!3198272 (= res!1301283 (= (list!12810 (_1!20839 lt!1077968)) (_1!20843 (lexList!1307 thiss!18206 rules!2135 (list!12809 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)))))))))

(declare-fun e!1993855 () Bool)

(declare-fun b!3198273 () Bool)

(assert (=> b!3198273 (= e!1993855 (= (_2!20839 lt!1077968) (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241))))))

(declare-fun b!3198274 () Bool)

(declare-fun e!1993857 () Bool)

(assert (=> b!3198274 (= e!1993855 e!1993857)))

(declare-fun res!1301282 () Bool)

(assert (=> b!3198274 (= res!1301282 (< (size!27148 (_2!20839 lt!1077968)) (size!27148 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)))))))

(assert (=> b!3198274 (=> (not res!1301282) (not e!1993857))))

(declare-fun b!3198275 () Bool)

(assert (=> b!3198275 (= e!1993857 (not (isEmpty!20130 (_1!20839 lt!1077968))))))

(declare-fun d!874929 () Bool)

(assert (=> d!874929 e!1993856))

(declare-fun res!1301281 () Bool)

(assert (=> d!874929 (=> (not res!1301281) (not e!1993856))))

(assert (=> d!874929 (= res!1301281 e!1993855)))

(declare-fun c!536921 () Bool)

(assert (=> d!874929 (= c!536921 (> (size!27146 (_1!20839 lt!1077968)) 0))))

(assert (=> d!874929 (= lt!1077968 (lexTailRecV2!927 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)) (BalanceConc!21133 Empty!10759) (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)) (BalanceConc!21135 Empty!10760)))))

(assert (=> d!874929 (= (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241))) lt!1077968)))

(assert (= (and d!874929 c!536921) b!3198274))

(assert (= (and d!874929 (not c!536921)) b!3198273))

(assert (= (and b!3198274 res!1301282) b!3198275))

(assert (= (and d!874929 res!1301281) b!3198272))

(assert (= (and b!3198272 res!1301283) b!3198271))

(declare-fun m!3459531 () Bool)

(assert (=> d!874929 m!3459531))

(assert (=> d!874929 m!3458445))

(assert (=> d!874929 m!3458445))

(declare-fun m!3459533 () Bool)

(assert (=> d!874929 m!3459533))

(declare-fun m!3459535 () Bool)

(assert (=> b!3198271 m!3459535))

(assert (=> b!3198271 m!3458445))

(declare-fun m!3459537 () Bool)

(assert (=> b!3198271 m!3459537))

(assert (=> b!3198271 m!3459537))

(declare-fun m!3459539 () Bool)

(assert (=> b!3198271 m!3459539))

(declare-fun m!3459541 () Bool)

(assert (=> b!3198274 m!3459541))

(assert (=> b!3198274 m!3458445))

(declare-fun m!3459543 () Bool)

(assert (=> b!3198274 m!3459543))

(declare-fun m!3459545 () Bool)

(assert (=> b!3198275 m!3459545))

(declare-fun m!3459547 () Bool)

(assert (=> b!3198272 m!3459547))

(assert (=> b!3198272 m!3458445))

(assert (=> b!3198272 m!3459537))

(assert (=> b!3198272 m!3459537))

(assert (=> b!3198272 m!3459539))

(assert (=> d!874597 d!874929))

(declare-fun d!874931 () Bool)

(declare-fun lt!1077971 () Int)

(assert (=> d!874931 (= lt!1077971 (size!27150 (list!12810 (_1!20839 lt!1077726))))))

(declare-fun size!27151 (Conc!10760) Int)

(assert (=> d!874931 (= lt!1077971 (size!27151 (c!536750 (_1!20839 lt!1077726))))))

(assert (=> d!874931 (= (size!27146 (_1!20839 lt!1077726)) lt!1077971)))

(declare-fun bs!540724 () Bool)

(assert (= bs!540724 d!874931))

(declare-fun m!3459549 () Bool)

(assert (=> bs!540724 m!3459549))

(assert (=> bs!540724 m!3459549))

(declare-fun m!3459551 () Bool)

(assert (=> bs!540724 m!3459551))

(declare-fun m!3459553 () Bool)

(assert (=> bs!540724 m!3459553))

(assert (=> d!874597 d!874931))

(declare-fun d!874933 () Bool)

(assert (=> d!874933 (= (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241))))) (list!12814 (c!536750 (_1!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)))))))))

(declare-fun bs!540725 () Bool)

(assert (= bs!540725 d!874933))

(declare-fun m!3459555 () Bool)

(assert (=> bs!540725 m!3459555))

(assert (=> d!874597 d!874933))

(declare-fun d!874935 () Bool)

(assert (=> d!874935 (= (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))) (v!35596 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))))))

(assert (=> b!3197589 d!874935))

(assert (=> b!3197589 d!874687))

(declare-fun b!3198276 () Bool)

(declare-fun res!1301285 () Bool)

(declare-fun e!1993864 () Bool)

(assert (=> b!3198276 (=> res!1301285 e!1993864)))

(assert (=> b!3198276 (= res!1301285 (not ((_ is ElementMatch!9951) (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))))))))

(declare-fun e!1993863 () Bool)

(assert (=> b!3198276 (= e!1993863 e!1993864)))

(declare-fun b!3198277 () Bool)

(declare-fun e!1993862 () Bool)

(assert (=> b!3198277 (= e!1993864 e!1993862)))

(declare-fun res!1301286 () Bool)

(assert (=> b!3198277 (=> (not res!1301286) (not e!1993862))))

(declare-fun lt!1077972 () Bool)

(assert (=> b!3198277 (= res!1301286 (not lt!1077972))))

(declare-fun b!3198278 () Bool)

(declare-fun res!1301288 () Bool)

(declare-fun e!1993859 () Bool)

(assert (=> b!3198278 (=> res!1301288 e!1993859)))

(assert (=> b!3198278 (= res!1301288 (not (isEmpty!20133 (tail!5199 (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3198279 () Bool)

(declare-fun e!1993858 () Bool)

(assert (=> b!3198279 (= e!1993858 e!1993863)))

(declare-fun c!536922 () Bool)

(assert (=> b!3198279 (= c!536922 ((_ is EmptyLang!9951) (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))))))))

(declare-fun e!1993861 () Bool)

(declare-fun b!3198280 () Bool)

(assert (=> b!3198280 (= e!1993861 (matchR!4585 (derivativeStep!2945 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))) (head!7005 (list!12809 (charsOf!3208 separatorToken!241)))) (tail!5199 (list!12809 (charsOf!3208 separatorToken!241)))))))

(declare-fun d!874937 () Bool)

(assert (=> d!874937 e!1993858))

(declare-fun c!536923 () Bool)

(assert (=> d!874937 (= c!536923 ((_ is EmptyExpr!9951) (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))))))))

(assert (=> d!874937 (= lt!1077972 e!1993861)))

(declare-fun c!536924 () Bool)

(assert (=> d!874937 (= c!536924 (isEmpty!20133 (list!12809 (charsOf!3208 separatorToken!241))))))

(assert (=> d!874937 (validRegex!4544 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))))))

(assert (=> d!874937 (= (matchR!4585 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))) (list!12809 (charsOf!3208 separatorToken!241))) lt!1077972)))

(declare-fun b!3198281 () Bool)

(declare-fun e!1993860 () Bool)

(assert (=> b!3198281 (= e!1993860 (= (head!7005 (list!12809 (charsOf!3208 separatorToken!241))) (c!536748 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))))))))

(declare-fun b!3198282 () Bool)

(assert (=> b!3198282 (= e!1993863 (not lt!1077972))))

(declare-fun b!3198283 () Bool)

(declare-fun res!1301287 () Bool)

(assert (=> b!3198283 (=> (not res!1301287) (not e!1993860))))

(declare-fun call!231603 () Bool)

(assert (=> b!3198283 (= res!1301287 (not call!231603))))

(declare-fun b!3198284 () Bool)

(assert (=> b!3198284 (= e!1993861 (nullable!3392 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))))))))

(declare-fun b!3198285 () Bool)

(assert (=> b!3198285 (= e!1993858 (= lt!1077972 call!231603))))

(declare-fun bm!231598 () Bool)

(assert (=> bm!231598 (= call!231603 (isEmpty!20133 (list!12809 (charsOf!3208 separatorToken!241))))))

(declare-fun b!3198286 () Bool)

(declare-fun res!1301284 () Bool)

(assert (=> b!3198286 (=> (not res!1301284) (not e!1993860))))

(assert (=> b!3198286 (= res!1301284 (isEmpty!20133 (tail!5199 (list!12809 (charsOf!3208 separatorToken!241)))))))

(declare-fun b!3198287 () Bool)

(declare-fun res!1301291 () Bool)

(assert (=> b!3198287 (=> res!1301291 e!1993864)))

(assert (=> b!3198287 (= res!1301291 e!1993860)))

(declare-fun res!1301290 () Bool)

(assert (=> b!3198287 (=> (not res!1301290) (not e!1993860))))

(assert (=> b!3198287 (= res!1301290 lt!1077972)))

(declare-fun b!3198288 () Bool)

(assert (=> b!3198288 (= e!1993862 e!1993859)))

(declare-fun res!1301289 () Bool)

(assert (=> b!3198288 (=> res!1301289 e!1993859)))

(assert (=> b!3198288 (= res!1301289 call!231603)))

(declare-fun b!3198289 () Bool)

(assert (=> b!3198289 (= e!1993859 (not (= (head!7005 (list!12809 (charsOf!3208 separatorToken!241))) (c!536748 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))))))))))

(assert (= (and d!874937 c!536924) b!3198284))

(assert (= (and d!874937 (not c!536924)) b!3198280))

(assert (= (and d!874937 c!536923) b!3198285))

(assert (= (and d!874937 (not c!536923)) b!3198279))

(assert (= (and b!3198279 c!536922) b!3198282))

(assert (= (and b!3198279 (not c!536922)) b!3198276))

(assert (= (and b!3198276 (not res!1301285)) b!3198287))

(assert (= (and b!3198287 res!1301290) b!3198283))

(assert (= (and b!3198283 res!1301287) b!3198286))

(assert (= (and b!3198286 res!1301284) b!3198281))

(assert (= (and b!3198287 (not res!1301291)) b!3198277))

(assert (= (and b!3198277 res!1301286) b!3198288))

(assert (= (and b!3198288 (not res!1301289)) b!3198278))

(assert (= (and b!3198278 (not res!1301288)) b!3198289))

(assert (= (or b!3198285 b!3198283 b!3198288) bm!231598))

(declare-fun m!3459557 () Bool)

(assert (=> b!3198284 m!3459557))

(assert (=> b!3198278 m!3458371))

(declare-fun m!3459559 () Bool)

(assert (=> b!3198278 m!3459559))

(assert (=> b!3198278 m!3459559))

(declare-fun m!3459561 () Bool)

(assert (=> b!3198278 m!3459561))

(assert (=> b!3198281 m!3458371))

(declare-fun m!3459563 () Bool)

(assert (=> b!3198281 m!3459563))

(assert (=> b!3198289 m!3458371))

(assert (=> b!3198289 m!3459563))

(assert (=> b!3198280 m!3458371))

(assert (=> b!3198280 m!3459563))

(assert (=> b!3198280 m!3459563))

(declare-fun m!3459565 () Bool)

(assert (=> b!3198280 m!3459565))

(assert (=> b!3198280 m!3458371))

(assert (=> b!3198280 m!3459559))

(assert (=> b!3198280 m!3459565))

(assert (=> b!3198280 m!3459559))

(declare-fun m!3459567 () Bool)

(assert (=> b!3198280 m!3459567))

(assert (=> b!3198286 m!3458371))

(assert (=> b!3198286 m!3459559))

(assert (=> b!3198286 m!3459559))

(assert (=> b!3198286 m!3459561))

(assert (=> d!874937 m!3458371))

(declare-fun m!3459569 () Bool)

(assert (=> d!874937 m!3459569))

(declare-fun m!3459571 () Bool)

(assert (=> d!874937 m!3459571))

(assert (=> bm!231598 m!3458371))

(assert (=> bm!231598 m!3459569))

(assert (=> b!3197589 d!874937))

(assert (=> b!3197589 d!874755))

(assert (=> b!3197589 d!874769))

(declare-fun b!3198290 () Bool)

(declare-fun res!1301293 () Bool)

(declare-fun e!1993871 () Bool)

(assert (=> b!3198290 (=> res!1301293 e!1993871)))

(assert (=> b!3198290 (= res!1301293 (not ((_ is ElementMatch!9951) (regex!5192 (rule!7626 (h!41464 tokens!494))))))))

(declare-fun e!1993870 () Bool)

(assert (=> b!3198290 (= e!1993870 e!1993871)))

(declare-fun b!3198291 () Bool)

(declare-fun e!1993869 () Bool)

(assert (=> b!3198291 (= e!1993871 e!1993869)))

(declare-fun res!1301294 () Bool)

(assert (=> b!3198291 (=> (not res!1301294) (not e!1993869))))

(declare-fun lt!1077973 () Bool)

(assert (=> b!3198291 (= res!1301294 (not lt!1077973))))

(declare-fun b!3198292 () Bool)

(declare-fun res!1301296 () Bool)

(declare-fun e!1993866 () Bool)

(assert (=> b!3198292 (=> res!1301296 e!1993866)))

(assert (=> b!3198292 (= res!1301296 (not (isEmpty!20133 (tail!5199 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))))

(declare-fun b!3198293 () Bool)

(declare-fun e!1993865 () Bool)

(assert (=> b!3198293 (= e!1993865 e!1993870)))

(declare-fun c!536925 () Bool)

(assert (=> b!3198293 (= c!536925 ((_ is EmptyLang!9951) (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun b!3198294 () Bool)

(declare-fun e!1993868 () Bool)

(assert (=> b!3198294 (= e!1993868 (matchR!4585 (derivativeStep!2945 (regex!5192 (rule!7626 (h!41464 tokens!494))) (head!7005 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706))))) (tail!5199 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706))))))))

(declare-fun d!874939 () Bool)

(assert (=> d!874939 e!1993865))

(declare-fun c!536926 () Bool)

(assert (=> d!874939 (= c!536926 ((_ is EmptyExpr!9951) (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(assert (=> d!874939 (= lt!1077973 e!1993868)))

(declare-fun c!536927 () Bool)

(assert (=> d!874939 (= c!536927 (isEmpty!20133 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))

(assert (=> d!874939 (validRegex!4544 (regex!5192 (rule!7626 (h!41464 tokens!494))))))

(assert (=> d!874939 (= (matchR!4585 (regex!5192 (rule!7626 (h!41464 tokens!494))) (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))) lt!1077973)))

(declare-fun b!3198295 () Bool)

(declare-fun e!1993867 () Bool)

(assert (=> b!3198295 (= e!1993867 (= (head!7005 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))) (c!536748 (regex!5192 (rule!7626 (h!41464 tokens!494))))))))

(declare-fun b!3198296 () Bool)

(assert (=> b!3198296 (= e!1993870 (not lt!1077973))))

(declare-fun b!3198297 () Bool)

(declare-fun res!1301295 () Bool)

(assert (=> b!3198297 (=> (not res!1301295) (not e!1993867))))

(declare-fun call!231604 () Bool)

(assert (=> b!3198297 (= res!1301295 (not call!231604))))

(declare-fun b!3198298 () Bool)

(assert (=> b!3198298 (= e!1993868 (nullable!3392 (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun b!3198299 () Bool)

(assert (=> b!3198299 (= e!1993865 (= lt!1077973 call!231604))))

(declare-fun bm!231599 () Bool)

(assert (=> bm!231599 (= call!231604 (isEmpty!20133 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))

(declare-fun b!3198300 () Bool)

(declare-fun res!1301292 () Bool)

(assert (=> b!3198300 (=> (not res!1301292) (not e!1993867))))

(assert (=> b!3198300 (= res!1301292 (isEmpty!20133 (tail!5199 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706))))))))

(declare-fun b!3198301 () Bool)

(declare-fun res!1301299 () Bool)

(assert (=> b!3198301 (=> res!1301299 e!1993871)))

(assert (=> b!3198301 (= res!1301299 e!1993867)))

(declare-fun res!1301298 () Bool)

(assert (=> b!3198301 (=> (not res!1301298) (not e!1993867))))

(assert (=> b!3198301 (= res!1301298 lt!1077973)))

(declare-fun b!3198302 () Bool)

(assert (=> b!3198302 (= e!1993869 e!1993866)))

(declare-fun res!1301297 () Bool)

(assert (=> b!3198302 (=> res!1301297 e!1993866)))

(assert (=> b!3198302 (= res!1301297 call!231604)))

(declare-fun b!3198303 () Bool)

(assert (=> b!3198303 (= e!1993866 (not (= (head!7005 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))) (c!536748 (regex!5192 (rule!7626 (h!41464 tokens!494)))))))))

(assert (= (and d!874939 c!536927) b!3198298))

(assert (= (and d!874939 (not c!536927)) b!3198294))

(assert (= (and d!874939 c!536926) b!3198299))

(assert (= (and d!874939 (not c!536926)) b!3198293))

(assert (= (and b!3198293 c!536925) b!3198296))

(assert (= (and b!3198293 (not c!536925)) b!3198290))

(assert (= (and b!3198290 (not res!1301293)) b!3198301))

(assert (= (and b!3198301 res!1301298) b!3198297))

(assert (= (and b!3198297 res!1301295) b!3198300))

(assert (= (and b!3198300 res!1301292) b!3198295))

(assert (= (and b!3198301 (not res!1301299)) b!3198291))

(assert (= (and b!3198291 res!1301294) b!3198302))

(assert (= (and b!3198302 (not res!1301297)) b!3198292))

(assert (= (and b!3198292 (not res!1301296)) b!3198303))

(assert (= (or b!3198299 b!3198297 b!3198302) bm!231599))

(assert (=> b!3198298 m!3459361))

(declare-fun m!3459573 () Bool)

(assert (=> b!3198292 m!3459573))

(assert (=> b!3198292 m!3459573))

(declare-fun m!3459575 () Bool)

(assert (=> b!3198292 m!3459575))

(declare-fun m!3459577 () Bool)

(assert (=> b!3198295 m!3459577))

(assert (=> b!3198303 m!3459577))

(assert (=> b!3198294 m!3459577))

(assert (=> b!3198294 m!3459577))

(declare-fun m!3459579 () Bool)

(assert (=> b!3198294 m!3459579))

(assert (=> b!3198294 m!3459573))

(assert (=> b!3198294 m!3459579))

(assert (=> b!3198294 m!3459573))

(declare-fun m!3459581 () Bool)

(assert (=> b!3198294 m!3459581))

(assert (=> b!3198300 m!3459573))

(assert (=> b!3198300 m!3459573))

(assert (=> b!3198300 m!3459575))

(assert (=> d!874939 m!3458647))

(assert (=> d!874939 m!3459375))

(assert (=> bm!231599 m!3458647))

(assert (=> b!3197558 d!874939))

(declare-fun b!3198332 () Bool)

(declare-fun e!1993891 () tuple2!35414)

(declare-fun e!1993894 () tuple2!35414)

(assert (=> b!3198332 (= e!1993891 e!1993894)))

(declare-fun lt!1078039 () tuple2!35414)

(declare-fun call!231627 () tuple2!35414)

(assert (=> b!3198332 (= lt!1078039 call!231627)))

(declare-fun c!536944 () Bool)

(assert (=> b!3198332 (= c!536944 (isEmpty!20133 (_1!20841 lt!1078039)))))

(declare-fun bm!231616 () Bool)

(declare-fun call!231625 () List!36167)

(assert (=> bm!231616 (= call!231625 (tail!5199 lt!1077706))))

(declare-fun bm!231617 () Bool)

(declare-fun call!231626 () Bool)

(assert (=> bm!231617 (= call!231626 (nullable!3392 (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun b!3198333 () Bool)

(declare-fun e!1993890 () tuple2!35414)

(declare-fun e!1993888 () tuple2!35414)

(assert (=> b!3198333 (= e!1993890 e!1993888)))

(declare-fun c!536943 () Bool)

(assert (=> b!3198333 (= c!536943 (= (size!27145 Nil!36043) (size!27145 lt!1077706)))))

(declare-fun call!231622 () Regex!9951)

(declare-fun bm!231618 () Bool)

(declare-fun lt!1078034 () List!36167)

(assert (=> bm!231618 (= call!231627 (findLongestMatchInner!824 call!231622 lt!1078034 (+ (size!27145 Nil!36043) 1) call!231625 lt!1077706 (size!27145 lt!1077706)))))

(declare-fun b!3198334 () Bool)

(assert (=> b!3198334 (= e!1993894 (tuple2!35415 Nil!36043 lt!1077706))))

(declare-fun b!3198335 () Bool)

(declare-fun e!1993889 () tuple2!35414)

(assert (=> b!3198335 (= e!1993889 (tuple2!35415 Nil!36043 lt!1077706))))

(declare-fun b!3198336 () Bool)

(declare-fun e!1993893 () Bool)

(declare-fun e!1993895 () Bool)

(assert (=> b!3198336 (= e!1993893 e!1993895)))

(declare-fun res!1301304 () Bool)

(assert (=> b!3198336 (=> res!1301304 e!1993895)))

(declare-fun lt!1078042 () tuple2!35414)

(assert (=> b!3198336 (= res!1301304 (isEmpty!20133 (_1!20841 lt!1078042)))))

(declare-fun bm!231619 () Bool)

(declare-fun call!231623 () Bool)

(declare-fun isPrefix!2777 (List!36167 List!36167) Bool)

(assert (=> bm!231619 (= call!231623 (isPrefix!2777 lt!1077706 lt!1077706))))

(declare-fun b!3198337 () Bool)

(assert (=> b!3198337 (= e!1993889 (tuple2!35415 Nil!36043 Nil!36043))))

(declare-fun b!3198338 () Bool)

(declare-fun e!1993892 () Unit!50442)

(declare-fun Unit!50444 () Unit!50442)

(assert (=> b!3198338 (= e!1993892 Unit!50444)))

(declare-fun lt!1078038 () Unit!50442)

(declare-fun call!231628 () Unit!50442)

(assert (=> b!3198338 (= lt!1078038 call!231628)))

(assert (=> b!3198338 call!231623))

(declare-fun lt!1078047 () Unit!50442)

(assert (=> b!3198338 (= lt!1078047 lt!1078038)))

(declare-fun lt!1078033 () Unit!50442)

(declare-fun call!231624 () Unit!50442)

(assert (=> b!3198338 (= lt!1078033 call!231624)))

(assert (=> b!3198338 (= lt!1077706 Nil!36043)))

(declare-fun lt!1078041 () Unit!50442)

(assert (=> b!3198338 (= lt!1078041 lt!1078033)))

(assert (=> b!3198338 false))

(declare-fun b!3198339 () Bool)

(assert (=> b!3198339 (= e!1993895 (>= (size!27145 (_1!20841 lt!1078042)) (size!27145 Nil!36043)))))

(declare-fun b!3198340 () Bool)

(declare-fun Unit!50445 () Unit!50442)

(assert (=> b!3198340 (= e!1993892 Unit!50445)))

(declare-fun b!3198341 () Bool)

(assert (=> b!3198341 (= e!1993891 call!231627)))

(declare-fun b!3198342 () Bool)

(declare-fun c!536942 () Bool)

(assert (=> b!3198342 (= c!536942 call!231626)))

(declare-fun lt!1078035 () Unit!50442)

(declare-fun lt!1078030 () Unit!50442)

(assert (=> b!3198342 (= lt!1078035 lt!1078030)))

(declare-fun lt!1078037 () C!20088)

(declare-fun lt!1078031 () List!36167)

(assert (=> b!3198342 (= (++!8630 (++!8630 Nil!36043 (Cons!36043 lt!1078037 Nil!36043)) lt!1078031) lt!1077706)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1113 (List!36167 C!20088 List!36167 List!36167) Unit!50442)

(assert (=> b!3198342 (= lt!1078030 (lemmaMoveElementToOtherListKeepsConcatEq!1113 Nil!36043 lt!1078037 lt!1078031 lt!1077706))))

(assert (=> b!3198342 (= lt!1078031 (tail!5199 lt!1077706))))

(assert (=> b!3198342 (= lt!1078037 (head!7005 lt!1077706))))

(declare-fun lt!1078057 () Unit!50442)

(declare-fun lt!1078043 () Unit!50442)

(assert (=> b!3198342 (= lt!1078057 lt!1078043)))

(declare-fun getSuffix!1379 (List!36167 List!36167) List!36167)

(assert (=> b!3198342 (isPrefix!2777 (++!8630 Nil!36043 (Cons!36043 (head!7005 (getSuffix!1379 lt!1077706 Nil!36043)) Nil!36043)) lt!1077706)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!501 (List!36167 List!36167) Unit!50442)

(assert (=> b!3198342 (= lt!1078043 (lemmaAddHeadSuffixToPrefixStillPrefix!501 Nil!36043 lt!1077706))))

(declare-fun lt!1078051 () Unit!50442)

(declare-fun lt!1078032 () Unit!50442)

(assert (=> b!3198342 (= lt!1078051 lt!1078032)))

(assert (=> b!3198342 (= lt!1078032 (lemmaAddHeadSuffixToPrefixStillPrefix!501 Nil!36043 lt!1077706))))

(assert (=> b!3198342 (= lt!1078034 (++!8630 Nil!36043 (Cons!36043 (head!7005 lt!1077706) Nil!36043)))))

(declare-fun lt!1078050 () Unit!50442)

(assert (=> b!3198342 (= lt!1078050 e!1993892)))

(declare-fun c!536941 () Bool)

(assert (=> b!3198342 (= c!536941 (= (size!27145 Nil!36043) (size!27145 lt!1077706)))))

(declare-fun lt!1078054 () Unit!50442)

(declare-fun lt!1078040 () Unit!50442)

(assert (=> b!3198342 (= lt!1078054 lt!1078040)))

(assert (=> b!3198342 (<= (size!27145 Nil!36043) (size!27145 lt!1077706))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!309 (List!36167 List!36167) Unit!50442)

(assert (=> b!3198342 (= lt!1078040 (lemmaIsPrefixThenSmallerEqSize!309 Nil!36043 lt!1077706))))

(assert (=> b!3198342 (= e!1993888 e!1993891)))

(declare-fun b!3198343 () Bool)

(assert (=> b!3198343 (= e!1993894 lt!1078039)))

(declare-fun bm!231621 () Bool)

(declare-fun lemmaIsPrefixRefl!1736 (List!36167 List!36167) Unit!50442)

(assert (=> bm!231621 (= call!231628 (lemmaIsPrefixRefl!1736 lt!1077706 lt!1077706))))

(declare-fun b!3198344 () Bool)

(declare-fun c!536945 () Bool)

(assert (=> b!3198344 (= c!536945 call!231626)))

(declare-fun lt!1078056 () Unit!50442)

(declare-fun lt!1078044 () Unit!50442)

(assert (=> b!3198344 (= lt!1078056 lt!1078044)))

(assert (=> b!3198344 (= lt!1077706 Nil!36043)))

(assert (=> b!3198344 (= lt!1078044 call!231624)))

(declare-fun lt!1078036 () Unit!50442)

(declare-fun lt!1078052 () Unit!50442)

(assert (=> b!3198344 (= lt!1078036 lt!1078052)))

(assert (=> b!3198344 call!231623))

(assert (=> b!3198344 (= lt!1078052 call!231628)))

(assert (=> b!3198344 (= e!1993888 e!1993889)))

(declare-fun bm!231622 () Bool)

(declare-fun call!231621 () C!20088)

(assert (=> bm!231622 (= call!231622 (derivativeStep!2945 (regex!5192 (rule!7626 (h!41464 tokens!494))) call!231621))))

(declare-fun d!874941 () Bool)

(assert (=> d!874941 e!1993893))

(declare-fun res!1301305 () Bool)

(assert (=> d!874941 (=> (not res!1301305) (not e!1993893))))

(assert (=> d!874941 (= res!1301305 (= (++!8630 (_1!20841 lt!1078042) (_2!20841 lt!1078042)) lt!1077706))))

(assert (=> d!874941 (= lt!1078042 e!1993890)))

(declare-fun c!536940 () Bool)

(declare-fun lostCause!875 (Regex!9951) Bool)

(assert (=> d!874941 (= c!536940 (lostCause!875 (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(declare-fun lt!1078055 () Unit!50442)

(declare-fun Unit!50446 () Unit!50442)

(assert (=> d!874941 (= lt!1078055 Unit!50446)))

(assert (=> d!874941 (= (getSuffix!1379 lt!1077706 Nil!36043) lt!1077706)))

(declare-fun lt!1078046 () Unit!50442)

(declare-fun lt!1078048 () Unit!50442)

(assert (=> d!874941 (= lt!1078046 lt!1078048)))

(declare-fun lt!1078049 () List!36167)

(assert (=> d!874941 (= lt!1077706 lt!1078049)))

(declare-fun lemmaSamePrefixThenSameSuffix!1225 (List!36167 List!36167 List!36167 List!36167 List!36167) Unit!50442)

(assert (=> d!874941 (= lt!1078048 (lemmaSamePrefixThenSameSuffix!1225 Nil!36043 lt!1077706 Nil!36043 lt!1078049 lt!1077706))))

(assert (=> d!874941 (= lt!1078049 (getSuffix!1379 lt!1077706 Nil!36043))))

(declare-fun lt!1078053 () Unit!50442)

(declare-fun lt!1078045 () Unit!50442)

(assert (=> d!874941 (= lt!1078053 lt!1078045)))

(assert (=> d!874941 (isPrefix!2777 Nil!36043 (++!8630 Nil!36043 lt!1077706))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1759 (List!36167 List!36167) Unit!50442)

(assert (=> d!874941 (= lt!1078045 (lemmaConcatTwoListThenFirstIsPrefix!1759 Nil!36043 lt!1077706))))

(assert (=> d!874941 (validRegex!4544 (regex!5192 (rule!7626 (h!41464 tokens!494))))))

(assert (=> d!874941 (= (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)) lt!1078042)))

(declare-fun bm!231620 () Bool)

(assert (=> bm!231620 (= call!231621 (head!7005 lt!1077706))))

(declare-fun b!3198345 () Bool)

(assert (=> b!3198345 (= e!1993890 (tuple2!35415 Nil!36043 lt!1077706))))

(declare-fun bm!231623 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!508 (List!36167 List!36167 List!36167) Unit!50442)

(assert (=> bm!231623 (= call!231624 (lemmaIsPrefixSameLengthThenSameList!508 lt!1077706 Nil!36043 lt!1077706))))

(assert (= (and d!874941 c!536940) b!3198345))

(assert (= (and d!874941 (not c!536940)) b!3198333))

(assert (= (and b!3198333 c!536943) b!3198344))

(assert (= (and b!3198333 (not c!536943)) b!3198342))

(assert (= (and b!3198344 c!536945) b!3198337))

(assert (= (and b!3198344 (not c!536945)) b!3198335))

(assert (= (and b!3198342 c!536941) b!3198338))

(assert (= (and b!3198342 (not c!536941)) b!3198340))

(assert (= (and b!3198342 c!536942) b!3198332))

(assert (= (and b!3198342 (not c!536942)) b!3198341))

(assert (= (and b!3198332 c!536944) b!3198334))

(assert (= (and b!3198332 (not c!536944)) b!3198343))

(assert (= (or b!3198332 b!3198341) bm!231620))

(assert (= (or b!3198332 b!3198341) bm!231616))

(assert (= (or b!3198332 b!3198341) bm!231622))

(assert (= (or b!3198332 b!3198341) bm!231618))

(assert (= (or b!3198344 b!3198338) bm!231621))

(assert (= (or b!3198344 b!3198338) bm!231619))

(assert (= (or b!3198344 b!3198338) bm!231623))

(assert (= (or b!3198344 b!3198342) bm!231617))

(assert (= (and d!874941 res!1301305) b!3198336))

(assert (= (and b!3198336 (not res!1301304)) b!3198339))

(declare-fun m!3459583 () Bool)

(assert (=> b!3198336 m!3459583))

(declare-fun m!3459585 () Bool)

(assert (=> bm!231623 m!3459585))

(declare-fun m!3459587 () Bool)

(assert (=> bm!231619 m!3459587))

(declare-fun m!3459589 () Bool)

(assert (=> b!3198332 m!3459589))

(assert (=> bm!231616 m!3458933))

(declare-fun m!3459591 () Bool)

(assert (=> bm!231622 m!3459591))

(declare-fun m!3459593 () Bool)

(assert (=> b!3198342 m!3459593))

(declare-fun m!3459595 () Bool)

(assert (=> b!3198342 m!3459595))

(declare-fun m!3459597 () Bool)

(assert (=> b!3198342 m!3459597))

(declare-fun m!3459599 () Bool)

(assert (=> b!3198342 m!3459599))

(assert (=> b!3198342 m!3459597))

(declare-fun m!3459601 () Bool)

(assert (=> b!3198342 m!3459601))

(assert (=> b!3198342 m!3458933))

(assert (=> b!3198342 m!3458337))

(assert (=> b!3198342 m!3459593))

(assert (=> b!3198342 m!3458621))

(declare-fun m!3459603 () Bool)

(assert (=> b!3198342 m!3459603))

(declare-fun m!3459605 () Bool)

(assert (=> b!3198342 m!3459605))

(assert (=> b!3198342 m!3459605))

(declare-fun m!3459607 () Bool)

(assert (=> b!3198342 m!3459607))

(declare-fun m!3459609 () Bool)

(assert (=> b!3198342 m!3459609))

(declare-fun m!3459611 () Bool)

(assert (=> b!3198342 m!3459611))

(assert (=> b!3198342 m!3458937))

(declare-fun m!3459613 () Bool)

(assert (=> b!3198339 m!3459613))

(assert (=> b!3198339 m!3458621))

(assert (=> bm!231618 m!3458337))

(declare-fun m!3459615 () Bool)

(assert (=> bm!231618 m!3459615))

(assert (=> bm!231620 m!3458937))

(assert (=> bm!231617 m!3459361))

(declare-fun m!3459617 () Bool)

(assert (=> bm!231621 m!3459617))

(assert (=> d!874941 m!3459597))

(declare-fun m!3459619 () Bool)

(assert (=> d!874941 m!3459619))

(declare-fun m!3459621 () Bool)

(assert (=> d!874941 m!3459621))

(declare-fun m!3459623 () Bool)

(assert (=> d!874941 m!3459623))

(assert (=> d!874941 m!3459375))

(declare-fun m!3459625 () Bool)

(assert (=> d!874941 m!3459625))

(declare-fun m!3459627 () Bool)

(assert (=> d!874941 m!3459627))

(assert (=> d!874941 m!3459627))

(declare-fun m!3459629 () Bool)

(assert (=> d!874941 m!3459629))

(assert (=> b!3197558 d!874941))

(declare-fun d!874943 () Bool)

(declare-fun lt!1078058 () Int)

(assert (=> d!874943 (>= lt!1078058 0)))

(declare-fun e!1993896 () Int)

(assert (=> d!874943 (= lt!1078058 e!1993896)))

(declare-fun c!536946 () Bool)

(assert (=> d!874943 (= c!536946 ((_ is Nil!36043) Nil!36043))))

(assert (=> d!874943 (= (size!27145 Nil!36043) lt!1078058)))

(declare-fun b!3198346 () Bool)

(assert (=> b!3198346 (= e!1993896 0)))

(declare-fun b!3198347 () Bool)

(assert (=> b!3198347 (= e!1993896 (+ 1 (size!27145 (t!236994 Nil!36043))))))

(assert (= (and d!874943 c!536946) b!3198346))

(assert (= (and d!874943 (not c!536946)) b!3198347))

(declare-fun m!3459631 () Bool)

(assert (=> b!3198347 m!3459631))

(assert (=> b!3197558 d!874943))

(assert (=> b!3197558 d!874683))

(declare-fun d!874945 () Bool)

(assert (=> d!874945 (dynLambda!14516 lambda!117051 (h!41464 tokens!494))))

(assert (=> d!874945 true))

(declare-fun _$7!1060 () Unit!50442)

(assert (=> d!874945 (= (choose!18661 tokens!494 lambda!117051 (h!41464 tokens!494)) _$7!1060)))

(declare-fun b_lambda!87391 () Bool)

(assert (=> (not b_lambda!87391) (not d!874945)))

(declare-fun bs!540726 () Bool)

(assert (= bs!540726 d!874945))

(assert (=> bs!540726 m!3458493))

(assert (=> d!874627 d!874945))

(assert (=> d!874627 d!874737))

(declare-fun d!874947 () Bool)

(declare-fun isBalanced!3206 (Conc!10759) Bool)

(assert (=> d!874947 (= (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))) (isBalanced!3206 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))))))

(declare-fun bs!540727 () Bool)

(assert (= bs!540727 d!874947))

(declare-fun m!3459633 () Bool)

(assert (=> bs!540727 m!3459633))

(assert (=> tb!156481 d!874947))

(declare-fun d!874949 () Bool)

(assert (=> d!874949 (= (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))) (isBalanced!3206 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))))))

(declare-fun bs!540728 () Bool)

(assert (= bs!540728 d!874949))

(declare-fun m!3459635 () Bool)

(assert (=> bs!540728 m!3459635))

(assert (=> tb!156457 d!874949))

(declare-fun d!874951 () Bool)

(assert (=> d!874951 (= (isEmpty!20133 (tail!5199 lt!1077706)) ((_ is Nil!36043) (tail!5199 lt!1077706)))))

(assert (=> b!3197861 d!874951))

(declare-fun d!874953 () Bool)

(assert (=> d!874953 (= (tail!5199 lt!1077706) (t!236994 lt!1077706))))

(assert (=> b!3197861 d!874953))

(declare-fun d!874955 () Bool)

(assert (=> d!874955 true))

(declare-fun lambda!117064 () Int)

(declare-fun order!18335 () Int)

(declare-fun dynLambda!14526 (Int Int) Int)

(assert (=> d!874955 (< (dynLambda!14524 order!18333 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (dynLambda!14526 order!18335 lambda!117064))))

(assert (=> d!874955 true))

(assert (=> d!874955 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (dynLambda!14526 order!18335 lambda!117064))))

(declare-fun Forall!1260 (Int) Bool)

(assert (=> d!874955 (= (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (Forall!1260 lambda!117064))))

(declare-fun bs!540729 () Bool)

(assert (= bs!540729 d!874955))

(declare-fun m!3459641 () Bool)

(assert (=> bs!540729 m!3459641))

(assert (=> d!874701 d!874955))

(declare-fun d!874961 () Bool)

(assert (=> d!874961 (= (isEmpty!20137 lt!1077754) (not ((_ is Some!7077) lt!1077754)))))

(assert (=> d!874631 d!874961))

(declare-fun d!874963 () Bool)

(assert (=> d!874963 (= (isEmpty!20133 (_1!20841 lt!1077755)) ((_ is Nil!36043) (_1!20841 lt!1077755)))))

(assert (=> d!874631 d!874963))

(declare-fun d!874965 () Bool)

(declare-fun lt!1078081 () tuple2!35414)

(assert (=> d!874965 (= (++!8630 (_1!20841 lt!1078081) (_2!20841 lt!1078081)) lt!1077706)))

(declare-fun sizeTr!154 (List!36167 Int) Int)

(assert (=> d!874965 (= lt!1078081 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 0 lt!1077706 lt!1077706 (sizeTr!154 lt!1077706 0)))))

(declare-fun lt!1078079 () Unit!50442)

(declare-fun lt!1078082 () Unit!50442)

(assert (=> d!874965 (= lt!1078079 lt!1078082)))

(declare-fun lt!1078085 () List!36167)

(declare-fun lt!1078083 () Int)

(assert (=> d!874965 (= (sizeTr!154 lt!1078085 lt!1078083) (+ (size!27145 lt!1078085) lt!1078083))))

(declare-fun lemmaSizeTrEqualsSize!153 (List!36167 Int) Unit!50442)

(assert (=> d!874965 (= lt!1078082 (lemmaSizeTrEqualsSize!153 lt!1078085 lt!1078083))))

(assert (=> d!874965 (= lt!1078083 0)))

(assert (=> d!874965 (= lt!1078085 Nil!36043)))

(declare-fun lt!1078084 () Unit!50442)

(declare-fun lt!1078086 () Unit!50442)

(assert (=> d!874965 (= lt!1078084 lt!1078086)))

(declare-fun lt!1078080 () Int)

(assert (=> d!874965 (= (sizeTr!154 lt!1077706 lt!1078080) (+ (size!27145 lt!1077706) lt!1078080))))

(assert (=> d!874965 (= lt!1078086 (lemmaSizeTrEqualsSize!153 lt!1077706 lt!1078080))))

(assert (=> d!874965 (= lt!1078080 0)))

(assert (=> d!874965 (validRegex!4544 (regex!5192 (rule!7626 (h!41464 tokens!494))))))

(assert (=> d!874965 (= (findLongestMatch!739 (regex!5192 (rule!7626 (h!41464 tokens!494))) lt!1077706) lt!1078081)))

(declare-fun bs!540732 () Bool)

(assert (= bs!540732 d!874965))

(declare-fun m!3459661 () Bool)

(assert (=> bs!540732 m!3459661))

(assert (=> bs!540732 m!3459375))

(declare-fun m!3459663 () Bool)

(assert (=> bs!540732 m!3459663))

(declare-fun m!3459665 () Bool)

(assert (=> bs!540732 m!3459665))

(assert (=> bs!540732 m!3459665))

(declare-fun m!3459667 () Bool)

(assert (=> bs!540732 m!3459667))

(declare-fun m!3459669 () Bool)

(assert (=> bs!540732 m!3459669))

(declare-fun m!3459671 () Bool)

(assert (=> bs!540732 m!3459671))

(declare-fun m!3459673 () Bool)

(assert (=> bs!540732 m!3459673))

(assert (=> bs!540732 m!3458337))

(declare-fun m!3459675 () Bool)

(assert (=> bs!540732 m!3459675))

(assert (=> d!874631 d!874965))

(declare-fun d!874973 () Bool)

(declare-fun res!1301320 () Bool)

(declare-fun e!1993908 () Bool)

(assert (=> d!874973 (=> (not res!1301320) (not e!1993908))))

(assert (=> d!874973 (= res!1301320 (validRegex!4544 (regex!5192 (rule!7626 (h!41464 tokens!494)))))))

(assert (=> d!874973 (= (ruleValid!1637 thiss!18206 (rule!7626 (h!41464 tokens!494))) e!1993908)))

(declare-fun b!3198372 () Bool)

(declare-fun res!1301321 () Bool)

(assert (=> b!3198372 (=> (not res!1301321) (not e!1993908))))

(assert (=> b!3198372 (= res!1301321 (not (nullable!3392 (regex!5192 (rule!7626 (h!41464 tokens!494))))))))

(declare-fun b!3198373 () Bool)

(assert (=> b!3198373 (= e!1993908 (not (= (tag!5712 (rule!7626 (h!41464 tokens!494))) (String!40445 ""))))))

(assert (= (and d!874973 res!1301320) b!3198372))

(assert (= (and b!3198372 res!1301321) b!3198373))

(assert (=> d!874973 m!3459375))

(assert (=> b!3198372 m!3459361))

(assert (=> d!874631 d!874973))

(assert (=> b!3197743 d!874899))

(assert (=> b!3197743 d!874901))

(declare-fun d!874975 () Bool)

(declare-fun lt!1078089 () Token!9750)

(assert (=> d!874975 (= lt!1078089 (apply!8125 (list!12810 (_1!20839 lt!1077726)) 0))))

(declare-fun apply!8127 (Conc!10760 Int) Token!9750)

(assert (=> d!874975 (= lt!1078089 (apply!8127 (c!536750 (_1!20839 lt!1077726)) 0))))

(declare-fun e!1993911 () Bool)

(assert (=> d!874975 e!1993911))

(declare-fun res!1301324 () Bool)

(assert (=> d!874975 (=> (not res!1301324) (not e!1993911))))

(assert (=> d!874975 (= res!1301324 (<= 0 0))))

(assert (=> d!874975 (= (apply!8123 (_1!20839 lt!1077726) 0) lt!1078089)))

(declare-fun b!3198376 () Bool)

(assert (=> b!3198376 (= e!1993911 (< 0 (size!27146 (_1!20839 lt!1077726))))))

(assert (= (and d!874975 res!1301324) b!3198376))

(assert (=> d!874975 m!3459549))

(assert (=> d!874975 m!3459549))

(declare-fun m!3459677 () Bool)

(assert (=> d!874975 m!3459677))

(declare-fun m!3459679 () Bool)

(assert (=> d!874975 m!3459679))

(assert (=> b!3198376 m!3458451))

(assert (=> b!3197464 d!874975))

(declare-fun d!874977 () Bool)

(assert (=> d!874977 (= (isDefined!5520 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))) (not (isEmpty!20138 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))

(declare-fun bs!540733 () Bool)

(assert (= bs!540733 d!874977))

(assert (=> bs!540733 m!3458325))

(declare-fun m!3459681 () Bool)

(assert (=> bs!540733 m!3459681))

(assert (=> d!874689 d!874977))

(assert (=> d!874689 d!874663))

(declare-fun d!874979 () Bool)

(declare-fun e!1993924 () Bool)

(assert (=> d!874979 e!1993924))

(declare-fun res!1301329 () Bool)

(assert (=> d!874979 (=> (not res!1301329) (not e!1993924))))

(assert (=> d!874979 (= res!1301329 (isDefined!5520 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))))))

(assert (=> d!874979 true))

(declare-fun _$52!1512 () Unit!50442)

(assert (=> d!874979 (= (choose!18662 thiss!18206 rules!2135 lt!1077706 (h!41464 tokens!494)) _$52!1512)))

(declare-fun b!3198401 () Bool)

(declare-fun res!1301330 () Bool)

(assert (=> b!3198401 (=> (not res!1301330) (not e!1993924))))

(assert (=> b!3198401 (= res!1301330 (matchR!4585 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))) (list!12809 (charsOf!3208 (h!41464 tokens!494)))))))

(declare-fun b!3198402 () Bool)

(assert (=> b!3198402 (= e!1993924 (= (rule!7626 (h!41464 tokens!494)) (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))

(assert (= (and d!874979 res!1301329) b!3198401))

(assert (= (and b!3198401 res!1301330) b!3198402))

(assert (=> d!874979 m!3458325))

(assert (=> d!874979 m!3458325))

(assert (=> d!874979 m!3458729))

(assert (=> b!3198401 m!3458325))

(assert (=> b!3198401 m!3458295))

(assert (=> b!3198401 m!3458735))

(assert (=> b!3198401 m!3458293))

(assert (=> b!3198401 m!3458325))

(assert (=> b!3198401 m!3458733))

(assert (=> b!3198401 m!3458293))

(assert (=> b!3198401 m!3458295))

(assert (=> b!3198402 m!3458325))

(assert (=> b!3198402 m!3458325))

(assert (=> b!3198402 m!3458733))

(assert (=> d!874689 d!874979))

(assert (=> d!874689 d!874617))

(declare-fun b!3198416 () Bool)

(declare-fun res!1301347 () Bool)

(declare-fun e!1993930 () Bool)

(assert (=> b!3198416 (=> (not res!1301347) (not e!1993930))))

(declare-fun height!1541 (Conc!10760) Int)

(assert (=> b!3198416 (= res!1301347 (<= (- (height!1541 (left!28010 (c!536750 lt!1077909))) (height!1541 (right!28340 (c!536750 lt!1077909)))) 1))))

(declare-fun b!3198417 () Bool)

(assert (=> b!3198417 (= e!1993930 (not (isEmpty!20141 (right!28340 (c!536750 lt!1077909)))))))

(declare-fun b!3198418 () Bool)

(declare-fun res!1301345 () Bool)

(assert (=> b!3198418 (=> (not res!1301345) (not e!1993930))))

(assert (=> b!3198418 (= res!1301345 (isBalanced!3204 (right!28340 (c!536750 lt!1077909))))))

(declare-fun b!3198419 () Bool)

(declare-fun res!1301343 () Bool)

(assert (=> b!3198419 (=> (not res!1301343) (not e!1993930))))

(assert (=> b!3198419 (= res!1301343 (not (isEmpty!20141 (left!28010 (c!536750 lt!1077909)))))))

(declare-fun b!3198420 () Bool)

(declare-fun e!1993929 () Bool)

(assert (=> b!3198420 (= e!1993929 e!1993930)))

(declare-fun res!1301346 () Bool)

(assert (=> b!3198420 (=> (not res!1301346) (not e!1993930))))

(assert (=> b!3198420 (= res!1301346 (<= (- 1) (- (height!1541 (left!28010 (c!536750 lt!1077909))) (height!1541 (right!28340 (c!536750 lt!1077909))))))))

(declare-fun d!874981 () Bool)

(declare-fun res!1301348 () Bool)

(assert (=> d!874981 (=> res!1301348 e!1993929)))

(assert (=> d!874981 (= res!1301348 (not ((_ is Node!10760) (c!536750 lt!1077909))))))

(assert (=> d!874981 (= (isBalanced!3204 (c!536750 lt!1077909)) e!1993929)))

(declare-fun b!3198415 () Bool)

(declare-fun res!1301344 () Bool)

(assert (=> b!3198415 (=> (not res!1301344) (not e!1993930))))

(assert (=> b!3198415 (= res!1301344 (isBalanced!3204 (left!28010 (c!536750 lt!1077909))))))

(assert (= (and d!874981 (not res!1301348)) b!3198420))

(assert (= (and b!3198420 res!1301346) b!3198416))

(assert (= (and b!3198416 res!1301347) b!3198415))

(assert (= (and b!3198415 res!1301344) b!3198418))

(assert (= (and b!3198418 res!1301345) b!3198419))

(assert (= (and b!3198419 res!1301343) b!3198417))

(declare-fun m!3459683 () Bool)

(assert (=> b!3198419 m!3459683))

(declare-fun m!3459685 () Bool)

(assert (=> b!3198420 m!3459685))

(declare-fun m!3459687 () Bool)

(assert (=> b!3198420 m!3459687))

(declare-fun m!3459689 () Bool)

(assert (=> b!3198417 m!3459689))

(declare-fun m!3459691 () Bool)

(assert (=> b!3198415 m!3459691))

(declare-fun m!3459693 () Bool)

(assert (=> b!3198418 m!3459693))

(assert (=> b!3198416 m!3459685))

(assert (=> b!3198416 m!3459687))

(assert (=> b!3198010 d!874981))

(declare-fun d!874983 () Bool)

(declare-fun lt!1078093 () Int)

(assert (=> d!874983 (>= lt!1078093 0)))

(declare-fun e!1993936 () Int)

(assert (=> d!874983 (= lt!1078093 e!1993936)))

(declare-fun c!536965 () Bool)

(assert (=> d!874983 (= c!536965 ((_ is Nil!36043) (originalCharacters!5906 (h!41464 tokens!494))))))

(assert (=> d!874983 (= (size!27145 (originalCharacters!5906 (h!41464 tokens!494))) lt!1078093)))

(declare-fun b!3198431 () Bool)

(assert (=> b!3198431 (= e!1993936 0)))

(declare-fun b!3198432 () Bool)

(assert (=> b!3198432 (= e!1993936 (+ 1 (size!27145 (t!236994 (originalCharacters!5906 (h!41464 tokens!494))))))))

(assert (= (and d!874983 c!536965) b!3198431))

(assert (= (and d!874983 (not c!536965)) b!3198432))

(declare-fun m!3459695 () Bool)

(assert (=> b!3198432 m!3459695))

(assert (=> b!3197472 d!874983))

(declare-fun d!874985 () Bool)

(declare-fun lt!1078094 () Bool)

(assert (=> d!874985 (= lt!1078094 (select (content!4871 tokens!494) (h!41464 (t!236995 tokens!494))))))

(declare-fun e!1993937 () Bool)

(assert (=> d!874985 (= lt!1078094 e!1993937)))

(declare-fun res!1301350 () Bool)

(assert (=> d!874985 (=> (not res!1301350) (not e!1993937))))

(assert (=> d!874985 (= res!1301350 ((_ is Cons!36044) tokens!494))))

(assert (=> d!874985 (= (contains!6404 tokens!494 (h!41464 (t!236995 tokens!494))) lt!1078094)))

(declare-fun b!3198433 () Bool)

(declare-fun e!1993938 () Bool)

(assert (=> b!3198433 (= e!1993937 e!1993938)))

(declare-fun res!1301349 () Bool)

(assert (=> b!3198433 (=> res!1301349 e!1993938)))

(assert (=> b!3198433 (= res!1301349 (= (h!41464 tokens!494) (h!41464 (t!236995 tokens!494))))))

(declare-fun b!3198434 () Bool)

(assert (=> b!3198434 (= e!1993938 (contains!6404 (t!236995 tokens!494) (h!41464 (t!236995 tokens!494))))))

(assert (= (and d!874985 res!1301350) b!3198433))

(assert (= (and b!3198433 (not res!1301349)) b!3198434))

(assert (=> d!874985 m!3459411))

(declare-fun m!3459697 () Bool)

(assert (=> d!874985 m!3459697))

(declare-fun m!3459699 () Bool)

(assert (=> b!3198434 m!3459699))

(assert (=> b!3197490 d!874985))

(declare-fun d!874987 () Bool)

(declare-fun c!536966 () Bool)

(assert (=> d!874987 (= c!536966 ((_ is Nil!36043) lt!1077852))))

(declare-fun e!1993939 () (InoxSet C!20088))

(assert (=> d!874987 (= (content!4869 lt!1077852) e!1993939)))

(declare-fun b!3198435 () Bool)

(assert (=> b!3198435 (= e!1993939 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3198436 () Bool)

(assert (=> b!3198436 (= e!1993939 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077852) true) (content!4869 (t!236994 lt!1077852))))))

(assert (= (and d!874987 c!536966) b!3198435))

(assert (= (and d!874987 (not c!536966)) b!3198436))

(declare-fun m!3459701 () Bool)

(assert (=> b!3198436 m!3459701))

(declare-fun m!3459703 () Bool)

(assert (=> b!3198436 m!3459703))

(assert (=> d!874751 d!874987))

(declare-fun d!874989 () Bool)

(declare-fun c!536967 () Bool)

(assert (=> d!874989 (= c!536967 ((_ is Nil!36043) (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))

(declare-fun e!1993940 () (InoxSet C!20088))

(assert (=> d!874989 (= (content!4869 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) e!1993940)))

(declare-fun b!3198437 () Bool)

(assert (=> b!3198437 (= e!1993940 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3198438 () Bool)

(assert (=> b!3198438 (= e!1993940 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) true) (content!4869 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))))

(assert (= (and d!874989 c!536967) b!3198437))

(assert (= (and d!874989 (not c!536967)) b!3198438))

(declare-fun m!3459705 () Bool)

(assert (=> b!3198438 m!3459705))

(declare-fun m!3459707 () Bool)

(assert (=> b!3198438 m!3459707))

(assert (=> d!874751 d!874989))

(declare-fun d!874991 () Bool)

(declare-fun c!536968 () Bool)

(assert (=> d!874991 (= c!536968 ((_ is Nil!36043) lt!1077696))))

(declare-fun e!1993941 () (InoxSet C!20088))

(assert (=> d!874991 (= (content!4869 lt!1077696) e!1993941)))

(declare-fun b!3198439 () Bool)

(assert (=> b!3198439 (= e!1993941 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3198440 () Bool)

(assert (=> b!3198440 (= e!1993941 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077696) true) (content!4869 (t!236994 lt!1077696))))))

(assert (= (and d!874991 c!536968) b!3198439))

(assert (= (and d!874991 (not c!536968)) b!3198440))

(declare-fun m!3459709 () Bool)

(assert (=> b!3198440 m!3459709))

(declare-fun m!3459711 () Bool)

(assert (=> b!3198440 m!3459711))

(assert (=> d!874751 d!874991))

(assert (=> b!3197738 d!874667))

(declare-fun bs!540744 () Bool)

(declare-fun d!874993 () Bool)

(assert (= bs!540744 (and d!874993 b!3197405)))

(declare-fun lambda!117067 () Int)

(assert (=> bs!540744 (not (= lambda!117067 lambda!117051))))

(declare-fun bs!540745 () Bool)

(assert (= bs!540745 (and d!874993 d!874713)))

(assert (=> bs!540745 (= lambda!117067 lambda!117061)))

(declare-fun b!3198572 () Bool)

(declare-fun e!1994024 () Bool)

(assert (=> b!3198572 (= e!1994024 true)))

(declare-fun b!3198571 () Bool)

(declare-fun e!1994023 () Bool)

(assert (=> b!3198571 (= e!1994023 e!1994024)))

(declare-fun b!3198570 () Bool)

(declare-fun e!1994022 () Bool)

(assert (=> b!3198570 (= e!1994022 e!1994023)))

(assert (=> d!874993 e!1994022))

(assert (= b!3198571 b!3198572))

(assert (= b!3198570 b!3198571))

(assert (= (and d!874993 ((_ is Cons!36045) rules!2135)) b!3198570))

(assert (=> b!3198572 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (h!41465 rules!2135)))) (dynLambda!14523 order!18331 lambda!117067))))

(assert (=> b!3198572 (< (dynLambda!14524 order!18333 (toChars!7123 (transformation!5192 (h!41465 rules!2135)))) (dynLambda!14523 order!18331 lambda!117067))))

(assert (=> d!874993 true))

(declare-fun lt!1078141 () Bool)

(assert (=> d!874993 (= lt!1078141 (forall!7338 (list!12810 (seqFromList!3455 tokens!494)) lambda!117067))))

(declare-fun e!1994019 () Bool)

(assert (=> d!874993 (= lt!1078141 e!1994019)))

(declare-fun res!1301400 () Bool)

(assert (=> d!874993 (=> res!1301400 e!1994019)))

(assert (=> d!874993 (= res!1301400 (not ((_ is Cons!36044) (list!12810 (seqFromList!3455 tokens!494)))))))

(assert (=> d!874993 (not (isEmpty!20131 rules!2135))))

(assert (=> d!874993 (= (rulesProduceEachTokenIndividuallyList!1719 thiss!18206 rules!2135 (list!12810 (seqFromList!3455 tokens!494))) lt!1078141)))

(declare-fun b!3198564 () Bool)

(declare-fun e!1994018 () Bool)

(assert (=> b!3198564 (= e!1994019 e!1994018)))

(declare-fun res!1301399 () Bool)

(assert (=> b!3198564 (=> (not res!1301399) (not e!1994018))))

(assert (=> b!3198564 (= res!1301399 (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 (h!41464 (list!12810 (seqFromList!3455 tokens!494)))))))

(declare-fun b!3198565 () Bool)

(assert (=> b!3198565 (= e!1994018 (rulesProduceEachTokenIndividuallyList!1719 thiss!18206 rules!2135 (t!236995 (list!12810 (seqFromList!3455 tokens!494)))))))

(assert (= (and d!874993 (not res!1301400)) b!3198564))

(assert (= (and b!3198564 res!1301399) b!3198565))

(assert (=> d!874993 m!3458901))

(declare-fun m!3459889 () Bool)

(assert (=> d!874993 m!3459889))

(assert (=> d!874993 m!3458291))

(declare-fun m!3459891 () Bool)

(assert (=> b!3198564 m!3459891))

(declare-fun m!3459893 () Bool)

(assert (=> b!3198565 m!3459893))

(assert (=> b!3197831 d!874993))

(declare-fun d!875067 () Bool)

(assert (=> d!875067 (= (list!12810 (seqFromList!3455 tokens!494)) (list!12814 (c!536750 (seqFromList!3455 tokens!494))))))

(declare-fun bs!540746 () Bool)

(assert (= bs!540746 d!875067))

(declare-fun m!3459899 () Bool)

(assert (=> bs!540746 m!3459899))

(assert (=> b!3197831 d!875067))

(declare-fun d!875069 () Bool)

(assert (=> d!875069 (= (isEmpty!20138 lt!1077788) (not ((_ is Some!7076) lt!1077788)))))

(assert (=> d!874687 d!875069))

(assert (=> d!874687 d!874617))

(declare-fun d!875075 () Bool)

(assert (=> d!875075 (= (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))) (isBalanced!3206 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))))))

(declare-fun bs!540748 () Bool)

(assert (= bs!540748 d!875075))

(declare-fun m!3459907 () Bool)

(assert (=> bs!540748 m!3459907))

(assert (=> tb!156487 d!875075))

(declare-fun d!875077 () Bool)

(assert (=> d!875077 (= (get!11463 lt!1077788) (v!35596 lt!1077788))))

(assert (=> b!3197677 d!875077))

(declare-fun d!875079 () Bool)

(declare-fun lt!1078144 () Int)

(assert (=> d!875079 (>= lt!1078144 0)))

(declare-fun e!1994027 () Int)

(assert (=> d!875079 (= lt!1078144 e!1994027)))

(declare-fun c!537008 () Bool)

(assert (=> d!875079 (= c!537008 ((_ is Nil!36043) (_2!20840 (get!11464 lt!1077754))))))

(assert (=> d!875079 (= (size!27145 (_2!20840 (get!11464 lt!1077754))) lt!1078144)))

(declare-fun b!3198576 () Bool)

(assert (=> b!3198576 (= e!1994027 0)))

(declare-fun b!3198577 () Bool)

(assert (=> b!3198577 (= e!1994027 (+ 1 (size!27145 (t!236994 (_2!20840 (get!11464 lt!1077754))))))))

(assert (= (and d!875079 c!537008) b!3198576))

(assert (= (and d!875079 (not c!537008)) b!3198577))

(declare-fun m!3459917 () Bool)

(assert (=> b!3198577 m!3459917))

(assert (=> b!3197561 d!875079))

(assert (=> b!3197561 d!874865))

(assert (=> b!3197561 d!874683))

(declare-fun d!875081 () Bool)

(declare-fun lt!1078150 () Int)

(assert (=> d!875081 (= lt!1078150 (size!27145 (list!12809 (_2!20839 lt!1077801))))))

(declare-fun size!27154 (Conc!10759) Int)

(assert (=> d!875081 (= lt!1078150 (size!27154 (c!536749 (_2!20839 lt!1077801))))))

(assert (=> d!875081 (= (size!27148 (_2!20839 lt!1077801)) lt!1078150)))

(declare-fun bs!540749 () Bool)

(assert (= bs!540749 d!875081))

(assert (=> bs!540749 m!3458753))

(assert (=> bs!540749 m!3458753))

(declare-fun m!3459953 () Bool)

(assert (=> bs!540749 m!3459953))

(declare-fun m!3459955 () Bool)

(assert (=> bs!540749 m!3459955))

(assert (=> b!3197699 d!875081))

(declare-fun d!875093 () Bool)

(declare-fun lt!1078153 () Int)

(assert (=> d!875093 (= lt!1078153 (size!27145 (list!12809 lt!1077699)))))

(assert (=> d!875093 (= lt!1078153 (size!27154 (c!536749 lt!1077699)))))

(assert (=> d!875093 (= (size!27148 lt!1077699) lt!1078153)))

(declare-fun bs!540750 () Bool)

(assert (= bs!540750 d!875093))

(assert (=> bs!540750 m!3458755))

(assert (=> bs!540750 m!3458755))

(assert (=> bs!540750 m!3459485))

(declare-fun m!3459959 () Bool)

(assert (=> bs!540750 m!3459959))

(assert (=> b!3197699 d!875093))

(declare-fun d!875097 () Bool)

(declare-fun e!1994046 () Bool)

(assert (=> d!875097 e!1994046))

(declare-fun res!1301419 () Bool)

(assert (=> d!875097 (=> (not res!1301419) (not e!1994046))))

(declare-fun lt!1078158 () BalanceConc!21132)

(assert (=> d!875097 (= res!1301419 (= (list!12809 lt!1078158) lt!1077706))))

(declare-fun fromList!600 (List!36167) Conc!10759)

(assert (=> d!875097 (= lt!1078158 (BalanceConc!21133 (fromList!600 lt!1077706)))))

(assert (=> d!875097 (= (fromListB!1528 lt!1077706) lt!1078158)))

(declare-fun b!3198612 () Bool)

(assert (=> b!3198612 (= e!1994046 (isBalanced!3206 (fromList!600 lt!1077706)))))

(assert (= (and d!875097 res!1301419) b!3198612))

(declare-fun m!3459977 () Bool)

(assert (=> d!875097 m!3459977))

(declare-fun m!3459979 () Bool)

(assert (=> d!875097 m!3459979))

(assert (=> b!3198612 m!3459979))

(assert (=> b!3198612 m!3459979))

(declare-fun m!3459981 () Bool)

(assert (=> b!3198612 m!3459981))

(assert (=> d!874697 d!875097))

(declare-fun bs!540752 () Bool)

(declare-fun d!875103 () Bool)

(assert (= bs!540752 (and d!875103 d!874955)))

(declare-fun lambda!117068 () Int)

(assert (=> bs!540752 (= (and (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (= lambda!117068 lambda!117064))))

(assert (=> d!875103 true))

(assert (=> d!875103 (< (dynLambda!14524 order!18333 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) (dynLambda!14526 order!18335 lambda!117068))))

(assert (=> d!875103 true))

(assert (=> d!875103 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241)))) (dynLambda!14526 order!18335 lambda!117068))))

(assert (=> d!875103 (= (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241)))) (Forall!1260 lambda!117068))))

(declare-fun bs!540753 () Bool)

(assert (= bs!540753 d!875103))

(declare-fun m!3459995 () Bool)

(assert (=> bs!540753 m!3459995))

(assert (=> d!874595 d!875103))

(declare-fun d!875107 () Bool)

(declare-fun lt!1078160 () Int)

(assert (=> d!875107 (>= lt!1078160 0)))

(declare-fun e!1994049 () Int)

(assert (=> d!875107 (= lt!1078160 e!1994049)))

(declare-fun c!537020 () Bool)

(assert (=> d!875107 (= c!537020 ((_ is Nil!36043) lt!1077861))))

(assert (=> d!875107 (= (size!27145 lt!1077861) lt!1078160)))

(declare-fun b!3198617 () Bool)

(assert (=> b!3198617 (= e!1994049 0)))

(declare-fun b!3198618 () Bool)

(assert (=> b!3198618 (= e!1994049 (+ 1 (size!27145 (t!236994 lt!1077861))))))

(assert (= (and d!875107 c!537020) b!3198617))

(assert (= (and d!875107 (not c!537020)) b!3198618))

(declare-fun m!3460001 () Bool)

(assert (=> b!3198618 m!3460001))

(assert (=> b!3197949 d!875107))

(assert (=> b!3197949 d!874683))

(declare-fun d!875111 () Bool)

(declare-fun lt!1078161 () Int)

(assert (=> d!875111 (>= lt!1078161 0)))

(declare-fun e!1994050 () Int)

(assert (=> d!875111 (= lt!1078161 e!1994050)))

(declare-fun c!537021 () Bool)

(assert (=> d!875111 (= c!537021 ((_ is Nil!36043) lt!1077696))))

(assert (=> d!875111 (= (size!27145 lt!1077696) lt!1078161)))

(declare-fun b!3198619 () Bool)

(assert (=> b!3198619 (= e!1994050 0)))

(declare-fun b!3198620 () Bool)

(assert (=> b!3198620 (= e!1994050 (+ 1 (size!27145 (t!236994 lt!1077696))))))

(assert (= (and d!875111 c!537021) b!3198619))

(assert (= (and d!875111 (not c!537021)) b!3198620))

(declare-fun m!3460003 () Bool)

(assert (=> b!3198620 m!3460003))

(assert (=> b!3197949 d!875111))

(declare-fun d!875113 () Bool)

(declare-fun e!1994051 () Bool)

(assert (=> d!875113 e!1994051))

(declare-fun res!1301422 () Bool)

(assert (=> d!875113 (=> (not res!1301422) (not e!1994051))))

(declare-fun lt!1078162 () List!36167)

(assert (=> d!875113 (= res!1301422 (= (content!4869 lt!1078162) ((_ map or) (content!4869 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696))) (content!4869 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(declare-fun e!1994052 () List!36167)

(assert (=> d!875113 (= lt!1078162 e!1994052)))

(declare-fun c!537022 () Bool)

(assert (=> d!875113 (= c!537022 ((_ is Nil!36043) (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696))))))

(assert (=> d!875113 (= (++!8630 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)) lt!1078162)))

(declare-fun b!3198623 () Bool)

(declare-fun res!1301423 () Bool)

(assert (=> b!3198623 (=> (not res!1301423) (not e!1994051))))

(assert (=> b!3198623 (= res!1301423 (= (size!27145 lt!1078162) (+ (size!27145 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696))) (size!27145 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(declare-fun b!3198622 () Bool)

(assert (=> b!3198622 (= e!1994052 (Cons!36043 (h!41463 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696))) (++!8630 (t!236994 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241))))))

(declare-fun b!3198624 () Bool)

(assert (=> b!3198624 (= e!1994051 (or (not (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241) Nil!36043)) (= lt!1078162 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)))))))

(declare-fun b!3198621 () Bool)

(assert (=> b!3198621 (= e!1994052 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241))))

(assert (= (and d!875113 c!537022) b!3198621))

(assert (= (and d!875113 (not c!537022)) b!3198622))

(assert (= (and d!875113 res!1301422) b!3198623))

(assert (= (and b!3198623 res!1301423) b!3198624))

(declare-fun m!3460005 () Bool)

(assert (=> d!875113 m!3460005))

(declare-fun m!3460007 () Bool)

(assert (=> d!875113 m!3460007))

(assert (=> d!875113 m!3458369))

(assert (=> d!875113 m!3458969))

(declare-fun m!3460009 () Bool)

(assert (=> b!3198623 m!3460009))

(assert (=> b!3198623 m!3459491))

(assert (=> b!3198623 m!3458369))

(assert (=> b!3198623 m!3458975))

(assert (=> b!3198622 m!3458369))

(declare-fun m!3460011 () Bool)

(assert (=> b!3198622 m!3460011))

(assert (=> b!3197900 d!875113))

(declare-fun d!875115 () Bool)

(declare-fun res!1301424 () Bool)

(declare-fun e!1994053 () Bool)

(assert (=> d!875115 (=> (not res!1301424) (not e!1994053))))

(assert (=> d!875115 (= res!1301424 (not (isEmpty!20133 (originalCharacters!5906 (h!41464 (t!236995 tokens!494))))))))

(assert (=> d!875115 (= (inv!48894 (h!41464 (t!236995 tokens!494))) e!1994053)))

(declare-fun b!3198625 () Bool)

(declare-fun res!1301425 () Bool)

(assert (=> b!3198625 (=> (not res!1301425) (not e!1994053))))

(assert (=> b!3198625 (= res!1301425 (= (originalCharacters!5906 (h!41464 (t!236995 tokens!494))) (list!12809 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))))))

(declare-fun b!3198626 () Bool)

(assert (=> b!3198626 (= e!1994053 (= (size!27144 (h!41464 (t!236995 tokens!494))) (size!27145 (originalCharacters!5906 (h!41464 (t!236995 tokens!494))))))))

(assert (= (and d!875115 res!1301424) b!3198625))

(assert (= (and b!3198625 res!1301425) b!3198626))

(declare-fun b_lambda!87401 () Bool)

(assert (=> (not b_lambda!87401) (not b!3198625)))

(assert (=> b!3198625 t!237048))

(declare-fun b_and!212475 () Bool)

(assert (= b_and!212453 (and (=> t!237048 result!198752) b_and!212475)))

(assert (=> b!3198625 t!237073))

(declare-fun b_and!212477 () Bool)

(assert (= b_and!212447 (and (=> t!237073 result!198786) b_and!212477)))

(assert (=> b!3198625 t!237046))

(declare-fun b_and!212479 () Bool)

(assert (= b_and!212445 (and (=> t!237046 result!198750) b_and!212479)))

(assert (=> b!3198625 t!237065))

(declare-fun b_and!212481 () Bool)

(assert (= b_and!212449 (and (=> t!237065 result!198776) b_and!212481)))

(assert (=> b!3198625 t!237050))

(declare-fun b_and!212483 () Bool)

(assert (= b_and!212451 (and (=> t!237050 result!198754) b_and!212483)))

(declare-fun m!3460013 () Bool)

(assert (=> d!875115 m!3460013))

(assert (=> b!3198625 m!3459023))

(assert (=> b!3198625 m!3459023))

(declare-fun m!3460015 () Bool)

(assert (=> b!3198625 m!3460015))

(declare-fun m!3460017 () Bool)

(assert (=> b!3198626 m!3460017))

(assert (=> b!3198061 d!875115))

(declare-fun b!3198631 () Bool)

(declare-fun e!1994060 () Bool)

(assert (=> b!3198631 (= e!1994060 (inv!17 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699)))))

(declare-fun b!3198632 () Bool)

(declare-fun e!1994058 () Bool)

(assert (=> b!3198632 (= e!1994058 e!1994060)))

(declare-fun c!537023 () Bool)

(assert (=> b!3198632 (= c!537023 ((_ is IntegerValue!16267) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699)))))

(declare-fun b!3198633 () Bool)

(declare-fun res!1301430 () Bool)

(declare-fun e!1994059 () Bool)

(assert (=> b!3198633 (=> res!1301430 e!1994059)))

(assert (=> b!3198633 (= res!1301430 (not ((_ is IntegerValue!16268) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699))))))

(assert (=> b!3198633 (= e!1994060 e!1994059)))

(declare-fun b!3198634 () Bool)

(assert (=> b!3198634 (= e!1994058 (inv!16 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699)))))

(declare-fun b!3198635 () Bool)

(assert (=> b!3198635 (= e!1994059 (inv!15 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699)))))

(declare-fun d!875117 () Bool)

(declare-fun c!537024 () Bool)

(assert (=> d!875117 (= c!537024 ((_ is IntegerValue!16266) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699)))))

(assert (=> d!875117 (= (inv!21 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) lt!1077699)) e!1994058)))

(assert (= (and d!875117 c!537024) b!3198634))

(assert (= (and d!875117 (not c!537024)) b!3198632))

(assert (= (and b!3198632 c!537023) b!3198631))

(assert (= (and b!3198632 (not c!537023)) b!3198633))

(assert (= (and b!3198633 (not res!1301430)) b!3198635))

(declare-fun m!3460019 () Bool)

(assert (=> b!3198631 m!3460019))

(declare-fun m!3460021 () Bool)

(assert (=> b!3198634 m!3460021))

(declare-fun m!3460023 () Bool)

(assert (=> b!3198635 m!3460023))

(assert (=> tb!156463 d!875117))

(declare-fun d!875119 () Bool)

(declare-fun lt!1078165 () Int)

(assert (=> d!875119 (>= lt!1078165 0)))

(declare-fun e!1994061 () Int)

(assert (=> d!875119 (= lt!1078165 e!1994061)))

(declare-fun c!537025 () Bool)

(assert (=> d!875119 (= c!537025 ((_ is Nil!36043) lt!1077852))))

(assert (=> d!875119 (= (size!27145 lt!1077852) lt!1078165)))

(declare-fun b!3198636 () Bool)

(assert (=> b!3198636 (= e!1994061 0)))

(declare-fun b!3198637 () Bool)

(assert (=> b!3198637 (= e!1994061 (+ 1 (size!27145 (t!236994 lt!1077852))))))

(assert (= (and d!875119 c!537025) b!3198636))

(assert (= (and d!875119 (not c!537025)) b!3198637))

(declare-fun m!3460025 () Bool)

(assert (=> b!3198637 m!3460025))

(assert (=> b!3197897 d!875119))

(declare-fun d!875121 () Bool)

(declare-fun lt!1078167 () Int)

(assert (=> d!875121 (>= lt!1078167 0)))

(declare-fun e!1994064 () Int)

(assert (=> d!875121 (= lt!1078167 e!1994064)))

(declare-fun c!537026 () Bool)

(assert (=> d!875121 (= c!537026 ((_ is Nil!36043) (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))

(assert (=> d!875121 (= (size!27145 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) lt!1078167)))

(declare-fun b!3198640 () Bool)

(assert (=> b!3198640 (= e!1994064 0)))

(declare-fun b!3198641 () Bool)

(assert (=> b!3198641 (= e!1994064 (+ 1 (size!27145 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))))

(assert (= (and d!875121 c!537026) b!3198640))

(assert (= (and d!875121 (not c!537026)) b!3198641))

(declare-fun m!3460027 () Bool)

(assert (=> b!3198641 m!3460027))

(assert (=> b!3197897 d!875121))

(assert (=> b!3197897 d!875111))

(declare-fun d!875123 () Bool)

(assert (=> d!875123 (= (isEmpty!20140 (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699)))) ((_ is Nil!36044) (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699)))))))

(assert (=> d!874693 d!875123))

(declare-fun d!875129 () Bool)

(assert (=> d!875129 (= (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699))) (list!12814 (c!536750 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699)))))))

(declare-fun bs!540754 () Bool)

(assert (= bs!540754 d!875129))

(declare-fun m!3460035 () Bool)

(assert (=> bs!540754 m!3460035))

(assert (=> d!874693 d!875129))

(declare-fun d!875131 () Bool)

(declare-fun lt!1078170 () Bool)

(assert (=> d!875131 (= lt!1078170 (isEmpty!20140 (list!12814 (c!536750 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699))))))))

(assert (=> d!875131 (= lt!1078170 (= (size!27151 (c!536750 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699)))) 0))))

(assert (=> d!875131 (= (isEmpty!20141 (c!536750 (_1!20839 (lex!2111 thiss!18206 rules!2135 lt!1077699)))) lt!1078170)))

(declare-fun bs!540755 () Bool)

(assert (= bs!540755 d!875131))

(assert (=> bs!540755 m!3460035))

(assert (=> bs!540755 m!3460035))

(declare-fun m!3460047 () Bool)

(assert (=> bs!540755 m!3460047))

(declare-fun m!3460049 () Bool)

(assert (=> bs!540755 m!3460049))

(assert (=> d!874693 d!875131))

(declare-fun d!875139 () Bool)

(assert (=> d!875139 true))

(declare-fun lt!1078173 () Bool)

(declare-fun rulesValidInductive!1770 (LexerInterface!4781 List!36169) Bool)

(assert (=> d!875139 (= lt!1078173 (rulesValidInductive!1770 thiss!18206 rules!2135))))

(declare-fun lambda!117073 () Int)

(declare-fun forall!7342 (List!36169 Int) Bool)

(assert (=> d!875139 (= lt!1078173 (forall!7342 rules!2135 lambda!117073))))

(assert (=> d!875139 (= (rulesValid!1908 thiss!18206 rules!2135) lt!1078173)))

(declare-fun bs!540756 () Bool)

(assert (= bs!540756 d!875139))

(declare-fun m!3460051 () Bool)

(assert (=> bs!540756 m!3460051))

(declare-fun m!3460053 () Bool)

(assert (=> bs!540756 m!3460053))

(assert (=> d!874617 d!875139))

(declare-fun bs!540757 () Bool)

(declare-fun d!875141 () Bool)

(assert (= bs!540757 (and d!875141 d!874955)))

(declare-fun lambda!117074 () Int)

(assert (=> bs!540757 (= (and (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (= lambda!117074 lambda!117064))))

(declare-fun bs!540758 () Bool)

(assert (= bs!540758 (and d!875141 d!875103)))

(assert (=> bs!540758 (= (and (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))))) (= lambda!117074 lambda!117068))))

(assert (=> d!875141 true))

(assert (=> d!875141 (< (dynLambda!14524 order!18333 (toChars!7123 (transformation!5192 (h!41465 rules!2135)))) (dynLambda!14526 order!18335 lambda!117074))))

(assert (=> d!875141 true))

(assert (=> d!875141 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (h!41465 rules!2135)))) (dynLambda!14526 order!18335 lambda!117074))))

(assert (=> d!875141 (= (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (h!41465 rules!2135)))) (Forall!1260 lambda!117074))))

(declare-fun bs!540759 () Bool)

(assert (= bs!540759 d!875141))

(declare-fun m!3460055 () Bool)

(assert (=> bs!540759 m!3460055))

(assert (=> d!874621 d!875141))

(declare-fun b!3198656 () Bool)

(declare-fun e!1994075 () List!36167)

(declare-fun call!231664 () List!36167)

(assert (=> b!3198656 (= e!1994075 call!231664)))

(declare-fun d!875143 () Bool)

(declare-fun c!537033 () Bool)

(assert (=> d!875143 (= c!537033 (or ((_ is EmptyExpr!9951) (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) ((_ is EmptyLang!9951) (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241)))))))))

(declare-fun e!1994073 () List!36167)

(assert (=> d!875143 (= (usedCharacters!508 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) e!1994073)))

(declare-fun b!3198657 () Bool)

(declare-fun c!537035 () Bool)

(assert (=> b!3198657 (= c!537035 ((_ is Star!9951) (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))))))

(declare-fun e!1994072 () List!36167)

(declare-fun e!1994074 () List!36167)

(assert (=> b!3198657 (= e!1994072 e!1994074)))

(declare-fun call!231665 () List!36167)

(declare-fun bm!231657 () Bool)

(declare-fun c!537032 () Bool)

(assert (=> bm!231657 (= call!231665 (usedCharacters!508 (ite c!537032 (regTwo!20415 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) (regOne!20414 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))))))))

(declare-fun b!3198658 () Bool)

(assert (=> b!3198658 (= e!1994073 Nil!36043)))

(declare-fun call!231662 () List!36167)

(declare-fun bm!231658 () Bool)

(assert (=> bm!231658 (= call!231664 (++!8630 (ite c!537032 call!231662 call!231665) (ite c!537032 call!231665 call!231662)))))

(declare-fun call!231663 () List!36167)

(declare-fun bm!231659 () Bool)

(assert (=> bm!231659 (= call!231663 (usedCharacters!508 (ite c!537035 (reg!10280 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) (ite c!537032 (regOne!20415 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) (regTwo!20414 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241)))))))))))

(declare-fun b!3198659 () Bool)

(assert (=> b!3198659 (= e!1994072 (Cons!36043 (c!536748 (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) Nil!36043))))

(declare-fun bm!231660 () Bool)

(assert (=> bm!231660 (= call!231662 call!231663)))

(declare-fun b!3198660 () Bool)

(assert (=> b!3198660 (= e!1994074 call!231663)))

(declare-fun b!3198661 () Bool)

(assert (=> b!3198661 (= e!1994073 e!1994072)))

(declare-fun c!537034 () Bool)

(assert (=> b!3198661 (= c!537034 ((_ is ElementMatch!9951) (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))))))

(declare-fun b!3198662 () Bool)

(assert (=> b!3198662 (= e!1994075 call!231664)))

(declare-fun b!3198663 () Bool)

(assert (=> b!3198663 (= e!1994074 e!1994075)))

(assert (=> b!3198663 (= c!537032 ((_ is Union!9951) (ite c!536785 (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))))))

(assert (= (and d!875143 c!537033) b!3198658))

(assert (= (and d!875143 (not c!537033)) b!3198661))

(assert (= (and b!3198661 c!537034) b!3198659))

(assert (= (and b!3198661 (not c!537034)) b!3198657))

(assert (= (and b!3198657 c!537035) b!3198660))

(assert (= (and b!3198657 (not c!537035)) b!3198663))

(assert (= (and b!3198663 c!537032) b!3198662))

(assert (= (and b!3198663 (not c!537032)) b!3198656))

(assert (= (or b!3198662 b!3198656) bm!231657))

(assert (= (or b!3198662 b!3198656) bm!231660))

(assert (= (or b!3198662 b!3198656) bm!231658))

(assert (= (or b!3198660 bm!231660) bm!231659))

(declare-fun m!3460059 () Bool)

(assert (=> bm!231657 m!3460059))

(declare-fun m!3460061 () Bool)

(assert (=> bm!231658 m!3460061))

(declare-fun m!3460063 () Bool)

(assert (=> bm!231659 m!3460063))

(assert (=> bm!231570 d!875143))

(declare-fun d!875147 () Bool)

(declare-fun lt!1078177 () Bool)

(declare-fun content!4873 (List!36169) (InoxSet Rule!10184))

(assert (=> d!875147 (= lt!1078177 (select (content!4873 rules!2135) (get!11463 lt!1077788)))))

(declare-fun e!1994083 () Bool)

(assert (=> d!875147 (= lt!1078177 e!1994083)))

(declare-fun res!1301440 () Bool)

(assert (=> d!875147 (=> (not res!1301440) (not e!1994083))))

(assert (=> d!875147 (= res!1301440 ((_ is Cons!36045) rules!2135))))

(assert (=> d!875147 (= (contains!6405 rules!2135 (get!11463 lt!1077788)) lt!1078177)))

(declare-fun b!3198676 () Bool)

(declare-fun e!1994084 () Bool)

(assert (=> b!3198676 (= e!1994083 e!1994084)))

(declare-fun res!1301439 () Bool)

(assert (=> b!3198676 (=> res!1301439 e!1994084)))

(assert (=> b!3198676 (= res!1301439 (= (h!41465 rules!2135) (get!11463 lt!1077788)))))

(declare-fun b!3198677 () Bool)

(assert (=> b!3198677 (= e!1994084 (contains!6405 (t!236996 rules!2135) (get!11463 lt!1077788)))))

(assert (= (and d!875147 res!1301440) b!3198676))

(assert (= (and b!3198676 (not res!1301439)) b!3198677))

(declare-fun m!3460073 () Bool)

(assert (=> d!875147 m!3460073))

(assert (=> d!875147 m!3458723))

(declare-fun m!3460075 () Bool)

(assert (=> d!875147 m!3460075))

(assert (=> b!3198677 m!3458723))

(declare-fun m!3460077 () Bool)

(assert (=> b!3198677 m!3460077))

(assert (=> b!3197673 d!875147))

(assert (=> b!3197673 d!875077))

(declare-fun d!875155 () Bool)

(declare-fun lt!1078178 () Bool)

(assert (=> d!875155 (= lt!1078178 (isEmpty!20133 (list!12809 (_2!20839 lt!1077862))))))

(assert (=> d!875155 (= lt!1078178 (isEmpty!20144 (c!536749 (_2!20839 lt!1077862))))))

(assert (=> d!875155 (= (isEmpty!20132 (_2!20839 lt!1077862)) lt!1078178)))

(declare-fun bs!540761 () Bool)

(assert (= bs!540761 d!875155))

(declare-fun m!3460079 () Bool)

(assert (=> bs!540761 m!3460079))

(assert (=> bs!540761 m!3460079))

(declare-fun m!3460081 () Bool)

(assert (=> bs!540761 m!3460081))

(declare-fun m!3460083 () Bool)

(assert (=> bs!540761 m!3460083))

(assert (=> b!3197957 d!875155))

(declare-fun d!875157 () Bool)

(assert (=> d!875157 (= (inv!48890 (tag!5712 (h!41465 (t!236996 rules!2135)))) (= (mod (str.len (value!168431 (tag!5712 (h!41465 (t!236996 rules!2135))))) 2) 0))))

(assert (=> b!3198048 d!875157))

(declare-fun d!875159 () Bool)

(declare-fun res!1301441 () Bool)

(declare-fun e!1994085 () Bool)

(assert (=> d!875159 (=> (not res!1301441) (not e!1994085))))

(assert (=> d!875159 (= res!1301441 (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135))))))))

(assert (=> d!875159 (= (inv!48893 (transformation!5192 (h!41465 (t!236996 rules!2135)))) e!1994085)))

(declare-fun b!3198678 () Bool)

(assert (=> b!3198678 (= e!1994085 (equivClasses!2047 (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135))))))))

(assert (= (and d!875159 res!1301441) b!3198678))

(declare-fun m!3460085 () Bool)

(assert (=> d!875159 m!3460085))

(declare-fun m!3460087 () Bool)

(assert (=> b!3198678 m!3460087))

(assert (=> b!3198048 d!875159))

(assert (=> b!3197864 d!874881))

(declare-fun d!875161 () Bool)

(assert (=> d!875161 true))

(declare-fun order!18341 () Int)

(declare-fun lambda!117081 () Int)

(declare-fun dynLambda!14527 (Int Int) Int)

(assert (=> d!875161 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (dynLambda!14527 order!18341 lambda!117081))))

(declare-fun Forall2!857 (Int) Bool)

(assert (=> d!875161 (= (equivClasses!2047 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (Forall2!857 lambda!117081))))

(declare-fun bs!540763 () Bool)

(assert (= bs!540763 d!875161))

(declare-fun m!3460099 () Bool)

(assert (=> bs!540763 m!3460099))

(assert (=> b!3197701 d!875161))

(declare-fun d!875167 () Bool)

(declare-fun res!1301444 () Bool)

(declare-fun e!1994094 () Bool)

(assert (=> d!875167 (=> res!1301444 e!1994094)))

(assert (=> d!875167 (= res!1301444 ((_ is Nil!36044) (list!12810 (seqFromList!3455 tokens!494))))))

(assert (=> d!875167 (= (forall!7338 (list!12810 (seqFromList!3455 tokens!494)) lambda!117061) e!1994094)))

(declare-fun b!3198699 () Bool)

(declare-fun e!1994095 () Bool)

(assert (=> b!3198699 (= e!1994094 e!1994095)))

(declare-fun res!1301445 () Bool)

(assert (=> b!3198699 (=> (not res!1301445) (not e!1994095))))

(assert (=> b!3198699 (= res!1301445 (dynLambda!14516 lambda!117061 (h!41464 (list!12810 (seqFromList!3455 tokens!494)))))))

(declare-fun b!3198700 () Bool)

(assert (=> b!3198700 (= e!1994095 (forall!7338 (t!236995 (list!12810 (seqFromList!3455 tokens!494))) lambda!117061))))

(assert (= (and d!875167 (not res!1301444)) b!3198699))

(assert (= (and b!3198699 res!1301445) b!3198700))

(declare-fun b_lambda!87403 () Bool)

(assert (=> (not b_lambda!87403) (not b!3198699)))

(declare-fun m!3460101 () Bool)

(assert (=> b!3198699 m!3460101))

(declare-fun m!3460103 () Bool)

(assert (=> b!3198700 m!3460103))

(assert (=> d!874713 d!875167))

(assert (=> d!874713 d!875067))

(declare-fun d!875169 () Bool)

(declare-fun lt!1078183 () Bool)

(assert (=> d!875169 (= lt!1078183 (forall!7338 (list!12810 (seqFromList!3455 tokens!494)) lambda!117061))))

(declare-fun forall!7343 (Conc!10760 Int) Bool)

(assert (=> d!875169 (= lt!1078183 (forall!7343 (c!536750 (seqFromList!3455 tokens!494)) lambda!117061))))

(assert (=> d!875169 (= (forall!7340 (seqFromList!3455 tokens!494) lambda!117061) lt!1078183)))

(declare-fun bs!540764 () Bool)

(assert (= bs!540764 d!875169))

(assert (=> bs!540764 m!3458381))

(assert (=> bs!540764 m!3458901))

(assert (=> bs!540764 m!3458901))

(assert (=> bs!540764 m!3458903))

(declare-fun m!3460105 () Bool)

(assert (=> bs!540764 m!3460105))

(assert (=> d!874713 d!875169))

(assert (=> d!874713 d!874785))

(assert (=> b!3197746 d!874667))

(assert (=> d!874669 d!874683))

(declare-fun d!875171 () Bool)

(assert (=> d!875171 (= (maxPrefixOneRule!1560 thiss!18206 (rule!7626 (h!41464 tokens!494)) lt!1077706) (Some!7077 (tuple2!35413 (Token!9751 (apply!8122 (transformation!5192 (rule!7626 (h!41464 tokens!494))) (seqFromList!3456 lt!1077706)) (rule!7626 (h!41464 tokens!494)) (size!27145 lt!1077706) lt!1077706) Nil!36043)))))

(assert (=> d!875171 true))

(declare-fun _$59!364 () Unit!50442)

(assert (=> d!875171 (= (choose!18663 thiss!18206 rules!2135 lt!1077706 lt!1077706 Nil!36043 (rule!7626 (h!41464 tokens!494))) _$59!364)))

(declare-fun bs!540771 () Bool)

(assert (= bs!540771 d!875171))

(assert (=> bs!540771 m!3458333))

(assert (=> bs!540771 m!3458307))

(assert (=> bs!540771 m!3458307))

(assert (=> bs!540771 m!3458673))

(assert (=> bs!540771 m!3458337))

(assert (=> d!874669 d!875171))

(assert (=> d!874669 d!874697))

(assert (=> d!874669 d!874785))

(declare-fun d!875203 () Bool)

(assert (=> d!875203 (= (apply!8122 (transformation!5192 (rule!7626 (h!41464 tokens!494))) (seqFromList!3456 lt!1077706)) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (seqFromList!3456 lt!1077706)))))

(declare-fun b_lambda!87409 () Bool)

(assert (=> (not b_lambda!87409) (not d!875203)))

(declare-fun t!237160 () Bool)

(declare-fun tb!156591 () Bool)

(assert (=> (and b!3198064 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237160) tb!156591))

(declare-fun result!198872 () Bool)

(assert (=> tb!156591 (= result!198872 (inv!21 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (seqFromList!3456 lt!1077706))))))

(declare-fun m!3460177 () Bool)

(assert (=> tb!156591 m!3460177))

(assert (=> d!875203 t!237160))

(declare-fun b_and!212505 () Bool)

(assert (= b_and!212423 (and (=> t!237160 result!198872) b_and!212505)))

(declare-fun t!237162 () Bool)

(declare-fun tb!156593 () Bool)

(assert (=> (and b!3197411 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237162) tb!156593))

(declare-fun result!198874 () Bool)

(assert (= result!198874 result!198872))

(assert (=> d!875203 t!237162))

(declare-fun b_and!212507 () Bool)

(assert (= b_and!212361 (and (=> t!237162 result!198874) b_and!212507)))

(declare-fun t!237164 () Bool)

(declare-fun tb!156595 () Bool)

(assert (=> (and b!3197387 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237164) tb!156595))

(declare-fun result!198876 () Bool)

(assert (= result!198876 result!198872))

(assert (=> d!875203 t!237164))

(declare-fun b_and!212509 () Bool)

(assert (= b_and!212363 (and (=> t!237164 result!198876) b_and!212509)))

(declare-fun tb!156597 () Bool)

(declare-fun t!237166 () Bool)

(assert (=> (and b!3197407 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237166) tb!156597))

(declare-fun result!198878 () Bool)

(assert (= result!198878 result!198872))

(assert (=> d!875203 t!237166))

(declare-fun b_and!212511 () Bool)

(assert (= b_and!212359 (and (=> t!237166 result!198878) b_and!212511)))

(declare-fun t!237168 () Bool)

(declare-fun tb!156599 () Bool)

(assert (=> (and b!3198049 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237168) tb!156599))

(declare-fun result!198880 () Bool)

(assert (= result!198880 result!198872))

(assert (=> d!875203 t!237168))

(declare-fun b_and!212513 () Bool)

(assert (= b_and!212419 (and (=> t!237168 result!198880) b_and!212513)))

(assert (=> d!875203 m!3458307))

(declare-fun m!3460187 () Bool)

(assert (=> d!875203 m!3460187))

(assert (=> d!874669 d!875203))

(assert (=> d!874669 d!874631))

(declare-fun d!875207 () Bool)

(declare-fun c!537053 () Bool)

(assert (=> d!875207 (= c!537053 ((_ is Nil!36043) lt!1077853))))

(declare-fun e!1994118 () (InoxSet C!20088))

(assert (=> d!875207 (= (content!4869 lt!1077853) e!1994118)))

(declare-fun b!3198735 () Bool)

(assert (=> b!3198735 (= e!1994118 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3198736 () Bool)

(assert (=> b!3198736 (= e!1994118 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077853) true) (content!4869 (t!236994 lt!1077853))))))

(assert (= (and d!875207 c!537053) b!3198735))

(assert (= (and d!875207 (not c!537053)) b!3198736))

(declare-fun m!3460197 () Bool)

(assert (=> b!3198736 m!3460197))

(declare-fun m!3460199 () Bool)

(assert (=> b!3198736 m!3460199))

(assert (=> d!874753 d!875207))

(declare-fun d!875211 () Bool)

(declare-fun c!537055 () Bool)

(assert (=> d!875211 (= c!537055 ((_ is Nil!36043) (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)))))

(declare-fun e!1994121 () (InoxSet C!20088))

(assert (=> d!875211 (= (content!4869 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) e!1994121)))

(declare-fun b!3198741 () Bool)

(assert (=> b!3198741 (= e!1994121 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3198742 () Bool)

(assert (=> b!3198742 (= e!1994121 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)) true) (content!4869 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))) lt!1077696)))))))

(assert (= (and d!875211 c!537055) b!3198741))

(assert (= (and d!875211 (not c!537055)) b!3198742))

(declare-fun m!3460201 () Bool)

(assert (=> b!3198742 m!3460201))

(assert (=> b!3198742 m!3460007))

(assert (=> d!874753 d!875211))

(declare-fun d!875213 () Bool)

(declare-fun c!537056 () Bool)

(assert (=> d!875213 (= c!537056 ((_ is Nil!36043) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))

(declare-fun e!1994122 () (InoxSet C!20088))

(assert (=> d!875213 (= (content!4869 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)) e!1994122)))

(declare-fun b!3198743 () Bool)

(assert (=> b!3198743 (= e!1994122 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3198744 () Bool)

(assert (=> b!3198744 (= e!1994122 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)) true) (content!4869 (t!236994 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 tokens!494)) separatorToken!241)))))))

(assert (= (and d!875213 c!537056) b!3198743))

(assert (= (and d!875213 (not c!537056)) b!3198744))

(declare-fun m!3460217 () Bool)

(assert (=> b!3198744 m!3460217))

(declare-fun m!3460219 () Bool)

(assert (=> b!3198744 m!3460219))

(assert (=> d!874753 d!875213))

(assert (=> d!874675 d!874787))

(declare-fun d!875217 () Bool)

(assert (=> d!875217 (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 (h!41464 tokens!494))))

(assert (=> d!875217 true))

(declare-fun _$77!785 () Unit!50442)

(assert (=> d!875217 (= (choose!18664 thiss!18206 rules!2135 tokens!494 (h!41464 tokens!494)) _$77!785)))

(declare-fun bs!540775 () Bool)

(assert (= bs!540775 d!875217))

(assert (=> bs!540775 m!3458309))

(assert (=> d!874675 d!875217))

(assert (=> d!874675 d!874785))

(declare-fun d!875243 () Bool)

(declare-fun lt!1078205 () Int)

(assert (=> d!875243 (= lt!1078205 (size!27150 (list!12810 lt!1077704)))))

(assert (=> d!875243 (= lt!1078205 (size!27151 (c!536750 lt!1077704)))))

(assert (=> d!875243 (= (size!27146 lt!1077704) lt!1078205)))

(declare-fun bs!540776 () Bool)

(assert (= bs!540776 d!875243))

(assert (=> bs!540776 m!3459101))

(assert (=> bs!540776 m!3459101))

(declare-fun m!3460267 () Bool)

(assert (=> bs!540776 m!3460267))

(declare-fun m!3460269 () Bool)

(assert (=> bs!540776 m!3460269))

(assert (=> d!874799 d!875243))

(declare-fun d!875245 () Bool)

(assert (=> d!875245 (= (list!12809 lt!1077892) (list!12813 (c!536749 lt!1077892)))))

(declare-fun bs!540777 () Bool)

(assert (= bs!540777 d!875245))

(declare-fun m!3460271 () Bool)

(assert (=> bs!540777 m!3460271))

(assert (=> d!874799 d!875245))

(declare-fun d!875247 () Bool)

(assert (=> d!875247 (= (dropList!1071 lt!1077704 0) (drop!1854 (list!12814 (c!536750 lt!1077704)) 0))))

(declare-fun bs!540778 () Bool)

(assert (= bs!540778 d!875247))

(declare-fun m!3460273 () Bool)

(assert (=> bs!540778 m!3460273))

(assert (=> bs!540778 m!3460273))

(declare-fun m!3460275 () Bool)

(assert (=> bs!540778 m!3460275))

(assert (=> d!874799 d!875247))

(declare-fun d!875249 () Bool)

(assert (=> d!875249 (= (list!12809 (BalanceConc!21133 Empty!10759)) (list!12813 (c!536749 (BalanceConc!21133 Empty!10759))))))

(declare-fun bs!540779 () Bool)

(assert (= bs!540779 d!875249))

(declare-fun m!3460277 () Bool)

(assert (=> bs!540779 m!3460277))

(assert (=> d!874799 d!875249))

(declare-fun d!875251 () Bool)

(declare-fun lt!1078216 () List!36167)

(assert (=> d!875251 (= lt!1078216 (++!8630 (list!12809 (BalanceConc!21133 Empty!10759)) (printList!1331 thiss!18206 (dropList!1071 lt!1077704 0))))))

(declare-fun e!1994141 () List!36167)

(assert (=> d!875251 (= lt!1078216 e!1994141)))

(declare-fun c!537063 () Bool)

(assert (=> d!875251 (= c!537063 ((_ is Cons!36044) (dropList!1071 lt!1077704 0)))))

(assert (=> d!875251 (= (printListTailRec!554 thiss!18206 (dropList!1071 lt!1077704 0) (list!12809 (BalanceConc!21133 Empty!10759))) lt!1078216)))

(declare-fun b!3198772 () Bool)

(assert (=> b!3198772 (= e!1994141 (printListTailRec!554 thiss!18206 (t!236995 (dropList!1071 lt!1077704 0)) (++!8630 (list!12809 (BalanceConc!21133 Empty!10759)) (list!12809 (charsOf!3208 (h!41464 (dropList!1071 lt!1077704 0)))))))))

(declare-fun lt!1078217 () List!36167)

(assert (=> b!3198772 (= lt!1078217 (list!12809 (charsOf!3208 (h!41464 (dropList!1071 lt!1077704 0)))))))

(declare-fun lt!1078218 () List!36167)

(assert (=> b!3198772 (= lt!1078218 (printList!1331 thiss!18206 (t!236995 (dropList!1071 lt!1077704 0))))))

(declare-fun lt!1078220 () Unit!50442)

(assert (=> b!3198772 (= lt!1078220 (lemmaConcatAssociativity!1708 (list!12809 (BalanceConc!21133 Empty!10759)) lt!1078217 lt!1078218))))

(assert (=> b!3198772 (= (++!8630 (++!8630 (list!12809 (BalanceConc!21133 Empty!10759)) lt!1078217) lt!1078218) (++!8630 (list!12809 (BalanceConc!21133 Empty!10759)) (++!8630 lt!1078217 lt!1078218)))))

(declare-fun lt!1078219 () Unit!50442)

(assert (=> b!3198772 (= lt!1078219 lt!1078220)))

(declare-fun b!3198773 () Bool)

(assert (=> b!3198773 (= e!1994141 (list!12809 (BalanceConc!21133 Empty!10759)))))

(assert (= (and d!875251 c!537063) b!3198772))

(assert (= (and d!875251 (not c!537063)) b!3198773))

(assert (=> d!875251 m!3459129))

(declare-fun m!3460279 () Bool)

(assert (=> d!875251 m!3460279))

(assert (=> d!875251 m!3459127))

(assert (=> d!875251 m!3460279))

(declare-fun m!3460281 () Bool)

(assert (=> d!875251 m!3460281))

(declare-fun m!3460283 () Bool)

(assert (=> b!3198772 m!3460283))

(assert (=> b!3198772 m!3459127))

(declare-fun m!3460285 () Bool)

(assert (=> b!3198772 m!3460285))

(declare-fun m!3460287 () Bool)

(assert (=> b!3198772 m!3460287))

(assert (=> b!3198772 m!3460285))

(declare-fun m!3460289 () Bool)

(assert (=> b!3198772 m!3460289))

(declare-fun m!3460291 () Bool)

(assert (=> b!3198772 m!3460291))

(declare-fun m!3460293 () Bool)

(assert (=> b!3198772 m!3460293))

(assert (=> b!3198772 m!3460293))

(declare-fun m!3460295 () Bool)

(assert (=> b!3198772 m!3460295))

(assert (=> b!3198772 m!3459127))

(assert (=> b!3198772 m!3460295))

(assert (=> b!3198772 m!3460289))

(assert (=> b!3198772 m!3459127))

(declare-fun m!3460297 () Bool)

(assert (=> b!3198772 m!3460297))

(declare-fun m!3460299 () Bool)

(assert (=> b!3198772 m!3460299))

(declare-fun m!3460301 () Bool)

(assert (=> b!3198772 m!3460301))

(assert (=> b!3198772 m!3459127))

(assert (=> b!3198772 m!3460299))

(assert (=> d!874799 d!875251))

(declare-fun d!875253 () Bool)

(assert (=> d!875253 (= (isEmpty!20138 lt!1077764) (not ((_ is Some!7076) lt!1077764)))))

(assert (=> d!874663 d!875253))

(assert (=> d!874663 d!874617))

(declare-fun d!875255 () Bool)

(declare-fun lt!1078221 () Bool)

(assert (=> d!875255 (= lt!1078221 (select (content!4869 (t!236994 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241))))) (head!7005 lt!1077696)))))

(declare-fun e!1994142 () Bool)

(assert (=> d!875255 (= lt!1078221 e!1994142)))

(declare-fun res!1301481 () Bool)

(assert (=> d!875255 (=> (not res!1301481) (not e!1994142))))

(assert (=> d!875255 (= res!1301481 ((_ is Cons!36043) (t!236994 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241))))))))

(assert (=> d!875255 (= (contains!6403 (t!236994 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241)))) (head!7005 lt!1077696)) lt!1078221)))

(declare-fun b!3198774 () Bool)

(declare-fun e!1994143 () Bool)

(assert (=> b!3198774 (= e!1994142 e!1994143)))

(declare-fun res!1301480 () Bool)

(assert (=> b!3198774 (=> res!1301480 e!1994143)))

(assert (=> b!3198774 (= res!1301480 (= (h!41463 (t!236994 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241))))) (head!7005 lt!1077696)))))

(declare-fun b!3198775 () Bool)

(assert (=> b!3198775 (= e!1994143 (contains!6403 (t!236994 (t!236994 (usedCharacters!508 (regex!5192 (rule!7626 separatorToken!241))))) (head!7005 lt!1077696)))))

(assert (= (and d!875255 res!1301481) b!3198774))

(assert (= (and b!3198774 (not res!1301480)) b!3198775))

(assert (=> d!875255 m!3459355))

(assert (=> d!875255 m!3458321))

(declare-fun m!3460303 () Bool)

(assert (=> d!875255 m!3460303))

(assert (=> b!3198775 m!3458321))

(declare-fun m!3460305 () Bool)

(assert (=> b!3198775 m!3460305))

(assert (=> b!3197685 d!875255))

(declare-fun d!875257 () Bool)

(assert (=> d!875257 (= (tail!5200 (drop!1854 lt!1077890 0)) (t!236995 (drop!1854 lt!1077890 0)))))

(assert (=> b!3198001 d!875257))

(declare-fun d!875259 () Bool)

(declare-fun lt!1078222 () Token!9750)

(assert (=> d!875259 (= lt!1078222 (apply!8125 (list!12810 lt!1077704) 0))))

(assert (=> d!875259 (= lt!1078222 (apply!8127 (c!536750 lt!1077704) 0))))

(declare-fun e!1994144 () Bool)

(assert (=> d!875259 e!1994144))

(declare-fun res!1301482 () Bool)

(assert (=> d!875259 (=> (not res!1301482) (not e!1994144))))

(assert (=> d!875259 (= res!1301482 (<= 0 0))))

(assert (=> d!875259 (= (apply!8123 lt!1077704 0) lt!1078222)))

(declare-fun b!3198776 () Bool)

(assert (=> b!3198776 (= e!1994144 (< 0 (size!27146 lt!1077704)))))

(assert (= (and d!875259 res!1301482) b!3198776))

(assert (=> d!875259 m!3459101))

(assert (=> d!875259 m!3459101))

(declare-fun m!3460307 () Bool)

(assert (=> d!875259 m!3460307))

(declare-fun m!3460309 () Bool)

(assert (=> d!875259 m!3460309))

(assert (=> b!3198776 m!3459135))

(assert (=> b!3198001 d!875259))

(declare-fun d!875261 () Bool)

(declare-fun lt!1078223 () BalanceConc!21132)

(assert (=> d!875261 (= (list!12809 lt!1078223) (originalCharacters!5906 (apply!8123 lt!1077704 0)))))

(assert (=> d!875261 (= lt!1078223 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0)))) (value!168432 (apply!8123 lt!1077704 0))))))

(assert (=> d!875261 (= (charsOf!3208 (apply!8123 lt!1077704 0)) lt!1078223)))

(declare-fun b_lambda!87411 () Bool)

(assert (=> (not b_lambda!87411) (not d!875261)))

(declare-fun t!237172 () Bool)

(declare-fun tb!156601 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0))))) t!237172) tb!156601))

(declare-fun b!3198777 () Bool)

(declare-fun e!1994145 () Bool)

(declare-fun tp!1011056 () Bool)

(assert (=> b!3198777 (= e!1994145 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0)))) (value!168432 (apply!8123 lt!1077704 0))))) tp!1011056))))

(declare-fun result!198882 () Bool)

(assert (=> tb!156601 (= result!198882 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0)))) (value!168432 (apply!8123 lt!1077704 0)))) e!1994145))))

(assert (= tb!156601 b!3198777))

(declare-fun m!3460311 () Bool)

(assert (=> b!3198777 m!3460311))

(declare-fun m!3460313 () Bool)

(assert (=> tb!156601 m!3460313))

(assert (=> d!875261 t!237172))

(declare-fun b_and!212515 () Bool)

(assert (= b_and!212483 (and (=> t!237172 result!198882) b_and!212515)))

(declare-fun t!237174 () Bool)

(declare-fun tb!156603 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0))))) t!237174) tb!156603))

(declare-fun result!198884 () Bool)

(assert (= result!198884 result!198882))

(assert (=> d!875261 t!237174))

(declare-fun b_and!212517 () Bool)

(assert (= b_and!212477 (and (=> t!237174 result!198884) b_and!212517)))

(declare-fun tb!156605 () Bool)

(declare-fun t!237176 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0))))) t!237176) tb!156605))

(declare-fun result!198886 () Bool)

(assert (= result!198886 result!198882))

(assert (=> d!875261 t!237176))

(declare-fun b_and!212519 () Bool)

(assert (= b_and!212479 (and (=> t!237176 result!198886) b_and!212519)))

(declare-fun t!237178 () Bool)

(declare-fun tb!156607 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0))))) t!237178) tb!156607))

(declare-fun result!198888 () Bool)

(assert (= result!198888 result!198882))

(assert (=> d!875261 t!237178))

(declare-fun b_and!212521 () Bool)

(assert (= b_and!212481 (and (=> t!237178 result!198888) b_and!212521)))

(declare-fun tb!156609 () Bool)

(declare-fun t!237180 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0))))) t!237180) tb!156609))

(declare-fun result!198890 () Bool)

(assert (= result!198890 result!198882))

(assert (=> d!875261 t!237180))

(declare-fun b_and!212523 () Bool)

(assert (= b_and!212475 (and (=> t!237180 result!198890) b_and!212523)))

(declare-fun m!3460315 () Bool)

(assert (=> d!875261 m!3460315))

(declare-fun m!3460317 () Bool)

(assert (=> d!875261 m!3460317))

(assert (=> b!3198001 d!875261))

(declare-fun d!875263 () Bool)

(assert (=> d!875263 (= (head!7006 (drop!1854 lt!1077887 0)) (apply!8125 lt!1077887 0))))

(declare-fun lt!1078226 () Unit!50442)

(declare-fun choose!18670 (List!36168 Int) Unit!50442)

(assert (=> d!875263 (= lt!1078226 (choose!18670 lt!1077887 0))))

(declare-fun e!1994148 () Bool)

(assert (=> d!875263 e!1994148))

(declare-fun res!1301485 () Bool)

(assert (=> d!875263 (=> (not res!1301485) (not e!1994148))))

(assert (=> d!875263 (= res!1301485 (>= 0 0))))

(assert (=> d!875263 (= (lemmaDropApply!1030 lt!1077887 0) lt!1078226)))

(declare-fun b!3198780 () Bool)

(assert (=> b!3198780 (= e!1994148 (< 0 (size!27150 lt!1077887)))))

(assert (= (and d!875263 res!1301485) b!3198780))

(assert (=> d!875263 m!3459145))

(assert (=> d!875263 m!3459145))

(assert (=> d!875263 m!3459153))

(assert (=> d!875263 m!3459151))

(declare-fun m!3460319 () Bool)

(assert (=> d!875263 m!3460319))

(declare-fun m!3460321 () Bool)

(assert (=> b!3198780 m!3460321))

(assert (=> b!3198001 d!875263))

(declare-fun d!875265 () Bool)

(assert (=> d!875265 (= (tail!5200 (drop!1854 lt!1077890 0)) (drop!1854 lt!1077890 (+ 0 1)))))

(declare-fun lt!1078231 () Unit!50442)

(declare-fun choose!18671 (List!36168 Int) Unit!50442)

(assert (=> d!875265 (= lt!1078231 (choose!18671 lt!1077890 0))))

(declare-fun e!1994155 () Bool)

(assert (=> d!875265 e!1994155))

(declare-fun res!1301492 () Bool)

(assert (=> d!875265 (=> (not res!1301492) (not e!1994155))))

(assert (=> d!875265 (= res!1301492 (>= 0 0))))

(assert (=> d!875265 (= (lemmaDropTail!914 lt!1077890 0) lt!1078231)))

(declare-fun b!3198787 () Bool)

(assert (=> b!3198787 (= e!1994155 (< 0 (size!27150 lt!1077890)))))

(assert (= (and d!875265 res!1301492) b!3198787))

(assert (=> d!875265 m!3459155))

(assert (=> d!875265 m!3459155))

(assert (=> d!875265 m!3459157))

(assert (=> d!875265 m!3459149))

(declare-fun m!3460323 () Bool)

(assert (=> d!875265 m!3460323))

(declare-fun m!3460325 () Bool)

(assert (=> b!3198787 m!3460325))

(assert (=> b!3198001 d!875265))

(declare-fun b!3198821 () Bool)

(declare-fun e!1994173 () Bool)

(declare-fun lt!1078236 () BalanceConc!21132)

(assert (=> b!3198821 (= e!1994173 (= (list!12809 lt!1078236) (++!8630 (list!12809 (BalanceConc!21133 Empty!10759)) (list!12809 (charsOf!3208 (apply!8123 lt!1077704 0))))))))

(declare-fun b!3198820 () Bool)

(declare-fun res!1301511 () Bool)

(assert (=> b!3198820 (=> (not res!1301511) (not e!1994173))))

(declare-fun height!1542 (Conc!10759) Int)

(declare-fun ++!8633 (Conc!10759 Conc!10759) Conc!10759)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3198820 (= res!1301511 (>= (height!1542 (++!8633 (c!536749 (BalanceConc!21133 Empty!10759)) (c!536749 (charsOf!3208 (apply!8123 lt!1077704 0))))) (max!0 (height!1542 (c!536749 (BalanceConc!21133 Empty!10759))) (height!1542 (c!536749 (charsOf!3208 (apply!8123 lt!1077704 0)))))))))

(declare-fun d!875267 () Bool)

(assert (=> d!875267 e!1994173))

(declare-fun res!1301510 () Bool)

(assert (=> d!875267 (=> (not res!1301510) (not e!1994173))))

(declare-fun appendAssocInst!726 (Conc!10759 Conc!10759) Bool)

(assert (=> d!875267 (= res!1301510 (appendAssocInst!726 (c!536749 (BalanceConc!21133 Empty!10759)) (c!536749 (charsOf!3208 (apply!8123 lt!1077704 0)))))))

(assert (=> d!875267 (= lt!1078236 (BalanceConc!21133 (++!8633 (c!536749 (BalanceConc!21133 Empty!10759)) (c!536749 (charsOf!3208 (apply!8123 lt!1077704 0))))))))

(assert (=> d!875267 (= (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (apply!8123 lt!1077704 0))) lt!1078236)))

(declare-fun b!3198819 () Bool)

(declare-fun res!1301512 () Bool)

(assert (=> b!3198819 (=> (not res!1301512) (not e!1994173))))

(assert (=> b!3198819 (= res!1301512 (<= (height!1542 (++!8633 (c!536749 (BalanceConc!21133 Empty!10759)) (c!536749 (charsOf!3208 (apply!8123 lt!1077704 0))))) (+ (max!0 (height!1542 (c!536749 (BalanceConc!21133 Empty!10759))) (height!1542 (c!536749 (charsOf!3208 (apply!8123 lt!1077704 0))))) 1)))))

(declare-fun b!3198818 () Bool)

(declare-fun res!1301513 () Bool)

(assert (=> b!3198818 (=> (not res!1301513) (not e!1994173))))

(assert (=> b!3198818 (= res!1301513 (isBalanced!3206 (++!8633 (c!536749 (BalanceConc!21133 Empty!10759)) (c!536749 (charsOf!3208 (apply!8123 lt!1077704 0))))))))

(assert (= (and d!875267 res!1301510) b!3198818))

(assert (= (and b!3198818 res!1301513) b!3198819))

(assert (= (and b!3198819 res!1301512) b!3198820))

(assert (= (and b!3198820 res!1301511) b!3198821))

(declare-fun m!3460357 () Bool)

(assert (=> b!3198818 m!3460357))

(assert (=> b!3198818 m!3460357))

(declare-fun m!3460359 () Bool)

(assert (=> b!3198818 m!3460359))

(assert (=> b!3198819 m!3460357))

(declare-fun m!3460361 () Bool)

(assert (=> b!3198819 m!3460361))

(declare-fun m!3460363 () Bool)

(assert (=> b!3198819 m!3460363))

(declare-fun m!3460365 () Bool)

(assert (=> b!3198819 m!3460365))

(assert (=> b!3198819 m!3460357))

(declare-fun m!3460367 () Bool)

(assert (=> b!3198819 m!3460367))

(assert (=> b!3198819 m!3460361))

(assert (=> b!3198819 m!3460363))

(declare-fun m!3460369 () Bool)

(assert (=> b!3198821 m!3460369))

(assert (=> b!3198821 m!3459127))

(assert (=> b!3198821 m!3459141))

(declare-fun m!3460371 () Bool)

(assert (=> b!3198821 m!3460371))

(assert (=> b!3198821 m!3459127))

(assert (=> b!3198821 m!3460371))

(declare-fun m!3460373 () Bool)

(assert (=> b!3198821 m!3460373))

(declare-fun m!3460375 () Bool)

(assert (=> d!875267 m!3460375))

(assert (=> d!875267 m!3460357))

(assert (=> b!3198820 m!3460357))

(assert (=> b!3198820 m!3460361))

(assert (=> b!3198820 m!3460363))

(assert (=> b!3198820 m!3460365))

(assert (=> b!3198820 m!3460357))

(assert (=> b!3198820 m!3460367))

(assert (=> b!3198820 m!3460361))

(assert (=> b!3198820 m!3460363))

(assert (=> b!3198001 d!875267))

(declare-fun bm!231664 () Bool)

(declare-fun call!231669 () Int)

(assert (=> bm!231664 (= call!231669 (size!27150 lt!1077890))))

(declare-fun b!3198859 () Bool)

(declare-fun e!1994197 () List!36168)

(declare-fun e!1994195 () List!36168)

(assert (=> b!3198859 (= e!1994197 e!1994195)))

(declare-fun c!537089 () Bool)

(assert (=> b!3198859 (= c!537089 (<= (+ 0 1) 0))))

(declare-fun b!3198860 () Bool)

(assert (=> b!3198860 (= e!1994195 lt!1077890)))

(declare-fun d!875291 () Bool)

(declare-fun e!1994199 () Bool)

(assert (=> d!875291 e!1994199))

(declare-fun res!1301521 () Bool)

(assert (=> d!875291 (=> (not res!1301521) (not e!1994199))))

(declare-fun lt!1078241 () List!36168)

(assert (=> d!875291 (= res!1301521 (= ((_ map implies) (content!4871 lt!1078241) (content!4871 lt!1077890)) ((as const (InoxSet Token!9750)) true)))))

(assert (=> d!875291 (= lt!1078241 e!1994197)))

(declare-fun c!537088 () Bool)

(assert (=> d!875291 (= c!537088 ((_ is Nil!36044) lt!1077890))))

(assert (=> d!875291 (= (drop!1854 lt!1077890 (+ 0 1)) lt!1078241)))

(declare-fun b!3198861 () Bool)

(assert (=> b!3198861 (= e!1994195 (drop!1854 (t!236995 lt!1077890) (- (+ 0 1) 1)))))

(declare-fun b!3198862 () Bool)

(declare-fun e!1994196 () Int)

(assert (=> b!3198862 (= e!1994196 call!231669)))

(declare-fun b!3198863 () Bool)

(declare-fun e!1994198 () Int)

(assert (=> b!3198863 (= e!1994198 (- call!231669 (+ 0 1)))))

(declare-fun b!3198864 () Bool)

(assert (=> b!3198864 (= e!1994197 Nil!36044)))

(declare-fun b!3198865 () Bool)

(assert (=> b!3198865 (= e!1994196 e!1994198)))

(declare-fun c!537090 () Bool)

(assert (=> b!3198865 (= c!537090 (>= (+ 0 1) call!231669))))

(declare-fun b!3198866 () Bool)

(assert (=> b!3198866 (= e!1994199 (= (size!27150 lt!1078241) e!1994196))))

(declare-fun c!537087 () Bool)

(assert (=> b!3198866 (= c!537087 (<= (+ 0 1) 0))))

(declare-fun b!3198867 () Bool)

(assert (=> b!3198867 (= e!1994198 0)))

(assert (= (and d!875291 c!537088) b!3198864))

(assert (= (and d!875291 (not c!537088)) b!3198859))

(assert (= (and b!3198859 c!537089) b!3198860))

(assert (= (and b!3198859 (not c!537089)) b!3198861))

(assert (= (and d!875291 res!1301521) b!3198866))

(assert (= (and b!3198866 c!537087) b!3198862))

(assert (= (and b!3198866 (not c!537087)) b!3198865))

(assert (= (and b!3198865 c!537090) b!3198867))

(assert (= (and b!3198865 (not c!537090)) b!3198863))

(assert (= (or b!3198862 b!3198865 b!3198863) bm!231664))

(assert (=> bm!231664 m!3460325))

(declare-fun m!3460423 () Bool)

(assert (=> d!875291 m!3460423))

(declare-fun m!3460425 () Bool)

(assert (=> d!875291 m!3460425))

(declare-fun m!3460427 () Bool)

(assert (=> b!3198861 m!3460427))

(declare-fun m!3460429 () Bool)

(assert (=> b!3198866 m!3460429))

(assert (=> b!3198001 d!875291))

(declare-fun d!875311 () Bool)

(assert (=> d!875311 (= (head!7006 (drop!1854 lt!1077887 0)) (h!41464 (drop!1854 lt!1077887 0)))))

(assert (=> b!3198001 d!875311))

(declare-fun bm!231665 () Bool)

(declare-fun call!231670 () Int)

(assert (=> bm!231665 (= call!231670 (size!27150 lt!1077887))))

(declare-fun b!3198868 () Bool)

(declare-fun e!1994202 () List!36168)

(declare-fun e!1994200 () List!36168)

(assert (=> b!3198868 (= e!1994202 e!1994200)))

(declare-fun c!537093 () Bool)

(assert (=> b!3198868 (= c!537093 (<= 0 0))))

(declare-fun b!3198869 () Bool)

(assert (=> b!3198869 (= e!1994200 lt!1077887)))

(declare-fun d!875313 () Bool)

(declare-fun e!1994204 () Bool)

(assert (=> d!875313 e!1994204))

(declare-fun res!1301522 () Bool)

(assert (=> d!875313 (=> (not res!1301522) (not e!1994204))))

(declare-fun lt!1078242 () List!36168)

(assert (=> d!875313 (= res!1301522 (= ((_ map implies) (content!4871 lt!1078242) (content!4871 lt!1077887)) ((as const (InoxSet Token!9750)) true)))))

(assert (=> d!875313 (= lt!1078242 e!1994202)))

(declare-fun c!537092 () Bool)

(assert (=> d!875313 (= c!537092 ((_ is Nil!36044) lt!1077887))))

(assert (=> d!875313 (= (drop!1854 lt!1077887 0) lt!1078242)))

(declare-fun b!3198870 () Bool)

(assert (=> b!3198870 (= e!1994200 (drop!1854 (t!236995 lt!1077887) (- 0 1)))))

(declare-fun b!3198871 () Bool)

(declare-fun e!1994201 () Int)

(assert (=> b!3198871 (= e!1994201 call!231670)))

(declare-fun b!3198872 () Bool)

(declare-fun e!1994203 () Int)

(assert (=> b!3198872 (= e!1994203 (- call!231670 0))))

(declare-fun b!3198873 () Bool)

(assert (=> b!3198873 (= e!1994202 Nil!36044)))

(declare-fun b!3198874 () Bool)

(assert (=> b!3198874 (= e!1994201 e!1994203)))

(declare-fun c!537094 () Bool)

(assert (=> b!3198874 (= c!537094 (>= 0 call!231670))))

(declare-fun b!3198875 () Bool)

(assert (=> b!3198875 (= e!1994204 (= (size!27150 lt!1078242) e!1994201))))

(declare-fun c!537091 () Bool)

(assert (=> b!3198875 (= c!537091 (<= 0 0))))

(declare-fun b!3198876 () Bool)

(assert (=> b!3198876 (= e!1994203 0)))

(assert (= (and d!875313 c!537092) b!3198873))

(assert (= (and d!875313 (not c!537092)) b!3198868))

(assert (= (and b!3198868 c!537093) b!3198869))

(assert (= (and b!3198868 (not c!537093)) b!3198870))

(assert (= (and d!875313 res!1301522) b!3198875))

(assert (= (and b!3198875 c!537091) b!3198871))

(assert (= (and b!3198875 (not c!537091)) b!3198874))

(assert (= (and b!3198874 c!537094) b!3198876))

(assert (= (and b!3198874 (not c!537094)) b!3198872))

(assert (= (or b!3198871 b!3198874 b!3198872) bm!231665))

(assert (=> bm!231665 m!3460321))

(declare-fun m!3460431 () Bool)

(assert (=> d!875313 m!3460431))

(declare-fun m!3460433 () Bool)

(assert (=> d!875313 m!3460433))

(declare-fun m!3460435 () Bool)

(assert (=> b!3198870 m!3460435))

(declare-fun m!3460437 () Bool)

(assert (=> b!3198875 m!3460437))

(assert (=> b!3198001 d!875313))

(declare-fun d!875315 () Bool)

(assert (=> d!875315 (= (list!12810 lt!1077704) (list!12814 (c!536750 lt!1077704)))))

(declare-fun bs!540786 () Bool)

(assert (= bs!540786 d!875315))

(assert (=> bs!540786 m!3460273))

(assert (=> b!3198001 d!875315))

(declare-fun d!875317 () Bool)

(declare-fun lt!1078249 () BalanceConc!21132)

(assert (=> d!875317 (= (list!12809 lt!1078249) (printListTailRec!554 thiss!18206 (dropList!1071 lt!1077704 (+ 0 1)) (list!12809 (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (apply!8123 lt!1077704 0))))))))

(declare-fun e!1994205 () BalanceConc!21132)

(assert (=> d!875317 (= lt!1078249 e!1994205)))

(declare-fun c!537095 () Bool)

(assert (=> d!875317 (= c!537095 (>= (+ 0 1) (size!27146 lt!1077704)))))

(declare-fun e!1994206 () Bool)

(assert (=> d!875317 e!1994206))

(declare-fun res!1301523 () Bool)

(assert (=> d!875317 (=> (not res!1301523) (not e!1994206))))

(assert (=> d!875317 (= res!1301523 (>= (+ 0 1) 0))))

(assert (=> d!875317 (= (printTailRec!1278 thiss!18206 lt!1077704 (+ 0 1) (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (apply!8123 lt!1077704 0)))) lt!1078249)))

(declare-fun b!3198877 () Bool)

(assert (=> b!3198877 (= e!1994206 (<= (+ 0 1) (size!27146 lt!1077704)))))

(declare-fun b!3198878 () Bool)

(assert (=> b!3198878 (= e!1994205 (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (apply!8123 lt!1077704 0))))))

(declare-fun b!3198879 () Bool)

(assert (=> b!3198879 (= e!1994205 (printTailRec!1278 thiss!18206 lt!1077704 (+ 0 1 1) (++!8631 (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (apply!8123 lt!1077704 0))) (charsOf!3208 (apply!8123 lt!1077704 (+ 0 1))))))))

(declare-fun lt!1078244 () List!36168)

(assert (=> b!3198879 (= lt!1078244 (list!12810 lt!1077704))))

(declare-fun lt!1078245 () Unit!50442)

(assert (=> b!3198879 (= lt!1078245 (lemmaDropApply!1030 lt!1078244 (+ 0 1)))))

(assert (=> b!3198879 (= (head!7006 (drop!1854 lt!1078244 (+ 0 1))) (apply!8125 lt!1078244 (+ 0 1)))))

(declare-fun lt!1078243 () Unit!50442)

(assert (=> b!3198879 (= lt!1078243 lt!1078245)))

(declare-fun lt!1078247 () List!36168)

(assert (=> b!3198879 (= lt!1078247 (list!12810 lt!1077704))))

(declare-fun lt!1078246 () Unit!50442)

(assert (=> b!3198879 (= lt!1078246 (lemmaDropTail!914 lt!1078247 (+ 0 1)))))

(assert (=> b!3198879 (= (tail!5200 (drop!1854 lt!1078247 (+ 0 1))) (drop!1854 lt!1078247 (+ 0 1 1)))))

(declare-fun lt!1078248 () Unit!50442)

(assert (=> b!3198879 (= lt!1078248 lt!1078246)))

(assert (= (and d!875317 res!1301523) b!3198877))

(assert (= (and d!875317 c!537095) b!3198878))

(assert (= (and d!875317 (not c!537095)) b!3198879))

(assert (=> d!875317 m!3459137))

(declare-fun m!3460439 () Bool)

(assert (=> d!875317 m!3460439))

(declare-fun m!3460441 () Bool)

(assert (=> d!875317 m!3460441))

(declare-fun m!3460443 () Bool)

(assert (=> d!875317 m!3460443))

(assert (=> d!875317 m!3460441))

(assert (=> d!875317 m!3460439))

(declare-fun m!3460445 () Bool)

(assert (=> d!875317 m!3460445))

(assert (=> d!875317 m!3459135))

(assert (=> b!3198877 m!3459135))

(declare-fun m!3460447 () Bool)

(assert (=> b!3198879 m!3460447))

(declare-fun m!3460449 () Bool)

(assert (=> b!3198879 m!3460449))

(assert (=> b!3198879 m!3459137))

(declare-fun m!3460451 () Bool)

(assert (=> b!3198879 m!3460451))

(assert (=> b!3198879 m!3460447))

(declare-fun m!3460453 () Bool)

(assert (=> b!3198879 m!3460453))

(declare-fun m!3460455 () Bool)

(assert (=> b!3198879 m!3460455))

(declare-fun m!3460457 () Bool)

(assert (=> b!3198879 m!3460457))

(assert (=> b!3198879 m!3459101))

(declare-fun m!3460459 () Bool)

(assert (=> b!3198879 m!3460459))

(declare-fun m!3460461 () Bool)

(assert (=> b!3198879 m!3460461))

(assert (=> b!3198879 m!3460457))

(assert (=> b!3198879 m!3460451))

(assert (=> b!3198879 m!3460455))

(declare-fun m!3460463 () Bool)

(assert (=> b!3198879 m!3460463))

(declare-fun m!3460465 () Bool)

(assert (=> b!3198879 m!3460465))

(declare-fun m!3460467 () Bool)

(assert (=> b!3198879 m!3460467))

(declare-fun m!3460469 () Bool)

(assert (=> b!3198879 m!3460469))

(assert (=> b!3198879 m!3460465))

(assert (=> b!3198001 d!875317))

(declare-fun d!875319 () Bool)

(declare-fun lt!1078252 () Token!9750)

(assert (=> d!875319 (contains!6404 lt!1077887 lt!1078252)))

(declare-fun e!1994212 () Token!9750)

(assert (=> d!875319 (= lt!1078252 e!1994212)))

(declare-fun c!537098 () Bool)

(assert (=> d!875319 (= c!537098 (= 0 0))))

(declare-fun e!1994211 () Bool)

(assert (=> d!875319 e!1994211))

(declare-fun res!1301526 () Bool)

(assert (=> d!875319 (=> (not res!1301526) (not e!1994211))))

(assert (=> d!875319 (= res!1301526 (<= 0 0))))

(assert (=> d!875319 (= (apply!8125 lt!1077887 0) lt!1078252)))

(declare-fun b!3198886 () Bool)

(assert (=> b!3198886 (= e!1994211 (< 0 (size!27150 lt!1077887)))))

(declare-fun b!3198887 () Bool)

(assert (=> b!3198887 (= e!1994212 (head!7006 lt!1077887))))

(declare-fun b!3198888 () Bool)

(assert (=> b!3198888 (= e!1994212 (apply!8125 (tail!5200 lt!1077887) (- 0 1)))))

(assert (= (and d!875319 res!1301526) b!3198886))

(assert (= (and d!875319 c!537098) b!3198887))

(assert (= (and d!875319 (not c!537098)) b!3198888))

(declare-fun m!3460471 () Bool)

(assert (=> d!875319 m!3460471))

(assert (=> b!3198886 m!3460321))

(declare-fun m!3460473 () Bool)

(assert (=> b!3198887 m!3460473))

(declare-fun m!3460475 () Bool)

(assert (=> b!3198888 m!3460475))

(assert (=> b!3198888 m!3460475))

(declare-fun m!3460477 () Bool)

(assert (=> b!3198888 m!3460477))

(assert (=> b!3198001 d!875319))

(declare-fun bm!231666 () Bool)

(declare-fun call!231671 () Int)

(assert (=> bm!231666 (= call!231671 (size!27150 lt!1077890))))

(declare-fun b!3198889 () Bool)

(declare-fun e!1994215 () List!36168)

(declare-fun e!1994213 () List!36168)

(assert (=> b!3198889 (= e!1994215 e!1994213)))

(declare-fun c!537101 () Bool)

(assert (=> b!3198889 (= c!537101 (<= 0 0))))

(declare-fun b!3198890 () Bool)

(assert (=> b!3198890 (= e!1994213 lt!1077890)))

(declare-fun d!875321 () Bool)

(declare-fun e!1994217 () Bool)

(assert (=> d!875321 e!1994217))

(declare-fun res!1301527 () Bool)

(assert (=> d!875321 (=> (not res!1301527) (not e!1994217))))

(declare-fun lt!1078253 () List!36168)

(assert (=> d!875321 (= res!1301527 (= ((_ map implies) (content!4871 lt!1078253) (content!4871 lt!1077890)) ((as const (InoxSet Token!9750)) true)))))

(assert (=> d!875321 (= lt!1078253 e!1994215)))

(declare-fun c!537100 () Bool)

(assert (=> d!875321 (= c!537100 ((_ is Nil!36044) lt!1077890))))

(assert (=> d!875321 (= (drop!1854 lt!1077890 0) lt!1078253)))

(declare-fun b!3198891 () Bool)

(assert (=> b!3198891 (= e!1994213 (drop!1854 (t!236995 lt!1077890) (- 0 1)))))

(declare-fun b!3198892 () Bool)

(declare-fun e!1994214 () Int)

(assert (=> b!3198892 (= e!1994214 call!231671)))

(declare-fun b!3198893 () Bool)

(declare-fun e!1994216 () Int)

(assert (=> b!3198893 (= e!1994216 (- call!231671 0))))

(declare-fun b!3198894 () Bool)

(assert (=> b!3198894 (= e!1994215 Nil!36044)))

(declare-fun b!3198895 () Bool)

(assert (=> b!3198895 (= e!1994214 e!1994216)))

(declare-fun c!537102 () Bool)

(assert (=> b!3198895 (= c!537102 (>= 0 call!231671))))

(declare-fun b!3198896 () Bool)

(assert (=> b!3198896 (= e!1994217 (= (size!27150 lt!1078253) e!1994214))))

(declare-fun c!537099 () Bool)

(assert (=> b!3198896 (= c!537099 (<= 0 0))))

(declare-fun b!3198897 () Bool)

(assert (=> b!3198897 (= e!1994216 0)))

(assert (= (and d!875321 c!537100) b!3198894))

(assert (= (and d!875321 (not c!537100)) b!3198889))

(assert (= (and b!3198889 c!537101) b!3198890))

(assert (= (and b!3198889 (not c!537101)) b!3198891))

(assert (= (and d!875321 res!1301527) b!3198896))

(assert (= (and b!3198896 c!537099) b!3198892))

(assert (= (and b!3198896 (not c!537099)) b!3198895))

(assert (= (and b!3198895 c!537102) b!3198897))

(assert (= (and b!3198895 (not c!537102)) b!3198893))

(assert (= (or b!3198892 b!3198895 b!3198893) bm!231666))

(assert (=> bm!231666 m!3460325))

(declare-fun m!3460479 () Bool)

(assert (=> d!875321 m!3460479))

(assert (=> d!875321 m!3460425))

(declare-fun m!3460481 () Bool)

(assert (=> b!3198891 m!3460481))

(declare-fun m!3460483 () Bool)

(assert (=> b!3198896 m!3460483))

(assert (=> b!3198001 d!875321))

(declare-fun d!875323 () Bool)

(declare-fun res!1301535 () Bool)

(declare-fun e!1994227 () Bool)

(assert (=> d!875323 (=> res!1301535 e!1994227)))

(assert (=> d!875323 (= res!1301535 ((_ is Nil!36045) rules!2135))))

(assert (=> d!875323 (= (noDuplicateTag!1904 thiss!18206 rules!2135 Nil!36046) e!1994227)))

(declare-fun b!3198911 () Bool)

(declare-fun e!1994228 () Bool)

(assert (=> b!3198911 (= e!1994227 e!1994228)))

(declare-fun res!1301536 () Bool)

(assert (=> b!3198911 (=> (not res!1301536) (not e!1994228))))

(declare-fun contains!6408 (List!36170 String!40444) Bool)

(assert (=> b!3198911 (= res!1301536 (not (contains!6408 Nil!36046 (tag!5712 (h!41465 rules!2135)))))))

(declare-fun b!3198912 () Bool)

(assert (=> b!3198912 (= e!1994228 (noDuplicateTag!1904 thiss!18206 (t!236996 rules!2135) (Cons!36046 (tag!5712 (h!41465 rules!2135)) Nil!36046)))))

(assert (= (and d!875323 (not res!1301535)) b!3198911))

(assert (= (and b!3198911 res!1301536) b!3198912))

(declare-fun m!3460523 () Bool)

(assert (=> b!3198911 m!3460523))

(declare-fun m!3460525 () Bool)

(assert (=> b!3198912 m!3460525))

(assert (=> b!3197480 d!875323))

(assert (=> d!874709 d!874845))

(declare-fun b!3198946 () Bool)

(declare-fun e!1994256 () Bool)

(declare-fun call!231678 () Bool)

(assert (=> b!3198946 (= e!1994256 call!231678)))

(declare-fun b!3198947 () Bool)

(declare-fun e!1994252 () Bool)

(declare-fun e!1994257 () Bool)

(assert (=> b!3198947 (= e!1994252 e!1994257)))

(declare-fun res!1301556 () Bool)

(assert (=> b!3198947 (= res!1301556 (not (nullable!3392 (reg!10280 (regex!5192 lt!1077705)))))))

(assert (=> b!3198947 (=> (not res!1301556) (not e!1994257))))

(declare-fun b!3198948 () Bool)

(declare-fun e!1994254 () Bool)

(assert (=> b!3198948 (= e!1994254 call!231678)))

(declare-fun bm!231673 () Bool)

(declare-fun c!537114 () Bool)

(declare-fun call!231679 () Bool)

(declare-fun c!537115 () Bool)

(assert (=> bm!231673 (= call!231679 (validRegex!4544 (ite c!537115 (reg!10280 (regex!5192 lt!1077705)) (ite c!537114 (regTwo!20415 (regex!5192 lt!1077705)) (regTwo!20414 (regex!5192 lt!1077705))))))))

(declare-fun b!3198950 () Bool)

(declare-fun res!1301554 () Bool)

(assert (=> b!3198950 (=> (not res!1301554) (not e!1994254))))

(declare-fun call!231680 () Bool)

(assert (=> b!3198950 (= res!1301554 call!231680)))

(declare-fun e!1994258 () Bool)

(assert (=> b!3198950 (= e!1994258 e!1994254)))

(declare-fun b!3198951 () Bool)

(declare-fun res!1301557 () Bool)

(declare-fun e!1994255 () Bool)

(assert (=> b!3198951 (=> res!1301557 e!1994255)))

(assert (=> b!3198951 (= res!1301557 (not ((_ is Concat!15373) (regex!5192 lt!1077705))))))

(assert (=> b!3198951 (= e!1994258 e!1994255)))

(declare-fun b!3198952 () Bool)

(assert (=> b!3198952 (= e!1994257 call!231679)))

(declare-fun bm!231674 () Bool)

(assert (=> bm!231674 (= call!231678 call!231679)))

(declare-fun b!3198953 () Bool)

(assert (=> b!3198953 (= e!1994255 e!1994256)))

(declare-fun res!1301558 () Bool)

(assert (=> b!3198953 (=> (not res!1301558) (not e!1994256))))

(assert (=> b!3198953 (= res!1301558 call!231680)))

(declare-fun b!3198949 () Bool)

(assert (=> b!3198949 (= e!1994252 e!1994258)))

(assert (=> b!3198949 (= c!537114 ((_ is Union!9951) (regex!5192 lt!1077705)))))

(declare-fun d!875343 () Bool)

(declare-fun res!1301555 () Bool)

(declare-fun e!1994253 () Bool)

(assert (=> d!875343 (=> res!1301555 e!1994253)))

(assert (=> d!875343 (= res!1301555 ((_ is ElementMatch!9951) (regex!5192 lt!1077705)))))

(assert (=> d!875343 (= (validRegex!4544 (regex!5192 lt!1077705)) e!1994253)))

(declare-fun bm!231675 () Bool)

(assert (=> bm!231675 (= call!231680 (validRegex!4544 (ite c!537114 (regOne!20415 (regex!5192 lt!1077705)) (regOne!20414 (regex!5192 lt!1077705)))))))

(declare-fun b!3198954 () Bool)

(assert (=> b!3198954 (= e!1994253 e!1994252)))

(assert (=> b!3198954 (= c!537115 ((_ is Star!9951) (regex!5192 lt!1077705)))))

(assert (= (and d!875343 (not res!1301555)) b!3198954))

(assert (= (and b!3198954 c!537115) b!3198947))

(assert (= (and b!3198954 (not c!537115)) b!3198949))

(assert (= (and b!3198947 res!1301556) b!3198952))

(assert (= (and b!3198949 c!537114) b!3198950))

(assert (= (and b!3198949 (not c!537114)) b!3198951))

(assert (= (and b!3198950 res!1301554) b!3198948))

(assert (= (and b!3198951 (not res!1301557)) b!3198953))

(assert (= (and b!3198953 res!1301558) b!3198946))

(assert (= (or b!3198948 b!3198946) bm!231674))

(assert (= (or b!3198950 b!3198953) bm!231675))

(assert (= (or b!3198952 bm!231674) bm!231673))

(declare-fun m!3460563 () Bool)

(assert (=> b!3198947 m!3460563))

(declare-fun m!3460565 () Bool)

(assert (=> bm!231673 m!3460565))

(declare-fun m!3460567 () Bool)

(assert (=> bm!231675 m!3460567))

(assert (=> d!874709 d!875343))

(declare-fun d!875361 () Bool)

(declare-fun lt!1078262 () Int)

(assert (=> d!875361 (>= lt!1078262 0)))

(declare-fun e!1994259 () Int)

(assert (=> d!875361 (= lt!1078262 e!1994259)))

(declare-fun c!537116 () Bool)

(assert (=> d!875361 (= c!537116 ((_ is Nil!36043) lt!1077709))))

(assert (=> d!875361 (= (size!27145 lt!1077709) lt!1078262)))

(declare-fun b!3198955 () Bool)

(assert (=> b!3198955 (= e!1994259 0)))

(declare-fun b!3198956 () Bool)

(assert (=> b!3198956 (= e!1994259 (+ 1 (size!27145 (t!236994 lt!1077709))))))

(assert (= (and d!875361 c!537116) b!3198955))

(assert (= (and d!875361 (not c!537116)) b!3198956))

(declare-fun m!3460569 () Bool)

(assert (=> b!3198956 m!3460569))

(assert (=> b!3197427 d!875361))

(assert (=> b!3197427 d!874683))

(declare-fun d!875363 () Bool)

(declare-fun lt!1078264 () Int)

(assert (=> d!875363 (>= lt!1078264 0)))

(declare-fun e!1994260 () Int)

(assert (=> d!875363 (= lt!1078264 e!1994260)))

(declare-fun c!537117 () Bool)

(assert (=> d!875363 (= c!537117 ((_ is Nil!36043) lt!1077685))))

(assert (=> d!875363 (= (size!27145 lt!1077685) lt!1078264)))

(declare-fun b!3198957 () Bool)

(assert (=> b!3198957 (= e!1994260 0)))

(declare-fun b!3198958 () Bool)

(assert (=> b!3198958 (= e!1994260 (+ 1 (size!27145 (t!236994 lt!1077685))))))

(assert (= (and d!875363 c!537117) b!3198957))

(assert (= (and d!875363 (not c!537117)) b!3198958))

(declare-fun m!3460571 () Bool)

(assert (=> b!3198958 m!3460571))

(assert (=> b!3197427 d!875363))

(declare-fun d!875365 () Bool)

(declare-fun nullableFct!961 (Regex!9951) Bool)

(assert (=> d!875365 (= (nullable!3392 (regex!5192 lt!1077705)) (nullableFct!961 (regex!5192 lt!1077705)))))

(declare-fun bs!540798 () Bool)

(assert (= bs!540798 d!875365))

(declare-fun m!3460581 () Bool)

(assert (=> bs!540798 m!3460581))

(assert (=> b!3197741 d!875365))

(assert (=> b!3197999 d!875243))

(declare-fun d!875371 () Bool)

(assert (=> d!875371 (= (list!12810 lt!1077909) (list!12814 (c!536750 lt!1077909)))))

(declare-fun bs!540799 () Bool)

(assert (= bs!540799 d!875371))

(declare-fun m!3460583 () Bool)

(assert (=> bs!540799 m!3460583))

(assert (=> d!874811 d!875371))

(declare-fun d!875373 () Bool)

(declare-fun e!1994270 () Bool)

(assert (=> d!875373 e!1994270))

(declare-fun res!1301565 () Bool)

(assert (=> d!875373 (=> (not res!1301565) (not e!1994270))))

(declare-fun lt!1078267 () BalanceConc!21134)

(assert (=> d!875373 (= res!1301565 (= (list!12810 lt!1078267) (Cons!36044 (h!41464 tokens!494) Nil!36044)))))

(declare-fun choose!18672 (Token!9750) BalanceConc!21134)

(assert (=> d!875373 (= lt!1078267 (choose!18672 (h!41464 tokens!494)))))

(assert (=> d!875373 (= (singleton!987 (h!41464 tokens!494)) lt!1078267)))

(declare-fun b!3198973 () Bool)

(assert (=> b!3198973 (= e!1994270 (isBalanced!3204 (c!536750 lt!1078267)))))

(assert (= (and d!875373 res!1301565) b!3198973))

(declare-fun m!3460585 () Bool)

(assert (=> d!875373 m!3460585))

(declare-fun m!3460587 () Bool)

(assert (=> d!875373 m!3460587))

(declare-fun m!3460589 () Bool)

(assert (=> b!3198973 m!3460589))

(assert (=> d!874811 d!875373))

(assert (=> b!3197564 d!874865))

(declare-fun d!875375 () Bool)

(declare-fun lt!1078268 () Int)

(assert (=> d!875375 (>= lt!1078268 0)))

(declare-fun e!1994271 () Int)

(assert (=> d!875375 (= lt!1078268 e!1994271)))

(declare-fun c!537121 () Bool)

(assert (=> d!875375 (= c!537121 ((_ is Nil!36043) (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754)))))))

(assert (=> d!875375 (= (size!27145 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754)))) lt!1078268)))

(declare-fun b!3198974 () Bool)

(assert (=> b!3198974 (= e!1994271 0)))

(declare-fun b!3198975 () Bool)

(assert (=> b!3198975 (= e!1994271 (+ 1 (size!27145 (t!236994 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754)))))))))

(assert (= (and d!875375 c!537121) b!3198974))

(assert (= (and d!875375 (not c!537121)) b!3198975))

(declare-fun m!3460591 () Bool)

(assert (=> b!3198975 m!3460591))

(assert (=> b!3197564 d!875375))

(declare-fun d!875377 () Bool)

(assert (=> d!875377 (= (list!12809 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))) (list!12813 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))))))

(declare-fun bs!540800 () Bool)

(assert (= bs!540800 d!875377))

(declare-fun m!3460593 () Bool)

(assert (=> bs!540800 m!3460593))

(assert (=> b!3197471 d!875377))

(declare-fun d!875379 () Bool)

(assert (=> d!875379 (= (isEmpty!20133 (originalCharacters!5906 separatorToken!241)) ((_ is Nil!36043) (originalCharacters!5906 separatorToken!241)))))

(assert (=> d!874707 d!875379))

(declare-fun d!875381 () Bool)

(declare-fun charsToBigInt!0 (List!36166 Int) Int)

(assert (=> d!875381 (= (inv!15 (value!168432 (h!41464 tokens!494))) (= (charsToBigInt!0 (text!38403 (value!168432 (h!41464 tokens!494))) 0) (value!168427 (value!168432 (h!41464 tokens!494)))))))

(declare-fun bs!540803 () Bool)

(assert (= bs!540803 d!875381))

(declare-fun m!3460613 () Bool)

(assert (=> bs!540803 m!3460613))

(assert (=> b!3197942 d!875381))

(declare-fun b!3198988 () Bool)

(declare-fun res!1301571 () Bool)

(declare-fun e!1994286 () Bool)

(assert (=> b!3198988 (=> res!1301571 e!1994286)))

(assert (=> b!3198988 (= res!1301571 (not ((_ is ElementMatch!9951) (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696)))))))

(declare-fun e!1994285 () Bool)

(assert (=> b!3198988 (= e!1994285 e!1994286)))

(declare-fun b!3198989 () Bool)

(declare-fun e!1994284 () Bool)

(assert (=> b!3198989 (= e!1994286 e!1994284)))

(declare-fun res!1301572 () Bool)

(assert (=> b!3198989 (=> (not res!1301572) (not e!1994284))))

(declare-fun lt!1078271 () Bool)

(assert (=> b!3198989 (= res!1301572 (not lt!1078271))))

(declare-fun b!3198990 () Bool)

(declare-fun res!1301574 () Bool)

(declare-fun e!1994281 () Bool)

(assert (=> b!3198990 (=> res!1301574 e!1994281)))

(assert (=> b!3198990 (= res!1301574 (not (isEmpty!20133 (tail!5199 (tail!5199 lt!1077696)))))))

(declare-fun b!3198991 () Bool)

(declare-fun e!1994280 () Bool)

(assert (=> b!3198991 (= e!1994280 e!1994285)))

(declare-fun c!537126 () Bool)

(assert (=> b!3198991 (= c!537126 ((_ is EmptyLang!9951) (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696))))))

(declare-fun b!3198992 () Bool)

(declare-fun e!1994283 () Bool)

(assert (=> b!3198992 (= e!1994283 (matchR!4585 (derivativeStep!2945 (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696)) (head!7005 (tail!5199 lt!1077696))) (tail!5199 (tail!5199 lt!1077696))))))

(declare-fun d!875395 () Bool)

(assert (=> d!875395 e!1994280))

(declare-fun c!537127 () Bool)

(assert (=> d!875395 (= c!537127 ((_ is EmptyExpr!9951) (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696))))))

(assert (=> d!875395 (= lt!1078271 e!1994283)))

(declare-fun c!537128 () Bool)

(assert (=> d!875395 (= c!537128 (isEmpty!20133 (tail!5199 lt!1077696)))))

(assert (=> d!875395 (validRegex!4544 (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696)))))

(assert (=> d!875395 (= (matchR!4585 (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696)) (tail!5199 lt!1077696)) lt!1078271)))

(declare-fun b!3198993 () Bool)

(declare-fun e!1994282 () Bool)

(assert (=> b!3198993 (= e!1994282 (= (head!7005 (tail!5199 lt!1077696)) (c!536748 (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696)))))))

(declare-fun b!3198994 () Bool)

(assert (=> b!3198994 (= e!1994285 (not lt!1078271))))

(declare-fun b!3198995 () Bool)

(declare-fun res!1301573 () Bool)

(assert (=> b!3198995 (=> (not res!1301573) (not e!1994282))))

(declare-fun call!231684 () Bool)

(assert (=> b!3198995 (= res!1301573 (not call!231684))))

(declare-fun b!3198996 () Bool)

(assert (=> b!3198996 (= e!1994283 (nullable!3392 (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696))))))

(declare-fun b!3198997 () Bool)

(assert (=> b!3198997 (= e!1994280 (= lt!1078271 call!231684))))

(declare-fun bm!231679 () Bool)

(assert (=> bm!231679 (= call!231684 (isEmpty!20133 (tail!5199 lt!1077696)))))

(declare-fun b!3198998 () Bool)

(declare-fun res!1301570 () Bool)

(assert (=> b!3198998 (=> (not res!1301570) (not e!1994282))))

(assert (=> b!3198998 (= res!1301570 (isEmpty!20133 (tail!5199 (tail!5199 lt!1077696))))))

(declare-fun b!3198999 () Bool)

(declare-fun res!1301577 () Bool)

(assert (=> b!3198999 (=> res!1301577 e!1994286)))

(assert (=> b!3198999 (= res!1301577 e!1994282)))

(declare-fun res!1301576 () Bool)

(assert (=> b!3198999 (=> (not res!1301576) (not e!1994282))))

(assert (=> b!3198999 (= res!1301576 lt!1078271)))

(declare-fun b!3199000 () Bool)

(assert (=> b!3199000 (= e!1994284 e!1994281)))

(declare-fun res!1301575 () Bool)

(assert (=> b!3199000 (=> res!1301575 e!1994281)))

(assert (=> b!3199000 (= res!1301575 call!231684)))

(declare-fun b!3199001 () Bool)

(assert (=> b!3199001 (= e!1994281 (not (= (head!7005 (tail!5199 lt!1077696)) (c!536748 (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696))))))))

(assert (= (and d!875395 c!537128) b!3198996))

(assert (= (and d!875395 (not c!537128)) b!3198992))

(assert (= (and d!875395 c!537127) b!3198997))

(assert (= (and d!875395 (not c!537127)) b!3198991))

(assert (= (and b!3198991 c!537126) b!3198994))

(assert (= (and b!3198991 (not c!537126)) b!3198988))

(assert (= (and b!3198988 (not res!1301571)) b!3198999))

(assert (= (and b!3198999 res!1301576) b!3198995))

(assert (= (and b!3198995 res!1301573) b!3198998))

(assert (= (and b!3198998 res!1301570) b!3198993))

(assert (= (and b!3198999 (not res!1301577)) b!3198989))

(assert (= (and b!3198989 res!1301572) b!3199000))

(assert (= (and b!3199000 (not res!1301575)) b!3198990))

(assert (= (and b!3198990 (not res!1301574)) b!3199001))

(assert (= (or b!3198997 b!3198995 b!3199000) bm!231679))

(assert (=> b!3198996 m!3458795))

(declare-fun m!3460631 () Bool)

(assert (=> b!3198996 m!3460631))

(assert (=> b!3198990 m!3458791))

(declare-fun m!3460633 () Bool)

(assert (=> b!3198990 m!3460633))

(assert (=> b!3198990 m!3460633))

(declare-fun m!3460635 () Bool)

(assert (=> b!3198990 m!3460635))

(assert (=> b!3198993 m!3458791))

(declare-fun m!3460637 () Bool)

(assert (=> b!3198993 m!3460637))

(assert (=> b!3199001 m!3458791))

(assert (=> b!3199001 m!3460637))

(assert (=> b!3198992 m!3458791))

(assert (=> b!3198992 m!3460637))

(assert (=> b!3198992 m!3458795))

(assert (=> b!3198992 m!3460637))

(declare-fun m!3460639 () Bool)

(assert (=> b!3198992 m!3460639))

(assert (=> b!3198992 m!3458791))

(assert (=> b!3198992 m!3460633))

(assert (=> b!3198992 m!3460639))

(assert (=> b!3198992 m!3460633))

(declare-fun m!3460641 () Bool)

(assert (=> b!3198992 m!3460641))

(assert (=> b!3198998 m!3458791))

(assert (=> b!3198998 m!3460633))

(assert (=> b!3198998 m!3460633))

(assert (=> b!3198998 m!3460635))

(assert (=> d!875395 m!3458791))

(assert (=> d!875395 m!3458793))

(assert (=> d!875395 m!3458795))

(declare-fun m!3460643 () Bool)

(assert (=> d!875395 m!3460643))

(assert (=> bm!231679 m!3458791))

(assert (=> bm!231679 m!3458793))

(assert (=> b!3197737 d!875395))

(declare-fun call!231697 () Regex!9951)

(declare-fun e!1994307 () Regex!9951)

(declare-fun b!3199038 () Bool)

(declare-fun call!231694 () Regex!9951)

(assert (=> b!3199038 (= e!1994307 (Union!9951 (Concat!15373 call!231697 (regTwo!20414 (regex!5192 lt!1077705))) call!231694))))

(declare-fun b!3199039 () Bool)

(declare-fun e!1994305 () Regex!9951)

(declare-fun call!231695 () Regex!9951)

(assert (=> b!3199039 (= e!1994305 (Concat!15373 call!231695 (regex!5192 lt!1077705)))))

(declare-fun b!3199040 () Bool)

(declare-fun e!1994306 () Regex!9951)

(declare-fun call!231696 () Regex!9951)

(assert (=> b!3199040 (= e!1994306 (Union!9951 call!231694 call!231696))))

(declare-fun bm!231689 () Bool)

(declare-fun c!537144 () Bool)

(assert (=> bm!231689 (= call!231694 (derivativeStep!2945 (ite c!537144 (regOne!20415 (regex!5192 lt!1077705)) (regTwo!20414 (regex!5192 lt!1077705))) (head!7005 lt!1077696)))))

(declare-fun bm!231690 () Bool)

(declare-fun c!537146 () Bool)

(assert (=> bm!231690 (= call!231696 (derivativeStep!2945 (ite c!537144 (regTwo!20415 (regex!5192 lt!1077705)) (ite c!537146 (reg!10280 (regex!5192 lt!1077705)) (regOne!20414 (regex!5192 lt!1077705)))) (head!7005 lt!1077696)))))

(declare-fun b!3199041 () Bool)

(declare-fun e!1994309 () Regex!9951)

(assert (=> b!3199041 (= e!1994309 (ite (= (head!7005 lt!1077696) (c!536748 (regex!5192 lt!1077705))) EmptyExpr!9951 EmptyLang!9951))))

(declare-fun d!875407 () Bool)

(declare-fun lt!1078276 () Regex!9951)

(assert (=> d!875407 (validRegex!4544 lt!1078276)))

(declare-fun e!1994308 () Regex!9951)

(assert (=> d!875407 (= lt!1078276 e!1994308)))

(declare-fun c!537147 () Bool)

(assert (=> d!875407 (= c!537147 (or ((_ is EmptyExpr!9951) (regex!5192 lt!1077705)) ((_ is EmptyLang!9951) (regex!5192 lt!1077705))))))

(assert (=> d!875407 (validRegex!4544 (regex!5192 lt!1077705))))

(assert (=> d!875407 (= (derivativeStep!2945 (regex!5192 lt!1077705) (head!7005 lt!1077696)) lt!1078276)))

(declare-fun b!3199042 () Bool)

(declare-fun c!537143 () Bool)

(assert (=> b!3199042 (= c!537143 (nullable!3392 (regOne!20414 (regex!5192 lt!1077705))))))

(assert (=> b!3199042 (= e!1994305 e!1994307)))

(declare-fun b!3199043 () Bool)

(assert (=> b!3199043 (= e!1994308 e!1994309)))

(declare-fun c!537145 () Bool)

(assert (=> b!3199043 (= c!537145 ((_ is ElementMatch!9951) (regex!5192 lt!1077705)))))

(declare-fun b!3199044 () Bool)

(assert (=> b!3199044 (= e!1994308 EmptyLang!9951)))

(declare-fun b!3199045 () Bool)

(assert (=> b!3199045 (= e!1994306 e!1994305)))

(assert (=> b!3199045 (= c!537146 ((_ is Star!9951) (regex!5192 lt!1077705)))))

(declare-fun bm!231691 () Bool)

(assert (=> bm!231691 (= call!231695 call!231696)))

(declare-fun bm!231692 () Bool)

(assert (=> bm!231692 (= call!231697 call!231695)))

(declare-fun b!3199046 () Bool)

(assert (=> b!3199046 (= e!1994307 (Union!9951 (Concat!15373 call!231697 (regTwo!20414 (regex!5192 lt!1077705))) EmptyLang!9951))))

(declare-fun b!3199047 () Bool)

(assert (=> b!3199047 (= c!537144 ((_ is Union!9951) (regex!5192 lt!1077705)))))

(assert (=> b!3199047 (= e!1994309 e!1994306)))

(assert (= (and d!875407 c!537147) b!3199044))

(assert (= (and d!875407 (not c!537147)) b!3199043))

(assert (= (and b!3199043 c!537145) b!3199041))

(assert (= (and b!3199043 (not c!537145)) b!3199047))

(assert (= (and b!3199047 c!537144) b!3199040))

(assert (= (and b!3199047 (not c!537144)) b!3199045))

(assert (= (and b!3199045 c!537146) b!3199039))

(assert (= (and b!3199045 (not c!537146)) b!3199042))

(assert (= (and b!3199042 c!537143) b!3199038))

(assert (= (and b!3199042 (not c!537143)) b!3199046))

(assert (= (or b!3199038 b!3199046) bm!231692))

(assert (= (or b!3199039 bm!231692) bm!231691))

(assert (= (or b!3199040 b!3199038) bm!231689))

(assert (= (or b!3199040 bm!231691) bm!231690))

(assert (=> bm!231689 m!3458321))

(declare-fun m!3460655 () Bool)

(assert (=> bm!231689 m!3460655))

(assert (=> bm!231690 m!3458321))

(declare-fun m!3460657 () Bool)

(assert (=> bm!231690 m!3460657))

(declare-fun m!3460659 () Bool)

(assert (=> d!875407 m!3460659))

(assert (=> d!875407 m!3458801))

(declare-fun m!3460661 () Bool)

(assert (=> b!3199042 m!3460661))

(assert (=> b!3197737 d!875407))

(assert (=> b!3197737 d!874667))

(assert (=> b!3197737 d!874901))

(declare-fun d!875411 () Bool)

(declare-fun e!1994312 () Bool)

(assert (=> d!875411 e!1994312))

(declare-fun res!1301588 () Bool)

(assert (=> d!875411 (=> (not res!1301588) (not e!1994312))))

(declare-fun lt!1078279 () BalanceConc!21134)

(assert (=> d!875411 (= res!1301588 (= (list!12810 lt!1078279) tokens!494))))

(declare-fun fromList!601 (List!36168) Conc!10760)

(assert (=> d!875411 (= lt!1078279 (BalanceConc!21135 (fromList!601 tokens!494)))))

(assert (=> d!875411 (= (fromListB!1530 tokens!494) lt!1078279)))

(declare-fun b!3199050 () Bool)

(assert (=> b!3199050 (= e!1994312 (isBalanced!3204 (fromList!601 tokens!494)))))

(assert (= (and d!875411 res!1301588) b!3199050))

(declare-fun m!3460663 () Bool)

(assert (=> d!875411 m!3460663))

(declare-fun m!3460665 () Bool)

(assert (=> d!875411 m!3460665))

(assert (=> b!3199050 m!3460665))

(assert (=> b!3199050 m!3460665))

(declare-fun m!3460667 () Bool)

(assert (=> b!3199050 m!3460667))

(assert (=> d!874735 d!875411))

(declare-fun d!875413 () Bool)

(assert (=> d!875413 (= (isEmpty!20138 lt!1077692) (not ((_ is Some!7076) lt!1077692)))))

(assert (=> d!874685 d!875413))

(declare-fun bs!540807 () Bool)

(declare-fun d!875415 () Bool)

(assert (= bs!540807 (and d!875415 d!875161)))

(declare-fun lambda!117090 () Int)

(assert (=> bs!540807 (= (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (= lambda!117090 lambda!117081))))

(assert (=> d!875415 true))

(assert (=> d!875415 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (h!41465 rules!2135)))) (dynLambda!14527 order!18341 lambda!117090))))

(assert (=> d!875415 (= (equivClasses!2047 (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (h!41465 rules!2135)))) (Forall2!857 lambda!117090))))

(declare-fun bs!540808 () Bool)

(assert (= bs!540808 d!875415))

(declare-fun m!3460669 () Bool)

(assert (=> bs!540808 m!3460669))

(assert (=> b!3197481 d!875415))

(assert (=> b!3197560 d!874865))

(declare-fun d!875417 () Bool)

(declare-fun lt!1078280 () Int)

(assert (=> d!875417 (>= lt!1078280 0)))

(declare-fun e!1994313 () Int)

(assert (=> d!875417 (= lt!1078280 e!1994313)))

(declare-fun c!537149 () Bool)

(assert (=> d!875417 (= c!537149 ((_ is Nil!36043) lt!1077855))))

(assert (=> d!875417 (= (size!27145 lt!1077855) lt!1078280)))

(declare-fun b!3199051 () Bool)

(assert (=> b!3199051 (= e!1994313 0)))

(declare-fun b!3199052 () Bool)

(assert (=> b!3199052 (= e!1994313 (+ 1 (size!27145 (t!236994 lt!1077855))))))

(assert (= (and d!875417 c!537149) b!3199051))

(assert (= (and d!875417 (not c!537149)) b!3199052))

(declare-fun m!3460671 () Bool)

(assert (=> b!3199052 m!3460671))

(assert (=> b!3197917 d!875417))

(assert (=> b!3197917 d!875111))

(declare-fun d!875419 () Bool)

(declare-fun lt!1078281 () Int)

(assert (=> d!875419 (>= lt!1078281 0)))

(declare-fun e!1994314 () Int)

(assert (=> d!875419 (= lt!1078281 e!1994314)))

(declare-fun c!537150 () Bool)

(assert (=> d!875419 (= c!537150 ((_ is Nil!36043) lt!1077693))))

(assert (=> d!875419 (= (size!27145 lt!1077693) lt!1078281)))

(declare-fun b!3199053 () Bool)

(assert (=> b!3199053 (= e!1994314 0)))

(declare-fun b!3199054 () Bool)

(assert (=> b!3199054 (= e!1994314 (+ 1 (size!27145 (t!236994 lt!1077693))))))

(assert (= (and d!875419 c!537150) b!3199053))

(assert (= (and d!875419 (not c!537150)) b!3199054))

(declare-fun m!3460673 () Bool)

(assert (=> b!3199054 m!3460673))

(assert (=> b!3197917 d!875419))

(declare-fun b!3199055 () Bool)

(declare-fun e!1994318 () List!36167)

(declare-fun call!231700 () List!36167)

(assert (=> b!3199055 (= e!1994318 call!231700)))

(declare-fun d!875421 () Bool)

(declare-fun c!537152 () Bool)

(assert (=> d!875421 (= c!537152 (or ((_ is EmptyExpr!9951) (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))) ((_ is EmptyLang!9951) (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241))))))))))

(declare-fun e!1994316 () List!36167)

(assert (=> d!875421 (= (usedCharacters!508 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))) e!1994316)))

(declare-fun c!537154 () Bool)

(declare-fun b!3199056 () Bool)

(assert (=> b!3199056 (= c!537154 ((_ is Star!9951) (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))))))

(declare-fun e!1994315 () List!36167)

(declare-fun e!1994317 () List!36167)

(assert (=> b!3199056 (= e!1994315 e!1994317)))

(declare-fun call!231701 () List!36167)

(declare-fun bm!231693 () Bool)

(declare-fun c!537151 () Bool)

(assert (=> bm!231693 (= call!231701 (usedCharacters!508 (ite c!537151 (regTwo!20415 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))) (regOne!20414 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))))))))

(declare-fun b!3199057 () Bool)

(assert (=> b!3199057 (= e!1994316 Nil!36043)))

(declare-fun call!231698 () List!36167)

(declare-fun bm!231694 () Bool)

(assert (=> bm!231694 (= call!231700 (++!8630 (ite c!537151 call!231698 call!231701) (ite c!537151 call!231701 call!231698)))))

(declare-fun call!231699 () List!36167)

(declare-fun bm!231695 () Bool)

(assert (=> bm!231695 (= call!231699 (usedCharacters!508 (ite c!537154 (reg!10280 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))) (ite c!537151 (regOne!20415 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))) (regTwo!20414 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241))))))))))))

(declare-fun b!3199058 () Bool)

(assert (=> b!3199058 (= e!1994315 (Cons!36043 (c!536748 (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))) Nil!36043))))

(declare-fun bm!231696 () Bool)

(assert (=> bm!231696 (= call!231698 call!231699)))

(declare-fun b!3199059 () Bool)

(assert (=> b!3199059 (= e!1994317 call!231699)))

(declare-fun b!3199060 () Bool)

(assert (=> b!3199060 (= e!1994316 e!1994315)))

(declare-fun c!537153 () Bool)

(assert (=> b!3199060 (= c!537153 ((_ is ElementMatch!9951) (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))))))

(declare-fun b!3199061 () Bool)

(assert (=> b!3199061 (= e!1994318 call!231700)))

(declare-fun b!3199062 () Bool)

(assert (=> b!3199062 (= e!1994317 e!1994318)))

(assert (=> b!3199062 (= c!537151 ((_ is Union!9951) (ite c!536788 (reg!10280 (regex!5192 (rule!7626 separatorToken!241))) (ite c!536785 (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241)))))))))

(assert (= (and d!875421 c!537152) b!3199057))

(assert (= (and d!875421 (not c!537152)) b!3199060))

(assert (= (and b!3199060 c!537153) b!3199058))

(assert (= (and b!3199060 (not c!537153)) b!3199056))

(assert (= (and b!3199056 c!537154) b!3199059))

(assert (= (and b!3199056 (not c!537154)) b!3199062))

(assert (= (and b!3199062 c!537151) b!3199061))

(assert (= (and b!3199062 (not c!537151)) b!3199055))

(assert (= (or b!3199061 b!3199055) bm!231693))

(assert (= (or b!3199061 b!3199055) bm!231696))

(assert (= (or b!3199061 b!3199055) bm!231694))

(assert (= (or b!3199059 bm!231696) bm!231695))

(declare-fun m!3460675 () Bool)

(assert (=> bm!231693 m!3460675))

(declare-fun m!3460677 () Bool)

(assert (=> bm!231694 m!3460677))

(declare-fun m!3460679 () Bool)

(assert (=> bm!231695 m!3460679))

(assert (=> bm!231572 d!875421))

(declare-fun d!875423 () Bool)

(declare-fun lt!1078282 () Int)

(assert (=> d!875423 (>= lt!1078282 0)))

(declare-fun e!1994319 () Int)

(assert (=> d!875423 (= lt!1078282 e!1994319)))

(declare-fun c!537155 () Bool)

(assert (=> d!875423 (= c!537155 ((_ is Nil!36043) (t!236994 lt!1077706)))))

(assert (=> d!875423 (= (size!27145 (t!236994 lt!1077706)) lt!1078282)))

(declare-fun b!3199063 () Bool)

(assert (=> b!3199063 (= e!1994319 0)))

(declare-fun b!3199064 () Bool)

(assert (=> b!3199064 (= e!1994319 (+ 1 (size!27145 (t!236994 (t!236994 lt!1077706)))))))

(assert (= (and d!875423 c!537155) b!3199063))

(assert (= (and d!875423 (not c!537155)) b!3199064))

(declare-fun m!3460681 () Bool)

(assert (=> b!3199064 m!3460681))

(assert (=> b!3197671 d!875423))

(declare-fun d!875425 () Bool)

(assert (=> d!875425 (= (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))) (v!35596 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))))))

(assert (=> b!3197679 d!875425))

(assert (=> b!3197679 d!874663))

(declare-fun d!875427 () Bool)

(assert (=> d!875427 (= (nullable!3392 (regex!5192 lt!1077697)) (nullableFct!961 (regex!5192 lt!1077697)))))

(declare-fun bs!540809 () Bool)

(assert (= bs!540809 d!875427))

(declare-fun m!3460683 () Bool)

(assert (=> bs!540809 m!3460683))

(assert (=> b!3197867 d!875427))

(declare-fun d!875429 () Bool)

(declare-fun lt!1078283 () Token!9750)

(assert (=> d!875429 (= lt!1078283 (apply!8125 (list!12810 (_1!20839 lt!1077862)) 0))))

(assert (=> d!875429 (= lt!1078283 (apply!8127 (c!536750 (_1!20839 lt!1077862)) 0))))

(declare-fun e!1994320 () Bool)

(assert (=> d!875429 e!1994320))

(declare-fun res!1301589 () Bool)

(assert (=> d!875429 (=> (not res!1301589) (not e!1994320))))

(assert (=> d!875429 (= res!1301589 (<= 0 0))))

(assert (=> d!875429 (= (apply!8123 (_1!20839 lt!1077862) 0) lt!1078283)))

(declare-fun b!3199065 () Bool)

(assert (=> b!3199065 (= e!1994320 (< 0 (size!27146 (_1!20839 lt!1077862))))))

(assert (= (and d!875429 res!1301589) b!3199065))

(declare-fun m!3460685 () Bool)

(assert (=> d!875429 m!3460685))

(assert (=> d!875429 m!3460685))

(declare-fun m!3460687 () Bool)

(assert (=> d!875429 m!3460687))

(declare-fun m!3460689 () Bool)

(assert (=> d!875429 m!3460689))

(assert (=> b!3199065 m!3459069))

(assert (=> b!3197956 d!875429))

(assert (=> b!3197672 d!874915))

(assert (=> b!3197672 d!874917))

(declare-fun b!3199066 () Bool)

(declare-fun lt!1078286 () Unit!50442)

(declare-fun lt!1078284 () Unit!50442)

(assert (=> b!3199066 (= lt!1078286 lt!1078284)))

(assert (=> b!3199066 (rulesInvariant!4178 thiss!18206 (t!236996 (t!236996 rules!2135)))))

(assert (=> b!3199066 (= lt!1078284 (lemmaInvariantOnRulesThenOnTail!343 thiss!18206 (h!41465 (t!236996 rules!2135)) (t!236996 (t!236996 rules!2135))))))

(declare-fun e!1994321 () Option!7077)

(assert (=> b!3199066 (= e!1994321 (getRuleFromTag!897 thiss!18206 (t!236996 (t!236996 rules!2135)) (tag!5712 (rule!7626 separatorToken!241))))))

(declare-fun b!3199067 () Bool)

(declare-fun e!1994322 () Bool)

(declare-fun e!1994323 () Bool)

(assert (=> b!3199067 (= e!1994322 e!1994323)))

(declare-fun res!1301591 () Bool)

(assert (=> b!3199067 (=> (not res!1301591) (not e!1994323))))

(declare-fun lt!1078285 () Option!7077)

(assert (=> b!3199067 (= res!1301591 (contains!6405 (t!236996 rules!2135) (get!11463 lt!1078285)))))

(declare-fun b!3199068 () Bool)

(declare-fun e!1994324 () Option!7077)

(assert (=> b!3199068 (= e!1994324 (Some!7076 (h!41465 (t!236996 rules!2135))))))

(declare-fun b!3199069 () Bool)

(assert (=> b!3199069 (= e!1994324 e!1994321)))

(declare-fun c!537157 () Bool)

(assert (=> b!3199069 (= c!537157 (and ((_ is Cons!36045) (t!236996 rules!2135)) (not (= (tag!5712 (h!41465 (t!236996 rules!2135))) (tag!5712 (rule!7626 separatorToken!241))))))))

(declare-fun d!875431 () Bool)

(assert (=> d!875431 e!1994322))

(declare-fun res!1301590 () Bool)

(assert (=> d!875431 (=> res!1301590 e!1994322)))

(assert (=> d!875431 (= res!1301590 (isEmpty!20138 lt!1078285))))

(assert (=> d!875431 (= lt!1078285 e!1994324)))

(declare-fun c!537156 () Bool)

(assert (=> d!875431 (= c!537156 (and ((_ is Cons!36045) (t!236996 rules!2135)) (= (tag!5712 (h!41465 (t!236996 rules!2135))) (tag!5712 (rule!7626 separatorToken!241)))))))

(assert (=> d!875431 (rulesInvariant!4178 thiss!18206 (t!236996 rules!2135))))

(assert (=> d!875431 (= (getRuleFromTag!897 thiss!18206 (t!236996 rules!2135) (tag!5712 (rule!7626 separatorToken!241))) lt!1078285)))

(declare-fun b!3199070 () Bool)

(assert (=> b!3199070 (= e!1994321 None!7076)))

(declare-fun b!3199071 () Bool)

(assert (=> b!3199071 (= e!1994323 (= (tag!5712 (get!11463 lt!1078285)) (tag!5712 (rule!7626 separatorToken!241))))))

(assert (= (and d!875431 c!537156) b!3199068))

(assert (= (and d!875431 (not c!537156)) b!3199069))

(assert (= (and b!3199069 c!537157) b!3199066))

(assert (= (and b!3199069 (not c!537157)) b!3199070))

(assert (= (and d!875431 (not res!1301590)) b!3199067))

(assert (= (and b!3199067 res!1301591) b!3199071))

(assert (=> b!3199066 m!3459503))

(assert (=> b!3199066 m!3459505))

(declare-fun m!3460691 () Bool)

(assert (=> b!3199066 m!3460691))

(declare-fun m!3460693 () Bool)

(assert (=> b!3199067 m!3460693))

(assert (=> b!3199067 m!3460693))

(declare-fun m!3460695 () Bool)

(assert (=> b!3199067 m!3460695))

(declare-fun m!3460697 () Bool)

(assert (=> d!875431 m!3460697))

(assert (=> d!875431 m!3458651))

(assert (=> b!3199071 m!3460693))

(assert (=> b!3197672 d!875431))

(declare-fun b!3199082 () Bool)

(declare-fun e!1994330 () List!36167)

(declare-fun list!12817 (IArray!21523) List!36167)

(assert (=> b!3199082 (= e!1994330 (list!12817 (xs!13877 (c!536749 (charsOf!3208 separatorToken!241)))))))

(declare-fun d!875433 () Bool)

(declare-fun c!537162 () Bool)

(assert (=> d!875433 (= c!537162 ((_ is Empty!10759) (c!536749 (charsOf!3208 separatorToken!241))))))

(declare-fun e!1994329 () List!36167)

(assert (=> d!875433 (= (list!12813 (c!536749 (charsOf!3208 separatorToken!241))) e!1994329)))

(declare-fun b!3199080 () Bool)

(assert (=> b!3199080 (= e!1994329 Nil!36043)))

(declare-fun b!3199083 () Bool)

(assert (=> b!3199083 (= e!1994330 (++!8630 (list!12813 (left!28009 (c!536749 (charsOf!3208 separatorToken!241)))) (list!12813 (right!28339 (c!536749 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3199081 () Bool)

(assert (=> b!3199081 (= e!1994329 e!1994330)))

(declare-fun c!537163 () Bool)

(assert (=> b!3199081 (= c!537163 ((_ is Leaf!16966) (c!536749 (charsOf!3208 separatorToken!241))))))

(assert (= (and d!875433 c!537162) b!3199080))

(assert (= (and d!875433 (not c!537162)) b!3199081))

(assert (= (and b!3199081 c!537163) b!3199082))

(assert (= (and b!3199081 (not c!537163)) b!3199083))

(declare-fun m!3460699 () Bool)

(assert (=> b!3199082 m!3460699))

(declare-fun m!3460701 () Bool)

(assert (=> b!3199083 m!3460701))

(declare-fun m!3460703 () Bool)

(assert (=> b!3199083 m!3460703))

(assert (=> b!3199083 m!3460701))

(assert (=> b!3199083 m!3460703))

(declare-fun m!3460705 () Bool)

(assert (=> b!3199083 m!3460705))

(assert (=> d!874769 d!875433))

(declare-fun d!875435 () Bool)

(declare-fun e!1994331 () Bool)

(assert (=> d!875435 e!1994331))

(declare-fun res!1301592 () Bool)

(assert (=> d!875435 (=> (not res!1301592) (not e!1994331))))

(declare-fun lt!1078287 () List!36167)

(assert (=> d!875435 (= res!1301592 (= (content!4869 lt!1078287) ((_ map or) (content!4869 (t!236994 lt!1077706)) (content!4869 lt!1077696))))))

(declare-fun e!1994332 () List!36167)

(assert (=> d!875435 (= lt!1078287 e!1994332)))

(declare-fun c!537164 () Bool)

(assert (=> d!875435 (= c!537164 ((_ is Nil!36043) (t!236994 lt!1077706)))))

(assert (=> d!875435 (= (++!8630 (t!236994 lt!1077706) lt!1077696) lt!1078287)))

(declare-fun b!3199086 () Bool)

(declare-fun res!1301593 () Bool)

(assert (=> b!3199086 (=> (not res!1301593) (not e!1994331))))

(assert (=> b!3199086 (= res!1301593 (= (size!27145 lt!1078287) (+ (size!27145 (t!236994 lt!1077706)) (size!27145 lt!1077696))))))

(declare-fun b!3199085 () Bool)

(assert (=> b!3199085 (= e!1994332 (Cons!36043 (h!41463 (t!236994 lt!1077706)) (++!8630 (t!236994 (t!236994 lt!1077706)) lt!1077696)))))

(declare-fun b!3199087 () Bool)

(assert (=> b!3199087 (= e!1994331 (or (not (= lt!1077696 Nil!36043)) (= lt!1078287 (t!236994 lt!1077706))))))

(declare-fun b!3199084 () Bool)

(assert (=> b!3199084 (= e!1994332 lt!1077696)))

(assert (= (and d!875435 c!537164) b!3199084))

(assert (= (and d!875435 (not c!537164)) b!3199085))

(assert (= (and d!875435 res!1301592) b!3199086))

(assert (= (and b!3199086 res!1301593) b!3199087))

(declare-fun m!3460707 () Bool)

(assert (=> d!875435 m!3460707))

(declare-fun m!3460709 () Bool)

(assert (=> d!875435 m!3460709))

(assert (=> d!875435 m!3458955))

(declare-fun m!3460711 () Bool)

(assert (=> b!3199086 m!3460711))

(assert (=> b!3199086 m!3458717))

(assert (=> b!3199086 m!3458961))

(declare-fun m!3460713 () Bool)

(assert (=> b!3199085 m!3460713))

(assert (=> b!3197948 d!875435))

(declare-fun d!875437 () Bool)

(assert (=> d!875437 (= (inv!15 (value!168432 separatorToken!241)) (= (charsToBigInt!0 (text!38403 (value!168432 separatorToken!241)) 0) (value!168427 (value!168432 separatorToken!241))))))

(declare-fun bs!540810 () Bool)

(assert (= bs!540810 d!875437))

(declare-fun m!3460715 () Bool)

(assert (=> bs!540810 m!3460715))

(assert (=> b!3197955 d!875437))

(declare-fun d!875439 () Bool)

(declare-fun charsToBigInt!1 (List!36166) Int)

(assert (=> d!875439 (= (inv!17 (value!168432 (h!41464 tokens!494))) (= (charsToBigInt!1 (text!38402 (value!168432 (h!41464 tokens!494)))) (value!168424 (value!168432 (h!41464 tokens!494)))))))

(declare-fun bs!540811 () Bool)

(assert (= bs!540811 d!875439))

(declare-fun m!3460717 () Bool)

(assert (=> bs!540811 m!3460717))

(assert (=> b!3197938 d!875439))

(declare-fun d!875441 () Bool)

(declare-fun lt!1078288 () Int)

(assert (=> d!875441 (>= lt!1078288 0)))

(declare-fun e!1994333 () Int)

(assert (=> d!875441 (= lt!1078288 e!1994333)))

(declare-fun c!537165 () Bool)

(assert (=> d!875441 (= c!537165 ((_ is Nil!36043) lt!1077860))))

(assert (=> d!875441 (= (size!27145 lt!1077860) lt!1078288)))

(declare-fun b!3199088 () Bool)

(assert (=> b!3199088 (= e!1994333 0)))

(declare-fun b!3199089 () Bool)

(assert (=> b!3199089 (= e!1994333 (+ 1 (size!27145 (t!236994 lt!1077860))))))

(assert (= (and d!875441 c!537165) b!3199088))

(assert (= (and d!875441 (not c!537165)) b!3199089))

(declare-fun m!3460719 () Bool)

(assert (=> b!3199089 m!3460719))

(assert (=> b!3197945 d!875441))

(declare-fun d!875443 () Bool)

(declare-fun lt!1078289 () Int)

(assert (=> d!875443 (>= lt!1078289 0)))

(declare-fun e!1994334 () Int)

(assert (=> d!875443 (= lt!1078289 e!1994334)))

(declare-fun c!537166 () Bool)

(assert (=> d!875443 (= c!537166 ((_ is Nil!36043) (++!8630 lt!1077706 lt!1077696)))))

(assert (=> d!875443 (= (size!27145 (++!8630 lt!1077706 lt!1077696)) lt!1078289)))

(declare-fun b!3199090 () Bool)

(assert (=> b!3199090 (= e!1994334 0)))

(declare-fun b!3199091 () Bool)

(assert (=> b!3199091 (= e!1994334 (+ 1 (size!27145 (t!236994 (++!8630 lt!1077706 lt!1077696)))))))

(assert (= (and d!875443 c!537166) b!3199090))

(assert (= (and d!875443 (not c!537166)) b!3199091))

(declare-fun m!3460721 () Bool)

(assert (=> b!3199091 m!3460721))

(assert (=> b!3197945 d!875443))

(assert (=> b!3197945 d!875419))

(declare-fun d!875445 () Bool)

(declare-fun lt!1078290 () BalanceConc!21132)

(assert (=> d!875445 (= (list!12809 lt!1078290) (originalCharacters!5906 (h!41464 (t!236995 (t!236995 tokens!494)))))))

(assert (=> d!875445 (= lt!1078290 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (value!168432 (h!41464 (t!236995 (t!236995 tokens!494))))))))

(assert (=> d!875445 (= (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494)))) lt!1078290)))

(declare-fun b_lambda!87419 () Bool)

(assert (=> (not b_lambda!87419) (not d!875445)))

(declare-fun t!237196 () Bool)

(declare-fun tb!156621 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494))))))) t!237196) tb!156621))

(declare-fun b!3199092 () Bool)

(declare-fun e!1994335 () Bool)

(declare-fun tp!1011057 () Bool)

(assert (=> b!3199092 (= e!1994335 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (value!168432 (h!41464 (t!236995 (t!236995 tokens!494))))))) tp!1011057))))

(declare-fun result!198902 () Bool)

(assert (=> tb!156621 (= result!198902 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (value!168432 (h!41464 (t!236995 (t!236995 tokens!494)))))) e!1994335))))

(assert (= tb!156621 b!3199092))

(declare-fun m!3460723 () Bool)

(assert (=> b!3199092 m!3460723))

(declare-fun m!3460725 () Bool)

(assert (=> tb!156621 m!3460725))

(assert (=> d!875445 t!237196))

(declare-fun b_and!212535 () Bool)

(assert (= b_and!212515 (and (=> t!237196 result!198902) b_and!212535)))

(declare-fun t!237198 () Bool)

(declare-fun tb!156623 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494))))))) t!237198) tb!156623))

(declare-fun result!198904 () Bool)

(assert (= result!198904 result!198902))

(assert (=> d!875445 t!237198))

(declare-fun b_and!212537 () Bool)

(assert (= b_and!212519 (and (=> t!237198 result!198904) b_and!212537)))

(declare-fun t!237200 () Bool)

(declare-fun tb!156625 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494))))))) t!237200) tb!156625))

(declare-fun result!198906 () Bool)

(assert (= result!198906 result!198902))

(assert (=> d!875445 t!237200))

(declare-fun b_and!212539 () Bool)

(assert (= b_and!212521 (and (=> t!237200 result!198906) b_and!212539)))

(declare-fun t!237202 () Bool)

(declare-fun tb!156627 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494))))))) t!237202) tb!156627))

(declare-fun result!198908 () Bool)

(assert (= result!198908 result!198902))

(assert (=> d!875445 t!237202))

(declare-fun b_and!212541 () Bool)

(assert (= b_and!212523 (and (=> t!237202 result!198908) b_and!212541)))

(declare-fun t!237204 () Bool)

(declare-fun tb!156629 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494))))))) t!237204) tb!156629))

(declare-fun result!198910 () Bool)

(assert (= result!198910 result!198902))

(assert (=> d!875445 t!237204))

(declare-fun b_and!212543 () Bool)

(assert (= b_and!212517 (and (=> t!237204 result!198910) b_and!212543)))

(declare-fun m!3460727 () Bool)

(assert (=> d!875445 m!3460727))

(declare-fun m!3460729 () Bool)

(assert (=> d!875445 m!3460729))

(assert (=> b!3197911 d!875445))

(declare-fun d!875447 () Bool)

(assert (=> d!875447 (= (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12813 (c!536749 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494)))))))))

(declare-fun bs!540812 () Bool)

(assert (= bs!540812 d!875447))

(declare-fun m!3460731 () Bool)

(assert (=> bs!540812 m!3460731))

(assert (=> b!3197911 d!875447))

(declare-fun d!875449 () Bool)

(declare-fun c!537167 () Bool)

(assert (=> d!875449 (= c!537167 ((_ is Cons!36044) (t!236995 (t!236995 (t!236995 tokens!494)))))))

(declare-fun e!1994336 () List!36167)

(assert (=> d!875449 (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241) e!1994336)))

(declare-fun b!3199093 () Bool)

(assert (=> b!3199093 (= e!1994336 (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 (t!236995 tokens!494)))))) (list!12809 (charsOf!3208 separatorToken!241))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 (t!236995 tokens!494)))) separatorToken!241)))))

(declare-fun b!3199094 () Bool)

(assert (=> b!3199094 (= e!1994336 Nil!36043)))

(assert (= (and d!875449 c!537167) b!3199093))

(assert (= (and d!875449 (not c!537167)) b!3199094))

(declare-fun m!3460733 () Bool)

(assert (=> b!3199093 m!3460733))

(assert (=> b!3199093 m!3458371))

(declare-fun m!3460735 () Bool)

(assert (=> b!3199093 m!3460735))

(declare-fun m!3460737 () Bool)

(assert (=> b!3199093 m!3460737))

(assert (=> b!3199093 m!3460735))

(assert (=> b!3199093 m!3460737))

(declare-fun m!3460739 () Bool)

(assert (=> b!3199093 m!3460739))

(declare-fun m!3460741 () Bool)

(assert (=> b!3199093 m!3460741))

(assert (=> b!3199093 m!3460733))

(assert (=> b!3199093 m!3458363))

(assert (=> b!3199093 m!3458363))

(assert (=> b!3199093 m!3458371))

(assert (=> b!3199093 m!3460741))

(assert (=> b!3197911 d!875449))

(declare-fun d!875451 () Bool)

(declare-fun e!1994337 () Bool)

(assert (=> d!875451 e!1994337))

(declare-fun res!1301594 () Bool)

(assert (=> d!875451 (=> (not res!1301594) (not e!1994337))))

(declare-fun lt!1078291 () List!36167)

(assert (=> d!875451 (= res!1301594 (= (content!4869 lt!1078291) ((_ map or) (content!4869 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494)))))) (content!4869 (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun e!1994338 () List!36167)

(assert (=> d!875451 (= lt!1078291 e!1994338)))

(declare-fun c!537168 () Bool)

(assert (=> d!875451 (= c!537168 ((_ is Nil!36043) (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494)))))))))

(assert (=> d!875451 (= (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241))) lt!1078291)))

(declare-fun b!3199097 () Bool)

(declare-fun res!1301595 () Bool)

(assert (=> b!3199097 (=> (not res!1301595) (not e!1994337))))

(assert (=> b!3199097 (= res!1301595 (= (size!27145 lt!1078291) (+ (size!27145 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494)))))) (size!27145 (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3199096 () Bool)

(assert (=> b!3199096 (= e!1994338 (Cons!36043 (h!41463 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494)))))) (++!8630 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494)))))) (list!12809 (charsOf!3208 separatorToken!241)))))))

(declare-fun b!3199098 () Bool)

(assert (=> b!3199098 (= e!1994337 (or (not (= (list!12809 (charsOf!3208 separatorToken!241)) Nil!36043)) (= lt!1078291 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))))))))

(declare-fun b!3199095 () Bool)

(assert (=> b!3199095 (= e!1994338 (list!12809 (charsOf!3208 separatorToken!241)))))

(assert (= (and d!875451 c!537168) b!3199095))

(assert (= (and d!875451 (not c!537168)) b!3199096))

(assert (= (and d!875451 res!1301594) b!3199097))

(assert (= (and b!3199097 res!1301595) b!3199098))

(declare-fun m!3460743 () Bool)

(assert (=> d!875451 m!3460743))

(assert (=> d!875451 m!3458981))

(declare-fun m!3460745 () Bool)

(assert (=> d!875451 m!3460745))

(assert (=> d!875451 m!3458371))

(assert (=> d!875451 m!3459401))

(declare-fun m!3460747 () Bool)

(assert (=> b!3199097 m!3460747))

(assert (=> b!3199097 m!3458981))

(declare-fun m!3460749 () Bool)

(assert (=> b!3199097 m!3460749))

(assert (=> b!3199097 m!3458371))

(assert (=> b!3199097 m!3459407))

(assert (=> b!3199096 m!3458371))

(declare-fun m!3460751 () Bool)

(assert (=> b!3199096 m!3460751))

(assert (=> b!3197911 d!875451))

(assert (=> b!3197911 d!874755))

(assert (=> b!3197911 d!874769))

(declare-fun d!875453 () Bool)

(declare-fun e!1994339 () Bool)

(assert (=> d!875453 e!1994339))

(declare-fun res!1301596 () Bool)

(assert (=> d!875453 (=> (not res!1301596) (not e!1994339))))

(declare-fun lt!1078292 () List!36167)

(assert (=> d!875453 (= res!1301596 (= (content!4869 lt!1078292) ((_ map or) (content!4869 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241)))) (content!4869 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241)))))))

(declare-fun e!1994340 () List!36167)

(assert (=> d!875453 (= lt!1078292 e!1994340)))

(declare-fun c!537169 () Bool)

(assert (=> d!875453 (= c!537169 ((_ is Nil!36043) (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241)))))))

(assert (=> d!875453 (= (++!8630 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241)) lt!1078292)))

(declare-fun b!3199101 () Bool)

(declare-fun res!1301597 () Bool)

(assert (=> b!3199101 (=> (not res!1301597) (not e!1994339))))

(assert (=> b!3199101 (= res!1301597 (= (size!27145 lt!1078292) (+ (size!27145 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241)))) (size!27145 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241)))))))

(declare-fun b!3199100 () Bool)

(assert (=> b!3199100 (= e!1994340 (Cons!36043 (h!41463 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241)))) (++!8630 (t!236994 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241)))) (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241))))))

(declare-fun b!3199102 () Bool)

(assert (=> b!3199102 (= e!1994339 (or (not (= (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241) Nil!36043)) (= lt!1078292 (++!8630 (list!12809 (charsOf!3208 (h!41464 (t!236995 (t!236995 tokens!494))))) (list!12809 (charsOf!3208 separatorToken!241))))))))

(declare-fun b!3199099 () Bool)

(assert (=> b!3199099 (= e!1994340 (printWithSeparatorTokenList!126 thiss!18206 (t!236995 (t!236995 (t!236995 tokens!494))) separatorToken!241))))

(assert (= (and d!875453 c!537169) b!3199099))

(assert (= (and d!875453 (not c!537169)) b!3199100))

(assert (= (and d!875453 res!1301596) b!3199101))

(assert (= (and b!3199101 res!1301597) b!3199102))

(declare-fun m!3460753 () Bool)

(assert (=> d!875453 m!3460753))

(assert (=> d!875453 m!3458983))

(declare-fun m!3460755 () Bool)

(assert (=> d!875453 m!3460755))

(assert (=> d!875453 m!3458985))

(declare-fun m!3460757 () Bool)

(assert (=> d!875453 m!3460757))

(declare-fun m!3460759 () Bool)

(assert (=> b!3199101 m!3460759))

(assert (=> b!3199101 m!3458983))

(declare-fun m!3460761 () Bool)

(assert (=> b!3199101 m!3460761))

(assert (=> b!3199101 m!3458985))

(declare-fun m!3460763 () Bool)

(assert (=> b!3199101 m!3460763))

(assert (=> b!3199100 m!3458985))

(declare-fun m!3460765 () Bool)

(assert (=> b!3199100 m!3460765))

(assert (=> b!3197911 d!875453))

(declare-fun d!875455 () Bool)

(assert (=> d!875455 (= (isDefined!5520 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))) (not (isEmpty!20138 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))))))

(declare-fun bs!540813 () Bool)

(assert (= bs!540813 d!875455))

(assert (=> bs!540813 m!3458339))

(declare-fun m!3460767 () Bool)

(assert (=> bs!540813 m!3460767))

(assert (=> d!874665 d!875455))

(assert (=> d!874665 d!874687))

(declare-fun d!875457 () Bool)

(declare-fun e!1994341 () Bool)

(assert (=> d!875457 e!1994341))

(declare-fun res!1301598 () Bool)

(assert (=> d!875457 (=> (not res!1301598) (not e!1994341))))

(assert (=> d!875457 (= res!1301598 (isDefined!5520 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241)))))))

(assert (=> d!875457 true))

(declare-fun _$52!1517 () Unit!50442)

(assert (=> d!875457 (= (choose!18662 thiss!18206 rules!2135 lt!1077696 separatorToken!241) _$52!1517)))

(declare-fun b!3199103 () Bool)

(declare-fun res!1301599 () Bool)

(assert (=> b!3199103 (=> (not res!1301599) (not e!1994341))))

(assert (=> b!3199103 (= res!1301599 (matchR!4585 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))) (list!12809 (charsOf!3208 separatorToken!241))))))

(declare-fun b!3199104 () Bool)

(assert (=> b!3199104 (= e!1994341 (= (rule!7626 separatorToken!241) (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 separatorToken!241))))))))

(assert (= (and d!875457 res!1301598) b!3199103))

(assert (= (and b!3199103 res!1301599) b!3199104))

(assert (=> d!875457 m!3458339))

(assert (=> d!875457 m!3458339))

(assert (=> d!875457 m!3458663))

(assert (=> b!3199103 m!3458339))

(assert (=> b!3199103 m!3458371))

(assert (=> b!3199103 m!3458669))

(assert (=> b!3199103 m!3458363))

(assert (=> b!3199103 m!3458339))

(assert (=> b!3199103 m!3458667))

(assert (=> b!3199103 m!3458363))

(assert (=> b!3199103 m!3458371))

(assert (=> b!3199104 m!3458339))

(assert (=> b!3199104 m!3458339))

(assert (=> b!3199104 m!3458667))

(assert (=> d!874665 d!875457))

(assert (=> d!874665 d!874617))

(declare-fun d!875459 () Bool)

(assert (=> d!875459 (= (inv!17 (value!168432 separatorToken!241)) (= (charsToBigInt!1 (text!38402 (value!168432 separatorToken!241))) (value!168424 (value!168432 separatorToken!241))))))

(declare-fun bs!540814 () Bool)

(assert (= bs!540814 d!875459))

(declare-fun m!3460769 () Bool)

(assert (=> bs!540814 m!3460769))

(assert (=> b!3197951 d!875459))

(declare-fun d!875461 () Bool)

(declare-fun c!537170 () Bool)

(assert (=> d!875461 (= c!537170 ((_ is Nil!36043) lt!1077709))))

(declare-fun e!1994342 () (InoxSet C!20088))

(assert (=> d!875461 (= (content!4869 lt!1077709) e!1994342)))

(declare-fun b!3199105 () Bool)

(assert (=> b!3199105 (= e!1994342 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199106 () Bool)

(assert (=> b!3199106 (= e!1994342 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077709) true) (content!4869 (t!236994 lt!1077709))))))

(assert (= (and d!875461 c!537170) b!3199105))

(assert (= (and d!875461 (not c!537170)) b!3199106))

(declare-fun m!3460771 () Bool)

(assert (=> b!3199106 m!3460771))

(declare-fun m!3460773 () Bool)

(assert (=> b!3199106 m!3460773))

(assert (=> d!874589 d!875461))

(declare-fun d!875463 () Bool)

(declare-fun c!537171 () Bool)

(assert (=> d!875463 (= c!537171 ((_ is Nil!36043) lt!1077706))))

(declare-fun e!1994343 () (InoxSet C!20088))

(assert (=> d!875463 (= (content!4869 lt!1077706) e!1994343)))

(declare-fun b!3199107 () Bool)

(assert (=> b!3199107 (= e!1994343 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199108 () Bool)

(assert (=> b!3199108 (= e!1994343 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077706) true) (content!4869 (t!236994 lt!1077706))))))

(assert (= (and d!875463 c!537171) b!3199107))

(assert (= (and d!875463 (not c!537171)) b!3199108))

(declare-fun m!3460775 () Bool)

(assert (=> b!3199108 m!3460775))

(assert (=> b!3199108 m!3460709))

(assert (=> d!874589 d!875463))

(declare-fun d!875465 () Bool)

(declare-fun c!537172 () Bool)

(assert (=> d!875465 (= c!537172 ((_ is Nil!36043) lt!1077685))))

(declare-fun e!1994344 () (InoxSet C!20088))

(assert (=> d!875465 (= (content!4869 lt!1077685) e!1994344)))

(declare-fun b!3199109 () Bool)

(assert (=> b!3199109 (= e!1994344 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199110 () Bool)

(assert (=> b!3199110 (= e!1994344 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077685) true) (content!4869 (t!236994 lt!1077685))))))

(assert (= (and d!875465 c!537172) b!3199109))

(assert (= (and d!875465 (not c!537172)) b!3199110))

(declare-fun m!3460777 () Bool)

(assert (=> b!3199110 m!3460777))

(declare-fun m!3460779 () Bool)

(assert (=> b!3199110 m!3460779))

(assert (=> d!874589 d!875465))

(declare-fun d!875467 () Bool)

(declare-fun e!1994345 () Bool)

(assert (=> d!875467 e!1994345))

(declare-fun res!1301600 () Bool)

(assert (=> d!875467 (=> (not res!1301600) (not e!1994345))))

(declare-fun lt!1078293 () List!36167)

(assert (=> d!875467 (= res!1301600 (= (content!4869 lt!1078293) ((_ map or) (content!4869 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))) (content!4869 lt!1077696))))))

(declare-fun e!1994346 () List!36167)

(assert (=> d!875467 (= lt!1078293 e!1994346)))

(declare-fun c!537173 () Bool)

(assert (=> d!875467 (= c!537173 ((_ is Nil!36043) (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))))))

(assert (=> d!875467 (= (++!8630 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) lt!1077696) lt!1078293)))

(declare-fun b!3199113 () Bool)

(declare-fun res!1301601 () Bool)

(assert (=> b!3199113 (=> (not res!1301601) (not e!1994345))))

(assert (=> b!3199113 (= res!1301601 (= (size!27145 lt!1078293) (+ (size!27145 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))) (size!27145 lt!1077696))))))

(declare-fun b!3199112 () Bool)

(assert (=> b!3199112 (= e!1994346 (Cons!36043 (h!41463 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))) (++!8630 (t!236994 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))) lt!1077696)))))

(declare-fun b!3199114 () Bool)

(assert (=> b!3199114 (= e!1994345 (or (not (= lt!1077696 Nil!36043)) (= lt!1078293 (t!236994 (list!12809 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))))

(declare-fun b!3199111 () Bool)

(assert (=> b!3199111 (= e!1994346 lt!1077696)))

(assert (= (and d!875467 c!537173) b!3199111))

(assert (= (and d!875467 (not c!537173)) b!3199112))

(assert (= (and d!875467 res!1301600) b!3199113))

(assert (= (and b!3199113 res!1301601) b!3199114))

(declare-fun m!3460781 () Bool)

(assert (=> d!875467 m!3460781))

(assert (=> d!875467 m!3459707))

(assert (=> d!875467 m!3458955))

(declare-fun m!3460783 () Bool)

(assert (=> b!3199113 m!3460783))

(assert (=> b!3199113 m!3460027))

(assert (=> b!3199113 m!3458961))

(declare-fun m!3460785 () Bool)

(assert (=> b!3199112 m!3460785))

(assert (=> b!3197896 d!875467))

(declare-fun b!3199115 () Bool)

(declare-fun res!1301603 () Bool)

(declare-fun e!1994353 () Bool)

(assert (=> b!3199115 (=> res!1301603 e!1994353)))

(assert (=> b!3199115 (= res!1301603 (not ((_ is ElementMatch!9951) (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706)))))))

(declare-fun e!1994352 () Bool)

(assert (=> b!3199115 (= e!1994352 e!1994353)))

(declare-fun b!3199116 () Bool)

(declare-fun e!1994351 () Bool)

(assert (=> b!3199116 (= e!1994353 e!1994351)))

(declare-fun res!1301604 () Bool)

(assert (=> b!3199116 (=> (not res!1301604) (not e!1994351))))

(declare-fun lt!1078294 () Bool)

(assert (=> b!3199116 (= res!1301604 (not lt!1078294))))

(declare-fun b!3199117 () Bool)

(declare-fun res!1301606 () Bool)

(declare-fun e!1994348 () Bool)

(assert (=> b!3199117 (=> res!1301606 e!1994348)))

(assert (=> b!3199117 (= res!1301606 (not (isEmpty!20133 (tail!5199 (tail!5199 lt!1077706)))))))

(declare-fun b!3199118 () Bool)

(declare-fun e!1994347 () Bool)

(assert (=> b!3199118 (= e!1994347 e!1994352)))

(declare-fun c!537174 () Bool)

(assert (=> b!3199118 (= c!537174 ((_ is EmptyLang!9951) (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706))))))

(declare-fun b!3199119 () Bool)

(declare-fun e!1994350 () Bool)

(assert (=> b!3199119 (= e!1994350 (matchR!4585 (derivativeStep!2945 (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706)) (head!7005 (tail!5199 lt!1077706))) (tail!5199 (tail!5199 lt!1077706))))))

(declare-fun d!875469 () Bool)

(assert (=> d!875469 e!1994347))

(declare-fun c!537175 () Bool)

(assert (=> d!875469 (= c!537175 ((_ is EmptyExpr!9951) (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706))))))

(assert (=> d!875469 (= lt!1078294 e!1994350)))

(declare-fun c!537176 () Bool)

(assert (=> d!875469 (= c!537176 (isEmpty!20133 (tail!5199 lt!1077706)))))

(assert (=> d!875469 (validRegex!4544 (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706)))))

(assert (=> d!875469 (= (matchR!4585 (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706)) (tail!5199 lt!1077706)) lt!1078294)))

(declare-fun b!3199120 () Bool)

(declare-fun e!1994349 () Bool)

(assert (=> b!3199120 (= e!1994349 (= (head!7005 (tail!5199 lt!1077706)) (c!536748 (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706)))))))

(declare-fun b!3199121 () Bool)

(assert (=> b!3199121 (= e!1994352 (not lt!1078294))))

(declare-fun b!3199122 () Bool)

(declare-fun res!1301605 () Bool)

(assert (=> b!3199122 (=> (not res!1301605) (not e!1994349))))

(declare-fun call!231702 () Bool)

(assert (=> b!3199122 (= res!1301605 (not call!231702))))

(declare-fun b!3199123 () Bool)

(assert (=> b!3199123 (= e!1994350 (nullable!3392 (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706))))))

(declare-fun b!3199124 () Bool)

(assert (=> b!3199124 (= e!1994347 (= lt!1078294 call!231702))))

(declare-fun bm!231697 () Bool)

(assert (=> bm!231697 (= call!231702 (isEmpty!20133 (tail!5199 lt!1077706)))))

(declare-fun b!3199125 () Bool)

(declare-fun res!1301602 () Bool)

(assert (=> b!3199125 (=> (not res!1301602) (not e!1994349))))

(assert (=> b!3199125 (= res!1301602 (isEmpty!20133 (tail!5199 (tail!5199 lt!1077706))))))

(declare-fun b!3199126 () Bool)

(declare-fun res!1301609 () Bool)

(assert (=> b!3199126 (=> res!1301609 e!1994353)))

(assert (=> b!3199126 (= res!1301609 e!1994349)))

(declare-fun res!1301608 () Bool)

(assert (=> b!3199126 (=> (not res!1301608) (not e!1994349))))

(assert (=> b!3199126 (= res!1301608 lt!1078294)))

(declare-fun b!3199127 () Bool)

(assert (=> b!3199127 (= e!1994351 e!1994348)))

(declare-fun res!1301607 () Bool)

(assert (=> b!3199127 (=> res!1301607 e!1994348)))

(assert (=> b!3199127 (= res!1301607 call!231702)))

(declare-fun b!3199128 () Bool)

(assert (=> b!3199128 (= e!1994348 (not (= (head!7005 (tail!5199 lt!1077706)) (c!536748 (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706))))))))

(assert (= (and d!875469 c!537176) b!3199123))

(assert (= (and d!875469 (not c!537176)) b!3199119))

(assert (= (and d!875469 c!537175) b!3199124))

(assert (= (and d!875469 (not c!537175)) b!3199118))

(assert (= (and b!3199118 c!537174) b!3199121))

(assert (= (and b!3199118 (not c!537174)) b!3199115))

(assert (= (and b!3199115 (not res!1301603)) b!3199126))

(assert (= (and b!3199126 res!1301608) b!3199122))

(assert (= (and b!3199122 res!1301605) b!3199125))

(assert (= (and b!3199125 res!1301602) b!3199120))

(assert (= (and b!3199126 (not res!1301609)) b!3199116))

(assert (= (and b!3199116 res!1301604) b!3199127))

(assert (= (and b!3199127 (not res!1301607)) b!3199117))

(assert (= (and b!3199117 (not res!1301606)) b!3199128))

(assert (= (or b!3199124 b!3199122 b!3199127) bm!231697))

(assert (=> b!3199123 m!3458939))

(declare-fun m!3460787 () Bool)

(assert (=> b!3199123 m!3460787))

(assert (=> b!3199117 m!3458933))

(declare-fun m!3460789 () Bool)

(assert (=> b!3199117 m!3460789))

(assert (=> b!3199117 m!3460789))

(declare-fun m!3460791 () Bool)

(assert (=> b!3199117 m!3460791))

(assert (=> b!3199120 m!3458933))

(declare-fun m!3460793 () Bool)

(assert (=> b!3199120 m!3460793))

(assert (=> b!3199128 m!3458933))

(assert (=> b!3199128 m!3460793))

(assert (=> b!3199119 m!3458933))

(assert (=> b!3199119 m!3460793))

(assert (=> b!3199119 m!3458939))

(assert (=> b!3199119 m!3460793))

(declare-fun m!3460795 () Bool)

(assert (=> b!3199119 m!3460795))

(assert (=> b!3199119 m!3458933))

(assert (=> b!3199119 m!3460789))

(assert (=> b!3199119 m!3460795))

(assert (=> b!3199119 m!3460789))

(declare-fun m!3460797 () Bool)

(assert (=> b!3199119 m!3460797))

(assert (=> b!3199125 m!3458933))

(assert (=> b!3199125 m!3460789))

(assert (=> b!3199125 m!3460789))

(assert (=> b!3199125 m!3460791))

(assert (=> d!875469 m!3458933))

(assert (=> d!875469 m!3458935))

(assert (=> d!875469 m!3458939))

(declare-fun m!3460799 () Bool)

(assert (=> d!875469 m!3460799))

(assert (=> bm!231697 m!3458933))

(assert (=> bm!231697 m!3458935))

(assert (=> b!3197863 d!875469))

(declare-fun call!231703 () Regex!9951)

(declare-fun call!231706 () Regex!9951)

(declare-fun e!1994356 () Regex!9951)

(declare-fun b!3199129 () Bool)

(assert (=> b!3199129 (= e!1994356 (Union!9951 (Concat!15373 call!231706 (regTwo!20414 (regex!5192 lt!1077697))) call!231703))))

(declare-fun b!3199130 () Bool)

(declare-fun e!1994354 () Regex!9951)

(declare-fun call!231704 () Regex!9951)

(assert (=> b!3199130 (= e!1994354 (Concat!15373 call!231704 (regex!5192 lt!1077697)))))

(declare-fun b!3199131 () Bool)

(declare-fun e!1994355 () Regex!9951)

(declare-fun call!231705 () Regex!9951)

(assert (=> b!3199131 (= e!1994355 (Union!9951 call!231703 call!231705))))

(declare-fun c!537178 () Bool)

(declare-fun bm!231698 () Bool)

(assert (=> bm!231698 (= call!231703 (derivativeStep!2945 (ite c!537178 (regOne!20415 (regex!5192 lt!1077697)) (regTwo!20414 (regex!5192 lt!1077697))) (head!7005 lt!1077706)))))

(declare-fun c!537180 () Bool)

(declare-fun bm!231699 () Bool)

(assert (=> bm!231699 (= call!231705 (derivativeStep!2945 (ite c!537178 (regTwo!20415 (regex!5192 lt!1077697)) (ite c!537180 (reg!10280 (regex!5192 lt!1077697)) (regOne!20414 (regex!5192 lt!1077697)))) (head!7005 lt!1077706)))))

(declare-fun b!3199132 () Bool)

(declare-fun e!1994358 () Regex!9951)

(assert (=> b!3199132 (= e!1994358 (ite (= (head!7005 lt!1077706) (c!536748 (regex!5192 lt!1077697))) EmptyExpr!9951 EmptyLang!9951))))

(declare-fun d!875471 () Bool)

(declare-fun lt!1078295 () Regex!9951)

(assert (=> d!875471 (validRegex!4544 lt!1078295)))

(declare-fun e!1994357 () Regex!9951)

(assert (=> d!875471 (= lt!1078295 e!1994357)))

(declare-fun c!537181 () Bool)

(assert (=> d!875471 (= c!537181 (or ((_ is EmptyExpr!9951) (regex!5192 lt!1077697)) ((_ is EmptyLang!9951) (regex!5192 lt!1077697))))))

(assert (=> d!875471 (validRegex!4544 (regex!5192 lt!1077697))))

(assert (=> d!875471 (= (derivativeStep!2945 (regex!5192 lt!1077697) (head!7005 lt!1077706)) lt!1078295)))

(declare-fun b!3199133 () Bool)

(declare-fun c!537177 () Bool)

(assert (=> b!3199133 (= c!537177 (nullable!3392 (regOne!20414 (regex!5192 lt!1077697))))))

(assert (=> b!3199133 (= e!1994354 e!1994356)))

(declare-fun b!3199134 () Bool)

(assert (=> b!3199134 (= e!1994357 e!1994358)))

(declare-fun c!537179 () Bool)

(assert (=> b!3199134 (= c!537179 ((_ is ElementMatch!9951) (regex!5192 lt!1077697)))))

(declare-fun b!3199135 () Bool)

(assert (=> b!3199135 (= e!1994357 EmptyLang!9951)))

(declare-fun b!3199136 () Bool)

(assert (=> b!3199136 (= e!1994355 e!1994354)))

(assert (=> b!3199136 (= c!537180 ((_ is Star!9951) (regex!5192 lt!1077697)))))

(declare-fun bm!231700 () Bool)

(assert (=> bm!231700 (= call!231704 call!231705)))

(declare-fun bm!231701 () Bool)

(assert (=> bm!231701 (= call!231706 call!231704)))

(declare-fun b!3199137 () Bool)

(assert (=> b!3199137 (= e!1994356 (Union!9951 (Concat!15373 call!231706 (regTwo!20414 (regex!5192 lt!1077697))) EmptyLang!9951))))

(declare-fun b!3199138 () Bool)

(assert (=> b!3199138 (= c!537178 ((_ is Union!9951) (regex!5192 lt!1077697)))))

(assert (=> b!3199138 (= e!1994358 e!1994355)))

(assert (= (and d!875471 c!537181) b!3199135))

(assert (= (and d!875471 (not c!537181)) b!3199134))

(assert (= (and b!3199134 c!537179) b!3199132))

(assert (= (and b!3199134 (not c!537179)) b!3199138))

(assert (= (and b!3199138 c!537178) b!3199131))

(assert (= (and b!3199138 (not c!537178)) b!3199136))

(assert (= (and b!3199136 c!537180) b!3199130))

(assert (= (and b!3199136 (not c!537180)) b!3199133))

(assert (= (and b!3199133 c!537177) b!3199129))

(assert (= (and b!3199133 (not c!537177)) b!3199137))

(assert (= (or b!3199129 b!3199137) bm!231701))

(assert (= (or b!3199130 bm!231701) bm!231700))

(assert (= (or b!3199131 b!3199129) bm!231698))

(assert (= (or b!3199131 bm!231700) bm!231699))

(assert (=> bm!231698 m!3458937))

(declare-fun m!3460801 () Bool)

(assert (=> bm!231698 m!3460801))

(assert (=> bm!231699 m!3458937))

(declare-fun m!3460803 () Bool)

(assert (=> bm!231699 m!3460803))

(declare-fun m!3460805 () Bool)

(assert (=> d!875471 m!3460805))

(assert (=> d!875471 m!3458945))

(declare-fun m!3460807 () Bool)

(assert (=> b!3199133 m!3460807))

(assert (=> b!3197863 d!875471))

(assert (=> b!3197863 d!874881))

(assert (=> b!3197863 d!874953))

(declare-fun d!875473 () Bool)

(assert (=> d!875473 (dynLambda!14516 lambda!117051 (h!41464 (t!236995 tokens!494)))))

(assert (=> d!875473 true))

(declare-fun _$7!1065 () Unit!50442)

(assert (=> d!875473 (= (choose!18661 tokens!494 lambda!117051 (h!41464 (t!236995 tokens!494))) _$7!1065)))

(declare-fun b_lambda!87421 () Bool)

(assert (=> (not b_lambda!87421) (not d!875473)))

(declare-fun bs!540815 () Bool)

(assert (= bs!540815 d!875473))

(assert (=> bs!540815 m!3458487))

(assert (=> d!874625 d!875473))

(assert (=> d!874625 d!874737))

(declare-fun d!875475 () Bool)

(assert (=> d!875475 (= (list!12809 lt!1077858) (list!12813 (c!536749 lt!1077858)))))

(declare-fun bs!540816 () Bool)

(assert (= bs!540816 d!875475))

(declare-fun m!3460809 () Bool)

(assert (=> bs!540816 m!3460809))

(assert (=> d!874771 d!875475))

(declare-fun d!875477 () Bool)

(declare-fun lt!1078296 () Int)

(assert (=> d!875477 (>= lt!1078296 0)))

(declare-fun e!1994359 () Int)

(assert (=> d!875477 (= lt!1078296 e!1994359)))

(declare-fun c!537182 () Bool)

(assert (=> d!875477 (= c!537182 ((_ is Nil!36043) (originalCharacters!5906 separatorToken!241)))))

(assert (=> d!875477 (= (size!27145 (originalCharacters!5906 separatorToken!241)) lt!1078296)))

(declare-fun b!3199139 () Bool)

(assert (=> b!3199139 (= e!1994359 0)))

(declare-fun b!3199140 () Bool)

(assert (=> b!3199140 (= e!1994359 (+ 1 (size!27145 (t!236994 (originalCharacters!5906 separatorToken!241)))))))

(assert (= (and d!875477 c!537182) b!3199139))

(assert (= (and d!875477 (not c!537182)) b!3199140))

(declare-fun m!3460811 () Bool)

(assert (=> b!3199140 m!3460811))

(assert (=> b!3197703 d!875477))

(declare-fun d!875479 () Bool)

(assert (=> d!875479 (= (list!12810 (_1!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494)))))) (list!12814 (c!536750 (_1!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 (h!41464 tokens!494))))))))))

(declare-fun bs!540817 () Bool)

(assert (= bs!540817 d!875479))

(declare-fun m!3460813 () Bool)

(assert (=> bs!540817 m!3460813))

(assert (=> d!874787 d!875479))

(assert (=> d!874787 d!874887))

(assert (=> d!874787 d!874889))

(declare-fun d!875481 () Bool)

(declare-fun lt!1078297 () Int)

(assert (=> d!875481 (= lt!1078297 (size!27150 (list!12810 (_1!20839 lt!1077862))))))

(assert (=> d!875481 (= lt!1078297 (size!27151 (c!536750 (_1!20839 lt!1077862))))))

(assert (=> d!875481 (= (size!27146 (_1!20839 lt!1077862)) lt!1078297)))

(declare-fun bs!540818 () Bool)

(assert (= bs!540818 d!875481))

(assert (=> bs!540818 m!3460685))

(assert (=> bs!540818 m!3460685))

(declare-fun m!3460815 () Bool)

(assert (=> bs!540818 m!3460815))

(declare-fun m!3460817 () Bool)

(assert (=> bs!540818 m!3460817))

(assert (=> d!874787 d!875481))

(declare-fun d!875483 () Bool)

(assert (=> d!875483 (= (list!12810 (singletonSeq!2288 (h!41464 tokens!494))) (list!12814 (c!536750 (singletonSeq!2288 (h!41464 tokens!494)))))))

(declare-fun bs!540819 () Bool)

(assert (= bs!540819 d!875483))

(declare-fun m!3460819 () Bool)

(assert (=> bs!540819 m!3460819))

(assert (=> d!874787 d!875483))

(assert (=> d!874787 d!874811))

(assert (=> d!874787 d!874785))

(declare-fun bs!540820 () Bool)

(declare-fun d!875485 () Bool)

(assert (= bs!540820 (and d!875485 d!875161)))

(declare-fun lambda!117091 () Int)

(assert (=> bs!540820 (= (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (= lambda!117091 lambda!117081))))

(declare-fun bs!540821 () Bool)

(assert (= bs!540821 (and d!875485 d!875415)))

(assert (=> bs!540821 (= (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (h!41465 rules!2135)))) (= lambda!117091 lambda!117090))))

(assert (=> d!875485 true))

(assert (=> d!875485 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241)))) (dynLambda!14527 order!18341 lambda!117091))))

(assert (=> d!875485 (= (equivClasses!2047 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241)))) (Forall2!857 lambda!117091))))

(declare-fun bs!540822 () Bool)

(assert (= bs!540822 d!875485))

(declare-fun m!3460821 () Bool)

(assert (=> bs!540822 m!3460821))

(assert (=> b!3197431 d!875485))

(declare-fun d!875487 () Bool)

(declare-fun lt!1078298 () Bool)

(assert (=> d!875487 (= lt!1078298 (isEmpty!20133 (list!12809 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)))))))))

(assert (=> d!875487 (= lt!1078298 (isEmpty!20144 (c!536749 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241)))))))))

(assert (=> d!875487 (= (isEmpty!20132 (_2!20839 (lex!2111 thiss!18206 rules!2135 (print!1846 thiss!18206 (singletonSeq!2288 separatorToken!241))))) lt!1078298)))

(declare-fun bs!540823 () Bool)

(assert (= bs!540823 d!875487))

(declare-fun m!3460823 () Bool)

(assert (=> bs!540823 m!3460823))

(assert (=> bs!540823 m!3460823))

(declare-fun m!3460825 () Bool)

(assert (=> bs!540823 m!3460825))

(declare-fun m!3460827 () Bool)

(assert (=> bs!540823 m!3460827))

(assert (=> b!3197466 d!875487))

(assert (=> b!3197466 d!874929))

(assert (=> b!3197466 d!874927))

(assert (=> b!3197466 d!874925))

(declare-fun d!875489 () Bool)

(declare-fun c!537183 () Bool)

(assert (=> d!875489 (= c!537183 ((_ is Nil!36043) lt!1077861))))

(declare-fun e!1994360 () (InoxSet C!20088))

(assert (=> d!875489 (= (content!4869 lt!1077861) e!1994360)))

(declare-fun b!3199141 () Bool)

(assert (=> b!3199141 (= e!1994360 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199142 () Bool)

(assert (=> b!3199142 (= e!1994360 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077861) true) (content!4869 (t!236994 lt!1077861))))))

(assert (= (and d!875489 c!537183) b!3199141))

(assert (= (and d!875489 (not c!537183)) b!3199142))

(declare-fun m!3460829 () Bool)

(assert (=> b!3199142 m!3460829))

(declare-fun m!3460831 () Bool)

(assert (=> b!3199142 m!3460831))

(assert (=> d!874781 d!875489))

(assert (=> d!874781 d!875463))

(assert (=> d!874781 d!874991))

(assert (=> d!874741 d!874883))

(declare-fun b!3199143 () Bool)

(declare-fun e!1994365 () Bool)

(declare-fun call!231707 () Bool)

(assert (=> b!3199143 (= e!1994365 call!231707)))

(declare-fun b!3199144 () Bool)

(declare-fun e!1994361 () Bool)

(declare-fun e!1994366 () Bool)

(assert (=> b!3199144 (= e!1994361 e!1994366)))

(declare-fun res!1301612 () Bool)

(assert (=> b!3199144 (= res!1301612 (not (nullable!3392 (reg!10280 (regex!5192 lt!1077697)))))))

(assert (=> b!3199144 (=> (not res!1301612) (not e!1994366))))

(declare-fun b!3199145 () Bool)

(declare-fun e!1994363 () Bool)

(assert (=> b!3199145 (= e!1994363 call!231707)))

(declare-fun c!537184 () Bool)

(declare-fun bm!231702 () Bool)

(declare-fun call!231708 () Bool)

(declare-fun c!537185 () Bool)

(assert (=> bm!231702 (= call!231708 (validRegex!4544 (ite c!537185 (reg!10280 (regex!5192 lt!1077697)) (ite c!537184 (regTwo!20415 (regex!5192 lt!1077697)) (regTwo!20414 (regex!5192 lt!1077697))))))))

(declare-fun b!3199147 () Bool)

(declare-fun res!1301610 () Bool)

(assert (=> b!3199147 (=> (not res!1301610) (not e!1994363))))

(declare-fun call!231709 () Bool)

(assert (=> b!3199147 (= res!1301610 call!231709)))

(declare-fun e!1994367 () Bool)

(assert (=> b!3199147 (= e!1994367 e!1994363)))

(declare-fun b!3199148 () Bool)

(declare-fun res!1301613 () Bool)

(declare-fun e!1994364 () Bool)

(assert (=> b!3199148 (=> res!1301613 e!1994364)))

(assert (=> b!3199148 (= res!1301613 (not ((_ is Concat!15373) (regex!5192 lt!1077697))))))

(assert (=> b!3199148 (= e!1994367 e!1994364)))

(declare-fun b!3199149 () Bool)

(assert (=> b!3199149 (= e!1994366 call!231708)))

(declare-fun bm!231703 () Bool)

(assert (=> bm!231703 (= call!231707 call!231708)))

(declare-fun b!3199150 () Bool)

(assert (=> b!3199150 (= e!1994364 e!1994365)))

(declare-fun res!1301614 () Bool)

(assert (=> b!3199150 (=> (not res!1301614) (not e!1994365))))

(assert (=> b!3199150 (= res!1301614 call!231709)))

(declare-fun b!3199146 () Bool)

(assert (=> b!3199146 (= e!1994361 e!1994367)))

(assert (=> b!3199146 (= c!537184 ((_ is Union!9951) (regex!5192 lt!1077697)))))

(declare-fun d!875491 () Bool)

(declare-fun res!1301611 () Bool)

(declare-fun e!1994362 () Bool)

(assert (=> d!875491 (=> res!1301611 e!1994362)))

(assert (=> d!875491 (= res!1301611 ((_ is ElementMatch!9951) (regex!5192 lt!1077697)))))

(assert (=> d!875491 (= (validRegex!4544 (regex!5192 lt!1077697)) e!1994362)))

(declare-fun bm!231704 () Bool)

(assert (=> bm!231704 (= call!231709 (validRegex!4544 (ite c!537184 (regOne!20415 (regex!5192 lt!1077697)) (regOne!20414 (regex!5192 lt!1077697)))))))

(declare-fun b!3199151 () Bool)

(assert (=> b!3199151 (= e!1994362 e!1994361)))

(assert (=> b!3199151 (= c!537185 ((_ is Star!9951) (regex!5192 lt!1077697)))))

(assert (= (and d!875491 (not res!1301611)) b!3199151))

(assert (= (and b!3199151 c!537185) b!3199144))

(assert (= (and b!3199151 (not c!537185)) b!3199146))

(assert (= (and b!3199144 res!1301612) b!3199149))

(assert (= (and b!3199146 c!537184) b!3199147))

(assert (= (and b!3199146 (not c!537184)) b!3199148))

(assert (= (and b!3199147 res!1301610) b!3199145))

(assert (= (and b!3199148 (not res!1301613)) b!3199150))

(assert (= (and b!3199150 res!1301614) b!3199143))

(assert (= (or b!3199145 b!3199143) bm!231703))

(assert (= (or b!3199147 b!3199150) bm!231704))

(assert (= (or b!3199149 bm!231703) bm!231702))

(declare-fun m!3460833 () Bool)

(assert (=> b!3199144 m!3460833))

(declare-fun m!3460835 () Bool)

(assert (=> bm!231702 m!3460835))

(declare-fun m!3460837 () Bool)

(assert (=> bm!231704 m!3460837))

(assert (=> d!874741 d!875491))

(declare-fun d!875493 () Bool)

(declare-fun res!1301615 () Bool)

(declare-fun e!1994368 () Bool)

(assert (=> d!875493 (=> res!1301615 e!1994368)))

(assert (=> d!875493 (= res!1301615 (not ((_ is Cons!36045) (t!236996 rules!2135))))))

(assert (=> d!875493 (= (sepAndNonSepRulesDisjointChars!1386 rules!2135 (t!236996 rules!2135)) e!1994368)))

(declare-fun b!3199152 () Bool)

(declare-fun e!1994369 () Bool)

(assert (=> b!3199152 (= e!1994368 e!1994369)))

(declare-fun res!1301616 () Bool)

(assert (=> b!3199152 (=> (not res!1301616) (not e!1994369))))

(assert (=> b!3199152 (= res!1301616 (ruleDisjointCharsFromAllFromOtherType!584 (h!41465 (t!236996 rules!2135)) rules!2135))))

(declare-fun b!3199153 () Bool)

(assert (=> b!3199153 (= e!1994369 (sepAndNonSepRulesDisjointChars!1386 rules!2135 (t!236996 (t!236996 rules!2135))))))

(assert (= (and d!875493 (not res!1301615)) b!3199152))

(assert (= (and b!3199152 res!1301616) b!3199153))

(declare-fun m!3460839 () Bool)

(assert (=> b!3199152 m!3460839))

(declare-fun m!3460841 () Bool)

(assert (=> b!3199153 m!3460841))

(assert (=> b!3197487 d!875493))

(declare-fun d!875495 () Bool)

(assert (=> d!875495 (= (isEmpty!20138 lt!1077689) (not ((_ is Some!7076) lt!1077689)))))

(assert (=> d!874671 d!875495))

(declare-fun d!875497 () Bool)

(assert (=> d!875497 (= (list!12809 lt!1077804) (list!12813 (c!536749 lt!1077804)))))

(declare-fun bs!540824 () Bool)

(assert (= bs!540824 d!875497))

(declare-fun m!3460843 () Bool)

(assert (=> bs!540824 m!3460843))

(assert (=> d!874705 d!875497))

(declare-fun b!3199156 () Bool)

(declare-fun e!1994371 () List!36167)

(assert (=> b!3199156 (= e!1994371 (list!12817 (xs!13877 (c!536749 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))))))

(declare-fun d!875499 () Bool)

(declare-fun c!537186 () Bool)

(assert (=> d!875499 (= c!537186 ((_ is Empty!10759) (c!536749 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))

(declare-fun e!1994370 () List!36167)

(assert (=> d!875499 (= (list!12813 (c!536749 (charsOf!3208 (h!41464 (t!236995 tokens!494))))) e!1994370)))

(declare-fun b!3199154 () Bool)

(assert (=> b!3199154 (= e!1994370 Nil!36043)))

(declare-fun b!3199157 () Bool)

(assert (=> b!3199157 (= e!1994371 (++!8630 (list!12813 (left!28009 (c!536749 (charsOf!3208 (h!41464 (t!236995 tokens!494)))))) (list!12813 (right!28339 (c!536749 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))))

(declare-fun b!3199155 () Bool)

(assert (=> b!3199155 (= e!1994370 e!1994371)))

(declare-fun c!537187 () Bool)

(assert (=> b!3199155 (= c!537187 ((_ is Leaf!16966) (c!536749 (charsOf!3208 (h!41464 (t!236995 tokens!494))))))))

(assert (= (and d!875499 c!537186) b!3199154))

(assert (= (and d!875499 (not c!537186)) b!3199155))

(assert (= (and b!3199155 c!537187) b!3199156))

(assert (= (and b!3199155 (not c!537187)) b!3199157))

(declare-fun m!3460845 () Bool)

(assert (=> b!3199156 m!3460845))

(declare-fun m!3460847 () Bool)

(assert (=> b!3199157 m!3460847))

(declare-fun m!3460849 () Bool)

(assert (=> b!3199157 m!3460849))

(assert (=> b!3199157 m!3460847))

(assert (=> b!3199157 m!3460849))

(declare-fun m!3460851 () Bool)

(assert (=> b!3199157 m!3460851))

(assert (=> d!874765 d!875499))

(declare-fun d!875501 () Bool)

(declare-fun c!537188 () Bool)

(assert (=> d!875501 (= c!537188 ((_ is Node!10759) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))))))

(declare-fun e!1994372 () Bool)

(assert (=> d!875501 (= (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))) e!1994372)))

(declare-fun b!3199158 () Bool)

(assert (=> b!3199158 (= e!1994372 (inv!48899 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))))))

(declare-fun b!3199159 () Bool)

(declare-fun e!1994373 () Bool)

(assert (=> b!3199159 (= e!1994372 e!1994373)))

(declare-fun res!1301617 () Bool)

(assert (=> b!3199159 (= res!1301617 (not ((_ is Leaf!16966) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))))))))

(assert (=> b!3199159 (=> res!1301617 e!1994373)))

(declare-fun b!3199160 () Bool)

(assert (=> b!3199160 (= e!1994373 (inv!48900 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))))))

(assert (= (and d!875501 c!537188) b!3199158))

(assert (= (and d!875501 (not c!537188)) b!3199159))

(assert (= (and b!3199159 (not res!1301617)) b!3199160))

(declare-fun m!3460853 () Bool)

(assert (=> b!3199158 m!3460853))

(declare-fun m!3460855 () Bool)

(assert (=> b!3199160 m!3460855))

(assert (=> b!3197477 d!875501))

(declare-fun d!875503 () Bool)

(declare-fun e!1994374 () Bool)

(assert (=> d!875503 e!1994374))

(declare-fun res!1301618 () Bool)

(assert (=> d!875503 (=> (not res!1301618) (not e!1994374))))

(declare-fun lt!1078299 () List!36167)

(assert (=> d!875503 (= res!1301618 (= (content!4869 lt!1078299) ((_ map or) (content!4869 (t!236994 lt!1077706)) (content!4869 lt!1077685))))))

(declare-fun e!1994375 () List!36167)

(assert (=> d!875503 (= lt!1078299 e!1994375)))

(declare-fun c!537189 () Bool)

(assert (=> d!875503 (= c!537189 ((_ is Nil!36043) (t!236994 lt!1077706)))))

(assert (=> d!875503 (= (++!8630 (t!236994 lt!1077706) lt!1077685) lt!1078299)))

(declare-fun b!3199163 () Bool)

(declare-fun res!1301619 () Bool)

(assert (=> b!3199163 (=> (not res!1301619) (not e!1994374))))

(assert (=> b!3199163 (= res!1301619 (= (size!27145 lt!1078299) (+ (size!27145 (t!236994 lt!1077706)) (size!27145 lt!1077685))))))

(declare-fun b!3199162 () Bool)

(assert (=> b!3199162 (= e!1994375 (Cons!36043 (h!41463 (t!236994 lt!1077706)) (++!8630 (t!236994 (t!236994 lt!1077706)) lt!1077685)))))

(declare-fun b!3199164 () Bool)

(assert (=> b!3199164 (= e!1994374 (or (not (= lt!1077685 Nil!36043)) (= lt!1078299 (t!236994 lt!1077706))))))

(declare-fun b!3199161 () Bool)

(assert (=> b!3199161 (= e!1994375 lt!1077685)))

(assert (= (and d!875503 c!537189) b!3199161))

(assert (= (and d!875503 (not c!537189)) b!3199162))

(assert (= (and d!875503 res!1301618) b!3199163))

(assert (= (and b!3199163 res!1301619) b!3199164))

(declare-fun m!3460857 () Bool)

(assert (=> d!875503 m!3460857))

(assert (=> d!875503 m!3460709))

(assert (=> d!875503 m!3458391))

(declare-fun m!3460859 () Bool)

(assert (=> b!3199163 m!3460859))

(assert (=> b!3199163 m!3458717))

(assert (=> b!3199163 m!3458395))

(declare-fun m!3460861 () Bool)

(assert (=> b!3199162 m!3460861))

(assert (=> b!3197426 d!875503))

(declare-fun b!3199167 () Bool)

(declare-fun e!1994377 () List!36167)

(assert (=> b!3199167 (= e!1994377 (list!12817 (xs!13877 (c!536749 lt!1077700))))))

(declare-fun d!875505 () Bool)

(declare-fun c!537190 () Bool)

(assert (=> d!875505 (= c!537190 ((_ is Empty!10759) (c!536749 lt!1077700)))))

(declare-fun e!1994376 () List!36167)

(assert (=> d!875505 (= (list!12813 (c!536749 lt!1077700)) e!1994376)))

(declare-fun b!3199165 () Bool)

(assert (=> b!3199165 (= e!1994376 Nil!36043)))

(declare-fun b!3199168 () Bool)

(assert (=> b!3199168 (= e!1994377 (++!8630 (list!12813 (left!28009 (c!536749 lt!1077700))) (list!12813 (right!28339 (c!536749 lt!1077700)))))))

(declare-fun b!3199166 () Bool)

(assert (=> b!3199166 (= e!1994376 e!1994377)))

(declare-fun c!537191 () Bool)

(assert (=> b!3199166 (= c!537191 ((_ is Leaf!16966) (c!536749 lt!1077700)))))

(assert (= (and d!875505 c!537190) b!3199165))

(assert (= (and d!875505 (not c!537190)) b!3199166))

(assert (= (and b!3199166 c!537191) b!3199167))

(assert (= (and b!3199166 (not c!537191)) b!3199168))

(declare-fun m!3460863 () Bool)

(assert (=> b!3199167 m!3460863))

(declare-fun m!3460865 () Bool)

(assert (=> b!3199168 m!3460865))

(declare-fun m!3460867 () Bool)

(assert (=> b!3199168 m!3460867))

(assert (=> b!3199168 m!3460865))

(assert (=> b!3199168 m!3460867))

(declare-fun m!3460869 () Bool)

(assert (=> b!3199168 m!3460869))

(assert (=> d!874797 d!875505))

(declare-fun d!875507 () Bool)

(declare-fun charsToInt!0 (List!36166) (_ BitVec 32))

(assert (=> d!875507 (= (inv!16 (value!168432 (h!41464 tokens!494))) (= (charsToInt!0 (text!38401 (value!168432 (h!41464 tokens!494)))) (value!168423 (value!168432 (h!41464 tokens!494)))))))

(declare-fun bs!540825 () Bool)

(assert (= bs!540825 d!875507))

(declare-fun m!3460871 () Bool)

(assert (=> bs!540825 m!3460871))

(assert (=> b!3197941 d!875507))

(declare-fun d!875509 () Bool)

(assert (=> d!875509 (= (list!12810 (_1!20839 lt!1077801)) (list!12814 (c!536750 (_1!20839 lt!1077801))))))

(declare-fun bs!540826 () Bool)

(assert (= bs!540826 d!875509))

(declare-fun m!3460873 () Bool)

(assert (=> bs!540826 m!3460873))

(assert (=> b!3197697 d!875509))

(assert (=> b!3197697 d!874905))

(assert (=> b!3197697 d!874907))

(declare-fun d!875511 () Bool)

(assert (=> d!875511 (= (get!11463 lt!1077764) (v!35596 lt!1077764))))

(assert (=> b!3197584 d!875511))

(declare-fun d!875513 () Bool)

(assert (=> d!875513 (= (inv!48890 (tag!5712 (rule!7626 (h!41464 (t!236995 tokens!494))))) (= (mod (str.len (value!168431 (tag!5712 (rule!7626 (h!41464 (t!236995 tokens!494)))))) 2) 0))))

(assert (=> b!3198063 d!875513))

(declare-fun d!875515 () Bool)

(declare-fun res!1301620 () Bool)

(declare-fun e!1994378 () Bool)

(assert (=> d!875515 (=> (not res!1301620) (not e!1994378))))

(assert (=> d!875515 (= res!1301620 (semiInverseModEq!2148 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))))))

(assert (=> d!875515 (= (inv!48893 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) e!1994378)))

(declare-fun b!3199169 () Bool)

(assert (=> b!3199169 (= e!1994378 (equivClasses!2047 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))))))

(assert (= (and d!875515 res!1301620) b!3199169))

(declare-fun m!3460875 () Bool)

(assert (=> d!875515 m!3460875))

(declare-fun m!3460877 () Bool)

(assert (=> b!3199169 m!3460877))

(assert (=> b!3198063 d!875515))

(assert (=> b!3197563 d!874865))

(declare-fun d!875517 () Bool)

(assert (=> d!875517 (= (apply!8122 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))) (seqFromList!3456 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754))))) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754))))) (seqFromList!3456 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754))))))))

(declare-fun b_lambda!87423 () Bool)

(assert (=> (not b_lambda!87423) (not d!875517)))

(declare-fun t!237206 () Bool)

(declare-fun tb!156631 () Bool)

(assert (=> (and b!3197387 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237206) tb!156631))

(declare-fun result!198912 () Bool)

(assert (=> tb!156631 (= result!198912 (inv!21 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754))))) (seqFromList!3456 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754)))))))))

(declare-fun m!3460879 () Bool)

(assert (=> tb!156631 m!3460879))

(assert (=> d!875517 t!237206))

(declare-fun b_and!212545 () Bool)

(assert (= b_and!212509 (and (=> t!237206 result!198912) b_and!212545)))

(declare-fun tb!156633 () Bool)

(declare-fun t!237208 () Bool)

(assert (=> (and b!3197411 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237208) tb!156633))

(declare-fun result!198914 () Bool)

(assert (= result!198914 result!198912))

(assert (=> d!875517 t!237208))

(declare-fun b_and!212547 () Bool)

(assert (= b_and!212507 (and (=> t!237208 result!198914) b_and!212547)))

(declare-fun tb!156635 () Bool)

(declare-fun t!237210 () Bool)

(assert (=> (and b!3198064 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237210) tb!156635))

(declare-fun result!198916 () Bool)

(assert (= result!198916 result!198912))

(assert (=> d!875517 t!237210))

(declare-fun b_and!212549 () Bool)

(assert (= b_and!212505 (and (=> t!237210 result!198916) b_and!212549)))

(declare-fun t!237212 () Bool)

(declare-fun tb!156637 () Bool)

(assert (=> (and b!3198049 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237212) tb!156637))

(declare-fun result!198918 () Bool)

(assert (= result!198918 result!198912))

(assert (=> d!875517 t!237212))

(declare-fun b_and!212551 () Bool)

(assert (= b_and!212513 (and (=> t!237212 result!198918) b_and!212551)))

(declare-fun t!237214 () Bool)

(declare-fun tb!156639 () Bool)

(assert (=> (and b!3197407 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237214) tb!156639))

(declare-fun result!198920 () Bool)

(assert (= result!198920 result!198912))

(assert (=> d!875517 t!237214))

(declare-fun b_and!212553 () Bool)

(assert (= b_and!212511 (and (=> t!237214 result!198920) b_and!212553)))

(assert (=> d!875517 m!3458615))

(declare-fun m!3460881 () Bool)

(assert (=> d!875517 m!3460881))

(assert (=> b!3197563 d!875517))

(declare-fun d!875519 () Bool)

(assert (=> d!875519 (= (seqFromList!3456 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754)))) (fromListB!1528 (originalCharacters!5906 (_1!20840 (get!11464 lt!1077754)))))))

(declare-fun bs!540827 () Bool)

(assert (= bs!540827 d!875519))

(declare-fun m!3460883 () Bool)

(assert (=> bs!540827 m!3460883))

(assert (=> b!3197563 d!875519))

(declare-fun d!875521 () Bool)

(declare-fun e!1994380 () Bool)

(assert (=> d!875521 e!1994380))

(declare-fun res!1301621 () Bool)

(assert (=> d!875521 (=> (not res!1301621) (not e!1994380))))

(declare-fun lt!1078300 () List!36167)

(assert (=> d!875521 (= res!1301621 (= (content!4869 lt!1078300) ((_ map or) (content!4869 (ite c!536785 call!231575 call!231578)) (content!4869 (ite c!536785 call!231578 call!231575)))))))

(declare-fun e!1994381 () List!36167)

(assert (=> d!875521 (= lt!1078300 e!1994381)))

(declare-fun c!537192 () Bool)

(assert (=> d!875521 (= c!537192 ((_ is Nil!36043) (ite c!536785 call!231575 call!231578)))))

(assert (=> d!875521 (= (++!8630 (ite c!536785 call!231575 call!231578) (ite c!536785 call!231578 call!231575)) lt!1078300)))

(declare-fun b!3199172 () Bool)

(declare-fun res!1301622 () Bool)

(assert (=> b!3199172 (=> (not res!1301622) (not e!1994380))))

(assert (=> b!3199172 (= res!1301622 (= (size!27145 lt!1078300) (+ (size!27145 (ite c!536785 call!231575 call!231578)) (size!27145 (ite c!536785 call!231578 call!231575)))))))

(declare-fun b!3199171 () Bool)

(assert (=> b!3199171 (= e!1994381 (Cons!36043 (h!41463 (ite c!536785 call!231575 call!231578)) (++!8630 (t!236994 (ite c!536785 call!231575 call!231578)) (ite c!536785 call!231578 call!231575))))))

(declare-fun b!3199173 () Bool)

(assert (=> b!3199173 (= e!1994380 (or (not (= (ite c!536785 call!231578 call!231575) Nil!36043)) (= lt!1078300 (ite c!536785 call!231575 call!231578))))))

(declare-fun b!3199170 () Bool)

(assert (=> b!3199170 (= e!1994381 (ite c!536785 call!231578 call!231575))))

(assert (= (and d!875521 c!537192) b!3199170))

(assert (= (and d!875521 (not c!537192)) b!3199171))

(assert (= (and d!875521 res!1301621) b!3199172))

(assert (= (and b!3199172 res!1301622) b!3199173))

(declare-fun m!3460885 () Bool)

(assert (=> d!875521 m!3460885))

(declare-fun m!3460887 () Bool)

(assert (=> d!875521 m!3460887))

(declare-fun m!3460889 () Bool)

(assert (=> d!875521 m!3460889))

(declare-fun m!3460891 () Bool)

(assert (=> b!3199172 m!3460891))

(declare-fun m!3460893 () Bool)

(assert (=> b!3199172 m!3460893))

(declare-fun m!3460895 () Bool)

(assert (=> b!3199172 m!3460895))

(declare-fun m!3460897 () Bool)

(assert (=> b!3199171 m!3460897))

(assert (=> bm!231571 d!875521))

(declare-fun d!875523 () Bool)

(declare-fun e!1994384 () Bool)

(assert (=> d!875523 e!1994384))

(declare-fun res!1301625 () Bool)

(assert (=> d!875523 (=> res!1301625 e!1994384)))

(assert (=> d!875523 (= res!1301625 (isEmpty!20133 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))

(declare-fun lt!1078303 () Unit!50442)

(declare-fun choose!18675 (Regex!9951 List!36167) Unit!50442)

(assert (=> d!875523 (= lt!1078303 (choose!18675 (regex!5192 (rule!7626 (h!41464 tokens!494))) lt!1077706))))

(assert (=> d!875523 (validRegex!4544 (regex!5192 (rule!7626 (h!41464 tokens!494))))))

(assert (=> d!875523 (= (longestMatchIsAcceptedByMatchOrIsEmpty!797 (regex!5192 (rule!7626 (h!41464 tokens!494))) lt!1077706) lt!1078303)))

(declare-fun b!3199176 () Bool)

(assert (=> b!3199176 (= e!1994384 (matchR!4585 (regex!5192 (rule!7626 (h!41464 tokens!494))) (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))

(assert (= (and d!875523 (not res!1301625)) b!3199176))

(assert (=> d!875523 m!3458621))

(assert (=> d!875523 m!3458337))

(assert (=> d!875523 m!3458623))

(declare-fun m!3460899 () Bool)

(assert (=> d!875523 m!3460899))

(assert (=> d!875523 m!3458647))

(assert (=> d!875523 m!3458621))

(assert (=> d!875523 m!3459375))

(assert (=> d!875523 m!3458337))

(assert (=> b!3199176 m!3458621))

(assert (=> b!3199176 m!3458337))

(assert (=> b!3199176 m!3458621))

(assert (=> b!3199176 m!3458337))

(assert (=> b!3199176 m!3458623))

(assert (=> b!3199176 m!3458625))

(assert (=> b!3197559 d!875523))

(assert (=> b!3197559 d!874683))

(assert (=> b!3197559 d!874941))

(declare-fun d!875525 () Bool)

(assert (=> d!875525 (= (seqFromList!3456 (_1!20841 lt!1077755)) (fromListB!1528 (_1!20841 lt!1077755)))))

(declare-fun bs!540828 () Bool)

(assert (= bs!540828 d!875525))

(declare-fun m!3460901 () Bool)

(assert (=> bs!540828 m!3460901))

(assert (=> b!3197559 d!875525))

(declare-fun bs!540829 () Bool)

(declare-fun d!875527 () Bool)

(assert (= bs!540829 (and d!875527 d!874955)))

(declare-fun lambda!117094 () Int)

(assert (=> bs!540829 (= lambda!117094 lambda!117064)))

(declare-fun bs!540830 () Bool)

(assert (= bs!540830 (and d!875527 d!875103)))

(assert (=> bs!540830 (= (and (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))))) (= lambda!117094 lambda!117068))))

(declare-fun bs!540831 () Bool)

(assert (= bs!540831 (and d!875527 d!875141)))

(assert (=> bs!540831 (= (and (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (h!41465 rules!2135)))) (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (h!41465 rules!2135))))) (= lambda!117094 lambda!117074))))

(declare-fun b!3199181 () Bool)

(declare-fun e!1994387 () Bool)

(assert (=> b!3199181 (= e!1994387 true)))

(assert (=> d!875527 e!1994387))

(assert (= d!875527 b!3199181))

(assert (=> b!3199181 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (dynLambda!14526 order!18335 lambda!117094))))

(assert (=> b!3199181 (< (dynLambda!14524 order!18333 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) (dynLambda!14526 order!18335 lambda!117094))))

(assert (=> d!875527 (= (list!12809 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (seqFromList!3456 (_1!20841 lt!1077755))))) (list!12809 (seqFromList!3456 (_1!20841 lt!1077755))))))

(declare-fun lt!1078306 () Unit!50442)

(declare-fun ForallOf!547 (Int BalanceConc!21132) Unit!50442)

(assert (=> d!875527 (= lt!1078306 (ForallOf!547 lambda!117094 (seqFromList!3456 (_1!20841 lt!1077755))))))

(assert (=> d!875527 (= (lemmaSemiInverse!1168 (transformation!5192 (rule!7626 (h!41464 tokens!494))) (seqFromList!3456 (_1!20841 lt!1077755))) lt!1078306)))

(declare-fun b_lambda!87425 () Bool)

(assert (=> (not b_lambda!87425) (not d!875527)))

(declare-fun tb!156641 () Bool)

(declare-fun t!237216 () Bool)

(assert (=> (and b!3197407 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237216) tb!156641))

(declare-fun e!1994388 () Bool)

(declare-fun b!3199184 () Bool)

(declare-fun tp!1011058 () Bool)

(assert (=> b!3199184 (= e!1994388 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (seqFromList!3456 (_1!20841 lt!1077755)))))) tp!1011058))))

(declare-fun result!198922 () Bool)

(assert (=> tb!156641 (= result!198922 (and (inv!48896 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (seqFromList!3456 (_1!20841 lt!1077755))))) e!1994388))))

(assert (= tb!156641 b!3199184))

(declare-fun m!3460903 () Bool)

(assert (=> b!3199184 m!3460903))

(declare-fun m!3460905 () Bool)

(assert (=> tb!156641 m!3460905))

(assert (=> d!875527 t!237216))

(declare-fun b_and!212555 () Bool)

(assert (= b_and!212537 (and (=> t!237216 result!198922) b_and!212555)))

(declare-fun t!237218 () Bool)

(declare-fun tb!156643 () Bool)

(assert (=> (and b!3197411 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237218) tb!156643))

(declare-fun result!198924 () Bool)

(assert (= result!198924 result!198922))

(assert (=> d!875527 t!237218))

(declare-fun b_and!212557 () Bool)

(assert (= b_and!212541 (and (=> t!237218 result!198924) b_and!212557)))

(declare-fun tb!156645 () Bool)

(declare-fun t!237220 () Bool)

(assert (=> (and b!3198049 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237220) tb!156645))

(declare-fun result!198926 () Bool)

(assert (= result!198926 result!198922))

(assert (=> d!875527 t!237220))

(declare-fun b_and!212559 () Bool)

(assert (= b_and!212539 (and (=> t!237220 result!198926) b_and!212559)))

(declare-fun t!237222 () Bool)

(declare-fun tb!156647 () Bool)

(assert (=> (and b!3198064 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237222) tb!156647))

(declare-fun result!198928 () Bool)

(assert (= result!198928 result!198922))

(assert (=> d!875527 t!237222))

(declare-fun b_and!212561 () Bool)

(assert (= b_and!212543 (and (=> t!237222 result!198928) b_and!212561)))

(declare-fun tb!156649 () Bool)

(declare-fun t!237224 () Bool)

(assert (=> (and b!3197387 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237224) tb!156649))

(declare-fun result!198930 () Bool)

(assert (= result!198930 result!198922))

(assert (=> d!875527 t!237224))

(declare-fun b_and!212563 () Bool)

(assert (= b_and!212535 (and (=> t!237224 result!198930) b_and!212563)))

(declare-fun b_lambda!87427 () Bool)

(assert (=> (not b_lambda!87427) (not d!875527)))

(declare-fun t!237226 () Bool)

(declare-fun tb!156651 () Bool)

(assert (=> (and b!3197411 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237226) tb!156651))

(declare-fun result!198932 () Bool)

(assert (=> tb!156651 (= result!198932 (inv!21 (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (seqFromList!3456 (_1!20841 lt!1077755)))))))

(declare-fun m!3460907 () Bool)

(assert (=> tb!156651 m!3460907))

(assert (=> d!875527 t!237226))

(declare-fun b_and!212565 () Bool)

(assert (= b_and!212547 (and (=> t!237226 result!198932) b_and!212565)))

(declare-fun t!237228 () Bool)

(declare-fun tb!156653 () Bool)

(assert (=> (and b!3198064 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237228) tb!156653))

(declare-fun result!198934 () Bool)

(assert (= result!198934 result!198932))

(assert (=> d!875527 t!237228))

(declare-fun b_and!212567 () Bool)

(assert (= b_and!212549 (and (=> t!237228 result!198934) b_and!212567)))

(declare-fun tb!156655 () Bool)

(declare-fun t!237230 () Bool)

(assert (=> (and b!3197387 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237230) tb!156655))

(declare-fun result!198936 () Bool)

(assert (= result!198936 result!198932))

(assert (=> d!875527 t!237230))

(declare-fun b_and!212569 () Bool)

(assert (= b_and!212545 (and (=> t!237230 result!198936) b_and!212569)))

(declare-fun tb!156657 () Bool)

(declare-fun t!237232 () Bool)

(assert (=> (and b!3197407 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237232) tb!156657))

(declare-fun result!198938 () Bool)

(assert (= result!198938 result!198932))

(assert (=> d!875527 t!237232))

(declare-fun b_and!212571 () Bool)

(assert (= b_and!212553 (and (=> t!237232 result!198938) b_and!212571)))

(declare-fun t!237234 () Bool)

(declare-fun tb!156659 () Bool)

(assert (=> (and b!3198049 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237234) tb!156659))

(declare-fun result!198940 () Bool)

(assert (= result!198940 result!198932))

(assert (=> d!875527 t!237234))

(declare-fun b_and!212573 () Bool)

(assert (= b_and!212551 (and (=> t!237234 result!198940) b_and!212573)))

(assert (=> d!875527 m!3458639))

(declare-fun m!3460909 () Bool)

(assert (=> d!875527 m!3460909))

(assert (=> d!875527 m!3458639))

(declare-fun m!3460911 () Bool)

(assert (=> d!875527 m!3460911))

(declare-fun m!3460913 () Bool)

(assert (=> d!875527 m!3460913))

(declare-fun m!3460915 () Bool)

(assert (=> d!875527 m!3460915))

(assert (=> d!875527 m!3458639))

(assert (=> d!875527 m!3460913))

(assert (=> d!875527 m!3460915))

(declare-fun m!3460917 () Bool)

(assert (=> d!875527 m!3460917))

(assert (=> b!3197559 d!875527))

(assert (=> b!3197559 d!874943))

(declare-fun d!875529 () Bool)

(declare-fun lt!1078363 () Int)

(assert (=> d!875529 (= lt!1078363 (size!27145 (list!12809 (seqFromList!3456 (_1!20841 lt!1077755)))))))

(assert (=> d!875529 (= lt!1078363 (size!27154 (c!536749 (seqFromList!3456 (_1!20841 lt!1077755)))))))

(assert (=> d!875529 (= (size!27148 (seqFromList!3456 (_1!20841 lt!1077755))) lt!1078363)))

(declare-fun bs!540832 () Bool)

(assert (= bs!540832 d!875529))

(assert (=> bs!540832 m!3458639))

(assert (=> bs!540832 m!3460911))

(assert (=> bs!540832 m!3460911))

(declare-fun m!3460919 () Bool)

(assert (=> bs!540832 m!3460919))

(declare-fun m!3460921 () Bool)

(assert (=> bs!540832 m!3460921))

(assert (=> b!3197559 d!875529))

(declare-fun d!875531 () Bool)

(assert (=> d!875531 (= (apply!8122 (transformation!5192 (rule!7626 (h!41464 tokens!494))) (seqFromList!3456 (_1!20841 lt!1077755))) (dynLambda!14517 (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (seqFromList!3456 (_1!20841 lt!1077755))))))

(declare-fun b_lambda!87429 () Bool)

(assert (=> (not b_lambda!87429) (not d!875531)))

(assert (=> d!875531 t!237232))

(declare-fun b_and!212575 () Bool)

(assert (= b_and!212571 (and (=> t!237232 result!198938) b_and!212575)))

(assert (=> d!875531 t!237234))

(declare-fun b_and!212577 () Bool)

(assert (= b_and!212573 (and (=> t!237234 result!198940) b_and!212577)))

(assert (=> d!875531 t!237230))

(declare-fun b_and!212579 () Bool)

(assert (= b_and!212569 (and (=> t!237230 result!198936) b_and!212579)))

(assert (=> d!875531 t!237228))

(declare-fun b_and!212581 () Bool)

(assert (= b_and!212567 (and (=> t!237228 result!198934) b_and!212581)))

(assert (=> d!875531 t!237226))

(declare-fun b_and!212583 () Bool)

(assert (= b_and!212565 (and (=> t!237226 result!198932) b_and!212583)))

(assert (=> d!875531 m!3458639))

(assert (=> d!875531 m!3460913))

(assert (=> b!3197559 d!875531))

(declare-fun d!875533 () Bool)

(assert (=> d!875533 (= (isEmpty!20133 (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))) ((_ is Nil!36043) (_1!20841 (findLongestMatchInner!824 (regex!5192 (rule!7626 (h!41464 tokens!494))) Nil!36043 (size!27145 Nil!36043) lt!1077706 lt!1077706 (size!27145 lt!1077706)))))))

(assert (=> b!3197559 d!875533))

(declare-fun b!3199209 () Bool)

(declare-fun e!1994403 () List!36167)

(assert (=> b!3199209 (= e!1994403 (list!12817 (xs!13877 (c!536749 (charsOf!3208 (h!41464 tokens!494))))))))

(declare-fun d!875535 () Bool)

(declare-fun c!537206 () Bool)

(assert (=> d!875535 (= c!537206 ((_ is Empty!10759) (c!536749 (charsOf!3208 (h!41464 tokens!494)))))))

(declare-fun e!1994402 () List!36167)

(assert (=> d!875535 (= (list!12813 (c!536749 (charsOf!3208 (h!41464 tokens!494)))) e!1994402)))

(declare-fun b!3199207 () Bool)

(assert (=> b!3199207 (= e!1994402 Nil!36043)))

(declare-fun b!3199210 () Bool)

(assert (=> b!3199210 (= e!1994403 (++!8630 (list!12813 (left!28009 (c!536749 (charsOf!3208 (h!41464 tokens!494))))) (list!12813 (right!28339 (c!536749 (charsOf!3208 (h!41464 tokens!494)))))))))

(declare-fun b!3199208 () Bool)

(assert (=> b!3199208 (= e!1994402 e!1994403)))

(declare-fun c!537207 () Bool)

(assert (=> b!3199208 (= c!537207 ((_ is Leaf!16966) (c!536749 (charsOf!3208 (h!41464 tokens!494)))))))

(assert (= (and d!875535 c!537206) b!3199207))

(assert (= (and d!875535 (not c!537206)) b!3199208))

(assert (= (and b!3199208 c!537207) b!3199209))

(assert (= (and b!3199208 (not c!537207)) b!3199210))

(declare-fun m!3460923 () Bool)

(assert (=> b!3199209 m!3460923))

(declare-fun m!3460925 () Bool)

(assert (=> b!3199210 m!3460925))

(declare-fun m!3460927 () Bool)

(assert (=> b!3199210 m!3460927))

(assert (=> b!3199210 m!3460925))

(assert (=> b!3199210 m!3460927))

(declare-fun m!3460929 () Bool)

(assert (=> b!3199210 m!3460929))

(assert (=> d!874703 d!875535))

(assert (=> b!3197869 d!874951))

(assert (=> b!3197869 d!874953))

(declare-fun d!875537 () Bool)

(declare-fun e!1994404 () Bool)

(assert (=> d!875537 e!1994404))

(declare-fun res!1301626 () Bool)

(assert (=> d!875537 (=> (not res!1301626) (not e!1994404))))

(declare-fun lt!1078364 () List!36167)

(assert (=> d!875537 (= res!1301626 (= (content!4869 lt!1078364) ((_ map or) (content!4869 (t!236994 lt!1077696)) (content!4869 lt!1077693))))))

(declare-fun e!1994405 () List!36167)

(assert (=> d!875537 (= lt!1078364 e!1994405)))

(declare-fun c!537208 () Bool)

(assert (=> d!875537 (= c!537208 ((_ is Nil!36043) (t!236994 lt!1077696)))))

(assert (=> d!875537 (= (++!8630 (t!236994 lt!1077696) lt!1077693) lt!1078364)))

(declare-fun b!3199213 () Bool)

(declare-fun res!1301627 () Bool)

(assert (=> b!3199213 (=> (not res!1301627) (not e!1994404))))

(assert (=> b!3199213 (= res!1301627 (= (size!27145 lt!1078364) (+ (size!27145 (t!236994 lt!1077696)) (size!27145 lt!1077693))))))

(declare-fun b!3199212 () Bool)

(assert (=> b!3199212 (= e!1994405 (Cons!36043 (h!41463 (t!236994 lt!1077696)) (++!8630 (t!236994 (t!236994 lt!1077696)) lt!1077693)))))

(declare-fun b!3199214 () Bool)

(assert (=> b!3199214 (= e!1994404 (or (not (= lt!1077693 Nil!36043)) (= lt!1078364 (t!236994 lt!1077696))))))

(declare-fun b!3199211 () Bool)

(assert (=> b!3199211 (= e!1994405 lt!1077693)))

(assert (= (and d!875537 c!537208) b!3199211))

(assert (= (and d!875537 (not c!537208)) b!3199212))

(assert (= (and d!875537 res!1301626) b!3199213))

(assert (= (and b!3199213 res!1301627) b!3199214))

(declare-fun m!3460931 () Bool)

(assert (=> d!875537 m!3460931))

(assert (=> d!875537 m!3459711))

(assert (=> d!875537 m!3459007))

(declare-fun m!3460933 () Bool)

(assert (=> b!3199213 m!3460933))

(assert (=> b!3199213 m!3460003))

(assert (=> b!3199213 m!3459011))

(declare-fun m!3460935 () Bool)

(assert (=> b!3199212 m!3460935))

(assert (=> b!3197916 d!875537))

(declare-fun d!875539 () Bool)

(declare-fun c!537209 () Bool)

(assert (=> d!875539 (= c!537209 ((_ is Node!10759) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))))))

(declare-fun e!1994406 () Bool)

(assert (=> d!875539 (= (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))) e!1994406)))

(declare-fun b!3199215 () Bool)

(assert (=> b!3199215 (= e!1994406 (inv!48899 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))))))

(declare-fun b!3199216 () Bool)

(declare-fun e!1994407 () Bool)

(assert (=> b!3199216 (= e!1994406 e!1994407)))

(declare-fun res!1301628 () Bool)

(assert (=> b!3199216 (= res!1301628 (not ((_ is Leaf!16966) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))))))))

(assert (=> b!3199216 (=> res!1301628 e!1994407)))

(declare-fun b!3199217 () Bool)

(assert (=> b!3199217 (= e!1994407 (inv!48900 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))))))

(assert (= (and d!875539 c!537209) b!3199215))

(assert (= (and d!875539 (not c!537209)) b!3199216))

(assert (= (and b!3199216 (not res!1301628)) b!3199217))

(declare-fun m!3460937 () Bool)

(assert (=> b!3199215 m!3460937))

(declare-fun m!3460939 () Bool)

(assert (=> b!3199217 m!3460939))

(assert (=> b!3197704 d!875539))

(declare-fun d!875541 () Bool)

(assert (=> d!875541 (= (inv!16 (value!168432 separatorToken!241)) (= (charsToInt!0 (text!38401 (value!168432 separatorToken!241))) (value!168423 (value!168432 separatorToken!241))))))

(declare-fun bs!540833 () Bool)

(assert (= bs!540833 d!875541))

(declare-fun m!3460941 () Bool)

(assert (=> bs!540833 m!3460941))

(assert (=> b!3197954 d!875541))

(assert (=> b!3197590 d!874935))

(assert (=> b!3197590 d!874687))

(declare-fun d!875543 () Bool)

(declare-fun e!1994408 () Bool)

(assert (=> d!875543 e!1994408))

(declare-fun res!1301629 () Bool)

(assert (=> d!875543 (=> (not res!1301629) (not e!1994408))))

(declare-fun lt!1078365 () List!36167)

(assert (=> d!875543 (= res!1301629 (= (content!4869 lt!1078365) ((_ map or) (content!4869 (t!236994 (++!8630 lt!1077706 lt!1077696))) (content!4869 lt!1077693))))))

(declare-fun e!1994409 () List!36167)

(assert (=> d!875543 (= lt!1078365 e!1994409)))

(declare-fun c!537210 () Bool)

(assert (=> d!875543 (= c!537210 ((_ is Nil!36043) (t!236994 (++!8630 lt!1077706 lt!1077696))))))

(assert (=> d!875543 (= (++!8630 (t!236994 (++!8630 lt!1077706 lt!1077696)) lt!1077693) lt!1078365)))

(declare-fun b!3199220 () Bool)

(declare-fun res!1301630 () Bool)

(assert (=> b!3199220 (=> (not res!1301630) (not e!1994408))))

(assert (=> b!3199220 (= res!1301630 (= (size!27145 lt!1078365) (+ (size!27145 (t!236994 (++!8630 lt!1077706 lt!1077696))) (size!27145 lt!1077693))))))

(declare-fun b!3199219 () Bool)

(assert (=> b!3199219 (= e!1994409 (Cons!36043 (h!41463 (t!236994 (++!8630 lt!1077706 lt!1077696))) (++!8630 (t!236994 (t!236994 (++!8630 lt!1077706 lt!1077696))) lt!1077693)))))

(declare-fun b!3199221 () Bool)

(assert (=> b!3199221 (= e!1994408 (or (not (= lt!1077693 Nil!36043)) (= lt!1078365 (t!236994 (++!8630 lt!1077706 lt!1077696)))))))

(declare-fun b!3199218 () Bool)

(assert (=> b!3199218 (= e!1994409 lt!1077693)))

(assert (= (and d!875543 c!537210) b!3199218))

(assert (= (and d!875543 (not c!537210)) b!3199219))

(assert (= (and d!875543 res!1301629) b!3199220))

(assert (= (and b!3199220 res!1301630) b!3199221))

(declare-fun m!3460943 () Bool)

(assert (=> d!875543 m!3460943))

(declare-fun m!3460945 () Bool)

(assert (=> d!875543 m!3460945))

(assert (=> d!875543 m!3459007))

(declare-fun m!3460947 () Bool)

(assert (=> b!3199220 m!3460947))

(assert (=> b!3199220 m!3460721))

(assert (=> b!3199220 m!3459011))

(declare-fun m!3460949 () Bool)

(assert (=> b!3199219 m!3460949))

(assert (=> b!3197944 d!875543))

(declare-fun d!875545 () Bool)

(declare-fun res!1301631 () Bool)

(declare-fun e!1994410 () Bool)

(assert (=> d!875545 (=> res!1301631 e!1994410)))

(assert (=> d!875545 (= res!1301631 ((_ is Nil!36044) (t!236995 tokens!494)))))

(assert (=> d!875545 (= (forall!7338 (t!236995 tokens!494) lambda!117051) e!1994410)))

(declare-fun b!3199222 () Bool)

(declare-fun e!1994411 () Bool)

(assert (=> b!3199222 (= e!1994410 e!1994411)))

(declare-fun res!1301632 () Bool)

(assert (=> b!3199222 (=> (not res!1301632) (not e!1994411))))

(assert (=> b!3199222 (= res!1301632 (dynLambda!14516 lambda!117051 (h!41464 (t!236995 tokens!494))))))

(declare-fun b!3199223 () Bool)

(assert (=> b!3199223 (= e!1994411 (forall!7338 (t!236995 (t!236995 tokens!494)) lambda!117051))))

(assert (= (and d!875545 (not res!1301631)) b!3199222))

(assert (= (and b!3199222 res!1301632) b!3199223))

(declare-fun b_lambda!87431 () Bool)

(assert (=> (not b_lambda!87431) (not b!3199222)))

(assert (=> b!3199222 m!3458487))

(declare-fun m!3460951 () Bool)

(assert (=> b!3199223 m!3460951))

(assert (=> b!3197856 d!875545))

(declare-fun d!875547 () Bool)

(declare-fun lt!1078366 () Bool)

(assert (=> d!875547 (= lt!1078366 (select (content!4873 rules!2135) (get!11463 lt!1077764)))))

(declare-fun e!1994412 () Bool)

(assert (=> d!875547 (= lt!1078366 e!1994412)))

(declare-fun res!1301634 () Bool)

(assert (=> d!875547 (=> (not res!1301634) (not e!1994412))))

(assert (=> d!875547 (= res!1301634 ((_ is Cons!36045) rules!2135))))

(assert (=> d!875547 (= (contains!6405 rules!2135 (get!11463 lt!1077764)) lt!1078366)))

(declare-fun b!3199224 () Bool)

(declare-fun e!1994413 () Bool)

(assert (=> b!3199224 (= e!1994412 e!1994413)))

(declare-fun res!1301633 () Bool)

(assert (=> b!3199224 (=> res!1301633 e!1994413)))

(assert (=> b!3199224 (= res!1301633 (= (h!41465 rules!2135) (get!11463 lt!1077764)))))

(declare-fun b!3199225 () Bool)

(assert (=> b!3199225 (= e!1994413 (contains!6405 (t!236996 rules!2135) (get!11463 lt!1077764)))))

(assert (= (and d!875547 res!1301634) b!3199224))

(assert (= (and b!3199224 (not res!1301633)) b!3199225))

(assert (=> d!875547 m!3460073))

(assert (=> d!875547 m!3458657))

(declare-fun m!3460953 () Bool)

(assert (=> d!875547 m!3460953))

(assert (=> b!3199225 m!3458657))

(declare-fun m!3460955 () Bool)

(assert (=> b!3199225 m!3460955))

(assert (=> b!3197580 d!875547))

(assert (=> b!3197580 d!875511))

(declare-fun d!875549 () Bool)

(assert (=> d!875549 (= (list!12809 lt!1077870) (list!12813 (c!536749 lt!1077870)))))

(declare-fun bs!540834 () Bool)

(assert (= bs!540834 d!875549))

(declare-fun m!3460957 () Bool)

(assert (=> bs!540834 m!3460957))

(assert (=> d!874789 d!875549))

(declare-fun d!875551 () Bool)

(declare-fun c!537211 () Bool)

(assert (=> d!875551 (= c!537211 ((_ is Cons!36044) (list!12810 lt!1077704)))))

(declare-fun e!1994414 () List!36167)

(assert (=> d!875551 (= (printList!1331 thiss!18206 (list!12810 lt!1077704)) e!1994414)))

(declare-fun b!3199226 () Bool)

(assert (=> b!3199226 (= e!1994414 (++!8630 (list!12809 (charsOf!3208 (h!41464 (list!12810 lt!1077704)))) (printList!1331 thiss!18206 (t!236995 (list!12810 lt!1077704)))))))

(declare-fun b!3199227 () Bool)

(assert (=> b!3199227 (= e!1994414 Nil!36043)))

(assert (= (and d!875551 c!537211) b!3199226))

(assert (= (and d!875551 (not c!537211)) b!3199227))

(declare-fun m!3460959 () Bool)

(assert (=> b!3199226 m!3460959))

(assert (=> b!3199226 m!3460959))

(declare-fun m!3460961 () Bool)

(assert (=> b!3199226 m!3460961))

(declare-fun m!3460963 () Bool)

(assert (=> b!3199226 m!3460963))

(assert (=> b!3199226 m!3460961))

(assert (=> b!3199226 m!3460963))

(declare-fun m!3460965 () Bool)

(assert (=> b!3199226 m!3460965))

(assert (=> d!874789 d!875551))

(assert (=> d!874789 d!875315))

(assert (=> d!874789 d!874799))

(assert (=> b!3197678 d!874705))

(declare-fun b!3199228 () Bool)

(declare-fun res!1301636 () Bool)

(declare-fun e!1994421 () Bool)

(assert (=> b!3199228 (=> res!1301636 e!1994421)))

(assert (=> b!3199228 (= res!1301636 (not ((_ is ElementMatch!9951) (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))))

(declare-fun e!1994420 () Bool)

(assert (=> b!3199228 (= e!1994420 e!1994421)))

(declare-fun b!3199229 () Bool)

(declare-fun e!1994419 () Bool)

(assert (=> b!3199229 (= e!1994421 e!1994419)))

(declare-fun res!1301637 () Bool)

(assert (=> b!3199229 (=> (not res!1301637) (not e!1994419))))

(declare-fun lt!1078367 () Bool)

(assert (=> b!3199229 (= res!1301637 (not lt!1078367))))

(declare-fun b!3199230 () Bool)

(declare-fun res!1301639 () Bool)

(declare-fun e!1994416 () Bool)

(assert (=> b!3199230 (=> res!1301639 e!1994416)))

(assert (=> b!3199230 (= res!1301639 (not (isEmpty!20133 (tail!5199 (list!12809 (charsOf!3208 (h!41464 tokens!494)))))))))

(declare-fun b!3199231 () Bool)

(declare-fun e!1994415 () Bool)

(assert (=> b!3199231 (= e!1994415 e!1994420)))

(declare-fun c!537212 () Bool)

(assert (=> b!3199231 (= c!537212 ((_ is EmptyLang!9951) (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))))))))

(declare-fun b!3199232 () Bool)

(declare-fun e!1994418 () Bool)

(assert (=> b!3199232 (= e!1994418 (matchR!4585 (derivativeStep!2945 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))) (head!7005 (list!12809 (charsOf!3208 (h!41464 tokens!494))))) (tail!5199 (list!12809 (charsOf!3208 (h!41464 tokens!494))))))))

(declare-fun d!875553 () Bool)

(assert (=> d!875553 e!1994415))

(declare-fun c!537213 () Bool)

(assert (=> d!875553 (= c!537213 ((_ is EmptyExpr!9951) (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))))))))

(assert (=> d!875553 (= lt!1078367 e!1994418)))

(declare-fun c!537214 () Bool)

(assert (=> d!875553 (= c!537214 (isEmpty!20133 (list!12809 (charsOf!3208 (h!41464 tokens!494)))))))

(assert (=> d!875553 (validRegex!4544 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))

(assert (=> d!875553 (= (matchR!4585 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))) (list!12809 (charsOf!3208 (h!41464 tokens!494)))) lt!1078367)))

(declare-fun e!1994417 () Bool)

(declare-fun b!3199233 () Bool)

(assert (=> b!3199233 (= e!1994417 (= (head!7005 (list!12809 (charsOf!3208 (h!41464 tokens!494)))) (c!536748 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494)))))))))))

(declare-fun b!3199234 () Bool)

(assert (=> b!3199234 (= e!1994420 (not lt!1078367))))

(declare-fun b!3199235 () Bool)

(declare-fun res!1301638 () Bool)

(assert (=> b!3199235 (=> (not res!1301638) (not e!1994417))))

(declare-fun call!231726 () Bool)

(assert (=> b!3199235 (= res!1301638 (not call!231726))))

(declare-fun b!3199236 () Bool)

(assert (=> b!3199236 (= e!1994418 (nullable!3392 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))))))))

(declare-fun b!3199237 () Bool)

(assert (=> b!3199237 (= e!1994415 (= lt!1078367 call!231726))))

(declare-fun bm!231721 () Bool)

(assert (=> bm!231721 (= call!231726 (isEmpty!20133 (list!12809 (charsOf!3208 (h!41464 tokens!494)))))))

(declare-fun b!3199238 () Bool)

(declare-fun res!1301635 () Bool)

(assert (=> b!3199238 (=> (not res!1301635) (not e!1994417))))

(assert (=> b!3199238 (= res!1301635 (isEmpty!20133 (tail!5199 (list!12809 (charsOf!3208 (h!41464 tokens!494))))))))

(declare-fun b!3199239 () Bool)

(declare-fun res!1301642 () Bool)

(assert (=> b!3199239 (=> res!1301642 e!1994421)))

(assert (=> b!3199239 (= res!1301642 e!1994417)))

(declare-fun res!1301641 () Bool)

(assert (=> b!3199239 (=> (not res!1301641) (not e!1994417))))

(assert (=> b!3199239 (= res!1301641 lt!1078367)))

(declare-fun b!3199240 () Bool)

(assert (=> b!3199240 (= e!1994419 e!1994416)))

(declare-fun res!1301640 () Bool)

(assert (=> b!3199240 (=> res!1301640 e!1994416)))

(assert (=> b!3199240 (= res!1301640 call!231726)))

(declare-fun b!3199241 () Bool)

(assert (=> b!3199241 (= e!1994416 (not (= (head!7005 (list!12809 (charsOf!3208 (h!41464 tokens!494)))) (c!536748 (regex!5192 (get!11463 (getRuleFromTag!897 thiss!18206 rules!2135 (tag!5712 (rule!7626 (h!41464 tokens!494))))))))))))

(assert (= (and d!875553 c!537214) b!3199236))

(assert (= (and d!875553 (not c!537214)) b!3199232))

(assert (= (and d!875553 c!537213) b!3199237))

(assert (= (and d!875553 (not c!537213)) b!3199231))

(assert (= (and b!3199231 c!537212) b!3199234))

(assert (= (and b!3199231 (not c!537212)) b!3199228))

(assert (= (and b!3199228 (not res!1301636)) b!3199239))

(assert (= (and b!3199239 res!1301641) b!3199235))

(assert (= (and b!3199235 res!1301638) b!3199238))

(assert (= (and b!3199238 res!1301635) b!3199233))

(assert (= (and b!3199239 (not res!1301642)) b!3199229))

(assert (= (and b!3199229 res!1301637) b!3199240))

(assert (= (and b!3199240 (not res!1301640)) b!3199230))

(assert (= (and b!3199230 (not res!1301639)) b!3199241))

(assert (= (or b!3199237 b!3199235 b!3199240) bm!231721))

(declare-fun m!3460967 () Bool)

(assert (=> b!3199236 m!3460967))

(assert (=> b!3199230 m!3458295))

(declare-fun m!3460969 () Bool)

(assert (=> b!3199230 m!3460969))

(assert (=> b!3199230 m!3460969))

(declare-fun m!3460971 () Bool)

(assert (=> b!3199230 m!3460971))

(assert (=> b!3199233 m!3458295))

(declare-fun m!3460973 () Bool)

(assert (=> b!3199233 m!3460973))

(assert (=> b!3199241 m!3458295))

(assert (=> b!3199241 m!3460973))

(assert (=> b!3199232 m!3458295))

(assert (=> b!3199232 m!3460973))

(assert (=> b!3199232 m!3460973))

(declare-fun m!3460975 () Bool)

(assert (=> b!3199232 m!3460975))

(assert (=> b!3199232 m!3458295))

(assert (=> b!3199232 m!3460969))

(assert (=> b!3199232 m!3460975))

(assert (=> b!3199232 m!3460969))

(declare-fun m!3460977 () Bool)

(assert (=> b!3199232 m!3460977))

(assert (=> b!3199238 m!3458295))

(assert (=> b!3199238 m!3460969))

(assert (=> b!3199238 m!3460969))

(assert (=> b!3199238 m!3460971))

(assert (=> d!875553 m!3458295))

(declare-fun m!3460979 () Bool)

(assert (=> d!875553 m!3460979))

(declare-fun m!3460981 () Bool)

(assert (=> d!875553 m!3460981))

(assert (=> bm!231721 m!3458295))

(assert (=> bm!231721 m!3460979))

(assert (=> b!3197678 d!875553))

(assert (=> b!3197678 d!874663))

(assert (=> b!3197678 d!875425))

(assert (=> b!3197678 d!874703))

(declare-fun d!875555 () Bool)

(declare-fun c!537215 () Bool)

(assert (=> d!875555 (= c!537215 ((_ is Nil!36043) lt!1077855))))

(declare-fun e!1994426 () (InoxSet C!20088))

(assert (=> d!875555 (= (content!4869 lt!1077855) e!1994426)))

(declare-fun b!3199246 () Bool)

(assert (=> b!3199246 (= e!1994426 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199247 () Bool)

(assert (=> b!3199247 (= e!1994426 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077855) true) (content!4869 (t!236994 lt!1077855))))))

(assert (= (and d!875555 c!537215) b!3199246))

(assert (= (and d!875555 (not c!537215)) b!3199247))

(declare-fun m!3460983 () Bool)

(assert (=> b!3199247 m!3460983))

(declare-fun m!3460985 () Bool)

(assert (=> b!3199247 m!3460985))

(assert (=> d!874767 d!875555))

(assert (=> d!874767 d!874991))

(declare-fun d!875557 () Bool)

(declare-fun c!537216 () Bool)

(assert (=> d!875557 (= c!537216 ((_ is Nil!36043) lt!1077693))))

(declare-fun e!1994427 () (InoxSet C!20088))

(assert (=> d!875557 (= (content!4869 lt!1077693) e!1994427)))

(declare-fun b!3199248 () Bool)

(assert (=> b!3199248 (= e!1994427 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199249 () Bool)

(assert (=> b!3199249 (= e!1994427 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077693) true) (content!4869 (t!236994 lt!1077693))))))

(assert (= (and d!875557 c!537216) b!3199248))

(assert (= (and d!875557 (not c!537216)) b!3199249))

(declare-fun m!3460987 () Bool)

(assert (=> b!3199249 m!3460987))

(declare-fun m!3460989 () Bool)

(assert (=> b!3199249 m!3460989))

(assert (=> d!874767 d!875557))

(declare-fun d!875559 () Bool)

(assert (=> d!875559 (= (isEmpty!20133 (originalCharacters!5906 (h!41464 tokens!494))) ((_ is Nil!36043) (originalCharacters!5906 (h!41464 tokens!494))))))

(assert (=> d!874615 d!875559))

(declare-fun d!875561 () Bool)

(assert (=> d!875561 (= (list!12809 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))) (list!12813 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))))))

(declare-fun bs!540835 () Bool)

(assert (= bs!540835 d!875561))

(declare-fun m!3460991 () Bool)

(assert (=> bs!540835 m!3460991))

(assert (=> b!3197702 d!875561))

(declare-fun d!875563 () Bool)

(declare-fun c!537217 () Bool)

(assert (=> d!875563 (= c!537217 ((_ is Nil!36043) lt!1077860))))

(declare-fun e!1994428 () (InoxSet C!20088))

(assert (=> d!875563 (= (content!4869 lt!1077860) e!1994428)))

(declare-fun b!3199250 () Bool)

(assert (=> b!3199250 (= e!1994428 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199251 () Bool)

(assert (=> b!3199251 (= e!1994428 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 lt!1077860) true) (content!4869 (t!236994 lt!1077860))))))

(assert (= (and d!875563 c!537217) b!3199250))

(assert (= (and d!875563 (not c!537217)) b!3199251))

(declare-fun m!3460993 () Bool)

(assert (=> b!3199251 m!3460993))

(declare-fun m!3460995 () Bool)

(assert (=> b!3199251 m!3460995))

(assert (=> d!874779 d!875563))

(declare-fun d!875565 () Bool)

(declare-fun c!537218 () Bool)

(assert (=> d!875565 (= c!537218 ((_ is Nil!36043) (++!8630 lt!1077706 lt!1077696)))))

(declare-fun e!1994429 () (InoxSet C!20088))

(assert (=> d!875565 (= (content!4869 (++!8630 lt!1077706 lt!1077696)) e!1994429)))

(declare-fun b!3199252 () Bool)

(assert (=> b!3199252 (= e!1994429 ((as const (Array C!20088 Bool)) false))))

(declare-fun b!3199253 () Bool)

(assert (=> b!3199253 (= e!1994429 ((_ map or) (store ((as const (Array C!20088 Bool)) false) (h!41463 (++!8630 lt!1077706 lt!1077696)) true) (content!4869 (t!236994 (++!8630 lt!1077706 lt!1077696)))))))

(assert (= (and d!875565 c!537218) b!3199252))

(assert (= (and d!875565 (not c!537218)) b!3199253))

(declare-fun m!3460997 () Bool)

(assert (=> b!3199253 m!3460997))

(assert (=> b!3199253 m!3460945))

(assert (=> d!874779 d!875565))

(assert (=> d!874779 d!875557))

(declare-fun d!875567 () Bool)

(declare-fun lt!1078368 () Int)

(assert (=> d!875567 (= lt!1078368 (size!27150 (list!12810 (_1!20839 lt!1077801))))))

(assert (=> d!875567 (= lt!1078368 (size!27151 (c!536750 (_1!20839 lt!1077801))))))

(assert (=> d!875567 (= (size!27146 (_1!20839 lt!1077801)) lt!1078368)))

(declare-fun bs!540836 () Bool)

(assert (= bs!540836 d!875567))

(assert (=> bs!540836 m!3458765))

(assert (=> bs!540836 m!3458765))

(declare-fun m!3460999 () Bool)

(assert (=> bs!540836 m!3460999))

(declare-fun m!3461001 () Bool)

(assert (=> bs!540836 m!3461001))

(assert (=> d!874695 d!875567))

(declare-fun d!875569 () Bool)

(declare-fun e!1994547 () Bool)

(assert (=> d!875569 e!1994547))

(declare-fun res!1301733 () Bool)

(assert (=> d!875569 (=> (not res!1301733) (not e!1994547))))

(declare-fun lt!1078573 () tuple2!35410)

(declare-fun lexRec!680 (LexerInterface!4781 List!36169 BalanceConc!21132) tuple2!35410)

(assert (=> d!875569 (= res!1301733 (= (list!12810 (_1!20839 lt!1078573)) (list!12810 (_1!20839 (lexRec!680 thiss!18206 rules!2135 lt!1077699)))))))

(declare-fun e!1994549 () tuple2!35410)

(assert (=> d!875569 (= lt!1078573 e!1994549)))

(declare-fun c!537281 () Bool)

(declare-datatypes ((tuple2!35422 0))(
  ( (tuple2!35423 (_1!20845 Token!9750) (_2!20845 BalanceConc!21132)) )
))
(declare-datatypes ((Option!7079 0))(
  ( (None!7078) (Some!7078 (v!35608 tuple2!35422)) )
))
(declare-fun lt!1078543 () Option!7079)

(assert (=> d!875569 (= c!537281 ((_ is Some!7078) lt!1078543))))

(declare-fun maxPrefixZipperSequenceV2!467 (LexerInterface!4781 List!36169 BalanceConc!21132 BalanceConc!21132) Option!7079)

(assert (=> d!875569 (= lt!1078543 (maxPrefixZipperSequenceV2!467 thiss!18206 rules!2135 lt!1077699 lt!1077699))))

(declare-fun lt!1078570 () Unit!50442)

(declare-fun lt!1078562 () Unit!50442)

(assert (=> d!875569 (= lt!1078570 lt!1078562)))

(declare-fun lt!1078556 () List!36167)

(declare-fun lt!1078552 () List!36167)

(declare-fun isSuffix!842 (List!36167 List!36167) Bool)

(assert (=> d!875569 (isSuffix!842 lt!1078556 (++!8630 lt!1078552 lt!1078556))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!527 (List!36167 List!36167) Unit!50442)

(assert (=> d!875569 (= lt!1078562 (lemmaConcatTwoListThenFSndIsSuffix!527 lt!1078552 lt!1078556))))

(assert (=> d!875569 (= lt!1078556 (list!12809 lt!1077699))))

(assert (=> d!875569 (= lt!1078552 (list!12809 (BalanceConc!21133 Empty!10759)))))

(assert (=> d!875569 (= (lexTailRecV2!927 thiss!18206 rules!2135 lt!1077699 (BalanceConc!21133 Empty!10759) lt!1077699 (BalanceConc!21135 Empty!10760)) lt!1078573)))

(declare-fun lt!1078567 () BalanceConc!21132)

(declare-fun b!3199455 () Bool)

(declare-fun append!860 (BalanceConc!21134 Token!9750) BalanceConc!21134)

(assert (=> b!3199455 (= e!1994549 (lexTailRecV2!927 thiss!18206 rules!2135 lt!1077699 lt!1078567 (_2!20845 (v!35608 lt!1078543)) (append!860 (BalanceConc!21135 Empty!10760) (_1!20845 (v!35608 lt!1078543)))))))

(declare-fun lt!1078550 () tuple2!35410)

(assert (=> b!3199455 (= lt!1078550 (lexRec!680 thiss!18206 rules!2135 (_2!20845 (v!35608 lt!1078543))))))

(declare-fun lt!1078561 () List!36167)

(assert (=> b!3199455 (= lt!1078561 (list!12809 (BalanceConc!21133 Empty!10759)))))

(declare-fun lt!1078557 () List!36167)

(assert (=> b!3199455 (= lt!1078557 (list!12809 (charsOf!3208 (_1!20845 (v!35608 lt!1078543)))))))

(declare-fun lt!1078554 () List!36167)

(assert (=> b!3199455 (= lt!1078554 (list!12809 (_2!20845 (v!35608 lt!1078543))))))

(declare-fun lt!1078555 () Unit!50442)

(assert (=> b!3199455 (= lt!1078555 (lemmaConcatAssociativity!1708 lt!1078561 lt!1078557 lt!1078554))))

(assert (=> b!3199455 (= (++!8630 (++!8630 lt!1078561 lt!1078557) lt!1078554) (++!8630 lt!1078561 (++!8630 lt!1078557 lt!1078554)))))

(declare-fun lt!1078571 () Unit!50442)

(assert (=> b!3199455 (= lt!1078571 lt!1078555)))

(declare-fun lt!1078564 () Option!7079)

(declare-fun maxPrefixZipperSequence!1073 (LexerInterface!4781 List!36169 BalanceConc!21132) Option!7079)

(assert (=> b!3199455 (= lt!1078564 (maxPrefixZipperSequence!1073 thiss!18206 rules!2135 lt!1077699))))

(declare-fun c!537283 () Bool)

(assert (=> b!3199455 (= c!537283 ((_ is Some!7078) lt!1078564))))

(declare-fun e!1994550 () tuple2!35410)

(assert (=> b!3199455 (= (lexRec!680 thiss!18206 rules!2135 lt!1077699) e!1994550)))

(declare-fun lt!1078569 () Unit!50442)

(declare-fun Unit!50450 () Unit!50442)

(assert (=> b!3199455 (= lt!1078569 Unit!50450)))

(declare-fun lt!1078546 () List!36168)

(assert (=> b!3199455 (= lt!1078546 (list!12810 (BalanceConc!21135 Empty!10760)))))

(declare-fun lt!1078563 () List!36168)

(assert (=> b!3199455 (= lt!1078563 (Cons!36044 (_1!20845 (v!35608 lt!1078543)) Nil!36044))))

(declare-fun lt!1078574 () List!36168)

(assert (=> b!3199455 (= lt!1078574 (list!12810 (_1!20839 lt!1078550)))))

(declare-fun lt!1078568 () Unit!50442)

(declare-fun lemmaConcatAssociativity!1709 (List!36168 List!36168 List!36168) Unit!50442)

(assert (=> b!3199455 (= lt!1078568 (lemmaConcatAssociativity!1709 lt!1078546 lt!1078563 lt!1078574))))

(declare-fun ++!8634 (List!36168 List!36168) List!36168)

(assert (=> b!3199455 (= (++!8634 (++!8634 lt!1078546 lt!1078563) lt!1078574) (++!8634 lt!1078546 (++!8634 lt!1078563 lt!1078574)))))

(declare-fun lt!1078551 () Unit!50442)

(assert (=> b!3199455 (= lt!1078551 lt!1078568)))

(declare-fun lt!1078548 () List!36167)

(assert (=> b!3199455 (= lt!1078548 (++!8630 (list!12809 (BalanceConc!21133 Empty!10759)) (list!12809 (charsOf!3208 (_1!20845 (v!35608 lt!1078543))))))))

(declare-fun lt!1078558 () List!36167)

(assert (=> b!3199455 (= lt!1078558 (list!12809 (_2!20845 (v!35608 lt!1078543))))))

(declare-fun lt!1078545 () List!36168)

(assert (=> b!3199455 (= lt!1078545 (list!12810 (append!860 (BalanceConc!21135 Empty!10760) (_1!20845 (v!35608 lt!1078543)))))))

(declare-fun lt!1078566 () Unit!50442)

(declare-fun lemmaLexThenLexPrefix!445 (LexerInterface!4781 List!36169 List!36167 List!36167 List!36168 List!36168 List!36167) Unit!50442)

(assert (=> b!3199455 (= lt!1078566 (lemmaLexThenLexPrefix!445 thiss!18206 rules!2135 lt!1078548 lt!1078558 lt!1078545 (list!12810 (_1!20839 lt!1078550)) (list!12809 (_2!20839 lt!1078550))))))

(assert (=> b!3199455 (= (lexList!1307 thiss!18206 rules!2135 lt!1078548) (tuple2!35419 lt!1078545 Nil!36043))))

(declare-fun lt!1078547 () Unit!50442)

(assert (=> b!3199455 (= lt!1078547 lt!1078566)))

(declare-fun lt!1078542 () BalanceConc!21132)

(assert (=> b!3199455 (= lt!1078542 (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (_1!20845 (v!35608 lt!1078543)))))))

(declare-fun lt!1078559 () Option!7079)

(assert (=> b!3199455 (= lt!1078559 (maxPrefixZipperSequence!1073 thiss!18206 rules!2135 lt!1078542))))

(declare-fun c!537282 () Bool)

(assert (=> b!3199455 (= c!537282 ((_ is Some!7078) lt!1078559))))

(declare-fun e!1994548 () tuple2!35410)

(assert (=> b!3199455 (= (lexRec!680 thiss!18206 rules!2135 (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (_1!20845 (v!35608 lt!1078543))))) e!1994548)))

(declare-fun lt!1078560 () Unit!50442)

(declare-fun Unit!50451 () Unit!50442)

(assert (=> b!3199455 (= lt!1078560 Unit!50451)))

(assert (=> b!3199455 (= lt!1078567 (++!8631 (BalanceConc!21133 Empty!10759) (charsOf!3208 (_1!20845 (v!35608 lt!1078543)))))))

(declare-fun lt!1078553 () List!36167)

(assert (=> b!3199455 (= lt!1078553 (list!12809 lt!1078567))))

(declare-fun lt!1078541 () List!36167)

(assert (=> b!3199455 (= lt!1078541 (list!12809 (_2!20845 (v!35608 lt!1078543))))))

(declare-fun lt!1078549 () Unit!50442)

(assert (=> b!3199455 (= lt!1078549 (lemmaConcatTwoListThenFSndIsSuffix!527 lt!1078553 lt!1078541))))

(assert (=> b!3199455 (isSuffix!842 lt!1078541 (++!8630 lt!1078553 lt!1078541))))

(declare-fun lt!1078565 () Unit!50442)

(assert (=> b!3199455 (= lt!1078565 lt!1078549)))

(declare-fun b!3199456 () Bool)

(assert (=> b!3199456 (= e!1994548 (tuple2!35411 (BalanceConc!21135 Empty!10760) lt!1078542))))

(declare-fun b!3199457 () Bool)

(assert (=> b!3199457 (= e!1994547 (= (list!12809 (_2!20839 lt!1078573)) (list!12809 (_2!20839 (lexRec!680 thiss!18206 rules!2135 lt!1077699)))))))

(declare-fun lt!1078572 () tuple2!35410)

(declare-fun b!3199458 () Bool)

(assert (=> b!3199458 (= lt!1078572 (lexRec!680 thiss!18206 rules!2135 (_2!20845 (v!35608 lt!1078559))))))

(declare-fun prepend!1168 (BalanceConc!21134 Token!9750) BalanceConc!21134)

(assert (=> b!3199458 (= e!1994548 (tuple2!35411 (prepend!1168 (_1!20839 lt!1078572) (_1!20845 (v!35608 lt!1078559))) (_2!20839 lt!1078572)))))

(declare-fun lt!1078544 () tuple2!35410)

(declare-fun b!3199459 () Bool)

(assert (=> b!3199459 (= lt!1078544 (lexRec!680 thiss!18206 rules!2135 (_2!20845 (v!35608 lt!1078564))))))

(assert (=> b!3199459 (= e!1994550 (tuple2!35411 (prepend!1168 (_1!20839 lt!1078544) (_1!20845 (v!35608 lt!1078564))) (_2!20839 lt!1078544)))))

(declare-fun b!3199460 () Bool)

(assert (=> b!3199460 (= e!1994550 (tuple2!35411 (BalanceConc!21135 Empty!10760) lt!1077699))))

(declare-fun b!3199461 () Bool)

(assert (=> b!3199461 (= e!1994549 (tuple2!35411 (BalanceConc!21135 Empty!10760) lt!1077699))))

(assert (= (and d!875569 c!537281) b!3199455))

(assert (= (and d!875569 (not c!537281)) b!3199461))

(assert (= (and b!3199455 c!537283) b!3199459))

(assert (= (and b!3199455 (not c!537283)) b!3199460))

(assert (= (and b!3199455 c!537282) b!3199458))

(assert (= (and b!3199455 (not c!537282)) b!3199456))

(assert (= (and d!875569 res!1301733) b!3199457))

(declare-fun m!3461343 () Bool)

(assert (=> d!875569 m!3461343))

(declare-fun m!3461345 () Bool)

(assert (=> d!875569 m!3461345))

(assert (=> d!875569 m!3458755))

(assert (=> d!875569 m!3459127))

(declare-fun m!3461347 () Bool)

(assert (=> d!875569 m!3461347))

(declare-fun m!3461349 () Bool)

(assert (=> d!875569 m!3461349))

(declare-fun m!3461351 () Bool)

(assert (=> d!875569 m!3461351))

(assert (=> d!875569 m!3461343))

(declare-fun m!3461353 () Bool)

(assert (=> d!875569 m!3461353))

(declare-fun m!3461355 () Bool)

(assert (=> d!875569 m!3461355))

(assert (=> b!3199455 m!3459127))

(declare-fun m!3461357 () Bool)

(assert (=> b!3199455 m!3461357))

(declare-fun m!3461359 () Bool)

(assert (=> b!3199455 m!3461359))

(assert (=> b!3199455 m!3461355))

(declare-fun m!3461361 () Bool)

(assert (=> b!3199455 m!3461361))

(declare-fun m!3461363 () Bool)

(assert (=> b!3199455 m!3461363))

(declare-fun m!3461365 () Bool)

(assert (=> b!3199455 m!3461365))

(declare-fun m!3461367 () Bool)

(assert (=> b!3199455 m!3461367))

(declare-fun m!3461369 () Bool)

(assert (=> b!3199455 m!3461369))

(declare-fun m!3461371 () Bool)

(assert (=> b!3199455 m!3461371))

(declare-fun m!3461373 () Bool)

(assert (=> b!3199455 m!3461373))

(assert (=> b!3199455 m!3461367))

(declare-fun m!3461375 () Bool)

(assert (=> b!3199455 m!3461375))

(declare-fun m!3461377 () Bool)

(assert (=> b!3199455 m!3461377))

(declare-fun m!3461379 () Bool)

(assert (=> b!3199455 m!3461379))

(declare-fun m!3461381 () Bool)

(assert (=> b!3199455 m!3461381))

(declare-fun m!3461383 () Bool)

(assert (=> b!3199455 m!3461383))

(declare-fun m!3461385 () Bool)

(assert (=> b!3199455 m!3461385))

(declare-fun m!3461387 () Bool)

(assert (=> b!3199455 m!3461387))

(declare-fun m!3461389 () Bool)

(assert (=> b!3199455 m!3461389))

(declare-fun m!3461391 () Bool)

(assert (=> b!3199455 m!3461391))

(declare-fun m!3461393 () Bool)

(assert (=> b!3199455 m!3461393))

(declare-fun m!3461395 () Bool)

(assert (=> b!3199455 m!3461395))

(assert (=> b!3199455 m!3461379))

(declare-fun m!3461397 () Bool)

(assert (=> b!3199455 m!3461397))

(assert (=> b!3199455 m!3461381))

(declare-fun m!3461399 () Bool)

(assert (=> b!3199455 m!3461399))

(assert (=> b!3199455 m!3461369))

(declare-fun m!3461401 () Bool)

(assert (=> b!3199455 m!3461401))

(declare-fun m!3461403 () Bool)

(assert (=> b!3199455 m!3461403))

(assert (=> b!3199455 m!3461395))

(declare-fun m!3461405 () Bool)

(assert (=> b!3199455 m!3461405))

(assert (=> b!3199455 m!3461365))

(declare-fun m!3461407 () Bool)

(assert (=> b!3199455 m!3461407))

(assert (=> b!3199455 m!3461383))

(assert (=> b!3199455 m!3461387))

(declare-fun m!3461409 () Bool)

(assert (=> b!3199455 m!3461409))

(assert (=> b!3199455 m!3461393))

(declare-fun m!3461411 () Bool)

(assert (=> b!3199455 m!3461411))

(declare-fun m!3461413 () Bool)

(assert (=> b!3199455 m!3461413))

(declare-fun m!3461415 () Bool)

(assert (=> b!3199455 m!3461415))

(assert (=> b!3199455 m!3461413))

(assert (=> b!3199455 m!3459127))

(declare-fun m!3461417 () Bool)

(assert (=> b!3199455 m!3461417))

(assert (=> b!3199455 m!3461365))

(assert (=> b!3199455 m!3461357))

(assert (=> b!3199455 m!3461387))

(declare-fun m!3461419 () Bool)

(assert (=> b!3199459 m!3461419))

(declare-fun m!3461421 () Bool)

(assert (=> b!3199459 m!3461421))

(declare-fun m!3461423 () Bool)

(assert (=> b!3199457 m!3461423))

(assert (=> b!3199457 m!3461355))

(declare-fun m!3461425 () Bool)

(assert (=> b!3199457 m!3461425))

(declare-fun m!3461427 () Bool)

(assert (=> b!3199458 m!3461427))

(declare-fun m!3461429 () Bool)

(assert (=> b!3199458 m!3461429))

(assert (=> d!874695 d!875569))

(declare-fun d!875691 () Bool)

(declare-fun lt!1078575 () Bool)

(assert (=> d!875691 (= lt!1078575 (isEmpty!20133 (list!12809 (_2!20839 lt!1077726))))))

(assert (=> d!875691 (= lt!1078575 (isEmpty!20144 (c!536749 (_2!20839 lt!1077726))))))

(assert (=> d!875691 (= (isEmpty!20132 (_2!20839 lt!1077726)) lt!1078575)))

(declare-fun bs!540859 () Bool)

(assert (= bs!540859 d!875691))

(declare-fun m!3461431 () Bool)

(assert (=> bs!540859 m!3461431))

(assert (=> bs!540859 m!3461431))

(declare-fun m!3461433 () Bool)

(assert (=> bs!540859 m!3461433))

(declare-fun m!3461435 () Bool)

(assert (=> bs!540859 m!3461435))

(assert (=> b!3197465 d!875691))

(declare-fun tp!1011067 () Bool)

(declare-fun e!1994555 () Bool)

(declare-fun tp!1011068 () Bool)

(declare-fun b!3199470 () Bool)

(assert (=> b!3199470 (= e!1994555 (and (inv!48895 (left!28009 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))))) tp!1011068 (inv!48895 (right!28339 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))))) tp!1011067))))

(declare-fun b!3199472 () Bool)

(declare-fun e!1994556 () Bool)

(declare-fun tp!1011066 () Bool)

(assert (=> b!3199472 (= e!1994556 tp!1011066)))

(declare-fun b!3199471 () Bool)

(declare-fun inv!48903 (IArray!21523) Bool)

(assert (=> b!3199471 (= e!1994555 (and (inv!48903 (xs!13877 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))))) e!1994556))))

(assert (=> b!3197477 (= tp!1010934 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494))))) e!1994555))))

(assert (= (and b!3197477 ((_ is Node!10759) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))))) b!3199470))

(assert (= b!3199471 b!3199472))

(assert (= (and b!3197477 ((_ is Leaf!16966) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (value!168432 (h!41464 tokens!494)))))) b!3199471))

(declare-fun m!3461437 () Bool)

(assert (=> b!3199470 m!3461437))

(declare-fun m!3461439 () Bool)

(assert (=> b!3199470 m!3461439))

(declare-fun m!3461441 () Bool)

(assert (=> b!3199471 m!3461441))

(assert (=> b!3197477 m!3458463))

(declare-fun b!3199473 () Bool)

(declare-fun e!1994557 () Bool)

(declare-fun tp!1011069 () Bool)

(assert (=> b!3199473 (= e!1994557 (and tp_is_empty!17283 tp!1011069))))

(assert (=> b!3198024 (= tp!1010941 e!1994557)))

(assert (= (and b!3198024 ((_ is Cons!36043) (t!236994 (originalCharacters!5906 (h!41464 tokens!494))))) b!3199473))

(declare-fun b!3199474 () Bool)

(declare-fun tp!1011071 () Bool)

(declare-fun tp!1011072 () Bool)

(declare-fun e!1994558 () Bool)

(assert (=> b!3199474 (= e!1994558 (and (inv!48895 (left!28009 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))))) tp!1011072 (inv!48895 (right!28339 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))))) tp!1011071))))

(declare-fun b!3199476 () Bool)

(declare-fun e!1994559 () Bool)

(declare-fun tp!1011070 () Bool)

(assert (=> b!3199476 (= e!1994559 tp!1011070)))

(declare-fun b!3199475 () Bool)

(assert (=> b!3199475 (= e!1994558 (and (inv!48903 (xs!13877 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))))) e!1994559))))

(assert (=> b!3197923 (= tp!1010938 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494)))))) e!1994558))))

(assert (= (and b!3197923 ((_ is Node!10759) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))))) b!3199474))

(assert (= b!3199475 b!3199476))

(assert (= (and b!3197923 ((_ is Leaf!16966) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (value!168432 (h!41464 (t!236995 tokens!494))))))) b!3199475))

(declare-fun m!3461443 () Bool)

(assert (=> b!3199474 m!3461443))

(declare-fun m!3461445 () Bool)

(assert (=> b!3199474 m!3461445))

(declare-fun m!3461447 () Bool)

(assert (=> b!3199475 m!3461447))

(assert (=> b!3197923 m!3459017))

(declare-fun b!3199479 () Bool)

(declare-fun e!1994560 () Bool)

(declare-fun tp!1011074 () Bool)

(assert (=> b!3199479 (= e!1994560 tp!1011074)))

(declare-fun b!3199477 () Bool)

(assert (=> b!3199477 (= e!1994560 tp_is_empty!17283)))

(declare-fun b!3199480 () Bool)

(declare-fun tp!1011075 () Bool)

(declare-fun tp!1011073 () Bool)

(assert (=> b!3199480 (= e!1994560 (and tp!1011075 tp!1011073))))

(declare-fun b!3199478 () Bool)

(declare-fun tp!1011077 () Bool)

(declare-fun tp!1011076 () Bool)

(assert (=> b!3199478 (= e!1994560 (and tp!1011077 tp!1011076))))

(assert (=> b!3198068 (= tp!1010987 e!1994560)))

(assert (= (and b!3198068 ((_ is ElementMatch!9951) (regOne!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199477))

(assert (= (and b!3198068 ((_ is Concat!15373) (regOne!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199478))

(assert (= (and b!3198068 ((_ is Star!9951) (regOne!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199479))

(assert (= (and b!3198068 ((_ is Union!9951) (regOne!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199480))

(declare-fun b!3199483 () Bool)

(declare-fun e!1994561 () Bool)

(declare-fun tp!1011079 () Bool)

(assert (=> b!3199483 (= e!1994561 tp!1011079)))

(declare-fun b!3199481 () Bool)

(assert (=> b!3199481 (= e!1994561 tp_is_empty!17283)))

(declare-fun b!3199484 () Bool)

(declare-fun tp!1011080 () Bool)

(declare-fun tp!1011078 () Bool)

(assert (=> b!3199484 (= e!1994561 (and tp!1011080 tp!1011078))))

(declare-fun b!3199482 () Bool)

(declare-fun tp!1011082 () Bool)

(declare-fun tp!1011081 () Bool)

(assert (=> b!3199482 (= e!1994561 (and tp!1011082 tp!1011081))))

(assert (=> b!3198068 (= tp!1010985 e!1994561)))

(assert (= (and b!3198068 ((_ is ElementMatch!9951) (regTwo!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199481))

(assert (= (and b!3198068 ((_ is Concat!15373) (regTwo!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199482))

(assert (= (and b!3198068 ((_ is Star!9951) (regTwo!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199483))

(assert (= (and b!3198068 ((_ is Union!9951) (regTwo!20415 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199484))

(declare-fun b!3199485 () Bool)

(declare-fun e!1994562 () Bool)

(declare-fun tp!1011083 () Bool)

(assert (=> b!3199485 (= e!1994562 (and tp_is_empty!17283 tp!1011083))))

(assert (=> b!3198062 (= tp!1010981 e!1994562)))

(assert (= (and b!3198062 ((_ is Cons!36043) (originalCharacters!5906 (h!41464 (t!236995 tokens!494))))) b!3199485))

(declare-fun b!3199488 () Bool)

(declare-fun e!1994563 () Bool)

(declare-fun tp!1011085 () Bool)

(assert (=> b!3199488 (= e!1994563 tp!1011085)))

(declare-fun b!3199486 () Bool)

(assert (=> b!3199486 (= e!1994563 tp_is_empty!17283)))

(declare-fun b!3199489 () Bool)

(declare-fun tp!1011086 () Bool)

(declare-fun tp!1011084 () Bool)

(assert (=> b!3199489 (= e!1994563 (and tp!1011086 tp!1011084))))

(declare-fun b!3199487 () Bool)

(declare-fun tp!1011088 () Bool)

(declare-fun tp!1011087 () Bool)

(assert (=> b!3199487 (= e!1994563 (and tp!1011088 tp!1011087))))

(assert (=> b!3198063 (= tp!1010980 e!1994563)))

(assert (= (and b!3198063 ((_ is ElementMatch!9951) (regex!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) b!3199486))

(assert (= (and b!3198063 ((_ is Concat!15373) (regex!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) b!3199487))

(assert (= (and b!3198063 ((_ is Star!9951) (regex!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) b!3199488))

(assert (= (and b!3198063 ((_ is Union!9951) (regex!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) b!3199489))

(declare-fun b!3199492 () Bool)

(declare-fun e!1994564 () Bool)

(declare-fun tp!1011090 () Bool)

(assert (=> b!3199492 (= e!1994564 tp!1011090)))

(declare-fun b!3199490 () Bool)

(assert (=> b!3199490 (= e!1994564 tp_is_empty!17283)))

(declare-fun b!3199493 () Bool)

(declare-fun tp!1011091 () Bool)

(declare-fun tp!1011089 () Bool)

(assert (=> b!3199493 (= e!1994564 (and tp!1011091 tp!1011089))))

(declare-fun b!3199491 () Bool)

(declare-fun tp!1011093 () Bool)

(declare-fun tp!1011092 () Bool)

(assert (=> b!3199491 (= e!1994564 (and tp!1011093 tp!1011092))))

(assert (=> b!3198066 (= tp!1010989 e!1994564)))

(assert (= (and b!3198066 ((_ is ElementMatch!9951) (regOne!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199490))

(assert (= (and b!3198066 ((_ is Concat!15373) (regOne!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199491))

(assert (= (and b!3198066 ((_ is Star!9951) (regOne!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199492))

(assert (= (and b!3198066 ((_ is Union!9951) (regOne!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199493))

(declare-fun b!3199496 () Bool)

(declare-fun e!1994565 () Bool)

(declare-fun tp!1011095 () Bool)

(assert (=> b!3199496 (= e!1994565 tp!1011095)))

(declare-fun b!3199494 () Bool)

(assert (=> b!3199494 (= e!1994565 tp_is_empty!17283)))

(declare-fun b!3199497 () Bool)

(declare-fun tp!1011096 () Bool)

(declare-fun tp!1011094 () Bool)

(assert (=> b!3199497 (= e!1994565 (and tp!1011096 tp!1011094))))

(declare-fun b!3199495 () Bool)

(declare-fun tp!1011098 () Bool)

(declare-fun tp!1011097 () Bool)

(assert (=> b!3199495 (= e!1994565 (and tp!1011098 tp!1011097))))

(assert (=> b!3198066 (= tp!1010988 e!1994565)))

(assert (= (and b!3198066 ((_ is ElementMatch!9951) (regTwo!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199494))

(assert (= (and b!3198066 ((_ is Concat!15373) (regTwo!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199495))

(assert (= (and b!3198066 ((_ is Star!9951) (regTwo!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199496))

(assert (= (and b!3198066 ((_ is Union!9951) (regTwo!20414 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199497))

(declare-fun b!3199500 () Bool)

(declare-fun e!1994566 () Bool)

(declare-fun tp!1011100 () Bool)

(assert (=> b!3199500 (= e!1994566 tp!1011100)))

(declare-fun b!3199498 () Bool)

(assert (=> b!3199498 (= e!1994566 tp_is_empty!17283)))

(declare-fun b!3199501 () Bool)

(declare-fun tp!1011101 () Bool)

(declare-fun tp!1011099 () Bool)

(assert (=> b!3199501 (= e!1994566 (and tp!1011101 tp!1011099))))

(declare-fun b!3199499 () Bool)

(declare-fun tp!1011103 () Bool)

(declare-fun tp!1011102 () Bool)

(assert (=> b!3199499 (= e!1994566 (and tp!1011103 tp!1011102))))

(assert (=> b!3198067 (= tp!1010986 e!1994566)))

(assert (= (and b!3198067 ((_ is ElementMatch!9951) (reg!10280 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199498))

(assert (= (and b!3198067 ((_ is Concat!15373) (reg!10280 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199499))

(assert (= (and b!3198067 ((_ is Star!9951) (reg!10280 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199500))

(assert (= (and b!3198067 ((_ is Union!9951) (reg!10280 (regex!5192 (rule!7626 (h!41464 tokens!494)))))) b!3199501))

(declare-fun b!3199505 () Bool)

(declare-fun b_free!84949 () Bool)

(declare-fun b_next!85653 () Bool)

(assert (=> b!3199505 (= b_free!84949 (not b_next!85653))))

(declare-fun t!237247 () Bool)

(declare-fun tb!156671 () Bool)

(assert (=> (and b!3199505 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237247) tb!156671))

(declare-fun result!198954 () Bool)

(assert (= result!198954 result!198932))

(assert (=> d!875527 t!237247))

(declare-fun t!237249 () Bool)

(declare-fun tb!156673 () Bool)

(assert (=> (and b!3199505 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237249) tb!156673))

(declare-fun result!198956 () Bool)

(assert (= result!198956 result!198872))

(assert (=> d!875203 t!237249))

(assert (=> d!875531 t!237247))

(declare-fun t!237251 () Bool)

(declare-fun tb!156675 () Bool)

(assert (=> (and b!3199505 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237251) tb!156675))

(declare-fun result!198958 () Bool)

(assert (= result!198958 result!198912))

(assert (=> d!875517 t!237251))

(declare-fun t!237253 () Bool)

(declare-fun tb!156677 () Bool)

(assert (=> (and b!3199505 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237253) tb!156677))

(declare-fun result!198960 () Bool)

(assert (= result!198960 result!198724))

(assert (=> d!874629 t!237253))

(declare-fun tp!1011108 () Bool)

(declare-fun b_and!212605 () Bool)

(assert (=> b!3199505 (= tp!1011108 (and (=> t!237251 result!198958) (=> t!237253 result!198960) (=> t!237249 result!198956) (=> t!237247 result!198954) b_and!212605))))

(declare-fun b_free!84951 () Bool)

(declare-fun b_next!85655 () Bool)

(assert (=> b!3199505 (= b_free!84951 (not b_next!85655))))

(declare-fun t!237255 () Bool)

(declare-fun tb!156679 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237255) tb!156679))

(declare-fun result!198962 () Bool)

(assert (= result!198962 result!198716))

(assert (=> b!3197471 t!237255))

(declare-fun t!237257 () Bool)

(declare-fun tb!156681 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) t!237257) tb!156681))

(declare-fun result!198964 () Bool)

(assert (= result!198964 result!198744))

(assert (=> b!3197702 t!237257))

(declare-fun tb!156683 () Bool)

(declare-fun t!237259 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0))))) t!237259) tb!156683))

(declare-fun result!198966 () Bool)

(assert (= result!198966 result!198882))

(assert (=> d!875261 t!237259))

(declare-fun t!237261 () Bool)

(declare-fun tb!156685 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) t!237261) tb!156685))

(declare-fun result!198968 () Bool)

(assert (= result!198968 result!198812))

(assert (=> d!874853 t!237261))

(declare-fun t!237263 () Bool)

(declare-fun tb!156687 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494))))))) t!237263) tb!156687))

(declare-fun result!198970 () Bool)

(assert (= result!198970 result!198902))

(assert (=> d!875445 t!237263))

(assert (=> d!874755 t!237257))

(declare-fun t!237265 () Bool)

(declare-fun tb!156689 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237265) tb!156689))

(declare-fun result!198972 () Bool)

(assert (= result!198972 result!198822))

(assert (=> d!874863 t!237265))

(declare-fun t!237267 () Bool)

(declare-fun tb!156691 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237267) tb!156691))

(declare-fun result!198974 () Bool)

(assert (= result!198974 result!198922))

(assert (=> d!875527 t!237267))

(declare-fun t!237269 () Bool)

(declare-fun tb!156693 () Bool)

(assert (=> (and b!3199505 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) t!237269) tb!156693))

(declare-fun result!198976 () Bool)

(assert (= result!198976 result!198750))

(assert (=> d!874771 t!237269))

(assert (=> b!3198625 t!237269))

(assert (=> d!874705 t!237255))

(declare-fun tp!1011106 () Bool)

(declare-fun b_and!212607 () Bool)

(assert (=> b!3199505 (= tp!1011106 (and (=> t!237263 result!198970) (=> t!237269 result!198976) (=> t!237255 result!198962) (=> t!237259 result!198966) (=> t!237267 result!198974) (=> t!237257 result!198964) (=> t!237265 result!198972) (=> t!237261 result!198968) b_and!212607))))

(declare-fun e!1994571 () Bool)

(assert (=> b!3198061 (= tp!1010983 e!1994571)))

(declare-fun e!1994567 () Bool)

(declare-fun tp!1011107 () Bool)

(declare-fun b!3199502 () Bool)

(assert (=> b!3199502 (= e!1994571 (and (inv!48894 (h!41464 (t!236995 (t!236995 tokens!494)))) e!1994567 tp!1011107))))

(declare-fun e!1994572 () Bool)

(assert (=> b!3199505 (= e!1994572 (and tp!1011108 tp!1011106))))

(declare-fun e!1994569 () Bool)

(declare-fun b!3199504 () Bool)

(declare-fun tp!1011104 () Bool)

(assert (=> b!3199504 (= e!1994569 (and tp!1011104 (inv!48890 (tag!5712 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (inv!48893 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) e!1994572))))

(declare-fun tp!1011105 () Bool)

(declare-fun b!3199503 () Bool)

(assert (=> b!3199503 (= e!1994567 (and (inv!21 (value!168432 (h!41464 (t!236995 (t!236995 tokens!494))))) e!1994569 tp!1011105))))

(assert (= b!3199504 b!3199505))

(assert (= b!3199503 b!3199504))

(assert (= b!3199502 b!3199503))

(assert (= (and b!3198061 ((_ is Cons!36044) (t!236995 (t!236995 tokens!494)))) b!3199502))

(declare-fun m!3461449 () Bool)

(assert (=> b!3199502 m!3461449))

(declare-fun m!3461451 () Bool)

(assert (=> b!3199504 m!3461451))

(declare-fun m!3461453 () Bool)

(assert (=> b!3199504 m!3461453))

(declare-fun m!3461455 () Bool)

(assert (=> b!3199503 m!3461455))

(declare-fun e!1994573 () Bool)

(declare-fun tp!1011110 () Bool)

(declare-fun b!3199506 () Bool)

(declare-fun tp!1011111 () Bool)

(assert (=> b!3199506 (= e!1994573 (and (inv!48895 (left!28009 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))))) tp!1011111 (inv!48895 (right!28339 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))))) tp!1011110))))

(declare-fun b!3199508 () Bool)

(declare-fun e!1994574 () Bool)

(declare-fun tp!1011109 () Bool)

(assert (=> b!3199508 (= e!1994574 tp!1011109)))

(declare-fun b!3199507 () Bool)

(assert (=> b!3199507 (= e!1994573 (and (inv!48903 (xs!13877 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))))) e!1994574))))

(assert (=> b!3197704 (= tp!1010937 (and (inv!48895 (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241)))) e!1994573))))

(assert (= (and b!3197704 ((_ is Node!10759) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))))) b!3199506))

(assert (= b!3199507 b!3199508))

(assert (= (and b!3197704 ((_ is Leaf!16966) (c!536749 (dynLambda!14514 (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (value!168432 separatorToken!241))))) b!3199507))

(declare-fun m!3461457 () Bool)

(assert (=> b!3199506 m!3461457))

(declare-fun m!3461459 () Bool)

(assert (=> b!3199506 m!3461459))

(declare-fun m!3461461 () Bool)

(assert (=> b!3199507 m!3461461))

(assert (=> b!3197704 m!3458777))

(declare-fun b!3199511 () Bool)

(declare-fun e!1994577 () Bool)

(assert (=> b!3199511 (= e!1994577 true)))

(declare-fun b!3199510 () Bool)

(declare-fun e!1994576 () Bool)

(assert (=> b!3199510 (= e!1994576 e!1994577)))

(declare-fun b!3199509 () Bool)

(declare-fun e!1994575 () Bool)

(assert (=> b!3199509 (= e!1994575 e!1994576)))

(assert (=> b!3197840 e!1994575))

(assert (= b!3199510 b!3199511))

(assert (= b!3199509 b!3199510))

(assert (= (and b!3197840 ((_ is Cons!36045) (t!236996 rules!2135))) b!3199509))

(assert (=> b!3199511 (< (dynLambda!14522 order!18329 (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135))))) (dynLambda!14523 order!18331 lambda!117061))))

(assert (=> b!3199511 (< (dynLambda!14524 order!18333 (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135))))) (dynLambda!14523 order!18331 lambda!117061))))

(declare-fun b!3199514 () Bool)

(declare-fun e!1994578 () Bool)

(declare-fun tp!1011113 () Bool)

(assert (=> b!3199514 (= e!1994578 tp!1011113)))

(declare-fun b!3199512 () Bool)

(assert (=> b!3199512 (= e!1994578 tp_is_empty!17283)))

(declare-fun b!3199515 () Bool)

(declare-fun tp!1011114 () Bool)

(declare-fun tp!1011112 () Bool)

(assert (=> b!3199515 (= e!1994578 (and tp!1011114 tp!1011112))))

(declare-fun b!3199513 () Bool)

(declare-fun tp!1011116 () Bool)

(declare-fun tp!1011115 () Bool)

(assert (=> b!3199513 (= e!1994578 (and tp!1011116 tp!1011115))))

(assert (=> b!3198036 (= tp!1010956 e!1994578)))

(assert (= (and b!3198036 ((_ is ElementMatch!9951) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199512))

(assert (= (and b!3198036 ((_ is Concat!15373) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199513))

(assert (= (and b!3198036 ((_ is Star!9951) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199514))

(assert (= (and b!3198036 ((_ is Union!9951) (regOne!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199515))

(declare-fun b!3199518 () Bool)

(declare-fun e!1994579 () Bool)

(declare-fun tp!1011118 () Bool)

(assert (=> b!3199518 (= e!1994579 tp!1011118)))

(declare-fun b!3199516 () Bool)

(assert (=> b!3199516 (= e!1994579 tp_is_empty!17283)))

(declare-fun b!3199519 () Bool)

(declare-fun tp!1011119 () Bool)

(declare-fun tp!1011117 () Bool)

(assert (=> b!3199519 (= e!1994579 (and tp!1011119 tp!1011117))))

(declare-fun b!3199517 () Bool)

(declare-fun tp!1011121 () Bool)

(declare-fun tp!1011120 () Bool)

(assert (=> b!3199517 (= e!1994579 (and tp!1011121 tp!1011120))))

(assert (=> b!3198036 (= tp!1010955 e!1994579)))

(assert (= (and b!3198036 ((_ is ElementMatch!9951) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199516))

(assert (= (and b!3198036 ((_ is Concat!15373) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199517))

(assert (= (and b!3198036 ((_ is Star!9951) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199518))

(assert (= (and b!3198036 ((_ is Union!9951) (regTwo!20414 (regex!5192 (rule!7626 separatorToken!241))))) b!3199519))

(declare-fun b!3199522 () Bool)

(declare-fun e!1994580 () Bool)

(declare-fun tp!1011123 () Bool)

(assert (=> b!3199522 (= e!1994580 tp!1011123)))

(declare-fun b!3199520 () Bool)

(assert (=> b!3199520 (= e!1994580 tp_is_empty!17283)))

(declare-fun b!3199523 () Bool)

(declare-fun tp!1011124 () Bool)

(declare-fun tp!1011122 () Bool)

(assert (=> b!3199523 (= e!1994580 (and tp!1011124 tp!1011122))))

(declare-fun b!3199521 () Bool)

(declare-fun tp!1011126 () Bool)

(declare-fun tp!1011125 () Bool)

(assert (=> b!3199521 (= e!1994580 (and tp!1011126 tp!1011125))))

(assert (=> b!3198037 (= tp!1010953 e!1994580)))

(assert (= (and b!3198037 ((_ is ElementMatch!9951) (reg!10280 (regex!5192 (rule!7626 separatorToken!241))))) b!3199520))

(assert (= (and b!3198037 ((_ is Concat!15373) (reg!10280 (regex!5192 (rule!7626 separatorToken!241))))) b!3199521))

(assert (= (and b!3198037 ((_ is Star!9951) (reg!10280 (regex!5192 (rule!7626 separatorToken!241))))) b!3199522))

(assert (= (and b!3198037 ((_ is Union!9951) (reg!10280 (regex!5192 (rule!7626 separatorToken!241))))) b!3199523))

(declare-fun b!3199526 () Bool)

(declare-fun e!1994581 () Bool)

(declare-fun tp!1011128 () Bool)

(assert (=> b!3199526 (= e!1994581 tp!1011128)))

(declare-fun b!3199524 () Bool)

(assert (=> b!3199524 (= e!1994581 tp_is_empty!17283)))

(declare-fun b!3199527 () Bool)

(declare-fun tp!1011129 () Bool)

(declare-fun tp!1011127 () Bool)

(assert (=> b!3199527 (= e!1994581 (and tp!1011129 tp!1011127))))

(declare-fun b!3199525 () Bool)

(declare-fun tp!1011131 () Bool)

(declare-fun tp!1011130 () Bool)

(assert (=> b!3199525 (= e!1994581 (and tp!1011131 tp!1011130))))

(assert (=> b!3198038 (= tp!1010954 e!1994581)))

(assert (= (and b!3198038 ((_ is ElementMatch!9951) (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199524))

(assert (= (and b!3198038 ((_ is Concat!15373) (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199525))

(assert (= (and b!3198038 ((_ is Star!9951) (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199526))

(assert (= (and b!3198038 ((_ is Union!9951) (regOne!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199527))

(declare-fun b!3199530 () Bool)

(declare-fun e!1994582 () Bool)

(declare-fun tp!1011133 () Bool)

(assert (=> b!3199530 (= e!1994582 tp!1011133)))

(declare-fun b!3199528 () Bool)

(assert (=> b!3199528 (= e!1994582 tp_is_empty!17283)))

(declare-fun b!3199531 () Bool)

(declare-fun tp!1011134 () Bool)

(declare-fun tp!1011132 () Bool)

(assert (=> b!3199531 (= e!1994582 (and tp!1011134 tp!1011132))))

(declare-fun b!3199529 () Bool)

(declare-fun tp!1011136 () Bool)

(declare-fun tp!1011135 () Bool)

(assert (=> b!3199529 (= e!1994582 (and tp!1011136 tp!1011135))))

(assert (=> b!3198038 (= tp!1010952 e!1994582)))

(assert (= (and b!3198038 ((_ is ElementMatch!9951) (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199528))

(assert (= (and b!3198038 ((_ is Concat!15373) (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199529))

(assert (= (and b!3198038 ((_ is Star!9951) (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199530))

(assert (= (and b!3198038 ((_ is Union!9951) (regTwo!20415 (regex!5192 (rule!7626 separatorToken!241))))) b!3199531))

(declare-fun b!3199534 () Bool)

(declare-fun e!1994583 () Bool)

(declare-fun tp!1011138 () Bool)

(assert (=> b!3199534 (= e!1994583 tp!1011138)))

(declare-fun b!3199532 () Bool)

(assert (=> b!3199532 (= e!1994583 tp_is_empty!17283)))

(declare-fun b!3199535 () Bool)

(declare-fun tp!1011139 () Bool)

(declare-fun tp!1011137 () Bool)

(assert (=> b!3199535 (= e!1994583 (and tp!1011139 tp!1011137))))

(declare-fun b!3199533 () Bool)

(declare-fun tp!1011141 () Bool)

(declare-fun tp!1011140 () Bool)

(assert (=> b!3199533 (= e!1994583 (and tp!1011141 tp!1011140))))

(assert (=> b!3198048 (= tp!1010965 e!1994583)))

(assert (= (and b!3198048 ((_ is ElementMatch!9951) (regex!5192 (h!41465 (t!236996 rules!2135))))) b!3199532))

(assert (= (and b!3198048 ((_ is Concat!15373) (regex!5192 (h!41465 (t!236996 rules!2135))))) b!3199533))

(assert (= (and b!3198048 ((_ is Star!9951) (regex!5192 (h!41465 (t!236996 rules!2135))))) b!3199534))

(assert (= (and b!3198048 ((_ is Union!9951) (regex!5192 (h!41465 (t!236996 rules!2135))))) b!3199535))

(declare-fun b!3199536 () Bool)

(declare-fun e!1994584 () Bool)

(declare-fun tp!1011142 () Bool)

(assert (=> b!3199536 (= e!1994584 (and tp_is_empty!17283 tp!1011142))))

(assert (=> b!3198050 (= tp!1010969 e!1994584)))

(assert (= (and b!3198050 ((_ is Cons!36043) (t!236994 (originalCharacters!5906 separatorToken!241)))) b!3199536))

(declare-fun b!3199539 () Bool)

(declare-fun b_free!84953 () Bool)

(declare-fun b_next!85657 () Bool)

(assert (=> b!3199539 (= b_free!84953 (not b_next!85657))))

(declare-fun t!237271 () Bool)

(declare-fun tb!156695 () Bool)

(assert (=> (and b!3199539 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237271) tb!156695))

(declare-fun result!198978 () Bool)

(assert (= result!198978 result!198932))

(assert (=> d!875527 t!237271))

(declare-fun t!237273 () Bool)

(declare-fun tb!156697 () Bool)

(assert (=> (and b!3199539 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237273) tb!156697))

(declare-fun result!198980 () Bool)

(assert (= result!198980 result!198872))

(assert (=> d!875203 t!237273))

(assert (=> d!875531 t!237271))

(declare-fun t!237275 () Bool)

(declare-fun tb!156699 () Bool)

(assert (=> (and b!3199539 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toValue!7264 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237275) tb!156699))

(declare-fun result!198982 () Bool)

(assert (= result!198982 result!198912))

(assert (=> d!875517 t!237275))

(declare-fun t!237277 () Bool)

(declare-fun tb!156701 () Bool)

(assert (=> (and b!3199539 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237277) tb!156701))

(declare-fun result!198984 () Bool)

(assert (= result!198984 result!198724))

(assert (=> d!874629 t!237277))

(declare-fun b_and!212609 () Bool)

(declare-fun tp!1011144 () Bool)

(assert (=> b!3199539 (= tp!1011144 (and (=> t!237275 result!198982) (=> t!237271 result!198978) (=> t!237277 result!198984) (=> t!237273 result!198980) b_and!212609))))

(declare-fun b_free!84955 () Bool)

(declare-fun b_next!85659 () Bool)

(assert (=> b!3199539 (= b_free!84955 (not b_next!85659))))

(declare-fun t!237279 () Bool)

(declare-fun tb!156703 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237279) tb!156703))

(declare-fun result!198986 () Bool)

(assert (= result!198986 result!198716))

(assert (=> b!3197471 t!237279))

(declare-fun tb!156705 () Bool)

(declare-fun t!237281 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241)))) t!237281) tb!156705))

(declare-fun result!198988 () Bool)

(assert (= result!198988 result!198744))

(assert (=> b!3197702 t!237281))

(declare-fun tb!156707 () Bool)

(declare-fun t!237283 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (apply!8123 lt!1077704 0))))) t!237283) tb!156707))

(declare-fun result!198990 () Bool)

(assert (= result!198990 result!198882))

(assert (=> d!875261 t!237283))

(declare-fun t!237285 () Bool)

(declare-fun tb!156709 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (Cons!36044 (h!41464 tokens!494) Nil!36044)))))) t!237285) tb!156709))

(declare-fun result!198992 () Bool)

(assert (= result!198992 result!198812))

(assert (=> d!874853 t!237285))

(declare-fun t!237287 () Bool)

(declare-fun tb!156711 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494))))))) t!237287) tb!156711))

(declare-fun result!198994 () Bool)

(assert (= result!198994 result!198902))

(assert (=> d!875445 t!237287))

(assert (=> d!874755 t!237281))

(declare-fun tb!156713 () Bool)

(declare-fun t!237289 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (_1!20840 (get!11464 lt!1077754)))))) t!237289) tb!156713))

(declare-fun result!198996 () Bool)

(assert (= result!198996 result!198822))

(assert (=> d!874863 t!237289))

(declare-fun tb!156715 () Bool)

(declare-fun t!237291 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494))))) t!237291) tb!156715))

(declare-fun result!198998 () Bool)

(assert (= result!198998 result!198922))

(assert (=> d!875527 t!237291))

(declare-fun tb!156717 () Bool)

(declare-fun t!237293 () Bool)

(assert (=> (and b!3199539 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494)))))) t!237293) tb!156717))

(declare-fun result!199000 () Bool)

(assert (= result!199000 result!198750))

(assert (=> d!874771 t!237293))

(assert (=> b!3198625 t!237293))

(assert (=> d!874705 t!237279))

(declare-fun tp!1011146 () Bool)

(declare-fun b_and!212611 () Bool)

(assert (=> b!3199539 (= tp!1011146 (and (=> t!237293 result!199000) (=> t!237287 result!198994) (=> t!237291 result!198998) (=> t!237283 result!198990) (=> t!237289 result!198996) (=> t!237281 result!198988) (=> t!237279 result!198986) (=> t!237285 result!198992) b_and!212611))))

(declare-fun e!1994586 () Bool)

(assert (=> b!3199539 (= e!1994586 (and tp!1011144 tp!1011146))))

(declare-fun b!3199538 () Bool)

(declare-fun e!1994588 () Bool)

(declare-fun tp!1011143 () Bool)

(assert (=> b!3199538 (= e!1994588 (and tp!1011143 (inv!48890 (tag!5712 (h!41465 (t!236996 (t!236996 rules!2135))))) (inv!48893 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) e!1994586))))

(declare-fun b!3199537 () Bool)

(declare-fun e!1994587 () Bool)

(declare-fun tp!1011145 () Bool)

(assert (=> b!3199537 (= e!1994587 (and e!1994588 tp!1011145))))

(assert (=> b!3198047 (= tp!1010967 e!1994587)))

(assert (= b!3199538 b!3199539))

(assert (= b!3199537 b!3199538))

(assert (= (and b!3198047 ((_ is Cons!36045) (t!236996 (t!236996 rules!2135)))) b!3199537))

(declare-fun m!3461463 () Bool)

(assert (=> b!3199538 m!3461463))

(declare-fun m!3461465 () Bool)

(assert (=> b!3199538 m!3461465))

(declare-fun b!3199542 () Bool)

(declare-fun e!1994589 () Bool)

(declare-fun tp!1011148 () Bool)

(assert (=> b!3199542 (= e!1994589 tp!1011148)))

(declare-fun b!3199540 () Bool)

(assert (=> b!3199540 (= e!1994589 tp_is_empty!17283)))

(declare-fun b!3199543 () Bool)

(declare-fun tp!1011149 () Bool)

(declare-fun tp!1011147 () Bool)

(assert (=> b!3199543 (= e!1994589 (and tp!1011149 tp!1011147))))

(declare-fun b!3199541 () Bool)

(declare-fun tp!1011151 () Bool)

(declare-fun tp!1011150 () Bool)

(assert (=> b!3199541 (= e!1994589 (and tp!1011151 tp!1011150))))

(assert (=> b!3198070 (= tp!1010994 e!1994589)))

(assert (= (and b!3198070 ((_ is ElementMatch!9951) (regOne!20414 (regex!5192 (h!41465 rules!2135))))) b!3199540))

(assert (= (and b!3198070 ((_ is Concat!15373) (regOne!20414 (regex!5192 (h!41465 rules!2135))))) b!3199541))

(assert (= (and b!3198070 ((_ is Star!9951) (regOne!20414 (regex!5192 (h!41465 rules!2135))))) b!3199542))

(assert (= (and b!3198070 ((_ is Union!9951) (regOne!20414 (regex!5192 (h!41465 rules!2135))))) b!3199543))

(declare-fun b!3199546 () Bool)

(declare-fun e!1994590 () Bool)

(declare-fun tp!1011153 () Bool)

(assert (=> b!3199546 (= e!1994590 tp!1011153)))

(declare-fun b!3199544 () Bool)

(assert (=> b!3199544 (= e!1994590 tp_is_empty!17283)))

(declare-fun b!3199547 () Bool)

(declare-fun tp!1011154 () Bool)

(declare-fun tp!1011152 () Bool)

(assert (=> b!3199547 (= e!1994590 (and tp!1011154 tp!1011152))))

(declare-fun b!3199545 () Bool)

(declare-fun tp!1011156 () Bool)

(declare-fun tp!1011155 () Bool)

(assert (=> b!3199545 (= e!1994590 (and tp!1011156 tp!1011155))))

(assert (=> b!3198070 (= tp!1010993 e!1994590)))

(assert (= (and b!3198070 ((_ is ElementMatch!9951) (regTwo!20414 (regex!5192 (h!41465 rules!2135))))) b!3199544))

(assert (= (and b!3198070 ((_ is Concat!15373) (regTwo!20414 (regex!5192 (h!41465 rules!2135))))) b!3199545))

(assert (= (and b!3198070 ((_ is Star!9951) (regTwo!20414 (regex!5192 (h!41465 rules!2135))))) b!3199546))

(assert (= (and b!3198070 ((_ is Union!9951) (regTwo!20414 (regex!5192 (h!41465 rules!2135))))) b!3199547))

(declare-fun b!3199550 () Bool)

(declare-fun e!1994591 () Bool)

(declare-fun tp!1011158 () Bool)

(assert (=> b!3199550 (= e!1994591 tp!1011158)))

(declare-fun b!3199548 () Bool)

(assert (=> b!3199548 (= e!1994591 tp_is_empty!17283)))

(declare-fun b!3199551 () Bool)

(declare-fun tp!1011159 () Bool)

(declare-fun tp!1011157 () Bool)

(assert (=> b!3199551 (= e!1994591 (and tp!1011159 tp!1011157))))

(declare-fun b!3199549 () Bool)

(declare-fun tp!1011161 () Bool)

(declare-fun tp!1011160 () Bool)

(assert (=> b!3199549 (= e!1994591 (and tp!1011161 tp!1011160))))

(assert (=> b!3198071 (= tp!1010991 e!1994591)))

(assert (= (and b!3198071 ((_ is ElementMatch!9951) (reg!10280 (regex!5192 (h!41465 rules!2135))))) b!3199548))

(assert (= (and b!3198071 ((_ is Concat!15373) (reg!10280 (regex!5192 (h!41465 rules!2135))))) b!3199549))

(assert (= (and b!3198071 ((_ is Star!9951) (reg!10280 (regex!5192 (h!41465 rules!2135))))) b!3199550))

(assert (= (and b!3198071 ((_ is Union!9951) (reg!10280 (regex!5192 (h!41465 rules!2135))))) b!3199551))

(declare-fun b!3199554 () Bool)

(declare-fun e!1994592 () Bool)

(declare-fun tp!1011163 () Bool)

(assert (=> b!3199554 (= e!1994592 tp!1011163)))

(declare-fun b!3199552 () Bool)

(assert (=> b!3199552 (= e!1994592 tp_is_empty!17283)))

(declare-fun b!3199555 () Bool)

(declare-fun tp!1011164 () Bool)

(declare-fun tp!1011162 () Bool)

(assert (=> b!3199555 (= e!1994592 (and tp!1011164 tp!1011162))))

(declare-fun b!3199553 () Bool)

(declare-fun tp!1011166 () Bool)

(declare-fun tp!1011165 () Bool)

(assert (=> b!3199553 (= e!1994592 (and tp!1011166 tp!1011165))))

(assert (=> b!3198072 (= tp!1010992 e!1994592)))

(assert (= (and b!3198072 ((_ is ElementMatch!9951) (regOne!20415 (regex!5192 (h!41465 rules!2135))))) b!3199552))

(assert (= (and b!3198072 ((_ is Concat!15373) (regOne!20415 (regex!5192 (h!41465 rules!2135))))) b!3199553))

(assert (= (and b!3198072 ((_ is Star!9951) (regOne!20415 (regex!5192 (h!41465 rules!2135))))) b!3199554))

(assert (= (and b!3198072 ((_ is Union!9951) (regOne!20415 (regex!5192 (h!41465 rules!2135))))) b!3199555))

(declare-fun b!3199558 () Bool)

(declare-fun e!1994593 () Bool)

(declare-fun tp!1011168 () Bool)

(assert (=> b!3199558 (= e!1994593 tp!1011168)))

(declare-fun b!3199556 () Bool)

(assert (=> b!3199556 (= e!1994593 tp_is_empty!17283)))

(declare-fun b!3199559 () Bool)

(declare-fun tp!1011169 () Bool)

(declare-fun tp!1011167 () Bool)

(assert (=> b!3199559 (= e!1994593 (and tp!1011169 tp!1011167))))

(declare-fun b!3199557 () Bool)

(declare-fun tp!1011171 () Bool)

(declare-fun tp!1011170 () Bool)

(assert (=> b!3199557 (= e!1994593 (and tp!1011171 tp!1011170))))

(assert (=> b!3198072 (= tp!1010990 e!1994593)))

(assert (= (and b!3198072 ((_ is ElementMatch!9951) (regTwo!20415 (regex!5192 (h!41465 rules!2135))))) b!3199556))

(assert (= (and b!3198072 ((_ is Concat!15373) (regTwo!20415 (regex!5192 (h!41465 rules!2135))))) b!3199557))

(assert (= (and b!3198072 ((_ is Star!9951) (regTwo!20415 (regex!5192 (h!41465 rules!2135))))) b!3199558))

(assert (= (and b!3198072 ((_ is Union!9951) (regTwo!20415 (regex!5192 (h!41465 rules!2135))))) b!3199559))

(declare-fun b_lambda!87437 () Bool)

(assert (= b_lambda!87401 (or (and b!3199539 b_free!84955 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3199505 b_free!84951 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3197411 b_free!84927 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3198064 b_free!84939) (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) (and b!3197407 b_free!84923 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))))) b_lambda!87437)))

(declare-fun b_lambda!87439 () Bool)

(assert (= b_lambda!87421 (or b!3197405 b_lambda!87439)))

(assert (=> d!875473 d!874823))

(declare-fun b_lambda!87441 () Bool)

(assert (= b_lambda!87431 (or b!3197405 b_lambda!87441)))

(assert (=> b!3199222 d!874823))

(declare-fun b_lambda!87443 () Bool)

(assert (= b_lambda!87429 (or (and b!3199539 b_free!84953 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198049 b_free!84933 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197387 b_free!84929 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197411 b_free!84925) (and b!3197407 b_free!84921 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3199505 b_free!84949 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198064 b_free!84937 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) b_lambda!87443)))

(declare-fun b_lambda!87445 () Bool)

(assert (= b_lambda!87427 (or (and b!3199539 b_free!84953 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198049 b_free!84933 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197387 b_free!84929 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197411 b_free!84925) (and b!3197407 b_free!84921 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3199505 b_free!84949 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198064 b_free!84937 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) b_lambda!87445)))

(declare-fun b_lambda!87447 () Bool)

(assert (= b_lambda!87409 (or (and b!3199539 b_free!84953 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198049 b_free!84933 (= (toValue!7264 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197387 b_free!84929 (= (toValue!7264 (transformation!5192 (h!41465 rules!2135))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197411 b_free!84925) (and b!3197407 b_free!84921 (= (toValue!7264 (transformation!5192 (rule!7626 separatorToken!241))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3199505 b_free!84949 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198064 b_free!84937 (= (toValue!7264 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toValue!7264 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) b_lambda!87447)))

(declare-fun b_lambda!87449 () Bool)

(assert (= b_lambda!87403 (or d!874713 b_lambda!87449)))

(declare-fun bs!540860 () Bool)

(declare-fun d!875693 () Bool)

(assert (= bs!540860 (and d!875693 d!874713)))

(assert (=> bs!540860 (= (dynLambda!14516 lambda!117061 (h!41464 (list!12810 (seqFromList!3455 tokens!494)))) (rulesProduceIndividualToken!2273 thiss!18206 rules!2135 (h!41464 (list!12810 (seqFromList!3455 tokens!494)))))))

(assert (=> bs!540860 m!3459891))

(assert (=> b!3198699 d!875693))

(declare-fun b_lambda!87451 () Bool)

(assert (= b_lambda!87391 (or b!3197405 b_lambda!87451)))

(assert (=> d!874945 d!874817))

(declare-fun b_lambda!87453 () Bool)

(assert (= b_lambda!87419 (or (and b!3199539 b_free!84955 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))))) (and b!3197407 b_free!84923 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))))) (and b!3198064 b_free!84939 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))))) (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))))) (and b!3197411 b_free!84927 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))))) (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))))) (and b!3199505 b_free!84951) b_lambda!87453)))

(declare-fun b_lambda!87455 () Bool)

(assert (= b_lambda!87425 (or (and b!3198049 b_free!84935 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 rules!2135)))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3199539 b_free!84955 (= (toChars!7123 (transformation!5192 (h!41465 (t!236996 (t!236996 rules!2135))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3198064 b_free!84939 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 tokens!494))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197411 b_free!84927) (and b!3197407 b_free!84923 (= (toChars!7123 (transformation!5192 (rule!7626 separatorToken!241))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3199505 b_free!84951 (= (toChars!7123 (transformation!5192 (rule!7626 (h!41464 (t!236995 (t!236995 tokens!494)))))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) (and b!3197387 b_free!84931 (= (toChars!7123 (transformation!5192 (h!41465 rules!2135))) (toChars!7123 (transformation!5192 (rule!7626 (h!41464 tokens!494)))))) b_lambda!87455)))

(check-sat (not b!3199160) (not d!874847) (not b!3198958) (not b!3198861) (not b!3199163) (not b!3199491) (not b!3198612) (not b!3198993) (not b!3198742) (not b!3199232) (not b_lambda!87355) (not b_lambda!87351) (not d!874889) (not b!3199085) (not d!874887) (not tb!156631) (not d!875447) (not b!3199534) (not bm!231698) (not b!3198372) (not b!3199488) b_and!212555 (not d!874955) (not b!3199502) (not d!875561) (not b!3198154) (not d!875475) (not b!3198772) (not d!875451) (not d!875365) (not bm!231598) (not b!3198197) (not d!874885) (not b!3198877) (not bm!231679) (not b!3199158) (not d!875407) (not bm!231675) (not b!3199541) (not b_next!85637) (not b!3198879) (not b!3199526) (not b!3199172) (not b!3198275) (not b!3199507) (not bm!231702) (not b!3199091) (not b!3198342) (not b!3198376) (not b!3199171) (not b!3199236) (not b!3199484) (not d!875455) (not b!3198402) (not d!875315) (not b_lambda!87443) (not b!3199249) (not b!3198736) (not b!3199050) (not b!3198641) (not d!875395) (not b!3199001) (not b!3198996) (not b_lambda!87455) (not d!874977) b_and!212611 (not b!3199092) (not d!875457) (not d!874861) (not b!3199474) (not b!3198206) (not b!3198176) (not bm!231623) (not b!3199504) (not b!3199537) (not b!3198236) (not b!3198157) (not b_next!85625) (not d!875075) (not b!3199097) (not b!3197477) (not d!875453) (not b!3199064) (not d!875469) (not b!3199251) (not b!3199470) (not b!3199489) (not d!874985) (not b!3199476) b_and!212579 (not b!3198434) (not d!875155) (not b!3199113) (not b!3198623) (not d!875171) (not b!3198289) (not b!3199247) (not d!875313) (not bm!231657) (not bm!231618) (not d!875103) (not b!3198262) (not b!3198998) (not b!3199119) (not b!3199153) (not d!875459) (not bm!231689) (not b!3199473) (not d!875265) (not b!3198947) (not d!875249) (not b!3198224) (not b!3199108) (not b!3199536) (not bm!231617) (not b!3198300) (not b!3198438) (not b!3199495) b_and!212581 (not b!3199501) (not b!3198744) (not b!3198631) (not b!3199217) (not d!874919) (not b!3199120) (not d!875251) (not d!875245) (not bm!231665) (not b!3199543) (not d!875161) (not b!3199559) (not b_lambda!87357) (not b!3198217) (not b!3198286) (not b_lambda!87441) (not bm!231697) (not b!3199225) b_and!212577 (not b_lambda!87353) (not d!874933) (not b_lambda!87363) (not b!3199480) (not bm!231621) (not b!3198209) (not d!874941) (not b!3199458) (not d!875541) (not b!3198258) (not b!3198158) (not b!3199213) (not b_lambda!87451) (not bm!231694) (not b_next!85629) (not d!874897) (not b!3199142) (not b!3198189) (not b!3197923) (not b!3199241) (not b!3198265) (not d!875081) (not d!875431) (not bm!231695) (not tb!156541) (not d!875217) (not d!874891) (not d!875509) (not b!3198173) (not b!3199226) (not b!3199156) b_and!212609 (not b!3198303) (not b_lambda!87439) (not b!3199233) (not b!3199525) (not bm!231599) (not bs!540860) (not b_lambda!87453) (not b!3199112) (not tb!156591) (not d!875485) (not b!3199550) b_and!212575 (not b!3199508) (not b!3199533) (not b!3198622) (not d!875169) (not d!875569) (not d!875321) (not b!3199123) (not b_lambda!87449) (not d!874921) (not b!3199553) (not d!875543) (not b!3199210) (not bm!231597) (not b_lambda!87389) (not d!875479) (not bm!231619) (not b!3198231) (not bm!231664) (not b!3198240) (not d!874871) (not tb!156531) (not tb!156641) (not d!875519) (not b!3199042) (not b_next!85627) (not d!875131) (not b!3198956) (not b!3199176) (not b!3198432) (not b!3198336) (not d!875547) (not b!3198295) (not b!3199215) (not b!3198973) (not b_next!85631) (not b!3198232) (not b_lambda!87437) (not d!874993) (not b!3199482) (not b!3199100) (not b!3199253) (not b!3198416) (not b!3199230) (not d!874859) (not b!3198637) (not b!3198256) (not b!3198625) (not d!875537) (not b!3199492) (not d!875691) (not b!3199104) (not b!3198677) b_and!212559 (not b!3198252) (not b!3198570) (not d!875521) (not b!3199152) (not d!875093) (not b!3199523) (not d!875503) (not b!3199455) (not bm!231721) (not b!3198213) (not b!3198888) (not d!875497) (not d!874851) (not b!3199519) (not b!3198210) (not b_lambda!87411) (not b!3199515) (not b_next!85643) (not b!3199169) (not b_next!85659) (not d!875445) (not b!3198818) (not bm!231620) (not d!874903) (not bm!231693) (not b!3198420) (not d!874979) (not b!3198269) (not b!3198270) (not b!3199531) b_and!212605 (not b!3198225) (not d!875291) (not b!3198155) (not d!874973) (not b!3199065) b_and!212561 (not d!874849) (not d!875523) (not d!874877) (not b!3198820) (not b_next!85635) (not b!3199493) (not b!3199530) (not b!3198678) (not b!3198263) (not b!3198887) (not b!3199551) (not b!3198700) (not d!875141) (not b!3199459) (not b!3199140) (not d!875139) (not b!3198174) (not b_next!85657) (not b!3198821) (not b!3199479) (not bm!231666) (not b_lambda!87447) (not b!3199499) (not b!3199167) (not b!3198787) (not d!875377) (not b!3198891) (not b_lambda!87387) (not d!875525) (not b!3198278) (not b!3198620) (not b!3199514) (not b!3198875) (not b_lambda!87359) (not b!3199089) (not b!3198990) (not b!3198253) (not d!874965) (not b!3198332) (not b!3199549) (not b!3199503) (not b_lambda!87349) (not b!3199220) (not d!875247) (not b!3198975) (not b!3199162) (not d!875411) (not b!3199067) (not b!3199071) (not b!3199209) (not d!874939) (not b!3199517) (not d!874863) (not b!3199558) (not b!3199133) (not b!3199212) (not d!875115) (not b!3199485) (not d!875553) (not d!875113) (not b!3199066) (not b!3198777) (not b!3198436) (not bm!231616) (not b!3198202) (not b!3198626) (not d!875507) (not b!3198170) (not b!3199238) (not b!3198260) (not d!874905) (not b!3198618) (not b!3198780) (not b!3198216) (not b!3199522) (not bm!231690) (not b!3198401) (not d!875243) (not bm!231704) (not d!874879) (not b!3198565) (not b!3198235) b_and!212607 (not b!3199128) (not d!874915) (not b!3198419) (not d!874917) (not b!3199538) (not b!3199509) (not d!874895) (not d!875381) (not b!3199535) (not bm!231673) (not b!3198284) (not b!3199542) (not b!3198271) b_and!212557 (not b!3198191) (not b!3199117) (not b!3199144) (not b_lambda!87423) (not b_next!85641) (not d!874927) (not b!3197704) (not d!875483) (not bm!231622) (not b!3198870) (not d!875261) (not b_lambda!87347) (not b!3199500) (not b!3198294) (not b!3198992) (not b!3199052) (not b!3198775) (not b!3199093) (not b!3198280) (not b!3199487) (not d!875255) (not d!875429) (not bm!231658) (not d!874949) (not b!3199518) (not b!3198440) (not b!3198205) (not b!3198212) (not b_next!85633) (not b!3198228) (not b!3198272) (not b_lambda!87445) (not b_next!85653) (not b!3198182) (not b!3198776) (not b!3199157) (not d!875147) (not b!3199219) (not b!3199513) (not d!875371) (not d!875263) (not b!3198635) (not b!3199529) (not d!874907) (not b!3199103) (not d!875415) (not b!3199545) (not bm!231699) (not b!3198417) (not tb!156651) (not b!3199096) (not d!874931) b_and!212563 (not b!3199125) (not b!3199101) (not d!875467) (not b!3199554) (not b!3199496) (not b!3199478) (not b!3199082) (not d!875097) (not d!874925) (not b!3199054) (not b!3198292) b_and!212583 (not b!3198912) (not d!874875) (not b!3198200) (not b!3199497) (not b!3198196) (not d!875317) (not b!3199555) (not b!3199083) (not d!875373) (not b_next!85655) (not b_next!85639) (not b!3198229) (not b!3198347) (not b!3198339) (not b!3198819) (not b!3199506) (not d!875487) (not d!875435) (not b!3199557) (not b!3199521) (not d!875549) (not b!3199457) (not d!875159) (not d!874893) (not b!3199472) (not b!3199527) (not bm!231596) (not b!3199483) (not tb!156601) (not b!3199168) (not d!875515) (not b!3199547) (not b!3198564) (not d!874923) (not d!875527) (not b!3198418) (not b!3199086) (not b!3198577) (not b!3199110) (not d!875439) (not b!3199106) (not d!875471) (not b_lambda!87361) (not d!875319) (not d!874929) (not b!3198415) (not d!875529) (not b!3198886) (not b!3199471) (not d!875481) (not b!3198281) (not d!874937) (not d!875567) (not b!3198866) (not d!875067) (not b!3198298) (not b!3198274) (not b!3198896) (not d!875267) (not d!874947) (not b!3199475) (not bm!231659) tp_is_empty!17283 (not b!3198239) (not tb!156621) (not b!3198911) (not d!875259) (not d!874975) (not d!875427) (not b!3199223) (not b!3198194) (not b!3198226) (not b!3199184) (not b!3198264) (not d!874853) (not d!875437) (not d!875129) (not b!3198634) (not b!3199546))
(check-sat b_and!212611 (not b_next!85625) b_and!212579 b_and!212581 b_and!212577 (not b_next!85629) b_and!212609 b_and!212575 b_and!212559 (not b_next!85657) b_and!212607 b_and!212557 (not b_next!85641) b_and!212563 b_and!212555 (not b_next!85637) (not b_next!85627) (not b_next!85631) (not b_next!85643) (not b_next!85659) (not b_next!85635) b_and!212605 b_and!212561 (not b_next!85653) (not b_next!85633) b_and!212583 (not b_next!85639) (not b_next!85655))

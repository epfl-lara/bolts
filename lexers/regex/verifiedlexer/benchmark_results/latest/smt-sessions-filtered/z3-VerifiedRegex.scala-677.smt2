; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25986 () Bool)

(assert start!25986)

(declare-fun b!244705 () Bool)

(declare-fun b_free!9017 () Bool)

(declare-fun b_next!9017 () Bool)

(assert (=> b!244705 (= b_free!9017 (not b_next!9017))))

(declare-fun tp!95887 () Bool)

(declare-fun b_and!18389 () Bool)

(assert (=> b!244705 (= tp!95887 b_and!18389)))

(declare-fun b_free!9019 () Bool)

(declare-fun b_next!9019 () Bool)

(assert (=> b!244705 (= b_free!9019 (not b_next!9019))))

(declare-fun tp!95889 () Bool)

(declare-fun b_and!18391 () Bool)

(assert (=> b!244705 (= tp!95889 b_and!18391)))

(declare-fun b!244727 () Bool)

(declare-fun b_free!9021 () Bool)

(declare-fun b_next!9021 () Bool)

(assert (=> b!244727 (= b_free!9021 (not b_next!9021))))

(declare-fun tp!95891 () Bool)

(declare-fun b_and!18393 () Bool)

(assert (=> b!244727 (= tp!95891 b_and!18393)))

(declare-fun b_free!9023 () Bool)

(declare-fun b_next!9023 () Bool)

(assert (=> b!244727 (= b_free!9023 (not b_next!9023))))

(declare-fun tp!95890 () Bool)

(declare-fun b_and!18395 () Bool)

(assert (=> b!244727 (= tp!95890 b_and!18395)))

(declare-fun b!244716 () Bool)

(declare-fun b_free!9025 () Bool)

(declare-fun b_next!9025 () Bool)

(assert (=> b!244716 (= b_free!9025 (not b_next!9025))))

(declare-fun tp!95893 () Bool)

(declare-fun b_and!18397 () Bool)

(assert (=> b!244716 (= tp!95893 b_and!18397)))

(declare-fun b_free!9027 () Bool)

(declare-fun b_next!9027 () Bool)

(assert (=> b!244716 (= b_free!9027 (not b_next!9027))))

(declare-fun tp!95886 () Bool)

(declare-fun b_and!18399 () Bool)

(assert (=> b!244716 (= tp!95886 b_and!18399)))

(declare-fun bs!26326 () Bool)

(declare-fun b!244721 () Bool)

(declare-fun b!244720 () Bool)

(assert (= bs!26326 (and b!244721 b!244720)))

(declare-fun lambda!7980 () Int)

(declare-fun lambda!7979 () Int)

(assert (=> bs!26326 (not (= lambda!7980 lambda!7979))))

(declare-fun b!244738 () Bool)

(declare-fun e!151600 () Bool)

(assert (=> b!244738 (= e!151600 true)))

(declare-fun b!244737 () Bool)

(declare-fun e!151599 () Bool)

(assert (=> b!244737 (= e!151599 e!151600)))

(declare-fun b!244736 () Bool)

(declare-fun e!151598 () Bool)

(assert (=> b!244736 (= e!151598 e!151599)))

(assert (=> b!244721 e!151598))

(assert (= b!244737 b!244738))

(assert (= b!244736 b!244737))

(declare-datatypes ((List!3593 0))(
  ( (Nil!3583) (Cons!3583 (h!8980 (_ BitVec 16)) (t!35061 List!3593)) )
))
(declare-datatypes ((TokenValue!699 0))(
  ( (FloatLiteralValue!1398 (text!5338 List!3593)) (TokenValueExt!698 (__x!2885 Int)) (Broken!3495 (value!23584 List!3593)) (Object!708) (End!699) (Def!699) (Underscore!699) (Match!699) (Else!699) (Error!699) (Case!699) (If!699) (Extends!699) (Abstract!699) (Class!699) (Val!699) (DelimiterValue!1398 (del!759 List!3593)) (KeywordValue!705 (value!23585 List!3593)) (CommentValue!1398 (value!23586 List!3593)) (WhitespaceValue!1398 (value!23587 List!3593)) (IndentationValue!699 (value!23588 List!3593)) (String!4574) (Int32!699) (Broken!3496 (value!23589 List!3593)) (Boolean!700) (Unit!4357) (OperatorValue!702 (op!759 List!3593)) (IdentifierValue!1398 (value!23590 List!3593)) (IdentifierValue!1399 (value!23591 List!3593)) (WhitespaceValue!1399 (value!23592 List!3593)) (True!1398) (False!1398) (Broken!3497 (value!23593 List!3593)) (Broken!3498 (value!23594 List!3593)) (True!1399) (RightBrace!699) (RightBracket!699) (Colon!699) (Null!699) (Comma!699) (LeftBracket!699) (False!1399) (LeftBrace!699) (ImaginaryLiteralValue!699 (text!5339 List!3593)) (StringLiteralValue!2097 (value!23595 List!3593)) (EOFValue!699 (value!23596 List!3593)) (IdentValue!699 (value!23597 List!3593)) (DelimiterValue!1399 (value!23598 List!3593)) (DedentValue!699 (value!23599 List!3593)) (NewLineValue!699 (value!23600 List!3593)) (IntegerValue!2097 (value!23601 (_ BitVec 32)) (text!5340 List!3593)) (IntegerValue!2098 (value!23602 Int) (text!5341 List!3593)) (Times!699) (Or!699) (Equal!699) (Minus!699) (Broken!3499 (value!23603 List!3593)) (And!699) (Div!699) (LessEqual!699) (Mod!699) (Concat!1600) (Not!699) (Plus!699) (SpaceValue!699 (value!23604 List!3593)) (IntegerValue!2099 (value!23605 Int) (text!5342 List!3593)) (StringLiteralValue!2098 (text!5343 List!3593)) (FloatLiteralValue!1399 (text!5344 List!3593)) (BytesLiteralValue!699 (value!23606 List!3593)) (CommentValue!1399 (value!23607 List!3593)) (StringLiteralValue!2099 (value!23608 List!3593)) (ErrorTokenValue!699 (msg!760 List!3593)) )
))
(declare-datatypes ((C!2724 0))(
  ( (C!2725 (val!1248 Int)) )
))
(declare-datatypes ((List!3594 0))(
  ( (Nil!3584) (Cons!3584 (h!8981 C!2724) (t!35062 List!3594)) )
))
(declare-datatypes ((IArray!2353 0))(
  ( (IArray!2354 (innerList!1234 List!3594)) )
))
(declare-datatypes ((Conc!1176 0))(
  ( (Node!1176 (left!2925 Conc!1176) (right!3255 Conc!1176) (csize!2582 Int) (cheight!1387 Int)) (Leaf!1854 (xs!3771 IArray!2353) (csize!2583 Int)) (Empty!1176) )
))
(declare-datatypes ((BalanceConc!2360 0))(
  ( (BalanceConc!2361 (c!46876 Conc!1176)) )
))
(declare-datatypes ((TokenValueInjection!1170 0))(
  ( (TokenValueInjection!1171 (toValue!1380 Int) (toChars!1239 Int)) )
))
(declare-datatypes ((String!4575 0))(
  ( (String!4576 (value!23609 String)) )
))
(declare-datatypes ((Regex!901 0))(
  ( (ElementMatch!901 (c!46877 C!2724)) (Concat!1601 (regOne!2314 Regex!901) (regTwo!2314 Regex!901)) (EmptyExpr!901) (Star!901 (reg!1230 Regex!901)) (EmptyLang!901) (Union!901 (regOne!2315 Regex!901) (regTwo!2315 Regex!901)) )
))
(declare-datatypes ((Rule!1154 0))(
  ( (Rule!1155 (regex!677 Regex!901) (tag!885 String!4575) (isSeparator!677 Bool) (transformation!677 TokenValueInjection!1170)) )
))
(declare-datatypes ((List!3595 0))(
  ( (Nil!3585) (Cons!3585 (h!8982 Rule!1154) (t!35063 List!3595)) )
))
(declare-fun rules!1920 () List!3595)

(get-info :version)

(assert (= (and b!244721 ((_ is Cons!3585) rules!1920)) b!244736))

(declare-fun order!2601 () Int)

(declare-fun order!2603 () Int)

(declare-fun dynLambda!1729 (Int Int) Int)

(declare-fun dynLambda!1730 (Int Int) Int)

(assert (=> b!244738 (< (dynLambda!1729 order!2601 (toValue!1380 (transformation!677 (h!8982 rules!1920)))) (dynLambda!1730 order!2603 lambda!7980))))

(declare-fun order!2605 () Int)

(declare-fun dynLambda!1731 (Int Int) Int)

(assert (=> b!244738 (< (dynLambda!1731 order!2605 (toChars!1239 (transformation!677 (h!8982 rules!1920)))) (dynLambda!1730 order!2603 lambda!7980))))

(assert (=> b!244721 true))

(declare-fun tp!95892 () Bool)

(declare-datatypes ((Token!1098 0))(
  ( (Token!1099 (value!23610 TokenValue!699) (rule!1254 Rule!1154) (size!2859 Int) (originalCharacters!720 List!3594)) )
))
(declare-fun separatorToken!170 () Token!1098)

(declare-fun e!151585 () Bool)

(declare-fun b!244694 () Bool)

(declare-fun e!151588 () Bool)

(declare-fun inv!4438 (String!4575) Bool)

(declare-fun inv!4441 (TokenValueInjection!1170) Bool)

(assert (=> b!244694 (= e!151588 (and tp!95892 (inv!4438 (tag!885 (rule!1254 separatorToken!170))) (inv!4441 (transformation!677 (rule!1254 separatorToken!170))) e!151585))))

(declare-fun tp!95884 () Bool)

(declare-fun e!151580 () Bool)

(declare-datatypes ((List!3596 0))(
  ( (Nil!3586) (Cons!3586 (h!8983 Token!1098) (t!35064 List!3596)) )
))
(declare-fun tokens!465 () List!3596)

(declare-fun b!244695 () Bool)

(declare-fun e!151571 () Bool)

(declare-fun inv!21 (TokenValue!699) Bool)

(assert (=> b!244695 (= e!151580 (and (inv!21 (value!23610 (h!8983 tokens!465))) e!151571 tp!95884))))

(declare-fun b!244696 () Bool)

(declare-fun res!113067 () Bool)

(declare-fun e!151578 () Bool)

(assert (=> b!244696 (=> (not res!113067) (not e!151578))))

(assert (=> b!244696 (= res!113067 ((_ is Cons!3586) tokens!465))))

(declare-fun b!244697 () Bool)

(declare-fun res!113064 () Bool)

(declare-fun e!151574 () Bool)

(assert (=> b!244697 (=> (not res!113064) (not e!151574))))

(declare-fun lt!99012 () List!3594)

(declare-fun lt!99013 () List!3594)

(declare-fun list!1409 (BalanceConc!2360) List!3594)

(declare-fun seqFromList!731 (List!3594) BalanceConc!2360)

(assert (=> b!244697 (= res!113064 (= (list!1409 (seqFromList!731 lt!99012)) lt!99013))))

(declare-fun b!244698 () Bool)

(declare-fun res!113053 () Bool)

(declare-fun e!151579 () Bool)

(assert (=> b!244698 (=> res!113053 e!151579)))

(declare-datatypes ((LexerInterface!563 0))(
  ( (LexerInterfaceExt!560 (__x!2886 Int)) (Lexer!561) )
))
(declare-fun thiss!17480 () LexerInterface!563)

(declare-fun rulesProduceIndividualToken!312 (LexerInterface!563 List!3595 Token!1098) Bool)

(assert (=> b!244698 (= res!113053 (not (rulesProduceIndividualToken!312 thiss!17480 rules!1920 (h!8983 tokens!465))))))

(declare-fun tp!95883 () Bool)

(declare-fun e!151572 () Bool)

(declare-fun b!244699 () Bool)

(assert (=> b!244699 (= e!151572 (and (inv!21 (value!23610 separatorToken!170)) e!151588 tp!95883))))

(declare-fun b!244700 () Bool)

(declare-fun res!113057 () Bool)

(assert (=> b!244700 (=> res!113057 e!151579)))

(declare-fun lt!99021 () List!3594)

(declare-datatypes ((IArray!2355 0))(
  ( (IArray!2356 (innerList!1235 List!3596)) )
))
(declare-datatypes ((Conc!1177 0))(
  ( (Node!1177 (left!2926 Conc!1177) (right!3256 Conc!1177) (csize!2584 Int) (cheight!1388 Int)) (Leaf!1855 (xs!3772 IArray!2355) (csize!2585 Int)) (Empty!1177) )
))
(declare-datatypes ((BalanceConc!2362 0))(
  ( (BalanceConc!2363 (c!46878 Conc!1177)) )
))
(declare-fun isEmpty!2165 (BalanceConc!2362) Bool)

(declare-datatypes ((tuple2!3970 0))(
  ( (tuple2!3971 (_1!2201 BalanceConc!2362) (_2!2201 BalanceConc!2360)) )
))
(declare-fun lex!363 (LexerInterface!563 List!3595 BalanceConc!2360) tuple2!3970)

(assert (=> b!244700 (= res!113057 (isEmpty!2165 (_1!2201 (lex!363 thiss!17480 rules!1920 (seqFromList!731 lt!99021)))))))

(declare-fun b!244701 () Bool)

(declare-fun res!113061 () Bool)

(declare-fun e!151591 () Bool)

(assert (=> b!244701 (=> (not res!113061) (not e!151591))))

(declare-fun rulesInvariant!529 (LexerInterface!563 List!3595) Bool)

(assert (=> b!244701 (= res!113061 (rulesInvariant!529 thiss!17480 rules!1920))))

(declare-fun b!244702 () Bool)

(declare-fun lt!99007 () List!3594)

(declare-fun e!151584 () Bool)

(declare-fun ++!914 (List!3594 List!3594) List!3594)

(assert (=> b!244702 (= e!151584 (not (= lt!99012 (++!914 lt!99021 lt!99007))))))

(declare-fun b!244704 () Bool)

(declare-fun e!151564 () Bool)

(declare-fun e!151583 () Bool)

(assert (=> b!244704 (= e!151564 e!151583)))

(declare-fun res!113065 () Bool)

(assert (=> b!244704 (=> res!113065 e!151583)))

(assert (=> b!244704 (= res!113065 e!151584)))

(declare-fun res!113066 () Bool)

(assert (=> b!244704 (=> (not res!113066) (not e!151584))))

(declare-fun lt!99018 () Bool)

(assert (=> b!244704 (= res!113066 (not lt!99018))))

(declare-fun lt!99023 () List!3594)

(assert (=> b!244704 (= lt!99018 (= lt!99012 lt!99023))))

(assert (=> b!244705 (= e!151585 (and tp!95887 tp!95889))))

(declare-fun e!151590 () Bool)

(declare-fun b!244706 () Bool)

(declare-fun e!151576 () Bool)

(declare-fun tp!95888 () Bool)

(assert (=> b!244706 (= e!151576 (and tp!95888 (inv!4438 (tag!885 (h!8982 rules!1920))) (inv!4441 (transformation!677 (h!8982 rules!1920))) e!151590))))

(declare-fun b!244707 () Bool)

(declare-fun e!151581 () Bool)

(assert (=> b!244707 (= e!151581 true)))

(declare-fun b!244708 () Bool)

(declare-fun res!113055 () Bool)

(assert (=> b!244708 (=> (not res!113055) (not e!151578))))

(assert (=> b!244708 (= res!113055 (isSeparator!677 (rule!1254 separatorToken!170)))))

(declare-fun tp!95895 () Bool)

(declare-fun b!244709 () Bool)

(declare-fun e!151589 () Bool)

(assert (=> b!244709 (= e!151571 (and tp!95895 (inv!4438 (tag!885 (rule!1254 (h!8983 tokens!465)))) (inv!4441 (transformation!677 (rule!1254 (h!8983 tokens!465)))) e!151589))))

(declare-fun b!244710 () Bool)

(declare-fun e!151570 () Bool)

(declare-fun e!151586 () Bool)

(assert (=> b!244710 (= e!151570 e!151586)))

(declare-fun res!113058 () Bool)

(assert (=> b!244710 (=> (not res!113058) (not e!151586))))

(declare-datatypes ((tuple2!3972 0))(
  ( (tuple2!3973 (_1!2202 Token!1098) (_2!2202 List!3594)) )
))
(declare-datatypes ((Option!716 0))(
  ( (None!715) (Some!715 (v!14476 tuple2!3972)) )
))
(declare-fun lt!99022 () Option!716)

(declare-fun isDefined!567 (Option!716) Bool)

(assert (=> b!244710 (= res!113058 (isDefined!567 lt!99022))))

(declare-fun maxPrefix!293 (LexerInterface!563 List!3595 List!3594) Option!716)

(assert (=> b!244710 (= lt!99022 (maxPrefix!293 thiss!17480 rules!1920 lt!99012))))

(declare-fun b!244711 () Bool)

(declare-fun e!151566 () Bool)

(declare-fun matchR!239 (Regex!901 List!3594) Bool)

(assert (=> b!244711 (= e!151566 (matchR!239 (regex!677 (rule!1254 (h!8983 tokens!465))) lt!99021))))

(declare-fun b!244712 () Bool)

(declare-fun e!151567 () Bool)

(declare-fun tp!95894 () Bool)

(assert (=> b!244712 (= e!151567 (and e!151576 tp!95894))))

(declare-fun b!244713 () Bool)

(assert (=> b!244713 (= e!151591 e!151578)))

(declare-fun res!113050 () Bool)

(assert (=> b!244713 (=> (not res!113050) (not e!151578))))

(declare-fun lt!99024 () BalanceConc!2362)

(declare-fun rulesProduceEachTokenIndividually!355 (LexerInterface!563 List!3595 BalanceConc!2362) Bool)

(assert (=> b!244713 (= res!113050 (rulesProduceEachTokenIndividually!355 thiss!17480 rules!1920 lt!99024))))

(declare-fun seqFromList!732 (List!3596) BalanceConc!2362)

(assert (=> b!244713 (= lt!99024 (seqFromList!732 tokens!465))))

(declare-fun b!244714 () Bool)

(declare-fun res!113048 () Bool)

(assert (=> b!244714 (=> (not res!113048) (not e!151566))))

(declare-fun lt!99006 () tuple2!3972)

(declare-fun isEmpty!2166 (List!3594) Bool)

(assert (=> b!244714 (= res!113048 (isEmpty!2166 (_2!2202 lt!99006)))))

(declare-fun b!244715 () Bool)

(declare-fun e!151575 () Bool)

(declare-fun e!151587 () Bool)

(assert (=> b!244715 (= e!151575 e!151587)))

(declare-fun res!113062 () Bool)

(assert (=> b!244715 (=> res!113062 e!151587)))

(assert (=> b!244715 (= res!113062 lt!99018)))

(assert (=> b!244715 e!151566))

(declare-fun res!113052 () Bool)

(assert (=> b!244715 (=> (not res!113052) (not e!151566))))

(assert (=> b!244715 (= res!113052 (= (_1!2202 lt!99006) (h!8983 tokens!465)))))

(declare-fun lt!99011 () Option!716)

(declare-fun get!1170 (Option!716) tuple2!3972)

(assert (=> b!244715 (= lt!99006 (get!1170 lt!99011))))

(assert (=> b!244715 (isDefined!567 lt!99011)))

(assert (=> b!244715 (= lt!99011 (maxPrefix!293 thiss!17480 rules!1920 lt!99021))))

(assert (=> b!244716 (= e!151590 (and tp!95893 tp!95886))))

(declare-fun b!244717 () Bool)

(declare-fun res!113047 () Bool)

(assert (=> b!244717 (=> (not res!113047) (not e!151591))))

(declare-fun isEmpty!2167 (List!3595) Bool)

(assert (=> b!244717 (= res!113047 (not (isEmpty!2167 rules!1920)))))

(declare-fun b!244718 () Bool)

(assert (=> b!244718 (= e!151583 e!151579)))

(declare-fun res!113070 () Bool)

(assert (=> b!244718 (=> res!113070 e!151579)))

(declare-fun lt!99004 () List!3594)

(declare-fun lt!99010 () List!3594)

(assert (=> b!244718 (= res!113070 (or (not (= lt!99004 lt!99010)) (not (= lt!99010 lt!99021)) (not (= lt!99004 lt!99021))))))

(declare-fun printList!247 (LexerInterface!563 List!3596) List!3594)

(assert (=> b!244718 (= lt!99010 (printList!247 thiss!17480 (Cons!3586 (h!8983 tokens!465) Nil!3586)))))

(declare-fun lt!99015 () BalanceConc!2360)

(assert (=> b!244718 (= lt!99004 (list!1409 lt!99015))))

(declare-fun lt!99005 () BalanceConc!2362)

(declare-fun printTailRec!257 (LexerInterface!563 BalanceConc!2362 Int BalanceConc!2360) BalanceConc!2360)

(assert (=> b!244718 (= lt!99015 (printTailRec!257 thiss!17480 lt!99005 0 (BalanceConc!2361 Empty!1176)))))

(declare-fun print!294 (LexerInterface!563 BalanceConc!2362) BalanceConc!2360)

(assert (=> b!244718 (= lt!99015 (print!294 thiss!17480 lt!99005))))

(declare-fun singletonSeq!229 (Token!1098) BalanceConc!2362)

(assert (=> b!244718 (= lt!99005 (singletonSeq!229 (h!8983 tokens!465)))))

(declare-fun b!244719 () Bool)

(declare-fun head!836 (List!3596) Token!1098)

(assert (=> b!244719 (= e!151586 (= (_1!2202 (get!1170 lt!99022)) (head!836 tokens!465)))))

(declare-fun res!113063 () Bool)

(assert (=> b!244720 (=> (not res!113063) (not e!151578))))

(declare-fun forall!833 (List!3596 Int) Bool)

(assert (=> b!244720 (= res!113063 (forall!833 tokens!465 lambda!7979))))

(assert (=> b!244721 (= e!151579 e!151575)))

(declare-fun res!113049 () Bool)

(assert (=> b!244721 (=> res!113049 e!151575)))

(declare-datatypes ((tuple2!3974 0))(
  ( (tuple2!3975 (_1!2203 Token!1098) (_2!2203 BalanceConc!2360)) )
))
(declare-datatypes ((Option!717 0))(
  ( (None!716) (Some!716 (v!14477 tuple2!3974)) )
))
(declare-fun isDefined!568 (Option!717) Bool)

(declare-fun maxPrefixZipperSequence!256 (LexerInterface!563 List!3595 BalanceConc!2360) Option!717)

(assert (=> b!244721 (= res!113049 (not (isDefined!568 (maxPrefixZipperSequence!256 thiss!17480 rules!1920 (seqFromList!731 (originalCharacters!720 (h!8983 tokens!465)))))))))

(declare-datatypes ((Unit!4358 0))(
  ( (Unit!4359) )
))
(declare-fun lt!99017 () Unit!4358)

(declare-fun forallContained!244 (List!3596 Int Token!1098) Unit!4358)

(assert (=> b!244721 (= lt!99017 (forallContained!244 tokens!465 lambda!7980 (h!8983 tokens!465)))))

(assert (=> b!244721 (= lt!99021 (originalCharacters!720 (h!8983 tokens!465)))))

(declare-fun e!151573 () Bool)

(declare-fun b!244722 () Bool)

(declare-fun tp!95885 () Bool)

(declare-fun inv!4442 (Token!1098) Bool)

(assert (=> b!244722 (= e!151573 (and (inv!4442 (h!8983 tokens!465)) e!151580 tp!95885))))

(declare-fun b!244723 () Bool)

(declare-fun res!113051 () Bool)

(assert (=> b!244723 (=> (not res!113051) (not e!151578))))

(declare-fun sepAndNonSepRulesDisjointChars!266 (List!3595 List!3595) Bool)

(assert (=> b!244723 (= res!113051 (sepAndNonSepRulesDisjointChars!266 rules!1920 rules!1920))))

(declare-fun b!244724 () Bool)

(declare-fun res!113069 () Bool)

(assert (=> b!244724 (=> (not res!113069) (not e!151578))))

(assert (=> b!244724 (= res!113069 (rulesProduceIndividualToken!312 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!244725 () Bool)

(assert (=> b!244725 (= e!151587 e!151581)))

(declare-fun res!113060 () Bool)

(assert (=> b!244725 (=> res!113060 e!151581)))

(declare-fun lt!99009 () BalanceConc!2362)

(assert (=> b!244725 (= res!113060 (not (rulesProduceEachTokenIndividually!355 thiss!17480 rules!1920 lt!99009)))))

(assert (=> b!244725 e!151570))

(declare-fun res!113056 () Bool)

(assert (=> b!244725 (=> res!113056 e!151570)))

(declare-fun isEmpty!2168 (List!3596) Bool)

(assert (=> b!244725 (= res!113056 (isEmpty!2168 tokens!465))))

(declare-fun lt!99019 () Unit!4358)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!132 (LexerInterface!563 List!3595 List!3596 Token!1098) Unit!4358)

(assert (=> b!244725 (= lt!99019 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!132 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!244703 () Bool)

(assert (=> b!244703 (= e!151578 e!151574)))

(declare-fun res!113059 () Bool)

(assert (=> b!244703 (=> (not res!113059) (not e!151574))))

(assert (=> b!244703 (= res!113059 (= lt!99012 lt!99013))))

(declare-fun printWithSeparatorTokenWhenNeededRec!246 (LexerInterface!563 List!3595 BalanceConc!2362 Token!1098 Int) BalanceConc!2360)

(assert (=> b!244703 (= lt!99013 (list!1409 (printWithSeparatorTokenWhenNeededRec!246 thiss!17480 rules!1920 lt!99024 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!256 (LexerInterface!563 List!3595 List!3596 Token!1098) List!3594)

(assert (=> b!244703 (= lt!99012 (printWithSeparatorTokenWhenNeededList!256 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!113068 () Bool)

(assert (=> start!25986 (=> (not res!113068) (not e!151591))))

(assert (=> start!25986 (= res!113068 ((_ is Lexer!561) thiss!17480))))

(assert (=> start!25986 e!151591))

(assert (=> start!25986 true))

(assert (=> start!25986 e!151567))

(assert (=> start!25986 (and (inv!4442 separatorToken!170) e!151572)))

(assert (=> start!25986 e!151573))

(declare-fun b!244726 () Bool)

(assert (=> b!244726 (= e!151574 (not e!151564))))

(declare-fun res!113054 () Bool)

(assert (=> b!244726 (=> res!113054 e!151564)))

(assert (=> b!244726 (= res!113054 (not (= lt!99007 (list!1409 (printWithSeparatorTokenWhenNeededRec!246 thiss!17480 rules!1920 lt!99009 separatorToken!170 0)))))))

(assert (=> b!244726 (= lt!99009 (seqFromList!732 (t!35064 tokens!465)))))

(declare-fun lt!99014 () List!3594)

(assert (=> b!244726 (= lt!99014 lt!99023)))

(declare-fun lt!99016 () List!3594)

(assert (=> b!244726 (= lt!99023 (++!914 lt!99021 lt!99016))))

(declare-fun lt!99008 () List!3594)

(assert (=> b!244726 (= lt!99014 (++!914 (++!914 lt!99021 lt!99008) lt!99007))))

(declare-fun lt!99020 () Unit!4358)

(declare-fun lemmaConcatAssociativity!382 (List!3594 List!3594 List!3594) Unit!4358)

(assert (=> b!244726 (= lt!99020 (lemmaConcatAssociativity!382 lt!99021 lt!99008 lt!99007))))

(declare-fun charsOf!332 (Token!1098) BalanceConc!2360)

(assert (=> b!244726 (= lt!99021 (list!1409 (charsOf!332 (h!8983 tokens!465))))))

(assert (=> b!244726 (= lt!99016 (++!914 lt!99008 lt!99007))))

(assert (=> b!244726 (= lt!99007 (printWithSeparatorTokenWhenNeededList!256 thiss!17480 rules!1920 (t!35064 tokens!465) separatorToken!170))))

(assert (=> b!244726 (= lt!99008 (list!1409 (charsOf!332 separatorToken!170)))))

(assert (=> b!244727 (= e!151589 (and tp!95891 tp!95890))))

(assert (= (and start!25986 res!113068) b!244717))

(assert (= (and b!244717 res!113047) b!244701))

(assert (= (and b!244701 res!113061) b!244713))

(assert (= (and b!244713 res!113050) b!244724))

(assert (= (and b!244724 res!113069) b!244708))

(assert (= (and b!244708 res!113055) b!244720))

(assert (= (and b!244720 res!113063) b!244723))

(assert (= (and b!244723 res!113051) b!244696))

(assert (= (and b!244696 res!113067) b!244703))

(assert (= (and b!244703 res!113059) b!244697))

(assert (= (and b!244697 res!113064) b!244726))

(assert (= (and b!244726 (not res!113054)) b!244704))

(assert (= (and b!244704 res!113066) b!244702))

(assert (= (and b!244704 (not res!113065)) b!244718))

(assert (= (and b!244718 (not res!113070)) b!244698))

(assert (= (and b!244698 (not res!113053)) b!244700))

(assert (= (and b!244700 (not res!113057)) b!244721))

(assert (= (and b!244721 (not res!113049)) b!244715))

(assert (= (and b!244715 res!113052) b!244714))

(assert (= (and b!244714 res!113048) b!244711))

(assert (= (and b!244715 (not res!113062)) b!244725))

(assert (= (and b!244725 (not res!113056)) b!244710))

(assert (= (and b!244710 res!113058) b!244719))

(assert (= (and b!244725 (not res!113060)) b!244707))

(assert (= b!244706 b!244716))

(assert (= b!244712 b!244706))

(assert (= (and start!25986 ((_ is Cons!3585) rules!1920)) b!244712))

(assert (= b!244694 b!244705))

(assert (= b!244699 b!244694))

(assert (= start!25986 b!244699))

(assert (= b!244709 b!244727))

(assert (= b!244695 b!244709))

(assert (= b!244722 b!244695))

(assert (= (and start!25986 ((_ is Cons!3586) tokens!465)) b!244722))

(declare-fun m!299333 () Bool)

(assert (=> b!244725 m!299333))

(declare-fun m!299335 () Bool)

(assert (=> b!244725 m!299335))

(declare-fun m!299337 () Bool)

(assert (=> b!244725 m!299337))

(declare-fun m!299339 () Bool)

(assert (=> b!244703 m!299339))

(assert (=> b!244703 m!299339))

(declare-fun m!299341 () Bool)

(assert (=> b!244703 m!299341))

(declare-fun m!299343 () Bool)

(assert (=> b!244703 m!299343))

(declare-fun m!299345 () Bool)

(assert (=> b!244720 m!299345))

(declare-fun m!299347 () Bool)

(assert (=> b!244709 m!299347))

(declare-fun m!299349 () Bool)

(assert (=> b!244709 m!299349))

(declare-fun m!299351 () Bool)

(assert (=> b!244700 m!299351))

(assert (=> b!244700 m!299351))

(declare-fun m!299353 () Bool)

(assert (=> b!244700 m!299353))

(declare-fun m!299355 () Bool)

(assert (=> b!244700 m!299355))

(declare-fun m!299357 () Bool)

(assert (=> start!25986 m!299357))

(declare-fun m!299359 () Bool)

(assert (=> b!244702 m!299359))

(declare-fun m!299361 () Bool)

(assert (=> b!244726 m!299361))

(declare-fun m!299363 () Bool)

(assert (=> b!244726 m!299363))

(declare-fun m!299365 () Bool)

(assert (=> b!244726 m!299365))

(assert (=> b!244726 m!299363))

(declare-fun m!299367 () Bool)

(assert (=> b!244726 m!299367))

(declare-fun m!299369 () Bool)

(assert (=> b!244726 m!299369))

(declare-fun m!299371 () Bool)

(assert (=> b!244726 m!299371))

(declare-fun m!299373 () Bool)

(assert (=> b!244726 m!299373))

(assert (=> b!244726 m!299371))

(declare-fun m!299375 () Bool)

(assert (=> b!244726 m!299375))

(declare-fun m!299377 () Bool)

(assert (=> b!244726 m!299377))

(declare-fun m!299379 () Bool)

(assert (=> b!244726 m!299379))

(assert (=> b!244726 m!299377))

(declare-fun m!299381 () Bool)

(assert (=> b!244726 m!299381))

(declare-fun m!299383 () Bool)

(assert (=> b!244726 m!299383))

(assert (=> b!244726 m!299365))

(declare-fun m!299385 () Bool)

(assert (=> b!244726 m!299385))

(declare-fun m!299387 () Bool)

(assert (=> b!244701 m!299387))

(declare-fun m!299389 () Bool)

(assert (=> b!244713 m!299389))

(declare-fun m!299391 () Bool)

(assert (=> b!244713 m!299391))

(declare-fun m!299393 () Bool)

(assert (=> b!244714 m!299393))

(declare-fun m!299395 () Bool)

(assert (=> b!244718 m!299395))

(declare-fun m!299397 () Bool)

(assert (=> b!244718 m!299397))

(declare-fun m!299399 () Bool)

(assert (=> b!244718 m!299399))

(declare-fun m!299401 () Bool)

(assert (=> b!244718 m!299401))

(declare-fun m!299403 () Bool)

(assert (=> b!244718 m!299403))

(declare-fun m!299405 () Bool)

(assert (=> b!244695 m!299405))

(declare-fun m!299407 () Bool)

(assert (=> b!244715 m!299407))

(declare-fun m!299409 () Bool)

(assert (=> b!244715 m!299409))

(declare-fun m!299411 () Bool)

(assert (=> b!244715 m!299411))

(declare-fun m!299413 () Bool)

(assert (=> b!244717 m!299413))

(declare-fun m!299415 () Bool)

(assert (=> b!244699 m!299415))

(declare-fun m!299417 () Bool)

(assert (=> b!244723 m!299417))

(declare-fun m!299419 () Bool)

(assert (=> b!244710 m!299419))

(declare-fun m!299421 () Bool)

(assert (=> b!244710 m!299421))

(declare-fun m!299423 () Bool)

(assert (=> b!244706 m!299423))

(declare-fun m!299425 () Bool)

(assert (=> b!244706 m!299425))

(declare-fun m!299427 () Bool)

(assert (=> b!244697 m!299427))

(assert (=> b!244697 m!299427))

(declare-fun m!299429 () Bool)

(assert (=> b!244697 m!299429))

(declare-fun m!299431 () Bool)

(assert (=> b!244711 m!299431))

(declare-fun m!299433 () Bool)

(assert (=> b!244694 m!299433))

(declare-fun m!299435 () Bool)

(assert (=> b!244694 m!299435))

(declare-fun m!299437 () Bool)

(assert (=> b!244721 m!299437))

(assert (=> b!244721 m!299437))

(declare-fun m!299439 () Bool)

(assert (=> b!244721 m!299439))

(assert (=> b!244721 m!299439))

(declare-fun m!299441 () Bool)

(assert (=> b!244721 m!299441))

(declare-fun m!299443 () Bool)

(assert (=> b!244721 m!299443))

(declare-fun m!299445 () Bool)

(assert (=> b!244722 m!299445))

(declare-fun m!299447 () Bool)

(assert (=> b!244698 m!299447))

(declare-fun m!299449 () Bool)

(assert (=> b!244724 m!299449))

(declare-fun m!299451 () Bool)

(assert (=> b!244719 m!299451))

(declare-fun m!299453 () Bool)

(assert (=> b!244719 m!299453))

(check-sat (not b!244724) (not b!244722) (not b!244706) b_and!18395 (not b!244723) (not b_next!9021) b_and!18397 (not b!244719) b_and!18389 (not b!244713) (not b!244710) (not b!244726) (not b!244718) (not b_next!9027) (not b_next!9025) (not b!244736) (not b!244717) (not b!244698) (not b!244725) (not b!244695) (not b!244694) b_and!18393 (not b!244701) (not b!244702) (not b!244721) (not b_next!9017) (not b!244699) (not start!25986) b_and!18391 (not b!244714) (not b!244711) (not b!244697) (not b!244715) (not b!244720) (not b!244703) (not b!244700) (not b_next!9019) b_and!18399 (not b!244709) (not b!244712) (not b_next!9023))
(check-sat (not b_next!9027) b_and!18395 (not b_next!9025) (not b_next!9021) b_and!18397 b_and!18393 (not b_next!9017) b_and!18391 (not b_next!9019) b_and!18399 b_and!18389 (not b_next!9023))

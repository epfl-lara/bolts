; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25970 () Bool)

(assert start!25970)

(declare-fun b!243796 () Bool)

(declare-fun b_free!8921 () Bool)

(declare-fun b_next!8921 () Bool)

(assert (=> b!243796 (= b_free!8921 (not b_next!8921))))

(declare-fun tp!95573 () Bool)

(declare-fun b_and!18293 () Bool)

(assert (=> b!243796 (= tp!95573 b_and!18293)))

(declare-fun b_free!8923 () Bool)

(declare-fun b_next!8923 () Bool)

(assert (=> b!243796 (= b_free!8923 (not b_next!8923))))

(declare-fun tp!95574 () Bool)

(declare-fun b_and!18295 () Bool)

(assert (=> b!243796 (= tp!95574 b_and!18295)))

(declare-fun b!243819 () Bool)

(declare-fun b_free!8925 () Bool)

(declare-fun b_next!8925 () Bool)

(assert (=> b!243819 (= b_free!8925 (not b_next!8925))))

(declare-fun tp!95576 () Bool)

(declare-fun b_and!18297 () Bool)

(assert (=> b!243819 (= tp!95576 b_and!18297)))

(declare-fun b_free!8927 () Bool)

(declare-fun b_next!8927 () Bool)

(assert (=> b!243819 (= b_free!8927 (not b_next!8927))))

(declare-fun tp!95572 () Bool)

(declare-fun b_and!18299 () Bool)

(assert (=> b!243819 (= tp!95572 b_and!18299)))

(declare-fun b!243804 () Bool)

(declare-fun b_free!8929 () Bool)

(declare-fun b_next!8929 () Bool)

(assert (=> b!243804 (= b_free!8929 (not b_next!8929))))

(declare-fun tp!95583 () Bool)

(declare-fun b_and!18301 () Bool)

(assert (=> b!243804 (= tp!95583 b_and!18301)))

(declare-fun b_free!8931 () Bool)

(declare-fun b_next!8931 () Bool)

(assert (=> b!243804 (= b_free!8931 (not b_next!8931))))

(declare-fun tp!95581 () Bool)

(declare-fun b_and!18303 () Bool)

(assert (=> b!243804 (= tp!95581 b_and!18303)))

(declare-fun bs!26310 () Bool)

(declare-fun b!243807 () Bool)

(declare-fun b!243806 () Bool)

(assert (= bs!26310 (and b!243807 b!243806)))

(declare-fun lambda!7924 () Int)

(declare-fun lambda!7923 () Int)

(assert (=> bs!26310 (not (= lambda!7924 lambda!7923))))

(declare-fun b!243848 () Bool)

(declare-fun e!150910 () Bool)

(assert (=> b!243848 (= e!150910 true)))

(declare-fun b!243847 () Bool)

(declare-fun e!150909 () Bool)

(assert (=> b!243847 (= e!150909 e!150910)))

(declare-fun b!243846 () Bool)

(declare-fun e!150908 () Bool)

(assert (=> b!243846 (= e!150908 e!150909)))

(assert (=> b!243807 e!150908))

(assert (= b!243847 b!243848))

(assert (= b!243846 b!243847))

(declare-datatypes ((List!3561 0))(
  ( (Nil!3551) (Cons!3551 (h!8948 (_ BitVec 16)) (t!35013 List!3561)) )
))
(declare-datatypes ((TokenValue!691 0))(
  ( (FloatLiteralValue!1382 (text!5282 List!3561)) (TokenValueExt!690 (__x!2869 Int)) (Broken!3455 (value!23356 List!3561)) (Object!700) (End!691) (Def!691) (Underscore!691) (Match!691) (Else!691) (Error!691) (Case!691) (If!691) (Extends!691) (Abstract!691) (Class!691) (Val!691) (DelimiterValue!1382 (del!751 List!3561)) (KeywordValue!697 (value!23357 List!3561)) (CommentValue!1382 (value!23358 List!3561)) (WhitespaceValue!1382 (value!23359 List!3561)) (IndentationValue!691 (value!23360 List!3561)) (String!4534) (Int32!691) (Broken!3456 (value!23361 List!3561)) (Boolean!692) (Unit!4327) (OperatorValue!694 (op!751 List!3561)) (IdentifierValue!1382 (value!23362 List!3561)) (IdentifierValue!1383 (value!23363 List!3561)) (WhitespaceValue!1383 (value!23364 List!3561)) (True!1382) (False!1382) (Broken!3457 (value!23365 List!3561)) (Broken!3458 (value!23366 List!3561)) (True!1383) (RightBrace!691) (RightBracket!691) (Colon!691) (Null!691) (Comma!691) (LeftBracket!691) (False!1383) (LeftBrace!691) (ImaginaryLiteralValue!691 (text!5283 List!3561)) (StringLiteralValue!2073 (value!23367 List!3561)) (EOFValue!691 (value!23368 List!3561)) (IdentValue!691 (value!23369 List!3561)) (DelimiterValue!1383 (value!23370 List!3561)) (DedentValue!691 (value!23371 List!3561)) (NewLineValue!691 (value!23372 List!3561)) (IntegerValue!2073 (value!23373 (_ BitVec 32)) (text!5284 List!3561)) (IntegerValue!2074 (value!23374 Int) (text!5285 List!3561)) (Times!691) (Or!691) (Equal!691) (Minus!691) (Broken!3459 (value!23375 List!3561)) (And!691) (Div!691) (LessEqual!691) (Mod!691) (Concat!1584) (Not!691) (Plus!691) (SpaceValue!691 (value!23376 List!3561)) (IntegerValue!2075 (value!23377 Int) (text!5286 List!3561)) (StringLiteralValue!2074 (text!5287 List!3561)) (FloatLiteralValue!1383 (text!5288 List!3561)) (BytesLiteralValue!691 (value!23378 List!3561)) (CommentValue!1383 (value!23379 List!3561)) (StringLiteralValue!2075 (value!23380 List!3561)) (ErrorTokenValue!691 (msg!752 List!3561)) )
))
(declare-datatypes ((C!2708 0))(
  ( (C!2709 (val!1240 Int)) )
))
(declare-datatypes ((List!3562 0))(
  ( (Nil!3552) (Cons!3552 (h!8949 C!2708) (t!35014 List!3562)) )
))
(declare-datatypes ((IArray!2321 0))(
  ( (IArray!2322 (innerList!1218 List!3562)) )
))
(declare-datatypes ((Conc!1160 0))(
  ( (Node!1160 (left!2889 Conc!1160) (right!3219 Conc!1160) (csize!2550 Int) (cheight!1371 Int)) (Leaf!1834 (xs!3755 IArray!2321) (csize!2551 Int)) (Empty!1160) )
))
(declare-datatypes ((BalanceConc!2328 0))(
  ( (BalanceConc!2329 (c!46844 Conc!1160)) )
))
(declare-datatypes ((TokenValueInjection!1154 0))(
  ( (TokenValueInjection!1155 (toValue!1372 Int) (toChars!1231 Int)) )
))
(declare-datatypes ((String!4535 0))(
  ( (String!4536 (value!23381 String)) )
))
(declare-datatypes ((Regex!893 0))(
  ( (ElementMatch!893 (c!46845 C!2708)) (Concat!1585 (regOne!2298 Regex!893) (regTwo!2298 Regex!893)) (EmptyExpr!893) (Star!893 (reg!1222 Regex!893)) (EmptyLang!893) (Union!893 (regOne!2299 Regex!893) (regTwo!2299 Regex!893)) )
))
(declare-datatypes ((Rule!1138 0))(
  ( (Rule!1139 (regex!669 Regex!893) (tag!877 String!4535) (isSeparator!669 Bool) (transformation!669 TokenValueInjection!1154)) )
))
(declare-datatypes ((List!3563 0))(
  ( (Nil!3553) (Cons!3553 (h!8950 Rule!1138) (t!35015 List!3563)) )
))
(declare-fun rules!1920 () List!3563)

(get-info :version)

(assert (= (and b!243807 ((_ is Cons!3553) rules!1920)) b!243846))

(declare-fun order!2553 () Int)

(declare-fun order!2555 () Int)

(declare-fun dynLambda!1705 (Int Int) Int)

(declare-fun dynLambda!1706 (Int Int) Int)

(assert (=> b!243848 (< (dynLambda!1705 order!2553 (toValue!1372 (transformation!669 (h!8950 rules!1920)))) (dynLambda!1706 order!2555 lambda!7924))))

(declare-fun order!2557 () Int)

(declare-fun dynLambda!1707 (Int Int) Int)

(assert (=> b!243848 (< (dynLambda!1707 order!2557 (toChars!1231 (transformation!669 (h!8950 rules!1920)))) (dynLambda!1706 order!2555 lambda!7924))))

(assert (=> b!243807 true))

(declare-fun b!243785 () Bool)

(declare-fun res!112516 () Bool)

(declare-fun e!150886 () Bool)

(assert (=> b!243785 (=> (not res!112516) (not e!150886))))

(declare-fun isEmpty!2138 (List!3563) Bool)

(assert (=> b!243785 (= res!112516 (not (isEmpty!2138 rules!1920)))))

(declare-fun b!243786 () Bool)

(declare-fun res!112517 () Bool)

(declare-fun e!150877 () Bool)

(assert (=> b!243786 (=> (not res!112517) (not e!150877))))

(declare-datatypes ((Token!1082 0))(
  ( (Token!1083 (value!23382 TokenValue!691) (rule!1246 Rule!1138) (size!2850 Int) (originalCharacters!712 List!3562)) )
))
(declare-datatypes ((tuple2!3920 0))(
  ( (tuple2!3921 (_1!2176 Token!1082) (_2!2176 List!3562)) )
))
(declare-fun lt!98548 () tuple2!3920)

(declare-fun isEmpty!2139 (List!3562) Bool)

(assert (=> b!243786 (= res!112517 (isEmpty!2139 (_2!2176 lt!98548)))))

(declare-fun b!243787 () Bool)

(declare-fun e!150893 () Bool)

(declare-datatypes ((Option!699 0))(
  ( (None!698) (Some!698 (v!14459 tuple2!3920)) )
))
(declare-fun lt!98561 () Option!699)

(declare-datatypes ((List!3564 0))(
  ( (Nil!3554) (Cons!3554 (h!8951 Token!1082) (t!35016 List!3564)) )
))
(declare-fun tokens!465 () List!3564)

(declare-fun get!1157 (Option!699) tuple2!3920)

(declare-fun head!833 (List!3564) Token!1082)

(assert (=> b!243787 (= e!150893 (= (_1!2176 (get!1157 lt!98561)) (head!833 tokens!465)))))

(declare-fun b!243788 () Bool)

(declare-fun res!112523 () Bool)

(declare-fun e!150897 () Bool)

(assert (=> b!243788 (=> (not res!112523) (not e!150897))))

(declare-fun separatorToken!170 () Token!1082)

(declare-datatypes ((LexerInterface!555 0))(
  ( (LexerInterfaceExt!552 (__x!2870 Int)) (Lexer!553) )
))
(declare-fun thiss!17480 () LexerInterface!555)

(declare-fun rulesProduceIndividualToken!304 (LexerInterface!555 List!3563 Token!1082) Bool)

(assert (=> b!243788 (= res!112523 (rulesProduceIndividualToken!304 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!243789 () Bool)

(declare-fun e!150876 () Bool)

(declare-fun e!150881 () Bool)

(assert (=> b!243789 (= e!150876 e!150881)))

(declare-fun res!112524 () Bool)

(assert (=> b!243789 (=> (not res!112524) (not e!150881))))

(declare-fun lt!98543 () Rule!1138)

(declare-fun lt!98569 () List!3562)

(declare-fun matchR!231 (Regex!893 List!3562) Bool)

(assert (=> b!243789 (= res!112524 (matchR!231 (regex!669 lt!98543) lt!98569))))

(declare-datatypes ((Option!700 0))(
  ( (None!699) (Some!699 (v!14460 Rule!1138)) )
))
(declare-fun lt!98533 () Option!700)

(declare-fun get!1158 (Option!700) Rule!1138)

(assert (=> b!243789 (= lt!98543 (get!1158 lt!98533))))

(declare-fun b!243790 () Bool)

(declare-fun e!150866 () Bool)

(assert (=> b!243790 (= e!150866 false)))

(declare-fun b!243791 () Bool)

(declare-fun e!150887 () Bool)

(declare-fun e!150871 () Bool)

(declare-fun tp!95582 () Bool)

(assert (=> b!243791 (= e!150887 (and e!150871 tp!95582))))

(declare-fun tp!95578 () Bool)

(declare-fun e!150900 () Bool)

(declare-fun e!150884 () Bool)

(declare-fun b!243792 () Bool)

(declare-fun inv!21 (TokenValue!691) Bool)

(assert (=> b!243792 (= e!150900 (and (inv!21 (value!23382 (h!8951 tokens!465))) e!150884 tp!95578))))

(declare-fun res!112497 () Bool)

(assert (=> start!25970 (=> (not res!112497) (not e!150886))))

(assert (=> start!25970 (= res!112497 ((_ is Lexer!553) thiss!17480))))

(assert (=> start!25970 e!150886))

(assert (=> start!25970 true))

(assert (=> start!25970 e!150887))

(declare-fun e!150895 () Bool)

(declare-fun inv!4413 (Token!1082) Bool)

(assert (=> start!25970 (and (inv!4413 separatorToken!170) e!150895)))

(declare-fun e!150878 () Bool)

(assert (=> start!25970 e!150878))

(declare-fun b!243793 () Bool)

(declare-fun e!150865 () Bool)

(declare-fun e!150885 () Bool)

(assert (=> b!243793 (= e!150865 e!150885)))

(declare-fun res!112510 () Bool)

(assert (=> b!243793 (=> res!112510 e!150885)))

(declare-fun lt!98526 () List!3564)

(declare-fun filter!63 (List!3564 Int) List!3564)

(assert (=> b!243793 (= res!112510 (not (= (filter!63 lt!98526 lambda!7923) (t!35016 tokens!465))))))

(assert (=> b!243793 (= (filter!63 lt!98526 lambda!7923) (t!35016 tokens!465))))

(declare-fun lt!98527 () BalanceConc!2328)

(declare-datatypes ((IArray!2323 0))(
  ( (IArray!2324 (innerList!1219 List!3564)) )
))
(declare-datatypes ((Conc!1161 0))(
  ( (Node!1161 (left!2890 Conc!1161) (right!3220 Conc!1161) (csize!2552 Int) (cheight!1372 Int)) (Leaf!1835 (xs!3756 IArray!2323) (csize!2553 Int)) (Empty!1161) )
))
(declare-datatypes ((BalanceConc!2330 0))(
  ( (BalanceConc!2331 (c!46846 Conc!1161)) )
))
(declare-fun list!1400 (BalanceConc!2330) List!3564)

(declare-datatypes ((tuple2!3922 0))(
  ( (tuple2!3923 (_1!2177 BalanceConc!2330) (_2!2177 BalanceConc!2328)) )
))
(declare-fun lex!355 (LexerInterface!555 List!3563 BalanceConc!2328) tuple2!3922)

(assert (=> b!243793 (= lt!98526 (list!1400 (_1!2177 (lex!355 thiss!17480 rules!1920 lt!98527))))))

(declare-datatypes ((Unit!4328 0))(
  ( (Unit!4329) )
))
(declare-fun lt!98528 () Unit!4328)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!54 (LexerInterface!555 List!3563 List!3564 Token!1082) Unit!4328)

(assert (=> b!243793 (= lt!98528 (theoremInvertabilityFromTokensSepTokenWhenNeeded!54 thiss!17480 rules!1920 (t!35016 tokens!465) separatorToken!170))))

(declare-fun lt!98544 () Option!699)

(declare-fun lt!98542 () List!3562)

(assert (=> b!243793 (= lt!98544 (Some!698 (tuple2!3921 separatorToken!170 lt!98542)))))

(declare-fun lt!98568 () Token!1082)

(declare-fun lt!98554 () Unit!4328)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!60 (LexerInterface!555 List!3563 Token!1082 Rule!1138 List!3562 Rule!1138) Unit!4328)

(assert (=> b!243793 (= lt!98554 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!60 thiss!17480 rules!1920 separatorToken!170 (rule!1246 separatorToken!170) lt!98542 (rule!1246 lt!98568)))))

(declare-fun lt!98572 () Unit!4328)

(declare-fun e!150873 () Unit!4328)

(assert (=> b!243793 (= lt!98572 e!150873)))

(declare-fun c!46841 () Bool)

(declare-fun lt!98565 () C!2708)

(declare-fun contains!664 (List!3562 C!2708) Bool)

(declare-fun usedCharacters!74 (Regex!893) List!3562)

(assert (=> b!243793 (= c!46841 (contains!664 (usedCharacters!74 (regex!669 (rule!1246 separatorToken!170))) lt!98565))))

(declare-fun head!834 (List!3562) C!2708)

(assert (=> b!243793 (= lt!98565 (head!834 lt!98542))))

(declare-fun lt!98564 () Unit!4328)

(declare-fun e!150880 () Unit!4328)

(assert (=> b!243793 (= lt!98564 e!150880)))

(declare-fun c!46843 () Bool)

(declare-fun lt!98555 () C!2708)

(assert (=> b!243793 (= c!46843 (not (contains!664 (usedCharacters!74 (regex!669 (rule!1246 lt!98568))) lt!98555)))))

(assert (=> b!243793 (= lt!98555 (head!834 lt!98569))))

(assert (=> b!243793 e!150876))

(declare-fun res!112491 () Bool)

(assert (=> b!243793 (=> (not res!112491) (not e!150876))))

(declare-fun isDefined!550 (Option!700) Bool)

(assert (=> b!243793 (= res!112491 (isDefined!550 lt!98533))))

(declare-fun getRuleFromTag!110 (LexerInterface!555 List!3563 String!4535) Option!700)

(assert (=> b!243793 (= lt!98533 (getRuleFromTag!110 thiss!17480 rules!1920 (tag!877 (rule!1246 lt!98568))))))

(declare-fun lt!98546 () Unit!4328)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!110 (LexerInterface!555 List!3563 List!3562 Token!1082) Unit!4328)

(assert (=> b!243793 (= lt!98546 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!110 thiss!17480 rules!1920 lt!98569 lt!98568))))

(declare-fun list!1401 (BalanceConc!2328) List!3562)

(declare-fun charsOf!324 (Token!1082) BalanceConc!2328)

(assert (=> b!243793 (= lt!98569 (list!1401 (charsOf!324 lt!98568)))))

(declare-fun lt!98524 () Unit!4328)

(declare-fun forallContained!236 (List!3564 Int Token!1082) Unit!4328)

(assert (=> b!243793 (= lt!98524 (forallContained!236 tokens!465 lambda!7924 lt!98568))))

(declare-fun e!150869 () Bool)

(assert (=> b!243793 e!150869))

(declare-fun res!112519 () Bool)

(assert (=> b!243793 (=> (not res!112519) (not e!150869))))

(declare-fun lt!98562 () tuple2!3922)

(declare-fun size!2851 (BalanceConc!2330) Int)

(assert (=> b!243793 (= res!112519 (= (size!2851 (_1!2177 lt!98562)) 1))))

(declare-fun lt!98566 () BalanceConc!2328)

(assert (=> b!243793 (= lt!98562 (lex!355 thiss!17480 rules!1920 lt!98566))))

(declare-fun lt!98547 () BalanceConc!2330)

(declare-fun printTailRec!249 (LexerInterface!555 BalanceConc!2330 Int BalanceConc!2328) BalanceConc!2328)

(assert (=> b!243793 (= lt!98566 (printTailRec!249 thiss!17480 lt!98547 0 (BalanceConc!2329 Empty!1160)))))

(declare-fun print!286 (LexerInterface!555 BalanceConc!2330) BalanceConc!2328)

(assert (=> b!243793 (= lt!98566 (print!286 thiss!17480 lt!98547))))

(declare-fun singletonSeq!221 (Token!1082) BalanceConc!2330)

(assert (=> b!243793 (= lt!98547 (singletonSeq!221 lt!98568))))

(declare-fun e!150874 () Bool)

(assert (=> b!243793 e!150874))

(declare-fun res!112499 () Bool)

(assert (=> b!243793 (=> (not res!112499) (not e!150874))))

(declare-fun lt!98541 () Option!700)

(assert (=> b!243793 (= res!112499 (isDefined!550 lt!98541))))

(assert (=> b!243793 (= lt!98541 (getRuleFromTag!110 thiss!17480 rules!1920 (tag!877 (rule!1246 separatorToken!170))))))

(declare-fun lt!98567 () Unit!4328)

(declare-fun lt!98525 () List!3562)

(assert (=> b!243793 (= lt!98567 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!110 thiss!17480 rules!1920 lt!98525 separatorToken!170))))

(declare-fun e!150883 () Bool)

(assert (=> b!243793 e!150883))

(declare-fun res!112494 () Bool)

(assert (=> b!243793 (=> (not res!112494) (not e!150883))))

(declare-fun lt!98538 () tuple2!3922)

(assert (=> b!243793 (= res!112494 (= (size!2851 (_1!2177 lt!98538)) 1))))

(declare-fun lt!98536 () BalanceConc!2328)

(assert (=> b!243793 (= lt!98538 (lex!355 thiss!17480 rules!1920 lt!98536))))

(declare-fun lt!98545 () BalanceConc!2330)

(assert (=> b!243793 (= lt!98536 (printTailRec!249 thiss!17480 lt!98545 0 (BalanceConc!2329 Empty!1160)))))

(assert (=> b!243793 (= lt!98536 (print!286 thiss!17480 lt!98545))))

(assert (=> b!243793 (= lt!98545 (singletonSeq!221 separatorToken!170))))

(assert (=> b!243793 (rulesProduceIndividualToken!304 thiss!17480 rules!1920 lt!98568)))

(declare-fun lt!98551 () Unit!4328)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!122 (LexerInterface!555 List!3563 List!3564 Token!1082) Unit!4328)

(assert (=> b!243793 (= lt!98551 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!122 thiss!17480 rules!1920 tokens!465 lt!98568))))

(assert (=> b!243793 (= lt!98568 (head!833 (t!35016 tokens!465)))))

(declare-fun lt!98571 () Unit!4328)

(declare-fun e!150875 () Unit!4328)

(assert (=> b!243793 (= lt!98571 e!150875)))

(declare-fun c!46842 () Bool)

(declare-fun isEmpty!2140 (List!3564) Bool)

(assert (=> b!243793 (= c!46842 (isEmpty!2140 (t!35016 tokens!465)))))

(declare-fun lt!98529 () List!3562)

(declare-fun maxPrefix!285 (LexerInterface!555 List!3563 List!3562) Option!699)

(assert (=> b!243793 (= lt!98544 (maxPrefix!285 thiss!17480 rules!1920 lt!98529))))

(declare-fun lt!98522 () tuple2!3920)

(assert (=> b!243793 (= lt!98529 (_2!2176 lt!98522))))

(declare-fun lt!98540 () Unit!4328)

(declare-fun lt!98560 () List!3562)

(declare-fun lt!98537 () List!3562)

(declare-fun lemmaSamePrefixThenSameSuffix!190 (List!3562 List!3562 List!3562 List!3562 List!3562) Unit!4328)

(assert (=> b!243793 (= lt!98540 (lemmaSamePrefixThenSameSuffix!190 lt!98537 lt!98529 lt!98537 (_2!2176 lt!98522) lt!98560))))

(assert (=> b!243793 (= lt!98522 (get!1157 (maxPrefix!285 thiss!17480 rules!1920 lt!98560)))))

(declare-fun lt!98553 () List!3562)

(declare-fun isPrefix!365 (List!3562 List!3562) Bool)

(assert (=> b!243793 (isPrefix!365 lt!98537 lt!98553)))

(declare-fun lt!98573 () Unit!4328)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!260 (List!3562 List!3562) Unit!4328)

(assert (=> b!243793 (= lt!98573 (lemmaConcatTwoListThenFirstIsPrefix!260 lt!98537 lt!98529))))

(declare-fun e!150890 () Bool)

(assert (=> b!243793 e!150890))

(declare-fun res!112500 () Bool)

(assert (=> b!243793 (=> res!112500 e!150890)))

(assert (=> b!243793 (= res!112500 (isEmpty!2140 tokens!465))))

(declare-fun lt!98532 () Unit!4328)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!130 (LexerInterface!555 List!3563 List!3564 Token!1082) Unit!4328)

(assert (=> b!243793 (= lt!98532 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!130 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!243794 () Bool)

(declare-fun res!112512 () Bool)

(assert (=> b!243794 (=> (not res!112512) (not e!150869))))

(declare-fun apply!674 (BalanceConc!2330 Int) Token!1082)

(assert (=> b!243794 (= res!112512 (= (apply!674 (_1!2177 lt!98562) 0) lt!98568))))

(declare-fun b!243795 () Bool)

(declare-fun e!150888 () Bool)

(assert (=> b!243795 (= e!150888 e!150865)))

(declare-fun res!112505 () Bool)

(assert (=> b!243795 (=> res!112505 e!150865)))

(declare-fun lt!98563 () Bool)

(assert (=> b!243795 (= res!112505 (not lt!98563))))

(assert (=> b!243795 e!150877))

(declare-fun res!112511 () Bool)

(assert (=> b!243795 (=> (not res!112511) (not e!150877))))

(assert (=> b!243795 (= res!112511 (= (_1!2176 lt!98548) (h!8951 tokens!465)))))

(declare-fun lt!98549 () Option!699)

(assert (=> b!243795 (= lt!98548 (get!1157 lt!98549))))

(declare-fun isDefined!551 (Option!699) Bool)

(assert (=> b!243795 (isDefined!551 lt!98549)))

(assert (=> b!243795 (= lt!98549 (maxPrefix!285 thiss!17480 rules!1920 lt!98537))))

(declare-fun e!150870 () Bool)

(assert (=> b!243796 (= e!150870 (and tp!95573 tp!95574))))

(declare-fun b!243797 () Bool)

(declare-fun e!150898 () Bool)

(assert (=> b!243797 (= e!150897 e!150898)))

(declare-fun res!112504 () Bool)

(assert (=> b!243797 (=> (not res!112504) (not e!150898))))

(declare-fun lt!98550 () List!3562)

(assert (=> b!243797 (= res!112504 (= lt!98560 lt!98550))))

(declare-fun lt!98531 () BalanceConc!2328)

(assert (=> b!243797 (= lt!98550 (list!1401 lt!98531))))

(declare-fun lt!98534 () BalanceConc!2330)

(declare-fun printWithSeparatorTokenWhenNeededRec!238 (LexerInterface!555 List!3563 BalanceConc!2330 Token!1082 Int) BalanceConc!2328)

(assert (=> b!243797 (= lt!98531 (printWithSeparatorTokenWhenNeededRec!238 thiss!17480 rules!1920 lt!98534 separatorToken!170 0))))

(declare-fun printWithSeparatorTokenWhenNeededList!248 (LexerInterface!555 List!3563 List!3564 Token!1082) List!3562)

(assert (=> b!243797 (= lt!98560 (printWithSeparatorTokenWhenNeededList!248 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!243798 () Bool)

(declare-fun e!150879 () Bool)

(declare-fun e!150891 () Bool)

(assert (=> b!243798 (= e!150879 e!150891)))

(declare-fun res!112492 () Bool)

(assert (=> b!243798 (=> res!112492 e!150891)))

(declare-fun lt!98570 () List!3562)

(declare-fun lt!98539 () List!3562)

(assert (=> b!243798 (= res!112492 (or (not (= lt!98539 lt!98570)) (not (= lt!98570 lt!98537)) (not (= lt!98539 lt!98537))))))

(declare-fun printList!239 (LexerInterface!555 List!3564) List!3562)

(assert (=> b!243798 (= lt!98570 (printList!239 thiss!17480 (Cons!3554 (h!8951 tokens!465) Nil!3554)))))

(declare-fun lt!98558 () BalanceConc!2328)

(assert (=> b!243798 (= lt!98539 (list!1401 lt!98558))))

(declare-fun lt!98530 () BalanceConc!2330)

(assert (=> b!243798 (= lt!98558 (printTailRec!249 thiss!17480 lt!98530 0 (BalanceConc!2329 Empty!1160)))))

(assert (=> b!243798 (= lt!98558 (print!286 thiss!17480 lt!98530))))

(assert (=> b!243798 (= lt!98530 (singletonSeq!221 (h!8951 tokens!465)))))

(declare-fun b!243799 () Bool)

(declare-fun res!112496 () Bool)

(assert (=> b!243799 (=> res!112496 e!150885)))

(assert (=> b!243799 (= res!112496 (> 0 (size!2851 lt!98534)))))

(declare-fun tp!95580 () Bool)

(declare-fun e!150867 () Bool)

(declare-fun b!243800 () Bool)

(declare-fun inv!4410 (String!4535) Bool)

(declare-fun inv!4414 (TokenValueInjection!1154) Bool)

(assert (=> b!243800 (= e!150867 (and tp!95580 (inv!4410 (tag!877 (rule!1246 separatorToken!170))) (inv!4414 (transformation!669 (rule!1246 separatorToken!170))) e!150870))))

(declare-fun b!243801 () Bool)

(declare-fun isEmpty!2141 (BalanceConc!2328) Bool)

(assert (=> b!243801 (= e!150883 (isEmpty!2141 (_2!2177 lt!98538)))))

(declare-fun b!243802 () Bool)

(declare-fun res!112498 () Bool)

(assert (=> b!243802 (=> res!112498 e!150891)))

(assert (=> b!243802 (= res!112498 (not (rulesProduceIndividualToken!304 thiss!17480 rules!1920 (h!8951 tokens!465))))))

(declare-fun b!243803 () Bool)

(declare-fun e!150882 () Bool)

(assert (=> b!243803 (= e!150898 (not e!150882))))

(declare-fun res!112522 () Bool)

(assert (=> b!243803 (=> res!112522 e!150882)))

(assert (=> b!243803 (= res!112522 (not (= lt!98542 (list!1401 lt!98527))))))

(declare-fun seqFromList!715 (List!3564) BalanceConc!2330)

(assert (=> b!243803 (= lt!98527 (printWithSeparatorTokenWhenNeededRec!238 thiss!17480 rules!1920 (seqFromList!715 (t!35016 tokens!465)) separatorToken!170 0))))

(declare-fun lt!98535 () List!3562)

(assert (=> b!243803 (= lt!98535 lt!98553)))

(declare-fun ++!906 (List!3562 List!3562) List!3562)

(assert (=> b!243803 (= lt!98553 (++!906 lt!98537 lt!98529))))

(assert (=> b!243803 (= lt!98535 (++!906 (++!906 lt!98537 lt!98525) lt!98542))))

(declare-fun lt!98559 () Unit!4328)

(declare-fun lemmaConcatAssociativity!374 (List!3562 List!3562 List!3562) Unit!4328)

(assert (=> b!243803 (= lt!98559 (lemmaConcatAssociativity!374 lt!98537 lt!98525 lt!98542))))

(assert (=> b!243803 (= lt!98537 (list!1401 (charsOf!324 (h!8951 tokens!465))))))

(assert (=> b!243803 (= lt!98529 (++!906 lt!98525 lt!98542))))

(assert (=> b!243803 (= lt!98542 (printWithSeparatorTokenWhenNeededList!248 thiss!17480 rules!1920 (t!35016 tokens!465) separatorToken!170))))

(assert (=> b!243803 (= lt!98525 (list!1401 (charsOf!324 separatorToken!170)))))

(declare-fun e!150872 () Bool)

(assert (=> b!243804 (= e!150872 (and tp!95583 tp!95581))))

(declare-fun b!243805 () Bool)

(declare-fun res!112490 () Bool)

(assert (=> b!243805 (=> res!112490 e!150885)))

(assert (=> b!243805 (= res!112490 (not (= (filter!63 (list!1400 (_1!2177 (lex!355 thiss!17480 rules!1920 lt!98531))) lambda!7923) tokens!465)))))

(declare-fun res!112520 () Bool)

(assert (=> b!243806 (=> (not res!112520) (not e!150897))))

(declare-fun forall!824 (List!3564 Int) Bool)

(assert (=> b!243806 (= res!112520 (forall!824 tokens!465 lambda!7923))))

(assert (=> b!243807 (= e!150891 e!150888)))

(declare-fun res!112518 () Bool)

(assert (=> b!243807 (=> res!112518 e!150888)))

(declare-datatypes ((tuple2!3924 0))(
  ( (tuple2!3925 (_1!2178 Token!1082) (_2!2178 BalanceConc!2328)) )
))
(declare-datatypes ((Option!701 0))(
  ( (None!700) (Some!700 (v!14461 tuple2!3924)) )
))
(declare-fun isDefined!552 (Option!701) Bool)

(declare-fun maxPrefixZipperSequence!248 (LexerInterface!555 List!3563 BalanceConc!2328) Option!701)

(declare-fun seqFromList!716 (List!3562) BalanceConc!2328)

(assert (=> b!243807 (= res!112518 (not (isDefined!552 (maxPrefixZipperSequence!248 thiss!17480 rules!1920 (seqFromList!716 (originalCharacters!712 (h!8951 tokens!465)))))))))

(declare-fun lt!98556 () Unit!4328)

(assert (=> b!243807 (= lt!98556 (forallContained!236 tokens!465 lambda!7924 (h!8951 tokens!465)))))

(assert (=> b!243807 (= lt!98537 (originalCharacters!712 (h!8951 tokens!465)))))

(declare-fun b!243808 () Bool)

(declare-fun res!112493 () Bool)

(assert (=> b!243808 (=> (not res!112493) (not e!150897))))

(assert (=> b!243808 (= res!112493 ((_ is Cons!3554) tokens!465))))

(declare-fun tp!95571 () Bool)

(declare-fun b!243809 () Bool)

(assert (=> b!243809 (= e!150878 (and (inv!4413 (h!8951 tokens!465)) e!150900 tp!95571))))

(declare-fun b!243810 () Bool)

(declare-fun e!150901 () Bool)

(declare-fun lt!98523 () Rule!1138)

(assert (=> b!243810 (= e!150901 (= (rule!1246 separatorToken!170) lt!98523))))

(declare-fun b!243811 () Bool)

(declare-fun res!112509 () Bool)

(assert (=> b!243811 (=> res!112509 e!150885)))

(declare-datatypes ((tuple2!3926 0))(
  ( (tuple2!3927 (_1!2179 List!3564) (_2!2179 List!3562)) )
))
(declare-fun lexList!183 (LexerInterface!555 List!3563 List!3562) tuple2!3926)

(assert (=> b!243811 (= res!112509 (not (= (filter!63 (_1!2179 (lexList!183 thiss!17480 rules!1920 lt!98560)) lambda!7923) tokens!465)))))

(declare-fun b!243812 () Bool)

(declare-fun e!150896 () Bool)

(assert (=> b!243812 (= e!150896 (not (= lt!98560 (++!906 lt!98537 lt!98542))))))

(declare-fun b!243813 () Bool)

(assert (=> b!243813 (= e!150886 e!150897)))

(declare-fun res!112521 () Bool)

(assert (=> b!243813 (=> (not res!112521) (not e!150897))))

(declare-fun rulesProduceEachTokenIndividually!347 (LexerInterface!555 List!3563 BalanceConc!2330) Bool)

(assert (=> b!243813 (= res!112521 (rulesProduceEachTokenIndividually!347 thiss!17480 rules!1920 lt!98534))))

(assert (=> b!243813 (= lt!98534 (seqFromList!715 tokens!465))))

(declare-fun b!243814 () Bool)

(assert (=> b!243814 (= e!150869 (isEmpty!2141 (_2!2177 lt!98562)))))

(declare-fun b!243815 () Bool)

(declare-fun tp!95575 () Bool)

(assert (=> b!243815 (= e!150871 (and tp!95575 (inv!4410 (tag!877 (h!8950 rules!1920))) (inv!4414 (transformation!669 (h!8950 rules!1920))) e!150872))))

(declare-fun b!243816 () Bool)

(assert (=> b!243816 (= e!150890 e!150893)))

(declare-fun res!112501 () Bool)

(assert (=> b!243816 (=> (not res!112501) (not e!150893))))

(assert (=> b!243816 (= res!112501 (isDefined!551 lt!98561))))

(assert (=> b!243816 (= lt!98561 (maxPrefix!285 thiss!17480 rules!1920 lt!98560))))

(declare-fun b!243817 () Bool)

(declare-fun Unit!4330 () Unit!4328)

(assert (=> b!243817 (= e!150873 Unit!4330)))

(declare-fun b!243818 () Bool)

(declare-fun res!112503 () Bool)

(assert (=> b!243818 (=> (not res!112503) (not e!150886))))

(declare-fun rulesInvariant!521 (LexerInterface!555 List!3563) Bool)

(assert (=> b!243818 (= res!112503 (rulesInvariant!521 thiss!17480 rules!1920))))

(declare-fun e!150892 () Bool)

(assert (=> b!243819 (= e!150892 (and tp!95576 tp!95572))))

(declare-fun b!243820 () Bool)

(declare-fun res!112508 () Bool)

(assert (=> b!243820 (=> (not res!112508) (not e!150897))))

(declare-fun sepAndNonSepRulesDisjointChars!258 (List!3563 List!3563) Bool)

(assert (=> b!243820 (= res!112508 (sepAndNonSepRulesDisjointChars!258 rules!1920 rules!1920))))

(declare-fun b!243821 () Bool)

(assert (=> b!243821 (= e!150877 (matchR!231 (regex!669 (rule!1246 (h!8951 tokens!465))) lt!98537))))

(declare-fun b!243822 () Bool)

(declare-fun Unit!4331 () Unit!4328)

(assert (=> b!243822 (= e!150880 Unit!4331)))

(declare-fun b!243823 () Bool)

(declare-fun tp!95579 () Bool)

(assert (=> b!243823 (= e!150884 (and tp!95579 (inv!4410 (tag!877 (rule!1246 (h!8951 tokens!465)))) (inv!4414 (transformation!669 (rule!1246 (h!8951 tokens!465)))) e!150892))))

(declare-fun b!243824 () Bool)

(declare-fun res!112506 () Bool)

(assert (=> b!243824 (=> res!112506 e!150885)))

(assert (=> b!243824 (= res!112506 (not (= (filter!63 (_1!2179 (lexList!183 thiss!17480 rules!1920 lt!98542)) lambda!7923) (t!35016 tokens!465))))))

(declare-fun b!243825 () Bool)

(assert (=> b!243825 (= e!150881 (= (rule!1246 lt!98568) lt!98543))))

(declare-fun b!243826 () Bool)

(declare-fun Unit!4332 () Unit!4328)

(assert (=> b!243826 (= e!150880 Unit!4332)))

(declare-fun lt!98552 () Unit!4328)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!68 (Regex!893 List!3562 C!2708) Unit!4328)

(assert (=> b!243826 (= lt!98552 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!68 (regex!669 (rule!1246 lt!98568)) lt!98569 lt!98555))))

(declare-fun res!112488 () Bool)

(assert (=> b!243826 (= res!112488 (not (matchR!231 (regex!669 (rule!1246 lt!98568)) lt!98569)))))

(assert (=> b!243826 (=> (not res!112488) (not e!150866))))

(assert (=> b!243826 e!150866))

(declare-fun b!243827 () Bool)

(assert (=> b!243827 (= e!150874 e!150901)))

(declare-fun res!112513 () Bool)

(assert (=> b!243827 (=> (not res!112513) (not e!150901))))

(assert (=> b!243827 (= res!112513 (matchR!231 (regex!669 lt!98523) lt!98525))))

(assert (=> b!243827 (= lt!98523 (get!1158 lt!98541))))

(declare-fun b!243828 () Bool)

(declare-fun Unit!4333 () Unit!4328)

(assert (=> b!243828 (= e!150873 Unit!4333)))

(declare-fun lt!98574 () Unit!4328)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!62 (LexerInterface!555 List!3563 List!3563 Rule!1138 Rule!1138 C!2708) Unit!4328)

(assert (=> b!243828 (= lt!98574 (lemmaSepRuleNotContainsCharContainedInANonSepRule!62 thiss!17480 rules!1920 rules!1920 (rule!1246 lt!98568) (rule!1246 separatorToken!170) lt!98565))))

(assert (=> b!243828 false))

(declare-fun b!243829 () Bool)

(assert (=> b!243829 (= e!150882 e!150879)))

(declare-fun res!112489 () Bool)

(assert (=> b!243829 (=> res!112489 e!150879)))

(assert (=> b!243829 (= res!112489 e!150896)))

(declare-fun res!112502 () Bool)

(assert (=> b!243829 (=> (not res!112502) (not e!150896))))

(assert (=> b!243829 (= res!112502 (not lt!98563))))

(assert (=> b!243829 (= lt!98563 (= lt!98560 lt!98553))))

(declare-fun b!243830 () Bool)

(declare-fun res!112495 () Bool)

(assert (=> b!243830 (=> (not res!112495) (not e!150883))))

(assert (=> b!243830 (= res!112495 (= (apply!674 (_1!2177 lt!98538) 0) separatorToken!170))))

(declare-fun b!243831 () Bool)

(declare-fun Unit!4334 () Unit!4328)

(assert (=> b!243831 (= e!150875 Unit!4334)))

(declare-fun b!243832 () Bool)

(declare-fun res!112515 () Bool)

(assert (=> b!243832 (=> (not res!112515) (not e!150898))))

(assert (=> b!243832 (= res!112515 (= (list!1401 (seqFromList!716 lt!98560)) lt!98550))))

(declare-fun b!243833 () Bool)

(declare-fun Unit!4335 () Unit!4328)

(assert (=> b!243833 (= e!150875 Unit!4335)))

(assert (=> b!243833 false))

(declare-fun b!243834 () Bool)

(assert (=> b!243834 (= e!150885 true)))

(declare-fun lt!98557 () Bool)

(declare-fun forall!825 (BalanceConc!2330 Int) Bool)

(assert (=> b!243834 (= lt!98557 (forall!825 lt!98534 lambda!7923))))

(declare-fun b!243835 () Bool)

(declare-fun res!112507 () Bool)

(assert (=> b!243835 (=> (not res!112507) (not e!150897))))

(assert (=> b!243835 (= res!112507 (isSeparator!669 (rule!1246 separatorToken!170)))))

(declare-fun b!243836 () Bool)

(declare-fun res!112514 () Bool)

(assert (=> b!243836 (=> res!112514 e!150891)))

(declare-fun isEmpty!2142 (BalanceConc!2330) Bool)

(assert (=> b!243836 (= res!112514 (isEmpty!2142 (_1!2177 (lex!355 thiss!17480 rules!1920 (seqFromList!716 lt!98537)))))))

(declare-fun b!243837 () Bool)

(declare-fun tp!95577 () Bool)

(assert (=> b!243837 (= e!150895 (and (inv!21 (value!23382 separatorToken!170)) e!150867 tp!95577))))

(assert (= (and start!25970 res!112497) b!243785))

(assert (= (and b!243785 res!112516) b!243818))

(assert (= (and b!243818 res!112503) b!243813))

(assert (= (and b!243813 res!112521) b!243788))

(assert (= (and b!243788 res!112523) b!243835))

(assert (= (and b!243835 res!112507) b!243806))

(assert (= (and b!243806 res!112520) b!243820))

(assert (= (and b!243820 res!112508) b!243808))

(assert (= (and b!243808 res!112493) b!243797))

(assert (= (and b!243797 res!112504) b!243832))

(assert (= (and b!243832 res!112515) b!243803))

(assert (= (and b!243803 (not res!112522)) b!243829))

(assert (= (and b!243829 res!112502) b!243812))

(assert (= (and b!243829 (not res!112489)) b!243798))

(assert (= (and b!243798 (not res!112492)) b!243802))

(assert (= (and b!243802 (not res!112498)) b!243836))

(assert (= (and b!243836 (not res!112514)) b!243807))

(assert (= (and b!243807 (not res!112518)) b!243795))

(assert (= (and b!243795 res!112511) b!243786))

(assert (= (and b!243786 res!112517) b!243821))

(assert (= (and b!243795 (not res!112505)) b!243793))

(assert (= (and b!243793 (not res!112500)) b!243816))

(assert (= (and b!243816 res!112501) b!243787))

(assert (= (and b!243793 c!46842) b!243833))

(assert (= (and b!243793 (not c!46842)) b!243831))

(assert (= (and b!243793 res!112494) b!243830))

(assert (= (and b!243830 res!112495) b!243801))

(assert (= (and b!243793 res!112499) b!243827))

(assert (= (and b!243827 res!112513) b!243810))

(assert (= (and b!243793 res!112519) b!243794))

(assert (= (and b!243794 res!112512) b!243814))

(assert (= (and b!243793 res!112491) b!243789))

(assert (= (and b!243789 res!112524) b!243825))

(assert (= (and b!243793 c!46843) b!243826))

(assert (= (and b!243793 (not c!46843)) b!243822))

(assert (= (and b!243826 res!112488) b!243790))

(assert (= (and b!243793 c!46841) b!243828))

(assert (= (and b!243793 (not c!46841)) b!243817))

(assert (= (and b!243793 (not res!112510)) b!243824))

(assert (= (and b!243824 (not res!112506)) b!243811))

(assert (= (and b!243811 (not res!112509)) b!243805))

(assert (= (and b!243805 (not res!112490)) b!243799))

(assert (= (and b!243799 (not res!112496)) b!243834))

(assert (= b!243815 b!243804))

(assert (= b!243791 b!243815))

(assert (= (and start!25970 ((_ is Cons!3553) rules!1920)) b!243791))

(assert (= b!243800 b!243796))

(assert (= b!243837 b!243800))

(assert (= start!25970 b!243837))

(assert (= b!243823 b!243819))

(assert (= b!243792 b!243823))

(assert (= b!243809 b!243792))

(assert (= (and start!25970 ((_ is Cons!3554) tokens!465)) b!243809))

(declare-fun m!298313 () Bool)

(assert (=> b!243787 m!298313))

(declare-fun m!298315 () Bool)

(assert (=> b!243787 m!298315))

(declare-fun m!298317 () Bool)

(assert (=> b!243795 m!298317))

(declare-fun m!298319 () Bool)

(assert (=> b!243795 m!298319))

(declare-fun m!298321 () Bool)

(assert (=> b!243795 m!298321))

(declare-fun m!298323 () Bool)

(assert (=> b!243799 m!298323))

(declare-fun m!298325 () Bool)

(assert (=> b!243788 m!298325))

(declare-fun m!298327 () Bool)

(assert (=> b!243806 m!298327))

(declare-fun m!298329 () Bool)

(assert (=> b!243800 m!298329))

(declare-fun m!298331 () Bool)

(assert (=> b!243800 m!298331))

(declare-fun m!298333 () Bool)

(assert (=> b!243785 m!298333))

(declare-fun m!298335 () Bool)

(assert (=> b!243803 m!298335))

(declare-fun m!298337 () Bool)

(assert (=> b!243803 m!298337))

(declare-fun m!298339 () Bool)

(assert (=> b!243803 m!298339))

(declare-fun m!298341 () Bool)

(assert (=> b!243803 m!298341))

(declare-fun m!298343 () Bool)

(assert (=> b!243803 m!298343))

(declare-fun m!298345 () Bool)

(assert (=> b!243803 m!298345))

(declare-fun m!298347 () Bool)

(assert (=> b!243803 m!298347))

(assert (=> b!243803 m!298345))

(declare-fun m!298349 () Bool)

(assert (=> b!243803 m!298349))

(assert (=> b!243803 m!298343))

(declare-fun m!298351 () Bool)

(assert (=> b!243803 m!298351))

(declare-fun m!298353 () Bool)

(assert (=> b!243803 m!298353))

(declare-fun m!298355 () Bool)

(assert (=> b!243803 m!298355))

(declare-fun m!298357 () Bool)

(assert (=> b!243803 m!298357))

(assert (=> b!243803 m!298335))

(declare-fun m!298359 () Bool)

(assert (=> b!243803 m!298359))

(assert (=> b!243803 m!298355))

(declare-fun m!298361 () Bool)

(assert (=> b!243812 m!298361))

(declare-fun m!298363 () Bool)

(assert (=> b!243807 m!298363))

(assert (=> b!243807 m!298363))

(declare-fun m!298365 () Bool)

(assert (=> b!243807 m!298365))

(assert (=> b!243807 m!298365))

(declare-fun m!298367 () Bool)

(assert (=> b!243807 m!298367))

(declare-fun m!298369 () Bool)

(assert (=> b!243807 m!298369))

(declare-fun m!298371 () Bool)

(assert (=> start!25970 m!298371))

(declare-fun m!298373 () Bool)

(assert (=> b!243826 m!298373))

(declare-fun m!298375 () Bool)

(assert (=> b!243826 m!298375))

(declare-fun m!298377 () Bool)

(assert (=> b!243794 m!298377))

(declare-fun m!298379 () Bool)

(assert (=> b!243814 m!298379))

(declare-fun m!298381 () Bool)

(assert (=> b!243824 m!298381))

(declare-fun m!298383 () Bool)

(assert (=> b!243824 m!298383))

(declare-fun m!298385 () Bool)

(assert (=> b!243832 m!298385))

(assert (=> b!243832 m!298385))

(declare-fun m!298387 () Bool)

(assert (=> b!243832 m!298387))

(declare-fun m!298389 () Bool)

(assert (=> b!243828 m!298389))

(declare-fun m!298391 () Bool)

(assert (=> b!243837 m!298391))

(declare-fun m!298393 () Bool)

(assert (=> b!243805 m!298393))

(declare-fun m!298395 () Bool)

(assert (=> b!243805 m!298395))

(assert (=> b!243805 m!298395))

(declare-fun m!298397 () Bool)

(assert (=> b!243805 m!298397))

(declare-fun m!298399 () Bool)

(assert (=> b!243823 m!298399))

(declare-fun m!298401 () Bool)

(assert (=> b!243823 m!298401))

(declare-fun m!298403 () Bool)

(assert (=> b!243821 m!298403))

(declare-fun m!298405 () Bool)

(assert (=> b!243830 m!298405))

(declare-fun m!298407 () Bool)

(assert (=> b!243793 m!298407))

(declare-fun m!298409 () Bool)

(assert (=> b!243793 m!298409))

(declare-fun m!298411 () Bool)

(assert (=> b!243793 m!298411))

(declare-fun m!298413 () Bool)

(assert (=> b!243793 m!298413))

(declare-fun m!298415 () Bool)

(assert (=> b!243793 m!298415))

(declare-fun m!298417 () Bool)

(assert (=> b!243793 m!298417))

(declare-fun m!298419 () Bool)

(assert (=> b!243793 m!298419))

(declare-fun m!298421 () Bool)

(assert (=> b!243793 m!298421))

(declare-fun m!298423 () Bool)

(assert (=> b!243793 m!298423))

(declare-fun m!298425 () Bool)

(assert (=> b!243793 m!298425))

(declare-fun m!298427 () Bool)

(assert (=> b!243793 m!298427))

(declare-fun m!298429 () Bool)

(assert (=> b!243793 m!298429))

(declare-fun m!298431 () Bool)

(assert (=> b!243793 m!298431))

(declare-fun m!298433 () Bool)

(assert (=> b!243793 m!298433))

(assert (=> b!243793 m!298409))

(declare-fun m!298435 () Bool)

(assert (=> b!243793 m!298435))

(declare-fun m!298437 () Bool)

(assert (=> b!243793 m!298437))

(declare-fun m!298439 () Bool)

(assert (=> b!243793 m!298439))

(declare-fun m!298441 () Bool)

(assert (=> b!243793 m!298441))

(assert (=> b!243793 m!298429))

(declare-fun m!298443 () Bool)

(assert (=> b!243793 m!298443))

(declare-fun m!298445 () Bool)

(assert (=> b!243793 m!298445))

(declare-fun m!298447 () Bool)

(assert (=> b!243793 m!298447))

(declare-fun m!298449 () Bool)

(assert (=> b!243793 m!298449))

(assert (=> b!243793 m!298447))

(declare-fun m!298451 () Bool)

(assert (=> b!243793 m!298451))

(declare-fun m!298453 () Bool)

(assert (=> b!243793 m!298453))

(declare-fun m!298455 () Bool)

(assert (=> b!243793 m!298455))

(declare-fun m!298457 () Bool)

(assert (=> b!243793 m!298457))

(declare-fun m!298459 () Bool)

(assert (=> b!243793 m!298459))

(declare-fun m!298461 () Bool)

(assert (=> b!243793 m!298461))

(declare-fun m!298463 () Bool)

(assert (=> b!243793 m!298463))

(assert (=> b!243793 m!298417))

(declare-fun m!298465 () Bool)

(assert (=> b!243793 m!298465))

(declare-fun m!298467 () Bool)

(assert (=> b!243793 m!298467))

(declare-fun m!298469 () Bool)

(assert (=> b!243793 m!298469))

(declare-fun m!298471 () Bool)

(assert (=> b!243793 m!298471))

(declare-fun m!298473 () Bool)

(assert (=> b!243793 m!298473))

(declare-fun m!298475 () Bool)

(assert (=> b!243793 m!298475))

(declare-fun m!298477 () Bool)

(assert (=> b!243793 m!298477))

(declare-fun m!298479 () Bool)

(assert (=> b!243793 m!298479))

(assert (=> b!243793 m!298455))

(declare-fun m!298481 () Bool)

(assert (=> b!243793 m!298481))

(declare-fun m!298483 () Bool)

(assert (=> b!243793 m!298483))

(declare-fun m!298485 () Bool)

(assert (=> b!243793 m!298485))

(declare-fun m!298487 () Bool)

(assert (=> b!243793 m!298487))

(declare-fun m!298489 () Bool)

(assert (=> b!243793 m!298489))

(declare-fun m!298491 () Bool)

(assert (=> b!243792 m!298491))

(declare-fun m!298493 () Bool)

(assert (=> b!243836 m!298493))

(assert (=> b!243836 m!298493))

(declare-fun m!298495 () Bool)

(assert (=> b!243836 m!298495))

(declare-fun m!298497 () Bool)

(assert (=> b!243836 m!298497))

(declare-fun m!298499 () Bool)

(assert (=> b!243816 m!298499))

(assert (=> b!243816 m!298429))

(declare-fun m!298501 () Bool)

(assert (=> b!243786 m!298501))

(declare-fun m!298503 () Bool)

(assert (=> b!243813 m!298503))

(declare-fun m!298505 () Bool)

(assert (=> b!243813 m!298505))

(declare-fun m!298507 () Bool)

(assert (=> b!243834 m!298507))

(declare-fun m!298509 () Bool)

(assert (=> b!243809 m!298509))

(declare-fun m!298511 () Bool)

(assert (=> b!243789 m!298511))

(declare-fun m!298513 () Bool)

(assert (=> b!243789 m!298513))

(declare-fun m!298515 () Bool)

(assert (=> b!243827 m!298515))

(declare-fun m!298517 () Bool)

(assert (=> b!243827 m!298517))

(declare-fun m!298519 () Bool)

(assert (=> b!243801 m!298519))

(declare-fun m!298521 () Bool)

(assert (=> b!243797 m!298521))

(declare-fun m!298523 () Bool)

(assert (=> b!243797 m!298523))

(declare-fun m!298525 () Bool)

(assert (=> b!243797 m!298525))

(declare-fun m!298527 () Bool)

(assert (=> b!243798 m!298527))

(declare-fun m!298529 () Bool)

(assert (=> b!243798 m!298529))

(declare-fun m!298531 () Bool)

(assert (=> b!243798 m!298531))

(declare-fun m!298533 () Bool)

(assert (=> b!243798 m!298533))

(declare-fun m!298535 () Bool)

(assert (=> b!243798 m!298535))

(declare-fun m!298537 () Bool)

(assert (=> b!243811 m!298537))

(declare-fun m!298539 () Bool)

(assert (=> b!243811 m!298539))

(declare-fun m!298541 () Bool)

(assert (=> b!243802 m!298541))

(declare-fun m!298543 () Bool)

(assert (=> b!243818 m!298543))

(declare-fun m!298545 () Bool)

(assert (=> b!243820 m!298545))

(declare-fun m!298547 () Bool)

(assert (=> b!243815 m!298547))

(declare-fun m!298549 () Bool)

(assert (=> b!243815 m!298549))

(check-sat (not b_next!8927) (not b!243816) (not b!243805) (not b!243832) (not b!243800) (not b!243807) (not b!243836) (not b!243818) (not b!243795) (not b!243826) (not b!243827) (not b!243801) (not b!243786) (not b!243821) (not b!243789) (not b!243813) (not b!243792) (not b!243828) b_and!18303 (not b!243806) (not start!25970) b_and!18301 (not b!243846) (not b!243809) b_and!18293 (not b_next!8929) (not b!243787) (not b!243812) (not b!243823) (not b!243814) (not b!243799) (not b_next!8921) (not b!243811) (not b!243815) b_and!18295 (not b!243802) (not b!243788) (not b!243820) (not b!243794) (not b!243791) (not b!243785) (not b!243830) (not b_next!8931) b_and!18299 (not b_next!8923) (not b!243824) (not b!243797) b_and!18297 (not b!243837) (not b!243803) (not b_next!8925) (not b!243793) (not b!243834) (not b!243798))
(check-sat (not b_next!8927) b_and!18303 b_and!18301 b_and!18293 (not b_next!8929) (not b_next!8921) b_and!18295 (not b_next!8931) b_and!18297 (not b_next!8925) b_and!18299 (not b_next!8923))

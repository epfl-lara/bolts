; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300858 () Bool)

(assert start!300858)

(declare-fun b!3204473 () Bool)

(declare-fun b_free!85201 () Bool)

(declare-fun b_next!85905 () Bool)

(assert (=> b!3204473 (= b_free!85201 (not b_next!85905))))

(declare-fun tp!1012340 () Bool)

(declare-fun b_and!213199 () Bool)

(assert (=> b!3204473 (= tp!1012340 b_and!213199)))

(declare-fun b_free!85203 () Bool)

(declare-fun b_next!85907 () Bool)

(assert (=> b!3204473 (= b_free!85203 (not b_next!85907))))

(declare-fun tp!1012341 () Bool)

(declare-fun b_and!213201 () Bool)

(assert (=> b!3204473 (= tp!1012341 b_and!213201)))

(declare-fun b!3204481 () Bool)

(declare-fun b_free!85205 () Bool)

(declare-fun b_next!85909 () Bool)

(assert (=> b!3204481 (= b_free!85205 (not b_next!85909))))

(declare-fun tp!1012342 () Bool)

(declare-fun b_and!213203 () Bool)

(assert (=> b!3204481 (= tp!1012342 b_and!213203)))

(declare-fun b_free!85207 () Bool)

(declare-fun b_next!85911 () Bool)

(assert (=> b!3204481 (= b_free!85207 (not b_next!85911))))

(declare-fun tp!1012338 () Bool)

(declare-fun b_and!213205 () Bool)

(assert (=> b!3204481 (= tp!1012338 b_and!213205)))

(declare-fun b!3204488 () Bool)

(declare-fun b_free!85209 () Bool)

(declare-fun b_next!85913 () Bool)

(assert (=> b!3204488 (= b_free!85209 (not b_next!85913))))

(declare-fun tp!1012334 () Bool)

(declare-fun b_and!213207 () Bool)

(assert (=> b!3204488 (= tp!1012334 b_and!213207)))

(declare-fun b_free!85211 () Bool)

(declare-fun b_next!85915 () Bool)

(assert (=> b!3204488 (= b_free!85211 (not b_next!85915))))

(declare-fun tp!1012343 () Bool)

(declare-fun b_and!213209 () Bool)

(assert (=> b!3204488 (= tp!1012343 b_and!213209)))

(declare-fun bs!541193 () Bool)

(declare-fun b!3204495 () Bool)

(declare-fun b!3204471 () Bool)

(assert (= bs!541193 (and b!3204495 b!3204471)))

(declare-fun lambda!117291 () Int)

(declare-fun lambda!117290 () Int)

(assert (=> bs!541193 (not (= lambda!117291 lambda!117290))))

(declare-fun b!3204514 () Bool)

(declare-fun e!1997982 () Bool)

(assert (=> b!3204514 (= e!1997982 true)))

(declare-fun b!3204513 () Bool)

(declare-fun e!1997981 () Bool)

(assert (=> b!3204513 (= e!1997981 e!1997982)))

(declare-fun b!3204512 () Bool)

(declare-fun e!1997980 () Bool)

(assert (=> b!3204512 (= e!1997980 e!1997981)))

(assert (=> b!3204495 e!1997980))

(assert (= b!3204513 b!3204514))

(assert (= b!3204512 b!3204513))

(declare-datatypes ((C!20124 0))(
  ( (C!20125 (val!12110 Int)) )
))
(declare-datatypes ((Regex!9969 0))(
  ( (ElementMatch!9969 (c!538126 C!20124)) (Concat!15409 (regOne!20450 Regex!9969) (regTwo!20450 Regex!9969)) (EmptyExpr!9969) (Star!9969 (reg!10298 Regex!9969)) (EmptyLang!9969) (Union!9969 (regOne!20451 Regex!9969) (regTwo!20451 Regex!9969)) )
))
(declare-datatypes ((List!36242 0))(
  ( (Nil!36118) (Cons!36118 (h!41538 (_ BitVec 16)) (t!237943 List!36242)) )
))
(declare-datatypes ((TokenValue!5440 0))(
  ( (FloatLiteralValue!10880 (text!38525 List!36242)) (TokenValueExt!5439 (__x!23097 Int)) (Broken!27200 (value!168919 List!36242)) (Object!5563) (End!5440) (Def!5440) (Underscore!5440) (Match!5440) (Else!5440) (Error!5440) (Case!5440) (If!5440) (Extends!5440) (Abstract!5440) (Class!5440) (Val!5440) (DelimiterValue!10880 (del!5500 List!36242)) (KeywordValue!5446 (value!168920 List!36242)) (CommentValue!10880 (value!168921 List!36242)) (WhitespaceValue!10880 (value!168922 List!36242)) (IndentationValue!5440 (value!168923 List!36242)) (String!40533) (Int32!5440) (Broken!27201 (value!168924 List!36242)) (Boolean!5441) (Unit!50553) (OperatorValue!5443 (op!5500 List!36242)) (IdentifierValue!10880 (value!168925 List!36242)) (IdentifierValue!10881 (value!168926 List!36242)) (WhitespaceValue!10881 (value!168927 List!36242)) (True!10880) (False!10880) (Broken!27202 (value!168928 List!36242)) (Broken!27203 (value!168929 List!36242)) (True!10881) (RightBrace!5440) (RightBracket!5440) (Colon!5440) (Null!5440) (Comma!5440) (LeftBracket!5440) (False!10881) (LeftBrace!5440) (ImaginaryLiteralValue!5440 (text!38526 List!36242)) (StringLiteralValue!16320 (value!168930 List!36242)) (EOFValue!5440 (value!168931 List!36242)) (IdentValue!5440 (value!168932 List!36242)) (DelimiterValue!10881 (value!168933 List!36242)) (DedentValue!5440 (value!168934 List!36242)) (NewLineValue!5440 (value!168935 List!36242)) (IntegerValue!16320 (value!168936 (_ BitVec 32)) (text!38527 List!36242)) (IntegerValue!16321 (value!168937 Int) (text!38528 List!36242)) (Times!5440) (Or!5440) (Equal!5440) (Minus!5440) (Broken!27204 (value!168938 List!36242)) (And!5440) (Div!5440) (LessEqual!5440) (Mod!5440) (Concat!15410) (Not!5440) (Plus!5440) (SpaceValue!5440 (value!168939 List!36242)) (IntegerValue!16322 (value!168940 Int) (text!38529 List!36242)) (StringLiteralValue!16321 (text!38530 List!36242)) (FloatLiteralValue!10881 (text!38531 List!36242)) (BytesLiteralValue!5440 (value!168941 List!36242)) (CommentValue!10881 (value!168942 List!36242)) (StringLiteralValue!16322 (value!168943 List!36242)) (ErrorTokenValue!5440 (msg!5501 List!36242)) )
))
(declare-datatypes ((List!36243 0))(
  ( (Nil!36119) (Cons!36119 (h!41539 C!20124) (t!237944 List!36243)) )
))
(declare-datatypes ((IArray!21595 0))(
  ( (IArray!21596 (innerList!10855 List!36243)) )
))
(declare-datatypes ((Conc!10795 0))(
  ( (Node!10795 (left!28070 Conc!10795) (right!28400 Conc!10795) (csize!21820 Int) (cheight!11006 Int)) (Leaf!17011 (xs!13913 IArray!21595) (csize!21821 Int)) (Empty!10795) )
))
(declare-datatypes ((BalanceConc!21204 0))(
  ( (BalanceConc!21205 (c!538127 Conc!10795)) )
))
(declare-datatypes ((String!40534 0))(
  ( (String!40535 (value!168944 String)) )
))
(declare-datatypes ((TokenValueInjection!10308 0))(
  ( (TokenValueInjection!10309 (toValue!7290 Int) (toChars!7149 Int)) )
))
(declare-datatypes ((Rule!10220 0))(
  ( (Rule!10221 (regex!5210 Regex!9969) (tag!5734 String!40534) (isSeparator!5210 Bool) (transformation!5210 TokenValueInjection!10308)) )
))
(declare-datatypes ((List!36244 0))(
  ( (Nil!36120) (Cons!36120 (h!41540 Rule!10220) (t!237945 List!36244)) )
))
(declare-fun rules!2135 () List!36244)

(get-info :version)

(assert (= (and b!3204495 ((_ is Cons!36120) rules!2135)) b!3204512))

(declare-fun order!18381 () Int)

(declare-fun order!18383 () Int)

(declare-fun dynLambda!14555 (Int Int) Int)

(declare-fun dynLambda!14556 (Int Int) Int)

(assert (=> b!3204514 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14556 order!18383 lambda!117291))))

(declare-fun order!18385 () Int)

(declare-fun dynLambda!14557 (Int Int) Int)

(assert (=> b!3204514 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14556 order!18383 lambda!117291))))

(assert (=> b!3204495 true))

(declare-fun b!3204466 () Bool)

(declare-fun e!1997972 () Bool)

(declare-datatypes ((Token!9786 0))(
  ( (Token!9787 (value!168945 TokenValue!5440) (rule!7648 Rule!10220) (size!27209 Int) (originalCharacters!5924 List!36243)) )
))
(declare-datatypes ((List!36245 0))(
  ( (Nil!36121) (Cons!36121 (h!41541 Token!9786) (t!237946 List!36245)) )
))
(declare-fun tokens!494 () List!36245)

(declare-fun lt!1081633 () Rule!10220)

(assert (=> b!3204466 (= e!1997972 (= (rule!7648 (h!41541 tokens!494)) lt!1081633))))

(declare-fun b!3204467 () Bool)

(declare-fun e!1997971 () Bool)

(declare-fun e!1997951 () Bool)

(assert (=> b!3204467 (= e!1997971 e!1997951)))

(declare-fun res!1304061 () Bool)

(assert (=> b!3204467 (=> res!1304061 e!1997951)))

(declare-fun lt!1081634 () List!36243)

(declare-fun lt!1081649 () List!36243)

(assert (=> b!3204467 (= res!1304061 (not (= lt!1081634 lt!1081649)))))

(declare-fun lt!1081636 () List!36243)

(declare-fun lt!1081640 () List!36243)

(declare-fun lt!1081658 () List!36243)

(declare-fun ++!8660 (List!36243 List!36243) List!36243)

(assert (=> b!3204467 (= lt!1081649 (++!8660 (++!8660 lt!1081658 lt!1081636) lt!1081640))))

(declare-fun b!3204468 () Bool)

(declare-fun e!1997955 () Bool)

(declare-datatypes ((IArray!21597 0))(
  ( (IArray!21598 (innerList!10856 List!36245)) )
))
(declare-datatypes ((Conc!10796 0))(
  ( (Node!10796 (left!28071 Conc!10796) (right!28401 Conc!10796) (csize!21822 Int) (cheight!11007 Int)) (Leaf!17012 (xs!13914 IArray!21597) (csize!21823 Int)) (Empty!10796) )
))
(declare-datatypes ((BalanceConc!21206 0))(
  ( (BalanceConc!21207 (c!538128 Conc!10796)) )
))
(declare-datatypes ((tuple2!35506 0))(
  ( (tuple2!35507 (_1!20887 BalanceConc!21206) (_2!20887 BalanceConc!21204)) )
))
(declare-fun lt!1081651 () tuple2!35506)

(declare-fun isEmpty!20203 (BalanceConc!21204) Bool)

(assert (=> b!3204468 (= e!1997955 (isEmpty!20203 (_2!20887 lt!1081651)))))

(declare-fun b!3204469 () Bool)

(declare-fun res!1304077 () Bool)

(declare-fun e!1997958 () Bool)

(assert (=> b!3204469 (=> (not res!1304077) (not e!1997958))))

(declare-datatypes ((LexerInterface!4799 0))(
  ( (LexerInterfaceExt!4796 (__x!23098 Int)) (Lexer!4797) )
))
(declare-fun thiss!18206 () LexerInterface!4799)

(declare-fun rulesProduceEachTokenIndividually!1250 (LexerInterface!4799 List!36244 BalanceConc!21206) Bool)

(declare-fun seqFromList!3491 (List!36245) BalanceConc!21206)

(assert (=> b!3204469 (= res!1304077 (rulesProduceEachTokenIndividually!1250 thiss!18206 rules!2135 (seqFromList!3491 tokens!494)))))

(declare-fun b!3204470 () Bool)

(declare-fun e!1997954 () Bool)

(assert (=> b!3204470 (= e!1997951 e!1997954)))

(declare-fun res!1304084 () Bool)

(assert (=> b!3204470 (=> res!1304084 e!1997954)))

(declare-fun lt!1081644 () List!36243)

(assert (=> b!3204470 (= res!1304084 (not (= lt!1081634 lt!1081644)))))

(assert (=> b!3204470 (= lt!1081649 lt!1081644)))

(declare-fun lt!1081637 () List!36243)

(assert (=> b!3204470 (= lt!1081644 (++!8660 lt!1081658 lt!1081637))))

(declare-datatypes ((Unit!50554 0))(
  ( (Unit!50555) )
))
(declare-fun lt!1081656 () Unit!50554)

(declare-fun lemmaConcatAssociativity!1730 (List!36243 List!36243 List!36243) Unit!50554)

(assert (=> b!3204470 (= lt!1081656 (lemmaConcatAssociativity!1730 lt!1081658 lt!1081636 lt!1081640))))

(declare-fun res!1304081 () Bool)

(assert (=> start!300858 (=> (not res!1304081) (not e!1997958))))

(assert (=> start!300858 (= res!1304081 ((_ is Lexer!4797) thiss!18206))))

(assert (=> start!300858 e!1997958))

(assert (=> start!300858 true))

(declare-fun e!1997944 () Bool)

(assert (=> start!300858 e!1997944))

(declare-fun e!1997959 () Bool)

(assert (=> start!300858 e!1997959))

(declare-fun separatorToken!241 () Token!9786)

(declare-fun e!1997973 () Bool)

(declare-fun inv!48976 (Token!9786) Bool)

(assert (=> start!300858 (and (inv!48976 separatorToken!241) e!1997973)))

(declare-fun res!1304066 () Bool)

(assert (=> b!3204471 (=> (not res!1304066) (not e!1997958))))

(declare-fun forall!7368 (List!36245 Int) Bool)

(assert (=> b!3204471 (= res!1304066 (forall!7368 tokens!494 lambda!117290))))

(declare-fun b!3204472 () Bool)

(declare-fun e!1997967 () Unit!50554)

(declare-fun Unit!50556 () Unit!50554)

(assert (=> b!3204472 (= e!1997967 Unit!50556)))

(declare-fun lt!1081655 () C!20124)

(declare-fun lt!1081641 () Unit!50554)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!374 (Regex!9969 List!36243 C!20124) Unit!50554)

(assert (=> b!3204472 (= lt!1081641 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!374 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636 lt!1081655))))

(declare-fun res!1304065 () Bool)

(declare-fun matchR!4603 (Regex!9969 List!36243) Bool)

(assert (=> b!3204472 (= res!1304065 (not (matchR!4603 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636)))))

(declare-fun e!1997961 () Bool)

(assert (=> b!3204472 (=> (not res!1304065) (not e!1997961))))

(assert (=> b!3204472 e!1997961))

(declare-fun e!1997957 () Bool)

(assert (=> b!3204473 (= e!1997957 (and tp!1012340 tp!1012341))))

(declare-fun b!3204474 () Bool)

(declare-fun e!1997963 () Bool)

(assert (=> b!3204474 (= e!1997963 e!1997972)))

(declare-fun res!1304082 () Bool)

(assert (=> b!3204474 (=> (not res!1304082) (not e!1997972))))

(assert (=> b!3204474 (= res!1304082 (matchR!4603 (regex!5210 lt!1081633) lt!1081658))))

(declare-datatypes ((Option!7117 0))(
  ( (None!7116) (Some!7116 (v!35656 Rule!10220)) )
))
(declare-fun lt!1081653 () Option!7117)

(declare-fun get!11494 (Option!7117) Rule!10220)

(assert (=> b!3204474 (= lt!1081633 (get!11494 lt!1081653))))

(declare-fun b!3204475 () Bool)

(declare-fun e!1997950 () Bool)

(declare-fun lt!1081664 () tuple2!35506)

(assert (=> b!3204475 (= e!1997950 (isEmpty!20203 (_2!20887 lt!1081664)))))

(declare-fun b!3204476 () Bool)

(declare-fun e!1997956 () Bool)

(declare-fun e!1997970 () Bool)

(assert (=> b!3204476 (= e!1997956 e!1997970)))

(declare-fun res!1304080 () Bool)

(assert (=> b!3204476 (=> res!1304080 e!1997970)))

(declare-fun lt!1081648 () List!36243)

(declare-fun lt!1081660 () List!36243)

(assert (=> b!3204476 (= res!1304080 (or (not (= lt!1081648 lt!1081658)) (not (= lt!1081660 lt!1081658))))))

(declare-fun list!12843 (BalanceConc!21204) List!36243)

(declare-fun charsOf!3226 (Token!9786) BalanceConc!21204)

(assert (=> b!3204476 (= lt!1081658 (list!12843 (charsOf!3226 (h!41541 tokens!494))))))

(declare-fun b!3204477 () Bool)

(declare-fun e!1997946 () Bool)

(declare-fun e!1997965 () Bool)

(assert (=> b!3204477 (= e!1997946 e!1997965)))

(declare-fun res!1304067 () Bool)

(assert (=> b!3204477 (=> res!1304067 e!1997965)))

(assert (=> b!3204477 (= res!1304067 (or (isSeparator!5210 (rule!7648 (h!41541 tokens!494))) (isSeparator!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))))

(declare-fun lt!1081663 () Unit!50554)

(declare-fun forallContained!1181 (List!36245 Int Token!9786) Unit!50554)

(assert (=> b!3204477 (= lt!1081663 (forallContained!1181 tokens!494 lambda!117290 (h!41541 (t!237946 tokens!494))))))

(declare-fun lt!1081645 () Unit!50554)

(assert (=> b!3204477 (= lt!1081645 (forallContained!1181 tokens!494 lambda!117290 (h!41541 tokens!494)))))

(declare-fun b!3204478 () Bool)

(assert (=> b!3204478 (= e!1997961 false)))

(declare-fun b!3204479 () Bool)

(declare-fun res!1304073 () Bool)

(assert (=> b!3204479 (=> (not res!1304073) (not e!1997958))))

(declare-fun sepAndNonSepRulesDisjointChars!1404 (List!36244 List!36244) Bool)

(assert (=> b!3204479 (= res!1304073 (sepAndNonSepRulesDisjointChars!1404 rules!2135 rules!2135))))

(declare-fun b!3204480 () Bool)

(declare-fun res!1304068 () Bool)

(assert (=> b!3204480 (=> (not res!1304068) (not e!1997958))))

(declare-fun isEmpty!20204 (List!36244) Bool)

(assert (=> b!3204480 (= res!1304068 (not (isEmpty!20204 rules!2135)))))

(declare-fun e!1997945 () Bool)

(assert (=> b!3204481 (= e!1997945 (and tp!1012342 tp!1012338))))

(declare-fun e!1997960 () Bool)

(declare-fun tp!1012339 () Bool)

(declare-fun b!3204482 () Bool)

(declare-fun inv!21 (TokenValue!5440) Bool)

(assert (=> b!3204482 (= e!1997973 (and (inv!21 (value!168945 separatorToken!241)) e!1997960 tp!1012339))))

(declare-fun b!3204483 () Bool)

(declare-fun res!1304083 () Bool)

(assert (=> b!3204483 (=> (not res!1304083) (not e!1997958))))

(declare-fun rulesInvariant!4196 (LexerInterface!4799 List!36244) Bool)

(assert (=> b!3204483 (= res!1304083 (rulesInvariant!4196 thiss!18206 rules!2135))))

(declare-fun b!3204484 () Bool)

(declare-fun res!1304074 () Bool)

(assert (=> b!3204484 (=> (not res!1304074) (not e!1997958))))

(assert (=> b!3204484 (= res!1304074 (isSeparator!5210 (rule!7648 separatorToken!241)))))

(declare-fun b!3204485 () Bool)

(assert (=> b!3204485 (= e!1997970 e!1997946)))

(declare-fun res!1304076 () Bool)

(assert (=> b!3204485 (=> res!1304076 e!1997946)))

(declare-fun lt!1081661 () BalanceConc!21204)

(declare-fun isEmpty!20205 (BalanceConc!21206) Bool)

(declare-fun lex!2129 (LexerInterface!4799 List!36244 BalanceConc!21204) tuple2!35506)

(assert (=> b!3204485 (= res!1304076 (isEmpty!20205 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661))))))

(declare-fun seqFromList!3492 (List!36243) BalanceConc!21204)

(assert (=> b!3204485 (= lt!1081661 (seqFromList!3492 lt!1081658))))

(declare-fun b!3204486 () Bool)

(declare-fun res!1304063 () Bool)

(assert (=> b!3204486 (=> (not res!1304063) (not e!1997958))))

(declare-fun rulesProduceIndividualToken!2291 (LexerInterface!4799 List!36244 Token!9786) Bool)

(assert (=> b!3204486 (= res!1304063 (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3204487 () Bool)

(declare-fun res!1304078 () Bool)

(assert (=> b!3204487 (=> (not res!1304078) (not e!1997955))))

(declare-fun apply!8163 (BalanceConc!21206 Int) Token!9786)

(assert (=> b!3204487 (= res!1304078 (= (apply!8163 (_1!20887 lt!1081651) 0) separatorToken!241))))

(declare-fun e!1997969 () Bool)

(assert (=> b!3204488 (= e!1997969 (and tp!1012334 tp!1012343))))

(declare-fun b!3204489 () Bool)

(declare-fun Unit!50557 () Unit!50554)

(assert (=> b!3204489 (= e!1997967 Unit!50557)))

(declare-fun b!3204490 () Bool)

(assert (=> b!3204490 (= e!1997958 (not e!1997956))))

(declare-fun res!1304070 () Bool)

(assert (=> b!3204490 (=> res!1304070 e!1997956)))

(assert (=> b!3204490 (= res!1304070 (not (= lt!1081660 lt!1081648)))))

(declare-fun printList!1349 (LexerInterface!4799 List!36245) List!36243)

(assert (=> b!3204490 (= lt!1081648 (printList!1349 thiss!18206 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))

(declare-fun lt!1081642 () BalanceConc!21204)

(assert (=> b!3204490 (= lt!1081660 (list!12843 lt!1081642))))

(declare-fun lt!1081662 () BalanceConc!21206)

(declare-fun printTailRec!1296 (LexerInterface!4799 BalanceConc!21206 Int BalanceConc!21204) BalanceConc!21204)

(assert (=> b!3204490 (= lt!1081642 (printTailRec!1296 thiss!18206 lt!1081662 0 (BalanceConc!21205 Empty!10795)))))

(declare-fun print!1864 (LexerInterface!4799 BalanceConc!21206) BalanceConc!21204)

(assert (=> b!3204490 (= lt!1081642 (print!1864 thiss!18206 lt!1081662))))

(declare-fun singletonSeq!2306 (Token!9786) BalanceConc!21206)

(assert (=> b!3204490 (= lt!1081662 (singletonSeq!2306 (h!41541 tokens!494)))))

(declare-fun b!3204491 () Bool)

(declare-fun e!1997949 () Bool)

(declare-fun lt!1081657 () Rule!10220)

(assert (=> b!3204491 (= e!1997949 (= (rule!7648 separatorToken!241) lt!1081657))))

(declare-fun tp!1012336 () Bool)

(declare-fun b!3204492 () Bool)

(declare-fun e!1997943 () Bool)

(declare-fun inv!48973 (String!40534) Bool)

(declare-fun inv!48977 (TokenValueInjection!10308) Bool)

(assert (=> b!3204492 (= e!1997943 (and tp!1012336 (inv!48973 (tag!5734 (h!41540 rules!2135))) (inv!48977 (transformation!5210 (h!41540 rules!2135))) e!1997969))))

(declare-fun tp!1012345 () Bool)

(declare-fun e!1997964 () Bool)

(declare-fun e!1997953 () Bool)

(declare-fun b!3204493 () Bool)

(assert (=> b!3204493 (= e!1997953 (and (inv!21 (value!168945 (h!41541 tokens!494))) e!1997964 tp!1012345))))

(declare-fun tp!1012335 () Bool)

(declare-fun b!3204494 () Bool)

(assert (=> b!3204494 (= e!1997964 (and tp!1012335 (inv!48973 (tag!5734 (rule!7648 (h!41541 tokens!494)))) (inv!48977 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) e!1997957))))

(assert (=> b!3204495 (= e!1997954 (not (= lt!1081636 Nil!36119)))))

(declare-fun lt!1081652 () Unit!50554)

(assert (=> b!3204495 (= lt!1081652 (forallContained!1181 tokens!494 lambda!117291 (h!41541 (t!237946 tokens!494))))))

(assert (=> b!3204495 (= (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 (t!237946 tokens!494))) e!1997950)))

(declare-fun res!1304072 () Bool)

(assert (=> b!3204495 (=> (not res!1304072) (not e!1997950))))

(declare-fun size!27210 (BalanceConc!21206) Int)

(assert (=> b!3204495 (= res!1304072 (= (size!27210 (_1!20887 lt!1081664)) 1))))

(declare-fun lt!1081647 () BalanceConc!21204)

(assert (=> b!3204495 (= lt!1081664 (lex!2129 thiss!18206 rules!2135 lt!1081647))))

(declare-fun lt!1081650 () BalanceConc!21206)

(assert (=> b!3204495 (= lt!1081647 (printTailRec!1296 thiss!18206 lt!1081650 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> b!3204495 (= lt!1081647 (print!1864 thiss!18206 lt!1081650))))

(assert (=> b!3204495 (= lt!1081650 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))

(assert (=> b!3204495 e!1997955))

(declare-fun res!1304071 () Bool)

(assert (=> b!3204495 (=> (not res!1304071) (not e!1997955))))

(assert (=> b!3204495 (= res!1304071 (= (size!27210 (_1!20887 lt!1081651)) 1))))

(declare-fun lt!1081654 () BalanceConc!21204)

(assert (=> b!3204495 (= lt!1081651 (lex!2129 thiss!18206 rules!2135 lt!1081654))))

(declare-fun lt!1081643 () BalanceConc!21206)

(assert (=> b!3204495 (= lt!1081654 (printTailRec!1296 thiss!18206 lt!1081643 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> b!3204495 (= lt!1081654 (print!1864 thiss!18206 lt!1081643))))

(assert (=> b!3204495 (= lt!1081643 (singletonSeq!2306 separatorToken!241))))

(declare-fun lt!1081638 () Unit!50554)

(assert (=> b!3204495 (= lt!1081638 e!1997967)))

(declare-fun c!538125 () Bool)

(declare-fun contains!6433 (List!36243 C!20124) Bool)

(declare-fun usedCharacters!526 (Regex!9969) List!36243)

(assert (=> b!3204495 (= c!538125 (not (contains!6433 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241))) lt!1081655)))))

(declare-fun head!7027 (List!36243) C!20124)

(assert (=> b!3204495 (= lt!1081655 (head!7027 lt!1081636))))

(declare-fun e!1997966 () Bool)

(assert (=> b!3204495 e!1997966))

(declare-fun res!1304064 () Bool)

(assert (=> b!3204495 (=> (not res!1304064) (not e!1997966))))

(declare-fun lt!1081646 () Option!7117)

(declare-fun isDefined!5538 (Option!7117) Bool)

(assert (=> b!3204495 (= res!1304064 (isDefined!5538 lt!1081646))))

(declare-fun getRuleFromTag!915 (LexerInterface!4799 List!36244 String!40534) Option!7117)

(assert (=> b!3204495 (= lt!1081646 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))))

(declare-fun lt!1081639 () Unit!50554)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!915 (LexerInterface!4799 List!36244 List!36243 Token!9786) Unit!50554)

(assert (=> b!3204495 (= lt!1081639 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!915 thiss!18206 rules!2135 lt!1081636 separatorToken!241))))

(declare-datatypes ((tuple2!35508 0))(
  ( (tuple2!35509 (_1!20888 Token!9786) (_2!20888 List!36243)) )
))
(declare-datatypes ((Option!7118 0))(
  ( (None!7117) (Some!7117 (v!35657 tuple2!35508)) )
))
(declare-fun maxPrefixOneRule!1578 (LexerInterface!4799 Rule!10220 List!36243) Option!7118)

(declare-fun apply!8164 (TokenValueInjection!10308 BalanceConc!21204) TokenValue!5440)

(declare-fun size!27211 (List!36243) Int)

(assert (=> b!3204495 (= (maxPrefixOneRule!1578 thiss!18206 (rule!7648 (h!41541 tokens!494)) lt!1081658) (Some!7117 (tuple2!35509 (Token!9787 (apply!8164 (transformation!5210 (rule!7648 (h!41541 tokens!494))) lt!1081661) (rule!7648 (h!41541 tokens!494)) (size!27211 lt!1081658) lt!1081658) Nil!36119)))))

(declare-fun lt!1081635 () Unit!50554)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!691 (LexerInterface!4799 List!36244 List!36243 List!36243 List!36243 Rule!10220) Unit!50554)

(assert (=> b!3204495 (= lt!1081635 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!691 thiss!18206 rules!2135 lt!1081658 lt!1081658 Nil!36119 (rule!7648 (h!41541 tokens!494))))))

(assert (=> b!3204495 e!1997963))

(declare-fun res!1304075 () Bool)

(assert (=> b!3204495 (=> (not res!1304075) (not e!1997963))))

(assert (=> b!3204495 (= res!1304075 (isDefined!5538 lt!1081653))))

(assert (=> b!3204495 (= lt!1081653 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun lt!1081659 () Unit!50554)

(assert (=> b!3204495 (= lt!1081659 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!915 thiss!18206 rules!2135 lt!1081658 (h!41541 tokens!494)))))

(declare-fun lt!1081632 () Unit!50554)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!838 (LexerInterface!4799 List!36244 List!36245 Token!9786) Unit!50554)

(assert (=> b!3204495 (= lt!1081632 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!838 thiss!18206 rules!2135 tokens!494 (h!41541 tokens!494)))))

(declare-fun b!3204496 () Bool)

(declare-fun tp!1012337 () Bool)

(assert (=> b!3204496 (= e!1997960 (and tp!1012337 (inv!48973 (tag!5734 (rule!7648 separatorToken!241))) (inv!48977 (transformation!5210 (rule!7648 separatorToken!241))) e!1997945))))

(declare-fun b!3204497 () Bool)

(assert (=> b!3204497 (= e!1997965 e!1997971)))

(declare-fun res!1304069 () Bool)

(assert (=> b!3204497 (=> res!1304069 e!1997971)))

(declare-fun printWithSeparatorTokenList!144 (LexerInterface!4799 List!36245 Token!9786) List!36243)

(assert (=> b!3204497 (= res!1304069 (not (= lt!1081640 (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(assert (=> b!3204497 (= lt!1081637 (++!8660 lt!1081636 lt!1081640))))

(assert (=> b!3204497 (= lt!1081636 (list!12843 (charsOf!3226 separatorToken!241)))))

(assert (=> b!3204497 (= lt!1081640 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241))))

(assert (=> b!3204497 (= lt!1081634 (printWithSeparatorTokenList!144 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3204498 () Bool)

(declare-fun res!1304085 () Bool)

(assert (=> b!3204498 (=> (not res!1304085) (not e!1997958))))

(assert (=> b!3204498 (= res!1304085 (and (not ((_ is Nil!36121) tokens!494)) (not ((_ is Nil!36121) (t!237946 tokens!494)))))))

(declare-fun b!3204499 () Bool)

(assert (=> b!3204499 (= e!1997966 e!1997949)))

(declare-fun res!1304060 () Bool)

(assert (=> b!3204499 (=> (not res!1304060) (not e!1997949))))

(assert (=> b!3204499 (= res!1304060 (matchR!4603 (regex!5210 lt!1081657) lt!1081636))))

(assert (=> b!3204499 (= lt!1081657 (get!11494 lt!1081646))))

(declare-fun b!3204500 () Bool)

(declare-fun tp!1012344 () Bool)

(assert (=> b!3204500 (= e!1997944 (and e!1997943 tp!1012344))))

(declare-fun b!3204501 () Bool)

(declare-fun res!1304062 () Bool)

(assert (=> b!3204501 (=> (not res!1304062) (not e!1997950))))

(assert (=> b!3204501 (= res!1304062 (= (apply!8163 (_1!20887 lt!1081664) 0) (h!41541 (t!237946 tokens!494))))))

(declare-fun tp!1012346 () Bool)

(declare-fun b!3204502 () Bool)

(assert (=> b!3204502 (= e!1997959 (and (inv!48976 (h!41541 tokens!494)) e!1997953 tp!1012346))))

(declare-fun b!3204503 () Bool)

(declare-fun res!1304079 () Bool)

(assert (=> b!3204503 (=> res!1304079 e!1997970)))

(assert (=> b!3204503 (= res!1304079 (not (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 tokens!494))))))

(assert (= (and start!300858 res!1304081) b!3204480))

(assert (= (and b!3204480 res!1304068) b!3204483))

(assert (= (and b!3204483 res!1304083) b!3204469))

(assert (= (and b!3204469 res!1304077) b!3204486))

(assert (= (and b!3204486 res!1304063) b!3204484))

(assert (= (and b!3204484 res!1304074) b!3204471))

(assert (= (and b!3204471 res!1304066) b!3204479))

(assert (= (and b!3204479 res!1304073) b!3204498))

(assert (= (and b!3204498 res!1304085) b!3204490))

(assert (= (and b!3204490 (not res!1304070)) b!3204476))

(assert (= (and b!3204476 (not res!1304080)) b!3204503))

(assert (= (and b!3204503 (not res!1304079)) b!3204485))

(assert (= (and b!3204485 (not res!1304076)) b!3204477))

(assert (= (and b!3204477 (not res!1304067)) b!3204497))

(assert (= (and b!3204497 (not res!1304069)) b!3204467))

(assert (= (and b!3204467 (not res!1304061)) b!3204470))

(assert (= (and b!3204470 (not res!1304084)) b!3204495))

(assert (= (and b!3204495 res!1304075) b!3204474))

(assert (= (and b!3204474 res!1304082) b!3204466))

(assert (= (and b!3204495 res!1304064) b!3204499))

(assert (= (and b!3204499 res!1304060) b!3204491))

(assert (= (and b!3204495 c!538125) b!3204472))

(assert (= (and b!3204495 (not c!538125)) b!3204489))

(assert (= (and b!3204472 res!1304065) b!3204478))

(assert (= (and b!3204495 res!1304071) b!3204487))

(assert (= (and b!3204487 res!1304078) b!3204468))

(assert (= (and b!3204495 res!1304072) b!3204501))

(assert (= (and b!3204501 res!1304062) b!3204475))

(assert (= b!3204492 b!3204488))

(assert (= b!3204500 b!3204492))

(assert (= (and start!300858 ((_ is Cons!36120) rules!2135)) b!3204500))

(assert (= b!3204494 b!3204473))

(assert (= b!3204493 b!3204494))

(assert (= b!3204502 b!3204493))

(assert (= (and start!300858 ((_ is Cons!36121) tokens!494)) b!3204502))

(assert (= b!3204496 b!3204481))

(assert (= b!3204482 b!3204496))

(assert (= start!300858 b!3204482))

(declare-fun m!3469143 () Bool)

(assert (=> b!3204471 m!3469143))

(declare-fun m!3469145 () Bool)

(assert (=> b!3204497 m!3469145))

(declare-fun m!3469147 () Bool)

(assert (=> b!3204497 m!3469147))

(declare-fun m!3469149 () Bool)

(assert (=> b!3204497 m!3469149))

(declare-fun m!3469151 () Bool)

(assert (=> b!3204497 m!3469151))

(declare-fun m!3469153 () Bool)

(assert (=> b!3204497 m!3469153))

(declare-fun m!3469155 () Bool)

(assert (=> b!3204497 m!3469155))

(declare-fun m!3469157 () Bool)

(assert (=> b!3204497 m!3469157))

(assert (=> b!3204497 m!3469145))

(declare-fun m!3469159 () Bool)

(assert (=> b!3204497 m!3469159))

(assert (=> b!3204497 m!3469159))

(assert (=> b!3204497 m!3469153))

(declare-fun m!3469161 () Bool)

(assert (=> b!3204497 m!3469161))

(assert (=> b!3204497 m!3469155))

(assert (=> b!3204497 m!3469147))

(declare-fun m!3469163 () Bool)

(assert (=> b!3204497 m!3469163))

(declare-fun m!3469165 () Bool)

(assert (=> b!3204493 m!3469165))

(declare-fun m!3469167 () Bool)

(assert (=> b!3204503 m!3469167))

(declare-fun m!3469169 () Bool)

(assert (=> b!3204502 m!3469169))

(declare-fun m!3469171 () Bool)

(assert (=> b!3204477 m!3469171))

(declare-fun m!3469173 () Bool)

(assert (=> b!3204477 m!3469173))

(declare-fun m!3469175 () Bool)

(assert (=> b!3204480 m!3469175))

(declare-fun m!3469177 () Bool)

(assert (=> b!3204487 m!3469177))

(declare-fun m!3469179 () Bool)

(assert (=> b!3204479 m!3469179))

(declare-fun m!3469181 () Bool)

(assert (=> b!3204474 m!3469181))

(declare-fun m!3469183 () Bool)

(assert (=> b!3204474 m!3469183))

(declare-fun m!3469185 () Bool)

(assert (=> b!3204492 m!3469185))

(declare-fun m!3469187 () Bool)

(assert (=> b!3204492 m!3469187))

(declare-fun m!3469189 () Bool)

(assert (=> b!3204501 m!3469189))

(declare-fun m!3469191 () Bool)

(assert (=> b!3204472 m!3469191))

(declare-fun m!3469193 () Bool)

(assert (=> b!3204472 m!3469193))

(declare-fun m!3469195 () Bool)

(assert (=> b!3204475 m!3469195))

(declare-fun m!3469197 () Bool)

(assert (=> b!3204496 m!3469197))

(declare-fun m!3469199 () Bool)

(assert (=> b!3204496 m!3469199))

(declare-fun m!3469201 () Bool)

(assert (=> b!3204483 m!3469201))

(declare-fun m!3469203 () Bool)

(assert (=> b!3204476 m!3469203))

(assert (=> b!3204476 m!3469203))

(declare-fun m!3469205 () Bool)

(assert (=> b!3204476 m!3469205))

(declare-fun m!3469207 () Bool)

(assert (=> b!3204467 m!3469207))

(assert (=> b!3204467 m!3469207))

(declare-fun m!3469209 () Bool)

(assert (=> b!3204467 m!3469209))

(declare-fun m!3469211 () Bool)

(assert (=> b!3204486 m!3469211))

(declare-fun m!3469213 () Bool)

(assert (=> b!3204494 m!3469213))

(declare-fun m!3469215 () Bool)

(assert (=> b!3204494 m!3469215))

(declare-fun m!3469217 () Bool)

(assert (=> b!3204490 m!3469217))

(declare-fun m!3469219 () Bool)

(assert (=> b!3204490 m!3469219))

(declare-fun m!3469221 () Bool)

(assert (=> b!3204490 m!3469221))

(declare-fun m!3469223 () Bool)

(assert (=> b!3204490 m!3469223))

(declare-fun m!3469225 () Bool)

(assert (=> b!3204490 m!3469225))

(declare-fun m!3469227 () Bool)

(assert (=> b!3204485 m!3469227))

(declare-fun m!3469229 () Bool)

(assert (=> b!3204485 m!3469229))

(declare-fun m!3469231 () Bool)

(assert (=> b!3204485 m!3469231))

(declare-fun m!3469233 () Bool)

(assert (=> b!3204499 m!3469233))

(declare-fun m!3469235 () Bool)

(assert (=> b!3204499 m!3469235))

(declare-fun m!3469237 () Bool)

(assert (=> b!3204495 m!3469237))

(declare-fun m!3469239 () Bool)

(assert (=> b!3204495 m!3469239))

(declare-fun m!3469241 () Bool)

(assert (=> b!3204495 m!3469241))

(declare-fun m!3469243 () Bool)

(assert (=> b!3204495 m!3469243))

(declare-fun m!3469245 () Bool)

(assert (=> b!3204495 m!3469245))

(declare-fun m!3469247 () Bool)

(assert (=> b!3204495 m!3469247))

(declare-fun m!3469249 () Bool)

(assert (=> b!3204495 m!3469249))

(declare-fun m!3469251 () Bool)

(assert (=> b!3204495 m!3469251))

(declare-fun m!3469253 () Bool)

(assert (=> b!3204495 m!3469253))

(declare-fun m!3469255 () Bool)

(assert (=> b!3204495 m!3469255))

(declare-fun m!3469257 () Bool)

(assert (=> b!3204495 m!3469257))

(declare-fun m!3469259 () Bool)

(assert (=> b!3204495 m!3469259))

(declare-fun m!3469261 () Bool)

(assert (=> b!3204495 m!3469261))

(declare-fun m!3469263 () Bool)

(assert (=> b!3204495 m!3469263))

(declare-fun m!3469265 () Bool)

(assert (=> b!3204495 m!3469265))

(declare-fun m!3469267 () Bool)

(assert (=> b!3204495 m!3469267))

(declare-fun m!3469269 () Bool)

(assert (=> b!3204495 m!3469269))

(declare-fun m!3469271 () Bool)

(assert (=> b!3204495 m!3469271))

(declare-fun m!3469273 () Bool)

(assert (=> b!3204495 m!3469273))

(declare-fun m!3469275 () Bool)

(assert (=> b!3204495 m!3469275))

(declare-fun m!3469277 () Bool)

(assert (=> b!3204495 m!3469277))

(assert (=> b!3204495 m!3469237))

(declare-fun m!3469279 () Bool)

(assert (=> b!3204495 m!3469279))

(declare-fun m!3469281 () Bool)

(assert (=> b!3204495 m!3469281))

(declare-fun m!3469283 () Bool)

(assert (=> b!3204495 m!3469283))

(declare-fun m!3469285 () Bool)

(assert (=> b!3204495 m!3469285))

(declare-fun m!3469287 () Bool)

(assert (=> b!3204495 m!3469287))

(declare-fun m!3469289 () Bool)

(assert (=> b!3204470 m!3469289))

(declare-fun m!3469291 () Bool)

(assert (=> b!3204470 m!3469291))

(declare-fun m!3469293 () Bool)

(assert (=> b!3204468 m!3469293))

(declare-fun m!3469295 () Bool)

(assert (=> b!3204482 m!3469295))

(declare-fun m!3469297 () Bool)

(assert (=> b!3204469 m!3469297))

(assert (=> b!3204469 m!3469297))

(declare-fun m!3469299 () Bool)

(assert (=> b!3204469 m!3469299))

(declare-fun m!3469301 () Bool)

(assert (=> start!300858 m!3469301))

(check-sat (not b!3204487) (not b!3204470) b_and!213203 b_and!213199 (not b!3204476) (not b!3204480) b_and!213207 (not b!3204499) (not b_next!85915) b_and!213205 (not b!3204490) b_and!213209 (not b!3204503) (not b_next!85913) (not b!3204512) (not b_next!85911) (not b!3204477) (not b!3204502) (not b_next!85907) (not b!3204472) (not b!3204485) (not b!3204475) (not b!3204495) (not b!3204500) (not b_next!85909) (not b!3204467) (not b_next!85905) (not b!3204486) (not b!3204492) (not b!3204497) (not b!3204468) (not start!300858) (not b!3204479) (not b!3204474) (not b!3204494) (not b!3204496) (not b!3204471) (not b!3204501) (not b!3204493) b_and!213201 (not b!3204469) (not b!3204483) (not b!3204482))
(check-sat (not b_next!85915) b_and!213205 b_and!213209 (not b_next!85913) b_and!213203 (not b_next!85911) (not b_next!85907) b_and!213199 (not b_next!85909) (not b_next!85905) b_and!213207 b_and!213201)
(get-model)

(declare-fun d!877322 () Bool)

(declare-fun lt!1081667 () Token!9786)

(declare-fun apply!8165 (List!36245 Int) Token!9786)

(declare-fun list!12844 (BalanceConc!21206) List!36245)

(assert (=> d!877322 (= lt!1081667 (apply!8165 (list!12844 (_1!20887 lt!1081651)) 0))))

(declare-fun apply!8166 (Conc!10796 Int) Token!9786)

(assert (=> d!877322 (= lt!1081667 (apply!8166 (c!538128 (_1!20887 lt!1081651)) 0))))

(declare-fun e!1997985 () Bool)

(assert (=> d!877322 e!1997985))

(declare-fun res!1304101 () Bool)

(assert (=> d!877322 (=> (not res!1304101) (not e!1997985))))

(assert (=> d!877322 (= res!1304101 (<= 0 0))))

(assert (=> d!877322 (= (apply!8163 (_1!20887 lt!1081651) 0) lt!1081667)))

(declare-fun b!3204519 () Bool)

(assert (=> b!3204519 (= e!1997985 (< 0 (size!27210 (_1!20887 lt!1081651))))))

(assert (= (and d!877322 res!1304101) b!3204519))

(declare-fun m!3469303 () Bool)

(assert (=> d!877322 m!3469303))

(assert (=> d!877322 m!3469303))

(declare-fun m!3469305 () Bool)

(assert (=> d!877322 m!3469305))

(declare-fun m!3469307 () Bool)

(assert (=> d!877322 m!3469307))

(assert (=> b!3204519 m!3469239))

(assert (=> b!3204487 d!877322))

(declare-fun d!877324 () Bool)

(declare-fun lt!1081697 () Bool)

(declare-fun e!1998062 () Bool)

(assert (=> d!877324 (= lt!1081697 e!1998062)))

(declare-fun res!1304173 () Bool)

(assert (=> d!877324 (=> (not res!1304173) (not e!1998062))))

(assert (=> d!877324 (= res!1304173 (= (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241))))) (list!12844 (singletonSeq!2306 separatorToken!241))))))

(declare-fun e!1998061 () Bool)

(assert (=> d!877324 (= lt!1081697 e!1998061)))

(declare-fun res!1304171 () Bool)

(assert (=> d!877324 (=> (not res!1304171) (not e!1998061))))

(declare-fun lt!1081696 () tuple2!35506)

(assert (=> d!877324 (= res!1304171 (= (size!27210 (_1!20887 lt!1081696)) 1))))

(assert (=> d!877324 (= lt!1081696 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241))))))

(assert (=> d!877324 (not (isEmpty!20204 rules!2135))))

(assert (=> d!877324 (= (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 separatorToken!241) lt!1081697)))

(declare-fun b!3204652 () Bool)

(declare-fun res!1304172 () Bool)

(assert (=> b!3204652 (=> (not res!1304172) (not e!1998061))))

(assert (=> b!3204652 (= res!1304172 (= (apply!8163 (_1!20887 lt!1081696) 0) separatorToken!241))))

(declare-fun b!3204653 () Bool)

(assert (=> b!3204653 (= e!1998061 (isEmpty!20203 (_2!20887 lt!1081696)))))

(declare-fun b!3204654 () Bool)

(assert (=> b!3204654 (= e!1998062 (isEmpty!20203 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241))))))))

(assert (= (and d!877324 res!1304171) b!3204652))

(assert (= (and b!3204652 res!1304172) b!3204653))

(assert (= (and d!877324 res!1304173) b!3204654))

(assert (=> d!877324 m!3469259))

(assert (=> d!877324 m!3469259))

(declare-fun m!3469463 () Bool)

(assert (=> d!877324 m!3469463))

(assert (=> d!877324 m!3469463))

(declare-fun m!3469465 () Bool)

(assert (=> d!877324 m!3469465))

(assert (=> d!877324 m!3469175))

(assert (=> d!877324 m!3469259))

(declare-fun m!3469467 () Bool)

(assert (=> d!877324 m!3469467))

(declare-fun m!3469469 () Bool)

(assert (=> d!877324 m!3469469))

(declare-fun m!3469471 () Bool)

(assert (=> d!877324 m!3469471))

(declare-fun m!3469473 () Bool)

(assert (=> b!3204652 m!3469473))

(declare-fun m!3469475 () Bool)

(assert (=> b!3204653 m!3469475))

(assert (=> b!3204654 m!3469259))

(assert (=> b!3204654 m!3469259))

(assert (=> b!3204654 m!3469463))

(assert (=> b!3204654 m!3469463))

(assert (=> b!3204654 m!3469465))

(declare-fun m!3469477 () Bool)

(assert (=> b!3204654 m!3469477))

(assert (=> b!3204486 d!877324))

(declare-fun d!877380 () Bool)

(declare-fun lt!1081700 () Bool)

(declare-fun isEmpty!20206 (List!36245) Bool)

(assert (=> d!877380 (= lt!1081700 (isEmpty!20206 (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661)))))))

(declare-fun isEmpty!20207 (Conc!10796) Bool)

(assert (=> d!877380 (= lt!1081700 (isEmpty!20207 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661)))))))

(assert (=> d!877380 (= (isEmpty!20205 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661))) lt!1081700)))

(declare-fun bs!541199 () Bool)

(assert (= bs!541199 d!877380))

(declare-fun m!3469479 () Bool)

(assert (=> bs!541199 m!3469479))

(assert (=> bs!541199 m!3469479))

(declare-fun m!3469481 () Bool)

(assert (=> bs!541199 m!3469481))

(declare-fun m!3469483 () Bool)

(assert (=> bs!541199 m!3469483))

(assert (=> b!3204485 d!877380))

(declare-fun b!3204689 () Bool)

(declare-fun e!1998085 () Bool)

(declare-fun lt!1081710 () tuple2!35506)

(assert (=> b!3204689 (= e!1998085 (= (_2!20887 lt!1081710) lt!1081661))))

(declare-fun b!3204690 () Bool)

(declare-fun e!1998084 () Bool)

(assert (=> b!3204690 (= e!1998084 (not (isEmpty!20205 (_1!20887 lt!1081710))))))

(declare-fun b!3204691 () Bool)

(declare-fun res!1304199 () Bool)

(declare-fun e!1998083 () Bool)

(assert (=> b!3204691 (=> (not res!1304199) (not e!1998083))))

(declare-datatypes ((tuple2!35510 0))(
  ( (tuple2!35511 (_1!20889 List!36245) (_2!20889 List!36243)) )
))
(declare-fun lexList!1310 (LexerInterface!4799 List!36244 List!36243) tuple2!35510)

(assert (=> b!3204691 (= res!1304199 (= (list!12844 (_1!20887 lt!1081710)) (_1!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081661)))))))

(declare-fun d!877382 () Bool)

(assert (=> d!877382 e!1998083))

(declare-fun res!1304198 () Bool)

(assert (=> d!877382 (=> (not res!1304198) (not e!1998083))))

(assert (=> d!877382 (= res!1304198 e!1998085)))

(declare-fun c!538163 () Bool)

(assert (=> d!877382 (= c!538163 (> (size!27210 (_1!20887 lt!1081710)) 0))))

(declare-fun lexTailRecV2!930 (LexerInterface!4799 List!36244 BalanceConc!21204 BalanceConc!21204 BalanceConc!21204 BalanceConc!21206) tuple2!35506)

(assert (=> d!877382 (= lt!1081710 (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081661 (BalanceConc!21205 Empty!10795) lt!1081661 (BalanceConc!21207 Empty!10796)))))

(assert (=> d!877382 (= (lex!2129 thiss!18206 rules!2135 lt!1081661) lt!1081710)))

(declare-fun b!3204692 () Bool)

(assert (=> b!3204692 (= e!1998085 e!1998084)))

(declare-fun res!1304200 () Bool)

(declare-fun size!27212 (BalanceConc!21204) Int)

(assert (=> b!3204692 (= res!1304200 (< (size!27212 (_2!20887 lt!1081710)) (size!27212 lt!1081661)))))

(assert (=> b!3204692 (=> (not res!1304200) (not e!1998084))))

(declare-fun b!3204693 () Bool)

(assert (=> b!3204693 (= e!1998083 (= (list!12843 (_2!20887 lt!1081710)) (_2!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081661)))))))

(assert (= (and d!877382 c!538163) b!3204692))

(assert (= (and d!877382 (not c!538163)) b!3204689))

(assert (= (and b!3204692 res!1304200) b!3204690))

(assert (= (and d!877382 res!1304198) b!3204691))

(assert (= (and b!3204691 res!1304199) b!3204693))

(declare-fun m!3469521 () Bool)

(assert (=> b!3204693 m!3469521))

(declare-fun m!3469523 () Bool)

(assert (=> b!3204693 m!3469523))

(assert (=> b!3204693 m!3469523))

(declare-fun m!3469525 () Bool)

(assert (=> b!3204693 m!3469525))

(declare-fun m!3469527 () Bool)

(assert (=> d!877382 m!3469527))

(declare-fun m!3469529 () Bool)

(assert (=> d!877382 m!3469529))

(declare-fun m!3469531 () Bool)

(assert (=> b!3204690 m!3469531))

(declare-fun m!3469533 () Bool)

(assert (=> b!3204692 m!3469533))

(declare-fun m!3469535 () Bool)

(assert (=> b!3204692 m!3469535))

(declare-fun m!3469537 () Bool)

(assert (=> b!3204691 m!3469537))

(assert (=> b!3204691 m!3469523))

(assert (=> b!3204691 m!3469523))

(assert (=> b!3204691 m!3469525))

(assert (=> b!3204485 d!877382))

(declare-fun d!877394 () Bool)

(declare-fun fromListB!1535 (List!36243) BalanceConc!21204)

(assert (=> d!877394 (= (seqFromList!3492 lt!1081658) (fromListB!1535 lt!1081658))))

(declare-fun bs!541200 () Bool)

(assert (= bs!541200 d!877394))

(declare-fun m!3469539 () Bool)

(assert (=> bs!541200 m!3469539))

(assert (=> b!3204485 d!877394))

(declare-fun d!877396 () Bool)

(declare-fun res!1304203 () Bool)

(declare-fun e!1998088 () Bool)

(assert (=> d!877396 (=> (not res!1304203) (not e!1998088))))

(declare-fun rulesValid!1912 (LexerInterface!4799 List!36244) Bool)

(assert (=> d!877396 (= res!1304203 (rulesValid!1912 thiss!18206 rules!2135))))

(assert (=> d!877396 (= (rulesInvariant!4196 thiss!18206 rules!2135) e!1998088)))

(declare-fun b!3204696 () Bool)

(declare-datatypes ((List!36246 0))(
  ( (Nil!36122) (Cons!36122 (h!41542 String!40534) (t!238041 List!36246)) )
))
(declare-fun noDuplicateTag!1908 (LexerInterface!4799 List!36244 List!36246) Bool)

(assert (=> b!3204696 (= e!1998088 (noDuplicateTag!1908 thiss!18206 rules!2135 Nil!36122))))

(assert (= (and d!877396 res!1304203) b!3204696))

(declare-fun m!3469541 () Bool)

(assert (=> d!877396 m!3469541))

(declare-fun m!3469543 () Bool)

(assert (=> b!3204696 m!3469543))

(assert (=> b!3204483 d!877396))

(declare-fun d!877398 () Bool)

(declare-fun res!1304208 () Bool)

(declare-fun e!1998093 () Bool)

(assert (=> d!877398 (=> res!1304208 e!1998093)))

(assert (=> d!877398 (= res!1304208 ((_ is Nil!36121) tokens!494))))

(assert (=> d!877398 (= (forall!7368 tokens!494 lambda!117290) e!1998093)))

(declare-fun b!3204701 () Bool)

(declare-fun e!1998094 () Bool)

(assert (=> b!3204701 (= e!1998093 e!1998094)))

(declare-fun res!1304209 () Bool)

(assert (=> b!3204701 (=> (not res!1304209) (not e!1998094))))

(declare-fun dynLambda!14558 (Int Token!9786) Bool)

(assert (=> b!3204701 (= res!1304209 (dynLambda!14558 lambda!117290 (h!41541 tokens!494)))))

(declare-fun b!3204702 () Bool)

(assert (=> b!3204702 (= e!1998094 (forall!7368 (t!237946 tokens!494) lambda!117290))))

(assert (= (and d!877398 (not res!1304208)) b!3204701))

(assert (= (and b!3204701 res!1304209) b!3204702))

(declare-fun b_lambda!87685 () Bool)

(assert (=> (not b_lambda!87685) (not b!3204701)))

(declare-fun m!3469545 () Bool)

(assert (=> b!3204701 m!3469545))

(declare-fun m!3469547 () Bool)

(assert (=> b!3204702 m!3469547))

(assert (=> b!3204471 d!877398))

(declare-fun d!877400 () Bool)

(assert (=> d!877400 (not (matchR!4603 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636))))

(declare-fun lt!1081713 () Unit!50554)

(declare-fun choose!18701 (Regex!9969 List!36243 C!20124) Unit!50554)

(assert (=> d!877400 (= lt!1081713 (choose!18701 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636 lt!1081655))))

(declare-fun validRegex!4549 (Regex!9969) Bool)

(assert (=> d!877400 (validRegex!4549 (regex!5210 (rule!7648 separatorToken!241)))))

(assert (=> d!877400 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!374 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636 lt!1081655) lt!1081713)))

(declare-fun bs!541201 () Bool)

(assert (= bs!541201 d!877400))

(assert (=> bs!541201 m!3469193))

(declare-fun m!3469549 () Bool)

(assert (=> bs!541201 m!3469549))

(declare-fun m!3469551 () Bool)

(assert (=> bs!541201 m!3469551))

(assert (=> b!3204472 d!877400))

(declare-fun b!3204731 () Bool)

(declare-fun e!1998109 () Bool)

(declare-fun e!1998112 () Bool)

(assert (=> b!3204731 (= e!1998109 e!1998112)))

(declare-fun c!538172 () Bool)

(assert (=> b!3204731 (= c!538172 ((_ is EmptyLang!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun b!3204732 () Bool)

(declare-fun e!1998110 () Bool)

(declare-fun e!1998114 () Bool)

(assert (=> b!3204732 (= e!1998110 e!1998114)))

(declare-fun res!1304229 () Bool)

(assert (=> b!3204732 (=> (not res!1304229) (not e!1998114))))

(declare-fun lt!1081716 () Bool)

(assert (=> b!3204732 (= res!1304229 (not lt!1081716))))

(declare-fun b!3204733 () Bool)

(declare-fun call!231972 () Bool)

(assert (=> b!3204733 (= e!1998109 (= lt!1081716 call!231972))))

(declare-fun b!3204734 () Bool)

(declare-fun e!1998111 () Bool)

(assert (=> b!3204734 (= e!1998111 (= (head!7027 lt!1081636) (c!538126 (regex!5210 (rule!7648 separatorToken!241)))))))

(declare-fun b!3204735 () Bool)

(declare-fun e!1998115 () Bool)

(declare-fun nullable!3395 (Regex!9969) Bool)

(assert (=> b!3204735 (= e!1998115 (nullable!3395 (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun b!3204736 () Bool)

(declare-fun res!1304230 () Bool)

(assert (=> b!3204736 (=> (not res!1304230) (not e!1998111))))

(declare-fun isEmpty!20208 (List!36243) Bool)

(declare-fun tail!5206 (List!36243) List!36243)

(assert (=> b!3204736 (= res!1304230 (isEmpty!20208 (tail!5206 lt!1081636)))))

(declare-fun b!3204737 () Bool)

(declare-fun e!1998113 () Bool)

(assert (=> b!3204737 (= e!1998114 e!1998113)))

(declare-fun res!1304232 () Bool)

(assert (=> b!3204737 (=> res!1304232 e!1998113)))

(assert (=> b!3204737 (= res!1304232 call!231972)))

(declare-fun b!3204738 () Bool)

(assert (=> b!3204738 (= e!1998113 (not (= (head!7027 lt!1081636) (c!538126 (regex!5210 (rule!7648 separatorToken!241))))))))

(declare-fun b!3204739 () Bool)

(declare-fun res!1304233 () Bool)

(assert (=> b!3204739 (=> res!1304233 e!1998110)))

(assert (=> b!3204739 (= res!1304233 e!1998111)))

(declare-fun res!1304226 () Bool)

(assert (=> b!3204739 (=> (not res!1304226) (not e!1998111))))

(assert (=> b!3204739 (= res!1304226 lt!1081716)))

(declare-fun b!3204740 () Bool)

(declare-fun res!1304227 () Bool)

(assert (=> b!3204740 (=> res!1304227 e!1998113)))

(assert (=> b!3204740 (= res!1304227 (not (isEmpty!20208 (tail!5206 lt!1081636))))))

(declare-fun d!877402 () Bool)

(assert (=> d!877402 e!1998109))

(declare-fun c!538171 () Bool)

(assert (=> d!877402 (= c!538171 ((_ is EmptyExpr!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(assert (=> d!877402 (= lt!1081716 e!1998115)))

(declare-fun c!538173 () Bool)

(assert (=> d!877402 (= c!538173 (isEmpty!20208 lt!1081636))))

(assert (=> d!877402 (validRegex!4549 (regex!5210 (rule!7648 separatorToken!241)))))

(assert (=> d!877402 (= (matchR!4603 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636) lt!1081716)))

(declare-fun bm!231967 () Bool)

(assert (=> bm!231967 (= call!231972 (isEmpty!20208 lt!1081636))))

(declare-fun b!3204741 () Bool)

(declare-fun res!1304231 () Bool)

(assert (=> b!3204741 (=> (not res!1304231) (not e!1998111))))

(assert (=> b!3204741 (= res!1304231 (not call!231972))))

(declare-fun b!3204742 () Bool)

(declare-fun res!1304228 () Bool)

(assert (=> b!3204742 (=> res!1304228 e!1998110)))

(assert (=> b!3204742 (= res!1304228 (not ((_ is ElementMatch!9969) (regex!5210 (rule!7648 separatorToken!241)))))))

(assert (=> b!3204742 (= e!1998112 e!1998110)))

(declare-fun b!3204743 () Bool)

(declare-fun derivativeStep!2948 (Regex!9969 C!20124) Regex!9969)

(assert (=> b!3204743 (= e!1998115 (matchR!4603 (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636)) (tail!5206 lt!1081636)))))

(declare-fun b!3204744 () Bool)

(assert (=> b!3204744 (= e!1998112 (not lt!1081716))))

(assert (= (and d!877402 c!538173) b!3204735))

(assert (= (and d!877402 (not c!538173)) b!3204743))

(assert (= (and d!877402 c!538171) b!3204733))

(assert (= (and d!877402 (not c!538171)) b!3204731))

(assert (= (and b!3204731 c!538172) b!3204744))

(assert (= (and b!3204731 (not c!538172)) b!3204742))

(assert (= (and b!3204742 (not res!1304228)) b!3204739))

(assert (= (and b!3204739 res!1304226) b!3204741))

(assert (= (and b!3204741 res!1304231) b!3204736))

(assert (= (and b!3204736 res!1304230) b!3204734))

(assert (= (and b!3204739 (not res!1304233)) b!3204732))

(assert (= (and b!3204732 res!1304229) b!3204737))

(assert (= (and b!3204737 (not res!1304232)) b!3204740))

(assert (= (and b!3204740 (not res!1304227)) b!3204738))

(assert (= (or b!3204733 b!3204737 b!3204741) bm!231967))

(declare-fun m!3469553 () Bool)

(assert (=> b!3204736 m!3469553))

(assert (=> b!3204736 m!3469553))

(declare-fun m!3469555 () Bool)

(assert (=> b!3204736 m!3469555))

(declare-fun m!3469557 () Bool)

(assert (=> d!877402 m!3469557))

(assert (=> d!877402 m!3469551))

(declare-fun m!3469559 () Bool)

(assert (=> b!3204735 m!3469559))

(assert (=> b!3204738 m!3469263))

(assert (=> b!3204734 m!3469263))

(assert (=> bm!231967 m!3469557))

(assert (=> b!3204740 m!3469553))

(assert (=> b!3204740 m!3469553))

(assert (=> b!3204740 m!3469555))

(assert (=> b!3204743 m!3469263))

(assert (=> b!3204743 m!3469263))

(declare-fun m!3469561 () Bool)

(assert (=> b!3204743 m!3469561))

(assert (=> b!3204743 m!3469553))

(assert (=> b!3204743 m!3469561))

(assert (=> b!3204743 m!3469553))

(declare-fun m!3469563 () Bool)

(assert (=> b!3204743 m!3469563))

(assert (=> b!3204472 d!877402))

(declare-fun b!3204755 () Bool)

(declare-fun e!1998122 () Bool)

(declare-fun e!1998124 () Bool)

(assert (=> b!3204755 (= e!1998122 e!1998124)))

(declare-fun c!538178 () Bool)

(assert (=> b!3204755 (= c!538178 ((_ is IntegerValue!16321) (value!168945 (h!41541 tokens!494))))))

(declare-fun b!3204756 () Bool)

(declare-fun res!1304236 () Bool)

(declare-fun e!1998123 () Bool)

(assert (=> b!3204756 (=> res!1304236 e!1998123)))

(assert (=> b!3204756 (= res!1304236 (not ((_ is IntegerValue!16322) (value!168945 (h!41541 tokens!494)))))))

(assert (=> b!3204756 (= e!1998124 e!1998123)))

(declare-fun b!3204757 () Bool)

(declare-fun inv!17 (TokenValue!5440) Bool)

(assert (=> b!3204757 (= e!1998124 (inv!17 (value!168945 (h!41541 tokens!494))))))

(declare-fun d!877404 () Bool)

(declare-fun c!538179 () Bool)

(assert (=> d!877404 (= c!538179 ((_ is IntegerValue!16320) (value!168945 (h!41541 tokens!494))))))

(assert (=> d!877404 (= (inv!21 (value!168945 (h!41541 tokens!494))) e!1998122)))

(declare-fun b!3204758 () Bool)

(declare-fun inv!15 (TokenValue!5440) Bool)

(assert (=> b!3204758 (= e!1998123 (inv!15 (value!168945 (h!41541 tokens!494))))))

(declare-fun b!3204759 () Bool)

(declare-fun inv!16 (TokenValue!5440) Bool)

(assert (=> b!3204759 (= e!1998122 (inv!16 (value!168945 (h!41541 tokens!494))))))

(assert (= (and d!877404 c!538179) b!3204759))

(assert (= (and d!877404 (not c!538179)) b!3204755))

(assert (= (and b!3204755 c!538178) b!3204757))

(assert (= (and b!3204755 (not c!538178)) b!3204756))

(assert (= (and b!3204756 (not res!1304236)) b!3204758))

(declare-fun m!3469565 () Bool)

(assert (=> b!3204757 m!3469565))

(declare-fun m!3469567 () Bool)

(assert (=> b!3204758 m!3469567))

(declare-fun m!3469569 () Bool)

(assert (=> b!3204759 m!3469569))

(assert (=> b!3204493 d!877404))

(declare-fun b!3204770 () Bool)

(declare-fun res!1304241 () Bool)

(declare-fun e!1998129 () Bool)

(assert (=> b!3204770 (=> (not res!1304241) (not e!1998129))))

(declare-fun lt!1081719 () List!36243)

(assert (=> b!3204770 (= res!1304241 (= (size!27211 lt!1081719) (+ (size!27211 lt!1081658) (size!27211 lt!1081637))))))

(declare-fun b!3204768 () Bool)

(declare-fun e!1998130 () List!36243)

(assert (=> b!3204768 (= e!1998130 lt!1081637)))

(declare-fun b!3204771 () Bool)

(assert (=> b!3204771 (= e!1998129 (or (not (= lt!1081637 Nil!36119)) (= lt!1081719 lt!1081658)))))

(declare-fun d!877406 () Bool)

(assert (=> d!877406 e!1998129))

(declare-fun res!1304242 () Bool)

(assert (=> d!877406 (=> (not res!1304242) (not e!1998129))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4882 (List!36243) (InoxSet C!20124))

(assert (=> d!877406 (= res!1304242 (= (content!4882 lt!1081719) ((_ map or) (content!4882 lt!1081658) (content!4882 lt!1081637))))))

(assert (=> d!877406 (= lt!1081719 e!1998130)))

(declare-fun c!538182 () Bool)

(assert (=> d!877406 (= c!538182 ((_ is Nil!36119) lt!1081658))))

(assert (=> d!877406 (= (++!8660 lt!1081658 lt!1081637) lt!1081719)))

(declare-fun b!3204769 () Bool)

(assert (=> b!3204769 (= e!1998130 (Cons!36119 (h!41539 lt!1081658) (++!8660 (t!237944 lt!1081658) lt!1081637)))))

(assert (= (and d!877406 c!538182) b!3204768))

(assert (= (and d!877406 (not c!538182)) b!3204769))

(assert (= (and d!877406 res!1304242) b!3204770))

(assert (= (and b!3204770 res!1304241) b!3204771))

(declare-fun m!3469571 () Bool)

(assert (=> b!3204770 m!3469571))

(assert (=> b!3204770 m!3469249))

(declare-fun m!3469573 () Bool)

(assert (=> b!3204770 m!3469573))

(declare-fun m!3469575 () Bool)

(assert (=> d!877406 m!3469575))

(declare-fun m!3469577 () Bool)

(assert (=> d!877406 m!3469577))

(declare-fun m!3469579 () Bool)

(assert (=> d!877406 m!3469579))

(declare-fun m!3469581 () Bool)

(assert (=> b!3204769 m!3469581))

(assert (=> b!3204470 d!877406))

(declare-fun d!877408 () Bool)

(assert (=> d!877408 (= (++!8660 (++!8660 lt!1081658 lt!1081636) lt!1081640) (++!8660 lt!1081658 (++!8660 lt!1081636 lt!1081640)))))

(declare-fun lt!1081722 () Unit!50554)

(declare-fun choose!18702 (List!36243 List!36243 List!36243) Unit!50554)

(assert (=> d!877408 (= lt!1081722 (choose!18702 lt!1081658 lt!1081636 lt!1081640))))

(assert (=> d!877408 (= (lemmaConcatAssociativity!1730 lt!1081658 lt!1081636 lt!1081640) lt!1081722)))

(declare-fun bs!541202 () Bool)

(assert (= bs!541202 d!877408))

(declare-fun m!3469583 () Bool)

(assert (=> bs!541202 m!3469583))

(assert (=> bs!541202 m!3469161))

(assert (=> bs!541202 m!3469207))

(assert (=> bs!541202 m!3469161))

(declare-fun m!3469585 () Bool)

(assert (=> bs!541202 m!3469585))

(assert (=> bs!541202 m!3469207))

(assert (=> bs!541202 m!3469209))

(assert (=> b!3204470 d!877408))

(declare-fun d!877410 () Bool)

(assert (=> d!877410 (= (inv!48973 (tag!5734 (h!41540 rules!2135))) (= (mod (str.len (value!168944 (tag!5734 (h!41540 rules!2135)))) 2) 0))))

(assert (=> b!3204492 d!877410))

(declare-fun d!877412 () Bool)

(declare-fun res!1304245 () Bool)

(declare-fun e!1998133 () Bool)

(assert (=> d!877412 (=> (not res!1304245) (not e!1998133))))

(declare-fun semiInverseModEq!2152 (Int Int) Bool)

(assert (=> d!877412 (= res!1304245 (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (h!41540 rules!2135)))))))

(assert (=> d!877412 (= (inv!48977 (transformation!5210 (h!41540 rules!2135))) e!1998133)))

(declare-fun b!3204774 () Bool)

(declare-fun equivClasses!2051 (Int Int) Bool)

(assert (=> b!3204774 (= e!1998133 (equivClasses!2051 (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (h!41540 rules!2135)))))))

(assert (= (and d!877412 res!1304245) b!3204774))

(declare-fun m!3469587 () Bool)

(assert (=> d!877412 m!3469587))

(declare-fun m!3469589 () Bool)

(assert (=> b!3204774 m!3469589))

(assert (=> b!3204492 d!877412))

(declare-fun d!877414 () Bool)

(declare-fun lt!1081741 () BalanceConc!21204)

(declare-fun printListTailRec!558 (LexerInterface!4799 List!36245 List!36243) List!36243)

(declare-fun dropList!1075 (BalanceConc!21206 Int) List!36245)

(assert (=> d!877414 (= (list!12843 lt!1081741) (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081662 0) (list!12843 (BalanceConc!21205 Empty!10795))))))

(declare-fun e!1998139 () BalanceConc!21204)

(assert (=> d!877414 (= lt!1081741 e!1998139)))

(declare-fun c!538185 () Bool)

(assert (=> d!877414 (= c!538185 (>= 0 (size!27210 lt!1081662)))))

(declare-fun e!1998138 () Bool)

(assert (=> d!877414 e!1998138))

(declare-fun res!1304248 () Bool)

(assert (=> d!877414 (=> (not res!1304248) (not e!1998138))))

(assert (=> d!877414 (= res!1304248 (>= 0 0))))

(assert (=> d!877414 (= (printTailRec!1296 thiss!18206 lt!1081662 0 (BalanceConc!21205 Empty!10795)) lt!1081741)))

(declare-fun b!3204781 () Bool)

(assert (=> b!3204781 (= e!1998138 (<= 0 (size!27210 lt!1081662)))))

(declare-fun b!3204782 () Bool)

(assert (=> b!3204782 (= e!1998139 (BalanceConc!21205 Empty!10795))))

(declare-fun b!3204783 () Bool)

(declare-fun ++!8661 (BalanceConc!21204 BalanceConc!21204) BalanceConc!21204)

(assert (=> b!3204783 (= e!1998139 (printTailRec!1296 thiss!18206 lt!1081662 (+ 0 1) (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081662 0)))))))

(declare-fun lt!1081743 () List!36245)

(assert (=> b!3204783 (= lt!1081743 (list!12844 lt!1081662))))

(declare-fun lt!1081738 () Unit!50554)

(declare-fun lemmaDropApply!1034 (List!36245 Int) Unit!50554)

(assert (=> b!3204783 (= lt!1081738 (lemmaDropApply!1034 lt!1081743 0))))

(declare-fun head!7028 (List!36245) Token!9786)

(declare-fun drop!1858 (List!36245 Int) List!36245)

(assert (=> b!3204783 (= (head!7028 (drop!1858 lt!1081743 0)) (apply!8165 lt!1081743 0))))

(declare-fun lt!1081740 () Unit!50554)

(assert (=> b!3204783 (= lt!1081740 lt!1081738)))

(declare-fun lt!1081737 () List!36245)

(assert (=> b!3204783 (= lt!1081737 (list!12844 lt!1081662))))

(declare-fun lt!1081739 () Unit!50554)

(declare-fun lemmaDropTail!918 (List!36245 Int) Unit!50554)

(assert (=> b!3204783 (= lt!1081739 (lemmaDropTail!918 lt!1081737 0))))

(declare-fun tail!5207 (List!36245) List!36245)

(assert (=> b!3204783 (= (tail!5207 (drop!1858 lt!1081737 0)) (drop!1858 lt!1081737 (+ 0 1)))))

(declare-fun lt!1081742 () Unit!50554)

(assert (=> b!3204783 (= lt!1081742 lt!1081739)))

(assert (= (and d!877414 res!1304248) b!3204781))

(assert (= (and d!877414 c!538185) b!3204782))

(assert (= (and d!877414 (not c!538185)) b!3204783))

(declare-fun m!3469591 () Bool)

(assert (=> d!877414 m!3469591))

(declare-fun m!3469593 () Bool)

(assert (=> d!877414 m!3469593))

(declare-fun m!3469595 () Bool)

(assert (=> d!877414 m!3469595))

(declare-fun m!3469597 () Bool)

(assert (=> d!877414 m!3469597))

(assert (=> d!877414 m!3469591))

(assert (=> d!877414 m!3469595))

(declare-fun m!3469599 () Bool)

(assert (=> d!877414 m!3469599))

(assert (=> b!3204781 m!3469597))

(declare-fun m!3469601 () Bool)

(assert (=> b!3204783 m!3469601))

(declare-fun m!3469603 () Bool)

(assert (=> b!3204783 m!3469603))

(declare-fun m!3469605 () Bool)

(assert (=> b!3204783 m!3469605))

(declare-fun m!3469607 () Bool)

(assert (=> b!3204783 m!3469607))

(declare-fun m!3469609 () Bool)

(assert (=> b!3204783 m!3469609))

(declare-fun m!3469611 () Bool)

(assert (=> b!3204783 m!3469611))

(declare-fun m!3469613 () Bool)

(assert (=> b!3204783 m!3469613))

(declare-fun m!3469615 () Bool)

(assert (=> b!3204783 m!3469615))

(assert (=> b!3204783 m!3469611))

(assert (=> b!3204783 m!3469601))

(declare-fun m!3469617 () Bool)

(assert (=> b!3204783 m!3469617))

(declare-fun m!3469619 () Bool)

(assert (=> b!3204783 m!3469619))

(assert (=> b!3204783 m!3469613))

(declare-fun m!3469621 () Bool)

(assert (=> b!3204783 m!3469621))

(assert (=> b!3204783 m!3469609))

(assert (=> b!3204783 m!3469619))

(declare-fun m!3469623 () Bool)

(assert (=> b!3204783 m!3469623))

(declare-fun m!3469625 () Bool)

(assert (=> b!3204783 m!3469625))

(assert (=> b!3204490 d!877414))

(declare-fun d!877416 () Bool)

(declare-fun list!12847 (Conc!10795) List!36243)

(assert (=> d!877416 (= (list!12843 lt!1081642) (list!12847 (c!538127 lt!1081642)))))

(declare-fun bs!541203 () Bool)

(assert (= bs!541203 d!877416))

(declare-fun m!3469627 () Bool)

(assert (=> bs!541203 m!3469627))

(assert (=> b!3204490 d!877416))

(declare-fun d!877418 () Bool)

(declare-fun lt!1081749 () BalanceConc!21204)

(assert (=> d!877418 (= (list!12843 lt!1081749) (printList!1349 thiss!18206 (list!12844 lt!1081662)))))

(assert (=> d!877418 (= lt!1081749 (printTailRec!1296 thiss!18206 lt!1081662 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!877418 (= (print!1864 thiss!18206 lt!1081662) lt!1081749)))

(declare-fun bs!541206 () Bool)

(assert (= bs!541206 d!877418))

(declare-fun m!3469629 () Bool)

(assert (=> bs!541206 m!3469629))

(assert (=> bs!541206 m!3469617))

(assert (=> bs!541206 m!3469617))

(declare-fun m!3469631 () Bool)

(assert (=> bs!541206 m!3469631))

(assert (=> bs!541206 m!3469221))

(assert (=> b!3204490 d!877418))

(declare-fun d!877420 () Bool)

(declare-fun e!1998149 () Bool)

(assert (=> d!877420 e!1998149))

(declare-fun res!1304255 () Bool)

(assert (=> d!877420 (=> (not res!1304255) (not e!1998149))))

(declare-fun lt!1081752 () BalanceConc!21206)

(assert (=> d!877420 (= res!1304255 (= (list!12844 lt!1081752) (Cons!36121 (h!41541 tokens!494) Nil!36121)))))

(declare-fun singleton!991 (Token!9786) BalanceConc!21206)

(assert (=> d!877420 (= lt!1081752 (singleton!991 (h!41541 tokens!494)))))

(assert (=> d!877420 (= (singletonSeq!2306 (h!41541 tokens!494)) lt!1081752)))

(declare-fun b!3204793 () Bool)

(declare-fun isBalanced!3212 (Conc!10796) Bool)

(assert (=> b!3204793 (= e!1998149 (isBalanced!3212 (c!538128 lt!1081752)))))

(assert (= (and d!877420 res!1304255) b!3204793))

(declare-fun m!3469647 () Bool)

(assert (=> d!877420 m!3469647))

(declare-fun m!3469649 () Bool)

(assert (=> d!877420 m!3469649))

(declare-fun m!3469651 () Bool)

(assert (=> b!3204793 m!3469651))

(assert (=> b!3204490 d!877420))

(declare-fun d!877430 () Bool)

(declare-fun c!538188 () Bool)

(assert (=> d!877430 (= c!538188 ((_ is Cons!36121) (Cons!36121 (h!41541 tokens!494) Nil!36121)))))

(declare-fun e!1998152 () List!36243)

(assert (=> d!877430 (= (printList!1349 thiss!18206 (Cons!36121 (h!41541 tokens!494) Nil!36121)) e!1998152)))

(declare-fun b!3204798 () Bool)

(assert (=> b!3204798 (= e!1998152 (++!8660 (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))) (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))))

(declare-fun b!3204799 () Bool)

(assert (=> b!3204799 (= e!1998152 Nil!36119)))

(assert (= (and d!877430 c!538188) b!3204798))

(assert (= (and d!877430 (not c!538188)) b!3204799))

(declare-fun m!3469653 () Bool)

(assert (=> b!3204798 m!3469653))

(assert (=> b!3204798 m!3469653))

(declare-fun m!3469655 () Bool)

(assert (=> b!3204798 m!3469655))

(declare-fun m!3469657 () Bool)

(assert (=> b!3204798 m!3469657))

(assert (=> b!3204798 m!3469655))

(assert (=> b!3204798 m!3469657))

(declare-fun m!3469659 () Bool)

(assert (=> b!3204798 m!3469659))

(assert (=> b!3204490 d!877430))

(declare-fun bs!541210 () Bool)

(declare-fun d!877432 () Bool)

(assert (= bs!541210 (and d!877432 b!3204471)))

(declare-fun lambda!117301 () Int)

(assert (=> bs!541210 (not (= lambda!117301 lambda!117290))))

(declare-fun bs!541211 () Bool)

(assert (= bs!541211 (and d!877432 b!3204495)))

(assert (=> bs!541211 (= lambda!117301 lambda!117291)))

(declare-fun b!3204824 () Bool)

(declare-fun e!1998169 () Bool)

(assert (=> b!3204824 (= e!1998169 true)))

(declare-fun b!3204823 () Bool)

(declare-fun e!1998168 () Bool)

(assert (=> b!3204823 (= e!1998168 e!1998169)))

(declare-fun b!3204822 () Bool)

(declare-fun e!1998167 () Bool)

(assert (=> b!3204822 (= e!1998167 e!1998168)))

(assert (=> d!877432 e!1998167))

(assert (= b!3204823 b!3204824))

(assert (= b!3204822 b!3204823))

(assert (= (and d!877432 ((_ is Cons!36120) rules!2135)) b!3204822))

(assert (=> b!3204824 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14556 order!18383 lambda!117301))))

(assert (=> b!3204824 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14556 order!18383 lambda!117301))))

(assert (=> d!877432 true))

(declare-fun e!1998166 () Bool)

(assert (=> d!877432 e!1998166))

(declare-fun res!1304273 () Bool)

(assert (=> d!877432 (=> (not res!1304273) (not e!1998166))))

(declare-fun lt!1081766 () Bool)

(assert (=> d!877432 (= res!1304273 (= lt!1081766 (forall!7368 (list!12844 (seqFromList!3491 tokens!494)) lambda!117301)))))

(declare-fun forall!7369 (BalanceConc!21206 Int) Bool)

(assert (=> d!877432 (= lt!1081766 (forall!7369 (seqFromList!3491 tokens!494) lambda!117301))))

(assert (=> d!877432 (not (isEmpty!20204 rules!2135))))

(assert (=> d!877432 (= (rulesProduceEachTokenIndividually!1250 thiss!18206 rules!2135 (seqFromList!3491 tokens!494)) lt!1081766)))

(declare-fun b!3204821 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1722 (LexerInterface!4799 List!36244 List!36245) Bool)

(assert (=> b!3204821 (= e!1998166 (= lt!1081766 (rulesProduceEachTokenIndividuallyList!1722 thiss!18206 rules!2135 (list!12844 (seqFromList!3491 tokens!494)))))))

(assert (= (and d!877432 res!1304273) b!3204821))

(assert (=> d!877432 m!3469297))

(declare-fun m!3469693 () Bool)

(assert (=> d!877432 m!3469693))

(assert (=> d!877432 m!3469693))

(declare-fun m!3469695 () Bool)

(assert (=> d!877432 m!3469695))

(assert (=> d!877432 m!3469297))

(declare-fun m!3469697 () Bool)

(assert (=> d!877432 m!3469697))

(assert (=> d!877432 m!3469175))

(assert (=> b!3204821 m!3469297))

(assert (=> b!3204821 m!3469693))

(assert (=> b!3204821 m!3469693))

(declare-fun m!3469699 () Bool)

(assert (=> b!3204821 m!3469699))

(assert (=> b!3204469 d!877432))

(declare-fun d!877442 () Bool)

(declare-fun fromListB!1536 (List!36245) BalanceConc!21206)

(assert (=> d!877442 (= (seqFromList!3491 tokens!494) (fromListB!1536 tokens!494))))

(declare-fun bs!541212 () Bool)

(assert (= bs!541212 d!877442))

(declare-fun m!3469719 () Bool)

(assert (=> bs!541212 m!3469719))

(assert (=> b!3204469 d!877442))

(declare-fun b!3204832 () Bool)

(declare-fun res!1304277 () Bool)

(declare-fun e!1998173 () Bool)

(assert (=> b!3204832 (=> (not res!1304277) (not e!1998173))))

(declare-fun lt!1081768 () List!36243)

(assert (=> b!3204832 (= res!1304277 (= (size!27211 lt!1081768) (+ (size!27211 (++!8660 lt!1081658 lt!1081636)) (size!27211 lt!1081640))))))

(declare-fun b!3204830 () Bool)

(declare-fun e!1998174 () List!36243)

(assert (=> b!3204830 (= e!1998174 lt!1081640)))

(declare-fun b!3204833 () Bool)

(assert (=> b!3204833 (= e!1998173 (or (not (= lt!1081640 Nil!36119)) (= lt!1081768 (++!8660 lt!1081658 lt!1081636))))))

(declare-fun d!877446 () Bool)

(assert (=> d!877446 e!1998173))

(declare-fun res!1304278 () Bool)

(assert (=> d!877446 (=> (not res!1304278) (not e!1998173))))

(assert (=> d!877446 (= res!1304278 (= (content!4882 lt!1081768) ((_ map or) (content!4882 (++!8660 lt!1081658 lt!1081636)) (content!4882 lt!1081640))))))

(assert (=> d!877446 (= lt!1081768 e!1998174)))

(declare-fun c!538192 () Bool)

(assert (=> d!877446 (= c!538192 ((_ is Nil!36119) (++!8660 lt!1081658 lt!1081636)))))

(assert (=> d!877446 (= (++!8660 (++!8660 lt!1081658 lt!1081636) lt!1081640) lt!1081768)))

(declare-fun b!3204831 () Bool)

(assert (=> b!3204831 (= e!1998174 (Cons!36119 (h!41539 (++!8660 lt!1081658 lt!1081636)) (++!8660 (t!237944 (++!8660 lt!1081658 lt!1081636)) lt!1081640)))))

(assert (= (and d!877446 c!538192) b!3204830))

(assert (= (and d!877446 (not c!538192)) b!3204831))

(assert (= (and d!877446 res!1304278) b!3204832))

(assert (= (and b!3204832 res!1304277) b!3204833))

(declare-fun m!3469721 () Bool)

(assert (=> b!3204832 m!3469721))

(assert (=> b!3204832 m!3469207))

(declare-fun m!3469723 () Bool)

(assert (=> b!3204832 m!3469723))

(declare-fun m!3469725 () Bool)

(assert (=> b!3204832 m!3469725))

(declare-fun m!3469727 () Bool)

(assert (=> d!877446 m!3469727))

(assert (=> d!877446 m!3469207))

(declare-fun m!3469729 () Bool)

(assert (=> d!877446 m!3469729))

(declare-fun m!3469731 () Bool)

(assert (=> d!877446 m!3469731))

(declare-fun m!3469733 () Bool)

(assert (=> b!3204831 m!3469733))

(assert (=> b!3204467 d!877446))

(declare-fun b!3204836 () Bool)

(declare-fun res!1304279 () Bool)

(declare-fun e!1998175 () Bool)

(assert (=> b!3204836 (=> (not res!1304279) (not e!1998175))))

(declare-fun lt!1081769 () List!36243)

(assert (=> b!3204836 (= res!1304279 (= (size!27211 lt!1081769) (+ (size!27211 lt!1081658) (size!27211 lt!1081636))))))

(declare-fun b!3204834 () Bool)

(declare-fun e!1998176 () List!36243)

(assert (=> b!3204834 (= e!1998176 lt!1081636)))

(declare-fun b!3204837 () Bool)

(assert (=> b!3204837 (= e!1998175 (or (not (= lt!1081636 Nil!36119)) (= lt!1081769 lt!1081658)))))

(declare-fun d!877448 () Bool)

(assert (=> d!877448 e!1998175))

(declare-fun res!1304280 () Bool)

(assert (=> d!877448 (=> (not res!1304280) (not e!1998175))))

(assert (=> d!877448 (= res!1304280 (= (content!4882 lt!1081769) ((_ map or) (content!4882 lt!1081658) (content!4882 lt!1081636))))))

(assert (=> d!877448 (= lt!1081769 e!1998176)))

(declare-fun c!538193 () Bool)

(assert (=> d!877448 (= c!538193 ((_ is Nil!36119) lt!1081658))))

(assert (=> d!877448 (= (++!8660 lt!1081658 lt!1081636) lt!1081769)))

(declare-fun b!3204835 () Bool)

(assert (=> b!3204835 (= e!1998176 (Cons!36119 (h!41539 lt!1081658) (++!8660 (t!237944 lt!1081658) lt!1081636)))))

(assert (= (and d!877448 c!538193) b!3204834))

(assert (= (and d!877448 (not c!538193)) b!3204835))

(assert (= (and d!877448 res!1304280) b!3204836))

(assert (= (and b!3204836 res!1304279) b!3204837))

(declare-fun m!3469735 () Bool)

(assert (=> b!3204836 m!3469735))

(assert (=> b!3204836 m!3469249))

(declare-fun m!3469737 () Bool)

(assert (=> b!3204836 m!3469737))

(declare-fun m!3469739 () Bool)

(assert (=> d!877448 m!3469739))

(assert (=> d!877448 m!3469577))

(declare-fun m!3469741 () Bool)

(assert (=> d!877448 m!3469741))

(declare-fun m!3469743 () Bool)

(assert (=> b!3204835 m!3469743))

(assert (=> b!3204467 d!877448))

(declare-fun d!877450 () Bool)

(declare-fun lt!1081772 () Bool)

(assert (=> d!877450 (= lt!1081772 (isEmpty!20208 (list!12843 (_2!20887 lt!1081651))))))

(declare-fun isEmpty!20210 (Conc!10795) Bool)

(assert (=> d!877450 (= lt!1081772 (isEmpty!20210 (c!538127 (_2!20887 lt!1081651))))))

(assert (=> d!877450 (= (isEmpty!20203 (_2!20887 lt!1081651)) lt!1081772)))

(declare-fun bs!541213 () Bool)

(assert (= bs!541213 d!877450))

(declare-fun m!3469745 () Bool)

(assert (=> bs!541213 m!3469745))

(assert (=> bs!541213 m!3469745))

(declare-fun m!3469747 () Bool)

(assert (=> bs!541213 m!3469747))

(declare-fun m!3469749 () Bool)

(assert (=> bs!541213 m!3469749))

(assert (=> b!3204468 d!877450))

(declare-fun d!877452 () Bool)

(assert (=> d!877452 (dynLambda!14558 lambda!117290 (h!41541 (t!237946 tokens!494)))))

(declare-fun lt!1081775 () Unit!50554)

(declare-fun choose!18703 (List!36245 Int Token!9786) Unit!50554)

(assert (=> d!877452 (= lt!1081775 (choose!18703 tokens!494 lambda!117290 (h!41541 (t!237946 tokens!494))))))

(declare-fun e!1998179 () Bool)

(assert (=> d!877452 e!1998179))

(declare-fun res!1304283 () Bool)

(assert (=> d!877452 (=> (not res!1304283) (not e!1998179))))

(assert (=> d!877452 (= res!1304283 (forall!7368 tokens!494 lambda!117290))))

(assert (=> d!877452 (= (forallContained!1181 tokens!494 lambda!117290 (h!41541 (t!237946 tokens!494))) lt!1081775)))

(declare-fun b!3204840 () Bool)

(declare-fun contains!6434 (List!36245 Token!9786) Bool)

(assert (=> b!3204840 (= e!1998179 (contains!6434 tokens!494 (h!41541 (t!237946 tokens!494))))))

(assert (= (and d!877452 res!1304283) b!3204840))

(declare-fun b_lambda!87687 () Bool)

(assert (=> (not b_lambda!87687) (not d!877452)))

(declare-fun m!3469751 () Bool)

(assert (=> d!877452 m!3469751))

(declare-fun m!3469753 () Bool)

(assert (=> d!877452 m!3469753))

(assert (=> d!877452 m!3469143))

(declare-fun m!3469755 () Bool)

(assert (=> b!3204840 m!3469755))

(assert (=> b!3204477 d!877452))

(declare-fun d!877454 () Bool)

(assert (=> d!877454 (dynLambda!14558 lambda!117290 (h!41541 tokens!494))))

(declare-fun lt!1081776 () Unit!50554)

(assert (=> d!877454 (= lt!1081776 (choose!18703 tokens!494 lambda!117290 (h!41541 tokens!494)))))

(declare-fun e!1998180 () Bool)

(assert (=> d!877454 e!1998180))

(declare-fun res!1304284 () Bool)

(assert (=> d!877454 (=> (not res!1304284) (not e!1998180))))

(assert (=> d!877454 (= res!1304284 (forall!7368 tokens!494 lambda!117290))))

(assert (=> d!877454 (= (forallContained!1181 tokens!494 lambda!117290 (h!41541 tokens!494)) lt!1081776)))

(declare-fun b!3204841 () Bool)

(assert (=> b!3204841 (= e!1998180 (contains!6434 tokens!494 (h!41541 tokens!494)))))

(assert (= (and d!877454 res!1304284) b!3204841))

(declare-fun b_lambda!87689 () Bool)

(assert (=> (not b_lambda!87689) (not d!877454)))

(assert (=> d!877454 m!3469545))

(declare-fun m!3469757 () Bool)

(assert (=> d!877454 m!3469757))

(assert (=> d!877454 m!3469143))

(declare-fun m!3469759 () Bool)

(assert (=> b!3204841 m!3469759))

(assert (=> b!3204477 d!877454))

(declare-fun d!877456 () Bool)

(declare-fun lt!1081777 () Bool)

(assert (=> d!877456 (= lt!1081777 (isEmpty!20208 (list!12843 (_2!20887 lt!1081664))))))

(assert (=> d!877456 (= lt!1081777 (isEmpty!20210 (c!538127 (_2!20887 lt!1081664))))))

(assert (=> d!877456 (= (isEmpty!20203 (_2!20887 lt!1081664)) lt!1081777)))

(declare-fun bs!541214 () Bool)

(assert (= bs!541214 d!877456))

(declare-fun m!3469761 () Bool)

(assert (=> bs!541214 m!3469761))

(assert (=> bs!541214 m!3469761))

(declare-fun m!3469763 () Bool)

(assert (=> bs!541214 m!3469763))

(declare-fun m!3469765 () Bool)

(assert (=> bs!541214 m!3469765))

(assert (=> b!3204475 d!877456))

(declare-fun d!877458 () Bool)

(assert (=> d!877458 (= (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12847 (c!538127 (charsOf!3226 (h!41541 tokens!494)))))))

(declare-fun bs!541215 () Bool)

(assert (= bs!541215 d!877458))

(declare-fun m!3469767 () Bool)

(assert (=> bs!541215 m!3469767))

(assert (=> b!3204476 d!877458))

(declare-fun d!877460 () Bool)

(declare-fun lt!1081786 () BalanceConc!21204)

(assert (=> d!877460 (= (list!12843 lt!1081786) (originalCharacters!5924 (h!41541 tokens!494)))))

(declare-fun dynLambda!14560 (Int TokenValue!5440) BalanceConc!21204)

(assert (=> d!877460 (= lt!1081786 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))))

(assert (=> d!877460 (= (charsOf!3226 (h!41541 tokens!494)) lt!1081786)))

(declare-fun b_lambda!87691 () Bool)

(assert (=> (not b_lambda!87691) (not d!877460)))

(declare-fun t!237977 () Bool)

(declare-fun tb!157197 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!237977) tb!157197))

(declare-fun b!3204858 () Bool)

(declare-fun e!1998191 () Bool)

(declare-fun tp!1012354 () Bool)

(declare-fun inv!48980 (Conc!10795) Bool)

(assert (=> b!3204858 (= e!1998191 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))) tp!1012354))))

(declare-fun result!199512 () Bool)

(declare-fun inv!48981 (BalanceConc!21204) Bool)

(assert (=> tb!157197 (= result!199512 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))) e!1998191))))

(assert (= tb!157197 b!3204858))

(declare-fun m!3469769 () Bool)

(assert (=> b!3204858 m!3469769))

(declare-fun m!3469771 () Bool)

(assert (=> tb!157197 m!3469771))

(assert (=> d!877460 t!237977))

(declare-fun b_and!213241 () Bool)

(assert (= b_and!213201 (and (=> t!237977 result!199512) b_and!213241)))

(declare-fun tb!157199 () Bool)

(declare-fun t!237979 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!237979) tb!157199))

(declare-fun result!199516 () Bool)

(assert (= result!199516 result!199512))

(assert (=> d!877460 t!237979))

(declare-fun b_and!213243 () Bool)

(assert (= b_and!213205 (and (=> t!237979 result!199516) b_and!213243)))

(declare-fun tb!157201 () Bool)

(declare-fun t!237981 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!237981) tb!157201))

(declare-fun result!199518 () Bool)

(assert (= result!199518 result!199512))

(assert (=> d!877460 t!237981))

(declare-fun b_and!213245 () Bool)

(assert (= b_and!213209 (and (=> t!237981 result!199518) b_and!213245)))

(declare-fun m!3469773 () Bool)

(assert (=> d!877460 m!3469773))

(declare-fun m!3469775 () Bool)

(assert (=> d!877460 m!3469775))

(assert (=> b!3204476 d!877460))

(declare-fun d!877462 () Bool)

(declare-fun c!538202 () Bool)

(assert (=> d!877462 (= c!538202 ((_ is Cons!36121) tokens!494))))

(declare-fun e!1998198 () List!36243)

(assert (=> d!877462 (= (printWithSeparatorTokenList!144 thiss!18206 tokens!494 separatorToken!241) e!1998198)))

(declare-fun b!3204869 () Bool)

(assert (=> b!3204869 (= e!1998198 (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241)))))

(declare-fun b!3204870 () Bool)

(assert (=> b!3204870 (= e!1998198 Nil!36119)))

(assert (= (and d!877462 c!538202) b!3204869))

(assert (= (and d!877462 (not c!538202)) b!3204870))

(declare-fun m!3469789 () Bool)

(assert (=> b!3204869 m!3469789))

(assert (=> b!3204869 m!3469151))

(declare-fun m!3469791 () Bool)

(assert (=> b!3204869 m!3469791))

(assert (=> b!3204869 m!3469147))

(assert (=> b!3204869 m!3469163))

(assert (=> b!3204869 m!3469205))

(assert (=> b!3204869 m!3469163))

(assert (=> b!3204869 m!3469789))

(assert (=> b!3204869 m!3469147))

(assert (=> b!3204869 m!3469203))

(assert (=> b!3204869 m!3469205))

(assert (=> b!3204869 m!3469203))

(assert (=> b!3204869 m!3469151))

(assert (=> b!3204497 d!877462))

(declare-fun b!3204873 () Bool)

(declare-fun res!1304291 () Bool)

(declare-fun e!1998199 () Bool)

(assert (=> b!3204873 (=> (not res!1304291) (not e!1998199))))

(declare-fun lt!1081792 () List!36243)

(assert (=> b!3204873 (= res!1304291 (= (size!27211 lt!1081792) (+ (size!27211 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) (size!27211 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(declare-fun e!1998200 () List!36243)

(declare-fun b!3204871 () Bool)

(assert (=> b!3204871 (= e!1998200 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241))))

(declare-fun b!3204874 () Bool)

(assert (=> b!3204874 (= e!1998199 (or (not (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241) Nil!36119)) (= lt!1081792 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636))))))

(declare-fun d!877466 () Bool)

(assert (=> d!877466 e!1998199))

(declare-fun res!1304292 () Bool)

(assert (=> d!877466 (=> (not res!1304292) (not e!1998199))))

(assert (=> d!877466 (= res!1304292 (= (content!4882 lt!1081792) ((_ map or) (content!4882 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) (content!4882 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(assert (=> d!877466 (= lt!1081792 e!1998200)))

(declare-fun c!538203 () Bool)

(assert (=> d!877466 (= c!538203 ((_ is Nil!36119) (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)))))

(assert (=> d!877466 (= (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)) lt!1081792)))

(declare-fun b!3204872 () Bool)

(assert (=> b!3204872 (= e!1998200 (Cons!36119 (h!41539 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) (++!8660 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241))))))

(assert (= (and d!877466 c!538203) b!3204871))

(assert (= (and d!877466 (not c!538203)) b!3204872))

(assert (= (and d!877466 res!1304292) b!3204873))

(assert (= (and b!3204873 res!1304291) b!3204874))

(declare-fun m!3469793 () Bool)

(assert (=> b!3204873 m!3469793))

(assert (=> b!3204873 m!3469153))

(declare-fun m!3469795 () Bool)

(assert (=> b!3204873 m!3469795))

(assert (=> b!3204873 m!3469155))

(declare-fun m!3469797 () Bool)

(assert (=> b!3204873 m!3469797))

(declare-fun m!3469799 () Bool)

(assert (=> d!877466 m!3469799))

(assert (=> d!877466 m!3469153))

(declare-fun m!3469801 () Bool)

(assert (=> d!877466 m!3469801))

(assert (=> d!877466 m!3469155))

(declare-fun m!3469803 () Bool)

(assert (=> d!877466 m!3469803))

(assert (=> b!3204872 m!3469155))

(declare-fun m!3469805 () Bool)

(assert (=> b!3204872 m!3469805))

(assert (=> b!3204497 d!877466))

(declare-fun b!3204879 () Bool)

(declare-fun res!1304295 () Bool)

(declare-fun e!1998203 () Bool)

(assert (=> b!3204879 (=> (not res!1304295) (not e!1998203))))

(declare-fun lt!1081793 () List!36243)

(assert (=> b!3204879 (= res!1304295 (= (size!27211 lt!1081793) (+ (size!27211 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) (size!27211 lt!1081636))))))

(declare-fun b!3204877 () Bool)

(declare-fun e!1998204 () List!36243)

(assert (=> b!3204877 (= e!1998204 lt!1081636)))

(declare-fun b!3204880 () Bool)

(assert (=> b!3204880 (= e!1998203 (or (not (= lt!1081636 Nil!36119)) (= lt!1081793 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))))))

(declare-fun d!877468 () Bool)

(assert (=> d!877468 e!1998203))

(declare-fun res!1304296 () Bool)

(assert (=> d!877468 (=> (not res!1304296) (not e!1998203))))

(assert (=> d!877468 (= res!1304296 (= (content!4882 lt!1081793) ((_ map or) (content!4882 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) (content!4882 lt!1081636))))))

(assert (=> d!877468 (= lt!1081793 e!1998204)))

(declare-fun c!538204 () Bool)

(assert (=> d!877468 (= c!538204 ((_ is Nil!36119) (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!877468 (= (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636) lt!1081793)))

(declare-fun b!3204878 () Bool)

(assert (=> b!3204878 (= e!1998204 (Cons!36119 (h!41539 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) (++!8660 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) lt!1081636)))))

(assert (= (and d!877468 c!538204) b!3204877))

(assert (= (and d!877468 (not c!538204)) b!3204878))

(assert (= (and d!877468 res!1304296) b!3204879))

(assert (= (and b!3204879 res!1304295) b!3204880))

(declare-fun m!3469807 () Bool)

(assert (=> b!3204879 m!3469807))

(assert (=> b!3204879 m!3469159))

(declare-fun m!3469809 () Bool)

(assert (=> b!3204879 m!3469809))

(assert (=> b!3204879 m!3469737))

(declare-fun m!3469811 () Bool)

(assert (=> d!877468 m!3469811))

(assert (=> d!877468 m!3469159))

(declare-fun m!3469813 () Bool)

(assert (=> d!877468 m!3469813))

(assert (=> d!877468 m!3469741))

(declare-fun m!3469815 () Bool)

(assert (=> b!3204878 m!3469815))

(assert (=> b!3204497 d!877468))

(declare-fun d!877470 () Bool)

(declare-fun lt!1081795 () BalanceConc!21204)

(assert (=> d!877470 (= (list!12843 lt!1081795) (originalCharacters!5924 separatorToken!241))))

(assert (=> d!877470 (= lt!1081795 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))))

(assert (=> d!877470 (= (charsOf!3226 separatorToken!241) lt!1081795)))

(declare-fun b_lambda!87693 () Bool)

(assert (=> (not b_lambda!87693) (not d!877470)))

(declare-fun tb!157203 () Bool)

(declare-fun t!237984 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) t!237984) tb!157203))

(declare-fun b!3204885 () Bool)

(declare-fun e!1998209 () Bool)

(declare-fun tp!1012355 () Bool)

(assert (=> b!3204885 (= e!1998209 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))) tp!1012355))))

(declare-fun result!199520 () Bool)

(assert (=> tb!157203 (= result!199520 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))) e!1998209))))

(assert (= tb!157203 b!3204885))

(declare-fun m!3469823 () Bool)

(assert (=> b!3204885 m!3469823))

(declare-fun m!3469825 () Bool)

(assert (=> tb!157203 m!3469825))

(assert (=> d!877470 t!237984))

(declare-fun b_and!213247 () Bool)

(assert (= b_and!213241 (and (=> t!237984 result!199520) b_and!213247)))

(declare-fun t!237986 () Bool)

(declare-fun tb!157205 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) t!237986) tb!157205))

(declare-fun result!199522 () Bool)

(assert (= result!199522 result!199520))

(assert (=> d!877470 t!237986))

(declare-fun b_and!213249 () Bool)

(assert (= b_and!213243 (and (=> t!237986 result!199522) b_and!213249)))

(declare-fun t!237988 () Bool)

(declare-fun tb!157207 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) t!237988) tb!157207))

(declare-fun result!199524 () Bool)

(assert (= result!199524 result!199520))

(assert (=> d!877470 t!237988))

(declare-fun b_and!213251 () Bool)

(assert (= b_and!213245 (and (=> t!237988 result!199524) b_and!213251)))

(declare-fun m!3469827 () Bool)

(assert (=> d!877470 m!3469827))

(declare-fun m!3469829 () Bool)

(assert (=> d!877470 m!3469829))

(assert (=> b!3204497 d!877470))

(declare-fun d!877474 () Bool)

(assert (=> d!877474 (= (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12847 (c!538127 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))

(declare-fun bs!541216 () Bool)

(assert (= bs!541216 d!877474))

(declare-fun m!3469831 () Bool)

(assert (=> bs!541216 m!3469831))

(assert (=> b!3204497 d!877474))

(declare-fun b!3204890 () Bool)

(declare-fun res!1304301 () Bool)

(declare-fun e!1998210 () Bool)

(assert (=> b!3204890 (=> (not res!1304301) (not e!1998210))))

(declare-fun lt!1081797 () List!36243)

(assert (=> b!3204890 (= res!1304301 (= (size!27211 lt!1081797) (+ (size!27211 lt!1081636) (size!27211 lt!1081640))))))

(declare-fun b!3204888 () Bool)

(declare-fun e!1998211 () List!36243)

(assert (=> b!3204888 (= e!1998211 lt!1081640)))

(declare-fun b!3204891 () Bool)

(assert (=> b!3204891 (= e!1998210 (or (not (= lt!1081640 Nil!36119)) (= lt!1081797 lt!1081636)))))

(declare-fun d!877476 () Bool)

(assert (=> d!877476 e!1998210))

(declare-fun res!1304302 () Bool)

(assert (=> d!877476 (=> (not res!1304302) (not e!1998210))))

(assert (=> d!877476 (= res!1304302 (= (content!4882 lt!1081797) ((_ map or) (content!4882 lt!1081636) (content!4882 lt!1081640))))))

(assert (=> d!877476 (= lt!1081797 e!1998211)))

(declare-fun c!538206 () Bool)

(assert (=> d!877476 (= c!538206 ((_ is Nil!36119) lt!1081636))))

(assert (=> d!877476 (= (++!8660 lt!1081636 lt!1081640) lt!1081797)))

(declare-fun b!3204889 () Bool)

(assert (=> b!3204889 (= e!1998211 (Cons!36119 (h!41539 lt!1081636) (++!8660 (t!237944 lt!1081636) lt!1081640)))))

(assert (= (and d!877476 c!538206) b!3204888))

(assert (= (and d!877476 (not c!538206)) b!3204889))

(assert (= (and d!877476 res!1304302) b!3204890))

(assert (= (and b!3204890 res!1304301) b!3204891))

(declare-fun m!3469851 () Bool)

(assert (=> b!3204890 m!3469851))

(assert (=> b!3204890 m!3469737))

(assert (=> b!3204890 m!3469725))

(declare-fun m!3469853 () Bool)

(assert (=> d!877476 m!3469853))

(assert (=> d!877476 m!3469741))

(assert (=> d!877476 m!3469731))

(declare-fun m!3469855 () Bool)

(assert (=> b!3204889 m!3469855))

(assert (=> b!3204497 d!877476))

(declare-fun d!877480 () Bool)

(declare-fun c!538207 () Bool)

(assert (=> d!877480 (= c!538207 ((_ is Cons!36121) (t!237946 (t!237946 tokens!494))))))

(declare-fun e!1998212 () List!36243)

(assert (=> d!877480 (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241) e!1998212)))

(declare-fun b!3204892 () Bool)

(assert (=> b!3204892 (= e!1998212 (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241)))))

(declare-fun b!3204893 () Bool)

(assert (=> b!3204893 (= e!1998212 Nil!36119)))

(assert (= (and d!877480 c!538207) b!3204892))

(assert (= (and d!877480 (not c!538207)) b!3204893))

(declare-fun m!3469857 () Bool)

(assert (=> b!3204892 m!3469857))

(declare-fun m!3469859 () Bool)

(assert (=> b!3204892 m!3469859))

(declare-fun m!3469861 () Bool)

(assert (=> b!3204892 m!3469861))

(assert (=> b!3204892 m!3469147))

(assert (=> b!3204892 m!3469163))

(declare-fun m!3469863 () Bool)

(assert (=> b!3204892 m!3469863))

(assert (=> b!3204892 m!3469163))

(assert (=> b!3204892 m!3469857))

(assert (=> b!3204892 m!3469147))

(declare-fun m!3469865 () Bool)

(assert (=> b!3204892 m!3469865))

(assert (=> b!3204892 m!3469863))

(assert (=> b!3204892 m!3469865))

(assert (=> b!3204892 m!3469859))

(assert (=> b!3204497 d!877480))

(declare-fun d!877482 () Bool)

(declare-fun c!538208 () Bool)

(assert (=> d!877482 (= c!538208 ((_ is Cons!36121) (t!237946 tokens!494)))))

(declare-fun e!1998213 () List!36243)

(assert (=> d!877482 (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241) e!1998213)))

(declare-fun b!3204894 () Bool)

(assert (=> b!3204894 (= e!1998213 (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))

(declare-fun b!3204895 () Bool)

(assert (=> b!3204895 (= e!1998213 Nil!36119)))

(assert (= (and d!877482 c!538208) b!3204894))

(assert (= (and d!877482 (not c!538208)) b!3204895))

(declare-fun m!3469867 () Bool)

(assert (=> b!3204894 m!3469867))

(assert (=> b!3204894 m!3469155))

(declare-fun m!3469869 () Bool)

(assert (=> b!3204894 m!3469869))

(assert (=> b!3204894 m!3469147))

(assert (=> b!3204894 m!3469163))

(assert (=> b!3204894 m!3469159))

(assert (=> b!3204894 m!3469163))

(assert (=> b!3204894 m!3469867))

(assert (=> b!3204894 m!3469147))

(assert (=> b!3204894 m!3469145))

(assert (=> b!3204894 m!3469159))

(assert (=> b!3204894 m!3469145))

(assert (=> b!3204894 m!3469155))

(assert (=> b!3204497 d!877482))

(declare-fun d!877484 () Bool)

(assert (=> d!877484 (= (list!12843 (charsOf!3226 separatorToken!241)) (list!12847 (c!538127 (charsOf!3226 separatorToken!241))))))

(declare-fun bs!541217 () Bool)

(assert (= bs!541217 d!877484))

(declare-fun m!3469871 () Bool)

(assert (=> bs!541217 m!3469871))

(assert (=> b!3204497 d!877484))

(declare-fun d!877486 () Bool)

(declare-fun lt!1081798 () BalanceConc!21204)

(assert (=> d!877486 (= (list!12843 lt!1081798) (originalCharacters!5924 (h!41541 (t!237946 tokens!494))))))

(assert (=> d!877486 (= lt!1081798 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))))

(assert (=> d!877486 (= (charsOf!3226 (h!41541 (t!237946 tokens!494))) lt!1081798)))

(declare-fun b_lambda!87695 () Bool)

(assert (=> (not b_lambda!87695) (not d!877486)))

(declare-fun t!237990 () Bool)

(declare-fun tb!157209 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) t!237990) tb!157209))

(declare-fun b!3204896 () Bool)

(declare-fun e!1998214 () Bool)

(declare-fun tp!1012356 () Bool)

(assert (=> b!3204896 (= e!1998214 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))) tp!1012356))))

(declare-fun result!199526 () Bool)

(assert (=> tb!157209 (= result!199526 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))) e!1998214))))

(assert (= tb!157209 b!3204896))

(declare-fun m!3469873 () Bool)

(assert (=> b!3204896 m!3469873))

(declare-fun m!3469875 () Bool)

(assert (=> tb!157209 m!3469875))

(assert (=> d!877486 t!237990))

(declare-fun b_and!213253 () Bool)

(assert (= b_and!213247 (and (=> t!237990 result!199526) b_and!213253)))

(declare-fun tb!157211 () Bool)

(declare-fun t!237992 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) t!237992) tb!157211))

(declare-fun result!199528 () Bool)

(assert (= result!199528 result!199526))

(assert (=> d!877486 t!237992))

(declare-fun b_and!213255 () Bool)

(assert (= b_and!213249 (and (=> t!237992 result!199528) b_and!213255)))

(declare-fun tb!157213 () Bool)

(declare-fun t!237994 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) t!237994) tb!157213))

(declare-fun result!199530 () Bool)

(assert (= result!199530 result!199526))

(assert (=> d!877486 t!237994))

(declare-fun b_and!213257 () Bool)

(assert (= b_and!213251 (and (=> t!237994 result!199530) b_and!213257)))

(declare-fun m!3469877 () Bool)

(assert (=> d!877486 m!3469877))

(declare-fun m!3469879 () Bool)

(assert (=> d!877486 m!3469879))

(assert (=> b!3204497 d!877486))

(declare-fun b!3204897 () Bool)

(declare-fun e!1998215 () Bool)

(declare-fun e!1998218 () Bool)

(assert (=> b!3204897 (= e!1998215 e!1998218)))

(declare-fun c!538210 () Bool)

(assert (=> b!3204897 (= c!538210 ((_ is EmptyLang!9969) (regex!5210 lt!1081633)))))

(declare-fun b!3204898 () Bool)

(declare-fun e!1998216 () Bool)

(declare-fun e!1998220 () Bool)

(assert (=> b!3204898 (= e!1998216 e!1998220)))

(declare-fun res!1304306 () Bool)

(assert (=> b!3204898 (=> (not res!1304306) (not e!1998220))))

(declare-fun lt!1081799 () Bool)

(assert (=> b!3204898 (= res!1304306 (not lt!1081799))))

(declare-fun b!3204899 () Bool)

(declare-fun call!231973 () Bool)

(assert (=> b!3204899 (= e!1998215 (= lt!1081799 call!231973))))

(declare-fun b!3204900 () Bool)

(declare-fun e!1998217 () Bool)

(assert (=> b!3204900 (= e!1998217 (= (head!7027 lt!1081658) (c!538126 (regex!5210 lt!1081633))))))

(declare-fun b!3204901 () Bool)

(declare-fun e!1998221 () Bool)

(assert (=> b!3204901 (= e!1998221 (nullable!3395 (regex!5210 lt!1081633)))))

(declare-fun b!3204902 () Bool)

(declare-fun res!1304307 () Bool)

(assert (=> b!3204902 (=> (not res!1304307) (not e!1998217))))

(assert (=> b!3204902 (= res!1304307 (isEmpty!20208 (tail!5206 lt!1081658)))))

(declare-fun b!3204903 () Bool)

(declare-fun e!1998219 () Bool)

(assert (=> b!3204903 (= e!1998220 e!1998219)))

(declare-fun res!1304309 () Bool)

(assert (=> b!3204903 (=> res!1304309 e!1998219)))

(assert (=> b!3204903 (= res!1304309 call!231973)))

(declare-fun b!3204904 () Bool)

(assert (=> b!3204904 (= e!1998219 (not (= (head!7027 lt!1081658) (c!538126 (regex!5210 lt!1081633)))))))

(declare-fun b!3204905 () Bool)

(declare-fun res!1304310 () Bool)

(assert (=> b!3204905 (=> res!1304310 e!1998216)))

(assert (=> b!3204905 (= res!1304310 e!1998217)))

(declare-fun res!1304303 () Bool)

(assert (=> b!3204905 (=> (not res!1304303) (not e!1998217))))

(assert (=> b!3204905 (= res!1304303 lt!1081799)))

(declare-fun b!3204906 () Bool)

(declare-fun res!1304304 () Bool)

(assert (=> b!3204906 (=> res!1304304 e!1998219)))

(assert (=> b!3204906 (= res!1304304 (not (isEmpty!20208 (tail!5206 lt!1081658))))))

(declare-fun d!877488 () Bool)

(assert (=> d!877488 e!1998215))

(declare-fun c!538209 () Bool)

(assert (=> d!877488 (= c!538209 ((_ is EmptyExpr!9969) (regex!5210 lt!1081633)))))

(assert (=> d!877488 (= lt!1081799 e!1998221)))

(declare-fun c!538211 () Bool)

(assert (=> d!877488 (= c!538211 (isEmpty!20208 lt!1081658))))

(assert (=> d!877488 (validRegex!4549 (regex!5210 lt!1081633))))

(assert (=> d!877488 (= (matchR!4603 (regex!5210 lt!1081633) lt!1081658) lt!1081799)))

(declare-fun bm!231968 () Bool)

(assert (=> bm!231968 (= call!231973 (isEmpty!20208 lt!1081658))))

(declare-fun b!3204907 () Bool)

(declare-fun res!1304308 () Bool)

(assert (=> b!3204907 (=> (not res!1304308) (not e!1998217))))

(assert (=> b!3204907 (= res!1304308 (not call!231973))))

(declare-fun b!3204908 () Bool)

(declare-fun res!1304305 () Bool)

(assert (=> b!3204908 (=> res!1304305 e!1998216)))

(assert (=> b!3204908 (= res!1304305 (not ((_ is ElementMatch!9969) (regex!5210 lt!1081633))))))

(assert (=> b!3204908 (= e!1998218 e!1998216)))

(declare-fun b!3204909 () Bool)

(assert (=> b!3204909 (= e!1998221 (matchR!4603 (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658)) (tail!5206 lt!1081658)))))

(declare-fun b!3204910 () Bool)

(assert (=> b!3204910 (= e!1998218 (not lt!1081799))))

(assert (= (and d!877488 c!538211) b!3204901))

(assert (= (and d!877488 (not c!538211)) b!3204909))

(assert (= (and d!877488 c!538209) b!3204899))

(assert (= (and d!877488 (not c!538209)) b!3204897))

(assert (= (and b!3204897 c!538210) b!3204910))

(assert (= (and b!3204897 (not c!538210)) b!3204908))

(assert (= (and b!3204908 (not res!1304305)) b!3204905))

(assert (= (and b!3204905 res!1304303) b!3204907))

(assert (= (and b!3204907 res!1304308) b!3204902))

(assert (= (and b!3204902 res!1304307) b!3204900))

(assert (= (and b!3204905 (not res!1304310)) b!3204898))

(assert (= (and b!3204898 res!1304306) b!3204903))

(assert (= (and b!3204903 (not res!1304309)) b!3204906))

(assert (= (and b!3204906 (not res!1304304)) b!3204904))

(assert (= (or b!3204899 b!3204903 b!3204907) bm!231968))

(declare-fun m!3469881 () Bool)

(assert (=> b!3204902 m!3469881))

(assert (=> b!3204902 m!3469881))

(declare-fun m!3469883 () Bool)

(assert (=> b!3204902 m!3469883))

(declare-fun m!3469885 () Bool)

(assert (=> d!877488 m!3469885))

(declare-fun m!3469887 () Bool)

(assert (=> d!877488 m!3469887))

(declare-fun m!3469889 () Bool)

(assert (=> b!3204901 m!3469889))

(declare-fun m!3469891 () Bool)

(assert (=> b!3204904 m!3469891))

(assert (=> b!3204900 m!3469891))

(assert (=> bm!231968 m!3469885))

(assert (=> b!3204906 m!3469881))

(assert (=> b!3204906 m!3469881))

(assert (=> b!3204906 m!3469883))

(assert (=> b!3204909 m!3469891))

(assert (=> b!3204909 m!3469891))

(declare-fun m!3469893 () Bool)

(assert (=> b!3204909 m!3469893))

(assert (=> b!3204909 m!3469881))

(assert (=> b!3204909 m!3469893))

(assert (=> b!3204909 m!3469881))

(declare-fun m!3469895 () Bool)

(assert (=> b!3204909 m!3469895))

(assert (=> b!3204474 d!877488))

(declare-fun d!877490 () Bool)

(assert (=> d!877490 (= (get!11494 lt!1081653) (v!35656 lt!1081653))))

(assert (=> b!3204474 d!877490))

(declare-fun d!877492 () Bool)

(assert (=> d!877492 (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 tokens!494))))

(declare-fun lt!1081810 () Unit!50554)

(declare-fun choose!18706 (LexerInterface!4799 List!36244 List!36245 Token!9786) Unit!50554)

(assert (=> d!877492 (= lt!1081810 (choose!18706 thiss!18206 rules!2135 tokens!494 (h!41541 tokens!494)))))

(assert (=> d!877492 (not (isEmpty!20204 rules!2135))))

(assert (=> d!877492 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!838 thiss!18206 rules!2135 tokens!494 (h!41541 tokens!494)) lt!1081810)))

(declare-fun bs!541221 () Bool)

(assert (= bs!541221 d!877492))

(assert (=> bs!541221 m!3469167))

(declare-fun m!3469937 () Bool)

(assert (=> bs!541221 m!3469937))

(assert (=> bs!541221 m!3469175))

(assert (=> b!3204495 d!877492))

(declare-fun d!877510 () Bool)

(assert (=> d!877510 (= (maxPrefixOneRule!1578 thiss!18206 (rule!7648 (h!41541 tokens!494)) lt!1081658) (Some!7117 (tuple2!35509 (Token!9787 (apply!8164 (transformation!5210 (rule!7648 (h!41541 tokens!494))) (seqFromList!3492 lt!1081658)) (rule!7648 (h!41541 tokens!494)) (size!27211 lt!1081658) lt!1081658) Nil!36119)))))

(declare-fun lt!1081813 () Unit!50554)

(declare-fun choose!18707 (LexerInterface!4799 List!36244 List!36243 List!36243 List!36243 Rule!10220) Unit!50554)

(assert (=> d!877510 (= lt!1081813 (choose!18707 thiss!18206 rules!2135 lt!1081658 lt!1081658 Nil!36119 (rule!7648 (h!41541 tokens!494))))))

(assert (=> d!877510 (not (isEmpty!20204 rules!2135))))

(assert (=> d!877510 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!691 thiss!18206 rules!2135 lt!1081658 lt!1081658 Nil!36119 (rule!7648 (h!41541 tokens!494))) lt!1081813)))

(declare-fun bs!541222 () Bool)

(assert (= bs!541222 d!877510))

(assert (=> bs!541222 m!3469231))

(assert (=> bs!541222 m!3469267))

(assert (=> bs!541222 m!3469231))

(declare-fun m!3469939 () Bool)

(assert (=> bs!541222 m!3469939))

(declare-fun m!3469941 () Bool)

(assert (=> bs!541222 m!3469941))

(assert (=> bs!541222 m!3469249))

(assert (=> bs!541222 m!3469175))

(assert (=> b!3204495 d!877510))

(declare-fun d!877512 () Bool)

(declare-fun lt!1081815 () Bool)

(declare-fun e!1998242 () Bool)

(assert (=> d!877512 (= lt!1081815 e!1998242)))

(declare-fun res!1304318 () Bool)

(assert (=> d!877512 (=> (not res!1304318) (not e!1998242))))

(assert (=> d!877512 (= res!1304318 (= (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))) (list!12844 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))))

(declare-fun e!1998241 () Bool)

(assert (=> d!877512 (= lt!1081815 e!1998241)))

(declare-fun res!1304316 () Bool)

(assert (=> d!877512 (=> (not res!1304316) (not e!1998241))))

(declare-fun lt!1081814 () tuple2!35506)

(assert (=> d!877512 (= res!1304316 (= (size!27210 (_1!20887 lt!1081814)) 1))))

(assert (=> d!877512 (= lt!1081814 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!877512 (not (isEmpty!20204 rules!2135))))

(assert (=> d!877512 (= (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 (t!237946 tokens!494))) lt!1081815)))

(declare-fun b!3204942 () Bool)

(declare-fun res!1304317 () Bool)

(assert (=> b!3204942 (=> (not res!1304317) (not e!1998241))))

(assert (=> b!3204942 (= res!1304317 (= (apply!8163 (_1!20887 lt!1081814) 0) (h!41541 (t!237946 tokens!494))))))

(declare-fun b!3204943 () Bool)

(assert (=> b!3204943 (= e!1998241 (isEmpty!20203 (_2!20887 lt!1081814)))))

(declare-fun b!3204944 () Bool)

(assert (=> b!3204944 (= e!1998242 (isEmpty!20203 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))))))

(assert (= (and d!877512 res!1304316) b!3204942))

(assert (= (and b!3204942 res!1304317) b!3204943))

(assert (= (and d!877512 res!1304318) b!3204944))

(assert (=> d!877512 m!3469273))

(assert (=> d!877512 m!3469273))

(declare-fun m!3469943 () Bool)

(assert (=> d!877512 m!3469943))

(assert (=> d!877512 m!3469943))

(declare-fun m!3469945 () Bool)

(assert (=> d!877512 m!3469945))

(assert (=> d!877512 m!3469175))

(assert (=> d!877512 m!3469273))

(declare-fun m!3469947 () Bool)

(assert (=> d!877512 m!3469947))

(declare-fun m!3469949 () Bool)

(assert (=> d!877512 m!3469949))

(declare-fun m!3469951 () Bool)

(assert (=> d!877512 m!3469951))

(declare-fun m!3469953 () Bool)

(assert (=> b!3204942 m!3469953))

(declare-fun m!3469955 () Bool)

(assert (=> b!3204943 m!3469955))

(assert (=> b!3204944 m!3469273))

(assert (=> b!3204944 m!3469273))

(assert (=> b!3204944 m!3469943))

(assert (=> b!3204944 m!3469943))

(assert (=> b!3204944 m!3469945))

(declare-fun m!3469957 () Bool)

(assert (=> b!3204944 m!3469957))

(assert (=> b!3204495 d!877512))

(declare-fun b!3204957 () Bool)

(declare-fun e!1998252 () Bool)

(declare-fun lt!1081825 () Option!7117)

(assert (=> b!3204957 (= e!1998252 (= (tag!5734 (get!11494 lt!1081825)) (tag!5734 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3204958 () Bool)

(declare-fun lt!1081827 () Unit!50554)

(declare-fun lt!1081826 () Unit!50554)

(assert (=> b!3204958 (= lt!1081827 lt!1081826)))

(assert (=> b!3204958 (rulesInvariant!4196 thiss!18206 (t!237945 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!347 (LexerInterface!4799 Rule!10220 List!36244) Unit!50554)

(assert (=> b!3204958 (= lt!1081826 (lemmaInvariantOnRulesThenOnTail!347 thiss!18206 (h!41540 rules!2135) (t!237945 rules!2135)))))

(declare-fun e!1998251 () Option!7117)

(assert (=> b!3204958 (= e!1998251 (getRuleFromTag!915 thiss!18206 (t!237945 rules!2135) (tag!5734 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3204959 () Bool)

(declare-fun e!1998254 () Option!7117)

(assert (=> b!3204959 (= e!1998254 (Some!7116 (h!41540 rules!2135)))))

(declare-fun b!3204960 () Bool)

(assert (=> b!3204960 (= e!1998251 None!7116)))

(declare-fun b!3204961 () Bool)

(declare-fun e!1998253 () Bool)

(assert (=> b!3204961 (= e!1998253 e!1998252)))

(declare-fun res!1304324 () Bool)

(assert (=> b!3204961 (=> (not res!1304324) (not e!1998252))))

(declare-fun contains!6435 (List!36244 Rule!10220) Bool)

(assert (=> b!3204961 (= res!1304324 (contains!6435 rules!2135 (get!11494 lt!1081825)))))

(declare-fun b!3204962 () Bool)

(assert (=> b!3204962 (= e!1998254 e!1998251)))

(declare-fun c!538228 () Bool)

(assert (=> b!3204962 (= c!538228 (and ((_ is Cons!36120) rules!2135) (not (= (tag!5734 (h!41540 rules!2135)) (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))

(declare-fun d!877514 () Bool)

(assert (=> d!877514 e!1998253))

(declare-fun res!1304323 () Bool)

(assert (=> d!877514 (=> res!1304323 e!1998253)))

(declare-fun isEmpty!20212 (Option!7117) Bool)

(assert (=> d!877514 (= res!1304323 (isEmpty!20212 lt!1081825))))

(assert (=> d!877514 (= lt!1081825 e!1998254)))

(declare-fun c!538229 () Bool)

(assert (=> d!877514 (= c!538229 (and ((_ is Cons!36120) rules!2135) (= (tag!5734 (h!41540 rules!2135)) (tag!5734 (rule!7648 (h!41541 tokens!494))))))))

(assert (=> d!877514 (rulesInvariant!4196 thiss!18206 rules!2135)))

(assert (=> d!877514 (= (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))) lt!1081825)))

(assert (= (and d!877514 c!538229) b!3204959))

(assert (= (and d!877514 (not c!538229)) b!3204962))

(assert (= (and b!3204962 c!538228) b!3204958))

(assert (= (and b!3204962 (not c!538228)) b!3204960))

(assert (= (and d!877514 (not res!1304323)) b!3204961))

(assert (= (and b!3204961 res!1304324) b!3204957))

(declare-fun m!3469961 () Bool)

(assert (=> b!3204957 m!3469961))

(declare-fun m!3469963 () Bool)

(assert (=> b!3204958 m!3469963))

(declare-fun m!3469965 () Bool)

(assert (=> b!3204958 m!3469965))

(declare-fun m!3469967 () Bool)

(assert (=> b!3204958 m!3469967))

(assert (=> b!3204961 m!3469961))

(assert (=> b!3204961 m!3469961))

(declare-fun m!3469969 () Bool)

(assert (=> b!3204961 m!3469969))

(declare-fun m!3469971 () Bool)

(assert (=> d!877514 m!3469971))

(assert (=> d!877514 m!3469201))

(assert (=> b!3204495 d!877514))

(declare-fun d!877518 () Bool)

(declare-fun e!1998255 () Bool)

(assert (=> d!877518 e!1998255))

(declare-fun res!1304325 () Bool)

(assert (=> d!877518 (=> (not res!1304325) (not e!1998255))))

(declare-fun lt!1081828 () BalanceConc!21206)

(assert (=> d!877518 (= res!1304325 (= (list!12844 lt!1081828) (Cons!36121 separatorToken!241 Nil!36121)))))

(assert (=> d!877518 (= lt!1081828 (singleton!991 separatorToken!241))))

(assert (=> d!877518 (= (singletonSeq!2306 separatorToken!241) lt!1081828)))

(declare-fun b!3204963 () Bool)

(assert (=> b!3204963 (= e!1998255 (isBalanced!3212 (c!538128 lt!1081828)))))

(assert (= (and d!877518 res!1304325) b!3204963))

(declare-fun m!3469973 () Bool)

(assert (=> d!877518 m!3469973))

(declare-fun m!3469975 () Bool)

(assert (=> d!877518 m!3469975))

(declare-fun m!3469977 () Bool)

(assert (=> b!3204963 m!3469977))

(assert (=> b!3204495 d!877518))

(declare-fun d!877520 () Bool)

(assert (=> d!877520 (= (head!7027 lt!1081636) (h!41539 lt!1081636))))

(assert (=> b!3204495 d!877520))

(declare-fun d!877522 () Bool)

(declare-fun e!1998258 () Bool)

(assert (=> d!877522 e!1998258))

(declare-fun res!1304330 () Bool)

(assert (=> d!877522 (=> (not res!1304330) (not e!1998258))))

(assert (=> d!877522 (= res!1304330 (isDefined!5538 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))))))

(declare-fun lt!1081831 () Unit!50554)

(declare-fun choose!18708 (LexerInterface!4799 List!36244 List!36243 Token!9786) Unit!50554)

(assert (=> d!877522 (= lt!1081831 (choose!18708 thiss!18206 rules!2135 lt!1081636 separatorToken!241))))

(assert (=> d!877522 (rulesInvariant!4196 thiss!18206 rules!2135)))

(assert (=> d!877522 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!915 thiss!18206 rules!2135 lt!1081636 separatorToken!241) lt!1081831)))

(declare-fun b!3204968 () Bool)

(declare-fun res!1304331 () Bool)

(assert (=> b!3204968 (=> (not res!1304331) (not e!1998258))))

(assert (=> b!3204968 (= res!1304331 (matchR!4603 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))) (list!12843 (charsOf!3226 separatorToken!241))))))

(declare-fun b!3204969 () Bool)

(assert (=> b!3204969 (= e!1998258 (= (rule!7648 separatorToken!241) (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))))))

(assert (= (and d!877522 res!1304330) b!3204968))

(assert (= (and b!3204968 res!1304331) b!3204969))

(assert (=> d!877522 m!3469251))

(assert (=> d!877522 m!3469251))

(declare-fun m!3469979 () Bool)

(assert (=> d!877522 m!3469979))

(declare-fun m!3469981 () Bool)

(assert (=> d!877522 m!3469981))

(assert (=> d!877522 m!3469201))

(assert (=> b!3204968 m!3469147))

(assert (=> b!3204968 m!3469251))

(assert (=> b!3204968 m!3469147))

(assert (=> b!3204968 m!3469163))

(assert (=> b!3204968 m!3469163))

(declare-fun m!3469983 () Bool)

(assert (=> b!3204968 m!3469983))

(assert (=> b!3204968 m!3469251))

(declare-fun m!3469985 () Bool)

(assert (=> b!3204968 m!3469985))

(assert (=> b!3204969 m!3469251))

(assert (=> b!3204969 m!3469251))

(assert (=> b!3204969 m!3469985))

(assert (=> b!3204495 d!877522))

(declare-fun d!877524 () Bool)

(declare-fun e!1998259 () Bool)

(assert (=> d!877524 e!1998259))

(declare-fun res!1304332 () Bool)

(assert (=> d!877524 (=> (not res!1304332) (not e!1998259))))

(declare-fun lt!1081832 () BalanceConc!21206)

(assert (=> d!877524 (= res!1304332 (= (list!12844 lt!1081832) (Cons!36121 (h!41541 (t!237946 tokens!494)) Nil!36121)))))

(assert (=> d!877524 (= lt!1081832 (singleton!991 (h!41541 (t!237946 tokens!494))))))

(assert (=> d!877524 (= (singletonSeq!2306 (h!41541 (t!237946 tokens!494))) lt!1081832)))

(declare-fun b!3204970 () Bool)

(assert (=> b!3204970 (= e!1998259 (isBalanced!3212 (c!538128 lt!1081832)))))

(assert (= (and d!877524 res!1304332) b!3204970))

(declare-fun m!3469987 () Bool)

(assert (=> d!877524 m!3469987))

(declare-fun m!3469989 () Bool)

(assert (=> d!877524 m!3469989))

(declare-fun m!3469991 () Bool)

(assert (=> b!3204970 m!3469991))

(assert (=> b!3204495 d!877524))

(declare-fun d!877526 () Bool)

(declare-fun lt!1081837 () BalanceConc!21204)

(assert (=> d!877526 (= (list!12843 lt!1081837) (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081643 0) (list!12843 (BalanceConc!21205 Empty!10795))))))

(declare-fun e!1998261 () BalanceConc!21204)

(assert (=> d!877526 (= lt!1081837 e!1998261)))

(declare-fun c!538230 () Bool)

(assert (=> d!877526 (= c!538230 (>= 0 (size!27210 lt!1081643)))))

(declare-fun e!1998260 () Bool)

(assert (=> d!877526 e!1998260))

(declare-fun res!1304333 () Bool)

(assert (=> d!877526 (=> (not res!1304333) (not e!1998260))))

(assert (=> d!877526 (= res!1304333 (>= 0 0))))

(assert (=> d!877526 (= (printTailRec!1296 thiss!18206 lt!1081643 0 (BalanceConc!21205 Empty!10795)) lt!1081837)))

(declare-fun b!3204971 () Bool)

(assert (=> b!3204971 (= e!1998260 (<= 0 (size!27210 lt!1081643)))))

(declare-fun b!3204972 () Bool)

(assert (=> b!3204972 (= e!1998261 (BalanceConc!21205 Empty!10795))))

(declare-fun b!3204973 () Bool)

(assert (=> b!3204973 (= e!1998261 (printTailRec!1296 thiss!18206 lt!1081643 (+ 0 1) (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081643 0)))))))

(declare-fun lt!1081839 () List!36245)

(assert (=> b!3204973 (= lt!1081839 (list!12844 lt!1081643))))

(declare-fun lt!1081834 () Unit!50554)

(assert (=> b!3204973 (= lt!1081834 (lemmaDropApply!1034 lt!1081839 0))))

(assert (=> b!3204973 (= (head!7028 (drop!1858 lt!1081839 0)) (apply!8165 lt!1081839 0))))

(declare-fun lt!1081836 () Unit!50554)

(assert (=> b!3204973 (= lt!1081836 lt!1081834)))

(declare-fun lt!1081833 () List!36245)

(assert (=> b!3204973 (= lt!1081833 (list!12844 lt!1081643))))

(declare-fun lt!1081835 () Unit!50554)

(assert (=> b!3204973 (= lt!1081835 (lemmaDropTail!918 lt!1081833 0))))

(assert (=> b!3204973 (= (tail!5207 (drop!1858 lt!1081833 0)) (drop!1858 lt!1081833 (+ 0 1)))))

(declare-fun lt!1081838 () Unit!50554)

(assert (=> b!3204973 (= lt!1081838 lt!1081835)))

(assert (= (and d!877526 res!1304333) b!3204971))

(assert (= (and d!877526 c!538230) b!3204972))

(assert (= (and d!877526 (not c!538230)) b!3204973))

(declare-fun m!3469993 () Bool)

(assert (=> d!877526 m!3469993))

(declare-fun m!3469995 () Bool)

(assert (=> d!877526 m!3469995))

(assert (=> d!877526 m!3469595))

(declare-fun m!3469997 () Bool)

(assert (=> d!877526 m!3469997))

(assert (=> d!877526 m!3469993))

(assert (=> d!877526 m!3469595))

(declare-fun m!3469999 () Bool)

(assert (=> d!877526 m!3469999))

(assert (=> b!3204971 m!3469997))

(declare-fun m!3470001 () Bool)

(assert (=> b!3204973 m!3470001))

(declare-fun m!3470003 () Bool)

(assert (=> b!3204973 m!3470003))

(declare-fun m!3470005 () Bool)

(assert (=> b!3204973 m!3470005))

(declare-fun m!3470007 () Bool)

(assert (=> b!3204973 m!3470007))

(declare-fun m!3470009 () Bool)

(assert (=> b!3204973 m!3470009))

(declare-fun m!3470011 () Bool)

(assert (=> b!3204973 m!3470011))

(declare-fun m!3470013 () Bool)

(assert (=> b!3204973 m!3470013))

(declare-fun m!3470015 () Bool)

(assert (=> b!3204973 m!3470015))

(assert (=> b!3204973 m!3470011))

(assert (=> b!3204973 m!3470001))

(declare-fun m!3470017 () Bool)

(assert (=> b!3204973 m!3470017))

(declare-fun m!3470019 () Bool)

(assert (=> b!3204973 m!3470019))

(assert (=> b!3204973 m!3470013))

(declare-fun m!3470021 () Bool)

(assert (=> b!3204973 m!3470021))

(assert (=> b!3204973 m!3470009))

(assert (=> b!3204973 m!3470019))

(declare-fun m!3470023 () Bool)

(assert (=> b!3204973 m!3470023))

(declare-fun m!3470025 () Bool)

(assert (=> b!3204973 m!3470025))

(assert (=> b!3204495 d!877526))

(declare-fun d!877528 () Bool)

(declare-fun lt!1081842 () Bool)

(assert (=> d!877528 (= lt!1081842 (select (content!4882 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))) lt!1081655))))

(declare-fun e!1998266 () Bool)

(assert (=> d!877528 (= lt!1081842 e!1998266)))

(declare-fun res!1304339 () Bool)

(assert (=> d!877528 (=> (not res!1304339) (not e!1998266))))

(assert (=> d!877528 (= res!1304339 ((_ is Cons!36119) (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))))))

(assert (=> d!877528 (= (contains!6433 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241))) lt!1081655) lt!1081842)))

(declare-fun b!3204978 () Bool)

(declare-fun e!1998267 () Bool)

(assert (=> b!3204978 (= e!1998266 e!1998267)))

(declare-fun res!1304338 () Bool)

(assert (=> b!3204978 (=> res!1304338 e!1998267)))

(assert (=> b!3204978 (= res!1304338 (= (h!41539 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))) lt!1081655))))

(declare-fun b!3204979 () Bool)

(assert (=> b!3204979 (= e!1998267 (contains!6433 (t!237944 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))) lt!1081655))))

(assert (= (and d!877528 res!1304339) b!3204978))

(assert (= (and b!3204978 (not res!1304338)) b!3204979))

(assert (=> d!877528 m!3469237))

(declare-fun m!3470027 () Bool)

(assert (=> d!877528 m!3470027))

(declare-fun m!3470029 () Bool)

(assert (=> d!877528 m!3470029))

(declare-fun m!3470031 () Bool)

(assert (=> b!3204979 m!3470031))

(assert (=> b!3204495 d!877528))

(declare-fun d!877530 () Bool)

(assert (=> d!877530 (= (isDefined!5538 lt!1081646) (not (isEmpty!20212 lt!1081646)))))

(declare-fun bs!541224 () Bool)

(assert (= bs!541224 d!877530))

(declare-fun m!3470033 () Bool)

(assert (=> bs!541224 m!3470033))

(assert (=> b!3204495 d!877530))

(declare-fun d!877532 () Bool)

(declare-fun lt!1081847 () BalanceConc!21204)

(assert (=> d!877532 (= (list!12843 lt!1081847) (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081650 0) (list!12843 (BalanceConc!21205 Empty!10795))))))

(declare-fun e!1998269 () BalanceConc!21204)

(assert (=> d!877532 (= lt!1081847 e!1998269)))

(declare-fun c!538231 () Bool)

(assert (=> d!877532 (= c!538231 (>= 0 (size!27210 lt!1081650)))))

(declare-fun e!1998268 () Bool)

(assert (=> d!877532 e!1998268))

(declare-fun res!1304340 () Bool)

(assert (=> d!877532 (=> (not res!1304340) (not e!1998268))))

(assert (=> d!877532 (= res!1304340 (>= 0 0))))

(assert (=> d!877532 (= (printTailRec!1296 thiss!18206 lt!1081650 0 (BalanceConc!21205 Empty!10795)) lt!1081847)))

(declare-fun b!3204980 () Bool)

(assert (=> b!3204980 (= e!1998268 (<= 0 (size!27210 lt!1081650)))))

(declare-fun b!3204981 () Bool)

(assert (=> b!3204981 (= e!1998269 (BalanceConc!21205 Empty!10795))))

(declare-fun b!3204982 () Bool)

(assert (=> b!3204982 (= e!1998269 (printTailRec!1296 thiss!18206 lt!1081650 (+ 0 1) (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081650 0)))))))

(declare-fun lt!1081849 () List!36245)

(assert (=> b!3204982 (= lt!1081849 (list!12844 lt!1081650))))

(declare-fun lt!1081844 () Unit!50554)

(assert (=> b!3204982 (= lt!1081844 (lemmaDropApply!1034 lt!1081849 0))))

(assert (=> b!3204982 (= (head!7028 (drop!1858 lt!1081849 0)) (apply!8165 lt!1081849 0))))

(declare-fun lt!1081846 () Unit!50554)

(assert (=> b!3204982 (= lt!1081846 lt!1081844)))

(declare-fun lt!1081843 () List!36245)

(assert (=> b!3204982 (= lt!1081843 (list!12844 lt!1081650))))

(declare-fun lt!1081845 () Unit!50554)

(assert (=> b!3204982 (= lt!1081845 (lemmaDropTail!918 lt!1081843 0))))

(assert (=> b!3204982 (= (tail!5207 (drop!1858 lt!1081843 0)) (drop!1858 lt!1081843 (+ 0 1)))))

(declare-fun lt!1081848 () Unit!50554)

(assert (=> b!3204982 (= lt!1081848 lt!1081845)))

(assert (= (and d!877532 res!1304340) b!3204980))

(assert (= (and d!877532 c!538231) b!3204981))

(assert (= (and d!877532 (not c!538231)) b!3204982))

(declare-fun m!3470035 () Bool)

(assert (=> d!877532 m!3470035))

(declare-fun m!3470037 () Bool)

(assert (=> d!877532 m!3470037))

(assert (=> d!877532 m!3469595))

(declare-fun m!3470039 () Bool)

(assert (=> d!877532 m!3470039))

(assert (=> d!877532 m!3470035))

(assert (=> d!877532 m!3469595))

(declare-fun m!3470041 () Bool)

(assert (=> d!877532 m!3470041))

(assert (=> b!3204980 m!3470039))

(declare-fun m!3470043 () Bool)

(assert (=> b!3204982 m!3470043))

(declare-fun m!3470045 () Bool)

(assert (=> b!3204982 m!3470045))

(declare-fun m!3470047 () Bool)

(assert (=> b!3204982 m!3470047))

(declare-fun m!3470049 () Bool)

(assert (=> b!3204982 m!3470049))

(declare-fun m!3470051 () Bool)

(assert (=> b!3204982 m!3470051))

(declare-fun m!3470053 () Bool)

(assert (=> b!3204982 m!3470053))

(declare-fun m!3470055 () Bool)

(assert (=> b!3204982 m!3470055))

(declare-fun m!3470057 () Bool)

(assert (=> b!3204982 m!3470057))

(assert (=> b!3204982 m!3470053))

(assert (=> b!3204982 m!3470043))

(declare-fun m!3470059 () Bool)

(assert (=> b!3204982 m!3470059))

(declare-fun m!3470061 () Bool)

(assert (=> b!3204982 m!3470061))

(assert (=> b!3204982 m!3470055))

(declare-fun m!3470063 () Bool)

(assert (=> b!3204982 m!3470063))

(assert (=> b!3204982 m!3470051))

(assert (=> b!3204982 m!3470061))

(declare-fun m!3470065 () Bool)

(assert (=> b!3204982 m!3470065))

(declare-fun m!3470067 () Bool)

(assert (=> b!3204982 m!3470067))

(assert (=> b!3204495 d!877532))

(declare-fun b!3204999 () Bool)

(declare-fun e!1998280 () List!36243)

(declare-fun call!231996 () List!36243)

(assert (=> b!3204999 (= e!1998280 call!231996)))

(declare-fun b!3205000 () Bool)

(assert (=> b!3205000 (= e!1998280 call!231996)))

(declare-fun b!3205001 () Bool)

(declare-fun c!538242 () Bool)

(assert (=> b!3205001 (= c!538242 ((_ is Star!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun e!1998279 () List!36243)

(declare-fun e!1998278 () List!36243)

(assert (=> b!3205001 (= e!1998279 e!1998278)))

(declare-fun b!3205002 () Bool)

(assert (=> b!3205002 (= e!1998279 (Cons!36119 (c!538126 (regex!5210 (rule!7648 separatorToken!241))) Nil!36119))))

(declare-fun b!3205003 () Bool)

(declare-fun e!1998281 () List!36243)

(assert (=> b!3205003 (= e!1998281 Nil!36119)))

(declare-fun b!3205004 () Bool)

(assert (=> b!3205004 (= e!1998281 e!1998279)))

(declare-fun c!538240 () Bool)

(assert (=> b!3205004 (= c!538240 ((_ is ElementMatch!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun call!231994 () List!36243)

(declare-fun bm!231989 () Bool)

(declare-fun c!538243 () Bool)

(declare-fun call!231995 () List!36243)

(assert (=> bm!231989 (= call!231996 (++!8660 (ite c!538243 call!231995 call!231994) (ite c!538243 call!231994 call!231995)))))

(declare-fun b!3205005 () Bool)

(assert (=> b!3205005 (= e!1998278 e!1998280)))

(assert (=> b!3205005 (= c!538243 ((_ is Union!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun call!231997 () List!36243)

(declare-fun bm!231990 () Bool)

(assert (=> bm!231990 (= call!231997 (usedCharacters!526 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))

(declare-fun d!877534 () Bool)

(declare-fun c!538241 () Bool)

(assert (=> d!877534 (= c!538241 (or ((_ is EmptyExpr!9969) (regex!5210 (rule!7648 separatorToken!241))) ((_ is EmptyLang!9969) (regex!5210 (rule!7648 separatorToken!241)))))))

(assert (=> d!877534 (= (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241))) e!1998281)))

(declare-fun bm!231991 () Bool)

(assert (=> bm!231991 (= call!231994 call!231997)))

(declare-fun bm!231992 () Bool)

(assert (=> bm!231992 (= call!231995 (usedCharacters!526 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))))))

(declare-fun b!3205006 () Bool)

(assert (=> b!3205006 (= e!1998278 call!231997)))

(assert (= (and d!877534 c!538241) b!3205003))

(assert (= (and d!877534 (not c!538241)) b!3205004))

(assert (= (and b!3205004 c!538240) b!3205002))

(assert (= (and b!3205004 (not c!538240)) b!3205001))

(assert (= (and b!3205001 c!538242) b!3205006))

(assert (= (and b!3205001 (not c!538242)) b!3205005))

(assert (= (and b!3205005 c!538243) b!3204999))

(assert (= (and b!3205005 (not c!538243)) b!3205000))

(assert (= (or b!3204999 b!3205000) bm!231991))

(assert (= (or b!3204999 b!3205000) bm!231992))

(assert (= (or b!3204999 b!3205000) bm!231989))

(assert (= (or b!3205006 bm!231991) bm!231990))

(declare-fun m!3470069 () Bool)

(assert (=> bm!231989 m!3470069))

(declare-fun m!3470071 () Bool)

(assert (=> bm!231990 m!3470071))

(declare-fun m!3470073 () Bool)

(assert (=> bm!231992 m!3470073))

(assert (=> b!3204495 d!877534))

(declare-fun d!877536 () Bool)

(declare-fun lt!1081852 () Int)

(declare-fun size!27216 (List!36245) Int)

(assert (=> d!877536 (= lt!1081852 (size!27216 (list!12844 (_1!20887 lt!1081664))))))

(declare-fun size!27217 (Conc!10796) Int)

(assert (=> d!877536 (= lt!1081852 (size!27217 (c!538128 (_1!20887 lt!1081664))))))

(assert (=> d!877536 (= (size!27210 (_1!20887 lt!1081664)) lt!1081852)))

(declare-fun bs!541225 () Bool)

(assert (= bs!541225 d!877536))

(declare-fun m!3470075 () Bool)

(assert (=> bs!541225 m!3470075))

(assert (=> bs!541225 m!3470075))

(declare-fun m!3470077 () Bool)

(assert (=> bs!541225 m!3470077))

(declare-fun m!3470079 () Bool)

(assert (=> bs!541225 m!3470079))

(assert (=> b!3204495 d!877536))

(declare-fun d!877538 () Bool)

(assert (=> d!877538 (dynLambda!14558 lambda!117291 (h!41541 (t!237946 tokens!494)))))

(declare-fun lt!1081853 () Unit!50554)

(assert (=> d!877538 (= lt!1081853 (choose!18703 tokens!494 lambda!117291 (h!41541 (t!237946 tokens!494))))))

(declare-fun e!1998282 () Bool)

(assert (=> d!877538 e!1998282))

(declare-fun res!1304341 () Bool)

(assert (=> d!877538 (=> (not res!1304341) (not e!1998282))))

(assert (=> d!877538 (= res!1304341 (forall!7368 tokens!494 lambda!117291))))

(assert (=> d!877538 (= (forallContained!1181 tokens!494 lambda!117291 (h!41541 (t!237946 tokens!494))) lt!1081853)))

(declare-fun b!3205007 () Bool)

(assert (=> b!3205007 (= e!1998282 (contains!6434 tokens!494 (h!41541 (t!237946 tokens!494))))))

(assert (= (and d!877538 res!1304341) b!3205007))

(declare-fun b_lambda!87701 () Bool)

(assert (=> (not b_lambda!87701) (not d!877538)))

(declare-fun m!3470081 () Bool)

(assert (=> d!877538 m!3470081))

(declare-fun m!3470083 () Bool)

(assert (=> d!877538 m!3470083))

(declare-fun m!3470085 () Bool)

(assert (=> d!877538 m!3470085))

(assert (=> b!3205007 m!3469755))

(assert (=> b!3204495 d!877538))

(declare-fun b!3205008 () Bool)

(declare-fun e!1998285 () Bool)

(declare-fun lt!1081854 () tuple2!35506)

(assert (=> b!3205008 (= e!1998285 (= (_2!20887 lt!1081854) lt!1081654))))

(declare-fun b!3205009 () Bool)

(declare-fun e!1998284 () Bool)

(assert (=> b!3205009 (= e!1998284 (not (isEmpty!20205 (_1!20887 lt!1081854))))))

(declare-fun b!3205010 () Bool)

(declare-fun res!1304343 () Bool)

(declare-fun e!1998283 () Bool)

(assert (=> b!3205010 (=> (not res!1304343) (not e!1998283))))

(assert (=> b!3205010 (= res!1304343 (= (list!12844 (_1!20887 lt!1081854)) (_1!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081654)))))))

(declare-fun d!877540 () Bool)

(assert (=> d!877540 e!1998283))

(declare-fun res!1304342 () Bool)

(assert (=> d!877540 (=> (not res!1304342) (not e!1998283))))

(assert (=> d!877540 (= res!1304342 e!1998285)))

(declare-fun c!538244 () Bool)

(assert (=> d!877540 (= c!538244 (> (size!27210 (_1!20887 lt!1081854)) 0))))

(assert (=> d!877540 (= lt!1081854 (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081654 (BalanceConc!21205 Empty!10795) lt!1081654 (BalanceConc!21207 Empty!10796)))))

(assert (=> d!877540 (= (lex!2129 thiss!18206 rules!2135 lt!1081654) lt!1081854)))

(declare-fun b!3205011 () Bool)

(assert (=> b!3205011 (= e!1998285 e!1998284)))

(declare-fun res!1304344 () Bool)

(assert (=> b!3205011 (= res!1304344 (< (size!27212 (_2!20887 lt!1081854)) (size!27212 lt!1081654)))))

(assert (=> b!3205011 (=> (not res!1304344) (not e!1998284))))

(declare-fun b!3205012 () Bool)

(assert (=> b!3205012 (= e!1998283 (= (list!12843 (_2!20887 lt!1081854)) (_2!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081654)))))))

(assert (= (and d!877540 c!538244) b!3205011))

(assert (= (and d!877540 (not c!538244)) b!3205008))

(assert (= (and b!3205011 res!1304344) b!3205009))

(assert (= (and d!877540 res!1304342) b!3205010))

(assert (= (and b!3205010 res!1304343) b!3205012))

(declare-fun m!3470087 () Bool)

(assert (=> b!3205012 m!3470087))

(declare-fun m!3470089 () Bool)

(assert (=> b!3205012 m!3470089))

(assert (=> b!3205012 m!3470089))

(declare-fun m!3470091 () Bool)

(assert (=> b!3205012 m!3470091))

(declare-fun m!3470093 () Bool)

(assert (=> d!877540 m!3470093))

(declare-fun m!3470095 () Bool)

(assert (=> d!877540 m!3470095))

(declare-fun m!3470097 () Bool)

(assert (=> b!3205009 m!3470097))

(declare-fun m!3470099 () Bool)

(assert (=> b!3205011 m!3470099))

(declare-fun m!3470101 () Bool)

(assert (=> b!3205011 m!3470101))

(declare-fun m!3470103 () Bool)

(assert (=> b!3205010 m!3470103))

(assert (=> b!3205010 m!3470089))

(assert (=> b!3205010 m!3470089))

(assert (=> b!3205010 m!3470091))

(assert (=> b!3204495 d!877540))

(declare-fun b!3205013 () Bool)

(declare-fun e!1998287 () Bool)

(declare-fun lt!1081855 () Option!7117)

(assert (=> b!3205013 (= e!1998287 (= (tag!5734 (get!11494 lt!1081855)) (tag!5734 (rule!7648 separatorToken!241))))))

(declare-fun b!3205014 () Bool)

(declare-fun lt!1081857 () Unit!50554)

(declare-fun lt!1081856 () Unit!50554)

(assert (=> b!3205014 (= lt!1081857 lt!1081856)))

(assert (=> b!3205014 (rulesInvariant!4196 thiss!18206 (t!237945 rules!2135))))

(assert (=> b!3205014 (= lt!1081856 (lemmaInvariantOnRulesThenOnTail!347 thiss!18206 (h!41540 rules!2135) (t!237945 rules!2135)))))

(declare-fun e!1998286 () Option!7117)

(assert (=> b!3205014 (= e!1998286 (getRuleFromTag!915 thiss!18206 (t!237945 rules!2135) (tag!5734 (rule!7648 separatorToken!241))))))

(declare-fun b!3205015 () Bool)

(declare-fun e!1998289 () Option!7117)

(assert (=> b!3205015 (= e!1998289 (Some!7116 (h!41540 rules!2135)))))

(declare-fun b!3205016 () Bool)

(assert (=> b!3205016 (= e!1998286 None!7116)))

(declare-fun b!3205017 () Bool)

(declare-fun e!1998288 () Bool)

(assert (=> b!3205017 (= e!1998288 e!1998287)))

(declare-fun res!1304346 () Bool)

(assert (=> b!3205017 (=> (not res!1304346) (not e!1998287))))

(assert (=> b!3205017 (= res!1304346 (contains!6435 rules!2135 (get!11494 lt!1081855)))))

(declare-fun b!3205018 () Bool)

(assert (=> b!3205018 (= e!1998289 e!1998286)))

(declare-fun c!538245 () Bool)

(assert (=> b!3205018 (= c!538245 (and ((_ is Cons!36120) rules!2135) (not (= (tag!5734 (h!41540 rules!2135)) (tag!5734 (rule!7648 separatorToken!241))))))))

(declare-fun d!877542 () Bool)

(assert (=> d!877542 e!1998288))

(declare-fun res!1304345 () Bool)

(assert (=> d!877542 (=> res!1304345 e!1998288)))

(assert (=> d!877542 (= res!1304345 (isEmpty!20212 lt!1081855))))

(assert (=> d!877542 (= lt!1081855 e!1998289)))

(declare-fun c!538246 () Bool)

(assert (=> d!877542 (= c!538246 (and ((_ is Cons!36120) rules!2135) (= (tag!5734 (h!41540 rules!2135)) (tag!5734 (rule!7648 separatorToken!241)))))))

(assert (=> d!877542 (rulesInvariant!4196 thiss!18206 rules!2135)))

(assert (=> d!877542 (= (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))) lt!1081855)))

(assert (= (and d!877542 c!538246) b!3205015))

(assert (= (and d!877542 (not c!538246)) b!3205018))

(assert (= (and b!3205018 c!538245) b!3205014))

(assert (= (and b!3205018 (not c!538245)) b!3205016))

(assert (= (and d!877542 (not res!1304345)) b!3205017))

(assert (= (and b!3205017 res!1304346) b!3205013))

(declare-fun m!3470105 () Bool)

(assert (=> b!3205013 m!3470105))

(assert (=> b!3205014 m!3469963))

(assert (=> b!3205014 m!3469965))

(declare-fun m!3470107 () Bool)

(assert (=> b!3205014 m!3470107))

(assert (=> b!3205017 m!3470105))

(assert (=> b!3205017 m!3470105))

(declare-fun m!3470109 () Bool)

(assert (=> b!3205017 m!3470109))

(declare-fun m!3470111 () Bool)

(assert (=> d!877542 m!3470111))

(assert (=> d!877542 m!3469201))

(assert (=> b!3204495 d!877542))

(declare-fun d!877544 () Bool)

(assert (=> d!877544 (= (isDefined!5538 lt!1081653) (not (isEmpty!20212 lt!1081653)))))

(declare-fun bs!541226 () Bool)

(assert (= bs!541226 d!877544))

(declare-fun m!3470113 () Bool)

(assert (=> bs!541226 m!3470113))

(assert (=> b!3204495 d!877544))

(declare-fun b!3205073 () Bool)

(declare-fun e!1998319 () Option!7118)

(assert (=> b!3205073 (= e!1998319 None!7117)))

(declare-fun b!3205074 () Bool)

(declare-fun res!1304389 () Bool)

(declare-fun e!1998318 () Bool)

(assert (=> b!3205074 (=> (not res!1304389) (not e!1998318))))

(declare-fun lt!1081904 () Option!7118)

(declare-fun get!11496 (Option!7118) tuple2!35508)

(assert (=> b!3205074 (= res!1304389 (< (size!27211 (_2!20888 (get!11496 lt!1081904))) (size!27211 lt!1081658)))))

(declare-fun b!3205075 () Bool)

(declare-fun e!1998317 () Bool)

(assert (=> b!3205075 (= e!1998317 e!1998318)))

(declare-fun res!1304387 () Bool)

(assert (=> b!3205075 (=> (not res!1304387) (not e!1998318))))

(assert (=> b!3205075 (= res!1304387 (matchR!4603 (regex!5210 (rule!7648 (h!41541 tokens!494))) (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))))))

(declare-fun b!3205076 () Bool)

(declare-fun res!1304386 () Bool)

(assert (=> b!3205076 (=> (not res!1304386) (not e!1998318))))

(assert (=> b!3205076 (= res!1304386 (= (++!8660 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904)))) (_2!20888 (get!11496 lt!1081904))) lt!1081658))))

(declare-fun b!3205077 () Bool)

(declare-fun e!1998316 () Bool)

(declare-datatypes ((tuple2!35516 0))(
  ( (tuple2!35517 (_1!20892 List!36243) (_2!20892 List!36243)) )
))
(declare-fun findLongestMatchInner!829 (Regex!9969 List!36243 Int List!36243 List!36243 Int) tuple2!35516)

(assert (=> b!3205077 (= e!1998316 (matchR!4603 (regex!5210 (rule!7648 (h!41541 tokens!494))) (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))

(declare-fun b!3205078 () Bool)

(declare-fun res!1304391 () Bool)

(assert (=> b!3205078 (=> (not res!1304391) (not e!1998318))))

(assert (=> b!3205078 (= res!1304391 (= (value!168945 (_1!20888 (get!11496 lt!1081904))) (apply!8164 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))) (seqFromList!3492 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904)))))))))

(declare-fun d!877546 () Bool)

(assert (=> d!877546 e!1998317))

(declare-fun res!1304390 () Bool)

(assert (=> d!877546 (=> res!1304390 e!1998317)))

(declare-fun isEmpty!20215 (Option!7118) Bool)

(assert (=> d!877546 (= res!1304390 (isEmpty!20215 lt!1081904))))

(assert (=> d!877546 (= lt!1081904 e!1998319)))

(declare-fun c!538255 () Bool)

(declare-fun lt!1081905 () tuple2!35516)

(assert (=> d!877546 (= c!538255 (isEmpty!20208 (_1!20892 lt!1081905)))))

(declare-fun findLongestMatch!744 (Regex!9969 List!36243) tuple2!35516)

(assert (=> d!877546 (= lt!1081905 (findLongestMatch!744 (regex!5210 (rule!7648 (h!41541 tokens!494))) lt!1081658))))

(declare-fun ruleValid!1642 (LexerInterface!4799 Rule!10220) Bool)

(assert (=> d!877546 (ruleValid!1642 thiss!18206 (rule!7648 (h!41541 tokens!494)))))

(assert (=> d!877546 (= (maxPrefixOneRule!1578 thiss!18206 (rule!7648 (h!41541 tokens!494)) lt!1081658) lt!1081904)))

(declare-fun b!3205079 () Bool)

(declare-fun res!1304388 () Bool)

(assert (=> b!3205079 (=> (not res!1304388) (not e!1998318))))

(assert (=> b!3205079 (= res!1304388 (= (rule!7648 (_1!20888 (get!11496 lt!1081904))) (rule!7648 (h!41541 tokens!494))))))

(declare-fun b!3205080 () Bool)

(assert (=> b!3205080 (= e!1998318 (= (size!27209 (_1!20888 (get!11496 lt!1081904))) (size!27211 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904))))))))

(declare-fun b!3205081 () Bool)

(assert (=> b!3205081 (= e!1998319 (Some!7117 (tuple2!35509 (Token!9787 (apply!8164 (transformation!5210 (rule!7648 (h!41541 tokens!494))) (seqFromList!3492 (_1!20892 lt!1081905))) (rule!7648 (h!41541 tokens!494)) (size!27212 (seqFromList!3492 (_1!20892 lt!1081905))) (_1!20892 lt!1081905)) (_2!20892 lt!1081905))))))

(declare-fun lt!1081907 () Unit!50554)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!802 (Regex!9969 List!36243) Unit!50554)

(assert (=> b!3205081 (= lt!1081907 (longestMatchIsAcceptedByMatchOrIsEmpty!802 (regex!5210 (rule!7648 (h!41541 tokens!494))) lt!1081658))))

(declare-fun res!1304385 () Bool)

(assert (=> b!3205081 (= res!1304385 (isEmpty!20208 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))

(assert (=> b!3205081 (=> res!1304385 e!1998316)))

(assert (=> b!3205081 e!1998316))

(declare-fun lt!1081908 () Unit!50554)

(assert (=> b!3205081 (= lt!1081908 lt!1081907)))

(declare-fun lt!1081906 () Unit!50554)

(declare-fun lemmaSemiInverse!1173 (TokenValueInjection!10308 BalanceConc!21204) Unit!50554)

(assert (=> b!3205081 (= lt!1081906 (lemmaSemiInverse!1173 (transformation!5210 (rule!7648 (h!41541 tokens!494))) (seqFromList!3492 (_1!20892 lt!1081905))))))

(assert (= (and d!877546 c!538255) b!3205073))

(assert (= (and d!877546 (not c!538255)) b!3205081))

(assert (= (and b!3205081 (not res!1304385)) b!3205077))

(assert (= (and d!877546 (not res!1304390)) b!3205075))

(assert (= (and b!3205075 res!1304387) b!3205076))

(assert (= (and b!3205076 res!1304386) b!3205074))

(assert (= (and b!3205074 res!1304389) b!3205079))

(assert (= (and b!3205079 res!1304388) b!3205078))

(assert (= (and b!3205078 res!1304391) b!3205080))

(declare-fun m!3470195 () Bool)

(assert (=> b!3205074 m!3470195))

(declare-fun m!3470197 () Bool)

(assert (=> b!3205074 m!3470197))

(assert (=> b!3205074 m!3469249))

(declare-fun m!3470199 () Bool)

(assert (=> b!3205077 m!3470199))

(assert (=> b!3205077 m!3469249))

(assert (=> b!3205077 m!3470199))

(assert (=> b!3205077 m!3469249))

(declare-fun m!3470201 () Bool)

(assert (=> b!3205077 m!3470201))

(declare-fun m!3470203 () Bool)

(assert (=> b!3205077 m!3470203))

(assert (=> b!3205080 m!3470195))

(declare-fun m!3470205 () Bool)

(assert (=> b!3205080 m!3470205))

(declare-fun m!3470207 () Bool)

(assert (=> b!3205081 m!3470207))

(declare-fun m!3470209 () Bool)

(assert (=> b!3205081 m!3470209))

(assert (=> b!3205081 m!3470207))

(declare-fun m!3470211 () Bool)

(assert (=> b!3205081 m!3470211))

(assert (=> b!3205081 m!3470199))

(assert (=> b!3205081 m!3470207))

(declare-fun m!3470213 () Bool)

(assert (=> b!3205081 m!3470213))

(declare-fun m!3470215 () Bool)

(assert (=> b!3205081 m!3470215))

(assert (=> b!3205081 m!3470199))

(assert (=> b!3205081 m!3469249))

(assert (=> b!3205081 m!3470201))

(assert (=> b!3205081 m!3470207))

(assert (=> b!3205081 m!3469249))

(declare-fun m!3470217 () Bool)

(assert (=> b!3205081 m!3470217))

(declare-fun m!3470219 () Bool)

(assert (=> d!877546 m!3470219))

(declare-fun m!3470221 () Bool)

(assert (=> d!877546 m!3470221))

(declare-fun m!3470223 () Bool)

(assert (=> d!877546 m!3470223))

(declare-fun m!3470225 () Bool)

(assert (=> d!877546 m!3470225))

(assert (=> b!3205076 m!3470195))

(declare-fun m!3470227 () Bool)

(assert (=> b!3205076 m!3470227))

(assert (=> b!3205076 m!3470227))

(declare-fun m!3470229 () Bool)

(assert (=> b!3205076 m!3470229))

(assert (=> b!3205076 m!3470229))

(declare-fun m!3470231 () Bool)

(assert (=> b!3205076 m!3470231))

(assert (=> b!3205078 m!3470195))

(declare-fun m!3470233 () Bool)

(assert (=> b!3205078 m!3470233))

(assert (=> b!3205078 m!3470233))

(declare-fun m!3470235 () Bool)

(assert (=> b!3205078 m!3470235))

(assert (=> b!3205075 m!3470195))

(assert (=> b!3205075 m!3470227))

(assert (=> b!3205075 m!3470227))

(assert (=> b!3205075 m!3470229))

(assert (=> b!3205075 m!3470229))

(declare-fun m!3470237 () Bool)

(assert (=> b!3205075 m!3470237))

(assert (=> b!3205079 m!3470195))

(assert (=> b!3204495 d!877546))

(declare-fun d!877554 () Bool)

(declare-fun lt!1081912 () BalanceConc!21204)

(assert (=> d!877554 (= (list!12843 lt!1081912) (printList!1349 thiss!18206 (list!12844 lt!1081643)))))

(assert (=> d!877554 (= lt!1081912 (printTailRec!1296 thiss!18206 lt!1081643 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!877554 (= (print!1864 thiss!18206 lt!1081643) lt!1081912)))

(declare-fun bs!541228 () Bool)

(assert (= bs!541228 d!877554))

(declare-fun m!3470239 () Bool)

(assert (=> bs!541228 m!3470239))

(assert (=> bs!541228 m!3470017))

(assert (=> bs!541228 m!3470017))

(declare-fun m!3470241 () Bool)

(assert (=> bs!541228 m!3470241))

(assert (=> bs!541228 m!3469275))

(assert (=> b!3204495 d!877554))

(declare-fun d!877556 () Bool)

(declare-fun e!1998320 () Bool)

(assert (=> d!877556 e!1998320))

(declare-fun res!1304392 () Bool)

(assert (=> d!877556 (=> (not res!1304392) (not e!1998320))))

(assert (=> d!877556 (= res!1304392 (isDefined!5538 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))))))

(declare-fun lt!1081913 () Unit!50554)

(assert (=> d!877556 (= lt!1081913 (choose!18708 thiss!18206 rules!2135 lt!1081658 (h!41541 tokens!494)))))

(assert (=> d!877556 (rulesInvariant!4196 thiss!18206 rules!2135)))

(assert (=> d!877556 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!915 thiss!18206 rules!2135 lt!1081658 (h!41541 tokens!494)) lt!1081913)))

(declare-fun b!3205082 () Bool)

(declare-fun res!1304393 () Bool)

(assert (=> b!3205082 (=> (not res!1304393) (not e!1998320))))

(assert (=> b!3205082 (= res!1304393 (matchR!4603 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))) (list!12843 (charsOf!3226 (h!41541 tokens!494)))))))

(declare-fun b!3205083 () Bool)

(assert (=> b!3205083 (= e!1998320 (= (rule!7648 (h!41541 tokens!494)) (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))

(assert (= (and d!877556 res!1304392) b!3205082))

(assert (= (and b!3205082 res!1304393) b!3205083))

(assert (=> d!877556 m!3469243))

(assert (=> d!877556 m!3469243))

(declare-fun m!3470247 () Bool)

(assert (=> d!877556 m!3470247))

(declare-fun m!3470249 () Bool)

(assert (=> d!877556 m!3470249))

(assert (=> d!877556 m!3469201))

(assert (=> b!3205082 m!3469203))

(assert (=> b!3205082 m!3469243))

(assert (=> b!3205082 m!3469203))

(assert (=> b!3205082 m!3469205))

(assert (=> b!3205082 m!3469205))

(declare-fun m!3470251 () Bool)

(assert (=> b!3205082 m!3470251))

(assert (=> b!3205082 m!3469243))

(declare-fun m!3470253 () Bool)

(assert (=> b!3205082 m!3470253))

(assert (=> b!3205083 m!3469243))

(assert (=> b!3205083 m!3469243))

(assert (=> b!3205083 m!3470253))

(assert (=> b!3204495 d!877556))

(declare-fun d!877560 () Bool)

(declare-fun dynLambda!14563 (Int BalanceConc!21204) TokenValue!5440)

(assert (=> d!877560 (= (apply!8164 (transformation!5210 (rule!7648 (h!41541 tokens!494))) lt!1081661) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661))))

(declare-fun b_lambda!87703 () Bool)

(assert (=> (not b_lambda!87703) (not d!877560)))

(declare-fun t!238004 () Bool)

(declare-fun tb!157221 () Bool)

(assert (=> (and b!3204473 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238004) tb!157221))

(declare-fun result!199540 () Bool)

(assert (=> tb!157221 (= result!199540 (inv!21 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661)))))

(declare-fun m!3470269 () Bool)

(assert (=> tb!157221 m!3470269))

(assert (=> d!877560 t!238004))

(declare-fun b_and!213265 () Bool)

(assert (= b_and!213199 (and (=> t!238004 result!199540) b_and!213265)))

(declare-fun t!238006 () Bool)

(declare-fun tb!157223 () Bool)

(assert (=> (and b!3204481 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238006) tb!157223))

(declare-fun result!199544 () Bool)

(assert (= result!199544 result!199540))

(assert (=> d!877560 t!238006))

(declare-fun b_and!213267 () Bool)

(assert (= b_and!213203 (and (=> t!238006 result!199544) b_and!213267)))

(declare-fun t!238008 () Bool)

(declare-fun tb!157225 () Bool)

(assert (=> (and b!3204488 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238008) tb!157225))

(declare-fun result!199546 () Bool)

(assert (= result!199546 result!199540))

(assert (=> d!877560 t!238008))

(declare-fun b_and!213269 () Bool)

(assert (= b_and!213207 (and (=> t!238008 result!199546) b_and!213269)))

(declare-fun m!3470271 () Bool)

(assert (=> d!877560 m!3470271))

(assert (=> b!3204495 d!877560))

(declare-fun d!877566 () Bool)

(declare-fun lt!1081923 () Int)

(assert (=> d!877566 (>= lt!1081923 0)))

(declare-fun e!1998337 () Int)

(assert (=> d!877566 (= lt!1081923 e!1998337)))

(declare-fun c!538260 () Bool)

(assert (=> d!877566 (= c!538260 ((_ is Nil!36119) lt!1081658))))

(assert (=> d!877566 (= (size!27211 lt!1081658) lt!1081923)))

(declare-fun b!3205103 () Bool)

(assert (=> b!3205103 (= e!1998337 0)))

(declare-fun b!3205104 () Bool)

(assert (=> b!3205104 (= e!1998337 (+ 1 (size!27211 (t!237944 lt!1081658))))))

(assert (= (and d!877566 c!538260) b!3205103))

(assert (= (and d!877566 (not c!538260)) b!3205104))

(declare-fun m!3470279 () Bool)

(assert (=> b!3205104 m!3470279))

(assert (=> b!3204495 d!877566))

(declare-fun b!3205105 () Bool)

(declare-fun e!1998340 () Bool)

(declare-fun lt!1081924 () tuple2!35506)

(assert (=> b!3205105 (= e!1998340 (= (_2!20887 lt!1081924) lt!1081647))))

(declare-fun b!3205106 () Bool)

(declare-fun e!1998339 () Bool)

(assert (=> b!3205106 (= e!1998339 (not (isEmpty!20205 (_1!20887 lt!1081924))))))

(declare-fun b!3205109 () Bool)

(declare-fun res!1304404 () Bool)

(declare-fun e!1998338 () Bool)

(assert (=> b!3205109 (=> (not res!1304404) (not e!1998338))))

(assert (=> b!3205109 (= res!1304404 (= (list!12844 (_1!20887 lt!1081924)) (_1!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081647)))))))

(declare-fun d!877570 () Bool)

(assert (=> d!877570 e!1998338))

(declare-fun res!1304403 () Bool)

(assert (=> d!877570 (=> (not res!1304403) (not e!1998338))))

(assert (=> d!877570 (= res!1304403 e!1998340)))

(declare-fun c!538261 () Bool)

(assert (=> d!877570 (= c!538261 (> (size!27210 (_1!20887 lt!1081924)) 0))))

(assert (=> d!877570 (= lt!1081924 (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081647 (BalanceConc!21205 Empty!10795) lt!1081647 (BalanceConc!21207 Empty!10796)))))

(assert (=> d!877570 (= (lex!2129 thiss!18206 rules!2135 lt!1081647) lt!1081924)))

(declare-fun b!3205110 () Bool)

(assert (=> b!3205110 (= e!1998340 e!1998339)))

(declare-fun res!1304405 () Bool)

(assert (=> b!3205110 (= res!1304405 (< (size!27212 (_2!20887 lt!1081924)) (size!27212 lt!1081647)))))

(assert (=> b!3205110 (=> (not res!1304405) (not e!1998339))))

(declare-fun b!3205111 () Bool)

(assert (=> b!3205111 (= e!1998338 (= (list!12843 (_2!20887 lt!1081924)) (_2!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081647)))))))

(assert (= (and d!877570 c!538261) b!3205110))

(assert (= (and d!877570 (not c!538261)) b!3205105))

(assert (= (and b!3205110 res!1304405) b!3205106))

(assert (= (and d!877570 res!1304403) b!3205109))

(assert (= (and b!3205109 res!1304404) b!3205111))

(declare-fun m!3470281 () Bool)

(assert (=> b!3205111 m!3470281))

(declare-fun m!3470283 () Bool)

(assert (=> b!3205111 m!3470283))

(assert (=> b!3205111 m!3470283))

(declare-fun m!3470285 () Bool)

(assert (=> b!3205111 m!3470285))

(declare-fun m!3470287 () Bool)

(assert (=> d!877570 m!3470287))

(declare-fun m!3470289 () Bool)

(assert (=> d!877570 m!3470289))

(declare-fun m!3470291 () Bool)

(assert (=> b!3205106 m!3470291))

(declare-fun m!3470293 () Bool)

(assert (=> b!3205110 m!3470293))

(declare-fun m!3470295 () Bool)

(assert (=> b!3205110 m!3470295))

(declare-fun m!3470297 () Bool)

(assert (=> b!3205109 m!3470297))

(assert (=> b!3205109 m!3470283))

(assert (=> b!3205109 m!3470283))

(assert (=> b!3205109 m!3470285))

(assert (=> b!3204495 d!877570))

(declare-fun d!877572 () Bool)

(declare-fun lt!1081927 () Int)

(assert (=> d!877572 (= lt!1081927 (size!27216 (list!12844 (_1!20887 lt!1081651))))))

(assert (=> d!877572 (= lt!1081927 (size!27217 (c!538128 (_1!20887 lt!1081651))))))

(assert (=> d!877572 (= (size!27210 (_1!20887 lt!1081651)) lt!1081927)))

(declare-fun bs!541230 () Bool)

(assert (= bs!541230 d!877572))

(assert (=> bs!541230 m!3469303))

(assert (=> bs!541230 m!3469303))

(declare-fun m!3470299 () Bool)

(assert (=> bs!541230 m!3470299))

(declare-fun m!3470301 () Bool)

(assert (=> bs!541230 m!3470301))

(assert (=> b!3204495 d!877572))

(declare-fun d!877574 () Bool)

(declare-fun lt!1081929 () BalanceConc!21204)

(assert (=> d!877574 (= (list!12843 lt!1081929) (printList!1349 thiss!18206 (list!12844 lt!1081650)))))

(assert (=> d!877574 (= lt!1081929 (printTailRec!1296 thiss!18206 lt!1081650 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!877574 (= (print!1864 thiss!18206 lt!1081650) lt!1081929)))

(declare-fun bs!541231 () Bool)

(assert (= bs!541231 d!877574))

(declare-fun m!3470303 () Bool)

(assert (=> bs!541231 m!3470303))

(assert (=> bs!541231 m!3470059))

(assert (=> bs!541231 m!3470059))

(declare-fun m!3470307 () Bool)

(assert (=> bs!541231 m!3470307))

(assert (=> bs!541231 m!3469277))

(assert (=> b!3204495 d!877574))

(declare-fun d!877578 () Bool)

(declare-fun res!1304413 () Bool)

(declare-fun e!1998350 () Bool)

(assert (=> d!877578 (=> (not res!1304413) (not e!1998350))))

(assert (=> d!877578 (= res!1304413 (not (isEmpty!20208 (originalCharacters!5924 separatorToken!241))))))

(assert (=> d!877578 (= (inv!48976 separatorToken!241) e!1998350)))

(declare-fun b!3205127 () Bool)

(declare-fun res!1304414 () Bool)

(assert (=> b!3205127 (=> (not res!1304414) (not e!1998350))))

(assert (=> b!3205127 (= res!1304414 (= (originalCharacters!5924 separatorToken!241) (list!12843 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))))))

(declare-fun b!3205128 () Bool)

(assert (=> b!3205128 (= e!1998350 (= (size!27209 separatorToken!241) (size!27211 (originalCharacters!5924 separatorToken!241))))))

(assert (= (and d!877578 res!1304413) b!3205127))

(assert (= (and b!3205127 res!1304414) b!3205128))

(declare-fun b_lambda!87705 () Bool)

(assert (=> (not b_lambda!87705) (not b!3205127)))

(assert (=> b!3205127 t!237984))

(declare-fun b_and!213271 () Bool)

(assert (= b_and!213253 (and (=> t!237984 result!199520) b_and!213271)))

(assert (=> b!3205127 t!237986))

(declare-fun b_and!213273 () Bool)

(assert (= b_and!213255 (and (=> t!237986 result!199522) b_and!213273)))

(assert (=> b!3205127 t!237988))

(declare-fun b_and!213275 () Bool)

(assert (= b_and!213257 (and (=> t!237988 result!199524) b_and!213275)))

(declare-fun m!3470353 () Bool)

(assert (=> d!877578 m!3470353))

(assert (=> b!3205127 m!3469829))

(assert (=> b!3205127 m!3469829))

(declare-fun m!3470355 () Bool)

(assert (=> b!3205127 m!3470355))

(declare-fun m!3470357 () Bool)

(assert (=> b!3205128 m!3470357))

(assert (=> start!300858 d!877578))

(declare-fun d!877584 () Bool)

(assert (=> d!877584 (= (inv!48973 (tag!5734 (rule!7648 separatorToken!241))) (= (mod (str.len (value!168944 (tag!5734 (rule!7648 separatorToken!241)))) 2) 0))))

(assert (=> b!3204496 d!877584))

(declare-fun d!877586 () Bool)

(declare-fun res!1304415 () Bool)

(declare-fun e!1998351 () Bool)

(assert (=> d!877586 (=> (not res!1304415) (not e!1998351))))

(assert (=> d!877586 (= res!1304415 (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241)))))))

(assert (=> d!877586 (= (inv!48977 (transformation!5210 (rule!7648 separatorToken!241))) e!1998351)))

(declare-fun b!3205129 () Bool)

(assert (=> b!3205129 (= e!1998351 (equivClasses!2051 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241)))))))

(assert (= (and d!877586 res!1304415) b!3205129))

(declare-fun m!3470359 () Bool)

(assert (=> d!877586 m!3470359))

(declare-fun m!3470361 () Bool)

(assert (=> b!3205129 m!3470361))

(assert (=> b!3204496 d!877586))

(declare-fun d!877588 () Bool)

(assert (=> d!877588 (= (inv!48973 (tag!5734 (rule!7648 (h!41541 tokens!494)))) (= (mod (str.len (value!168944 (tag!5734 (rule!7648 (h!41541 tokens!494))))) 2) 0))))

(assert (=> b!3204494 d!877588))

(declare-fun d!877590 () Bool)

(declare-fun res!1304416 () Bool)

(declare-fun e!1998352 () Bool)

(assert (=> d!877590 (=> (not res!1304416) (not e!1998352))))

(assert (=> d!877590 (= res!1304416 (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))))))

(assert (=> d!877590 (= (inv!48977 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) e!1998352)))

(declare-fun b!3205130 () Bool)

(assert (=> b!3205130 (= e!1998352 (equivClasses!2051 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))))))

(assert (= (and d!877590 res!1304416) b!3205130))

(declare-fun m!3470363 () Bool)

(assert (=> d!877590 m!3470363))

(declare-fun m!3470365 () Bool)

(assert (=> b!3205130 m!3470365))

(assert (=> b!3204494 d!877590))

(declare-fun b!3205131 () Bool)

(declare-fun e!1998353 () Bool)

(declare-fun e!1998355 () Bool)

(assert (=> b!3205131 (= e!1998353 e!1998355)))

(declare-fun c!538267 () Bool)

(assert (=> b!3205131 (= c!538267 ((_ is IntegerValue!16321) (value!168945 separatorToken!241)))))

(declare-fun b!3205132 () Bool)

(declare-fun res!1304417 () Bool)

(declare-fun e!1998354 () Bool)

(assert (=> b!3205132 (=> res!1304417 e!1998354)))

(assert (=> b!3205132 (= res!1304417 (not ((_ is IntegerValue!16322) (value!168945 separatorToken!241))))))

(assert (=> b!3205132 (= e!1998355 e!1998354)))

(declare-fun b!3205133 () Bool)

(assert (=> b!3205133 (= e!1998355 (inv!17 (value!168945 separatorToken!241)))))

(declare-fun d!877592 () Bool)

(declare-fun c!538268 () Bool)

(assert (=> d!877592 (= c!538268 ((_ is IntegerValue!16320) (value!168945 separatorToken!241)))))

(assert (=> d!877592 (= (inv!21 (value!168945 separatorToken!241)) e!1998353)))

(declare-fun b!3205134 () Bool)

(assert (=> b!3205134 (= e!1998354 (inv!15 (value!168945 separatorToken!241)))))

(declare-fun b!3205135 () Bool)

(assert (=> b!3205135 (= e!1998353 (inv!16 (value!168945 separatorToken!241)))))

(assert (= (and d!877592 c!538268) b!3205135))

(assert (= (and d!877592 (not c!538268)) b!3205131))

(assert (= (and b!3205131 c!538267) b!3205133))

(assert (= (and b!3205131 (not c!538267)) b!3205132))

(assert (= (and b!3205132 (not res!1304417)) b!3205134))

(declare-fun m!3470371 () Bool)

(assert (=> b!3205133 m!3470371))

(declare-fun m!3470373 () Bool)

(assert (=> b!3205134 m!3470373))

(declare-fun m!3470375 () Bool)

(assert (=> b!3205135 m!3470375))

(assert (=> b!3204482 d!877592))

(declare-fun d!877596 () Bool)

(declare-fun lt!1081942 () Bool)

(declare-fun e!1998357 () Bool)

(assert (=> d!877596 (= lt!1081942 e!1998357)))

(declare-fun res!1304420 () Bool)

(assert (=> d!877596 (=> (not res!1304420) (not e!1998357))))

(assert (=> d!877596 (= res!1304420 (= (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)))))) (list!12844 (singletonSeq!2306 (h!41541 tokens!494)))))))

(declare-fun e!1998356 () Bool)

(assert (=> d!877596 (= lt!1081942 e!1998356)))

(declare-fun res!1304418 () Bool)

(assert (=> d!877596 (=> (not res!1304418) (not e!1998356))))

(declare-fun lt!1081941 () tuple2!35506)

(assert (=> d!877596 (= res!1304418 (= (size!27210 (_1!20887 lt!1081941)) 1))))

(assert (=> d!877596 (= lt!1081941 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)))))))

(assert (=> d!877596 (not (isEmpty!20204 rules!2135))))

(assert (=> d!877596 (= (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 tokens!494)) lt!1081942)))

(declare-fun b!3205136 () Bool)

(declare-fun res!1304419 () Bool)

(assert (=> b!3205136 (=> (not res!1304419) (not e!1998356))))

(assert (=> b!3205136 (= res!1304419 (= (apply!8163 (_1!20887 lt!1081941) 0) (h!41541 tokens!494)))))

(declare-fun b!3205137 () Bool)

(assert (=> b!3205137 (= e!1998356 (isEmpty!20203 (_2!20887 lt!1081941)))))

(declare-fun b!3205138 () Bool)

(assert (=> b!3205138 (= e!1998357 (isEmpty!20203 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)))))))))

(assert (= (and d!877596 res!1304418) b!3205136))

(assert (= (and b!3205136 res!1304419) b!3205137))

(assert (= (and d!877596 res!1304420) b!3205138))

(assert (=> d!877596 m!3469219))

(assert (=> d!877596 m!3469219))

(declare-fun m!3470377 () Bool)

(assert (=> d!877596 m!3470377))

(assert (=> d!877596 m!3470377))

(declare-fun m!3470379 () Bool)

(assert (=> d!877596 m!3470379))

(assert (=> d!877596 m!3469175))

(assert (=> d!877596 m!3469219))

(declare-fun m!3470381 () Bool)

(assert (=> d!877596 m!3470381))

(declare-fun m!3470383 () Bool)

(assert (=> d!877596 m!3470383))

(declare-fun m!3470385 () Bool)

(assert (=> d!877596 m!3470385))

(declare-fun m!3470387 () Bool)

(assert (=> b!3205136 m!3470387))

(declare-fun m!3470389 () Bool)

(assert (=> b!3205137 m!3470389))

(assert (=> b!3205138 m!3469219))

(assert (=> b!3205138 m!3469219))

(assert (=> b!3205138 m!3470377))

(assert (=> b!3205138 m!3470377))

(assert (=> b!3205138 m!3470379))

(declare-fun m!3470391 () Bool)

(assert (=> b!3205138 m!3470391))

(assert (=> b!3204503 d!877596))

(declare-fun d!877598 () Bool)

(declare-fun res!1304421 () Bool)

(declare-fun e!1998358 () Bool)

(assert (=> d!877598 (=> (not res!1304421) (not e!1998358))))

(assert (=> d!877598 (= res!1304421 (not (isEmpty!20208 (originalCharacters!5924 (h!41541 tokens!494)))))))

(assert (=> d!877598 (= (inv!48976 (h!41541 tokens!494)) e!1998358)))

(declare-fun b!3205139 () Bool)

(declare-fun res!1304422 () Bool)

(assert (=> b!3205139 (=> (not res!1304422) (not e!1998358))))

(assert (=> b!3205139 (= res!1304422 (= (originalCharacters!5924 (h!41541 tokens!494)) (list!12843 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))))))

(declare-fun b!3205140 () Bool)

(assert (=> b!3205140 (= e!1998358 (= (size!27209 (h!41541 tokens!494)) (size!27211 (originalCharacters!5924 (h!41541 tokens!494)))))))

(assert (= (and d!877598 res!1304421) b!3205139))

(assert (= (and b!3205139 res!1304422) b!3205140))

(declare-fun b_lambda!87707 () Bool)

(assert (=> (not b_lambda!87707) (not b!3205139)))

(assert (=> b!3205139 t!237977))

(declare-fun b_and!213277 () Bool)

(assert (= b_and!213271 (and (=> t!237977 result!199512) b_and!213277)))

(assert (=> b!3205139 t!237979))

(declare-fun b_and!213279 () Bool)

(assert (= b_and!213273 (and (=> t!237979 result!199516) b_and!213279)))

(assert (=> b!3205139 t!237981))

(declare-fun b_and!213281 () Bool)

(assert (= b_and!213275 (and (=> t!237981 result!199518) b_and!213281)))

(declare-fun m!3470393 () Bool)

(assert (=> d!877598 m!3470393))

(assert (=> b!3205139 m!3469775))

(assert (=> b!3205139 m!3469775))

(declare-fun m!3470395 () Bool)

(assert (=> b!3205139 m!3470395))

(declare-fun m!3470397 () Bool)

(assert (=> b!3205140 m!3470397))

(assert (=> b!3204502 d!877598))

(declare-fun d!877600 () Bool)

(declare-fun res!1304430 () Bool)

(declare-fun e!1998366 () Bool)

(assert (=> d!877600 (=> res!1304430 e!1998366)))

(assert (=> d!877600 (= res!1304430 (not ((_ is Cons!36120) rules!2135)))))

(assert (=> d!877600 (= (sepAndNonSepRulesDisjointChars!1404 rules!2135 rules!2135) e!1998366)))

(declare-fun b!3205150 () Bool)

(declare-fun e!1998367 () Bool)

(assert (=> b!3205150 (= e!1998366 e!1998367)))

(declare-fun res!1304431 () Bool)

(assert (=> b!3205150 (=> (not res!1304431) (not e!1998367))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!588 (Rule!10220 List!36244) Bool)

(assert (=> b!3205150 (= res!1304431 (ruleDisjointCharsFromAllFromOtherType!588 (h!41540 rules!2135) rules!2135))))

(declare-fun b!3205151 () Bool)

(assert (=> b!3205151 (= e!1998367 (sepAndNonSepRulesDisjointChars!1404 rules!2135 (t!237945 rules!2135)))))

(assert (= (and d!877600 (not res!1304430)) b!3205150))

(assert (= (and b!3205150 res!1304431) b!3205151))

(declare-fun m!3470425 () Bool)

(assert (=> b!3205150 m!3470425))

(declare-fun m!3470427 () Bool)

(assert (=> b!3205151 m!3470427))

(assert (=> b!3204479 d!877600))

(declare-fun d!877608 () Bool)

(assert (=> d!877608 (= (isEmpty!20204 rules!2135) ((_ is Nil!36120) rules!2135))))

(assert (=> b!3204480 d!877608))

(declare-fun d!877610 () Bool)

(declare-fun lt!1081947 () Token!9786)

(assert (=> d!877610 (= lt!1081947 (apply!8165 (list!12844 (_1!20887 lt!1081664)) 0))))

(assert (=> d!877610 (= lt!1081947 (apply!8166 (c!538128 (_1!20887 lt!1081664)) 0))))

(declare-fun e!1998368 () Bool)

(assert (=> d!877610 e!1998368))

(declare-fun res!1304432 () Bool)

(assert (=> d!877610 (=> (not res!1304432) (not e!1998368))))

(assert (=> d!877610 (= res!1304432 (<= 0 0))))

(assert (=> d!877610 (= (apply!8163 (_1!20887 lt!1081664) 0) lt!1081947)))

(declare-fun b!3205152 () Bool)

(assert (=> b!3205152 (= e!1998368 (< 0 (size!27210 (_1!20887 lt!1081664))))))

(assert (= (and d!877610 res!1304432) b!3205152))

(assert (=> d!877610 m!3470075))

(assert (=> d!877610 m!3470075))

(declare-fun m!3470429 () Bool)

(assert (=> d!877610 m!3470429))

(declare-fun m!3470431 () Bool)

(assert (=> d!877610 m!3470431))

(assert (=> b!3205152 m!3469241))

(assert (=> b!3204501 d!877610))

(declare-fun b!3205157 () Bool)

(declare-fun e!1998373 () Bool)

(declare-fun e!1998376 () Bool)

(assert (=> b!3205157 (= e!1998373 e!1998376)))

(declare-fun c!538271 () Bool)

(assert (=> b!3205157 (= c!538271 ((_ is EmptyLang!9969) (regex!5210 lt!1081657)))))

(declare-fun b!3205158 () Bool)

(declare-fun e!1998374 () Bool)

(declare-fun e!1998378 () Bool)

(assert (=> b!3205158 (= e!1998374 e!1998378)))

(declare-fun res!1304440 () Bool)

(assert (=> b!3205158 (=> (not res!1304440) (not e!1998378))))

(declare-fun lt!1081948 () Bool)

(assert (=> b!3205158 (= res!1304440 (not lt!1081948))))

(declare-fun b!3205159 () Bool)

(declare-fun call!231998 () Bool)

(assert (=> b!3205159 (= e!1998373 (= lt!1081948 call!231998))))

(declare-fun b!3205160 () Bool)

(declare-fun e!1998375 () Bool)

(assert (=> b!3205160 (= e!1998375 (= (head!7027 lt!1081636) (c!538126 (regex!5210 lt!1081657))))))

(declare-fun b!3205161 () Bool)

(declare-fun e!1998379 () Bool)

(assert (=> b!3205161 (= e!1998379 (nullable!3395 (regex!5210 lt!1081657)))))

(declare-fun b!3205162 () Bool)

(declare-fun res!1304441 () Bool)

(assert (=> b!3205162 (=> (not res!1304441) (not e!1998375))))

(assert (=> b!3205162 (= res!1304441 (isEmpty!20208 (tail!5206 lt!1081636)))))

(declare-fun b!3205163 () Bool)

(declare-fun e!1998377 () Bool)

(assert (=> b!3205163 (= e!1998378 e!1998377)))

(declare-fun res!1304443 () Bool)

(assert (=> b!3205163 (=> res!1304443 e!1998377)))

(assert (=> b!3205163 (= res!1304443 call!231998)))

(declare-fun b!3205164 () Bool)

(assert (=> b!3205164 (= e!1998377 (not (= (head!7027 lt!1081636) (c!538126 (regex!5210 lt!1081657)))))))

(declare-fun b!3205165 () Bool)

(declare-fun res!1304444 () Bool)

(assert (=> b!3205165 (=> res!1304444 e!1998374)))

(assert (=> b!3205165 (= res!1304444 e!1998375)))

(declare-fun res!1304437 () Bool)

(assert (=> b!3205165 (=> (not res!1304437) (not e!1998375))))

(assert (=> b!3205165 (= res!1304437 lt!1081948)))

(declare-fun b!3205166 () Bool)

(declare-fun res!1304438 () Bool)

(assert (=> b!3205166 (=> res!1304438 e!1998377)))

(assert (=> b!3205166 (= res!1304438 (not (isEmpty!20208 (tail!5206 lt!1081636))))))

(declare-fun d!877612 () Bool)

(assert (=> d!877612 e!1998373))

(declare-fun c!538270 () Bool)

(assert (=> d!877612 (= c!538270 ((_ is EmptyExpr!9969) (regex!5210 lt!1081657)))))

(assert (=> d!877612 (= lt!1081948 e!1998379)))

(declare-fun c!538272 () Bool)

(assert (=> d!877612 (= c!538272 (isEmpty!20208 lt!1081636))))

(assert (=> d!877612 (validRegex!4549 (regex!5210 lt!1081657))))

(assert (=> d!877612 (= (matchR!4603 (regex!5210 lt!1081657) lt!1081636) lt!1081948)))

(declare-fun bm!231993 () Bool)

(assert (=> bm!231993 (= call!231998 (isEmpty!20208 lt!1081636))))

(declare-fun b!3205167 () Bool)

(declare-fun res!1304442 () Bool)

(assert (=> b!3205167 (=> (not res!1304442) (not e!1998375))))

(assert (=> b!3205167 (= res!1304442 (not call!231998))))

(declare-fun b!3205168 () Bool)

(declare-fun res!1304439 () Bool)

(assert (=> b!3205168 (=> res!1304439 e!1998374)))

(assert (=> b!3205168 (= res!1304439 (not ((_ is ElementMatch!9969) (regex!5210 lt!1081657))))))

(assert (=> b!3205168 (= e!1998376 e!1998374)))

(declare-fun b!3205169 () Bool)

(assert (=> b!3205169 (= e!1998379 (matchR!4603 (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636)) (tail!5206 lt!1081636)))))

(declare-fun b!3205170 () Bool)

(assert (=> b!3205170 (= e!1998376 (not lt!1081948))))

(assert (= (and d!877612 c!538272) b!3205161))

(assert (= (and d!877612 (not c!538272)) b!3205169))

(assert (= (and d!877612 c!538270) b!3205159))

(assert (= (and d!877612 (not c!538270)) b!3205157))

(assert (= (and b!3205157 c!538271) b!3205170))

(assert (= (and b!3205157 (not c!538271)) b!3205168))

(assert (= (and b!3205168 (not res!1304439)) b!3205165))

(assert (= (and b!3205165 res!1304437) b!3205167))

(assert (= (and b!3205167 res!1304442) b!3205162))

(assert (= (and b!3205162 res!1304441) b!3205160))

(assert (= (and b!3205165 (not res!1304444)) b!3205158))

(assert (= (and b!3205158 res!1304440) b!3205163))

(assert (= (and b!3205163 (not res!1304443)) b!3205166))

(assert (= (and b!3205166 (not res!1304438)) b!3205164))

(assert (= (or b!3205159 b!3205163 b!3205167) bm!231993))

(assert (=> b!3205162 m!3469553))

(assert (=> b!3205162 m!3469553))

(assert (=> b!3205162 m!3469555))

(assert (=> d!877612 m!3469557))

(declare-fun m!3470433 () Bool)

(assert (=> d!877612 m!3470433))

(declare-fun m!3470435 () Bool)

(assert (=> b!3205161 m!3470435))

(assert (=> b!3205164 m!3469263))

(assert (=> b!3205160 m!3469263))

(assert (=> bm!231993 m!3469557))

(assert (=> b!3205166 m!3469553))

(assert (=> b!3205166 m!3469553))

(assert (=> b!3205166 m!3469555))

(assert (=> b!3205169 m!3469263))

(assert (=> b!3205169 m!3469263))

(declare-fun m!3470437 () Bool)

(assert (=> b!3205169 m!3470437))

(assert (=> b!3205169 m!3469553))

(assert (=> b!3205169 m!3470437))

(assert (=> b!3205169 m!3469553))

(declare-fun m!3470439 () Bool)

(assert (=> b!3205169 m!3470439))

(assert (=> b!3204499 d!877612))

(declare-fun d!877614 () Bool)

(assert (=> d!877614 (= (get!11494 lt!1081646) (v!35656 lt!1081646))))

(assert (=> b!3204499 d!877614))

(declare-fun b!3205193 () Bool)

(declare-fun e!1998389 () Bool)

(declare-fun tp!1012370 () Bool)

(declare-fun tp!1012369 () Bool)

(assert (=> b!3205193 (= e!1998389 (and tp!1012370 tp!1012369))))

(declare-fun b!3205190 () Bool)

(declare-fun tp_is_empty!17291 () Bool)

(assert (=> b!3205190 (= e!1998389 tp_is_empty!17291)))

(declare-fun b!3205191 () Bool)

(declare-fun tp!1012367 () Bool)

(declare-fun tp!1012368 () Bool)

(assert (=> b!3205191 (= e!1998389 (and tp!1012367 tp!1012368))))

(assert (=> b!3204496 (= tp!1012337 e!1998389)))

(declare-fun b!3205192 () Bool)

(declare-fun tp!1012371 () Bool)

(assert (=> b!3205192 (= e!1998389 tp!1012371)))

(assert (= (and b!3204496 ((_ is ElementMatch!9969) (regex!5210 (rule!7648 separatorToken!241)))) b!3205190))

(assert (= (and b!3204496 ((_ is Concat!15409) (regex!5210 (rule!7648 separatorToken!241)))) b!3205191))

(assert (= (and b!3204496 ((_ is Star!9969) (regex!5210 (rule!7648 separatorToken!241)))) b!3205192))

(assert (= (and b!3204496 ((_ is Union!9969) (regex!5210 (rule!7648 separatorToken!241)))) b!3205193))

(declare-fun b!3205197 () Bool)

(declare-fun e!1998390 () Bool)

(declare-fun tp!1012375 () Bool)

(declare-fun tp!1012374 () Bool)

(assert (=> b!3205197 (= e!1998390 (and tp!1012375 tp!1012374))))

(declare-fun b!3205194 () Bool)

(assert (=> b!3205194 (= e!1998390 tp_is_empty!17291)))

(declare-fun b!3205195 () Bool)

(declare-fun tp!1012372 () Bool)

(declare-fun tp!1012373 () Bool)

(assert (=> b!3205195 (= e!1998390 (and tp!1012372 tp!1012373))))

(assert (=> b!3204494 (= tp!1012335 e!1998390)))

(declare-fun b!3205196 () Bool)

(declare-fun tp!1012376 () Bool)

(assert (=> b!3205196 (= e!1998390 tp!1012376)))

(assert (= (and b!3204494 ((_ is ElementMatch!9969) (regex!5210 (rule!7648 (h!41541 tokens!494))))) b!3205194))

(assert (= (and b!3204494 ((_ is Concat!15409) (regex!5210 (rule!7648 (h!41541 tokens!494))))) b!3205195))

(assert (= (and b!3204494 ((_ is Star!9969) (regex!5210 (rule!7648 (h!41541 tokens!494))))) b!3205196))

(assert (= (and b!3204494 ((_ is Union!9969) (regex!5210 (rule!7648 (h!41541 tokens!494))))) b!3205197))

(declare-fun b!3205203 () Bool)

(declare-fun e!1998395 () Bool)

(assert (=> b!3205203 (= e!1998395 true)))

(declare-fun b!3205202 () Bool)

(declare-fun e!1998394 () Bool)

(assert (=> b!3205202 (= e!1998394 e!1998395)))

(declare-fun b!3205201 () Bool)

(declare-fun e!1998393 () Bool)

(assert (=> b!3205201 (= e!1998393 e!1998394)))

(assert (=> b!3204512 e!1998393))

(assert (= b!3205202 b!3205203))

(assert (= b!3205201 b!3205202))

(assert (= (and b!3204512 ((_ is Cons!36120) (t!237945 rules!2135))) b!3205201))

(assert (=> b!3205203 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135))))) (dynLambda!14556 order!18383 lambda!117291))))

(assert (=> b!3205203 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135))))) (dynLambda!14556 order!18383 lambda!117291))))

(declare-fun b!3205208 () Bool)

(declare-fun e!1998398 () Bool)

(declare-fun tp!1012379 () Bool)

(assert (=> b!3205208 (= e!1998398 (and tp_is_empty!17291 tp!1012379))))

(assert (=> b!3204482 (= tp!1012339 e!1998398)))

(assert (= (and b!3204482 ((_ is Cons!36119) (originalCharacters!5924 separatorToken!241))) b!3205208))

(declare-fun b!3205209 () Bool)

(declare-fun e!1998399 () Bool)

(declare-fun tp!1012380 () Bool)

(assert (=> b!3205209 (= e!1998399 (and tp_is_empty!17291 tp!1012380))))

(assert (=> b!3204493 (= tp!1012345 e!1998399)))

(assert (= (and b!3204493 ((_ is Cons!36119) (originalCharacters!5924 (h!41541 tokens!494)))) b!3205209))

(declare-fun b!3205230 () Bool)

(declare-fun b_free!85213 () Bool)

(declare-fun b_next!85917 () Bool)

(assert (=> b!3205230 (= b_free!85213 (not b_next!85917))))

(declare-fun t!238010 () Bool)

(declare-fun tb!157227 () Bool)

(assert (=> (and b!3205230 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238010) tb!157227))

(declare-fun result!199554 () Bool)

(assert (= result!199554 result!199540))

(assert (=> d!877560 t!238010))

(declare-fun b_and!213283 () Bool)

(declare-fun tp!1012393 () Bool)

(assert (=> b!3205230 (= tp!1012393 (and (=> t!238010 result!199554) b_and!213283))))

(declare-fun b_free!85215 () Bool)

(declare-fun b_next!85919 () Bool)

(assert (=> b!3205230 (= b_free!85215 (not b_next!85919))))

(declare-fun t!238012 () Bool)

(declare-fun tb!157229 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238012) tb!157229))

(declare-fun result!199556 () Bool)

(assert (= result!199556 result!199512))

(assert (=> d!877460 t!238012))

(declare-fun t!238014 () Bool)

(declare-fun tb!157231 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) t!238014) tb!157231))

(declare-fun result!199558 () Bool)

(assert (= result!199558 result!199520))

(assert (=> d!877470 t!238014))

(assert (=> b!3205139 t!238012))

(assert (=> b!3205127 t!238014))

(declare-fun t!238016 () Bool)

(declare-fun tb!157233 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) t!238016) tb!157233))

(declare-fun result!199560 () Bool)

(assert (= result!199560 result!199526))

(assert (=> d!877486 t!238016))

(declare-fun b_and!213285 () Bool)

(declare-fun tp!1012391 () Bool)

(assert (=> b!3205230 (= tp!1012391 (and (=> t!238012 result!199556) (=> t!238014 result!199558) (=> t!238016 result!199560) b_and!213285))))

(declare-fun e!1998419 () Bool)

(declare-fun b!3205228 () Bool)

(declare-fun tp!1012392 () Bool)

(declare-fun e!1998416 () Bool)

(assert (=> b!3205228 (= e!1998416 (and (inv!21 (value!168945 (h!41541 (t!237946 tokens!494)))) e!1998419 tp!1012392))))

(declare-fun e!1998420 () Bool)

(declare-fun b!3205229 () Bool)

(declare-fun tp!1012395 () Bool)

(assert (=> b!3205229 (= e!1998419 (and tp!1012395 (inv!48973 (tag!5734 (rule!7648 (h!41541 (t!237946 tokens!494))))) (inv!48977 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) e!1998420))))

(assert (=> b!3205230 (= e!1998420 (and tp!1012393 tp!1012391))))

(declare-fun e!1998418 () Bool)

(declare-fun tp!1012394 () Bool)

(declare-fun b!3205227 () Bool)

(assert (=> b!3205227 (= e!1998418 (and (inv!48976 (h!41541 (t!237946 tokens!494))) e!1998416 tp!1012394))))

(assert (=> b!3204502 (= tp!1012346 e!1998418)))

(assert (= b!3205229 b!3205230))

(assert (= b!3205228 b!3205229))

(assert (= b!3205227 b!3205228))

(assert (= (and b!3204502 ((_ is Cons!36121) (t!237946 tokens!494))) b!3205227))

(declare-fun m!3470527 () Bool)

(assert (=> b!3205228 m!3470527))

(declare-fun m!3470531 () Bool)

(assert (=> b!3205229 m!3470531))

(declare-fun m!3470535 () Bool)

(assert (=> b!3205229 m!3470535))

(declare-fun m!3470539 () Bool)

(assert (=> b!3205227 m!3470539))

(declare-fun b!3205237 () Bool)

(declare-fun e!1998424 () Bool)

(declare-fun tp!1012399 () Bool)

(declare-fun tp!1012398 () Bool)

(assert (=> b!3205237 (= e!1998424 (and tp!1012399 tp!1012398))))

(declare-fun b!3205234 () Bool)

(assert (=> b!3205234 (= e!1998424 tp_is_empty!17291)))

(declare-fun b!3205235 () Bool)

(declare-fun tp!1012396 () Bool)

(declare-fun tp!1012397 () Bool)

(assert (=> b!3205235 (= e!1998424 (and tp!1012396 tp!1012397))))

(assert (=> b!3204492 (= tp!1012336 e!1998424)))

(declare-fun b!3205236 () Bool)

(declare-fun tp!1012400 () Bool)

(assert (=> b!3205236 (= e!1998424 tp!1012400)))

(assert (= (and b!3204492 ((_ is ElementMatch!9969) (regex!5210 (h!41540 rules!2135)))) b!3205234))

(assert (= (and b!3204492 ((_ is Concat!15409) (regex!5210 (h!41540 rules!2135)))) b!3205235))

(assert (= (and b!3204492 ((_ is Star!9969) (regex!5210 (h!41540 rules!2135)))) b!3205236))

(assert (= (and b!3204492 ((_ is Union!9969) (regex!5210 (h!41540 rules!2135)))) b!3205237))

(declare-fun b!3205256 () Bool)

(declare-fun b_free!85217 () Bool)

(declare-fun b_next!85921 () Bool)

(assert (=> b!3205256 (= b_free!85217 (not b_next!85921))))

(declare-fun t!238018 () Bool)

(declare-fun tb!157235 () Bool)

(assert (=> (and b!3205256 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238018) tb!157235))

(declare-fun result!199564 () Bool)

(assert (= result!199564 result!199540))

(assert (=> d!877560 t!238018))

(declare-fun b_and!213287 () Bool)

(declare-fun tp!1012410 () Bool)

(assert (=> b!3205256 (= tp!1012410 (and (=> t!238018 result!199564) b_and!213287))))

(declare-fun b_free!85219 () Bool)

(declare-fun b_next!85923 () Bool)

(assert (=> b!3205256 (= b_free!85219 (not b_next!85923))))

(declare-fun t!238020 () Bool)

(declare-fun tb!157237 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238020) tb!157237))

(declare-fun result!199566 () Bool)

(assert (= result!199566 result!199512))

(assert (=> d!877460 t!238020))

(declare-fun tb!157239 () Bool)

(declare-fun t!238022 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) t!238022) tb!157239))

(declare-fun result!199568 () Bool)

(assert (= result!199568 result!199520))

(assert (=> d!877470 t!238022))

(assert (=> b!3205139 t!238020))

(assert (=> b!3205127 t!238022))

(declare-fun tb!157241 () Bool)

(declare-fun t!238024 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) t!238024) tb!157241))

(declare-fun result!199570 () Bool)

(assert (= result!199570 result!199526))

(assert (=> d!877486 t!238024))

(declare-fun tp!1012409 () Bool)

(declare-fun b_and!213289 () Bool)

(assert (=> b!3205256 (= tp!1012409 (and (=> t!238024 result!199570) (=> t!238022 result!199568) (=> t!238020 result!199566) b_and!213289))))

(declare-fun e!1998440 () Bool)

(assert (=> b!3205256 (= e!1998440 (and tp!1012410 tp!1012409))))

(declare-fun e!1998438 () Bool)

(declare-fun b!3205255 () Bool)

(declare-fun tp!1012412 () Bool)

(assert (=> b!3205255 (= e!1998438 (and tp!1012412 (inv!48973 (tag!5734 (h!41540 (t!237945 rules!2135)))) (inv!48977 (transformation!5210 (h!41540 (t!237945 rules!2135)))) e!1998440))))

(declare-fun b!3205254 () Bool)

(declare-fun e!1998437 () Bool)

(declare-fun tp!1012411 () Bool)

(assert (=> b!3205254 (= e!1998437 (and e!1998438 tp!1012411))))

(assert (=> b!3204500 (= tp!1012344 e!1998437)))

(assert (= b!3205255 b!3205256))

(assert (= b!3205254 b!3205255))

(assert (= (and b!3204500 ((_ is Cons!36120) (t!237945 rules!2135))) b!3205254))

(declare-fun m!3470559 () Bool)

(assert (=> b!3205255 m!3470559))

(declare-fun m!3470561 () Bool)

(assert (=> b!3205255 m!3470561))

(declare-fun b_lambda!87715 () Bool)

(assert (= b_lambda!87701 (or b!3204495 b_lambda!87715)))

(declare-fun bs!541238 () Bool)

(declare-fun d!877642 () Bool)

(assert (= bs!541238 (and d!877642 b!3204495)))

(assert (=> bs!541238 (= (dynLambda!14558 lambda!117291 (h!41541 (t!237946 tokens!494))) (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 (t!237946 tokens!494))))))

(assert (=> bs!541238 m!3469261))

(assert (=> d!877538 d!877642))

(declare-fun b_lambda!87717 () Bool)

(assert (= b_lambda!87703 (or (and b!3204473 b_free!85201) (and b!3205230 b_free!85213 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204481 b_free!85205 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204488 b_free!85209 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3205256 b_free!85217 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) b_lambda!87717)))

(declare-fun b_lambda!87719 () Bool)

(assert (= b_lambda!87693 (or (and b!3205230 b_free!85215 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) (and b!3204481 b_free!85207) (and b!3204473 b_free!85203 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) b_lambda!87719)))

(declare-fun b_lambda!87721 () Bool)

(assert (= b_lambda!87695 (or (and b!3205230 b_free!85215) (and b!3204473 b_free!85203 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3204481 b_free!85207 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) b_lambda!87721)))

(declare-fun b_lambda!87723 () Bool)

(assert (= b_lambda!87685 (or b!3204471 b_lambda!87723)))

(declare-fun bs!541239 () Bool)

(declare-fun d!877644 () Bool)

(assert (= bs!541239 (and d!877644 b!3204471)))

(assert (=> bs!541239 (= (dynLambda!14558 lambda!117290 (h!41541 tokens!494)) (not (isSeparator!5210 (rule!7648 (h!41541 tokens!494)))))))

(assert (=> b!3204701 d!877644))

(declare-fun b_lambda!87725 () Bool)

(assert (= b_lambda!87707 (or (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3205230 b_free!85215 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204473 b_free!85203) (and b!3204481 b_free!85207 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) b_lambda!87725)))

(declare-fun b_lambda!87727 () Bool)

(assert (= b_lambda!87689 (or b!3204471 b_lambda!87727)))

(assert (=> d!877454 d!877644))

(declare-fun b_lambda!87729 () Bool)

(assert (= b_lambda!87687 (or b!3204471 b_lambda!87729)))

(declare-fun bs!541240 () Bool)

(declare-fun d!877646 () Bool)

(assert (= bs!541240 (and d!877646 b!3204471)))

(assert (=> bs!541240 (= (dynLambda!14558 lambda!117290 (h!41541 (t!237946 tokens!494))) (not (isSeparator!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!877452 d!877646))

(declare-fun b_lambda!87731 () Bool)

(assert (= b_lambda!87705 (or (and b!3205230 b_free!85215 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) (and b!3204481 b_free!85207) (and b!3204473 b_free!85203 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))))) b_lambda!87731)))

(declare-fun b_lambda!87733 () Bool)

(assert (= b_lambda!87691 (or (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3205230 b_free!85215 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204473 b_free!85203) (and b!3204481 b_free!85207 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) b_lambda!87733)))

(check-sat (not b!3205128) (not b!3204894) (not b!3204822) (not b!3205255) (not b!3204943) (not d!877458) (not b!3204735) (not b!3205010) (not d!877484) (not d!877590) (not b!3205109) (not b!3205007) (not b_next!85915) (not b!3205254) (not b!3205080) (not b_lambda!87729) (not b!3205079) (not b_next!85917) (not b!3204793) (not b!3204963) b_and!213283 b_and!213279 tp_is_empty!17291 (not b!3205208) (not bm!231967) (not d!877476) (not b!3205164) (not b!3204759) (not d!877492) (not b!3205076) (not b!3204831) (not d!877540) (not b!3204692) (not b!3205075) (not b!3205130) (not d!877570) (not d!877524) (not b!3205012) (not b!3205151) (not b!3204840) (not d!877322) (not b_next!85923) (not d!877446) (not d!877470) (not b!3205104) (not b!3204734) (not d!877432) (not d!877574) (not b_next!85913) (not b!3204979) (not tb!157221) (not b!3205229) (not b!3205227) (not b!3204892) (not b!3204980) (not b!3205074) (not b!3205077) (not b!3204944) (not d!877510) (not b!3204653) (not b!3205201) (not b!3204878) (not d!877556) (not b!3204971) (not b!3205161) (not d!877610) (not bm!231968) (not d!877474) (not d!877324) (not b!3204909) (not d!877394) (not d!877468) (not d!877544) (not b!3204904) (not d!877488) (not b!3204836) (not d!877414) (not d!877572) (not b!3204740) (not b!3205083) (not b!3204696) (not b!3204890) (not b!3204961) (not b_lambda!87733) (not b!3204973) (not b!3205110) (not b!3205013) (not d!877396) (not d!877554) (not b!3205129) (not b_next!85919) (not b!3204969) (not b!3205160) b_and!213285 (not b!3204885) (not b!3205236) (not b_lambda!87719) (not b!3205209) b_and!213289 (not d!877412) (not b!3204906) (not b!3204693) (not d!877452) (not b_next!85911) (not b!3204832) (not d!877380) (not b_lambda!87715) (not d!877514) (not bm!231993) (not d!877578) (not b!3205111) (not b_next!85907) (not b!3204968) (not b!3205081) (not b!3204872) (not d!877450) (not b!3205196) (not b!3205152) (not b!3205193) (not d!877538) (not b!3205235) (not b!3204769) (not b!3204783) (not b!3205133) (not d!877532) (not b!3204957) (not d!877408) (not b!3204798) (not b!3205162) (not b_next!85909) (not b!3205139) (not b!3205106) (not b!3204958) (not b!3204841) (not b_lambda!87725) (not b!3204519) (not d!877518) (not b!3204942) (not b!3205135) (not b!3204702) (not b!3205136) (not d!877460) (not b!3205150) (not b!3205197) (not b!3204691) (not b_next!85905) (not b!3204736) (not b!3204743) (not d!877530) (not b_lambda!87731) (not b!3204652) (not d!877406) b_and!213287 (not b!3204900) (not b!3205237) (not b!3204781) (not d!877400) (not d!877528) (not b!3205011) (not d!877596) (not b!3204869) (not b!3205078) (not b_lambda!87727) (not b!3205134) (not b!3204835) b_and!213265 (not d!877456) b_and!213277 (not b_lambda!87721) (not b!3204901) (not b!3204896) (not d!877416) (not b!3204821) (not tb!157209) (not b!3204770) (not d!877402) (not d!877586) (not b!3204889) (not b!3205191) (not d!877612) (not d!877542) (not b!3204738) (not b!3205082) (not d!877512) (not tb!157203) (not d!877420) (not bm!231990) (not d!877486) (not b!3205192) (not d!877536) (not bs!541238) (not b!3204970) (not bm!231989) (not b!3205127) (not b!3205169) (not d!877526) (not b_next!85921) (not d!877442) (not b!3205017) (not d!877466) (not b!3205137) (not b!3204654) (not b!3204858) (not b_lambda!87723) (not d!877448) b_and!213267 (not b!3205140) (not bm!231992) b_and!213269 (not d!877598) (not d!877546) (not b!3204690) (not b_lambda!87717) (not b!3205009) (not tb!157197) (not b!3205166) (not b!3205138) (not b!3204873) (not b!3205195) (not b!3205014) (not b!3204774) (not b!3204879) (not b!3204757) b_and!213281 (not b!3204982) (not b!3205228) (not d!877418) (not d!877454) (not d!877522) (not b!3204902) (not d!877382) (not b!3204758))
(check-sat (not b_next!85915) (not b_next!85923) (not b_next!85913) (not b_next!85911) (not b_next!85907) (not b_next!85909) (not b_next!85905) b_and!213287 (not b_next!85921) b_and!213281 (not b_next!85917) b_and!213283 b_and!213279 (not b_next!85919) b_and!213289 b_and!213285 b_and!213265 b_and!213277 b_and!213267 b_and!213269)
(get-model)

(declare-fun d!877656 () Bool)

(declare-fun c!538293 () Bool)

(assert (=> d!877656 (= c!538293 ((_ is Node!10795) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))))))

(declare-fun e!1998512 () Bool)

(assert (=> d!877656 (= (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))) e!1998512)))

(declare-fun b!3205353 () Bool)

(declare-fun inv!48982 (Conc!10795) Bool)

(assert (=> b!3205353 (= e!1998512 (inv!48982 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))))))

(declare-fun b!3205354 () Bool)

(declare-fun e!1998513 () Bool)

(assert (=> b!3205354 (= e!1998512 e!1998513)))

(declare-fun res!1304477 () Bool)

(assert (=> b!3205354 (= res!1304477 (not ((_ is Leaf!17011) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))))))))

(assert (=> b!3205354 (=> res!1304477 e!1998513)))

(declare-fun b!3205355 () Bool)

(declare-fun inv!48983 (Conc!10795) Bool)

(assert (=> b!3205355 (= e!1998513 (inv!48983 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))))))

(assert (= (and d!877656 c!538293) b!3205353))

(assert (= (and d!877656 (not c!538293)) b!3205354))

(assert (= (and b!3205354 (not res!1304477)) b!3205355))

(declare-fun m!3470591 () Bool)

(assert (=> b!3205353 m!3470591))

(declare-fun m!3470593 () Bool)

(assert (=> b!3205355 m!3470593))

(assert (=> b!3204896 d!877656))

(declare-fun d!877666 () Bool)

(declare-fun res!1304478 () Bool)

(declare-fun e!1998514 () Bool)

(assert (=> d!877666 (=> (not res!1304478) (not e!1998514))))

(assert (=> d!877666 (= res!1304478 (rulesValid!1912 thiss!18206 (t!237945 rules!2135)))))

(assert (=> d!877666 (= (rulesInvariant!4196 thiss!18206 (t!237945 rules!2135)) e!1998514)))

(declare-fun b!3205356 () Bool)

(assert (=> b!3205356 (= e!1998514 (noDuplicateTag!1908 thiss!18206 (t!237945 rules!2135) Nil!36122))))

(assert (= (and d!877666 res!1304478) b!3205356))

(declare-fun m!3470595 () Bool)

(assert (=> d!877666 m!3470595))

(declare-fun m!3470597 () Bool)

(assert (=> b!3205356 m!3470597))

(assert (=> b!3205014 d!877666))

(declare-fun d!877668 () Bool)

(assert (=> d!877668 (rulesInvariant!4196 thiss!18206 (t!237945 rules!2135))))

(declare-fun lt!1081967 () Unit!50554)

(declare-fun choose!18713 (LexerInterface!4799 Rule!10220 List!36244) Unit!50554)

(assert (=> d!877668 (= lt!1081967 (choose!18713 thiss!18206 (h!41540 rules!2135) (t!237945 rules!2135)))))

(assert (=> d!877668 (rulesInvariant!4196 thiss!18206 (Cons!36120 (h!41540 rules!2135) (t!237945 rules!2135)))))

(assert (=> d!877668 (= (lemmaInvariantOnRulesThenOnTail!347 thiss!18206 (h!41540 rules!2135) (t!237945 rules!2135)) lt!1081967)))

(declare-fun bs!541245 () Bool)

(assert (= bs!541245 d!877668))

(assert (=> bs!541245 m!3469963))

(declare-fun m!3470599 () Bool)

(assert (=> bs!541245 m!3470599))

(declare-fun m!3470601 () Bool)

(assert (=> bs!541245 m!3470601))

(assert (=> b!3205014 d!877668))

(declare-fun b!3205366 () Bool)

(declare-fun e!1998523 () Bool)

(declare-fun lt!1081968 () Option!7117)

(assert (=> b!3205366 (= e!1998523 (= (tag!5734 (get!11494 lt!1081968)) (tag!5734 (rule!7648 separatorToken!241))))))

(declare-fun b!3205367 () Bool)

(declare-fun lt!1081970 () Unit!50554)

(declare-fun lt!1081969 () Unit!50554)

(assert (=> b!3205367 (= lt!1081970 lt!1081969)))

(assert (=> b!3205367 (rulesInvariant!4196 thiss!18206 (t!237945 (t!237945 rules!2135)))))

(assert (=> b!3205367 (= lt!1081969 (lemmaInvariantOnRulesThenOnTail!347 thiss!18206 (h!41540 (t!237945 rules!2135)) (t!237945 (t!237945 rules!2135))))))

(declare-fun e!1998522 () Option!7117)

(assert (=> b!3205367 (= e!1998522 (getRuleFromTag!915 thiss!18206 (t!237945 (t!237945 rules!2135)) (tag!5734 (rule!7648 separatorToken!241))))))

(declare-fun b!3205368 () Bool)

(declare-fun e!1998525 () Option!7117)

(assert (=> b!3205368 (= e!1998525 (Some!7116 (h!41540 (t!237945 rules!2135))))))

(declare-fun b!3205369 () Bool)

(assert (=> b!3205369 (= e!1998522 None!7116)))

(declare-fun b!3205370 () Bool)

(declare-fun e!1998524 () Bool)

(assert (=> b!3205370 (= e!1998524 e!1998523)))

(declare-fun res!1304485 () Bool)

(assert (=> b!3205370 (=> (not res!1304485) (not e!1998523))))

(assert (=> b!3205370 (= res!1304485 (contains!6435 (t!237945 rules!2135) (get!11494 lt!1081968)))))

(declare-fun b!3205371 () Bool)

(assert (=> b!3205371 (= e!1998525 e!1998522)))

(declare-fun c!538296 () Bool)

(assert (=> b!3205371 (= c!538296 (and ((_ is Cons!36120) (t!237945 rules!2135)) (not (= (tag!5734 (h!41540 (t!237945 rules!2135))) (tag!5734 (rule!7648 separatorToken!241))))))))

(declare-fun d!877670 () Bool)

(assert (=> d!877670 e!1998524))

(declare-fun res!1304484 () Bool)

(assert (=> d!877670 (=> res!1304484 e!1998524)))

(assert (=> d!877670 (= res!1304484 (isEmpty!20212 lt!1081968))))

(assert (=> d!877670 (= lt!1081968 e!1998525)))

(declare-fun c!538297 () Bool)

(assert (=> d!877670 (= c!538297 (and ((_ is Cons!36120) (t!237945 rules!2135)) (= (tag!5734 (h!41540 (t!237945 rules!2135))) (tag!5734 (rule!7648 separatorToken!241)))))))

(assert (=> d!877670 (rulesInvariant!4196 thiss!18206 (t!237945 rules!2135))))

(assert (=> d!877670 (= (getRuleFromTag!915 thiss!18206 (t!237945 rules!2135) (tag!5734 (rule!7648 separatorToken!241))) lt!1081968)))

(assert (= (and d!877670 c!538297) b!3205368))

(assert (= (and d!877670 (not c!538297)) b!3205371))

(assert (= (and b!3205371 c!538296) b!3205367))

(assert (= (and b!3205371 (not c!538296)) b!3205369))

(assert (= (and d!877670 (not res!1304484)) b!3205370))

(assert (= (and b!3205370 res!1304485) b!3205366))

(declare-fun m!3470609 () Bool)

(assert (=> b!3205366 m!3470609))

(declare-fun m!3470611 () Bool)

(assert (=> b!3205367 m!3470611))

(declare-fun m!3470613 () Bool)

(assert (=> b!3205367 m!3470613))

(declare-fun m!3470615 () Bool)

(assert (=> b!3205367 m!3470615))

(assert (=> b!3205370 m!3470609))

(assert (=> b!3205370 m!3470609))

(declare-fun m!3470617 () Bool)

(assert (=> b!3205370 m!3470617))

(declare-fun m!3470619 () Bool)

(assert (=> d!877670 m!3470619))

(assert (=> d!877670 m!3469963))

(assert (=> b!3205014 d!877670))

(declare-fun d!877674 () Bool)

(declare-fun charsToBigInt!0 (List!36242 Int) Int)

(assert (=> d!877674 (= (inv!15 (value!168945 separatorToken!241)) (= (charsToBigInt!0 (text!38529 (value!168945 separatorToken!241)) 0) (value!168940 (value!168945 separatorToken!241))))))

(declare-fun bs!541246 () Bool)

(assert (= bs!541246 d!877674))

(declare-fun m!3470633 () Bool)

(assert (=> bs!541246 m!3470633))

(assert (=> b!3205134 d!877674))

(declare-fun d!877682 () Bool)

(declare-fun list!12848 (Conc!10796) List!36245)

(assert (=> d!877682 (= (list!12844 (_1!20887 lt!1081710)) (list!12848 (c!538128 (_1!20887 lt!1081710))))))

(declare-fun bs!541249 () Bool)

(assert (= bs!541249 d!877682))

(declare-fun m!3470639 () Bool)

(assert (=> bs!541249 m!3470639))

(assert (=> b!3204691 d!877682))

(declare-fun b!3205455 () Bool)

(declare-fun e!1998573 () Bool)

(declare-fun e!1998575 () Bool)

(assert (=> b!3205455 (= e!1998573 e!1998575)))

(declare-fun res!1304505 () Bool)

(declare-fun lt!1081984 () tuple2!35510)

(assert (=> b!3205455 (= res!1304505 (< (size!27211 (_2!20889 lt!1081984)) (size!27211 (list!12843 lt!1081661))))))

(assert (=> b!3205455 (=> (not res!1304505) (not e!1998575))))

(declare-fun d!877690 () Bool)

(assert (=> d!877690 e!1998573))

(declare-fun c!538331 () Bool)

(assert (=> d!877690 (= c!538331 (> (size!27216 (_1!20889 lt!1081984)) 0))))

(declare-fun e!1998574 () tuple2!35510)

(assert (=> d!877690 (= lt!1081984 e!1998574)))

(declare-fun c!538332 () Bool)

(declare-fun lt!1081985 () Option!7118)

(assert (=> d!877690 (= c!538332 ((_ is Some!7117) lt!1081985))))

(declare-fun maxPrefix!2442 (LexerInterface!4799 List!36244 List!36243) Option!7118)

(assert (=> d!877690 (= lt!1081985 (maxPrefix!2442 thiss!18206 rules!2135 (list!12843 lt!1081661)))))

(assert (=> d!877690 (= (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081661)) lt!1081984)))

(declare-fun b!3205457 () Bool)

(assert (=> b!3205457 (= e!1998574 (tuple2!35511 Nil!36121 (list!12843 lt!1081661)))))

(declare-fun b!3205459 () Bool)

(assert (=> b!3205459 (= e!1998573 (= (_2!20889 lt!1081984) (list!12843 lt!1081661)))))

(declare-fun b!3205460 () Bool)

(assert (=> b!3205460 (= e!1998575 (not (isEmpty!20206 (_1!20889 lt!1081984))))))

(declare-fun b!3205461 () Bool)

(declare-fun lt!1081986 () tuple2!35510)

(assert (=> b!3205461 (= e!1998574 (tuple2!35511 (Cons!36121 (_1!20888 (v!35657 lt!1081985)) (_1!20889 lt!1081986)) (_2!20889 lt!1081986)))))

(assert (=> b!3205461 (= lt!1081986 (lexList!1310 thiss!18206 rules!2135 (_2!20888 (v!35657 lt!1081985))))))

(assert (= (and d!877690 c!538332) b!3205461))

(assert (= (and d!877690 (not c!538332)) b!3205457))

(assert (= (and d!877690 c!538331) b!3205455))

(assert (= (and d!877690 (not c!538331)) b!3205459))

(assert (= (and b!3205455 res!1304505) b!3205460))

(declare-fun m!3470691 () Bool)

(assert (=> b!3205455 m!3470691))

(assert (=> b!3205455 m!3469523))

(declare-fun m!3470693 () Bool)

(assert (=> b!3205455 m!3470693))

(declare-fun m!3470695 () Bool)

(assert (=> d!877690 m!3470695))

(assert (=> d!877690 m!3469523))

(declare-fun m!3470697 () Bool)

(assert (=> d!877690 m!3470697))

(declare-fun m!3470699 () Bool)

(assert (=> b!3205460 m!3470699))

(declare-fun m!3470701 () Bool)

(assert (=> b!3205461 m!3470701))

(assert (=> b!3204691 d!877690))

(declare-fun d!877702 () Bool)

(assert (=> d!877702 (= (list!12843 lt!1081661) (list!12847 (c!538127 lt!1081661)))))

(declare-fun bs!541251 () Bool)

(assert (= bs!541251 d!877702))

(declare-fun m!3470707 () Bool)

(assert (=> bs!541251 m!3470707))

(assert (=> b!3204691 d!877702))

(declare-fun b!3205462 () Bool)

(declare-fun e!1998576 () Bool)

(declare-fun e!1998579 () Bool)

(assert (=> b!3205462 (= e!1998576 e!1998579)))

(declare-fun c!538334 () Bool)

(assert (=> b!3205462 (= c!538334 ((_ is EmptyLang!9969) (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636))))))

(declare-fun b!3205463 () Bool)

(declare-fun e!1998577 () Bool)

(declare-fun e!1998581 () Bool)

(assert (=> b!3205463 (= e!1998577 e!1998581)))

(declare-fun res!1304509 () Bool)

(assert (=> b!3205463 (=> (not res!1304509) (not e!1998581))))

(declare-fun lt!1081987 () Bool)

(assert (=> b!3205463 (= res!1304509 (not lt!1081987))))

(declare-fun b!3205464 () Bool)

(declare-fun call!232024 () Bool)

(assert (=> b!3205464 (= e!1998576 (= lt!1081987 call!232024))))

(declare-fun b!3205465 () Bool)

(declare-fun e!1998578 () Bool)

(assert (=> b!3205465 (= e!1998578 (= (head!7027 (tail!5206 lt!1081636)) (c!538126 (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636)))))))

(declare-fun b!3205466 () Bool)

(declare-fun e!1998582 () Bool)

(assert (=> b!3205466 (= e!1998582 (nullable!3395 (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636))))))

(declare-fun b!3205467 () Bool)

(declare-fun res!1304510 () Bool)

(assert (=> b!3205467 (=> (not res!1304510) (not e!1998578))))

(assert (=> b!3205467 (= res!1304510 (isEmpty!20208 (tail!5206 (tail!5206 lt!1081636))))))

(declare-fun b!3205468 () Bool)

(declare-fun e!1998580 () Bool)

(assert (=> b!3205468 (= e!1998581 e!1998580)))

(declare-fun res!1304512 () Bool)

(assert (=> b!3205468 (=> res!1304512 e!1998580)))

(assert (=> b!3205468 (= res!1304512 call!232024)))

(declare-fun b!3205469 () Bool)

(assert (=> b!3205469 (= e!1998580 (not (= (head!7027 (tail!5206 lt!1081636)) (c!538126 (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636))))))))

(declare-fun b!3205470 () Bool)

(declare-fun res!1304513 () Bool)

(assert (=> b!3205470 (=> res!1304513 e!1998577)))

(assert (=> b!3205470 (= res!1304513 e!1998578)))

(declare-fun res!1304506 () Bool)

(assert (=> b!3205470 (=> (not res!1304506) (not e!1998578))))

(assert (=> b!3205470 (= res!1304506 lt!1081987)))

(declare-fun b!3205471 () Bool)

(declare-fun res!1304507 () Bool)

(assert (=> b!3205471 (=> res!1304507 e!1998580)))

(assert (=> b!3205471 (= res!1304507 (not (isEmpty!20208 (tail!5206 (tail!5206 lt!1081636)))))))

(declare-fun d!877704 () Bool)

(assert (=> d!877704 e!1998576))

(declare-fun c!538333 () Bool)

(assert (=> d!877704 (= c!538333 ((_ is EmptyExpr!9969) (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636))))))

(assert (=> d!877704 (= lt!1081987 e!1998582)))

(declare-fun c!538335 () Bool)

(assert (=> d!877704 (= c!538335 (isEmpty!20208 (tail!5206 lt!1081636)))))

(assert (=> d!877704 (validRegex!4549 (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636)))))

(assert (=> d!877704 (= (matchR!4603 (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636)) (tail!5206 lt!1081636)) lt!1081987)))

(declare-fun bm!232019 () Bool)

(assert (=> bm!232019 (= call!232024 (isEmpty!20208 (tail!5206 lt!1081636)))))

(declare-fun b!3205472 () Bool)

(declare-fun res!1304511 () Bool)

(assert (=> b!3205472 (=> (not res!1304511) (not e!1998578))))

(assert (=> b!3205472 (= res!1304511 (not call!232024))))

(declare-fun b!3205473 () Bool)

(declare-fun res!1304508 () Bool)

(assert (=> b!3205473 (=> res!1304508 e!1998577)))

(assert (=> b!3205473 (= res!1304508 (not ((_ is ElementMatch!9969) (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636)))))))

(assert (=> b!3205473 (= e!1998579 e!1998577)))

(declare-fun b!3205474 () Bool)

(assert (=> b!3205474 (= e!1998582 (matchR!4603 (derivativeStep!2948 (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636)) (head!7027 (tail!5206 lt!1081636))) (tail!5206 (tail!5206 lt!1081636))))))

(declare-fun b!3205475 () Bool)

(assert (=> b!3205475 (= e!1998579 (not lt!1081987))))

(assert (= (and d!877704 c!538335) b!3205466))

(assert (= (and d!877704 (not c!538335)) b!3205474))

(assert (= (and d!877704 c!538333) b!3205464))

(assert (= (and d!877704 (not c!538333)) b!3205462))

(assert (= (and b!3205462 c!538334) b!3205475))

(assert (= (and b!3205462 (not c!538334)) b!3205473))

(assert (= (and b!3205473 (not res!1304508)) b!3205470))

(assert (= (and b!3205470 res!1304506) b!3205472))

(assert (= (and b!3205472 res!1304511) b!3205467))

(assert (= (and b!3205467 res!1304510) b!3205465))

(assert (= (and b!3205470 (not res!1304513)) b!3205463))

(assert (= (and b!3205463 res!1304509) b!3205468))

(assert (= (and b!3205468 (not res!1304512)) b!3205471))

(assert (= (and b!3205471 (not res!1304507)) b!3205469))

(assert (= (or b!3205464 b!3205468 b!3205472) bm!232019))

(assert (=> b!3205467 m!3469553))

(declare-fun m!3470713 () Bool)

(assert (=> b!3205467 m!3470713))

(assert (=> b!3205467 m!3470713))

(declare-fun m!3470715 () Bool)

(assert (=> b!3205467 m!3470715))

(assert (=> d!877704 m!3469553))

(assert (=> d!877704 m!3469555))

(assert (=> d!877704 m!3470437))

(declare-fun m!3470717 () Bool)

(assert (=> d!877704 m!3470717))

(assert (=> b!3205466 m!3470437))

(declare-fun m!3470719 () Bool)

(assert (=> b!3205466 m!3470719))

(assert (=> b!3205469 m!3469553))

(declare-fun m!3470721 () Bool)

(assert (=> b!3205469 m!3470721))

(assert (=> b!3205465 m!3469553))

(assert (=> b!3205465 m!3470721))

(assert (=> bm!232019 m!3469553))

(assert (=> bm!232019 m!3469555))

(assert (=> b!3205471 m!3469553))

(assert (=> b!3205471 m!3470713))

(assert (=> b!3205471 m!3470713))

(assert (=> b!3205471 m!3470715))

(assert (=> b!3205474 m!3469553))

(assert (=> b!3205474 m!3470721))

(assert (=> b!3205474 m!3470437))

(assert (=> b!3205474 m!3470721))

(declare-fun m!3470723 () Bool)

(assert (=> b!3205474 m!3470723))

(assert (=> b!3205474 m!3469553))

(assert (=> b!3205474 m!3470713))

(assert (=> b!3205474 m!3470723))

(assert (=> b!3205474 m!3470713))

(declare-fun m!3470725 () Bool)

(assert (=> b!3205474 m!3470725))

(assert (=> b!3205169 d!877704))

(declare-fun b!3205508 () Bool)

(declare-fun e!1998596 () Regex!9969)

(assert (=> b!3205508 (= e!1998596 (ite (= (head!7027 lt!1081636) (c!538126 (regex!5210 lt!1081657))) EmptyExpr!9969 EmptyLang!9969))))

(declare-fun e!1998600 () Regex!9969)

(declare-fun call!232034 () Regex!9969)

(declare-fun call!232036 () Regex!9969)

(declare-fun b!3205509 () Bool)

(assert (=> b!3205509 (= e!1998600 (Union!9969 (Concat!15409 call!232034 (regTwo!20450 (regex!5210 lt!1081657))) call!232036))))

(declare-fun d!877712 () Bool)

(declare-fun lt!1081993 () Regex!9969)

(assert (=> d!877712 (validRegex!4549 lt!1081993)))

(declare-fun e!1998599 () Regex!9969)

(assert (=> d!877712 (= lt!1081993 e!1998599)))

(declare-fun c!538350 () Bool)

(assert (=> d!877712 (= c!538350 (or ((_ is EmptyExpr!9969) (regex!5210 lt!1081657)) ((_ is EmptyLang!9969) (regex!5210 lt!1081657))))))

(assert (=> d!877712 (validRegex!4549 (regex!5210 lt!1081657))))

(assert (=> d!877712 (= (derivativeStep!2948 (regex!5210 lt!1081657) (head!7027 lt!1081636)) lt!1081993)))

(declare-fun b!3205510 () Bool)

(declare-fun c!538351 () Bool)

(assert (=> b!3205510 (= c!538351 ((_ is Union!9969) (regex!5210 lt!1081657)))))

(declare-fun e!1998597 () Regex!9969)

(assert (=> b!3205510 (= e!1998596 e!1998597)))

(declare-fun b!3205511 () Bool)

(declare-fun e!1998598 () Regex!9969)

(declare-fun call!232035 () Regex!9969)

(assert (=> b!3205511 (= e!1998598 (Concat!15409 call!232035 (regex!5210 lt!1081657)))))

(declare-fun bm!232028 () Bool)

(declare-fun call!232033 () Regex!9969)

(assert (=> bm!232028 (= call!232035 call!232033)))

(declare-fun bm!232029 () Bool)

(declare-fun c!538352 () Bool)

(assert (=> bm!232029 (= call!232033 (derivativeStep!2948 (ite c!538351 (regOne!20451 (regex!5210 lt!1081657)) (ite c!538352 (reg!10298 (regex!5210 lt!1081657)) (regOne!20450 (regex!5210 lt!1081657)))) (head!7027 lt!1081636)))))

(declare-fun b!3205512 () Bool)

(declare-fun c!538349 () Bool)

(assert (=> b!3205512 (= c!538349 (nullable!3395 (regOne!20450 (regex!5210 lt!1081657))))))

(assert (=> b!3205512 (= e!1998598 e!1998600)))

(declare-fun b!3205513 () Bool)

(assert (=> b!3205513 (= e!1998597 e!1998598)))

(assert (=> b!3205513 (= c!538352 ((_ is Star!9969) (regex!5210 lt!1081657)))))

(declare-fun b!3205514 () Bool)

(assert (=> b!3205514 (= e!1998599 e!1998596)))

(declare-fun c!538353 () Bool)

(assert (=> b!3205514 (= c!538353 ((_ is ElementMatch!9969) (regex!5210 lt!1081657)))))

(declare-fun bm!232030 () Bool)

(assert (=> bm!232030 (= call!232034 call!232035)))

(declare-fun bm!232031 () Bool)

(assert (=> bm!232031 (= call!232036 (derivativeStep!2948 (ite c!538351 (regTwo!20451 (regex!5210 lt!1081657)) (regTwo!20450 (regex!5210 lt!1081657))) (head!7027 lt!1081636)))))

(declare-fun b!3205515 () Bool)

(assert (=> b!3205515 (= e!1998600 (Union!9969 (Concat!15409 call!232034 (regTwo!20450 (regex!5210 lt!1081657))) EmptyLang!9969))))

(declare-fun b!3205516 () Bool)

(assert (=> b!3205516 (= e!1998599 EmptyLang!9969)))

(declare-fun b!3205517 () Bool)

(assert (=> b!3205517 (= e!1998597 (Union!9969 call!232033 call!232036))))

(assert (= (and d!877712 c!538350) b!3205516))

(assert (= (and d!877712 (not c!538350)) b!3205514))

(assert (= (and b!3205514 c!538353) b!3205508))

(assert (= (and b!3205514 (not c!538353)) b!3205510))

(assert (= (and b!3205510 c!538351) b!3205517))

(assert (= (and b!3205510 (not c!538351)) b!3205513))

(assert (= (and b!3205513 c!538352) b!3205511))

(assert (= (and b!3205513 (not c!538352)) b!3205512))

(assert (= (and b!3205512 c!538349) b!3205509))

(assert (= (and b!3205512 (not c!538349)) b!3205515))

(assert (= (or b!3205509 b!3205515) bm!232030))

(assert (= (or b!3205511 bm!232030) bm!232028))

(assert (= (or b!3205517 bm!232028) bm!232029))

(assert (= (or b!3205517 b!3205509) bm!232031))

(declare-fun m!3470739 () Bool)

(assert (=> d!877712 m!3470739))

(assert (=> d!877712 m!3470433))

(assert (=> bm!232029 m!3469263))

(declare-fun m!3470743 () Bool)

(assert (=> bm!232029 m!3470743))

(declare-fun m!3470745 () Bool)

(assert (=> b!3205512 m!3470745))

(assert (=> bm!232031 m!3469263))

(declare-fun m!3470747 () Bool)

(assert (=> bm!232031 m!3470747))

(assert (=> b!3205169 d!877712))

(assert (=> b!3205169 d!877520))

(declare-fun d!877714 () Bool)

(assert (=> d!877714 (= (tail!5206 lt!1081636) (t!237944 lt!1081636))))

(assert (=> b!3205169 d!877714))

(declare-fun b!3205519 () Bool)

(declare-fun e!1998604 () List!36243)

(declare-fun call!232039 () List!36243)

(assert (=> b!3205519 (= e!1998604 call!232039)))

(declare-fun b!3205520 () Bool)

(assert (=> b!3205520 (= e!1998604 call!232039)))

(declare-fun b!3205521 () Bool)

(declare-fun c!538356 () Bool)

(assert (=> b!3205521 (= c!538356 ((_ is Star!9969) (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))))))

(declare-fun e!1998603 () List!36243)

(declare-fun e!1998602 () List!36243)

(assert (=> b!3205521 (= e!1998603 e!1998602)))

(declare-fun b!3205522 () Bool)

(assert (=> b!3205522 (= e!1998603 (Cons!36119 (c!538126 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) Nil!36119))))

(declare-fun b!3205523 () Bool)

(declare-fun e!1998605 () List!36243)

(assert (=> b!3205523 (= e!1998605 Nil!36119)))

(declare-fun b!3205524 () Bool)

(assert (=> b!3205524 (= e!1998605 e!1998603)))

(declare-fun c!538354 () Bool)

(assert (=> b!3205524 (= c!538354 ((_ is ElementMatch!9969) (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))))))

(declare-fun call!232037 () List!36243)

(declare-fun c!538357 () Bool)

(declare-fun bm!232032 () Bool)

(declare-fun call!232038 () List!36243)

(assert (=> bm!232032 (= call!232039 (++!8660 (ite c!538357 call!232038 call!232037) (ite c!538357 call!232037 call!232038)))))

(declare-fun b!3205525 () Bool)

(assert (=> b!3205525 (= e!1998602 e!1998604)))

(assert (=> b!3205525 (= c!538357 ((_ is Union!9969) (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))))))

(declare-fun bm!232033 () Bool)

(declare-fun call!232040 () List!36243)

(assert (=> bm!232033 (= call!232040 (usedCharacters!526 (ite c!538356 (reg!10298 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) (ite c!538357 (regTwo!20451 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) (regOne!20450 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))))

(declare-fun d!877718 () Bool)

(declare-fun c!538355 () Bool)

(assert (=> d!877718 (= c!538355 (or ((_ is EmptyExpr!9969) (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) ((_ is EmptyLang!9969) (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))

(assert (=> d!877718 (= (usedCharacters!526 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) e!1998605)))

(declare-fun bm!232034 () Bool)

(assert (=> bm!232034 (= call!232037 call!232040)))

(declare-fun bm!232035 () Bool)

(assert (=> bm!232035 (= call!232038 (usedCharacters!526 (ite c!538357 (regOne!20451 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) (regTwo!20450 (ite c!538243 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))))))))

(declare-fun b!3205526 () Bool)

(assert (=> b!3205526 (= e!1998602 call!232040)))

(assert (= (and d!877718 c!538355) b!3205523))

(assert (= (and d!877718 (not c!538355)) b!3205524))

(assert (= (and b!3205524 c!538354) b!3205522))

(assert (= (and b!3205524 (not c!538354)) b!3205521))

(assert (= (and b!3205521 c!538356) b!3205526))

(assert (= (and b!3205521 (not c!538356)) b!3205525))

(assert (= (and b!3205525 c!538357) b!3205519))

(assert (= (and b!3205525 (not c!538357)) b!3205520))

(assert (= (or b!3205519 b!3205520) bm!232034))

(assert (= (or b!3205519 b!3205520) bm!232035))

(assert (= (or b!3205519 b!3205520) bm!232032))

(assert (= (or b!3205526 bm!232034) bm!232033))

(declare-fun m!3470759 () Bool)

(assert (=> bm!232032 m!3470759))

(declare-fun m!3470761 () Bool)

(assert (=> bm!232033 m!3470761))

(declare-fun m!3470763 () Bool)

(assert (=> bm!232035 m!3470763))

(assert (=> bm!231992 d!877718))

(declare-fun d!877722 () Bool)

(declare-fun nullableFct!965 (Regex!9969) Bool)

(assert (=> d!877722 (= (nullable!3395 (regex!5210 (rule!7648 separatorToken!241))) (nullableFct!965 (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun bs!541252 () Bool)

(assert (= bs!541252 d!877722))

(declare-fun m!3470765 () Bool)

(assert (=> bs!541252 m!3470765))

(assert (=> b!3204735 d!877722))

(declare-fun b!3205538 () Bool)

(declare-fun e!1998611 () List!36243)

(assert (=> b!3205538 (= e!1998611 (++!8660 (list!12847 (left!28070 (c!538127 (charsOf!3226 (h!41541 tokens!494))))) (list!12847 (right!28400 (c!538127 (charsOf!3226 (h!41541 tokens!494)))))))))

(declare-fun b!3205536 () Bool)

(declare-fun e!1998610 () List!36243)

(assert (=> b!3205536 (= e!1998610 e!1998611)))

(declare-fun c!538363 () Bool)

(assert (=> b!3205536 (= c!538363 ((_ is Leaf!17011) (c!538127 (charsOf!3226 (h!41541 tokens!494)))))))

(declare-fun b!3205537 () Bool)

(declare-fun list!12850 (IArray!21595) List!36243)

(assert (=> b!3205537 (= e!1998611 (list!12850 (xs!13913 (c!538127 (charsOf!3226 (h!41541 tokens!494))))))))

(declare-fun d!877724 () Bool)

(declare-fun c!538362 () Bool)

(assert (=> d!877724 (= c!538362 ((_ is Empty!10795) (c!538127 (charsOf!3226 (h!41541 tokens!494)))))))

(assert (=> d!877724 (= (list!12847 (c!538127 (charsOf!3226 (h!41541 tokens!494)))) e!1998610)))

(declare-fun b!3205535 () Bool)

(assert (=> b!3205535 (= e!1998610 Nil!36119)))

(assert (= (and d!877724 c!538362) b!3205535))

(assert (= (and d!877724 (not c!538362)) b!3205536))

(assert (= (and b!3205536 c!538363) b!3205537))

(assert (= (and b!3205536 (not c!538363)) b!3205538))

(declare-fun m!3470769 () Bool)

(assert (=> b!3205538 m!3470769))

(declare-fun m!3470771 () Bool)

(assert (=> b!3205538 m!3470771))

(assert (=> b!3205538 m!3470769))

(assert (=> b!3205538 m!3470771))

(declare-fun m!3470773 () Bool)

(assert (=> b!3205538 m!3470773))

(declare-fun m!3470775 () Bool)

(assert (=> b!3205537 m!3470775))

(assert (=> d!877458 d!877724))

(declare-fun b!3205541 () Bool)

(declare-fun res!1304527 () Bool)

(declare-fun e!1998612 () Bool)

(assert (=> b!3205541 (=> (not res!1304527) (not e!1998612))))

(declare-fun lt!1081995 () List!36243)

(assert (=> b!3205541 (= res!1304527 (= (size!27211 lt!1081995) (+ (size!27211 (ite c!538243 call!231995 call!231994)) (size!27211 (ite c!538243 call!231994 call!231995)))))))

(declare-fun e!1998613 () List!36243)

(declare-fun b!3205539 () Bool)

(assert (=> b!3205539 (= e!1998613 (ite c!538243 call!231994 call!231995))))

(declare-fun b!3205542 () Bool)

(assert (=> b!3205542 (= e!1998612 (or (not (= (ite c!538243 call!231994 call!231995) Nil!36119)) (= lt!1081995 (ite c!538243 call!231995 call!231994))))))

(declare-fun d!877728 () Bool)

(assert (=> d!877728 e!1998612))

(declare-fun res!1304528 () Bool)

(assert (=> d!877728 (=> (not res!1304528) (not e!1998612))))

(assert (=> d!877728 (= res!1304528 (= (content!4882 lt!1081995) ((_ map or) (content!4882 (ite c!538243 call!231995 call!231994)) (content!4882 (ite c!538243 call!231994 call!231995)))))))

(assert (=> d!877728 (= lt!1081995 e!1998613)))

(declare-fun c!538364 () Bool)

(assert (=> d!877728 (= c!538364 ((_ is Nil!36119) (ite c!538243 call!231995 call!231994)))))

(assert (=> d!877728 (= (++!8660 (ite c!538243 call!231995 call!231994) (ite c!538243 call!231994 call!231995)) lt!1081995)))

(declare-fun b!3205540 () Bool)

(assert (=> b!3205540 (= e!1998613 (Cons!36119 (h!41539 (ite c!538243 call!231995 call!231994)) (++!8660 (t!237944 (ite c!538243 call!231995 call!231994)) (ite c!538243 call!231994 call!231995))))))

(assert (= (and d!877728 c!538364) b!3205539))

(assert (= (and d!877728 (not c!538364)) b!3205540))

(assert (= (and d!877728 res!1304528) b!3205541))

(assert (= (and b!3205541 res!1304527) b!3205542))

(declare-fun m!3470777 () Bool)

(assert (=> b!3205541 m!3470777))

(declare-fun m!3470779 () Bool)

(assert (=> b!3205541 m!3470779))

(declare-fun m!3470781 () Bool)

(assert (=> b!3205541 m!3470781))

(declare-fun m!3470783 () Bool)

(assert (=> d!877728 m!3470783))

(declare-fun m!3470785 () Bool)

(assert (=> d!877728 m!3470785))

(declare-fun m!3470787 () Bool)

(assert (=> d!877728 m!3470787))

(declare-fun m!3470789 () Bool)

(assert (=> b!3205540 m!3470789))

(assert (=> bm!231989 d!877728))

(declare-fun d!877730 () Bool)

(declare-fun lt!1081996 () Token!9786)

(assert (=> d!877730 (= lt!1081996 (apply!8165 (list!12844 (_1!20887 lt!1081814)) 0))))

(assert (=> d!877730 (= lt!1081996 (apply!8166 (c!538128 (_1!20887 lt!1081814)) 0))))

(declare-fun e!1998614 () Bool)

(assert (=> d!877730 e!1998614))

(declare-fun res!1304529 () Bool)

(assert (=> d!877730 (=> (not res!1304529) (not e!1998614))))

(assert (=> d!877730 (= res!1304529 (<= 0 0))))

(assert (=> d!877730 (= (apply!8163 (_1!20887 lt!1081814) 0) lt!1081996)))

(declare-fun b!3205543 () Bool)

(assert (=> b!3205543 (= e!1998614 (< 0 (size!27210 (_1!20887 lt!1081814))))))

(assert (= (and d!877730 res!1304529) b!3205543))

(declare-fun m!3470791 () Bool)

(assert (=> d!877730 m!3470791))

(assert (=> d!877730 m!3470791))

(declare-fun m!3470793 () Bool)

(assert (=> d!877730 m!3470793))

(declare-fun m!3470795 () Bool)

(assert (=> d!877730 m!3470795))

(assert (=> b!3205543 m!3469951))

(assert (=> b!3204942 d!877730))

(declare-fun d!877732 () Bool)

(assert (=> d!877732 (= (get!11496 lt!1081904) (v!35657 lt!1081904))))

(assert (=> b!3205078 d!877732))

(declare-fun d!877734 () Bool)

(assert (=> d!877734 (= (apply!8164 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))) (seqFromList!3492 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904))))) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904))))) (seqFromList!3492 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904))))))))

(declare-fun b_lambda!87755 () Bool)

(assert (=> (not b_lambda!87755) (not d!877734)))

(declare-fun tb!157259 () Bool)

(declare-fun t!238046 () Bool)

(assert (=> (and b!3204473 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238046) tb!157259))

(declare-fun result!199596 () Bool)

(assert (=> tb!157259 (= result!199596 (inv!21 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904))))) (seqFromList!3492 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904)))))))))

(declare-fun m!3470797 () Bool)

(assert (=> tb!157259 m!3470797))

(assert (=> d!877734 t!238046))

(declare-fun b_and!213299 () Bool)

(assert (= b_and!213265 (and (=> t!238046 result!199596) b_and!213299)))

(declare-fun t!238048 () Bool)

(declare-fun tb!157261 () Bool)

(assert (=> (and b!3205256 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238048) tb!157261))

(declare-fun result!199598 () Bool)

(assert (= result!199598 result!199596))

(assert (=> d!877734 t!238048))

(declare-fun b_and!213301 () Bool)

(assert (= b_and!213287 (and (=> t!238048 result!199598) b_and!213301)))

(declare-fun tb!157263 () Bool)

(declare-fun t!238050 () Bool)

(assert (=> (and b!3205230 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238050) tb!157263))

(declare-fun result!199600 () Bool)

(assert (= result!199600 result!199596))

(assert (=> d!877734 t!238050))

(declare-fun b_and!213303 () Bool)

(assert (= b_and!213283 (and (=> t!238050 result!199600) b_and!213303)))

(declare-fun tb!157265 () Bool)

(declare-fun t!238052 () Bool)

(assert (=> (and b!3204481 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238052) tb!157265))

(declare-fun result!199602 () Bool)

(assert (= result!199602 result!199596))

(assert (=> d!877734 t!238052))

(declare-fun b_and!213305 () Bool)

(assert (= b_and!213267 (and (=> t!238052 result!199602) b_and!213305)))

(declare-fun tb!157267 () Bool)

(declare-fun t!238054 () Bool)

(assert (=> (and b!3204488 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238054) tb!157267))

(declare-fun result!199604 () Bool)

(assert (= result!199604 result!199596))

(assert (=> d!877734 t!238054))

(declare-fun b_and!213307 () Bool)

(assert (= b_and!213269 (and (=> t!238054 result!199604) b_and!213307)))

(assert (=> d!877734 m!3470233))

(declare-fun m!3470799 () Bool)

(assert (=> d!877734 m!3470799))

(assert (=> b!3205078 d!877734))

(declare-fun d!877736 () Bool)

(assert (=> d!877736 (= (seqFromList!3492 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904)))) (fromListB!1535 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904)))))))

(declare-fun bs!541254 () Bool)

(assert (= bs!541254 d!877736))

(declare-fun m!3470801 () Bool)

(assert (=> bs!541254 m!3470801))

(assert (=> b!3205078 d!877736))

(declare-fun d!877738 () Bool)

(declare-fun res!1304532 () Bool)

(declare-fun e!1998626 () Bool)

(assert (=> d!877738 (=> res!1304532 e!1998626)))

(assert (=> d!877738 (= res!1304532 ((_ is Nil!36121) (list!12844 (seqFromList!3491 tokens!494))))))

(assert (=> d!877738 (= (forall!7368 (list!12844 (seqFromList!3491 tokens!494)) lambda!117301) e!1998626)))

(declare-fun b!3205562 () Bool)

(declare-fun e!1998627 () Bool)

(assert (=> b!3205562 (= e!1998626 e!1998627)))

(declare-fun res!1304533 () Bool)

(assert (=> b!3205562 (=> (not res!1304533) (not e!1998627))))

(assert (=> b!3205562 (= res!1304533 (dynLambda!14558 lambda!117301 (h!41541 (list!12844 (seqFromList!3491 tokens!494)))))))

(declare-fun b!3205563 () Bool)

(assert (=> b!3205563 (= e!1998627 (forall!7368 (t!237946 (list!12844 (seqFromList!3491 tokens!494))) lambda!117301))))

(assert (= (and d!877738 (not res!1304532)) b!3205562))

(assert (= (and b!3205562 res!1304533) b!3205563))

(declare-fun b_lambda!87757 () Bool)

(assert (=> (not b_lambda!87757) (not b!3205562)))

(declare-fun m!3470803 () Bool)

(assert (=> b!3205562 m!3470803))

(declare-fun m!3470805 () Bool)

(assert (=> b!3205563 m!3470805))

(assert (=> d!877432 d!877738))

(declare-fun d!877740 () Bool)

(assert (=> d!877740 (= (list!12844 (seqFromList!3491 tokens!494)) (list!12848 (c!538128 (seqFromList!3491 tokens!494))))))

(declare-fun bs!541255 () Bool)

(assert (= bs!541255 d!877740))

(declare-fun m!3470807 () Bool)

(assert (=> bs!541255 m!3470807))

(assert (=> d!877432 d!877740))

(declare-fun d!877742 () Bool)

(declare-fun lt!1082001 () Bool)

(assert (=> d!877742 (= lt!1082001 (forall!7368 (list!12844 (seqFromList!3491 tokens!494)) lambda!117301))))

(declare-fun forall!7371 (Conc!10796 Int) Bool)

(assert (=> d!877742 (= lt!1082001 (forall!7371 (c!538128 (seqFromList!3491 tokens!494)) lambda!117301))))

(assert (=> d!877742 (= (forall!7369 (seqFromList!3491 tokens!494) lambda!117301) lt!1082001)))

(declare-fun bs!541256 () Bool)

(assert (= bs!541256 d!877742))

(assert (=> bs!541256 m!3469297))

(assert (=> bs!541256 m!3469693))

(assert (=> bs!541256 m!3469693))

(assert (=> bs!541256 m!3469695))

(declare-fun m!3470809 () Bool)

(assert (=> bs!541256 m!3470809))

(assert (=> d!877432 d!877742))

(assert (=> d!877432 d!877608))

(declare-fun d!877744 () Bool)

(declare-fun lt!1082002 () Int)

(assert (=> d!877744 (>= lt!1082002 0)))

(declare-fun e!1998628 () Int)

(assert (=> d!877744 (= lt!1082002 e!1998628)))

(declare-fun c!538373 () Bool)

(assert (=> d!877744 (= c!538373 ((_ is Nil!36119) lt!1081793))))

(assert (=> d!877744 (= (size!27211 lt!1081793) lt!1082002)))

(declare-fun b!3205564 () Bool)

(assert (=> b!3205564 (= e!1998628 0)))

(declare-fun b!3205565 () Bool)

(assert (=> b!3205565 (= e!1998628 (+ 1 (size!27211 (t!237944 lt!1081793))))))

(assert (= (and d!877744 c!538373) b!3205564))

(assert (= (and d!877744 (not c!538373)) b!3205565))

(declare-fun m!3470811 () Bool)

(assert (=> b!3205565 m!3470811))

(assert (=> b!3204879 d!877744))

(declare-fun d!877746 () Bool)

(declare-fun lt!1082003 () Int)

(assert (=> d!877746 (>= lt!1082003 0)))

(declare-fun e!1998629 () Int)

(assert (=> d!877746 (= lt!1082003 e!1998629)))

(declare-fun c!538374 () Bool)

(assert (=> d!877746 (= c!538374 ((_ is Nil!36119) (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!877746 (= (size!27211 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) lt!1082003)))

(declare-fun b!3205566 () Bool)

(assert (=> b!3205566 (= e!1998629 0)))

(declare-fun b!3205567 () Bool)

(assert (=> b!3205567 (= e!1998629 (+ 1 (size!27211 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))))

(assert (= (and d!877746 c!538374) b!3205566))

(assert (= (and d!877746 (not c!538374)) b!3205567))

(declare-fun m!3470813 () Bool)

(assert (=> b!3205567 m!3470813))

(assert (=> b!3204879 d!877746))

(declare-fun d!877748 () Bool)

(declare-fun lt!1082004 () Int)

(assert (=> d!877748 (>= lt!1082004 0)))

(declare-fun e!1998630 () Int)

(assert (=> d!877748 (= lt!1082004 e!1998630)))

(declare-fun c!538375 () Bool)

(assert (=> d!877748 (= c!538375 ((_ is Nil!36119) lt!1081636))))

(assert (=> d!877748 (= (size!27211 lt!1081636) lt!1082004)))

(declare-fun b!3205568 () Bool)

(assert (=> b!3205568 (= e!1998630 0)))

(declare-fun b!3205569 () Bool)

(assert (=> b!3205569 (= e!1998630 (+ 1 (size!27211 (t!237944 lt!1081636))))))

(assert (= (and d!877748 c!538375) b!3205568))

(assert (= (and d!877748 (not c!538375)) b!3205569))

(declare-fun m!3470815 () Bool)

(assert (=> b!3205569 m!3470815))

(assert (=> b!3204879 d!877748))

(declare-fun d!877750 () Bool)

(declare-fun res!1304535 () Bool)

(declare-fun e!1998636 () Bool)

(assert (=> d!877750 (=> res!1304535 e!1998636)))

(assert (=> d!877750 (= res!1304535 ((_ is Nil!36121) (t!237946 tokens!494)))))

(assert (=> d!877750 (= (forall!7368 (t!237946 tokens!494) lambda!117290) e!1998636)))

(declare-fun b!3205579 () Bool)

(declare-fun e!1998637 () Bool)

(assert (=> b!3205579 (= e!1998636 e!1998637)))

(declare-fun res!1304536 () Bool)

(assert (=> b!3205579 (=> (not res!1304536) (not e!1998637))))

(assert (=> b!3205579 (= res!1304536 (dynLambda!14558 lambda!117290 (h!41541 (t!237946 tokens!494))))))

(declare-fun b!3205580 () Bool)

(assert (=> b!3205580 (= e!1998637 (forall!7368 (t!237946 (t!237946 tokens!494)) lambda!117290))))

(assert (= (and d!877750 (not res!1304535)) b!3205579))

(assert (= (and b!3205579 res!1304536) b!3205580))

(declare-fun b_lambda!87759 () Bool)

(assert (=> (not b_lambda!87759) (not b!3205579)))

(assert (=> b!3205579 m!3469751))

(declare-fun m!3470817 () Bool)

(assert (=> b!3205580 m!3470817))

(assert (=> b!3204702 d!877750))

(declare-fun d!877752 () Bool)

(declare-fun lt!1082006 () Bool)

(assert (=> d!877752 (= lt!1082006 (isEmpty!20208 (list!12843 (_2!20887 lt!1081941))))))

(assert (=> d!877752 (= lt!1082006 (isEmpty!20210 (c!538127 (_2!20887 lt!1081941))))))

(assert (=> d!877752 (= (isEmpty!20203 (_2!20887 lt!1081941)) lt!1082006)))

(declare-fun bs!541257 () Bool)

(assert (= bs!541257 d!877752))

(declare-fun m!3470819 () Bool)

(assert (=> bs!541257 m!3470819))

(assert (=> bs!541257 m!3470819))

(declare-fun m!3470821 () Bool)

(assert (=> bs!541257 m!3470821))

(declare-fun m!3470823 () Bool)

(assert (=> bs!541257 m!3470823))

(assert (=> b!3205137 d!877752))

(declare-fun d!877754 () Bool)

(assert (=> d!877754 (= (list!12843 lt!1081795) (list!12847 (c!538127 lt!1081795)))))

(declare-fun bs!541258 () Bool)

(assert (= bs!541258 d!877754))

(declare-fun m!3470827 () Bool)

(assert (=> bs!541258 m!3470827))

(assert (=> d!877470 d!877754))

(declare-fun d!877756 () Bool)

(declare-fun lt!1082027 () List!36243)

(assert (=> d!877756 (= lt!1082027 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (printList!1349 thiss!18206 (dropList!1075 lt!1081650 0))))))

(declare-fun e!1998652 () List!36243)

(assert (=> d!877756 (= lt!1082027 e!1998652)))

(declare-fun c!538391 () Bool)

(assert (=> d!877756 (= c!538391 ((_ is Cons!36121) (dropList!1075 lt!1081650 0)))))

(assert (=> d!877756 (= (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081650 0) (list!12843 (BalanceConc!21205 Empty!10795))) lt!1082027)))

(declare-fun b!3205606 () Bool)

(assert (=> b!3205606 (= e!1998652 (printListTailRec!558 thiss!18206 (t!237946 (dropList!1075 lt!1081650 0)) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (h!41541 (dropList!1075 lt!1081650 0)))))))))

(declare-fun lt!1082028 () List!36243)

(assert (=> b!3205606 (= lt!1082028 (list!12843 (charsOf!3226 (h!41541 (dropList!1075 lt!1081650 0)))))))

(declare-fun lt!1082026 () List!36243)

(assert (=> b!3205606 (= lt!1082026 (printList!1349 thiss!18206 (t!237946 (dropList!1075 lt!1081650 0))))))

(declare-fun lt!1082030 () Unit!50554)

(assert (=> b!3205606 (= lt!1082030 (lemmaConcatAssociativity!1730 (list!12843 (BalanceConc!21205 Empty!10795)) lt!1082028 lt!1082026))))

(assert (=> b!3205606 (= (++!8660 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) lt!1082028) lt!1082026) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (++!8660 lt!1082028 lt!1082026)))))

(declare-fun lt!1082029 () Unit!50554)

(assert (=> b!3205606 (= lt!1082029 lt!1082030)))

(declare-fun b!3205607 () Bool)

(assert (=> b!3205607 (= e!1998652 (list!12843 (BalanceConc!21205 Empty!10795)))))

(assert (= (and d!877756 c!538391) b!3205606))

(assert (= (and d!877756 (not c!538391)) b!3205607))

(assert (=> d!877756 m!3470035))

(declare-fun m!3470885 () Bool)

(assert (=> d!877756 m!3470885))

(assert (=> d!877756 m!3469595))

(assert (=> d!877756 m!3470885))

(declare-fun m!3470887 () Bool)

(assert (=> d!877756 m!3470887))

(declare-fun m!3470889 () Bool)

(assert (=> b!3205606 m!3470889))

(declare-fun m!3470891 () Bool)

(assert (=> b!3205606 m!3470891))

(declare-fun m!3470893 () Bool)

(assert (=> b!3205606 m!3470893))

(declare-fun m!3470895 () Bool)

(assert (=> b!3205606 m!3470895))

(assert (=> b!3205606 m!3469595))

(assert (=> b!3205606 m!3470895))

(assert (=> b!3205606 m!3470889))

(assert (=> b!3205606 m!3469595))

(declare-fun m!3470897 () Bool)

(assert (=> b!3205606 m!3470897))

(declare-fun m!3470899 () Bool)

(assert (=> b!3205606 m!3470899))

(assert (=> b!3205606 m!3469595))

(declare-fun m!3470901 () Bool)

(assert (=> b!3205606 m!3470901))

(assert (=> b!3205606 m!3469595))

(declare-fun m!3470903 () Bool)

(assert (=> b!3205606 m!3470903))

(declare-fun m!3470905 () Bool)

(assert (=> b!3205606 m!3470905))

(assert (=> b!3205606 m!3470893))

(assert (=> b!3205606 m!3470897))

(assert (=> b!3205606 m!3470903))

(declare-fun m!3470907 () Bool)

(assert (=> b!3205606 m!3470907))

(assert (=> d!877532 d!877756))

(declare-fun d!877770 () Bool)

(assert (=> d!877770 (= (list!12843 (BalanceConc!21205 Empty!10795)) (list!12847 (c!538127 (BalanceConc!21205 Empty!10795))))))

(declare-fun bs!541259 () Bool)

(assert (= bs!541259 d!877770))

(declare-fun m!3470909 () Bool)

(assert (=> bs!541259 m!3470909))

(assert (=> d!877532 d!877770))

(declare-fun d!877772 () Bool)

(assert (=> d!877772 (= (dropList!1075 lt!1081650 0) (drop!1858 (list!12848 (c!538128 lt!1081650)) 0))))

(declare-fun bs!541260 () Bool)

(assert (= bs!541260 d!877772))

(declare-fun m!3470913 () Bool)

(assert (=> bs!541260 m!3470913))

(assert (=> bs!541260 m!3470913))

(declare-fun m!3470915 () Bool)

(assert (=> bs!541260 m!3470915))

(assert (=> d!877532 d!877772))

(declare-fun d!877776 () Bool)

(declare-fun lt!1082035 () Int)

(assert (=> d!877776 (= lt!1082035 (size!27216 (list!12844 lt!1081650)))))

(assert (=> d!877776 (= lt!1082035 (size!27217 (c!538128 lt!1081650)))))

(assert (=> d!877776 (= (size!27210 lt!1081650) lt!1082035)))

(declare-fun bs!541261 () Bool)

(assert (= bs!541261 d!877776))

(assert (=> bs!541261 m!3470059))

(assert (=> bs!541261 m!3470059))

(declare-fun m!3470919 () Bool)

(assert (=> bs!541261 m!3470919))

(declare-fun m!3470921 () Bool)

(assert (=> bs!541261 m!3470921))

(assert (=> d!877532 d!877776))

(declare-fun d!877778 () Bool)

(assert (=> d!877778 (= (list!12843 lt!1081847) (list!12847 (c!538127 lt!1081847)))))

(declare-fun bs!541262 () Bool)

(assert (= bs!541262 d!877778))

(declare-fun m!3470925 () Bool)

(assert (=> bs!541262 m!3470925))

(assert (=> d!877532 d!877778))

(declare-fun d!877780 () Bool)

(assert (=> d!877780 true))

(declare-fun lambda!117304 () Int)

(declare-fun order!18387 () Int)

(declare-fun dynLambda!14564 (Int Int) Int)

(assert (=> d!877780 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (dynLambda!14564 order!18387 lambda!117304))))

(declare-fun Forall2!861 (Int) Bool)

(assert (=> d!877780 (= (equivClasses!2051 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (Forall2!861 lambda!117304))))

(declare-fun bs!541263 () Bool)

(assert (= bs!541263 d!877780))

(declare-fun m!3470933 () Bool)

(assert (=> bs!541263 m!3470933))

(assert (=> b!3205130 d!877780))

(declare-fun b!3205622 () Bool)

(declare-fun e!1998663 () List!36243)

(assert (=> b!3205622 (= e!1998663 (++!8660 (list!12847 (left!28070 (c!538127 (charsOf!3226 separatorToken!241)))) (list!12847 (right!28400 (c!538127 (charsOf!3226 separatorToken!241))))))))

(declare-fun b!3205620 () Bool)

(declare-fun e!1998662 () List!36243)

(assert (=> b!3205620 (= e!1998662 e!1998663)))

(declare-fun c!538393 () Bool)

(assert (=> b!3205620 (= c!538393 ((_ is Leaf!17011) (c!538127 (charsOf!3226 separatorToken!241))))))

(declare-fun b!3205621 () Bool)

(assert (=> b!3205621 (= e!1998663 (list!12850 (xs!13913 (c!538127 (charsOf!3226 separatorToken!241)))))))

(declare-fun d!877786 () Bool)

(declare-fun c!538392 () Bool)

(assert (=> d!877786 (= c!538392 ((_ is Empty!10795) (c!538127 (charsOf!3226 separatorToken!241))))))

(assert (=> d!877786 (= (list!12847 (c!538127 (charsOf!3226 separatorToken!241))) e!1998662)))

(declare-fun b!3205619 () Bool)

(assert (=> b!3205619 (= e!1998662 Nil!36119)))

(assert (= (and d!877786 c!538392) b!3205619))

(assert (= (and d!877786 (not c!538392)) b!3205620))

(assert (= (and b!3205620 c!538393) b!3205621))

(assert (= (and b!3205620 (not c!538393)) b!3205622))

(declare-fun m!3470935 () Bool)

(assert (=> b!3205622 m!3470935))

(declare-fun m!3470937 () Bool)

(assert (=> b!3205622 m!3470937))

(assert (=> b!3205622 m!3470935))

(assert (=> b!3205622 m!3470937))

(declare-fun m!3470939 () Bool)

(assert (=> b!3205622 m!3470939))

(declare-fun m!3470941 () Bool)

(assert (=> b!3205621 m!3470941))

(assert (=> d!877484 d!877786))

(declare-fun d!877788 () Bool)

(assert (=> d!877788 (= (list!12844 lt!1081832) (list!12848 (c!538128 lt!1081832)))))

(declare-fun bs!541264 () Bool)

(assert (= bs!541264 d!877788))

(declare-fun m!3470943 () Bool)

(assert (=> bs!541264 m!3470943))

(assert (=> d!877524 d!877788))

(declare-fun d!877790 () Bool)

(declare-fun e!1998670 () Bool)

(assert (=> d!877790 e!1998670))

(declare-fun res!1304552 () Bool)

(assert (=> d!877790 (=> (not res!1304552) (not e!1998670))))

(declare-fun lt!1082043 () BalanceConc!21206)

(assert (=> d!877790 (= res!1304552 (= (list!12844 lt!1082043) (Cons!36121 (h!41541 (t!237946 tokens!494)) Nil!36121)))))

(declare-fun choose!18715 (Token!9786) BalanceConc!21206)

(assert (=> d!877790 (= lt!1082043 (choose!18715 (h!41541 (t!237946 tokens!494))))))

(assert (=> d!877790 (= (singleton!991 (h!41541 (t!237946 tokens!494))) lt!1082043)))

(declare-fun b!3205631 () Bool)

(assert (=> b!3205631 (= e!1998670 (isBalanced!3212 (c!538128 lt!1082043)))))

(assert (= (and d!877790 res!1304552) b!3205631))

(declare-fun m!3470945 () Bool)

(assert (=> d!877790 m!3470945))

(declare-fun m!3470947 () Bool)

(assert (=> d!877790 m!3470947))

(declare-fun m!3470949 () Bool)

(assert (=> b!3205631 m!3470949))

(assert (=> d!877524 d!877790))

(declare-fun d!877792 () Bool)

(declare-fun c!538399 () Bool)

(assert (=> d!877792 (= c!538399 ((_ is Nil!36119) lt!1081792))))

(declare-fun e!1998675 () (InoxSet C!20124))

(assert (=> d!877792 (= (content!4882 lt!1081792) e!1998675)))

(declare-fun b!3205639 () Bool)

(assert (=> b!3205639 (= e!1998675 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3205640 () Bool)

(assert (=> b!3205640 (= e!1998675 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081792) true) (content!4882 (t!237944 lt!1081792))))))

(assert (= (and d!877792 c!538399) b!3205639))

(assert (= (and d!877792 (not c!538399)) b!3205640))

(declare-fun m!3470959 () Bool)

(assert (=> b!3205640 m!3470959))

(declare-fun m!3470961 () Bool)

(assert (=> b!3205640 m!3470961))

(assert (=> d!877466 d!877792))

(declare-fun d!877796 () Bool)

(declare-fun c!538400 () Bool)

(assert (=> d!877796 (= c!538400 ((_ is Nil!36119) (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)))))

(declare-fun e!1998676 () (InoxSet C!20124))

(assert (=> d!877796 (= (content!4882 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) e!1998676)))

(declare-fun b!3205641 () Bool)

(assert (=> b!3205641 (= e!1998676 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3205642 () Bool)

(assert (=> b!3205642 (= e!1998676 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) true) (content!4882 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)))))))

(assert (= (and d!877796 c!538400) b!3205641))

(assert (= (and d!877796 (not c!538400)) b!3205642))

(declare-fun m!3470963 () Bool)

(assert (=> b!3205642 m!3470963))

(declare-fun m!3470965 () Bool)

(assert (=> b!3205642 m!3470965))

(assert (=> d!877466 d!877796))

(declare-fun d!877798 () Bool)

(declare-fun c!538401 () Bool)

(assert (=> d!877798 (= c!538401 ((_ is Nil!36119) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))

(declare-fun e!1998677 () (InoxSet C!20124))

(assert (=> d!877798 (= (content!4882 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)) e!1998677)))

(declare-fun b!3205643 () Bool)

(assert (=> b!3205643 (= e!1998677 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3205644 () Bool)

(assert (=> b!3205644 (= e!1998677 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)) true) (content!4882 (t!237944 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(assert (= (and d!877798 c!538401) b!3205643))

(assert (= (and d!877798 (not c!538401)) b!3205644))

(declare-fun m!3470967 () Bool)

(assert (=> b!3205644 m!3470967))

(declare-fun m!3470969 () Bool)

(assert (=> b!3205644 m!3470969))

(assert (=> d!877466 d!877798))

(declare-fun d!877800 () Bool)

(assert (=> d!877800 (= (list!12843 lt!1081929) (list!12847 (c!538127 lt!1081929)))))

(declare-fun bs!541265 () Bool)

(assert (= bs!541265 d!877800))

(declare-fun m!3470971 () Bool)

(assert (=> bs!541265 m!3470971))

(assert (=> d!877574 d!877800))

(declare-fun d!877802 () Bool)

(declare-fun c!538402 () Bool)

(assert (=> d!877802 (= c!538402 ((_ is Cons!36121) (list!12844 lt!1081650)))))

(declare-fun e!1998678 () List!36243)

(assert (=> d!877802 (= (printList!1349 thiss!18206 (list!12844 lt!1081650)) e!1998678)))

(declare-fun b!3205645 () Bool)

(assert (=> b!3205645 (= e!1998678 (++!8660 (list!12843 (charsOf!3226 (h!41541 (list!12844 lt!1081650)))) (printList!1349 thiss!18206 (t!237946 (list!12844 lt!1081650)))))))

(declare-fun b!3205646 () Bool)

(assert (=> b!3205646 (= e!1998678 Nil!36119)))

(assert (= (and d!877802 c!538402) b!3205645))

(assert (= (and d!877802 (not c!538402)) b!3205646))

(declare-fun m!3470973 () Bool)

(assert (=> b!3205645 m!3470973))

(assert (=> b!3205645 m!3470973))

(declare-fun m!3470975 () Bool)

(assert (=> b!3205645 m!3470975))

(declare-fun m!3470977 () Bool)

(assert (=> b!3205645 m!3470977))

(assert (=> b!3205645 m!3470975))

(assert (=> b!3205645 m!3470977))

(declare-fun m!3470979 () Bool)

(assert (=> b!3205645 m!3470979))

(assert (=> d!877574 d!877802))

(declare-fun d!877804 () Bool)

(assert (=> d!877804 (= (list!12844 lt!1081650) (list!12848 (c!538128 lt!1081650)))))

(declare-fun bs!541266 () Bool)

(assert (= bs!541266 d!877804))

(assert (=> bs!541266 m!3470913))

(assert (=> d!877574 d!877804))

(assert (=> d!877574 d!877532))

(declare-fun d!877806 () Bool)

(declare-fun lt!1082045 () Int)

(assert (=> d!877806 (>= lt!1082045 0)))

(declare-fun e!1998679 () Int)

(assert (=> d!877806 (= lt!1082045 e!1998679)))

(declare-fun c!538403 () Bool)

(assert (=> d!877806 (= c!538403 ((_ is Nil!36119) (t!237944 lt!1081658)))))

(assert (=> d!877806 (= (size!27211 (t!237944 lt!1081658)) lt!1082045)))

(declare-fun b!3205647 () Bool)

(assert (=> b!3205647 (= e!1998679 0)))

(declare-fun b!3205648 () Bool)

(assert (=> b!3205648 (= e!1998679 (+ 1 (size!27211 (t!237944 (t!237944 lt!1081658)))))))

(assert (= (and d!877806 c!538403) b!3205647))

(assert (= (and d!877806 (not c!538403)) b!3205648))

(declare-fun m!3470983 () Bool)

(assert (=> b!3205648 m!3470983))

(assert (=> b!3205104 d!877806))

(declare-fun d!877810 () Bool)

(assert (=> d!877810 (= (isEmpty!20208 (tail!5206 lt!1081658)) ((_ is Nil!36119) (tail!5206 lt!1081658)))))

(assert (=> b!3204902 d!877810))

(declare-fun d!877812 () Bool)

(assert (=> d!877812 (= (tail!5206 lt!1081658) (t!237944 lt!1081658))))

(assert (=> b!3204902 d!877812))

(declare-fun d!877814 () Bool)

(assert (=> d!877814 (= (nullable!3395 (regex!5210 lt!1081657)) (nullableFct!965 (regex!5210 lt!1081657)))))

(declare-fun bs!541268 () Bool)

(assert (= bs!541268 d!877814))

(declare-fun m!3470985 () Bool)

(assert (=> bs!541268 m!3470985))

(assert (=> b!3205161 d!877814))

(declare-fun d!877816 () Bool)

(assert (=> d!877816 (= (isEmpty!20212 lt!1081855) (not ((_ is Some!7116) lt!1081855)))))

(assert (=> d!877542 d!877816))

(assert (=> d!877542 d!877396))

(declare-fun b!3205676 () Bool)

(declare-fun res!1304577 () Bool)

(declare-fun e!1998697 () Bool)

(assert (=> b!3205676 (=> (not res!1304577) (not e!1998697))))

(assert (=> b!3205676 (= res!1304577 (isBalanced!3212 (right!28401 (c!538128 lt!1081832))))))

(declare-fun b!3205677 () Bool)

(declare-fun res!1304581 () Bool)

(assert (=> b!3205677 (=> (not res!1304581) (not e!1998697))))

(assert (=> b!3205677 (= res!1304581 (not (isEmpty!20207 (left!28071 (c!538128 lt!1081832)))))))

(declare-fun b!3205678 () Bool)

(declare-fun e!1998698 () Bool)

(assert (=> b!3205678 (= e!1998698 e!1998697)))

(declare-fun res!1304582 () Bool)

(assert (=> b!3205678 (=> (not res!1304582) (not e!1998697))))

(declare-fun height!1550 (Conc!10796) Int)

(assert (=> b!3205678 (= res!1304582 (<= (- 1) (- (height!1550 (left!28071 (c!538128 lt!1081832))) (height!1550 (right!28401 (c!538128 lt!1081832))))))))

(declare-fun b!3205679 () Bool)

(declare-fun res!1304578 () Bool)

(assert (=> b!3205679 (=> (not res!1304578) (not e!1998697))))

(assert (=> b!3205679 (= res!1304578 (<= (- (height!1550 (left!28071 (c!538128 lt!1081832))) (height!1550 (right!28401 (c!538128 lt!1081832)))) 1))))

(declare-fun d!877818 () Bool)

(declare-fun res!1304579 () Bool)

(assert (=> d!877818 (=> res!1304579 e!1998698)))

(assert (=> d!877818 (= res!1304579 (not ((_ is Node!10796) (c!538128 lt!1081832))))))

(assert (=> d!877818 (= (isBalanced!3212 (c!538128 lt!1081832)) e!1998698)))

(declare-fun b!3205680 () Bool)

(assert (=> b!3205680 (= e!1998697 (not (isEmpty!20207 (right!28401 (c!538128 lt!1081832)))))))

(declare-fun b!3205681 () Bool)

(declare-fun res!1304580 () Bool)

(assert (=> b!3205681 (=> (not res!1304580) (not e!1998697))))

(assert (=> b!3205681 (= res!1304580 (isBalanced!3212 (left!28071 (c!538128 lt!1081832))))))

(assert (= (and d!877818 (not res!1304579)) b!3205678))

(assert (= (and b!3205678 res!1304582) b!3205679))

(assert (= (and b!3205679 res!1304578) b!3205681))

(assert (= (and b!3205681 res!1304580) b!3205676))

(assert (= (and b!3205676 res!1304577) b!3205677))

(assert (= (and b!3205677 res!1304581) b!3205680))

(declare-fun m!3470999 () Bool)

(assert (=> b!3205679 m!3470999))

(declare-fun m!3471001 () Bool)

(assert (=> b!3205679 m!3471001))

(declare-fun m!3471003 () Bool)

(assert (=> b!3205680 m!3471003))

(assert (=> b!3205678 m!3470999))

(assert (=> b!3205678 m!3471001))

(declare-fun m!3471005 () Bool)

(assert (=> b!3205677 m!3471005))

(declare-fun m!3471007 () Bool)

(assert (=> b!3205676 m!3471007))

(declare-fun m!3471009 () Bool)

(assert (=> b!3205681 m!3471009))

(assert (=> b!3204970 d!877818))

(declare-fun b!3205682 () Bool)

(declare-fun res!1304583 () Bool)

(declare-fun e!1998699 () Bool)

(assert (=> b!3205682 (=> (not res!1304583) (not e!1998699))))

(assert (=> b!3205682 (= res!1304583 (isBalanced!3212 (right!28401 (c!538128 lt!1081752))))))

(declare-fun b!3205683 () Bool)

(declare-fun res!1304587 () Bool)

(assert (=> b!3205683 (=> (not res!1304587) (not e!1998699))))

(assert (=> b!3205683 (= res!1304587 (not (isEmpty!20207 (left!28071 (c!538128 lt!1081752)))))))

(declare-fun b!3205684 () Bool)

(declare-fun e!1998700 () Bool)

(assert (=> b!3205684 (= e!1998700 e!1998699)))

(declare-fun res!1304588 () Bool)

(assert (=> b!3205684 (=> (not res!1304588) (not e!1998699))))

(assert (=> b!3205684 (= res!1304588 (<= (- 1) (- (height!1550 (left!28071 (c!538128 lt!1081752))) (height!1550 (right!28401 (c!538128 lt!1081752))))))))

(declare-fun b!3205685 () Bool)

(declare-fun res!1304584 () Bool)

(assert (=> b!3205685 (=> (not res!1304584) (not e!1998699))))

(assert (=> b!3205685 (= res!1304584 (<= (- (height!1550 (left!28071 (c!538128 lt!1081752))) (height!1550 (right!28401 (c!538128 lt!1081752)))) 1))))

(declare-fun d!877826 () Bool)

(declare-fun res!1304585 () Bool)

(assert (=> d!877826 (=> res!1304585 e!1998700)))

(assert (=> d!877826 (= res!1304585 (not ((_ is Node!10796) (c!538128 lt!1081752))))))

(assert (=> d!877826 (= (isBalanced!3212 (c!538128 lt!1081752)) e!1998700)))

(declare-fun b!3205686 () Bool)

(assert (=> b!3205686 (= e!1998699 (not (isEmpty!20207 (right!28401 (c!538128 lt!1081752)))))))

(declare-fun b!3205687 () Bool)

(declare-fun res!1304586 () Bool)

(assert (=> b!3205687 (=> (not res!1304586) (not e!1998699))))

(assert (=> b!3205687 (= res!1304586 (isBalanced!3212 (left!28071 (c!538128 lt!1081752))))))

(assert (= (and d!877826 (not res!1304585)) b!3205684))

(assert (= (and b!3205684 res!1304588) b!3205685))

(assert (= (and b!3205685 res!1304584) b!3205687))

(assert (= (and b!3205687 res!1304586) b!3205682))

(assert (= (and b!3205682 res!1304583) b!3205683))

(assert (= (and b!3205683 res!1304587) b!3205686))

(declare-fun m!3471011 () Bool)

(assert (=> b!3205685 m!3471011))

(declare-fun m!3471013 () Bool)

(assert (=> b!3205685 m!3471013))

(declare-fun m!3471015 () Bool)

(assert (=> b!3205686 m!3471015))

(assert (=> b!3205684 m!3471011))

(assert (=> b!3205684 m!3471013))

(declare-fun m!3471017 () Bool)

(assert (=> b!3205683 m!3471017))

(declare-fun m!3471019 () Bool)

(assert (=> b!3205682 m!3471019))

(declare-fun m!3471021 () Bool)

(assert (=> b!3205687 m!3471021))

(assert (=> b!3204793 d!877826))

(declare-fun d!877828 () Bool)

(declare-fun lt!1082051 () Int)

(assert (=> d!877828 (= lt!1082051 (size!27211 (list!12843 (_2!20887 lt!1081854))))))

(declare-fun size!27218 (Conc!10795) Int)

(assert (=> d!877828 (= lt!1082051 (size!27218 (c!538127 (_2!20887 lt!1081854))))))

(assert (=> d!877828 (= (size!27212 (_2!20887 lt!1081854)) lt!1082051)))

(declare-fun bs!541269 () Bool)

(assert (= bs!541269 d!877828))

(assert (=> bs!541269 m!3470087))

(assert (=> bs!541269 m!3470087))

(declare-fun m!3471023 () Bool)

(assert (=> bs!541269 m!3471023))

(declare-fun m!3471025 () Bool)

(assert (=> bs!541269 m!3471025))

(assert (=> b!3205011 d!877828))

(declare-fun d!877830 () Bool)

(declare-fun lt!1082052 () Int)

(assert (=> d!877830 (= lt!1082052 (size!27211 (list!12843 lt!1081654)))))

(assert (=> d!877830 (= lt!1082052 (size!27218 (c!538127 lt!1081654)))))

(assert (=> d!877830 (= (size!27212 lt!1081654) lt!1082052)))

(declare-fun bs!541270 () Bool)

(assert (= bs!541270 d!877830))

(assert (=> bs!541270 m!3470089))

(assert (=> bs!541270 m!3470089))

(declare-fun m!3471027 () Bool)

(assert (=> bs!541270 m!3471027))

(declare-fun m!3471029 () Bool)

(assert (=> bs!541270 m!3471029))

(assert (=> b!3205011 d!877830))

(declare-fun d!877832 () Bool)

(declare-fun lt!1082058 () Token!9786)

(assert (=> d!877832 (contains!6434 (list!12844 (_1!20887 lt!1081651)) lt!1082058)))

(declare-fun e!1998709 () Token!9786)

(assert (=> d!877832 (= lt!1082058 e!1998709)))

(declare-fun c!538409 () Bool)

(assert (=> d!877832 (= c!538409 (= 0 0))))

(declare-fun e!1998708 () Bool)

(assert (=> d!877832 e!1998708))

(declare-fun res!1304594 () Bool)

(assert (=> d!877832 (=> (not res!1304594) (not e!1998708))))

(assert (=> d!877832 (= res!1304594 (<= 0 0))))

(assert (=> d!877832 (= (apply!8165 (list!12844 (_1!20887 lt!1081651)) 0) lt!1082058)))

(declare-fun b!3205697 () Bool)

(assert (=> b!3205697 (= e!1998708 (< 0 (size!27216 (list!12844 (_1!20887 lt!1081651)))))))

(declare-fun b!3205698 () Bool)

(assert (=> b!3205698 (= e!1998709 (head!7028 (list!12844 (_1!20887 lt!1081651))))))

(declare-fun b!3205699 () Bool)

(assert (=> b!3205699 (= e!1998709 (apply!8165 (tail!5207 (list!12844 (_1!20887 lt!1081651))) (- 0 1)))))

(assert (= (and d!877832 res!1304594) b!3205697))

(assert (= (and d!877832 c!538409) b!3205698))

(assert (= (and d!877832 (not c!538409)) b!3205699))

(assert (=> d!877832 m!3469303))

(declare-fun m!3471037 () Bool)

(assert (=> d!877832 m!3471037))

(assert (=> b!3205697 m!3469303))

(assert (=> b!3205697 m!3470299))

(assert (=> b!3205698 m!3469303))

(declare-fun m!3471039 () Bool)

(assert (=> b!3205698 m!3471039))

(assert (=> b!3205699 m!3469303))

(declare-fun m!3471041 () Bool)

(assert (=> b!3205699 m!3471041))

(assert (=> b!3205699 m!3471041))

(declare-fun m!3471043 () Bool)

(assert (=> b!3205699 m!3471043))

(assert (=> d!877322 d!877832))

(declare-fun d!877836 () Bool)

(assert (=> d!877836 (= (list!12844 (_1!20887 lt!1081651)) (list!12848 (c!538128 (_1!20887 lt!1081651))))))

(declare-fun bs!541271 () Bool)

(assert (= bs!541271 d!877836))

(declare-fun m!3471045 () Bool)

(assert (=> bs!541271 m!3471045))

(assert (=> d!877322 d!877836))

(declare-fun b!3205747 () Bool)

(declare-fun e!1998737 () Int)

(assert (=> b!3205747 (= e!1998737 0)))

(declare-fun b!3205748 () Bool)

(declare-fun e!1998734 () Token!9786)

(declare-fun call!232052 () Token!9786)

(assert (=> b!3205748 (= e!1998734 call!232052)))

(declare-fun b!3205749 () Bool)

(assert (=> b!3205749 (= e!1998737 (- 0 (size!27217 (left!28071 (c!538128 (_1!20887 lt!1081651))))))))

(declare-fun b!3205750 () Bool)

(declare-fun e!1998735 () Token!9786)

(declare-fun apply!8169 (IArray!21597 Int) Token!9786)

(assert (=> b!3205750 (= e!1998735 (apply!8169 (xs!13914 (c!538128 (_1!20887 lt!1081651))) 0))))

(declare-fun b!3205751 () Bool)

(assert (=> b!3205751 (= e!1998735 e!1998734)))

(declare-fun lt!1082071 () Bool)

(declare-fun appendIndex!305 (List!36245 List!36245 Int) Bool)

(assert (=> b!3205751 (= lt!1082071 (appendIndex!305 (list!12848 (left!28071 (c!538128 (_1!20887 lt!1081651)))) (list!12848 (right!28401 (c!538128 (_1!20887 lt!1081651)))) 0))))

(declare-fun c!538425 () Bool)

(assert (=> b!3205751 (= c!538425 (< 0 (size!27217 (left!28071 (c!538128 (_1!20887 lt!1081651))))))))

(declare-fun d!877838 () Bool)

(declare-fun lt!1082072 () Token!9786)

(assert (=> d!877838 (= lt!1082072 (apply!8165 (list!12848 (c!538128 (_1!20887 lt!1081651))) 0))))

(assert (=> d!877838 (= lt!1082072 e!1998735)))

(declare-fun c!538427 () Bool)

(assert (=> d!877838 (= c!538427 ((_ is Leaf!17012) (c!538128 (_1!20887 lt!1081651))))))

(declare-fun e!1998736 () Bool)

(assert (=> d!877838 e!1998736))

(declare-fun res!1304608 () Bool)

(assert (=> d!877838 (=> (not res!1304608) (not e!1998736))))

(assert (=> d!877838 (= res!1304608 (<= 0 0))))

(assert (=> d!877838 (= (apply!8166 (c!538128 (_1!20887 lt!1081651)) 0) lt!1082072)))

(declare-fun b!3205752 () Bool)

(assert (=> b!3205752 (= e!1998734 call!232052)))

(declare-fun bm!232047 () Bool)

(declare-fun c!538426 () Bool)

(assert (=> bm!232047 (= c!538426 c!538425)))

(assert (=> bm!232047 (= call!232052 (apply!8166 (ite c!538425 (left!28071 (c!538128 (_1!20887 lt!1081651))) (right!28401 (c!538128 (_1!20887 lt!1081651)))) e!1998737))))

(declare-fun b!3205753 () Bool)

(assert (=> b!3205753 (= e!1998736 (< 0 (size!27217 (c!538128 (_1!20887 lt!1081651)))))))

(assert (= (and d!877838 res!1304608) b!3205753))

(assert (= (and d!877838 c!538427) b!3205750))

(assert (= (and d!877838 (not c!538427)) b!3205751))

(assert (= (and b!3205751 c!538425) b!3205748))

(assert (= (and b!3205751 (not c!538425)) b!3205752))

(assert (= (or b!3205748 b!3205752) bm!232047))

(assert (= (and bm!232047 c!538426) b!3205747))

(assert (= (and bm!232047 (not c!538426)) b!3205749))

(declare-fun m!3471109 () Bool)

(assert (=> b!3205751 m!3471109))

(declare-fun m!3471111 () Bool)

(assert (=> b!3205751 m!3471111))

(assert (=> b!3205751 m!3471109))

(assert (=> b!3205751 m!3471111))

(declare-fun m!3471113 () Bool)

(assert (=> b!3205751 m!3471113))

(declare-fun m!3471115 () Bool)

(assert (=> b!3205751 m!3471115))

(assert (=> b!3205749 m!3471115))

(assert (=> b!3205753 m!3470301))

(declare-fun m!3471117 () Bool)

(assert (=> bm!232047 m!3471117))

(declare-fun m!3471119 () Bool)

(assert (=> b!3205750 m!3471119))

(assert (=> d!877838 m!3471045))

(assert (=> d!877838 m!3471045))

(declare-fun m!3471121 () Bool)

(assert (=> d!877838 m!3471121))

(assert (=> d!877322 d!877838))

(declare-fun d!877866 () Bool)

(assert (=> d!877866 (= (isEmpty!20208 lt!1081636) ((_ is Nil!36119) lt!1081636))))

(assert (=> d!877612 d!877866))

(declare-fun b!3205782 () Bool)

(declare-fun e!1998759 () Bool)

(declare-fun e!1998760 () Bool)

(assert (=> b!3205782 (= e!1998759 e!1998760)))

(declare-fun c!538434 () Bool)

(assert (=> b!3205782 (= c!538434 ((_ is Star!9969) (regex!5210 lt!1081657)))))

(declare-fun b!3205783 () Bool)

(declare-fun e!1998761 () Bool)

(declare-fun call!232059 () Bool)

(assert (=> b!3205783 (= e!1998761 call!232059)))

(declare-fun b!3205784 () Bool)

(declare-fun res!1304627 () Bool)

(declare-fun e!1998763 () Bool)

(assert (=> b!3205784 (=> res!1304627 e!1998763)))

(assert (=> b!3205784 (= res!1304627 (not ((_ is Concat!15409) (regex!5210 lt!1081657))))))

(declare-fun e!1998757 () Bool)

(assert (=> b!3205784 (= e!1998757 e!1998763)))

(declare-fun bm!232054 () Bool)

(declare-fun call!232060 () Bool)

(assert (=> bm!232054 (= call!232059 call!232060)))

(declare-fun bm!232055 () Bool)

(declare-fun call!232061 () Bool)

(declare-fun c!538433 () Bool)

(assert (=> bm!232055 (= call!232061 (validRegex!4549 (ite c!538433 (regOne!20451 (regex!5210 lt!1081657)) (regOne!20450 (regex!5210 lt!1081657)))))))

(declare-fun b!3205785 () Bool)

(declare-fun e!1998758 () Bool)

(assert (=> b!3205785 (= e!1998763 e!1998758)))

(declare-fun res!1304629 () Bool)

(assert (=> b!3205785 (=> (not res!1304629) (not e!1998758))))

(assert (=> b!3205785 (= res!1304629 call!232061)))

(declare-fun b!3205786 () Bool)

(assert (=> b!3205786 (= e!1998758 call!232059)))

(declare-fun b!3205788 () Bool)

(assert (=> b!3205788 (= e!1998760 e!1998757)))

(assert (=> b!3205788 (= c!538433 ((_ is Union!9969) (regex!5210 lt!1081657)))))

(declare-fun bm!232056 () Bool)

(assert (=> bm!232056 (= call!232060 (validRegex!4549 (ite c!538434 (reg!10298 (regex!5210 lt!1081657)) (ite c!538433 (regTwo!20451 (regex!5210 lt!1081657)) (regTwo!20450 (regex!5210 lt!1081657))))))))

(declare-fun b!3205789 () Bool)

(declare-fun e!1998762 () Bool)

(assert (=> b!3205789 (= e!1998760 e!1998762)))

(declare-fun res!1304631 () Bool)

(assert (=> b!3205789 (= res!1304631 (not (nullable!3395 (reg!10298 (regex!5210 lt!1081657)))))))

(assert (=> b!3205789 (=> (not res!1304631) (not e!1998762))))

(declare-fun b!3205790 () Bool)

(assert (=> b!3205790 (= e!1998762 call!232060)))

(declare-fun d!877868 () Bool)

(declare-fun res!1304630 () Bool)

(assert (=> d!877868 (=> res!1304630 e!1998759)))

(assert (=> d!877868 (= res!1304630 ((_ is ElementMatch!9969) (regex!5210 lt!1081657)))))

(assert (=> d!877868 (= (validRegex!4549 (regex!5210 lt!1081657)) e!1998759)))

(declare-fun b!3205787 () Bool)

(declare-fun res!1304628 () Bool)

(assert (=> b!3205787 (=> (not res!1304628) (not e!1998761))))

(assert (=> b!3205787 (= res!1304628 call!232061)))

(assert (=> b!3205787 (= e!1998757 e!1998761)))

(assert (= (and d!877868 (not res!1304630)) b!3205782))

(assert (= (and b!3205782 c!538434) b!3205789))

(assert (= (and b!3205782 (not c!538434)) b!3205788))

(assert (= (and b!3205789 res!1304631) b!3205790))

(assert (= (and b!3205788 c!538433) b!3205787))

(assert (= (and b!3205788 (not c!538433)) b!3205784))

(assert (= (and b!3205787 res!1304628) b!3205783))

(assert (= (and b!3205784 (not res!1304627)) b!3205785))

(assert (= (and b!3205785 res!1304629) b!3205786))

(assert (= (or b!3205783 b!3205786) bm!232054))

(assert (= (or b!3205787 b!3205785) bm!232055))

(assert (= (or b!3205790 bm!232054) bm!232056))

(declare-fun m!3471131 () Bool)

(assert (=> bm!232055 m!3471131))

(declare-fun m!3471133 () Bool)

(assert (=> bm!232056 m!3471133))

(declare-fun m!3471135 () Bool)

(assert (=> b!3205789 m!3471135))

(assert (=> d!877612 d!877868))

(declare-fun d!877874 () Bool)

(declare-fun res!1304640 () Bool)

(declare-fun e!1998771 () Bool)

(assert (=> d!877874 (=> res!1304640 e!1998771)))

(assert (=> d!877874 (= res!1304640 (not ((_ is Cons!36120) (t!237945 rules!2135))))))

(assert (=> d!877874 (= (sepAndNonSepRulesDisjointChars!1404 rules!2135 (t!237945 rules!2135)) e!1998771)))

(declare-fun b!3205805 () Bool)

(declare-fun e!1998772 () Bool)

(assert (=> b!3205805 (= e!1998771 e!1998772)))

(declare-fun res!1304641 () Bool)

(assert (=> b!3205805 (=> (not res!1304641) (not e!1998772))))

(assert (=> b!3205805 (= res!1304641 (ruleDisjointCharsFromAllFromOtherType!588 (h!41540 (t!237945 rules!2135)) rules!2135))))

(declare-fun b!3205806 () Bool)

(assert (=> b!3205806 (= e!1998772 (sepAndNonSepRulesDisjointChars!1404 rules!2135 (t!237945 (t!237945 rules!2135))))))

(assert (= (and d!877874 (not res!1304640)) b!3205805))

(assert (= (and b!3205805 res!1304641) b!3205806))

(declare-fun m!3471137 () Bool)

(assert (=> b!3205805 m!3471137))

(declare-fun m!3471141 () Bool)

(assert (=> b!3205806 m!3471141))

(assert (=> b!3205151 d!877874))

(declare-fun d!877876 () Bool)

(declare-fun charsToBigInt!1 (List!36242) Int)

(assert (=> d!877876 (= (inv!17 (value!168945 (h!41541 tokens!494))) (= (charsToBigInt!1 (text!38528 (value!168945 (h!41541 tokens!494)))) (value!168937 (value!168945 (h!41541 tokens!494)))))))

(declare-fun bs!541278 () Bool)

(assert (= bs!541278 d!877876))

(declare-fun m!3471159 () Bool)

(assert (=> bs!541278 m!3471159))

(assert (=> b!3204757 d!877876))

(declare-fun d!877882 () Bool)

(declare-fun isBalanced!3215 (Conc!10795) Bool)

(assert (=> d!877882 (= (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))) (isBalanced!3215 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))))))

(declare-fun bs!541279 () Bool)

(assert (= bs!541279 d!877882))

(declare-fun m!3471169 () Bool)

(assert (=> bs!541279 m!3471169))

(assert (=> tb!157209 d!877882))

(declare-fun d!877886 () Bool)

(declare-fun lt!1082077 () List!36243)

(assert (=> d!877886 (= lt!1082077 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (printList!1349 thiss!18206 (dropList!1075 lt!1081643 0))))))

(declare-fun e!1998775 () List!36243)

(assert (=> d!877886 (= lt!1082077 e!1998775)))

(declare-fun c!538439 () Bool)

(assert (=> d!877886 (= c!538439 ((_ is Cons!36121) (dropList!1075 lt!1081643 0)))))

(assert (=> d!877886 (= (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081643 0) (list!12843 (BalanceConc!21205 Empty!10795))) lt!1082077)))

(declare-fun b!3205810 () Bool)

(assert (=> b!3205810 (= e!1998775 (printListTailRec!558 thiss!18206 (t!237946 (dropList!1075 lt!1081643 0)) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (h!41541 (dropList!1075 lt!1081643 0)))))))))

(declare-fun lt!1082078 () List!36243)

(assert (=> b!3205810 (= lt!1082078 (list!12843 (charsOf!3226 (h!41541 (dropList!1075 lt!1081643 0)))))))

(declare-fun lt!1082076 () List!36243)

(assert (=> b!3205810 (= lt!1082076 (printList!1349 thiss!18206 (t!237946 (dropList!1075 lt!1081643 0))))))

(declare-fun lt!1082080 () Unit!50554)

(assert (=> b!3205810 (= lt!1082080 (lemmaConcatAssociativity!1730 (list!12843 (BalanceConc!21205 Empty!10795)) lt!1082078 lt!1082076))))

(assert (=> b!3205810 (= (++!8660 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) lt!1082078) lt!1082076) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (++!8660 lt!1082078 lt!1082076)))))

(declare-fun lt!1082079 () Unit!50554)

(assert (=> b!3205810 (= lt!1082079 lt!1082080)))

(declare-fun b!3205811 () Bool)

(assert (=> b!3205811 (= e!1998775 (list!12843 (BalanceConc!21205 Empty!10795)))))

(assert (= (and d!877886 c!538439) b!3205810))

(assert (= (and d!877886 (not c!538439)) b!3205811))

(assert (=> d!877886 m!3469993))

(declare-fun m!3471181 () Bool)

(assert (=> d!877886 m!3471181))

(assert (=> d!877886 m!3469595))

(assert (=> d!877886 m!3471181))

(declare-fun m!3471183 () Bool)

(assert (=> d!877886 m!3471183))

(declare-fun m!3471185 () Bool)

(assert (=> b!3205810 m!3471185))

(declare-fun m!3471187 () Bool)

(assert (=> b!3205810 m!3471187))

(declare-fun m!3471189 () Bool)

(assert (=> b!3205810 m!3471189))

(declare-fun m!3471191 () Bool)

(assert (=> b!3205810 m!3471191))

(assert (=> b!3205810 m!3469595))

(assert (=> b!3205810 m!3471191))

(assert (=> b!3205810 m!3471185))

(assert (=> b!3205810 m!3469595))

(declare-fun m!3471193 () Bool)

(assert (=> b!3205810 m!3471193))

(declare-fun m!3471195 () Bool)

(assert (=> b!3205810 m!3471195))

(assert (=> b!3205810 m!3469595))

(declare-fun m!3471197 () Bool)

(assert (=> b!3205810 m!3471197))

(assert (=> b!3205810 m!3469595))

(declare-fun m!3471199 () Bool)

(assert (=> b!3205810 m!3471199))

(declare-fun m!3471201 () Bool)

(assert (=> b!3205810 m!3471201))

(assert (=> b!3205810 m!3471189))

(assert (=> b!3205810 m!3471193))

(assert (=> b!3205810 m!3471199))

(declare-fun m!3471203 () Bool)

(assert (=> b!3205810 m!3471203))

(assert (=> d!877526 d!877886))

(declare-fun d!877894 () Bool)

(assert (=> d!877894 (= (dropList!1075 lt!1081643 0) (drop!1858 (list!12848 (c!538128 lt!1081643)) 0))))

(declare-fun bs!541281 () Bool)

(assert (= bs!541281 d!877894))

(declare-fun m!3471205 () Bool)

(assert (=> bs!541281 m!3471205))

(assert (=> bs!541281 m!3471205))

(declare-fun m!3471207 () Bool)

(assert (=> bs!541281 m!3471207))

(assert (=> d!877526 d!877894))

(declare-fun d!877896 () Bool)

(declare-fun lt!1082081 () Int)

(assert (=> d!877896 (= lt!1082081 (size!27216 (list!12844 lt!1081643)))))

(assert (=> d!877896 (= lt!1082081 (size!27217 (c!538128 lt!1081643)))))

(assert (=> d!877896 (= (size!27210 lt!1081643) lt!1082081)))

(declare-fun bs!541282 () Bool)

(assert (= bs!541282 d!877896))

(assert (=> bs!541282 m!3470017))

(assert (=> bs!541282 m!3470017))

(declare-fun m!3471209 () Bool)

(assert (=> bs!541282 m!3471209))

(declare-fun m!3471211 () Bool)

(assert (=> bs!541282 m!3471211))

(assert (=> d!877526 d!877896))

(assert (=> d!877526 d!877770))

(declare-fun d!877898 () Bool)

(assert (=> d!877898 (= (list!12843 lt!1081837) (list!12847 (c!538127 lt!1081837)))))

(declare-fun bs!541283 () Bool)

(assert (= bs!541283 d!877898))

(declare-fun m!3471213 () Bool)

(assert (=> bs!541283 m!3471213))

(assert (=> d!877526 d!877898))

(declare-fun d!877900 () Bool)

(assert (=> d!877900 (= (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)))))) (list!12848 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))))))))))

(declare-fun bs!541285 () Bool)

(assert (= bs!541285 d!877900))

(declare-fun m!3471217 () Bool)

(assert (=> bs!541285 m!3471217))

(assert (=> d!877596 d!877900))

(declare-fun b!3205812 () Bool)

(declare-fun lt!1082082 () tuple2!35506)

(declare-fun e!1998778 () Bool)

(assert (=> b!3205812 (= e!1998778 (= (_2!20887 lt!1082082) (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)))))))

(declare-fun b!3205813 () Bool)

(declare-fun e!1998777 () Bool)

(assert (=> b!3205813 (= e!1998777 (not (isEmpty!20205 (_1!20887 lt!1082082))))))

(declare-fun b!3205814 () Bool)

(declare-fun res!1304643 () Bool)

(declare-fun e!1998776 () Bool)

(assert (=> b!3205814 (=> (not res!1304643) (not e!1998776))))

(assert (=> b!3205814 (= res!1304643 (= (list!12844 (_1!20887 lt!1082082)) (_1!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))))))))))

(declare-fun d!877904 () Bool)

(assert (=> d!877904 e!1998776))

(declare-fun res!1304642 () Bool)

(assert (=> d!877904 (=> (not res!1304642) (not e!1998776))))

(assert (=> d!877904 (= res!1304642 e!1998778)))

(declare-fun c!538440 () Bool)

(assert (=> d!877904 (= c!538440 (> (size!27210 (_1!20887 lt!1082082)) 0))))

(assert (=> d!877904 (= lt!1082082 (lexTailRecV2!930 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))) (BalanceConc!21205 Empty!10795) (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))) (BalanceConc!21207 Empty!10796)))))

(assert (=> d!877904 (= (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)))) lt!1082082)))

(declare-fun b!3205815 () Bool)

(assert (=> b!3205815 (= e!1998778 e!1998777)))

(declare-fun res!1304644 () Bool)

(assert (=> b!3205815 (= res!1304644 (< (size!27212 (_2!20887 lt!1082082)) (size!27212 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))))))))

(assert (=> b!3205815 (=> (not res!1304644) (not e!1998777))))

(declare-fun b!3205816 () Bool)

(assert (=> b!3205816 (= e!1998776 (= (list!12843 (_2!20887 lt!1082082)) (_2!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))))))))))

(assert (= (and d!877904 c!538440) b!3205815))

(assert (= (and d!877904 (not c!538440)) b!3205812))

(assert (= (and b!3205815 res!1304644) b!3205813))

(assert (= (and d!877904 res!1304642) b!3205814))

(assert (= (and b!3205814 res!1304643) b!3205816))

(declare-fun m!3471219 () Bool)

(assert (=> b!3205816 m!3471219))

(assert (=> b!3205816 m!3470377))

(declare-fun m!3471221 () Bool)

(assert (=> b!3205816 m!3471221))

(assert (=> b!3205816 m!3471221))

(declare-fun m!3471223 () Bool)

(assert (=> b!3205816 m!3471223))

(declare-fun m!3471225 () Bool)

(assert (=> d!877904 m!3471225))

(assert (=> d!877904 m!3470377))

(assert (=> d!877904 m!3470377))

(declare-fun m!3471227 () Bool)

(assert (=> d!877904 m!3471227))

(declare-fun m!3471229 () Bool)

(assert (=> b!3205813 m!3471229))

(declare-fun m!3471231 () Bool)

(assert (=> b!3205815 m!3471231))

(assert (=> b!3205815 m!3470377))

(declare-fun m!3471233 () Bool)

(assert (=> b!3205815 m!3471233))

(declare-fun m!3471235 () Bool)

(assert (=> b!3205814 m!3471235))

(assert (=> b!3205814 m!3470377))

(assert (=> b!3205814 m!3471221))

(assert (=> b!3205814 m!3471221))

(assert (=> b!3205814 m!3471223))

(assert (=> d!877596 d!877904))

(declare-fun d!877906 () Bool)

(declare-fun lt!1082083 () BalanceConc!21204)

(assert (=> d!877906 (= (list!12843 lt!1082083) (printList!1349 thiss!18206 (list!12844 (singletonSeq!2306 (h!41541 tokens!494)))))))

(assert (=> d!877906 (= lt!1082083 (printTailRec!1296 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)) 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!877906 (= (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))) lt!1082083)))

(declare-fun bs!541286 () Bool)

(assert (= bs!541286 d!877906))

(declare-fun m!3471237 () Bool)

(assert (=> bs!541286 m!3471237))

(assert (=> bs!541286 m!3469219))

(assert (=> bs!541286 m!3470381))

(assert (=> bs!541286 m!3470381))

(declare-fun m!3471239 () Bool)

(assert (=> bs!541286 m!3471239))

(assert (=> bs!541286 m!3469219))

(declare-fun m!3471241 () Bool)

(assert (=> bs!541286 m!3471241))

(assert (=> d!877596 d!877906))

(declare-fun d!877908 () Bool)

(declare-fun lt!1082084 () Int)

(assert (=> d!877908 (= lt!1082084 (size!27216 (list!12844 (_1!20887 lt!1081941))))))

(assert (=> d!877908 (= lt!1082084 (size!27217 (c!538128 (_1!20887 lt!1081941))))))

(assert (=> d!877908 (= (size!27210 (_1!20887 lt!1081941)) lt!1082084)))

(declare-fun bs!541287 () Bool)

(assert (= bs!541287 d!877908))

(declare-fun m!3471243 () Bool)

(assert (=> bs!541287 m!3471243))

(assert (=> bs!541287 m!3471243))

(declare-fun m!3471245 () Bool)

(assert (=> bs!541287 m!3471245))

(declare-fun m!3471247 () Bool)

(assert (=> bs!541287 m!3471247))

(assert (=> d!877596 d!877908))

(declare-fun d!877910 () Bool)

(assert (=> d!877910 (= (list!12844 (singletonSeq!2306 (h!41541 tokens!494))) (list!12848 (c!538128 (singletonSeq!2306 (h!41541 tokens!494)))))))

(declare-fun bs!541288 () Bool)

(assert (= bs!541288 d!877910))

(declare-fun m!3471249 () Bool)

(assert (=> bs!541288 m!3471249))

(assert (=> d!877596 d!877910))

(assert (=> d!877596 d!877420))

(assert (=> d!877596 d!877608))

(assert (=> b!3204906 d!877810))

(assert (=> b!3204906 d!877812))

(declare-fun d!877912 () Bool)

(assert (=> d!877912 (= (maxPrefixOneRule!1578 thiss!18206 (rule!7648 (h!41541 tokens!494)) lt!1081658) (Some!7117 (tuple2!35509 (Token!9787 (apply!8164 (transformation!5210 (rule!7648 (h!41541 tokens!494))) (seqFromList!3492 lt!1081658)) (rule!7648 (h!41541 tokens!494)) (size!27211 lt!1081658) lt!1081658) Nil!36119)))))

(assert (=> d!877912 true))

(declare-fun _$59!379 () Unit!50554)

(assert (=> d!877912 (= (choose!18707 thiss!18206 rules!2135 lt!1081658 lt!1081658 Nil!36119 (rule!7648 (h!41541 tokens!494))) _$59!379)))

(declare-fun bs!541290 () Bool)

(assert (= bs!541290 d!877912))

(assert (=> bs!541290 m!3469267))

(assert (=> bs!541290 m!3469231))

(assert (=> bs!541290 m!3469231))

(assert (=> bs!541290 m!3469939))

(assert (=> bs!541290 m!3469249))

(assert (=> d!877510 d!877912))

(assert (=> d!877510 d!877546))

(assert (=> d!877510 d!877394))

(declare-fun d!877916 () Bool)

(assert (=> d!877916 (= (apply!8164 (transformation!5210 (rule!7648 (h!41541 tokens!494))) (seqFromList!3492 lt!1081658)) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (seqFromList!3492 lt!1081658)))))

(declare-fun b_lambda!87769 () Bool)

(assert (=> (not b_lambda!87769) (not d!877916)))

(declare-fun tb!157299 () Bool)

(declare-fun t!238089 () Bool)

(assert (=> (and b!3205256 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238089) tb!157299))

(declare-fun result!199636 () Bool)

(assert (=> tb!157299 (= result!199636 (inv!21 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (seqFromList!3492 lt!1081658))))))

(declare-fun m!3471255 () Bool)

(assert (=> tb!157299 m!3471255))

(assert (=> d!877916 t!238089))

(declare-fun b_and!213339 () Bool)

(assert (= b_and!213301 (and (=> t!238089 result!199636) b_and!213339)))

(declare-fun t!238091 () Bool)

(declare-fun tb!157301 () Bool)

(assert (=> (and b!3204488 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238091) tb!157301))

(declare-fun result!199638 () Bool)

(assert (= result!199638 result!199636))

(assert (=> d!877916 t!238091))

(declare-fun b_and!213341 () Bool)

(assert (= b_and!213307 (and (=> t!238091 result!199638) b_and!213341)))

(declare-fun t!238093 () Bool)

(declare-fun tb!157303 () Bool)

(assert (=> (and b!3205230 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238093) tb!157303))

(declare-fun result!199640 () Bool)

(assert (= result!199640 result!199636))

(assert (=> d!877916 t!238093))

(declare-fun b_and!213343 () Bool)

(assert (= b_and!213303 (and (=> t!238093 result!199640) b_and!213343)))

(declare-fun tb!157305 () Bool)

(declare-fun t!238095 () Bool)

(assert (=> (and b!3204481 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238095) tb!157305))

(declare-fun result!199642 () Bool)

(assert (= result!199642 result!199636))

(assert (=> d!877916 t!238095))

(declare-fun b_and!213345 () Bool)

(assert (= b_and!213305 (and (=> t!238095 result!199642) b_and!213345)))

(declare-fun t!238097 () Bool)

(declare-fun tb!157307 () Bool)

(assert (=> (and b!3204473 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238097) tb!157307))

(declare-fun result!199644 () Bool)

(assert (= result!199644 result!199636))

(assert (=> d!877916 t!238097))

(declare-fun b_and!213347 () Bool)

(assert (= b_and!213299 (and (=> t!238097 result!199644) b_and!213347)))

(assert (=> d!877916 m!3469231))

(declare-fun m!3471273 () Bool)

(assert (=> d!877916 m!3471273))

(assert (=> d!877510 d!877916))

(assert (=> d!877510 d!877608))

(assert (=> d!877510 d!877566))

(declare-fun b!3205823 () Bool)

(declare-fun res!1304647 () Bool)

(declare-fun e!1998783 () Bool)

(assert (=> b!3205823 (=> (not res!1304647) (not e!1998783))))

(declare-fun lt!1082087 () List!36243)

(assert (=> b!3205823 (= res!1304647 (= (size!27211 lt!1082087) (+ (size!27211 (t!237944 lt!1081658)) (size!27211 lt!1081637))))))

(declare-fun b!3205821 () Bool)

(declare-fun e!1998784 () List!36243)

(assert (=> b!3205821 (= e!1998784 lt!1081637)))

(declare-fun b!3205824 () Bool)

(assert (=> b!3205824 (= e!1998783 (or (not (= lt!1081637 Nil!36119)) (= lt!1082087 (t!237944 lt!1081658))))))

(declare-fun d!877924 () Bool)

(assert (=> d!877924 e!1998783))

(declare-fun res!1304648 () Bool)

(assert (=> d!877924 (=> (not res!1304648) (not e!1998783))))

(assert (=> d!877924 (= res!1304648 (= (content!4882 lt!1082087) ((_ map or) (content!4882 (t!237944 lt!1081658)) (content!4882 lt!1081637))))))

(assert (=> d!877924 (= lt!1082087 e!1998784)))

(declare-fun c!538442 () Bool)

(assert (=> d!877924 (= c!538442 ((_ is Nil!36119) (t!237944 lt!1081658)))))

(assert (=> d!877924 (= (++!8660 (t!237944 lt!1081658) lt!1081637) lt!1082087)))

(declare-fun b!3205822 () Bool)

(assert (=> b!3205822 (= e!1998784 (Cons!36119 (h!41539 (t!237944 lt!1081658)) (++!8660 (t!237944 (t!237944 lt!1081658)) lt!1081637)))))

(assert (= (and d!877924 c!538442) b!3205821))

(assert (= (and d!877924 (not c!538442)) b!3205822))

(assert (= (and d!877924 res!1304648) b!3205823))

(assert (= (and b!3205823 res!1304647) b!3205824))

(declare-fun m!3471275 () Bool)

(assert (=> b!3205823 m!3471275))

(assert (=> b!3205823 m!3470279))

(assert (=> b!3205823 m!3469573))

(declare-fun m!3471277 () Bool)

(assert (=> d!877924 m!3471277))

(declare-fun m!3471279 () Bool)

(assert (=> d!877924 m!3471279))

(assert (=> d!877924 m!3469579))

(declare-fun m!3471283 () Bool)

(assert (=> b!3205822 m!3471283))

(assert (=> b!3204769 d!877924))

(declare-fun d!877926 () Bool)

(assert (=> d!877926 (= (list!12844 lt!1081828) (list!12848 (c!538128 lt!1081828)))))

(declare-fun bs!541292 () Bool)

(assert (= bs!541292 d!877926))

(declare-fun m!3471287 () Bool)

(assert (=> bs!541292 m!3471287))

(assert (=> d!877518 d!877926))

(declare-fun d!877928 () Bool)

(declare-fun e!1998786 () Bool)

(assert (=> d!877928 e!1998786))

(declare-fun res!1304649 () Bool)

(assert (=> d!877928 (=> (not res!1304649) (not e!1998786))))

(declare-fun lt!1082088 () BalanceConc!21206)

(assert (=> d!877928 (= res!1304649 (= (list!12844 lt!1082088) (Cons!36121 separatorToken!241 Nil!36121)))))

(assert (=> d!877928 (= lt!1082088 (choose!18715 separatorToken!241))))

(assert (=> d!877928 (= (singleton!991 separatorToken!241) lt!1082088)))

(declare-fun b!3205826 () Bool)

(assert (=> b!3205826 (= e!1998786 (isBalanced!3212 (c!538128 lt!1082088)))))

(assert (= (and d!877928 res!1304649) b!3205826))

(declare-fun m!3471289 () Bool)

(assert (=> d!877928 m!3471289))

(declare-fun m!3471293 () Bool)

(assert (=> d!877928 m!3471293))

(declare-fun m!3471295 () Bool)

(assert (=> b!3205826 m!3471295))

(assert (=> d!877518 d!877928))

(declare-fun d!877930 () Bool)

(assert (=> d!877930 (= (isDefined!5538 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))) (not (isEmpty!20212 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))))))

(declare-fun bs!541293 () Bool)

(assert (= bs!541293 d!877930))

(assert (=> bs!541293 m!3469251))

(declare-fun m!3471299 () Bool)

(assert (=> bs!541293 m!3471299))

(assert (=> d!877522 d!877930))

(assert (=> d!877522 d!877542))

(declare-fun d!877934 () Bool)

(declare-fun e!1998796 () Bool)

(assert (=> d!877934 e!1998796))

(declare-fun res!1304660 () Bool)

(assert (=> d!877934 (=> (not res!1304660) (not e!1998796))))

(assert (=> d!877934 (= res!1304660 (isDefined!5538 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))))))

(assert (=> d!877934 true))

(declare-fun _$52!1540 () Unit!50554)

(assert (=> d!877934 (= (choose!18708 thiss!18206 rules!2135 lt!1081636 separatorToken!241) _$52!1540)))

(declare-fun b!3205839 () Bool)

(declare-fun res!1304661 () Bool)

(assert (=> b!3205839 (=> (not res!1304661) (not e!1998796))))

(assert (=> b!3205839 (= res!1304661 (matchR!4603 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))) (list!12843 (charsOf!3226 separatorToken!241))))))

(declare-fun b!3205840 () Bool)

(assert (=> b!3205840 (= e!1998796 (= (rule!7648 separatorToken!241) (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))))))

(assert (= (and d!877934 res!1304660) b!3205839))

(assert (= (and b!3205839 res!1304661) b!3205840))

(assert (=> d!877934 m!3469251))

(assert (=> d!877934 m!3469251))

(assert (=> d!877934 m!3469979))

(assert (=> b!3205839 m!3469147))

(assert (=> b!3205839 m!3469163))

(assert (=> b!3205839 m!3469251))

(assert (=> b!3205839 m!3469147))

(assert (=> b!3205839 m!3469251))

(assert (=> b!3205839 m!3469985))

(assert (=> b!3205839 m!3469163))

(assert (=> b!3205839 m!3469983))

(assert (=> b!3205840 m!3469251))

(assert (=> b!3205840 m!3469251))

(assert (=> b!3205840 m!3469985))

(assert (=> d!877522 d!877934))

(assert (=> d!877522 d!877396))

(declare-fun d!877952 () Bool)

(assert (=> d!877952 (= (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))) (v!35656 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))))))

(assert (=> b!3205083 d!877952))

(assert (=> b!3205083 d!877514))

(declare-fun d!877954 () Bool)

(declare-fun lt!1082096 () Bool)

(assert (=> d!877954 (= lt!1082096 (isEmpty!20208 (list!12843 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)))))))))

(assert (=> d!877954 (= lt!1082096 (isEmpty!20210 (c!538127 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)))))))))

(assert (=> d!877954 (= (isEmpty!20203 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241))))) lt!1082096)))

(declare-fun bs!541297 () Bool)

(assert (= bs!541297 d!877954))

(declare-fun m!3471327 () Bool)

(assert (=> bs!541297 m!3471327))

(assert (=> bs!541297 m!3471327))

(declare-fun m!3471329 () Bool)

(assert (=> bs!541297 m!3471329))

(declare-fun m!3471331 () Bool)

(assert (=> bs!541297 m!3471331))

(assert (=> b!3204654 d!877954))

(declare-fun lt!1082097 () tuple2!35506)

(declare-fun b!3205843 () Bool)

(declare-fun e!1998801 () Bool)

(assert (=> b!3205843 (= e!1998801 (= (_2!20887 lt!1082097) (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241))))))

(declare-fun b!3205844 () Bool)

(declare-fun e!1998800 () Bool)

(assert (=> b!3205844 (= e!1998800 (not (isEmpty!20205 (_1!20887 lt!1082097))))))

(declare-fun b!3205845 () Bool)

(declare-fun res!1304665 () Bool)

(declare-fun e!1998799 () Bool)

(assert (=> b!3205845 (=> (not res!1304665) (not e!1998799))))

(assert (=> b!3205845 (= res!1304665 (= (list!12844 (_1!20887 lt!1082097)) (_1!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)))))))))

(declare-fun d!877956 () Bool)

(assert (=> d!877956 e!1998799))

(declare-fun res!1304664 () Bool)

(assert (=> d!877956 (=> (not res!1304664) (not e!1998799))))

(assert (=> d!877956 (= res!1304664 e!1998801)))

(declare-fun c!538444 () Bool)

(assert (=> d!877956 (= c!538444 (> (size!27210 (_1!20887 lt!1082097)) 0))))

(assert (=> d!877956 (= lt!1082097 (lexTailRecV2!930 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)) (BalanceConc!21205 Empty!10795) (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)) (BalanceConc!21207 Empty!10796)))))

(assert (=> d!877956 (= (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241))) lt!1082097)))

(declare-fun b!3205846 () Bool)

(assert (=> b!3205846 (= e!1998801 e!1998800)))

(declare-fun res!1304666 () Bool)

(assert (=> b!3205846 (= res!1304666 (< (size!27212 (_2!20887 lt!1082097)) (size!27212 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)))))))

(assert (=> b!3205846 (=> (not res!1304666) (not e!1998800))))

(declare-fun b!3205847 () Bool)

(assert (=> b!3205847 (= e!1998799 (= (list!12843 (_2!20887 lt!1082097)) (_2!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)))))))))

(assert (= (and d!877956 c!538444) b!3205846))

(assert (= (and d!877956 (not c!538444)) b!3205843))

(assert (= (and b!3205846 res!1304666) b!3205844))

(assert (= (and d!877956 res!1304664) b!3205845))

(assert (= (and b!3205845 res!1304665) b!3205847))

(declare-fun m!3471333 () Bool)

(assert (=> b!3205847 m!3471333))

(assert (=> b!3205847 m!3469463))

(declare-fun m!3471335 () Bool)

(assert (=> b!3205847 m!3471335))

(assert (=> b!3205847 m!3471335))

(declare-fun m!3471337 () Bool)

(assert (=> b!3205847 m!3471337))

(declare-fun m!3471339 () Bool)

(assert (=> d!877956 m!3471339))

(assert (=> d!877956 m!3469463))

(assert (=> d!877956 m!3469463))

(declare-fun m!3471341 () Bool)

(assert (=> d!877956 m!3471341))

(declare-fun m!3471343 () Bool)

(assert (=> b!3205844 m!3471343))

(declare-fun m!3471345 () Bool)

(assert (=> b!3205846 m!3471345))

(assert (=> b!3205846 m!3469463))

(declare-fun m!3471347 () Bool)

(assert (=> b!3205846 m!3471347))

(declare-fun m!3471349 () Bool)

(assert (=> b!3205845 m!3471349))

(assert (=> b!3205845 m!3469463))

(assert (=> b!3205845 m!3471335))

(assert (=> b!3205845 m!3471335))

(assert (=> b!3205845 m!3471337))

(assert (=> b!3204654 d!877956))

(declare-fun d!877958 () Bool)

(declare-fun lt!1082101 () BalanceConc!21204)

(assert (=> d!877958 (= (list!12843 lt!1082101) (printList!1349 thiss!18206 (list!12844 (singletonSeq!2306 separatorToken!241))))))

(assert (=> d!877958 (= lt!1082101 (printTailRec!1296 thiss!18206 (singletonSeq!2306 separatorToken!241) 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!877958 (= (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)) lt!1082101)))

(declare-fun bs!541298 () Bool)

(assert (= bs!541298 d!877958))

(declare-fun m!3471351 () Bool)

(assert (=> bs!541298 m!3471351))

(assert (=> bs!541298 m!3469259))

(assert (=> bs!541298 m!3469467))

(assert (=> bs!541298 m!3469467))

(declare-fun m!3471353 () Bool)

(assert (=> bs!541298 m!3471353))

(assert (=> bs!541298 m!3469259))

(declare-fun m!3471357 () Bool)

(assert (=> bs!541298 m!3471357))

(assert (=> b!3204654 d!877958))

(assert (=> b!3204654 d!877518))

(assert (=> d!877400 d!877402))

(declare-fun d!877962 () Bool)

(assert (=> d!877962 (not (matchR!4603 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636))))

(assert (=> d!877962 true))

(declare-fun _$127!258 () Unit!50554)

(assert (=> d!877962 (= (choose!18701 (regex!5210 (rule!7648 separatorToken!241)) lt!1081636 lt!1081655) _$127!258)))

(declare-fun bs!541300 () Bool)

(assert (= bs!541300 d!877962))

(assert (=> bs!541300 m!3469193))

(assert (=> d!877400 d!877962))

(declare-fun b!3205854 () Bool)

(declare-fun e!1998807 () Bool)

(declare-fun e!1998808 () Bool)

(assert (=> b!3205854 (= e!1998807 e!1998808)))

(declare-fun c!538450 () Bool)

(assert (=> b!3205854 (= c!538450 ((_ is Star!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun b!3205855 () Bool)

(declare-fun e!1998809 () Bool)

(declare-fun call!232063 () Bool)

(assert (=> b!3205855 (= e!1998809 call!232063)))

(declare-fun b!3205856 () Bool)

(declare-fun res!1304667 () Bool)

(declare-fun e!1998811 () Bool)

(assert (=> b!3205856 (=> res!1304667 e!1998811)))

(assert (=> b!3205856 (= res!1304667 (not ((_ is Concat!15409) (regex!5210 (rule!7648 separatorToken!241)))))))

(declare-fun e!1998805 () Bool)

(assert (=> b!3205856 (= e!1998805 e!1998811)))

(declare-fun bm!232058 () Bool)

(declare-fun call!232064 () Bool)

(assert (=> bm!232058 (= call!232063 call!232064)))

(declare-fun bm!232059 () Bool)

(declare-fun call!232065 () Bool)

(declare-fun c!538449 () Bool)

(assert (=> bm!232059 (= call!232065 (validRegex!4549 (ite c!538449 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))))))

(declare-fun b!3205857 () Bool)

(declare-fun e!1998806 () Bool)

(assert (=> b!3205857 (= e!1998811 e!1998806)))

(declare-fun res!1304669 () Bool)

(assert (=> b!3205857 (=> (not res!1304669) (not e!1998806))))

(assert (=> b!3205857 (= res!1304669 call!232065)))

(declare-fun b!3205858 () Bool)

(assert (=> b!3205858 (= e!1998806 call!232063)))

(declare-fun b!3205860 () Bool)

(assert (=> b!3205860 (= e!1998808 e!1998805)))

(assert (=> b!3205860 (= c!538449 ((_ is Union!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun bm!232060 () Bool)

(assert (=> bm!232060 (= call!232064 (validRegex!4549 (ite c!538450 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538449 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))

(declare-fun b!3205861 () Bool)

(declare-fun e!1998810 () Bool)

(assert (=> b!3205861 (= e!1998808 e!1998810)))

(declare-fun res!1304671 () Bool)

(assert (=> b!3205861 (= res!1304671 (not (nullable!3395 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))))))))

(assert (=> b!3205861 (=> (not res!1304671) (not e!1998810))))

(declare-fun b!3205862 () Bool)

(assert (=> b!3205862 (= e!1998810 call!232064)))

(declare-fun d!877966 () Bool)

(declare-fun res!1304670 () Bool)

(assert (=> d!877966 (=> res!1304670 e!1998807)))

(assert (=> d!877966 (= res!1304670 ((_ is ElementMatch!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(assert (=> d!877966 (= (validRegex!4549 (regex!5210 (rule!7648 separatorToken!241))) e!1998807)))

(declare-fun b!3205859 () Bool)

(declare-fun res!1304668 () Bool)

(assert (=> b!3205859 (=> (not res!1304668) (not e!1998809))))

(assert (=> b!3205859 (= res!1304668 call!232065)))

(assert (=> b!3205859 (= e!1998805 e!1998809)))

(assert (= (and d!877966 (not res!1304670)) b!3205854))

(assert (= (and b!3205854 c!538450) b!3205861))

(assert (= (and b!3205854 (not c!538450)) b!3205860))

(assert (= (and b!3205861 res!1304671) b!3205862))

(assert (= (and b!3205860 c!538449) b!3205859))

(assert (= (and b!3205860 (not c!538449)) b!3205856))

(assert (= (and b!3205859 res!1304668) b!3205855))

(assert (= (and b!3205856 (not res!1304667)) b!3205857))

(assert (= (and b!3205857 res!1304669) b!3205858))

(assert (= (or b!3205855 b!3205858) bm!232058))

(assert (= (or b!3205859 b!3205857) bm!232059))

(assert (= (or b!3205862 bm!232058) bm!232060))

(declare-fun m!3471363 () Bool)

(assert (=> bm!232059 m!3471363))

(declare-fun m!3471365 () Bool)

(assert (=> bm!232060 m!3471365))

(declare-fun m!3471369 () Bool)

(assert (=> b!3205861 m!3471369))

(assert (=> d!877400 d!877966))

(declare-fun d!877970 () Bool)

(declare-fun lt!1082107 () Int)

(assert (=> d!877970 (= lt!1082107 (size!27216 (list!12844 (_1!20887 lt!1081924))))))

(assert (=> d!877970 (= lt!1082107 (size!27217 (c!538128 (_1!20887 lt!1081924))))))

(assert (=> d!877970 (= (size!27210 (_1!20887 lt!1081924)) lt!1082107)))

(declare-fun bs!541302 () Bool)

(assert (= bs!541302 d!877970))

(assert (=> bs!541302 m!3470297))

(assert (=> bs!541302 m!3470297))

(declare-fun m!3471373 () Bool)

(assert (=> bs!541302 m!3471373))

(declare-fun m!3471375 () Bool)

(assert (=> bs!541302 m!3471375))

(assert (=> d!877570 d!877970))

(declare-fun lt!1082199 () tuple2!35506)

(declare-fun b!3205903 () Bool)

(declare-fun e!1998839 () Bool)

(declare-fun lexRec!684 (LexerInterface!4799 List!36244 BalanceConc!21204) tuple2!35506)

(assert (=> b!3205903 (= e!1998839 (= (list!12843 (_2!20887 lt!1082199)) (list!12843 (_2!20887 (lexRec!684 thiss!18206 rules!2135 lt!1081647)))))))

(declare-datatypes ((tuple2!35518 0))(
  ( (tuple2!35519 (_1!20893 Token!9786) (_2!20893 BalanceConc!21204)) )
))
(declare-datatypes ((Option!7119 0))(
  ( (None!7118) (Some!7118 (v!35668 tuple2!35518)) )
))
(declare-fun lt!1082200 () Option!7119)

(declare-fun b!3205904 () Bool)

(declare-fun lt!1082216 () tuple2!35506)

(assert (=> b!3205904 (= lt!1082216 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082200))))))

(declare-fun e!1998836 () tuple2!35506)

(declare-fun prepend!1172 (BalanceConc!21206 Token!9786) BalanceConc!21206)

(assert (=> b!3205904 (= e!1998836 (tuple2!35507 (prepend!1172 (_1!20887 lt!1082216) (_1!20893 (v!35668 lt!1082200))) (_2!20887 lt!1082216)))))

(declare-fun lt!1082193 () Option!7119)

(declare-fun lt!1082218 () tuple2!35506)

(declare-fun b!3205905 () Bool)

(assert (=> b!3205905 (= lt!1082218 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082193))))))

(declare-fun e!1998838 () tuple2!35506)

(assert (=> b!3205905 (= e!1998838 (tuple2!35507 (prepend!1172 (_1!20887 lt!1082218) (_1!20893 (v!35668 lt!1082193))) (_2!20887 lt!1082218)))))

(declare-fun b!3205906 () Bool)

(assert (=> b!3205906 (= e!1998836 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1081647))))

(declare-fun b!3205907 () Bool)

(declare-fun lt!1082214 () BalanceConc!21204)

(assert (=> b!3205907 (= e!1998838 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1082214))))

(declare-fun b!3205908 () Bool)

(declare-fun e!1998837 () tuple2!35506)

(assert (=> b!3205908 (= e!1998837 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1081647))))

(declare-fun d!877976 () Bool)

(assert (=> d!877976 e!1998839))

(declare-fun res!1304682 () Bool)

(assert (=> d!877976 (=> (not res!1304682) (not e!1998839))))

(assert (=> d!877976 (= res!1304682 (= (list!12844 (_1!20887 lt!1082199)) (list!12844 (_1!20887 (lexRec!684 thiss!18206 rules!2135 lt!1081647)))))))

(assert (=> d!877976 (= lt!1082199 e!1998837)))

(declare-fun c!538467 () Bool)

(declare-fun lt!1082204 () Option!7119)

(assert (=> d!877976 (= c!538467 ((_ is Some!7118) lt!1082204))))

(declare-fun maxPrefixZipperSequenceV2!471 (LexerInterface!4799 List!36244 BalanceConc!21204 BalanceConc!21204) Option!7119)

(assert (=> d!877976 (= lt!1082204 (maxPrefixZipperSequenceV2!471 thiss!18206 rules!2135 lt!1081647 lt!1081647))))

(declare-fun lt!1082209 () Unit!50554)

(declare-fun lt!1082207 () Unit!50554)

(assert (=> d!877976 (= lt!1082209 lt!1082207)))

(declare-fun lt!1082222 () List!36243)

(declare-fun lt!1082198 () List!36243)

(declare-fun isSuffix!846 (List!36243 List!36243) Bool)

(assert (=> d!877976 (isSuffix!846 lt!1082222 (++!8660 lt!1082198 lt!1082222))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!531 (List!36243 List!36243) Unit!50554)

(assert (=> d!877976 (= lt!1082207 (lemmaConcatTwoListThenFSndIsSuffix!531 lt!1082198 lt!1082222))))

(assert (=> d!877976 (= lt!1082222 (list!12843 lt!1081647))))

(assert (=> d!877976 (= lt!1082198 (list!12843 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!877976 (= (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081647 (BalanceConc!21205 Empty!10795) lt!1081647 (BalanceConc!21207 Empty!10796)) lt!1082199)))

(declare-fun lt!1082194 () BalanceConc!21204)

(declare-fun b!3205909 () Bool)

(declare-fun append!864 (BalanceConc!21206 Token!9786) BalanceConc!21206)

(assert (=> b!3205909 (= e!1998837 (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081647 lt!1082194 (_2!20893 (v!35668 lt!1082204)) (append!864 (BalanceConc!21207 Empty!10796) (_1!20893 (v!35668 lt!1082204)))))))

(declare-fun lt!1082212 () tuple2!35506)

(assert (=> b!3205909 (= lt!1082212 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082204))))))

(declare-fun lt!1082201 () List!36243)

(assert (=> b!3205909 (= lt!1082201 (list!12843 (BalanceConc!21205 Empty!10795)))))

(declare-fun lt!1082205 () List!36243)

(assert (=> b!3205909 (= lt!1082205 (list!12843 (charsOf!3226 (_1!20893 (v!35668 lt!1082204)))))))

(declare-fun lt!1082192 () List!36243)

(assert (=> b!3205909 (= lt!1082192 (list!12843 (_2!20893 (v!35668 lt!1082204))))))

(declare-fun lt!1082211 () Unit!50554)

(assert (=> b!3205909 (= lt!1082211 (lemmaConcatAssociativity!1730 lt!1082201 lt!1082205 lt!1082192))))

(assert (=> b!3205909 (= (++!8660 (++!8660 lt!1082201 lt!1082205) lt!1082192) (++!8660 lt!1082201 (++!8660 lt!1082205 lt!1082192)))))

(declare-fun lt!1082208 () Unit!50554)

(assert (=> b!3205909 (= lt!1082208 lt!1082211)))

(declare-fun maxPrefixZipperSequence!1077 (LexerInterface!4799 List!36244 BalanceConc!21204) Option!7119)

(assert (=> b!3205909 (= lt!1082200 (maxPrefixZipperSequence!1077 thiss!18206 rules!2135 lt!1081647))))

(declare-fun c!538466 () Bool)

(assert (=> b!3205909 (= c!538466 ((_ is Some!7118) lt!1082200))))

(assert (=> b!3205909 (= (lexRec!684 thiss!18206 rules!2135 lt!1081647) e!1998836)))

(declare-fun lt!1082219 () Unit!50554)

(declare-fun Unit!50558 () Unit!50554)

(assert (=> b!3205909 (= lt!1082219 Unit!50558)))

(declare-fun lt!1082221 () List!36245)

(assert (=> b!3205909 (= lt!1082221 (list!12844 (BalanceConc!21207 Empty!10796)))))

(declare-fun lt!1082195 () List!36245)

(assert (=> b!3205909 (= lt!1082195 (Cons!36121 (_1!20893 (v!35668 lt!1082204)) Nil!36121))))

(declare-fun lt!1082215 () List!36245)

(assert (=> b!3205909 (= lt!1082215 (list!12844 (_1!20887 lt!1082212)))))

(declare-fun lt!1082206 () Unit!50554)

(declare-fun lemmaConcatAssociativity!1731 (List!36245 List!36245 List!36245) Unit!50554)

(assert (=> b!3205909 (= lt!1082206 (lemmaConcatAssociativity!1731 lt!1082221 lt!1082195 lt!1082215))))

(declare-fun ++!8664 (List!36245 List!36245) List!36245)

(assert (=> b!3205909 (= (++!8664 (++!8664 lt!1082221 lt!1082195) lt!1082215) (++!8664 lt!1082221 (++!8664 lt!1082195 lt!1082215)))))

(declare-fun lt!1082217 () Unit!50554)

(assert (=> b!3205909 (= lt!1082217 lt!1082206)))

(declare-fun lt!1082202 () List!36243)

(assert (=> b!3205909 (= lt!1082202 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (_1!20893 (v!35668 lt!1082204))))))))

(declare-fun lt!1082213 () List!36243)

(assert (=> b!3205909 (= lt!1082213 (list!12843 (_2!20893 (v!35668 lt!1082204))))))

(declare-fun lt!1082196 () List!36245)

(assert (=> b!3205909 (= lt!1082196 (list!12844 (append!864 (BalanceConc!21207 Empty!10796) (_1!20893 (v!35668 lt!1082204)))))))

(declare-fun lt!1082190 () Unit!50554)

(declare-fun lemmaLexThenLexPrefix!449 (LexerInterface!4799 List!36244 List!36243 List!36243 List!36245 List!36245 List!36243) Unit!50554)

(assert (=> b!3205909 (= lt!1082190 (lemmaLexThenLexPrefix!449 thiss!18206 rules!2135 lt!1082202 lt!1082213 lt!1082196 (list!12844 (_1!20887 lt!1082212)) (list!12843 (_2!20887 lt!1082212))))))

(assert (=> b!3205909 (= (lexList!1310 thiss!18206 rules!2135 lt!1082202) (tuple2!35511 lt!1082196 Nil!36119))))

(declare-fun lt!1082189 () Unit!50554)

(assert (=> b!3205909 (= lt!1082189 lt!1082190)))

(assert (=> b!3205909 (= lt!1082214 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082204)))))))

(assert (=> b!3205909 (= lt!1082193 (maxPrefixZipperSequence!1077 thiss!18206 rules!2135 lt!1082214))))

(declare-fun c!538468 () Bool)

(assert (=> b!3205909 (= c!538468 ((_ is Some!7118) lt!1082193))))

(assert (=> b!3205909 (= (lexRec!684 thiss!18206 rules!2135 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082204))))) e!1998838)))

(declare-fun lt!1082220 () Unit!50554)

(declare-fun Unit!50559 () Unit!50554)

(assert (=> b!3205909 (= lt!1082220 Unit!50559)))

(assert (=> b!3205909 (= lt!1082194 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082204)))))))

(declare-fun lt!1082191 () List!36243)

(assert (=> b!3205909 (= lt!1082191 (list!12843 lt!1082194))))

(declare-fun lt!1082197 () List!36243)

(assert (=> b!3205909 (= lt!1082197 (list!12843 (_2!20893 (v!35668 lt!1082204))))))

(declare-fun lt!1082210 () Unit!50554)

(assert (=> b!3205909 (= lt!1082210 (lemmaConcatTwoListThenFSndIsSuffix!531 lt!1082191 lt!1082197))))

(assert (=> b!3205909 (isSuffix!846 lt!1082197 (++!8660 lt!1082191 lt!1082197))))

(declare-fun lt!1082203 () Unit!50554)

(assert (=> b!3205909 (= lt!1082203 lt!1082210)))

(assert (= (and d!877976 c!538467) b!3205909))

(assert (= (and d!877976 (not c!538467)) b!3205908))

(assert (= (and b!3205909 c!538466) b!3205904))

(assert (= (and b!3205909 (not c!538466)) b!3205906))

(assert (= (and b!3205909 c!538468) b!3205905))

(assert (= (and b!3205909 (not c!538468)) b!3205907))

(assert (= (and d!877976 res!1304682) b!3205903))

(declare-fun m!3471409 () Bool)

(assert (=> b!3205904 m!3471409))

(declare-fun m!3471411 () Bool)

(assert (=> b!3205904 m!3471411))

(declare-fun m!3471413 () Bool)

(assert (=> d!877976 m!3471413))

(declare-fun m!3471415 () Bool)

(assert (=> d!877976 m!3471415))

(assert (=> d!877976 m!3471415))

(declare-fun m!3471417 () Bool)

(assert (=> d!877976 m!3471417))

(assert (=> d!877976 m!3469595))

(declare-fun m!3471419 () Bool)

(assert (=> d!877976 m!3471419))

(declare-fun m!3471421 () Bool)

(assert (=> d!877976 m!3471421))

(assert (=> d!877976 m!3470283))

(declare-fun m!3471423 () Bool)

(assert (=> d!877976 m!3471423))

(declare-fun m!3471425 () Bool)

(assert (=> d!877976 m!3471425))

(declare-fun m!3471427 () Bool)

(assert (=> b!3205905 m!3471427))

(declare-fun m!3471429 () Bool)

(assert (=> b!3205905 m!3471429))

(declare-fun m!3471431 () Bool)

(assert (=> b!3205903 m!3471431))

(assert (=> b!3205903 m!3471423))

(declare-fun m!3471433 () Bool)

(assert (=> b!3205903 m!3471433))

(declare-fun m!3471435 () Bool)

(assert (=> b!3205909 m!3471435))

(declare-fun m!3471437 () Bool)

(assert (=> b!3205909 m!3471437))

(declare-fun m!3471439 () Bool)

(assert (=> b!3205909 m!3471439))

(assert (=> b!3205909 m!3471439))

(declare-fun m!3471441 () Bool)

(assert (=> b!3205909 m!3471441))

(assert (=> b!3205909 m!3471423))

(declare-fun m!3471443 () Bool)

(assert (=> b!3205909 m!3471443))

(declare-fun m!3471445 () Bool)

(assert (=> b!3205909 m!3471445))

(assert (=> b!3205909 m!3471435))

(declare-fun m!3471447 () Bool)

(assert (=> b!3205909 m!3471447))

(declare-fun m!3471449 () Bool)

(assert (=> b!3205909 m!3471449))

(declare-fun m!3471451 () Bool)

(assert (=> b!3205909 m!3471451))

(declare-fun m!3471453 () Bool)

(assert (=> b!3205909 m!3471453))

(assert (=> b!3205909 m!3471449))

(declare-fun m!3471455 () Bool)

(assert (=> b!3205909 m!3471455))

(declare-fun m!3471457 () Bool)

(assert (=> b!3205909 m!3471457))

(declare-fun m!3471459 () Bool)

(assert (=> b!3205909 m!3471459))

(declare-fun m!3471461 () Bool)

(assert (=> b!3205909 m!3471461))

(declare-fun m!3471463 () Bool)

(assert (=> b!3205909 m!3471463))

(declare-fun m!3471465 () Bool)

(assert (=> b!3205909 m!3471465))

(declare-fun m!3471467 () Bool)

(assert (=> b!3205909 m!3471467))

(declare-fun m!3471469 () Bool)

(assert (=> b!3205909 m!3471469))

(declare-fun m!3471471 () Bool)

(assert (=> b!3205909 m!3471471))

(assert (=> b!3205909 m!3471465))

(declare-fun m!3471473 () Bool)

(assert (=> b!3205909 m!3471473))

(assert (=> b!3205909 m!3471471))

(declare-fun m!3471475 () Bool)

(assert (=> b!3205909 m!3471475))

(assert (=> b!3205909 m!3469595))

(declare-fun m!3471477 () Bool)

(assert (=> b!3205909 m!3471477))

(declare-fun m!3471479 () Bool)

(assert (=> b!3205909 m!3471479))

(assert (=> b!3205909 m!3469595))

(assert (=> b!3205909 m!3471463))

(declare-fun m!3471481 () Bool)

(assert (=> b!3205909 m!3471481))

(declare-fun m!3471483 () Bool)

(assert (=> b!3205909 m!3471483))

(assert (=> b!3205909 m!3471449))

(declare-fun m!3471485 () Bool)

(assert (=> b!3205909 m!3471485))

(assert (=> b!3205909 m!3471471))

(assert (=> b!3205909 m!3471477))

(assert (=> b!3205909 m!3471483))

(declare-fun m!3471487 () Bool)

(assert (=> b!3205909 m!3471487))

(declare-fun m!3471489 () Bool)

(assert (=> b!3205909 m!3471489))

(assert (=> b!3205909 m!3471459))

(assert (=> b!3205909 m!3471475))

(declare-fun m!3471491 () Bool)

(assert (=> b!3205909 m!3471491))

(declare-fun m!3471493 () Bool)

(assert (=> b!3205909 m!3471493))

(assert (=> b!3205909 m!3471457))

(declare-fun m!3471495 () Bool)

(assert (=> b!3205909 m!3471495))

(assert (=> d!877570 d!877976))

(declare-fun b!3205910 () Bool)

(declare-fun res!1304683 () Bool)

(declare-fun e!1998840 () Bool)

(assert (=> b!3205910 (=> (not res!1304683) (not e!1998840))))

(assert (=> b!3205910 (= res!1304683 (isBalanced!3212 (right!28401 (c!538128 lt!1081828))))))

(declare-fun b!3205911 () Bool)

(declare-fun res!1304687 () Bool)

(assert (=> b!3205911 (=> (not res!1304687) (not e!1998840))))

(assert (=> b!3205911 (= res!1304687 (not (isEmpty!20207 (left!28071 (c!538128 lt!1081828)))))))

(declare-fun b!3205912 () Bool)

(declare-fun e!1998841 () Bool)

(assert (=> b!3205912 (= e!1998841 e!1998840)))

(declare-fun res!1304688 () Bool)

(assert (=> b!3205912 (=> (not res!1304688) (not e!1998840))))

(assert (=> b!3205912 (= res!1304688 (<= (- 1) (- (height!1550 (left!28071 (c!538128 lt!1081828))) (height!1550 (right!28401 (c!538128 lt!1081828))))))))

(declare-fun b!3205913 () Bool)

(declare-fun res!1304684 () Bool)

(assert (=> b!3205913 (=> (not res!1304684) (not e!1998840))))

(assert (=> b!3205913 (= res!1304684 (<= (- (height!1550 (left!28071 (c!538128 lt!1081828))) (height!1550 (right!28401 (c!538128 lt!1081828)))) 1))))

(declare-fun d!877994 () Bool)

(declare-fun res!1304685 () Bool)

(assert (=> d!877994 (=> res!1304685 e!1998841)))

(assert (=> d!877994 (= res!1304685 (not ((_ is Node!10796) (c!538128 lt!1081828))))))

(assert (=> d!877994 (= (isBalanced!3212 (c!538128 lt!1081828)) e!1998841)))

(declare-fun b!3205914 () Bool)

(assert (=> b!3205914 (= e!1998840 (not (isEmpty!20207 (right!28401 (c!538128 lt!1081828)))))))

(declare-fun b!3205915 () Bool)

(declare-fun res!1304686 () Bool)

(assert (=> b!3205915 (=> (not res!1304686) (not e!1998840))))

(assert (=> b!3205915 (= res!1304686 (isBalanced!3212 (left!28071 (c!538128 lt!1081828))))))

(assert (= (and d!877994 (not res!1304685)) b!3205912))

(assert (= (and b!3205912 res!1304688) b!3205913))

(assert (= (and b!3205913 res!1304684) b!3205915))

(assert (= (and b!3205915 res!1304686) b!3205910))

(assert (= (and b!3205910 res!1304683) b!3205911))

(assert (= (and b!3205911 res!1304687) b!3205914))

(declare-fun m!3471497 () Bool)

(assert (=> b!3205913 m!3471497))

(declare-fun m!3471499 () Bool)

(assert (=> b!3205913 m!3471499))

(declare-fun m!3471501 () Bool)

(assert (=> b!3205914 m!3471501))

(assert (=> b!3205912 m!3471497))

(assert (=> b!3205912 m!3471499))

(declare-fun m!3471503 () Bool)

(assert (=> b!3205911 m!3471503))

(declare-fun m!3471505 () Bool)

(assert (=> b!3205910 m!3471505))

(declare-fun m!3471507 () Bool)

(assert (=> b!3205915 m!3471507))

(assert (=> b!3204963 d!877994))

(assert (=> b!3204734 d!877520))

(declare-fun d!877996 () Bool)

(assert (=> d!877996 (= (isEmpty!20208 (originalCharacters!5924 separatorToken!241)) ((_ is Nil!36119) (originalCharacters!5924 separatorToken!241)))))

(assert (=> d!877578 d!877996))

(declare-fun d!877998 () Bool)

(declare-fun lt!1082225 () Bool)

(declare-fun content!4885 (List!36245) (InoxSet Token!9786))

(assert (=> d!877998 (= lt!1082225 (select (content!4885 tokens!494) (h!41541 tokens!494)))))

(declare-fun e!1998847 () Bool)

(assert (=> d!877998 (= lt!1082225 e!1998847)))

(declare-fun res!1304693 () Bool)

(assert (=> d!877998 (=> (not res!1304693) (not e!1998847))))

(assert (=> d!877998 (= res!1304693 ((_ is Cons!36121) tokens!494))))

(assert (=> d!877998 (= (contains!6434 tokens!494 (h!41541 tokens!494)) lt!1082225)))

(declare-fun b!3205920 () Bool)

(declare-fun e!1998846 () Bool)

(assert (=> b!3205920 (= e!1998847 e!1998846)))

(declare-fun res!1304694 () Bool)

(assert (=> b!3205920 (=> res!1304694 e!1998846)))

(assert (=> b!3205920 (= res!1304694 (= (h!41541 tokens!494) (h!41541 tokens!494)))))

(declare-fun b!3205921 () Bool)

(assert (=> b!3205921 (= e!1998846 (contains!6434 (t!237946 tokens!494) (h!41541 tokens!494)))))

(assert (= (and d!877998 res!1304693) b!3205920))

(assert (= (and b!3205920 (not res!1304694)) b!3205921))

(declare-fun m!3471509 () Bool)

(assert (=> d!877998 m!3471509))

(declare-fun m!3471511 () Bool)

(assert (=> d!877998 m!3471511))

(declare-fun m!3471513 () Bool)

(assert (=> b!3205921 m!3471513))

(assert (=> b!3204841 d!877998))

(declare-fun b!3206123 () Bool)

(declare-fun e!1998964 () Unit!50554)

(declare-fun Unit!50562 () Unit!50554)

(assert (=> b!3206123 (= e!1998964 Unit!50562)))

(declare-fun b!3206124 () Bool)

(declare-fun e!1998960 () tuple2!35516)

(assert (=> b!3206124 (= e!1998960 (tuple2!35517 Nil!36119 Nil!36119))))

(declare-fun bm!232098 () Bool)

(declare-fun call!232104 () Bool)

(assert (=> bm!232098 (= call!232104 (nullable!3395 (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun bm!232099 () Bool)

(declare-fun call!232105 () List!36243)

(assert (=> bm!232099 (= call!232105 (tail!5206 lt!1081658))))

(declare-fun bm!232100 () Bool)

(declare-fun call!232106 () Unit!50554)

(declare-fun lemmaIsPrefixSameLengthThenSameList!512 (List!36243 List!36243 List!36243) Unit!50554)

(assert (=> bm!232100 (= call!232106 (lemmaIsPrefixSameLengthThenSameList!512 lt!1081658 Nil!36119 lt!1081658))))

(declare-fun b!3206125 () Bool)

(declare-fun Unit!50563 () Unit!50554)

(assert (=> b!3206125 (= e!1998964 Unit!50563)))

(declare-fun lt!1082442 () Unit!50554)

(declare-fun call!232110 () Unit!50554)

(assert (=> b!3206125 (= lt!1082442 call!232110)))

(declare-fun call!232107 () Bool)

(assert (=> b!3206125 call!232107))

(declare-fun lt!1082439 () Unit!50554)

(assert (=> b!3206125 (= lt!1082439 lt!1082442)))

(declare-fun lt!1082446 () Unit!50554)

(assert (=> b!3206125 (= lt!1082446 call!232106)))

(assert (=> b!3206125 (= lt!1081658 Nil!36119)))

(declare-fun lt!1082464 () Unit!50554)

(assert (=> b!3206125 (= lt!1082464 lt!1082446)))

(assert (=> b!3206125 false))

(declare-fun b!3206126 () Bool)

(declare-fun c!538549 () Bool)

(assert (=> b!3206126 (= c!538549 call!232104)))

(declare-fun lt!1082458 () Unit!50554)

(declare-fun lt!1082456 () Unit!50554)

(assert (=> b!3206126 (= lt!1082458 lt!1082456)))

(assert (=> b!3206126 (= lt!1081658 Nil!36119)))

(assert (=> b!3206126 (= lt!1082456 call!232106)))

(declare-fun lt!1082461 () Unit!50554)

(declare-fun lt!1082460 () Unit!50554)

(assert (=> b!3206126 (= lt!1082461 lt!1082460)))

(assert (=> b!3206126 call!232107))

(assert (=> b!3206126 (= lt!1082460 call!232110)))

(declare-fun e!1998961 () tuple2!35516)

(assert (=> b!3206126 (= e!1998961 e!1998960)))

(declare-fun b!3206128 () Bool)

(declare-fun e!1998962 () Bool)

(declare-fun e!1998965 () Bool)

(assert (=> b!3206128 (= e!1998962 e!1998965)))

(declare-fun res!1304741 () Bool)

(assert (=> b!3206128 (=> res!1304741 e!1998965)))

(declare-fun lt!1082452 () tuple2!35516)

(assert (=> b!3206128 (= res!1304741 (isEmpty!20208 (_1!20892 lt!1082452)))))

(declare-fun b!3206129 () Bool)

(declare-fun c!538551 () Bool)

(assert (=> b!3206129 (= c!538551 call!232104)))

(declare-fun lt!1082449 () Unit!50554)

(declare-fun lt!1082438 () Unit!50554)

(assert (=> b!3206129 (= lt!1082449 lt!1082438)))

(declare-fun lt!1082437 () C!20124)

(declare-fun lt!1082447 () List!36243)

(assert (=> b!3206129 (= (++!8660 (++!8660 Nil!36119 (Cons!36119 lt!1082437 Nil!36119)) lt!1082447) lt!1081658)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1117 (List!36243 C!20124 List!36243 List!36243) Unit!50554)

(assert (=> b!3206129 (= lt!1082438 (lemmaMoveElementToOtherListKeepsConcatEq!1117 Nil!36119 lt!1082437 lt!1082447 lt!1081658))))

(assert (=> b!3206129 (= lt!1082447 (tail!5206 lt!1081658))))

(assert (=> b!3206129 (= lt!1082437 (head!7027 lt!1081658))))

(declare-fun lt!1082451 () Unit!50554)

(declare-fun lt!1082443 () Unit!50554)

(assert (=> b!3206129 (= lt!1082451 lt!1082443)))

(declare-fun isPrefix!2781 (List!36243 List!36243) Bool)

(declare-fun getSuffix!1383 (List!36243 List!36243) List!36243)

(assert (=> b!3206129 (isPrefix!2781 (++!8660 Nil!36119 (Cons!36119 (head!7027 (getSuffix!1383 lt!1081658 Nil!36119)) Nil!36119)) lt!1081658)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!505 (List!36243 List!36243) Unit!50554)

(assert (=> b!3206129 (= lt!1082443 (lemmaAddHeadSuffixToPrefixStillPrefix!505 Nil!36119 lt!1081658))))

(declare-fun lt!1082453 () Unit!50554)

(declare-fun lt!1082441 () Unit!50554)

(assert (=> b!3206129 (= lt!1082453 lt!1082441)))

(assert (=> b!3206129 (= lt!1082441 (lemmaAddHeadSuffixToPrefixStillPrefix!505 Nil!36119 lt!1081658))))

(declare-fun lt!1082463 () List!36243)

(assert (=> b!3206129 (= lt!1082463 (++!8660 Nil!36119 (Cons!36119 (head!7027 lt!1081658) Nil!36119)))))

(declare-fun lt!1082455 () Unit!50554)

(assert (=> b!3206129 (= lt!1082455 e!1998964)))

(declare-fun c!538550 () Bool)

(assert (=> b!3206129 (= c!538550 (= (size!27211 Nil!36119) (size!27211 lt!1081658)))))

(declare-fun lt!1082448 () Unit!50554)

(declare-fun lt!1082457 () Unit!50554)

(assert (=> b!3206129 (= lt!1082448 lt!1082457)))

(assert (=> b!3206129 (<= (size!27211 Nil!36119) (size!27211 lt!1081658))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!313 (List!36243 List!36243) Unit!50554)

(assert (=> b!3206129 (= lt!1082457 (lemmaIsPrefixThenSmallerEqSize!313 Nil!36119 lt!1081658))))

(declare-fun e!1998959 () tuple2!35516)

(assert (=> b!3206129 (= e!1998961 e!1998959)))

(declare-fun bm!232101 () Bool)

(declare-fun call!232103 () Regex!9969)

(declare-fun call!232109 () C!20124)

(assert (=> bm!232101 (= call!232103 (derivativeStep!2948 (regex!5210 (rule!7648 (h!41541 tokens!494))) call!232109))))

(declare-fun bm!232102 () Bool)

(assert (=> bm!232102 (= call!232109 (head!7027 lt!1081658))))

(declare-fun b!3206130 () Bool)

(declare-fun e!1998963 () tuple2!35516)

(assert (=> b!3206130 (= e!1998959 e!1998963)))

(declare-fun lt!1082444 () tuple2!35516)

(declare-fun call!232108 () tuple2!35516)

(assert (=> b!3206130 (= lt!1082444 call!232108)))

(declare-fun c!538548 () Bool)

(assert (=> b!3206130 (= c!538548 (isEmpty!20208 (_1!20892 lt!1082444)))))

(declare-fun bm!232103 () Bool)

(assert (=> bm!232103 (= call!232107 (isPrefix!2781 lt!1081658 lt!1081658))))

(declare-fun b!3206131 () Bool)

(assert (=> b!3206131 (= e!1998960 (tuple2!35517 Nil!36119 lt!1081658))))

(declare-fun b!3206132 () Bool)

(assert (=> b!3206132 (= e!1998965 (>= (size!27211 (_1!20892 lt!1082452)) (size!27211 Nil!36119)))))

(declare-fun b!3206133 () Bool)

(assert (=> b!3206133 (= e!1998963 (tuple2!35517 Nil!36119 lt!1081658))))

(declare-fun b!3206134 () Bool)

(assert (=> b!3206134 (= e!1998963 lt!1082444)))

(declare-fun b!3206135 () Bool)

(declare-fun e!1998966 () tuple2!35516)

(assert (=> b!3206135 (= e!1998966 (tuple2!35517 Nil!36119 lt!1081658))))

(declare-fun bm!232104 () Bool)

(assert (=> bm!232104 (= call!232108 (findLongestMatchInner!829 call!232103 lt!1082463 (+ (size!27211 Nil!36119) 1) call!232105 lt!1081658 (size!27211 lt!1081658)))))

(declare-fun b!3206127 () Bool)

(assert (=> b!3206127 (= e!1998959 call!232108)))

(declare-fun d!878000 () Bool)

(assert (=> d!878000 e!1998962))

(declare-fun res!1304740 () Bool)

(assert (=> d!878000 (=> (not res!1304740) (not e!1998962))))

(assert (=> d!878000 (= res!1304740 (= (++!8660 (_1!20892 lt!1082452) (_2!20892 lt!1082452)) lt!1081658))))

(assert (=> d!878000 (= lt!1082452 e!1998966)))

(declare-fun c!538552 () Bool)

(declare-fun lostCause!879 (Regex!9969) Bool)

(assert (=> d!878000 (= c!538552 (lostCause!879 (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun lt!1082440 () Unit!50554)

(declare-fun Unit!50564 () Unit!50554)

(assert (=> d!878000 (= lt!1082440 Unit!50564)))

(assert (=> d!878000 (= (getSuffix!1383 lt!1081658 Nil!36119) lt!1081658)))

(declare-fun lt!1082454 () Unit!50554)

(declare-fun lt!1082445 () Unit!50554)

(assert (=> d!878000 (= lt!1082454 lt!1082445)))

(declare-fun lt!1082450 () List!36243)

(assert (=> d!878000 (= lt!1081658 lt!1082450)))

(declare-fun lemmaSamePrefixThenSameSuffix!1229 (List!36243 List!36243 List!36243 List!36243 List!36243) Unit!50554)

(assert (=> d!878000 (= lt!1082445 (lemmaSamePrefixThenSameSuffix!1229 Nil!36119 lt!1081658 Nil!36119 lt!1082450 lt!1081658))))

(assert (=> d!878000 (= lt!1082450 (getSuffix!1383 lt!1081658 Nil!36119))))

(declare-fun lt!1082462 () Unit!50554)

(declare-fun lt!1082459 () Unit!50554)

(assert (=> d!878000 (= lt!1082462 lt!1082459)))

(assert (=> d!878000 (isPrefix!2781 Nil!36119 (++!8660 Nil!36119 lt!1081658))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1763 (List!36243 List!36243) Unit!50554)

(assert (=> d!878000 (= lt!1082459 (lemmaConcatTwoListThenFirstIsPrefix!1763 Nil!36119 lt!1081658))))

(assert (=> d!878000 (validRegex!4549 (regex!5210 (rule!7648 (h!41541 tokens!494))))))

(assert (=> d!878000 (= (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)) lt!1082452)))

(declare-fun b!3206136 () Bool)

(assert (=> b!3206136 (= e!1998966 e!1998961)))

(declare-fun c!538547 () Bool)

(assert (=> b!3206136 (= c!538547 (= (size!27211 Nil!36119) (size!27211 lt!1081658)))))

(declare-fun bm!232105 () Bool)

(declare-fun lemmaIsPrefixRefl!1740 (List!36243 List!36243) Unit!50554)

(assert (=> bm!232105 (= call!232110 (lemmaIsPrefixRefl!1740 lt!1081658 lt!1081658))))

(assert (= (and d!878000 c!538552) b!3206135))

(assert (= (and d!878000 (not c!538552)) b!3206136))

(assert (= (and b!3206136 c!538547) b!3206126))

(assert (= (and b!3206136 (not c!538547)) b!3206129))

(assert (= (and b!3206126 c!538549) b!3206124))

(assert (= (and b!3206126 (not c!538549)) b!3206131))

(assert (= (and b!3206129 c!538550) b!3206125))

(assert (= (and b!3206129 (not c!538550)) b!3206123))

(assert (= (and b!3206129 c!538551) b!3206130))

(assert (= (and b!3206129 (not c!538551)) b!3206127))

(assert (= (and b!3206130 c!538548) b!3206133))

(assert (= (and b!3206130 (not c!538548)) b!3206134))

(assert (= (or b!3206130 b!3206127) bm!232102))

(assert (= (or b!3206130 b!3206127) bm!232099))

(assert (= (or b!3206130 b!3206127) bm!232101))

(assert (= (or b!3206130 b!3206127) bm!232104))

(assert (= (or b!3206126 b!3206125) bm!232105))

(assert (= (or b!3206126 b!3206125) bm!232103))

(assert (= (or b!3206126 b!3206125) bm!232100))

(assert (= (or b!3206126 b!3206129) bm!232098))

(assert (= (and d!878000 res!1304740) b!3206128))

(assert (= (and b!3206128 (not res!1304741)) b!3206132))

(declare-fun m!3471857 () Bool)

(assert (=> bm!232101 m!3471857))

(declare-fun m!3471859 () Bool)

(assert (=> d!878000 m!3471859))

(declare-fun m!3471861 () Bool)

(assert (=> d!878000 m!3471861))

(declare-fun m!3471863 () Bool)

(assert (=> d!878000 m!3471863))

(declare-fun m!3471865 () Bool)

(assert (=> d!878000 m!3471865))

(declare-fun m!3471867 () Bool)

(assert (=> d!878000 m!3471867))

(declare-fun m!3471869 () Bool)

(assert (=> d!878000 m!3471869))

(declare-fun m!3471871 () Bool)

(assert (=> d!878000 m!3471871))

(declare-fun m!3471873 () Bool)

(assert (=> d!878000 m!3471873))

(assert (=> d!878000 m!3471867))

(assert (=> bm!232099 m!3469881))

(declare-fun m!3471875 () Bool)

(assert (=> b!3206129 m!3471875))

(assert (=> b!3206129 m!3471863))

(declare-fun m!3471877 () Bool)

(assert (=> b!3206129 m!3471877))

(declare-fun m!3471879 () Bool)

(assert (=> b!3206129 m!3471879))

(assert (=> b!3206129 m!3470199))

(declare-fun m!3471881 () Bool)

(assert (=> b!3206129 m!3471881))

(declare-fun m!3471883 () Bool)

(assert (=> b!3206129 m!3471883))

(assert (=> b!3206129 m!3469249))

(declare-fun m!3471885 () Bool)

(assert (=> b!3206129 m!3471885))

(assert (=> b!3206129 m!3469891))

(assert (=> b!3206129 m!3471877))

(assert (=> b!3206129 m!3469881))

(assert (=> b!3206129 m!3471863))

(declare-fun m!3471887 () Bool)

(assert (=> b!3206129 m!3471887))

(assert (=> b!3206129 m!3471875))

(declare-fun m!3471889 () Bool)

(assert (=> b!3206129 m!3471889))

(declare-fun m!3471891 () Bool)

(assert (=> b!3206129 m!3471891))

(declare-fun m!3471893 () Bool)

(assert (=> bm!232105 m!3471893))

(declare-fun m!3471895 () Bool)

(assert (=> bm!232103 m!3471895))

(declare-fun m!3471897 () Bool)

(assert (=> bm!232100 m!3471897))

(assert (=> bm!232104 m!3469249))

(declare-fun m!3471899 () Bool)

(assert (=> bm!232104 m!3471899))

(assert (=> bm!232102 m!3469891))

(declare-fun m!3471901 () Bool)

(assert (=> b!3206130 m!3471901))

(declare-fun m!3471903 () Bool)

(assert (=> b!3206128 m!3471903))

(declare-fun m!3471905 () Bool)

(assert (=> bm!232098 m!3471905))

(declare-fun m!3471907 () Bool)

(assert (=> b!3206132 m!3471907))

(assert (=> b!3206132 m!3470199))

(assert (=> b!3205081 d!878000))

(declare-fun b!3206141 () Bool)

(declare-fun e!1998969 () Bool)

(assert (=> b!3206141 (= e!1998969 true)))

(declare-fun d!878124 () Bool)

(assert (=> d!878124 e!1998969))

(assert (= d!878124 b!3206141))

(declare-fun order!18393 () Int)

(declare-fun lambda!117314 () Int)

(declare-fun dynLambda!14567 (Int Int) Int)

(assert (=> b!3206141 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (dynLambda!14567 order!18393 lambda!117314))))

(assert (=> b!3206141 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (dynLambda!14567 order!18393 lambda!117314))))

(assert (=> d!878124 (= (list!12843 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (seqFromList!3492 (_1!20892 lt!1081905))))) (list!12843 (seqFromList!3492 (_1!20892 lt!1081905))))))

(declare-fun lt!1082467 () Unit!50554)

(declare-fun ForallOf!551 (Int BalanceConc!21204) Unit!50554)

(assert (=> d!878124 (= lt!1082467 (ForallOf!551 lambda!117314 (seqFromList!3492 (_1!20892 lt!1081905))))))

(assert (=> d!878124 (= (lemmaSemiInverse!1173 (transformation!5210 (rule!7648 (h!41541 tokens!494))) (seqFromList!3492 (_1!20892 lt!1081905))) lt!1082467)))

(declare-fun b_lambda!87779 () Bool)

(assert (=> (not b_lambda!87779) (not d!878124)))

(declare-fun t!238123 () Bool)

(declare-fun tb!157329 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238123) tb!157329))

(declare-fun e!1998970 () Bool)

(declare-fun tp!1012472 () Bool)

(declare-fun b!3206142 () Bool)

(assert (=> b!3206142 (= e!1998970 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (seqFromList!3492 (_1!20892 lt!1081905)))))) tp!1012472))))

(declare-fun result!199666 () Bool)

(assert (=> tb!157329 (= result!199666 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (seqFromList!3492 (_1!20892 lt!1081905))))) e!1998970))))

(assert (= tb!157329 b!3206142))

(declare-fun m!3471909 () Bool)

(assert (=> b!3206142 m!3471909))

(declare-fun m!3471911 () Bool)

(assert (=> tb!157329 m!3471911))

(assert (=> d!878124 t!238123))

(declare-fun b_and!213379 () Bool)

(assert (= b_and!213289 (and (=> t!238123 result!199666) b_and!213379)))

(declare-fun tb!157331 () Bool)

(declare-fun t!238125 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238125) tb!157331))

(declare-fun result!199668 () Bool)

(assert (= result!199668 result!199666))

(assert (=> d!878124 t!238125))

(declare-fun b_and!213381 () Bool)

(assert (= b_and!213279 (and (=> t!238125 result!199668) b_and!213381)))

(declare-fun t!238127 () Bool)

(declare-fun tb!157333 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238127) tb!157333))

(declare-fun result!199670 () Bool)

(assert (= result!199670 result!199666))

(assert (=> d!878124 t!238127))

(declare-fun b_and!213383 () Bool)

(assert (= b_and!213277 (and (=> t!238127 result!199670) b_and!213383)))

(declare-fun t!238129 () Bool)

(declare-fun tb!157335 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238129) tb!157335))

(declare-fun result!199672 () Bool)

(assert (= result!199672 result!199666))

(assert (=> d!878124 t!238129))

(declare-fun b_and!213385 () Bool)

(assert (= b_and!213285 (and (=> t!238129 result!199672) b_and!213385)))

(declare-fun t!238131 () Bool)

(declare-fun tb!157337 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238131) tb!157337))

(declare-fun result!199674 () Bool)

(assert (= result!199674 result!199666))

(assert (=> d!878124 t!238131))

(declare-fun b_and!213387 () Bool)

(assert (= b_and!213281 (and (=> t!238131 result!199674) b_and!213387)))

(declare-fun b_lambda!87781 () Bool)

(assert (=> (not b_lambda!87781) (not d!878124)))

(declare-fun tb!157339 () Bool)

(declare-fun t!238133 () Bool)

(assert (=> (and b!3205256 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238133) tb!157339))

(declare-fun result!199676 () Bool)

(assert (=> tb!157339 (= result!199676 (inv!21 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (seqFromList!3492 (_1!20892 lt!1081905)))))))

(declare-fun m!3471913 () Bool)

(assert (=> tb!157339 m!3471913))

(assert (=> d!878124 t!238133))

(declare-fun b_and!213389 () Bool)

(assert (= b_and!213339 (and (=> t!238133 result!199676) b_and!213389)))

(declare-fun tb!157341 () Bool)

(declare-fun t!238135 () Bool)

(assert (=> (and b!3204488 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238135) tb!157341))

(declare-fun result!199678 () Bool)

(assert (= result!199678 result!199676))

(assert (=> d!878124 t!238135))

(declare-fun b_and!213391 () Bool)

(assert (= b_and!213341 (and (=> t!238135 result!199678) b_and!213391)))

(declare-fun t!238137 () Bool)

(declare-fun tb!157343 () Bool)

(assert (=> (and b!3205230 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238137) tb!157343))

(declare-fun result!199680 () Bool)

(assert (= result!199680 result!199676))

(assert (=> d!878124 t!238137))

(declare-fun b_and!213393 () Bool)

(assert (= b_and!213343 (and (=> t!238137 result!199680) b_and!213393)))

(declare-fun tb!157345 () Bool)

(declare-fun t!238139 () Bool)

(assert (=> (and b!3204481 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238139) tb!157345))

(declare-fun result!199682 () Bool)

(assert (= result!199682 result!199676))

(assert (=> d!878124 t!238139))

(declare-fun b_and!213395 () Bool)

(assert (= b_and!213345 (and (=> t!238139 result!199682) b_and!213395)))

(declare-fun t!238141 () Bool)

(declare-fun tb!157347 () Bool)

(assert (=> (and b!3204473 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238141) tb!157347))

(declare-fun result!199684 () Bool)

(assert (= result!199684 result!199676))

(assert (=> d!878124 t!238141))

(declare-fun b_and!213397 () Bool)

(assert (= b_and!213347 (and (=> t!238141 result!199684) b_and!213397)))

(assert (=> d!878124 m!3470207))

(declare-fun m!3471915 () Bool)

(assert (=> d!878124 m!3471915))

(assert (=> d!878124 m!3470207))

(declare-fun m!3471917 () Bool)

(assert (=> d!878124 m!3471917))

(assert (=> d!878124 m!3470207))

(declare-fun m!3471919 () Bool)

(assert (=> d!878124 m!3471919))

(assert (=> d!878124 m!3471917))

(declare-fun m!3471921 () Bool)

(assert (=> d!878124 m!3471921))

(assert (=> d!878124 m!3471921))

(declare-fun m!3471923 () Bool)

(assert (=> d!878124 m!3471923))

(assert (=> b!3205081 d!878124))

(declare-fun d!878126 () Bool)

(declare-fun e!1998974 () Bool)

(assert (=> d!878126 e!1998974))

(declare-fun res!1304744 () Bool)

(assert (=> d!878126 (=> res!1304744 e!1998974)))

(assert (=> d!878126 (= res!1304744 (isEmpty!20208 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))

(declare-fun lt!1082470 () Unit!50554)

(declare-fun choose!18718 (Regex!9969 List!36243) Unit!50554)

(assert (=> d!878126 (= lt!1082470 (choose!18718 (regex!5210 (rule!7648 (h!41541 tokens!494))) lt!1081658))))

(assert (=> d!878126 (validRegex!4549 (regex!5210 (rule!7648 (h!41541 tokens!494))))))

(assert (=> d!878126 (= (longestMatchIsAcceptedByMatchOrIsEmpty!802 (regex!5210 (rule!7648 (h!41541 tokens!494))) lt!1081658) lt!1082470)))

(declare-fun b!3206145 () Bool)

(assert (=> b!3206145 (= e!1998974 (matchR!4603 (regex!5210 (rule!7648 (h!41541 tokens!494))) (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))

(assert (= (and d!878126 (not res!1304744)) b!3206145))

(assert (=> d!878126 m!3470199))

(assert (=> d!878126 m!3469249))

(assert (=> d!878126 m!3470201))

(assert (=> d!878126 m!3470199))

(declare-fun m!3471925 () Bool)

(assert (=> d!878126 m!3471925))

(assert (=> d!878126 m!3469249))

(assert (=> d!878126 m!3471873))

(assert (=> d!878126 m!3470215))

(assert (=> b!3206145 m!3470199))

(assert (=> b!3206145 m!3469249))

(assert (=> b!3206145 m!3470199))

(assert (=> b!3206145 m!3469249))

(assert (=> b!3206145 m!3470201))

(assert (=> b!3206145 m!3470203))

(assert (=> b!3205081 d!878126))

(declare-fun d!878128 () Bool)

(assert (=> d!878128 (= (seqFromList!3492 (_1!20892 lt!1081905)) (fromListB!1535 (_1!20892 lt!1081905)))))

(declare-fun bs!541331 () Bool)

(assert (= bs!541331 d!878128))

(declare-fun m!3471927 () Bool)

(assert (=> bs!541331 m!3471927))

(assert (=> b!3205081 d!878128))

(declare-fun d!878130 () Bool)

(declare-fun lt!1082471 () Int)

(assert (=> d!878130 (>= lt!1082471 0)))

(declare-fun e!1998975 () Int)

(assert (=> d!878130 (= lt!1082471 e!1998975)))

(declare-fun c!538554 () Bool)

(assert (=> d!878130 (= c!538554 ((_ is Nil!36119) Nil!36119))))

(assert (=> d!878130 (= (size!27211 Nil!36119) lt!1082471)))

(declare-fun b!3206146 () Bool)

(assert (=> b!3206146 (= e!1998975 0)))

(declare-fun b!3206147 () Bool)

(assert (=> b!3206147 (= e!1998975 (+ 1 (size!27211 (t!237944 Nil!36119))))))

(assert (= (and d!878130 c!538554) b!3206146))

(assert (= (and d!878130 (not c!538554)) b!3206147))

(declare-fun m!3471929 () Bool)

(assert (=> b!3206147 m!3471929))

(assert (=> b!3205081 d!878130))

(assert (=> b!3205081 d!877566))

(declare-fun d!878132 () Bool)

(declare-fun lt!1082472 () Int)

(assert (=> d!878132 (= lt!1082472 (size!27211 (list!12843 (seqFromList!3492 (_1!20892 lt!1081905)))))))

(assert (=> d!878132 (= lt!1082472 (size!27218 (c!538127 (seqFromList!3492 (_1!20892 lt!1081905)))))))

(assert (=> d!878132 (= (size!27212 (seqFromList!3492 (_1!20892 lt!1081905))) lt!1082472)))

(declare-fun bs!541332 () Bool)

(assert (= bs!541332 d!878132))

(assert (=> bs!541332 m!3470207))

(assert (=> bs!541332 m!3471919))

(assert (=> bs!541332 m!3471919))

(declare-fun m!3471931 () Bool)

(assert (=> bs!541332 m!3471931))

(declare-fun m!3471933 () Bool)

(assert (=> bs!541332 m!3471933))

(assert (=> b!3205081 d!878132))

(declare-fun d!878134 () Bool)

(assert (=> d!878134 (= (isEmpty!20208 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))) ((_ is Nil!36119) (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))

(assert (=> b!3205081 d!878134))

(declare-fun d!878136 () Bool)

(assert (=> d!878136 (= (apply!8164 (transformation!5210 (rule!7648 (h!41541 tokens!494))) (seqFromList!3492 (_1!20892 lt!1081905))) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (seqFromList!3492 (_1!20892 lt!1081905))))))

(declare-fun b_lambda!87783 () Bool)

(assert (=> (not b_lambda!87783) (not d!878136)))

(assert (=> d!878136 t!238137))

(declare-fun b_and!213399 () Bool)

(assert (= b_and!213393 (and (=> t!238137 result!199680) b_and!213399)))

(assert (=> d!878136 t!238141))

(declare-fun b_and!213401 () Bool)

(assert (= b_and!213397 (and (=> t!238141 result!199684) b_and!213401)))

(assert (=> d!878136 t!238139))

(declare-fun b_and!213403 () Bool)

(assert (= b_and!213395 (and (=> t!238139 result!199682) b_and!213403)))

(assert (=> d!878136 t!238133))

(declare-fun b_and!213405 () Bool)

(assert (= b_and!213389 (and (=> t!238133 result!199676) b_and!213405)))

(assert (=> d!878136 t!238135))

(declare-fun b_and!213407 () Bool)

(assert (= b_and!213391 (and (=> t!238135 result!199678) b_and!213407)))

(assert (=> d!878136 m!3470207))

(assert (=> d!878136 m!3471917))

(assert (=> b!3205081 d!878136))

(declare-fun d!878138 () Bool)

(assert (=> d!878138 (= (isEmpty!20212 lt!1081825) (not ((_ is Some!7116) lt!1081825)))))

(assert (=> d!877514 d!878138))

(assert (=> d!877514 d!877396))

(declare-fun d!878140 () Bool)

(declare-fun lt!1082475 () Int)

(assert (=> d!878140 (>= lt!1082475 0)))

(declare-fun e!1998978 () Int)

(assert (=> d!878140 (= lt!1082475 e!1998978)))

(declare-fun c!538557 () Bool)

(assert (=> d!878140 (= c!538557 ((_ is Nil!36121) (list!12844 (_1!20887 lt!1081651))))))

(assert (=> d!878140 (= (size!27216 (list!12844 (_1!20887 lt!1081651))) lt!1082475)))

(declare-fun b!3206152 () Bool)

(assert (=> b!3206152 (= e!1998978 0)))

(declare-fun b!3206153 () Bool)

(assert (=> b!3206153 (= e!1998978 (+ 1 (size!27216 (t!237946 (list!12844 (_1!20887 lt!1081651))))))))

(assert (= (and d!878140 c!538557) b!3206152))

(assert (= (and d!878140 (not c!538557)) b!3206153))

(declare-fun m!3471935 () Bool)

(assert (=> b!3206153 m!3471935))

(assert (=> d!877572 d!878140))

(assert (=> d!877572 d!877836))

(declare-fun d!878142 () Bool)

(declare-fun lt!1082478 () Int)

(assert (=> d!878142 (= lt!1082478 (size!27216 (list!12848 (c!538128 (_1!20887 lt!1081651)))))))

(assert (=> d!878142 (= lt!1082478 (ite ((_ is Empty!10796) (c!538128 (_1!20887 lt!1081651))) 0 (ite ((_ is Leaf!17012) (c!538128 (_1!20887 lt!1081651))) (csize!21823 (c!538128 (_1!20887 lt!1081651))) (csize!21822 (c!538128 (_1!20887 lt!1081651))))))))

(assert (=> d!878142 (= (size!27217 (c!538128 (_1!20887 lt!1081651))) lt!1082478)))

(declare-fun bs!541333 () Bool)

(assert (= bs!541333 d!878142))

(assert (=> bs!541333 m!3471045))

(assert (=> bs!541333 m!3471045))

(declare-fun m!3471937 () Bool)

(assert (=> bs!541333 m!3471937))

(assert (=> d!877572 d!878142))

(declare-fun d!878144 () Bool)

(assert (=> d!878144 (= (isEmpty!20208 (list!12843 (_2!20887 lt!1081651))) ((_ is Nil!36119) (list!12843 (_2!20887 lt!1081651))))))

(assert (=> d!877450 d!878144))

(declare-fun d!878146 () Bool)

(assert (=> d!878146 (= (list!12843 (_2!20887 lt!1081651)) (list!12847 (c!538127 (_2!20887 lt!1081651))))))

(declare-fun bs!541334 () Bool)

(assert (= bs!541334 d!878146))

(declare-fun m!3471939 () Bool)

(assert (=> bs!541334 m!3471939))

(assert (=> d!877450 d!878146))

(declare-fun d!878148 () Bool)

(declare-fun lt!1082481 () Bool)

(assert (=> d!878148 (= lt!1082481 (isEmpty!20208 (list!12847 (c!538127 (_2!20887 lt!1081651)))))))

(assert (=> d!878148 (= lt!1082481 (= (size!27218 (c!538127 (_2!20887 lt!1081651))) 0))))

(assert (=> d!878148 (= (isEmpty!20210 (c!538127 (_2!20887 lt!1081651))) lt!1082481)))

(declare-fun bs!541335 () Bool)

(assert (= bs!541335 d!878148))

(assert (=> bs!541335 m!3471939))

(assert (=> bs!541335 m!3471939))

(declare-fun m!3471941 () Bool)

(assert (=> bs!541335 m!3471941))

(declare-fun m!3471943 () Bool)

(assert (=> bs!541335 m!3471943))

(assert (=> d!877450 d!878148))

(declare-fun d!878150 () Bool)

(declare-fun c!538558 () Bool)

(assert (=> d!878150 (= c!538558 ((_ is Nil!36119) lt!1081793))))

(declare-fun e!1998979 () (InoxSet C!20124))

(assert (=> d!878150 (= (content!4882 lt!1081793) e!1998979)))

(declare-fun b!3206154 () Bool)

(assert (=> b!3206154 (= e!1998979 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206155 () Bool)

(assert (=> b!3206155 (= e!1998979 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081793) true) (content!4882 (t!237944 lt!1081793))))))

(assert (= (and d!878150 c!538558) b!3206154))

(assert (= (and d!878150 (not c!538558)) b!3206155))

(declare-fun m!3471945 () Bool)

(assert (=> b!3206155 m!3471945))

(declare-fun m!3471947 () Bool)

(assert (=> b!3206155 m!3471947))

(assert (=> d!877468 d!878150))

(declare-fun d!878152 () Bool)

(declare-fun c!538559 () Bool)

(assert (=> d!878152 (= c!538559 ((_ is Nil!36119) (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))

(declare-fun e!1998980 () (InoxSet C!20124))

(assert (=> d!878152 (= (content!4882 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) e!1998980)))

(declare-fun b!3206156 () Bool)

(assert (=> b!3206156 (= e!1998980 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206157 () Bool)

(assert (=> b!3206157 (= e!1998980 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) true) (content!4882 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))))

(assert (= (and d!878152 c!538559) b!3206156))

(assert (= (and d!878152 (not c!538559)) b!3206157))

(declare-fun m!3471949 () Bool)

(assert (=> b!3206157 m!3471949))

(declare-fun m!3471951 () Bool)

(assert (=> b!3206157 m!3471951))

(assert (=> d!877468 d!878152))

(declare-fun d!878154 () Bool)

(declare-fun c!538560 () Bool)

(assert (=> d!878154 (= c!538560 ((_ is Nil!36119) lt!1081636))))

(declare-fun e!1998981 () (InoxSet C!20124))

(assert (=> d!878154 (= (content!4882 lt!1081636) e!1998981)))

(declare-fun b!3206158 () Bool)

(assert (=> b!3206158 (= e!1998981 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206159 () Bool)

(assert (=> b!3206159 (= e!1998981 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081636) true) (content!4882 (t!237944 lt!1081636))))))

(assert (= (and d!878154 c!538560) b!3206158))

(assert (= (and d!878154 (not c!538560)) b!3206159))

(declare-fun m!3471953 () Bool)

(assert (=> b!3206159 m!3471953))

(declare-fun m!3471955 () Bool)

(assert (=> b!3206159 m!3471955))

(assert (=> d!877468 d!878154))

(declare-fun d!878156 () Bool)

(assert (=> d!878156 (dynLambda!14558 lambda!117290 (h!41541 tokens!494))))

(assert (=> d!878156 true))

(declare-fun _$7!1079 () Unit!50554)

(assert (=> d!878156 (= (choose!18703 tokens!494 lambda!117290 (h!41541 tokens!494)) _$7!1079)))

(declare-fun b_lambda!87785 () Bool)

(assert (=> (not b_lambda!87785) (not d!878156)))

(declare-fun bs!541336 () Bool)

(assert (= bs!541336 d!878156))

(assert (=> bs!541336 m!3469545))

(assert (=> d!877454 d!878156))

(assert (=> d!877454 d!877398))

(assert (=> b!3204982 d!877804))

(declare-fun d!878158 () Bool)

(assert (=> d!878158 (= (tail!5207 (drop!1858 lt!1081843 0)) (drop!1858 lt!1081843 (+ 0 1)))))

(declare-fun lt!1082484 () Unit!50554)

(declare-fun choose!18719 (List!36245 Int) Unit!50554)

(assert (=> d!878158 (= lt!1082484 (choose!18719 lt!1081843 0))))

(declare-fun e!1998984 () Bool)

(assert (=> d!878158 e!1998984))

(declare-fun res!1304747 () Bool)

(assert (=> d!878158 (=> (not res!1304747) (not e!1998984))))

(assert (=> d!878158 (= res!1304747 (>= 0 0))))

(assert (=> d!878158 (= (lemmaDropTail!918 lt!1081843 0) lt!1082484)))

(declare-fun b!3206162 () Bool)

(assert (=> b!3206162 (= e!1998984 (< 0 (size!27216 lt!1081843)))))

(assert (= (and d!878158 res!1304747) b!3206162))

(assert (=> d!878158 m!3470055))

(assert (=> d!878158 m!3470055))

(assert (=> d!878158 m!3470063))

(assert (=> d!878158 m!3470049))

(declare-fun m!3471957 () Bool)

(assert (=> d!878158 m!3471957))

(declare-fun m!3471959 () Bool)

(assert (=> b!3206162 m!3471959))

(assert (=> b!3204982 d!878158))

(declare-fun d!878160 () Bool)

(declare-fun lt!1082485 () Token!9786)

(assert (=> d!878160 (contains!6434 lt!1081849 lt!1082485)))

(declare-fun e!1998986 () Token!9786)

(assert (=> d!878160 (= lt!1082485 e!1998986)))

(declare-fun c!538561 () Bool)

(assert (=> d!878160 (= c!538561 (= 0 0))))

(declare-fun e!1998985 () Bool)

(assert (=> d!878160 e!1998985))

(declare-fun res!1304748 () Bool)

(assert (=> d!878160 (=> (not res!1304748) (not e!1998985))))

(assert (=> d!878160 (= res!1304748 (<= 0 0))))

(assert (=> d!878160 (= (apply!8165 lt!1081849 0) lt!1082485)))

(declare-fun b!3206163 () Bool)

(assert (=> b!3206163 (= e!1998985 (< 0 (size!27216 lt!1081849)))))

(declare-fun b!3206164 () Bool)

(assert (=> b!3206164 (= e!1998986 (head!7028 lt!1081849))))

(declare-fun b!3206165 () Bool)

(assert (=> b!3206165 (= e!1998986 (apply!8165 (tail!5207 lt!1081849) (- 0 1)))))

(assert (= (and d!878160 res!1304748) b!3206163))

(assert (= (and d!878160 c!538561) b!3206164))

(assert (= (and d!878160 (not c!538561)) b!3206165))

(declare-fun m!3471961 () Bool)

(assert (=> d!878160 m!3471961))

(declare-fun m!3471963 () Bool)

(assert (=> b!3206163 m!3471963))

(declare-fun m!3471965 () Bool)

(assert (=> b!3206164 m!3471965))

(declare-fun m!3471967 () Bool)

(assert (=> b!3206165 m!3471967))

(assert (=> b!3206165 m!3471967))

(declare-fun m!3471969 () Bool)

(assert (=> b!3206165 m!3471969))

(assert (=> b!3204982 d!878160))

(declare-fun d!878162 () Bool)

(declare-fun lt!1082490 () BalanceConc!21204)

(assert (=> d!878162 (= (list!12843 lt!1082490) (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081650 (+ 0 1)) (list!12843 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081650 0))))))))

(declare-fun e!1998988 () BalanceConc!21204)

(assert (=> d!878162 (= lt!1082490 e!1998988)))

(declare-fun c!538562 () Bool)

(assert (=> d!878162 (= c!538562 (>= (+ 0 1) (size!27210 lt!1081650)))))

(declare-fun e!1998987 () Bool)

(assert (=> d!878162 e!1998987))

(declare-fun res!1304749 () Bool)

(assert (=> d!878162 (=> (not res!1304749) (not e!1998987))))

(assert (=> d!878162 (= res!1304749 (>= (+ 0 1) 0))))

(assert (=> d!878162 (= (printTailRec!1296 thiss!18206 lt!1081650 (+ 0 1) (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081650 0)))) lt!1082490)))

(declare-fun b!3206166 () Bool)

(assert (=> b!3206166 (= e!1998987 (<= (+ 0 1) (size!27210 lt!1081650)))))

(declare-fun b!3206167 () Bool)

(assert (=> b!3206167 (= e!1998988 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081650 0))))))

(declare-fun b!3206168 () Bool)

(assert (=> b!3206168 (= e!1998988 (printTailRec!1296 thiss!18206 lt!1081650 (+ 0 1 1) (++!8661 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081650 0))) (charsOf!3226 (apply!8163 lt!1081650 (+ 0 1))))))))

(declare-fun lt!1082492 () List!36245)

(assert (=> b!3206168 (= lt!1082492 (list!12844 lt!1081650))))

(declare-fun lt!1082487 () Unit!50554)

(assert (=> b!3206168 (= lt!1082487 (lemmaDropApply!1034 lt!1082492 (+ 0 1)))))

(assert (=> b!3206168 (= (head!7028 (drop!1858 lt!1082492 (+ 0 1))) (apply!8165 lt!1082492 (+ 0 1)))))

(declare-fun lt!1082489 () Unit!50554)

(assert (=> b!3206168 (= lt!1082489 lt!1082487)))

(declare-fun lt!1082486 () List!36245)

(assert (=> b!3206168 (= lt!1082486 (list!12844 lt!1081650))))

(declare-fun lt!1082488 () Unit!50554)

(assert (=> b!3206168 (= lt!1082488 (lemmaDropTail!918 lt!1082486 (+ 0 1)))))

(assert (=> b!3206168 (= (tail!5207 (drop!1858 lt!1082486 (+ 0 1))) (drop!1858 lt!1082486 (+ 0 1 1)))))

(declare-fun lt!1082491 () Unit!50554)

(assert (=> b!3206168 (= lt!1082491 lt!1082488)))

(assert (= (and d!878162 res!1304749) b!3206166))

(assert (= (and d!878162 c!538562) b!3206167))

(assert (= (and d!878162 (not c!538562)) b!3206168))

(declare-fun m!3471971 () Bool)

(assert (=> d!878162 m!3471971))

(declare-fun m!3471973 () Bool)

(assert (=> d!878162 m!3471973))

(assert (=> d!878162 m!3470043))

(declare-fun m!3471975 () Bool)

(assert (=> d!878162 m!3471975))

(assert (=> d!878162 m!3470039))

(assert (=> d!878162 m!3471971))

(assert (=> d!878162 m!3471975))

(declare-fun m!3471977 () Bool)

(assert (=> d!878162 m!3471977))

(assert (=> b!3206166 m!3470039))

(declare-fun m!3471979 () Bool)

(assert (=> b!3206168 m!3471979))

(declare-fun m!3471981 () Bool)

(assert (=> b!3206168 m!3471981))

(declare-fun m!3471983 () Bool)

(assert (=> b!3206168 m!3471983))

(declare-fun m!3471985 () Bool)

(assert (=> b!3206168 m!3471985))

(declare-fun m!3471987 () Bool)

(assert (=> b!3206168 m!3471987))

(declare-fun m!3471989 () Bool)

(assert (=> b!3206168 m!3471989))

(declare-fun m!3471991 () Bool)

(assert (=> b!3206168 m!3471991))

(declare-fun m!3471993 () Bool)

(assert (=> b!3206168 m!3471993))

(assert (=> b!3206168 m!3470043))

(assert (=> b!3206168 m!3471989))

(assert (=> b!3206168 m!3471979))

(assert (=> b!3206168 m!3470059))

(declare-fun m!3471995 () Bool)

(assert (=> b!3206168 m!3471995))

(assert (=> b!3206168 m!3471991))

(declare-fun m!3471997 () Bool)

(assert (=> b!3206168 m!3471997))

(assert (=> b!3206168 m!3471987))

(assert (=> b!3206168 m!3471995))

(declare-fun m!3471999 () Bool)

(assert (=> b!3206168 m!3471999))

(declare-fun m!3472001 () Bool)

(assert (=> b!3206168 m!3472001))

(assert (=> b!3204982 d!878162))

(declare-fun d!878164 () Bool)

(assert (=> d!878164 (= (head!7028 (drop!1858 lt!1081849 0)) (h!41541 (drop!1858 lt!1081849 0)))))

(assert (=> b!3204982 d!878164))

(declare-fun d!878166 () Bool)

(declare-fun lt!1082493 () Token!9786)

(assert (=> d!878166 (= lt!1082493 (apply!8165 (list!12844 lt!1081650) 0))))

(assert (=> d!878166 (= lt!1082493 (apply!8166 (c!538128 lt!1081650) 0))))

(declare-fun e!1998989 () Bool)

(assert (=> d!878166 e!1998989))

(declare-fun res!1304750 () Bool)

(assert (=> d!878166 (=> (not res!1304750) (not e!1998989))))

(assert (=> d!878166 (= res!1304750 (<= 0 0))))

(assert (=> d!878166 (= (apply!8163 lt!1081650 0) lt!1082493)))

(declare-fun b!3206169 () Bool)

(assert (=> b!3206169 (= e!1998989 (< 0 (size!27210 lt!1081650)))))

(assert (= (and d!878166 res!1304750) b!3206169))

(assert (=> d!878166 m!3470059))

(assert (=> d!878166 m!3470059))

(declare-fun m!3472003 () Bool)

(assert (=> d!878166 m!3472003))

(declare-fun m!3472005 () Bool)

(assert (=> d!878166 m!3472005))

(assert (=> b!3206169 m!3470039))

(assert (=> b!3204982 d!878166))

(declare-fun d!878168 () Bool)

(declare-fun lt!1082494 () BalanceConc!21204)

(assert (=> d!878168 (= (list!12843 lt!1082494) (originalCharacters!5924 (apply!8163 lt!1081650 0)))))

(assert (=> d!878168 (= lt!1082494 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0)))) (value!168945 (apply!8163 lt!1081650 0))))))

(assert (=> d!878168 (= (charsOf!3226 (apply!8163 lt!1081650 0)) lt!1082494)))

(declare-fun b_lambda!87787 () Bool)

(assert (=> (not b_lambda!87787) (not d!878168)))

(declare-fun t!238145 () Bool)

(declare-fun tb!157349 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0))))) t!238145) tb!157349))

(declare-fun b!3206170 () Bool)

(declare-fun e!1998990 () Bool)

(declare-fun tp!1012473 () Bool)

(assert (=> b!3206170 (= e!1998990 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0)))) (value!168945 (apply!8163 lt!1081650 0))))) tp!1012473))))

(declare-fun result!199686 () Bool)

(assert (=> tb!157349 (= result!199686 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0)))) (value!168945 (apply!8163 lt!1081650 0)))) e!1998990))))

(assert (= tb!157349 b!3206170))

(declare-fun m!3472007 () Bool)

(assert (=> b!3206170 m!3472007))

(declare-fun m!3472009 () Bool)

(assert (=> tb!157349 m!3472009))

(assert (=> d!878168 t!238145))

(declare-fun b_and!213409 () Bool)

(assert (= b_and!213383 (and (=> t!238145 result!199686) b_and!213409)))

(declare-fun t!238147 () Bool)

(declare-fun tb!157351 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0))))) t!238147) tb!157351))

(declare-fun result!199688 () Bool)

(assert (= result!199688 result!199686))

(assert (=> d!878168 t!238147))

(declare-fun b_and!213411 () Bool)

(assert (= b_and!213381 (and (=> t!238147 result!199688) b_and!213411)))

(declare-fun tb!157353 () Bool)

(declare-fun t!238149 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0))))) t!238149) tb!157353))

(declare-fun result!199690 () Bool)

(assert (= result!199690 result!199686))

(assert (=> d!878168 t!238149))

(declare-fun b_and!213413 () Bool)

(assert (= b_and!213387 (and (=> t!238149 result!199690) b_and!213413)))

(declare-fun t!238151 () Bool)

(declare-fun tb!157355 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0))))) t!238151) tb!157355))

(declare-fun result!199692 () Bool)

(assert (= result!199692 result!199686))

(assert (=> d!878168 t!238151))

(declare-fun b_and!213415 () Bool)

(assert (= b_and!213379 (and (=> t!238151 result!199692) b_and!213415)))

(declare-fun t!238153 () Bool)

(declare-fun tb!157357 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0))))) t!238153) tb!157357))

(declare-fun result!199694 () Bool)

(assert (= result!199694 result!199686))

(assert (=> d!878168 t!238153))

(declare-fun b_and!213417 () Bool)

(assert (= b_and!213385 (and (=> t!238153 result!199694) b_and!213417)))

(declare-fun m!3472011 () Bool)

(assert (=> d!878168 m!3472011))

(declare-fun m!3472013 () Bool)

(assert (=> d!878168 m!3472013))

(assert (=> b!3204982 d!878168))

(declare-fun d!878170 () Bool)

(assert (=> d!878170 (= (tail!5207 (drop!1858 lt!1081843 0)) (t!237946 (drop!1858 lt!1081843 0)))))

(assert (=> b!3204982 d!878170))

(declare-fun b!3206180 () Bool)

(declare-fun res!1304761 () Bool)

(declare-fun e!1998993 () Bool)

(assert (=> b!3206180 (=> (not res!1304761) (not e!1998993))))

(declare-fun height!1551 (Conc!10795) Int)

(declare-fun ++!8666 (Conc!10795 Conc!10795) Conc!10795)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3206180 (= res!1304761 (<= (height!1551 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081650 0))))) (+ (max!0 (height!1551 (c!538127 (BalanceConc!21205 Empty!10795))) (height!1551 (c!538127 (charsOf!3226 (apply!8163 lt!1081650 0))))) 1)))))

(declare-fun b!3206181 () Bool)

(declare-fun res!1304759 () Bool)

(assert (=> b!3206181 (=> (not res!1304759) (not e!1998993))))

(assert (=> b!3206181 (= res!1304759 (>= (height!1551 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081650 0))))) (max!0 (height!1551 (c!538127 (BalanceConc!21205 Empty!10795))) (height!1551 (c!538127 (charsOf!3226 (apply!8163 lt!1081650 0)))))))))

(declare-fun b!3206179 () Bool)

(declare-fun res!1304762 () Bool)

(assert (=> b!3206179 (=> (not res!1304762) (not e!1998993))))

(assert (=> b!3206179 (= res!1304762 (isBalanced!3215 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081650 0))))))))

(declare-fun b!3206182 () Bool)

(declare-fun lt!1082497 () BalanceConc!21204)

(assert (=> b!3206182 (= e!1998993 (= (list!12843 lt!1082497) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (apply!8163 lt!1081650 0))))))))

(declare-fun d!878172 () Bool)

(assert (=> d!878172 e!1998993))

(declare-fun res!1304760 () Bool)

(assert (=> d!878172 (=> (not res!1304760) (not e!1998993))))

(declare-fun appendAssocInst!731 (Conc!10795 Conc!10795) Bool)

(assert (=> d!878172 (= res!1304760 (appendAssocInst!731 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081650 0)))))))

(assert (=> d!878172 (= lt!1082497 (BalanceConc!21205 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081650 0))))))))

(assert (=> d!878172 (= (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081650 0))) lt!1082497)))

(assert (= (and d!878172 res!1304760) b!3206179))

(assert (= (and b!3206179 res!1304762) b!3206180))

(assert (= (and b!3206180 res!1304761) b!3206181))

(assert (= (and b!3206181 res!1304759) b!3206182))

(declare-fun m!3472015 () Bool)

(assert (=> b!3206179 m!3472015))

(assert (=> b!3206179 m!3472015))

(declare-fun m!3472017 () Bool)

(assert (=> b!3206179 m!3472017))

(declare-fun m!3472019 () Bool)

(assert (=> b!3206181 m!3472019))

(declare-fun m!3472021 () Bool)

(assert (=> b!3206181 m!3472021))

(assert (=> b!3206181 m!3472019))

(assert (=> b!3206181 m!3472021))

(declare-fun m!3472023 () Bool)

(assert (=> b!3206181 m!3472023))

(assert (=> b!3206181 m!3472015))

(assert (=> b!3206181 m!3472015))

(declare-fun m!3472025 () Bool)

(assert (=> b!3206181 m!3472025))

(declare-fun m!3472027 () Bool)

(assert (=> b!3206182 m!3472027))

(assert (=> b!3206182 m!3469595))

(assert (=> b!3206182 m!3470053))

(declare-fun m!3472029 () Bool)

(assert (=> b!3206182 m!3472029))

(assert (=> b!3206182 m!3469595))

(assert (=> b!3206182 m!3472029))

(declare-fun m!3472031 () Bool)

(assert (=> b!3206182 m!3472031))

(declare-fun m!3472033 () Bool)

(assert (=> d!878172 m!3472033))

(assert (=> d!878172 m!3472015))

(assert (=> b!3206180 m!3472019))

(assert (=> b!3206180 m!3472021))

(assert (=> b!3206180 m!3472019))

(assert (=> b!3206180 m!3472021))

(assert (=> b!3206180 m!3472023))

(assert (=> b!3206180 m!3472015))

(assert (=> b!3206180 m!3472015))

(assert (=> b!3206180 m!3472025))

(assert (=> b!3204982 d!878172))

(declare-fun d!878174 () Bool)

(assert (=> d!878174 (= (head!7028 (drop!1858 lt!1081849 0)) (apply!8165 lt!1081849 0))))

(declare-fun lt!1082500 () Unit!50554)

(declare-fun choose!18720 (List!36245 Int) Unit!50554)

(assert (=> d!878174 (= lt!1082500 (choose!18720 lt!1081849 0))))

(declare-fun e!1998996 () Bool)

(assert (=> d!878174 e!1998996))

(declare-fun res!1304765 () Bool)

(assert (=> d!878174 (=> (not res!1304765) (not e!1998996))))

(assert (=> d!878174 (= res!1304765 (>= 0 0))))

(assert (=> d!878174 (= (lemmaDropApply!1034 lt!1081849 0) lt!1082500)))

(declare-fun b!3206185 () Bool)

(assert (=> b!3206185 (= e!1998996 (< 0 (size!27216 lt!1081849)))))

(assert (= (and d!878174 res!1304765) b!3206185))

(assert (=> d!878174 m!3470061))

(assert (=> d!878174 m!3470061))

(assert (=> d!878174 m!3470065))

(assert (=> d!878174 m!3470067))

(declare-fun m!3472035 () Bool)

(assert (=> d!878174 m!3472035))

(assert (=> b!3206185 m!3471963))

(assert (=> b!3204982 d!878174))

(declare-fun b!3206228 () Bool)

(declare-fun e!1999021 () Int)

(declare-fun call!232121 () Int)

(assert (=> b!3206228 (= e!1999021 (- call!232121 0))))

(declare-fun b!3206229 () Bool)

(declare-fun e!1999020 () List!36245)

(assert (=> b!3206229 (= e!1999020 Nil!36121)))

(declare-fun b!3206230 () Bool)

(declare-fun e!1999019 () List!36245)

(assert (=> b!3206230 (= e!1999020 e!1999019)))

(declare-fun c!538586 () Bool)

(assert (=> b!3206230 (= c!538586 (<= 0 0))))

(declare-fun d!878176 () Bool)

(declare-fun e!1999023 () Bool)

(assert (=> d!878176 e!1999023))

(declare-fun res!1304768 () Bool)

(assert (=> d!878176 (=> (not res!1304768) (not e!1999023))))

(declare-fun lt!1082559 () List!36245)

(assert (=> d!878176 (= res!1304768 (= ((_ map implies) (content!4885 lt!1082559) (content!4885 lt!1081843)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878176 (= lt!1082559 e!1999020)))

(declare-fun c!538588 () Bool)

(assert (=> d!878176 (= c!538588 ((_ is Nil!36121) lt!1081843))))

(assert (=> d!878176 (= (drop!1858 lt!1081843 0) lt!1082559)))

(declare-fun bm!232116 () Bool)

(assert (=> bm!232116 (= call!232121 (size!27216 lt!1081843))))

(declare-fun b!3206231 () Bool)

(assert (=> b!3206231 (= e!1999019 (drop!1858 (t!237946 lt!1081843) (- 0 1)))))

(declare-fun b!3206232 () Bool)

(assert (=> b!3206232 (= e!1999021 0)))

(declare-fun b!3206233 () Bool)

(declare-fun e!1999022 () Int)

(assert (=> b!3206233 (= e!1999023 (= (size!27216 lt!1082559) e!1999022))))

(declare-fun c!538587 () Bool)

(assert (=> b!3206233 (= c!538587 (<= 0 0))))

(declare-fun b!3206234 () Bool)

(assert (=> b!3206234 (= e!1999019 lt!1081843)))

(declare-fun b!3206235 () Bool)

(assert (=> b!3206235 (= e!1999022 e!1999021)))

(declare-fun c!538589 () Bool)

(assert (=> b!3206235 (= c!538589 (>= 0 call!232121))))

(declare-fun b!3206236 () Bool)

(assert (=> b!3206236 (= e!1999022 call!232121)))

(assert (= (and d!878176 c!538588) b!3206229))

(assert (= (and d!878176 (not c!538588)) b!3206230))

(assert (= (and b!3206230 c!538586) b!3206234))

(assert (= (and b!3206230 (not c!538586)) b!3206231))

(assert (= (and d!878176 res!1304768) b!3206233))

(assert (= (and b!3206233 c!538587) b!3206236))

(assert (= (and b!3206233 (not c!538587)) b!3206235))

(assert (= (and b!3206235 c!538589) b!3206232))

(assert (= (and b!3206235 (not c!538589)) b!3206228))

(assert (= (or b!3206236 b!3206235 b!3206228) bm!232116))

(declare-fun m!3472037 () Bool)

(assert (=> d!878176 m!3472037))

(declare-fun m!3472039 () Bool)

(assert (=> d!878176 m!3472039))

(assert (=> bm!232116 m!3471959))

(declare-fun m!3472041 () Bool)

(assert (=> b!3206231 m!3472041))

(declare-fun m!3472043 () Bool)

(assert (=> b!3206233 m!3472043))

(assert (=> b!3204982 d!878176))

(declare-fun b!3206237 () Bool)

(declare-fun e!1999026 () Int)

(declare-fun call!232126 () Int)

(assert (=> b!3206237 (= e!1999026 (- call!232126 0))))

(declare-fun b!3206238 () Bool)

(declare-fun e!1999025 () List!36245)

(assert (=> b!3206238 (= e!1999025 Nil!36121)))

(declare-fun b!3206239 () Bool)

(declare-fun e!1999024 () List!36245)

(assert (=> b!3206239 (= e!1999025 e!1999024)))

(declare-fun c!538590 () Bool)

(assert (=> b!3206239 (= c!538590 (<= 0 0))))

(declare-fun d!878178 () Bool)

(declare-fun e!1999028 () Bool)

(assert (=> d!878178 e!1999028))

(declare-fun res!1304769 () Bool)

(assert (=> d!878178 (=> (not res!1304769) (not e!1999028))))

(declare-fun lt!1082560 () List!36245)

(assert (=> d!878178 (= res!1304769 (= ((_ map implies) (content!4885 lt!1082560) (content!4885 lt!1081849)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878178 (= lt!1082560 e!1999025)))

(declare-fun c!538592 () Bool)

(assert (=> d!878178 (= c!538592 ((_ is Nil!36121) lt!1081849))))

(assert (=> d!878178 (= (drop!1858 lt!1081849 0) lt!1082560)))

(declare-fun bm!232119 () Bool)

(assert (=> bm!232119 (= call!232126 (size!27216 lt!1081849))))

(declare-fun b!3206240 () Bool)

(assert (=> b!3206240 (= e!1999024 (drop!1858 (t!237946 lt!1081849) (- 0 1)))))

(declare-fun b!3206241 () Bool)

(assert (=> b!3206241 (= e!1999026 0)))

(declare-fun b!3206242 () Bool)

(declare-fun e!1999027 () Int)

(assert (=> b!3206242 (= e!1999028 (= (size!27216 lt!1082560) e!1999027))))

(declare-fun c!538591 () Bool)

(assert (=> b!3206242 (= c!538591 (<= 0 0))))

(declare-fun b!3206243 () Bool)

(assert (=> b!3206243 (= e!1999024 lt!1081849)))

(declare-fun b!3206244 () Bool)

(assert (=> b!3206244 (= e!1999027 e!1999026)))

(declare-fun c!538593 () Bool)

(assert (=> b!3206244 (= c!538593 (>= 0 call!232126))))

(declare-fun b!3206245 () Bool)

(assert (=> b!3206245 (= e!1999027 call!232126)))

(assert (= (and d!878178 c!538592) b!3206238))

(assert (= (and d!878178 (not c!538592)) b!3206239))

(assert (= (and b!3206239 c!538590) b!3206243))

(assert (= (and b!3206239 (not c!538590)) b!3206240))

(assert (= (and d!878178 res!1304769) b!3206242))

(assert (= (and b!3206242 c!538591) b!3206245))

(assert (= (and b!3206242 (not c!538591)) b!3206244))

(assert (= (and b!3206244 c!538593) b!3206241))

(assert (= (and b!3206244 (not c!538593)) b!3206237))

(assert (= (or b!3206245 b!3206244 b!3206237) bm!232119))

(declare-fun m!3472045 () Bool)

(assert (=> d!878178 m!3472045))

(declare-fun m!3472047 () Bool)

(assert (=> d!878178 m!3472047))

(assert (=> bm!232119 m!3471963))

(declare-fun m!3472049 () Bool)

(assert (=> b!3206240 m!3472049))

(declare-fun m!3472051 () Bool)

(assert (=> b!3206242 m!3472051))

(assert (=> b!3204982 d!878178))

(declare-fun b!3206246 () Bool)

(declare-fun e!1999031 () Int)

(declare-fun call!232129 () Int)

(assert (=> b!3206246 (= e!1999031 (- call!232129 (+ 0 1)))))

(declare-fun b!3206247 () Bool)

(declare-fun e!1999030 () List!36245)

(assert (=> b!3206247 (= e!1999030 Nil!36121)))

(declare-fun b!3206248 () Bool)

(declare-fun e!1999029 () List!36245)

(assert (=> b!3206248 (= e!1999030 e!1999029)))

(declare-fun c!538594 () Bool)

(assert (=> b!3206248 (= c!538594 (<= (+ 0 1) 0))))

(declare-fun d!878180 () Bool)

(declare-fun e!1999033 () Bool)

(assert (=> d!878180 e!1999033))

(declare-fun res!1304770 () Bool)

(assert (=> d!878180 (=> (not res!1304770) (not e!1999033))))

(declare-fun lt!1082561 () List!36245)

(assert (=> d!878180 (= res!1304770 (= ((_ map implies) (content!4885 lt!1082561) (content!4885 lt!1081843)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878180 (= lt!1082561 e!1999030)))

(declare-fun c!538596 () Bool)

(assert (=> d!878180 (= c!538596 ((_ is Nil!36121) lt!1081843))))

(assert (=> d!878180 (= (drop!1858 lt!1081843 (+ 0 1)) lt!1082561)))

(declare-fun bm!232124 () Bool)

(assert (=> bm!232124 (= call!232129 (size!27216 lt!1081843))))

(declare-fun b!3206249 () Bool)

(assert (=> b!3206249 (= e!1999029 (drop!1858 (t!237946 lt!1081843) (- (+ 0 1) 1)))))

(declare-fun b!3206250 () Bool)

(assert (=> b!3206250 (= e!1999031 0)))

(declare-fun b!3206251 () Bool)

(declare-fun e!1999032 () Int)

(assert (=> b!3206251 (= e!1999033 (= (size!27216 lt!1082561) e!1999032))))

(declare-fun c!538595 () Bool)

(assert (=> b!3206251 (= c!538595 (<= (+ 0 1) 0))))

(declare-fun b!3206252 () Bool)

(assert (=> b!3206252 (= e!1999029 lt!1081843)))

(declare-fun b!3206253 () Bool)

(assert (=> b!3206253 (= e!1999032 e!1999031)))

(declare-fun c!538597 () Bool)

(assert (=> b!3206253 (= c!538597 (>= (+ 0 1) call!232129))))

(declare-fun b!3206254 () Bool)

(assert (=> b!3206254 (= e!1999032 call!232129)))

(assert (= (and d!878180 c!538596) b!3206247))

(assert (= (and d!878180 (not c!538596)) b!3206248))

(assert (= (and b!3206248 c!538594) b!3206252))

(assert (= (and b!3206248 (not c!538594)) b!3206249))

(assert (= (and d!878180 res!1304770) b!3206251))

(assert (= (and b!3206251 c!538595) b!3206254))

(assert (= (and b!3206251 (not c!538595)) b!3206253))

(assert (= (and b!3206253 c!538597) b!3206250))

(assert (= (and b!3206253 (not c!538597)) b!3206246))

(assert (= (or b!3206254 b!3206253 b!3206246) bm!232124))

(declare-fun m!3472053 () Bool)

(assert (=> d!878180 m!3472053))

(assert (=> d!878180 m!3472039))

(assert (=> bm!232124 m!3471959))

(declare-fun m!3472055 () Bool)

(assert (=> b!3206249 m!3472055))

(declare-fun m!3472057 () Bool)

(assert (=> b!3206251 m!3472057))

(assert (=> b!3204982 d!878180))

(declare-fun b!3206255 () Bool)

(declare-fun e!1999034 () Bool)

(declare-fun e!1999037 () Bool)

(assert (=> b!3206255 (= e!1999034 e!1999037)))

(declare-fun c!538599 () Bool)

(assert (=> b!3206255 (= c!538599 ((_ is EmptyLang!9969) (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3206256 () Bool)

(declare-fun e!1999035 () Bool)

(declare-fun e!1999039 () Bool)

(assert (=> b!3206256 (= e!1999035 e!1999039)))

(declare-fun res!1304774 () Bool)

(assert (=> b!3206256 (=> (not res!1304774) (not e!1999039))))

(declare-fun lt!1082562 () Bool)

(assert (=> b!3206256 (= res!1304774 (not lt!1082562))))

(declare-fun b!3206257 () Bool)

(declare-fun call!232132 () Bool)

(assert (=> b!3206257 (= e!1999034 (= lt!1082562 call!232132))))

(declare-fun b!3206258 () Bool)

(declare-fun e!1999036 () Bool)

(assert (=> b!3206258 (= e!1999036 (= (head!7027 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))) (c!538126 (regex!5210 (rule!7648 (h!41541 tokens!494))))))))

(declare-fun b!3206259 () Bool)

(declare-fun e!1999040 () Bool)

(assert (=> b!3206259 (= e!1999040 (nullable!3395 (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3206260 () Bool)

(declare-fun res!1304775 () Bool)

(assert (=> b!3206260 (=> (not res!1304775) (not e!1999036))))

(assert (=> b!3206260 (= res!1304775 (isEmpty!20208 (tail!5206 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658))))))))

(declare-fun b!3206261 () Bool)

(declare-fun e!1999038 () Bool)

(assert (=> b!3206261 (= e!1999039 e!1999038)))

(declare-fun res!1304777 () Bool)

(assert (=> b!3206261 (=> res!1304777 e!1999038)))

(assert (=> b!3206261 (= res!1304777 call!232132)))

(declare-fun b!3206262 () Bool)

(assert (=> b!3206262 (= e!1999038 (not (= (head!7027 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))) (c!538126 (regex!5210 (rule!7648 (h!41541 tokens!494)))))))))

(declare-fun b!3206263 () Bool)

(declare-fun res!1304778 () Bool)

(assert (=> b!3206263 (=> res!1304778 e!1999035)))

(assert (=> b!3206263 (= res!1304778 e!1999036)))

(declare-fun res!1304771 () Bool)

(assert (=> b!3206263 (=> (not res!1304771) (not e!1999036))))

(assert (=> b!3206263 (= res!1304771 lt!1082562)))

(declare-fun b!3206264 () Bool)

(declare-fun res!1304772 () Bool)

(assert (=> b!3206264 (=> res!1304772 e!1999038)))

(assert (=> b!3206264 (= res!1304772 (not (isEmpty!20208 (tail!5206 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))))

(declare-fun d!878182 () Bool)

(assert (=> d!878182 e!1999034))

(declare-fun c!538598 () Bool)

(assert (=> d!878182 (= c!538598 ((_ is EmptyExpr!9969) (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(assert (=> d!878182 (= lt!1082562 e!1999040)))

(declare-fun c!538600 () Bool)

(assert (=> d!878182 (= c!538600 (isEmpty!20208 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))

(assert (=> d!878182 (validRegex!4549 (regex!5210 (rule!7648 (h!41541 tokens!494))))))

(assert (=> d!878182 (= (matchR!4603 (regex!5210 (rule!7648 (h!41541 tokens!494))) (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))) lt!1082562)))

(declare-fun bm!232127 () Bool)

(assert (=> bm!232127 (= call!232132 (isEmpty!20208 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658)))))))

(declare-fun b!3206265 () Bool)

(declare-fun res!1304776 () Bool)

(assert (=> b!3206265 (=> (not res!1304776) (not e!1999036))))

(assert (=> b!3206265 (= res!1304776 (not call!232132))))

(declare-fun b!3206266 () Bool)

(declare-fun res!1304773 () Bool)

(assert (=> b!3206266 (=> res!1304773 e!1999035)))

(assert (=> b!3206266 (= res!1304773 (not ((_ is ElementMatch!9969) (regex!5210 (rule!7648 (h!41541 tokens!494))))))))

(assert (=> b!3206266 (= e!1999037 e!1999035)))

(declare-fun b!3206267 () Bool)

(assert (=> b!3206267 (= e!1999040 (matchR!4603 (derivativeStep!2948 (regex!5210 (rule!7648 (h!41541 tokens!494))) (head!7027 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658))))) (tail!5206 (_1!20892 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 (size!27211 Nil!36119) lt!1081658 lt!1081658 (size!27211 lt!1081658))))))))

(declare-fun b!3206268 () Bool)

(assert (=> b!3206268 (= e!1999037 (not lt!1082562))))

(assert (= (and d!878182 c!538600) b!3206259))

(assert (= (and d!878182 (not c!538600)) b!3206267))

(assert (= (and d!878182 c!538598) b!3206257))

(assert (= (and d!878182 (not c!538598)) b!3206255))

(assert (= (and b!3206255 c!538599) b!3206268))

(assert (= (and b!3206255 (not c!538599)) b!3206266))

(assert (= (and b!3206266 (not res!1304773)) b!3206263))

(assert (= (and b!3206263 res!1304771) b!3206265))

(assert (= (and b!3206265 res!1304776) b!3206260))

(assert (= (and b!3206260 res!1304775) b!3206258))

(assert (= (and b!3206263 (not res!1304778)) b!3206256))

(assert (= (and b!3206256 res!1304774) b!3206261))

(assert (= (and b!3206261 (not res!1304777)) b!3206264))

(assert (= (and b!3206264 (not res!1304772)) b!3206262))

(assert (= (or b!3206257 b!3206261 b!3206265) bm!232127))

(declare-fun m!3472059 () Bool)

(assert (=> b!3206260 m!3472059))

(assert (=> b!3206260 m!3472059))

(declare-fun m!3472061 () Bool)

(assert (=> b!3206260 m!3472061))

(assert (=> d!878182 m!3470215))

(assert (=> d!878182 m!3471873))

(assert (=> b!3206259 m!3471905))

(declare-fun m!3472063 () Bool)

(assert (=> b!3206262 m!3472063))

(assert (=> b!3206258 m!3472063))

(assert (=> bm!232127 m!3470215))

(assert (=> b!3206264 m!3472059))

(assert (=> b!3206264 m!3472059))

(assert (=> b!3206264 m!3472061))

(assert (=> b!3206267 m!3472063))

(assert (=> b!3206267 m!3472063))

(declare-fun m!3472065 () Bool)

(assert (=> b!3206267 m!3472065))

(assert (=> b!3206267 m!3472059))

(assert (=> b!3206267 m!3472065))

(assert (=> b!3206267 m!3472059))

(declare-fun m!3472067 () Bool)

(assert (=> b!3206267 m!3472067))

(assert (=> b!3205077 d!878182))

(assert (=> b!3205077 d!878000))

(assert (=> b!3205077 d!878130))

(assert (=> b!3205077 d!877566))

(declare-fun d!878184 () Bool)

(assert (=> d!878184 (= (get!11494 lt!1081855) (v!35656 lt!1081855))))

(assert (=> b!3205013 d!878184))

(declare-fun d!878186 () Bool)

(assert (=> d!878186 (= (inv!17 (value!168945 separatorToken!241)) (= (charsToBigInt!1 (text!38528 (value!168945 separatorToken!241))) (value!168937 (value!168945 separatorToken!241))))))

(declare-fun bs!541337 () Bool)

(assert (= bs!541337 d!878186))

(declare-fun m!3472069 () Bool)

(assert (=> bs!541337 m!3472069))

(assert (=> b!3205133 d!878186))

(declare-fun d!878188 () Bool)

(declare-fun lt!1082563 () Bool)

(assert (=> d!878188 (= lt!1082563 (isEmpty!20206 (list!12844 (_1!20887 lt!1081710))))))

(assert (=> d!878188 (= lt!1082563 (isEmpty!20207 (c!538128 (_1!20887 lt!1081710))))))

(assert (=> d!878188 (= (isEmpty!20205 (_1!20887 lt!1081710)) lt!1082563)))

(declare-fun bs!541338 () Bool)

(assert (= bs!541338 d!878188))

(assert (=> bs!541338 m!3469537))

(assert (=> bs!541338 m!3469537))

(declare-fun m!3472071 () Bool)

(assert (=> bs!541338 m!3472071))

(declare-fun m!3472073 () Bool)

(assert (=> bs!541338 m!3472073))

(assert (=> b!3204690 d!878188))

(declare-fun b!3206273 () Bool)

(declare-fun e!1999045 () Bool)

(declare-fun e!1999048 () Bool)

(assert (=> b!3206273 (= e!1999045 e!1999048)))

(declare-fun c!538602 () Bool)

(assert (=> b!3206273 (= c!538602 ((_ is EmptyLang!9969) (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658))))))

(declare-fun b!3206274 () Bool)

(declare-fun e!1999046 () Bool)

(declare-fun e!1999050 () Bool)

(assert (=> b!3206274 (= e!1999046 e!1999050)))

(declare-fun res!1304786 () Bool)

(assert (=> b!3206274 (=> (not res!1304786) (not e!1999050))))

(declare-fun lt!1082564 () Bool)

(assert (=> b!3206274 (= res!1304786 (not lt!1082564))))

(declare-fun b!3206275 () Bool)

(declare-fun call!232133 () Bool)

(assert (=> b!3206275 (= e!1999045 (= lt!1082564 call!232133))))

(declare-fun b!3206276 () Bool)

(declare-fun e!1999047 () Bool)

(assert (=> b!3206276 (= e!1999047 (= (head!7027 (tail!5206 lt!1081658)) (c!538126 (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658)))))))

(declare-fun b!3206277 () Bool)

(declare-fun e!1999051 () Bool)

(assert (=> b!3206277 (= e!1999051 (nullable!3395 (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658))))))

(declare-fun b!3206278 () Bool)

(declare-fun res!1304787 () Bool)

(assert (=> b!3206278 (=> (not res!1304787) (not e!1999047))))

(assert (=> b!3206278 (= res!1304787 (isEmpty!20208 (tail!5206 (tail!5206 lt!1081658))))))

(declare-fun b!3206279 () Bool)

(declare-fun e!1999049 () Bool)

(assert (=> b!3206279 (= e!1999050 e!1999049)))

(declare-fun res!1304789 () Bool)

(assert (=> b!3206279 (=> res!1304789 e!1999049)))

(assert (=> b!3206279 (= res!1304789 call!232133)))

(declare-fun b!3206280 () Bool)

(assert (=> b!3206280 (= e!1999049 (not (= (head!7027 (tail!5206 lt!1081658)) (c!538126 (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658))))))))

(declare-fun b!3206281 () Bool)

(declare-fun res!1304790 () Bool)

(assert (=> b!3206281 (=> res!1304790 e!1999046)))

(assert (=> b!3206281 (= res!1304790 e!1999047)))

(declare-fun res!1304783 () Bool)

(assert (=> b!3206281 (=> (not res!1304783) (not e!1999047))))

(assert (=> b!3206281 (= res!1304783 lt!1082564)))

(declare-fun b!3206282 () Bool)

(declare-fun res!1304784 () Bool)

(assert (=> b!3206282 (=> res!1304784 e!1999049)))

(assert (=> b!3206282 (= res!1304784 (not (isEmpty!20208 (tail!5206 (tail!5206 lt!1081658)))))))

(declare-fun d!878190 () Bool)

(assert (=> d!878190 e!1999045))

(declare-fun c!538601 () Bool)

(assert (=> d!878190 (= c!538601 ((_ is EmptyExpr!9969) (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658))))))

(assert (=> d!878190 (= lt!1082564 e!1999051)))

(declare-fun c!538603 () Bool)

(assert (=> d!878190 (= c!538603 (isEmpty!20208 (tail!5206 lt!1081658)))))

(assert (=> d!878190 (validRegex!4549 (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658)))))

(assert (=> d!878190 (= (matchR!4603 (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658)) (tail!5206 lt!1081658)) lt!1082564)))

(declare-fun bm!232128 () Bool)

(assert (=> bm!232128 (= call!232133 (isEmpty!20208 (tail!5206 lt!1081658)))))

(declare-fun b!3206283 () Bool)

(declare-fun res!1304788 () Bool)

(assert (=> b!3206283 (=> (not res!1304788) (not e!1999047))))

(assert (=> b!3206283 (= res!1304788 (not call!232133))))

(declare-fun b!3206284 () Bool)

(declare-fun res!1304785 () Bool)

(assert (=> b!3206284 (=> res!1304785 e!1999046)))

(assert (=> b!3206284 (= res!1304785 (not ((_ is ElementMatch!9969) (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658)))))))

(assert (=> b!3206284 (= e!1999048 e!1999046)))

(declare-fun b!3206285 () Bool)

(assert (=> b!3206285 (= e!1999051 (matchR!4603 (derivativeStep!2948 (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658)) (head!7027 (tail!5206 lt!1081658))) (tail!5206 (tail!5206 lt!1081658))))))

(declare-fun b!3206286 () Bool)

(assert (=> b!3206286 (= e!1999048 (not lt!1082564))))

(assert (= (and d!878190 c!538603) b!3206277))

(assert (= (and d!878190 (not c!538603)) b!3206285))

(assert (= (and d!878190 c!538601) b!3206275))

(assert (= (and d!878190 (not c!538601)) b!3206273))

(assert (= (and b!3206273 c!538602) b!3206286))

(assert (= (and b!3206273 (not c!538602)) b!3206284))

(assert (= (and b!3206284 (not res!1304785)) b!3206281))

(assert (= (and b!3206281 res!1304783) b!3206283))

(assert (= (and b!3206283 res!1304788) b!3206278))

(assert (= (and b!3206278 res!1304787) b!3206276))

(assert (= (and b!3206281 (not res!1304790)) b!3206274))

(assert (= (and b!3206274 res!1304786) b!3206279))

(assert (= (and b!3206279 (not res!1304789)) b!3206282))

(assert (= (and b!3206282 (not res!1304784)) b!3206280))

(assert (= (or b!3206275 b!3206279 b!3206283) bm!232128))

(assert (=> b!3206278 m!3469881))

(declare-fun m!3472075 () Bool)

(assert (=> b!3206278 m!3472075))

(assert (=> b!3206278 m!3472075))

(declare-fun m!3472077 () Bool)

(assert (=> b!3206278 m!3472077))

(assert (=> d!878190 m!3469881))

(assert (=> d!878190 m!3469883))

(assert (=> d!878190 m!3469893))

(declare-fun m!3472079 () Bool)

(assert (=> d!878190 m!3472079))

(assert (=> b!3206277 m!3469893))

(declare-fun m!3472081 () Bool)

(assert (=> b!3206277 m!3472081))

(assert (=> b!3206280 m!3469881))

(declare-fun m!3472083 () Bool)

(assert (=> b!3206280 m!3472083))

(assert (=> b!3206276 m!3469881))

(assert (=> b!3206276 m!3472083))

(assert (=> bm!232128 m!3469881))

(assert (=> bm!232128 m!3469883))

(assert (=> b!3206282 m!3469881))

(assert (=> b!3206282 m!3472075))

(assert (=> b!3206282 m!3472075))

(assert (=> b!3206282 m!3472077))

(assert (=> b!3206285 m!3469881))

(assert (=> b!3206285 m!3472083))

(assert (=> b!3206285 m!3469893))

(assert (=> b!3206285 m!3472083))

(declare-fun m!3472085 () Bool)

(assert (=> b!3206285 m!3472085))

(assert (=> b!3206285 m!3469881))

(assert (=> b!3206285 m!3472075))

(assert (=> b!3206285 m!3472085))

(assert (=> b!3206285 m!3472075))

(declare-fun m!3472087 () Bool)

(assert (=> b!3206285 m!3472087))

(assert (=> b!3204909 d!878190))

(declare-fun b!3206287 () Bool)

(declare-fun e!1999052 () Regex!9969)

(assert (=> b!3206287 (= e!1999052 (ite (= (head!7027 lt!1081658) (c!538126 (regex!5210 lt!1081633))) EmptyExpr!9969 EmptyLang!9969))))

(declare-fun b!3206288 () Bool)

(declare-fun call!232135 () Regex!9969)

(declare-fun call!232137 () Regex!9969)

(declare-fun e!1999056 () Regex!9969)

(assert (=> b!3206288 (= e!1999056 (Union!9969 (Concat!15409 call!232135 (regTwo!20450 (regex!5210 lt!1081633))) call!232137))))

(declare-fun d!878192 () Bool)

(declare-fun lt!1082565 () Regex!9969)

(assert (=> d!878192 (validRegex!4549 lt!1082565)))

(declare-fun e!1999055 () Regex!9969)

(assert (=> d!878192 (= lt!1082565 e!1999055)))

(declare-fun c!538605 () Bool)

(assert (=> d!878192 (= c!538605 (or ((_ is EmptyExpr!9969) (regex!5210 lt!1081633)) ((_ is EmptyLang!9969) (regex!5210 lt!1081633))))))

(assert (=> d!878192 (validRegex!4549 (regex!5210 lt!1081633))))

(assert (=> d!878192 (= (derivativeStep!2948 (regex!5210 lt!1081633) (head!7027 lt!1081658)) lt!1082565)))

(declare-fun b!3206289 () Bool)

(declare-fun c!538606 () Bool)

(assert (=> b!3206289 (= c!538606 ((_ is Union!9969) (regex!5210 lt!1081633)))))

(declare-fun e!1999053 () Regex!9969)

(assert (=> b!3206289 (= e!1999052 e!1999053)))

(declare-fun b!3206290 () Bool)

(declare-fun e!1999054 () Regex!9969)

(declare-fun call!232136 () Regex!9969)

(assert (=> b!3206290 (= e!1999054 (Concat!15409 call!232136 (regex!5210 lt!1081633)))))

(declare-fun bm!232129 () Bool)

(declare-fun call!232134 () Regex!9969)

(assert (=> bm!232129 (= call!232136 call!232134)))

(declare-fun c!538607 () Bool)

(declare-fun bm!232130 () Bool)

(assert (=> bm!232130 (= call!232134 (derivativeStep!2948 (ite c!538606 (regOne!20451 (regex!5210 lt!1081633)) (ite c!538607 (reg!10298 (regex!5210 lt!1081633)) (regOne!20450 (regex!5210 lt!1081633)))) (head!7027 lt!1081658)))))

(declare-fun b!3206291 () Bool)

(declare-fun c!538604 () Bool)

(assert (=> b!3206291 (= c!538604 (nullable!3395 (regOne!20450 (regex!5210 lt!1081633))))))

(assert (=> b!3206291 (= e!1999054 e!1999056)))

(declare-fun b!3206292 () Bool)

(assert (=> b!3206292 (= e!1999053 e!1999054)))

(assert (=> b!3206292 (= c!538607 ((_ is Star!9969) (regex!5210 lt!1081633)))))

(declare-fun b!3206293 () Bool)

(assert (=> b!3206293 (= e!1999055 e!1999052)))

(declare-fun c!538608 () Bool)

(assert (=> b!3206293 (= c!538608 ((_ is ElementMatch!9969) (regex!5210 lt!1081633)))))

(declare-fun bm!232131 () Bool)

(assert (=> bm!232131 (= call!232135 call!232136)))

(declare-fun bm!232132 () Bool)

(assert (=> bm!232132 (= call!232137 (derivativeStep!2948 (ite c!538606 (regTwo!20451 (regex!5210 lt!1081633)) (regTwo!20450 (regex!5210 lt!1081633))) (head!7027 lt!1081658)))))

(declare-fun b!3206294 () Bool)

(assert (=> b!3206294 (= e!1999056 (Union!9969 (Concat!15409 call!232135 (regTwo!20450 (regex!5210 lt!1081633))) EmptyLang!9969))))

(declare-fun b!3206295 () Bool)

(assert (=> b!3206295 (= e!1999055 EmptyLang!9969)))

(declare-fun b!3206296 () Bool)

(assert (=> b!3206296 (= e!1999053 (Union!9969 call!232134 call!232137))))

(assert (= (and d!878192 c!538605) b!3206295))

(assert (= (and d!878192 (not c!538605)) b!3206293))

(assert (= (and b!3206293 c!538608) b!3206287))

(assert (= (and b!3206293 (not c!538608)) b!3206289))

(assert (= (and b!3206289 c!538606) b!3206296))

(assert (= (and b!3206289 (not c!538606)) b!3206292))

(assert (= (and b!3206292 c!538607) b!3206290))

(assert (= (and b!3206292 (not c!538607)) b!3206291))

(assert (= (and b!3206291 c!538604) b!3206288))

(assert (= (and b!3206291 (not c!538604)) b!3206294))

(assert (= (or b!3206288 b!3206294) bm!232131))

(assert (= (or b!3206290 bm!232131) bm!232129))

(assert (= (or b!3206296 bm!232129) bm!232130))

(assert (= (or b!3206296 b!3206288) bm!232132))

(declare-fun m!3472089 () Bool)

(assert (=> d!878192 m!3472089))

(assert (=> d!878192 m!3469887))

(assert (=> bm!232130 m!3469891))

(declare-fun m!3472091 () Bool)

(assert (=> bm!232130 m!3472091))

(declare-fun m!3472093 () Bool)

(assert (=> b!3206291 m!3472093))

(assert (=> bm!232132 m!3469891))

(declare-fun m!3472095 () Bool)

(assert (=> bm!232132 m!3472095))

(assert (=> b!3204909 d!878192))

(declare-fun d!878194 () Bool)

(assert (=> d!878194 (= (head!7027 lt!1081658) (h!41539 lt!1081658))))

(assert (=> b!3204909 d!878194))

(assert (=> b!3204909 d!877812))

(declare-fun d!878196 () Bool)

(declare-fun lt!1082566 () Int)

(assert (=> d!878196 (= lt!1082566 (size!27216 (list!12844 (_1!20887 lt!1081710))))))

(assert (=> d!878196 (= lt!1082566 (size!27217 (c!538128 (_1!20887 lt!1081710))))))

(assert (=> d!878196 (= (size!27210 (_1!20887 lt!1081710)) lt!1082566)))

(declare-fun bs!541339 () Bool)

(assert (= bs!541339 d!878196))

(assert (=> bs!541339 m!3469537))

(assert (=> bs!541339 m!3469537))

(declare-fun m!3472097 () Bool)

(assert (=> bs!541339 m!3472097))

(declare-fun m!3472099 () Bool)

(assert (=> bs!541339 m!3472099))

(assert (=> d!877382 d!878196))

(declare-fun b!3206297 () Bool)

(declare-fun e!1999060 () Bool)

(declare-fun lt!1082577 () tuple2!35506)

(assert (=> b!3206297 (= e!1999060 (= (list!12843 (_2!20887 lt!1082577)) (list!12843 (_2!20887 (lexRec!684 thiss!18206 rules!2135 lt!1081661)))))))

(declare-fun b!3206298 () Bool)

(declare-fun lt!1082594 () tuple2!35506)

(declare-fun lt!1082578 () Option!7119)

(assert (=> b!3206298 (= lt!1082594 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082578))))))

(declare-fun e!1999057 () tuple2!35506)

(assert (=> b!3206298 (= e!1999057 (tuple2!35507 (prepend!1172 (_1!20887 lt!1082594) (_1!20893 (v!35668 lt!1082578))) (_2!20887 lt!1082594)))))

(declare-fun lt!1082571 () Option!7119)

(declare-fun b!3206299 () Bool)

(declare-fun lt!1082596 () tuple2!35506)

(assert (=> b!3206299 (= lt!1082596 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082571))))))

(declare-fun e!1999059 () tuple2!35506)

(assert (=> b!3206299 (= e!1999059 (tuple2!35507 (prepend!1172 (_1!20887 lt!1082596) (_1!20893 (v!35668 lt!1082571))) (_2!20887 lt!1082596)))))

(declare-fun b!3206300 () Bool)

(assert (=> b!3206300 (= e!1999057 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1081661))))

(declare-fun b!3206301 () Bool)

(declare-fun lt!1082592 () BalanceConc!21204)

(assert (=> b!3206301 (= e!1999059 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1082592))))

(declare-fun b!3206302 () Bool)

(declare-fun e!1999058 () tuple2!35506)

(assert (=> b!3206302 (= e!1999058 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1081661))))

(declare-fun d!878198 () Bool)

(assert (=> d!878198 e!1999060))

(declare-fun res!1304791 () Bool)

(assert (=> d!878198 (=> (not res!1304791) (not e!1999060))))

(assert (=> d!878198 (= res!1304791 (= (list!12844 (_1!20887 lt!1082577)) (list!12844 (_1!20887 (lexRec!684 thiss!18206 rules!2135 lt!1081661)))))))

(assert (=> d!878198 (= lt!1082577 e!1999058)))

(declare-fun c!538610 () Bool)

(declare-fun lt!1082582 () Option!7119)

(assert (=> d!878198 (= c!538610 ((_ is Some!7118) lt!1082582))))

(assert (=> d!878198 (= lt!1082582 (maxPrefixZipperSequenceV2!471 thiss!18206 rules!2135 lt!1081661 lt!1081661))))

(declare-fun lt!1082587 () Unit!50554)

(declare-fun lt!1082585 () Unit!50554)

(assert (=> d!878198 (= lt!1082587 lt!1082585)))

(declare-fun lt!1082600 () List!36243)

(declare-fun lt!1082576 () List!36243)

(assert (=> d!878198 (isSuffix!846 lt!1082600 (++!8660 lt!1082576 lt!1082600))))

(assert (=> d!878198 (= lt!1082585 (lemmaConcatTwoListThenFSndIsSuffix!531 lt!1082576 lt!1082600))))

(assert (=> d!878198 (= lt!1082600 (list!12843 lt!1081661))))

(assert (=> d!878198 (= lt!1082576 (list!12843 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!878198 (= (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081661 (BalanceConc!21205 Empty!10795) lt!1081661 (BalanceConc!21207 Empty!10796)) lt!1082577)))

(declare-fun b!3206303 () Bool)

(declare-fun lt!1082572 () BalanceConc!21204)

(assert (=> b!3206303 (= e!1999058 (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081661 lt!1082572 (_2!20893 (v!35668 lt!1082582)) (append!864 (BalanceConc!21207 Empty!10796) (_1!20893 (v!35668 lt!1082582)))))))

(declare-fun lt!1082590 () tuple2!35506)

(assert (=> b!3206303 (= lt!1082590 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082582))))))

(declare-fun lt!1082579 () List!36243)

(assert (=> b!3206303 (= lt!1082579 (list!12843 (BalanceConc!21205 Empty!10795)))))

(declare-fun lt!1082583 () List!36243)

(assert (=> b!3206303 (= lt!1082583 (list!12843 (charsOf!3226 (_1!20893 (v!35668 lt!1082582)))))))

(declare-fun lt!1082570 () List!36243)

(assert (=> b!3206303 (= lt!1082570 (list!12843 (_2!20893 (v!35668 lt!1082582))))))

(declare-fun lt!1082589 () Unit!50554)

(assert (=> b!3206303 (= lt!1082589 (lemmaConcatAssociativity!1730 lt!1082579 lt!1082583 lt!1082570))))

(assert (=> b!3206303 (= (++!8660 (++!8660 lt!1082579 lt!1082583) lt!1082570) (++!8660 lt!1082579 (++!8660 lt!1082583 lt!1082570)))))

(declare-fun lt!1082586 () Unit!50554)

(assert (=> b!3206303 (= lt!1082586 lt!1082589)))

(assert (=> b!3206303 (= lt!1082578 (maxPrefixZipperSequence!1077 thiss!18206 rules!2135 lt!1081661))))

(declare-fun c!538609 () Bool)

(assert (=> b!3206303 (= c!538609 ((_ is Some!7118) lt!1082578))))

(assert (=> b!3206303 (= (lexRec!684 thiss!18206 rules!2135 lt!1081661) e!1999057)))

(declare-fun lt!1082597 () Unit!50554)

(declare-fun Unit!50568 () Unit!50554)

(assert (=> b!3206303 (= lt!1082597 Unit!50568)))

(declare-fun lt!1082599 () List!36245)

(assert (=> b!3206303 (= lt!1082599 (list!12844 (BalanceConc!21207 Empty!10796)))))

(declare-fun lt!1082573 () List!36245)

(assert (=> b!3206303 (= lt!1082573 (Cons!36121 (_1!20893 (v!35668 lt!1082582)) Nil!36121))))

(declare-fun lt!1082593 () List!36245)

(assert (=> b!3206303 (= lt!1082593 (list!12844 (_1!20887 lt!1082590)))))

(declare-fun lt!1082584 () Unit!50554)

(assert (=> b!3206303 (= lt!1082584 (lemmaConcatAssociativity!1731 lt!1082599 lt!1082573 lt!1082593))))

(assert (=> b!3206303 (= (++!8664 (++!8664 lt!1082599 lt!1082573) lt!1082593) (++!8664 lt!1082599 (++!8664 lt!1082573 lt!1082593)))))

(declare-fun lt!1082595 () Unit!50554)

(assert (=> b!3206303 (= lt!1082595 lt!1082584)))

(declare-fun lt!1082580 () List!36243)

(assert (=> b!3206303 (= lt!1082580 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (_1!20893 (v!35668 lt!1082582))))))))

(declare-fun lt!1082591 () List!36243)

(assert (=> b!3206303 (= lt!1082591 (list!12843 (_2!20893 (v!35668 lt!1082582))))))

(declare-fun lt!1082574 () List!36245)

(assert (=> b!3206303 (= lt!1082574 (list!12844 (append!864 (BalanceConc!21207 Empty!10796) (_1!20893 (v!35668 lt!1082582)))))))

(declare-fun lt!1082568 () Unit!50554)

(assert (=> b!3206303 (= lt!1082568 (lemmaLexThenLexPrefix!449 thiss!18206 rules!2135 lt!1082580 lt!1082591 lt!1082574 (list!12844 (_1!20887 lt!1082590)) (list!12843 (_2!20887 lt!1082590))))))

(assert (=> b!3206303 (= (lexList!1310 thiss!18206 rules!2135 lt!1082580) (tuple2!35511 lt!1082574 Nil!36119))))

(declare-fun lt!1082567 () Unit!50554)

(assert (=> b!3206303 (= lt!1082567 lt!1082568)))

(assert (=> b!3206303 (= lt!1082592 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082582)))))))

(assert (=> b!3206303 (= lt!1082571 (maxPrefixZipperSequence!1077 thiss!18206 rules!2135 lt!1082592))))

(declare-fun c!538611 () Bool)

(assert (=> b!3206303 (= c!538611 ((_ is Some!7118) lt!1082571))))

(assert (=> b!3206303 (= (lexRec!684 thiss!18206 rules!2135 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082582))))) e!1999059)))

(declare-fun lt!1082598 () Unit!50554)

(declare-fun Unit!50569 () Unit!50554)

(assert (=> b!3206303 (= lt!1082598 Unit!50569)))

(assert (=> b!3206303 (= lt!1082572 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082582)))))))

(declare-fun lt!1082569 () List!36243)

(assert (=> b!3206303 (= lt!1082569 (list!12843 lt!1082572))))

(declare-fun lt!1082575 () List!36243)

(assert (=> b!3206303 (= lt!1082575 (list!12843 (_2!20893 (v!35668 lt!1082582))))))

(declare-fun lt!1082588 () Unit!50554)

(assert (=> b!3206303 (= lt!1082588 (lemmaConcatTwoListThenFSndIsSuffix!531 lt!1082569 lt!1082575))))

(assert (=> b!3206303 (isSuffix!846 lt!1082575 (++!8660 lt!1082569 lt!1082575))))

(declare-fun lt!1082581 () Unit!50554)

(assert (=> b!3206303 (= lt!1082581 lt!1082588)))

(assert (= (and d!878198 c!538610) b!3206303))

(assert (= (and d!878198 (not c!538610)) b!3206302))

(assert (= (and b!3206303 c!538609) b!3206298))

(assert (= (and b!3206303 (not c!538609)) b!3206300))

(assert (= (and b!3206303 c!538611) b!3206299))

(assert (= (and b!3206303 (not c!538611)) b!3206301))

(assert (= (and d!878198 res!1304791) b!3206297))

(declare-fun m!3472101 () Bool)

(assert (=> b!3206298 m!3472101))

(declare-fun m!3472103 () Bool)

(assert (=> b!3206298 m!3472103))

(declare-fun m!3472105 () Bool)

(assert (=> d!878198 m!3472105))

(declare-fun m!3472107 () Bool)

(assert (=> d!878198 m!3472107))

(assert (=> d!878198 m!3472107))

(declare-fun m!3472109 () Bool)

(assert (=> d!878198 m!3472109))

(assert (=> d!878198 m!3469595))

(declare-fun m!3472111 () Bool)

(assert (=> d!878198 m!3472111))

(declare-fun m!3472113 () Bool)

(assert (=> d!878198 m!3472113))

(assert (=> d!878198 m!3469523))

(declare-fun m!3472115 () Bool)

(assert (=> d!878198 m!3472115))

(declare-fun m!3472117 () Bool)

(assert (=> d!878198 m!3472117))

(declare-fun m!3472119 () Bool)

(assert (=> b!3206299 m!3472119))

(declare-fun m!3472121 () Bool)

(assert (=> b!3206299 m!3472121))

(declare-fun m!3472123 () Bool)

(assert (=> b!3206297 m!3472123))

(assert (=> b!3206297 m!3472115))

(declare-fun m!3472125 () Bool)

(assert (=> b!3206297 m!3472125))

(declare-fun m!3472127 () Bool)

(assert (=> b!3206303 m!3472127))

(declare-fun m!3472129 () Bool)

(assert (=> b!3206303 m!3472129))

(declare-fun m!3472131 () Bool)

(assert (=> b!3206303 m!3472131))

(assert (=> b!3206303 m!3472131))

(declare-fun m!3472133 () Bool)

(assert (=> b!3206303 m!3472133))

(assert (=> b!3206303 m!3472115))

(assert (=> b!3206303 m!3471443))

(declare-fun m!3472135 () Bool)

(assert (=> b!3206303 m!3472135))

(assert (=> b!3206303 m!3472127))

(declare-fun m!3472137 () Bool)

(assert (=> b!3206303 m!3472137))

(declare-fun m!3472139 () Bool)

(assert (=> b!3206303 m!3472139))

(declare-fun m!3472141 () Bool)

(assert (=> b!3206303 m!3472141))

(declare-fun m!3472143 () Bool)

(assert (=> b!3206303 m!3472143))

(assert (=> b!3206303 m!3472139))

(declare-fun m!3472145 () Bool)

(assert (=> b!3206303 m!3472145))

(declare-fun m!3472147 () Bool)

(assert (=> b!3206303 m!3472147))

(declare-fun m!3472149 () Bool)

(assert (=> b!3206303 m!3472149))

(declare-fun m!3472151 () Bool)

(assert (=> b!3206303 m!3472151))

(declare-fun m!3472153 () Bool)

(assert (=> b!3206303 m!3472153))

(declare-fun m!3472155 () Bool)

(assert (=> b!3206303 m!3472155))

(declare-fun m!3472157 () Bool)

(assert (=> b!3206303 m!3472157))

(declare-fun m!3472159 () Bool)

(assert (=> b!3206303 m!3472159))

(declare-fun m!3472161 () Bool)

(assert (=> b!3206303 m!3472161))

(assert (=> b!3206303 m!3472155))

(declare-fun m!3472163 () Bool)

(assert (=> b!3206303 m!3472163))

(assert (=> b!3206303 m!3472161))

(declare-fun m!3472165 () Bool)

(assert (=> b!3206303 m!3472165))

(assert (=> b!3206303 m!3469595))

(declare-fun m!3472167 () Bool)

(assert (=> b!3206303 m!3472167))

(declare-fun m!3472169 () Bool)

(assert (=> b!3206303 m!3472169))

(assert (=> b!3206303 m!3469595))

(assert (=> b!3206303 m!3472153))

(declare-fun m!3472171 () Bool)

(assert (=> b!3206303 m!3472171))

(declare-fun m!3472173 () Bool)

(assert (=> b!3206303 m!3472173))

(assert (=> b!3206303 m!3472139))

(declare-fun m!3472175 () Bool)

(assert (=> b!3206303 m!3472175))

(assert (=> b!3206303 m!3472161))

(assert (=> b!3206303 m!3472167))

(assert (=> b!3206303 m!3472173))

(declare-fun m!3472177 () Bool)

(assert (=> b!3206303 m!3472177))

(declare-fun m!3472179 () Bool)

(assert (=> b!3206303 m!3472179))

(assert (=> b!3206303 m!3472149))

(assert (=> b!3206303 m!3472165))

(declare-fun m!3472181 () Bool)

(assert (=> b!3206303 m!3472181))

(declare-fun m!3472183 () Bool)

(assert (=> b!3206303 m!3472183))

(assert (=> b!3206303 m!3472147))

(declare-fun m!3472185 () Bool)

(assert (=> b!3206303 m!3472185))

(assert (=> d!877382 d!878198))

(declare-fun d!878200 () Bool)

(assert (=> d!878200 (= (list!12843 lt!1081741) (list!12847 (c!538127 lt!1081741)))))

(declare-fun bs!541340 () Bool)

(assert (= bs!541340 d!878200))

(declare-fun m!3472187 () Bool)

(assert (=> bs!541340 m!3472187))

(assert (=> d!877414 d!878200))

(assert (=> d!877414 d!877770))

(declare-fun d!878202 () Bool)

(assert (=> d!878202 (= (dropList!1075 lt!1081662 0) (drop!1858 (list!12848 (c!538128 lt!1081662)) 0))))

(declare-fun bs!541341 () Bool)

(assert (= bs!541341 d!878202))

(declare-fun m!3472189 () Bool)

(assert (=> bs!541341 m!3472189))

(assert (=> bs!541341 m!3472189))

(declare-fun m!3472191 () Bool)

(assert (=> bs!541341 m!3472191))

(assert (=> d!877414 d!878202))

(declare-fun d!878204 () Bool)

(declare-fun lt!1082629 () Int)

(assert (=> d!878204 (= lt!1082629 (size!27216 (list!12844 lt!1081662)))))

(assert (=> d!878204 (= lt!1082629 (size!27217 (c!538128 lt!1081662)))))

(assert (=> d!878204 (= (size!27210 lt!1081662) lt!1082629)))

(declare-fun bs!541342 () Bool)

(assert (= bs!541342 d!878204))

(assert (=> bs!541342 m!3469617))

(assert (=> bs!541342 m!3469617))

(declare-fun m!3472193 () Bool)

(assert (=> bs!541342 m!3472193))

(declare-fun m!3472195 () Bool)

(assert (=> bs!541342 m!3472195))

(assert (=> d!877414 d!878204))

(declare-fun d!878206 () Bool)

(declare-fun lt!1082631 () List!36243)

(assert (=> d!878206 (= lt!1082631 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (printList!1349 thiss!18206 (dropList!1075 lt!1081662 0))))))

(declare-fun e!1999069 () List!36243)

(assert (=> d!878206 (= lt!1082631 e!1999069)))

(declare-fun c!538618 () Bool)

(assert (=> d!878206 (= c!538618 ((_ is Cons!36121) (dropList!1075 lt!1081662 0)))))

(assert (=> d!878206 (= (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081662 0) (list!12843 (BalanceConc!21205 Empty!10795))) lt!1082631)))

(declare-fun b!3206318 () Bool)

(assert (=> b!3206318 (= e!1999069 (printListTailRec!558 thiss!18206 (t!237946 (dropList!1075 lt!1081662 0)) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (h!41541 (dropList!1075 lt!1081662 0)))))))))

(declare-fun lt!1082632 () List!36243)

(assert (=> b!3206318 (= lt!1082632 (list!12843 (charsOf!3226 (h!41541 (dropList!1075 lt!1081662 0)))))))

(declare-fun lt!1082630 () List!36243)

(assert (=> b!3206318 (= lt!1082630 (printList!1349 thiss!18206 (t!237946 (dropList!1075 lt!1081662 0))))))

(declare-fun lt!1082634 () Unit!50554)

(assert (=> b!3206318 (= lt!1082634 (lemmaConcatAssociativity!1730 (list!12843 (BalanceConc!21205 Empty!10795)) lt!1082632 lt!1082630))))

(assert (=> b!3206318 (= (++!8660 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) lt!1082632) lt!1082630) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (++!8660 lt!1082632 lt!1082630)))))

(declare-fun lt!1082633 () Unit!50554)

(assert (=> b!3206318 (= lt!1082633 lt!1082634)))

(declare-fun b!3206319 () Bool)

(assert (=> b!3206319 (= e!1999069 (list!12843 (BalanceConc!21205 Empty!10795)))))

(assert (= (and d!878206 c!538618) b!3206318))

(assert (= (and d!878206 (not c!538618)) b!3206319))

(assert (=> d!878206 m!3469591))

(declare-fun m!3472223 () Bool)

(assert (=> d!878206 m!3472223))

(assert (=> d!878206 m!3469595))

(assert (=> d!878206 m!3472223))

(declare-fun m!3472229 () Bool)

(assert (=> d!878206 m!3472229))

(declare-fun m!3472235 () Bool)

(assert (=> b!3206318 m!3472235))

(declare-fun m!3472239 () Bool)

(assert (=> b!3206318 m!3472239))

(declare-fun m!3472243 () Bool)

(assert (=> b!3206318 m!3472243))

(declare-fun m!3472245 () Bool)

(assert (=> b!3206318 m!3472245))

(assert (=> b!3206318 m!3469595))

(assert (=> b!3206318 m!3472245))

(assert (=> b!3206318 m!3472235))

(assert (=> b!3206318 m!3469595))

(declare-fun m!3472251 () Bool)

(assert (=> b!3206318 m!3472251))

(declare-fun m!3472255 () Bool)

(assert (=> b!3206318 m!3472255))

(assert (=> b!3206318 m!3469595))

(declare-fun m!3472261 () Bool)

(assert (=> b!3206318 m!3472261))

(assert (=> b!3206318 m!3469595))

(declare-fun m!3472263 () Bool)

(assert (=> b!3206318 m!3472263))

(declare-fun m!3472265 () Bool)

(assert (=> b!3206318 m!3472265))

(assert (=> b!3206318 m!3472243))

(assert (=> b!3206318 m!3472251))

(assert (=> b!3206318 m!3472263))

(declare-fun m!3472267 () Bool)

(assert (=> b!3206318 m!3472267))

(assert (=> d!877414 d!878206))

(declare-fun b!3206322 () Bool)

(declare-fun res!1304794 () Bool)

(declare-fun e!1999070 () Bool)

(assert (=> b!3206322 (=> (not res!1304794) (not e!1999070))))

(declare-fun lt!1082635 () List!36243)

(assert (=> b!3206322 (= res!1304794 (= (size!27211 lt!1082635) (+ (size!27211 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))) (size!27211 lt!1081636))))))

(declare-fun b!3206320 () Bool)

(declare-fun e!1999071 () List!36243)

(assert (=> b!3206320 (= e!1999071 lt!1081636)))

(declare-fun b!3206323 () Bool)

(assert (=> b!3206323 (= e!1999070 (or (not (= lt!1081636 Nil!36119)) (= lt!1082635 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))))

(declare-fun d!878210 () Bool)

(assert (=> d!878210 e!1999070))

(declare-fun res!1304795 () Bool)

(assert (=> d!878210 (=> (not res!1304795) (not e!1999070))))

(assert (=> d!878210 (= res!1304795 (= (content!4882 lt!1082635) ((_ map or) (content!4882 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))) (content!4882 lt!1081636))))))

(assert (=> d!878210 (= lt!1082635 e!1999071)))

(declare-fun c!538619 () Bool)

(assert (=> d!878210 (= c!538619 ((_ is Nil!36119) (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))))))

(assert (=> d!878210 (= (++!8660 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) lt!1081636) lt!1082635)))

(declare-fun b!3206321 () Bool)

(assert (=> b!3206321 (= e!1999071 (Cons!36119 (h!41539 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))) (++!8660 (t!237944 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))) lt!1081636)))))

(assert (= (and d!878210 c!538619) b!3206320))

(assert (= (and d!878210 (not c!538619)) b!3206321))

(assert (= (and d!878210 res!1304795) b!3206322))

(assert (= (and b!3206322 res!1304794) b!3206323))

(declare-fun m!3472269 () Bool)

(assert (=> b!3206322 m!3472269))

(assert (=> b!3206322 m!3470813))

(assert (=> b!3206322 m!3469737))

(declare-fun m!3472271 () Bool)

(assert (=> d!878210 m!3472271))

(assert (=> d!878210 m!3471951))

(assert (=> d!878210 m!3469741))

(declare-fun m!3472273 () Bool)

(assert (=> b!3206321 m!3472273))

(assert (=> b!3204878 d!878210))

(declare-fun d!878212 () Bool)

(declare-fun lt!1082636 () Int)

(assert (=> d!878212 (>= lt!1082636 0)))

(declare-fun e!1999072 () Int)

(assert (=> d!878212 (= lt!1082636 e!1999072)))

(declare-fun c!538620 () Bool)

(assert (=> d!878212 (= c!538620 ((_ is Nil!36119) (originalCharacters!5924 (h!41541 tokens!494))))))

(assert (=> d!878212 (= (size!27211 (originalCharacters!5924 (h!41541 tokens!494))) lt!1082636)))

(declare-fun b!3206324 () Bool)

(assert (=> b!3206324 (= e!1999072 0)))

(declare-fun b!3206325 () Bool)

(assert (=> b!3206325 (= e!1999072 (+ 1 (size!27211 (t!237944 (originalCharacters!5924 (h!41541 tokens!494))))))))

(assert (= (and d!878212 c!538620) b!3206324))

(assert (= (and d!878212 (not c!538620)) b!3206325))

(declare-fun m!3472275 () Bool)

(assert (=> b!3206325 m!3472275))

(assert (=> b!3205140 d!878212))

(declare-fun d!878214 () Bool)

(assert (=> d!878214 (= (isEmpty!20208 lt!1081658) ((_ is Nil!36119) lt!1081658))))

(assert (=> d!877488 d!878214))

(declare-fun b!3206326 () Bool)

(declare-fun e!1999075 () Bool)

(declare-fun e!1999076 () Bool)

(assert (=> b!3206326 (= e!1999075 e!1999076)))

(declare-fun c!538622 () Bool)

(assert (=> b!3206326 (= c!538622 ((_ is Star!9969) (regex!5210 lt!1081633)))))

(declare-fun b!3206327 () Bool)

(declare-fun e!1999077 () Bool)

(declare-fun call!232146 () Bool)

(assert (=> b!3206327 (= e!1999077 call!232146)))

(declare-fun b!3206328 () Bool)

(declare-fun res!1304796 () Bool)

(declare-fun e!1999079 () Bool)

(assert (=> b!3206328 (=> res!1304796 e!1999079)))

(assert (=> b!3206328 (= res!1304796 (not ((_ is Concat!15409) (regex!5210 lt!1081633))))))

(declare-fun e!1999073 () Bool)

(assert (=> b!3206328 (= e!1999073 e!1999079)))

(declare-fun bm!232141 () Bool)

(declare-fun call!232147 () Bool)

(assert (=> bm!232141 (= call!232146 call!232147)))

(declare-fun bm!232142 () Bool)

(declare-fun call!232148 () Bool)

(declare-fun c!538621 () Bool)

(assert (=> bm!232142 (= call!232148 (validRegex!4549 (ite c!538621 (regOne!20451 (regex!5210 lt!1081633)) (regOne!20450 (regex!5210 lt!1081633)))))))

(declare-fun b!3206329 () Bool)

(declare-fun e!1999074 () Bool)

(assert (=> b!3206329 (= e!1999079 e!1999074)))

(declare-fun res!1304798 () Bool)

(assert (=> b!3206329 (=> (not res!1304798) (not e!1999074))))

(assert (=> b!3206329 (= res!1304798 call!232148)))

(declare-fun b!3206330 () Bool)

(assert (=> b!3206330 (= e!1999074 call!232146)))

(declare-fun b!3206332 () Bool)

(assert (=> b!3206332 (= e!1999076 e!1999073)))

(assert (=> b!3206332 (= c!538621 ((_ is Union!9969) (regex!5210 lt!1081633)))))

(declare-fun bm!232143 () Bool)

(assert (=> bm!232143 (= call!232147 (validRegex!4549 (ite c!538622 (reg!10298 (regex!5210 lt!1081633)) (ite c!538621 (regTwo!20451 (regex!5210 lt!1081633)) (regTwo!20450 (regex!5210 lt!1081633))))))))

(declare-fun b!3206333 () Bool)

(declare-fun e!1999078 () Bool)

(assert (=> b!3206333 (= e!1999076 e!1999078)))

(declare-fun res!1304800 () Bool)

(assert (=> b!3206333 (= res!1304800 (not (nullable!3395 (reg!10298 (regex!5210 lt!1081633)))))))

(assert (=> b!3206333 (=> (not res!1304800) (not e!1999078))))

(declare-fun b!3206334 () Bool)

(assert (=> b!3206334 (= e!1999078 call!232147)))

(declare-fun d!878216 () Bool)

(declare-fun res!1304799 () Bool)

(assert (=> d!878216 (=> res!1304799 e!1999075)))

(assert (=> d!878216 (= res!1304799 ((_ is ElementMatch!9969) (regex!5210 lt!1081633)))))

(assert (=> d!878216 (= (validRegex!4549 (regex!5210 lt!1081633)) e!1999075)))

(declare-fun b!3206331 () Bool)

(declare-fun res!1304797 () Bool)

(assert (=> b!3206331 (=> (not res!1304797) (not e!1999077))))

(assert (=> b!3206331 (= res!1304797 call!232148)))

(assert (=> b!3206331 (= e!1999073 e!1999077)))

(assert (= (and d!878216 (not res!1304799)) b!3206326))

(assert (= (and b!3206326 c!538622) b!3206333))

(assert (= (and b!3206326 (not c!538622)) b!3206332))

(assert (= (and b!3206333 res!1304800) b!3206334))

(assert (= (and b!3206332 c!538621) b!3206331))

(assert (= (and b!3206332 (not c!538621)) b!3206328))

(assert (= (and b!3206331 res!1304797) b!3206327))

(assert (= (and b!3206328 (not res!1304796)) b!3206329))

(assert (= (and b!3206329 res!1304798) b!3206330))

(assert (= (or b!3206327 b!3206330) bm!232141))

(assert (= (or b!3206331 b!3206329) bm!232142))

(assert (= (or b!3206334 bm!232141) bm!232143))

(declare-fun m!3472277 () Bool)

(assert (=> bm!232142 m!3472277))

(declare-fun m!3472279 () Bool)

(assert (=> bm!232143 m!3472279))

(declare-fun m!3472281 () Bool)

(assert (=> b!3206333 m!3472281))

(assert (=> d!877488 d!878216))

(declare-fun d!878218 () Bool)

(declare-fun e!1999082 () Bool)

(assert (=> d!878218 e!1999082))

(declare-fun res!1304803 () Bool)

(assert (=> d!878218 (=> (not res!1304803) (not e!1999082))))

(declare-fun lt!1082639 () BalanceConc!21206)

(assert (=> d!878218 (= res!1304803 (= (list!12844 lt!1082639) tokens!494))))

(declare-fun fromList!610 (List!36245) Conc!10796)

(assert (=> d!878218 (= lt!1082639 (BalanceConc!21207 (fromList!610 tokens!494)))))

(assert (=> d!878218 (= (fromListB!1536 tokens!494) lt!1082639)))

(declare-fun b!3206337 () Bool)

(assert (=> b!3206337 (= e!1999082 (isBalanced!3212 (fromList!610 tokens!494)))))

(assert (= (and d!878218 res!1304803) b!3206337))

(declare-fun m!3472283 () Bool)

(assert (=> d!878218 m!3472283))

(declare-fun m!3472285 () Bool)

(assert (=> d!878218 m!3472285))

(assert (=> b!3206337 m!3472285))

(assert (=> b!3206337 m!3472285))

(declare-fun m!3472287 () Bool)

(assert (=> b!3206337 m!3472287))

(assert (=> d!877442 d!878218))

(declare-fun d!878220 () Bool)

(declare-fun lt!1082640 () Int)

(assert (=> d!878220 (>= lt!1082640 0)))

(declare-fun e!1999083 () Int)

(assert (=> d!878220 (= lt!1082640 e!1999083)))

(declare-fun c!538624 () Bool)

(assert (=> d!878220 (= c!538624 ((_ is Nil!36119) lt!1081769))))

(assert (=> d!878220 (= (size!27211 lt!1081769) lt!1082640)))

(declare-fun b!3206338 () Bool)

(assert (=> b!3206338 (= e!1999083 0)))

(declare-fun b!3206339 () Bool)

(assert (=> b!3206339 (= e!1999083 (+ 1 (size!27211 (t!237944 lt!1081769))))))

(assert (= (and d!878220 c!538624) b!3206338))

(assert (= (and d!878220 (not c!538624)) b!3206339))

(declare-fun m!3472289 () Bool)

(assert (=> b!3206339 m!3472289))

(assert (=> b!3204836 d!878220))

(assert (=> b!3204836 d!877566))

(assert (=> b!3204836 d!877748))

(declare-fun d!878222 () Bool)

(assert (=> d!878222 (= (list!12844 (_1!20887 lt!1081854)) (list!12848 (c!538128 (_1!20887 lt!1081854))))))

(declare-fun bs!541343 () Bool)

(assert (= bs!541343 d!878222))

(declare-fun m!3472291 () Bool)

(assert (=> bs!541343 m!3472291))

(assert (=> b!3205010 d!878222))

(declare-fun b!3206340 () Bool)

(declare-fun e!1999084 () Bool)

(declare-fun e!1999086 () Bool)

(assert (=> b!3206340 (= e!1999084 e!1999086)))

(declare-fun res!1304804 () Bool)

(declare-fun lt!1082641 () tuple2!35510)

(assert (=> b!3206340 (= res!1304804 (< (size!27211 (_2!20889 lt!1082641)) (size!27211 (list!12843 lt!1081654))))))

(assert (=> b!3206340 (=> (not res!1304804) (not e!1999086))))

(declare-fun d!878224 () Bool)

(assert (=> d!878224 e!1999084))

(declare-fun c!538625 () Bool)

(assert (=> d!878224 (= c!538625 (> (size!27216 (_1!20889 lt!1082641)) 0))))

(declare-fun e!1999085 () tuple2!35510)

(assert (=> d!878224 (= lt!1082641 e!1999085)))

(declare-fun c!538626 () Bool)

(declare-fun lt!1082642 () Option!7118)

(assert (=> d!878224 (= c!538626 ((_ is Some!7117) lt!1082642))))

(assert (=> d!878224 (= lt!1082642 (maxPrefix!2442 thiss!18206 rules!2135 (list!12843 lt!1081654)))))

(assert (=> d!878224 (= (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081654)) lt!1082641)))

(declare-fun b!3206341 () Bool)

(assert (=> b!3206341 (= e!1999085 (tuple2!35511 Nil!36121 (list!12843 lt!1081654)))))

(declare-fun b!3206342 () Bool)

(assert (=> b!3206342 (= e!1999084 (= (_2!20889 lt!1082641) (list!12843 lt!1081654)))))

(declare-fun b!3206343 () Bool)

(assert (=> b!3206343 (= e!1999086 (not (isEmpty!20206 (_1!20889 lt!1082641))))))

(declare-fun b!3206344 () Bool)

(declare-fun lt!1082643 () tuple2!35510)

(assert (=> b!3206344 (= e!1999085 (tuple2!35511 (Cons!36121 (_1!20888 (v!35657 lt!1082642)) (_1!20889 lt!1082643)) (_2!20889 lt!1082643)))))

(assert (=> b!3206344 (= lt!1082643 (lexList!1310 thiss!18206 rules!2135 (_2!20888 (v!35657 lt!1082642))))))

(assert (= (and d!878224 c!538626) b!3206344))

(assert (= (and d!878224 (not c!538626)) b!3206341))

(assert (= (and d!878224 c!538625) b!3206340))

(assert (= (and d!878224 (not c!538625)) b!3206342))

(assert (= (and b!3206340 res!1304804) b!3206343))

(declare-fun m!3472293 () Bool)

(assert (=> b!3206340 m!3472293))

(assert (=> b!3206340 m!3470089))

(assert (=> b!3206340 m!3471027))

(declare-fun m!3472295 () Bool)

(assert (=> d!878224 m!3472295))

(assert (=> d!878224 m!3470089))

(declare-fun m!3472297 () Bool)

(assert (=> d!878224 m!3472297))

(declare-fun m!3472299 () Bool)

(assert (=> b!3206343 m!3472299))

(declare-fun m!3472301 () Bool)

(assert (=> b!3206344 m!3472301))

(assert (=> b!3205010 d!878224))

(declare-fun d!878226 () Bool)

(assert (=> d!878226 (= (list!12843 lt!1081654) (list!12847 (c!538127 lt!1081654)))))

(declare-fun bs!541344 () Bool)

(assert (= bs!541344 d!878226))

(declare-fun m!3472303 () Bool)

(assert (=> bs!541344 m!3472303))

(assert (=> b!3205010 d!878226))

(declare-fun d!878228 () Bool)

(declare-fun lt!1082649 () Bool)

(declare-fun content!4886 (List!36244) (InoxSet Rule!10220))

(assert (=> d!878228 (= lt!1082649 (select (content!4886 rules!2135) (get!11494 lt!1081855)))))

(declare-fun e!1999094 () Bool)

(assert (=> d!878228 (= lt!1082649 e!1999094)))

(declare-fun res!1304812 () Bool)

(assert (=> d!878228 (=> (not res!1304812) (not e!1999094))))

(assert (=> d!878228 (= res!1304812 ((_ is Cons!36120) rules!2135))))

(assert (=> d!878228 (= (contains!6435 rules!2135 (get!11494 lt!1081855)) lt!1082649)))

(declare-fun b!3206352 () Bool)

(declare-fun e!1999095 () Bool)

(assert (=> b!3206352 (= e!1999094 e!1999095)))

(declare-fun res!1304813 () Bool)

(assert (=> b!3206352 (=> res!1304813 e!1999095)))

(assert (=> b!3206352 (= res!1304813 (= (h!41540 rules!2135) (get!11494 lt!1081855)))))

(declare-fun b!3206353 () Bool)

(assert (=> b!3206353 (= e!1999095 (contains!6435 (t!237945 rules!2135) (get!11494 lt!1081855)))))

(assert (= (and d!878228 res!1304812) b!3206352))

(assert (= (and b!3206352 (not res!1304813)) b!3206353))

(declare-fun m!3472307 () Bool)

(assert (=> d!878228 m!3472307))

(assert (=> d!878228 m!3470105))

(declare-fun m!3472309 () Bool)

(assert (=> d!878228 m!3472309))

(assert (=> b!3206353 m!3470105))

(declare-fun m!3472311 () Bool)

(assert (=> b!3206353 m!3472311))

(assert (=> b!3205017 d!878228))

(assert (=> b!3205017 d!878184))

(declare-fun d!878232 () Bool)

(declare-fun lt!1082651 () Token!9786)

(assert (=> d!878232 (= lt!1082651 (apply!8165 (list!12844 (_1!20887 lt!1081941)) 0))))

(assert (=> d!878232 (= lt!1082651 (apply!8166 (c!538128 (_1!20887 lt!1081941)) 0))))

(declare-fun e!1999097 () Bool)

(assert (=> d!878232 e!1999097))

(declare-fun res!1304814 () Bool)

(assert (=> d!878232 (=> (not res!1304814) (not e!1999097))))

(assert (=> d!878232 (= res!1304814 (<= 0 0))))

(assert (=> d!878232 (= (apply!8163 (_1!20887 lt!1081941) 0) lt!1082651)))

(declare-fun b!3206356 () Bool)

(assert (=> b!3206356 (= e!1999097 (< 0 (size!27210 (_1!20887 lt!1081941))))))

(assert (= (and d!878232 res!1304814) b!3206356))

(assert (=> d!878232 m!3471243))

(assert (=> d!878232 m!3471243))

(declare-fun m!3472317 () Bool)

(assert (=> d!878232 m!3472317))

(declare-fun m!3472319 () Bool)

(assert (=> d!878232 m!3472319))

(assert (=> b!3206356 m!3470385))

(assert (=> b!3205136 d!878232))

(declare-fun d!878238 () Bool)

(declare-fun c!538628 () Bool)

(assert (=> d!878238 (= c!538628 ((_ is Nil!36119) lt!1081797))))

(declare-fun e!1999098 () (InoxSet C!20124))

(assert (=> d!878238 (= (content!4882 lt!1081797) e!1999098)))

(declare-fun b!3206357 () Bool)

(assert (=> b!3206357 (= e!1999098 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206358 () Bool)

(assert (=> b!3206358 (= e!1999098 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081797) true) (content!4882 (t!237944 lt!1081797))))))

(assert (= (and d!878238 c!538628) b!3206357))

(assert (= (and d!878238 (not c!538628)) b!3206358))

(declare-fun m!3472321 () Bool)

(assert (=> b!3206358 m!3472321))

(declare-fun m!3472323 () Bool)

(assert (=> b!3206358 m!3472323))

(assert (=> d!877476 d!878238))

(assert (=> d!877476 d!878154))

(declare-fun d!878240 () Bool)

(declare-fun c!538629 () Bool)

(assert (=> d!878240 (= c!538629 ((_ is Nil!36119) lt!1081640))))

(declare-fun e!1999099 () (InoxSet C!20124))

(assert (=> d!878240 (= (content!4882 lt!1081640) e!1999099)))

(declare-fun b!3206359 () Bool)

(assert (=> b!3206359 (= e!1999099 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206360 () Bool)

(assert (=> b!3206360 (= e!1999099 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081640) true) (content!4882 (t!237944 lt!1081640))))))

(assert (= (and d!878240 c!538629) b!3206359))

(assert (= (and d!878240 (not c!538629)) b!3206360))

(declare-fun m!3472325 () Bool)

(assert (=> b!3206360 m!3472325))

(declare-fun m!3472327 () Bool)

(assert (=> b!3206360 m!3472327))

(assert (=> d!877476 d!878240))

(declare-fun d!878242 () Bool)

(assert (=> d!878242 (dynLambda!14558 lambda!117291 (h!41541 (t!237946 tokens!494)))))

(assert (=> d!878242 true))

(declare-fun _$7!1080 () Unit!50554)

(assert (=> d!878242 (= (choose!18703 tokens!494 lambda!117291 (h!41541 (t!237946 tokens!494))) _$7!1080)))

(declare-fun b_lambda!87789 () Bool)

(assert (=> (not b_lambda!87789) (not d!878242)))

(declare-fun bs!541346 () Bool)

(assert (= bs!541346 d!878242))

(assert (=> bs!541346 m!3470081))

(assert (=> d!877538 d!878242))

(declare-fun d!878244 () Bool)

(declare-fun res!1304815 () Bool)

(declare-fun e!1999100 () Bool)

(assert (=> d!878244 (=> res!1304815 e!1999100)))

(assert (=> d!878244 (= res!1304815 ((_ is Nil!36121) tokens!494))))

(assert (=> d!878244 (= (forall!7368 tokens!494 lambda!117291) e!1999100)))

(declare-fun b!3206361 () Bool)

(declare-fun e!1999101 () Bool)

(assert (=> b!3206361 (= e!1999100 e!1999101)))

(declare-fun res!1304816 () Bool)

(assert (=> b!3206361 (=> (not res!1304816) (not e!1999101))))

(assert (=> b!3206361 (= res!1304816 (dynLambda!14558 lambda!117291 (h!41541 tokens!494)))))

(declare-fun b!3206362 () Bool)

(assert (=> b!3206362 (= e!1999101 (forall!7368 (t!237946 tokens!494) lambda!117291))))

(assert (= (and d!878244 (not res!1304815)) b!3206361))

(assert (= (and b!3206361 res!1304816) b!3206362))

(declare-fun b_lambda!87791 () Bool)

(assert (=> (not b_lambda!87791) (not b!3206361)))

(declare-fun m!3472329 () Bool)

(assert (=> b!3206361 m!3472329))

(declare-fun m!3472331 () Bool)

(assert (=> b!3206362 m!3472331))

(assert (=> d!877538 d!878244))

(assert (=> b!3204738 d!877520))

(declare-fun d!878246 () Bool)

(declare-fun lt!1082652 () Token!9786)

(assert (=> d!878246 (contains!6434 (list!12844 (_1!20887 lt!1081664)) lt!1082652)))

(declare-fun e!1999103 () Token!9786)

(assert (=> d!878246 (= lt!1082652 e!1999103)))

(declare-fun c!538630 () Bool)

(assert (=> d!878246 (= c!538630 (= 0 0))))

(declare-fun e!1999102 () Bool)

(assert (=> d!878246 e!1999102))

(declare-fun res!1304817 () Bool)

(assert (=> d!878246 (=> (not res!1304817) (not e!1999102))))

(assert (=> d!878246 (= res!1304817 (<= 0 0))))

(assert (=> d!878246 (= (apply!8165 (list!12844 (_1!20887 lt!1081664)) 0) lt!1082652)))

(declare-fun b!3206363 () Bool)

(assert (=> b!3206363 (= e!1999102 (< 0 (size!27216 (list!12844 (_1!20887 lt!1081664)))))))

(declare-fun b!3206364 () Bool)

(assert (=> b!3206364 (= e!1999103 (head!7028 (list!12844 (_1!20887 lt!1081664))))))

(declare-fun b!3206365 () Bool)

(assert (=> b!3206365 (= e!1999103 (apply!8165 (tail!5207 (list!12844 (_1!20887 lt!1081664))) (- 0 1)))))

(assert (= (and d!878246 res!1304817) b!3206363))

(assert (= (and d!878246 c!538630) b!3206364))

(assert (= (and d!878246 (not c!538630)) b!3206365))

(assert (=> d!878246 m!3470075))

(declare-fun m!3472333 () Bool)

(assert (=> d!878246 m!3472333))

(assert (=> b!3206363 m!3470075))

(assert (=> b!3206363 m!3470077))

(assert (=> b!3206364 m!3470075))

(declare-fun m!3472335 () Bool)

(assert (=> b!3206364 m!3472335))

(assert (=> b!3206365 m!3470075))

(declare-fun m!3472337 () Bool)

(assert (=> b!3206365 m!3472337))

(assert (=> b!3206365 m!3472337))

(declare-fun m!3472339 () Bool)

(assert (=> b!3206365 m!3472339))

(assert (=> d!877610 d!878246))

(declare-fun d!878248 () Bool)

(assert (=> d!878248 (= (list!12844 (_1!20887 lt!1081664)) (list!12848 (c!538128 (_1!20887 lt!1081664))))))

(declare-fun bs!541347 () Bool)

(assert (= bs!541347 d!878248))

(declare-fun m!3472341 () Bool)

(assert (=> bs!541347 m!3472341))

(assert (=> d!877610 d!878248))

(declare-fun b!3206366 () Bool)

(declare-fun e!1999107 () Int)

(assert (=> b!3206366 (= e!1999107 0)))

(declare-fun b!3206367 () Bool)

(declare-fun e!1999104 () Token!9786)

(declare-fun call!232149 () Token!9786)

(assert (=> b!3206367 (= e!1999104 call!232149)))

(declare-fun b!3206368 () Bool)

(assert (=> b!3206368 (= e!1999107 (- 0 (size!27217 (left!28071 (c!538128 (_1!20887 lt!1081664))))))))

(declare-fun b!3206369 () Bool)

(declare-fun e!1999105 () Token!9786)

(assert (=> b!3206369 (= e!1999105 (apply!8169 (xs!13914 (c!538128 (_1!20887 lt!1081664))) 0))))

(declare-fun b!3206370 () Bool)

(assert (=> b!3206370 (= e!1999105 e!1999104)))

(declare-fun lt!1082655 () Bool)

(assert (=> b!3206370 (= lt!1082655 (appendIndex!305 (list!12848 (left!28071 (c!538128 (_1!20887 lt!1081664)))) (list!12848 (right!28401 (c!538128 (_1!20887 lt!1081664)))) 0))))

(declare-fun c!538632 () Bool)

(assert (=> b!3206370 (= c!538632 (< 0 (size!27217 (left!28071 (c!538128 (_1!20887 lt!1081664))))))))

(declare-fun d!878250 () Bool)

(declare-fun lt!1082656 () Token!9786)

(assert (=> d!878250 (= lt!1082656 (apply!8165 (list!12848 (c!538128 (_1!20887 lt!1081664))) 0))))

(assert (=> d!878250 (= lt!1082656 e!1999105)))

(declare-fun c!538634 () Bool)

(assert (=> d!878250 (= c!538634 ((_ is Leaf!17012) (c!538128 (_1!20887 lt!1081664))))))

(declare-fun e!1999106 () Bool)

(assert (=> d!878250 e!1999106))

(declare-fun res!1304818 () Bool)

(assert (=> d!878250 (=> (not res!1304818) (not e!1999106))))

(assert (=> d!878250 (= res!1304818 (<= 0 0))))

(assert (=> d!878250 (= (apply!8166 (c!538128 (_1!20887 lt!1081664)) 0) lt!1082656)))

(declare-fun b!3206371 () Bool)

(assert (=> b!3206371 (= e!1999104 call!232149)))

(declare-fun bm!232144 () Bool)

(declare-fun c!538633 () Bool)

(assert (=> bm!232144 (= c!538633 c!538632)))

(assert (=> bm!232144 (= call!232149 (apply!8166 (ite c!538632 (left!28071 (c!538128 (_1!20887 lt!1081664))) (right!28401 (c!538128 (_1!20887 lt!1081664)))) e!1999107))))

(declare-fun b!3206372 () Bool)

(assert (=> b!3206372 (= e!1999106 (< 0 (size!27217 (c!538128 (_1!20887 lt!1081664)))))))

(assert (= (and d!878250 res!1304818) b!3206372))

(assert (= (and d!878250 c!538634) b!3206369))

(assert (= (and d!878250 (not c!538634)) b!3206370))

(assert (= (and b!3206370 c!538632) b!3206367))

(assert (= (and b!3206370 (not c!538632)) b!3206371))

(assert (= (or b!3206367 b!3206371) bm!232144))

(assert (= (and bm!232144 c!538633) b!3206366))

(assert (= (and bm!232144 (not c!538633)) b!3206368))

(declare-fun m!3472343 () Bool)

(assert (=> b!3206370 m!3472343))

(declare-fun m!3472345 () Bool)

(assert (=> b!3206370 m!3472345))

(assert (=> b!3206370 m!3472343))

(assert (=> b!3206370 m!3472345))

(declare-fun m!3472347 () Bool)

(assert (=> b!3206370 m!3472347))

(declare-fun m!3472349 () Bool)

(assert (=> b!3206370 m!3472349))

(assert (=> b!3206368 m!3472349))

(assert (=> b!3206372 m!3470079))

(declare-fun m!3472351 () Bool)

(assert (=> bm!232144 m!3472351))

(declare-fun m!3472353 () Bool)

(assert (=> b!3206369 m!3472353))

(assert (=> d!878250 m!3472341))

(assert (=> d!878250 m!3472341))

(declare-fun m!3472355 () Bool)

(assert (=> d!878250 m!3472355))

(assert (=> d!877610 d!878250))

(declare-fun d!878252 () Bool)

(assert (=> d!878252 (= (head!7028 (drop!1858 lt!1081839 0)) (h!41541 (drop!1858 lt!1081839 0)))))

(assert (=> b!3204973 d!878252))

(declare-fun b!3206374 () Bool)

(declare-fun res!1304821 () Bool)

(declare-fun e!1999108 () Bool)

(assert (=> b!3206374 (=> (not res!1304821) (not e!1999108))))

(assert (=> b!3206374 (= res!1304821 (<= (height!1551 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081643 0))))) (+ (max!0 (height!1551 (c!538127 (BalanceConc!21205 Empty!10795))) (height!1551 (c!538127 (charsOf!3226 (apply!8163 lt!1081643 0))))) 1)))))

(declare-fun b!3206375 () Bool)

(declare-fun res!1304819 () Bool)

(assert (=> b!3206375 (=> (not res!1304819) (not e!1999108))))

(assert (=> b!3206375 (= res!1304819 (>= (height!1551 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081643 0))))) (max!0 (height!1551 (c!538127 (BalanceConc!21205 Empty!10795))) (height!1551 (c!538127 (charsOf!3226 (apply!8163 lt!1081643 0)))))))))

(declare-fun b!3206373 () Bool)

(declare-fun res!1304822 () Bool)

(assert (=> b!3206373 (=> (not res!1304822) (not e!1999108))))

(assert (=> b!3206373 (= res!1304822 (isBalanced!3215 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081643 0))))))))

(declare-fun b!3206376 () Bool)

(declare-fun lt!1082657 () BalanceConc!21204)

(assert (=> b!3206376 (= e!1999108 (= (list!12843 lt!1082657) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (apply!8163 lt!1081643 0))))))))

(declare-fun d!878254 () Bool)

(assert (=> d!878254 e!1999108))

(declare-fun res!1304820 () Bool)

(assert (=> d!878254 (=> (not res!1304820) (not e!1999108))))

(assert (=> d!878254 (= res!1304820 (appendAssocInst!731 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081643 0)))))))

(assert (=> d!878254 (= lt!1082657 (BalanceConc!21205 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081643 0))))))))

(assert (=> d!878254 (= (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081643 0))) lt!1082657)))

(assert (= (and d!878254 res!1304820) b!3206373))

(assert (= (and b!3206373 res!1304822) b!3206374))

(assert (= (and b!3206374 res!1304821) b!3206375))

(assert (= (and b!3206375 res!1304819) b!3206376))

(declare-fun m!3472357 () Bool)

(assert (=> b!3206373 m!3472357))

(assert (=> b!3206373 m!3472357))

(declare-fun m!3472359 () Bool)

(assert (=> b!3206373 m!3472359))

(assert (=> b!3206375 m!3472019))

(declare-fun m!3472361 () Bool)

(assert (=> b!3206375 m!3472361))

(assert (=> b!3206375 m!3472019))

(assert (=> b!3206375 m!3472361))

(declare-fun m!3472363 () Bool)

(assert (=> b!3206375 m!3472363))

(assert (=> b!3206375 m!3472357))

(assert (=> b!3206375 m!3472357))

(declare-fun m!3472365 () Bool)

(assert (=> b!3206375 m!3472365))

(declare-fun m!3472367 () Bool)

(assert (=> b!3206376 m!3472367))

(assert (=> b!3206376 m!3469595))

(assert (=> b!3206376 m!3470011))

(declare-fun m!3472369 () Bool)

(assert (=> b!3206376 m!3472369))

(assert (=> b!3206376 m!3469595))

(assert (=> b!3206376 m!3472369))

(declare-fun m!3472371 () Bool)

(assert (=> b!3206376 m!3472371))

(declare-fun m!3472373 () Bool)

(assert (=> d!878254 m!3472373))

(assert (=> d!878254 m!3472357))

(assert (=> b!3206374 m!3472019))

(assert (=> b!3206374 m!3472361))

(assert (=> b!3206374 m!3472019))

(assert (=> b!3206374 m!3472361))

(assert (=> b!3206374 m!3472363))

(assert (=> b!3206374 m!3472357))

(assert (=> b!3206374 m!3472357))

(assert (=> b!3206374 m!3472365))

(assert (=> b!3204973 d!878254))

(declare-fun d!878256 () Bool)

(declare-fun lt!1082659 () Token!9786)

(assert (=> d!878256 (contains!6434 lt!1081839 lt!1082659)))

(declare-fun e!1999112 () Token!9786)

(assert (=> d!878256 (= lt!1082659 e!1999112)))

(declare-fun c!538635 () Bool)

(assert (=> d!878256 (= c!538635 (= 0 0))))

(declare-fun e!1999111 () Bool)

(assert (=> d!878256 e!1999111))

(declare-fun res!1304823 () Bool)

(assert (=> d!878256 (=> (not res!1304823) (not e!1999111))))

(assert (=> d!878256 (= res!1304823 (<= 0 0))))

(assert (=> d!878256 (= (apply!8165 lt!1081839 0) lt!1082659)))

(declare-fun b!3206381 () Bool)

(assert (=> b!3206381 (= e!1999111 (< 0 (size!27216 lt!1081839)))))

(declare-fun b!3206382 () Bool)

(assert (=> b!3206382 (= e!1999112 (head!7028 lt!1081839))))

(declare-fun b!3206383 () Bool)

(assert (=> b!3206383 (= e!1999112 (apply!8165 (tail!5207 lt!1081839) (- 0 1)))))

(assert (= (and d!878256 res!1304823) b!3206381))

(assert (= (and d!878256 c!538635) b!3206382))

(assert (= (and d!878256 (not c!538635)) b!3206383))

(declare-fun m!3472375 () Bool)

(assert (=> d!878256 m!3472375))

(declare-fun m!3472377 () Bool)

(assert (=> b!3206381 m!3472377))

(declare-fun m!3472379 () Bool)

(assert (=> b!3206382 m!3472379))

(declare-fun m!3472381 () Bool)

(assert (=> b!3206383 m!3472381))

(assert (=> b!3206383 m!3472381))

(declare-fun m!3472383 () Bool)

(assert (=> b!3206383 m!3472383))

(assert (=> b!3204973 d!878256))

(declare-fun d!878258 () Bool)

(assert (=> d!878258 (= (list!12844 lt!1081643) (list!12848 (c!538128 lt!1081643)))))

(declare-fun bs!541348 () Bool)

(assert (= bs!541348 d!878258))

(assert (=> bs!541348 m!3471205))

(assert (=> b!3204973 d!878258))

(declare-fun b!3206385 () Bool)

(declare-fun e!1999116 () Int)

(declare-fun call!232150 () Int)

(assert (=> b!3206385 (= e!1999116 (- call!232150 (+ 0 1)))))

(declare-fun b!3206386 () Bool)

(declare-fun e!1999115 () List!36245)

(assert (=> b!3206386 (= e!1999115 Nil!36121)))

(declare-fun b!3206387 () Bool)

(declare-fun e!1999114 () List!36245)

(assert (=> b!3206387 (= e!1999115 e!1999114)))

(declare-fun c!538636 () Bool)

(assert (=> b!3206387 (= c!538636 (<= (+ 0 1) 0))))

(declare-fun d!878260 () Bool)

(declare-fun e!1999118 () Bool)

(assert (=> d!878260 e!1999118))

(declare-fun res!1304824 () Bool)

(assert (=> d!878260 (=> (not res!1304824) (not e!1999118))))

(declare-fun lt!1082660 () List!36245)

(assert (=> d!878260 (= res!1304824 (= ((_ map implies) (content!4885 lt!1082660) (content!4885 lt!1081833)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878260 (= lt!1082660 e!1999115)))

(declare-fun c!538638 () Bool)

(assert (=> d!878260 (= c!538638 ((_ is Nil!36121) lt!1081833))))

(assert (=> d!878260 (= (drop!1858 lt!1081833 (+ 0 1)) lt!1082660)))

(declare-fun bm!232145 () Bool)

(assert (=> bm!232145 (= call!232150 (size!27216 lt!1081833))))

(declare-fun b!3206388 () Bool)

(assert (=> b!3206388 (= e!1999114 (drop!1858 (t!237946 lt!1081833) (- (+ 0 1) 1)))))

(declare-fun b!3206389 () Bool)

(assert (=> b!3206389 (= e!1999116 0)))

(declare-fun b!3206390 () Bool)

(declare-fun e!1999117 () Int)

(assert (=> b!3206390 (= e!1999118 (= (size!27216 lt!1082660) e!1999117))))

(declare-fun c!538637 () Bool)

(assert (=> b!3206390 (= c!538637 (<= (+ 0 1) 0))))

(declare-fun b!3206391 () Bool)

(assert (=> b!3206391 (= e!1999114 lt!1081833)))

(declare-fun b!3206392 () Bool)

(assert (=> b!3206392 (= e!1999117 e!1999116)))

(declare-fun c!538639 () Bool)

(assert (=> b!3206392 (= c!538639 (>= (+ 0 1) call!232150))))

(declare-fun b!3206393 () Bool)

(assert (=> b!3206393 (= e!1999117 call!232150)))

(assert (= (and d!878260 c!538638) b!3206386))

(assert (= (and d!878260 (not c!538638)) b!3206387))

(assert (= (and b!3206387 c!538636) b!3206391))

(assert (= (and b!3206387 (not c!538636)) b!3206388))

(assert (= (and d!878260 res!1304824) b!3206390))

(assert (= (and b!3206390 c!538637) b!3206393))

(assert (= (and b!3206390 (not c!538637)) b!3206392))

(assert (= (and b!3206392 c!538639) b!3206389))

(assert (= (and b!3206392 (not c!538639)) b!3206385))

(assert (= (or b!3206393 b!3206392 b!3206385) bm!232145))

(declare-fun m!3472385 () Bool)

(assert (=> d!878260 m!3472385))

(declare-fun m!3472387 () Bool)

(assert (=> d!878260 m!3472387))

(declare-fun m!3472389 () Bool)

(assert (=> bm!232145 m!3472389))

(declare-fun m!3472391 () Bool)

(assert (=> b!3206388 m!3472391))

(declare-fun m!3472393 () Bool)

(assert (=> b!3206390 m!3472393))

(assert (=> b!3204973 d!878260))

(declare-fun d!878262 () Bool)

(declare-fun lt!1082661 () BalanceConc!21204)

(assert (=> d!878262 (= (list!12843 lt!1082661) (originalCharacters!5924 (apply!8163 lt!1081643 0)))))

(assert (=> d!878262 (= lt!1082661 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0)))) (value!168945 (apply!8163 lt!1081643 0))))))

(assert (=> d!878262 (= (charsOf!3226 (apply!8163 lt!1081643 0)) lt!1082661)))

(declare-fun b_lambda!87795 () Bool)

(assert (=> (not b_lambda!87795) (not d!878262)))

(declare-fun t!238157 () Bool)

(declare-fun tb!157361 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0))))) t!238157) tb!157361))

(declare-fun b!3206395 () Bool)

(declare-fun e!1999120 () Bool)

(declare-fun tp!1012475 () Bool)

(assert (=> b!3206395 (= e!1999120 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0)))) (value!168945 (apply!8163 lt!1081643 0))))) tp!1012475))))

(declare-fun result!199698 () Bool)

(assert (=> tb!157361 (= result!199698 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0)))) (value!168945 (apply!8163 lt!1081643 0)))) e!1999120))))

(assert (= tb!157361 b!3206395))

(declare-fun m!3472399 () Bool)

(assert (=> b!3206395 m!3472399))

(declare-fun m!3472401 () Bool)

(assert (=> tb!157361 m!3472401))

(assert (=> d!878262 t!238157))

(declare-fun b_and!213427 () Bool)

(assert (= b_and!213415 (and (=> t!238157 result!199698) b_and!213427)))

(declare-fun t!238167 () Bool)

(declare-fun tb!157371 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0))))) t!238167) tb!157371))

(declare-fun result!199708 () Bool)

(assert (= result!199708 result!199698))

(assert (=> d!878262 t!238167))

(declare-fun b_and!213431 () Bool)

(assert (= b_and!213411 (and (=> t!238167 result!199708) b_and!213431)))

(declare-fun t!238169 () Bool)

(declare-fun tb!157373 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0))))) t!238169) tb!157373))

(declare-fun result!199710 () Bool)

(assert (= result!199710 result!199698))

(assert (=> d!878262 t!238169))

(declare-fun b_and!213433 () Bool)

(assert (= b_and!213413 (and (=> t!238169 result!199710) b_and!213433)))

(declare-fun t!238171 () Bool)

(declare-fun tb!157375 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0))))) t!238171) tb!157375))

(declare-fun result!199712 () Bool)

(assert (= result!199712 result!199698))

(assert (=> d!878262 t!238171))

(declare-fun b_and!213435 () Bool)

(assert (= b_and!213409 (and (=> t!238171 result!199712) b_and!213435)))

(declare-fun tb!157377 () Bool)

(declare-fun t!238173 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0))))) t!238173) tb!157377))

(declare-fun result!199714 () Bool)

(assert (= result!199714 result!199698))

(assert (=> d!878262 t!238173))

(declare-fun b_and!213437 () Bool)

(assert (= b_and!213417 (and (=> t!238173 result!199714) b_and!213437)))

(declare-fun m!3472403 () Bool)

(assert (=> d!878262 m!3472403))

(declare-fun m!3472405 () Bool)

(assert (=> d!878262 m!3472405))

(assert (=> b!3204973 d!878262))

(declare-fun b!3206396 () Bool)

(declare-fun e!1999123 () Int)

(declare-fun call!232151 () Int)

(assert (=> b!3206396 (= e!1999123 (- call!232151 0))))

(declare-fun b!3206397 () Bool)

(declare-fun e!1999122 () List!36245)

(assert (=> b!3206397 (= e!1999122 Nil!36121)))

(declare-fun b!3206398 () Bool)

(declare-fun e!1999121 () List!36245)

(assert (=> b!3206398 (= e!1999122 e!1999121)))

(declare-fun c!538640 () Bool)

(assert (=> b!3206398 (= c!538640 (<= 0 0))))

(declare-fun d!878264 () Bool)

(declare-fun e!1999125 () Bool)

(assert (=> d!878264 e!1999125))

(declare-fun res!1304825 () Bool)

(assert (=> d!878264 (=> (not res!1304825) (not e!1999125))))

(declare-fun lt!1082662 () List!36245)

(assert (=> d!878264 (= res!1304825 (= ((_ map implies) (content!4885 lt!1082662) (content!4885 lt!1081839)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878264 (= lt!1082662 e!1999122)))

(declare-fun c!538642 () Bool)

(assert (=> d!878264 (= c!538642 ((_ is Nil!36121) lt!1081839))))

(assert (=> d!878264 (= (drop!1858 lt!1081839 0) lt!1082662)))

(declare-fun bm!232146 () Bool)

(assert (=> bm!232146 (= call!232151 (size!27216 lt!1081839))))

(declare-fun b!3206399 () Bool)

(assert (=> b!3206399 (= e!1999121 (drop!1858 (t!237946 lt!1081839) (- 0 1)))))

(declare-fun b!3206400 () Bool)

(assert (=> b!3206400 (= e!1999123 0)))

(declare-fun b!3206401 () Bool)

(declare-fun e!1999124 () Int)

(assert (=> b!3206401 (= e!1999125 (= (size!27216 lt!1082662) e!1999124))))

(declare-fun c!538641 () Bool)

(assert (=> b!3206401 (= c!538641 (<= 0 0))))

(declare-fun b!3206402 () Bool)

(assert (=> b!3206402 (= e!1999121 lt!1081839)))

(declare-fun b!3206403 () Bool)

(assert (=> b!3206403 (= e!1999124 e!1999123)))

(declare-fun c!538643 () Bool)

(assert (=> b!3206403 (= c!538643 (>= 0 call!232151))))

(declare-fun b!3206404 () Bool)

(assert (=> b!3206404 (= e!1999124 call!232151)))

(assert (= (and d!878264 c!538642) b!3206397))

(assert (= (and d!878264 (not c!538642)) b!3206398))

(assert (= (and b!3206398 c!538640) b!3206402))

(assert (= (and b!3206398 (not c!538640)) b!3206399))

(assert (= (and d!878264 res!1304825) b!3206401))

(assert (= (and b!3206401 c!538641) b!3206404))

(assert (= (and b!3206401 (not c!538641)) b!3206403))

(assert (= (and b!3206403 c!538643) b!3206400))

(assert (= (and b!3206403 (not c!538643)) b!3206396))

(assert (= (or b!3206404 b!3206403 b!3206396) bm!232146))

(declare-fun m!3472415 () Bool)

(assert (=> d!878264 m!3472415))

(declare-fun m!3472417 () Bool)

(assert (=> d!878264 m!3472417))

(assert (=> bm!232146 m!3472377))

(declare-fun m!3472421 () Bool)

(assert (=> b!3206399 m!3472421))

(declare-fun m!3472425 () Bool)

(assert (=> b!3206401 m!3472425))

(assert (=> b!3204973 d!878264))

(declare-fun d!878270 () Bool)

(assert (=> d!878270 (= (tail!5207 (drop!1858 lt!1081833 0)) (t!237946 (drop!1858 lt!1081833 0)))))

(assert (=> b!3204973 d!878270))

(declare-fun d!878272 () Bool)

(assert (=> d!878272 (= (head!7028 (drop!1858 lt!1081839 0)) (apply!8165 lt!1081839 0))))

(declare-fun lt!1082664 () Unit!50554)

(assert (=> d!878272 (= lt!1082664 (choose!18720 lt!1081839 0))))

(declare-fun e!1999128 () Bool)

(assert (=> d!878272 e!1999128))

(declare-fun res!1304826 () Bool)

(assert (=> d!878272 (=> (not res!1304826) (not e!1999128))))

(assert (=> d!878272 (= res!1304826 (>= 0 0))))

(assert (=> d!878272 (= (lemmaDropApply!1034 lt!1081839 0) lt!1082664)))

(declare-fun b!3206409 () Bool)

(assert (=> b!3206409 (= e!1999128 (< 0 (size!27216 lt!1081839)))))

(assert (= (and d!878272 res!1304826) b!3206409))

(assert (=> d!878272 m!3470019))

(assert (=> d!878272 m!3470019))

(assert (=> d!878272 m!3470023))

(assert (=> d!878272 m!3470025))

(declare-fun m!3472435 () Bool)

(assert (=> d!878272 m!3472435))

(assert (=> b!3206409 m!3472377))

(assert (=> b!3204973 d!878272))

(declare-fun b!3206410 () Bool)

(declare-fun e!1999131 () Int)

(declare-fun call!232152 () Int)

(assert (=> b!3206410 (= e!1999131 (- call!232152 0))))

(declare-fun b!3206411 () Bool)

(declare-fun e!1999130 () List!36245)

(assert (=> b!3206411 (= e!1999130 Nil!36121)))

(declare-fun b!3206412 () Bool)

(declare-fun e!1999129 () List!36245)

(assert (=> b!3206412 (= e!1999130 e!1999129)))

(declare-fun c!538646 () Bool)

(assert (=> b!3206412 (= c!538646 (<= 0 0))))

(declare-fun d!878276 () Bool)

(declare-fun e!1999133 () Bool)

(assert (=> d!878276 e!1999133))

(declare-fun res!1304827 () Bool)

(assert (=> d!878276 (=> (not res!1304827) (not e!1999133))))

(declare-fun lt!1082665 () List!36245)

(assert (=> d!878276 (= res!1304827 (= ((_ map implies) (content!4885 lt!1082665) (content!4885 lt!1081833)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878276 (= lt!1082665 e!1999130)))

(declare-fun c!538648 () Bool)

(assert (=> d!878276 (= c!538648 ((_ is Nil!36121) lt!1081833))))

(assert (=> d!878276 (= (drop!1858 lt!1081833 0) lt!1082665)))

(declare-fun bm!232147 () Bool)

(assert (=> bm!232147 (= call!232152 (size!27216 lt!1081833))))

(declare-fun b!3206413 () Bool)

(assert (=> b!3206413 (= e!1999129 (drop!1858 (t!237946 lt!1081833) (- 0 1)))))

(declare-fun b!3206414 () Bool)

(assert (=> b!3206414 (= e!1999131 0)))

(declare-fun b!3206415 () Bool)

(declare-fun e!1999132 () Int)

(assert (=> b!3206415 (= e!1999133 (= (size!27216 lt!1082665) e!1999132))))

(declare-fun c!538647 () Bool)

(assert (=> b!3206415 (= c!538647 (<= 0 0))))

(declare-fun b!3206416 () Bool)

(assert (=> b!3206416 (= e!1999129 lt!1081833)))

(declare-fun b!3206417 () Bool)

(assert (=> b!3206417 (= e!1999132 e!1999131)))

(declare-fun c!538649 () Bool)

(assert (=> b!3206417 (= c!538649 (>= 0 call!232152))))

(declare-fun b!3206418 () Bool)

(assert (=> b!3206418 (= e!1999132 call!232152)))

(assert (= (and d!878276 c!538648) b!3206411))

(assert (= (and d!878276 (not c!538648)) b!3206412))

(assert (= (and b!3206412 c!538646) b!3206416))

(assert (= (and b!3206412 (not c!538646)) b!3206413))

(assert (= (and d!878276 res!1304827) b!3206415))

(assert (= (and b!3206415 c!538647) b!3206418))

(assert (= (and b!3206415 (not c!538647)) b!3206417))

(assert (= (and b!3206417 c!538649) b!3206414))

(assert (= (and b!3206417 (not c!538649)) b!3206410))

(assert (= (or b!3206418 b!3206417 b!3206410) bm!232147))

(declare-fun m!3472439 () Bool)

(assert (=> d!878276 m!3472439))

(assert (=> d!878276 m!3472387))

(assert (=> bm!232147 m!3472389))

(declare-fun m!3472441 () Bool)

(assert (=> b!3206413 m!3472441))

(declare-fun m!3472443 () Bool)

(assert (=> b!3206415 m!3472443))

(assert (=> b!3204973 d!878276))

(declare-fun d!878280 () Bool)

(declare-fun lt!1082673 () BalanceConc!21204)

(assert (=> d!878280 (= (list!12843 lt!1082673) (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081643 (+ 0 1)) (list!12843 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081643 0))))))))

(declare-fun e!1999138 () BalanceConc!21204)

(assert (=> d!878280 (= lt!1082673 e!1999138)))

(declare-fun c!538652 () Bool)

(assert (=> d!878280 (= c!538652 (>= (+ 0 1) (size!27210 lt!1081643)))))

(declare-fun e!1999137 () Bool)

(assert (=> d!878280 e!1999137))

(declare-fun res!1304829 () Bool)

(assert (=> d!878280 (=> (not res!1304829) (not e!1999137))))

(assert (=> d!878280 (= res!1304829 (>= (+ 0 1) 0))))

(assert (=> d!878280 (= (printTailRec!1296 thiss!18206 lt!1081643 (+ 0 1) (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081643 0)))) lt!1082673)))

(declare-fun b!3206424 () Bool)

(assert (=> b!3206424 (= e!1999137 (<= (+ 0 1) (size!27210 lt!1081643)))))

(declare-fun b!3206425 () Bool)

(assert (=> b!3206425 (= e!1999138 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081643 0))))))

(declare-fun b!3206426 () Bool)

(assert (=> b!3206426 (= e!1999138 (printTailRec!1296 thiss!18206 lt!1081643 (+ 0 1 1) (++!8661 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081643 0))) (charsOf!3226 (apply!8163 lt!1081643 (+ 0 1))))))))

(declare-fun lt!1082675 () List!36245)

(assert (=> b!3206426 (= lt!1082675 (list!12844 lt!1081643))))

(declare-fun lt!1082670 () Unit!50554)

(assert (=> b!3206426 (= lt!1082670 (lemmaDropApply!1034 lt!1082675 (+ 0 1)))))

(assert (=> b!3206426 (= (head!7028 (drop!1858 lt!1082675 (+ 0 1))) (apply!8165 lt!1082675 (+ 0 1)))))

(declare-fun lt!1082672 () Unit!50554)

(assert (=> b!3206426 (= lt!1082672 lt!1082670)))

(declare-fun lt!1082669 () List!36245)

(assert (=> b!3206426 (= lt!1082669 (list!12844 lt!1081643))))

(declare-fun lt!1082671 () Unit!50554)

(assert (=> b!3206426 (= lt!1082671 (lemmaDropTail!918 lt!1082669 (+ 0 1)))))

(assert (=> b!3206426 (= (tail!5207 (drop!1858 lt!1082669 (+ 0 1))) (drop!1858 lt!1082669 (+ 0 1 1)))))

(declare-fun lt!1082674 () Unit!50554)

(assert (=> b!3206426 (= lt!1082674 lt!1082671)))

(assert (= (and d!878280 res!1304829) b!3206424))

(assert (= (and d!878280 c!538652) b!3206425))

(assert (= (and d!878280 (not c!538652)) b!3206426))

(declare-fun m!3472457 () Bool)

(assert (=> d!878280 m!3472457))

(declare-fun m!3472459 () Bool)

(assert (=> d!878280 m!3472459))

(assert (=> d!878280 m!3470001))

(declare-fun m!3472461 () Bool)

(assert (=> d!878280 m!3472461))

(assert (=> d!878280 m!3469997))

(assert (=> d!878280 m!3472457))

(assert (=> d!878280 m!3472461))

(declare-fun m!3472467 () Bool)

(assert (=> d!878280 m!3472467))

(assert (=> b!3206424 m!3469997))

(declare-fun m!3472469 () Bool)

(assert (=> b!3206426 m!3472469))

(declare-fun m!3472471 () Bool)

(assert (=> b!3206426 m!3472471))

(declare-fun m!3472473 () Bool)

(assert (=> b!3206426 m!3472473))

(declare-fun m!3472475 () Bool)

(assert (=> b!3206426 m!3472475))

(declare-fun m!3472477 () Bool)

(assert (=> b!3206426 m!3472477))

(declare-fun m!3472479 () Bool)

(assert (=> b!3206426 m!3472479))

(declare-fun m!3472481 () Bool)

(assert (=> b!3206426 m!3472481))

(declare-fun m!3472483 () Bool)

(assert (=> b!3206426 m!3472483))

(assert (=> b!3206426 m!3470001))

(assert (=> b!3206426 m!3472479))

(assert (=> b!3206426 m!3472469))

(assert (=> b!3206426 m!3470017))

(declare-fun m!3472485 () Bool)

(assert (=> b!3206426 m!3472485))

(assert (=> b!3206426 m!3472481))

(declare-fun m!3472487 () Bool)

(assert (=> b!3206426 m!3472487))

(assert (=> b!3206426 m!3472477))

(assert (=> b!3206426 m!3472485))

(declare-fun m!3472489 () Bool)

(assert (=> b!3206426 m!3472489))

(declare-fun m!3472491 () Bool)

(assert (=> b!3206426 m!3472491))

(assert (=> b!3204973 d!878280))

(declare-fun d!878290 () Bool)

(declare-fun lt!1082684 () Token!9786)

(assert (=> d!878290 (= lt!1082684 (apply!8165 (list!12844 lt!1081643) 0))))

(assert (=> d!878290 (= lt!1082684 (apply!8166 (c!538128 lt!1081643) 0))))

(declare-fun e!1999142 () Bool)

(assert (=> d!878290 e!1999142))

(declare-fun res!1304832 () Bool)

(assert (=> d!878290 (=> (not res!1304832) (not e!1999142))))

(assert (=> d!878290 (= res!1304832 (<= 0 0))))

(assert (=> d!878290 (= (apply!8163 lt!1081643 0) lt!1082684)))

(declare-fun b!3206431 () Bool)

(assert (=> b!3206431 (= e!1999142 (< 0 (size!27210 lt!1081643)))))

(assert (= (and d!878290 res!1304832) b!3206431))

(assert (=> d!878290 m!3470017))

(assert (=> d!878290 m!3470017))

(declare-fun m!3472493 () Bool)

(assert (=> d!878290 m!3472493))

(declare-fun m!3472495 () Bool)

(assert (=> d!878290 m!3472495))

(assert (=> b!3206431 m!3469997))

(assert (=> b!3204973 d!878290))

(declare-fun d!878292 () Bool)

(assert (=> d!878292 (= (tail!5207 (drop!1858 lt!1081833 0)) (drop!1858 lt!1081833 (+ 0 1)))))

(declare-fun lt!1082685 () Unit!50554)

(assert (=> d!878292 (= lt!1082685 (choose!18719 lt!1081833 0))))

(declare-fun e!1999143 () Bool)

(assert (=> d!878292 e!1999143))

(declare-fun res!1304833 () Bool)

(assert (=> d!878292 (=> (not res!1304833) (not e!1999143))))

(assert (=> d!878292 (= res!1304833 (>= 0 0))))

(assert (=> d!878292 (= (lemmaDropTail!918 lt!1081833 0) lt!1082685)))

(declare-fun b!3206432 () Bool)

(assert (=> b!3206432 (= e!1999143 (< 0 (size!27216 lt!1081833)))))

(assert (= (and d!878292 res!1304833) b!3206432))

(assert (=> d!878292 m!3470013))

(assert (=> d!878292 m!3470013))

(assert (=> d!878292 m!3470021))

(assert (=> d!878292 m!3470007))

(declare-fun m!3472513 () Bool)

(assert (=> d!878292 m!3472513))

(assert (=> b!3206432 m!3472389))

(assert (=> b!3204973 d!878292))

(declare-fun bs!541354 () Bool)

(declare-fun d!878294 () Bool)

(assert (= bs!541354 (and d!878294 d!878124)))

(declare-fun lambda!117320 () Int)

(assert (=> bs!541354 (= (and (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (= lambda!117320 lambda!117314))))

(assert (=> d!878294 true))

(assert (=> d!878294 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) (dynLambda!14567 order!18393 lambda!117320))))

(assert (=> d!878294 true))

(assert (=> d!878294 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241)))) (dynLambda!14567 order!18393 lambda!117320))))

(declare-fun Forall!1265 (Int) Bool)

(assert (=> d!878294 (= (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241)))) (Forall!1265 lambda!117320))))

(declare-fun bs!541355 () Bool)

(assert (= bs!541355 d!878294))

(declare-fun m!3472553 () Bool)

(assert (=> bs!541355 m!3472553))

(assert (=> d!877586 d!878294))

(assert (=> bs!541238 d!877512))

(assert (=> d!877408 d!877448))

(assert (=> d!877408 d!877446))

(declare-fun b!3206454 () Bool)

(declare-fun res!1304840 () Bool)

(declare-fun e!1999152 () Bool)

(assert (=> b!3206454 (=> (not res!1304840) (not e!1999152))))

(declare-fun lt!1082690 () List!36243)

(assert (=> b!3206454 (= res!1304840 (= (size!27211 lt!1082690) (+ (size!27211 lt!1081658) (size!27211 (++!8660 lt!1081636 lt!1081640)))))))

(declare-fun b!3206452 () Bool)

(declare-fun e!1999153 () List!36243)

(assert (=> b!3206452 (= e!1999153 (++!8660 lt!1081636 lt!1081640))))

(declare-fun b!3206455 () Bool)

(assert (=> b!3206455 (= e!1999152 (or (not (= (++!8660 lt!1081636 lt!1081640) Nil!36119)) (= lt!1082690 lt!1081658)))))

(declare-fun d!878306 () Bool)

(assert (=> d!878306 e!1999152))

(declare-fun res!1304841 () Bool)

(assert (=> d!878306 (=> (not res!1304841) (not e!1999152))))

(assert (=> d!878306 (= res!1304841 (= (content!4882 lt!1082690) ((_ map or) (content!4882 lt!1081658) (content!4882 (++!8660 lt!1081636 lt!1081640)))))))

(assert (=> d!878306 (= lt!1082690 e!1999153)))

(declare-fun c!538658 () Bool)

(assert (=> d!878306 (= c!538658 ((_ is Nil!36119) lt!1081658))))

(assert (=> d!878306 (= (++!8660 lt!1081658 (++!8660 lt!1081636 lt!1081640)) lt!1082690)))

(declare-fun b!3206453 () Bool)

(assert (=> b!3206453 (= e!1999153 (Cons!36119 (h!41539 lt!1081658) (++!8660 (t!237944 lt!1081658) (++!8660 lt!1081636 lt!1081640))))))

(assert (= (and d!878306 c!538658) b!3206452))

(assert (= (and d!878306 (not c!538658)) b!3206453))

(assert (= (and d!878306 res!1304841) b!3206454))

(assert (= (and b!3206454 res!1304840) b!3206455))

(declare-fun m!3472561 () Bool)

(assert (=> b!3206454 m!3472561))

(assert (=> b!3206454 m!3469249))

(assert (=> b!3206454 m!3469161))

(declare-fun m!3472565 () Bool)

(assert (=> b!3206454 m!3472565))

(declare-fun m!3472567 () Bool)

(assert (=> d!878306 m!3472567))

(assert (=> d!878306 m!3469577))

(assert (=> d!878306 m!3469161))

(declare-fun m!3472571 () Bool)

(assert (=> d!878306 m!3472571))

(assert (=> b!3206453 m!3469161))

(declare-fun m!3472573 () Bool)

(assert (=> b!3206453 m!3472573))

(assert (=> d!877408 d!878306))

(declare-fun d!878308 () Bool)

(assert (=> d!878308 (= (++!8660 (++!8660 lt!1081658 lt!1081636) lt!1081640) (++!8660 lt!1081658 (++!8660 lt!1081636 lt!1081640)))))

(assert (=> d!878308 true))

(declare-fun _$52!1544 () Unit!50554)

(assert (=> d!878308 (= (choose!18702 lt!1081658 lt!1081636 lt!1081640) _$52!1544)))

(declare-fun bs!541356 () Bool)

(assert (= bs!541356 d!878308))

(assert (=> bs!541356 m!3469207))

(assert (=> bs!541356 m!3469207))

(assert (=> bs!541356 m!3469209))

(assert (=> bs!541356 m!3469161))

(assert (=> bs!541356 m!3469161))

(assert (=> bs!541356 m!3469585))

(assert (=> d!877408 d!878308))

(assert (=> d!877408 d!877476))

(declare-fun d!878314 () Bool)

(assert (=> d!878314 (= (nullable!3395 (regex!5210 lt!1081633)) (nullableFct!965 (regex!5210 lt!1081633)))))

(declare-fun bs!541357 () Bool)

(assert (= bs!541357 d!878314))

(declare-fun m!3472597 () Bool)

(assert (=> bs!541357 m!3472597))

(assert (=> b!3204901 d!878314))

(assert (=> b!3205160 d!877520))

(assert (=> b!3205082 d!877460))

(declare-fun b!3206477 () Bool)

(declare-fun e!1999166 () Bool)

(declare-fun e!1999169 () Bool)

(assert (=> b!3206477 (= e!1999166 e!1999169)))

(declare-fun c!538669 () Bool)

(assert (=> b!3206477 (= c!538669 ((_ is EmptyLang!9969) (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))))))))

(declare-fun b!3206478 () Bool)

(declare-fun e!1999167 () Bool)

(declare-fun e!1999171 () Bool)

(assert (=> b!3206478 (= e!1999167 e!1999171)))

(declare-fun res!1304848 () Bool)

(assert (=> b!3206478 (=> (not res!1304848) (not e!1999171))))

(declare-fun lt!1082694 () Bool)

(assert (=> b!3206478 (= res!1304848 (not lt!1082694))))

(declare-fun b!3206479 () Bool)

(declare-fun call!232156 () Bool)

(assert (=> b!3206479 (= e!1999166 (= lt!1082694 call!232156))))

(declare-fun b!3206480 () Bool)

(declare-fun e!1999168 () Bool)

(assert (=> b!3206480 (= e!1999168 (= (head!7027 (list!12843 (charsOf!3226 (h!41541 tokens!494)))) (c!538126 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))))

(declare-fun e!1999172 () Bool)

(declare-fun b!3206481 () Bool)

(assert (=> b!3206481 (= e!1999172 (nullable!3395 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))))))))

(declare-fun b!3206482 () Bool)

(declare-fun res!1304849 () Bool)

(assert (=> b!3206482 (=> (not res!1304849) (not e!1999168))))

(assert (=> b!3206482 (= res!1304849 (isEmpty!20208 (tail!5206 (list!12843 (charsOf!3226 (h!41541 tokens!494))))))))

(declare-fun b!3206483 () Bool)

(declare-fun e!1999170 () Bool)

(assert (=> b!3206483 (= e!1999171 e!1999170)))

(declare-fun res!1304851 () Bool)

(assert (=> b!3206483 (=> res!1304851 e!1999170)))

(assert (=> b!3206483 (= res!1304851 call!232156)))

(declare-fun b!3206484 () Bool)

(assert (=> b!3206484 (= e!1999170 (not (= (head!7027 (list!12843 (charsOf!3226 (h!41541 tokens!494)))) (c!538126 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))))))))))

(declare-fun b!3206485 () Bool)

(declare-fun res!1304852 () Bool)

(assert (=> b!3206485 (=> res!1304852 e!1999167)))

(assert (=> b!3206485 (= res!1304852 e!1999168)))

(declare-fun res!1304845 () Bool)

(assert (=> b!3206485 (=> (not res!1304845) (not e!1999168))))

(assert (=> b!3206485 (= res!1304845 lt!1082694)))

(declare-fun b!3206486 () Bool)

(declare-fun res!1304846 () Bool)

(assert (=> b!3206486 (=> res!1304846 e!1999170)))

(assert (=> b!3206486 (= res!1304846 (not (isEmpty!20208 (tail!5206 (list!12843 (charsOf!3226 (h!41541 tokens!494)))))))))

(declare-fun d!878318 () Bool)

(assert (=> d!878318 e!1999166))

(declare-fun c!538668 () Bool)

(assert (=> d!878318 (= c!538668 ((_ is EmptyExpr!9969) (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))))))))

(assert (=> d!878318 (= lt!1082694 e!1999172)))

(declare-fun c!538670 () Bool)

(assert (=> d!878318 (= c!538670 (isEmpty!20208 (list!12843 (charsOf!3226 (h!41541 tokens!494)))))))

(assert (=> d!878318 (validRegex!4549 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))

(assert (=> d!878318 (= (matchR!4603 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))) (list!12843 (charsOf!3226 (h!41541 tokens!494)))) lt!1082694)))

(declare-fun bm!232151 () Bool)

(assert (=> bm!232151 (= call!232156 (isEmpty!20208 (list!12843 (charsOf!3226 (h!41541 tokens!494)))))))

(declare-fun b!3206487 () Bool)

(declare-fun res!1304850 () Bool)

(assert (=> b!3206487 (=> (not res!1304850) (not e!1999168))))

(assert (=> b!3206487 (= res!1304850 (not call!232156))))

(declare-fun b!3206488 () Bool)

(declare-fun res!1304847 () Bool)

(assert (=> b!3206488 (=> res!1304847 e!1999167)))

(assert (=> b!3206488 (= res!1304847 (not ((_ is ElementMatch!9969) (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))))

(assert (=> b!3206488 (= e!1999169 e!1999167)))

(declare-fun b!3206489 () Bool)

(assert (=> b!3206489 (= e!1999172 (matchR!4603 (derivativeStep!2948 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))) (head!7027 (list!12843 (charsOf!3226 (h!41541 tokens!494))))) (tail!5206 (list!12843 (charsOf!3226 (h!41541 tokens!494))))))))

(declare-fun b!3206490 () Bool)

(assert (=> b!3206490 (= e!1999169 (not lt!1082694))))

(assert (= (and d!878318 c!538670) b!3206481))

(assert (= (and d!878318 (not c!538670)) b!3206489))

(assert (= (and d!878318 c!538668) b!3206479))

(assert (= (and d!878318 (not c!538668)) b!3206477))

(assert (= (and b!3206477 c!538669) b!3206490))

(assert (= (and b!3206477 (not c!538669)) b!3206488))

(assert (= (and b!3206488 (not res!1304847)) b!3206485))

(assert (= (and b!3206485 res!1304845) b!3206487))

(assert (= (and b!3206487 res!1304850) b!3206482))

(assert (= (and b!3206482 res!1304849) b!3206480))

(assert (= (and b!3206485 (not res!1304852)) b!3206478))

(assert (= (and b!3206478 res!1304848) b!3206483))

(assert (= (and b!3206483 (not res!1304851)) b!3206486))

(assert (= (and b!3206486 (not res!1304846)) b!3206484))

(assert (= (or b!3206479 b!3206483 b!3206487) bm!232151))

(assert (=> b!3206482 m!3469205))

(declare-fun m!3472611 () Bool)

(assert (=> b!3206482 m!3472611))

(assert (=> b!3206482 m!3472611))

(declare-fun m!3472615 () Bool)

(assert (=> b!3206482 m!3472615))

(assert (=> d!878318 m!3469205))

(declare-fun m!3472619 () Bool)

(assert (=> d!878318 m!3472619))

(declare-fun m!3472621 () Bool)

(assert (=> d!878318 m!3472621))

(declare-fun m!3472623 () Bool)

(assert (=> b!3206481 m!3472623))

(assert (=> b!3206484 m!3469205))

(declare-fun m!3472625 () Bool)

(assert (=> b!3206484 m!3472625))

(assert (=> b!3206480 m!3469205))

(assert (=> b!3206480 m!3472625))

(assert (=> bm!232151 m!3469205))

(assert (=> bm!232151 m!3472619))

(assert (=> b!3206486 m!3469205))

(assert (=> b!3206486 m!3472611))

(assert (=> b!3206486 m!3472611))

(assert (=> b!3206486 m!3472615))

(assert (=> b!3206489 m!3469205))

(assert (=> b!3206489 m!3472625))

(assert (=> b!3206489 m!3472625))

(declare-fun m!3472631 () Bool)

(assert (=> b!3206489 m!3472631))

(assert (=> b!3206489 m!3469205))

(assert (=> b!3206489 m!3472611))

(assert (=> b!3206489 m!3472631))

(assert (=> b!3206489 m!3472611))

(declare-fun m!3472633 () Bool)

(assert (=> b!3206489 m!3472633))

(assert (=> b!3205082 d!878318))

(assert (=> b!3205082 d!877514))

(assert (=> b!3205082 d!877952))

(assert (=> b!3205082 d!877458))

(assert (=> b!3205152 d!877536))

(declare-fun b!3206496 () Bool)

(declare-fun e!1999176 () List!36243)

(assert (=> b!3206496 (= e!1999176 (++!8660 (list!12847 (left!28070 (c!538127 lt!1081642))) (list!12847 (right!28400 (c!538127 lt!1081642)))))))

(declare-fun b!3206494 () Bool)

(declare-fun e!1999175 () List!36243)

(assert (=> b!3206494 (= e!1999175 e!1999176)))

(declare-fun c!538672 () Bool)

(assert (=> b!3206494 (= c!538672 ((_ is Leaf!17011) (c!538127 lt!1081642)))))

(declare-fun b!3206495 () Bool)

(assert (=> b!3206495 (= e!1999176 (list!12850 (xs!13913 (c!538127 lt!1081642))))))

(declare-fun d!878328 () Bool)

(declare-fun c!538671 () Bool)

(assert (=> d!878328 (= c!538671 ((_ is Empty!10795) (c!538127 lt!1081642)))))

(assert (=> d!878328 (= (list!12847 (c!538127 lt!1081642)) e!1999175)))

(declare-fun b!3206493 () Bool)

(assert (=> b!3206493 (= e!1999175 Nil!36119)))

(assert (= (and d!878328 c!538671) b!3206493))

(assert (= (and d!878328 (not c!538671)) b!3206494))

(assert (= (and b!3206494 c!538672) b!3206495))

(assert (= (and b!3206494 (not c!538672)) b!3206496))

(declare-fun m!3472635 () Bool)

(assert (=> b!3206496 m!3472635))

(declare-fun m!3472637 () Bool)

(assert (=> b!3206496 m!3472637))

(assert (=> b!3206496 m!3472635))

(assert (=> b!3206496 m!3472637))

(declare-fun m!3472639 () Bool)

(assert (=> b!3206496 m!3472639))

(declare-fun m!3472641 () Bool)

(assert (=> b!3206495 m!3472641))

(assert (=> d!877416 d!878328))

(declare-fun d!878330 () Bool)

(declare-fun lt!1082732 () Bool)

(assert (=> d!878330 (= lt!1082732 (select (content!4885 tokens!494) (h!41541 (t!237946 tokens!494))))))

(declare-fun e!1999182 () Bool)

(assert (=> d!878330 (= lt!1082732 e!1999182)))

(declare-fun res!1304856 () Bool)

(assert (=> d!878330 (=> (not res!1304856) (not e!1999182))))

(assert (=> d!878330 (= res!1304856 ((_ is Cons!36121) tokens!494))))

(assert (=> d!878330 (= (contains!6434 tokens!494 (h!41541 (t!237946 tokens!494))) lt!1082732)))

(declare-fun b!3206504 () Bool)

(declare-fun e!1999181 () Bool)

(assert (=> b!3206504 (= e!1999182 e!1999181)))

(declare-fun res!1304857 () Bool)

(assert (=> b!3206504 (=> res!1304857 e!1999181)))

(assert (=> b!3206504 (= res!1304857 (= (h!41541 tokens!494) (h!41541 (t!237946 tokens!494))))))

(declare-fun b!3206505 () Bool)

(assert (=> b!3206505 (= e!1999181 (contains!6434 (t!237946 tokens!494) (h!41541 (t!237946 tokens!494))))))

(assert (= (and d!878330 res!1304856) b!3206504))

(assert (= (and b!3206504 (not res!1304857)) b!3206505))

(assert (=> d!878330 m!3471509))

(declare-fun m!3472643 () Bool)

(assert (=> d!878330 m!3472643))

(declare-fun m!3472645 () Bool)

(assert (=> b!3206505 m!3472645))

(assert (=> b!3205007 d!878330))

(declare-fun d!878332 () Bool)

(declare-fun lt!1082733 () Int)

(assert (=> d!878332 (>= lt!1082733 0)))

(declare-fun e!1999183 () Int)

(assert (=> d!878332 (= lt!1082733 e!1999183)))

(declare-fun c!538676 () Bool)

(assert (=> d!878332 (= c!538676 ((_ is Nil!36119) (originalCharacters!5924 separatorToken!241)))))

(assert (=> d!878332 (= (size!27211 (originalCharacters!5924 separatorToken!241)) lt!1082733)))

(declare-fun b!3206506 () Bool)

(assert (=> b!3206506 (= e!1999183 0)))

(declare-fun b!3206507 () Bool)

(assert (=> b!3206507 (= e!1999183 (+ 1 (size!27211 (t!237944 (originalCharacters!5924 separatorToken!241)))))))

(assert (= (and d!878332 c!538676) b!3206506))

(assert (= (and d!878332 (not c!538676)) b!3206507))

(declare-fun m!3472647 () Bool)

(assert (=> b!3206507 m!3472647))

(assert (=> b!3205128 d!878332))

(declare-fun b!3206522 () Bool)

(declare-fun e!1999194 () Bool)

(declare-fun e!1999193 () Bool)

(assert (=> b!3206522 (= e!1999194 e!1999193)))

(declare-fun res!1304865 () Bool)

(declare-fun rulesUseDisjointChars!268 (Rule!10220 Rule!10220) Bool)

(assert (=> b!3206522 (= res!1304865 (rulesUseDisjointChars!268 (h!41540 rules!2135) (h!41540 rules!2135)))))

(assert (=> b!3206522 (=> (not res!1304865) (not e!1999193))))

(declare-fun bm!232154 () Bool)

(declare-fun call!232159 () Bool)

(assert (=> bm!232154 (= call!232159 (ruleDisjointCharsFromAllFromOtherType!588 (h!41540 rules!2135) (t!237945 rules!2135)))))

(declare-fun b!3206523 () Bool)

(declare-fun e!1999195 () Bool)

(assert (=> b!3206523 (= e!1999194 e!1999195)))

(declare-fun res!1304864 () Bool)

(assert (=> b!3206523 (= res!1304864 (not ((_ is Cons!36120) rules!2135)))))

(assert (=> b!3206523 (=> res!1304864 e!1999195)))

(declare-fun d!878334 () Bool)

(declare-fun c!538681 () Bool)

(assert (=> d!878334 (= c!538681 (and ((_ is Cons!36120) rules!2135) (not (= (isSeparator!5210 (h!41540 rules!2135)) (isSeparator!5210 (h!41540 rules!2135))))))))

(assert (=> d!878334 (= (ruleDisjointCharsFromAllFromOtherType!588 (h!41540 rules!2135) rules!2135) e!1999194)))

(declare-fun b!3206524 () Bool)

(assert (=> b!3206524 (= e!1999195 call!232159)))

(declare-fun b!3206525 () Bool)

(assert (=> b!3206525 (= e!1999193 call!232159)))

(assert (= (and d!878334 c!538681) b!3206522))

(assert (= (and d!878334 (not c!538681)) b!3206523))

(assert (= (and b!3206522 res!1304865) b!3206525))

(assert (= (and b!3206523 (not res!1304864)) b!3206524))

(assert (= (or b!3206525 b!3206524) bm!232154))

(declare-fun m!3472757 () Bool)

(assert (=> b!3206522 m!3472757))

(declare-fun m!3472759 () Bool)

(assert (=> bm!232154 m!3472759))

(assert (=> b!3205150 d!878334))

(declare-fun d!878344 () Bool)

(assert (=> d!878344 (= (isEmpty!20208 (list!12843 (_2!20887 lt!1081664))) ((_ is Nil!36119) (list!12843 (_2!20887 lt!1081664))))))

(assert (=> d!877456 d!878344))

(declare-fun d!878346 () Bool)

(assert (=> d!878346 (= (list!12843 (_2!20887 lt!1081664)) (list!12847 (c!538127 (_2!20887 lt!1081664))))))

(declare-fun bs!541360 () Bool)

(assert (= bs!541360 d!878346))

(declare-fun m!3472761 () Bool)

(assert (=> bs!541360 m!3472761))

(assert (=> d!877456 d!878346))

(declare-fun d!878348 () Bool)

(declare-fun lt!1082737 () Bool)

(assert (=> d!878348 (= lt!1082737 (isEmpty!20208 (list!12847 (c!538127 (_2!20887 lt!1081664)))))))

(assert (=> d!878348 (= lt!1082737 (= (size!27218 (c!538127 (_2!20887 lt!1081664))) 0))))

(assert (=> d!878348 (= (isEmpty!20210 (c!538127 (_2!20887 lt!1081664))) lt!1082737)))

(declare-fun bs!541361 () Bool)

(assert (= bs!541361 d!878348))

(assert (=> bs!541361 m!3472761))

(assert (=> bs!541361 m!3472761))

(declare-fun m!3472763 () Bool)

(assert (=> bs!541361 m!3472763))

(declare-fun m!3472765 () Bool)

(assert (=> bs!541361 m!3472765))

(assert (=> d!877456 d!878348))

(assert (=> b!3205164 d!877520))

(declare-fun d!878350 () Bool)

(assert (=> d!878350 (= (list!12843 lt!1081749) (list!12847 (c!538127 lt!1081749)))))

(declare-fun bs!541362 () Bool)

(assert (= bs!541362 d!878350))

(declare-fun m!3472767 () Bool)

(assert (=> bs!541362 m!3472767))

(assert (=> d!877418 d!878350))

(declare-fun d!878352 () Bool)

(declare-fun c!538683 () Bool)

(assert (=> d!878352 (= c!538683 ((_ is Cons!36121) (list!12844 lt!1081662)))))

(declare-fun e!1999199 () List!36243)

(assert (=> d!878352 (= (printList!1349 thiss!18206 (list!12844 lt!1081662)) e!1999199)))

(declare-fun b!3206531 () Bool)

(assert (=> b!3206531 (= e!1999199 (++!8660 (list!12843 (charsOf!3226 (h!41541 (list!12844 lt!1081662)))) (printList!1349 thiss!18206 (t!237946 (list!12844 lt!1081662)))))))

(declare-fun b!3206532 () Bool)

(assert (=> b!3206532 (= e!1999199 Nil!36119)))

(assert (= (and d!878352 c!538683) b!3206531))

(assert (= (and d!878352 (not c!538683)) b!3206532))

(declare-fun m!3472783 () Bool)

(assert (=> b!3206531 m!3472783))

(assert (=> b!3206531 m!3472783))

(declare-fun m!3472787 () Bool)

(assert (=> b!3206531 m!3472787))

(declare-fun m!3472789 () Bool)

(assert (=> b!3206531 m!3472789))

(assert (=> b!3206531 m!3472787))

(assert (=> b!3206531 m!3472789))

(declare-fun m!3472793 () Bool)

(assert (=> b!3206531 m!3472793))

(assert (=> d!877418 d!878352))

(declare-fun d!878356 () Bool)

(assert (=> d!878356 (= (list!12844 lt!1081662) (list!12848 (c!538128 lt!1081662)))))

(declare-fun bs!541363 () Bool)

(assert (= bs!541363 d!878356))

(assert (=> bs!541363 m!3472189))

(assert (=> d!877418 d!878356))

(assert (=> d!877418 d!877414))

(declare-fun d!878358 () Bool)

(assert (=> d!878358 (= (inv!48973 (tag!5734 (h!41540 (t!237945 rules!2135)))) (= (mod (str.len (value!168944 (tag!5734 (h!41540 (t!237945 rules!2135))))) 2) 0))))

(assert (=> b!3205255 d!878358))

(declare-fun d!878360 () Bool)

(declare-fun res!1304869 () Bool)

(declare-fun e!1999200 () Bool)

(assert (=> d!878360 (=> (not res!1304869) (not e!1999200))))

(assert (=> d!878360 (= res!1304869 (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135))))))))

(assert (=> d!878360 (= (inv!48977 (transformation!5210 (h!41540 (t!237945 rules!2135)))) e!1999200)))

(declare-fun b!3206533 () Bool)

(assert (=> b!3206533 (= e!1999200 (equivClasses!2051 (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135))))))))

(assert (= (and d!878360 res!1304869) b!3206533))

(declare-fun m!3472803 () Bool)

(assert (=> d!878360 m!3472803))

(declare-fun m!3472805 () Bool)

(assert (=> b!3206533 m!3472805))

(assert (=> b!3205255 d!878360))

(declare-fun d!878366 () Bool)

(assert (=> d!878366 (= (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))) (v!35656 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))))))

(assert (=> b!3204969 d!878366))

(assert (=> b!3204969 d!877542))

(declare-fun d!878368 () Bool)

(assert (=> d!878368 (= (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))) (isBalanced!3215 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))))))

(declare-fun bs!541366 () Bool)

(assert (= bs!541366 d!878368))

(declare-fun m!3472807 () Bool)

(assert (=> bs!541366 m!3472807))

(assert (=> tb!157203 d!878368))

(declare-fun b!3206536 () Bool)

(declare-fun res!1304870 () Bool)

(declare-fun e!1999201 () Bool)

(assert (=> b!3206536 (=> (not res!1304870) (not e!1999201))))

(declare-fun lt!1082739 () List!36243)

(assert (=> b!3206536 (= res!1304870 (= (size!27211 lt!1082739) (+ (size!27211 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))) (size!27211 (_2!20888 (get!11496 lt!1081904))))))))

(declare-fun b!3206534 () Bool)

(declare-fun e!1999202 () List!36243)

(assert (=> b!3206534 (= e!1999202 (_2!20888 (get!11496 lt!1081904)))))

(declare-fun b!3206537 () Bool)

(assert (=> b!3206537 (= e!1999201 (or (not (= (_2!20888 (get!11496 lt!1081904)) Nil!36119)) (= lt!1082739 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904)))))))))

(declare-fun d!878370 () Bool)

(assert (=> d!878370 e!1999201))

(declare-fun res!1304871 () Bool)

(assert (=> d!878370 (=> (not res!1304871) (not e!1999201))))

(assert (=> d!878370 (= res!1304871 (= (content!4882 lt!1082739) ((_ map or) (content!4882 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))) (content!4882 (_2!20888 (get!11496 lt!1081904))))))))

(assert (=> d!878370 (= lt!1082739 e!1999202)))

(declare-fun c!538684 () Bool)

(assert (=> d!878370 (= c!538684 ((_ is Nil!36119) (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))))))

(assert (=> d!878370 (= (++!8660 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904)))) (_2!20888 (get!11496 lt!1081904))) lt!1082739)))

(declare-fun b!3206535 () Bool)

(assert (=> b!3206535 (= e!1999202 (Cons!36119 (h!41539 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))) (++!8660 (t!237944 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))) (_2!20888 (get!11496 lt!1081904)))))))

(assert (= (and d!878370 c!538684) b!3206534))

(assert (= (and d!878370 (not c!538684)) b!3206535))

(assert (= (and d!878370 res!1304871) b!3206536))

(assert (= (and b!3206536 res!1304870) b!3206537))

(declare-fun m!3472809 () Bool)

(assert (=> b!3206536 m!3472809))

(assert (=> b!3206536 m!3470229))

(declare-fun m!3472811 () Bool)

(assert (=> b!3206536 m!3472811))

(assert (=> b!3206536 m!3470197))

(declare-fun m!3472813 () Bool)

(assert (=> d!878370 m!3472813))

(assert (=> d!878370 m!3470229))

(declare-fun m!3472815 () Bool)

(assert (=> d!878370 m!3472815))

(declare-fun m!3472817 () Bool)

(assert (=> d!878370 m!3472817))

(declare-fun m!3472819 () Bool)

(assert (=> b!3206535 m!3472819))

(assert (=> b!3205076 d!878370))

(declare-fun d!878372 () Bool)

(assert (=> d!878372 (= (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904)))) (list!12847 (c!538127 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))))))

(declare-fun bs!541367 () Bool)

(assert (= bs!541367 d!878372))

(declare-fun m!3472821 () Bool)

(assert (=> bs!541367 m!3472821))

(assert (=> b!3205076 d!878372))

(declare-fun d!878374 () Bool)

(declare-fun lt!1082740 () BalanceConc!21204)

(assert (=> d!878374 (= (list!12843 lt!1082740) (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904))))))

(assert (=> d!878374 (= lt!1082740 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904))))) (value!168945 (_1!20888 (get!11496 lt!1081904)))))))

(assert (=> d!878374 (= (charsOf!3226 (_1!20888 (get!11496 lt!1081904))) lt!1082740)))

(declare-fun b_lambda!87801 () Bool)

(assert (=> (not b_lambda!87801) (not d!878374)))

(declare-fun t!238185 () Bool)

(declare-fun tb!157389 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238185) tb!157389))

(declare-fun b!3206538 () Bool)

(declare-fun e!1999203 () Bool)

(declare-fun tp!1012477 () Bool)

(assert (=> b!3206538 (= e!1999203 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904))))) (value!168945 (_1!20888 (get!11496 lt!1081904)))))) tp!1012477))))

(declare-fun result!199726 () Bool)

(assert (=> tb!157389 (= result!199726 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904))))) (value!168945 (_1!20888 (get!11496 lt!1081904))))) e!1999203))))

(assert (= tb!157389 b!3206538))

(declare-fun m!3472823 () Bool)

(assert (=> b!3206538 m!3472823))

(declare-fun m!3472825 () Bool)

(assert (=> tb!157389 m!3472825))

(assert (=> d!878374 t!238185))

(declare-fun b_and!213459 () Bool)

(assert (= b_and!213427 (and (=> t!238185 result!199726) b_and!213459)))

(declare-fun t!238187 () Bool)

(declare-fun tb!157391 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238187) tb!157391))

(declare-fun result!199728 () Bool)

(assert (= result!199728 result!199726))

(assert (=> d!878374 t!238187))

(declare-fun b_and!213461 () Bool)

(assert (= b_and!213435 (and (=> t!238187 result!199728) b_and!213461)))

(declare-fun t!238189 () Bool)

(declare-fun tb!157393 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238189) tb!157393))

(declare-fun result!199730 () Bool)

(assert (= result!199730 result!199726))

(assert (=> d!878374 t!238189))

(declare-fun b_and!213463 () Bool)

(assert (= b_and!213433 (and (=> t!238189 result!199730) b_and!213463)))

(declare-fun tb!157395 () Bool)

(declare-fun t!238192 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238192) tb!157395))

(declare-fun result!199732 () Bool)

(assert (= result!199732 result!199726))

(assert (=> d!878374 t!238192))

(declare-fun b_and!213465 () Bool)

(assert (= b_and!213431 (and (=> t!238192 result!199732) b_and!213465)))

(declare-fun tb!157397 () Bool)

(declare-fun t!238194 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238194) tb!157397))

(declare-fun result!199734 () Bool)

(assert (= result!199734 result!199726))

(assert (=> d!878374 t!238194))

(declare-fun b_and!213467 () Bool)

(assert (= b_and!213437 (and (=> t!238194 result!199734) b_and!213467)))

(declare-fun m!3472827 () Bool)

(assert (=> d!878374 m!3472827))

(declare-fun m!3472829 () Bool)

(assert (=> d!878374 m!3472829))

(assert (=> b!3205076 d!878374))

(assert (=> b!3205076 d!877732))

(declare-fun d!878376 () Bool)

(assert (=> d!878376 (= (list!12843 (_2!20887 lt!1081924)) (list!12847 (c!538127 (_2!20887 lt!1081924))))))

(declare-fun bs!541368 () Bool)

(assert (= bs!541368 d!878376))

(declare-fun m!3472831 () Bool)

(assert (=> bs!541368 m!3472831))

(assert (=> b!3205111 d!878376))

(declare-fun b!3206541 () Bool)

(declare-fun e!1999206 () Bool)

(declare-fun e!1999208 () Bool)

(assert (=> b!3206541 (= e!1999206 e!1999208)))

(declare-fun res!1304874 () Bool)

(declare-fun lt!1082743 () tuple2!35510)

(assert (=> b!3206541 (= res!1304874 (< (size!27211 (_2!20889 lt!1082743)) (size!27211 (list!12843 lt!1081647))))))

(assert (=> b!3206541 (=> (not res!1304874) (not e!1999208))))

(declare-fun d!878378 () Bool)

(assert (=> d!878378 e!1999206))

(declare-fun c!538685 () Bool)

(assert (=> d!878378 (= c!538685 (> (size!27216 (_1!20889 lt!1082743)) 0))))

(declare-fun e!1999207 () tuple2!35510)

(assert (=> d!878378 (= lt!1082743 e!1999207)))

(declare-fun c!538686 () Bool)

(declare-fun lt!1082744 () Option!7118)

(assert (=> d!878378 (= c!538686 ((_ is Some!7117) lt!1082744))))

(assert (=> d!878378 (= lt!1082744 (maxPrefix!2442 thiss!18206 rules!2135 (list!12843 lt!1081647)))))

(assert (=> d!878378 (= (lexList!1310 thiss!18206 rules!2135 (list!12843 lt!1081647)) lt!1082743)))

(declare-fun b!3206542 () Bool)

(assert (=> b!3206542 (= e!1999207 (tuple2!35511 Nil!36121 (list!12843 lt!1081647)))))

(declare-fun b!3206543 () Bool)

(assert (=> b!3206543 (= e!1999206 (= (_2!20889 lt!1082743) (list!12843 lt!1081647)))))

(declare-fun b!3206544 () Bool)

(assert (=> b!3206544 (= e!1999208 (not (isEmpty!20206 (_1!20889 lt!1082743))))))

(declare-fun b!3206545 () Bool)

(declare-fun lt!1082745 () tuple2!35510)

(assert (=> b!3206545 (= e!1999207 (tuple2!35511 (Cons!36121 (_1!20888 (v!35657 lt!1082744)) (_1!20889 lt!1082745)) (_2!20889 lt!1082745)))))

(assert (=> b!3206545 (= lt!1082745 (lexList!1310 thiss!18206 rules!2135 (_2!20888 (v!35657 lt!1082744))))))

(assert (= (and d!878378 c!538686) b!3206545))

(assert (= (and d!878378 (not c!538686)) b!3206542))

(assert (= (and d!878378 c!538685) b!3206541))

(assert (= (and d!878378 (not c!538685)) b!3206543))

(assert (= (and b!3206541 res!1304874) b!3206544))

(declare-fun m!3472833 () Bool)

(assert (=> b!3206541 m!3472833))

(assert (=> b!3206541 m!3470283))

(declare-fun m!3472835 () Bool)

(assert (=> b!3206541 m!3472835))

(declare-fun m!3472839 () Bool)

(assert (=> d!878378 m!3472839))

(assert (=> d!878378 m!3470283))

(declare-fun m!3472843 () Bool)

(assert (=> d!878378 m!3472843))

(declare-fun m!3472847 () Bool)

(assert (=> b!3206544 m!3472847))

(declare-fun m!3472849 () Bool)

(assert (=> b!3206545 m!3472849))

(assert (=> b!3205111 d!878378))

(declare-fun d!878382 () Bool)

(assert (=> d!878382 (= (list!12843 lt!1081647) (list!12847 (c!538127 lt!1081647)))))

(declare-fun bs!541370 () Bool)

(assert (= bs!541370 d!878382))

(declare-fun m!3472853 () Bool)

(assert (=> bs!541370 m!3472853))

(assert (=> b!3205111 d!878382))

(declare-fun d!878384 () Bool)

(declare-fun lt!1082747 () Token!9786)

(assert (=> d!878384 (= lt!1082747 (apply!8165 (list!12844 lt!1081662) 0))))

(assert (=> d!878384 (= lt!1082747 (apply!8166 (c!538128 lt!1081662) 0))))

(declare-fun e!1999210 () Bool)

(assert (=> d!878384 e!1999210))

(declare-fun res!1304876 () Bool)

(assert (=> d!878384 (=> (not res!1304876) (not e!1999210))))

(assert (=> d!878384 (= res!1304876 (<= 0 0))))

(assert (=> d!878384 (= (apply!8163 lt!1081662 0) lt!1082747)))

(declare-fun b!3206547 () Bool)

(assert (=> b!3206547 (= e!1999210 (< 0 (size!27210 lt!1081662)))))

(assert (= (and d!878384 res!1304876) b!3206547))

(assert (=> d!878384 m!3469617))

(assert (=> d!878384 m!3469617))

(declare-fun m!3472855 () Bool)

(assert (=> d!878384 m!3472855))

(declare-fun m!3472857 () Bool)

(assert (=> d!878384 m!3472857))

(assert (=> b!3206547 m!3469597))

(assert (=> b!3204783 d!878384))

(declare-fun d!878390 () Bool)

(assert (=> d!878390 (= (head!7028 (drop!1858 lt!1081743 0)) (apply!8165 lt!1081743 0))))

(declare-fun lt!1082748 () Unit!50554)

(assert (=> d!878390 (= lt!1082748 (choose!18720 lt!1081743 0))))

(declare-fun e!1999213 () Bool)

(assert (=> d!878390 e!1999213))

(declare-fun res!1304879 () Bool)

(assert (=> d!878390 (=> (not res!1304879) (not e!1999213))))

(assert (=> d!878390 (= res!1304879 (>= 0 0))))

(assert (=> d!878390 (= (lemmaDropApply!1034 lt!1081743 0) lt!1082748)))

(declare-fun b!3206550 () Bool)

(assert (=> b!3206550 (= e!1999213 (< 0 (size!27216 lt!1081743)))))

(assert (= (and d!878390 res!1304879) b!3206550))

(assert (=> d!878390 m!3469619))

(assert (=> d!878390 m!3469619))

(assert (=> d!878390 m!3469623))

(assert (=> d!878390 m!3469625))

(declare-fun m!3472863 () Bool)

(assert (=> d!878390 m!3472863))

(declare-fun m!3472865 () Bool)

(assert (=> b!3206550 m!3472865))

(assert (=> b!3204783 d!878390))

(declare-fun d!878394 () Bool)

(declare-fun lt!1082749 () BalanceConc!21204)

(assert (=> d!878394 (= (list!12843 lt!1082749) (originalCharacters!5924 (apply!8163 lt!1081662 0)))))

(assert (=> d!878394 (= lt!1082749 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0)))) (value!168945 (apply!8163 lt!1081662 0))))))

(assert (=> d!878394 (= (charsOf!3226 (apply!8163 lt!1081662 0)) lt!1082749)))

(declare-fun b_lambda!87807 () Bool)

(assert (=> (not b_lambda!87807) (not d!878394)))

(declare-fun tb!157399 () Bool)

(declare-fun t!238196 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0))))) t!238196) tb!157399))

(declare-fun b!3206565 () Bool)

(declare-fun e!1999221 () Bool)

(declare-fun tp!1012478 () Bool)

(assert (=> b!3206565 (= e!1999221 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0)))) (value!168945 (apply!8163 lt!1081662 0))))) tp!1012478))))

(declare-fun result!199736 () Bool)

(assert (=> tb!157399 (= result!199736 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0)))) (value!168945 (apply!8163 lt!1081662 0)))) e!1999221))))

(assert (= tb!157399 b!3206565))

(declare-fun m!3472867 () Bool)

(assert (=> b!3206565 m!3472867))

(declare-fun m!3472869 () Bool)

(assert (=> tb!157399 m!3472869))

(assert (=> d!878394 t!238196))

(declare-fun b_and!213469 () Bool)

(assert (= b_and!213461 (and (=> t!238196 result!199736) b_and!213469)))

(declare-fun t!238198 () Bool)

(declare-fun tb!157401 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0))))) t!238198) tb!157401))

(declare-fun result!199738 () Bool)

(assert (= result!199738 result!199736))

(assert (=> d!878394 t!238198))

(declare-fun b_and!213471 () Bool)

(assert (= b_and!213467 (and (=> t!238198 result!199738) b_and!213471)))

(declare-fun t!238200 () Bool)

(declare-fun tb!157403 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0))))) t!238200) tb!157403))

(declare-fun result!199740 () Bool)

(assert (= result!199740 result!199736))

(assert (=> d!878394 t!238200))

(declare-fun b_and!213473 () Bool)

(assert (= b_and!213465 (and (=> t!238200 result!199740) b_and!213473)))

(declare-fun t!238202 () Bool)

(declare-fun tb!157405 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0))))) t!238202) tb!157405))

(declare-fun result!199742 () Bool)

(assert (= result!199742 result!199736))

(assert (=> d!878394 t!238202))

(declare-fun b_and!213475 () Bool)

(assert (= b_and!213459 (and (=> t!238202 result!199742) b_and!213475)))

(declare-fun tb!157407 () Bool)

(declare-fun t!238204 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0))))) t!238204) tb!157407))

(declare-fun result!199744 () Bool)

(assert (= result!199744 result!199736))

(assert (=> d!878394 t!238204))

(declare-fun b_and!213477 () Bool)

(assert (= b_and!213463 (and (=> t!238204 result!199744) b_and!213477)))

(declare-fun m!3472871 () Bool)

(assert (=> d!878394 m!3472871))

(declare-fun m!3472873 () Bool)

(assert (=> d!878394 m!3472873))

(assert (=> b!3204783 d!878394))

(declare-fun b!3206567 () Bool)

(declare-fun res!1304890 () Bool)

(declare-fun e!1999222 () Bool)

(assert (=> b!3206567 (=> (not res!1304890) (not e!1999222))))

(assert (=> b!3206567 (= res!1304890 (<= (height!1551 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081662 0))))) (+ (max!0 (height!1551 (c!538127 (BalanceConc!21205 Empty!10795))) (height!1551 (c!538127 (charsOf!3226 (apply!8163 lt!1081662 0))))) 1)))))

(declare-fun b!3206568 () Bool)

(declare-fun res!1304888 () Bool)

(assert (=> b!3206568 (=> (not res!1304888) (not e!1999222))))

(assert (=> b!3206568 (= res!1304888 (>= (height!1551 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081662 0))))) (max!0 (height!1551 (c!538127 (BalanceConc!21205 Empty!10795))) (height!1551 (c!538127 (charsOf!3226 (apply!8163 lt!1081662 0)))))))))

(declare-fun b!3206566 () Bool)

(declare-fun res!1304891 () Bool)

(assert (=> b!3206566 (=> (not res!1304891) (not e!1999222))))

(assert (=> b!3206566 (= res!1304891 (isBalanced!3215 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081662 0))))))))

(declare-fun b!3206569 () Bool)

(declare-fun lt!1082751 () BalanceConc!21204)

(assert (=> b!3206569 (= e!1999222 (= (list!12843 lt!1082751) (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (apply!8163 lt!1081662 0))))))))

(declare-fun d!878396 () Bool)

(assert (=> d!878396 e!1999222))

(declare-fun res!1304889 () Bool)

(assert (=> d!878396 (=> (not res!1304889) (not e!1999222))))

(assert (=> d!878396 (= res!1304889 (appendAssocInst!731 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081662 0)))))))

(assert (=> d!878396 (= lt!1082751 (BalanceConc!21205 (++!8666 (c!538127 (BalanceConc!21205 Empty!10795)) (c!538127 (charsOf!3226 (apply!8163 lt!1081662 0))))))))

(assert (=> d!878396 (= (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081662 0))) lt!1082751)))

(assert (= (and d!878396 res!1304889) b!3206566))

(assert (= (and b!3206566 res!1304891) b!3206567))

(assert (= (and b!3206567 res!1304890) b!3206568))

(assert (= (and b!3206568 res!1304888) b!3206569))

(declare-fun m!3472895 () Bool)

(assert (=> b!3206566 m!3472895))

(assert (=> b!3206566 m!3472895))

(declare-fun m!3472897 () Bool)

(assert (=> b!3206566 m!3472897))

(assert (=> b!3206568 m!3472019))

(declare-fun m!3472899 () Bool)

(assert (=> b!3206568 m!3472899))

(assert (=> b!3206568 m!3472019))

(assert (=> b!3206568 m!3472899))

(declare-fun m!3472901 () Bool)

(assert (=> b!3206568 m!3472901))

(assert (=> b!3206568 m!3472895))

(assert (=> b!3206568 m!3472895))

(declare-fun m!3472903 () Bool)

(assert (=> b!3206568 m!3472903))

(declare-fun m!3472905 () Bool)

(assert (=> b!3206569 m!3472905))

(assert (=> b!3206569 m!3469595))

(assert (=> b!3206569 m!3469611))

(declare-fun m!3472907 () Bool)

(assert (=> b!3206569 m!3472907))

(assert (=> b!3206569 m!3469595))

(assert (=> b!3206569 m!3472907))

(declare-fun m!3472911 () Bool)

(assert (=> b!3206569 m!3472911))

(declare-fun m!3472915 () Bool)

(assert (=> d!878396 m!3472915))

(assert (=> d!878396 m!3472895))

(assert (=> b!3206567 m!3472019))

(assert (=> b!3206567 m!3472899))

(assert (=> b!3206567 m!3472019))

(assert (=> b!3206567 m!3472899))

(assert (=> b!3206567 m!3472901))

(assert (=> b!3206567 m!3472895))

(assert (=> b!3206567 m!3472895))

(assert (=> b!3206567 m!3472903))

(assert (=> b!3204783 d!878396))

(declare-fun b!3206580 () Bool)

(declare-fun e!1999230 () Int)

(declare-fun call!232161 () Int)

(assert (=> b!3206580 (= e!1999230 (- call!232161 (+ 0 1)))))

(declare-fun b!3206581 () Bool)

(declare-fun e!1999229 () List!36245)

(assert (=> b!3206581 (= e!1999229 Nil!36121)))

(declare-fun b!3206582 () Bool)

(declare-fun e!1999228 () List!36245)

(assert (=> b!3206582 (= e!1999229 e!1999228)))

(declare-fun c!538694 () Bool)

(assert (=> b!3206582 (= c!538694 (<= (+ 0 1) 0))))

(declare-fun d!878404 () Bool)

(declare-fun e!1999232 () Bool)

(assert (=> d!878404 e!1999232))

(declare-fun res!1304894 () Bool)

(assert (=> d!878404 (=> (not res!1304894) (not e!1999232))))

(declare-fun lt!1082753 () List!36245)

(assert (=> d!878404 (= res!1304894 (= ((_ map implies) (content!4885 lt!1082753) (content!4885 lt!1081737)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878404 (= lt!1082753 e!1999229)))

(declare-fun c!538696 () Bool)

(assert (=> d!878404 (= c!538696 ((_ is Nil!36121) lt!1081737))))

(assert (=> d!878404 (= (drop!1858 lt!1081737 (+ 0 1)) lt!1082753)))

(declare-fun bm!232156 () Bool)

(assert (=> bm!232156 (= call!232161 (size!27216 lt!1081737))))

(declare-fun b!3206583 () Bool)

(assert (=> b!3206583 (= e!1999228 (drop!1858 (t!237946 lt!1081737) (- (+ 0 1) 1)))))

(declare-fun b!3206584 () Bool)

(assert (=> b!3206584 (= e!1999230 0)))

(declare-fun b!3206585 () Bool)

(declare-fun e!1999231 () Int)

(assert (=> b!3206585 (= e!1999232 (= (size!27216 lt!1082753) e!1999231))))

(declare-fun c!538695 () Bool)

(assert (=> b!3206585 (= c!538695 (<= (+ 0 1) 0))))

(declare-fun b!3206586 () Bool)

(assert (=> b!3206586 (= e!1999228 lt!1081737)))

(declare-fun b!3206587 () Bool)

(assert (=> b!3206587 (= e!1999231 e!1999230)))

(declare-fun c!538697 () Bool)

(assert (=> b!3206587 (= c!538697 (>= (+ 0 1) call!232161))))

(declare-fun b!3206588 () Bool)

(assert (=> b!3206588 (= e!1999231 call!232161)))

(assert (= (and d!878404 c!538696) b!3206581))

(assert (= (and d!878404 (not c!538696)) b!3206582))

(assert (= (and b!3206582 c!538694) b!3206586))

(assert (= (and b!3206582 (not c!538694)) b!3206583))

(assert (= (and d!878404 res!1304894) b!3206585))

(assert (= (and b!3206585 c!538695) b!3206588))

(assert (= (and b!3206585 (not c!538695)) b!3206587))

(assert (= (and b!3206587 c!538697) b!3206584))

(assert (= (and b!3206587 (not c!538697)) b!3206580))

(assert (= (or b!3206588 b!3206587 b!3206580) bm!232156))

(declare-fun m!3472927 () Bool)

(assert (=> d!878404 m!3472927))

(declare-fun m!3472929 () Bool)

(assert (=> d!878404 m!3472929))

(declare-fun m!3472931 () Bool)

(assert (=> bm!232156 m!3472931))

(declare-fun m!3472933 () Bool)

(assert (=> b!3206583 m!3472933))

(declare-fun m!3472935 () Bool)

(assert (=> b!3206585 m!3472935))

(assert (=> b!3204783 d!878404))

(declare-fun d!878408 () Bool)

(assert (=> d!878408 (= (tail!5207 (drop!1858 lt!1081737 0)) (t!237946 (drop!1858 lt!1081737 0)))))

(assert (=> b!3204783 d!878408))

(declare-fun d!878410 () Bool)

(assert (=> d!878410 (= (head!7028 (drop!1858 lt!1081743 0)) (h!41541 (drop!1858 lt!1081743 0)))))

(assert (=> b!3204783 d!878410))

(declare-fun d!878412 () Bool)

(declare-fun lt!1082758 () BalanceConc!21204)

(assert (=> d!878412 (= (list!12843 lt!1082758) (printListTailRec!558 thiss!18206 (dropList!1075 lt!1081662 (+ 0 1)) (list!12843 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081662 0))))))))

(declare-fun e!1999234 () BalanceConc!21204)

(assert (=> d!878412 (= lt!1082758 e!1999234)))

(declare-fun c!538698 () Bool)

(assert (=> d!878412 (= c!538698 (>= (+ 0 1) (size!27210 lt!1081662)))))

(declare-fun e!1999233 () Bool)

(assert (=> d!878412 e!1999233))

(declare-fun res!1304895 () Bool)

(assert (=> d!878412 (=> (not res!1304895) (not e!1999233))))

(assert (=> d!878412 (= res!1304895 (>= (+ 0 1) 0))))

(assert (=> d!878412 (= (printTailRec!1296 thiss!18206 lt!1081662 (+ 0 1) (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081662 0)))) lt!1082758)))

(declare-fun b!3206589 () Bool)

(assert (=> b!3206589 (= e!1999233 (<= (+ 0 1) (size!27210 lt!1081662)))))

(declare-fun b!3206590 () Bool)

(assert (=> b!3206590 (= e!1999234 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081662 0))))))

(declare-fun b!3206591 () Bool)

(assert (=> b!3206591 (= e!1999234 (printTailRec!1296 thiss!18206 lt!1081662 (+ 0 1 1) (++!8661 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (apply!8163 lt!1081662 0))) (charsOf!3226 (apply!8163 lt!1081662 (+ 0 1))))))))

(declare-fun lt!1082760 () List!36245)

(assert (=> b!3206591 (= lt!1082760 (list!12844 lt!1081662))))

(declare-fun lt!1082755 () Unit!50554)

(assert (=> b!3206591 (= lt!1082755 (lemmaDropApply!1034 lt!1082760 (+ 0 1)))))

(assert (=> b!3206591 (= (head!7028 (drop!1858 lt!1082760 (+ 0 1))) (apply!8165 lt!1082760 (+ 0 1)))))

(declare-fun lt!1082757 () Unit!50554)

(assert (=> b!3206591 (= lt!1082757 lt!1082755)))

(declare-fun lt!1082754 () List!36245)

(assert (=> b!3206591 (= lt!1082754 (list!12844 lt!1081662))))

(declare-fun lt!1082756 () Unit!50554)

(assert (=> b!3206591 (= lt!1082756 (lemmaDropTail!918 lt!1082754 (+ 0 1)))))

(assert (=> b!3206591 (= (tail!5207 (drop!1858 lt!1082754 (+ 0 1))) (drop!1858 lt!1082754 (+ 0 1 1)))))

(declare-fun lt!1082759 () Unit!50554)

(assert (=> b!3206591 (= lt!1082759 lt!1082756)))

(assert (= (and d!878412 res!1304895) b!3206589))

(assert (= (and d!878412 c!538698) b!3206590))

(assert (= (and d!878412 (not c!538698)) b!3206591))

(declare-fun m!3472939 () Bool)

(assert (=> d!878412 m!3472939))

(declare-fun m!3472941 () Bool)

(assert (=> d!878412 m!3472941))

(assert (=> d!878412 m!3469601))

(declare-fun m!3472943 () Bool)

(assert (=> d!878412 m!3472943))

(assert (=> d!878412 m!3469597))

(assert (=> d!878412 m!3472939))

(assert (=> d!878412 m!3472943))

(declare-fun m!3472945 () Bool)

(assert (=> d!878412 m!3472945))

(assert (=> b!3206589 m!3469597))

(declare-fun m!3472947 () Bool)

(assert (=> b!3206591 m!3472947))

(declare-fun m!3472949 () Bool)

(assert (=> b!3206591 m!3472949))

(declare-fun m!3472951 () Bool)

(assert (=> b!3206591 m!3472951))

(declare-fun m!3472953 () Bool)

(assert (=> b!3206591 m!3472953))

(declare-fun m!3472955 () Bool)

(assert (=> b!3206591 m!3472955))

(declare-fun m!3472957 () Bool)

(assert (=> b!3206591 m!3472957))

(declare-fun m!3472959 () Bool)

(assert (=> b!3206591 m!3472959))

(declare-fun m!3472961 () Bool)

(assert (=> b!3206591 m!3472961))

(assert (=> b!3206591 m!3469601))

(assert (=> b!3206591 m!3472957))

(assert (=> b!3206591 m!3472947))

(assert (=> b!3206591 m!3469617))

(declare-fun m!3472963 () Bool)

(assert (=> b!3206591 m!3472963))

(assert (=> b!3206591 m!3472959))

(declare-fun m!3472965 () Bool)

(assert (=> b!3206591 m!3472965))

(assert (=> b!3206591 m!3472955))

(assert (=> b!3206591 m!3472963))

(declare-fun m!3472967 () Bool)

(assert (=> b!3206591 m!3472967))

(declare-fun m!3472969 () Bool)

(assert (=> b!3206591 m!3472969))

(assert (=> b!3204783 d!878412))

(declare-fun b!3206592 () Bool)

(declare-fun e!1999237 () Int)

(declare-fun call!232162 () Int)

(assert (=> b!3206592 (= e!1999237 (- call!232162 0))))

(declare-fun b!3206593 () Bool)

(declare-fun e!1999236 () List!36245)

(assert (=> b!3206593 (= e!1999236 Nil!36121)))

(declare-fun b!3206594 () Bool)

(declare-fun e!1999235 () List!36245)

(assert (=> b!3206594 (= e!1999236 e!1999235)))

(declare-fun c!538699 () Bool)

(assert (=> b!3206594 (= c!538699 (<= 0 0))))

(declare-fun d!878418 () Bool)

(declare-fun e!1999239 () Bool)

(assert (=> d!878418 e!1999239))

(declare-fun res!1304896 () Bool)

(assert (=> d!878418 (=> (not res!1304896) (not e!1999239))))

(declare-fun lt!1082761 () List!36245)

(assert (=> d!878418 (= res!1304896 (= ((_ map implies) (content!4885 lt!1082761) (content!4885 lt!1081743)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878418 (= lt!1082761 e!1999236)))

(declare-fun c!538701 () Bool)

(assert (=> d!878418 (= c!538701 ((_ is Nil!36121) lt!1081743))))

(assert (=> d!878418 (= (drop!1858 lt!1081743 0) lt!1082761)))

(declare-fun bm!232157 () Bool)

(assert (=> bm!232157 (= call!232162 (size!27216 lt!1081743))))

(declare-fun b!3206595 () Bool)

(assert (=> b!3206595 (= e!1999235 (drop!1858 (t!237946 lt!1081743) (- 0 1)))))

(declare-fun b!3206596 () Bool)

(assert (=> b!3206596 (= e!1999237 0)))

(declare-fun b!3206597 () Bool)

(declare-fun e!1999238 () Int)

(assert (=> b!3206597 (= e!1999239 (= (size!27216 lt!1082761) e!1999238))))

(declare-fun c!538700 () Bool)

(assert (=> b!3206597 (= c!538700 (<= 0 0))))

(declare-fun b!3206598 () Bool)

(assert (=> b!3206598 (= e!1999235 lt!1081743)))

(declare-fun b!3206599 () Bool)

(assert (=> b!3206599 (= e!1999238 e!1999237)))

(declare-fun c!538702 () Bool)

(assert (=> b!3206599 (= c!538702 (>= 0 call!232162))))

(declare-fun b!3206600 () Bool)

(assert (=> b!3206600 (= e!1999238 call!232162)))

(assert (= (and d!878418 c!538701) b!3206593))

(assert (= (and d!878418 (not c!538701)) b!3206594))

(assert (= (and b!3206594 c!538699) b!3206598))

(assert (= (and b!3206594 (not c!538699)) b!3206595))

(assert (= (and d!878418 res!1304896) b!3206597))

(assert (= (and b!3206597 c!538700) b!3206600))

(assert (= (and b!3206597 (not c!538700)) b!3206599))

(assert (= (and b!3206599 c!538702) b!3206596))

(assert (= (and b!3206599 (not c!538702)) b!3206592))

(assert (= (or b!3206600 b!3206599 b!3206592) bm!232157))

(declare-fun m!3472971 () Bool)

(assert (=> d!878418 m!3472971))

(declare-fun m!3472973 () Bool)

(assert (=> d!878418 m!3472973))

(assert (=> bm!232157 m!3472865))

(declare-fun m!3472975 () Bool)

(assert (=> b!3206595 m!3472975))

(declare-fun m!3472977 () Bool)

(assert (=> b!3206597 m!3472977))

(assert (=> b!3204783 d!878418))

(assert (=> b!3204783 d!878356))

(declare-fun d!878420 () Bool)

(declare-fun lt!1082762 () Token!9786)

(assert (=> d!878420 (contains!6434 lt!1081743 lt!1082762)))

(declare-fun e!1999241 () Token!9786)

(assert (=> d!878420 (= lt!1082762 e!1999241)))

(declare-fun c!538703 () Bool)

(assert (=> d!878420 (= c!538703 (= 0 0))))

(declare-fun e!1999240 () Bool)

(assert (=> d!878420 e!1999240))

(declare-fun res!1304897 () Bool)

(assert (=> d!878420 (=> (not res!1304897) (not e!1999240))))

(assert (=> d!878420 (= res!1304897 (<= 0 0))))

(assert (=> d!878420 (= (apply!8165 lt!1081743 0) lt!1082762)))

(declare-fun b!3206601 () Bool)

(assert (=> b!3206601 (= e!1999240 (< 0 (size!27216 lt!1081743)))))

(declare-fun b!3206602 () Bool)

(assert (=> b!3206602 (= e!1999241 (head!7028 lt!1081743))))

(declare-fun b!3206603 () Bool)

(assert (=> b!3206603 (= e!1999241 (apply!8165 (tail!5207 lt!1081743) (- 0 1)))))

(assert (= (and d!878420 res!1304897) b!3206601))

(assert (= (and d!878420 c!538703) b!3206602))

(assert (= (and d!878420 (not c!538703)) b!3206603))

(declare-fun m!3472979 () Bool)

(assert (=> d!878420 m!3472979))

(assert (=> b!3206601 m!3472865))

(declare-fun m!3472981 () Bool)

(assert (=> b!3206602 m!3472981))

(declare-fun m!3472983 () Bool)

(assert (=> b!3206603 m!3472983))

(assert (=> b!3206603 m!3472983))

(declare-fun m!3472985 () Bool)

(assert (=> b!3206603 m!3472985))

(assert (=> b!3204783 d!878420))

(declare-fun b!3206604 () Bool)

(declare-fun e!1999244 () Int)

(declare-fun call!232163 () Int)

(assert (=> b!3206604 (= e!1999244 (- call!232163 0))))

(declare-fun b!3206605 () Bool)

(declare-fun e!1999243 () List!36245)

(assert (=> b!3206605 (= e!1999243 Nil!36121)))

(declare-fun b!3206606 () Bool)

(declare-fun e!1999242 () List!36245)

(assert (=> b!3206606 (= e!1999243 e!1999242)))

(declare-fun c!538704 () Bool)

(assert (=> b!3206606 (= c!538704 (<= 0 0))))

(declare-fun d!878422 () Bool)

(declare-fun e!1999246 () Bool)

(assert (=> d!878422 e!1999246))

(declare-fun res!1304898 () Bool)

(assert (=> d!878422 (=> (not res!1304898) (not e!1999246))))

(declare-fun lt!1082763 () List!36245)

(assert (=> d!878422 (= res!1304898 (= ((_ map implies) (content!4885 lt!1082763) (content!4885 lt!1081737)) ((as const (InoxSet Token!9786)) true)))))

(assert (=> d!878422 (= lt!1082763 e!1999243)))

(declare-fun c!538706 () Bool)

(assert (=> d!878422 (= c!538706 ((_ is Nil!36121) lt!1081737))))

(assert (=> d!878422 (= (drop!1858 lt!1081737 0) lt!1082763)))

(declare-fun bm!232158 () Bool)

(assert (=> bm!232158 (= call!232163 (size!27216 lt!1081737))))

(declare-fun b!3206607 () Bool)

(assert (=> b!3206607 (= e!1999242 (drop!1858 (t!237946 lt!1081737) (- 0 1)))))

(declare-fun b!3206608 () Bool)

(assert (=> b!3206608 (= e!1999244 0)))

(declare-fun b!3206609 () Bool)

(declare-fun e!1999245 () Int)

(assert (=> b!3206609 (= e!1999246 (= (size!27216 lt!1082763) e!1999245))))

(declare-fun c!538705 () Bool)

(assert (=> b!3206609 (= c!538705 (<= 0 0))))

(declare-fun b!3206610 () Bool)

(assert (=> b!3206610 (= e!1999242 lt!1081737)))

(declare-fun b!3206611 () Bool)

(assert (=> b!3206611 (= e!1999245 e!1999244)))

(declare-fun c!538707 () Bool)

(assert (=> b!3206611 (= c!538707 (>= 0 call!232163))))

(declare-fun b!3206612 () Bool)

(assert (=> b!3206612 (= e!1999245 call!232163)))

(assert (= (and d!878422 c!538706) b!3206605))

(assert (= (and d!878422 (not c!538706)) b!3206606))

(assert (= (and b!3206606 c!538704) b!3206610))

(assert (= (and b!3206606 (not c!538704)) b!3206607))

(assert (= (and d!878422 res!1304898) b!3206609))

(assert (= (and b!3206609 c!538705) b!3206612))

(assert (= (and b!3206609 (not c!538705)) b!3206611))

(assert (= (and b!3206611 c!538707) b!3206608))

(assert (= (and b!3206611 (not c!538707)) b!3206604))

(assert (= (or b!3206612 b!3206611 b!3206604) bm!232158))

(declare-fun m!3472987 () Bool)

(assert (=> d!878422 m!3472987))

(assert (=> d!878422 m!3472929))

(assert (=> bm!232158 m!3472931))

(declare-fun m!3472989 () Bool)

(assert (=> b!3206607 m!3472989))

(declare-fun m!3472991 () Bool)

(assert (=> b!3206609 m!3472991))

(assert (=> b!3204783 d!878422))

(declare-fun d!878424 () Bool)

(assert (=> d!878424 (= (tail!5207 (drop!1858 lt!1081737 0)) (drop!1858 lt!1081737 (+ 0 1)))))

(declare-fun lt!1082764 () Unit!50554)

(assert (=> d!878424 (= lt!1082764 (choose!18719 lt!1081737 0))))

(declare-fun e!1999247 () Bool)

(assert (=> d!878424 e!1999247))

(declare-fun res!1304899 () Bool)

(assert (=> d!878424 (=> (not res!1304899) (not e!1999247))))

(assert (=> d!878424 (= res!1304899 (>= 0 0))))

(assert (=> d!878424 (= (lemmaDropTail!918 lt!1081737 0) lt!1082764)))

(declare-fun b!3206613 () Bool)

(assert (=> b!3206613 (= e!1999247 (< 0 (size!27216 lt!1081737)))))

(assert (= (and d!878424 res!1304899) b!3206613))

(assert (=> d!878424 m!3469613))

(assert (=> d!878424 m!3469613))

(assert (=> d!878424 m!3469621))

(assert (=> d!878424 m!3469607))

(declare-fun m!3472993 () Bool)

(assert (=> d!878424 m!3472993))

(assert (=> b!3206613 m!3472931))

(assert (=> b!3204783 d!878424))

(declare-fun d!878426 () Bool)

(declare-fun res!1304900 () Bool)

(declare-fun e!1999248 () Bool)

(assert (=> d!878426 (=> (not res!1304900) (not e!1999248))))

(assert (=> d!878426 (= res!1304900 (not (isEmpty!20208 (originalCharacters!5924 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!878426 (= (inv!48976 (h!41541 (t!237946 tokens!494))) e!1999248)))

(declare-fun b!3206614 () Bool)

(declare-fun res!1304901 () Bool)

(assert (=> b!3206614 (=> (not res!1304901) (not e!1999248))))

(assert (=> b!3206614 (= res!1304901 (= (originalCharacters!5924 (h!41541 (t!237946 tokens!494))) (list!12843 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))))))

(declare-fun b!3206615 () Bool)

(assert (=> b!3206615 (= e!1999248 (= (size!27209 (h!41541 (t!237946 tokens!494))) (size!27211 (originalCharacters!5924 (h!41541 (t!237946 tokens!494))))))))

(assert (= (and d!878426 res!1304900) b!3206614))

(assert (= (and b!3206614 res!1304901) b!3206615))

(declare-fun b_lambda!87809 () Bool)

(assert (=> (not b_lambda!87809) (not b!3206614)))

(assert (=> b!3206614 t!237992))

(declare-fun b_and!213479 () Bool)

(assert (= b_and!213473 (and (=> t!237992 result!199528) b_and!213479)))

(assert (=> b!3206614 t!238016))

(declare-fun b_and!213481 () Bool)

(assert (= b_and!213471 (and (=> t!238016 result!199560) b_and!213481)))

(assert (=> b!3206614 t!238024))

(declare-fun b_and!213483 () Bool)

(assert (= b_and!213475 (and (=> t!238024 result!199570) b_and!213483)))

(assert (=> b!3206614 t!237990))

(declare-fun b_and!213485 () Bool)

(assert (= b_and!213469 (and (=> t!237990 result!199526) b_and!213485)))

(assert (=> b!3206614 t!237994))

(declare-fun b_and!213487 () Bool)

(assert (= b_and!213477 (and (=> t!237994 result!199530) b_and!213487)))

(declare-fun m!3472995 () Bool)

(assert (=> d!878426 m!3472995))

(assert (=> b!3206614 m!3469879))

(assert (=> b!3206614 m!3469879))

(declare-fun m!3472997 () Bool)

(assert (=> b!3206614 m!3472997))

(declare-fun m!3472999 () Bool)

(assert (=> b!3206615 m!3472999))

(assert (=> b!3205227 d!878426))

(declare-fun d!878428 () Bool)

(declare-fun lt!1082765 () Bool)

(assert (=> d!878428 (= lt!1082765 (isEmpty!20208 (list!12843 (_2!20887 lt!1081696))))))

(assert (=> d!878428 (= lt!1082765 (isEmpty!20210 (c!538127 (_2!20887 lt!1081696))))))

(assert (=> d!878428 (= (isEmpty!20203 (_2!20887 lt!1081696)) lt!1082765)))

(declare-fun bs!541374 () Bool)

(assert (= bs!541374 d!878428))

(declare-fun m!3473001 () Bool)

(assert (=> bs!541374 m!3473001))

(assert (=> bs!541374 m!3473001))

(declare-fun m!3473003 () Bool)

(assert (=> bs!541374 m!3473003))

(declare-fun m!3473005 () Bool)

(assert (=> bs!541374 m!3473005))

(assert (=> b!3204653 d!878428))

(declare-fun b!3206619 () Bool)

(declare-fun e!1999250 () List!36243)

(assert (=> b!3206619 (= e!1999250 (++!8660 (list!12847 (left!28070 (c!538127 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))) (list!12847 (right!28400 (c!538127 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))))

(declare-fun b!3206617 () Bool)

(declare-fun e!1999249 () List!36243)

(assert (=> b!3206617 (= e!1999249 e!1999250)))

(declare-fun c!538709 () Bool)

(assert (=> b!3206617 (= c!538709 ((_ is Leaf!17011) (c!538127 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))

(declare-fun b!3206618 () Bool)

(assert (=> b!3206618 (= e!1999250 (list!12850 (xs!13913 (c!538127 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))))))

(declare-fun d!878430 () Bool)

(declare-fun c!538708 () Bool)

(assert (=> d!878430 (= c!538708 ((_ is Empty!10795) (c!538127 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!878430 (= (list!12847 (c!538127 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) e!1999249)))

(declare-fun b!3206616 () Bool)

(assert (=> b!3206616 (= e!1999249 Nil!36119)))

(assert (= (and d!878430 c!538708) b!3206616))

(assert (= (and d!878430 (not c!538708)) b!3206617))

(assert (= (and b!3206617 c!538709) b!3206618))

(assert (= (and b!3206617 (not c!538709)) b!3206619))

(declare-fun m!3473007 () Bool)

(assert (=> b!3206619 m!3473007))

(declare-fun m!3473009 () Bool)

(assert (=> b!3206619 m!3473009))

(assert (=> b!3206619 m!3473007))

(assert (=> b!3206619 m!3473009))

(declare-fun m!3473011 () Bool)

(assert (=> b!3206619 m!3473011))

(declare-fun m!3473013 () Bool)

(assert (=> b!3206618 m!3473013))

(assert (=> d!877474 d!878430))

(assert (=> b!3204958 d!877666))

(assert (=> b!3204958 d!877668))

(declare-fun b!3206620 () Bool)

(declare-fun e!1999252 () Bool)

(declare-fun lt!1082766 () Option!7117)

(assert (=> b!3206620 (= e!1999252 (= (tag!5734 (get!11494 lt!1082766)) (tag!5734 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3206621 () Bool)

(declare-fun lt!1082768 () Unit!50554)

(declare-fun lt!1082767 () Unit!50554)

(assert (=> b!3206621 (= lt!1082768 lt!1082767)))

(assert (=> b!3206621 (rulesInvariant!4196 thiss!18206 (t!237945 (t!237945 rules!2135)))))

(assert (=> b!3206621 (= lt!1082767 (lemmaInvariantOnRulesThenOnTail!347 thiss!18206 (h!41540 (t!237945 rules!2135)) (t!237945 (t!237945 rules!2135))))))

(declare-fun e!1999251 () Option!7117)

(assert (=> b!3206621 (= e!1999251 (getRuleFromTag!915 thiss!18206 (t!237945 (t!237945 rules!2135)) (tag!5734 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3206622 () Bool)

(declare-fun e!1999254 () Option!7117)

(assert (=> b!3206622 (= e!1999254 (Some!7116 (h!41540 (t!237945 rules!2135))))))

(declare-fun b!3206623 () Bool)

(assert (=> b!3206623 (= e!1999251 None!7116)))

(declare-fun b!3206624 () Bool)

(declare-fun e!1999253 () Bool)

(assert (=> b!3206624 (= e!1999253 e!1999252)))

(declare-fun res!1304903 () Bool)

(assert (=> b!3206624 (=> (not res!1304903) (not e!1999252))))

(assert (=> b!3206624 (= res!1304903 (contains!6435 (t!237945 rules!2135) (get!11494 lt!1082766)))))

(declare-fun b!3206625 () Bool)

(assert (=> b!3206625 (= e!1999254 e!1999251)))

(declare-fun c!538710 () Bool)

(assert (=> b!3206625 (= c!538710 (and ((_ is Cons!36120) (t!237945 rules!2135)) (not (= (tag!5734 (h!41540 (t!237945 rules!2135))) (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))

(declare-fun d!878432 () Bool)

(assert (=> d!878432 e!1999253))

(declare-fun res!1304902 () Bool)

(assert (=> d!878432 (=> res!1304902 e!1999253)))

(assert (=> d!878432 (= res!1304902 (isEmpty!20212 lt!1082766))))

(assert (=> d!878432 (= lt!1082766 e!1999254)))

(declare-fun c!538711 () Bool)

(assert (=> d!878432 (= c!538711 (and ((_ is Cons!36120) (t!237945 rules!2135)) (= (tag!5734 (h!41540 (t!237945 rules!2135))) (tag!5734 (rule!7648 (h!41541 tokens!494))))))))

(assert (=> d!878432 (rulesInvariant!4196 thiss!18206 (t!237945 rules!2135))))

(assert (=> d!878432 (= (getRuleFromTag!915 thiss!18206 (t!237945 rules!2135) (tag!5734 (rule!7648 (h!41541 tokens!494)))) lt!1082766)))

(assert (= (and d!878432 c!538711) b!3206622))

(assert (= (and d!878432 (not c!538711)) b!3206625))

(assert (= (and b!3206625 c!538710) b!3206621))

(assert (= (and b!3206625 (not c!538710)) b!3206623))

(assert (= (and d!878432 (not res!1304902)) b!3206624))

(assert (= (and b!3206624 res!1304903) b!3206620))

(declare-fun m!3473015 () Bool)

(assert (=> b!3206620 m!3473015))

(assert (=> b!3206621 m!3470611))

(assert (=> b!3206621 m!3470613))

(declare-fun m!3473017 () Bool)

(assert (=> b!3206621 m!3473017))

(assert (=> b!3206624 m!3473015))

(assert (=> b!3206624 m!3473015))

(declare-fun m!3473019 () Bool)

(assert (=> b!3206624 m!3473019))

(declare-fun m!3473021 () Bool)

(assert (=> d!878432 m!3473021))

(assert (=> d!878432 m!3469963))

(assert (=> b!3204958 d!878432))

(assert (=> b!3205080 d!877732))

(declare-fun d!878434 () Bool)

(declare-fun lt!1082769 () Int)

(assert (=> d!878434 (>= lt!1082769 0)))

(declare-fun e!1999255 () Int)

(assert (=> d!878434 (= lt!1082769 e!1999255)))

(declare-fun c!538712 () Bool)

(assert (=> d!878434 (= c!538712 ((_ is Nil!36119) (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904)))))))

(assert (=> d!878434 (= (size!27211 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904)))) lt!1082769)))

(declare-fun b!3206626 () Bool)

(assert (=> b!3206626 (= e!1999255 0)))

(declare-fun b!3206627 () Bool)

(assert (=> b!3206627 (= e!1999255 (+ 1 (size!27211 (t!237944 (originalCharacters!5924 (_1!20888 (get!11496 lt!1081904)))))))))

(assert (= (and d!878434 c!538712) b!3206626))

(assert (= (and d!878434 (not c!538712)) b!3206627))

(declare-fun m!3473023 () Bool)

(assert (=> b!3206627 m!3473023))

(assert (=> b!3205080 d!878434))

(declare-fun d!878436 () Bool)

(assert (=> d!878436 (= (list!12843 (_2!20887 lt!1081710)) (list!12847 (c!538127 (_2!20887 lt!1081710))))))

(declare-fun bs!541375 () Bool)

(assert (= bs!541375 d!878436))

(declare-fun m!3473025 () Bool)

(assert (=> bs!541375 m!3473025))

(assert (=> b!3204693 d!878436))

(assert (=> b!3204693 d!877690))

(assert (=> b!3204693 d!877702))

(declare-fun d!878438 () Bool)

(declare-fun lt!1082770 () Int)

(assert (=> d!878438 (>= lt!1082770 0)))

(declare-fun e!1999256 () Int)

(assert (=> d!878438 (= lt!1082770 e!1999256)))

(declare-fun c!538713 () Bool)

(assert (=> d!878438 (= c!538713 ((_ is Nil!36119) lt!1081768))))

(assert (=> d!878438 (= (size!27211 lt!1081768) lt!1082770)))

(declare-fun b!3206628 () Bool)

(assert (=> b!3206628 (= e!1999256 0)))

(declare-fun b!3206629 () Bool)

(assert (=> b!3206629 (= e!1999256 (+ 1 (size!27211 (t!237944 lt!1081768))))))

(assert (= (and d!878438 c!538713) b!3206628))

(assert (= (and d!878438 (not c!538713)) b!3206629))

(declare-fun m!3473027 () Bool)

(assert (=> b!3206629 m!3473027))

(assert (=> b!3204832 d!878438))

(declare-fun d!878440 () Bool)

(declare-fun lt!1082771 () Int)

(assert (=> d!878440 (>= lt!1082771 0)))

(declare-fun e!1999257 () Int)

(assert (=> d!878440 (= lt!1082771 e!1999257)))

(declare-fun c!538714 () Bool)

(assert (=> d!878440 (= c!538714 ((_ is Nil!36119) (++!8660 lt!1081658 lt!1081636)))))

(assert (=> d!878440 (= (size!27211 (++!8660 lt!1081658 lt!1081636)) lt!1082771)))

(declare-fun b!3206630 () Bool)

(assert (=> b!3206630 (= e!1999257 0)))

(declare-fun b!3206631 () Bool)

(assert (=> b!3206631 (= e!1999257 (+ 1 (size!27211 (t!237944 (++!8660 lt!1081658 lt!1081636)))))))

(assert (= (and d!878440 c!538714) b!3206630))

(assert (= (and d!878440 (not c!538714)) b!3206631))

(declare-fun m!3473029 () Bool)

(assert (=> b!3206631 m!3473029))

(assert (=> b!3204832 d!878440))

(declare-fun d!878442 () Bool)

(declare-fun lt!1082772 () Int)

(assert (=> d!878442 (>= lt!1082772 0)))

(declare-fun e!1999258 () Int)

(assert (=> d!878442 (= lt!1082772 e!1999258)))

(declare-fun c!538715 () Bool)

(assert (=> d!878442 (= c!538715 ((_ is Nil!36119) lt!1081640))))

(assert (=> d!878442 (= (size!27211 lt!1081640) lt!1082772)))

(declare-fun b!3206632 () Bool)

(assert (=> b!3206632 (= e!1999258 0)))

(declare-fun b!3206633 () Bool)

(assert (=> b!3206633 (= e!1999258 (+ 1 (size!27211 (t!237944 lt!1081640))))))

(assert (= (and d!878442 c!538715) b!3206632))

(assert (= (and d!878442 (not c!538715)) b!3206633))

(declare-fun m!3473031 () Bool)

(assert (=> b!3206633 m!3473031))

(assert (=> b!3204832 d!878442))

(declare-fun d!878444 () Bool)

(assert (=> d!878444 (= (isEmpty!20208 (originalCharacters!5924 (h!41541 tokens!494))) ((_ is Nil!36119) (originalCharacters!5924 (h!41541 tokens!494))))))

(assert (=> d!877598 d!878444))

(assert (=> d!877492 d!877596))

(declare-fun d!878446 () Bool)

(assert (=> d!878446 (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 tokens!494))))

(assert (=> d!878446 true))

(declare-fun _$77!800 () Unit!50554)

(assert (=> d!878446 (= (choose!18706 thiss!18206 rules!2135 tokens!494 (h!41541 tokens!494)) _$77!800)))

(declare-fun bs!541384 () Bool)

(assert (= bs!541384 d!878446))

(assert (=> bs!541384 m!3469167))

(assert (=> d!877492 d!878446))

(assert (=> d!877492 d!877608))

(declare-fun d!878482 () Bool)

(declare-fun lt!1082781 () Bool)

(assert (=> d!878482 (= lt!1082781 (isEmpty!20208 (list!12843 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))))))))))

(assert (=> d!878482 (= lt!1082781 (isEmpty!20210 (c!538127 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))))))))))

(assert (=> d!878482 (= (isEmpty!20203 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))) lt!1082781)))

(declare-fun bs!541385 () Bool)

(assert (= bs!541385 d!878482))

(declare-fun m!3473107 () Bool)

(assert (=> bs!541385 m!3473107))

(assert (=> bs!541385 m!3473107))

(declare-fun m!3473109 () Bool)

(assert (=> bs!541385 m!3473109))

(declare-fun m!3473111 () Bool)

(assert (=> bs!541385 m!3473111))

(assert (=> b!3204944 d!878482))

(declare-fun b!3206653 () Bool)

(declare-fun e!1999272 () Bool)

(declare-fun lt!1082782 () tuple2!35506)

(assert (=> b!3206653 (= e!1999272 (= (_2!20887 lt!1082782) (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))))

(declare-fun b!3206654 () Bool)

(declare-fun e!1999271 () Bool)

(assert (=> b!3206654 (= e!1999271 (not (isEmpty!20205 (_1!20887 lt!1082782))))))

(declare-fun b!3206655 () Bool)

(declare-fun res!1304911 () Bool)

(declare-fun e!1999270 () Bool)

(assert (=> b!3206655 (=> (not res!1304911) (not e!1999270))))

(assert (=> b!3206655 (= res!1304911 (= (list!12844 (_1!20887 lt!1082782)) (_1!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))))))))))

(declare-fun d!878484 () Bool)

(assert (=> d!878484 e!1999270))

(declare-fun res!1304910 () Bool)

(assert (=> d!878484 (=> (not res!1304910) (not e!1999270))))

(assert (=> d!878484 (= res!1304910 e!1999272)))

(declare-fun c!538722 () Bool)

(assert (=> d!878484 (= c!538722 (> (size!27210 (_1!20887 lt!1082782)) 0))))

(assert (=> d!878484 (= lt!1082782 (lexTailRecV2!930 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))) (BalanceConc!21205 Empty!10795) (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))) (BalanceConc!21207 Empty!10796)))))

(assert (=> d!878484 (= (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))) lt!1082782)))

(declare-fun b!3206656 () Bool)

(assert (=> b!3206656 (= e!1999272 e!1999271)))

(declare-fun res!1304912 () Bool)

(assert (=> b!3206656 (= res!1304912 (< (size!27212 (_2!20887 lt!1082782)) (size!27212 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))))))))

(assert (=> b!3206656 (=> (not res!1304912) (not e!1999271))))

(declare-fun b!3206657 () Bool)

(assert (=> b!3206657 (= e!1999270 (= (list!12843 (_2!20887 lt!1082782)) (_2!20889 (lexList!1310 thiss!18206 rules!2135 (list!12843 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))))))))))

(assert (= (and d!878484 c!538722) b!3206656))

(assert (= (and d!878484 (not c!538722)) b!3206653))

(assert (= (and b!3206656 res!1304912) b!3206654))

(assert (= (and d!878484 res!1304910) b!3206655))

(assert (= (and b!3206655 res!1304911) b!3206657))

(declare-fun m!3473117 () Bool)

(assert (=> b!3206657 m!3473117))

(assert (=> b!3206657 m!3469943))

(declare-fun m!3473119 () Bool)

(assert (=> b!3206657 m!3473119))

(assert (=> b!3206657 m!3473119))

(declare-fun m!3473121 () Bool)

(assert (=> b!3206657 m!3473121))

(declare-fun m!3473123 () Bool)

(assert (=> d!878484 m!3473123))

(assert (=> d!878484 m!3469943))

(assert (=> d!878484 m!3469943))

(declare-fun m!3473127 () Bool)

(assert (=> d!878484 m!3473127))

(declare-fun m!3473133 () Bool)

(assert (=> b!3206654 m!3473133))

(declare-fun m!3473135 () Bool)

(assert (=> b!3206656 m!3473135))

(assert (=> b!3206656 m!3469943))

(declare-fun m!3473137 () Bool)

(assert (=> b!3206656 m!3473137))

(declare-fun m!3473139 () Bool)

(assert (=> b!3206655 m!3473139))

(assert (=> b!3206655 m!3469943))

(assert (=> b!3206655 m!3473119))

(assert (=> b!3206655 m!3473119))

(assert (=> b!3206655 m!3473121))

(assert (=> b!3204944 d!878484))

(declare-fun d!878494 () Bool)

(declare-fun lt!1082785 () BalanceConc!21204)

(assert (=> d!878494 (= (list!12843 lt!1082785) (printList!1349 thiss!18206 (list!12844 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!878494 (= lt!1082785 (printTailRec!1296 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))) 0 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!878494 (= (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))) lt!1082785)))

(declare-fun bs!541389 () Bool)

(assert (= bs!541389 d!878494))

(declare-fun m!3473141 () Bool)

(assert (=> bs!541389 m!3473141))

(assert (=> bs!541389 m!3469273))

(assert (=> bs!541389 m!3469947))

(assert (=> bs!541389 m!3469947))

(declare-fun m!3473143 () Bool)

(assert (=> bs!541389 m!3473143))

(assert (=> bs!541389 m!3469273))

(declare-fun m!3473145 () Bool)

(assert (=> bs!541389 m!3473145))

(assert (=> b!3204944 d!878494))

(assert (=> b!3204944 d!877524))

(declare-fun d!878496 () Bool)

(assert (=> d!878496 (= (isEmpty!20215 lt!1081904) (not ((_ is Some!7117) lt!1081904)))))

(assert (=> d!877546 d!878496))

(declare-fun d!878500 () Bool)

(assert (=> d!878500 (= (isEmpty!20208 (_1!20892 lt!1081905)) ((_ is Nil!36119) (_1!20892 lt!1081905)))))

(assert (=> d!877546 d!878500))

(declare-fun d!878502 () Bool)

(declare-fun lt!1082808 () tuple2!35516)

(assert (=> d!878502 (= (++!8660 (_1!20892 lt!1082808) (_2!20892 lt!1082808)) lt!1081658)))

(declare-fun sizeTr!158 (List!36243 Int) Int)

(assert (=> d!878502 (= lt!1082808 (findLongestMatchInner!829 (regex!5210 (rule!7648 (h!41541 tokens!494))) Nil!36119 0 lt!1081658 lt!1081658 (sizeTr!158 lt!1081658 0)))))

(declare-fun lt!1082811 () Unit!50554)

(declare-fun lt!1082810 () Unit!50554)

(assert (=> d!878502 (= lt!1082811 lt!1082810)))

(declare-fun lt!1082813 () List!36243)

(declare-fun lt!1082815 () Int)

(assert (=> d!878502 (= (sizeTr!158 lt!1082813 lt!1082815) (+ (size!27211 lt!1082813) lt!1082815))))

(declare-fun lemmaSizeTrEqualsSize!157 (List!36243 Int) Unit!50554)

(assert (=> d!878502 (= lt!1082810 (lemmaSizeTrEqualsSize!157 lt!1082813 lt!1082815))))

(assert (=> d!878502 (= lt!1082815 0)))

(assert (=> d!878502 (= lt!1082813 Nil!36119)))

(declare-fun lt!1082814 () Unit!50554)

(declare-fun lt!1082809 () Unit!50554)

(assert (=> d!878502 (= lt!1082814 lt!1082809)))

(declare-fun lt!1082812 () Int)

(assert (=> d!878502 (= (sizeTr!158 lt!1081658 lt!1082812) (+ (size!27211 lt!1081658) lt!1082812))))

(assert (=> d!878502 (= lt!1082809 (lemmaSizeTrEqualsSize!157 lt!1081658 lt!1082812))))

(assert (=> d!878502 (= lt!1082812 0)))

(assert (=> d!878502 (validRegex!4549 (regex!5210 (rule!7648 (h!41541 tokens!494))))))

(assert (=> d!878502 (= (findLongestMatch!744 (regex!5210 (rule!7648 (h!41541 tokens!494))) lt!1081658) lt!1082808)))

(declare-fun bs!541398 () Bool)

(assert (= bs!541398 d!878502))

(declare-fun m!3473211 () Bool)

(assert (=> bs!541398 m!3473211))

(declare-fun m!3473213 () Bool)

(assert (=> bs!541398 m!3473213))

(assert (=> bs!541398 m!3473211))

(declare-fun m!3473215 () Bool)

(assert (=> bs!541398 m!3473215))

(declare-fun m!3473217 () Bool)

(assert (=> bs!541398 m!3473217))

(declare-fun m!3473219 () Bool)

(assert (=> bs!541398 m!3473219))

(declare-fun m!3473221 () Bool)

(assert (=> bs!541398 m!3473221))

(assert (=> bs!541398 m!3469249))

(declare-fun m!3473223 () Bool)

(assert (=> bs!541398 m!3473223))

(declare-fun m!3473225 () Bool)

(assert (=> bs!541398 m!3473225))

(assert (=> bs!541398 m!3471873))

(assert (=> d!877546 d!878502))

(declare-fun d!878528 () Bool)

(declare-fun res!1304924 () Bool)

(declare-fun e!1999285 () Bool)

(assert (=> d!878528 (=> (not res!1304924) (not e!1999285))))

(assert (=> d!878528 (= res!1304924 (validRegex!4549 (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(assert (=> d!878528 (= (ruleValid!1642 thiss!18206 (rule!7648 (h!41541 tokens!494))) e!1999285)))

(declare-fun b!3206679 () Bool)

(declare-fun res!1304925 () Bool)

(assert (=> b!3206679 (=> (not res!1304925) (not e!1999285))))

(assert (=> b!3206679 (= res!1304925 (not (nullable!3395 (regex!5210 (rule!7648 (h!41541 tokens!494))))))))

(declare-fun b!3206680 () Bool)

(assert (=> b!3206680 (= e!1999285 (not (= (tag!5734 (rule!7648 (h!41541 tokens!494))) (String!40535 ""))))))

(assert (= (and d!878528 res!1304924) b!3206679))

(assert (= (and b!3206679 res!1304925) b!3206680))

(assert (=> d!878528 m!3471873))

(assert (=> b!3206679 m!3471905))

(assert (=> d!877546 d!878528))

(declare-fun d!878530 () Bool)

(assert (=> d!878530 (= (inv!48973 (tag!5734 (rule!7648 (h!41541 (t!237946 tokens!494))))) (= (mod (str.len (value!168944 (tag!5734 (rule!7648 (h!41541 (t!237946 tokens!494)))))) 2) 0))))

(assert (=> b!3205229 d!878530))

(declare-fun d!878532 () Bool)

(declare-fun res!1304926 () Bool)

(declare-fun e!1999286 () Bool)

(assert (=> d!878532 (=> (not res!1304926) (not e!1999286))))

(assert (=> d!878532 (= res!1304926 (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))))))

(assert (=> d!878532 (= (inv!48977 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) e!1999286)))

(declare-fun b!3206681 () Bool)

(assert (=> b!3206681 (= e!1999286 (equivClasses!2051 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))))))

(assert (= (and d!878532 res!1304926) b!3206681))

(declare-fun m!3473227 () Bool)

(assert (=> d!878532 m!3473227))

(declare-fun m!3473229 () Bool)

(assert (=> b!3206681 m!3473229))

(assert (=> b!3205229 d!878532))

(declare-fun d!878534 () Bool)

(declare-fun c!538728 () Bool)

(assert (=> d!878534 (= c!538728 ((_ is Nil!36119) lt!1081769))))

(declare-fun e!1999287 () (InoxSet C!20124))

(assert (=> d!878534 (= (content!4882 lt!1081769) e!1999287)))

(declare-fun b!3206682 () Bool)

(assert (=> b!3206682 (= e!1999287 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206683 () Bool)

(assert (=> b!3206683 (= e!1999287 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081769) true) (content!4882 (t!237944 lt!1081769))))))

(assert (= (and d!878534 c!538728) b!3206682))

(assert (= (and d!878534 (not c!538728)) b!3206683))

(declare-fun m!3473231 () Bool)

(assert (=> b!3206683 m!3473231))

(declare-fun m!3473233 () Bool)

(assert (=> b!3206683 m!3473233))

(assert (=> d!877448 d!878534))

(declare-fun d!878536 () Bool)

(declare-fun c!538729 () Bool)

(assert (=> d!878536 (= c!538729 ((_ is Nil!36119) lt!1081658))))

(declare-fun e!1999288 () (InoxSet C!20124))

(assert (=> d!878536 (= (content!4882 lt!1081658) e!1999288)))

(declare-fun b!3206684 () Bool)

(assert (=> b!3206684 (= e!1999288 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206685 () Bool)

(assert (=> b!3206685 (= e!1999288 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081658) true) (content!4882 (t!237944 lt!1081658))))))

(assert (= (and d!878536 c!538729) b!3206684))

(assert (= (and d!878536 (not c!538729)) b!3206685))

(declare-fun m!3473235 () Bool)

(assert (=> b!3206685 m!3473235))

(assert (=> b!3206685 m!3471279))

(assert (=> d!877448 d!878536))

(assert (=> d!877448 d!878154))

(declare-fun b!3206686 () Bool)

(declare-fun e!1999291 () List!36243)

(declare-fun call!232166 () List!36243)

(assert (=> b!3206686 (= e!1999291 call!232166)))

(declare-fun b!3206687 () Bool)

(assert (=> b!3206687 (= e!1999291 call!232166)))

(declare-fun b!3206688 () Bool)

(declare-fun c!538732 () Bool)

(assert (=> b!3206688 (= c!538732 ((_ is Star!9969) (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))

(declare-fun e!1999290 () List!36243)

(declare-fun e!1999289 () List!36243)

(assert (=> b!3206688 (= e!1999290 e!1999289)))

(declare-fun b!3206689 () Bool)

(assert (=> b!3206689 (= e!1999290 (Cons!36119 (c!538126 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))) Nil!36119))))

(declare-fun b!3206690 () Bool)

(declare-fun e!1999292 () List!36243)

(assert (=> b!3206690 (= e!1999292 Nil!36119)))

(declare-fun b!3206691 () Bool)

(assert (=> b!3206691 (= e!1999292 e!1999290)))

(declare-fun c!538730 () Bool)

(assert (=> b!3206691 (= c!538730 ((_ is ElementMatch!9969) (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))

(declare-fun call!232164 () List!36243)

(declare-fun c!538733 () Bool)

(declare-fun call!232165 () List!36243)

(declare-fun bm!232159 () Bool)

(assert (=> bm!232159 (= call!232166 (++!8660 (ite c!538733 call!232165 call!232164) (ite c!538733 call!232164 call!232165)))))

(declare-fun b!3206692 () Bool)

(assert (=> b!3206692 (= e!1999289 e!1999291)))

(assert (=> b!3206692 (= c!538733 ((_ is Union!9969) (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))

(declare-fun bm!232160 () Bool)

(declare-fun call!232167 () List!36243)

(assert (=> bm!232160 (= call!232167 (usedCharacters!526 (ite c!538732 (reg!10298 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))) (ite c!538733 (regTwo!20451 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))) (regOne!20450 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))))))))))

(declare-fun c!538731 () Bool)

(declare-fun d!878538 () Bool)

(assert (=> d!878538 (= c!538731 (or ((_ is EmptyExpr!9969) (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))) ((_ is EmptyLang!9969) (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))))))))

(assert (=> d!878538 (= (usedCharacters!526 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))) e!1999292)))

(declare-fun bm!232161 () Bool)

(assert (=> bm!232161 (= call!232164 call!232167)))

(declare-fun bm!232162 () Bool)

(assert (=> bm!232162 (= call!232165 (usedCharacters!526 (ite c!538733 (regOne!20451 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))) (regTwo!20450 (ite c!538242 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538243 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))))))))

(declare-fun b!3206693 () Bool)

(assert (=> b!3206693 (= e!1999289 call!232167)))

(assert (= (and d!878538 c!538731) b!3206690))

(assert (= (and d!878538 (not c!538731)) b!3206691))

(assert (= (and b!3206691 c!538730) b!3206689))

(assert (= (and b!3206691 (not c!538730)) b!3206688))

(assert (= (and b!3206688 c!538732) b!3206693))

(assert (= (and b!3206688 (not c!538732)) b!3206692))

(assert (= (and b!3206692 c!538733) b!3206686))

(assert (= (and b!3206692 (not c!538733)) b!3206687))

(assert (= (or b!3206686 b!3206687) bm!232161))

(assert (= (or b!3206686 b!3206687) bm!232162))

(assert (= (or b!3206686 b!3206687) bm!232159))

(assert (= (or b!3206693 bm!232161) bm!232160))

(declare-fun m!3473237 () Bool)

(assert (=> bm!232159 m!3473237))

(declare-fun m!3473239 () Bool)

(assert (=> bm!232160 m!3473239))

(declare-fun m!3473241 () Bool)

(assert (=> bm!232162 m!3473241))

(assert (=> bm!231990 d!878538))

(declare-fun d!878540 () Bool)

(assert (=> d!878540 (= (list!12843 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))) (list!12847 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))))))

(declare-fun bs!541399 () Bool)

(assert (= bs!541399 d!878540))

(declare-fun m!3473243 () Bool)

(assert (=> bs!541399 m!3473243))

(assert (=> b!3205139 d!878540))

(declare-fun b!3206696 () Bool)

(declare-fun res!1304927 () Bool)

(declare-fun e!1999293 () Bool)

(assert (=> b!3206696 (=> (not res!1304927) (not e!1999293))))

(declare-fun lt!1082816 () List!36243)

(assert (=> b!3206696 (= res!1304927 (= (size!27211 lt!1082816) (+ (size!27211 (t!237944 lt!1081658)) (size!27211 lt!1081636))))))

(declare-fun b!3206694 () Bool)

(declare-fun e!1999294 () List!36243)

(assert (=> b!3206694 (= e!1999294 lt!1081636)))

(declare-fun b!3206697 () Bool)

(assert (=> b!3206697 (= e!1999293 (or (not (= lt!1081636 Nil!36119)) (= lt!1082816 (t!237944 lt!1081658))))))

(declare-fun d!878542 () Bool)

(assert (=> d!878542 e!1999293))

(declare-fun res!1304928 () Bool)

(assert (=> d!878542 (=> (not res!1304928) (not e!1999293))))

(assert (=> d!878542 (= res!1304928 (= (content!4882 lt!1082816) ((_ map or) (content!4882 (t!237944 lt!1081658)) (content!4882 lt!1081636))))))

(assert (=> d!878542 (= lt!1082816 e!1999294)))

(declare-fun c!538734 () Bool)

(assert (=> d!878542 (= c!538734 ((_ is Nil!36119) (t!237944 lt!1081658)))))

(assert (=> d!878542 (= (++!8660 (t!237944 lt!1081658) lt!1081636) lt!1082816)))

(declare-fun b!3206695 () Bool)

(assert (=> b!3206695 (= e!1999294 (Cons!36119 (h!41539 (t!237944 lt!1081658)) (++!8660 (t!237944 (t!237944 lt!1081658)) lt!1081636)))))

(assert (= (and d!878542 c!538734) b!3206694))

(assert (= (and d!878542 (not c!538734)) b!3206695))

(assert (= (and d!878542 res!1304928) b!3206696))

(assert (= (and b!3206696 res!1304927) b!3206697))

(declare-fun m!3473245 () Bool)

(assert (=> b!3206696 m!3473245))

(assert (=> b!3206696 m!3470279))

(assert (=> b!3206696 m!3469737))

(declare-fun m!3473247 () Bool)

(assert (=> d!878542 m!3473247))

(assert (=> d!878542 m!3471279))

(assert (=> d!878542 m!3469741))

(declare-fun m!3473249 () Bool)

(assert (=> b!3206695 m!3473249))

(assert (=> b!3204835 d!878542))

(declare-fun d!878544 () Bool)

(declare-fun c!538735 () Bool)

(assert (=> d!878544 (= c!538735 ((_ is Node!10795) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))))))

(declare-fun e!1999295 () Bool)

(assert (=> d!878544 (= (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))) e!1999295)))

(declare-fun b!3206698 () Bool)

(assert (=> b!3206698 (= e!1999295 (inv!48982 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))))))

(declare-fun b!3206699 () Bool)

(declare-fun e!1999296 () Bool)

(assert (=> b!3206699 (= e!1999295 e!1999296)))

(declare-fun res!1304929 () Bool)

(assert (=> b!3206699 (= res!1304929 (not ((_ is Leaf!17011) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))))))))

(assert (=> b!3206699 (=> res!1304929 e!1999296)))

(declare-fun b!3206700 () Bool)

(assert (=> b!3206700 (= e!1999296 (inv!48983 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))))))

(assert (= (and d!878544 c!538735) b!3206698))

(assert (= (and d!878544 (not c!538735)) b!3206699))

(assert (= (and b!3206699 (not res!1304929)) b!3206700))

(declare-fun m!3473251 () Bool)

(assert (=> b!3206698 m!3473251))

(declare-fun m!3473253 () Bool)

(assert (=> b!3206700 m!3473253))

(assert (=> b!3204858 d!878544))

(declare-fun d!878546 () Bool)

(assert (=> d!878546 (= (list!12843 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))) (list!12847 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))))))

(declare-fun bs!541400 () Bool)

(assert (= bs!541400 d!878546))

(declare-fun m!3473255 () Bool)

(assert (=> bs!541400 m!3473255))

(assert (=> b!3205127 d!878546))

(assert (=> bm!231967 d!877866))

(declare-fun d!878548 () Bool)

(declare-fun lt!1082817 () Bool)

(assert (=> d!878548 (= lt!1082817 (isEmpty!20206 (list!12844 (_1!20887 lt!1081854))))))

(assert (=> d!878548 (= lt!1082817 (isEmpty!20207 (c!538128 (_1!20887 lt!1081854))))))

(assert (=> d!878548 (= (isEmpty!20205 (_1!20887 lt!1081854)) lt!1082817)))

(declare-fun bs!541401 () Bool)

(assert (= bs!541401 d!878548))

(assert (=> bs!541401 m!3470103))

(assert (=> bs!541401 m!3470103))

(declare-fun m!3473257 () Bool)

(assert (=> bs!541401 m!3473257))

(declare-fun m!3473259 () Bool)

(assert (=> bs!541401 m!3473259))

(assert (=> b!3205009 d!878548))

(declare-fun d!878550 () Bool)

(assert (=> d!878550 (= (list!12844 lt!1081752) (list!12848 (c!538128 lt!1081752)))))

(declare-fun bs!541402 () Bool)

(assert (= bs!541402 d!878550))

(declare-fun m!3473261 () Bool)

(assert (=> bs!541402 m!3473261))

(assert (=> d!877420 d!878550))

(declare-fun d!878552 () Bool)

(declare-fun e!1999297 () Bool)

(assert (=> d!878552 e!1999297))

(declare-fun res!1304930 () Bool)

(assert (=> d!878552 (=> (not res!1304930) (not e!1999297))))

(declare-fun lt!1082818 () BalanceConc!21206)

(assert (=> d!878552 (= res!1304930 (= (list!12844 lt!1082818) (Cons!36121 (h!41541 tokens!494) Nil!36121)))))

(assert (=> d!878552 (= lt!1082818 (choose!18715 (h!41541 tokens!494)))))

(assert (=> d!878552 (= (singleton!991 (h!41541 tokens!494)) lt!1082818)))

(declare-fun b!3206701 () Bool)

(assert (=> b!3206701 (= e!1999297 (isBalanced!3212 (c!538128 lt!1082818)))))

(assert (= (and d!878552 res!1304930) b!3206701))

(declare-fun m!3473263 () Bool)

(assert (=> d!878552 m!3473263))

(declare-fun m!3473265 () Bool)

(assert (=> d!878552 m!3473265))

(declare-fun m!3473267 () Bool)

(assert (=> b!3206701 m!3473267))

(assert (=> d!877420 d!878552))

(declare-fun d!878554 () Bool)

(declare-fun lt!1082819 () BalanceConc!21204)

(assert (=> d!878554 (= (list!12843 lt!1082819) (originalCharacters!5924 (h!41541 (t!237946 (t!237946 tokens!494)))))))

(assert (=> d!878554 (= lt!1082819 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (value!168945 (h!41541 (t!237946 (t!237946 tokens!494))))))))

(assert (=> d!878554 (= (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494)))) lt!1082819)))

(declare-fun b_lambda!87813 () Bool)

(assert (=> (not b_lambda!87813) (not d!878554)))

(declare-fun t!238218 () Bool)

(declare-fun tb!157419 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494))))))) t!238218) tb!157419))

(declare-fun b!3206702 () Bool)

(declare-fun e!1999298 () Bool)

(declare-fun tp!1012480 () Bool)

(assert (=> b!3206702 (= e!1999298 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (value!168945 (h!41541 (t!237946 (t!237946 tokens!494))))))) tp!1012480))))

(declare-fun result!199756 () Bool)

(assert (=> tb!157419 (= result!199756 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (value!168945 (h!41541 (t!237946 (t!237946 tokens!494)))))) e!1999298))))

(assert (= tb!157419 b!3206702))

(declare-fun m!3473269 () Bool)

(assert (=> b!3206702 m!3473269))

(declare-fun m!3473271 () Bool)

(assert (=> tb!157419 m!3473271))

(assert (=> d!878554 t!238218))

(declare-fun b_and!213499 () Bool)

(assert (= b_and!213485 (and (=> t!238218 result!199756) b_and!213499)))

(declare-fun tb!157421 () Bool)

(declare-fun t!238220 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494))))))) t!238220) tb!157421))

(declare-fun result!199758 () Bool)

(assert (= result!199758 result!199756))

(assert (=> d!878554 t!238220))

(declare-fun b_and!213501 () Bool)

(assert (= b_and!213487 (and (=> t!238220 result!199758) b_and!213501)))

(declare-fun t!238222 () Bool)

(declare-fun tb!157423 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494))))))) t!238222) tb!157423))

(declare-fun result!199760 () Bool)

(assert (= result!199760 result!199756))

(assert (=> d!878554 t!238222))

(declare-fun b_and!213503 () Bool)

(assert (= b_and!213483 (and (=> t!238222 result!199760) b_and!213503)))

(declare-fun t!238224 () Bool)

(declare-fun tb!157425 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494))))))) t!238224) tb!157425))

(declare-fun result!199762 () Bool)

(assert (= result!199762 result!199756))

(assert (=> d!878554 t!238224))

(declare-fun b_and!213505 () Bool)

(assert (= b_and!213481 (and (=> t!238224 result!199762) b_and!213505)))

(declare-fun tb!157427 () Bool)

(declare-fun t!238226 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494))))))) t!238226) tb!157427))

(declare-fun result!199764 () Bool)

(assert (= result!199764 result!199756))

(assert (=> d!878554 t!238226))

(declare-fun b_and!213507 () Bool)

(assert (= b_and!213479 (and (=> t!238226 result!199764) b_and!213507)))

(declare-fun m!3473273 () Bool)

(assert (=> d!878554 m!3473273))

(declare-fun m!3473275 () Bool)

(assert (=> d!878554 m!3473275))

(assert (=> b!3204892 d!878554))

(declare-fun d!878556 () Bool)

(assert (=> d!878556 (= (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12847 (c!538127 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494)))))))))

(declare-fun bs!541403 () Bool)

(assert (= bs!541403 d!878556))

(declare-fun m!3473277 () Bool)

(assert (=> bs!541403 m!3473277))

(assert (=> b!3204892 d!878556))

(declare-fun d!878558 () Bool)

(declare-fun c!538736 () Bool)

(assert (=> d!878558 (= c!538736 ((_ is Cons!36121) (t!237946 (t!237946 (t!237946 tokens!494)))))))

(declare-fun e!1999299 () List!36243)

(assert (=> d!878558 (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241) e!1999299)))

(declare-fun b!3206703 () Bool)

(assert (=> b!3206703 (= e!1999299 (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 (t!237946 tokens!494)))))) (list!12843 (charsOf!3226 separatorToken!241))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 (t!237946 tokens!494)))) separatorToken!241)))))

(declare-fun b!3206704 () Bool)

(assert (=> b!3206704 (= e!1999299 Nil!36119)))

(assert (= (and d!878558 c!538736) b!3206703))

(assert (= (and d!878558 (not c!538736)) b!3206704))

(declare-fun m!3473279 () Bool)

(assert (=> b!3206703 m!3473279))

(declare-fun m!3473281 () Bool)

(assert (=> b!3206703 m!3473281))

(declare-fun m!3473283 () Bool)

(assert (=> b!3206703 m!3473283))

(assert (=> b!3206703 m!3469147))

(assert (=> b!3206703 m!3469163))

(declare-fun m!3473285 () Bool)

(assert (=> b!3206703 m!3473285))

(assert (=> b!3206703 m!3469163))

(assert (=> b!3206703 m!3473279))

(assert (=> b!3206703 m!3469147))

(declare-fun m!3473287 () Bool)

(assert (=> b!3206703 m!3473287))

(assert (=> b!3206703 m!3473285))

(assert (=> b!3206703 m!3473287))

(assert (=> b!3206703 m!3473281))

(assert (=> b!3204892 d!878558))

(declare-fun b!3206707 () Bool)

(declare-fun res!1304931 () Bool)

(declare-fun e!1999300 () Bool)

(assert (=> b!3206707 (=> (not res!1304931) (not e!1999300))))

(declare-fun lt!1082820 () List!36243)

(assert (=> b!3206707 (= res!1304931 (= (size!27211 lt!1082820) (+ (size!27211 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494)))))) (size!27211 (list!12843 (charsOf!3226 separatorToken!241))))))))

(declare-fun b!3206705 () Bool)

(declare-fun e!1999301 () List!36243)

(assert (=> b!3206705 (= e!1999301 (list!12843 (charsOf!3226 separatorToken!241)))))

(declare-fun b!3206708 () Bool)

(assert (=> b!3206708 (= e!1999300 (or (not (= (list!12843 (charsOf!3226 separatorToken!241)) Nil!36119)) (= lt!1082820 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))))))))

(declare-fun d!878560 () Bool)

(assert (=> d!878560 e!1999300))

(declare-fun res!1304932 () Bool)

(assert (=> d!878560 (=> (not res!1304932) (not e!1999300))))

(assert (=> d!878560 (= res!1304932 (= (content!4882 lt!1082820) ((_ map or) (content!4882 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494)))))) (content!4882 (list!12843 (charsOf!3226 separatorToken!241))))))))

(assert (=> d!878560 (= lt!1082820 e!1999301)))

(declare-fun c!538737 () Bool)

(assert (=> d!878560 (= c!538737 ((_ is Nil!36119) (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494)))))))))

(assert (=> d!878560 (= (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241))) lt!1082820)))

(declare-fun b!3206706 () Bool)

(assert (=> b!3206706 (= e!1999301 (Cons!36119 (h!41539 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494)))))) (++!8660 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494)))))) (list!12843 (charsOf!3226 separatorToken!241)))))))

(assert (= (and d!878560 c!538737) b!3206705))

(assert (= (and d!878560 (not c!538737)) b!3206706))

(assert (= (and d!878560 res!1304932) b!3206707))

(assert (= (and b!3206707 res!1304931) b!3206708))

(declare-fun m!3473289 () Bool)

(assert (=> b!3206707 m!3473289))

(assert (=> b!3206707 m!3469863))

(declare-fun m!3473291 () Bool)

(assert (=> b!3206707 m!3473291))

(assert (=> b!3206707 m!3469163))

(declare-fun m!3473293 () Bool)

(assert (=> b!3206707 m!3473293))

(declare-fun m!3473295 () Bool)

(assert (=> d!878560 m!3473295))

(assert (=> d!878560 m!3469863))

(declare-fun m!3473297 () Bool)

(assert (=> d!878560 m!3473297))

(assert (=> d!878560 m!3469163))

(declare-fun m!3473299 () Bool)

(assert (=> d!878560 m!3473299))

(assert (=> b!3206706 m!3469163))

(declare-fun m!3473301 () Bool)

(assert (=> b!3206706 m!3473301))

(assert (=> b!3204892 d!878560))

(assert (=> b!3204892 d!877470))

(assert (=> b!3204892 d!877484))

(declare-fun b!3206711 () Bool)

(declare-fun res!1304933 () Bool)

(declare-fun e!1999302 () Bool)

(assert (=> b!3206711 (=> (not res!1304933) (not e!1999302))))

(declare-fun lt!1082821 () List!36243)

(assert (=> b!3206711 (= res!1304933 (= (size!27211 lt!1082821) (+ (size!27211 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241)))) (size!27211 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241)))))))

(declare-fun b!3206709 () Bool)

(declare-fun e!1999303 () List!36243)

(assert (=> b!3206709 (= e!1999303 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241))))

(declare-fun b!3206712 () Bool)

(assert (=> b!3206712 (= e!1999302 (or (not (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241) Nil!36119)) (= lt!1082821 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241))))))))

(declare-fun d!878562 () Bool)

(assert (=> d!878562 e!1999302))

(declare-fun res!1304934 () Bool)

(assert (=> d!878562 (=> (not res!1304934) (not e!1999302))))

(assert (=> d!878562 (= res!1304934 (= (content!4882 lt!1082821) ((_ map or) (content!4882 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241)))) (content!4882 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241)))))))

(assert (=> d!878562 (= lt!1082821 e!1999303)))

(declare-fun c!538738 () Bool)

(assert (=> d!878562 (= c!538738 ((_ is Nil!36119) (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241)))))))

(assert (=> d!878562 (= (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241)) lt!1082821)))

(declare-fun b!3206710 () Bool)

(assert (=> b!3206710 (= e!1999303 (Cons!36119 (h!41539 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241)))) (++!8660 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241)))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 (t!237946 tokens!494))) separatorToken!241))))))

(assert (= (and d!878562 c!538738) b!3206709))

(assert (= (and d!878562 (not c!538738)) b!3206710))

(assert (= (and d!878562 res!1304934) b!3206711))

(assert (= (and b!3206711 res!1304933) b!3206712))

(declare-fun m!3473303 () Bool)

(assert (=> b!3206711 m!3473303))

(assert (=> b!3206711 m!3469857))

(declare-fun m!3473305 () Bool)

(assert (=> b!3206711 m!3473305))

(assert (=> b!3206711 m!3469859))

(declare-fun m!3473307 () Bool)

(assert (=> b!3206711 m!3473307))

(declare-fun m!3473309 () Bool)

(assert (=> d!878562 m!3473309))

(assert (=> d!878562 m!3469857))

(declare-fun m!3473311 () Bool)

(assert (=> d!878562 m!3473311))

(assert (=> d!878562 m!3469859))

(declare-fun m!3473313 () Bool)

(assert (=> d!878562 m!3473313))

(assert (=> b!3206710 m!3469859))

(declare-fun m!3473315 () Bool)

(assert (=> b!3206710 m!3473315))

(assert (=> b!3204892 d!878562))

(declare-fun d!878564 () Bool)

(assert (=> d!878564 (= (isDefined!5538 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))) (not (isEmpty!20212 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))

(declare-fun bs!541404 () Bool)

(assert (= bs!541404 d!878564))

(assert (=> bs!541404 m!3469243))

(declare-fun m!3473317 () Bool)

(assert (=> bs!541404 m!3473317))

(assert (=> d!877556 d!878564))

(assert (=> d!877556 d!877514))

(declare-fun d!878566 () Bool)

(declare-fun e!1999304 () Bool)

(assert (=> d!878566 e!1999304))

(declare-fun res!1304935 () Bool)

(assert (=> d!878566 (=> (not res!1304935) (not e!1999304))))

(assert (=> d!878566 (= res!1304935 (isDefined!5538 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494))))))))

(assert (=> d!878566 true))

(declare-fun _$52!1548 () Unit!50554)

(assert (=> d!878566 (= (choose!18708 thiss!18206 rules!2135 lt!1081658 (h!41541 tokens!494)) _$52!1548)))

(declare-fun b!3206713 () Bool)

(declare-fun res!1304936 () Bool)

(assert (=> b!3206713 (=> (not res!1304936) (not e!1999304))))

(assert (=> b!3206713 (= res!1304936 (matchR!4603 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))) (list!12843 (charsOf!3226 (h!41541 tokens!494)))))))

(declare-fun b!3206714 () Bool)

(assert (=> b!3206714 (= e!1999304 (= (rule!7648 (h!41541 tokens!494)) (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 (h!41541 tokens!494)))))))))

(assert (= (and d!878566 res!1304935) b!3206713))

(assert (= (and b!3206713 res!1304936) b!3206714))

(assert (=> d!878566 m!3469243))

(assert (=> d!878566 m!3469243))

(assert (=> d!878566 m!3470247))

(assert (=> b!3206713 m!3469203))

(assert (=> b!3206713 m!3469205))

(assert (=> b!3206713 m!3469243))

(assert (=> b!3206713 m!3469203))

(assert (=> b!3206713 m!3469243))

(assert (=> b!3206713 m!3470253))

(assert (=> b!3206713 m!3469205))

(assert (=> b!3206713 m!3470251))

(assert (=> b!3206714 m!3469243))

(assert (=> b!3206714 m!3469243))

(assert (=> b!3206714 m!3470253))

(assert (=> d!877556 d!878566))

(assert (=> d!877556 d!877396))

(declare-fun b!3206715 () Bool)

(declare-fun e!1999305 () Bool)

(declare-fun e!1999307 () Bool)

(assert (=> b!3206715 (= e!1999305 e!1999307)))

(declare-fun c!538739 () Bool)

(assert (=> b!3206715 (= c!538739 ((_ is IntegerValue!16321) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661)))))

(declare-fun b!3206716 () Bool)

(declare-fun res!1304937 () Bool)

(declare-fun e!1999306 () Bool)

(assert (=> b!3206716 (=> res!1304937 e!1999306)))

(assert (=> b!3206716 (= res!1304937 (not ((_ is IntegerValue!16322) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661))))))

(assert (=> b!3206716 (= e!1999307 e!1999306)))

(declare-fun b!3206717 () Bool)

(assert (=> b!3206717 (= e!1999307 (inv!17 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661)))))

(declare-fun d!878568 () Bool)

(declare-fun c!538740 () Bool)

(assert (=> d!878568 (= c!538740 ((_ is IntegerValue!16320) (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661)))))

(assert (=> d!878568 (= (inv!21 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661)) e!1999305)))

(declare-fun b!3206718 () Bool)

(assert (=> b!3206718 (= e!1999306 (inv!15 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661)))))

(declare-fun b!3206719 () Bool)

(assert (=> b!3206719 (= e!1999305 (inv!16 (dynLambda!14563 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) lt!1081661)))))

(assert (= (and d!878568 c!538740) b!3206719))

(assert (= (and d!878568 (not c!538740)) b!3206715))

(assert (= (and b!3206715 c!538739) b!3206717))

(assert (= (and b!3206715 (not c!538739)) b!3206716))

(assert (= (and b!3206716 (not res!1304937)) b!3206718))

(declare-fun m!3473319 () Bool)

(assert (=> b!3206717 m!3473319))

(declare-fun m!3473321 () Bool)

(assert (=> b!3206718 m!3473321))

(declare-fun m!3473323 () Bool)

(assert (=> b!3206719 m!3473323))

(assert (=> tb!157221 d!878568))

(declare-fun d!878570 () Bool)

(assert (=> d!878570 (= (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))) (isBalanced!3215 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))))))

(declare-fun bs!541405 () Bool)

(assert (= bs!541405 d!878570))

(declare-fun m!3473325 () Bool)

(assert (=> bs!541405 m!3473325))

(assert (=> tb!157197 d!878570))

(declare-fun d!878572 () Bool)

(declare-fun c!538741 () Bool)

(assert (=> d!878572 (= c!538741 ((_ is Node!10795) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))))))

(declare-fun e!1999308 () Bool)

(assert (=> d!878572 (= (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))) e!1999308)))

(declare-fun b!3206720 () Bool)

(assert (=> b!3206720 (= e!1999308 (inv!48982 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))))))

(declare-fun b!3206721 () Bool)

(declare-fun e!1999309 () Bool)

(assert (=> b!3206721 (= e!1999308 e!1999309)))

(declare-fun res!1304938 () Bool)

(assert (=> b!3206721 (= res!1304938 (not ((_ is Leaf!17011) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))))))))

(assert (=> b!3206721 (=> res!1304938 e!1999309)))

(declare-fun b!3206722 () Bool)

(assert (=> b!3206722 (= e!1999309 (inv!48983 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))))))

(assert (= (and d!878572 c!538741) b!3206720))

(assert (= (and d!878572 (not c!538741)) b!3206721))

(assert (= (and b!3206721 (not res!1304938)) b!3206722))

(declare-fun m!3473327 () Bool)

(assert (=> b!3206720 m!3473327))

(declare-fun m!3473329 () Bool)

(assert (=> b!3206722 m!3473329))

(assert (=> b!3204885 d!878572))

(assert (=> d!877402 d!877866))

(assert (=> d!877402 d!877966))

(assert (=> b!3204840 d!878330))

(assert (=> b!3204900 d!878194))

(declare-fun d!878574 () Bool)

(declare-fun lt!1082822 () Bool)

(assert (=> d!878574 (= lt!1082822 (isEmpty!20206 (list!12844 (_1!20887 lt!1081924))))))

(assert (=> d!878574 (= lt!1082822 (isEmpty!20207 (c!538128 (_1!20887 lt!1081924))))))

(assert (=> d!878574 (= (isEmpty!20205 (_1!20887 lt!1081924)) lt!1082822)))

(declare-fun bs!541406 () Bool)

(assert (= bs!541406 d!878574))

(assert (=> bs!541406 m!3470297))

(assert (=> bs!541406 m!3470297))

(declare-fun m!3473331 () Bool)

(assert (=> bs!541406 m!3473331))

(declare-fun m!3473333 () Bool)

(assert (=> bs!541406 m!3473333))

(assert (=> b!3205106 d!878574))

(declare-fun b!3206725 () Bool)

(declare-fun res!1304939 () Bool)

(declare-fun e!1999310 () Bool)

(assert (=> b!3206725 (=> (not res!1304939) (not e!1999310))))

(declare-fun lt!1082823 () List!36243)

(assert (=> b!3206725 (= res!1304939 (= (size!27211 lt!1082823) (+ (size!27211 (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (size!27211 (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))))))

(declare-fun b!3206723 () Bool)

(declare-fun e!1999311 () List!36243)

(assert (=> b!3206723 (= e!1999311 (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121))))))

(declare-fun b!3206726 () Bool)

(assert (=> b!3206726 (= e!1999310 (or (not (= (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121))) Nil!36119)) (= lt!1082823 (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))))))

(declare-fun d!878576 () Bool)

(assert (=> d!878576 e!1999310))

(declare-fun res!1304940 () Bool)

(assert (=> d!878576 (=> (not res!1304940) (not e!1999310))))

(assert (=> d!878576 (= res!1304940 (= (content!4882 lt!1082823) ((_ map or) (content!4882 (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (content!4882 (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))))))

(assert (=> d!878576 (= lt!1082823 e!1999311)))

(declare-fun c!538742 () Bool)

(assert (=> d!878576 (= c!538742 ((_ is Nil!36119) (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))))))

(assert (=> d!878576 (= (++!8660 (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))) (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121)))) lt!1082823)))

(declare-fun b!3206724 () Bool)

(assert (=> b!3206724 (= e!1999311 (Cons!36119 (h!41539 (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (++!8660 (t!237944 (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121))))))))

(assert (= (and d!878576 c!538742) b!3206723))

(assert (= (and d!878576 (not c!538742)) b!3206724))

(assert (= (and d!878576 res!1304940) b!3206725))

(assert (= (and b!3206725 res!1304939) b!3206726))

(declare-fun m!3473335 () Bool)

(assert (=> b!3206725 m!3473335))

(assert (=> b!3206725 m!3469655))

(declare-fun m!3473337 () Bool)

(assert (=> b!3206725 m!3473337))

(assert (=> b!3206725 m!3469657))

(declare-fun m!3473339 () Bool)

(assert (=> b!3206725 m!3473339))

(declare-fun m!3473341 () Bool)

(assert (=> d!878576 m!3473341))

(assert (=> d!878576 m!3469655))

(declare-fun m!3473343 () Bool)

(assert (=> d!878576 m!3473343))

(assert (=> d!878576 m!3469657))

(declare-fun m!3473345 () Bool)

(assert (=> d!878576 m!3473345))

(assert (=> b!3206724 m!3469657))

(declare-fun m!3473347 () Bool)

(assert (=> b!3206724 m!3473347))

(assert (=> b!3204798 d!878576))

(declare-fun d!878578 () Bool)

(assert (=> d!878578 (= (list!12843 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))) (list!12847 (c!538127 (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))))))

(declare-fun bs!541407 () Bool)

(assert (= bs!541407 d!878578))

(declare-fun m!3473349 () Bool)

(assert (=> bs!541407 m!3473349))

(assert (=> b!3204798 d!878578))

(declare-fun d!878580 () Bool)

(declare-fun lt!1082824 () BalanceConc!21204)

(assert (=> d!878580 (= (list!12843 lt!1082824) (originalCharacters!5924 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))))

(assert (=> d!878580 (= lt!1082824 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (value!168945 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))))

(assert (=> d!878580 (= (charsOf!3226 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))) lt!1082824)))

(declare-fun b_lambda!87815 () Bool)

(assert (=> (not b_lambda!87815) (not d!878580)))

(declare-fun t!238228 () Bool)

(declare-fun tb!157429 () Bool)

(assert (=> (and b!3204488 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) t!238228) tb!157429))

(declare-fun b!3206727 () Bool)

(declare-fun e!1999312 () Bool)

(declare-fun tp!1012481 () Bool)

(assert (=> b!3206727 (= e!1999312 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (value!168945 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) tp!1012481))))

(declare-fun result!199766 () Bool)

(assert (=> tb!157429 (= result!199766 (and (inv!48981 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (value!168945 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) e!1999312))))

(assert (= tb!157429 b!3206727))

(declare-fun m!3473351 () Bool)

(assert (=> b!3206727 m!3473351))

(declare-fun m!3473353 () Bool)

(assert (=> tb!157429 m!3473353))

(assert (=> d!878580 t!238228))

(declare-fun b_and!213509 () Bool)

(assert (= b_and!213501 (and (=> t!238228 result!199766) b_and!213509)))

(declare-fun t!238230 () Bool)

(declare-fun tb!157431 () Bool)

(assert (=> (and b!3204473 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) t!238230) tb!157431))

(declare-fun result!199768 () Bool)

(assert (= result!199768 result!199766))

(assert (=> d!878580 t!238230))

(declare-fun b_and!213511 () Bool)

(assert (= b_and!213499 (and (=> t!238230 result!199768) b_and!213511)))

(declare-fun t!238232 () Bool)

(declare-fun tb!157433 () Bool)

(assert (=> (and b!3205230 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) t!238232) tb!157433))

(declare-fun result!199770 () Bool)

(assert (= result!199770 result!199766))

(assert (=> d!878580 t!238232))

(declare-fun b_and!213513 () Bool)

(assert (= b_and!213505 (and (=> t!238232 result!199770) b_and!213513)))

(declare-fun t!238234 () Bool)

(declare-fun tb!157435 () Bool)

(assert (=> (and b!3205256 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) t!238234) tb!157435))

(declare-fun result!199772 () Bool)

(assert (= result!199772 result!199766))

(assert (=> d!878580 t!238234))

(declare-fun b_and!213515 () Bool)

(assert (= b_and!213503 (and (=> t!238234 result!199772) b_and!213515)))

(declare-fun t!238236 () Bool)

(declare-fun tb!157437 () Bool)

(assert (=> (and b!3204481 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) t!238236) tb!157437))

(declare-fun result!199774 () Bool)

(assert (= result!199774 result!199766))

(assert (=> d!878580 t!238236))

(declare-fun b_and!213517 () Bool)

(assert (= b_and!213507 (and (=> t!238236 result!199774) b_and!213517)))

(declare-fun m!3473355 () Bool)

(assert (=> d!878580 m!3473355))

(declare-fun m!3473357 () Bool)

(assert (=> d!878580 m!3473357))

(assert (=> b!3204798 d!878580))

(declare-fun d!878582 () Bool)

(declare-fun c!538743 () Bool)

(assert (=> d!878582 (= c!538743 ((_ is Cons!36121) (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121))))))

(declare-fun e!1999313 () List!36243)

(assert (=> d!878582 (= (printList!1349 thiss!18206 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121))) e!1999313)))

(declare-fun b!3206728 () Bool)

(assert (=> b!3206728 (= e!1999313 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121))))) (printList!1349 thiss!18206 (t!237946 (t!237946 (Cons!36121 (h!41541 tokens!494) Nil!36121))))))))

(declare-fun b!3206729 () Bool)

(assert (=> b!3206729 (= e!1999313 Nil!36119)))

(assert (= (and d!878582 c!538743) b!3206728))

(assert (= (and d!878582 (not c!538743)) b!3206729))

(declare-fun m!3473359 () Bool)

(assert (=> b!3206728 m!3473359))

(assert (=> b!3206728 m!3473359))

(declare-fun m!3473361 () Bool)

(assert (=> b!3206728 m!3473361))

(declare-fun m!3473363 () Bool)

(assert (=> b!3206728 m!3473363))

(assert (=> b!3206728 m!3473361))

(assert (=> b!3206728 m!3473363))

(declare-fun m!3473365 () Bool)

(assert (=> b!3206728 m!3473365))

(assert (=> b!3204798 d!878582))

(assert (=> b!3204519 d!877572))

(declare-fun bs!541408 () Bool)

(declare-fun d!878584 () Bool)

(assert (= bs!541408 (and d!878584 d!878124)))

(declare-fun lambda!117322 () Int)

(assert (=> bs!541408 (= (and (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (= lambda!117322 lambda!117314))))

(declare-fun bs!541409 () Bool)

(assert (= bs!541409 (and d!878584 d!878294)))

(assert (=> bs!541409 (= (and (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))))) (= lambda!117322 lambda!117320))))

(assert (=> d!878584 true))

(assert (=> d!878584 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14567 order!18393 lambda!117322))))

(assert (=> d!878584 true))

(assert (=> d!878584 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14567 order!18393 lambda!117322))))

(assert (=> d!878584 (= (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (h!41540 rules!2135)))) (Forall!1265 lambda!117322))))

(declare-fun bs!541410 () Bool)

(assert (= bs!541410 d!878584))

(declare-fun m!3473367 () Bool)

(assert (=> bs!541410 m!3473367))

(assert (=> d!877412 d!878584))

(declare-fun d!878586 () Bool)

(declare-fun lt!1082825 () Int)

(assert (=> d!878586 (>= lt!1082825 0)))

(declare-fun e!1999314 () Int)

(assert (=> d!878586 (= lt!1082825 e!1999314)))

(declare-fun c!538744 () Bool)

(assert (=> d!878586 (= c!538744 ((_ is Nil!36119) lt!1081797))))

(assert (=> d!878586 (= (size!27211 lt!1081797) lt!1082825)))

(declare-fun b!3206730 () Bool)

(assert (=> b!3206730 (= e!1999314 0)))

(declare-fun b!3206731 () Bool)

(assert (=> b!3206731 (= e!1999314 (+ 1 (size!27211 (t!237944 lt!1081797))))))

(assert (= (and d!878586 c!538744) b!3206730))

(assert (= (and d!878586 (not c!538744)) b!3206731))

(declare-fun m!3473369 () Bool)

(assert (=> b!3206731 m!3473369))

(assert (=> b!3204890 d!878586))

(assert (=> b!3204890 d!877748))

(assert (=> b!3204890 d!878442))

(declare-fun d!878588 () Bool)

(declare-fun lt!1082826 () Int)

(assert (=> d!878588 (>= lt!1082826 0)))

(declare-fun e!1999315 () Int)

(assert (=> d!878588 (= lt!1082826 e!1999315)))

(declare-fun c!538745 () Bool)

(assert (=> d!878588 (= c!538745 ((_ is Nil!36119) lt!1081792))))

(assert (=> d!878588 (= (size!27211 lt!1081792) lt!1082826)))

(declare-fun b!3206732 () Bool)

(assert (=> b!3206732 (= e!1999315 0)))

(declare-fun b!3206733 () Bool)

(assert (=> b!3206733 (= e!1999315 (+ 1 (size!27211 (t!237944 lt!1081792))))))

(assert (= (and d!878588 c!538745) b!3206732))

(assert (= (and d!878588 (not c!538745)) b!3206733))

(declare-fun m!3473371 () Bool)

(assert (=> b!3206733 m!3473371))

(assert (=> b!3204873 d!878588))

(declare-fun d!878590 () Bool)

(declare-fun lt!1082827 () Int)

(assert (=> d!878590 (>= lt!1082827 0)))

(declare-fun e!1999316 () Int)

(assert (=> d!878590 (= lt!1082827 e!1999316)))

(declare-fun c!538746 () Bool)

(assert (=> d!878590 (= c!538746 ((_ is Nil!36119) (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)))))

(assert (=> d!878590 (= (size!27211 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) lt!1082827)))

(declare-fun b!3206734 () Bool)

(assert (=> b!3206734 (= e!1999316 0)))

(declare-fun b!3206735 () Bool)

(assert (=> b!3206735 (= e!1999316 (+ 1 (size!27211 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)))))))

(assert (= (and d!878590 c!538746) b!3206734))

(assert (= (and d!878590 (not c!538746)) b!3206735))

(declare-fun m!3473373 () Bool)

(assert (=> b!3206735 m!3473373))

(assert (=> b!3204873 d!878590))

(declare-fun d!878592 () Bool)

(declare-fun lt!1082828 () Int)

(assert (=> d!878592 (>= lt!1082828 0)))

(declare-fun e!1999317 () Int)

(assert (=> d!878592 (= lt!1082828 e!1999317)))

(declare-fun c!538747 () Bool)

(assert (=> d!878592 (= c!538747 ((_ is Nil!36119) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))

(assert (=> d!878592 (= (size!27211 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)) lt!1082828)))

(declare-fun b!3206736 () Bool)

(assert (=> b!3206736 (= e!1999317 0)))

(declare-fun b!3206737 () Bool)

(assert (=> b!3206737 (= e!1999317 (+ 1 (size!27211 (t!237944 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(assert (= (and d!878592 c!538747) b!3206736))

(assert (= (and d!878592 (not c!538747)) b!3206737))

(declare-fun m!3473375 () Bool)

(assert (=> b!3206737 m!3473375))

(assert (=> b!3204873 d!878592))

(assert (=> b!3204869 d!877460))

(assert (=> b!3204869 d!877458))

(declare-fun b!3206740 () Bool)

(declare-fun res!1304941 () Bool)

(declare-fun e!1999318 () Bool)

(assert (=> b!3206740 (=> (not res!1304941) (not e!1999318))))

(declare-fun lt!1082829 () List!36243)

(assert (=> b!3206740 (= res!1304941 (= (size!27211 lt!1082829) (+ (size!27211 (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241)))) (size!27211 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241)))))))

(declare-fun b!3206738 () Bool)

(declare-fun e!1999319 () List!36243)

(assert (=> b!3206738 (= e!1999319 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241))))

(declare-fun b!3206741 () Bool)

(assert (=> b!3206741 (= e!1999318 (or (not (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241) Nil!36119)) (= lt!1082829 (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241))))))))

(declare-fun d!878594 () Bool)

(assert (=> d!878594 e!1999318))

(declare-fun res!1304942 () Bool)

(assert (=> d!878594 (=> (not res!1304942) (not e!1999318))))

(assert (=> d!878594 (= res!1304942 (= (content!4882 lt!1082829) ((_ map or) (content!4882 (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241)))) (content!4882 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241)))))))

(assert (=> d!878594 (= lt!1082829 e!1999319)))

(declare-fun c!538748 () Bool)

(assert (=> d!878594 (= c!538748 ((_ is Nil!36119) (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241)))))))

(assert (=> d!878594 (= (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241)) lt!1082829)))

(declare-fun b!3206739 () Bool)

(assert (=> b!3206739 (= e!1999319 (Cons!36119 (h!41539 (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241)))) (++!8660 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241)))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 tokens!494) separatorToken!241))))))

(assert (= (and d!878594 c!538748) b!3206738))

(assert (= (and d!878594 (not c!538748)) b!3206739))

(assert (= (and d!878594 res!1304942) b!3206740))

(assert (= (and b!3206740 res!1304941) b!3206741))

(declare-fun m!3473377 () Bool)

(assert (=> b!3206740 m!3473377))

(assert (=> b!3206740 m!3469789))

(declare-fun m!3473379 () Bool)

(assert (=> b!3206740 m!3473379))

(assert (=> b!3206740 m!3469151))

(declare-fun m!3473381 () Bool)

(assert (=> b!3206740 m!3473381))

(declare-fun m!3473383 () Bool)

(assert (=> d!878594 m!3473383))

(assert (=> d!878594 m!3469789))

(declare-fun m!3473385 () Bool)

(assert (=> d!878594 m!3473385))

(assert (=> d!878594 m!3469151))

(declare-fun m!3473387 () Bool)

(assert (=> d!878594 m!3473387))

(assert (=> b!3206739 m!3469151))

(declare-fun m!3473389 () Bool)

(assert (=> b!3206739 m!3473389))

(assert (=> b!3204869 d!878594))

(assert (=> b!3204869 d!877470))

(assert (=> b!3204869 d!877484))

(declare-fun b!3206744 () Bool)

(declare-fun res!1304943 () Bool)

(declare-fun e!1999320 () Bool)

(assert (=> b!3206744 (=> (not res!1304943) (not e!1999320))))

(declare-fun lt!1082830 () List!36243)

(assert (=> b!3206744 (= res!1304943 (= (size!27211 lt!1082830) (+ (size!27211 (list!12843 (charsOf!3226 (h!41541 tokens!494)))) (size!27211 (list!12843 (charsOf!3226 separatorToken!241))))))))

(declare-fun b!3206742 () Bool)

(declare-fun e!1999321 () List!36243)

(assert (=> b!3206742 (= e!1999321 (list!12843 (charsOf!3226 separatorToken!241)))))

(declare-fun b!3206745 () Bool)

(assert (=> b!3206745 (= e!1999320 (or (not (= (list!12843 (charsOf!3226 separatorToken!241)) Nil!36119)) (= lt!1082830 (list!12843 (charsOf!3226 (h!41541 tokens!494))))))))

(declare-fun d!878596 () Bool)

(assert (=> d!878596 e!1999320))

(declare-fun res!1304944 () Bool)

(assert (=> d!878596 (=> (not res!1304944) (not e!1999320))))

(assert (=> d!878596 (= res!1304944 (= (content!4882 lt!1082830) ((_ map or) (content!4882 (list!12843 (charsOf!3226 (h!41541 tokens!494)))) (content!4882 (list!12843 (charsOf!3226 separatorToken!241))))))))

(assert (=> d!878596 (= lt!1082830 e!1999321)))

(declare-fun c!538749 () Bool)

(assert (=> d!878596 (= c!538749 ((_ is Nil!36119) (list!12843 (charsOf!3226 (h!41541 tokens!494)))))))

(assert (=> d!878596 (= (++!8660 (list!12843 (charsOf!3226 (h!41541 tokens!494))) (list!12843 (charsOf!3226 separatorToken!241))) lt!1082830)))

(declare-fun b!3206743 () Bool)

(assert (=> b!3206743 (= e!1999321 (Cons!36119 (h!41539 (list!12843 (charsOf!3226 (h!41541 tokens!494)))) (++!8660 (t!237944 (list!12843 (charsOf!3226 (h!41541 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241)))))))

(assert (= (and d!878596 c!538749) b!3206742))

(assert (= (and d!878596 (not c!538749)) b!3206743))

(assert (= (and d!878596 res!1304944) b!3206744))

(assert (= (and b!3206744 res!1304943) b!3206745))

(declare-fun m!3473391 () Bool)

(assert (=> b!3206744 m!3473391))

(assert (=> b!3206744 m!3469205))

(declare-fun m!3473393 () Bool)

(assert (=> b!3206744 m!3473393))

(assert (=> b!3206744 m!3469163))

(assert (=> b!3206744 m!3473293))

(declare-fun m!3473395 () Bool)

(assert (=> d!878596 m!3473395))

(assert (=> d!878596 m!3469205))

(declare-fun m!3473397 () Bool)

(assert (=> d!878596 m!3473397))

(assert (=> d!878596 m!3469163))

(assert (=> d!878596 m!3473299))

(assert (=> b!3206743 m!3469163))

(declare-fun m!3473399 () Bool)

(assert (=> b!3206743 m!3473399))

(assert (=> b!3204869 d!878596))

(assert (=> b!3204869 d!877482))

(assert (=> b!3204980 d!877776))

(declare-fun b!3206746 () Bool)

(declare-fun e!1999322 () Bool)

(declare-fun e!1999325 () Bool)

(assert (=> b!3206746 (= e!1999322 e!1999325)))

(declare-fun c!538751 () Bool)

(assert (=> b!3206746 (= c!538751 ((_ is EmptyLang!9969) (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3206747 () Bool)

(declare-fun e!1999323 () Bool)

(declare-fun e!1999327 () Bool)

(assert (=> b!3206747 (= e!1999323 e!1999327)))

(declare-fun res!1304948 () Bool)

(assert (=> b!3206747 (=> (not res!1304948) (not e!1999327))))

(declare-fun lt!1082831 () Bool)

(assert (=> b!3206747 (= res!1304948 (not lt!1082831))))

(declare-fun b!3206748 () Bool)

(declare-fun call!232168 () Bool)

(assert (=> b!3206748 (= e!1999322 (= lt!1082831 call!232168))))

(declare-fun b!3206749 () Bool)

(declare-fun e!1999324 () Bool)

(assert (=> b!3206749 (= e!1999324 (= (head!7027 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))) (c!538126 (regex!5210 (rule!7648 (h!41541 tokens!494))))))))

(declare-fun b!3206750 () Bool)

(declare-fun e!1999328 () Bool)

(assert (=> b!3206750 (= e!1999328 (nullable!3395 (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(declare-fun b!3206751 () Bool)

(declare-fun res!1304949 () Bool)

(assert (=> b!3206751 (=> (not res!1304949) (not e!1999324))))

(assert (=> b!3206751 (= res!1304949 (isEmpty!20208 (tail!5206 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904)))))))))

(declare-fun b!3206752 () Bool)

(declare-fun e!1999326 () Bool)

(assert (=> b!3206752 (= e!1999327 e!1999326)))

(declare-fun res!1304951 () Bool)

(assert (=> b!3206752 (=> res!1304951 e!1999326)))

(assert (=> b!3206752 (= res!1304951 call!232168)))

(declare-fun b!3206753 () Bool)

(assert (=> b!3206753 (= e!1999326 (not (= (head!7027 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))) (c!538126 (regex!5210 (rule!7648 (h!41541 tokens!494)))))))))

(declare-fun b!3206754 () Bool)

(declare-fun res!1304952 () Bool)

(assert (=> b!3206754 (=> res!1304952 e!1999323)))

(assert (=> b!3206754 (= res!1304952 e!1999324)))

(declare-fun res!1304945 () Bool)

(assert (=> b!3206754 (=> (not res!1304945) (not e!1999324))))

(assert (=> b!3206754 (= res!1304945 lt!1082831)))

(declare-fun b!3206755 () Bool)

(declare-fun res!1304946 () Bool)

(assert (=> b!3206755 (=> res!1304946 e!1999326)))

(assert (=> b!3206755 (= res!1304946 (not (isEmpty!20208 (tail!5206 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))))))))

(declare-fun d!878598 () Bool)

(assert (=> d!878598 e!1999322))

(declare-fun c!538750 () Bool)

(assert (=> d!878598 (= c!538750 ((_ is EmptyExpr!9969) (regex!5210 (rule!7648 (h!41541 tokens!494)))))))

(assert (=> d!878598 (= lt!1082831 e!1999328)))

(declare-fun c!538752 () Bool)

(assert (=> d!878598 (= c!538752 (isEmpty!20208 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))))))

(assert (=> d!878598 (validRegex!4549 (regex!5210 (rule!7648 (h!41541 tokens!494))))))

(assert (=> d!878598 (= (matchR!4603 (regex!5210 (rule!7648 (h!41541 tokens!494))) (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))) lt!1082831)))

(declare-fun bm!232163 () Bool)

(assert (=> bm!232163 (= call!232168 (isEmpty!20208 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904))))))))

(declare-fun b!3206756 () Bool)

(declare-fun res!1304950 () Bool)

(assert (=> b!3206756 (=> (not res!1304950) (not e!1999324))))

(assert (=> b!3206756 (= res!1304950 (not call!232168))))

(declare-fun b!3206757 () Bool)

(declare-fun res!1304947 () Bool)

(assert (=> b!3206757 (=> res!1304947 e!1999323)))

(assert (=> b!3206757 (= res!1304947 (not ((_ is ElementMatch!9969) (regex!5210 (rule!7648 (h!41541 tokens!494))))))))

(assert (=> b!3206757 (= e!1999325 e!1999323)))

(declare-fun b!3206758 () Bool)

(assert (=> b!3206758 (= e!1999328 (matchR!4603 (derivativeStep!2948 (regex!5210 (rule!7648 (h!41541 tokens!494))) (head!7027 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904)))))) (tail!5206 (list!12843 (charsOf!3226 (_1!20888 (get!11496 lt!1081904)))))))))

(declare-fun b!3206759 () Bool)

(assert (=> b!3206759 (= e!1999325 (not lt!1082831))))

(assert (= (and d!878598 c!538752) b!3206750))

(assert (= (and d!878598 (not c!538752)) b!3206758))

(assert (= (and d!878598 c!538750) b!3206748))

(assert (= (and d!878598 (not c!538750)) b!3206746))

(assert (= (and b!3206746 c!538751) b!3206759))

(assert (= (and b!3206746 (not c!538751)) b!3206757))

(assert (= (and b!3206757 (not res!1304947)) b!3206754))

(assert (= (and b!3206754 res!1304945) b!3206756))

(assert (= (and b!3206756 res!1304950) b!3206751))

(assert (= (and b!3206751 res!1304949) b!3206749))

(assert (= (and b!3206754 (not res!1304952)) b!3206747))

(assert (= (and b!3206747 res!1304948) b!3206752))

(assert (= (and b!3206752 (not res!1304951)) b!3206755))

(assert (= (and b!3206755 (not res!1304946)) b!3206753))

(assert (= (or b!3206748 b!3206752 b!3206756) bm!232163))

(assert (=> b!3206751 m!3470229))

(declare-fun m!3473401 () Bool)

(assert (=> b!3206751 m!3473401))

(assert (=> b!3206751 m!3473401))

(declare-fun m!3473403 () Bool)

(assert (=> b!3206751 m!3473403))

(assert (=> d!878598 m!3470229))

(declare-fun m!3473405 () Bool)

(assert (=> d!878598 m!3473405))

(assert (=> d!878598 m!3471873))

(assert (=> b!3206750 m!3471905))

(assert (=> b!3206753 m!3470229))

(declare-fun m!3473407 () Bool)

(assert (=> b!3206753 m!3473407))

(assert (=> b!3206749 m!3470229))

(assert (=> b!3206749 m!3473407))

(assert (=> bm!232163 m!3470229))

(assert (=> bm!232163 m!3473405))

(assert (=> b!3206755 m!3470229))

(assert (=> b!3206755 m!3473401))

(assert (=> b!3206755 m!3473401))

(assert (=> b!3206755 m!3473403))

(assert (=> b!3206758 m!3470229))

(assert (=> b!3206758 m!3473407))

(assert (=> b!3206758 m!3473407))

(declare-fun m!3473409 () Bool)

(assert (=> b!3206758 m!3473409))

(assert (=> b!3206758 m!3470229))

(assert (=> b!3206758 m!3473401))

(assert (=> b!3206758 m!3473409))

(assert (=> b!3206758 m!3473401))

(declare-fun m!3473411 () Bool)

(assert (=> b!3206758 m!3473411))

(assert (=> b!3205075 d!878598))

(assert (=> b!3205075 d!878372))

(assert (=> b!3205075 d!878374))

(assert (=> b!3205075 d!877732))

(declare-fun d!878600 () Bool)

(assert (=> d!878600 (= (list!12844 (singletonSeq!2306 separatorToken!241)) (list!12848 (c!538128 (singletonSeq!2306 separatorToken!241))))))

(declare-fun bs!541411 () Bool)

(assert (= bs!541411 d!878600))

(declare-fun m!3473413 () Bool)

(assert (=> bs!541411 m!3473413))

(assert (=> d!877324 d!878600))

(declare-fun d!878602 () Bool)

(assert (=> d!878602 (= (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241))))) (list!12848 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 separatorToken!241)))))))))

(declare-fun bs!541412 () Bool)

(assert (= bs!541412 d!878602))

(declare-fun m!3473415 () Bool)

(assert (=> bs!541412 m!3473415))

(assert (=> d!877324 d!878602))

(assert (=> d!877324 d!877518))

(assert (=> d!877324 d!877958))

(assert (=> d!877324 d!877956))

(assert (=> d!877324 d!877608))

(declare-fun d!878604 () Bool)

(declare-fun lt!1082832 () Int)

(assert (=> d!878604 (= lt!1082832 (size!27216 (list!12844 (_1!20887 lt!1081696))))))

(assert (=> d!878604 (= lt!1082832 (size!27217 (c!538128 (_1!20887 lt!1081696))))))

(assert (=> d!878604 (= (size!27210 (_1!20887 lt!1081696)) lt!1082832)))

(declare-fun bs!541413 () Bool)

(assert (= bs!541413 d!878604))

(declare-fun m!3473417 () Bool)

(assert (=> bs!541413 m!3473417))

(assert (=> bs!541413 m!3473417))

(declare-fun m!3473419 () Bool)

(assert (=> bs!541413 m!3473419))

(declare-fun m!3473421 () Bool)

(assert (=> bs!541413 m!3473421))

(assert (=> d!877324 d!878604))

(assert (=> b!3204904 d!878194))

(declare-fun d!878606 () Bool)

(declare-fun c!538753 () Bool)

(assert (=> d!878606 (= c!538753 ((_ is Nil!36119) lt!1081768))))

(declare-fun e!1999329 () (InoxSet C!20124))

(assert (=> d!878606 (= (content!4882 lt!1081768) e!1999329)))

(declare-fun b!3206760 () Bool)

(assert (=> b!3206760 (= e!1999329 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206761 () Bool)

(assert (=> b!3206761 (= e!1999329 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081768) true) (content!4882 (t!237944 lt!1081768))))))

(assert (= (and d!878606 c!538753) b!3206760))

(assert (= (and d!878606 (not c!538753)) b!3206761))

(declare-fun m!3473423 () Bool)

(assert (=> b!3206761 m!3473423))

(declare-fun m!3473425 () Bool)

(assert (=> b!3206761 m!3473425))

(assert (=> d!877446 d!878606))

(declare-fun d!878608 () Bool)

(declare-fun c!538754 () Bool)

(assert (=> d!878608 (= c!538754 ((_ is Nil!36119) (++!8660 lt!1081658 lt!1081636)))))

(declare-fun e!1999330 () (InoxSet C!20124))

(assert (=> d!878608 (= (content!4882 (++!8660 lt!1081658 lt!1081636)) e!1999330)))

(declare-fun b!3206762 () Bool)

(assert (=> b!3206762 (= e!1999330 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206763 () Bool)

(assert (=> b!3206763 (= e!1999330 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 (++!8660 lt!1081658 lt!1081636)) true) (content!4882 (t!237944 (++!8660 lt!1081658 lt!1081636)))))))

(assert (= (and d!878608 c!538754) b!3206762))

(assert (= (and d!878608 (not c!538754)) b!3206763))

(declare-fun m!3473427 () Bool)

(assert (=> b!3206763 m!3473427))

(declare-fun m!3473429 () Bool)

(assert (=> b!3206763 m!3473429))

(assert (=> d!877446 d!878608))

(assert (=> d!877446 d!878240))

(declare-fun d!878610 () Bool)

(declare-fun lt!1082833 () Int)

(assert (=> d!878610 (= lt!1082833 (size!27211 (list!12843 (_2!20887 lt!1081924))))))

(assert (=> d!878610 (= lt!1082833 (size!27218 (c!538127 (_2!20887 lt!1081924))))))

(assert (=> d!878610 (= (size!27212 (_2!20887 lt!1081924)) lt!1082833)))

(declare-fun bs!541414 () Bool)

(assert (= bs!541414 d!878610))

(assert (=> bs!541414 m!3470281))

(assert (=> bs!541414 m!3470281))

(declare-fun m!3473431 () Bool)

(assert (=> bs!541414 m!3473431))

(declare-fun m!3473433 () Bool)

(assert (=> bs!541414 m!3473433))

(assert (=> b!3205110 d!878610))

(declare-fun d!878612 () Bool)

(declare-fun lt!1082834 () Int)

(assert (=> d!878612 (= lt!1082834 (size!27211 (list!12843 lt!1081647)))))

(assert (=> d!878612 (= lt!1082834 (size!27218 (c!538127 lt!1081647)))))

(assert (=> d!878612 (= (size!27212 lt!1081647) lt!1082834)))

(declare-fun bs!541415 () Bool)

(assert (= bs!541415 d!878612))

(assert (=> bs!541415 m!3470283))

(assert (=> bs!541415 m!3470283))

(assert (=> bs!541415 m!3472835))

(declare-fun m!3473435 () Bool)

(assert (=> bs!541415 m!3473435))

(assert (=> b!3205110 d!878612))

(declare-fun d!878614 () Bool)

(declare-fun lt!1082835 () Token!9786)

(assert (=> d!878614 (= lt!1082835 (apply!8165 (list!12844 (_1!20887 lt!1081696)) 0))))

(assert (=> d!878614 (= lt!1082835 (apply!8166 (c!538128 (_1!20887 lt!1081696)) 0))))

(declare-fun e!1999331 () Bool)

(assert (=> d!878614 e!1999331))

(declare-fun res!1304953 () Bool)

(assert (=> d!878614 (=> (not res!1304953) (not e!1999331))))

(assert (=> d!878614 (= res!1304953 (<= 0 0))))

(assert (=> d!878614 (= (apply!8163 (_1!20887 lt!1081696) 0) lt!1082835)))

(declare-fun b!3206764 () Bool)

(assert (=> b!3206764 (= e!1999331 (< 0 (size!27210 (_1!20887 lt!1081696))))))

(assert (= (and d!878614 res!1304953) b!3206764))

(assert (=> d!878614 m!3473417))

(assert (=> d!878614 m!3473417))

(declare-fun m!3473437 () Bool)

(assert (=> d!878614 m!3473437))

(declare-fun m!3473439 () Bool)

(assert (=> d!878614 m!3473439))

(assert (=> b!3206764 m!3469471))

(assert (=> b!3204652 d!878614))

(declare-fun d!878616 () Bool)

(assert (=> d!878616 (dynLambda!14558 lambda!117290 (h!41541 (t!237946 tokens!494)))))

(assert (=> d!878616 true))

(declare-fun _$7!1082 () Unit!50554)

(assert (=> d!878616 (= (choose!18703 tokens!494 lambda!117290 (h!41541 (t!237946 tokens!494))) _$7!1082)))

(declare-fun b_lambda!87817 () Bool)

(assert (=> (not b_lambda!87817) (not d!878616)))

(declare-fun bs!541416 () Bool)

(assert (= bs!541416 d!878616))

(assert (=> bs!541416 m!3469751))

(assert (=> d!877452 d!878616))

(assert (=> d!877452 d!877398))

(declare-fun d!878618 () Bool)

(assert (=> d!878618 (= (isEmpty!20212 lt!1081653) (not ((_ is Some!7116) lt!1081653)))))

(assert (=> d!877544 d!878618))

(assert (=> b!3204968 d!878366))

(assert (=> b!3204968 d!877542))

(declare-fun b!3206765 () Bool)

(declare-fun e!1999332 () Bool)

(declare-fun e!1999335 () Bool)

(assert (=> b!3206765 (= e!1999332 e!1999335)))

(declare-fun c!538756 () Bool)

(assert (=> b!3206765 (= c!538756 ((_ is EmptyLang!9969) (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))))))))

(declare-fun b!3206766 () Bool)

(declare-fun e!1999333 () Bool)

(declare-fun e!1999337 () Bool)

(assert (=> b!3206766 (= e!1999333 e!1999337)))

(declare-fun res!1304957 () Bool)

(assert (=> b!3206766 (=> (not res!1304957) (not e!1999337))))

(declare-fun lt!1082836 () Bool)

(assert (=> b!3206766 (= res!1304957 (not lt!1082836))))

(declare-fun b!3206767 () Bool)

(declare-fun call!232169 () Bool)

(assert (=> b!3206767 (= e!1999332 (= lt!1082836 call!232169))))

(declare-fun e!1999334 () Bool)

(declare-fun b!3206768 () Bool)

(assert (=> b!3206768 (= e!1999334 (= (head!7027 (list!12843 (charsOf!3226 separatorToken!241))) (c!538126 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))))))))

(declare-fun e!1999338 () Bool)

(declare-fun b!3206769 () Bool)

(assert (=> b!3206769 (= e!1999338 (nullable!3395 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))))))))

(declare-fun b!3206770 () Bool)

(declare-fun res!1304958 () Bool)

(assert (=> b!3206770 (=> (not res!1304958) (not e!1999334))))

(assert (=> b!3206770 (= res!1304958 (isEmpty!20208 (tail!5206 (list!12843 (charsOf!3226 separatorToken!241)))))))

(declare-fun b!3206771 () Bool)

(declare-fun e!1999336 () Bool)

(assert (=> b!3206771 (= e!1999337 e!1999336)))

(declare-fun res!1304960 () Bool)

(assert (=> b!3206771 (=> res!1304960 e!1999336)))

(assert (=> b!3206771 (= res!1304960 call!232169)))

(declare-fun b!3206772 () Bool)

(assert (=> b!3206772 (= e!1999336 (not (= (head!7027 (list!12843 (charsOf!3226 separatorToken!241))) (c!538126 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))))))))))

(declare-fun b!3206773 () Bool)

(declare-fun res!1304961 () Bool)

(assert (=> b!3206773 (=> res!1304961 e!1999333)))

(assert (=> b!3206773 (= res!1304961 e!1999334)))

(declare-fun res!1304954 () Bool)

(assert (=> b!3206773 (=> (not res!1304954) (not e!1999334))))

(assert (=> b!3206773 (= res!1304954 lt!1082836)))

(declare-fun b!3206774 () Bool)

(declare-fun res!1304955 () Bool)

(assert (=> b!3206774 (=> res!1304955 e!1999336)))

(assert (=> b!3206774 (= res!1304955 (not (isEmpty!20208 (tail!5206 (list!12843 (charsOf!3226 separatorToken!241))))))))

(declare-fun d!878620 () Bool)

(assert (=> d!878620 e!1999332))

(declare-fun c!538755 () Bool)

(assert (=> d!878620 (= c!538755 ((_ is EmptyExpr!9969) (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241)))))))))

(assert (=> d!878620 (= lt!1082836 e!1999338)))

(declare-fun c!538757 () Bool)

(assert (=> d!878620 (= c!538757 (isEmpty!20208 (list!12843 (charsOf!3226 separatorToken!241))))))

(assert (=> d!878620 (validRegex!4549 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))))))

(assert (=> d!878620 (= (matchR!4603 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))) (list!12843 (charsOf!3226 separatorToken!241))) lt!1082836)))

(declare-fun bm!232164 () Bool)

(assert (=> bm!232164 (= call!232169 (isEmpty!20208 (list!12843 (charsOf!3226 separatorToken!241))))))

(declare-fun b!3206775 () Bool)

(declare-fun res!1304959 () Bool)

(assert (=> b!3206775 (=> (not res!1304959) (not e!1999334))))

(assert (=> b!3206775 (= res!1304959 (not call!232169))))

(declare-fun b!3206776 () Bool)

(declare-fun res!1304956 () Bool)

(assert (=> b!3206776 (=> res!1304956 e!1999333)))

(assert (=> b!3206776 (= res!1304956 (not ((_ is ElementMatch!9969) (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))))))))

(assert (=> b!3206776 (= e!1999335 e!1999333)))

(declare-fun b!3206777 () Bool)

(assert (=> b!3206777 (= e!1999338 (matchR!4603 (derivativeStep!2948 (regex!5210 (get!11494 (getRuleFromTag!915 thiss!18206 rules!2135 (tag!5734 (rule!7648 separatorToken!241))))) (head!7027 (list!12843 (charsOf!3226 separatorToken!241)))) (tail!5206 (list!12843 (charsOf!3226 separatorToken!241)))))))

(declare-fun b!3206778 () Bool)

(assert (=> b!3206778 (= e!1999335 (not lt!1082836))))

(assert (= (and d!878620 c!538757) b!3206769))

(assert (= (and d!878620 (not c!538757)) b!3206777))

(assert (= (and d!878620 c!538755) b!3206767))

(assert (= (and d!878620 (not c!538755)) b!3206765))

(assert (= (and b!3206765 c!538756) b!3206778))

(assert (= (and b!3206765 (not c!538756)) b!3206776))

(assert (= (and b!3206776 (not res!1304956)) b!3206773))

(assert (= (and b!3206773 res!1304954) b!3206775))

(assert (= (and b!3206775 res!1304959) b!3206770))

(assert (= (and b!3206770 res!1304958) b!3206768))

(assert (= (and b!3206773 (not res!1304961)) b!3206766))

(assert (= (and b!3206766 res!1304957) b!3206771))

(assert (= (and b!3206771 (not res!1304960)) b!3206774))

(assert (= (and b!3206774 (not res!1304955)) b!3206772))

(assert (= (or b!3206767 b!3206771 b!3206775) bm!232164))

(assert (=> b!3206770 m!3469163))

(declare-fun m!3473441 () Bool)

(assert (=> b!3206770 m!3473441))

(assert (=> b!3206770 m!3473441))

(declare-fun m!3473443 () Bool)

(assert (=> b!3206770 m!3473443))

(assert (=> d!878620 m!3469163))

(declare-fun m!3473445 () Bool)

(assert (=> d!878620 m!3473445))

(declare-fun m!3473447 () Bool)

(assert (=> d!878620 m!3473447))

(declare-fun m!3473449 () Bool)

(assert (=> b!3206769 m!3473449))

(assert (=> b!3206772 m!3469163))

(declare-fun m!3473451 () Bool)

(assert (=> b!3206772 m!3473451))

(assert (=> b!3206768 m!3469163))

(assert (=> b!3206768 m!3473451))

(assert (=> bm!232164 m!3469163))

(assert (=> bm!232164 m!3473445))

(assert (=> b!3206774 m!3469163))

(assert (=> b!3206774 m!3473441))

(assert (=> b!3206774 m!3473441))

(assert (=> b!3206774 m!3473443))

(assert (=> b!3206777 m!3469163))

(assert (=> b!3206777 m!3473451))

(assert (=> b!3206777 m!3473451))

(declare-fun m!3473453 () Bool)

(assert (=> b!3206777 m!3473453))

(assert (=> b!3206777 m!3469163))

(assert (=> b!3206777 m!3473441))

(assert (=> b!3206777 m!3473453))

(assert (=> b!3206777 m!3473441))

(declare-fun m!3473455 () Bool)

(assert (=> b!3206777 m!3473455))

(assert (=> b!3204968 d!878620))

(assert (=> b!3204968 d!877470))

(assert (=> b!3204968 d!877484))

(declare-fun bs!541417 () Bool)

(declare-fun d!878622 () Bool)

(assert (= bs!541417 (and d!878622 d!877780)))

(declare-fun lambda!117323 () Int)

(assert (=> bs!541417 (= (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (= lambda!117323 lambda!117304))))

(assert (=> d!878622 true))

(assert (=> d!878622 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241)))) (dynLambda!14564 order!18387 lambda!117323))))

(assert (=> d!878622 (= (equivClasses!2051 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241)))) (Forall2!861 lambda!117323))))

(declare-fun bs!541418 () Bool)

(assert (= bs!541418 d!878622))

(declare-fun m!3473457 () Bool)

(assert (=> bs!541418 m!3473457))

(assert (=> b!3205129 d!878622))

(declare-fun d!878624 () Bool)

(declare-fun e!1999341 () Bool)

(assert (=> d!878624 e!1999341))

(declare-fun res!1304964 () Bool)

(assert (=> d!878624 (=> (not res!1304964) (not e!1999341))))

(declare-fun lt!1082839 () BalanceConc!21204)

(assert (=> d!878624 (= res!1304964 (= (list!12843 lt!1082839) lt!1081658))))

(declare-fun fromList!611 (List!36243) Conc!10795)

(assert (=> d!878624 (= lt!1082839 (BalanceConc!21205 (fromList!611 lt!1081658)))))

(assert (=> d!878624 (= (fromListB!1535 lt!1081658) lt!1082839)))

(declare-fun b!3206781 () Bool)

(assert (=> b!3206781 (= e!1999341 (isBalanced!3215 (fromList!611 lt!1081658)))))

(assert (= (and d!878624 res!1304964) b!3206781))

(declare-fun m!3473459 () Bool)

(assert (=> d!878624 m!3473459))

(declare-fun m!3473461 () Bool)

(assert (=> d!878624 m!3473461))

(assert (=> b!3206781 m!3473461))

(assert (=> b!3206781 m!3473461))

(declare-fun m!3473463 () Bool)

(assert (=> b!3206781 m!3473463))

(assert (=> d!877394 d!878624))

(declare-fun d!878626 () Bool)

(declare-fun res!1304969 () Bool)

(declare-fun e!1999346 () Bool)

(assert (=> d!878626 (=> res!1304969 e!1999346)))

(assert (=> d!878626 (= res!1304969 ((_ is Nil!36120) rules!2135))))

(assert (=> d!878626 (= (noDuplicateTag!1908 thiss!18206 rules!2135 Nil!36122) e!1999346)))

(declare-fun b!3206786 () Bool)

(declare-fun e!1999347 () Bool)

(assert (=> b!3206786 (= e!1999346 e!1999347)))

(declare-fun res!1304970 () Bool)

(assert (=> b!3206786 (=> (not res!1304970) (not e!1999347))))

(declare-fun contains!6439 (List!36246 String!40534) Bool)

(assert (=> b!3206786 (= res!1304970 (not (contains!6439 Nil!36122 (tag!5734 (h!41540 rules!2135)))))))

(declare-fun b!3206787 () Bool)

(assert (=> b!3206787 (= e!1999347 (noDuplicateTag!1908 thiss!18206 (t!237945 rules!2135) (Cons!36122 (tag!5734 (h!41540 rules!2135)) Nil!36122)))))

(assert (= (and d!878626 (not res!1304969)) b!3206786))

(assert (= (and b!3206786 res!1304970) b!3206787))

(declare-fun m!3473465 () Bool)

(assert (=> b!3206786 m!3473465))

(declare-fun m!3473467 () Bool)

(assert (=> b!3206787 m!3473467))

(assert (=> b!3204696 d!878626))

(declare-fun b!3206790 () Bool)

(declare-fun res!1304971 () Bool)

(declare-fun e!1999348 () Bool)

(assert (=> b!3206790 (=> (not res!1304971) (not e!1999348))))

(declare-fun lt!1082840 () List!36243)

(assert (=> b!3206790 (= res!1304971 (= (size!27211 lt!1082840) (+ (size!27211 (t!237944 (++!8660 lt!1081658 lt!1081636))) (size!27211 lt!1081640))))))

(declare-fun b!3206788 () Bool)

(declare-fun e!1999349 () List!36243)

(assert (=> b!3206788 (= e!1999349 lt!1081640)))

(declare-fun b!3206791 () Bool)

(assert (=> b!3206791 (= e!1999348 (or (not (= lt!1081640 Nil!36119)) (= lt!1082840 (t!237944 (++!8660 lt!1081658 lt!1081636)))))))

(declare-fun d!878628 () Bool)

(assert (=> d!878628 e!1999348))

(declare-fun res!1304972 () Bool)

(assert (=> d!878628 (=> (not res!1304972) (not e!1999348))))

(assert (=> d!878628 (= res!1304972 (= (content!4882 lt!1082840) ((_ map or) (content!4882 (t!237944 (++!8660 lt!1081658 lt!1081636))) (content!4882 lt!1081640))))))

(assert (=> d!878628 (= lt!1082840 e!1999349)))

(declare-fun c!538759 () Bool)

(assert (=> d!878628 (= c!538759 ((_ is Nil!36119) (t!237944 (++!8660 lt!1081658 lt!1081636))))))

(assert (=> d!878628 (= (++!8660 (t!237944 (++!8660 lt!1081658 lt!1081636)) lt!1081640) lt!1082840)))

(declare-fun b!3206789 () Bool)

(assert (=> b!3206789 (= e!1999349 (Cons!36119 (h!41539 (t!237944 (++!8660 lt!1081658 lt!1081636))) (++!8660 (t!237944 (t!237944 (++!8660 lt!1081658 lt!1081636))) lt!1081640)))))

(assert (= (and d!878628 c!538759) b!3206788))

(assert (= (and d!878628 (not c!538759)) b!3206789))

(assert (= (and d!878628 res!1304972) b!3206790))

(assert (= (and b!3206790 res!1304971) b!3206791))

(declare-fun m!3473469 () Bool)

(assert (=> b!3206790 m!3473469))

(assert (=> b!3206790 m!3473029))

(assert (=> b!3206790 m!3469725))

(declare-fun m!3473471 () Bool)

(assert (=> d!878628 m!3473471))

(assert (=> d!878628 m!3473429))

(assert (=> d!878628 m!3469731))

(declare-fun m!3473473 () Bool)

(assert (=> b!3206789 m!3473473))

(assert (=> b!3204831 d!878628))

(assert (=> b!3205079 d!877732))

(declare-fun d!878630 () Bool)

(declare-fun charsToInt!0 (List!36242) (_ BitVec 32))

(assert (=> d!878630 (= (inv!16 (value!168945 separatorToken!241)) (= (charsToInt!0 (text!38527 (value!168945 separatorToken!241))) (value!168936 (value!168945 separatorToken!241))))))

(declare-fun bs!541419 () Bool)

(assert (= bs!541419 d!878630))

(declare-fun m!3473475 () Bool)

(assert (=> bs!541419 m!3473475))

(assert (=> b!3205135 d!878630))

(declare-fun bs!541420 () Bool)

(declare-fun d!878632 () Bool)

(assert (= bs!541420 (and d!878632 d!877780)))

(declare-fun lambda!117324 () Int)

(assert (=> bs!541420 (= (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (= lambda!117324 lambda!117304))))

(declare-fun bs!541421 () Bool)

(assert (= bs!541421 (and d!878632 d!878622)))

(assert (=> bs!541421 (= (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241)))) (= lambda!117324 lambda!117323))))

(assert (=> d!878632 true))

(assert (=> d!878632 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14564 order!18387 lambda!117324))))

(assert (=> d!878632 (= (equivClasses!2051 (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (h!41540 rules!2135)))) (Forall2!861 lambda!117324))))

(declare-fun bs!541422 () Bool)

(assert (= bs!541422 d!878632))

(declare-fun m!3473477 () Bool)

(assert (=> bs!541422 m!3473477))

(assert (=> b!3204774 d!878632))

(declare-fun d!878634 () Bool)

(declare-fun lt!1082841 () Bool)

(assert (=> d!878634 (= lt!1082841 (isEmpty!20208 (list!12843 (_2!20887 lt!1081814))))))

(assert (=> d!878634 (= lt!1082841 (isEmpty!20210 (c!538127 (_2!20887 lt!1081814))))))

(assert (=> d!878634 (= (isEmpty!20203 (_2!20887 lt!1081814)) lt!1082841)))

(declare-fun bs!541423 () Bool)

(assert (= bs!541423 d!878634))

(declare-fun m!3473479 () Bool)

(assert (=> bs!541423 m!3473479))

(assert (=> bs!541423 m!3473479))

(declare-fun m!3473481 () Bool)

(assert (=> bs!541423 m!3473481))

(declare-fun m!3473483 () Bool)

(assert (=> bs!541423 m!3473483))

(assert (=> b!3204943 d!878634))

(declare-fun d!878636 () Bool)

(assert (=> d!878636 (= (isEmpty!20208 (tail!5206 lt!1081636)) ((_ is Nil!36119) (tail!5206 lt!1081636)))))

(assert (=> b!3204736 d!878636))

(assert (=> b!3204736 d!877714))

(declare-fun bs!541424 () Bool)

(declare-fun d!878638 () Bool)

(assert (= bs!541424 (and d!878638 d!878124)))

(declare-fun lambda!117325 () Int)

(assert (=> bs!541424 (= lambda!117325 lambda!117314)))

(declare-fun bs!541425 () Bool)

(assert (= bs!541425 (and d!878638 d!878294)))

(assert (=> bs!541425 (= (and (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))))) (= lambda!117325 lambda!117320))))

(declare-fun bs!541426 () Bool)

(assert (= bs!541426 (and d!878638 d!878584)))

(assert (=> bs!541426 (= (and (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (h!41540 rules!2135)))) (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (h!41540 rules!2135))))) (= lambda!117325 lambda!117322))))

(assert (=> d!878638 true))

(assert (=> d!878638 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (dynLambda!14567 order!18393 lambda!117325))))

(assert (=> d!878638 true))

(assert (=> d!878638 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (dynLambda!14567 order!18393 lambda!117325))))

(assert (=> d!878638 (= (semiInverseModEq!2152 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) (Forall!1265 lambda!117325))))

(declare-fun bs!541427 () Bool)

(assert (= bs!541427 d!878638))

(declare-fun m!3473485 () Bool)

(assert (=> bs!541427 m!3473485))

(assert (=> d!877590 d!878638))

(declare-fun d!878640 () Bool)

(declare-fun lt!1082842 () Int)

(assert (=> d!878640 (= lt!1082842 (size!27211 (list!12843 (_2!20887 lt!1081710))))))

(assert (=> d!878640 (= lt!1082842 (size!27218 (c!538127 (_2!20887 lt!1081710))))))

(assert (=> d!878640 (= (size!27212 (_2!20887 lt!1081710)) lt!1082842)))

(declare-fun bs!541428 () Bool)

(assert (= bs!541428 d!878640))

(assert (=> bs!541428 m!3469521))

(assert (=> bs!541428 m!3469521))

(declare-fun m!3473487 () Bool)

(assert (=> bs!541428 m!3473487))

(declare-fun m!3473489 () Bool)

(assert (=> bs!541428 m!3473489))

(assert (=> b!3204692 d!878640))

(declare-fun d!878642 () Bool)

(declare-fun lt!1082843 () Int)

(assert (=> d!878642 (= lt!1082843 (size!27211 (list!12843 lt!1081661)))))

(assert (=> d!878642 (= lt!1082843 (size!27218 (c!538127 lt!1081661)))))

(assert (=> d!878642 (= (size!27212 lt!1081661) lt!1082843)))

(declare-fun bs!541429 () Bool)

(assert (= bs!541429 d!878642))

(assert (=> bs!541429 m!3469523))

(assert (=> bs!541429 m!3469523))

(assert (=> bs!541429 m!3470693))

(declare-fun m!3473491 () Bool)

(assert (=> bs!541429 m!3473491))

(assert (=> b!3204692 d!878642))

(declare-fun b!3206794 () Bool)

(declare-fun res!1304973 () Bool)

(declare-fun e!1999350 () Bool)

(assert (=> b!3206794 (=> (not res!1304973) (not e!1999350))))

(declare-fun lt!1082844 () List!36243)

(assert (=> b!3206794 (= res!1304973 (= (size!27211 lt!1082844) (+ (size!27211 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) (size!27211 (list!12843 (charsOf!3226 separatorToken!241))))))))

(declare-fun b!3206792 () Bool)

(declare-fun e!1999351 () List!36243)

(assert (=> b!3206792 (= e!1999351 (list!12843 (charsOf!3226 separatorToken!241)))))

(declare-fun b!3206795 () Bool)

(assert (=> b!3206795 (= e!1999350 (or (not (= (list!12843 (charsOf!3226 separatorToken!241)) Nil!36119)) (= lt!1082844 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))))))))

(declare-fun d!878644 () Bool)

(assert (=> d!878644 e!1999350))

(declare-fun res!1304974 () Bool)

(assert (=> d!878644 (=> (not res!1304974) (not e!1999350))))

(assert (=> d!878644 (= res!1304974 (= (content!4882 lt!1082844) ((_ map or) (content!4882 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) (content!4882 (list!12843 (charsOf!3226 separatorToken!241))))))))

(assert (=> d!878644 (= lt!1082844 e!1999351)))

(declare-fun c!538760 () Bool)

(assert (=> d!878644 (= c!538760 ((_ is Nil!36119) (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))))))

(assert (=> d!878644 (= (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241))) lt!1082844)))

(declare-fun b!3206793 () Bool)

(assert (=> b!3206793 (= e!1999351 (Cons!36119 (h!41539 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) (++!8660 (t!237944 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494))))) (list!12843 (charsOf!3226 separatorToken!241)))))))

(assert (= (and d!878644 c!538760) b!3206792))

(assert (= (and d!878644 (not c!538760)) b!3206793))

(assert (= (and d!878644 res!1304974) b!3206794))

(assert (= (and b!3206794 res!1304973) b!3206795))

(declare-fun m!3473493 () Bool)

(assert (=> b!3206794 m!3473493))

(assert (=> b!3206794 m!3469159))

(assert (=> b!3206794 m!3469809))

(assert (=> b!3206794 m!3469163))

(assert (=> b!3206794 m!3473293))

(declare-fun m!3473495 () Bool)

(assert (=> d!878644 m!3473495))

(assert (=> d!878644 m!3469159))

(assert (=> d!878644 m!3469813))

(assert (=> d!878644 m!3469163))

(assert (=> d!878644 m!3473299))

(assert (=> b!3206793 m!3469163))

(declare-fun m!3473497 () Bool)

(assert (=> b!3206793 m!3473497))

(assert (=> b!3204894 d!878644))

(assert (=> b!3204894 d!877480))

(assert (=> b!3204894 d!877470))

(assert (=> b!3204894 d!877474))

(declare-fun b!3206798 () Bool)

(declare-fun res!1304975 () Bool)

(declare-fun e!1999352 () Bool)

(assert (=> b!3206798 (=> (not res!1304975) (not e!1999352))))

(declare-fun lt!1082845 () List!36243)

(assert (=> b!3206798 (= res!1304975 (= (size!27211 lt!1082845) (+ (size!27211 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241)))) (size!27211 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(declare-fun b!3206796 () Bool)

(declare-fun e!1999353 () List!36243)

(assert (=> b!3206796 (= e!1999353 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241))))

(declare-fun b!3206799 () Bool)

(assert (=> b!3206799 (= e!1999352 (or (not (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241) Nil!36119)) (= lt!1082845 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241))))))))

(declare-fun d!878646 () Bool)

(assert (=> d!878646 e!1999352))

(declare-fun res!1304976 () Bool)

(assert (=> d!878646 (=> (not res!1304976) (not e!1999352))))

(assert (=> d!878646 (= res!1304976 (= (content!4882 lt!1082845) ((_ map or) (content!4882 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241)))) (content!4882 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(assert (=> d!878646 (= lt!1082845 e!1999353)))

(declare-fun c!538761 () Bool)

(assert (=> d!878646 (= c!538761 ((_ is Nil!36119) (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241)))))))

(assert (=> d!878646 (= (++!8660 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)) lt!1082845)))

(declare-fun b!3206797 () Bool)

(assert (=> b!3206797 (= e!1999353 (Cons!36119 (h!41539 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241)))) (++!8660 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) (list!12843 (charsOf!3226 separatorToken!241)))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241))))))

(assert (= (and d!878646 c!538761) b!3206796))

(assert (= (and d!878646 (not c!538761)) b!3206797))

(assert (= (and d!878646 res!1304976) b!3206798))

(assert (= (and b!3206798 res!1304975) b!3206799))

(declare-fun m!3473499 () Bool)

(assert (=> b!3206798 m!3473499))

(assert (=> b!3206798 m!3469867))

(declare-fun m!3473501 () Bool)

(assert (=> b!3206798 m!3473501))

(assert (=> b!3206798 m!3469155))

(assert (=> b!3206798 m!3469797))

(declare-fun m!3473503 () Bool)

(assert (=> d!878646 m!3473503))

(assert (=> d!878646 m!3469867))

(declare-fun m!3473505 () Bool)

(assert (=> d!878646 m!3473505))

(assert (=> d!878646 m!3469155))

(assert (=> d!878646 m!3469803))

(assert (=> b!3206797 m!3469155))

(declare-fun m!3473507 () Bool)

(assert (=> b!3206797 m!3473507))

(assert (=> b!3204894 d!878646))

(assert (=> b!3204894 d!877484))

(assert (=> b!3204894 d!877486))

(assert (=> bm!231993 d!877866))

(declare-fun d!878648 () Bool)

(assert (=> d!878648 (= (inv!16 (value!168945 (h!41541 tokens!494))) (= (charsToInt!0 (text!38527 (value!168945 (h!41541 tokens!494)))) (value!168936 (value!168945 (h!41541 tokens!494)))))))

(declare-fun bs!541430 () Bool)

(assert (= bs!541430 d!878648))

(declare-fun m!3473509 () Bool)

(assert (=> bs!541430 m!3473509))

(assert (=> b!3204759 d!878648))

(declare-fun d!878650 () Bool)

(assert (=> d!878650 (= (get!11494 lt!1081825) (v!35656 lt!1081825))))

(assert (=> b!3204957 d!878650))

(assert (=> b!3204740 d!878636))

(assert (=> b!3204740 d!877714))

(declare-fun d!878652 () Bool)

(declare-fun c!538762 () Bool)

(assert (=> d!878652 (= c!538762 ((_ is Nil!36119) lt!1081719))))

(declare-fun e!1999354 () (InoxSet C!20124))

(assert (=> d!878652 (= (content!4882 lt!1081719) e!1999354)))

(declare-fun b!3206800 () Bool)

(assert (=> b!3206800 (= e!1999354 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206801 () Bool)

(assert (=> b!3206801 (= e!1999354 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081719) true) (content!4882 (t!237944 lt!1081719))))))

(assert (= (and d!878652 c!538762) b!3206800))

(assert (= (and d!878652 (not c!538762)) b!3206801))

(declare-fun m!3473511 () Bool)

(assert (=> b!3206801 m!3473511))

(declare-fun m!3473513 () Bool)

(assert (=> b!3206801 m!3473513))

(assert (=> d!877406 d!878652))

(assert (=> d!877406 d!878536))

(declare-fun d!878654 () Bool)

(declare-fun c!538763 () Bool)

(assert (=> d!878654 (= c!538763 ((_ is Nil!36119) lt!1081637))))

(declare-fun e!1999355 () (InoxSet C!20124))

(assert (=> d!878654 (= (content!4882 lt!1081637) e!1999355)))

(declare-fun b!3206802 () Bool)

(assert (=> b!3206802 (= e!1999355 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206803 () Bool)

(assert (=> b!3206803 (= e!1999355 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 lt!1081637) true) (content!4882 (t!237944 lt!1081637))))))

(assert (= (and d!878654 c!538763) b!3206802))

(assert (= (and d!878654 (not c!538763)) b!3206803))

(declare-fun m!3473515 () Bool)

(assert (=> b!3206803 m!3473515))

(declare-fun m!3473517 () Bool)

(assert (=> b!3206803 m!3473517))

(assert (=> d!877406 d!878654))

(declare-fun d!878656 () Bool)

(assert (=> d!878656 (= (list!12843 lt!1081786) (list!12847 (c!538127 lt!1081786)))))

(declare-fun bs!541431 () Bool)

(assert (= bs!541431 d!878656))

(declare-fun m!3473519 () Bool)

(assert (=> bs!541431 m!3473519))

(assert (=> d!877460 d!878656))

(declare-fun d!878658 () Bool)

(declare-fun lt!1082846 () Bool)

(assert (=> d!878658 (= lt!1082846 (select (content!4886 rules!2135) (get!11494 lt!1081825)))))

(declare-fun e!1999356 () Bool)

(assert (=> d!878658 (= lt!1082846 e!1999356)))

(declare-fun res!1304977 () Bool)

(assert (=> d!878658 (=> (not res!1304977) (not e!1999356))))

(assert (=> d!878658 (= res!1304977 ((_ is Cons!36120) rules!2135))))

(assert (=> d!878658 (= (contains!6435 rules!2135 (get!11494 lt!1081825)) lt!1082846)))

(declare-fun b!3206804 () Bool)

(declare-fun e!1999357 () Bool)

(assert (=> b!3206804 (= e!1999356 e!1999357)))

(declare-fun res!1304978 () Bool)

(assert (=> b!3206804 (=> res!1304978 e!1999357)))

(assert (=> b!3206804 (= res!1304978 (= (h!41540 rules!2135) (get!11494 lt!1081825)))))

(declare-fun b!3206805 () Bool)

(assert (=> b!3206805 (= e!1999357 (contains!6435 (t!237945 rules!2135) (get!11494 lt!1081825)))))

(assert (= (and d!878658 res!1304977) b!3206804))

(assert (= (and b!3206804 (not res!1304978)) b!3206805))

(assert (=> d!878658 m!3472307))

(assert (=> d!878658 m!3469961))

(declare-fun m!3473521 () Bool)

(assert (=> d!878658 m!3473521))

(assert (=> b!3206805 m!3469961))

(declare-fun m!3473523 () Bool)

(assert (=> b!3206805 m!3473523))

(assert (=> b!3204961 d!878658))

(assert (=> b!3204961 d!878650))

(declare-fun d!878660 () Bool)

(declare-fun c!538764 () Bool)

(assert (=> d!878660 (= c!538764 ((_ is Nil!36119) (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))))))

(declare-fun e!1999358 () (InoxSet C!20124))

(assert (=> d!878660 (= (content!4882 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))) e!1999358)))

(declare-fun b!3206806 () Bool)

(assert (=> b!3206806 (= e!1999358 ((as const (Array C!20124 Bool)) false))))

(declare-fun b!3206807 () Bool)

(assert (=> b!3206807 (= e!1999358 ((_ map or) (store ((as const (Array C!20124 Bool)) false) (h!41539 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))) true) (content!4882 (t!237944 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))))))))

(assert (= (and d!878660 c!538764) b!3206806))

(assert (= (and d!878660 (not c!538764)) b!3206807))

(declare-fun m!3473525 () Bool)

(assert (=> b!3206807 m!3473525))

(declare-fun m!3473527 () Bool)

(assert (=> b!3206807 m!3473527))

(assert (=> d!877528 d!878660))

(declare-fun d!878662 () Bool)

(declare-fun lt!1082847 () Bool)

(assert (=> d!878662 (= lt!1082847 (isEmpty!20208 (list!12843 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))))))))))

(assert (=> d!878662 (= lt!1082847 (isEmpty!20210 (c!538127 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494))))))))))

(assert (=> d!878662 (= (isEmpty!20203 (_2!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 tokens!494)))))) lt!1082847)))

(declare-fun bs!541432 () Bool)

(assert (= bs!541432 d!878662))

(declare-fun m!3473529 () Bool)

(assert (=> bs!541432 m!3473529))

(assert (=> bs!541432 m!3473529))

(declare-fun m!3473531 () Bool)

(assert (=> bs!541432 m!3473531))

(declare-fun m!3473533 () Bool)

(assert (=> bs!541432 m!3473533))

(assert (=> b!3205138 d!878662))

(assert (=> b!3205138 d!877904))

(assert (=> b!3205138 d!877906))

(assert (=> b!3205138 d!877420))

(assert (=> b!3204781 d!878204))

(assert (=> d!877512 d!878484))

(assert (=> d!877512 d!878494))

(declare-fun d!878664 () Bool)

(assert (=> d!878664 (= (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))) (list!12848 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 (print!1864 thiss!18206 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))))))))))

(declare-fun bs!541433 () Bool)

(assert (= bs!541433 d!878664))

(declare-fun m!3473535 () Bool)

(assert (=> bs!541433 m!3473535))

(assert (=> d!877512 d!878664))

(assert (=> d!877512 d!877524))

(declare-fun d!878666 () Bool)

(declare-fun lt!1082848 () Int)

(assert (=> d!878666 (= lt!1082848 (size!27216 (list!12844 (_1!20887 lt!1081814))))))

(assert (=> d!878666 (= lt!1082848 (size!27217 (c!538128 (_1!20887 lt!1081814))))))

(assert (=> d!878666 (= (size!27210 (_1!20887 lt!1081814)) lt!1082848)))

(declare-fun bs!541434 () Bool)

(assert (= bs!541434 d!878666))

(assert (=> bs!541434 m!3470791))

(assert (=> bs!541434 m!3470791))

(declare-fun m!3473537 () Bool)

(assert (=> bs!541434 m!3473537))

(declare-fun m!3473539 () Bool)

(assert (=> bs!541434 m!3473539))

(assert (=> d!877512 d!878666))

(assert (=> d!877512 d!877608))

(declare-fun d!878668 () Bool)

(assert (=> d!878668 (= (list!12844 (singletonSeq!2306 (h!41541 (t!237946 tokens!494)))) (list!12848 (c!538128 (singletonSeq!2306 (h!41541 (t!237946 tokens!494))))))))

(declare-fun bs!541435 () Bool)

(assert (= bs!541435 d!878668))

(declare-fun m!3473541 () Bool)

(assert (=> bs!541435 m!3473541))

(assert (=> d!877512 d!878668))

(declare-fun d!878670 () Bool)

(assert (=> d!878670 (= (list!12844 (_1!20887 lt!1081924)) (list!12848 (c!538128 (_1!20887 lt!1081924))))))

(declare-fun bs!541436 () Bool)

(assert (= bs!541436 d!878670))

(declare-fun m!3473543 () Bool)

(assert (=> bs!541436 m!3473543))

(assert (=> b!3205109 d!878670))

(assert (=> b!3205109 d!878378))

(assert (=> b!3205109 d!878382))

(declare-fun d!878672 () Bool)

(assert (=> d!878672 (= (isEmpty!20206 (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661)))) ((_ is Nil!36121) (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661)))))))

(assert (=> d!877380 d!878672))

(declare-fun d!878674 () Bool)

(assert (=> d!878674 (= (list!12844 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661))) (list!12848 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661)))))))

(declare-fun bs!541437 () Bool)

(assert (= bs!541437 d!878674))

(declare-fun m!3473545 () Bool)

(assert (=> bs!541437 m!3473545))

(assert (=> d!877380 d!878674))

(declare-fun d!878676 () Bool)

(declare-fun lt!1082851 () Bool)

(assert (=> d!878676 (= lt!1082851 (isEmpty!20206 (list!12848 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661))))))))

(assert (=> d!878676 (= lt!1082851 (= (size!27217 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661)))) 0))))

(assert (=> d!878676 (= (isEmpty!20207 (c!538128 (_1!20887 (lex!2129 thiss!18206 rules!2135 lt!1081661)))) lt!1082851)))

(declare-fun bs!541438 () Bool)

(assert (= bs!541438 d!878676))

(assert (=> bs!541438 m!3473545))

(assert (=> bs!541438 m!3473545))

(declare-fun m!3473547 () Bool)

(assert (=> bs!541438 m!3473547))

(declare-fun m!3473549 () Bool)

(assert (=> bs!541438 m!3473549))

(assert (=> d!877380 d!878676))

(declare-fun d!878678 () Bool)

(assert (=> d!878678 true))

(declare-fun lt!1082854 () Bool)

(declare-fun rulesValidInductive!1775 (LexerInterface!4799 List!36244) Bool)

(assert (=> d!878678 (= lt!1082854 (rulesValidInductive!1775 thiss!18206 rules!2135))))

(declare-fun lambda!117328 () Int)

(declare-fun forall!7374 (List!36244 Int) Bool)

(assert (=> d!878678 (= lt!1082854 (forall!7374 rules!2135 lambda!117328))))

(assert (=> d!878678 (= (rulesValid!1912 thiss!18206 rules!2135) lt!1082854)))

(declare-fun bs!541439 () Bool)

(assert (= bs!541439 d!878678))

(declare-fun m!3473551 () Bool)

(assert (=> bs!541439 m!3473551))

(declare-fun m!3473553 () Bool)

(assert (=> bs!541439 m!3473553))

(assert (=> d!877396 d!878678))

(declare-fun d!878680 () Bool)

(declare-fun lt!1082855 () Bool)

(assert (=> d!878680 (= lt!1082855 (select (content!4882 (t!237944 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241))))) lt!1081655))))

(declare-fun e!1999359 () Bool)

(assert (=> d!878680 (= lt!1082855 e!1999359)))

(declare-fun res!1304980 () Bool)

(assert (=> d!878680 (=> (not res!1304980) (not e!1999359))))

(assert (=> d!878680 (= res!1304980 ((_ is Cons!36119) (t!237944 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241))))))))

(assert (=> d!878680 (= (contains!6433 (t!237944 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241)))) lt!1081655) lt!1082855)))

(declare-fun b!3206810 () Bool)

(declare-fun e!1999360 () Bool)

(assert (=> b!3206810 (= e!1999359 e!1999360)))

(declare-fun res!1304979 () Bool)

(assert (=> b!3206810 (=> res!1304979 e!1999360)))

(assert (=> b!3206810 (= res!1304979 (= (h!41539 (t!237944 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241))))) lt!1081655))))

(declare-fun b!3206811 () Bool)

(assert (=> b!3206811 (= e!1999360 (contains!6433 (t!237944 (t!237944 (usedCharacters!526 (regex!5210 (rule!7648 separatorToken!241))))) lt!1081655))))

(assert (= (and d!878680 res!1304980) b!3206810))

(assert (= (and b!3206810 (not res!1304979)) b!3206811))

(assert (=> d!878680 m!3473527))

(declare-fun m!3473555 () Bool)

(assert (=> d!878680 m!3473555))

(declare-fun m!3473557 () Bool)

(assert (=> b!3206811 m!3473557))

(assert (=> b!3204979 d!878680))

(declare-fun b!3206812 () Bool)

(declare-fun e!1999361 () Bool)

(declare-fun e!1999364 () Bool)

(assert (=> b!3206812 (= e!1999361 e!1999364)))

(declare-fun c!538766 () Bool)

(assert (=> b!3206812 (= c!538766 ((_ is EmptyLang!9969) (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636))))))

(declare-fun b!3206813 () Bool)

(declare-fun e!1999362 () Bool)

(declare-fun e!1999366 () Bool)

(assert (=> b!3206813 (= e!1999362 e!1999366)))

(declare-fun res!1304984 () Bool)

(assert (=> b!3206813 (=> (not res!1304984) (not e!1999366))))

(declare-fun lt!1082856 () Bool)

(assert (=> b!3206813 (= res!1304984 (not lt!1082856))))

(declare-fun b!3206814 () Bool)

(declare-fun call!232170 () Bool)

(assert (=> b!3206814 (= e!1999361 (= lt!1082856 call!232170))))

(declare-fun b!3206815 () Bool)

(declare-fun e!1999363 () Bool)

(assert (=> b!3206815 (= e!1999363 (= (head!7027 (tail!5206 lt!1081636)) (c!538126 (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636)))))))

(declare-fun b!3206816 () Bool)

(declare-fun e!1999367 () Bool)

(assert (=> b!3206816 (= e!1999367 (nullable!3395 (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636))))))

(declare-fun b!3206817 () Bool)

(declare-fun res!1304985 () Bool)

(assert (=> b!3206817 (=> (not res!1304985) (not e!1999363))))

(assert (=> b!3206817 (= res!1304985 (isEmpty!20208 (tail!5206 (tail!5206 lt!1081636))))))

(declare-fun b!3206818 () Bool)

(declare-fun e!1999365 () Bool)

(assert (=> b!3206818 (= e!1999366 e!1999365)))

(declare-fun res!1304987 () Bool)

(assert (=> b!3206818 (=> res!1304987 e!1999365)))

(assert (=> b!3206818 (= res!1304987 call!232170)))

(declare-fun b!3206819 () Bool)

(assert (=> b!3206819 (= e!1999365 (not (= (head!7027 (tail!5206 lt!1081636)) (c!538126 (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636))))))))

(declare-fun b!3206820 () Bool)

(declare-fun res!1304988 () Bool)

(assert (=> b!3206820 (=> res!1304988 e!1999362)))

(assert (=> b!3206820 (= res!1304988 e!1999363)))

(declare-fun res!1304981 () Bool)

(assert (=> b!3206820 (=> (not res!1304981) (not e!1999363))))

(assert (=> b!3206820 (= res!1304981 lt!1082856)))

(declare-fun b!3206821 () Bool)

(declare-fun res!1304982 () Bool)

(assert (=> b!3206821 (=> res!1304982 e!1999365)))

(assert (=> b!3206821 (= res!1304982 (not (isEmpty!20208 (tail!5206 (tail!5206 lt!1081636)))))))

(declare-fun d!878682 () Bool)

(assert (=> d!878682 e!1999361))

(declare-fun c!538765 () Bool)

(assert (=> d!878682 (= c!538765 ((_ is EmptyExpr!9969) (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636))))))

(assert (=> d!878682 (= lt!1082856 e!1999367)))

(declare-fun c!538767 () Bool)

(assert (=> d!878682 (= c!538767 (isEmpty!20208 (tail!5206 lt!1081636)))))

(assert (=> d!878682 (validRegex!4549 (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636)))))

(assert (=> d!878682 (= (matchR!4603 (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636)) (tail!5206 lt!1081636)) lt!1082856)))

(declare-fun bm!232165 () Bool)

(assert (=> bm!232165 (= call!232170 (isEmpty!20208 (tail!5206 lt!1081636)))))

(declare-fun b!3206822 () Bool)

(declare-fun res!1304986 () Bool)

(assert (=> b!3206822 (=> (not res!1304986) (not e!1999363))))

(assert (=> b!3206822 (= res!1304986 (not call!232170))))

(declare-fun b!3206823 () Bool)

(declare-fun res!1304983 () Bool)

(assert (=> b!3206823 (=> res!1304983 e!1999362)))

(assert (=> b!3206823 (= res!1304983 (not ((_ is ElementMatch!9969) (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636)))))))

(assert (=> b!3206823 (= e!1999364 e!1999362)))

(declare-fun b!3206824 () Bool)

(assert (=> b!3206824 (= e!1999367 (matchR!4603 (derivativeStep!2948 (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636)) (head!7027 (tail!5206 lt!1081636))) (tail!5206 (tail!5206 lt!1081636))))))

(declare-fun b!3206825 () Bool)

(assert (=> b!3206825 (= e!1999364 (not lt!1082856))))

(assert (= (and d!878682 c!538767) b!3206816))

(assert (= (and d!878682 (not c!538767)) b!3206824))

(assert (= (and d!878682 c!538765) b!3206814))

(assert (= (and d!878682 (not c!538765)) b!3206812))

(assert (= (and b!3206812 c!538766) b!3206825))

(assert (= (and b!3206812 (not c!538766)) b!3206823))

(assert (= (and b!3206823 (not res!1304983)) b!3206820))

(assert (= (and b!3206820 res!1304981) b!3206822))

(assert (= (and b!3206822 res!1304986) b!3206817))

(assert (= (and b!3206817 res!1304985) b!3206815))

(assert (= (and b!3206820 (not res!1304988)) b!3206813))

(assert (= (and b!3206813 res!1304984) b!3206818))

(assert (= (and b!3206818 (not res!1304987)) b!3206821))

(assert (= (and b!3206821 (not res!1304982)) b!3206819))

(assert (= (or b!3206814 b!3206818 b!3206822) bm!232165))

(assert (=> b!3206817 m!3469553))

(assert (=> b!3206817 m!3470713))

(assert (=> b!3206817 m!3470713))

(assert (=> b!3206817 m!3470715))

(assert (=> d!878682 m!3469553))

(assert (=> d!878682 m!3469555))

(assert (=> d!878682 m!3469561))

(declare-fun m!3473559 () Bool)

(assert (=> d!878682 m!3473559))

(assert (=> b!3206816 m!3469561))

(declare-fun m!3473561 () Bool)

(assert (=> b!3206816 m!3473561))

(assert (=> b!3206819 m!3469553))

(assert (=> b!3206819 m!3470721))

(assert (=> b!3206815 m!3469553))

(assert (=> b!3206815 m!3470721))

(assert (=> bm!232165 m!3469553))

(assert (=> bm!232165 m!3469555))

(assert (=> b!3206821 m!3469553))

(assert (=> b!3206821 m!3470713))

(assert (=> b!3206821 m!3470713))

(assert (=> b!3206821 m!3470715))

(assert (=> b!3206824 m!3469553))

(assert (=> b!3206824 m!3470721))

(assert (=> b!3206824 m!3469561))

(assert (=> b!3206824 m!3470721))

(declare-fun m!3473563 () Bool)

(assert (=> b!3206824 m!3473563))

(assert (=> b!3206824 m!3469553))

(assert (=> b!3206824 m!3470713))

(assert (=> b!3206824 m!3473563))

(assert (=> b!3206824 m!3470713))

(declare-fun m!3473565 () Bool)

(assert (=> b!3206824 m!3473565))

(assert (=> b!3204743 d!878682))

(declare-fun b!3206826 () Bool)

(declare-fun e!1999368 () Regex!9969)

(assert (=> b!3206826 (= e!1999368 (ite (= (head!7027 lt!1081636) (c!538126 (regex!5210 (rule!7648 separatorToken!241)))) EmptyExpr!9969 EmptyLang!9969))))

(declare-fun call!232174 () Regex!9969)

(declare-fun call!232172 () Regex!9969)

(declare-fun b!3206827 () Bool)

(declare-fun e!1999372 () Regex!9969)

(assert (=> b!3206827 (= e!1999372 (Union!9969 (Concat!15409 call!232172 (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241)))) call!232174))))

(declare-fun d!878684 () Bool)

(declare-fun lt!1082857 () Regex!9969)

(assert (=> d!878684 (validRegex!4549 lt!1082857)))

(declare-fun e!1999371 () Regex!9969)

(assert (=> d!878684 (= lt!1082857 e!1999371)))

(declare-fun c!538769 () Bool)

(assert (=> d!878684 (= c!538769 (or ((_ is EmptyExpr!9969) (regex!5210 (rule!7648 separatorToken!241))) ((_ is EmptyLang!9969) (regex!5210 (rule!7648 separatorToken!241)))))))

(assert (=> d!878684 (validRegex!4549 (regex!5210 (rule!7648 separatorToken!241)))))

(assert (=> d!878684 (= (derivativeStep!2948 (regex!5210 (rule!7648 separatorToken!241)) (head!7027 lt!1081636)) lt!1082857)))

(declare-fun b!3206828 () Bool)

(declare-fun c!538770 () Bool)

(assert (=> b!3206828 (= c!538770 ((_ is Union!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun e!1999369 () Regex!9969)

(assert (=> b!3206828 (= e!1999368 e!1999369)))

(declare-fun b!3206829 () Bool)

(declare-fun e!1999370 () Regex!9969)

(declare-fun call!232173 () Regex!9969)

(assert (=> b!3206829 (= e!1999370 (Concat!15409 call!232173 (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun bm!232166 () Bool)

(declare-fun call!232171 () Regex!9969)

(assert (=> bm!232166 (= call!232173 call!232171)))

(declare-fun bm!232167 () Bool)

(declare-fun c!538771 () Bool)

(assert (=> bm!232167 (= call!232171 (derivativeStep!2948 (ite c!538770 (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))) (ite c!538771 (reg!10298 (regex!5210 (rule!7648 separatorToken!241))) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))) (head!7027 lt!1081636)))))

(declare-fun b!3206830 () Bool)

(declare-fun c!538768 () Bool)

(assert (=> b!3206830 (= c!538768 (nullable!3395 (regOne!20450 (regex!5210 (rule!7648 separatorToken!241)))))))

(assert (=> b!3206830 (= e!1999370 e!1999372)))

(declare-fun b!3206831 () Bool)

(assert (=> b!3206831 (= e!1999369 e!1999370)))

(assert (=> b!3206831 (= c!538771 ((_ is Star!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun b!3206832 () Bool)

(assert (=> b!3206832 (= e!1999371 e!1999368)))

(declare-fun c!538772 () Bool)

(assert (=> b!3206832 (= c!538772 ((_ is ElementMatch!9969) (regex!5210 (rule!7648 separatorToken!241))))))

(declare-fun bm!232168 () Bool)

(assert (=> bm!232168 (= call!232172 call!232173)))

(declare-fun bm!232169 () Bool)

(assert (=> bm!232169 (= call!232174 (derivativeStep!2948 (ite c!538770 (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241)))) (head!7027 lt!1081636)))))

(declare-fun b!3206833 () Bool)

(assert (=> b!3206833 (= e!1999372 (Union!9969 (Concat!15409 call!232172 (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241)))) EmptyLang!9969))))

(declare-fun b!3206834 () Bool)

(assert (=> b!3206834 (= e!1999371 EmptyLang!9969)))

(declare-fun b!3206835 () Bool)

(assert (=> b!3206835 (= e!1999369 (Union!9969 call!232171 call!232174))))

(assert (= (and d!878684 c!538769) b!3206834))

(assert (= (and d!878684 (not c!538769)) b!3206832))

(assert (= (and b!3206832 c!538772) b!3206826))

(assert (= (and b!3206832 (not c!538772)) b!3206828))

(assert (= (and b!3206828 c!538770) b!3206835))

(assert (= (and b!3206828 (not c!538770)) b!3206831))

(assert (= (and b!3206831 c!538771) b!3206829))

(assert (= (and b!3206831 (not c!538771)) b!3206830))

(assert (= (and b!3206830 c!538768) b!3206827))

(assert (= (and b!3206830 (not c!538768)) b!3206833))

(assert (= (or b!3206827 b!3206833) bm!232168))

(assert (= (or b!3206829 bm!232168) bm!232166))

(assert (= (or b!3206835 bm!232166) bm!232167))

(assert (= (or b!3206835 b!3206827) bm!232169))

(declare-fun m!3473567 () Bool)

(assert (=> d!878684 m!3473567))

(assert (=> d!878684 m!3469551))

(assert (=> bm!232167 m!3469263))

(declare-fun m!3473569 () Bool)

(assert (=> bm!232167 m!3473569))

(declare-fun m!3473571 () Bool)

(assert (=> b!3206830 m!3473571))

(assert (=> bm!232169 m!3469263))

(declare-fun m!3473573 () Bool)

(assert (=> bm!232169 m!3473573))

(assert (=> b!3204743 d!878684))

(assert (=> b!3204743 d!877520))

(assert (=> b!3204743 d!877714))

(declare-fun d!878686 () Bool)

(assert (=> d!878686 (= (list!12843 lt!1081798) (list!12847 (c!538127 lt!1081798)))))

(declare-fun bs!541440 () Bool)

(assert (= bs!541440 d!878686))

(declare-fun m!3473575 () Bool)

(assert (=> bs!541440 m!3473575))

(assert (=> d!877486 d!878686))

(declare-fun d!878688 () Bool)

(assert (=> d!878688 (= (list!12843 (_2!20887 lt!1081854)) (list!12847 (c!538127 (_2!20887 lt!1081854))))))

(declare-fun bs!541441 () Bool)

(assert (= bs!541441 d!878688))

(declare-fun m!3473577 () Bool)

(assert (=> bs!541441 m!3473577))

(assert (=> b!3205012 d!878688))

(assert (=> b!3205012 d!878224))

(assert (=> b!3205012 d!878226))

(declare-fun d!878690 () Bool)

(declare-fun lt!1082858 () Int)

(assert (=> d!878690 (>= lt!1082858 0)))

(declare-fun e!1999373 () Int)

(assert (=> d!878690 (= lt!1082858 e!1999373)))

(declare-fun c!538773 () Bool)

(assert (=> d!878690 (= c!538773 ((_ is Nil!36121) (list!12844 (_1!20887 lt!1081664))))))

(assert (=> d!878690 (= (size!27216 (list!12844 (_1!20887 lt!1081664))) lt!1082858)))

(declare-fun b!3206836 () Bool)

(assert (=> b!3206836 (= e!1999373 0)))

(declare-fun b!3206837 () Bool)

(assert (=> b!3206837 (= e!1999373 (+ 1 (size!27216 (t!237946 (list!12844 (_1!20887 lt!1081664))))))))

(assert (= (and d!878690 c!538773) b!3206836))

(assert (= (and d!878690 (not c!538773)) b!3206837))

(declare-fun m!3473579 () Bool)

(assert (=> b!3206837 m!3473579))

(assert (=> d!877536 d!878690))

(assert (=> d!877536 d!878248))

(declare-fun d!878692 () Bool)

(declare-fun lt!1082859 () Int)

(assert (=> d!878692 (= lt!1082859 (size!27216 (list!12848 (c!538128 (_1!20887 lt!1081664)))))))

(assert (=> d!878692 (= lt!1082859 (ite ((_ is Empty!10796) (c!538128 (_1!20887 lt!1081664))) 0 (ite ((_ is Leaf!17012) (c!538128 (_1!20887 lt!1081664))) (csize!21823 (c!538128 (_1!20887 lt!1081664))) (csize!21822 (c!538128 (_1!20887 lt!1081664))))))))

(assert (=> d!878692 (= (size!27217 (c!538128 (_1!20887 lt!1081664))) lt!1082859)))

(declare-fun bs!541442 () Bool)

(assert (= bs!541442 d!878692))

(assert (=> bs!541442 m!3472341))

(assert (=> bs!541442 m!3472341))

(declare-fun m!3473581 () Bool)

(assert (=> bs!541442 m!3473581))

(assert (=> d!877536 d!878692))

(assert (=> b!3204971 d!877896))

(declare-fun d!878694 () Bool)

(declare-fun lt!1082860 () Int)

(assert (=> d!878694 (>= lt!1082860 0)))

(declare-fun e!1999374 () Int)

(assert (=> d!878694 (= lt!1082860 e!1999374)))

(declare-fun c!538774 () Bool)

(assert (=> d!878694 (= c!538774 ((_ is Nil!36119) lt!1081719))))

(assert (=> d!878694 (= (size!27211 lt!1081719) lt!1082860)))

(declare-fun b!3206838 () Bool)

(assert (=> b!3206838 (= e!1999374 0)))

(declare-fun b!3206839 () Bool)

(assert (=> b!3206839 (= e!1999374 (+ 1 (size!27211 (t!237944 lt!1081719))))))

(assert (= (and d!878694 c!538774) b!3206838))

(assert (= (and d!878694 (not c!538774)) b!3206839))

(declare-fun m!3473583 () Bool)

(assert (=> b!3206839 m!3473583))

(assert (=> b!3204770 d!878694))

(assert (=> b!3204770 d!877566))

(declare-fun d!878696 () Bool)

(declare-fun lt!1082861 () Int)

(assert (=> d!878696 (>= lt!1082861 0)))

(declare-fun e!1999375 () Int)

(assert (=> d!878696 (= lt!1082861 e!1999375)))

(declare-fun c!538775 () Bool)

(assert (=> d!878696 (= c!538775 ((_ is Nil!36119) lt!1081637))))

(assert (=> d!878696 (= (size!27211 lt!1081637) lt!1082861)))

(declare-fun b!3206840 () Bool)

(assert (=> b!3206840 (= e!1999375 0)))

(declare-fun b!3206841 () Bool)

(assert (=> b!3206841 (= e!1999375 (+ 1 (size!27211 (t!237944 lt!1081637))))))

(assert (= (and d!878696 c!538775) b!3206840))

(assert (= (and d!878696 (not c!538775)) b!3206841))

(declare-fun m!3473585 () Bool)

(assert (=> b!3206841 m!3473585))

(assert (=> b!3204770 d!878696))

(declare-fun d!878698 () Bool)

(declare-fun lt!1082862 () Int)

(assert (=> d!878698 (>= lt!1082862 0)))

(declare-fun e!1999376 () Int)

(assert (=> d!878698 (= lt!1082862 e!1999376)))

(declare-fun c!538776 () Bool)

(assert (=> d!878698 (= c!538776 ((_ is Nil!36119) (_2!20888 (get!11496 lt!1081904))))))

(assert (=> d!878698 (= (size!27211 (_2!20888 (get!11496 lt!1081904))) lt!1082862)))

(declare-fun b!3206842 () Bool)

(assert (=> b!3206842 (= e!1999376 0)))

(declare-fun b!3206843 () Bool)

(assert (=> b!3206843 (= e!1999376 (+ 1 (size!27211 (t!237944 (_2!20888 (get!11496 lt!1081904))))))))

(assert (= (and d!878698 c!538776) b!3206842))

(assert (= (and d!878698 (not c!538776)) b!3206843))

(declare-fun m!3473587 () Bool)

(assert (=> b!3206843 m!3473587))

(assert (=> b!3205074 d!878698))

(assert (=> b!3205074 d!877732))

(assert (=> b!3205074 d!877566))

(declare-fun b!3206846 () Bool)

(declare-fun res!1304989 () Bool)

(declare-fun e!1999377 () Bool)

(assert (=> b!3206846 (=> (not res!1304989) (not e!1999377))))

(declare-fun lt!1082863 () List!36243)

(assert (=> b!3206846 (= res!1304989 (= (size!27211 lt!1082863) (+ (size!27211 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636))) (size!27211 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(declare-fun e!1999378 () List!36243)

(declare-fun b!3206844 () Bool)

(assert (=> b!3206844 (= e!1999378 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241))))

(declare-fun b!3206847 () Bool)

(assert (=> b!3206847 (= e!1999377 (or (not (= (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241) Nil!36119)) (= lt!1082863 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)))))))

(declare-fun d!878700 () Bool)

(assert (=> d!878700 e!1999377))

(declare-fun res!1304990 () Bool)

(assert (=> d!878700 (=> (not res!1304990) (not e!1999377))))

(assert (=> d!878700 (= res!1304990 (= (content!4882 lt!1082863) ((_ map or) (content!4882 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636))) (content!4882 (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)))))))

(assert (=> d!878700 (= lt!1082863 e!1999378)))

(declare-fun c!538777 () Bool)

(assert (=> d!878700 (= c!538777 ((_ is Nil!36119) (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636))))))

(assert (=> d!878700 (= (++!8660 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636)) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241)) lt!1082863)))

(declare-fun b!3206845 () Bool)

(assert (=> b!3206845 (= e!1999378 (Cons!36119 (h!41539 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636))) (++!8660 (t!237944 (t!237944 (++!8660 (list!12843 (charsOf!3226 (h!41541 (t!237946 tokens!494)))) lt!1081636))) (printWithSeparatorTokenList!144 thiss!18206 (t!237946 (t!237946 tokens!494)) separatorToken!241))))))

(assert (= (and d!878700 c!538777) b!3206844))

(assert (= (and d!878700 (not c!538777)) b!3206845))

(assert (= (and d!878700 res!1304990) b!3206846))

(assert (= (and b!3206846 res!1304989) b!3206847))

(declare-fun m!3473589 () Bool)

(assert (=> b!3206846 m!3473589))

(assert (=> b!3206846 m!3473373))

(assert (=> b!3206846 m!3469155))

(assert (=> b!3206846 m!3469797))

(declare-fun m!3473591 () Bool)

(assert (=> d!878700 m!3473591))

(assert (=> d!878700 m!3470965))

(assert (=> d!878700 m!3469155))

(assert (=> d!878700 m!3469803))

(assert (=> b!3206845 m!3469155))

(declare-fun m!3473593 () Bool)

(assert (=> b!3206845 m!3473593))

(assert (=> b!3204872 d!878700))

(assert (=> bm!231968 d!878214))

(declare-fun d!878702 () Bool)

(assert (=> d!878702 (= (isEmpty!20212 lt!1081646) (not ((_ is Some!7116) lt!1081646)))))

(assert (=> d!877530 d!878702))

(declare-fun bs!541474 () Bool)

(declare-fun d!878704 () Bool)

(assert (= bs!541474 (and d!878704 b!3204471)))

(declare-fun lambda!117335 () Int)

(assert (=> bs!541474 (not (= lambda!117335 lambda!117290))))

(declare-fun bs!541476 () Bool)

(assert (= bs!541476 (and d!878704 b!3204495)))

(assert (=> bs!541476 (= lambda!117335 lambda!117291)))

(declare-fun bs!541477 () Bool)

(assert (= bs!541477 (and d!878704 d!877432)))

(assert (=> bs!541477 (= lambda!117335 lambda!117301)))

(declare-fun b!3207008 () Bool)

(declare-fun e!1999479 () Bool)

(assert (=> b!3207008 (= e!1999479 true)))

(declare-fun b!3207007 () Bool)

(declare-fun e!1999478 () Bool)

(assert (=> b!3207007 (= e!1999478 e!1999479)))

(declare-fun b!3207006 () Bool)

(declare-fun e!1999477 () Bool)

(assert (=> b!3207006 (= e!1999477 e!1999478)))

(assert (=> d!878704 e!1999477))

(assert (= b!3207007 b!3207008))

(assert (= b!3207006 b!3207007))

(assert (= (and d!878704 ((_ is Cons!36120) rules!2135)) b!3207006))

(assert (=> b!3207008 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14556 order!18383 lambda!117335))))

(assert (=> b!3207008 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (h!41540 rules!2135)))) (dynLambda!14556 order!18383 lambda!117335))))

(assert (=> d!878704 true))

(declare-fun lt!1082942 () Bool)

(assert (=> d!878704 (= lt!1082942 (forall!7368 (list!12844 (seqFromList!3491 tokens!494)) lambda!117335))))

(declare-fun e!1999474 () Bool)

(assert (=> d!878704 (= lt!1082942 e!1999474)))

(declare-fun res!1305070 () Bool)

(assert (=> d!878704 (=> res!1305070 e!1999474)))

(assert (=> d!878704 (= res!1305070 (not ((_ is Cons!36121) (list!12844 (seqFromList!3491 tokens!494)))))))

(assert (=> d!878704 (not (isEmpty!20204 rules!2135))))

(assert (=> d!878704 (= (rulesProduceEachTokenIndividuallyList!1722 thiss!18206 rules!2135 (list!12844 (seqFromList!3491 tokens!494))) lt!1082942)))

(declare-fun b!3207002 () Bool)

(declare-fun e!1999475 () Bool)

(assert (=> b!3207002 (= e!1999474 e!1999475)))

(declare-fun res!1305069 () Bool)

(assert (=> b!3207002 (=> (not res!1305069) (not e!1999475))))

(assert (=> b!3207002 (= res!1305069 (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 (list!12844 (seqFromList!3491 tokens!494)))))))

(declare-fun b!3207003 () Bool)

(assert (=> b!3207003 (= e!1999475 (rulesProduceEachTokenIndividuallyList!1722 thiss!18206 rules!2135 (t!237946 (list!12844 (seqFromList!3491 tokens!494)))))))

(assert (= (and d!878704 (not res!1305070)) b!3207002))

(assert (= (and b!3207002 res!1305069) b!3207003))

(assert (=> d!878704 m!3469693))

(declare-fun m!3473967 () Bool)

(assert (=> d!878704 m!3473967))

(assert (=> d!878704 m!3469175))

(declare-fun m!3473973 () Bool)

(assert (=> b!3207002 m!3473973))

(declare-fun m!3473977 () Bool)

(assert (=> b!3207003 m!3473977))

(assert (=> b!3204821 d!878704))

(assert (=> b!3204821 d!877740))

(declare-fun b!3207019 () Bool)

(declare-fun e!1999486 () Bool)

(declare-fun e!1999488 () Bool)

(assert (=> b!3207019 (= e!1999486 e!1999488)))

(declare-fun c!538819 () Bool)

(assert (=> b!3207019 (= c!538819 ((_ is IntegerValue!16321) (value!168945 (h!41541 (t!237946 tokens!494)))))))

(declare-fun b!3207020 () Bool)

(declare-fun res!1305073 () Bool)

(declare-fun e!1999487 () Bool)

(assert (=> b!3207020 (=> res!1305073 e!1999487)))

(assert (=> b!3207020 (= res!1305073 (not ((_ is IntegerValue!16322) (value!168945 (h!41541 (t!237946 tokens!494))))))))

(assert (=> b!3207020 (= e!1999488 e!1999487)))

(declare-fun b!3207021 () Bool)

(assert (=> b!3207021 (= e!1999488 (inv!17 (value!168945 (h!41541 (t!237946 tokens!494)))))))

(declare-fun d!878852 () Bool)

(declare-fun c!538820 () Bool)

(assert (=> d!878852 (= c!538820 ((_ is IntegerValue!16320) (value!168945 (h!41541 (t!237946 tokens!494)))))))

(assert (=> d!878852 (= (inv!21 (value!168945 (h!41541 (t!237946 tokens!494)))) e!1999486)))

(declare-fun b!3207022 () Bool)

(assert (=> b!3207022 (= e!1999487 (inv!15 (value!168945 (h!41541 (t!237946 tokens!494)))))))

(declare-fun b!3207023 () Bool)

(assert (=> b!3207023 (= e!1999486 (inv!16 (value!168945 (h!41541 (t!237946 tokens!494)))))))

(assert (= (and d!878852 c!538820) b!3207023))

(assert (= (and d!878852 (not c!538820)) b!3207019))

(assert (= (and b!3207019 c!538819) b!3207021))

(assert (= (and b!3207019 (not c!538819)) b!3207020))

(assert (= (and b!3207020 (not res!1305073)) b!3207022))

(declare-fun m!3473979 () Bool)

(assert (=> b!3207021 m!3473979))

(declare-fun m!3473981 () Bool)

(assert (=> b!3207022 m!3473981))

(declare-fun m!3473983 () Bool)

(assert (=> b!3207023 m!3473983))

(assert (=> b!3205228 d!878852))

(declare-fun d!878854 () Bool)

(assert (=> d!878854 (= (inv!15 (value!168945 (h!41541 tokens!494))) (= (charsToBigInt!0 (text!38529 (value!168945 (h!41541 tokens!494))) 0) (value!168940 (value!168945 (h!41541 tokens!494)))))))

(declare-fun bs!541478 () Bool)

(assert (= bs!541478 d!878854))

(declare-fun m!3473985 () Bool)

(assert (=> bs!541478 m!3473985))

(assert (=> b!3204758 d!878854))

(assert (=> b!3205166 d!878636))

(assert (=> b!3205166 d!877714))

(declare-fun d!878856 () Bool)

(declare-fun lt!1082948 () Int)

(assert (=> d!878856 (= lt!1082948 (size!27216 (list!12844 (_1!20887 lt!1081854))))))

(assert (=> d!878856 (= lt!1082948 (size!27217 (c!538128 (_1!20887 lt!1081854))))))

(assert (=> d!878856 (= (size!27210 (_1!20887 lt!1081854)) lt!1082948)))

(declare-fun bs!541479 () Bool)

(assert (= bs!541479 d!878856))

(assert (=> bs!541479 m!3470103))

(assert (=> bs!541479 m!3470103))

(declare-fun m!3473997 () Bool)

(assert (=> bs!541479 m!3473997))

(declare-fun m!3473999 () Bool)

(assert (=> bs!541479 m!3473999))

(assert (=> d!877540 d!878856))

(declare-fun e!1999495 () Bool)

(declare-fun b!3207029 () Bool)

(declare-fun lt!1082959 () tuple2!35506)

(assert (=> b!3207029 (= e!1999495 (= (list!12843 (_2!20887 lt!1082959)) (list!12843 (_2!20887 (lexRec!684 thiss!18206 rules!2135 lt!1081654)))))))

(declare-fun lt!1082976 () tuple2!35506)

(declare-fun lt!1082960 () Option!7119)

(declare-fun b!3207030 () Bool)

(assert (=> b!3207030 (= lt!1082976 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082960))))))

(declare-fun e!1999492 () tuple2!35506)

(assert (=> b!3207030 (= e!1999492 (tuple2!35507 (prepend!1172 (_1!20887 lt!1082976) (_1!20893 (v!35668 lt!1082960))) (_2!20887 lt!1082976)))))

(declare-fun lt!1082978 () tuple2!35506)

(declare-fun lt!1082953 () Option!7119)

(declare-fun b!3207031 () Bool)

(assert (=> b!3207031 (= lt!1082978 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082953))))))

(declare-fun e!1999494 () tuple2!35506)

(assert (=> b!3207031 (= e!1999494 (tuple2!35507 (prepend!1172 (_1!20887 lt!1082978) (_1!20893 (v!35668 lt!1082953))) (_2!20887 lt!1082978)))))

(declare-fun b!3207032 () Bool)

(assert (=> b!3207032 (= e!1999492 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1081654))))

(declare-fun b!3207033 () Bool)

(declare-fun lt!1082974 () BalanceConc!21204)

(assert (=> b!3207033 (= e!1999494 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1082974))))

(declare-fun b!3207034 () Bool)

(declare-fun e!1999493 () tuple2!35506)

(assert (=> b!3207034 (= e!1999493 (tuple2!35507 (BalanceConc!21207 Empty!10796) lt!1081654))))

(declare-fun d!878858 () Bool)

(assert (=> d!878858 e!1999495))

(declare-fun res!1305075 () Bool)

(assert (=> d!878858 (=> (not res!1305075) (not e!1999495))))

(assert (=> d!878858 (= res!1305075 (= (list!12844 (_1!20887 lt!1082959)) (list!12844 (_1!20887 (lexRec!684 thiss!18206 rules!2135 lt!1081654)))))))

(assert (=> d!878858 (= lt!1082959 e!1999493)))

(declare-fun c!538824 () Bool)

(declare-fun lt!1082964 () Option!7119)

(assert (=> d!878858 (= c!538824 ((_ is Some!7118) lt!1082964))))

(assert (=> d!878858 (= lt!1082964 (maxPrefixZipperSequenceV2!471 thiss!18206 rules!2135 lt!1081654 lt!1081654))))

(declare-fun lt!1082969 () Unit!50554)

(declare-fun lt!1082967 () Unit!50554)

(assert (=> d!878858 (= lt!1082969 lt!1082967)))

(declare-fun lt!1082982 () List!36243)

(declare-fun lt!1082958 () List!36243)

(assert (=> d!878858 (isSuffix!846 lt!1082982 (++!8660 lt!1082958 lt!1082982))))

(assert (=> d!878858 (= lt!1082967 (lemmaConcatTwoListThenFSndIsSuffix!531 lt!1082958 lt!1082982))))

(assert (=> d!878858 (= lt!1082982 (list!12843 lt!1081654))))

(assert (=> d!878858 (= lt!1082958 (list!12843 (BalanceConc!21205 Empty!10795)))))

(assert (=> d!878858 (= (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081654 (BalanceConc!21205 Empty!10795) lt!1081654 (BalanceConc!21207 Empty!10796)) lt!1082959)))

(declare-fun b!3207035 () Bool)

(declare-fun lt!1082954 () BalanceConc!21204)

(assert (=> b!3207035 (= e!1999493 (lexTailRecV2!930 thiss!18206 rules!2135 lt!1081654 lt!1082954 (_2!20893 (v!35668 lt!1082964)) (append!864 (BalanceConc!21207 Empty!10796) (_1!20893 (v!35668 lt!1082964)))))))

(declare-fun lt!1082972 () tuple2!35506)

(assert (=> b!3207035 (= lt!1082972 (lexRec!684 thiss!18206 rules!2135 (_2!20893 (v!35668 lt!1082964))))))

(declare-fun lt!1082961 () List!36243)

(assert (=> b!3207035 (= lt!1082961 (list!12843 (BalanceConc!21205 Empty!10795)))))

(declare-fun lt!1082965 () List!36243)

(assert (=> b!3207035 (= lt!1082965 (list!12843 (charsOf!3226 (_1!20893 (v!35668 lt!1082964)))))))

(declare-fun lt!1082952 () List!36243)

(assert (=> b!3207035 (= lt!1082952 (list!12843 (_2!20893 (v!35668 lt!1082964))))))

(declare-fun lt!1082971 () Unit!50554)

(assert (=> b!3207035 (= lt!1082971 (lemmaConcatAssociativity!1730 lt!1082961 lt!1082965 lt!1082952))))

(assert (=> b!3207035 (= (++!8660 (++!8660 lt!1082961 lt!1082965) lt!1082952) (++!8660 lt!1082961 (++!8660 lt!1082965 lt!1082952)))))

(declare-fun lt!1082968 () Unit!50554)

(assert (=> b!3207035 (= lt!1082968 lt!1082971)))

(assert (=> b!3207035 (= lt!1082960 (maxPrefixZipperSequence!1077 thiss!18206 rules!2135 lt!1081654))))

(declare-fun c!538823 () Bool)

(assert (=> b!3207035 (= c!538823 ((_ is Some!7118) lt!1082960))))

(assert (=> b!3207035 (= (lexRec!684 thiss!18206 rules!2135 lt!1081654) e!1999492)))

(declare-fun lt!1082979 () Unit!50554)

(declare-fun Unit!50574 () Unit!50554)

(assert (=> b!3207035 (= lt!1082979 Unit!50574)))

(declare-fun lt!1082981 () List!36245)

(assert (=> b!3207035 (= lt!1082981 (list!12844 (BalanceConc!21207 Empty!10796)))))

(declare-fun lt!1082955 () List!36245)

(assert (=> b!3207035 (= lt!1082955 (Cons!36121 (_1!20893 (v!35668 lt!1082964)) Nil!36121))))

(declare-fun lt!1082975 () List!36245)

(assert (=> b!3207035 (= lt!1082975 (list!12844 (_1!20887 lt!1082972)))))

(declare-fun lt!1082966 () Unit!50554)

(assert (=> b!3207035 (= lt!1082966 (lemmaConcatAssociativity!1731 lt!1082981 lt!1082955 lt!1082975))))

(assert (=> b!3207035 (= (++!8664 (++!8664 lt!1082981 lt!1082955) lt!1082975) (++!8664 lt!1082981 (++!8664 lt!1082955 lt!1082975)))))

(declare-fun lt!1082977 () Unit!50554)

(assert (=> b!3207035 (= lt!1082977 lt!1082966)))

(declare-fun lt!1082962 () List!36243)

(assert (=> b!3207035 (= lt!1082962 (++!8660 (list!12843 (BalanceConc!21205 Empty!10795)) (list!12843 (charsOf!3226 (_1!20893 (v!35668 lt!1082964))))))))

(declare-fun lt!1082973 () List!36243)

(assert (=> b!3207035 (= lt!1082973 (list!12843 (_2!20893 (v!35668 lt!1082964))))))

(declare-fun lt!1082956 () List!36245)

(assert (=> b!3207035 (= lt!1082956 (list!12844 (append!864 (BalanceConc!21207 Empty!10796) (_1!20893 (v!35668 lt!1082964)))))))

(declare-fun lt!1082950 () Unit!50554)

(assert (=> b!3207035 (= lt!1082950 (lemmaLexThenLexPrefix!449 thiss!18206 rules!2135 lt!1082962 lt!1082973 lt!1082956 (list!12844 (_1!20887 lt!1082972)) (list!12843 (_2!20887 lt!1082972))))))

(assert (=> b!3207035 (= (lexList!1310 thiss!18206 rules!2135 lt!1082962) (tuple2!35511 lt!1082956 Nil!36119))))

(declare-fun lt!1082949 () Unit!50554)

(assert (=> b!3207035 (= lt!1082949 lt!1082950)))

(assert (=> b!3207035 (= lt!1082974 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082964)))))))

(assert (=> b!3207035 (= lt!1082953 (maxPrefixZipperSequence!1077 thiss!18206 rules!2135 lt!1082974))))

(declare-fun c!538825 () Bool)

(assert (=> b!3207035 (= c!538825 ((_ is Some!7118) lt!1082953))))

(assert (=> b!3207035 (= (lexRec!684 thiss!18206 rules!2135 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082964))))) e!1999494)))

(declare-fun lt!1082980 () Unit!50554)

(declare-fun Unit!50575 () Unit!50554)

(assert (=> b!3207035 (= lt!1082980 Unit!50575)))

(assert (=> b!3207035 (= lt!1082954 (++!8661 (BalanceConc!21205 Empty!10795) (charsOf!3226 (_1!20893 (v!35668 lt!1082964)))))))

(declare-fun lt!1082951 () List!36243)

(assert (=> b!3207035 (= lt!1082951 (list!12843 lt!1082954))))

(declare-fun lt!1082957 () List!36243)

(assert (=> b!3207035 (= lt!1082957 (list!12843 (_2!20893 (v!35668 lt!1082964))))))

(declare-fun lt!1082970 () Unit!50554)

(assert (=> b!3207035 (= lt!1082970 (lemmaConcatTwoListThenFSndIsSuffix!531 lt!1082951 lt!1082957))))

(assert (=> b!3207035 (isSuffix!846 lt!1082957 (++!8660 lt!1082951 lt!1082957))))

(declare-fun lt!1082963 () Unit!50554)

(assert (=> b!3207035 (= lt!1082963 lt!1082970)))

(assert (= (and d!878858 c!538824) b!3207035))

(assert (= (and d!878858 (not c!538824)) b!3207034))

(assert (= (and b!3207035 c!538823) b!3207030))

(assert (= (and b!3207035 (not c!538823)) b!3207032))

(assert (= (and b!3207035 c!538825) b!3207031))

(assert (= (and b!3207035 (not c!538825)) b!3207033))

(assert (= (and d!878858 res!1305075) b!3207029))

(declare-fun m!3474011 () Bool)

(assert (=> b!3207030 m!3474011))

(declare-fun m!3474013 () Bool)

(assert (=> b!3207030 m!3474013))

(declare-fun m!3474015 () Bool)

(assert (=> d!878858 m!3474015))

(declare-fun m!3474017 () Bool)

(assert (=> d!878858 m!3474017))

(assert (=> d!878858 m!3474017))

(declare-fun m!3474019 () Bool)

(assert (=> d!878858 m!3474019))

(assert (=> d!878858 m!3469595))

(declare-fun m!3474021 () Bool)

(assert (=> d!878858 m!3474021))

(declare-fun m!3474023 () Bool)

(assert (=> d!878858 m!3474023))

(assert (=> d!878858 m!3470089))

(declare-fun m!3474027 () Bool)

(assert (=> d!878858 m!3474027))

(declare-fun m!3474029 () Bool)

(assert (=> d!878858 m!3474029))

(declare-fun m!3474033 () Bool)

(assert (=> b!3207031 m!3474033))

(declare-fun m!3474035 () Bool)

(assert (=> b!3207031 m!3474035))

(declare-fun m!3474037 () Bool)

(assert (=> b!3207029 m!3474037))

(assert (=> b!3207029 m!3474027))

(declare-fun m!3474039 () Bool)

(assert (=> b!3207029 m!3474039))

(declare-fun m!3474041 () Bool)

(assert (=> b!3207035 m!3474041))

(declare-fun m!3474043 () Bool)

(assert (=> b!3207035 m!3474043))

(declare-fun m!3474047 () Bool)

(assert (=> b!3207035 m!3474047))

(assert (=> b!3207035 m!3474047))

(declare-fun m!3474049 () Bool)

(assert (=> b!3207035 m!3474049))

(assert (=> b!3207035 m!3474027))

(assert (=> b!3207035 m!3471443))

(declare-fun m!3474051 () Bool)

(assert (=> b!3207035 m!3474051))

(assert (=> b!3207035 m!3474041))

(declare-fun m!3474053 () Bool)

(assert (=> b!3207035 m!3474053))

(declare-fun m!3474055 () Bool)

(assert (=> b!3207035 m!3474055))

(declare-fun m!3474057 () Bool)

(assert (=> b!3207035 m!3474057))

(declare-fun m!3474061 () Bool)

(assert (=> b!3207035 m!3474061))

(assert (=> b!3207035 m!3474055))

(declare-fun m!3474067 () Bool)

(assert (=> b!3207035 m!3474067))

(declare-fun m!3474069 () Bool)

(assert (=> b!3207035 m!3474069))

(declare-fun m!3474071 () Bool)

(assert (=> b!3207035 m!3474071))

(declare-fun m!3474073 () Bool)

(assert (=> b!3207035 m!3474073))

(declare-fun m!3474075 () Bool)

(assert (=> b!3207035 m!3474075))

(declare-fun m!3474079 () Bool)

(assert (=> b!3207035 m!3474079))

(declare-fun m!3474083 () Bool)

(assert (=> b!3207035 m!3474083))

(declare-fun m!3474085 () Bool)

(assert (=> b!3207035 m!3474085))

(declare-fun m!3474087 () Bool)

(assert (=> b!3207035 m!3474087))

(assert (=> b!3207035 m!3474079))

(declare-fun m!3474089 () Bool)

(assert (=> b!3207035 m!3474089))

(assert (=> b!3207035 m!3474087))

(declare-fun m!3474091 () Bool)

(assert (=> b!3207035 m!3474091))

(assert (=> b!3207035 m!3469595))

(declare-fun m!3474093 () Bool)

(assert (=> b!3207035 m!3474093))

(declare-fun m!3474095 () Bool)

(assert (=> b!3207035 m!3474095))

(assert (=> b!3207035 m!3469595))

(assert (=> b!3207035 m!3474075))

(declare-fun m!3474097 () Bool)

(assert (=> b!3207035 m!3474097))

(declare-fun m!3474099 () Bool)

(assert (=> b!3207035 m!3474099))

(assert (=> b!3207035 m!3474055))

(declare-fun m!3474101 () Bool)

(assert (=> b!3207035 m!3474101))

(assert (=> b!3207035 m!3474087))

(assert (=> b!3207035 m!3474093))

(assert (=> b!3207035 m!3474099))

(declare-fun m!3474103 () Bool)

(assert (=> b!3207035 m!3474103))

(declare-fun m!3474105 () Bool)

(assert (=> b!3207035 m!3474105))

(assert (=> b!3207035 m!3474071))

(assert (=> b!3207035 m!3474091))

(declare-fun m!3474107 () Bool)

(assert (=> b!3207035 m!3474107))

(declare-fun m!3474109 () Bool)

(assert (=> b!3207035 m!3474109))

(assert (=> b!3207035 m!3474069))

(declare-fun m!3474111 () Bool)

(assert (=> b!3207035 m!3474111))

(assert (=> d!877540 d!878858))

(assert (=> b!3205162 d!878636))

(assert (=> b!3205162 d!877714))

(declare-fun b!3207048 () Bool)

(declare-fun res!1305078 () Bool)

(declare-fun e!1999501 () Bool)

(assert (=> b!3207048 (=> (not res!1305078) (not e!1999501))))

(declare-fun lt!1083022 () List!36243)

(assert (=> b!3207048 (= res!1305078 (= (size!27211 lt!1083022) (+ (size!27211 (t!237944 lt!1081636)) (size!27211 lt!1081640))))))

(declare-fun b!3207046 () Bool)

(declare-fun e!1999502 () List!36243)

(assert (=> b!3207046 (= e!1999502 lt!1081640)))

(declare-fun b!3207049 () Bool)

(assert (=> b!3207049 (= e!1999501 (or (not (= lt!1081640 Nil!36119)) (= lt!1083022 (t!237944 lt!1081636))))))

(declare-fun d!878872 () Bool)

(assert (=> d!878872 e!1999501))

(declare-fun res!1305079 () Bool)

(assert (=> d!878872 (=> (not res!1305079) (not e!1999501))))

(assert (=> d!878872 (= res!1305079 (= (content!4882 lt!1083022) ((_ map or) (content!4882 (t!237944 lt!1081636)) (content!4882 lt!1081640))))))

(assert (=> d!878872 (= lt!1083022 e!1999502)))

(declare-fun c!538829 () Bool)

(assert (=> d!878872 (= c!538829 ((_ is Nil!36119) (t!237944 lt!1081636)))))

(assert (=> d!878872 (= (++!8660 (t!237944 lt!1081636) lt!1081640) lt!1083022)))

(declare-fun b!3207047 () Bool)

(assert (=> b!3207047 (= e!1999502 (Cons!36119 (h!41539 (t!237944 lt!1081636)) (++!8660 (t!237944 (t!237944 lt!1081636)) lt!1081640)))))

(assert (= (and d!878872 c!538829) b!3207046))

(assert (= (and d!878872 (not c!538829)) b!3207047))

(assert (= (and d!878872 res!1305079) b!3207048))

(assert (= (and b!3207048 res!1305078) b!3207049))

(declare-fun m!3474113 () Bool)

(assert (=> b!3207048 m!3474113))

(assert (=> b!3207048 m!3470815))

(assert (=> b!3207048 m!3469725))

(declare-fun m!3474115 () Bool)

(assert (=> d!878872 m!3474115))

(assert (=> d!878872 m!3471955))

(assert (=> d!878872 m!3469731))

(declare-fun m!3474117 () Bool)

(assert (=> b!3207047 m!3474117))

(assert (=> b!3204889 d!878872))

(declare-fun d!878874 () Bool)

(assert (=> d!878874 (= (list!12843 lt!1081912) (list!12847 (c!538127 lt!1081912)))))

(declare-fun bs!541483 () Bool)

(assert (= bs!541483 d!878874))

(declare-fun m!3474119 () Bool)

(assert (=> bs!541483 m!3474119))

(assert (=> d!877554 d!878874))

(declare-fun d!878876 () Bool)

(declare-fun c!538830 () Bool)

(assert (=> d!878876 (= c!538830 ((_ is Cons!36121) (list!12844 lt!1081643)))))

(declare-fun e!1999503 () List!36243)

(assert (=> d!878876 (= (printList!1349 thiss!18206 (list!12844 lt!1081643)) e!1999503)))

(declare-fun b!3207050 () Bool)

(assert (=> b!3207050 (= e!1999503 (++!8660 (list!12843 (charsOf!3226 (h!41541 (list!12844 lt!1081643)))) (printList!1349 thiss!18206 (t!237946 (list!12844 lt!1081643)))))))

(declare-fun b!3207051 () Bool)

(assert (=> b!3207051 (= e!1999503 Nil!36119)))

(assert (= (and d!878876 c!538830) b!3207050))

(assert (= (and d!878876 (not c!538830)) b!3207051))

(declare-fun m!3474121 () Bool)

(assert (=> b!3207050 m!3474121))

(assert (=> b!3207050 m!3474121))

(declare-fun m!3474123 () Bool)

(assert (=> b!3207050 m!3474123))

(declare-fun m!3474125 () Bool)

(assert (=> b!3207050 m!3474125))

(assert (=> b!3207050 m!3474123))

(assert (=> b!3207050 m!3474125))

(declare-fun m!3474127 () Bool)

(assert (=> b!3207050 m!3474127))

(assert (=> d!877554 d!878876))

(assert (=> d!877554 d!878258))

(assert (=> d!877554 d!877526))

(declare-fun tp!1012489 () Bool)

(declare-fun e!1999508 () Bool)

(declare-fun b!3207060 () Bool)

(declare-fun tp!1012490 () Bool)

(assert (=> b!3207060 (= e!1999508 (and (inv!48980 (left!28070 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))))) tp!1012489 (inv!48980 (right!28400 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))))) tp!1012490))))

(declare-fun b!3207062 () Bool)

(declare-fun e!1999509 () Bool)

(declare-fun tp!1012491 () Bool)

(assert (=> b!3207062 (= e!1999509 tp!1012491)))

(declare-fun b!3207061 () Bool)

(declare-fun inv!48987 (IArray!21595) Bool)

(assert (=> b!3207061 (= e!1999508 (and (inv!48987 (xs!13913 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))))) e!1999509))))

(assert (=> b!3204896 (= tp!1012356 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494)))))) e!1999508))))

(assert (= (and b!3204896 ((_ is Node!10795) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))))) b!3207060))

(assert (= b!3207061 b!3207062))

(assert (= (and b!3204896 ((_ is Leaf!17011) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (value!168945 (h!41541 (t!237946 tokens!494))))))) b!3207061))

(declare-fun m!3474213 () Bool)

(assert (=> b!3207060 m!3474213))

(declare-fun m!3474215 () Bool)

(assert (=> b!3207060 m!3474215))

(declare-fun m!3474219 () Bool)

(assert (=> b!3207061 m!3474219))

(assert (=> b!3204896 m!3469873))

(declare-fun b!3207065 () Bool)

(declare-fun e!1999512 () Bool)

(assert (=> b!3207065 (= e!1999512 true)))

(declare-fun b!3207064 () Bool)

(declare-fun e!1999511 () Bool)

(assert (=> b!3207064 (= e!1999511 e!1999512)))

(declare-fun b!3207063 () Bool)

(declare-fun e!1999510 () Bool)

(assert (=> b!3207063 (= e!1999510 e!1999511)))

(assert (=> b!3204822 e!1999510))

(assert (= b!3207064 b!3207065))

(assert (= b!3207063 b!3207064))

(assert (= (and b!3204822 ((_ is Cons!36120) (t!237945 rules!2135))) b!3207063))

(assert (=> b!3207065 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135))))) (dynLambda!14556 order!18383 lambda!117301))))

(assert (=> b!3207065 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135))))) (dynLambda!14556 order!18383 lambda!117301))))

(declare-fun b!3207074 () Bool)

(declare-fun e!1999517 () Bool)

(assert (=> b!3207074 (= e!1999517 true)))

(declare-fun b!3207073 () Bool)

(declare-fun e!1999516 () Bool)

(assert (=> b!3207073 (= e!1999516 e!1999517)))

(declare-fun b!3207072 () Bool)

(declare-fun e!1999515 () Bool)

(assert (=> b!3207072 (= e!1999515 e!1999516)))

(assert (=> b!3205201 e!1999515))

(assert (= b!3207073 b!3207074))

(assert (= b!3207072 b!3207073))

(assert (= (and b!3205201 ((_ is Cons!36120) (t!237945 (t!237945 rules!2135)))) b!3207072))

(assert (=> b!3207074 (< (dynLambda!14555 order!18381 (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135)))))) (dynLambda!14556 order!18383 lambda!117291))))

(assert (=> b!3207074 (< (dynLambda!14557 order!18385 (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135)))))) (dynLambda!14556 order!18383 lambda!117291))))

(declare-fun b!3207078 () Bool)

(declare-fun e!1999518 () Bool)

(declare-fun tp!1012495 () Bool)

(declare-fun tp!1012494 () Bool)

(assert (=> b!3207078 (= e!1999518 (and tp!1012495 tp!1012494))))

(declare-fun b!3207075 () Bool)

(assert (=> b!3207075 (= e!1999518 tp_is_empty!17291)))

(declare-fun b!3207076 () Bool)

(declare-fun tp!1012492 () Bool)

(declare-fun tp!1012493 () Bool)

(assert (=> b!3207076 (= e!1999518 (and tp!1012492 tp!1012493))))

(assert (=> b!3205236 (= tp!1012400 e!1999518)))

(declare-fun b!3207077 () Bool)

(declare-fun tp!1012496 () Bool)

(assert (=> b!3207077 (= e!1999518 tp!1012496)))

(assert (= (and b!3205236 ((_ is ElementMatch!9969) (reg!10298 (regex!5210 (h!41540 rules!2135))))) b!3207075))

(assert (= (and b!3205236 ((_ is Concat!15409) (reg!10298 (regex!5210 (h!41540 rules!2135))))) b!3207076))

(assert (= (and b!3205236 ((_ is Star!9969) (reg!10298 (regex!5210 (h!41540 rules!2135))))) b!3207077))

(assert (= (and b!3205236 ((_ is Union!9969) (reg!10298 (regex!5210 (h!41540 rules!2135))))) b!3207078))

(declare-fun b!3207082 () Bool)

(declare-fun e!1999519 () Bool)

(declare-fun tp!1012500 () Bool)

(declare-fun tp!1012499 () Bool)

(assert (=> b!3207082 (= e!1999519 (and tp!1012500 tp!1012499))))

(declare-fun b!3207079 () Bool)

(assert (=> b!3207079 (= e!1999519 tp_is_empty!17291)))

(declare-fun b!3207080 () Bool)

(declare-fun tp!1012497 () Bool)

(declare-fun tp!1012498 () Bool)

(assert (=> b!3207080 (= e!1999519 (and tp!1012497 tp!1012498))))

(assert (=> b!3205229 (= tp!1012395 e!1999519)))

(declare-fun b!3207081 () Bool)

(declare-fun tp!1012501 () Bool)

(assert (=> b!3207081 (= e!1999519 tp!1012501)))

(assert (= (and b!3205229 ((_ is ElementMatch!9969) (regex!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) b!3207079))

(assert (= (and b!3205229 ((_ is Concat!15409) (regex!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) b!3207080))

(assert (= (and b!3205229 ((_ is Star!9969) (regex!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) b!3207081))

(assert (= (and b!3205229 ((_ is Union!9969) (regex!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) b!3207082))

(declare-fun b!3207086 () Bool)

(declare-fun e!1999520 () Bool)

(declare-fun tp!1012505 () Bool)

(declare-fun tp!1012504 () Bool)

(assert (=> b!3207086 (= e!1999520 (and tp!1012505 tp!1012504))))

(declare-fun b!3207083 () Bool)

(assert (=> b!3207083 (= e!1999520 tp_is_empty!17291)))

(declare-fun b!3207084 () Bool)

(declare-fun tp!1012502 () Bool)

(declare-fun tp!1012503 () Bool)

(assert (=> b!3207084 (= e!1999520 (and tp!1012502 tp!1012503))))

(assert (=> b!3205237 (= tp!1012399 e!1999520)))

(declare-fun b!3207085 () Bool)

(declare-fun tp!1012506 () Bool)

(assert (=> b!3207085 (= e!1999520 tp!1012506)))

(assert (= (and b!3205237 ((_ is ElementMatch!9969) (regOne!20451 (regex!5210 (h!41540 rules!2135))))) b!3207083))

(assert (= (and b!3205237 ((_ is Concat!15409) (regOne!20451 (regex!5210 (h!41540 rules!2135))))) b!3207084))

(assert (= (and b!3205237 ((_ is Star!9969) (regOne!20451 (regex!5210 (h!41540 rules!2135))))) b!3207085))

(assert (= (and b!3205237 ((_ is Union!9969) (regOne!20451 (regex!5210 (h!41540 rules!2135))))) b!3207086))

(declare-fun b!3207090 () Bool)

(declare-fun e!1999521 () Bool)

(declare-fun tp!1012510 () Bool)

(declare-fun tp!1012509 () Bool)

(assert (=> b!3207090 (= e!1999521 (and tp!1012510 tp!1012509))))

(declare-fun b!3207087 () Bool)

(assert (=> b!3207087 (= e!1999521 tp_is_empty!17291)))

(declare-fun b!3207088 () Bool)

(declare-fun tp!1012507 () Bool)

(declare-fun tp!1012508 () Bool)

(assert (=> b!3207088 (= e!1999521 (and tp!1012507 tp!1012508))))

(assert (=> b!3205237 (= tp!1012398 e!1999521)))

(declare-fun b!3207089 () Bool)

(declare-fun tp!1012511 () Bool)

(assert (=> b!3207089 (= e!1999521 tp!1012511)))

(assert (= (and b!3205237 ((_ is ElementMatch!9969) (regTwo!20451 (regex!5210 (h!41540 rules!2135))))) b!3207087))

(assert (= (and b!3205237 ((_ is Concat!15409) (regTwo!20451 (regex!5210 (h!41540 rules!2135))))) b!3207088))

(assert (= (and b!3205237 ((_ is Star!9969) (regTwo!20451 (regex!5210 (h!41540 rules!2135))))) b!3207089))

(assert (= (and b!3205237 ((_ is Union!9969) (regTwo!20451 (regex!5210 (h!41540 rules!2135))))) b!3207090))

(declare-fun b!3207091 () Bool)

(declare-fun e!1999522 () Bool)

(declare-fun tp!1012512 () Bool)

(assert (=> b!3207091 (= e!1999522 (and tp_is_empty!17291 tp!1012512))))

(assert (=> b!3205209 (= tp!1012380 e!1999522)))

(assert (= (and b!3205209 ((_ is Cons!36119) (t!237944 (originalCharacters!5924 (h!41541 tokens!494))))) b!3207091))

(declare-fun b!3207098 () Bool)

(declare-fun e!1999525 () Bool)

(declare-fun tp!1012516 () Bool)

(declare-fun tp!1012515 () Bool)

(assert (=> b!3207098 (= e!1999525 (and tp!1012516 tp!1012515))))

(declare-fun b!3207095 () Bool)

(assert (=> b!3207095 (= e!1999525 tp_is_empty!17291)))

(declare-fun b!3207096 () Bool)

(declare-fun tp!1012513 () Bool)

(declare-fun tp!1012514 () Bool)

(assert (=> b!3207096 (= e!1999525 (and tp!1012513 tp!1012514))))

(assert (=> b!3205197 (= tp!1012375 e!1999525)))

(declare-fun b!3207097 () Bool)

(declare-fun tp!1012517 () Bool)

(assert (=> b!3207097 (= e!1999525 tp!1012517)))

(assert (= (and b!3205197 ((_ is ElementMatch!9969) (regOne!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207095))

(assert (= (and b!3205197 ((_ is Concat!15409) (regOne!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207096))

(assert (= (and b!3205197 ((_ is Star!9969) (regOne!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207097))

(assert (= (and b!3205197 ((_ is Union!9969) (regOne!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207098))

(declare-fun b!3207102 () Bool)

(declare-fun e!1999526 () Bool)

(declare-fun tp!1012521 () Bool)

(declare-fun tp!1012520 () Bool)

(assert (=> b!3207102 (= e!1999526 (and tp!1012521 tp!1012520))))

(declare-fun b!3207099 () Bool)

(assert (=> b!3207099 (= e!1999526 tp_is_empty!17291)))

(declare-fun b!3207100 () Bool)

(declare-fun tp!1012518 () Bool)

(declare-fun tp!1012519 () Bool)

(assert (=> b!3207100 (= e!1999526 (and tp!1012518 tp!1012519))))

(assert (=> b!3205197 (= tp!1012374 e!1999526)))

(declare-fun b!3207101 () Bool)

(declare-fun tp!1012522 () Bool)

(assert (=> b!3207101 (= e!1999526 tp!1012522)))

(assert (= (and b!3205197 ((_ is ElementMatch!9969) (regTwo!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207099))

(assert (= (and b!3205197 ((_ is Concat!15409) (regTwo!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207100))

(assert (= (and b!3205197 ((_ is Star!9969) (regTwo!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207101))

(assert (= (and b!3205197 ((_ is Union!9969) (regTwo!20451 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207102))

(declare-fun b!3207108 () Bool)

(declare-fun e!1999529 () Bool)

(declare-fun tp!1012526 () Bool)

(declare-fun tp!1012525 () Bool)

(assert (=> b!3207108 (= e!1999529 (and tp!1012526 tp!1012525))))

(declare-fun b!3207105 () Bool)

(assert (=> b!3207105 (= e!1999529 tp_is_empty!17291)))

(declare-fun b!3207106 () Bool)

(declare-fun tp!1012523 () Bool)

(declare-fun tp!1012524 () Bool)

(assert (=> b!3207106 (= e!1999529 (and tp!1012523 tp!1012524))))

(assert (=> b!3205191 (= tp!1012367 e!1999529)))

(declare-fun b!3207107 () Bool)

(declare-fun tp!1012527 () Bool)

(assert (=> b!3207107 (= e!1999529 tp!1012527)))

(assert (= (and b!3205191 ((_ is ElementMatch!9969) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207105))

(assert (= (and b!3205191 ((_ is Concat!15409) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207106))

(assert (= (and b!3205191 ((_ is Star!9969) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207107))

(assert (= (and b!3205191 ((_ is Union!9969) (regOne!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207108))

(declare-fun b!3207112 () Bool)

(declare-fun e!1999530 () Bool)

(declare-fun tp!1012531 () Bool)

(declare-fun tp!1012530 () Bool)

(assert (=> b!3207112 (= e!1999530 (and tp!1012531 tp!1012530))))

(declare-fun b!3207109 () Bool)

(assert (=> b!3207109 (= e!1999530 tp_is_empty!17291)))

(declare-fun b!3207110 () Bool)

(declare-fun tp!1012528 () Bool)

(declare-fun tp!1012529 () Bool)

(assert (=> b!3207110 (= e!1999530 (and tp!1012528 tp!1012529))))

(assert (=> b!3205191 (= tp!1012368 e!1999530)))

(declare-fun b!3207111 () Bool)

(declare-fun tp!1012532 () Bool)

(assert (=> b!3207111 (= e!1999530 tp!1012532)))

(assert (= (and b!3205191 ((_ is ElementMatch!9969) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207109))

(assert (= (and b!3205191 ((_ is Concat!15409) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207110))

(assert (= (and b!3205191 ((_ is Star!9969) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207111))

(assert (= (and b!3205191 ((_ is Union!9969) (regTwo!20450 (regex!5210 (rule!7648 separatorToken!241))))) b!3207112))

(declare-fun b!3207113 () Bool)

(declare-fun e!1999531 () Bool)

(declare-fun tp!1012533 () Bool)

(declare-fun tp!1012534 () Bool)

(assert (=> b!3207113 (= e!1999531 (and (inv!48980 (left!28070 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))))) tp!1012533 (inv!48980 (right!28400 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))))) tp!1012534))))

(declare-fun b!3207115 () Bool)

(declare-fun e!1999532 () Bool)

(declare-fun tp!1012535 () Bool)

(assert (=> b!3207115 (= e!1999532 tp!1012535)))

(declare-fun b!3207114 () Bool)

(assert (=> b!3207114 (= e!1999531 (and (inv!48987 (xs!13913 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))))) e!1999532))))

(assert (=> b!3204858 (= tp!1012354 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494))))) e!1999531))))

(assert (= (and b!3204858 ((_ is Node!10795) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))))) b!3207113))

(assert (= b!3207114 b!3207115))

(assert (= (and b!3204858 ((_ is Leaf!17011) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (value!168945 (h!41541 tokens!494)))))) b!3207114))

(declare-fun m!3474241 () Bool)

(assert (=> b!3207113 m!3474241))

(declare-fun m!3474243 () Bool)

(assert (=> b!3207113 m!3474243))

(declare-fun m!3474245 () Bool)

(assert (=> b!3207114 m!3474245))

(assert (=> b!3204858 m!3469769))

(declare-fun b!3207119 () Bool)

(declare-fun e!1999533 () Bool)

(declare-fun tp!1012539 () Bool)

(declare-fun tp!1012538 () Bool)

(assert (=> b!3207119 (= e!1999533 (and tp!1012539 tp!1012538))))

(declare-fun b!3207116 () Bool)

(assert (=> b!3207116 (= e!1999533 tp_is_empty!17291)))

(declare-fun b!3207117 () Bool)

(declare-fun tp!1012536 () Bool)

(declare-fun tp!1012537 () Bool)

(assert (=> b!3207117 (= e!1999533 (and tp!1012536 tp!1012537))))

(assert (=> b!3205192 (= tp!1012371 e!1999533)))

(declare-fun b!3207118 () Bool)

(declare-fun tp!1012540 () Bool)

(assert (=> b!3207118 (= e!1999533 tp!1012540)))

(assert (= (and b!3205192 ((_ is ElementMatch!9969) (reg!10298 (regex!5210 (rule!7648 separatorToken!241))))) b!3207116))

(assert (= (and b!3205192 ((_ is Concat!15409) (reg!10298 (regex!5210 (rule!7648 separatorToken!241))))) b!3207117))

(assert (= (and b!3205192 ((_ is Star!9969) (reg!10298 (regex!5210 (rule!7648 separatorToken!241))))) b!3207118))

(assert (= (and b!3205192 ((_ is Union!9969) (reg!10298 (regex!5210 (rule!7648 separatorToken!241))))) b!3207119))

(declare-fun b!3207123 () Bool)

(declare-fun e!1999534 () Bool)

(declare-fun tp!1012544 () Bool)

(declare-fun tp!1012543 () Bool)

(assert (=> b!3207123 (= e!1999534 (and tp!1012544 tp!1012543))))

(declare-fun b!3207120 () Bool)

(assert (=> b!3207120 (= e!1999534 tp_is_empty!17291)))

(declare-fun b!3207121 () Bool)

(declare-fun tp!1012541 () Bool)

(declare-fun tp!1012542 () Bool)

(assert (=> b!3207121 (= e!1999534 (and tp!1012541 tp!1012542))))

(assert (=> b!3205195 (= tp!1012372 e!1999534)))

(declare-fun b!3207122 () Bool)

(declare-fun tp!1012545 () Bool)

(assert (=> b!3207122 (= e!1999534 tp!1012545)))

(assert (= (and b!3205195 ((_ is ElementMatch!9969) (regOne!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207120))

(assert (= (and b!3205195 ((_ is Concat!15409) (regOne!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207121))

(assert (= (and b!3205195 ((_ is Star!9969) (regOne!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207122))

(assert (= (and b!3205195 ((_ is Union!9969) (regOne!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207123))

(declare-fun b!3207127 () Bool)

(declare-fun e!1999535 () Bool)

(declare-fun tp!1012549 () Bool)

(declare-fun tp!1012548 () Bool)

(assert (=> b!3207127 (= e!1999535 (and tp!1012549 tp!1012548))))

(declare-fun b!3207124 () Bool)

(assert (=> b!3207124 (= e!1999535 tp_is_empty!17291)))

(declare-fun b!3207125 () Bool)

(declare-fun tp!1012546 () Bool)

(declare-fun tp!1012547 () Bool)

(assert (=> b!3207125 (= e!1999535 (and tp!1012546 tp!1012547))))

(assert (=> b!3205195 (= tp!1012373 e!1999535)))

(declare-fun b!3207126 () Bool)

(declare-fun tp!1012550 () Bool)

(assert (=> b!3207126 (= e!1999535 tp!1012550)))

(assert (= (and b!3205195 ((_ is ElementMatch!9969) (regTwo!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207124))

(assert (= (and b!3205195 ((_ is Concat!15409) (regTwo!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207125))

(assert (= (and b!3205195 ((_ is Star!9969) (regTwo!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207126))

(assert (= (and b!3205195 ((_ is Union!9969) (regTwo!20450 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207127))

(declare-fun b!3207131 () Bool)

(declare-fun e!1999536 () Bool)

(declare-fun tp!1012554 () Bool)

(declare-fun tp!1012553 () Bool)

(assert (=> b!3207131 (= e!1999536 (and tp!1012554 tp!1012553))))

(declare-fun b!3207128 () Bool)

(assert (=> b!3207128 (= e!1999536 tp_is_empty!17291)))

(declare-fun b!3207129 () Bool)

(declare-fun tp!1012551 () Bool)

(declare-fun tp!1012552 () Bool)

(assert (=> b!3207129 (= e!1999536 (and tp!1012551 tp!1012552))))

(assert (=> b!3205196 (= tp!1012376 e!1999536)))

(declare-fun b!3207130 () Bool)

(declare-fun tp!1012555 () Bool)

(assert (=> b!3207130 (= e!1999536 tp!1012555)))

(assert (= (and b!3205196 ((_ is ElementMatch!9969) (reg!10298 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207128))

(assert (= (and b!3205196 ((_ is Concat!15409) (reg!10298 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207129))

(assert (= (and b!3205196 ((_ is Star!9969) (reg!10298 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207130))

(assert (= (and b!3205196 ((_ is Union!9969) (reg!10298 (regex!5210 (rule!7648 (h!41541 tokens!494)))))) b!3207131))

(declare-fun e!1999537 () Bool)

(declare-fun tp!1012557 () Bool)

(declare-fun tp!1012556 () Bool)

(declare-fun b!3207132 () Bool)

(assert (=> b!3207132 (= e!1999537 (and (inv!48980 (left!28070 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))))) tp!1012556 (inv!48980 (right!28400 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))))) tp!1012557))))

(declare-fun b!3207134 () Bool)

(declare-fun e!1999538 () Bool)

(declare-fun tp!1012558 () Bool)

(assert (=> b!3207134 (= e!1999538 tp!1012558)))

(declare-fun b!3207133 () Bool)

(assert (=> b!3207133 (= e!1999537 (and (inv!48987 (xs!13913 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))))) e!1999538))))

(assert (=> b!3204885 (= tp!1012355 (and (inv!48980 (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241)))) e!1999537))))

(assert (= (and b!3204885 ((_ is Node!10795) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))))) b!3207132))

(assert (= b!3207133 b!3207134))

(assert (= (and b!3204885 ((_ is Leaf!17011) (c!538127 (dynLambda!14560 (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (value!168945 separatorToken!241))))) b!3207133))

(declare-fun m!3474247 () Bool)

(assert (=> b!3207132 m!3474247))

(declare-fun m!3474249 () Bool)

(assert (=> b!3207132 m!3474249))

(declare-fun m!3474251 () Bool)

(assert (=> b!3207133 m!3474251))

(assert (=> b!3204885 m!3469823))

(declare-fun b!3207138 () Bool)

(declare-fun e!1999539 () Bool)

(declare-fun tp!1012562 () Bool)

(declare-fun tp!1012561 () Bool)

(assert (=> b!3207138 (= e!1999539 (and tp!1012562 tp!1012561))))

(declare-fun b!3207135 () Bool)

(assert (=> b!3207135 (= e!1999539 tp_is_empty!17291)))

(declare-fun b!3207136 () Bool)

(declare-fun tp!1012559 () Bool)

(declare-fun tp!1012560 () Bool)

(assert (=> b!3207136 (= e!1999539 (and tp!1012559 tp!1012560))))

(assert (=> b!3205193 (= tp!1012370 e!1999539)))

(declare-fun b!3207137 () Bool)

(declare-fun tp!1012563 () Bool)

(assert (=> b!3207137 (= e!1999539 tp!1012563)))

(assert (= (and b!3205193 ((_ is ElementMatch!9969) (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207135))

(assert (= (and b!3205193 ((_ is Concat!15409) (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207136))

(assert (= (and b!3205193 ((_ is Star!9969) (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207137))

(assert (= (and b!3205193 ((_ is Union!9969) (regOne!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207138))

(declare-fun b!3207142 () Bool)

(declare-fun e!1999540 () Bool)

(declare-fun tp!1012567 () Bool)

(declare-fun tp!1012566 () Bool)

(assert (=> b!3207142 (= e!1999540 (and tp!1012567 tp!1012566))))

(declare-fun b!3207139 () Bool)

(assert (=> b!3207139 (= e!1999540 tp_is_empty!17291)))

(declare-fun b!3207140 () Bool)

(declare-fun tp!1012564 () Bool)

(declare-fun tp!1012565 () Bool)

(assert (=> b!3207140 (= e!1999540 (and tp!1012564 tp!1012565))))

(assert (=> b!3205193 (= tp!1012369 e!1999540)))

(declare-fun b!3207141 () Bool)

(declare-fun tp!1012568 () Bool)

(assert (=> b!3207141 (= e!1999540 tp!1012568)))

(assert (= (and b!3205193 ((_ is ElementMatch!9969) (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207139))

(assert (= (and b!3205193 ((_ is Concat!15409) (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207140))

(assert (= (and b!3205193 ((_ is Star!9969) (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207141))

(assert (= (and b!3205193 ((_ is Union!9969) (regTwo!20451 (regex!5210 (rule!7648 separatorToken!241))))) b!3207142))

(declare-fun b!3207143 () Bool)

(declare-fun e!1999541 () Bool)

(declare-fun tp!1012569 () Bool)

(assert (=> b!3207143 (= e!1999541 (and tp_is_empty!17291 tp!1012569))))

(assert (=> b!3205208 (= tp!1012379 e!1999541)))

(assert (= (and b!3205208 ((_ is Cons!36119) (t!237944 (originalCharacters!5924 separatorToken!241)))) b!3207143))

(declare-fun b!3207147 () Bool)

(declare-fun e!1999542 () Bool)

(declare-fun tp!1012573 () Bool)

(declare-fun tp!1012572 () Bool)

(assert (=> b!3207147 (= e!1999542 (and tp!1012573 tp!1012572))))

(declare-fun b!3207144 () Bool)

(assert (=> b!3207144 (= e!1999542 tp_is_empty!17291)))

(declare-fun b!3207145 () Bool)

(declare-fun tp!1012570 () Bool)

(declare-fun tp!1012571 () Bool)

(assert (=> b!3207145 (= e!1999542 (and tp!1012570 tp!1012571))))

(assert (=> b!3205255 (= tp!1012412 e!1999542)))

(declare-fun b!3207146 () Bool)

(declare-fun tp!1012574 () Bool)

(assert (=> b!3207146 (= e!1999542 tp!1012574)))

(assert (= (and b!3205255 ((_ is ElementMatch!9969) (regex!5210 (h!41540 (t!237945 rules!2135))))) b!3207144))

(assert (= (and b!3205255 ((_ is Concat!15409) (regex!5210 (h!41540 (t!237945 rules!2135))))) b!3207145))

(assert (= (and b!3205255 ((_ is Star!9969) (regex!5210 (h!41540 (t!237945 rules!2135))))) b!3207146))

(assert (= (and b!3205255 ((_ is Union!9969) (regex!5210 (h!41540 (t!237945 rules!2135))))) b!3207147))

(declare-fun b!3207148 () Bool)

(declare-fun e!1999543 () Bool)

(declare-fun tp!1012575 () Bool)

(assert (=> b!3207148 (= e!1999543 (and tp_is_empty!17291 tp!1012575))))

(assert (=> b!3205228 (= tp!1012392 e!1999543)))

(assert (= (and b!3205228 ((_ is Cons!36119) (originalCharacters!5924 (h!41541 (t!237946 tokens!494))))) b!3207148))

(declare-fun b!3207152 () Bool)

(declare-fun e!1999544 () Bool)

(declare-fun tp!1012579 () Bool)

(declare-fun tp!1012578 () Bool)

(assert (=> b!3207152 (= e!1999544 (and tp!1012579 tp!1012578))))

(declare-fun b!3207149 () Bool)

(assert (=> b!3207149 (= e!1999544 tp_is_empty!17291)))

(declare-fun b!3207150 () Bool)

(declare-fun tp!1012576 () Bool)

(declare-fun tp!1012577 () Bool)

(assert (=> b!3207150 (= e!1999544 (and tp!1012576 tp!1012577))))

(assert (=> b!3205235 (= tp!1012396 e!1999544)))

(declare-fun b!3207151 () Bool)

(declare-fun tp!1012580 () Bool)

(assert (=> b!3207151 (= e!1999544 tp!1012580)))

(assert (= (and b!3205235 ((_ is ElementMatch!9969) (regOne!20450 (regex!5210 (h!41540 rules!2135))))) b!3207149))

(assert (= (and b!3205235 ((_ is Concat!15409) (regOne!20450 (regex!5210 (h!41540 rules!2135))))) b!3207150))

(assert (= (and b!3205235 ((_ is Star!9969) (regOne!20450 (regex!5210 (h!41540 rules!2135))))) b!3207151))

(assert (= (and b!3205235 ((_ is Union!9969) (regOne!20450 (regex!5210 (h!41540 rules!2135))))) b!3207152))

(declare-fun b!3207156 () Bool)

(declare-fun e!1999545 () Bool)

(declare-fun tp!1012584 () Bool)

(declare-fun tp!1012583 () Bool)

(assert (=> b!3207156 (= e!1999545 (and tp!1012584 tp!1012583))))

(declare-fun b!3207153 () Bool)

(assert (=> b!3207153 (= e!1999545 tp_is_empty!17291)))

(declare-fun b!3207154 () Bool)

(declare-fun tp!1012581 () Bool)

(declare-fun tp!1012582 () Bool)

(assert (=> b!3207154 (= e!1999545 (and tp!1012581 tp!1012582))))

(assert (=> b!3205235 (= tp!1012397 e!1999545)))

(declare-fun b!3207155 () Bool)

(declare-fun tp!1012585 () Bool)

(assert (=> b!3207155 (= e!1999545 tp!1012585)))

(assert (= (and b!3205235 ((_ is ElementMatch!9969) (regTwo!20450 (regex!5210 (h!41540 rules!2135))))) b!3207153))

(assert (= (and b!3205235 ((_ is Concat!15409) (regTwo!20450 (regex!5210 (h!41540 rules!2135))))) b!3207154))

(assert (= (and b!3205235 ((_ is Star!9969) (regTwo!20450 (regex!5210 (h!41540 rules!2135))))) b!3207155))

(assert (= (and b!3205235 ((_ is Union!9969) (regTwo!20450 (regex!5210 (h!41540 rules!2135))))) b!3207156))

(declare-fun b!3207160 () Bool)

(declare-fun b_free!85229 () Bool)

(declare-fun b_next!85933 () Bool)

(assert (=> b!3207160 (= b_free!85229 (not b_next!85933))))

(declare-fun t!238264 () Bool)

(declare-fun tb!157459 () Bool)

(assert (=> (and b!3207160 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238264) tb!157459))

(declare-fun result!199798 () Bool)

(assert (= result!199798 result!199540))

(assert (=> d!877560 t!238264))

(declare-fun t!238266 () Bool)

(declare-fun tb!157461 () Bool)

(assert (=> (and b!3207160 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238266) tb!157461))

(declare-fun result!199800 () Bool)

(assert (= result!199800 result!199676))

(assert (=> d!878136 t!238266))

(assert (=> d!878124 t!238266))

(declare-fun t!238268 () Bool)

(declare-fun tb!157463 () Bool)

(assert (=> (and b!3207160 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238268) tb!157463))

(declare-fun result!199802 () Bool)

(assert (= result!199802 result!199636))

(assert (=> d!877916 t!238268))

(declare-fun t!238270 () Bool)

(declare-fun tb!157465 () Bool)

(assert (=> (and b!3207160 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238270) tb!157465))

(declare-fun result!199804 () Bool)

(assert (= result!199804 result!199596))

(assert (=> d!877734 t!238270))

(declare-fun tp!1012588 () Bool)

(declare-fun b_and!213539 () Bool)

(assert (=> b!3207160 (= tp!1012588 (and (=> t!238264 result!199798) (=> t!238270 result!199804) (=> t!238266 result!199800) (=> t!238268 result!199802) b_and!213539))))

(declare-fun b_free!85231 () Bool)

(declare-fun b_next!85935 () Bool)

(assert (=> b!3207160 (= b_free!85231 (not b_next!85935))))

(declare-fun t!238272 () Bool)

(declare-fun tb!157467 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238272) tb!157467))

(declare-fun result!199806 () Bool)

(assert (= result!199806 result!199512))

(assert (=> d!877460 t!238272))

(declare-fun t!238274 () Bool)

(declare-fun tb!157469 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0))))) t!238274) tb!157469))

(declare-fun result!199808 () Bool)

(assert (= result!199808 result!199686))

(assert (=> d!878168 t!238274))

(declare-fun tb!157471 () Bool)

(declare-fun t!238276 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0))))) t!238276) tb!157471))

(declare-fun result!199810 () Bool)

(assert (= result!199810 result!199698))

(assert (=> d!878262 t!238276))

(declare-fun t!238278 () Bool)

(declare-fun tb!157473 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) t!238278) tb!157473))

(declare-fun result!199812 () Bool)

(assert (= result!199812 result!199526))

(assert (=> b!3206614 t!238278))

(declare-fun t!238280 () Bool)

(declare-fun tb!157475 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) t!238280) tb!157475))

(declare-fun result!199814 () Bool)

(assert (= result!199814 result!199766))

(assert (=> d!878580 t!238280))

(declare-fun t!238282 () Bool)

(declare-fun tb!157477 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) t!238282) tb!157477))

(declare-fun result!199816 () Bool)

(assert (= result!199816 result!199520))

(assert (=> d!877470 t!238282))

(assert (=> b!3205139 t!238272))

(declare-fun t!238284 () Bool)

(declare-fun tb!157479 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494))))))) t!238284) tb!157479))

(declare-fun result!199818 () Bool)

(assert (= result!199818 result!199756))

(assert (=> d!878554 t!238284))

(declare-fun tb!157481 () Bool)

(declare-fun t!238286 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0))))) t!238286) tb!157481))

(declare-fun result!199820 () Bool)

(assert (= result!199820 result!199736))

(assert (=> d!878394 t!238286))

(assert (=> d!877486 t!238278))

(declare-fun t!238288 () Bool)

(declare-fun tb!157483 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238288) tb!157483))

(declare-fun result!199822 () Bool)

(assert (= result!199822 result!199666))

(assert (=> d!878124 t!238288))

(assert (=> b!3205127 t!238282))

(declare-fun tb!157485 () Bool)

(declare-fun t!238290 () Bool)

(assert (=> (and b!3207160 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238290) tb!157485))

(declare-fun result!199824 () Bool)

(assert (= result!199824 result!199726))

(assert (=> d!878374 t!238290))

(declare-fun b_and!213541 () Bool)

(declare-fun tp!1012586 () Bool)

(assert (=> b!3207160 (= tp!1012586 (and (=> t!238272 result!199806) (=> t!238274 result!199808) (=> t!238276 result!199810) (=> t!238280 result!199814) (=> t!238278 result!199812) (=> t!238286 result!199820) (=> t!238290 result!199824) (=> t!238282 result!199816) (=> t!238284 result!199818) (=> t!238288 result!199822) b_and!213541))))

(declare-fun b!3207158 () Bool)

(declare-fun e!1999546 () Bool)

(declare-fun tp!1012587 () Bool)

(declare-fun e!1999549 () Bool)

(assert (=> b!3207158 (= e!1999546 (and (inv!21 (value!168945 (h!41541 (t!237946 (t!237946 tokens!494))))) e!1999549 tp!1012587))))

(declare-fun tp!1012590 () Bool)

(declare-fun b!3207159 () Bool)

(declare-fun e!1999550 () Bool)

(assert (=> b!3207159 (= e!1999549 (and tp!1012590 (inv!48973 (tag!5734 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (inv!48977 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) e!1999550))))

(assert (=> b!3207160 (= e!1999550 (and tp!1012588 tp!1012586))))

(declare-fun tp!1012589 () Bool)

(declare-fun b!3207157 () Bool)

(declare-fun e!1999548 () Bool)

(assert (=> b!3207157 (= e!1999548 (and (inv!48976 (h!41541 (t!237946 (t!237946 tokens!494)))) e!1999546 tp!1012589))))

(assert (=> b!3205227 (= tp!1012394 e!1999548)))

(assert (= b!3207159 b!3207160))

(assert (= b!3207158 b!3207159))

(assert (= b!3207157 b!3207158))

(assert (= (and b!3205227 ((_ is Cons!36121) (t!237946 (t!237946 tokens!494)))) b!3207157))

(declare-fun m!3474271 () Bool)

(assert (=> b!3207158 m!3474271))

(declare-fun m!3474273 () Bool)

(assert (=> b!3207159 m!3474273))

(declare-fun m!3474275 () Bool)

(assert (=> b!3207159 m!3474275))

(declare-fun m!3474277 () Bool)

(assert (=> b!3207157 m!3474277))

(declare-fun b!3207169 () Bool)

(declare-fun b_free!85233 () Bool)

(declare-fun b_next!85937 () Bool)

(assert (=> b!3207169 (= b_free!85233 (not b_next!85937))))

(declare-fun t!238292 () Bool)

(declare-fun tb!157487 () Bool)

(assert (=> (and b!3207169 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238292) tb!157487))

(declare-fun result!199826 () Bool)

(assert (= result!199826 result!199540))

(assert (=> d!877560 t!238292))

(declare-fun t!238294 () Bool)

(declare-fun tb!157489 () Bool)

(assert (=> (and b!3207169 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238294) tb!157489))

(declare-fun result!199828 () Bool)

(assert (= result!199828 result!199676))

(assert (=> d!878136 t!238294))

(assert (=> d!878124 t!238294))

(declare-fun tb!157491 () Bool)

(declare-fun t!238296 () Bool)

(assert (=> (and b!3207169 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238296) tb!157491))

(declare-fun result!199830 () Bool)

(assert (= result!199830 result!199636))

(assert (=> d!877916 t!238296))

(declare-fun tb!157493 () Bool)

(declare-fun t!238298 () Bool)

(assert (=> (and b!3207169 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toValue!7290 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238298) tb!157493))

(declare-fun result!199832 () Bool)

(assert (= result!199832 result!199596))

(assert (=> d!877734 t!238298))

(declare-fun b_and!213543 () Bool)

(declare-fun tp!1012592 () Bool)

(assert (=> b!3207169 (= tp!1012592 (and (=> t!238296 result!199830) (=> t!238294 result!199828) (=> t!238292 result!199826) (=> t!238298 result!199832) b_and!213543))))

(declare-fun b_free!85235 () Bool)

(declare-fun b_next!85939 () Bool)

(assert (=> b!3207169 (= b_free!85235 (not b_next!85939))))

(declare-fun tb!157495 () Bool)

(declare-fun t!238300 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238300) tb!157495))

(declare-fun result!199834 () Bool)

(assert (= result!199834 result!199512))

(assert (=> d!877460 t!238300))

(declare-fun t!238302 () Bool)

(declare-fun tb!157497 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081650 0))))) t!238302) tb!157497))

(declare-fun result!199836 () Bool)

(assert (= result!199836 result!199686))

(assert (=> d!878168 t!238302))

(declare-fun t!238304 () Bool)

(declare-fun tb!157499 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081643 0))))) t!238304) tb!157499))

(declare-fun result!199838 () Bool)

(assert (= result!199838 result!199698))

(assert (=> d!878262 t!238304))

(declare-fun tb!157501 () Bool)

(declare-fun t!238306 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494)))))) t!238306) tb!157501))

(declare-fun result!199840 () Bool)

(assert (= result!199840 result!199526))

(assert (=> b!3206614 t!238306))

(declare-fun t!238308 () Bool)

(declare-fun tb!157503 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (Cons!36121 (h!41541 tokens!494) Nil!36121)))))) t!238308) tb!157503))

(declare-fun result!199842 () Bool)

(assert (= result!199842 result!199766))

(assert (=> d!878580 t!238308))

(declare-fun t!238310 () Bool)

(declare-fun tb!157505 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241)))) t!238310) tb!157505))

(declare-fun result!199844 () Bool)

(assert (= result!199844 result!199520))

(assert (=> d!877470 t!238310))

(assert (=> b!3205139 t!238300))

(declare-fun tb!157507 () Bool)

(declare-fun t!238312 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494))))))) t!238312) tb!157507))

(declare-fun result!199846 () Bool)

(assert (= result!199846 result!199756))

(assert (=> d!878554 t!238312))

(declare-fun tb!157509 () Bool)

(declare-fun t!238314 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (apply!8163 lt!1081662 0))))) t!238314) tb!157509))

(declare-fun result!199848 () Bool)

(assert (= result!199848 result!199736))

(assert (=> d!878394 t!238314))

(assert (=> d!877486 t!238306))

(declare-fun t!238316 () Bool)

(declare-fun tb!157511 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494))))) t!238316) tb!157511))

(declare-fun result!199850 () Bool)

(assert (= result!199850 result!199666))

(assert (=> d!878124 t!238316))

(assert (=> b!3205127 t!238310))

(declare-fun t!238318 () Bool)

(declare-fun tb!157513 () Bool)

(assert (=> (and b!3207169 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (_1!20888 (get!11496 lt!1081904)))))) t!238318) tb!157513))

(declare-fun result!199852 () Bool)

(assert (= result!199852 result!199726))

(assert (=> d!878374 t!238318))

(declare-fun b_and!213545 () Bool)

(declare-fun tp!1012591 () Bool)

(assert (=> b!3207169 (= tp!1012591 (and (=> t!238316 result!199850) (=> t!238312 result!199846) (=> t!238308 result!199842) (=> t!238306 result!199840) (=> t!238300 result!199834) (=> t!238314 result!199848) (=> t!238310 result!199844) (=> t!238304 result!199838) (=> t!238318 result!199852) (=> t!238302 result!199836) b_and!213545))))

(declare-fun e!1999557 () Bool)

(assert (=> b!3207169 (= e!1999557 (and tp!1012592 tp!1012591))))

(declare-fun e!1999555 () Bool)

(declare-fun b!3207168 () Bool)

(declare-fun tp!1012594 () Bool)

(assert (=> b!3207168 (= e!1999555 (and tp!1012594 (inv!48973 (tag!5734 (h!41540 (t!237945 (t!237945 rules!2135))))) (inv!48977 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) e!1999557))))

(declare-fun b!3207167 () Bool)

(declare-fun e!1999554 () Bool)

(declare-fun tp!1012593 () Bool)

(assert (=> b!3207167 (= e!1999554 (and e!1999555 tp!1012593))))

(assert (=> b!3205254 (= tp!1012411 e!1999554)))

(assert (= b!3207168 b!3207169))

(assert (= b!3207167 b!3207168))

(assert (= (and b!3205254 ((_ is Cons!36120) (t!237945 (t!237945 rules!2135)))) b!3207167))

(declare-fun m!3474289 () Bool)

(assert (=> b!3207168 m!3474289))

(declare-fun m!3474291 () Bool)

(assert (=> b!3207168 m!3474291))

(declare-fun b_lambda!87827 () Bool)

(assert (= b_lambda!87791 (or b!3204495 b_lambda!87827)))

(declare-fun bs!541490 () Bool)

(declare-fun d!878898 () Bool)

(assert (= bs!541490 (and d!878898 b!3204495)))

(assert (=> bs!541490 (= (dynLambda!14558 lambda!117291 (h!41541 tokens!494)) (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 tokens!494)))))

(assert (=> bs!541490 m!3469167))

(assert (=> b!3206361 d!878898))

(declare-fun b_lambda!87829 () Bool)

(assert (= b_lambda!87817 (or b!3204471 b_lambda!87829)))

(assert (=> d!878616 d!877646))

(declare-fun b_lambda!87831 () Bool)

(assert (= b_lambda!87809 (or (and b!3207169 b_free!85235 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3205230 b_free!85215) (and b!3204473 b_free!85203 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3204481 b_free!85207 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3207160 b_free!85231 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))))) b_lambda!87831)))

(declare-fun b_lambda!87833 () Bool)

(assert (= b_lambda!87757 (or d!877432 b_lambda!87833)))

(declare-fun bs!541491 () Bool)

(declare-fun d!878900 () Bool)

(assert (= bs!541491 (and d!878900 d!877432)))

(assert (=> bs!541491 (= (dynLambda!14558 lambda!117301 (h!41541 (list!12844 (seqFromList!3491 tokens!494)))) (rulesProduceIndividualToken!2291 thiss!18206 rules!2135 (h!41541 (list!12844 (seqFromList!3491 tokens!494)))))))

(assert (=> bs!541491 m!3473973))

(assert (=> b!3205562 d!878900))

(declare-fun b_lambda!87835 () Bool)

(assert (= b_lambda!87785 (or b!3204471 b_lambda!87835)))

(assert (=> d!878156 d!877644))

(declare-fun b_lambda!87837 () Bool)

(assert (= b_lambda!87759 (or b!3204471 b_lambda!87837)))

(assert (=> b!3205579 d!877646))

(declare-fun b_lambda!87839 () Bool)

(assert (= b_lambda!87789 (or b!3204495 b_lambda!87839)))

(assert (=> d!878242 d!877642))

(declare-fun b_lambda!87841 () Bool)

(assert (= b_lambda!87779 (or (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3205230 b_free!85215 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204473 b_free!85203) (and b!3207169 b_free!85235 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3207160 b_free!85231 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204481 b_free!85207 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) b_lambda!87841)))

(declare-fun b_lambda!87843 () Bool)

(assert (= b_lambda!87769 (or (and b!3207160 b_free!85229 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3207169 b_free!85233 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204473 b_free!85201) (and b!3205230 b_free!85213 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204481 b_free!85205 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204488 b_free!85209 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3205256 b_free!85217 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) b_lambda!87843)))

(declare-fun b_lambda!87845 () Bool)

(assert (= b_lambda!87781 (or (and b!3207160 b_free!85229 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3207169 b_free!85233 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204473 b_free!85201) (and b!3205230 b_free!85213 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204481 b_free!85205 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204488 b_free!85209 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3205256 b_free!85217 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) b_lambda!87845)))

(declare-fun b_lambda!87847 () Bool)

(assert (= b_lambda!87813 (or (and b!3204473 b_free!85203 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 tokens!494)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))))) (and b!3204481 b_free!85207 (= (toChars!7149 (transformation!5210 (rule!7648 separatorToken!241))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))))) (and b!3207169 b_free!85235 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))))) (and b!3204488 b_free!85211 (= (toChars!7149 (transformation!5210 (h!41540 rules!2135))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))))) (and b!3205256 b_free!85219 (= (toChars!7149 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))))) (and b!3207160 b_free!85231) (and b!3205230 b_free!85215 (= (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toChars!7149 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))))) b_lambda!87847)))

(declare-fun b_lambda!87849 () Bool)

(assert (= b_lambda!87783 (or (and b!3207160 b_free!85229 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 (t!237946 tokens!494)))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3207169 b_free!85233 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 (t!237945 rules!2135))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204473 b_free!85201) (and b!3205230 b_free!85213 (= (toValue!7290 (transformation!5210 (rule!7648 (h!41541 (t!237946 tokens!494))))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204481 b_free!85205 (= (toValue!7290 (transformation!5210 (rule!7648 separatorToken!241))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3204488 b_free!85209 (= (toValue!7290 (transformation!5210 (h!41540 rules!2135))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) (and b!3205256 b_free!85217 (= (toValue!7290 (transformation!5210 (h!41540 (t!237945 rules!2135)))) (toValue!7290 (transformation!5210 (rule!7648 (h!41541 tokens!494)))))) b_lambda!87849)))

(check-sat (not b!3206415) (not d!878542) (not b!3207152) (not b!3206496) (not b!3207123) (not d!878644) (not d!878246) (not bm!232032) (not d!878664) (not b!3206550) (not b!3206681) (not bm!232105) (not tb!157259) (not d!878192) (not d!877838) (not b!3206291) (not b!3205540) (not d!877998) (not b!3207061) (not bm!232143) (not tb!157361) (not d!877832) (not b!3207122) (not b!3206786) (not b!3207127) (not bm!232158) (not b!3206363) (not d!878482) (not b!3206817) (not b!3206538) (not d!878314) (not b_next!85915) (not b!3206170) (not d!878148) (not b_lambda!87729) (not b_lambda!87815) (not b!3206344) (not b!3207121) (not d!878674) (not b!3205685) (not b!3206162) (not b!3207150) (not b!3206718) (not d!878390) (not b!3206794) (not bm!232047) (not b!3206489) (not b_next!85917) (not b!3207077) (not d!878612) (not b!3206381) (not b!3206781) (not b!3206824) (not b!3206703) (not b!3206720) tp_is_empty!17291 (not b!3206845) (not d!878682) (not b!3205789) (not b!3206633) (not b_next!85933) (not d!878318) (not b!3207080) b_and!213515 (not b_lambda!87843) (not d!878562) (not d!877894) (not b!3206735) (not b!3206303) (not b!3206846) b_and!213541 (not b!3205686) b_and!213509 (not b!3205805) (not b!3207137) (not d!878404) (not b!3207132) (not d!877730) (not b!3206830) (not b!3205563) (not b!3206169) (not b!3205910) (not b!3206180) (not b!3207138) (not bm!232099) (not b!3207060) (not bm!232128) (not b!3206789) (not b!3207133) (not b_next!85923) (not d!877924) (not bm!232165) (not b!3206185) (not b!3207098) (not b!3207088) (not b!3206798) (not b!3206816) (not d!878676) (not b!3205684) (not d!878424) (not b!3206749) (not b!3205353) (not b!3207086) (not b!3206793) (not b_lambda!87839) (not b_lambda!87827) (not d!878670) (not d!877926) (not b!3206696) (not b!3207134) (not b!3206750) (not tb!157349) (not b_lambda!87835) (not b_next!85913) (not d!878126) (not b!3206772) (not b!3206132) (not b!3206505) (not b!3206819) b_and!213517 (not d!878554) (not d!877712) (not b!3206744) (not d!878174) (not b!3206522) (not b!3205826) (not b!3205471) (not b!3206567) (not b!3206614) (not d!878418) (not bm!232151) (not b!3205909) (not b!3206751) (not b!3205914) (not b!3205678) (not d!877970) (not b!3205915) (not tb!157339) (not b!3206629) (not b!3206486) (not b!3207125) (not d!878180) (not d!877976) (not d!878232) (not b!3206589) (not d!878224) (not bm!232147) (not d!878566) (not bm!232055) (not b_lambda!87755) (not b!3206495) (not b!3207143) (not d!878564) b_and!213403 (not b!3206337) (not b!3206770) (not d!877876) (not b!3206181) (not b!3205697) (not b!3206356) (not b!3206803) (not b!3206322) (not b_lambda!87801) (not b!3206797) (not b!3206233) (not b!3207076) (not d!878546) (not d!878132) (not b!3206369) (not tb!157329) (not d!877770) (not b!3205753) (not b!3205467) (not b!3206159) (not d!877904) (not bs!541490) (not b!3205905) (not b!3206325) (not b!3205366) (not b!3205680) (not b!3205461) (not b_lambda!87847) (not bm!232130) (not b!3206298) (not b!3206484) (not d!878632) (not d!878540) (not b!3206165) (not d!878256) (not b!3206424) (not b!3206547) (not b!3205537) (not b!3206390) (not b!3207021) (not b!3205474) (not b!3206739) (not b!3206702) (not b!3206656) (not b!3206713) (not b!3206655) (not b!3206764) (not d!877956) (not b!3206733) (not b!3206631) (not b!3206597) (not d!878528) (not bs!541491) (not d!878638) (not d!878308) (not d!878346) (not b_lambda!87845) (not d!878374) (not b!3206480) (not b!3206707) (not b!3205606) (not b!3206790) b_and!213539 (not b_lambda!87829) (not d!878200) (not d!877790) (not bm!232100) b_and!213543 (not d!878292) (not b!3206339) (not b_lambda!87849) (not d!877668) (not d!878376) (not b!3206382) (not d!878428) (not b_lambda!87733) (not b!3205648) (not d!878432) (not b!3204885) (not b!3205845) (not b!3206545) (not b_next!85919) (not d!878382) (not d!878614) (not b!3207113) (not bm!232157) (not b!3207085) (not b!3207063) (not b!3206535) (not b!3206482) (not b!3206318) (not b!3206399) (not b_lambda!87719) (not b!3206262) (not d!878628) (not bm!232098) (not b!3205698) (not b!3206774) (not d!878550) (not b!3206714) (not b!3207112) (not b!3206740) (not d!878602) (not b!3207108) (not b!3206761) (not b!3206591) (not d!877814) b_and!213401 (not b!3207114) (not d!878272) (not b!3206258) (not b!3207168) (not b_lambda!87795) (not d!877754) (not b!3206724) (not b_next!85911) (not b!3205921) (not bm!232029) (not b!3206426) (not bm!232132) (not b!3206360) (not d!878646) (not bm!232033) (not b_lambda!87715) (not b!3205810) (not b!3205541) (not b!3207151) (not b!3206372) (not d!878210) (not b!3206609) (not b!3206362) (not d!878360) (not b!3205679) (not b!3206128) (not b!3206297) (not b!3207030) (not b!3206758) (not d!878484) (not b!3206763) (not d!878570) (not b!3206531) (not b_next!85907) (not b!3205355) (not b!3206821) (not bm!232019) (not b!3206536) (not bm!232119) (not b_next!85937) (not b!3206259) (not d!878532) (not b!3206343) (not b!3207084) (not b!3207146) (not b!3206276) (not b!3206569) (not b_next!85939) (not d!878350) (not b!3206157) (not d!877800) (not d!878280) (not b!3206811) (not bm!232144) (not d!878556) (not bm!232164) (not b!3205543) (not d!877898) (not b!3205861) (not bm!232060) (not b!3205822) (not b!3205806) (not d!878610) (not b!3205465) (not b!3206373) (not b!3206453) (not d!878306) (not d!878436) (not b!3206769) (not d!877958) (not bm!232031) (not b!3205642) (not b!3206164) (not b!3206839) b_and!213407 (not b!3207102) (not b!3206618) (not bm!232154) (not b!3206358) (not d!877690) (not d!878348) (not b!3206607) (not b!3206731) (not tb!157299) (not d!878560) (not d!878662) (not d!878576) (not d!877704) (not b!3206166) (not b!3206282) (not bm!232156) (not b!3206264) (not d!878552) (not b!3206375) (not d!878856) (not bm!232059) (not d!878422) (not d!878222) (not d!877752) (not d!878128) (not b!3206368) (not b_next!85909) (not d!877836) (not d!878356) (not d!878648) (not bm!232102) (not d!877670) (not d!878396) (not b!3207003) (not b_lambda!87725) (not b!3206541) (not b!3206601) (not b!3206698) (not b!3207089) (not b!3205676) (not b!3206619) (not d!878584) (not d!877788) (not d!878604) (not b!3207022) (not d!878622) (not b!3206657) (not b!3206129) (not bm!232162) (not d!877882) (not bm!232163) (not b!3207154) (not b!3206753) (not b!3206706) (not d!878658) (not d!878678) (not b!3206285) (not d!878384) (not b!3206240) (not b!3206722) (not d!877930) (not b!3206743) (not b!3207158) (not b!3207106) (not b!3207145) (not tb!157389) (not b!3206413) (not b!3205699) (not b!3206627) (not b!3205455) (not b!3205903) (not d!878290) (not d!878686) (not bm!232056) (not d!878426) (not d!878704) (not b!3206719) (not b!3205911) (not b_next!85905) (not b!3205644) (not d!878634) (not b!3207119) (not b!3206179) (not d!878204) (not b!3207078) (not d!877934) (not b!3206700) (not d!878692) (not b!3206583) (not b!3206153) (not b!3207142) (not d!877740) (not d!877962) (not d!878640) (not b!3206683) (not d!878578) (not b!3206370) (not b_lambda!87731) (not b!3206249) (not d!878160) (not d!878190) (not b!3205512) (not b!3206815) (not b_lambda!87841) (not b!3207072) (not b!3206717) (not d!878372) (not b!3207155) (not b!3206376) (not b!3207147) (not d!877772) (not b_lambda!87787) (not d!878182) (not b!3206168) (not d!878260) (not d!877742) (not b!3206163) (not bm!232127) (not b!3205565) (not b!3205904) (not bm!232142) (not b!3206843) (not b!3207081) (not d!877674) (not b!3206695) (not tb!157399) (not d!878624) (not b_next!85935) (not d!878394) (not b!3206278) (not d!878228) (not b!3206431) (not b_lambda!87727) (not b!3205814) (not d!878574) (not b!3207118) (not b!3207129) (not b!3207050) (not d!878874) (not bm!232104) (not d!878206) (not b!3206280) (not b!3206130) (not d!878162) (not d!877912) (not b!3205815) (not b!3206603) (not b_lambda!87721) (not d!878668) (not d!878594) (not b!3206401) (not b!3207100) (not bm!232124) (not b!3204896) (not d!877666) (not b!3207062) (not b!3206147) (not b!3206685) (not b!3207035) (not d!878178) (not b!3206787) (not d!878196) (not d!878142) (not b!3206568) (not d!878226) (not d!878254) b_and!213545 (not b!3206613) (not b!3207140) (not d!877896) (not b!3206566) (not b!3206374) (not b!3207159) (not d!878158) (not b!3207029) (not b!3207110) (not d!878330) (not bm!232101) (not d!878666) (not d!878172) (not b!3207126) (not b!3206615) (not d!878124) (not b!3206454) (not b!3206701) (not d!878596) (not b!3207157) (not bm!232167) (not b_lambda!87807) (not d!877928) (not d!878688) (not b!3205569) (not d!878412) (not b!3206768) (not d!877886) (not d!878218) (not b!3207130) (not bm!232146) (not b!3206260) (not d!878684) (not b!3205370) (not b!3207096) (not d!877778) (not bm!232145) (not d!878188) (not d!877828) (not b!3206383) (not b!3206251) (not b!3206837) (not b!3205469) (not b!3205356) (not b_lambda!87837) (not b!3207111) (not b!3206365) (not d!877702) (not b!3205840) (not b!3206364) (not b!3206841) (not b!3206333) (not d!877756) (not d!878446) (not b!3206321) (not b!3206277) (not b!3207048) (not b!3205844) (not b_lambda!87833) (not b!3205823) (not d!878370) (not b!3206267) (not b!3205687) (not bm!232160) (not b!3205751) (not b_next!85921) (not b!3206624) (not tb!157419) (not b!3207117) (not b_lambda!87831) (not b!3206388) (not d!878198) (not d!878630) (not b!3206737) (not b!3206340) (not d!877954) (not d!878680) b_and!213513 (not b!3207131) (not b!3205839) (not d!877722) (not b!3206725) (not d!878258) (not b!3206565) (not d!878202) (not b!3206711) (not b!3205681) (not b!3206585) (not tb!157429) (not b!3207082) (not b!3207156) (not b!3207047) (not d!878276) b_and!213405 (not d!878368) (not b!3207107) (not b!3205460) (not d!877900) (not b!3204858) (not b!3205912) (not b!3207097) (not b!3205816) (not b_lambda!87723) (not b!3207115) (not d!878502) (not b!3206595) (not b!3206679) b_and!213511 (not d!878656) (not b!3206654) (not d!877804) (not b!3206182) (not d!878294) (not b!3206533) (not d!878700) (not b!3206755) (not d!878872) (not b!3205631) (not b!3205750) (not d!878146) (not b!3207148) (not b!3206145) (not d!878858) (not b!3205683) (not b!3206432) (not d!877910) (not d!878580) (not d!877728) (not d!878494) (not b!3206805) (not b_lambda!87717) (not b!3206299) (not b!3206602) (not b!3205622) (not b!3206507) (not b!3206142) (not b!3206620) (not d!877908) (not b!3206155) (not d!878168) (not b!3206807) (not d!878600) (not b!3205640) (not b!3205645) (not b!3207006) (not d!878262) (not d!878000) (not d!878176) (not d!877682) (not b!3205367) (not b!3205749) (not b!3205813) b_and!213399 (not d!878264) (not b!3206710) (not d!878620) (not d!878548) (not b!3206231) (not d!877906) (not d!878642) (not bm!232116) (not b!3206727) (not b!3206395) (not bm!232169) (not b!3205580) (not b!3205846) (not d!877736) (not d!878248) (not b!3206801) (not b!3205677) (not b!3206621) (not b!3206242) (not d!877830) (not d!878854) (not b!3205466) (not b!3206353) (not d!878420) (not b!3207090) (not d!877780) (not d!878598) (not b!3205538) (not d!878186) (not b!3207136) (not b!3205847) (not d!878250) (not b!3206544) (not b!3207031) (not b!3207023) (not d!878166) (not b!3206409) (not bm!232159) (not d!877776) (not b!3207091) (not bm!232103) (not b!3205621) (not b!3205682) (not b!3205913) (not b!3206481) (not b!3207002) (not b!3207101) (not b!3206728) (not b!3207141) (not d!878378) (not b!3206777) (not b!3207167) (not bm!232035) (not b!3205567))
(check-sat (not b_next!85915) (not b_next!85923) b_and!213403 (not b_next!85919) (not b_next!85907) b_and!213407 (not b_next!85909) (not b_next!85905) (not b_next!85935) b_and!213545 b_and!213405 b_and!213511 b_and!213399 (not b_next!85917) (not b_next!85933) b_and!213515 b_and!213541 b_and!213509 (not b_next!85913) b_and!213517 b_and!213539 b_and!213543 (not b_next!85911) b_and!213401 (not b_next!85937) (not b_next!85939) (not b_next!85921) b_and!213513)

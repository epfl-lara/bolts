; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!175358 () Bool)

(assert start!175358)

(declare-fun b!1768443 () Bool)

(declare-fun b_free!48967 () Bool)

(declare-fun b_next!49671 () Bool)

(assert (=> b!1768443 (= b_free!48967 (not b_next!49671))))

(declare-fun tp!501810 () Bool)

(declare-fun b_and!134267 () Bool)

(assert (=> b!1768443 (= tp!501810 b_and!134267)))

(declare-fun b_free!48969 () Bool)

(declare-fun b_next!49673 () Bool)

(assert (=> b!1768443 (= b_free!48969 (not b_next!49673))))

(declare-fun tp!501818 () Bool)

(declare-fun b_and!134269 () Bool)

(assert (=> b!1768443 (= tp!501818 b_and!134269)))

(declare-fun b!1768441 () Bool)

(declare-fun b_free!48971 () Bool)

(declare-fun b_next!49675 () Bool)

(assert (=> b!1768441 (= b_free!48971 (not b_next!49675))))

(declare-fun tp!501812 () Bool)

(declare-fun b_and!134271 () Bool)

(assert (=> b!1768441 (= tp!501812 b_and!134271)))

(declare-fun b_free!48973 () Bool)

(declare-fun b_next!49677 () Bool)

(assert (=> b!1768441 (= b_free!48973 (not b_next!49677))))

(declare-fun tp!501809 () Bool)

(declare-fun b_and!134273 () Bool)

(assert (=> b!1768441 (= tp!501809 b_and!134273)))

(declare-fun b!1768458 () Bool)

(declare-fun b_free!48975 () Bool)

(declare-fun b_next!49679 () Bool)

(assert (=> b!1768458 (= b_free!48975 (not b_next!49679))))

(declare-fun tp!501817 () Bool)

(declare-fun b_and!134275 () Bool)

(assert (=> b!1768458 (= tp!501817 b_and!134275)))

(declare-fun b_free!48977 () Bool)

(declare-fun b_next!49681 () Bool)

(assert (=> b!1768458 (= b_free!48977 (not b_next!49681))))

(declare-fun tp!501808 () Bool)

(declare-fun b_and!134277 () Bool)

(assert (=> b!1768458 (= tp!501808 b_and!134277)))

(declare-fun b!1768478 () Bool)

(declare-fun e!1131775 () Bool)

(assert (=> b!1768478 (= e!1131775 true)))

(declare-fun b!1768477 () Bool)

(declare-fun e!1131774 () Bool)

(assert (=> b!1768477 (= e!1131774 e!1131775)))

(declare-fun b!1768476 () Bool)

(declare-fun e!1131773 () Bool)

(assert (=> b!1768476 (= e!1131773 e!1131774)))

(declare-fun b!1768463 () Bool)

(assert (=> b!1768463 e!1131773))

(assert (= b!1768477 b!1768478))

(assert (= b!1768476 b!1768477))

(assert (= b!1768463 b!1768476))

(declare-datatypes ((List!19547 0))(
  ( (Nil!19477) (Cons!19477 (h!24878 (_ BitVec 16)) (t!165060 List!19547)) )
))
(declare-datatypes ((TokenValue!3573 0))(
  ( (FloatLiteralValue!7146 (text!25456 List!19547)) (TokenValueExt!3572 (__x!12448 Int)) (Broken!17865 (value!108912 List!19547)) (Object!3642) (End!3573) (Def!3573) (Underscore!3573) (Match!3573) (Else!3573) (Error!3573) (Case!3573) (If!3573) (Extends!3573) (Abstract!3573) (Class!3573) (Val!3573) (DelimiterValue!7146 (del!3633 List!19547)) (KeywordValue!3579 (value!108913 List!19547)) (CommentValue!7146 (value!108914 List!19547)) (WhitespaceValue!7146 (value!108915 List!19547)) (IndentationValue!3573 (value!108916 List!19547)) (String!22196) (Int32!3573) (Broken!17866 (value!108917 List!19547)) (Boolean!3574) (Unit!33671) (OperatorValue!3576 (op!3633 List!19547)) (IdentifierValue!7146 (value!108918 List!19547)) (IdentifierValue!7147 (value!108919 List!19547)) (WhitespaceValue!7147 (value!108920 List!19547)) (True!7146) (False!7146) (Broken!17867 (value!108921 List!19547)) (Broken!17868 (value!108922 List!19547)) (True!7147) (RightBrace!3573) (RightBracket!3573) (Colon!3573) (Null!3573) (Comma!3573) (LeftBracket!3573) (False!7147) (LeftBrace!3573) (ImaginaryLiteralValue!3573 (text!25457 List!19547)) (StringLiteralValue!10719 (value!108923 List!19547)) (EOFValue!3573 (value!108924 List!19547)) (IdentValue!3573 (value!108925 List!19547)) (DelimiterValue!7147 (value!108926 List!19547)) (DedentValue!3573 (value!108927 List!19547)) (NewLineValue!3573 (value!108928 List!19547)) (IntegerValue!10719 (value!108929 (_ BitVec 32)) (text!25458 List!19547)) (IntegerValue!10720 (value!108930 Int) (text!25459 List!19547)) (Times!3573) (Or!3573) (Equal!3573) (Minus!3573) (Broken!17869 (value!108931 List!19547)) (And!3573) (Div!3573) (LessEqual!3573) (Mod!3573) (Concat!8384) (Not!3573) (Plus!3573) (SpaceValue!3573 (value!108932 List!19547)) (IntegerValue!10721 (value!108933 Int) (text!25460 List!19547)) (StringLiteralValue!10720 (text!25461 List!19547)) (FloatLiteralValue!7147 (text!25462 List!19547)) (BytesLiteralValue!3573 (value!108934 List!19547)) (CommentValue!7147 (value!108935 List!19547)) (StringLiteralValue!10721 (value!108936 List!19547)) (ErrorTokenValue!3573 (msg!3634 List!19547)) )
))
(declare-datatypes ((C!9796 0))(
  ( (C!9797 (val!5494 Int)) )
))
(declare-datatypes ((List!19548 0))(
  ( (Nil!19478) (Cons!19478 (h!24879 C!9796) (t!165061 List!19548)) )
))
(declare-datatypes ((Regex!4811 0))(
  ( (ElementMatch!4811 (c!287942 C!9796)) (Concat!8385 (regOne!10134 Regex!4811) (regTwo!10134 Regex!4811)) (EmptyExpr!4811) (Star!4811 (reg!5140 Regex!4811)) (EmptyLang!4811) (Union!4811 (regOne!10135 Regex!4811) (regTwo!10135 Regex!4811)) )
))
(declare-datatypes ((String!22197 0))(
  ( (String!22198 (value!108937 String)) )
))
(declare-datatypes ((IArray!12963 0))(
  ( (IArray!12964 (innerList!6539 List!19548)) )
))
(declare-datatypes ((Conc!6479 0))(
  ( (Node!6479 (left!15598 Conc!6479) (right!15928 Conc!6479) (csize!13188 Int) (cheight!6690 Int)) (Leaf!9441 (xs!9355 IArray!12963) (csize!13189 Int)) (Empty!6479) )
))
(declare-datatypes ((BalanceConc!12902 0))(
  ( (BalanceConc!12903 (c!287943 Conc!6479)) )
))
(declare-datatypes ((TokenValueInjection!6806 0))(
  ( (TokenValueInjection!6807 (toValue!5006 Int) (toChars!4865 Int)) )
))
(declare-datatypes ((Rule!6766 0))(
  ( (Rule!6767 (regex!3483 Regex!4811) (tag!3861 String!22197) (isSeparator!3483 Bool) (transformation!3483 TokenValueInjection!6806)) )
))
(declare-datatypes ((Token!6532 0))(
  ( (Token!6533 (value!108938 TokenValue!3573) (rule!5521 Rule!6766) (size!15470 Int) (originalCharacters!4297 List!19548)) )
))
(declare-datatypes ((tuple2!19082 0))(
  ( (tuple2!19083 (_1!10943 Token!6532) (_2!10943 List!19548)) )
))
(declare-fun lt!684574 () tuple2!19082)

(declare-fun order!12429 () Int)

(declare-fun order!12427 () Int)

(declare-fun lambda!70356 () Int)

(declare-fun dynLambda!9446 (Int Int) Int)

(declare-fun dynLambda!9447 (Int Int) Int)

(assert (=> b!1768478 (< (dynLambda!9446 order!12427 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) (dynLambda!9447 order!12429 lambda!70356))))

(declare-fun order!12431 () Int)

(declare-fun dynLambda!9448 (Int Int) Int)

(assert (=> b!1768478 (< (dynLambda!9448 order!12431 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) (dynLambda!9447 order!12429 lambda!70356))))

(declare-fun b!1768437 () Bool)

(declare-fun res!796337 () Bool)

(declare-fun e!1131755 () Bool)

(assert (=> b!1768437 (=> (not res!796337) (not e!1131755))))

(declare-datatypes ((List!19549 0))(
  ( (Nil!19479) (Cons!19479 (h!24880 Rule!6766) (t!165062 List!19549)) )
))
(declare-fun rules!3447 () List!19549)

(declare-fun isEmpty!12296 (List!19549) Bool)

(assert (=> b!1768437 (= res!796337 (not (isEmpty!12296 rules!3447)))))

(declare-fun tp!501813 () Bool)

(declare-fun token!523 () Token!6532)

(declare-fun e!1131741 () Bool)

(declare-fun e!1131746 () Bool)

(declare-fun b!1768438 () Bool)

(declare-fun inv!25308 (String!22197) Bool)

(declare-fun inv!25313 (TokenValueInjection!6806) Bool)

(assert (=> b!1768438 (= e!1131746 (and tp!501813 (inv!25308 (tag!3861 (rule!5521 token!523))) (inv!25313 (transformation!3483 (rule!5521 token!523))) e!1131741))))

(declare-fun rule!422 () Rule!6766)

(declare-fun b!1768439 () Bool)

(declare-fun e!1131750 () Bool)

(declare-fun e!1131753 () Bool)

(declare-fun tp!501815 () Bool)

(assert (=> b!1768439 (= e!1131753 (and tp!501815 (inv!25308 (tag!3861 rule!422)) (inv!25313 (transformation!3483 rule!422)) e!1131750))))

(declare-fun b!1768440 () Bool)

(declare-fun e!1131743 () Bool)

(declare-fun lt!684552 () Rule!6766)

(assert (=> b!1768440 (= e!1131743 (= (rule!5521 (_1!10943 lt!684574)) lt!684552))))

(assert (=> b!1768441 (= e!1131750 (and tp!501812 tp!501809))))

(declare-fun res!796350 () Bool)

(assert (=> start!175358 (=> (not res!796350) (not e!1131755))))

(declare-datatypes ((LexerInterface!3112 0))(
  ( (LexerInterfaceExt!3109 (__x!12449 Int)) (Lexer!3110) )
))
(declare-fun thiss!24550 () LexerInterface!3112)

(get-info :version)

(assert (=> start!175358 (= res!796350 ((_ is Lexer!3110) thiss!24550))))

(assert (=> start!175358 e!1131755))

(declare-fun e!1131765 () Bool)

(assert (=> start!175358 e!1131765))

(assert (=> start!175358 e!1131753))

(assert (=> start!175358 true))

(declare-fun e!1131759 () Bool)

(declare-fun inv!25314 (Token!6532) Bool)

(assert (=> start!175358 (and (inv!25314 token!523) e!1131759)))

(declare-fun e!1131757 () Bool)

(assert (=> start!175358 e!1131757))

(declare-fun b!1768442 () Bool)

(declare-fun res!796348 () Bool)

(declare-fun e!1131766 () Bool)

(assert (=> b!1768442 (=> res!796348 e!1131766)))

(declare-fun suffix!1421 () List!19548)

(declare-fun isEmpty!12297 (List!19548) Bool)

(assert (=> b!1768442 (= res!796348 (isEmpty!12297 suffix!1421))))

(assert (=> b!1768443 (= e!1131741 (and tp!501810 tp!501818))))

(declare-fun b!1768444 () Bool)

(declare-fun e!1131742 () Bool)

(declare-fun lt!684564 () List!19548)

(declare-fun lt!684559 () List!19548)

(declare-fun size!15471 (List!19548) Int)

(assert (=> b!1768444 (= e!1131742 (< (size!15471 lt!684564) (size!15471 lt!684559)))))

(declare-fun b!1768445 () Bool)

(declare-fun e!1131754 () Bool)

(assert (=> b!1768445 (= e!1131754 (not e!1131766))))

(declare-fun res!796355 () Bool)

(assert (=> b!1768445 (=> res!796355 e!1131766)))

(declare-fun matchR!2284 (Regex!4811 List!19548) Bool)

(assert (=> b!1768445 (= res!796355 (not (matchR!2284 (regex!3483 rule!422) lt!684564)))))

(declare-fun ruleValid!981 (LexerInterface!3112 Rule!6766) Bool)

(assert (=> b!1768445 (ruleValid!981 thiss!24550 rule!422)))

(declare-datatypes ((Unit!33672 0))(
  ( (Unit!33673) )
))
(declare-fun lt!684562 () Unit!33672)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!504 (LexerInterface!3112 Rule!6766 List!19549) Unit!33672)

(assert (=> b!1768445 (= lt!684562 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!504 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1768446 () Bool)

(declare-fun e!1131758 () Bool)

(assert (=> b!1768446 (= e!1131755 e!1131758)))

(declare-fun res!796339 () Bool)

(assert (=> b!1768446 (=> (not res!796339) (not e!1131758))))

(declare-datatypes ((Option!3988 0))(
  ( (None!3987) (Some!3987 (v!25460 tuple2!19082)) )
))
(declare-fun lt!684579 () Option!3988)

(declare-fun isDefined!3331 (Option!3988) Bool)

(assert (=> b!1768446 (= res!796339 (isDefined!3331 lt!684579))))

(declare-fun maxPrefix!1666 (LexerInterface!3112 List!19549 List!19548) Option!3988)

(assert (=> b!1768446 (= lt!684579 (maxPrefix!1666 thiss!24550 rules!3447 lt!684564))))

(declare-fun lt!684553 () BalanceConc!12902)

(declare-fun list!7909 (BalanceConc!12902) List!19548)

(assert (=> b!1768446 (= lt!684564 (list!7909 lt!684553))))

(declare-fun charsOf!2132 (Token!6532) BalanceConc!12902)

(assert (=> b!1768446 (= lt!684553 (charsOf!2132 token!523))))

(declare-fun b!1768447 () Bool)

(declare-fun e!1131740 () Bool)

(assert (=> b!1768447 (= e!1131766 e!1131740)))

(declare-fun res!796336 () Bool)

(assert (=> b!1768447 (=> res!796336 e!1131740)))

(declare-fun lt!684581 () Regex!4811)

(declare-fun prefixMatch!694 (Regex!4811 List!19548) Bool)

(declare-fun ++!5307 (List!19548 List!19548) List!19548)

(declare-fun head!4110 (List!19548) C!9796)

(assert (=> b!1768447 (= res!796336 (prefixMatch!694 lt!684581 (++!5307 lt!684564 (Cons!19478 (head!4110 suffix!1421) Nil!19478))))))

(declare-fun rulesRegex!839 (LexerInterface!3112 List!19549) Regex!4811)

(assert (=> b!1768447 (= lt!684581 (rulesRegex!839 thiss!24550 rules!3447))))

(declare-fun b!1768448 () Bool)

(declare-fun res!796338 () Bool)

(assert (=> b!1768448 (=> (not res!796338) (not e!1131754))))

(assert (=> b!1768448 (= res!796338 (= (rule!5521 token!523) rule!422))))

(declare-fun b!1768449 () Bool)

(declare-fun e!1131763 () Bool)

(declare-fun e!1131761 () Bool)

(assert (=> b!1768449 (= e!1131763 e!1131761)))

(declare-fun res!796342 () Bool)

(assert (=> b!1768449 (=> res!796342 e!1131761)))

(declare-fun lt!684568 () Int)

(declare-fun size!15472 (BalanceConc!12902) Int)

(assert (=> b!1768449 (= res!796342 (<= lt!684568 (size!15472 lt!684553)))))

(assert (=> b!1768449 (matchR!2284 lt!684581 lt!684564)))

(declare-fun lt!684570 () Unit!33672)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!190 (LexerInterface!3112 List!19549 List!19548 Token!6532 Rule!6766 List!19548) Unit!33672)

(assert (=> b!1768449 (= lt!684570 (lemmaMaxPrefixThenMatchesRulesRegex!190 thiss!24550 rules!3447 lt!684564 token!523 rule!422 Nil!19478))))

(declare-fun b!1768450 () Bool)

(declare-fun e!1131747 () Bool)

(assert (=> b!1768450 (= e!1131740 e!1131747)))

(declare-fun res!796351 () Bool)

(assert (=> b!1768450 (=> res!796351 e!1131747)))

(declare-fun lt!684567 () List!19548)

(declare-fun isPrefix!1723 (List!19548 List!19548) Bool)

(assert (=> b!1768450 (= res!796351 (not (isPrefix!1723 lt!684567 lt!684559)))))

(assert (=> b!1768450 (isPrefix!1723 lt!684567 (++!5307 lt!684567 (_2!10943 lt!684574)))))

(declare-fun lt!684550 () Unit!33672)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1232 (List!19548 List!19548) Unit!33672)

(assert (=> b!1768450 (= lt!684550 (lemmaConcatTwoListThenFirstIsPrefix!1232 lt!684567 (_2!10943 lt!684574)))))

(declare-fun lt!684569 () BalanceConc!12902)

(assert (=> b!1768450 (= lt!684567 (list!7909 lt!684569))))

(assert (=> b!1768450 (= lt!684569 (charsOf!2132 (_1!10943 lt!684574)))))

(declare-fun e!1131752 () Bool)

(assert (=> b!1768450 e!1131752))

(declare-fun res!796353 () Bool)

(assert (=> b!1768450 (=> (not res!796353) (not e!1131752))))

(declare-datatypes ((Option!3989 0))(
  ( (None!3988) (Some!3988 (v!25461 Rule!6766)) )
))
(declare-fun lt!684554 () Option!3989)

(declare-fun isDefined!3332 (Option!3989) Bool)

(assert (=> b!1768450 (= res!796353 (isDefined!3332 lt!684554))))

(declare-fun getRuleFromTag!531 (LexerInterface!3112 List!19549 String!22197) Option!3989)

(assert (=> b!1768450 (= lt!684554 (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 (_1!10943 lt!684574)))))))

(declare-fun lt!684580 () Unit!33672)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!531 (LexerInterface!3112 List!19549 List!19548 Token!6532) Unit!33672)

(assert (=> b!1768450 (= lt!684580 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!531 thiss!24550 rules!3447 lt!684559 (_1!10943 lt!684574)))))

(declare-fun lt!684563 () Option!3988)

(declare-fun get!5947 (Option!3988) tuple2!19082)

(assert (=> b!1768450 (= lt!684574 (get!5947 lt!684563))))

(declare-fun lt!684572 () Unit!33672)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!634 (LexerInterface!3112 List!19549 List!19548 List!19548) Unit!33672)

(assert (=> b!1768450 (= lt!684572 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!634 thiss!24550 rules!3447 lt!684564 suffix!1421))))

(assert (=> b!1768450 (= lt!684563 (maxPrefix!1666 thiss!24550 rules!3447 lt!684559))))

(assert (=> b!1768450 (isPrefix!1723 lt!684564 lt!684559)))

(declare-fun lt!684560 () Unit!33672)

(assert (=> b!1768450 (= lt!684560 (lemmaConcatTwoListThenFirstIsPrefix!1232 lt!684564 suffix!1421))))

(assert (=> b!1768450 (= lt!684559 (++!5307 lt!684564 suffix!1421))))

(declare-fun b!1768451 () Bool)

(declare-fun e!1131764 () Bool)

(declare-fun tp!501807 () Bool)

(assert (=> b!1768451 (= e!1131757 (and e!1131764 tp!501807))))

(declare-fun b!1768452 () Bool)

(declare-fun res!796341 () Bool)

(assert (=> b!1768452 (=> res!796341 e!1131747)))

(assert (=> b!1768452 (= res!796341 (not (matchR!2284 (regex!3483 (rule!5521 (_1!10943 lt!684574))) lt!684567)))))

(declare-fun b!1768453 () Bool)

(declare-fun res!796344 () Bool)

(assert (=> b!1768453 (=> (not res!796344) (not e!1131754))))

(declare-fun lt!684582 () tuple2!19082)

(assert (=> b!1768453 (= res!796344 (isEmpty!12297 (_2!10943 lt!684582)))))

(declare-fun tp!501811 () Bool)

(declare-fun b!1768454 () Bool)

(declare-fun inv!21 (TokenValue!3573) Bool)

(assert (=> b!1768454 (= e!1131759 (and (inv!21 (value!108938 token!523)) e!1131746 tp!501811))))

(declare-fun b!1768455 () Bool)

(assert (=> b!1768455 (= e!1131761 e!1131742)))

(declare-fun res!796340 () Bool)

(assert (=> b!1768455 (=> res!796340 e!1131742)))

(declare-fun lt!684573 () List!19548)

(assert (=> b!1768455 (= res!796340 (not (= lt!684573 suffix!1421)))))

(assert (=> b!1768455 (= suffix!1421 lt!684573)))

(declare-fun lt!684551 () Unit!33672)

(declare-fun lemmaSamePrefixThenSameSuffix!834 (List!19548 List!19548 List!19548 List!19548 List!19548) Unit!33672)

(assert (=> b!1768455 (= lt!684551 (lemmaSamePrefixThenSameSuffix!834 lt!684564 suffix!1421 lt!684564 lt!684573 lt!684559))))

(declare-fun getSuffix!890 (List!19548 List!19548) List!19548)

(assert (=> b!1768455 (= lt!684573 (getSuffix!890 lt!684559 lt!684564))))

(assert (=> b!1768455 (matchR!2284 lt!684581 lt!684567)))

(declare-fun lt!684566 () Unit!33672)

(assert (=> b!1768455 (= lt!684566 (lemmaMaxPrefixThenMatchesRulesRegex!190 thiss!24550 rules!3447 lt!684559 (_1!10943 lt!684574) (rule!5521 (_1!10943 lt!684574)) (_2!10943 lt!684574)))))

(declare-fun b!1768456 () Bool)

(declare-fun e!1131751 () Bool)

(declare-fun e!1131748 () Bool)

(assert (=> b!1768456 (= e!1131751 e!1131748)))

(declare-fun res!796349 () Bool)

(assert (=> b!1768456 (=> res!796349 e!1131748)))

(declare-fun dynLambda!9449 (Int TokenValue!3573) BalanceConc!12902)

(declare-fun dynLambda!9450 (Int BalanceConc!12902) TokenValue!3573)

(assert (=> b!1768456 (= res!796349 (not (= (list!7909 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))) lt!684567)))))

(declare-fun lt!684557 () Unit!33672)

(declare-fun lemmaSemiInverse!621 (TokenValueInjection!6806 BalanceConc!12902) Unit!33672)

(assert (=> b!1768456 (= lt!684557 (lemmaSemiInverse!621 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) lt!684569))))

(declare-fun tp!501814 () Bool)

(declare-fun e!1131762 () Bool)

(declare-fun b!1768457 () Bool)

(assert (=> b!1768457 (= e!1131764 (and tp!501814 (inv!25308 (tag!3861 (h!24880 rules!3447))) (inv!25313 (transformation!3483 (h!24880 rules!3447))) e!1131762))))

(assert (=> b!1768458 (= e!1131762 (and tp!501817 tp!501808))))

(declare-fun b!1768459 () Bool)

(declare-fun res!796346 () Bool)

(assert (=> b!1768459 (=> (not res!796346) (not e!1131755))))

(declare-fun contains!3513 (List!19549 Rule!6766) Bool)

(assert (=> b!1768459 (= res!796346 (contains!3513 rules!3447 rule!422))))

(declare-fun b!1768460 () Bool)

(declare-fun e!1131744 () Bool)

(assert (=> b!1768460 (= e!1131748 e!1131744)))

(declare-fun res!796356 () Bool)

(assert (=> b!1768460 (=> res!796356 e!1131744)))

(declare-fun lt!684556 () TokenValue!3573)

(assert (=> b!1768460 (= res!796356 (not (= lt!684563 (Some!3987 (tuple2!19083 (Token!6533 lt!684556 (rule!5521 (_1!10943 lt!684574)) lt!684568 lt!684567) (_2!10943 lt!684574))))))))

(assert (=> b!1768460 (= lt!684568 (size!15472 lt!684569))))

(declare-fun apply!5283 (TokenValueInjection!6806 BalanceConc!12902) TokenValue!3573)

(assert (=> b!1768460 (= lt!684556 (apply!5283 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) lt!684569))))

(declare-fun lt!684558 () Unit!33672)

(declare-fun lemmaCharactersSize!541 (Token!6532) Unit!33672)

(assert (=> b!1768460 (= lt!684558 (lemmaCharactersSize!541 (_1!10943 lt!684574)))))

(declare-fun lt!684561 () Unit!33672)

(declare-fun lemmaEqSameImage!394 (TokenValueInjection!6806 BalanceConc!12902 BalanceConc!12902) Unit!33672)

(declare-fun seqFromList!2452 (List!19548) BalanceConc!12902)

(assert (=> b!1768460 (= lt!684561 (lemmaEqSameImage!394 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) lt!684569 (seqFromList!2452 (originalCharacters!4297 (_1!10943 lt!684574)))))))

(declare-fun b!1768461 () Bool)

(assert (=> b!1768461 (= e!1131744 e!1131763)))

(declare-fun res!796352 () Bool)

(assert (=> b!1768461 (=> res!796352 e!1131763)))

(declare-fun lt!684578 () Option!3988)

(declare-fun lt!684555 () List!19548)

(assert (=> b!1768461 (= res!796352 (or (not (= lt!684555 (_2!10943 lt!684574))) (not (= lt!684578 (Some!3987 (tuple2!19083 (_1!10943 lt!684574) lt!684555))))))))

(assert (=> b!1768461 (= (_2!10943 lt!684574) lt!684555)))

(declare-fun lt!684575 () Unit!33672)

(assert (=> b!1768461 (= lt!684575 (lemmaSamePrefixThenSameSuffix!834 lt!684567 (_2!10943 lt!684574) lt!684567 lt!684555 lt!684559))))

(assert (=> b!1768461 (= lt!684555 (getSuffix!890 lt!684559 lt!684567))))

(declare-fun lt!684571 () Int)

(declare-fun lt!684565 () TokenValue!3573)

(assert (=> b!1768461 (= lt!684578 (Some!3987 (tuple2!19083 (Token!6533 lt!684565 (rule!5521 (_1!10943 lt!684574)) lt!684571 lt!684567) (_2!10943 lt!684574))))))

(declare-fun maxPrefixOneRule!1035 (LexerInterface!3112 Rule!6766 List!19548) Option!3988)

(assert (=> b!1768461 (= lt!684578 (maxPrefixOneRule!1035 thiss!24550 (rule!5521 (_1!10943 lt!684574)) lt!684559))))

(assert (=> b!1768461 (= lt!684571 (size!15471 lt!684567))))

(assert (=> b!1768461 (= lt!684565 (apply!5283 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) (seqFromList!2452 lt!684567)))))

(declare-fun lt!684576 () Unit!33672)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!413 (LexerInterface!3112 List!19549 List!19548 List!19548 List!19548 Rule!6766) Unit!33672)

(assert (=> b!1768461 (= lt!684576 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!413 thiss!24550 rules!3447 lt!684567 lt!684559 (_2!10943 lt!684574) (rule!5521 (_1!10943 lt!684574))))))

(declare-fun b!1768462 () Bool)

(declare-fun tp_is_empty!7865 () Bool)

(declare-fun tp!501816 () Bool)

(assert (=> b!1768462 (= e!1131765 (and tp_is_empty!7865 tp!501816))))

(assert (=> b!1768463 (= e!1131747 e!1131751)))

(declare-fun res!796335 () Bool)

(assert (=> b!1768463 (=> res!796335 e!1131751)))

(declare-fun Forall!850 (Int) Bool)

(assert (=> b!1768463 (= res!796335 (not (Forall!850 lambda!70356)))))

(declare-fun lt!684577 () Unit!33672)

(declare-fun lemmaInv!682 (TokenValueInjection!6806) Unit!33672)

(assert (=> b!1768463 (= lt!684577 (lemmaInv!682 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))))

(declare-fun b!1768464 () Bool)

(assert (=> b!1768464 (= e!1131758 e!1131754)))

(declare-fun res!796354 () Bool)

(assert (=> b!1768464 (=> (not res!796354) (not e!1131754))))

(assert (=> b!1768464 (= res!796354 (= (_1!10943 lt!684582) token!523))))

(assert (=> b!1768464 (= lt!684582 (get!5947 lt!684579))))

(declare-fun b!1768465 () Bool)

(assert (=> b!1768465 (= e!1131752 e!1131743)))

(declare-fun res!796345 () Bool)

(assert (=> b!1768465 (=> (not res!796345) (not e!1131743))))

(assert (=> b!1768465 (= res!796345 (matchR!2284 (regex!3483 lt!684552) (list!7909 (charsOf!2132 (_1!10943 lt!684574)))))))

(declare-fun get!5948 (Option!3989) Rule!6766)

(assert (=> b!1768465 (= lt!684552 (get!5948 lt!684554))))

(declare-fun b!1768466 () Bool)

(declare-fun res!796343 () Bool)

(assert (=> b!1768466 (=> (not res!796343) (not e!1131755))))

(declare-fun rulesInvariant!2781 (LexerInterface!3112 List!19549) Bool)

(assert (=> b!1768466 (= res!796343 (rulesInvariant!2781 thiss!24550 rules!3447))))

(declare-fun b!1768467 () Bool)

(declare-fun res!796347 () Bool)

(assert (=> b!1768467 (=> res!796347 e!1131748)))

(assert (=> b!1768467 (= res!796347 (not (= lt!684569 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))))))

(assert (= (and start!175358 res!796350) b!1768437))

(assert (= (and b!1768437 res!796337) b!1768466))

(assert (= (and b!1768466 res!796343) b!1768459))

(assert (= (and b!1768459 res!796346) b!1768446))

(assert (= (and b!1768446 res!796339) b!1768464))

(assert (= (and b!1768464 res!796354) b!1768453))

(assert (= (and b!1768453 res!796344) b!1768448))

(assert (= (and b!1768448 res!796338) b!1768445))

(assert (= (and b!1768445 (not res!796355)) b!1768442))

(assert (= (and b!1768442 (not res!796348)) b!1768447))

(assert (= (and b!1768447 (not res!796336)) b!1768450))

(assert (= (and b!1768450 res!796353) b!1768465))

(assert (= (and b!1768465 res!796345) b!1768440))

(assert (= (and b!1768450 (not res!796351)) b!1768452))

(assert (= (and b!1768452 (not res!796341)) b!1768463))

(assert (= (and b!1768463 (not res!796335)) b!1768456))

(assert (= (and b!1768456 (not res!796349)) b!1768467))

(assert (= (and b!1768467 (not res!796347)) b!1768460))

(assert (= (and b!1768460 (not res!796356)) b!1768461))

(assert (= (and b!1768461 (not res!796352)) b!1768449))

(assert (= (and b!1768449 (not res!796342)) b!1768455))

(assert (= (and b!1768455 (not res!796340)) b!1768444))

(assert (= (and start!175358 ((_ is Cons!19478) suffix!1421)) b!1768462))

(assert (= b!1768439 b!1768441))

(assert (= start!175358 b!1768439))

(assert (= b!1768438 b!1768443))

(assert (= b!1768454 b!1768438))

(assert (= start!175358 b!1768454))

(assert (= b!1768457 b!1768458))

(assert (= b!1768451 b!1768457))

(assert (= (and start!175358 ((_ is Cons!19479) rules!3447)) b!1768451))

(declare-fun b_lambda!57507 () Bool)

(assert (=> (not b_lambda!57507) (not b!1768456)))

(declare-fun t!165043 () Bool)

(declare-fun tb!106911 () Bool)

(assert (=> (and b!1768443 (= (toChars!4865 (transformation!3483 (rule!5521 token!523))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165043) tb!106911))

(declare-fun tp!501821 () Bool)

(declare-fun b!1768483 () Bool)

(declare-fun e!1131778 () Bool)

(declare-fun inv!25315 (Conc!6479) Bool)

(assert (=> b!1768483 (= e!1131778 (and (inv!25315 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))) tp!501821))))

(declare-fun result!128626 () Bool)

(declare-fun inv!25316 (BalanceConc!12902) Bool)

(assert (=> tb!106911 (= result!128626 (and (inv!25316 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))) e!1131778))))

(assert (= tb!106911 b!1768483))

(declare-fun m!2186543 () Bool)

(assert (=> b!1768483 m!2186543))

(declare-fun m!2186545 () Bool)

(assert (=> tb!106911 m!2186545))

(assert (=> b!1768456 t!165043))

(declare-fun b_and!134279 () Bool)

(assert (= b_and!134269 (and (=> t!165043 result!128626) b_and!134279)))

(declare-fun tb!106913 () Bool)

(declare-fun t!165045 () Bool)

(assert (=> (and b!1768441 (= (toChars!4865 (transformation!3483 rule!422)) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165045) tb!106913))

(declare-fun result!128630 () Bool)

(assert (= result!128630 result!128626))

(assert (=> b!1768456 t!165045))

(declare-fun b_and!134281 () Bool)

(assert (= b_and!134273 (and (=> t!165045 result!128630) b_and!134281)))

(declare-fun t!165047 () Bool)

(declare-fun tb!106915 () Bool)

(assert (=> (and b!1768458 (= (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165047) tb!106915))

(declare-fun result!128632 () Bool)

(assert (= result!128632 result!128626))

(assert (=> b!1768456 t!165047))

(declare-fun b_and!134283 () Bool)

(assert (= b_and!134277 (and (=> t!165047 result!128632) b_and!134283)))

(declare-fun b_lambda!57509 () Bool)

(assert (=> (not b_lambda!57509) (not b!1768456)))

(declare-fun tb!106917 () Bool)

(declare-fun t!165049 () Bool)

(assert (=> (and b!1768443 (= (toValue!5006 (transformation!3483 (rule!5521 token!523))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165049) tb!106917))

(declare-fun result!128634 () Bool)

(assert (=> tb!106917 (= result!128634 (inv!21 (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))

(declare-fun m!2186547 () Bool)

(assert (=> tb!106917 m!2186547))

(assert (=> b!1768456 t!165049))

(declare-fun b_and!134285 () Bool)

(assert (= b_and!134267 (and (=> t!165049 result!128634) b_and!134285)))

(declare-fun tb!106919 () Bool)

(declare-fun t!165051 () Bool)

(assert (=> (and b!1768441 (= (toValue!5006 (transformation!3483 rule!422)) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165051) tb!106919))

(declare-fun result!128638 () Bool)

(assert (= result!128638 result!128634))

(assert (=> b!1768456 t!165051))

(declare-fun b_and!134287 () Bool)

(assert (= b_and!134271 (and (=> t!165051 result!128638) b_and!134287)))

(declare-fun tb!106921 () Bool)

(declare-fun t!165053 () Bool)

(assert (=> (and b!1768458 (= (toValue!5006 (transformation!3483 (h!24880 rules!3447))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165053) tb!106921))

(declare-fun result!128640 () Bool)

(assert (= result!128640 result!128634))

(assert (=> b!1768456 t!165053))

(declare-fun b_and!134289 () Bool)

(assert (= b_and!134275 (and (=> t!165053 result!128640) b_and!134289)))

(declare-fun b_lambda!57511 () Bool)

(assert (=> (not b_lambda!57511) (not b!1768467)))

(declare-fun tb!106923 () Bool)

(declare-fun t!165055 () Bool)

(assert (=> (and b!1768443 (= (toChars!4865 (transformation!3483 (rule!5521 token!523))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165055) tb!106923))

(declare-fun b!1768486 () Bool)

(declare-fun e!1131782 () Bool)

(declare-fun tp!501822 () Bool)

(assert (=> b!1768486 (= e!1131782 (and (inv!25315 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))) tp!501822))))

(declare-fun result!128642 () Bool)

(assert (=> tb!106923 (= result!128642 (and (inv!25316 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))) e!1131782))))

(assert (= tb!106923 b!1768486))

(declare-fun m!2186549 () Bool)

(assert (=> b!1768486 m!2186549))

(declare-fun m!2186551 () Bool)

(assert (=> tb!106923 m!2186551))

(assert (=> b!1768467 t!165055))

(declare-fun b_and!134291 () Bool)

(assert (= b_and!134279 (and (=> t!165055 result!128642) b_and!134291)))

(declare-fun tb!106925 () Bool)

(declare-fun t!165057 () Bool)

(assert (=> (and b!1768441 (= (toChars!4865 (transformation!3483 rule!422)) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165057) tb!106925))

(declare-fun result!128644 () Bool)

(assert (= result!128644 result!128642))

(assert (=> b!1768467 t!165057))

(declare-fun b_and!134293 () Bool)

(assert (= b_and!134281 (and (=> t!165057 result!128644) b_and!134293)))

(declare-fun tb!106927 () Bool)

(declare-fun t!165059 () Bool)

(assert (=> (and b!1768458 (= (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165059) tb!106927))

(declare-fun result!128646 () Bool)

(assert (= result!128646 result!128642))

(assert (=> b!1768467 t!165059))

(declare-fun b_and!134295 () Bool)

(assert (= b_and!134283 (and (=> t!165059 result!128646) b_and!134295)))

(declare-fun m!2186553 () Bool)

(assert (=> b!1768467 m!2186553))

(declare-fun m!2186555 () Bool)

(assert (=> b!1768459 m!2186555))

(declare-fun m!2186557 () Bool)

(assert (=> b!1768460 m!2186557))

(assert (=> b!1768460 m!2186557))

(declare-fun m!2186559 () Bool)

(assert (=> b!1768460 m!2186559))

(declare-fun m!2186561 () Bool)

(assert (=> b!1768460 m!2186561))

(declare-fun m!2186563 () Bool)

(assert (=> b!1768460 m!2186563))

(declare-fun m!2186565 () Bool)

(assert (=> b!1768460 m!2186565))

(declare-fun m!2186567 () Bool)

(assert (=> b!1768464 m!2186567))

(declare-fun m!2186569 () Bool)

(assert (=> b!1768445 m!2186569))

(declare-fun m!2186571 () Bool)

(assert (=> b!1768445 m!2186571))

(declare-fun m!2186573 () Bool)

(assert (=> b!1768445 m!2186573))

(declare-fun m!2186575 () Bool)

(assert (=> b!1768457 m!2186575))

(declare-fun m!2186577 () Bool)

(assert (=> b!1768457 m!2186577))

(declare-fun m!2186579 () Bool)

(assert (=> b!1768466 m!2186579))

(declare-fun m!2186581 () Bool)

(assert (=> b!1768439 m!2186581))

(declare-fun m!2186583 () Bool)

(assert (=> b!1768439 m!2186583))

(declare-fun m!2186585 () Bool)

(assert (=> b!1768450 m!2186585))

(declare-fun m!2186587 () Bool)

(assert (=> b!1768450 m!2186587))

(declare-fun m!2186589 () Bool)

(assert (=> b!1768450 m!2186589))

(declare-fun m!2186591 () Bool)

(assert (=> b!1768450 m!2186591))

(declare-fun m!2186593 () Bool)

(assert (=> b!1768450 m!2186593))

(declare-fun m!2186595 () Bool)

(assert (=> b!1768450 m!2186595))

(declare-fun m!2186597 () Bool)

(assert (=> b!1768450 m!2186597))

(declare-fun m!2186599 () Bool)

(assert (=> b!1768450 m!2186599))

(declare-fun m!2186601 () Bool)

(assert (=> b!1768450 m!2186601))

(declare-fun m!2186603 () Bool)

(assert (=> b!1768450 m!2186603))

(declare-fun m!2186605 () Bool)

(assert (=> b!1768450 m!2186605))

(declare-fun m!2186607 () Bool)

(assert (=> b!1768450 m!2186607))

(declare-fun m!2186609 () Bool)

(assert (=> b!1768450 m!2186609))

(assert (=> b!1768450 m!2186597))

(declare-fun m!2186611 () Bool)

(assert (=> b!1768450 m!2186611))

(declare-fun m!2186613 () Bool)

(assert (=> b!1768450 m!2186613))

(declare-fun m!2186615 () Bool)

(assert (=> b!1768442 m!2186615))

(declare-fun m!2186617 () Bool)

(assert (=> b!1768453 m!2186617))

(declare-fun m!2186619 () Bool)

(assert (=> b!1768455 m!2186619))

(declare-fun m!2186621 () Bool)

(assert (=> b!1768455 m!2186621))

(declare-fun m!2186623 () Bool)

(assert (=> b!1768455 m!2186623))

(declare-fun m!2186625 () Bool)

(assert (=> b!1768455 m!2186625))

(declare-fun m!2186627 () Bool)

(assert (=> b!1768446 m!2186627))

(declare-fun m!2186629 () Bool)

(assert (=> b!1768446 m!2186629))

(declare-fun m!2186631 () Bool)

(assert (=> b!1768446 m!2186631))

(declare-fun m!2186633 () Bool)

(assert (=> b!1768446 m!2186633))

(declare-fun m!2186635 () Bool)

(assert (=> b!1768463 m!2186635))

(declare-fun m!2186637 () Bool)

(assert (=> b!1768463 m!2186637))

(declare-fun m!2186639 () Bool)

(assert (=> b!1768461 m!2186639))

(declare-fun m!2186641 () Bool)

(assert (=> b!1768461 m!2186641))

(declare-fun m!2186643 () Bool)

(assert (=> b!1768461 m!2186643))

(declare-fun m!2186645 () Bool)

(assert (=> b!1768461 m!2186645))

(declare-fun m!2186647 () Bool)

(assert (=> b!1768461 m!2186647))

(declare-fun m!2186649 () Bool)

(assert (=> b!1768461 m!2186649))

(assert (=> b!1768461 m!2186639))

(declare-fun m!2186651 () Bool)

(assert (=> b!1768461 m!2186651))

(assert (=> b!1768465 m!2186595))

(assert (=> b!1768465 m!2186595))

(declare-fun m!2186653 () Bool)

(assert (=> b!1768465 m!2186653))

(assert (=> b!1768465 m!2186653))

(declare-fun m!2186655 () Bool)

(assert (=> b!1768465 m!2186655))

(declare-fun m!2186657 () Bool)

(assert (=> b!1768465 m!2186657))

(declare-fun m!2186659 () Bool)

(assert (=> b!1768447 m!2186659))

(declare-fun m!2186661 () Bool)

(assert (=> b!1768447 m!2186661))

(assert (=> b!1768447 m!2186661))

(declare-fun m!2186663 () Bool)

(assert (=> b!1768447 m!2186663))

(declare-fun m!2186665 () Bool)

(assert (=> b!1768447 m!2186665))

(declare-fun m!2186667 () Bool)

(assert (=> b!1768437 m!2186667))

(declare-fun m!2186669 () Bool)

(assert (=> b!1768454 m!2186669))

(declare-fun m!2186671 () Bool)

(assert (=> b!1768456 m!2186671))

(assert (=> b!1768456 m!2186671))

(declare-fun m!2186673 () Bool)

(assert (=> b!1768456 m!2186673))

(assert (=> b!1768456 m!2186673))

(declare-fun m!2186675 () Bool)

(assert (=> b!1768456 m!2186675))

(declare-fun m!2186677 () Bool)

(assert (=> b!1768456 m!2186677))

(declare-fun m!2186679 () Bool)

(assert (=> b!1768452 m!2186679))

(declare-fun m!2186681 () Bool)

(assert (=> start!175358 m!2186681))

(declare-fun m!2186683 () Bool)

(assert (=> b!1768438 m!2186683))

(declare-fun m!2186685 () Bool)

(assert (=> b!1768438 m!2186685))

(declare-fun m!2186687 () Bool)

(assert (=> b!1768449 m!2186687))

(declare-fun m!2186689 () Bool)

(assert (=> b!1768449 m!2186689))

(declare-fun m!2186691 () Bool)

(assert (=> b!1768449 m!2186691))

(declare-fun m!2186693 () Bool)

(assert (=> b!1768444 m!2186693))

(declare-fun m!2186695 () Bool)

(assert (=> b!1768444 m!2186695))

(check-sat (not b!1768457) (not b_next!49677) b_and!134295 (not b!1768444) (not b!1768450) (not b!1768451) b_and!134289 (not b!1768464) (not b!1768483) (not b!1768439) (not b_next!49681) (not b_lambda!57507) (not b_lambda!57511) (not b!1768453) (not b!1768452) (not b!1768438) (not b_next!49671) b_and!134293 (not b!1768442) b_and!134285 (not b!1768447) b_and!134291 (not b!1768454) (not b!1768456) tp_is_empty!7865 (not tb!106911) (not b_lambda!57509) (not b!1768463) (not b!1768486) (not b!1768465) (not b!1768459) (not b!1768455) (not b!1768460) (not b_next!49679) (not b!1768449) (not b_next!49673) (not b!1768446) (not b!1768461) (not b!1768437) (not tb!106923) (not tb!106917) (not b!1768462) (not b!1768445) (not start!175358) (not b!1768466) (not b_next!49675) b_and!134287)
(check-sat (not b_next!49671) b_and!134291 (not b_next!49677) b_and!134295 b_and!134289 (not b_next!49679) (not b_next!49673) (not b_next!49681) b_and!134293 b_and!134285 (not b_next!49675) b_and!134287)
(get-model)

(declare-fun d!540094 () Bool)

(assert (=> d!540094 (= (get!5947 lt!684579) (v!25460 lt!684579))))

(assert (=> b!1768464 d!540094))

(declare-fun d!540098 () Bool)

(declare-fun choose!10991 (Int) Bool)

(assert (=> d!540098 (= (Forall!850 lambda!70356) (choose!10991 lambda!70356))))

(declare-fun bs!404468 () Bool)

(assert (= bs!404468 d!540098))

(declare-fun m!2186723 () Bool)

(assert (=> bs!404468 m!2186723))

(assert (=> b!1768463 d!540098))

(declare-fun d!540100 () Bool)

(declare-fun e!1131827 () Bool)

(assert (=> d!540100 e!1131827))

(declare-fun res!796401 () Bool)

(assert (=> d!540100 (=> (not res!796401) (not e!1131827))))

(declare-fun semiInverseModEq!1388 (Int Int) Bool)

(assert (=> d!540100 (= res!796401 (semiInverseModEq!1388 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))))))

(declare-fun Unit!33676 () Unit!33672)

(assert (=> d!540100 (= (lemmaInv!682 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) Unit!33676)))

(declare-fun b!1768567 () Bool)

(declare-fun equivClasses!1329 (Int Int) Bool)

(assert (=> b!1768567 (= e!1131827 (equivClasses!1329 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))))))

(assert (= (and d!540100 res!796401) b!1768567))

(declare-fun m!2186745 () Bool)

(assert (=> d!540100 m!2186745))

(declare-fun m!2186747 () Bool)

(assert (=> b!1768567 m!2186747))

(assert (=> b!1768463 d!540100))

(declare-fun d!540112 () Bool)

(declare-fun res!796412 () Bool)

(declare-fun e!1131833 () Bool)

(assert (=> d!540112 (=> (not res!796412) (not e!1131833))))

(assert (=> d!540112 (= res!796412 (not (isEmpty!12297 (originalCharacters!4297 token!523))))))

(assert (=> d!540112 (= (inv!25314 token!523) e!1131833)))

(declare-fun b!1768578 () Bool)

(declare-fun res!796413 () Bool)

(assert (=> b!1768578 (=> (not res!796413) (not e!1131833))))

(assert (=> b!1768578 (= res!796413 (= (originalCharacters!4297 token!523) (list!7909 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 token!523))) (value!108938 token!523)))))))

(declare-fun b!1768579 () Bool)

(assert (=> b!1768579 (= e!1131833 (= (size!15470 token!523) (size!15471 (originalCharacters!4297 token!523))))))

(assert (= (and d!540112 res!796412) b!1768578))

(assert (= (and b!1768578 res!796413) b!1768579))

(declare-fun b_lambda!57513 () Bool)

(assert (=> (not b_lambda!57513) (not b!1768578)))

(declare-fun t!165064 () Bool)

(declare-fun tb!106929 () Bool)

(assert (=> (and b!1768443 (= (toChars!4865 (transformation!3483 (rule!5521 token!523))) (toChars!4865 (transformation!3483 (rule!5521 token!523)))) t!165064) tb!106929))

(declare-fun b!1768580 () Bool)

(declare-fun e!1131834 () Bool)

(declare-fun tp!501823 () Bool)

(assert (=> b!1768580 (= e!1131834 (and (inv!25315 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 token!523))) (value!108938 token!523)))) tp!501823))))

(declare-fun result!128648 () Bool)

(assert (=> tb!106929 (= result!128648 (and (inv!25316 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 token!523))) (value!108938 token!523))) e!1131834))))

(assert (= tb!106929 b!1768580))

(declare-fun m!2186759 () Bool)

(assert (=> b!1768580 m!2186759))

(declare-fun m!2186761 () Bool)

(assert (=> tb!106929 m!2186761))

(assert (=> b!1768578 t!165064))

(declare-fun b_and!134297 () Bool)

(assert (= b_and!134291 (and (=> t!165064 result!128648) b_and!134297)))

(declare-fun tb!106931 () Bool)

(declare-fun t!165066 () Bool)

(assert (=> (and b!1768441 (= (toChars!4865 (transformation!3483 rule!422)) (toChars!4865 (transformation!3483 (rule!5521 token!523)))) t!165066) tb!106931))

(declare-fun result!128650 () Bool)

(assert (= result!128650 result!128648))

(assert (=> b!1768578 t!165066))

(declare-fun b_and!134299 () Bool)

(assert (= b_and!134293 (and (=> t!165066 result!128650) b_and!134299)))

(declare-fun t!165068 () Bool)

(declare-fun tb!106933 () Bool)

(assert (=> (and b!1768458 (= (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toChars!4865 (transformation!3483 (rule!5521 token!523)))) t!165068) tb!106933))

(declare-fun result!128652 () Bool)

(assert (= result!128652 result!128648))

(assert (=> b!1768578 t!165068))

(declare-fun b_and!134301 () Bool)

(assert (= b_and!134295 (and (=> t!165068 result!128652) b_and!134301)))

(declare-fun m!2186763 () Bool)

(assert (=> d!540112 m!2186763))

(declare-fun m!2186765 () Bool)

(assert (=> b!1768578 m!2186765))

(assert (=> b!1768578 m!2186765))

(declare-fun m!2186767 () Bool)

(assert (=> b!1768578 m!2186767))

(declare-fun m!2186769 () Bool)

(assert (=> b!1768579 m!2186769))

(assert (=> start!175358 d!540112))

(declare-fun d!540118 () Bool)

(assert (=> d!540118 (= (isEmpty!12297 suffix!1421) ((_ is Nil!19478) suffix!1421))))

(assert (=> b!1768442 d!540118))

(declare-fun b!1768631 () Bool)

(declare-fun res!796444 () Bool)

(declare-fun e!1131866 () Bool)

(assert (=> b!1768631 (=> (not res!796444) (not e!1131866))))

(declare-fun call!110904 () Bool)

(assert (=> b!1768631 (= res!796444 (not call!110904))))

(declare-fun b!1768632 () Bool)

(declare-fun res!796438 () Bool)

(declare-fun e!1131864 () Bool)

(assert (=> b!1768632 (=> res!796438 e!1131864)))

(assert (=> b!1768632 (= res!796438 e!1131866)))

(declare-fun res!796445 () Bool)

(assert (=> b!1768632 (=> (not res!796445) (not e!1131866))))

(declare-fun lt!684610 () Bool)

(assert (=> b!1768632 (= res!796445 lt!684610)))

(declare-fun b!1768633 () Bool)

(declare-fun e!1131869 () Bool)

(declare-fun e!1131863 () Bool)

(assert (=> b!1768633 (= e!1131869 e!1131863)))

(declare-fun res!796440 () Bool)

(assert (=> b!1768633 (=> res!796440 e!1131863)))

(assert (=> b!1768633 (= res!796440 call!110904)))

(declare-fun b!1768634 () Bool)

(declare-fun res!796443 () Bool)

(assert (=> b!1768634 (=> res!796443 e!1131864)))

(assert (=> b!1768634 (= res!796443 (not ((_ is ElementMatch!4811) (regex!3483 rule!422))))))

(declare-fun e!1131865 () Bool)

(assert (=> b!1768634 (= e!1131865 e!1131864)))

(declare-fun d!540120 () Bool)

(declare-fun e!1131868 () Bool)

(assert (=> d!540120 e!1131868))

(declare-fun c!287975 () Bool)

(assert (=> d!540120 (= c!287975 ((_ is EmptyExpr!4811) (regex!3483 rule!422)))))

(declare-fun e!1131867 () Bool)

(assert (=> d!540120 (= lt!684610 e!1131867)))

(declare-fun c!287977 () Bool)

(assert (=> d!540120 (= c!287977 (isEmpty!12297 lt!684564))))

(declare-fun validRegex!1947 (Regex!4811) Bool)

(assert (=> d!540120 (validRegex!1947 (regex!3483 rule!422))))

(assert (=> d!540120 (= (matchR!2284 (regex!3483 rule!422) lt!684564) lt!684610)))

(declare-fun b!1768635 () Bool)

(declare-fun nullable!1473 (Regex!4811) Bool)

(assert (=> b!1768635 (= e!1131867 (nullable!1473 (regex!3483 rule!422)))))

(declare-fun b!1768636 () Bool)

(assert (=> b!1768636 (= e!1131868 e!1131865)))

(declare-fun c!287976 () Bool)

(assert (=> b!1768636 (= c!287976 ((_ is EmptyLang!4811) (regex!3483 rule!422)))))

(declare-fun b!1768637 () Bool)

(assert (=> b!1768637 (= e!1131868 (= lt!684610 call!110904))))

(declare-fun b!1768638 () Bool)

(assert (=> b!1768638 (= e!1131863 (not (= (head!4110 lt!684564) (c!287942 (regex!3483 rule!422)))))))

(declare-fun b!1768639 () Bool)

(assert (=> b!1768639 (= e!1131865 (not lt!684610))))

(declare-fun b!1768640 () Bool)

(assert (=> b!1768640 (= e!1131866 (= (head!4110 lt!684564) (c!287942 (regex!3483 rule!422))))))

(declare-fun bm!110899 () Bool)

(assert (=> bm!110899 (= call!110904 (isEmpty!12297 lt!684564))))

(declare-fun b!1768641 () Bool)

(declare-fun res!796442 () Bool)

(assert (=> b!1768641 (=> (not res!796442) (not e!1131866))))

(declare-fun tail!2647 (List!19548) List!19548)

(assert (=> b!1768641 (= res!796442 (isEmpty!12297 (tail!2647 lt!684564)))))

(declare-fun b!1768642 () Bool)

(declare-fun derivativeStep!1242 (Regex!4811 C!9796) Regex!4811)

(assert (=> b!1768642 (= e!1131867 (matchR!2284 (derivativeStep!1242 (regex!3483 rule!422) (head!4110 lt!684564)) (tail!2647 lt!684564)))))

(declare-fun b!1768643 () Bool)

(declare-fun res!796441 () Bool)

(assert (=> b!1768643 (=> res!796441 e!1131863)))

(assert (=> b!1768643 (= res!796441 (not (isEmpty!12297 (tail!2647 lt!684564))))))

(declare-fun b!1768644 () Bool)

(assert (=> b!1768644 (= e!1131864 e!1131869)))

(declare-fun res!796439 () Bool)

(assert (=> b!1768644 (=> (not res!796439) (not e!1131869))))

(assert (=> b!1768644 (= res!796439 (not lt!684610))))

(assert (= (and d!540120 c!287977) b!1768635))

(assert (= (and d!540120 (not c!287977)) b!1768642))

(assert (= (and d!540120 c!287975) b!1768637))

(assert (= (and d!540120 (not c!287975)) b!1768636))

(assert (= (and b!1768636 c!287976) b!1768639))

(assert (= (and b!1768636 (not c!287976)) b!1768634))

(assert (= (and b!1768634 (not res!796443)) b!1768632))

(assert (= (and b!1768632 res!796445) b!1768631))

(assert (= (and b!1768631 res!796444) b!1768641))

(assert (= (and b!1768641 res!796442) b!1768640))

(assert (= (and b!1768632 (not res!796438)) b!1768644))

(assert (= (and b!1768644 res!796439) b!1768633))

(assert (= (and b!1768633 (not res!796440)) b!1768643))

(assert (= (and b!1768643 (not res!796441)) b!1768638))

(assert (= (or b!1768637 b!1768631 b!1768633) bm!110899))

(declare-fun m!2186795 () Bool)

(assert (=> b!1768640 m!2186795))

(declare-fun m!2186797 () Bool)

(assert (=> b!1768635 m!2186797))

(declare-fun m!2186799 () Bool)

(assert (=> d!540120 m!2186799))

(declare-fun m!2186801 () Bool)

(assert (=> d!540120 m!2186801))

(assert (=> b!1768638 m!2186795))

(declare-fun m!2186803 () Bool)

(assert (=> b!1768641 m!2186803))

(assert (=> b!1768641 m!2186803))

(declare-fun m!2186805 () Bool)

(assert (=> b!1768641 m!2186805))

(assert (=> b!1768642 m!2186795))

(assert (=> b!1768642 m!2186795))

(declare-fun m!2186807 () Bool)

(assert (=> b!1768642 m!2186807))

(assert (=> b!1768642 m!2186803))

(assert (=> b!1768642 m!2186807))

(assert (=> b!1768642 m!2186803))

(declare-fun m!2186809 () Bool)

(assert (=> b!1768642 m!2186809))

(assert (=> bm!110899 m!2186799))

(assert (=> b!1768643 m!2186803))

(assert (=> b!1768643 m!2186803))

(assert (=> b!1768643 m!2186805))

(assert (=> b!1768445 d!540120))

(declare-fun d!540126 () Bool)

(declare-fun res!796464 () Bool)

(declare-fun e!1131878 () Bool)

(assert (=> d!540126 (=> (not res!796464) (not e!1131878))))

(assert (=> d!540126 (= res!796464 (validRegex!1947 (regex!3483 rule!422)))))

(assert (=> d!540126 (= (ruleValid!981 thiss!24550 rule!422) e!1131878)))

(declare-fun b!1768667 () Bool)

(declare-fun res!796465 () Bool)

(assert (=> b!1768667 (=> (not res!796465) (not e!1131878))))

(assert (=> b!1768667 (= res!796465 (not (nullable!1473 (regex!3483 rule!422))))))

(declare-fun b!1768668 () Bool)

(assert (=> b!1768668 (= e!1131878 (not (= (tag!3861 rule!422) (String!22198 ""))))))

(assert (= (and d!540126 res!796464) b!1768667))

(assert (= (and b!1768667 res!796465) b!1768668))

(assert (=> d!540126 m!2186801))

(assert (=> b!1768667 m!2186797))

(assert (=> b!1768445 d!540126))

(declare-fun d!540128 () Bool)

(assert (=> d!540128 (ruleValid!981 thiss!24550 rule!422)))

(declare-fun lt!684628 () Unit!33672)

(declare-fun choose!10992 (LexerInterface!3112 Rule!6766 List!19549) Unit!33672)

(assert (=> d!540128 (= lt!684628 (choose!10992 thiss!24550 rule!422 rules!3447))))

(assert (=> d!540128 (contains!3513 rules!3447 rule!422)))

(assert (=> d!540128 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!504 thiss!24550 rule!422 rules!3447) lt!684628)))

(declare-fun bs!404473 () Bool)

(assert (= bs!404473 d!540128))

(assert (=> bs!404473 m!2186571))

(declare-fun m!2186831 () Bool)

(assert (=> bs!404473 m!2186831))

(assert (=> bs!404473 m!2186555))

(assert (=> b!1768445 d!540128))

(declare-fun d!540130 () Bool)

(declare-fun c!287983 () Bool)

(assert (=> d!540130 (= c!287983 ((_ is Node!6479) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))))))

(declare-fun e!1131898 () Bool)

(assert (=> d!540130 (= (inv!25315 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))) e!1131898)))

(declare-fun b!1768700 () Bool)

(declare-fun inv!25317 (Conc!6479) Bool)

(assert (=> b!1768700 (= e!1131898 (inv!25317 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))))))

(declare-fun b!1768701 () Bool)

(declare-fun e!1131899 () Bool)

(assert (=> b!1768701 (= e!1131898 e!1131899)))

(declare-fun res!796491 () Bool)

(assert (=> b!1768701 (= res!796491 (not ((_ is Leaf!9441) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))))))))

(assert (=> b!1768701 (=> res!796491 e!1131899)))

(declare-fun b!1768702 () Bool)

(declare-fun inv!25318 (Conc!6479) Bool)

(assert (=> b!1768702 (= e!1131899 (inv!25318 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))))))

(assert (= (and d!540130 c!287983) b!1768700))

(assert (= (and d!540130 (not c!287983)) b!1768701))

(assert (= (and b!1768701 (not res!796491)) b!1768702))

(declare-fun m!2186863 () Bool)

(assert (=> b!1768700 m!2186863))

(declare-fun m!2186865 () Bool)

(assert (=> b!1768702 m!2186865))

(assert (=> b!1768486 d!540130))

(declare-fun d!540138 () Bool)

(declare-fun res!796494 () Bool)

(declare-fun e!1131902 () Bool)

(assert (=> d!540138 (=> (not res!796494) (not e!1131902))))

(declare-fun rulesValid!1313 (LexerInterface!3112 List!19549) Bool)

(assert (=> d!540138 (= res!796494 (rulesValid!1313 thiss!24550 rules!3447))))

(assert (=> d!540138 (= (rulesInvariant!2781 thiss!24550 rules!3447) e!1131902)))

(declare-fun b!1768705 () Bool)

(declare-datatypes ((List!19551 0))(
  ( (Nil!19481) (Cons!19481 (h!24882 String!22197) (t!165124 List!19551)) )
))
(declare-fun noDuplicateTag!1313 (LexerInterface!3112 List!19549 List!19551) Bool)

(assert (=> b!1768705 (= e!1131902 (noDuplicateTag!1313 thiss!24550 rules!3447 Nil!19481))))

(assert (= (and d!540138 res!796494) b!1768705))

(declare-fun m!2186867 () Bool)

(assert (=> d!540138 m!2186867))

(declare-fun m!2186869 () Bool)

(assert (=> b!1768705 m!2186869))

(assert (=> b!1768466 d!540138))

(declare-fun b!1768706 () Bool)

(declare-fun res!796501 () Bool)

(declare-fun e!1131906 () Bool)

(assert (=> b!1768706 (=> (not res!796501) (not e!1131906))))

(declare-fun call!110908 () Bool)

(assert (=> b!1768706 (= res!796501 (not call!110908))))

(declare-fun b!1768707 () Bool)

(declare-fun res!796495 () Bool)

(declare-fun e!1131904 () Bool)

(assert (=> b!1768707 (=> res!796495 e!1131904)))

(assert (=> b!1768707 (= res!796495 e!1131906)))

(declare-fun res!796502 () Bool)

(assert (=> b!1768707 (=> (not res!796502) (not e!1131906))))

(declare-fun lt!684633 () Bool)

(assert (=> b!1768707 (= res!796502 lt!684633)))

(declare-fun b!1768708 () Bool)

(declare-fun e!1131909 () Bool)

(declare-fun e!1131903 () Bool)

(assert (=> b!1768708 (= e!1131909 e!1131903)))

(declare-fun res!796497 () Bool)

(assert (=> b!1768708 (=> res!796497 e!1131903)))

(assert (=> b!1768708 (= res!796497 call!110908)))

(declare-fun b!1768709 () Bool)

(declare-fun res!796500 () Bool)

(assert (=> b!1768709 (=> res!796500 e!1131904)))

(assert (=> b!1768709 (= res!796500 (not ((_ is ElementMatch!4811) (regex!3483 lt!684552))))))

(declare-fun e!1131905 () Bool)

(assert (=> b!1768709 (= e!1131905 e!1131904)))

(declare-fun d!540140 () Bool)

(declare-fun e!1131908 () Bool)

(assert (=> d!540140 e!1131908))

(declare-fun c!287984 () Bool)

(assert (=> d!540140 (= c!287984 ((_ is EmptyExpr!4811) (regex!3483 lt!684552)))))

(declare-fun e!1131907 () Bool)

(assert (=> d!540140 (= lt!684633 e!1131907)))

(declare-fun c!287986 () Bool)

(assert (=> d!540140 (= c!287986 (isEmpty!12297 (list!7909 (charsOf!2132 (_1!10943 lt!684574)))))))

(assert (=> d!540140 (validRegex!1947 (regex!3483 lt!684552))))

(assert (=> d!540140 (= (matchR!2284 (regex!3483 lt!684552) (list!7909 (charsOf!2132 (_1!10943 lt!684574)))) lt!684633)))

(declare-fun b!1768710 () Bool)

(assert (=> b!1768710 (= e!1131907 (nullable!1473 (regex!3483 lt!684552)))))

(declare-fun b!1768711 () Bool)

(assert (=> b!1768711 (= e!1131908 e!1131905)))

(declare-fun c!287985 () Bool)

(assert (=> b!1768711 (= c!287985 ((_ is EmptyLang!4811) (regex!3483 lt!684552)))))

(declare-fun b!1768712 () Bool)

(assert (=> b!1768712 (= e!1131908 (= lt!684633 call!110908))))

(declare-fun b!1768713 () Bool)

(assert (=> b!1768713 (= e!1131903 (not (= (head!4110 (list!7909 (charsOf!2132 (_1!10943 lt!684574)))) (c!287942 (regex!3483 lt!684552)))))))

(declare-fun b!1768714 () Bool)

(assert (=> b!1768714 (= e!1131905 (not lt!684633))))

(declare-fun b!1768715 () Bool)

(assert (=> b!1768715 (= e!1131906 (= (head!4110 (list!7909 (charsOf!2132 (_1!10943 lt!684574)))) (c!287942 (regex!3483 lt!684552))))))

(declare-fun bm!110903 () Bool)

(assert (=> bm!110903 (= call!110908 (isEmpty!12297 (list!7909 (charsOf!2132 (_1!10943 lt!684574)))))))

(declare-fun b!1768716 () Bool)

(declare-fun res!796499 () Bool)

(assert (=> b!1768716 (=> (not res!796499) (not e!1131906))))

(assert (=> b!1768716 (= res!796499 (isEmpty!12297 (tail!2647 (list!7909 (charsOf!2132 (_1!10943 lt!684574))))))))

(declare-fun b!1768717 () Bool)

(assert (=> b!1768717 (= e!1131907 (matchR!2284 (derivativeStep!1242 (regex!3483 lt!684552) (head!4110 (list!7909 (charsOf!2132 (_1!10943 lt!684574))))) (tail!2647 (list!7909 (charsOf!2132 (_1!10943 lt!684574))))))))

(declare-fun b!1768718 () Bool)

(declare-fun res!796498 () Bool)

(assert (=> b!1768718 (=> res!796498 e!1131903)))

(assert (=> b!1768718 (= res!796498 (not (isEmpty!12297 (tail!2647 (list!7909 (charsOf!2132 (_1!10943 lt!684574)))))))))

(declare-fun b!1768719 () Bool)

(assert (=> b!1768719 (= e!1131904 e!1131909)))

(declare-fun res!796496 () Bool)

(assert (=> b!1768719 (=> (not res!796496) (not e!1131909))))

(assert (=> b!1768719 (= res!796496 (not lt!684633))))

(assert (= (and d!540140 c!287986) b!1768710))

(assert (= (and d!540140 (not c!287986)) b!1768717))

(assert (= (and d!540140 c!287984) b!1768712))

(assert (= (and d!540140 (not c!287984)) b!1768711))

(assert (= (and b!1768711 c!287985) b!1768714))

(assert (= (and b!1768711 (not c!287985)) b!1768709))

(assert (= (and b!1768709 (not res!796500)) b!1768707))

(assert (= (and b!1768707 res!796502) b!1768706))

(assert (= (and b!1768706 res!796501) b!1768716))

(assert (= (and b!1768716 res!796499) b!1768715))

(assert (= (and b!1768707 (not res!796495)) b!1768719))

(assert (= (and b!1768719 res!796496) b!1768708))

(assert (= (and b!1768708 (not res!796497)) b!1768718))

(assert (= (and b!1768718 (not res!796498)) b!1768713))

(assert (= (or b!1768712 b!1768706 b!1768708) bm!110903))

(assert (=> b!1768715 m!2186653))

(declare-fun m!2186871 () Bool)

(assert (=> b!1768715 m!2186871))

(declare-fun m!2186873 () Bool)

(assert (=> b!1768710 m!2186873))

(assert (=> d!540140 m!2186653))

(declare-fun m!2186875 () Bool)

(assert (=> d!540140 m!2186875))

(declare-fun m!2186877 () Bool)

(assert (=> d!540140 m!2186877))

(assert (=> b!1768713 m!2186653))

(assert (=> b!1768713 m!2186871))

(assert (=> b!1768716 m!2186653))

(declare-fun m!2186879 () Bool)

(assert (=> b!1768716 m!2186879))

(assert (=> b!1768716 m!2186879))

(declare-fun m!2186881 () Bool)

(assert (=> b!1768716 m!2186881))

(assert (=> b!1768717 m!2186653))

(assert (=> b!1768717 m!2186871))

(assert (=> b!1768717 m!2186871))

(declare-fun m!2186883 () Bool)

(assert (=> b!1768717 m!2186883))

(assert (=> b!1768717 m!2186653))

(assert (=> b!1768717 m!2186879))

(assert (=> b!1768717 m!2186883))

(assert (=> b!1768717 m!2186879))

(declare-fun m!2186885 () Bool)

(assert (=> b!1768717 m!2186885))

(assert (=> bm!110903 m!2186653))

(assert (=> bm!110903 m!2186875))

(assert (=> b!1768718 m!2186653))

(assert (=> b!1768718 m!2186879))

(assert (=> b!1768718 m!2186879))

(assert (=> b!1768718 m!2186881))

(assert (=> b!1768465 d!540140))

(declare-fun d!540142 () Bool)

(declare-fun list!7912 (Conc!6479) List!19548)

(assert (=> d!540142 (= (list!7909 (charsOf!2132 (_1!10943 lt!684574))) (list!7912 (c!287943 (charsOf!2132 (_1!10943 lt!684574)))))))

(declare-fun bs!404474 () Bool)

(assert (= bs!404474 d!540142))

(declare-fun m!2186887 () Bool)

(assert (=> bs!404474 m!2186887))

(assert (=> b!1768465 d!540142))

(declare-fun d!540144 () Bool)

(declare-fun lt!684636 () BalanceConc!12902)

(assert (=> d!540144 (= (list!7909 lt!684636) (originalCharacters!4297 (_1!10943 lt!684574)))))

(assert (=> d!540144 (= lt!684636 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))))

(assert (=> d!540144 (= (charsOf!2132 (_1!10943 lt!684574)) lt!684636)))

(declare-fun b_lambda!57515 () Bool)

(assert (=> (not b_lambda!57515) (not d!540144)))

(assert (=> d!540144 t!165055))

(declare-fun b_and!134303 () Bool)

(assert (= b_and!134297 (and (=> t!165055 result!128642) b_and!134303)))

(assert (=> d!540144 t!165057))

(declare-fun b_and!134305 () Bool)

(assert (= b_and!134299 (and (=> t!165057 result!128644) b_and!134305)))

(assert (=> d!540144 t!165059))

(declare-fun b_and!134307 () Bool)

(assert (= b_and!134301 (and (=> t!165059 result!128646) b_and!134307)))

(declare-fun m!2186889 () Bool)

(assert (=> d!540144 m!2186889))

(assert (=> d!540144 m!2186553))

(assert (=> b!1768465 d!540144))

(declare-fun d!540146 () Bool)

(assert (=> d!540146 (= (get!5948 lt!684554) (v!25461 lt!684554))))

(assert (=> b!1768465 d!540146))

(declare-fun d!540148 () Bool)

(declare-fun lt!684639 () Int)

(assert (=> d!540148 (>= lt!684639 0)))

(declare-fun e!1131912 () Int)

(assert (=> d!540148 (= lt!684639 e!1131912)))

(declare-fun c!287989 () Bool)

(assert (=> d!540148 (= c!287989 ((_ is Nil!19478) lt!684564))))

(assert (=> d!540148 (= (size!15471 lt!684564) lt!684639)))

(declare-fun b!1768724 () Bool)

(assert (=> b!1768724 (= e!1131912 0)))

(declare-fun b!1768725 () Bool)

(assert (=> b!1768725 (= e!1131912 (+ 1 (size!15471 (t!165061 lt!684564))))))

(assert (= (and d!540148 c!287989) b!1768724))

(assert (= (and d!540148 (not c!287989)) b!1768725))

(declare-fun m!2186891 () Bool)

(assert (=> b!1768725 m!2186891))

(assert (=> b!1768444 d!540148))

(declare-fun d!540150 () Bool)

(declare-fun lt!684640 () Int)

(assert (=> d!540150 (>= lt!684640 0)))

(declare-fun e!1131913 () Int)

(assert (=> d!540150 (= lt!684640 e!1131913)))

(declare-fun c!287990 () Bool)

(assert (=> d!540150 (= c!287990 ((_ is Nil!19478) lt!684559))))

(assert (=> d!540150 (= (size!15471 lt!684559) lt!684640)))

(declare-fun b!1768726 () Bool)

(assert (=> b!1768726 (= e!1131913 0)))

(declare-fun b!1768727 () Bool)

(assert (=> b!1768727 (= e!1131913 (+ 1 (size!15471 (t!165061 lt!684559))))))

(assert (= (and d!540150 c!287990) b!1768726))

(assert (= (and d!540150 (not c!287990)) b!1768727))

(declare-fun m!2186893 () Bool)

(assert (=> b!1768727 m!2186893))

(assert (=> b!1768444 d!540150))

(declare-fun d!540152 () Bool)

(declare-fun isBalanced!2025 (Conc!6479) Bool)

(assert (=> d!540152 (= (inv!25316 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))) (isBalanced!2025 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))))

(declare-fun bs!404475 () Bool)

(assert (= bs!404475 d!540152))

(declare-fun m!2186895 () Bool)

(assert (=> bs!404475 m!2186895))

(assert (=> tb!106911 d!540152))

(declare-fun d!540154 () Bool)

(declare-fun c!287993 () Bool)

(assert (=> d!540154 (= c!287993 (isEmpty!12297 (++!5307 lt!684564 (Cons!19478 (head!4110 suffix!1421) Nil!19478))))))

(declare-fun e!1131916 () Bool)

(assert (=> d!540154 (= (prefixMatch!694 lt!684581 (++!5307 lt!684564 (Cons!19478 (head!4110 suffix!1421) Nil!19478))) e!1131916)))

(declare-fun b!1768732 () Bool)

(declare-fun lostCause!583 (Regex!4811) Bool)

(assert (=> b!1768732 (= e!1131916 (not (lostCause!583 lt!684581)))))

(declare-fun b!1768733 () Bool)

(assert (=> b!1768733 (= e!1131916 (prefixMatch!694 (derivativeStep!1242 lt!684581 (head!4110 (++!5307 lt!684564 (Cons!19478 (head!4110 suffix!1421) Nil!19478)))) (tail!2647 (++!5307 lt!684564 (Cons!19478 (head!4110 suffix!1421) Nil!19478)))))))

(assert (= (and d!540154 c!287993) b!1768732))

(assert (= (and d!540154 (not c!287993)) b!1768733))

(assert (=> d!540154 m!2186661))

(declare-fun m!2186897 () Bool)

(assert (=> d!540154 m!2186897))

(declare-fun m!2186899 () Bool)

(assert (=> b!1768732 m!2186899))

(assert (=> b!1768733 m!2186661))

(declare-fun m!2186901 () Bool)

(assert (=> b!1768733 m!2186901))

(assert (=> b!1768733 m!2186901))

(declare-fun m!2186903 () Bool)

(assert (=> b!1768733 m!2186903))

(assert (=> b!1768733 m!2186661))

(declare-fun m!2186905 () Bool)

(assert (=> b!1768733 m!2186905))

(assert (=> b!1768733 m!2186903))

(assert (=> b!1768733 m!2186905))

(declare-fun m!2186907 () Bool)

(assert (=> b!1768733 m!2186907))

(assert (=> b!1768447 d!540154))

(declare-fun b!1768742 () Bool)

(declare-fun e!1131922 () List!19548)

(assert (=> b!1768742 (= e!1131922 (Cons!19478 (head!4110 suffix!1421) Nil!19478))))

(declare-fun d!540156 () Bool)

(declare-fun e!1131921 () Bool)

(assert (=> d!540156 e!1131921))

(declare-fun res!796507 () Bool)

(assert (=> d!540156 (=> (not res!796507) (not e!1131921))))

(declare-fun lt!684643 () List!19548)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2823 (List!19548) (InoxSet C!9796))

(assert (=> d!540156 (= res!796507 (= (content!2823 lt!684643) ((_ map or) (content!2823 lt!684564) (content!2823 (Cons!19478 (head!4110 suffix!1421) Nil!19478)))))))

(assert (=> d!540156 (= lt!684643 e!1131922)))

(declare-fun c!287996 () Bool)

(assert (=> d!540156 (= c!287996 ((_ is Nil!19478) lt!684564))))

(assert (=> d!540156 (= (++!5307 lt!684564 (Cons!19478 (head!4110 suffix!1421) Nil!19478)) lt!684643)))

(declare-fun b!1768744 () Bool)

(declare-fun res!796508 () Bool)

(assert (=> b!1768744 (=> (not res!796508) (not e!1131921))))

(assert (=> b!1768744 (= res!796508 (= (size!15471 lt!684643) (+ (size!15471 lt!684564) (size!15471 (Cons!19478 (head!4110 suffix!1421) Nil!19478)))))))

(declare-fun b!1768745 () Bool)

(assert (=> b!1768745 (= e!1131921 (or (not (= (Cons!19478 (head!4110 suffix!1421) Nil!19478) Nil!19478)) (= lt!684643 lt!684564)))))

(declare-fun b!1768743 () Bool)

(assert (=> b!1768743 (= e!1131922 (Cons!19478 (h!24879 lt!684564) (++!5307 (t!165061 lt!684564) (Cons!19478 (head!4110 suffix!1421) Nil!19478))))))

(assert (= (and d!540156 c!287996) b!1768742))

(assert (= (and d!540156 (not c!287996)) b!1768743))

(assert (= (and d!540156 res!796507) b!1768744))

(assert (= (and b!1768744 res!796508) b!1768745))

(declare-fun m!2186909 () Bool)

(assert (=> d!540156 m!2186909))

(declare-fun m!2186911 () Bool)

(assert (=> d!540156 m!2186911))

(declare-fun m!2186913 () Bool)

(assert (=> d!540156 m!2186913))

(declare-fun m!2186915 () Bool)

(assert (=> b!1768744 m!2186915))

(assert (=> b!1768744 m!2186693))

(declare-fun m!2186917 () Bool)

(assert (=> b!1768744 m!2186917))

(declare-fun m!2186919 () Bool)

(assert (=> b!1768743 m!2186919))

(assert (=> b!1768447 d!540156))

(declare-fun d!540158 () Bool)

(assert (=> d!540158 (= (head!4110 suffix!1421) (h!24879 suffix!1421))))

(assert (=> b!1768447 d!540158))

(declare-fun d!540160 () Bool)

(declare-fun lt!684646 () Unit!33672)

(declare-fun lemma!396 (List!19549 LexerInterface!3112 List!19549) Unit!33672)

(assert (=> d!540160 (= lt!684646 (lemma!396 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70359 () Int)

(declare-datatypes ((List!19552 0))(
  ( (Nil!19482) (Cons!19482 (h!24883 Regex!4811) (t!165125 List!19552)) )
))
(declare-fun generalisedUnion!404 (List!19552) Regex!4811)

(declare-fun map!4017 (List!19549 Int) List!19552)

(assert (=> d!540160 (= (rulesRegex!839 thiss!24550 rules!3447) (generalisedUnion!404 (map!4017 rules!3447 lambda!70359)))))

(declare-fun bs!404476 () Bool)

(assert (= bs!404476 d!540160))

(declare-fun m!2186921 () Bool)

(assert (=> bs!404476 m!2186921))

(declare-fun m!2186923 () Bool)

(assert (=> bs!404476 m!2186923))

(assert (=> bs!404476 m!2186923))

(declare-fun m!2186925 () Bool)

(assert (=> bs!404476 m!2186925))

(assert (=> b!1768447 d!540160))

(declare-fun d!540162 () Bool)

(declare-fun c!288002 () Bool)

(assert (=> d!540162 (= c!288002 ((_ is IntegerValue!10719) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))

(declare-fun e!1131929 () Bool)

(assert (=> d!540162 (= (inv!21 (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)) e!1131929)))

(declare-fun b!1768756 () Bool)

(declare-fun e!1131931 () Bool)

(assert (=> b!1768756 (= e!1131929 e!1131931)))

(declare-fun c!288001 () Bool)

(assert (=> b!1768756 (= c!288001 ((_ is IntegerValue!10720) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))

(declare-fun b!1768757 () Bool)

(declare-fun res!796511 () Bool)

(declare-fun e!1131930 () Bool)

(assert (=> b!1768757 (=> res!796511 e!1131930)))

(assert (=> b!1768757 (= res!796511 (not ((_ is IntegerValue!10721) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))))

(assert (=> b!1768757 (= e!1131931 e!1131930)))

(declare-fun b!1768758 () Bool)

(declare-fun inv!16 (TokenValue!3573) Bool)

(assert (=> b!1768758 (= e!1131929 (inv!16 (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))

(declare-fun b!1768759 () Bool)

(declare-fun inv!17 (TokenValue!3573) Bool)

(assert (=> b!1768759 (= e!1131931 (inv!17 (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))

(declare-fun b!1768760 () Bool)

(declare-fun inv!15 (TokenValue!3573) Bool)

(assert (=> b!1768760 (= e!1131930 (inv!15 (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))

(assert (= (and d!540162 c!288002) b!1768758))

(assert (= (and d!540162 (not c!288002)) b!1768756))

(assert (= (and b!1768756 c!288001) b!1768759))

(assert (= (and b!1768756 (not c!288001)) b!1768757))

(assert (= (and b!1768757 (not res!796511)) b!1768760))

(declare-fun m!2186927 () Bool)

(assert (=> b!1768758 m!2186927))

(declare-fun m!2186929 () Bool)

(assert (=> b!1768759 m!2186929))

(declare-fun m!2186931 () Bool)

(assert (=> b!1768760 m!2186931))

(assert (=> tb!106917 d!540162))

(declare-fun d!540164 () Bool)

(declare-fun isEmpty!12300 (Option!3988) Bool)

(assert (=> d!540164 (= (isDefined!3331 lt!684579) (not (isEmpty!12300 lt!684579)))))

(declare-fun bs!404477 () Bool)

(assert (= bs!404477 d!540164))

(declare-fun m!2186933 () Bool)

(assert (=> bs!404477 m!2186933))

(assert (=> b!1768446 d!540164))

(declare-fun b!1768779 () Bool)

(declare-fun res!796528 () Bool)

(declare-fun e!1131940 () Bool)

(assert (=> b!1768779 (=> (not res!796528) (not e!1131940))))

(declare-fun lt!684657 () Option!3988)

(assert (=> b!1768779 (= res!796528 (< (size!15471 (_2!10943 (get!5947 lt!684657))) (size!15471 lt!684564)))))

(declare-fun b!1768780 () Bool)

(declare-fun e!1131938 () Bool)

(assert (=> b!1768780 (= e!1131938 e!1131940)))

(declare-fun res!796527 () Bool)

(assert (=> b!1768780 (=> (not res!796527) (not e!1131940))))

(assert (=> b!1768780 (= res!796527 (isDefined!3331 lt!684657))))

(declare-fun b!1768781 () Bool)

(assert (=> b!1768781 (= e!1131940 (contains!3513 rules!3447 (rule!5521 (_1!10943 (get!5947 lt!684657)))))))

(declare-fun call!110911 () Option!3988)

(declare-fun bm!110906 () Bool)

(assert (=> bm!110906 (= call!110911 (maxPrefixOneRule!1035 thiss!24550 (h!24880 rules!3447) lt!684564))))

(declare-fun b!1768782 () Bool)

(declare-fun res!796530 () Bool)

(assert (=> b!1768782 (=> (not res!796530) (not e!1131940))))

(assert (=> b!1768782 (= res!796530 (= (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684657)))) (originalCharacters!4297 (_1!10943 (get!5947 lt!684657)))))))

(declare-fun b!1768784 () Bool)

(declare-fun e!1131939 () Option!3988)

(declare-fun lt!684661 () Option!3988)

(declare-fun lt!684658 () Option!3988)

(assert (=> b!1768784 (= e!1131939 (ite (and ((_ is None!3987) lt!684661) ((_ is None!3987) lt!684658)) None!3987 (ite ((_ is None!3987) lt!684658) lt!684661 (ite ((_ is None!3987) lt!684661) lt!684658 (ite (>= (size!15470 (_1!10943 (v!25460 lt!684661))) (size!15470 (_1!10943 (v!25460 lt!684658)))) lt!684661 lt!684658)))))))

(assert (=> b!1768784 (= lt!684661 call!110911)))

(assert (=> b!1768784 (= lt!684658 (maxPrefix!1666 thiss!24550 (t!165062 rules!3447) lt!684564))))

(declare-fun b!1768785 () Bool)

(declare-fun res!796532 () Bool)

(assert (=> b!1768785 (=> (not res!796532) (not e!1131940))))

(assert (=> b!1768785 (= res!796532 (= (++!5307 (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684657)))) (_2!10943 (get!5947 lt!684657))) lt!684564))))

(declare-fun b!1768786 () Bool)

(declare-fun res!796531 () Bool)

(assert (=> b!1768786 (=> (not res!796531) (not e!1131940))))

(assert (=> b!1768786 (= res!796531 (= (value!108938 (_1!10943 (get!5947 lt!684657))) (apply!5283 (transformation!3483 (rule!5521 (_1!10943 (get!5947 lt!684657)))) (seqFromList!2452 (originalCharacters!4297 (_1!10943 (get!5947 lt!684657)))))))))

(declare-fun b!1768787 () Bool)

(declare-fun res!796529 () Bool)

(assert (=> b!1768787 (=> (not res!796529) (not e!1131940))))

(assert (=> b!1768787 (= res!796529 (matchR!2284 (regex!3483 (rule!5521 (_1!10943 (get!5947 lt!684657)))) (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684657))))))))

(declare-fun d!540166 () Bool)

(assert (=> d!540166 e!1131938))

(declare-fun res!796526 () Bool)

(assert (=> d!540166 (=> res!796526 e!1131938)))

(assert (=> d!540166 (= res!796526 (isEmpty!12300 lt!684657))))

(assert (=> d!540166 (= lt!684657 e!1131939)))

(declare-fun c!288005 () Bool)

(assert (=> d!540166 (= c!288005 (and ((_ is Cons!19479) rules!3447) ((_ is Nil!19479) (t!165062 rules!3447))))))

(declare-fun lt!684660 () Unit!33672)

(declare-fun lt!684659 () Unit!33672)

(assert (=> d!540166 (= lt!684660 lt!684659)))

(assert (=> d!540166 (isPrefix!1723 lt!684564 lt!684564)))

(declare-fun lemmaIsPrefixRefl!1140 (List!19548 List!19548) Unit!33672)

(assert (=> d!540166 (= lt!684659 (lemmaIsPrefixRefl!1140 lt!684564 lt!684564))))

(declare-fun rulesValidInductive!1178 (LexerInterface!3112 List!19549) Bool)

(assert (=> d!540166 (rulesValidInductive!1178 thiss!24550 rules!3447)))

(assert (=> d!540166 (= (maxPrefix!1666 thiss!24550 rules!3447 lt!684564) lt!684657)))

(declare-fun b!1768783 () Bool)

(assert (=> b!1768783 (= e!1131939 call!110911)))

(assert (= (and d!540166 c!288005) b!1768783))

(assert (= (and d!540166 (not c!288005)) b!1768784))

(assert (= (or b!1768783 b!1768784) bm!110906))

(assert (= (and d!540166 (not res!796526)) b!1768780))

(assert (= (and b!1768780 res!796527) b!1768782))

(assert (= (and b!1768782 res!796530) b!1768779))

(assert (= (and b!1768779 res!796528) b!1768785))

(assert (= (and b!1768785 res!796532) b!1768786))

(assert (= (and b!1768786 res!796531) b!1768787))

(assert (= (and b!1768787 res!796529) b!1768781))

(declare-fun m!2186935 () Bool)

(assert (=> bm!110906 m!2186935))

(declare-fun m!2186937 () Bool)

(assert (=> b!1768786 m!2186937))

(declare-fun m!2186939 () Bool)

(assert (=> b!1768786 m!2186939))

(assert (=> b!1768786 m!2186939))

(declare-fun m!2186941 () Bool)

(assert (=> b!1768786 m!2186941))

(declare-fun m!2186943 () Bool)

(assert (=> b!1768780 m!2186943))

(assert (=> b!1768782 m!2186937))

(declare-fun m!2186945 () Bool)

(assert (=> b!1768782 m!2186945))

(assert (=> b!1768782 m!2186945))

(declare-fun m!2186947 () Bool)

(assert (=> b!1768782 m!2186947))

(declare-fun m!2186949 () Bool)

(assert (=> b!1768784 m!2186949))

(declare-fun m!2186951 () Bool)

(assert (=> d!540166 m!2186951))

(declare-fun m!2186953 () Bool)

(assert (=> d!540166 m!2186953))

(declare-fun m!2186955 () Bool)

(assert (=> d!540166 m!2186955))

(declare-fun m!2186957 () Bool)

(assert (=> d!540166 m!2186957))

(assert (=> b!1768787 m!2186937))

(assert (=> b!1768787 m!2186945))

(assert (=> b!1768787 m!2186945))

(assert (=> b!1768787 m!2186947))

(assert (=> b!1768787 m!2186947))

(declare-fun m!2186959 () Bool)

(assert (=> b!1768787 m!2186959))

(assert (=> b!1768779 m!2186937))

(declare-fun m!2186961 () Bool)

(assert (=> b!1768779 m!2186961))

(assert (=> b!1768779 m!2186693))

(assert (=> b!1768781 m!2186937))

(declare-fun m!2186963 () Bool)

(assert (=> b!1768781 m!2186963))

(assert (=> b!1768785 m!2186937))

(assert (=> b!1768785 m!2186945))

(assert (=> b!1768785 m!2186945))

(assert (=> b!1768785 m!2186947))

(assert (=> b!1768785 m!2186947))

(declare-fun m!2186965 () Bool)

(assert (=> b!1768785 m!2186965))

(assert (=> b!1768446 d!540166))

(declare-fun d!540168 () Bool)

(assert (=> d!540168 (= (list!7909 lt!684553) (list!7912 (c!287943 lt!684553)))))

(declare-fun bs!404478 () Bool)

(assert (= bs!404478 d!540168))

(declare-fun m!2186967 () Bool)

(assert (=> bs!404478 m!2186967))

(assert (=> b!1768446 d!540168))

(declare-fun d!540170 () Bool)

(declare-fun lt!684662 () BalanceConc!12902)

(assert (=> d!540170 (= (list!7909 lt!684662) (originalCharacters!4297 token!523))))

(assert (=> d!540170 (= lt!684662 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 token!523))) (value!108938 token!523)))))

(assert (=> d!540170 (= (charsOf!2132 token!523) lt!684662)))

(declare-fun b_lambda!57517 () Bool)

(assert (=> (not b_lambda!57517) (not d!540170)))

(assert (=> d!540170 t!165064))

(declare-fun b_and!134309 () Bool)

(assert (= b_and!134303 (and (=> t!165064 result!128648) b_and!134309)))

(assert (=> d!540170 t!165066))

(declare-fun b_and!134311 () Bool)

(assert (= b_and!134305 (and (=> t!165066 result!128650) b_and!134311)))

(assert (=> d!540170 t!165068))

(declare-fun b_and!134313 () Bool)

(assert (= b_and!134307 (and (=> t!165068 result!128652) b_and!134313)))

(declare-fun m!2186969 () Bool)

(assert (=> d!540170 m!2186969))

(assert (=> d!540170 m!2186765))

(assert (=> b!1768446 d!540170))

(declare-fun b!1768937 () Bool)

(declare-fun e!1132026 () Unit!33672)

(declare-fun Unit!33677 () Unit!33672)

(assert (=> b!1768937 (= e!1132026 Unit!33677)))

(declare-fun lt!684804 () List!19548)

(assert (=> b!1768937 (= lt!684804 (++!5307 lt!684564 suffix!1421))))

(declare-fun lt!684800 () Unit!33672)

(declare-fun lt!684796 () Token!6532)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!331 (LexerInterface!3112 Rule!6766 List!19549 List!19548) Unit!33672)

(assert (=> b!1768937 (= lt!684800 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!331 thiss!24550 (rule!5521 lt!684796) rules!3447 lt!684804))))

(assert (=> b!1768937 (isEmpty!12300 (maxPrefixOneRule!1035 thiss!24550 (rule!5521 lt!684796) lt!684804))))

(declare-fun lt!684803 () Unit!33672)

(assert (=> b!1768937 (= lt!684803 lt!684800)))

(declare-fun lt!684797 () List!19548)

(assert (=> b!1768937 (= lt!684797 (list!7909 (charsOf!2132 lt!684796)))))

(declare-fun lt!684801 () Unit!33672)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!327 (LexerInterface!3112 Rule!6766 List!19548 List!19548) Unit!33672)

(assert (=> b!1768937 (= lt!684801 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!327 thiss!24550 (rule!5521 lt!684796) lt!684797 (++!5307 lt!684564 suffix!1421)))))

(assert (=> b!1768937 (not (matchR!2284 (regex!3483 (rule!5521 lt!684796)) lt!684797))))

(declare-fun lt!684798 () Unit!33672)

(assert (=> b!1768937 (= lt!684798 lt!684801)))

(assert (=> b!1768937 false))

(declare-fun d!540172 () Bool)

(assert (=> d!540172 (isDefined!3331 (maxPrefix!1666 thiss!24550 rules!3447 (++!5307 lt!684564 suffix!1421)))))

(declare-fun lt!684807 () Unit!33672)

(assert (=> d!540172 (= lt!684807 e!1132026)))

(declare-fun c!288040 () Bool)

(assert (=> d!540172 (= c!288040 (isEmpty!12300 (maxPrefix!1666 thiss!24550 rules!3447 (++!5307 lt!684564 suffix!1421))))))

(declare-fun lt!684802 () Unit!33672)

(declare-fun lt!684812 () Unit!33672)

(assert (=> d!540172 (= lt!684802 lt!684812)))

(declare-fun e!1132025 () Bool)

(assert (=> d!540172 e!1132025))

(declare-fun res!796603 () Bool)

(assert (=> d!540172 (=> (not res!796603) (not e!1132025))))

(assert (=> d!540172 (= res!796603 (isDefined!3332 (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 lt!684796)))))))

(assert (=> d!540172 (= lt!684812 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!531 thiss!24550 rules!3447 lt!684564 lt!684796))))

(declare-fun lt!684811 () Unit!33672)

(declare-fun lt!684809 () Unit!33672)

(assert (=> d!540172 (= lt!684811 lt!684809)))

(declare-fun lt!684799 () List!19548)

(assert (=> d!540172 (isPrefix!1723 lt!684799 (++!5307 lt!684564 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!323 (List!19548 List!19548 List!19548) Unit!33672)

(assert (=> d!540172 (= lt!684809 (lemmaPrefixStaysPrefixWhenAddingToSuffix!323 lt!684799 lt!684564 suffix!1421))))

(assert (=> d!540172 (= lt!684799 (list!7909 (charsOf!2132 lt!684796)))))

(declare-fun lt!684806 () Unit!33672)

(declare-fun lt!684810 () Unit!33672)

(assert (=> d!540172 (= lt!684806 lt!684810)))

(declare-fun lt!684805 () List!19548)

(declare-fun lt!684808 () List!19548)

(assert (=> d!540172 (isPrefix!1723 lt!684805 (++!5307 lt!684805 lt!684808))))

(assert (=> d!540172 (= lt!684810 (lemmaConcatTwoListThenFirstIsPrefix!1232 lt!684805 lt!684808))))

(assert (=> d!540172 (= lt!684808 (_2!10943 (get!5947 (maxPrefix!1666 thiss!24550 rules!3447 lt!684564))))))

(assert (=> d!540172 (= lt!684805 (list!7909 (charsOf!2132 lt!684796)))))

(declare-datatypes ((List!19554 0))(
  ( (Nil!19484) (Cons!19484 (h!24885 Token!6532) (t!165127 List!19554)) )
))
(declare-fun head!4112 (List!19554) Token!6532)

(declare-datatypes ((IArray!12967 0))(
  ( (IArray!12968 (innerList!6541 List!19554)) )
))
(declare-datatypes ((Conc!6481 0))(
  ( (Node!6481 (left!15600 Conc!6481) (right!15930 Conc!6481) (csize!13192 Int) (cheight!6692 Int)) (Leaf!9443 (xs!9357 IArray!12967) (csize!13193 Int)) (Empty!6481) )
))
(declare-datatypes ((BalanceConc!12906 0))(
  ( (BalanceConc!12907 (c!288079 Conc!6481)) )
))
(declare-fun list!7913 (BalanceConc!12906) List!19554)

(declare-datatypes ((tuple2!19086 0))(
  ( (tuple2!19087 (_1!10945 BalanceConc!12906) (_2!10945 BalanceConc!12902)) )
))
(declare-fun lex!1462 (LexerInterface!3112 List!19549 BalanceConc!12902) tuple2!19086)

(assert (=> d!540172 (= lt!684796 (head!4112 (list!7913 (_1!10945 (lex!1462 thiss!24550 rules!3447 (seqFromList!2452 lt!684564))))))))

(assert (=> d!540172 (not (isEmpty!12296 rules!3447))))

(assert (=> d!540172 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!634 thiss!24550 rules!3447 lt!684564 suffix!1421) lt!684807)))

(declare-fun b!1768936 () Bool)

(assert (=> b!1768936 (= e!1132025 (= (rule!5521 lt!684796) (get!5948 (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 lt!684796))))))))

(declare-fun b!1768935 () Bool)

(declare-fun res!796604 () Bool)

(assert (=> b!1768935 (=> (not res!796604) (not e!1132025))))

(assert (=> b!1768935 (= res!796604 (matchR!2284 (regex!3483 (get!5948 (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 lt!684796))))) (list!7909 (charsOf!2132 lt!684796))))))

(declare-fun b!1768938 () Bool)

(declare-fun Unit!33678 () Unit!33672)

(assert (=> b!1768938 (= e!1132026 Unit!33678)))

(assert (= (and d!540172 res!796603) b!1768935))

(assert (= (and b!1768935 res!796604) b!1768936))

(assert (= (and d!540172 c!288040) b!1768937))

(assert (= (and d!540172 (not c!288040)) b!1768938))

(assert (=> b!1768937 m!2186607))

(declare-fun m!2187211 () Bool)

(assert (=> b!1768937 m!2187211))

(assert (=> b!1768937 m!2186607))

(declare-fun m!2187213 () Bool)

(assert (=> b!1768937 m!2187213))

(declare-fun m!2187215 () Bool)

(assert (=> b!1768937 m!2187215))

(declare-fun m!2187217 () Bool)

(assert (=> b!1768937 m!2187217))

(declare-fun m!2187219 () Bool)

(assert (=> b!1768937 m!2187219))

(assert (=> b!1768937 m!2187217))

(declare-fun m!2187221 () Bool)

(assert (=> b!1768937 m!2187221))

(declare-fun m!2187223 () Bool)

(assert (=> b!1768937 m!2187223))

(assert (=> b!1768937 m!2187221))

(declare-fun m!2187225 () Bool)

(assert (=> d!540172 m!2187225))

(assert (=> d!540172 m!2186607))

(declare-fun m!2187227 () Bool)

(assert (=> d!540172 m!2187227))

(assert (=> d!540172 m!2187225))

(declare-fun m!2187229 () Bool)

(assert (=> d!540172 m!2187229))

(assert (=> d!540172 m!2186629))

(declare-fun m!2187231 () Bool)

(assert (=> d!540172 m!2187231))

(declare-fun m!2187233 () Bool)

(assert (=> d!540172 m!2187233))

(declare-fun m!2187235 () Bool)

(assert (=> d!540172 m!2187235))

(assert (=> d!540172 m!2187227))

(declare-fun m!2187237 () Bool)

(assert (=> d!540172 m!2187237))

(declare-fun m!2187239 () Bool)

(assert (=> d!540172 m!2187239))

(declare-fun m!2187241 () Bool)

(assert (=> d!540172 m!2187241))

(declare-fun m!2187243 () Bool)

(assert (=> d!540172 m!2187243))

(assert (=> d!540172 m!2187233))

(assert (=> d!540172 m!2186607))

(assert (=> d!540172 m!2186667))

(declare-fun m!2187245 () Bool)

(assert (=> d!540172 m!2187245))

(assert (=> d!540172 m!2187217))

(assert (=> d!540172 m!2187219))

(assert (=> d!540172 m!2186629))

(assert (=> d!540172 m!2187217))

(assert (=> d!540172 m!2186607))

(declare-fun m!2187247 () Bool)

(assert (=> d!540172 m!2187247))

(declare-fun m!2187249 () Bool)

(assert (=> d!540172 m!2187249))

(assert (=> d!540172 m!2187227))

(declare-fun m!2187251 () Bool)

(assert (=> d!540172 m!2187251))

(assert (=> d!540172 m!2187243))

(declare-fun m!2187253 () Bool)

(assert (=> d!540172 m!2187253))

(declare-fun m!2187255 () Bool)

(assert (=> d!540172 m!2187255))

(assert (=> d!540172 m!2187239))

(assert (=> b!1768936 m!2187233))

(assert (=> b!1768936 m!2187233))

(declare-fun m!2187257 () Bool)

(assert (=> b!1768936 m!2187257))

(assert (=> b!1768935 m!2187233))

(assert (=> b!1768935 m!2187219))

(declare-fun m!2187259 () Bool)

(assert (=> b!1768935 m!2187259))

(assert (=> b!1768935 m!2187233))

(assert (=> b!1768935 m!2187257))

(assert (=> b!1768935 m!2187217))

(assert (=> b!1768935 m!2187219))

(assert (=> b!1768935 m!2187217))

(assert (=> b!1768450 d!540172))

(declare-fun b!1768939 () Bool)

(declare-fun e!1132028 () List!19548)

(assert (=> b!1768939 (= e!1132028 (_2!10943 lt!684574))))

(declare-fun d!540258 () Bool)

(declare-fun e!1132027 () Bool)

(assert (=> d!540258 e!1132027))

(declare-fun res!796605 () Bool)

(assert (=> d!540258 (=> (not res!796605) (not e!1132027))))

(declare-fun lt!684813 () List!19548)

(assert (=> d!540258 (= res!796605 (= (content!2823 lt!684813) ((_ map or) (content!2823 lt!684567) (content!2823 (_2!10943 lt!684574)))))))

(assert (=> d!540258 (= lt!684813 e!1132028)))

(declare-fun c!288041 () Bool)

(assert (=> d!540258 (= c!288041 ((_ is Nil!19478) lt!684567))))

(assert (=> d!540258 (= (++!5307 lt!684567 (_2!10943 lt!684574)) lt!684813)))

(declare-fun b!1768941 () Bool)

(declare-fun res!796606 () Bool)

(assert (=> b!1768941 (=> (not res!796606) (not e!1132027))))

(assert (=> b!1768941 (= res!796606 (= (size!15471 lt!684813) (+ (size!15471 lt!684567) (size!15471 (_2!10943 lt!684574)))))))

(declare-fun b!1768942 () Bool)

(assert (=> b!1768942 (= e!1132027 (or (not (= (_2!10943 lt!684574) Nil!19478)) (= lt!684813 lt!684567)))))

(declare-fun b!1768940 () Bool)

(assert (=> b!1768940 (= e!1132028 (Cons!19478 (h!24879 lt!684567) (++!5307 (t!165061 lt!684567) (_2!10943 lt!684574))))))

(assert (= (and d!540258 c!288041) b!1768939))

(assert (= (and d!540258 (not c!288041)) b!1768940))

(assert (= (and d!540258 res!796605) b!1768941))

(assert (= (and b!1768941 res!796606) b!1768942))

(declare-fun m!2187261 () Bool)

(assert (=> d!540258 m!2187261))

(declare-fun m!2187263 () Bool)

(assert (=> d!540258 m!2187263))

(declare-fun m!2187265 () Bool)

(assert (=> d!540258 m!2187265))

(declare-fun m!2187267 () Bool)

(assert (=> b!1768941 m!2187267))

(assert (=> b!1768941 m!2186643))

(declare-fun m!2187269 () Bool)

(assert (=> b!1768941 m!2187269))

(declare-fun m!2187271 () Bool)

(assert (=> b!1768940 m!2187271))

(assert (=> b!1768450 d!540258))

(declare-fun b!1768943 () Bool)

(declare-fun res!796609 () Bool)

(declare-fun e!1132031 () Bool)

(assert (=> b!1768943 (=> (not res!796609) (not e!1132031))))

(declare-fun lt!684814 () Option!3988)

(assert (=> b!1768943 (= res!796609 (< (size!15471 (_2!10943 (get!5947 lt!684814))) (size!15471 lt!684559)))))

(declare-fun b!1768944 () Bool)

(declare-fun e!1132029 () Bool)

(assert (=> b!1768944 (= e!1132029 e!1132031)))

(declare-fun res!796608 () Bool)

(assert (=> b!1768944 (=> (not res!796608) (not e!1132031))))

(assert (=> b!1768944 (= res!796608 (isDefined!3331 lt!684814))))

(declare-fun b!1768945 () Bool)

(assert (=> b!1768945 (= e!1132031 (contains!3513 rules!3447 (rule!5521 (_1!10943 (get!5947 lt!684814)))))))

(declare-fun call!110917 () Option!3988)

(declare-fun bm!110912 () Bool)

(assert (=> bm!110912 (= call!110917 (maxPrefixOneRule!1035 thiss!24550 (h!24880 rules!3447) lt!684559))))

(declare-fun b!1768946 () Bool)

(declare-fun res!796611 () Bool)

(assert (=> b!1768946 (=> (not res!796611) (not e!1132031))))

(assert (=> b!1768946 (= res!796611 (= (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684814)))) (originalCharacters!4297 (_1!10943 (get!5947 lt!684814)))))))

(declare-fun b!1768948 () Bool)

(declare-fun e!1132030 () Option!3988)

(declare-fun lt!684818 () Option!3988)

(declare-fun lt!684815 () Option!3988)

(assert (=> b!1768948 (= e!1132030 (ite (and ((_ is None!3987) lt!684818) ((_ is None!3987) lt!684815)) None!3987 (ite ((_ is None!3987) lt!684815) lt!684818 (ite ((_ is None!3987) lt!684818) lt!684815 (ite (>= (size!15470 (_1!10943 (v!25460 lt!684818))) (size!15470 (_1!10943 (v!25460 lt!684815)))) lt!684818 lt!684815)))))))

(assert (=> b!1768948 (= lt!684818 call!110917)))

(assert (=> b!1768948 (= lt!684815 (maxPrefix!1666 thiss!24550 (t!165062 rules!3447) lt!684559))))

(declare-fun b!1768949 () Bool)

(declare-fun res!796613 () Bool)

(assert (=> b!1768949 (=> (not res!796613) (not e!1132031))))

(assert (=> b!1768949 (= res!796613 (= (++!5307 (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684814)))) (_2!10943 (get!5947 lt!684814))) lt!684559))))

(declare-fun b!1768950 () Bool)

(declare-fun res!796612 () Bool)

(assert (=> b!1768950 (=> (not res!796612) (not e!1132031))))

(assert (=> b!1768950 (= res!796612 (= (value!108938 (_1!10943 (get!5947 lt!684814))) (apply!5283 (transformation!3483 (rule!5521 (_1!10943 (get!5947 lt!684814)))) (seqFromList!2452 (originalCharacters!4297 (_1!10943 (get!5947 lt!684814)))))))))

(declare-fun b!1768951 () Bool)

(declare-fun res!796610 () Bool)

(assert (=> b!1768951 (=> (not res!796610) (not e!1132031))))

(assert (=> b!1768951 (= res!796610 (matchR!2284 (regex!3483 (rule!5521 (_1!10943 (get!5947 lt!684814)))) (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684814))))))))

(declare-fun d!540260 () Bool)

(assert (=> d!540260 e!1132029))

(declare-fun res!796607 () Bool)

(assert (=> d!540260 (=> res!796607 e!1132029)))

(assert (=> d!540260 (= res!796607 (isEmpty!12300 lt!684814))))

(assert (=> d!540260 (= lt!684814 e!1132030)))

(declare-fun c!288042 () Bool)

(assert (=> d!540260 (= c!288042 (and ((_ is Cons!19479) rules!3447) ((_ is Nil!19479) (t!165062 rules!3447))))))

(declare-fun lt!684817 () Unit!33672)

(declare-fun lt!684816 () Unit!33672)

(assert (=> d!540260 (= lt!684817 lt!684816)))

(assert (=> d!540260 (isPrefix!1723 lt!684559 lt!684559)))

(assert (=> d!540260 (= lt!684816 (lemmaIsPrefixRefl!1140 lt!684559 lt!684559))))

(assert (=> d!540260 (rulesValidInductive!1178 thiss!24550 rules!3447)))

(assert (=> d!540260 (= (maxPrefix!1666 thiss!24550 rules!3447 lt!684559) lt!684814)))

(declare-fun b!1768947 () Bool)

(assert (=> b!1768947 (= e!1132030 call!110917)))

(assert (= (and d!540260 c!288042) b!1768947))

(assert (= (and d!540260 (not c!288042)) b!1768948))

(assert (= (or b!1768947 b!1768948) bm!110912))

(assert (= (and d!540260 (not res!796607)) b!1768944))

(assert (= (and b!1768944 res!796608) b!1768946))

(assert (= (and b!1768946 res!796611) b!1768943))

(assert (= (and b!1768943 res!796609) b!1768949))

(assert (= (and b!1768949 res!796613) b!1768950))

(assert (= (and b!1768950 res!796612) b!1768951))

(assert (= (and b!1768951 res!796610) b!1768945))

(declare-fun m!2187273 () Bool)

(assert (=> bm!110912 m!2187273))

(declare-fun m!2187275 () Bool)

(assert (=> b!1768950 m!2187275))

(declare-fun m!2187277 () Bool)

(assert (=> b!1768950 m!2187277))

(assert (=> b!1768950 m!2187277))

(declare-fun m!2187279 () Bool)

(assert (=> b!1768950 m!2187279))

(declare-fun m!2187281 () Bool)

(assert (=> b!1768944 m!2187281))

(assert (=> b!1768946 m!2187275))

(declare-fun m!2187283 () Bool)

(assert (=> b!1768946 m!2187283))

(assert (=> b!1768946 m!2187283))

(declare-fun m!2187285 () Bool)

(assert (=> b!1768946 m!2187285))

(declare-fun m!2187287 () Bool)

(assert (=> b!1768948 m!2187287))

(declare-fun m!2187289 () Bool)

(assert (=> d!540260 m!2187289))

(declare-fun m!2187291 () Bool)

(assert (=> d!540260 m!2187291))

(declare-fun m!2187293 () Bool)

(assert (=> d!540260 m!2187293))

(assert (=> d!540260 m!2186957))

(assert (=> b!1768951 m!2187275))

(assert (=> b!1768951 m!2187283))

(assert (=> b!1768951 m!2187283))

(assert (=> b!1768951 m!2187285))

(assert (=> b!1768951 m!2187285))

(declare-fun m!2187295 () Bool)

(assert (=> b!1768951 m!2187295))

(assert (=> b!1768943 m!2187275))

(declare-fun m!2187297 () Bool)

(assert (=> b!1768943 m!2187297))

(assert (=> b!1768943 m!2186695))

(assert (=> b!1768945 m!2187275))

(declare-fun m!2187299 () Bool)

(assert (=> b!1768945 m!2187299))

(assert (=> b!1768949 m!2187275))

(assert (=> b!1768949 m!2187283))

(assert (=> b!1768949 m!2187283))

(assert (=> b!1768949 m!2187285))

(assert (=> b!1768949 m!2187285))

(declare-fun m!2187301 () Bool)

(assert (=> b!1768949 m!2187301))

(assert (=> b!1768450 d!540260))

(declare-fun b!1768960 () Bool)

(declare-fun e!1132040 () Bool)

(declare-fun e!1132039 () Bool)

(assert (=> b!1768960 (= e!1132040 e!1132039)))

(declare-fun res!796622 () Bool)

(assert (=> b!1768960 (=> (not res!796622) (not e!1132039))))

(assert (=> b!1768960 (= res!796622 (not ((_ is Nil!19478) (++!5307 lt!684567 (_2!10943 lt!684574)))))))

(declare-fun b!1768962 () Bool)

(assert (=> b!1768962 (= e!1132039 (isPrefix!1723 (tail!2647 lt!684567) (tail!2647 (++!5307 lt!684567 (_2!10943 lt!684574)))))))

(declare-fun d!540262 () Bool)

(declare-fun e!1132038 () Bool)

(assert (=> d!540262 e!1132038))

(declare-fun res!796625 () Bool)

(assert (=> d!540262 (=> res!796625 e!1132038)))

(declare-fun lt!684821 () Bool)

(assert (=> d!540262 (= res!796625 (not lt!684821))))

(assert (=> d!540262 (= lt!684821 e!1132040)))

(declare-fun res!796624 () Bool)

(assert (=> d!540262 (=> res!796624 e!1132040)))

(assert (=> d!540262 (= res!796624 ((_ is Nil!19478) lt!684567))))

(assert (=> d!540262 (= (isPrefix!1723 lt!684567 (++!5307 lt!684567 (_2!10943 lt!684574))) lt!684821)))

(declare-fun b!1768961 () Bool)

(declare-fun res!796623 () Bool)

(assert (=> b!1768961 (=> (not res!796623) (not e!1132039))))

(assert (=> b!1768961 (= res!796623 (= (head!4110 lt!684567) (head!4110 (++!5307 lt!684567 (_2!10943 lt!684574)))))))

(declare-fun b!1768963 () Bool)

(assert (=> b!1768963 (= e!1132038 (>= (size!15471 (++!5307 lt!684567 (_2!10943 lt!684574))) (size!15471 lt!684567)))))

(assert (= (and d!540262 (not res!796624)) b!1768960))

(assert (= (and b!1768960 res!796622) b!1768961))

(assert (= (and b!1768961 res!796623) b!1768962))

(assert (= (and d!540262 (not res!796625)) b!1768963))

(declare-fun m!2187303 () Bool)

(assert (=> b!1768962 m!2187303))

(assert (=> b!1768962 m!2186597))

(declare-fun m!2187305 () Bool)

(assert (=> b!1768962 m!2187305))

(assert (=> b!1768962 m!2187303))

(assert (=> b!1768962 m!2187305))

(declare-fun m!2187307 () Bool)

(assert (=> b!1768962 m!2187307))

(declare-fun m!2187309 () Bool)

(assert (=> b!1768961 m!2187309))

(assert (=> b!1768961 m!2186597))

(declare-fun m!2187311 () Bool)

(assert (=> b!1768961 m!2187311))

(assert (=> b!1768963 m!2186597))

(declare-fun m!2187313 () Bool)

(assert (=> b!1768963 m!2187313))

(assert (=> b!1768963 m!2186643))

(assert (=> b!1768450 d!540262))

(declare-fun b!1768964 () Bool)

(declare-fun e!1132042 () List!19548)

(assert (=> b!1768964 (= e!1132042 suffix!1421)))

(declare-fun d!540264 () Bool)

(declare-fun e!1132041 () Bool)

(assert (=> d!540264 e!1132041))

(declare-fun res!796626 () Bool)

(assert (=> d!540264 (=> (not res!796626) (not e!1132041))))

(declare-fun lt!684822 () List!19548)

(assert (=> d!540264 (= res!796626 (= (content!2823 lt!684822) ((_ map or) (content!2823 lt!684564) (content!2823 suffix!1421))))))

(assert (=> d!540264 (= lt!684822 e!1132042)))

(declare-fun c!288043 () Bool)

(assert (=> d!540264 (= c!288043 ((_ is Nil!19478) lt!684564))))

(assert (=> d!540264 (= (++!5307 lt!684564 suffix!1421) lt!684822)))

(declare-fun b!1768966 () Bool)

(declare-fun res!796627 () Bool)

(assert (=> b!1768966 (=> (not res!796627) (not e!1132041))))

(assert (=> b!1768966 (= res!796627 (= (size!15471 lt!684822) (+ (size!15471 lt!684564) (size!15471 suffix!1421))))))

(declare-fun b!1768967 () Bool)

(assert (=> b!1768967 (= e!1132041 (or (not (= suffix!1421 Nil!19478)) (= lt!684822 lt!684564)))))

(declare-fun b!1768965 () Bool)

(assert (=> b!1768965 (= e!1132042 (Cons!19478 (h!24879 lt!684564) (++!5307 (t!165061 lt!684564) suffix!1421)))))

(assert (= (and d!540264 c!288043) b!1768964))

(assert (= (and d!540264 (not c!288043)) b!1768965))

(assert (= (and d!540264 res!796626) b!1768966))

(assert (= (and b!1768966 res!796627) b!1768967))

(declare-fun m!2187315 () Bool)

(assert (=> d!540264 m!2187315))

(assert (=> d!540264 m!2186911))

(declare-fun m!2187317 () Bool)

(assert (=> d!540264 m!2187317))

(declare-fun m!2187319 () Bool)

(assert (=> b!1768966 m!2187319))

(assert (=> b!1768966 m!2186693))

(declare-fun m!2187321 () Bool)

(assert (=> b!1768966 m!2187321))

(declare-fun m!2187323 () Bool)

(assert (=> b!1768965 m!2187323))

(assert (=> b!1768450 d!540264))

(declare-fun b!1768968 () Bool)

(declare-fun e!1132045 () Bool)

(declare-fun e!1132044 () Bool)

(assert (=> b!1768968 (= e!1132045 e!1132044)))

(declare-fun res!796628 () Bool)

(assert (=> b!1768968 (=> (not res!796628) (not e!1132044))))

(assert (=> b!1768968 (= res!796628 (not ((_ is Nil!19478) lt!684559)))))

(declare-fun b!1768970 () Bool)

(assert (=> b!1768970 (= e!1132044 (isPrefix!1723 (tail!2647 lt!684567) (tail!2647 lt!684559)))))

(declare-fun d!540266 () Bool)

(declare-fun e!1132043 () Bool)

(assert (=> d!540266 e!1132043))

(declare-fun res!796631 () Bool)

(assert (=> d!540266 (=> res!796631 e!1132043)))

(declare-fun lt!684823 () Bool)

(assert (=> d!540266 (= res!796631 (not lt!684823))))

(assert (=> d!540266 (= lt!684823 e!1132045)))

(declare-fun res!796630 () Bool)

(assert (=> d!540266 (=> res!796630 e!1132045)))

(assert (=> d!540266 (= res!796630 ((_ is Nil!19478) lt!684567))))

(assert (=> d!540266 (= (isPrefix!1723 lt!684567 lt!684559) lt!684823)))

(declare-fun b!1768969 () Bool)

(declare-fun res!796629 () Bool)

(assert (=> b!1768969 (=> (not res!796629) (not e!1132044))))

(assert (=> b!1768969 (= res!796629 (= (head!4110 lt!684567) (head!4110 lt!684559)))))

(declare-fun b!1768971 () Bool)

(assert (=> b!1768971 (= e!1132043 (>= (size!15471 lt!684559) (size!15471 lt!684567)))))

(assert (= (and d!540266 (not res!796630)) b!1768968))

(assert (= (and b!1768968 res!796628) b!1768969))

(assert (= (and b!1768969 res!796629) b!1768970))

(assert (= (and d!540266 (not res!796631)) b!1768971))

(assert (=> b!1768970 m!2187303))

(declare-fun m!2187325 () Bool)

(assert (=> b!1768970 m!2187325))

(assert (=> b!1768970 m!2187303))

(assert (=> b!1768970 m!2187325))

(declare-fun m!2187327 () Bool)

(assert (=> b!1768970 m!2187327))

(assert (=> b!1768969 m!2187309))

(declare-fun m!2187329 () Bool)

(assert (=> b!1768969 m!2187329))

(assert (=> b!1768971 m!2186695))

(assert (=> b!1768971 m!2186643))

(assert (=> b!1768450 d!540266))

(assert (=> b!1768450 d!540144))

(declare-fun d!540268 () Bool)

(declare-fun isEmpty!12301 (Option!3989) Bool)

(assert (=> d!540268 (= (isDefined!3332 lt!684554) (not (isEmpty!12301 lt!684554)))))

(declare-fun bs!404495 () Bool)

(assert (= bs!404495 d!540268))

(declare-fun m!2187331 () Bool)

(assert (=> bs!404495 m!2187331))

(assert (=> b!1768450 d!540268))

(declare-fun b!1768972 () Bool)

(declare-fun e!1132048 () Bool)

(declare-fun e!1132047 () Bool)

(assert (=> b!1768972 (= e!1132048 e!1132047)))

(declare-fun res!796632 () Bool)

(assert (=> b!1768972 (=> (not res!796632) (not e!1132047))))

(assert (=> b!1768972 (= res!796632 (not ((_ is Nil!19478) lt!684559)))))

(declare-fun b!1768974 () Bool)

(assert (=> b!1768974 (= e!1132047 (isPrefix!1723 (tail!2647 lt!684564) (tail!2647 lt!684559)))))

(declare-fun d!540270 () Bool)

(declare-fun e!1132046 () Bool)

(assert (=> d!540270 e!1132046))

(declare-fun res!796635 () Bool)

(assert (=> d!540270 (=> res!796635 e!1132046)))

(declare-fun lt!684824 () Bool)

(assert (=> d!540270 (= res!796635 (not lt!684824))))

(assert (=> d!540270 (= lt!684824 e!1132048)))

(declare-fun res!796634 () Bool)

(assert (=> d!540270 (=> res!796634 e!1132048)))

(assert (=> d!540270 (= res!796634 ((_ is Nil!19478) lt!684564))))

(assert (=> d!540270 (= (isPrefix!1723 lt!684564 lt!684559) lt!684824)))

(declare-fun b!1768973 () Bool)

(declare-fun res!796633 () Bool)

(assert (=> b!1768973 (=> (not res!796633) (not e!1132047))))

(assert (=> b!1768973 (= res!796633 (= (head!4110 lt!684564) (head!4110 lt!684559)))))

(declare-fun b!1768975 () Bool)

(assert (=> b!1768975 (= e!1132046 (>= (size!15471 lt!684559) (size!15471 lt!684564)))))

(assert (= (and d!540270 (not res!796634)) b!1768972))

(assert (= (and b!1768972 res!796632) b!1768973))

(assert (= (and b!1768973 res!796633) b!1768974))

(assert (= (and d!540270 (not res!796635)) b!1768975))

(assert (=> b!1768974 m!2186803))

(assert (=> b!1768974 m!2187325))

(assert (=> b!1768974 m!2186803))

(assert (=> b!1768974 m!2187325))

(declare-fun m!2187333 () Bool)

(assert (=> b!1768974 m!2187333))

(assert (=> b!1768973 m!2186795))

(assert (=> b!1768973 m!2187329))

(assert (=> b!1768975 m!2186695))

(assert (=> b!1768975 m!2186693))

(assert (=> b!1768450 d!540270))

(declare-fun d!540272 () Bool)

(assert (=> d!540272 (= (get!5947 lt!684563) (v!25460 lt!684563))))

(assert (=> b!1768450 d!540272))

(declare-fun d!540274 () Bool)

(declare-fun e!1132059 () Bool)

(assert (=> d!540274 e!1132059))

(declare-fun res!796641 () Bool)

(assert (=> d!540274 (=> res!796641 e!1132059)))

(declare-fun lt!684832 () Option!3989)

(assert (=> d!540274 (= res!796641 (isEmpty!12301 lt!684832))))

(declare-fun e!1132057 () Option!3989)

(assert (=> d!540274 (= lt!684832 e!1132057)))

(declare-fun c!288048 () Bool)

(assert (=> d!540274 (= c!288048 (and ((_ is Cons!19479) rules!3447) (= (tag!3861 (h!24880 rules!3447)) (tag!3861 (rule!5521 (_1!10943 lt!684574))))))))

(assert (=> d!540274 (rulesInvariant!2781 thiss!24550 rules!3447)))

(assert (=> d!540274 (= (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 (_1!10943 lt!684574)))) lt!684832)))

(declare-fun b!1768988 () Bool)

(declare-fun e!1132058 () Option!3989)

(assert (=> b!1768988 (= e!1132058 None!3988)))

(declare-fun b!1768989 () Bool)

(declare-fun e!1132060 () Bool)

(assert (=> b!1768989 (= e!1132060 (= (tag!3861 (get!5948 lt!684832)) (tag!3861 (rule!5521 (_1!10943 lt!684574)))))))

(declare-fun b!1768990 () Bool)

(assert (=> b!1768990 (= e!1132059 e!1132060)))

(declare-fun res!796640 () Bool)

(assert (=> b!1768990 (=> (not res!796640) (not e!1132060))))

(assert (=> b!1768990 (= res!796640 (contains!3513 rules!3447 (get!5948 lt!684832)))))

(declare-fun b!1768991 () Bool)

(declare-fun lt!684833 () Unit!33672)

(declare-fun lt!684831 () Unit!33672)

(assert (=> b!1768991 (= lt!684833 lt!684831)))

(assert (=> b!1768991 (rulesInvariant!2781 thiss!24550 (t!165062 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!202 (LexerInterface!3112 Rule!6766 List!19549) Unit!33672)

(assert (=> b!1768991 (= lt!684831 (lemmaInvariantOnRulesThenOnTail!202 thiss!24550 (h!24880 rules!3447) (t!165062 rules!3447)))))

(assert (=> b!1768991 (= e!1132058 (getRuleFromTag!531 thiss!24550 (t!165062 rules!3447) (tag!3861 (rule!5521 (_1!10943 lt!684574)))))))

(declare-fun b!1768992 () Bool)

(assert (=> b!1768992 (= e!1132057 (Some!3988 (h!24880 rules!3447)))))

(declare-fun b!1768993 () Bool)

(assert (=> b!1768993 (= e!1132057 e!1132058)))

(declare-fun c!288049 () Bool)

(assert (=> b!1768993 (= c!288049 (and ((_ is Cons!19479) rules!3447) (not (= (tag!3861 (h!24880 rules!3447)) (tag!3861 (rule!5521 (_1!10943 lt!684574)))))))))

(assert (= (and d!540274 c!288048) b!1768992))

(assert (= (and d!540274 (not c!288048)) b!1768993))

(assert (= (and b!1768993 c!288049) b!1768991))

(assert (= (and b!1768993 (not c!288049)) b!1768988))

(assert (= (and d!540274 (not res!796641)) b!1768990))

(assert (= (and b!1768990 res!796640) b!1768989))

(declare-fun m!2187335 () Bool)

(assert (=> d!540274 m!2187335))

(assert (=> d!540274 m!2186579))

(declare-fun m!2187337 () Bool)

(assert (=> b!1768989 m!2187337))

(assert (=> b!1768990 m!2187337))

(assert (=> b!1768990 m!2187337))

(declare-fun m!2187339 () Bool)

(assert (=> b!1768990 m!2187339))

(declare-fun m!2187341 () Bool)

(assert (=> b!1768991 m!2187341))

(declare-fun m!2187343 () Bool)

(assert (=> b!1768991 m!2187343))

(declare-fun m!2187345 () Bool)

(assert (=> b!1768991 m!2187345))

(assert (=> b!1768450 d!540274))

(declare-fun d!540276 () Bool)

(declare-fun e!1132063 () Bool)

(assert (=> d!540276 e!1132063))

(declare-fun res!796646 () Bool)

(assert (=> d!540276 (=> (not res!796646) (not e!1132063))))

(assert (=> d!540276 (= res!796646 (isDefined!3332 (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 (_1!10943 lt!684574))))))))

(declare-fun lt!684836 () Unit!33672)

(declare-fun choose!10995 (LexerInterface!3112 List!19549 List!19548 Token!6532) Unit!33672)

(assert (=> d!540276 (= lt!684836 (choose!10995 thiss!24550 rules!3447 lt!684559 (_1!10943 lt!684574)))))

(assert (=> d!540276 (rulesInvariant!2781 thiss!24550 rules!3447)))

(assert (=> d!540276 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!531 thiss!24550 rules!3447 lt!684559 (_1!10943 lt!684574)) lt!684836)))

(declare-fun b!1768998 () Bool)

(declare-fun res!796647 () Bool)

(assert (=> b!1768998 (=> (not res!796647) (not e!1132063))))

(assert (=> b!1768998 (= res!796647 (matchR!2284 (regex!3483 (get!5948 (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 (_1!10943 lt!684574)))))) (list!7909 (charsOf!2132 (_1!10943 lt!684574)))))))

(declare-fun b!1768999 () Bool)

(assert (=> b!1768999 (= e!1132063 (= (rule!5521 (_1!10943 lt!684574)) (get!5948 (getRuleFromTag!531 thiss!24550 rules!3447 (tag!3861 (rule!5521 (_1!10943 lt!684574)))))))))

(assert (= (and d!540276 res!796646) b!1768998))

(assert (= (and b!1768998 res!796647) b!1768999))

(assert (=> d!540276 m!2186613))

(assert (=> d!540276 m!2186613))

(declare-fun m!2187347 () Bool)

(assert (=> d!540276 m!2187347))

(declare-fun m!2187349 () Bool)

(assert (=> d!540276 m!2187349))

(assert (=> d!540276 m!2186579))

(assert (=> b!1768998 m!2186595))

(assert (=> b!1768998 m!2186653))

(assert (=> b!1768998 m!2186653))

(declare-fun m!2187351 () Bool)

(assert (=> b!1768998 m!2187351))

(assert (=> b!1768998 m!2186595))

(assert (=> b!1768998 m!2186613))

(declare-fun m!2187353 () Bool)

(assert (=> b!1768998 m!2187353))

(assert (=> b!1768998 m!2186613))

(assert (=> b!1768999 m!2186613))

(assert (=> b!1768999 m!2186613))

(assert (=> b!1768999 m!2187353))

(assert (=> b!1768450 d!540276))

(declare-fun d!540278 () Bool)

(assert (=> d!540278 (= (list!7909 lt!684569) (list!7912 (c!287943 lt!684569)))))

(declare-fun bs!404496 () Bool)

(assert (= bs!404496 d!540278))

(declare-fun m!2187355 () Bool)

(assert (=> bs!404496 m!2187355))

(assert (=> b!1768450 d!540278))

(declare-fun d!540280 () Bool)

(assert (=> d!540280 (isPrefix!1723 lt!684564 (++!5307 lt!684564 suffix!1421))))

(declare-fun lt!684849 () Unit!33672)

(declare-fun choose!10996 (List!19548 List!19548) Unit!33672)

(assert (=> d!540280 (= lt!684849 (choose!10996 lt!684564 suffix!1421))))

(assert (=> d!540280 (= (lemmaConcatTwoListThenFirstIsPrefix!1232 lt!684564 suffix!1421) lt!684849)))

(declare-fun bs!404497 () Bool)

(assert (= bs!404497 d!540280))

(assert (=> bs!404497 m!2186607))

(assert (=> bs!404497 m!2186607))

(declare-fun m!2187357 () Bool)

(assert (=> bs!404497 m!2187357))

(declare-fun m!2187359 () Bool)

(assert (=> bs!404497 m!2187359))

(assert (=> b!1768450 d!540280))

(declare-fun d!540282 () Bool)

(assert (=> d!540282 (isPrefix!1723 lt!684567 (++!5307 lt!684567 (_2!10943 lt!684574)))))

(declare-fun lt!684850 () Unit!33672)

(assert (=> d!540282 (= lt!684850 (choose!10996 lt!684567 (_2!10943 lt!684574)))))

(assert (=> d!540282 (= (lemmaConcatTwoListThenFirstIsPrefix!1232 lt!684567 (_2!10943 lt!684574)) lt!684850)))

(declare-fun bs!404498 () Bool)

(assert (= bs!404498 d!540282))

(assert (=> bs!404498 m!2186597))

(assert (=> bs!404498 m!2186597))

(assert (=> bs!404498 m!2186599))

(declare-fun m!2187361 () Bool)

(assert (=> bs!404498 m!2187361))

(assert (=> b!1768450 d!540282))

(declare-fun d!540284 () Bool)

(declare-fun lt!684853 () Int)

(assert (=> d!540284 (= lt!684853 (size!15471 (list!7909 lt!684553)))))

(declare-fun size!15474 (Conc!6479) Int)

(assert (=> d!540284 (= lt!684853 (size!15474 (c!287943 lt!684553)))))

(assert (=> d!540284 (= (size!15472 lt!684553) lt!684853)))

(declare-fun bs!404499 () Bool)

(assert (= bs!404499 d!540284))

(assert (=> bs!404499 m!2186631))

(assert (=> bs!404499 m!2186631))

(declare-fun m!2187363 () Bool)

(assert (=> bs!404499 m!2187363))

(declare-fun m!2187365 () Bool)

(assert (=> bs!404499 m!2187365))

(assert (=> b!1768449 d!540284))

(declare-fun b!1769018 () Bool)

(declare-fun res!796668 () Bool)

(declare-fun e!1132075 () Bool)

(assert (=> b!1769018 (=> (not res!796668) (not e!1132075))))

(declare-fun call!110918 () Bool)

(assert (=> b!1769018 (= res!796668 (not call!110918))))

(declare-fun b!1769019 () Bool)

(declare-fun res!796662 () Bool)

(declare-fun e!1132073 () Bool)

(assert (=> b!1769019 (=> res!796662 e!1132073)))

(assert (=> b!1769019 (= res!796662 e!1132075)))

(declare-fun res!796669 () Bool)

(assert (=> b!1769019 (=> (not res!796669) (not e!1132075))))

(declare-fun lt!684854 () Bool)

(assert (=> b!1769019 (= res!796669 lt!684854)))

(declare-fun b!1769020 () Bool)

(declare-fun e!1132078 () Bool)

(declare-fun e!1132072 () Bool)

(assert (=> b!1769020 (= e!1132078 e!1132072)))

(declare-fun res!796664 () Bool)

(assert (=> b!1769020 (=> res!796664 e!1132072)))

(assert (=> b!1769020 (= res!796664 call!110918)))

(declare-fun b!1769021 () Bool)

(declare-fun res!796667 () Bool)

(assert (=> b!1769021 (=> res!796667 e!1132073)))

(assert (=> b!1769021 (= res!796667 (not ((_ is ElementMatch!4811) lt!684581)))))

(declare-fun e!1132074 () Bool)

(assert (=> b!1769021 (= e!1132074 e!1132073)))

(declare-fun d!540286 () Bool)

(declare-fun e!1132077 () Bool)

(assert (=> d!540286 e!1132077))

(declare-fun c!288052 () Bool)

(assert (=> d!540286 (= c!288052 ((_ is EmptyExpr!4811) lt!684581))))

(declare-fun e!1132076 () Bool)

(assert (=> d!540286 (= lt!684854 e!1132076)))

(declare-fun c!288054 () Bool)

(assert (=> d!540286 (= c!288054 (isEmpty!12297 lt!684564))))

(assert (=> d!540286 (validRegex!1947 lt!684581)))

(assert (=> d!540286 (= (matchR!2284 lt!684581 lt!684564) lt!684854)))

(declare-fun b!1769022 () Bool)

(assert (=> b!1769022 (= e!1132076 (nullable!1473 lt!684581))))

(declare-fun b!1769023 () Bool)

(assert (=> b!1769023 (= e!1132077 e!1132074)))

(declare-fun c!288053 () Bool)

(assert (=> b!1769023 (= c!288053 ((_ is EmptyLang!4811) lt!684581))))

(declare-fun b!1769024 () Bool)

(assert (=> b!1769024 (= e!1132077 (= lt!684854 call!110918))))

(declare-fun b!1769025 () Bool)

(assert (=> b!1769025 (= e!1132072 (not (= (head!4110 lt!684564) (c!287942 lt!684581))))))

(declare-fun b!1769026 () Bool)

(assert (=> b!1769026 (= e!1132074 (not lt!684854))))

(declare-fun b!1769027 () Bool)

(assert (=> b!1769027 (= e!1132075 (= (head!4110 lt!684564) (c!287942 lt!684581)))))

(declare-fun bm!110913 () Bool)

(assert (=> bm!110913 (= call!110918 (isEmpty!12297 lt!684564))))

(declare-fun b!1769028 () Bool)

(declare-fun res!796666 () Bool)

(assert (=> b!1769028 (=> (not res!796666) (not e!1132075))))

(assert (=> b!1769028 (= res!796666 (isEmpty!12297 (tail!2647 lt!684564)))))

(declare-fun b!1769029 () Bool)

(assert (=> b!1769029 (= e!1132076 (matchR!2284 (derivativeStep!1242 lt!684581 (head!4110 lt!684564)) (tail!2647 lt!684564)))))

(declare-fun b!1769030 () Bool)

(declare-fun res!796665 () Bool)

(assert (=> b!1769030 (=> res!796665 e!1132072)))

(assert (=> b!1769030 (= res!796665 (not (isEmpty!12297 (tail!2647 lt!684564))))))

(declare-fun b!1769031 () Bool)

(assert (=> b!1769031 (= e!1132073 e!1132078)))

(declare-fun res!796663 () Bool)

(assert (=> b!1769031 (=> (not res!796663) (not e!1132078))))

(assert (=> b!1769031 (= res!796663 (not lt!684854))))

(assert (= (and d!540286 c!288054) b!1769022))

(assert (= (and d!540286 (not c!288054)) b!1769029))

(assert (= (and d!540286 c!288052) b!1769024))

(assert (= (and d!540286 (not c!288052)) b!1769023))

(assert (= (and b!1769023 c!288053) b!1769026))

(assert (= (and b!1769023 (not c!288053)) b!1769021))

(assert (= (and b!1769021 (not res!796667)) b!1769019))

(assert (= (and b!1769019 res!796669) b!1769018))

(assert (= (and b!1769018 res!796668) b!1769028))

(assert (= (and b!1769028 res!796666) b!1769027))

(assert (= (and b!1769019 (not res!796662)) b!1769031))

(assert (= (and b!1769031 res!796663) b!1769020))

(assert (= (and b!1769020 (not res!796664)) b!1769030))

(assert (= (and b!1769030 (not res!796665)) b!1769025))

(assert (= (or b!1769024 b!1769018 b!1769020) bm!110913))

(assert (=> b!1769027 m!2186795))

(declare-fun m!2187367 () Bool)

(assert (=> b!1769022 m!2187367))

(assert (=> d!540286 m!2186799))

(declare-fun m!2187369 () Bool)

(assert (=> d!540286 m!2187369))

(assert (=> b!1769025 m!2186795))

(assert (=> b!1769028 m!2186803))

(assert (=> b!1769028 m!2186803))

(assert (=> b!1769028 m!2186805))

(assert (=> b!1769029 m!2186795))

(assert (=> b!1769029 m!2186795))

(declare-fun m!2187371 () Bool)

(assert (=> b!1769029 m!2187371))

(assert (=> b!1769029 m!2186803))

(assert (=> b!1769029 m!2187371))

(assert (=> b!1769029 m!2186803))

(declare-fun m!2187373 () Bool)

(assert (=> b!1769029 m!2187373))

(assert (=> bm!110913 m!2186799))

(assert (=> b!1769030 m!2186803))

(assert (=> b!1769030 m!2186803))

(assert (=> b!1769030 m!2186805))

(assert (=> b!1768449 d!540286))

(declare-fun d!540288 () Bool)

(assert (=> d!540288 (matchR!2284 (rulesRegex!839 thiss!24550 rules!3447) (list!7909 (charsOf!2132 token!523)))))

(declare-fun lt!684862 () Unit!33672)

(declare-fun choose!10997 (LexerInterface!3112 List!19549 List!19548 Token!6532 Rule!6766 List!19548) Unit!33672)

(assert (=> d!540288 (= lt!684862 (choose!10997 thiss!24550 rules!3447 lt!684564 token!523 rule!422 Nil!19478))))

(assert (=> d!540288 (not (isEmpty!12296 rules!3447))))

(assert (=> d!540288 (= (lemmaMaxPrefixThenMatchesRulesRegex!190 thiss!24550 rules!3447 lt!684564 token!523 rule!422 Nil!19478) lt!684862)))

(declare-fun bs!404500 () Bool)

(assert (= bs!404500 d!540288))

(declare-fun m!2187409 () Bool)

(assert (=> bs!404500 m!2187409))

(assert (=> bs!404500 m!2186665))

(declare-fun m!2187417 () Bool)

(assert (=> bs!404500 m!2187417))

(declare-fun m!2187421 () Bool)

(assert (=> bs!404500 m!2187421))

(assert (=> bs!404500 m!2186633))

(assert (=> bs!404500 m!2186665))

(assert (=> bs!404500 m!2186633))

(assert (=> bs!404500 m!2187417))

(assert (=> bs!404500 m!2186667))

(assert (=> b!1768449 d!540288))

(declare-fun d!540292 () Bool)

(assert (=> d!540292 (= (isEmpty!12297 (_2!10943 lt!684582)) ((_ is Nil!19478) (_2!10943 lt!684582)))))

(assert (=> b!1768453 d!540292))

(declare-fun b!1769043 () Bool)

(declare-fun res!796683 () Bool)

(declare-fun e!1132087 () Bool)

(assert (=> b!1769043 (=> (not res!796683) (not e!1132087))))

(declare-fun call!110919 () Bool)

(assert (=> b!1769043 (= res!796683 (not call!110919))))

(declare-fun b!1769044 () Bool)

(declare-fun res!796677 () Bool)

(declare-fun e!1132085 () Bool)

(assert (=> b!1769044 (=> res!796677 e!1132085)))

(assert (=> b!1769044 (= res!796677 e!1132087)))

(declare-fun res!796684 () Bool)

(assert (=> b!1769044 (=> (not res!796684) (not e!1132087))))

(declare-fun lt!684864 () Bool)

(assert (=> b!1769044 (= res!796684 lt!684864)))

(declare-fun b!1769045 () Bool)

(declare-fun e!1132090 () Bool)

(declare-fun e!1132084 () Bool)

(assert (=> b!1769045 (= e!1132090 e!1132084)))

(declare-fun res!796679 () Bool)

(assert (=> b!1769045 (=> res!796679 e!1132084)))

(assert (=> b!1769045 (= res!796679 call!110919)))

(declare-fun b!1769046 () Bool)

(declare-fun res!796682 () Bool)

(assert (=> b!1769046 (=> res!796682 e!1132085)))

(assert (=> b!1769046 (= res!796682 (not ((_ is ElementMatch!4811) (regex!3483 (rule!5521 (_1!10943 lt!684574))))))))

(declare-fun e!1132086 () Bool)

(assert (=> b!1769046 (= e!1132086 e!1132085)))

(declare-fun d!540294 () Bool)

(declare-fun e!1132089 () Bool)

(assert (=> d!540294 e!1132089))

(declare-fun c!288057 () Bool)

(assert (=> d!540294 (= c!288057 ((_ is EmptyExpr!4811) (regex!3483 (rule!5521 (_1!10943 lt!684574)))))))

(declare-fun e!1132088 () Bool)

(assert (=> d!540294 (= lt!684864 e!1132088)))

(declare-fun c!288059 () Bool)

(assert (=> d!540294 (= c!288059 (isEmpty!12297 lt!684567))))

(assert (=> d!540294 (validRegex!1947 (regex!3483 (rule!5521 (_1!10943 lt!684574))))))

(assert (=> d!540294 (= (matchR!2284 (regex!3483 (rule!5521 (_1!10943 lt!684574))) lt!684567) lt!684864)))

(declare-fun b!1769047 () Bool)

(assert (=> b!1769047 (= e!1132088 (nullable!1473 (regex!3483 (rule!5521 (_1!10943 lt!684574)))))))

(declare-fun b!1769048 () Bool)

(assert (=> b!1769048 (= e!1132089 e!1132086)))

(declare-fun c!288058 () Bool)

(assert (=> b!1769048 (= c!288058 ((_ is EmptyLang!4811) (regex!3483 (rule!5521 (_1!10943 lt!684574)))))))

(declare-fun b!1769049 () Bool)

(assert (=> b!1769049 (= e!1132089 (= lt!684864 call!110919))))

(declare-fun b!1769050 () Bool)

(assert (=> b!1769050 (= e!1132084 (not (= (head!4110 lt!684567) (c!287942 (regex!3483 (rule!5521 (_1!10943 lt!684574)))))))))

(declare-fun b!1769051 () Bool)

(assert (=> b!1769051 (= e!1132086 (not lt!684864))))

(declare-fun b!1769052 () Bool)

(assert (=> b!1769052 (= e!1132087 (= (head!4110 lt!684567) (c!287942 (regex!3483 (rule!5521 (_1!10943 lt!684574))))))))

(declare-fun bm!110914 () Bool)

(assert (=> bm!110914 (= call!110919 (isEmpty!12297 lt!684567))))

(declare-fun b!1769053 () Bool)

(declare-fun res!796681 () Bool)

(assert (=> b!1769053 (=> (not res!796681) (not e!1132087))))

(assert (=> b!1769053 (= res!796681 (isEmpty!12297 (tail!2647 lt!684567)))))

(declare-fun b!1769054 () Bool)

(assert (=> b!1769054 (= e!1132088 (matchR!2284 (derivativeStep!1242 (regex!3483 (rule!5521 (_1!10943 lt!684574))) (head!4110 lt!684567)) (tail!2647 lt!684567)))))

(declare-fun b!1769055 () Bool)

(declare-fun res!796680 () Bool)

(assert (=> b!1769055 (=> res!796680 e!1132084)))

(assert (=> b!1769055 (= res!796680 (not (isEmpty!12297 (tail!2647 lt!684567))))))

(declare-fun b!1769056 () Bool)

(assert (=> b!1769056 (= e!1132085 e!1132090)))

(declare-fun res!796678 () Bool)

(assert (=> b!1769056 (=> (not res!796678) (not e!1132090))))

(assert (=> b!1769056 (= res!796678 (not lt!684864))))

(assert (= (and d!540294 c!288059) b!1769047))

(assert (= (and d!540294 (not c!288059)) b!1769054))

(assert (= (and d!540294 c!288057) b!1769049))

(assert (= (and d!540294 (not c!288057)) b!1769048))

(assert (= (and b!1769048 c!288058) b!1769051))

(assert (= (and b!1769048 (not c!288058)) b!1769046))

(assert (= (and b!1769046 (not res!796682)) b!1769044))

(assert (= (and b!1769044 res!796684) b!1769043))

(assert (= (and b!1769043 res!796683) b!1769053))

(assert (= (and b!1769053 res!796681) b!1769052))

(assert (= (and b!1769044 (not res!796677)) b!1769056))

(assert (= (and b!1769056 res!796678) b!1769045))

(assert (= (and b!1769045 (not res!796679)) b!1769055))

(assert (= (and b!1769055 (not res!796680)) b!1769050))

(assert (= (or b!1769049 b!1769043 b!1769045) bm!110914))

(assert (=> b!1769052 m!2187309))

(declare-fun m!2187429 () Bool)

(assert (=> b!1769047 m!2187429))

(declare-fun m!2187431 () Bool)

(assert (=> d!540294 m!2187431))

(declare-fun m!2187433 () Bool)

(assert (=> d!540294 m!2187433))

(assert (=> b!1769050 m!2187309))

(assert (=> b!1769053 m!2187303))

(assert (=> b!1769053 m!2187303))

(declare-fun m!2187435 () Bool)

(assert (=> b!1769053 m!2187435))

(assert (=> b!1769054 m!2187309))

(assert (=> b!1769054 m!2187309))

(declare-fun m!2187437 () Bool)

(assert (=> b!1769054 m!2187437))

(assert (=> b!1769054 m!2187303))

(assert (=> b!1769054 m!2187437))

(assert (=> b!1769054 m!2187303))

(declare-fun m!2187439 () Bool)

(assert (=> b!1769054 m!2187439))

(assert (=> bm!110914 m!2187431))

(assert (=> b!1769055 m!2187303))

(assert (=> b!1769055 m!2187303))

(assert (=> b!1769055 m!2187435))

(assert (=> b!1768452 d!540294))

(declare-fun d!540298 () Bool)

(assert (=> d!540298 (= (list!7909 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))) (list!7912 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))))

(declare-fun bs!404501 () Bool)

(assert (= bs!404501 d!540298))

(declare-fun m!2187441 () Bool)

(assert (=> bs!404501 m!2187441))

(assert (=> b!1768456 d!540298))

(declare-fun bs!404502 () Bool)

(declare-fun d!540300 () Bool)

(assert (= bs!404502 (and d!540300 b!1768463)))

(declare-fun lambda!70371 () Int)

(assert (=> bs!404502 (= lambda!70371 lambda!70356)))

(declare-fun b!1769061 () Bool)

(declare-fun e!1132093 () Bool)

(assert (=> b!1769061 (= e!1132093 true)))

(assert (=> d!540300 e!1132093))

(assert (= d!540300 b!1769061))

(assert (=> b!1769061 (< (dynLambda!9446 order!12427 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) (dynLambda!9447 order!12429 lambda!70371))))

(assert (=> b!1769061 (< (dynLambda!9448 order!12431 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) (dynLambda!9447 order!12429 lambda!70371))))

(assert (=> d!540300 (= (list!7909 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))) (list!7909 lt!684569))))

(declare-fun lt!684867 () Unit!33672)

(declare-fun ForallOf!326 (Int BalanceConc!12902) Unit!33672)

(assert (=> d!540300 (= lt!684867 (ForallOf!326 lambda!70371 lt!684569))))

(assert (=> d!540300 (= (lemmaSemiInverse!621 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) lt!684569) lt!684867)))

(declare-fun b_lambda!57535 () Bool)

(assert (=> (not b_lambda!57535) (not d!540300)))

(assert (=> d!540300 t!165043))

(declare-fun b_and!134363 () Bool)

(assert (= b_and!134309 (and (=> t!165043 result!128626) b_and!134363)))

(assert (=> d!540300 t!165045))

(declare-fun b_and!134365 () Bool)

(assert (= b_and!134311 (and (=> t!165045 result!128630) b_and!134365)))

(assert (=> d!540300 t!165047))

(declare-fun b_and!134367 () Bool)

(assert (= b_and!134313 (and (=> t!165047 result!128632) b_and!134367)))

(declare-fun b_lambda!57537 () Bool)

(assert (=> (not b_lambda!57537) (not d!540300)))

(assert (=> d!540300 t!165049))

(declare-fun b_and!134369 () Bool)

(assert (= b_and!134285 (and (=> t!165049 result!128634) b_and!134369)))

(assert (=> d!540300 t!165051))

(declare-fun b_and!134371 () Bool)

(assert (= b_and!134287 (and (=> t!165051 result!128638) b_and!134371)))

(assert (=> d!540300 t!165053))

(declare-fun b_and!134373 () Bool)

(assert (= b_and!134289 (and (=> t!165053 result!128640) b_and!134373)))

(assert (=> d!540300 m!2186671))

(assert (=> d!540300 m!2186673))

(assert (=> d!540300 m!2186675))

(declare-fun m!2187443 () Bool)

(assert (=> d!540300 m!2187443))

(assert (=> d!540300 m!2186611))

(assert (=> d!540300 m!2186671))

(assert (=> d!540300 m!2186673))

(assert (=> b!1768456 d!540300))

(declare-fun d!540302 () Bool)

(assert (=> d!540302 (= suffix!1421 lt!684573)))

(declare-fun lt!684870 () Unit!33672)

(declare-fun choose!10999 (List!19548 List!19548 List!19548 List!19548 List!19548) Unit!33672)

(assert (=> d!540302 (= lt!684870 (choose!10999 lt!684564 suffix!1421 lt!684564 lt!684573 lt!684559))))

(assert (=> d!540302 (isPrefix!1723 lt!684564 lt!684559)))

(assert (=> d!540302 (= (lemmaSamePrefixThenSameSuffix!834 lt!684564 suffix!1421 lt!684564 lt!684573 lt!684559) lt!684870)))

(declare-fun bs!404503 () Bool)

(assert (= bs!404503 d!540302))

(declare-fun m!2187445 () Bool)

(assert (=> bs!404503 m!2187445))

(assert (=> bs!404503 m!2186605))

(assert (=> b!1768455 d!540302))

(declare-fun d!540304 () Bool)

(declare-fun lt!684876 () List!19548)

(assert (=> d!540304 (= (++!5307 lt!684564 lt!684876) lt!684559)))

(declare-fun e!1132099 () List!19548)

(assert (=> d!540304 (= lt!684876 e!1132099)))

(declare-fun c!288064 () Bool)

(assert (=> d!540304 (= c!288064 ((_ is Cons!19478) lt!684564))))

(assert (=> d!540304 (>= (size!15471 lt!684559) (size!15471 lt!684564))))

(assert (=> d!540304 (= (getSuffix!890 lt!684559 lt!684564) lt!684876)))

(declare-fun b!1769070 () Bool)

(assert (=> b!1769070 (= e!1132099 (getSuffix!890 (tail!2647 lt!684559) (t!165061 lt!684564)))))

(declare-fun b!1769071 () Bool)

(assert (=> b!1769071 (= e!1132099 lt!684559)))

(assert (= (and d!540304 c!288064) b!1769070))

(assert (= (and d!540304 (not c!288064)) b!1769071))

(declare-fun m!2187459 () Bool)

(assert (=> d!540304 m!2187459))

(assert (=> d!540304 m!2186695))

(assert (=> d!540304 m!2186693))

(assert (=> b!1769070 m!2187325))

(assert (=> b!1769070 m!2187325))

(declare-fun m!2187461 () Bool)

(assert (=> b!1769070 m!2187461))

(assert (=> b!1768455 d!540304))

(declare-fun b!1769077 () Bool)

(declare-fun res!796694 () Bool)

(declare-fun e!1132106 () Bool)

(assert (=> b!1769077 (=> (not res!796694) (not e!1132106))))

(declare-fun call!110920 () Bool)

(assert (=> b!1769077 (= res!796694 (not call!110920))))

(declare-fun b!1769078 () Bool)

(declare-fun res!796688 () Bool)

(declare-fun e!1132104 () Bool)

(assert (=> b!1769078 (=> res!796688 e!1132104)))

(assert (=> b!1769078 (= res!796688 e!1132106)))

(declare-fun res!796695 () Bool)

(assert (=> b!1769078 (=> (not res!796695) (not e!1132106))))

(declare-fun lt!684877 () Bool)

(assert (=> b!1769078 (= res!796695 lt!684877)))

(declare-fun b!1769079 () Bool)

(declare-fun e!1132109 () Bool)

(declare-fun e!1132103 () Bool)

(assert (=> b!1769079 (= e!1132109 e!1132103)))

(declare-fun res!796690 () Bool)

(assert (=> b!1769079 (=> res!796690 e!1132103)))

(assert (=> b!1769079 (= res!796690 call!110920)))

(declare-fun b!1769080 () Bool)

(declare-fun res!796693 () Bool)

(assert (=> b!1769080 (=> res!796693 e!1132104)))

(assert (=> b!1769080 (= res!796693 (not ((_ is ElementMatch!4811) lt!684581)))))

(declare-fun e!1132105 () Bool)

(assert (=> b!1769080 (= e!1132105 e!1132104)))

(declare-fun d!540316 () Bool)

(declare-fun e!1132108 () Bool)

(assert (=> d!540316 e!1132108))

(declare-fun c!288067 () Bool)

(assert (=> d!540316 (= c!288067 ((_ is EmptyExpr!4811) lt!684581))))

(declare-fun e!1132107 () Bool)

(assert (=> d!540316 (= lt!684877 e!1132107)))

(declare-fun c!288069 () Bool)

(assert (=> d!540316 (= c!288069 (isEmpty!12297 lt!684567))))

(assert (=> d!540316 (validRegex!1947 lt!684581)))

(assert (=> d!540316 (= (matchR!2284 lt!684581 lt!684567) lt!684877)))

(declare-fun b!1769081 () Bool)

(assert (=> b!1769081 (= e!1132107 (nullable!1473 lt!684581))))

(declare-fun b!1769082 () Bool)

(assert (=> b!1769082 (= e!1132108 e!1132105)))

(declare-fun c!288068 () Bool)

(assert (=> b!1769082 (= c!288068 ((_ is EmptyLang!4811) lt!684581))))

(declare-fun b!1769083 () Bool)

(assert (=> b!1769083 (= e!1132108 (= lt!684877 call!110920))))

(declare-fun b!1769084 () Bool)

(assert (=> b!1769084 (= e!1132103 (not (= (head!4110 lt!684567) (c!287942 lt!684581))))))

(declare-fun b!1769085 () Bool)

(assert (=> b!1769085 (= e!1132105 (not lt!684877))))

(declare-fun b!1769086 () Bool)

(assert (=> b!1769086 (= e!1132106 (= (head!4110 lt!684567) (c!287942 lt!684581)))))

(declare-fun bm!110915 () Bool)

(assert (=> bm!110915 (= call!110920 (isEmpty!12297 lt!684567))))

(declare-fun b!1769087 () Bool)

(declare-fun res!796692 () Bool)

(assert (=> b!1769087 (=> (not res!796692) (not e!1132106))))

(assert (=> b!1769087 (= res!796692 (isEmpty!12297 (tail!2647 lt!684567)))))

(declare-fun b!1769088 () Bool)

(assert (=> b!1769088 (= e!1132107 (matchR!2284 (derivativeStep!1242 lt!684581 (head!4110 lt!684567)) (tail!2647 lt!684567)))))

(declare-fun b!1769089 () Bool)

(declare-fun res!796691 () Bool)

(assert (=> b!1769089 (=> res!796691 e!1132103)))

(assert (=> b!1769089 (= res!796691 (not (isEmpty!12297 (tail!2647 lt!684567))))))

(declare-fun b!1769090 () Bool)

(assert (=> b!1769090 (= e!1132104 e!1132109)))

(declare-fun res!796689 () Bool)

(assert (=> b!1769090 (=> (not res!796689) (not e!1132109))))

(assert (=> b!1769090 (= res!796689 (not lt!684877))))

(assert (= (and d!540316 c!288069) b!1769081))

(assert (= (and d!540316 (not c!288069)) b!1769088))

(assert (= (and d!540316 c!288067) b!1769083))

(assert (= (and d!540316 (not c!288067)) b!1769082))

(assert (= (and b!1769082 c!288068) b!1769085))

(assert (= (and b!1769082 (not c!288068)) b!1769080))

(assert (= (and b!1769080 (not res!796693)) b!1769078))

(assert (= (and b!1769078 res!796695) b!1769077))

(assert (= (and b!1769077 res!796694) b!1769087))

(assert (= (and b!1769087 res!796692) b!1769086))

(assert (= (and b!1769078 (not res!796688)) b!1769090))

(assert (= (and b!1769090 res!796689) b!1769079))

(assert (= (and b!1769079 (not res!796690)) b!1769089))

(assert (= (and b!1769089 (not res!796691)) b!1769084))

(assert (= (or b!1769083 b!1769077 b!1769079) bm!110915))

(assert (=> b!1769086 m!2187309))

(assert (=> b!1769081 m!2187367))

(assert (=> d!540316 m!2187431))

(assert (=> d!540316 m!2187369))

(assert (=> b!1769084 m!2187309))

(assert (=> b!1769087 m!2187303))

(assert (=> b!1769087 m!2187303))

(assert (=> b!1769087 m!2187435))

(assert (=> b!1769088 m!2187309))

(assert (=> b!1769088 m!2187309))

(declare-fun m!2187469 () Bool)

(assert (=> b!1769088 m!2187469))

(assert (=> b!1769088 m!2187303))

(assert (=> b!1769088 m!2187469))

(assert (=> b!1769088 m!2187303))

(declare-fun m!2187471 () Bool)

(assert (=> b!1769088 m!2187471))

(assert (=> bm!110915 m!2187431))

(assert (=> b!1769089 m!2187303))

(assert (=> b!1769089 m!2187303))

(assert (=> b!1769089 m!2187435))

(assert (=> b!1768455 d!540316))

(declare-fun d!540320 () Bool)

(assert (=> d!540320 (matchR!2284 (rulesRegex!839 thiss!24550 rules!3447) (list!7909 (charsOf!2132 (_1!10943 lt!684574))))))

(declare-fun lt!684878 () Unit!33672)

(assert (=> d!540320 (= lt!684878 (choose!10997 thiss!24550 rules!3447 lt!684559 (_1!10943 lt!684574) (rule!5521 (_1!10943 lt!684574)) (_2!10943 lt!684574)))))

(assert (=> d!540320 (not (isEmpty!12296 rules!3447))))

(assert (=> d!540320 (= (lemmaMaxPrefixThenMatchesRulesRegex!190 thiss!24550 rules!3447 lt!684559 (_1!10943 lt!684574) (rule!5521 (_1!10943 lt!684574)) (_2!10943 lt!684574)) lt!684878)))

(declare-fun bs!404506 () Bool)

(assert (= bs!404506 d!540320))

(declare-fun m!2187473 () Bool)

(assert (=> bs!404506 m!2187473))

(assert (=> bs!404506 m!2186665))

(assert (=> bs!404506 m!2186653))

(declare-fun m!2187475 () Bool)

(assert (=> bs!404506 m!2187475))

(assert (=> bs!404506 m!2186595))

(assert (=> bs!404506 m!2186665))

(assert (=> bs!404506 m!2186595))

(assert (=> bs!404506 m!2186653))

(assert (=> bs!404506 m!2186667))

(assert (=> b!1768455 d!540320))

(declare-fun d!540322 () Bool)

(declare-fun c!288071 () Bool)

(assert (=> d!540322 (= c!288071 ((_ is IntegerValue!10719) (value!108938 token!523)))))

(declare-fun e!1132112 () Bool)

(assert (=> d!540322 (= (inv!21 (value!108938 token!523)) e!1132112)))

(declare-fun b!1769095 () Bool)

(declare-fun e!1132114 () Bool)

(assert (=> b!1769095 (= e!1132112 e!1132114)))

(declare-fun c!288070 () Bool)

(assert (=> b!1769095 (= c!288070 ((_ is IntegerValue!10720) (value!108938 token!523)))))

(declare-fun b!1769096 () Bool)

(declare-fun res!796700 () Bool)

(declare-fun e!1132113 () Bool)

(assert (=> b!1769096 (=> res!796700 e!1132113)))

(assert (=> b!1769096 (= res!796700 (not ((_ is IntegerValue!10721) (value!108938 token!523))))))

(assert (=> b!1769096 (= e!1132114 e!1132113)))

(declare-fun b!1769097 () Bool)

(assert (=> b!1769097 (= e!1132112 (inv!16 (value!108938 token!523)))))

(declare-fun b!1769098 () Bool)

(assert (=> b!1769098 (= e!1132114 (inv!17 (value!108938 token!523)))))

(declare-fun b!1769099 () Bool)

(assert (=> b!1769099 (= e!1132113 (inv!15 (value!108938 token!523)))))

(assert (= (and d!540322 c!288071) b!1769097))

(assert (= (and d!540322 (not c!288071)) b!1769095))

(assert (= (and b!1769095 c!288070) b!1769098))

(assert (= (and b!1769095 (not c!288070)) b!1769096))

(assert (= (and b!1769096 (not res!796700)) b!1769099))

(declare-fun m!2187477 () Bool)

(assert (=> b!1769097 m!2187477))

(declare-fun m!2187479 () Bool)

(assert (=> b!1769098 m!2187479))

(declare-fun m!2187481 () Bool)

(assert (=> b!1769099 m!2187481))

(assert (=> b!1768454 d!540322))

(declare-fun d!540324 () Bool)

(assert (=> d!540324 (= (isEmpty!12296 rules!3447) ((_ is Nil!19479) rules!3447))))

(assert (=> b!1768437 d!540324))

(declare-fun d!540326 () Bool)

(assert (=> d!540326 (= (inv!25308 (tag!3861 (h!24880 rules!3447))) (= (mod (str.len (value!108937 (tag!3861 (h!24880 rules!3447)))) 2) 0))))

(assert (=> b!1768457 d!540326))

(declare-fun d!540328 () Bool)

(declare-fun res!796705 () Bool)

(declare-fun e!1132118 () Bool)

(assert (=> d!540328 (=> (not res!796705) (not e!1132118))))

(assert (=> d!540328 (= res!796705 (semiInverseModEq!1388 (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toValue!5006 (transformation!3483 (h!24880 rules!3447)))))))

(assert (=> d!540328 (= (inv!25313 (transformation!3483 (h!24880 rules!3447))) e!1132118)))

(declare-fun b!1769104 () Bool)

(assert (=> b!1769104 (= e!1132118 (equivClasses!1329 (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toValue!5006 (transformation!3483 (h!24880 rules!3447)))))))

(assert (= (and d!540328 res!796705) b!1769104))

(declare-fun m!2187493 () Bool)

(assert (=> d!540328 m!2187493))

(declare-fun m!2187495 () Bool)

(assert (=> b!1769104 m!2187495))

(assert (=> b!1768457 d!540328))

(declare-fun d!540336 () Bool)

(declare-fun lt!684879 () List!19548)

(assert (=> d!540336 (= (++!5307 lt!684567 lt!684879) lt!684559)))

(declare-fun e!1132119 () List!19548)

(assert (=> d!540336 (= lt!684879 e!1132119)))

(declare-fun c!288072 () Bool)

(assert (=> d!540336 (= c!288072 ((_ is Cons!19478) lt!684567))))

(assert (=> d!540336 (>= (size!15471 lt!684559) (size!15471 lt!684567))))

(assert (=> d!540336 (= (getSuffix!890 lt!684559 lt!684567) lt!684879)))

(declare-fun b!1769105 () Bool)

(assert (=> b!1769105 (= e!1132119 (getSuffix!890 (tail!2647 lt!684559) (t!165061 lt!684567)))))

(declare-fun b!1769106 () Bool)

(assert (=> b!1769106 (= e!1132119 lt!684559)))

(assert (= (and d!540336 c!288072) b!1769105))

(assert (= (and d!540336 (not c!288072)) b!1769106))

(declare-fun m!2187497 () Bool)

(assert (=> d!540336 m!2187497))

(assert (=> d!540336 m!2186695))

(assert (=> d!540336 m!2186643))

(assert (=> b!1769105 m!2187325))

(assert (=> b!1769105 m!2187325))

(declare-fun m!2187499 () Bool)

(assert (=> b!1769105 m!2187499))

(assert (=> b!1768461 d!540336))

(declare-fun d!540338 () Bool)

(declare-fun fromListB!1122 (List!19548) BalanceConc!12902)

(assert (=> d!540338 (= (seqFromList!2452 lt!684567) (fromListB!1122 lt!684567))))

(declare-fun bs!404509 () Bool)

(assert (= bs!404509 d!540338))

(declare-fun m!2187505 () Bool)

(assert (=> bs!404509 m!2187505))

(assert (=> b!1768461 d!540338))

(declare-fun d!540342 () Bool)

(assert (=> d!540342 (= (maxPrefixOneRule!1035 thiss!24550 (rule!5521 (_1!10943 lt!684574)) lt!684559) (Some!3987 (tuple2!19083 (Token!6533 (apply!5283 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) (seqFromList!2452 lt!684567)) (rule!5521 (_1!10943 lt!684574)) (size!15471 lt!684567) lt!684567) (_2!10943 lt!684574))))))

(declare-fun lt!684882 () Unit!33672)

(declare-fun choose!11001 (LexerInterface!3112 List!19549 List!19548 List!19548 List!19548 Rule!6766) Unit!33672)

(assert (=> d!540342 (= lt!684882 (choose!11001 thiss!24550 rules!3447 lt!684567 lt!684559 (_2!10943 lt!684574) (rule!5521 (_1!10943 lt!684574))))))

(assert (=> d!540342 (not (isEmpty!12296 rules!3447))))

(assert (=> d!540342 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!413 thiss!24550 rules!3447 lt!684567 lt!684559 (_2!10943 lt!684574) (rule!5521 (_1!10943 lt!684574))) lt!684882)))

(declare-fun bs!404510 () Bool)

(assert (= bs!404510 d!540342))

(assert (=> bs!404510 m!2186649))

(assert (=> bs!404510 m!2186639))

(assert (=> bs!404510 m!2186651))

(assert (=> bs!404510 m!2186639))

(declare-fun m!2187523 () Bool)

(assert (=> bs!404510 m!2187523))

(assert (=> bs!404510 m!2186643))

(assert (=> bs!404510 m!2186667))

(assert (=> b!1768461 d!540342))

(declare-fun b!1769181 () Bool)

(declare-fun res!796725 () Bool)

(declare-fun e!1132162 () Bool)

(assert (=> b!1769181 (=> (not res!796725) (not e!1132162))))

(declare-fun lt!684894 () Option!3988)

(assert (=> b!1769181 (= res!796725 (= (++!5307 (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684894)))) (_2!10943 (get!5947 lt!684894))) lt!684559))))

(declare-fun b!1769182 () Bool)

(declare-fun res!796726 () Bool)

(assert (=> b!1769182 (=> (not res!796726) (not e!1132162))))

(assert (=> b!1769182 (= res!796726 (= (rule!5521 (_1!10943 (get!5947 lt!684894))) (rule!5521 (_1!10943 lt!684574))))))

(declare-fun b!1769183 () Bool)

(declare-fun e!1132161 () Bool)

(assert (=> b!1769183 (= e!1132161 e!1132162)))

(declare-fun res!796724 () Bool)

(assert (=> b!1769183 (=> (not res!796724) (not e!1132162))))

(assert (=> b!1769183 (= res!796724 (matchR!2284 (regex!3483 (rule!5521 (_1!10943 lt!684574))) (list!7909 (charsOf!2132 (_1!10943 (get!5947 lt!684894))))))))

(declare-fun b!1769184 () Bool)

(declare-fun e!1132163 () Option!3988)

(declare-datatypes ((tuple2!19090 0))(
  ( (tuple2!19091 (_1!10947 List!19548) (_2!10947 List!19548)) )
))
(declare-fun lt!684897 () tuple2!19090)

(assert (=> b!1769184 (= e!1132163 (Some!3987 (tuple2!19083 (Token!6533 (apply!5283 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) (seqFromList!2452 (_1!10947 lt!684897))) (rule!5521 (_1!10943 lt!684574)) (size!15472 (seqFromList!2452 (_1!10947 lt!684897))) (_1!10947 lt!684897)) (_2!10947 lt!684897))))))

(declare-fun lt!684895 () Unit!33672)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!435 (Regex!4811 List!19548) Unit!33672)

(assert (=> b!1769184 (= lt!684895 (longestMatchIsAcceptedByMatchOrIsEmpty!435 (regex!3483 (rule!5521 (_1!10943 lt!684574))) lt!684559))))

(declare-fun res!796728 () Bool)

(declare-fun findLongestMatchInner!451 (Regex!4811 List!19548 Int List!19548 List!19548 Int) tuple2!19090)

(assert (=> b!1769184 (= res!796728 (isEmpty!12297 (_1!10947 (findLongestMatchInner!451 (regex!3483 (rule!5521 (_1!10943 lt!684574))) Nil!19478 (size!15471 Nil!19478) lt!684559 lt!684559 (size!15471 lt!684559)))))))

(declare-fun e!1132160 () Bool)

(assert (=> b!1769184 (=> res!796728 e!1132160)))

(assert (=> b!1769184 e!1132160))

(declare-fun lt!684896 () Unit!33672)

(assert (=> b!1769184 (= lt!684896 lt!684895)))

(declare-fun lt!684893 () Unit!33672)

(assert (=> b!1769184 (= lt!684893 (lemmaSemiInverse!621 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) (seqFromList!2452 (_1!10947 lt!684897))))))

(declare-fun b!1769186 () Bool)

(declare-fun res!796729 () Bool)

(assert (=> b!1769186 (=> (not res!796729) (not e!1132162))))

(assert (=> b!1769186 (= res!796729 (= (value!108938 (_1!10943 (get!5947 lt!684894))) (apply!5283 (transformation!3483 (rule!5521 (_1!10943 (get!5947 lt!684894)))) (seqFromList!2452 (originalCharacters!4297 (_1!10943 (get!5947 lt!684894)))))))))

(declare-fun b!1769187 () Bool)

(assert (=> b!1769187 (= e!1132162 (= (size!15470 (_1!10943 (get!5947 lt!684894))) (size!15471 (originalCharacters!4297 (_1!10943 (get!5947 lt!684894))))))))

(declare-fun b!1769188 () Bool)

(assert (=> b!1769188 (= e!1132160 (matchR!2284 (regex!3483 (rule!5521 (_1!10943 lt!684574))) (_1!10947 (findLongestMatchInner!451 (regex!3483 (rule!5521 (_1!10943 lt!684574))) Nil!19478 (size!15471 Nil!19478) lt!684559 lt!684559 (size!15471 lt!684559)))))))

(declare-fun b!1769189 () Bool)

(declare-fun res!796723 () Bool)

(assert (=> b!1769189 (=> (not res!796723) (not e!1132162))))

(assert (=> b!1769189 (= res!796723 (< (size!15471 (_2!10943 (get!5947 lt!684894))) (size!15471 lt!684559)))))

(declare-fun d!540344 () Bool)

(assert (=> d!540344 e!1132161))

(declare-fun res!796727 () Bool)

(assert (=> d!540344 (=> res!796727 e!1132161)))

(assert (=> d!540344 (= res!796727 (isEmpty!12300 lt!684894))))

(assert (=> d!540344 (= lt!684894 e!1132163)))

(declare-fun c!288075 () Bool)

(assert (=> d!540344 (= c!288075 (isEmpty!12297 (_1!10947 lt!684897)))))

(declare-fun findLongestMatch!378 (Regex!4811 List!19548) tuple2!19090)

(assert (=> d!540344 (= lt!684897 (findLongestMatch!378 (regex!3483 (rule!5521 (_1!10943 lt!684574))) lt!684559))))

(assert (=> d!540344 (ruleValid!981 thiss!24550 (rule!5521 (_1!10943 lt!684574)))))

(assert (=> d!540344 (= (maxPrefixOneRule!1035 thiss!24550 (rule!5521 (_1!10943 lt!684574)) lt!684559) lt!684894)))

(declare-fun b!1769185 () Bool)

(assert (=> b!1769185 (= e!1132163 None!3987)))

(assert (= (and d!540344 c!288075) b!1769185))

(assert (= (and d!540344 (not c!288075)) b!1769184))

(assert (= (and b!1769184 (not res!796728)) b!1769188))

(assert (= (and d!540344 (not res!796727)) b!1769183))

(assert (= (and b!1769183 res!796724) b!1769181))

(assert (= (and b!1769181 res!796725) b!1769189))

(assert (= (and b!1769189 res!796723) b!1769182))

(assert (= (and b!1769182 res!796726) b!1769186))

(assert (= (and b!1769186 res!796729) b!1769187))

(declare-fun m!2187525 () Bool)

(assert (=> b!1769181 m!2187525))

(declare-fun m!2187527 () Bool)

(assert (=> b!1769181 m!2187527))

(assert (=> b!1769181 m!2187527))

(declare-fun m!2187529 () Bool)

(assert (=> b!1769181 m!2187529))

(assert (=> b!1769181 m!2187529))

(declare-fun m!2187531 () Bool)

(assert (=> b!1769181 m!2187531))

(declare-fun m!2187533 () Bool)

(assert (=> d!540344 m!2187533))

(declare-fun m!2187535 () Bool)

(assert (=> d!540344 m!2187535))

(declare-fun m!2187537 () Bool)

(assert (=> d!540344 m!2187537))

(declare-fun m!2187539 () Bool)

(assert (=> d!540344 m!2187539))

(assert (=> b!1769187 m!2187525))

(declare-fun m!2187541 () Bool)

(assert (=> b!1769187 m!2187541))

(assert (=> b!1769183 m!2187525))

(assert (=> b!1769183 m!2187527))

(assert (=> b!1769183 m!2187527))

(assert (=> b!1769183 m!2187529))

(assert (=> b!1769183 m!2187529))

(declare-fun m!2187543 () Bool)

(assert (=> b!1769183 m!2187543))

(declare-fun m!2187545 () Bool)

(assert (=> b!1769188 m!2187545))

(assert (=> b!1769188 m!2186695))

(assert (=> b!1769188 m!2187545))

(assert (=> b!1769188 m!2186695))

(declare-fun m!2187547 () Bool)

(assert (=> b!1769188 m!2187547))

(declare-fun m!2187549 () Bool)

(assert (=> b!1769188 m!2187549))

(assert (=> b!1769184 m!2187545))

(declare-fun m!2187551 () Bool)

(assert (=> b!1769184 m!2187551))

(assert (=> b!1769184 m!2187551))

(declare-fun m!2187553 () Bool)

(assert (=> b!1769184 m!2187553))

(declare-fun m!2187555 () Bool)

(assert (=> b!1769184 m!2187555))

(assert (=> b!1769184 m!2187545))

(assert (=> b!1769184 m!2186695))

(assert (=> b!1769184 m!2187547))

(assert (=> b!1769184 m!2187551))

(declare-fun m!2187557 () Bool)

(assert (=> b!1769184 m!2187557))

(assert (=> b!1769184 m!2186695))

(declare-fun m!2187559 () Bool)

(assert (=> b!1769184 m!2187559))

(assert (=> b!1769184 m!2187551))

(declare-fun m!2187561 () Bool)

(assert (=> b!1769184 m!2187561))

(assert (=> b!1769189 m!2187525))

(declare-fun m!2187563 () Bool)

(assert (=> b!1769189 m!2187563))

(assert (=> b!1769189 m!2186695))

(assert (=> b!1769186 m!2187525))

(declare-fun m!2187565 () Bool)

(assert (=> b!1769186 m!2187565))

(assert (=> b!1769186 m!2187565))

(declare-fun m!2187567 () Bool)

(assert (=> b!1769186 m!2187567))

(assert (=> b!1769182 m!2187525))

(assert (=> b!1768461 d!540344))

(declare-fun d!540346 () Bool)

(declare-fun lt!684898 () Int)

(assert (=> d!540346 (>= lt!684898 0)))

(declare-fun e!1132164 () Int)

(assert (=> d!540346 (= lt!684898 e!1132164)))

(declare-fun c!288076 () Bool)

(assert (=> d!540346 (= c!288076 ((_ is Nil!19478) lt!684567))))

(assert (=> d!540346 (= (size!15471 lt!684567) lt!684898)))

(declare-fun b!1769190 () Bool)

(assert (=> b!1769190 (= e!1132164 0)))

(declare-fun b!1769191 () Bool)

(assert (=> b!1769191 (= e!1132164 (+ 1 (size!15471 (t!165061 lt!684567))))))

(assert (= (and d!540346 c!288076) b!1769190))

(assert (= (and d!540346 (not c!288076)) b!1769191))

(declare-fun m!2187569 () Bool)

(assert (=> b!1769191 m!2187569))

(assert (=> b!1768461 d!540346))

(declare-fun d!540348 () Bool)

(assert (=> d!540348 (= (apply!5283 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) (seqFromList!2452 lt!684567)) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (seqFromList!2452 lt!684567)))))

(declare-fun b_lambda!57551 () Bool)

(assert (=> (not b_lambda!57551) (not d!540348)))

(declare-fun tb!106965 () Bool)

(declare-fun t!165100 () Bool)

(assert (=> (and b!1768443 (= (toValue!5006 (transformation!3483 (rule!5521 token!523))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165100) tb!106965))

(declare-fun result!128692 () Bool)

(assert (=> tb!106965 (= result!128692 (inv!21 (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (seqFromList!2452 lt!684567))))))

(declare-fun m!2187571 () Bool)

(assert (=> tb!106965 m!2187571))

(assert (=> d!540348 t!165100))

(declare-fun b_and!134385 () Bool)

(assert (= b_and!134369 (and (=> t!165100 result!128692) b_and!134385)))

(declare-fun t!165102 () Bool)

(declare-fun tb!106967 () Bool)

(assert (=> (and b!1768441 (= (toValue!5006 (transformation!3483 rule!422)) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165102) tb!106967))

(declare-fun result!128694 () Bool)

(assert (= result!128694 result!128692))

(assert (=> d!540348 t!165102))

(declare-fun b_and!134387 () Bool)

(assert (= b_and!134371 (and (=> t!165102 result!128694) b_and!134387)))

(declare-fun t!165104 () Bool)

(declare-fun tb!106969 () Bool)

(assert (=> (and b!1768458 (= (toValue!5006 (transformation!3483 (h!24880 rules!3447))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165104) tb!106969))

(declare-fun result!128696 () Bool)

(assert (= result!128696 result!128692))

(assert (=> d!540348 t!165104))

(declare-fun b_and!134389 () Bool)

(assert (= b_and!134373 (and (=> t!165104 result!128696) b_and!134389)))

(assert (=> d!540348 m!2186639))

(declare-fun m!2187573 () Bool)

(assert (=> d!540348 m!2187573))

(assert (=> b!1768461 d!540348))

(declare-fun d!540350 () Bool)

(assert (=> d!540350 (= (_2!10943 lt!684574) lt!684555)))

(declare-fun lt!684899 () Unit!33672)

(assert (=> d!540350 (= lt!684899 (choose!10999 lt!684567 (_2!10943 lt!684574) lt!684567 lt!684555 lt!684559))))

(assert (=> d!540350 (isPrefix!1723 lt!684567 lt!684559)))

(assert (=> d!540350 (= (lemmaSamePrefixThenSameSuffix!834 lt!684567 (_2!10943 lt!684574) lt!684567 lt!684555 lt!684559) lt!684899)))

(declare-fun bs!404511 () Bool)

(assert (= bs!404511 d!540350))

(declare-fun m!2187575 () Bool)

(assert (=> bs!404511 m!2187575))

(assert (=> bs!404511 m!2186585))

(assert (=> b!1768461 d!540350))

(declare-fun d!540352 () Bool)

(assert (=> d!540352 (= (inv!25316 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))) (isBalanced!2025 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))))))

(declare-fun bs!404512 () Bool)

(assert (= bs!404512 d!540352))

(declare-fun m!2187577 () Bool)

(assert (=> bs!404512 m!2187577))

(assert (=> tb!106923 d!540352))

(declare-fun d!540354 () Bool)

(assert (=> d!540354 (= (inv!25308 (tag!3861 rule!422)) (= (mod (str.len (value!108937 (tag!3861 rule!422))) 2) 0))))

(assert (=> b!1768439 d!540354))

(declare-fun d!540356 () Bool)

(declare-fun res!796730 () Bool)

(declare-fun e!1132166 () Bool)

(assert (=> d!540356 (=> (not res!796730) (not e!1132166))))

(assert (=> d!540356 (= res!796730 (semiInverseModEq!1388 (toChars!4865 (transformation!3483 rule!422)) (toValue!5006 (transformation!3483 rule!422))))))

(assert (=> d!540356 (= (inv!25313 (transformation!3483 rule!422)) e!1132166)))

(declare-fun b!1769192 () Bool)

(assert (=> b!1769192 (= e!1132166 (equivClasses!1329 (toChars!4865 (transformation!3483 rule!422)) (toValue!5006 (transformation!3483 rule!422))))))

(assert (= (and d!540356 res!796730) b!1769192))

(declare-fun m!2187579 () Bool)

(assert (=> d!540356 m!2187579))

(declare-fun m!2187581 () Bool)

(assert (=> b!1769192 m!2187581))

(assert (=> b!1768439 d!540356))

(declare-fun d!540358 () Bool)

(declare-fun c!288077 () Bool)

(assert (=> d!540358 (= c!288077 ((_ is Node!6479) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))))

(declare-fun e!1132167 () Bool)

(assert (=> d!540358 (= (inv!25315 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))) e!1132167)))

(declare-fun b!1769193 () Bool)

(assert (=> b!1769193 (= e!1132167 (inv!25317 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))))

(declare-fun b!1769194 () Bool)

(declare-fun e!1132168 () Bool)

(assert (=> b!1769194 (= e!1132167 e!1132168)))

(declare-fun res!796731 () Bool)

(assert (=> b!1769194 (= res!796731 (not ((_ is Leaf!9441) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))))))

(assert (=> b!1769194 (=> res!796731 e!1132168)))

(declare-fun b!1769195 () Bool)

(assert (=> b!1769195 (= e!1132168 (inv!25318 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))))))

(assert (= (and d!540358 c!288077) b!1769193))

(assert (= (and d!540358 (not c!288077)) b!1769194))

(assert (= (and b!1769194 (not res!796731)) b!1769195))

(declare-fun m!2187583 () Bool)

(assert (=> b!1769193 m!2187583))

(declare-fun m!2187585 () Bool)

(assert (=> b!1769195 m!2187585))

(assert (=> b!1768483 d!540358))

(declare-fun d!540360 () Bool)

(assert (=> d!540360 (= (seqFromList!2452 (originalCharacters!4297 (_1!10943 lt!684574))) (fromListB!1122 (originalCharacters!4297 (_1!10943 lt!684574))))))

(declare-fun bs!404513 () Bool)

(assert (= bs!404513 d!540360))

(declare-fun m!2187587 () Bool)

(assert (=> bs!404513 m!2187587))

(assert (=> b!1768460 d!540360))

(declare-fun d!540362 () Bool)

(assert (=> d!540362 (= (size!15470 (_1!10943 lt!684574)) (size!15471 (originalCharacters!4297 (_1!10943 lt!684574))))))

(declare-fun Unit!33681 () Unit!33672)

(assert (=> d!540362 (= (lemmaCharactersSize!541 (_1!10943 lt!684574)) Unit!33681)))

(declare-fun bs!404514 () Bool)

(assert (= bs!404514 d!540362))

(declare-fun m!2187589 () Bool)

(assert (=> bs!404514 m!2187589))

(assert (=> b!1768460 d!540362))

(declare-fun d!540364 () Bool)

(assert (=> d!540364 (= (apply!5283 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) lt!684569) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))

(declare-fun b_lambda!57553 () Bool)

(assert (=> (not b_lambda!57553) (not d!540364)))

(assert (=> d!540364 t!165049))

(declare-fun b_and!134391 () Bool)

(assert (= b_and!134385 (and (=> t!165049 result!128634) b_and!134391)))

(assert (=> d!540364 t!165051))

(declare-fun b_and!134393 () Bool)

(assert (= b_and!134387 (and (=> t!165051 result!128638) b_and!134393)))

(assert (=> d!540364 t!165053))

(declare-fun b_and!134395 () Bool)

(assert (= b_and!134389 (and (=> t!165053 result!128640) b_and!134395)))

(assert (=> d!540364 m!2186671))

(assert (=> b!1768460 d!540364))

(declare-fun d!540366 () Bool)

(declare-fun lt!684900 () Int)

(assert (=> d!540366 (= lt!684900 (size!15471 (list!7909 lt!684569)))))

(assert (=> d!540366 (= lt!684900 (size!15474 (c!287943 lt!684569)))))

(assert (=> d!540366 (= (size!15472 lt!684569) lt!684900)))

(declare-fun bs!404515 () Bool)

(assert (= bs!404515 d!540366))

(assert (=> bs!404515 m!2186611))

(assert (=> bs!404515 m!2186611))

(declare-fun m!2187591 () Bool)

(assert (=> bs!404515 m!2187591))

(declare-fun m!2187593 () Bool)

(assert (=> bs!404515 m!2187593))

(assert (=> b!1768460 d!540366))

(declare-fun b!1769202 () Bool)

(declare-fun e!1132173 () Bool)

(assert (=> b!1769202 (= e!1132173 true)))

(declare-fun d!540368 () Bool)

(assert (=> d!540368 e!1132173))

(assert (= d!540368 b!1769202))

(declare-fun lambda!70374 () Int)

(declare-fun order!12435 () Int)

(declare-fun dynLambda!9452 (Int Int) Int)

(assert (=> b!1769202 (< (dynLambda!9446 order!12427 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) (dynLambda!9452 order!12435 lambda!70374))))

(assert (=> b!1769202 (< (dynLambda!9448 order!12431 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) (dynLambda!9452 order!12435 lambda!70374))))

(assert (=> d!540368 (= (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (seqFromList!2452 (originalCharacters!4297 (_1!10943 lt!684574)))))))

(declare-fun lt!684903 () Unit!33672)

(declare-fun Forall2of!134 (Int BalanceConc!12902 BalanceConc!12902) Unit!33672)

(assert (=> d!540368 (= lt!684903 (Forall2of!134 lambda!70374 lt!684569 (seqFromList!2452 (originalCharacters!4297 (_1!10943 lt!684574)))))))

(assert (=> d!540368 (= (list!7909 lt!684569) (list!7909 (seqFromList!2452 (originalCharacters!4297 (_1!10943 lt!684574)))))))

(assert (=> d!540368 (= (lemmaEqSameImage!394 (transformation!3483 (rule!5521 (_1!10943 lt!684574))) lt!684569 (seqFromList!2452 (originalCharacters!4297 (_1!10943 lt!684574)))) lt!684903)))

(declare-fun b_lambda!57555 () Bool)

(assert (=> (not b_lambda!57555) (not d!540368)))

(assert (=> d!540368 t!165049))

(declare-fun b_and!134397 () Bool)

(assert (= b_and!134391 (and (=> t!165049 result!128634) b_and!134397)))

(assert (=> d!540368 t!165051))

(declare-fun b_and!134399 () Bool)

(assert (= b_and!134393 (and (=> t!165051 result!128638) b_and!134399)))

(assert (=> d!540368 t!165053))

(declare-fun b_and!134401 () Bool)

(assert (= b_and!134395 (and (=> t!165053 result!128640) b_and!134401)))

(declare-fun b_lambda!57557 () Bool)

(assert (=> (not b_lambda!57557) (not d!540368)))

(declare-fun t!165106 () Bool)

(declare-fun tb!106971 () Bool)

(assert (=> (and b!1768443 (= (toValue!5006 (transformation!3483 (rule!5521 token!523))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165106) tb!106971))

(declare-fun result!128698 () Bool)

(assert (=> tb!106971 (= result!128698 (inv!21 (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (seqFromList!2452 (originalCharacters!4297 (_1!10943 lt!684574))))))))

(declare-fun m!2187595 () Bool)

(assert (=> tb!106971 m!2187595))

(assert (=> d!540368 t!165106))

(declare-fun b_and!134403 () Bool)

(assert (= b_and!134397 (and (=> t!165106 result!128698) b_and!134403)))

(declare-fun tb!106973 () Bool)

(declare-fun t!165108 () Bool)

(assert (=> (and b!1768441 (= (toValue!5006 (transformation!3483 rule!422)) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165108) tb!106973))

(declare-fun result!128700 () Bool)

(assert (= result!128700 result!128698))

(assert (=> d!540368 t!165108))

(declare-fun b_and!134405 () Bool)

(assert (= b_and!134399 (and (=> t!165108 result!128700) b_and!134405)))

(declare-fun tb!106975 () Bool)

(declare-fun t!165110 () Bool)

(assert (=> (and b!1768458 (= (toValue!5006 (transformation!3483 (h!24880 rules!3447))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165110) tb!106975))

(declare-fun result!128702 () Bool)

(assert (= result!128702 result!128698))

(assert (=> d!540368 t!165110))

(declare-fun b_and!134407 () Bool)

(assert (= b_and!134401 (and (=> t!165110 result!128702) b_and!134407)))

(assert (=> d!540368 m!2186671))

(assert (=> d!540368 m!2186557))

(declare-fun m!2187597 () Bool)

(assert (=> d!540368 m!2187597))

(assert (=> d!540368 m!2186611))

(assert (=> d!540368 m!2186557))

(declare-fun m!2187599 () Bool)

(assert (=> d!540368 m!2187599))

(assert (=> d!540368 m!2186557))

(declare-fun m!2187601 () Bool)

(assert (=> d!540368 m!2187601))

(assert (=> b!1768460 d!540368))

(declare-fun d!540370 () Bool)

(declare-fun lt!684906 () Bool)

(declare-fun content!2824 (List!19549) (InoxSet Rule!6766))

(assert (=> d!540370 (= lt!684906 (select (content!2824 rules!3447) rule!422))))

(declare-fun e!1132180 () Bool)

(assert (=> d!540370 (= lt!684906 e!1132180)))

(declare-fun res!796738 () Bool)

(assert (=> d!540370 (=> (not res!796738) (not e!1132180))))

(assert (=> d!540370 (= res!796738 ((_ is Cons!19479) rules!3447))))

(assert (=> d!540370 (= (contains!3513 rules!3447 rule!422) lt!684906)))

(declare-fun b!1769207 () Bool)

(declare-fun e!1132179 () Bool)

(assert (=> b!1769207 (= e!1132180 e!1132179)))

(declare-fun res!796739 () Bool)

(assert (=> b!1769207 (=> res!796739 e!1132179)))

(assert (=> b!1769207 (= res!796739 (= (h!24880 rules!3447) rule!422))))

(declare-fun b!1769208 () Bool)

(assert (=> b!1769208 (= e!1132179 (contains!3513 (t!165062 rules!3447) rule!422))))

(assert (= (and d!540370 res!796738) b!1769207))

(assert (= (and b!1769207 (not res!796739)) b!1769208))

(declare-fun m!2187603 () Bool)

(assert (=> d!540370 m!2187603))

(declare-fun m!2187605 () Bool)

(assert (=> d!540370 m!2187605))

(declare-fun m!2187607 () Bool)

(assert (=> b!1769208 m!2187607))

(assert (=> b!1768459 d!540370))

(declare-fun d!540372 () Bool)

(assert (=> d!540372 (= (inv!25308 (tag!3861 (rule!5521 token!523))) (= (mod (str.len (value!108937 (tag!3861 (rule!5521 token!523)))) 2) 0))))

(assert (=> b!1768438 d!540372))

(declare-fun d!540374 () Bool)

(declare-fun res!796740 () Bool)

(declare-fun e!1132181 () Bool)

(assert (=> d!540374 (=> (not res!796740) (not e!1132181))))

(assert (=> d!540374 (= res!796740 (semiInverseModEq!1388 (toChars!4865 (transformation!3483 (rule!5521 token!523))) (toValue!5006 (transformation!3483 (rule!5521 token!523)))))))

(assert (=> d!540374 (= (inv!25313 (transformation!3483 (rule!5521 token!523))) e!1132181)))

(declare-fun b!1769209 () Bool)

(assert (=> b!1769209 (= e!1132181 (equivClasses!1329 (toChars!4865 (transformation!3483 (rule!5521 token!523))) (toValue!5006 (transformation!3483 (rule!5521 token!523)))))))

(assert (= (and d!540374 res!796740) b!1769209))

(declare-fun m!2187609 () Bool)

(assert (=> d!540374 m!2187609))

(declare-fun m!2187611 () Bool)

(assert (=> b!1769209 m!2187611))

(assert (=> b!1768438 d!540374))

(declare-fun b!1769222 () Bool)

(declare-fun e!1132184 () Bool)

(declare-fun tp!501892 () Bool)

(assert (=> b!1769222 (= e!1132184 tp!501892)))

(declare-fun b!1769220 () Bool)

(assert (=> b!1769220 (= e!1132184 tp_is_empty!7865)))

(declare-fun b!1769221 () Bool)

(declare-fun tp!501890 () Bool)

(declare-fun tp!501891 () Bool)

(assert (=> b!1769221 (= e!1132184 (and tp!501890 tp!501891))))

(declare-fun b!1769223 () Bool)

(declare-fun tp!501889 () Bool)

(declare-fun tp!501888 () Bool)

(assert (=> b!1769223 (= e!1132184 (and tp!501889 tp!501888))))

(assert (=> b!1768457 (= tp!501814 e!1132184)))

(assert (= (and b!1768457 ((_ is ElementMatch!4811) (regex!3483 (h!24880 rules!3447)))) b!1769220))

(assert (= (and b!1768457 ((_ is Concat!8385) (regex!3483 (h!24880 rules!3447)))) b!1769221))

(assert (= (and b!1768457 ((_ is Star!4811) (regex!3483 (h!24880 rules!3447)))) b!1769222))

(assert (= (and b!1768457 ((_ is Union!4811) (regex!3483 (h!24880 rules!3447)))) b!1769223))

(declare-fun b!1769234 () Bool)

(declare-fun b_free!48983 () Bool)

(declare-fun b_next!49687 () Bool)

(assert (=> b!1769234 (= b_free!48983 (not b_next!49687))))

(declare-fun t!165112 () Bool)

(declare-fun tb!106977 () Bool)

(assert (=> (and b!1769234 (= (toValue!5006 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165112) tb!106977))

(declare-fun result!128708 () Bool)

(assert (= result!128708 result!128634))

(assert (=> b!1768456 t!165112))

(declare-fun tb!106979 () Bool)

(declare-fun t!165114 () Bool)

(assert (=> (and b!1769234 (= (toValue!5006 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165114) tb!106979))

(declare-fun result!128710 () Bool)

(assert (= result!128710 result!128698))

(assert (=> d!540368 t!165114))

(assert (=> d!540368 t!165112))

(assert (=> d!540364 t!165112))

(assert (=> d!540300 t!165112))

(declare-fun t!165116 () Bool)

(declare-fun tb!106981 () Bool)

(assert (=> (and b!1769234 (= (toValue!5006 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165116) tb!106981))

(declare-fun result!128712 () Bool)

(assert (= result!128712 result!128692))

(assert (=> d!540348 t!165116))

(declare-fun b_and!134409 () Bool)

(declare-fun tp!501903 () Bool)

(assert (=> b!1769234 (= tp!501903 (and (=> t!165112 result!128708) (=> t!165114 result!128710) (=> t!165116 result!128712) b_and!134409))))

(declare-fun b_free!48985 () Bool)

(declare-fun b_next!49689 () Bool)

(assert (=> b!1769234 (= b_free!48985 (not b_next!49689))))

(declare-fun tb!106983 () Bool)

(declare-fun t!165119 () Bool)

(assert (=> (and b!1769234 (= (toChars!4865 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toChars!4865 (transformation!3483 (rule!5521 token!523)))) t!165119) tb!106983))

(declare-fun result!128714 () Bool)

(assert (= result!128714 result!128648))

(assert (=> d!540170 t!165119))

(assert (=> b!1768578 t!165119))

(declare-fun tb!106985 () Bool)

(declare-fun t!165121 () Bool)

(assert (=> (and b!1769234 (= (toChars!4865 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165121) tb!106985))

(declare-fun result!128716 () Bool)

(assert (= result!128716 result!128626))

(assert (=> d!540300 t!165121))

(declare-fun t!165123 () Bool)

(declare-fun tb!106987 () Bool)

(assert (=> (and b!1769234 (= (toChars!4865 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574))))) t!165123) tb!106987))

(declare-fun result!128718 () Bool)

(assert (= result!128718 result!128642))

(assert (=> d!540144 t!165123))

(assert (=> b!1768456 t!165121))

(assert (=> b!1768467 t!165123))

(declare-fun tp!501904 () Bool)

(declare-fun b_and!134411 () Bool)

(assert (=> b!1769234 (= tp!501904 (and (=> t!165121 result!128716) (=> t!165119 result!128714) (=> t!165123 result!128718) b_and!134411))))

(declare-fun e!1132196 () Bool)

(assert (=> b!1769234 (= e!1132196 (and tp!501903 tp!501904))))

(declare-fun tp!501901 () Bool)

(declare-fun b!1769233 () Bool)

(declare-fun e!1132193 () Bool)

(assert (=> b!1769233 (= e!1132193 (and tp!501901 (inv!25308 (tag!3861 (h!24880 (t!165062 rules!3447)))) (inv!25313 (transformation!3483 (h!24880 (t!165062 rules!3447)))) e!1132196))))

(declare-fun b!1769232 () Bool)

(declare-fun e!1132195 () Bool)

(declare-fun tp!501902 () Bool)

(assert (=> b!1769232 (= e!1132195 (and e!1132193 tp!501902))))

(assert (=> b!1768451 (= tp!501807 e!1132195)))

(assert (= b!1769233 b!1769234))

(assert (= b!1769232 b!1769233))

(assert (= (and b!1768451 ((_ is Cons!19479) (t!165062 rules!3447))) b!1769232))

(declare-fun m!2187613 () Bool)

(assert (=> b!1769233 m!2187613))

(declare-fun m!2187615 () Bool)

(assert (=> b!1769233 m!2187615))

(declare-fun b!1769239 () Bool)

(declare-fun e!1132199 () Bool)

(declare-fun tp!501907 () Bool)

(assert (=> b!1769239 (= e!1132199 (and tp_is_empty!7865 tp!501907))))

(assert (=> b!1768462 (= tp!501816 e!1132199)))

(assert (= (and b!1768462 ((_ is Cons!19478) (t!165061 suffix!1421))) b!1769239))

(declare-fun e!1132205 () Bool)

(declare-fun tp!501914 () Bool)

(declare-fun tp!501916 () Bool)

(declare-fun b!1769248 () Bool)

(assert (=> b!1769248 (= e!1132205 (and (inv!25315 (left!15598 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))))) tp!501914 (inv!25315 (right!15928 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))))) tp!501916))))

(declare-fun b!1769250 () Bool)

(declare-fun e!1132204 () Bool)

(declare-fun tp!501915 () Bool)

(assert (=> b!1769250 (= e!1132204 tp!501915)))

(declare-fun b!1769249 () Bool)

(declare-fun inv!25322 (IArray!12963) Bool)

(assert (=> b!1769249 (= e!1132205 (and (inv!25322 (xs!9355 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))))) e!1132204))))

(assert (=> b!1768486 (= tp!501822 (and (inv!25315 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574))))) e!1132205))))

(assert (= (and b!1768486 ((_ is Node!6479) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))))) b!1769248))

(assert (= b!1769249 b!1769250))

(assert (= (and b!1768486 ((_ is Leaf!9441) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (value!108938 (_1!10943 lt!684574)))))) b!1769249))

(declare-fun m!2187617 () Bool)

(assert (=> b!1769248 m!2187617))

(declare-fun m!2187619 () Bool)

(assert (=> b!1769248 m!2187619))

(declare-fun m!2187621 () Bool)

(assert (=> b!1769249 m!2187621))

(assert (=> b!1768486 m!2186549))

(declare-fun b!1769253 () Bool)

(declare-fun e!1132206 () Bool)

(declare-fun tp!501921 () Bool)

(assert (=> b!1769253 (= e!1132206 tp!501921)))

(declare-fun b!1769251 () Bool)

(assert (=> b!1769251 (= e!1132206 tp_is_empty!7865)))

(declare-fun b!1769252 () Bool)

(declare-fun tp!501919 () Bool)

(declare-fun tp!501920 () Bool)

(assert (=> b!1769252 (= e!1132206 (and tp!501919 tp!501920))))

(declare-fun b!1769254 () Bool)

(declare-fun tp!501918 () Bool)

(declare-fun tp!501917 () Bool)

(assert (=> b!1769254 (= e!1132206 (and tp!501918 tp!501917))))

(assert (=> b!1768439 (= tp!501815 e!1132206)))

(assert (= (and b!1768439 ((_ is ElementMatch!4811) (regex!3483 rule!422))) b!1769251))

(assert (= (and b!1768439 ((_ is Concat!8385) (regex!3483 rule!422))) b!1769252))

(assert (= (and b!1768439 ((_ is Star!4811) (regex!3483 rule!422))) b!1769253))

(assert (= (and b!1768439 ((_ is Union!4811) (regex!3483 rule!422))) b!1769254))

(declare-fun b!1769255 () Bool)

(declare-fun tp!501924 () Bool)

(declare-fun tp!501922 () Bool)

(declare-fun e!1132208 () Bool)

(assert (=> b!1769255 (= e!1132208 (and (inv!25315 (left!15598 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))) tp!501922 (inv!25315 (right!15928 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))) tp!501924))))

(declare-fun b!1769257 () Bool)

(declare-fun e!1132207 () Bool)

(declare-fun tp!501923 () Bool)

(assert (=> b!1769257 (= e!1132207 tp!501923)))

(declare-fun b!1769256 () Bool)

(assert (=> b!1769256 (= e!1132208 (and (inv!25322 (xs!9355 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))) e!1132207))))

(assert (=> b!1768483 (= tp!501821 (and (inv!25315 (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569)))) e!1132208))))

(assert (= (and b!1768483 ((_ is Node!6479) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))) b!1769255))

(assert (= b!1769256 b!1769257))

(assert (= (and b!1768483 ((_ is Leaf!9441) (c!287943 (dynLambda!9449 (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) (dynLambda!9450 (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))) lt!684569))))) b!1769256))

(declare-fun m!2187623 () Bool)

(assert (=> b!1769255 m!2187623))

(declare-fun m!2187625 () Bool)

(assert (=> b!1769255 m!2187625))

(declare-fun m!2187627 () Bool)

(assert (=> b!1769256 m!2187627))

(assert (=> b!1768483 m!2186543))

(declare-fun b!1769258 () Bool)

(declare-fun e!1132209 () Bool)

(declare-fun tp!501925 () Bool)

(assert (=> b!1769258 (= e!1132209 (and tp_is_empty!7865 tp!501925))))

(assert (=> b!1768454 (= tp!501811 e!1132209)))

(assert (= (and b!1768454 ((_ is Cons!19478) (originalCharacters!4297 token!523))) b!1769258))

(declare-fun b!1769261 () Bool)

(declare-fun e!1132210 () Bool)

(declare-fun tp!501930 () Bool)

(assert (=> b!1769261 (= e!1132210 tp!501930)))

(declare-fun b!1769259 () Bool)

(assert (=> b!1769259 (= e!1132210 tp_is_empty!7865)))

(declare-fun b!1769260 () Bool)

(declare-fun tp!501928 () Bool)

(declare-fun tp!501929 () Bool)

(assert (=> b!1769260 (= e!1132210 (and tp!501928 tp!501929))))

(declare-fun b!1769262 () Bool)

(declare-fun tp!501927 () Bool)

(declare-fun tp!501926 () Bool)

(assert (=> b!1769262 (= e!1132210 (and tp!501927 tp!501926))))

(assert (=> b!1768438 (= tp!501813 e!1132210)))

(assert (= (and b!1768438 ((_ is ElementMatch!4811) (regex!3483 (rule!5521 token!523)))) b!1769259))

(assert (= (and b!1768438 ((_ is Concat!8385) (regex!3483 (rule!5521 token!523)))) b!1769260))

(assert (= (and b!1768438 ((_ is Star!4811) (regex!3483 (rule!5521 token!523)))) b!1769261))

(assert (= (and b!1768438 ((_ is Union!4811) (regex!3483 (rule!5521 token!523)))) b!1769262))

(declare-fun b_lambda!57559 () Bool)

(assert (= b_lambda!57511 (or (and b!1768443 b_free!48969 (= (toChars!4865 (transformation!3483 (rule!5521 token!523))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1768441 b_free!48973 (= (toChars!4865 (transformation!3483 rule!422)) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1768458 b_free!48977 (= (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1769234 b_free!48985 (= (toChars!4865 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) b_lambda!57559)))

(declare-fun b_lambda!57561 () Bool)

(assert (= b_lambda!57517 (or (and b!1768443 b_free!48969) (and b!1768441 b_free!48973 (= (toChars!4865 (transformation!3483 rule!422)) (toChars!4865 (transformation!3483 (rule!5521 token!523))))) (and b!1768458 b_free!48977 (= (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toChars!4865 (transformation!3483 (rule!5521 token!523))))) (and b!1769234 b_free!48985 (= (toChars!4865 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toChars!4865 (transformation!3483 (rule!5521 token!523))))) b_lambda!57561)))

(declare-fun b_lambda!57563 () Bool)

(assert (= b_lambda!57507 (or (and b!1768443 b_free!48969 (= (toChars!4865 (transformation!3483 (rule!5521 token!523))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1768441 b_free!48973 (= (toChars!4865 (transformation!3483 rule!422)) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1768458 b_free!48977 (= (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1769234 b_free!48985 (= (toChars!4865 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toChars!4865 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) b_lambda!57563)))

(declare-fun b_lambda!57565 () Bool)

(assert (= b_lambda!57509 (or (and b!1768443 b_free!48967 (= (toValue!5006 (transformation!3483 (rule!5521 token!523))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1768441 b_free!48971 (= (toValue!5006 (transformation!3483 rule!422)) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1768458 b_free!48975 (= (toValue!5006 (transformation!3483 (h!24880 rules!3447))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) (and b!1769234 b_free!48983 (= (toValue!5006 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toValue!5006 (transformation!3483 (rule!5521 (_1!10943 lt!684574)))))) b_lambda!57565)))

(declare-fun b_lambda!57567 () Bool)

(assert (= b_lambda!57513 (or (and b!1768443 b_free!48969) (and b!1768441 b_free!48973 (= (toChars!4865 (transformation!3483 rule!422)) (toChars!4865 (transformation!3483 (rule!5521 token!523))))) (and b!1768458 b_free!48977 (= (toChars!4865 (transformation!3483 (h!24880 rules!3447))) (toChars!4865 (transformation!3483 (rule!5521 token!523))))) (and b!1769234 b_free!48985 (= (toChars!4865 (transformation!3483 (h!24880 (t!165062 rules!3447)))) (toChars!4865 (transformation!3483 (rule!5521 token!523))))) b_lambda!57567)))

(check-sat (not b!1768727) (not b!1768780) (not b!1769030) (not bm!110913) (not b!1768715) (not b!1768946) (not b_next!49671) (not b_lambda!57565) (not b!1769252) (not b!1768944) (not d!540166) (not d!540128) (not b!1769223) (not b!1769221) (not b!1768990) (not b!1768713) (not d!540368) (not b!1769261) (not b!1769022) (not b!1769249) (not b_lambda!57563) (not b!1768935) (not b!1768965) b_and!134363 (not b!1769208) tp_is_empty!7865 (not b_lambda!57535) (not b_next!49677) (not b!1768973) (not d!540278) (not b_lambda!57553) (not b!1769182) (not b!1768782) (not d!540120) (not b!1768951) (not b!1769222) (not b!1768640) (not d!540138) (not b_lambda!57561) (not b!1769257) (not b!1769088) (not b!1768732) (not b!1769181) (not b!1768937) (not b_lambda!57567) (not bm!110903) (not bm!110915) (not d!540112) (not b!1768758) (not b!1769097) (not d!540100) (not b!1769054) (not d!540164) (not d!540338) (not b_lambda!57557) (not d!540274) (not b!1769052) (not d!540286) (not d!540172) (not d!540160) (not d!540126) (not b!1769250) (not b!1769053) (not d!540152) (not d!540356) (not b!1769098) (not b!1768638) (not b_next!49687) (not b!1768969) (not tb!106971) (not b!1768743) (not b!1768974) (not b!1768578) (not b!1768579) (not b!1768759) (not b!1768635) (not b!1769105) (not b!1768998) (not b!1768963) (not d!540316) (not d!540156) (not d!540282) (not b!1769193) (not b!1769192) (not b!1768483) (not b!1769084) (not b!1769195) (not d!540336) (not b!1769255) (not b!1769055) (not b!1768725) (not b!1769086) (not bm!110912) (not b!1768486) (not b!1768948) (not d!540360) (not b!1768641) (not b!1769187) (not b!1768642) (not b_lambda!57515) (not bm!110906) (not d!540264) (not b!1768733) (not b!1769188) (not b!1768567) b_and!134405 (not b!1768784) (not d!540366) (not b!1769191) (not d!540344) (not d!540328) (not b_lambda!57551) (not d!540298) (not b!1768717) (not b!1769239) (not bm!110914) (not b!1768936) (not b!1768950) (not d!540294) (not b!1769186) (not b!1769029) (not d!540370) (not b_next!49679) (not b!1769248) (not d!540302) (not b!1769047) (not b_lambda!57559) (not d!540374) (not b!1768700) (not b!1769253) (not tb!106929) (not b!1768702) (not b!1769232) (not b!1768787) (not b_next!49689) (not b!1769183) b_and!134407 (not b!1769025) b_and!134365 (not b_next!49673) (not b!1768975) (not b!1768744) (not b!1768716) (not b!1769256) (not d!540144) (not d!540304) (not b!1769233) (not b!1769262) (not b!1769070) (not b!1768961) (not b!1768718) (not b!1768945) (not b_next!49681) (not d!540342) (not b!1768971) (not b!1768785) (not b!1769184) (not b!1768941) (not b!1769260) (not b!1768710) (not b!1768786) (not b!1769050) (not b!1768949) (not b_lambda!57555) (not d!540168) (not b!1768667) (not b!1769028) (not b!1768943) (not b_lambda!57537) (not tb!106965) (not b!1769104) b_and!134403 (not b!1768999) (not d!540268) b_and!134409 (not b!1768966) (not bm!110899) (not d!540280) (not d!540258) (not d!540154) (not b!1769189) (not d!540276) (not b!1769254) (not b!1769027) b_and!134367 (not d!540170) b_and!134411 (not d!540300) (not d!540350) (not b!1768580) (not b!1769099) (not d!540098) (not b!1768643) (not d!540362) (not b!1769258) (not d!540140) (not b_next!49675) (not b!1768705) (not b!1768989) (not b!1768962) (not b!1769087) (not b!1768781) (not b!1768760) (not b!1769089) (not d!540352) (not d!540320) (not b!1769209) (not b!1768970) (not d!540288) (not d!540284) (not b!1768940) (not d!540142) (not b!1769081) (not b!1768991) (not d!540260) (not b!1768779))
(check-sat (not b_next!49671) b_and!134363 (not b_next!49677) (not b_next!49687) b_and!134405 (not b_next!49679) (not b_next!49681) (not b_next!49675) (not b_next!49689) b_and!134407 b_and!134365 (not b_next!49673) b_and!134403 b_and!134409 b_and!134367 b_and!134411)
